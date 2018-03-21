/*

wallclock

*/

sketch.default2d();
var vbrgb = [1.,1.,1.,1.];
var vfrgb = [0.2,0.2,0.2,1.];
var vrgb2 = [0.5,0.5,0.5,1.];

var vArea;
var vWeight;
var vShearUp;
var vShearDown;
var vShearLeft;
var vShearRight;
var vShearHorizontal;
var vShearVertical;
var vFinger1 = new Array(0,0);
var vFinger2 = new Array(0,0);

// process arguments
if (jsarguments.length>1)
	vfrgb[0] = jsarguments[1]/255.;
if (jsarguments.length>2)
	vfrgb[1] = jsarguments[2]/255.;
if (jsarguments.length>3)
	vfrgb[2] = jsarguments[3]/255.;
if (jsarguments.length>4)
	vbrgb[0] = jsarguments[4]/255.;
if (jsarguments.length>5)
	vbrgb[1] = jsarguments[5]/255.;
if (jsarguments.length>6)
	vbrgb[2] = jsarguments[6]/255.;
if (jsarguments.length>7)
	vrgb2[0] = jsarguments[7]/255.;
if (jsarguments.length>8)
	vrgb2[1] = jsarguments[8]/255.;
if (jsarguments.length>9)
	vrgb2[2] = jsarguments[9]/255.;

draw();

function area(_area){
	vArea = _area;
}

function weight(_weight){
	vWeight = _weight;
}

function shearUp(_shearUp){
	vShearUp = _shearUp;
	vShearVertical = vShearUp - vShearDown;
}

function shearDown(_shearDown){
	vShearDown = _shearDown;
	vShearVertical = -vShearDown + vShearUp;
}

function shearLeft(_shearLeft){
	vShearLeft = _shearLeft;
	vShearHorizontal = -vShearLeft + vShearRight;
}

function shearRight(_shearRight){
	vShearRight = _shearRight;
	vShearHorizontal = vShearRight - vShearLeft;
}

function finger1(_posX, _posY){
	vFinger1[0] = -_posX;
	vFinger1[1] = _posY;
}

function finger2(_posX, _posY){
	vFinger2[0] = -_posX;
	vFinger2[1] = _posY;
}

function bang(){
	draw();
	refresh();
}

function draw()
{
	var theta,i,x,y;
	
	with (sketch) {
		// erase background
		glclearcolor(vbrgb);
		glclear();			
		glenable("line_smooth");
	
		//moveto(-0.5,0.5);
		moveto(vFinger1[0] / 500., vFinger1[1] / 300.);
		//post("finger1 " + vFinger1[1] / 400. + "\n");
		// fill bgcircle
		
		//shapeslice(180,1);
		glcolor(vrgb2);
		circle(Math.sqrt(vArea/500.) + vWeight / 2000.);
		glcolor(vbrgb);
		circle(Math.sqrt(vArea/500.));
		// draw hour marks	

		beginstroke("basic2d");
		strokeparam("order",1)
		strokeparam("slices",2)
		strokeparam("color",vfrgb);
		strokeparam("scale",0.01);
		strokepoint(vFinger1[0] / 500., vFinger1[1] / 300.);
		strokepoint(vFinger1[0] / 500. + vShearHorizontal / 600., vFinger1[1] / 300. + vShearVertical / 600.);
		endstroke();

		/*
		for (i=0;i<12;i++) {
			theta = i/12*2*Math.PI;
			x = Math.cos(theta);
			y = Math.sin(theta);
			beginstroke("basic2d");
			strokeparam("order",1)
			strokeparam("slices",2)
			strokeparam("color",vrgb2);
			if (i%3) {
				strokeparam("scale",0.03);
				strokepoint(0.75*x,0.75*y);
				strokepoint(0.7*x,0.7*y);
			} else {
				strokeparam("scale",0.05);
				strokepoint(0.75*x,0.75*y);
				strokepoint(0.6*x,0.6*y);			
			}
			endstroke();
		}
		
		var hour = vdate.getHours();
		var minute = vdate.getMinutes();
		var second = vdate.getSeconds();
		
		hour += minute/60;
		minute += second/60;

		// hour hand
		theta = ((3-hour)/12)*2*Math.PI;
		x = Math.cos(theta);
		y = Math.sin(theta);
		beginstroke("basic2d");
		strokeparam("order",1)
		strokeparam("slices",2)
		strokeparam("color",vfrgb);
		strokeparam("scale",0.05);
		strokepoint(-0.1*x,-0.1*y);
		strokepoint(0.3*x,0.3*y);
		endstroke();

		// minute hand			
		theta = ((15-minute)/60)*2*Math.PI;
		x = Math.cos(theta);
		y = Math.sin(theta);
		beginstroke("basic2d");
		strokeparam("order",1)
		strokeparam("slices",2)
		strokeparam("color",vfrgb);
		strokeparam("scale",0.05);
		strokepoint(-0.1*x,-0.1*y);
		strokepoint(0.55*x,0.55*y);
		endstroke();

		// second hand			
		theta = ((15-second)/60)*2*Math.PI;
		x = Math.cos(theta);
		y = Math.sin(theta);
		glcolor(vfrgb);
		moveto(-0.2*x,-0.2*y);
		circle(0.025);
		beginstroke("basic2d");
		strokeparam("order",1)
		strokeparam("slices",2)
		strokeparam("color",vfrgb);
		strokeparam("scale",0.01);
		strokepoint(-0.2*x,-0.2*y);
		strokepoint(0.75*x,0.75*y);
		endstroke();

		glcolor(vrgb2);
		moveto(0,0);
		circle(0.02);
		*/
	}
}

function fsaa(v)
{
	sketch.fsaa = v;
	draw();
	refresh();
}

function frgb(r,g,b)
{
	vfrgb[0] = r/255.;
	vfrgb[1] = g/255.;
	vfrgb[2] = b/255.;
	draw();
	refresh();
}

function rgb2(r,g,b)
{
	vrgb2[0] = r/255.;
	vrgb2[1] = g/255.;
	vrgb2[2] = b/255.;
	draw();
	refresh();
}

function brgb(r,g,b)
{
	vbrgb[0] = r/255.;
	vbrgb[1] = g/255.;
	vbrgb[2] = b/255.;
	draw();
	refresh();
}
