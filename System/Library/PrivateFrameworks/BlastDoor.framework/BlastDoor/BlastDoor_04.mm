unint64_t sub_214039858()
{
  result = qword_280B346B8[0];
  if (!qword_280B346B8[0])
  {
    result = swift_getWitnessTable(aQ_49, &type metadata for MediaMetadata.CodingKeys, v0, v1);
    atomic_store(result, qword_280B346B8);
  }

  return result;
}

unint64_t sub_2140398AC()
{
  result = qword_280B34BF8;
  if (!qword_280B34BF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaMetadata.LargeImageContextualInfo, &type metadata for MediaMetadata.LargeImageContextualInfo, v0, v1);
    atomic_store(result, &qword_280B34BF8);
  }

  return result;
}

unint64_t sub_214039900()
{
  result = qword_280B34C20;
  if (!qword_280B34C20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaMetadata.AppleMakerNoteCamera, &type metadata for MediaMetadata.AppleMakerNoteCamera, v0, v1);
    atomic_store(result, &qword_280B34C20);
  }

  return result;
}

uint64_t MediaMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v391 = a1;
  v369 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v2 - 8);
  v323 = v295 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v347 = v295 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v386 = v295 - v7;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FA0, &qword_2146E9DC8);
  v385 = *(v387 - 8);
  MEMORY[0x28223BE20](v387);
  v390 = v295 - v8;
  v9 = type metadata accessor for MediaMetadata(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v295 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = 0;
  v12[24] = 1;
  v13 = v10[7];
  v14 = sub_2146D8B08();
  v15 = *(*(v14 - 8) + 56);
  v383 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = &v12[v10[8]];
  *v16 = 0;
  v382 = v16;
  v16[8] = 1;
  v17 = &v12[v10[9]];
  *v17 = 0;
  v381 = v17;
  v17[8] = 1;
  v18 = &v12[v10[10]];
  *v18 = 0;
  v380 = v18;
  v18[8] = 1;
  v19 = &v12[v10[11]];
  *v19 = 0;
  v379 = v19;
  v19[8] = 1;
  v20 = &v12[v10[12]];
  *v20 = 0;
  v378 = v20;
  v20[8] = 1;
  v21 = &v12[v10[13]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v377 = v21;
  v22 = &v12[v10[14]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v376 = v22;
  v23 = &v12[v10[15]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v375 = v23;
  v24 = &v12[v10[16]];
  *v24 = 0;
  v374 = v24;
  v24[8] = 1;
  v373 = v10[17];
  v12[v373] = 2;
  v25 = &v12[v10[18]];
  *v25 = 0;
  v372 = v25;
  v25[8] = 1;
  v26 = &v12[v10[19]];
  *v26 = 0;
  v371 = v26;
  v26[8] = 1;
  v27 = &v12[v10[20]];
  *v27 = 0;
  v370 = v27;
  v27[8] = 1;
  v28 = &v12[v10[21]];
  *v28 = 0;
  v300 = v28;
  v28[8] = 1;
  v29 = &v12[v10[22]];
  *v29 = 0;
  v301 = v29;
  v29[8] = 1;
  v30 = &v12[v10[23]];
  *v30 = 0;
  v302 = v30;
  v30[8] = 1;
  v31 = &v12[v10[24]];
  *v31 = 0;
  v303 = v31;
  v31[8] = 1;
  v32 = &v12[v10[25]];
  *v32 = 0;
  v304 = v32;
  v32[8] = 1;
  v33 = &v12[v10[26]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v305 = v33;
  v34 = &v12[v10[27]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v306 = v34;
  v35 = &v12[v10[28]];
  *v35 = 0;
  v307 = v35;
  v35[8] = 1;
  v36 = &v12[v10[29]];
  *v36 = 0;
  v308 = v36;
  v36[8] = 1;
  v37 = &v12[v10[30]];
  *v37 = 0;
  v309 = v37;
  v37[8] = 1;
  v38 = &v12[v10[31]];
  *v38 = 0;
  v310 = v38;
  v38[8] = 1;
  v39 = &v12[v10[32]];
  *v39 = 0;
  v311 = v39;
  v39[8] = 1;
  v312 = v10[33];
  v12[v312] = 2;
  v313 = v10[34];
  v12[v313] = 2;
  v40 = &v12[v10[35]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v314 = v40;
  v41 = &v12[v10[36]];
  *v41 = 0;
  v315 = v41;
  v41[8] = 1;
  v42 = &v12[v10[37]];
  *v42 = 0;
  v316 = v42;
  v42[8] = 1;
  v43 = &v12[v10[38]];
  *v43 = 0;
  v317 = v43;
  v43[8] = 1;
  v44 = &v12[v10[39]];
  *v44 = 0;
  v318 = v44;
  v44[8] = 1;
  v45 = &v12[v10[40]];
  *v45 = 0;
  v319 = v45;
  v45[8] = 1;
  v46 = &v12[v10[41]];
  *v46 = 0;
  v320 = v46;
  v46[8] = 1;
  v47 = &v12[v10[42]];
  *v47 = 0;
  v321 = v47;
  v47[8] = 1;
  v48 = &v12[v10[43]];
  *v48 = 0;
  v322 = v48;
  v48[8] = 1;
  v49 = &v12[v10[44]];
  *v49 = 0;
  *(v49 + 1) = 0;
  v324 = v49;
  v50 = &v12[v10[45]];
  *v50 = 0;
  *(v50 + 1) = 0;
  v325 = v50;
  v51 = &v12[v10[46]];
  *v51 = 0;
  *(v51 + 1) = 0;
  v326 = v51;
  v327 = v10[47];
  v12[v327] = 2;
  v52 = &v12[v10[48]];
  *v52 = 0;
  v328 = v52;
  v52[8] = 1;
  v53 = &v12[v10[49]];
  *v53 = 0;
  v329 = v53;
  v53[8] = 1;
  v54 = &v12[v10[50]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v330 = v54;
  v55 = &v12[v10[51]];
  *v55 = 0;
  v331 = v55;
  v55[8] = 1;
  v56 = &v12[v10[52]];
  *v56 = 0;
  v332 = v56;
  v56[8] = 1;
  v57 = &v12[v10[53]];
  *v57 = 0;
  v333 = v57;
  v57[8] = 1;
  v58 = &v12[v10[54]];
  *v58 = 0;
  v334 = v58;
  v58[8] = 1;
  v59 = &v12[v10[55]];
  *v59 = 0;
  *(v59 + 1) = 0;
  v335 = v59;
  v336 = v10[56];
  v384 = v14;
  v15(&v12[v336], 1, 1, v14);
  v60 = &v12[v10[57]];
  *v60 = 0;
  v337 = v60;
  v60[8] = 1;
  v61 = &v12[v10[58]];
  *v61 = 0;
  v338 = v61;
  v61[8] = 1;
  v62 = &v12[v10[59]];
  *v62 = 0;
  *(v62 + 1) = 0;
  v339 = v62;
  v63 = &v12[v10[60]];
  *v63 = 0;
  *(v63 + 1) = 0;
  v340 = v63;
  v64 = &v12[v10[61]];
  *v64 = 0;
  v341 = v64;
  v64[8] = 1;
  v65 = &v12[v10[62]];
  *v65 = 0;
  *(v65 + 1) = 0;
  v342 = v65;
  v343 = v10[63];
  v12[v343] = 2;
  v66 = v10[64];
  v67 = sub_2146D8B88();
  v68 = *(*(v67 - 8) + 56);
  v345 = v66;
  v344 = v67;
  v68(&v12[v66], 1, 1);
  v69 = &v12[v10[65]];
  *v69 = 0;
  *(v69 + 1) = 0;
  v346 = v69;
  v348 = v10[66];
  v12[v348] = 2;
  v70 = &v12[v10[67]];
  *v70 = 0;
  *(v70 + 1) = 0;
  v349 = v70;
  v71 = &v12[v10[68]];
  *v71 = 0;
  v350 = v71;
  v71[8] = 1;
  v72 = &v12[v10[69]];
  *v72 = 0;
  v351 = v72;
  v72[8] = 1;
  v73 = &v12[v10[70]];
  *v73 = 0;
  v353 = v73;
  v73[8] = 1;
  v74 = &v12[v10[71]];
  *v74 = 0;
  v354 = v74;
  v74[8] = 1;
  v355 = v10[72];
  v12[v355] = 2;
  v75 = &v12[v10[73]];
  *v75 = 0;
  v356 = v75;
  v75[8] = 1;
  v76 = &v12[v10[74]];
  *v76 = 0;
  v357 = v76;
  v76[8] = 1;
  v77 = &v12[v10[75]];
  *v77 = 0;
  v358 = v77;
  v77[8] = 1;
  v78 = &v12[v10[76]];
  *v78 = 0;
  v359 = v78;
  v78[8] = 1;
  v79 = &v12[v10[77]];
  *v79 = 0;
  v360 = v79;
  v79[8] = 1;
  v361 = v10[78];
  v12[v361] = 2;
  v80 = &v12[v10[79]];
  *v80 = 0;
  v80[8] = 1;
  v362 = v10[80];
  v12[v362] = 2;
  v363 = v10[81];
  v12[v363] = 2;
  v364 = v10[82];
  v12[v364] = 2;
  v81 = &v12[v10[83]];
  *v81 = 0;
  v81[8] = 1;
  v366 = v10[84];
  v12[v366] = 7;
  v367 = v10[85];
  v12[v367] = 2;
  v82 = &v12[v10[86]];
  *v82 = 0;
  v82[8] = 1;
  v368 = v10[87];
  v12[v368] = 2;
  v365 = v10[88];
  v12[v365] = 2;
  v352 = v10[89];
  v12[v352] = 2;
  v83 = v10[90];
  v12[v83] = 2;
  v84 = &v12[v10[91]];
  *v84 = 0;
  v84[8] = 1;
  v85 = v10[92];
  v389 = v12;
  v86 = &v12[v85];
  *v86 = 0;
  *(v86 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(v391, v391[3]);
  sub_214039858();
  v87 = v388;
  sub_2146DAA08();
  if (v87)
  {
    v90 = v389;
    __swift_destroy_boxed_opaque_existential_1(v391);
    v294 = v90;
  }

  else
  {
    v88 = v386;
    v297 = v80;
    v298 = v82;
    v296 = v83;
    v299 = v84;
    v388 = v86;
    v89 = v385;
    v395 = 0;
    sub_21403B77C();
    sub_2146DA148();
    v92 = v393;
    v93 = v394;
    v94 = v389;
    *v389 = v392;
    *(v94 + 2) = v92;
    *(v94 + 24) = v93;
    LOBYTE(v392) = 1;
    v95 = sub_21403BAD8(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_2146DA148();
    v295[1] = v95;
    sub_21402EDB8(v88, v94 + v383, &qword_27C913090, &unk_2146E9DB0);
    LOBYTE(v392) = 2;
    v96 = sub_2146DA128();
    v97 = v382;
    *v382 = v96;
    *(v97 + 8) = v98 & 1;
    LOBYTE(v392) = 3;
    v99 = sub_2146DA118();
    v100 = v381;
    *v381 = v99;
    *(v100 + 8) = v101 & 1;
    LOBYTE(v392) = 4;
    v102 = sub_2146DA128();
    v103 = v380;
    *v380 = v102;
    *(v103 + 8) = v104 & 1;
    LOBYTE(v392) = 5;
    v105 = sub_2146DA138();
    v106 = v379;
    *v379 = v105;
    *(v106 + 8) = v107 & 1;
    LOBYTE(v392) = 6;
    v108 = sub_2146DA138();
    v109 = v378;
    *v378 = v108;
    *(v109 + 8) = v110 & 1;
    LOBYTE(v392) = 7;
    v111 = sub_2146DA0F8();
    v112 = v377;
    *v377 = v111;
    v112[1] = v113;
    LOBYTE(v392) = 8;
    v114 = sub_2146DA0F8();
    v115 = v376;
    *v376 = v114;
    v115[1] = v116;
    LOBYTE(v392) = 9;
    v117 = sub_2146DA0F8();
    v118 = v375;
    *v375 = v117;
    v118[1] = v119;
    LOBYTE(v392) = 10;
    v120 = sub_2146DA138();
    v121 = v374;
    *v374 = v120;
    *(v121 + 8) = v122 & 1;
    LOBYTE(v392) = 11;
    *(v389 + v373) = sub_2146DA108();
    LOBYTE(v392) = 12;
    v123 = sub_2146DA118();
    v124 = v372;
    *v372 = v123;
    *(v124 + 8) = v125 & 1;
    LOBYTE(v392) = 13;
    v126 = sub_2146DA128();
    v127 = v371;
    *v371 = v126;
    *(v127 + 8) = v128 & 1;
    LOBYTE(v392) = 14;
    v129 = sub_2146DA128();
    v130 = v370;
    *v370 = v129;
    *(v130 + 8) = v131 & 1;
    LOBYTE(v392) = 15;
    v132 = sub_2146DA118();
    v133 = v300;
    *v300 = v132;
    *(v133 + 8) = v134 & 1;
    LOBYTE(v392) = 16;
    v135 = sub_2146DA118();
    v136 = v301;
    *v301 = v135;
    *(v136 + 8) = v137 & 1;
    LOBYTE(v392) = 17;
    v138 = sub_2146DA128();
    v139 = v302;
    *v302 = v138;
    *(v139 + 8) = v140 & 1;
    LOBYTE(v392) = 18;
    v141 = sub_2146DA128();
    v142 = v303;
    *v303 = v141;
    *(v142 + 8) = v143 & 1;
    LOBYTE(v392) = 19;
    v144 = sub_2146DA118();
    v145 = v304;
    *v304 = v144;
    *(v145 + 8) = v146 & 1;
    LOBYTE(v392) = 20;
    v147 = sub_2146DA0F8();
    v148 = v305;
    *v305 = v147;
    v148[1] = v149;
    LOBYTE(v392) = 21;
    v150 = sub_2146DA0F8();
    v151 = v306;
    *v306 = v150;
    v151[1] = v152;
    LOBYTE(v392) = 22;
    v153 = sub_2146DA128();
    v154 = v307;
    *v307 = v153;
    *(v154 + 8) = v155 & 1;
    LOBYTE(v392) = 23;
    v156 = sub_2146DA128();
    v157 = v308;
    *v308 = v156;
    *(v157 + 8) = v158 & 1;
    LOBYTE(v392) = 24;
    v159 = sub_2146DA128();
    v160 = v309;
    *v309 = v159;
    *(v160 + 8) = v161 & 1;
    LOBYTE(v392) = 25;
    v162 = sub_2146DA128();
    v163 = v310;
    *v310 = v162;
    *(v163 + 8) = v164 & 1;
    LOBYTE(v392) = 26;
    v165 = sub_2146DA118();
    v166 = v311;
    *v311 = v165;
    *(v166 + 8) = v167 & 1;
    LOBYTE(v392) = 27;
    *(v389 + v312) = sub_2146DA108();
    LOBYTE(v392) = 28;
    *(v389 + v313) = sub_2146DA108();
    LOBYTE(v392) = 29;
    v168 = sub_2146DA0F8();
    v169 = v314;
    *v314 = v168;
    v169[1] = v170;
    LOBYTE(v392) = 30;
    v171 = sub_2146DA118();
    v172 = v315;
    *v315 = v171;
    *(v172 + 8) = v173 & 1;
    LOBYTE(v392) = 31;
    v174 = sub_2146DA138();
    v175 = v316;
    *v316 = v174;
    *(v175 + 8) = v176 & 1;
    LOBYTE(v392) = 32;
    v177 = sub_2146DA118();
    v178 = v317;
    *v317 = v177;
    *(v178 + 8) = v179 & 1;
    LOBYTE(v392) = 33;
    v180 = sub_2146DA118();
    v181 = v318;
    *v318 = v180;
    *(v181 + 8) = v182 & 1;
    LOBYTE(v392) = 34;
    v183 = sub_2146DA118();
    v184 = v319;
    *v319 = v183;
    *(v184 + 8) = v185 & 1;
    LOBYTE(v392) = 35;
    v186 = sub_2146DA118();
    v187 = v320;
    *v320 = v186;
    *(v187 + 8) = v188 & 1;
    LOBYTE(v392) = 36;
    v189 = sub_2146DA118();
    v190 = v321;
    *v321 = v189;
    *(v190 + 8) = v191 & 1;
    LOBYTE(v392) = 37;
    v192 = sub_2146DA118();
    v193 = v322;
    *v322 = v192;
    *(v193 + 8) = v194 & 1;
    LOBYTE(v392) = 38;
    v195 = sub_2146DA0F8();
    v196 = v324;
    *v324 = v195;
    v196[1] = v197;
    LOBYTE(v392) = 39;
    v198 = sub_2146DA0F8();
    v199 = v325;
    *v325 = v198;
    v199[1] = v200;
    LOBYTE(v392) = 40;
    v201 = sub_2146DA0F8();
    v202 = v326;
    *v326 = v201;
    v202[1] = v203;
    LOBYTE(v392) = 41;
    *(v389 + v327) = sub_2146DA108();
    LOBYTE(v392) = 42;
    v204 = sub_2146DA118();
    v205 = v328;
    *v328 = v204;
    *(v205 + 8) = v206 & 1;
    LOBYTE(v392) = 43;
    v207 = sub_2146DA118();
    v208 = v329;
    *v329 = v207;
    *(v208 + 8) = v209 & 1;
    LOBYTE(v392) = 44;
    v210 = sub_2146DA0F8();
    v211 = v330;
    *v330 = v210;
    v211[1] = v212;
    LOBYTE(v392) = 45;
    v213 = sub_2146DA118();
    v214 = v331;
    *v331 = v213;
    *(v214 + 8) = v215 & 1;
    LOBYTE(v392) = 46;
    v216 = sub_2146DA118();
    v217 = v332;
    *v332 = v216;
    *(v217 + 8) = v218 & 1;
    LOBYTE(v392) = 47;
    v219 = sub_2146DA118();
    v220 = v333;
    *v333 = v219;
    *(v220 + 8) = v221 & 1;
    LOBYTE(v392) = 48;
    v222 = sub_2146DA118();
    v223 = v334;
    *v334 = v222;
    *(v223 + 8) = v224 & 1;
    LOBYTE(v392) = 49;
    v225 = sub_2146DA0F8();
    v226 = v335;
    *v335 = v225;
    v226[1] = v227;
    LOBYTE(v392) = 50;
    sub_2146DA148();
    sub_21402EDB8(v347, v389 + v336, &qword_27C913090, &unk_2146E9DB0);
    LOBYTE(v392) = 51;
    v228 = sub_2146DA118();
    v229 = v337;
    *v337 = v228;
    *(v229 + 8) = v230 & 1;
    LOBYTE(v392) = 52;
    v231 = sub_2146DA118();
    v232 = v338;
    *v338 = v231;
    *(v232 + 8) = v233 & 1;
    LOBYTE(v392) = 53;
    v234 = sub_2146DA0F8();
    v235 = v339;
    *v339 = v234;
    v235[1] = v236;
    LOBYTE(v392) = 54;
    v237 = sub_2146DA0F8();
    v238 = v340;
    *v340 = v237;
    v238[1] = v239;
    LOBYTE(v392) = 55;
    v240 = sub_2146DA138();
    v241 = v341;
    *v341 = v240;
    *(v241 + 8) = v242 & 1;
    LOBYTE(v392) = 56;
    v243 = sub_2146DA0F8();
    v244 = v342;
    *v342 = v243;
    v244[1] = v245;
    LOBYTE(v392) = 57;
    *(v389 + v343) = sub_2146DA108();
    LOBYTE(v392) = 58;
    sub_21403BAD8(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2146DA148();
    sub_21402EDB8(v323, v389 + v345, &unk_27C904F30, &unk_2146EFA20);
    LOBYTE(v392) = 59;
    v246 = sub_2146DA0F8();
    v247 = v346;
    *v346 = v246;
    v247[1] = v248;
    LOBYTE(v392) = 60;
    *(v389 + v348) = sub_2146DA108();
    LOBYTE(v392) = 61;
    v249 = sub_2146DA0F8();
    v250 = v349;
    *v349 = v249;
    v250[1] = v251;
    LOBYTE(v392) = 62;
    v252 = sub_2146DA118();
    v253 = v350;
    *v350 = v252;
    *(v253 + 8) = v254 & 1;
    LOBYTE(v392) = 63;
    v255 = sub_2146DA118();
    v256 = v351;
    *v351 = v255;
    *(v256 + 8) = v257 & 1;
    LOBYTE(v392) = 64;
    v258 = sub_2146DA128();
    v259 = v353;
    *v353 = v258;
    *(v259 + 8) = v260 & 1;
    LOBYTE(v392) = 65;
    v261 = sub_2146DA128();
    v262 = v354;
    *v354 = v261;
    *(v262 + 8) = v263 & 1;
    LOBYTE(v392) = 66;
    *(v389 + v355) = sub_2146DA108();
    LOBYTE(v392) = 67;
    v264 = sub_2146DA118();
    v265 = v356;
    *v356 = v264;
    *(v265 + 8) = v266 & 1;
    LOBYTE(v392) = 68;
    v267 = sub_2146DA118();
    v268 = v357;
    *v357 = v267;
    *(v268 + 8) = v269 & 1;
    LOBYTE(v392) = 69;
    v270 = sub_2146DA118();
    v271 = v358;
    *v358 = v270;
    *(v271 + 8) = v272 & 1;
    LOBYTE(v392) = 70;
    v273 = sub_2146DA118();
    v274 = v359;
    *v359 = v273;
    *(v274 + 8) = v275 & 1;
    LOBYTE(v392) = 71;
    v276 = sub_2146DA128();
    v277 = v360;
    *v360 = v276;
    *(v277 + 8) = v278 & 1;
    LOBYTE(v392) = 72;
    *(v389 + v361) = sub_2146DA108();
    LOBYTE(v392) = 73;
    v279 = sub_2146DA118();
    v280 = v297;
    *v297 = v279;
    *(v280 + 8) = v281 & 1;
    LOBYTE(v392) = 74;
    *(v389 + v362) = sub_2146DA108();
    LOBYTE(v392) = 75;
    *(v389 + v363) = sub_2146DA108();
    LOBYTE(v392) = 76;
    *(v389 + v364) = sub_2146DA108();
    LOBYTE(v392) = 77;
    *v81 = sub_2146DA138();
    v81[8] = v282 & 1;
    v395 = 78;
    sub_21403B7D0();
    sub_2146DA148();
    *(v389 + v366) = v392;
    LOBYTE(v392) = 79;
    *(v389 + v367) = sub_2146DA108();
    LOBYTE(v392) = 80;
    v283 = sub_2146DA118();
    v284 = v298;
    *v298 = v283;
    *(v284 + 8) = v285 & 1;
    LOBYTE(v392) = 81;
    *(v389 + v368) = sub_2146DA108();
    LOBYTE(v392) = 82;
    *(v389 + v365) = sub_2146DA108();
    LOBYTE(v392) = 83;
    *(v389 + v352) = sub_2146DA108();
    LOBYTE(v392) = 84;
    *(v389 + v296) = sub_2146DA108();
    LOBYTE(v392) = 85;
    v286 = sub_2146DA118();
    v287 = v299;
    *v299 = v286;
    *(v287 + 8) = v288 & 1;
    LOBYTE(v392) = 86;
    v289 = sub_2146DA0F8();
    v291 = v290;
    (*(v89 + 8))(v390, v387);
    v292 = v388;
    v293 = v389;
    *v388 = v289;
    v292[1] = v291;
    sub_21403B824(v293, v369);
    __swift_destroy_boxed_opaque_existential_1(v391);
    v294 = v293;
  }

  return sub_21403B720(v294);
}

uint64_t sub_21403B720(uint64_t a1)
{
  v2 = type metadata accessor for MediaMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21403B77C()
{
  result = qword_280B34BF0;
  if (!qword_280B34BF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaMetadata.LargeImageContextualInfo, &type metadata for MediaMetadata.LargeImageContextualInfo, v0, v1);
    atomic_store(result, &qword_280B34BF0);
  }

  return result;
}

unint64_t sub_21403B7D0()
{
  result = qword_280B34C18;
  if (!qword_280B34C18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaMetadata.AppleMakerNoteCamera, &type metadata for MediaMetadata.AppleMakerNoteCamera, v0, v1);
    atomic_store(result, &qword_280B34C18);
  }

  return result;
}

uint64_t sub_21403B824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21403B8C8()
{
  result = qword_27C903FA8;
  if (!qword_27C903FA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaMetadata.AppleMakerNoteCamera, &type metadata for MediaMetadata.AppleMakerNoteCamera, v0, v1);
    atomic_store(result, &qword_27C903FA8);
  }

  return result;
}

unint64_t sub_21403B91C(uint64_t a1)
{
  *(a1 + 8) = sub_21403B7D0();
  result = sub_214039900();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21403B950()
{
  result = qword_280B34678;
  if (!qword_280B34678)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaMetadata.Context, &type metadata for MediaMetadata.Context, v0, v1);
    atomic_store(result, &qword_280B34678);
  }

  return result;
}

unint64_t sub_21403B9A8()
{
  result = qword_280B34680;
  if (!qword_280B34680)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaMetadata.Context, &type metadata for MediaMetadata.Context, v0, v1);
    atomic_store(result, &qword_280B34680);
  }

  return result;
}

uint64_t sub_21403B9FC(uint64_t a1)
{
  result = sub_21403BAD8(&qword_280B34668, type metadata accessor for MediaMetadata, protocol conformance descriptor for MediaMetadata);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21403BA54(uint64_t a1)
{
  *(a1 + 8) = sub_21403BAD8(&qword_280B34BE8, type metadata accessor for MediaMetadata, protocol conformance descriptor for MediaMetadata);
  result = sub_21403BAD8(&qword_280B34670, type metadata accessor for MediaMetadata, protocol conformance descriptor for MediaMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21403BAD8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21403BB48(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34E48, &type metadata for MediaMetadata.LargeImageContextualInfo);
  if (v1 <= 0x3F)
  {
    sub_21403BE74(319, &qword_280B35230, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BC8, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BD0, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BB8, MEMORY[0x277D83E88]);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B34BD8, MEMORY[0x277D839B0]);
              if (v7 <= 0x3F)
              {
                sub_21403BE74(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
                if (v8 <= 0x3F)
                {
                  sub_21403BEC8(319, &qword_280B34C10, &type metadata for MediaMetadata.AppleMakerNoteCamera);
                  if (v9 <= 0x3F)
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

void sub_21403BE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21403BEC8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ValidatorContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for MediaMetadata.AppleMakerNoteCamera(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaMetadata.AppleMakerNoteCamera(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAA)
  {
    goto LABEL_17;
  }

  if (a2 + 86 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 86) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 86;
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

      return (*a1 | (v4 << 8)) - 86;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 86;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x57;
  v8 = v6 - 87;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 86 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 86) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAA)
  {
    v4 = 0;
  }

  if (a2 > 0xA9)
  {
    v5 = ((a2 - 170) >> 8) + 1;
    *result = a2 + 86;
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
    *result = a2 + 86;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaMetadata.Context.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MediaMetadata.Context.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21403C370()
{
  result = qword_27C903FB0;
  if (!qword_27C903FB0)
  {
    result = swift_getWitnessTable(byte_2146EA440, &type metadata for MediaMetadata.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C903FB0);
  }

  return result;
}

unint64_t sub_21403C3C8()
{
  result = qword_27C903FB8;
  if (!qword_27C903FB8)
  {
    result = swift_getWitnessTable(byte_2146EA4F8, &type metadata for MediaMetadata.LargeImageContextualInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C903FB8);
  }

  return result;
}

unint64_t sub_21403C420()
{
  result = qword_27C903FC0;
  if (!qword_27C903FC0)
  {
    result = swift_getWitnessTable(byte_2146EA5B0, &type metadata for MediaMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C903FC0);
  }

  return result;
}

unint64_t sub_21403C478()
{
  result = qword_280B34C28;
  if (!qword_280B34C28)
  {
    result = swift_getWitnessTable(byte_2146EA520, &type metadata for MediaMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34C28);
  }

  return result;
}

unint64_t sub_21403C4D0()
{
  result = qword_280B346B0;
  if (!qword_280B346B0)
  {
    result = swift_getWitnessTable(byte_2146EA548, &type metadata for MediaMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B346B0);
  }

  return result;
}

unint64_t sub_21403C528()
{
  result = qword_280B34C00;
  if (!qword_280B34C00)
  {
    result = swift_getWitnessTable(a9_19, &type metadata for MediaMetadata.LargeImageContextualInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34C00);
  }

  return result;
}

unint64_t sub_21403C580()
{
  result = qword_280B346A0;
  if (!qword_280B346A0)
  {
    result = swift_getWitnessTable(aI_65, &type metadata for MediaMetadata.LargeImageContextualInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B346A0);
  }

  return result;
}

unint64_t sub_21403C5D8()
{
  result = qword_280B34688;
  if (!qword_280B34688)
  {
    result = swift_getWitnessTable(byte_2146EA3B0, &type metadata for MediaMetadata.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34688);
  }

  return result;
}

unint64_t sub_21403C630()
{
  result = qword_280B34690;
  if (!qword_280B34690)
  {
    result = swift_getWitnessTable(byte_2146EA3D8, &type metadata for MediaMetadata.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34690);
  }

  return result;
}

uint64_t sub_21403C684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469576C65786970 && a2 == 0xEA00000000006874;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6965486C65786970 && a2 == 0xEB00000000746867 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942726566667562 && a2 == 0xEE00657A69536574)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21403C7B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x800000021478A3F0 == a2;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F7A656D6974 && a2 == 0xEE0074657366664FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021478A410 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6569724F776172 && a2 == 0xEE006E6F69746174 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C65786950776172 && a2 == 0xED00006874646957 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C65786950776172 && a2 == 0xEE00746867696548 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65646F4D736E656CLL && a2 == 0xE90000000000006CLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656B614D736E656CLL && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4E656C69666F7270 && a2 == 0xEB00000000656D61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEF7367616C46676ELL || (sub_2146DA6A8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021478A430 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6572757472657061 && a2 == 0xED000065756C6156 || (sub_2146DA6A8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478A450 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6873616C66 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E654C6C61636F66 && a2 == 0xEB00000000687467 || (sub_2146DA6A8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021478A470 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E697461526F7369 && a2 == 0xEE0065756C615667 || (sub_2146DA6A8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x676E69726574656DLL && a2 == 0xEC00000065646F4DLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x5372657474756873 && a2 == 0xEC00000064656570 || (sub_2146DA6A8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 1701536109 && a2 == 0xE400000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6C61426574696877 && a2 == 0xEC00000065636E61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x756F53746867696CLL && a2 == 0xEB00000000656372 || (sub_2146DA6A8() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021478A490 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478A4B0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6E696147726468 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6147524448736168 && a2 == 0xED000070614D6E69 || (sub_2146DA6A8() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000021478A4D0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021478A4F0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x79616C6544666967 && a2 == 0xEC000000656D6954 || (sub_2146DA6A8() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A510 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000021478A530 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000020 && 0x800000021478A550 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000020 && 0x800000021478A580 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021478A5B0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x6974617275447661 && a2 == 0xEA00000000006E6FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x5350467661 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478A5E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x4D65727574706163 && a2 == 0xEB0000000065646FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x4D6F656469567369 && a2 == 0xEE00656761746E6FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x7365526F72507369 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021478A600 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A620 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000021478A640 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x6465657053737067 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0x6465657053737067 && a2 == 0xEB00000000666552 || (sub_2146DA6A8() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x73656D6954737067 && a2 == 0xEC000000706D6174 || (sub_2146DA6A8() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021478A660 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0x7269446567616D69 && a2 == 0xEE006E6F69746365 || (sub_2146DA6A8() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478A680 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021478A6A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021478A6C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0x426F746F68507369 && a2 == 0xEC00000068746F6FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0x6975557473727562 && a2 == 0xE900000000000064 || (sub_2146DA6A8() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x6D6D6F4372657375 && a2 == 0xEB00000000746E65 || (sub_2146DA6A8() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A6E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000021478A700 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A720 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021478A740 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000021478A760 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A780 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0x7472616D53736168 && a2 == 0xED0000656C797453 || (sub_2146DA6A8() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021478A7A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A7C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478A7E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0x7974537472616D73 && a2 == 0xEE0074736143656CLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000021478A800 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A820 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0xD000000000000018 && 0x800000021478A840 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0x5244487369 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0x61474F5349736168 && a2 == 0xED000070614D6E69 || (sub_2146DA6A8() & 1) != 0)
  {

    return 75;
  }

  else if (a1 == 0x74616D696E417369 && a2 == 0xEF6567616D496465 || (sub_2146DA6A8() & 1) != 0)
  {

    return 76;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A860 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 77;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021478A880 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 78;
  }

  else if (a1 == 0x73616C4666697865 && a2 == 0xEE00646572694668 || (sub_2146DA6A8() & 1) != 0)
  {

    return 79;
  }

  else if (a1 == 0xD000000000000018 && 0x800000021478A8A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 80;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021478A8C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 81;
  }

  else if (a1 == 0x6974617053736168 && a2 == 0xEF6F696475416C61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 82;
  }

  else if (a1 == 0x6D6568636C417369 && a2 == 0xEB00000000747369 || (sub_2146DA6A8() & 1) != 0)
  {

    return 83;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021478A8E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 84;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021478A900 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 85;
  }

  else if (a1 == 0x6465724343545049 && a2 == 0xEA00000000007469)
  {

    return 86;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 86;
    }

    else
    {
      return 87;
    }
  }
}

unint64_t sub_21403E260()
{
  result = qword_280B346A8;
  if (!qword_280B346A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaMetadata.AppleMakerNoteCamera, &type metadata for MediaMetadata.AppleMakerNoteCamera, v0, v1);
    atomic_store(result, &qword_280B346A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MachPort(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MachPort(uint64_t result, int a2, int a3)
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

uint64_t MBDBrandInfo.bridgedToObjectiveC.getter()
{
  MBDBrandInfo.dictionaryRepresentation.getter();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t MBDBrandInfo.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[7];
  v6 = v0[11];
  v62 = v0[10];
  v63 = v0[14];
  v7 = v0[16];
  v58 = v0[13];
  v59 = v0[15];
  v64 = v0[21];
  v65 = v0[20];
  v74 = v0[25];
  v75 = v0[30];
  v77 = v0[26];
  v78 = v0[31];
  v76 = v0[35];
  v8 = v0[40];
  v79 = v0[36];
  v80 = v0[41];
  v66 = v0[46];
  v67 = v0[45];
  v68 = v0[51];
  v69 = v0[50];
  v70 = v0[54];
  v71 = v0[58];
  v60 = v0[53];
  v61 = v0[60];
  v72 = v0[57];
  v73 = v0[61];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 32) = 0x495255646E617262;
  *(inited + 16) = xmmword_2146EA700;
  v10 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 72) = v10;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  if (!v3
    || ((v11 = inited, *(inited + 96) = v4, *(inited + 104) = v3, *(inited + 120) = v10, *(inited + 128) = 0x69726F6765746163, *(inited + 136) = 0xEA00000000007365, !v5) ? (v13 = 0, v12 = 0, *(v11 + 152) = 0, *(v11 + 160) = 0) : (v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0), v13 = v5),
        (*(v11 + 144) = v13, *(v11 + 168) = v12, *(v11 + 176) = 0xD000000000000012, *(v11 + 184) = 0x8000000214785DF0, v6 == 1)
     || (!v6 ? (v15 = 0, v16 = 0, v14 = 0, *(v11 + 208) = 0) : (v14 = MEMORY[0x277D837D0], v15 = v62, v16 = v6), (*(v11 + 192) = v15, *(v11 + 200) = v16, *(v11 + 216) = v14, *(v11 + 224) = 0xD00000000000001ALL, *(v11 + 232) = 0x8000000214785E10, !v63) ? (v19 = 0, v18 = 0, v17 = 0, *(v11 + 256) = 0) : (v17 = MEMORY[0x277D837D0], v18 = v63, v19 = v58), (*(v11 + 240) = v19, *(v11 + 248) = v18, *(v11 + 264) = v17, *(v11 + 272) = 0xD00000000000001CLL, *(v11 + 280) = 0x8000000214785E30, !v7) ? (v21 = 0, v20 = 0, *(v11 + 304) = 0) : (v20 = MEMORY[0x277D837D0], v21 = v59), (*(v11 + 288) = v21, *(v11 + 296) = v7, *(v11 + 312) = v20, *(v11 + 320) = 0x6966697265567369, *(v11 + 328) = 0xEA00000000006465, , , , sub_213FDC9D0(v62, v6), , , v22 = sub_2146D9988(), v23 = sub_21403EBDC(), *(v11 + 336) = v22, *(v11 + 360) = v23, *(v11 + 368) = 0xD000000000000014, *(v11 + 376) = 0x8000000214785E60, v64 == 1) || (!v64 ? (v25 = 0, v26 = 0, v24 = 0, *(v11 + 400) = 0) : (v24 = MEMORY[0x277D837D0], v25 = v65, v26 = v64), (*(v11 + 384) = v25, *(v11 + 392) = v26, *(v11 + 408) = v24, *(v11 + 416) = 0x6465696669726576, *(v11 + 424) = 0xEA00000000007942, v77 == 1) || (!v77 ? (v28 = 0, v29 = 0, v27 = 0, *(v11 + 448) = 0) : (v27 = MEMORY[0x277D837D0], v28 = v74, v29 = v77), (*(v11 + 432) = v28, *(v11 + 440) = v29, *(v11 + 456) = v27, *(v11 + 464) = 0x65746973626577, *(v11 + 472) = 0xE700000000000000, v78 == 1) || (!v78 ? (v31 = 0, v32 = 0, v30 = 0, *(v11 + 496) = 0) : (v30 = MEMORY[0x277D837D0], v31 = v75, v32 = v78), (*(v11 + 480) = v31, *(v11 + 488) = v32, *(v11 + 504) = v30, strcpy((v11 + 512), "messageNumber"), *(v11 + 526) = -4864, v79 == 1) || (!v79 ? (v34 = 0, v35 = 0, v33 = 0, *(v11 + 544) = 0) : (v33 = MEMORY[0x277D837D0], v34 = v76, v35 = v79), (*(v11 + 528) = v34, *(v11 + 536) = v35, *(v11 + 552) = v33, strcpy((v11 + 560), "emailAddress"), *(v11 + 573) = 0, *(v11 + 574) = -5120, v80 == 1) || (!v80 ? (v37 = 0, v38 = 0, v36 = 0, *(v11 + 592) = 0) : (v36 = MEMORY[0x277D837D0], v37 = v8, v38 = v80), (*(v11 + 576) = v37, *(v11 + 584) = v38, *(v11 + 600) = v36, *(v11 + 608) = 0x73736572646461, *(v11 + 616) = 0xE700000000000000, v66 == 1) || (!v66 ? (v40 = 0, v41 = 0, v39 = 0, *(v11 + 640) = 0) : (v39 = MEMORY[0x277D837D0], v40 = v67, v41 = v66), (*(v11 + 624) = v40, *(v11 + 632) = v41, *(v11 + 648) = v39, *(v11 + 656) = 0xD000000000000015, *(v11 + 664) = 0x8000000214785EB0, v68 == 1) || (!v68 ? (v43 = 0, v44 = 0, v42 = 0, *(v11 + 688) = 0) : (v42 = MEMORY[0x277D837D0], v43 = v69, v44 = v68), (*(v11 + 672) = v43, *(v11 + 680) = v44, *(v11 + 696) = v42, *(v11 + 704) = 0xD000000000000015, *(v11 + 712) = 0x8000000214785ED0, !v70) ? (v47 = 0, v46 = 0, v45 = 0, *(v11 + 736) = 0) : (v45 = MEMORY[0x277D837D0], v46 = v70, v47 = v60), *(v11 + 720) = v47, *(v11 + 728) = v46, *(v11 + 744) = v45, *(v11 + 752) = 0xD000000000000015, *(v11 + 760) = 0x8000000214785EF0, v71 == 1))))))))))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v71)
    {
      v48 = MEMORY[0x277D837D0];
      v49 = v72;
      v50 = v71;
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v48 = 0;
      *(v11 + 784) = 0;
    }

    *(v11 + 768) = v49;
    *(v11 + 776) = v50;
    *(v11 + 792) = v48;
    strcpy((v11 + 800), "brandLogoGuid");
    *(v11 + 814) = -4864;
    if (v73)
    {
      v51 = MEMORY[0x277D837D0];
      v52 = v61;
    }

    else
    {
      v52 = 0;
      v51 = 0;
      *(v11 + 832) = 0;
    }

    *(v11 + 816) = v52;
    *(v11 + 824) = v73;
    *(v11 + 840) = v51;
    sub_213FDC9D0(v65, v64);
    sub_213FDC9D0(v74, v77);
    sub_213FDC9D0(v75, v78);
    sub_213FDC9D0(v76, v79);
    sub_213FDC9D0(v8, v80);
    sub_213FDC9D0(v67, v66);
    sub_213FDC9D0(v69, v68);

    sub_213FDC9D0(v72, v71);

    v53 = sub_214045690(v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v54 = sub_2140418B8(v53);

    if (*(v54 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_2146EA710;
      *(v55 + 32) = 0xD00000000000001BLL;
      *(v55 + 40) = 0x800000021478A920;
      *(v55 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
      *(v55 + 48) = v54;
      v56 = sub_2140457C0(v55);
      swift_setDeallocating();
      sub_213FB2DF4(v55 + 32, &qword_27C903FE0, &unk_2146EA760);
      return v56;
    }

    else
    {

      return sub_2140457C0(MEMORY[0x277D84F90]);
    }
  }

  return result;
}

unint64_t sub_21403EBDC()
{
  result = qword_280B2E360;
  if (!qword_280B2E360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B2E360);
  }

  return result;
}

unint64_t sub_21403EC28(char a1)
{
  result = 0x495255646E617262;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x6966697265567369;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6465696669726576;
      break;
    case 9:
      result = 0x65746973626577;
      break;
    case 10:
      result = 0x4E6567617373656DLL;
      break;
    case 11:
      result = 0x6464416C69616D65;
      break;
    case 12:
      result = 0x73736572646461;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x676F4C646E617262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21403EE2C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21403EC28(*a1);
  v5 = v4;
  if (v3 == sub_21403EC28(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_21403EEB4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21403EC28(v1);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21403EF18(uint64_t a1)
{
  sub_21403EC28(*v1);
  sub_2146D9698();
}

uint64_t sub_21403EF6C(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  sub_21403EC28(v2);
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_21403EFCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214046ED4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21403EFFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21403EC28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21403F044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214046ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21403F06C(uint64_t a1)
{
  v2 = sub_2140458F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21403F0A8(uint64_t a1)
{
  v2 = sub_2140458F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDBrandInfo.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE8, &qword_2146EA770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v93 - v7;
  v9 = a1[3];
  v281 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2140458F0();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v6;
    LOBYTE(v176) = 0;
    v11 = sub_2146DA168();
    v175 = v12;
    LOBYTE(v176) = 1;
    v173 = sub_2146DA168();
    v174 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    LOBYTE(v265) = 2;
    sub_214045A54(&qword_280B2FE60, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_2146DA148();
    v14 = v176;
    LOBYTE(v176) = 3;
    v171 = sub_2146DA0F8();
    v172 = v15;
    LOBYTE(v176) = 4;
    v169 = sub_2146DA0F8();
    v170 = v16;
    LOBYTE(v176) = 5;
    v167 = sub_2146DA0F8();
    v168 = v17;
    LOBYTE(v176) = 6;
    v18 = sub_2146DA108();
    v166 = v14;
    LOBYTE(v176) = 7;
    v163 = sub_2146DA0F8();
    v165 = v20;
    LOBYTE(v176) = 8;
    v162 = sub_2146DA0F8();
    v164 = v21;
    LOBYTE(v176) = 9;
    v160 = sub_2146DA0F8();
    v161 = v22;
    LOBYTE(v176) = 10;
    v158 = sub_2146DA0F8();
    v159 = v23;
    LOBYTE(v176) = 11;
    v156 = sub_2146DA0F8();
    v157 = v24;
    LOBYTE(v176) = 12;
    v154 = sub_2146DA0F8();
    v155 = v25;
    LOBYTE(v176) = 13;
    v152 = sub_2146DA0F8();
    v153 = v26;
    LOBYTE(v176) = 14;
    v150 = sub_2146DA0F8();
    v151 = v27;
    LOBYTE(v176) = 15;
    v148 = sub_2146DA0F8();
    v149 = v28;
    LOBYTE(v176) = 16;
    v145 = sub_2146DA0F8();
    v146 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v30 = swift_allocObject();
    LOBYTE(v176) = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = 100;
    *(v31 + 24) = v176;
    *(v30 + 16) = sub_214045944;
    *(v30 + 24) = v31;
    v32 = v147;
    *(v147 + 32) = v30;
    sub_214042B80(v32, &v176);
    v143 = v176;
    v33 = v177;
    v94 = v178;
    v147 = v179;
    v144 = v180;
    sub_21449E824(&v265);
    v136 = v265;
    v138 = v266;
    v139 = v267;
    v140 = v268;
    v137 = v269;
    sub_21449E858(v263);
    v131 = v263[0];
    v133 = v263[1];
    v134 = v263[2];
    v135 = v263[3];
    v132 = v264;
    sub_21449E9A4(v261);
    v126 = v261[0];
    v128 = v261[1];
    v129 = v261[2];
    v130 = v261[3];
    v127 = v262;
    sub_21449EAF0(v259);
    v121 = v259[0];
    v123 = v259[1];
    v124 = v259[2];
    v125 = v259[3];
    v122 = v260;
    sub_21449EC44(v257);
    v116 = v257[0];
    v118 = v257[1];
    v119 = v257[2];
    v120 = v257[3];
    v117 = v258;
    sub_21449F000(v255);
    v111 = v255[0];
    v113 = v255[1];
    v114 = v255[2];
    v115 = v255[3];
    v112 = v256;
    sub_21449F034(v253);
    v106 = v253[0];
    v108 = v253[1];
    v109 = v253[2];
    v110 = v253[3];
    v107 = v254;
    sub_21449F180(v251);
    v101 = v251[0];
    v103 = v251[1];
    v104 = v251[2];
    v105 = v251[3];
    v102 = v252;
    sub_21449F2D4(v249);
    v96 = v249[0];
    v98 = v249[2];
    v99 = v249[3];
    v100 = v249[1];
    v97 = v250;
    v95 = v18 & 1;
    v265 = v173;
    v266 = v174;
    LOBYTE(v263[0]) = v144;
    v93 = 0xD000000000000011;
    v176 = 0xD000000000000011;
    v177 = 0x800000021478A940;
    v178 = 0xD00000000000001CLL;
    v141 = 0x800000021478A360;
    v179 = 0x800000021478A360;

    v142 = v33;
    if (v143(&v265, v263, &v176))
    {

      v265 = v171;
      v266 = v172;
      LOBYTE(v263[0]) = v137;
      v176 = 0xD00000000000001FLL;
      v177 = 0x800000021478A960;
      v178 = 0xD00000000000001CLL;
      v179 = v141;

      sub_213FDC9D0(v139, v140);
      if (v136(&v265, v263, &v176))
      {
        v34 = v139;
        sub_213FDC6D0(v139, v140);

        sub_213FDC6D0(v34, v140);
        v265 = v163;
        v266 = v165;
        LOBYTE(v263[0]) = v132;
        v176 = 0xD000000000000021;
        v177 = 0x800000021478A980;
        v178 = 0xD00000000000001CLL;
        v179 = v141;

        sub_213FDC9D0(v134, v135);
        if (v131(&v265, v263, &v176))
        {
          v35 = v134;
          sub_213FDC6D0(v134, v135);

          sub_213FDC6D0(v35, v135);
          v265 = v162;
          v266 = v164;
          LOBYTE(v263[0]) = v127;
          v147 = 0xD000000000000017;
          v176 = 0xD000000000000017;
          v177 = 0x800000021478A9B0;
          v178 = 0xD00000000000001CLL;
          v179 = v141;

          sub_213FDC9D0(v129, v130);
          if (v126(&v265, v263, &v176))
          {
            v36 = v129;
            sub_213FDC6D0(v129, v130);

            sub_213FDC6D0(v36, v130);
            v265 = v160;
            v266 = v161;
            LOBYTE(v263[0]) = v122;
            v147 = 0xD000000000000014;
            v176 = 0xD000000000000014;
            v177 = 0x800000021478A9D0;
            v178 = 0xD00000000000001CLL;
            v179 = v141;

            sub_213FDC9D0(v124, v125);
            if (v121(&v265, v263, &v176))
            {
              v37 = v124;
              sub_213FDC6D0(v124, v125);

              sub_213FDC6D0(v37, v125);
              v265 = v158;
              v266 = v159;
              LOBYTE(v263[0]) = v117;
              v140 = 0xD00000000000001ALL;
              v176 = 0xD00000000000001ALL;
              v177 = 0x800000021478A9F0;
              v178 = 0xD00000000000001CLL;
              v179 = v141;

              sub_213FDC9D0(v119, v120);
              if (v116(&v265, v263, &v176))
              {
                v38 = v119;
                sub_213FDC6D0(v119, v120);

                sub_213FDC6D0(v38, v120);
                v265 = v156;
                v266 = v157;
                LOBYTE(v263[0]) = v112;
                v140 = 0xD000000000000019;
                v176 = 0xD000000000000019;
                v177 = 0x800000021478AA10;
                v178 = 0xD00000000000001CLL;
                v179 = v141;

                sub_213FDC9D0(v114, v115);
                if (v111(&v265, v263, &v176))
                {
                  v39 = v114;
                  sub_213FDC6D0(v114, v115);

                  sub_213FDC6D0(v39, v115);
                  v265 = v154;
                  v266 = v155;
                  LOBYTE(v263[0]) = v107;
                  v176 = v147;
                  v177 = 0x800000021478AA30;
                  v178 = 0xD00000000000001CLL;
                  v179 = v141;

                  sub_213FDC9D0(v109, v110);
                  if (v106(&v265, v263, &v176))
                  {
                    v40 = v109;
                    sub_213FDC6D0(v109, v110);

                    sub_213FDC6D0(v40, v110);
                    v265 = v152;
                    v266 = v153;
                    LOBYTE(v263[0]) = v102;
                    v176 = 0xD000000000000022;
                    v177 = 0x800000021478AA50;
                    v178 = 0xD00000000000001CLL;
                    v179 = v141;

                    sub_213FDC9D0(v104, v105);
                    if (v101(&v265, v263, &v176))
                    {
                      v41 = v104;
                      sub_213FDC6D0(v104, v105);

                      sub_213FDC6D0(v41, v105);
                      v265 = v148;
                      v266 = v149;
                      LOBYTE(v263[0]) = v97;
                      v176 = 0xD000000000000022;
                      v177 = 0x800000021478AA80;
                      v178 = 0xD00000000000001CLL;
                      v179 = v141;

                      sub_213FDC9D0(v98, v99);
                      if (v96(&v265, v263, &v176))
                      {
                        v42 = v99;
                        sub_213FDC6D0(v98, v99);
                        (*(v10 + 8))(v8, v5);
                        v43 = v100;

                        sub_213FDC6D0(v98, v42);
                        v44 = v175;
                        *a2 = v11;
                        *(a2 + 8) = v44;
                        v45 = v142;
                        *(a2 + 16) = v143;
                        *(a2 + 24) = v45;
                        v46 = v174;
                        *(a2 + 32) = v173;
                        *(a2 + 40) = v46;
                        *(a2 + 48) = v144;
                        v47 = v136;
                        *(a2 + 56) = v166;
                        *(a2 + 64) = v47;
                        v48 = v171;
                        *(a2 + 72) = v138;
                        *(a2 + 80) = v48;
                        *(a2 + 88) = v172;
                        *(a2 + 96) = v137;
                        v49 = v170;
                        *(a2 + 104) = v169;
                        *(a2 + 112) = v49;
                        v50 = v168;
                        *(a2 + 120) = v167;
                        *(a2 + 128) = v50;
                        *(a2 + 136) = v95;
                        v51 = v133;
                        *(a2 + 144) = v131;
                        *(a2 + 152) = v51;
                        v52 = v165;
                        *(a2 + 160) = v163;
                        *(a2 + 168) = v52;
                        *(a2 + 176) = v132;
                        v53 = v128;
                        *(a2 + 184) = v126;
                        *(a2 + 192) = v53;
                        v54 = v164;
                        *(a2 + 200) = v162;
                        *(a2 + 208) = v54;
                        *(a2 + 216) = v127;
                        v55 = v123;
                        *(a2 + 224) = v121;
                        *(a2 + 232) = v55;
                        v56 = v161;
                        *(a2 + 240) = v160;
                        *(a2 + 248) = v56;
                        *(a2 + 256) = v122;
                        *(a2 + 260) = *&v275[3];
                        *(a2 + 257) = *v275;
                        *(a2 + 49) = v280[0];
                        *(a2 + 52) = *(v280 + 3);
                        *(a2 + 100) = *(v279 + 3);
                        *(a2 + 97) = v279[0];
                        *(a2 + 140) = *(v278 + 3);
                        *(a2 + 137) = v278[0];
                        *(a2 + 180) = *&v277[3];
                        *(a2 + 177) = *v277;
                        *(a2 + 220) = *&v276[3];
                        *(a2 + 217) = *v276;
                        v57 = v118;
                        *(a2 + 264) = v116;
                        *(a2 + 272) = v57;
                        v58 = v159;
                        *(a2 + 280) = v158;
                        *(a2 + 288) = v58;
                        *(a2 + 296) = v117;
                        v59 = *v274;
                        *(a2 + 300) = *&v274[3];
                        *(a2 + 297) = v59;
                        v60 = v113;
                        *(a2 + 304) = v111;
                        *(a2 + 312) = v60;
                        v61 = v157;
                        *(a2 + 320) = v156;
                        *(a2 + 328) = v61;
                        *(a2 + 336) = v112;
                        v62 = *v273;
                        *(a2 + 340) = *&v273[3];
                        *(a2 + 337) = v62;
                        v63 = v108;
                        *(a2 + 344) = v106;
                        *(a2 + 352) = v63;
                        v64 = v155;
                        *(a2 + 360) = v154;
                        *(a2 + 368) = v64;
                        *(a2 + 376) = v107;
                        v65 = *v272;
                        *(a2 + 380) = *&v272[3];
                        *(a2 + 377) = v65;
                        v66 = v103;
                        *(a2 + 384) = v101;
                        *(a2 + 392) = v66;
                        v67 = v153;
                        *(a2 + 400) = v152;
                        *(a2 + 408) = v67;
                        *(a2 + 416) = v102;
                        v68 = v271[0];
                        *(a2 + 420) = *(v271 + 3);
                        *(a2 + 417) = v68;
                        v69 = v151;
                        *(a2 + 424) = v150;
                        *(a2 + 432) = v69;
                        *(a2 + 440) = v96;
                        *(a2 + 448) = v43;
                        v70 = v149;
                        *(a2 + 456) = v148;
                        *(a2 + 464) = v70;
                        *(a2 + 472) = v97;
                        v71 = v270[0];
                        *(a2 + 476) = *(v270 + 3);
                        *(a2 + 473) = v71;
                        v72 = v146;
                        *(a2 + 480) = v145;
                        *(a2 + 488) = v72;
                        return __swift_destroy_boxed_opaque_existential_1(v281);
                      }

                      sub_214031C4C();
                      swift_allocError();
                      *v91 = 0xD000000000000022;
                      v91[1] = 0x800000021478AA80;
                      v92 = v141;
                      v91[2] = 0xD00000000000001CLL;
                      v91[3] = v92;
                      swift_willThrow();

                      (*(v10 + 8))(v8, v5);

                      sub_213FDC6D0(v98, v99);
                      v147 = v174;
                      v139 = v171;
                      v140 = v172;
                      v134 = v163;
                      v135 = v165;
                      v129 = v162;
                      v130 = v164;
                      v124 = v160;
                      v125 = v161;
                      v119 = v158;
                      v120 = v159;
                      v114 = v156;
                      v115 = v157;
                      v109 = v154;
                      v110 = v155;
                      v104 = v152;
                      v105 = v153;
                    }

                    else
                    {
                      sub_214031C4C();
                      swift_allocError();
                      *v89 = 0xD000000000000022;
                      v89[1] = 0x800000021478AA50;
                      v90 = v141;
                      v89[2] = 0xD00000000000001CLL;
                      v89[3] = v90;
                      swift_willThrow();

                      (*(v10 + 8))(v8, v5);

                      sub_213FDC6D0(v104, v105);
                      v147 = v174;
                      v139 = v171;
                      v140 = v172;
                      v134 = v163;
                      v135 = v165;
                      v129 = v162;
                      v130 = v164;
                      v124 = v160;
                      v125 = v161;
                      v119 = v158;
                      v120 = v159;
                      v114 = v156;
                      v115 = v157;
                      v109 = v154;
                      v110 = v155;
                    }
                  }

                  else
                  {
                    sub_214031C4C();
                    swift_allocError();
                    *v87 = v147;
                    v87[1] = 0x800000021478AA30;
                    v88 = v141;
                    v87[2] = 0xD00000000000001CLL;
                    v87[3] = v88;
                    swift_willThrow();

                    (*(v10 + 8))(v8, v5);

                    sub_213FDC6D0(v109, v110);
                    v147 = v174;
                    v139 = v171;
                    v140 = v172;
                    v134 = v163;
                    v135 = v165;
                    v129 = v162;
                    v130 = v164;
                    v124 = v160;
                    v125 = v161;
                    v119 = v158;
                    v120 = v159;
                    v114 = v156;
                    v115 = v157;
                  }
                }

                else
                {
                  sub_214031C4C();
                  swift_allocError();
                  v85 = v141;
                  *v86 = v140;
                  v86[1] = 0x800000021478AA10;
                  v86[2] = 0xD00000000000001CLL;
                  v86[3] = v85;
                  swift_willThrow();

                  (*(v10 + 8))(v8, v5);

                  sub_213FDC6D0(v114, v115);
                  v147 = v174;
                  v139 = v171;
                  v140 = v172;
                  v134 = v163;
                  v135 = v165;
                  v129 = v162;
                  v130 = v164;
                  v124 = v160;
                  v125 = v161;
                  v119 = v158;
                  v120 = v159;
                }
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                v83 = v141;
                *v84 = v140;
                v84[1] = 0x800000021478A9F0;
                v84[2] = 0xD00000000000001CLL;
                v84[3] = v83;
                swift_willThrow();

                (*(v10 + 8))(v8, v5);

                sub_213FDC6D0(v119, v120);
                v147 = v174;
                v139 = v171;
                v140 = v172;
                v134 = v163;
                v135 = v165;
                v129 = v162;
                v130 = v164;
                v124 = v160;
                v125 = v161;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v81 = v147;
              v81[1] = 0x800000021478A9D0;
              v82 = v141;
              v81[2] = 0xD00000000000001CLL;
              v81[3] = v82;
              swift_willThrow();

              (*(v10 + 8))(v8, v5);

              sub_213FDC6D0(v124, v125);
              v147 = v174;
              v139 = v171;
              v140 = v172;
              v134 = v163;
              v135 = v165;
              v129 = v162;
              v130 = v164;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v79 = v147;
            v79[1] = 0x800000021478A9B0;
            v80 = v141;
            v79[2] = 0xD00000000000001CLL;
            v79[3] = v80;
            swift_willThrow();

            (*(v10 + 8))(v8, v5);

            sub_213FDC6D0(v129, v130);
            v147 = v174;
            v139 = v171;
            v140 = v172;
            v134 = v163;
            v135 = v165;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v77 = 0xD000000000000021;
          v77[1] = 0x800000021478A980;
          v78 = v141;
          v77[2] = 0xD00000000000001CLL;
          v77[3] = v78;
          swift_willThrow();

          (*(v10 + 8))(v8, v5);

          sub_213FDC6D0(v134, v135);
          v147 = v174;
          v139 = v171;
          v140 = v172;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v75 = 0xD00000000000001FLL;
        v75[1] = 0x800000021478A960;
        v76 = v141;
        v75[2] = 0xD00000000000001CLL;
        v75[3] = v76;
        swift_willThrow();

        (*(v10 + 8))(v8, v5);

        sub_213FDC6D0(v139, v140);
        v147 = v174;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v73 = v93;
      v73[1] = 0x800000021478A940;
      v74 = v141;
      v73[2] = 0xD00000000000001CLL;
      v73[3] = v74;
      swift_willThrow();

      (*(v10 + 8))(v8, v5);

      v173 = v94;
    }

    v176 = v11;
    v177 = v175;
    v178 = v143;
    v179 = v142;
    v180 = v173;
    v181 = v147;
    v182 = v144;
    v184 = v166;
    v185 = v136;
    v186 = v138;
    v187 = v139;
    v188 = v140;
    v189 = v137;
    v191 = v169;
    v192 = v170;
    v193 = v167;
    v194 = v168;
    v195 = v95;
    v197 = v131;
    v198 = v133;
    v199 = v134;
    v200 = v135;
    v201 = v132;
    v203 = v126;
    v204 = v128;
    v205 = v129;
    v206 = v130;
    v207 = v127;
    v209 = v121;
    v210 = v123;
    v211 = v124;
    v212 = v125;
    *&v196[3] = *(v278 + 3);
    *v196 = v278[0];
    *&v202[3] = *&v277[3];
    *v202 = *v277;
    *&v208[3] = *&v276[3];
    *v208 = *v276;
    *v214 = *v275;
    *v183 = v280[0];
    *&v183[3] = *(v280 + 3);
    *&v190[3] = *(v279 + 3);
    *v190 = v279[0];
    v213 = v122;
    *&v214[3] = *&v275[3];
    v215 = v116;
    v216 = v118;
    v217 = v119;
    v218 = v120;
    v219 = v117;
    *v220 = *v274;
    *&v220[3] = *&v274[3];
    v221 = v111;
    v222 = v113;
    v223 = v114;
    v224 = v115;
    v225 = v112;
    *v226 = *v273;
    *&v226[3] = *&v273[3];
    v227 = v106;
    v228 = v108;
    v229 = v109;
    v230 = v110;
    v231 = v107;
    *v232 = *v272;
    *&v232[3] = *&v272[3];
    v233 = v101;
    v234 = v103;
    v235 = v104;
    v236 = v105;
    v237 = v102;
    *v238 = v271[0];
    *&v238[3] = *(v271 + 3);
    v239 = v150;
    v240 = v151;
    v241 = v96;
    v242 = v100;
    v243 = v98;
    v244 = v99;
    v245 = v97;
    *v246 = v270[0];
    *&v246[3] = *(v270 + 3);
    v247 = v145;
    v248 = v146;
    sub_214045958(&v176);
  }

  return __swift_destroy_boxed_opaque_existential_1(v281);
}

uint64_t MBDBrandInfo.encode(to:configuration:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FF8, &qword_2146EA778);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = *(v1 + 40);
  v57 = *(v1 + 32);
  v58 = v7;
  v8 = *(v1 + 56);
  v9 = *(v1 + 80);
  v55 = *(v1 + 88);
  v56 = v8;
  v10 = *(v1 + 104);
  v53 = *(v1 + 112);
  v54 = v9;
  v11 = *(v1 + 120);
  v51 = *(v1 + 128);
  v52 = v10;
  v62 = *(v1 + 136);
  v12 = *(v1 + 160);
  v46 = *(v1 + 168);
  v47 = v12;
  v13 = *(v1 + 208);
  v49 = *(v1 + 200);
  v50 = v11;
  v14 = *(v1 + 248);
  v48 = *(v1 + 240);
  v44 = v14;
  v45 = v13;
  v15 = *(v1 + 288);
  v42 = *(v1 + 280);
  v43 = v15;
  v16 = *(v1 + 328);
  v40 = *(v1 + 320);
  v41 = v16;
  v17 = *(v1 + 368);
  v38 = *(v1 + 360);
  v39 = v17;
  v18 = *(v1 + 408);
  v36 = *(v1 + 400);
  v37 = v18;
  v19 = *(v1 + 432);
  v34 = *(v1 + 424);
  v35 = v19;
  v20 = *(v1 + 464);
  v32 = *(v1 + 456);
  v33 = v20;
  v21 = *(v1 + 488);
  v31 = *(v1 + 480);
  v22 = a1[3];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_2140458F0();
  sub_2146DAA28();
  LOBYTE(v60) = 0;
  v26 = v59;
  sub_2146DA328();
  if (v26)
  {
    return (*(v4 + 8))(v6, v25);
  }

  v28 = v56;
  v29 = v55;
  v59 = v21;
  if (!v58 || (LOBYTE(v60) = 1, , sub_2146DA328(), , v60 = v28, v63 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780), sub_2140459AC(), sub_2146DA388(), v29 == 1) || (v60 = v54, v61 = v29, v63 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v60 = v52, v61 = v53, v63 = 4, sub_2146DA388(), v60 = v50, v61 = v51, v63 = 5, sub_2146DA388(), LOBYTE(v60) = 6, sub_2146DA338(), v46 == 1) || (v60 = v47, v61 = v46, v63 = 7, sub_2146DA388(), v30 = v48, v45 == 1) || (v60 = v49, v61 = v45, v63 = 8, sub_2146DA388(), v44 == 1) || (v60 = v30, v61 = v44, v63 = 9, sub_2146DA388(), v43 == 1) || (v60 = v42, v61 = v43, v63 = 10, sub_2146DA388(), v41 == 1) || (v60 = v40, v61 = v41, v63 = 11, sub_2146DA388(), v39 == 1) || (v60 = v38, v61 = v39, v63 = 12, sub_2146DA388(), v37 == 1) || (v60 = v36, v61 = v37, v63 = 13, sub_2146DA388(), v60 = v34, v61 = v35, v63 = 14, sub_2146DA388(), v33 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v60 = v32;
    v61 = v33;
    v63 = 15;
    sub_2146DA388();
    v60 = v31;
    v61 = v59;
    v63 = 16;
    sub_2146DA388();
    return (*(v4 + 8))(v6, v25);
  }

  return result;
}

uint64_t sub_2140418B8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v39 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_213FB2E54(*(a1 + 56) + 32 * v11, v37, &qword_27C913170, &qword_2146EAB20);
    *&v36 = v14;
    *(&v36 + 1) = v13;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_213FB2E54(&v34, &v27, &qword_27C913170, &qword_2146EAB20);
    if (!v28)
    {

      sub_213FB2DF4(&v33, &qword_27C9041B8, &qword_2146EAB28);
      result = sub_213FB2DF4(&v27, &qword_27C913170, &qword_2146EAB20);
      v1 = v39;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_213FDC730(&v27, v32);
    v30 = v33;
    v31[0] = v34;
    v31[1] = v35;
    sub_213FDC730(v32, v29);
    v1 = v39;
    v15 = *(v39 + 16);
    if (*(v39 + 24) <= v15)
    {

      sub_2140506C8(v15 + 1, 1);
      v1 = v38;
    }

    else
    {
    }

    v16 = v30;
    sub_2146DA958();
    sub_2146D9698();
    result = sub_2146DA9B8();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v1 + 48) + 16 * v21) = v16;
    sub_213FDC730(v29, (*(v1 + 56) + 32 * v21));
    ++*(v1 + 16);
    result = sub_213FB2DF4(v31, &qword_27C913170, &qword_2146EAB20);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v39 = v1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v17 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

BOOL sub_214041BDC(char a1, unint64_t a2, float a3)
{
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a2);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a2 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a3;
    v11 = *(v10 + 16);
    v14 = a1;
    v12 = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214041CE8(char a1, unint64_t a2, double a3)
{
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a2);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a2 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a3;
    v11 = *(v10 + 16);
    v14 = a1;
    v12 = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214041DF8(int a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v14 = a2;
    v12 = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214041F04(char a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v14 = a2;
    v12 = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214042010(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v7 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
LABEL_15:
    v16 = a2;
    v17 = sub_2146DA028();
    a2 = v16;
    v8 = v17;
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = a2 & 1;
  do
  {
    v11 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x216054E00](v9, a4);
      if (__OFADD__(v11, 1))
      {
LABEL_12:
        __break(1u);
        return v8 == v11;
      }
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v12 = *(a4 + 8 * v9 + 32);

      if (__OFADD__(v11, 1))
      {
        goto LABEL_12;
      }
    }

    v19 = a1;
    v20 = v10;
    v13 = *(v12 + 16);
    v18 = a3;
    v14 = v13(&v19, &v18);

    v9 = v11 + 1;
  }

  while ((v14 & 1) != 0);
  return v8 == v11;
}

BOOL sub_21404212C(uint64_t a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v14 = a2;
    v12 = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_214042238(uint64_t a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v16 = BYTE4(a1) & 1;
    v11 = *(v10 + 16);
    v14 = a2;
    v12 = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

BOOL sub_21404234C(__int16 a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v14 = a2;
    v12 = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v9;
}

uint64_t sub_214042458(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v13[0] = *(i - 1);
      v13[1] = v8;

      v9 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- != 0;
      if ((v9 & v11 & 1) == 0)
      {
        return v9 & 1;
      }
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9 & 1;
}

uint64_t sub_214042508(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 1;
  }

  v6 = (a3 + 32);
  v7 = v4 - 1;
  do
  {
    v8 = *v6++;
    v13 = v8;
    sub_21402D9F8(v8, *(&v8 + 1));
    v9 = a1(&v13);
    sub_213FB54FC(v13, *(&v13 + 1));
    result = (v3 == 0) & v9;
    v12 = v7-- != 0;
  }

  while (result == 1 && v12);
  return result;
}

uint64_t sub_2140425C0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v24 = a3;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
      v13 = (*(v24 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v24 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v23[0] = v14;
      v23[1] = v15;
      v23[2] = v17;
      v23[3] = v18;

      v19 = a1(v23);
      if (v3)
      {

        return v21 & 1;
      }

      v20 = v19;

      if ((v20 & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v21 = 0;
    return v21 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        v21 = 1;
        return v21 & 1;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214042744(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_15:
    v5 = sub_2146DA028();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x216054E00](i, a3);
          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v9 = 0;
            return v9 & 1;
          }
        }

        else
        {
          if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a3 + 8 * i + 32);

          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v7;
        v9 = a1(&v12);

        if (v3)
        {
          goto LABEL_13;
        }

        if ((v9 & (v8 != v5)) == 0)
        {
          return v9 & 1;
        }
      }
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_21404287C()
{
  MBDBrandInfo.dictionaryRepresentation.getter();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_2140428D0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142DFFBC(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047B78;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A1C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 256;
    *(a2 + 26) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042A28@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0034(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_21404733C;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A70;
    *(a2 + 8) = v3;
    *(a2 + 16) = xmmword_2146EA720;
    *(a2 + 32) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042B80@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0070(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140478EC;
    *(v3 + 24) = result;
    v4 = sub_214047950;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047B34;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042CD0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E00AC(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140477B0;
    *(v3 + 24) = result;
    v4 = sub_21404708C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A70;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = xmmword_2146E68C0;
    *(a2 + 32) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042E28@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E00E8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047074;
    *(v3 + 24) = result;
    v4 = sub_21404708C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A70;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = xmmword_2146EA730;
    *(a2 + 32) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214042F80@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0124(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
    v3 = swift_allocObject();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v3 + 16) = sub_21404745C;
    *(v3 + 24) = v8;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
    v10 = *(v9 + 28);
    v11 = sub_2146D8958();
    result = (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
    a2[*(v9 + 32)] = 2;
    *a2 = sub_214047A00;
    *(a2 + 1) = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043138@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0160(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904108, &qword_2146EBA40);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21404328C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142DFFF8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140478C4;
    *(v3 + 24) = result;
    v4 = sub_21404714C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A8C;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140433DC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E01D8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047838;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21404352C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0214(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
    v3 = swift_allocObject();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v3 + 16) = sub_214046F28;
    *(v3 + 24) = v9;
    v4 = sub_214046F40;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A00;
LABEL_10:
    v10 = v4;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
    v12 = *(v11 + 28);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    result = (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
    a2[*(v11 + 32)] = 2;
    *a2 = v10;
    *(a2 + 1) = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140436F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0250(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904130, &unk_2146EAA90);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043840@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E028C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904170, &unk_2146EAAD0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043990@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E02C8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904138, qword_2147384F0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043AE0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0304(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140476AC;
    *(v3 + 24) = result;
    v4 = sub_2140476C0;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047AE0;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 20) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043C30@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0340(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904100, &unk_2146EAA50);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047258;
    *(v3 + 24) = result;
    v4 = sub_214047260;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047AC4;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 1;
    *(a2 + 40) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043D88@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E03B8(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904158, &qword_2146F4580);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214043ED8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E03F4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904140, &unk_2146EAAA0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044028@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0430(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904160, &unk_2146EAAC0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044178@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E046C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904120, &unk_2146EAA80);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140442CC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E04E4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047840;
    *(v3 + 24) = result;
    v4 = sub_214047854;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047B18;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21404441C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0520(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904128, qword_2147557C0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140475DC;
    *(v3 + 24) = result;
    v4 = sub_2140475E0;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A1C;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 256;
    *(a2 + 26) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044574@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E055C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904118, &qword_2146EAA78);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140446C8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E05D4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904148, qword_21476AE20);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047B50;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A54;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 20) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044818@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0610(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F0, &qword_2146EAA40);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140470DC;
    *(v3 + 24) = result;
    v4 = sub_21404714C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A8C;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044968@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E064C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F8, &qword_2146EAA48);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047B78;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A1C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 256;
    *(a2 + 26) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044AC0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E06C4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040D8, &qword_2146EAA28);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044C10@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E0700(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B8, &qword_2146EAA08);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047030;
    *(v3 + 24) = result;
    v4 = sub_214047058;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A54;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 20) = 513;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044D60@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E073C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B0, &qword_2146EAA00);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214046FB0;
    *(v3 + 24) = result;
    v4 = sub_214046FC0;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A38;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 526;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214044EAC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E0778(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E0, &unk_2146EAA30);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_214047B78;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A1C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 256;
    *(a2 + 26) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214045004@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E07F0(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E8, &unk_2147319D0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140471B8;
    *(v3 + 24) = result;
    v4 = sub_2140471E0;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047AA8;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 20) = 256;
    *(a2 + 16) = 0;
    *(a2 + 22) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21404515C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E082C(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040D0, &qword_2146EAA20);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_2140470DC;
    *(v3 + 24) = result;
    v4 = sub_21404714C;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047A8C;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2140452B0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = sub_2142E08A4(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(v3 + 16) = sub_2140470C4;
    *(v3 + 24) = result;
    goto LABEL_10;
  }

  v4 = result;
  v5 = sub_2146DA028();
  result = v4;
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = sub_2146DA028();
  result = v4;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

LABEL_10:
    *a2 = sub_214047A8C;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_214045404@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = sub_2142E08E0(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904168, &qword_2146F4550);
    v3 = swift_allocObject();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v3 + 16) = sub_214047730;
    *(v3 + 24) = result;
    v4 = sub_214047740;
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_2146DA028();
  result = v5;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_2146DA028();
  result = v5;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216054E00](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);

LABEL_6:

    v4 = sub_214047AFC;
LABEL_10:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 33619968;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_214045568(__int128 *a1, char *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v8 = *a1;
  v6[2] = &v8;
  v7 = v3;
  return sub_214042744(sub_214047814, v6, v4) & 1;
}

uint64_t sub_2140455CC(__int128 *a1, char *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a4;
  v9 = *a1;
  v6 = *(v5 + 16);
  v8 = v4;
  return v6(&v9, &v8, a3) & 1;
}

uint64_t sub_214045624(__int128 *a1, char *a2, unint64_t *a3)
{
  v3 = *(a1 + 2);
  v4 = *a2;
  v5 = *a3;
  v9 = *a1;
  v10 = v3;
  v7[2] = &v9;
  v8 = v4;
  return sub_214042744(sub_2140472D8, v7, v5) & 1;
}

unint64_t sub_214045690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C0, &qword_2146EAB30);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v15, &qword_27C903FD0, &unk_2146F14B0);
      v5 = v15;
      v6 = v16;
      result = sub_21408C300(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140457C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v13, &qword_27C903FE0, &unk_2146EA760);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_213FDC730(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140458F0()
{
  result = qword_27C903FF0;
  if (!qword_27C903FF0)
  {
    result = swift_getWitnessTable(asc_2146EA920, &_s19CodingConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C903FF0);
  }

  return result;
}

unint64_t sub_2140459AC()
{
  result = qword_280B30B98;
  if (!qword_280B30B98)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904000, &unk_2146EA780);
    v4[0] = sub_214045A54(&qword_280B30BA0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B30B98);
  }

  return result;
}

uint64_t sub_214045A54(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214045AC0()
{
  result = qword_280B30BA8;
  if (!qword_280B30BA8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904008, &qword_2146EC050);
    v4[0] = MEMORY[0x277D837D8];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B30BA8);
  }

  return result;
}

uint64_t _s19CodingConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19CodingConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214045CA0()
{
  result = qword_27C904010;
  if (!qword_27C904010)
  {
    result = swift_getWitnessTable(byte_2146EA8F8, &_s19CodingConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C904010);
  }

  return result;
}

unint64_t sub_214045CF8()
{
  result = qword_27C904018;
  if (!qword_27C904018)
  {
    result = swift_getWitnessTable(aQ_50, &_s19CodingConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C904018);
  }

  return result;
}

unint64_t sub_214045D50()
{
  result = qword_27C904020;
  if (!qword_27C904020)
  {
    result = swift_getWitnessTable(byte_2146EA858, &_s19CodingConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C904020);
  }

  return result;
}

unint64_t sub_214045DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A8, &unk_2146EAEA0);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, v13, &qword_27C9041B0, &unk_2146EAB10);
      result = sub_21408C378(v13);
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
      result = sub_213FDC730(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214045EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904098, &unk_2146EA9E0);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v11, &qword_27C9040A0, &unk_214771CE0);
      v5 = v11;
      result = sub_21408C3BC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_213FDC730(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A0, &qword_2146EAAF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9042F0, &unk_2146EAB00);
    v7 = sub_2146DA058();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_213FB2E54(v9, v5, &qword_27C9041A0, &qword_2146EAAF8);
      result = sub_21408C508(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2146DA008();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_213FDC730(&v5[v8], (v7[7] + 32 * v13));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140461F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904190, &qword_2146EAAE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904198, &qword_2146EAAF0);
    v7 = sub_2146DA058();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_213FB2E54(v9, v5, &qword_27C904190, &qword_2146EAAE8);
      result = sub_21408C56C(*v5, v5[8]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 16 * result;
      v15 = v5[8];
      *v14 = *v5;
      *(v14 + 8) = v15;
      v16 = v7[7];
      v17 = sub_2146D8958();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140463E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904080, &unk_2146EAE90);
    v3 = sub_2146DA058();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21408C300(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140464E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904090, &qword_2146EA9D8);
    v3 = sub_2146DA058();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21408C300(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2140465E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904088, &qword_2146EA9D0);
    v3 = sub_2146DA058();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_21402D9F8(v7, v8);
      result = sub_21408C300(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904028, &qword_2146EA970);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v13, &qword_27C904030, &qword_2146EA978);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_213FB77C8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904078, &unk_2146EA9C0);
    v3 = sub_2146DA058();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21408C300(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904050, &qword_2146EA998);
    v3 = sub_2146DA058();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21408C3BC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904068, &qword_2146EA9B0);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v13, &qword_27C904070, &qword_2146EA9B8);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_213FB77C8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904058, &unk_2146EA9A0);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, v10, &qword_27C904060, &qword_214759790);
      result = sub_21408C650(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_213FB77C8(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046C88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904048, &qword_2146EA990);
    v3 = sub_2146DA058();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21408C300(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904038, &qword_2146EA980);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_213FB2E54(v4, &v13, &qword_27C904040, &qword_2146EA988);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = memcpy((v3[7] + 480 * result), v15, 0x1D9uLL);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 496;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_214046ED4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA8B8();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214046F5C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(*a1 + 16);
  v5 = *(v1 + 24);
  return v3(v2, &v5) & 1;
}

uint64_t sub_214046FDC(char *a1, char *a2)
{
  v3 = *a2;
  v7 = *a1;
  v4 = *(v2 + 16);
  v6 = v3;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_2140470F4(uint64_t *a1, char *a2, uint64_t (*a3)(uint64_t *))
{
  v5 = *a2;
  v6 = *(v3 + 16);
  v10 = *a1;
  v8[2] = &v10;
  v9 = v5;
  return sub_214042744(a3, v8, v6) & 1;
}

uint64_t sub_2140471FC(int *a1, char *a2)
{
  v3 = *(a1 + 4);
  v4 = *a2;
  v8 = *a1;
  v9 = v3;
  v5 = *(v2 + 16);
  v7 = v4;
  return v5(&v8, &v7) & 1;
}

uint64_t sub_21404727C(__int128 *a1, char *a2)
{
  v3 = *(a1 + 2);
  v4 = *a2;
  v8 = *a1;
  v9 = v3;
  v5 = *(v2 + 16);
  v7 = v4;
  return v5(&v8, &v7) & 1;
}

uint64_t sub_2140472D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v2 + 2);
  v9 = *v2;
  v10 = v5;
  v6 = *(v4 + 16);
  v8 = v3;
  return v6(&v9, &v8) & 1;
}

uint64_t sub_214047354(__int128 *a1, char *a2, uint64_t (*a3)(uint64_t *))
{
  v5 = *a2;
  v6 = *(v3 + 16);
  v10 = *a1;
  v8[2] = &v10;
  v9 = v5;
  return sub_214042744(a3, v8, v6) & 1;
}

uint64_t sub_2140473AC(__int128 *a1, char *a2)
{
  v3 = *a2;
  v7 = *a1;
  v4 = *(v2 + 16);
  v6 = v3;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_214047400(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v7 = **(v1 + 16);
  v4 = *(v3 + 16);
  v6 = v2;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_214047474(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *))
{
  v5 = *a2;
  v6 = *(v3 + 16);
  v8[2] = a1;
  v9 = v5;
  return sub_214042744(a3, v8, v6) & 1;
}

uint64_t sub_2140474C0(uint64_t a1, char *a2)
{
  v3 = *(v2 + 16);
  v5 = *a2;
  return v3(a1, &v5) & 1;
}

uint64_t sub_21404752C(uint64_t *a1, char *a2)
{
  v3 = *a2;
  v7 = *a1;
  v4 = *(v2 + 16);
  v6 = v3;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_214047580(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v7 = **(v1 + 16);
  v4 = *(v3 + 16);
  v6 = v2;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_2140475FC(uint64_t *a1, char *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v8 = *a1;
  v9 = v3;
  v5 = *(v2 + 16);
  v7 = v4;
  return v5(&v8, &v7) & 1;
}

uint64_t sub_214047658(int *a1, char *a2)
{
  v3 = *a2;
  v7 = *a1;
  v4 = *(v2 + 16);
  v6 = v3;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_2140476DC(int *a1, char *a2)
{
  v3 = *a2;
  v7 = *a1;
  v4 = *(v2 + 16);
  v6 = v3;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_21404775C(__int16 *a1, char *a2)
{
  v3 = *a2;
  v7 = *a1;
  v4 = *(v2 + 16);
  v6 = v3;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_2140477B0(__int128 *a1, char *a2)
{
  v3 = *a2;
  v4 = *(v2 + 16);
  v8 = *a1;
  v6[2] = &v8;
  v7 = v3;
  return sub_214042744(sub_214047814, v6, v4) & 1;
}

uint64_t sub_214047870(uint64_t *a1, char *a2)
{
  v3 = *a2;
  v7 = *a1;
  v4 = *(v2 + 16);
  v6 = v3;
  return v4(&v7, &v6) & 1;
}

uint64_t sub_2140478EC(void *a1, char *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = *(v2 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v7[2] = v9;
  v8 = v4;
  return sub_214042744(sub_2140479C0, v7, v5) & 1;
}

uint64_t sub_21404796C(void *a1, char *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v8[0] = *a1;
  v8[1] = v3;
  v5 = *(v2 + 16);
  v7 = v4;
  return v5(v8, &v7) & 1;
}

uint64_t sub_214047BB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v141 - v3;
  v5 = sub_2146D8958();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v9 - 8);
  v151 = &v141 - v10;
  v11 = type metadata accessor for CloudKitSharingToken(0);
  v150 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v147 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v153 = &v141 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v149 = &v141 - v20;
  MEMORY[0x28223BE20](v19);
  v154 = &v141 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v148 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v141 - v25;
  v27 = MEMORY[0x277D84F98];
  v164 = MEMORY[0x277D84F98];
  v28 = *(v1 + 24);
  if (v28)
  {
    if (v28 == 1)
    {
      goto LABEL_52;
    }

    v29 = *(v1 + 16);
    v159 = MEMORY[0x277D837D0];
    *&v157 = v29;
    *(&v157 + 1) = v28;
    sub_213FDC730(&v157, &v162);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v27;
    sub_2140524DC(&v162, 0x6D614E656D6F486BLL, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v164 = *&v156[0];
  }

  v152 = v11;
  v142 = v8;
  v143 = v6;
  v144 = v4;
  v145 = v5;
  v146 = v13;
  v155 = type metadata accessor for IDSHomeKitInvitation(0);
  v31 = v155[5];
  sub_213FB2E54(v1 + v31, v26, &qword_27C913090, &unk_2146E9DB0);
  v32 = sub_2146D8B08();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v26, 1, v32);
  sub_213FB2DF4(v26, &qword_27C913090, &unk_2146E9DB0);
  if (v35 != 1)
  {
    v36 = v1;
    v37 = v1 + v31;
    v38 = v148;
    sub_213FB2E54(v37, v148, &qword_27C913090, &unk_2146E9DB0);
    if (v34(v38, 1, v32) == 1)
    {
      sub_213FB2DF4(v38, &qword_27C913090, &unk_2146E9DB0);
      sub_2144AEF6C(0xD000000000000018, 0x800000021478AE30, &v157);
      sub_213FB2DF4(&v157, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v159 = v32;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v157);
      (*(v33 + 32))(boxed_opaque_existential_0, v38, v32);
      sub_213FDC730(&v157, &v162);
      v40 = v164;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      *&v156[0] = v40;
      sub_2140524DC(&v162, 0xD000000000000018, 0x800000021478AE30, v41);
      v164 = *&v156[0];
    }

    v1 = v36;
  }

  v42 = v155;
  v43 = v1 + v155[6];
  v44 = *(v43 + 8);
  v45 = v1;
  if (v44)
  {
    v46 = *(v43 + 32);
    v48 = *(v43 + 16);
    v47 = *(v43 + 24);
    *&v157 = *v43;
    *(&v157 + 1) = v44;
    v158 = v48;
    v159 = v47;
    v160 = v46;
    v49 = sub_214048DD8();
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v162 = v49;
    sub_213FDC730(&v162, v156);
    v50 = v164;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v50;
    sub_2140524DC(v156, 0xD000000000000019, 0x800000021478AE10, v51);
    v164 = v161;
  }

  v52 = *(v1 + v42[7]);
  if (v52 != 2)
  {
    v159 = MEMORY[0x277D839B0];
    LOBYTE(v157) = v52 & 1;
    sub_213FDC730(&v157, &v162);
    v53 = v164;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v53;
    sub_2140524DC(&v162, 0xD000000000000024, 0x800000021478ADE0, v54);
    v164 = *&v156[0];
  }

  v55 = v1 + v42[8];
  if (*(v55 + 25))
  {
    goto LABEL_52;
  }

  if ((*(v55 + 24) & 1) == 0)
  {
    v56 = *(v55 + 16);
    v159 = MEMORY[0x277D83B88];
    *&v157 = v56;
    sub_213FDC730(&v157, &v162);
    v57 = v164;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v57;
    sub_2140524DC(&v162, 0xD00000000000001FLL, 0x800000021478ADC0, v58);
    v164 = *&v156[0];
  }

  v59 = *(v1 + v42[9]);
  if (v59 != 2)
  {
    v159 = MEMORY[0x277D839B0];
    LOBYTE(v157) = v59 & 1;
    sub_213FDC730(&v157, &v162);
    v60 = v164;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v60;
    sub_2140524DC(&v162, 0xD00000000000002BLL, 0x800000021478AD90, v61);
    v164 = *&v156[0];
  }

  v62 = (v1 + v42[10]);
  v63 = *v62;
  if (*v62 != 1)
  {
    v64 = v62[1];
    *&v156[0] = v63;
    *(&v156[0] + 1) = v64;
    v65 = sub_214048F2C();
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v157 = v65;
    sub_213FDC730(&v157, &v162);
    v66 = v164;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v66;
    sub_2140524DC(&v162, 0x63532E47522E4D48, 0xEE00656C75646568, v67);
    v164 = v161;
  }

  v68 = v42[11];
  v69 = v154;
  sub_213FB2E54(v1 + v68, v154, &unk_27C904F30, &unk_2146EFA20);
  v70 = sub_2146D8B88();
  v71 = *(v70 - 8);
  v72 = *(v71 + 48);
  v73 = v72(v69, 1, v70);
  sub_213FB2DF4(v69, &unk_27C904F30, &unk_2146EFA20);
  if (v73 != 1)
  {
    v74 = v149;
    sub_213FB2E54(v45 + v68, v149, &unk_27C904F30, &unk_2146EFA20);
    if (v72(v74, 1, v70) == 1)
    {
      __break(1u);
      goto LABEL_50;
    }

    v75 = sub_2146D8B28();
    v159 = MEMORY[0x277D837D0];
    *&v157 = v75;
    *(&v157 + 1) = v76;
    (*(v71 + 8))(v74, v70);
    sub_213FDC730(&v157, &v162);
    v77 = v164;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v77;
    sub_2140524DC(&v162, 0x495555656D6F486BLL, 0xE900000000000044, v78);
    v164 = *&v156[0];
  }

  v79 = v155;
  v80 = v45 + v155[12];
  v81 = *(v80 + 24);
  if (v81 >> 60 == 11)
  {
    goto LABEL_52;
  }

  if (v81 >> 60 != 15)
  {
    v82 = *(v80 + 16);
    v159 = MEMORY[0x277CC9318];
    *&v157 = v82;
    *(&v157 + 1) = v81;
    sub_213FDC730(&v157, &v162);
    sub_213FDCA18(v82, v81);
    v83 = v164;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v83;
    sub_2140524DC(&v162, 0xD000000000000014, 0x800000021478AD70, v84);
    v164 = *&v156[0];
  }

  v85 = v45 + v79[13];
  v86 = *(v85 + 24);
  if (v86)
  {
    if (v86 == 1)
    {
      goto LABEL_52;
    }

    v87 = *(v85 + 16);
    v159 = MEMORY[0x277D837D0];
    *&v157 = v87;
    *(&v157 + 1) = v86;
    sub_213FDC730(&v157, &v162);

    v88 = v164;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v88;
    sub_2140524DC(&v162, 0xD000000000000019, 0x800000021478AD50, v89);
    v164 = *&v156[0];
  }

  v90 = v79[14];
  v91 = v153;
  sub_213FB2E54(v45 + v90, v153, &unk_27C904F30, &unk_2146EFA20);
  v73 = v72(v91, 1, v70);
  sub_213FB2DF4(v91, &unk_27C904F30, &unk_2146EFA20);
  if (v73 != 1)
  {
    v92 = v147;
    sub_213FB2E54(v45 + v90, v147, &unk_27C904F30, &unk_2146EFA20);
    if (v72(v92, 1, v70) != 1)
    {
      v93 = sub_2146D8B28();
      v159 = MEMORY[0x277D837D0];
      *&v157 = v93;
      *(&v157 + 1) = v94;
      (*(v71 + 8))(v92, v70);
      sub_213FDC730(&v157, &v162);
      v95 = v164;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *&v156[0] = v95;
      sub_2140524DC(&v162, 0xD000000000000018, 0x800000021478AD30, v96);
      v164 = *&v156[0];
      goto LABEL_32;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_32:
  v97 = v155;
  v98 = v151;
  sub_213FB2E54(v45 + v155[15], v151, &qword_27C9041D8, &qword_2146ED5C0);
  v99 = v152;
  if ((*(v150 + 48))(v98, 1, v152) == 1)
  {
    sub_213FB2DF4(v98, &qword_27C9041D8, &qword_2146ED5C0);
    goto LABEL_36;
  }

  v100 = v146;
  sub_21404A900(v98, v146);
  v101 = sub_2145A8204();
  v102 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
  v103 = v101;
  v104 = [v102 initRequiringSecureCoding_];
  v105 = sub_2146D9588();
  sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  [v104 setClassName:v105 forClass:swift_getObjCClassFromMetadata()];

  [v104 encodeObject:v103 forKey:*MEMORY[0x277CCA308]];
  v154 = v103;

  v106 = *(v99 + 24);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v73 = v144;
  sub_213FB2E54(v100 + v106 + *(v107 + 28), v144, &unk_27C9131A0, &unk_2146E9D10);
  v108 = v143;
  v109 = v145;
  if ((*(v143 + 48))(v73, 1, v145) == 1)
  {
LABEL_51:
    sub_213FB2DF4(v73, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_52;
  }

  v110 = v142;
  (*(v108 + 32))(v142, v73, v109);
  v111 = sub_2146D8868();
  v113 = v112;
  (*(v108 + 8))(v110, v109);
  v159 = MEMORY[0x277D837D0];
  *&v157 = v111;
  *(&v157 + 1) = v113;
  sub_213FDC730(&v157, &v162);
  v114 = v164;
  v115 = swift_isUniquelyReferenced_nonNull_native();
  *&v156[0] = v114;
  sub_2140524DC(&v162, 0xD00000000000001CLL, 0x800000021478ACF0, v115);
  v116 = *&v156[0];
  v117 = [v104 encodedData];
  v118 = sub_2146D8A58();
  v120 = v119;

  v159 = MEMORY[0x277CC9318];
  *&v157 = v118;
  *(&v157 + 1) = v120;
  sub_213FDC730(&v157, &v162);
  v121 = swift_isUniquelyReferenced_nonNull_native();
  *&v156[0] = v116;
  sub_2140524DC(&v162, 0xD00000000000001ELL, 0x800000021478AD10, v121);

  sub_21404A964(v100, type metadata accessor for CloudKitSharingToken);
  v97 = v155;
  v164 = *&v156[0];
LABEL_36:
  v122 = v45 + v97[16];
  v123 = *(v122 + 24);
  if (v123)
  {
    if (v123 != 1)
    {
      v124 = *(v122 + 16);
      v159 = MEMORY[0x277D837D0];
      *&v157 = v124;
      *(&v157 + 1) = v123;
      sub_213FDC730(&v157, &v162);

      v125 = v164;
      v126 = swift_isUniquelyReferenced_nonNull_native();
      *&v156[0] = v125;
      sub_2140524DC(&v162, 0x4B4449726573556BLL, 0xEA00000000007965, v126);
      v164 = *&v156[0];
      goto LABEL_39;
    }

LABEL_52:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_39:
  v127 = v45 + v97[17];
  if (*(v127 + 25))
  {
    goto LABEL_52;
  }

  if ((*(v127 + 24) & 1) == 0)
  {
    v128 = *(v127 + 16);
    v159 = MEMORY[0x277D83B88];
    *&v157 = v128;
    sub_213FDC730(&v157, &v162);
    v129 = v164;
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v129;
    sub_2140524DC(&v162, 0xD000000000000013, 0x800000021478ACD0, v130);
    v164 = *&v156[0];
  }

  v131 = v45 + v97[18];
  if (*(v131 + 25))
  {
    goto LABEL_52;
  }

  if ((*(v131 + 24) & 1) == 0)
  {
    v132 = *(v131 + 16);
    v159 = MEMORY[0x277D83B88];
    *&v157 = v132;
    sub_213FDC730(&v157, &v162);
    v133 = v164;
    v134 = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v133;
    sub_2140524DC(&v162, 0xD000000000000023, 0x800000021478ACA0, v134);
    v164 = *&v156[0];
  }

  v135 = v45 + v97[19];
  v136 = *(v135 + 24);
  if (v136 >> 60 == 11)
  {
    goto LABEL_52;
  }

  if (v136 >> 60 != 15)
  {
    v137 = *(v135 + 16);
    v159 = MEMORY[0x277CC9318];
    *&v157 = v137;
    *(&v157 + 1) = v136;
    sub_213FDC730(&v157, &v162);
    sub_213FDCA18(v137, v136);
    v138 = v164;
    v139 = swift_isUniquelyReferenced_nonNull_native();
    *&v156[0] = v138;
    sub_2140524DC(&v162, 0xD00000000000002BLL, 0x800000021478AC70, v139);
    return *&v156[0];
  }

  return v164;
}

uint64_t sub_214048DD8()
{
  v1 = *(v0 + 24);
  v2 = sub_2146D9AE8();
  v9 = sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
  *&v8 = v2;
  sub_213FDC730(&v8, v7);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v7, 0xD000000000000010, 0x800000021478AC30, isUniquelyReferenced_nonNull_native);
  if (v1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
    *&v8 = v1;
    sub_213FDC730(&v8, v7);

    v5 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v7, 0xD00000000000001ALL, 0x800000021478AC50, v5);
    return v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214048F2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v73 - v5;
  v83 = sub_2146D8B08();
  v7 = *(v83 - 8);
  v8 = MEMORY[0x28223BE20](v83);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v81 = &v73 - v10;
  v80 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  MEMORY[0x28223BE20](v80);
  v86 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  v14 = v0[1];
  v74 = v4;
  v82 = v6;
  if (v13)
  {
    v15 = *(v13 + 16);
    v84 = v14;
    v85 = v11;
    if (v15)
    {
      v16 = (v13 + 32);
      v17 = MEMORY[0x277D84F90];
      do
      {
        v18 = v16[1];
        v91 = *v16;
        v92 = v18;
        v19 = v16[2];
        v20 = v16[3];
        v21 = v16[4];
        *(v95 + 11) = *(v16 + 75);
        v94 = v20;
        v95[0] = v21;
        v93 = v19;
        v89[2] = v16[2];
        v89[3] = v16[3];
        v90[0] = v16[4];
        *(v90 + 11) = *(v16 + 75);
        v89[0] = *v16;
        v89[1] = v16[1];
        sub_21404A808(&v91, &v87);
        v22 = sub_214049E5C();
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *&v87 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21409515C(0, *(v17 + 2) + 1, 1, v17);
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          v17 = sub_21409515C((v23 > 1), v24 + 1, 1, v17);
        }

        sub_21404A864(&v91);
        *(v17 + 2) = v24 + 1;
        sub_213FDC730(&v87, &v17[32 * v24 + 32]);
        v16 += 6;
        --v15;
      }

      while (v15);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    *(&v92 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    *&v91 = v17;
    sub_213FDC730(&v91, v89);
    v26 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v87 = v26;
    sub_2140524DC(v89, 0xD000000000000016, 0x800000021478AC10, isUniquelyReferenced_nonNull_native);
    result = v87;
    v4 = v74;
    v6 = v82;
    v14 = v84;
    v11 = v85;
    if (!v84)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x277D84F98];
    if (!v14)
    {
      return result;
    }
  }

  v73 = result;
  v28 = *(v14 + 2);
  if (!v28)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_50:
    *(&v92 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    *&v91 = v32;
    sub_213FDC730(&v91, v89);
    v71 = v73;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *&v87 = v71;
    sub_2140524DC(v89, 0xD000000000000016, 0x800000021478ABF0, v72);
    return v87;
  }

  v29 = &v14[(*(v11 + 80) + 32) & ~*(v11 + 80)];
  v30 = v11[9];
  v85 = (v7 + 48);
  v78 = (v7 + 32);
  v76 = v30;
  v77 = (v7 + 16);
  v31 = v7;
  v32 = MEMORY[0x277D84F90];
  v75 = (v31 + 8);
  v33 = v83;
  while (1)
  {
    v84 = v32;
    v34 = v86;
    sub_21404A7A4(v29, v86);
    sub_213FB2E54(v34, v6, &qword_27C913090, &unk_2146E9DB0);
    v35 = *v85;
    if ((*v85)(v6, 1, v33) == 1)
    {
      sub_213FB2DF4(v6, &qword_27C913090, &unk_2146E9DB0);
      v36 = MEMORY[0x277D84F98];
      goto LABEL_30;
    }

    v37 = v81;
    (*v78)(v81, v6, v33);
    *(&v92 + 1) = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v91);
    (*v77)(boxed_opaque_existential_0, v37, v33);
    sub_213FDC730(&v91, v89);
    v39 = MEMORY[0x277D84F98];
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v87 = v39;
    v42 = sub_21408C300(0x7472617453444D48, 0xEF79654B65746144);
    v43 = *(v39 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      break;
    }

    v46 = v41;
    if (*(v39 + 24) >= v45)
    {
      if (v40)
      {
        v36 = v87;
        if ((v41 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_214482C24();
        v36 = v87;
        if ((v46 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_2140506C8(v45, v40);
      v47 = sub_21408C300(0x7472617453444D48, 0xEF79654B65746144);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_56;
      }

      v42 = v47;
      v36 = v87;
      if ((v46 & 1) == 0)
      {
LABEL_27:
        v36[(v42 >> 6) + 8] |= 1 << v42;
        v50 = (v36[6] + 16 * v42);
        *v50 = 0x7472617453444D48;
        v50[1] = 0xEF79654B65746144;
        sub_213FDC730(v89, (v36[7] + 32 * v42));
        v51 = v36[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_54;
        }

        v36[2] = v53;
        goto LABEL_29;
      }
    }

    v49 = (v36[7] + 32 * v42);
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_213FDC730(v89, v49);
LABEL_29:
    (*v75)(v81, v33);
    v4 = v74;
    v6 = v82;
LABEL_30:
    sub_213FB2E54(v86 + *(v80 + 20), v4, &qword_27C913090, &unk_2146E9DB0);
    if (v35(v4, 1, v33) != 1)
    {
      v54 = v79;
      (*v78)(v79, v4, v33);
      *(&v92 + 1) = v33;
      v55 = __swift_allocate_boxed_opaque_existential_0(&v91);
      (*v77)(v55, v54, v33);
      sub_213FDC730(&v91, v89);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v36;
      v57 = sub_21408C300(0x6144646E45444D48, 0xED000079654B6574);
      v59 = v36[2];
      v60 = (v58 & 1) == 0;
      v52 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v52)
      {
        goto LABEL_53;
      }

      v62 = v58;
      if (v36[3] >= v61)
      {
        v32 = v84;
        if (v56)
        {
          goto LABEL_37;
        }

        v65 = v57;
        sub_214482C24();
        v57 = v65;
        v36 = v87;
        if ((v62 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_38:
        v64 = (v36[7] + 32 * v57);
        __swift_destroy_boxed_opaque_existential_1(v64);
        sub_213FDC730(v89, v64);
      }

      else
      {
        sub_2140506C8(v61, v56);
        v57 = sub_21408C300(0x6144646E45444D48, 0xED000079654B6574);
        v32 = v84;
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_56;
        }

LABEL_37:
        v36 = v87;
        if (v62)
        {
          goto LABEL_38;
        }

LABEL_40:
        v36[(v57 >> 6) + 8] |= 1 << v57;
        v66 = v36[6] + 16 * v57;
        strcpy(v66, "HMDEndDateKey");
        *(v66 + 14) = -4864;
        sub_213FDC730(v89, (v36[7] + 32 * v57));
        v67 = v36[2];
        v52 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v52)
        {
          goto LABEL_55;
        }

        v36[2] = v68;
      }

      (*v75)(v79, v83);
      v6 = v82;
      goto LABEL_43;
    }

    sub_213FB2DF4(v4, &qword_27C913090, &unk_2146E9DB0);
    v32 = v84;
LABEL_43:
    sub_21404A964(v86, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
    *(&v92 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v91 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_21409515C(0, *(v32 + 2) + 1, 1, v32);
    }

    v70 = *(v32 + 2);
    v69 = *(v32 + 3);
    if (v70 >= v69 >> 1)
    {
      v32 = sub_21409515C((v69 > 1), v70 + 1, 1, v32);
    }

    *(v32 + 2) = v70 + 1;
    sub_213FDC730(&v91, &v32[32 * v70 + 32]);
    v29 += v76;
    if (!--v28)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_2146DA8D8();
  __break(1u);
  return result;
}

void sub_214049918(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_21402D9F8(a1, a2);
  v8 = sub_21404A62C();
  if (!v3)
  {
    v20 = v8;
    sub_213FB54FC(a1, a2);
    v21 = v20;
    [v21 _enableStrictSecureDecodingMode];
    [v21 setDecodingFailurePolicy_];
    v22 = sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = sub_2146D9588();
    [v21 setClass:ObjCClassFromMetadata forClassName:v24];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2146EA710;
    *(v25 + 32) = v22;
    sub_2146D95B8();
    sub_2146D9D08();

    if (v32[3])
    {
      if (swift_dynamicCast())
      {
        sub_2145A8530(v33, a3);
LABEL_10:

        return;
      }
    }

    else
    {
      sub_213FB2DF4(v32, &qword_27C913170, &qword_2146EAB20);
    }

    v29 = sub_2146D9F58();
    swift_allocError();
    v31 = v30;
    sub_2146D9F28();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84168], v29);
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FB54FC(a1, a2);
  v33 = v3;
  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    sub_21404A6EC();
    swift_allocError();
    v11 = v10;
    v12 = v32[4];
    v13 = [v12 domain];
    v14 = sub_2146D95B8();
    v16 = v15;

    MEMORY[0x2160545D0](v14, v16);

    *v11 = 0xD000000000000014;
    v11[1] = 0x800000021478AAD0;
    v32[0] = [v12 code];
    v17 = sub_2146DA428();
    v19 = v18;

    v11[2] = v17;
    v11[3] = v19;
    v11[4] = 0xD000000000000014;
    v11[5] = 0x800000021478AAB0;
    swift_willThrow();
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v27 = v26;
    v28 = v3;
    sub_214689A34(v3, 0xD000000000000014, 0x800000021478AAB0, v27);
    swift_willThrow();
  }
}

uint64_t sub_214049D74()
{
  sub_214048DD8();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214049DF4()
{
  sub_214048F2C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214049E5C()
{
  if (*(v0 + 25))
  {
    goto LABEL_11;
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 57);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 89);
  v7 = MEMORY[0x277D84F98];
  if ((*(v0 + 24) & 1) == 0)
  {
    v8 = *(v0 + 16);
    v15 = MEMORY[0x277D83B88];
    *&v14 = v8;
    sub_213FDC730(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v13, 0xD000000000000027, 0x800000021478ABC0, isUniquelyReferenced_nonNull_native);
  }

  if (v3)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    v15 = MEMORY[0x277D83B88];
    *&v14 = v1;
    sub_213FDC730(&v14, v13);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v13, 0xD000000000000025, 0x800000021478AB90, v10);
  }

  if (v6)
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      v15 = MEMORY[0x277D83B88];
      *&v14 = v4;
      sub_213FDC730(&v14, v13);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v13, 0xD00000000000002BLL, 0x800000021478AB60, v11);
    }

    return v7;
  }

  return result;
}

uint64_t sub_21404A020()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_2146D8B08();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  sub_213FB2E54(v1, v7, &qword_27C913090, &unk_2146E9DB0);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C913090, &unk_2146E9DB0);
    v16 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v28 = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
    (*(v9 + 16))(boxed_opaque_existential_0, v14, v8);
    sub_213FDC730(&v27, v26);
    v18 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v18;
    sub_2140524DC(v26, 0x7472617453444D48, 0xEF79654B65746144, isUniquelyReferenced_nonNull_native);
    (*(v9 + 8))(v14, v8);
    v16 = v25;
  }

  v20 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  sub_213FB2E54(v1 + *(v20 + 20), v5, &qword_27C913090, &unk_2146E9DB0);
  if (v15(v5, 1, v8) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    (*(v9 + 32))(v12, v5, v8);
    v28 = v8;
    v21 = __swift_allocate_boxed_opaque_existential_0(&v27);
    (*(v9 + 16))(v21, v12, v8);
    sub_213FDC730(&v27, v26);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v16;
    sub_2140524DC(v26, 0x6144646E45444D48, 0xED000079654B6574, v22);
    (*(v9 + 8))(v12, v8);
    return v25;
  }

  return v16;
}

uint64_t sub_21404A3A4()
{
  sub_214049E5C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404A410(uint64_t (*a1)(void))
{
  a1();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21404A468()
{
  sub_214048DD8();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404A500()
{
  sub_214048F2C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404A568()
{
  sub_214049E5C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404A5D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_2146D9468();

  return v3;
}

id sub_21404A62C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2146D8A38();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2146D8838();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_21404A6EC()
{
  result = qword_280B35240;
  if (!qword_280B35240)
  {
    result = swift_getWitnessTable(byte_21477C4C0, &type metadata for Explosion, v0, v1);
    atomic_store(result, &qword_280B35240);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21404A7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21404A8B8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21404A900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitSharingToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21404A964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21404A9C4()
{
  sub_21404AA18();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404AA18()
{
  v0 = sub_21441AD10();
  v7 = MEMORY[0x277CC9318];
  *&v6 = v0;
  *(&v6 + 1) = v1;
  sub_213FDC730(&v6, v5);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x61447463656A624FLL, 0xED000079654B6174, isUniquelyReferenced_nonNull_native);
  return v2;
}

uint64_t sub_21404ABB0()
{
  sub_21404AA18();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404AC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E0, &qword_214736EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_21404AC70()
{
  v1 = v0;
  v2 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for IDSClientProtobufMessageType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21404B7E8(v1, v10);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    goto LABEL_12;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      v19 = *(v10 + 48);
      v20 = *(v10 + 16);
      v52 = *(v10 + 32);
      v53 = v19;
      v21 = *(v10 + 48);
      v54 = *(v10 + 64);
      v22 = *(v10 + 16);
      v50 = *v10;
      v51 = v22;
      v44 = v52;
      v45 = v21;
      v46 = *(v10 + 64);
      LOBYTE(v55[0]) = *(v10 + 80);
      LOBYTE(v47) = *(v10 + 80);
      v42 = v50;
      v43 = v20;
      v18 = sub_214417804();
      sub_21404B84C(&v50);
      return v18;
    }

    v38 = *(v10 + 80);
    v54 = *(v10 + 64);
    v55[0] = v38;
    *(v55 + 10) = *(v10 + 90);
    v39 = *(v10 + 16);
    v50 = *v10;
    v51 = v39;
    v40 = *(v10 + 48);
    v52 = *(v10 + 32);
    v53 = v40;
    v18 = sub_21404B1A0(&qword_27C904210, &qword_2146EAB60, &qword_27C904218);
    v26 = &qword_27C904200;
    v27 = &qword_2146EAB58;
LABEL_28:
    sub_213FB2DF4(&v50, v26, v27);
    return v18;
  }

  if (result == 6)
  {
    v23 = *(v10 + 80);
    v54 = *(v10 + 64);
    v55[0] = v23;
    *(v55 + 10) = *(v10 + 90);
    v24 = *(v10 + 16);
    v50 = *v10;
    v51 = v24;
    v25 = *(v10 + 48);
    v52 = *(v10 + 32);
    v53 = v25;
    v18 = sub_21404B1A0(&qword_27C904220, &qword_2146EAB68, &qword_27C904228);
    v26 = &qword_27C9041F8;
    v27 = &unk_2146F6E00;
    goto LABEL_28;
  }

  if (result == 7)
  {
    v12 = *v10;
    v7 = *(v10 + 4);
    v10 = *(v10 + 5);
    result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
    if (result)
    {
      v4 = result;
      [result writeUint32:v12 forTag:1];
      if (v7 != 2)
      {
        [v4 writeBOOL:v7 & 1 forTag:2];
      }

      if (v10 != 2)
      {
        [v4 writeBOOL:v10 & 1 forTag:3];
      }

      result = [v4 immutableData];
      if (!result)
      {
        __break(1u);
LABEL_12:
        if (result > 1)
        {
          if (result == 2)
          {
            sub_21404B8F4(v10, v4, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
            v18 = sub_214085580();
            sub_21404B95C(v4, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
          }

          else
          {
            v28 = *(v10 + 80);
            v29 = *(v10 + 48);
            v54 = *(v10 + 64);
            v55[0] = v28;
            v30 = *(v10 + 80);
            v55[1] = *(v10 + 96);
            v31 = *(v10 + 16);
            v50 = *v10;
            v51 = v31;
            v32 = *(v10 + 48);
            v34 = *v10;
            v33 = *(v10 + 16);
            v52 = *(v10 + 32);
            v53 = v32;
            v46 = v54;
            v47 = v30;
            v48 = *(v10 + 96);
            v42 = v34;
            v43 = v33;
            v56 = *(v10 + 112);
            v49 = *(v10 + 112);
            v44 = v52;
            v45 = v29;
            v18 = sub_2146715C0();
            sub_21404B8A0(&v50);
          }
        }

        else if (result)
        {
          sub_21404B8F4(v10, v7, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
          v18 = sub_2146015F8();
          sub_21404B95C(v7, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        }

        else
        {
          v13 = *v10;
          v14 = *(v10 + 8);
          sub_2146D87D8();
          swift_allocObject();
          sub_2146D87C8();
          *&v50 = v13;
          *(&v50 + 1) = v14;
          sub_21404B9BC();
          v15 = sub_2146D87B8();
          v17 = v16;
          sub_21402D9F8(v15, v16);
          v18 = sub_2146D8A38();
          sub_213FB54FC(v15, v17);
          sub_213FB54FC(v15, v17);
        }

        return v18;
      }

      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_31;
  }

  v36 = *v10;
  v35 = *(v10 + 4);
  v37 = *(v10 + 8);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = result;
  [result writeUint32:v36 forTag:1];
  if ((v37 & 1) == 0)
  {
    [v4 writeUint32:v35 forTag:2];
  }

  result = [v4 immutableData];
  if (result)
  {
LABEL_26:
    v18 = result;

    return v18;
  }

LABEL_32:
  __break(1u);
  return result;
}

id sub_21404B1A0(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v7)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = *(v3 + 4);
  [v7 writeUint32:*v3 forTag:1];
  if (v9)
  {

    v10 = sub_2146D9588();

    [v8 writeString:v10 forTag:2];

    sub_2146D8608();
    swift_allocObject();
    sub_2146D85F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    sub_21404BA10(a3, a1, a2);
    v11 = sub_2146D85E8();
    v13 = v12;

    v14 = sub_2146D8A38();
    sub_213FB54FC(v11, v13);
    [v8 writeData:v14 forTag:3];

    v15 = [v8 immutableData];
    if (v15)
    {
      v16 = v15;

      return v16;
    }

    goto LABEL_6;
  }

LABEL_7:
  sub_2146DA018();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t IDSProtobuf.bridgedToObjectiveC.getter()
{
  sub_21404B408();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404B408()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E8, &qword_2146F4BA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for IDSClientProtobufMessageType(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404B72C(v1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_213FB2DF4(v4, &qword_27C9041E8, &qword_2146F4BA0);
    v9 = MEMORY[0x277D84F98];
  }

  else
  {
    sub_21404B8F4(v4, v8, type metadata accessor for IDSClientProtobufMessageType);
    v10 = sub_21404AC70();
    v24 = sub_21404B79C();
    *&v23 = v10;
    sub_213FDC730(&v23, v22);
    v11 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v11;
    sub_2140524DC(v22, 0xD000000000000012, 0x8000000214788260, isUniquelyReferenced_nonNull_native);
    sub_21404B95C(v8, type metadata accessor for IDSClientProtobufMessageType);
    v9 = v21;
  }

  v13 = type metadata accessor for IDSProtobuf(0);
  v14 = v1 + *(v13 + 20);
  if ((*(v14 + 2) & 1) == 0)
  {
    v15 = *v14;
    v24 = MEMORY[0x277D84C58];
    LOWORD(v23) = v15;
    sub_213FDC730(&v23, v22);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v9;
    sub_2140524DC(v22, 0xD000000000000012, 0x8000000214788280, v16);
    v9 = v21;
  }

  v17 = *(v1 + *(v13 + 24));
  if (v17 != 2)
  {
    v24 = MEMORY[0x277D839B0];
    LOBYTE(v23) = v17 & 1;
    sub_213FDC730(&v23, v22);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v9;
    sub_2140524DC(v22, 0xD000000000000018, 0x80000002147882A0, v18);
    return v21;
  }

  return v9;
}

uint64_t sub_21404B6D8()
{
  sub_21404B408();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404B72C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E8, &qword_2146F4BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21404B79C()
{
  result = qword_27C9041F0;
  if (!qword_27C9041F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C9041F0);
  }

  return result;
}

uint64_t sub_21404B7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientProtobufMessageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21404B8F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21404B95C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21404B9BC()
{
  result = qword_27C904208;
  if (!qword_27C904208)
  {
    result = swift_getWitnessTable(aA_61, &type metadata for IDSSampleProtobufMessage, v0, v1);
    atomic_store(result, &qword_27C904208);
  }

  return result;
}

uint64_t sub_21404BA10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(byte_214700558, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21404BA7C()
{
  v1 = v0;
  v2 = type metadata accessor for IDSActivitySharingInvitation(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for IDSHealthInvitation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for IDSKCSharingInvitation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for IDSHomeKitInvitation(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for IDSSampleInvitation(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for IDSDictionaryContext(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21404C614(v1, v19, type metadata accessor for IDSDictionaryContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v21 = type metadata accessor for IDSHomeKitInvitation;
        sub_21404C6D0(v19, v13, type metadata accessor for IDSHomeKitInvitation);
        v22 = sub_214047BB0();
        v23 = v13;
      }

      else
      {
        v21 = type metadata accessor for IDSKCSharingInvitation;
        sub_21404C6D0(v19, v10, type metadata accessor for IDSKCSharingInvitation);
        v22 = sub_21404C9A0();
        v23 = v10;
      }
    }

    else
    {
      v21 = type metadata accessor for IDSSampleInvitation;
      sub_21404C6D0(v19, v16, type metadata accessor for IDSSampleInvitation);
      v22 = sub_2144A2620();
      v23 = v16;
    }

LABEL_11:
    v24 = v21;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      memcpy(v27, v19, 0x151uLL);
      memcpy(v26, v19, sizeof(v26));
      v22 = sub_21404E400();
      sub_21404C67C(v27);
      return v22;
    }

    v21 = type metadata accessor for IDSActivitySharingInvitation;
    sub_21404C6D0(v19, v4, type metadata accessor for IDSActivitySharingInvitation);
    v22 = sub_21404FD64();
    v23 = v4;
    goto LABEL_11;
  }

  sub_21404C6D0(v19, v7, type metadata accessor for IDSHealthInvitation);
  v22 = sub_21404AA18();
  v23 = v7;
  v24 = type metadata accessor for IDSHealthInvitation;
LABEL_12:
  sub_21404C738(v23, v24);
  return v22;
}

uint64_t sub_21404BE10()
{
  v1 = type metadata accessor for IDSDictionaryContext(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IDSInvitationContextType(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404C614(v0, v6, type metadata accessor for IDSInvitationContextType);
  sub_21404C6D0(v6, v3, type metadata accessor for IDSDictionaryContext);
  sub_21404BA7C();
  sub_21404C738(v3, type metadata accessor for IDSDictionaryContext);
  v7 = sub_2146D9468();

  return v7;
}

uint64_t sub_21404BF68()
{
  v1 = v0;
  v2 = type metadata accessor for IDSDictionaryContext(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IDSInvitationContextType(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 24);
  if (!v8 || (v9 = *(v1 + 16), v24 = MEMORY[0x277D837D0], *&v23 = v9, *(&v23 + 1) = v8, sub_213FDC730(&v23, v22), , v10 = MEMORY[0x277D84F98], v11 = swift_isUniquelyReferenced_nonNull_native(), v21 = v10, sub_2140524DC(v22, 21347, 0xE200000000000000, v11), *(v1 + 64) == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v12 = v21;
    v13 = *(v1 + 56);
    v24 = MEMORY[0x277D83B88];
    *&v23 = v13;
    sub_213FDC730(&v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v12;
    sub_2140524DC(v22, 21603, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
    v15 = v21;
    v16 = type metadata accessor for IDSInvitationContext(0);
    sub_21404C614(v1 + *(v16 + 24), v7, type metadata accessor for IDSInvitationContextType);
    sub_21404C6D0(v7, v4, type metadata accessor for IDSDictionaryContext);
    v17 = sub_21404BA7C();
    sub_21404C738(v4, type metadata accessor for IDSDictionaryContext);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v23 = v17;
    sub_213FDC730(&v23, v22);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v15;
    sub_2140524DC(v22, 17507, 0xE200000000000000, v18);
    return v21;
  }

  return result;
}

uint64_t sub_21404C1F0(uint64_t (*a1)(void))
{
  a1();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21404C248()
{
  v1 = v0;
  v2 = sub_21404BF68();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *&v19 = v2;
  sub_213FDC730(&v19, v18);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v18, 99, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v5 = type metadata accessor for IDSInvitation(0);
  v6 = v1 + *(v5 + 20);
  if (*(v6 + 24) == 1)
  {
    goto LABEL_6;
  }

  v7 = v5;
  v8 = *(v6 + 16);
  v20 = MEMORY[0x277D83B88];
  *&v19 = v8;
  sub_213FDC730(&v19, v18);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v18, 115, 0xE100000000000000, v9);
  v10 = (v1 + *(v7 + 24));
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    v20 = MEMORY[0x277D839F8];
    *&v19 = v11;
    sub_213FDC730(&v19, v18);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v18, 101, 0xE100000000000000, v12);
  }

  v13 = v1 + *(v7 + 28);
  v14 = *(v13 + 24);
  if (!v14)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = *(v13 + 16);
    v20 = MEMORY[0x277D837D0];
    *&v19 = v15;
    *(&v19 + 1) = v14;
    sub_213FDC730(&v19, v18);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v18, 4475253, 0xE300000000000000, v16);
    return v3;
  }

  return result;
}

uint64_t sub_21404C450()
{
  v1 = type metadata accessor for IDSDictionaryContext(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404C614(v0, v6, type metadata accessor for IDSInvitationContextType);
  sub_21404C6D0(v6, v4, type metadata accessor for IDSDictionaryContext);
  sub_21404BA7C();
  sub_21404C738(v4, type metadata accessor for IDSDictionaryContext);
  v7 = sub_2146D9468();

  return v7;
}

uint64_t sub_21404C5BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_21404C614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21404C6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21404C738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21404C798()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D84B78];
  *(inited + 48) = v1;
  sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  v4 = sub_2146D9468();

  return v4;
}

uint64_t sub_21404C868()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D84B78];
  *(inited + 48) = v1;
  sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  v4 = sub_2146D9468();

  return v4;
}

uint64_t sub_21404C938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21404C9A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v57 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - v4;
  v6 = sub_2146D8958();
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for IDSKCSharingInvitation(0);
  v13 = v0;
  v14 = v0 + *(v12 + 20);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = sub_2145A8688(v11);
  v18 = v17;
  sub_213FB2DF4(v11, &qword_27C904230, &qword_2146EAB88);
  v19 = v58;
  v57 = v12;
  v20 = v18;
  v21 = *(v13 + 24);
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v6;
  v23 = v13;
  v24 = *(v13 + 16);
  v63 = MEMORY[0x277D837D0];
  *&v62 = v24;
  *(&v62 + 1) = v21;
  sub_213FDC730(&v62, v61);

  v25 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v25;
  sub_2140524DC(v61, 0x444970756F7267, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v64 = v60;
  v27 = v14 + *(type metadata accessor for CloudKitSharingToken(0) + 24);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v27 + *(v28 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  v29 = v19;
  if ((*(v19 + 48))(v5, 1, v22) == 1)
  {
    sub_213FB2DF4(v5, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_12;
  }

  (*(v19 + 32))(v8, v5, v22);
  v30 = sub_2146D8868();
  v32 = v31;
  (*(v29 + 8))(v8, v22);
  v33 = MEMORY[0x277D837D0];
  v63 = MEMORY[0x277D837D0];
  *&v62 = v30;
  *(&v62 + 1) = v32;
  sub_213FDC730(&v62, v61);
  v34 = v64;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v34;
  sub_2140524DC(v61, 0x4C52556572616873, 0xE800000000000000, v35);
  v36 = v60;
  v64 = v60;
  v63 = MEMORY[0x277CC9318];
  *&v62 = v16;
  *(&v62 + 1) = v20;
  v37 = v20;
  sub_213FDC730(&v62, v61);
  sub_21402D9F8(v16, v20);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v36;
  sub_2140524DC(v61, 0x6974617469766E69, 0xEF6E656B6F546E6FLL, v38);
  v39 = v57;
  v40 = v23 + *(v57 + 24);
  v41 = *(v40 + 24);
  if (!v41)
  {
LABEL_12:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v42 = v60;
  v43 = *(v40 + 16);
  v63 = v33;
  *&v62 = v43;
  *(&v62 + 1) = v41;
  sub_213FDC730(&v62, v61);

  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v42;
  sub_2140524DC(v61, 0x4865657469766E69, 0xED0000656C646E61, v44);
  v45 = v59;
  v64 = v60;
  sub_213FB2E54(v23 + *(v39 + 28), v59, &qword_27C913090, &unk_2146E9DB0);
  v46 = sub_2146D8B08();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_213FB2DF4(v45, &qword_27C913090, &unk_2146E9DB0);
    sub_2144AEF6C(0x656D6954746E6573, 0xE800000000000000, &v62);
    sub_213FB2DF4(&v62, &qword_27C913170, &qword_2146EAB20);
  }

  else
  {
    v63 = v46;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
    (*(v47 + 32))(boxed_opaque_existential_0, v45, v46);
    sub_213FDC730(&v62, v61);
    v49 = v64;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v49;
    sub_2140524DC(v61, 0x656D6954746E6573, 0xE800000000000000, v50);
    v64 = v60;
  }

  v51 = (v23 + *(v39 + 32));
  v52 = v51[1];
  if (v52)
  {
    v53 = *v51;
    v63 = v33;
    *&v62 = v53;
    *(&v62 + 1) = v52;
    sub_213FDC730(&v62, v61);

    v54 = v64;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v54;
    sub_2140524DC(v61, 0x6D614E70756F7267, 0xE900000000000065, v55);
    sub_213FB54FC(v16, v37);
    return v60;
  }

  else
  {
    sub_2144AEF6C(0x6D614E70756F7267, 0xE900000000000065, &v62);
    sub_213FB54FC(v16, v37);
    sub_213FB2DF4(&v62, &qword_27C913170, &qword_2146EAB20);
    return v64;
  }
}

uint64_t sub_21404D1AC()
{
  sub_21404C9A0();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404D200@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *x8_0@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_2146D8928();
  v11 = sub_2146D8958();
  result = (*(*(v11 - 8) + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_21402D9F8(a1, a2);
    return sub_2145A9478(a1, a2, v10, 0, 0, x8_0);
  }

  return result;
}

uint64_t sub_21404D320()
{
  sub_21404C9A0();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21404D374()
{
  v0 = sub_21404D3BC();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_21404D3BC()
{
  v1 = v0;
  v129 = *MEMORY[0x277D85DE8];
  v2 = sub_2146D8B08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v109 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v118 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v112 = &v109 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v116 = *(v123 - 8);
  v9 = MEMORY[0x28223BE20](v123);
  v117 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v113 = &v109 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v111 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v122 = &v109 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v109 - v20;
  v22 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    v107 = v22;
    swift_once();
    v22 = v107;
  }

  v23 = qword_280B35410;
  sub_2146D91D8(v22, &dword_213FAF000, qword_280B35410, "Creating shared album object for data packaging", 47, 2, MEMORY[0x277D84F90]);
  v24 = [objc_allocWithZone(MEMORY[0x277CFFFC8]) init];
  v25 = *(v1 + 24);
  if (v25)
  {
    if (v25 == 1)
    {
      goto LABEL_71;
    }

    v27 = *(v1 + 16);

    v26 = sub_2146D9588();
    sub_213FDC6D0(v27, v25);
  }

  else
  {
    v26 = 0;
  }

  [v24 setOwnerEmail_];

  if (*(v1 + 48))
  {
    v28 = sub_2146D9588();
  }

  else
  {
    v28 = 0;
  }

  [v24 setOwnerFullName_];

  v29 = *(v1 + 80);
  if (v29)
  {
    if (v29 == 1)
    {
      goto LABEL_71;
    }

    v31 = *(v1 + 72);

    v30 = sub_2146D9588();
    sub_213FDC6D0(v31, v29);
  }

  else
  {
    v30 = 0;
  }

  [v24 setOwnerPersonID_];

  if (*(v1 + 104))
  {
    v32 = sub_2146D9588();
  }

  else
  {
    v32 = 0;
  }

  [v24 setOwnerFirstName_];

  if (*(v1 + 120))
  {
    v33 = sub_2146D9588();
  }

  else
  {
    v33 = 0;
  }

  v119 = v19;
  v120 = v23;
  [v24 setOwnerLastName_];

  v125 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  sub_213FB2E54(v1 + v125[10], v21, &qword_27C913090, &unk_2146E9DB0);
  v114 = *(v3 + 48);
  v115 = v3 + 48;
  v34 = 0;
  if (v114(v21, 1, v2) != 1)
  {
    v34 = sub_2146D8AD8();
    (*(v3 + 8))(v21, v2);
  }

  v110 = v3;
  v121 = v2;
  v124 = v24;
  [v24 setSubscriptionDate_];

  v35 = v125[11];
  v36 = v122;
  sub_213FB2E54(v1 + v35, v122, &unk_27C904F30, &unk_2146EFA20);
  v37 = sub_2146D8B88();
  v38 = *(v37 - 8);
  v39 = v38 + 48;
  v40 = *(v38 + 48);
  v41 = v40(v36, 1, v37);
  sub_213FB2DF4(v36, &unk_27C904F30, &unk_2146EFA20);
  v42 = 0;
  if (v41 != 1)
  {
    v43 = v1 + v35;
    v44 = v111;
    sub_213FB2E54(v43, v111, &unk_27C904F30, &unk_2146EFA20);
    if (v40(v44, 1, v37) == 1)
    {
      __break(1u);
LABEL_68:
      v108 = v39;
LABEL_70:
      sub_213FB2DF4(v108, &qword_27C903F40, &unk_2146F1C50);
      goto LABEL_71;
    }

    sub_2146D8B28();
    (*(v38 + 8))(v44, v37);
    v42 = sub_2146D9588();
  }

  v45 = v124;
  [v124 setGUID_];

  v46 = v1 + v125[12];
  v47 = *(v46 + 24);
  if (v47)
  {
    v49 = v116;
    if (v47 == 1)
    {
      goto LABEL_71;
    }

    v50 = *(v46 + 16);

    v48 = sub_2146D9588();
    sub_213FDC6D0(v50, v47);
  }

  else
  {
    v48 = 0;
    v49 = v116;
  }

  [v45 setCtag_];

  v51 = v1 + v125[13];
  if (*(v51 + 20))
  {
    goto LABEL_71;
  }

  [v45 setRelationshipState_];
  [v45 setOwnerIsWhitelisted_];
  v52 = v1 + v125[14];
  v53 = *(v52 + 24);
  if (v53)
  {
    if (v53 == 1)
    {
      goto LABEL_71;
    }

    v55 = *(v52 + 16);

    v54 = sub_2146D9588();
    sub_213FDC6D0(v55, v53);
  }

  else
  {
    v54 = 0;
  }

  [v45 setForeignCtag_];

  v56 = v1 + v125[15];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v58 = v56 + *(v57 + 28);
  v39 = v112;
  sub_213FB2E54(v58, v112, &qword_27C903F40, &unk_2146F1C50);
  v59 = *(v49 + 48);
  if (v59(v39, 1, v123) == 1)
  {
    goto LABEL_68;
  }

  v60 = v113;
  sub_214032588(v39, v113);
  v61 = sub_2146D8958();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v60, 1, v61) == 1)
  {
    sub_213FB2DF4(v60, &unk_27C9131A0, &unk_2146E9D10);
    v64 = 0;
  }

  else
  {
    sub_2146D8868();
    v122 = v1;
    (*(v62 + 8))(v60, v61);
    v64 = sub_2146D9588();
    v1 = v122;
  }

  [v124 setURLString_];

  v65 = v118;
  sub_213FB2E54(v1 + v125[16] + *(v57 + 28), v118, &qword_27C903F40, &unk_2146F1C50);
  if (v59(v65, 1, v123) == 1)
  {
    v108 = v65;
    goto LABEL_70;
  }

  v66 = v117;
  sub_214032588(v65, v117);
  v67 = v63(v66, 1, v61);
  v68 = v121;
  v69 = v119;
  if (v67 == 1)
  {
    sub_213FB2DF4(v66, &unk_27C9131A0, &unk_2146E9D10);
    v70 = 0;
  }

  else
  {
    sub_2146D8868();
    (*(v62 + 8))(v66, v61);
    v70 = sub_2146D9588();
  }

  v71 = v124;
  [v124 setPublicURLString_];

  v72 = v125;
  [v71 setIsFamilySharedAlbum_];
  if (*(v1 + v72[19] + 8))
  {
    v73 = sub_2146D9588();
    [v71 setMetadataValue:v73 forKey:*MEMORY[0x277D00020]];
  }

  v74 = *(v1 + v125[20]);
  v75 = MEMORY[0x277D837D0];
  if (v74 != 2)
  {
    v76 = (v74 & 1) == 0;
    v77 = 48;
    if (!v76)
    {
      v77 = 49;
    }

    v128 = MEMORY[0x277D837D0];
    v126 = v77;
    v127 = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_1(&v126, MEMORY[0x277D837D0]);
    v78 = sub_2146DA698();
    __swift_destroy_boxed_opaque_existential_1(&v126);
    [v71 setMetadataValue:v78 forKey:*MEMORY[0x277D00018]];
    swift_unknownObjectRelease();
  }

  v79 = *(v1 + v125[21]);
  if (v79 != 2)
  {
    v76 = (v79 & 1) == 0;
    v80 = 48;
    if (!v76)
    {
      v80 = 49;
    }

    v128 = v75;
    v126 = v80;
    v127 = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_1(&v126, v75);
    v81 = sub_2146DA698();
    __swift_destroy_boxed_opaque_existential_1(&v126);
    [v71 setMetadataValue:v81 forKey:*MEMORY[0x277D00000]];
    swift_unknownObjectRelease();
  }

  v82 = v1 + v125[22];
  v83 = *(v82 + 24);
  if (v83)
  {
    if (v83 == 1)
    {
      goto LABEL_71;
    }

    v84 = *(v82 + 16);

    v85 = sub_2146D9588();
    sub_213FDC6D0(v84, v83);
    [v71 setMetadataValue:v85 forKey:*MEMORY[0x277D00028]];
  }

  sub_213FB2E54(v1 + v125[23], v69, &qword_27C913090, &unk_2146E9DB0);
  if (v114(v69, 1, v68) == 1)
  {
    sub_213FB2DF4(v69, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    v86 = v110;
    v87 = v109;
    (*(v110 + 32))(v109, v69, v68);
    v88 = sub_2146D8AD8();
    [v71 setMetadataValue:v88 forKey:*MEMORY[0x277D00008]];

    (*(v86 + 8))(v87, v68);
  }

  v89 = v1 + v125[24];
  v90 = *(v89 + 24);
  if (v90)
  {
    if (v90 != 1)
    {
      v91 = *(v89 + 16);

      v92 = sub_2146D9588();
      sub_213FDC6D0(v91, v90);
      [v71 setMetadataValue:v92 forKey:*MEMORY[0x277D00010]];

      goto LABEL_61;
    }

LABEL_71:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_61:
  v93 = sub_2146D9B88();
  v94 = v120;
  sub_2146D91D8(v93, &dword_213FAF000, v120, "Packaging shared album data", 27, 2, MEMORY[0x277D84F90]);
  v95 = objc_opt_self();
  v126 = 0;
  v96 = [v95 archivedDataWithRootObject:v71 requiringSecureCoding:1 error:&v126];
  v97 = v126;
  if (v96)
  {
    v98 = sub_2146D8A58();

    v99 = sub_2146D9B88();
    sub_2146D91D8(v99, &dword_213FAF000, v94, "Sucessfully packaged shared album data", 38, 2, MEMORY[0x277D84F90]);
  }

  else
  {
    v100 = v97;
    v101 = sub_2146D8838();

    swift_willThrow();
    v102 = sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v103 = qword_280B35408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_2146EA710;
    v105 = sub_2146D8828();
    *(v104 + 56) = sub_21404E35C();
    *(v104 + 64) = sub_21404E3A8();
    *(v104 + 32) = v105;
    sub_2146D91D8(v102, &dword_213FAF000, v103, "Failed to package shared album data: %{public}@", 47, 2, v104);

    v98 = 0;
  }

  return v98;
}