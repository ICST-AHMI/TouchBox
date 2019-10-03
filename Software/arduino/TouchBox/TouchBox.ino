//High performance analog data acquisition on the Arduino Duemilanove, with uniform 
//sampling rate.

//    Copyright (C) 
//        2011 Marco Civolani
//        2013 Martin Froehlich
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//    Contacts:
//    Marco Civolani   - email: marcocivo@gmail.com
//    Stefano Papetti  - email: stefano.papetti@zhdk.ch
//    Martin Froehlich - email: martin.froehlich@zhdk.ch
//

//DESCRIPTION:
// Notice: this code was developed on the Arduino Uno, but possibly applies to 
// other versions as well.
//
// This Version compiles perfectly on Arduino 0022, but seems to have problems on newer Arduino Versions
//
// Since the Arduino API (as of May 2011) doesn't enable precise control over the ADC 
// sampling rate, this code bypasses the API and instead uses hardware interrupts. 
// By acting on some hardware registers (as done at the beginning of the 
// code) the ADC can be configured to work in "free running mode".
// In this way, the ADC is driven by a hardware timer (i.e. very precise) internal to the 
// Atmel chip, which at regular intervals asks to read the analog input(s).
// The timer frequency is selectable as a sub-multiple of the CPU frequency, by means of a
// multiplying factor set by the prescaler: i.e. everything is in sync with the 16 MHz
// quartz that provides the clock signal to the Atmel chip.
// When the ADC has the acquired value in its registers, it also raises an interrupt which
// is then intercepted by the function ISR(ADC_vect). In more detail the function does 
// what follows:
// - Puts the value in ADCValue;
// - Sends ADCValue via serial (together with the channel number, forming a 2 byte 
// packet);
// - Sets the value of the new channel from which the ADC will acquire data at the next
// round (i.e. polling on the first 4 channels).
// - Gets the values from SPI from the accelerometer
//
// Protocol structure:
// Byte1     Byte2
// 1ccccvvv  0vvvvvvv
// cccc       = 4  bit for channel info  0...15
// vvvvvvvvvv = 10 bit for value         0.....1023
//
// channel 0...3  values from ADC (ie. FSR's)
// channel 8...10 values from SPI (ie. Accelerometer x, y, z)
//
// Please note that this firmware version was used for testing if the sampling rate was 
// actually stable.
// This was done by probing pin 12, so there's an extra line of code used for that:
// PORTB ^= 1 << PORTB4;
// which inverts the state of pin 12 at each execution of ISR(ADC_vect).
//


#include <avr/io.h>
#include <avr/power.h>
#include <avr/interrupt.h>

#include <Wire.h>

#define BAUD_RATE 115200
#define CHAR_BUF 128

// clear bit of special function register (sfr)
// _BV(bit) converts bit to byte
#ifndef cbi
#define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
// set bit of special function register (sfr)
#ifndef sbi
#define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif 

//Assign the Chip Select signal to pin 10.
int CS=10;

//This is a list of some of the registers available on the ADXL345.
//To learn more about these and the rest of the registers on the ADXL345, read the datasheet!
char POWER_CTL = 0x2D;	//Power Control Register
char DATA_FORMAT = 0x31;
char DATAX0 = 0x32;	//X-Axis Data 0
char DATAX1 = 0x33;	//X-Axis Data 1
char DATAY0 = 0x34;	//Y-Axis Data 0
char DATAY1 = 0x35;	//Y-Axis Data 1
char DATAZ0 = 0x36;	//Z-Axis Data 0
char DATAZ1 = 0x37;	//Z-Axis Data 1

//Put the ADXL345 into +/- 2G range by writing the value 0x00 to the DATA_FORMAT register.
//   D7         D6   D5          D4  D3        D2      D1  D0
//   SELF_TEST  SPI  INT_INVERT  0   FULL_RES  Justify Range
// Range: 
//        0  0  =  2g
//        0  1  =  4g
//        1  0  =  8g
//        1  1  = 16g
char DATA_FORMAT_VALUE = B00000001; 

//This buffer will hold values read from the ADXL345 registers.
unsigned char SPIvalues[10];
//These variables will be used to hold the x,y and z axis accelerometer values.
int x,y,z;

int ADCValue;

int ADInterrupCounter = 0;

void setup();
void loop();

void setup()
{ 
  //Create a serial connection to display the data on the terminal.
  Serial.begin(BAUD_RATE);

  /******************************************************************************/

  DDRB |= 1 << PORTB4;  // the same as pinMode(12, OUTPUT);
  
  cli(); // disable interrupts while messing with their settings
  
  /********** ADC setup *********************************************************/
  
  /* internal pull-ups interfere with the ADC. disable the
  * pull-up on the pin if it's being used for ADC. either
  * writing 0 to the port register or setting it to output
  * should be enough to disable pull-ups. */
  PORTC = 0x00;
  DDRC = 0x00;
  
  //Control and Status Register A
  ADCSRA = 0;
  ADCSRB = 0; // Free-running mode
  
  PRR0 &= ~bit(PRADC);      // Disable ADC power reduction
  
  //Multiplexer Selection Channel
  ADMUX = 0<<ADLAR; // right-aligned
   
   // ADMUX |= 1<<REFS0 | 0<<REFS1; // internal Vcc reference (AVCC) = 5V
   // setting the reference Voltage to external:    
  analogReference(EXTERNAL);
   
  // All initialized. Set channel 0
  ADMUX |= 0<<MUX3 | 0<<MUX2 | 0<<MUX1 | 0<<MUX0;
   
  // Equivalences between values ​​of prescaler and Fs (conversion time
  //  to scheme: 13.5 CPU cycles).
  // Fs = 16000kHz / 13.5 / per second
  //
  // Prescaler | ADPS2 | ADPS1 | ADPS0 |  Fs [kHz]
  // ------------------------------------------------
  //    2      |   0   |   0   |   0   |  592.59
  //    4      |   0   |   1   |   0   |  296.30
  //    8      |   0   |   1   |   1   |  148.15
  //    16     |   1   |   0   |   0   |  74.07
  //    32     |   1   |   0   |   1   |  37.04
  //    64     |   1   |   1   |   0   |  18.52
  //    128    |   1   |   1   |   1   |  9.26
  //
  // The above table shows the values ​​of Fs to INTERNAL 'Arduino: 
  // Since the serial transmission requires CPU time for the REAL 
  // value of Fs one must consider the square wave with duty cycle to 50% 
  // generated at pin 12 via this firmware. Obviously, the duration 
  // of the period of this square wave depends on the value of 
  // the prescaler. From the measurements made ​​with an oscilloscope, 
  // the following values are deduced:
  // ___________________
  // | Prescaler = 128 |
  // |_________________|
  // -------------------------------------------------------------
  // | WARNING: Fs is per channel.  Fs was calculated using      |
  // | the above table divided by the number of channels (4)!!   |
  // -------------------------------------------------------------
  //
  // TX baudrate [baud] |  Ts (per 4) [ms]  |  Fs (per channel) [Hz] 
  // ---------------------------------------------------------------
  //       9600         |    2.1            |          119
  //       19200        |    1.04           |          240
  //       38400        |    0.52           |          480
  //       57600        |    0.36           |          694
  //       115200       |    0.17           |          1470
  //
  // NOTE: To receive data during the measurements with the oscilloscope
  // a Pd- Patch was used that can write data to a file (writeToFile.pd)
   
  ADCSRA |= 1<<ADPS2;
  ADCSRA |= 1<<ADPS1;
  ADCSRA |= 1<<ADPS0;
  
  ADCSRA |= 1<<ADATE;      // Autotrigger enabled
  ADCSRA |= 1<<ADIF;       // ADC interrupt flag is cleared
  ADCSRA |= 1<<ADIE;       // ADC interrupt capability is activated
  
  // Free running mode
  ADCSRB |= 0<<ADTS2;
  ADCSRB |= 0<<ADTS1;
  ADCSRB |= 0<<ADTS0;
   
  ADCSRA |= 1<<ADEN;       // ADC enabled

  /******************************************************************************/
  
  sei(); // turn interrupts back on

  ADCSRA |= 1<<ADSC;       // Conversion started  

  Wire.begin();
  delay(1000); // Give the OpenMV Cam time to bootup.
}

/**
 * Inside the loop we will only send the recieved I2C commands from the openMC device
 */
void loop() {
  int32_t temp = 0;
  char buff[CHAR_BUF] = {0};

  Wire.requestFrom(0x12, 2);
  if(Wire.available() == 2) { // got length?

    temp = Wire.read() | (Wire.read() << 8);
 
    Wire.requestFrom(0x12, temp);
    if(Wire.available() == temp) { // got full message?

      temp = 0;
      while(Wire.available()) buff[temp++] = Wire.read();
      
     // the structure of the buffer is: <id>|<centroidX>|<centroidY>|<pixels>
      String str = String(buff);
      String index = str.substring(0, str.indexOf("|"));
      str = str.substring(str.indexOf("|") + 1, str.length());
      String centroidX = str.substring(0, str.indexOf("|"));
      str = str.substring(str.indexOf("|") + 1, str.length());
      String centroidY = str.substring(0, str.indexOf("|"));
      String pixels = str.substring(str.indexOf("|") + 1, str.length());

      byte i = (byte) index.toInt();
      if(i < 3){ 
        // we can only transfer additionally 3 blobs through our special data protocol
        int cx = centroidX.toInt();
        int cy = centroidY.toInt();
        int pix = pixels.toInt();
        TX(cx, 5 + i * 3);
        TX(cy, 6 + i * 3);
        TX(pix,7 + i * 3);
      }

    } else {
      while(Wire.available()) Wire.read(); // Toss garbage bytes.
    }
  } else {
    while(Wire.available()) Wire.read(); // Toss garbage bytes.
  }
}


void TX(int value, byte channel)
{
  byte LSB, MSB;
  int tmpVal;
  
  LSB = 0;
  //shift the channel number three places to the left
  // B100000000 | B0000cccc -> B1cccc000
  MSB = B10000000 | (channel << 3); 
    
  // take the top 3 bits only (vvv0000000)
  tmpVal = value & 896;
  // and shift it 7 bits to the right (00000vvv)
  tmpVal = tmpVal >> 7;
  // and add it to the MSB 
  MSB = MSB | tmpVal; // B1cccc000 | B00000vvv -> B1ccccvvv
  
  // then store only the lower 7 bits of the value
  LSB = value & B01111111; // Bvvvvvvvvvv & B0001111111 -> B0vvvvvvv

  Serial.write(MSB);
  Serial.write(LSB);
}

//interrupt function call
ISR(ADC_vect)
{
  ADInterrupCounter++;
  if(ADInterrupCounter >= 5){
    ADInterrupCounter = 0;
    
    //sendSPI();
    
    cli();// disable interrupts while messing with their settings
  
    ADCValue = ADCL;       // get low register first
    ADCValue += ADCH << 8; // and then add the high register
        
    //TX(ADCValue, ADMUX & B00001111);       // Questa sarebbe l'istruzione corretta...
    //TX(ADCValue, ((ADMUX & B00001111)-1)%3); // Pezza per recuperare il valore corretto
                                             // del canale: colpa di Arduino che spedisce
                                             // il valore sul canale sbagliato
 
//    Serial.println("nextframe: " + ADCValue);
    TX(ADCValue, ADMUX & B00001111);
        
    //The following code is used for channel selection.
    
    // Seleziono nuovo canale di acquisizione.
    // La prossima conversione avverrà su tale canale.
    if((ADMUX & B00001111) == B00000000)
    {
      cbi(ADCSRA,ADSC);
      cbi(ADMUX,MUX3);
      cbi(ADMUX,MUX2);
      cbi(ADMUX,MUX1);
      sbi(ADMUX,MUX0);
      sbi(ADCSRA,ADSC);
    }
    
    else if((ADMUX & B00001111) == B00000001)
    {
      cbi(ADCSRA,ADSC);
      cbi(ADMUX,MUX3);
      cbi(ADMUX,MUX2);
      sbi(ADMUX,MUX1);
      cbi(ADMUX,MUX0);
      sbi(ADCSRA,ADSC);
    }
    
    else if((ADMUX & B00001111) == B00000010)
    {
      cbi(ADCSRA,ADSC);
      cbi(ADMUX,MUX3);
      cbi(ADMUX,MUX2);
      sbi(ADMUX,MUX1);
      sbi(ADMUX,MUX0);
      sbi(ADCSRA,ADSC);
    }
    
    else if((ADMUX & B00001111) == B00000011)
    {
      cbi(ADCSRA,ADSC);
      cbi(ADMUX,MUX3);
      sbi(ADMUX,MUX2);
      cbi(ADMUX,MUX1);
      cbi(ADMUX,MUX0);
      sbi(ADCSRA,ADSC);
    }

    else if((ADMUX & B00001111) == B00000100)
    {
      cbi(ADCSRA,ADSC);
      cbi(ADMUX,MUX3);
      cbi(ADMUX,MUX2);
      cbi(ADMUX,MUX1);
      cbi(ADMUX,MUX0);
      sbi(ADCSRA,ADSC);
    }
        
    // DEBUG: clock dell'ADC in uscita su pin 12: alza il pin 12 se basso,
    // altrimenti lo abbassa.
    PORTB ^= 1 << PORTB4;  // the same as digitalWrite(12, HIGH if LOW or LOW if HIGH)
    
    sei();// turn interrupts back on
  }
}
