max v2;#N vpatcher 33 98 733 342;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 50 119 1037 521;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P newex 780 181 44 196617 prepend interp;#P window linecount 0;#P newex 630 181 64 196617 prepend colormode;#P newex 630 148 104 196617 jcom.pass argb uyvy;#P outlet 50 301 15 0;#P window linecount 1;#P newex 480 148 64 196617 unpack 0. 0.;#P window linecount 2;#P newex 550 181 68 196617 prepend tex_scale_y;#P newex 480 181 68 196617 prepend tex_scale_x;#P newex 404 181 72 196617 prepend tex_offset_y;#P newex 330 181 72 196617 prepend tex_offset_x;#P window linecount 1;#P newex 330 148 64 196617 unpack 0. 0.;#P newex 330 109 613 196617 jcom.oscroute /texture/offset /texture/scale /colormode /interpolate;#P newex 50 80 294 196617 jcom.pass /client_storage /dim /displaylist /gridmode /nudge;#P newex 50 50 130 196617 jcom.oscroute /videoplane;#P inlet 50 30 15 0;#P connect 0 0 1 0;#P connect 1 0 2 0;#P connect 2 4 10 0;#P connect 2 3 10 0;#P connect 2 2 10 0;#P connect 2 1 10 0;#P connect 2 0 10 0;#P connect 13 0 10 0;#P connect 5 0 10 0;#P connect 6 0 10 0;#P connect 7 0 10 0;#P connect 8 0 10 0;#P connect 12 0 10 0;#P connect 2 5 3 0;#P connect 3 0 4 0;#P connect 4 0 5 0;#P connect 4 1 6 0;#P connect 3 1 9 0;#P connect 9 0 7 0;#P connect 9 1 8 0;#P connect 3 2 11 0;#P connect 11 0 12 0;#P connect 11 1 12 0;#P connect 3 3 13 0;#P pop;#P newobj 302 56 91 196617 p class.videoplane;#P newex 150 56 148 196617 jcom.class.gl_group.route.mxt;#P newex 452 142 99 196617 jit.gl.videoplane bar;#N thispatcher;#Q end;#P newobj 75 143 60 196617 thispatcher;#B color 12;#P newex 75 122 39 196617 t front;#B color 12;#P inlet 452 48 15 0;#P inlet 15 35 15 0;#P comment 467 185 75 196617 VIDEO OUTPUT;#P outlet 452 185 15 0;#P newex 15 56 131 196617 sel /video/genframe open;#P connect 3 0 0 0;#P connect 0 1 5 0;#P lcolor 13;#P connect 5 0 6 0;#P lcolor 13;#P connect 0 2 8 0;#P connect 8 1 9 0;#P connect 4 0 7 0;#P fasten 8 0 7 0 155 107 457 107;#P fasten 0 0 7 0 20 107 457 107;#P fasten 9 0 7 0 307 107 457 107;#P connect 7 0 1 0;#P pop;