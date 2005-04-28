max v2;
#N vpatcher 47 50 686 567;
#P window setfont "Sans Serif" 9.;
#P newex 67 319 78 196617 pvar Algorithm;
#P newex 67 258 64 196617 pvar Thresh;
#P flonum 106 20 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P objectname Thresh;
#P comment 67 22 39 196617 thresh;
#P user ubumenu 106 39 60 196617 0 1 1 0;
#X add Sobel;
#X add Prewitt;
#X add Robcross;
#X prefix_set 0 0 0 0;
#X pattrmode 1;
#P objectname Algorithm;
#P comment 57 41 53 196617 algorithm;
#P newex 67 278 212 196617 jmod.parameter $0_ thresh @ramp_enable 1;
#P objectname jmod.parameter.mxb;
#P newex 67 340 205 196617 jmod.parameter $0_ algorithm @type menu;
#P objectname jmod.parameter.mxb[1];
#P newex 204 99 79 196617 pattrstorage @autorestore 0 @savemode 0;
#X client_rect 0 0 640 240;
#X storage_rect 0 0 640 240;
#P objectname jmod.edge%;
#P comment 152 197 75 196617 VIDEO OUTPUT;
#P outlet 137 197 13 0;
#P inlet 206 147 13 0;
#P comment 221 147 65 196617 VIDEO INPUT;
#P newex 137 165 79 196617 jmod.edge%.alg;
#P message 67 373 72 196617 \; jmod.init bang;
#B color 3;
#P comment 14 84 79 196617 command input;
#P newex 0 109 194 196617 jmod.hub $0_ jmod.edge% @size 1U-half @library_type jitter;
#P outlet 0 171 13 0;
#P inlet 0 84 13 0;
#P bpatcher 0 0 256 60 0 0 jmod.gui.1Uh.v.mxt 0 $0_;
#P objectname jmod.gui.1Uh.v.mxb;
#P hidden fasten 6 0 0 0 142 191 511 191 511 -9 5 -9;
#P connect 1 0 3 0;
#P connect 3 0 2 0;
#P fasten 13 0 18 0 72 299 63 299 63 254 72 254;
#P connect 18 0 13 0;
#P fasten 12 0 19 0 72 362 63 362 63 314 72 314;
#P connect 19 0 12 0;
#P connect 3 1 6 0;
#P connect 6 0 9 0;
#P connect 11 0 3 1;
#P connect 3 2 11 0;
#P connect 8 0 6 1;
#P pop;
