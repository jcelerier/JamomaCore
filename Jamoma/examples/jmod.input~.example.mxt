max v2;
#N vpatcher 324 69 931 708;
#P bpatcher 300 430 255 121 0 0 jmod.control.mod 0;
#P window setfont "Sans Serif" 9.;
#P hidden newex 71 559 65 196617 loadmess set;
#P hidden newex 165 380 65 196617 loadmess set;
#P message 101 403 98 196617;
#P hidden newex 101 380 61 196617 prepend set;
#P window setfont "Sans Serif" 12.;
#P comment 15 128 132 196620 adc~: Input Channels;
#P comment 15 58 115 196620 Sources;
#P window setfont "Sans Serif" 9.;
#P number 30 171 35 9 1 512 3 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P number 30 151 35 9 1 512 3 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P message 67 171 82 196617 set_right_ch \$1;
#P message 67 151 75 196617 set_left_ch \$1;
#P message 8 580 104 196617 gain_2_midi 0;
#P newex 8 559 61 196617 prepend set;
#P newex 130 580 132 196617 dac~;
#P hidden newex 181 290 91 196617 s jmod.input~.help;
#P message 30 305 44 196617 sf_open;
#P message 30 287 85 196617 sf_open anton.aif;
#P message 47 258 55 196617 modout \$1;
#P toggle 30 258 15 0;
#P message 47 239 42 196617 loop \$1;
#P toggle 30 239 15 0;
#P message 47 219 43 196617 play \$1;
#P toggle 30 219 15 0;
#P user umenu 30 80 123 196647 1 64 96 1;
#X add No Input;
#X add Live Input;
#X add Soundfile;
#X add Test Tone: 1 kHz;
#X add Test Source: Pink Noise;
#P message 30 100 85 196617 source_select \$1;
#P newex 8 402 91 196617 r jmod.input~.help;
#P bpatcher 8 430 255 122 0 0 jmod.input~.mod 0;
#P objectname jmod.input~.mod;
#P window setfont "Sans Serif" 18.;
#P comment 15 27 128 196626 Input Control;
#P bpatcher 181 25 374 244 0 0 jmod.gain_params.mxt 0;
#P window setfont "Sans Serif" 12.;
#P comment 15 198 116 196620 Sound File Control;
#P user panel 7 25 167 27;
#X brgb 174 239 175;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P user panel 7 126 167 66;
#X brgb 174 239 175;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P user panel 7 56 167 66;
#X brgb 174 239 175;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P user panel 7 196 167 129;
#X brgb 174 239 175;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P connect 8 0 7 0;
#P connect 7 0 21 0;
#P connect 21 0 22 0;
#P hidden fasten 32 0 22 0 76 578 13 578;
#P connect 10 0 9 0;
#P hidden connect 11 0 12 0;
#P hidden connect 13 0 14 0;
#P hidden connect 15 0 16 0;
#P hidden connect 25 0 23 0;
#P hidden connect 26 0 24 0;
#P hidden connect 8 0 29 0;
#P hidden connect 29 0 30 0;
#P hidden connect 31 0 30 0;
#P connect 7 1 20 0;
#P hidden connect 23 0 19 0;
#P hidden connect 24 0 19 0;
#P hidden connect 9 0 19 0;
#P hidden connect 12 0 19 0;
#P hidden connect 14 0 19 0;
#P hidden connect 16 0 19 0;
#P hidden connect 17 0 19 0;
#P hidden connect 18 0 19 0;
#P hidden connect 5 0 19 0;
#P connect 7 2 20 1;
#P pop;
