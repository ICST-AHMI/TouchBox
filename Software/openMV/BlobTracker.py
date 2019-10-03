# Multi Color Blob Tracking Example
#
# This example shows off multi color blob tracking using the OpenMV Cam.
#
# it also will switch on and off the external infraRed Leds in sync with the framerate
# thanks to this thread: http://forums.openmv.io/viewtopic.php?f=6&t=1023&p=6360

import sensor, image, time

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
clock = time.clock()

sensor.set_auto_exposure(False, exposure_us=5000) # make smaller to go faster


# Only blobs that with more pixels than "pixel_threshold" and more area than "area_threshold" are
# returned by "find_blobs" below. Change "pixels_threshold" and "area_threshold" if you change the
# camera resolution. Don't set "merge=True" becuase that will merge blobs which we don't want here.

# create the pin to controll the IR Leds
ir_led_pin = Pin("P0", Pin.OUT_PP, Pin.PULL_NONE)
# tell the sensor to enable the pin when the capturing starts
# ir_led_pin.high()
sensor.set_vsync_output(ir_led_pin)

while(True):
    clock.tick()
    # This example shows off how to use the lens correction method to fix lens
    # distortion in an image. Increase the strength below until lines
    # are straight in the view.
    # Zoom in (higher) or out (lower) until you see enough of the image.
    img = sensor.snapshot().lens_corr(strength = 2.4, zoom = 1.0)
    # disable the IR pin once the sensor has finished.
    ir_led_pin.off()

    for blob in img.find_blobs(thresholds, pixels_threshold=200, area_threshold=200):
        img.draw_rectangle(blob.rect())
        img.draw_cross(blob.cx(), blob.cy())
        #print("pixels", int(blob.pixels()))
        #print("area", float(blob.area()))

    img.draw_line(0, img.height() // 4 * 1, img.width(), img.height() // 4 * 1, color = (255, 0, 0), size = 30, thickness = 1)
    img.draw_line(0, img.height() // 4 * 2, img.width(), img.height() // 4 * 2, color = (255, 0, 0), size = 30, thickness = 1)
    img.draw_line(0, img.height() // 4 * 3, img.width(), img.height() // 4 * 3, color = (255, 0, 0), size = 30, thickness = 1)
    img.draw_line(img.width() // 4 * 1, 0, img.width() // 4 * 1, img.height(), color = (0, 255, 0), size = 30, thickness = 1)
    img.draw_line(img.width() // 4 * 2, 0, img.width() // 4 * 2, img.height(), color = (0, 255, 0), size = 30, thickness = 1)
    img.draw_line(img.width() // 4 * 3, 0, img.width() // 4 * 3, img.height(), color = (0, 255, 0), size = 30, thickness = 1)

    #print("fps", clock.fps())
