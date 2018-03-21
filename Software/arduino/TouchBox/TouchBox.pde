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

//Add the SPI library so we can communicate with the ADXL345 sensor
#include <SPI.h>

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
  Serial.begin(115200);
  //Serial.begin(38400);
  
  /********** SPI setup *********************************************************/
  
  //Initiate an SPI communication instance.
  SPI.begin();
  //Configure the SPI connection for the ADXL345.
  SPI.setDataMode(SPI_MODE3);
  //Create a serial connection to display the data on the terminal.
  
  writeRegister(DATA_FORMAT, DATA_FORMAT_VALUE);
  //Put the ADXL345 into Measurement Mode by writing 0x08 to the POWER_CTL register.
  writeRegister(POWER_CTL, 0x08);  //Measurement mode  

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
  
  PRR &= ~bit(PRADC);      // Disable ADC power reduction
  
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

void loop()
{
  //Serial.println("nextframe");
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

void sendSPI(){
  // Reading 6 bytes of data starting at register DATAX0 will retrieve 
  // the x,y and z acceleration values from the ADXL345.
  // The results of the read operation will get stored to the SPIvalues[] buffer.
  readRegister(DATAX0, 6, SPIvalues);

  // The ADXL345 gives 10-bit acceleration values, but they are stored as 
  // bytes (8-bits). To get the full value, two bytes must be combined for each axis.
  // The X value is stored in values[0] and values[1].
  x = (((int)SPIvalues[1]<<8)|(int)SPIvalues[0]) + 512;
  TX(x, 1);
  // The Y value is stored in values[2] and values[3].
  y = (((int)SPIvalues[3]<<8)|(int)SPIvalues[2]) + 512;
  TX(y, 2);
  // The Z value is stored in values[4] and values[5].
  z = (((int)SPIvalues[5]<<8)|(int)SPIvalues[4]) + 512;
  TX(z, 3);
}

// This function will read a certain number of registers starting from a specified address 
// and store their values in a buffer.
// Parameters:
//  char registerAddress - The register addresse to start the read sequence from.
//  int numBytes - The number of registers that should be read.
//  char * values - A pointer to a buffer where the results of the operation should be stored.
void readRegister(char registerAddress, int numBytes, unsigned char * values){
  //Since we're performing a read operation, the most significant bit of the register address should be set.
  char address = 0x80 | registerAddress;
  //If we're doing a multi-byte read, bit 6 needs to be set as well.
  if(numBytes > 1)address = address | 0x40;
  
  //Set the Chip select pin low to start an SPI packet.
  digitalWrite(CS, LOW);
  //Transfer the starting register address that needs to be read.
  SPI.transfer(address);
  //Continue to read registers until we've read the number specified, storing the results to the input buffer.
  for(int i=0; i<numBytes; i++){
    values[i] = SPI.transfer(0x00);
  }
  //Set the Chips Select pin high to end the SPI packet.
  digitalWrite(CS, HIGH);
}

// This function will write a value to a register on the ADXL345.
// Parameters:
//  char registerAddress - The register to write a value to
//  char value - The value to be written to the specified register.
void writeRegister(char registerAddress, char value){
  //Set Chip Select pin low to signal the beginning of an SPI packet.
  digitalWrite(CS, LOW);
  //Transfer the register address over SPI.
  SPI.transfer(registerAddress);
  //Transfer the desired register value over SPI.
  SPI.transfer(value);
  //Set the Chip Select pin high to signal the end of an SPI packet.
  digitalWrite(CS, HIGH);
}

