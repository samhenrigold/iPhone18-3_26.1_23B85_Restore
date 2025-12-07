void sub_1008FF11C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v438 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v436 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v436 - v7;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v9 - 8);
  v11 = v436 - v10;
  v441 = sub_1000BC4D4(&qword_1016AE240, &qword_1013C56B8);
  v439 = *(v441 - 8);
  __chkstk_darwin(v441);
  v13 = v436 - v12;
  v14 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v14);
  v16 = v436 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v443 = a1;
  sub_1000035D0(a1, v17);
  sub_10090CCEC();
  v440 = v13;
  v18 = v442;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    sub_100007BAC(v443);
  }

  else
  {
    v19 = v11;
    v20 = v439;
    v437 = v14;
    v442 = v16;
    LOBYTE(v444) = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v442;
    *v442 = v445;
    LOBYTE(v445) = 1;
    *(v21 + 2) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21[24] = v22 & 1;
    LOBYTE(v444) = 2;
    sub_10090CD40();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21[25] = v445;
    LOBYTE(v445) = 3;
    *(v21 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21[40] = v23 & 1;
    LOBYTE(v445) = 4;
    *(v21 + 6) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21[56] = v24 & 1;
    LOBYTE(v445) = 5;
    v21[57] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v436[3] = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    LOBYTE(v444) = 6;
    sub_100758BE4(&qword_1016A8A58, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v21 + 8) = v445;
    LOBYTE(v445) = 7;
    v21[72] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v445) = 8;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v442;
    *(v442 + 10) = v25;
    *(v26 + 11) = v27;
    LOBYTE(v445) = 9;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v442;
    *(v442 + 12) = v28;
    v29[104] = v30 & 1;
    LOBYTE(v445) = 10;
    v442[105] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v445) = 11;
    v442[106] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v445) = 12;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v442;
    *(v442 + 14) = v31;
    v32[120] = v33 & 1;
    LOBYTE(v445) = 13;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v442;
    *(v442 + 16) = v34;
    v35[136] = v36 & 1;
    LOBYTE(v445) = 14;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v442;
    *(v442 + 18) = v37;
    v38[152] = v39 & 1;
    LOBYTE(v445) = 15;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v442;
    *(v442 + 20) = v40;
    v41[168] = v42 & 1;
    LOBYTE(v445) = 16;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = v442;
    *(v442 + 22) = v43;
    v44[184] = v45 & 1;
    LOBYTE(v445) = 17;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v442;
    *(v442 + 24) = v46;
    v47[200] = v48 & 1;
    LOBYTE(v445) = 18;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v442;
    *(v442 + 26) = v49;
    v50[216] = v51 & 1;
    LOBYTE(v445) = 19;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v442;
    *(v442 + 28) = v52;
    v53[232] = v54 & 1;
    LOBYTE(v445) = 20;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v442;
    *(v442 + 30) = v55;
    v56[248] = v57 & 1;
    LOBYTE(v445) = 21;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v442;
    *(v442 + 32) = v58;
    v59[264] = v60 & 1;
    LOBYTE(v445) = 22;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v442;
    *(v442 + 34) = v61;
    v62[280] = v63 & 1;
    LOBYTE(v445) = 23;
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v442;
    *(v442 + 36) = v64;
    v65[296] = v66 & 1;
    LOBYTE(v445) = 24;
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v68 = v442;
    *(v442 + 38) = v67;
    v68[312] = v69 & 1;
    LOBYTE(v445) = 25;
    v442[313] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BC4D4(&qword_101697E90, &qword_10138EB50);
    LOBYTE(v444) = 26;
    sub_10090CD94();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v442 + 40) = v445;
    LOBYTE(v445) = 27;
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v71 = v442;
    *(v442 + 41) = v70;
    v71[336] = v72 & 1;
    LOBYTE(v445) = 28;
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v74 = v442;
    *(v442 + 43) = v73;
    v74[352] = v75 & 1;
    LOBYTE(v445) = 29;
    v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v77 = v442;
    *(v442 + 45) = v76;
    v77[368] = v78 & 1;
    LOBYTE(v445) = 30;
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v80 = v442;
    *(v442 + 47) = v79;
    v80[384] = v81 & 1;
    LOBYTE(v445) = 31;
    v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v83 = v442;
    *(v442 + 49) = v82;
    v83[400] = v84 & 1;
    LOBYTE(v445) = 32;
    v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v86 = v442;
    *(v442 + 51) = v85;
    v86[416] = v87 & 1;
    LOBYTE(v445) = 33;
    v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v89 = v442;
    *(v442 + 53) = v88;
    v89[432] = v90 & 1;
    LOBYTE(v445) = 34;
    v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v92 = v442;
    *(v442 + 55) = v91;
    v92[448] = v93 & 1;
    LOBYTE(v445) = 35;
    v94 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v95 = v442;
    *(v442 + 57) = v94;
    v95[464] = v96 & 1;
    LOBYTE(v445) = 36;
    v97 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v98 = v442;
    *(v442 + 59) = v97;
    v98[480] = v99 & 1;
    LOBYTE(v445) = 37;
    v442[481] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v445) = 38;
    v100 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v101 = v442;
    *(v442 + 61) = v100;
    v101[496] = v102 & 1;
    LOBYTE(v445) = 39;
    v103 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v104 = v442;
    *(v442 + 63) = v103;
    v104[512] = v105 & 1;
    LOBYTE(v445) = 40;
    v106 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v107 = v442;
    *(v442 + 65) = v106;
    v107[528] = v108 & 1;
    LOBYTE(v445) = 41;
    v109 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v110 = v442;
    *(v442 + 67) = v109;
    v110[544] = v111 & 1;
    LOBYTE(v445) = 42;
    v112 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v113 = v442;
    *(v442 + 69) = v112;
    v113[560] = v114 & 1;
    LOBYTE(v445) = 43;
    v115 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v116 = v442;
    *(v442 + 71) = v115;
    v116[576] = v117 & 1;
    LOBYTE(v445) = 44;
    v118 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v119 = v442;
    *(v442 + 73) = v118;
    v119[592] = v120 & 1;
    sub_1000BC4D4(&qword_101697EA0, &qword_10138EB60);
    LOBYTE(v444) = 45;
    sub_10090D0F8(&qword_1016A81B8, sub_1007413FC, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v442 + 75) = v445;
    LOBYTE(v445) = 46;
    v121 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v122 = v442;
    *(v442 + 76) = v121;
    v122[616] = v123 & 1;
    LOBYTE(v445) = 47;
    v124 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v125 = v442;
    *(v442 + 78) = v124;
    v125[632] = v126 & 1;
    type metadata accessor for SPServiceState(0);
    LOBYTE(v444) = 48;
    sub_10090D1C4(&qword_1016AE270, type metadata accessor for SPServiceState, &protocol conformance descriptor for SPServiceState);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v442 + 80) = v445;
    sub_1000BC4D4(&qword_101697E78, &qword_1013F0760);
    LOBYTE(v444) = 49;
    sub_10090CEA4(&qword_1016AE278, &qword_1016AE280, &protocol conformance descriptor for SPDisabledReason, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v442 + 81) = v445;
    LOBYTE(v445) = 50;
    v127 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v128 = v442;
    *(v442 + 82) = v127;
    v128[664] = v129 & 1;
    LOBYTE(v445) = 51;
    v130 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v131 = v442;
    *(v442 + 84) = v130;
    v131[680] = v132 & 1;
    LOBYTE(v445) = 52;
    v133 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v134 = v442;
    *(v442 + 86) = v133;
    v134[696] = v135 & 1;
    LOBYTE(v445) = 53;
    v136 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v137 = v442;
    *(v442 + 88) = v136;
    v137[712] = v138 & 1;
    LOBYTE(v445) = 54;
    v139 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v140 = v442;
    *(v442 + 90) = v139;
    v140[728] = v141 & 1;
    LOBYTE(v445) = 55;
    v442[729] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    type metadata accessor for UUID();
    LOBYTE(v445) = 56;
    sub_10090D1C4(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000D2AD8(v19, &v442[v437[60]], &qword_1016980D0, &unk_10138F3B0);
    type metadata accessor for Date();
    LOBYTE(v445) = 57;
    sub_10090D1C4(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000D2AD8(v8, &v442[v437[61]], &unk_101696900, &unk_10138B1E0);
    LOBYTE(v445) = 58;
    v142 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v143 = &v442[v437[62]];
    *v143 = v142;
    v143[8] = v144 & 1;
    LOBYTE(v445) = 59;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000D2AD8(v6, &v442[v437[63]], &unk_101696900, &unk_10138B1E0);
    LOBYTE(v445) = 60;
    v145 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v146 = &v442[v437[64]];
    *v146 = v145;
    v146[8] = v147 & 1;
    LOBYTE(v445) = 61;
    v148 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v149 = &v442[v437[65]];
    *v149 = v148;
    v149[8] = v150 & 1;
    LOBYTE(v445) = 62;
    v151 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v152 = &v442[v437[66]];
    *v152 = v151;
    v152[8] = v153 & 1;
    LOBYTE(v445) = 63;
    v154 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v155 = &v442[v437[67]];
    *v155 = v154;
    v155[8] = v156 & 1;
    LOBYTE(v445) = 64;
    v157 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v158 = &v442[v437[68]];
    *v158 = v157;
    v158[8] = v159 & 1;
    LOBYTE(v445) = 65;
    v160 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v161 = &v442[v437[69]];
    *v161 = v160;
    v161[8] = v162 & 1;
    v453 = 66;
    sub_10090CF40();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v163 = &v442[v437[70]];
    v164 = v450;
    *(v163 + 4) = v449;
    *(v163 + 5) = v164;
    *(v163 + 6) = v451;
    v165 = v446;
    *v163 = v445;
    *(v163 + 1) = v165;
    v166 = v448;
    *(v163 + 2) = v447;
    *(v163 + 3) = v166;
    LOBYTE(v444) = 67;
    v442[v437[71]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 68;
    v442[v437[72]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 69;
    v442[v437[73]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 70;
    v167 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v168 = &v442[v437[74]];
    *v168 = v167;
    v168[8] = v169 & 1;
    LOBYTE(v444) = 71;
    v170 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v171 = &v442[v437[75]];
    *v171 = v170;
    v171[8] = v172 & 1;
    LOBYTE(v444) = 72;
    v173 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v174 = &v442[v437[76]];
    *v174 = v173;
    v174[8] = v175 & 1;
    LOBYTE(v444) = 73;
    v176 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v177 = &v442[v437[77]];
    *v177 = v176;
    v177[8] = v178 & 1;
    LOBYTE(v444) = 74;
    v179 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v180 = &v442[v437[78]];
    *v180 = v179;
    v180[8] = v181 & 1;
    LOBYTE(v444) = 75;
    v182 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v183 = &v442[v437[79]];
    *v183 = v182;
    v183[8] = v184 & 1;
    LOBYTE(v444) = 76;
    v185 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v186 = &v442[v437[80]];
    *v186 = v185;
    v186[8] = v187 & 1;
    LOBYTE(v444) = 77;
    v188 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v189 = &v442[v437[81]];
    *v189 = v188;
    v189[8] = v190 & 1;
    LOBYTE(v444) = 78;
    v191 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v192 = &v442[v437[82]];
    *v192 = v191;
    v192[8] = v193 & 1;
    LOBYTE(v444) = 79;
    v194 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v195 = &v442[v437[83]];
    *v195 = v194;
    v195[1] = v196;
    LOBYTE(v444) = 80;
    v197 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v198 = &v442[v437[84]];
    *v198 = v197;
    v198[8] = v199 & 1;
    LOBYTE(v444) = 81;
    v200 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v201 = &v442[v437[85]];
    *v201 = v200;
    v201[1] = v202;
    LOBYTE(v444) = 82;
    v203 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v204 = &v442[v437[86]];
    *v204 = v203;
    v204[8] = v205 & 1;
    sub_1000BC4D4(&qword_101697E40, qword_1013C5620);
    v452 = 83;
    sub_100391400(&qword_10169EA80, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v442[v437[87]] = v444;
    LOBYTE(v444) = 84;
    v206 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v207 = &v442[v437[88]];
    *v207 = v206;
    v207[1] = v208;
    LOBYTE(v444) = 85;
    v209 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v210 = &v442[v437[89]];
    *v210 = v209;
    v210[8] = v211 & 1;
    LOBYTE(v444) = 86;
    v442[v437[90]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 87;
    v442[v437[91]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 88;
    v442[v437[92]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 89;
    v442[v437[93]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 90;
    v212 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = &v442[v437[94]];
    *v213 = v212;
    v213[8] = v214 & 1;
    LOBYTE(v444) = 91;
    v215 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v216 = &v442[v437[95]];
    *v216 = v215;
    v216[8] = v217 & 1;
    LOBYTE(v444) = 92;
    v218 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v219 = &v442[v437[96]];
    *v219 = v218;
    v219[8] = v220 & 1;
    LOBYTE(v444) = 93;
    v221 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v222 = &v442[v437[97]];
    *v222 = v221;
    v222[8] = v223 & 1;
    LOBYTE(v444) = 94;
    v224 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v225 = &v442[v437[98]];
    *v225 = v224;
    v225[8] = v226 & 1;
    LOBYTE(v444) = 95;
    v227 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v228 = &v442[v437[99]];
    *v228 = v227;
    v228[8] = v229 & 1;
    LOBYTE(v444) = 96;
    v230 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v231 = &v442[v437[100]];
    *v231 = v230;
    v231[8] = v232 & 1;
    LOBYTE(v444) = 97;
    v233 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v234 = &v442[v437[101]];
    *v234 = v233;
    v234[8] = v235 & 1;
    LOBYTE(v444) = 98;
    v236 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v237 = &v442[v437[102]];
    *v237 = v236;
    v237[8] = v238 & 1;
    LOBYTE(v444) = 99;
    v239 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v240 = &v442[v437[103]];
    *v240 = v239;
    v240[8] = v241 & 1;
    LOBYTE(v444) = 100;
    v242 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v243 = &v442[v437[104]];
    *v243 = v242;
    v243[8] = v244 & 1;
    LOBYTE(v444) = 101;
    v245 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v246 = &v442[v437[105]];
    *v246 = v245;
    v246[8] = v247 & 1;
    LOBYTE(v444) = 102;
    v248 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v249 = &v442[v437[106]];
    *v249 = v248;
    v249[8] = v250 & 1;
    LOBYTE(v444) = 103;
    v251 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v252 = &v442[v437[107]];
    *v252 = v251;
    v252[8] = v253 & 1;
    LOBYTE(v444) = 104;
    v254 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v255 = &v442[v437[108]];
    *v255 = v254;
    v255[8] = v256 & 1;
    LOBYTE(v444) = 105;
    v257 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v258 = &v442[v437[109]];
    *v258 = v257;
    v258[8] = v259 & 1;
    LOBYTE(v444) = 106;
    v260 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v261 = &v442[v437[110]];
    *v261 = v260;
    v261[8] = v262 & 1;
    LOBYTE(v444) = 107;
    v263 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v264 = &v442[v437[111]];
    *v264 = v263;
    v264[8] = v265 & 1;
    LOBYTE(v444) = 108;
    v266 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v267 = &v442[v437[112]];
    *v267 = v266;
    v267[8] = v268 & 1;
    LOBYTE(v444) = 109;
    v269 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v270 = &v442[v437[113]];
    *v270 = v269;
    v270[8] = v271 & 1;
    LOBYTE(v444) = 110;
    v272 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v273 = &v442[v437[114]];
    *v273 = v272;
    v273[8] = v274 & 1;
    LOBYTE(v444) = 111;
    v275 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v276 = &v442[v437[115]];
    *v276 = v275;
    v276[8] = v277 & 1;
    LOBYTE(v444) = 112;
    v442[v437[116]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 113;
    v278 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v279 = &v442[v437[117]];
    *v279 = v278;
    v279[8] = v280 & 1;
    LOBYTE(v444) = 114;
    v281 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v282 = &v442[v437[118]];
    *v282 = v281;
    v282[8] = v283 & 1;
    LOBYTE(v444) = 115;
    v284 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v285 = &v442[v437[119]];
    *v285 = v284;
    v285[8] = v286 & 1;
    LOBYTE(v444) = 116;
    v442[v437[120]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 117;
    v442[v437[121]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 118;
    v442[v437[122]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 119;
    v287 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v288 = &v442[v437[123]];
    *v288 = v287;
    v288[8] = v289 & 1;
    LOBYTE(v444) = 120;
    v290 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v291 = &v442[v437[124]];
    *v291 = v290;
    v291[8] = v292 & 1;
    LOBYTE(v444) = 121;
    v293 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v294 = &v442[v437[125]];
    *v294 = v293;
    v294[8] = v295 & 1;
    LOBYTE(v444) = 122;
    v296 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v297 = &v442[v437[126]];
    *v297 = v296;
    v297[8] = v298 & 1;
    LOBYTE(v444) = 123;
    v299 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v300 = &v442[v437[127]];
    *v300 = v299;
    v300[8] = v301 & 1;
    LOBYTE(v444) = 124;
    v302 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v303 = &v442[v437[128]];
    *v303 = v302;
    v303[8] = v304 & 1;
    LOBYTE(v444) = 125;
    v305 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v306 = &v442[v437[129]];
    *v306 = v305;
    v306[8] = v307 & 1;
    LOBYTE(v444) = 126;
    v308 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v309 = &v442[v437[130]];
    *v309 = v308;
    v309[8] = v310 & 1;
    LOBYTE(v444) = 127;
    v442[v437[131]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = 0x80;
    v311 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v312 = &v442[v437[132]];
    *v312 = v311;
    v312[8] = v313 & 1;
    v452 = -127;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v442[v437[133]] = v444;
    LOBYTE(v444) = -126;
    v314 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v315 = &v442[v437[134]];
    *v315 = v314;
    v315[8] = v316 & 1;
    LOBYTE(v444) = -125;
    v442[v437[135]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BC4D4(&qword_101697E28, &qword_10138EA70);
    v452 = -124;
    sub_10090D260(&qword_1016AE290, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v442[v437[136]] = v444;
    LOBYTE(v444) = -123;
    v442[v437[137]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = -122;
    v317 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v318 = &v442[v437[138]];
    *v318 = v317;
    v318[8] = v319 & 1;
    LOBYTE(v444) = -121;
    v320 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v321 = &v442[v437[139]];
    *v321 = v320;
    v321[8] = v322 & 1;
    LOBYTE(v444) = -120;
    v442[v437[140]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = -119;
    v442[v437[141]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = -118;
    v323 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v324 = &v442[v437[142]];
    *v324 = v323;
    v324[8] = v325 & 1;
    LOBYTE(v444) = -117;
    v326 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v327 = &v442[v437[143]];
    *v327 = v326;
    v327[8] = v328 & 1;
    LOBYTE(v444) = -116;
    v329 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v330 = &v442[v437[144]];
    *v330 = v329;
    v330[8] = v331 & 1;
    LOBYTE(v444) = -115;
    v332 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v333 = &v442[v437[145]];
    *v333 = v332;
    v333[8] = v334 & 1;
    LOBYTE(v444) = -114;
    v335 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v336 = &v442[v437[146]];
    *v336 = v335;
    v336[8] = v337 & 1;
    LOBYTE(v444) = -113;
    v338 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v339 = &v442[v437[147]];
    *v339 = v338;
    v339[8] = v340 & 1;
    LOBYTE(v444) = -112;
    v341 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v342 = &v442[v437[148]];
    *v342 = v341;
    v342[8] = v343 & 1;
    LOBYTE(v444) = -111;
    v344 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v345 = &v442[v437[149]];
    *v345 = v344;
    v345[8] = v346 & 1;
    LOBYTE(v444) = -110;
    v347 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v348 = &v442[v437[150]];
    *v348 = v347;
    v348[8] = v349 & 1;
    LOBYTE(v444) = -109;
    v350 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v351 = &v442[v437[151]];
    *v351 = v350;
    v351[8] = v352 & 1;
    LOBYTE(v444) = -108;
    v353 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v354 = &v442[v437[152]];
    *v354 = v353;
    v354[8] = v355 & 1;
    LOBYTE(v444) = -107;
    v356 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v357 = &v442[v437[153]];
    *v357 = v356;
    v357[8] = v358 & 1;
    LOBYTE(v444) = -106;
    v359 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v360 = &v442[v437[154]];
    *v360 = v359;
    v360[8] = v361 & 1;
    LOBYTE(v444) = -105;
    v362 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v363 = &v442[v437[155]];
    *v363 = v362;
    v363[8] = v364 & 1;
    LOBYTE(v444) = -104;
    v365 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v366 = &v442[v437[156]];
    *v366 = v365;
    v366[8] = v367 & 1;
    LOBYTE(v444) = -103;
    v368 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v369 = &v442[v437[157]];
    *v369 = v368;
    v369[8] = v370 & 1;
    LOBYTE(v444) = -102;
    v371 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v372 = &v442[v437[158]];
    *v372 = v371;
    v372[8] = v373 & 1;
    LOBYTE(v444) = -101;
    v374 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v375 = &v442[v437[159]];
    *v375 = v374;
    v375[8] = v376 & 1;
    LOBYTE(v444) = -100;
    v442[v437[160]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = -99;
    v377 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v378 = &v442[v437[161]];
    *v378 = v377;
    v378[8] = v379 & 1;
    LOBYTE(v444) = -98;
    v380 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v381 = &v442[v437[162]];
    *v381 = v380;
    v381[8] = v382 & 1;
    LOBYTE(v444) = -97;
    v383 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v384 = &v442[v437[163]];
    *v384 = v383;
    v384[8] = v385 & 1;
    LOBYTE(v444) = -96;
    v386 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v387 = &v442[v437[164]];
    *v387 = v386;
    v387[1] = v388;
    LOBYTE(v444) = -95;
    v389 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v390 = &v442[v437[165]];
    *v390 = v389;
    v390[8] = v391 & 1;
    LOBYTE(v444) = -94;
    v442[v437[166]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = -93;
    v392 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v393 = &v442[v437[167]];
    *v393 = v392;
    v393[8] = v394 & 1;
    LOBYTE(v444) = -92;
    v442[v437[168]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = -91;
    v395 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v396 = &v442[v437[169]];
    *v396 = v395;
    v396[8] = v397 & 1;
    LOBYTE(v444) = -90;
    v398 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v399 = &v442[v437[170]];
    *v399 = v398;
    v399[8] = v400 & 1;
    LOBYTE(v444) = -89;
    v442[v437[171]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = -88;
    v401 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v402 = &v442[v437[172]];
    *v402 = v401;
    v402[4] = BYTE4(v401) & 1;
    LOBYTE(v444) = -87;
    v403 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v404 = &v442[v437[173]];
    *v404 = v403;
    v404[8] = v405 & 1;
    LOBYTE(v444) = -86;
    v406 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v407 = &v442[v437[174]];
    *v407 = v406;
    v407[8] = v408 & 1;
    LOBYTE(v444) = -85;
    v409 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v410 = &v442[v437[175]];
    *v410 = v409;
    v410[8] = v411 & 1;
    LOBYTE(v444) = -84;
    v412 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v413 = &v442[v437[176]];
    *v413 = v412;
    v413[8] = v414 & 1;
    LOBYTE(v444) = -83;
    v415 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v416 = &v442[v437[177]];
    *v416 = v415;
    v416[8] = v417 & 1;
    LOBYTE(v444) = -82;
    v418 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v419 = &v442[v437[178]];
    *v419 = v418;
    v419[8] = v420 & 1;
    LOBYTE(v444) = -81;
    v421 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v422 = &v442[v437[179]];
    *v422 = v421;
    v422[8] = v423 & 1;
    LOBYTE(v444) = -80;
    v442[v437[180]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v444) = -79;
    v424 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v425 = &v442[v437[181]];
    *v425 = v424;
    v425[8] = v426 & 1;
    LOBYTE(v444) = -78;
    v427 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v428 = &v442[v437[182]];
    *v428 = v427;
    v428[8] = v429 & 1;
    LOBYTE(v444) = -77;
    v430 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v431 = &v442[v437[183]];
    *v431 = v430;
    v431[1] = HIBYTE(v430) & 1;
    LOBYTE(v444) = -76;
    v432 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v21) = v433;
    (*(v20 + 8))(v440, v441);
    v434 = v442;
    v435 = &v442[v437[184]];
    *v435 = v432;
    v435[8] = v21 & 1;
    sub_100041EB0(v434, v438);
    sub_100007BAC(v443);
    sub_100041F5C(v434);
  }
}

uint64_t sub_100902CFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10090D528(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100902D30(uint64_t a1)
{
  v2 = sub_10090CCEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100902D6C(uint64_t a1)
{
  v2 = sub_10090CCEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100902DE4()
{
  v1 = *(v0 + 80);

  return v1;
}

void *sub_100902FC4()
{
  v1 = *(v0 + 640);
  v2 = v1;
  return v1;
}

uint64_t sub_10090326C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 332));

  return v2;
}

uint64_t sub_1009032B8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 340));

  return v2;
}

uint64_t sub_100903310(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 352));

  return v2;
}

uint64_t sub_1009038A4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 656));

  return v2;
}

uint64_t sub_100903AA0()
{
  sub_10090416C(&off_1016072A8);
  sub_10000B3A8(&unk_1016072C8, &qword_1016ADC80, &qword_1013C52D8);
  v0 = Dictionary<>.dataRepresentation.getter();
  v2 = v1;

  qword_10177B640 = v0;
  *algn_10177B648 = v2;
  return result;
}

uint64_t sub_100903B4C()
{
  sub_1000BC4D4(&qword_1016ADC38, &qword_1013C5298);
  v0 = (sub_1000BC4D4(&qword_1016ADC40, &qword_1013C52A0) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v17 = v2 + v1;
  v3 = v2 + v1 + v0[14];
  *(v2 + v1) = 1;
  v16 = sub_100904268(&off_101607340);
  sub_1000BC4D4(&qword_1016ADC48, &qword_1013C52A8);
  swift_arrayDestroy();
  sub_1000BC4D4(&qword_1016ADC50, &qword_1013C52B0);
  v4 = *(sub_1000BC4D4(&qword_1016ADC58, &qword_1013C52B8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138C0D0;
  v8 = (v7 + v6);
  *v8 = 0x656E6F685069;
  v8[1] = 0xE600000000000000;
  SystemVersionNumber.init(stringLiteral:)();
  v9 = (v8 + v5);
  *v9 = 1684099177;
  v9[1] = 0xE400000000000000;
  SystemVersionNumber.init(stringLiteral:)();
  v10 = (v8 + 2 * v5);
  *v10 = 0x506B6F6F4263614DLL;
  v10[1] = 0xEA00000000006F72;
  SystemVersionNumber.init(stringLiteral:)();
  v11 = (v8 + 3 * v5);
  *v11 = 0x416B6F6F4263614DLL;
  v11[1] = 0xEA00000000007269;
  SystemVersionNumber.init(stringLiteral:)();
  v12 = (v8 + 4 * v5);
  *v12 = 1685016681;
  v12[1] = 0xE400000000000000;
  SystemVersionNumber.init(stringLiteral:)();
  v13 = sub_100904364(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v3 = 1;
  *(v3 + 8) = v16;
  *(v3 + 16) = 0;
  *(v3 + 24) = v13;
  *(v3 + 32) = 0;
  type metadata accessor for FeatureSupportMatrix(0);
  sub_10088D764();
  sub_10090C518();
  CustomCodableKeyDictionary.init(wrappedValue:)();
  v14 = sub_100904550(v2);
  swift_setDeallocating();
  sub_10000B3A8(v17, &qword_1016ADC40, &qword_1013C52A0);
  result = swift_deallocClassInstance();
  qword_10177B650 = v14;
  return result;
}

id sub_100903F18()
{
  sub_1000BC4D4(&qword_10169EFF8, &qword_1013C5290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101385D80;
  v1 = SPDisabledReasoniCloudSignedOut;
  *(v0 + 32) = SPDisabledReasoniCloudSignedOut;
  qword_10177B660 = v0;

  return v1;
}

double sub_100903F80()
{
  xmmword_10177B670 = xmmword_1013C51A0;
  unk_10177B680 = xmmword_1013C51B0;
  xmmword_10177B690 = xmmword_1013C51C0;
  qword_10177B6A0 = &off_1016073D8;
  result = 0.0;
  *algn_10177B6A8 = 0u;
  *(&xmmword_10177B6B0 + 8) = 0u;
  unk_10177B6C8 = 0u;
  *(&xmmword_10177B6D0 + 1) = 0;
  return result;
}

void *sub_100903FCC()
{
  result = sub_100527B94();
  qword_10177B6E0 = result;
  return result;
}

uint64_t sub_100903FEC()
{
  v0 = sub_100904734(&off_101607470);
  result = sub_10000B3A8(&unk_101607490, &qword_1016ADC28, &qword_1013C5280);
  qword_10177B6E8 = v0;
  return result;
}

unint64_t sub_10090403C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016B1490, &unk_1013C5310);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v13, &unk_101695C20, &unk_101386D90);
      v5 = v13;
      v6 = v14;
      result = sub_100771D58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004D07C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090416C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADC88, &qword_1013C52E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100771D58(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100904268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADC78, &qword_1013C52D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100771D58(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100904364(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADC58, &qword_1013C52B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADC70, &qword_1013C52C8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADC58, &qword_1013C52B8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100771D58(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for SystemVersionNumber();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100904550(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADC40, &qword_1013C52A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADC68, &qword_1013C52C0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADC40, &qword_1013C52A0);
      v11 = *v5;
      result = sub_100771D84(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for FeatureSupportMatrix(0);
      result = sub_10090C57C(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for FeatureSupportMatrix);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100904734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADC30, &qword_1013C5288);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100771D58(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100904838(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v738 = *(v4 - 8);
  __chkstk_darwin(v4);
  v737 = &v726 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = __chkstk_darwin(v6 - 8);
  v735 = &v726 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v732 = &v726 - v9;
  v734 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v10 = __chkstk_darwin(v734);
  v736 = &v726 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v733 = &v726 - v12;
  v13 = type metadata accessor for UUID();
  v730 = *(v13 - 8);
  v731 = v13;
  __chkstk_darwin(v13);
  v729 = &v726 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v726 - v16;
  v18 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v18);
  v20 = &v726 - v19;
  v22 = *a1;
  v21 = a1[1];
  v739 = a1;
  v23 = *a2;
  v24 = a2[1];
  if (v21 >> 60 == 15)
  {
    if (v24 >> 60 == 15)
    {
      v728 = v4;
      v25 = a2;
      sub_10002E98C(v22, v21);
      sub_10002E98C(v23, v24);
      sub_100006654(v22, v21);
      goto LABEL_9;
    }

LABEL_5:
    sub_10002E98C(v22, v21);
    sub_10002E98C(v23, v24);
    sub_100006654(v22, v21);
    sub_100006654(v23, v24);
    return 0;
  }

  if (v24 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v728 = v4;
  v25 = a2;
  sub_10002E98C(v22, v21);
  sub_10002E98C(v23, v24);
  v27 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v22, v21, v23, v24);
  sub_100006654(v23, v24);
  sub_100006654(v22, v21);
  if (!v27)
  {
    return 0;
  }

LABEL_9:
  v28 = v739;
  v29 = *(v25 + 24);
  if (v739[3])
  {
    if (!*(v25 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v739[2] != v25[2])
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if ((sub_10076C508(*(v739 + 25), *(v25 + 25)) & 1) == 0)
  {
    return 0;
  }

  v30 = *(v25 + 40);
  if (v28[5])
  {
    if (!*(v25 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 4) != *(v25 + 4))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = *(v25 + 56);
  if (v28[7])
  {
    if (!*(v25 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(v28 + 6) != *(v25 + 6))
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v32 = *(v28 + 57);
  v33 = *(v25 + 57);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v33 == 2 || ((v33 ^ v32) & 1) != 0)
    {
      return result;
    }
  }

  v34 = v739;
  v35 = v739[8];
  v36 = v25[8];
  if (v35)
  {
    if (!v36 || (sub_10038ED80(v35, v36) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = *(v34 + 72);
  v38 = *(v25 + 72);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v38 == 2 || ((v38 ^ v37) & 1) != 0)
    {
      return result;
    }
  }

  v39 = v739;
  v40 = v739[11];
  v41 = v25[11];
  if (v40)
  {
    if (!v41 || (v739[10] != v25[10] || v40 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = *(v25 + 104);
  if (v39[13])
  {
    if (!*(v25 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v39[12] != v25[12])
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = *(v39 + 105);
  v44 = *(v25 + 105);
  if (v43 == 2)
  {
    if (v44 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v44 == 2 || ((v44 ^ v43) & 1) != 0)
    {
      return result;
    }
  }

  v45 = *(v739 + 106);
  v46 = *(v25 + 106);
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v46 == 2 || ((v46 ^ v45) & 1) != 0)
    {
      return result;
    }
  }

  v47 = *(v25 + 120);
  if (v739[15])
  {
    if (!*(v25 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (v739[14] != v25[14])
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  v48 = v25;
  v49 = *(v25 + 136);
  if (v739[17])
  {
    if (!*(v25 + 136))
    {
      return 0;
    }
  }

  else
  {
    if (v739[16] != v25[16])
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v50 = *(v25 + 152);
  if (v739[19])
  {
    if (!*(v25 + 152))
    {
      return 0;
    }
  }

  else
  {
    if (v739[18] != v25[18])
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  v51 = *(v25 + 168);
  if (v739[21])
  {
    if (!*(v25 + 168))
    {
      return 0;
    }
  }

  else
  {
    if (v739[20] != v25[20])
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  v52 = *(v25 + 184);
  if (v739[23])
  {
    if (!*(v25 + 184))
    {
      return 0;
    }
  }

  else
  {
    if (v739[22] != v25[22])
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  v53 = *(v25 + 200);
  if (v739[25])
  {
    if (!*(v25 + 200))
    {
      return 0;
    }
  }

  else
  {
    if (*(v739 + 24) != *(v25 + 24))
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  v54 = *(v25 + 216);
  if (v739[27])
  {
    if (!*(v25 + 216))
    {
      return 0;
    }
  }

  else
  {
    if (v739[26] != v25[26])
    {
      v54 = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  v55 = *(v25 + 232);
  if (v739[29])
  {
    if (!*(v25 + 232))
    {
      return 0;
    }
  }

  else
  {
    if (v739[28] != v25[28])
    {
      v55 = 1;
    }

    if (v55)
    {
      return 0;
    }
  }

  v56 = *(v25 + 248);
  if (v739[31])
  {
    if (!*(v25 + 248))
    {
      return 0;
    }
  }

  else
  {
    if (*(v739 + 30) != *(v25 + 30))
    {
      v56 = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  v57 = *(v25 + 264);
  if (v739[33])
  {
    if (!*(v25 + 264))
    {
      return 0;
    }
  }

  else
  {
    if (v739[32] != v25[32])
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  v58 = *(v25 + 280);
  if (v739[35])
  {
    if (!*(v25 + 280))
    {
      return 0;
    }
  }

  else
  {
    if (v739[34] != v25[34])
    {
      v58 = 1;
    }

    if (v58)
    {
      return 0;
    }
  }

  v59 = *(v25 + 296);
  if (v739[37])
  {
    if (!*(v25 + 296))
    {
      return 0;
    }
  }

  else
  {
    if (v739[36] != v25[36])
    {
      v59 = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = *(v25 + 312);
  if (v739[39])
  {
    if (!*(v25 + 312))
    {
      return 0;
    }
  }

  else
  {
    if (v739[38] != v25[38])
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  v61 = *(v739 + 313);
  v62 = *(v25 + 313);
  if (v61 == 2)
  {
    if (v62 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v62 == 2 || ((v62 ^ v61) & 1) != 0)
    {
      return result;
    }
  }

  v63 = v739[40];
  v64 = v25[40];
  if (v63)
  {
    if (!v64)
    {
      return 0;
    }

    v65 = sub_100DE6F58(v63, v64);

    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v66 = *(v25 + 336);
  if (v739[42])
  {
    if (!*(v25 + 336))
    {
      return 0;
    }
  }

  else
  {
    if (v739[41] != v25[41])
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  v67 = *(v25 + 352);
  if (v739[44])
  {
    if (!*(v25 + 352))
    {
      return 0;
    }
  }

  else
  {
    if (v739[43] != v25[43])
    {
      v67 = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  v68 = *(v25 + 368);
  if (v739[46])
  {
    if (!*(v25 + 368))
    {
      return 0;
    }
  }

  else
  {
    if (v739[45] != v25[45])
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  v69 = *(v25 + 384);
  if (v739[48])
  {
    if (!*(v25 + 384))
    {
      return 0;
    }
  }

  else
  {
    if (v739[47] != v25[47])
    {
      v69 = 1;
    }

    if (v69)
    {
      return 0;
    }
  }

  v70 = *(v25 + 400);
  if (v739[50])
  {
    if (!*(v25 + 400))
    {
      return 0;
    }
  }

  else
  {
    if (v739[49] != v25[49])
    {
      v70 = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  v71 = *(v25 + 416);
  if (v739[52])
  {
    if (!*(v25 + 416))
    {
      return 0;
    }
  }

  else
  {
    if (v739[51] != v25[51])
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  v72 = *(v25 + 432);
  if (v739[54])
  {
    if (!*(v25 + 432))
    {
      return 0;
    }
  }

  else
  {
    if (v739[53] != v25[53])
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  v73 = *(v25 + 448);
  if (v739[56])
  {
    if (!*(v25 + 448))
    {
      return 0;
    }
  }

  else
  {
    if (v739[55] != v25[55])
    {
      v73 = 1;
    }

    if (v73)
    {
      return 0;
    }
  }

  v74 = *(v25 + 464);
  if (v739[58])
  {
    if (!*(v25 + 464))
    {
      return 0;
    }
  }

  else
  {
    if (v739[57] != v25[57])
    {
      v74 = 1;
    }

    if (v74)
    {
      return 0;
    }
  }

  v75 = *(v25 + 480);
  if (v739[60])
  {
    if (!*(v25 + 480))
    {
      return 0;
    }
  }

  else
  {
    if (v739[59] != v25[59])
    {
      v75 = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  v76 = *(v739 + 481);
  v77 = *(v25 + 481);
  if (v76 == 2)
  {
    if (v77 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v77 == 2 || ((v77 ^ v76) & 1) != 0)
    {
      return result;
    }
  }

  v78 = *(v25 + 496);
  if (v739[62])
  {
    if (!*(v25 + 496))
    {
      return 0;
    }
  }

  else
  {
    if (v739[61] != v25[61])
    {
      v78 = 1;
    }

    if (v78)
    {
      return 0;
    }
  }

  v79 = *(v25 + 512);
  if (v739[64])
  {
    if (!*(v25 + 512))
    {
      return 0;
    }
  }

  else
  {
    if (v739[63] != v25[63])
    {
      v79 = 1;
    }

    if (v79)
    {
      return 0;
    }
  }

  v80 = *(v25 + 528);
  if (v739[66])
  {
    if (!*(v25 + 528))
    {
      return 0;
    }
  }

  else
  {
    if (v739[65] != v25[65])
    {
      v80 = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  v81 = *(v25 + 544);
  if (v739[68])
  {
    if (!*(v25 + 544))
    {
      return 0;
    }
  }

  else
  {
    if (v739[67] != v25[67])
    {
      v81 = 1;
    }

    if (v81)
    {
      return 0;
    }
  }

  v82 = *(v25 + 560);
  if (v739[70])
  {
    if (!*(v25 + 560))
    {
      return 0;
    }
  }

  else
  {
    if (v739[69] != v25[69])
    {
      v82 = 1;
    }

    if (v82)
    {
      return 0;
    }
  }

  v83 = *(v25 + 576);
  if (v739[72])
  {
    if (!*(v25 + 576))
    {
      return 0;
    }
  }

  else
  {
    if (v739[71] != v25[71])
    {
      v83 = 1;
    }

    if (v83)
    {
      return 0;
    }
  }

  v84 = *(v25 + 592);
  if (v739[74])
  {
    if (!*(v25 + 592))
    {
      return 0;
    }
  }

  else
  {
    if (v739[73] != v25[73])
    {
      v84 = 1;
    }

    if (v84)
    {
      return 0;
    }
  }

  v85 = v739[75];
  v86 = v25[75];
  if (v85)
  {
    if (!v86 || (sub_10038F634(v85, v86) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v86)
  {
    return 0;
  }

  v87 = *(v25 + 616);
  if (v739[77])
  {
    if (!*(v25 + 616))
    {
      return 0;
    }
  }

  else
  {
    if (*(v739 + 76) != *(v25 + 76))
    {
      v87 = 1;
    }

    if (v87)
    {
      return 0;
    }
  }

  v88 = *(v25 + 632);
  if (v739[79])
  {
    if (!*(v25 + 632))
    {
      return 0;
    }
  }

  else
  {
    if (*(v739 + 78) != *(v25 + 78))
    {
      v88 = 1;
    }

    if (v88)
    {
      return 0;
    }
  }

  v89 = v25[80];
  if (v739[80])
  {
    if (!v89)
    {
      return 0;
    }

    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;
    if (v90 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v92 == v93)
    {
    }

    else
    {
      v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v94 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v89)
  {
    return 0;
  }

  v95 = v739[81];
  v96 = v25[81];
  if (v95)
  {
    if (!v96)
    {
      return 0;
    }

    v97 = sub_10038F7B4(v95, v96);

    if ((v97 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  v98 = *(v25 + 664);
  if (v739[83])
  {
    if (!*(v25 + 664))
    {
      return 0;
    }
  }

  else
  {
    if (v739[82] != v25[82])
    {
      v98 = 1;
    }

    if (v98)
    {
      return 0;
    }
  }

  v99 = *(v25 + 680);
  if (v739[85])
  {
    if (!*(v25 + 680))
    {
      return 0;
    }
  }

  else
  {
    if (v739[84] != v25[84])
    {
      v99 = 1;
    }

    if (v99)
    {
      return 0;
    }
  }

  v100 = *(v25 + 696);
  if (v739[87])
  {
    if (!*(v25 + 696))
    {
      return 0;
    }
  }

  else
  {
    if (v739[86] != v25[86])
    {
      v100 = 1;
    }

    if (v100)
    {
      return 0;
    }
  }

  v101 = *(v25 + 712);
  if (v739[89])
  {
    if (!*(v25 + 712))
    {
      return 0;
    }
  }

  else
  {
    if (v739[88] != v25[88])
    {
      v101 = 1;
    }

    if (v101)
    {
      return 0;
    }
  }

  v102 = *(v25 + 728);
  if (v739[91])
  {
    if (!*(v25 + 728))
    {
      return 0;
    }
  }

  else
  {
    if (v739[90] != v25[90])
    {
      v102 = 1;
    }

    if (v102)
    {
      return 0;
    }
  }

  v103 = *(v739 + 729);
  v104 = *(v25 + 729);
  if (v103 == 2)
  {
    if (v104 != 2)
    {
      return 0;
    }

LABEL_326:
    v727 = type metadata accessor for DefaultConfigurationLayer(0);
    v105 = v727[60];
    v106 = *(v18 + 48);
    sub_1000D2A70(v739 + v105, v20, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v25 + v105, &v20[v106], &qword_1016980D0, &unk_10138F3B0);
    v107 = *(v730 + 48);
    if (v107(v20, 1, v731) == 1)
    {
      if (v107(&v20[v106], 1, v731) == 1)
      {
        sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
        goto LABEL_333;
      }
    }

    else
    {
      sub_1000D2A70(v20, v17, &qword_1016980D0, &unk_10138F3B0);
      if (v107(&v20[v106], 1, v731) != 1)
      {
        v109 = v730;
        v108 = v731;
        v110 = &v20[v106];
        v111 = v729;
        (*(v730 + 32))(v729, v110, v731);
        sub_10090D1C4(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v112 = dispatch thunk of static Equatable.== infix(_:_:)();
        v113 = *(v109 + 8);
        v113(v111, v108);
        v113(v17, v108);
        sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
        if ((v112 & 1) == 0)
        {
          return 0;
        }

LABEL_333:
        v114 = v727[61];
        v115 = v733;
        v116 = *(v734 + 48);
        sub_1000D2A70(v739 + v114, v733, &unk_101696900, &unk_10138B1E0);
        sub_1000D2A70(v48 + v114, v115 + v116, &unk_101696900, &unk_10138B1E0);
        v731 = *(v738 + 48);
        if (v731(v115, 1, v728) == 1)
        {
          if (v731(v733 + v116, 1, v728) == 1)
          {
            sub_10000B3A8(v733, &unk_101696900, &unk_10138B1E0);
            goto LABEL_340;
          }
        }

        else
        {
          v117 = v733;
          sub_1000D2A70(v733, v732, &unk_101696900, &unk_10138B1E0);
          if (v731(v117 + v116, 1, v728) != 1)
          {
            v119 = v737;
            v118 = v738;
            v120 = v733;
            v121 = v728;
            (*(v738 + 32))(v737, v733 + v116, v728);
            sub_10090D1C4(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v122 = v732;
            v123 = dispatch thunk of static Equatable.== infix(_:_:)();
            v124 = *(v118 + 8);
            v124(v119, v121);
            v124(v122, v121);
            sub_10000B3A8(v120, &unk_101696900, &unk_10138B1E0);
            if ((v123 & 1) == 0)
            {
              return 0;
            }

LABEL_340:
            v125 = v727[62];
            v126 = (v739 + v125);
            v127 = *(v739 + v125 + 8);
            v128 = (v48 + v125);
            v129 = *(v48 + v125 + 8);
            if (v127)
            {
              if (!v129)
              {
                return 0;
              }
            }

            else
            {
              if (*v126 != *v128)
              {
                LOBYTE(v129) = 1;
              }

              if (v129)
              {
                return 0;
              }
            }

            v130 = v727[63];
            v131 = *(v734 + 48);
            v132 = v736;
            sub_1000D2A70(v739 + v130, v736, &unk_101696900, &unk_10138B1E0);
            sub_1000D2A70(v48 + v130, v132 + v131, &unk_101696900, &unk_10138B1E0);
            if (v731(v132, 1, v728) == 1)
            {
              if (v731(v736 + v131, 1, v728) == 1)
              {
                sub_10000B3A8(v736, &unk_101696900, &unk_10138B1E0);
                goto LABEL_353;
              }
            }

            else
            {
              v133 = v736;
              sub_1000D2A70(v736, v735, &unk_101696900, &unk_10138B1E0);
              if (v731(v133 + v131, 1, v728) != 1)
              {
                v134 = v738;
                v135 = v736;
                v136 = v736 + v131;
                v137 = v737;
                v138 = v728;
                (*(v738 + 32))(v737, v136, v728);
                sub_10090D1C4(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v139 = v735;
                v140 = dispatch thunk of static Equatable.== infix(_:_:)();
                v141 = *(v134 + 8);
                v141(v137, v138);
                v141(v139, v138);
                sub_10000B3A8(v135, &unk_101696900, &unk_10138B1E0);
                if ((v140 & 1) == 0)
                {
                  return 0;
                }

LABEL_353:
                v142 = v727[64];
                v143 = (v739 + v142);
                v144 = *(v739 + v142 + 8);
                v145 = (v48 + v142);
                v146 = *(v48 + v142 + 8);
                if (v144)
                {
                  if (!v146)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v143 != *v145)
                  {
                    LOBYTE(v146) = 1;
                  }

                  if (v146)
                  {
                    return 0;
                  }
                }

                v147 = v727[65];
                v148 = (v739 + v147);
                v149 = *(v739 + v147 + 8);
                v150 = (v48 + v147);
                v151 = *(v48 + v147 + 8);
                if (v149)
                {
                  if (!v151)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v148 != *v150)
                  {
                    LOBYTE(v151) = 1;
                  }

                  if (v151)
                  {
                    return 0;
                  }
                }

                v152 = v727[66];
                v153 = (v739 + v152);
                v154 = *(v739 + v152 + 8);
                v155 = (v48 + v152);
                v156 = *(v48 + v152 + 8);
                if (v154)
                {
                  if (!v156)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v153 != *v155)
                  {
                    LOBYTE(v156) = 1;
                  }

                  if (v156)
                  {
                    return 0;
                  }
                }

                v157 = v727[67];
                v158 = (v739 + v157);
                v159 = *(v739 + v157 + 8);
                v160 = (v48 + v157);
                v161 = *(v48 + v157 + 8);
                if (v159)
                {
                  if (!v161)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v158 != *v160)
                  {
                    LOBYTE(v161) = 1;
                  }

                  if (v161)
                  {
                    return 0;
                  }
                }

                v162 = v727[68];
                v163 = (v739 + v162);
                v164 = *(v739 + v162 + 8);
                v165 = (v48 + v162);
                v166 = *(v48 + v162 + 8);
                if (v164)
                {
                  if (!v166)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v163 != *v165)
                  {
                    LOBYTE(v166) = 1;
                  }

                  if (v166)
                  {
                    return 0;
                  }
                }

                v167 = v727[69];
                v168 = (v739 + v167);
                v169 = *(v739 + v167 + 8);
                v170 = (v48 + v167);
                v171 = *(v48 + v167 + 8);
                if (v169)
                {
                  if (!v171)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v168 != *v170)
                  {
                    LOBYTE(v171) = 1;
                  }

                  if (v171)
                  {
                    return 0;
                  }
                }

                v172 = v727[70];
                v173 = v739 + v172;
                v174 = *(v739 + v172 + 80);
                v768 = *(v739 + v172 + 64);
                v769 = v174;
                v175 = *(v739 + v172 + 96);
                v176 = *(v739 + v172 + 16);
                v765[0] = *(v739 + v172);
                v765[1] = v176;
                v177 = *(v739 + v172 + 48);
                v179 = *(v739 + v172);
                v178 = *(v739 + v172 + 16);
                v766 = *(v739 + v172 + 32);
                v767 = v177;
                v180 = v48 + v172;
                v181 = *v180;
                v182 = *(v180 + 1);
                v770 = v175;
                v771[0] = v181;
                v183 = *(v180 + 6);
                v774 = *(v180 + 5);
                v775 = v183;
                v184 = *(v180 + 4);
                v772 = *(v180 + 3);
                v773 = v184;
                v185 = *(v180 + 2);
                v771[1] = v182;
                v771[2] = v185;
                v762 = v179;
                v763 = v178;
                v764 = v766;
                v186 = v177;
                v187 = *(v173 + 72);
                v758 = *(v173 + 56);
                v759 = v187;
                v760 = *(v173 + 88);
                v761 = *(v173 + 13);
                if (v177)
                {
                  if (v772)
                  {
                    v188 = *(v180 + 1);
                    v740[0] = *v180;
                    v740[1] = v188;
                    v741 = *(v180 + 2);
                    *&v742[0] = v772;
                    *(v742 + 8) = *(v180 + 56);
                    *(&v742[1] + 8) = *(v180 + 72);
                    *(&v742[2] + 8) = *(v180 + 88);
                    *(&v742[3] + 1) = *(v180 + 13);
                    v749 = v740[0];
                    v750 = v188;
                    v752[2] = v742[2];
                    v752[3] = v742[3];
                    v752[0] = v742[0];
                    v752[1] = v742[1];
                    v751 = v741;
                    v189 = *v173;
                    v190 = *(v173 + 2);
                    v776[1] = *(v173 + 1);
                    v776[2] = v190;
                    v776[0] = v189;
                    v191 = *(v173 + 56);
                    v192 = *(v173 + 72);
                    v193 = *(v173 + 88);
                    v194 = *(v173 + 13);
                    v780 = v193;
                    v779 = v192;
                    v778 = v191;
                    v781 = v194;
                    v777 = v177;
                    sub_1000D2A70(v765, v743, &qword_1016ADCE8, &qword_1013C53A0);
                    sub_1000D2A70(v771, v743, &qword_1016ADCE8, &qword_1013C53A0);
                    v195 = _s12searchpartyd19AllMacBeaconConfigsV23__derived_struct_equalsySbAC_ACtFZ_0(v776, &v749);
                    sub_10000B3A8(v740, &qword_1016ADCE8, &qword_1013C53A0);
                    v743[0] = v762;
                    v743[1] = v763;
                    v743[2] = v764;
                    v745 = v758;
                    v746 = v759;
                    v747 = v760;
                    v744 = v186;
                    v748 = v761;
                    sub_10000B3A8(v743, &qword_1016ADCE8, &qword_1013C53A0);
                    if (!v195)
                    {
                      return 0;
                    }

                    goto LABEL_396;
                  }
                }

                else if (!v772)
                {
                  v201 = *(v173 + 1);
                  v749 = *v173;
                  v750 = v201;
                  v751 = *(v173 + 2);
                  *(v752 + 8) = *(v173 + 56);
                  *(&v752[1] + 8) = *(v173 + 72);
                  *(&v752[2] + 8) = *(v173 + 88);
                  v202 = *(v173 + 13);
                  *&v752[0] = 0;
                  *(&v752[3] + 1) = v202;
                  sub_1000D2A70(v765, v776, &qword_1016ADCE8, &qword_1013C53A0);
                  sub_1000D2A70(v771, v776, &qword_1016ADCE8, &qword_1013C53A0);
                  sub_10000B3A8(&v749, &qword_1016ADCE8, &qword_1013C53A0);
LABEL_396:
                  v203 = v727[71];
                  v204 = *(v739 + v203);
                  v205 = *(v48 + v203);
                  if (v204 == 2)
                  {
                    if (v205 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v205 == 2 || ((v205 ^ v204) & 1) != 0)
                  {
                    return 0;
                  }

                  v206 = v727[72];
                  v207 = *(v739 + v206);
                  v208 = *(v48 + v206);
                  if (v207 == 2)
                  {
                    if (v208 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v208 == 2 || ((v208 ^ v207) & 1) != 0)
                  {
                    return 0;
                  }

                  v209 = v727[73];
                  v210 = *(v739 + v209);
                  v211 = *(v48 + v209);
                  if (v210 == 2)
                  {
                    if (v211 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v211 == 2 || ((v211 ^ v210) & 1) != 0)
                  {
                    return 0;
                  }

                  v212 = v727[74];
                  v213 = (v739 + v212);
                  v214 = *(v739 + v212 + 8);
                  v215 = (v48 + v212);
                  v216 = *(v48 + v212 + 8);
                  if (v214)
                  {
                    if (!v216)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v213 != *v215)
                    {
                      LOBYTE(v216) = 1;
                    }

                    if (v216)
                    {
                      return 0;
                    }
                  }

                  v217 = v727[75];
                  v218 = (v739 + v217);
                  v219 = *(v739 + v217 + 8);
                  v220 = (v48 + v217);
                  v221 = *(v48 + v217 + 8);
                  if (v219)
                  {
                    if (!v221)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v218 != *v220)
                    {
                      LOBYTE(v221) = 1;
                    }

                    if (v221)
                    {
                      return 0;
                    }
                  }

                  v222 = v727[76];
                  v223 = (v739 + v222);
                  v224 = *(v739 + v222 + 8);
                  v225 = (v48 + v222);
                  v226 = *(v48 + v222 + 8);
                  if (v224)
                  {
                    if (!v226)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v223 != *v225)
                    {
                      LOBYTE(v226) = 1;
                    }

                    if (v226)
                    {
                      return 0;
                    }
                  }

                  v227 = v727[77];
                  v228 = (v739 + v227);
                  v229 = *(v739 + v227 + 8);
                  v230 = (v48 + v227);
                  v231 = *(v48 + v227 + 8);
                  if (v229)
                  {
                    if (!v231)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v228 != *v230)
                    {
                      LOBYTE(v231) = 1;
                    }

                    if (v231)
                    {
                      return 0;
                    }
                  }

                  v232 = v727[78];
                  v233 = (v739 + v232);
                  v234 = *(v739 + v232 + 8);
                  v235 = (v48 + v232);
                  v236 = *(v48 + v232 + 8);
                  if (v234)
                  {
                    if (!v236)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v233 != *v235)
                    {
                      LOBYTE(v236) = 1;
                    }

                    if (v236)
                    {
                      return 0;
                    }
                  }

                  v237 = v727[79];
                  v238 = (v739 + v237);
                  v239 = *(v739 + v237 + 8);
                  v240 = (v48 + v237);
                  v241 = *(v48 + v237 + 8);
                  if (v239)
                  {
                    if (!v241)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v238 != *v240)
                    {
                      LOBYTE(v241) = 1;
                    }

                    if (v241)
                    {
                      return 0;
                    }
                  }

                  v242 = v727[80];
                  v243 = (v739 + v242);
                  v244 = *(v739 + v242 + 8);
                  v245 = (v48 + v242);
                  v246 = *(v48 + v242 + 8);
                  if (v244)
                  {
                    if (!v246)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v243 != *v245)
                    {
                      LOBYTE(v246) = 1;
                    }

                    if (v246)
                    {
                      return 0;
                    }
                  }

                  v247 = v727[81];
                  v248 = (v739 + v247);
                  v249 = *(v739 + v247 + 8);
                  v250 = (v48 + v247);
                  v251 = *(v48 + v247 + 8);
                  if (v249)
                  {
                    if (!v251)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v248 != *v250)
                    {
                      LOBYTE(v251) = 1;
                    }

                    if (v251)
                    {
                      return 0;
                    }
                  }

                  v252 = v727[82];
                  v253 = (v739 + v252);
                  v254 = *(v739 + v252 + 8);
                  v255 = (v48 + v252);
                  v256 = *(v48 + v252 + 8);
                  if (v254)
                  {
                    if (!v256)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v253 != *v255)
                    {
                      LOBYTE(v256) = 1;
                    }

                    if (v256)
                    {
                      return 0;
                    }
                  }

                  v257 = v727[83];
                  v258 = (v739 + v257);
                  v259 = *(v739 + v257 + 8);
                  v260 = (v48 + v257);
                  v261 = v260[1];
                  if (v259)
                  {
                    if (!v261 || (*v258 != *v260 || v259 != v261) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v261)
                  {
                    return 0;
                  }

                  v262 = v727[84];
                  v263 = (v739 + v262);
                  v264 = *(v739 + v262 + 8);
                  v265 = (v48 + v262);
                  v266 = *(v48 + v262 + 8);
                  if (v264)
                  {
                    if (!v266)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v263 != *v265)
                    {
                      LOBYTE(v266) = 1;
                    }

                    if (v266)
                    {
                      return 0;
                    }
                  }

                  v267 = v727[85];
                  v268 = (v739 + v267);
                  v269 = *(v739 + v267 + 8);
                  v270 = (v48 + v267);
                  v271 = v270[1];
                  if (v269)
                  {
                    if (!v271 || (*v268 != *v270 || v269 != v271) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v271)
                  {
                    return 0;
                  }

                  v272 = v727[86];
                  v273 = (v739 + v272);
                  v274 = *(v739 + v272 + 8);
                  v275 = (v48 + v272);
                  v276 = *(v48 + v272 + 8);
                  if (v274)
                  {
                    if (!v276)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v273 != *v275)
                    {
                      LOBYTE(v276) = 1;
                    }

                    if (v276)
                    {
                      return 0;
                    }
                  }

                  v277 = v727[87];
                  v278 = *(v739 + v277);
                  v279 = *(v48 + v277);
                  if (v278)
                  {
                    if (!v279 || (sub_10038F898(v278, v279) & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v279)
                  {
                    return 0;
                  }

                  v280 = v727[88];
                  v281 = (v739 + v280);
                  v282 = *(v739 + v280 + 8);
                  v283 = (v48 + v280);
                  v284 = v283[1];
                  if (v282)
                  {
                    if (!v284 || (*v281 != *v283 || v282 != v284) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v284)
                  {
                    return 0;
                  }

                  v285 = v727[89];
                  v286 = (v739 + v285);
                  v287 = *(v739 + v285 + 8);
                  v288 = (v48 + v285);
                  v289 = *(v48 + v285 + 8);
                  if (v287)
                  {
                    if (!v289)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v286 != *v288)
                    {
                      LOBYTE(v289) = 1;
                    }

                    if (v289)
                    {
                      return 0;
                    }
                  }

                  v290 = v727[90];
                  v291 = *(v739 + v290);
                  v292 = *(v48 + v290);
                  if (v291 == 2)
                  {
                    if (v292 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v292 == 2 || ((v292 ^ v291) & 1) != 0)
                  {
                    return 0;
                  }

                  v293 = v727[91];
                  v294 = *(v739 + v293);
                  v295 = *(v48 + v293);
                  if (v294 == 2)
                  {
                    if (v295 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v295 == 2 || ((v295 ^ v294) & 1) != 0)
                  {
                    return 0;
                  }

                  v296 = v727[92];
                  v297 = *(v739 + v296);
                  v298 = *(v48 + v296);
                  if (v297 == 2)
                  {
                    if (v298 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v298 == 2 || ((v298 ^ v297) & 1) != 0)
                  {
                    return 0;
                  }

                  v299 = v727[93];
                  v300 = *(v739 + v299);
                  v301 = *(v48 + v299);
                  if (v300 == 2)
                  {
                    if (v301 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v301 == 2 || ((v301 ^ v300) & 1) != 0)
                  {
                    return 0;
                  }

                  v302 = v727[94];
                  v303 = (v739 + v302);
                  v304 = *(v739 + v302 + 8);
                  v305 = (v48 + v302);
                  v306 = *(v48 + v302 + 8);
                  if (v304)
                  {
                    if (!v306)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v303 != *v305)
                    {
                      LOBYTE(v306) = 1;
                    }

                    if (v306)
                    {
                      return 0;
                    }
                  }

                  v307 = v727[95];
                  v308 = (v739 + v307);
                  v309 = *(v739 + v307 + 8);
                  v310 = (v48 + v307);
                  v311 = *(v48 + v307 + 8);
                  if (v309)
                  {
                    if (!v311)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v308 != *v310)
                    {
                      LOBYTE(v311) = 1;
                    }

                    if (v311)
                    {
                      return 0;
                    }
                  }

                  v312 = v727[96];
                  v313 = (v739 + v312);
                  v314 = *(v739 + v312 + 8);
                  v315 = (v48 + v312);
                  v316 = *(v48 + v312 + 8);
                  if (v314)
                  {
                    if (!v316)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v313 != *v315)
                    {
                      LOBYTE(v316) = 1;
                    }

                    if (v316)
                    {
                      return 0;
                    }
                  }

                  v317 = v727[97];
                  v318 = (v739 + v317);
                  v319 = *(v739 + v317 + 8);
                  v320 = (v48 + v317);
                  v321 = *(v48 + v317 + 8);
                  if (v319)
                  {
                    if (!v321)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v318 != *v320)
                    {
                      LOBYTE(v321) = 1;
                    }

                    if (v321)
                    {
                      return 0;
                    }
                  }

                  v322 = v727[98];
                  v323 = (v739 + v322);
                  v324 = *(v739 + v322 + 8);
                  v325 = (v48 + v322);
                  v326 = *(v48 + v322 + 8);
                  if (v324)
                  {
                    if (!v326)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v323 != *v325)
                    {
                      LOBYTE(v326) = 1;
                    }

                    if (v326)
                    {
                      return 0;
                    }
                  }

                  v327 = v727[99];
                  v328 = (v739 + v327);
                  v329 = *(v739 + v327 + 8);
                  v330 = (v48 + v327);
                  v331 = *(v48 + v327 + 8);
                  if (v329)
                  {
                    if (!v331)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v328 != *v330)
                    {
                      LOBYTE(v331) = 1;
                    }

                    if (v331)
                    {
                      return 0;
                    }
                  }

                  v332 = v727[100];
                  v333 = (v739 + v332);
                  v334 = *(v739 + v332 + 8);
                  v335 = (v48 + v332);
                  v336 = *(v48 + v332 + 8);
                  if (v334)
                  {
                    if (!v336)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v333 != *v335)
                    {
                      LOBYTE(v336) = 1;
                    }

                    if (v336)
                    {
                      return 0;
                    }
                  }

                  v337 = v727[101];
                  v338 = (v739 + v337);
                  v339 = *(v739 + v337 + 8);
                  v340 = (v48 + v337);
                  v341 = *(v48 + v337 + 8);
                  if (v339)
                  {
                    if (!v341)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v338 != *v340)
                    {
                      LOBYTE(v341) = 1;
                    }

                    if (v341)
                    {
                      return 0;
                    }
                  }

                  v342 = v727[102];
                  v343 = (v739 + v342);
                  v344 = *(v739 + v342 + 8);
                  v345 = (v48 + v342);
                  v346 = *(v48 + v342 + 8);
                  if (v344)
                  {
                    if (!v346)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v343 != *v345)
                    {
                      LOBYTE(v346) = 1;
                    }

                    if (v346)
                    {
                      return 0;
                    }
                  }

                  v347 = v727[103];
                  v348 = (v739 + v347);
                  v349 = *(v739 + v347 + 8);
                  v350 = (v48 + v347);
                  v351 = *(v48 + v347 + 8);
                  if (v349)
                  {
                    if (!v351)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v348 != *v350)
                    {
                      LOBYTE(v351) = 1;
                    }

                    if (v351)
                    {
                      return 0;
                    }
                  }

                  v352 = v727[104];
                  v353 = (v739 + v352);
                  v354 = *(v739 + v352 + 8);
                  v355 = (v48 + v352);
                  v356 = *(v48 + v352 + 8);
                  if (v354)
                  {
                    if (!v356)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v353 != *v355)
                    {
                      LOBYTE(v356) = 1;
                    }

                    if (v356)
                    {
                      return 0;
                    }
                  }

                  v357 = v727[105];
                  v358 = (v739 + v357);
                  v359 = *(v739 + v357 + 8);
                  v360 = (v48 + v357);
                  v361 = *(v48 + v357 + 8);
                  if (v359)
                  {
                    if (!v361)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v358 != *v360)
                    {
                      LOBYTE(v361) = 1;
                    }

                    if (v361)
                    {
                      return 0;
                    }
                  }

                  v362 = v727[106];
                  v363 = (v739 + v362);
                  v364 = *(v739 + v362 + 8);
                  v365 = (v48 + v362);
                  v366 = *(v48 + v362 + 8);
                  if (v364)
                  {
                    if (!v366)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v363 != *v365)
                    {
                      LOBYTE(v366) = 1;
                    }

                    if (v366)
                    {
                      return 0;
                    }
                  }

                  v367 = v727[107];
                  v368 = (v739 + v367);
                  v369 = *(v739 + v367 + 8);
                  v370 = (v48 + v367);
                  v371 = *(v48 + v367 + 8);
                  if (v369)
                  {
                    if (!v371)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v368 != *v370)
                    {
                      LOBYTE(v371) = 1;
                    }

                    if (v371)
                    {
                      return 0;
                    }
                  }

                  v372 = v727[108];
                  v373 = (v739 + v372);
                  v374 = *(v739 + v372 + 8);
                  v375 = (v48 + v372);
                  v376 = *(v48 + v372 + 8);
                  if (v374)
                  {
                    if (!v376)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v373 != *v375)
                    {
                      LOBYTE(v376) = 1;
                    }

                    if (v376)
                    {
                      return 0;
                    }
                  }

                  v377 = v727[109];
                  v378 = (v739 + v377);
                  v379 = *(v739 + v377 + 8);
                  v380 = (v48 + v377);
                  v381 = *(v48 + v377 + 8);
                  if (v379)
                  {
                    if (!v381)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v378 != *v380)
                    {
                      LOBYTE(v381) = 1;
                    }

                    if (v381)
                    {
                      return 0;
                    }
                  }

                  v382 = v727[110];
                  v383 = (v739 + v382);
                  v384 = *(v739 + v382 + 8);
                  v385 = (v48 + v382);
                  v386 = *(v48 + v382 + 8);
                  if (v384)
                  {
                    if (!v386)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v383 != *v385)
                    {
                      LOBYTE(v386) = 1;
                    }

                    if (v386)
                    {
                      return 0;
                    }
                  }

                  v387 = v727[111];
                  v388 = (v739 + v387);
                  v389 = *(v739 + v387 + 8);
                  v390 = (v48 + v387);
                  v391 = *(v48 + v387 + 8);
                  if (v389)
                  {
                    if (!v391)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v388 != *v390)
                    {
                      LOBYTE(v391) = 1;
                    }

                    if (v391)
                    {
                      return 0;
                    }
                  }

                  v392 = v727[112];
                  v393 = (v739 + v392);
                  v394 = *(v739 + v392 + 8);
                  v395 = (v48 + v392);
                  v396 = *(v48 + v392 + 8);
                  if (v394)
                  {
                    if (!v396)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v393 != *v395)
                    {
                      LOBYTE(v396) = 1;
                    }

                    if (v396)
                    {
                      return 0;
                    }
                  }

                  v397 = v727[113];
                  v398 = (v739 + v397);
                  v399 = *(v739 + v397 + 8);
                  v400 = (v48 + v397);
                  v401 = *(v48 + v397 + 8);
                  if (v399)
                  {
                    if (!v401)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v398 != *v400)
                    {
                      LOBYTE(v401) = 1;
                    }

                    if (v401)
                    {
                      return 0;
                    }
                  }

                  v402 = v727[114];
                  v403 = (v739 + v402);
                  v404 = *(v739 + v402 + 8);
                  v405 = (v48 + v402);
                  v406 = *(v48 + v402 + 8);
                  if (v404)
                  {
                    if (!v406)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v403 != *v405)
                    {
                      LOBYTE(v406) = 1;
                    }

                    if (v406)
                    {
                      return 0;
                    }
                  }

                  v407 = v727[115];
                  v408 = (v739 + v407);
                  v409 = *(v739 + v407 + 8);
                  v410 = (v48 + v407);
                  v411 = *(v48 + v407 + 8);
                  if (v409)
                  {
                    if (!v411)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v408 != *v410)
                    {
                      LOBYTE(v411) = 1;
                    }

                    if (v411)
                    {
                      return 0;
                    }
                  }

                  v412 = v727[116];
                  v413 = *(v739 + v412);
                  v414 = *(v48 + v412);
                  if (v413 == 2)
                  {
                    if (v414 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v414 == 2 || ((v414 ^ v413) & 1) != 0)
                  {
                    return 0;
                  }

                  v415 = v727[117];
                  v416 = (v739 + v415);
                  v417 = *(v739 + v415 + 8);
                  v418 = (v48 + v415);
                  v419 = *(v48 + v415 + 8);
                  if (v417)
                  {
                    if (!v419)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v416 != *v418)
                    {
                      LOBYTE(v419) = 1;
                    }

                    if (v419)
                    {
                      return 0;
                    }
                  }

                  v420 = v727[118];
                  v421 = (v739 + v420);
                  v422 = *(v739 + v420 + 8);
                  v423 = (v48 + v420);
                  v424 = *(v48 + v420 + 8);
                  if (v422)
                  {
                    if (!v424)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v421 != *v423)
                    {
                      LOBYTE(v424) = 1;
                    }

                    if (v424)
                    {
                      return 0;
                    }
                  }

                  v425 = v727[119];
                  v426 = (v739 + v425);
                  v427 = *(v739 + v425 + 8);
                  v428 = (v48 + v425);
                  v429 = *(v48 + v425 + 8);
                  if (v427)
                  {
                    if (!v429)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v426 != *v428)
                    {
                      LOBYTE(v429) = 1;
                    }

                    if (v429)
                    {
                      return 0;
                    }
                  }

                  v430 = v727[120];
                  v431 = *(v739 + v430);
                  v432 = *(v48 + v430);
                  if (v431 == 2)
                  {
                    if (v432 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v432 == 2 || ((v432 ^ v431) & 1) != 0)
                  {
                    return 0;
                  }

                  v433 = v727[121];
                  v434 = *(v739 + v433);
                  v435 = *(v48 + v433);
                  if (v434 == 2)
                  {
                    if (v435 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v435 == 2 || ((v435 ^ v434) & 1) != 0)
                  {
                    return 0;
                  }

                  v436 = v727[122];
                  v437 = *(v739 + v436);
                  v438 = *(v48 + v436);
                  if (v437 == 2)
                  {
                    if (v438 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v438 == 2 || ((v438 ^ v437) & 1) != 0)
                  {
                    return 0;
                  }

                  v439 = v727[123];
                  v440 = (v739 + v439);
                  v441 = *(v739 + v439 + 8);
                  v442 = (v48 + v439);
                  v443 = *(v48 + v439 + 8);
                  if (v441)
                  {
                    if (!v443)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v440 != *v442)
                    {
                      LOBYTE(v443) = 1;
                    }

                    if (v443)
                    {
                      return 0;
                    }
                  }

                  v444 = v727[124];
                  v445 = (v739 + v444);
                  v446 = *(v739 + v444 + 8);
                  v447 = (v48 + v444);
                  v448 = *(v48 + v444 + 8);
                  if (v446)
                  {
                    if (!v448)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v445 != *v447)
                    {
                      LOBYTE(v448) = 1;
                    }

                    if (v448)
                    {
                      return 0;
                    }
                  }

                  v449 = v727[125];
                  v450 = (v739 + v449);
                  v451 = *(v739 + v449 + 8);
                  v452 = (v48 + v449);
                  v453 = *(v48 + v449 + 8);
                  if (v451)
                  {
                    if (!v453)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v450 != *v452)
                    {
                      LOBYTE(v453) = 1;
                    }

                    if (v453)
                    {
                      return 0;
                    }
                  }

                  v454 = v727[126];
                  v455 = (v739 + v454);
                  v456 = *(v739 + v454 + 8);
                  v457 = (v48 + v454);
                  v458 = *(v48 + v454 + 8);
                  if (v456)
                  {
                    if (!v458)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v455 != *v457)
                    {
                      LOBYTE(v458) = 1;
                    }

                    if (v458)
                    {
                      return 0;
                    }
                  }

                  v459 = v727[127];
                  v460 = (v739 + v459);
                  v461 = *(v739 + v459 + 8);
                  v462 = (v48 + v459);
                  v463 = *(v48 + v459 + 8);
                  if (v461)
                  {
                    if (!v463)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v460 != *v462)
                    {
                      LOBYTE(v463) = 1;
                    }

                    if (v463)
                    {
                      return 0;
                    }
                  }

                  v464 = v727[128];
                  v465 = (v739 + v464);
                  v466 = *(v739 + v464 + 8);
                  v467 = (v48 + v464);
                  v468 = *(v48 + v464 + 8);
                  if (v466)
                  {
                    if (!v468)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v465 != *v467)
                    {
                      LOBYTE(v468) = 1;
                    }

                    if (v468)
                    {
                      return 0;
                    }
                  }

                  v469 = v727[129];
                  v470 = (v739 + v469);
                  v471 = *(v739 + v469 + 8);
                  v472 = (v48 + v469);
                  v473 = *(v48 + v469 + 8);
                  if (v471)
                  {
                    if (!v473)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v470 != *v472)
                    {
                      LOBYTE(v473) = 1;
                    }

                    if (v473)
                    {
                      return 0;
                    }
                  }

                  v474 = v727[130];
                  v475 = (v739 + v474);
                  v476 = *(v739 + v474 + 8);
                  v477 = (v48 + v474);
                  v478 = *(v48 + v474 + 8);
                  if (v476)
                  {
                    if (!v478)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v475 != *v477)
                    {
                      LOBYTE(v478) = 1;
                    }

                    if (v478)
                    {
                      return 0;
                    }
                  }

                  v479 = v727[131];
                  v480 = *(v739 + v479);
                  v481 = *(v48 + v479);
                  if (v480 == 2)
                  {
                    if (v481 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v481 == 2 || ((v481 ^ v480) & 1) != 0)
                  {
                    return 0;
                  }

                  v482 = v727[132];
                  v483 = (v739 + v482);
                  v484 = *(v739 + v482 + 8);
                  v485 = (v48 + v482);
                  v486 = *(v48 + v482 + 8);
                  if (v484)
                  {
                    if (!v486)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v483 != *v485)
                    {
                      LOBYTE(v486) = 1;
                    }

                    if (v486)
                    {
                      return 0;
                    }
                  }

                  v487 = v727[133];
                  v488 = *(v739 + v487);
                  v489 = *(v48 + v487);
                  if (v488)
                  {
                    if (!v489 || (sub_10038F898(v488, v489) & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v489)
                  {
                    return 0;
                  }

                  v490 = v727[134];
                  v491 = (v739 + v490);
                  v492 = *(v739 + v490 + 8);
                  v493 = (v48 + v490);
                  v494 = *(v48 + v490 + 8);
                  if (v492)
                  {
                    if (!v494)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v491 != *v493)
                    {
                      LOBYTE(v494) = 1;
                    }

                    if (v494)
                    {
                      return 0;
                    }
                  }

                  v495 = v727[135];
                  v496 = *(v739 + v495);
                  v497 = *(v48 + v495);
                  if (v496 == 2)
                  {
                    if (v497 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v497 == 2 || ((v497 ^ v496) & 1) != 0)
                  {
                    return 0;
                  }

                  v498 = v727[136];
                  v499 = *(v739 + v498);
                  v500 = *(v48 + v498);
                  if (v499)
                  {
                    if (!v500)
                    {
                      return 0;
                    }

                    v501 = sub_100DE7510(v499, v500);

                    if ((v501 & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v500)
                  {
                    return 0;
                  }

                  v502 = v727[137];
                  v503 = *(v739 + v502);
                  v504 = *(v48 + v502);
                  if (v503 == 2)
                  {
                    if (v504 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v504 == 2 || ((v504 ^ v503) & 1) != 0)
                  {
                    return 0;
                  }

                  v505 = v727[138];
                  v506 = (v739 + v505);
                  v507 = *(v739 + v505 + 8);
                  v508 = (v48 + v505);
                  v509 = *(v48 + v505 + 8);
                  if (v507)
                  {
                    if (!v509)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v506 != *v508)
                    {
                      LOBYTE(v509) = 1;
                    }

                    if (v509)
                    {
                      return 0;
                    }
                  }

                  v510 = v727[139];
                  v511 = (v739 + v510);
                  v512 = *(v739 + v510 + 8);
                  v513 = (v48 + v510);
                  v514 = *(v48 + v510 + 8);
                  if (v512)
                  {
                    if (!v514)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v511 != *v513)
                    {
                      LOBYTE(v514) = 1;
                    }

                    if (v514)
                    {
                      return 0;
                    }
                  }

                  v515 = v727[140];
                  v516 = *(v739 + v515);
                  v517 = *(v48 + v515);
                  if (v516 == 2)
                  {
                    if (v517 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v517 == 2 || ((v517 ^ v516) & 1) != 0)
                  {
                    return 0;
                  }

                  v518 = v727[141];
                  v519 = *(v739 + v518);
                  v520 = *(v48 + v518);
                  if (v519 == 2)
                  {
                    if (v520 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v520 == 2 || ((v520 ^ v519) & 1) != 0)
                  {
                    return 0;
                  }

                  v521 = v727[142];
                  v522 = (v739 + v521);
                  v523 = *(v739 + v521 + 8);
                  v524 = (v48 + v521);
                  v525 = *(v48 + v521 + 8);
                  if (v523)
                  {
                    if (!v525)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v522 != *v524)
                    {
                      LOBYTE(v525) = 1;
                    }

                    if (v525)
                    {
                      return 0;
                    }
                  }

                  v526 = v727[143];
                  v527 = (v739 + v526);
                  v528 = *(v739 + v526 + 8);
                  v529 = (v48 + v526);
                  v530 = *(v48 + v526 + 8);
                  if (v528)
                  {
                    if (!v530)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v527 != *v529)
                    {
                      LOBYTE(v530) = 1;
                    }

                    if (v530)
                    {
                      return 0;
                    }
                  }

                  v531 = v727[144];
                  v532 = (v739 + v531);
                  v533 = *(v739 + v531 + 8);
                  v534 = (v48 + v531);
                  v535 = *(v48 + v531 + 8);
                  if (v533)
                  {
                    if (!v535)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v532 != *v534)
                    {
                      LOBYTE(v535) = 1;
                    }

                    if (v535)
                    {
                      return 0;
                    }
                  }

                  v536 = v727[145];
                  v537 = (v739 + v536);
                  v538 = *(v739 + v536 + 8);
                  v539 = (v48 + v536);
                  v540 = *(v48 + v536 + 8);
                  if (v538)
                  {
                    if (!v540)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v537 != *v539)
                    {
                      LOBYTE(v540) = 1;
                    }

                    if (v540)
                    {
                      return 0;
                    }
                  }

                  v541 = v727[146];
                  v542 = (v739 + v541);
                  v543 = *(v739 + v541 + 8);
                  v544 = (v48 + v541);
                  v545 = *(v48 + v541 + 8);
                  if (v543)
                  {
                    if (!v545)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v542 != *v544)
                    {
                      LOBYTE(v545) = 1;
                    }

                    if (v545)
                    {
                      return 0;
                    }
                  }

                  v546 = v727[147];
                  v547 = (v739 + v546);
                  v548 = *(v739 + v546 + 8);
                  v549 = (v48 + v546);
                  v550 = *(v48 + v546 + 8);
                  if (v548)
                  {
                    if (!v550)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v547 != *v549)
                    {
                      LOBYTE(v550) = 1;
                    }

                    if (v550)
                    {
                      return 0;
                    }
                  }

                  v551 = v727[148];
                  v552 = (v739 + v551);
                  v553 = *(v739 + v551 + 8);
                  v554 = (v48 + v551);
                  v555 = *(v48 + v551 + 8);
                  if (v553)
                  {
                    if (!v555)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v552 != *v554)
                    {
                      LOBYTE(v555) = 1;
                    }

                    if (v555)
                    {
                      return 0;
                    }
                  }

                  v556 = v727[149];
                  v557 = (v739 + v556);
                  v558 = *(v739 + v556 + 8);
                  v559 = (v48 + v556);
                  v560 = *(v48 + v556 + 8);
                  if (v558)
                  {
                    if (!v560)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v557 != *v559)
                    {
                      LOBYTE(v560) = 1;
                    }

                    if (v560)
                    {
                      return 0;
                    }
                  }

                  v561 = v727[150];
                  v562 = (v739 + v561);
                  v563 = *(v739 + v561 + 8);
                  v564 = (v48 + v561);
                  v565 = *(v48 + v561 + 8);
                  if (v563)
                  {
                    if (!v565)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v562 != *v564)
                    {
                      LOBYTE(v565) = 1;
                    }

                    if (v565)
                    {
                      return 0;
                    }
                  }

                  v566 = v727[151];
                  v567 = (v739 + v566);
                  v568 = *(v739 + v566 + 8);
                  v569 = (v48 + v566);
                  v570 = *(v48 + v566 + 8);
                  if (v568)
                  {
                    if (!v570)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v567 != *v569)
                    {
                      LOBYTE(v570) = 1;
                    }

                    if (v570)
                    {
                      return 0;
                    }
                  }

                  v571 = v727[152];
                  v572 = (v739 + v571);
                  v573 = *(v739 + v571 + 8);
                  v574 = (v48 + v571);
                  v575 = *(v48 + v571 + 8);
                  if (v573)
                  {
                    if (!v575)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v572 != *v574)
                    {
                      LOBYTE(v575) = 1;
                    }

                    if (v575)
                    {
                      return 0;
                    }
                  }

                  v576 = v727[153];
                  v577 = (v739 + v576);
                  v578 = *(v739 + v576 + 8);
                  v579 = (v48 + v576);
                  v580 = *(v48 + v576 + 8);
                  if (v578)
                  {
                    if (!v580)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v577 != *v579)
                    {
                      LOBYTE(v580) = 1;
                    }

                    if (v580)
                    {
                      return 0;
                    }
                  }

                  v581 = v727[154];
                  v582 = (v739 + v581);
                  v583 = *(v739 + v581 + 8);
                  v584 = (v48 + v581);
                  v585 = *(v48 + v581 + 8);
                  if (v583)
                  {
                    if (!v585)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v582 != *v584)
                    {
                      LOBYTE(v585) = 1;
                    }

                    if (v585)
                    {
                      return 0;
                    }
                  }

                  v586 = v727[155];
                  v587 = (v739 + v586);
                  v588 = *(v739 + v586 + 8);
                  v589 = (v48 + v586);
                  v590 = *(v48 + v586 + 8);
                  if (v588)
                  {
                    if (!v590)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v587 != *v589)
                    {
                      LOBYTE(v590) = 1;
                    }

                    if (v590)
                    {
                      return 0;
                    }
                  }

                  v591 = v727[156];
                  v592 = (v739 + v591);
                  v593 = *(v739 + v591 + 8);
                  v594 = (v48 + v591);
                  v595 = *(v48 + v591 + 8);
                  if (v593)
                  {
                    if (!v595)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v592 != *v594)
                    {
                      LOBYTE(v595) = 1;
                    }

                    if (v595)
                    {
                      return 0;
                    }
                  }

                  v596 = v727[157];
                  v597 = (v739 + v596);
                  v598 = *(v739 + v596 + 8);
                  v599 = (v48 + v596);
                  v600 = *(v48 + v596 + 8);
                  if (v598)
                  {
                    if (!v600)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v597 != *v599)
                    {
                      LOBYTE(v600) = 1;
                    }

                    if (v600)
                    {
                      return 0;
                    }
                  }

                  v601 = v727[158];
                  v602 = (v739 + v601);
                  v603 = *(v739 + v601 + 8);
                  v604 = (v48 + v601);
                  v605 = *(v48 + v601 + 8);
                  if (v603)
                  {
                    if (!v605)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v602 != *v604)
                    {
                      LOBYTE(v605) = 1;
                    }

                    if (v605)
                    {
                      return 0;
                    }
                  }

                  v606 = v727[159];
                  v607 = (v739 + v606);
                  v608 = *(v739 + v606 + 8);
                  v609 = (v48 + v606);
                  v610 = *(v48 + v606 + 8);
                  if (v608)
                  {
                    if (!v610)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v607 != *v609)
                    {
                      LOBYTE(v610) = 1;
                    }

                    if (v610)
                    {
                      return 0;
                    }
                  }

                  v611 = v727[160];
                  v612 = *(v739 + v611);
                  v613 = *(v48 + v611);
                  if (v612 == 2)
                  {
                    if (v613 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v613 == 2 || ((v613 ^ v612) & 1) != 0)
                  {
                    return 0;
                  }

                  v614 = v727[161];
                  v615 = (v739 + v614);
                  v616 = *(v739 + v614 + 8);
                  v617 = (v48 + v614);
                  v618 = *(v48 + v614 + 8);
                  if (v616)
                  {
                    if (!v618)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v615 != *v617)
                    {
                      LOBYTE(v618) = 1;
                    }

                    if (v618)
                    {
                      return 0;
                    }
                  }

                  v619 = v727[162];
                  v620 = (v739 + v619);
                  v621 = *(v739 + v619 + 8);
                  v622 = (v48 + v619);
                  v623 = *(v48 + v619 + 8);
                  if (v621)
                  {
                    if (!v623)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v620 != *v622)
                    {
                      LOBYTE(v623) = 1;
                    }

                    if (v623)
                    {
                      return 0;
                    }
                  }

                  v624 = v727[163];
                  v625 = (v739 + v624);
                  v626 = *(v739 + v624 + 8);
                  v627 = (v48 + v624);
                  v628 = *(v48 + v624 + 8);
                  if (v626)
                  {
                    if (!v628)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    if (*v625 != *v627)
                    {
                      LOBYTE(v628) = 1;
                    }

                    if (v628)
                    {
                      return 0;
                    }
                  }

                  v629 = v727[164];
                  v630 = (v739 + v629);
                  v631 = *(v739 + v629 + 8);
                  v632 = (v48 + v629);
                  v633 = v632[1];
                  if (v631)
                  {
                    if (!v633 || (*v630 != *v632 || v631 != v633) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      return 0;
                    }

LABEL_944:
                    v634 = v727[165];
                    v635 = (v739 + v634);
                    v636 = *(v739 + v634 + 8);
                    v637 = (v48 + v634);
                    v638 = *(v48 + v634 + 8);
                    if (v636)
                    {
                      if (!v638)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v635 != *v637)
                      {
                        LOBYTE(v638) = 1;
                      }

                      if (v638)
                      {
                        return 0;
                      }
                    }

                    v639 = v727[166];
                    v640 = *(v739 + v639);
                    v641 = *(v48 + v639);
                    if (v640 == 2)
                    {
                      if (v641 != 2)
                      {
                        return 0;
                      }
                    }

                    else if (v641 == 2 || ((v641 ^ v640) & 1) != 0)
                    {
                      return 0;
                    }

                    v642 = v727[167];
                    v643 = (v739 + v642);
                    v644 = *(v739 + v642 + 8);
                    v645 = (v48 + v642);
                    v646 = *(v48 + v642 + 8);
                    if (v644)
                    {
                      if (!v646)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v643 != *v645)
                      {
                        LOBYTE(v646) = 1;
                      }

                      if (v646)
                      {
                        return 0;
                      }
                    }

                    v647 = v727[168];
                    v648 = *(v739 + v647);
                    v649 = *(v48 + v647);
                    if (v648 == 2)
                    {
                      if (v649 != 2)
                      {
                        return 0;
                      }
                    }

                    else if (v649 == 2 || ((v649 ^ v648) & 1) != 0)
                    {
                      return 0;
                    }

                    v650 = v727[169];
                    v651 = (v739 + v650);
                    v652 = *(v739 + v650 + 8);
                    v653 = (v48 + v650);
                    v654 = *(v48 + v650 + 8);
                    if (v652)
                    {
                      if (!v654)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v651 != *v653)
                      {
                        LOBYTE(v654) = 1;
                      }

                      if (v654)
                      {
                        return 0;
                      }
                    }

                    v655 = v727[170];
                    v656 = (v739 + v655);
                    v657 = *(v739 + v655 + 8);
                    v658 = (v48 + v655);
                    v659 = *(v48 + v655 + 8);
                    if (v657)
                    {
                      if (!v659)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v656 != *v658)
                      {
                        LOBYTE(v659) = 1;
                      }

                      if (v659)
                      {
                        return 0;
                      }
                    }

                    v660 = v727[171];
                    v661 = *(v739 + v660);
                    v662 = *(v48 + v660);
                    if (v661 == 2)
                    {
                      if (v662 != 2)
                      {
                        return 0;
                      }
                    }

                    else if (v662 == 2 || ((v662 ^ v661) & 1) != 0)
                    {
                      return 0;
                    }

                    v663 = v727[172];
                    v664 = (v739 + v663);
                    v665 = *(v739 + v663 + 4);
                    v666 = (v48 + v663);
                    v667 = *(v48 + v663 + 4);
                    if (v665)
                    {
                      if (!v667)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v664 != *v666)
                      {
                        LOBYTE(v667) = 1;
                      }

                      if (v667)
                      {
                        return 0;
                      }
                    }

                    v668 = v727[173];
                    v669 = (v739 + v668);
                    v670 = *(v739 + v668 + 8);
                    v671 = (v48 + v668);
                    v672 = *(v48 + v668 + 8);
                    if (v670)
                    {
                      if (!v672)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v669 != *v671)
                      {
                        LOBYTE(v672) = 1;
                      }

                      if (v672)
                      {
                        return 0;
                      }
                    }

                    v673 = v727[174];
                    v674 = (v739 + v673);
                    v675 = *(v739 + v673 + 8);
                    v676 = (v48 + v673);
                    v677 = *(v48 + v673 + 8);
                    if (v675)
                    {
                      if (!v677)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v674 != *v676)
                      {
                        LOBYTE(v677) = 1;
                      }

                      if (v677)
                      {
                        return 0;
                      }
                    }

                    v678 = v727[175];
                    v679 = (v739 + v678);
                    v680 = *(v739 + v678 + 8);
                    v681 = (v48 + v678);
                    v682 = *(v48 + v678 + 8);
                    if (v680)
                    {
                      if (!v682)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v679 != *v681)
                      {
                        LOBYTE(v682) = 1;
                      }

                      if (v682)
                      {
                        return 0;
                      }
                    }

                    v683 = v727[176];
                    v684 = (v739 + v683);
                    v685 = *(v739 + v683 + 8);
                    v686 = (v48 + v683);
                    v687 = *(v48 + v683 + 8);
                    if (v685)
                    {
                      if (!v687)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v684 != *v686)
                      {
                        LOBYTE(v687) = 1;
                      }

                      if (v687)
                      {
                        return 0;
                      }
                    }

                    v688 = v727[177];
                    v689 = (v739 + v688);
                    v690 = *(v739 + v688 + 8);
                    v691 = (v48 + v688);
                    v692 = *(v48 + v688 + 8);
                    if (v690)
                    {
                      if (!v692)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v689 != *v691)
                      {
                        LOBYTE(v692) = 1;
                      }

                      if (v692)
                      {
                        return 0;
                      }
                    }

                    v693 = v727[178];
                    v694 = (v739 + v693);
                    v695 = *(v739 + v693 + 8);
                    v696 = (v48 + v693);
                    v697 = *(v48 + v693 + 8);
                    if (v695)
                    {
                      if (!v697)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v694 != *v696)
                      {
                        LOBYTE(v697) = 1;
                      }

                      if (v697)
                      {
                        return 0;
                      }
                    }

                    v698 = v727[179];
                    v699 = (v739 + v698);
                    v700 = *(v739 + v698 + 8);
                    v701 = (v48 + v698);
                    v702 = *(v48 + v698 + 8);
                    if (v700)
                    {
                      if (!v702)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v699 != *v701)
                      {
                        LOBYTE(v702) = 1;
                      }

                      if (v702)
                      {
                        return 0;
                      }
                    }

                    v703 = v727[180];
                    v704 = *(v739 + v703);
                    v705 = *(v48 + v703);
                    if (v704 == 2)
                    {
                      if (v705 != 2)
                      {
                        return 0;
                      }
                    }

                    else if (v705 == 2 || ((v705 ^ v704) & 1) != 0)
                    {
                      return 0;
                    }

                    v706 = v727[181];
                    v707 = (v739 + v706);
                    v708 = *(v739 + v706 + 8);
                    v709 = (v48 + v706);
                    v710 = *(v48 + v706 + 8);
                    if (v708)
                    {
                      if (!v710)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v707 != *v709)
                      {
                        LOBYTE(v710) = 1;
                      }

                      if (v710)
                      {
                        return 0;
                      }
                    }

                    v711 = v727[182];
                    v712 = (v739 + v711);
                    v713 = *(v739 + v711 + 8);
                    v714 = (v48 + v711);
                    v715 = *(v48 + v711 + 8);
                    if (v713)
                    {
                      if (!v715)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v712 != *v714)
                      {
                        LOBYTE(v715) = 1;
                      }

                      if (v715)
                      {
                        return 0;
                      }
                    }

                    v716 = v727[183];
                    v717 = v739 + v716;
                    v718 = *(v739 + v716 + 1);
                    v719 = v48 + v716;
                    v720 = *(v48 + v716 + 1);
                    if (v718)
                    {
                      if (!v720)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v717 != *v719)
                      {
                        LOBYTE(v720) = 1;
                      }

                      if (v720)
                      {
                        return 0;
                      }
                    }

                    v721 = v727[184];
                    v722 = (v739 + v721);
                    v723 = *(v739 + v721 + 8);
                    v724 = (v48 + v721);
                    v725 = *(v48 + v721 + 8);
                    if (v723)
                    {
                      if (!v725)
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      if (*v722 != *v724)
                      {
                        LOBYTE(v725) = 1;
                      }

                      if (v725)
                      {
                        return 0;
                      }
                    }

                    return 1;
                  }

                  if (!v633)
                  {
                    goto LABEL_944;
                  }

                  return 0;
                }

                v196 = *(v173 + 1);
                v749 = *v173;
                v750 = v196;
                v751 = *(v173 + 2);
                *(v752 + 8) = *(v173 + 56);
                *(&v752[1] + 8) = *(v173 + 72);
                *(&v752[2] + 8) = *(v173 + 88);
                v197 = *(v173 + 13);
                *&v752[0] = v177;
                *(&v752[3] + 1) = v197;
                v198 = *v180;
                v199 = *(v180 + 2);
                v752[5] = *(v180 + 1);
                v752[6] = v199;
                v752[4] = v198;
                v200 = *(v180 + 13);
                v753 = v772;
                v757 = v200;
                v756 = *(v180 + 88);
                v755 = *(v180 + 72);
                v754 = *(v180 + 56);
                sub_1000D2A70(v765, v776, &qword_1016ADCE8, &qword_1013C53A0);
                sub_1000D2A70(v771, v776, &qword_1016ADCE8, &qword_1013C53A0);
                sub_10000B3A8(&v749, &qword_1016ADCF0, &qword_1013C53A8);
                return 0;
              }

              (*(v738 + 8))(v735, v728);
            }

            sub_10000B3A8(v736, &unk_1016B1660, &unk_10138CE10);
            return 0;
          }

          (*(v738 + 8))(v732, v728);
        }

        sub_10000B3A8(v733, &unk_1016B1660, &unk_10138CE10);
        return 0;
      }

      (*(v730 + 8))(v17, v731);
    }

    sub_10000B3A8(v20, &qword_1016AF880, &unk_10138CE20);
    return 0;
  }

  result = 0;
  if (v104 != 2 && ((v104 ^ v103) & 1) == 0)
  {
    goto LABEL_326;
  }

  return result;
}

unint64_t sub_100907BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016C2C30, &qword_1013C5330);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v16, &qword_1016ADCA0, &qword_1013C5338);
      v5 = v16;
      v6 = v17;
      result = sub_100771D58(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 48 * result);
      v11 = v18;
      v12 = v19[0];
      *(v10 + 25) = *(v19 + 9);
      *v10 = v11;
      v10[1] = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100907D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADCE0, &unk_1013C5380);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v16, &qword_101696CA0, &qword_10138B5D8);
      v5 = v16;
      v6 = v17;
      result = sub_100771D58(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 48 * result);
      v11 = v18;
      v12 = v19[0];
      *(v10 + 26) = *(v19 + 10);
      *v10 = v11;
      v10[1] = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100907E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADCB8, &qword_1013C5350);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100771D58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100907F84(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADD88, &qword_1013C54A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016A5AB8, &unk_1013B35E0);
      v11 = *v5;
      result = sub_100771F0C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for BookmarkMetaData(0);
      result = sub_10090C57C(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for BookmarkMetaData);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090818C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_1000BC4D4(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_1000BC4D4(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1000D2A70(v16, v12, a2, v27);
      result = sub_1000210EC(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADCD0, &unk_1013C5368);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100777014();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908488(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADD60, &qword_1013C5448);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADD68, &unk_1013C5450);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADD60, &qword_1013C5448);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100771D58(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for MultipartAccessoryPairingInfo(0);
      result = sub_10090C57C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for MultipartAccessoryPairingInfo);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADE20, &qword_1013C5560);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_errorRetain();
      result = sub_1007720C0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016C2CD0, &qword_1013C5328);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10090C56C(v7, v8);
      result = sub_100771D58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1009088AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1000BC4D4(&qword_10169CAF8, &qword_101399640);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1007721A4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return _swiftEmptyDictionarySingleton;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_100017D5C(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_1007721A4(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100908A3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000BC4D4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100771D58(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908B38(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADC98, &unk_1013C5300);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016C2DB0, &qword_1013F7690);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADC98, &unk_1013C5300);
      v11 = *v5;
      result = sub_100771D14(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for Date();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908D44(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_1000BC4D4(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_1000BC4D4(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1000D2A70(v16, v12, a2, v27);
      result = sub_1000210EC(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + v20) = v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016A0B08, &unk_1013C5390);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v13, &unk_1016AD670, &unk_1013C3FF0);
      v5 = v13;
      v6 = v14;
      result = sub_100771D58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004D07C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090907C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADCD8, &qword_1013C5378);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_100771D58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909188(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE00, &qword_1013C5538);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADE08, &qword_1013C5540);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADE00, &qword_1013C5538);
      result = sub_1007723C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MACAddress();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909370(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADDF0, &qword_1013C5528);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADDF8, &qword_1013C5530);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADDF0, &qword_1013C5528);
      result = sub_1007723C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MACAddress();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for Date();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909590(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADDE8, &qword_1013C5518);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&unk_1016C3240, &qword_1013C5520);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADDE8, &qword_1013C5518);
      result = sub_1007723C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MACAddress();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1009097B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADD20, &qword_1013C53F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100777014();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1009098A8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADDD0, &qword_1013C5500);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADDD8, &qword_1013C5508);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADDD0, &qword_1013C5500);
      result = sub_100772524(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for OwnedBeaconRecord(0);
      result = sub_10090C57C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for OwnedBeaconRecord);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909AB0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE48, &unk_1013C5590);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&unk_1016C2D30, &unk_1013F7620);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADE48, &unk_1013C5590);
      result = sub_1000210EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016C2FC0, &qword_1013C53F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 32);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_100017D5C(v8, v9);
      result = sub_100772110(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909DD0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADCA8, &unk_1013C5340);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADCB0, &qword_1013F7560);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADCA8, &unk_1013C5340);
      result = sub_1000210EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for BeaconEstimatedLocation(0);
      result = sub_10090C57C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for BeaconEstimatedLocation);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090A034(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE50, &qword_1013C55A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADE58, &qword_1013C55A8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADE50, &qword_1013C55A0);
      result = sub_1000210EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for DispatchTime();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10090A254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1000BC4D4(&qword_1016C2C10, &qword_1013C5320);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100772048(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100772048(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10090A388(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE70, &qword_1013C55C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016C3290, &qword_1013C55C8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADE70, &qword_1013C55C0);
      result = sub_1000210EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for BeaconState(0);
      result = sub_10090C57C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for BeaconState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090A5A4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE60, &unk_1013C55B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADE68, &unk_1013F7A90);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADE60, &unk_1013C55B0);
      result = sub_1000210EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 40 * v13;
      v17 = *(v8 + 1);
      v18 = *(v8 + 4);
      v19 = *(v8 + 1);
      *v16 = *v8;
      *(v16 + 8) = v17;
      *(v16 + 16) = v19;
      *(v16 + 32) = v18;
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090A7A8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE80, &unk_1013C55E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&unk_1016AFA20, &qword_1013CB0B0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADE80, &unk_1013C55E0);
      result = sub_1000210EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090A9D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1000BC4D4(&qword_1016ADE30, &qword_1013C5578);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1000BC4D4(a2, a3);
    v11 = static _DictionaryStorage.allocate(capacity:)();
    v12 = *(v6 + 48);
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);

    while (1)
    {
      sub_1000D2A70(v13, v9, &qword_1016ADE30, &qword_1013C5578);
      result = sub_1000210EC(v9);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = v11[6];
      v19 = type metadata accessor for UUID();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v17, v9, v19);
      *(v11[7] + 16 * v17) = *&v9[v12];
      v20 = v11[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v11[2] = v22;
      v13 += v14;
      if (!--v10)
      {

        return v11;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090ABB8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADD98, &qword_1013C54B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADDA0, &qword_1013C54B8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADD98, &qword_1013C54B0);
      result = sub_1000210EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for Device();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090AE20(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_1000BC4D4(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_1000BC4D4(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1000D2A70(v16, v12, a2, v27);
      result = sub_100772AE4(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for BeaconKeyManager.FileKey(0);
      result = sub_10090C57C(v12, v21 + *(*(v22 - 8) + 72) * v20, type metadata accessor for BeaconKeyManager.FileKey);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B010(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000BC4D4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100771D58(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B10C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADC90, &qword_1013C52E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016C2C00, &qword_1013C52F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADC90, &qword_1013C52E8);
      v11 = *v5;
      result = sub_100771FF8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for BeaconStoreFileRecord(0);
      result = sub_10090C57C(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for BeaconStoreFileRecord);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B2F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016C3040, &qword_1013B6518);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, v13, &qword_1016ADD10, &qword_1013C53E0);
      result = sub_100771E5C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10004D07C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B454(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1000BC4D4(a2, a3);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = a1[4];
  v9 = a1[5];
  result = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v20 = v9;
    return v7;
  }

  v12 = (a1 + 7);
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + 8 * result) = v8;
    *(v7[7] + 8 * result) = v9;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v7[2] = v15;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v8 = *(v12 - 1);
    v17 = *v12;
    v18 = v9;
    result = a4(v8);
    v12 = v16;
    v9 = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10090B55C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101696C80, &qword_10138B5C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016A24B0, &qword_1013C5460);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_101696C80, &qword_10138B5C0);
      result = sub_100771E30(*v5, v5[1]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 16 * result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
      result = sub_10090C57C(v5 + v8, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for OwnedBeaconGroup.PairingState);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B740(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101696910, &qword_10138B1F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADD80, &unk_1013C5490);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_101696910, &qword_10138B1F0);
      result = sub_1000210EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for Date();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B984(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADD70, &qword_1013C5468);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&unk_1016C3090, &qword_1013C5470);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADD70, &qword_1013C5468);
      result = sub_1007723C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MACAddress();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090BB6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1000BC4D4(&qword_1016C2DD0, &unk_1013C53D0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_100771C58(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_100771C58(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10090BC7C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADD50, &qword_1013C5438);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000BC4D4(&qword_1016ADD58, &qword_1013C5440);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v9, v5, &qword_1016ADD50, &qword_1013C5438);
      result = sub_1000210EC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SafeLocation(0);
      result = sub_10090C57C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for SafeLocation);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090BE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADD18, &qword_1013C53E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_10077262C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090BF84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016A77E8, &unk_1013C53B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v11, &qword_1016ADCF8, &qword_101411890);
      v5 = v11;
      result = sub_100777014();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10004D07C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_10090C0AC()
{
  v0 = sub_100A5B550(0, 1, 1, _swiftEmptyArrayStorage);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_100A5B550((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[40 * v2];
  *(v5 + 2) = xmmword_1013C51D0;
  *(v5 + 6) = 0xE800000000000000;
  *(v5 + 7) = 2458820592;
  *(v5 + 8) = 0xA400000000000000;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_100A5B550((v1 > 1), v2 + 2, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[40 * v4];
  *(v7 + 2) = xmmword_1013C51E0;
  *(v7 + 6) = 0xE400000000000000;
  *(v7 + 7) = 2996477936;
  *(v7 + 8) = 0xA400000000000000;
  v8 = *(v0 + 3);
  v9 = v2 + 3;
  if ((v2 + 3) > (v8 >> 1))
  {
    v0 = sub_100A5B550((v8 > 1), v2 + 3, 1, v0);
  }

  *(v0 + 2) = v9;
  v10 = &v0[40 * v6];
  *(v10 + 2) = xmmword_1013C51F0;
  *(v10 + 6) = 0xE600000000000000;
  *(v10 + 7) = 3079905264;
  *(v10 + 8) = 0xA400000000000000;
  v11 = *(v0 + 3);
  v12 = v2 + 4;
  if ((v2 + 4) > (v11 >> 1))
  {
    v0 = sub_100A5B550((v11 > 1), v2 + 4, 1, v0);
  }

  *(v0 + 2) = v12;
  v13 = &v0[40 * v9];
  *(v13 + 2) = xmmword_1013C5200;
  *(v13 + 6) = 0xE700000000000000;
  *(v13 + 7) = 2626789360;
  *(v13 + 8) = 0xA400000000000000;
  v14 = *(v0 + 3);
  v15 = v2 + 5;
  if ((v2 + 5) > (v14 >> 1))
  {
    v0 = sub_100A5B550((v14 > 1), v2 + 5, 1, v0);
  }

  *(v0 + 2) = v15;
  v16 = &v0[40 * v12];
  *(v16 + 2) = xmmword_1013C5210;
  *(v16 + 6) = 0xE600000000000000;
  *(v16 + 7) = 2779226096;
  *(v16 + 8) = 0xA400000000000000;
  v17 = *(v0 + 3);
  v18 = v2 + 6;
  if ((v2 + 6) > (v17 >> 1))
  {
    v0 = sub_100A5B550((v17 > 1), v2 + 6, 1, v0);
  }

  *(v0 + 2) = v18;
  v19 = &v0[40 * v15];
  *(v19 + 2) = xmmword_1013C5220;
  *(v19 + 6) = 0xE400000000000000;
  *(v19 + 7) = 2442436592;
  *(v19 + 8) = 0xA400000000000000;
  v20 = *(v0 + 3);
  v21 = v2 + 7;
  if ((v2 + 7) > (v20 >> 1))
  {
    v0 = sub_100A5B550((v20 > 1), v2 + 7, 1, v0);
  }

  *(v0 + 2) = v21;
  v22 = &v0[40 * v18];
  *(v22 + 2) = xmmword_1013C5230;
  *(v22 + 6) = 0xE700000000000000;
  *(v22 + 7) = 3014107120;
  *(v22 + 8) = 0xA400000000000000;
  v23 = *(v0 + 3);
  v24 = v2 + 8;
  if ((v2 + 8) > (v23 >> 1))
  {
    v0 = sub_100A5B550((v23 > 1), v2 + 8, 1, v0);
  }

  *(v0 + 2) = v24;
  v25 = &v0[40 * v21];
  *(v25 + 2) = xmmword_1013C5240;
  *(v25 + 6) = 0xE800000000000000;
  *(v25 + 7) = 0x8FB8EF8298E2;
  *(v25 + 8) = 0xA600000000000000;
  v26 = *(v0 + 3);
  v27 = v2 + 9;
  if ((v2 + 9) > (v26 >> 1))
  {
    v0 = sub_100A5B550((v26 > 1), v2 + 9, 1, v0);
  }

  *(v0 + 2) = v27;
  v28 = &v0[40 * v24];
  *(v28 + 2) = xmmword_1013C5250;
  *(v28 + 6) = 0xE600000000000000;
  *(v28 + 7) = 3012730864;
  *(v28 + 8) = 0xA400000000000000;
  v29 = *(v0 + 3);
  if ((v2 + 10) > (v29 >> 1))
  {
    v0 = sub_100A5B550((v29 > 1), v2 + 10, 1, v0);
  }

  *(v0 + 2) = v2 + 10;
  v30 = &v0[40 * v27];
  *(v30 + 2) = xmmword_1013C5260;
  *(v30 + 6) = 0xEB00000000656D61;
  *(v30 + 7) = 2157486064;
  *(v30 + 8) = 0xA400000000000000;
  v31 = sub_100A5B444(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_100A5B444((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[32 * v33];
  *(v34 + 2) = xmmword_1013C5270;
  *(v34 + 6) = 0xE500000000000000;
  *(v34 + 7) = v0;
  return v31;
}

unint64_t sub_10090C518()
{
  result = qword_1016ADC60;
  if (!qword_1016ADC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC60);
  }

  return result;
}

id sub_10090C56C(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_10090C57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10090C60C(uint64_t a1)
{
  sub_1002359B8(319, &qword_10169A330, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016ADEF8, &type metadata for UInt);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &unk_1016A0CD8, &type metadata for Double);
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169D5F0, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_1002ECE54(319, &qword_1016A8840, &qword_1016B0470, &qword_10138EB80);
          if (v5 <= 0x3F)
          {
            sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
            if (v6 <= 0x3F)
            {
              sub_1002359B8(319, &qword_1016A8838, &type metadata for Int);
              if (v7 <= 0x3F)
              {
                sub_1002ECE54(319, &qword_1016ADF00, &qword_101697E90, &qword_10138EB50);
                if (v8 <= 0x3F)
                {
                  sub_1002ECE54(319, &qword_1016ADF08, &qword_101697EA0, &qword_10138EB60);
                  if (v9 <= 0x3F)
                  {
                    sub_10090CC98(319, &qword_1016ADF10, type metadata accessor for SPServiceState);
                    if (v10 <= 0x3F)
                    {
                      sub_1002ECE54(319, &qword_1016ADF18, &qword_101697E78, &qword_1013F0760);
                      if (v11 <= 0x3F)
                      {
                        sub_10090CC98(319, &qword_1016B1C20, &type metadata accessor for UUID);
                        if (v12 <= 0x3F)
                        {
                          sub_10090CC98(319, &qword_1016BA040, &type metadata accessor for Date);
                          if (v13 <= 0x3F)
                          {
                            sub_1002359B8(319, &qword_1016ADF20, &type metadata for AllMacBeaconConfigs);
                            if (v14 <= 0x3F)
                            {
                              sub_1002ECE54(319, &qword_1016ADF28, &qword_101697E40, qword_1013C5620);
                              if (v15 <= 0x3F)
                              {
                                sub_1002359B8(319, &qword_10169A148, &type metadata for UInt64);
                                if (v16 <= 0x3F)
                                {
                                  sub_1002ECE54(319, &qword_1016ADF30, &qword_101697E28, &qword_10138EA70);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1002359B8(319, &qword_1016ADF38, &type metadata for UInt32);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1002359B8(319, &unk_1016ADF40, &type metadata for Int8);
                                      if (v19 <= 0x3F)
                                      {
                                        swift_cvw_initStructMetadataWithLayoutString();
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10090CC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10090CCEC()
{
  result = qword_1016AE248;
  if (!qword_1016AE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE248);
  }

  return result;
}

unint64_t sub_10090CD40()
{
  result = qword_1016AE250;
  if (!qword_1016AE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE250);
  }

  return result;
}

unint64_t sub_10090CD94()
{
  result = qword_1016AE258;
  if (!qword_1016AE258)
  {
    sub_1000BC580(&qword_101697E90, &qword_10138EB50);
    sub_10090CE50();
    sub_10090D1C4(&qword_1016AE268, type metadata accessor for FeatureSupportMatrix, &unk_1013EC7BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE258);
  }

  return result;
}

unint64_t sub_10090CE50()
{
  result = qword_1016AE260;
  if (!qword_1016AE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE260);
  }

  return result;
}

uint64_t sub_10090CEA4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697E78, &qword_1013F0760);
    sub_10090D1C4(a2, type metadata accessor for SPDisabledReason, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10090CF40()
{
  result = qword_1016AE288;
  if (!qword_1016AE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE288);
  }

  return result;
}

unint64_t sub_10090CF94()
{
  result = qword_1016AE2A0;
  if (!qword_1016AE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2A0);
  }

  return result;
}

unint64_t sub_10090CFE8()
{
  result = qword_1016AE2A8;
  if (!qword_1016AE2A8)
  {
    sub_1000BC580(&qword_101697E90, &qword_10138EB50);
    sub_10090D0A4();
    sub_10090D1C4(&qword_1016AE2B8, type metadata accessor for FeatureSupportMatrix, &unk_1013EC794);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2A8);
  }

  return result;
}

unint64_t sub_10090D0A4()
{
  result = qword_1016AE2B0;
  if (!qword_1016AE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2B0);
  }

  return result;
}

uint64_t sub_10090D0F8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697EA0, &qword_10138EB60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10090D170()
{
  result = qword_1016AE2C8;
  if (!qword_1016AE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2C8);
  }

  return result;
}

uint64_t sub_10090D1C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10090D20C()
{
  result = qword_1016AE2E8;
  if (!qword_1016AE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2E8);
  }

  return result;
}

uint64_t sub_10090D260(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697E28, &qword_10138EA70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultConfigurationLayer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x4C)
  {
    goto LABEL_17;
  }

  if (a2 + 180 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 180) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 180;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 180;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 180;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB5;
  v8 = v6 - 181;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultConfigurationLayer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 180 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 180) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x4C)
  {
    v4 = 0;
  }

  if (a2 > 0x4B)
  {
    v5 = ((a2 - 76) >> 8) + 1;
    *result = a2 - 76;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 - 76;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10090D424()
{
  result = qword_1016AE2F8;
  if (!qword_1016AE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2F8);
  }

  return result;
}

unint64_t sub_10090D47C()
{
  result = qword_1016AE300;
  if (!qword_1016AE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE300);
  }

  return result;
}

unint64_t sub_10090D4D4()
{
  result = qword_1016AE308;
  if (!qword_1016AE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE308);
  }

  return result;
}

uint64_t sub_10090D528(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000101348500 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496873696C627570 && a2 == 0xEF6C61767265746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101364A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101364A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013485D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74537265646E6966 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74736F486E736361 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101364AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101364AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101348A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101348A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000101348A80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001013485A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001013485F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101348610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101348630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000101348650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000003ALL && 0x8000000101348680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000043 && 0x80000001013486C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000028 && 0x8000000101348730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101348760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001013487B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013487D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001013487F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101348810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101364AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101364B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101364B50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001013488C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000001013488F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101348920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD00000000000002CLL && 0x8000000101348950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101348980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001013489A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013489D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001013489F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101348AE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101348B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x65746143656C6F72 && a2 == 0xEE00736569726F67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000101348B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x5365636976726573 && a2 == 0xEC00000065746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101364B70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101348BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101348BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101348C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101348C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101348C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0x63616542666C6573 && a2 == 0xEE00444955556E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101364B90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101364BB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x5279654B7473616CLL && a2 == 0xEF657461446C6C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101348C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101348CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348CD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101348D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101348D30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101364BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101348D50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0x724473776F6C6C61 && a2 == 0xEE00676E69746661 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101364BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101348DE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0xD000000000000028 && 0x8000000101348E10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000101348E40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348E70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 75;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101348EA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 76;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101364C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 77;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101364C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 78;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101349A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 79;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101349A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 80;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349A80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 81;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101349AA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 82;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101349AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 83;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101364C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 84;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101364C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 85;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000101364C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 86;
  }

  else if (a1 == 0x6941656C65487369 && a2 == 0xED000073646F5072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 87;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001013490B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 88;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001013490D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 89;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348EC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 90;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101348EF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 91;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000101348F20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 92;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348F50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 93;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101348F80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 94;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000101348FA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 95;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000101348FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 96;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101348FF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 97;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101348BB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 98;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101349020 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 99;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349040 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 100;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 101;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 102;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001013490F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 103;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101349110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 104;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101349140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 105;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101349170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 106;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101349190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 107;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001013491B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 108;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013491D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 109;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001013491F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 110;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 111;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000101349230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 112;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101349260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 113;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101349280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 114;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001013492B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 115;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001013492D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 116;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001013492F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 117;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000101349310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 118;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000101349330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 119;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101349360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 120;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101349380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 121;
  }

  else if (a1 == 0xD000000000000032 && 0x8000000101364CC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 122;
  }

  else if (a1 == 0xD000000000000031 && 0x8000000101364D00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 123;
  }

  else if (a1 == 0xD000000000000032 && 0x8000000101364D40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 124;
  }

  else if (a1 == 0xD000000000000031 && 0x8000000101364D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 125;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001013493B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 126;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001013493E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 127;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 128;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 129;
  }

  else if (a1 == 0xD000000000000032 && 0x8000000101349450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 130;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101349490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 131;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013494B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 132;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101364DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 133;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013494D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 134;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001013494F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 135;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101349520 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 136;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000101349540 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 137;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101349560 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 138;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101349580 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 139;
  }

  else if (a1 == 0x657261685378616DLL && a2 == 0xEF737265626D654DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 140;
  }

  else if (a1 == 0x657261685378616DLL && a2 == 0xEE00736D65744964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 141;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001013495B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 142;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001013495D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 143;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001013495F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 144;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 145;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101349630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 146;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101349650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 147;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101349680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 148;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001013496B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 149;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001013496E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 150;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 151;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000101349730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 152;
  }

  else if (a1 == 0xD00000000000002DLL && 0x8000000101349760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 153;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 154;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001013497B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 155;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001013497E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 156;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101349AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 157;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 158;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101349B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 159;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101349B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 160;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101349B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 161;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101349BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 162;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000101349BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 163;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101349810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 164;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 165;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101349850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 166;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101349870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 167;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 168;
  }

  else if (a1 == 0xD00000000000002DLL && 0x80000001013498B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 169;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001013498E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 170;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101349910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 171;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 172;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 173;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101349970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 174;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001013499A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 175;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001013499D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 176;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013499F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 177;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 178;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 179;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101349C10 == a2)
  {

    return 180;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4294967220;
    }

    else
    {
      return 4294967221;
    }
  }
}