{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 194.0, 75.0, 1246.0, 769.0 ],
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
		"toolbars_unpinned_last_save" : 7,
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
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 955.0, 177.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
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
						"toolbars_unpinned_last_save" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 14.0, 136.0, 30.0, 22.0 ],
									"style" : "",
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 123.0, 201.875, 54.0, 22.0 ],
									"style" : "",
									"text" : "append"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "clearall" ],
									"patching_rect" : [ 50.0, 235.625, 56.0, 35.0 ],
									"style" : "",
									"text" : "t 1 l clearall"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 123.0, 235.625, 29.5, 22.0 ],
									"presentation_rect" : [ 672.333313, 15.625, 29.5, 19.0 ],
									"style" : "",
									"text" : "t 1 l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 123.0, 172.0, 36.5, 22.0 ],
									"presentation_linecount" : 2,
									"presentation_rect" : [ 551.5, 71.625, 29.5, 19.0 ],
									"style" : "",
									"text" : "write"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 201.875, 56.0, 22.0 ],
									"style" : "",
									"text" : "append"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 172.0, 37.5, 22.0 ],
									"presentation_linecount" : 2,
									"presentation_rect" : [ 516.5, 71.625, 29.5, 19.0 ],
									"style" : "",
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 100.0, 165.0, 22.0 ],
									"presentation_linecount" : 2,
									"presentation_rect" : [ 516.5, 41.625, 89.0, 19.0 ],
									"style" : "",
									"text" : "route open close"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-51",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-52",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.5, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-53",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 73.200012, 314.625, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-47", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-47", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"order" : 0,
									"source" : [ "obj-52", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 471.5, 43.306419, 87.0, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p readWritePresets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 539.5, 11.806419, 164.0, 19.0 ],
					"style" : "",
					"text" : "loadmess set set.scraping.maxpresets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 348.064514, 298.0, 29.5, 19.0 ],
					"presentation_rect" : [ 348.064514, 298.0, 29.5, 19.0 ],
					"style" : "",
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 330.75, 324.0, 29.5, 19.0 ],
					"presentation_rect" : [ 330.75, 324.0, 29.5, 19.0 ],
					"style" : "",
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 352.75, 272.0, 90.0, 19.0 ],
					"presentation_rect" : [ 352.75, 272.0, 90.0, 19.0 ],
					"style" : "",
					"text" : "scale 0. 600. 0. 100."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.75, 247.0, 90.0, 19.0 ],
					"presentation_rect" : [ 330.75, 247.0, 90.0, 19.0 ],
					"style" : "",
					"text" : "scale 0. 600. 0. 100."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.75, 177.0, 95.0, 19.0 ],
					"presentation_rect" : [ 275.75, 177.0, 95.0, 19.0 ],
					"style" : "",
					"text" : "scale 0. 3500. 0. 100."
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
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
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
						"toolbars_unpinned_last_save" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 218.0, 30.0, 30.0 ],
									"presentation_rect" : [ 70.0, 218.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 70.0, 15.0, 28.0, 28.0 ],
									"presentation_rect" : [ 70.0, 15.0, 28.0, 28.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 10.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 70.0, 114.0, 44.0, 20.0 ],
									"presentation_rect" : [ 70.0, 114.0, 44.0, 20.0 ],
									"style" : "",
									"text" : "-~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 10.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 95.0, 85.0, 66.0, 20.0 ],
									"presentation_rect" : [ 95.0, 85.0, 66.0, 20.0 ],
									"style" : "",
									"text" : "onepole~ 10"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 95.0, 58.0, 66.0, 20.0 ],
									"presentation_rect" : [ 95.0, 58.0, 66.0, 20.0 ],
									"style" : "",
									"text" : "onepole~ 10"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 285.564514, 706.424744, 92.0, 19.0 ],
					"presentation_rect" : [ 285.564514, 706.424744, 92.0, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p removeDCoffset"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-3",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1159.604004, 318.0, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 507.889038, 281.5, 50.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-105",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1112.166504, 318.0, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 440.451538, 281.5, 48.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-4",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1064.729004, 318.0, 44.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.014038, 281.5, 48.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-5",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 969.666504, 318.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 507.889038, 244.5, 48.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-102",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 922.229004, 318.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 440.451538, 244.5, 48.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 874.791504, 318.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.014038, 244.5, 50.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-99",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 783.979004, 318.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 507.889038, 208.0, 48.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-96",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 736.541504, 318.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 440.451538, 208.0, 48.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-95",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 689.104004, 318.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.014038, 208.0, 50.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-18",
					"maxclass" : "flonum",
					"maximum" : 4.0,
					"minimum" : 0.01,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 641.666504, 278.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.180542, 189.5, 50.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-25",
					"maxclass" : "flonum",
					"maximum" : 4.0,
					"minimum" : 0.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1017.291504, 282.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.180542, 281.5, 50.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-93",
					"maxclass" : "flonum",
					"maximum" : 4.0,
					"minimum" : 0.001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 827.354004, 278.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.180542, 244.5, 50.0, 20.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0
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
					"patching_rect" : [ 255.5, 201.0, 145.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 189.0, 137.5, 72.0, 17.0 ],
					"style" : "",
					"text" : "velocity (m/s)"
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
					"patching_rect" : [ 498.5, 127.306419, 50.0, 19.0 ],
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
					"color" : [ 0.0, 0.8, 1.0, 1.0 ],
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 534.5, 543.5, 596.0, 40.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 534.5, 543.5, 596.0, 40.0 ],
					"style" : "",
					"text" : "sdt.modal objectsc 3 1 @freqs 500. 1000. 1500 @decays 0.06 0.03 0.01 @pickup0 50. 50. 50. @activeModes 3"
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
					"text" : "SCRAPING CONTROLS"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 19.791504, 463.5, 32.0, 19.0 ],
					"presentation_rect" : [ 19.791504, 463.5, 32.0, 19.0 ],
					"style" : "",
					"text" : "pink~"
				}

			}
, 			{
				"box" : 				{
					"attr" : "velocity",
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-66",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 68.5, 512.5, 155.0, 22.0 ],
					"presentation_rect" : [ 68.5, 512.5, 155.0, 22.0 ],
					"style" : ""
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
					"text" : "probe width"
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
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 68.5, 463.5, 66.0, 19.0 ],
					"presentation_rect" : [ 68.5, 463.5, 66.0, 19.0 ],
					"style" : "",
					"text" : "prepend grain"
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
					"patching_rect" : [ 12.0, 407.5, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.25, 284.5, 51.0, 19.0 ],
					"style" : "",
					"text" : "0.093527"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.8, 1.0, 1.0 ],
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 68.5, 543.5, 322.0, 25.0 ],
					"presentation_rect" : [ 68.5, 543.5, 322.0, 25.0 ],
					"style" : "",
					"text" : "sdt.scraping~ @force 0.1 @grain 1. @velocity 1."
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
					"patching_rect" : [ 280.0, 350.0, 86.5, 19.0 ],
					"presentation_rect" : [ 280.0, 350.0, 86.5, 19.0 ],
					"style" : "",
					"text" : "scale 0. 100. 0. 3."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 189.0, 415.5, 52.0, 19.0 ],
					"presentation_rect" : [ 189.0, 415.5, 52.0, 19.0 ],
					"style" : "",
					"text" : "pack 0. 30"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 189.0, 432.5, 46.0, 19.0 ],
					"presentation_rect" : [ 189.0, 432.5, 46.0, 19.0 ],
					"style" : "",
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-81",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.564514, 649.924744, 200.0, 59.0 ],
					"presentation_linecount" : 4,
					"presentation_rect" : [ 540.564514, 649.924744, 200.0, 59.0 ],
					"style" : "",
					"text" : "Mandatory arguments: \nunique ID name set for object 1; \nunique ID name set for object 2; \nmax number of signal outlets"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 265.064514, 655.924744, 171.0, 17.0 ],
					"presentation_rect" : [ 265.064514, 655.924744, 171.0, 17.0 ],
					"style" : "",
					"text" : "displacement @pickup0 "
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
					"patching_rect" : [ 471.5, 73.306419, 100.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 400.0, 49.0, 149.903229, 37.06451 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-222", "flonum", "float", 400.0, 5, "obj-210", "flonum", "float", 1.6, 5, "obj-206", "flonum", "float", 3.1, 5, "obj-175", "number", "int", 3, 5, "obj-17", "multislider", "list", 27.808876, 5, "obj-15", "multislider", "list", 19.656801, 5, "obj-299", "multislider", "list", 27873, 5, "obj-26", "multislider", "list", 79.090912, 5, "obj-19", "number", "int", 1, 5, "obj-93", "flonum", "float", 0.4, 5, "obj-25", "flonum", "float", 1.49, 5, "obj-18", "flonum", "float", 0.06, 5, "obj-95", "flonum", "float", 400.0, 5, "obj-96", "flonum", "float", 640.0, 5, "obj-99", "flonum", "float", 1240.0, 5, "obj-6", "flonum", "float", 0.003, 5, "obj-102", "flonum", "float", 0.002, 5, "obj-5", "flonum", "float", 0.002, 5, "obj-4", "flonum", "float", 80.0, 5, "obj-105", "flonum", "float", 80.0, 5, "obj-3", "flonum", "float", 80.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-222", "flonum", "float", 400.0, 5, "obj-210", "flonum", "float", 2.339, 5, "obj-206", "flonum", "float", 14.2, 5, "obj-175", "number", "int", 3, 5, "obj-17", "multislider", "list", 23.148148, 5, "obj-15", "multislider", "list", 75.861115, 5, "obj-299", "multislider", "list", 2506, 5, "obj-26", "multislider", "list", 0.925926, 5, "obj-19", "number", "int", 2, 4, "<invalid>", "function", "clear", 8, "<invalid>", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 641.562073, 100.0, 0, -0.25, 8, "<invalid>", "function", "add_with_curve", 711.695557, 29.591837, 0, -0.4, 8, "<invalid>", "function", "add_with_curve", 1000.0, 0.0, 0, -0.55, 5, "<invalid>", "function", "domain", 1000.0, 6, "<invalid>", "function", "range", 0.0, 100.0, 5, "<invalid>", "function", "mode", 1, 5, "<invalid>", "flonum", "float", 75.861115, 5, "<invalid>", "toggle", "int", 1, 5, "<invalid>", "number", "int", 600, 5, "obj-93", "flonum", "float", 1.0, 5, "obj-25", "flonum", "float", 0.8, 5, "obj-18", "flonum", "float", 1.65, 5, "obj-95", "flonum", "float", 400.0, 5, "obj-96", "flonum", "float", 935.599976, 5, "obj-99", "flonum", "float", 5680.0, 5, "obj-6", "flonum", "float", 0.006, 5, "obj-102", "flonum", "float", 0.003, 5, "obj-5", "flonum", "float", 0.005, 5, "obj-4", "flonum", "float", 80.0, 5, "obj-105", "flonum", "float", 65.0, 5, "obj-3", "flonum", "float", 70.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-222", "flonum", "float", 1200.0, 5, "obj-210", "flonum", "float", 1.6, 5, "obj-206", "flonum", "float", 3.1, 5, "obj-175", "number", "int", 3, 5, "obj-17", "multislider", "list", 59.259258, 5, "obj-15", "multislider", "list", 37.717445, 5, "obj-299", "multislider", "list", 4766, 5, "obj-26", "multislider", "list", 50.0, 5, "obj-19", "number", "int", 3, 4, "<invalid>", "function", "clear", 8, "<invalid>", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 345.088654, 100.0, 0, -0.3, 8, "<invalid>", "function", "add_with_curve", 600.119568, 15.306123, 0, -0.25, 8, "<invalid>", "function", "add_with_curve", 1000.0, 0.0, 0, 0.55, 5, "<invalid>", "function", "domain", 1000.0, 6, "<invalid>", "function", "range", 0.0, 100.0, 5, "<invalid>", "function", "mode", 1, 5, "<invalid>", "flonum", "float", 37.717445, 5, "<invalid>", "toggle", "int", 1, 5, "<invalid>", "number", "int", 500, 5, "obj-93", "flonum", "float", 1.0, 5, "obj-25", "flonum", "float", 0.6, 5, "obj-18", "flonum", "float", 1.65, 5, "obj-95", "flonum", "float", 1200.0, 5, "obj-96", "flonum", "float", 1920.0, 5, "obj-99", "flonum", "float", 3720.0, 5, "obj-6", "flonum", "float", 0.003, 5, "obj-102", "flonum", "float", 0.002, 5, "obj-5", "flonum", "float", 0.002, 5, "obj-4", "flonum", "float", 80.0, 5, "obj-105", "flonum", "float", 80.0, 5, "obj-3", "flonum", "float", 80.0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-222", "flonum", "float", 900.0, 5, "obj-210", "flonum", "float", 1.021, 5, "obj-206", "flonum", "float", 2.937, 5, "obj-175", "number", "int", 3, 5, "obj-17", "multislider", "list", 42.592594, 5, "obj-15", "multislider", "list", 0.0, 5, "obj-299", "multislider", "list", 5896, 5, "obj-26", "multislider", "list", 30.555555, 5, "obj-19", "number", "int", 4, 4, "<invalid>", "function", "clear", 8, "<invalid>", "function", "add_with_curve", 0.0, 1.020408, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 204.821671, 35.714287, 0, -0.75, 8, "<invalid>", "function", "add_with_curve", 408.846375, 100.0, 0, 0.5, 8, "<invalid>", "function", "add_with_curve", 606.4953, 0.0, 0, -0.65, 8, "<invalid>", "function", "add_with_curve", 1000.0, 0.0, 0, 0.0, 5, "<invalid>", "function", "domain", 1000.0, 6, "<invalid>", "function", "range", 0.0, 100.0, 5, "<invalid>", "function", "mode", 1, 5, "<invalid>", "flonum", "float", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "<invalid>", "number", "int", 700, 5, "obj-93", "flonum", "float", 1.0, 5, "obj-25", "flonum", "float", 0.6, 5, "obj-18", "flonum", "float", 1.65, 5, "obj-95", "flonum", "float", 900.0, 5, "obj-96", "flonum", "float", 918.900024, 5, "obj-99", "flonum", "float", 2643.300049, 5, "obj-6", "flonum", "float", 0.009, 5, "obj-102", "flonum", "float", 0.005, 5, "obj-5", "flonum", "float", 0.001, 5, "obj-4", "flonum", "float", 40.0, 5, "obj-105", "flonum", "float", 60.0, 5, "obj-3", "flonum", "float", 80.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-222", "flonum", "float", 800.0, 5, "obj-210", "flonum", "float", 1.021, 5, "obj-206", "flonum", "float", 2.937, 5, "obj-175", "number", "int", 3, 5, "obj-17", "multislider", "list", 12.037037, 5, "obj-15", "multislider", "list", 64.353333, 5, "obj-299", "multislider", "list", 4766, 5, "obj-26", "multislider", "list", 12.037037, 5, "obj-19", "number", "int", 5, 4, "<invalid>", "function", "clear", 8, "<invalid>", "function", "add_with_curve", 0.0, 47.959183, 0, 0.0, 8, "<invalid>", "function", "add_with_curve", 574.616455, 70.408165, 0, -0.6, 8, "<invalid>", "function", "add_with_curve", 1000.0, 47.959183, 0, -0.2, 5, "<invalid>", "function", "domain", 1000.0, 6, "<invalid>", "function", "range", 0.0, 100.0, 5, "<invalid>", "function", "mode", 1, 5, "<invalid>", "flonum", "float", 64.353333, 5, "<invalid>", "toggle", "int", 1, 5, "<invalid>", "number", "int", 3000, 5, "obj-93", "flonum", "float", 4.0, 5, "obj-25", "flonum", "float", 1.0, 5, "obj-18", "flonum", "float", 1.5, 5, "obj-95", "flonum", "float", 800.0, 5, "obj-96", "flonum", "float", 816.800049, 5, "obj-99", "flonum", "float", 2349.600098, 5, "obj-6", "flonum", "float", 0.009, 5, "obj-102", "flonum", "float", 0.005, 5, "obj-5", "flonum", "float", 0.003, 5, "obj-4", "flonum", "float", 40.0, 5, "obj-105", "flonum", "float", 30.0, 5, "obj-3", "flonum", "float", 50.0 ]
						}
 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.8, 1.0, 1.0 ],
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 285.564514, 623.424744, 236.0, 25.0 ],
					"presentation_rect" : [ 285.564514, 623.424744, 236.0, 25.0 ],
					"style" : "",
					"text" : "sdt.impact~ objectsc hammersc 1"
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
					"text" : "27873"
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
					"patching_rect" : [ 280.0, 238.0, 27.0, 110.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 202.5, 167.5, 27.0, 110.0 ],
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
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 173.0, 201.0, 71.0, 28.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 100.5, 137.5, 74.0, 28.0 ],
					"style" : "",
					"text" : "external force on probe"
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
					"presentation_rect" : [ 119.0, 167.5, 27.0, 110.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"attr" : "pickup0",
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 534.5, 505.0, 223.0, 22.0 ],
					"presentation_rect" : [ 534.5, 505.0, 223.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-94",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 825.8125, 586.0, 268.479004, 59.0 ],
					"presentation_linecount" : 4,
					"presentation_rect" : [ 825.8125, 586.0, 268.479004, 59.0 ],
					"style" : "",
					"text" : "Mandatory arguments: \nunique ID name of the modal object; \nmax number of modes;\nnumber of pickup points"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1017.291504, 463.5, 77.0, 19.0 ],
					"presentation_rect" : [ 1017.291504, 463.5, 77.0, 19.0 ],
					"style" : "",
					"text" : "prepend pickup0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 827.354004, 463.5, 75.0, 19.0 ],
					"presentation_rect" : [ 827.354004, 463.5, 75.0, 19.0 ],
					"style" : "",
					"text" : "prepend decays"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 641.666504, 463.5, 66.0, 19.0 ],
					"presentation_rect" : [ 641.666504, 463.5, 66.0, 19.0 ],
					"style" : "",
					"text" : "prepend freqs"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 534.5, 463.5, 97.0, 19.0 ],
					"presentation_rect" : [ 534.5, 463.5, 97.0, 19.0 ],
					"style" : "",
					"text" : "prepend activeModes"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-169",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 969.666504, 298.0, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 507.889038, 229.5, 45.0, 17.0 ],
					"style" : "",
					"text" : "decay_3"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-170",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 922.229004, 298.0, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 440.451538, 229.5, 45.0, 17.0 ],
					"style" : "",
					"text" : "decay_2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-171",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 874.791504, 298.0, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.014038, 229.5, 45.0, 17.0 ],
					"style" : "",
					"text" : "decay_1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"id" : "obj-212",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 534.5, 313.0, 98.0, 18.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 373.014038, 137.5, 61.0, 30.0 ],
					"style" : "",
					"text" : "modes activation:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 534.5, 390.5, 40.0, 19.0 ],
					"presentation_rect" : [ 534.5, 390.5, 40.0, 19.0 ],
					"style" : "",
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 20.0,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-175",
					"maxclass" : "number",
					"maximum" : 3,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 534.5, 348.5, 48.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 440.451538, 137.5, 48.0, 32.0 ],
					"style" : "",
					"textcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"triangle" : 0,
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triscale" : 0.9,
					"varname" : "Active_modes"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.8, 0.8, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 190.0, 225.0, 952.0, 514.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"toolbars_unpinned_last_save" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.0, 118.0, 33.0, 15.0 ],
									"presentation_rect" : [ 189.0, 118.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 189.0, 142.0, 40.0, 17.0 ],
									"presentation_rect" : [ 189.0, 142.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 128.0, 118.0, 33.0, 15.0 ],
									"presentation_rect" : [ 128.0, 118.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 128.0, 142.0, 40.0, 17.0 ],
									"presentation_rect" : [ 128.0, 142.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 67.0, 118.0, 33.0, 15.0 ],
									"presentation_rect" : [ 67.0, 118.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 67.0, 142.0, 40.0, 17.0 ],
									"presentation_rect" : [ 67.0, 142.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 67.0, 267.0, 134.0, 17.0 ],
									"presentation_rect" : [ 67.0, 267.0, 134.0, 17.0 ],
									"style" : "",
									"text" : "vexpr $f1 * $f2 @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "global gain (pickup)",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 52.0, 22.0, 22.0 ],
									"presentation_rect" : [ 16.0, 52.0, 22.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 16.0, 127.0, 32.5, 17.0 ],
									"presentation_rect" : [ 16.0, 127.0, 32.5, 17.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 16.0, 103.0, 40.0, 17.0 ],
									"presentation_rect" : [ 16.0, 103.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 81.0, 33.0, 15.0 ],
									"presentation_rect" : [ 16.0, 81.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"comment" : "freq_mode0",
									"id" : "obj-66",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.0, 52.0, 22.0, 22.0 ],
									"presentation_rect" : [ 189.0, 52.0, 22.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "freq_mode0",
									"id" : "obj-67",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 128.0, 52.0, 22.0, 22.0 ],
									"presentation_rect" : [ 128.0, 52.0, 22.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-68",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 67.0, 337.0, 22.0, 22.0 ],
									"presentation_rect" : [ 67.0, 337.0, 22.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 67.0, 201.0, 141.0, 17.0 ],
									"presentation_rect" : [ 67.0, 201.0, 141.0, 17.0 ],
									"style" : "",
									"text" : "pak 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "freq_mode0",
									"id" : "obj-72",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 67.0, 52.0, 22.0, 22.0 ],
									"presentation_rect" : [ 67.0, 52.0, 22.0, 22.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 39.0, 242.0, 191.5, 242.0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 25.5, 261.0, 76.5, 261.0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 2 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1017.291504, 421.0, 161.3125, 19.0 ],
					"presentation_rect" : [ 1017.291504, 421.0, 161.3125, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 9.0,
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p obj_weights_gain"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.8, 0.8, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 1484.0, 117.0, 506.0, 487.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
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
						"toolbars_unpinned_last_save" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 166.0, 269.0, 134.0, 17.0 ],
									"presentation_rect" : [ 166.0, 269.0, 134.0, 17.0 ],
									"style" : "",
									"text" : "vexpr $f1 * $f2 @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "global decay",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 35.0, 25.0, 25.0 ],
									"presentation_rect" : [ 50.0, 35.0, 25.0, 25.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 166.0, 110.0, 40.0, 17.0 ],
									"presentation_rect" : [ 166.0, 110.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 166.0, 73.0, 33.0, 15.0 ],
									"presentation_rect" : [ 166.0, 73.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 246.75, 110.0, 40.0, 17.0 ],
									"presentation_rect" : [ 246.75, 110.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 246.75, 73.0, 33.0, 15.0 ],
									"presentation_rect" : [ 246.75, 73.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 327.5, 110.0, 40.0, 17.0 ],
									"presentation_rect" : [ 327.5, 110.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 327.5, 73.0, 33.0, 15.0 ],
									"presentation_rect" : [ 327.5, 73.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 50.0, 110.0, 32.5, 17.0 ],
									"presentation_rect" : [ 50.0, 110.0, 32.5, 17.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 86.0, 40.0, 17.0 ],
									"presentation_rect" : [ 50.0, 86.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 71.0, 33.0, 15.0 ],
									"presentation_rect" : [ 50.0, 71.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 166.0, 207.0, 180.5, 17.0 ],
									"presentation_rect" : [ 166.0, 207.0, 180.5, 17.0 ],
									"style" : "",
									"text" : "pak 1. 1. 1."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 166.0, 316.0, 21.0, 21.0 ],
									"presentation_rect" : [ 166.0, 316.0, 21.0, 21.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "freq_mode0",
									"id" : "obj-64",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 327.5, 35.0, 19.0, 19.0 ],
									"presentation_rect" : [ 327.5, 35.0, 19.0, 19.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "freq_mode1",
									"id" : "obj-67",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 246.75, 35.0, 19.0, 19.0 ],
									"presentation_rect" : [ 246.75, 35.0, 19.0, 19.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "freq_mode0",
									"id" : "obj-68",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 166.0, 35.0, 19.0, 19.0 ],
									"presentation_rect" : [ 166.0, 35.0, 19.0, 19.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 73.0, 248.0, 290.5, 248.0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 59.5, 255.0, 175.5, 255.0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 2 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 827.354004, 421.0, 161.3125, 19.0 ],
					"presentation_rect" : [ 827.354004, 421.0, 161.3125, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p mod_obj_decayst"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.8, 0.8, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-214",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 325.0, 280.0, 1076.0, 606.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"toolbars_unpinned_last_save" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.0, 230.0, 134.0, 17.0 ],
									"presentation_rect" : [ 147.0, 230.0, 134.0, 17.0 ],
									"style" : "",
									"text" : "vexpr $f1 * $f2 @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 31.0, 144.0, 32.5, 17.0 ],
									"presentation_rect" : [ 31.0, 144.0, 32.5, 17.0 ],
									"style" : "",
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 31.0, 111.0, 40.0, 17.0 ],
									"presentation_rect" : [ 31.0, 111.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 74.0, 33.0, 15.0 ],
									"presentation_rect" : [ 31.0, 74.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"comment" : "glob freq",
									"id" : "obj-13",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 24.0, 25.0, 25.0 ],
									"presentation_rect" : [ 31.0, 24.0, 25.0, 25.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 308.5, 112.0, 40.0, 17.0 ],
									"presentation_rect" : [ 308.5, 112.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 227.75, 112.0, 40.0, 17.0 ],
									"presentation_rect" : [ 227.75, 112.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 147.0, 112.0, 40.0, 17.0 ],
									"presentation_rect" : [ 147.0, 112.0, 40.0, 17.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.0, 161.0, 180.5, 17.0 ],
									"presentation_rect" : [ 147.0, 161.0, 180.5, 17.0 ],
									"style" : "",
									"text" : "pak 1. 1. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.5, 75.0, 33.0, 15.0 ],
									"presentation_rect" : [ 308.5, 75.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 227.75, 75.0, 33.0, 15.0 ],
									"presentation_rect" : [ 227.75, 75.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.0, 75.0, 33.0, 15.0 ],
									"presentation_rect" : [ 147.0, 75.0, 33.0, 15.0 ],
									"style" : "",
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-33",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 147.0, 375.0, 27.0, 27.0 ],
									"presentation_rect" : [ 147.0, 375.0, 27.0, 27.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "freq_mode0",
									"id" : "obj-61",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.5, 24.0, 23.0, 23.0 ],
									"presentation_rect" : [ 308.5, 24.0, 23.0, 23.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "freq_mode1",
									"id" : "obj-67",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 227.75, 24.0, 23.0, 23.0 ],
									"presentation_rect" : [ 227.75, 24.0, 23.0, 23.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "freq_mode0",
									"id" : "obj-68",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.0, 24.0, 23.0, 23.0 ],
									"presentation_rect" : [ 147.0, 24.0, 23.0, 23.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 54.0, 191.0, 271.5, 191.0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 40.5, 212.0, 156.5, 212.0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 2 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 1 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 641.666504, 421.0, 161.3125, 19.0 ],
					"presentation_rect" : [ 641.666504, 421.0, 161.3125, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 9.0,
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p mod_obj_freqs"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 10.0,
					"id" : "obj-181",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 534.5, 258.0, 109.0625, 18.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 297.180542, 137.5, 65.0625, 30.0 ],
					"style" : "",
					"text" : "GLOBAL FACTORS"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-182",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 641.666504, 258.0, 91.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.180542, 174.5, 55.0, 17.0 ],
					"style" : "",
					"text" : "freq_fact"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-215",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1017.291504, 258.0, 67.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.180542, 265.5, 66.0, 17.0 ],
					"style" : "",
					"text" : "pickup0_fact"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-217",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 827.354004, 258.0, 80.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.180542, 229.5, 55.0, 17.0 ],
					"style" : "",
					"text" : "decay_fact"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 793.979004, 264.0, 29.0, 19.0 ],
					"presentation_rect" : [ 793.979004, 264.0, 29.0, 19.0 ],
					"style" : "",
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 783.979004, 288.0, 39.0, 19.0 ],
					"presentation_rect" : [ 783.979004, 288.0, 39.0, 19.0 ],
					"style" : "",
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-196",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 746.541504, 264.0, 29.0, 19.0 ],
					"presentation_rect" : [ 746.541504, 264.0, 29.0, 19.0 ],
					"style" : "",
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 736.541504, 288.0, 39.0, 19.0 ],
					"presentation_rect" : [ 736.541504, 288.0, 39.0, 19.0 ],
					"style" : "",
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-198",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1159.604004, 298.0, 56.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 507.889038, 265.5, 55.0, 17.0 ],
					"style" : "",
					"text" : "pickup0_3"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-199",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 783.979004, 201.0, 55.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 507.889038, 174.5, 55.0, 17.0 ],
					"style" : "",
					"text" : "freq_3"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-200",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1112.166504, 298.0, 56.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 440.451538, 265.5, 55.0, 17.0 ],
					"style" : "",
					"text" : "pickup0_2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-201",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 736.541504, 201.0, 55.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 440.451538, 174.5, 55.0, 17.0 ],
					"style" : "",
					"text" : "freq_2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-202",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1064.729004, 298.0, 56.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.014038, 265.5, 55.0, 17.0 ],
					"style" : "",
					"text" : "pickup0_1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-203",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 689.104004, 201.0, 55.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.014038, 174.5, 55.0, 17.0 ],
					"style" : "",
					"text" : "freq_1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"fontface" : 3,
					"fontname" : "Helvetica",
					"fontsize" : 10.0,
					"format" : 6,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-206",
					"maxclass" : "flonum",
					"minimum" : 0.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 783.979004, 216.0, 48.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 507.889038, 189.5, 48.0, 18.0 ],
					"style" : "",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"triangle" : 0,
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triscale" : 0.9,
					"varname" : "flonum[6]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"fontface" : 3,
					"fontname" : "Helvetica",
					"fontsize" : 10.0,
					"format" : 6,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-210",
					"maxclass" : "flonum",
					"minimum" : 0.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 736.541504, 216.0, 48.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 440.451538, 189.5, 48.0, 18.0 ],
					"style" : "",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"triangle" : 0,
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triscale" : 0.9,
					"varname" : "flonum[9]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.8, 1.0, 1.0 ],
					"fontface" : 3,
					"fontname" : "Helvetica",
					"fontsize" : 10.0,
					"format" : 6,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-222",
					"maxclass" : "flonum",
					"minimum" : 0.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 689.104004, 216.0, 48.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 373.014038, 189.5, 50.0, 18.0 ],
					"style" : "",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"triangle" : 0,
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triscale" : 0.9,
					"varname" : "flonum[12]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 9.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 659.0, 161.0, 92.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 508.055542, 117.5, 92.0, 17.0 ],
					"style" : "",
					"text" : "(modal object 2)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 13.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 534.5, 156.0, 129.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 342.055542, 111.5, 178.0, 22.0 ],
					"style" : "",
					"text" : "RESONATOR CONTROLS"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 463.5, 76.0, 19.0 ],
					"presentation_rect" : [ 280.0, 463.5, 76.0, 19.0 ],
					"style" : "",
					"text" : "prepend velocity"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 189.0, 463.5, 66.0, 19.0 ],
					"presentation_rect" : [ 189.0, 463.5, 66.0, 19.0 ],
					"style" : "",
					"text" : "prepend force"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-47",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.5, 87.306419, 334.0, 39.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 10.0, 60.0, 300.0, 39.0 ],
					"style" : "",
					"text" : "The scraping model simulates a probe sliding on a surface"
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
					"text" : "scraping",
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
					"presentation_linecount" : 2,
					"presentation_rect" : [ 110.75, 283.5, 43.5, 29.0 ],
					"style" : "",
					"text" : "2.788107"
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
					"patching_rect" : [ 245.0, 390.5, 54.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 189.0, 283.5, 54.0, 19.0 ],
					"style" : "",
					"text" : "0.589704"
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.85098, 0.85098, 0.823529, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"id" : "obj-137",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 914.25, 657.032288, 149.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 289.180542, 101.0, 323.0625, 252.5 ],
					"proportion" : 0.39,
					"rounded" : 6,
					"style" : "",
					"varname" : "String[4]"
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
					"presentation_rect" : [ 10.0, 101.0, 276.0, 252.5 ],
					"proportion" : 0.39,
					"rounded" : 6,
					"style" : "",
					"varname" : "String[3]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 2 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 2 ],
					"source" : [ "obj-105", 0 ]
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
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 1 ],
					"source" : [ "obj-194", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 1 ],
					"source" : [ "obj-196", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-210", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"midpoints" : [ 698.604004, 255.5, 803.479004, 255.5 ],
					"order" : 0,
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-196", 0 ],
					"midpoints" : [ 698.604004, 255.5, 756.041504, 255.5 ],
					"order" : 1,
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"order" : 2,
					"source" : [ "obj-222", 0 ]
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
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-25", 0 ]
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
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-27", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-27", 1 ]
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
					"destination" : [ "obj-179", 3 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-32", 0 ]
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
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 78.0, 492.5, 78.0, 492.5 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 1 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 3 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"order" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 1,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"order" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"order" : 1,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 198.5, 501.5, 78.0, 501.5 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 289.5, 500.5, 78.0, 500.5 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 544.0, 521.0, 544.0, 521.0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 651.166504, 497.25, 544.0, 497.25 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 78.0, 608.5, 295.064514, 608.5 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 836.854004, 504.25, 544.0, 504.25 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 1026.791504, 517.25, 544.0, 517.25 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 1 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 2 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 3 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "sdt.impact~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sdt.scraping~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sdt.modal.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
