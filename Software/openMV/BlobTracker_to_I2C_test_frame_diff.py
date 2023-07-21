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

# # # TO DO / NOTES :
# - all PIXEL BASED VALUES need to be ajustable for changing resolution (and x-flipped image)
# - TWEAK THRESHOLDS, i.e. find_blobs(threholds, area_threshold, pix_threshold)
# --> see: Tools > MAchine Vision > Threshold Editor
# --> adaptive thresholding? (NOTE that sensor gain is set on power up, so changing the lighting
#     conditions will likely cause problems) --> maybe need a reset button?
# - maybe define flags as constants to speed up code? (THERE ARE NO CONSTANTS IN PYTHON?)
# - look into image.mask_rectangle/circle/ellipse() for better masking once everything is fixed...
# - frame differencing - see: image.sub() & image.difference()
# - look into using sensor feedback to activate find_blobs(), or to create a a bg mask...
# --> would have to think more about how this would work b/c hand might obsucre some lights that
#     were causing false positives (and actual blobs could be in the same location and be ignored)

import sensor, image, time, ustruct

from pyb import I2C
from pyb import LED
from pyb import Pin

red_led   = LED(1)
green_led = LED(2)
blue_led  = LED(3)
ir_led    = LED(4)

green_led.on()

#manage ir_led state
use_bg_subtractioin = True
ir_led_active = True

# set up lens correction and resolution
use_lens_corr = True
use_hi_res = False
display_grid_lines = False

# draw blobs on screen
draw_blobs = True

# blob thresholds
blob_pixels_threshold = 50
blob_area_threshold = 50

# sensor stuff:
start_delay_time = 2500
sensor_flip_X = True

if use_lens_corr: # setup ROI (low/high res + lense cor)
    roi_x = [20,12]
    roi_y = [0,3]
else: # setup ROI (low/high res + NO lense cor)
    roi_x = [30,24]
    roi_y = [0,20]
    #roi_x = [60,48]
    #roi_y = [0,20]

if use_hi_res:
    roi_x[0] *= 2
    roi_x[1] *= 2
    roi_y[0] *= 2
    roi_y[1] *= 2

#print('bool test: bool(0) = ' + str(bool(0)) + ', not 0 = ' + str(not 0))

#img_mask = (roi_x[0], roi_y[0], img.width() - (roi_x[0] + roi_x[1]), img.height() - (roi_y[0] + roi_y[1]))

print('roi_x: ' + str(roi_x) + ' ~ sum: ' + str(roi_x[0] + roi_x[1]))
print('roi_y: ' + str(roi_y) + ' ~ sum: ' + str(roi_y[0] + roi_y[1]))
#print('roi_mask: ' + str(img_mask))


# define dims for scale fac
# # # image size: w = 160, h = 120
num_squares = 5 # each square is 10 x 10 mm
x_min = 30 # pixel
x_max = 141 # pixel
delta_x = x_max - x_min # pixels
x_scale_fac = 1 / ((delta_x / num_squares) / 10) # mm/pixels # div is slow, so set scale_fac up so it can be multiplied later...
y_min = 6 # pixel
y_max = 117 # pixel
delta_y = y_max - y_min # pixels
y_scale_fac = 1 / ((delta_y / num_squares) / 10) # mm/pixels

overall_scale_fac = (x_scale_fac + y_scale_fac) / 2 # mm/pixels

lens_corr_strenght = 2.39
lens_corr_zoom = 1

# NOTE with these values the x & y scale factors are the same
print('x_scale_fac: ' + str(x_scale_fac) + ' mm/pixel')
print('y_scale_fac: ' + str(y_scale_fac) + ' mm/pixel')
print('overall_scale_fac: ' + str(overall_scale_fac) + ' mm/pixel')



#thresholds = [(150, 255)] # try for grayscale

# Color Tracking Thresholds (L Min, L Max, A Min, A Max, B Min, B Max)
thresholds = [(83, 100, -30, 30, -30, 30)] # try modifying to make detection more robust
# --> THRESHOLDS SEEM TO BE VERY DEPENDANT ON AMBIENT LIGHT

# The below thresholds track in general red/green things. You may wish to tune them...
#thresholds = [(83, 100, -4, 9, -16, 8)] # original thresholds from martin

#thresholds = [(30, 100, 15, 127, 15, 127), # generic_red_thresholds
#             (30, 100, -64, -8, -32, 32), # generic_green_thresholds
#              (0, 15, 0, 40, -80, -20)] # generic_blue_thresholds
# You may pass up to 16 thresholds above. However, it's not really possible to segment any
# scene with 16 thresholds before color thresholds start to overlap heavily.

sensor.reset()
sensor.set_pixformat(sensor.RGB565) # original
#sensor.set_pixformat(sensor.GRAYSCALE) # try w/ grayscale...
if use_hi_res:
    sensor.set_framesize(sensor.QVGA) # hi-res version: 320 x 240
    print('hi res mode: 320 x 240')
    #sensor.set_framesize(sensor.VGA) # extra hi-res version: 640 x 480 (grayscale only!)
    #print('hi res mode: 640 x 480')
else:
    sensor.set_framesize(sensor.QQVGA) # low-res version: 160 x 120
    print('low res mode: 160 x 120')

sensor.set_hmirror(sensor_flip_X) # mirror x-axis
sensor.skip_frames(time = start_delay_time)
sensor.set_auto_gain(False) # must be turned off for color tracking
sensor.set_auto_whitebal(False) # must be turned off for color tracking
sensor.set_auto_exposure(False, exposure_us=5000) # make smaller to go faster

img = sensor.snapshot()
img_mask = (roi_x[0], roi_y[0], img.width() - (roi_x[0] + roi_x[1]), img.height() - (roi_y[0] + roi_y[1]))
print('roi_mask: ' + str(img_mask))

clock = time.clock()

# setup extra frame buffer
extra_fb = sensor.alloc_extra_fb(sensor.width(), sensor.height(), sensor.RGB565)


# Only blobs that with more pixels than "pixel_threshold" and more area than "area_threshold" are
# returned by "find_blobs" below. Change "pixels_threshold" and "area_threshold" if you change the
# camera resolution. Don't set "merge=True" becuase that will merge blobs which we don't want here.

# create the pin to control the IR Leds

ir_led_pin = Pin("P3", Pin.OUT_PP, Pin.PULL_NONE)
# # #  = "P0" = id = pin name
# # # Pin.OUT_PP - configure the pin for output, with push-pull control;
# # # Pin.PULL_NONE - no pull up or down resistors;

# tell the sensor to enable the pin when the capturing starts
ir_led_pin.value(ir_led_active)
#ir_led_pin.high()
#ir_led_pin.off()
#sensor.set_vsync_output(ir_led_pin) # DON'T AUTOSYNC ANYMORE (need finer control for bg subtraction)

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

#ir_led_active = True
#ir_led_pin.value(ir_led_active)

while(True):
    # manage ir_LED
    #if frameNumber % 2 == 0: # % is slow?
    #if ir_led_active:
        #ir_led_pin.high()

    # manage ir_LED
    if use_bg_subtractioin:
        ir_led_active = not ir_led_active
        ir_led_pin.value(ir_led_active)

    clock.tick()
    # This example shows off how to use the lens correction method to fix lens
    # distortion in an image. Increase the strength below until lines
    # are straight in the view.
    # Zoom in (higher) or out (lower) until you see enough of the image.


    if use_lens_corr:
        img = sensor.snapshot().lens_corr(strength = lens_corr_strenght, zoom = lens_corr_zoom) # default strength = 2.39, zoom = 1.0
    else:
        img = sensor.snapshot()# W/O LENS CORRECTION!

    # disable the IR pin once the sensor has finished.
    #ir_led_pin.off() # fold this into main logic

    frameNumber += 1
    #print("time", clock.avg())
    #print("fps", clock.fps())

    # draw black masking lines in image to cover Lofelt and wires
    #if use_hi_res:
        #img.draw_line(img.width()-24, 0, img.width()-24, img.height(), 0, 48)
        #img.draw_line(24, 0, 24, img.height(), 0, 48)
    #else:

    #img.draw_line(img.width()-8, 0, img.width()-8, img.height(), 0, 16)
    #img.draw_line(12, 0, 12, img.height(), 0, 24)

    # find blobs
    blobNumber = 0
    #allBlobs = img.find_blobs(thresholds, pixels_threshold=50, area_threshold=50) # NO MASK
    allBlobs = img.find_blobs(thresholds, pixels_threshold=blob_pixels_threshold, area_threshold=blob_area_threshold, roi=img_mask) # w/ roi mask
    blobCount = len(allBlobs)

    # if less than 3 blobs are found, zero out the data for not existing ones (b/c old data is left in there)
    if blobCount < 3: # if less than 3...
        sendingData(2, 0, 0, 0, blobCount)
    if blobCount < 2: # if less than 2...
        sendingData(1, 0, 0, 0, blobCount)
    if blobCount < 1: # if less than 1...
        sendingData(0, 0, 0, 0, blobCount)
    else: # this always happens unless there are less than 1 (i.e. 0) blobs
        if True: # rectangles around blobs
            for blob in allBlobs:
                if draw_blobs:
                    img.draw_rectangle(blob.rect())
                    img.draw_cross(blob.cx(), blob.cy())
                    #print("pixels", int(blob.pixels()))

                #sendingData(blobNumber, blob.cx()*x_scale_fac, blob.cy()*y_scale_fac, blob.pixels()*overall_scale_fac*overall_scale_fac, blobCount) # output in mm
                sendingData(blobNumber, blob.cx(), blob.cy(), blob.pixels(), blobCount) # output in pixels

                blobNumber += 1

    #img.draw_line(roi_x[0], 0, roi_x[0], img.height(), color = (255, 0, 0), thickness = 1)
    #img.draw_line(img.width() - roi_x[1], 0, img.width() - roi_x[1], img.height(), color = (0, 0, 255), thickness = 1)
    #img.draw_line(0, roi_y[0], img.width(), roi_y[0], color = (255, 0, 0), size = 30, thickness = 1)
    #img.draw_line(0, img.height() - roi_y[1] - 1, img.width(), img.height() - roi_y[1] - 1, color = (0, 0, 255), size = 30, thickness = 1)

    # Note // = integer division...
    if display_grid_lines: # draw grid lines (all) - num_squares x num_squares, 10 mm^2 squares

        if True: # draw grid lines (outside horizontal)
            img.draw_line(0, y_min, img.width(), y_min, color = (255, 0, 0), size = 30, thickness = 1)
            img.draw_line(0, y_max, img.width(), y_max, color = (255, 0, 0), size = 30, thickness = 1)

        if True: # draw grid lines (inside horizontal)
            img.draw_line(0, y_min + delta_y // 5*1, img.width(), y_min + delta_y // 5*1, color = (255, 0, 0), size = 30, thickness = 1)
            img.draw_line(0, y_min + delta_y // 5*2, img.width(), y_min + delta_y // 5*2, color = (255, 0, 0), size = 30, thickness = 1)
            img.draw_line(0, y_min + delta_y // 5*3, img.width(), y_min + delta_y // 5*3, color = (255, 0, 0), size = 30, thickness = 1)
            img.draw_line(0, y_min + delta_y // 5*4, img.width(), y_min + delta_y // 5*4, color = (255, 0, 0), size = 30, thickness = 1)

        if True: # draw grid lines (outside vertical)
            img.draw_line(x_min, 0, x_min, img.height(), color = (255, 0, 0), size = 30, thickness = 1)
            img.draw_line(x_max, 0, x_max, img.height(), color = (255, 0, 0), size = 30, thickness = 1)

        if True: # draw grid lines (inside vertical)
            img.draw_line(x_min + delta_x // 5*1, 0, x_min + delta_x // 5*1, img.height(), color = (255, 0, 0), size = 30, thickness = 1)
            img.draw_line(x_min + delta_x // 5*2, 0, x_min + delta_x // 5*2, img.height(), color = (255, 0, 0), size = 30, thickness = 1)
            img.draw_line(x_min + delta_x // 5*3, 0, x_min + delta_x // 5*3, img.height(), color = (255, 0, 0), size = 30, thickness = 1)
            img.draw_line(x_min + delta_x // 5*4, 0, x_min + delta_x // 5*4, img.height(), color = (255, 0, 0), size = 30, thickness = 1)


