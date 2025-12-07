void sub_1AAF1E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v252 = a8;
  v262 = a7;
  v259 = a5;
  v260 = a6;
  v256 = sub_1AAF8E134();
  v254 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v253 = v248 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8E204();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v251 = v248 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v264 = 0;
  v265 = 0;
  v17 = 0;
  if (*(a3 + 16) >= 2uLL)
  {
    v16 = sub_1AAF70A10(v14);
    v264 = v18;
    v265 = v19;
    v17 = v20 & 1;
  }

  v257 = a4;
  v266 = v17;
  v261 = v16;
  v21 = *(a2 + 16);
  if (!v21)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v22 = 0;
  v258 = a9;
  v23 = a2 + 32;
  v267 = MEMORY[0x1E69E7CC0];
  v268 = v21;
  v263 = a2 + 32;
  while (2)
  {
    v24 = v23 + 152 * v22;
    v25 = v22;
    while (1)
    {
      if (v25 >= v21)
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v26 = *(v24 + 112);
      v317 = *(v24 + 96);
      v318 = v26;
      v319 = *(v24 + 128);
      v320 = *(v24 + 144);
      v27 = *(v24 + 48);
      v313 = *(v24 + 32);
      v314 = v27;
      v28 = *(v24 + 80);
      v315 = *(v24 + 64);
      v316 = v28;
      v29 = *(v24 + 16);
      v311 = *v24;
      v312 = v29;
      v22 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_98;
      }

      v30 = *(v24 + 112);
      v327 = *(v24 + 96);
      v328 = v30;
      v329 = *(v24 + 128);
      v330 = *(v24 + 144);
      v31 = *(v24 + 48);
      v323 = *(v24 + 32);
      v324 = v31;
      v32 = *(v24 + 80);
      v325 = *(v24 + 64);
      v326 = v32;
      v33 = *(v24 + 16);
      v321 = *v24;
      v322 = v33;
      v34 = sub_1AAF14CF0(&v321);
      if (v34 > 1)
      {
        break;
      }

      if (v34)
      {
        sub_1AACBC764(&v321);
        v297 = v317;
        v298 = v318;
        v299 = v319;
        v300 = v320;
        v293 = v313;
        v294 = v314;
        v295 = v315;
        v296 = v316;
        v291 = v311;
        v292 = v312;
        v35 = sub_1AACBC764(&v291);
        v36 = *(v35 + 16);
        v269 = *(v35 + 24);
        v270 = v36;
        v37 = *(v35 + 32);
        v38 = *(v35 + 48);
        v39 = *(v35 + 56);
        v40 = *(v35 + 64);
        v41 = *(v35 + 72);
        v303 = v313;
        v304 = v314;
        v307 = v317;
        v308 = v318;
        v309 = v319;
        v310 = v320;
        v305 = v315;
        v306 = v316;
        v301 = v311;
        v302 = v312;
        v42 = sub_1AACBC764(&v301);
        sub_1AAF20668(v42, &v281, sub_1AAF14CFC);
        goto LABEL_18;
      }

LABEL_13:
      v43 = sub_1AACBC764(&v321);
      if (*(v43 + 56) < 0)
      {
        goto LABEL_103;
      }

      if (*(v43 + 56))
      {
        goto LABEL_102;
      }

      v38 = *(v43 + 40);
      if ((~v38 & 0x7FF0000000000000) != 0)
      {
        goto LABEL_21;
      }

LABEL_6:
      ++v25;
      v24 += 152;
      if (v22 == v21)
      {
        v23 = v263;
        goto LABEL_28;
      }
    }

    if (v34 == 2)
    {
      goto LABEL_13;
    }

    sub_1AACBC764(&v321);
    v307 = v317;
    v308 = v318;
    v309 = v319;
    v310 = v320;
    v303 = v313;
    v304 = v314;
    v305 = v315;
    v306 = v316;
    v301 = v311;
    v302 = v312;
    v44 = sub_1AACBC764(&v301);
    v45 = *(v44 + 16);
    v37 = *(v44 + 32);
    v38 = *(v44 + 48);
    v39 = *(v44 + 56);
    v40 = *(v44 + 64);
    v41 = *(v44 + 72);
    v269 = *(v44 + 24);
    v270 = v45;
    sub_1AACD7304(v45, v269, v37);

    sub_1AADB308C(v38, v39, v40, v41);
LABEL_18:
    if ((v41 & 0x80) != 0)
    {
      goto LABEL_101;
    }

    sub_1AAD04750(v270, v269, v37);

    sub_1AADB3124(v38, v39, v40, v41);
    if (v41)
    {
      goto LABEL_99;
    }

    v21 = v268;
    if ((~v38 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v267 = sub_1AAD67B50(0, *(v267 + 2) + 1, 1, v267);
    }

    v23 = v263;
    v47 = *(v267 + 2);
    v46 = *(v267 + 3);
    if (v47 >= v46 >> 1)
    {
      v267 = sub_1AAD67B50((v46 > 1), v47 + 1, 1, v267);
    }

    v48 = v267;
    *(v267 + 2) = v47 + 1;
    *&v48[v47 + 4] = v38;
    if (v22 != v21)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v49 = *(v23 + 112);
  v279[6] = *(v23 + 96);
  v279[7] = v49;
  v279[8] = *(v23 + 128);
  v280 = *(v23 + 144);
  v50 = *(v23 + 48);
  v279[2] = *(v23 + 32);
  v279[3] = v50;
  v51 = *(v23 + 80);
  v279[4] = *(v23 + 64);
  v279[5] = v51;
  v52 = *(v23 + 16);
  v279[0] = *v23;
  v279[1] = v52;
  sub_1AAF14CF0(v279);
  v53 = sub_1AACBC764(v279);
  v54 = v257;
  if (*(v257 + 16) && (v55 = sub_1AACE1760(*v53), (v56 & 1) != 0) && (sub_1AACE0A98(*(v54 + 56) + 48 * v55, &v321), v57 = BYTE8(v323), BYTE8(v323) != 255))
  {
    v275 = v321;
    v276 = v322;
    v277 = v323;
  }

  else
  {
    v277 = 0;
    v275 = 0u;
    v276 = 0u;
    v57 = 3;
  }

  v58 = v266;
  v278 = v57;
  v59 = *(v260 + 32);
  v60 = v258;
  if (v259 <= 1)
  {
    v81 = sub_1AAF739C0(v59, v54);
    v269 = v83;
    v270 = v81;
    v257 = v84;
    v85 = v261;
  }

  else
  {
    if (*(v59 + 16) == 1)
    {
      v61 = *(v59 + 144);
      v307 = *(v59 + 128);
      v308 = v61;
      v309 = *(v59 + 160);
      v310 = *(v59 + 176);
      v62 = *(v59 + 80);
      v303 = *(v59 + 64);
      v304 = v62;
      v63 = *(v59 + 112);
      v305 = *(v59 + 96);
      v306 = v63;
      v64 = *(v59 + 48);
      v301 = *(v59 + 32);
      v302 = v64;
      sub_1AAD81BF4(&v301, &v321);
      v66 = sub_1AAF70BEC(v65);
      v68 = v67;
      v70 = v69;
      sub_1AAD81C50(&v301);
      v71 = v253;
      sub_1AAF8E124();
      v72 = sub_1AAF8E974();
      v74 = v73;
      sub_1AAD04750(v66, v68, v70 & 1);

      v75 = (*(v254 + 8))(v71, v256);
      v76 = sub_1AAF88134(v72, v74, v259, v75);
      v269 = v77;
      v270 = v76;
      v79 = v78;
      v257 = v80;
      v58 = v266;
    }

    else
    {
      sub_1AAF8E1F4();
      sub_1AAF8E1E4();
      *&v321 = v259;
      sub_1AAF8E1B4();
      sub_1AAF8E1E4();
      sub_1AAF8E224();
      type metadata accessor for FindClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v87 = [objc_opt_self() bundleForClass_];
      v88 = sub_1AAF8EA44();
      v269 = v89;
      v270 = v88;
      v79 = v90;
      v257 = v91;
    }

    v85 = v261;
    v82 = v79 & 1;
    v60 = v258;
  }

  v255 = v82;
  if (v262 < 2)
  {
    v106 = 0;
    v108 = 0;
    v111 = 0;
    v268 = 0;
  }

  else
  {
    v92 = *(v252 + 112);
    v287 = *(v252 + 96);
    v288 = v92;
    v289 = *(v252 + 128);
    v290 = *(v252 + 144);
    v93 = *(v252 + 48);
    v283 = *(v252 + 32);
    v284 = v93;
    v94 = *(v252 + 80);
    v285 = *(v252 + 64);
    v286 = v94;
    v95 = *(v252 + 16);
    v281 = *v252;
    v282 = v95;
    if (sub_1AAED0054(&v281) == 1)
    {
      goto LABEL_106;
    }

    v297 = v287;
    v298 = v288;
    v299 = v289;
    v300 = v290;
    v293 = v283;
    v294 = v284;
    v295 = v285;
    v296 = v286;
    v291 = v281;
    v292 = v282;
    v96 = sub_1AAF70BEC(*&v281);
    v98 = v97;
    v100 = v99;
    v101 = v253;
    sub_1AAF8E124();
    v102 = sub_1AAF8E974();
    v104 = v103;
    sub_1AAD04750(v96, v98, v100 & 1);

    v105 = (*(v254 + 8))(v101, v256);
    v106 = sub_1AAF88134(v102, v104, v262, v105);
    v108 = v107;
    LOBYTE(v96) = v109;
    v268 = v110;

    v111 = v96 & 1;
    v58 = v266;
    v60 = v258;
  }

  v320 = *(v260 + 344);
  v112 = *(v260 + 248);
  v313 = *(v260 + 232);
  v314 = v112;
  v113 = *(v260 + 216);
  v311 = *(v260 + 200);
  v312 = v113;
  v114 = *(v260 + 312);
  v317 = *(v260 + 296);
  v318 = v114;
  v319 = *(v260 + 328);
  v115 = *(v260 + 280);
  v315 = *(v260 + 264);
  v316 = v115;
  if (sub_1AAED0054(&v311) != 1)
  {
    v327 = v317;
    v328 = v318;
    v329 = v319;
    v330 = v320;
    v323 = v313;
    v324 = v314;
    v325 = v315;
    v326 = v316;
    v321 = v311;
    v322 = v312;
    v116 = sub_1AAF14CF0(&v321);
    sub_1AACBC764(&v321);
    v256 = v106;
    v254 = v108;
    v258 = v111;
    if (v116 <= 1)
    {
      v118 = *(v263 + 112);
      v273[6] = *(v263 + 96);
      v273[7] = v118;
      v273[8] = *(v263 + 128);
      v274 = *(v263 + 144);
      v119 = *(v263 + 48);
      v273[2] = *(v263 + 32);
      v273[3] = v119;
      v120 = *(v263 + 80);
      v273[4] = *(v263 + 64);
      v273[5] = v120;
      v121 = *(v263 + 16);
      v273[0] = *v263;
      v273[1] = v121;
      v122 = sub_1AAF14CF0(v273);
      v123 = sub_1AACBC764(v273);
      if ((v122 - 2) >= 2 && (v122 ? (v124 = 73) : (v124 = 80), *(v123 + v124) == 3))
      {
        v146 = 0;
        v147 = *(v267 + 2);
      }

      else
      {
        v146 = 1;
        v147 = v262;
      }

      v148 = *(v267 + 2);
      if (v148)
      {
        if (v148 <= 3)
        {
          v149 = 0;
          v150 = 0.0;
          goto LABEL_64;
        }

        v149 = v148 & 0x7FFFFFFFFFFFFFFCLL;
        v151 = v267 + 6;
        v150 = 0.0;
        v152 = v148 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v150 = v150 + *(v151 - 2) + *(v151 - 1) + *v151 + v151[1];
          v151 += 4;
          v152 -= 4;
        }

        while (v152);
        if (v148 != v149)
        {
LABEL_64:
          v153 = v148 - v149;
          v154 = &v267[v149 + 4];
          do
          {
            v155 = *v154++;
            v150 = v150 + v155;
            --v153;
          }

          while (v153);
        }
      }

      else
      {
        v150 = 0.0;
      }

      v271 = sub_1AAF75A98(COERCE__INT64(v150 / v147), 0, 0);
      v272 = v156;
      sub_1AADA6144();
      v263 = sub_1AAF8EA64();
      v260 = v157;
      LODWORD(v259) = v158;
      v267 = v159;
      if (v262 == 1)
      {
        v160 = v146;
      }

      else
      {
        v160 = 0;
      }

      LODWORD(v250) = v160;
      v161 = v265;
      if (v265)
      {
        v162 = v85;
        v163 = v264;
        v164 = v264;
        v165 = v266;
        v166 = v266;
        v167 = v265;
      }

      else
      {
        sub_1AAF8E214();
        v162 = sub_1AAF8EA44();
        v164 = v168;
        v166 = v169;
        v167 = v170;
        v163 = v264;
        v161 = v265;
        v165 = v266;
      }

      sub_1AADA61DC(v85, v163, v165, v161);
      sub_1AAF8E214();
      v171 = sub_1AAF8EA44();
      v173 = v172;
      v175 = v174;
      v176 = v167;
      v177 = sub_1AAF8EA14();
      sub_1AAD04750(v171, v173, v175 & 1);

      v262 = v176;
      v252 = v164;
      v253 = v162;
      LODWORD(v251) = v166;
      if (v177)
      {
        sub_1AAF714F8(v263, v260, v259 & 1, v267, v250, v178);
      }

      else
      {
        sub_1AAF715F8(v263, v260, v259 & 1, v267, v162, v164, v166 & 1, v176, v178, v250);
      }

      v179 = v257;
      sub_1AAD45E78(0);
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_1AAF99670;
      type metadata accessor for FindClass();
      v181 = swift_getObjCClassFromMetadata();
      v182 = [objc_opt_self() bundleForClass_];
      *(v180 + 32) = sub_1AAF8EA44();
      *(v180 + 40) = v184;
      *(v180 + 48) = v183 & 1;
      v186 = v269;
      v185 = v270;
      *(v180 + 56) = v187;
      *(v180 + 64) = v185;
      v189 = v255;
      v188 = v256;
      *(v180 + 72) = v186;
      *(v180 + 80) = v189;
      *(v180 + 88) = v179;
      *(v180 + 96) = v188;
      v190 = v254;
      v191 = v258;
      *(v180 + 104) = v254;
      *(v180 + 112) = v191;
      v192 = v268;
      *(v180 + 120) = v268;
      v193 = *(v180 + 16);
      v269 = v186;
      v270 = v185;
      v268 = v192;
      v257 = v179;
      if (v193)
      {
        v194 = 0;
        v195 = (v180 + 56);
        while (1)
        {
          v196 = *v195;
          if (*v195)
          {
            break;
          }

          ++v194;
          v195 += 4;
          if (v193 == v194)
          {
            goto LABEL_79;
          }
        }

        v198 = *(v195 - 1);
        v249 = *(v195 - 2);
        v250 = v198;
        v199 = v179;
        v200 = *(v195 - 3);
        sub_1AADA61DC(v185, v186, v189, v199);
        v201 = v192;
        v197 = v190;
        sub_1AADA61DC(v188, v190, v258, v201);

        v202 = v249;
        v203 = v250;
        sub_1AADA61DC(v200, v249, v250, v196);
        sub_1AAD04750(v200, v202, v203 & 1);

        sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v180, v194);

        sub_1AAD04750(v253, v252, v251 & 1);
      }

      else
      {
LABEL_79:
        sub_1AADA61DC(v185, v186, v189, v179);
        sub_1AADA61DC(v188, v190, v258, v192);
        sub_1AAD04750(v253, v252, v251 & 1);
        v197 = v190;
      }

      sub_1AAD04750(v263, v260, v259 & 1);

      swift_setDeallocating();
      sub_1AAF20A28(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1AADA6198(v270, v269, v189, v257);
      sub_1AADA6198(v261, v264, v266, v265);
      sub_1AADA6198(v256, v197, v258, v268);
LABEL_95:
      sub_1AAD57C94(&v275);
      return;
    }

    if (v259 != 1)
    {
      sub_1AAF73C2C(v267, 0, v117);
      v263 = v139;
      v141 = v140;
      v143 = v142;
      v132 = v144;

      v145 = v268;
      sub_1AADA61DC(v106, v108, v111, v268);
      v267 = v106;
      v259 = v108;
      v252 = v111;
      v253 = v145;
      v130 = v143;
      goto LABEL_84;
    }

    if (*(v60 + 16))
    {
      v125 = v267;
      sub_1AAF73C2C(v267, *(v60 + 536), v117);
      v127 = v126;
      v262 = v128;
      v130 = v129;
      v132 = v131;
      v133 = *(v125 + 2);

      v263 = v127;
      if (v133 <= 1)
      {
        v267 = 0;
        v259 = 0;
        v252 = 0;
        v253 = 0;
      }

      else
      {
        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        *&v273[0] = v133;
        sub_1AAF8E1B4();
        sub_1AAF8E1E4();
        v267 = sub_1AAF8E224();
        v260 = v130;
        type metadata accessor for FindClass();
        v134 = swift_getObjCClassFromMetadata();
        v135 = [objc_opt_self() bundleForClass_];
        v130 = v260;
        v267 = sub_1AAF8EA44();
        v259 = v136;
        v252 = v137 & 1;
        v253 = v138;
      }

      v141 = v262;
LABEL_84:
      sub_1AAD45E78(0);
      v204 = swift_allocObject();
      *(v204 + 16) = xmmword_1AAF99670;
      v205 = swift_allocObject();
      v206 = 0;
      *(v205 + 16) = xmmword_1AAF9E2B0;
      *(v205 + 32) = v85;
      v207 = v264;
      v208 = v265;
      *(v205 + 40) = v264;
      *(v205 + 48) = v58;
      *(v205 + 56) = v208;
      *(v205 + 64) = v263;
      *(v205 + 72) = v141;
      *(v205 + 80) = v130 & 1;
      *(v205 + 88) = v132;
      v209 = v85;
      v250 = v205 + 32;
      v251 = v132;
      v210 = v205 + 32;
      v211 = v85;
      v212 = v208;
      v262 = v141;
      v260 = v130;
      if (v208)
      {
LABEL_87:
        v249 = v206;
        v213 = v58;
        v214 = *(v210 + 8);
        v215 = *(v210 + 16);
        sub_1AADA61DC(v211, v207, v213, v208);
        sub_1AACD7304(v263, v141, v130 & 1);

        sub_1AADA61DC(v209, v214, v215, v212);
        sub_1AAD04750(v209, v214, v215 & 1);

        sub_1AAF1161C(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v205, v249);
        v217 = v216;
        v219 = v218;
        LOBYTE(v214) = v220;
        v222 = v221;

        v132 = (v214 & 1);
      }

      else
      {
        v209 = v263;
        if (v132)
        {
          v206 = 1;
          v210 = v205 + 64;
          v212 = v132;
          v211 = v261;
          v141 = v262;
          v207 = v264;
          v208 = v265;
          LOBYTE(v130) = v260;
          goto LABEL_87;
        }

        sub_1AADA61DC(v261, v264, v58, 0);
        sub_1AACD7304(v209, v262, v260 & 1);

        v217 = 0;
        v219 = 0;
        v222 = 0;
      }

      swift_setDeallocating();
      sub_1AAF20A28(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
      v248[1] = v223;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v204 + 32) = v217;
      *(v204 + 40) = v219;
      *(v204 + 48) = v132;
      *(v204 + 56) = v222;
      v225 = v269;
      v224 = v270;
      *(v204 + 64) = v270;
      *(v204 + 72) = v225;
      v226 = v255;
      v227 = v257;
      *(v204 + 80) = v255;
      *(v204 + 88) = v227;
      v228 = v259;
      *(v204 + 96) = v267;
      *(v204 + 104) = v228;
      v229 = v252;
      v230 = v253;
      *(v204 + 112) = v252;
      *(v204 + 120) = v230;
      v231 = *(v204 + 16);
      v269 = v225;
      v270 = v224;
      if (v231)
      {
        v232 = 0;
        v233 = (v204 + 56);
        while (1)
        {
          v234 = *v233;
          if (*v233)
          {
            break;
          }

          ++v232;
          v233 += 4;
          if (v231 == v232)
          {
            goto LABEL_92;
          }
        }

        v259 = v228;
        v253 = v230;
        v237 = v229;
        v238 = *(v233 - 1);
        v249 = *(v233 - 2);
        v250 = v238;
        v239 = *(v233 - 3);
        sub_1AADA61DC(v224, v225, v226, v227);
        sub_1AADA61DC(v267, v228, v237, v230);

        v240 = v239;
        v241 = v239;
        v229 = v237;
        v243 = v249;
        v242 = v250;
        sub_1AADA61DC(v240, v249, v250, v234);
        v244 = v242 & 1;
        v230 = v253;
        v245 = v241;
        v228 = v259;
        sub_1AAD04750(v245, v243, v244);

        sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v204, v232);
        v249 = v247;
        v250 = v246;

        v236 = v227;
        v235 = v267;
      }

      else
      {
LABEL_92:
        sub_1AADA61DC(v224, v225, v226, v227);
        v235 = v267;
        sub_1AADA61DC(v267, v228, v229, v230);
        v249 = 0;
        v250 = 0;
        v236 = v227;
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1AADA6198(v235, v228, v229, v230);
      sub_1AADA6198(v270, v269, v226, v236);
      sub_1AAD04750(v263, v262, v260 & 1);

      sub_1AADA6198(v261, v264, v266, v265);
      sub_1AADA6198(v256, v254, v258, v268);
      goto LABEL_95;
    }

    goto LABEL_100;
  }

LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
}

void sub_1AAF1F678(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v86 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v7 = sub_1AADAA0A4(v7);
    }

    v76 = v7 + 16;
    v77 = *(v7 + 2);
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = &v7[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1AAF1FC60((*v88 + 304 * *v78), (*v88 + 304 * *v80), (*v88 + 304 * v81), v86);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_128;
    }

LABEL_99:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 304 * v6);
      v10 = 304 * v8;
      v11 = (*v88 + 304 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 76;
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v9 < v12) ^ (*v14 >= v15);
        ++v13;
        v14 += 38;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 304 * v6 - 304;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x130uLL);
            memcpy((v21 + v18), __dst, 0x130uLL);
          }

          ++v20;
          v18 -= 304;
          v10 += 304;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AAD68568(0, *(v7 + 2) + 1, 1, v7);
    }

    v29 = *(v7 + 2);
    v28 = *(v7 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v7 = sub_1AAD68568((v28 > 1), v29 + 1, 1, v7);
    }

    *(v7 + 2) = v30;
    v31 = v7 + 32;
    v32 = &v7[16 * v29 + 32];
    *v32 = v8;
    *(v32 + 1) = v6;
    v86 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 4);
          v35 = *(v7 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = &v7[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = &v31[16 * v33];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = &v7[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = &v31[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = &v31[16 * v33 - 16];
        v72 = *v71;
        v73 = &v31[16 * v33];
        v74 = *(v73 + 1);
        sub_1AAF1FC60((*v88 + 304 * *v71), (*v88 + 304 * *v73), (*v88 + 304 * v74), v86);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > *(v7 + 2))
        {
          goto LABEL_102;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v7 + 2);
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        memmove(&v31[16 * v33], v73 + 16, 16 * (v75 - 1 - v33));
        *(v7 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v31[16 * v30];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = &v7[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = &v31[16 * v33];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v8 + a4);
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 304 * v6;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*v26 >= *(v26 - 38))
    {
LABEL_30:
      ++v6;
      v23 += 304;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26, sizeof(__dst));
    memcpy(v26, v26 - 38, 0x130uLL);
    memcpy(v26 - 38, __dst, 0x130uLL);
    v26 -= 38;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

uint64_t sub_1AAF1FC60(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 304;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 304;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[304 * v11] <= a4)
    {
      memmove(a4, __src, 304 * v11);
    }

    v12 = &v4[304 * v11];
    if (v10 >= 304 && v6 > v7)
    {
LABEL_21:
      v15 = v6 - 304;
      v5 -= 304;
      do
      {
        v16 = v5 + 304;
        v17 = (v12 - 304);
        if (*(v12 - 38) < *v15)
        {
          if (v16 != v6)
          {
            memmove(v5, v6 - 304, 0x130uLL);
          }

          if (v12 <= v4 || (v6 -= 304, v15 <= v7))
          {
            v6 = v15;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        if (v16 != v12)
        {
          memmove(v5, v12 - 304, 0x130uLL);
        }

        v5 -= 304;
        v12 -= 304;
      }

      while (v17 > v4);
      v12 = v17;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[304 * v9] <= a4)
    {
      memmove(a4, __dst, 304 * v9);
    }

    v12 = &v4[304 * v9];
    if (v8 < 304)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*v6 < *v4)
        {
          v13 = v6;
          v14 = v7 == v6;
          v6 += 304;
          if (!v14)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 304;
          if (v4 >= v12 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v13 = v4;
        v14 = v7 == v4;
        v4 += 304;
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v13, 0x130uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v18 = (v12 - v4) / 304;
  if (v6 != v4 || v6 >= &v4[304 * v18])
  {
    memmove(v6, v4, 304 * v18);
  }

  return 1;
}

void sub_1AAF1FEE8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v9[2] = a2;
  sub_1AADE5FA4(sub_1AAF20870, v9, v4);
  v9[5] = v5;
  sub_1AAF20A28(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AADD9348();
  v6 = sub_1AAF8F544();
  v8 = v7;

  *a3 = v6;
  a3[1] = v8;
}

void sub_1AAF1FFB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v4;
  v12[8] = *(a1 + 128);
  v13 = *(a1 + 144);
  v5 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v5;
  v6 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v6;
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v8 = *(a2 + 304);

  v9 = sub_1AAF749A0(v12, v8);
  v11 = v10;

  *a3 = v9;
  a3[1] = v11;
}

void sub_1AAF20050(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v9[2] = a2;
  sub_1AADE5FA4(sub_1AAF20AB8, v9, v4);
  v9[5] = v5;
  sub_1AAF20A28(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AADD9348();
  v6 = sub_1AAF8F544();
  v8 = v7;

  *a3 = v6;
  a3[1] = v8;
}

void sub_1AAF2011C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v4;
  v12[8] = *(a1 + 128);
  v13 = *(a1 + 144);
  v5 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v5;
  v6 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v6;
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v8 = *(a2 + 312);

  v9 = sub_1AAF749A0(v12, v8);
  v11 = v10;

  *a3 = v9;
  a3[1] = v11;
}

uint64_t sub_1AAF201B8(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1AAF201D0()
{
  result = qword_1ED9B1FD0;
  if (!qword_1ED9B1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1FD0);
  }

  return result;
}

uint64_t sub_1AAF20224(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF20A28(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF202A4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v50 = *(result + 16);
  v44 = result + 32;
  do
  {
    v45 = v4;
    for (i = (v3 + 152 * v2); ; i = (i + 152))
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v6 = i[7];
      v60 = i[6];
      v61 = v6;
      v62 = i[8];
      v63 = *(i + 18);
      v7 = i[3];
      v56 = i[2];
      v57 = v7;
      v8 = i[5];
      v58 = i[4];
      v59 = v8;
      v9 = i[1];
      v54 = *i;
      v55 = v9;
      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_25;
      }

      v11 = i[7];
      v64[6] = i[6];
      v64[7] = v11;
      v64[8] = i[8];
      v65 = *(i + 18);
      v12 = i[3];
      v64[2] = i[2];
      v64[3] = v12;
      v13 = i[5];
      v64[4] = i[4];
      v64[5] = v13;
      v14 = i[1];
      v64[0] = *i;
      v64[1] = v14;
      v15 = sub_1AAF14CF0(v64);
      v68 = v2 + 1;
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v24 = sub_1AACBC764(v64);
          v25 = *(v24 + 8);
          v18 = *(v24 + 16);
          v19 = *(v24 + 24);
          v20 = *(v24 + 32);
          v26 = *(v24 + 80);
          v10 = *(v24 + 88);
          v27 = *(v24 + 96);
          v51[0] = v19;
          LOBYTE(v52[0]) = v27;
          v47 = v25;
          sub_1AACD7304(v25, v18, v19);

          sub_1AACD7304(v26, v10, v27);
          v21 = v27 & 1 | 0x8000000000000000;

          v23 = v26;
          v17 = v47;
        }

        else
        {
          v29 = sub_1AACBC764(v64);
          v17 = *(v29 + 16);
          v30 = *(v29 + 24);
          v19 = *(v29 + 32);
          v20 = *(v29 + 40);
          v31 = *(v29 + 88);
          v10 = *(v29 + 96);
          v32 = *(v29 + 104);
          v51[0] = v19;
          LOBYTE(v52[0]) = v32;
          v46 = v30;
          sub_1AACD7304(v17, v30, v19);

          sub_1AACD7304(v31, v10, v32);
          v21 = v32 & 1 | 0x8000000000000000;

          v23 = v31;
          v18 = v46;
        }
      }

      else if (v15)
      {
        v28 = sub_1AACBC764(v64);
        v17 = *(v28 + 16);
        v18 = *(v28 + 24);
        v20 = *(v28 + 40);
        v51[0] = *(v28 + 32);
        v19 = v51[0];
        v21 = v49 & 1;
        sub_1AACD7304(v17, v18, v51[0]);

        v49 &= 1u;
      }

      else
      {
        v16 = sub_1AACBC764(v64);
        v17 = *(v16 + 8);
        v18 = *(v16 + 16);
        v20 = *(v16 + 32);
        v51[0] = *(v16 + 24);
        v19 = v51[0];
        v21 = v48 & 1;
        sub_1AACD7304(v17, v18, v51[0]);

        v48 &= 1u;
      }

      v67[0] = v17;
      v67[1] = v18;
      v67[2] = v19;
      v67[3] = v20;
      v67[4] = v23;
      v67[5] = v10;
      v67[6] = v21;
      v67[7] = v22;
      sub_1AAD81BF4(&v54, v51);
      v33 = sub_1AAD7B764(v53, v67);
      v52[0] = v53[0];
      v52[1] = v53[1];
      v52[2] = v53[2];
      v52[3] = v53[3];
      sub_1AAD81A30(v52);
      if (v33)
      {
        break;
      }

      result = sub_1AAD81C50(&v54);
      ++v2;
      v1 = v50;
      if (v68 == v50)
      {
        return v45;
      }
    }

    v4 = v45;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v45;
    if ((result & 1) == 0)
    {
      result = sub_1AAD41500(0, *(v45 + 16) + 1, 1);
      v4 = v66;
    }

    v3 = v44;
    v35 = *(v4 + 16);
    v34 = *(v4 + 24);
    if (v35 >= v34 >> 1)
    {
      result = sub_1AAD41500((v34 > 1), v35 + 1, 1);
      v4 = v66;
    }

    *(v4 + 16) = v35 + 1;
    v36 = v4 + 152 * v35;
    v37 = v55;
    *(v36 + 32) = v54;
    *(v36 + 48) = v37;
    v38 = v56;
    v39 = v57;
    v40 = v59;
    *(v36 + 96) = v58;
    *(v36 + 112) = v40;
    *(v36 + 64) = v38;
    *(v36 + 80) = v39;
    v41 = v60;
    v42 = v61;
    v43 = v62;
    *(v36 + 176) = v63;
    *(v36 + 144) = v42;
    *(v36 + 160) = v43;
    *(v36 + 128) = v41;
    v1 = v50;
    v2 = v68;
  }

  while (v68 != v50);
  return v4;
}

uint64_t sub_1AAF20668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAF206D0(uint64_t a1, uint64_t a2)
{
  sub_1AACFDAA8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF20734(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAF20A28(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AAF207A4(uint64_t a1)
{
  if (!qword_1ED9B0F20)
  {
    sub_1AAF20A28(255, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B0F20);
    }
  }
}

uint64_t sub_1AAF20850(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AAF20890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1AAF208F0(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1AAF2091C(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1AAF2094C(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AAF20964(uint64_t a1)
{
  if (!qword_1ED9B0C70)
  {
    sub_1AAD45FFC(255);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0C70);
    }
  }
}

uint64_t sub_1AAF209BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AAF20A28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAF20A98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AAF20B70()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      sub_1AAF8FD64();
    }

    else
    {
      sub_1AAF20C0C(*(v0 + 48), *(v0 + 56));
    }
  }

  v3 = *(v0 + 24);
  if (v3 == 1 || !v3 && *(v1 + 16) == 1)
  {
    CGPathCloseSubpath(*v1);
  }

  if (__OFSUB__(0, v3))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = -v3;
  }
}

__n128 sub_1AAF20C0C(double a1, double a2)
{
  v5 = *(v2 + 16);
  if (v5 == 1)
  {
    *(v2 + 16) = 2;
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else if (v5)
  {
    *(v2 + 16) = 3;
    sub_1AAF20AE8(a1, a2);
  }

  else
  {
    *(v2 + 16) = 1;
    if (*(v2 + 24) == 1)
    {
      sub_1AAF8FD64();
    }

    else
    {
      sub_1AAF8FD54();
    }
  }

  result = *(v2 + 48);
  v7 = *(v2 + 64);
  *(v2 + 32) = result;
  *(v2 + 48) = v7;
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

int64x2_t sub_1AAF20CE8()
{
  v0[1].i64[0] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  v0[2] = result;
  v0[3] = result;
  v0[4] = result;
  return result;
}

uint64_t sub_1AAF20D34(double a1, double a2)
{
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[1] * 0.5;
  pow((v2[4] - v5) * (v2[4] - v5) + (v2[5] - v6) * (v2[5] - v6), v7);
  v8 = v2[8];
  v9 = v2[9];
  pow((v5 - v8) * (v5 - v8) + (v6 - v9) * (v6 - v9), v7);
  pow((v8 - a1) * (v8 - a1) + (v9 - a2) * (v9 - a2), v7);
  return sub_1AAF8FD74();
}

void sub_1AAF20F48()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      sub_1AAF8FD64();
    }

    else
    {
      sub_1AAF20FE4(*(v0 + 48), *(v0 + 56));
    }
  }

  v3 = *(v0 + 24);
  if (v3 == 1 || !v3 && *(v1 + 16) == 1)
  {
    CGPathCloseSubpath(*v1);
  }

  if (__OFSUB__(0, v3))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = -v3;
  }
}

__n128 sub_1AAF20FE4(double a1, double a2)
{
  v5 = *(v2 + 16);
  if (v5 == 1)
  {
    *(v2 + 16) = 2;
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else if (v5)
  {
    *(v2 + 16) = 3;
    sub_1AAF20D34(a1, a2);
  }

  else
  {
    *(v2 + 16) = 1;
    if (*(v2 + 24) == 1)
    {
      sub_1AAF8FD64();
    }

    else
    {
      sub_1AAF8FD54();
    }
  }

  result = *(v2 + 48);
  v7 = *(v2 + 64);
  *(v2 + 32) = result;
  *(v2 + 48) = v7;
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

CGMutablePathRef sub_1AAF210C8@<X0>(double a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, CGMutablePathRef *a4@<X8>)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      Mutable = CGPathCreateMutable();
      a4[3] = &_s4StepVN;
      a4[4] = &off_1F1FE4C40;
      result = swift_allocObject();
      *a4 = result;
      *(result + 2) = Mutable;
      *(result + 3) = 0;
      *(result + 4) = 0;
      *(result + 5) = a1;
      *(result + 3) = vdupq_n_s64(0x7FF8000000000000uLL);
    }

    else
    {
      result = CGPathCreateMutable();
      v15 = result;
      if (a1 == 0.0)
      {
        a4[3] = &_s6LinearVN;
        a4[4] = &off_1F1FE4AB0;
        *a4 = 0;
        a4[1] = 0;
        a4[2] = result;
      }

      else
      {
        if (a3)
        {
          a4[3] = &_s9MonotoneXVN;
          a4[4] = &off_1F1FE4B78;
        }

        else
        {
          sub_1AAF21438(0, v12, v13, v14);
          a4[3] = v17;
          a4[4] = &off_1F1FE49F0;
        }

        result = swift_allocObject();
        *a4 = result;
        *(result + 3) = 0;
        *(result + 4) = 0;
        *(result + 2) = v15;
        v18 = vdupq_n_s64(0x7FF8000000000000uLL);
        *(result + 40) = v18;
        *(result + 56) = v18;
        *(result + 9) = 0x7FF8000000000000;
      }
    }
  }

  else
  {
    if (a2)
    {
      v10 = CGPathCreateMutable();
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        a4[3] = &_s10CatmullRomVN;
        a4[4] = &off_1F1FE4790;
        result = swift_allocObject();
        *a4 = result;
        *(result + 2) = v10;
        *(result + 3) = a1;
      }

      else
      {
        a4[3] = &_s8CardinalVN;
        a4[4] = &off_1F1FE46C0;
        result = swift_allocObject();
        *a4 = result;
        *(result + 2) = v10;
        *(result + 3) = 0x3FC5555555555555;
      }
    }

    else
    {
      v7 = CGPathCreateMutable();
      a4[3] = &_s8CardinalVN;
      a4[4] = &off_1F1FE46C0;
      result = swift_allocObject();
      *a4 = result;
      *(result + 2) = v7;
      *(result + 3) = (1.0 - a1) / 6.0;
    }

    *(result + 4) = 0;
    *(result + 5) = 0;
    v16 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(result + 3) = v16;
    *(result + 4) = v16;
    *(result + 5) = v16;
  }

  return result;
}

void *sub_1AAF212E4@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = result[2];
  v9 = (result + 6);
  do
  {
    if (v6 >= v8)
    {
      if (v7)
      {
LABEL_2:
        result = (*(a3 + 16))(a2, a3);
        if (v8 == v6)
        {
          goto LABEL_14;
        }
      }

      else if (v8 == v6)
      {
LABEL_14:
        (*(a3 + 48))(a2, a3);
        result = sub_1AAF8E954();
        *a4 = v12;
        *(a4 + 16) = v13;
        *(a4 + 32) = v14;
        return result;
      }

      v7 = 0;
      goto LABEL_4;
    }

    if ((v7 & 1) == *v9)
    {
      if (!*v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (!*v9)
      {
        goto LABEL_2;
      }

      (*(a3 + 8))(a2, a3);
      v7 = 1;
    }

    result = (*(a3 + 40))(a2, a3, *(v9 - 2), *(v9 - 1));
LABEL_4:
    v9 += 3;
  }

  while (!__OFADD__(v6++, 1));
  __break(1u);
  return result;
}

void sub_1AAF21438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB4270A0[0])
  {
    v4 = type metadata accessor for CurveFamilies.FlippedCurveFamily(0, &_s9MonotoneXVN, &off_1F1FE4B78, a4);
    if (!v5)
    {
      atomic_store(v4, qword_1EB4270A0);
    }
  }
}

void *sub_1AAF214A8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result[2];
  v9 = result + 4;
  v10 = (a3 + 40);
  while (1)
  {
    if (v7 >= v8)
    {
      if (v6)
      {
        goto LABEL_10;
      }

      if (v7 == v8)
      {
LABEL_24:
        (*(a3 + 48))(a2, a3);
        result = sub_1AAF8E954();
        *a4 = v21;
        *(a4 + 16) = v22;
        *(a4 + 32) = v23;
        return result;
      }

LABEL_3:
      v6 = 0;
      goto LABEL_4;
    }

    v12 = &v9[5 * v7];
    if ((v6 & 1) != *(v12 + 32))
    {
      break;
    }

    if (*(v12 + 32))
    {
      goto LABEL_20;
    }

LABEL_4:
    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_27;
    }
  }

  if (*(v12 + 32))
  {
    (*(a3 + 24))(a2, a3);
    (*(a3 + 8))(a2, a3);
    v20 = 0;
    v6 = 1;
LABEL_20:
    result = (*(a3 + 40))(a2, a3, *(v12 + 2), *(v12 + 3));
    v11 = __OFADD__(v20++, 1);
    if (v11)
    {
      goto LABEL_31;
    }

    goto LABEL_4;
  }

LABEL_10:
  v13 = *(a3 + 16);
  v13(a2, a3);
  result = (*(a3 + 8))(a2, a3);
  if (v20 < 1)
  {
    goto LABEL_28;
  }

  if (v7 < 1)
  {
    goto LABEL_29;
  }

  if (v7 > v8)
  {
    goto LABEL_30;
  }

  v19 = v13;
  v14 = *v10;
  result = (*v10)(a2, a3, *&v9[5 * v7 - 5], *&v9[5 * v7 - 4]);
  v15 = v20 - 1;
  if (v20 == 1)
  {
LABEL_2:
    v19(a2, a3);
    result = (*(a3 + 32))(a2, a3);
    if (v7 == v8)
    {
      goto LABEL_24;
    }

    goto LABEL_3;
  }

  v16 = 2;
  while (1)
  {
    v17 = v7 - v16;
    if (__OFSUB__(v7, v16))
    {
      break;
    }

    if (v17 >= v8)
    {
      goto LABEL_26;
    }

    result = v14(a2, a3, *&v9[5 * v17], *&v9[5 * v17 + 1]);
    ++v16;
    if (!--v15)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AAF21740(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAF21794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CurvePointLine(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CurvePointLine(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

CGMutablePathRef sub_1AAF21918(uint64_t a1)
{
  v1 = (*(*(a1 + 24) + 48))(*(a1 + 16));
  Mutable = CGPathCreateMutable();
  sub_1AAF8FD34();

  return Mutable;
}

void sub_1AAF219BC()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    if (v1 != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*v0 == 1)
  {
LABEL_3:
    CGPathCloseSubpath(*(v0 + 16));
  }

LABEL_4:
  if (__OFSUB__(0, v1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = -v1;
  }
}

uint64_t sub_1AAF21A24(double a1, double a2)
{
  if (*v2)
  {
    *v2 = 2;
  }

  else
  {
    *v2 = 1;
    if (v2[1] != 1)
    {
      return sub_1AAF8FD54();
    }
  }

  return sub_1AAF8FD64();
}

double sub_1AAF21AC0(double a1, double a2)
{
  v3 = v2[5];
  v4 = v2[6];
  v5 = v3 - v2[3];
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3 - v2[3];
  }

  v7 = a1 - v3;
  v8 = (v4 - v2[4]) / v6;
  if (v7 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v7;
  }

  v10 = (a2 - v4) / v9;
  v11 = 1.0;
  if (v8 >= 0.0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = -1.0;
  }

  if (v10 < 0.0)
  {
    v11 = -1.0;
  }

  v13 = (v5 * v10 + v7 * v8) / (v7 + v5);
  v14 = fabs(v8);
  v15 = fabs(v10);
  if (v15 >= v14)
  {
    v15 = v14;
  }

  v16 = fabs(v13) * 0.5;
  if (v16 >= v15)
  {
    v16 = v15;
  }

  return v16 * (v11 + v12);
}

void sub_1AAF21B50()
{
  v1 = v0;
  v2 = *(v0 + 8);
  if (v2 == 3)
  {
    sub_1AAF8FD74();
  }

  else if (v2 == 2)
  {
    sub_1AAF8FD64();
  }

  v3 = *(v0 + 16);
  if (v3 == 1 || !v3 && v2 == 1)
  {
    CGPathCloseSubpath(*v1);
  }

  if (__OFSUB__(0, v3))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = -v3;
  }
}

__n128 sub_1AAF21C5C(double a1, double a2)
{
  v5 = *(v2 + 8);
  switch(v5)
  {
    case 2:
      *(v2 + 8) = 3;
      v6 = sub_1AAF21AC0(a1, a2);
      break;
    case 1:
      *(v2 + 8) = 2;
LABEL_11:
      v6 = NAN;
      goto LABEL_12;
    case 0:
      *(v2 + 8) = 1;
      if (*(v2 + 16) == 1)
      {
        sub_1AAF8FD64();
      }

      else
      {
        sub_1AAF8FD54();
      }

      goto LABEL_11;
    default:
      v6 = sub_1AAF21AC0(a1, a2);
      break;
  }

  sub_1AAF8FD74();
LABEL_12:
  result = *(v2 + 40);
  *(v2 + 24) = result;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  *(v2 + 56) = v6;
  return result;
}

int64x2_t sub_1AAF21E28()
{
  *(v0 + 8) = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(v0 + 24) = result;
  *(v0 + 40) = result;
  *(v0 + 56) = 0x7FF8000000000000;
  return result;
}

void sub_1AAF21E70()
{
  v1 = *(v0 + 24);
  v2 = v1 > 0.0 && v1 < 1.0;
  if (v2 && *(v0 + 8) == 2)
  {
    sub_1AAF8FD64();
  }

  v3 = *(v0 + 16);
  if (v3 == 1)
  {
    CGPathCloseSubpath(*v0);
LABEL_15:
    if (__OFSUB__(0, v3))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 16) = -v3;
      *(v0 + 24) = 1.0 - v1;
    }

    return;
  }

  if (v3)
  {
    goto LABEL_15;
  }

  if (*(v0 + 8) == 1)
  {
    v4 = *v0;

    CGPathCloseSubpath(v4);
  }
}

uint64_t sub_1AAF21F50(double a1, double a2)
{
  if (*(v2 + 8))
  {
    *(v2 + 8) = 2;
    sub_1AAF8FD64();
  }

  else
  {
    *(v2 + 8) = 1;
    if (*(v2 + 16) != 1)
    {
      result = sub_1AAF8FD54();
      goto LABEL_5;
    }
  }

  result = sub_1AAF8FD64();
LABEL_5:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

int64x2_t sub_1AAF22078()
{
  v0->i64[1] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  v0[2] = result;
  return result;
}

uint64_t sub_1AAF22094@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v491 = a3;
  v5 = type metadata accessor for ChartDisplayList.RectangleItem(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v474 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = type metadata accessor for ChartDisplayList.BarItem(0);
  MEMORY[0x1EEE9AC00](v481);
  v483 = &v474 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v482 = &v474 - v10;
  sub_1AAF26348(0, &qword_1ED9B5558, 255, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v474 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v485 = &v474 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v480 = &v474 - v17;
  *&v489 = sub_1AAF8E244();
  *&v488 = *(v489 - 8);
  MEMORY[0x1EEE9AC00](v489);
  v19 = &v474 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v486 = &v474 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v484 = &v474 - v23;
  v479 = type metadata accessor for ChartDisplayList.ClipRect(0);
  MEMORY[0x1EEE9AC00](v479);
  v487 = (&v474 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAF2C8E8((a1 + 42), &v501, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  v25 = *(a1 + 402);
  sub_1AAF2C8E8(&v501, &v492, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  v26 = BYTE1(v496);
  if (v26 > 0xFE)
  {
    if (qword_1ED9B6620 != -1)
    {
      swift_once();
    }

    v27 = qword_1ED9C3950;

    v28 = sub_1AAF2C968(&v501, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    *&v516 = v27;
    goto LABEL_17;
  }

  if (!v26)
  {
    v28 = sub_1AAF2C968(&v501, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    *&v516 = v492;
LABEL_17:
    BYTE8(v517[1]) = 0;
    goto LABEL_18;
  }

  if (v26 != 1)
  {
    v565[2] = v494;
    v565[3] = v495;
    v566 = v496;
    v565[0] = v492;
    v565[1] = v493;
    v29 = *(a2 + 400);
    if (v29 == 255)
    {
      memset(v563, 0, 40);
      BYTE8(v563[2]) = -1;
    }

    else
    {
      sub_1AAEC9C10(v565, *(a2 + 384), v29, v563);
      if (BYTE8(v563[2]) != 255)
      {
        sub_1AAF2C968(&v501, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
        v28 = sub_1AAE63F58(v565);
        v516 = v563[0];
        v517[0] = v563[1];
        *(v517 + 9) = *(&v563[1] + 9);
        goto LABEL_18;
      }
    }

    sub_1AAF2C968(v563, &qword_1EB426B58, &type metadata for ChartDisplayList.Style);
    v30 = sub_1AAF8ECE4();
    sub_1AAE63F58(v565);
    v28 = sub_1AAF2C968(&v501, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    *&v516 = v30;
    goto LABEL_17;
  }

  sub_1AACBB198(&v492, v563);
  if (v25)
  {
    sub_1AACBB42C(v563, *(&v563[1] + 1));
    *(&v517[0] + 1) = sub_1AAF8E354();
    *&v517[1] = swift_getWitnessTable();
    sub_1AACB2508(&v516);
    sub_1AAF8D864();
    sub_1AAF2C968(&v501, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  }

  else
  {
    sub_1AAF2C968(&v501, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    sub_1AACAEF68(v563, &v516);
  }

  BYTE8(v517[1]) = 1;
  sub_1AACB634C(v563);
LABEL_18:
  v31 = *(a1 + 8);
  if (v31 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v31 == 1)
      {
        *&v498 = *(a2 + 272);
        v32 = *(a2 + 256);
        v496 = *(a2 + 240);
        v497 = v32;
        v33 = *(a2 + 192);
        v492 = *(a2 + 176);
        v493 = v33;
        v34 = *(a2 + 224);
        v494 = *(a2 + 208);
        v495 = v34;
        MEMORY[0x1EEE9AC00](v28);
        v35 = v490;
        *(&v474 - 2) = v490;
        *(&v474 - 1) = a1;
        *&v489 = sub_1AAF521C4(sub_1AAF2CAF8);
        *&v488 = v36;
        v38 = v37;
        *&v563[6] = *(a2 + 376);
        v39 = *(a2 + 360);
        v563[4] = *(a2 + 344);
        v563[5] = v39;
        v40 = *(a2 + 296);
        v563[0] = *(a2 + 280);
        v563[1] = v40;
        v41 = *(a2 + 328);
        v563[2] = *(a2 + 312);
        v563[3] = v41;
        MEMORY[0x1EEE9AC00](v489);
        *(&v474 - 2) = v35;
        *(&v474 - 1) = a1;
        v42 = sub_1AAF521C4(sub_1AAF2CB18);
        v44 = v43;
        v46 = v45;
        v47 = *(a1 + 632);
        if ((~v47 & 0x7C) == 0)
        {
          goto LABEL_22;
        }

        v49 = a1[72];
        v194 = a1[73];
        v52 = a1[74];
        v195 = a1[75];
        v196 = a1[76];
        v197 = a1[77];
        v198 = a1[78];
        if ((v47 & 0x40) == 0)
        {
          v50 = HIDWORD(v49);
          v48 = a1[71];
          v51 = a1[73];
          *&v501 = v48;
          *(&v501 + 1) = v49;
          v53 = v195;
          *&v502 = v194;
          *(&v502 + 1) = v52;
          *&v503 = v195;
          *(&v503 + 1) = v196;
          *&v504 = v197;
          *(&v504 + 1) = v198;
          LOBYTE(v505) = v47;
          sub_1AAEDA1FC(&v501, v561);
          if ((v38 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        *&v561[0] = a1[71];
        *(&v561[0] + 1) = v49;
        *&v561[1] = v194;
        *(&v561[1] + 1) = v52;
        *&v561[2] = v195;
        *(&v561[2] + 1) = v196;
        *&v561[3] = v197;
        *(&v561[3] + 1) = v198;
        LOBYTE(v561[4]) = v47 & 0xBF;
        v199 = *(a2 + 472);
        if (v199 != 1 && (sub_1AAECA354(v561, *(a2 + 448), *(a2 + 456), *(a2 + 464) & 1, v199, v546), (v52 = *(&v546[1] + 1)) != 0))
        {
          v53 = *&v546[2];
          v51 = *&v546[1];
          LODWORD(v50) = HIDWORD(v546[0]);
          LODWORD(v49) = DWORD2(v546[0]);
          v48 = *&v546[0];
          if ((v38 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
LABEL_22:
          if (qword_1ED9B2798 != -1)
          {
            swift_once();
          }

          v48 = xmmword_1ED9C34C0;
          LODWORD(v49) = DWORD2(xmmword_1ED9C34C0);
          LODWORD(v50) = HIDWORD(xmmword_1ED9C34C0);
          v51 = qword_1ED9C34D0;
          v52 = qword_1ED9C34D8;
          v53 = qword_1ED9C34E0;

          if ((v38 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_25:
        *&v489 = 0;
        *&v488 = *(a2 + 48);
LABEL_26:
        if (v46)
        {
          v42 = 0;
          v44 = *(a2 + 56);
        }

        v54 = *a1;
        sub_1AAEEBB28(&v516, &v505);
        v55 = a1[80];
        v56 = a1[51];
        v57 = *(a1 + 208);
        *&v501 = v54;
        DWORD2(v501) = 0;
        v502 = 0uLL;
        *&v503 = v489;
        *(&v503 + 1) = v42;
        *&v504 = v488;
        *(&v504 + 1) = v44;
        *&v508[0] = v48;
        *(&v508[0] + 1) = __PAIR64__(v50, v49);
        *&v508[1] = v51;
        *(&v508[1] + 1) = v52;
        v509 = v53;
        v510 = v55;
        v511 = v56;
        v512 = v57;
        sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1AAF92AB0;
        v59 = swift_allocObject();
        sub_1AAEE2ED8(&v501, v59 + 16);
        *(v58 + 32) = v59 | 0x2000000000000000;

        sub_1AAEE2F10(&v501);
        goto LABEL_96;
      }

      v138 = *(a2 + 256);
      v541 = *(a2 + 240);
      v542 = v138;
      v543 = *(a2 + 272);
      v139 = *(a2 + 192);
      v537 = *(a2 + 176);
      v538 = v139;
      v140 = *(a2 + 224);
      v539 = *(a2 + 208);
      v540 = v140;
      if (v537)
      {
        *&v560[40] = *(a2 + 216);
        *&v560[56] = *(a2 + 232);
        *&v560[72] = *(a2 + 248);
        *&v560[8] = *(a2 + 184);
        *&v560[24] = *(a2 + 200);
        *&v560[88] = *(a2 + 264);
        *v560 = v537;
        v141 = *(a2 + 296);
        v530 = *(a2 + 280);
        v531 = v141;
        v142 = *(a2 + 312);
        v143 = *(a2 + 328);
        v144 = *(a2 + 344);
        v145 = *(a2 + 360);
        v536 = *(a2 + 376);
        v534 = v144;
        v535 = v145;
        v532 = v142;
        v533 = v143;
        if (v530)
        {
          v146 = (a1 + 63);
          v147 = *(a2 + 336);
          *&v559[40] = *(a2 + 320);
          *&v559[56] = v147;
          v148 = *(a2 + 368);
          *&v559[72] = *(a2 + 352);
          *&v559[88] = v148;
          v149 = *(a2 + 304);
          *&v559[8] = *(a2 + 288);
          *&v559[24] = v149;
          *v559 = v530;
          v150 = *(a1 + 1);
          v151 = *(a1 + 2);
          v152 = *(a1 + 4);
          v563[2] = *(a1 + 3);
          v563[3] = v152;
          v563[0] = v150;
          v563[1] = v151;
          v153 = *(a1 + 5);
          v154 = *(a1 + 6);
          *(v564 + 9) = *(a1 + 137);
          v155 = *(a1 + 8);
          v563[6] = *(a1 + 7);
          v564[0] = v155;
          v563[4] = v153;
          v563[5] = v154;
          sub_1AAF2CB38(&v537, &v501, sub_1AACFAA34);
          sub_1AAF2CB38(&v530, &v501, sub_1AACFAA34);
          *&v489 = sub_1AAF27C94(v563, v560);
          v157 = v156;
          v158 = *(a1 + 17);
          v561[6] = *(a1 + 16);
          v562[0] = v158;
          *(v562 + 9) = *(a1 + 281);
          v159 = *(a1 + 13);
          v561[2] = *(a1 + 12);
          v561[3] = v159;
          v160 = *(a1 + 15);
          v561[4] = *(a1 + 14);
          v561[5] = v160;
          v161 = *(a1 + 11);
          v561[0] = *(a1 + 10);
          v561[1] = v161;
          *&v162 = COERCE_DOUBLE(sub_1AAF27C94(v561, v559));
          if (v157 & 1) != 0 || (v163)
          {
            sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v501);
            v83 = v501;
            v58 = *(&v501 + 1);
            v136 = v502;
            v137 = v503;
            goto LABEL_51;
          }

          v230 = *(a1 + 632);
          v483 = v162;
          if ((~v230 & 0x7C) == 0)
          {
            goto LABEL_82;
          }

          v277 = *(a1 + 71);
          v278 = a1[72];
          v279 = a1[73];
          v280 = a1[74];
          v281 = a1[75];
          v282 = a1[76];
          v283 = a1[77];
          v284 = a1[78];
          if ((v230 & 0x40) == 0)
          {
            v231 = v490;
            v479 = HIDWORD(v278);
            v480 = v278;
            v232 = v277;
            v233 = v279;
            *&v501 = v277;
            *(&v501 + 1) = v278;
            v234 = v281;
            *&v502 = v279;
            *(&v502 + 1) = v280;
            v482 = v280;
            *&v503 = v281;
            *(&v503 + 1) = v282;
            *&v504 = v283;
            *(&v504 + 1) = v284;
            LOBYTE(v505) = v230;
            sub_1AAEDA1FC(&v501, &v492);
            goto LABEL_140;
          }

          v550 = a1[71];
          v551 = v278;
          v552 = v279;
          v553 = v280;
          v554 = v281;
          v555 = v282;
          v556 = v283;
          v557 = v284;
          v558 = v230 & 0xBF;
          v338 = *(a2 + 472);
          if (v338 != 1 && (sub_1AAECA354(&v550, *(a2 + 448), *(a2 + 456), *(a2 + 464) & 1, v338, &v518), v522))
          {
            v482 = v522;
            v231 = v490;
            v234 = v523;
            v233 = v521;
            v479 = v520;
            v480 = v519;
            v232 = v518;
          }

          else
          {
LABEL_82:
            v231 = v490;
            if (qword_1ED9B2798 != -1)
            {
              swift_once();
            }

            v232 = *&xmmword_1ED9C34C0;
            v480 = DWORD2(xmmword_1ED9C34C0);
            v479 = HIDWORD(xmmword_1ED9C34C0);
            v233 = qword_1ED9C34D0;
            v234 = qword_1ED9C34E0;
            v482 = qword_1ED9C34D8;
          }

LABEL_140:
          v478 = (a1 + 20);
          sub_1AAF04354(v529);
          sub_1AAF2C8E8((a1 + 53), &v501, qword_1ED9B2508, &type metadata for ResolvedSymbol);
          if (BYTE1(v505) == 255)
          {
            v339 = qword_1ED9B2508;
            v340 = &type metadata for ResolvedSymbol;
            v341 = &v501;
LABEL_142:
            sub_1AAF2C968(v341, v339, v340);
LABEL_143:
            v342 = 0;
            v487 = 0;
            *&v488 = 0;
            v343 = 0;
            v344 = 0;
            v345 = 0;
            v346 = -1;
LABEL_214:
            v485 = v345;
            v486 = v344;
            v419 = v343;
            swift_beginAccess();
            v420 = *(v231 + 16);
            v421 = *(v420 + 16);
            v484 = v342;
            v481 = v419;
            if (v421)
            {
              v422 = v342;
              v423 = v487;
              v424 = v419;
              v426 = v485;
              v425 = v486;
              sub_1AAEE2BCC(v422, v487, v419, v488, v486, v485, v346);
              v427 = sub_1AADB0E38(v529);
              if (v428)
              {
                v429 = *(*(v420 + 56) + 8 * v427);
                swift_endAccess();

                sub_1AAF2CA40(v529);

                swift_beginAccess();
                v430 = *(v429 + 16);
                v431 = v423;
                v432 = v346;
                sub_1AAEE2BCC(v484, v431, v424, v488, v425, v426, v346);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v429 + 16) = v430;
                v434 = v425;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v430 = sub_1AAD6B5E0(0, *(v430 + 2) + 1, 1, v430);
                  *(v429 + 16) = v430;
                }

                v435 = v483;
                v437 = *(v430 + 2);
                v436 = *(v430 + 3);
                if (v437 >= v436 >> 1)
                {
                  v430 = sub_1AAD6B5E0((v436 > 1), v437 + 1, 1, v430);
                }

                *(v430 + 2) = v437 + 1;
                v438 = &v430[72 * v437];
                *(v438 + 4) = v489;
                *(v438 + 5) = v435;
                v439 = v484;
                v440 = v487;
                *(v438 + 6) = v484;
                *(v438 + 7) = v440;
                *(v438 + 8) = v424;
                v441 = v488;
                *(v438 + 9) = v488;
                *(v438 + 10) = v434;
                *(v438 + 11) = v426;
                v438[96] = v432;
                *(v429 + 16) = v430;
                swift_endAccess();

                sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v501);
                v442 = v434;
                v443 = v426;
                v83 = v501;
                v58 = *(&v501 + 1);
                v489 = v502;
                v490 = v503;
                sub_1AAF2C63C(&v537, sub_1AACFAA34);
                sub_1AAF2C63C(&v530, sub_1AACFAA34);
                v444 = v481;
                sub_1AAF2CA94(v439, v440, v481, v441, v442, v443, v432);
                sub_1AAF2CA94(v439, v440, v444, v441, v442, v443, v432);
                goto LABEL_59;
              }

              v445 = v484;
              sub_1AAF2CA94(v484, v423, v419, v488, v425, v426, v346);
              v231 = v490;
              v342 = v445;
            }

            swift_endAccess();
            v475 = *a1;
            v477 = MEMORY[0x1E69E6F90];
            sub_1AAF2CBA0(0, &qword_1EB4230A8, &type metadata for ChartDisplayList.LineItem.Point, MEMORY[0x1E69E6F90]);
            v446 = swift_allocObject();
            v476 = xmmword_1AAF92AB0;
            *(v446 + 16) = xmmword_1AAF92AB0;
            v447 = v483;
            *(v446 + 32) = v489;
            *(v446 + 40) = v447;
            v448 = v231;
            v449 = v342;
            v451 = v487;
            v450 = v488;
            *(v446 + 48) = v342;
            *(v446 + 56) = v451;
            *(v446 + 64) = v419;
            *(v446 + 72) = v450;
            v452 = v485;
            v453 = v486;
            *(v446 + 80) = v486;
            *(v446 + 88) = v452;
            *(v446 + 96) = v346;
            type metadata accessor for ChartDisplayList.LineItem.Points();
            *&v489 = swift_allocObject();
            *(v489 + 16) = v446;
            v454 = *(a1 + 7);
            v455 = *(a1 + 8);
            v456 = *(a1 + 5);
            v544[5] = *(a1 + 6);
            v544[6] = v454;
            v545[0] = v455;
            *(v545 + 9) = *(a1 + 137);
            v457 = *(a1 + 4);
            v544[2] = *(a1 + 3);
            v544[3] = v457;
            v544[4] = v456;
            v458 = *(a1 + 2);
            v544[0] = *(a1 + 1);
            v544[1] = v458;
            v459 = v478[6];
            v460 = v478[7];
            v461 = v478[4];
            v546[5] = v478[5];
            v546[6] = v459;
            v547[0] = v460;
            *(v547 + 9) = *(v478 + 121);
            v462 = v478[3];
            v546[2] = v478[2];
            v546[3] = v462;
            v546[4] = v461;
            v463 = v478[1];
            v546[0] = *v478;
            v546[1] = v463;
            v464 = v487;
            sub_1AAEE2BCC(v449, v487, v419, v488, v453, v452, v346);
            v465 = v475;

            LOBYTE(v446) = sub_1AAE63A88(v544, v546);
            sub_1AAEEBB28(&v516, &v504);
            v466 = a1[80];
            v467 = a1 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 76);
            v468 = *v467;
            LOBYTE(v467) = v467[8];
            LOBYTE(v453) = v346;
            v469 = a1[51];
            v470 = *(a1 + 208);
            *&v501 = v465;
            DWORD2(v501) = 0;
            v502 = 0uLL;
            v471 = v489;
            *&v503 = v489;
            BYTE8(v503) = v446 & 1;
            *&v507 = v232;
            *(&v507 + 1) = __PAIR64__(v479, v480);
            *&v508[0] = v233;
            *(&v508[0] + 1) = v482;
            *&v508[1] = v234;
            *(&v508[1] + 1) = v466;
            v509 = v468;
            LOBYTE(v510) = v467;
            v511 = v469;
            v512 = v470;
            swift_beginAccess();

            v472 = swift_isUniquelyReferenced_nonNull_native();
            v500 = *(v448 + 16);
            *(v448 + 16) = 0x8000000000000000;
            sub_1AADD4134(v471, v529, v472);
            sub_1AAF2CA40(v529);
            *(v448 + 16) = v500;
            swift_endAccess();
            sub_1AAEE2B64(&v501, &v492);
            v83 = DWORD2(v492);
            sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, v477);
            v58 = swift_allocObject();
            *(v58 + 16) = v476;
            v473 = swift_allocObject();
            sub_1AAEE2B64(&v492, v473 + 16);
            *(v58 + 32) = v473 | 0x3000000000000000;
            sub_1AAF2C63C(&v537, sub_1AACFAA34);
            sub_1AAF2C63C(&v530, sub_1AACFAA34);
            sub_1AAF2CA94(v484, v464, v481, v488, v486, v485, v453);
            sub_1AAEE2B9C(&v492);
            sub_1AAEE2B9C(&v501);
LABEL_223:
            result = sub_1AAEEBC30(&v516);
            goto LABEL_97;
          }

          v513[2] = v503;
          v514 = v504;
          v515 = v505;
          v513[0] = v501;
          v513[1] = v502;
          v347 = *&v489 + 40.0;
          v348 = *&v483 + 40.0;
          sub_1AAEDA2B4(v513, &v501);
          if (!BYTE1(v505))
          {
            v492 = v501;
            v493 = v502;
            *&v494 = v503;
            sub_1AAE3CDD0(v544, v232);
            if (*(&v544[1] + 1))
            {
              v546[0] = v544[0];
              v546[1] = v544[1];
              *&v546[2] = *&v544[2];
            }

            else
            {
              sub_1AAD9B194(&v492, v546);
            }

            v392 = *(a1 + 560);
            if (a1[65] >> 1 == 0xFFFFFFFFLL && (v392 & 0x7C) == 0 || ((v392 >> 5) & 3) != 1)
            {
              v393 = *(&v546[1] + 1);
              v394 = *&v546[2];
              sub_1AACBB42C(v546, *(&v546[1] + 1));
              (*(v394 + 16))(v393, v394);
            }

            sub_1AACBB42C(v546, *(&v546[1] + 1));
            sub_1AAF8EDA4();
            v342 = v548[0];
            v343 = v548[2];
            v487 = v548[1];
            *&v488 = v548[3];
            v344 = LOBYTE(v548[4]);
            sub_1AAE45A14(&v492);
            sub_1AAEDA1A8(v513);
            v395 = v546;
            goto LABEL_213;
          }

          if (BYTE1(v505) == 1)
          {
            v487 = v501;
            v342 = *a1;

            sub_1AAEDA1A8(v513);
            v343 = *&v347;
            *&v488 = v348;
            v346 = 1;
            v344 = 0x4028000000000000;
            v345 = 0x4028000000000000;
            goto LABEL_214;
          }

          sub_1AAEDA1A8(&v501);
          if (!*(a2 + 408))
          {
            sub_1AAEDA1A8(v513);
            goto LABEL_143;
          }

          v349 = *(a2 + 416);
          sub_1AAEDA2B4(v513, &v492);
          if (BYTE1(v496))
          {
            if (BYTE1(v496) == 1)
            {
              sub_1AAEDA1A8(&v492);
              if (qword_1ED9B59F0 != -1)
              {
                swift_once();
              }

              memset(v548, 0, 40);
            }

            else
            {
              LOBYTE(v546[4]) = v496;
              v546[2] = v494;
              v546[3] = v495;
              v546[0] = v492;
              v546[1] = v493;
              if (*(v349 + 16) && (v396 = sub_1AADB0548(*(&v546[2] + 1)), (v397 & 1) != 0))
              {
                sub_1AAD9B194(*(v349 + 56) + 40 * v396, v548);
                sub_1AAE63F58(v546);
              }

              else
              {
                sub_1AAE63F58(v546);
                memset(v548, 0, 40);
              }
            }
          }

          else
          {
            *v548 = v492;
            *&v548[2] = v493;
            v548[4] = v494;
          }

          if (!v548[3])
          {
            sub_1AAEDA1A8(v513);
            v339 = &qword_1ED9AE4C0;
            v340 = &type metadata for AnyChartSymbolShape;
            v341 = v548;
            goto LABEL_142;
          }

          v544[0] = *v548;
          v544[1] = *&v548[2];
          *&v544[2] = v548[4];
          sub_1AAE3CDD0(v546, v232);
          if (*(&v546[1] + 1))
          {
            v492 = v546[0];
            v493 = v546[1];
            *&v494 = *&v546[2];
          }

          else
          {
            sub_1AAD9B194(v544, &v492);
          }

          v398 = a1[62];
          v399 = *(a1 + 65);
          v400 = *(a1 + 67);
          v401 = a1[69];
          v402 = *(a1 + 560);
          v403 = *(a2 + 424);
          v404 = *(a2 + 432);
          v405 = *(a2 + 440);
          if (a1[65] >> 1 == 0xFFFFFFFFLL && (v402 & 0x7C) == 0)
          {
            goto LABEL_203;
          }

          v410 = (v402 >> 5) & 3;
          if (v410)
          {
            if (v410 == 1)
            {
              v488 = *v146;
              goto LABEL_212;
            }

            *&v548[1] = *v146;
            *&v548[3] = v399;
            *&v548[5] = v400;
            v548[0] = v398;
            v548[7] = v401;
            v549 = v402 & 0x9F;
            if (v405 == 255 || (sub_1AAECB7F4(v548, v403, v404, v405 & 1), (v413 & 1) != 0))
            {
LABEL_203:
              v407 = *(&v493 + 1);
              v406 = v494;
              sub_1AACBB42C(&v492, *(&v493 + 1));
              (*(v406 + 16))(v407, v406);
              *&v409 = v408 * 7.0898154;
              v488 = v409;
LABEL_212:
              sub_1AACBB42C(&v492, *(&v493 + 1));
              sub_1AAF8EDA4();
              v342 = v524;
              v343 = v526;
              v487 = v525;
              *&v488 = v527;
              v344 = v528;
              sub_1AAE45A14(v544);
              sub_1AAEDA1A8(v513);
              v395 = &v492;
LABEL_213:
              sub_1AAE45A14(v395);
              v345 = 0;
              v346 = 0;
              goto LABEL_214;
            }

            v411 = v412;
          }

          else
          {
            v411 = *(a1 + 62);
          }

          v415 = *(&v493 + 1);
          v414 = v494;
          v416 = sqrt(v411);
          sub_1AACBB42C(&v492, *(&v493 + 1));
          (*(v414 + 16))(v415, v414);
          *&v418 = v416 * v417;
          v488 = v418;
          goto LABEL_212;
        }
      }

LABEL_58:
      sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v501);
      v83 = v501;
      v58 = *(&v501 + 1);
      v490 = v503;
      v489 = v502;
      goto LABEL_59;
    }

    v85 = *(a2 + 256);
    v544[4] = *(a2 + 240);
    v544[5] = v85;
    *&v544[6] = *(a2 + 272);
    v86 = *(a2 + 192);
    v544[0] = *(a2 + 176);
    v544[1] = v86;
    v87 = *(a2 + 224);
    v544[2] = *(a2 + 208);
    v544[3] = v87;
    if (!*&v544[0])
    {
      goto LABEL_58;
    }

    *(&v561[2] + 8) = *(a2 + 216);
    *(&v561[3] + 8) = *(a2 + 232);
    *(&v561[4] + 8) = *(a2 + 248);
    *(v561 + 8) = *(a2 + 184);
    *(&v561[1] + 8) = *(a2 + 200);
    *(&v561[5] + 8) = *(a2 + 264);
    *&v561[0] = *&v544[0];
    v88 = *(a2 + 296);
    *v560 = *(a2 + 280);
    *&v560[16] = v88;
    v89 = *(a2 + 312);
    v90 = *(a2 + 328);
    v91 = *(a2 + 344);
    v92 = *(a2 + 360);
    *&v560[96] = *(a2 + 376);
    *&v560[64] = v91;
    *&v560[80] = v92;
    *&v560[32] = v89;
    *&v560[48] = v90;
    if (!*v560)
    {
      goto LABEL_58;
    }

    v93 = *(a2 + 336);
    *(&v546[2] + 8) = *(a2 + 320);
    *(&v546[3] + 8) = v93;
    v94 = *(a2 + 368);
    *(&v546[4] + 8) = *(a2 + 352);
    *(&v546[5] + 8) = v94;
    v95 = *(a2 + 304);
    *(v546 + 8) = *(a2 + 288);
    *(&v546[1] + 8) = v95;
    *&v546[0] = *v560;
    v96 = *(a1 + 1);
    v97 = *(a1 + 2);
    v98 = *(a1 + 4);
    v494 = *(a1 + 3);
    v495 = v98;
    v492 = v96;
    v493 = v97;
    v99 = *(a1 + 5);
    v100 = *(a1 + 6);
    *(v499 + 9) = *(a1 + 137);
    v101 = *(a1 + 7);
    v499[0] = *(a1 + 8);
    v497 = v100;
    v498 = v101;
    v496 = v99;
    sub_1AAF2CB38(v544, &v501, sub_1AACFAA34);
    sub_1AAF2CB38(v560, &v501, sub_1AACFAA34);
    v102 = COERCE_DOUBLE(sub_1AAF27C94(&v492, v561));
    v104 = v103;
    v105 = *(a1 + 16);
    v106 = *(a1 + 17);
    v107 = *(a1 + 14);
    v563[5] = *(a1 + 15);
    v563[6] = v105;
    v564[0] = v106;
    *(v564 + 9) = *(a1 + 281);
    v108 = *(a1 + 13);
    v563[2] = *(a1 + 12);
    v563[3] = v108;
    v563[4] = v107;
    v109 = *(a1 + 11);
    v563[0] = *(a1 + 10);
    v563[1] = v109;
    v110 = sub_1AAF27C94(v563, v546);
    if (v104 & 1) != 0 || (v111)
    {
      sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v501);
      v83 = v501;
      v58 = *(&v501 + 1);
      v489 = v502;
      v490 = v503;
      sub_1AAF2C63C(v544, sub_1AACFAA34);
      v84 = v560;
      goto LABEL_52;
    }

    v200 = v110;
    sub_1AAF2C8E8((a1 + 53), &v501, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (BYTE1(v505) < 0xFFu)
    {
      if ((v505 & 0xFF00) == 0x100)
      {
        v269 = v501;
        v270 = *a1;
        sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1AAF92AB0;
        v271 = swift_allocObject();
        *(v271 + 16) = v270;
        *(v271 + 24) = 0;
        *(v271 + 32) = 0;
        *(v271 + 40) = 0;
        *(v271 + 48) = 0;
        *(v271 + 56) = 0;
        *(v271 + 64) = v102;
        *(v271 + 72) = *&v200;
        __asm { FMOV            V0.2D, #12.0 }

        *(v271 + 80) = _Q0;
        *(v271 + 96) = v269;
        *(v271 + 104) = 0x3FF0000000000000;
        *(v58 + 32) = v271 | 0x9000000000000000;

        sub_1AAF2C63C(v544, sub_1AACFAA34);
        sub_1AAF2C63C(v560, sub_1AACFAA34);

LABEL_96:
        result = sub_1AAEEBC30(&v516);
        v83 = 0;
LABEL_97:
        v192 = 0uLL;
        v193 = 0uLL;
        goto LABEL_98;
      }

      sub_1AAEDA1A8(&v501);
    }

    else
    {
      sub_1AAF2C968(&v501, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    }

    sub_1AAF2C8E8((a1 + 53), v559, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (v559[65] == 255)
    {
      v334 = qword_1ED9B2508;
      v335 = &type metadata for ResolvedSymbol;
      v336 = v559;
LABEL_131:
      sub_1AAF2C968(v336, v334, v335);
LABEL_158:
      if (qword_1ED9B0450 != -1)
      {
        swift_once();
      }

      sub_1AAD9B194(&unk_1ED9C33F0, &v537);
      v350 = *&v200;
      v351 = (a1 + 63);
LABEL_161:
      v352 = v350;
      v353 = *(a1 + 62);
      v355 = *v351;
      v354 = v351[1];
      v356 = v351[2];
      v357 = a1[69];
      v358 = *(a1 + 560);
      v359 = *(a2 + 424);
      v360 = *(a2 + 432);
      v361 = *(a2 + 440);
      v211 = v491;
      if (v354 >> 1 == 0xFFFFFFFF && (v358 & 0x7C) == 0)
      {
LABEL_163:
        v362 = *(&v538 + 1);
        v363 = v539;
        sub_1AACBB42C(&v537, *(&v538 + 1));
        v364 = (*(v363 + 16))(v362, v363);
        v366 = v365 * 7.0898154;
        *&v368 = v367 * 7.0898154;
        v490 = v368;
        v369 = (v364 + -0.5) * 7.0898154 + v102;
        v371 = (v370 + -0.5) * 7.0898154;
LABEL_172:
        v373 = v371 + v352;
        goto LABEL_173;
      }

      v372 = (v358 >> 5) & 3;
      if (v372)
      {
        if (v372 == 1)
        {
          v366 = *(a1 + 62);
          v369 = v102 - v353 * 0.5;
          v373 = v352 - 0.5 * *&v355;
          v490 = v355;
LABEL_173:
          v385 = *a1;
          sub_1AAD9B194(&v537, &v505);
          sub_1AAEEBB28(&v516, &v507 + 8);
          v386 = a1[80];
          v387 = a1[51];
          v388 = *(a1 + 208);
          *&v501 = v385;
          DWORD2(v501) = 0;
          v502 = 0uLL;
          *&v503 = v369;
          *(&v503 + 1) = v373;
          *&v504 = v366;
          *(&v504 + 1) = v490;
          v510 = v386;
          v511 = v387;
          v512 = v388;
          sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_1AAF92AB0;
          v389 = swift_allocObject();
          sub_1AAEE2F40(&v501, v389 + 16);
          *(v58 + 32) = v389 | 0x1000000000000000;

          sub_1AAF2C63C(v544, sub_1AACFAA34);
          sub_1AAF2C63C(v560, sub_1AACFAA34);
          sub_1AAEE2F78(&v501);
          sub_1AAE45A14(&v537);
          result = sub_1AAEEBC30(&v516);
          v83 = 0;
LABEL_174:
          v192 = 0uLL;
          v193 = 0uLL;
          goto LABEL_99;
        }

        *&v559[8] = v355;
        *&v559[24] = v354;
        *&v559[40] = v356;
        *v559 = v353;
        *&v559[56] = v357;
        v559[64] = v358 & 0x9F;
        if (v361 == 255)
        {
          goto LABEL_163;
        }

        sub_1AAECB7F4(v559, v359, v360, v361 & 1);
        if (v376)
        {
          goto LABEL_163;
        }

        v374 = v375;
      }

      else
      {
        v374 = *(a1 + 62);
      }

      v377 = *(&v538 + 1);
      v378 = v539;
      v379 = sqrt(v374);
      sub_1AACBB42C(&v537, *(&v538 + 1));
      v380 = (*(v378 + 16))(v377, v378);
      v366 = v379 * v381;
      *&v383 = v379 * v382;
      v490 = v383;
      v369 = v379 * (v380 + -0.5) + v102;
      v371 = v379 * (v384 + -0.5);
      goto LABEL_172;
    }

    v503 = *&v559[32];
    v504 = *&v559[48];
    LOWORD(v505) = *&v559[64];
    v501 = *v559;
    v502 = *&v559[16];
    v337 = *(a2 + 408);
    if (!v337)
    {
      sub_1AAEDA1A8(&v501);
      goto LABEL_158;
    }

    sub_1AAEDA2B4(&v501, v559);
    if (v559[65])
    {
      if (v559[65] == 1)
      {
        sub_1AAEDA1A8(v559);
        if (qword_1ED9B59F0 != -1)
        {
          swift_once();
        }

        goto LABEL_187;
      }

      LOBYTE(v541) = v559[64];
      v539 = *&v559[32];
      v540 = *&v559[48];
      v537 = *v559;
      v538 = *&v559[16];
      if (!*(v337 + 16) || (v390 = sub_1AADB0548(*(&v539 + 1)), (v391 & 1) == 0))
      {
        sub_1AAE63F58(&v537);
LABEL_187:
        sub_1AAEDA1A8(&v501);
        v530 = 0u;
        v531 = 0u;
        *&v532 = 0;
        goto LABEL_188;
      }

      sub_1AAD9B194(*(v337 + 56) + 40 * v390, &v530);
      sub_1AAE63F58(&v537);
      sub_1AAEDA1A8(&v501);
    }

    else
    {
      sub_1AAEDA1A8(&v501);
      v530 = *v559;
      v531 = *&v559[16];
      *&v532 = *&v559[32];
    }

LABEL_188:
    if (*(&v531 + 1))
    {
      v350 = *&v200;
      v351 = (a1 + 63);
      v537 = v530;
      v538 = v531;
      *&v539 = v532;
      goto LABEL_161;
    }

    v334 = &qword_1ED9AE4C0;
    v335 = &type metadata for AnyChartSymbolShape;
    v336 = &v530;
    goto LABEL_131;
  }

  if (v31 != 3)
  {
    if (v31 != 4)
    {
      v164 = *(a2 + 256);
      v546[4] = *(a2 + 240);
      v546[5] = v164;
      *&v546[6] = *(a2 + 272);
      v165 = *(a2 + 192);
      v546[0] = *(a2 + 176);
      v546[1] = v165;
      v166 = *(a2 + 224);
      v546[2] = *(a2 + 208);
      v546[3] = v166;
      if (*&v546[0])
      {
        *(&v563[2] + 8) = *(a2 + 216);
        *(&v563[3] + 8) = *(a2 + 232);
        *(&v563[4] + 8) = *(a2 + 248);
        *(v563 + 8) = *(a2 + 184);
        *(&v563[1] + 8) = *(a2 + 200);
        *(&v563[5] + 8) = *(a2 + 264);
        *&v563[0] = *&v546[0];
        v167 = *(a2 + 296);
        v544[0] = *(a2 + 280);
        v544[1] = v167;
        v168 = *(a2 + 312);
        v169 = *(a2 + 328);
        v170 = *(a2 + 344);
        v171 = *(a2 + 360);
        *&v544[6] = *(a2 + 376);
        v544[4] = v170;
        v544[5] = v171;
        v544[2] = v168;
        v544[3] = v169;
        if (*&v544[0])
        {
          v487 = a1 + 63;
          v172 = *(a2 + 336);
          *(&v561[2] + 8) = *(a2 + 320);
          *(&v561[3] + 8) = v172;
          v173 = *(a2 + 368);
          *(&v561[4] + 8) = *(a2 + 352);
          *(&v561[5] + 8) = v173;
          v174 = *(a2 + 304);
          *(v561 + 8) = *(a2 + 288);
          *(&v561[1] + 8) = v174;
          *&v561[0] = *&v544[0];
          v175 = *(a1 + 1);
          v176 = *(a1 + 2);
          v177 = *(a1 + 4);
          v503 = *(a1 + 3);
          v504 = v177;
          v501 = v175;
          v502 = v176;
          v178 = *(a1 + 5);
          v179 = *(a1 + 6);
          *(v508 + 9) = *(a1 + 137);
          v180 = *(a1 + 8);
          v507 = *(a1 + 7);
          v508[0] = v180;
          v505 = v178;
          v506 = v179;
          v181 = v490;
          swift_beginAccess();
          sub_1AAF2CB38(v546, &v492, sub_1AACFAA34);
          sub_1AAF2CB38(v544, &v492, sub_1AACFAA34);
          sub_1AAF27F58(&v501, v563, 0, (v181 + 32), v559);
          v182 = *v559;
          v183 = *&v559[8];
          v184 = *(a1 + 16);
          v499[0] = *(a1 + 17);
          *(v499 + 9) = *(a1 + 281);
          v185 = *(a1 + 13);
          v494 = *(a1 + 12);
          v495 = v185;
          v186 = *(a1 + 14);
          v497 = *(a1 + 15);
          v498 = v184;
          v496 = v186;
          v187 = *(a1 + 11);
          v492 = *(a1 + 10);
          v493 = v187;
          sub_1AAF27F58(&v492, v561, 0, (v181 + 32), v560);
          v188 = *v560;
          v189 = *&v560[8];
          swift_endAccess();
          if (v559[48])
          {
            v190 = v487;
            if (v560[48])
            {
              sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v537);
              v83 = v537;
              v58 = *(&v537 + 1);
              v489 = v538;
              v490 = v539;
              sub_1AAF2C63C(v546, sub_1AACFAA34);
              v84 = v544;
              goto LABEL_52;
            }

            v183 = *(a2 + 48);
            v182 = 0;
          }

          else
          {
            v190 = v487;
            if (v560[48])
            {
              v189 = *(a2 + 56);
              v188 = 0;
            }
          }

          v235 = *a1;
          v236 = *(v190 + 192);
          *&v490 = v182;
          v487 = v235;
          if (v236)
          {

            sub_1AAF8E444();
            v238 = v237;
            v240 = v239;
            v242 = v241;
            v244 = v243;
          }

          else
          {
            v244 = a1[86];
            v242 = a1[85];
            v240 = a1[84];
            v238 = a1[83];
          }

          v245 = v489;
          v246 = type metadata accessor for CollectedChartContent.Primitive(0);
          sub_1AAF2C7E0(a1 + *(v246 + 72), v13, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
          v247 = v488;
          v248 = *(v488 + 48);
          if (v248(v13, 1, v245) == 1)
          {
            if (qword_1ED9B1D88 != -1)
            {
              swift_once();
            }

            v249 = sub_1AAD0F5D8(v245, qword_1ED9C3498);
            v247 = v488;
            (*(v488 + 16))(v19, v249, v245);
            if (v248(v13, 1, v245) != 1)
            {
              sub_1AAF2C9D8(v13, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
            }
          }

          else
          {
            (*(v247 + 32))(v19, v13, v245);
          }

          sub_1AAEEBB28(&v516, &v7[v5[13]]);
          v250 = a1[80];
          v251 = a1[51];
          v252 = *(a1 + 208);
          *v7 = v487;
          *(v7 + 2) = 0;
          *(v7 + 2) = 0;
          *(v7 + 3) = 0;
          *(v7 + 4) = v490;
          *(v7 + 5) = v183;
          *(v7 + 6) = v188;
          *(v7 + 7) = v189;
          *(v7 + 8) = v238;
          *(v7 + 9) = v240;
          *(v7 + 10) = v242;
          *(v7 + 11) = v244;
          (*(v247 + 32))(&v7[v5[12]], v19, v245);
          *&v7[v5[14]] = v250;
          v253 = &v7[v5[15]];
          *v253 = v251;
          *(v253 + 4) = v252;
          sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_1AAF92AB0;
          v254 = swift_allocBox();
          sub_1AAF2CB38(v7, v255, type metadata accessor for ChartDisplayList.RectangleItem);
          *(v58 + 32) = v254 | 0x6000000000000000;

          sub_1AAF2C63C(v546, sub_1AACFAA34);
          sub_1AAF2C63C(v544, sub_1AACFAA34);
          sub_1AAF2C63C(v7, type metadata accessor for ChartDisplayList.RectangleItem);
          goto LABEL_96;
        }
      }

      goto LABEL_58;
    }

    v60 = *(a2 + 256);
    *&v560[64] = *(a2 + 240);
    *&v560[80] = v60;
    *&v560[96] = *(a2 + 272);
    v61 = *(a2 + 192);
    *v560 = *(a2 + 176);
    *&v560[16] = v61;
    v62 = *(a2 + 224);
    *&v560[32] = *(a2 + 208);
    *&v560[48] = v62;
    if (!*v560)
    {
      goto LABEL_58;
    }

    *(&v546[2] + 8) = *(a2 + 216);
    *(&v546[3] + 8) = *(a2 + 232);
    *(&v546[4] + 8) = *(a2 + 248);
    *(v546 + 8) = *(a2 + 184);
    *(&v546[1] + 8) = *(a2 + 200);
    *(&v546[5] + 8) = *(a2 + 264);
    *&v546[0] = *v560;
    v63 = *(a2 + 296);
    *v559 = *(a2 + 280);
    *&v559[16] = v63;
    v64 = *(a2 + 312);
    v65 = *(a2 + 328);
    v66 = *(a2 + 344);
    v67 = *(a2 + 360);
    *&v559[96] = *(a2 + 376);
    *&v559[64] = v66;
    *&v559[80] = v67;
    *&v559[32] = v64;
    *&v559[48] = v65;
    if (!*v559)
    {
      goto LABEL_58;
    }

    v68 = *(a2 + 336);
    *(&v544[2] + 8) = *(a2 + 320);
    *(&v544[3] + 8) = v68;
    v69 = *(a2 + 368);
    *(&v544[4] + 8) = *(a2 + 352);
    *(&v544[5] + 8) = v69;
    v70 = *(a2 + 304);
    *(v544 + 8) = *(a2 + 288);
    *(&v544[1] + 8) = v70;
    *&v544[0] = *v559;
    v71 = *(a1 + 1);
    v72 = *(a1 + 2);
    v73 = *(a1 + 4);
    v503 = *(a1 + 3);
    v504 = v73;
    v501 = v71;
    v502 = v72;
    v74 = *(a1 + 5);
    v75 = *(a1 + 6);
    *(v508 + 9) = *(a1 + 137);
    v76 = *(a1 + 8);
    v507 = *(a1 + 7);
    v508[0] = v76;
    v505 = v74;
    v506 = v75;
    v77 = *(a2 + 480);
    v78 = v490;
    swift_beginAccess();
    sub_1AAF2CB38(v560, &v492, sub_1AACFAA34);
    sub_1AAF2CB38(v559, &v492, sub_1AACFAA34);
    sub_1AAF27F58(&v501, v546, v77, (v78 + 32), &v530);
    v79 = *(a1 + 16);
    v499[0] = *(a1 + 17);
    *(v499 + 9) = *(a1 + 281);
    v80 = *(a1 + 13);
    v494 = *(a1 + 12);
    v495 = v80;
    v81 = *(a1 + 14);
    v497 = *(a1 + 15);
    v498 = v79;
    v496 = v81;
    v82 = *(a1 + 11);
    v492 = *(a1 + 10);
    v493 = v82;
    sub_1AAF27F58(&v492, v544, v77, (v78 + 32), &v537);
    swift_endAccess();
    if (v533 & 1) != 0 || (v540)
    {
      sub_1AAEE23A8(MEMORY[0x1E69E7CC0], v563);
      v83 = v563[0];
      v58 = *(&v563[0] + 1);
      v489 = v563[1];
      v490 = v563[2];
      sub_1AAF2C63C(v560, sub_1AACFAA34);
      v84 = v559;
LABEL_52:
      sub_1AAF2C63C(v84, sub_1AACFAA34);
LABEL_59:
      result = sub_1AAEEBC30(&v516);
      v192 = v489;
      v193 = v490;
LABEL_98:
      v211 = v491;
      goto LABEL_99;
    }

    v477 = *(&v530 + 1);
    v478 = v530;
    v216 = *(&v531 + 1);
    v215 = *&v531;
    v475 = *(&v537 + 1);
    *&v476 = v537;
    v217 = *(&v538 + 1);
    v218 = *&v538;
    if (v77)
    {
      v219 = *(a1 + 8);
      v563[6] = *(a1 + 7);
      v564[0] = v219;
      *(v564 + 9) = *(a1 + 137);
      v220 = *(a1 + 4);
      v563[2] = *(a1 + 3);
      v563[3] = v220;
      v221 = *(a1 + 6);
      v563[4] = *(a1 + 5);
      v563[5] = v221;
      v222 = *(a1 + 2);
      v563[0] = *(a1 + 1);
      v563[1] = v222;
      sub_1AAF28530(v563, v77);
      v223 = *(a1 + 17);
      v561[6] = *(a1 + 16);
      v562[0] = v223;
      *(v562 + 9) = *(a1 + 281);
      v224 = *(a1 + 13);
      v561[2] = *(a1 + 12);
      v561[3] = v224;
      v225 = *(a1 + 15);
      v561[4] = *(a1 + 14);
      v561[5] = v225;
      v226 = *(a1 + 11);
      v561[0] = *(a1 + 10);
      v561[1] = v226;
      sub_1AAF28530(v561, v77);
      v227 = v488;
      v228 = v480;
      if (v216 >= v215)
      {
        v229 = v216;
        goto LABEL_108;
      }
    }

    else
    {
      v227 = v488;
      v228 = v480;
      if (*(&v531 + 1) >= *&v531)
      {
        v229 = *(&v531 + 1);
        if (*(&v538 + 1) >= *&v538)
        {
          v285 = *(&v538 + 1);
          v217 = *&v538;
          goto LABEL_112;
        }

        goto LABEL_109;
      }
    }

    v229 = v215;
    v215 = v216;
LABEL_108:
    if (v217 >= v218)
    {
      v285 = v217;
      v217 = v218;
      goto LABEL_111;
    }

LABEL_109:
    v285 = v218;
LABEL_111:
    v216 = v229;
LABEL_112:
    v567.origin.x = v215;
    v567.origin.y = v217;
    v567.size.width = v216 - v215;
    v567.size.height = v285 - v217;
    CGRectGetWidth(v567);
    v568.origin.x = v215;
    v568.origin.y = v217;
    v568.size.width = v216 - v215;
    v568.size.height = v285 - v217;
    CGRectGetHeight(v568);
    sub_1AAF8E444();
    v287 = v286;
    v289 = v288;
    v291 = v290;
    v293 = v292;
    v294 = *(type metadata accessor for CollectedChartContent.Primitive(0) + 72);
    sub_1AAF2C7E0(a1 + v294, v228, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v295 = *(v227 + 48);
    v296 = v489;
    if (v295(v228, 1, v489) == 1)
    {
      if (qword_1ED9B1D88 != -1)
      {
        swift_once();
      }

      v296 = v489;
      v297 = sub_1AAD0F5D8(v489, qword_1ED9C3498);
      v298 = v484;
      (*(v227 + 16))(v484, v297, v296);
      if (v295(v228, 1, v296) != 1)
      {
        sub_1AAF2C9D8(v228, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      v298 = v484;
      (*(v227 + 32))(v484, v228, v296);
    }

    v299 = v487;
    *v487 = 0;
    *(v299 + 1) = 0;
    *(v299 + 2) = 0;
    *(v299 + 3) = v215;
    *(v299 + 4) = v216;
    *(v299 + 5) = v217;
    *(v299 + 6) = v285;
    *(v299 + 7) = v287;
    *(v299 + 8) = v289;
    *(v299 + 9) = v291;
    *(v299 + 10) = v293;
    v300 = v299 + *(v479 + 44);
    *&v490 = *(v227 + 32);
    (v490)(v300, v298, v296);
    v301 = *(a1 + 696);
    *&v488 = *a1;
    if (v301)
    {

      sub_1AAF8E444();
      v303 = v302;
      v305 = v304;
      v307 = v306;
      v309 = v308;
    }

    else
    {
      v309 = a1[86];
      v307 = a1[85];
      v305 = a1[84];
      v303 = a1[83];
    }

    v310 = v485;
    sub_1AAF2C7E0(a1 + v294, v485, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v311 = v489;
    if (v295(v310, 1, v489) == 1)
    {
      v312 = v486;
      (*(v227 + 104))(v486, *MEMORY[0x1E697F468], v311);
      _ZF = v295(v310, 1, v311) == 1;
      v211 = v491;
      v313 = v310;
      v314 = v312;
      if (!_ZF)
      {
        sub_1AAF2C9D8(v313, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      v315 = v486;
      (v490)(v486, v310, v311);
      v211 = v491;
      v314 = v315;
    }

    v316 = v481;
    v317 = v482;
    sub_1AAEEBB28(&v516, &v482[v481[13]]);
    v318 = a1[80];
    sub_1AAF2CB38(v487, v317 + v316[15], type metadata accessor for ChartDisplayList.ClipRect);
    v319 = a1[51];
    v320 = *(a1 + 208);
    *v317 = v488;
    *(v317 + 8) = 0;
    *(v317 + 16) = 0;
    *(v317 + 24) = 0;
    v321 = v477;
    *(v317 + 32) = v478;
    *(v317 + 40) = v321;
    v322 = v475;
    *(v317 + 48) = v476;
    *(v317 + 56) = v322;
    *(v317 + 64) = v303;
    *(v317 + 72) = v305;
    *(v317 + 80) = v307;
    *(v317 + 88) = v309;
    (v490)(v317 + v316[12], v314, v311);
    *(v317 + v316[14]) = v318;
    v323 = v317 + v316[16];
    *v323 = v319;
    *(v323 + 8) = v320;
    v324 = v483;
    sub_1AAF2CB38(v317, v483, type metadata accessor for ChartDisplayList.BarItem);
    v83 = *(v324 + 8);
    sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1AAF92AB0;
    v325 = swift_allocBox();
    sub_1AAF2CB38(v324, v326, type metadata accessor for ChartDisplayList.BarItem);
    *(v58 + 32) = v325 | 0x5000000000000000;

    sub_1AAF2C63C(v560, sub_1AACFAA34);
    sub_1AAF2C63C(v559, sub_1AACFAA34);
    sub_1AAF2C63C(v324, type metadata accessor for ChartDisplayList.BarItem);
    sub_1AAF2C63C(v317, type metadata accessor for ChartDisplayList.BarItem);
    sub_1AAF2C63C(v487, type metadata accessor for ChartDisplayList.ClipRect);
    result = sub_1AAEEBC30(&v516);
    goto LABEL_174;
  }

  v112 = *(a2 + 256);
  v541 = *(a2 + 240);
  v542 = v112;
  v543 = *(a2 + 272);
  v113 = *(a2 + 192);
  v537 = *(a2 + 176);
  v538 = v113;
  v114 = *(a2 + 224);
  v539 = *(a2 + 208);
  v540 = v114;
  if (!v537)
  {
    goto LABEL_58;
  }

  *&v560[40] = *(a2 + 216);
  *&v560[56] = *(a2 + 232);
  *&v560[72] = *(a2 + 248);
  *&v560[8] = *(a2 + 184);
  *&v560[24] = *(a2 + 200);
  *&v560[88] = *(a2 + 264);
  *v560 = v537;
  v115 = *(a2 + 296);
  v530 = *(a2 + 280);
  v531 = v115;
  v116 = *(a2 + 312);
  v117 = *(a2 + 328);
  v118 = *(a2 + 344);
  v119 = *(a2 + 360);
  v536 = *(a2 + 376);
  v534 = v118;
  v535 = v119;
  v532 = v116;
  v533 = v117;
  if (!v530)
  {
    goto LABEL_58;
  }

  v120 = *(a2 + 336);
  *&v559[40] = *(a2 + 320);
  *&v559[56] = v120;
  v121 = *(a2 + 368);
  *&v559[72] = *(a2 + 352);
  *&v559[88] = v121;
  v122 = *(a2 + 304);
  *&v559[8] = *(a2 + 288);
  *&v559[24] = v122;
  *v559 = v530;
  v123 = *(a1 + 1);
  v124 = *(a1 + 2);
  v126 = *(a1 + 5);
  v125 = *(a1 + 6);
  v127 = *(a1 + 3);
  v504 = *(a1 + 4);
  v505 = v126;
  v502 = v124;
  v503 = v127;
  v501 = v123;
  v128 = *(a1 + 7);
  v129 = *(a1 + 8);
  *(v508 + 9) = *(a1 + 137);
  v507 = v128;
  v508[0] = v129;
  v506 = v125;
  v130 = *(a2 + 480);
  v131 = v490;
  swift_beginAccess();
  sub_1AAF2CB38(&v537, &v492, sub_1AACFAA34);
  sub_1AAF2CB38(&v530, &v492, sub_1AACFAA34);
  sub_1AAF27F58(&v501, v560, v130, (v131 + 32), &v550);
  v132 = *(a1 + 16);
  v499[0] = *(a1 + 17);
  *(v499 + 9) = *(a1 + 281);
  v133 = *(a1 + 13);
  v494 = *(a1 + 12);
  v495 = v133;
  v134 = *(a1 + 14);
  v497 = *(a1 + 15);
  v498 = v132;
  v496 = v134;
  v135 = *(a1 + 11);
  v492 = *(a1 + 10);
  v493 = v135;
  sub_1AAF27F58(&v492, v559, v130, (v131 + 32), v513);
  swift_endAccess();
  if (v556 & 1) != 0 || (v514)
  {
    sub_1AAEE23A8(MEMORY[0x1E69E7CC0], v563);
    v83 = v563[0];
    v58 = *(&v563[0] + 1);
    v136 = v563[1];
    v137 = v563[2];
LABEL_51:
    v490 = v137;
    v489 = v136;
    sub_1AAF2C63C(&v537, sub_1AACFAA34);
    v84 = &v530;
    goto LABEL_52;
  }

  v201 = v550;
  v202 = v551;
  v203 = v513[0];
  sub_1AAF04354(v529);
  v204 = v131;
  swift_beginAccess();
  v205 = *(v131 + 24);
  if (!*(v205 + 16) || (v206 = sub_1AADB0E38(v529), v204 = v131, (v207 & 1) == 0))
  {
    swift_endAccess();
    v256 = *a1;
    sub_1AAF2CBA0(0, &qword_1EB4230B8, &type metadata for ChartDisplayList.AreaItem.Point, MEMORY[0x1E69E6F90]);
    v257 = swift_allocObject();
    v489 = xmmword_1AAF92AB0;
    *(v257 + 16) = xmmword_1AAF92AB0;
    *(v257 + 32) = v201;
    *(v257 + 40) = v202;
    *(v257 + 48) = v203;
    type metadata accessor for ChartDisplayList.AreaItem.Points();
    v258 = swift_allocObject();
    *(v258 + 16) = v257;
    v259 = type metadata accessor for CollectedChartContent.Primitive(0);
    v260 = *(a1 + *(v259 + 80));
    if (v260 == 2)
    {
      v261 = *(a1 + 8);
      v561[6] = *(a1 + 7);
      v562[0] = v261;
      *(v562 + 9) = *(a1 + 137);
      v262 = *(a1 + 4);
      v561[2] = *(a1 + 3);
      v561[3] = v262;
      v263 = *(a1 + 6);
      v561[4] = *(a1 + 5);
      v561[5] = v263;
      v264 = *(a1 + 2);
      v561[0] = *(a1 + 1);
      v561[1] = v264;
      v265 = *(a1 + 17);
      v563[6] = *(a1 + 16);
      v564[0] = v265;
      *(v564 + 9) = *(a1 + 281);
      v266 = *(a1 + 13);
      v563[2] = *(a1 + 12);
      v563[3] = v266;
      v267 = *(a1 + 15);
      v563[4] = *(a1 + 14);
      v563[5] = v267;
      v268 = *(a1 + 11);
      v563[0] = *(a1 + 10);
      v563[1] = v268;

      LOBYTE(v260) = sub_1AAE63A88(v561, v563);
    }

    else
    {
    }

    sub_1AAEEBB28(&v516, &v546[3]);
    v327 = a1[80];
    v328 = a1 + *(v259 + 76);
    v329 = *v328;
    LOBYTE(v328) = v328[8];
    v330 = a1[51];
    v331 = *(a1 + 208);
    *&v546[0] = v256;
    DWORD2(v546[0]) = 0;
    v546[1] = 0uLL;
    *&v546[2] = v258;
    BYTE8(v546[2]) = v260 & 1;
    *&v546[6] = v327;
    *(&v546[6] + 1) = v329;
    LOBYTE(v547[0]) = v328;
    *(&v547[0] + 1) = v330;
    LOWORD(v547[1]) = v331;
    swift_beginAccess();

    v332 = swift_isUniquelyReferenced_nonNull_native();
    v548[0] = *(v204 + 24);
    *(v204 + 24) = 0x8000000000000000;
    sub_1AADD4108(v258, v529, v332);
    sub_1AAF2CA40(v529);
    *(v204 + 24) = v548[0];
    swift_endAccess();
    sub_1AAEE2E10(v546, v544);
    v83 = DWORD2(v544[0]);
    sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = v489;
    v333 = swift_allocObject();
    sub_1AAEE2E10(v544, v333 + 16);
    *(v58 + 32) = v333 | 0x4000000000000000;
    sub_1AAF2C63C(&v537, sub_1AACFAA34);
    sub_1AAF2C63C(&v530, sub_1AACFAA34);
    sub_1AAEE2E48(v544);
    sub_1AAEE2E48(v546);
    goto LABEL_223;
  }

  v208 = *(*(v205 + 56) + 8 * v206);
  swift_endAccess();

  sub_1AAF2CA40(v529);
  v209 = *(v208 + 16);
  v210 = swift_isUniquelyReferenced_nonNull_native();
  *(v208 + 16) = v209;
  if ((v210 & 1) == 0)
  {
    v209 = sub_1AAD6B4C4(0, *(v209 + 2) + 1, 1, v209);
    *(v208 + 16) = v209;
  }

  v211 = v491;
  v213 = *(v209 + 2);
  v212 = *(v209 + 3);
  if (v213 >= v212 >> 1)
  {
    v209 = sub_1AAD6B4C4((v212 > 1), v213 + 1, 1, v209);
  }

  *(v209 + 2) = v213 + 1;
  v214 = &v209[32 * v213];
  *(v214 + 4) = v201;
  *(v214 + 5) = v202;
  *(v214 + 3) = v203;
  *(v208 + 16) = v209;
  sub_1AAEE23A8(MEMORY[0x1E69E7CC0], v563);
  v83 = v563[0];
  v58 = *(&v563[0] + 1);
  v489 = v563[1];
  v490 = v563[2];
  sub_1AAF2C63C(&v537, sub_1AACFAA34);
  sub_1AAF2C63C(&v530, sub_1AACFAA34);

  result = sub_1AAEEBC30(&v516);
  v192 = v489;
  v193 = v490;
LABEL_99:
  *v211 = v83;
  *(v211 + 8) = v58;
  *(v211 + 16) = v192;
  *(v211 + 32) = v193;
  return result;
}

uint64_t sub_1AAF2543C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v6;
  v24 = *(a1 + 96);
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v8 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v8;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[4];
  v21[2] = a3[3];
  v21[3] = v11;
  v21[0] = v9;
  v21[1] = v10;
  v12 = a3[5];
  v13 = a3[6];
  *&v22[9] = *(a3 + 137);
  v14 = a3[8];
  v21[6] = a3[7];
  *v22 = v14;
  v21[4] = v12;
  v21[5] = v13;
  swift_beginAccess();
  sub_1AAF27F58(v21, v23, 0, (a2 + 32), v19);
  result = swift_endAccess();
  v17 = v19[0];
  v16 = v19[1];
  v18 = v20 & 1;
  if (v20)
  {
    v17 = 0;
    v16 = 0;
  }

  *a4 = v17;
  *(a4 + 8) = v16;
  *(a4 + 16) = v18;
  return result;
}

uint64_t sub_1AAF25510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v6;
  v24 = *(a1 + 96);
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v8 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v8;
  v9 = a3[10];
  v10 = a3[11];
  v11 = a3[13];
  v21[2] = a3[12];
  v21[3] = v11;
  v21[0] = v9;
  v21[1] = v10;
  v12 = a3[14];
  v13 = a3[15];
  *&v22[9] = *(a3 + 281);
  v14 = a3[17];
  v21[6] = a3[16];
  *v22 = v14;
  v21[4] = v12;
  v21[5] = v13;
  swift_beginAccess();
  sub_1AAF27F58(v21, v23, 0, (a2 + 32), v19);
  result = swift_endAccess();
  v17 = v19[0];
  v16 = v19[1];
  v18 = v20 & 1;
  if (v20)
  {
    v17 = 0;
    v16 = 0;
  }

  *a4 = v17;
  *(a4 + 8) = v16;
  *(a4 + 16) = v18;
  return result;
}

void sub_1AAF255E8(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v79 = a3;
  *&v80 = a2;
  v4 = type metadata accessor for CollectedChartContent.Primitive(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CollectedChartContent(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v76 - v21);
  sub_1AAF2CB38(a1, &v76 - v21, type metadata accessor for CollectedChartContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = *v22;
      sub_1AAED9F30(0, v24);
      v29 = v28;
      v78 = v27;
      v30 = swift_projectBox();
      v31 = *v30;
      v32 = *(v29 + 64);
      sub_1AAF2CB38(v30 + *(v29 + 48), v19, type metadata accessor for CollectedChartContent);
      sub_1AAF2CB38(v30 + v32, v16, type metadata accessor for CollectedChartContent);

      v33 = v80;
      sub_1AAF255E8(v19, v80, &v82);
      v34 = v82;
      v35 = *(&v82 + 1);
      v76 = v84;
      v77 = v83;
      sub_1AAF255E8(v16, v33, &v85);
      v36 = v85;
      v37 = v86;
      v80 = v88;
      v81 = v87;
      if (v34 == -1)
      {
        v25 = -1;
      }

      else
      {
        v25 = v34;
        if (v85)
        {
          v25 = v85;
          if (v34)
          {
            v25 = v85;
            if (v85 != -1)
            {
              v25 = sub_1AAF0A868(v34, v85);
            }
          }
        }
      }

      sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AAF92AB0;
      v70 = swift_allocObject();
      *(v70 + 16) = v31;
      *(v70 + 24) = v25;
      *(v70 + 32) = v34;
      *(v70 + 40) = v35;
      v71 = v76;
      *(v70 + 48) = v77;
      *(v70 + 64) = v71;
      *(v70 + 80) = v36;
      *(v70 + 88) = v37;
      v72 = v80;
      *(v70 + 96) = v81;
      *(v70 + 112) = v72;
      *(v26 + 32) = v70 | 0x7000000000000000;
      sub_1AAF2C63C(v16, type metadata accessor for CollectedChartContent);
      sub_1AAF2C63C(v19, type metadata accessor for CollectedChartContent);
    }

    else
    {
      sub_1AAE0FA44(0, v24);
      v50 = v49;
      v51 = swift_projectBox();
      v52 = *(v50 + 48);
      sub_1AAF2CB38(v51, v13, type metadata accessor for CollectedChartContent);
      sub_1AAED9E28(v51 + v52, v98);
      sub_1AAED9E28(v98, &v93);
      if (v97 == 1)
      {
        sub_1AAED9E84(&v93);
        sub_1AAF255E8(v13, v80, &v85);
        v25 = v85;
        v26 = v86;
        v80 = v87;
        v81 = v88;
        sub_1AAED9E84(v98);
        sub_1AAF2C63C(v13, type metadata accessor for CollectedChartContent);
LABEL_42:

        goto LABEL_43;
      }

      v91[0] = v94;
      v91[1] = v95;
      v66 = v93;
      v92 = v96;
      sub_1AAF255E8(v13, v80, v99);
      v67 = v99[0];
      v68 = MEMORY[0x1E69E6720];
      sub_1AAF2C7E0(v91, &v90, &qword_1ED9B2EE8, sub_1AAE131C4, MEMORY[0x1E69E6720]);
      v85 = v66;
      LODWORD(v86) = v67;
      v87 = v99[0];
      v88 = v99[1];
      v89 = v99[2];
      sub_1AAEE2D40(&v85, &v82);
      v25 = DWORD2(v82);
      sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AAF92AB0;
      v69 = swift_allocObject();
      sub_1AAEE2D40(&v82, v69 + 16);
      *(v26 + 32) = v69 | 0x8000000000000000;
      sub_1AAEE2D78(&v82);
      sub_1AAEE2D78(&v85);
      sub_1AAF2C9D8(v91, &qword_1ED9B2EE8, sub_1AAE131C4, v68);
      sub_1AAED9E84(v98);
      sub_1AAF2C63C(v13, type metadata accessor for CollectedChartContent);
    }

    v73 = 0uLL;
    v74 = 0uLL;
LABEL_44:
    v75 = v79;
    *v79 = v25;
    *(v75 + 1) = v26;
    *(v75 + 1) = v73;
    *(v75 + 2) = v74;
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1AAF2C884(v22, v6);
    sub_1AAF22094(v6, v80, &v85);
    v25 = v85;
    v26 = v86;
    v80 = v87;
    v81 = v88;
    sub_1AAF2C63C(v6, type metadata accessor for CollectedChartContent.Primitive);
LABEL_43:
    v73 = v80;
    v74 = v81;
    goto LABEL_44;
  }

  v78 = *v22;
  v38 = *(v78 + 16);
  v39 = *(v38 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v85 = MEMORY[0x1E69E7CC0];

    sub_1AAD41644(0, v39, 0);
    v40 = v85;
    v41 = *(v8 + 80);
    *&v77 = v38;
    v42 = v38 + ((v41 + 32) & ~v41);
    v43 = *(v8 + 72);
    do
    {
      sub_1AAF2CB38(v42, v10, type metadata accessor for CollectedChartContent);
      sub_1AAF255E8(v10, v80, &v82);
      sub_1AAF2C63C(v10, type metadata accessor for CollectedChartContent);
      v85 = v40;
      v45 = *(v40 + 16);
      v44 = *(v40 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1AAD41644((v44 > 1), v45 + 1, 1);
        v40 = v85;
      }

      *(v40 + 16) = v45 + 1;
      v46 = (v40 + 48 * v45);
      v47 = v82;
      v48 = v84;
      v46[3] = v83;
      v46[4] = v48;
      v46[2] = v47;
      v42 += v43;
      --v39;
    }

    while (v39);
  }

  v53 = *(v40 + 16);
  if (!v53)
  {
    v56 = MEMORY[0x1E69E7CC0];
LABEL_41:

    sub_1AAEE23A8(v56, &v85);
    v25 = v85;
    v26 = v86;
    v80 = v87;
    v81 = v88;
    goto LABEL_42;
  }

  v54 = 0;
  v55 = (v40 + 40);
  v56 = MEMORY[0x1E69E7CC0];
  while (v54 < *(v40 + 16))
  {
    v57 = *v55;
    v58 = *(*v55 + 16);
    v59 = *(v56 + 2);
    v60 = v59 + v58;
    if (__OFADD__(v59, v58))
    {
      goto LABEL_46;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v60 <= *(v56 + 3) >> 1)
    {
      if (*(v57 + 16))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v59 <= v60)
      {
        v62 = v59 + v58;
      }

      else
      {
        v62 = v59;
      }

      v56 = sub_1AAD6B22C(isUniquelyReferenced_nonNull_native, v62, 1, v56);
      if (*(v57 + 16))
      {
LABEL_32:
        if ((*(v56 + 3) >> 1) - *(v56 + 2) < v58)
        {
          goto LABEL_48;
        }

        swift_arrayInitWithCopy();

        if (v58)
        {
          v63 = *(v56 + 2);
          v64 = __OFADD__(v63, v58);
          v65 = v63 + v58;
          if (v64)
          {
            goto LABEL_49;
          }

          *(v56 + 2) = v65;
        }

        goto LABEL_21;
      }
    }

    if (v58)
    {
      goto LABEL_47;
    }

LABEL_21:
    ++v54;
    v55 += 6;
    if (v53 == v54)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

double sub_1AAF25E64@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  v5 = MEMORY[0x1E69E7CC8];
  v2[2] = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v2[3] = v5;

  swift_beginAccess();
  v2[4] = v5;

  v6 = type metadata accessor for AGChartRendererContent(0);
  v7 = (a1 + v6[5]);
  v8 = *(v7 + 27);
  v9 = v7[1];
  v23 = *v7;
  v24[0] = v9;
  *(v24 + 11) = v8;
  v10 = (a1 + v6[6]);
  v11 = *(v10 + 27);
  v12 = v10[1];
  v25 = *v10;
  v26[0] = v12;
  *(v26 + 11) = v11;
  v13 = v6[7];
  memcpy(__dst, (a1 + v13), sizeof(__dst));
  sub_1AAF28674(&v23, &v25, __dst, &v17);
  v14 = *(&v17 + 1);
  memcpy(v22, (a1 + v13), sizeof(v22));
  sub_1AAF255E8(a1, v22, &v18);
  *&v20[0] = v14;
  sub_1AADC93C8(v19);
  sub_1AAEE23A8(*&v20[0], v20);
  v15 = v20[1];
  *a2 = v20[0];
  a2[1] = v15;
  result = *&v21;
  a2[2] = v21;
  return result;
}

double sub_1AAF25FC8()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AAF2603C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF26084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 472) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 488) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF26198(uint64_t a1)
{
  result = type metadata accessor for CollectedChartContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1AAF26260(uint64_t a1)
{
  sub_1AAF26348(319, qword_1ED9B26A8, 255, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum);
  if (v2 <= 0x3F)
  {
    sub_1AAF26348(319, &qword_1ED9B1E50, v1, type metadata accessor for ChartDisplayListBuilder, MEMORY[0x1E6981E98]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AAF26348(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1AAF263B0()
{
  result = qword_1ED9AED70;
  if (!qword_1ED9AED70)
  {
    sub_1AAF26348(255, qword_1ED9B26A8, 255, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AED70);
  }

  return result;
}

void sub_1AAF2643C(char **a1, uint64_t a2, double *a3)
{
  v101 = a3;
  sub_1AAF26348(0, &qword_1ED9B2E80, 255, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v91 - v6;
  v7 = sub_1AAF8DD44();
  v97 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1AAF8DE34();
  v98 = *(v111 - 1);
  MEMORY[0x1EEE9AC00](v111);
  v109 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v91 - v19;
  v105 = a1;
  sub_1AAF8DE54();
  v110 = a2;
  v20 = *(a2 + 32);
  swift_beginAccess();
  v100 = v20;
  v21 = *(v20 + 16);
  v22 = *(v21 + 16);

  v99 = v7;
  if (v22)
  {
    v23 = 0;
    v24 = v21 + 96;
    v93 = v22 - 1;
    v103 = MEMORY[0x1E69E7CC0];
    v94 = v21 + 96;
    while (1)
    {
      v25 = (v24 + 72 * v23);
      v26 = v23;
      while (1)
      {
        if (v26 >= *(v21 + 16))
        {
          __break(1u);
          return;
        }

        v27 = *v25;
        if (v27 != 255)
        {
          break;
        }

LABEL_4:
        ++v26;
        v25 += 72;
        if (v22 == v26)
        {
          v7 = v99;
          goto LABEL_18;
        }
      }

      v28 = *(v25 - 6);
      v29 = *(v25 - 5);
      v30 = *(v25 - 4);
      v31 = *(v25 - 3);
      v33 = *(v25 - 2);
      v32 = *(v25 - 1);
      if (v27)
      {
        break;
      }

      sub_1AAEE2BCC(v28, v29, *(v25 - 4), *(v25 - 3), *(v25 - 2), v32, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1AAD6B71C(0, *(v103 + 2) + 1, 1, v103);
      }

      v35 = *(v103 + 2);
      v34 = *(v103 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v92 = v35 + 1;
        v40 = sub_1AAD6B71C((v34 > 1), v35 + 1, 1, v103);
        v36 = v92;
        v103 = v40;
      }

      v23 = v26 + 1;
      v37 = v103;
      *(v103 + 2) = v36;
      v38 = &v37[40 * v35];
      *(v38 + 4) = v28;
      *(v38 + 5) = v29;
      *(v38 + 6) = v30;
      *(v38 + 7) = v31;
      v38[64] = v33;
      v24 = v94;
      v39 = v93 == v26;
      v7 = v99;
      if (v39)
      {
        goto LABEL_18;
      }
    }

    sub_1AAEE2BCC(v28, v29, *(v25 - 4), *(v25 - 3), *(v25 - 2), v32, v27);

    goto LABEL_4;
  }

  v103 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if (*(v103 + 2))
  {
    v119 = *v105;
    MEMORY[0x1EEE9AC00](v119);
    *(&v91 - 2) = v41;
    v108 = v42;

    sub_1AAF8DCF4();
    v43 = v119;
    v44 = v110;
    v45 = sub_1AAF210C8(*(v110 + 144), *(v110 + 152), *(v110 + 40), &v115);
    v46 = *(v100 + 16);
    MEMORY[0x1EEE9AC00](v45);
    *(&v91 - 2) = v44;

    sub_1AADE631C(sub_1AAF2C724, (&v91 - 4), v46);
    v48 = v47;

    v49 = v116;
    v50 = v117;
    sub_1AACB8B34(&v115, v116);
    sub_1AAF212E4(v48, v49, v50, v120);

    v51 = *(v44 + 112);
    v125 = *(v44 + 96);
    v126 = v51;
    v127 = *(v44 + 128);
    sub_1AAF8E854();
    sub_1AAD12C10(v120);
    sub_1AACB634C(&v115);
    sub_1AAEEBB28(v44 + 48, &v115);
    if (v118)
    {
      sub_1AACBB198(&v115, v113);
      sub_1AACBB42C(v113, v114);
      v52 = v106;
      sub_1AAF8DE24();
      v53.n128_f64[0] = sub_1AACB634C(v113);
    }

    else
    {
      v52 = v106;
      sub_1AAF8DE14();
    }

    v64 = v98;
    v65 = v96;
    v66 = v111;
    v106 = *(v98 + 32);
    (v106)(v96, v52, v111, v53);
    v95 = v43;
    sub_1AAF8DDA4();
    sub_1AAD12C10(&v121);
    v67 = *(v64 + 8);
    v67(v65, v66);
    v68 = *(v103 + 2);
    v69 = v109;
    if (v68)
    {
      v70 = v103 + 32;
      do
      {
        v74 = *v70;
        v75 = *(v70 + 1);
        v124 = v70[32];
        v122 = v74;
        v123 = v75;
        sub_1AAEEBB28(v110 + 48, &v115);
        if (v118)
        {
          sub_1AACBB198(&v115, v113);
          sub_1AACBB42C(v113, v114);
          v130[0] = v122;
          v130[1] = v123;
          v131 = v124;
          sub_1AAE63550(v130, &v112);
          v69 = v109;
          sub_1AAF8DE24();
          v71.n128_f64[0] = sub_1AACB634C(v113);
        }

        else
        {
          v128[0] = v122;
          v128[1] = v123;
          v129 = v124;
          sub_1AAE63550(v128, v113);
          sub_1AAF8DE14();
        }

        v72 = v107;
        v73 = v111;
        (v106)(v107, v69, v111, v71);
        sub_1AAF8DDA4();
        sub_1AAD12C10(&v122);
        v67(v72, v73);
        v70 += 40;
        --v68;
      }

      while (v68);
    }

    v7 = v99;
  }

  else
  {

    v54 = v110;
    v55 = sub_1AAF210C8(*(v110 + 144), *(v110 + 152), *(v110 + 40), &v115);
    v56 = *(v100 + 16);
    MEMORY[0x1EEE9AC00](v55);
    *(&v91 - 2) = v54;

    sub_1AADE631C(sub_1AAF2D008, (&v91 - 4), v56);
    v58 = v57;

    v59 = v116;
    v60 = v117;
    sub_1AACB8B34(&v115, v116);
    sub_1AAF212E4(v58, v59, v60, v128);

    v61 = *(v54 + 112);
    v125 = *(v54 + 96);
    v126 = v61;
    v127 = *(v54 + 128);
    sub_1AAF8E854();
    sub_1AAD12C10(v128);
    sub_1AACB634C(&v115);
    sub_1AAEEBB28(v54 + 48, &v115);
    if (v118)
    {
      sub_1AACBB198(&v115, v113);
      sub_1AACBB42C(v113, v114);
      v62 = v95;
      sub_1AAF8DE24();
      v63.n128_f64[0] = sub_1AACB634C(v113);
    }

    else
    {
      v62 = v95;
      sub_1AAF8DE14();
    }

    v76 = v108;
    v77 = v98;
    v78 = v111;
    (*(v98 + 32))(v108, v62, v111, v63);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v130);
    (*(v77 + 8))(v76, v78);
  }

  sub_1AAF8DE44();
  *v101 = v79;
  sub_1AAF8DE54();
  v80 = *(*(v100 + 16) + 16);
  if (v80)
  {
    v110 = v97 + 32;
    v111 = (v97 + 48);
    v109 = (v97 + 8);

    v81 = (v108 + 96);
    do
    {
      v82 = *v81;
      if (v82 != 255 && (v82 & 1) != 0)
      {
        v83 = *(v81 - 5);
        v84 = v7;
        v85 = *(v81 - 4);
        v86 = *(v81 - 3);
        v87 = *(v81 - 2);
        v88 = *(v81 - 1);
        *&v115 = *(v81 - 6);
        sub_1AAEE2BCC(v115, v83, v85, v86, v87, v88, v82);
        sub_1AAD80D58();

        v89 = v104;
        sub_1AAF8DD34();

        if ((*v111)(v89, 1, v84) == 1)
        {

          sub_1AAF2C9D8(v89, &qword_1ED9B2E80, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
        }

        else
        {
          v90 = v102;
          (*v110)(v102, v89, v84);
          sub_1AAF8F264();
          sub_1AAF8DD74();

          (*v109)(v90, v84);
        }

        v7 = v84;
      }

      v81 += 72;
      --v80;
    }

    while (v80);
  }

  sub_1AAF8DE54();
}

void sub_1AAF26F90(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1AAF8DE34();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;
    v9 = (v4 + 8);
    do
    {
      v10 = *(v8 + 16);
      v13[0] = *v8;
      v13[1] = v10;
      v14 = *(v8 + 32);
      v15[0] = v13[0];
      v15[1] = v10;
      v16 = v14;
      sub_1AAE63550(v15, v11);
      sub_1AAE3C43C(v12);
      sub_1AAF8ECD4();
      sub_1AAF8DE14();

      sub_1AAF8DDA4();
      sub_1AAD12C10(v12);
      sub_1AAD12C10(v13);
      (*v9)(v6, v3);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

double sub_1AAF270F8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = a2 + 488;
  v5 = *(type metadata accessor for AGChartRendererContent(0) + 28);
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(a2, (a1 + v5), 0x1E8uLL);
  type metadata accessor for AGChartDisplay(0);
  sub_1AAF2C84C(__dst, v9);
  sub_1AAF26348(0, &qword_1ED9B1E50, v6, type metadata accessor for ChartDisplayListBuilder, MEMORY[0x1E6981E98]);
  sub_1AAF8F1D4();
  sub_1AAF25E64(a1, v9);

  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 1) = v7;
  result = v10[0];
  *(v4 + 2) = *v10;
  return result;
}

void sub_1AAF271EC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1AAF8E1A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AAF2C278(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25[-v14];
  sub_1AAF2C574(a1, &v29);
  v16 = swift_allocObject();
  v17 = v32;
  v16[3] = v31;
  v16[4] = v17;
  v18 = v34;
  v16[5] = v33;
  v16[6] = v18;
  v19 = v30;
  v16[1] = v29;
  v16[2] = v19;
  v26 = a1;
  (*(v5 + 104))(v7, *MEMORY[0x1E697F3A0], v4);
  sub_1AAF2C2DC(0);
  sub_1AAF2C484();
  sub_1AAF8EE94();
  sub_1AAF2C7E0(a1 + 56, &v27, &qword_1ED9B2EE8, sub_1AAE131C4, MEMORY[0x1E69E6720]);
  if (v28)
  {
    sub_1AACBB198(&v27, &v29);
    v20 = *(&v30 + 1);
    v21 = v31;
    v22 = sub_1AACBB42C(&v29, *(&v30 + 1));
    v24 = sub_1AAF27798(v22, v23, v15, v20, v21);
    (*(v10 + 8))(v15, v9);
    sub_1AACB634C(&v29);
  }

  else
  {
    sub_1AAF2C9D8(&v27, &qword_1ED9B2EE8, sub_1AAE131C4, MEMORY[0x1E69E6720]);
    (*(v10 + 16))(v12, v15, v9);
    sub_1AAF2CBF0(&qword_1ED9ADA08, sub_1AAF2C278, MEMORY[0x1E69817B0]);
    v24 = sub_1AAF8EF44();
    (*(v10 + 8))(v15, v9);
  }

  *a2 = v24;
}

uint64_t sub_1AAF2756C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v12 = *(a1 + 8);
  v13 = v1;
  v14 = *(a1 + 40);
  sub_1AAEE2718();
  v11 = v2;
  sub_1AAF2CBA0(0, &qword_1ED9AD958, &type metadata for ChartDisplayList.ViewItem, MEMORY[0x1E69E62F8]);
  v4 = v3;
  sub_1AAF2C3B8(0);
  v6 = v5;
  v7 = sub_1AAF2C1C0(&unk_1ED9AEFB0, &qword_1ED9AD958, &type metadata for ChartDisplayList.ViewItem);
  sub_1AAED9FD0(255, &qword_1ED9B1720, MEMORY[0x1E6981910], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
  sub_1AAD267CC();
  sub_1AAD80D58();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = sub_1AAF2C5E4();
  return sub_1AAF8EFD4(&v11, sub_1AAF276E0, 0, v4, &type metadata for ChartContentID, v6, v7, OpaqueTypeConformance2, v9);
}

double sub_1AAF276E0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[10];

  sub_1AAF8F124();
  sub_1AAF8DA24();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 56) = v3;
  *(a2 + 64) = 1;

  return result;
}

uint64_t sub_1AAF27798(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAF2C278(255);
  v8 = v7;
  v9 = sub_1AAF8DF74();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1AAF2CBF0(&qword_1ED9ADA08, sub_1AAF2C278, MEMORY[0x1E69817B0]);
  MEMORY[0x1AC597820](a1, v8, a4, v10);
  swift_getWitnessTable();
  return sub_1AAF8EF44();
}

double sub_1AAF278C8(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_1AAF27908(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE34258;
}

uint64_t sub_1AAF27990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAF2CBF0(&qword_1ED9B0318, type metadata accessor for AGChartDisplay, &unk_1AAFC34B8);

  return MEMORY[0x1EEDE3690](a1, a2, a3, v8, a4);
}

uint64_t sub_1AAF27A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAF2CBF0(&qword_1ED9B0318, type metadata accessor for AGChartDisplay, &unk_1AAFC34B8);

  return MEMORY[0x1EEDE3698](a1, a2, a3, v8, a4);
}

uint64_t sub_1AAF27AC8()
{
  v1 = sub_1AAF2BF04(*v0, sub_1AAF28528, v8);
  sub_1AAEEB648(v1, v10);

  v2 = sub_1AAEE18B0();
  sub_1AAEE3018(v10);
  v9 = v2;
  sub_1AAF2CBA0(0, &qword_1ED9AD950, &type metadata for ChartDisplayLayer, MEMORY[0x1E69E62F8]);
  v4 = v3;
  v5 = sub_1AAF2C1C0(&qword_1ED9AEFA8, &qword_1ED9AD950, &type metadata for ChartDisplayLayer);
  v6 = sub_1AAF2C224();
  return sub_1AAF8EFD4(&v9, sub_1AAF271EC, 0, v4, MEMORY[0x1E69E6530], MEMORY[0x1E6981910], v5, MEMORY[0x1E6981900], v6);
}

double sub_1AAF27C04(unsigned __int8 a1, uint64_t a2, double a3)
{
  if (a1 > 1u)
  {
    v6 = a3;
    (*a2)(&v7, &v6);
    v5 = *(a2 + 16) * 0.5;
    if (*(a2 + 24))
    {
      v5 = 0.0;
    }

    return v7 + v5;
  }

  else
  {
    v6 = a3;
    (*a2)(&v7, &v6);
    return v7;
  }
}

uint64_t sub_1AAF27C94(_OWORD *a1, uint64_t a2)
{
  v3 = a1[7];
  v14[6] = a1[6];
  v15[0] = v3;
  *(v15 + 9) = *(a1 + 121);
  v4 = a1[3];
  v14[2] = a1[2];
  v14[3] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = sub_1AAE63EF0(v14);
  if (v7)
  {
    if (v7 == 1)
    {
      return *sub_1AAD357A8(v14);
    }

    else
    {
      if (qword_1ED9B59F0 != -1)
      {
        swift_once();
      }

      return 0;
    }
  }

  else
  {
    v9 = sub_1AAD357A8(v14);
    if (*(v9 + 64) < 0)
    {
      v11 = *(v9 + 48);
      v12 = *(v9 + 56);
      v13 = sub_1AAF27C04(v12, a2, *(v9 + 40));
      v10 = (v13 + sub_1AAF27C04(v12, a2, v11)) * 0.5;
    }

    else
    {
      v10 = sub_1AAF27C04(*(v9 + 64), a2, *(v9 + 40));
    }

    return *&v10;
  }
}

void sub_1AAF27DBC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v5 = *(a1 + 3);
  v6 = *(a1 + 64);
  if (a1[3] >> 1 == 0xFFFFFFFF && (v6 & 0x7C) == 0)
  {
    goto LABEL_11;
  }

  v8 = (v6 >> 5) & 3;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(a1 + 1);
  if (v8 != 1)
  {
    v10 = *(a1 + 5);
    v11 = a1[7];
    v15 = *a1;
    v16 = v9;
    v17 = v5;
    v18 = v10;
    v19 = v11;
    v20 = v6 & 0x9F;
    if (a4 != -1)
    {
      v12 = a5;
      sub_1AAECB7F4(&v15, a2, a3, a4 & 1);
      a5 = v12;
    }

LABEL_11:
    v13 = a5[3];
    v14 = a5[4];
    sub_1AACBB42C(a5, v13);
    (*(v14 + 16))(v13, v14);
  }
}

void sub_1AAF27F58(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[7];
  v72[6] = a1[6];
  v73[0] = v9;
  *(v73 + 9) = *(a1 + 121);
  v10 = a1[3];
  v72[2] = a1[2];
  v72[3] = v10;
  v11 = a1[5];
  v72[4] = a1[4];
  v72[5] = v11;
  v12 = a1[1];
  v72[0] = *a1;
  v72[1] = v12;
  v13 = sub_1AAE63EF0(v72);
  v14 = sub_1AAD357A8(v72);
  if (v13 <= 2)
  {
    if (!v13)
    {
      if (*(v14 + 64) < 0)
      {
        v46 = *(v14 + 48);
        v47 = *(v14 + 56);
        v48 = sub_1AAF27C04(v47, a2, *(v14 + 40));
        v16 = (v48 + sub_1AAF27C04(v47, a2, v46)) * 0.5;
      }

      else
      {
        v16 = sub_1AAF27C04(*(v14 + 64), a2, *(v14 + 40));
      }

      v15 = 0;
      goto LABEL_36;
    }

    if (v13 == 1)
    {
      if (*(v14 + 8))
      {
        v15 = 1;
LABEL_44:
        v16 = 0.0;
        goto LABEL_45;
      }

      v15 = 0;
      v16 = *v14;
LABEL_36:
      v22 = v16;
      v49 = v16;
      v50 = v16;
LABEL_77:
      *a5 = v16;
      *(a5 + 8) = v22;
      *(a5 + 16) = v16;
      *(a5 + 24) = v22;
      *(a5 + 32) = v49;
      *(a5 + 40) = v50;
      *(a5 + 48) = v15;
      return;
    }

    v23 = *(v14 + 72);
    v24 = *(v14 + 80);
    if (*(a2 + 24))
    {
      v25 = 0.0;
    }

    else
    {
      v25 = *(a2 + 16);
    }

    if (*(v14 + 64) < 0)
    {
      v55 = *(v14 + 48);
      v71 = *(v14 + 40);
      v56 = *a2;
      (*a2)(v74, &v71);
      v57 = v25 * 0.5;
      v27 = *v74 - v57;
      v71 = v55;
      v56(v74, &v71);
      v28 = v57 + *v74;
      if (v24 <= 1)
      {
LABEL_21:
        v29 = (v28 + v27) * 0.5;
        v30 = (v28 - v27) * v23 * 0.5;
        v31 = v29 - v30;
        v22 = v29 + v30;
        if (v24)
        {
          v16 = v31;
        }

        else
        {
          v22 = v23 * 0.5 + v29;
          v16 = v29 - v23 * 0.5;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v26 = sub_1AAF27C04(*(v14 + 64), a2, *(v14 + 40));
      v27 = v26 - v25 * 0.5;
      v28 = v25 * 0.5 + v26;
      if (v24 <= 1)
      {
        goto LABEL_21;
      }
    }

    if (v24 == 2)
    {
      v16 = v27 + v23;
      v22 = v28 - v23;
    }

    else if (v27 == v28)
    {
      v16 = v27 + -4.0;
      sub_1AAF885A0(0);
      v22 = v27 + 4.0;
    }

    else
    {
      v67 = (v28 - v27) * 0.7 * 0.5;
      v68 = (v28 + v27) * 0.5;
      v16 = v68 - v67;
      v22 = v68 + v67;
    }

LABEL_67:
    v15 = 0;
    if (v27 == v28)
    {
      v49 = v16;
    }

    else
    {
      v49 = v27;
    }

    if (v27 == v28)
    {
      v50 = v22;
    }

    else
    {
      v50 = v28;
    }

    goto LABEL_77;
  }

  if (v13 == 3)
  {
    v18 = *(v14 + 112);
    v17 = *(v14 + 120);
    v19 = *(v14 + 128);
    v20 = *(v14 + 136);
    if (*(v14 + 64) < 0)
    {
      v51 = *(v14 + 48);
      v52 = *(v14 + 56);
      v53 = sub_1AAF27C04(v52, a2, *(v14 + 40));
      v16 = (v53 + sub_1AAF27C04(v52, a2, v51)) * 0.5;
      v21 = v18;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v16 = sub_1AAF27C04(*(v14 + 64), a2, *(v14 + 40));
      v21 = v18;
      if ((v20 & 0x80000000) == 0)
      {
LABEL_15:
        v22 = sub_1AAF27C04(v20, a2, v21);
LABEL_39:
        v15 = 0;
        goto LABEL_76;
      }
    }

    v54 = sub_1AAF27C04(v19, a2, v21);
    v22 = (v54 + sub_1AAF27C04(v19, a2, v17)) * 0.5;
    goto LABEL_39;
  }

  if (v13 == 4)
  {
    v16 = 0.0;
    if (*(v14 + 8) & 1) != 0 || (*(v14 + 24))
    {
      v15 = 1;
LABEL_45:
      v22 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      goto LABEL_77;
    }

    v15 = 0;
    v16 = *v14;
    v22 = *(v14 + 16);
LABEL_76:
    v49 = v16;
    v50 = v22;
    goto LABEL_77;
  }

  v32 = *(v14 + 40);
  v33 = *(v14 + 64);
  v34 = *(v14 + 72);
  v74[0] = *(v14 + 72);
  *&v74[1] = *(v14 + 73);
  v75 = *(v14 + 89);
  v76 = *(v14 + 105);
  v77 = *(v14 + 121);
  if (!a3)
  {
    v15 = 0;
    goto LABEL_44;
  }

  if ((v33 & 0x80000000) == 0)
  {
    if (!v33)
    {
      v35 = 0.0;
      v36 = 0.0;
      v37 = 0.0;
      if (*(a3 + 16))
      {
        v38 = sub_1AADB0454(v74);
        if (v39)
        {
          v40 = (*(a3 + 56) + 16 * v38);
          v37 = *v40;
          v36 = v40[1];
        }
      }

      v41 = *a4;
      if (*(*a4 + 16))
      {
        v42 = sub_1AADB0454(v74);
        v43 = 0.0;
        if (v44)
        {
          v45 = (*(v41 + 56) + 16 * v42);
          v43 = *v45;
          v35 = v45[1];
        }
      }

      else
      {
        v43 = 0.0;
      }

      v58 = v32 + v43;
      v59 = fmin(v32, 0.0);
      if (v32 >= 0.0)
      {
        v60 = v32 + v43;
      }

      else
      {
        v60 = v43 + 0.0;
      }

      v61 = v59 + v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = *a4;
      sub_1AADD33B0(v74, isUniquelyReferenced_nonNull_native, v60, v61);
      *a4 = v71;
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v63 = (v37 - v36) * 0.5;
          if (v32 >= 0.0)
          {
            v64 = v43 - v36;
            v65 = v32 + v43 - v36;
          }

          else
          {
            v64 = -v35;
            v65 = -v35 - v32;
          }

          v43 = v64 - v63;
          v58 = v65 - v63;
        }

        else
        {
          v58 = v32;
          v43 = 0.0;
        }
      }

      else if (v34)
      {
        v66 = -v36;
        if (v37 > -v36)
        {
          v66 = v37;
        }

        if (v32 >= 0.0)
        {
          v58 = v58 / v66 * 100.0;
          v43 = fmin(v43 / v66 * 100.0, 100.0);
          if (v58 >= 100.0)
          {
            v58 = 100.0;
          }
        }

        else
        {
          v58 = (v32 + v35) / v66 * 100.0;
          v43 = fmax(v35 / v66 * 100.0, -100.0);
          if (v58 < -100.0)
          {
            v58 = -100.0;
          }
        }
      }

      else if (v32 < 0.0)
      {
        v58 = v32 + v35;
        v43 = v35;
      }

      v70 = v43;
      v69 = *a2;
      (*a2)(&v71, &v70);
      v16 = v71;
      v70 = v58;
      v69(&v71, &v70);
      v15 = 0;
      v22 = v71;
      goto LABEL_76;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AAF28530(_OWORD *a1, uint64_t a2)
{
  v3 = a1[7];
  v16[6] = a1[6];
  v17[0] = v3;
  *(v17 + 9) = *(a1 + 121);
  v4 = a1[3];
  v16[2] = a1[2];
  v16[3] = v4;
  v5 = a1[5];
  v16[4] = a1[4];
  v16[5] = v5;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  if (sub_1AAE63EF0(v16) == 5)
  {
    v7 = sub_1AAD357A8(v16);
    v18 = *(v7 + 72);
    v8 = v18;
    v19 = *(v7 + 73);
    v20 = *(v7 + 89);
    v21 = *(v7 + 105);
    v22 = *(v7 + 121);
    if (v18 == 3)
    {
      v9 = 0;
      v10 = 1;
    }

    else
    {
      v11 = 0uLL;
      if (*(a2 + 16))
      {
        v12 = sub_1AADB0454(&v18);
        v11 = 0uLL;
        if (v13)
        {
          v11 = *(*(a2 + 56) + 16 * v12);
        }
      }

      if (v8)
      {
        if (v8 == 1)
        {
          v14 = -v11.f64[1];
          if (v11.f64[0] > -v11.f64[1])
          {
            v14 = v11.f64[0];
          }

          v11 = vmulq_f64(vdivq_f64(v11, vdupq_lane_s64(*&v14, 0)), vdupq_n_s64(0x4059000000000000uLL));
        }

        else
        {
          v11 = vmulq_n_f64(xmmword_1AAFA2D60, vsubq_f64(v11, vdupq_laneq_s64(v11, 1)).f64[0]);
        }
      }

      v10 = v11.f64[1] == 0.0;
      v9 = (v11.f64[0] == 0.0) << 8;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return v9 | v10;
}

void sub_1AAF28674(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v233 = a1;
  v234 = a2;
  v229 = a4;
  v225 = sub_1AAF8E3E4();
  v228 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v224 = &v224 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RenderableAxisLabel(0);
  v244 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v240 = &v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  *&v235 = &v224 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v237 = &v224 - v11;
  v12 = *(a3 + 56);
  v232 = *(a3 + 48);
  v239 = v12;
  v13 = *(a3 + 112);
  v14 = *(a3 + 120);
  v15 = *(v13 + 16);
  v242 = v14;
  v243 = a3;
  v245 = v16;
  if (v15)
  {
    v17 = 0;
    v18 = v13 + 160;
    v230 = MEMORY[0x1E69E7CC0];
    v238 = v15;
    v227 = v13 + 160;
    do
    {
      v19 = v233;
      LODWORD(v231) = *(v233 + 41);
      v20 = (v18 + 136 * v17);
      v21 = v17;
      while (1)
      {
        if (v21 >= v15)
        {
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
          return;
        }

        if (__OFADD__(v21, 1))
        {
          goto LABEL_193;
        }

        v22 = *(v20 - 16);
        v23 = *(v20 - 15);
        v24 = *(v20 - 9);
        v25 = *(v20 - 8);
        v26 = *(v20 - 7);
        v27 = a3;
        v28 = *(v20 - 6);
        v29 = *(v20 - 5);
        v30 = *(v20 - 32);
        v31 = *(v20 - 2);
        v32 = *(v20 - 1);
        v33 = *v20;
        v34 = *(v27 + 256);
        v314 = *(v27 + 240);
        v315 = v34;
        v316 = *(v27 + 272);
        v35 = *(v27 + 192);
        v312[0] = *(v27 + 176);
        v312[1] = v35;
        v36 = *(v27 + 224);
        v312[2] = *(v27 + 208);
        v313 = v36;
        v37 = *&v312[0];
        if (!*&v312[0])
        {
          v14 = v242;
          a3 = v243;
          goto LABEL_45;
        }

        v38 = 0.0;
        v241 = (v21 + 1);
        if (v314 == 255 || (v314 & 1) != 0)
        {
          v39 = 0.0;
        }

        else
        {
          v40 = *(*(&v313 + 1) + 16);
          v39 = 0.0;
          if (v40)
          {
            v39 = *(*(&v313 + 1) + 32);
            v38 = *(*(&v313 + 1) + 8 * v40 + 24);
          }
        }

        v236 = v38;
        *&v246 = v23;

        sub_1AAF2CB38(v312, &v264, sub_1AACFAA34);
        v37(&v264, &v246);
        v41 = *&v264;
        if (v28)
        {
          v42 = HIDWORD(v25);
        }

        else
        {
          v43 = [objc_opt_self() currentDevice];
          v44 = [v43 userInterfaceIdiom];

          if (v44)
          {
            sub_1AAF8D914();
            if (v44 == 1)
            {
              v24 = v283;
              LODWORD(v25) = v284;
              LODWORD(v42) = v285;
              v26 = v286;
              v28 = v287;
              v29 = v288;
            }

            else
            {
              v24 = v295;
              LODWORD(v25) = v296;
              LODWORD(v42) = v297;
              v26 = v298;
              v28 = v299;
              v29 = v300;
            }
          }

          else
          {
            sub_1AAF8D914();
            v24 = v289;
            LODWORD(v25) = v290;
            LODWORD(v42) = v291;
            v26 = v292;
            v28 = v293;
            v29 = v294;
          }
        }

        v6 = v245;
        if (v30)
        {
          break;
        }

        if ((*(v19 + 42) & 1) == 0 && (LOBYTE(v231) & 1) == 0)
        {
          v231 = v239;
          v29 = v239;
          goto LABEL_25;
        }

        sub_1AAF2C63C(v312, sub_1AACFAA34);

        ++v21;
        v20 += 17;
        v15 = v238;
        a3 = v243;
        if (v241 == v238)
        {
          v14 = v242;
          goto LABEL_45;
        }
      }

      v231 = 0.0;
LABEL_25:
      v45 = v239 + v33;
      if (v30)
      {
        v45 = v239;
      }

      v226 = v45;
      v46 = swift_allocObject();
      v47 = qword_1ED9B09B8;

      v48 = v47 == -1;
      v14 = v242;
      if (!v48)
      {
        swift_once();
      }

      v49 = v31 + v41;
      v50 = qword_1ED9C3448;
      v51 = v231 + v32;
      v52 = v32 + v226;
      LOBYTE(v264) = 0;
      *(v46 + 16) = v22;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0;
      *(v46 + 40) = 0;
      *(v46 + 48) = v49;
      *(v46 + 56) = v51;
      *(v46 + 64) = v49;
      *(v46 + 72) = v52;
      *(v46 + 80) = v50;
      *(v46 + 120) = 0;
      *(v46 + 128) = v24;
      *(v46 + 136) = v25;
      *(v46 + 140) = v42;
      *(v46 + 144) = v26;
      *(v46 + 152) = v28;
      *(v46 + 160) = v29;
      *(v46 + 168) = 0x3FF0000000000000;
      *(v46 + 176) = 0;
      *(v46 + 184) = 0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
      }

      v54 = *(v230 + 2);
      v53 = *(v230 + 3);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v230 = sub_1AAD6B22C((v53 > 1), v54 + 1, 1, v230);
      }

      v56 = v230;
      *(v230 + 2) = v55;
      *&v56[8 * v54 + 32] = v46 | 0x2000000000000000;
      if (v49 == v39)
      {
        v6 = v245;
        if (*(v233 + 9) == 2)
        {
          v57 = swift_allocObject();
          *(v57 + 80) = v50;
          *(v57 + 120) = 0;
          *(v57 + 16) = v22;
          *(v57 + 24) = 0;
          *(v57 + 32) = 0;
          *(v57 + 40) = 0;
          v58 = v236;
          *(v57 + 48) = v236;
          *(v57 + 56) = v51;
          *(v57 + 64) = v58;
          *(v57 + 72) = v52;
          *(v57 + 128) = v24;
          *(v57 + 136) = v25;
          *(v57 + 140) = v42;
          *(v57 + 144) = v26;
          *(v57 + 152) = v28;
          *(v57 + 160) = v29;
          *(v57 + 168) = 0x3FF0000000000000;
          *(v57 + 176) = 0;
          *(v57 + 184) = 0;
          v59 = *(v230 + 3);

          if ((v54 + 2) > (v59 >> 1))
          {
            v230 = sub_1AAD6B22C((v59 > 1), v54 + 2, 1, v230);
          }

          a3 = v243;
          v18 = v227;
          sub_1AAF2C63C(v312, sub_1AACFAA34);
          v60 = v230;
          *(v230 + 2) = v54 + 2;
          *&v60[8 * v55 + 32] = v57 | 0x2000000000000000;
          v6 = v245;
        }

        else
        {
          v18 = v227;

          sub_1AAF2C63C(v312, sub_1AACFAA34);

          a3 = v243;
        }
      }

      else
      {

        sub_1AAF2C63C(v312, sub_1AACFAA34);

        a3 = v243;
        v6 = v245;
        v18 = v227;
      }

      v15 = v238;
      v17 = v241;
    }

    while (v241 != v238);
  }

  else
  {
    v230 = MEMORY[0x1E69E7CC0];
  }

LABEL_45:
  v61 = *(a3 + 160);
  v238 = *(a3 + 168);
  v62 = *(v61 + 16);
  if (v62 == 0.0)
  {
    goto LABEL_79;
  }

  v63 = 0;
  v64 = a3 + 280;
  *&v65 = v61 + 152;
  v236 = v62;
  v231 = v65;
  do
  {
    v66 = (*&v65 + 136 * v63);
    while (1)
    {
      if (v63 >= *&v62)
      {
        goto LABEL_194;
      }

      if (__OFADD__(v63, 1))
      {
        goto LABEL_195;
      }

      v73 = *(v66 - 15);
      v74 = *(v66 - 14);
      v70 = *(v66 - 8);
      v69 = *(v66 - 7);
      v67 = *(v66 - 6);
      v71 = *(v66 - 5);
      v72 = *(v66 - 4);
      v75 = *(v66 - 24);
      v77 = *(v66 - 1);
      v76 = *v66;
      v78 = *(v64 + 80);
      v309 = *(v64 + 64);
      v310 = v78;
      v311 = *(v64 + 96);
      v79 = *(v64 + 16);
      v307[0] = *v64;
      v307[1] = v79;
      v80 = *(v64 + 32);
      v308 = *(v64 + 48);
      v307[2] = v80;
      v81 = *&v307[0];
      if (!*&v307[0])
      {
        v14 = v242;
        a3 = v243;
        goto LABEL_79;
      }

      v82 = 0;
      v241 = (v63 + 1);
      if (v309 == 255 || (v309 & 1) != 0)
      {
        v83 = 0.0;
      }

      else
      {
        v84 = *(*(&v308 + 1) + 16);
        v83 = 0.0;
        if (v84)
        {
          v83 = *(*(&v308 + 1) + 32);
          v82 = *(*(&v308 + 1) + 8 * v84 + 24);
        }
      }

      *&v246 = v74;

      sub_1AAF2CB38(v307, &v264, sub_1AACFAA34);
      v81(&v264, &v246);
      v85 = *&v264;
      if (!v71)
      {
        sub_1AAF8D914();
        v67 = v304;
        LODWORD(v68) = v303;
        LODWORD(v69) = v302;
        v70 = v301;
        v71 = v305;
        v72 = v306;
        v6 = v245;
        if (v75)
        {
          break;
        }

        goto LABEL_49;
      }

      v68 = HIDWORD(v69);
      v6 = v245;
      if (v75)
      {
        break;
      }

LABEL_49:

      sub_1AAF2C63C(v307, sub_1AACFAA34);

      ++v63;
      v66 += 17;
      v62 = v236;
      v14 = v242;
      a3 = v243;
      if (v241 == *&v236)
      {
        goto LABEL_79;
      }
    }

    v86 = v76 + v85;
    v87 = v77 + 0.0;
    v88 = v77 + v232;
    if (v86 == v83 && v234[9] == 2)
    {
      v89 = v68;
      v90 = swift_allocObject();
      v91 = *(v243 + 40);
      v92 = qword_1ED9B09B8;

      if (v92 != -1)
      {
        swift_once();
      }

      v93 = qword_1ED9C3448;
      LOBYTE(v264) = 0;
      *(v90 + 16) = v73;
      *(v90 + 24) = 0;
      *(v90 + 32) = 0;
      *(v90 + 40) = v91;
      *(v90 + 48) = v87;
      *(v90 + 56) = v82;
      *(v90 + 64) = v88;
      *(v90 + 72) = v82;
      *(v90 + 80) = v93;
      *(v90 + 120) = 0;
      *(v90 + 128) = v70;
      *(v90 + 136) = v69;
      *(v90 + 140) = v89;
      *(v90 + 144) = v67;
      *(v90 + 152) = v71;
      *(v90 + 160) = v72;
      *(v90 + 168) = 0x3FF0000000000000;
      *(v90 + 176) = 0;
      *(v90 + 184) = 0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
      }

      v68 = *(v230 + 2);
      v94 = *(v230 + 3);
      if (v68 >= v94 >> 1)
      {
        v230 = sub_1AAD6B22C((v94 > 1), v68 + 1, 1, v230);
      }

      v95 = v230;
      *(v230 + 2) = v68 + 1;
      *&v95[8 * v68 + 32] = v90 | 0x2000000000000000;
      LODWORD(v68) = v89;
    }

    else
    {
      v72 = v232;
    }

    v96 = swift_allocObject();
    if (qword_1ED9B09B8 != -1)
    {
      swift_once();
    }

    v97 = qword_1ED9C3448;
    LOBYTE(v264) = 0;
    *(v96 + 16) = v73;
    *(v96 + 24) = 0;
    *(v96 + 32) = 0;
    *(v96 + 40) = 0;
    *(v96 + 48) = v87;
    *(v96 + 56) = v86;
    *(v96 + 64) = v88;
    *(v96 + 72) = v86;
    *(v96 + 80) = v97;
    *(v96 + 120) = 0;
    *(v96 + 128) = v70;
    *(v96 + 136) = v69;
    *(v96 + 140) = v68;
    *(v96 + 144) = v67;
    *(v96 + 152) = v71;
    *(v96 + 160) = v72;
    *(v96 + 168) = 0x3FF0000000000000;
    *(v96 + 176) = 0;
    *(v96 + 184) = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
    }

    v14 = v242;
    a3 = v243;
    v99 = *(v230 + 2);
    v98 = *(v230 + 3);
    if (v99 >= v98 >> 1)
    {
      v230 = sub_1AAD6B22C((v98 > 1), v99 + 1, 1, v230);
    }

    sub_1AAF2C63C(v307, sub_1AACFAA34);
    v100 = v230;
    *(v230 + 2) = v99 + 1;
    *&v100[8 * v99 + 32] = v96 | 0x2000000000000000;
    v62 = v236;
    v63 = v241;
    v6 = v245;
    v65 = v231;
  }

  while (v241 != *&v236);
LABEL_79:
  v101 = v14[2];

  if (v101)
  {
    v102 = 0;
    v241 = v101;
    while (1)
    {
      if (v102 >= v101)
      {
        goto LABEL_197;
      }

      if (__OFADD__(v102, 1))
      {
        goto LABEL_198;
      }

      if (v102 >= v14[2])
      {
        goto LABEL_199;
      }

      v242 = (v102 + 1);
      v103 = v6;
      v104 = (*(v244 + 80) + 32) & ~*(v244 + 80);
      v105 = v14;
      v106 = *(v244 + 72);
      v107 = v237;
      sub_1AAF2CB38(v14 + v104 + v106 * v102, v237, type metadata accessor for RenderableAxisLabel);
      v108 = *(a3 + 256);
      v268 = *(a3 + 240);
      v269 = v108;
      v270 = *(a3 + 272);
      v109 = *(a3 + 192);
      v264 = *(a3 + 176);
      v265 = v109;
      v110 = *(a3 + 224);
      v266 = *(a3 + 208);
      v267 = v110;
      v111 = v264;
      if (!v264)
      {
        break;
      }

      v112 = v107 + *(v103 + 24);
      if (*(v112 + 16))
      {
        sub_1AAF2C63C(v107, type metadata accessor for RenderableAxisLabel);
        ++v102;
        v101 = v241;
        v14 = v105;
        v6 = v103;
        if (v242 == v241)
        {
          goto LABEL_98;
        }
      }

      else
      {
        *&v253 = *(v112 + 8);
        v113 = *(a3 + 256);
        v250 = *(a3 + 240);
        v251 = v113;
        v252 = *(a3 + 272);
        v114 = *(a3 + 192);
        v246 = *(a3 + 176);
        v247 = v114;
        v115 = *(a3 + 224);
        v248 = *(a3 + 208);
        v249 = v115;
        sub_1AAEDA330(&v246, &v276);
        v111(&v276, &v253);
        v116 = v276;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1AADB8284(v105);
        }

        v117 = v237;
        v118 = v105[2];
        v119 = v245;
        if (v102 >= v118)
        {
          goto LABEL_202;
        }

        v120 = v105 + v104;
        v121 = v105 + v104 + v106 * v102;
        *&v121[v245[8]] = v116;
        v121[v119[10]] = v118 - 1 == v102;
        v122 = v119;
        v123 = v102 - 1;
        if (v102 - 1 >= v118)
        {
          sub_1AAF2C63C(&v264, sub_1AACFAA34);
          sub_1AAF2C63C(v117, type metadata accessor for RenderableAxisLabel);
          v6 = v122;
          v14 = v105;
        }

        else
        {
          v124 = v119[8];
          v125 = *&v121[v124];
          v126 = &v120[v106 * v123];
          v127 = *&v126[v124];
          sub_1AAF2C63C(&v264, sub_1AACFAA34);
          sub_1AAF2C63C(v117, type metadata accessor for RenderableAxisLabel);
          if (v123 >= v105[2])
          {
            goto LABEL_203;
          }

          v14 = v105;
          *&v126[*(v122 + 36)] = v125 - v127;
          v6 = v122;
        }

        v101 = v241;
        v102 = v242;
        if (v242 == v241)
        {
          goto LABEL_98;
        }
      }
    }

    sub_1AAF2C63C(v107, type metadata accessor for RenderableAxisLabel);
    v14 = v105;
    v6 = v103;
  }

LABEL_98:
  v242 = v14;
  v128 = v14[2];
  if (!v128)
  {
    goto LABEL_146;
  }

  v129 = 0;
  v227 = v128 - 1;
  v130 = 0.5;
  v131 = 4.0;
  v132 = qword_1ED9AE520;
  v133 = &type metadata for PrimitiveAxisLabel;
  v241 = v128;
  while (2)
  {
    v134 = v129;
    v135 = v242;
    v136 = v235;
    while (2)
    {
      if (v134 >= v135[2])
      {
        goto LABEL_196;
      }

      sub_1AAF2CB38(v135 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v134, *&v136, type metadata accessor for RenderableAxisLabel);
      v137 = *(a3 + 192);
      v276 = *(a3 + 176);
      v277 = v137;
      v138 = *(a3 + 256);
      v280 = *(a3 + 240);
      v281 = v138;
      v282 = *(a3 + 272);
      v139 = *(a3 + 224);
      v278 = *(a3 + 208);
      v279 = v139;
      v140 = v276;
      if (!v276)
      {
        sub_1AAF2C63C(*&v136, type metadata accessor for RenderableAxisLabel);
        goto LABEL_146;
      }

      v141 = (*&v136 + *(v6 + 24));
      if (v141[16])
      {
        sub_1AAF2C63C(*&v136, type metadata accessor for RenderableAxisLabel);
        goto LABEL_102;
      }

      v142 = v133;
      v143 = v132;
      v144 = *&v277;
      v145 = BYTE8(v277);
      *&v246 = *(v141 + 1);
      v146 = *(a3 + 256);
      v257 = *(a3 + 240);
      v258 = v146;
      v259 = *(a3 + 272);
      v147 = *(a3 + 192);
      v253 = *(a3 + 176);
      v254 = v147;
      v148 = *(a3 + 224);
      v255 = *(a3 + 208);
      v256 = v148;
      sub_1AAEDA330(&v253, &v264);
      v140(&v264, &v246);
      v149 = *&v264;
      v150 = (*&v136 + v245[7]);
      v151 = *v150;
      v152 = *v150 * v130;
      v153 = v152 + v131;
      v154 = v233;
      v155 = *(v233 + 9);
      LODWORD(v237) = v145;
      v236 = v144;
      if (v155 == 2)
      {
        v156 = v144 * v130;
        if (v145)
        {
          v156 = 0.0;
        }

        v157 = *&v264 + v156 - v152 + v131;
      }

      else if (*(v233 + 41))
      {
        v157 = *&v264;
      }

      else
      {
        v157 = *&v264 + v153;
      }

      v158 = v150[1];
      v159 = *(v233 + 42);
      v136 = v235;
      v132 = v143;
      v133 = v142;
      sub_1AAF2C8E8(*&v235 + 8, &v264, v143, v142);
      if (!v264)
      {
        sub_1AAF2C63C(*&v136, type metadata accessor for RenderableAxisLabel);
        sub_1AAF2C63C(&v276, sub_1AACFAA34);
        sub_1AAF2C968(&v264, v143, v142);
        v6 = v245;
        v128 = v241;
        v135 = v242;
        goto LABEL_102;
      }

      v160 = v158 * v130 + v131;
      v161 = v239;
      v162 = v239 - v160;
      v261 = v273;
      v262 = v274;
      v263 = v275;
      v260[0] = v271;
      v260[1] = v272;
      sub_1AAEC8C04(v260, &v246);
      sub_1AAD57D44(&v264);
      if (v159)
      {
        goto LABEL_118;
      }

      v163 = v161 + v160;
      if (*(v154 + 41) & 1) != 0 || (*(v154 + 40))
      {
        v162 = v163;
LABEL_118:
        v136 = v235;
      }

      else
      {
        v231 = *(&v263 + 1);
        v165 = *&v263;
        sub_1AAF8F214();
        v226 = v165;
        v166 = sub_1AAF8F234();
        v136 = v235;
        if ((v166 & 1) == 0)
        {
          sub_1AAF8F224();
          if (sub_1AAF8F234())
          {
            v167 = v236;
            if (v237)
            {
              v167 = 0.0;
            }

            v157 = v149 + v167 - v153;
          }

          else
          {
            sub_1AAF8F204();
            v168 = sub_1AAF8F234();
            v169 = v236;
            if (v237)
            {
              v169 = 0.0;
            }

            v170 = v149 + v169 - v153;
            if (v168)
            {
              v157 = v170;
            }

            v162 = v163;
          }
        }
      }

      v132 = v143;
      v133 = v142;
      sub_1AAF2C8E8(*&v136 + 8, &v246, v143, v142);
      v128 = v241;
      v135 = v242;
      v130 = 0.5;
      if (!v246)
      {
        sub_1AAF2C968(&v246, v132, v133);
LABEL_126:
        v6 = v245;
        goto LABEL_127;
      }

      v164 = BYTE1(v247);
      sub_1AAD57D44(&v246);
      if (v164 == 2 || (v164 & 1) == 0)
      {
        goto LABEL_126;
      }

      v6 = v245;
      if ((*(*&v136 + v245[10]) & 1) == 0)
      {
        v157 = v149 + *(*&v136 + v245[9]) * 0.5 - v153;
      }

LABEL_127:
      if (v157 > v232)
      {
        sub_1AAF2C63C(*&v136, type metadata accessor for RenderableAxisLabel);
        sub_1AAF2C63C(&v276, sub_1AACFAA34);
        sub_1AAECDC58(v260);
        v131 = 4.0;
LABEL_102:
        if (v128 == ++v134)
        {
          goto LABEL_146;
        }

        continue;
      }

      break;
    }

    v171 = v157 + *&v262;
    v172 = v162 + *(&v262 + 1);
    v173 = swift_allocObject();
    v174 = **&v136;
    *&v246 = *(&v261 + 1);

    v175 = sub_1AAF8EF44();
    *(v173 + 16) = v174;
    *(v173 + 24) = 0;
    *(v173 + 32) = 0;
    *(v173 + 40) = 0;
    *(v173 + 48) = 0;
    *(v173 + 56) = 0;
    *(v173 + 64) = v171;
    *(v173 + 72) = v172;
    *(v173 + 80) = v151;
    *(v173 + 88) = v158;
    *(v173 + 96) = v175;
    *(v173 + 104) = 0x3FF0000000000000;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
    }

    v177 = *(v230 + 2);
    v176 = *(v230 + 3);
    v131 = 4.0;
    if (v177 >= v176 >> 1)
    {
      v230 = sub_1AAD6B22C((v176 > 1), v177 + 1, 1, v230);
    }

    v129 = v134 + 1;
    sub_1AAECDC58(v260);
    sub_1AAF2C63C(&v276, sub_1AACFAA34);
    sub_1AAF2C63C(*&v235, type metadata accessor for RenderableAxisLabel);
    v178 = v230;
    *(v230 + 2) = v177 + 1;
    *&v178[8 * v177 + 32] = v173 | 0x9000000000000000;
    a3 = v243;
    v6 = v245;
    if (v227 != v134)
    {
      continue;
    }

    break;
  }

LABEL_146:
  v179 = v238[2];
  if (v179)
  {
    v180 = 0;
    v181 = (a3 + 280);
    v233 = v228 + 16;
    while (2)
    {
      v182 = v180;
LABEL_151:
      if (v182 >= v179)
      {
        goto LABEL_200;
      }

      v180 = v182 + 1;
      if (__OFADD__(v182, 1))
      {
        goto LABEL_201;
      }

      v183 = v240;
      sub_1AAF2CB38(v238 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v182, v240, type metadata accessor for RenderableAxisLabel);
      v184 = v181[5];
      v250 = v181[4];
      v251 = v184;
      v252 = *(v181 + 12);
      v185 = v181[1];
      v246 = *v181;
      v247 = v185;
      v186 = v181[3];
      v248 = v181[2];
      v249 = v186;
      v187 = v246;
      if (!v246)
      {
        sub_1AAF2C63C(v183, type metadata accessor for RenderableAxisLabel);
        goto LABEL_191;
      }

      v188 = v183 + *(v6 + 24);
      if (*(v188 + 32))
      {
        sub_1AAF2C63C(v183, type metadata accessor for RenderableAxisLabel);
      }

      else
      {
        *&v253 = *(v188 + 24);
        v189 = v181[5];
        v280 = v181[4];
        v281 = v189;
        v282 = *(v181 + 12);
        v190 = v181[1];
        v276 = *v181;
        v277 = v190;
        v191 = v181[3];
        v278 = v181[2];
        v279 = v191;
        sub_1AAEDA330(&v276, &v264);
        v187(&v264, &v253);
        v192 = v240;
        v6 = v245;
        v193 = *&v264;
        v194 = (v240 + v245[7]);
        v196 = *v194;
        v195 = v194[1];
        v197 = v195 * 0.5 + 4.0;
        v198 = *v194 * 0.5 + 4.0;
        v199 = *&v264 + v197;
        if (v234[9] == 2)
        {
          v200 = *&v264 + v197;
          v201 = *v194 * 0.5 + 4.0;
        }

        else
        {
          v202 = -v198;
          if ((v234[42] & 1) == 0)
          {
            v202 = *v194 * 0.5 + 4.0;
          }

          v201 = v232 + v202;
          if (v234[40])
          {
            v200 = *&v264 + v197;
          }

          else
          {
            v200 = *&v264;
          }
        }

        v241 = *(v243 + 16);
        v237 = *(v243 + 40);
        sub_1AAF2C8E8(v240 + 8, &v264, qword_1ED9AE520, &type metadata for PrimitiveAxisLabel);
        if (v264)
        {
          v255 = v273;
          v256 = v274;
          v257 = v275;
          v253 = v271;
          v254 = v272;
          sub_1AAEC8C04(&v253, v260);
          sub_1AAD57D44(&v264);
          if (v234[42])
          {
            v199 = v200;
            goto LABEL_165;
          }

          v203 = v240;
          v204 = v239;
          if (v234[41] & 1) != 0 || (v234[40])
          {
            v199 = v200;
          }

          else
          {
            v235 = v201;
            v236 = *(&v257 + 1);
            v206 = *&v257;
            sub_1AAF8F214();
            v231 = v206;
            if (sub_1AAF8F234())
            {
              v199 = v193 - v197;
              v203 = v240;
              v204 = v239;
              v201 = v235;
            }

            else
            {
              sub_1AAF8F1F4();
              v207 = sub_1AAF8F234();
              v201 = v235;
              if ((v207 & 1) == 0)
              {
                sub_1AAF8F224();
                v208 = sub_1AAF8F234();
                v209 = v232 - v198;
                if (v208)
                {
                  v199 = v193 - v197;
                  v201 = v209;
                }

                else
                {
                  sub_1AAF8F204();
                  if (sub_1AAF8F234())
                  {
                    v201 = v209;
                  }

                  else
                  {
                    v199 = v200;
                  }
                }
              }

LABEL_165:
              v203 = v240;
              v204 = v239;
            }
          }

          if (v199 >= 0.0 && v199 <= v204)
          {
            v210 = v201 + *&v256;
            v211 = v199 + *(&v256 + 1);
            v212 = v203;
            v213 = swift_allocObject();
            v214 = *v212;
            v215 = type metadata accessor for DisplayListProxyViewContainer(0);
            (*v233)(v224, v188 + *(v215 + 24), v225);

            v216 = sub_1AAF8EF44();
            *(v213 + 16) = v214;
            *(v213 + 24) = 0;
            *(v213 + 32) = 0;
            *(v213 + 40) = 0;
            *(v213 + 42) = v260[0];
            *(v213 + 46) = WORD2(v260[0]);
            v217 = v237;
            *(v213 + 48) = v241;
            *(v213 + 56) = v217;
            *(v213 + 64) = v210;
            *(v213 + 72) = v211;
            *(v213 + 80) = v196;
            *(v213 + 88) = v195;
            *(v213 + 96) = v216;
            *(v213 + 104) = 0x3FF0000000000000;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
            }

            v220 = *(v230 + 2);
            v219 = *(v230 + 3);
            if (v220 >= v219 >> 1)
            {
              v230 = sub_1AAD6B22C((v219 > 1), v220 + 1, 1, v230);
            }

            sub_1AAF2C63C(&v246, sub_1AACFAA34);
            sub_1AAECDC58(&v253);
            sub_1AAF2C63C(v240, type metadata accessor for RenderableAxisLabel);
            v221 = v230;
            *(v230 + 2) = v220 + 1;
            *&v221[8 * v220 + 32] = v213 | 0x9000000000000000;
            v6 = v245;
            if (v180 != v179)
            {
              continue;
            }

            goto LABEL_191;
          }

          sub_1AAF2C63C(v203, type metadata accessor for RenderableAxisLabel);
          sub_1AAF2C63C(&v246, sub_1AACFAA34);
          sub_1AAECDC58(&v253);
        }

        else
        {
          sub_1AAF2C63C(v192, type metadata accessor for RenderableAxisLabel);
          sub_1AAF2C63C(&v246, sub_1AACFAA34);
          sub_1AAF2C968(&v264, qword_1ED9AE520, &type metadata for PrimitiveAxisLabel);
        }
      }

      break;
    }

    ++v182;
    if (v180 == v179)
    {
      goto LABEL_191;
    }

    goto LABEL_151;
  }

LABEL_191:
  sub_1AAEE23A8(v230, &v264);

  v222 = v265;
  v223 = v229;
  *v229 = v264;
  v223[1] = v222;
  v223[2] = v266;
}

void sub_1AAF29F9C(uint64_t a1, char **a2)
{
  v230 = type metadata accessor for ChartDisplayList.RectangleItem(0);
  MEMORY[0x1EEE9AC00](v230);
  v232 = (&v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v229 = type metadata accessor for ChartDisplayList.BarItem(0);
  MEMORY[0x1EEE9AC00](v229);
  v231 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF26348(0, &qword_1ED9B2E80, 255, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v228 = &v204 - v7;
  v8 = sub_1AAF8DD44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v217 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1AAF8DE34();
  MEMORY[0x1EEE9AC00](v237);
  MEMORY[0x1EEE9AC00](v11);
  v224 = &v204 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v204 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v213 = &v204 - v17;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v223 = &v204 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v204 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v212 = &v204 - v25;
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](&v204 - v27);
  v211 = &v204 - v28;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v222 = &v204 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v221 = &v204 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v220 = &v204 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v227 = &v204 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v210 = &v204 - v39;
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  v209 = &v204 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v219 = &v204 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v218 = &v204 - v52;
  v53 = *(a1 + 16);
  if (v53)
  {
    v233 = 0;
    v234 = v8;
    v54 = (a1 + 32);
    v226 = (v9 + 48);
    v207 = (v9 + 8);
    v208 = (v9 + 32);
    v235 = (v49 + 8);
    v236 = (v49 + 32);
    v215 = v51;
    v216 = v50;
    v238 = v23;
    v239 = v15;
    v205 = v48;
    v206 = v46;
    v214 = v47;
    v240 = a2;
    do
    {
      v60 = v54 + 1;
      v61 = *v54;
      v62 = *a2;
      v242 = v60;
      v243 = (v61 & 0xFFFFFFFFFFFFFFFLL);

      sub_1AAF8DE44();
      v262[0] = v63;
      sub_1AAF8DED4();
      v64 = sub_1AAF8DEA4();
      v65 = v64;
      v66 = v61 >> 60;
      if ((v61 >> 60) > 4)
      {
        if (v66 > 6)
        {
          v67 = v15;
          v68 = v23;
          if (v66 == 7)
          {
            v55 = v243[5];
            v286 = v243[4];
            v287 = v55;
            v56 = v243[7];
            v288 = v243[6];
            v289 = v56;
            v57 = v243[2];
            v283 = v243[1];
            v284 = v57;
            v285 = v243[3];
            *&v257 = v62;
            MEMORY[0x1EEE9AC00](v64);
            *(&v204 - 2) = &v283;
            sub_1AAEEBACC(&v283, &v244);

            v58 = v233;
            sub_1AAF8DCF4();
            v233 = v58;
            v54 = v242;
            v59 = v239;
            v8 = v234;
            sub_1AAF29F9C(*(&v284 + 1), &v257);
            sub_1AAEEBE84(&v283);

            v23 = v68;
            v15 = v59;
          }

          else if (v66 == 8)
          {
            sub_1AAEE2D40((v243 + 1), &v244);
            sub_1AAF29F9C(*&v246, a2);
            sub_1AAEE2D78(&v244);
            v54 = v242;
            v15 = v67;
          }

          else
          {
            v241 = v64;
            *&v244 = *(v243 + 2);
            sub_1AAD80D58();
            swift_bridgeObjectRetain_n();

            v116 = v228;
            sub_1AAF8DD34();

            if ((*v226)(v116, 1, v8) == 1)
            {

              sub_1AAF2C9D8(v116, &qword_1ED9B2E80, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
              v23 = v238;
              a2 = v240;
              v54 = v242;
              v15 = v67;
            }

            else
            {
              v143 = v217;
              (*v208)(v217, v116, v8);
              v144 = v240;
              sub_1AAF8DE54();
              v225 = v53;
              sub_1AAF8F264();
              v53 = v225;
              sub_1AAF8DD74();

              a2 = v144;

              v145 = v143;
              v15 = v67;
              (*v207)(v145, v8);
              v23 = v238;
              v54 = v242;
            }
          }

          goto LABEL_4;
        }

        if (v66 == 5)
        {
          v70 = swift_projectBox();
          v71 = v231;
          sub_1AAF2CB38(v70, v231, type metadata accessor for ChartDisplayList.BarItem);
          v72 = v71;
          v73 = v229;
          if (*(v72 + *(v229 + 64)))
          {
            v241 = v65;
            v255[0] = v62;
            v74 = v72[4];
            v75 = v72[5];
            if (v75 >= v74)
            {
              v76 = v72[4];
            }

            else
            {
              v76 = v72[5];
            }

            v77 = v72[6];
            v78 = v72[7];
            if (v78 >= v77)
            {
              v79 = v72[6];
            }

            else
            {
              v79 = v72[7];
            }

            v80 = vabdd_f64(v75, v74);
            v81 = vabdd_f64(v78, v77);
            v82 = v72;

            v296.origin.x = v76;
            v296.origin.y = v79;
            v296.size.width = v80;
            v296.size.height = v81;
            v297 = CGRectOffset(v296, 40.0, 40.0);
            CGRectOffset(v297, v82[2], v82[3]);
            sub_1AAF8F014();
            sub_1AAF8DD54();
            sub_1AAD12C10(&v277);
            v261 = v255[0];
            v83 = *(v73 + 60);
            v84 = (v82 + v83);
            v85 = *(v82 + v83 + 24);
            v86 = *(v82 + v83 + 32);
            if (v86 >= v85)
            {
              v87 = *(v82 + v83 + 24);
            }

            else
            {
              v87 = *(v82 + v83 + 32);
            }

            v88 = v84[5];
            v89 = v84[6];
            if (v89 >= v88)
            {
              v90 = v84[5];
            }

            else
            {
              v90 = v84[6];
            }

            v91 = vabdd_f64(v86, v85);
            v92 = vabdd_f64(v89, v88);
            v225 = v255[0];

            v298.origin.x = v87;
            v298.origin.y = v90;
            v298.size.width = v91;
            v298.size.height = v92;
            v299 = CGRectOffset(v298, 40.0, 40.0);
            CGRectOffset(v299, v84[1], v84[2]);
            *(&v204 - 6) = MEMORY[0x1EEE9AC00](v93);
            *(&v204 - 5) = v94;
            *(&v204 - 4) = v95;
            *(&v204 - 3) = v96;
            *(&v204 - 2) = v84;
            sub_1AAF8E964();
            sub_1AAF8DD54();
            sub_1AAD12C10(&v278);
            sub_1AAF8DE54();
            sub_1AAEE15E8(v279);
            sub_1AAEEBB28(v82 + *(v73 + 52), &v244);
            if (LOBYTE(v247.origin.y))
            {
              sub_1AACBB198(&v244, &v257);
              sub_1AACBB42C(&v257, v258);
              v97 = v215;
              sub_1AAF8DE24();
              v98.n128_f64[0] = sub_1AACB634C(&v257);
            }

            else
            {
              v97 = v215;
              sub_1AAF8DE14();
            }

            v185 = v234;
            v186 = v239;
            v187 = v242;
            v188 = v237;
            v189 = v223;
            (*v236)(v223, v97, v237, v98);
            sub_1AAF8DDA4();
            sub_1AAD12C10(v279);

            (*v235)(v189, v188);
          }

          else
          {
            v255[0] = v62;
            v158 = *(v229 + 60);
            v159 = (v72 + v158);
            v160 = *(v72 + v158 + 24);
            v161 = *(v72 + v158 + 32);
            if (v161 >= v160)
            {
              v162 = *(v72 + v158 + 24);
            }

            else
            {
              v162 = *(v72 + v158 + 32);
            }

            v163 = v159[5];
            v164 = v159[6];
            if (v164 >= v163)
            {
              v165 = v159[5];
            }

            else
            {
              v165 = v159[6];
            }

            v166 = vabdd_f64(v161, v160);
            v167 = vabdd_f64(v164, v163);
            v168 = v72;

            v308.origin.x = v162;
            v308.origin.y = v165;
            v308.size.width = v166;
            v308.size.height = v167;
            v309 = CGRectOffset(v308, 40.0, 40.0);
            CGRectOffset(v309, v159[1], v159[2]);
            *(&v204 - 6) = MEMORY[0x1EEE9AC00](v169);
            *(&v204 - 5) = v170;
            *(&v204 - 4) = v171;
            *(&v204 - 3) = v172;
            *(&v204 - 2) = v159;
            sub_1AAF8E964();
            sub_1AAF8DD54();
            sub_1AAD12C10(&v275);
            sub_1AAF8DE54();
            sub_1AAEE15E8(v276);
            sub_1AAEEBB28(v168 + *(v73 + 52), &v244);
            if (LOBYTE(v247.origin.y))
            {
              sub_1AACBB198(&v244, &v257);
              sub_1AACBB42C(&v257, v258);
              v173 = v238;
              sub_1AAF8DE24();
              v174.n128_f64[0] = sub_1AACB634C(&v257);
            }

            else
            {
              v173 = v238;
              sub_1AAF8DE14();
            }

            v185 = v234;
            v186 = v239;
            v187 = v242;
            v198 = v237;
            v199 = v212;
            (*v236)(v212, v173, v237, v174);
            sub_1AAF8DDA4();
            sub_1AAD12C10(v276);
            (*v235)(v199, v198);
          }

          sub_1AAF2C63C(v231, type metadata accessor for ChartDisplayList.BarItem);
          v8 = v185;
          a2 = v240;
          v54 = v187;
          v23 = v238;
          v15 = v186;
          goto LABEL_4;
        }

        v127 = v15;
        v128 = v8;
        v129 = swift_projectBox();
        v130 = v232;
        sub_1AAF2CB38(v129, v232, type metadata accessor for ChartDisplayList.RectangleItem);
        v131 = v230;
        if (*(v130 + *(v230 + 60)))
        {
          v241 = v65;
          v255[0] = v62;
          v132 = v130[4];
          v133 = v130[5];
          if (v133 >= v132)
          {
            v134 = v130[4];
          }

          else
          {
            v134 = v130[5];
          }

          v135 = v130[6];
          v136 = v130[7];
          if (v136 >= v135)
          {
            v137 = v130[6];
          }

          else
          {
            v137 = v130[7];
          }

          v138 = vabdd_f64(v133, v132);
          v139 = vabdd_f64(v136, v135);

          v306.origin.x = v134;
          v306.origin.y = v137;
          v306.size.width = v138;
          v306.size.height = v139;
          v307 = CGRectOffset(v306, 40.0, 40.0);
          CGRectOffset(v307, v130[2], v130[3]);
          sub_1AAF8F014();
          sub_1AAF8DD54();
          sub_1AAD12C10(&v281);
          sub_1AAF8DE54();
          sub_1AAEE1600(v282);
          sub_1AAEEBB28(v130 + *(v131 + 52), &v244);
          v140 = v242;
          if (LOBYTE(v247.origin.y))
          {
            sub_1AACBB198(&v244, &v257);
            sub_1AACBB42C(&v257, v258);
            v141 = v216;
            sub_1AAF8DE24();
            v142.n128_f64[0] = sub_1AACB634C(&v257);
          }

          else
          {
            v141 = v216;
            sub_1AAF8DE14();
          }

          v192 = v237;
          v193 = v224;
          (*v236)(v224, v141, v237, v142);
          sub_1AAF8DDA4();
          sub_1AAD12C10(v282);

          (*v235)(v193, v192);
          sub_1AAF2C63C(v232, type metadata accessor for ChartDisplayList.RectangleItem);

          v23 = v238;
          v15 = v239;
          v54 = v140;
          a2 = v240;
          goto LABEL_4;
        }

        sub_1AAF8DE54();
        sub_1AAEE1600(v280);
        sub_1AAEEBB28(v130 + *(v131 + 52), &v244);
        if (LOBYTE(v247.origin.y))
        {
          sub_1AACBB198(&v244, &v257);
          sub_1AACBB42C(&v257, v258);
          v15 = v127;
          sub_1AAF8DE24();
          v178.n128_f64[0] = sub_1AACB634C(&v257);
        }

        else
        {
          v15 = v127;
          sub_1AAF8DE14();
        }

        v202 = v237;
        v23 = v238;
        v203 = v213;
        (*v236)(v213, v15, v237, v178);
        sub_1AAF8DDA4();
        sub_1AAD12C10(v280);
        (*v235)(v203, v202);
        sub_1AAF2C63C(v232, type metadata accessor for ChartDisplayList.RectangleItem);
        v8 = v128;
      }

      else
      {
        if (v66 <= 1)
        {
          if (v66)
          {
            v117 = v8;
            v241 = v64;
            sub_1AAEE2F40((v243 + 1), &v244);
            if (v254)
            {
              v261 = v62;
              x = v247.origin.x;
              y = v247.origin.y;
              width = v247.size.width;
              height = v247.size.height;

              v302.origin.x = x;
              v302.origin.y = y;
              v302.size.width = width;
              v302.size.height = height;
              v303 = CGRectOffset(v302, 40.0, 40.0);
              v122 = v245;
              v123 = v246;
              CGRectOffset(v303, v245, v246);
              sub_1AAF8F014();
              sub_1AAF8DD54();
              sub_1AAD12C10(&v263);
              sub_1AAF8DE54();
              v304.origin.x = x;
              v304.origin.y = y;
              v304.size.width = width;
              v304.size.height = height;
              v305 = CGRectOffset(v304, 40.0, 40.0);
              CGRectOffset(v305, v122, v123);
              sub_1AACBB42C(v248, v249);
              sub_1AAF8EDA4();
              sub_1AAEEBB28(&v250, &v257);
              v124 = v242;
              if (v260)
              {
                sub_1AACBB198(&v257, v255);
                sub_1AACBB42C(v255, v256);
                v125 = v219;
                sub_1AAF8DE24();
                v126.n128_f64[0] = sub_1AACB634C(v255);
              }

              else
              {
                v125 = v219;
                sub_1AAF8DE14();
              }

              v190 = v237;
              v175 = v238;
              v191 = v218;
              (*v236)(v218, v125, v237, v126);
              sub_1AAF8DDA4();
              sub_1AAD12C10(&v264);

              (*v235)(v191, v190);
            }

            else
            {
              sub_1AAF8DE54();
              v310 = CGRectOffset(v247, 40.0, 40.0);
              CGRectOffset(v310, v245, v246);
              sub_1AACBB42C(v248, v249);
              sub_1AAF8EDA4();
              sub_1AAEEBB28(&v250, &v257);
              v175 = v23;
              v124 = v242;
              if (v260)
              {
                sub_1AACBB198(&v257, v255);
                sub_1AACBB42C(v255, v256);
                v176 = v205;
                sub_1AAF8DE24();
                v177.n128_f64[0] = sub_1AACB634C(v255);
              }

              else
              {
                v176 = v205;
                sub_1AAF8DE14();
              }

              v200 = v237;
              v201 = v209;
              (*v236)(v209, v176, v237, v177);
              sub_1AAF8DDA4();
              sub_1AAD12C10(&v265);
              (*v235)(v201, v200);
            }

            sub_1AAEE2F78(&v244);
            v54 = v124;
            v8 = v117;
            a2 = v240;
            v23 = v175;
            v15 = v239;
          }

          else
          {

            sub_1AAF29F9C(v69, a2);

            v54 = v242;
          }

          goto LABEL_4;
        }

        if (v66 != 2)
        {
          if (v66 == 3)
          {
            sub_1AAEE2B64((v243 + 1), &v244);
            if (v254)
            {
              *&v257 = v62;

              sub_1AAEE0BC8();
              sub_1AAF8F014();
              a2 = v240;
              sub_1AAF8DD54();
              sub_1AAD12C10(&v271);
              sub_1AAF2643C(&v257, &v244, v262);
            }

            else
            {
              sub_1AAF2643C(a2, &v244, v262);
            }

            sub_1AAEE2B9C(&v244);
            v54 = v242;
          }

          else
          {
            v241 = v64;
            sub_1AAEE2E10((v243 + 1), &v244);
            if (*(&v251 + 1))
            {
              v261 = v62;

              sub_1AAEE12F4();
              sub_1AAF8F014();
              sub_1AAF8DD54();
              sub_1AAD12C10(&v272);
              sub_1AAF8DE54();
              v107 = sub_1AAF210C8(v250, v251, SLOBYTE(v247.origin.y), &v257);
              v108 = *(*&v247.origin.x + 16);
              MEMORY[0x1EEE9AC00](v107);
              *(&v204 - 2) = &v244;

              v109 = v233;
              sub_1AADE64C0(sub_1AAF2CFF0, (&v204 - 4), v108);
              v111 = v110;
              v233 = v109;

              v112 = v258;
              v113 = v259;
              sub_1AACB8B34(&v257, v258);
              sub_1AAF214A8(v111, v112, v113, v273);

              sub_1AACB634C(&v257);
              sub_1AAEEBB28(&v247.size, &v257);
              if (v260)
              {
                sub_1AACBB198(&v257, v255);
                sub_1AACBB42C(v255, v256);
                v114 = v214;
                sub_1AAF8DE24();
                v115.n128_f64[0] = sub_1AACB634C(v255);
              }

              else
              {
                v114 = v214;
                sub_1AAF8DE14();
              }

              v181 = v234;
              v182 = v239;
              v183 = v237;
              v184 = v222;
              (*v236)(v222, v114, v237, v115);
              sub_1AAF8DDA4();
              sub_1AAD12C10(v273);

              (*v235)(v184, v183);
            }

            else
            {
              sub_1AAF8DE54();
              v149 = sub_1AAF210C8(v250, v251, SLOBYTE(v247.origin.y), &v257);
              v150 = *(*&v247.origin.x + 16);
              MEMORY[0x1EEE9AC00](v149);
              *(&v204 - 2) = &v244;

              v151 = v233;
              sub_1AADE64C0(sub_1AAF2C6AC, (&v204 - 4), v150);
              v153 = v152;
              v233 = v151;

              v154 = v258;
              v155 = v259;
              sub_1AACB8B34(&v257, v258);
              sub_1AAF214A8(v153, v154, v155, v274);

              sub_1AACB634C(&v257);
              sub_1AAEEBB28(&v247.size, &v257);
              if (v260)
              {
                sub_1AACBB198(&v257, v255);
                sub_1AACBB42C(v255, v256);
                v156 = v206;
                sub_1AAF8DE24();
                v157.n128_f64[0] = sub_1AACB634C(v255);
              }

              else
              {
                v156 = v206;
                sub_1AAF8DE14();
              }

              v181 = v234;
              v182 = v239;
              v196 = v237;
              v197 = v211;
              (*v236)(v211, v156, v237, v157);
              sub_1AAF8DDA4();
              sub_1AAD12C10(v274);
              (*v235)(v197, v196);
            }

            sub_1AAEE2E48(&v244);
            v8 = v181;
            a2 = v240;
            v15 = v182;
            v54 = v242;
            v23 = v238;
          }

          goto LABEL_4;
        }

        sub_1AAEE2ED8((v243 + 1), &v244);
        v99 = v227;
        if (v254)
        {
          v261 = v62;
          if (v247.size.width >= v247.origin.x)
          {
            v100 = v247.origin.x;
          }

          else
          {
            v100 = v247.size.width;
          }

          if (v247.size.height >= v247.origin.y)
          {
            v101 = v247.origin.y;
          }

          else
          {
            v101 = v247.size.height;
          }

          v102 = vabdd_f64(v247.size.width, v247.origin.x);
          v103 = vabdd_f64(v247.size.height, v247.origin.y);

          v300.origin.x = v100;
          v300.origin.y = v101;
          v300.size.width = v102;
          v300.size.height = v103;
          v301 = CGRectOffset(v300, 40.0, 40.0);
          CGRectOffset(v301, v245, v246);
          sub_1AAF8F014();
          sub_1AAF8DD54();
          sub_1AAD12C10(&v268);
          v104 = sub_1AAF8DE54();
          MEMORY[0x1EEE9AC00](v104);
          *(&v204 - 2) = &v244;
          sub_1AAF8E964();
          v290 = v251;
          v291 = v252;
          v292 = v253;
          sub_1AAF8E854();
          sub_1AAD12C10(&v269);
          sub_1AAEEBB28(v248, &v257);
          if (v260)
          {
            sub_1AACBB198(&v257, v255);
            sub_1AACBB42C(v255, v256);
            v105 = v221;
            v23 = v238;
            sub_1AAF8DE24();
            v106.n128_f64[0] = sub_1AACB634C(v255);
          }

          else
          {
            v105 = v221;
            sub_1AAF8DE14();
          }

          v179 = v237;
          v180 = v220;
          (*v236)(v220, v105, v237, v106);
          sub_1AAF8DDA4();
          sub_1AAD12C10(&v270);

          (*v235)(v180, v179);

          v15 = v239;
        }

        else
        {
          v146 = v239;
          v147 = sub_1AAF8DE54();
          MEMORY[0x1EEE9AC00](v147);
          *(&v204 - 2) = &v244;
          sub_1AAF8E964();
          v293 = v251;
          v294 = v252;
          v295 = v253;
          sub_1AAF8E854();
          sub_1AAD12C10(&v266);
          sub_1AAEEBB28(v248, &v257);
          if (v260)
          {
            sub_1AACBB198(&v257, v255);
            sub_1AACBB42C(v255, v256);
            sub_1AAF8DE24();
            v148.n128_f64[0] = sub_1AACB634C(v255);
          }

          else
          {
            sub_1AAF8DE14();
          }

          v194 = v237;
          v195 = v210;
          (*v236)(v210, v99, v237, v148);
          sub_1AAF8DDA4();
          sub_1AAD12C10(&v267);
          (*v235)(v195, v194);
          v15 = v146;
        }

        sub_1AAEE2F10(&v244);
        v8 = v234;
      }

      a2 = v240;
      v54 = v242;
LABEL_4:
      sub_1AAF8DE54();
      sub_1AAF8DEE4();
      sub_1AAF8DEB4();

      --v53;
    }

    while (v53);
  }
}

uint64_t sub_1AAF2BC28(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7)
{
  v29 = a1;
  v30 = a3;
  v28 = sub_1AAF8DB24();
  v10 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AAD129C8(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1AAF8DC34();
  (*(*(v17 - 8) + 16))(v16, a5, v17);
  v18 = *(v14 + 44);
  sub_1AAF2CBF0(&qword_1ED9B5580, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1AAF8FB24();
  sub_1AAF8FBA4();
  if (*&v16[v18] != v32[0])
  {
    v19 = a2;
    v20 = (v10 + 16);
    v21 = (v10 + 8);
    v22 = v19 & 1;
    v27 = a4 & 1;
    do
    {
      v23 = sub_1AAF8FC84();
      v24 = v28;
      (*v20)(v12);
      v23(v32, 0);
      sub_1AAF8FBB4();
      sub_1AAF8F1F4();
      LOBYTE(v32[0]) = v22;
      v31 = v27;
      sub_1AAF8DB04();
      (*v21)(v12, v24);
      sub_1AAF8FBA4();
    }

    while (*&v16[v18] != v32[0]);
  }

  return sub_1AAF2C63C(v16, sub_1AAD129C8);
}

void *sub_1AAF2BF04(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  sub_1AAF26348(0, &qword_1ED9AED78, 255, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum.Element);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v5;
  sub_1AAF2C744(0);
  result = sub_1AAF90384();
  v7 = result;
  v8 = 0;
  v34 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v28 = v10;
  v29 = result + 8;
  v30 = result;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(v34 + 56);
      v38 = *(*(v34 + 48) + 8 * v19);
      v21 = v31;
      sub_1AAF2C7E0(v20 + *(v32 + 72) * v19, v31, &qword_1ED9AED78, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum.Element);
      v22 = *v21;
      v35(v39, &v21[*(v33 + 28)]);
      sub_1AAF2C9D8(v21, &qword_1ED9AED78, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum.Element);
      v7 = v30;
      *(v29 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v7[6] + 8 * v19) = v38;
      v23 = (v7[7] + 544 * v19);
      *v23 = v22;
      result = memcpy(v23 + 1, v39, 0x218uLL);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v7[2] = v26;
      v14 = v37;
      if (!v37)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v28 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF2C1C0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AAF2CBA0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AAF2C224()
{
  result = qword_1ED9AFFA0[0];
  if (!qword_1ED9AFFA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AFFA0);
  }

  return result;
}

void sub_1AAF2C278(uint64_t a1)
{
  if (!qword_1ED9ADA00)
  {
    sub_1AAF2C2DC(255);
    sub_1AAF2C484();
    v1 = sub_1AAF8EEB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ADA00);
    }
  }
}

void sub_1AAF2C2DC(uint64_t a1)
{
  if (!qword_1ED9AD9D0)
  {
    sub_1AAF2CBA0(255, &qword_1ED9AD958, &type metadata for ChartDisplayList.ViewItem, MEMORY[0x1E69E62F8]);
    sub_1AAF2C3B8(255);
    sub_1AAF2C1C0(&unk_1ED9AEFB0, &qword_1ED9AD958, &type metadata for ChartDisplayList.ViewItem);
    sub_1AAD80D58();
    v1 = sub_1AAF8EFE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD9D0);
    }
  }
}

void sub_1AAF2C3B8(uint64_t a1)
{
  if (!qword_1ED9ADA10)
  {
    sub_1AAED9FD0(255, &qword_1ED9B1720, MEMORY[0x1E6981910], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1AAD267CC();
    sub_1AAD80D58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ED9ADA10);
    }
  }
}

unint64_t sub_1AAF2C484()
{
  result = qword_1ED9AD9D8;
  if (!qword_1ED9AD9D8)
  {
    sub_1AAF2C2DC(255);
    sub_1AAED9FD0(255, &qword_1ED9B1720, MEMORY[0x1E6981910], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1AAD267CC();
    sub_1AAD80D58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AD9D8);
  }

  return result;
}

unint64_t sub_1AAF2C5E4()
{
  result = qword_1ED9B0028[0];
  if (!qword_1ED9B0028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B0028);
  }

  return result;
}

uint64_t sub_1AAF2C63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAF2C744(uint64_t a1)
{
  if (!qword_1ED9AD778)
  {
    sub_1AAF26348(255, &qword_1ED9AED80, 255, sub_1AADAC01C, type metadata accessor for WeightedSum.Element);
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD778);
    }
  }
}

uint64_t sub_1AAF2C7E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1AAF26348(0, a3, 255, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAF2C884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectedChartContent.Primitive(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF2C8E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF2CBA0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF2C968(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAF2CBA0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAF2C9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1AAF26348(0, a2, 255, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_1AAF2CA94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1AAF2CAAC(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return v7;
}

double sub_1AAF2CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_1AAD0E508(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1AAF2CB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AAF2CBA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAF2CBF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1AAF2CC48()
{
  result = qword_1ED9AF530;
  if (!qword_1ED9AF530)
  {
    sub_1AAF2CCF8(255);
    sub_1AAF2CBF0(&qword_1ED9AF538, sub_1AAF2CDA4, MEMORY[0x1E697DDD0]);
    sub_1AAF2CF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF530);
  }

  return result;
}

void sub_1AAF2CCF8(uint64_t a1)
{
  if (!qword_1ED9ADB28)
  {
    sub_1AAF2CDA4(255);
    sub_1AAF2CE54(255);
    sub_1AAF2CBF0(&qword_1ED9ADB58, sub_1AAF2CDA4, MEMORY[0x1E697DDC8]);
    v1 = sub_1AAF8DBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ADB28);
    }
  }
}

void sub_1AAF2CDA4(uint64_t a1)
{
  if (!qword_1ED9ADB50)
  {
    sub_1AAF2CE00();
    v1 = sub_1AAF8D964();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ADB50);
    }
  }
}

unint64_t sub_1AAF2CE00()
{
  result = qword_1ED9AEC10;
  if (!qword_1ED9AEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEC10);
  }

  return result;
}

void sub_1AAF2CE54(uint64_t a1)
{
  if (!qword_1ED9AD9C8)
  {
    sub_1AAF2CBA0(255, &qword_1ED9AD950, &type metadata for ChartDisplayLayer, MEMORY[0x1E69E62F8]);
    sub_1AAF2C1C0(&qword_1ED9AEFA8, &qword_1ED9AD950, &type metadata for ChartDisplayLayer);
    v1 = sub_1AAF8EFE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD9C8);
    }
  }
}

unint64_t sub_1AAF2CF24()
{
  result = qword_1ED9AEFD0[0];
  if (!qword_1ED9AEFD0[0])
  {
    sub_1AAF2CE54(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AEFD0);
  }

  return result;
}

unint64_t sub_1AAF2CF98()
{
  result = qword_1ED9B0320[0];
  if (!qword_1ED9B0320[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B0320);
  }

  return result;
}

uint64_t sub_1AAF2D088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11(v8);
  sub_1AACE0800();
  v12 = *(v4 + 8);
  v12(v6, a3);
  sub_1AACE0800();
  return (v12)(v10, a3);
}

uint64_t sub_1AAF2D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2370](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAF2D248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2378](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAF2D2F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1AAF2D3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1CE8](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAF2D454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1CF0](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAF2D640(double *a1)
{
  sub_1AAF2E420(0, &qword_1ED9B2D50, sub_1AAF2E1D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v7 = a1[1];
  v6 = a1[2];
  v9 = a1[3];
  v8 = a1[4];
  v23.origin.x = v7;
  v23.origin.y = v6;
  v23.size.width = v9;
  v23.size.height = v8;
  if (CGRectGetWidth(v23) <= 0.0)
  {
    v24.origin.x = v7;
    v24.origin.y = v6;
    v24.size.width = v9;
    v24.size.height = v8;
    v7 = CGRectGetMidX(v24) + -0.5;
    v9 = 1.0;
  }

  v25.origin.x = v7;
  v25.origin.y = v6;
  v25.size.width = v9;
  v25.size.height = v8;
  if (CGRectGetHeight(v25) <= 0.0)
  {
    v26.origin.x = v7;
    v26.origin.y = v6;
    v26.size.width = v9;
    v26.size.height = v8;
    CGRectGetMidY(v26);
  }

  sub_1AAF8E944();
  v10 = v22;
  sub_1AACFDAA8(0);
  v12 = *(v11 + 36);
  v13 = *(v3 + 36);
  v14 = sub_1AAF8E734();
  v15 = *(*(v14 - 8) + 16);
  v18 = v21;
  v19 = v20;
  v15(&v5[v13], a1 + v12, v14);
  v16 = v18;
  *v5 = v19;
  *(v5 + 1) = v16;
  v5[32] = v10;
  v5[33] = 1;
  sub_1AAF8DF64();
  return sub_1AAF2E334(v5);
}

uint64_t sub_1AAF2D844@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1AAF2E420(0, &qword_1ED9B2CF0, sub_1AAD595C0, sub_1AAD597A8, MEMORY[0x1E697F948]);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v43 - v7;
  v8 = sub_1AAF8E644();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD597A8(0);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAD596F4(0);
  v49 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD595C0(0);
  v51 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v47 = v22;
    v48 = v20;
    v44 = a2;
    *v14 = sub_1AAF8F124();
    v14[1] = v23;
    sub_1AAED9C3C(0);
    v55 = a1;
    swift_getKeyPath();
    v43 = v8;
    sub_1AACFE60C(0);
    v45 = v16;
    sub_1AAF2E420(0, &qword_1ED9B2D50, sub_1AAF2E1D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1AAF2E22C(&qword_1ED9B2A38, 255, sub_1AACFE60C, MEMORY[0x1E69E6338]);
    v46 = a3;
    sub_1AAD59ABC();

    sub_1AAF8EFC4();
    sub_1AAF8E634();
    v24 = sub_1AAF2E22C(&qword_1ED9B2B38, 255, sub_1AAD597A8, MEMORY[0x1E6981880]);
    v25 = v52;
    sub_1AAF8EB94();
    (*(v9 + 8))(v11, v43);
    sub_1AAF2E2D8(v14);
    v26 = type metadata accessor for ChartAXAudiograph();
    v27 = swift_allocObject();
    v28 = v44;
    *(v27 + 16) = v44;
    v54 = v27;
    v44 = v28;
    v55 = v25;
    v56 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = sub_1AAF2E22C(qword_1ED9B6110, v30, type metadata accessor for ChartAXAudiograph, &unk_1AAFC38F8);
    v32 = v47;
    v33 = v49;
    sub_1AAF8EBD4();

    (*(v45 + 8))(v18, v33);
    v34 = v48;
    v35 = v51;
    (*(v48 + 16))(v53, v32, v51);
    swift_storeEnumTagMultiPayload();
    v55 = v33;
    v56 = v26;
    v57 = OpaqueTypeConformance2;
    v58 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1AAF8E374();

    return (*(v34 + 8))(v32, v35);
  }

  else
  {
    *v14 = sub_1AAF8F124();
    v14[1] = v37;
    sub_1AAED9C3C(0);
    v55 = a1;
    swift_getKeyPath();
    sub_1AACFE60C(0);
    sub_1AAF2E420(0, &qword_1ED9B2D50, sub_1AAF2E1D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1AAF2E22C(&qword_1ED9B2A38, 255, sub_1AACFE60C, MEMORY[0x1E69E6338]);
    sub_1AAD59ABC();

    sub_1AAF8EFC4();
    sub_1AAF2E274(v14, v53);
    swift_storeEnumTagMultiPayload();
    v38 = type metadata accessor for ChartAXAudiograph();
    v39 = sub_1AAF2E22C(&qword_1ED9B2B38, 255, sub_1AAD597A8, MEMORY[0x1E6981880]);
    v55 = v52;
    v56 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v42 = sub_1AAF2E22C(qword_1ED9B6110, v41, type metadata accessor for ChartAXAudiograph, &unk_1AAFC38F8);
    v55 = v49;
    v56 = v38;
    v57 = v40;
    v58 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1AAF8E374();
    return sub_1AAF2E2D8(v14);
  }
}

void sub_1AAF2E03C(void *a1)
{
  v3 = *(v1 + 16);
  sub_1AAF8FD94();
  sub_1AAF8FDA4();
  v4 = [v3 yAxis];
  [a1 setYAxis_];

  v5 = [v3 series];
  if (!v5)
  {
    sub_1AAF2E3D4();
    sub_1AAF8F834();
    v6 = sub_1AAF8F824();

    v5 = v6;
  }

  v7 = v5;
  [a1 setSeries_];
}

double sub_1AAF2E12C()
{

  swift_deallocClassInstance();
  return result;
}

void sub_1AAF2E1D4()
{
  if (!qword_1ED9B2DA8)
  {
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2DA8);
    }
  }
}

uint64_t sub_1AAF2E22C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAF2E274(uint64_t a1, uint64_t a2)
{
  sub_1AAD597A8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF2E2D8(uint64_t a1)
{
  sub_1AAD597A8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAF2E334(uint64_t a1)
{
  sub_1AAF2E420(0, &qword_1ED9B2D50, sub_1AAF2E1D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AAF2E3D4()
{
  result = qword_1ED9B0688;
  if (!qword_1ED9B0688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9B0688);
  }

  return result;
}

void sub_1AAF2E420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1AAF2E4A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_1AAF8DE34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAD248(a1, v20);
  if (v21)
  {
    sub_1AACBB198(v20, v18);
    sub_1AACAEF68(v18, v17);
    sub_1AAD45E1C(0, &qword_1ED9B2778, MEMORY[0x1E697DAE8]);
    if (swift_dynamicCast())
    {
      sub_1AAF8DE14();
    }

    else if (*(a1 + 41) == 1 || (*(a2 + 32) & 1) == 0)
    {
      sub_1AACBB42C(v18, v19);
      v12 = sub_1AAF8E354();
      v16[1] = v16;
      v13 = *(v12 - 8);
      MEMORY[0x1EEE9AC00](v12);
      v15 = v16 - v14;
      sub_1AAF8D864();
      swift_getWitnessTable();
      sub_1AAF8DE24();
      (*(v13 + 8))(v15, v12);
    }

    else
    {
      sub_1AACBB42C(v18, v19);
      sub_1AAF8DE24();
    }

    (*(v9 + 32))(a3, v11, v8);
    sub_1AACB634C(v18);
  }

  else
  {
    sub_1AAF8DE14();
  }
}

unint64_t sub_1AAF2E844()
{
  v1 = v0;
  v2 = sub_1AAF8F154();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6981DF0])
  {
    v8 = 0;
    v9 = 0;
  }

  else if (v7 == *MEMORY[0x1E6981E10])
  {
    v9 = 0;
    v8 = 1;
  }

  else if (v7 == *MEMORY[0x1E6981DF8])
  {
    v9 = 0;
    v8 = 2;
  }

  else if (v7 == *MEMORY[0x1E6981E08])
  {
    v9 = 0;
    v8 = 3;
  }

  else if (v7 == *MEMORY[0x1E6981DE8])
  {
    v9 = 0;
    v8 = 4;
  }

  else if (v7 == *MEMORY[0x1E6981E00])
  {
    v9 = 0;
    v8 = 5;
  }

  else if (v7 == *MEMORY[0x1E6981D88])
  {
    v9 = 0;
    v8 = 6;
  }

  else if (v7 == *MEMORY[0x1E6981E18])
  {
    v9 = 0;
    v8 = 7;
  }

  else if (v7 == *MEMORY[0x1E6981E30])
  {
    v9 = 0;
    v8 = 8;
  }

  else if (v7 == *MEMORY[0x1E6981E28])
  {
    v9 = 0;
    v8 = 9;
  }

  else if (v7 == *MEMORY[0x1E6981D90])
  {
    v9 = 0;
    v8 = 10;
  }

  else if (v7 == *MEMORY[0x1E6981E20])
  {
    v9 = 0;
    v8 = 11;
  }

  else if (v7 == *MEMORY[0x1E6981DD8])
  {
    v9 = 0;
    v8 = 12;
  }

  else if (v7 == *MEMORY[0x1E6981DA8])
  {
    v9 = 0;
    v8 = 13;
  }

  else if (v7 == *MEMORY[0x1E6981DE0])
  {
    v9 = 0;
    v8 = 14;
  }

  else if (v7 == *MEMORY[0x1E6981D98])
  {
    v9 = 0;
    v8 = 15;
  }

  else if (v7 == *MEMORY[0x1E6981DB0])
  {
    v9 = 0;
    v8 = 20;
  }

  else if (v7 == *MEMORY[0x1E6981DD0])
  {
    v9 = 0;
    v8 = 21;
  }

  else if (v7 == *MEMORY[0x1E6981DC0])
  {
    v9 = 0;
    v8 = 23;
  }

  else if (v7 == *MEMORY[0x1E6981DA0])
  {
    v9 = 0;
    v8 = 26;
  }

  else if (v7 == *MEMORY[0x1E6981DB8])
  {
    v9 = 0;
    v8 = 27;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    if (qword_1ED9B59F0 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED9C36C8;
    v11 = sub_1AAF8FD04();
    sub_1AAD0D380(0, &qword_1ED9AEE70, &qword_1ED9AEE60, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AAF92AB0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0xD000000000000013, 0x80000001AAFD00D0);
    sub_1AAF90284();
    v13 = v16;
    v14 = v17;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1AAD6E644();
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    sub_1AAF8D7B4(v11, &dword_1AACA8000, v10, "%s", v16);

    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

uint64_t sub_1AAF2ED3C(uint64_t *a1, uint64_t a2, char **a3)
{
  v6 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v10 = *a1;
  if (*(*a1 + 16))
  {
    sub_1AAD115C0(a2, v8, type metadata accessor for SgGroup);

    *(v8 + 1) = v10;
    v11 = swift_allocBox();
    sub_1AAD115C0(v8, v12, type metadata accessor for SgGroup);
    swift_beginAccess();
    v13 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AACE3508(0, *(v13 + 2) + 1, 1, v13);
      *a3 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1AACE3508((v15 > 1), v16 + 1, 1, v13);
      *a3 = v13;
    }

    *(v13 + 2) = v16 + 1;
    *&v13[8 * v16 + 32] = v11;
    swift_endAccess();
    swift_beginAccess();
    *a1 = MEMORY[0x1E69E7CC0];

    return sub_1AAD0BF4C(v8, type metadata accessor for SgGroup);
  }

  return result;
}

uint64_t sub_1AAF2EF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AAD0C9E4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8DF74();
  MEMORY[0x1EEE9AC00](v13);
  swift_beginAccess();
  (*(v10 + 16))(v12, a2, v9);
  v14 = sub_1AAD0ACD8(&qword_1ED9B5510, sub_1AAD0C9E4, MEMORY[0x1E69817B0]);
  MEMORY[0x1AC597820](a1, v9, a3, v14);
  (*(v10 + 8))(v12, v9);
  v16[1] = v14;
  v16[2] = a4;
  swift_getWitnessTable();
  return sub_1AAF8EF44();
}

uint64_t sub_1AAF2F10C(CGRect *a1, CGRect *a2, uint64_t a3)
{
  if (!CGRectEqualToRect(*a1, *a2))
  {
    return 0;
  }

  if (a1[1].origin.x != a2[1].origin.x || a1[1].origin.y != a2[1].origin.y)
  {
    return 0;
  }

  return sub_1AAF8DF04();
}

void (*sub_1AAF2F198(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE34258;
}

uint64_t sub_1AAF2F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD0ACD8(&qword_1ED9B6188, type metadata accessor for SgCanvasRenderer, &unk_1AAFC3A0C);

  return MEMORY[0x1EEDE3690](a1, a2, a3, v8, a4);
}

void (*sub_1AAF2F2BC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_1AAF2F30C;
}

void sub_1AAF2F30C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }
}