uint64_t sub_1E3AA22F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDC0, &qword_1E42B7578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3AA235C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v11 = (*(v10 + 192))();
  v405 = v0;
  if (v4)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_8();
      v13 = (*(v12 + 2088))();

      if (v13 != 20 && (sub_1E3D23FE4(v13) & 1) != 0)
      {
LABEL_9:
        sub_1E3AA45D4();
        goto LABEL_246;
      }
    }

    v16 = sub_1E3AA6160();
    sub_1E3AA6240(v8);
    v17 = *((*v9 & *v0) + 0x138);
    v18 = v17();
    if (v18)
    {
      v19 = v18;
      v20 = sub_1E32AE9B0(v18);
      v21 = 0;
      v22 = 0;
      v23 = 0.0;
      while (1)
      {
        if (v20 == v21)
        {

          v2 = v405;
          v16 = v16;
          goto LABEL_57;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1E6911E60](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_250;
          }

          v24 = *(v19 + 8 * v21 + 32);
        }

        v25 = v24;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v26 = OUTLINED_FUNCTION_49_6();
        [v27 v28];
        v30 = v29;
        v32 = v31;
        VUIRoundValue();
        v23 = v23 + v33;
        v34 = [v25 textLayout];
        [v34 margin];
        v36 = v35;

        if (v30 != 0.0 || v32 != 0.0)
        {
          if (v36 > 0.0)
          {
            v37 = v22;
            sub_1E3C8B6B4(v22, v36);
            v39 = v38;

            v23 = v23 + v39;
          }

          if (v30 != 0.0)
          {
            goto LABEL_24;
          }
        }

        if (v32 == 0.0)
        {

          ++v21;
        }

        else
        {
LABEL_24:

          ++v21;
          v22 = v25;
        }
      }

      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
      return;
    }

    v22 = 0;
LABEL_57:
    OUTLINED_FUNCTION_5_4();
    v78 = (*(v77 + 384))();
    if (v78)
    {
      v80 = v78;
      if (v8 > 0.0)
      {
        [v78 prepareLayoutWithMaxWidth_];
      }

      v81 = 0.0;
      v82 = (v17)([v80 sizeThatFits_]);
      if (v82)
      {
        v83 = sub_1E37CB21C(v82);

        if (v83)
        {
          OUTLINED_FUNCTION_21();
          v85 = (*(v84 + 192))();
          if (v85)
          {
            v81 = *(v85 + 200);
          }

          [v83 bottomMarginWithBaselineMargin_];
        }

        else
        {
        }

        v2 = v405;
      }

      else
      {
      }
    }

    if (sub_1E3A92050(v16, 2, v79) & 1) != 0 || (sub_1E3A92050(v16, 4, v105))
    {
      v107 = 0;
      if (!v22)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v107 = sub_1E3A92050(v16, 5, v106) ^ 1;
      if (!v22)
      {
        goto LABEL_92;
      }
    }

    v108 = objc_opt_self();
    v109 = v22;
    if (([v108 isTV] | v107))
    {
      v110 = [v109 textLayout];
      [v110 margin];
      v112 = v111;

      v113 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
      if (v112 > 0.0)
      {
        [v109 bottomMarginWithBaselineMargin_];
      }

      goto LABEL_93;
    }

LABEL_92:
    v113 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
LABEL_93:
    v114 = [v2 vuiTraitCollection];
    v115 = [v114 v113[249]];

    if (v115)
    {
      OUTLINED_FUNCTION_5_4();
      v117 = (*(v116 + 336))();
      if (v117)
      {
        v118 = v117;
        type metadata accessor for ContextMenuButton();
        v119 = swift_dynamicCastClass();

        if (v119)
        {
          v120 = v17();
          if (v120)
          {
            v121 = sub_1E37CB21C(v120);

            if (v121)
            {
              v122 = OUTLINED_FUNCTION_49_6();
              [v123 v124];
              v125 = OUTLINED_FUNCTION_49_6();
              [v126 v127];
              VUIRoundValue();
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_5_4();
    (*(v128 + 440))(v8);
    VUIRoundValue();

    goto LABEL_246;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_8();
    v15 = (*(v14 + 2088))();

    if (v15 != 20 && (sub_1E3D23FE4(v15) & 1) != 0)
    {
      goto LABEL_9;
    }
  }

  v426 = 0;
  OUTLINED_FUNCTION_5_4();
  v387 = *(v40 + 168);
  v389 = v6;
  if ((v387() & 1) != 0 && (v41 = [objc_allocWithZone(MEMORY[0x1E696AD60]) init], (v426 = v41) != 0))
  {
    v42 = v41;
    v416 = 0x5B2064726143;
    *&v417 = -2.12455197e183;
    *&v413 = v0;
    v43 = sub_1E4207944();
    v45 = v44;
    MEMORY[0x1E69109E0](v43);

    MEMORY[0x1E69109E0](93, 0xE100000000000000);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_11_5();

    v388 = v42;
    sub_1E4206854();
  }

  else
  {
    v388 = 0;
  }

  v46 = [v0 bounds];
  v48 = v47;
  v390 = v49;
  v398 = (*((*v9 & *v0) + 0x1B8))(v46, v47);
  v51 = v50;
  v52 = sub_1E3AA6160();
  sub_1E3AA6240(v48);
  MaxY = v53;
  v55 = [v0 vuiIsRTL];
  v57 = sub_1E3A92050(v52, 2, v56);
  v59 = 0.0;
  v402 = v51;
  if (v57)
  {
    v59 = v51;
  }

  v425 = v59;
  v424 = 0;
  if (sub_1E3A92050(v52, 4, v58))
  {
    i = 1;
  }

  else
  {
    i = sub_1E3A92050(v52, 5, v60);
  }

  v423 = i & 1;
  v422 = 0;
  OUTLINED_FUNCTION_5_4();
  v403 = *(v62 + 312);
  v63 = v403();
  v404 = v55;
  v393 = v52;
  if (!v63)
  {
    goto LABEL_51;
  }

  v64 = v63;
  v399 = i;
  v65 = sub_1E32AE9B0(v63);
  v66 = 0;
  v67 = 0;
  while (v65 != v67)
  {
    if ((v64 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x1E6911E60](v67, v64);
    }

    else
    {
      if (v67 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_251;
      }

      v68 = *(v64 + 8 * v67 + 32);
    }

    v69 = v68;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_249;
    }

    if (v66)
    {

      goto LABEL_46;
    }

    v70 = [v68 textLayout];
    [v70 margin];
    v72 = v71;

    if (v72 > 0.0)
    {
      v66 = 1;
      ++v67;
    }

    else
    {
LABEL_46:
      ++v67;
    }
  }

  v422 = v66;

  LOBYTE(v55) = v404;
  v52 = v393;
  i = v399;
  if (v66)
  {
    v74 = v405;
    v75 = (v403)(v73);
    goto LABEL_53;
  }

LABEL_51:
  v74 = v405;
  v75 = v403();
  if (v75)
  {
    v75 = sub_1E3AA65A0(v75);
LABEL_53:
    v421 = MEMORY[0x1E69E7CC0];
    if (v75)
    {
      sub_1E3AA0C60(v75, MaxY, v398, v402, v48, v390, v52, v55, &v424, &v425, &v423, v74, &v421, &v422, &v426);

      if ((v423 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    else if ((i & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_68:
    v86 = (v403)(v75);
    if (v86)
    {
      v87 = v86;
      v88 = sub_1E37FDFF8(v86);
      if (v88)
      {
        i = v88;
        v89 = sub_1E37CB21C(v87);
        if (v89)
        {
          v400 = v89;
          [v89 frame];
          MaxX = CGRectGetMaxX(v428);
          v91 = i;
          [v91 frame];
          v92 = (v390 - (MaxX - CGRectGetMinY(v429))) * 0.5;
          [v91 frame];
          OUTLINED_FUNCTION_18_3();
          v94 = v93;
          v96 = v95;

          v430.origin.x = OUTLINED_FUNCTION_4_94();
          v430.size.height = v96;
          v425 = v92 - CGRectGetMinY(v430);
          v97 = sub_1E32AE9B0(v87);
          for (i = 0; v97 != i; ++i)
          {
            if ((v87 & 0xC000000000000001) != 0)
            {
              v98 = MEMORY[0x1E6911E60](i, v87);
            }

            else
            {
              if (i >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_254;
              }

              v98 = *(v87 + 8 * i + 32);
            }

            v99 = v98;
            if (__OFADD__(i, 1))
            {
              goto LABEL_253;
            }

            [v98 frame];
            OUTLINED_FUNCTION_19_61();
            v101 = v100;
            v103 = v102;
            VUIRoundValue();
            [v99 setFrame_];
          }

          v52 = v393;
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v421 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      goto LABEL_68;
    }
  }

LABEL_104:
  v130 = 0.0;
  if (sub_1E3A92050(v52, 2, v76) & 1) != 0 || !(v404 & 1 | ((sub_1E3A92050(v52, 4, v129) & 1) == 0)) || (sub_1E3A92050(v52, 5, v131) & v404)
  {
LABEL_107:
    v133 = 0.0;
  }

  else
  {
    if (v404 & 1 | ((sub_1E3A92050(v52, 5, v132) & 1) == 0) && (sub_1E3A92050(v52, 4, v273) & v404 & 1) == 0)
    {
      v130 = v390 - v402;
      goto LABEL_107;
    }

    v133 = v48 - v398;
  }

  OUTLINED_FUNCTION_21();
  v135 = *(v134 + 216);
  v136 = v135();
  if (v136)
  {
    v137 = v136;
    [v136 setFrame_];
  }

  OUTLINED_FUNCTION_21();
  v139 = *(v138 + 240);
  v140 = v139();
  v396 = v130;
  v401 = v133;
  if (v140)
  {
    v141 = v140;
    v142 = v135();
    if (v142)
    {
      v143 = v142;
      [v142 bounds];
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      OUTLINED_FUNCTION_38_25();
    }

    v144 = OUTLINED_FUNCTION_4_94();
    [v145 v146];
  }

  OUTLINED_FUNCTION_21();
  v147 += 36;
  v148 = *v147;
  v149 = (*v147)();
  if (v149 && (v416 = v149, sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0, qword_1E42DC520), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v414 + 1))
    {
      sub_1E3251BE8(&v413, &v416);
      v150 = *&v419;
      i = v420;
      __swift_project_boxed_opaque_existential_1(&v416, *&v419);
      v151 = v139();
      v152 = [v151 image];

      (*(i + 8))(v152, v150, i, v398, v402);
      v153 = __swift_destroy_boxed_opaque_existential_1(&v416);
      goto LABEL_121;
    }
  }

  else
  {
    v415 = 0;
    v413 = 0u;
    v414 = 0u;
  }

  v153 = sub_1E3AA22F4(&v413);
LABEL_121:
  v154 = v405;
  v155 = (v148)(v153);
  if (v155)
  {
    v156 = v155;
    v157 = v135();
    if (v157)
    {
      v158 = v157;
      [v157 bounds];
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      OUTLINED_FUNCTION_38_25();
    }

    v159 = OUTLINED_FUNCTION_4_94();
    [v160 v161];
  }

  v162 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7_20();
  v164 = (*(v163 + 264))();
  v165 = MEMORY[0x1E69DDCE0];
  v397 = v48;
  if (v164)
  {
    v166 = v164;
    OUTLINED_FUNCTION_35_32();
    if (!v167())
    {

      goto LABEL_135;
    }

    OUTLINED_FUNCTION_26_0();
    v168 += 243;
    v169 = *v168;
    i = v168;
    (*v168)();
    OUTLINED_FUNCTION_30();
    (*(v170 + 152))(v427);

    v172 = *(v169)(v171);
    (*(v172 + 2288))();
    OUTLINED_FUNCTION_18_3();

    v431.origin.x = v133;
    v431.origin.y = v130;
    v431.size.width = v398;
    v431.size.height = v402;
    CGRectGetHeight(v431);
    OUTLINED_FUNCTION_44_29();
    CGRectGetHeight(v432);
    if (sub_1E3A92050(v393, 2, v173))
    {
      v433.origin.x = v133;
      v433.origin.y = v130;
      v433.size.width = v398;
      v433.size.height = v402;
      Height = CGRectGetHeight(v433);
      if (!v404)
      {
LABEL_134:
        OUTLINED_FUNCTION_44_29();
        [v176 v177];

        goto LABEL_135;
      }
    }

    else
    {
      Height = 0.0;
      if ((v404 & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    [v405 bounds];
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_44_29();
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v1 = v175;
    goto LABEL_134;
  }

LABEL_135:
  v411 = 0u;
  v412 = 0u;
  v178 = [v405 vuiTraitCollection];
  v179 = [v178 isAXLargeEnabled];

  v180 = (*((*v162 & *v405) + 0x150))();
  if (!v180)
  {
    VUIRoundValue();
    v187 = v186;
    OUTLINED_FUNCTION_41_29();
    v189 = v188();
    v190 = v404;
    if (!v189)
    {
      goto LABEL_224;
    }

    sub_1E37FDFF8(v189);
    OUTLINED_FUNCTION_122();

    if (!i)
    {
      goto LABEL_224;
    }

    OUTLINED_FUNCTION_7_20();
    v192 = (*(v191 + 360))();
    if (!v192)
    {

      goto LABEL_224;
    }

    v193 = v192;
    v194 = i;
    [v194 sizeThatFits_];
    if (v187 >= v195)
    {
      v196 = v195;
    }

    else
    {
      v196 = v187;
    }

    [v194 frame];
    v198 = v197;
    v384 = v200;
    v386 = v199;
    v383 = v201;
    v382 = v194;

    OUTLINED_FUNCTION_35_32();
    if (!v202() || (OUTLINED_FUNCTION_30(), (*(v203 + 2016))(), OUTLINED_FUNCTION_122(), , OUTLINED_FUNCTION_26(), (*(v204 + 152))(&v416), v206 = *&v416, v205 = *&v417, v207 = v418, v1 = v419, , (v420 & 1) != 0))
    {
      v206 = *v165;
      v205 = v165[1];
      v207 = v165[2];
      v1 = v165[3];
    }

    v391 = v207;
    v394 = v206;
    [v193 vui:v8 sizeThatFits:v389];
    v209 = v208;
    v211 = v210;
    *&v412 = v208;
    *(&v412 + 1) = v210;
    if (v8 - v208 - v1 >= v198 + v196 + v205)
    {
      v212 = v198 + v196 + v205;
    }

    else
    {
      v212 = v8 - v208 - v1;
    }

    *&v411 = v212;
    v434.origin.x = v198;
    v434.size.width = v384;
    v434.origin.y = v386;
    v434.size.height = v383;
    MidY = CGRectGetMidY(v434);
    v214 = CGRect.center.getter(v212, 0.0, v209, v211);
    v215 = CGRect.center.setter(v214, MidY);
    v217 = *(&v411 + 1);
    v216 = v212;
    v219 = *(&v412 + 1);
    v218 = *&v412;
    if (v404)
    {
      [v405 bounds];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_16();
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v216 = v220;
      v217 = v221;
      v218 = v222;
      v219 = v223;
      *&v411 = v220;
      *(&v411 + 1) = v221;
      *&v412 = v222;
      *(&v412 + 1) = v223;
    }

    v435.origin.x = OUTLINED_FUNCTION_16();
    Width = CGRectGetWidth(v435);
    v225 = sub_1E3952BE0(v394, v205, v391, v1);
    v226 = v421;
    v227 = *(v421 + 16);
    if (!v227)
    {

      v229 = MEMORY[0x1E69E7CC0];
LABEL_222:
      v421 = v229;
      goto LABEL_223;
    }

    v392 = v193;
    v395 = v187 - (Width + v225);
    *&v413 = MEMORY[0x1E69E7CC0];
    sub_1E3AA7250(0, v227, 0);
    v228 = 0;
    v229 = v413;
    v230 = (v226 + 64);
    while (v228 < *(v226 + 16))
    {
      v1 = *(v230 - 3);
      v231 = *(v230 - 2);
      v232 = *(v230 - 1);
      v233 = *v230;
      v234 = *(v230 - 4);
      v436.origin.x = OUTLINED_FUNCTION_16_70();
      v436.size.width = v232;
      v436.size.height = v233;
      v450.origin.x = v216;
      v450.origin.y = v217;
      v450.size.width = v218;
      v450.size.height = v219;
      if (CGRectIntersectsRect(v436, v450))
      {
        if (v404)
        {
          [v405 bounds];
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_16_70();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          OUTLINED_FUNCTION_19_61();
          v232 = v235;
          v233 = v236;
        }

        else
        {
          v232 = v395;
        }

        v237 = OUTLINED_FUNCTION_16_70();
        [v238 v239];
      }

      *&v413 = v229;
      v241 = *(v229 + 16);
      v240 = *(v229 + 24);
      if (v241 >= v240 >> 1)
      {
        v243 = OUTLINED_FUNCTION_35(v240);
        sub_1E3AA7250(v243, v241 + 1, 1);
        v229 = v413;
      }

      *(v229 + 16) = v241 + 1;
      v242 = v229 + 40 * v241;
      *(v242 + 32) = v234;
      ++v228;
      *(v242 + 40) = v1;
      *(v242 + 48) = v231;
      *(v242 + 56) = v232;
      *(v242 + 64) = v233;
      v230 += 5;
      if (v227 == v228)
      {

        v154 = v405;
        goto LABEL_222;
      }
    }

    goto LABEL_255;
  }

  v181 = v180;
  v182 = v165[2];
  v1 = v165[3];
  memset(&v410, 0, sizeof(v410));
  v409 = 0;
  OUTLINED_FUNCTION_35_32();
  if (v183())
  {
    OUTLINED_FUNCTION_30();
    v185 = (*(v184 + 2088))();
  }

  else
  {
    v185 = 20;
  }

  type metadata accessor for ContextMenuButton();
  v244 = swift_dynamicCastClass();
  v381 = v182;
  v385 = v1;
  if (!v244)
  {
    goto LABEL_183;
  }

  if (v185 == 20)
  {
    if (!v179)
    {
      goto LABEL_168;
    }

LABEL_173:
    OUTLINED_FUNCTION_41_29();
    v251 = v250();
    if (v251)
    {
      v249 = sub_1E37CB21C(v251);
      goto LABEL_175;
    }

LABEL_183:
    OUTLINED_FUNCTION_32_39();
  }

  else
  {
    LOBYTE(v416) = v185;
    LOBYTE(v413) = 8;
    sub_1E3AA77D0(v244, v245, v246);
    if (OUTLINED_FUNCTION_37_29())
    {
      goto LABEL_173;
    }

    LOBYTE(v416) = v185;
    LOBYTE(v413) = 9;
    if (OUTLINED_FUNCTION_37_29())
    {
      goto LABEL_173;
    }

    LOBYTE(v416) = v185;
    LOBYTE(v413) = 12;
    if ((OUTLINED_FUNCTION_37_29() | v179))
    {
      goto LABEL_173;
    }

LABEL_168:
    OUTLINED_FUNCTION_41_29();
    v248 = v247();
    if (!v248)
    {
      goto LABEL_183;
    }

    v249 = sub_1E37FDFF8(v248);
LABEL_175:
    v252 = v249;

    OUTLINED_FUNCTION_32_39();
    if (v252)
    {
      OUTLINED_FUNCTION_35_32();
      v254 = v1;
      if (v253())
      {
        OUTLINED_FUNCTION_30();
        (*(v255 + 1992))();
        OUTLINED_FUNCTION_122();

        OUTLINED_FUNCTION_26();
        (*(v256 + 152))(&v413);
        v257 = *(&v414 + 1);

        v254 = v1;
        if ((v415 & 1) == 0)
        {
          v254 = v257;
        }
      }

      if (v179)
      {
        v409 = 1;
        v258 = v252;
        [v258 frame];
        [v258 numberOfLinesRequiredForTextWidth_];
        [v258 frame];
        OUTLINED_FUNCTION_18_3();
        v260 = v259;

        v438.origin.x = OUTLINED_FUNCTION_4_94();
        v438.size.height = v260;
        CGRectGetHeight(v438);
        VUIRoundValue();
        v182 = v261;
        v410.size.height = v261;
        v262 = objc_opt_self();
        v263 = *sub_1E391D8B8();
        v264 = [v405 vuiTraitCollection];
        [v262 scaleContentSizeValue:v264 forTraitCollection:v263];
        v1 = v265;

        v410.size.width = v1;
        if (v424)
        {
          [v424 frame];
          MaxY = CGRectGetMaxY(v439);
        }

        v410.origin.y = MaxY;
      }

      else
      {
        v286 = sub_1E391D8AC();
        v287 = *v286;
        v288 = v286[1];
        v289 = [v405 vuiTraitCollection];
        v290 = OUTLINED_FUNCTION_17_4();
        sub_1E3AC5C5C(v291, v290, v292);
        OUTLINED_FUNCTION_18_3();

        v410.size.width = v287;
        v293 = v252;
        [v293 frame];
        v294 = CGRectGetHeight(v441);
        if (v294 < v288)
        {
          v288 = v294;
        }

        v410.size.height = v288;
        [v293 frame];
        v296 = v295;
        v298 = v297;
        v300 = v299;
        v302 = v301;

        v442.origin.x = v296;
        v442.origin.y = v298;
        v442.size.width = v300;
        v442.size.height = v302;
        v303 = CGRectGetMidY(v442);
        OUTLINED_FUNCTION_44_29();
        v308 = CGRect.center.getter(v304, v305, v306, v307);
        CGRect.center.setter(v308, v303);
        v182 = v288;
        v1 = v410.size.width;
        OUTLINED_FUNCTION_9_76();
        v410.origin.x = v397 - CGRectGetWidth(v443) - v254;
        OUTLINED_FUNCTION_9_76();
        v309 = fmin(CGRectGetWidth(v444) + -40.0, 0.0);
        OUTLINED_FUNCTION_9_76();
        v310 = CGRectGetHeight(v445);
        v311 = sub_1E3952C10(v309, fmin(v310 + -30.0, 0.0));
        sub_1E3CEE8A0(v311, v312, v313, v314, v410.origin.x);
        OUTLINED_FUNCTION_45_29();
      }
    }
  }

  OUTLINED_FUNCTION_19();
  v440.origin.x = OUTLINED_FUNCTION_24_39();
  if (CGRectEqualToRect(v440, v451))
  {
    [v181 vui:v397 sizeThatFits:v390];
    OUTLINED_FUNCTION_19_61();
    OUTLINED_FUNCTION_35_32();
    v190 = v404;
    if (v266())
    {
      OUTLINED_FUNCTION_30();
      (*(v268 + 1968))();
      OUTLINED_FUNCTION_122();

      OUTLINED_FUNCTION_26();
      (*(v269 + 152))(&v416);
      v270 = v419;

      if (v420)
      {
        v270 = v385;
      }

      v271 = v393;
    }

    else
    {
      v271 = v393;
      v270 = v385;
    }

    sub_1E3A92050(v271, 2, v267);
    OUTLINED_FUNCTION_41_29();
    v275 = v274();
    v272 = MEMORY[0x1E69E7D40];
    if (v275)
    {
      v276 = sub_1E37FDFF8(v275);

      if (v276)
      {
        v277 = [v276 textLayout];
        v278 = [v277 maximumContentSizeCategory];

        v279 = objc_opt_self();
        v280 = [v276 textLayout];
        [v280 margin];
        v282 = v281;

        v283 = [v405 vuiTraitCollection];
        [v279 scaleContentSizeValue:v283 forTraitCollection:v278 maximumContentSizeCategory:v282];

        v284 = [v276 vuiFont];
        if (v284)
        {
          v285 = v284;
          [v284 capHeight];
        }

        v154 = v405;
      }
    }

    VUIRoundValue();
    v316 = v315;
    OUTLINED_FUNCTION_9_76();
    v410.origin.x = v397 - CGRectGetWidth(v446) - v270;
    v410.origin.y = v316;
    v410.size.width = v1;
    v410.size.height = v182;
    if (v404)
    {
LABEL_205:
      [v154 bounds];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_24_39();
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      OUTLINED_FUNCTION_45_29();
      [v154 bounds];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_9_76();
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v1 = v317;
      v410.origin.x = v318;
      v410.origin.y = v319;
      v410.size.width = v317;
      v410.size.height = v320;
    }
  }

  else
  {
    v272 = MEMORY[0x1E69E7D40];
    v190 = v404;
    if (v404)
    {
      goto LABEL_205;
    }
  }

  v321 = OUTLINED_FUNCTION_24_39();
  [v322 v323];
  OUTLINED_FUNCTION_9_76();
  CGRectGetWidth(v447);
  v324 = VUIRoundValue();
  v408 = v325;
  v406 = (*((*v272 & *v154) + 0x168))(v324);
  MEMORY[0x1EEE9AC00](v406);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31E98, &unk_1E42B7580);
  sub_1E4148DE0(sub_1E3AA7590);

  if (v409)
  {

    v48 = v397;
    goto LABEL_224;
  }

  v326 = v421;
  v327 = *(v421 + 16);
  if (v327)
  {
    v407 = MEMORY[0x1E69E7CC0];
    sub_1E3AA7250(0, v327, 0);
    v328 = 0;
    v329 = v407;
    v330 = (v326 + 64);
    v1 = v410.size.width;
    while (v328 < *(v326 + 16))
    {
      v331 = *(v330 - 3);
      v332 = *(v330 - 2);
      v334 = *(v330 - 1);
      v333 = *v330;
      v335 = *(v330 - 4);
      v448.origin.x = OUTLINED_FUNCTION_21_55();
      if (CGRectIntersectsRect(v448, v410))
      {
        v334 = v408;
        if (v404)
        {
          [v405 bounds];
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_21_55();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v331 = v336;
          v332 = v337;
          v334 = v338;
          v333 = v339;
        }

        v340 = OUTLINED_FUNCTION_21_55();
        [v341 v342];
      }

      v344 = *(v407 + 16);
      v343 = *(v407 + 24);
      if (v344 >= v343 >> 1)
      {
        v346 = OUTLINED_FUNCTION_35(v343);
        sub_1E3AA7250(v346, v344 + 1, 1);
      }

      *(v407 + 16) = v344 + 1;
      v345 = (v407 + 40 * v344);
      v345[4] = v335;
      ++v328;
      v345[5] = v331;
      v345[6] = v332;
      v345[7] = v334;
      v345[8] = v333;
      v330 += 5;
      if (v327 == v328)
      {

        goto LABEL_220;
      }
    }

    goto LABEL_252;
  }

  v329 = MEMORY[0x1E69E7CC0];
LABEL_220:
  v421 = v329;
  v154 = v405;
LABEL_223:
  v48 = v397;
  v190 = v404;
LABEL_224:
  v347 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7_20();
  v349 = (*(v348 + 360))();
  if (v349)
  {
    v350 = v349;
    [v349 setFrame_];
  }

  OUTLINED_FUNCTION_7_20();
  v352 = (*(v351 + 384))();
  v353 = v401;
  if (v352)
  {
    v354 = v352;
    if (v48 > 0.0)
    {
      [v352 prepareLayoutWithMaxWidth_];
    }

    v355 = v354;
    OUTLINED_FUNCTION_56_18();
    [v356 v357];
    v359 = v358;
    OUTLINED_FUNCTION_41_29();
    v361 = v360();
    if (v361 && (sub_1E37CB21C(v361), OUTLINED_FUNCTION_122(), , sel_sizeThatFits_))
    {
      +[(sizeThatFits: *)sel_sizeThatFits_];
      v362 = CGRectGetMaxY(v449);
      OUTLINED_FUNCTION_35_32();
      v364 = v363();
      v365 = 0.0;
      if (v364)
      {
        v365 = *(v364 + 200);
      }

      [(sizeThatFits: *)sel_sizeThatFits_ bottomMarginWithBaselineMargin:v365, *&v381];
      v367 = v366;

      v1 = v362 + v367 + 0.0;
    }

    else
    {
      OUTLINED_FUNCTION_35_32();
      v369 = v368();
      if (v369)
      {
        v1 = *(v369 + 200);
      }
    }

    if (v48 > 0.0 && v359 > 0.0)
    {
      v370 = 0.0;
      if (v190)
      {
        [v154 bounds];
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        v1 = v371;
        v48 = v372;
        v359 = v373;
      }

      [v347 setFrame_];
    }

    v353 = v401;
  }

  v374 = v387();
  if (v388 && (v374 & 1) != 0)
  {
    sub_1E3280A90(0, &unk_1ECF31E80, 0x1E696AB10);
    v375 = v388;
    v376 = sub_1E389BF5C(v353, v396, v398, v402);
    MEMORY[0x1E69109E0](v376);

    MEMORY[0x1E69109E0](93, 0xE100000000000000);
    v377 = sub_1E4205ED4();

    sub_1E4206854();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v378 = swift_allocObject();
    *(v378 + 16) = xmmword_1E4297BE0;
    *(v378 + 56) = sub_1E3280A90(0, &qword_1ECF31E90, 0x1E696AD60);
    *(v378 + 32) = v375;
    v379 = v375;
    OUTLINED_FUNCTION_11_5();
    sub_1E4207B14();
  }

  v380 = v424;

LABEL_246:
  OUTLINED_FUNCTION_42();
}

void sub_1E3AA45D4()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v278 = v4;
  v6 = v5;
  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 192);
  v10 = v9();
  v11 = MEMORY[0x1E69DDCE0];
  if (!v10 || (OUTLINED_FUNCTION_30(), (*(v12 + 176))(v304), v13 = *v304, v14 = *&v304[1], v15 = *&v304[3], , (v305 & 1) != 0))
  {
    v13 = *v11;
    v14 = v11[1];
    v15 = v11[3];
  }

  v286 = v13;
  v16 = OUTLINED_FUNCTION_17_4();
  v277 = v17;
  v19 = sub_1E3952BE0(v16, v18, v17, v15);
  v300 = MEMORY[0x1E69E7CC0];
  v301 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_30_39();
  if (!v9() || (OUTLINED_FUNCTION_30(), (*(v20 + 1920))(), OUTLINED_FUNCTION_122(), , OUTLINED_FUNCTION_26(), (*(v21 + 152))(v306), v22 = *v306, v23 = *&v306[1], v288 = *&v306[2], v289 = *&v306[3], , (v307 & 1) != 0))
  {
    v22 = *v11;
    v23 = v11[1];
    v288 = v11[2];
    v289 = v11[3];
  }

  v24 = v6 - v19;
  OUTLINED_FUNCTION_48();
  v273 = *(v25 + 240);
  v26 = v273();
  v276 = v6;
  if (v26)
  {
    v27 = v26;
    [v26 vui:v6 - v19 sizeThatFits:0.0];
    v279 = v28;
    v30 = v29;
  }

  else
  {
    v279 = 0.0;
    v30 = 0.0;
  }

  v31 = v14 + v23;
  v32 = [v1 vuiTraitCollection];
  v33 = [v32 isAXLargeEnabled];

  v270 = v278 * 0.5;
  v34 = v278 * 0.5 - v30 * 0.5;
  v284 = v30 + sub_1E3952BD8(v286, v14, v277);
  MidY = sub_1E3952BD8(v22, v23, v288);
  v283 = v33;
  v272 = v23;
  if (v33)
  {
    v303 = v23;
    v310.origin.x = v31;
    v310.origin.y = v286 + v22;
    v310.size.width = v279;
    v310.size.height = v30;
    v36 = v22 + CGRectGetMaxY(v310);
  }

  else
  {
    v37 = v30;
    v290 = v24;
    v38 = objc_opt_self();
    v39 = sub_1E391D8AC();
    v40 = *v39;
    v41 = [v1 vuiTraitCollection];
    [v38 scaleContentSizeValue:v41 forTraitCollection:v40];
    v43 = v42;

    v44 = *v39;
    v45 = (*((*v7 & *v1) + 0x150))();
    if (v45)
    {

      v46 = v43 + v44;
    }

    else
    {
      v46 = 0.0;
    }

    v36 = v286;
    v47 = sub_1E3952BE0(v22, v272, v288, v289);
    v311.size.width = v279;
    v24 = v290 - (v46 + v279 + v47);
    v311.origin.x = v31;
    v311.origin.y = v34;
    v30 = v37;
    v311.size.height = v37;
    v303 = v289 + CGRectGetMaxX(v311);
  }

  v48 = v284 + MidY;
  v302 = v36;
  OUTLINED_FUNCTION_48();
  v50 = (*(v49 + 312))();
  v281 = v9;
  if (!v50)
  {
    v54 = 0.0;
    v287 = 0;
    if (v3)
    {
      v91 = 1;
      v55 = 0.0;
      goto LABEL_83;
    }

    v55 = 0.0;
LABEL_54:
    v293.origin.x = 0.0;
    v92 = MEMORY[0x1E69E7D40];
    if ((v283 & 1) == 0)
    {
      v302 = (v278 - v54) * 0.5;
    }

    OUTLINED_FUNCTION_32();
    v94 = *(v93 + 216);
    v95 = v94();
    if (v95)
    {
      v96 = v95;
      [v1 bounds];
      OUTLINED_FUNCTION_19_61();
      [v1 vuiIsRTL];
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v96 setFrame_];
    }

    v97 = v273();
    if (v97)
    {
      v7 = v97;
      v98 = v94();
      if (v98)
      {
        v99 = v98;
        [v98 bounds];
        OUTLINED_FUNCTION_19_61();
      }

      else
      {
        OUTLINED_FUNCTION_38_25();
      }

      v100 = OUTLINED_FUNCTION_14_87();
      [v101 v102];
    }

    OUTLINED_FUNCTION_34_37();
    v104 = v103();
    if (v104)
    {
      v7 = 0;
      sub_1E3AA0998(v104, &v303, &v302, &v301, &v293, v1, &v300);
    }

    OUTLINED_FUNCTION_32();
    v105 += 36;
    v106 = *v105;
    v107 = (*v105)();
    if (v107 && (v297[0] = v107, sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0, qword_1E42DC520), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v295 + 1))
      {
        sub_1E3251BE8(&v294, v297);
        v7 = v298;
        v108 = v299;
        __swift_project_boxed_opaque_existential_1(v297, v298);
        v109 = v273();
        v110 = [v109 image];

        (*(v108 + 8))(v110, v7, v108, v279, v30);
        v92 = MEMORY[0x1E69E7D40];
        v111 = __swift_destroy_boxed_opaque_existential_1(v297);
LABEL_71:
        v112 = (v106)(v111);
        if (v112)
        {
          v7 = v112;
          v113 = v94();
          if (v113)
          {
            v114 = v113;
            [v113 bounds];
            OUTLINED_FUNCTION_19_61();
          }

          else
          {
            OUTLINED_FUNCTION_38_25();
          }

          v115 = OUTLINED_FUNCTION_14_87();
          [v116 v117];
        }

        OUTLINED_FUNCTION_32();
        v119 = (*(v118 + 408))();
        if (v119)
        {
          v7 = v119;
          OUTLINED_FUNCTION_30_39();
          if (v9())
          {
            OUTLINED_FUNCTION_30();
            (*(v120 + 176))(v308);
          }

          OUTLINED_FUNCTION_30_39();
          v121 = v9();
          if (v121)
          {
            OUTLINED_FUNCTION_30();
            (*(v122 + 1920))();
            OUTLINED_FUNCTION_122();

            OUTLINED_FUNCTION_26();
            (*(v123 + 152))(v309);
          }

          v124 = *((*v92 & *v7) + 0x70);
          (v124)(v121);
          v124();
          v125 = v7;
          [v1 bounds];
          MidY = v126;
          [v1 vuiIsRTL];
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          [v125 setFrame_];
        }

        v91 = 0;
        goto LABEL_83;
      }
    }

    else
    {
      v296 = 0;
      v294 = 0u;
      v295 = 0u;
    }

    v111 = sub_1E3AA22F4(&v294);
    goto LABEL_71;
  }

  v51 = v50;
  v274 = v3;
  v52 = sub_1E32AE9B0(v50);
  v53 = 0;
  v287 = 0;
  v7 = (v51 & 0xFFFFFFFFFFFFFF8);
  v54 = 0.0;
  v55 = 0.0;
  v285 = MEMORY[0x1E69E7CC0];
  v282 = MEMORY[0x1E69E7CC0];
  while (v52 != v53)
  {
    if ((v51 & 0xC000000000000001) != 0)
    {
      v56 = MEMORY[0x1E6911E60](v53, v51);
    }

    else
    {
      if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_191;
      }

      v56 = *(v51 + 8 * v53 + 32);
    }

    v57 = v56;
    v58 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      return;
    }

    v59 = [v56 textLayout];
    [v59 margin];
    v61 = v60;
    MidY = v62;

    [v57 sizeThatFits_];
    v55 = v63;
    if (v63 == 0.0 && v64 == 0.0)
    {

      ++v53;
    }

    else
    {
      if (v24 - MidY < v63)
      {
        v55 = v24 - MidY;
      }

      VUIRoundValue();
      MidY = 0.0;
      v66 = v65 + 0.0;
      if (v61 > 0.0)
      {
        v67 = v287;
        sub_1E3C8B6B4(v287, v61);
        MidY = v68;

        if (MidY < 0.0)
        {
          v69 = 0.0;
        }

        else
        {
          v69 = MidY;
        }

        v66 = v66 + v69;
      }

      if (v274)
      {
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v70 = v285;
        }

        else
        {
          v77 = OUTLINED_FUNCTION_57_12();
          v70 = sub_1E3AA7150(v77, v78, v79, v80);
        }

        v72 = *(v70 + 2);
        v71 = *(v70 + 3);
        if (v72 >= v71 >> 1)
        {
          v81 = OUTLINED_FUNCTION_35(v71);
          v70 = sub_1E3AA7150(v81, v72 + 1, 1, v82);
        }

        *(v70 + 2) = v72 + 1;
        v73 = &v70[16 * v72];
        *(v73 + 4) = v55;
        *(v73 + 5) = v66;
        v285 = v70;
        v301 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = OUTLINED_FUNCTION_57_12();
          v282 = sub_1E39ABC54(v83, v84, v85, v86);
        }

        v75 = *(v282 + 2);
        v74 = *(v282 + 3);
        v76 = v75 + 1;
        if (v75 >= v74 >> 1)
        {
          v87 = OUTLINED_FUNCTION_35(v74);
          v89 = v88;
          v90 = sub_1E39ABC54(v87, v88, 1, v282);
          v76 = v89;
          v282 = v90;
        }

        *(v282 + 2) = v76;
        *&v282[8 * v75 + 32] = MidY;

        v300 = v282;
      }

      v54 = v54 + v66;
      if (v283)
      {
        v48 = v48 + v66;
      }

      v53 = v58;
      v287 = v57;
    }
  }

  if ((v274 & 1) == 0)
  {
    goto LABEL_54;
  }

  v91 = 1;
LABEL_83:
  [v1 bounds];
  v280 = v127;
  v129 = v128;
  v130 = sub_1E3AA6160();
  v275 = [v1 vuiIsRTL];
  memset(&v293, 0, sizeof(v293));
  v131 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))();
  if (v131)
  {
    v132 = v131;
    memset(&v292, 0, sizeof(v292));
    v291 = 0;
    type metadata accessor for ContextMenuButton();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_126;
    }

    OUTLINED_FUNCTION_30_39();
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v7 = (*(v133 + 2088))();

      if (v7 != 20)
      {
        LOBYTE(v297[0]) = v7;
        LOBYTE(v294) = 8;
        sub_1E3AA77D0(v134, v135, v136);
        if (sub_1E4205E84())
        {
          goto LABEL_91;
        }
      }
    }

    OUTLINED_FUNCTION_30_39();
    if (v9() && (OUTLINED_FUNCTION_30(), v7 = (*(v137 + 2088))(), v138 = , v7 != 20))
    {
      LOBYTE(v297[0]) = v7;
      LOBYTE(v294) = 9;
      sub_1E3AA77D0(v138, v139, v140);
      if ((sub_1E4205E84() | v283))
      {
        goto LABEL_91;
      }
    }

    else if (v283)
    {
LABEL_91:
      OUTLINED_FUNCTION_34_37();
      v142 = v141();
      if (!v142)
      {
        goto LABEL_126;
      }

      sub_1E37CB21C(v142);
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_34_37();
    v181 = v180();
    if (!v181)
    {
      goto LABEL_126;
    }

    sub_1E37FDFF8(v181);
LABEL_119:
    OUTLINED_FUNCTION_11_5();

    if (v7)
    {
      OUTLINED_FUNCTION_30_39();
      if (!v9() || (OUTLINED_FUNCTION_30(), (*(v182 + 1992))(), OUTLINED_FUNCTION_122(), , OUTLINED_FUNCTION_26(), (*(v183 + 152))(&v294), v184 = *(&v295 + 1), , (v296 & 1) != 0))
      {
        v184 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      if (v283)
      {
        v291 = 1;
        [v7 numberOfLinesRequiredForTextWidth_];
        VUIRoundValue();
        if (v91)
        {

          MaxY = 0.0;
        }

        else
        {
          v292.size.height = v185;
          objc_opt_self();
          sub_1E391D8B8();
          v253 = [v1 vuiTraitCollection];
          v254 = OUTLINED_FUNCTION_49_6();
          [v255 v256];
          v258 = v257;

          v292.size.width = v258;
          if (v287)
          {
            [v287 frame];
            MaxY = CGRectGetMaxY(v319);
          }

          else
          {
            MaxY = 0.0;
          }

          v292.origin.y = MaxY;
        }

        MidY = MaxY;
LABEL_127:
        v187 = [v1 vuiIsRTL];
        OUTLINED_FUNCTION_19();
        v314.origin.x = OUTLINED_FUNCTION_26_43();
        if (CGRectEqualToRect(v314, v324))
        {
          v188 = [v132 vui:v280 sizeThatFits:v129];
          v190 = v189;
          v192 = v191;
          if (!(v281)(v188) || (OUTLINED_FUNCTION_30(), (*(v194 + 1968))(), OUTLINED_FUNCTION_11_5(), , OUTLINED_FUNCTION_47_0(), (*(v195 + 152))(v297), v196 = *&v298, , (v299 & 1) != 0))
          {
            v196 = *(MEMORY[0x1E69DDCE0] + 24);
          }

          sub_1E3A92050(v130, 2, v193);
          OUTLINED_FUNCTION_34_37();
          v198 = v197();
          if (v198)
          {
            v199 = sub_1E37FDFF8(v198);

            v200 = MEMORY[0x1E69E7D40];
            if (v199)
            {
              v201 = [v199 textLayout];
              v202 = [v201 maximumContentSizeCategory];

              v203 = objc_opt_self();
              v204 = [v199 textLayout];
              [v204 margin];
              v206 = v205;

              v207 = [v1 vuiTraitCollection];
              [v203 scaleContentSizeValue:v207 forTraitCollection:v202 maximumContentSizeCategory:v206];

              v208 = [v199 vuiFont];
              if (v208)
              {
                v209 = v208;
                [v208 capHeight];
              }
            }
          }

          else
          {
            v200 = MEMORY[0x1E69E7D40];
          }

          VUIRoundValue();
          v211 = v210;
          OUTLINED_FUNCTION_8_77();
          v292.origin.x = v280 - CGRectGetWidth(v315) - v196;
          v292.origin.y = v211;
          v292.size.width = v190;
          v292.size.height = v192;
          MidY = v211;
          if (!v187)
          {
            goto LABEL_145;
          }
        }

        else
        {
          v200 = MEMORY[0x1E69E7D40];
          if (!v187)
          {
LABEL_145:
            v216 = OUTLINED_FUNCTION_26_43();
            [v217 v218];
            OUTLINED_FUNCTION_8_77();
            CGRectGetWidth(v316);
            v219 = VUIRoundValue();
            v7 = (*((*v200 & *v1) + 0x168))(v219);
            MEMORY[0x1EEE9AC00](v7);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31E98, &unk_1E42B7580);
            sub_1E4148DE0(sub_1E3AA7824);

            v147 = v280;
            if ((v291 & 1) == 0)
            {
              OUTLINED_FUNCTION_34_37();
              v221 = v220();
              if (v221)
              {
                v222 = v221;
                v7 = sub_1E32AE9B0(v221);
                for (i = 0; v7 != i; ++i)
                {
                  if ((v222 & 0xC000000000000001) != 0)
                  {
                    v224 = MEMORY[0x1E6911E60](i, v222);
                  }

                  else
                  {
                    if (i >= *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_193;
                    }

                    v224 = *(v222 + 8 * i + 32);
                  }

                  v225 = v224;
                  if (__OFADD__(i, 1))
                  {
                    goto LABEL_192;
                  }

                  [v224 frame];
                  OUTLINED_FUNCTION_18_3();
                  if (CGRectIntersectsRect(v317, v292))
                  {
                    if (v187)
                    {
                      [v1 bounds];
                      OUTLINED_FUNCTION_2_6();
                      OUTLINED_FUNCTION_17_4();
                      VUIRectWithFlippedOriginRelativeToBoundingRect();
                      OUTLINED_FUNCTION_18_3();
                    }

                    v226 = OUTLINED_FUNCTION_17_4();
                    [v227 v228];
                  }
                }
              }
            }

            v9 = v281;
            goto LABEL_161;
          }
        }

        [v1 bounds];
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_26_43();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        OUTLINED_FUNCTION_47_26();
        [v1 bounds];
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_8_77();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        v292.origin.x = v212;
        v292.origin.y = v213;
        v292.size.width = v214;
        v292.size.height = v215;
        goto LABEL_145;
      }

      if ((v91 & 1) == 0)
      {
        [v7 frame];
        v292.size.height = CGRectGetHeight(v320);
        v259 = objc_opt_self();
        v260 = *sub_1E391D8AC();
        v261 = [v1 vuiTraitCollection];
        [v259 scaleContentSizeValue:v261 forTraitCollection:v260];
        v263 = v262;

        v292.size.width = v263;
        v264 = CGRect.center.getter(0.0, 0.0, v263, v292.size.height);
        CGRect.center.setter(v264, v271);
        OUTLINED_FUNCTION_8_77();
        v292.origin.x = v280 - CGRectGetWidth(v321) - v184;
        OUTLINED_FUNCTION_8_77();
        MidY = fmin(CGRectGetWidth(v322) + -40.0, 0.0);
        OUTLINED_FUNCTION_8_77();
        Height = CGRectGetHeight(v323);
        v266 = sub_1E3952C10(MidY, fmin(Height + -30.0, 0.0));
        sub_1E3CEE8A0(v266, v267, v268, v269, v292.origin.x);
        OUTLINED_FUNCTION_47_26();

        goto LABEL_127;
      }
    }

LABEL_126:
    MidY = 0.0;
    goto LABEL_127;
  }

  VUIRoundValue();
  v144 = v143;
  OUTLINED_FUNCTION_34_37();
  v146 = v145();
  if (v146)
  {
    sub_1E37FDFF8(v146);
    OUTLINED_FUNCTION_11_5();

    v147 = v280;
    if (v7)
    {
      OUTLINED_FUNCTION_32();
      v149 = (*(v148 + 360))();
      if (v149)
      {
        v150 = v149;
        v151 = v7;
        v7 = v9;
        v152 = v151;
        v153 = 0.0;
        [v151 sizeThatFits_];
        v155 = v154;
        [v152 frame];
        OUTLINED_FUNCTION_19_61();
        v157 = v156;

        OUTLINED_FUNCTION_30_39();
        if ((v7)())
        {
          OUTLINED_FUNCTION_30();
          (*(v158 + 2016))();
          OUTLINED_FUNCTION_11_5();

          OUTLINED_FUNCTION_47_0();
          (*(v159 + 152))(v297);

          if (v299)
          {
            v153 = 0.0;
          }

          else
          {
            v153 = *&v297[1];
          }
        }

        [v150 vui:v276 sizeThatFits:v278];
        v161 = v160;
        v163 = v162;
        v293.size.width = v160;
        v293.size.height = v162;
        v164 = v155 + MidY + v153;
        v293.origin.x = v164;
        v312.origin.x = OUTLINED_FUNCTION_14_87();
        v312.size.height = v157;
        MidY = CGRectGetMidY(v312);
        v165 = CGRect.center.getter(v164, 0.0, v161, v163);
        v166 = CGRect.center.setter(v165, MidY);
        if (v275)
        {
          MidY = v293.origin.x;
          [v1 bounds];
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_14_87();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v293.origin.x = v167;
          v293.origin.y = v168;
          v293.size.width = v169;
          v293.size.height = v170;
        }

        OUTLINED_FUNCTION_34_37();
        v172 = v171();
        v147 = v280;
        if (v172)
        {
          v173 = v172;
          v7 = sub_1E32AE9B0(v172);
          for (j = 0; v7 != j; ++j)
          {
            if ((v173 & 0xC000000000000001) != 0)
            {
              v175 = MEMORY[0x1E6911E60](j, v173);
            }

            else
            {
              if (j >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_195;
              }

              v175 = *(v173 + 8 * j + 32);
            }

            v176 = v175;
            if (__OFADD__(j, 1))
            {
              goto LABEL_194;
            }

            [v175 frame];
            OUTLINED_FUNCTION_19_61();
            if (CGRectIntersectsRect(v313, v293))
            {
              if (v275)
              {
                [v1 bounds];
                OUTLINED_FUNCTION_2_6();
                OUTLINED_FUNCTION_16_70();
                VUIRectWithFlippedOriginRelativeToBoundingRect();
                OUTLINED_FUNCTION_19_61();
              }

              v177 = OUTLINED_FUNCTION_16_70();
              [v178 v179];
            }
          }
        }

        else
        {
        }

        v9 = v281;
      }

      else
      {
      }
    }
  }

  else
  {
    v147 = v280;
  }

LABEL_161:
  OUTLINED_FUNCTION_32();
  v230 = (*(v229 + 360))();
  if (v230)
  {
    v231 = v230;
    [v230 setFrame_];
  }

  OUTLINED_FUNCTION_32();
  v233 = (*(v232 + 384))();
  if (v233)
  {
    v234 = v233;
    v235 = v287;
    if (v147 > 0.0)
    {
      [v233 prepareLayoutWithMaxWidth_];
    }

    v236 = v234;
    OUTLINED_FUNCTION_56_18();
    [v237 v238];
    v240 = v239;
    OUTLINED_FUNCTION_34_37();
    v242 = v241();
    if (v242 && (sub_1E37CB21C(v242), OUTLINED_FUNCTION_122(), , sel_sizeThatFits_))
    {
      +[(sizeThatFits: *)sel_sizeThatFits_];
      v243 = CGRectGetMaxY(v318);
      OUTLINED_FUNCTION_30_39();
      v244 = v9();
      v245 = 0.0;
      if (v244)
      {
        v245 = *(v244 + 200);
      }

      [(sizeThatFits: *)sel_sizeThatFits_ bottomMarginWithBaselineMargin:v245];
      v247 = v246;

      MidY = v243 + v247 + 0.0;
    }

    else
    {
      OUTLINED_FUNCTION_30_39();
      v248 = v9();
      if (v248)
      {
        MidY = *(v248 + 200);
      }
    }

    if (v147 > 0.0 && v240 > 0.0)
    {
      v249 = 0.0;
      if (v275)
      {
        [v1 bounds];
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        MidY = v250;
        v147 = v251;
        v240 = v252;
      }

      [v7 setFrame_];

      goto LABEL_181;
    }
  }

  else
  {

    v235 = v287;
  }

LABEL_181:
  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E3AA6160()
{
  OUTLINED_FUNCTION_21();
  if (!(*(v0 + 192))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_0();
  (*(v1 + 1920))();
  OUTLINED_FUNCTION_26_0();
  v3 = (*(v2 + 504))();

  if (v3 == 18)
  {
    return 0;
  }

  return v3;
}

void sub_1E3AA6240(double a1)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 312))();
  v5 = MEMORY[0x1E69DDCE0];
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = v4;
  if (!sub_1E32AE9B0(v4))
  {

LABEL_8:
    v40 = v5[1];
    v41 = *v5;
    v13 = v5[3];
    v39 = v5[2];
    goto LABEL_9;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  OUTLINED_FUNCTION_11_5();

  v8 = [v1 textLayout];

  [v8 margin];
  v40 = v10;
  v41 = v9;
  v39 = v11;
  v13 = v12;

LABEL_9:
  OUTLINED_FUNCTION_25_0();
  v15 = *(v14 + 192);
  v16 = v15();
  if (!v16 || (OUTLINED_FUNCTION_30(), (*(v17 + 1944))(v18, v19, v20), OUTLINED_FUNCTION_11_5(), , OUTLINED_FUNCTION_47_0(), (*(v21 + 152))(v42), v22 = *v42, v23 = *&v42[1], v25 = *&v42[2], v24 = *&v42[3], v16 = , (v43 & 1) != 0))
  {
    v22 = *v5;
    v23 = v5[1];
    v25 = v5[2];
    v24 = v5[3];
  }

  if ((v15)(v16))
  {
    OUTLINED_FUNCTION_30();
    (*(v26 + 1944))(v27, v28, v29);
    OUTLINED_FUNCTION_11_5();

    (*(*v1 + 1696))(v30);
  }

  v31 = sub_1E3AA6160();
  OUTLINED_FUNCTION_25_0();
  if ((*(v32 + 440))(a1) != 0.0 || v33 != 0.0)
  {
    if ((v31 & 0xFE) == 4 || (OUTLINED_FUNCTION_25_0(), (v38 = (*(v34 + 264))(v35, v36, v37)) == 0))
    {
      sub_1E3952BE0(v41, v40, v39, v13);
    }

    else
    {

      sub_1E3952BE0(v22, v23, v25, v24);
    }
  }

  VUIRoundValue();
}

unint64_t sub_1E3AA65A0(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v19 = sub_1E4207384();
    if (v19)
    {
      v20 = v19;
      v2 = sub_1E37FEA14(v19, 0);
      sub_1E3AA740C(v2 + 32, v20, v1);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v1 = *(v2 + 16);
        v3 = v1 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v23 = sub_1E4207384();
      if (v23 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v1 = v23;
    v3 = v23 / 2;
LABEL_6:
    if (v1 + 1 < 3)
    {
      return v2;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v1 - (v6 - 3);
      if (__OFSUB__(v1, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1E6911E60]();
          v12 = MEMORY[0x1E6911E60](v1 - (v6 - 3), v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          if (v7 >= v9)
          {
            goto LABEL_34;
          }

          v10 = *(v2 + 8 * v7 + 32);
          v11 = *(v2 + 8 * v6);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_1E37EFA58(v2);
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          v2 = sub_1E37EFA58(v2);
          v15 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_35;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_1E3AA6800(double a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 240))();
  if (v3)
  {

    if (a1 > 0.0)
    {
      OUTLINED_FUNCTION_21();
      if ((*(v4 + 192))())
      {
        type metadata accessor for CardView();
        OUTLINED_FUNCTION_8();
        (*(v5 + 1920))();
        sub_1E3AA6900(a1);
        OUTLINED_FUNCTION_19_61();
      }
    }
  }

  OUTLINED_FUNCTION_16_70();
}

uint64_t sub_1E3AA6900(double a1)
{
  OUTLINED_FUNCTION_30();
  v4 = (*(v3 + 504))();
  if (v4 == 18)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  if ((sub_1E3A92050(v6, 0, v5) & 1) != 0 || (sub_1E3A92050(v6, 2, v7) & 1) != 0 || (sub_1E3A92050(v6, 3, v8)) && a1 > 0.0)
  {
    OUTLINED_FUNCTION_8();
    (*(v9 + 208))();
    (*(*v1 + 312))(0, 0);
  }

  OUTLINED_FUNCTION_8();
  return (*(v10 + 2288))();
}

void sub_1E3AA6CD8()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 288))();
  if (v1)
  {
    v2 = v1;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      OUTLINED_FUNCTION_21();
      v6 = (*(v5 + 240))();
      if (v6)
      {
        v7 = v6;
        v8 = [v6 image];
        if (v8)
        {

          v9 = [v7 image];
          [v4 sampleWithImage_];

          v10 = v7;
          v2 = v9;
        }

        else
        {
          v10 = v2;
          v2 = v7;
        }
      }
    }
  }
}

uint64_t sub_1E3AA6E44(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1E6911E60](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1E6911E60](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1E4206F64();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void *sub_1E3AA7018(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31ED0, &qword_1E42B75A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31ED8, &qword_1E42B75A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3AA7150(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31EC0, qword_1E42D2C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1E3AA7250(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3AA7270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3AA7270(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31ED0, &qword_1E42B75A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31ED8, &qword_1E42B75A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3AA73A8(void *a1)
{
  v1 = [a1 vuiText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3AA740C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3827828(&qword_1EE23B448, &qword_1ECF2FB50, &qword_1E42DC5C0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB50, &qword_1E42DC5C0);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E3AA7590(void **a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *a1;
  if (!(*((*MEMORY[0x1E69E7D40] & **(v1 + 16)) + 0xC0))() || (OUTLINED_FUNCTION_30(), v9 = (*(v8 + 2016))(), v10 = , (*(*v9 + 152))(v41, v10), v11 = v41[3], , (v42 & 1) != 0))
  {
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v43.origin.x = OUTLINED_FUNCTION_55_21();
  [v7 vui:CGRectGetWidth(v43) sizeThatFits:0.0];
  *(v2 + 16) = v12;
  *(v2 + 24) = v13;
  if (*v3 == 1)
  {
    if (v13 == 0.0 && v12 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 6.0;
    }

    v16 = OUTLINED_FUNCTION_55_21();
    if (v4)
    {
      MinX = CGRectGetMinX(*&v16);
      v21 = MinX - CGRectGetWidth(*v2) - *&v11 - v15;
    }

    else
    {
      v21 = v15 + *&v11 + CGRectGetMaxX(*&v16);
    }

    *v2 = v21;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_55_21();
    if (v4)
    {
      v26 = *&v11 + CGRectGetMaxX(*&v22);
    }

    else
    {
      v27 = CGRectGetMinX(*&v22);
      Width = CGRectGetWidth(*v2);
      v26 = sub_1E4149E0C(v11, 0, v27 - Width);
    }

    *v2 = v26;
    v29 = *(v2 + 8);
    v30 = *(v2 + 16);
    v31 = *(v2 + 24);
    v32 = CGRectGetWidth(*&v26);
    v33 = OUTLINED_FUNCTION_14_87();
    *v5 = *v5 - (v32 + sub_1E3952BE0(v33, v34, v35, *&v11) - *(v6 + 8));
  }

  v44.origin.x = OUTLINED_FUNCTION_55_21();
  CGRectGetMidY(v44);
  v36 = OUTLINED_FUNCTION_23_44();
  v40 = CGRect.center.getter(v36, v37, v38, v39);
  CGRect.center.setter(v40, *&v11);
}

unint64_t sub_1E3AA77D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE259C70;
  if (!qword_1EE259C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C70);
  }

  return result;
}

double sub_1E3AA7824(void **a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *a1;
  if ((*((*MEMORY[0x1E69E7D40] & **(v1 + 16)) + 0xC0))())
  {
    OUTLINED_FUNCTION_30();
    (*(v9 + 2016))();
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_47_0();
    (*(v10 + 152))(v44);

    if (v45)
    {
      v11 = 0;
    }

    else
    {
      v11 = v44[3];
    }
  }

  else
  {
    v11 = 0;
  }

  [v8 vui:v4[2] sizeThatFits:v4[3]];
  v3->size.width = v12;
  v3->size.height = v13;
  if (*v5 == 1)
  {
    if (v13 == 0.0 && v12 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 6.0;
    }

    v16 = *v4;
    v17 = *(v4 + 1);
    v18 = *(v4 + 2);
    v19 = *(v4 + 3);
    if (v6)
    {
      CGRectGetMinX(*&v16);
      v46.origin.x = OUTLINED_FUNCTION_23_44();
      CGRectGetWidth(v46);
      v20 = OUTLINED_FUNCTION_27_36();
      v23 = sub_1E4149E0C(v20, v21, v22) - v15;
    }

    else
    {
      CGRectGetMaxX(*&v16);
      v31 = OUTLINED_FUNCTION_27_36();
      v23 = v15 + sub_1E4149E00(v31, v32, v33);
    }
  }

  else
  {
    v24 = *v4;
    v25 = *(v4 + 1);
    v26 = *(v4 + 2);
    v27 = *(v4 + 3);
    if (v6)
    {
      CGRectGetMaxX(*&v24);
      v28 = OUTLINED_FUNCTION_27_36();
      v23 = sub_1E4149E00(v28, v29, v30);
    }

    else
    {
      CGRectGetMinX(*&v24);
      v47.origin.x = OUTLINED_FUNCTION_23_44();
      CGRectGetWidth(v47);
      v34 = OUTLINED_FUNCTION_27_36();
      v23 = sub_1E4149E0C(v34, v35, v36);
    }
  }

  v3->origin.x = v23;
  CGRectGetMidY(*v4);
  v37 = OUTLINED_FUNCTION_23_44();
  v41 = CGRect.center.getter(v37, v38, v39, v40);
  CGRect.center.setter(v41, v2);
  Width = CGRectGetWidth(*v3);
  result = *v7 - sub_1E4149E00(v11, v8, Width);
  *v7 = result;
  return result;
}

double sub_1E3AA7AAC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;

  return result;
}

double sub_1E3AA7B7C(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1E3AA7BCC(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_1E3AA7C48;
}

void sub_1E3AA7C48(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1E3AA7CC8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  if (v2)
  {
    v2 = *(v2 + 16);
  }

  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E3AA7CE8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);

  return v2 != 0;
}

uint64_t sub_1E3AA7D30()
{
  OUTLINED_FUNCTION_1_132();
  v0 = swift_allocObject();
  sub_1E3AA7DB8();
  return v0;
}

void sub_1E3AA7DB8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_1_132();
  v1[11] = 0;
  swift_weakInit();
  v1[13] = 0;
  v1[14] = 0;
  v1[15] = MEMORY[0x1E69E7CC0];
  v1[2] = v8;
  v1[3] = v7;
  v1[6] = v4;
  v1[7] = v3;
  v1[4] = v6;
  v1[5] = v5;
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = v9;
  v10 = v9;
  sub_1E3AA8304();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AA7E30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

void sub_1E3AA7E68(unint64_t result, char a2)
{
  v3 = *(v2 + 72);
  if (*(v2 + 112) != v3)
  {
    if (a2)
    {
      *(v2 + 112) = 0;
    }

    v4 = sub_1E32AE9B0(result);
    v5 = *(v2 + 112);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 112) = v7;
      sub_1E3AA7F1C();
      if (v8)
      {
        v9 = v8;
        swift_beginAccess();
        sub_1E3AA9790(v9);
        swift_endAccess();
      }

      if (*(v2 + 112) == v3)
      {
        sub_1E3AA8B30();
      }
    }
  }
}

void sub_1E3AA7F1C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = type metadata accessor for ComingSoonInfo(0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v28 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v25 - v8;
  v32[0] = MEMORY[0x1E69E7CC0];
  v9 = sub_1E32AE9B0(v1);
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {
      v11 = v32[0];
      v12 = sub_1E32AE9B0(v32[0]);
      if (!v12)
      {
LABEL_32:

        OUTLINED_FUNCTION_25_2();
        return;
      }

      v13 = v12;
      v26 = v4;
      v27 = v2;
      v14 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v13 == v14)
        {
          goto LABEL_32;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1E6911E60](v14, v11);
        }

        else
        {
          if (v14 >= *(v11 + 16))
          {
            goto LABEL_36;
          }

          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_35;
        }

        v33 = &unk_1F5D5D0A8;
        v34 = &off_1F5D5C758;
        LOBYTE(v32[0]) = 4;
        v17 = sub_1E39C29A4(v32);
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_1(v32);
        if (!v19)
        {
          break;
        }

        v31 = 6;
        (*(*v15 + 776))(v32, &v31, &unk_1F5D5D7F8, &off_1F5D5C8F8);
        if (v33)
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_25;
          }

          v20 = v28;
          sub_1E41FE564();

          *v20 = v17;
          v20[1] = v19;
          sub_1E3AA9C1C(v20, v29);
          v21 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1E3AA94D4(0, v21[2] + 1, 1, v21);
          }

          v23 = v21[2];
          v22 = v21[3];
          if (v23 >= v22 >> 1)
          {
            v21 = sub_1E3AA94D4((v22 > 1), v23 + 1, 1, v21);
          }

          v21[2] = v23 + 1;
          v24 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v30 = v21;
          sub_1E3AA9C1C(v29, v21 + v24 + *(v26 + 72) * v23);
          v14 = v16;
        }

        else
        {

          sub_1E325F748(v32, &unk_1ECF296E0, &unk_1E4298030);
LABEL_25:
          ++v14;
        }
      }

      goto LABEL_25;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for EpisodeCollectionViewModel();
    if (sub_1E3CCBC80())
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1E3AA8304()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v29 = [v8 sidebandMediaLibrary];

  v9 = v1[2];
  v10 = v1[3];
  v11 = sub_1E4205ED4();
  v12 = [v29 seasonForCanonicalIDOrAdamID:v11 createIfNeeded:0];

  if (v12)
  {
    v13 = sub_1E3AA9AF0(v12);
    if (v13)
    {
      sub_1E3AA85E8(v13);
      v15 = v14;

      v16 = sub_1E32AE9D4();
      (*(v4 + 16))(v7, v16, v2);

      v17 = sub_1E41FFC94();
      v18 = sub_1E42067E4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v28 = v4;
        v20 = v19;
        v21 = swift_slowAlloc();
        v27 = v2;
        v22 = v15;
        v23 = v21;
        v30 = v21;
        *v20 = 134218242;
        *(v20 + 4) = *(v22 + 16);

        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_1E3270FC8(v9, v10, &v30);
        _os_log_impl(&dword_1E323F000, v17, v18, "SeasonMetadata:: loaded %ld coming soon videos of season: %s from CoreData", v20, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v15 = v22;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v28 + 8))(v7, v27);
      }

      else
      {

        (*(v4 + 8))(v7, v2);
      }

      v1[13] = v15;

      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AA85E8(uint64_t a1)
{
  v57 = sub_1E41FE5D4();
  v3 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F00, &qword_1E42B76F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v46 - v8);
  v10 = type metadata accessor for ComingSoonInfo(0);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v46 - v13;
  v50 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E3AA9B90();
    sub_1E3AA9BD4(&qword_1ECF31EF8, 255, sub_1E3AA9B90, MEMORY[0x1E69E81B8]);
    sub_1E4206664();
    a1 = v62;
    v14 = v63;
    v16 = v64;
    v15 = v65;
    v17 = v66;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = a1 + 56;
    v16 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a1 + 56);

    v15 = 0;
  }

  v49 = v16;
  v21 = (v16 + 64) >> 6;
  v51 = MEMORY[0x1E69E7CC0];
  v52 = a1;
  v53 = (v3 + 32);
  v54 = v14;
  v59 = v21;
LABEL_8:
  for (i = v15; a1 < 0; v17 = v60)
  {
    v26 = sub_1E42073C4();
    if (!v26)
    {
      goto LABEL_30;
    }

    v61 = v26;
    sub_1E3AA9B90();
    swift_dynamicCast();
    v25 = v67;
    v15 = i;
    v60 = v17;
    if (!v67)
    {
      goto LABEL_30;
    }

LABEL_17:
    v27 = sub_1E3AA9C80(v25);
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      v31 = [v25 availabilityStartDate];
      if (v31)
      {
        v32 = v31;
        v33 = v56;
        sub_1E41FE584();

        v58 = v29;
        v34 = *v53;
        v35 = v55;
        v36 = v33;
        v37 = v57;
        (*v53)(v55, v36, v57);
        v38 = v35;
        a1 = v52;
        v39 = v37;
        v14 = v54;
        v34(v9 + *(v10 + 20), v38, v39);
        v40 = 0;
        *v9 = v58;
        v9[1] = v30;
        goto LABEL_22;
      }
    }

    v40 = 1;
LABEL_22:
    v21 = v59;
    __swift_storeEnumTagSinglePayload(v9, v40, 1, v10);

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      v41 = v46;
      sub_1E3AA9C1C(v9, v46);
      sub_1E3AA9C1C(v41, v48);
      v42 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1E3AA94D4(0, v42[2] + 1, 1, v42);
      }

      v44 = v42[2];
      v43 = v42[3];
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1E3AA94D4((v43 > 1), v44 + 1, 1, v42);
      }

      v42[2] = v44 + 1;
      v45 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v51 = v42;
      sub_1E3AA9C1C(v48, v42 + v45 + *(v47 + 72) * v44);
      v17 = v60;
      goto LABEL_8;
    }

    sub_1E325F748(v9, &qword_1ECF31F00, &qword_1E42B76F8);
    i = v15;
  }

  v23 = i;
  v24 = v17;
  v15 = i;
  if (v17)
  {
LABEL_13:
    v60 = (v24 - 1) & v24;
    v25 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v24)))));
    if (v25)
    {
      goto LABEL_17;
    }

LABEL_30:
    sub_1E34AF4DC(a1);
  }

  else
  {
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v21)
      {
        goto LABEL_30;
      }

      v24 = *(v14 + 8 * v15);
      ++v23;
      if (v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1E3AA8B30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v71 = v3;
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ComingSoonInfo(0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v67 - v11);
  if (v0[13])
  {
    v13 = v0[13];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = v13[2];
  v73 = v6;
  v74 = v0;
  if (v14)
  {
    v78 = MEMORY[0x1E69E7CC0];

    sub_1E377FD30(0, v14, 0);
    v15 = v78;
    OUTLINED_FUNCTION_4_111();
    v75 = v13;
    v17 = v13 + v16;
    v18 = *(v6 + 72);
    do
    {
      sub_1E3AA9A30(v17, v12);
      v20 = *v12;
      v19 = v12[1];

      sub_1E3AA9A94(v12);
      v78 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1E377FD30((v21 > 1), v22 + 1, 1);
        v15 = v78;
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v17 += v18;
      --v14;
    }

    while (v14);

    v6 = v73;
    v1 = v74;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1E32772D8(v15);
  swift_beginAccess();
  v25 = v1[15];
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v75 = v24;
    v77 = MEMORY[0x1E69E7CC0];

    sub_1E377FD30(0, v26, 0);
    v27 = v77;
    OUTLINED_FUNCTION_4_111();
    v69 = v25;
    v29 = v25 + v28;
    v30 = *(v6 + 72);
    do
    {
      sub_1E3AA9A30(v29, v12);
      v32 = *v12;
      v31 = v12[1];

      sub_1E3AA9A94(v12);
      v77 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1E377FD30((v33 > 1), v34 + 1, 1);
        v27 = v77;
      }

      *(v27 + 16) = v34 + 1;
      v35 = v27 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      v29 += v30;
      --v26;
    }

    while (v26);

    v6 = v73;
    v1 = v74;
    v24 = v75;
  }

  v36 = sub_1E32772D8(v27);
  v37 = sub_1E3868C04(v24, v36);

  if ((v37 & 1) == 0)
  {
    v38 = [objc_opt_self() defaultManager];
    v39 = [v38 sidebandMediaLibrary];

    v40 = v1[2];
    v41 = v1[3];
    v42 = sub_1E4205ED4();
    v43 = [v39 seasonForCanonicalIDOrAdamID:v42 createIfNeeded:1];

    if (v43)
    {
      sub_1E3AA9C80(v43);
      if (v44)
      {
      }

      else
      {
        v45 = sub_1E4205ED4();
        OUTLINED_FUNCTION_9_77(v45, sel_setCanonicalID_);

        v46 = sub_1E4205ED4();
        OUTLINED_FUNCTION_9_77(v46, sel_setTitle_);
      }

      v47 = sub_1E3AA9AF0(v43);
      if (v47)
      {
        if (sub_1E374CEE0(v47))
        {
        }

        else
        {
          sub_1E3AA9B90();
          sub_1E3AA9BD4(&qword_1ECF31EF8, 255, sub_1E3AA9B90, MEMORY[0x1E69E81B8]);
          v48 = sub_1E4206614();

          [v43 removeComingSoonVideos_];
        }
      }

      v68 = v41;
      v69 = v40;
      v75 = v43;
      v49 = *(v1[15] + 16);
      if (v49)
      {
        OUTLINED_FUNCTION_4_111();
        v52 = v50 + v51;
        v53 = *(v6 + 72);
        v73 = v50;

        do
        {
          sub_1E3AA9A30(v52, v9);
          v54 = sub_1E4205ED4();
          v55 = [v39 comingSoonObjectWithCanonicalID:v54 createIfNeeded:1];

          if (v55)
          {
            v56 = sub_1E4205ED4();
            OUTLINED_FUNCTION_9_77(v56, sel_setCanonicalID_);

            v57 = sub_1E41FE514();
            OUTLINED_FUNCTION_9_77(v57, sel_setAvailabilityStartDate_);

            [v75 addComingSoonVideosObject_];
          }

          sub_1E3AA9A94(v9);
          v52 += v53;
          --v49;
        }

        while (v49);

        v1 = v74;
        v58 = *(v74[15] + 16);
      }

      else
      {
        v58 = 0;
      }

      v59 = sub_1E32AE9D4();
      v61 = v70;
      v60 = v71;
      v62 = v72;
      (*(v71 + 16))(v70, v59, v72);

      v63 = sub_1E41FFC94();
      v64 = sub_1E42067E4();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v77 = v66;
        *v65 = 134218242;
        *(v65 + 4) = v58;
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_1E3270FC8(v69, v68, &v77);
        _os_log_impl(&dword_1E323F000, v63, v64, "SeasonMetadata:: saved %ld coming soon videos of season: %s to CoreData", v65, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v66);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v60 + 8))(v61, v62);
      [v39 saveChangesToManagedObjects];
    }

    v1[13] = v1[15];
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AA9208()
{

  swift_weakDestroy();

  return v0;
}

uint64_t sub_1E3AA9260()
{
  sub_1E3AA9208();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1E3AA9294()
{
  sub_1E4207B44();
  (*(*v0 + 240))(v2);
  return sub_1E4207BA4();
}

uint64_t sub_1E3AA9374(uint64_t a1)
{
  sub_1E4207B44();
  OUTLINED_FUNCTION_5_2();
  (*(v1 + 240))(v3);
  return sub_1E4207BA4();
}

uint64_t sub_1E3AA93F0()
{
  MEMORY[0x1E69109E0](*v0, v0[1]);
  MEMORY[0x1E69109E0](0x203A6574616420, 0xE700000000000000);
  type metadata accessor for ComingSoonInfo(0);
  sub_1E41FE5D4();
  sub_1E3AA9BD4(&qword_1ECF31EE0, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v1 = sub_1E4207944();
  MEMORY[0x1E69109E0](v1);

  return 540697705;
}

void *sub_1E3AA94D4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1E3AA95C0(v8, v7);
  v10 = *(type metadata accessor for ComingSoonInfo(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3AA96BC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E3AA95C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31EE8, &qword_1E42B76F0);
  v4 = *(type metadata accessor for ComingSoonInfo(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3AA96BC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for ComingSoonInfo(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for ComingSoonInfo(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3AA9790(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E3AA99C8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for ComingSoonInfo(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ComingSoonInfo(uint64_t a1)
{
  result = qword_1ECF54FD0;
  if (!qword_1ECF54FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3AA994C(uint64_t a1)
{
  result = sub_1E41FE5D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1E3AA99C8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E3AA94D4(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3AA9A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComingSoonInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AA9A94(uint64_t a1)
{
  v2 = type metadata accessor for ComingSoonInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3AA9AF0(void *a1)
{
  v1 = [a1 comingSoonVideos];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3AA9B90();
  sub_1E3AA9BD4(&qword_1ECF31EF8, 255, sub_1E3AA9B90, MEMORY[0x1E69E81B8]);
  v3 = sub_1E4206624();

  return v3;
}

unint64_t sub_1E3AA9B90()
{
  result = qword_1ECF31EF0;
  if (!qword_1ECF31EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF31EF0);
  }

  return result;
}

uint64_t sub_1E3AA9BD4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1E3AA9C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComingSoonInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AA9C80(void *a1)
{
  v1 = [a1 canonicalID];
  if (v1)
  {
    v2 = v1;
    sub_1E4205F14();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3AA9CE0(char a1)
{
  v2 = type metadata accessor for ScoreboardLayout();
  if (!a1)
  {
    return sub_1E3AEC014(v2);
  }

  if (a1 == 1)
  {
    return sub_1E3AEC538(v2);
  }

  return sub_1E3AEC99C(v2);
}

unint64_t sub_1E3AA9D30()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3AA9DB4(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3AA9DF4(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3AA9E48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3AA9D30();
  *a1 = result;
  return result;
}

uint64_t sub_1E3AA9E78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3AA9D7C(*v1);
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

char *sub_1E3AA9EC0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_labels] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews] = v1;
  v2 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_layout;
  v3 = type metadata accessor for ScoreboardLayout();
  *&v0[v2] = sub_1E3AEC014(v3);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v5 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView;
  *&v0[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView] = v4;
  [v4 setAxis_];
  [*&v0[v5] setAlignment_];
  [*&v0[v5] setDistribution_];
  [*&v0[v5] setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  *&v0[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_materialBackgroundView] = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v15.receiver = v0;
  v15.super_class = type metadata accessor for LegacyScoreboardView();
  v7 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView;
  [v7 vui:*&v7[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView] addSubview:0 oldView:?];
  v9 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_materialBackgroundView;
  [v7 vui:*&v7[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_materialBackgroundView] addSubview:0 oldView:?];
  [v7 vui:*&v7[v9] sendSubviewToBack:?];
  [v7 vui:1 setOverrideUserInterfaceStyle:?];
  v10 = [*&v7[v8] widthAnchor];
  v11 = [*&v7[v8] heightAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor_];

  LODWORD(v13) = 1148846080;
  [v12 setPriority_];
  [v12 setActive_];

  return v7;
}

void sub_1E3AAA138()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_labels) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews) = v1;
  v2 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_layout;
  v3 = type metadata accessor for ScoreboardLayout();
  *(v0 + v2) = sub_1E3AEC014(v3);
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3AAA1F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v134 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F08, &qword_1E42B7718);
  sub_1E4148DE0(sub_1E3AABC78);
  [v2 setVuiClipsToBounds_];
  v5 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_layout;
  OUTLINED_FUNCTION_36();
  v7 = *(v6 + 552);

  v7(&v134, v8);

  if ((v135 & 1) == 0)
  {
    v9 = [v2 vuiLayer];
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_self();
      sub_1E3952BF8();
      [v11 radiusFromCornerRadii_];
      [v10 setCornerRadius_];
    }
  }

  v12 = *(v4 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView);
  OUTLINED_FUNCTION_8();
  v14 = *(v13 + 1176);

  *&v16 = COERCE_DOUBLE(v14(v15));
  v18 = v17;

  v19 = *&v16;
  if (v18)
  {
    v19 = 4.0;
  }

  [v12 setSpacing_];
  v20 = sub_1E377C574();
  v21 = sub_1E388ED3C(v20);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);
  v24 = v22 + 32;

  v25 = 0;
  v26 = &qword_1EE23AE80;
  v125 = v22;
  v126 = v12;
  v129 = v4;
  v123 = v22 + 32;
  v124 = v23;
  while (v25 != v23)
  {
    if (v25 >= *(v22 + 16))
    {
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
      goto LABEL_122;
    }

    v27 = *(v24 + 8 * v25);
    v28 = *(v4 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView);
    v128 = v27;
    v29 = v25;

    v127 = v28;
    v30 = [v28 arrangedSubviews];
    v24 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v31 = sub_1E42062B4();

    v133 = v31;
    v130 = v29;
    v136 = v29;
    v137 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80, &qword_1E42B7720);
    sub_1E3AABCC4();
    v32 = OUTLINED_FUNCTION_1_133();
    sub_1E38D2054(v32, v33);

    if (!v132)
    {
      goto LABEL_15;
    }

    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (!v34)
    {

LABEL_15:
      v34 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    }

    v22 = v34;
    [v34 setAxis_];
    [v22 setAlignment_];
    [v22 setDistribution_];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    OUTLINED_FUNCTION_36();
    v36 = *(v35 + 1864);

    v38 = v36(v37);

    [v22 setSpacing_];
    v39 = 0;
    v12 = *(v128 + 16);
    v4 = v128 + 40;
    while (v12 != v39)
    {
      v40 = *v4;
      v131 = *(v4 - 8);

      OUTLINED_FUNCTION_36();
      v42 = *(v41 + 1792);

      v44 = v42(v43);

      (*(*v44 + 2408))(v45);
      OUTLINED_FUNCTION_31_4();

      [v44 copy];

      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E3280A90(0, &qword_1ECF31F10, off_1E8728640);
      swift_dynamicCast();
      v46 = v133;
      if (v130 > 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = 2 * (v39 != 0);
      }

      [v133 setAlignment_];
      v48 = [v22 arrangedSubviews];
      v49 = sub_1E42062B4();

      v133 = v49;
      v136 = v39;
      v137 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80, &qword_1E42B7720);
      v50 = OUTLINED_FUNCTION_1_133();
      sub_1E38D2054(v50, v51);

      if (v132)
      {
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (!v52)
        {
        }
      }

      else
      {
        v52 = 0;
      }

      sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);

      v53 = v46;
      v54 = sub_1E3810954(v131, v40, v53, v52);
      LODWORD(v55) = 1148846080;
      [v54 setContentHuggingPriority:0 forAxis:v55];
      LODWORD(v56) = 1148846080;
      [v54 setContentHuggingPriority:1 forAxis:v56];
      LODWORD(v57) = 1148846080;
      [v54 setContentCompressionResistancePriority:1 forAxis:v57];
      [v54 vui_setNeedsLayout];
      [v22 insertArrangedSubview:v54 atIndex:v39];

      v4 += 16;
      v39 = (v39 + 1);
    }

    v26 = [v22 arrangedSubviews];
    v58 = sub_1E42062B4();

    if (v58 >> 62)
    {
      v59 = OUTLINED_FUNCTION_4_112();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = &selRef_vui_disableLocalAsset;

    if (v59 < v12)
    {
      goto LABEL_117;
    }

    if (v59 != v12)
    {
      while (v12 < v59)
      {
        v60 = (v59 - 1);
        v26 = [v22 arrangedSubviews];
        v61 = sub_1E42062B4();

        if ((v61 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x1E6911E60](v59 - 1, v61);
        }

        else
        {
          if (v60 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v62 = *(v61 + 8 * v59 + 24);
        }

        v63 = v62;

        [v63 vui_removeFromSuperView];

        v59 = v60;
        if (v12 == v60)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      break;
    }

LABEL_37:
    [v127 insertArrangedSubview:v22 atIndex:v130];

    v12 = v126;
    v25 = v130 + 1;
    v4 = v129;
    v23 = v124;
    v22 = v125;
    v24 = v123;
    v26 = &qword_1EE23AE80;
  }

  v3 = *(v22 + 16);

  v64 = OUTLINED_FUNCTION_7_107();
  v24 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v22 = sub_1E42062B4();

  if (!(v22 >> 62))
  {
    v65 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_122:
  v65 = sub_1E4207384();
LABEL_43:

  if (v65 < v3)
  {
    __break(1u);
  }

  else
  {
    if (v65 == v3)
    {
LABEL_53:
      v68 = OUTLINED_FUNCTION_7_107();
      sub_1E42062B4();

      v136 = 0;
      v137 = 0;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80, &qword_1E42B7720);
      sub_1E3AABCC4();
      v69 = OUTLINED_FUNCTION_1_133();
      sub_1E38D2054(v69, v70);

      if (v132)
      {
        v71 = OUTLINED_FUNCTION_7_107();
        sub_1E42062B4();

        v136 = 1;
        v137 = 0;
        v72 = OUTLINED_FUNCTION_1_133();
        sub_1E38D2054(v72, v73);
        v24 = v132;

        v74 = objc_opt_self();
        OUTLINED_FUNCTION_36();
        v76 = *(v75 + 1792);

        v78 = v76(v77);

        v65 = (*(*v78 + 2408))(v79);

        v26 = [v74 vui:v65 fontFromTextLayout:?];

        if (v26)
        {
          [v26 descender];
          VUIRoundValue();
          v81 = fabs(v80);
          [v26 ascender];
          VUIRoundValue();
          v83 = v82;
          OUTLINED_FUNCTION_36();
          v85 = *(v84 + 1792);

          v87 = v85(v86);

          *&v89 = COERCE_DOUBLE((*(*v87 + 1176))(v88));
          LOBYTE(v85) = v90;

          v91 = *&v89;
          if (v85)
          {
            v91 = 14.0;
          }

          v92 = v91 - (v81 + v83);
          v65 = &selRef_secureInvalidationNonceURL;
          [v12 setCustomSpacing:v132 afterView:v92];
          [v12 setCustomSpacing:v132 afterView:v81 + v92 + 2.0];
        }

        else
        {
        }
      }
    }

    else
    {
      while (v3 < v65)
      {
        v22 = v65 - 1;
        v66 = OUTLINED_FUNCTION_7_107();
        v26 = sub_1E42062B4();

        if ((v26 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v65 - 1, v26);
        }

        else
        {
          if (v65 < 1)
          {
            goto LABEL_59;
          }

          if (v22 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v67 = *(v26 + 8 * v65 + 24);
        }

        OUTLINED_FUNCTION_31_4();

        [v65 vui_removeFromSuperView];

        if (v3 == v22)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    v93 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
    if (v3)
    {
      if (v3 >= 1)
      {
        v94 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews;
        v95 = v4;
        swift_beginAccess();
        v22 = 0;
        v4 = 2;
        v12 = &selRef_setRenderAsTemplate_;
        while (1)
        {
          if (!v4)
          {
            v96 = *&v95[v94];
            if (v96 >> 62)
            {
              v97 = sub_1E4207384();
            }

            else
            {
              v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v22 >= v97)
            {
              v24 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
              [v95 vui:v24 addSubview:0 oldView:?];
              v98 = swift_beginAccess();
              MEMORY[0x1E6910BF0](v98);
              v26 = *((*&v95[v94] & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v26 >= *((*&v95[v94] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E42062F4();
              }

              sub_1E4206324();
              swift_endAccess();
            }

            v99 = *&v95[v94];
            if ((v99 & 0xC000000000000001) != 0)
            {

              v24 = MEMORY[0x1E6911E60](v22, v99);
            }

            else
            {
              if (v22 < 0)
              {
                goto LABEL_119;
              }

              if (v22 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_121;
              }

              v24 = *(v99 + 8 * v22 + 32);
            }

            OUTLINED_FUNCTION_8();
            v101 = *(v100 + 1840);

            v26 = v101(v102);

            (*(*v26 + 744))(v103);
            OUTLINED_FUNCTION_31_4();

            [v24 setVuiBackgroundColor_];

            v104 = __OFADD__(v22++, 1);
            if (v104)
            {
              goto LABEL_120;
            }
          }

          --v4;
          if (!--v3)
          {
            goto LABEL_81;
          }
        }
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v95 = v4;
    v22 = 0;
LABEL_81:
    v3 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews;
    v4 = v95;
    swift_beginAccess();
    v65 = *&v95[v3];
    v26 = v65 >> 62;
    if (!(v65 >> 62))
    {
      v105 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v106 = v105;
      if (v105 >= v22)
      {
        goto LABEL_83;
      }

      __break(1u);
      goto LABEL_127;
    }
  }

  result = sub_1E4207384();
  if (result < v22)
  {
    goto LABEL_142;
  }

  v106 = result;
  v105 = sub_1E4207384();
LABEL_83:
  if (v105 < v22)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v12 = v126;
  if (v22 < 0)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_11_18(v65 & 0xFFFFFFFFFFFFFF8);
    v107 = sub_1E4207384();
  }

  else
  {
    v107 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v107 < v106)
  {
    goto LABEL_129;
  }

  if (v106 < 0)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  sub_1E3AABE34(v22, v106, v65);
  v24 = v108;
  v26 = v109;
  v111 = v110;
  v113 = v112;

  v65 = v113 >> 1;
  swift_unknownObjectRetain();
  while (v65 != v111)
  {
    if (v111 >= v65)
    {
      goto LABEL_118;
    }

    [*(v26 + 8 * v111++) vui_removeFromSuperView];
  }

  swift_unknownObjectRelease_n();
  v114 = *(v4 + v3);
  if (!(v114 >> 62))
  {
    v93 = (v114 & 0xFFFFFFFFFFFFFF8);
    v115 = v93[2];
    goto LABEL_96;
  }

LABEL_131:
  v115 = sub_1E4207384();
LABEL_96:
  v24 = v115 - v22;
  if (__OFSUB__(v115, v22))
  {
    __break(1u);
    goto LABEL_133;
  }

  swift_beginAccess();
  if (!v24)
  {
LABEL_114:
    swift_endAccess();
    [v4 vui:v12 bringSubviewToFront:?];
    return [v4 vui_setNeedsLayout];
  }

  if (v24 < 0)
  {
    goto LABEL_134;
  }

  v65 = *(v4 + v3);
  v93 = (v65 & 0xFFFFFFFFFFFFFF8);
  v26 = v65 >> 62;
  if (v65 >> 62)
  {
LABEL_135:
    OUTLINED_FUNCTION_11_18(v93);
    v116 = sub_1E4207384();
  }

  else
  {
    v116 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1E380055C(v116, -v24, 0);
  if (v118)
  {
    goto LABEL_141;
  }

  v119 = result;
  v120 = v116 - result;
  if (v116 < result)
  {
    __break(1u);
    goto LABEL_137;
  }

  if (result < 0)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_11_18(v65 & 0xFFFFFFFFFFFFFF8);
    result = sub_1E4207384();
  }

  else
  {
    result = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v116)
  {
    goto LABEL_138;
  }

  v104 = __OFSUB__(0, v120);
  v121 = -v120;
  if (v104)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_11_18(v65 & 0xFFFFFFFFFFFFFF8);
    v122 = sub_1E4207384();
  }

  else
  {
    v122 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = __OFADD__(v122, v121);
  result = v122 + v121;
  if (!v104)
  {
    sub_1E3879104(result, 1);
    sub_1E3AABD28(v119, v116, 0);
    goto LABEL_114;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

void sub_1E3AAB2B4(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView);
  [v4 vui_layoutIfNeeded];
  [v4 vui:0.0 sizeThatFits:0.0];
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 176);

  v10(v68, v11);
  v12 = *v68;
  v13 = *&v68[1];
  v14 = *&v68[2];
  v15 = *&v68[3];

  v16 = v69;
  if (v69)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1E3952BE0(v12, v13, v14, v15);
  }

  v18 = sub_1E4149E00(v17, v16 & 1, v6);
  OUTLINED_FUNCTION_0_130();
  v20 = *(v19 + 176);

  v20(v70, v21);
  v22 = *v70;
  v23 = *&v70[1];
  v24 = *&v70[2];

  v25 = v71;
  if (v71)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1E3952BD8(v22, v23, v24);
  }

  v27 = sub_1E4149E00(v26, v25 & 1, v8);
  if ((a1 & 1) == 0)
  {
    v28 = *(v2 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_materialBackgroundView);
    [v28 frame];
    v31 = v27 == v30 && v18 == v29;
    [v28 setFrame_];
    OUTLINED_FUNCTION_8();
    v33 = *(v32 + 176);

    v33(v72, v34);

    if (v73)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = *&v72[1];
    }

    OUTLINED_FUNCTION_8();
    v37 = *(v36 + 176);

    v37(v74, v38);

    if (v75)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = v74[0];
    }

    [v4 setFrame_];
    v40 = [v4 arrangedSubviews];
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v41 = sub_1E42062B4();

    v42 = sub_1E32AE9B0(v41);

    if (v42 < 0)
    {
LABEL_46:
      __break(1u);
      return;
    }

    v63 = v31;
    if (v42)
    {
      v64 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews;
      swift_beginAccess();
      v43 = 0;
      v44 = 0;
      v45 = 0.0;
      while (1)
      {
        v46 = [v4 arrangedSubviews];
        v47 = sub_1E42062B4();

        if (v47 >> 62)
        {
          v48 = OUTLINED_FUNCTION_4_112();
        }

        else
        {
          v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v49 = v8 / v48;
        if (!v44)
        {
          OUTLINED_FUNCTION_0_130();
          v51 = *(v50 + 176);

          v51(v76, v52);

          v53 = v76[0];
          if (v77)
          {
            v53 = 0.0;
          }

          v49 = v49 + v53;
        }

        v54 = [v4 arrangedSubviews];
        v55 = sub_1E42062B4();

        v56 = v55 >> 62 ? OUTLINED_FUNCTION_4_112() : *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (__OFSUB__(v56, 1))
        {
          break;
        }

        if (v44 == v56 - 1)
        {
          OUTLINED_FUNCTION_0_130();
          v58 = *(v57 + 176);

          v58(v78, v59);

          v60 = *&v78[2];
          if (v79)
          {
            v60 = 0.0;
          }

          v49 = v49 + v60;
        }

        if (v44 == 2)
        {
          v67[1] = *(v2 + v64);
          v65 = v43;
          v66 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80, &qword_1E42B7720);
          sub_1E3AABCC4();
          sub_1E38D2054(&v65, v67);
          v61 = v67[0];
          if (v67[0])
          {
            [v67[0] setFrame_];
          }

          if (__OFADD__(v43++, 1))
          {
            goto LABEL_45;
          }
        }

        ++v44;
        v45 = v45 + v49;
        if (v42 == v44)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_41:
    if (!v63)
    {
      sub_1E3AAB80C(0.2);
    }
  }
}

void sub_1E3AAB80C(double a1)
{
  [v1 vui_setNeedsDisplay];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_1E3AAC05C;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E378AEA4;
  v7[3] = &block_descriptor_18;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 transitionWithView:v6 duration:5242880 options:v5 animations:0 completion:a1];
  _Block_release(v5);
}

void sub_1E3AAB920(uint64_t a1, uint64_t a2, double a3)
{
  [v3 vui_setNeedsDisplay];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v3;
  v11[4] = sub_1E3AABF2C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E378AEA4;
  v11[3] = &block_descriptor_52;
  v9 = _Block_copy(v11);
  v10 = v3;
  OUTLINED_FUNCTION_31_4();

  [v7 transitionWithView:v3 duration:5242880 options:v9 animations:0 completion:a3];
  _Block_release(v9);
}

id sub_1E3AABAC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyScoreboardView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3AABB6C(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  result = sub_1E3780DC4(a1);
  if (!result)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(result + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(result + 8 * a2 + 32);

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v6 + 16) > a3)
  {
    v7 = *(v6 + 16 * a3 + 32);

    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1E3AABC1C(void *a1, char a2, char a3)
{
  if (!a1 || (v5 = sub_1E3780DC4(a1)) == 0 || (v6 = *(v5 + 16), , v6 <= 1))
  {
    a2 = a3;
  }

  if (a2)
  {
    return 26;
  }

  else
  {
    return 0;
  }
}

double sub_1E3AABC78(void *a1)
{
  *(*(v1 + 16) + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_layout) = *a1;

  return result;
}

unint64_t sub_1E3AABCC4()
{
  result = qword_1ECF37A20;
  if (!qword_1ECF37A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2FC80, &qword_1E42B7720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A20);
  }

  return result;
}

uint64_t sub_1E3AABD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void sub_1E3AABE34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 != a2)
  {
    if (a1 >= a2)
    {
LABEL_14:
      __break(1u);
      return;
    }

    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

    v6 = a1;
    do
    {
      v7 = v6 + 1;
      sub_1E42074F4();
      v6 = v7;
    }

    while (a2 != v7);
  }

  else
  {
LABEL_4:
  }

  if (a3 >> 62)
  {

    sub_1E4207704();
    return;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }
}

id sub_1E3AABF2C()
{
  v1 = *(v0 + 32);
  [v1 forceDisplayIfNeeded];

  return [v1 setAlpha_];
}

_BYTE *storeEnumTagSinglePayload for ScoreboardType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

id sub_1E3AAC05C()
{
  v1 = *(v0 + 16);
  [v1 forceDisplayIfNeeded];

  return [v1 setAlpha_];
}

void sub_1E3AAC0B8()
{
  OUTLINED_FUNCTION_31_1();
  v99 = v3;
  v106 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F18, &qword_1E42B7890);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F20, &qword_1E42B7898);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v105 = v8;
  OUTLINED_FUNCTION_138();
  v97 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v96 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v13 = v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F28, &qword_1E42B78A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F30, &qword_1E42B78A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F38, &qword_1E42B78B0);
  OUTLINED_FUNCTION_0_10();
  v94 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F40, &qword_1E42B78B8);
  OUTLINED_FUNCTION_0_10();
  v95 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v98 = v22;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F48, &qword_1E42B78C0);
  OUTLINED_FUNCTION_0_10();
  v91 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v25);
  v113[0] = *(v0 + 3);
  v26 = *(&v113[0] + 1);
  OUTLINED_FUNCTION_47_0();
  v28 = *(v27 + 168);

  if ((v28(v29) & 1) != 0 && ([objc_opt_self() isStoreOrPressDemoMode] & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    v43 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F80, &qword_1E42B78E8) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F98, &qword_1E42B78F0);
    OUTLINED_FUNCTION_47_0();
    v86 = *(v44 + 192);
    v87 = v44 + 192;
    v85 = v13;
    v86();
    sub_1E4203AD4();
    v88 = *(v96 + 8);
    v89 = v96 + 8;
    v45 = OUTLINED_FUNCTION_32_0();
    v46(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8, &unk_1E42B7930);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    *v43 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F58, &unk_1E42B78D0);
    OUTLINED_FUNCTION_2();
    (*(v51 + 16))(v1, v99);
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_0_131();
    v84[2] = sub_1E3AB4478(v52, v53);
    v54 = sub_1E4200504();
    v84[1] = v84;
    v55 = (v1 + *(v90 + 36));
    *v55 = v54;
    v55[1] = v26;
    MEMORY[0x1EEE9AC00](v54);
    OUTLINED_FUNCTION_68_13();
    *(v56 - 16) = v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F68, &qword_1E42B78E0);
    v99 = v5;
    sub_1E3AACDDC();
    sub_1E328FCF4(&qword_1ECF31FB0, &qword_1ECF31F68, &qword_1E42B78E0);
    OUTLINED_FUNCTION_142_4();
    sub_1E4203504();
    sub_1E325F6F0(v1, &qword_1ECF31F28, &qword_1E42B78A0);
    v57 = sub_1E42010C4();
    v58 = v100;
    v59 = (&qword_1ECF31F68 + *(v100 + 36));
    *v59 = v57;
    v59[1] = v60;
    v61 = v85;
    v86();
    v62 = v92;
    v63 = v97;
    (*(v96 + 104))(v92, *MEMORY[0x1E697D708], v97);
    sub_1E4203BE4();
    v64 = v88;
    v88(v62, v63);
    v64(v61, v63);
    v65 = sub_1E3AACCB4();
    v66 = v93;
    sub_1E42033C4();
    sub_1E325F6F0(&qword_1ECF31F68, &qword_1ECF31F30, &qword_1E42B78A8);
    v112 = *(v0 + 1);
    v108 = *(v0 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
    sub_1E42038F4();
    LOBYTE(v107) = v111;
    v111 = *v0;
    OUTLINED_FUNCTION_89();
    v67 = swift_allocObject();
    OUTLINED_FUNCTION_77_10(v67);
    sub_1E3743538(v113, &v108, &qword_1ECF31F50, &qword_1E42B78C8);
    sub_1E3743538(&v111, &v108, &qword_1ECF31FD0, &unk_1E42B7940);
    sub_1E3743538(&v112, &v108, &qword_1ECF294E0, &qword_1E429C8B0);
    *&v108 = v58;
    *(&v108 + 1) = v65;
    v68 = OUTLINED_FUNCTION_39_24();
    v69 = MEMORY[0x1E69E6370];
    v70 = MEMORY[0x1E69E6388];
    v71 = v101;
    sub_1E4203524();

    OUTLINED_FUNCTION_15_5();
    v72(v66, v71);
    OUTLINED_FUNCTION_47_0();
    v107 = (*(v73 + 240))();
    OUTLINED_FUNCTION_89();
    v74 = swift_allocObject();
    OUTLINED_FUNCTION_77_10(v74);
    sub_1E3743538(v113, &v108, &qword_1ECF31F50, &qword_1E42B78C8);
    sub_1E3743538(&v111, &v108, &qword_1ECF31FD0, &unk_1E42B7940);
    sub_1E3743538(&v112, &v108, &qword_1ECF294E0, &qword_1E429C8B0);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB08, &qword_1E42B6340);
    *&v108 = v71;
    *(&v108 + 1) = v69;
    v109 = v68;
    v110 = v70;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_36_29();
    v78 = sub_1E328FCF4(v77, &qword_1ECF2BB08, &qword_1E42B6340);
    OUTLINED_FUNCTION_142_4();
    v79 = v102;
    v80 = v98;
    sub_1E4203524();

    OUTLINED_FUNCTION_15_5();
    v81(v80, v79);
    v82 = v91;
    v83 = v103;
    (*(v91 + 16))(v105, v71, v103);
    swift_storeEnumTagMultiPayload();
    *&v108 = v79;
    *(&v108 + 1) = v75;
    v109 = OpaqueTypeConformance2;
    v110 = v78;
    swift_getOpaqueTypeConformance2();
    sub_1E3AACFCC();
    sub_1E4201F44();
    (*(v82 + 8))(v71, v83);
  }

  else
  {
    sub_1E325F6F0(v113, &qword_1ECF31F50, &qword_1E42B78C8);
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_0_131();
    sub_1E3AB4478(v30, v31);
    OUTLINED_FUNCTION_20_2();
    v32 = sub_1E4200504();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F58, &unk_1E42B78D0);
    OUTLINED_FUNCTION_2();
    (*(v33 + 16))(v2, v99);
    v34 = (v2 + *(v5 + 36));
    *v34 = v32;
    v34[1] = v26;
    sub_1E3743538(v2, v105, &qword_1ECF31F18, &qword_1E42B7890);
    swift_storeEnumTagMultiPayload();

    v35 = OUTLINED_FUNCTION_34();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v35, v36);
    sub_1E3AACCB4();
    OUTLINED_FUNCTION_39_24();
    v38 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_36_29();
    OUTLINED_FUNCTION_55_0();
    *&v108 = v102;
    *(&v108 + 1) = v37;
    v109 = v38;
    v110 = sub_1E328FCF4(v39, v40, v41);
    swift_getOpaqueTypeConformance2();
    sub_1E3AACFCC();
    sub_1E4201F44();
    sub_1E325F6F0(v2, &qword_1ECF31F18, &qword_1E42B7890);
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3AACCB4()
{
  result = qword_1ECF31F60;
  if (!qword_1ECF31F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F30, &qword_1E42B78A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F28, &qword_1E42B78A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F68, &qword_1E42B78E0);
    sub_1E3AACDDC();
    sub_1E328FCF4(&qword_1ECF31FB0, &qword_1ECF31F68, &qword_1E42B78E0);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E3AACF78(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31F60);
  }

  return result;
}

unint64_t sub_1E3AACDDC()
{
  result = qword_1ECF31F70;
  if (!qword_1ECF31F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F28, &qword_1E42B78A0);
    sub_1E3AACE94();
    sub_1E328FCF4(&qword_1ECF31FA0, &qword_1ECF31FA8, &qword_1E42B78F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31F70);
  }

  return result;
}

unint64_t sub_1E3AACE94()
{
  result = qword_1ECF31F78;
  if (!qword_1ECF31F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F80, &qword_1E42B78E8);
    sub_1E328FCF4(&qword_1ECF31F88, &qword_1ECF31F58, &unk_1E42B78D0);
    sub_1E328FCF4(&qword_1ECF31F90, &qword_1ECF31F98, &qword_1E42B78F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31F78);
  }

  return result;
}

unint64_t sub_1E3AACF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF550E0[0];
  if (!qword_1ECF550E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF550E0);
  }

  return result;
}

unint64_t sub_1E3AACFCC()
{
  result = qword_1ECF31FC0;
  if (!qword_1ECF31FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F18, &qword_1E42B7890);
    sub_1E328FCF4(&qword_1ECF31F88, &qword_1ECF31F58, &unk_1E42B78D0);
    sub_1E328FCF4(&qword_1ECF31FA0, &qword_1ECF31FA8, &qword_1E42B78F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31FC0);
  }

  return result;
}

uint64_t sub_1E3AAD0D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0, &qword_1E42B7960);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E3743538(a1, &v5 - v3, &qword_1ECF31FF0, &qword_1E42B7960);
  return sub_1E4201A14();
}

void sub_1E3AAD17C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v62 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A8, &qword_1E42B7B78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v61 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320B0, &qword_1E42B7B80);
  OUTLINED_FUNCTION_0_10();
  v58 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v57 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320B8, &qword_1E42B7B88);
  OUTLINED_FUNCTION_0_10();
  v56 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v55 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320C0, &qword_1E42B7B90);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v22 = sub_1E4202034();
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320C8, &qword_1E42B7B98);
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  sub_1E4201FD4();
  v63 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320D0, &qword_1E42B7BA0);
  sub_1E3AB54EC();
  sub_1E42015A4();
  if (sub_1E39DFFC8())
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v6);
    v29 = OUTLINED_FUNCTION_11_78(&qword_1ECF32100, &qword_1ECF320B8, &qword_1E42B7B88);
    v64 = v10;
    v65 = v29;
    OUTLINED_FUNCTION_6_10();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E690CA30](v18, v6, OpaqueTypeConformance2);
    sub_1E325F6F0(v18, &qword_1ECF320C0, &qword_1E42B7B90);
  }

  else
  {
    v31 = sub_1E4201FE4();
    v53 = &v53;
    MEMORY[0x1EEE9AC00](v31);
    *(&v53 - 2) = v1;
    v54 = v10;
    v32 = OUTLINED_FUNCTION_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    v59 = v21;
    v34 = v6;
    OUTLINED_FUNCTION_55_0();
    sub_1E328FCF4(v35, v36, v37);
    v38 = v55;
    sub_1E42015A4();
    v39 = OUTLINED_FUNCTION_11_78(&qword_1ECF32100, &qword_1ECF320B8, &qword_1E42B7B88);
    v40 = v57;
    v41 = v54;
    MEMORY[0x1E690CA00](v38, v54, v39);
    v42 = v58;
    (*(v58 + 16))(v18, v40, v34);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v34);
    v64 = v41;
    v65 = v39;
    OUTLINED_FUNCTION_6_10();
    v46 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E690CA30](v18, v34, v46);
    sub_1E325F6F0(v18, &qword_1ECF320C0, &qword_1E42B7B90);
    v47 = v34;
    v21 = v59;
    (*(v42 + 8))(v40, v47);
    (*(v56 + 8))(v38, v41);
  }

  v48 = *(v3 + 48);
  v50 = v60;
  v49 = v61;
  (*(v25 + 16))(v61, v28, v60);
  sub_1E3743538(v21, v49 + v48, &qword_1ECF320C0, &qword_1E42B7B90);
  sub_1E4201E04();
  v51 = OUTLINED_FUNCTION_38_0();
  sub_1E325F6F0(v51, v52, &qword_1E42B7B90);
  (*(v25 + 8))(v28, v50);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAD6E4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320E8, &qword_1E42B7BA8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26[-v14 - 8];
  v30 = *(v0 + 3);
  OUTLINED_FUNCTION_36();
  (*(v16 + 408))(v27);
  OUTLINED_FUNCTION_8();
  if (((*(v17 + 168))() & 1) != 0 && (OUTLINED_FUNCTION_8(), (*(v18 + 192))(), (*(v8 + 104))(v12, *MEMORY[0x1E697D708], v6), HIDWORD(v25) = sub_1E4203BE4(), v19 = *(v8 + 8), v19(v12, v6), v19(v15, v6), (v25 & 0x100000000) != 0))
  {
    v29 = *v0;
    v28 = *(v0 + 1);
    OUTLINED_FUNCTION_89();
    v20 = swift_allocObject();
    v21 = *(v1 + 1);
    *(v20 + 16) = *v1;
    *(v20 + 32) = v21;
    *(v20 + 48) = v1[4];
    MEMORY[0x1EEE9AC00](v20);
    OUTLINED_FUNCTION_47_27();
    *(v22 - 16) = v27;
    sub_1E3743538(&v29, v26, &qword_1ECF31FD0, &unk_1E42B7940);
    sub_1E3743538(&v28, v26, &qword_1ECF294E0, &qword_1E429C8B0);
    sub_1E3743538(&v30, v26, &qword_1ECF31F50, &qword_1E42B78C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138, &qword_1E42B7BE8);
    sub_1E3AB55FC();
    sub_1E4203964();
    sub_1E3844FE0(v27);
    OUTLINED_FUNCTION_91();
    v23();
    v24 = 0;
  }

  else
  {
    sub_1E3844FE0(v27);
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v24, 1, v4);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AADA8C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32110, &qword_1E42B7BC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32118, &qword_1E42B7BC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v106 = v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320E8, &qword_1E42B7BA8);
  OUTLINED_FUNCTION_0_10();
  v107 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v112 = v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32120, &qword_1E42B7BD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v104 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v105 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32128, &qword_1E42B7BD8);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v103 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v110 = v22;
  OUTLINED_FUNCTION_138();
  v23 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_67_2();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32130, &qword_1E42B7BE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v111 = v32;
  v120 = *(v0 + 24);
  v33 = *(&v120 + 1);
  (*(**(&v120 + 1) + 408))(v117);
  OUTLINED_FUNCTION_47_0();
  if ((*(v34 + 168))())
  {
    v101 = v1;
    OUTLINED_FUNCTION_47_0();
    (*(v35 + 192))();
    (*(v25 + 104))(v29, *MEMORY[0x1E697D708], v23);
    v36 = sub_1E4203BE4();
    v37 = *(v25 + 8);
    v37(v29, v23);
    v38 = (v37)(v2, v23);
    v39 = (*(*v33 + 384))(v38);
    v40 = v39;
    if (v36)
    {
      v100 = v5;
      OUTLINED_FUNCTION_47_0();
      v42 = *(v41 + 240);
      v98 = v41 + 240;
      v99 = v42;
      v43 = *(v42() + 16);

      LODWORD(v43) = v43 == *(v40 + 16);
      v44 = v110;
      *v110 = sub_1E4203DC4();
      v44[1] = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32158, &qword_1E42B7BF8);
      sub_1E3AAEBB0(v3, v117, v43, v40, v44 + *(v46 + 44));

      v119 = *v3;
      v118 = *(v3 + 8);
      OUTLINED_FUNCTION_89();
      v47 = swift_allocObject();
      OUTLINED_FUNCTION_75_8(v47);
      MEMORY[0x1EEE9AC00](v48);
      OUTLINED_FUNCTION_47_27();
      *(v49 - 16) = v117;
      sub_1E3743538(&v119, &v121, &qword_1ECF31FD0, &unk_1E42B7940);
      sub_1E3743538(&v118, &v121, &qword_1ECF294E0, &qword_1E429C8B0);
      sub_1E3743538(&v120, &v121, &qword_1ECF31F50, &qword_1E42B78C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138, &qword_1E42B7BE8);
      sub_1E3AB55FC();
      sub_1E4203964();
      OUTLINED_FUNCTION_36();
      (*(v50 + 408))(&v121);
      OUTLINED_FUNCTION_8();
      v52 = *((*(v51 + 240))() + 16);

      v53 = &v124;
      if (v52 > 1)
      {
        v53 = &v126;
      }

      v54 = *v53;
      if (*v53)
      {
        v55 = &v125;
        if (v52 <= 1)
        {
          v55 = &v123;
        }

        v56 = *v55;
      }

      else
      {
        v56 = 0;
        v54 = 0xE000000000000000;
      }

      sub_1E3844FE0(&v121);
      v116[0] = v56;
      v116[1] = v54;
      v115 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
      v66 = sub_1E4203914();
      v95 = &v93;
      v93 = v121;
      v94 = v122;
      MEMORY[0x1EEE9AC00](v66);
      OUTLINED_FUNCTION_47_27();
      *(v67 - 16) = v3;
      v68 = OUTLINED_FUNCTION_125();
      __swift_instantiateConcreteTypeFromMangledNameV2(v68, v69);
      v96 = OUTLINED_FUNCTION_9_78(&qword_1ECF320E0, &qword_1ECF320E8, &qword_1E42B7BA8);
      sub_1E32822E0(v96, v70, v71);
      OUTLINED_FUNCTION_6_1();
      v97 = v72;
      sub_1E328FCF4(v73, &qword_1ECF32160, &qword_1E42B7C00);
      v74 = v105;
      sub_1E4203134();

      v75 = OUTLINED_FUNCTION_63_0();
      v77 = v76(v75);
      v78 = *((v99)(v77) + 16);

      v79 = v78 == 0;
      KeyPath = swift_getKeyPath();
      v81 = swift_allocObject();
      *(v81 + 16) = v79;
      v82 = v103;
      v83 = (v74 + *(v102 + 36));
      *v83 = KeyPath;
      v83[1] = sub_1E37E09AC;
      v83[2] = v81;
      v84 = v110;
      sub_1E3743538(v110, v82, &qword_1ECF32128, &qword_1E42B7BD8);
      v85 = v104;
      sub_1E3743538(v74, v104, &qword_1ECF32120, &qword_1E42B7BD0);
      v86 = v106;
      sub_1E3743538(v82, v106, &qword_1ECF32128, &qword_1E42B7BD8);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32170, &qword_1E42B7C38);
      sub_1E3743538(v85, v86 + *(v87 + 48), &qword_1ECF32120, &qword_1E42B7BD0);
      sub_1E325F6F0(v85, &qword_1ECF32120, &qword_1E42B7BD0);
      v88 = OUTLINED_FUNCTION_24_4();
      sub_1E325F6F0(v88, v89, &qword_1E42B7BD8);
      sub_1E3743538(v86, v101, &qword_1ECF32118, &qword_1E42B7BC8);
      swift_storeEnumTagMultiPayload();
      sub_1E328FCF4(&qword_1ECF32148, &qword_1ECF32118, &qword_1E42B7BC8);
      v59 = v111;
      sub_1E4201F44();
      sub_1E3844FE0(v117);
      v90 = OUTLINED_FUNCTION_63_0();
      sub_1E325F6F0(v90, v91, &qword_1E42B7BC8);
      sub_1E325F6F0(v74, &qword_1ECF32120, &qword_1E42B7BD0);
      sub_1E325F6F0(v84, &qword_1ECF32128, &qword_1E42B7BD8);
      v65 = 0;
      v5 = v100;
    }

    else
    {
      v58 = *(v39 + 16);

      v59 = v111;
      if (v58)
      {
        v116[0] = *v3;
        v121 = *(v3 + 8);
        OUTLINED_FUNCTION_89();
        v60 = swift_allocObject();
        OUTLINED_FUNCTION_75_8(v60);
        MEMORY[0x1EEE9AC00](v61);
        sub_1E3743538(&v120, &v118, &qword_1ECF31F50, &qword_1E42B78C8);
        sub_1E3743538(v116, &v118, &qword_1ECF31FD0, &unk_1E42B7940);
        sub_1E3743538(&v121, &v118, &qword_1ECF294E0, &qword_1E429C8B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138, &qword_1E42B7BE8);
        sub_1E3AB55FC();
        sub_1E4203964();
        (*(v107 + 16))(v101, v112, v113);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_6_1();
        sub_1E328FCF4(v62, v63, v64);
        OUTLINED_FUNCTION_9_78(&qword_1ECF320E0, &qword_1ECF320E8, &qword_1E42B7BA8);
        sub_1E4201F44();
        sub_1E3844FE0(v117);
        (*(v107 + 8))(v112, v113);
        v65 = 0;
      }

      else
      {
        sub_1E3844FE0(v117);
        v65 = 1;
      }
    }

    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32150, &qword_1E42B7BF0);
    __swift_storeEnumTagSinglePayload(v59, v65, 1, v92);
    sub_1E3741EA0(v59, v5, &qword_1ECF32130, &qword_1E42B7BE0);
    v57 = 0;
  }

  else
  {
    sub_1E3844FE0(v117);
    v57 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v57, 1, v114);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AAE674(char *a1, uint64_t a2)
{
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *a1;
  result = sub_1E39DFFC8();
  if ((result & 1) == 0 && (v11 & 1) == 0)
  {
    v13 = *(a2 + 32);
    OUTLINED_FUNCTION_12_6();
    result = (*(v14 + 432))();
    if (result != 2)
    {
      sub_1E38462B4(result, v15, v16);
      result = sub_1E4205E84();
      if (result)
      {
        (*(v6 + 104))(v10, *MEMORY[0x1E697D710], v4);
        OUTLINED_FUNCTION_12_6();
        (*(v17 + 200))(v10);
        return (*(*v13 + 440))(2);
      }
    }
  }

  return result;
}

uint64_t sub_1E3AAE868(uint64_t a1)
{
  sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = *(a1 + 32);
  (*(v7 + 104))(v4 - v3, *MEMORY[0x1E697D710]);
  OUTLINED_FUNCTION_8();
  (*(v8 + 200))(v5);
  OUTLINED_FUNCTION_36();
  (*(v9 + 256))(v11);
  OUTLINED_FUNCTION_53_24();
  *v6 = MEMORY[0x1E69E7CD0];
  return (a1)(v11, 0);
}

void sub_1E3AAE9A4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180, &unk_1E42B7C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*(v0 + 32))
  {

    v4 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40(v4);
    v5 = OUTLINED_FUNCTION_14_88();
    v6(v5);
    OUTLINED_FUNCTION_125();
    v7 = swift_storeEnumTagMultiPayload();
    v8 = OUTLINED_FUNCTION_0_21(v7);
    OUTLINED_FUNCTION_5_1(v8);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v9 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1();
    v11 = OUTLINED_FUNCTION_15_77();
    v12(v11);
    OUTLINED_FUNCTION_125();
    v13 = swift_storeEnumTagMultiPayload();
    v14 = OUTLINED_FUNCTION_0_21(v13);
    OUTLINED_FUNCTION_5_1(v14);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v9 = OUTLINED_FUNCTION_28_36();
  }

  v10(v9);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AAEBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v66 = a3;
  v64 = a2;
  v72 = a5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320E8, &qword_1E42B7BA8);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v70 = (v12 - v13);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32188, &qword_1E42B7C68);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v71 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  v69 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_67_2();
  v78[0] = *a1;
  v29 = *(a1 + 8);
  v76 = *(a1 + 24);
  v77 = v29;
  OUTLINED_FUNCTION_89();
  v30 = swift_allocObject();
  v31 = *(a1 + 16);
  *(v30 + 16) = *a1;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(a1 + 32);
  v74 = a2;
  sub_1E3743538(v78, v75, &qword_1ECF31FD0, &unk_1E42B7940);
  sub_1E3743538(&v77, v75, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E3743538(&v76, v75, &qword_1ECF31F50, &qword_1E42B78C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138, &qword_1E42B7BE8);
  sub_1E3AB55FC();
  sub_1E4203964();
  v32 = v10 + 32;
  v33 = *(v10 + 32);
  v63 = v32;
  v34 = v16;
  v35 = v65;
  v33(v5, v34, v65);
  v36 = (v66 & 1) == 0;
  if (v66)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  *(v5 + *(v18 + 44)) = v37;
  if (v36)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  sub_1E3741EA0(v5, v6, &qword_1ECF32188, &qword_1E42B7C68);
  v39 = swift_allocObject();
  v40 = *(a1 + 16);
  *(v39 + 16) = *a1;
  *(v39 + 32) = v40;
  v41 = *(a1 + 32);
  v42 = v68;
  *(v39 + 48) = v41;
  *(v39 + 56) = v42;
  v73 = v64;
  sub_1E3743538(v78, v75, &qword_1ECF31FD0, &unk_1E42B7940);
  sub_1E3743538(&v77, v75, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E3743538(&v76, v75, &qword_1ECF31F50, &qword_1E42B78C8);

  v43 = v70;
  sub_1E4203964();
  v33(v25, v43, v35);
  *&v25[*(v18 + 44)] = v38;
  v44 = v25;
  v45 = v67;
  sub_1E3741EA0(v44, v67, &qword_1ECF32188, &qword_1E42B7C68);
  v46 = v69;
  OUTLINED_FUNCTION_97_3(v6, v69);
  v47 = v71;
  OUTLINED_FUNCTION_97_3(v45, v71);
  v48 = v72;
  OUTLINED_FUNCTION_97_3(v46, v72);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32190, &qword_1E42B7C70);
  OUTLINED_FUNCTION_97_3(v47, v48 + *(v49 + 48));
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v50, v51, v52);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v53, v54, v55);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v56, v57, v58);
  OUTLINED_FUNCTION_82();
  return sub_1E325F6F0(v59, v60, v61);
}

void sub_1E3AAF0A0()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180, &unk_1E42B7C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*(v0 + 8))
  {

    v4 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40(v4);
    v5 = OUTLINED_FUNCTION_14_88();
    v6(v5);
    OUTLINED_FUNCTION_125();
    v7 = swift_storeEnumTagMultiPayload();
    v8 = OUTLINED_FUNCTION_0_21(v7);
    OUTLINED_FUNCTION_5_1(v8);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v9 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1();
    v11 = OUTLINED_FUNCTION_15_77();
    v12(v11);
    OUTLINED_FUNCTION_125();
    v13 = swift_storeEnumTagMultiPayload();
    v14 = OUTLINED_FUNCTION_0_21(v13);
    OUTLINED_FUNCTION_5_1(v14);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v9 = OUTLINED_FUNCTION_28_36();
  }

  v10(v9);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AAF2AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  v4 = sub_1E375BEF4();
  result = MEMORY[0x1E6910FA0](v2, v3, v4);
  v6 = 0;
  v12 = result;
  v7 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      return v12;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    ++v6;
    v10 = *(i - 1);
    v9 = *i;

    sub_1E3AB47A8(&v11, v10, v9);
  }

  __break(1u);
  return result;
}

void sub_1E3AAF384()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180, &unk_1E42B7C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*v0)
  {

    v4 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40(v4);
    v5 = OUTLINED_FUNCTION_14_88();
    v6(v5);
    OUTLINED_FUNCTION_125();
    v7 = swift_storeEnumTagMultiPayload();
    v8 = OUTLINED_FUNCTION_0_21(v7);
    OUTLINED_FUNCTION_5_1(v8);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v9 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1();
    v11 = OUTLINED_FUNCTION_15_77();
    v12(v11);
    OUTLINED_FUNCTION_125();
    v13 = swift_storeEnumTagMultiPayload();
    v14 = OUTLINED_FUNCTION_0_21(v13);
    OUTLINED_FUNCTION_5_1(v14);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v9 = OUTLINED_FUNCTION_28_36();
  }

  v10(v9);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAF590()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180, &unk_1E42B7C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*(v0 + 16))
  {

    v4 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40(v4);
    v5 = OUTLINED_FUNCTION_14_88();
    v6(v5);
    OUTLINED_FUNCTION_125();
    v7 = swift_storeEnumTagMultiPayload();
    v8 = OUTLINED_FUNCTION_0_21(v7);
    OUTLINED_FUNCTION_5_1(v8);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v9 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1();
    v11 = OUTLINED_FUNCTION_15_77();
    v12(v11);
    OUTLINED_FUNCTION_125();
    v13 = swift_storeEnumTagMultiPayload();
    v14 = OUTLINED_FUNCTION_0_21(v13);
    OUTLINED_FUNCTION_5_1(v14);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v9 = OUTLINED_FUNCTION_28_36();
  }

  v10(v9);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAF79C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v49 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570, &unk_1E42B7C40);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  OUTLINED_FUNCTION_0_10();
  v46 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v12 = v11;
  v54[0] = *(v1 + 24);
  OUTLINED_FUNCTION_36();
  (*(v13 + 408))(v51);
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 536))();
  if (v16)
  {
    OUTLINED_FUNCTION_8();
    v18 = *((*(v17 + 240))() + 16);
  }

  else
  {
    v18 = v15;
  }

  v19 = *v1;
  if (v18 >= 2)
  {
    if (v19)
    {
      if (v51[12])
      {

        v20 = sub_1E4205ED4();
      }

      else
      {
        v20 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1E4298880;
      *(v22 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v23 = sub_1E3AB5878(v20, v22, v19);
      goto LABEL_16;
    }

LABEL_17:
    v25 = 0;
    v26 = 0;
    goto LABEL_18;
  }

  if (!v19)
  {
    goto LABEL_17;
  }

  if (v51[10])
  {

    v21 = sub_1E4205ED4();
  }

  else
  {
    v21 = 0;
  }

  v20 = [v19 localizedStringForKey_];

  if (!v20)
  {
    goto LABEL_17;
  }

  v23 = sub_1E4205F14();
LABEL_16:
  v25 = v23;
  v26 = v24;

LABEL_18:
  sub_1E4200A04();
  v27 = sub_1E4200A34();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  v53 = v19;
  v52 = *(v1 + 8);
  OUTLINED_FUNCTION_89();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_63_15(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_68_13();
  *(v33 - 16) = v25;
  *(v33 - 8) = v26;
  sub_1E3743538(&v53, v50, &qword_1ECF31FD0, &unk_1E42B7940);
  sub_1E3743538(&v52, v50, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E3743538(v54, v50, &qword_1ECF31F50, &qword_1E42B78C8);
  sub_1E4203954();

  v34 = v51[13];
  v35 = v51[14];

  sub_1E4200A14();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
  OUTLINED_FUNCTION_89();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_63_15(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_68_13();
  *(v41 - 16) = v34;
  *(v41 - 8) = v35;
  sub_1E3743538(&v53, v50, &qword_1ECF31FD0, &unk_1E42B7940);
  sub_1E3743538(&v52, v50, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E3743538(v54, v50, &qword_1ECF31F50, &qword_1E42B78C8);
  OUTLINED_FUNCTION_142_4();
  sub_1E4203954();

  v42 = *(v46 + 16);
  v42(v47, v12, v5);
  v42(v48, v1, v5);
  v43 = OUTLINED_FUNCTION_125();
  (v42)(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32178, &qword_1E42B7C50);
  v42(v49 + *(v44 + 48), v48, v5);
  sub_1E3844FE0(v51);
  v45 = *(v46 + 8);
  v45(v1, v5);
  v45(v12, v5);
  v45(v48, v5);
  v45(v47, v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAFDC4()
{
  OUTLINED_FUNCTION_31_1();
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_8();
  (*(v8 + 192))();
  v9 = OUTLINED_FUNCTION_74_11();
  v3(v9);
  OUTLINED_FUNCTION_74();
  sub_1E4203BE4();
  v10 = OUTLINED_FUNCTION_90_8();
  v2(v10);
  (v2)(v1, v4);
  v11 = OUTLINED_FUNCTION_73_8();
  v3(v11);
  OUTLINED_FUNCTION_8();
  (*(v12 + 200))(v0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAFF3C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180, &unk_1E42B7C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*(v0 + 24))
  {

    v4 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40(v4);
    v5 = OUTLINED_FUNCTION_14_88();
    v6(v5);
    OUTLINED_FUNCTION_125();
    v7 = swift_storeEnumTagMultiPayload();
    v8 = OUTLINED_FUNCTION_0_21(v7);
    OUTLINED_FUNCTION_5_1(v8);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v9 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1();
    v11 = OUTLINED_FUNCTION_15_77();
    v12(v11);
    OUTLINED_FUNCTION_125();
    v13 = swift_storeEnumTagMultiPayload();
    v14 = OUTLINED_FUNCTION_0_21(v13);
    OUTLINED_FUNCTION_5_1(v14);
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v9 = OUTLINED_FUNCTION_28_36();
  }

  v10(v9);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB0148()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32020, &qword_1E42B7B20);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32028, &qword_1E42B7B28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = sub_1E39DFFC8();
  if (v11)
  {
    v28 = &v26;
    MEMORY[0x1EEE9AC00](v11);
    v27 = v6;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32030, &qword_1E42B7B30);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32040, &qword_1E42B7B38);
    v29 = v5;
    v14 = v13;
    OUTLINED_FUNCTION_1_11();
    v16 = sub_1E328FCF4(v15, &qword_1ECF32030, &qword_1E42B7B30);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32048, &qword_1E42B7B40);
    v18 = sub_1E3AB4310();
    v30 = v17;
    v31 = v18;
    OUTLINED_FUNCTION_6_10();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E4203504();
    v20 = v27;
    (*(v8 + 16))(v0, v1, v27);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    v30 = v12;
    v31 = v14;
    v32 = v16;
    v33 = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_40_32();
    sub_1E4201F44();
    (*(v8 + 8))(v1, v20);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32030, &qword_1E42B7B30);
    OUTLINED_FUNCTION_2();
    (*(v22 + 16))(v0, v3, v21);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    v24 = sub_1E328FCF4(v23, &qword_1ECF32030, &qword_1E42B7B30);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32040, &qword_1E42B7B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32048, &qword_1E42B7B40);
    sub_1E3AB4310();
    OUTLINED_FUNCTION_6_10();
    v30 = v21;
    v31 = v25;
    v32 = v24;
    v33 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_40_32();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB0484()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v63 = v4;
  v69 = v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32078, &qword_1E42B7B58);
  OUTLINED_FUNCTION_0_10();
  v62 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v61 = v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32068, &qword_1E42B7B50);
  OUTLINED_FUNCTION_0_10();
  v60 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v59 = v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32080, &qword_1E42B7B60);
  OUTLINED_FUNCTION_0_10();
  v58 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v57 = v14;
  OUTLINED_FUNCTION_138();
  v15 = sub_1E4202034();
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32058, &qword_1E42B7B48);
  OUTLINED_FUNCTION_0_10();
  v56 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_20_1();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32048, &qword_1E42B7B40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v22 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_47_0();
  (*(v30 + 192))();
  (*(v24 + 104))(v28, *MEMORY[0x1E697D708], v22);
  sub_1E3AB4478(&qword_1ECF32088, MEMORY[0x1E697D718]);
  v31 = sub_1E4205E84();
  v32 = *(v24 + 8);
  v32(v28, v22);
  v32(v1, v22);
  v33 = sub_1E4201FE4();
  v70 = v63;
  v71 = v3;
  if (v31)
  {
    v36 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
    OUTLINED_FUNCTION_6_1();
    sub_1E328FCF4(v38, &qword_1ECF32090, &unk_1E42B7B68);
    v0 = v59;
    sub_1E42015A4();
    v39 = OUTLINED_FUNCTION_11_78(&qword_1ECF32070, &qword_1ECF32068, &qword_1E42B7B50);
    v40 = v61;
    v41 = v67;
    MEMORY[0x1E690CA00](v0, v67, v39);
    v42 = OUTLINED_FUNCTION_44_30(&qword_1ECF32060, &qword_1ECF32058, &qword_1E42B7B48);
    v72 = v64;
    v73 = v42;
    OUTLINED_FUNCTION_37_30();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = v41;
    v73 = v39;
    v44 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E690CA20](v40, v66, v68, OpaqueTypeConformance2, v44);
    v45 = OUTLINED_FUNCTION_38_0();
    v46(v45);
    v47 = v60;
  }

  else
  {
    sub_1E3AB44BC(v33, v34, v35);
    sub_1E4200C04();
    v48 = OUTLINED_FUNCTION_44_30(&qword_1ECF32060, &qword_1ECF32058, &qword_1E42B7B48);
    v49 = v57;
    v41 = v64;
    MEMORY[0x1E690CA00](v0, v64, v48);
    v72 = v41;
    v73 = v48;
    OUTLINED_FUNCTION_37_30();
    v50 = swift_getOpaqueTypeConformance2();
    v51 = OUTLINED_FUNCTION_11_78(&qword_1ECF32070, &qword_1ECF32068, &qword_1E42B7B50);
    v72 = v67;
    v73 = v51;
    v52 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E690CA10](v49, v66, v68, v50, v52);
    v53 = OUTLINED_FUNCTION_38_0();
    v54(v53);
    v47 = v56;
  }

  (*(v47 + 8))(v0, v41);
  v55 = sub_1E3AB4310();
  MEMORY[0x1E690CA00](v21, v65, v55);
  sub_1E325F6F0(v21, &qword_1ECF32048, &qword_1E42B7B40);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB0ADC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_95_5();
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321A8, &qword_1E42B7E28);
  sub_1E3AB5C54();
  return sub_1E4203964();
}

void sub_1E3AB0B90()
{
  OUTLINED_FUNCTION_31_1();
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_8();
  (*(v8 + 192))();
  v9 = OUTLINED_FUNCTION_74_11();
  v3(v9);
  OUTLINED_FUNCTION_74();
  sub_1E4203BE4();
  v10 = OUTLINED_FUNCTION_90_8();
  v2(v10);
  (v2)(v1, v4);
  v11 = OUTLINED_FUNCTION_73_8();
  v3(v11);
  OUTLINED_FUNCTION_8();
  (*(v12 + 200))(v0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB0D04()
{
  OUTLINED_FUNCTION_31_1();
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v22 = v5;
  v23 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321B8, &qword_1E42B7E38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_36();
  (*(v18 + 408))(v26);
  v28[0] = v26[3];
  sub_1E3743538(v28, v27, &qword_1ECF29088, &qword_1E42B7E40);
  sub_1E3844FE0(v26);
  if (v28[0])
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E4203DA4();
    sub_1E42015C4();
    (*(v22 + 32))(v0, v8, v23);
    memcpy((v0 + *(v24 + 36)), v27, 0x70uLL);
    sub_1E3741EA0(v0, v12, &qword_1ECF2A140, &qword_1E42B7E30);
    sub_1E3743538(v12, v1, &qword_1ECF2A140, &qword_1E42B7E30);
    swift_storeEnumTagMultiPayload();
    v19 = sub_1E37AE064();
    OUTLINED_FUNCTION_5_1(v19);
    sub_1E4201F44();
    sub_1E325F6F0(v28, &qword_1ECF29088, &qword_1E42B7E40);
    sub_1E325F6F0(v12, &qword_1ECF2A140, &qword_1E42B7E30);
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1();
    (*(v16 + 16))(v1, v2, v14);
    swift_storeEnumTagMultiPayload();
    v20 = sub_1E37AE064();
    OUTLINED_FUNCTION_5_1(v20);
    sub_1E4201F44();
    (*(v16 + 8))(v2, v14);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB10E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138, &qword_1E42B7BE8);
  sub_1E3AB55FC();
  return sub_1E4203964();
}

void sub_1E3AB1188()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_95_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180, &unk_1E42B7C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_36();
  (*(v3 + 408))(v16);
  v17[0] = v16[0];
  sub_1E3743538(v17, &v15, &qword_1ECF29088, &qword_1E42B7E40);
  sub_1E3844FE0(v16);
  if (v17[0])
  {
    v4 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_57_13(v4);
    v5 = OUTLINED_FUNCTION_27_37();
    v6(v5);
    OUTLINED_FUNCTION_53_5();
    v7 = swift_storeEnumTagMultiPayload();
    v8 = OUTLINED_FUNCTION_0_21(v7);
    OUTLINED_FUNCTION_5_1(v8);
    OUTLINED_FUNCTION_16_71();
    sub_1E325F6F0(v17, &qword_1ECF29088, &qword_1E42B7E40);
    v9 = OUTLINED_FUNCTION_65_13();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1();
    v11 = OUTLINED_FUNCTION_32_40();
    v12(v11);
    OUTLINED_FUNCTION_53_5();
    v13 = swift_storeEnumTagMultiPayload();
    v14 = OUTLINED_FUNCTION_0_21(v13);
    OUTLINED_FUNCTION_5_1(v14);
    OUTLINED_FUNCTION_16_71();
    v9 = OUTLINED_FUNCTION_64_13();
  }

  v10(v9);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB143C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_95_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180, &unk_1E42B7C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_36();
  (*(v3 + 408))(v16);
  v17[0] = v16[1];
  sub_1E3743538(v17, &v15, &qword_1ECF29088, &qword_1E42B7E40);
  sub_1E3844FE0(v16);
  if (v17[0])
  {
    v4 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_57_13(v4);
    v5 = OUTLINED_FUNCTION_27_37();
    v6(v5);
    OUTLINED_FUNCTION_53_5();
    v7 = swift_storeEnumTagMultiPayload();
    v8 = OUTLINED_FUNCTION_0_21(v7);
    OUTLINED_FUNCTION_5_1(v8);
    OUTLINED_FUNCTION_16_71();
    sub_1E325F6F0(v17, &qword_1ECF29088, &qword_1E42B7E40);
    v9 = OUTLINED_FUNCTION_65_13();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1();
    v11 = OUTLINED_FUNCTION_32_40();
    v12(v11);
    OUTLINED_FUNCTION_53_5();
    v13 = swift_storeEnumTagMultiPayload();
    v14 = OUTLINED_FUNCTION_0_21(v13);
    OUTLINED_FUNCTION_5_1(v14);
    OUTLINED_FUNCTION_16_71();
    v9 = OUTLINED_FUNCTION_64_13();
  }

  v10(v9);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB16F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v38 = v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320E8, &qword_1E42B7BA8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321C0, &qword_1E42B7E48);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v5;
  *(v12 + 32) = v3;
  *(v12 + 40) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138, &qword_1E42B7BE8);
  sub_1E3AB55FC();
  v13 = sub_1E4203964();
  (*(*v5 + 408))(&v39, v13);
  OUTLINED_FUNCTION_47_0();
  v15 = *((*(v14 + 240))() + 16);

  v16 = &v47;
  if (v15 > 1)
  {
    v16 = &v48;
  }

  if (*v16)
  {
  }

  sub_1E3844FE0(&v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  v17 = sub_1E4203914();
  MEMORY[0x1EEE9AC00](v17);
  v33 = OUTLINED_FUNCTION_9_78(&qword_1ECF320E0, &qword_1ECF320E8, &qword_1E42B7BA8);
  v34 = sub_1E32822E0(v33, v18, v19);
  v32 = sub_1E3AB5F00(v34, v20, v21);
  sub_1E4203134();

  OUTLINED_FUNCTION_15_5();
  v22 = OUTLINED_FUNCTION_63_0();
  v23(v22);
  LOBYTE(v39) = v3 & 1;
  v40 = v1;
  sub_1E42038F4();
  v24 = swift_allocObject();
  *(v24 + 16) = v7;
  *(v24 + 24) = v5;
  *(v24 + 32) = v3 & 1;
  *(v24 + 40) = v1;

  v39 = v36;
  v40 = MEMORY[0x1E69E6158];
  v41 = &type metadata for CollectionViewEditableModifier.ConfirmDeleteActions;
  v42 = MEMORY[0x1E6981E70];
  v43 = v33;
  v44 = v34;
  v45 = v32;
  v46 = MEMORY[0x1E6981E60];
  swift_getOpaqueTypeConformance2();
  sub_1E4203524();

  OUTLINED_FUNCTION_15_5();
  v25(v35, v37);
  OUTLINED_FUNCTION_47_0();
  v27 = *((*(v26 + 240))() + 16);

  v28 = v27 == 0;
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321C8, &unk_1E42B7E50) + 36));
  *v31 = KeyPath;
  v31[1] = sub_1E3AB63F8;
  v31[2] = v30;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB1CF8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_95_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180, &unk_1E42B7C58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_36();
  (*(v3 + 408))(v16);
  v17[0] = v16[2];
  sub_1E3743538(v17, &v15, &qword_1ECF29088, &qword_1E42B7E40);
  sub_1E3844FE0(v16);
  if (v17[0])
  {
    v4 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_57_13(v4);
    v5 = OUTLINED_FUNCTION_27_37();
    v6(v5);
    OUTLINED_FUNCTION_53_5();
    v7 = swift_storeEnumTagMultiPayload();
    v8 = OUTLINED_FUNCTION_0_21(v7);
    OUTLINED_FUNCTION_5_1(v8);
    OUTLINED_FUNCTION_16_71();
    sub_1E325F6F0(v17, &qword_1ECF29088, &qword_1E42B7E40);
    v9 = OUTLINED_FUNCTION_65_13();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1();
    v11 = OUTLINED_FUNCTION_32_40();
    v12(v11);
    OUTLINED_FUNCTION_53_5();
    v13 = swift_storeEnumTagMultiPayload();
    v14 = OUTLINED_FUNCTION_0_21(v13);
    OUTLINED_FUNCTION_5_1(v14);
    OUTLINED_FUNCTION_16_71();
    v9 = OUTLINED_FUNCTION_64_13();
  }

  v10(v9);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB1F60(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if ((*a1 & 1) == 0)
  {
    v11 = (*(*a2 + 432))();
    if (v11 != 2)
    {
      sub_1E38462B4(v11, v12, v13);
      if (sub_1E4205E84())
      {
        (*(v6 + 104))(v10, *MEMORY[0x1E697D710], v4);
        (*(*a2 + 200))(v10);
        (*(*a2 + 440))(2);
      }
    }
  }
}

void sub_1E3AB210C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v57 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570, &unk_1E42B7C40);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  OUTLINED_FUNCTION_0_10();
  v54 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v56 = v9 - v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v15 = v14;
  OUTLINED_FUNCTION_36();
  (*(v16 + 408))(v58);
  OUTLINED_FUNCTION_36();
  v18 = (*(v17 + 536))();
  if (v19)
  {
    OUTLINED_FUNCTION_8();
    v21 = *((*(v20 + 240))() + 16);
  }

  else
  {
    v21 = v18;
  }

  v22 = [objc_opt_self() sharedInstance];
  v23 = v22;
  if (v21 >= 2)
  {
    if (v22)
    {
      if (v58[12])
      {

        v24 = sub_1E4205ED4();
      }

      else
      {
        v24 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1E4298880;
      *(v26 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v27 = sub_1E3AB5878(v24, v26, v23);
      v29 = v28;

      goto LABEL_16;
    }

LABEL_17:
    v27 = 0;
    v29 = 0;
    goto LABEL_18;
  }

  if (!v22)
  {
    goto LABEL_17;
  }

  if (v58[10])
  {

    OUTLINED_FUNCTION_34();
    v25 = sub_1E4205ED4();
  }

  else
  {
    v25 = 0;
  }

  v24 = [v23 localizedStringForKey_];

  if (!v24)
  {
    goto LABEL_17;
  }

  v27 = sub_1E4205F14();
  v29 = v30;
LABEL_16:

LABEL_18:
  sub_1E4200A04();
  v31 = sub_1E4200A34();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_2_4();
  v35 = swift_allocObject();
  *(v35 + 16) = v3;
  *(v35 + 24) = v1;
  MEMORY[0x1EEE9AC00](v35);
  *(&v53 - 2) = v27;
  *(&v53 - 1) = v29;

  sub_1E4203954();

  v37 = v58[13];
  v36 = v58[14];

  sub_1E4200A14();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v31);
  OUTLINED_FUNCTION_2_4();
  v41 = swift_allocObject();
  *(v41 + 16) = v3;
  *(v41 + 24) = v1;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_47_27();
  *(v42 - 16) = v37;
  *(v42 - 8) = v36;

  OUTLINED_FUNCTION_142_4();
  sub_1E4203954();

  v43 = v54;
  v44 = *(v54 + 16);
  v45 = v55;
  v46 = v53;
  v44(v55, v15, v53);
  v47 = v56;
  v44(v56, v27, v46);
  v48 = v57;
  v49 = OUTLINED_FUNCTION_125();
  (v44)(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32178, &qword_1E42B7C50);
  v44(v48 + *(v50 + 48), v47, v46);
  sub_1E3844FE0(v58);
  v51 = *(v43 + 8);
  v51(v27, v46);
  v51(v15, v46);
  v52 = OUTLINED_FUNCTION_38_0();
  (v51)(v52);
  v51(v45, v46);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB26D4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  OUTLINED_FUNCTION_85_6(v2, MEMORY[0x1E69E6370], v3, v4, v5, v6, v7, v8, v13, *v14, *&v14[4], v14[6], 0);
  sub_1E42038E4();
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_0_131();
  sub_1E3AB4478(v9, v10);
  OUTLINED_FUNCTION_63_0();
  result = sub_1E42010C4();
  *a1 = v2;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = result;
  *(a1 + 32) = v12;
  return result;
}

uint64_t type metadata accessor for CollectionViewCellEditableModifier(uint64_t a1)
{
  result = qword_1EE291890;
  if (!qword_1EE291890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3AB2824()
{
  OUTLINED_FUNCTION_31_1();
  v75 = v2;
  v83 = v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FE0, &qword_1E42B7950);
  OUTLINED_FUNCTION_0_10();
  v77 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v76 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FE8, &qword_1E42B7958);
  OUTLINED_FUNCTION_0_10();
  v81 = v8;
  v82 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v79 = v10;
  v11 = OUTLINED_FUNCTION_138();
  v12 = type metadata accessor for CollectionViewCellEditableModifier(v11);
  OUTLINED_FUNCTION_0_10();
  v74 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v85 = v18;
  OUTLINED_FUNCTION_138();
  v86 = sub_1E42011E4();
  OUTLINED_FUNCTION_0_10();
  v78 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_138();
  v24 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0, &qword_1E42B7960);
  OUTLINED_FUNCTION_17_2(v31);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_49_2();
  v84 = v12;
  if (!*(v0 + *(v12 + 20)))
  {
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_0_131();
    sub_1E3AB4478(v70, v71);
    OUTLINED_FUNCTION_50_21();
    sub_1E4201744();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_8();
  v34 = *(v33 + 168);

  v36 = v34(v35);

  if (v36)
  {
    v37 = v0;
    sub_1E3AB3B98(v1);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8, &unk_1E42B7930);
    if (__swift_getEnumTagSinglePayload(v1, 1, v38) == 1)
    {
      sub_1E325F6F0(v1, &qword_1ECF31FF0, &qword_1E42B7960);
LABEL_8:
      v39 = 0;
      goto LABEL_9;
    }

    MEMORY[0x1E690E3F0](v38);
    sub_1E325F6F0(v1, &qword_1ECF31FC8, &unk_1E42B7930);
    v40 = sub_1E4203BF4();
    (*(v26 + 8))(v30, v24);
    if ((v40 & 1) == 0)
    {
      goto LABEL_8;
    }

    v39 = [objc_opt_self() isStoreOrPressDemoMode] ^ 1;
  }

  else
  {
    v39 = 0;
    v37 = v0;
  }

LABEL_9:
  v41 = v85;
  sub_1E3AB2FB8(v37, v85);
  v42 = *(v74 + 80);
  v43 = (v42 + 16) & ~v42;
  v44 = swift_allocObject();
  sub_1E3AB301C(v41, v44 + v43);
  sub_1E3AB2FB8(v37, v16);
  v45 = v42;
  v46 = swift_allocObject();
  sub_1E3AB301C(v16, v46 + v43);
  sub_1E42011D4();
  if (v39)
  {
    sub_1E4200BA4();
  }

  else
  {
    sub_1E4200BB4();
  }

  v47 = OUTLINED_FUNCTION_53_5();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
  OUTLINED_FUNCTION_1_11();
  v51 = sub_1E328FCF4(v50, &qword_1ECF31FF8, &qword_1E42B7968);
  OUTLINED_FUNCTION_35_33();
  v54 = sub_1E3AB4478(v52, v53);
  v55 = v76;
  v73 = v23;
  v56 = v86;
  sub_1E42034B4();
  OUTLINED_FUNCTION_64_5();
  LOBYTE(v88) = v57;
  v89 = v58;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  v59 = v85;
  sub_1E3AB2FB8(v37, v85);
  v74 = v45;
  v60 = v37;
  v61 = swift_allocObject();
  sub_1E3AB301C(v59, v61 + v43);
  v88 = v49;
  v89 = v56;
  v90 = v51;
  v91 = v54;
  OUTLINED_FUNCTION_38_26();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = MEMORY[0x1E69E6370];
  v65 = v79;
  v64 = v80;
  sub_1E4203524();

  (*(v77 + 8))(v55, v64);
  OUTLINED_FUNCTION_64_5();
  LOBYTE(v88) = v66;
  v89 = v67;
  sub_1E42038F4();
  sub_1E3AB2FB8(v60, v59);
  v68 = swift_allocObject();
  sub_1E3AB301C(v59, v68 + v43);
  v88 = v64;
  v89 = v63;
  v90 = OpaqueTypeConformance2;
  v91 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v69 = v82;
  sub_1E4203524();

  (*(v81 + 8))(v65, v69);
  (*(v78 + 8))(v73, v86);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB2FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewCellEditableModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AB301C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewCellEditableModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AB3080()
{
  type metadata accessor for CollectionViewCellEditableModifier(0);
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_135_0();
  v2 = v0 + v1;
  v4 = *(v0 + v1 + *(v3 + 36));
  v5 = *(v4 + 24);
  if (*(v2 + *(v3 + 20)))
  {
    v6 = *(v4 + 16);
    OUTLINED_FUNCTION_12_6();
    v8 = *(v7 + 240);

    v10 = v8(v9);

    LOBYTE(v8) = sub_1E3AB391C(v6, v5, v10);

    OUTLINED_FUNCTION_12_6();
    v12 = (v11 + 256);
    if (v8)
    {
      v13 = *v12;

      v14 = v13(v26);
      v15 = sub_1E3AB5178(v6, v5);
      sub_1E37E9E48(v15, v16);

      v14(v26, 0);

      OUTLINED_FUNCTION_64_5();
      v26[0] = v17;
      v27 = v18;
      v28[0] = 0;
    }

    else
    {
      v19 = *v12;

      v20 = v19(v26);
      sub_1E3AB47A8(v28, v6, v5);

      v20(v26, 0);

      OUTLINED_FUNCTION_64_5();
      v26[0] = v21;
      v27 = v22;
      v28[0] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
    return sub_1E4203904();
  }

  else
  {
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_0_131();
    sub_1E3AB4478(v24, v25);

    OUTLINED_FUNCTION_50_21();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3AB3318(char a1)
{
  v2 = type metadata accessor for CollectionViewCellEditableModifier(0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_64_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  return OUTLINED_FUNCTION_80_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, *v13, *&v13[4], v13[6], a1);
}

void sub_1E3AB33A4(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for CollectionViewCellEditableModifier(0);
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_135_0();
  v6 = v2 + v5;
  v7 = *a2;
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  if ((v17 & 1) == 0)
  {
    if (*(v6 + *(v4 + 24)))
    {

      v8 = sub_1E3B1DDF0();

      v9 = sub_1E383E8EC();
      if (v7)
      {
        sub_1E383FB9C(v9, v10, v11);
        OUTLINED_FUNCTION_91();
        v12 = sub_1E4207284();
        sub_1E383FBF4(v12, v13, v14);
        if ((sub_1E4205E84() & 1) == 0)
        {
          sub_1E42072B4();
        }
      }

      else
      {
        sub_1E383FB9C(v9, v10, v11);
        OUTLINED_FUNCTION_91();
        sub_1E4207284();
        OUTLINED_FUNCTION_74();
        if ((sub_1E4207294() & 1) == 0)
        {
          sub_1E42072A4();
        }
      }

      sub_1E3B1E260(v8);
    }

    else
    {
      type metadata accessor for ViewInteractionStates(0);
      OUTLINED_FUNCTION_17_66();
      sub_1E3AB4478(v15, v16);
      OUTLINED_FUNCTION_50_21();
      sub_1E4201744();
      __break(1u);
    }
  }
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(type metadata accessor for CollectionViewCellEditableModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8, &qword_1E42CA850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8, &unk_1E42B7930);
    if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
    {

      v4 = *(v3 + 32);
      sub_1E4203C04();
      OUTLINED_FUNCTION_2();
      (*(v5 + 8))(v0 + v2 + v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3AB374C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for CollectionViewCellEditableModifier(0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_135_0();
  if (*(v2 + *(v5 + 32) + v6))
  {
    v7 = *a2;

    v8 = sub_1E3B1DDF0();

    v9 = sub_1E383E8EC();
    if (v7)
    {
      sub_1E383FB9C(v9, v10, v11);
      OUTLINED_FUNCTION_91();
      v12 = sub_1E4207284();
      sub_1E383FBF4(v12, v13, v14);
      if ((sub_1E4205E84() & 1) == 0)
      {
        sub_1E42072B4();
      }
    }

    else
    {
      sub_1E383FB9C(v9, v10, v11);
      OUTLINED_FUNCTION_91();
      sub_1E4207284();
      OUTLINED_FUNCTION_74();
      if ((sub_1E4207294() & 1) == 0)
      {
        sub_1E42072A4();
      }
    }

    sub_1E3B1E260(v8);
  }

  else
  {
    type metadata accessor for ViewInteractionStates(0);
    OUTLINED_FUNCTION_17_66();
    sub_1E3AB4478(v15, v16);
    OUTLINED_FUNCTION_50_21();
    sub_1E4201744();
    __break(1u);
  }
}

uint64_t sub_1E3AB391C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E4207B44();
  sub_1E4207B64();
  if (a2)
  {
    sub_1E4206014();
  }

  v7 = sub_1E4207BA4();
  v8 = a3 + 56;
  v9 = -1 << *(a3 + 32);
  v10 = v7 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v12 = *(a3 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a2)
    {
      return 1;
    }

LABEL_16:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v15 = *v13 == a1 && v14 == a2;
  if (!v15 && (sub_1E42079A4() & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

void sub_1E3AB3A44(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8, &qword_1E42CA850);
  OUTLINED_FUNCTION_20_2();
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CollectionViewCellEditableModifier(0);
  v5 = (a2 + v4[5]);
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_0_131();
  sub_1E3AB4478(v6, v7);
  *v5 = sub_1E4201754();
  v5[1] = v8;
  v9 = (a2 + v4[6]);
  type metadata accessor for ViewInteractionStates(0);
  OUTLINED_FUNCTION_17_66();
  sub_1E3AB4478(v10, v11);
  v12 = sub_1E4201754();
  *v9 = v12;
  v9[1] = v13;
  OUTLINED_FUNCTION_85_6(v12, v13, v14, v15, v16, v17, v18, v19, v44, *v48, *&v48[4], v48[6], 0);
  v20 = sub_1E42038E4();
  OUTLINED_FUNCTION_84_8(v20, v21, v22, v23, v24, v25, v26, v27, v45, v49, v54, v56);
  OUTLINED_FUNCTION_85_6(v28, v29, v30, v31, v32, v33, v34, v35, v46, v50, v52, v53, 0);
  v36 = sub_1E42038E4();
  OUTLINED_FUNCTION_84_8(v36, v37, v38, v39, v40, v41, v42, v43, v47, v51, v55, v57);
  *(a2 + v4[9]) = a1;
}

uint64_t sub_1E3AB3B98@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8, &qword_1E42CA850);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1E3743538(v2, &v16 - v9, &qword_1ECF31FD8, &qword_1E42CA850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1E3AB5108(v10, a1);
  }

  v12 = sub_1E4206804();
  v13 = sub_1E42026D4();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1E3270FC8(0xD00000000000001BLL, 0x80000001E426FC40, &v17);
    _os_log_impl(&dword_1E323F000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E69143B0](v15, -1, -1);
    MEMORY[0x1E69143B0](v14, -1, -1);
  }

  sub_1E4201AA4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E3AB3E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 32);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void sub_1E3AB3E90(uint64_t a1)
{
  sub_1E3AB3F5C(319);
  if (v1 <= 0x3F)
  {
    sub_1E3AB3FC0(319);
    if (v2 <= 0x3F)
    {
      sub_1E3AB4054(319);
      if (v3 <= 0x3F)
      {
        sub_1E3AB40E8();
        if (v4 <= 0x3F)
        {
          type metadata accessor for ViewModel();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3AB3F5C(uint64_t a1)
{
  if (!qword_1EE289E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31FF0, &qword_1E42B7960);
    v1 = sub_1E4200B94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E78);
    }
  }
}

void sub_1E3AB3FC0(uint64_t a1)
{
  if (!qword_1EE2892C8)
  {
    type metadata accessor for CollectionEditableModel(255);
    sub_1E3AB4478(&qword_1EE25D778, type metadata accessor for CollectionEditableModel);
    v1 = sub_1E4201764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2892C8);
    }
  }
}

void sub_1E3AB4054(uint64_t a1)
{
  if (!qword_1EE2892D0)
  {
    type metadata accessor for ViewInteractionStates(255);
    sub_1E3AB4478(qword_1EE263DF8, type metadata accessor for ViewInteractionStates);
    v1 = sub_1E4201764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2892D0);
    }
  }
}

void sub_1E3AB40E8()
{
  if (!qword_1EE288668)
  {
    v0 = sub_1E4203924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE288668);
    }
  }
}

unint64_t sub_1E3AB4138()
{
  result = qword_1ECF32010;
  if (!qword_1ECF32010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32018, &qword_1E42B7A98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F40, &qword_1E42B78B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BB08, &qword_1E42B6340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F38, &qword_1E42B78B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F30, &qword_1E42B78A8);
    sub_1E3AACCB4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1ECF31FB8, &qword_1ECF2BB08, &qword_1E42B6340);
    swift_getOpaqueTypeConformance2();
    sub_1E3AACFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32010);
  }

  return result;
}

unint64_t sub_1E3AB4310()
{
  result = qword_1ECF32050;
  if (!qword_1ECF32050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32048, &qword_1E42B7B40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32058, &qword_1E42B7B48);
    sub_1E328FCF4(&qword_1ECF32060, &qword_1ECF32058, &qword_1E42B7B48);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32068, &qword_1E42B7B50);
    sub_1E328FCF4(&qword_1ECF32070, &qword_1ECF32068, &qword_1E42B7B50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32050);
  }

  return result;
}

uint64_t sub_1E3AB4478(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3AB44BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF55270;
  if (!qword_1ECF55270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF55270);
  }

  return result;
}

uint64_t sub_1E3AB4510@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 240);
  v4 = swift_retain_n();
  v3(v4);

  OUTLINED_FUNCTION_36();
  (*(v5 + 384))();

  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_0_131();
  sub_1E3AB4478(v6, v7);
  OUTLINED_FUNCTION_55_0();
  v8 = sub_1E42010C4();
  v11 = sub_1E3AB4700(v8, v9, v10);
  sub_1E3AB4754(v11, v12, v13);
  sub_1E4201F44();
  OUTLINED_FUNCTION_24_4();
  sub_1E380E99C();
  OUTLINED_FUNCTION_55_0();
  v14 = sub_1E42010C4();
  v16 = v15;
  sub_1E42038E4();
  OUTLINED_FUNCTION_24_4();
  sub_1E380E99C();

  v17 = OUTLINED_FUNCTION_24_4();
  sub_1E3264CE0(v17, v18);
  *a1 = v22;
  *(a1 + 8) = v23;
  *(a1 + 16) = v24;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v22;
  *(a1 + 48) = v23;

  v19 = OUTLINED_FUNCTION_24_4();
  return sub_1E3264CE0(v19, v20);
}

unint64_t sub_1E3AB4700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF55278;
  if (!qword_1ECF55278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF55278);
  }

  return result;
}

unint64_t sub_1E3AB4754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF55280[0];
  if (!qword_1ECF55280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF55280);
  }

  return result;
}

uint64_t sub_1E3AB47A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1E4207B44();
  sub_1E4207B64();
  if (a3)
  {
    sub_1E4206014();
  }

  v8 = sub_1E4207BA4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1E3AB4BA8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_1E42079A4() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

void sub_1E3AB4930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A0, &qword_1E42D53F0);
  v4 = sub_1E4207444();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1E373CBF0(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_1E4207B44();
    sub_1E4207B64();
    if (v17)
    {
      sub_1E4206014();
    }

    v19 = sub_1E4207BA4();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v17;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1E3AB4BA8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1E3AB4930(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_1E3AB4D64();
        goto LABEL_22;
      }

      sub_1E3AB4EB8(v9 + 1);
    }

    v11 = *v4;
    sub_1E4207B44();
    sub_1E4207B64();
    if (a2)
    {
      sub_1E4206014();
    }

    v12 = sub_1E4207BA4();
    v13 = v11 + 56;
    v14 = -1 << *(v11 + 32);
    a3 = v12 & ~v14;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      v16 = *(v11 + 48);
      do
      {
        v17 = (v16 + 16 * a3);
        v18 = v17[1];
        if (v18)
        {
          if (a2)
          {
            v19 = *v17 == result && v18 == a2;
            if (v19 || (sub_1E42079A4() & 1) != 0)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v15;
      }

      while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void sub_1E3AB4D64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A0, &qword_1E42D53F0);
  v2 = *v0;
  v3 = sub_1E4207434();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1E3AB4EB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A0, &qword_1E42D53F0);
  v4 = sub_1E4207444();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_1E4207B44();
        sub_1E4207B64();
        if (v16)
        {

          sub_1E4206014();
        }

        v18 = sub_1E4207BA4();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v17;
        v27[1] = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_27;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

uint64_t sub_1E3AB5108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0, &qword_1E42B7960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AB5178(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E4207B44();
  sub_1E4207B64();
  if (a2)
  {
    sub_1E4206014();
  }

  v6 = sub_1E4207BA4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  v10 = *(v5 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v13 = *v11 == a1 && v12 == a2;
  if (!v13 && (sub_1E42079A4() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E3AB4D64();
    v16 = v18;
  }

  v14 = *(*(v16 + 48) + 16 * v8);
  sub_1E3AB52F0(v8);
  *v2 = v18;
  return v14;
}

void sub_1E3AB52F0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E4207304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1E4207B44();
        sub_1E4207B64();
        if (v10)
        {

          sub_1E4206014();
        }

        v11 = sub_1E4207BA4() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_17:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_17;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

unint64_t sub_1E3AB54EC()
{
  result = qword_1ECF320D8;
  if (!qword_1ECF320D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF320D0, &qword_1E42B7BA0);
    sub_1E328FCF4(&qword_1ECF320E0, &qword_1ECF320E8, &qword_1E42B7BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF320D8);
  }

  return result;
}

void sub_1E3AB559C(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32108, &qword_1E42B7BB8);
  sub_1E3AADA8C();
}

unint64_t sub_1E3AB55FC()
{
  result = qword_1ECF32140;
  if (!qword_1ECF32140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32138, &qword_1E42B7BE8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32140);
  }

  return result;
}

uint64_t sub_1E3AB56B8()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 440))(2);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  return OUTLINED_FUNCTION_80_8(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], 1);
}

uint64_t sub_1E3AB5748()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 440))(0);
  OUTLINED_FUNCTION_36();
  return (*(v1 + 488))();
}

uint64_t sub_1E3AB57C8()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 440))(1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_93_5();
  v2();
  OUTLINED_FUNCTION_53_24();
  OUTLINED_FUNCTION_43_27(MEMORY[0x1E69E7CD0]);
  return v0();
}

uint64_t sub_1E3AB5878(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1E376948C();
  v5 = sub_1E42062A4();

  v6 = [a3 localizedStringForKey:a1 withCounts:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1E4205F14();

  return v7;
}

uint64_t sub_1E3AB591C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_93_5();
  v1();
  OUTLINED_FUNCTION_53_24();
  OUTLINED_FUNCTION_43_27(MEMORY[0x1E69E7CD0]);
  return v0();
}

uint64_t sub_1E3AB599C()
{

  sub_1E3AAF2AC(v0);
  OUTLINED_FUNCTION_8();
  return (*(v1 + 248))();
}

uint64_t objectdestroyTm_22()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

unint64_t sub_1E3AB5A88()
{
  result = qword_1ECF32198;
  if (!qword_1ECF32198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321A0, qword_1E42B7CE0);
    sub_1E328FCF4(&qword_1ECF32038, &qword_1ECF32030, &qword_1E42B7B30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32030, &qword_1E42B7B30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32040, &qword_1E42B7B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32048, &qword_1E42B7B40);
    sub_1E3AB4310();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32198);
  }

  return result;
}

unint64_t sub_1E3AB5C54()
{
  result = qword_1ECF321B0;
  if (!qword_1ECF321B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321A8, &qword_1E42B7E28);
    sub_1E37AE064();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF321B0);
  }

  return result;
}

uint64_t sub_1E3AB5CF8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 384))();
  sub_1E3AAF2AC(v1);
  OUTLINED_FUNCTION_8();
  return (*(v2 + 248))();
}

uint64_t sub_1E3AB5D6C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_93_5();
  v1();
  OUTLINED_FUNCTION_53_24();
  OUTLINED_FUNCTION_43_27(MEMORY[0x1E69E7CD0]);
  return v0();
}

uint64_t sub_1E3AB5DEC()
{
  (*(**(v0 + 24) + 440))(2);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  return OUTLINED_FUNCTION_80_8(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], 1);
}

uint64_t sub_1E3AB5E8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_0_131();
  sub_1E3AB4478(v2, v3);

  OUTLINED_FUNCTION_55_0();
  result = sub_1E42010C4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_1E3AB5F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE292FA0[0];
  if (!qword_1EE292FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE292FA0);
  }

  return result;
}

uint64_t objectdestroy_99Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E3AB5FA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3AB5FE4()
{
  result = qword_1ECF321E0;
  if (!qword_1ECF321E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321C8, &unk_1E42B7E50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321C0, &qword_1E42B7E48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF320E8, &qword_1E42B7BA8);
    v5 = sub_1E328FCF4(&qword_1ECF320E0, &qword_1ECF320E8, &qword_1E42B7BA8);
    v6 = sub_1E32822E0(v5, v1, v2);
    sub_1E3AB5F00(v6, v3, v4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE288760, &qword_1ECF2A928, &unk_1E429E7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF321E0);
  }

  return result;
}

uint64_t sub_1E3AB61B8()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 440))(0);
  OUTLINED_FUNCTION_36();
  return (*(v1 + 488))();
}

uint64_t sub_1E3AB623C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E32822E0(a1, a2, a3);

  v3 = sub_1E4202C44();
  return OUTLINED_FUNCTION_92(v3, v4, v5, v6);
}

uint64_t sub_1E3AB62B8()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 440))(1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_93_5();
  v2();
  OUTLINED_FUNCTION_53_24();
  OUTLINED_FUNCTION_43_27(MEMORY[0x1E69E7CD0]);
  return v0();
}

uint64_t sub_1E3AB636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E32822E0(a1, a2, a3);

  v3 = sub_1E4202C44();
  return OUTLINED_FUNCTION_92(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_53_24()
{
}

void OUTLINED_FUNCTION_57_13(uint64_t a1)
{

  sub_1E3F23370();
}

__n128 OUTLINED_FUNCTION_77_10(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_80_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_1E4203904();
}

double sub_1E3AB64D0(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);

  return result;
}

double sub_1E3AB654C()
{

  return result;
}

uint64_t sub_1E3AB6594(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}