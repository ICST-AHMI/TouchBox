{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 100.0, 100.0, 1246.0, 769.0 ],
		"bgcolor" : [ 0.85098, 0.85098, 0.823529, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"columns" : 5,
					"id" : "obj-18",
					"maxclass" : "matrixctrl",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "list" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 55.5, 427.0, 100.0, 93.0 ],
					"presentation_rect" : [ 55.5, 427.0, 100.0, 93.0 ],
					"rows" : 5,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 492.5, 201.0, 61.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 376.564514, 137.5, 44.0, 17.0 ],
					"style" : "",
					"text" : "WEIGHT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 506.5, 350.0, 86.5, 19.0 ],
					"presentation_rect" : [ 506.5, 350.0, 86.5, 19.0 ],
					"style" : "",
					"text" : "scale 0. 100. 0. 3."
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-8",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 506.5, 238.0, 27.0, 110.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 388.0, 167.5, 27.0, 110.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-9",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 471.5, 390.5, 54.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 376.564514, 288.5, 54.0, 19.0 ],
					"style" : "",
					"text" : "0.634335"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 201.0, 61.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 137.5, 72.0, 17.0 ],
					"style" : "",
					"text" : "shearRIGHT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 399.0, 350.0, 86.5, 19.0 ],
					"presentation_rect" : [ 399.0, 350.0, 86.5, 19.0 ],
					"style" : "",
					"text" : "scale 0. 100. 0. 3."
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-3",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.0, 238.0, 27.0, 110.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 300.3125, 167.5, 27.0, 110.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-4",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 364.0, 390.5, 54.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.564514, 288.5, 54.0, 19.0 ],
					"style" : "",
					"text" : "0.634335"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-30",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.564514, 826.424744, 30.0, 30.0 ],
					"presentation_rect" : [ 285.564514, 826.424744, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 506.5, 69.625, 29.5, 19.0 ],
					"presentation_rect" : [ 506.5, 69.625, 29.5, 19.0 ],
					"style" : "",
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 471.5, 95.0, 138.0, 19.0 ],
					"presentation_rect" : [ 471.5, 95.0, 138.0, 19.0 ],
					"style" : "",
					"text" : "append set.sinusoid.maxpresets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 471.5, 69.625, 29.5, 19.0 ],
					"presentation_rect" : [ 471.5, 69.625, 29.5, 19.0 ],
					"style" : "",
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 471.5, 39.625, 89.0, 19.0 ],
					"presentation_rect" : [ 471.5, 39.625, 89.0, 19.0 ],
					"style" : "",
					"text" : "route open close"
				}

			}
, 			{
				"box" : 				{
					"comment" : "/touch/shear/up",
					"id" : "obj-20",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 471.5, 2.625, 30.0, 30.0 ],
					"presentation_rect" : [ 471.5, 2.625, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "/touch/shear/up",
					"id" : "obj-23",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 68.5, 113.5, 30.0, 30.0 ],
					"presentation_rect" : [ 68.5, 113.5, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 68.5, 145.5, 364.0, 19.0 ],
					"presentation_rect" : [ 68.5, 145.5, 364.0, 19.0 ],
					"style" : "",
					"text" : "route /touch/shear/up /touch/shear/down /touch/shear/left /touch/shear/right /touch/weight"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 659.0, 13.625, 57.0, 19.0 ],
					"presentation_rect" : [ 659.0, 13.625, 57.0, 19.0 ],
					"style" : "",
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.5, 201.0, 55.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 189.0, 137.5, 72.0, 17.0 ],
					"style" : "",
					"text" : "shearLEFT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-19",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 686.0, 97.306419, 50.0, 19.0 ],
					"presentation_rect" : [ 686.0, 97.306419, 50.0, 19.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"calccount" : 2,
					"fgcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"id" : "obj-92",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 68.5, 623.424744, 130.0, 130.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 355.5, 602.243042, 108.5 ],
					"range" : [ 0.0, 0.1 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 13.0,
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 55.5, 177.0, 194.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.75, 111.5, 194.0, 22.0 ],
					"style" : "",
					"text" : "SINUS CONTROLS"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 68.5, 350.0, 79.5, 29.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 68.5, 350.0, 79.5, 29.0 ],
					"style" : "",
					"text" : "scale 0. 100. 0.00001 1. 1.12"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 55.5, 201.0, 81.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.75, 137.5, 65.25, 17.0 ],
					"style" : "",
					"text" : "shearUP"
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-26",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.5, 238.0, 27.0, 110.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 37.25, 168.0, 27.0, 110.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-40",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 37.5, 390.5, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.25, 284.5, 51.0, 19.0 ],
					"style" : "",
					"text" : "0.000992"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 298.0, 350.0, 86.5, 19.0 ],
					"presentation_rect" : [ 298.0, 350.0, 86.5, 19.0 ],
					"style" : "",
					"text" : "scale 0. 100. 0. 3."
				}

			}
, 			{
				"box" : 				{
					"active1" : [ 0.0, 0.8, 1.0, 1.0 ],
					"bubblesize" : 12,
					"id" : "obj-33",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 659.0, 43.306419, 100.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 400.0, 49.0, 149.903229, 37.06451 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "<invalid>", "flonum", "float", 400.0, 5, "<invalid>", "flonum", "float", 1.6, 5, "<invalid>", "flonum", "float", 3.1, 5, "<invalid>", "number", "int", 3, 5, "obj-17", "multislider", "list", 18.518518, 5, "obj-15", "multislider", "list", 21.144487, 5, "obj-299", "multislider", "list", 4013, 5, "obj-26", "multislider", "list", 38.888889, 5, "obj-19", "number", "int", 1, 4, "<invalid>", "function", "clear", 8, "<invalid>", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 236.700531, 100.0, 0, -0.2, 8, "<invalid>", "function", "add_with_curve", 408.846375, 1.020408, 0, 0.5, 8, "<invalid>", "function", "add_with_curve", 459.85257, 0.0, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 679.816711, 62.2449, 0, -0.4, 8, "<invalid>", "function", "add_with_curve", 1000.0, 0.0, 0, 0.6, 5, "<invalid>", "function", "domain", 1000.0, 6, "<invalid>", "function", "range", 0.0, 100.0, 5, "<invalid>", "function", "mode", 1, 5, "<invalid>", "flonum", "float", 21.144487, 5, "<invalid>", "toggle", "int", 1, 5, "<invalid>", "number", "int", 600, 5, "<invalid>", "flonum", "float", 1.0, 5, "<invalid>", "flonum", "float", 1.0, 5, "<invalid>", "flonum", "float", 1.65, 5, "<invalid>", "flonum", "float", 400.0, 5, "<invalid>", "flonum", "float", 640.0, 5, "<invalid>", "flonum", "float", 1240.0, 5, "<invalid>", "flonum", "float", 0.003, 5, "<invalid>", "flonum", "float", 0.002, 5, "<invalid>", "flonum", "float", 0.002, 5, "<invalid>", "flonum", "float", 80.0, 5, "<invalid>", "flonum", "float", 80.0, 5, "<invalid>", "flonum", "float", 80.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "<invalid>", "flonum", "float", 400.0, 5, "<invalid>", "flonum", "float", 2.339, 5, "<invalid>", "flonum", "float", 14.2, 5, "<invalid>", "number", "int", 3, 5, "obj-17", "multislider", "list", 23.148148, 5, "obj-15", "multislider", "list", 75.861115, 5, "obj-299", "multislider", "list", 2506, 5, "obj-26", "multislider", "list", 0.925926, 5, "obj-19", "number", "int", 2, 4, "<invalid>", "function", "clear", 8, "<invalid>", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 641.562073, 100.0, 0, -0.25, 8, "<invalid>", "function", "add_with_curve", 711.695557, 29.591837, 0, -0.4, 8, "<invalid>", "function", "add_with_curve", 1000.0, 0.0, 0, -0.55, 5, "<invalid>", "function", "domain", 1000.0, 6, "<invalid>", "function", "range", 0.0, 100.0, 5, "<invalid>", "function", "mode", 1, 5, "<invalid>", "flonum", "float", 75.861115, 5, "<invalid>", "toggle", "int", 1, 5, "<invalid>", "number", "int", 600, 5, "<invalid>", "flonum", "float", 1.0, 5, "<invalid>", "flonum", "float", 0.8, 5, "<invalid>", "flonum", "float", 1.65, 5, "<invalid>", "flonum", "float", 400.0, 5, "<invalid>", "flonum", "float", 935.599976, 5, "<invalid>", "flonum", "float", 5680.0, 5, "<invalid>", "flonum", "float", 0.006, 5, "<invalid>", "flonum", "float", 0.003, 5, "<invalid>", "flonum", "float", 0.005, 5, "<invalid>", "flonum", "float", 80.0, 5, "<invalid>", "flonum", "float", 65.0, 5, "<invalid>", "flonum", "float", 70.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "<invalid>", "flonum", "float", 1200.0, 5, "<invalid>", "flonum", "float", 1.6, 5, "<invalid>", "flonum", "float", 3.1, 5, "<invalid>", "number", "int", 3, 5, "obj-17", "multislider", "list", 59.259258, 5, "obj-15", "multislider", "list", 37.717445, 5, "obj-299", "multislider", "list", 4766, 5, "obj-26", "multislider", "list", 50.0, 5, "obj-19", "number", "int", 3, 4, "<invalid>", "function", "clear", 8, "<invalid>", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 345.088654, 100.0, 0, -0.3, 8, "<invalid>", "function", "add_with_curve", 600.119568, 15.306123, 0, -0.25, 8, "<invalid>", "function", "add_with_curve", 1000.0, 0.0, 0, 0.55, 5, "<invalid>", "function", "domain", 1000.0, 6, "<invalid>", "function", "range", 0.0, 100.0, 5, "<invalid>", "function", "mode", 1, 5, "<invalid>", "flonum", "float", 37.717445, 5, "<invalid>", "toggle", "int", 1, 5, "<invalid>", "number", "int", 500, 5, "<invalid>", "flonum", "float", 1.0, 5, "<invalid>", "flonum", "float", 0.6, 5, "<invalid>", "flonum", "float", 1.65, 5, "<invalid>", "flonum", "float", 1200.0, 5, "<invalid>", "flonum", "float", 1920.0, 5, "<invalid>", "flonum", "float", 3720.0, 5, "<invalid>", "flonum", "float", 0.003, 5, "<invalid>", "flonum", "float", 0.002, 5, "<invalid>", "flonum", "float", 0.002, 5, "<invalid>", "flonum", "float", 80.0, 5, "<invalid>", "flonum", "float", 80.0, 5, "<invalid>", "flonum", "float", 80.0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "<invalid>", "flonum", "float", 900.0, 5, "<invalid>", "flonum", "float", 1.021, 5, "<invalid>", "flonum", "float", 2.937, 5, "<invalid>", "number", "int", 3, 5, "obj-17", "multislider", "list", 42.592594, 5, "obj-15", "multislider", "list", 0.0, 5, "obj-299", "multislider", "list", 5896, 5, "obj-26", "multislider", "list", 30.555555, 5, "obj-19", "number", "int", 4, 4, "<invalid>", "function", "clear", 8, "<invalid>", "function", "add_with_curve", 0.0, 1.020408, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 204.821671, 35.714287, 0, -0.75, 8, "<invalid>", "function", "add_with_curve", 408.846375, 100.0, 0, 0.5, 8, "<invalid>", "function", "add_with_curve", 606.4953, 0.0, 0, -0.65, 8, "<invalid>", "function", "add_with_curve", 1000.0, 0.0, 0, 0.0, 5, "<invalid>", "function", "domain", 1000.0, 6, "<invalid>", "function", "range", 0.0, 100.0, 5, "<invalid>", "function", "mode", 1, 5, "<invalid>", "flonum", "float", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "<invalid>", "number", "int", 700, 5, "<invalid>", "flonum", "float", 1.0, 5, "<invalid>", "flonum", "float", 0.6, 5, "<invalid>", "flonum", "float", 1.65, 5, "<invalid>", "flonum", "float", 900.0, 5, "<invalid>", "flonum", "float", 918.900024, 5, "<invalid>", "flonum", "float", 2643.300049, 5, "<invalid>", "flonum", "float", 0.009, 5, "<invalid>", "flonum", "float", 0.005, 5, "<invalid>", "flonum", "float", 0.001, 5, "<invalid>", "flonum", "float", 40.0, 5, "<invalid>", "flonum", "float", 60.0, 5, "<invalid>", "flonum", "float", 80.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "<invalid>", "flonum", "float", 800.0, 5, "<invalid>", "flonum", "float", 1.021, 5, "<invalid>", "flonum", "float", 2.937, 5, "<invalid>", "number", "int", 3, 5, "obj-17", "multislider", "list", 12.037037, 5, "obj-15", "multislider", "list", 64.353333, 5, "obj-299", "multislider", "list", 4766, 5, "obj-26", "multislider", "list", 12.037037, 5, "obj-19", "number", "int", 5, 4, "<invalid>", "function", "clear", 8, "<invalid>", "function", "add_with_curve", 0.0, 47.959183, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 574.616455, 70.408165, 0, -0.6, 8, "<invalid>", "function", "add_with_curve", 1000.0, 47.959183, 0, -0.2, 5, "<invalid>", "function", "domain", 1000.0, 6, "<invalid>", "function", "range", 0.0, 100.0, 5, "<invalid>", "function", "mode", 1, 5, "<invalid>", "flonum", "float", 64.353333, 5, "<invalid>", "toggle", "int", 1, 5, "<invalid>", "number", "int", 3000, 5, "<invalid>", "flonum", "float", 4.0, 5, "<invalid>", "flonum", "float", 1.0, 5, "<invalid>", "flonum", "float", 1.5, 5, "<invalid>", "flonum", "float", 800.0, 5, "<invalid>", "flonum", "float", 816.800049, 5, "<invalid>", "flonum", "float", 2349.600098, 5, "<invalid>", "flonum", "float", 0.009, 5, "<invalid>", "flonum", "float", 0.005, 5, "<invalid>", "flonum", "float", 0.003, 5, "<invalid>", "flonum", "float", 40.0, 5, "<invalid>", "flonum", "float", 30.0, 5, "<invalid>", "flonum", "float", 50.0 ]
						}
 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-301",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.064514, 756.532288, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 553.489258, 10.0, 50.0, 19.0 ],
					"style" : "",
					"text" : "4013"
				}

			}
, 			{
				"box" : 				{
					"contdata" : 1,
					"id" : "obj-299",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 463.064514, 680.032288, 26.0, 65.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 400.0, 10.0, 150.0, 37.0 ],
					"setminmax" : [ 1000.0, 30000.0 ],
					"settype" : 0,
					"slidercolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 442.064514, 657.032288, 83.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 336.0, 10.0, 62.0, 17.0 ],
					"style" : "",
					"text" : "extra gain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 285.564514, 786.424744, 78.555542, 19.0 ],
					"presentation_rect" : [ 285.564514, 786.424744, 78.555542, 19.0 ],
					"style" : "",
					"text" : "*~ 1."
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-15",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 298.0, 238.0, 27.0, 110.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 212.625, 167.5, 27.0, 110.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 173.0, 201.0, 71.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.5, 137.5, 74.0, 17.0 ],
					"style" : "",
					"text" : "shearDOWN"
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-17",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 189.0, 238.0, 27.0, 110.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.9375, 167.5, 27.0, 110.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.5, 87.306419, 334.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 60.0, 300.0, 23.0 ],
					"style" : "",
					"text" : "simple sinusoid manipulation"
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.223529, 0.243137, 0.235294, 1.0 ],
					"id" : "obj-141",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.5, 77.431419, 289.0, 4.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 54.0, 289.0, 4.0 ],
					"proportion" : 0.39,
					"rounded" : 0,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 30.0,
					"id" : "obj-142",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.5, 25.5, 255.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 10.0, 255.0, 42.0 ],
					"style" : "",
					"text" : "sinusoid",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 189.0, 350.0, 97.0, 19.0 ],
					"presentation_rect" : [ 189.0, 350.0, 97.0, 19.0 ],
					"style" : "",
					"text" : "scale 0. 100. 0.01 10."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-35",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 390.5, 72.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 116.6875, 284.5, 43.5, 19.0 ],
					"style" : "",
					"text" : "1.86"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-42",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 263.0, 390.5, 54.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 199.125, 284.5, 54.0, 19.0 ],
					"style" : "",
					"text" : "0.634335"
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.85098, 0.85098, 0.823529, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"id" : "obj-134",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 758.0, 657.032288, 149.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 101.0, 602.243042, 252.5 ],
					"proportion" : 0.39,
					"rounded" : 6,
					"style" : "",
					"varname" : "String[3]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-27", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-27", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-27", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"midpoints" : [ 472.564514, 767.744635, 354.620056, 767.744635 ],
					"order" : 1,
					"source" : [ "obj-299", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-301", 1 ],
					"order" : 0,
					"source" : [ "obj-299", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
