void *sub_1B078EDE4(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void), uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v331 = a1;
  v325 = a2;
  v326 = a3;
  v327 = a4;
  v328 = a5;
  v329 = a6;
  v330 = a7;
  v250 = sub_1B074E050;
  v251 = sub_1B07ADC58;
  v252 = sub_1B07ADCBC;
  v253 = sub_1B0394C30;
  v254 = sub_1B0394C24;
  v255 = sub_1B074DFFC;
  v256 = sub_1B039BA88;
  v257 = sub_1B039BB94;
  v258 = sub_1B0394C24;
  v259 = sub_1B039BBA0;
  v260 = sub_1B039BC08;
  v261 = sub_1B06BA324;
  v262 = sub_1B074E0E4;
  v263 = sub_1B039BCF8;
  v264 = sub_1B07AD0A4;
  v265 = sub_1B039BCF8;
  v266 = sub_1B07AB020;
  v267 = sub_1B039BC08;
  v268 = sub_1B07AECE8;
  v269 = sub_1B03B0DF8;
  v270 = sub_1B0398F5C;
  v271 = sub_1B0398F5C;
  v272 = sub_1B0399178;
  v273 = sub_1B0398F5C;
  v274 = sub_1B0398F5C;
  v275 = sub_1B039BA94;
  v276 = sub_1B0398F5C;
  v277 = sub_1B0398F5C;
  v278 = sub_1B0399178;
  v279 = sub_1B0398F5C;
  v280 = sub_1B0398F5C;
  v281 = sub_1B03991EC;
  v282 = sub_1B0398F5C;
  v283 = sub_1B0398F5C;
  v284 = sub_1B03993BC;
  v285 = sub_1B0398F5C;
  v286 = sub_1B0398F5C;
  v287 = sub_1B039BCEC;
  v288 = sub_1B0398F5C;
  v289 = sub_1B0398F5C;
  v290 = sub_1B039BCEC;
  v291 = sub_1B0398F5C;
  v292 = sub_1B0398F5C;
  v293 = sub_1B03991EC;
  v294 = sub_1B0398F5C;
  v295 = sub_1B0398F5C;
  v296 = sub_1B0399260;
  v353 = 0;
  v351 = 0;
  v352 = 0;
  v349 = 0;
  v350 = 0;
  v348 = 0;
  v347 = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v297 = 0;
  v336 = 0;
  v316 = 0;
  v298 = type metadata accessor for MessageSectionData(0);
  v299 = *(v298 - 8);
  v300 = v299;
  v301 = *(v299 + 64);
  v302 = (v301 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v303 = (&v133 - v302);
  v304 = _s6LoggerVMa_1(v8);
  v305 = (*(*(v304 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v316);
  v306 = &v133 - v305;
  v307 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v308 = &v133 - v307;
  v309 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v310 = &v133 - v309;
  v311 = sub_1B0E439A8();
  v312 = *(v311 - 8);
  v313 = v311 - 8;
  v314 = (*(v312 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v316);
  v315 = &v133 - v314;
  v317 = sub_1B0E443C8();
  v318 = *(v317 - 8);
  v319 = v317 - 8;
  v320 = (*(v318 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v316);
  v321 = &v133 - v320;
  v322 = type metadata accessor for MessageSectionData.Segment(v13);
  v323 = (*(*(v322 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v322);
  v324 = &v133 - v323;
  v332 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v331);
  v333 = (&v133 - v332);
  v353 = v14;
  v351 = v15;
  v352 = v16;
  v349 = v17;
  v350 = v18;
  v348 = v19;
  v347 = v20;
  v346 = v7;
  v334 = *(v14 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v335 = sub_1B0791E2C(v334);

  if (v335)
  {
    v249 = v335;
    v247 = v335;
    v336 = v335;

    v345 = v247;

    v248 = v247;
  }

  else
  {
    v244 = *(v331 + 3);
    v245 = v331[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v246 = sub_1B077A6CC(v244, v245, v325, v326, v329, v330);

    result = v246;
    if (!v246)
    {
      return result;
    }

    v243 = v246;
    v242 = v246;
    v344 = v246;

    v345 = v242;
    v239 = v331[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    *v333 = v242;
    v238 = type metadata accessor for InProgressMessageDownload.Section(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v238 - 8) + 56))(v333, 0, 1);
    v240 = &v343;
    v343 = v239;
    v241 = v342;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
    sub_1B0E44788();
    swift_endAccess();

    v248 = v242;
  }

  v236 = v248;
  sub_1B07AB12C(v331 + *(v298 + 28), v324);
  (*(v318 + 16))(v321, v324, v317);
  sub_1B07AB694(v324);
  sub_1B0754C0C(v321, v330);
  (*(v318 + 8))(v321, v317);

  sub_1B07AB12C(v331 + *(v298 + 28), v324);
  v237 = *(v324 + *(v322 + 20));
  sub_1B07AB694(v324);
  if (v237)
  {
    v235 = v345;

    sub_1B0757864(v330);
  }

  (*(v312 + 16))(v315, v330, v311);
  sub_1B074B69C(v330, v310);
  sub_1B074B69C(v310, v308);
  sub_1B074E41C(v310, v306);
  v22 = (v308 + *(v304 + 20));
  v173 = *v22;
  v174 = *(v22 + 1);
  v175 = *(v22 + 1);
  v176 = *(v22 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v308);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v172 = 36;
  v201 = 7;
  v23 = swift_allocObject();
  v24 = v174;
  v25 = v175;
  v26 = v176;
  v183 = v23;
  *(v23 + 16) = v173;
  *(v23 + 20) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = v26;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = swift_allocObject();
  v28 = v174;
  v29 = v175;
  v30 = v176;
  v171 = v27;
  *(v27 + 16) = v173;
  *(v27 + 20) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = v30;

  v200 = 32;
  v31 = swift_allocObject();
  v32 = v171;
  v187 = v31;
  *(v31 + 16) = v250;
  *(v31 + 24) = v32;
  sub_1B0394868();
  sub_1B0394868();

  v33 = swift_allocObject();
  v34 = v174;
  v35 = v175;
  v36 = v176;
  v37 = v33;
  v38 = v306;
  v190 = v37;
  *(v37 + 16) = v173;
  *(v37 + 20) = v34;
  *(v37 + 24) = v35;
  *(v37 + 32) = v36;
  sub_1B074B764(v38);
  sub_1B07AD790(v331, v303);
  v179 = *(v300 + 80);
  v177 = (v179 + 16) & ~v179;
  v178 = swift_allocObject();
  sub_1B07ADB58(v303, v178 + v177);

  v39 = swift_allocObject();
  v40 = v178;
  v192 = v39;
  *(v39 + 16) = v251;
  *(v39 + 24) = v40;

  sub_1B07AD790(v331, v303);
  v180 = (v179 + 16) & ~v179;
  v181 = swift_allocObject();
  sub_1B07ADB58(v303, v181 + v180);

  v41 = swift_allocObject();
  v42 = v181;
  v195 = v41;
  *(v41 + 16) = v252;
  *(v41 + 24) = v42;

  v199 = v345;

  sub_1B07575C4();

  v233 = sub_1B0E43988();
  v234 = sub_1B0E458D8();
  v197 = 17;
  v203 = swift_allocObject();
  v185 = 16;
  *(v203 + 16) = 16;
  v204 = swift_allocObject();
  v194 = 4;
  *(v204 + 16) = 4;
  v43 = swift_allocObject();
  v182 = v43;
  *(v43 + 16) = v253;
  *(v43 + 24) = 0;
  v44 = swift_allocObject();
  v45 = v182;
  v205 = v44;
  *(v44 + 16) = v254;
  *(v44 + 24) = v45;
  v206 = swift_allocObject();
  *(v206 + 16) = 0;
  v207 = swift_allocObject();
  *(v207 + 16) = 1;
  v46 = swift_allocObject();
  v47 = v183;
  v184 = v46;
  *(v46 + 16) = v255;
  *(v46 + 24) = v47;
  v48 = swift_allocObject();
  v49 = v184;
  v208 = v48;
  *(v48 + 16) = v256;
  *(v48 + 24) = v49;
  v209 = swift_allocObject();
  *(v209 + 16) = v185;
  v210 = swift_allocObject();
  *(v210 + 16) = v194;
  v50 = swift_allocObject();
  v186 = v50;
  *(v50 + 16) = v257;
  *(v50 + 24) = 0;
  v51 = swift_allocObject();
  v52 = v186;
  v211 = v51;
  *(v51 + 16) = v258;
  *(v51 + 24) = v52;
  v212 = swift_allocObject();
  *(v212 + 16) = 0;
  v213 = swift_allocObject();
  *(v213 + 16) = v194;
  v53 = swift_allocObject();
  v54 = v187;
  v188 = v53;
  *(v53 + 16) = v259;
  *(v53 + 24) = v54;
  v55 = swift_allocObject();
  v56 = v188;
  v214 = v55;
  *(v55 + 16) = v260;
  *(v55 + 24) = v56;
  v215 = swift_allocObject();
  *(v215 + 16) = 112;
  v216 = swift_allocObject();
  v198 = 8;
  *(v216 + 16) = 8;
  v189 = swift_allocObject();
  *(v189 + 16) = 0x786F626C69616DLL;
  v57 = swift_allocObject();
  v58 = v189;
  v217 = v57;
  *(v57 + 16) = v261;
  *(v57 + 24) = v58;
  v218 = swift_allocObject();
  *(v218 + 16) = 37;
  v219 = swift_allocObject();
  *(v219 + 16) = v198;
  v59 = swift_allocObject();
  v60 = v190;
  v191 = v59;
  *(v59 + 16) = v262;
  *(v59 + 24) = v60;
  v61 = swift_allocObject();
  v62 = v191;
  v220 = v61;
  *(v61 + 16) = v263;
  *(v61 + 24) = v62;
  v221 = swift_allocObject();
  *(v221 + 16) = 34;
  v222 = swift_allocObject();
  *(v222 + 16) = v198;
  v63 = swift_allocObject();
  v64 = v192;
  v193 = v63;
  *(v63 + 16) = v264;
  *(v63 + 24) = v64;
  v65 = swift_allocObject();
  v66 = v193;
  v223 = v65;
  *(v65 + 16) = v265;
  *(v65 + 24) = v66;
  v224 = swift_allocObject();
  *(v224 + 16) = 0;
  v225 = swift_allocObject();
  *(v225 + 16) = v194;
  v67 = swift_allocObject();
  v68 = v195;
  v196 = v67;
  *(v67 + 16) = v266;
  *(v67 + 24) = v68;
  v69 = swift_allocObject();
  v70 = v196;
  v226 = v69;
  *(v69 + 16) = v267;
  *(v69 + 24) = v70;
  v227 = swift_allocObject();
  *(v227 + 16) = 0;
  v228 = swift_allocObject();
  *(v228 + 16) = v198;
  v71 = swift_allocObject();
  v72 = v199;
  v202 = v71;
  *(v71 + 16) = v268;
  *(v71 + 24) = v72;
  v73 = swift_allocObject();
  v74 = v202;
  v230 = v73;
  *(v73 + 16) = v269;
  *(v73 + 24) = v74;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v229 = sub_1B0E46A48();
  v231 = v75;

  v76 = v203;
  v77 = v231;
  *v231 = v270;
  v77[1] = v76;

  v78 = v204;
  v79 = v231;
  v231[2] = v271;
  v79[3] = v78;

  v80 = v205;
  v81 = v231;
  v231[4] = v272;
  v81[5] = v80;

  v82 = v206;
  v83 = v231;
  v231[6] = v273;
  v83[7] = v82;

  v84 = v207;
  v85 = v231;
  v231[8] = v274;
  v85[9] = v84;

  v86 = v208;
  v87 = v231;
  v231[10] = v275;
  v87[11] = v86;

  v88 = v209;
  v89 = v231;
  v231[12] = v276;
  v89[13] = v88;

  v90 = v210;
  v91 = v231;
  v231[14] = v277;
  v91[15] = v90;

  v92 = v211;
  v93 = v231;
  v231[16] = v278;
  v93[17] = v92;

  v94 = v212;
  v95 = v231;
  v231[18] = v279;
  v95[19] = v94;

  v96 = v213;
  v97 = v231;
  v231[20] = v280;
  v97[21] = v96;

  v98 = v214;
  v99 = v231;
  v231[22] = v281;
  v99[23] = v98;

  v100 = v215;
  v101 = v231;
  v231[24] = v282;
  v101[25] = v100;

  v102 = v216;
  v103 = v231;
  v231[26] = v283;
  v103[27] = v102;

  v104 = v217;
  v105 = v231;
  v231[28] = v284;
  v105[29] = v104;

  v106 = v218;
  v107 = v231;
  v231[30] = v285;
  v107[31] = v106;

  v108 = v219;
  v109 = v231;
  v231[32] = v286;
  v109[33] = v108;

  v110 = v220;
  v111 = v231;
  v231[34] = v287;
  v111[35] = v110;

  v112 = v221;
  v113 = v231;
  v231[36] = v288;
  v113[37] = v112;

  v114 = v222;
  v115 = v231;
  v231[38] = v289;
  v115[39] = v114;

  v116 = v223;
  v117 = v231;
  v231[40] = v290;
  v117[41] = v116;

  v118 = v224;
  v119 = v231;
  v231[42] = v291;
  v119[43] = v118;

  v120 = v225;
  v121 = v231;
  v231[44] = v292;
  v121[45] = v120;

  v122 = v226;
  v123 = v231;
  v231[46] = v293;
  v123[47] = v122;

  v124 = v227;
  v125 = v231;
  v231[48] = v294;
  v125[49] = v124;

  v126 = v228;
  v127 = v231;
  v231[50] = v295;
  v127[51] = v126;

  v128 = v230;
  v129 = v231;
  v231[52] = v296;
  v129[53] = v128;
  sub_1B0394964();

  if (os_log_type_enabled(v233, v234))
  {
    v130 = v297;
    v164 = sub_1B0E45D78();
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v165 = sub_1B03949A8(0, v163, v163);
    v166 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v167 = &v341;
    v341 = v164;
    v168 = &v340;
    v340 = v165;
    v169 = &v339;
    v339 = v166;
    sub_1B0394A48(3, &v341);
    sub_1B0394A48(9, v167);
    v337 = v270;
    v338 = v203;
    sub_1B03949FC(&v337, v167, v168, v169);
    v170 = v130;
    if (v130)
    {

      __break(1u);
    }

    else
    {
      v337 = v271;
      v338 = v204;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v162 = 0;
      v337 = v272;
      v338 = v205;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v161 = 0;
      v337 = v273;
      v338 = v206;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v160 = 0;
      v337 = v274;
      v338 = v207;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v159 = 0;
      v337 = v275;
      v338 = v208;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v158 = 0;
      v337 = v276;
      v338 = v209;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v157 = 0;
      v337 = v277;
      v338 = v210;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v156 = 0;
      v337 = v278;
      v338 = v211;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v155 = 0;
      v337 = v279;
      v338 = v212;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v154 = 0;
      v337 = v280;
      v338 = v213;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v153 = 0;
      v337 = v281;
      v338 = v214;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v152 = 0;
      v337 = v282;
      v338 = v215;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v151 = 0;
      v337 = v283;
      v338 = v216;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v150 = 0;
      v337 = v284;
      v338 = v217;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v149 = 0;
      v337 = v285;
      v338 = v218;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v148 = 0;
      v337 = v286;
      v338 = v219;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v147 = 0;
      v337 = v287;
      v338 = v220;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v146 = 0;
      v337 = v288;
      v338 = v221;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v145 = 0;
      v337 = v289;
      v338 = v222;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v144 = 0;
      v337 = v290;
      v338 = v223;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v143 = 0;
      v337 = v291;
      v338 = v224;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v142 = 0;
      v337 = v292;
      v338 = v225;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v141 = 0;
      v337 = v293;
      v338 = v226;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v140 = 0;
      v337 = v294;
      v338 = v227;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v139 = 0;
      v337 = v295;
      v338 = v228;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      v138 = 0;
      v337 = v296;
      v338 = v230;
      sub_1B03949FC(&v337, &v341, &v340, &v339);
      _os_log_impl(&dword_1B0389000, v233, v234, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Attachment [%{public}s], UID %u: %{iec-bytes}ld bytes downloaded.", v164, 0x45u);
      sub_1B03998A8(v165, 0, v163);
      sub_1B03998A8(v166, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v233);
  (*(v312 + 8))(v315, v311);
  v137 = v331[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v134 = sub_1B0792070();
  v135 = v131;
  v136 = v132;

  v327(v137, v134, v135, v136 & 1);
}

uint64_t sub_1B0791AC0(uint64_t a1)
{
  v22 = a1;
  v42 = 0;
  v41 = 0;
  v23 = type metadata accessor for MessageSectionData.Segment(0);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v6 - v24;
  v42 = v2;
  v41 = v1;
  v26 = (v1 + 24);
  v27 = &v39;
  swift_beginAccess();
  v28 = __dst;
  v29 = 177;
  memcpy(__dst, v26, 0xB1uLL);
  sub_1B075DC38(__dst, v38);
  swift_endAccess();
  v30 = v37;
  memcpy(v37, v28, v29);
  if (sub_1B075FACC(v30) == 1)
  {
    v3 = type metadata accessor for MessageSectionData(0);
    sub_1B07AB12C(v22 + *(v3 + 28), v25);
    v4 = (v25 + *(v23 + 24));
    v18 = v35;
    v19 = 177;
    memcpy(v35, v4, 0xB1uLL);
    sub_1B07AB440(v35, v34);
    sub_1B07AB694(v25);
    v20 = v36;
    memcpy(v36, v18, v19);
    if (sub_1B07AB810(v20) == 1)
    {
      sub_1B075FEBC(v40);
    }

    else
    {
      v17 = v36;
      sub_1B075DC38(v36, v31);
      sub_1B075E728(v17);
      memcpy(v40, v17, 0xB1uLL);
    }

    if (sub_1B075FACC(v37) != 1)
    {
      sub_1B075E728(v37);
    }
  }

  else
  {
    v21 = v40;
    memcpy(v40, v37, 0xB1uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  }

  v14 = v32;
  v15 = 177;
  memcpy(v32, v40, 0xB1uLL);
  v16 = v33;
  memcpy(v33, v32, 0xB1uLL);
  if (sub_1B075FACC(v33) == 1)
  {
    return 100000;
  }

  v12 = 177;
  memcpy(v46, v33, sizeof(v46));
  v10 = *(v22 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = v43;
  BodyStructure.find(_:)(v10, v43);

  v13 = v44;
  memcpy(v44, v11, v12);
  if (sub_1B075FACC(v13) == 1)
  {
    sub_1B075E648(v33);
    return 100000;
  }

  v7 = v45;
  memcpy(v45, v44, 0xB1uLL);
  v8 = sub_1B0783E20();
  sub_1B075E648(v7);
  sub_1B075E648(v33);
  return v8;
}

uint64_t sub_1B0791DF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0791E2C(uint64_t a1)
{
  v8 = a1;
  v16 = 0;
  v15 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v4 - v6);
  v16 = v2;
  v15 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  swift_beginAccess();
  v9 = *v7;
  v10 = &v14;
  v14 = v8;
  v11 = type metadata accessor for InProgressMessageDownload.Section(0);
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(v10);
  if ((*(*(v11 - 8) + 48))(v12, 1) == 1)
  {
    sub_1B07ADE14(v12);
    swift_endAccess();
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B0760B84(v12);
    swift_endAccess();
    return 0;
  }

  v4 = *v12;
  v13 = v4;
  swift_endAccess();
  return v4;
}

uint64_t sub_1B0791FFC(uint64_t a1)
{

  swift_beginAccess();
  v3 = *(a1 + 48);
  swift_endAccess();

  return v3;
}

uint64_t sub_1B0792070()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  swift_beginAccess();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B079217C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v848 = v2;
  v853 = v3;
  v849 = v4;
  v850 = v5;
  v851 = v6;
  v852 = v7;
  v686 = v1;
  v687 = sub_1B074E050;
  v688 = sub_1B07AD09C;
  v689 = sub_1B03F7AE0;
  v690 = sub_1B0394C30;
  v691 = sub_1B0394C24;
  v692 = sub_1B074DFFC;
  v693 = sub_1B039BA88;
  v694 = sub_1B039BB94;
  v695 = sub_1B0394C24;
  v696 = sub_1B039BBA0;
  v697 = sub_1B039BC08;
  v698 = 0x786F626C69616DLL;
  v699 = sub_1B06BA324;
  v700 = sub_1B074E0E4;
  v701 = sub_1B039BCF8;
  v702 = sub_1B07AD0A4;
  v703 = sub_1B039BCF8;
  v704 = sub_1B07AD0B0;
  v705 = sub_1B039BCF8;
  v706 = sub_1B07AD0C4;
  v707 = sub_1B039BCF8;
  v708 = sub_1B07AB020;
  v709 = sub_1B039BC08;
  v710 = sub_1B0398F5C;
  v711 = sub_1B0398F5C;
  v712 = sub_1B0399178;
  v713 = sub_1B0398F5C;
  v714 = sub_1B0398F5C;
  v715 = sub_1B039BA94;
  v716 = sub_1B0398F5C;
  v717 = sub_1B0398F5C;
  v718 = sub_1B0399178;
  v719 = sub_1B0398F5C;
  v720 = sub_1B0398F5C;
  v721 = sub_1B03991EC;
  v722 = sub_1B0398F5C;
  v723 = sub_1B0398F5C;
  v724 = sub_1B03993BC;
  v725 = sub_1B0398F5C;
  v726 = sub_1B0398F5C;
  v727 = sub_1B039BCEC;
  v728 = sub_1B0398F5C;
  v729 = sub_1B0398F5C;
  v730 = sub_1B039BCEC;
  v731 = sub_1B0398F5C;
  v732 = sub_1B0398F5C;
  v733 = sub_1B039BCEC;
  v734 = sub_1B0398F5C;
  v735 = sub_1B0398F5C;
  v736 = sub_1B039BCEC;
  v737 = sub_1B0398F5C;
  v738 = sub_1B0398F5C;
  v739 = sub_1B03991EC;
  v740 = sub_1B074E050;
  v741 = sub_1B07AD09C;
  v742 = sub_1B03F7AE0;
  v743 = sub_1B0394C24;
  v744 = sub_1B074DFFC;
  v745 = sub_1B039BA88;
  v746 = sub_1B0394C24;
  v747 = sub_1B039BBA0;
  v748 = sub_1B039BC08;
  v749 = sub_1B06BA324;
  v750 = sub_1B074E0E4;
  v751 = sub_1B039BCF8;
  v752 = sub_1B07AD0A4;
  v753 = sub_1B039BCF8;
  v754 = sub_1B07AD0B0;
  v755 = sub_1B039BCF8;
  v756 = sub_1B07AD0C4;
  v757 = sub_1B039BCF8;
  v758 = sub_1B07AB020;
  v759 = sub_1B039BC08;
  v760 = sub_1B0398F5C;
  v761 = sub_1B0398F5C;
  v762 = sub_1B0399178;
  v763 = sub_1B0398F5C;
  v764 = sub_1B0398F5C;
  v765 = sub_1B039BA94;
  v766 = sub_1B0398F5C;
  v767 = sub_1B0398F5C;
  v768 = sub_1B0399178;
  v769 = sub_1B0398F5C;
  v770 = sub_1B0398F5C;
  v771 = sub_1B03991EC;
  v772 = sub_1B0398F5C;
  v773 = sub_1B0398F5C;
  v774 = sub_1B03993BC;
  v775 = sub_1B0398F5C;
  v776 = sub_1B0398F5C;
  v777 = sub_1B039BCEC;
  v778 = sub_1B0398F5C;
  v779 = sub_1B0398F5C;
  v780 = sub_1B039BCEC;
  v781 = sub_1B0398F5C;
  v782 = sub_1B0398F5C;
  v783 = sub_1B039BCEC;
  v784 = sub_1B0398F5C;
  v785 = sub_1B0398F5C;
  v786 = sub_1B039BCEC;
  v787 = sub_1B0398F5C;
  v788 = sub_1B0398F5C;
  v789 = sub_1B03991EC;
  v790 = sub_1B074E050;
  v791 = sub_1B07AD09C;
  v792 = sub_1B03F7AE0;
  v793 = sub_1B0394C24;
  v794 = sub_1B074DFFC;
  v795 = sub_1B039BA88;
  v796 = sub_1B0394C24;
  v797 = sub_1B039BBA0;
  v798 = sub_1B039BC08;
  v799 = sub_1B06BA324;
  v800 = sub_1B074E0E4;
  v801 = sub_1B039BCF8;
  v802 = sub_1B07AD0A4;
  v803 = sub_1B039BCF8;
  v804 = sub_1B07AB020;
  v805 = sub_1B039BC08;
  v806 = sub_1B0398F5C;
  v807 = sub_1B0398F5C;
  v808 = sub_1B0399178;
  v809 = sub_1B0398F5C;
  v810 = sub_1B0398F5C;
  v811 = sub_1B039BA94;
  v812 = sub_1B0398F5C;
  v813 = sub_1B0398F5C;
  v814 = sub_1B0399178;
  v815 = sub_1B0398F5C;
  v816 = sub_1B0398F5C;
  v817 = sub_1B03991EC;
  v818 = sub_1B0398F5C;
  v819 = sub_1B0398F5C;
  v820 = sub_1B03993BC;
  v821 = sub_1B0398F5C;
  v822 = sub_1B0398F5C;
  v823 = sub_1B039BCEC;
  v824 = sub_1B0398F5C;
  v825 = sub_1B0398F5C;
  v826 = sub_1B039BCEC;
  v827 = sub_1B0398F5C;
  v828 = sub_1B0398F5C;
  v829 = sub_1B03991EC;
  v883 = 0;
  v882 = 0;
  v881 = 0;
  v879 = 0;
  v880 = 0;
  v878 = 0;
  v877 = 0;
  v830 = 0;
  v871 = 0;
  v831 = 0;
  v832 = _s6LoggerVMa_1(0);
  v833 = (*(*(v832 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v834 = v388 - v833;
  v835 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v836 = v388 - v835;
  v837 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v838 = v388 - v837;
  v839 = sub_1B0E439A8();
  v840 = *(v839 - 8);
  v841 = v839 - 8;
  v842 = (*(v840 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v839);
  v843 = v388 - v842;
  v844 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v388 - v842);
  v845 = v388 - v844;
  v846 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v388 - v844);
  v847 = v388 - v846;
  v854 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v853);
  v855 = v388 - v854;
  v883 = v14;
  v882 = v15;
  v881 = v16 & 1;
  v879 = v17;
  v880 = v18;
  v878 = v19;
  v877 = v1;
  v856 = sub_1B0791E2C(v15);
  if (v856)
  {
    v685 = v856;
    v684 = v856;
    v871 = v856;
    if (v849)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v606 = sub_1B0754760();
      v603 = v20;
      v604 = v21;
      v605 = v22;
      v23 = sub_1B07547DC();
      v607 = v884;
      sub_1B077FC6C(v853, v606, v603, v604, v605, v23, v24, v884);
      memcpy(v855, v607, 0x38uLL);
      v608 = type metadata accessor for InProgressMessageDownload.Section(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v608 - 8) + 56))(v855, 0, 1);
      v609 = &v863;
      v863 = v853;
      v610 = &v862;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      (*(v840 + 16))(v847, v852, v839);
      sub_1B074B69C(v852, v838);
      sub_1B074B69C(v838, v836);
      sub_1B074E41C(v838, v834);
      v25 = (v836 + *(v832 + 20));
      v613 = *v25;
      v614 = *(v25 + 1);
      v615 = *(v25 + 1);
      v616 = *(v25 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v836);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v612 = 36;
      v646 = 7;
      v26 = swift_allocObject();
      v27 = v614;
      v28 = v615;
      v29 = v616;
      v625 = v26;
      *(v26 + 16) = v613;
      *(v26 + 20) = v27;
      *(v26 + 24) = v28;
      *(v26 + 32) = v29;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v30 = swift_allocObject();
      v31 = v614;
      v32 = v615;
      v33 = v616;
      v611 = v30;
      *(v30 + 16) = v613;
      *(v30 + 20) = v31;
      *(v30 + 24) = v32;
      *(v30 + 32) = v33;

      v645 = 32;
      v34 = swift_allocObject();
      v35 = v611;
      v629 = v34;
      *(v34 + 16) = v740;
      *(v34 + 24) = v35;
      sub_1B0394868();
      sub_1B0394868();

      v36 = swift_allocObject();
      v37 = v614;
      v38 = v615;
      v39 = v616;
      v40 = v36;
      v41 = v834;
      v633 = v40;
      *(v40 + 16) = v613;
      *(v40 + 20) = v37;
      *(v40 + 24) = v38;
      *(v40 + 32) = v39;
      sub_1B074B764(v41);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v631 = 24;
      v617 = swift_allocObject();
      *(v617 + 16) = v853;

      v42 = swift_allocObject();
      v43 = v617;
      v635 = v42;
      *(v42 + 16) = v741;
      *(v42 + 24) = v43;

      v619 = sub_1B0754760();
      v620 = v44;
      v621 = v45;
      v622 = v46;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v618 = 48;
      v47 = swift_allocObject();
      v48 = v620;
      v49 = v621;
      v50 = v622;
      v637 = v47;
      v47[2] = v619;
      v47[3] = v48;
      v47[4] = v49;
      v47[5] = v50;
      v51 = swift_allocObject();
      v52 = v620;
      v53 = v621;
      v54 = v622;
      v641 = v51;
      v51[2] = v619;
      v51[3] = v52;
      v51[4] = v53;
      v51[5] = v54;

      v623 = swift_allocObject();
      *(v623 + 16) = v848;

      v55 = swift_allocObject();
      v56 = v623;
      v647 = v55;
      *(v55 + 16) = v742;
      *(v55 + 24) = v56;

      v682 = sub_1B0E43988();
      v683 = sub_1B0E45908();
      v643 = 17;
      v649 = swift_allocObject();
      v627 = 16;
      *(v649 + 16) = 16;
      v650 = swift_allocObject();
      v644 = 4;
      *(v650 + 16) = 4;
      v57 = swift_allocObject();
      v624 = v57;
      *(v57 + 16) = v690;
      *(v57 + 24) = 0;
      v58 = swift_allocObject();
      v59 = v624;
      v651 = v58;
      *(v58 + 16) = v743;
      *(v58 + 24) = v59;
      v652 = swift_allocObject();
      *(v652 + 16) = 0;
      v653 = swift_allocObject();
      *(v653 + 16) = 1;
      v60 = swift_allocObject();
      v61 = v625;
      v626 = v60;
      *(v60 + 16) = v744;
      *(v60 + 24) = v61;
      v62 = swift_allocObject();
      v63 = v626;
      v654 = v62;
      *(v62 + 16) = v745;
      *(v62 + 24) = v63;
      v655 = swift_allocObject();
      *(v655 + 16) = v627;
      v656 = swift_allocObject();
      *(v656 + 16) = v644;
      v64 = swift_allocObject();
      v628 = v64;
      *(v64 + 16) = v694;
      *(v64 + 24) = 0;
      v65 = swift_allocObject();
      v66 = v628;
      v657 = v65;
      *(v65 + 16) = v746;
      *(v65 + 24) = v66;
      v658 = swift_allocObject();
      *(v658 + 16) = 0;
      v659 = swift_allocObject();
      *(v659 + 16) = v644;
      v67 = swift_allocObject();
      v68 = v629;
      v630 = v67;
      *(v67 + 16) = v747;
      *(v67 + 24) = v68;
      v69 = swift_allocObject();
      v70 = v630;
      v660 = v69;
      *(v69 + 16) = v748;
      *(v69 + 24) = v70;
      v661 = swift_allocObject();
      *(v661 + 16) = 112;
      v662 = swift_allocObject();
      v640 = 8;
      *(v662 + 16) = 8;
      v632 = swift_allocObject();
      *(v632 + 16) = v698;
      v71 = swift_allocObject();
      v72 = v632;
      v663 = v71;
      *(v71 + 16) = v749;
      *(v71 + 24) = v72;
      v664 = swift_allocObject();
      *(v664 + 16) = 37;
      v665 = swift_allocObject();
      *(v665 + 16) = v640;
      v73 = swift_allocObject();
      v74 = v633;
      v634 = v73;
      *(v73 + 16) = v750;
      *(v73 + 24) = v74;
      v75 = swift_allocObject();
      v76 = v634;
      v666 = v75;
      *(v75 + 16) = v751;
      *(v75 + 24) = v76;
      v667 = swift_allocObject();
      v639 = 34;
      *(v667 + 16) = 34;
      v668 = swift_allocObject();
      *(v668 + 16) = v640;
      v77 = swift_allocObject();
      v78 = v635;
      v636 = v77;
      *(v77 + 16) = v752;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v636;
      v669 = v79;
      *(v79 + 16) = v753;
      *(v79 + 24) = v80;
      v670 = swift_allocObject();
      *(v670 + 16) = v639;
      v671 = swift_allocObject();
      *(v671 + 16) = v640;
      v81 = swift_allocObject();
      v82 = v637;
      v638 = v81;
      *(v81 + 16) = v754;
      *(v81 + 24) = v82;
      v83 = swift_allocObject();
      v84 = v638;
      v672 = v83;
      *(v83 + 16) = v755;
      *(v83 + 24) = v84;
      v673 = swift_allocObject();
      *(v673 + 16) = v639;
      v674 = swift_allocObject();
      *(v674 + 16) = v640;
      v85 = swift_allocObject();
      v86 = v641;
      v642 = v85;
      *(v85 + 16) = v756;
      *(v85 + 24) = v86;
      v87 = swift_allocObject();
      v88 = v642;
      v675 = v87;
      *(v87 + 16) = v757;
      *(v87 + 24) = v88;
      v676 = swift_allocObject();
      *(v676 + 16) = 0;
      v677 = swift_allocObject();
      *(v677 + 16) = v644;
      v89 = swift_allocObject();
      v90 = v647;
      v648 = v89;
      *(v89 + 16) = v758;
      *(v89 + 24) = v90;
      v91 = swift_allocObject();
      v92 = v648;
      v679 = v91;
      *(v91 + 16) = v759;
      *(v91 + 24) = v92;
      v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v678 = sub_1B0E46A48();
      v680 = v93;

      v94 = v649;
      v95 = v680;
      *v680 = v760;
      v95[1] = v94;

      v96 = v650;
      v97 = v680;
      v680[2] = v761;
      v97[3] = v96;

      v98 = v651;
      v99 = v680;
      v680[4] = v762;
      v99[5] = v98;

      v100 = v652;
      v101 = v680;
      v680[6] = v763;
      v101[7] = v100;

      v102 = v653;
      v103 = v680;
      v680[8] = v764;
      v103[9] = v102;

      v104 = v654;
      v105 = v680;
      v680[10] = v765;
      v105[11] = v104;

      v106 = v655;
      v107 = v680;
      v680[12] = v766;
      v107[13] = v106;

      v108 = v656;
      v109 = v680;
      v680[14] = v767;
      v109[15] = v108;

      v110 = v657;
      v111 = v680;
      v680[16] = v768;
      v111[17] = v110;

      v112 = v658;
      v113 = v680;
      v680[18] = v769;
      v113[19] = v112;

      v114 = v659;
      v115 = v680;
      v680[20] = v770;
      v115[21] = v114;

      v116 = v660;
      v117 = v680;
      v680[22] = v771;
      v117[23] = v116;

      v118 = v661;
      v119 = v680;
      v680[24] = v772;
      v119[25] = v118;

      v120 = v662;
      v121 = v680;
      v680[26] = v773;
      v121[27] = v120;

      v122 = v663;
      v123 = v680;
      v680[28] = v774;
      v123[29] = v122;

      v124 = v664;
      v125 = v680;
      v680[30] = v775;
      v125[31] = v124;

      v126 = v665;
      v127 = v680;
      v680[32] = v776;
      v127[33] = v126;

      v128 = v666;
      v129 = v680;
      v680[34] = v777;
      v129[35] = v128;

      v130 = v667;
      v131 = v680;
      v680[36] = v778;
      v131[37] = v130;

      v132 = v668;
      v133 = v680;
      v680[38] = v779;
      v133[39] = v132;

      v134 = v669;
      v135 = v680;
      v680[40] = v780;
      v135[41] = v134;

      v136 = v670;
      v137 = v680;
      v680[42] = v781;
      v137[43] = v136;

      v138 = v671;
      v139 = v680;
      v680[44] = v782;
      v139[45] = v138;

      v140 = v672;
      v141 = v680;
      v680[46] = v783;
      v141[47] = v140;

      v142 = v673;
      v143 = v680;
      v680[48] = v784;
      v143[49] = v142;

      v144 = v674;
      v145 = v680;
      v680[50] = v785;
      v145[51] = v144;

      v146 = v675;
      v147 = v680;
      v680[52] = v786;
      v147[53] = v146;

      v148 = v676;
      v149 = v680;
      v680[54] = v787;
      v149[55] = v148;

      v150 = v677;
      v151 = v680;
      v680[56] = v788;
      v151[57] = v150;

      v152 = v679;
      v153 = v680;
      v680[58] = v789;
      v153[59] = v152;
      sub_1B0394964();

      if (os_log_type_enabled(v682, v683))
      {
        v154 = v830;
        v596 = sub_1B0E45D78();
        v595 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v597 = sub_1B03949A8(0, v595, v595);
        v598 = sub_1B03949A8(4, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v599 = &v861;
        v861 = v596;
        v600 = &v860;
        v860 = v597;
        v601 = &v859;
        v859 = v598;
        sub_1B0394A48(3, &v861);
        sub_1B0394A48(10, v599);
        v857 = v760;
        v858 = v649;
        sub_1B03949FC(&v857, v599, v600, v601);
        v602 = v154;
        if (v154)
        {

          __break(1u);
        }

        else
        {
          v857 = v761;
          v858 = v650;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v594 = 0;
          v857 = v762;
          v858 = v651;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v593 = 0;
          v857 = v763;
          v858 = v652;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v592 = 0;
          v857 = v764;
          v858 = v653;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v591 = 0;
          v857 = v765;
          v858 = v654;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v590 = 0;
          v857 = v766;
          v858 = v655;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v589 = 0;
          v857 = v767;
          v858 = v656;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v588 = 0;
          v857 = v768;
          v858 = v657;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v587 = 0;
          v857 = v769;
          v858 = v658;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v586 = 0;
          v857 = v770;
          v858 = v659;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v585 = 0;
          v857 = v771;
          v858 = v660;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v584 = 0;
          v857 = v772;
          v858 = v661;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v583 = 0;
          v857 = v773;
          v858 = v662;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v582 = 0;
          v857 = v774;
          v858 = v663;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v581 = 0;
          v857 = v775;
          v858 = v664;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v580 = 0;
          v857 = v776;
          v858 = v665;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v579 = 0;
          v857 = v777;
          v858 = v666;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v578 = 0;
          v857 = v778;
          v858 = v667;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v577 = 0;
          v857 = v779;
          v858 = v668;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v576 = 0;
          v857 = v780;
          v858 = v669;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v575 = 0;
          v857 = v781;
          v858 = v670;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v574 = 0;
          v857 = v782;
          v858 = v671;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v573 = 0;
          v857 = v783;
          v858 = v672;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v572 = 0;
          v857 = v784;
          v858 = v673;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v571 = 0;
          v857 = v785;
          v858 = v674;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v570 = 0;
          v857 = v786;
          v858 = v675;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v569 = 0;
          v857 = v787;
          v858 = v676;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v568 = 0;
          v857 = v788;
          v858 = v677;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          v567 = 0;
          v857 = v789;
          v858 = v679;
          sub_1B03949FC(&v857, &v861, &v860, &v859);
          _os_log_impl(&dword_1B0389000, v682, v683, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] File writer did complete attachment '[%{public}s]' %{public}s/%{public}s, UID %u.", v596, 0x4Fu);
          sub_1B03998A8(v597, 0, v595);
          sub_1B03998A8(v598, 4, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v682);
      (*(v840 + 8))(v847, v839);
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v155 = type metadata accessor for InProgressMessageDownload.Section(0);
      (*(*(v155 - 8) + 56))(v855, 1);
      v492 = &v870;
      v870 = v853;
      v493 = &v869;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      (*(v840 + 16))(v845, v852, v839);
      sub_1B074B69C(v852, v838);
      sub_1B074B69C(v838, v836);
      sub_1B074E41C(v838, v834);
      v156 = (v836 + *(v832 + 20));
      v496 = *v156;
      v497 = *(v156 + 1);
      v498 = *(v156 + 1);
      v499 = *(v156 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v836);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v495 = 36;
      v529 = 7;
      v157 = swift_allocObject();
      v158 = v497;
      v159 = v498;
      v160 = v499;
      v508 = v157;
      *(v157 + 16) = v496;
      *(v157 + 20) = v158;
      *(v157 + 24) = v159;
      *(v157 + 32) = v160;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v161 = swift_allocObject();
      v162 = v497;
      v163 = v498;
      v164 = v499;
      v494 = v161;
      *(v161 + 16) = v496;
      *(v161 + 20) = v162;
      *(v161 + 24) = v163;
      *(v161 + 32) = v164;

      v528 = 32;
      v165 = swift_allocObject();
      v166 = v494;
      v512 = v165;
      *(v165 + 16) = v687;
      *(v165 + 24) = v166;
      sub_1B0394868();
      sub_1B0394868();

      v167 = swift_allocObject();
      v168 = v497;
      v169 = v498;
      v170 = v499;
      v171 = v167;
      v172 = v834;
      v516 = v171;
      *(v171 + 16) = v496;
      *(v171 + 20) = v168;
      *(v171 + 24) = v169;
      *(v171 + 32) = v170;
      sub_1B074B764(v172);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v514 = 24;
      v500 = swift_allocObject();
      *(v500 + 16) = v853;

      v173 = swift_allocObject();
      v174 = v500;
      v518 = v173;
      *(v173 + 16) = v688;
      *(v173 + 24) = v174;

      v502 = sub_1B0754760();
      v503 = v175;
      v504 = v176;
      v505 = v177;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v501 = 48;
      v178 = swift_allocObject();
      v179 = v503;
      v180 = v504;
      v181 = v505;
      v520 = v178;
      v178[2] = v502;
      v178[3] = v179;
      v178[4] = v180;
      v178[5] = v181;
      v182 = swift_allocObject();
      v183 = v503;
      v184 = v504;
      v185 = v505;
      v524 = v182;
      v182[2] = v502;
      v182[3] = v183;
      v182[4] = v184;
      v182[5] = v185;

      v506 = swift_allocObject();
      *(v506 + 16) = v848;

      v186 = swift_allocObject();
      v187 = v506;
      v530 = v186;
      *(v186 + 16) = v689;
      *(v186 + 24) = v187;

      v565 = sub_1B0E43988();
      v566 = sub_1B0E458E8();
      v526 = 17;
      v532 = swift_allocObject();
      v510 = 16;
      *(v532 + 16) = 16;
      v533 = swift_allocObject();
      v527 = 4;
      *(v533 + 16) = 4;
      v188 = swift_allocObject();
      v507 = v188;
      *(v188 + 16) = v690;
      *(v188 + 24) = 0;
      v189 = swift_allocObject();
      v190 = v507;
      v534 = v189;
      *(v189 + 16) = v691;
      *(v189 + 24) = v190;
      v535 = swift_allocObject();
      *(v535 + 16) = 0;
      v536 = swift_allocObject();
      *(v536 + 16) = 1;
      v191 = swift_allocObject();
      v192 = v508;
      v509 = v191;
      *(v191 + 16) = v692;
      *(v191 + 24) = v192;
      v193 = swift_allocObject();
      v194 = v509;
      v537 = v193;
      *(v193 + 16) = v693;
      *(v193 + 24) = v194;
      v538 = swift_allocObject();
      *(v538 + 16) = v510;
      v539 = swift_allocObject();
      *(v539 + 16) = v527;
      v195 = swift_allocObject();
      v511 = v195;
      *(v195 + 16) = v694;
      *(v195 + 24) = 0;
      v196 = swift_allocObject();
      v197 = v511;
      v540 = v196;
      *(v196 + 16) = v695;
      *(v196 + 24) = v197;
      v541 = swift_allocObject();
      *(v541 + 16) = 0;
      v542 = swift_allocObject();
      *(v542 + 16) = v527;
      v198 = swift_allocObject();
      v199 = v512;
      v513 = v198;
      *(v198 + 16) = v696;
      *(v198 + 24) = v199;
      v200 = swift_allocObject();
      v201 = v513;
      v543 = v200;
      *(v200 + 16) = v697;
      *(v200 + 24) = v201;
      v544 = swift_allocObject();
      *(v544 + 16) = 112;
      v545 = swift_allocObject();
      v523 = 8;
      *(v545 + 16) = 8;
      v515 = swift_allocObject();
      *(v515 + 16) = v698;
      v202 = swift_allocObject();
      v203 = v515;
      v546 = v202;
      *(v202 + 16) = v699;
      *(v202 + 24) = v203;
      v547 = swift_allocObject();
      *(v547 + 16) = 37;
      v548 = swift_allocObject();
      *(v548 + 16) = v523;
      v204 = swift_allocObject();
      v205 = v516;
      v517 = v204;
      *(v204 + 16) = v700;
      *(v204 + 24) = v205;
      v206 = swift_allocObject();
      v207 = v517;
      v549 = v206;
      *(v206 + 16) = v701;
      *(v206 + 24) = v207;
      v550 = swift_allocObject();
      v522 = 34;
      *(v550 + 16) = 34;
      v551 = swift_allocObject();
      *(v551 + 16) = v523;
      v208 = swift_allocObject();
      v209 = v518;
      v519 = v208;
      *(v208 + 16) = v702;
      *(v208 + 24) = v209;
      v210 = swift_allocObject();
      v211 = v519;
      v552 = v210;
      *(v210 + 16) = v703;
      *(v210 + 24) = v211;
      v553 = swift_allocObject();
      *(v553 + 16) = v522;
      v554 = swift_allocObject();
      *(v554 + 16) = v523;
      v212 = swift_allocObject();
      v213 = v520;
      v521 = v212;
      *(v212 + 16) = v704;
      *(v212 + 24) = v213;
      v214 = swift_allocObject();
      v215 = v521;
      v555 = v214;
      *(v214 + 16) = v705;
      *(v214 + 24) = v215;
      v556 = swift_allocObject();
      *(v556 + 16) = v522;
      v557 = swift_allocObject();
      *(v557 + 16) = v523;
      v216 = swift_allocObject();
      v217 = v524;
      v525 = v216;
      *(v216 + 16) = v706;
      *(v216 + 24) = v217;
      v218 = swift_allocObject();
      v219 = v525;
      v558 = v218;
      *(v218 + 16) = v707;
      *(v218 + 24) = v219;
      v559 = swift_allocObject();
      *(v559 + 16) = 0;
      v560 = swift_allocObject();
      *(v560 + 16) = v527;
      v220 = swift_allocObject();
      v221 = v530;
      v531 = v220;
      *(v220 + 16) = v708;
      *(v220 + 24) = v221;
      v222 = swift_allocObject();
      v223 = v531;
      v562 = v222;
      *(v222 + 16) = v709;
      *(v222 + 24) = v223;
      v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v561 = sub_1B0E46A48();
      v563 = v224;

      v225 = v532;
      v226 = v563;
      *v563 = v710;
      v226[1] = v225;

      v227 = v533;
      v228 = v563;
      v563[2] = v711;
      v228[3] = v227;

      v229 = v534;
      v230 = v563;
      v563[4] = v712;
      v230[5] = v229;

      v231 = v535;
      v232 = v563;
      v563[6] = v713;
      v232[7] = v231;

      v233 = v536;
      v234 = v563;
      v563[8] = v714;
      v234[9] = v233;

      v235 = v537;
      v236 = v563;
      v563[10] = v715;
      v236[11] = v235;

      v237 = v538;
      v238 = v563;
      v563[12] = v716;
      v238[13] = v237;

      v239 = v539;
      v240 = v563;
      v563[14] = v717;
      v240[15] = v239;

      v241 = v540;
      v242 = v563;
      v563[16] = v718;
      v242[17] = v241;

      v243 = v541;
      v244 = v563;
      v563[18] = v719;
      v244[19] = v243;

      v245 = v542;
      v246 = v563;
      v563[20] = v720;
      v246[21] = v245;

      v247 = v543;
      v248 = v563;
      v563[22] = v721;
      v248[23] = v247;

      v249 = v544;
      v250 = v563;
      v563[24] = v722;
      v250[25] = v249;

      v251 = v545;
      v252 = v563;
      v563[26] = v723;
      v252[27] = v251;

      v253 = v546;
      v254 = v563;
      v563[28] = v724;
      v254[29] = v253;

      v255 = v547;
      v256 = v563;
      v563[30] = v725;
      v256[31] = v255;

      v257 = v548;
      v258 = v563;
      v563[32] = v726;
      v258[33] = v257;

      v259 = v549;
      v260 = v563;
      v563[34] = v727;
      v260[35] = v259;

      v261 = v550;
      v262 = v563;
      v563[36] = v728;
      v262[37] = v261;

      v263 = v551;
      v264 = v563;
      v563[38] = v729;
      v264[39] = v263;

      v265 = v552;
      v266 = v563;
      v563[40] = v730;
      v266[41] = v265;

      v267 = v553;
      v268 = v563;
      v563[42] = v731;
      v268[43] = v267;

      v269 = v554;
      v270 = v563;
      v563[44] = v732;
      v270[45] = v269;

      v271 = v555;
      v272 = v563;
      v563[46] = v733;
      v272[47] = v271;

      v273 = v556;
      v274 = v563;
      v563[48] = v734;
      v274[49] = v273;

      v275 = v557;
      v276 = v563;
      v563[50] = v735;
      v276[51] = v275;

      v277 = v558;
      v278 = v563;
      v563[52] = v736;
      v278[53] = v277;

      v279 = v559;
      v280 = v563;
      v563[54] = v737;
      v280[55] = v279;

      v281 = v560;
      v282 = v563;
      v563[56] = v738;
      v282[57] = v281;

      v283 = v562;
      v284 = v563;
      v563[58] = v739;
      v284[59] = v283;
      sub_1B0394964();

      if (os_log_type_enabled(v565, v566))
      {
        v285 = v830;
        v485 = sub_1B0E45D78();
        v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v486 = sub_1B03949A8(0, v484, v484);
        v487 = sub_1B03949A8(4, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v488 = &v868;
        v868 = v485;
        v489 = &v867;
        v867 = v486;
        v490 = &v866;
        v866 = v487;
        sub_1B0394A48(3, &v868);
        sub_1B0394A48(10, v488);
        v864 = v710;
        v865 = v532;
        sub_1B03949FC(&v864, v488, v489, v490);
        v491 = v285;
        if (v285)
        {

          __break(1u);
        }

        else
        {
          v864 = v711;
          v865 = v533;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v483 = 0;
          v864 = v712;
          v865 = v534;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v482 = 0;
          v864 = v713;
          v865 = v535;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v481 = 0;
          v864 = v714;
          v865 = v536;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v480 = 0;
          v864 = v715;
          v865 = v537;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v479 = 0;
          v864 = v716;
          v865 = v538;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v478 = 0;
          v864 = v717;
          v865 = v539;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v477 = 0;
          v864 = v718;
          v865 = v540;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v476 = 0;
          v864 = v719;
          v865 = v541;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v475 = 0;
          v864 = v720;
          v865 = v542;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v474 = 0;
          v864 = v721;
          v865 = v543;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v473 = 0;
          v864 = v722;
          v865 = v544;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v472 = 0;
          v864 = v723;
          v865 = v545;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v471 = 0;
          v864 = v724;
          v865 = v546;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v470 = 0;
          v864 = v725;
          v865 = v547;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v469 = 0;
          v864 = v726;
          v865 = v548;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v468 = 0;
          v864 = v727;
          v865 = v549;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v467 = 0;
          v864 = v728;
          v865 = v550;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v466 = 0;
          v864 = v729;
          v865 = v551;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v465 = 0;
          v864 = v730;
          v865 = v552;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v464 = 0;
          v864 = v731;
          v865 = v553;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v463 = 0;
          v864 = v732;
          v865 = v554;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v462 = 0;
          v864 = v733;
          v865 = v555;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v461 = 0;
          v864 = v734;
          v865 = v556;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v460 = 0;
          v864 = v735;
          v865 = v557;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v459 = 0;
          v864 = v736;
          v865 = v558;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v458 = 0;
          v864 = v737;
          v865 = v559;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v457 = 0;
          v864 = v738;
          v865 = v560;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          v456 = 0;
          v864 = v739;
          v865 = v562;
          sub_1B03949FC(&v864, &v868, &v867, &v866);
          _os_log_impl(&dword_1B0389000, v565, v566, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] File writer failed to complete attachment '[%{public}s]' %{public}s/%{public}s, UID %u.", v485, 0x4Fu);
          sub_1B03998A8(v486, 0, v484);
          sub_1B03998A8(v487, 4, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v565);
      (*(v840 + 8))(v845, v839);
    }

    v454 = sub_1B0797770();
    v455 = v286;
    v850(v853, v454, v286, v287 & 1);
  }

  else
  {
    (*(v840 + 16))(v843, v852, v839);
    sub_1B074B69C(v852, v838);
    sub_1B074B69C(v838, v836);
    sub_1B074E41C(v838, v834);
    v289 = (v836 + *(v832 + 20));
    v399 = *v289;
    v400 = *(v289 + 1);
    v401 = *(v289 + 1);
    v402 = *(v289 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v836);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v398 = 36;
    v421 = 7;
    v290 = swift_allocObject();
    v291 = v400;
    v292 = v401;
    v293 = v402;
    v406 = v290;
    *(v290 + 16) = v399;
    *(v290 + 20) = v291;
    *(v290 + 24) = v292;
    *(v290 + 32) = v293;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v294 = swift_allocObject();
    v295 = v400;
    v296 = v401;
    v297 = v402;
    v397 = v294;
    *(v294 + 16) = v399;
    *(v294 + 20) = v295;
    *(v294 + 24) = v296;
    *(v294 + 32) = v297;

    v420 = 32;
    v298 = swift_allocObject();
    v299 = v397;
    v410 = v298;
    *(v298 + 16) = v790;
    *(v298 + 24) = v299;
    sub_1B0394868();
    sub_1B0394868();

    v300 = swift_allocObject();
    v301 = v400;
    v302 = v401;
    v303 = v402;
    v304 = v300;
    v305 = v834;
    v413 = v304;
    *(v304 + 16) = v399;
    *(v304 + 20) = v301;
    *(v304 + 24) = v302;
    *(v304 + 32) = v303;
    sub_1B074B764(v305);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v424 = 24;
    v403 = swift_allocObject();
    *(v403 + 16) = v853;

    v306 = swift_allocObject();
    v307 = v403;
    v416 = v306;
    *(v306 + 16) = v791;
    *(v306 + 24) = v307;

    v404 = swift_allocObject();
    *(v404 + 16) = v848;

    v308 = swift_allocObject();
    v309 = v404;
    v422 = v308;
    *(v308 + 16) = v792;
    *(v308 + 24) = v309;

    v452 = sub_1B0E43988();
    v453 = sub_1B0E458E8();
    v418 = 17;
    v425 = swift_allocObject();
    v408 = 16;
    *(v425 + 16) = 16;
    v426 = swift_allocObject();
    v419 = 4;
    *(v426 + 16) = 4;
    v310 = swift_allocObject();
    v405 = v310;
    *(v310 + 16) = v690;
    *(v310 + 24) = 0;
    v311 = swift_allocObject();
    v312 = v405;
    v427 = v311;
    *(v311 + 16) = v793;
    *(v311 + 24) = v312;
    v428 = swift_allocObject();
    *(v428 + 16) = 0;
    v429 = swift_allocObject();
    *(v429 + 16) = 1;
    v313 = swift_allocObject();
    v314 = v406;
    v407 = v313;
    *(v313 + 16) = v794;
    *(v313 + 24) = v314;
    v315 = swift_allocObject();
    v316 = v407;
    v430 = v315;
    *(v315 + 16) = v795;
    *(v315 + 24) = v316;
    v431 = swift_allocObject();
    *(v431 + 16) = v408;
    v432 = swift_allocObject();
    *(v432 + 16) = v419;
    v317 = swift_allocObject();
    v409 = v317;
    *(v317 + 16) = v694;
    *(v317 + 24) = 0;
    v318 = swift_allocObject();
    v319 = v409;
    v433 = v318;
    *(v318 + 16) = v796;
    *(v318 + 24) = v319;
    v434 = swift_allocObject();
    *(v434 + 16) = 0;
    v435 = swift_allocObject();
    *(v435 + 16) = v419;
    v320 = swift_allocObject();
    v321 = v410;
    v411 = v320;
    *(v320 + 16) = v797;
    *(v320 + 24) = v321;
    v322 = swift_allocObject();
    v323 = v411;
    v436 = v322;
    *(v322 + 16) = v798;
    *(v322 + 24) = v323;
    v437 = swift_allocObject();
    *(v437 + 16) = 112;
    v438 = swift_allocObject();
    v415 = 8;
    *(v438 + 16) = 8;
    v412 = swift_allocObject();
    *(v412 + 16) = v698;
    v324 = swift_allocObject();
    v325 = v412;
    v439 = v324;
    *(v324 + 16) = v799;
    *(v324 + 24) = v325;
    v440 = swift_allocObject();
    *(v440 + 16) = 37;
    v441 = swift_allocObject();
    *(v441 + 16) = v415;
    v326 = swift_allocObject();
    v327 = v413;
    v414 = v326;
    *(v326 + 16) = v800;
    *(v326 + 24) = v327;
    v328 = swift_allocObject();
    v329 = v414;
    v442 = v328;
    *(v328 + 16) = v801;
    *(v328 + 24) = v329;
    v443 = swift_allocObject();
    *(v443 + 16) = 34;
    v444 = swift_allocObject();
    *(v444 + 16) = v415;
    v330 = swift_allocObject();
    v331 = v416;
    v417 = v330;
    *(v330 + 16) = v802;
    *(v330 + 24) = v331;
    v332 = swift_allocObject();
    v333 = v417;
    v445 = v332;
    *(v332 + 16) = v803;
    *(v332 + 24) = v333;
    v446 = swift_allocObject();
    *(v446 + 16) = 0;
    v447 = swift_allocObject();
    *(v447 + 16) = v419;
    v334 = swift_allocObject();
    v335 = v422;
    v423 = v334;
    *(v334 + 16) = v804;
    *(v334 + 24) = v335;
    v336 = swift_allocObject();
    v337 = v423;
    v449 = v336;
    *(v336 + 16) = v805;
    *(v336 + 24) = v337;
    v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v448 = sub_1B0E46A48();
    v450 = v338;

    v339 = v425;
    v340 = v450;
    *v450 = v806;
    v340[1] = v339;

    v341 = v426;
    v342 = v450;
    v450[2] = v807;
    v342[3] = v341;

    v343 = v427;
    v344 = v450;
    v450[4] = v808;
    v344[5] = v343;

    v345 = v428;
    v346 = v450;
    v450[6] = v809;
    v346[7] = v345;

    v347 = v429;
    v348 = v450;
    v450[8] = v810;
    v348[9] = v347;

    v349 = v430;
    v350 = v450;
    v450[10] = v811;
    v350[11] = v349;

    v351 = v431;
    v352 = v450;
    v450[12] = v812;
    v352[13] = v351;

    v353 = v432;
    v354 = v450;
    v450[14] = v813;
    v354[15] = v353;

    v355 = v433;
    v356 = v450;
    v450[16] = v814;
    v356[17] = v355;

    v357 = v434;
    v358 = v450;
    v450[18] = v815;
    v358[19] = v357;

    v359 = v435;
    v360 = v450;
    v450[20] = v816;
    v360[21] = v359;

    v361 = v436;
    v362 = v450;
    v450[22] = v817;
    v362[23] = v361;

    v363 = v437;
    v364 = v450;
    v450[24] = v818;
    v364[25] = v363;

    v365 = v438;
    v366 = v450;
    v450[26] = v819;
    v366[27] = v365;

    v367 = v439;
    v368 = v450;
    v450[28] = v820;
    v368[29] = v367;

    v369 = v440;
    v370 = v450;
    v450[30] = v821;
    v370[31] = v369;

    v371 = v441;
    v372 = v450;
    v450[32] = v822;
    v372[33] = v371;

    v373 = v442;
    v374 = v450;
    v450[34] = v823;
    v374[35] = v373;

    v375 = v443;
    v376 = v450;
    v450[36] = v824;
    v376[37] = v375;

    v377 = v444;
    v378 = v450;
    v450[38] = v825;
    v378[39] = v377;

    v379 = v445;
    v380 = v450;
    v450[40] = v826;
    v380[41] = v379;

    v381 = v446;
    v382 = v450;
    v450[42] = v827;
    v382[43] = v381;

    v383 = v447;
    v384 = v450;
    v450[44] = v828;
    v384[45] = v383;

    v385 = v449;
    v386 = v450;
    v450[46] = v829;
    v386[47] = v385;
    sub_1B0394964();

    if (os_log_type_enabled(v452, v453))
    {
      v387 = v830;
      v390 = sub_1B0E45D78();
      v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v391 = sub_1B03949A8(0, v389, v389);
      v392 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v393 = &v876;
      v876 = v390;
      v394 = &v875;
      v875 = v391;
      v395 = &v874;
      v874 = v392;
      sub_1B0394A48(3, &v876);
      sub_1B0394A48(8, v393);
      v872 = v806;
      v873 = v425;
      sub_1B03949FC(&v872, v393, v394, v395);
      v396 = v387;
      if (v387)
      {

        __break(1u);
      }

      else
      {
        v872 = v807;
        v873 = v426;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[22] = 0;
        v872 = v808;
        v873 = v427;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[21] = 0;
        v872 = v809;
        v873 = v428;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[20] = 0;
        v872 = v810;
        v873 = v429;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[19] = 0;
        v872 = v811;
        v873 = v430;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[18] = 0;
        v872 = v812;
        v873 = v431;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[17] = 0;
        v872 = v813;
        v873 = v432;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[16] = 0;
        v872 = v814;
        v873 = v433;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[15] = 0;
        v872 = v815;
        v873 = v434;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[14] = 0;
        v872 = v816;
        v873 = v435;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[13] = 0;
        v872 = v817;
        v873 = v436;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[12] = 0;
        v872 = v818;
        v873 = v437;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[11] = 0;
        v872 = v819;
        v873 = v438;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[10] = 0;
        v872 = v820;
        v873 = v439;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[9] = 0;
        v872 = v821;
        v873 = v440;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[8] = 0;
        v872 = v822;
        v873 = v441;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[7] = 0;
        v872 = v823;
        v873 = v442;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[6] = 0;
        v872 = v824;
        v873 = v443;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[5] = 0;
        v872 = v825;
        v873 = v444;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[4] = 0;
        v872 = v826;
        v873 = v445;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[3] = 0;
        v872 = v827;
        v873 = v446;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[2] = 0;
        v872 = v828;
        v873 = v447;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        v388[1] = 0;
        v872 = v829;
        v873 = v449;
        sub_1B03949FC(&v872, &v876, &v875, &v874);
        _os_log_impl(&dword_1B0389000, v452, v453, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] File writer did complete, but no in-progress for attachment '[%{public}s]', UID %u.", v390, 0x3Bu);
        sub_1B03998A8(v391, 0, v389);
        sub_1B03998A8(v392, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v452);
    return (*(v840 + 8))(v843, v839);
  }
}

uint64_t sub_1B0797770()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B07977D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2;
  v15 = a1;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
  v8 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v6 - v8;
  v16 = 0;
  v9 = type metadata accessor for MessageSectionDataConcatenator(0);
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v13 = &v6 - v12;
  v24 = &v6 - v12;
  v23 = v4;
  v22 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = (v2 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  swift_beginAccess();
  v17 = *v14;
  v18 = &v21;
  v21 = v15;
  v19 = type metadata accessor for InProgressMessageDownload.Section(v16);
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(v18);
  if ((*(*(v19 - 8) + 48))(v20, 1) == 1)
  {
    sub_1B07ADE14(v20);
    swift_endAccess();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B07AE938(v20, v13);
      swift_endAccess();
      sub_1B07AE9EC(v13, v7);
      (*(v10 + 56))(v7, 0, 1, v9);
      return sub_1B07AE888(v13);
    }

    sub_1B0760B84(v20);
    swift_endAccess();
  }

  return (*(v10 + 56))(v7, 1, 1, v9);
}

uint64_t sub_1B0797A7C(uint64_t a1)
{
  v9 = a1;
  v7 = 0;
  v13 = sub_1B0E443C8();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1 = &v6 - v6;
  v14 = &v6 - v6;
  v8 = (*(*(type metadata accessor for MessageSectionData.Segment(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v6 - v8;
  v4 = type metadata accessor for MessageSectionData(v3);
  sub_1B07AB12C(v9 + *(v4 + 28), v10);
  (*(v11 + 16))(v1, v10, v13);
  sub_1B07AB694(v10);
  v15 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v11 + 8))(v14, v13);
  return v15;
}

uint64_t sub_1B0797C00(uint64_t *a1)
{
  v2 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0797C2C(uint64_t a1)
{
  v7 = a1;
  v5 = 0;
  v10 = sub_1B0E443C8();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1 = &v5 - v6;
  v11 = &v5 - v6;
  v3 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v2);
  (*(v8 + 16))(v1, v7 + *(v3 + 28), v10);
  v12 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v8 + 8))(v11, v10);
  return v12;
}

uint64_t sub_1B0797D40(uint64_t a1)
{
  v10 = a1;
  v9 = sub_1B0E443C8();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v9);
  v5 = &v3 - v4;
  (*(v7 + 16))(v1);
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

void sub_1B0797E8C(uint64_t *a1)
{
  sub_1B074E4B4(a1, v4);
  v2 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  sub_1B07AEDE0(a1, (v1 + *(v2 + 20)));
  sub_1B074E868();
}

uint64_t sub_1B0797EF8(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B07AEE78(v1, v3 - v3[0]);
  sub_1B07AF054(v4, v3[1]);
  return sub_1B07AF3D4(v5);
}

uint64_t sub_1B0797FC0(uint64_t a1)
{
  v2 = type metadata accessor for InProgressMessageDownload.Result(0);
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

uint64_t sub_1B0797FF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1B07B45C0(a1, a3);
  result = type metadata accessor for InProgressMessageDownload.Result(0);
  *&a3[*(result + 20)] = a2;
  return result;
}

BOOL sub_1B0798040()
{
  v4[5] = 0;
  v1 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  memcpy(__dst, (v0 + *(v1 + 20)), sizeof(__dst));
  sub_1B074E4B4(__dst, v4);
  v3 = sub_1B07980E0();
  sub_1B074E868();
  return (v3 & 1) == 0;
}

uint64_t sub_1B07980E0()
{
  v10 = v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v7 = sub_1B0E454F8();

  sub_1B074E4B4(v6, v9);
  if (v7)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = sub_1B0E454F8();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  sub_1B074E868();
  sub_1B074E4B4(v6, v8);
  if (v5)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2 = sub_1B0E454F8();

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  sub_1B074E868();
  return v3 & 1;
}

id sub_1B07982B0()
{
  v5 = "Fatal error";
  v6 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v7 = "Message/InProgressMessageDownload.swift";
  v15 = 0;
  v13 = sub_1B0E443C8();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v13);
  v12 = &v3 - v8;
  v15 = v1;
  (*(v10 + 16))(&v3 - v8, v0);
  v9 = sub_1B0E44338();
  v14 = MFDataFromDispatchData(v9);
  MEMORY[0x1E69E5920](v9);
  (*(v10 + 8))(v12, v13);
  if (v14)
  {
    return v14;
  }

  sub_1B0E465A8();
  __break(1u);
  return v4;
}

uint64_t sub_1B0798464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v13 = a3;
  v10 = a1;
  v9[1] = a2;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v9 - v11;
  v17 = v4;
  v16 = v5;
  v15 = v3;
  sub_1B0798550(v4, v5, v9 - v11);
  v6 = v12;
  v7 = type metadata accessor for InProgressMessageDownload.Completed(0);
  return sub_1B0797FF8(v14, *(v6 + *(v7 + 32)), v13);
}

uint64_t sub_1B0798550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v64 = a1;
  v65 = a2;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
  v34 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v20 - v34;
  v66 = 0;
  v36 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v20 - v39;
  v84 = &v20 - v39;
  v41 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v42 = (&v20 - v41);
  v43 = (*(*(_s31PreviouslyDownloadedMessageDataV4MIMEOMa(v5) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v44 = &v20 - v43;
  v45 = (*(*(_s31PreviouslyDownloadedMessageDataVMa(v6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v46 = &v20 - v45;
  v47 = type metadata accessor for Message(v7);
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v20 - v50;
  v83 = &v20 - v50;
  v52 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v20 - v52;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20F8, &qword_1B0E9B580) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v55 = &v20 - v54;
  v56 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v10);
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v60 = &v20 - v59;
  v82 = &v20 - v59;
  v12 = _s6LoggerVMa_1(v11);
  v61 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v20 - v61;
  v63 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v76 = &v20 - v63;
  v75 = sub_1B0E443C8();
  v73 = *(v75 - 8);
  v74 = v75 - 8;
  v68 = *(v73 + 64);
  v67 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v20 - v67;
  v70 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v20 - v70;
  v81 = &v20 - v70;
  v80 = v14;
  v79 = v15;
  v78 = v3;
  v72 = type metadata accessor for InProgressMessageDownload.Completed(v16);
  sub_1B075F4A8((v3 + v72[11]), v76);
  if ((*(v73 + 48))(v76, 1, v75) == 1)
  {
    sub_1B075B1E0(v76);
    sub_1B07997A8();
    if ((*(v57 + 48))(v55, 1, v56) == 1)
    {
      v18 = v44;
      sub_1B07AEB1C(v55);
      sub_1B075E87C(v33 + v72[6], v46);
      sub_1B07AF5B8(v46, v18);
      sub_1B075ECD0(v46);
      v27 = sub_1B08255A8();
      sub_1B075EC04(v44);
      if (v27)
      {
        v24 = *(v33 + v72[9]);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v77 = v24;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
        sub_1B07AF6E0();
        v25 = sub_1B0E45748();

        v26 = v25 ^ 1;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        sub_1B079C618(v65, v42);
        if ((*(v48 + 48))(v42, 1, v47) == 1)
        {
          sub_1B07AF920(v42);
          return (*(v37 + 56))(v32, 1, 1, v36);
        }

        else
        {
          v19 = v33;
          (*(v48 + 32))(v51, v42, v47);
          (*(v48 + 16))(v53, v51, v47);
          v20 = *(v19 + v72[9]);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v21 = sub_1B0799230();
          v22 = *v33;

          sub_1B074B69C(v65, v62);
          sub_1B079C7E4(v53, v20, v21, v22, v64, v62, v32);
          return (*(v48 + 8))(v51, v47);
        }
      }

      else
      {
        sub_1B0799E14(v64, v65, v35);
        if ((*(v37 + 48))(v35, 1, v36) == 1)
        {
          sub_1B07AF3D4(v35);
          return (*(v37 + 56))(v32, 1, 1, v36);
        }

        else
        {
          sub_1B07AF768(v35, v40);
          sub_1B07AF800(v40, v32);
          (*(v37 + 56))(v32, 0, 1, v36);
          return sub_1B07AF320(v40);
        }
      }
    }

    else
    {
      sub_1B07AC238(v55, v60);
      (*(v73 + 16))(v69, v60 + *(v56 + 28), v75);
      Message.init(_:)(v69, v53);
      v28 = sub_1B0799230();
      v29 = *v33;

      sub_1B074B69C(v65, v62);
      sub_1B079986C(v53, v28, v29, v64, v62, v32);
      return sub_1B07AC2FC(v60);
    }
  }

  else
  {
    (*(v73 + 32))(v71, v76, v75);
    (*(v73 + 16))(v69, v71, v75);
    v30 = sub_1B0799230();
    v31 = *v33;

    sub_1B074B69C(v65, v62);
    sub_1B0799428(v69, v30, v31, v64, v62, v32);
    (*(v37 + 56))(v32, 0, 1, v36);
    return (*(v73 + 8))(v71, v75);
  }
}

uint64_t sub_1B0799230()
{
  v12 = 0;
  v11 = sub_1B07A2788;
  v19 = 0;
  v4[5] = 0;
  v5 = _s31PreviouslyDownloadedMessageDataVMa(0);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = v4 - v6;
  v19 = v0;
  v8 = type metadata accessor for InProgressMessageDownload.Completed(v1);
  v9 = *(v0 + *(v8 + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = v9;
  v10 = sub_1B07167A8();
  v2 = sub_1B0E44588();
  v15 = &v17;
  v17 = v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2128, &qword_1B0E9B5A8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07AF9C8();
  sub_1B0E44FD8();
  sub_1B039E440(v18);
  v4[1] = v18[1];
  sub_1B075E87C((v4[4] + *(v8 + 24)), v7);
  v4[0] = *&v7[*(v5 + 20)];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B075ECD0(v7);
  v4[3] = &v16;
  v16 = v4[0];
  v4[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  sub_1B07AFA50();
  return sub_1B0E454B8();
}

uint64_t sub_1B0799428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v35 = a1;
  v32 = a2;
  v19 = a3;
  v31 = a4;
  v30 = a5;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v17 = 0;
  v36 = sub_1B0E443C8();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v16 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v15 - v16;
  v27 = type metadata accessor for Message(v6);
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v15 - v18;
  v28 = &v15 - v18;
  v45 = &v15 - v18;
  v23 = type metadata accessor for InProgressMessageDownload.EMLX(v8);
  v9 = MEMORY[0x1EEE9AC00](v22);
  v37 = &v15 - v10;
  v44 = &v15 - v10;
  v43 = v11;
  v42 = v32;
  v41 = v19;
  v40 = v12;
  v39 = v13;
  v21 = *(v33 + 16);
  v20 = v33 + 16;
  v21(v9);
  Message.init(_:)(v22, v7);
  v24 = v46;
  sub_1B07A2A88(v31, v32, v46);
  (v21)(v22, v35, v36);
  (*(v33 + 32))(v37, v22, v36);
  sub_1B074E4B4(v24, v38);
  memcpy((v37 + *(v23 + 20)), v24, 0x28uLL);
  sub_1B074E868();
  (*(v25 + 8))(v28, v27);
  sub_1B07AF800(v37, v29);
  sub_1B074B764(v30);

  (*(v33 + 8))(v35, v36);
  return sub_1B07AF320(v37);
}

void sub_1B07997A8()
{
  v4 = v1;
  v2 = *(v1 + *(type metadata accessor for InProgressMessageDownload.Completed(0) + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
  sub_1B07AFAD8();
  sub_1B0E44FB8();
  sub_1B039E440(&v3);
}

uint64_t sub_1B079986C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v37 = a1;
  v36 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v24 = 0;
  v6 = _s6LoggerVMa_1(0);
  v21 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v20 - v21;
  v23 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v35 = &v20 - v23;
  v25 = sub_1B0E443C8();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v20 - v28;
  v30 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v20 - v30;
  v53 = &v20 - v30;
  v38 = type metadata accessor for InProgressMessageDownload.EMLX(v9);
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v42 = *(v39 + 64);
  v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v43 = &v20 - v41;
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v20 - v44;
  v52 = &v20 - v44;
  v51 = v11;
  v50 = v12;
  v49 = v13;
  v48 = v14;
  v47 = v15;
  sub_1B07A2814(v11, v16);
  v46 = 0;
  (*(v26 + 56))(v35, 0, 1, v25);
  if ((*(v26 + 48))(v35, 1, v25) == 1)
  {
    sub_1B075B1E0(v35);
    sub_1B074B764(v34);

    v17 = type metadata accessor for Message(0);
    (*(*(v17 - 8) + 8))(v37);
    return (*(v39 + 56))(v20, 1, 1, v38);
  }

  else
  {
    (*(v26 + 32))(v31, v35, v25);
    (*(v26 + 16))(v29, v31, v25);
    sub_1B074B69C(v34, v22);
    sub_1B0799428(v29, v36, v32, v33, v22, v43);
    sub_1B07AF768(v43, v45);
    (*(v26 + 8))(v31, v25);
    sub_1B07AF800(v45, v20);
    (*(v39 + 56))(v20, 0, 1, v38);
    sub_1B074B764(v34);
    v19 = type metadata accessor for Message(0);
    (*(*(v19 - 8) + 8))(v37);
    return sub_1B07AF320(v45);
  }
}

uint64_t sub_1B0799E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v225 = a3;
  v295 = a1;
  v290 = a2;
  v227 = sub_1B079EE08;
  v228 = sub_1B074E050;
  v229 = sub_1B07B073C;
  v230 = sub_1B0394C30;
  v231 = sub_1B0394C24;
  v232 = sub_1B074DFFC;
  v233 = sub_1B039BA88;
  v234 = sub_1B039BB94;
  v235 = sub_1B0394C24;
  v236 = sub_1B039BBA0;
  v237 = sub_1B039BC08;
  v238 = sub_1B06BA324;
  v239 = sub_1B074E0E4;
  v240 = sub_1B039BCF8;
  v241 = sub_1B07AFC70;
  v242 = sub_1B039BCF8;
  v243 = sub_1B07AB020;
  v244 = sub_1B039BC08;
  v245 = sub_1B0398F5C;
  v246 = sub_1B0398F5C;
  v247 = sub_1B0399178;
  v248 = sub_1B0398F5C;
  v249 = sub_1B0398F5C;
  v250 = sub_1B039BA94;
  v251 = sub_1B0398F5C;
  v252 = sub_1B0398F5C;
  v253 = sub_1B0399178;
  v254 = sub_1B0398F5C;
  v255 = sub_1B0398F5C;
  v256 = sub_1B03991EC;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0398F5C;
  v259 = sub_1B03993BC;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B039BCEC;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0398F5C;
  v265 = sub_1B039BCEC;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0398F5C;
  v268 = sub_1B03991EC;
  v269 = sub_1B079F204;
  v313 = 0;
  v312 = 0;
  v311 = 0;
  v310 = 0;
  v309 = 0;
  v308 = 0;
  v270 = 0;
  v306 = 0;
  v288 = 0;
  v271 = *(type metadata accessor for InProgressMessageDownload.Completed(0) - 8);
  v272 = v271;
  v273 = *(v271 + 64);
  v274 = (v273 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v275 = (&v121 - v274);
  v276 = _s6LoggerVMa_1(v4);
  v277 = (*(*(v276 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v288);
  v278 = &v121 - v277;
  v279 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v280 = &v121 - v279;
  v281 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v282 = &v121 - v281;
  v283 = sub_1B0E439A8();
  v284 = *(v283 - 8);
  v285 = v283 - 8;
  v286 = (*(v284 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v283);
  v287 = &v121 - v286;
  v289 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v288);
  v299 = &v121 - v289;
  v300 = type metadata accessor for Message(v9);
  v297 = *(v300 - 8);
  v298 = v300 - 8;
  v292 = *(v297 + 64);
  v291 = (v292 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v290);
  v293 = &v121 - v291;
  v294 = (v292 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v296 = &v121 - v294;
  v313 = &v121 - v294;
  v312 = v295;
  v311 = v11;
  v310 = v3;
  sub_1B079CCFC(v11, v12);
  if ((*(v297 + 48))(v299, 1, v300) == 1)
  {
    sub_1B07AF920(v299);
    v120 = type metadata accessor for InProgressMessageDownload.EMLX(0);
    return (*(*(v120 - 8) + 56))(v225, 1);
  }

  else
  {
    v13 = v270;
    (*(v297 + 32))(v296, v299, v300);
    v221 = Message.findPartsMissingData(cache:)(v295);
    v309 = v221;
    v307[2] = v221;
    v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
    sub_1B07AFB60();
    result = sub_1B0E44F58();
    v223 = v13;
    v224 = result;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v219 = v224;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v308 = v219;
      v307[1] = v219;
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      v218 = sub_1B07AFBE8();
      v220 = sub_1B0E45748();

      if (v220)
      {
        v119 = type metadata accessor for InProgressMessageDownload.EMLX(0);
        (*(*(v119 - 8) + 56))(v225, 1);
        sub_1B039E440(&v308);

        return (*(v297 + 8))(v296, v300);
      }

      (*(v284 + 16))(v287, v290, v283);
      sub_1B074B69C(v290, v282);
      sub_1B074B69C(v282, v280);
      sub_1B074E41C(v282, v278);
      v15 = (v280 + *(v276 + 20));
      v161 = *v15;
      v162 = *(v15 + 1);
      v163 = *(v15 + 1);
      v164 = *(v15 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v280);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v160 = 36;
      v184 = 7;
      v16 = swift_allocObject();
      v17 = v162;
      v18 = v163;
      v19 = v164;
      v169 = v16;
      *(v16 + 16) = v161;
      *(v16 + 20) = v17;
      *(v16 + 24) = v18;
      *(v16 + 32) = v19;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = swift_allocObject();
      v21 = v162;
      v22 = v163;
      v23 = v164;
      v159 = v20;
      *(v20 + 16) = v161;
      *(v20 + 20) = v21;
      *(v20 + 24) = v22;
      *(v20 + 32) = v23;

      v183 = 32;
      v24 = swift_allocObject();
      v25 = v159;
      v173 = v24;
      *(v24 + 16) = v228;
      *(v24 + 24) = v25;
      sub_1B0394868();
      sub_1B0394868();

      v26 = swift_allocObject();
      v27 = v162;
      v28 = v163;
      v29 = v164;
      v30 = v26;
      v31 = v278;
      v176 = v30;
      *(v30 + 16) = v161;
      *(v30 + 20) = v27;
      *(v30 + 24) = v28;
      *(v30 + 32) = v29;
      sub_1B074B764(v31);
      v165 = v308;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v187 = 24;
      v32 = swift_allocObject();
      v33 = v275;
      v34 = v32;
      v35 = v226;
      v179 = v34;
      *(v34 + 16) = v165;
      sub_1B07AFC78(v35, v33);
      v166 = (*(v272 + 80) + 16) & ~*(v272 + 80);
      v167 = swift_allocObject();
      sub_1B07B02D8(v275, (v167 + v166));

      v36 = swift_allocObject();
      v37 = v167;
      v185 = v36;
      *(v36 + 16) = v229;
      *(v36 + 24) = v37;

      v215 = sub_1B0E43988();
      v216 = sub_1B0E45908();
      v181 = 17;
      v188 = swift_allocObject();
      v171 = 16;
      *(v188 + 16) = 16;
      v189 = swift_allocObject();
      v182 = 4;
      *(v189 + 16) = 4;
      v38 = swift_allocObject();
      v168 = v38;
      *(v38 + 16) = v230;
      *(v38 + 24) = 0;
      v39 = swift_allocObject();
      v40 = v168;
      v190 = v39;
      *(v39 + 16) = v231;
      *(v39 + 24) = v40;
      v191 = swift_allocObject();
      *(v191 + 16) = 0;
      v192 = swift_allocObject();
      *(v192 + 16) = 1;
      v41 = swift_allocObject();
      v42 = v169;
      v170 = v41;
      *(v41 + 16) = v232;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v170;
      v193 = v43;
      *(v43 + 16) = v233;
      *(v43 + 24) = v44;
      v194 = swift_allocObject();
      *(v194 + 16) = v171;
      v195 = swift_allocObject();
      *(v195 + 16) = v182;
      v45 = swift_allocObject();
      v172 = v45;
      *(v45 + 16) = v234;
      *(v45 + 24) = 0;
      v46 = swift_allocObject();
      v47 = v172;
      v196 = v46;
      *(v46 + 16) = v235;
      *(v46 + 24) = v47;
      v197 = swift_allocObject();
      *(v197 + 16) = 0;
      v198 = swift_allocObject();
      *(v198 + 16) = v182;
      v48 = swift_allocObject();
      v49 = v173;
      v174 = v48;
      *(v48 + 16) = v236;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v174;
      v199 = v50;
      *(v50 + 16) = v237;
      *(v50 + 24) = v51;
      v200 = swift_allocObject();
      *(v200 + 16) = 112;
      v201 = swift_allocObject();
      v178 = 8;
      *(v201 + 16) = 8;
      v175 = swift_allocObject();
      *(v175 + 16) = 0x786F626C69616DLL;
      v52 = swift_allocObject();
      v53 = v175;
      v202 = v52;
      *(v52 + 16) = v238;
      *(v52 + 24) = v53;
      v203 = swift_allocObject();
      *(v203 + 16) = 37;
      v204 = swift_allocObject();
      *(v204 + 16) = v178;
      v54 = swift_allocObject();
      v55 = v176;
      v177 = v54;
      *(v54 + 16) = v239;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v177;
      v205 = v56;
      *(v56 + 16) = v240;
      *(v56 + 24) = v57;
      v206 = swift_allocObject();
      *(v206 + 16) = 32;
      v207 = swift_allocObject();
      *(v207 + 16) = v178;
      v58 = swift_allocObject();
      v59 = v179;
      v180 = v58;
      *(v58 + 16) = v241;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v180;
      v208 = v60;
      *(v60 + 16) = v242;
      *(v60 + 24) = v61;
      v209 = swift_allocObject();
      *(v209 + 16) = 0;
      v210 = swift_allocObject();
      *(v210 + 16) = v182;
      v62 = swift_allocObject();
      v63 = v185;
      v186 = v62;
      *(v62 + 16) = v243;
      *(v62 + 24) = v63;
      v64 = swift_allocObject();
      v65 = v186;
      v212 = v64;
      *(v64 + 16) = v244;
      *(v64 + 24) = v65;
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v211 = sub_1B0E46A48();
      v213 = v66;

      v67 = v188;
      v68 = v213;
      *v213 = v245;
      v68[1] = v67;

      v69 = v189;
      v70 = v213;
      v213[2] = v246;
      v70[3] = v69;

      v71 = v190;
      v72 = v213;
      v213[4] = v247;
      v72[5] = v71;

      v73 = v191;
      v74 = v213;
      v213[6] = v248;
      v74[7] = v73;

      v75 = v192;
      v76 = v213;
      v213[8] = v249;
      v76[9] = v75;

      v77 = v193;
      v78 = v213;
      v213[10] = v250;
      v78[11] = v77;

      v79 = v194;
      v80 = v213;
      v213[12] = v251;
      v80[13] = v79;

      v81 = v195;
      v82 = v213;
      v213[14] = v252;
      v82[15] = v81;

      v83 = v196;
      v84 = v213;
      v213[16] = v253;
      v84[17] = v83;

      v85 = v197;
      v86 = v213;
      v213[18] = v254;
      v86[19] = v85;

      v87 = v198;
      v88 = v213;
      v213[20] = v255;
      v88[21] = v87;

      v89 = v199;
      v90 = v213;
      v213[22] = v256;
      v90[23] = v89;

      v91 = v200;
      v92 = v213;
      v213[24] = v257;
      v92[25] = v91;

      v93 = v201;
      v94 = v213;
      v213[26] = v258;
      v94[27] = v93;

      v95 = v202;
      v96 = v213;
      v213[28] = v259;
      v96[29] = v95;

      v97 = v203;
      v98 = v213;
      v213[30] = v260;
      v98[31] = v97;

      v99 = v204;
      v100 = v213;
      v213[32] = v261;
      v100[33] = v99;

      v101 = v205;
      v102 = v213;
      v213[34] = v262;
      v102[35] = v101;

      v103 = v206;
      v104 = v213;
      v213[36] = v263;
      v104[37] = v103;

      v105 = v207;
      v106 = v213;
      v213[38] = v264;
      v106[39] = v105;

      v107 = v208;
      v108 = v213;
      v213[40] = v265;
      v108[41] = v107;

      v109 = v209;
      v110 = v213;
      v213[42] = v266;
      v110[43] = v109;

      v111 = v210;
      v112 = v213;
      v213[44] = v267;
      v112[45] = v111;

      v113 = v212;
      v114 = v213;
      v213[46] = v268;
      v114[47] = v113;
      sub_1B0394964();

      if (os_log_type_enabled(v215, v216))
      {
        v115 = v223;
        v152 = sub_1B0E45D78();
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v153 = sub_1B03949A8(0, v151, v151);
        v154 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v155 = &v305;
        v305 = v152;
        v156 = &v304;
        v304 = v153;
        v157 = &v303;
        v303 = v154;
        sub_1B0394A48(3, &v305);
        sub_1B0394A48(8, v155);
        v301 = v245;
        v302 = v188;
        sub_1B03949FC(&v301, v155, v156, v157);
        v158 = v115;
        if (v115)
        {

          __break(1u);
        }

        else
        {
          v301 = v246;
          v302 = v189;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v148 = 0;
          v301 = v247;
          v302 = v190;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v147 = 0;
          v301 = v248;
          v302 = v191;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v146 = 0;
          v301 = v249;
          v302 = v192;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v145 = 0;
          v301 = v250;
          v302 = v193;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v144 = 0;
          v301 = v251;
          v302 = v194;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v143 = 0;
          v301 = v252;
          v302 = v195;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v142 = 0;
          v301 = v253;
          v302 = v196;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v141 = 0;
          v301 = v254;
          v302 = v197;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v140 = 0;
          v301 = v255;
          v302 = v198;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v139 = 0;
          v301 = v256;
          v302 = v199;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v138 = 0;
          v301 = v257;
          v302 = v200;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v137 = 0;
          v301 = v258;
          v302 = v201;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v136 = 0;
          v301 = v259;
          v302 = v202;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v135 = 0;
          v301 = v260;
          v302 = v203;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v134 = 0;
          v301 = v261;
          v302 = v204;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v133 = 0;
          v301 = v262;
          v302 = v205;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v132 = 0;
          v301 = v263;
          v302 = v206;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v131 = 0;
          v301 = v264;
          v302 = v207;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v130 = 0;
          v301 = v265;
          v302 = v208;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v129 = 0;
          v301 = v266;
          v302 = v209;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v128 = 0;
          v301 = v267;
          v302 = v210;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v127 = 0;
          v301 = v268;
          v302 = v212;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v126 = 0;
          _os_log_impl(&dword_1B0389000, v215, v216, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Filling out empty & missing section(s) %s for UID %u.", v152, 0x3Bu);
          sub_1B03998A8(v153, 0, v151);
          sub_1B03998A8(v154, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v149 = v126;
        }
      }

      else
      {
        v116 = v223;

        v149 = v116;
      }

      v117 = v149;
      MEMORY[0x1E69E5920](v215);
      (*(v284 + 8))(v287, v283);
      v307[0] = v165;
      v118 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0);
      result = sub_1B039CA88(v269, 0, v217, v118, MEMORY[0x1E69E73E0], v218, MEMORY[0x1E69E7410], v150);
      v125 = result;
      if (!v117)
      {
        v122 = v125;
        sub_1B039E440(v307);
        v306 = v122;
        (*(v297 + 16))(v293, v296, v300);
        v123 = sub_1B0799230();
        v124 = *v226;

        sub_1B074B69C(v290, v282);
        sub_1B079C7E4(v293, v122, v123, v124, v295, v282, v225);
        sub_1B039E440(&v308);

        return (*(v297 + 8))(v296, v300);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B079C618@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v5 = a2;
  v6 = a1;
  v15 = 0;
  v14 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v5 - v7;
  v15 = v3;
  v14 = v2;
  sub_1B079CCFC(v3, &v5 - v7);
  v9 = type metadata accessor for Message(0);
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = *(v10 + 48);
  v13 = v10 + 48;
  if ((v12)(v8, 1) == 1)
  {
    sub_1B079F310(v6, v5);
    result = v12(v8, 1, v9);
    if (result != 1)
    {
      return sub_1B07AF920(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v5, v8, v9);
    return (*(v10 + 56))(v5, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1B079C7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a7;
  v35 = a1;
  v34 = a2;
  v43 = a3;
  v32 = a4;
  v31 = a5;
  v33 = a6;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v26 = 0;
  v7 = _s6LoggerVMa_1(0);
  v23 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v21 - v23;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v47 = &v21 - v25;
  v48 = sub_1B0E443C8();
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v27 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v21 - v27;
  v29 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v21 - v29;
  v56 = &v21 - v29;
  v36 = type metadata accessor for InProgressMessageDownload.EMLX(v10);
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v40 = *(v37 + 64);
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v41 = &v21 - v39;
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v21 - v42;
  v55 = &v21 - v42;
  v54 = v12;
  v53 = v13;
  v52 = v43;
  v51 = v14;
  v50 = v15;
  v49 = v16;
  sub_1B07A28B8(v12, v13, v14, v16, v17);
  if ((*(v45 + 48))(v47, 1, v48) == 1)
  {
    sub_1B075B1E0(v47);
    sub_1B074B764(v33);

    v18 = type metadata accessor for Message(0);
    (*(*(v18 - 8) + 8))(v35);
    return (*(v37 + 56))(v22, 1, 1, v36);
  }

  else
  {
    (*(v45 + 32))(v30, v47, v48);
    (*(v45 + 16))(v28, v30, v48);
    sub_1B074B69C(v33, v24);
    sub_1B0799428(v28, v43, v32, v31, v24, v41);
    sub_1B07AF768(v41, v44);
    (*(v45 + 8))(v30, v48);
    sub_1B07AF800(v44, v22);
    (*(v37 + 56))(v22, 0, 1, v36);
    sub_1B074B764(v33);

    v20 = type metadata accessor for Message(0);
    (*(*(v20 - 8) + 8))(v35);
    return sub_1B07AF320(v44);
  }
}

uint64_t sub_1B079CCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v217 = a1;
  v167 = sub_1B074E050;
  v168 = sub_1B0394C30;
  v169 = sub_1B0394C24;
  v170 = sub_1B074DFFC;
  v171 = sub_1B039BA88;
  v172 = sub_1B039BB94;
  v173 = sub_1B0394C24;
  v174 = sub_1B039BBA0;
  v175 = sub_1B039BC08;
  v176 = sub_1B06BA324;
  v177 = sub_1B074E0E4;
  v178 = sub_1B039BCF8;
  v179 = sub_1B07B07A0;
  v180 = sub_1B03B0DF8;
  v181 = sub_1B0398F5C;
  v182 = sub_1B0398F5C;
  v183 = sub_1B0399178;
  v184 = sub_1B0398F5C;
  v185 = sub_1B0398F5C;
  v186 = sub_1B039BA94;
  v187 = sub_1B0398F5C;
  v188 = sub_1B0398F5C;
  v189 = sub_1B0399178;
  v190 = sub_1B0398F5C;
  v191 = sub_1B0398F5C;
  v192 = sub_1B03991EC;
  v193 = sub_1B0398F5C;
  v194 = sub_1B0398F5C;
  v195 = sub_1B03993BC;
  v196 = sub_1B0398F5C;
  v197 = sub_1B0398F5C;
  v198 = sub_1B039BCEC;
  v199 = sub_1B0398F5C;
  v200 = sub_1B0398F5C;
  v201 = sub_1B0399260;
  v238 = 0;
  v237 = 0;
  v236 = 0;
  v202 = 0;
  v218 = 0;
  v203 = _s6LoggerVMa_1(0);
  v204 = (*(*(v203 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v205 = v102 - v204;
  v206 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v207 = v102 - v206;
  v208 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v209 = v102 - v208;
  v210 = sub_1B0E439A8();
  v211 = *(v210 - 8);
  v212 = v210 - 8;
  v213 = (*(v211 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v218);
  v214 = v102 - v213;
  v229 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(v7);
  v215 = (*(*(v229 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v218);
  v230 = v102 - v215;
  v216 = (*(*(_s31PreviouslyDownloadedMessageDataVMa(v8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v218);
  v228 = v102 - v216;
  v219 = sub_1B0E443C8();
  v221 = *(v219 - 8);
  v220 = v219 - 8;
  v222 = v221;
  v224 = *(v221 + 64);
  v223 = (v224 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v218);
  v225 = v102 - v223;
  v226 = (v224 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v227 = v102 - v226;
  v238 = v102 - v226;
  v237 = v10;
  v236 = v2;
  v12 = type metadata accessor for InProgressMessageDownload.Completed(v11);
  sub_1B075E87C((v2 + *(v12 + 24)), v228);
  sub_1B07AF5B8(v228, v230);
  sub_1B075ECD0(v228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v214;
    v119 = v222;
    v122 = *(v221 + 32);
    v121 = v221 + 32;
    v122(v227, v230, v219);
    (*(v211 + 16))(v13, v217, v210);
    sub_1B074B69C(v217, v209);
    sub_1B074B69C(v209, v207);
    sub_1B074E41C(v209, v205);
    v14 = (v207 + *(v203 + 20));
    v113 = *v14;
    v114 = *(v14 + 1);
    v115 = *(v14 + 1);
    v116 = *(v14 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v207);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v112 = 36;
    v137 = 7;
    v15 = swift_allocObject();
    v16 = v114;
    v17 = v115;
    v18 = v116;
    v124 = v15;
    *(v15 + 16) = v113;
    *(v15 + 20) = v16;
    *(v15 + 24) = v17;
    *(v15 + 32) = v18;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = swift_allocObject();
    v20 = v114;
    v21 = v115;
    v22 = v116;
    v111 = v19;
    *(v19 + 16) = v113;
    *(v19 + 20) = v20;
    *(v19 + 24) = v21;
    *(v19 + 32) = v22;

    v136 = 32;
    v23 = swift_allocObject();
    v24 = v111;
    v129 = v23;
    *(v23 + 16) = v167;
    *(v23 + 24) = v24;
    sub_1B0394868();
    sub_1B0394868();

    v25 = swift_allocObject();
    v26 = v114;
    v27 = v115;
    v28 = v116;
    v29 = v25;
    v30 = v205;
    v132 = v29;
    *(v29 + 16) = v113;
    *(v29 + 20) = v26;
    *(v29 + 24) = v27;
    *(v29 + 32) = v28;
    sub_1B074B764(v30);
    v117 = *(v221 + 16);
    v118 = v221 + 16;
    v117(v225, v227, v219);
    v120 = (*(v119 + 80) + 16) & ~*(v119 + 80);
    v138 = swift_allocObject();
    v122((v138 + v120), v225, v219);
    sub_1B07575C4();

    v164 = sub_1B0E43988();
    v165 = sub_1B0E458D8();
    v134 = 17;
    v140 = swift_allocObject();
    v126 = 16;
    *(v140 + 16) = 16;
    v141 = swift_allocObject();
    v128 = 4;
    *(v141 + 16) = 4;
    v31 = swift_allocObject();
    v123 = v31;
    *(v31 + 16) = v168;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v123;
    v142 = v32;
    *(v32 + 16) = v169;
    *(v32 + 24) = v33;
    v143 = swift_allocObject();
    *(v143 + 16) = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = 1;
    v34 = swift_allocObject();
    v35 = v124;
    v125 = v34;
    *(v34 + 16) = v170;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v125;
    v145 = v36;
    *(v36 + 16) = v171;
    *(v36 + 24) = v37;
    v146 = swift_allocObject();
    *(v146 + 16) = v126;
    v147 = swift_allocObject();
    *(v147 + 16) = v128;
    v38 = swift_allocObject();
    v127 = v38;
    *(v38 + 16) = v172;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v127;
    v148 = v39;
    *(v39 + 16) = v173;
    *(v39 + 24) = v40;
    v149 = swift_allocObject();
    *(v149 + 16) = 0;
    v150 = swift_allocObject();
    *(v150 + 16) = v128;
    v41 = swift_allocObject();
    v42 = v129;
    v130 = v41;
    *(v41 + 16) = v174;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v130;
    v151 = v43;
    *(v43 + 16) = v175;
    *(v43 + 24) = v44;
    v152 = swift_allocObject();
    *(v152 + 16) = 112;
    v153 = swift_allocObject();
    v135 = 8;
    *(v153 + 16) = 8;
    v131 = swift_allocObject();
    *(v131 + 16) = 0x786F626C69616DLL;
    v45 = swift_allocObject();
    v46 = v131;
    v154 = v45;
    *(v45 + 16) = v176;
    *(v45 + 24) = v46;
    v155 = swift_allocObject();
    *(v155 + 16) = 37;
    v156 = swift_allocObject();
    *(v156 + 16) = v135;
    v47 = swift_allocObject();
    v48 = v132;
    v133 = v47;
    *(v47 + 16) = v177;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v133;
    v157 = v49;
    *(v49 + 16) = v178;
    *(v49 + 24) = v50;
    v158 = swift_allocObject();
    *(v158 + 16) = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v135;
    v51 = swift_allocObject();
    v52 = v138;
    v139 = v51;
    *(v51 + 16) = v179;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v139;
    v161 = v53;
    *(v53 + 16) = v180;
    *(v53 + 24) = v54;
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v160 = sub_1B0E46A48();
    v162 = v55;

    v56 = v140;
    v57 = v162;
    *v162 = v181;
    v57[1] = v56;

    v58 = v141;
    v59 = v162;
    v162[2] = v182;
    v59[3] = v58;

    v60 = v142;
    v61 = v162;
    v162[4] = v183;
    v61[5] = v60;

    v62 = v143;
    v63 = v162;
    v162[6] = v184;
    v63[7] = v62;

    v64 = v144;
    v65 = v162;
    v162[8] = v185;
    v65[9] = v64;

    v66 = v145;
    v67 = v162;
    v162[10] = v186;
    v67[11] = v66;

    v68 = v146;
    v69 = v162;
    v162[12] = v187;
    v69[13] = v68;

    v70 = v147;
    v71 = v162;
    v162[14] = v188;
    v71[15] = v70;

    v72 = v148;
    v73 = v162;
    v162[16] = v189;
    v73[17] = v72;

    v74 = v149;
    v75 = v162;
    v162[18] = v190;
    v75[19] = v74;

    v76 = v150;
    v77 = v162;
    v162[20] = v191;
    v77[21] = v76;

    v78 = v151;
    v79 = v162;
    v162[22] = v192;
    v79[23] = v78;

    v80 = v152;
    v81 = v162;
    v162[24] = v193;
    v81[25] = v80;

    v82 = v153;
    v83 = v162;
    v162[26] = v194;
    v83[27] = v82;

    v84 = v154;
    v85 = v162;
    v162[28] = v195;
    v85[29] = v84;

    v86 = v155;
    v87 = v162;
    v162[30] = v196;
    v87[31] = v86;

    v88 = v156;
    v89 = v162;
    v162[32] = v197;
    v89[33] = v88;

    v90 = v157;
    v91 = v162;
    v162[34] = v198;
    v91[35] = v90;

    v92 = v158;
    v93 = v162;
    v162[36] = v199;
    v93[37] = v92;

    v94 = v159;
    v95 = v162;
    v162[38] = v200;
    v95[39] = v94;

    v96 = v161;
    v97 = v162;
    v162[40] = v201;
    v97[41] = v96;
    sub_1B0394964();

    if (os_log_type_enabled(v164, v165))
    {
      v98 = v202;
      v104 = sub_1B0E45D78();
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v105 = sub_1B03949A8(0, v103, v103);
      v106 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v107 = &v235;
      v235 = v104;
      v108 = &v234;
      v234 = v105;
      v109 = &v233;
      v233 = v106;
      sub_1B0394A48(3, &v235);
      sub_1B0394A48(7, v107);
      v231 = v181;
      v232 = v140;
      sub_1B03949FC(&v231, v107, v108, v109);
      v110 = v98;
      if (v98)
      {

        __break(1u);
      }

      else
      {
        v231 = v182;
        v232 = v141;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[19] = 0;
        v231 = v183;
        v232 = v142;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[18] = 0;
        v231 = v184;
        v232 = v143;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[17] = 0;
        v231 = v185;
        v232 = v144;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[16] = 0;
        v231 = v186;
        v232 = v145;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[15] = 0;
        v231 = v187;
        v232 = v146;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[14] = 0;
        v231 = v188;
        v232 = v147;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[13] = 0;
        v231 = v189;
        v232 = v148;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[12] = 0;
        v231 = v190;
        v232 = v149;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[11] = 0;
        v231 = v191;
        v232 = v150;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[10] = 0;
        v231 = v192;
        v232 = v151;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[9] = 0;
        v231 = v193;
        v232 = v152;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[8] = 0;
        v231 = v194;
        v232 = v153;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[7] = 0;
        v231 = v195;
        v232 = v154;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[6] = 0;
        v231 = v196;
        v232 = v155;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[5] = 0;
        v231 = v197;
        v232 = v156;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[4] = 0;
        v231 = v198;
        v232 = v157;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[3] = 0;
        v231 = v199;
        v232 = v158;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[2] = 0;
        v231 = v200;
        v232 = v159;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        v102[1] = 0;
        v231 = v201;
        v232 = v161;
        sub_1B03949FC(&v231, &v235, &v234, &v233);
        _os_log_impl(&dword_1B0389000, v164, v165, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Using existing (sparse) message data (%{iec-bytes}ld) to build EMLX.", v104, 0x35u);
        sub_1B03998A8(v105, 0, v103);
        sub_1B03998A8(v106, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v164);
    (*(v211 + 8))(v214, v210);
    v117(v225, v227, v219);
    Message.init(_:)(v225, v166);
    v99 = type metadata accessor for Message(0);
    (*(*(v99 - 8) + 56))(v166, 0, 1);
    return (*(v221 + 8))(v227, v219);
  }

  else
  {
    sub_1B075EC04(v230);
    v101 = type metadata accessor for Message(0);
    return (*(*(v101 - 8) + 56))(v166, 1);
  }
}

void sub_1B079EE08(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  sub_1B07B0B1C(v5, v6, v7, v8, v9);
  if (v9 == 1)
  {
    if ((v6 & 1) == 0 && v5 == 0)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *a2 = v4;
      return;
    }
  }

  else
  {
    sub_1B07B0B7C(v5, v6, v7, v8, v9);
  }

  *a2 = 0;
}

uint64_t sub_1B079EF88(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  v1 = sub_1B07AFBE8();
  v3 = sub_1B039CA88(sub_1B079F0E8, 0, v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v7);
  sub_1B039E440(&v9);
  v8 = v3;
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v4 = sub_1B0E448E8();

  sub_1B039E440(&v8);

  return v4;
}

uint64_t sub_1B079F0E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469E8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B079F204@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v13 = 0;
  v10 = 0;
  v5 = (*(*(sub_1B0E443C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v12 = &v4 - v5;
  v9 = *v2;
  v13 = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = v16;
  sub_1B075FEBC(v16);
  v7 = v15;
  memcpy(v15, v6, 0xB1uLL);
  v11 = v14;
  MessageSectionData.Segment.Initial.init(bodyStructure:)(v15, v14);
  sub_1B0E44378();
  return sub_1B08C0760(v11, v9, v10, v10, v10, v10, v12, v8);
}

uint64_t sub_1B079F310@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v345 = a2;
  v455 = a1;
  v347 = sub_1B074E050;
  v348 = sub_1B07B073C;
  v349 = sub_1B0394C30;
  v350 = sub_1B0394C24;
  v351 = sub_1B074DFFC;
  v352 = sub_1B039BA88;
  v353 = sub_1B039BB94;
  v354 = sub_1B0394C24;
  v355 = sub_1B039BBA0;
  v356 = sub_1B039BC08;
  v357 = 0x786F626C69616DLL;
  v358 = sub_1B06BA324;
  v359 = sub_1B074E0E4;
  v360 = sub_1B039BCF8;
  v361 = sub_1B07AB020;
  v362 = sub_1B039BC08;
  v363 = sub_1B0398F5C;
  v364 = sub_1B0398F5C;
  v365 = sub_1B0399178;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0398F5C;
  v368 = sub_1B039BA94;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0398F5C;
  v371 = sub_1B0399178;
  v372 = sub_1B0398F5C;
  v373 = sub_1B0398F5C;
  v374 = sub_1B03991EC;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0398F5C;
  v377 = sub_1B03993BC;
  v378 = sub_1B0398F5C;
  v379 = sub_1B0398F5C;
  v380 = sub_1B039BCEC;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0398F5C;
  v383 = sub_1B03991EC;
  v384 = sub_1B074E050;
  v385 = sub_1B07B073C;
  v386 = sub_1B0394C24;
  v387 = sub_1B074DFFC;
  v388 = sub_1B039BA88;
  v389 = sub_1B0394C24;
  v390 = sub_1B039BBA0;
  v391 = sub_1B039BC08;
  v392 = sub_1B06BA324;
  v393 = sub_1B074E0E4;
  v394 = sub_1B039BCF8;
  v395 = sub_1B07AB020;
  v396 = sub_1B039BC08;
  v397 = sub_1B0398F5C;
  v398 = sub_1B0398F5C;
  v399 = sub_1B0399178;
  v400 = sub_1B0398F5C;
  v401 = sub_1B0398F5C;
  v402 = sub_1B039BA94;
  v403 = sub_1B0398F5C;
  v404 = sub_1B0398F5C;
  v405 = sub_1B0399178;
  v406 = sub_1B0398F5C;
  v407 = sub_1B0398F5C;
  v408 = sub_1B03991EC;
  v409 = sub_1B0398F5C;
  v410 = sub_1B0398F5C;
  v411 = sub_1B03993BC;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0398F5C;
  v414 = sub_1B039BCEC;
  v415 = sub_1B0398F5C;
  v416 = sub_1B0398F5C;
  v417 = sub_1B03991EC;
  v484 = 0;
  v483 = 0;
  v482 = 0;
  v481 = 0;
  v480 = 0;
  v418 = 0;
  v465 = 0;
  v456 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v419 = *(v456 - 8);
  v420 = v419;
  v421 = *(v419 + 64);
  v422 = (v421 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v423 = (v200 - v422);
  v424 = _s6LoggerVMa_1(v3);
  v425 = (*(*(v424 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v465);
  v426 = v200 - v425;
  v427 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v428 = v200 - v427;
  v429 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v430 = v200 - v429;
  v431 = sub_1B0E439A8();
  v432 = *(v431 - 8);
  v433 = v431 - 8;
  v434 = (*(v432 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v465);
  v435 = v200 - v434;
  v436 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v437 = v200 - v436;
  v438 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(v10);
  v439 = (*(*(v438 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v465);
  v440 = v200 - v439;
  v12 = _s31PreviouslyDownloadedMessageDataVMa(v11);
  v441 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v442 = v200 - v441;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
  v443 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v466 = v200 - v443;
  v444 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v465);
  v445 = v200 - v444;
  v446 = sub_1B0E443C8();
  v447 = *(v446 - 8);
  v448 = v446 - 8;
  v449 = (*(v447 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v465);
  v450 = v200 - v449;
  v484 = v200 - v449;
  v451 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v452 = v200 - v451;
  v453 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v454 = v200 - v453;
  v483 = v200 - v453;
  v457 = type metadata accessor for Message(v18);
  v458 = *(v457 - 8);
  v459 = v457 - 8;
  v461 = *(v458 + 64);
  v460 = (v461 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v456);
  v462 = (v200 - v460);
  v463 = (v461 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v464 = v200 - v463;
  v482 = v200 - v463;
  v481 = v20;
  v480 = v2;
  sub_1B075EE10((v2 + *(v21 + 28)), v22);
  v23 = type metadata accessor for MessageHeader(v465);
  if ((*(*(v23 - 8) + 48))(v466, 1) == 1)
  {
    sub_1B075F220(v466);
    (*(v447 + 56))(v445, 1, 1, v446);
  }

  else
  {
    (*(v447 + 16))(v445, v466, v446);
    sub_1B075CD68(v466);
    (*(v447 + 56))(v445, 0, 1, v446);
  }

  if ((*(v447 + 48))(v445, 1, v446) != 1)
  {
    (*(v447 + 32))(v454, v445, v446);
    (*(v447 + 16))(v452, v454, v446);
    Message.init(_:)(v452, v462);
    (*(v458 + 32))(v464, v462, v457);
    (*(v447 + 8))(v454, v446);
    goto LABEL_14;
  }

  sub_1B075B1E0(v445);
  sub_1B075E87C((v346 + *(v456 + 24)), v442);
  sub_1B07AF5B8(v442, v440);
  sub_1B075ECD0(v442);
  if (!swift_getEnumCaseMultiPayload())
  {
    (*(v447 + 32))(v450, v440, v446);
    (*(v447 + 16))(v452, v450, v446);
    Message.init(_:)(v452, v462);
    (*(v458 + 32))(v464, v462, v457);
    (*(v447 + 8))(v450, v446);
LABEL_14:
    v264 = v473;
    v265 = 177;
    memcpy(v473, (v346 + 8), 0xB1uLL);
    sub_1B075DC38(v473, v472);
    v266 = v474;
    memcpy(v474, v264, v265);
    if (sub_1B075FACC(v266) == 1)
    {
      (*(v432 + 16))(v435, v455, v431);
      sub_1B074B69C(v455, v430);
      sub_1B074B69C(v430, v428);
      sub_1B074E41C(v430, v426);
      v113 = (v428 + *(v424 + 20));
      v211 = *v113;
      v212 = *(v113 + 1);
      v213 = *(v113 + 1);
      v214 = *(v113 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v428);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v210 = 36;
      v231 = 7;
      v114 = swift_allocObject();
      v115 = v212;
      v116 = v213;
      v117 = v214;
      v218 = v114;
      *(v114 + 16) = v211;
      *(v114 + 20) = v115;
      *(v114 + 24) = v116;
      *(v114 + 32) = v117;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v118 = swift_allocObject();
      v119 = v212;
      v120 = v213;
      v121 = v214;
      v209 = v118;
      *(v118 + 16) = v211;
      *(v118 + 20) = v119;
      *(v118 + 24) = v120;
      *(v118 + 32) = v121;

      v230 = 32;
      v122 = swift_allocObject();
      v123 = v209;
      v222 = v122;
      *(v122 + 16) = v384;
      *(v122 + 24) = v123;
      sub_1B0394868();
      sub_1B0394868();

      v124 = swift_allocObject();
      v125 = v212;
      v126 = v213;
      v127 = v214;
      v128 = v124;
      v129 = v426;
      v226 = v128;
      *(v128 + 16) = v211;
      *(v128 + 20) = v125;
      *(v128 + 24) = v126;
      *(v128 + 32) = v127;
      sub_1B074B764(v129);
      sub_1B07AFC78(v346, v423);
      v215 = (*(v420 + 80) + 16) & ~*(v420 + 80);
      v216 = swift_allocObject();
      sub_1B07B02D8(v423, (v216 + v215));

      v130 = swift_allocObject();
      v131 = v216;
      v232 = v130;
      *(v130 + 16) = v385;
      *(v130 + 24) = v131;

      v258 = sub_1B0E43988();
      v259 = sub_1B0E458E8();
      v228 = 17;
      v234 = swift_allocObject();
      v220 = 16;
      *(v234 + 16) = 16;
      v235 = swift_allocObject();
      v229 = 4;
      *(v235 + 16) = 4;
      v132 = swift_allocObject();
      v217 = v132;
      *(v132 + 16) = v349;
      *(v132 + 24) = 0;
      v133 = swift_allocObject();
      v134 = v217;
      v236 = v133;
      *(v133 + 16) = v386;
      *(v133 + 24) = v134;
      v237 = swift_allocObject();
      *(v237 + 16) = 0;
      v238 = swift_allocObject();
      *(v238 + 16) = 1;
      v135 = swift_allocObject();
      v136 = v218;
      v219 = v135;
      *(v135 + 16) = v387;
      *(v135 + 24) = v136;
      v137 = swift_allocObject();
      v138 = v219;
      v239 = v137;
      *(v137 + 16) = v388;
      *(v137 + 24) = v138;
      v240 = swift_allocObject();
      *(v240 + 16) = v220;
      v241 = swift_allocObject();
      *(v241 + 16) = v229;
      v139 = swift_allocObject();
      v221 = v139;
      *(v139 + 16) = v353;
      *(v139 + 24) = 0;
      v140 = swift_allocObject();
      v141 = v221;
      v242 = v140;
      *(v140 + 16) = v389;
      *(v140 + 24) = v141;
      v243 = swift_allocObject();
      *(v243 + 16) = 0;
      v244 = swift_allocObject();
      *(v244 + 16) = v229;
      v142 = swift_allocObject();
      v143 = v222;
      v223 = v142;
      *(v142 + 16) = v390;
      *(v142 + 24) = v143;
      v144 = swift_allocObject();
      v145 = v223;
      v245 = v144;
      *(v144 + 16) = v391;
      *(v144 + 24) = v145;
      v246 = swift_allocObject();
      *(v246 + 16) = 112;
      v247 = swift_allocObject();
      v225 = 8;
      *(v247 + 16) = 8;
      v224 = swift_allocObject();
      *(v224 + 16) = v357;
      v146 = swift_allocObject();
      v147 = v224;
      v248 = v146;
      *(v146 + 16) = v392;
      *(v146 + 24) = v147;
      v249 = swift_allocObject();
      *(v249 + 16) = 37;
      v250 = swift_allocObject();
      *(v250 + 16) = v225;
      v148 = swift_allocObject();
      v149 = v226;
      v227 = v148;
      *(v148 + 16) = v393;
      *(v148 + 24) = v149;
      v150 = swift_allocObject();
      v151 = v227;
      v251 = v150;
      *(v150 + 16) = v394;
      *(v150 + 24) = v151;
      v252 = swift_allocObject();
      *(v252 + 16) = 0;
      v253 = swift_allocObject();
      *(v253 + 16) = v229;
      v152 = swift_allocObject();
      v153 = v232;
      v233 = v152;
      *(v152 + 16) = v395;
      *(v152 + 24) = v153;
      v154 = swift_allocObject();
      v155 = v233;
      v255 = v154;
      *(v154 + 16) = v396;
      *(v154 + 24) = v155;
      v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v254 = sub_1B0E46A48();
      v256 = v156;

      v157 = v234;
      v158 = v256;
      *v256 = v397;
      v158[1] = v157;

      v159 = v235;
      v160 = v256;
      v256[2] = v398;
      v160[3] = v159;

      v161 = v236;
      v162 = v256;
      v256[4] = v399;
      v162[5] = v161;

      v163 = v237;
      v164 = v256;
      v256[6] = v400;
      v164[7] = v163;

      v165 = v238;
      v166 = v256;
      v256[8] = v401;
      v166[9] = v165;

      v167 = v239;
      v168 = v256;
      v256[10] = v402;
      v168[11] = v167;

      v169 = v240;
      v170 = v256;
      v256[12] = v403;
      v170[13] = v169;

      v171 = v241;
      v172 = v256;
      v256[14] = v404;
      v172[15] = v171;

      v173 = v242;
      v174 = v256;
      v256[16] = v405;
      v174[17] = v173;

      v175 = v243;
      v176 = v256;
      v256[18] = v406;
      v176[19] = v175;

      v177 = v244;
      v178 = v256;
      v256[20] = v407;
      v178[21] = v177;

      v179 = v245;
      v180 = v256;
      v256[22] = v408;
      v180[23] = v179;

      v181 = v246;
      v182 = v256;
      v256[24] = v409;
      v182[25] = v181;

      v183 = v247;
      v184 = v256;
      v256[26] = v410;
      v184[27] = v183;

      v185 = v248;
      v186 = v256;
      v256[28] = v411;
      v186[29] = v185;

      v187 = v249;
      v188 = v256;
      v256[30] = v412;
      v188[31] = v187;

      v189 = v250;
      v190 = v256;
      v256[32] = v413;
      v190[33] = v189;

      v191 = v251;
      v192 = v256;
      v256[34] = v414;
      v192[35] = v191;

      v193 = v252;
      v194 = v256;
      v256[36] = v415;
      v194[37] = v193;

      v195 = v253;
      v196 = v256;
      v256[38] = v416;
      v196[39] = v195;

      v197 = v255;
      v198 = v256;
      v256[40] = v417;
      v198[41] = v197;
      sub_1B0394964();

      if (os_log_type_enabled(v258, v259))
      {
        v199 = v418;
        v202 = sub_1B0E45D78();
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v203 = sub_1B03949A8(0, v201, v201);
        v204 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v205 = &v471;
        v471 = v202;
        v206 = &v470;
        v470 = v203;
        v207 = &v469;
        v469 = v204;
        sub_1B0394A48(3, &v471);
        sub_1B0394A48(7, v205);
        v467 = v397;
        v468 = v234;
        sub_1B03949FC(&v467, v205, v206, v207);
        v208 = v199;
        if (v199)
        {

          __break(1u);
        }

        else
        {
          v467 = v398;
          v468 = v235;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[19] = 0;
          v467 = v399;
          v468 = v236;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[18] = 0;
          v467 = v400;
          v468 = v237;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[17] = 0;
          v467 = v401;
          v468 = v238;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[16] = 0;
          v467 = v402;
          v468 = v239;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[15] = 0;
          v467 = v403;
          v468 = v240;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[14] = 0;
          v467 = v404;
          v468 = v241;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[13] = 0;
          v467 = v405;
          v468 = v242;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[12] = 0;
          v467 = v406;
          v468 = v243;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[11] = 0;
          v467 = v407;
          v468 = v244;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[10] = 0;
          v467 = v408;
          v468 = v245;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[9] = 0;
          v467 = v409;
          v468 = v246;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[8] = 0;
          v467 = v410;
          v468 = v247;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[7] = 0;
          v467 = v411;
          v468 = v248;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[6] = 0;
          v467 = v412;
          v468 = v249;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[5] = 0;
          v467 = v413;
          v468 = v250;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[4] = 0;
          v467 = v414;
          v468 = v251;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[3] = 0;
          v467 = v415;
          v468 = v252;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[2] = 0;
          v467 = v416;
          v468 = v253;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          v200[1] = 0;
          v467 = v417;
          v468 = v255;
          sub_1B03949FC(&v467, &v471, &v470, &v469);
          _os_log_impl(&dword_1B0389000, v258, v259, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No BodyStructure for UID %u.", v202, 0x31u);
          sub_1B03998A8(v203, 0, v201);
          sub_1B03998A8(v204, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v258);
      (*(v432 + 8))(v435, v431);
      (*(v458 + 56))(v345, 1, 1, v457);
      return (*(v458 + 8))(v464, v457);
    }

    else
    {
      v261 = v474;
      v260 = __dst;
      memcpy(__dst, v474, 0xB1uLL);
      (*(v458 + 16))(v462, v464, v457);
      static Message.makeSparse(messageHeaders:bodyStructure:lineEnding:)(v462, v260, 2u, v345);
      v263 = *(v458 + 8);
      v262 = v458 + 8;
      v263(v462, v457);
      (*(v458 + 56))(v345, 0, 1, v457);
      sub_1B075E648(v261);
      return (v263)(v464, v457);
    }
  }

  v24 = v437;
  sub_1B075EC04(v440);
  (*(v432 + 16))(v24, v455, v431);
  sub_1B074B69C(v455, v430);
  sub_1B074B69C(v430, v428);
  sub_1B074E41C(v430, v426);
  v25 = (v428 + *(v424 + 20));
  v296 = *v25;
  v297 = *(v25 + 1);
  v298 = *(v25 + 1);
  v299 = *(v25 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v428);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v295 = 36;
  v316 = 7;
  v26 = swift_allocObject();
  v27 = v297;
  v28 = v298;
  v29 = v299;
  v303 = v26;
  *(v26 + 16) = v296;
  *(v26 + 20) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v29;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = swift_allocObject();
  v31 = v297;
  v32 = v298;
  v33 = v299;
  v294 = v30;
  *(v30 + 16) = v296;
  *(v30 + 20) = v31;
  *(v30 + 24) = v32;
  *(v30 + 32) = v33;

  v315 = 32;
  v34 = swift_allocObject();
  v35 = v294;
  v307 = v34;
  *(v34 + 16) = v347;
  *(v34 + 24) = v35;
  sub_1B0394868();
  sub_1B0394868();

  v36 = swift_allocObject();
  v37 = v297;
  v38 = v298;
  v39 = v299;
  v40 = v36;
  v41 = v426;
  v311 = v40;
  *(v40 + 16) = v296;
  *(v40 + 20) = v37;
  *(v40 + 24) = v38;
  *(v40 + 32) = v39;
  sub_1B074B764(v41);
  sub_1B07AFC78(v346, v423);
  v300 = (*(v420 + 80) + 16) & ~*(v420 + 80);
  v301 = swift_allocObject();
  sub_1B07B02D8(v423, (v301 + v300));

  v42 = swift_allocObject();
  v43 = v301;
  v317 = v42;
  *(v42 + 16) = v348;
  *(v42 + 24) = v43;

  v343 = sub_1B0E43988();
  v344 = sub_1B0E458E8();
  v313 = 17;
  v319 = swift_allocObject();
  v305 = 16;
  *(v319 + 16) = 16;
  v320 = swift_allocObject();
  v314 = 4;
  *(v320 + 16) = 4;
  v44 = swift_allocObject();
  v302 = v44;
  *(v44 + 16) = v349;
  *(v44 + 24) = 0;
  v45 = swift_allocObject();
  v46 = v302;
  v321 = v45;
  *(v45 + 16) = v350;
  *(v45 + 24) = v46;
  v322 = swift_allocObject();
  *(v322 + 16) = 0;
  v323 = swift_allocObject();
  *(v323 + 16) = 1;
  v47 = swift_allocObject();
  v48 = v303;
  v304 = v47;
  *(v47 + 16) = v351;
  *(v47 + 24) = v48;
  v49 = swift_allocObject();
  v50 = v304;
  v324 = v49;
  *(v49 + 16) = v352;
  *(v49 + 24) = v50;
  v325 = swift_allocObject();
  *(v325 + 16) = v305;
  v326 = swift_allocObject();
  *(v326 + 16) = v314;
  v51 = swift_allocObject();
  v306 = v51;
  *(v51 + 16) = v353;
  *(v51 + 24) = 0;
  v52 = swift_allocObject();
  v53 = v306;
  v327 = v52;
  *(v52 + 16) = v354;
  *(v52 + 24) = v53;
  v328 = swift_allocObject();
  *(v328 + 16) = 0;
  v329 = swift_allocObject();
  *(v329 + 16) = v314;
  v54 = swift_allocObject();
  v55 = v307;
  v308 = v54;
  *(v54 + 16) = v355;
  *(v54 + 24) = v55;
  v56 = swift_allocObject();
  v57 = v308;
  v330 = v56;
  *(v56 + 16) = v356;
  *(v56 + 24) = v57;
  v331 = swift_allocObject();
  *(v331 + 16) = 112;
  v332 = swift_allocObject();
  v310 = 8;
  *(v332 + 16) = 8;
  v309 = swift_allocObject();
  *(v309 + 16) = v357;
  v58 = swift_allocObject();
  v59 = v309;
  v333 = v58;
  *(v58 + 16) = v358;
  *(v58 + 24) = v59;
  v334 = swift_allocObject();
  *(v334 + 16) = 37;
  v335 = swift_allocObject();
  *(v335 + 16) = v310;
  v60 = swift_allocObject();
  v61 = v311;
  v312 = v60;
  *(v60 + 16) = v359;
  *(v60 + 24) = v61;
  v62 = swift_allocObject();
  v63 = v312;
  v336 = v62;
  *(v62 + 16) = v360;
  *(v62 + 24) = v63;
  v337 = swift_allocObject();
  *(v337 + 16) = 0;
  v338 = swift_allocObject();
  *(v338 + 16) = v314;
  v64 = swift_allocObject();
  v65 = v317;
  v318 = v64;
  *(v64 + 16) = v361;
  *(v64 + 24) = v65;
  v66 = swift_allocObject();
  v67 = v318;
  v340 = v66;
  *(v66 + 16) = v362;
  *(v66 + 24) = v67;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v339 = sub_1B0E46A48();
  v341 = v68;

  v69 = v319;
  v70 = v341;
  *v341 = v363;
  v70[1] = v69;

  v71 = v320;
  v72 = v341;
  v341[2] = v364;
  v72[3] = v71;

  v73 = v321;
  v74 = v341;
  v341[4] = v365;
  v74[5] = v73;

  v75 = v322;
  v76 = v341;
  v341[6] = v366;
  v76[7] = v75;

  v77 = v323;
  v78 = v341;
  v341[8] = v367;
  v78[9] = v77;

  v79 = v324;
  v80 = v341;
  v341[10] = v368;
  v80[11] = v79;

  v81 = v325;
  v82 = v341;
  v341[12] = v369;
  v82[13] = v81;

  v83 = v326;
  v84 = v341;
  v341[14] = v370;
  v84[15] = v83;

  v85 = v327;
  v86 = v341;
  v341[16] = v371;
  v86[17] = v85;

  v87 = v328;
  v88 = v341;
  v341[18] = v372;
  v88[19] = v87;

  v89 = v329;
  v90 = v341;
  v341[20] = v373;
  v90[21] = v89;

  v91 = v330;
  v92 = v341;
  v341[22] = v374;
  v92[23] = v91;

  v93 = v331;
  v94 = v341;
  v341[24] = v375;
  v94[25] = v93;

  v95 = v332;
  v96 = v341;
  v341[26] = v376;
  v96[27] = v95;

  v97 = v333;
  v98 = v341;
  v341[28] = v377;
  v98[29] = v97;

  v99 = v334;
  v100 = v341;
  v341[30] = v378;
  v100[31] = v99;

  v101 = v335;
  v102 = v341;
  v341[32] = v379;
  v102[33] = v101;

  v103 = v336;
  v104 = v341;
  v341[34] = v380;
  v104[35] = v103;

  v105 = v337;
  v106 = v341;
  v341[36] = v381;
  v106[37] = v105;

  v107 = v338;
  v108 = v341;
  v341[38] = v382;
  v108[39] = v107;

  v109 = v340;
  v110 = v341;
  v341[40] = v383;
  v110[41] = v109;
  sub_1B0394964();

  if (os_log_type_enabled(v343, v344))
  {
    v111 = v418;
    v287 = sub_1B0E45D78();
    v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v288 = sub_1B03949A8(0, v286, v286);
    v289 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v290 = &v479;
    v479 = v287;
    v291 = &v478;
    v478 = v288;
    v292 = &v477;
    v477 = v289;
    sub_1B0394A48(3, &v479);
    sub_1B0394A48(7, v290);
    v475 = v363;
    v476 = v319;
    sub_1B03949FC(&v475, v290, v291, v292);
    v293 = v111;
    if (v111)
    {

      __break(1u);
    }

    else
    {
      v475 = v364;
      v476 = v320;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v285 = 0;
      v475 = v365;
      v476 = v321;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v284 = 0;
      v475 = v366;
      v476 = v322;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v283 = 0;
      v475 = v367;
      v476 = v323;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v282 = 0;
      v475 = v368;
      v476 = v324;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v281 = 0;
      v475 = v369;
      v476 = v325;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v280 = 0;
      v475 = v370;
      v476 = v326;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v279 = 0;
      v475 = v371;
      v476 = v327;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v278 = 0;
      v475 = v372;
      v476 = v328;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v277 = 0;
      v475 = v373;
      v476 = v329;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v276 = 0;
      v475 = v374;
      v476 = v330;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v275 = 0;
      v475 = v375;
      v476 = v331;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v274 = 0;
      v475 = v376;
      v476 = v332;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v273 = 0;
      v475 = v377;
      v476 = v333;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v272 = 0;
      v475 = v378;
      v476 = v334;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v271 = 0;
      v475 = v379;
      v476 = v335;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v270 = 0;
      v475 = v380;
      v476 = v336;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v269 = 0;
      v475 = v381;
      v476 = v337;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v268 = 0;
      v475 = v382;
      v476 = v338;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      v267 = 0;
      v475 = v383;
      v476 = v340;
      sub_1B03949FC(&v475, &v479, &v478, &v477);
      _os_log_impl(&dword_1B0389000, v343, v344, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No downloaded or existing message header for UID %u.", v287, 0x31u);
      sub_1B03998A8(v288, 0, v286);
      sub_1B03998A8(v289, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v343);
  (*(v432 + 8))(v437, v431);
  return (*(v458 + 56))(v345, 1, 1, v457);
}

uint64_t sub_1B07A2708(uint64_t *a1)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0E46A48();
  rawValue = SectionSpecifier.Part.init(_:)(v1).array._rawValue;
  v5 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v4, rawValue);

  return v5 & 1;
}

uint64_t sub_1B07A2788(uint64_t a1, void *a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B0E454D8();
}

uint64_t sub_1B07A2814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1;
  v2 = Message.count.getter();
  v7 = a1;
  return sub_1B077E63C(v2, sub_1B07B0804, v6, a2);
}

void sub_1B07A28B8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14[0] = 0;
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14[1] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2138, &qword_1B0E9B5C8);
  v5 = sub_1B07AF6E0();
  sub_1B039CA88(sub_1B07A2B84, 0, v11, v12, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v13);
  type metadata accessor for PartReplacement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2140, &qword_1B0E9B5D0);
  sub_1B07167A8();
  sub_1B07B082C();
  v6 = sub_1B0E44718();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = v6;
  sub_1B07A2D14(a1, v6, a3, a4, a5);

  sub_1B039E440(v14);
}

void *sub_1B07A2A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = Message.findPartsMissingData(cache:)(a1);
  sub_1B07A5D58(a2, v3, v8);
  return memcpy(a3, v8, 0x28uLL);
}

uint64_t sub_1B07A2B84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v8 = a1;
  v15 = 0;
  v13 = 0;
  v9 = sub_1B0E443C8();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v5 - v5;
  v15 = v2;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2138, &qword_1B0E9B5C8) + 48);
  sub_1B074E7A8(v8, v11);
  v3 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v13);
  (*(v6 + 16))(v12, v8 + *(v3 + 28), v9);
  v14 = v11 + v10;
  Message.init(_:)(v12, v11 + v10);
  type metadata accessor for PartReplacement(v13);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B07A2D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v31 = a3;
  v38 = a2;
  v23 = a1;
  v24 = a5;
  v39 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v43 = 0;
  v42 = 0;
  v25 = _s6LoggerVMa_1(0);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v18[-v29];
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v18[-v29];
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v18[-v29];
  v33 = sub_1B0E439A8();
  v34 = *(v33 - 8);
  v35 = v34;
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = a1;
  v49 = v9;
  v48 = v10;
  v47 = v11;
  v37 = type metadata accessor for PartReplacement(v12);
  sub_1B07167A8();
  v45 = sub_1B0E446B8();
  v44 = Message.count.getter();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2148, &qword_1B0E9B5D8);
  sub_1B07B08B4();
  sub_1B0E44FD8();
  v41 = 0;
  sub_1B039E440(&v45);
  v19 = v46;
  v43 = v46;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v13 = v38;
  *&v18[-16] = v23;
  *&v18[-8] = v13;
  sub_1B077E63C(v14, sub_1B07B093C, &v18[-32], v15);
  v21 = 0;
  v22 = 0;

  v16 = sub_1B0E443C8();
  (*(*(v16 - 8) + 56))(v24, 0, 1);
  return v21;
}

unint64_t sub_1B07A5234(void *a1)
{
  result = PartReplacement.count.getter();
  if (__OFADD__(*a1, result))
  {
    __break(1u);
  }

  else
  {
    *a1 += result;
  }

  return result;
}

uint64_t sub_1B07A5350()
{
  v2 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A537C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + 16) = a1;
}

uint64_t sub_1B07A53B8()
{
  v2 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A53E4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + 24) = a1;
}

uint64_t sub_1B07A5420()
{
  v2 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A544C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + 32) = a1;
}

BOOL sub_1B07A5488(uint64_t *a1, uint64_t *a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v8 = sub_1B0E45478();

  if (v8)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = sub_1B0E45478();

    if (v7)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v6 = sub_1B0E45478();

      if (v6)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v5 = sub_1B0E45478();

        if (v5)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v4 = sub_1B0E44758();

          return (v4 & 1) != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07A56F0()
{
  sub_1B0E46A48();
  sub_1B07167A8();
  return sub_1B0E45438();
}

BOOL sub_1B07A5738(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1B07A5488(__dst, v5);
}

uint64_t sub_1B07A57A0()
{
  v7 = v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v5 = sub_1B0E454F8();

  sub_1B074E4B4(v4, v6);
  if (v5)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2 = sub_1B0E454F8();

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  sub_1B074E868();
  return v3 & 1;
}

uint64_t sub_1B07A5884()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v3 = sub_1B0E454A8();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0E454A8();

  result = v3;
  if (!__OFADD__(v3, v2))
  {
    return v3 + v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B07A5938()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v8 = sub_1B0E454A8();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E454A8();

  result = v8;
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E454A8();

  result = v5;
  v6 = v9 + v5;
  if (__OFADD__(v9, v5))
  {
    goto LABEL_15;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0E454A8();

  result = v4;
  if (!__OFADD__(v6, v4))
  {
    return v6 + v4;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B07A5A98()
{
  memset(&v13[1], 0, 0x28uLL);
  memcpy(__dst, v0, sizeof(__dst));
  v13[1] = __dst[0];
  v13[2] = __dst[1];
  v13[3] = __dst[2];
  v13[4] = __dst[3];
  v13[5] = __dst[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = v0[3];
  sub_1B074E7A8(&v15, v13);
  v12[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07167A8();
  sub_1B07B0968();
  v12[0] = sub_1B0E454B8();
  sub_1B07B09F0();
  v4 = sub_1B0E45078();
  sub_1B039E440(v12);
  v11 = v4;
  sub_1B074E4B4(v5, v10);
  v9 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  v1 = sub_1B07AFBE8();
  v3 = sub_1B039CA88(sub_1B07B0A68, v8, v6, &unk_1F26BC448, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v7);
  sub_1B074E868();
  sub_1B039E440(&v11);
  return v3;
}

void sub_1B07A5C80(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = 0;
  v8 = 0;
  v9 = *a1;
  v8 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = v9;
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(&v7);

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  *a3 = v3;
  a3[1] = v4;
  a3[2] = v5;
}

void sub_1B07A5D58(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v32[0] = 0;
  v32[1] = 0;
  memset(v24, 0, 0x29uLL);
  v32[3] = a1;
  v32[2] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21 = sub_1B07A642C(a2);
  v22 = sub_1B07A56F0();
  v19 = sub_1B07A56F0();
  v3 = sub_1B07A56F0();
  sub_1B0741390(v22, v19, a1, v3, v21, v34);
  memcpy(__b, v34, sizeof(__b));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
  sub_1B07B0A94();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2150, &qword_1B0E9B5E0);
    sub_1B0E46518();
    v13 = v26;
    v14 = v27;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    if (!v25)
    {
      break;
    }

    v4 = v29;
    v5 = v28;
    v6 = v27;
    v7 = v26;
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    LOBYTE(v24[5]) = v30;
    sub_1B07B0B1C(v26, v27, v28, v29, v30);
    switch(v17)
    {
      case 0:
        goto LABEL_17;
      case 1:
        goto LABEL_21;
      case 2:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
        sub_1B0E454D8();

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v4)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2158, &qword_1B0E9B5E8);
          sub_1B0E44788();
        }

        goto LABEL_27;
    }

    if (v13 || v14 || v15 || v16)
    {
      if (v7 == 1 && !v6 && !v5 && !v16)
      {
LABEL_21:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
        sub_1B0E454D8();

        goto LABEL_28;
      }

      __break(1u);
LABEL_17:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
      sub_1B0E454D8();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v6)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2158, &qword_1B0E9B5E8);
        sub_1B0E44788();
      }

LABEL_27:
    }

LABEL_28:

    sub_1B07B0B7C(v7, v6, v5, v4, v17);
  }

  sub_1B039E440(v32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B0E45558();

  v8 = __b[0];
  v9 = __b[1];
  v10 = __b[2];
  v11 = __b[3];
  v12 = __b[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B074E868();
  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  a3[4] = v12;
}

uint64_t sub_1B07A642C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5EF0, &qword_1B0E9B500);
  sub_1B0E46A48();
  sub_1B07167A8();
  sub_1B0E445D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2158, &qword_1B0E9B5E8);
  sub_1B07AFB60();
  sub_1B0E44FD8();
  return v2;
}

void sub_1B07A653C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *(a2 + 40);
  sub_1B07B0B1C(v2, v3, v4, v5, v6);
  switch(v6)
  {
    case 0:
LABEL_16:
      if (!v3)
      {
        return;
      }

LABEL_19:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2158, &qword_1B0E9B5E8);
      sub_1B0E44788();

      return;
    case 1:
      return;
    case 2:
      if (!v5)
      {
        return;
      }

      goto LABEL_19;
  }

  if ((v2 || v3 || v4 || v5) && (v2 != 1 || v3 || v4 || v5))
  {
    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1B07A67A4()
{
  v2 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A67DC(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1B07A6840()
{
  v2 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A6878(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1B07A68D4(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_1B07A68E8()
{
  v2 = *(v0 + 72);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A6914(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + 72) = a1;
}

uint64_t sub_1B07A6950()
{
  v2 = *(v0 + 80);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A6988(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_1B07A69D4()
{
  LODWORD(v2) = *(v0 + 96);
  BYTE4(v2) = *(v0 + 100) & 1;
  return v2;
}

uint64_t sub_1B07A69FC(uint64_t result)
{
  *(v1 + 96) = result;
  *(v1 + 100) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B07A6A34(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_1B07A6A48()
{
  v2 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A6A80(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1B07A6ADC(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t sub_1B07A6B00(uint64_t a1, uint64_t a2)
{
  v24[2] = a1;
  v24[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24[0] = sub_1B0E44838();
  v24[1] = v2;
  v23[2] = a1;
  v23[3] = a2;
  v18 = MEMORY[0x1B2726DE0](v24[0], v2, a1, a2);
  sub_1B03B1198(v24);
  if (v18)
  {

    v25 = 0;
    v15 = 0;
LABEL_14:

    return v15;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23[0] = sub_1B0E44838();
  v23[1] = v3;
  v22[2] = a1;
  v22[3] = a2;
  v14 = MEMORY[0x1B2726DE0](v23[0], v3, a1, a2);
  sub_1B03B1198(v23);
  if (v14)
  {

    v25 = 1;
    v15 = 1;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22[0] = sub_1B0E44838();
  v22[1] = v4;
  v21[2] = a1;
  v21[3] = a2;
  v13 = MEMORY[0x1B2726DE0](v22[0], v4, a1, a2);
  sub_1B03B1198(v22);
  if (v13)
  {

    v25 = 2;
    v15 = 2;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21[0] = sub_1B0E44838();
  v21[1] = v5;
  v20[2] = a1;
  v20[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v21[0], v5, a1, a2);
  sub_1B03B1198(v21);
  if (v12)
  {

    v25 = 3;
    v15 = 3;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[0] = sub_1B0E44838();
  v20[1] = v6;
  v19[2] = a1;
  v19[3] = a2;
  v11 = MEMORY[0x1B2726DE0](v20[0], v6, a1, a2);
  sub_1B03B1198(v20);
  if (v11)
  {

    v25 = 4;
    v15 = 4;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19[0] = sub_1B0E44838();
  v19[1] = v7;
  v10 = MEMORY[0x1B2726DE0](v19[0], v7, a1, a2);
  sub_1B03B1198(v19);
  if (v10)
  {

    v25 = 5;
    v15 = 5;
    goto LABEL_14;
  }

  return 6;
}

BOOL sub_1B07A6F24(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      default:
        v4 = 5;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      default:
        v3 = 5;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B07A7464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B07A6B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B07A74B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B07A6F0C();
  *a1 = result;
  return result;
}

uint64_t sub_1B07A753C(uint64_t a1)
{
  v31 = a1;
  v52 = 0;
  v51 = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21C8, &qword_1B0E9BE28);
  v32 = *(v42 - 8);
  v33 = v42 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v37 = v9 - v34;
  v52 = v2;
  v51 = v1;
  v35 = v2[3];
  v36 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v35);
  sub_1B07B0C58();
  sub_1B0E46D48();
  v3 = v39;
  v40 = *v38;
  v41 = v38[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v50 = 0;
  sub_1B0E46928();
  v43 = v3;
  v44 = v3;
  if (v3)
  {
    v13 = v44;

    result = (*(v32 + 8))(v37, v42);
    v14 = v13;
  }

  else
  {

    v4 = v43;
    v27 = v38[2];
    v28 = v38[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v49 = 1;
    sub_1B0E46928();
    v29 = v4;
    v30 = v4;
    if (v4)
    {
      v12 = v30;

      result = (*(v32 + 8))(v37, v42);
      v14 = v12;
    }

    else
    {

      v5 = v29;
      v23 = v38[4];
      v24 = v38[5];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v48 = 2;
      sub_1B0E468C8();
      v25 = v5;
      v26 = v5;
      if (v5)
      {
        v11 = v26;

        result = (*(v32 + 8))(v37, v42);
        v14 = v11;
      }

      else
      {

        v6 = v25;
        v19 = v38[6];
        v20 = v38[7];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = 3;
        sub_1B0E468C8();
        v21 = v6;
        v22 = v6;
        if (v6)
        {
          v10 = v22;

          result = (*(v32 + 8))(v37, v42);
          v14 = v10;
        }

        else
        {

          v7 = v21;
          v46 = 4;
          sub_1B0E468E8();
          v17 = v7;
          v18 = v7;
          if (v7)
          {
            v9[1] = v18;
          }

          else
          {
            v45 = 5;
            sub_1B0E468D8();
            v15 = 0;
            v16 = 0;
          }

          return (*(v32 + 8))(v37, v42);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B07A7A6C(uint64_t a1, uint64_t a2)
{
  v36[2] = a1;
  v36[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36[0] = sub_1B0E44838();
  v36[1] = v2;
  v35[2] = a1;
  v35[3] = a2;
  v26 = MEMORY[0x1B2726DE0](v36[0], v2, a1, a2);
  sub_1B03B1198(v36);
  if (v26)
  {

    v37 = 0;
    v23 = 0;
LABEL_22:

    return v23;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35[0] = sub_1B0E44838();
  v35[1] = v3;
  v34[2] = a1;
  v34[3] = a2;
  v22 = MEMORY[0x1B2726DE0](v35[0], v3, a1, a2);
  sub_1B03B1198(v35);
  if (v22)
  {

    v37 = 1;
    v23 = 1;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v34[0] = sub_1B0E44838();
  v34[1] = v4;
  v33[2] = a1;
  v33[3] = a2;
  v21 = MEMORY[0x1B2726DE0](v34[0], v4, a1, a2);
  sub_1B03B1198(v34);
  if (v21)
  {

    v37 = 2;
    v23 = 2;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33[0] = sub_1B0E44838();
  v33[1] = v5;
  v32[2] = a1;
  v32[3] = a2;
  v20 = MEMORY[0x1B2726DE0](v33[0], v5, a1, a2);
  sub_1B03B1198(v33);
  if (v20)
  {

    v37 = 3;
    v23 = 3;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32[0] = sub_1B0E44838();
  v32[1] = v6;
  v31[2] = a1;
  v31[3] = a2;
  v19 = MEMORY[0x1B2726DE0](v32[0], v6, a1, a2);
  sub_1B03B1198(v32);
  if (v19)
  {

    v37 = 4;
    v23 = 4;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31[0] = sub_1B0E44838();
  v31[1] = v7;
  v30[2] = a1;
  v30[3] = a2;
  v18 = MEMORY[0x1B2726DE0](v31[0], v7, a1, a2);
  sub_1B03B1198(v31);
  if (v18)
  {

    v37 = 5;
    v23 = 5;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30[0] = sub_1B0E44838();
  v30[1] = v8;
  v29[2] = a1;
  v29[3] = a2;
  v17 = MEMORY[0x1B2726DE0](v30[0], v8, a1, a2);
  sub_1B03B1198(v30);
  if (v17)
  {

    v37 = 6;
    v23 = 6;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29[0] = sub_1B0E44838();
  v29[1] = v9;
  v28[2] = a1;
  v28[3] = a2;
  v16 = MEMORY[0x1B2726DE0](v29[0], v9, a1, a2);
  sub_1B03B1198(v29);
  if (v16)
  {

    v37 = 7;
    v23 = 7;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28[0] = sub_1B0E44838();
  v28[1] = v10;
  v27[2] = a1;
  v27[3] = a2;
  v15 = MEMORY[0x1B2726DE0](v28[0], v10, a1, a2);
  sub_1B03B1198(v28);
  if (v15)
  {

    v37 = 8;
    v23 = 8;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27[0] = sub_1B0E44838();
  v27[1] = v11;
  v14 = MEMORY[0x1B2726DE0](v27[0], v11, a1, a2);
  sub_1B03B1198(v27);
  if (v14)
  {

    v37 = 9;
    v23 = 9;
    goto LABEL_22;
  }

  return 10;
}

BOOL sub_1B07A80F0(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      default:
        v4 = 9;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      default:
        v3 = 9;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B07A88B0(uint64_t a1)
{
  v48 = a1;
  v77 = 0;
  v76 = 0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21B8, &qword_1B0E9BE18);
  v49 = *(v59 - 8);
  v50 = v59 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v54 = v13 - v51;
  v77 = v2;
  v76 = v1;
  v52 = v2[3];
  v53 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v52);
  sub_1B07B0D50();
  sub_1B0E46D48();
  v3 = v56;
  v57 = *v55;
  v58 = v55[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v75 = 0;
  sub_1B0E46928();
  v60 = v3;
  v61 = v3;
  if (v3)
  {
    v19 = v61;

    result = (*(v49 + 8))(v54, v59);
    v20 = v19;
  }

  else
  {

    v4 = v60;
    v74 = 1;
    sub_1B0E46988();
    v46 = v4;
    v47 = v4;
    if (v4)
    {
      v18 = v47;
      result = (*(v49 + 8))(v54, v59);
      v20 = v18;
    }

    else
    {
      v73 = 2;
      sub_1B0E468D8();
      v44 = 0;
      v45 = 0;
      v40 = v55[3];
      v41 = v55[4];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v72 = 3;
      sub_1B0E468C8();
      v42 = 0;
      v43 = 0;

      v5 = v42;
      v36 = v55[5];
      v37 = v55[6];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v71 = 4;
      sub_1B0E468C8();
      v38 = v5;
      v39 = v5;
      if (v5)
      {
        v17 = v39;

        result = (*(v49 + 8))(v54, v59);
        v20 = v17;
      }

      else
      {

        v6 = v38;
        v70 = 5;
        sub_1B0E468E8();
        v34 = v6;
        v35 = v6;
        if (v6)
        {
          v16 = v35;
          result = (*(v49 + 8))(v54, v59);
          v20 = v16;
        }

        else
        {
          v78 = v55[9];
          sub_1B074E7A8(&v78, &v69);
          v31 = &v68;
          v68 = v78;
          v29 = &v67;
          v67 = 6;
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21C0, &qword_1B0E9BE20);
          sub_1B07B3CCC();
          v7 = v34;
          sub_1B0E46958();
          v32 = v7;
          v33 = v7;
          if (v7)
          {
            v15 = v33;
            sub_1B039E440(&v68);
            result = (*(v49 + 8))(v54, v59);
            v20 = v15;
          }

          else
          {
            sub_1B039E440(&v68);
            v8 = v32;
            v25 = v55[10];
            v26 = v55[11];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v66 = 7;
            sub_1B0E468C8();
            v27 = v8;
            v28 = v8;
            if (v8)
            {
              v14 = v28;

              result = (*(v49 + 8))(v54, v59);
              v20 = v14;
            }

            else
            {

              v9 = v27;
              v10 = *(v55 + 24);
              v11 = *(v55 + 100);
              v65 = 8;
              v63 = v10;
              v64 = v11 & 1;
              sub_1B0E46908();
              v23 = v9;
              v24 = v9;
              if (v9)
              {
                v13[2] = v24;
              }

              else
              {
                v62 = 9;
                sub_1B0E468E8();
                v21 = 0;
                v22 = 0;
              }

              return (*(v49 + 8))(v54, v59);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B07A9190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B07A7A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B07A91BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B07A80D8();
  *a1 = result;
  return result;
}

void *sub_1B07A92BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v105 = a4;
  v124 = a1;
  v123 = a2;
  v133 = a3;
  v134 = 0;
  v106 = sub_1B07AA064;
  v107 = sub_1B07AA178;
  v108 = sub_1B07AA288;
  v109 = sub_1B07AABB8;
  memset(v174, 0, 0x71uLL);
  v172 = 0;
  v173 = 0;
  v171 = 0;
  v110 = 0;
  v147 = 0;
  v146 = 0;
  v175 = 0;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v112 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v40 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
  v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v114);
  v116 = v40 - v115;
  v117 = 0;
  v118 = sub_1B0E443C8();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v117);
  v122 = v40 - v121;
  v175 = v40 - v121;
  v125 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(v4);
  v126 = (*(*(v125 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v124);
  v127 = v40 - v126;
  v172 = v5;
  v173 = v6;
  v171 = v7;
  BYTE4(v174[2]) = 2;
  memset(&v174[3], 0, 40);
  LOBYTE(v174[8]) = 1;
  memset(&v174[10], 0, 20);
  BYTE4(v174[12]) = 1;
  v174[13] = 0;
  LOBYTE(v174[14]) = 1;
  v168 = MailboxName.debugDescription.getter(v5);
  v169 = v8;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v128 = v170;
  v129 = sub_1B0E44EC8();
  v130 = v9;

  v174[0] = v129;
  v174[1] = v130;
  v10 = *(v133 + 16);
  v132 = v167;
  v167[0] = v10;
  v131 = sub_1B07467B8();
  v11 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v132, MEMORY[0x1E69E7668], &type metadata for UID, v131, v11);
  LODWORD(v174[2]) = v167[1];
  v135 = (v133 + 24);
  v136 = &v166;
  swift_beginAccess();
  v137 = __dst;
  v138 = 177;
  memcpy(__dst, v135, 0xB1uLL);
  sub_1B075DC38(__dst, v165);
  swift_endAccess();
  v139 = v164;
  memcpy(v164, v137, v138);
  v104 = sub_1B075FACC(v139) != 1;
  v103 = v104;
  sub_1B075E728(v164);
  if (v103)
  {
    v102 = 1;
  }

  else
  {
    v102 = 2;
  }

  BYTE4(v174[2]) = v102;
  v99 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  v100 = &v163;
  swift_beginAccess();
  sub_1B07AF5B8(v99, v127);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v146 = v122;
      (*(v119 + 32))(v122, v127, v118);
      v146 = v122;
      v85 = 7;
      v19 = sub_1B0E46A28();
      v89 = &v144;
      v144 = v19;
      v145 = v20;
      v87 = 1;
      v21 = sub_1B0E44838();
      v86 = v22;
      MEMORY[0x1B2728B30](v21);

      v143 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      sub_1B0E469F8();
      v23 = sub_1B0E44838();
      v88 = v24;
      MEMORY[0x1B2728B30](v23);

      v91 = v144;
      v90 = v145;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v89);
      v174[3] = sub_1B0E44C88();
      v174[4] = v25;

      (*(v119 + 8))(v122, v118);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v174[3] = sub_1B0E44838();
      v174[4] = v27;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v174[3] = sub_1B0E44838();
        v174[4] = v26;
      }

      else
      {
        v174[3] = 0;
        v174[4] = 0;
      }
    }
  }

  else
  {
    (*(v119 + 32))(v122, v127, v118);
    v175 = v122;
    v92 = 8;
    v12 = sub_1B0E46A28();
    v96 = &v141;
    v141 = v12;
    v142 = v13;
    v94 = 1;
    v14 = sub_1B0E44838();
    v93 = v15;
    MEMORY[0x1B2728B30](v14);

    v140 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B0E469F8();
    v16 = sub_1B0E44838();
    v95 = v17;
    MEMORY[0x1B2728B30](v16);

    v98 = v141;
    v97 = v142;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v96);
    v174[3] = sub_1B0E44C88();
    v174[4] = v18;

    (*(v119 + 8))(v122, v118);
  }

  v78 = v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData;
  v80 = &v162;
  swift_beginAccess();
  v79 = _s31PreviouslyDownloadedMessageDataVMa(0);
  v83 = *(v78 + *(v79 + 20));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v161[3] = v83;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  v82 = sub_1B07AFBE8();
  v84 = sub_1B0E45748();

  if (v84)
  {
    v28 = v110;
    v174[5] = 0;
    v174[6] = 0;

    v77 = v28;
  }

  else
  {
    v29 = v110;
    v70 = v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData;
    v71 = v161;
    v73 = 0;
    swift_beginAccess();
    v72 = *(v70 + *(v79 + 20));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v160 = v72;
    result = sub_1B039CA88(v106, v73, v81, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v82, MEMORY[0x1E69E7410], v74);
    v75 = v29;
    v76 = result;
    if (v29)
    {
      __break(1u);
      goto LABEL_25;
    }

    v63 = v76;
    sub_1B039E440(&v160);
    v67 = &v159;
    v159 = v63;
    v65 = sub_1B0E44838();
    v66 = v31;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v68 = sub_1B0E448E8();
    v69 = v32;

    sub_1B039E440(v67);
    v174[5] = v68;
    v174[6] = v69;

    v77 = v75;
  }

  v33 = v116;
  v34 = v77;
  v59 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  v60 = &v156;
  v61 = 0;
  swift_beginAccess();
  sub_1B075EE10(v59, v33);
  swift_endAccess();
  result = sub_1B03F1A20(v107, v61, v114, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], v74, &v157);
  v62 = v34;
  if (v34)
  {
LABEL_25:
    __break(1u);
    __break(1u);
    goto LABEL_26;
  }

  sub_1B075F220(v116);
  v174[7] = v157;
  LOBYTE(v174[8]) = v158 & 1;
  v52 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v53 = &v155;
  v55 = 0;
  swift_beginAccess();
  v54 = *v52;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v154 = v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
  v35 = sub_1B07ABB40();
  v36 = sub_1B039CA88(v108, v55, v56, &unk_1F26BA9C8, MEMORY[0x1E69E73E0], v35, MEMORY[0x1E69E7410], v74);
  v57 = 0;
  v58 = v36;
  v48 = v36;
  sub_1B039E440(&v154);
  v174[9] = v48;
  v49 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  v50 = &v153;
  swift_beginAccess();
  v51 = *v49;
  swift_endAccess();
  if (v51 == 2)
  {
    v174[10] = 0;
    v174[11] = 0;

    LODWORD(v174[12]) = 0;
    BYTE4(v174[12]) = 1;
  }

  else
  {
    v47 = v51;
    v46 = HIDWORD(v51);
    LOBYTE(v147) = v51 & 1;
    HIDWORD(v147) = HIDWORD(v51);
    v174[10] = DownloadPass.rawValue.getter(v51 & 1);
    v174[11] = v37;

    LODWORD(v174[12]) = v46;
    BYTE4(v174[12]) = 0;
  }

  v38 = v57;
  v39 = v113;
  v43 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  v44 = &v150;
  v45 = 0;
  swift_beginAccess();
  sub_1B075F4A8(v43, v39);
  swift_endAccess();
  result = sub_1B03F1A20(v109, v45, v111, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], v74, &v151);
  if (!v38)
  {
    sub_1B075B1E0(v113);
    v40[1] = v174;
    v174[13] = v151;
    LOBYTE(v174[14]) = v152 & 1;
    v41 = v149;
    v42 = 113;
    memcpy(v149, v174, 0x71uLL);
    sub_1B07B0DCC(v149, &v148);

    sub_1B07B0EDC();
    return memcpy(v105, v41, v42);
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B07AA064@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469E8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B07AA178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v10[1] = a1;
  v17 = 0;
  v15 = sub_1B0E443C8();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v11 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v16 = v10 - v11;
  v17 = v3;
  (*(v13 + 16))(v10 - v11, v2);
  v4 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v5 = v13;
  v6 = v15;
  v7 = v4;
  v8 = v16;
  *v12 = v7;
  return (*(v5 + 8))(v8, v6);
}

void *sub_1B07AA288@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v10 = a1;
  v19 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  v8 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v7 - v8);
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = (&v7 - v9);
  v19 = v4;
  sub_1B07B3DE0(v4, (&v7 - v9));
  v13 = *v15;
  v16 = *(v11 + 48);
  sub_1B07B3DE0(v10, v12);
  v14 = *v12;
  v5 = *(v11 + 48);
  v17 = v20;
  sub_1B07AA3DC(v13, (v12 + v5), v20);

  sub_1B0760B84(v15 + v16);
  return memcpy(v18, v17, 0x4AuLL);
}

void *sub_1B07AA3DC@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, void *a3@<X8>)
{
  v66 = a3;
  v80 = a1;
  v88 = a2;
  __c = 0;
  memset(__b, 0, 0x4AuLL);
  v99 = 0;
  v98 = 0;
  memset(&v95[10], 0, 0x38uLL);
  v93 = 0;
  v102 = 0;
  v101 = 0;
  v82 = 0;
  v68 = sub_1B0E443C8();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v72 = &v32 - v71;
  v73 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v3);
  v74 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v75 = &v32 - v74;
  v102 = &v32 - v74;
  v76 = (*(*(type metadata accessor for MessageSectionDataConcatenator(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v77 = &v32 - v76;
  v101 = &v32 - v76;
  v89 = type metadata accessor for InProgressMessageDownload.Section(v5);
  v78 = (*(*(v89 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v90 = (&v32 - v78);
  v99 = v6;
  v98 = v7;
  memset(&__b[4], 0, 40);
  v83 = 1;
  LOWORD(__b[9]) = 513;
  v8 = sub_1B0E46A28();
  v85 = &v96;
  v96 = v8;
  v97 = v9;
  v81 = "";
  v10 = sub_1B0E44838();
  v79 = v11;
  MEMORY[0x1B2728B30](v10);

  v95[17] = v80;
  sub_1B0E469E8();
  v12 = sub_1B0E44838();
  v84 = v13;
  MEMORY[0x1B2728B30](v12);

  v87 = v96;
  v86 = v97;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v85);
  __b[0] = sub_1B0E44C88();
  __b[1] = v14;
  sub_1B0760600(v88, v90);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v72;
      sub_1B07AC238(v90, v75);
      v102 = v75;
      __b[2] = sub_1B0E44838();
      __b[3] = v18;
      v55 = *(v75 + 1);
      v56 = *(v75 + 2);
      v53 = *(v75 + 3);
      v54 = *(v75 + 4);
      sub_1B07B1004(v55, v56);
      v57 = sub_1B07AAC04(v55, v56, v53, v54);
      v58 = v19;
      sub_1B07AD750(v55, v56);
      __b[4] = v57;
      __b[5] = v58;

      (*(v69 + 16))(v17, &v75[*(v73 + 28)], v68);
      v59 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*(v69 + 8))(v72, v68);
      __b[8] = v59;
      LOBYTE(__b[9]) = 0;
      sub_1B07AC2FC(v75);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v52 = *v90;
      v93 = v52;
      __b[2] = sub_1B0E44838();
      __b[3] = v20;
      v46 = sub_1B0754760();
      v47 = v21;
      v44 = v22;
      v45 = v23;
      v48 = sub_1B07AAC04(v46, v21, v22, v23);
      v49 = v24;
      sub_1B07AD750(v46, v47);
      __b[4] = v48;
      __b[5] = v49;

      sub_1B07547DC();
      String.init(_:)();
      __b[6] = v25;
      __b[7] = v26;

      v50 = &v92;
      swift_beginAccess();
      v51 = *(v52 + 32);
      swift_endAccess();
      BYTE1(__b[9]) = v51;
    }

    else
    {
      v40 = *v90;
      v36 = v90[1];
      v41 = v90[2];
      v35 = v90[3];
      v42 = v90[4];
      v39 = v90[5];
      v43 = v90[6];
      v95[10] = v40;
      v95[11] = v36;
      v95[12] = v41;
      v95[13] = v35;
      v95[14] = v42;
      v95[15] = v39;
      v95[16] = v43;
      __b[2] = sub_1B0E44838();
      __b[3] = v27;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v37 = sub_1B07AAC04(v36, v41, v35, v42);
      v38 = v28;
      sub_1B07AD750(v36, v41);
      __b[4] = v37;
      __b[5] = v38;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      String.init(_:)();
      __b[6] = v29;
      __b[7] = v30;
    }
  }

  else
  {
    sub_1B07AE938(v90, v77);
    v101 = v77;
    __b[2] = sub_1B0E44838();
    __b[3] = v15;
    v62 = *(v77 + 2);
    v63 = *(v77 + 3);
    v60 = *(v77 + 4);
    v61 = *(v77 + 5);
    sub_1B07B1004(v62, v63);
    v64 = sub_1B07AAC04(v62, v63, v60, v61);
    v65 = v16;
    sub_1B07AD750(v62, v63);
    __b[4] = v64;
    __b[5] = v65;

    sub_1B07AE888(v77);
  }

  v33 = v95;
  v32 = __b;
  v34 = 74;
  memcpy(v95, __b, 0x4AuLL);
  sub_1B07B0F38(v95, &v94);
  sub_1B0760B84(v88);

  sub_1B0754BBC();
  return memcpy(v66, v33, v34);
}

uint64_t sub_1B07AABB8@<X0>(uint64_t *a2@<X8>)
{
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  *a2 = result;
  return result;
}

uint64_t sub_1B07AAC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2178, &qword_1B0E9B5F8);
  sub_1B03F1A20(sub_1B07AACD4, 0, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v6, v7);
  return v7[0];
}

uint64_t sub_1B07AACD4@<X0>(uint64_t *a2@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B0E44BA8();
  v9 = v2;
  v3 = sub_1B0E44838();
  v10 = MEMORY[0x1B2726DB0](v8, v9, v3);
  v11 = v4;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E44BA8();
  v12 = MEMORY[0x1B2726DB0](v10, v11, v5);
  v13 = v6;

  result = v12;
  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t sub_1B07AAE14(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v7 = a1;
  v8 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  sub_1B03F1A20(sub_1B07AAF40, 0, v2, MEMORY[0x1E69E73E0], &type metadata for Media.Subtype, v5, &v9);
  v6 = v9;
  if (v9.stringValue._object)
  {
    v10 = v6;
  }

  else
  {
    v3._countAndFlagsBits = sub_1B0E44838();
    v10 = Media.Subtype.init(stringLiteral:)(v3);
  }

  return v10.stringValue._countAndFlagsBits;
}

uint64_t sub_1B07AAF40@<X0>(Swift::String *a1@<X0>, NIOIMAPCore2::Media::Subtype *a2@<X8>)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = Media.Subtype.init(_:)(v4);
  result = v3.stringValue._countAndFlagsBits;
  *a2 = v3;
  return result;
}

uint64_t sub_1B07AAFAC(uint64_t (*a1)(void))
{
  v4[0] = a1();
  v3 = sub_1B07467B8();
  v1 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v4, MEMORY[0x1E69E7668], &type metadata for UID, v3, v1);
  return v4[1];
}

void *sub_1B07AB02C(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = SectionSpecifier.Part.debugDescription.getter(v2);

  return v3;
}

uint64_t sub_1B07AB080(uint64_t a1, void *a2)
{
  v3.stringValue._countAndFlagsBits = a1;
  v3.stringValue._object = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return String.init(_:)(v3)._countAndFlagsBits;
}

uint64_t sub_1B07AB0B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5.stringValue._countAndFlagsBits = a3;
  v5.stringValue._object = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return String.init(_:)(v5)._countAndFlagsBits;
}

uint64_t sub_1B07AB12C(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v51 = a2;
  v50 = 0;
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(v51, v52);
  v3 = type metadata accessor for MessageSectionData.Segment(0);
  v4 = v52;
  *(v51 + *(v3 + 20)) = *(v52 + *(v3 + 20));
  v53 = *(v3 + 24);
  v54 = *(v3 + 24);
  if (*(v4 + v54 + 176) == 254 || *(v52 + v54 + 176) == 255)
  {
    memcpy((v51 + v53), (v52 + v54), 0xB1uLL);
  }

  else
  {
    v5 = v53;
    v31[15] = v52 + v54;
    v6 = *(v52 + v54);
    v7 = *(v52 + v54 + 8);
    v8 = *(v52 + v54 + 16);
    v9 = *(v52 + v54 + 24);
    v10 = *(v52 + v54 + 32);
    v11 = *(v52 + v54 + 40);
    v32 = *(v52 + v54 + 48);
    v33 = *(v52 + v54 + 56);
    v34 = *(v52 + v54 + 64);
    v35 = *(v52 + v54 + 72);
    v36 = *(v52 + v54 + 80);
    v37 = *(v52 + v54 + 88);
    v38 = *(v52 + v54 + 96);
    v39 = *(v52 + v54 + 104);
    v40 = *(v52 + v54 + 112);
    v41 = *(v52 + v54 + 120);
    v42 = *(v52 + v54 + 128);
    v43 = *(v52 + v54 + 136);
    v44 = *(v52 + v54 + 144);
    v45 = *(v52 + v54 + 152);
    v46 = *(v52 + v54 + 160);
    v47 = *(v52 + v54 + 168);
    v48 = *(v52 + v54 + 176);
    v31[16] = v31;
    sub_1B0716BB8(v6, v7, v8, v9, v10, v11, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    v12 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v45;
    v26 = v46;
    v27 = v47;
    v28 = v48;
    v29 = v51 + v5;
    v49 = v29;
    *v29 = v6;
    *(v29 + 8) = v7;
    *(v29 + 16) = v8;
    *(v29 + 24) = v9;
    *(v29 + 32) = v10;
    *(v29 + 40) = v11;
    *(v29 + 48) = v12;
    *(v29 + 56) = v13;
    *(v29 + 64) = v14;
    *(v29 + 72) = v15;
    *(v29 + 80) = v16;
    *(v29 + 88) = v17;
    *(v29 + 96) = v18;
    *(v29 + 104) = v19;
    *(v29 + 112) = v20;
    *(v29 + 120) = v21;
    *(v29 + 128) = v22;
    *(v29 + 136) = v23;
    *(v29 + 144) = v24;
    *(v29 + 152) = v25;
    *(v29 + 160) = v26;
    *(v29 + 168) = v27;
    *(v29 + 176) = v28 & 1;
  }

  return v51;
}

uint64_t *sub_1B07AB440(unsigned __int8 *a1, uint64_t *a2)
{
  v45 = a1;
  v46 = a2;
  if (a1[176] == 254 || *(v45 + 176) == 255)
  {
    memcpy(v46, v45, 0xB1uLL);
  }

  else
  {
    v2 = *v45;
    v3 = v45[1];
    v4 = v45[2];
    v5 = v45[3];
    v6 = v45[4];
    v7 = v45[5];
    v28 = v45[6];
    v29 = v45[7];
    v30 = v45[8];
    v31 = v45[9];
    v32 = v45[10];
    v33 = v45[11];
    v34 = v45[12];
    v35 = v45[13];
    v36 = v45[14];
    v37 = v45[15];
    v38 = v45[16];
    v39 = v45[17];
    v40 = v45[18];
    v41 = v45[19];
    v42 = v45[20];
    v43 = v45[21];
    v44 = *(v45 + 176);
    v27[16] = v27;
    sub_1B0716BB8(v2, v3, v4, v5, v6, v7, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    v8 = v28;
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v12 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v46;
    *v46 = v2;
    v25[1] = v3;
    v25[2] = v4;
    v25[3] = v5;
    v25[4] = v6;
    v25[5] = v7;
    v25[6] = v8;
    v25[7] = v9;
    v25[8] = v10;
    v25[9] = v11;
    v25[10] = v12;
    v25[11] = v13;
    v25[12] = v14;
    v25[13] = v15;
    v25[14] = v16;
    v25[15] = v17;
    v25[16] = v18;
    v25[17] = v19;
    v25[18] = v20;
    v25[19] = v21;
    v25[20] = v22;
    v25[21] = v23;
    *(v25 + 176) = v24 & 1;
  }

  return v46;
}

uint64_t sub_1B07AB694(uint64_t a1)
{
  v27 = a1;
  v26[17] = 0;
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(v27);
  v28 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v27 + v28 + 176) != 254 && *(v27 + v28 + 176) != 255)
  {
    v26[15] = v27 + v28;
    v2 = *(v27 + v28);
    v3 = *(v27 + v28 + 8);
    v4 = *(v27 + v28 + 16);
    v5 = *(v27 + v28 + 24);
    v6 = *(v27 + v28 + 32);
    v7 = *(v27 + v28 + 40);
    v8 = *(v27 + v28 + 48);
    v9 = *(v27 + v28 + 56);
    v10 = *(v27 + v28 + 64);
    v11 = *(v27 + v28 + 72);
    v12 = *(v27 + v28 + 80);
    v13 = *(v27 + v28 + 88);
    v14 = *(v27 + v28 + 96);
    v15 = *(v27 + v28 + 104);
    v16 = *(v27 + v28 + 112);
    v17 = *(v27 + v28 + 120);
    v18 = *(v27 + v28 + 128);
    v19 = *(v27 + v28 + 136);
    v20 = *(v27 + v28 + 144);
    v21 = *(v27 + v28 + 152);
    v22 = *(v27 + v28 + 160);
    v23 = *(v27 + v28 + 168);
    v24 = *(v27 + v28 + 176);
    v26[16] = v26;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  return v27;
}

uint64_t sub_1B07AB810(uint64_t a1)
{
  v1 = *(a1 + 176) ^ 0xFF;
  if (v1 >= 0xFE)
  {
    v1 = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B07AB910(uint64_t a1)
{
  v30 = a1;

  v31 = 0;
  v29 = *(type metadata accessor for MessageSectionData(0) + 28);
  v1 = *(*(sub_1B0E443C8() - 8) + 8);
  v32 = v30 + v29;
  v1();
  v33 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v30 + v29 + v33 + 176) != 254 && *(v30 + v29 + v33 + 176) != 255)
  {
    v27 = v30 + v29 + v33;
    v2 = *v27;
    v3 = *(v27 + 8);
    v4 = *(v27 + 16);
    v5 = *(v27 + 24);
    v6 = *(v27 + 32);
    v7 = *(v27 + 40);
    v8 = *(v27 + 48);
    v9 = *(v27 + 56);
    v10 = *(v27 + 64);
    v11 = *(v27 + 72);
    v12 = *(v27 + 80);
    v13 = *(v27 + 88);
    v14 = *(v27 + 96);
    v15 = *(v27 + 104);
    v16 = *(v27 + 112);
    v17 = *(v27 + 120);
    v18 = *(v27 + 128);
    v19 = *(v27 + 136);
    v20 = *(v27 + 144);
    v21 = *(v27 + 152);
    v22 = *(v27 + 160);
    v23 = *(v27 + 168);
    v24 = *(v27 + 176);
    v28 = &v26;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  return v30;
}

uint64_t type metadata accessor for InProgressMessageDownload.Completed(uint64_t a1)
{
  v2 = qword_1EB6DC0B0;
  if (!qword_1EB6DC0B0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1B07ABB40()
{
  v2 = qword_1EB6DB7B0;
  if (!qword_1EB6DB7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2090, &qword_1B0E9B520);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07ABBC8(uint64_t a1)
{
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  if (!(*(*(v35 - 8) + 48))(v34, 1))
  {

    v32 = v34 + *(v35 + 48);
    type metadata accessor for InProgressMessageDownload.Section(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:

          if (*(v32 + 16))
          {
          }

          if (*(v32 + 216) != 255)
          {
            v2 = *(v32 + 40);
            v3 = *(v32 + 48);
            v4 = *(v32 + 56);
            v5 = *(v32 + 64);
            v6 = *(v32 + 72);
            v7 = *(v32 + 80);
            v8 = *(v32 + 88);
            v9 = *(v32 + 96);
            v10 = *(v32 + 104);
            v11 = *(v32 + 112);
            v12 = *(v32 + 120);
            v13 = *(v32 + 128);
            v14 = *(v32 + 136);
            v15 = *(v32 + 144);
            v16 = *(v32 + 152);
            v17 = *(v32 + 160);
            v18 = *(v32 + 168);
            v19 = *(v32 + 176);
            v20 = *(v32 + 184);
            v21 = *(v32 + 192);
            v22 = *(v32 + 200);
            v23 = *(v32 + 208);
            v24 = *(v32 + 216);
            v29 = v27;
            sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
          }

          v27[15] = 0;
          v28 = v32 + *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0) + 28);
          v25 = sub_1B0E443C8();
          (*(*(v25 - 8) + 8))(v28);
          break;
        case 2:

          break;
        case 3:

          break;
      }
    }

    else
    {

      if (*(v32 + 24))
      {
      }

      v30 = 0;
      v31 = v32 + *(type metadata accessor for MessageSectionDataConcatenator(0) + 28);
      v1 = type metadata accessor for MessageSectionData.Concatenator(0);
      (*(*(v1 - 8) + 8))(v31);
    }
  }

  return v34;
}

uint64_t sub_1B07ABF00(uint64_t a1)
{
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
  if (!(*(*(v35 - 8) + 48))(v34, 1))
  {

    v32 = v34 + *(v35 + 48);
    type metadata accessor for InProgressMessageDownload.Section(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:

          if (*(v32 + 16))
          {
          }

          if (*(v32 + 216) != 255)
          {
            v2 = *(v32 + 40);
            v3 = *(v32 + 48);
            v4 = *(v32 + 56);
            v5 = *(v32 + 64);
            v6 = *(v32 + 72);
            v7 = *(v32 + 80);
            v8 = *(v32 + 88);
            v9 = *(v32 + 96);
            v10 = *(v32 + 104);
            v11 = *(v32 + 112);
            v12 = *(v32 + 120);
            v13 = *(v32 + 128);
            v14 = *(v32 + 136);
            v15 = *(v32 + 144);
            v16 = *(v32 + 152);
            v17 = *(v32 + 160);
            v18 = *(v32 + 168);
            v19 = *(v32 + 176);
            v20 = *(v32 + 184);
            v21 = *(v32 + 192);
            v22 = *(v32 + 200);
            v23 = *(v32 + 208);
            v24 = *(v32 + 216);
            v29 = v27;
            sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
          }

          v27[15] = 0;
          v28 = v32 + *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0) + 28);
          v25 = sub_1B0E443C8();
          (*(*(v25 - 8) + 8))(v28);
          break;
        case 2:

          break;
        case 3:

          break;
      }
    }

    else
    {

      if (*(v32 + 24))
      {
      }

      v30 = 0;
      v31 = v32 + *(type metadata accessor for MessageSectionDataConcatenator(0) + 28);
      v1 = type metadata accessor for MessageSectionData.Concatenator(0);
      (*(*(v1 - 8) + 8))(v31);
    }
  }

  return v34;
}

uint64_t sub_1B07AC238(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  memcpy((a2 + 40), (a1 + 40), 0xB1uLL);
  v4 = *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0) + 28);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))(a2 + v4, a1 + v4);
  return a2;
}

uint64_t sub_1B07AC2FC(uint64_t a1)
{
  v29 = a1;

  if (*(v29 + 16))
  {
  }

  if (*(v29 + 216) != 255)
  {
    v1 = *(v29 + 40);
    v2 = *(v29 + 48);
    v3 = *(v29 + 56);
    v4 = *(v29 + 64);
    v5 = *(v29 + 72);
    v6 = *(v29 + 80);
    v7 = *(v29 + 88);
    v8 = *(v29 + 96);
    v9 = *(v29 + 104);
    v10 = *(v29 + 112);
    v11 = *(v29 + 120);
    v12 = *(v29 + 128);
    v13 = *(v29 + 136);
    v14 = *(v29 + 144);
    v15 = *(v29 + 152);
    v16 = *(v29 + 160);
    v17 = *(v29 + 168);
    v18 = *(v29 + 176);
    v19 = *(v29 + 184);
    v20 = *(v29 + 192);
    v21 = *(v29 + 200);
    v22 = *(v29 + 208);
    v23 = *(v29 + 216);
    v28 = v26;
    sub_1B075E1EC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v26[16] = 0;
  v27 = v29 + *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0) + 28);
  v24 = sub_1B0E443C8();
  (*(*(v24 - 8) + 8))(v27);
  return v29;
}

unint64_t sub_1B07AC484()
{
  v2 = qword_1EB6DB7F0;
  if (!qword_1EB6DB7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E20B8, &qword_1B0E9B540);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07AC53C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *sub_1B07AC570(void *a1, void *a2)
{
  v60 = a1;
  v61 = a2;
  v62 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v60;
  *v61 = v62;
  if (v2[2])
  {
    v3 = v60;
    v61[1] = v60[1];
    v58 = v3[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = v60;
    v5 = v61;
    v61[2] = v58;
    v5[3] = v4[3];
    v59 = v4[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v61[4] = v59;
  }

  else
  {
    v6 = v61;
    v7 = v60;
    *(v61 + 1) = *(v60 + 1);
    *(v6 + 3) = *(v7 + 3);
  }

  v56 = v61 + 5;
  v57 = v60 + 5;
  if (*(v60 + 216) == 255)
  {
    memcpy(v56, v57, 0xB1uLL);
  }

  else
  {
    v8 = v60[5];
    v9 = v60[6];
    v10 = v60[7];
    v11 = v60[8];
    v12 = v60[9];
    v13 = v60[10];
    v39 = v60[11];
    v40 = v60[12];
    v41 = v60[13];
    v42 = v60[14];
    v43 = v60[15];
    v44 = v60[16];
    v45 = v60[17];
    v46 = v60[18];
    v47 = v60[19];
    v48 = v60[20];
    v49 = v60[21];
    v50 = v60[22];
    v51 = v60[23];
    v52 = v60[24];
    v53 = v60[25];
    v54 = v60[26];
    v55 = *(v60 + 216);
    v38 = v35;
    sub_1B0716BB8(v8, v9, v10, v11, v12, v13, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
    v14 = v39;
    v15 = v40;
    v16 = v41;
    v17 = v42;
    v18 = v43;
    v19 = v44;
    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = v51;
    v27 = v52;
    v28 = v53;
    v29 = v54;
    v30 = v55;
    v31 = v61;
    v61[5] = v8;
    v31[6] = v9;
    v31[7] = v10;
    v31[8] = v11;
    v31[9] = v12;
    v31[10] = v13;
    v31[11] = v14;
    v31[12] = v15;
    v31[13] = v16;
    v31[14] = v17;
    v31[15] = v18;
    v31[16] = v19;
    v31[17] = v20;
    v31[18] = v21;
    v31[19] = v22;
    v31[20] = v23;
    v31[21] = v24;
    v31[22] = v25;
    v31[23] = v26;
    v31[24] = v27;
    v31[25] = v28;
    v31[26] = v29;
    *(v31 + 216) = v30 & 1;
  }

  v35[16] = 0;
  v32 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0);
  v37 = v61 + *(v32 + 28);
  v36 = v60 + *(v32 + 28);
  v33 = sub_1B0E443C8();
  (*(*(v33 - 8) + 16))(v37, v36);
  return v61;
}

unint64_t sub_1B07AC8FC()
{
  v2 = qword_1EB6DB5C0;
  if (!qword_1EB6DB5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E20C8, &qword_1B0E9B550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AC98C()
{
  v2 = qword_1EB6DC9F0;
  if (!qword_1EB6DC9F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07ACA38()
{
  v2 = qword_1EB6DB7B8;
  if (!qword_1EB6DB7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2090, &qword_1B0E9B520);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07ACAC0()
{
  v2 = qword_1EB6DB5C8;
  if (!qword_1EB6DB5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E20D8, &unk_1B0E9B560);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B07ACB48(char *a1, uint64_t *a2)
{
  if (a1[32] == 255)
  {
    memcpy(a2, a1, 0x21uLL);
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    v7 = a1[32];
    sub_1B07ACBF8(*a1, v4, v5, v6, v7);
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
    *(a2 + 32) = v7;
  }

  return a2;
}

double sub_1B07ACBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
      return sub_1B07ACD88(a1, a2);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      break;
    case 10:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      break;
  }

  return result;
}

double sub_1B07ACD88(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0xA)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B07ACDC4(uint64_t a1)
{
  if (*(a1 + 32) != 255)
  {
    sub_1B07ACE18(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  }

  return a1;
}

uint64_t sub_1B07ACE18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
      return sub_1B07ACFA8(result, a2);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:

    case 10:
  }

  return result;
}

uint64_t sub_1B07ACFA8(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0xA)
  {
  }

  return result;
}

uint64_t sub_1B07ACFE4(uint64_t a1)
{
  if (*(a1 + 8))
  {
  }

  return a1;
}

uint64_t sub_1B07AD030(uint64_t a1)
{

  if (*(a1 + 64) != 255)
  {
    sub_1B07ACE18(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  return a1;
}

void *sub_1B07AD120(void *a1, void *a2)
{
  v15 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v15;
  a2[1] = a1[1];
  v18 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[2] = v18;
  if (a1[4])
  {
    v10 = a1[3];

    a2[3] = v10;
    v11 = a1[4];

    a2[4] = v11;
    v12 = a1[5];

    a2[5] = v12;
    v13 = a2 + 6;
    v14 = a1 + 6;
    if (a1[7] == 1)
    {
      memcpy(v13, v14, 0x48uLL);
    }

    else
    {
      if (a1[7])
      {
        a2[6] = a1[6];
        v6 = a1[7];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[7] = v6;
        v7 = a1[8];

        a2[8] = v7;
        v8 = a1[9];

        a2[9] = v8;
        v9 = a1[10];

        a2[10] = v9;
      }

      else
      {
        memcpy(v13, v14, 0x28uLL);
      }

      if (a1[11])
      {
        v5 = a1[11];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[11] = v5;
        if (a1[14])
        {
          a2[12] = a1[12];
          v3 = a1[13];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[13] = v3;
          v4 = a1[14];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[14] = v4;
        }

        else
        {
          *(a2 + 6) = *(a1 + 6);
          a2[14] = a1[14];
        }
      }

      else
      {
        *(a2 + 11) = *(a1 + 11);
        *(a2 + 13) = *(a1 + 13);
      }
    }
  }

  else
  {
    memcpy(a2 + 3, a1 + 3, 0x60uLL);
  }

  return a2;
}

unint64_t sub_1B07AD3B4()
{
  v2 = qword_1EB6DB5F0;
  if (!qword_1EB6DB5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E20F0, &qword_1B0E9B578);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5F0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07AD43C(void *a1, void *a2)
{
  v13 = *a1;

  *a2 = v13;
  v14 = a1[1];

  a2[1] = v14;
  v15 = a1[2];

  a2[2] = v15;
  v16 = a1[3];

  a2[3] = v16;
  a2[4] = a1[4];
  v17 = a1[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[5] = v17;
  a2[6] = a1[6];
  v18 = a1[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[7] = v18;
  a2[8] = a1[8];
  v20 = a1[9];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[9] = v20;
  a2[10] = a1[10];
  if (a1[12] == 1)
  {
    memcpy(a2 + 11, a1 + 11, 0x58uLL);
  }

  else
  {
    a2[11] = a1[11];
    v10 = a1[12];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[12] = v10;
    __dst = a2 + 13;
    __src = a1 + 13;
    if (a1[14] == 1)
    {
      memcpy(__dst, __src, 0x48uLL);
    }

    else
    {
      if (a1[14])
      {
        a2[13] = a1[13];
        v6 = a1[14];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[14] = v6;
        v7 = a1[15];

        a2[15] = v7;
        v8 = a1[16];

        a2[16] = v8;
        v9 = a1[17];

        a2[17] = v9;
      }

      else
      {
        memcpy(__dst, __src, 0x28uLL);
      }

      if (a1[18])
      {
        v5 = a1[18];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[18] = v5;
        if (a1[21])
        {
          a2[19] = a1[19];
          v3 = a1[20];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[20] = v3;
          v4 = a1[21];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[21] = v4;
        }

        else
        {
          *(a2 + 19) = *(a1 + 19);
          a2[21] = a1[21];
        }
      }

      else
      {
        *(a2 + 9) = *(a1 + 9);
        *(a2 + 10) = *(a1 + 10);
      }
    }
  }

  return a2;
}

uint64_t sub_1B07AD750(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1B07AD790(void *a1, void *a2)
{
  v59 = a1;
  v61 = a2;
  v56 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v59;
  v3 = v61;
  *v61 = v56;
  *(v3 + 2) = *(v2 + 2);
  *(v3 + 3) = *(v2 + 3);
  v57 = v2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v61[2] = v57;
  v62 = 0;
  v4 = type metadata accessor for MessageSectionData(0);
  v58 = *(v4 + 28);
  v60 = *(v4 + 28);
  v5 = *(*(sub_1B0E443C8() - 8) + 16);
  v63 = v61 + v58;
  v64 = v59 + v60;
  v5();
  v6 = type metadata accessor for MessageSectionData.Segment(0);
  v7 = v59 + v60;
  v63[*(v6 + 20)] = *(v59 + v60 + *(v6 + 20));
  v65 = *(v6 + 24);
  v66 = *(v6 + 24);
  if (v7[v66 + 176] == 254 || *(v59 + v60 + v66 + 176) == 255)
  {
    memcpy(v61 + v58 + v65, v59 + v60 + v66, 0xB1uLL);
  }

  else
  {
    v8 = v65;
    v9 = v58;
    v36 = v59 + v60 + v66;
    v10 = *v36;
    v11 = *(v36 + 1);
    v12 = *(v36 + 2);
    v13 = *(v36 + 3);
    v14 = *(v36 + 4);
    v15 = *(v36 + 5);
    v38 = *(v36 + 6);
    v39 = *(v36 + 7);
    v40 = *(v36 + 8);
    v41 = *(v36 + 9);
    v42 = *(v36 + 10);
    v43 = *(v36 + 11);
    v44 = *(v36 + 12);
    v45 = *(v36 + 13);
    v46 = *(v36 + 14);
    v47 = *(v36 + 15);
    v48 = *(v36 + 16);
    v49 = *(v36 + 17);
    v50 = *(v36 + 18);
    v51 = *(v36 + 19);
    v52 = *(v36 + 20);
    v53 = *(v36 + 21);
    v54 = v36[176];
    v37 = &v35;
    sub_1B0716BB8(v10, v11, v12, v13, v14, v15, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    v16 = v38;
    v17 = v39;
    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = v47;
    v26 = v48;
    v27 = v49;
    v28 = v50;
    v29 = v51;
    v30 = v52;
    v31 = v53;
    v32 = v54;
    v33 = v61 + v9 + v8;
    v55 = v33;
    *v33 = v10;
    *(v33 + 1) = v11;
    *(v33 + 2) = v12;
    *(v33 + 3) = v13;
    *(v33 + 4) = v14;
    *(v33 + 5) = v15;
    *(v33 + 6) = v16;
    *(v33 + 7) = v17;
    *(v33 + 8) = v18;
    *(v33 + 9) = v19;
    *(v33 + 10) = v20;
    *(v33 + 11) = v21;
    *(v33 + 12) = v22;
    *(v33 + 13) = v23;
    *(v33 + 14) = v24;
    *(v33 + 15) = v25;
    *(v33 + 16) = v26;
    *(v33 + 17) = v27;
    *(v33 + 18) = v28;
    *(v33 + 19) = v29;
    *(v33 + 20) = v30;
    *(v33 + 21) = v31;
    v33[176] = v32 & 1;
  }

  return v61;
}

uint64_t sub_1B07ADB58(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  v5 = *(type metadata accessor for MessageSectionData(0) + 28);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))();
  v3 = type metadata accessor for MessageSectionData.Segment(0);
  *(a2 + v5 + *(v3 + 20)) = *(a1 + v5 + *(v3 + 20));
  memcpy((a2 + v5 + *(v3 + 24)), (a1 + v5 + *(v3 + 24)), 0xB1uLL);
  return a2;
}

uint64_t sub_1B07ADC58()
{
  v1 = *(type metadata accessor for MessageSectionData(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0791DF8(v2);
}

uint64_t sub_1B07ADCBC()
{
  v1 = *(type metadata accessor for MessageSectionData(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0791E24(v2);
}

uint64_t sub_1B07ADD20(uint64_t a1, __n128 a2)
{
  v6 = type metadata accessor for MessageSectionDataConcatenator(0);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {

    if (*(a1 + 24))
    {
    }

    v4 = a1 + *(v6 + 28);
    v2 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

uint64_t sub_1B07ADE14(uint64_t a1)
{
  v33 = a1;
  v34 = type metadata accessor for InProgressMessageDownload.Section(0);
  if (!(*(*(v34 - 8) + 48))(v33, 1))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:

          if (*(v33 + 16))
          {
          }

          if (*(v33 + 216) != 255)
          {
            v2 = *(v33 + 40);
            v3 = *(v33 + 48);
            v4 = *(v33 + 56);
            v5 = *(v33 + 64);
            v6 = *(v33 + 72);
            v7 = *(v33 + 80);
            v8 = *(v33 + 88);
            v9 = *(v33 + 96);
            v10 = *(v33 + 104);
            v11 = *(v33 + 112);
            v12 = *(v33 + 120);
            v13 = *(v33 + 128);
            v14 = *(v33 + 136);
            v15 = *(v33 + 144);
            v16 = *(v33 + 152);
            v17 = *(v33 + 160);
            v18 = *(v33 + 168);
            v19 = *(v33 + 176);
            v20 = *(v33 + 184);
            v21 = *(v33 + 192);
            v22 = *(v33 + 200);
            v23 = *(v33 + 208);
            v24 = *(v33 + 216);
            v29 = v27;
            sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
          }

          v27[16] = 0;
          v28 = v33 + *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0) + 28);
          v25 = sub_1B0E443C8();
          (*(*(v25 - 8) + 8))(v28);
          break;
        case 2:

          break;
        case 3:

          break;
      }
    }

    else
    {

      if (*(v33 + 24))
      {
      }

      v30 = 0;
      v31 = v33 + *(type metadata accessor for MessageSectionDataConcatenator(0) + 28);
      v1 = type metadata accessor for MessageSectionData.Concatenator(0);
      (*(*(v1 - 8) + 8))(v31);
    }
  }

  return v33;
}

char *sub_1B07AE118(char *a1, char *a2)
{
  v91 = a1;
  v90 = a2;
  v92 = type metadata accessor for InProgressMessageDownload.Section(0);
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  if ((*(v93 + 48))(v91, 1))
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
    memcpy(v90, v91, *(*(v49 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v82 = *v91;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v11 = v91;
        *v90 = v82;
        if (*(v11 + 2))
        {
          v12 = v91;
          *(v90 + 1) = *(v91 + 1);
          v80 = *(v12 + 2);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v13 = v91;
          v14 = v90;
          *(v90 + 2) = v80;
          *(v14 + 3) = *(v13 + 3);
          v81 = *(v13 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *(v90 + 4) = v81;
        }

        else
        {
          v15 = v90;
          v16 = v91;
          *(v90 + 8) = *(v91 + 8);
          *(v15 + 24) = *(v16 + 24);
        }

        v78 = v90 + 40;
        v79 = v91 + 40;
        if (v91[216] == 255)
        {
          memcpy(v78, v79, 0xB1uLL);
        }

        else
        {
          v17 = *(v91 + 5);
          v18 = *(v91 + 6);
          v19 = *(v91 + 7);
          v20 = *(v91 + 8);
          v21 = *(v91 + 9);
          v22 = *(v91 + 10);
          v61 = *(v91 + 11);
          v62 = *(v91 + 12);
          v63 = *(v91 + 13);
          v64 = *(v91 + 14);
          v65 = *(v91 + 15);
          v66 = *(v91 + 16);
          v67 = *(v91 + 17);
          v68 = *(v91 + 18);
          v69 = *(v91 + 19);
          v70 = *(v91 + 20);
          v71 = *(v91 + 21);
          v72 = *(v91 + 22);
          v73 = *(v91 + 23);
          v74 = *(v91 + 24);
          v75 = *(v91 + 25);
          v76 = *(v91 + 26);
          v77 = v91[216];
          v60 = &v51;
          sub_1B0716BB8(v17, v18, v19, v20, v21, v22, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
          v23 = v61;
          v24 = v62;
          v25 = v63;
          v26 = v64;
          v27 = v65;
          v28 = v66;
          v29 = v67;
          v30 = v68;
          v31 = v69;
          v32 = v70;
          v33 = v71;
          v34 = v72;
          v35 = v73;
          v36 = v74;
          v37 = v75;
          v38 = v76;
          v39 = v77;
          v40 = v90;
          *(v90 + 5) = v17;
          *(v40 + 6) = v18;
          *(v40 + 7) = v19;
          *(v40 + 8) = v20;
          *(v40 + 9) = v21;
          *(v40 + 10) = v22;
          *(v40 + 11) = v23;
          *(v40 + 12) = v24;
          *(v40 + 13) = v25;
          *(v40 + 14) = v26;
          *(v40 + 15) = v27;
          *(v40 + 16) = v28;
          *(v40 + 17) = v29;
          *(v40 + 18) = v30;
          *(v40 + 19) = v31;
          *(v40 + 20) = v32;
          *(v40 + 21) = v33;
          *(v40 + 22) = v34;
          *(v40 + 23) = v35;
          *(v40 + 24) = v36;
          *(v40 + 25) = v37;
          *(v40 + 26) = v38;
          v40[216] = v39 & 1;
        }

        v57 = 0;
        v41 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0);
        v59 = &v90[*(v41 + 28)];
        v58 = &v91[*(v41 + 28)];
        v42 = sub_1B0E443C8();
        (*(*(v42 - 8) + 16))(v59, v58);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v56 = *v91;

          *v90 = v56;
        }

        else
        {
          v52 = *v91;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v43 = v91;
          v44 = v90;
          *v90 = v52;
          *(v44 + 1) = *(v43 + 1);
          v53 = *(v43 + 2);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v45 = v91;
          v46 = v90;
          *(v90 + 2) = v53;
          *(v46 + 3) = *(v45 + 3);
          v54 = *(v45 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v47 = v91;
          v48 = v90;
          *(v90 + 4) = v54;
          *(v48 + 5) = *(v47 + 5);
          v55 = *(v47 + 6);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *(v90 + 6) = v55;
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v2 = v91;
      *v90 = *v91;
      v88 = *(v2 + 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v3 = v91;
      *(v90 + 1) = v88;
      if (*(v3 + 3))
      {
        v4 = v91;
        *(v90 + 2) = *(v91 + 2);
        v86 = *(v4 + 3);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v5 = v91;
        v6 = v90;
        *(v90 + 3) = v86;
        *(v6 + 4) = *(v5 + 4);
        v87 = *(v5 + 5);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        *(v90 + 5) = v87;
      }

      else
      {
        v7 = v90;
        v8 = v91;
        *(v90 + 1) = *(v91 + 1);
        *(v7 + 2) = *(v8 + 2);
      }

      v83 = 0;
      v9 = type metadata accessor for MessageSectionDataConcatenator(0);
      v85 = &v90[*(v9 + 28)];
      v84 = &v91[*(v9 + 28)];
      v10 = type metadata accessor for MessageSectionData.Concatenator(0);
      (*(*(v10 - 8) + 16))(v85, v84);
      swift_storeEnumTagMultiPayload();
    }

    (*(v93 + 56))(v90, 0, 1, v92);
  }

  return v90;
}

uint64_t sub_1B07AE75C()
{
  v1 = *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B0797C00(v2);
}

uint64_t sub_1B07AE7C0()
{
  v1 = *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0797C2C(v2);
}

uint64_t sub_1B07AE824()
{
  v1 = *(type metadata accessor for MessageSectionData(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0797A7C(v2);
}

uint64_t sub_1B07AE888(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  v3 = a1 + *(type metadata accessor for MessageSectionDataConcatenator(0) + 28);
  v1 = type metadata accessor for MessageSectionData.Concatenator(0);
  (*(*(v1 - 8) + 8))(v3);
  return a1;
}

uint64_t sub_1B07AE938(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  v4 = *(type metadata accessor for MessageSectionDataConcatenator(0) + 28);
  v2 = type metadata accessor for MessageSectionData.Concatenator(0);
  (*(*(v2 - 8) + 32))(a2 + v4, a1 + v4);
  return a2;
}

uint64_t sub_1B07AE9EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v11 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v11;
  if (*(a1 + 24))
  {
    *(a2 + 16) = *(a1 + 16);
    v7 = *(a1 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(a2 + 24) = v7;
    *(a2 + 32) = *(a1 + 32);
    v8 = *(a1 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(a2 + 40) = v8;
  }

  else
  {
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
  }

  v2 = type metadata accessor for MessageSectionDataConcatenator(0);
  v6 = a2 + *(v2 + 28);
  v5 = a1 + *(v2 + 28);
  v3 = type metadata accessor for MessageSectionData.Concatenator(0);
  (*(*(v3 - 8) + 16))(v6, v5);
  return a2;
}

uint64_t sub_1B07AEB1C(uint64_t a1)
{
  v29 = a1;
  v30 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1))
  {

    if (*(v29 + 16))
    {
    }

    if (*(v29 + 216) != 255)
    {
      v1 = *(v29 + 40);
      v2 = *(v29 + 48);
      v3 = *(v29 + 56);
      v4 = *(v29 + 64);
      v5 = *(v29 + 72);
      v6 = *(v29 + 80);
      v7 = *(v29 + 88);
      v8 = *(v29 + 96);
      v9 = *(v29 + 104);
      v10 = *(v29 + 112);
      v11 = *(v29 + 120);
      v12 = *(v29 + 128);
      v13 = *(v29 + 136);
      v14 = *(v29 + 144);
      v15 = *(v29 + 152);
      v16 = *(v29 + 160);
      v17 = *(v29 + 168);
      v18 = *(v29 + 176);
      v19 = *(v29 + 184);
      v20 = *(v29 + 192);
      v21 = *(v29 + 200);
      v22 = *(v29 + 208);
      v23 = *(v29 + 216);
      v28 = &v26;
      sub_1B075E1EC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v27 = v29 + *(v30 + 28);
    v24 = sub_1B0E443C8();
    (*(*(v24 - 8) + 8))(v27);
  }

  return v29;
}

unint64_t sub_1B07AECF0()
{
  v2 = qword_1EB6E2108;
  if (!qword_1EB6E2108)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2108);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for InProgressMessageDownload.EMLX(uint64_t a1)
{
  v2 = qword_1EB6DC0F0;
  if (!qword_1EB6DC0F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1B07AEDE0(void *a1, void *a2)
{
  *a2 = *a1;

  a2[1] = a1[1];

  a2[2] = a1[2];

  a2[3] = a1[3];

  a2[4] = a1[4];

  return a2;
}

char *sub_1B07AEE78(char *a1, char *a2)
{
  v14 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    v10 = &a2[*(v14 + 20)];
    v9 = &a1[*(v14 + 20)];
    v5 = *v9;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *v10 = v5;
    v6 = *(v9 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v10 + 1) = v6;
    v7 = *(v9 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v10 + 2) = v7;
    v8 = *(v9 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v10 + 3) = v8;
    v11 = *(v9 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v10 + 4) = v11;
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  return a2;
}

char *sub_1B07AF054(char *a1, char *a2)
{
  v11 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if ((v13)(a2, 1))
  {
    if (v13(a1, 1, v11))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      v4 = sub_1B0E443C8();
      (*(*(v4 - 8) + 32))(a2, a1);
      memcpy(&a2[*(v11 + 20)], &a1[*(v11 + 20)], 0x28uLL);
      (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  else if (v13(a1, 1, v11))
  {
    sub_1B07AF320(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 40))(a2, a1);
    v8 = &a2[*(v11 + 20)];
    v7 = &a1[*(v11 + 20)];
    *v8 = *v7;

    *(v8 + 1) = *(v7 + 1);

    *(v8 + 2) = *(v7 + 2);

    *(v8 + 3) = *(v7 + 3);

    *(v8 + 4) = *(v7 + 4);
  }

  return a2;
}

uint64_t sub_1B07AF320(uint64_t a1)
{
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for InProgressMessageDownload.EMLX(0);

  return a1;
}

uint64_t sub_1B07AF3D4(uint64_t a1)
{
  v4 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t type metadata accessor for InProgressMessageDownload.Result(uint64_t a1)
{
  v2 = qword_1EB6DC0D8;
  if (!qword_1EB6DC0D8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1B07AF53C()
{
  v2 = qword_1EB6E2118;
  if (!qword_1EB6E2118)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2118);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07AF5B8(const void *a1, void *a2)
{
  v6 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1B07AF6E0()
{
  v2 = qword_1EB6DB2C0;
  if (!qword_1EB6DB2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07AF768(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for InProgressMessageDownload.EMLX(0);
  memcpy((a2 + *(v3 + 20)), (a1 + *(v3 + 20)), 0x28uLL);
  return a2;
}

uint64_t sub_1B07AF800(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(type metadata accessor for InProgressMessageDownload.EMLX(0) + 20);
  v6 = *(a1 + v5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = (a2 + v5);
  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[1] = v7;
  v8 = *(a1 + v5 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[2] = v8;
  v9 = *(a1 + v5 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[3] = v9;
  v12 = *(a1 + v5 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  v11[4] = v12;
  return result;
}

uint64_t sub_1B07AF920(uint64_t a1)
{
  v3 = type metadata accessor for Message(0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B07AF9C8()
{
  v2 = qword_1EB6DB2D8;
  if (!qword_1EB6DB2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2128, &qword_1B0E9B5A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AFA50()
{
  v2 = qword_1EB6DB5D8;
  if (!qword_1EB6DB5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AFAD8()
{
  v2 = qword_1EB6DB2C8;
  if (!qword_1EB6DB2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AFB60()
{
  v2 = qword_1EB6DB0A0;
  if (!qword_1EB6DB0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AFBE8()
{
  v2 = qword_1EB6DB5D0;
  if (!qword_1EB6DB5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5D0);
    return WitnessTable;
  }

  return v2;
}

_DWORD *sub_1B07AFC78(uint64_t a1, _DWORD *a2)
{
  v85 = a1;
  v86 = a2;
  *a2 = *a1;
  if (*(a1 + 184) == 255)
  {
    memcpy(v86 + 2, (v85 + 8), 0xB1uLL);
  }

  else
  {
    v2 = *(v85 + 8);
    v3 = *(v85 + 16);
    v4 = *(v85 + 24);
    v5 = *(v85 + 32);
    v6 = *(v85 + 40);
    v7 = *(v85 + 48);
    v68 = *(v85 + 56);
    v69 = *(v85 + 64);
    v70 = *(v85 + 72);
    v71 = *(v85 + 80);
    v72 = *(v85 + 88);
    v73 = *(v85 + 96);
    v74 = *(v85 + 104);
    v75 = *(v85 + 112);
    v76 = *(v85 + 120);
    v77 = *(v85 + 128);
    v78 = *(v85 + 136);
    v79 = *(v85 + 144);
    v80 = *(v85 + 152);
    v81 = *(v85 + 160);
    v82 = *(v85 + 168);
    v83 = *(v85 + 176);
    v84 = *(v85 + 184);
    v67 = &v43;
    sub_1B0716BB8(v2, v3, v4, v5, v6, v7, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
    v8 = v68;
    v9 = v69;
    v10 = v70;
    v11 = v71;
    v12 = v72;
    v13 = v73;
    v14 = v74;
    v15 = v75;
    v16 = v76;
    v17 = v77;
    v18 = v78;
    v19 = v79;
    v20 = v80;
    v21 = v81;
    v22 = v82;
    v23 = v83;
    v24 = v84;
    v25 = v86;
    *(v86 + 1) = v2;
    *(v25 + 2) = v3;
    *(v25 + 3) = v4;
    *(v25 + 4) = v5;
    *(v25 + 5) = v6;
    *(v25 + 6) = v7;
    *(v25 + 7) = v8;
    *(v25 + 8) = v9;
    *(v25 + 9) = v10;
    *(v25 + 10) = v11;
    *(v25 + 11) = v12;
    *(v25 + 12) = v13;
    *(v25 + 13) = v14;
    *(v25 + 14) = v15;
    *(v25 + 15) = v16;
    *(v25 + 16) = v17;
    *(v25 + 17) = v18;
    *(v25 + 18) = v19;
    *(v25 + 19) = v20;
    *(v25 + 20) = v21;
    *(v25 + 21) = v22;
    *(v25 + 22) = v23;
    *(v25 + 184) = v24 & 1;
  }

  v61 = 0;
  v62 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v63 = v86 + *(v62 + 24);
  v64 = (v85 + *(v62 + 24));
  v65 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(v61);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v26 = sub_1B0E443C8();
    (*(*(v26 - 8) + 16))(v63, v64);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v63, v64, *(*(v65 - 8) + 64));
  }

  v53 = 0;
  v27 = _s31PreviouslyDownloadedMessageDataVMa(0);
  v54 = *(v27 + 20);
  v55 = *&v64[*(v27 + 20)];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = v53;
  v29 = v86;
  v30 = v62;
  v31 = v85;
  *&v63[v54] = v55;
  __dst = v29 + *(v30 + 28);
  __src = (v31 + *(v30 + 28));
  v58 = type metadata accessor for MessageHeader(v28);
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(__src, 1))
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    memcpy(__dst, __src, *(*(v33 - 8) + 64));
  }

  else
  {
    v32 = sub_1B0E443C8();
    (*(*(v32 - 8) + 16))(__dst, __src);
    (*(v59 + 56))(__dst, 0, 1, v58);
  }

  v34 = v85;
  v35 = v62;
  *(v86 + *(v62 + 32)) = *(v85 + *(v62 + 32));
  v44 = *(v35 + 36);
  v45 = *(v34 + *(v35 + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = v62;
  v37 = v85;
  *(v86 + v44) = v45;
  v46 = *(v36 + 40);
  v47 = *(v37 + *(v36 + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v38 = v86;
  v39 = v62;
  v40 = v85;
  *(v86 + v46) = v47;
  v48 = v38 + *(v39 + 44);
  v49 = (v40 + *(v39 + 44));
  v50 = sub_1B0E443C8();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  if ((*(v51 + 48))(v49, 1))
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    memcpy(v48, v49, *(*(v41 - 8) + 64));
  }

  else
  {
    (*(v51 + 16))(v48, v49, v50);
    (*(v51 + 56))(v48, 0, 1, v50);
  }

  return v86;
}

_DWORD *sub_1B07B02D8(_DWORD *a1, _DWORD *a2)
{
  *a2 = *a1;
  memcpy(a2 + 2, a1 + 2, 0xB1uLL);
  v17 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v18 = v17[6];
  v20 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v18, a1 + v18, *(*(v20 - 8) + 64));
  }

  v3 = _s31PreviouslyDownloadedMessageDataVMa(0);
  *(a2 + v18 + *(v3 + 20)) = *(a1 + v18 + *(v3 + 20));
  __dst = a2 + v17[7];
  __src = a1 + v17[7];
  v14 = type metadata accessor for MessageHeader(0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(__src, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    v4 = sub_1B0E443C8();
    (*(*(v4 - 8) + 32))(__dst, __src);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  *(a2 + v17[8]) = *(a1 + v17[8]);
  *(a2 + v17[9]) = *(a1 + v17[9]);
  *(a2 + v17[10]) = *(a1 + v17[10]);
  v8 = a2 + v17[11];
  v9 = a1 + v17[11];
  v10 = sub_1B0E443C8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    memcpy(v8, v9, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(v8, v9, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_1B07B073C()
{
  v1 = *(type metadata accessor for InProgressMessageDownload.Completed(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B079F1FC(v2);
}

uint64_t sub_1B07B07A0()
{
  v1 = *(sub_1B0E443C8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07A26E4(v2);
}