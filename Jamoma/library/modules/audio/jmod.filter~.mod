max v2;
#N vpatcher 311 50 892 753;
#P window setfont "Sans Serif" 9.;
#P window linecount 2;
#P message 47 644 65 196617 \; max refresh;
#P user umenu 6 30 70 196647 1 64 46 1;
#X add lowpass;
#X add highpass;
#X add bandpass;
#X add bandstop;
#X add peaknotch;
#X add lowshelf;
#X add highshelf;
#P objectname FilterType;
#P window linecount 1;
#P newex 261 22 124 196617 r $0_xxx_to_filtergraph;
#P newex 46 589 124 196617 s $0_xxx_to_filtergraph;
#N vpatcher 14 59 614 459;
#P window setfont "Sans Serif" 9.;
#P comment 293 166 119 196617 Set message to 6nd inlet;
#P outlet 19 202 15 0;
#P newex 19 160 215 196617 pak set 1200. 1. 1.;
#P newex 223 112 50 196617 route set;
#P inlet 87 43 15 0;
#P newex 155 112 50 196617 route set;
#P inlet 155 43 15 0;
#P newex 87 112 50 196617 route set;
#P inlet 223 43 15 0;
#P comment 293 114 100 196617 Get rid of set;
#P connect 7 0 8 0;
#P connect 1 0 2 0;
#P connect 2 0 7 1;
#P connect 3 0 4 0;
#P connect 4 0 7 2;
#P connect 5 0 6 0;
#P connect 6 0 7 3;
#P pop;
#P newobj 46 565 124 196617 p PrepareForFiltergraph~;
#P flonum 113 19 40 9 0. 0 8225 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname CenterFreq;
#P newex 205 420 75 196617 pvar FilterGain;
#P newex 205 344 39 196617 pvar Q;
#P newex 205 511 83 196617 pvar CenterFreq;
#P newex 205 233 89 196617 pvar FilterType 2;
#P newex 51 319 93 196617 pvar FilterGraph 7;
#P window linecount 2;
#P message 47 614 72 196617 \; jmod.init bang;
#P window linecount 3;
#P newex 161 128 81 196617 pattrstorage @autorestore 0 @savemode 0;
#X client_rect 14 59 654 299;
#X storage_rect 0 0 640 240;
#P objectname jmod.filter~;
#P window linecount 1;
#P newex 262 45 145 196617 jmod.message $0_ filtergraph;
#P flonum 113 32 40 9 0. 100. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Q;
#P newex 205 258 205 196617 jmod.parameter $0_ filtertype @type menu;
#P objectname jmod.parameter.mxb;
#P newex 205 444 260 196617 jmod.parameter $0_ filtergain @ramp 1 @repetitions 0;
#P objectname jmod.parameter.mxb[3];
#P newex 205 368 223 196617 jmod.parameter $0_ q @ramp 1 @repetitions 0;
#P objectname jmod.parameter.mxb[2];
#P newex 205 532 225 196617 jmod.parameter $0_ cf @ramp 1 @repetitions 0;
#P objectname jmod.parameter.mxb[1];
#P comment 90 34 27 196617 Q/S;
#B frgb 172 172 172;
#P flonum 113 45 40 9 0. 0 8225 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname FilterGain;
#P comment 98 21 18 196617 cf;
#B frgb 172 172 172;
#P comment 90 47 25 196617 gain;
#B frgb 172 172 172;
#P newex 262 179 108 196617 poly~ jmod.filter~.alg;
#P window setfont Helvetica 9.;
#P user filtergraph~ 166 20 88 39 21 9 20. 22050. 0.0625 16. 0 1 1 0 0 1 1;
#X frgb 99 99 99;
#X brgb 173 173 173;
#X rgb2 0 0 0;
#X rgb3 84 84 84;
#X rgb4 0 0 0;
#X rgb5 118 121 166;
#X rgb6 122 74 74;
#X rgb7 255 22 22;
#X linmarkers 5512.5 11025. 16537.5;
#X logmarkers 50. 500. 5000.;
#X nfilters 1;
#X setfilter 0 5 1 0 0 1200. 0.36 0.95 30. 11025. 0.0625 16. 0.5 25.;
#X done;
#P objectname FilterGraph;
#P window setfont "Sans Serif" 9.;
#P hidden comment 175 81 101 196617 ---signal outputs---;
#P comment 14 109 79 196617 command input;
#P window linecount 3;
#P newex 0 128 157 196617 jmod.hub $0_ jmod.filter~ @size 1U-half @module_type audio @num_inputs 2 @num_outputs 2;
#P hidden outlet 244 67 13 0;
#P hidden inlet 59 -21 13 0;
#P window linecount 1;
#P hidden comment 58 -35 105 196617 ----signal inputs----;
#P outlet 0 177 13 0;
#P hidden inlet 82 -21 13 0;
#P hidden outlet 183 67 13 0;
#P inlet 0 109 13 0;
#P bpatcher 0 0 256 60 0 0 jmod.gui.mxt 0 $0_;
#P objectname jmod.gui.1Uh.a.stereo.mxb;
#P window linecount 3;
#P comment 201 572 257 196617 Convertion from freq \, gain and q to biquad coeffisients has to take place inside the poly~ (.alg) in case the poly is up- or downsampled.;
#P hidden connect 7 0 1 0;
#P connect 2 0 9 0;
#P connect 9 0 5 0;
#P connect 19 0 32 0;
#P connect 32 0 33 0;
#P fasten 21 1 26 0 405 311 56 311;
#P hidden connect 4 0 1 1;
#P connect 20 0 32 1;
#P connect 24 0 9 1;
#P connect 18 0 32 2;
#P connect 9 2 24 0;
#P hidden fasten 13 0 1 2 267 205 438 205 438 -12 169 -12;
#P hidden connect 23 0 12 0;
#P lcolor 6;
#P hidden connect 1 2 3 0;
#P fasten 21 0 27 0 210 281 198 281 198 228 210 228;
#P fasten 27 1 21 0 289 254 210 254;
#P fasten 19 0 29 0 210 392 199 392 199 335 210 335;
#P connect 26 3 19 0;
#P connect 29 0 19 0;
#P fasten 20 0 30 0 210 465 198 465 198 416 210 416;
#P connect 26 2 20 0;
#P connect 30 0 20 0;
#P fasten 18 0 28 0 210 553 201 553 201 505 210 505;
#P connect 26 1 18 0;
#P connect 28 0 18 0;
#P hidden connect 34 0 12 5;
#P hidden connect 1 3 8 0;
#P fasten 13 1 1 3 365 202 429 202 429 -5 251 -5;
#P hidden fasten 1 0 13 0 5 105 267 105;
#P lcolor 6;
#P fasten 9 1 13 0 78 173 267 173;
#P hidden fasten 1 1 13 1 87 102 365 102;
#P lcolor 6;
#P pop;
