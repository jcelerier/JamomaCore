max v2;#N vpatcher 158 44 1245 796;#P origin 0 -388;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P newex 582 566 229 196617 jcom.message audio/meters/clear @type msg_none @description "clear the audio meters";#P objectname jcom.parameter[2];#P window linecount 1;#P newex 842 215 55 196617 pvar posD;#P newex 748 215 54 196617 pvar posE;#P newex 654 215 56 196617 pvar posA;#P newex 584 536 378 196617 jcom.message update @type msg_none @description "update from external clock";#P objectname jcom.parameter[1];#N vpatcher 10 59 610 459;#P window setfont "Sans Serif" 9.;#P newex 50 50 51 196617 route set;#P newex 51 71 68 196617 jcom.miditoa;#P inlet 50 30 15 0;#P outlet 51 93 15 0;#P connect 1 0 3 0;#P connect 3 0 2 0;#P connect 2 0 0 0;#P pop;#P newobj 521 38 48 196617 p midi2a;#P newex 449 5 68 196617 jcom.atomidi;#N vpatcher 10 59 610 459;#P window setfont "Sans Serif" 9.;#P newex 50 50 51 196617 route set;#P newex 51 71 68 196617 jcom.miditoa;#P inlet 50 30 15 0;#P outlet 51 93 15 0;#P connect 1 0 3 0;#P connect 3 0 2 0;#P connect 2 0 0 0;#P pop;#P newobj 494 93 48 196617 p midi2a;#P newex 424 59 68 196617 jcom.atomidi;#P message 157 283 30 196617 open;#N vpatcher 605 157 1205 557;#P origin -71 0;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P message -8 168 90 196617 /rendermode mute;#P newex 79 129 41 196617 sel 1 0;#P message 84 168 104 196617 /rendermode unmute;#P window linecount 1;#P newex 198 54 134 196617 jcom.oscroute /audio/mute;#P newex 198 81 31 196617 == 0;#P message 198 127 62 196617 enable \$1 1;#P newex 116 54 78 196617 jcom.pass open;#P outlet 84 226 15 0;#P outlet 198 161 15 0;#N comlet Connect to 2nd last outlet of jcom.in~;#P inlet 116 33 15 0;#P connect 8 0 9 0;#P connect 6 0 8 0;#P connect 8 1 7 0;#P connect 7 0 2 0;#P fasten 6 1 2 0 327 190 89 190;#P fasten 9 0 2 0 -3 190 89 190;#P connect 0 0 3 0;#P connect 3 1 6 0;#P connect 6 0 5 0;#P connect 5 0 4 0;#P connect 4 0 1 0;#P connect 3 0 1 0;#P pop;#P newobj 298 282 105 196617 p algorithm_control~;#P user hint 45 24 98 38 "ViMiC render type" 4000 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P newex 610 500 68 196617 pvar order 2;#P window linecount 2;#P newex 685 493 349 196617 jcom.parameter reflections/order @type msg_int @range 0 2 @repetitions 0 @priority 1 @clipmode both @description "order of early reflections";#P objectname reflections/order;#P user ubumenu 128 23 22 196617 0 0 1 0;#X setrgb 181 181 181 25 25 25 50 50 50 4 4 4 141 141 141 112 112 112;#X add 0;#X add 1;#X add 2;#X prefix_set 0 0 <none> 0;#P objectname order;#P window linecount 1;#N vpatcher 320 96 778 535;#P origin 17 26;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P hidden newex 402 27 417 196617 jcom.multi.out~;#P bpatcher 3 338 448 16 0 0 jcom.sur.vimic_mic.mxt 0 16;#P objectname jcom.sur.vimic_mic.mxt[8];#P bpatcher 3 321 448 16 0 0 jcom.sur.vimic_mic.mxt 0 15;#P objectname jcom.sur.vimic_mic.mxt[9];#P bpatcher 3 304 448 16 0 0 jcom.sur.vimic_mic.mxt 0 14;#P objectname jcom.sur.vimic_mic.mxt[10];#P bpatcher 3 287 448 16 0 0 jcom.sur.vimic_mic.mxt 0 13;#P objectname jcom.sur.vimic_mic.mxt[11];#P bpatcher 3 270 448 16 0 0 jcom.sur.vimic_mic.mxt 0 12;#P objectname jcom.sur.vimic_mic.mxt[12];#P bpatcher 3 253 448 16 0 0 jcom.sur.vimic_mic.mxt 0 11;#P objectname jcom.sur.vimic_mic.mxt[13];#P bpatcher 3 236 448 16 0 0 jcom.sur.vimic_mic.mxt 0 10;#P objectname jcom.sur.vimic_mic.mxt[14];#P bpatcher 3 219 448 16 0 0 jcom.sur.vimic_mic.mxt 0 9;#P objectname jcom.sur.vimic_mic.mxt[15];#P window linecount 2;#P message 63 582 64 196617 \; max refresh;#P window linecount 1;#P newex 64 561 45 196617 onebang;#P inlet 831 23 15 0;#P hidden inlet 402 9 15 0;#P bpatcher 3 202 448 16 0 0 jcom.sur.vimic_mic.mxt 0 8;#P objectname jcom.sur.vimic_mic.mxt[7];#P bpatcher 3 185 448 16 0 0 jcom.sur.vimic_mic.mxt 0 7;#P objectname jcom.sur.vimic_mic.mxt[6];#P bpatcher 3 168 448 16 0 0 jcom.sur.vimic_mic.mxt 0 6;#P objectname jcom.sur.vimic_mic.mxt[5];#P bpatcher 3 151 448 16 0 0 jcom.sur.vimic_mic.mxt 0 5;#P objectname jcom.sur.vimic_mic.mxt[4];#P bpatcher 3 134 448 16 0 0 jcom.sur.vimic_mic.mxt 0 4;#P objectname jcom.sur.vimic_mic.mxt[3];#P bpatcher 3 117 448 16 0 0 jcom.sur.vimic_mic.mxt 0 3;#P objectname jcom.sur.vimic_mic.mxt[2];#P bpatcher 3 100 448 16 0 0 jcom.sur.vimic_mic.mxt 0 2;#P objectname jcom.sur.vimic_mic.mxt[1];#P flonum 238 379 27 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname dirPow;#P flonum 237 362 27 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname disPow;#P window linecount 0;#P comment 136 414 108 196617 Report state of ViMiC:;#B frgb 149 149 149;#P comment 131 397 111 196617 ViMiC update rate [Hz]:;#B frgb 149 149 149;#P number 242 396 28 9 1 50 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname Updaterate;#P newex 458 509 83 196617 pvar Updaterate;#P window linecount 2;#P newex 547 502 393 196617 jcom.parameter updaterate @type msg_int @range 1 50 @clipmode low @description "vimic updaterate - tells how often the parameter settings are getting updated";#P objectname updaterate;#P window linecount 1;#P newex 257 548 50 196617 deferlow;#P window linecount 2;#P newex 490 267 467 196617 jcom.parameter reflections/lowpass/frequency @type msg_int @range 0 16000 @clipmode low @repetitions 0 @ramp linear.sched @description "damping frequency of the early reflections";#P objectname reflections/lowpass/frequency;#P window linecount 1;#P newex 490 245 94 196617 pvar early_lowcut;#P number 393 379 47 9 10 0 8225 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname early_lowcut;#P comment 261 381 131 196617 low cut for early refletions;#B frgb 149 149 149;#P comment 355 69 56 196617 gain;#B frgb 181 181 181;#P newex 479 433 144 196617 jcom.list2parameter 3;#P newex 645 458 80 196617 pvar roomsizeZ;#P newex 562 458 81 196617 pvar roomsizeY;#P flonum 405 361 28 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname roomsizeZ;#P flonum 375 362 28 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname roomsizeY;#P newex 479 458 81 196617 pvar roomsizeX;#P flonum 345 362 28 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname roomsizeX;#P window linecount 2;#P newex 635 422 362 196617 jcom.parameter room/size @type msg_list @ramp linear.sched @range 0. 40. @repetitions 0 @clipmode both @description "Size of the virtual room in XYZ";#P objectname room/size;#P window linecount 1;#P comment 261 364 81 196617 Roomsize x/y/z;#B frgb 149 149 149;#P comment 43 363 201 196617 power law for attenuation due to distance:;#B frgb 149 149 149;#P comment 32 381 211 196617 power law for attenuation due to directivity:;#B frgb 149 149 149;#P newex 470 166 66 196617 pvar dirPow;#P newex 471 107 66 196617 pvar disPow;#P window linecount 2;#P newex 470 186 440 196617 jcom.parameter microphones/direct/power @type msg_float @repetitions 0 @range 0. 8. @clipmode both @description "power law for attenuation due to microphone directivity";#P objectname microphones/direct/power;#P newex 471 126 374 196617 jcom.parameter room/distance/power @type msg_float @range 0. 8. @clipmode both @repetitions 0 @description "power law for attenuation due to distance";#P objectname room/distance/power;#P window linecount 1;#P comment 204 69 87 196617 Azimut/Elevation;#B frgb 181 181 181;#P comment 171 69 14 196617 Z;#B frgb 181 181 181;#P comment 137 69 14 196617 Y;#B frgb 181 181 181;#P comment 99 68 14 196617 X;#B frgb 181 181 181;#P comment 291 70 56 196617 directivity;#B frgb 181 181 181;#P comment 215 56 87 196617 Orientation;#B frgb 181 181 181;#P comment 96 55 99 196617 Microphone position;#B frgb 181 181 181;#P bpatcher 3 83 448 16 0 0 jcom.sur.vimic_mic.mxt 0 1;#P objectname jcom.sur.vimic_mic.mxt;#P hidden newex 666 68 74 196617 pvar allreport;#P window linecount 2;#P hidden newex 667 88 296 196617 jcom.message report_all @type msg_int @range 0 1 @clipmode both @description "report inner state of the vimic module";#P objectname direct/gain[2];#P button 242 413 15 0;#P objectname allreport;#P flonum 613 342 29 9 0 0 8224 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname bb6;#P flonum 613 324 29 9 0 0 8224 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname bb5;#P window linecount 1;#P hidden newex 257 524 117 196617 loadmess patcher ViMiC;#P hidden newex 15 560 40 196617 t front;#P hidden newex 15 534 151 196617 jcom.oscroute /open_inspector;#P hidden inlet 15 507 15 0;#N thispatcher;#Q window flags nogrow close zoom nofloat;#Q window size 320 96 778 535;#Q window title;#Q window exec;#Q savewindow 1;#Q end;#P hidden newobj 187 571 59 196617 thispatcher;#P hidden newex 512 333 88 196617 bgcolor 80 80 80;#P window linecount 3;#P hidden message 18 402 110 196617 window flags nogrow \, savewindow 1 \, window exec;#P hidden message 362 396 80 196617 window flags grow \, window exec;#P window setfont "Sans Serif" 18.;#P window linecount 1;#P comment 122 19 211 196626 Extended settings;#B frgb 181 181 181;#P user panel 1 51 455 308;#X brgb 80 80 80;#X frgb 255 255 255;#X border 2;#X rounded 0;#X shadow 0;#X done;#P hidden connect 70 0 15 0;#P hidden connect 70 1 51 0;#P hidden connect 70 2 52 0;#P hidden connect 70 3 53 0;#P hidden connect 70 4 54 0;#P hidden connect 70 5 55 0;#P hidden connect 70 6 56 0;#P hidden connect 70 7 57 0;#P hidden connect 70 8 62 0;#P hidden connect 70 9 63 0;#P hidden connect 70 10 64 0;#P hidden connect 70 11 65 0;#P hidden connect 70 12 66 0;#P hidden connect 70 13 67 0;#P hidden connect 70 14 68 0;#P hidden connect 70 15 69 0;#P connect 6 0 7 0;#P connect 7 0 8 0;#P connect 60 0 61 0;#P connect 7 0 60 0;#P connect 8 0 5 0;#P connect 43 0 5 0;#P hidden connect 3 0 5 0;#P hidden connect 2 0 5 0;#P connect 9 0 43 0;#P hidden connect 58 0 70 0;#P hidden connect 59 0 15 1;#P hidden connect 59 0 51 1;#P hidden connect 59 0 52 1;#P hidden connect 59 0 53 1;#P hidden connect 59 0 54 1;#P hidden connect 59 0 55 1;#P hidden connect 59 0 56 1;#P hidden connect 59 0 57 1;#P hidden connect 59 0 62 1;#P hidden connect 59 0 63 1;#P hidden connect 59 0 64 1;#P hidden connect 59 0 65 1;#P hidden connect 59 0 66 1;#P hidden connect 59 0 67 1;#P hidden connect 59 0 68 1;#P hidden connect 59 0 69 1;#P connect 44 0 45 0;#P fasten 24 0 26 0 475 217 467 217 467 163 475 163;#P connect 26 0 24 0;#P fasten 23 0 25 0 476 157 468 157 468 104 476 104;#P connect 25 0 23 0;#P fasten 32 0 37 0 484 480 476 480 476 426 484 426;#P connect 37 0 32 0;#P fasten 42 0 41 0 495 301 481 301 481 240 495 240;#P connect 41 0 42 0;#P fasten 35 0 37 1 567 484 470 484 470 421 497 421;#P fasten 36 0 37 2 650 483 465 483 465 416 510 416;#P connect 45 0 44 0;#P connect 37 1 35 0;#P connect 30 0 37 10;#P lcolor 15;#P connect 37 10 30 0;#P lcolor 15;#P connect 37 2 36 0;#P hidden connect 14 0 13 0;#P pop;#P newobj 157 332 67 196617 p inspector;#B color 4;#P objectname inspector;#P newex 544 313 62 196617 prepend set;#P newex 615 365 27 196617 - 1;#P newex 614 294 27 196617 + 1;#P newex 614 346 51 196617 route set;#P newex 614 453 102 196617 pvar render_mode 2;#P window linecount 2;#P newex 722 447 242 196617 jcom.parameter rendermode @type msg_symbol @repetitions 0 @description "Rendertype of ViMiC";#P objectname rendermode;#P user ubumenu 42 23 63 196617 0 0 1 0;#X setrgb 181 181 181 25 25 25 50 50 50 4 4 4 141 141 141 112 112 112;#X add ViMiC;#X add Panning;#X prefix_set 0 0 <none> 0;#P objectname render_mode;#P window linecount 1;#N vpatcher 497 319 1097 719;#P outlet 56 179 15 0;#P button 137 29 15 0;#P window setfont "Sans Serif" 9.;#P hidden message 60 91 64 196617 rgb2 66 0 2;#P hidden message 221 89 92 196617 frgb 181 181 181;#P hidden message 138 91 75 196617 brgb 47 46 36;#P newex 83 58 50 196617 deferlow;#P newex 83 24 48 196617 loadbang;#P connect 4 0 6 0;#P connect 2 0 6 0;#P connect 3 0 6 0;#P connect 1 0 4 0;#P connect 5 0 1 0;#P connect 0 0 1 0;#P connect 1 0 2 0;#P connect 1 0 3 0;#P pop;#P newobj 351 75 46 196617 p colors;#N thispatcher;#Q end;#P hidden newobj 351 121 61 196617 thispatcher;#N vpatcher 188 431 335 589;#P button 41 33 15 0;#P window setfont "Sans Serif" 9.;#P newex 41 54 50 196617 deferlow;#P newex 41 75 50 196617 t front;#P outlet 41 103 15 0;#P inlet 41 15 15 0;#P connect 0 0 4 0;#P connect 4 0 3 0;#P connect 3 0 2 0;#P connect 2 0 1 0;#P pop;#P hidden newobj 351 99 14 196617 p;#P bpatcher 153 38 100 12 0 0 jcom.textslider.mxt 1 0. 0. 1. @size 100 12 @text early reflections;#P bpatcher 153 23 100 13 0 0 jcom.textslider.mxt 1 0. 0. 1. @size 100 12 @text direct sound @frgb;#P user ubumenu 106 23 22 196617 0 0 1 0;#X setrgb 181 181 181 25 25 25 50 50 50 4 4 4 141 141 141 112 112 112;#X add 1;#X add 2;#X add 3;#X add 4;#X add 5;#X add 6;#X add 7;#X add 8;#X add 9;#X add 10;#X add 11;#X add 12;#X add 13;#X add 14;#X add 15;#X add 16;#X add 17;#X add 18;#X add 19;#X add 20;#X add 21;#X add 22;#X add 23;#X add 24;#X prefix_set 0 0 <none> 0;#P objectname mics;#P window linecount 2;#P newex 614 314 377 196617 jcom.parameter microphones/amount @type msg_int @range 1 32 @repetitions 0 @clipmode low @priority 2 @description "Number of used virtual microphones";#P objectname microphones/amount;#P window linecount 1;#P newex 614 274 64 196617 pvar mics 2;#P comment 5 25 34 196617 setup:;#B frgb 149 149 149;#P hidden newex 157 253 221 196617 jcom.oscroute /open_inspector /audio/meters;#P newex 157 301 44 196617 pcontrol;#P outlet 47 608 15 0;#P newex 47 551 417 196617 jcom.multi.in~;#P newex 606 387 63 196617 pvar report;#P toggle 122 4 13 0;#P objectname report;#P window linecount 2;#P newex 606 407 288 196617 jcom.parameter report @type msg_int @range 0 1 @clipmode both @description "report changes inside the vimic module";#P objectname report[1];#P newex 495 61 239 196617 jcom.parameter.gain reflections/gain @repetitions 0 @description "gain of the early reflections";#P objectname reflections/gain;#P newex 521 6 236 196617 jcom.parameter.gain direct/gain @repetitions 0 @description "gain of the direct sound component";#P objectname direct/gain;#P window linecount 1;#P newex 439 178 144 196617 jcom.list2parameter 3;#P newex 553 202 54 196617 pvar posZ;#P newex 496 202 55 196617 pvar posY;#P newex 439 203 55 196617 pvar posX;#P window linecount 2;#P newex 654 176 325 196617 jcom.parameter.spatdif source/position/absolute @ramp linear.sched @description "Sourceposition in the virtual room - spatDIF compliant";#P objectname source/position/absolute;#P flonum 127 41 26 9 0. 25. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname posD;#P flonum 101 41 27 9 0 90. 8226 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname posE;#P flonum 69 41 33 9 -180. 180. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname posA;#P window linecount 1;#P newex 393 308 47 196617 pcontrol;#P message 105 80 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P newex 37 465 222 196617 jcom.out~ 16;#P newex 133 231 58 196617 jcom.in~ 1;#P message 113 102 125 196617 /documentation/generate;#B color 3;#P window linecount 2;#P message 113 175 65 196617 \; max refresh;#P newex 15 136 323 196617 jcom.hub jmod.sur.vimic~ @inspector 1 @size 1U-half @module_type audio.ambisonic @description "Virtual Microphone Control (ViMiC)";#P objectname jcom.hub;#P window linecount 1;#P comment 29 103 79 196617 command input;#P inlet 15 103 13 0;#P message 244 102 31 196617 /init;#P inlet 133 212 13 0;#P comment -1 43 75 196617 Position A/E/D;#B frgb 149 149 149;#P newex 133 358 313 196617 jalg.sur.vimic_8_1~.mxt;#P outlet 15 179 13 0;#P comment 38 659 101 196617 multicable output;#P user hint 130 23 149 39 "order of early reflections" 4000 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P user hint 106 24 125 40 "number of microphones" 4000 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P user hint 611 105 655 123 "ViMiC render type" 4000 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P bpatcher 0 -1 256 60 0 0 jcom.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P fasten 17 0 12 0 110 123 20 123;#P connect 10 0 12 0;#P fasten 14 0 12 0 118 123 20 123;#P fasten 9 0 12 0 249 124 20 124;#P connect 12 0 5 0;#P connect 16 1 32 0;#P connect 32 0 33 0;#P lcolor 6;#P connect 6 0 16 1;#P connect 16 2 32 1;#P connect 6 1 16 2;#P connect 16 3 32 2;#P connect 6 2 16 3;#P connect 16 4 32 3;#P connect 6 3 16 4;#P connect 16 5 32 4;#P connect 6 4 16 5;#P connect 16 6 32 5;#P connect 6 5 16 6;#P connect 16 7 32 6;#P connect 8 0 15 0;#P connect 15 0 6 0;#P connect 6 6 16 7;#P connect 16 8 32 7;#P connect 6 7 16 8;#P connect 16 9 32 8;#P hidden connect 44 0 40 0;#P hidden connect 62 0 40 0;#P hidden connect 44 0 41 0;#P hidden connect 60 0 41 0;#P connect 15 1 35 0;#P connect 35 0 58 0;#P connect 58 0 34 0;#P connect 34 0 52 0;#P connect 6 8 16 9;#P connect 16 10 32 9;#P connect 6 9 16 10;#P connect 16 11 32 10;#P fasten 32 0 52 1 52 576 22 576 22 327 190 327;#P lcolor 6;#P connect 16 12 32 11;#P connect 6 10 16 11;#P connect 16 13 32 12;#P connect 6 11 16 12;#P fasten 35 1 52 2 267 301 218 301;#P connect 16 14 32 13;#P connect 6 12 16 13;#P connect 16 15 32 14;#P connect 6 13 16 14;#P connect 6 14 16 15;#P fasten 35 2 57 0 372 276 303 276;#P connect 44 0 42 0;#P hidden connect 42 0 43 0;#P connect 57 1 18 0;#P hidden connect 41 0 59 0;#P fasten 18 0 6 1 398 337 441 337;#P fasten 57 0 6 1 303 337 441 337;#P fasten 23 0 26 0 444 225 436 225 436 171 444 171;#P connect 26 0 23 0;#P hidden connect 40 0 61 0;#P fasten 24 0 26 1 501 229 430 229 430 166 457 166;#P fasten 25 0 26 2 558 233 425 233 425 161 470 161;#P connect 28 0 60 0;#P connect 59 0 28 0;#P connect 26 1 24 0;#P connect 61 0 27 0;#P connect 27 0 62 0;#P connect 50 0 51 0;#P connect 26 2 25 0;#P fasten 29 0 31 0 611 440 601 440 601 382 611 382;#P connect 31 0 29 0;#P fasten 54 0 55 0 690 526 606 526 606 494 615 494;#P connect 51 0 37 0;#P connect 37 0 49 0;#P connect 49 0 38 0;#P connect 38 0 48 0;#P fasten 46 0 47 0 727 479 608 479 608 444 619 444;#P connect 48 0 50 0;#P fasten 64 0 22 0 659 237 652 237 652 170 659 170;#P connect 22 0 64 0;#P connect 55 1 54 0;#P connect 47 1 46 0;#P connect 22 1 65 0;#P fasten 65 0 22 1 753 242 649 242 649 163 816 163;#P connect 22 2 66 0;#P fasten 66 0 22 2 847 248 644 248 644 155 973 155;#P pop;