# Multi Color Blob Tracking for TouchBox Mk03
#
# This code does  multi color blob tracking using the OpenMV Cam.
#
# it also will switch on and off the external infraRed Leds in sync with the framerate
# thanks to this thread: http://forums.openmv.io/viewtopic.php?f=6&t=1023&p=6360
#
# AND sends the gathered data via I2C to the attached arduino:
#
# Please wire up your OpenMV Cam to your Arduino like this:
#
# OpenMV Cam Master I2C Data  (P5) - Arduino Uno Data  (A4)
# OpenMV Cam Master I2C Clock (P4) - Arduino Uno Clock (A5)
# OpenMV Cam Ground                - Arduino Ground

import sensor, image, time, ustruct

from pyb import I2C
from pyb import LED
from pyb import Pin

red_led   = LED(1)
green_led = LED(2)
blue_led  = LED(3)
ir_led    = LED(4)

ir_led.off()
green_led.on()

# Color Tracking Thresholds (L Min, L Max, A Min, A Max, B Min, B Max)
# The below thresholds track in general red/green things. You may wish to tune them...
thresholds = [(83, 100, -4, 9, -16, 8)]
#thresholds = [(30, 100, 15, 127, 15, 127), # generic_red_thresholds
#             (30, 100, -64, -8, -32, 32), # generic_green_thresholds
#              (0, 15, 0, 40, -80, -20)] # generic_blue_thresholds
# You may pass up to 16 thresholds above. However, it's not really possible to segment any
# scene with 16 thresholds before color thresholds start to overlap heavily.

sensor.reset()
sensor.set_pixformat(sensor.RGB565)
sensor.set_framesize(sensor.QQVGA)
sensor.skip_frames(time = 5000)
sensor.set_auto_gain(False) # must be turned off for color tracking
sensor.set_auto_whitebal(False) # must be turned off for color tracking
sensor.set_auto_exposure(False, exposure_us=5000) # make smaller to go faster

clock = time.clock()

# Only blobs that with more pixels than "pixel_threshold" and more area than "area_threshold" are
# returned by "find_blobs" below. Change "pixels_threshold" and "area_threshold" if you change the
# camera resolution. Don't set "merge=True" becuase that will merge blobs which we don't want here.

# create the pin to controll the IR Leds

ir_led_pin = Pin("P0", Pin.OUT_PP, Pin.PULL_NONE)
# tell the sensor to enable the pin when the capturing starts
# ir_led_pin.high()
sensor.set_vsync_output(ir_led_pin)

frameNumber = 0

##############################################################
#             I2C
##############################################################
# Code from https://github.com/openmv/openmv/blob/master/scripts/examples/02-Board-Control/arduino_i2c_slave.py

text = "Hello World!\n"
data = ustruct.pack("<%ds" % len(text), text)
# Use "ustruct" to build data packets to send.
# "<" puts the data in the struct in little endian order.
# "%ds" puts a string in the data stream. E.g. "13s" for "Hello World!\n" (13 chars).
# See https://docs.python.org/3/library/struct.html

# READ ME!!!
#
# Please understand that when your OpenMV Cam is not the I2C master it may miss responding to
# sending data as a I2C slave no matter if you call "i2c.send()" in an interupt callback or in the
# main loop below. When this happens the Arduino will get a NAK and have to try reading from the
# OpenMV Cam again. Note that both the Arduino and OpenMV Cam I2C drivers are not good at getting
# unstuck after encountering any I2C errors. On the OpenMV Cam and Arduino you can recover by
# de-initing and then re-initing the I2C peripherals.

# The hardware I2C bus for your OpenMV Cam is always I2C bus 2.
bus = I2C(2, I2C.SLAVE, addr=0x12)
bus.deinit() # Fully reset I2C device...
bus = I2C(2, I2C.SLAVE, addr=0x12)
print("Waiting for Arduino...")

# Note that for sync up to work correctly the OpenMV Cam must be running this script before the
# Arduino starts to poll the OpenMV Cam for data. Otherwise the I2C byte framing gets messed up,
# and etc. So, keep the Arduino in reset until the OpenMV Cam is "Waiting for Arduino...".

# SENDING the I2C data
def sendingData( idx, posX, posY, size, numOfB ):
    text = str(idx) + "|" + str(int(posX)) + "|" + str(int(posY)) + "|" + str(int(size)) + "|" + str(int(numOfB)) +"\n"
    data = ustruct.pack("<%ds" % len(text), text)

    try:
        bus.send(ustruct.pack("<h", len(data)), timeout=500) # Send the len first (16-bits).
        try:
           bus.send(data, timeout=500) # Send the data second.
           #print("Sent Data!") # Only reached on no error.
        except OSError as err:
            pass # Don't care about errors - so pass.
            # Note that there are 3 possible errors. A timeout error, a general purpose error, or
            # a busy error. The error codes are 116, 5, 16 respectively for "err.arg[0]".
    except OSError as err:
        pass # Don't care about errors - so pass.
        # Note that there are 3 possible errors. A timeout error, a general purpose error, or
        # a busy error. The error codes are 116, 5, 16 respectively for "err.arg[0]".

    return

while(True):
    clock.tick()
    # This example shows off how to use the lens correction method to fix lens
    # distortion in an image. Increase the strength below until lines
    # are straight in the view.
    # Zoom in (higher) or out (lower) until you see enough of the image.
    img = sensor.snapshot().lens_corr(strength = 2.4, zoom = 1.0)
    # disable the IR pin once the sensor has finished.
    ir_led_pin.off()

    frameNumber += 1
    #print("time", clock.avg())
    #print("fps", clock.fps())

    blobNumber = 0

    allBlobs = img.find_blobs(thresholds, pixels_threshold=50, area_threshold=50)

    blobCount = len(allBlobs)

    if blobCount < 3:
        sendingData(2, 0, 0, 0, blobCount)
    if blobCount < 2:
        sendingData(1, 0, 0, 0, blobCount)
    if blobCount < 1:
        sendingData(0, 0, 0, 0, blobCount)
    else:
        for blob in allBlobs:
            img.draw_rectangle(blob.rect())
            img.draw_cross(blob.cx(), blob.cy())
            #print("pixels", int(blob.pixels()))

            sendingData(blobNumber, blob.cx(), blob.cy(), blob.pixels(), blobCount)

            text = str(blobNumber) + "|" + str(int(blob.cx())) + "|" + str(int(blob.cy())) + "|" + str(int(blob.pixels())) + "|" + str(int(blobCount)) +"\n"
            data = ustruct.pack("<%ds" % len(text), text)

            # SENDING the I2C data
            try:
                bus.send(ustruct.pack("<h", len(data)), timeout=500) # Send the len first (16-bits).
                try:
                    bus.send(data, timeout=500) # Send the data second.
                    #print("Sent Data!") # Only reached on no error.
                except OSError as err:
                    pass # Don't care about errors - so pass.
                    # Note that there are 3 possible errors. A timeout error, a general purpose error, or
                    # a busy error. The error codes are 116, 5, 16 respectively for "err.arg[0]".
            except OSError as err:
                pass # Don't care about errors - so pass.
                # Note that there are 3 possible errors. A timeout error, a general purpose error, or
                # a busy error. The error codes are 116, 5, 16 respectively for "err.arg[0]".

            blobNumber += 1

    img.draw_line(0, img.height() // 4 * 1, img.width(), img.height() // 4 * 1, color = (255, 0, 0), size = 30, thickness = 1)
    img.draw_line(0, img.height() // 4 * 2, img.width(), img.height() // 4 * 2, color = (255, 0, 0), size = 30, thickness = 1)
    img.draw_line(0, img.height() // 4 * 3, img.width(), img.height() // 4 * 3, color = (255, 0, 0), size = 30, thickness = 1)
    img.draw_line(img.width() // 4 * 1, 0, img.width() // 4 * 1, img.height(), color = (0, 255, 0), size = 30, thickness = 1)
    img.draw_line(img.width() // 4 * 2, 0, img.width() // 4 * 2, img.height(), color = (0, 255, 0), size = 30, thickness = 1)
    img.draw_line(img.width() // 4 * 3, 0, img.width() // 4 * 3, img.height(), color = (0, 255, 0), size = 30, thickness = 1)
