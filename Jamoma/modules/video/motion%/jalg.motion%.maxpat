{
	"patcher" : 	{
		"rect" : [ 599.0, 56.0, 382.0, 338.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 599.0, 56.0, 382.0, 338.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p return-data",
					"numinlets" : 2,
					"patching_rect" : [ 83.0, 151.0, 71.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"patcher" : 					{
						"rect" : [ 116.0, 172.0, 460.0, 494.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 116.0, 172.0, 460.0, 494.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Removing zero values",
									"numinlets" : 1,
									"patching_rect" : [ 227.0, 181.0, 108.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0.",
									"numinlets" : 1,
									"patching_rect" : [ 187.0, 179.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0.",
									"numinlets" : 1,
									"patching_rect" : [ 133.0, 177.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numinlets" : 1,
									"patching_rect" : [ 201.0, 243.0, 52.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 244.0, 52.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numinlets" : 1,
									"patching_rect" : [ 83.0, 244.0, 52.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0. 1. 1. 0.",
									"numinlets" : 6,
									"patching_rect" : [ 105.0, 283.0, 81.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.rgb2luma%",
									"numinlets" : 1,
									"patching_rect" : [ 118.0, 42.0, 86.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_jcom.sum",
									"numinlets" : 1,
									"patching_rect" : [ 214.0, 127.0, 80.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 50.0, 182.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 3. 3.",
									"numinlets" : 3,
									"patching_rect" : [ 201.0, 211.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 3. 3.",
									"numinlets" : 3,
									"patching_rect" : [ 140.0, 211.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 3. 3.",
									"numinlets" : 3,
									"patching_rect" : [ 83.0, 211.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return motion\/y @range/bounds 0. 1. @type msg_float @description \"The center of gravity for the y-axis of the motion in the frame in a range of 0. to 1. (zero is bottom - one is top).\"",
									"linecount" : 3,
									"numinlets" : 1,
									"patching_rect" : [ 105.0, 305.0, 302.0, 38.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0.",
									"numinlets" : 1,
									"patching_rect" : [ 133.0, 153.0, 64.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "float" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return motion\/x @range/bounds 0. 1. @type msg_float @description \"The center of gravity for the x-axis of the motion in the frame in a range of 0. to 1. (zero is left - one is right).\"",
									"linecount" : 3,
									"numinlets" : 1,
									"patching_rect" : [ 93.0, 354.0, 302.0, 38.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return motion\/quantity @type msg_float @range/bounds 0. 1. @description \"The amount of motion in the frame in a range of 0. to 1.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 83.0, 402.0, 330.0, 28.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route quantity location",
									"numinlets" : 1,
									"patching_rect" : [ 83.0, 124.0, 110.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"numinlets" : 2,
									"patching_rect" : [ 83.0, 64.0, 45.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.sum%",
									"numinlets" : 1,
									"patching_rect" : [ 83.0, 86.0, 62.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 118.0, 21.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"id" : "obj-21",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 21.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send to centroid-drawing subpatch",
									"numinlets" : 1,
									"patching_rect" : [ 209.0, 146.0, 166.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-23"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 269.0, 102.5, 269.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 203.0, 110.5, 203.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 210.5, 276.0, 114.5, 276.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 2 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 203.0, 128.5, 203.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 203.0, 167.5, 203.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 203.0, 185.5, 203.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 92.5, 115.0, 223.5, 115.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 203.0, 228.5, 203.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 2 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 203.0, 246.5, 203.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p colour",
					"numinlets" : 2,
					"patching_rect" : [ 144.0, 82.0, 46.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"patcher" : 					{
						"rect" : [ 266.0, 324.0, 198.0, 241.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 266.0, 324.0, 198.0, 241.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 69.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 50.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.rgb2luma%",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 113.0, 86.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 1",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 90.0, 47.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 87.0, 31.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 152.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p create-trails",
					"numinlets" : 2,
					"patching_rect" : [ 188.0, 175.0, 77.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-3",
					"patcher" : 					{
						"rect" : [ 335.0, 228.0, 329.0, 339.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 335.0, 228.0, 329.0, 339.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute \/trails \/slide",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 55.0, 138.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "slide_down $1",
									"numinlets" : 2,
									"patching_rect" : [ 177.0, 143.0, 73.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 114.0, 121.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "slide_up $1",
									"numinlets" : 2,
									"patching_rect" : [ 114.0, 143.0, 60.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.slide",
									"numinlets" : 1,
									"patching_rect" : [ 87.0, 177.0, 45.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix", "" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 100.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 81.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 1",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 121.0, 47.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.op @op +",
									"numinlets" : 2,
									"patching_rect" : [ 71.0, 205.0, 64.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix", "" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 4.0, 26.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"id" : "obj-10",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 26.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 261.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Creating some nice ghost-like effects.",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 157.0, 239.0, 100.0, 28.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-13"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 80.5, 241.0, 59.0, 241.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 168.0, 80.5, 168.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 96.5, 199.0, 125.5, 199.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 123.5, 139.0, 186.5, 139.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p noise-reduction",
					"numinlets" : 2,
					"patching_rect" : [ 188.0, 151.0, 88.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-4",
					"patcher" : 					{
						"rect" : [ 498.0, 44.0, 378.0, 371.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 498.0, 44.0, 378.0, 371.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 69.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 50.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 2",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 90.0, 47.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 21.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 298.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 106.0, 131.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "range $1",
									"numinlets" : 2,
									"patching_rect" : [ 106.0, 149.0, 48.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 159.0, 131.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 217.0, 131.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ring $1",
									"numinlets" : 2,
									"patching_rect" : [ 217.0, 149.0, 41.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "center $1",
									"numinlets" : 2,
									"patching_rect" : [ 159.0, 149.0, 52.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 265.0, 131.0, 47.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ripple $1",
									"numinlets" : 2,
									"patching_rect" : [ 265.0, 149.0, 49.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Threshold",
									"numinlets" : 1,
									"patching_rect" : [ 272.0, 205.0, 52.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 230.0, 203.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.op @op > @val 125",
									"numinlets" : 2,
									"patching_rect" : [ 87.0, 202.0, 105.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix", "" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.fastblur @range/bounds 3 @mode 4",
									"numinlets" : 1,
									"patching_rect" : [ 87.0, 179.0, 145.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix", "" ],
									"id" : "obj-18"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 168.5, 171.0, 96.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 171.0, 96.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 115.5, 171.0, 96.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 274.5, 171.0, 96.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p draw-lines",
					"numinlets" : 2,
					"patching_rect" : [ 22.0, 232.0, 67.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"patcher" : 					{
						"rect" : [ 47.0, 44.0, 650.0, 492.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 47.0, 44.0, 650.0, 492.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 358.0, 260.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"numinlets" : 2,
									"patching_rect" : [ 358.0, 280.0, 47.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pv draw-window-contraction",
									"numinlets" : 1,
									"patching_rect" : [ 358.0, 299.0, 142.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p window-contraction",
									"numinlets" : 2,
									"patching_rect" : [ 346.0, 106.0, 108.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"patcher" : 									{
										"rect" : [ 616.0, 155.0, 498.0, 400.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 616.0, 155.0, 498.0, 400.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p running_minmax",
													"numinlets" : 2,
													"patching_rect" : [ 133.0, 259.0, 92.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-1",
													"patcher" : 													{
														"rect" : [ 412.0, 123.0, 257.0, 336.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 412.0, 123.0, 257.0, 336.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxfadetime" : 200,
														"boxanimatetime" : 200,
														"scrollanimatetime" : 200,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 64.0, 253.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 253.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 174.0, 25.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 163.0, 27.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "dim $1 1",
																	"numinlets" : 2,
																	"patching_rect" : [ 174.0, 168.0, 50.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b f",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 63.0, 29.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "float" ],
																	"id" : "obj-6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0.",
																	"numinlets" : 2,
																	"patching_rect" : [ 36.0, 118.0, 51.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"patching_rect" : [ 174.0, 46.0, 35.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"triscale" : 0.9,
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter 0 0 200",
																	"numinlets" : 5,
																	"patching_rect" : [ 36.0, 88.0, 83.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "", "", "int" ],
																	"id" : "obj-9",
																	"save" : [ "#N", "counter", 0, 0, 200, ";", "#X", "flags", 0, 0, ";" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setcell $1 val $2",
																	"numinlets" : 2,
																	"patching_rect" : [ 36.0, 142.0, 87.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jit.3m",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 220.0, 53.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "", "", "" ],
																	"id" : "obj-11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jit.matrix 1 float32 100",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 195.0, 121.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "jit_matrix", "" ],
																	"id" : "obj-12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 36.0, 25.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"id" : "obj-13",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 53.5, 185.0, 45.5, 185.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 183.5, 189.0, 45.5, 189.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-7", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-9", 4 ],
																	"hidden" : 0,
																	"midpoints" : [ 183.5, 74.0, 109.5, 74.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontsize" : 10.0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"fontface" : 0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p running_minmax",
													"numinlets" : 2,
													"patching_rect" : [ 103.0, 236.0, 92.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-2",
													"patcher" : 													{
														"rect" : [ 412.0, 123.0, 257.0, 336.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 412.0, 123.0, 257.0, 336.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxfadetime" : 200,
														"boxanimatetime" : 200,
														"scrollanimatetime" : 200,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 64.0, 253.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 253.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 174.0, 25.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 163.0, 27.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "dim $1 1",
																	"numinlets" : 2,
																	"patching_rect" : [ 174.0, 168.0, 50.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b f",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 63.0, 29.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "float" ],
																	"id" : "obj-6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0.",
																	"numinlets" : 2,
																	"patching_rect" : [ 36.0, 118.0, 51.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"patching_rect" : [ 174.0, 46.0, 35.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"triscale" : 0.9,
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter 0 0 200",
																	"numinlets" : 5,
																	"patching_rect" : [ 36.0, 88.0, 83.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "", "", "int" ],
																	"id" : "obj-9",
																	"save" : [ "#N", "counter", 0, 0, 200, ";", "#X", "flags", 0, 0, ";" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setcell $1 val $2",
																	"numinlets" : 2,
																	"patching_rect" : [ 36.0, 142.0, 87.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jit.3m",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 220.0, 53.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "", "", "" ],
																	"id" : "obj-11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jit.matrix 1 float32 100",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 195.0, 121.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "jit_matrix", "" ],
																	"id" : "obj-12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 36.0, 25.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"id" : "obj-13",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 183.5, 189.0, 45.5, 189.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 53.5, 185.0, 45.5, 185.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-7", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-9", 4 ],
																	"hidden" : 0,
																	"midpoints" : [ 183.5, 74.0, 109.5, 74.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontsize" : 10.0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"fontface" : 0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p running_minmax",
													"numinlets" : 2,
													"patching_rect" : [ 85.0, 215.0, 92.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"patcher" : 													{
														"rect" : [ 412.0, 123.0, 257.0, 336.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 412.0, 123.0, 257.0, 336.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxfadetime" : 200,
														"boxanimatetime" : 200,
														"scrollanimatetime" : 200,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 64.0, 253.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 253.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 174.0, 25.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 163.0, 27.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "dim $1 1",
																	"numinlets" : 2,
																	"patching_rect" : [ 174.0, 168.0, 50.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b f",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 63.0, 29.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "float" ],
																	"id" : "obj-6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0.",
																	"numinlets" : 2,
																	"patching_rect" : [ 36.0, 118.0, 51.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"patching_rect" : [ 174.0, 46.0, 35.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"triscale" : 0.9,
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter 0 0 200",
																	"numinlets" : 5,
																	"patching_rect" : [ 36.0, 88.0, 83.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "", "", "int" ],
																	"id" : "obj-9",
																	"save" : [ "#N", "counter", 0, 0, 200, ";", "#X", "flags", 0, 0, ";" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setcell $1 val $2",
																	"numinlets" : 2,
																	"patching_rect" : [ 36.0, 142.0, 87.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jit.3m",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 220.0, 53.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "", "", "" ],
																	"id" : "obj-11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jit.matrix 1 float32 100",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 195.0, 121.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "jit_matrix", "" ],
																	"id" : "obj-12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 36.0, 25.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"id" : "obj-13",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 53.5, 185.0, 45.5, 185.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 183.5, 189.0, 45.5, 189.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-7", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-9", 4 ],
																	"hidden" : 0,
																	"midpoints" : [ 183.5, 74.0, 109.5, 74.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontsize" : 10.0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"fontface" : 0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p running_minmax",
													"numinlets" : 2,
													"patching_rect" : [ 67.0, 191.0, 92.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"patcher" : 													{
														"rect" : [ 412.0, 123.0, 257.0, 336.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 412.0, 123.0, 257.0, 336.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxfadetime" : 200,
														"boxanimatetime" : 200,
														"scrollanimatetime" : 200,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 64.0, 253.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 253.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 174.0, 25.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 163.0, 27.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "dim $1 1",
																	"numinlets" : 2,
																	"patching_rect" : [ 174.0, 168.0, 50.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b f",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 63.0, 29.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "float" ],
																	"id" : "obj-6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0.",
																	"numinlets" : 2,
																	"patching_rect" : [ 36.0, 118.0, 51.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"patching_rect" : [ 174.0, 46.0, 35.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"triscale" : 0.9,
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter 0 0 200",
																	"numinlets" : 5,
																	"patching_rect" : [ 36.0, 88.0, 83.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "", "", "int" ],
																	"id" : "obj-9",
																	"save" : [ "#N", "counter", 0, 0, 200, ";", "#X", "flags", 0, 0, ";" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setcell $1 val $2",
																	"numinlets" : 2,
																	"patching_rect" : [ 36.0, 142.0, 87.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jit.3m",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 220.0, 53.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "", "", "" ],
																	"id" : "obj-11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jit.matrix 1 float32 100",
																	"numinlets" : 1,
																	"patching_rect" : [ 36.0, 195.0, 121.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "jit_matrix", "" ],
																	"id" : "obj-12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 36.0, 25.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"id" : "obj-13",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 183.5, 189.0, 45.5, 189.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 53.5, 185.0, 45.5, 185.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-7", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-9", 4 ],
																	"hidden" : 0,
																	"midpoints" : [ 183.5, 74.0, 109.5, 74.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontsize" : 10.0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"fontface" : 0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 136.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "swatch",
													"numinlets" : 3,
													"compatibility" : 1,
													"patching_rect" : [ 307.0, 172.0, 83.0, 38.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute \/contraction\/window\/reset \/contraction\/window\/color",
													"numinlets" : 1,
													"patching_rect" : [ 136.0, 53.0, 333.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack s 0 0 0 0",
													"numinlets" : 1,
													"patching_rect" : [ 49.0, 162.0, 84.0, 17.0 ],
													"numoutlets" : 5,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "int", "int", "int" ],
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Find the max-contraction",
													"numinlets" : 1,
													"patching_rect" : [ 87.0, 141.0, 122.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 365.0, 245.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 331.0, 245.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 297.0, 245.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0",
													"numinlets" : 1,
													"patching_rect" : [ 297.0, 216.0, 79.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int", "int" ],
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak framerect 0 0 0 0 100 255 100",
													"numinlets" : 8,
													"patching_rect" : [ 13.0, 285.0, 388.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 49.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-15",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 13.0, 331.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-16",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 3 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-14", 2 ],
													"hidden" : 0,
													"midpoints" : [ 94.5, 270.0, 127.928574, 270.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 4 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-14", 3 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-14", 4 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-14", 5 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-14", 6 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-14", 7 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The values that draw the windowed contraction rectangle",
									"linecount" : 3,
									"numinlets" : 1,
									"patching_rect" : [ 346.0, 162.0, 124.0, 38.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pv draw-window-contraction",
									"numinlets" : 1,
									"patching_rect" : [ 346.0, 131.0, 142.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.passmatrixinfo%",
									"numinlets" : 1,
									"patching_rect" : [ 71.0, 341.0, 112.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute \/contraction\/on \/contraction\/max\/on \/contraction\/window\/on \/centroid\/on",
									"numinlets" : 1,
									"patching_rect" : [ 164.0, 227.0, 462.0, 17.0 ],
									"numoutlets" : 5,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video input",
									"numinlets" : 1,
									"patching_rect" : [ 77.0, 40.0, 68.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attribute message input",
									"numinlets" : 1,
									"patching_rect" : [ 472.0, 41.0, 118.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 454.0, 41.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p max-contraction",
									"numinlets" : 2,
									"patching_rect" : [ 213.0, 105.0, 93.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"patcher" : 									{
										"rect" : [ 714.0, 196.0, 529.0, 401.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 714.0, 196.0, 529.0, 401.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 168.0, 34.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "swatch",
													"numinlets" : 3,
													"compatibility" : 1,
													"patching_rect" : [ 324.0, 176.0, 83.0, 38.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute \/contraction\/max\/reset \/contraction\/max\/color",
													"numinlets" : 1,
													"patching_rect" : [ 168.0, 57.0, 303.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "" ],
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack s 0 0 0 0",
													"numinlets" : 1,
													"patching_rect" : [ 66.0, 220.0, 84.0, 17.0 ],
													"numoutlets" : 5,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "int", "int", "int" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Find the max-contraction",
													"numinlets" : 1,
													"patching_rect" : [ 104.0, 145.0, 122.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 382.0, 249.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 348.0, 249.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 314.0, 249.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0",
													"numinlets" : 1,
													"patching_rect" : [ 314.0, 220.0, 79.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int", "int" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak framerect 0 0 0 0 100 255 100",
													"numinlets" : 8,
													"patching_rect" : [ 30.0, 289.0, 388.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"patching_rect" : [ 168.0, 98.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 65500 0",
													"numinlets" : 1,
													"patching_rect" : [ 168.0, 118.0, 64.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int" ],
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "peak",
													"numinlets" : 2,
													"patching_rect" : [ 246.0, 262.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int", "int" ],
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "peak",
													"numinlets" : 2,
													"patching_rect" : [ 192.0, 262.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int", "int" ],
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "trough",
													"numinlets" : 2,
													"patching_rect" : [ 138.0, 262.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int", "int" ],
													"id" : "obj-15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "trough",
													"numinlets" : 2,
													"patching_rect" : [ 84.0, 262.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int", "int" ],
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 66.0, 34.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-17",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 30.0, 335.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-18",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-10", 2 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 3 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-10", 3 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 4 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-10", 4 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 5 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 6 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-10", 7 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numinlets" : 2,
									"patching_rect" : [ 21.0, 112.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 87.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 2",
									"numinlets" : 2,
									"patching_rect" : [ 21.0, 154.0, 47.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 58.0, 40.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p contraction",
									"numinlets" : 2,
									"patching_rect" : [ 103.0, 72.0, 69.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"patcher" : 									{
										"rect" : [ 182.0, 44.0, 677.0, 604.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 182.0, 44.0, 677.0, 604.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change 0.",
													"numinlets" : 1,
													"patching_rect" : [ 231.0, 422.0, 52.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change 0.",
													"numinlets" : 1,
													"patching_rect" : [ 98.0, 422.0, 52.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return contraction\/height @range/bounds 0. 1. @type msg_float @description \"Contraction_height in a range of 0. to 1.\"",
													"linecount" : 2,
													"numinlets" : 1,
													"patching_rect" : [ 113.0, 460.0, 290.0, 28.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return contraction\/width @range/bounds 0. 1. @type msg_float @description \"Contraction width in a range of 0. to 1.\"",
													"linecount" : 2,
													"numinlets" : 1,
													"patching_rect" : [ 98.0, 500.0, 288.0, 28.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "swatch",
													"numinlets" : 3,
													"compatibility" : 1,
													"patching_rect" : [ 414.0, 195.0, 128.0, 32.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute \/contraction\/slide \/contraction\/color",
													"numinlets" : 1,
													"patching_rect" : [ 324.0, 55.0, 250.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "" ],
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 324.0, 117.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.autoscale",
													"numinlets" : 1,
													"patching_rect" : [ 231.0, 389.0, 77.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "" ],
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.autoscale",
													"numinlets" : 1,
													"patching_rect" : [ 98.0, 389.0, 77.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.absdiff",
													"numinlets" : 2,
													"patching_rect" : [ 231.0, 365.0, 66.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.absdiff",
													"numinlets" : 2,
													"patching_rect" : [ 98.0, 365.0, 66.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 16.0, 464.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-12",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 324.0, 25.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 26.0, 25.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adjust-dim",
													"numinlets" : 1,
													"patching_rect" : [ 26.0, 199.0, 65.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ],
													"id" : "obj-15",
													"patcher" : 													{
														"rect" : [ 740.0, 320.0, 293.0, 327.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 740.0, 320.0, 293.0, 327.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxfadetime" : 200,
														"boxanimatetime" : 200,
														"scrollanimatetime" : 200,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.change",
																	"numinlets" : 2,
																	"patching_rect" : [ 40.0, 100.0, 65.0, 17.0 ],
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "bang", "" ],
																	"id" : "obj-1"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_dim",
																	"numinlets" : 1,
																	"patching_rect" : [ 174.0, 237.0, 53.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"id" : "obj-2"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 93.0, 237.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 40.0, 237.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-4",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 14.0, 30.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "\/ 240.",
																	"numinlets" : 2,
																	"patching_rect" : [ 93.0, 206.0, 39.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"id" : "obj-6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "\/ 320.",
																	"numinlets" : 2,
																	"patching_rect" : [ 40.0, 206.0, 39.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"id" : "obj-7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack",
																	"numinlets" : 1,
																	"patching_rect" : [ 40.0, 160.0, 39.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "int" ],
																	"id" : "obj-8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route dim",
																	"numinlets" : 1,
																	"patching_rect" : [ 40.0, 124.0, 53.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-9"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jit.matrixinfo",
																	"numinlets" : 1,
																	"patching_rect" : [ 40.0, 78.0, 71.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "To compensate if incoming video is different than the drawing window of 320x240",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"patching_rect" : [ 43.0, 31.0, 204.0, 28.0 ],
																	"numoutlets" : 0,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"id" : "obj-11"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 23.0, 67.0, 49.5, 67.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 49.5, 146.0, 183.5, 146.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontsize" : 10.0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"fontname" : "Verdana",
														"fontface" : 0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 449.0, 266.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 415.0, 266.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 381.0, 266.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0",
													"numinlets" : 1,
													"patching_rect" : [ 381.0, 245.0, 65.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int", "int" ],
													"id" : "obj-19"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak framerect 0 0 0 0 255 255 84",
													"numinlets" : 8,
													"patching_rect" : [ 75.0, 317.0, 411.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "\/ 1.",
													"numinlets" : 2,
													"patching_rect" : [ 170.0, 283.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-21"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "\/ 1.",
													"numinlets" : 2,
													"patching_rect" : [ 98.0, 283.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-22"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "\/ 1.",
													"numinlets" : 2,
													"patching_rect" : [ 316.0, 283.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-23"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "\/ 1.",
													"numinlets" : 2,
													"patching_rect" : [ 243.0, 283.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-24"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "boundmax",
													"numinlets" : 1,
													"patching_rect" : [ 200.0, 117.0, 51.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"id" : "obj-25"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "boundmin",
													"numinlets" : 1,
													"patching_rect" : [ 91.0, 119.0, 50.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"id" : "obj-26"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel -1",
													"numinlets" : 2,
													"patching_rect" : [ 235.0, 97.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-27"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel -1",
													"numinlets" : 2,
													"patching_rect" : [ 199.0, 97.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-28"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel -1",
													"numinlets" : 2,
													"patching_rect" : [ 127.0, 97.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-29"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel -1",
													"numinlets" : 2,
													"patching_rect" : [ 91.0, 97.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-30"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"numinlets" : 1,
													"patching_rect" : [ 199.0, 75.0, 46.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int" ],
													"id" : "obj-31"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "slide 10. 10.",
													"numinlets" : 3,
													"patching_rect" : [ 316.0, 149.0, 67.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-32"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "slide 10. 10.",
													"numinlets" : 3,
													"patching_rect" : [ 243.0, 149.0, 67.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-33"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "slide 10. 10.",
													"numinlets" : 3,
													"patching_rect" : [ 170.0, 149.0, 67.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-34"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "slide 10. 10.",
													"numinlets" : 3,
													"patching_rect" : [ 98.0, 149.0, 67.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-35"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"numinlets" : 1,
													"patching_rect" : [ 91.0, 75.0, 46.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int" ],
													"id" : "obj-36"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.findbounds @min 1 @max 1",
													"numinlets" : 1,
													"patching_rect" : [ 91.0, 55.0, 226.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "" ],
													"id" : "obj-37"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "It might be better to use the frame size to normalize the values.",
													"numinlets" : 1,
													"patching_rect" : [ 323.0, 392.0, 298.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"id" : "obj-38"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 35.0, 48.0, 100.5, 48.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 240.5, 449.0, 122.5, 449.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 138.0, 131.5, 138.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 1 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-35", 2 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 138.0, 155.5, 138.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-20", 2 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-34", 1 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 138.0, 203.5, 138.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-34", 2 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 138.0, 227.5, 138.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-20", 3 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 138.0, 276.5, 138.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-33", 2 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 138.0, 300.5, 138.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-20", 4 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 138.0, 349.5, 138.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-20", 5 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-32", 2 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 138.0, 373.5, 138.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-20", 6 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-20", 7 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 100.0, 259.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"numinlets" : 2,
									"patching_rect" : [ 100.0, 279.0, 47.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 513.0, 267.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"numinlets" : 2,
									"patching_rect" : [ 513.0, 287.0, 47.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pv draw-centroid",
									"numinlets" : 1,
									"patching_rect" : [ 513.0, 306.0, 88.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 208.0, 259.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"numinlets" : 2,
									"patching_rect" : [ 208.0, 279.0, 47.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pv draw-max-contraction",
									"numinlets" : 1,
									"patching_rect" : [ 208.0, 298.0, 125.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 58.0, 425.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-26",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.lcd 4 char 320 240",
									"numinlets" : 1,
									"patching_rect" : [ 58.0, 379.0, 110.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix", "" ],
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pv draw-contraction",
									"numinlets" : 1,
									"patching_rect" : [ 100.0, 298.0, 102.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b l",
									"numinlets" : 1,
									"patching_rect" : [ 58.0, 199.0, 40.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p centroid-stuff",
									"numinlets" : 1,
									"patching_rect" : [ 537.0, 104.0, 81.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-30",
									"patcher" : 									{
										"rect" : [ 430.0, 85.0, 761.0, 638.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 430.0, 85.0, 761.0, 638.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0.",
													"numinlets" : 1,
													"patching_rect" : [ 214.0, 139.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0.",
													"numinlets" : 1,
													"patching_rect" : [ 160.0, 139.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numinlets" : 1,
													"patching_rect" : [ 330.0, 109.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"numinlets" : 2,
													"patching_rect" : [ 330.0, 129.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "slide 10. 10.",
													"numinlets" : 3,
													"patching_rect" : [ 245.0, 169.0, 67.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "slide 10. 10.",
													"numinlets" : 3,
													"patching_rect" : [ 160.0, 169.0, 67.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "slide 10. 10.",
													"numinlets" : 3,
													"patching_rect" : [ 330.0, 150.0, 67.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0. 0.",
													"numinlets" : 1,
													"patching_rect" : [ 160.0, 114.0, 64.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ],
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route location quantity",
													"numinlets" : 1,
													"patching_rect" : [ 160.0, 76.0, 112.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_jcom.sum",
													"numinlets" : 0,
													"patching_rect" : [ 160.0, 45.0, 80.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "correct for video size",
													"numinlets" : 1,
													"patching_rect" : [ 75.0, 213.0, 109.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"numinlets" : 2,
													"patching_rect" : [ 245.0, 238.0, 29.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0. 0.",
													"numinlets" : 1,
													"patching_rect" : [ 11.0, 183.0, 64.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ],
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"numinlets" : 2,
													"patching_rect" : [ 200.0, 238.0, 29.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_dim",
													"numinlets" : 0,
													"patching_rect" : [ 11.0, 149.0, 53.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute \/centroid\/size\/on \/centroid\/size \/centroid\/color",
													"numinlets" : 1,
													"patching_rect" : [ 416.0, 72.0, 305.0, 17.0 ],
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "swatch",
													"numinlets" : 3,
													"compatibility" : 1,
													"patching_rect" : [ 540.0, 260.0, 144.0, 43.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 416.0, 45.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-18",
													"comment" : "Colour RGB list"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pv draw-centroid",
													"numinlets" : 1,
													"patching_rect" : [ 155.0, 553.0, 88.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-19"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Find centre of circle by subtracting half the size from the upper left coordinates.",
													"linecount" : 3,
													"numinlets" : 1,
													"patching_rect" : [ 43.0, 359.0, 151.0, 38.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "-",
													"numinlets" : 2,
													"patching_rect" : [ 245.0, 372.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-21"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "-",
													"numinlets" : 2,
													"patching_rect" : [ 200.0, 372.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-22"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "\/ 2",
													"numinlets" : 2,
													"patching_rect" : [ 330.0, 252.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-23"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 5",
													"numinlets" : 2,
													"patching_rect" : [ 330.0, 227.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-24"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numinlets" : 1,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"patching_rect" : [ 385.0, 180.0, 35.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-25",
													"minimum" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 20.",
													"numinlets" : 2,
													"patching_rect" : [ 330.0, 205.0, 34.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-26"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"numinlets" : 1,
													"patching_rect" : [ 514.0, 313.0, 27.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-27"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Position (x, y)",
													"numinlets" : 1,
													"patching_rect" : [ 82.0, 116.0, 72.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"id" : "obj-28"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Size",
													"numinlets" : 1,
													"patching_rect" : [ 423.0, 182.0, 26.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"id" : "obj-29"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"numinlets" : 1,
													"patching_rect" : [ 293.0, 252.0, 27.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-30"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 10",
													"numinlets" : 2,
													"patching_rect" : [ 335.0, 479.0, 30.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-31"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 10",
													"numinlets" : 2,
													"patching_rect" : [ 290.0, 479.0, 30.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-32"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak paintoval 0 0 0 0 255 255 255",
													"numinlets" : 8,
													"patching_rect" : [ 155.0, 520.0, 325.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-33"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 185.5, 162.0, 169.5, 162.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [ 20.5, 235.0, 219.5, 235.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-33", 2 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [ 65.5, 230.0, 264.5, 230.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-33", 3 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [ 339.5, 248.0, 302.5, 248.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 425.5, 97.0, 339.0, 97.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-33", 4 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0,
													"midpoints" : [ 394.5, 200.0, 354.5, 200.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-33", 5 ],
													"hidden" : 0,
													"midpoints" : [ 531.5, 507.0, 383.071442, 507.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [ 520.833313, 170.0, 394.5, 170.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 2 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The values that draw the maximum contraction rectangle",
									"linecount" : 3,
									"numinlets" : 1,
									"patching_rect" : [ 213.0, 161.0, 124.0, 38.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pv draw-max-contraction",
									"numinlets" : 1,
									"patching_rect" : [ 213.0, 130.0, 125.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The values that draw the local contraction rectangle",
									"linecount" : 3,
									"numinlets" : 1,
									"patching_rect" : [ 103.0, 133.0, 105.0, 38.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pv draw-contraction",
									"numinlets" : 1,
									"patching_rect" : [ 103.0, 105.0, 102.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Here I used to use the motion image",
									"numinlets" : 1,
									"patching_rect" : [ 230.0, 40.0, 175.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-35"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 109.5, 331.0, 67.5, 331.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 522.5, 331.0, 67.5, 331.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 217.5, 331.0, 67.5, 331.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 367.5, 330.0, 67.5, 330.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 411.0, 67.0, 411.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 173.5, 249.0, 109.0, 249.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 67.0, 65.0, 112.5, 65.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [ 463.0, 66.0, 162.5, 66.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 463.0, 76.0, 502.0, 76.0, 502.0, 219.0, 173.5, 219.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 284.25, 249.0, 217.0, 249.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 112.5, 95.0, 222.5, 95.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 112.5, 92.0, 355.5, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 3 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 463.0, 76.0, 546.5, 76.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"numinlets" : 1,
					"patching_rect" : [ 39.0, 258.0, 77.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p edge-detection",
					"numinlets" : 3,
					"patching_rect" : [ 22.0, 206.0, 84.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"patcher" : 					{
						"rect" : [ 248.0, 46.0, 586.0, 565.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 248.0, 46.0, 586.0, 565.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute \/edge",
									"numinlets" : 1,
									"patching_rect" : [ 372.0, 60.0, 103.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Parameters",
									"numinlets" : 1,
									"patching_rect" : [ 390.0, 27.0, 63.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video to use for edge detection",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 247.0, 27.0, 80.0, 28.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video to overlay",
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 31.0, 84.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.checkplanes%",
									"numinlets" : 1,
									"patching_rect" : [ 251.0, 219.0, 97.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 63.0, 28.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"numinlets" : 2,
									"patching_rect" : [ 104.0, 251.0, 16.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numinlets" : 2,
									"patching_rect" : [ 87.0, 251.0, 16.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 177.0, 495.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 1",
									"numinlets" : 2,
									"patching_rect" : [ 26.0, 379.0, 47.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 372.0, 26.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 178.0, 184.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"numinlets" : 1,
									"patching_rect" : [ 167.0, 154.0, 53.0, 17.0 ],
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-13",
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", 0, 0, ";", "#T", 1, 2, ";", "#T", 2, 2, ";", "#T", 3, 1, ";", "#T", 4, 3, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numinlets" : 2,
									"patching_rect" : [ 387.0, 190.0, 16.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"numinlets" : 2,
									"patching_rect" : [ 372.0, 190.0, 16.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 3 0",
									"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
									"numinlets" : 2,
									"patching_rect" : [ 167.0, 219.0, 73.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "mode $1",
									"numinlets" : 2,
									"patching_rect" : [ 372.0, 215.0, 45.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 2",
									"numinlets" : 1,
									"patching_rect" : [ 372.0, 168.0, 41.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.sobel",
									"numinlets" : 1,
									"patching_rect" : [ 231.0, 302.0, 45.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix", "" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "thresh $1",
									"numinlets" : 2,
									"patching_rect" : [ 455.0, 182.0, 54.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.robcross",
									"numinlets" : 1,
									"patching_rect" : [ 167.0, 302.0, 62.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix", "" ],
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute \/algorithm \/threshold",
									"numinlets" : 1,
									"patching_rect" : [ 372.0, 92.0, 177.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To avoid \"hanging\" edge.",
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 402.0, 119.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"numinlets" : 2,
									"patching_rect" : [ 115.0, 219.0, 31.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "" ],
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 359.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.matrix 4 char 1 1",
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 379.0, 104.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix", "" ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 230.0, 28.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.op @op +",
									"numinlets" : 2,
									"patching_rect" : [ 177.0, 461.0, 64.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "jit_matrix", "" ],
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "cv.jit.binedge also used to be here...",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 388.0, 323.0, 94.0, 28.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-29"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 176.5, 179.0, 124.5, 179.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 464.5, 257.0, 176.5, 257.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 63.5, 451.0, 186.5, 451.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 35.5, 486.0, 186.0, 486.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 464.5, 257.0, 240.5, 257.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 396.5, 210.0, 381.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.motion%",
					"numinlets" : 1,
					"patching_rect" : [ 144.0, 104.0, 74.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.op @op > @val 0.1",
					"numinlets" : 2,
					"patching_rect" : [ 144.0, 125.0, 105.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix", "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 258.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"comment" : "Zoom-rotation output"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute \/genframe \/data_smoothing \/color \/threshold \/noise",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 55.0, 319.0, 17.0 ],
					"numoutlets" : 6,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "", "", "", "" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "INSTRUCTIONS",
					"numinlets" : 1,
					"patching_rect" : [ 39.0, 31.0, 77.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 22.0, 31.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"numinlets" : 1,
					"patching_rect" : [ 199.0, 31.0, 75.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 180.0, 31.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"comment" : "Video in"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 197.5, 196.0, 31.5, 196.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 5 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [ 331.5, 227.0, 79.5, 227.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 5 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 0,
					"midpoints" : [ 331.5, 201.0, 96.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 153.5, 145.0, 197.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 5 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 331.5, 171.0, 255.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 4 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0
				}

			}
 ]
	}

}
