uint64_t sub_1C5B4DF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v266 = a6;
  *&v267 = a8;
  v277 = a4;
  v262 = a3;
  *&v264 = a1;
  v275 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1C5950C90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v312 = &type metadata for NowPlayingLookupID;
  *(&v312 + 1) = AssociatedTypeWitness;
  *&v313 = v13;
  *(&v313 + 1) = AssociatedConformanceWitness;
  v15 = type metadata accessor for ViewProvider(0, &v312);
  v255 = *(v15 - 8);
  v256 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v254 = &v244 - v16;
  v270 = AssociatedTypeWitness;
  v268 = swift_getAssociatedTypeWitness();
  v17 = sub_1C5BCB804();
  v258 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v257 = &v244 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  *&v265 = &v244 - v20;
  v22 = _s15ContextMenuViewVMa(255, a5, a7, v21);
  v23 = sub_1C5BC92D4();
  v259 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v263 = &v244 - v24;
  v284 = v25;
  v26 = sub_1C5BC92D4();
  v260 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v261 = &v244 - v27;
  v281 = v22;
  v248 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v247 = &v244 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v246 = &v244 - v31;
  v32 = type metadata accessor for NowPlayingRouteButton.Content(0);
  MEMORY[0x1EEE9AC00](v32);
  v249 = (&v244 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v280 = _s23ForwardsTransportButtonVMa(255, a5, a7, v34);
  v250 = v32;
  v35 = sub_1C5BC92D4();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v251 = &v244 - v37;
  v39 = _s24BackwardsTransportButtonVMa(255, a5, a7, v38);
  v41 = _s21TransportControlsViewV22MiniPlayerCenterButtonVMa(255, a5, a7, v40);
  v279 = v39;
  v283 = v41;
  v282 = sub_1C5BC92D4();
  v271 = v35;
  v42 = sub_1C5BC92D4();
  v253 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v252 = &v244 - v43;
  v274 = v26;
  v44 = sub_1C5BC92D4();
  v272 = *(v44 - 8);
  v273 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v276 = &v244 - v45;
  v278 = v42;
  v269 = AssociatedConformanceWitness;
  if (v262)
  {

    sub_1C5950CE4(0x647261776B636142, 0xE900000000000073);
    v46 = a5;
    v47 = v264;
    sub_1C5950CE4(v264, a2);

    sub_1C5950CE4(0x7265746E6543, 0xE600000000000000);
    sub_1C5950CE4(v47, a2);

    sub_1C5950CE4(0x7364726177726F46, 0xE800000000000000);
    sub_1C5950CE4(v47, a2);

    sub_1C5950CE4(0x7475426574756F52, 0xEB000000006E6F74);
    sub_1C5950CE4(v47, a2);

    sub_1C5950CE4(0x4D747865746E6F43, 0xEB00000000756E65);
    sub_1C5950CE4(v47, a2);
    *&v312 = v46;
    *(&v312 + 1) = v266;
    *&v313 = a7;
    *(&v313 + 1) = v267;
    v48 = _s23MiniPlayerAccessoryViewVMa(0, &v312);
    v49 = (v277 + *(v48 + 72));
    v50 = *v49;
    v51 = v49[1];
    sub_1C5951550(v47, a2);
    sub_1C59498C4(v50, v51, v46, a7[1]);
    v52 = a7[48];
    swift_unknownObjectRetain();
    v53 = v254;
    v52(v46, a7);
    swift_unknownObjectRelease();
    *&v312 = v47;
    *(&v312 + 1) = a2;
    v54 = v256;
    v55 = v257;
    sub_1C595BC70();

    (*(v255 + 8))(v53, v54);
    v277 = swift_getAssociatedConformanceWitness();
    v392 = v277;
    WitnessTable = swift_getWitnessTable();
    v57 = v265;
    sub_1C593EDC0(v55, v17, WitnessTable);
    v270 = *(v258 + 8);
    v270(v55, v17);
    sub_1C593EDC0(v57, v17, WitnessTable);
    v58 = v281;
    v59 = swift_getWitnessTable();
    v60 = v263;
    sub_1C5941738(v55, v58, v17, v59, WitnessTable);
    v390 = v59;
    v391 = WitnessTable;
    v61 = swift_getWitnessTable();
    v62 = v261;
    sub_1C5950E54(v60, v284, MEMORY[0x1E6981E70], v61, MEMORY[0x1E6981E60]);
    (*(v259 + 8))(v60, v284);
    v63 = swift_getWitnessTable();
    v64 = swift_getWitnessTable();
    v388 = v63;
    v389 = v64;
    v65 = swift_getWitnessTable();
    v66 = swift_getWitnessTable();
    v67 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
    v386 = v66;
    v387 = v67;
    v68 = swift_getWitnessTable();
    v384 = v65;
    v385 = v68;
    v69 = v278;
    v70 = swift_getWitnessTable();
    v382 = v61;
    v383 = MEMORY[0x1E6981E60];
    v71 = v274;
    v72 = swift_getWitnessTable();
    v73 = v276;
    sub_1C5941738(v62, v69, v71, v70, v72);
    (*(v260 + 8))(v62, v71);
    v74 = v270;
    v270(v55, v17);
    v74(v265, v17);
    v75 = v73;
    goto LABEL_8;
  }

  *&v265 = v36;
  v77 = v263;
  v76 = v264;
  v245 = v17;
  if (v264 == 0x647261776B636142 && a2 == 0xE900000000000073)
  {

    sub_1C5950CE4(0x647261776B636142, 0xE900000000000073);
    sub_1C5950CE4(0x647261776B636142, 0xE900000000000073);
    v78 = v277;
LABEL_7:
    *&v312 = a5;
    *(&v312 + 1) = v266;
    *&v313 = a7;
    *(&v313 + 1) = v267;
    v80 = _s23MiniPlayerAccessoryViewVMa(0, &v312);
    sub_1C59498C4(*(v78 + *(v80 + 72)), *(v78 + *(v80 + 72) + 8), a5, a7[1]);
    v81 = v42;
    v82 = a7[28];
    swift_unknownObjectRetain();
    v83 = v82(a5, a7);
    swift_unknownObjectRelease();
    v84 = *(v83 + 104);

    *&v312 = sub_1C59519CC(v84, a5, a7);
    *(&v312 + 1) = v85;
    *&v313 = v86;
    *(&v313 + 1) = v87;
    v88 = v279;
    v89 = swift_getWitnessTable();
    sub_1C593EDC0(&v312, v88, v89);

    swift_unknownObjectRelease();
    v266 = *(&v321 + 1);
    v312 = v321;
    v267 = v322;
    v313 = v322;
    sub_1C593EDC0(&v312, v88, v89);
    *&v264 = *(&v317 + 1);
    v307 = v317;
    v265 = v318;
    v308 = v318;
    v90 = v283;
    v91 = swift_getWitnessTable();
    sub_1C5950E54(&v307, v88, v90, v89, v91);
    v307 = v312;
    v308 = v313;
    v309 = v314;
    v310 = v315;
    v311 = v316;
    v294 = v89;
    v295 = v91;
    v92 = v282;
    v93 = swift_getWitnessTable();
    v94 = swift_getWitnessTable();
    v95 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
    v292 = v94;
    v293 = v95;
    v96 = v271;
    v97 = swift_getWitnessTable();
    v98 = v252;
    sub_1C5950E54(&v307, v92, v96, v93, v97);
    sub_1C5950F4C(v307, *(&v307 + 1), v308, *(&v308 + 1), v309, v310, v311);
    v290 = v93;
    v291 = v97;
    v99 = swift_getWitnessTable();
    v100 = swift_getWitnessTable();
    v277 = swift_getAssociatedConformanceWitness();
    v289 = v277;
    v101 = swift_getWitnessTable();
    v287 = v100;
    v288 = v101;
    v285 = swift_getWitnessTable();
    v286 = MEMORY[0x1E6981E60];
    v102 = v274;
    v103 = swift_getWitnessTable();
    v75 = v276;
    sub_1C5950E54(v98, v81, v102, v99, v103);
    (*(v253 + 8))(v98, v81);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v79 = sub_1C5BCBDE4();

  sub_1C5950CE4(0x647261776B636142, 0xE900000000000073);
  sub_1C5950CE4(v76, a2);
  v78 = v277;
  if (v79)
  {
    goto LABEL_7;
  }

  if (v76 == 0x7265746E6543 && a2 == 0xE600000000000000)
  {

    sub_1C5950CE4(0x7265746E6543, 0xE600000000000000);
    sub_1C5950CE4(0x7265746E6543, 0xE600000000000000);
    v117 = v283;
LABEL_13:
    *&v312 = a5;
    *(&v312 + 1) = v266;
    *&v313 = a7;
    *(&v313 + 1) = v267;
    v119 = _s23MiniPlayerAccessoryViewVMa(0, &v312);
    sub_1C59498C4(*(v78 + *(v119 + 72)), *(v78 + *(v119 + 72) + 8), a5, a7[1]);
    v120 = a7[28];
    swift_unknownObjectRetain();
    v120(a5, a7);
    swift_unknownObjectRelease();

    sub_1C5950CEC(&v312);
    v307 = v312;
    v308 = v313;
    v309 = v314;
    v310 = v315;
    v121 = swift_getWitnessTable();
    v277 = v121;
    sub_1C593EDC0(&v307, v117, v121);
    v122 = v309;
    v123 = v310;

    swift_unknownObjectRelease();
    sub_1C5950E44(v122, v123);
    v124 = v323;
    v125 = v324;
    v312 = v321;
    v267 = v322;
    v313 = v322;
    v314 = v323;
    v315 = v324;
    sub_1C593EDC0(&v312, v117, v121);
    v126 = v117;
    v127 = v314;
    v128 = v279;
    LOBYTE(v121) = v315;
    swift_unknownObjectRetain();

    sub_1C5950E48(v124, v125);

    swift_unknownObjectRelease();
    sub_1C5950E44(v127, v121);
    v129 = v319;
    v130 = v320;
    v307 = v317;
    v308 = v318;
    v309 = v319;
    v310 = v320;
    swift_unknownObjectRetain();

    sub_1C5950E48(v129, v130);
    v131 = swift_getWitnessTable();
    v132 = v277;
    sub_1C5941738(&v307, v128, v126, v131, v277);
    v133 = v309;
    v134 = v310;

    swift_unknownObjectRelease();
    sub_1C5950E44(v133, v134);
    v307 = v312;
    v308 = v313;
    v309 = v314;
    v310 = v315;
    v311 = v316;
    v305 = v131;
    v306 = v132;
    v135 = v282;
    v136 = swift_getWitnessTable();
    v137 = swift_getWitnessTable();
    v138 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
    v303 = v137;
    v304 = v138;
    v139 = v271;
    v140 = swift_getWitnessTable();
    v141 = v252;
    sub_1C5950E54(&v307, v135, v139, v136, v140);
    sub_1C5950F4C(v307, *(&v307 + 1), v308, *(&v308 + 1), v309, v310, v311);
    v301 = v136;
    v302 = v140;
    v142 = v278;
    v143 = swift_getWitnessTable();
    v144 = swift_getWitnessTable();
    v277 = swift_getAssociatedConformanceWitness();
    v300 = v277;
    v145 = swift_getWitnessTable();
    v298 = v144;
    v299 = v145;
    v296 = swift_getWitnessTable();
    v297 = MEMORY[0x1E6981E60];
    v146 = v274;
    v147 = swift_getWitnessTable();
    v75 = v276;
    sub_1C5950E54(v141, v142, v146, v143, v147);
    (*(v253 + 8))(v141, v142);
    v148 = v319;
    LOBYTE(v144) = v320;

    swift_unknownObjectRelease();
    sub_1C5950E44(v148, v144);
    v149 = v323;
    LOBYTE(v144) = v324;

    swift_unknownObjectRelease();
    sub_1C5950E44(v149, v144);
    goto LABEL_8;
  }

  v118 = sub_1C5BCBDE4();

  sub_1C5950CE4(0x7265746E6543, 0xE600000000000000);
  sub_1C5950CE4(v76, a2);
  v117 = v283;
  if (v118)
  {
    goto LABEL_13;
  }

  if (v76 == 0x7364726177726F46 && a2 == 0xE800000000000000)
  {

    sub_1C5950CE4(0x7364726177726F46, 0xE800000000000000);
    sub_1C5950CE4(0x7364726177726F46, 0xE800000000000000);
    v150 = v282;
    v152 = v266;
    v151 = v267;
LABEL_18:
    *&v312 = a5;
    *(&v312 + 1) = v152;
    *&v313 = a7;
    *(&v313 + 1) = v151;
    v154 = _s23MiniPlayerAccessoryViewVMa(0, &v312);
    sub_1C59498C4(*(v277 + *(v154 + 72)), *(v277 + *(v154 + 72) + 8), a5, a7[1]);
    v155 = a7[28];
    swift_unknownObjectRetain();
    v156 = v155(a5, a7);
    swift_unknownObjectRelease();
    v157 = *(v156 + 104);

    *&v307 = sub_1C59519CC(v157, a5, a7);
    *(&v307 + 1) = v158;
    *&v308 = v159;
    *(&v308 + 1) = v160;
    v161 = v280;
    v162 = swift_getWitnessTable();
    sub_1C593EDC0(&v307, v161, v162);

    swift_unknownObjectRelease();
    v266 = *(&v312 + 1);
    v321 = v312;
    v267 = v313;
    v322 = v313;
    sub_1C593EDC0(&v321, v161, v162);
    v321 = v307;
    v264 = v308;
    v322 = v308;
    v163 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
    v164 = v251;
    sub_1C5950E54(&v321, v161, v250, v162, v163);
    v165 = swift_getWitnessTable();
    v166 = swift_getWitnessTable();
    v334 = v165;
    v335 = v166;
    v167 = swift_getWitnessTable();
    v332 = v162;
    v333 = v163;
    v168 = v150;
    v169 = v271;
    v170 = swift_getWitnessTable();
    v171 = v252;
    sub_1C5941738(v164, v168, v169, v167, v170);
    (*(v265 + 8))(v164, v169);
    v330 = v167;
    v331 = v170;
    v172 = v278;
    v173 = swift_getWitnessTable();
    v174 = swift_getWitnessTable();
    v277 = swift_getAssociatedConformanceWitness();
    v329 = v277;
    v175 = swift_getWitnessTable();
    v327 = v174;
    v328 = v175;
    v325 = swift_getWitnessTable();
    v326 = MEMORY[0x1E6981E60];
    v176 = v274;
    v177 = swift_getWitnessTable();
    v75 = v276;
    sub_1C5950E54(v171, v172, v176, v173, v177);
    (*(v253 + 8))(v171, v172);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v153 = sub_1C5BCBDE4();

  sub_1C5950CE4(0x7364726177726F46, 0xE800000000000000);
  sub_1C5950CE4(v76, a2);
  v150 = v282;
  v152 = v266;
  v151 = v267;
  if (v153)
  {
    goto LABEL_18;
  }

  if (v76 == 0x7475426574756F52 && a2 == 0xEB000000006E6F74)
  {

    sub_1C5950CE4(0x7475426574756F52, 0xEB000000006E6F74);
    sub_1C5950CE4(0x7475426574756F52, 0xEB000000006E6F74);
    v178 = v276;
LABEL_23:
    v75 = v178;
    KeyPath = swift_getKeyPath(byte_1C5BECD90);
    v181 = v249;
    *v249 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A000, &qword_1C5BECDC0);
    swift_storeEnumTagMultiPayload();
    v182 = v250;
    v183 = (v181 + *(v250 + 20));
    type metadata accessor for NowPlayingRouteObserver(0);
    sub_1C594F9D8(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
    *v183 = sub_1C5BC8C84();
    v183[1] = v184;
    v185 = *(v182 + 24);
    *(v181 + v185) = swift_getKeyPath("xw[&");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
    swift_storeEnumTagMultiPayload();
    v186 = v181 + *(v182 + 28);
    *v186 = swift_getKeyPath("Hw[&");
    v186[8] = 0;
    v187 = v280;
    v188 = swift_getWitnessTable();
    v189 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
    v190 = v251;
    sub_1C5941738(v181, v187, v182, v188, v189);
    v191 = swift_getWitnessTable();
    v192 = swift_getWitnessTable();
    v345 = v191;
    v346 = v192;
    v193 = v282;
    v194 = swift_getWitnessTable();
    v343 = v188;
    v344 = v189;
    v195 = v271;
    v196 = swift_getWitnessTable();
    v197 = v252;
    sub_1C5941738(v190, v193, v195, v194, v196);
    (*(v265 + 8))(v190, v195);
    v341 = v194;
    v342 = v196;
    v198 = v278;
    v199 = swift_getWitnessTable();
    v200 = swift_getWitnessTable();
    v277 = swift_getAssociatedConformanceWitness();
    v340 = v277;
    v201 = swift_getWitnessTable();
    v338 = v200;
    v339 = v201;
    v336 = swift_getWitnessTable();
    v337 = MEMORY[0x1E6981E60];
    v202 = v274;
    v203 = swift_getWitnessTable();
    sub_1C5950E54(v197, v198, v202, v199, v203);
    (*(v253 + 8))(v197, v198);
    sub_1C5B50BC0(v249, type metadata accessor for NowPlayingRouteButton.Content);
    goto LABEL_8;
  }

  v179 = sub_1C5BCBDE4();

  sub_1C5950CE4(0x7475426574756F52, 0xEB000000006E6F74);
  sub_1C5950CE4(v76, a2);
  v178 = v276;
  if (v179)
  {
    goto LABEL_23;
  }

  if (v76 == 0x4D747865746E6F43 && a2 == 0xEB00000000756E65)
  {

    sub_1C5950CE4(0x4D747865746E6F43, 0xEB00000000756E65);
    sub_1C5950CE4(0x4D747865746E6F43, 0xEB00000000756E65);
    v204 = v245;
  }

  else
  {
    v205 = sub_1C5BCBDE4();

    sub_1C5950CE4(0x4D747865746E6F43, 0xEB00000000756E65);
    sub_1C5950CE4(v76, a2);
    v204 = v245;
    if ((v205 & 1) == 0)
    {
      v229 = swift_getWitnessTable();
      v277 = swift_getAssociatedConformanceWitness();
      v368 = v277;
      v230 = swift_getWitnessTable();
      v366 = v229;
      v367 = v230;
      v231 = v284;
      v232 = swift_getWitnessTable();
      v233 = v261;
      sub_1C5941738(v232, v231, MEMORY[0x1E6981E70], v232, MEMORY[0x1E6981E60]);
      v234 = swift_getWitnessTable();
      v235 = swift_getWitnessTable();
      v364 = v234;
      v365 = v235;
      v236 = swift_getWitnessTable();
      v237 = swift_getWitnessTable();
      v238 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
      v362 = v237;
      v363 = v238;
      v239 = swift_getWitnessTable();
      v360 = v236;
      v361 = v239;
      v240 = v278;
      v241 = swift_getWitnessTable();
      v358 = v232;
      v359 = MEMORY[0x1E6981E60];
      v242 = v274;
      v243 = swift_getWitnessTable();
      v75 = v276;
      sub_1C5941738(v233, v240, v242, v241, v243);
      (*(v260 + 8))(v233, v242);
      goto LABEL_8;
    }
  }

  v206 = v247;
  sub_1C5A309FC(a5, a7, v247);
  v207 = v281;
  v208 = swift_getWitnessTable();
  v209 = v246;
  sub_1C593EDC0(v206, v207, v208);
  v210 = *(v248 + 8);
  v248 += 8;
  *&v267 = v210;
  v210(v206, v207);
  sub_1C593EDC0(v209, v207, v208);
  v277 = swift_getAssociatedConformanceWitness();
  v357 = v277;
  v211 = swift_getWitnessTable();
  sub_1C5950E54(v206, v207, v204, v208, v211);
  v355 = v208;
  v356 = v211;
  v212 = v284;
  v213 = v77;
  v214 = swift_getWitnessTable();
  v215 = v77;
  v216 = MEMORY[0x1E6981E60];
  sub_1C5950E54(v215, v212, MEMORY[0x1E6981E70], v214, MEMORY[0x1E6981E60]);
  (*(v259 + 8))(v213, v212);
  v217 = swift_getWitnessTable();
  v218 = swift_getWitnessTable();
  v353 = v217;
  v354 = v218;
  v219 = swift_getWitnessTable();
  v220 = swift_getWitnessTable();
  v221 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
  v351 = v220;
  v352 = v221;
  v222 = swift_getWitnessTable();
  v349 = v219;
  v350 = v222;
  v223 = v278;
  v224 = swift_getWitnessTable();
  v347 = v214;
  v348 = v216;
  v225 = v274;
  v226 = swift_getWitnessTable();
  v75 = v276;
  v227 = v261;
  sub_1C5941738(v261, v223, v225, v224, v226);
  (*(v260 + 8))(v227, v225);
  v228 = v267;
  (v267)(v247, v207);
  v228(v246, v207);
LABEL_8:
  v104 = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  v380 = v104;
  v381 = v105;
  v106 = swift_getWitnessTable();
  v107 = swift_getWitnessTable();
  v108 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
  v378 = v107;
  v379 = v108;
  v109 = swift_getWitnessTable();
  v376 = v106;
  v377 = v109;
  v110 = swift_getWitnessTable();
  v111 = swift_getWitnessTable();
  v375 = v277;
  v112 = swift_getWitnessTable();
  v373 = v111;
  v374 = v112;
  v371 = swift_getWitnessTable();
  v372 = MEMORY[0x1E6981E60];
  v113 = swift_getWitnessTable();
  v369 = v110;
  v370 = v113;
  v114 = v273;
  v115 = swift_getWitnessTable();
  sub_1C593EDC0(v75, v114, v115);
  return (*(v272 + 8))(v75, v114);
}

uint64_t sub_1C5B50394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B503F8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v15[0] = v2[2];
  v5 = v15[0];
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v9 = *(_s23MiniPlayerAccessoryViewVMa(0, v15) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for NowPlayingMiniPlayerSpecs(0) - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1C5B4D08C(a1, v2 + v10, v13, v5, v6, v7, v8, a2);
}

unint64_t sub_1C5B50530()
{
  result = qword_1EDA45FC0;
  if (!qword_1EDA45FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45FC0);
  }

  return result;
}

uint64_t sub_1C5B50584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v47 = a3;
  v46 = a2;
  v10 = _s21TransportControlsViewV20MiniPlayerEdgeButtonVMa(255, a4, a5, a3);
  sub_1C5BC97C4();
  v50 = v10;
  v11 = sub_1C5BC8AB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v43 - v16;
  v17 = sub_1C5BCB804();
  v51 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v49 = &v43 - v21;
  swift_beginAccess();
  v22 = *(a1 + 32);
  if (v22 == 255)
  {
    (*(v12 + 56))(v19, 1, 1, v11);
    WitnessTable = swift_getWitnessTable();
    v36 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v62 = WitnessTable;
    v63 = v36;
    swift_getWitnessTable();
  }

  else
  {
    v45 = a6;
    v44 = v17;
    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v56 = &type metadata for NowPlayingViewModel.LeadingTransportButtonConfiguration;
    v57 = sub_1C5A6CAD0();
    *&v54 = v24;
    *(&v54 + 1) = v23;
    v55 = v22 & 1;
    swift_beginAccess();
    v25 = *(a1 + 57);
    sub_1C59525FC(v24, v23, v22);
    v26 = sub_1C59498C4(v46, v47, a4, *(a5 + 8));
    v27 = swift_allocObject();
    v27[2] = a4;
    v27[3] = a5;
    v27[4] = v26;
    swift_unknownObjectRetain();
    v28 = v27;
    v17 = v44;
    sub_1C5973B04(&v54, v25, sub_1C5B50C20, v28, v58);
    v29 = v50;
    v30 = swift_getWitnessTable();
    sub_1C595BB1C(0xD000000000000022, 0x80000001C5BFC430, v29);
    (*(*(v29 - 8) + 8))(v58, v29);
    v31 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v52 = v30;
    v53 = v31;
    v32 = swift_getWitnessTable();
    v33 = v48;
    sub_1C593EDC0(v14, v11, v32);
    v34 = *(v12 + 8);
    v34(v14, v11);
    sub_1C593EDC0(v33, v11, v32);
    v34(v33, v11);
    (*(v12 + 32))(v19, v14, v11);
    (*(v12 + 56))(v19, 0, 1, v11);
  }

  v37 = v49;
  sub_1C5941600(v19, v49);
  v38 = *(v51 + 8);
  v38(v19, v17);
  v39 = swift_getWitnessTable();
  v40 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v60 = v39;
  v61 = v40;
  v59 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  sub_1C593EDC0(v37, v17, v41);
  return (v38)(v37, v17);
}

uint64_t sub_1C5B50BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

float sub_1C5B50C98()
{
  swift_getKeyPath(byte_1C5BECF88);
  sub_1C5B51124();
  sub_1C5BC7B74();

  return *(v0 + 16);
}

float sub_1C5B50D08@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BECF88);
  sub_1C5B51124();
  sub_1C5BC7B74();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_1C5B50D80(float a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BECF88);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B51124();
    sub_1C5BC7B64();
  }
}

uint64_t NowPlayingViewModel.VolumeControl.deinit()
{

  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel13VolumeControl___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NowPlayingViewModel.VolumeControl.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel13VolumeControl___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B50F74()
{
  v1 = OBJC_IVAR____TtCCC11MediaCoreUI19NowPlayingViewModel13VolumeControlP33_F913C71E0C68724A4AEE47C526AAF02510MiniPlayer___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall NowPlayingViewModel.VolumeControl.setVolume(_:)(Swift::Float a1)
{
  swift_getKeyPath(byte_1C5BECF88);
  sub_1C5B51124();
  sub_1C5BC7B74();

  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath(byte_1C5BECF88);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5BC7B64();
  }
}

unint64_t sub_1C5B51124()
{
  result = qword_1EDA4A998;
  if (!qword_1EDA4A998)
  {
    type metadata accessor for NowPlayingViewModel.VolumeControl(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A998);
  }

  return result;
}

float sub_1C5B5117C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

void static NowPlayingButtonID.routeAndVolumeControl.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x80000001C5BFC490;
  *(a1 + 16) = 0;
}

uint64_t sub_1C5B51200(uint64_t a1)
{
  result = sub_1C5BC7BB4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s13VolumeControlC6ActionOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13VolumeControlC6ActionOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1C5B51304(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5B51320(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WaveformView.ProcessID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WaveformView.ProcessID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1C5B513CC()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA5DA48);
  __swift_project_value_buffer(v0, qword_1EDA5DA48);
  return sub_1C5BC7D54();
}

unint64_t sub_1C5B51444(unsigned __int8 a1)
{
  v1 = 0xD00000000000001ELL;
  if (a1 <= 3u)
  {
    v4 = 0xD000000000000020;
    if (a1 != 2)
    {
      v4 = 0xD00000000000001FLL;
    }

    if (a1)
    {
      v1 = 0xD000000000000099;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a1 == 6)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 != 4)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1C5B5156C()
{
  result = qword_1EC198C58;
  if (!qword_1EC198C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198C58);
  }

  return result;
}

uint64_t sub_1C5B515C0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1C5BCB0B4();
  *a2 = result;
  return result;
}

uint64_t sub_1C5B51638(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C5B517BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_1C5B51A0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1C5B51B18(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1C5B51CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1C5B51D44(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_currentTexture] = 0;
  v6 = OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_displayModeSubject;
  LOBYTE(v18[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193938, &qword_1C5BD88B8);
  swift_allocObject();
  *&v2[v6] = sub_1C5BC7F84();
  *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider____lazy_storage___displayModePublisher] = 0;
  *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_image] = a1;
  *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_textureLoader] = a2;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v7 = a1;
  v8 = a2;
  v9 = objc_msgSendSuper2(&v19, sel_init, v18[0]);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v9;

  v12 = [v7 CGImage];
  if (v12)
  {
    v13 = v12;
    if (qword_1EC1908E8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Option(0);
    sub_1C5B52764();
    v14 = sub_1C5BCACA4();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C5B52758;
    *(v15 + 24) = v10;
    v18[4] = sub_1C5A11004;
    v18[5] = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1C5B51CC4;
    v18[3] = &block_descriptor_20;
    v16 = _Block_copy(v18);

    [v8 newTextureWithCGImage:v13 options:v14 completionHandler:v16];

    _Block_release(v16);
  }

  else
  {
    sub_1C5B52004(1, 1, v10);

    v14 = v11;
  }

  return v11;
}

void sub_1C5B52004(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      if (qword_1EC190888 != -1)
      {
        swift_once();
      }

      v7 = sub_1C5BC7D64();
      __swift_project_value_buffer(v7, qword_1EC1A6D48);
      sub_1C5A1100C(a1);
      v8 = sub_1C5BC7D44();
      v9 = sub_1C5BCB4D4();
      sub_1C5A1101C(a1, 1);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138543362;
        sub_1C5A111A0();
        swift_allocError();
        *v12 = a1;
        sub_1C5A1100C(a1);
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        _os_log_impl(&dword_1C5922000, v8, v9, "MetalImageTextureProvider failed to load texture: %{public}@", v10, 0xCu);
        sub_1C5B0A754(v11);
        MEMORY[0x1C69510F0](v11, -1, -1);
        MEMORY[0x1C69510F0](v10, -1, -1);
      }
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_currentTexture) = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_1C5BC7F54();
    }
  }
}

uint64_t sub_1C5B521F0()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider____lazy_storage___displayModePublisher;
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider____lazy_storage___displayModePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider____lazy_storage___displayModePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193938, &qword_1C5BD88B8);
    sub_1C5B526F4();
    v2 = sub_1C5BC8064();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C5B52298()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C98, &qword_1C5BED308);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E69743F8];
  *(inited + 32) = *MEMORY[0x1E69743F8];
  v2 = MEMORY[0x1E69E6370];
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 40) = 0;
  v3 = *MEMORY[0x1E6974408];
  *(inited + 64) = v2;
  *(inited + 72) = v3;
  *(inited + 104) = MEMORY[0x1E69E6810];
  *(inited + 80) = 3;
  v4 = v1;
  v5 = v3;
  v6 = sub_1C59ADDF0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CA0, &unk_1C5BED310);
  result = swift_arrayDestroy();
  qword_1EC198C60 = v6;
  return result;
}

double sub_1C5B5237C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1C5BCB214();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1C5BCB1E4();
  swift_unknownObjectRetain();

  v12 = a2;
  v13 = sub_1C5BCB1D4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a1;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a2;
  sub_1C5AD0FB8(0, 0, v10, &unk_1C5BED300, v14);

  return result;
}

uint64_t sub_1C5B524C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1C5BCB1E4();
  v7[6] = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B52564, v9, v8);
}

uint64_t sub_1C5B52564()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[3];
    v3 = swift_unknownObjectRetain();
    v2(v3, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    (v0[3])(v0[5], 1);
  }

  v4 = v0[1];

  return v4();
}

unint64_t sub_1C5B526F4()
{
  result = qword_1EC193940;
  if (!qword_1EC193940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193938, &qword_1C5BD88B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193940);
  }

  return result;
}

unint64_t sub_1C5B52764()
{
  result = qword_1EDA4E610;
  if (!qword_1EDA4E610)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E610);
  }

  return result;
}

uint64_t sub_1C5B527BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C592ABD4;

  return sub_1C5B524C8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI25MetalImageTextureProviderC5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5B528B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5B52920(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C5BC7B04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1C5B5F300(&qword_1EC196A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v7 = sub_1C5BCAD34(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1C5B5F300(&qword_1EC196A60, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1C5BCADB4();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1C5B52B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v6 = sub_1C5BCBF94();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C5BCBDE4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_1C5B52C38()
{
  sub_1C5B5E770();

  return sub_1C5BC8F44();
}

double sub_1C5B52CC0(uint64_t a1)
{
  sub_1C59318C8(a1, v3);
  sub_1C59318C8(v3, &v2);
  sub_1C5B5E770();
  sub_1C5BC8F54();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

double MCUINamespace<A>.marqueeAnimationDirection(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath("pq[&");
  sub_1C5BC9DF4();

  return result;
}

double MCUINamespace<A>.coordinatedMarquees()(uint64_t a1, uint64_t a2)
{
  sub_1C5BCA684();
  MEMORY[0x1C694E550](&v5, *(a1 + 16), &type metadata for CoordinatedMarquees, a2);

  return result;
}

uint64_t sub_1C5B52E7C()
{
  sub_1C59E71A8();
  sub_1C5BC8F44();
  return v1;
}

uint64_t Marquee.init(spacing:rate:delay:isAnimating:preferredFrameRateRange:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  v18 = type metadata accessor for Marquee(0, a5, a6, a4);
  v19 = (a7 + v18[10]);
  sub_1C5BCA684();
  *v19 = v27;
  v19[1] = v28;
  v20 = a7 + v18[11];
  *v20 = swift_getKeyPath("Pq[&");
  *(v20 + 8) = 0;
  v21 = a7 + v18[12];
  *v21 = swift_getKeyPath("0q[&");
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  v22 = a7 + v18[13];
  *v22 = swift_getKeyPath(byte_1C5BED470);
  *(v22 + 8) = 0;
  v23 = a7 + v18[14];
  *v23 = swift_getKeyPath(byte_1C5BED3D0);
  *(v23 + 8) = 0;
  v24 = a7 + v18[9];
  *v24 = a8;
  *(v24 + 8) = a9;
  *(v24 + 16) = a10;
  *(v24 + 24) = a1;
  *(v24 + 28) = a2;
  *(v24 + 36) = a3;
  *(v24 + 40) = BYTE4(a3) & 1;
  *(v24 + 48) = 7104878;
  *(v24 + 56) = 0xE300000000000000;
  result = a4();
  v26 = a7 + v18[15];
  *v26 = 0;
  *(v26 + 8) = 1;
  return result;
}

uint64_t MCUINamespace<A>.marqueeFeathering(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v11, v6, v8);
  swift_getKeyPath(byte_1C5BED3D0);
  if (a2)
  {
    v12 = sub_1C5960930(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CA8, &qword_1C5BED498);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5BD4D40;
    *(inited + 32) = 0;
    *(inited + 40) = a1;
    *(inited + 48) = 1;
    *(inited + 56) = a1;
    v12 = sub_1C5960930(inited);
    swift_setDeallocating();
  }

  v15[9] = v12;
  sub_1C5BC9DF4();

  return (*(v7 + 8))(v10, v6);
}

uint64_t EnvironmentValues.marqueeCanExtendContentBeyondFrame.getter()
{
  sub_1C5B5CDD4();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5B532D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1C5B5CB30(v7, v8) & 1;
}

uint64_t sub_1C5B5331C(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 44);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v10 = sub_1C5B5E4E8(v8, 0);
    (*(v4 + 8))(v6, v3, v10);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1C5B53478(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    sub_1C5957038(*v7, v9, v10, v11);
  }

  else
  {

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v13 = sub_1C5B5E48C(v8, v9, v10, v11, 0);
    (*(v4 + 8))(v6, v3, v13);
    return v15;
  }

  return v8;
}

uint64_t sub_1C5B53610()
{
  sub_1C5955914();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5B53650(uint64_t *a1)
{
  sub_1C5957038(*a1, a1[1], a1[2], a1[3]);
  sub_1C5955914();
  return sub_1C5BC8F54();
}

uint64_t sub_1C5B536AC(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v10 = sub_1C5942458(v8, 0);
    (*(v4 + 8))(v6, v3, v10);
    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

uint64_t sub_1C5B53800(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v10 = sub_1C5B5E4E8(v8, 0);
    (*(v4 + 8))(v6, v3, v10);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1C5B5397C(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C5BC8F44();
  return v3;
}

uint64_t sub_1C5B539E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v88 = a3;
  v87 = a2;
  v74 = a1;
  v89 = a6;
  type metadata accessor for Marquee.MarqueeingContent(255, a4, a5, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CB0, &unk_1C5BED4A0);
  sub_1C5BC8AB4();
  v8 = sub_1C5BC8AB4();
  v95 = a4;
  v96 = a4;
  v90 = a5;
  v97 = a5;
  v98 = a5;
  v9 = type metadata accessor for Marquee.ContentWithBadge(255, &v95);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0, &qword_1C5BD6230);
  sub_1C5BC8AB4();
  v10 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v12 = MEMORY[0x1E6980A18];
  v94[12] = WitnessTable;
  v94[13] = sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0, &unk_1C5BED4A0, MEMORY[0x1E6980A18]);
  v94[10] = swift_getWitnessTable();
  v94[11] = MEMORY[0x1E69805D0];
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = v12;
  v16 = v9;
  v94[8] = v14;
  v94[9] = sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0, &qword_1C5BD6230, v15);
  v94[6] = swift_getWitnessTable();
  v94[7] = sub_1C5953670();
  v17 = swift_getWitnessTable();
  v85 = v8;
  v95 = v8;
  v96 = v10;
  v84 = v10;
  v82 = v13;
  v97 = v13;
  v98 = v17;
  v78 = v17;
  v83 = type metadata accessor for ShownWhenAppeared(0, &v95);
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v69 - v20;
  v21 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - v26;
  v28 = sub_1C5BC8AB4();
  v73 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69 - v29;
  v76 = sub_1C5BC8AB4();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v69 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v91 = &v69 - v37;
  v38 = v74;
  (*(v21 + 16))(v24, v74, a4, v36);
  v39 = v24;
  v40 = v90;
  sub_1C596500C(v39, a4, a4, v90, v90, v27);
  LODWORD(v71) = sub_1C5BC98E4();
  v86 = a4;
  v42 = type metadata accessor for Marquee(0, a4, v40, v41);
  if (sub_1C5B536AC(v42))
  {
    v43 = v14;
    v44 = sub_1C5B5331C(v42);
    v45 = sub_1C59651B8(1, v44);

    if (v45 || (v46 = sub_1C5B53478(v42), v47) && (v70 = v46, , , , (v70 & 1) == 0))
    {
      v14 = v43;
    }

    else
    {
      if (*(sub_1C5B53800(v42) + 16))
      {
        sub_1C5960A1C(1);
      }

      v14 = v43;
    }
  }

  sub_1C5BCA2F4();
  (*(v72 + 8))(v27, v16);
  v48 = swift_allocObject();
  v49 = v87;
  v50 = v88;
  *(v48 + 16) = v87;
  *(v48 + 24) = v50;
  v94[4] = v14;
  v94[5] = MEMORY[0x1E697E5D8];

  v51 = swift_getWitnessTable();
  sub_1C5BCA324();

  v73[1](v30, v28);
  v94[2] = v51;
  v94[3] = MEMORY[0x1E69805D0];
  v52 = v76;
  v71 = swift_getWitnessTable();
  sub_1C593EDC0(v34, v52, v71);
  v53 = v75;
  v54 = *(v75 + 8);
  v72 = v75 + 8;
  v73 = v54;
  v55 = (v54)(v34, v52);
  MEMORY[0x1EEE9AC00](v55);
  v56 = v90;
  *(&v69 - 6) = v86;
  *(&v69 - 5) = v56;
  *(&v69 - 4) = v38;
  *(&v69 - 3) = v49;
  *(&v69 - 2) = v50;
  MEMORY[0x1EEE9AC00](v57);
  *(&v69 - 4) = v59;
  *(&v69 - 3) = v58;
  *(&v69 - 2) = v38;
  v60 = v81;
  sub_1C59652A0(sub_1C5B5F36C, sub_1C5B5F39C, v85, v84, v82, v78, v81);
  v61 = v83;
  v62 = swift_getWitnessTable();
  v63 = v80;
  sub_1C593EDC0(v60, v61, v62);
  v64 = v79;
  v65 = *(v79 + 8);
  v65(v60, v61);
  v66 = v77;
  (*(v53 + 16))(v77, v91, v52);
  v95 = v66;
  (*(v64 + 16))(v60, v63, v61);
  v96 = v60;
  v94[0] = v52;
  v94[1] = v61;
  v92 = v71;
  v93 = v62;
  sub_1C594226C(&v95, 2uLL, v94);
  v65(v63, v61);
  v67 = v73;
  (v73)(v91, v52);
  v65(v60, v61);
  return (v67)(v66, v52);
}

uint64_t sub_1C5B5440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a3;
  v52 = a2;
  v54 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Marquee.MarqueeingContent(0, v12, v13, v12);
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CB0, &unk_1C5BED4A0);
  v17 = sub_1C5BC8AB4();
  v50 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v47 - v18;
  v19 = sub_1C5BC8AB4();
  v51 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v49 = &v47 - v24;
  (*(v9 + 16))(v11, a1, a4, v23);
  v26 = type metadata accessor for Marquee(0, a4, a5, v25);
  v27 = (a1 + *(v26 + 36));
  v28 = v27[3];
  v60[2] = v27[2];
  v60[3] = v28;
  v29 = v27[1];
  v60[0] = *v27;
  v60[1] = v29;
  sub_1C5B5E4F4(v60, v59);
  v30 = sub_1C5965B5C(v26);
  sub_1C5B549A4(v11, v60, v31, v32, a4, a5, v16, v30);
  swift_getKeyPath(byte_1C5BED3D0);
  v33 = (a1 + *(v26 + 60));
  if (v33[1])
  {
    v34 = sub_1C5B53800(v26);
  }

  else
  {
    v35 = *v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CA8, &qword_1C5BED498);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5BD4D40;
    *(inited + 32) = 0;
    *(inited + 40) = v35;
    *(inited + 48) = 1;
    *(inited + 56) = v35;
    v34 = sub_1C5960930(inited);
    swift_setDeallocating();
  }

  v59[0] = v34;
  WitnessTable = swift_getWitnessTable();
  v38 = v48;
  sub_1C5BC9DF4();

  (*(v47 + 8))(v16, v14);
  v39 = swift_allocObject();
  v40 = v53;
  *(v39 + 16) = v52;
  *(v39 + 24) = v40;
  v41 = sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0, &unk_1C5BED4A0, MEMORY[0x1E6980A18]);
  v57 = WitnessTable;
  v58 = v41;

  v42 = swift_getWitnessTable();
  sub_1C5BCA324();

  (*(v50 + 8))(v38, v17);
  v55 = v42;
  v56 = MEMORY[0x1E69805D0];
  v43 = swift_getWitnessTable();
  v44 = v49;
  sub_1C593EDC0(v21, v19, v43);
  v45 = *(v51 + 8);
  v45(v21, v19);
  sub_1C593EDC0(v44, v19, v43);
  return (v45)(v44, v19);
}

uint64_t sub_1C5B549A4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v16 = type metadata accessor for Marquee.MarqueeingContent(0, a5, a6, v15);
  v17 = (a7 + v16[9]);
  v18 = a2[1];
  *v17 = *a2;
  v17[1] = v18;
  v19 = a2[3];
  v17[2] = a2[2];
  v17[3] = v19;
  v20 = a7 + v16[10];
  *v20 = a3;
  *(v20 + 8) = a4;
  *(v20 + 16) = a8;
  v21 = a7 + v16[11];
  *v21 = swift_getKeyPath("0q[&");
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  v22 = a7 + v16[12];
  *v22 = swift_getKeyPath("Pq[&");
  *(v22 + 8) = 0;
  v23 = a7 + v16[13];
  result = swift_getKeyPath(byte_1C5BED3D0);
  *v23 = result;
  *(v23 + 8) = 0;
  return result;
}

void sub_1C5B54ABC(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EDA46950);

  oslog = sub_1C5BC7D44();
  v7 = sub_1C5BCB4B4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1C592ADA8(a1, a2, &v12);
    _os_log_impl(&dword_1C5922000, oslog, v7, a3, v8, 0xCu);
    v10 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1C69510F0](v9, -1, -1, v10);
    MEMORY[0x1C69510F0](v8, -1, -1);
  }
}

uint64_t sub_1C5B54C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v35 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[0] = v8;
  v40[1] = v8;
  v40[2] = v9;
  v40[3] = v9;
  v10 = type metadata accessor for Marquee.ContentWithBadge(0, v40);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0, &qword_1C5BD6230);
  v13 = sub_1C5BC8AB4();
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = sub_1C5BC8AB4();
  v34 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  (*(v30 + 16))(v7, v32, a2, v20);
  sub_1C596500C(v7, a2, a2, a3, a3, v12);
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA3B4();
  (*(v31 + 8))(v12, v10);
  v24 = sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0, &qword_1C5BD6230, MEMORY[0x1E6980A18]);
  v38 = WitnessTable;
  v39 = v24;
  v25 = swift_getWitnessTable();
  sub_1C5BCA254();
  (*(v33 + 8))(v15, v13);
  v26 = sub_1C5953670();
  v36 = v25;
  v37 = v26;
  v27 = swift_getWitnessTable();
  sub_1C593EDC0(v18, v16, v27);
  v28 = *(v34 + 8);
  v28(v18, v16);
  sub_1C593EDC0(v22, v16, v27);
  return (v28)(v22, v16);
}

double sub_1C5B55018(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = v2[1];
  v4 = v2[2];
  v7[1] = *v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
  MEMORY[0x1C694EA50](v7, v5);
  return *v7;
}

double sub_1C5B55078(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
  sub_1C5BCA834();
  return v2;
}

uint64_t sub_1C5B550DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a5;
  v64 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v52 - v12;
  v14 = *(v13 + 24);
  v52 = *(v13 + 16);
  v53 = v14;
  v69 = v52;
  v70 = v15;
  v71 = v14;
  v72 = v16;
  v17 = type metadata accessor for Marquee.ContentWithBadge(0, &v69);
  v56 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v52 - v20;
  v21 = sub_1C5BC8F34();
  v57 = *(v21 - 8);
  v58 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C5BC92D4();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v65 = &v52 - v26;
  v27 = v5 + *(a2 + 44);
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  LODWORD(v27) = *(v27 + 32);
  v66 = v30;
  if (v27 == 1)
  {
    sub_1C5957038(v29, v28, v30, v31);
    v32 = v28;
    v33 = v65;
    if (!v32)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v59 = v28;

    sub_1C5BCB4E4();
    v60 = v31;
    v34 = v17;
    v35 = v25;
    v36 = v24;
    v37 = a4;
    v38 = sub_1C5BC9844();
    sub_1C5BC7C54();

    a4 = v37;
    v24 = v36;
    v25 = v35;
    v17 = v34;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v39 = sub_1C5B5E48C(v29, v59, v66, v60, 0);
    (*(v57 + 8))(v23, v58, v39);
    LOBYTE(v29) = v69;
    v32 = v70;
    v31 = v72;
    v66 = v71;
    v33 = v65;
    if (!v70)
    {
LABEL_8:
      v46 = v63;
      sub_1C593EDC0(a1, a3, a4);
      v47 = v61;
      sub_1C593EDC0(v46, a3, a4);
      WitnessTable = swift_getWitnessTable();
      sub_1C5941738(v47, v17, a3, WitnessTable, a4);
      v49 = *(v64 + 8);
      v49(v47, a3);
      v49(v46, a3);
      goto LABEL_9;
    }
  }

  if ((v29 & 1) == 0)
  {

    goto LABEL_8;
  }

  v40 = *(v64 + 16);
  v59 = v32;
  v60 = v31;
  v41 = v63;
  v40(v63, a1, a3);
  v42 = v55;
  sub_1C596500C(v41, v52, a3, v53, a4, v55);
  v43 = swift_getWitnessTable();
  v44 = v54;
  sub_1C593EDC0(v42, v17, v43);
  v64 = a4;
  v45 = *(v56 + 8);
  v45(v42, v17);
  sub_1C593EDC0(v44, v17, v43);
  sub_1C5950E54(v42, v17, a3, v43, v64);

  v45(v42, v17);
  v45(v44, v17);
  a4 = v64;
LABEL_9:
  v67 = swift_getWitnessTable();
  v68 = a4;
  v50 = swift_getWitnessTable();
  sub_1C593EDC0(v33, v24, v50);
  return (*(v25 + 8))(v33, v24);
}

uint64_t sub_1C5B556B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v84 = sub_1C5BC8F34();
  v91 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1C5BC96A4();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  v6 = *(a1 + 24);
  v104 = *(a1 + 16);
  v5 = v104;
  v105 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = v5;
  v105 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = v5;
  v105 = OpaqueTypeMetadata2;
  v106 = v6;
  v107 = OpaqueTypeConformance2;
  type metadata accessor for Marquee.ContentWithBadge(255, &v104);
  v9 = sub_1C5BC92D4();
  WitnessTable = swift_getWitnessTable();
  v103 = OpaqueTypeConformance2;
  v10 = swift_getWitnessTable();
  v104 = v5;
  v105 = v9;
  v106 = v6;
  v107 = v10;
  type metadata accessor for Marquee.MarqueeAnimationView(255, &v104);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD0, &qword_1C5BEDC88);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD8, &qword_1C5BEDC90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CE0, &qword_1C5BEDC98);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v11 = sub_1C5BCA714();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v75 - v13;
  v15 = swift_getWitnessTable();
  v104 = v11;
  v105 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v81 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v82 = v19;
  v20 = sub_1C5BC8AB4();
  v87 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v92 = &v75 - v21;
  v88 = v22;
  v23 = sub_1C5BC8AB4();
  v89 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v75 - v26;
  v95 = v5;
  v96 = v6;
  v27 = v94;
  v97 = v94;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  v28 = v76;
  sub_1C5BC9684();
  v79 = v18;
  v80 = v15;
  sub_1C5BCA0C4();
  (*(v77 + 8))(v28, v78);
  (*(v12 + 8))(v14, v11);
  sub_1C5BC98C4();
  v29 = v27 + v93[12];
  v30 = *v29;
  v31 = *(v29 + 8);
  if (v31 == 1)
  {

    v32 = v30;
    v33 = v84;
    v34 = v83;
  }

  else
  {

    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v34 = v83;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v36 = sub_1C5B5E4E8(v30, 0);
    v33 = v84;
    (*(v91 + 8))(v34, v84, v36);
    v32 = v104;
  }

  v37 = sub_1C59651B8(0, v32);

  if (!v37)
  {
    goto LABEL_12;
  }

  v38 = v94 + v93[13];
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {

    if (!*(v39 + 16))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_1C5BCB4E4();
  v40 = v34;
  v41 = v33;
  v42 = sub_1C5BC9844();
  sub_1C5BC7C54();

  v33 = v41;
  v34 = v40;
  sub_1C5BC8F24();
  swift_getAtKeyPath();
  v43 = sub_1C5B5E4E8(v39, 0);
  (*(v91 + 8))(v40, v33, v43);
  if (*(v104 + 16))
  {
LABEL_10:
    sub_1C5960A1C(0);
  }

LABEL_11:

LABEL_12:
  v104 = v11;
  v105 = v80;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v82;
  v46 = v79;
  sub_1C5BCA2F4();
  (*(v81 + 8))(v46, v45);
  LODWORD(v84) = sub_1C5BC98E4();
  if (v31)
  {

    v47 = v91;
  }

  else
  {

    sub_1C5BCB4E4();
    v48 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v49 = sub_1C5B5E4E8(v30, 0);
    v47 = v91;
    (*(v91 + 8))(v34, v33, v49);
    v30 = v104;
  }

  v50 = sub_1C59651B8(1, v30);

  if (v50)
  {
    v51 = v94 + v93[11];
    v52 = *v51;
    v53 = *(v51 + 8);
    v55 = *(v51 + 16);
    v54 = *(v51 + 24);
    if (*(v51 + 32) == 1)
    {
      sub_1C5957038(*v51, v53, v55, v54);
      if (!v53)
      {
        goto LABEL_22;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v56 = sub_1C5BC9844();
      v91 = v23;
      v57 = v44;
      v58 = v34;
      v59 = v47;
      v60 = v56;
      sub_1C5BC7C54();

      v47 = v59;
      v34 = v58;
      v44 = v57;
      v23 = v91;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v61 = sub_1C5B5E48C(v52, v53, v55, v54, 0);
      (*(v47 + 8))(v34, v33, v61);
      LOBYTE(v52) = v104;
      if (!v105)
      {
        goto LABEL_22;
      }
    }

    if ((v52 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_22:
    v62 = v94 + v93[13];
    v63 = *v62;
    if (*(v62 + 8) == 1)
    {

      if (!*(v63 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v64 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v65 = sub_1C5B5E4E8(v63, 0);
      (*(v47 + 8))(v34, v33, v65);
      if (!*(v104 + 16))
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    sub_1C5960A1C(1);
    goto LABEL_27;
  }

LABEL_28:
  v66 = MEMORY[0x1E697E5D8];
  v100 = v44;
  v101 = MEMORY[0x1E697E5D8];
  v67 = v88;
  v68 = swift_getWitnessTable();
  v69 = v85;
  v70 = v92;
  sub_1C5BCA2F4();
  (*(v87 + 8))(v70, v67);
  v98 = v68;
  v99 = v66;
  v71 = swift_getWitnessTable();
  v72 = v86;
  sub_1C593EDC0(v69, v23, v71);
  v73 = *(v89 + 8);
  v73(v69, v23);
  sub_1C593EDC0(v72, v23, v71);
  return (v73)(v72, v23);
}

uint64_t sub_1C5B562F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a1;
  v134 = a4;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CE0, &qword_1C5BEDC98);
  MEMORY[0x1EEE9AC00](v132);
  v135 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v133 = &v106 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CE8, &unk_1C5BEDCA0);
  v127 = *(v9 - 8);
  v128 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v109 = (&v106 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195080, &qword_1C5BDE808);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v108 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v106 - v14;
  v15 = sub_1C5BC8F34();
  v125 = *(v15 - 8);
  v126 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CD8, &qword_1C5BEDC90);
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v106 - v19;
  v123 = sub_1C5BC9C34();
  v121 = *(v123 - 1);
  MEMORY[0x1EEE9AC00](v123);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  *&v149 = a2;
  *(&v149 + 1) = a3;
  v23 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v115 = &v106 - v25;
  *&v149 = v22;
  *(&v149 + 1) = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v149 = v22;
  *(&v149 + 1) = OpaqueTypeMetadata2;
  v27 = v22;
  *&v150 = a3;
  *(&v150 + 1) = OpaqueTypeConformance2;
  v28 = OpaqueTypeConformance2;
  v110 = OpaqueTypeConformance2;
  type metadata accessor for Marquee.ContentWithBadge(255, &v149);
  v29 = sub_1C5BC92D4();
  v116 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v111 = &v106 - v30;
  WitnessTable = swift_getWitnessTable();
  v159 = v28;
  v113 = swift_getWitnessTable();
  *&v149 = v27;
  *(&v149 + 1) = v29;
  *&v150 = a3;
  *(&v150 + 1) = v113;
  v114 = type metadata accessor for Marquee.MarqueeAnimationView(0, &v149);
  v118 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v32 = &v106 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD0, &qword_1C5BEDC88);
  v117 = sub_1C5BC8AB4();
  v124 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v112 = &v106 - v33;
  v139 = sub_1C5BC8AB4();
  v136 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v137 = &v106 - v36;
  sub_1C5BC9C24();
  v37 = v115;
  v38 = v120;
  sub_1C5BC9D54();
  (*(v121 + 8))(v21, v123);
  v39 = v27;
  v41 = type metadata accessor for Marquee.MarqueeingContent(0, v27, a3, v40);
  v42 = v111;
  sub_1C5B550DC(v37, v41, OpaqueTypeMetadata2, v110, v111);
  (*(v119 + 8))(v37, OpaqueTypeMetadata2);
  v43 = (v38 + v41[9]);
  v44 = v43[1];
  v166 = *v43;
  v167 = v44;
  v45 = v43[3];
  v168 = v43[2];
  v169 = v45;
  sub_1C5B5E4F4(&v166, &v149);
  v46 = v38;
  v47 = sub_1C5B55078(v41);
  v49 = v48;
  v51 = v50;
  v52 = v47;
  (*(v116 + 32))(v32, v42, v29);
  *&v149 = v39;
  *(&v149 + 1) = v29;
  *&v150 = v23;
  *(&v150 + 1) = v113;
  v53 = type metadata accessor for Marquee.MarqueeAnimationView(0, &v149);
  v54 = &v32[*(v53 + 52)];
  v55 = v167;
  *v54 = v166;
  *(v54 + 1) = v55;
  v56 = v169;
  *(v54 + 2) = v168;
  *(v54 + 3) = v56;
  v57 = &v32[*(v53 + 56)];
  *v57 = v49;
  *(v57 + 1) = v51;
  v57[2] = v52;
  v58 = v46;
  *&v149 = sub_1C5B55018(v41);
  v59 = v114;
  v60 = swift_getWitnessTable();
  sub_1C5B5E52C();
  v61 = v112;
  sub_1C5BC9D44();
  (*(v118 + 8))(v32, v59);
  *&v149 = swift_getKeyPath(byte_1C5BEDCB0);
  BYTE8(v151) = 0;
  v62 = sub_1C5924F54(&qword_1EDA461A8, &qword_1EC198CD0, &qword_1C5BEDC88, MEMORY[0x1E6980758]);
  v156 = v60;
  v157 = v62;
  v63 = v139;
  v64 = v117;
  v65 = swift_getWitnessTable();
  v66 = v138;
  MEMORY[0x1C694E550](&v149, v64, &type metadata for MarqueeMaskModifier, v65);
  sub_1C5B5E580(&v149);
  (*(v124 + 8))(v61, v64);
  v67 = sub_1C5B5E5B0();
  v154 = v65;
  v155 = v67;
  v121 = swift_getWitnessTable();
  sub_1C593EDC0(v66, v63, v121);
  v68 = v63;
  v69 = v58;
  v123 = *(v136 + 8);
  v124 = v136 + 8;
  v123(v66, v68);
  v70 = v58 + v41[11];
  v71 = *v70;
  v72 = *(v70 + 8);
  v74 = *(v70 + 16);
  v73 = *(v70 + 24);
  if (*(v70 + 32) == 1)
  {
    v75 = v122;
    sub_1C5957038(v71, v72, v74, v73);
    v77 = v125;
    v76 = v126;
    if (!v72)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v78 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v79 = v122;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v80 = sub_1C5B5E48C(v71, v72, v74, v73, 0);
    v77 = v125;
    v75 = v79;
    v81 = v79;
    v76 = v126;
    (*(v125 + 8))(v81, v126, v80);
    v72 = *(&v149 + 1);
    LOBYTE(v71) = v149;
    v73 = *(&v150 + 1);
    v74 = v150;
    if (!*(&v149 + 1))
    {
      goto LABEL_10;
    }
  }

  if ((v71 & 1) == 0)
  {
    v82 = v69 + v41[13];
    v83 = *v82;
    if (*(v82 + 8) == 1)
    {

      if (!*(v83 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v85 = v77;
      v86 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v87 = sub_1C5B5E4E8(v83, 0);
      (*(v85 + 8))(v75, v76, v87);
      if (!*(v149 + 16))
      {
LABEL_13:

        sub_1C5BCAA54();
        sub_1C5BC85D4();
        v125 = v162;
        v126 = v160;
        v122 = v164;
        v120 = v165;
        LOBYTE(v144) = 1;
        LOBYTE(v143[0]) = v161;
        LOBYTE(v140) = v163;
        v149 = xmmword_1C5BED3B0;
        LOBYTE(v150) = 0;
        *(&v150 + 1) = MEMORY[0x1E69E7CC0];
        v88 = v107;
        sub_1C5BCA094();
        v89 = v144;
        v90 = v143[0];
        v91 = v140;
        v92 = v108;
        sub_1C59400B0(v88, v108, &qword_1EC195080, &qword_1C5BDE808);
        v93 = v109;
        *v109 = 0;
        *(v93 + 8) = v89;
        v94 = v125;
        *(v93 + 16) = v126;
        *(v93 + 24) = v90;
        *(v93 + 32) = v94;
        *(v93 + 40) = v91;
        v95 = v120;
        *(v93 + 48) = v122;
        *(v93 + 56) = v95;
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CF0, &unk_1C5BEDCE0);
        sub_1C59400B0(v92, v93 + *(v96 + 48), &qword_1EC195080, &qword_1C5BDE808);
        v97 = (v93 + *(v96 + 64));
        *v97 = v72;
        v97[1] = v74;
        v97[2] = v73;

        sub_1C5924EF4(v88, &qword_1EC195080, &qword_1C5BDE808);

        sub_1C5924EF4(v92, &qword_1EC195080, &qword_1C5BDE808);
        v84 = v130;
        sub_1C59E7D34(v93, v130, &qword_1EC198CE8, &unk_1C5BEDCA0);
        (*(v127 + 56))(v84, 0, 1, v128);
        goto LABEL_14;
      }
    }

    sub_1C5960A1C(1);
    goto LABEL_13;
  }

LABEL_10:
  v84 = v130;
  (*(v127 + 56))(v130, 1, 1, v128);
LABEL_14:
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  LOBYTE(v143[0]) = 0;
  v144 = xmmword_1C5BED3B0;
  LOBYTE(v145) = 0;
  *(&v145 + 1) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918A0, &qword_1C5BD3130);
  sub_1C59AEE44();
  v98 = v133;
  sub_1C5BCA094();
  v151 = v146;
  v152 = v147;
  v153 = v148;
  v149 = v144;
  v150 = v145;
  sub_1C5924EF4(&v149, &qword_1EC1918A0, &qword_1C5BD3130);
  v99 = v137;
  v101 = v138;
  v100 = v139;
  (*(v136 + 16))(v138, v137, v139);
  *&v144 = v101;
  v102 = v131;
  sub_1C59400B0(v84, v131, &qword_1EC198CD8, &qword_1C5BEDC90);
  *(&v144 + 1) = v102;
  v103 = v135;
  sub_1C59400B0(v98, v135, &qword_1EC198CE0, &qword_1C5BEDC98);
  *&v145 = v103;
  v143[0] = v100;
  v143[1] = v129;
  v143[2] = v132;
  v140 = v121;
  v141 = sub_1C5B5E604();
  v142 = sub_1C5B5E6B4();
  sub_1C594226C(&v144, 3uLL, v143);
  sub_1C5924EF4(v98, &qword_1EC198CE0, &qword_1C5BEDC98);
  sub_1C5924EF4(v84, &qword_1EC198CD8, &qword_1C5BEDC90);
  v104 = v123;
  v123(v99, v100);
  sub_1C5924EF4(v103, &qword_1EC198CE0, &qword_1C5BEDC98);
  sub_1C5924EF4(v102, &qword_1EC198CD8, &qword_1C5BEDC90);
  return v104(v101, v100);
}

double sub_1C5B5722C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80, &qword_1C5BD3CF8);
  sub_1C5BCA834();
  return v2;
}

id sub_1C5B57294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v50 = sub_1C5BC8F34();
  v57 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v53 = *(a2 + 16);
  *&v60 = v53;
  *(&v60 + 1) = v6;
  v51 = v6;
  v9 = v7;
  *&v61 = v7;
  *(&v61 + 1) = v8;
  v49 = v8;
  v52 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, &v60);
  v58 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v47 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v15 = sub_1C5BC7D64();
  __swift_project_value_buffer(v15, qword_1EDA46950);
  (*(v11 + 16))(v14, v2, a2);
  v16 = sub_1C5BC7D44();
  v17 = sub_1C5BCB4B4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v48 = v3;
    v20 = v19;
    *&v60 = v19;
    *v18 = 136446210;
    v21 = &v14[*(a2 + 52)];
    v22 = *(v21 + 7);
    v47 = *(v21 + 6);
    v23 = *(v11 + 8);

    v23(v14, a2);
    v24 = sub_1C592ADA8(v47, v22, &v60);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1C5922000, v16, v17, "[Context: %{public}s] Creating MarqueeUIView", v18, 0xCu);
    v25 = __swift_destroy_boxed_opaque_existential_0(v20);
    v26 = v20;
    v3 = v48;
    MEMORY[0x1C69510F0](v26, -1, -1, v25);
    MEMORY[0x1C69510F0](v18, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, a2);
  }

  v27 = v53;
  v28 = v51;
  *&v60 = v53;
  *(&v60 + 1) = v51;
  v29 = v49;
  *&v61 = v9;
  *(&v61 + 1) = v49;
  v30 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView(0, &v60);
  v31 = (v3 + *(a2 + 52));
  v32 = v31[1];
  v60 = *v31;
  v61 = v32;
  v33 = v31[3];
  v62 = v31[2];
  v63 = v33;
  sub_1C5B5E4F4(&v60, v59);
  swift_getWitnessTable();
  sub_1C5BC96D4();
  v34 = v54;
  sub_1C5BC96C4();
  v35 = v55;
  sub_1C5B577A8(&v60, v27, v28, v9, v29, v55);
  (*(v57 + 8))(v34, v50);
  v36 = sub_1C5B5722C(a2);
  v38 = v37;
  v40 = v39;
  v41 = v36;
  v42 = objc_allocWithZone(v30);
  v43 = sub_1C5B5E924(v35, v38, v40, v41);

  (*(v58 + 8))(v35, v52);
  LODWORD(v44) = 1144750080;
  [v43 setContentHuggingPriority:1 forAxis:v44];
  LODWORD(v45) = 1144750080;
  [v43 setContentHuggingPriority:0 forAxis:v45];
  return v43;
}

void *sub_1C5B577A8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v11;
  v12 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v12;
  sub_1C5B5E8D0();
  sub_1C5BC8F44();
  *(a6 + 64) = v15[0];
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, v15);
  sub_1C5BC8D94();
  sub_1C5B5F0B8();
  sub_1C5BC8F44();
  *(a6 + *(v13 + 60)) = v15[0];
  sub_1C59E71A8();
  result = sub_1C5BC8F44();
  *(a6 + *(v13 + 64)) = v15[0];
  return result;
}

uint64_t sub_1C5B5789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v47 = *(a3 + 16);
  *&v52 = v47;
  *(&v52 + 1) = v10;
  v46 = v10;
  v45 = v11;
  *&v53 = v11;
  *(&v53 + 1) = v12;
  v44 = v12;
  v13 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, &v52);
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v37 - v14;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v19 = sub_1C5BC7D64();
  __swift_project_value_buffer(v19, qword_1EDA46950);
  (*(v15 + 16))(v18, v3, a3);
  v20 = sub_1C5BC7D44();
  v21 = sub_1C5BCB4B4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40 = v8;
    v39 = v24;
    *&v52 = v24;
    *v23 = 136446210;
    v25 = &v18[*(a3 + 52)];
    v38 = *(v25 + 6);
    v42 = v4;
    v26 = *(v25 + 7);
    v27 = *(v15 + 8);

    v27(v18, a3);
    v28 = sub_1C592ADA8(v38, v26, &v52);
    v4 = v42;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1C5922000, v20, v21, "[Context: %{public}s] Updating MarqueeUIView", v23, 0xCu);
    v29 = v39;
    v30 = __swift_destroy_boxed_opaque_existential_0(v39);
    v8 = v40;
    MEMORY[0x1C69510F0](v29, -1, -1, v30);
    MEMORY[0x1C69510F0](v23, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, a3);
  }

  v31 = (v4 + *(a3 + 52));
  v32 = v31[1];
  v52 = *v31;
  v53 = v32;
  v33 = v31[3];
  v54 = v31[2];
  v55 = v33;
  sub_1C5B5E4F4(&v52, v51);
  swift_getWitnessTable();
  sub_1C5BC96D4();
  v34 = v50;
  sub_1C5BC96C4();
  v35 = v43;
  sub_1C5B577A8(&v52, v47, v46, v45, v44, v43);
  (*(v8 + 8))(v34, v7);
  sub_1C5B57D24(v4, v35);
  return (*(v48 + 8))(v35, v49);
}

void sub_1C5B57D24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = *(v7 + 0x58);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - v10;
  v14 = *((v13 & v12) + 0x78);
  swift_beginAccess();
  *&v15 = *(v7 + 80);
  *(&v15 + 1) = v8;
  v25 = *(v7 + 96);
  v26[1] = v25;
  v26[0] = v15;
  v16 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, v26);
  (*(*(v16 - 8) + 24))(&v3[v14], a2, v16);
  swift_endAccess();
  v17 = *((*v6 & *v3) + 0x80);
  v18 = *&v3[v17];
  if (v18)
  {
    (*(v9 + 16))(v11, a1, v8);
    v19 = v18;
    sub_1C5BC91B4();
LABEL_6:

    sub_1C5B58A00();
    [v3 setNeedsLayout];
    return;
  }

  sub_1C5BC91C4();
  (*(v9 + 16))(v11, a1, v8);
  v20 = sub_1C5BC9194();
  sub_1C5B5EB9C(v20);

  v21 = sub_1C5B594F0();
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor_];

    v24 = *&v3[v17];
    if (v24)
    {
      v19 = v24;
      sub_1C5BC9184();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C5B57FDC()
{
  v0 = sub_1C5B594F0();
  if (v0)
  {
    v1 = v0;
    [v0 frame];
  }

  else
  {
    __break(1u);
  }
}

double sub_1C5B58030()
{
  sub_1C5B5E8D0();
  sub_1C5BC8F44();
  return v1;
}

void *sub_1C5B5806C()
{
  sub_1C5B5F0B8();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5B580B4(uint64_t a1)
{
  v2 = v1[1];
  v11[0] = *v1;
  v11[1] = v2;
  v3 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  v11[2] = v1[2];
  v11[3] = v3;
  v7 = v5;
  v8 = v4;
  v9 = v1[2];
  v10 = v1[3];
  sub_1C5B5E4F4(v11, v12);
  swift_getAtKeyPath();
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  return sub_1C5B5F088(v12);
}

uint64_t sub_1C5B581C0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = sub_1C5BC89D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = v0 + *((v2 & v1) + 0x78);
  swift_beginAccess();
  v12 = *(v3 + 96);
  v18[0] = *(v3 + 80);
  v18[1] = v12;
  v13 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, v18);
  v14 = v11[*(v13 + 60)];
  if (v14 == 1)
  {
    v15 = 1;
  }

  else if (v14 == 2)
  {
    (*(v5 + 16))(v10, &v11[*(v13 + 56)], v4);
    (*(v5 + 104))(v7, *MEMORY[0x1E697E7D8], v4);
    v15 = sub_1C5BC89C4();
    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1C5B583D4()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v12[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v12[1] = v3;
  v4 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, v12);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *((v2 & v1) + 0x78);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  KeyPath = swift_getKeyPath("8h[&");
  sub_1C5B580B4(KeyPath);

  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_1C5B5857C(uint64_t a1)
{
  swift_getObjCClassMetadata();
  sub_1C5B585B4();

  return swift_getObjCClassFromMetadata();
}

void sub_1C5B585E0()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  *&v38.m11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  *&v38.m13 = v3;
  v4 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, &v38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7D64();
  __swift_project_value_buffer(v8, qword_1EDA46950);
  v9 = v0;
  v10 = sub_1C5BC7D44();
  v11 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v37 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v39[0] = v14;
    *v13 = 136446466;
    v15 = sub_1C5B583D4();
    v17 = sub_1C592ADA8(v15, v16, v39);
    v36 = ObjectType;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    [v9 frame];
    v38.m11 = v19;
    v38.m12 = v20;
    v38.m13 = v21;
    v38.m14 = v22;
    type metadata accessor for CGRect(0);
    v23 = sub_1C5BCAEA4();
    v25 = sub_1C592ADA8(v23, v24, v39);

    *(v13 + 14) = v25;
    ObjectType = v36;
    _os_log_impl(&dword_1C5922000, v10, v11, "[Context: %{public}s] MarqueeUIView layoutSubviews with frame: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    v26 = v14;
    v2 = MEMORY[0x1E69E7D40];
    MEMORY[0x1C69510F0](v26, -1, -1);
    v27 = v13;
    v4 = v37;
    MEMORY[0x1C69510F0](v27, -1, -1);
  }

  v40.receiver = v9;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, sel_layoutSubviews);
  sub_1C5B58A00();
  v28 = [v9 layer];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClassUnconditional();
  sub_1C5B57FDC();
  v31 = v30;
  v32 = *((*v2 & *v9) + 0x78);
  swift_beginAccess();
  (*(v5 + 16))(v7, v9 + v32, v4);
  KeyPath = swift_getKeyPath(" h[&");
  sub_1C5B580B4(KeyPath);

  (*(v5 + 8))(v7, v4);
  m11 = v38.m11;
  if (sub_1C5B581C0())
  {
    v35 = -(v31 + m11);
  }

  else
  {
    v35 = v31 + m11;
  }

  [v29 setInstanceCount_];
  CATransform3DMakeTranslation(&v38, v35, 0.0, 0.0);
  [v29 setInstanceTransform_];
  sub_1C5B58CB4();
}

void sub_1C5B58A00()
{
  v1 = sub_1C5B594F0();
  if (!v1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v2 = v1;
  [v1 sizeThatFits_];
  v4 = v3;
  v6 = v5;

  v7 = 0.0;
  if (sub_1C5B581C0())
  {
    [v0 frame];
    Width = CGRectGetWidth(v27);
    sub_1C5B57FDC();
    v7 = Width - v9;
  }

  v10 = sub_1C5B594F0();
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  [v10 setFrame_];

  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v12 = sub_1C5BC7D64();
  __swift_project_value_buffer(v12, qword_1EDA46950);
  v13 = v0;
  oslog = sub_1C5BC7D44();
  v14 = sub_1C5BCB4B4();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446466;
    v17 = sub_1C5B583D4();
    v19 = sub_1C592ADA8(v17, v18, &v25);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_1C5B594F0();

    if (v20)
    {
      [v20 frame];

      type metadata accessor for CGRect(0);
      v21 = sub_1C5BCAEA4();
      v23 = sub_1C592ADA8(v21, v22, &v25);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1C5922000, oslog, v14, "[Context: %{public}s] MarqueeUIView set hosting view frame to %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v16, -1, -1);
      MEMORY[0x1C69510F0](v15, -1, -1);

      return;
    }

    goto LABEL_15;
  }
}

void sub_1C5B58CB4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v68[0] = *((*MEMORY[0x1E69E7D40] & v2) + 0x50);
  v68[1] = v4;
  v5 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, v68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v13 = v1 + *((v3 & v2) + 0x78);
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v12, v13, v5);
  KeyPath = swift_getKeyPath("\bh[&");
  sub_1C5B580B4(KeyPath);

  v16 = *(v6 + 8);
  v16(v12, v5);
  if (LOBYTE(v65) == 1)
  {
    v64 = v1;
    sub_1C5B57FDC();
    v18 = v17;
    v14(v12, v13, v5);
    v19 = swift_getKeyPath(" h[&");
    sub_1C5B580B4(v19);

    v16(v12, v5);
    v20 = v18 + v65;
    v14(v12, v13, v5);
    v21 = swift_getKeyPath(byte_1C5BEDDC8);
    sub_1C5B580B4(v21);

    v16(v12, v5);
    v22 = v20 / v65;
    v23 = sub_1C5BCAE44();
    v24 = [objc_opt_self() animationWithKeyPath_];

    v25 = v62;
    v61 = v13;
    v63 = v14;
    v14(v62, v13, v5);
    v26 = swift_getKeyPath(byte_1C5BEDDE8);
    sub_1C5B580B4(v26);

    v62 = v16;
    v16(v25, v5);
    if ((v67 & 1) == 0)
    {
      LODWORD(v28) = HIDWORD(v65);
      LODWORD(v29) = v66;
      LODWORD(v27) = LODWORD(v65);
      [v24 setPreferredFrameRateRange_];
    }

    v30 = v24;
    [v30 setDuration_];
    v31 = sub_1C5BCB394();
    [v30 setFromValue_];

    sub_1C5B581C0();
    v32 = sub_1C5BC7BD4();
    [v30 setToValue_];

    v59 = v30;
    [v30 setRemovedOnCompletion_];
    v33 = v61;
    v34 = v63;
    v63(v12, v61, v5);
    v35 = swift_getKeyPath(byte_1C5BEDE08);
    sub_1C5B580B4(v35);

    v36 = v62;
    (v62)(v12, v5);
    v37 = v22 + v65;
    sub_1C5B5813C(v37);
    v38 = [objc_allocWithZone(MEMORY[0x1E6979308]) init];
    v39 = v60;
    v34(v60, v33, v5);
    v40 = swift_getKeyPath(byte_1C5BEDDE8);
    sub_1C5B580B4(v40);

    v36(v39, v5);
    if ((v67 & 1) == 0)
    {
      LODWORD(v42) = HIDWORD(v65);
      LODWORD(v43) = v66;
      LODWORD(v41) = LODWORD(v65);
      [v38 setPreferredFrameRateRange_];
    }

    v44 = v38;
    v45 = CACurrentMediaTime();
    v46 = v61;
    v63(v12, v61, v5);
    v47 = swift_getKeyPath(byte_1C5BEDE08);
    sub_1C5B580B4(v47);

    (v62)(v12, v5);
    [v44 setBeginTime_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1C5BED3C0;
    v49 = v59;
    *(v48 + 32) = v59;
    sub_1C592535C(0, &qword_1EDA45E90, 0x1E6979300);
    v50 = sub_1C5BCB044();

    [v44 setAnimations_];

    v51 = v46[8];
    if (v51 >= v37)
    {
      if ((~*&v51 & 0x7FF0000000000000) != 0)
      {
        v37 = v46[8];
      }

      else if ((v46[8] & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v37 = v46[8];
      }
    }

    [v44 setDuration_];
    *&v56 = *(v46 + *(v5 + 64));
    [v44 setRepeatCount_];

    v57 = sub_1C5B594F0();
    if (v57)
    {
      v58 = v57;
      v54 = [v57 layer];

      v55 = sub_1C5BCAE44();
      [v54 addAnimation:v44 forKey:v55];

      goto LABEL_16;
    }
  }

  else
  {
    v52 = sub_1C5B594F0();
    if (v52)
    {
      v53 = v52;
      v54 = [v52 layer];

      v55 = sub_1C5BCAE44();
      [v54 removeAnimationForKey_];
LABEL_16:

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C5B593FC(void *a1)
{
  v1 = a1;
  sub_1C5B585E0();
}

double sub_1C5B59444(void *a1)
{
  v1 = a1;
  sub_1C5B59488(v2);
  v4 = v3;

  return v4;
}

void sub_1C5B59488(__n128 a1)
{
  v1 = sub_1C5B594F0();
  if (v1)
  {
    v2 = v1;
    [v1 sizeThatFits_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1C5B594F0()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  if (result)
  {
    v2 = [result view];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5B59554(void *a1)
{
  if (a1)
  {
    v2 = [a1 view];
    if (!v2)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v3 = v2;
    [v2 removeFromSuperview];
  }

  v4 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = [v4 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v1 addSubview_];
}

void sub_1C5B59690(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *a1;

  v4 = *((*v2 & *a1) + 0x78);
  v5 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v5;
  v6 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, v7);
  (*(*(v6 - 8) + 8))(&a1[v4], v6);
}

uint64_t sub_1C5B597D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C5B5984C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1C5B598C8(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1C5BC9264();
  __break(1u);
}

uint64_t Marquee.init(spacing:feathering:rate:delay:isAnimating:content:)@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v16 = type metadata accessor for Marquee(0, a3, a4, a3);
  v17 = (a5 + v16[10]);
  sub_1C5BCA684();
  *v17 = v25;
  v17[1] = v26;
  v18 = a5 + v16[11];
  *v18 = swift_getKeyPath("Pq[&");
  *(v18 + 8) = 0;
  v19 = a5 + v16[12];
  *v19 = swift_getKeyPath("0q[&");
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  v20 = a5 + v16[13];
  *v20 = swift_getKeyPath(byte_1C5BED470);
  *(v20 + 8) = 0;
  v21 = a5 + v16[14];
  *v21 = swift_getKeyPath(byte_1C5BED3D0);
  *(v21 + 8) = 0;
  v22 = a5 + v16[9];
  *v22 = a6;
  *(v22 + 8) = a8;
  *(v22 + 16) = a9;
  *(v22 + 24) = a1;
  *(v22 + 28) = 0;
  *(v22 + 36) = 0;
  *(v22 + 40) = 1;
  *(v22 + 48) = 7104878;
  *(v22 + 56) = 0xE300000000000000;
  result = a2();
  v24 = a5 + v16[15];
  *v24 = a7;
  *(v24 + 8) = 0;
  return result;
}

uint64_t Marquee.init(spacing:feathering:rate:delay:isAnimating:preferredFrameRateRange:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v20 = type metadata accessor for Marquee(0, a5, a6, a4);
  v21 = (a7 + v20[10]);
  sub_1C5BCA684();
  *v21 = v29;
  v21[1] = v30;
  v22 = a7 + v20[11];
  *v22 = swift_getKeyPath("Pq[&");
  *(v22 + 8) = 0;
  v23 = a7 + v20[12];
  *v23 = swift_getKeyPath("0q[&");
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  v24 = a7 + v20[13];
  *v24 = swift_getKeyPath(byte_1C5BED470);
  *(v24 + 8) = 0;
  v25 = a7 + v20[14];
  *v25 = swift_getKeyPath(byte_1C5BED3D0);
  *(v25 + 8) = 0;
  v26 = a7 + v20[9];
  *v26 = a8;
  *(v26 + 8) = a10;
  *(v26 + 16) = a11;
  *(v26 + 24) = a1;
  *(v26 + 28) = a2;
  *(v26 + 36) = a3;
  *(v26 + 40) = BYTE4(a3) & 1;
  *(v26 + 48) = 7104878;
  *(v26 + 56) = 0xE300000000000000;
  result = a4();
  v28 = a7 + v20[15];
  *v28 = a9;
  *(v28 + 8) = 0;
  return result;
}

uint64_t sub_1C5B59BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v6 = (a1 + *(type metadata accessor for ShownWhenAppeared(0, &v10) + 56));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v10) = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  return sub_1C5BCA6A4();
}

double sub_1C5B59C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D48, &qword_1C5BEE330);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D50, &qword_1C5BEE338);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D58, &qword_1C5BEE340);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-1] - v9;
  sub_1C59F0224(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D60, &qword_1C5BEE348);
  if (swift_dynamicCast())
  {
    v11 = &v10[*(v8 + 36)];
    *v11 = sub_1C5B5A0B0;
    *(v11 + 1) = 0;
    v11[16] = 0;
    *(v11 + 3) = swift_getKeyPath(byte_1C5BED3D0);
    v11[32] = 0;
    v12 = *(type metadata accessor for BackdropMaskModifier(0) + 24);
    *&v11[v12] = swift_getKeyPath(byte_1C5BEE350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8, &qword_1C5BE77F0);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D68, &qword_1C5BEE388);
    (*(*(v13 - 8) + 16))(v10, a1, v13);
    v14 = &qword_1EC198D58;
    v15 = &qword_1C5BEE340;
    sub_1C59400B0(v10, v7, &qword_1EC198D58, &qword_1C5BEE340);
    swift_storeEnumTagMultiPayload();
    sub_1C5B5F994();
    sub_1C5B5FA7C();
    sub_1C5BC92C4();
    v16 = v10;
  }

  else
  {
    v17 = &v4[*(v2 + 36)];
    *v17 = swift_getKeyPath(byte_1C5BED3D0);
    v17[8] = 0;
    v18 = *(type metadata accessor for MaskView(0) + 20);
    *&v17[v18] = swift_getKeyPath(byte_1C5BEE350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8, &qword_1C5BE77F0);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D68, &qword_1C5BEE388);
    (*(*(v19 - 8) + 16))(v4, a1, v19);
    v14 = &qword_1EC198D48;
    v15 = &qword_1C5BEE330;
    sub_1C59400B0(v4, v7, &qword_1EC198D48, &qword_1C5BEE330);
    swift_storeEnumTagMultiPayload();
    sub_1C5B5F994();
    sub_1C5B5FA7C();
    sub_1C5BC92C4();
    v16 = v4;
  }

  sub_1C5924EF4(v16, v14, v15);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_1C5B5A038()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B5A070@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BackdropMaskModifier.BackdropGroup();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C5B5A0B0()
{
  v0 = sub_1C5BC7B04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BackdropMaskModifier.BackdropGroup();
  v4 = swift_allocObject();
  sub_1C5BC7AF4();
  v5 = sub_1C5BC7AD4();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  return v4;
}

uint64_t sub_1C5B5A1A4@<X0>(double a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a1;
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  if (v10 == 1)
  {

    v11 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v13 = sub_1C5B5E4E8(v9, 0);
    (*(v6 + 8))(v8, v5, v13);
    v11 = v82[0];
  }

  v14 = 8.0;
  if (*(v11 + 16))
  {
    v15 = sub_1C5960A1C(0);
    if (v16)
    {
      v14 = *(*(v11 + 56) + 8 * v15);
    }
  }

  if (v10)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v18 = sub_1C5B5E4E8(v9, 0);
    (*(v6 + 8))(v8, v5, v18);
    v9 = v82[0];
  }

  v19 = 8.0;
  if (*(v9 + 16))
  {
    v20 = sub_1C5960A1C(1);
    if (v21)
    {
      v19 = *(*(v9 + 56) + 8 * v20);
    }
  }

  *&v65[2] = v19;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D78, &qword_1C5BEE3C8);
  (*(*(v22 - 8) + 16))(a2, COERCE_DOUBLE(*&v66), v22);
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D80, &qword_1C5BEE3D0) + 36);
  *v23 = v14;
  *(v23 + 8) = v19;
  *(v23 + 16) = 256;
  type metadata accessor for BackdropMaskModifier.BackdropGroup();
  sub_1C5B5F300(&qword_1EDA49230, type metadata accessor for BackdropMaskModifier.BackdropGroup, &unk_1C5BEDB40);
  v24 = sub_1C5BC83A4();
  v26 = *(v24 + 16);
  v25 = *(v24 + 24);

  v27 = sub_1C5BC98C4();
  sub_1C5BC8174();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LOBYTE(v82[0]) = 0;
  v36 = sub_1C5BC98E4();
  sub_1C5BC8174();
  v38 = v37;
  v40 = v39;
  v66 = v14;
  v42 = v41;
  v44 = v43;
  v70 = 0;
  v45 = sub_1C5BCAA54();
  v47 = v46;
  *&v73 = v26;
  *(&v73 + 1) = v25;
  v65[1] = v3;
  LOBYTE(v74) = 1;
  *(&v74 + 1) = *v69;
  DWORD1(v74) = *&v69[3];
  BYTE8(v74) = v27;
  *(&v74 + 9) = *v68;
  HIDWORD(v74) = *&v68[3];
  *&v75 = v29;
  *(&v75 + 1) = v31;
  *&v76 = v33;
  *(&v76 + 1) = v35;
  LOBYTE(v77) = 0;
  DWORD1(v77) = *&v72[3];
  *(&v77 + 1) = *v72;
  BYTE8(v77) = v36;
  HIDWORD(v77) = *&v71[3];
  *(&v77 + 9) = *v71;
  *&v78 = v38;
  *(&v78 + 1) = v40;
  *&v79 = v42;
  *(&v79 + 1) = v44;
  LOBYTE(v80) = 0;
  *(&v80 + 1) = v45;
  v81 = v46;
  v48 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D88, &qword_1C5BEE3D8) + 36);
  v49 = v78;
  v50 = v80;
  *(v48 + 96) = v79;
  *(v48 + 112) = v50;
  *(v48 + 128) = v81;
  v51 = v74;
  v52 = v76;
  *(v48 + 32) = v75;
  *(v48 + 48) = v52;
  *(v48 + 64) = v77;
  *(v48 + 80) = v49;
  *v48 = v73;
  *(v48 + 16) = v51;
  v82[0] = v26;
  v82[1] = v25;
  v83 = 1;
  *v84 = *v69;
  *&v84[3] = *&v69[3];
  v85 = v27;
  *v86 = *v68;
  *&v86[3] = *&v68[3];
  v87 = v29;
  v88 = v31;
  v89 = v33;
  v90 = v35;
  v91 = 0;
  *&v92[3] = *&v72[3];
  *v92 = *v72;
  v93 = v36;
  *&v94[3] = *&v71[3];
  *v94 = *v71;
  v95 = v38;
  v96 = v40;
  v97 = v42;
  v98 = v44;
  v99 = 0;
  v100 = v45;
  v101 = v47;
  sub_1C59400B0(&v73, &v67, &qword_1EC198D90, &qword_1C5BEE3E0);
  sub_1C5924EF4(v82, &qword_1EC198D90, &qword_1C5BEE3E0);
  v53 = sub_1C5BCAA64();
  v55 = v54;
  v56 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D98, &qword_1C5BEE3E8) + 36);
  sub_1C5B5A7EC(MEMORY[0x1E6981508], MEMORY[0x1E6981510], MEMORY[0x1E6980D38], v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198DA0, &qword_1C5BEE3F0);
  v58 = (v56 + *(v57 + 36));
  *v58 = v53;
  v58[1] = v55;
  v59 = sub_1C5BCAA74();
  v61 = v60;
  v62 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198DA8, &qword_1C5BEE3F8) + 36);
  result = sub_1C5B5A7EC(MEMORY[0x1E6981510], MEMORY[0x1E6981508], MEMORY[0x1E6980D40], v62);
  v64 = (v62 + *(v57 + 36));
  *v64 = v59;
  v64[1] = v61;
  return result;
}

uint64_t sub_1C5B5A7EC@<X0>(uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  *&v48 = a3;
  v47 = a2;
  v53 = a5;
  v6 = sub_1C5BC89D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  *&v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198DB0, &qword_1C5BEE400);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v44 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198DB8, &qword_1C5BEE408);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v44 - v15;
  type metadata accessor for BackdropMaskModifier.BackdropGroup();
  sub_1C5B5F300(&qword_1EDA49230, type metadata accessor for BackdropMaskModifier.BackdropGroup, &unk_1C5BEDB40);
  v16 = sub_1C5BC83A4();
  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  v45 = v18;
  v46 = v17;

  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *&v54[7] = v55;
  *&v54[23] = v56;
  *&v54[39] = v57;
  type metadata accessor for BackdropMaskModifier(0);
  sub_1C59EFDDC(v12);
  v19 = *MEMORY[0x1E697E7D0];
  v20 = *(v7 + 104);
  v20(v9, v19, v6);
  v21 = sub_1C5BC89C4();
  v22 = *(v7 + 8);
  v22(v9, v6);
  v22(v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0, &unk_1C5BEE410);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C5BD4D40;
  if (v21)
  {
    *(v23 + 32) = v47();
    v24 = (v48)();
  }

  else
  {
    *(v23 + 32) = (v48)();
    v24 = v47();
  }

  *(v23 + 40) = v24;
  sub_1C5BCABE4();
  sub_1C5BCABF4();
  MEMORY[0x1C694EBE0](v23);
  sub_1C5BC88B4();
  v25 = v58;
  KeyPath = swift_getKeyPath(byte_1C5BEE350);
  v27 = &v14[*(v49 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955C8, &qword_1C5BE1570) + 28);
  v49 = v59;
  v48 = v60;
  v29 = (v20)(v27 + v28, v19, v6);
  *v27 = KeyPath;
  v30 = *&v54[16];
  *(v14 + 17) = *v54;
  v31 = v46;
  *v14 = v45;
  *(v14 + 1) = v31;
  v14[16] = 0;
  *(v14 + 33) = v30;
  *(v14 + 49) = *&v54[32];
  *(v14 + 8) = *&v54[47];
  *(v14 + 9) = v25;
  v32 = v48;
  *(v14 + 5) = v49;
  *(v14 + 6) = v32;
  LOBYTE(v25) = v52(v29);
  sub_1C5BC8174();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v50;
  sub_1C59E7D34(v14, v50, &qword_1EC198DB0, &qword_1C5BEE400);
  v42 = v41 + *(v51 + 36);
  *v42 = v25;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  sub_1C5B5FBE4();
  sub_1C5BCA094();
  return sub_1C5924EF4(v41, &qword_1EC198DB8, &qword_1C5BEE408);
}

uint64_t sub_1C5B5AD30(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  CGRectGetMinX(*&a1);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinY(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetWidth(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetHeight(v13);
  return sub_1C5BC9B04();
}

double sub_1C5B5AE08@<D0>(uint64_t a1@<X8>)
{
  sub_1C5BC9B34();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1C5B5AE74(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5B5AEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B60498();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5B5AF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B60498();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5B5AFC4(uint64_t a1)
{
  v2 = sub_1C5B60498();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C5B5B014@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  if (v9 == 1)
  {

    v10 = v8;
  }

  else
  {

    sub_1C5BCB4E4();
    v11 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v12 = sub_1C5B5E4E8(v8, 0);
    (*(v5 + 8))(v7, v4, v12);
    v10 = *&v74[0];
  }

  if (*(v10 + 16))
  {
    sub_1C5960A1C(0);
  }

  if (v9)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v14 = sub_1C5B5E4E8(v8, 0);
    (*(v5 + 8))(v7, v4, v14);
    v8 = *&v74[0];
  }

  if (*(v8 + 16))
  {
    sub_1C5960A1C(1);
  }

  v15 = sub_1C5BC8FC4();
  v61 = 0;
  sub_1C5B5B560(v2, &v48);
  v70 = v56;
  v71 = v57;
  v72 = v58;
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  v62 = v48;
  v63 = v49;
  v64 = v50;
  v65 = v51;
  v74[8] = v56;
  v74[9] = v57;
  v74[10] = v58;
  v74[4] = v52;
  v74[5] = v53;
  v74[6] = v54;
  v74[7] = v55;
  v74[0] = v48;
  v74[1] = v49;
  v73 = v59;
  v75 = v59;
  v74[2] = v50;
  v74[3] = v51;
  sub_1C59400B0(&v62, &v47, &qword_1EC198E78, &qword_1C5BEE638);
  sub_1C5924EF4(v74, &qword_1EC198E78, &qword_1C5BEE638);
  *(&v60[8] + 7) = v70;
  *(&v60[9] + 7) = v71;
  *(&v60[10] + 7) = v72;
  *(&v60[4] + 7) = v66;
  *(&v60[5] + 7) = v67;
  *(&v60[6] + 7) = v68;
  *(&v60[7] + 7) = v69;
  *(v60 + 7) = v62;
  *(&v60[1] + 7) = v63;
  *(&v60[2] + 7) = v64;
  *(&v60[11] + 7) = v73;
  *(&v60[3] + 7) = v65;
  v16 = v61;
  KeyPath = swift_getKeyPath(byte_1C5BEE350);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198E80, &qword_1C5BEE640) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955C8, &qword_1C5BE1570) + 28);
  v20 = *MEMORY[0x1E697E7D0];
  v21 = sub_1C5BC89D4();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = KeyPath;
  v22 = v60[9];
  *(a1 + 145) = v60[8];
  *(a1 + 161) = v22;
  *(a1 + 177) = v60[10];
  *(a1 + 192) = *(&v60[10] + 15);
  v23 = v60[5];
  *(a1 + 81) = v60[4];
  *(a1 + 97) = v23;
  v24 = v60[7];
  *(a1 + 113) = v60[6];
  *(a1 + 129) = v24;
  v25 = v60[1];
  *(a1 + 17) = v60[0];
  *(a1 + 33) = v25;
  v26 = v60[3];
  *(a1 + 49) = v60[2];
  *a1 = v15;
  *(a1 + 8) = 0;
  *(a1 + 16) = v16;
  *(a1 + 65) = v26;
  LOBYTE(v15) = sub_1C5BC98C4();
  sub_1C5BC8174();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198E88, &qword_1C5BEE648) + 36);
  *v35 = v15;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  LOBYTE(v15) = sub_1C5BC98E4();
  sub_1C5BC8174();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198E90, &unk_1C5BEE650);
  v45 = a1 + *(result + 36);
  *v45 = v15;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_1C5B5B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v5 = sub_1C5BC89D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0, &unk_1C5BEE410);
  v12 = swift_allocObject();
  v33 = xmmword_1C5BD4D40;
  *(v12 + 16) = xmmword_1C5BD4D40;
  *(v12 + 32) = sub_1C5BCA484();
  *(v12 + 40) = sub_1C5BCA474();
  MEMORY[0x1C694EBE0](v12);
  sub_1C5BCABE4();
  sub_1C5BCABF4();
  sub_1C5BC88B4();
  v32 = *(type metadata accessor for MaskView(0) + 20);
  sub_1C59EFDDC(v11);
  v13 = *MEMORY[0x1E697E7D0];
  v30 = *(v6 + 104);
  v30(v8, v13, v5);
  sub_1C5BC89C4();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v50 = v56;
  v51 = v57;
  *&v52 = v58;
  v35 = sub_1C5BCA474();
  v15 = swift_allocObject();
  *(v15 + 16) = v33;
  *(v15 + 32) = sub_1C5BCA474();
  *(v15 + 40) = sub_1C5BCA484();
  MEMORY[0x1C694EBE0](v15);
  sub_1C5BCABE4();
  sub_1C5BCABF4();
  sub_1C5BC88B4();
  sub_1C59EFDDC(v11);
  v30(v8, v13, v5);
  sub_1C5BC89C4();
  v14(v8, v5);
  v14(v11, v5);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v44 = v59;
  v45 = v60;
  *&v46 = v61;
  v16 = v53;
  v36[2] = v52;
  v36[3] = v53;
  v17 = v54;
  v36[4] = v54;
  v18 = v50;
  v19 = v51;
  v36[0] = v50;
  v36[1] = v51;
  v38[0] = v59;
  v38[1] = v60;
  v21 = v46;
  v20 = v47;
  v38[2] = v46;
  v38[3] = v47;
  v22 = v48;
  v38[4] = v48;
  *(a2 + 32) = v52;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
  v23 = v55;
  v37 = v55;
  v24 = v49;
  v39 = v49;
  *a2 = v18;
  *(a2 + 16) = v19;
  v25 = v35;
  *(a2 + 80) = v23;
  *(a2 + 88) = v25;
  *(a2 + 176) = v24;
  *(a2 + 144) = v20;
  *(a2 + 160) = v22;
  v27 = v44;
  v26 = v45;
  *(a2 + 112) = v45;
  *(a2 + 128) = v21;
  *(a2 + 96) = v27;
  v40[2] = v21;
  v40[3] = v20;
  v40[4] = v22;
  v41 = v24;
  v40[0] = v27;
  v40[1] = v26;
  sub_1C59400B0(v36, v42, &qword_1EC1921E0, &qword_1C5BD48E8);

  sub_1C59400B0(v38, v42, &qword_1EC1921E0, &qword_1C5BD48E8);
  sub_1C5924EF4(v40, &qword_1EC1921E0, &qword_1C5BD48E8);

  v42[2] = v52;
  v42[3] = v53;
  v42[4] = v54;
  v43 = v55;
  v42[0] = v50;
  v42[1] = v51;
  return sub_1C5924EF4(v42, &qword_1EC1921E0, &qword_1C5BD48E8);
}

uint64_t sub_1C5B5BA04@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EDA463A0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1C59318C8(&unk_1EDA463A8, v2);
}

double sub_1C5B5BA74@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  v6 = sub_1C5A1BA50(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1C5A1BC74(v4);
  v15 = v14;
  KeyPath = swift_getKeyPath("@b[&");
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v3;

  return result;
}

uint64_t Marquee.appending(badges:foregroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192978, &qword_1C5BED4B0);
  v7 = sub_1C5BC8AB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  Marquee.appending(badges:foregroundColor:badgeFont:)(a1, a2, 0, a3);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1C5924F54(&qword_1EC192970, &qword_1EC192978, &qword_1C5BED4B0, MEMORY[0x1E6980A18]);
  v19[2] = WitnessTable;
  v19[3] = v15;
  v16 = swift_getWitnessTable();
  sub_1C593EDC0(v10, v7, v16);
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_1C593EDC0(v13, v7, v16);
  return (v17)(v13, v7);
}

double sub_1C5B5BD18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_getKeyPath("0q[&");
  if (a1)
  {
  }

  swift_getWitnessTable();
  sub_1C5BC9DF4();

  return sub_1C5B5CD34(a1, a2, a3);
}

double sub_1C5B5BE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 16))
  {

    v8 = sub_1C5B5CC2C(a1);
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
  }

  sub_1C5B5BD18(v8, v10, v12, a5, a4);

  return sub_1C5B5CD34(v8, v10, v12);
}

uint64_t sub_1C5B5BEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5B5CE44();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5B5BF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5B5FB60();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5B5BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5924F54(&qword_1EDA45EA0, &qword_1EC198CB8, &qword_1C5BED598, MEMORY[0x1E69E6500]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.marqueeBoundsRestrictedEdges.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_1C5B5CD80();
  sub_1C5BC8F44();
  return sub_1C5B5C0D0;
}

void sub_1C5B5C0D0(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1C5BC8F54();
  }

  else
  {
    sub_1C5BC8F54();
  }
}

uint64_t (*EnvironmentValues.marqueeCanExtendContentBeyondFrame.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C5B5CDD4();
  sub_1C5BC8F44();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C5B5C1CC;
}

void *sub_1C5B5C204(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  v4 = *a1;
  if (v5 >= *a1)
  {
    if ((*&v5 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v4 = v5;
    }

    if ((~*&v5 & 0x7FF0000000000000) != 0)
    {
      v4 = v5;
    }
  }

  *a1 = v4;
  return result;
}

uint64_t MarqueeAnimationDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5B5C2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D10, &qword_1C5BEDD08);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D18, &qword_1C5BEDD10) + 36));
  *v9 = sub_1C5B5E874;
  v9[1] = v7;
  KeyPath = swift_getKeyPath(byte_1C5BEDD18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D20, &qword_1C5BEDD48);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v13;
  return result;
}

uint64_t View.coordinatedMarquees()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MCUINamespace(0, a1, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  View.mcui.getter(a1, &v12 - v8);
  v10 = MCUINamespace<A>.coordinatedMarquees()(v6, a2);
  return (*(v7 + 8))(v9, v6, v10);
}

uint64_t View.marqueeFeathering(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MCUINamespace(0, a3, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  View.mcui.getter(a3, &v13 - v10);
  MCUINamespace<A>.marqueeFeathering(_:)(a1, a2 & 1, v8, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t View.marqueeFeathering(_:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = type metadata accessor for MCUINamespace(0, a4, a3, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  View.mcui.getter(a4, &v16 - v12);
  v14 = MCUINamespace<A>.marqueeFeathering(_:_:)(a1 & 1, a2, v7 & 1, v10, a5);
  return (*(v11 + 8))(v13, v10, v14);
}

uint64_t View.marqueeAnimationDirection(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MCUINamespace(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-v9];
  LOBYTE(a1) = *a1;
  View.mcui.getter(a2, &v13[-v9]);
  v14 = a1;
  v11 = MCUINamespace<A>.marqueeAnimationDirection(_:)(&v14, v7, a3);
  return (*(v8 + 8))(v10, v7, v11);
}

unint64_t *sub_1C5B5C850(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C5B5F07C(a4, a5 & 1);
    v10 = sub_1C5B5ED00(v9, a2, a3, HIBYTE(a5) & 1);

    sub_1C5B5E4E8(a4, a5 & 1);
    sub_1C5B5E4E8(a4, a5 & 1);
    return v10;
  }

  return result;
}

uint64_t sub_1C5B5C90C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191868, &qword_1C5BD3110);
  result = sub_1C5BCBC74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    sub_1C5BCBF54();
    sub_1C5BC8884();
    sub_1C5BCBF74();
    result = sub_1C5BCBF94();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C5B5CB30(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  v4 = a2;
  v5 = a1;
  v6 = sub_1C5BCB514();
  a2 = v4;
  v7 = v6;
  a1 = v5;
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  return sub_1C5BCBDE4();
}

uint64_t sub_1C5B5CC2C(uint64_t result)
{
  if (!*(result + 16))
  {
    v1 = result;
    if (qword_1EDA46948 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EDA46950);
    v3 = sub_1C5BC7D44();
    v4 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C5922000, v3, v4, "Initialized BadgeConfiguration.Display with an empty badge list; this configuration is unsupported.", v5, 2u);
      MEMORY[0x1C69510F0](v5, -1, -1);
    }

    return v1;
  }

  return result;
}

double sub_1C5B5CD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1C5B5CD80()
{
  result = qword_1EDA46350;
  if (!qword_1EDA46350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46350);
  }

  return result;
}

unint64_t sub_1C5B5CDD4()
{
  result = qword_1EDA46348;
  if (!qword_1EDA46348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46348);
  }

  return result;
}

unint64_t sub_1C5B5CE44()
{
  result = qword_1EDA47CE0;
  if (!qword_1EDA47CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47CE0);
  }

  return result;
}

uint64_t sub_1C5B5CEA8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1C5B5D00C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 56) = 0;
          result = 0.0;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_1C5B5D214(__n128 *a1)
{
  v5 = &unk_1C5BED5D0;
  v1 = a1[6];
  v4[0] = a1[5];
  v4[1] = v1;
  result = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(319, v4);
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v7 = &unk_1C5BED5E8;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MediaCoreB019CoordinatedMarquees33_7D7F54989E0BD2C2C05089BF2F1B885FLLVGAaBHPxAaBHD1__AhA0C8ModifierHPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1C5BC8AB4();
  a3();
  return swift_getWitnessTable();
}

void sub_1C5B5D388(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C595A0F8(319, &qword_1EDA45FA0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5B5D43C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1C5B5D580(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v20 = &a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v20 + 56) = 0;
          result = 0.0;
          *(v20 + 40) = 0u;
          *(v20 + 24) = 0u;
          *(v20 + 8) = 0u;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 56) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

uint64_t sub_1C5B5D778(uint64_t a1)
{
  result = sub_1C5BC89D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C5B5D83C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5B5D884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B5D8E4(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))(a1);
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  v25 = v24 - 1;
  if (v25 < 0)
  {
    v25 = -1;
  }

  return (v25 + 1);
}

unsigned int *sub_1C5B5DAC0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v26 = a2 - 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        v26[1] = a2;
      }
    }
  }

  return result;
}

uint64_t sub_1C5B5DD30(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1C5B5DE94(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 56) = 0;
          result = 0.0;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_1C5B5E09C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1C5B5E1E8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 16) = 0;
          *(v18 + 24) = 0;
          *(v18 + 32) = 0;
          *v18 = a2 - 255;
          *(v18 + 8) = 0;
        }

        else
        {
          *(v18 + 32) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 33);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

double sub_1C5B5E48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return sub_1C5B5E498(a1, a2, a3, a4);
  }

  return result;
}

double sub_1C5B5E498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double sub_1C5B5E4E8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1C5B5E52C()
{
  result = qword_1EDA47AB0[0];
  if (!qword_1EDA47AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA47AB0);
  }

  return result;
}

unint64_t sub_1C5B5E5B0()
{
  result = qword_1EDA4B250;
  if (!qword_1EDA4B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B250);
  }

  return result;
}

unint64_t sub_1C5B5E604()
{
  result = qword_1EDA45F38;
  if (!qword_1EDA45F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD8, &qword_1C5BEDC90);
    sub_1C5924F54(&qword_1EDA45F40, &qword_1EC198CE8, &unk_1C5BEDCA0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F38);
  }

  return result;
}

unint64_t sub_1C5B5E6B4()
{
  result = qword_1EDA464A8;
  if (!qword_1EDA464A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CE0, &qword_1C5BEDC98);
    sub_1C59AEE44();
    sub_1C5B5F300(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464A8);
  }

  return result;
}

unint64_t sub_1C5B5E770()
{
  result = qword_1EDA46398;
  if (!qword_1EDA46398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46398);
  }

  return result;
}

unint64_t sub_1C5B5E7C4()
{
  result = qword_1EDA45F50;
  if (!qword_1EDA45F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CF8, &qword_1C5BEDCF0);
    sub_1C5924F54(&qword_1EDA45F58, &qword_1EC198D00, &qword_1C5BEDCF8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F50);
  }

  return result;
}

unint64_t sub_1C5B5E8D0()
{
  result = qword_1EDA46358;
  if (!qword_1EDA46358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46358);
  }

  return result;
}

id sub_1C5B5E924(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = MEMORY[0x1E69E7D40];
  v12 = *MEMORY[0x1E69E7D40] & *v5;
  *&v5[*(v12 + 0x80)] = 0;
  v13 = *((*v11 & *v5) + 0x78);
  v14 = *(v12 + 96);
  v26[0] = *(v12 + 80);
  v26[1] = v14;
  v15 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration(0, v26);
  (*(*(v15 - 8) + 16))(&v5[v13], a1, v15);
  v16 = &v5[*((*v11 & *v5) + 0x70)];
  *v16 = a2;
  *(v16 + 1) = a3;
  *(v16 + 2) = a4;
  v25.receiver = v5;
  v25.super_class = ObjectType;

  v17 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 clearColor];
  [v19 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0, &unk_1C5BD2730);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C5BCFF00;
  v22 = sub_1C5BC7DE4();
  v23 = MEMORY[0x1E69DC0A0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1C5BCB6C4();

  swift_unknownObjectRelease();

  return v19;
}

void sub_1C5B5EB9C(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
  sub_1C5B59554(v4);
}

uint64_t sub_1C5B5EC08(uint64_t a1, char a2)
{
  sub_1C5B57FDC();
  if (a2)
  {
    return 0x4024000000000000;
  }

  else
  {
    return a1;
  }
}

void sub_1C5B5EC5C()
{
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80)) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

unint64_t *sub_1C5B5ED00(unint64_t *result, uint64_t a2, uint64_t a3, char a4)
{
  v19 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = sub_1C5BC8884();
    result = sub_1C5BC8884();
    if (v16 != result)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1C5B5C90C(v19, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1C5B5C90C(v19, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C5B5EE3C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, int a5)
{
  v6 = v5;
  v21 = a5;
  v7 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3 & 0x100;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  sub_1C5B5F07C(a2, a3 & 1);
  sub_1C5B5F07C(a2, v7 & 1);
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();
      v19 = v7 & 1;
      sub_1C5B5F07C(a2, v19);
      v23 = v19;
      v22 = v21 & 1;
      v16 = sub_1C5B5C850(v18, v13, a1, a2, v10 | v19);
      MEMORY[0x1C69510F0](v18, -1, -1);
      sub_1C5B5E4E8(a2, v19);
      sub_1C5B5E4E8(a2, v19);
      return v16;
    }

    v6 = v5;
  }

  MEMORY[0x1EEE9AC00](v15);
  bzero(&v20[-((v14 + 15) & 0x3FFFFFFFFFFFFFF0)], v14);
  sub_1C5B5F07C(a2, v7 & 1);
  v16 = sub_1C5B5ED00(&v20[-((v14 + 15) & 0x3FFFFFFFFFFFFFF0)], v13, a1, SHIBYTE(v10));
  sub_1C5B5E4E8(a2, v7 & 1);
  if (v6)
  {
    swift_willThrow();
  }

  sub_1C5B5E4E8(a2, v7 & 1);
  sub_1C5B5E4E8(a2, v7 & 1);
  return v16;
}

double sub_1C5B5F07C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1C5B5F0B8()
{
  result = qword_1EDA46368;
  if (!qword_1EDA46368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46368);
  }

  return result;
}

uint64_t objectdestroy_101Tm()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for ShownWhenAppeared(0, &v7) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  (*(*(v6 - 8) + 8))(v4 + v3[15]);

  return swift_deallocObject();
}

uint64_t sub_1C5B5F260(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for ShownWhenAppeared(0, v9) - 8);
  return sub_1C5B59BFC(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_1C5B5F300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C5B5F3CC()
{
  result = qword_1EDA46388;
  if (!qword_1EDA46388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46388);
  }

  return result;
}

uint64_t sub_1C5B5F48C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5B5F4D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_1C5B5F58C(uint64_t a1)
{
  sub_1C5B5F640(319);
  if (v1 <= 0x3F)
  {
    sub_1C593377C(319, &qword_1EDA46728, &qword_1EC198CC8, qword_1C5BED5A8);
    if (v2 <= 0x3F)
    {
      sub_1C5B5F6D4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5B5F640(uint64_t a1)
{
  if (!qword_1EDA46708)
  {
    type metadata accessor for BackdropMaskModifier.BackdropGroup();
    sub_1C5B5F300(&qword_1EDA49230, type metadata accessor for BackdropMaskModifier.BackdropGroup, &unk_1C5BEDB40);
    v1 = sub_1C5BC83B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46708);
    }
  }
}

void sub_1C5B5F6D4(uint64_t a1)
{
  if (!qword_1EDA46758)
  {
    sub_1C5BC89D4();
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46758);
    }
  }
}

unint64_t sub_1C5B5F72C()
{
  result = qword_1EDA464C8;
  if (!qword_1EDA464C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D20, &qword_1C5BEDD48);
    sub_1C5B5F7E4();
    sub_1C5924F54(&qword_1EDA46060, &qword_1EC198758, &qword_1C5BEB6B8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464C8);
  }

  return result;
}

unint64_t sub_1C5B5F7E4()
{
  result = qword_1EDA465E8;
  if (!qword_1EDA465E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D18, &qword_1C5BEDD10);
    sub_1C5924F54(&qword_1EDA46258, &qword_1EC198D10, &qword_1C5BEDD08, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA461B0, &qword_1EC198D38, qword_1C5BEE030, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465E8);
  }

  return result;
}

unint64_t sub_1C5B5F8CC()
{
  result = qword_1EC198D40;
  if (!qword_1EC198D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198D40);
  }

  return result;
}

unint64_t sub_1C5B5F994()
{
  result = qword_1EDA46640;
  if (!qword_1EDA46640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D58, &qword_1C5BEE340);
    sub_1C5924F54(&qword_1EDA462B0, &qword_1EC198D68, &qword_1C5BEE388, MEMORY[0x1E697FDF8]);
    sub_1C5B5F300(qword_1EDA49188, type metadata accessor for BackdropMaskModifier, &unk_1C5BEE0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46640);
  }

  return result;
}

unint64_t sub_1C5B5FA7C()
{
  result = qword_1EDA46648;
  if (!qword_1EDA46648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D48, &qword_1C5BEE330);
    sub_1C5924F54(&qword_1EDA462B0, &qword_1EC198D68, &qword_1C5BEE388, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA466E0, &qword_1EC198D70, &qword_1C5BEE390, MEMORY[0x1E697DDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46648);
  }

  return result;
}

unint64_t sub_1C5B5FB60()
{
  result = qword_1EDA45ED0;
  if (!qword_1EDA45ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CC8, qword_1C5BED5A8);
    sub_1C59AEC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45ED0);
  }

  return result;
}

unint64_t sub_1C5B5FBE4()
{
  result = qword_1EC198DC0;
  if (!qword_1EC198DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DB8, &qword_1C5BEE408);
    sub_1C5B5FC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198DC0);
  }

  return result;
}

unint64_t sub_1C5B5FC70()
{
  result = qword_1EC198DC8;
  if (!qword_1EC198DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DB0, &qword_1C5BEE400);
    sub_1C5B5FD28();
    sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8, &qword_1C5BE1570, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198DC8);
  }

  return result;
}

unint64_t sub_1C5B5FD28()
{
  result = qword_1EC198DD0;
  if (!qword_1EC198DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DD8, &unk_1C5BEE420);
    sub_1C5A49984();
    sub_1C5924F54(&qword_1EC198DE0, &qword_1EC198DE8, &unk_1C5BEE430, MEMORY[0x1E697DDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198DD0);
  }

  return result;
}

void sub_1C5B5FE28(uint64_t a1)
{
  sub_1C593377C(319, &qword_1EDA46728, &qword_1EC198CC8, qword_1C5BED5A8);
  if (v1 <= 0x3F)
  {
    sub_1C5B5F6D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C5B5FED4()
{
  result = qword_1EDA462F0;
  if (!qword_1EDA462F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DF0, &qword_1C5BEE4B0);
    sub_1C5B5F994();
    sub_1C5B5FA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA462F0);
  }

  return result;
}

unint64_t sub_1C5B5FF60()
{
  result = qword_1EC198DF8;
  if (!qword_1EC198DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198E00, &unk_1C5BEE4B8);
    sub_1C5B60018();
    sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80, &qword_1C5BD6C60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198DF8);
  }

  return result;
}

unint64_t sub_1C5B60018()
{
  result = qword_1EC198E08;
  if (!qword_1EC198E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E08);
  }

  return result;
}

unint64_t sub_1C5B6006C()
{
  result = qword_1EC198E10;
  if (!qword_1EC198E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DA8, &qword_1C5BEE3F8);
    sub_1C5B60124();
    sub_1C5924F54(&qword_1EC198E50, &qword_1EC198DA0, &qword_1C5BEE3F0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E10);
  }

  return result;
}

unint64_t sub_1C5B60124()
{
  result = qword_1EC198E18;
  if (!qword_1EC198E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D98, &qword_1C5BEE3E8);
    sub_1C5B601DC();
    sub_1C5924F54(&qword_1EC198E50, &qword_1EC198DA0, &qword_1C5BEE3F0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E18);
  }

  return result;
}

unint64_t sub_1C5B601DC()
{
  result = qword_1EC198E20;
  if (!qword_1EC198E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D88, &qword_1C5BEE3D8);
    sub_1C5B60294();
    sub_1C5924F54(&qword_1EC198E48, &qword_1EC198D90, &qword_1C5BEE3E0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E20);
  }

  return result;
}

unint64_t sub_1C5B60294()
{
  result = qword_1EC198E28;
  if (!qword_1EC198E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D80, &qword_1C5BEE3D0);
    sub_1C5924F54(&qword_1EC198E30, &qword_1EC198D78, &qword_1C5BEE3C8, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC198E38, &qword_1EC198E40, &qword_1C5BEE4C8, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E28);
  }

  return result;
}

unint64_t sub_1C5B603C0()
{
  result = qword_1EC198E68;
  if (!qword_1EC198E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E68);
  }

  return result;
}

unint64_t sub_1C5B60418()
{
  result = qword_1EC198E70;
  if (!qword_1EC198E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E70);
  }

  return result;
}

unint64_t sub_1C5B60498()
{
  result = qword_1EC198E98;
  if (!qword_1EC198E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E98);
  }

  return result;
}

unint64_t sub_1C5B604EC()
{
  result = qword_1EDA46458;
  if (!qword_1EDA46458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198E90, &unk_1C5BEE650);
    sub_1C5B60578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46458);
  }

  return result;
}

unint64_t sub_1C5B60578()
{
  result = qword_1EDA46470;
  if (!qword_1EDA46470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198E88, &qword_1C5BEE648);
    sub_1C5B60604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46470);
  }

  return result;
}

unint64_t sub_1C5B60604()
{
  result = qword_1EDA46500;
  if (!qword_1EDA46500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198E80, &qword_1C5BEE640);
    sub_1C5924F54(&qword_1EDA45FB8, &qword_1EC198EA0, &unk_1C5BEE660, MEMORY[0x1E69817F8]);
    sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8, &qword_1C5BE1570, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46500);
  }

  return result;
}

uint64_t (*MCUINamespace<A>.miniPlayerWidth.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C594CF14();
  sub_1C5BC8F44();
  return sub_1C5B60790;
}

double NowPlayingMiniPlayerAccessoryLayout.WidthConstraint.hash(into:)(uint64_t a1)
{
  sub_1C5BCAF04();

  return result;
}

uint64_t NowPlayingMiniPlayerAccessoryLayout.WidthConstraint.hashValue.getter()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5B609CC()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

double sub_1C5B60A74(uint64_t a1)
{
  sub_1C5BCAF04();

  return result;
}

uint64_t sub_1C5B60B08(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

unint64_t sub_1C5B60BAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5B60D68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C5B60BDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v5 = 0x7274736E6F636E75;
    v4 = 0xED000064656E6961;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6C616D73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t NowPlayingMiniPlayerAccessoryLayout.WidthConstraint.description.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7274736E6F636E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_1C5B60CA0()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7274736E6F636E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

unint64_t sub_1C5B60D14()
{
  result = qword_1EC198EB0;
  if (!qword_1EC198EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198EB0);
  }

  return result;
}

unint64_t sub_1C5B60D68(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5BCBCB4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C5B60DB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5B60E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void *SlideCarousel.init(speed:isAnimating:items:itemView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  sub_1C5BCA684();
  *(a7 + 56) = v17;
  *(a7 + 64) = v18;
  sub_1C5BCA684();
  *(a7 + 72) = v17;
  *(a7 + 80) = v18;
  sub_1C5BCA684();
  *(a7 + 88) = v17;
  *(a7 + 96) = v18;
  sub_1C5BCA684();
  *(a7 + 104) = v17;
  *(a7 + 112) = v18;
  sub_1C5BCA684();
  *(a7 + 120) = v17;
  *(a7 + 128) = v18;
  sub_1C5BCA684();
  *(a7 + 136) = v17;
  *(a7 + 144) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EE8, &qword_1C5BEEA90);
  swift_allocObject();
  sub_1C5BC7F44();
  sub_1C5BCA684();
  *(a7 + 152) = v17;
  *(a7 + 160) = v18;
  sub_1C5BCA684();
  *(a7 + 168) = v17;
  *(a7 + 176) = v18;
  result = sub_1C5BCA684();
  *(a7 + 184) = v17;
  *(a7 + 192) = v18;
  *a7 = a8;
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

double sub_1C5B610A0()
{
  sub_1C5BCAAE4();
  sub_1C5BC87F4();

  return result;
}

uint64_t sub_1C5B61158(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 21);
  v7 = *(a1 + 22);
  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  v8 = type metadata accessor for SlideCarousel(0, &v27);
  *&v27 = v6;
  *(&v27 + 1) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA694();
  v9 = v17;
  v24 = a1[6];
  v25 = a1[7];
  v26 = *(a1 + 16);
  v20 = a1[2];
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1[5];
  v18 = *a1;
  v19 = a1[1];
  v10 = *(a1 + 17);
  v11 = *(a1 + 18);
  v14 = *(a1 + 152);
  v15 = *(a1 + 168);
  v16 = *(a1 + 184);
  v12 = *(v8 - 8);
  (*(v12 + 16))(&v27, a1, v8);
  *&v27 = v10;
  *(&v27 + 1) = v11;
  v41[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA6A4();
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v27 = v18;
  v28 = v19;
  v36 = v10;
  v37 = v11;
  v38 = v14;
  v39 = v15;
  v40 = v16;
  return (*(v12 + 8))(&v27, v8);
}

uint64_t sub_1C5B613B0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[7];
  v57 = a1[6];
  v58 = v6;
  v59 = *(a1 + 16);
  v7 = a1[3];
  v53 = a1[2];
  v54 = v7;
  v8 = a1[5];
  v55 = a1[4];
  v56 = v8;
  v9 = a1[1];
  v51 = *a1;
  v52 = v9;
  v10 = *(a1 + 17);
  v11 = *(a1 + 18);
  v12 = *(a1 + 168);
  v48 = *(a1 + 152);
  v49 = v12;
  v50 = *(a1 + 184);
  *&v35 = a2;
  *(&v35 + 1) = a3;
  *&v36 = a4;
  *(&v36 + 1) = a5;
  v13 = type metadata accessor for SlideCarousel(0, &v35);
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v35, a1, v13);
  *&v35 = v10;
  *(&v35 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA694();
  v15 = *(a1 + 8);
  *&v35 = *(a1 + 7);
  *(&v35 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA694();
  v16 = *(a1 + 24);
  LOBYTE(v35) = *(a1 + 184) & 1;
  *(&v35 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA694();
  v17 = LOBYTE(v28[0]);
  v18 = a1[11];
  v45 = a1[10];
  v46 = v18;
  v47 = *(a1 + 24);
  v19 = a1[7];
  v41 = a1[6];
  v42 = v19;
  v20 = a1[9];
  v43 = a1[8];
  v44 = v20;
  v21 = a1[3];
  v37 = a1[2];
  v38 = v21;
  v22 = a1[5];
  v39 = a1[4];
  v40 = v22;
  v23 = a1[1];
  v35 = *a1;
  v36 = v23;
  v24 = sub_1C59B90AC();
  v25 = 0.0;
  if ((v24 & 1) == 0)
  {
    v25 = *v28;
  }

  v26 = -*v28;
  if ((v24 & 1) == 0)
  {
    v26 = *v28;
  }

  *&v28[0] = v10;
  if (v17)
  {
    v25 = v26;
  }

  v60[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA6A4();
  v28[6] = v57;
  v28[7] = v58;
  v29 = v59;
  v28[2] = v53;
  v28[3] = v54;
  v28[4] = v55;
  v28[5] = v56;
  v28[0] = v51;
  v28[1] = v52;
  v30 = v10;
  v31 = v11;
  v32 = v48;
  v33 = v49;
  v34 = v50;
  return (*(v14 + 8))(v28, v13);
}

void sub_1C5B61630(char a1, uint64_t a2)
{
  v5 = sub_1C5BCAC14();
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAC44();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BCAC64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - v16;
  v18 = *(v2 + 176);
  v105 = *(v2 + 160);
  v106 = v18;
  v107 = *(v2 + 192);
  v19 = *(v2 + 112);
  v101 = *(v2 + 96);
  v102 = v19;
  v20 = *(v2 + 144);
  v103 = *(v2 + 128);
  v104 = v20;
  v21 = *(v2 + 48);
  v97 = *(v2 + 32);
  v98 = v21;
  v22 = *(v2 + 80);
  v99 = *(v2 + 64);
  v100 = v22;
  v23 = *(v2 + 16);
  v95 = *v2;
  v96 = v23;
  if ((a1 & 1) == 0)
  {
    v30 = *(v2 + 144);
    v31 = *(v2 + 176);
    v92 = *(v2 + 160);
    v93 = v31;
    v32 = *(v2 + 80);
    v33 = *(v2 + 112);
    v88 = *(v2 + 96);
    v89 = v33;
    v34 = *(v2 + 112);
    v35 = *(v2 + 144);
    v90 = *(v2 + 128);
    v91 = v35;
    v36 = *(v2 + 16);
    v37 = *(v2 + 48);
    v84 = *(v2 + 32);
    v85 = v37;
    v38 = *(v2 + 48);
    v39 = *(v2 + 80);
    v86 = *(v2 + 64);
    v87 = v39;
    v40 = *(v2 + 16);
    v82 = *v2;
    v83 = v40;
    v41 = *(v2 + 176);
    v79 = v92;
    v80 = v41;
    v75 = v88;
    v76 = v34;
    v77 = v90;
    v78 = v30;
    v71 = v84;
    v72 = v38;
    v73 = v86;
    v74 = v32;
    v94 = *(v2 + 192);
    v81 = *(v2 + 192);
    v69 = v82;
    v70 = v36;
    goto LABEL_5;
  }

  v65 = v15;
  v24 = *(v2 + 176);
  v92 = *(v2 + 160);
  v93 = v24;
  v94 = *(v2 + 192);
  v25 = *(v2 + 112);
  v88 = *(v2 + 96);
  v89 = v25;
  v26 = *(v2 + 144);
  v90 = *(v2 + 128);
  v91 = v26;
  v27 = *(v2 + 48);
  v84 = *(v2 + 32);
  v85 = v27;
  v28 = *(v2 + 80);
  v86 = *(v2 + 64);
  v87 = v28;
  v29 = *(v2 + 16);
  v82 = *v2;
  v83 = v29;
  if (sub_1C5B61CD8())
  {
    v92 = v105;
    v93 = v106;
    v88 = v101;
    v89 = v102;
    v90 = v103;
    v91 = v104;
    v84 = v97;
    v85 = v98;
    v86 = v99;
    v87 = v100;
    v82 = v95;
    v83 = v96;
    v79 = v105;
    v80 = v106;
    v75 = v101;
    v76 = v102;
    v77 = v103;
    v78 = v104;
    v71 = v97;
    v72 = v98;
    v73 = v99;
    v74 = v100;
    v94 = v107;
    v81 = v107;
    v69 = v95;
    v70 = v96;
LABEL_5:
    v42 = sub_1C5B61E0C();
    sub_1C5B61318(v42);

    return;
  }

  v92 = v105;
  v93 = v106;
  v88 = v101;
  v89 = v102;
  v90 = v103;
  v91 = v104;
  v84 = v97;
  v85 = v98;
  v86 = v99;
  v87 = v100;
  v82 = v95;
  v83 = v96;
  v79 = v105;
  v80 = v106;
  v75 = v101;
  v76 = v102;
  v77 = v103;
  v78 = v104;
  v71 = v97;
  v72 = v98;
  v73 = v99;
  v74 = v100;
  v94 = v107;
  v81 = v107;
  v69 = v95;
  v70 = v96;
  v43 = sub_1C5B61EC0();
  sub_1C5B61318(v43);

  sub_1C5929CA0();
  v64 = sub_1C5BCB5A4();
  sub_1C5BCAC54();
  v82 = __PAIR128__(v103, *(&v102 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  v61 = v17;
  sub_1C5BCAC84();
  v44 = *(v11 + 8);
  v62 = v11 + 8;
  v63 = v44;
  v44(v13, v65);
  v45 = swift_allocObject();
  v46 = *(a2 + 32);
  *(v45 + 16) = *(a2 + 16);
  *(v45 + 32) = v46;
  v47 = v106;
  *(v45 + 208) = v105;
  *(v45 + 224) = v47;
  *(v45 + 240) = v107;
  v48 = v102;
  *(v45 + 144) = v101;
  *(v45 + 160) = v48;
  v49 = v104;
  *(v45 + 176) = v103;
  *(v45 + 192) = v49;
  v50 = v98;
  *(v45 + 80) = v97;
  *(v45 + 96) = v50;
  v51 = v100;
  *(v45 + 112) = v99;
  *(v45 + 128) = v51;
  v52 = v96;
  *(v45 + 48) = v95;
  *(v45 + 64) = v52;
  *&v71 = sub_1C5B666A0;
  *(&v71 + 1) = v45;
  *&v69 = MEMORY[0x1E69E9820];
  *(&v69 + 1) = 1107296256;
  *&v70 = sub_1C596D09C;
  *(&v70 + 1) = &block_descriptor_41;
  v60 = _Block_copy(&v69);
  (*(*(a2 - 8) + 16))(&v82, &v95, a2);

  v53 = v66;
  sub_1C5BCAC34();
  *&v82 = MEMORY[0x1E69E7CC0];
  sub_1C5B66460(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  v54 = v67;
  v55 = v68;
  v59 = v8;
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
  sub_1C5BCB8F4();
  v57 = v60;
  v56 = v61;
  v58 = v64;
  MEMORY[0x1C694F7C0](v61, v53, v7, v60);
  _Block_release(v57);

  (*(v55 + 8))(v7, v5);
  (*(v54 + 8))(v53, v59);
  v63(v56, v65);
}

BOOL sub_1C5B61CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  if (fabs(v1) <= fabs(v1) * 0.07)
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  return fabs(v1) * 0.93 <= fabs(v1);
}

uint64_t sub_1C5B61E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  sub_1C5BCAA84();
  sub_1C5BCAAC4();

  v0 = sub_1C5BCAA94();

  return v0;
}

uint64_t sub_1C5B61EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  sub_1C5BCAA84();
  v0 = sub_1C5BCAAC4();

  return v0;
}

double sub_1C5B61F58(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[9];
  v6 = a1[11];
  v43 = a1[10];
  v44 = v6;
  v7 = a1[5];
  v8 = a1[7];
  v39 = a1[6];
  v40 = v8;
  v9 = a1[7];
  v10 = a1[9];
  v41 = a1[8];
  v42 = v10;
  v11 = a1[1];
  v12 = a1[3];
  v35 = a1[2];
  v36 = v12;
  v13 = a1[3];
  v14 = a1[5];
  v37 = a1[4];
  v38 = v14;
  v15 = a1[1];
  v33 = *a1;
  v34 = v15;
  v16 = a1[11];
  v30 = v43;
  v31 = v16;
  v26 = v39;
  v27 = v9;
  v28 = v41;
  v29 = v5;
  v22 = v35;
  v23 = v13;
  v24 = v37;
  v25 = v7;
  v45 = *(a1 + 24);
  v32 = *(a1 + 24);
  v20 = v33;
  v21 = v11;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  type metadata accessor for SlideCarousel(0, v19);
  v17 = sub_1C5B61E0C();
  sub_1C5B61318(v17);

  return result;
}

double sub_1C5B62030()
{
  v0 = sub_1C5BCAAE4();
  sub_1C5B61318(v0);

  return result;
}

uint64_t SlideCarousel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF0, &qword_1C5BEEA98);
  *&v66 = *(a1 + 24);
  v4 = sub_1C5BCB144();
  *&v67 = *(a1 + 16);
  v5 = a1;
  v68 = a1;
  v6 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  *(&v65 + 1) = *(v5 + 40);
  *&v94 = v4;
  *(&v94 + 1) = v66;
  *&v95 = v6;
  *(&v95 + 1) = WitnessTable;
  *&v96 = *(&v65 + 1);
  sub_1C5BCA8C4();
  *&v65 = *(v5 + 32);
  v93 = v65;
  v92 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCA904();
  swift_getWitnessTable();
  sub_1C5BC9A84();
  sub_1C5BC8AB4();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF8, &qword_1C5BEEAA0);
  sub_1C5BC8AB4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198F00, &qword_1C5BEEAA8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x1E697E5D8];
  v8 = MEMORY[0x1E697E858];
  v9 = swift_getWitnessTable();
  v64 = sub_1C5924F54(&qword_1EC198F08, &qword_1EC198EF8, &qword_1C5BEEAA0, MEMORY[0x1E697F940]);
  v88 = v9;
  v89 = v64;
  v62 = v8;
  v10 = swift_getWitnessTable();
  v63 = sub_1C5924F54(&qword_1EC198F10, &qword_1EC198F00, &qword_1C5BEEAA8, MEMORY[0x1E6980620]);
  v86 = v10;
  v87 = v63;
  v84 = swift_getWitnessTable();
  v85 = sub_1C5B62B8C();
  v82 = swift_getWitnessTable();
  v83 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EC198F20, &qword_1EC198EF0, &qword_1C5BEEA98, MEMORY[0x1E695BD38]);
  swift_getOpaqueTypeConformance2();
  v11 = sub_1C5BC8BB4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198F28, &unk_1C5BEEAB0);
  v13 = swift_getWitnessTable();
  v14 = sub_1C5924F54(qword_1EC198F30, &qword_1EC198F28, &unk_1C5BEEAB0, MEMORY[0x1E697E238]);
  swift_getOpaqueTypeMetadata2();
  *&v94 = v11;
  *(&v94 + 1) = v12;
  *&v95 = v13;
  *(&v95 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_1C5BC81E4();
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v56 = sub_1C5BC8AB4();
  v18 = sub_1C5BC8AB4();
  v59 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = sub_1C5BC8AB4();
  v60 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v53 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40, &qword_1C5BD4070);
  v23 = sub_1C5BC8AB4();
  v61 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v58 = &v53 - v26;
  v27 = v2[11];
  v104 = v2[10];
  v105 = v27;
  v106 = *(v2 + 24);
  v28 = v2[7];
  v100 = v2[6];
  v101 = v28;
  v29 = v2[9];
  v102 = v2[8];
  v103 = v29;
  v30 = v2[3];
  v96 = v2[2];
  v97 = v30;
  v31 = v2[5];
  v98 = v2[4];
  v99 = v31;
  v32 = v2[1];
  v94 = *v2;
  v95 = v32;
  sub_1C5BC9854();
  *&v33 = v67;
  *(&v33 + 1) = v66;
  v66 = v65;
  v67 = v33;
  v70 = v33;
  v71 = v65;
  v72 = &v94;
  sub_1C5BC81F4();
  v34 = swift_allocObject();
  v35 = v66;
  *(v34 + 16) = v67;
  *(v34 + 32) = v35;
  v36 = v105;
  *(v34 + 208) = v104;
  *(v34 + 224) = v36;
  *(v34 + 240) = v106;
  v37 = v101;
  *(v34 + 144) = v100;
  *(v34 + 160) = v37;
  v38 = v103;
  *(v34 + 176) = v102;
  *(v34 + 192) = v38;
  v39 = v97;
  *(v34 + 80) = v96;
  *(v34 + 96) = v39;
  v40 = v99;
  *(v34 + 112) = v98;
  *(v34 + 128) = v40;
  v41 = v95;
  v42 = v68;
  *(v34 + 48) = v94;
  *(v34 + 64) = v41;
  (*(*(v42 - 8) + 16))(v81, &v94);
  v43 = swift_getWitnessTable();
  sub_1C5B64944(sub_1C5B65BE0, v34, v43, v20);

  (*(v57 + 8))(v17, v15);
  sub_1C5BCAA54();
  v79 = v43;
  v80 = v64;
  v77 = swift_getWitnessTable();
  v78 = v63;
  v52 = swift_getWitnessTable();
  v44 = v54;
  sub_1C5BCA244();
  (*(v59 + 8))(v20, v18);
  swift_getKeyPath(byte_1C5BEEAC0);
  v81[0] = 0;
  v75 = v52;
  v76 = MEMORY[0x1E697EBF8];
  v45 = swift_getWitnessTable();
  v46 = v55;
  sub_1C5BC9DF4();

  (*(v60 + 8))(v44, v21);
  v47 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40, &qword_1C5BD4070, MEMORY[0x1E6980A18]);
  v73 = v45;
  v74 = v47;
  v48 = swift_getWitnessTable();
  v49 = v58;
  sub_1C593EDC0(v46, v23, v48);
  v50 = *(v61 + 8);
  v50(v46, v23);
  sub_1C593EDC0(v49, v23, v48);
  return (v50)(v49, v23);
}

unint64_t sub_1C5B62B8C()
{
  result = qword_1EC198F18;
  if (!qword_1EC198F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198F18);
  }

  return result;
}

uint64_t sub_1C5B62BE0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v203 = a4;
  v204 = a5;
  v205 = a2;
  v193 = a6;
  v10 = sub_1C5BC8244();
  v191 = *(v10 - 8);
  v192 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v189 = v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198F28, &unk_1C5BEEAB0);
  v190 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v188 = v154 - v12;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EF0, &qword_1C5BEEA98);
  v187 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v186 = v154 - v13;
  v194 = a3;
  v14 = sub_1C5BCB144();
  v15 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  *&v213 = v14;
  *(&v213 + 1) = a3;
  *&v214 = v15;
  *(&v214 + 1) = WitnessTable;
  *&v215 = a5;
  sub_1C5BCA8C4();
  v237 = a4;
  v236 = swift_getWitnessTable();
  swift_getWitnessTable();
  v154[2] = sub_1C5BCA904();
  v154[1] = swift_getWitnessTable();
  v17 = sub_1C5BC9A84();
  v201 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v154[0] = v154 - v18;
  v19 = sub_1C5BC8AB4();
  v159 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v158 = v154 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF8, &qword_1C5BEEAA0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198F00, &qword_1C5BEEAA8);
  v21 = sub_1C5BC8AB4();
  v162 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v161 = v154 - v22;
  v23 = sub_1C5BC8AB4();
  v166 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v165 = v154 - v24;
  v25 = sub_1C5BC8AB4();
  v172 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v195 = v154 - v26;
  v202 = v17;
  v200 = swift_getWitnessTable();
  v234 = v200;
  v235 = MEMORY[0x1E697E5D8];
  v160 = v19;
  v27 = swift_getWitnessTable();
  v28 = sub_1C5924F54(&qword_1EC198F08, &qword_1EC198EF8, &qword_1C5BEEAA0, MEMORY[0x1E697F940]);
  v155 = v27;
  v232 = v27;
  v233 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_1C5924F54(&qword_1EC198F10, &qword_1EC198F00, &qword_1C5BEEAA8, MEMORY[0x1E6980620]);
  v230 = v29;
  v231 = v30;
  v163 = v21;
  v31 = swift_getWitnessTable();
  v32 = sub_1C5B62B8C();
  v156 = v31;
  v228 = v31;
  v229 = v32;
  v167 = v23;
  v157 = swift_getWitnessTable();
  v226 = v157;
  v227 = MEMORY[0x1E69805D0];
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x1E69E6370];
  *&v213 = v25;
  *(&v213 + 1) = MEMORY[0x1E69E6370];
  v35 = MEMORY[0x1E69E6388];
  *&v214 = v33;
  *(&v214 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v170 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v169 = v154 - v37;
  v173 = v25;
  *&v213 = v25;
  *(&v213 + 1) = v34;
  v164 = v33;
  *&v214 = v33;
  *(&v214 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v213 = OpaqueTypeMetadata2;
  *(&v213 + 1) = v34;
  *&v214 = OpaqueTypeConformance2;
  *(&v214 + 1) = v35;
  v39 = swift_getOpaqueTypeMetadata2();
  v176 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v196 = v154 - v40;
  v41 = sub_1C5924F54(&qword_1EC198F20, &qword_1EC198EF0, &qword_1C5BEEA98, MEMORY[0x1E695BD38]);
  v171 = OpaqueTypeMetadata2;
  *&v213 = OpaqueTypeMetadata2;
  *(&v213 + 1) = v34;
  v168 = OpaqueTypeConformance2;
  *&v214 = OpaqueTypeConformance2;
  *(&v214 + 1) = v35;
  v42 = swift_getOpaqueTypeConformance2();
  *&v213 = v198;
  v177 = v39;
  *(&v213 + 1) = v39;
  v174 = v42;
  v175 = v41;
  *&v214 = v41;
  *(&v214 + 1) = v42;
  v43 = sub_1C5BC8BB4();
  v184 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v197 = v154 - v44;
  v45 = swift_getWitnessTable();
  v46 = sub_1C5924F54(qword_1EC198F30, &qword_1EC198F28, &unk_1C5BEEAB0, MEMORY[0x1E697E238]);
  v185 = v43;
  *&v213 = v43;
  *(&v213 + 1) = v199;
  v180 = v46;
  v181 = v45;
  *&v214 = v45;
  *(&v214 + 1) = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v182 = *(v47 - 8);
  v183 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v178 = v154 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v179 = v154 - v50;
  v51 = v194;
  v206 = v205;
  v207 = v194;
  v52 = v203;
  v208 = v203;
  v53 = v204;
  v209 = v204;
  v210 = a1;
  sub_1C5BCAA54();
  v54 = v154[0];
  sub_1C5BC9A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198FE0, &unk_1C5BEEDC8);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C5BD4D40;
  LOBYTE(v39) = sub_1C5BC98C4();
  *(v55 + 32) = v39;
  v56 = sub_1C5BC98E4();
  *(v55 + 33) = v56;
  sub_1C5BC98D4();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() != v39)
  {
    sub_1C5BC98D4();
  }

  sub_1C5BC98D4();
  if (sub_1C5BC98D4() != v56)
  {
    sub_1C5BC98D4();
  }

  v57 = v158;
  v58 = v202;
  sub_1C5BCA2F4();
  (*(v201 + 8))(v54, v58);
  v59 = swift_allocObject();
  v60 = v205;
  *(v59 + 16) = v205;
  *(v59 + 24) = v51;
  v61 = v51;
  *(v59 + 32) = v52;
  *(v59 + 40) = v53;
  v62 = v52;
  v63 = a1[11];
  *(v59 + 208) = a1[10];
  *(v59 + 224) = v63;
  *(v59 + 240) = *(a1 + 24);
  v64 = a1[7];
  *(v59 + 144) = a1[6];
  *(v59 + 160) = v64;
  v65 = a1[9];
  *(v59 + 176) = a1[8];
  *(v59 + 192) = v65;
  v66 = a1[3];
  *(v59 + 80) = a1[2];
  *(v59 + 96) = v66;
  v67 = a1[5];
  *(v59 + 112) = a1[4];
  *(v59 + 128) = v67;
  v68 = a1[1];
  *(v59 + 48) = *a1;
  *(v59 + 64) = v68;
  *&v213 = v60;
  v69 = v60;
  *(&v213 + 1) = v51;
  *&v214 = v62;
  *(&v214 + 1) = v53;
  v201 = type metadata accessor for SlideCarousel(0, &v213);
  v70 = *(v201 - 8);
  v200 = *(v70 + 16);
  v202 = v70 + 16;
  v200(&v213, a1, v201);
  v71 = v160;
  v72 = v161;
  sub_1C5B64944(sub_1C5B664C0, v59, v155, v161);

  (*(v159 + 8))(v57, v71);
  v73 = *(a1 + 18);
  *&v213 = *(a1 + 17);
  *(&v213 + 1) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA694();
  v74 = v211[0];
  v75 = *(a1 + 20);
  *&v213 = *(a1 + 19);
  *(&v213 + 1) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198FF8, &unk_1C5BEEDE0);
  sub_1C5BCA694();
  *&v213 = v74;
  *(&v213 + 1) = v211[0];
  v76 = v165;
  v77 = v163;
  MEMORY[0x1C694E550](&v213, v163, &type metadata for SlideEffect, v156);

  (*(v162 + 8))(v72, v77);
  v78 = swift_allocObject();
  *(v78 + 16) = v69;
  *(v78 + 24) = v61;
  v79 = v69;
  v80 = v203;
  v81 = v204;
  *(v78 + 32) = v203;
  *(v78 + 40) = v81;
  v82 = a1[11];
  *(v78 + 208) = a1[10];
  *(v78 + 224) = v82;
  *(v78 + 240) = *(a1 + 24);
  v83 = a1[7];
  *(v78 + 144) = a1[6];
  *(v78 + 160) = v83;
  v84 = a1[9];
  *(v78 + 176) = a1[8];
  *(v78 + 192) = v84;
  v85 = a1[3];
  *(v78 + 80) = a1[2];
  *(v78 + 96) = v85;
  v86 = a1[5];
  *(v78 + 112) = a1[4];
  *(v78 + 128) = v86;
  v87 = a1[1];
  *(v78 + 48) = *a1;
  *(v78 + 64) = v87;
  v200(&v213, a1, v201);
  v88 = v167;
  sub_1C5BCA324();

  (*(v166 + 8))(v76, v88);
  v89 = a1[11];
  v223 = a1[10];
  v224 = v89;
  v225 = *(a1 + 24);
  v90 = a1[7];
  v219 = a1[6];
  v220 = v90;
  v91 = a1[9];
  v221 = a1[8];
  v222 = v91;
  v92 = a1[3];
  v215 = a1[2];
  v216 = v92;
  v93 = a1[5];
  v217 = a1[4];
  v218 = v93;
  v94 = a1[1];
  v213 = *a1;
  v214 = v94;
  v212 = sub_1C59B90AC() & 1;
  v95 = swift_allocObject();
  *(v95 + 16) = v79;
  v96 = v194;
  *(v95 + 24) = v194;
  *(v95 + 32) = v80;
  *(v95 + 40) = v81;
  v97 = a1[11];
  *(v95 + 208) = a1[10];
  *(v95 + 224) = v97;
  *(v95 + 240) = *(a1 + 24);
  v98 = a1[7];
  *(v95 + 144) = a1[6];
  *(v95 + 160) = v98;
  v99 = a1[9];
  *(v95 + 176) = a1[8];
  *(v95 + 192) = v99;
  v100 = a1[3];
  *(v95 + 80) = a1[2];
  *(v95 + 96) = v100;
  v101 = a1[5];
  *(v95 + 112) = a1[4];
  *(v95 + 128) = v101;
  v102 = a1[1];
  *(v95 + 48) = *a1;
  *(v95 + 64) = v102;
  v103 = v201;
  v104 = v200;
  v200(v211, a1, v201);
  v105 = v169;
  v106 = v173;
  v107 = v195;
  sub_1C5BCA344();

  (*(v172 + 8))(v107, v106);
  v108 = *(a1 + 24);
  LOBYTE(v213) = *(a1 + 184) & 1;
  *(&v213 + 1) = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA694();
  v109 = swift_allocObject();
  *(v109 + 16) = v205;
  *(v109 + 24) = v96;
  v110 = v204;
  *(v109 + 32) = v203;
  *(v109 + 40) = v110;
  v111 = a1[11];
  *(v109 + 208) = a1[10];
  *(v109 + 224) = v111;
  *(v109 + 240) = *(a1 + 24);
  v112 = a1[7];
  *(v109 + 144) = a1[6];
  *(v109 + 160) = v112;
  v113 = a1[9];
  *(v109 + 176) = a1[8];
  *(v109 + 192) = v113;
  v114 = a1[3];
  *(v109 + 80) = a1[2];
  *(v109 + 96) = v114;
  v115 = a1[5];
  *(v109 + 112) = a1[4];
  *(v109 + 128) = v115;
  v116 = a1[1];
  *(v109 + 48) = *a1;
  *(v109 + 64) = v116;
  v104(&v213, a1, v103);
  v117 = v171;
  sub_1C5BCA344();

  (*(v170 + 8))(v105, v117);
  v118 = *(a1 + 20);
  *&v213 = *(a1 + 19);
  *(&v213 + 1) = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198FF8, &unk_1C5BEEDE0);
  sub_1C5BCA694();
  *&v213 = v211[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EE8, &qword_1C5BEEA90);
  sub_1C5924F54(&qword_1EC198FE8, &qword_1EC198EE8, &qword_1C5BEEA90, MEMORY[0x1E695BF88]);
  sub_1C59AEC40();
  v119 = v186;
  sub_1C5BC80F4();

  v120 = swift_allocObject();
  v121 = v204;
  *(v120 + 16) = v205;
  *(v120 + 24) = v96;
  v122 = v203;
  *(v120 + 32) = v203;
  *(v120 + 40) = v121;
  v123 = a1[11];
  *(v120 + 208) = a1[10];
  *(v120 + 224) = v123;
  *(v120 + 240) = *(a1 + 24);
  v124 = a1[7];
  *(v120 + 144) = a1[6];
  *(v120 + 160) = v124;
  v125 = a1[9];
  *(v120 + 176) = a1[8];
  *(v120 + 192) = v125;
  v126 = a1[3];
  *(v120 + 80) = a1[2];
  *(v120 + 96) = v126;
  v127 = a1[5];
  *(v120 + 112) = a1[4];
  *(v120 + 128) = v127;
  v128 = a1[1];
  *(v120 + 48) = *a1;
  *(v120 + 64) = v128;
  v200(&v213, a1, v201);
  v129 = v198;
  v130 = v177;
  v131 = v196;
  sub_1C5BCA3D4();

  (*(v187 + 8))(v119, v129);
  (*(v176 + 8))(v131, v130);
  v132 = v189;
  sub_1C5BC8234();
  v133 = swift_allocObject();
  *(v133 + 16) = v205;
  *(v133 + 24) = v96;
  *(v133 + 32) = v122;
  *(v133 + 40) = v121;
  v134 = a1[11];
  *(v133 + 208) = a1[10];
  *(v133 + 224) = v134;
  *(v133 + 240) = *(a1 + 24);
  v135 = a1[7];
  *(v133 + 144) = a1[6];
  *(v133 + 160) = v135;
  v136 = a1[9];
  *(v133 + 176) = a1[8];
  *(v133 + 192) = v136;
  v137 = a1[3];
  *(v133 + 80) = a1[2];
  *(v133 + 96) = v137;
  v138 = a1[5];
  *(v133 + 112) = a1[4];
  *(v133 + 128) = v138;
  v139 = a1[1];
  *(v133 + 48) = *a1;
  *(v133 + 64) = v139;
  v140 = swift_allocObject();
  *(v140 + 16) = sub_1C5B665A8;
  *(v140 + 24) = v133;
  v200(&v213, a1, v201);
  v141 = v188;
  v142 = v192;
  sub_1C5BCA8D4();

  (*(v191 + 8))(v132, v142);
  sub_1C5BC8334();
  v143 = v178;
  v144 = v185;
  v145 = v199;
  v147 = v180;
  v146 = v181;
  v148 = v197;
  sub_1C5BCA0B4();
  (*(v190 + 8))(v141, v145);
  (*(v184 + 8))(v148, v144);
  *&v213 = v144;
  *(&v213 + 1) = v145;
  *&v214 = v146;
  *(&v214 + 1) = v147;
  v149 = swift_getOpaqueTypeConformance2();
  v150 = v179;
  v151 = v183;
  sub_1C593EDC0(v143, v183, v149);
  v152 = *(v182 + 8);
  v152(v143, v151);
  sub_1C593EDC0(v150, v151, v149);
  return (v152)(v150, v151);
}

uint64_t sub_1C5B6406C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a1;
  v20[1] = a6;
  v20[11] = sub_1C5BCB144();
  v20[12] = a3;
  v20[13] = sub_1C5BCB804();
  v20[14] = swift_getWitnessTable();
  v20[15] = a5;
  sub_1C5BCA8C4();
  v20[10] = a4;
  v20[9] = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1C5BCA904();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = a5;
  v20[8] = v20[0];
  sub_1C5BCA8F4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_1C593EDC0(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_1C5B642BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v11 = sub_1C5BCB144();
  v32 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  v38 = v11;
  v39 = a3;
  v40 = v32;
  v41 = WitnessTable;
  v42 = a5;
  v12 = sub_1C5BCA8C4();
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v33 = &KeyPath - v17;
  v43 = *(a1 + 32);
  v44 = v43;
  v37[0] = a2;
  v37[1] = a3;
  v37[2] = a4;
  v37[3] = a5;
  KeyPath = swift_getKeyPath(byte_1C5BEEDF0, v37, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  v19 = *(a1 + 176);
  *(v18 + 208) = *(a1 + 160);
  *(v18 + 224) = v19;
  *(v18 + 240) = *(a1 + 192);
  v20 = *(a1 + 112);
  *(v18 + 144) = *(a1 + 96);
  *(v18 + 160) = v20;
  v21 = *(a1 + 144);
  *(v18 + 176) = *(a1 + 128);
  *(v18 + 192) = v21;
  v22 = *(a1 + 48);
  *(v18 + 80) = *(a1 + 32);
  *(v18 + 96) = v22;
  v23 = *(a1 + 80);
  *(v18 + 112) = *(a1 + 64);
  *(v18 + 128) = v23;
  v24 = *(a1 + 16);
  *(v18 + 48) = *a1;
  *(v18 + 64) = v24;
  (*(*(v11 - 8) + 16))(&v38, &v44, v11);
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v25 = type metadata accessor for SlideCarousel(0, &v38);
  (*(*(v25 - 8) + 16))(&v38, a1, v25);
  v37[5] = a4;
  v30 = swift_getWitnessTable();
  sub_1C5BCA8A4();
  v37[4] = v30;
  v26 = swift_getWitnessTable();
  v27 = v33;
  sub_1C593EDC0(v14, v12, v26);
  v28 = *(v35 + 8);
  v28(v14, v12);
  sub_1C593EDC0(v27, v12, v26);
  return (v28)(v27, v12);
}

uint64_t sub_1C5B645F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C5BCB804();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  (*(a2 + 40))(a1, v13);
  v19[1] = a5;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, WitnessTable);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_1C593EDC0(v15, v8, WitnessTable);
  return (v17)(v15, v8);
}

uint64_t sub_1C5B6476C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v23 = *a1;
  v24 = a1[1];
  v25 = a1[2];
  v26 = *(a1 + 6);
  v8 = *(a1 + 7);
  v9 = *(a1 + 8);
  v19 = *(a1 + 136);
  v20 = *(a1 + 152);
  v21 = *(a1 + 168);
  v22 = *(a1 + 184);
  v15 = *(a1 + 72);
  v16 = *(a1 + 88);
  v17 = *(a1 + 104);
  v18 = *(a1 + 120);
  v10 = *(a1 + 11);
  v11 = *(a1 + 12);
  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  v12 = type metadata accessor for SlideCarousel(0, &v27);
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v27, a1, v12);
  *&v27 = v10;
  *(&v27 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA694();
  *&v27 = v8;
  *(&v27 + 1) = v9;
  v41 = a6 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA6A4();
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v8;
  v32 = v9;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  return (*(v13 + 8))(&v27, v12);
}

uint64_t sub_1C5B64944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a1;
  v17 = a2;
  v18 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF8, &qword_1C5BEEAA0);
  v6 = sub_1C5BC8AB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v21 = sub_1C5B65DB0;
  v22 = 0;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198FC8, &unk_1C5BEEDB8);
  sub_1C5924F54(&qword_1EC198FD0, &qword_1EC198FC8, &unk_1C5BEEDB8, MEMORY[0x1E697E378]);
  v10 = a4;
  sub_1C5BC9D04();
  v11 = swift_allocObject();
  v12 = v17;
  *(v11 + 16) = v16;
  *(v11 + 24) = v12;
  v13 = sub_1C5924F54(&qword_1EC198F08, &qword_1EC198EF8, &qword_1C5BEEAA0, MEMORY[0x1E697F940]);
  v19 = v10;
  v20 = v13;

  swift_getWitnessTable();
  sub_1C5B6640C();
  sub_1C5B66460(&qword_1EDA45DC0, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
  sub_1C5BCA084();

  return (*(v7 + 8))(v9, v6);
}

void sub_1C5B64BD8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[3];
  v7 = a1[5];
  v65 = a1[4];
  v66 = v7;
  *&v67 = *(a1 + 12);
  v8 = a1[1];
  v61 = *a1;
  v62 = v8;
  v63 = a1[2];
  v64 = v6;
  v9 = *(a1 + 13);
  v10 = *(a1 + 14);
  v32 = *(a1 + 168);
  v35 = *(a1 + 184);
  v26 = *(a1 + 136);
  v29 = *(a1 + 152);
  v23 = *(a1 + 120);
  *&v75 = a2;
  *(&v75 + 1) = a3;
  *&v76 = a4;
  *(&v76 + 1) = a5;
  v11 = type metadata accessor for SlideCarousel(0, &v75);
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v75, a1, v11);
  sub_1C5BCB0F4();
  *&v75 = v9;
  *(&v75 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA6A4();
  v52[4] = v65;
  v52[5] = v66;
  v52[0] = v61;
  v52[1] = v62;
  v52[2] = v63;
  v52[3] = v64;
  v54 = v9;
  v57 = v26;
  v58 = v29;
  v53 = v67;
  v55 = v10;
  v59 = v32;
  v60 = v35;
  v56 = v23;
  v14 = *(v12 + 8);
  v14(v52, v11);
  v15 = *(a1 + 14);
  *&v75 = *(a1 + 13);
  *(&v75 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA694();
  v16 = v61;
  v36 = a1[4];
  v38 = a1[5];
  v40 = a1[6];
  v42 = *(a1 + 14);
  v24 = *a1;
  v27 = a1[1];
  v30 = a1[2];
  v33 = a1[3];
  v17 = *(a1 + 15);
  v18 = *(a1 + 16);
  v43 = *(a1 + 136);
  v45 = *(a1 + 152);
  v47 = *(a1 + 168);
  v49 = *(a1 + 184);
  v13(&v75, a1, v11);
  *&v75 = v17;
  *(&v75 + 1) = v18;
  *&v61 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
  sub_1C5BCA6A4();
  v65 = v36;
  v66 = v38;
  v67 = v40;
  v68 = v42;
  v61 = v24;
  v62 = v27;
  v63 = v30;
  v64 = v33;
  v69 = v17;
  v70 = v18;
  v71 = v43;
  v72 = v45;
  v73 = v47;
  v74 = v49;
  v14(&v61, v11);
  v19 = *(a1 + 8);
  *&v75 = *(a1 + 7);
  *(&v75 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA694();
  v20 = v24;
  v48 = a1[2];
  v50 = a1[3];
  v51 = *(a1 + 8);
  v44 = *a1;
  v46 = a1[1];
  v21 = *(a1 + 9);
  v22 = *(a1 + 10);
  v37 = *(a1 + 152);
  v39 = *(a1 + 168);
  v41 = *(a1 + 184);
  v25 = *(a1 + 88);
  v28 = *(a1 + 104);
  v31 = *(a1 + 120);
  v34 = *(a1 + 136);
  v13(&v75, a1, v11);
  *&v75 = v21;
  *(&v75 + 1) = v22;
  v89[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA6A4();
  v77 = v48;
  v78 = v50;
  v79 = v51;
  v75 = v44;
  v76 = v46;
  v80 = v21;
  v81 = v22;
  v82 = v25;
  v83 = v28;
  v84 = v31;
  v88 = v41;
  v87 = v39;
  v86 = v37;
  v85 = v34;
  v14(&v75, v11);
  if (sub_1C59B90AC())
  {
    sub_1C5B61630(0, v11);
  }
}

void sub_1C5B65064(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[11];
  *&v91[32] = a1[10];
  *&v91[48] = v6;
  *&v91[64] = *(a1 + 24);
  v7 = a1[7];
  v89 = a1[6];
  v90 = v7;
  v8 = a1[9];
  *v91 = a1[8];
  *&v91[16] = v8;
  v9 = a1[3];
  v85 = a1[2];
  v86 = v9;
  v10 = a1[5];
  v87 = a1[4];
  v88 = v10;
  v11 = a1[1];
  v83 = *a1;
  v84 = v11;
  *&v57 = a2;
  *(&v57 + 1) = a3;
  *&v58 = a4;
  *(&v58 + 1) = a5;
  v12 = type metadata accessor for SlideCarousel(0, &v57);
  if (sub_1C59B90AC())
  {
    v13 = a1[11];
    *&v91[32] = a1[10];
    *&v91[48] = v13;
    *&v91[64] = *(a1 + 24);
    v14 = a1[7];
    v89 = a1[6];
    v90 = v14;
    v15 = a1[9];
    *v91 = a1[8];
    *&v91[16] = v15;
    v16 = a1[3];
    v85 = a1[2];
    v86 = v16;
    v17 = a1[5];
    v87 = a1[4];
    v88 = v17;
    v18 = a1[1];
    v83 = *a1;
    v84 = v18;
    sub_1C5B61630(1, v12);
  }

  else
  {
    v19 = a1[3];
    v80 = a1[2];
    v81 = v19;
    v82 = *(a1 + 8);
    v20 = a1[1];
    v78 = *a1;
    v79 = v20;
    v21 = *(a1 + 9);
    v22 = *(a1 + 10);
    v23 = *(a1 + 136);
    v24 = *(a1 + 168);
    v75 = *(a1 + 152);
    v76 = v24;
    v77 = *(a1 + 184);
    v25 = *(a1 + 104);
    v71 = *(a1 + 88);
    v72 = v25;
    v73 = *(a1 + 120);
    v74 = v23;
    v44 = *(a1 + 184);
    v26 = *(a1 + 24);
    v27 = *(v12 - 8);
    v28 = *(v27 + 16);
    v28(&v83, a1, v12);
    LOBYTE(v83) = v44;
    *(&v83 + 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
    sub_1C5BCA694();
    if (v57 == 1)
    {
      v29 = *(a1 + 22);
      *&v83 = *(a1 + 21);
      *(&v83 + 1) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
      sub_1C5BCA694();
      v30 = fabs(*&v57);
    }

    else
    {
      v31 = *(a1 + 8);
      *&v83 = *(a1 + 7);
      *(&v83 + 1) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
      sub_1C5BCA694();
      v32 = *&v57;
      v33 = *(a1 + 22);
      *&v83 = *(a1 + 21);
      *(&v83 + 1) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
      sub_1C5BCA694();
      v30 = v32 - fabs(*&v57);
    }

    *&v83 = v21;
    *(&v83 + 1) = v22;
    *&v57 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
    sub_1C5BCA6A4();
    v59 = v80;
    v60 = v81;
    v61 = v82;
    v57 = v78;
    v58 = v79;
    v62 = v21;
    v63 = v22;
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v70 = v77;
    v69 = v76;
    v68 = v75;
    v67 = v74;
    v34 = *(v27 + 8);
    v34(&v57, v12);
    v49 = a1[4];
    v50 = a1[5];
    v51 = a1[6];
    v52 = *(a1 + 14);
    v45 = *a1;
    v46 = a1[1];
    v47 = a1[2];
    v48 = a1[3];
    v35 = *(a1 + 15);
    v36 = *(a1 + 16);
    v55 = *(a1 + 168);
    v56 = *(a1 + 184);
    v53 = *(a1 + 136);
    v54 = *(a1 + 152);
    v37 = *(a1 + 13);
    v28(&v83, a1, v12);
    *&v83 = v37;
    *(&v83 + 1) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
    sub_1C5BCA694();
    v38 = v92;
    v39 = *(a1 + 10);
    *&v83 = *(a1 + 9);
    *(&v83 + 1) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
    sub_1C5BCA694();
    v40 = fabs(v92);
    v41 = *(a1 + 14);
    *&v83 = *(a1 + 13);
    *(&v83 + 1) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
    sub_1C5BCA694();
    v42 = v40 * v92;
    v43 = *(a1 + 8);
    *&v83 = *(a1 + 7);
    *(&v83 + 1) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
    sub_1C5BCA694();
    *&v83 = v35;
    *(&v83 + 1) = v36;
    v92 = v38 - v42 / v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118, &qword_1C5BEDD40);
    sub_1C5BCA6A4();
    v87 = v49;
    v88 = v50;
    v89 = v51;
    *&v90 = v52;
    v83 = v45;
    v84 = v46;
    v85 = v47;
    v86 = v48;
    *(&v90 + 1) = v35;
    *v91 = v36;
    *&v91[56] = v56;
    *&v91[40] = v55;
    *&v91[24] = v54;
    *&v91[8] = v53;
    v34(&v83, v12);
    sub_1C5B610A0();
  }
}