max v2;
#N vpatcher 14 44 980 764;
#P window setfont "Sans Serif" 9.;
#P newex 394 66 49 196617 pvar ch1;
#B color 7;
#P comment 47 581 191 196617 - menu in upper left corner does nothing;
#P user pictslider 20 98 161 13 2 0 2 0 jmod.slider.master.knob.top.psd 1 jmod.slider.master.bg.pct 1 609 0 8323072 157 1. 1.;
#P objectname gain_master;
#P newex 394 145 49 196617 pvar ch2;
#B color 7;
#P newex 394 215 89 196617 pvar gain_master;
#B color 7;
#P newex 394 166 178 196617 jmod.parameter.gain.mxt $0_ gain_2;
#B color 2;
#P objectname jmod.parameter.gain.mxt[2];
#P newex 394 88 178 196617 jmod.parameter.gain.mxt $0_ gain_1;
#B color 2;
#P objectname jmod.parameter.gain.mxt[1];
#P newex 394 236 180 196617 jmod.parameter.gain.mxt $0_ gain_m;
#B color 2;
#P objectname jmod.parameter.gain.mxt;
#P message 241 272 34 196617 write;
#P user jsui 195 24 45 19 1 0 0 jsui_textbutton.js Open;
#P objectname Open_button;
#P user jsui 195 47 45 19 1 0 0 jmod.jsui_texttoggle.js Play Play;
#P objectname Play_button;
#P window setfont "Sans Serif" 12.;
#P comment 394 353 210 196620 DSP and adc~ settings;
#B color 7;
#P window setfont "Sans Serif" 9.;
#P comment 47 568 191 196617 - play should turn of if audio stops (EOF);
#P comment 47 555 100 196617 Bugs/required fixes:;
#P newex 394 595 35 196617 t open;
#P newex 394 574 85 196617 pvar DSP_Status;
#B color 7;
#P newex 394 616 75 196617 s $0_xxx_adc;
#B color 14;
#P message 394 530 45 196617 set 2 \$1;
#P message 394 426 45 196617 set 1 \$1;
#P newex 394 548 75 196617 s $0_xxx_adc;
#B color 14;
#P newex 394 445 75 196617 s $0_xxx_adc;
#B color 14;
#P newex 394 505 95 196617 pvar Channel_Right;
#B color 7;
#P newex 394 402 91 196617 pvar Channel_Left;
#B color 7;
#P newex 394 485 185 196617 jmod.parameter.mxt $0_ set_right_ch;
#B color 2;
#P objectname jmod.parameter.mxt[1];
#P newex 394 382 179 196617 jmod.parameter.mxt $0_ set_left_ch;
#B color 2;
#P objectname jmod.parameter.mxt;
#P user jsui 196 0 45 19 1 0 0 jsui_textbutton.js DSP;
#P objectname DSP_Status;
#P number 7 43 30 9 1 512 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Channel_Right;
#P number 7 26 30 9 1 512 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Channel_Left;
#P toggle 124 425 15 0;
#P message 86 425 35 196617 1 100;
#P message 47 425 35 196617 0 100;
#P message 47 509 69 196617 \; max refresh;
#P message 47 477 72 196617 \; jmod.init bang;
#P newex 47 449 84 196617 s jmod.dsptoggle;
#P window setfont "Sans Serif" 12.;
#P comment 634 420 57 196620 modout;
#B color 7;
#P window setfont "Sans Serif" 9.;
#P newex 697 485 88 196617 s $0_xxx_sfplay;
#B color 14;
#P user led 797 443 17 17 1 150;
#P newex 697 443 98 196617 pvar Modout_toggle;
#B color 7;
#P newex 697 423 159 196617 jmod.parameter.mxt $0_ modout;
#B color 2;
#P objectname jmod.parameter.mxb;
#P message 697 467 55 196617 modout \$1;
#P window setfont "Sans Serif" 12.;
#P comment 394 28 210 196620 Volume control;
#B color 7;
#P comment 631 658 210 196620 All communication with audio subpatch is done using $0_xxx_ messages;
#B color 14;
#P comment 634 334 39 196620 loop;
#B color 7;
#P comment 634 257 39 196620 play;
#B color 7;
#P comment 634 163 42 196620 open;
#B color 7;
#P comment 634 86 56 196620 source;
#B color 7;
#P window setfont "Sans Serif" 9.;
#P number 789 107 35 9 0 0 0 3 0 0 0 74 156 97 222 222 222 0 0 0;
#P user led 783 162 17 17 1 150;
#P user led 783 354 17 17 1 150;
#P user led 783 275 17 17 1 150;
#P newex 237 186 94 196617 pvar Time_Display;
#N vpatcher 14 59 813 484;
#P origin -88 0;
#P window setfont "Sans Serif" 9.;
#P newex 211 32 75 196617 r $0_xxx_adc;
#N vpatcher 480 147 923 501;
#P window setfont "Sans Serif" 9.;
#P comment 74 301 202 196617 NOTE: This fade is not displayed in the GUI.;
#P comment 74 84 145 196617 Quick fade in when audio start;
#P inlet 329 58 15 0;
#P inlet 264 58 15 0;
#P outlet 296 272 15 0;
#P outlet 264 272 15 0;
#P newex 264 231 75 196617 matrix~ 2 2 0.;
#P message 106 198 75 196617 0 0 \$1 \, 1 1 \$1;
#P newex 106 162 60 196617 unpack 0 0.;
#P message 191 198 45 196617 ramp \$1;
#P newex 191 162 21 196617 t 0;
#P newex 106 122 84 196617 r jmod.dsptoggle;
#P comment 74 68 145 196617 Quick fade out when audio stop;
#P connect 1 0 4 0;
#P connect 4 0 5 0;
#P connect 1 0 2 0;
#P connect 4 1 3 0;
#P connect 2 0 3 0;
#P connect 9 0 6 0;
#P connect 5 0 6 0;
#P connect 3 0 6 0;
#P connect 6 0 7 0;
#P connect 6 1 8 0;
#P connect 10 0 6 1;
#P pop;
#P newobj 59 314 84 196617 p smooth_in_out;
#P comment 462 320 85 196617 Time marker;
#P comment 153 363 54 196617 signal R;
#P comment 78 363 54 196617 signal L;
#N comlet signal L;
#P outlet 59 363 15 0;
#N comlet signal R;
#P outlet 133 363 15 0;
#N comlet Time marker;
#P outlet 445 320 15 0;
#N vpatcher 84 180 644 636;
#P window setfont "Sans Serif" 9.;
#P newex 181 202 27 196617 * 0.;
#P newex 88 202 27 196617 * 0.;
#P newex 58 149 20 196617 t b;
#P newex 181 72 162 196617 jmod.receiveamp.mxt $0_ gain_2;
#P newex 88 51 162 196617 jmod.receiveamp.mxt $0_ gain_1;
#P newex 198 110 164 196617 jmod.receiveamp.mxt $0_ gain_m;
#B color 14;
#P comment 353 387 100 196617 MIDI to amplitude;
#P comment 431 357 54 196617 signal R;
#P comment 387 357 54 196617 signal L;
#P comment 456 33 54 196617 signal R;
#N comlet signal R;
#P outlet 435 334 15 0;
#N comlet signal L;
#P outlet 403 334 15 0;
#N comlet signal R;
#P inlet 468 50 15 0;
#N comlet signal L;
#P inlet 403 50 15 0;
#P newex 403 284 75 196617 matrix~ 2 2 0.;
#P message 88 225 39 196617 0 0 \$1;
#P message 181 225 39 196617 1 1 \$1;
#P comment 384 33 54 196617 signal L;
#P connect 12 0 15 0;
#P lcolor 15;
#P connect 15 0 16 0;
#P connect 13 0 16 0;
#P connect 16 0 2 0;
#P connect 12 0 16 1;
#P lcolor 15;
#P connect 14 0 17 0;
#P connect 15 0 17 0;
#P connect 17 0 1 0;
#P connect 12 0 17 1;
#P lcolor 15;
#P connect 4 0 3 0;
#P fasten 1 0 3 0 186 250 408 250;
#P fasten 2 0 3 0 93 250 408 250;
#P connect 3 0 6 0;
#P connect 3 1 7 0;
#P connect 5 0 3 1;
#P pop;
#P newobj 59 283 84 196617 p gain;
#P newex 371 32 88 196617 r $0_xxx_sfplay;
#B color 14;
#P newex 59 32 98 196617 r $0__xxx_sfmenu;
#B color 14;
#P number 59 150 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P hidden comment 220 486 105 196617 ----signal inputs----;
#P newex 598 118 51 196617 *~ 0.125;
#P newex 598 91 65 196617 cycle~ 1000;
#P newex 674 91 32 196617 pink~;
#N vpatcher 177 193 878 686;
#P window setfont "Sans Serif" 9.;
#P newex 30 320 45 196617 split 0 9;
#P newex 30 342 60 196617 sprintf O%i;
#P newex 30 366 49 196617 tosymbol;
#P newex 137 342 60 196617 sprintf O%i;
#P newex 137 366 49 196617 tosymbol;
#P newex 137 320 45 196617 split 0 9;
#P newex 244 342 60 196617 sprintf O%i;
#P newex 244 372 49 196617 tosymbol;
#P newex 244 320 45 196617 split 0 9;
#P outlet 30 447 15 0;
#P newex 30 398 225 196617 sprintf %s:%s:%s;
#P newex 30 422 89 196617 prepend setitem 0;
#P newex 164 162 68 196617 expr $f1-$i2;
#P newex 244 186 33 196617 * 60.;
#P newex 46 114 68 196617 expr $f1-$i2;
#P window setfont "Sans Serif" 36.;
#P number 244 261 62 36 0 0 32 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P comment 310 261 38 196644 s;
#P number 137 261 62 36 0 0 32 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P window setfont "Sans Serif" 9.;
#P newex 137 139 33 196617 * 60.;
#P window setfont "Sans Serif" 36.;
#P comment 201 261 38 196644 m;
#P number 30 261 62 36 0 0 32 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P window setfont "Sans Serif" 9.;
#P newex 30 91 62 196617 / 3600000.;
#P newex 30 71 80 196617 snapshot~ 1000;
#P inlet 30 27 15 0;
#P window setfont "Sans Serif" 36.;
#P comment 94 261 28 196644 h;
#P connect 1 0 2 0;
#P connect 2 0 3 0;
#P connect 3 0 4 0;
#P connect 4 0 24 0;
#P connect 24 0 23 0;
#P connect 24 1 22 0;
#P connect 23 0 22 0;
#P connect 22 0 14 0;
#P connect 14 0 13 0;
#P connect 13 0 15 0;
#P fasten 3 0 10 0 35 111 51 111;
#P fasten 3 0 10 1 35 110 109 110;
#P fasten 10 0 6 0 51 135 142 135;
#P connect 6 0 7 0;
#P connect 7 0 19 0;
#P connect 19 0 21 0;
#P connect 21 0 20 0;
#P connect 19 1 20 0;
#P connect 20 0 14 1;
#P fasten 6 0 12 0 142 158 169 158;
#P fasten 6 0 12 1 142 158 227 158;
#P fasten 12 0 11 0 169 183 249 183;
#P connect 11 0 9 0;
#P connect 9 0 16 0;
#P connect 16 0 18 0;
#P connect 16 1 17 0;
#P connect 18 0 17 0;
#P connect 17 0 14 2;
#P pop;
#P newobj 445 118 59 196617 p h:m:s:ms;
#N sfplay~  2 403200 1 ;
#P newobj 371 91 122 196617 sfplay~ 2 403200 1;
#P newex 133 242 66 196617 selector~ 4;
#P newex 59 242 66 196617 selector~ 4;
#P newex 211 126 29 196617 adc~;
#P connect 10 0 9 0;
#P connect 9 0 1 0;
#P connect 1 0 12 0;
#P connect 12 0 19 0;
#P connect 19 0 15 0;
#P fasten 0 0 1 1 216 196 78 196;
#P fasten 3 0 1 2 376 200 92 200;
#P fasten 7 0 1 3 603 203 106 203;
#P fasten 5 0 1 4 679 206 120 206;
#P connect 9 0 2 0;
#P connect 2 0 12 1;
#P connect 12 1 19 1;
#P connect 19 1 14 0;
#P fasten 0 1 2 1 235 225 152 225;
#P fasten 3 1 2 2 413 228 166 228;
#P fasten 7 0 2 3 603 231 180 231;
#P fasten 5 0 2 4 679 234 194 234;
#P connect 20 0 0 0;
#P connect 11 0 3 0;
#P connect 3 2 4 0;
#P connect 4 0 13 0;
#P connect 6 0 7 0;
#P pop;
#P newobj 163 163 84 196617 p Sound_sources;
#P newex 694 200 88 196617 s $0_xxx_sfplay;
#B color 14;
#P newex 694 162 88 196617 pvar Open_button;
#B color 7;
#P newex 697 634 88 196617 s $0_xxx_sfplay;
#B color 14;
#P message 694 182 28 196617 open;
#P newex 697 590 88 196617 s $0_xxx_sfplay;
#P message 697 378 42 196617 loop \$1;
#P newex 697 397 88 196617 s $0_xxx_sfplay;
#B color 14;
#P newex 697 354 85 196617 pvar Loop_toggle;
#B color 7;
#P newex 697 303 88 196617 s $0_xxx_sfplay;
#B color 14;
#P newex 697 275 85 196617 pvar Play_button;
#B color 7;
#P newex 694 130 98 196617 s $0__xxx_sfmenu;
#B color 14;
#P newex 694 106 93 196617 pvar input_menu 2;
#B color 7;
#P newex 732 563 65 196617 prepend open;
#P newex 697 540 45 196617 sel bang;
#P newex 697 519 153 196617 jmod.message.mxt $0_ sf_open;
#B color 2;
#P objectname jmod.parameter.mxb[10];
#P user umenu 81 1 100 196645 1 64 17 0;
#X add No Input;
#X add Live Input;
#X add Soundfile;
#X add Test Tone: 1KHz;
#X add Test Source: Pink Noise;
#P objectname input_menu;
#P newex 241 292 81 196617 pattrstorage @autorestore 0 @savemode 0;
#X client_rect 54 290 488 814;
#X storage_rect 0 0 640 240;
#P objectname input~;
#P bpatcher 28 22 136 39 0 0 jmod.hmeters~.mxt 0;
#P user pictslider 20 72 161 13 2 0 2 0 jmod.slider.ch.knob.top.pct 1 jmod.slider.ch.bg.pct 1 609 0 0 157 1. 1.;
#P objectname ch1;
#P user pictslider 20 85 161 13 2 0 2 0 jmod.slider.ch.knob.bottom.pct 1 jmod.slider.ch.bg.pct 1 609 0 8323072 157 1. 1.;
#P objectname ch2;
#P user fpic 26 18 160 52 jmod.bg.hgain.pct 0 0 0 0. 0 0 0;
#P newex 694 86 245 196617 jmod.parameter.mxt $0_ source_select @type menu;
#B color 2;
#P objectname jmod.parameter.mxb[8];
#P newex 697 612 145 196617 jmod.message.mxt $0_ direct;
#B color 2;
#P objectname jmod.parameter.mxb[9];
#P newex 697 255 145 196617 jmod.parameter.mxt $0_ play;
#B color 2;
#P objectname jmod.parameter.mxb[5];
#P newex 697 333 145 196617 jmod.parameter.mxt $0_ loop;
#B color 2;
#P objectname jmod.parameter.mxb[4];
#P comment 143 233 101 196617 ---signal outputs---;
#P comment 61 283 79 196617 command input;
#P newex 47 301 189 196617 jmod.hub.mxt $0_ input~ @size 2U-half;
#N comlet (signal) Right Channel;
#P outlet 200 210 15 0;
#P outlet 47 331 15 0;
#N comlet (signal) Left Channel;
#P outlet 163 210 15 0;
#P inlet 47 283 13 0;
#P user umenu 192 103 70 196644 3 64 119 0;
#X setrgb 198 198 198 221 221 221 255 255 255 221 221 221 170 170 170 119 119 119 187 187 187;
#X add O0:O0:O0;
#P objectname Time_Display;
#P message 697 564 28 196617 open;
#P window setfont "Sans Serif" 12.;
#P comment 634 28 210 196620 All communication with interface is done using pvar;
#B color 7;
#P user radiogroup 193 70 42 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 0;
#X done;
#P objectname Loop_toggle;
#P user radiogroup 193 87 53 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 1;
#X done;
#P objectname Modout_toggle;
#P window setfont "Sans Serif" 9.;
#P comment 207 90 45 196617 modout;
#B frgb 181 181 181;
#P comment 207 73 29 196617 loop;
#B frgb 181 181 181;
#P comment 394 293 214 196617 Fade in/out when audio is turned on/off is dealt with in the audio subpatch;
#P bpatcher 0 0 256 121 0 0 jmod.gui.2Uh.a.null.mxt 0 $0_;
#P hidden connect 41 0 23 0;
#P connect 9 0 13 0;
#P connect 13 0 11 0;
#P fasten 64 0 59 0 129 444 52 444;
#P fasten 63 0 59 0 91 444 52 444;
#P fasten 62 0 59 0 52 444 52 444;
#P hidden connect 41 1 23 1;
#P connect 41 0 10 0;
#P connect 41 1 12 0;
#P connect 24 0 13 1;
#P connect 41 2 42 0;
#P connect 13 2 24 0;
#P connect 84 0 24 0;
#P fasten 86 0 92 0 399 110 391 110 391 61 399 61;
#P connect 92 0 86 0;
#P fasten 87 0 89 0 399 186 390 186 390 141 399 141;
#P connect 89 0 87 0;
#P fasten 85 0 88 0 399 257 389 257 389 210 399 210;
#P connect 88 0 85 0;
#P fasten 70 0 68 0 399 423 389 423 389 379 399 379;
#P connect 68 0 70 0;
#P connect 70 0 74 0;
#P connect 74 0 72 0;
#P fasten 71 0 69 0 399 526 389 526 389 481 399 481;
#P connect 69 0 71 0;
#P connect 71 0 75 0;
#P connect 75 0 73 0;
#P connect 77 0 78 0;
#P connect 78 0 76 0;
#P fasten 29 0 19 0 699 125 688 125 688 83 699 83;
#P connect 19 0 29 0;
#P connect 29 0 30 0;
#P connect 39 0 37 0;
#P connect 37 0 40 0;
#P fasten 31 0 17 0 702 297 693 297 693 251 702 251;
#P connect 17 0 31 0;
#P connect 31 0 32 0;
#P fasten 33 0 16 0 702 375 694 375 694 329 702 329;
#P connect 16 0 33 0;
#P connect 33 0 35 0;
#P connect 35 0 34 0;
#P fasten 55 0 54 0 702 463 693 463 693 419 702 419;
#P connect 54 0 55 0;
#P connect 55 0 53 0;
#P connect 53 0 57 0;
#P connect 26 0 27 0;
#P connect 27 0 7 0;
#P fasten 28 0 36 0 737 586 702 586;
#P connect 7 0 36 0;
#P connect 18 0 38 0;
#P connect 27 1 28 0;
#P hidden connect 39 0 45 0;
#P hidden connect 31 0 43 0;
#P hidden connect 33 0 44 0;
#P hidden connect 29 0 46 0;
#P hidden connect 55 0 56 0;
#P pop;
