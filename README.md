# The TouchBox
A low-cost DIY interface for tracking the position of up to two fingers in contact with its top surface, measuring their contact areas as well as 3D (normal and lateral) forces, and providing complex vibrotactile feedback.

![image](rendering.png)

---

## Content

* Software:
	
	1. GUI (based on [MaxMSP](https://cycling74.com). You dont need a license to run this patch)
	2. Example Patches for vibration and optional audio feedback.
	3. [Arduino](http://arduino.cc/) code

* Hardware:
	1. 3D models (made with [Blender 2.79](https://blender.org) and [OnShape](https://onshape.com))
	2. electronics schematics (made with [Fritzing](http://fritzing.org))
	3. list of required hardware
	
* README.md

---

## OSC communication protocoll

### /touch/weight \<force> 
force = float in [Newton]

### /touch/shear/up \<force>
force = float in [Newton]

### /touch/shear/down \<force>
force = float in [Newton]

### /touch/shear/left \<force>
force = float in [Newton]

### /touch/shear/right \<force>
force = float in [Newton]


### /touch/finger \<id> \<posX> \<posY> \<area>
id = int (identification id of finger, starts with 0)

posX = int in [pixel from center]

posY = int in [pixel from center]

area = float in [mm^2]


## Installation

For running the GUI, you need to install [MaxMSP](https://cycling74.com) and the [cv.jit package](http://jmpelletier.com/cvjit/) (see [instructions](https://docs.cycling74.com/max7/vignettes/packages)).

---

## Licenses

The arduino code is licensed under [GNU](http://www.gnu.org/licenses/) 

for everything else:  

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">![image](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)</a>

## Release

[![DOI](https://zenodo.org/badge/126193063.svg)](https://zenodo.org/badge/latestdoi/126193063)

