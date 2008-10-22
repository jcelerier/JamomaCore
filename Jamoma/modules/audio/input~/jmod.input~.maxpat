{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 92.0, 86.0, 1291.0, 780.0 ],
		"bglocked" : 0,
		"defrect" : [ 92.0, 86.0, 1291.0, 780.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter",
					"text" : "jcom.message audio/panic @description \"Stop audio immediately.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 825.0, 545.0, 348.0, 19.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_audio",
					"outlettype" : [ "" ],
					"patching_rect" : [ 895.0, 485.0, 90.0, 18.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio[1]",
					"text" : "jcom.parameter audio/active @type msg_toggle @description \"Toggle audio on and off.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 825.0, 510.0, 456.0, 19.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button[1]",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 237.0, 1.0, 60.0, 17.0 ],
					"text" : "Audio Off",
					"patching_rect" : [ 825.0, 485.0, 60.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"bgoncolor" : [ 0.54902, 0.54902, 0.54902, 1.0 ],
					"texton" : "Audio On",
					"numoutlets" : 3,
					"mode" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 241.0, 69.0, 18.0, 18.0 ],
					"patching_rect" : [ 830.0, 320.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 1135.0, 90.0, 129.0, 19.0 ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Right",
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 5.0, 45.0, 30.0, 19.0 ],
					"patching_rect" : [ 775.0, 434.0, 30.0, 19.0 ],
					"minimum" : 1,
					"presentation" : 1,
					"id" : "obj-75",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"maximum" : 512,
					"triscale" : 0.9,
					"triangle" : 0,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Left",
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 5.0, 25.0, 30.0, 19.0 ],
					"patching_rect" : [ 775.0, 405.0, 30.0, 19.0 ],
					"minimum" : 1,
					"presentation" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"maximum" : 512,
					"triscale" : 0.9,
					"triangle" : 0,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "Balance",
					"annotation" : "Balance",
					"outlettype" : [ "float" ],
					"presentation_rect" : [ 45.0, 75.0, 20.0, 20.0 ],
					"size" : 202.0,
					"bgcolor" : [ 0.337255, 0.356863, 0.690196, 0.0 ],
					"patching_rect" : [ 335.0, 296.0, 36.0, 36.0 ],
					"presentation" : 1,
					"id" : "obj-45",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 70.0, 75.0, 150.0, 20.0 ],
					"patching_rect" : [ 335.0, 140.0, 150.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 237.0, 48.0, 55.0, 19.0 ],
					"text" : "Play",
					"patching_rect" : [ 828.0, 239.0, 50.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-84",
					"fontname" : "Verdana",
					"rounded" : 15.0,
					"numinlets" : 1,
					"bgoncolor" : [ 0.0, 0.54902, 0.0, 1.0 ],
					"texton" : "Play",
					"numoutlets" : 3,
					"mode" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 237.0, 27.0, 55.0, 19.0 ],
					"text" : "Open",
					"patching_rect" : [ 830.0, 90.0, 50.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-83",
					"fontname" : "Verdana",
					"rounded" : 15.0,
					"numinlets" : 1,
					"texton" : "DSP",
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "input_menu",
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 45.0, 110.0, 90.0, 18.0 ],
					"items" : [ "none", ",", "live", ",", "soundfile", ",", "1KHz", ",", "pink" ],
					"types" : [  ],
					"patching_rect" : [ 828.0, 59.0, 100.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-62",
					"fontname" : "Verdana",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "DSP_Status",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 200.0, 1.0, 35.0, 17.0 ],
					"text" : "DSP",
					"patching_rect" : [ 330.0, 502.0, 50.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-82",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"texton" : "DSP",
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_2",
					"text" : "jcom.parameter ch.2 @type msg_int @description \" Set logical ointput for right channel.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 815.0, 435.0, 460.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_1",
					"text" : "jcom.parameter ch.1 @type msg_int @description \" Set logical intput for left channel.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 815.0, 405.0, 452.0, 19.0 ],
					"id" : "obj-73",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.0, 276.0, 70.0, 19.0 ],
					"id" : "obj-59",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 335.0, 236.0, 56.0, 19.0 ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale -1. 1. 0. 201.",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 335.0, 256.0, 107.0, 19.0 ],
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0. 201. -1. 1.",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 335.0, 179.0, 107.0, 19.0 ],
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter balance @range/bounds -1 1 @range/clipmode both @description \"Balance of the stereo signal\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 335.0, 200.0, 336.0, 31.0 ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"A generic module for audio input\"",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 9.0, 204.0, 304.0, 19.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 2",
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.0, 431.0, 121.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.0, 386.0, 121.0, 19.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.0, 158.0, 196.0, 17.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain",
					"text" : "jcom.parameter audio/gain @type msg_float @range/bounds 0 157 @range/clipmode both @ramp/drive scheduler @dataspace gain @dataspace/unit/active midi @dataspace/unit/native midi @description \"master gain\"",
					"linecount" : 4,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 335.0, 80.0, 323.0, 55.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 45.0, 410.0, 73.0, 19.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 45.0, 295.0, 56.0, 19.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"patching_rect" : [ 67.0, 177.0, 137.0, 17.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 347.0, 49.0, 19.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 45.0, 321.0, 87.0, 19.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dsp_status @type msg_none @description \"Open DSP Status window.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 330.0, 521.0, 446.0, 19.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_filename",
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 546.0, 104.0, 19.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_done",
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.0, 189.0, 86.0, 19.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP settings",
					"patching_rect" : [ 330.0, 481.0, 185.0, 19.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.0, 177.0, 38.0, 17.0 ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gain control and metering",
					"patching_rect" : [ 330.0, 45.0, 185.0, 19.0 ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop",
					"patching_rect" : [ 765.0, 302.0, 37.0, 19.0 ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play",
					"patching_rect" : [ 765.0, 217.0, 35.0, 19.0 ],
					"id" : "obj-52",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open",
					"patching_rect" : [ 765.0, 93.0, 39.0, 19.0 ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "source",
					"patching_rect" : [ 765.0, 24.0, 51.0, 19.0 ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Sound_sources",
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 45.0, 376.0, 107.0, 19.0 ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 256.0, 131.0, 940.0, 694.0 ],
						"bglocked" : 0,
						"defrect" : [ 256.0, 131.0, 940.0, 694.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p audio_on_off",
									"patching_rect" : [ 260.0, 65.0, 86.0, 19.0 ],
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 69.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 160.0, 35.0, 25.0, 25.0 ],
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"outlettype" : [ "" ],
													"patching_rect" : [ 162.0, 256.0, 30.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 224.0, 284.0, 22.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 353.0, 144.0, 32.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 l",
													"outlettype" : [ "int", "" ],
													"patching_rect" : [ 162.0, 341.0, 29.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 142.0, 367.0, 50.0, 18.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i 0",
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 162.0, 139.0, 29.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /audio/active /audio/panic",
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 160.0, 75.0, 215.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 15",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 224.0, 224.0, 39.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_audio",
													"patching_rect" : [ 142.0, 424.0, 89.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 142.0, 400.0, 53.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"outlettype" : [ "" ],
													"patching_rect" : [ 224.0, 258.0, 30.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s jcom.audio.off",
													"patching_rect" : [ 266.0, 224.0, 88.0, 18.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus switch",
													"outlettype" : [ "", "int" ],
													"patching_rect" : [ 162.0, 308.0, 86.0, 18.0 ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 stop",
													"outlettype" : [ "int", "stop" ],
													"patching_rect" : [ 162.0, 196.0, 47.0, 18.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 162.0, 175.0, 134.0, 18.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "This gate prevents audio from being turned on or of twice if audio state is changed using the Audio button or an /audio message.",
													"linecount" : 3,
													"patching_rect" : [ 200.0, 345.0, 235.0, 42.0 ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 9.873845
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 181.5, 165.0, 151.5, 165.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 375.5, 249.0, 233.5, 249.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 540.0, 225.0, 33.0, 17.0 ],
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 455.0, 225.0, 33.0, 17.0 ],
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 225.0, 33.0, 17.0 ],
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 225.0, 33.0, 17.0 ],
									"id" : "obj-37",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 135.0, 89.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "input_menu",
									"outlettype" : [ "int", "", "" ],
									"items" : [ "none", ",", "live", ",", "soundfile", ",", "1KHz", ",", "pink" ],
									"types" : [  ],
									"patching_rect" : [ 95.0, 160.0, 100.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 4",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 540.0, 200.0, 30.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 3",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 455.0, 200.0, 30.0, 19.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 2",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 360.0, 200.0, 30.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 1",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 270.0, 200.0, 30.0, 19.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 250.0, 43.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 250.0, 45.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"outlettype" : [ "" ],
									"patching_rect" : [ 455.0, 250.0, 43.0, 19.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"outlettype" : [ "" ],
									"patching_rect" : [ 540.0, 250.0, 43.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /source",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 95.0, 65.0, 123.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p smooth_in_out",
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 20.0, 557.0, 168.0, 19.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 185.0, 98.0, 617.0, 390.0 ],
										"bglocked" : 0,
										"defrect" : [ 185.0, 98.0, 617.0, 390.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 10",
													"outlettype" : [ "" ],
													"patching_rect" : [ 475.0, 163.0, 33.0, 17.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 410.0, 140.0, 32.0, 19.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 319.0, 270.0, 27.0, 19.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 284.0, 270.0, 27.0, 19.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0, 1 10",
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.0, 163.0, 45.0, 17.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line~",
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 410.0, 189.0, 34.0, 19.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"outlettype" : [ "int", "float", "int", "int" ],
													"patching_rect" : [ 410.0, 112.0, 59.0, 19.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "NOTE: This fade is not displayed in the GUI.",
													"patching_rect" : [ 40.0, 350.0, 231.0, 19.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade in when audio start",
													"patching_rect" : [ 40.0, 35.0, 162.0, 19.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 319.0, 91.0, 22.0, 22.0 ],
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 284.0, 91.0, 22.0, 22.0 ],
													"id" : "obj-11",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 319.0, 305.0, 22.0, 22.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 284.0, 305.0, 22.0, 22.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.audio.off",
													"outlettype" : [ "" ],
													"patching_rect" : [ 475.0, 112.0, 88.0, 19.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade out when audio stop",
													"patching_rect" : [ 40.0, 15.0, 168.0, 19.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "line~ is able to handle this. gain~ and matrix~ is not.",
													"patching_rect" : [ 40.0, 55.0, 281.0, 19.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 22.0, 28.0, 28.0 ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "By using opendialog it's made sure that any opendialog message that's reaching sfplay~ also has a filename argument.",
									"linecount" : 2,
									"patching_rect" : [ 400.0, 657.0, 329.0, 31.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "That way we know for sure that any \"open\" message reaching sfplay~ for sure implies that a new file is to be opened imideately, and hence the Play button can be turned of instantly.",
									"linecount" : 3,
									"patching_rect" : [ 400.0, 685.0, 391.0, 43.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The \"Play\" GUI button should be turned of when a new file is opened.",
									"patching_rect" : [ 400.0, 638.0, 359.0, 19.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Time marker",
									"patching_rect" : [ 435.0, 600.0, 89.0, 19.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "signal R",
									"patching_rect" : [ 200.0, 600.0, 56.0, 19.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "signal L",
									"patching_rect" : [ 50.0, 600.0, 58.0, 19.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 20.0, 600.0, 28.0, 28.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "signal L"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 171.0, 600.0, 28.0, 28.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "signal R"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 404.0, 600.0, 28.0, 28.0 ],
									"id" : "obj-22",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "Time marker"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p gain",
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 20.0, 520.0, 168.0, 19.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 45.0, 44.0, 529.0, 535.0 ],
										"bglocked" : 0,
										"defrect" : [ 45.0, 44.0, 529.0, 535.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "flonum",
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 160.0, 145.0, 50.0, 19.0 ],
													"id" : "obj-23",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 70.0, 140.0, 50.0, 19.0 ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sin",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 165.0, 200.0, 25.0, 19.0 ],
													"id" : "obj-34",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cos",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 130.0, 200.0, 27.0, 19.0 ],
													"id" : "obj-33",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale -1. 1. 0. 1.570796",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 155.0, 170.0, 132.0, 19.0 ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 6,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 61.0, 24.0, 24.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route /audio/gain /balance",
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 50.0, 106.0, 171.0, 19.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 127. 0. 7.94321 1.071519",
													"linecount" : 3,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.0, 170.0, 93.0, 43.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 6,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 125.0, 306.0, 44.0, 19.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.0, 306.0, 44.0, 19.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 20.0, 253.0, 22.0, 19.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "MIDI to amplitude",
													"linecount" : 2,
													"patching_rect" : [ 290.0, 170.0, 58.0, 31.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal R",
													"patching_rect" : [ 425.0, 440.0, 54.0, 19.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal L",
													"patching_rect" : [ 315.0, 440.0, 56.0, 19.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal R",
													"patching_rect" : [ 430.0, 40.0, 54.0, 19.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 397.0, 438.0, 24.0, 24.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : "signal R"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 365.0, 438.0, 24.0, 24.0 ],
													"id" : "obj-14",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : "signal L"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 430.0, 61.0, 24.0, 24.0 ],
													"id" : "obj-15",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : "signal R"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 365.0, 61.0, 24.0, 24.0 ],
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : "signal L"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "matrix~ 2 2 0.",
													"outlettype" : [ "signal", "signal", "list" ],
													"patching_rect" : [ 365.0, 388.0, 83.0, 19.0 ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 3,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 0 $1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 329.0, 41.0, 17.0 ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1 1 $1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 125.0, 329.0, 41.0, 17.0 ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal L",
													"patching_rect" : [ 365.0, 40.0, 56.0, 19.0 ],
													"id" : "obj-20",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 134.5, 354.0, 374.5, 354.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 354.0, 374.5, 354.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "----signal outputs----",
									"patching_rect" : [ 75.0, 640.0, 116.0, 19.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 4",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 170.0, 475.0, 70.0, 19.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 5,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 4",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 95.0, 475.0, 70.0, 19.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 5,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p sfplay~",
									"outlettype" : [ "signal", "signal", "" ],
									"patching_rect" : [ 360.0, 315.0, 56.0, 19.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 78.0, 229.0, 1045.0, 391.0 ],
										"bglocked" : 0,
										"defrect" : [ 78.0, 229.0, 1045.0, 391.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"patching_rect" : [ 460.0, 300.0, 31.0, 19.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 2",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 460.0, 125.0, 35.0, 19.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 460.0, 25.0, 24.0, 24.0 ],
													"id" : "obj-3",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return soundfile/report @description \"Report when sound file reach end point and loop to start point.\"",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 460.0, 325.0, 552.0, 19.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p h:m:s:ms",
													"outlettype" : [ "", "loop_flag" ],
													"patching_rect" : [ 266.0, 239.0, 68.0, 19.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 592.0, 57.0, 701.0, 519.0 ],
														"bglocked" : 0,
														"defrect" : [ 592.0, 57.0, 701.0, 519.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 5.0, 5.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t loop_flag",
																	"outlettype" : [ "loop_flag" ],
																	"patching_rect" : [ 370.0, 255.0, 62.0, 19.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 370.0, 450.0, 26.0, 26.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "edge~",
																	"outlettype" : [ "bang", "bang" ],
																	"patching_rect" : [ 370.0, 185.0, 41.0, 19.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "change~",
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 370.0, 160.0, 53.0, 19.0 ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "change~",
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 370.0, 135.0, 53.0, 19.0 ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 9",
																	"outlettype" : [ "int", "int" ],
																	"patching_rect" : [ 30.0, 320.0, 49.0, 19.0 ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 3,
																	"numoutlets" : 2,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf O%i",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 30.0, 345.0, 66.0, 19.0 ],
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 30.0, 370.0, 54.0, 19.0 ],
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf O%i",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 135.0, 345.0, 66.0, 19.0 ],
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 135.0, 370.0, 54.0, 19.0 ],
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 9",
																	"outlettype" : [ "int", "int" ],
																	"patching_rect" : [ 135.0, 320.0, 49.0, 19.0 ],
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"numinlets" : 3,
																	"numoutlets" : 2,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf O%i",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 245.0, 345.0, 66.0, 19.0 ],
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 245.0, 370.0, 54.0, 19.0 ],
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 9",
																	"outlettype" : [ "int", "int" ],
																	"patching_rect" : [ 245.0, 320.0, 49.0, 19.0 ],
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"numinlets" : 3,
																	"numoutlets" : 2,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 30.0, 450.0, 26.0, 26.0 ],
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf set %s:%s:%s",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 30.0, 405.0, 123.0, 19.0 ],
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr $f1-$i2",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 165.0, 165.0, 71.0, 19.0 ],
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 60.",
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 245.0, 195.0, 35.0, 19.0 ],
																	"id" : "obj-19",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr $f1-$i2",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 45.0, 115.0, 71.0, 19.0 ],
																	"id" : "obj-20",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "s",
																	"patching_rect" : [ 260.0, 260.0, 39.0, 49.0 ],
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 34.668163
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 60.",
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 135.0, 140.0, 35.0, 19.0 ],
																	"id" : "obj-22",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "m",
																	"patching_rect" : [ 146.0, 260.0, 42.0, 49.0 ],
																	"id" : "obj-23",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 34.668163
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "/ 3600000.",
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 30.0, 90.0, 65.0, 19.0 ],
																	"id" : "obj-24",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "snapshot~ 1000",
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 30.0, 65.0, 91.0, 19.0 ],
																	"id" : "obj-25",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 30.0, 15.0, 24.0, 24.0 ],
																	"id" : "obj-26",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "h",
																	"patching_rect" : [ 38.0, 260.0, 39.0, 49.0 ],
																	"id" : "obj-27",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 34.668163
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.5, 51.0, 379.5, 51.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 1 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 174.5, 183.0, 254.5, 183.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.5, 158.0, 226.5, 158.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.5, 158.0, 174.5, 158.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 54.5, 135.0, 144.5, 135.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.5, 110.0, 106.5, 110.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.5, 111.0, 54.5, 111.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-16", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-16", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "loop $1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 284.0, 89.0, 46.0, 17.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /soundfile/open /soundfile/play /soundfile/direct /soundfile/loop",
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 50.0, 50.0, 407.0, 19.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 5,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "modout 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 140.0, 139.0, 57.0, 17.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 140.0, 119.0, 52.0, 19.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p open_stuff",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 78.0, 72.0, 19.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 191.0, 93.0, 432.0, 397.0 ],
														"bglocked" : 0,
														"defrect" : [ 191.0, 93.0, 432.0, 397.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 5.0, 5.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r jcom.init",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 270.0, 235.0, 60.0, 19.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t set",
																	"outlettype" : [ "set" ],
																	"patching_rect" : [ 270.0, 285.0, 33.0, 19.0 ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_xxx_filename",
																	"patching_rect" : [ 165.0, 325.0, 105.0, 19.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend set",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 165.0, 285.0, 70.0, 19.0 ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "strippath",
																	"outlettype" : [ "", "int" ],
																	"patching_rect" : [ 165.0, 245.0, 53.0, 19.0 ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 60.0, 320.0, 22.0, 22.0 ],
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 60.0, 145.0, 22.0, 22.0 ],
																	"id" : "obj-7",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend open",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 60.0, 255.0, 78.0, 19.0 ],
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "opendialog sound",
																	"outlettype" : [ "", "bang" ],
																	"patching_rect" : [ 60.0, 210.0, 97.0, 19.0 ],
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel bang",
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 60.0, 175.0, 117.0, 19.0 ],
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "By using opendialog it's made sure that any opendialog message that's reaching sfplay~ also has a filename argument.",
																	"linecount" : 2,
																	"patching_rect" : [ 35.0, 60.0, 329.0, 31.0 ],
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "That way we know for certain that any \"open\" message reaching sfplay~ implies that a new file is to be opened imideately. Hence the Play button can be turned of instantly.",
																	"linecount" : 3,
																	"patching_rect" : [ 35.0, 90.0, 339.0, 43.0 ],
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 10.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "The \"Play\" GUI button should be turned of when a new file is opened.",
																	"patching_rect" : [ 35.0, 40.0, 359.0, 19.0 ],
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 10.0
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 167.5, 195.0, 159.0, 195.0, 159.0, 240.0, 69.5, 240.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 333.0, 112.0, 35.0, 19.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_done",
													"patching_rect" : [ 333.0, 203.0, 87.0, 19.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 333.0, 174.0, 22.0, 19.0 ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"patching_rect" : [ 333.0, 147.0, 31.0, 19.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sfplay~ 2 403200 1",
													"outlettype" : [ "signal", "signal", "signal", "bang" ],
													"patching_rect" : [ 206.0, 117.0, 108.0, 19.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 4,
													"fontsize" : 10.0,
													"save" : [ "#N", "sfplay~", "eple", 2, 403200, 1, "", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 20.0, 24.0, 24.0 ],
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 265.0, 290.0, 24.0, 24.0 ],
													"id" : "obj-17",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 235.0, 290.0, 24.0, 24.0 ],
													"id" : "obj-18",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 205.0, 290.0, 24.0, 24.0 ],
													"id" : "obj-19",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.5, 106.0, 215.5, 106.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 350.5, 77.0, 342.5, 77.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 3 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 171.0, 342.5, 171.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 149.5, 160.0, 202.0, 160.0, 202.0, 110.0, 215.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 106.0, 215.5, 106.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p audio_in",
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 270.0, 313.0, 61.0, 19.0 ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 59.0, 305.0, 403.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 59.0, 305.0, 403.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t open",
													"outlettype" : [ "open" ],
													"patching_rect" : [ 175.0, 115.0, 41.0, 19.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 2 $1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 115.0, 115.0, 50.0, 17.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 1 $1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 115.0, 50.0, 17.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /ch.1 /ch.2 /dsp_status",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 50.0, 75.0, 207.0, 19.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adc~",
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 50.0, 265.0, 34.0, 19.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 30.0, 24.0, 24.0 ],
													"id" : "obj-6",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 85.0, 320.0, 24.0, 24.0 ],
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 50.0, 320.0, 24.0, 24.0 ],
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p 1kHz",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 455.0, 313.0, 43.0, 19.0 ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 48.0, 35.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "We don't need pass~ as this signal won't be selected~ anyway when it's muted.",
													"linecount" : 2,
													"patching_rect" : [ 147.0, 87.0, 216.0, 30.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~ 0.125",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 48.0, 105.0, 55.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cycle~ 1000",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 48.0, 78.0, 70.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 48.0, 127.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p pink~",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 540.0, 313.0, 48.0, 19.0 ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 59.0, 345.0, 201.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 59.0, 345.0, 201.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 25.0, 23.0, 23.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pink~",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 75.0, 38.0, 19.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 50.0, 140.0, 23.0, 23.0 ],
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "We don't need pass~ as this signal won't be selected~ anyway when it's muted.",
													"linecount" : 2,
													"patching_rect" : [ 80.0, 135.0, 219.0, 31.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Avoid using more CPU than required",
									"linecount" : 2,
									"patching_rect" : [ 597.0, 219.0, 104.0, 31.0 ],
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 60.0, 104.5, 60.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 208.5, 294.0, 279.5, 294.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 208.5, 291.0, 369.5, 291.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 56.0, 269.5, 56.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 186.0, 549.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 186.0, 464.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 2 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 301.0, 406.5, 301.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 186.0, 369.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 186.0, 279.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-25", 4 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 549.5, 416.0, 230.5, 416.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-25", 3 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 464.5, 411.0, 217.75, 411.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-25", 2 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 388.0, 406.0, 205.0, 406.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 321.5, 402.0, 192.25, 402.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 303.0, 179.5, 303.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-26", 4 ],
									"hidden" : 0,
									"midpoints" : [ 549.5, 369.0, 155.5, 369.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-26", 3 ],
									"hidden" : 0,
									"midpoints" : [ 464.5, 363.0, 142.75, 363.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 2 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 358.0, 130.0, 358.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [ 279.5, 354.0, 117.25, 354.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message soundfile/open @type msg_symbol @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 830.0, 120.0, 587.0, 31.0 ],
					"id" : "obj-61",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "source_select",
					"text" : "jcom.parameter source @type msg_symbol @description \"Select what audio source to use.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 828.0, 24.0, 475.0, 19.0 ],
					"id" : "obj-64",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[9]",
					"text" : "jcom.message soundfile/direct @description container for various messages sent directly to the sfplay~ object. Refer to the MSP documentation for further details.",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 825.0, 360.0, 605.0, 31.0 ],
					"id" : "obj-65",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play",
					"text" : "jcom.parameter soundfile/play @description \"Play sound file.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 828.0, 214.0, 322.0, 19.0 ],
					"id" : "obj-66",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter soundfile/loop @type msg_toggle @description \"Loop soundfile.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 830.0, 295.0, 420.0, 19.0 ],
					"id" : "obj-67",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"patching_rect" : [ 45.0, 475.0, 107.0, 19.0 ],
					"id" : "obj-68",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 75.0, 446.0, 25.0, 25.0 ],
					"id" : "obj-69",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "(signal) Right Channel"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 9.0, 256.0, 15.0, 15.0 ],
					"id" : "obj-70",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 45.0, 446.0, 25.0, 25.0 ],
					"id" : "obj-71",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "(signal) Left Channel"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 177.0, 15.0, 15.0 ],
					"id" : "obj-72",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"border" : 0.0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 0.0, 20.0, 300.0, 120.0 ],
					"types" : [ "AIFF", "WAVE", "Sd2f" ],
					"patching_rect" : [ 1135.0, 10.0, 133.0, 68.0 ],
					"presentation" : 1,
					"id" : "obj-38",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : " ",
					"presentation_rect" : [ 136.0, 110.0, 155.0, 19.0 ],
					"patching_rect" : [ 330.0, 570.0, 150.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 40.0, 105.0, 255.0, 30.0 ],
					"patching_rect" : [ 15.0, 105.0, 190.0, 30.0 ],
					"presentation" : 1,
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 40.0, 70.0, 190.0, 30.0 ],
					"patching_rect" : [ 15.0, 70.0, 190.0, 30.0 ],
					"presentation" : 1,
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 50.0, 30.0, 170.0, 15.0 ],
					"patching_rect" : [ 335.0, 406.0, 123.0, 12.0 ],
					"presentation" : 1,
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 50.0, 46.0, 170.0, 14.0 ],
					"patching_rect" : [ 335.0, 451.0, 123.0, 12.0 ],
					"presentation" : 1,
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 40.0, 25.0, 190.0, 40.0 ],
					"patching_rect" : [ 15.0, 25.0, 190.0, 40.0 ],
					"presentation" : 1,
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop",
					"presentation_rect" : [ 257.0, 69.0, 30.0, 19.0 ],
					"patching_rect" : [ 230.0, 65.0, 30.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-76",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "O0:O0:O0",
					"presentation_rect" : [ 233.0, 89.0, 63.0, 19.0 ],
					"patching_rect" : [ 135.0, 405.0, 61.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 234.0, 25.0, 61.0, 95.0 ],
					"patching_rect" : [ 234.0, 85.0, 190.0, 30.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"has_meters" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"background" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-78",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 904.5, 506.0, 834.5, 506.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 834.5, 534.0, 819.0, 534.0, 819.0, 478.0, 834.5, 478.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 2 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 344.5, 162.0, 321.0, 162.0, 321.0, 75.0, 344.5, 75.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 197.0, 18.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 76.5, 197.0, 18.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 66.5, 197.0, 18.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 122.5, 370.0, 54.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 344.5, 340.0, 320.0, 340.0, 320.0, 175.0, 344.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 878.0, 80.0, 811.0, 80.0, 811.0, 20.0, 837.5, 20.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [ 839.5, 339.0, 816.0, 339.0, 816.0, 291.0, 839.5, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 837.5, 257.0, 815.0, 257.0, 815.0, 209.0, 837.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1144.5, 115.0, 840.0, 115.0, 840.0, 117.0, 839.5, 117.0 ]
				}

			}
 ]
	}

}
