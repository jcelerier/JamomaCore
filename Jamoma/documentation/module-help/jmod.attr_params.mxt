max v2;#N vpatcher 60 65 660 465;#P origin -9 -10;#P window setfont "Sans Serif" 9.;#P flonum 194 38 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P window linecount 1;#P message 228 38 131 196617 $1 \$1 ramp 2000;#P flonum 194 61 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 228 61 134 196617 $1:stepsize \$1;#P hidden outlet 411 213 15 0;#P comment 196 112 160 196617 change this parameter's datatype;#P comment 10 126 183 196617 print all attributes of this parameter :;#P comment 9 112 167 196617 change this parameter's rampmode;#P window setfont "Sans Serif" 18.;#P comment 4 2 298 196626 Addressing attributes Properties;#P user panel 0 0 373 27;#X brgb 152 152 179;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P window setfont "Sans Serif" 9.;#P message 7 48 148 196617 $1:dec;#P message 7 31 148 196617 $1:inc;#P message 194 125 124 196617 $1:dump;#P message 194 97 168 196617 $1:type msg_int;#P message 194 81 168 196617 $1:type msg_float;#P message 8 97 149 196617 $1:ramp linear;#P message 8 81 149 196617 $1:ramp none;#P comment 6 63 182 196617 increase/decrease value by stepsize :;#P user panel 1 28 373 123;#X brgb 199 199 214;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P hidden connect 18 0 17 0;#P hidden connect 16 0 15 0;#P hidden connect 8 0 14 0;#P hidden connect 7 0 14 0;#P hidden connect 2 0 14 0;#P hidden connect 3 0 14 0;#P hidden connect 6 0 14 0;#P hidden connect 5 0 14 0;#P hidden connect 4 0 14 0;#P hidden connect 15 0 14 0;#P hidden connect 17 0 14 0;#P pop;