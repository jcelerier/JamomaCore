max v2;#N vpatcher 508 44 1192 621;#P origin -194 -7;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 361 44 961 444;#P window setfont "Sans Serif" 9.;#P user jit.fpsgui 114 316 60 196617 3;#P newex 177 183 65 196617 jcom.change;#P message 357 249 88 196617 exportimage jpeg;#P message 254 254 39 196617 getdim;#P inlet 256 56 15 0;#P inlet 39 58 15 0;#P newex 256 170 35 196617 zl join;#P newex 281 148 82 196617 r to-slider-time;#P newex 256 127 55 196617 v filename;#P newex 225 304 65 196617 print picture;#P newex 107 183 65 196617 jcom.change;#P newex 107 155 124 196617 jcom.pass dim planecount;#P newex 256 193 155 196617 sprintf exportimage %s-%ld tiff;#P newex 107 128 71 196617 jit.matrixinfo;#P newex 107 278 128 196617 jit.matrix 4 char 320 240;#P connect 9 0 1 0;#P connect 1 0 3 0;#P connect 3 0 4 0;#P connect 2 0 0 0;#P connect 11 0 0 0;#P fasten 12 0 0 0 362 271 112 271;#P connect 4 0 0 0;#P connect 9 0 0 0;#P connect 13 0 0 0;#P connect 0 0 14 0;#P connect 3 1 13 0;#P connect 0 1 5 0;#P connect 10 0 6 0;#P connect 6 0 8 0;#P connect 8 0 2 0;#P connect 7 0 8 1;#P pop;#P newobj 566 106 57 196617 p snapshot;#P button 262 91 15 0;#P message 262 123 88 196617 exportimage jpeg;#P newex 335 253 21 196617 t 1;#P newex 110 131 27 196617 - 1;#P newex 210 325 27 196617 + 1;#P message 464 453 175 196617 dstdimstart 0 \$1 \, dstdimend 319 \$1;#N counter 0 0 239;#X flags 0 0;#P newobj 464 431 83 196617 counter 0 0 239;#P newex 278 405 47 196617 gate 2 1;#P message 278 453 175 196617 dstdimstart \$1 0 \, dstdimend \$1 239;#P newex 273 377 27 196617 t l b;#N counter 0 0 319;#X flags 0 0;#P newobj 278 431 83 196617 counter 0 0 319;#P newex 156 487 194 196617 jit.matrix 4 char 720 240 @usedstdim 1;#P objectname xraymean[3];#P newex 256 353 68 196617 jit.normalize;#P objectname xraymean[4];#P toggle 335 277 15 0;#P objectname toggledim[2];#P message 335 297 48 196617 mean \$1;#P toggle 266 277 15 0;#P objectname toggledim[3];#P message 266 297 63 196617 meandim \$1;#P newex 256 325 284 196617 xray.jit.mean @out_name meanvector @meandim 0 @mean 1;#B color 5;#P objectname xraymean[5];#P newex 335 231 58 196617 r jmod.init;#N comlet Motiongram;#P outlet 156 517 15 0;#N comlet Mean values;#P outlet 20 517 15 0;#P comment 449 34 45 196617 Video in;#P newex 50 61 277 196617 jcom.oscroute /dim_x /dim_y /clear /mode /exportimage;#P newex 23 129 27 196617 - 1;#P number 100 106 35 9 0 0 32 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 0 153 110 196617 pak dim 1024 150;#P number 50 106 35 9 0 0 32 3 0 0 0 221 221 221 222 222 222 0 0 0;#P button 156 106 15 0;#P message 156 137 33 196617 clear;#P message 167 262 14 196617 0;#P inlet 426 34 15 0;#P inlet 50 34 15 0;#P window linecount 3;#P comment 408 97 153 196617 Should a some more advanced exportimage functions with automatic name \, etc.;#P connect 20 0 12 0;#P fasten 6 0 9 0 55 125 28 125;#P connect 1 0 10 0;#P connect 10 0 6 0;#P connect 6 0 7 1;#P connect 10 1 8 0;#P connect 8 0 7 2;#P connect 8 0 29 0;#P connect 10 2 5 0;#P connect 5 0 4 0;#P connect 4 0 21 0;#P connect 7 0 21 0;#P connect 23 0 21 0;#P fasten 24 0 21 0 283 471 161 471;#P fasten 27 0 21 0 469 471 161 471;#P connect 31 0 21 0;#P connect 21 0 13 0;#P fasten 5 0 3 0 161 129 172 129;#P connect 17 0 28 0;#P connect 2 0 15 0;#P fasten 18 0 15 0 340 318 261 318;#P fasten 16 0 15 0 271 318 261 318;#P connect 15 0 20 0;#P connect 10 4 32 0;#P connect 32 0 31 0;#P connect 10 3 17 0;#P connect 17 0 16 0;#P connect 20 0 23 0;#P fasten 28 0 25 0 215 400 283 400;#P connect 25 0 22 0;#P connect 22 0 24 0;#P connect 3 0 22 2;#P lcolor 6;#P fasten 23 1 25 1 295 397 320 397;#P connect 14 0 30 0;#P connect 30 0 19 0;#P connect 19 0 18 0;#P connect 9 0 22 4;#P lcolor 5;#P fasten 25 1 26 0 320 426 469 426;#P connect 26 0 27 0;#P connect 3 0 26 2;#P lcolor 6;#P connect 29 0 26 4;#P lcolor 5;#P pop;