max v2;#N vpatcher 50 136 868 532;#P origin 10 -64;#P window setfont "Sans Serif" 9.;#P hidden newex 498 211 91 196617 pvar mouse_menu;#P window linecount 2;#P hidden newex 498 233 258 196617 jmod.parameter.mxt $0_ /mouse_menu @type menu @clipmode none @description "Choose reference mode";#P objectname jmod.parameter[2];#P user jsui 22 30 20 15 1 0 0 jmod.jsui_texttoggle.js off on;#P objectname mouse_on;#P user umenu 148 31 100 196647 1 64 47 1;#X add Screen;#X add Click;#P objectname mouse_menu;#P window linecount 1;#P hidden newex 495 131 78 196617 pvar mouse_on;#P window linecount 2;#P hidden newex 495 153 239 196617 jmod.parameter.mxt $0_ /mouse_on @type toggle @clipmode none @description "Turn polling on";#P objectname jmod.parameter[1];#P window linecount 1;#P hidden newex 142 163 37 196617 t open;#P hidden newex 142 187 45 196617 pcontrol;#P hidden newex 142 139 91 196617 jmod.pass open;#P hidden message 38 69 50 196617 /autodoc;#P window linecount 2;#P hidden message 16 229 66 196617 \; max refresh;#P hidden message 16 195 75 196617 \; jmod.init bang;#P window linecount 1;#P hidden newex 142 255 101 196617 jmod.mouse.alg $0_;#P window linecount 2;#P hidden newex 16 94 262 196617 jmod.hub $0_ jmod.mouse @size 1U-half @module_type control @description "Output information from mouse";#P objectname jmod.hub;#P hidden inlet 16 70 13 0;#P hidden outlet 16 167 13 0;#P window linecount 3;#P hidden newex 350 94 79 196617 pattrstorage @autorestore 0 @savemode 0;#X client_rect 14 59 654 299;#X storage_rect 0 0 640 240;#P objectname u761000179;#P window linecount 1;#P hidden message 248 222 153 196617 /disable_ui_updates 0;#P hidden newex 248 200 61 196617 prepend set;#P comment 93 33 55 196617 Reference;#B frgb 255 255 255;#P bpatcher 0 0 256 62 0 0 jmod.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P hidden connect 6 0 7 0;#P hidden fasten 11 0 7 0 43 88 21 88;#P hidden connect 7 0 5 0;#P hidden connect 7 1 12 0;#P hidden connect 12 0 14 0;#P hidden connect 14 0 13 0;#P hidden fasten 12 1 8 0 228 211 147 211;#P hidden connect 13 0 8 0;#P hidden fasten 12 1 2 0 228 191 253 191;#P hidden connect 2 0 3 0;#P hidden connect 4 0 7 1;#P hidden connect 7 2 4 0;#P hidden fasten 15 0 16 0 500 186 488 186 488 126 500 126;#P hidden connect 16 0 15 0;#P hidden fasten 19 0 20 0 503 266 491 266 491 206 503 206;#P hidden connect 20 0 19 0;#P pop;