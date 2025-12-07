uint64_t sub_1C732E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();

  v11 = *(v10 + 554);
  v12 = *(v10 + 553);
  v13 = *(v10 + 3104);
  v14 = *(v10 + 2336);
  *(v10 + 1144) = *(v10 + 2320);
  *(v10 + 1160) = v14;
  *(v10 + 1176) = *(v10 + 2352);
  *(v10 + 1190) = *(v10 + 2366);
  *(v10 + 1198) = 1;
  *(v10 + 1199) = v12;
  *(v10 + 1200) = 0;
  *(v10 + 1208) = v11;
  sub_1C7025F74(v10 + 1144);

  sub_1C6FB5FC8(v10 + 400, &qword_1EC21AB28, &unk_1C7583F60);
  sub_1C70DF138(v10 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v13);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C732E94C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3440) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C732EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168_6();
  OUTLINED_FUNCTION_31();
  v319 = (v14 + 1536);
  v321 = v14 + 2096;
  v315 = v14 + 1216;
  v317 = v14 + 2264;
  v16 = (v14 + 2432);
  v17 = (v14 + 2488);
  v329 = v14 + 2600;
  v332 = (v14 + 1984);
  v327 = v14 + 2696;
  v18 = *(v14 + 3424);
  v19 = *(v14 + 3064);
  v20 = *(v14 + 3072);
  *(v14 + 3032) = *(v14 + 3056);
  v323 = (v14 + 2152);
  v325 = v14 + 2744;
  v334 = v14 + 314;
  v337 = v14 + 2648;
  v340 = v14 + 394;
  v21 = (v14 + 473);
  *(v14 + 3040) = v19;
  *(v14 + 3048) = v20;
  v29 = FreeformStoryFetching.Result.uuids.getter(v22, v23, v24, v25, v26, v27, v28);

  swift_unknownObjectRelease();
  for (i = *(v14 + 3440); ; i = 0)
  {
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_19_59(v31, v32, *(v14 + 3400));
    sub_1C754F2DC();
    if (i)
    {
      break;
    }

    v33 = *(v14 + 2504);
    *v16 = *v17;
    *(v14 + 2448) = v33;
    *(v14 + 2464) = *(v14 + 2520);
    *(v14 + 2480) = *(v14 + 2536);
    *(v14 + 145) = *v21;
    *(v14 + 149) = *(v14 + 477);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v14 + 3408);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = OUTLINED_FUNCTION_92();
      sub_1C6FB3F74(v43, v44, v45, v46);
      v35 = v47;
    }

    OUTLINED_FUNCTION_90_14();
    if (v36)
    {
      OUTLINED_FUNCTION_58_24();
      sub_1C6FB3F74(v48, v49, v50, v51);
      v35 = v52;
    }

    v37 = *(v14 + 478);
    sub_1C6FB5FC8(v14 + 320, &qword_1EC21AB30, &qword_1C7583F70);
    OUTLINED_FUNCTION_194_4();
    OUTLINED_FUNCTION_60_20(v38, *(v14 + 2464), *(v14 + 2448), *v16);
    *(v39 + 88) = v29;
    *(v39 + 96) = v37;
    v40 = *(v14 + 3400) + 1;
    OUTLINED_FUNCTION_189_2();
    if (v40 == *(v14 + 3392))
    {
      OUTLINED_FUNCTION_86_11();
      v58 = MEMORY[0x1E69E7CC0];
      v59 = 56;
      v60 = &qword_1EC21AB38;
      while (1)
      {
        OUTLINED_FUNCTION_140_6(v57);
        if (v61 == v62)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v36)
        {
          __break(1u);
          goto LABEL_96;
        }

        v63 = OUTLINED_FUNCTION_61_19();
        v66 = OUTLINED_FUNCTION_22_54(v332, v63, v64, v65);
        v71 = OUTLINED_FUNCTION_157_3(v67, v68, v66, v69, v70);
        OUTLINED_FUNCTION_133_7(v71, v72, v73, v74, v75, v76, v77, v78, v313, v315, v317, v319, v321, v323, v325, v327, v329, v332, v334, v337, v340);
        if (v14 == -2488)
        {
          OUTLINED_FUNCTION_151_5();
          v125 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          OUTLINED_FUNCTION_246_3(v125, v126, &qword_1EC21AB38, &qword_1C7583F78);
          sub_1C75504FC();
          OUTLINED_FUNCTION_49_3();
          v127 = sub_1C7073450();
          [v127 length];
          v128 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          OUTLINED_FUNCTION_75();
          sub_1C71C8E10();
          v129 = objc_opt_self();
          v130 = OUTLINED_FUNCTION_52_26(v129, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
          OUTLINED_FUNCTION_247_2(v130);

          OUTLINED_FUNCTION_15_63(0xFFFFFFFFFFFFF839);
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          MEMORY[0x3E8] = v131;
          *v131 = v132;
          OUTLINED_FUNCTION_24_35(v131);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_174_3();
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v79, v80, *(v14 + 3456));
        v81 = sub_1C754F2DC();
        v35 = *(v14 + 3464);
        v89 = OUTLINED_FUNCTION_145_5(v81, v82, v83, v84, v85, v86, v87, v88, v314, v316, v318, v320, v322, v324, v326, v328, v330, v333, v335, v338, v341);
        v58 = *(v14 + 3464);
        if ((v89 & 1) == 0)
        {
          v92 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB2320(v92);
          v58 = v93;
        }

        v40 = *(v58 + 16);
        OUTLINED_FUNCTION_134_0();
        if (v36)
        {
          v94 = OUTLINED_FUNCTION_15_2(v90);
          sub_1C6FB2320(v94);
          v58 = v95;
        }

        OUTLINED_FUNCTION_220_2();
        *(v58 + 16) = v35;
        OUTLINED_FUNCTION_20_52(v58 + 56 * v40);
        OUTLINED_FUNCTION_69_20(v91);
      }

      OUTLINED_FUNCTION_153_5();
      v336 = v106;
      v108 = v107 + 64;
      v109 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        *(v14 + 3504) = v109;
        if (v336 == v105)
        {
          break;
        }

        OUTLINED_FUNCTION_131_4();
        if (v36)
        {
          __break(1u);
          goto LABEL_106;
        }

        OUTLINED_FUNCTION_45_29();
        v18 = *(v108 - 24);
        OUTLINED_FUNCTION_98_13();
        if (v112)
        {
          v59 = v110 + 1;
        }

        else
        {
          v59 = v110;
        }

        v345 = v111;
        OUTLINED_FUNCTION_127_7();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if (v40)
        {
          OUTLINED_FUNCTION_125_6();
          v173 = *(v14 + 3104);
          OUTLINED_FUNCTION_129_7();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_141_4();
          swift_bridgeObjectRelease_n();

          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v174 + 8))(v173);
          goto LABEL_42;
        }

        v113 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = OUTLINED_FUNCTION_92();
          sub_1C6FB3F44(v116, v117, v118, v119);
          v113 = v120;
        }

        v40 = *(v113 + 16);
        v109 = v113;
        OUTLINED_FUNCTION_134_0();
        if (v36)
        {
          v121 = OUTLINED_FUNCTION_15_2(v114);
          sub_1C6FB3F44(v121, v122, v123, v113);
          v109 = v124;
        }

        OUTLINED_FUNCTION_193_2();
        OUTLINED_FUNCTION_93_14(v115);
        v105 = v345 + 1;
      }

      OUTLINED_FUNCTION_65_22();
      v152 = &qword_1EC21AB38;
      while (1)
      {
        OUTLINED_FUNCTION_96_12(v151);
        if (v112)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v36)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          OUTLINED_FUNCTION_113_11();
          OUTLINED_FUNCTION_205_2();
          OUTLINED_FUNCTION_204_4();
          v311 = *(v14 + 3088);
          *v311 = v152;
          v311[1] = v109;
          OUTLINED_FUNCTION_146_6(v311);
          OUTLINED_FUNCTION_225_1(v312);

          OUTLINED_FUNCTION_25();
          goto LABEL_43;
        }

        v153 = OUTLINED_FUNCTION_61_19();
        v156 = OUTLINED_FUNCTION_22_54(v323, v153, v154, v155);
        OUTLINED_FUNCTION_107_9(v157, v158, v156, v159, v160);
        v161 = OUTLINED_FUNCTION_232_2();
        OUTLINED_FUNCTION_50_25(v327, v161, v162);
        if (!v58)
        {
          OUTLINED_FUNCTION_116_11();
          v203 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          OUTLINED_FUNCTION_223_2(v203, v204, &qword_1EC21AB38, &qword_1C7583F78);
          sub_1C75504FC();
          OUTLINED_FUNCTION_49_3();
          v205 = sub_1C7073450();
          [v205 length];
          v206 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          OUTLINED_FUNCTION_75();
          sub_1C71C8E10();
          v207 = objc_opt_self();
          v208 = OUTLINED_FUNCTION_52_26(v207, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
          OUTLINED_FUNCTION_226_2(v208);

          OUTLINED_FUNCTION_15_63(v109 + 3);
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3552) = v209;
          *v209 = v210;
          OUTLINED_FUNCTION_14_55(v209);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_173_4();
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v163, v164, *(v14 + 3520));
        v40 = 0;
        sub_1C754F2DC();
        v18 = *(v14 + 3528);
        OUTLINED_FUNCTION_43_32(v327);
        v165 = swift_isUniquelyReferenced_nonNull_native();
        v166 = *(v14 + 3528);
        if ((v165 & 1) == 0)
        {
          v169 = OUTLINED_FUNCTION_92();
          sub_1C6FB2320(v169);
          v166 = v170;
        }

        OUTLINED_FUNCTION_90_14();
        if (v36)
        {
          v171 = OUTLINED_FUNCTION_36_28(v167);
          sub_1C6FB2320(v171);
          v166 = v172;
        }

        OUTLINED_FUNCTION_216_3();
        *(v166 + 16) = 0;
        OUTLINED_FUNCTION_20_52(v166 + 56 * v18);
        OUTLINED_FUNCTION_44_28(v168);
      }

      OUTLINED_FUNCTION_195_3();
      v35 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_114_11();
      v109 = &qword_1EC21AB20;
      OUTLINED_FUNCTION_149_6();
      OUTLINED_FUNCTION_148_7();
      while (1)
      {
        *(v14 + 3592) = v15;
        OUTLINED_FUNCTION_147_5(v175);
        if (v112)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v36)
        {
          goto LABEL_121;
        }

        v177 = *(v14 + 3240);
        OUTLINED_FUNCTION_16_55(v176);
        v179 = *(v178 + 48);
        *v177 = v180;
        OUTLINED_FUNCTION_18_48();
        sub_1C7337590(v181, v177 + v179, v182);
        OUTLINED_FUNCTION_215_2();
        v183 = 7954788;
        switch(*(v35 + 57))
        {
          case 1:
            v183 = OUTLINED_FUNCTION_33_33();
            goto LABEL_66;
          case 2:
            v183 = OUTLINED_FUNCTION_91_13();
            goto LABEL_66;
          case 3:
            v183 = OUTLINED_FUNCTION_32_32();
            goto LABEL_66;
          case 4:

            goto LABEL_67;
          case 5:
            v183 = OUTLINED_FUNCTION_41_36();
            goto LABEL_66;
          case 6:
            v183 = v59;
            goto LABEL_66;
          default:
LABEL_66:
            OUTLINED_FUNCTION_112_6(v183);
            OUTLINED_FUNCTION_364();
            if (v152)
            {
LABEL_67:
              OUTLINED_FUNCTION_40_37();
              OUTLINED_FUNCTION_229_2(v184);
            }

            else
            {
              OUTLINED_FUNCTION_48_23();
              if (!v185)
              {
                goto LABEL_81;
              }
            }

            OUTLINED_FUNCTION_42_31();
            OUTLINED_FUNCTION_19_59(v186, v187, *(v14 + 3576));
            v40 = 0;
            sub_1C754F2DC();
            v152 = *(v14 + 3240);
            OUTLINED_FUNCTION_5_74(*(v14 + 3216), *(v14 + 3224));
            v188 = OUTLINED_FUNCTION_101_5();
            sub_1C6FB5FC8(v188, v189, &qword_1C7583F58);
            v190 = swift_isUniquelyReferenced_nonNull_native();
            v35 = *(v14 + 3584);
            if ((v190 & 1) == 0)
            {
              v193 = OUTLINED_FUNCTION_92();
              sub_1C6FB3F04(v193, v194, v195, v196);
              v35 = v197;
            }

            OUTLINED_FUNCTION_117_7();
            if (v36)
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB3F04(v198, v199, v200, v201);
              v35 = v202;
            }

            OUTLINED_FUNCTION_51_21();
            OUTLINED_FUNCTION_200_2();
            OUTLINED_FUNCTION_5_74(v191, v192);
            OUTLINED_FUNCTION_144_7();
            break;
        }
      }

      OUTLINED_FUNCTION_110_8();
      OUTLINED_FUNCTION_228_3();
      if (v212)
      {
        if (*(v211 + 16))
        {
          OUTLINED_FUNCTION_13_65(v211);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3656) = v213;
          *v213 = v214;
          OUTLINED_FUNCTION_1_107(v213);
          OUTLINED_FUNCTION_73_18();

          sub_1C7336744(v215, v216, v217, v218, v219, v220, v221, v222, v223);
        }

        else
        {
LABEL_126:
          __break(1u);
        }

        return;
      }

      OUTLINED_FUNCTION_62_21();
      *(v14 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
      v236 = 1u;
      while (1)
      {
        OUTLINED_FUNCTION_142_2(v235);
        if (v112)
        {
          break;
        }

        OUTLINED_FUNCTION_71_14();
        if (v36)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        v237 = *(v14 + 3160);
        OUTLINED_FUNCTION_109_11();
        v238 = *(v14 + 3120);
        OUTLINED_FUNCTION_9_72(v239);
        v241 = *(v240 + 48);
        *v237 = v242;
        OUTLINED_FUNCTION_2_98();
        sub_1C7337590(v243, v237 + v241, v244);
        OUTLINED_FUNCTION_35();
        sub_1C7337590(v245, v246, v247);
        v248 = *(v238 + 32);
        *(v152 + v248) = v236;
        OUTLINED_FUNCTION_141_6();
        if (!v250)
        {
          OUTLINED_FUNCTION_238_2(v249);
          v251 = OUTLINED_FUNCTION_155_2();
          sub_1C6F65BE8(v251, &qword_1EDD0CE30, 0x1E696AAB0);
          OUTLINED_FUNCTION_97_11();
          sub_1C75504FC();
          v252 = OUTLINED_FUNCTION_183_2();
          [v252 length];
          v253 = OUTLINED_FUNCTION_230_3();
          v254 = sub_1C6F65BE8(v253, &qword_1EC217FE0, 0x1E6978A98);
          v255 = sub_1C754F06C();
          if (sub_1C71C3FF8(v255))
          {
            OUTLINED_FUNCTION_235_3();
            v305 = objc_opt_self();
            v306 = OUTLINED_FUNCTION_88_12(v305, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_, v252, v254);
            OUTLINED_FUNCTION_210_3(v306);

            OUTLINED_FUNCTION_47_22((v248 + 24));
            OUTLINED_FUNCTION_15_3();
            v307 = swift_task_alloc();
            v308 = OUTLINED_FUNCTION_72_17(v307);
            *v308 = v309;
            OUTLINED_FUNCTION_0_141(v308);
            goto LABEL_39;
          }

          v256 = sub_1C754FEEC();
          v257 = sub_1C755119C();
          if (OUTLINED_FUNCTION_66(v257))
          {
            v258 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_115_13(v258);
            OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v256, v259, "Part Of Week retrieval not supported by Spotlight in this build.");
            OUTLINED_FUNCTION_37();
          }

          *(v152 + v248) = 2;
          v236 = 1;
        }

        OUTLINED_FUNCTION_10_67();
        v40 = 0;
        sub_1C754F2DC();
        v35 = *(v14 + 3696);
        v152 = *(v14 + 3160);
        OUTLINED_FUNCTION_3_90(*(v14 + 3136), *(v14 + 3144));
        sub_1C6FB5FC8(v152, &unk_1EC21AB18, &unk_1C7583F48);
        v260 = swift_isUniquelyReferenced_nonNull_native();
        v261 = *(v14 + 3696);
        if ((v260 & 1) == 0)
        {
          v265 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3E94(v265, v266, v267, v261);
          v261 = v268;
        }

        OUTLINED_FUNCTION_186_3();
        if (v36)
        {
          OUTLINED_FUNCTION_82_16();
          sub_1C6FB3E94(v269, v270, v271, v261);
        }

        OUTLINED_FUNCTION_35_24();
        OUTLINED_FUNCTION_196_1();
        OUTLINED_FUNCTION_3_90(v264, v263 + v262 * v152);
        OUTLINED_FUNCTION_87_17();
      }

LABEL_96:
      v272 = 0;
      v273 = *(v14 + 3312);
      v342 = *(v273 + 16);
      v60 = (v273 + 32);
      v346 = MEMORY[0x1E69E7CC0];
      while (v342 != v272)
      {
        if (v272 >= *(v273 + 16))
        {
          goto LABEL_124;
        }

        v274 = OUTLINED_FUNCTION_66_21();
        OUTLINED_FUNCTION_95_16(v319, v274, v275, v276, v277);
        OUTLINED_FUNCTION_70_17();
        OUTLINED_FUNCTION_119_11();
        v278 = OUTLINED_FUNCTION_21_49(v272);
        sub_1C70555F8(v278, v279, &unk_1EC21AB48, &unk_1C7583F90);
        OUTLINED_FUNCTION_171_2();
        if (v40)
        {
          OUTLINED_FUNCTION_167_5();
          OUTLINED_FUNCTION_177_2();
          OUTLINED_FUNCTION_64_16();
          v344 = v303;
          OUTLINED_FUNCTION_78_14(v315, v348, v349);

          sub_1C6FB5FC8(v14 + 712, &unk_1EC21AB48, &unk_1C7583F90);
          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v304 + 8))(v344);
          goto LABEL_42;
        }

        __dst[0] = v348;
        __dst[1] = v349;
        __dst[2] = v350;
        OUTLINED_FUNCTION_154_4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v282 = OUTLINED_FUNCTION_8_64();
          sub_1C6FB3DA8(v282);
          v346 = v283;
        }

        OUTLINED_FUNCTION_59_23();
        if (v36)
        {
          v284 = OUTLINED_FUNCTION_15_2(v280);
          sub_1C6FB3DA8(v284);
          v346 = v285;
        }

        sub_1C6FB5FC8(v14 + 712, &unk_1EC21AB48, &unk_1C7583F90);
        v346[1].n128_u64[0] = v35;
        OUTLINED_FUNCTION_111_10(v346, __dst[2], __dst[1], __dst[0]);
        OUTLINED_FUNCTION_76_16(v281);
        v60 += 8;
        ++v272;
      }

LABEL_106:
      OUTLINED_FUNCTION_94_15();
      v331 = v287;
      v289 = v288 + 64;
      v343 = MEMORY[0x1E69E7CC0];
      while (v331 != v286)
      {
        OUTLINED_FUNCTION_131_4();
        if (v36)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_45_29();
        v290 = *(v289 - 24);
        v339 = *(v289 - 32);
        OUTLINED_FUNCTION_100_13();
        OUTLINED_FUNCTION_46_28();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if (v40)
        {
          OUTLINED_FUNCTION_67_19();
          OUTLINED_FUNCTION_53_29();
          OUTLINED_FUNCTION_141_4();
          swift_bridgeObjectRelease_n();

          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v310 + 8))(v60);
          goto LABEL_42;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v294 = OUTLINED_FUNCTION_8_64();
          sub_1C6FB3D78(v294, v295, v296, v297);
          v343 = v298;
        }

        OUTLINED_FUNCTION_59_23();
        if (v36)
        {
          v299 = OUTLINED_FUNCTION_15_2(v291);
          sub_1C6FB3D78(v299, v300, v301, v343);
          v343 = v302;
        }

        OUTLINED_FUNCTION_75_13(v343);
        *(v292 + 32) = v339;
        *(v292 + 40) = v290;
        OUTLINED_FUNCTION_152_5(v292);
        OUTLINED_FUNCTION_68_20(v293);
      }

      OUTLINED_FUNCTION_160_5();
      sub_1C754F2EC();
      OUTLINED_FUNCTION_56_24();
      v109 = *(v14 + 3408);
      v152 = *(v14 + 3352);
      if (!v40)
      {
        goto LABEL_122;
      }

      sub_1C70DF138(v14 + 16);
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_190_0();
    if (v36)
    {
      __break(1u);
LABEL_81:
      v225 = OUTLINED_FUNCTION_27_41();
      v227 = v226(v225);
      OUTLINED_FUNCTION_244_3(v227, v228, &qword_1EC218C50, &qword_1C75606A0);
      v229 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      v230 = OUTLINED_FUNCTION_104_9();
      sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      OUTLINED_FUNCTION_49_3();
      [sub_1C7073450() length];
      v231 = objc_opt_self();
      v232 = OUTLINED_FUNCTION_63_19(v231, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
      OUTLINED_FUNCTION_221_2(v232);

      OUTLINED_FUNCTION_15_63(v18 + 3);
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v14 + 3624) = v233;
      *v233 = v234;
      OUTLINED_FUNCTION_6_81(v233);
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_172_3(v41);
    memcpy(__dst, (v35 + 32), 0x42uLL);
    *(v14 + 320) = v40;
    memcpy((v14 + 328), __dst, 0x42uLL);
    sub_1C7025FF8(v14 + 856, v14 + 928);
    v29 = *(v14 + 384);
    v42 = *(v14 + 344);
    *v17 = *(v14 + 328);
    *(v14 + 2504) = v42;
    *(v14 + 2520) = *(v14 + 360);
    *(v14 + 2536) = *(v14 + 376);
    *v21 = *(v14 + 379);
    *(v14 + 477) = *(v14 + 383);
    *(v14 + 478) = *(v14 + 392);
    if (!v29)
    {
      sub_1C70555F8(v14 + 320, v14 + 160, &qword_1EC21AB30, &qword_1C7583F70);
      sub_1C75504FC();
      OUTLINED_FUNCTION_145_2();
      if (sub_1C75507FC() <= 0)
      {
        sub_1C75504FC();
        v96 = OUTLINED_FUNCTION_165_3();
        MEMORY[0x1CCA5CC40](v96);
        OUTLINED_FUNCTION_162_6();
      }

      else
      {
        sub_1C75504FC();
      }

      v97 = *(v14 + 3112);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v99 = OUTLINED_FUNCTION_13_1(v98);
      OUTLINED_FUNCTION_198_2(v99, xmmword_1C755BAB0);
      sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
      OUTLINED_FUNCTION_24_2();
      sub_1C75504FC();
      OUTLINED_FUNCTION_145_2();
      v100 = sub_1C7073450();
      [v100 0x1FAD8E6F8];
      sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      v101 = sub_1C71C3DE4();
      v102 = objc_opt_self();
      *(v14 + 3424) = OUTLINED_FUNCTION_77_14(v102, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

      OUTLINED_FUNCTION_15_63((v97 + 24));
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v14 + 3432) = v103;
      *v103 = v104;
      OUTLINED_FUNCTION_49_22(v103);
LABEL_38:
      OUTLINED_FUNCTION_34_32();
LABEL_39:
      OUTLINED_FUNCTION_73_18();

      v139(v133, v134, v135, v136, v137, v138, v139, v140, a9, a10, a11, a12, a13, a14);
      return;
    }

    sub_1C70555F8(v14 + 320, v14 + 240, &qword_1EC21AB30, &qword_1C7583F70);
  }

  OUTLINED_FUNCTION_125_6();
  v53 = *(v14 + 3104);
  v54 = *(v14 + 2504);
  *(v14 + 784) = *v17;
  *(v14 + 800) = v54;
  *(v14 + 816) = *(v14 + 2520);
  OUTLINED_FUNCTION_99_13();
  *v55 = *v21;
  *(v14 + 839) = *(v14 + 477);
  *(v14 + 840) = v29;
  *(v14 + 848) = v56;
  sub_1C7026030(v14 + 784);

  sub_1C6FB5FC8(v14 + 320, &qword_1EC21AB30, &qword_1C7583F70);
  sub_1C70DF138(v14 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v142 + 8))(v53);
LABEL_42:
  OUTLINED_FUNCTION_25_39();

  OUTLINED_FUNCTION_6_0();
LABEL_43:
  OUTLINED_FUNCTION_73_18();

  v144(v143, v144, v145, v146, v147, v148, v149, v150, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7330130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();

  v11 = *(v10 + 3104);
  v12 = *(v10 + 2504);
  *(v10 + 784) = *(v10 + 2488);
  *(v10 + 800) = v12;
  *(v10 + 816) = *(v10 + 2520);
  OUTLINED_FUNCTION_99_13();
  *v13 = *(v10 + 473);
  *(v10 + 839) = *(v10 + 477);
  *(v10 + 840) = 0;
  *(v10 + 848) = v14;
  sub_1C7026030(v10 + 784);

  sub_1C6FB5FC8(v10 + 320, &qword_1EC21AB30, &qword_1C7583F70);
  sub_1C70DF138(v10 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v11);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C733027C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3496) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7330374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168_6();
  OUTLINED_FUNCTION_31();
  v16 = v14 + 1984;
  v322 = (v14 + 1536);
  v323 = (v14 + 2152);
  v320 = (v14 + 1216);
  v321 = v14 + 2264;
  v17 = (v14 + 2600);
  v18 = v14 + 2648;
  v329 = (v14 + 2096);
  v330 = *(v14 + 3480);
  v19 = *(v14 + 2800);
  v20 = *(v14 + 2808);
  *(v14 + 2912) = *(v14 + 2792);
  v324 = v14 + 2744;
  v326 = v14 + 2696;
  v21 = v14 + 314;
  v334 = (v14 + 394);
  *(v14 + 2920) = v19;
  *(v14 + 2928) = v20;
  v29 = FreeformStoryFetching.Result.uuids.getter(v22, v23, v24, v25, v26, v27, v28);

  swift_unknownObjectRelease();
  v30 = *(v14 + 3496);
  v331 = v14 + 1330;
  v31 = v14 + 1288;
  v335 = v14;
  while (1)
  {
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_19_59(v32, v33, *(v14 + 3456));
    sub_1C754F2DC();
    v34 = *(v14 + 3464);
    if (v30)
    {
      v58 = *(v14 + 3104);
      v59 = *(v17 + 1);
      *v329 = *v17;
      v329[1] = v59;
      *(v329 + 25) = *(v17 + 25);
      *(v14 + 2137) = 1;
      OUTLINED_FUNCTION_101_13((v14 + 2138));
      *(v14 + 2144) = v29;
      sub_1C70260EC(v60);

      sub_1C6FB5FC8(v14 + 1280, &qword_1EC21AB38, &qword_1C7583F78);
      sub_1C70DF138(v14 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v61 + 8))(v58);
      goto LABEL_64;
    }

    v35 = *(v17 + 1);
    *v18 = *v17;
    *(v18 + 16) = v35;
    *(v18 + 25) = *(v17 + 25);
    *v21 = v334->n128_u32[0];
    *(v21 + 4) = v334->n128_u16[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v14 + 3464);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB2320(v54);
      v37 = v55;
    }

    v38 = *(v37 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v39)
    {
      OUTLINED_FUNCTION_82_16();
      sub_1C6FB2320(v56);
      v37 = v57;
    }

    v14 = v335;
    sub_1C6FB5FC8(v335 + 1280, &qword_1EC21AB38, &qword_1C7583F78);
    *(v37 + 16) = v34;
    OUTLINED_FUNCTION_38_30(v37 + 56 * v38, *(v18 + 25), *(v18 + 16), *v18);
    v40 = *v21;
    *(v41 + 78) = *(v21 + 4);
    *(v41 + 74) = v40;
    *(v41 + 80) = v29;
    OUTLINED_FUNCTION_140_6(*(v335 + 3456) + 1);
    if (v42 == *(v335 + 3448))
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v39)
    {
      __break(1u);
      goto LABEL_83;
    }

    v43 = OUTLINED_FUNCTION_61_19();
    *(v16 + 48) = v44;
    *(v16 + 16) = v45;
    *(v16 + 32) = v46;
    *v16 = v43;
    v48 = *(v47 + 80);
    v50 = *(v47 + 48);
    v49 = *(v47 + 64);
    v51 = *(v47 + 32);
    *(v335 + 1280) = v52;
    *v31 = v51;
    *(v31 + 16) = v50;
    *(v31 + 32) = v49;
    *(v31 + 48) = v48;
    sub_1C70260B4(v16, v335 + 2040);
    v29 = *(v335 + 1336);
    v53 = *(v31 + 16);
    *v17 = *v31;
    *(v17 + 1) = v53;
    *(v17 + 25) = *(v31 + 25);
    v334->n128_u32[0] = *v331;
    v334->n128_u16[2] = *(v331 + 4);
    if (!v29)
    {
      OUTLINED_FUNCTION_151_5();
      v93 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
      OUTLINED_FUNCTION_246_3(v93, v94, &qword_1EC21AB38, &qword_1C7583F78);
      sub_1C75504FC();
      OUTLINED_FUNCTION_49_3();
      v95 = sub_1C7073450();
      [v95 length];
      v96 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      OUTLINED_FUNCTION_75();
      sub_1C71C8E10();
      v97 = objc_opt_self();
      v98 = OUTLINED_FUNCTION_52_26(v97, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
      OUTLINED_FUNCTION_247_2(v98);

      OUTLINED_FUNCTION_15_63(v17 + 3);
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v335 + 3488) = v99;
      *v99 = v100;
      OUTLINED_FUNCTION_24_35(v99);
LABEL_25:
      OUTLINED_FUNCTION_34_32();
LABEL_26:
      OUTLINED_FUNCTION_73_18();

      v107(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12, a13, a14);
      return;
    }

    sub_1C70555F8(v335 + 1280, v335 + 1472, &qword_1EC21AB38, &qword_1C7583F78);
    v30 = 0;
  }

  OUTLINED_FUNCTION_153_5();
  v328 = v63;
  v329 = v64;
  v65 = (v63 + 64);
  v66 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v335 + 3504) = v66;
    if (v329 == v62)
    {
      break;
    }

    OUTLINED_FUNCTION_131_4();
    if (v39)
    {
      __break(1u);
      goto LABEL_96;
    }

    OUTLINED_FUNCTION_231_2(v67, v68, v69, v70, v71, v72, v73, v74, v319, v320, v321, v322, v323, v324, v326, v328, v329, v331, v334, v335);
    v77 = *(v65 - 3);
    v331 = *(v65 - 2);
    v334 = *(v65 - 4);
    v78 = *v65;
    v79 = *(v65 - 8);
    if (*v65)
    {
      v80 = 1;
    }

    else
    {
      v80 = 2;
    }

    v17 = v76;
    v15 = v15 + v76;
    *(v75 + 3080) = v15;
    OUTLINED_FUNCTION_129_7();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_141_4();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_171_2();
    if (v38)
    {
      v135 = v335;
      v136 = *(v335 + 3104);
      OUTLINED_FUNCTION_129_7();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_141_4();
      swift_bridgeObjectRelease_n();

LABEL_39:

      sub_1C70DF138(v135 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v137 + 8))(v136);
      goto LABEL_64;
    }

    v81 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = OUTLINED_FUNCTION_92();
      sub_1C6FB3F44(v84, v85, v86, v87);
      v81 = v88;
    }

    v38 = *(v81 + 16);
    v66 = v81;
    OUTLINED_FUNCTION_134_0();
    if (v39)
    {
      v89 = OUTLINED_FUNCTION_15_2(v82);
      sub_1C6FB3F44(v89, v90, v91, v81);
      v66 = v92;
    }

    *(v66 + 16) = v81;
    v83 = v66 + 40 * v38;
    *(v83 + 32) = v334;
    *(v83 + 40) = v77;
    *(v83 + 48) = v331;
    *(v83 + 56) = v79;
    *(v83 + 57) = v80;
    *(v83 + 64) = v78;
    v65 += 5;
    v62 = (v17 + 1);
  }

  v110 = v335;
  OUTLINED_FUNCTION_65_22();
  v112 = &qword_1C7583F78;
  while (1)
  {
    OUTLINED_FUNCTION_96_12(v111);
    if (v113)
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v39)
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_204_4();
      v317 = *(v110 + 3088);
      *v317 = v112;
      v317[1] = v17;
      OUTLINED_FUNCTION_146_6(v317);
      OUTLINED_FUNCTION_225_1(v318);

      OUTLINED_FUNCTION_25();
      goto LABEL_65;
    }

    v114 = OUTLINED_FUNCTION_61_19();
    v117 = OUTLINED_FUNCTION_22_54(v323, v114, v115, v116);
    OUTLINED_FUNCTION_107_9(v118, v119, v117, v120, v121);
    v122 = OUTLINED_FUNCTION_232_2();
    OUTLINED_FUNCTION_50_25(v326, v122, v123);
    if (!v37)
    {
      OUTLINED_FUNCTION_116_11();
      v173 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
      OUTLINED_FUNCTION_223_2(v173, v174, &qword_1EC21AB38, &qword_1C7583F78);
      sub_1C75504FC();
      OUTLINED_FUNCTION_49_3();
      v175 = sub_1C7073450();
      [v175 length];
      v176 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      OUTLINED_FUNCTION_75();
      sub_1C71C8E10();
      v177 = objc_opt_self();
      v178 = OUTLINED_FUNCTION_52_26(v177, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
      OUTLINED_FUNCTION_226_2(v178);

      OUTLINED_FUNCTION_15_63(v17 + 3);
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v110 + 3552) = v179;
      *v179 = v180;
      OUTLINED_FUNCTION_14_55(v179);
      goto LABEL_25;
    }

    sub_1C70555F8(v110 + 1344, v110 + 1600, &qword_1EC21AB38, &qword_1C7583F78);
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_19_59(v124, v125, *(v110 + 3520));
    sub_1C754F2DC();
    OUTLINED_FUNCTION_43_32(v326);
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v127 = *(v110 + 3528);
    if ((v126 & 1) == 0)
    {
      v131 = OUTLINED_FUNCTION_92();
      sub_1C6FB2320(v131);
      v127 = v132;
    }

    v129 = *(v127 + 16);
    v128 = *(v127 + 24);
    if (v129 >= v128 >> 1)
    {
      v133 = OUTLINED_FUNCTION_36_28(v128);
      sub_1C6FB2320(v133);
      v127 = v134;
    }

    v110 = v335;
    sub_1C6FB5FC8(v335 + 1344, &qword_1EC21AB38, &qword_1C7583F78);
    *(v127 + 16) = v129 + 1;
    OUTLINED_FUNCTION_20_52(v127 + 56 * v129);
    OUTLINED_FUNCTION_44_28(v130);
  }

  OUTLINED_FUNCTION_195_3();
  v138 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_114_11();
  v17 = &qword_1EC21AB20;
  OUTLINED_FUNCTION_149_6();
  v38 = v110;
  OUTLINED_FUNCTION_148_7();
  while (1)
  {
    *(v38 + 3592) = v15;
    *(v38 + 3584) = v138;
    *(v38 + 3576) = v139;
    if (v139 == v140)
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v39)
    {
      goto LABEL_114;
    }

    v141 = *(v38 + 3240);
    v142 = *(v38 + 3216);
    *(v38 + 156) = *(*(v38 + 3208) + 80);
    OUTLINED_FUNCTION_23_40();
    *(v38 + 3608) = v143;
    v145 = *(v144 + 48);
    *v141 = v146;
    OUTLINED_FUNCTION_18_48();
    sub_1C7337590(v147, v141 + v145, v148);
    sub_1C7337590(v141 + v145, v142, v112);
    v149 = *(v142 + 57);
    v150 = 0xE300000000000000;
    v151 = 7954788;
    switch(v149)
    {
      case 1:
        v151 = OUTLINED_FUNCTION_33_33();
        goto LABEL_50;
      case 2:
        v151 = OUTLINED_FUNCTION_91_13();
        goto LABEL_50;
      case 3:
        v151 = OUTLINED_FUNCTION_32_32();
        v150 = 0xEC00000000000000;
        goto LABEL_50;
      case 4:

        goto LABEL_51;
      case 5:
        v151 = OUTLINED_FUNCTION_41_36();
        goto LABEL_50;
      case 6:
        v151 = v66;
        v150 = 0xEC00000064656E69;
        goto LABEL_50;
      default:
LABEL_50:
        OUTLINED_FUNCTION_112_6(v151);
        OUTLINED_FUNCTION_364();
        if (v112)
        {
LABEL_51:
          v152 = v335;
          OUTLINED_FUNCTION_40_37();
          OUTLINED_FUNCTION_229_2(v153);
        }

        else
        {
          v152 = v335;
          OUTLINED_FUNCTION_48_23();
          if (!v154)
          {
            v209 = *(v335 + 3216);
            OUTLINED_FUNCTION_39_34();
            v210 = *(v335 + 3112);
            v212 = *(v211 + 40);
            (*(v213 + 16))(v150, v209 + *(v211 + 36));
            sub_1C70555F8(v209 + v212, v112, &qword_1EC218C50, &qword_1C75606A0);
            v214 = objc_allocWithZone(MEMORY[0x1E6978A98]);
            v215 = OUTLINED_FUNCTION_104_9();
            sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
            OUTLINED_FUNCTION_51();
            sub_1C75504FC();
            OUTLINED_FUNCTION_49_3();
            [sub_1C7073450() length];
            v216 = objc_opt_self();
            v217 = OUTLINED_FUNCTION_63_19(v216, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
            OUTLINED_FUNCTION_221_2(v217);

            OUTLINED_FUNCTION_15_63((v210 + 24));
            OUTLINED_FUNCTION_15_3();
            swift_task_alloc();
            OUTLINED_FUNCTION_48();
            *(v335 + 3624) = v218;
            *v218 = v219;
            OUTLINED_FUNCTION_6_81(v218);
            goto LABEL_25;
          }
        }

        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v155, v156, *(v152 + 3576));
        sub_1C754F2DC();
        OUTLINED_FUNCTION_5_74(*(v152 + 3216), *(v152 + 3224));
        v157 = OUTLINED_FUNCTION_101_5();
        sub_1C6FB5FC8(v157, v158, &qword_1C7583F58);
        v159 = swift_isUniquelyReferenced_nonNull_native();
        v138 = *(v152 + 3584);
        if ((v159 & 1) == 0)
        {
          v163 = OUTLINED_FUNCTION_92();
          sub_1C6FB3F04(v163, v164, v165, v166);
          v138 = v167;
        }

        v110 = *(v138 + 16);
        v112 = v110 + 1;
        if (v110 >= *(v138 + 24) >> 1)
        {
          OUTLINED_FUNCTION_90_9();
          sub_1C6FB3F04(v168, v169, v170, v171);
          v138 = v172;
        }

        v38 = v335;
        OUTLINED_FUNCTION_200_2();
        OUTLINED_FUNCTION_5_74(v162, v161 + v160 * v110);
        v139 = *(v335 + 3576) + 1;
        v140 = *(v335 + 3568);
        break;
    }
  }

  v181 = *(v38 + 3296);
  v182 = *(v181 + 16);
  *(v38 + 3600) = v182;
  *(v38 + 3648) = MEMORY[0x1E69E7CC0];
  *(v38 + 3640) = 0;
  v37 = v38;
  if (v182)
  {
    if (*(v181 + 16))
    {
      v183 = *(v181 + 80);
      v184 = *(v181 + 64);
      v185 = *(v181 + 72);
      v186 = *(v181 + 56);
      v187 = *(v181 + 40);
      v188 = *(v181 + 48);
      v189 = *(v181 + 32);
      *(v38 + 1920) = 0;
      *(v38 + 1928) = v189;
      *(v38 + 1936) = v187;
      *(v38 + 1944) = v188;
      *(v38 + 1952) = v186;
      *(v38 + 1960) = v184;
      *(v38 + 1968) = v185;
      *(v38 + 1976) = v183;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v190 = swift_task_alloc();
      *(v38 + 3656) = v190;
      *v190 = v38;
      v190[1] = sub_1C7333F04;
      OUTLINED_FUNCTION_73_18();

      sub_1C7336744(v191, v192, v193, v194, v195, v196, v197, v198, v199);
    }

    else
    {
LABEL_119:
      __break(1u);
    }

    return;
  }

  v220 = 0;
  v221 = *(*(v38 + 3304) + 16);
  *(v38 + 3672) = v221;
  *(v38 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  v222 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v37 + 3696) = v222;
    *(v37 + 3688) = v220;
    if (v220 == v221)
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v39)
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v223 = *(v37 + 3160);
    v224 = *(v37 + 3136);
    v225 = *(v37 + 3120);
    *(v37 + 636) = *(*(v37 + 3128) + 80);
    OUTLINED_FUNCTION_23_40();
    *(v37 + 3704) = v226;
    v228 = *(v227 + 48);
    *v223 = v229;
    OUTLINED_FUNCTION_2_98();
    sub_1C7337590(v230, v223 + v228, v231);
    OUTLINED_FUNCTION_35();
    sub_1C7337590(v232, v233, v234);
    v235 = *(v225 + 32);
    *(v224 + v235) = 1;
    v236 = *(v225 + 28);
    *(v37 + 852) = v236;
    if (!*(v224 + v236))
    {
      sub_1C754F06C();
      v237 = OUTLINED_FUNCTION_155_2();
      sub_1C6F65BE8(v237, &qword_1EDD0CE30, 0x1E696AAB0);
      OUTLINED_FUNCTION_97_11();
      sub_1C75504FC();
      v238 = OUTLINED_FUNCTION_183_2();
      [v238 length];
      v239 = OUTLINED_FUNCTION_230_3();
      sub_1C6F65BE8(v239, &qword_1EC217FE0, 0x1E6978A98);
      v240 = sub_1C754F06C();
      v241 = sub_1C71C3FF8(v240);
      if (v241)
      {
        v313 = v241;
        v314 = *(v37 + 3112);
        v315 = objc_opt_self();
        *(v37 + 3712) = OUTLINED_FUNCTION_88_12(v315, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_, v238, v313);

        OUTLINED_FUNCTION_47_22((v314 + 24));
        OUTLINED_FUNCTION_15_3();
        v316 = swift_task_alloc();
        *(v37 + 3720) = v316;
        *v316 = v37;
        v316[1] = sub_1C7334C9C;
        goto LABEL_26;
      }

      v242 = sub_1C754FEEC();
      v243 = sub_1C755119C();
      if (OUTLINED_FUNCTION_66(v243))
      {
        v244 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_115_13(v244);
        OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v242, v245, "Part Of Week retrieval not supported by Spotlight in this build.");
        OUTLINED_FUNCTION_37();
      }

      *(v224 + v235) = 2;
    }

    *(v37 + 3080) = *(v37 + 3080) + *(v37 + 3688);
    v38 = 0;
    sub_1C754F2DC();
    v246 = *(v37 + 3160);
    OUTLINED_FUNCTION_3_90(*(v37 + 3136), *(v37 + 3144));
    sub_1C6FB5FC8(v246, &unk_1EC21AB18, &unk_1C7583F48);
    v247 = swift_isUniquelyReferenced_nonNull_native();
    v222 = *(v37 + 3696);
    if ((v247 & 1) == 0)
    {
      v252 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB3E94(v252, v253, v254, v222);
      v222 = v255;
    }

    v248 = *(v222 + 16);
    if (v248 >= *(v222 + 24) >> 1)
    {
      OUTLINED_FUNCTION_82_16();
      sub_1C6FB3E94(v256, v257, v258, v222);
      v222 = v259;
    }

    OUTLINED_FUNCTION_196_1();
    OUTLINED_FUNCTION_3_90(v251, v250 + v249 * v248);
    v220 = *(v37 + 3688) + 1;
    v221 = *(v37 + 3672);
  }

LABEL_83:
  v260 = 0;
  v261 = *(v37 + 3312);
  v262 = *(v261 + 16);
  v263 = v37;
  v264 = (v261 + 32);
  v334 = MEMORY[0x1E69E7CC0];
  v265 = (v263 + 769);
  while (v262 != v260)
  {
    if (v260 >= *(v261 + 16))
    {
      goto LABEL_117;
    }

    v38 = v335;
    v266 = *(v335 + 3104);
    v267 = v264[3];
    v269 = *v264;
    v268 = v264[1];
    v322[2] = v264[2];
    v322[3] = v267;
    *v322 = v269;
    v322[1] = v268;
    v271 = v264[2];
    v270 = v264[3];
    v273 = *v264;
    v272 = v264[1];
    *(v335 + 712) = v260;
    *(v335 + 720) = v273;
    *(v335 + 736) = v272;
    *(v335 + 752) = v271;
    *(v335 + 768) = v270;
    sub_1C7026698(v322, v335 + 1408);
    v336 = *(v335 + 720);
    v337 = *(v335 + 736);
    v338 = *(v335 + 752);
    v339 = *v265;
    OUTLINED_FUNCTION_119_11();
    if (v113)
    {
      v275 = v274 + 1;
    }

    else
    {
      v275 = v274;
    }

    *(v335 + 3080) = *(v335 + 3080) + v260;
    sub_1C70555F8(v335 + 712, v335 + 640, &unk_1EC21AB48, &unk_1C7583F90);
    OUTLINED_FUNCTION_171_2();
    if (v335)
    {
      OUTLINED_FUNCTION_177_2();
      OUTLINED_FUNCTION_125_6();
      v333 = *(v335 + 3104);
      *v320 = v336;
      v320[1] = v337;
      v320[2] = v338;
      *(v335 + 1264) = v275;
      *(v335 + 1272) = *(v311 + 7);
      *(v335 + 1265) = v339;
      sub_1C70266D0(v320);

      sub_1C6FB5FC8(v335 + 712, &unk_1EC21AB48, &unk_1C7583F90);
      sub_1C70DF138(v335 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v312 + 8))(v333);
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_202_2(v338);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = OUTLINED_FUNCTION_8_64();
      sub_1C6FB3DA8(v278);
      v334 = v279;
    }

    OUTLINED_FUNCTION_59_23();
    if (v39)
    {
      v280 = OUTLINED_FUNCTION_15_2(v276);
      sub_1C6FB3DA8(v280);
      v334 = v281;
    }

    sub_1C6FB5FC8(v335 + 712, &unk_1EC21AB48, &unk_1C7583F90);
    v334[1].n128_u64[0] = v266;
    OUTLINED_FUNCTION_128_6(v340, v337, v334, v336);
    *(v277 + 80) = v275;
    OUTLINED_FUNCTION_76_16(v277);
    v264 += 4;
    ++v260;
  }

LABEL_96:
  v282 = 0;
  v283 = *(v335 + 3320);
  v325 = v283;
  v327 = *(v283 + 16);
  v284 = (v283 + 64);
  v332 = MEMORY[0x1E69E7CC0];
  while (v327 != v282)
  {
    OUTLINED_FUNCTION_131_4();
    if (v39)
    {
      goto LABEL_118;
    }

    OUTLINED_FUNCTION_231_2(v285, v286, v287, v288, v289, v290, v291, v292, v319, v320, v321, v322, v323, v325, v327, v328, v329, v332, v334, v335);
    v295 = *(v284 - 3);
    v329 = *(v284 - 4);
    v296 = *(v284 - 2);
    LODWORD(v328) = *(v284 - 7);
    v297 = *v284;
    v298 = *(v284 - 8);
    if (*v284)
    {
      v136 = 1;
    }

    else
    {
      v136 = 2;
    }

    v299 = v294;
    *(v293 + 3080) = *(v293 + 3080) + v294;
    OUTLINED_FUNCTION_290();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_141_4();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_171_2();
    if (v38)
    {
      v135 = v335;
      OUTLINED_FUNCTION_67_19();
      OUTLINED_FUNCTION_53_29();
      OUTLINED_FUNCTION_141_4();
      swift_bridgeObjectRelease_n();

      goto LABEL_39;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v302 = OUTLINED_FUNCTION_8_64();
      sub_1C6FB3D78(v302, v303, v304, v305);
      v332 = v306;
    }

    OUTLINED_FUNCTION_59_23();
    if (v39)
    {
      v307 = OUTLINED_FUNCTION_15_2(v300);
      sub_1C6FB3D78(v307, v308, v309, v332);
      v332 = v310;
    }

    OUTLINED_FUNCTION_75_13(v332);
    *(v301 + 32) = v329;
    *(v301 + 40) = v295;
    *(v301 + 48) = v296;
    *(v301 + 56) = v298;
    *(v301 + 57) = v328;
    *(v301 + 58) = v136;
    *(v301 + 64) = v297;
    v284 += 5;
    v282 = v299 + 1;
  }

  v110 = v335;
  OUTLINED_FUNCTION_160_5();
  sub_1C754F2EC();
  OUTLINED_FUNCTION_56_24();
  v17 = *(v335 + 3408);
  v112 = *(v335 + 3352);
  if (!v38)
  {
    goto LABEL_115;
  }

  sub_1C70DF138(v335 + 16);
LABEL_64:
  OUTLINED_FUNCTION_25_39();

  OUTLINED_FUNCTION_6_0();
LABEL_65:
  OUTLINED_FUNCTION_73_18();

  v202(v201, v202, v203, v204, v205, v206, v207, v208, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7331AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();

  v11 = *(v10 + 2616);
  *(v10 + 2096) = *(v10 + 2600);
  v12 = *(v10 + 3104);
  *(v10 + 2112) = v11;
  *(v10 + 2121) = *(v10 + 2625);
  *(v10 + 2137) = 1;
  *(v10 + 2138) = *(v10 + 394);
  *(v10 + 2142) = *(v10 + 398);
  *(v10 + 2144) = 0;
  sub_1C70260EC(v10 + 2096);

  sub_1C6FB5FC8(v10 + 1280, &qword_1EC21AB38, &qword_1C7583F78);
  sub_1C70DF138(v10 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v12);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C7331C24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3560) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7331D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = (v14 + 2152);
  v207 = (v14 + 2264);
  v17 = (v14 + 2696);
  v18 = *(v14 + 3544);
  v19 = *(v14 + 2824);
  v20 = *(v14 + 2832);
  v21 = (v14 + 2744);
  *(v14 + 2840) = *(v14 + 2816);
  *(v14 + 2848) = v19;
  *(v14 + 2856) = v20;
  v22 = FreeformStoryFetching.Result.uuids.getter(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  v23 = *(v14 + 3560);
  v24 = v14 + 1394;
  v25 = v14 + 1352;
  while (1)
  {
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_191_2(v26, v27, *(v14 + 3520));
    sub_1C754F2DC();
    v28 = *(v14 + 3528);
    if (v23)
    {
      v52 = *(v14 + 3104);
      v53 = *(v14 + 2712);
      *v207 = *v17;
      *(v14 + 2280) = v53;
      v54 = OUTLINED_FUNCTION_26_41(v207, *(v14 + 2721));
      *(v14 + 2312) = v22;
      sub_1C70260EC(v54);

      sub_1C6FB5FC8(v14 + 1344, &qword_1EC21AB38, &qword_1C7583F78);
      sub_1C70DF138(v14 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v55 + 8))(v52);
      OUTLINED_FUNCTION_25_39();

      OUTLINED_FUNCTION_6_0();
      goto LABEL_43;
    }

    v29 = *(v14 + 2712);
    *v21 = *v17;
    *(v14 + 2760) = v29;
    *(v14 + 2769) = *(v14 + 2721);
    *(v14 + 234) = *(v14 + 150);
    *(v14 + 238) = *(v14 + 154);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v14 + 3528);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = OUTLINED_FUNCTION_92();
      sub_1C6FB2320(v48);
      v31 = v49;
    }

    OUTLINED_FUNCTION_117_7();
    if (v32)
    {
      OUTLINED_FUNCTION_90_9();
      sub_1C6FB2320(v50);
      v31 = v51;
    }

    sub_1C6FB5FC8(v14 + 1344, &qword_1EC21AB38, &qword_1C7583F78);
    *(v31 + 16) = v28;
    OUTLINED_FUNCTION_38_30(v31, *(v14 + 2769), *(v14 + 2760), *v21);
    v33 = *(v14 + 234);
    *(v34 + 78) = *(v14 + 238);
    *(v34 + 74) = v33;
    *(v34 + 80) = v22;
    v35 = *(v14 + 3520) + 1;
    *(v14 + 3536) = v15;
    *(v14 + 3528) = v31;
    *(v14 + 3520) = v35;
    v36 = 0x1FAD8E000uLL;
    if (v35 == *(v14 + 3512))
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v32)
    {
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v37 = OUTLINED_FUNCTION_61_19();
    *(v14 + 2200) = v38;
    *(v14 + 2168) = v39;
    *(v14 + 2184) = v40;
    *v16 = v37;
    v42 = *(v41 + 80);
    v44 = *(v41 + 48);
    v43 = *(v41 + 64);
    v45 = *(v41 + 32);
    *(v14 + 1344) = v46;
    *v25 = v45;
    *(v14 + 1368) = v44;
    *(v14 + 1384) = v43;
    *(v14 + 1400) = v42;
    sub_1C70260B4(v14 + 2152, v14 + 2208);
    v22 = *(v14 + 1400);
    v47 = *(v14 + 1368);
    *v17 = *v25;
    *(v14 + 2712) = v47;
    *(v14 + 2721) = *(v14 + 1377);
    *(v14 + 150) = *v24;
    *(v14 + 154) = *(v14 + 1398);
    if (!v22)
    {
      OUTLINED_FUNCTION_116_11();
      v89 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
      OUTLINED_FUNCTION_223_2(v89, v90, &qword_1EC21AB38, &qword_1C7583F78);
      sub_1C75504FC();
      OUTLINED_FUNCTION_49_3();
      v91 = sub_1C7073450();
      [v91 0x1FAD8E6F8];
      v92 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      OUTLINED_FUNCTION_75();
      sub_1C71C8E10();
      v93 = objc_opt_self();
      v94 = OUTLINED_FUNCTION_52_26(v93, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
      OUTLINED_FUNCTION_226_2(v94);

      OUTLINED_FUNCTION_15_63((v14 + 2176));
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v14 + 3552) = v95;
      *v95 = v96;
      OUTLINED_FUNCTION_14_55(v95);
LABEL_34:
      OUTLINED_FUNCTION_34_32();
      goto LABEL_35;
    }

    sub_1C70555F8(v14 + 1344, v14 + 1600, &qword_1EC21AB38, &qword_1C7583F78);
    v23 = 0;
  }

  OUTLINED_FUNCTION_195_3();
  v21 = MEMORY[0x1E69E7CC0];
  v24 = 0x6E6F73616573;
  v16 = &qword_1EC21AB20;
  v25 = 1;
  *(v14 + 3568) = *(v57 + 16);
  v22 = &qword_1C7583F58;
  v36 = v21;
  while (1)
  {
    *(v14 + 3592) = v15;
    OUTLINED_FUNCTION_147_5(v56);
    if (v58)
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v32)
    {
      goto LABEL_85;
    }

    v60 = *(v14 + 3240);
    OUTLINED_FUNCTION_16_55(v59);
    v17 = *(v61 + 48);
    *v60 = v62;
    OUTLINED_FUNCTION_18_48();
    sub_1C7337590(v63, v17 + v60, v64);
    sub_1C7337590(v17 + v60, v36, v28);
    switch(*(v36 + 57))
    {
      case 1:
        OUTLINED_FUNCTION_33_33();
        goto LABEL_22;
      case 2:
        OUTLINED_FUNCTION_91_13();
        goto LABEL_22;
      case 3:
        OUTLINED_FUNCTION_32_32();
        goto LABEL_22;
      case 4:

        goto LABEL_23;
      case 5:
        OUTLINED_FUNCTION_41_36();
        goto LABEL_22;
      case 6:
        OUTLINED_FUNCTION_178_2();
        goto LABEL_22;
      default:
LABEL_22:
        sub_1C7551DBC();
        OUTLINED_FUNCTION_364();
        if (v28)
        {
LABEL_23:
          OUTLINED_FUNCTION_40_37();
          if (v58)
          {
            v67 = 2;
          }

          else
          {
            v67 = 1;
          }

          *(v65 + v66) = v67;
        }

        else
        {
          v68 = *(v14 + 3216);
          v69 = *(v14 + 3200);
          *(v68 + *(v69 + 44)) = 1;
          v70 = *(v69 + 48);
          *(v14 + 556) = v70;
          if (!*(v68 + v70))
          {
            v115 = OUTLINED_FUNCTION_27_41();
            v117 = v116(v115);
            OUTLINED_FUNCTION_244_3(v117, v118, &qword_1EC218C50, &qword_1C75606A0);
            v119 = objc_allocWithZone(MEMORY[0x1E6978A98]);
            v120 = OUTLINED_FUNCTION_104_9();
            sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
            OUTLINED_FUNCTION_51();
            sub_1C75504FC();
            OUTLINED_FUNCTION_49_3();
            [sub_1C7073450() length];
            v121 = objc_opt_self();
            v122 = OUTLINED_FUNCTION_63_19(v121, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
            OUTLINED_FUNCTION_221_2(v122);

            OUTLINED_FUNCTION_15_63(&v21[1].n128_u64[1]);
            OUTLINED_FUNCTION_15_3();
            swift_task_alloc();
            OUTLINED_FUNCTION_48();
            *(v14 + 3624) = v123;
            *v123 = v124;
            OUTLINED_FUNCTION_6_81(v123);
            goto LABEL_34;
          }
        }

        v71 = OUTLINED_FUNCTION_31_36();
        OUTLINED_FUNCTION_191_2(v71, v72, v73);
        sub_1C754F2DC();
        v28 = *(v14 + 3240);
        OUTLINED_FUNCTION_5_74(*(v14 + 3216), *(v14 + 3224));
        v74 = OUTLINED_FUNCTION_101_5();
        sub_1C6FB5FC8(v74, v75, &qword_1C7583F58);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v14 + 3584);
        if ((v76 & 1) == 0)
        {
          v79 = OUTLINED_FUNCTION_92();
          sub_1C6FB3F04(v79, v80, v81, v82);
          v36 = v83;
        }

        OUTLINED_FUNCTION_117_7();
        if (v32)
        {
          OUTLINED_FUNCTION_90_9();
          sub_1C6FB3F04(v84, v85, v86, v87);
          v36 = v88;
        }

        OUTLINED_FUNCTION_51_21();
        OUTLINED_FUNCTION_200_2();
        OUTLINED_FUNCTION_5_74(v77, v78);
        OUTLINED_FUNCTION_144_7();
        break;
    }
  }

  OUTLINED_FUNCTION_110_8();
  *(v14 + 3648) = v21;
  *(v14 + 3640) = 0;
  if (v100)
  {
    if (!*(v99 + 16))
    {
      goto LABEL_90;
    }

    OUTLINED_FUNCTION_13_65(v99);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v14 + 3656) = v101;
    *v101 = v102;
    OUTLINED_FUNCTION_1_107(v101);
    OUTLINED_FUNCTION_209_4();

    sub_1C7336744(v103, v104, v105, v106, v107, v108, v109, v110, v111);
    return;
  }

  OUTLINED_FUNCTION_62_21();
  *(v14 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  v25 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    *(v14 + 3696) = v25;
    *(v14 + 3688) = v125;
    if (v125 == v126)
    {
      v157 = 0;
      v158 = *(v14 + 3312);
      v204 = v158[1].n128_u64[0];
      v159 = v158 + 2;
      v208 = MEMORY[0x1E69E7CC0];
      while (v204 != v157)
      {
        if (v157 >= v158[1].n128_u64[0])
        {
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_74_13();
        v160 = OUTLINED_FUNCTION_158_4((v14 + 1536), v159[2], v159[3], v159[1], *v159);
        *(v14 + 712) = v157;
        OUTLINED_FUNCTION_134_9(v161, v160, v162, v163, v164);
        v210 = *(v14 + 720);
        v211 = *(v14 + 736);
        v212 = *(v14 + 752);
        OUTLINED_FUNCTION_119_11();
        if (v58)
        {
          v166 = v165 + 1;
        }

        else
        {
          v166 = v165;
        }

        v167 = OUTLINED_FUNCTION_21_49(v157);
        sub_1C70555F8(v167, v168, &unk_1EC21AB48, &unk_1C7583F90);
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_202_2(v212);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = OUTLINED_FUNCTION_8_64();
          sub_1C6FB3DA8(v171);
          v208 = v172;
        }

        OUTLINED_FUNCTION_59_23();
        if (v32)
        {
          v173 = OUTLINED_FUNCTION_15_2(v169);
          sub_1C6FB3DA8(v173);
          v208 = v174;
        }

        sub_1C6FB5FC8(v14 + 712, &unk_1EC21AB48, &unk_1C7583F90);
        v208[1].n128_u64[0] = v36;
        OUTLINED_FUNCTION_128_6(v213, v211, v208, v210);
        *(v170 + 80) = v166;
        OUTLINED_FUNCTION_76_16(v170);
        v159 += 4;
        ++v157;
      }

      OUTLINED_FUNCTION_94_15();
      v203 = v176;
      v178 = v177 + 64;
      v209 = MEMORY[0x1E69E7CC0];
      while (v203 != v175)
      {
        OUTLINED_FUNCTION_131_4();
        if (v32)
        {
          goto LABEL_89;
        }

        OUTLINED_FUNCTION_45_29();
        v179 = *(v178 - 24);
        v206 = *(v178 - 32);
        v205 = *(v178 - 7);
        OUTLINED_FUNCTION_98_13();
        if (v58)
        {
          v182 = v180 + 1;
        }

        else
        {
          v182 = v180;
        }

        v183 = v181;
        OUTLINED_FUNCTION_46_28();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = OUTLINED_FUNCTION_8_64();
          sub_1C6FB3D78(v187, v188, v189, v190);
          v209 = v191;
        }

        OUTLINED_FUNCTION_59_23();
        if (v32)
        {
          v192 = OUTLINED_FUNCTION_15_2(v184);
          sub_1C6FB3D78(v192, v193, v194, v209);
          v209 = v195;
        }

        OUTLINED_FUNCTION_75_13(v209);
        *(v185 + 32) = v206;
        *(v185 + 40) = v179;
        OUTLINED_FUNCTION_152_5(v185);
        *(v186 + 57) = v205;
        *(v186 + 58) = v182;
        *(v186 + 64) = v158;
        v178 += 40;
        v175 = v183 + 1;
      }

      OUTLINED_FUNCTION_160_5();
      sub_1C754F2EC();
      v17 = *(v14 + 3648);
      v36 = *(v14 + 3584);
      v21 = *(v14 + 3528);
      v24 = *(v14 + 3504);
      v22 = *(v14 + 3464);
      v16 = *(v14 + 3408);
      v28 = *(v14 + 3352);
LABEL_86:
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_204_4();
      v202 = *(v14 + 3088);
      *v202 = v28;
      v202[1] = v16;
      v202[2] = v22;
      v202[3] = v24;
      v202[4] = v21;
      v202[5] = v36;
      v202[6] = v17;
      v202[7] = v25;
      OUTLINED_FUNCTION_225_1(v202);

      OUTLINED_FUNCTION_25();
LABEL_43:
      OUTLINED_FUNCTION_209_4();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_71_14();
    if (!v32)
    {
      v128 = *(v14 + 3160);
      v129 = *(v14 + 3136);
      v130 = *(v14 + 3120);
      OUTLINED_FUNCTION_9_72(v127);
      v132 = *(v131 + 48);
      *v128 = v133;
      OUTLINED_FUNCTION_2_98();
      sub_1C7337590(v134, v128 + v132, v135);
      sub_1C7337590(v128 + v132, v129, v36);
      v136 = *(v130 + 32);
      *(v129 + v136) = 1;
      v137 = *(v130 + 28);
      *(v14 + 852) = v137;
      if (!*(v129 + v137))
      {
        sub_1C754F06C();
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        sub_1C75504FC();
        OUTLINED_FUNCTION_23_14();
        v138 = sub_1C7073450();
        [v138 length];
        sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
        v139 = sub_1C754F06C();
        if (sub_1C71C3FF8(v139))
        {
          v196 = *(v14 + 3112);
          objc_opt_self();
          OUTLINED_FUNCTION_159_6();
          OUTLINED_FUNCTION_210_3([v197 v198]);

          OUTLINED_FUNCTION_47_22((v196 + 24));
          OUTLINED_FUNCTION_15_3();
          v199 = swift_task_alloc();
          v200 = OUTLINED_FUNCTION_72_17(v199);
          *v200 = v201;
          OUTLINED_FUNCTION_0_141(v200);
LABEL_35:
          OUTLINED_FUNCTION_209_4();

          __asm { BRAA            X6, X16 }
        }

        v140 = sub_1C754FEEC();
        v141 = sub_1C755119C();
        if (OUTLINED_FUNCTION_128(v141))
        {
          v142 = OUTLINED_FUNCTION_127();
          *v142 = 0;
          _os_log_impl(&dword_1C6F5C000, v140, v141, "Part Of Week retrieval not supported by Spotlight in this build.", v142, 2u);
          OUTLINED_FUNCTION_109();
        }

        *(v129 + v136) = 2;
      }

      OUTLINED_FUNCTION_10_67();
      sub_1C754F2DC();
      v143 = *(v14 + 3160);
      OUTLINED_FUNCTION_3_90(*(v14 + 3136), *(v14 + 3144));
      sub_1C6FB5FC8(v143, &unk_1EC21AB18, &unk_1C7583F48);
      v144 = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v14 + 3696);
      if ((v144 & 1) == 0)
      {
        v149 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB3E94(v149, v150, v151, v25);
        v25 = v152;
      }

      v145 = *(v25 + 16);
      v36 = v145 + 1;
      if (v145 >= *(v25 + 24) >> 1)
      {
        OUTLINED_FUNCTION_82_16();
        sub_1C6FB3E94(v153, v154, v155, v25);
        v25 = v156;
      }

      v146 = OUTLINED_FUNCTION_35_24();
      *(v25 + 16) = v36;
      OUTLINED_FUNCTION_3_90(v146, v25 + v147 + v148 * v145);
      OUTLINED_FUNCTION_87_17();
      continue;
    }

    break;
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

uint64_t sub_1C7332E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();

  v13 = *(v12 + 3104);
  v14 = *(v12 + 2712);
  *(v12 + 2264) = *(v12 + 2696);
  *(v12 + 2280) = v14;
  *(v12 + 2289) = *(v12 + 2721);
  *(v12 + 2305) = 1;
  *(v12 + 2306) = *(v12 + 150);
  *(v12 + 2310) = *(v12 + 154);
  *(v12 + 2312) = 0;
  sub_1C70260EC(v12 + 2264);

  sub_1C6FB5FC8(v12 + 1344, &qword_1EC21AB38, &qword_1C7583F78);
  sub_1C70DF138(v12 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v13);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C7332F78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3632) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7333DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();

  OUTLINED_FUNCTION_4_80();
  sub_1C6FB5FC8(v13, &qword_1EC21AB20, &qword_1C7583F58);

  sub_1C70DF138(v12 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v14);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C7333F04()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 3664) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7334B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 3104);
  *(v10 + 1856) = *(v10 + 1920);
  *(v10 + 1872) = *(v10 + 1936);
  *(v10 + 1888) = *(v10 + 1952);
  *(v10 + 1897) = *(v10 + 1961);
  sub_1C6FB5FC8(v10 + 1856, &qword_1EC21AB40, &qword_1C7583F88);
  sub_1C70DF138(v10 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v12 + 8))(v11);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C7334C9C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3728) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73356B4()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 3160);
  v5 = *(v0 + 3104);
  OUTLINED_FUNCTION_12_61(*(v0 + 3136));
  sub_1C6FB5FC8(v1, &unk_1EC21AB18, &unk_1C7583F48);

  sub_1C70DF138(v0 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v5);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C7335844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeExtendedToken(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = *(a1 + 40);
  v12 = *(a2 + 40);
  v13 = [objc_opt_self() enableAssetScopingTokenPromotion];
  result = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v29 = MEMORY[0x1E69E7CC0];
    if (!*(v12 + 16))
    {
      v27 = v7;
      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = *(v11 + 16);
      while (1)
      {
        if (v17 == v15)
        {
          sub_1C71BA224();
          v25 = v24;

          sub_1C6FD2404(v25);
          return v29;
        }

        if (v15 >= *(v11 + 16))
        {
          break;
        }

        v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v19 = *(v5 + 72);
        sub_1C7337590(v11 + v18 + v19 * v15, v10, type metadata accessor for TimeExtendedToken);
        switch(v10[57])
        {
          case 2:

            goto LABEL_10;
          default:
            v20 = sub_1C7551DBC();

            if (v20)
            {
LABEL_10:
              sub_1C73375F0(v10, v27, type metadata accessor for TimeExtendedToken);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v28 = v16;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C716DCA8(0, *(v16 + 16) + 1, 1);
                v16 = v28;
              }

              v23 = *(v16 + 16);
              v22 = *(v16 + 24);
              if (v23 >= v22 >> 1)
              {
                sub_1C716DCA8(v22 > 1, v23 + 1, 1);
                v16 = v28;
              }

              ++v15;
              *(v16 + 16) = v23 + 1;
              result = sub_1C73375F0(v27, v16 + v18 + v23 * v19, type metadata accessor for TimeExtendedToken);
            }

            else
            {
              result = sub_1C7337650(v10, type metadata accessor for TimeExtendedToken);
              ++v15;
            }

            break;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1C7335B90()
{
  result = qword_1EDD06BD0;
  if (!qword_1EDD06BD0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214D18, &qword_1C7583EC0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &qword_1EDD06BD0);
  }

  return result;
}

void sub_1C7335BF4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v139 = a2;
  v130 = type metadata accessor for PartOfWeekExtendedToken(0);
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v4 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for TimeExtendedToken(0);
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v134 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[3];
  v140 = a1[2];
  v143 = v12;
  v13 = a1[5];
  v131 = a1[4];
  v132 = v13;
  v14 = a1[7];
  v142 = a1[6];
  v136 = v14;
  v137 = a1[8];
  v15 = *(v10 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v141 = v4;
  if (v15)
  {
    v149 = MEMORY[0x1E69E7CC0];
    sub_1C716D97C();
    v16 = v149;
    v17 = v10 + 87;
    do
    {
      memcpy(__dst, (v17 - 55), 0x41uLL);
      v18 = *(v17 - 39);
      v147 = *(v17 - 55);
      *v148 = v18;
      *&v148[16] = *(v17 - 23);
      *&v148[30] = *(v17 - 9);
      *v146 = *v17;
      *&v146[8] = *(v17 + 8);
      sub_1C7025F3C(__dst, v144);
      v149 = v16;
      v19 = *(v16 + 16);
      if (v19 >= *(v16 + 24) >> 1)
      {
        sub_1C716D97C();
        v16 = v149;
      }

      *(v16 + 16) = v19 + 1;
      v20 = v16 + 72 * v19;
      v22 = *v148;
      v21 = *&v148[16];
      v23 = v147;
      *(v20 + 78) = *&v148[30];
      *(v20 + 48) = v22;
      *(v20 + 64) = v21;
      *(v20 + 32) = v23;
      *(v20 + 86) = 2;
      v24 = *v146;
      *(v20 + 95) = *&v146[8];
      *(v20 + 87) = v24;
      v17 += 72;
      --v15;
    }

    while (v15);
    v4 = v141;
  }

  v25 = *(v11 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v149 = MEMORY[0x1E69E7CC0];
    sub_1C716D940();
    v26 = v149;
    v27 = (v11 + 83);
    do
    {
      memcpy(__dst, v27 - 51, sizeof(__dst));
      v28 = *(v27 - 35);
      v147 = *(v27 - 51);
      *v148 = v28;
      *&v148[16] = *(v27 - 19);
      *&v148[32] = *(v27 - 3);
      *v146 = *v27;
      *&v146[7] = *(v27 + 7);
      sub_1C7025FF8(__dst, v144);
      v149 = v26;
      v29 = *(v26 + 16);
      if (v29 >= *(v26 + 24) >> 1)
      {
        sub_1C716D940();
        v26 = v149;
      }

      *(v26 + 16) = v29 + 1;
      v30 = v26 + 72 * v29;
      v32 = *v148;
      v31 = *&v148[16];
      v33 = v147;
      *(v30 + 80) = *&v148[32];
      *(v30 + 48) = v32;
      *(v30 + 64) = v31;
      *(v30 + 32) = v33;
      *(v30 + 82) = 2;
      v34 = *v146;
      *(v30 + 90) = *&v146[7];
      *(v30 + 83) = v34;
      v27 += 9;
      --v25;
    }

    while (v25);
    v4 = v141;
  }

  v35 = v140;
  v36 = *(v140 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v149 = MEMORY[0x1E69E7CC0];
    sub_1C716DD2C();
    v37 = v149;
    v38 = (v35 + 74);
    do
    {
      v39 = *(v38 - 42);
      v40 = *(v38 - 26);
      v41 = *(v38 - 10);
      *&__dst[48] = *(v38 + 6);
      *&__dst[16] = v40;
      *&__dst[32] = v41;
      *__dst = v39;
      v42 = *(v38 - 26);
      v147 = *(v38 - 42);
      *v148 = v42;
      *&v148[9] = *(v38 - 17);
      v43 = *v38;
      *&v146[6] = *(v38 + 6);
      *v146 = v43;
      sub_1C70260B4(__dst, v144);
      v149 = v37;
      v44 = *(v37 + 16);
      if (v44 >= *(v37 + 24) >> 1)
      {
        sub_1C716DD2C();
        v37 = v149;
      }

      *(v37 + 16) = v44 + 1;
      v45 = v37 + 56 * v44;
      v46 = v147;
      v47 = *v148;
      *(v45 + 57) = *&v148[9];
      *(v45 + 32) = v46;
      *(v45 + 48) = v47;
      *(v45 + 73) = 2;
      v48 = *v146;
      *(v45 + 80) = *&v146[6];
      *(v45 + 74) = v48;
      v38 += 7;
      --v36;
    }

    while (v36);
    v4 = v141;
  }

  v135 = v37;
  v49 = v143;
  v50 = *(v143 + 16);
  v51 = MEMORY[0x1E69E7CC0];
  v138 = v16;
  v140 = v26;
  if (v50)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716DCF0();
    v51 = *__dst;
    v52 = (v49 + 64);
    do
    {
      v53 = *(v52 - 3);
      v143 = *(v52 - 4);
      v54 = *(v52 - 2);
      v55 = *(v52 - 8);
      v56 = *v52;
      *__dst = v51;
      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      v59 = v51;
      sub_1C75504FC();
      sub_1C75504FC();
      if (v58 >= v57 >> 1)
      {
        sub_1C716DCF0();
        v59 = *__dst;
      }

      v52 += 5;
      *(v59 + 16) = v58 + 1;
      v60 = v59 + 40 * v58;
      *(v60 + 32) = v143;
      *(v60 + 40) = v53;
      *(v60 + 48) = v54;
      *(v60 + 56) = v55;
      *(v60 + 57) = 2;
      *(v60 + 64) = v56;
      --v50;
      v51 = v59;
    }

    while (v50);
    v4 = v141;
    v26 = v140;
  }

  v133 = v51;
  v61 = v131;
  v62 = *(v131 + 16);
  v63 = MEMORY[0x1E69E7CC0];
  v64 = v134;
  if (v62)
  {
    v149 = MEMORY[0x1E69E7CC0];
    sub_1C716DD2C();
    v63 = v149;
    v65 = (v61 + 74);
    do
    {
      v66 = *(v65 - 42);
      v67 = *(v65 - 26);
      v68 = *(v65 - 10);
      *&__dst[48] = *(v65 + 6);
      *&__dst[16] = v67;
      *&__dst[32] = v68;
      *__dst = v66;
      v69 = *(v65 - 26);
      v147 = *(v65 - 42);
      *v148 = v69;
      *&v148[9] = *(v65 - 17);
      v70 = *v65;
      *&v146[6] = *(v65 + 6);
      *v146 = v70;
      sub_1C70260B4(__dst, v144);
      v149 = v63;
      v71 = *(v63 + 16);
      if (v71 >= *(v63 + 24) >> 1)
      {
        sub_1C716DD2C();
        v63 = v149;
      }

      *(v63 + 16) = v71 + 1;
      v72 = v63 + 56 * v71;
      v73 = v147;
      v74 = *v148;
      *(v72 + 57) = *&v148[9];
      *(v72 + 32) = v73;
      *(v72 + 48) = v74;
      *(v72 + 73) = 2;
      v75 = *v146;
      *(v72 + 80) = *&v146[6];
      *(v72 + 74) = v75;
      v65 += 7;
      --v62;
    }

    while (v62);
    v4 = v141;
  }

  v131 = v63;
  v76 = v132;
  v77 = *(v132 + 16);
  v78 = MEMORY[0x1E69E7CC0];
  if (v77)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716DCA8(0, v77, 0);
    v78 = *__dst;
    v79 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v80 = v76 + v79;
    v81 = *(v127 + 72);
    v82 = v129;
    do
    {
      sub_1C7337590(v80, v64, type metadata accessor for TimeExtendedToken);
      *(v64 + *(v82 + 44)) = 2;
      *__dst = v78;
      v84 = *(v78 + 2);
      v83 = *(v78 + 3);
      if (v84 >= v83 >> 1)
      {
        sub_1C716DCA8(v83 > 1, v84 + 1, 1);
        v82 = v129;
        v78 = *__dst;
      }

      *(v78 + 2) = v84 + 1;
      sub_1C73375F0(v64, &v78[v79 + v84 * v81], type metadata accessor for TimeExtendedToken);
      v80 += v81;
      --v77;
    }

    while (v77);
    v4 = v141;
  }

  v134 = v78;
  v85 = v142;
  v86 = *(v142 + 16);
  v87 = MEMORY[0x1E69E7CC0];
  if (v86)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716DC6C(0, v86, 0, v5, v6, v7, v8);
    v87 = *__dst;
    v88 = (v85 + 72);
    do
    {
      v89 = *(v88 - 4);
      v143 = *(v88 - 5);
      v90 = *(v88 - 3);
      LODWORD(v142) = *(v88 - 16);
      v91 = *(v88 - 1);
      v92 = *v88;
      *__dst = v87;
      v93 = *(v87 + 16);
      v94 = *(v87 + 24);
      v95 = v87;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      if (v93 >= v94 >> 1)
      {
        sub_1C716DC6C(v94 > 1, v93 + 1, 1, v96, v97, v98, v99);
        v95 = *__dst;
      }

      v88 += 7;
      *(v95 + 16) = v93 + 1;
      v100 = v95 + 56 * v93;
      *(v100 + 32) = v143;
      *(v100 + 40) = v89;
      *(v100 + 48) = v90;
      *(v100 + 56) = v142;
      *(v100 + 64) = v91;
      *(v100 + 72) = v92;
      *(v100 + 80) = 2;
      --v86;
      v87 = v95;
    }

    while (v86);
    v4 = v141;
    v26 = v140;
  }

  v143 = v87;
  v101 = v136;
  v102 = *(v136 + 16);
  v103 = MEMORY[0x1E69E7CC0];
  if (v102)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716DC24();
    v103 = *__dst;
    v104 = (*(v128 + 80) + 32) & ~*(v128 + 80);
    v105 = v101 + v104;
    v106 = *(v128 + 72);
    v107 = v130;
    do
    {
      sub_1C7337590(v105, v4, type metadata accessor for PartOfWeekExtendedToken);
      v4[*(v107 + 32)] = 2;
      *__dst = v103;
      v108 = *(v103 + 16);
      if (v108 >= *(v103 + 24) >> 1)
      {
        sub_1C716DC24();
        v107 = v130;
        v103 = *__dst;
      }

      *(v103 + 16) = v108 + 1;
      sub_1C73375F0(v4, v103 + v104 + v108 * v106, type metadata accessor for PartOfWeekExtendedToken);
      v105 += v106;
      --v102;
    }

    while (v102);
    v26 = v140;
  }

  v109 = v137;
  v110 = *(v137 + 16);
  v111 = MEMORY[0x1E69E7CC0];
  if (v110)
  {
    v149 = MEMORY[0x1E69E7CC0];
    sub_1C716DBE8();
    v112 = v149;
    v113 = (v109 + 81);
    do
    {
      v114 = *(v113 - 49);
      v115 = *(v113 - 33);
      v116 = *(v113 - 1);
      *&__dst[32] = *(v113 - 17);
      *&__dst[48] = v116;
      *__dst = v114;
      *&__dst[16] = v115;
      v117 = *(v113 - 33);
      v147 = *(v113 - 49);
      *v148 = v117;
      *&v148[16] = *(v113 - 17);
      v118 = *v113;
      *&v146[7] = *(v113 + 7);
      *v146 = v118;
      sub_1C7026698(__dst, v144);
      v149 = v112;
      v119 = *(v112 + 16);
      if (v119 >= *(v112 + 24) >> 1)
      {
        sub_1C716DBE8();
        v112 = v149;
      }

      *(v112 + 16) = v119 + 1;
      v120 = v112 + (v119 << 6);
      v121 = *&v148[16];
      v122 = v147;
      *(v120 + 48) = *v148;
      *(v120 + 64) = v121;
      *(v120 + 32) = v122;
      *(v120 + 80) = 2;
      v123 = *v146;
      *(v120 + 88) = *&v146[7];
      *(v120 + 81) = v123;
      v113 += 8;
      --v110;
    }

    while (v110);
    v26 = v140;
  }

  else
  {
    v112 = MEMORY[0x1E69E7CC0];
  }

  v124 = v139;
  *v139 = v138;
  v124[1] = v26;
  v125 = v133;
  v124[2] = v135;
  v124[3] = v125;
  v126 = v134;
  v124[4] = v131;
  v124[5] = v126;
  v124[6] = v143;
  v124[7] = v103;
  v124[8] = v112;
  v124[9] = v111;
}

uint64_t sub_1C7336744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 136) = a9;
  *(v9 + 120) = a7;
  *(v9 + 128) = a8;
  *(v9 + 104) = a5;
  *(v9 + 112) = a6;
  *(v9 + 88) = a2;
  *(v9 + 96) = a4;
  *(v9 + 80) = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8, &unk_1C756C900);
  *(v9 + 144) = v11;
  *(v9 + 152) = *(v11 - 8);
  *(v9 + 160) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0, &qword_1C7583FA0);
  *(v9 + 168) = v12;
  *(v9 + 176) = *(v12 - 8);
  *(v9 + 184) = swift_task_alloc();
  v13 = sub_1C754F65C();
  *(v9 + 192) = v13;
  *(v9 + 200) = *(v13 - 8);
  v14 = swift_task_alloc();
  v15 = *a3;
  *(v9 + 208) = v14;
  *(v9 + 216) = v15;
  *(v9 + 224) = *(a3 + 1);
  *(v9 + 41) = *(a3 + 24);
  v16 = a3[5];
  *(v9 + 240) = a3[4];
  *(v9 + 248) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1C7336904, 0, 0);
}

uint64_t sub_1C7336904()
{
  v2 = v1[30];
  if (v1[31])
  {
    v0 = v1[28];
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v3 = 1;
    goto LABEL_3;
  }

  v37 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v1[25];
    sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
    v7 = *(v6 + 16);
    v6 += 16;
    v36 = v7;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v35 = *(v6 + 56);
    v0 = (v6 - 8);
    sub_1C75504FC();
    sub_1C75504FC();
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v36(v1[26], v8, v1[24]);
      sub_1C754F62C();
      v10 = sub_1C7073450();
      v11 = [v10 length];
      v12 = sub_1C754F62C();
      v13 = sub_1C71C3FEC(v12);
      if (v13)
      {
        v14 = v13;
        v15 = [objc_opt_self() updateQueryString:v10 withSelectedSuggestion:v13 inRange:0 additionalAttributes:{v11, 0}];

        v16 = OUTLINED_FUNCTION_61_0();
        v18 = v17(v16);
        MEMORY[0x1CCA5D040](v18);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        v9 = v37;
      }

      else
      {
        v19 = OUTLINED_FUNCTION_61_0();
        v20(v19);
      }

      v8 += v35;
      --v5;
    }

    while (v5);
  }

  else
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C6FB6304() <= 0)
  {

    v31 = sub_1C754FEEC();
    v32 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v32))
    {
      v3 = 2;
      v0 = OUTLINED_FUNCTION_127();
      *v0 = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v33, v34, "Part Of Day retrieval not supported by Spotlight in this build.");
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v3 = 2;
    }

LABEL_3:
    OUTLINED_FUNCTION_164_4();
    if (v0)
    {

      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      OUTLINED_FUNCTION_132_7();
      *(v21 + 48) = v3;

      OUTLINED_FUNCTION_25();
    }

    return v4();
  }

  v24 = v1[13];
  v23 = v1[14];
  v25 = v1[12];
  v26 = v25[6];
  v27 = v25[7];
  __swift_project_boxed_opaque_existential_1(v25 + 3, v26);
  (*(v27 + 24))(v9, v24, v23, v26, v27);

  v1[9] = MEMORY[0x1E69E7CD0];
  sub_1C7550DBC();
  v1[32] = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v1[33] = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_123_8(v28);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6D9C8](v30);
}

uint64_t sub_1C7336D60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7336E48()
{
  OUTLINED_FUNCTION_31();
  v9 = *(v1 + 16);
  v10 = *(v1 + 40);
  if (v10 == 255)
  {
    v26 = *(v1 + 176);
    v25 = *(v1 + 184);
    v27 = *(v1 + 168);
    (*(*(v1 + 152) + 8))(*(v1 + 160), *(v1 + 144));
    sub_1C71CD85C(*(v1 + 72));
    (*(v26 + 8))(v25, v27);

    OUTLINED_FUNCTION_164_4();
    if (v27)
    {

      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      OUTLINED_FUNCTION_132_7();
      *(v35 + 48) = 1;

      OUTLINED_FUNCTION_25();
    }

    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  if ((v10 & 1) == 0)
  {
    *(v1 + 48) = v9;
    *(v1 + 56) = v11;
    *(v1 + 64) = v12;
    v28 = FreeformStoryFetching.Result.uuids.getter(v2, v3, v4, v5, v6, v7, v8);
    sub_1C73978C4(v28);
    v22 = OUTLINED_FUNCTION_117_0();
    v24 = v12;
    goto LABEL_8;
  }

  v39 = *(v1 + 32);
  v13 = v9;
  v14 = OUTLINED_FUNCTION_51();
  v15 = v0;
  v16 = v11;
  v17 = sub_1C754FEEC();
  v18 = sub_1C755119C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138740227;
    *(v19 + 4) = v15;
    *v20 = v9;
    *(v19 + 12) = 2112;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v21;
    v20[1] = v21;
    _os_log_impl(&dword_1C6F5C000, v17, v18, "Part Of Day retrieval for query %{sensitive}@ failed with error: %@.", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

    v22 = OUTLINED_FUNCTION_117_0();
    v24 = v39;
LABEL_8:
    sub_1C710A128(v22, v23, v24, v10);
    goto LABEL_10;
  }

  v29 = OUTLINED_FUNCTION_117_0();
  sub_1C710A128(v29, v30, v39, v10);

LABEL_10:
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 264) = v31;
  *v31 = v32;
  OUTLINED_FUNCTION_123_8(v31);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6D9C8](v33);
}

uint64_t FinalTokenGenerator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t FinalTokenGenerator.__deallocating_deinit()
{
  FinalTokenGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C733721C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t type metadata accessor for FinalTokenGenerator(uint64_t a1)
{
  result = qword_1EDD0A600;
  if (!qword_1EDD0A600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7337300(uint64_t a1)
{
  result = sub_1C754FF1C();
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

void sub_1C73373E8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = sub_1C7337458(*(a1 + 16));
    if (v5 >= v3)
    {
      __break(1u);
    }

    else
    {
      sub_1C6FB5E28(a1 + 40 * v5 + 32, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

unint64_t sub_1C7337458(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1CCA5F900](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1CCA5F900](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C73374E4(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x1CCA5F900](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_1C73374E4(a1, a2);
  }
}

uint64_t sub_1C7337590(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C73375F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C7337650(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 OUTLINED_FUNCTION_43_32@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 25);
  *(v1 + 25) = result;
  *(v2 + 234) = *(v2 + 150);
  *(v2 + 238) = *(v2 + 154);
  return result;
}

__n128 OUTLINED_FUNCTION_50_25@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  result = *(v5 + 25);
  *(a1 + 25) = result;
  *(v3 + 150) = *v4;
  *(v3 + 154) = *(v4 + 4);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_29()
{

  return swift_bridgeObjectRelease_n();
}

void OUTLINED_FUNCTION_60_20(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(a1 + 80) = v4;
  *(a1 + 48) = a3;
  *(a1 + 64) = a2;
  *(a1 + 32) = a4;
  *(a1 + 82) = 1;
  v6 = *(v5 + 149);
  *(a1 + 83) = *(v5 + 145);
  *(a1 + 87) = v6;
}

id OUTLINED_FUNCTION_63_19(id a1, SEL a2)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_68_20(uint64_t a1@<X8>)
{
  *(a1 + 57) = v1;
  *(a1 + 58) = v3;
  *(a1 + 64) = v2;
}

void OUTLINED_FUNCTION_69_20(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 78) = *(v1 + 2);
  *(a1 + 74) = v3;
  *(a1 + 80) = v2;
}

__n128 OUTLINED_FUNCTION_70_17()
{
  v3 = *(v0 + 736);
  *(v2 - 192) = *(v0 + 720);
  *(v2 - 176) = v3;
  result = *(v0 + 752);
  *(v2 - 160) = result;
  *(v2 - 136) = *v1;
  return result;
}

id OUTLINED_FUNCTION_77_14(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_78_14(uint64_t a1, __n128 a2, __n128 a3)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = *(v6 - 160);
  *(v3 + 1264) = v5;
  v8 = *(v6 - 136);
  *(v3 + 1272) = *(v4 + 7);
  *(v3 + 1265) = v8;

  return sub_1C70266D0(a1);
}

uint64_t OUTLINED_FUNCTION_79_14(uint64_t a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, __int128 a34)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = a33;
  *(v34 + 1264) = v35;
  *(v34 + 1272) = *(&a34 + 7);
  *(v34 + 1265) = a34;

  return sub_1C70266D0(a1);
}

id OUTLINED_FUNCTION_88_12(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

__n128 OUTLINED_FUNCTION_89_14(uint64_t a1, __n128 a2, __n128 a3)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  result = *(v4 + 25);
  *(a1 + 25) = result;
  *(v3 + 2137) = 1;
  return result;
}

void OUTLINED_FUNCTION_93_14(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = v5;
  *(a1 + 48) = v1;
  *(a1 + 56) = v3;
  *(a1 + 57) = v6;
  *(a1 + 64) = v4;
}

uint64_t OUTLINED_FUNCTION_95_16(__n128 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a1[2] = a2;
  a1[3] = a3;
  *a1 = a5;
  a1[1] = a4;
  v10 = v5[2];
  v9 = v5[3];
  v12 = *v5;
  v11 = v5[1];
  *(v6 + 712) = v7;
  *(v6 + 720) = v12;
  *(v6 + 736) = v11;
  *(v6 + 752) = v10;
  *(v6 + 768) = v9;

  return sub_1C7026698(a1, v6 + 1408);
}

void OUTLINED_FUNCTION_96_12(uint64_t a1@<X8>)
{
  v2[442] = v3;
  v2[441] = v1;
  v2[440] = a1;
}

uint64_t OUTLINED_FUNCTION_107_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  *(v6 + 1344) = a2;
  *v7 = a5;
  v7[1] = a4;
  v7[2] = a3;
  v7[3].n128_u64[0] = v5;

  return sub_1C70260B4(a1, v6 + 2208);
}

void OUTLINED_FUNCTION_111_10(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[3] = a3;
  a1[4] = a2;
  a1[2] = a4;
  a1[5].n128_u8[0] = v4;
}

uint64_t OUTLINED_FUNCTION_112_6(uint64_t a1)
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_127_7()
{
  *(v1 + 3080) = v3 + v0;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_128_6(__n128 a1@<Q0>, __n128 a2@<Q1>, __n128 *a3@<X8>, __n128 a4@<Q2>)
{
  a3[3] = a2;
  a3[4] = a1;
  a3[2] = a4;
}

__n128 OUTLINED_FUNCTION_130_5(__n128 a1, __n128 a2)
{
  *v3 = a1;
  v3[1] = a2;
  result = v6[2];
  v3[2] = result;
  v3[3].n128_u16[0] = v6[3].n128_u16[0];
  *v2 = *v5;
  *(v2 + 4) = *(v5 + 4);
  *(v4 + 478) = *(v4 + 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_132_7()
{
  v2 = *(v1 + 41);
  v4 = *(v1 + 232);
  v3 = *(v1 + 240);
  result = *(v1 + 208);
  v6 = *(v1 + 80);
  *v6 = *(v1 + 216);
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v0;
  return result;
}

__n128 OUTLINED_FUNCTION_133_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v22 + 16);
  *a17 = *v22;
  *(a17 + 16) = v23;
  result = *(v22 + 25);
  *(a17 + 25) = result;
  *a21 = *v21;
  *(a21 + 4) = *(v21 + 4);
  return result;
}

uint64_t OUTLINED_FUNCTION_134_9(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5[45] = a5;
  v5[46] = a4;
  v5[47] = a3;
  v5[48] = a2;

  return sub_1C7026698(a1, &v5[88]);
}

__n128 OUTLINED_FUNCTION_135_7()
{
  v3 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 16) = v3;
  result = *(v0 + 32);
  *(v2 + 32) = result;
  *(v2 + 46) = *(v0 + 46);
  v1[553] = v1[463];
  v1[554] = v1[472];
  return result;
}

void OUTLINED_FUNCTION_140_6(uint64_t a1@<X8>)
{
  v1[434] = v3;
  v1[433] = v2;
  v1[432] = a1;
}

uint64_t OUTLINED_FUNCTION_145_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _OWORD *a20, uint64_t a21)
{
  v23 = v21[1];
  *a20 = *v21;
  a20[1] = v23;
  *(a20 + 25) = *(v21 + 25);
  *a19 = *a21;
  *(a19 + 4) = *(a21 + 4);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_146_6(void *a1@<X8>)
{
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v1;
  a1[6] = v2;
  a1[7] = v3;
}

uint64_t OUTLINED_FUNCTION_157_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  *(v6 + 1280) = a2;
  *v7 = a5;
  v7[1] = a4;
  v7[2] = a3;
  v7[3].n128_u64[0] = v5;

  return sub_1C70260B4(a1, v6 + 2040);
}

__n128 OUTLINED_FUNCTION_158_4(__n128 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a1[2] = a2;
  a1[3] = a3;
  *a1 = a5;
  a1[1] = a4;
  return v5[3];
}

uint64_t OUTLINED_FUNCTION_161_6@<X0>(uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  *v5 = a3;
  *(v5 + 16) = a4;
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = *(a2 + 48);
  *(v6 + 145) = *v4;
  *(v6 + 149) = *(v4 + 4);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_162_6()
{
}

uint64_t OUTLINED_FUNCTION_164_4()
{
  **(v0 + 120) = **(v0 + 120) + *(v0 + 88);

  return sub_1C754F2DC();
}

uint64_t OUTLINED_FUNCTION_165_3()
{

  return sub_1C7033D84(8, v1, v0);
}

uint64_t OUTLINED_FUNCTION_170_5()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 + 2256));
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return sub_1C754F2DC();
}

void *OUTLINED_FUNCTION_172_3@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v3 + 856), (a1 + v2 * v1 + 32), 0x42uLL);
}

uint64_t OUTLINED_FUNCTION_173_4()
{

  return sub_1C70555F8(v1 + 1344, v1 + 1600, v0, v2);
}

uint64_t OUTLINED_FUNCTION_174_3()
{

  return sub_1C70555F8(v1 + 1280, v1 + 1472, v0, v2);
}

uint64_t OUTLINED_FUNCTION_181_1@<X0>(__int16 a1@<W8>)
{
  *v1 = *v2;
  *(v3 + 839) = *(v2 + 4);
  *(v3 + 840) = v4;
  *(v3 + 848) = a1;

  return sub_1C7026030(v3 + 784);
}

id OUTLINED_FUNCTION_183_2()
{

  return sub_1C7073450();
}

void OUTLINED_FUNCTION_189_2()
{
  v2[427] = v3;
  v2[426] = v0;
  v2[425] = v1;
}

__n128 *OUTLINED_FUNCTION_198_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  return result;
}

void OUTLINED_FUNCTION_202_2(__n128 a1)
{
  *(v2 - 144) = a1;
  *(v2 - 120) = *(v2 - 192);
  *(v1 + 79) = *(v1 + 7);
}

void OUTLINED_FUNCTION_210_3(uint64_t a1)
{
  *(v2 + 3712) = a1;
}

void OUTLINED_FUNCTION_211_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void *OUTLINED_FUNCTION_213_3(void *a1)
{

  return memcpy(a1, (v1 - 176), 0x50uLL);
}

void *OUTLINED_FUNCTION_214_1()
{

  return memcpy((v1 - 176), (v0 + 976), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_215_2()
{

  return sub_1C7337590(v2 + v3, v1, v0);
}

uint64_t OUTLINED_FUNCTION_216_3()
{

  return sub_1C6FB5FC8(v1 + 1344, v0, v2);
}

uint64_t OUTLINED_FUNCTION_218_2()
{
}

uint64_t OUTLINED_FUNCTION_219_3()
{
}

uint64_t OUTLINED_FUNCTION_220_2()
{

  return sub_1C6FB5FC8(v1 + 1280, v0, v2);
}

void OUTLINED_FUNCTION_221_2(uint64_t a1)
{
  *(v2 + 3616) = a1;
}

uint64_t OUTLINED_FUNCTION_223_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C70555F8(v4 + 1344, v4 + 1728, a3, a4);
}

uint64_t OUTLINED_FUNCTION_225_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = v2;
  *(a1 + 72) = v1;

  return sub_1C70DF138(v3 + 16);
}

void OUTLINED_FUNCTION_226_2(uint64_t a1)
{
  *(v2 + 3544) = a1;
}

void OUTLINED_FUNCTION_229_2(uint64_t a1@<X8>)
{
  if (v1)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + v2) = v4;
}

void OUTLINED_FUNCTION_234_3(uint64_t a1@<X8>)
{
  *(a1 + 57) = v1;
  *(a1 + 58) = v3;
  *(a1 + 64) = v2;
}

uint64_t OUTLINED_FUNCTION_238_2(uint64_t a1)
{

  return sub_1C754F06C();
}

void *OUTLINED_FUNCTION_240_3@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v3 + 1000), (a1 + v2 * v1 + 32), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_244_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C70555F8(v5 + v6, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_246_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C70555F8(v4 + 1280, v4 + 1664, a3, a4);
}

void OUTLINED_FUNCTION_247_2(uint64_t a1)
{
  *(v2 + 3480) = a1;
}

id OUTLINED_FUNCTION_248_3(void *a1)
{

  return [a1 (v1 + 1784)];
}

uint64_t sub_1C7338498(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C75516BC();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1C73384B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = MEMORY[0x1E69E7CD0];
  v14 = MEMORY[0x1E69E7CD0];
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = a2 + 32;
    sub_1C75504FC();
    do
    {
      sub_1C6FB5E28(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v10 = (*(v9 + 32))(a1, v8, v9);
      sub_1C7397F6C(v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
      v7 += 40;
      --v6;
    }

    while (v6);

    result = v14;
  }

  if (!*(result + 16))
  {

    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t MessagesBackdrop.SuggestionProcessor.PersistenceRecipe.conversationID.getter()
{
  v1 = *(v0 + 8);
  sub_1C75504FC();
  return v1;
}

uint64_t MessagesBackdrop.SuggestionProcessor.PersistenceRecipe.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0) + 28);
  sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MessagesBackdrop.SuggestionProcessor.PersistenceRecipe.relevantUntilDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0) + 32);
  sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MessagesBackdrop.SuggestionProcessor.eligibilityChecker.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  return sub_1C75504FC();
}

uint64_t MessagesBackdrop.SuggestionProcessor.__allocating_init(photoLibrary:curationContext:logger:)(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  MessagesBackdrop.SuggestionProcessor.init(photoLibrary:curationContext:logger:)(a1, a2, a3);
  return v6;
}

uint64_t MessagesBackdrop.SuggestionProcessor.init(photoLibrary:curationContext:logger:)(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_14_2();
  v92 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v83 - v11;
  v12 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_2();
  v89 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v83 - v18;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedFailureReasons) = MEMORY[0x1E69E7CC8];
  v20 = (v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);
  *v20 = 0u;
  v20[1] = 0u;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_persistenceRecipes) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire) = MEMORY[0x1E69E7CD0];
  v21 = *a2;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_photoLibrary) = a1;
  if (v21 == 2)
  {
    result = sub_1C7551AAC();
    __break(1u);
    return result;
  }

  LOBYTE(v96) = v21;
  v22 = a1;
  static AssetGating.EligibilityChecker<>.buildMessagesBackdropEligibilityChecker(for:)(&v96, &v97);
  v23 = v98;
  *(v4 + 16) = v97;
  *(v4 + 24) = v23;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext) = v21;
  v24 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_logger;
  v95 = v14;
  v25 = *(v14 + 16);
  v91 = a3;
  v25(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_logger, a3, v12);
  v26 = objc_opt_self();
  v90 = v22;
  v27 = [v22 librarySpecificFetchOptions];
  v28 = [v26 fetchConversationsWithOptions_];

  v29 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_conversations;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_conversations) = v28;
  v87 = v24;
  v88 = v25;
  v86 = v14 + 16;
  v25(v19, v4 + v24, v12);

  v30 = sub_1C754FEEC();
  v31 = sub_1C755117C();
  v32 = os_log_type_enabled(v30, v31);
  v94 = v12;
  if (v32)
  {
    OUTLINED_FUNCTION_13_3();
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = [*(v4 + v29) count];

    _os_log_impl(&dword_1C6F5C000, v30, v31, "Successfully fetched %ld conversations", v33, 0xCu);
    v12 = v94;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v34 = *(v95 + 8);
  v95 += 8;
  v34(v19, v12);
  v35 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  if (v21)
  {
    v36 = v90;
    v96 = v90;
    v97 = v21 | 0x8000000000000000;
    v98 = 0;
    v37 = MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(&v97);

    v35 = v37;
  }

  else
  {
    v85 = v4;
    v38 = [*(v4 + v29) fetchedObjects];
    v39 = MEMORY[0x1E69E7CC0];
    v84 = v34;
    if (v38)
    {
      v40 = v38;
      sub_1C6F65BE8(0, &qword_1EC21ABA0, 0x1E69787B0);
      v41 = sub_1C7550B5C();
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v42 = sub_1C6FB6304();
    if (v42 < 1)
    {

      v4 = v85;
      v79 = v89;
      v88(v89, v85 + v87, v12);
      v80 = sub_1C754FEEC();
      v81 = sub_1C755117C();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_1C6F5C000, v80, v81, "Found 0 conversations. Return", v82, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v34 = v84;
      v84(v79, v12);
      v65 = v92;
      v64 = v93;
      v36 = v90;
      v66 = v91;
      goto LABEL_20;
    }

    v47 = v42;
    v89 = v35;
    v97 = v39;
    sub_1C6F7ED9C(0, v42, 0, v43, v44, v45, v46);
    v48 = 0;
    v49 = v97;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x1CCA5DDD0](v48, v41);
      }

      else
      {
        v50 = *(v41 + 8 * v48 + 32);
      }

      v51 = v50;
      v52 = [v50 conversationID];
      v53 = sub_1C755068C();
      v55 = v54;

      v97 = v49;
      v57 = *(v49 + 16);
      v56 = *(v49 + 24);
      if (v57 >= v56 >> 1)
      {
        v59 = OUTLINED_FUNCTION_15(v56);
        sub_1C6F7ED9C(v59, v57 + 1, 1, v60, v61, v62, v63);
        v49 = v97;
      }

      ++v48;
      *(v49 + 16) = v57 + 1;
      v58 = v49 + 16 * v57;
      *(v58 + 32) = v53;
      *(v58 + 40) = v55;
    }

    while (v47 != v48);

    v96 = v90;
    v97 = 0;
    v98 = v49;
    v36 = v90;
    v35 = MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(&v97);

    sub_1C70E7F30(v97);
    v34 = v84;
    v4 = v85;
  }

  v65 = v92;
  v64 = v93;
  v66 = v91;
LABEL_20:
  v67 = v35;
  v68 = sub_1C754FEEC();
  v69 = sub_1C755117C();
  if (os_log_type_enabled(v68, v69))
  {
    OUTLINED_FUNCTION_13_3();
    v70 = v34;
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    *(v71 + 4) = [v67 count];

    _os_log_impl(&dword_1C6F5C000, v68, v69, "Found %ld existing suggestions.", v71, 0xCu);
    v34 = v70;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    v68 = v67;
  }

  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_existingSuggestionsByConversationID) = static MessagesBackdrop.Utilities.suggestionsByConversationID(for:)(v67);
  v97 = v36;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_keyAssetBySuggestionUUID) = MessagesBackdrop.Fetcher.fetchKeyAssetBySuggestionUUID(for:)(v67);
  v72 = [v67 firstObject];
  if (v72)
  {
    v73 = v72;
    v74 = [v72 creationDate];

    if (v74)
    {
      sub_1C754DF2C();

      v34(v66, v94);
      v75 = 0;
    }

    else
    {
      v34(v66, v94);

      v75 = 1;
    }

    v77 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(v65, v75, 1, v77);
    sub_1C6FF51C8(v65, v64);
  }

  else
  {
    v34(v66, v94);

    v76 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v76);
  }

  sub_1C6FF51C8(v64, v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_latestUpdatedDate);
  return v4;
}

void sub_1C7338F8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v19 = v18 - v17;
  sub_1C754F2CC();
  if (v4)
  {
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v20 + 8))(a4);
    return;
  }

  v151 = v9;
  v154 = v19;
  v149 = v15;
  v148 = v13;
  v21 = sub_1C6FB6304();
  v22 = (v160 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);
  v23 = *(v160 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);
  v24 = __OFADD__(v23, v21);
  v25 = v23 + v21;
  if (v24)
  {
    goto LABEL_128;
  }

  *v22 = v25;
  v26 = a1;
  if (*(v160 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext))
  {
    v15 = a3;
    if (*(v160 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext) != 1)
    {
      sub_1C733BA98();
      swift_allocError();
      swift_willThrow();
      sub_1C754F2FC();
      OUTLINED_FUNCTION_12();
      (*(v50 + 8))(a4);
      return;
    }

    v147 = v7;
    v146 = 1502;
  }

  else
  {
    v147 = v7;
    v146 = 1501;
    v15 = a3;
  }

  v145 = v22;
  v143 = objc_opt_self();
  v27 = [v143 sortDescriptorsForMessagesBackdropSuggestionDeduping];
  v28 = v27;
  v29 = v27;
  if (!v27)
  {
    sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
    sub_1C7550B5C();
    v29 = sub_1C7550B3C();

    v13 = sub_1C7550B5C();
    v28 = sub_1C7550B3C();
  }

  v150 = v29;
  v141 = v28;
  v30 = *(v160 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_existingSuggestionsByConversationID);
  sub_1C75504FC();
  v31 = v27;
  v32 = sub_1C6FE3768();
  OUTLINED_FUNCTION_12_62();

  v33 = MEMORY[0x1E69E7CC0];
  if (!v32)
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  *&v163 = MEMORY[0x1E69E7CC0];
  v34 = 0;
  v158 = v32 & 0xC000000000000001;
  v159 = sub_1C6FB6304();
  v156 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_keyAssetBySuggestionUUID;
  v157 = v32 & 0xFFFFFFFFFFFFFF8;
  v155 = v32;
  v142 = v32 + 32;
  v140 = v33;
  while (v159 != v34)
  {
    if (v158)
    {
      v35 = MEMORY[0x1CCA5DDD0](v34, v155);
    }

    else
    {
      if (v34 >= *(v157 + 16))
      {
        goto LABEL_121;
      }

      v35 = *(v155 + 8 * v34 + 32);
    }

    v36 = v35;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2192B0, &qword_1C7583FB0);
      sub_1C7551ABC();

      goto LABEL_57;
    }

    v37 = sub_1C70CAC04(v35);
    if (!v38)
    {
      goto LABEL_136;
    }

    v13 = v38;
    v39 = *(v30 + v156);
    if (*(v39 + 16))
    {
      v40 = v37;
      sub_1C75504FC();
      v41 = sub_1C6F78124(v40, v13);
      v15 = v42;

      if ((v15 & 1) == 0)
      {
        v30 = v160;
        goto LABEL_22;
      }

      v13 = *(*(v39 + 56) + 8 * v41);

      MEMORY[0x1CCA5D040]();
      v43 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v43 >> 1)
      {
        OUTLINED_FUNCTION_15(v43);
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      ++v34;
      v30 = v160;
    }

    else
    {
LABEL_22:

      ++v34;
    }
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  OUTLINED_FUNCTION_582();
  v44 = sub_1C7550B3C();
  v45 = [v44 sortedArrayUsingDescriptors_];

  v46 = sub_1C7550B5C();
  v164 = MEMORY[0x1E69E7CC0];
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v46 + 32;
    OUTLINED_FUNCTION_5_75(MEMORY[0x1E69E7CC0]);
    do
    {
      sub_1C6F774EC(v48, &v163);
      sub_1C6F9ED18(&v163, v161);
      if (swift_dynamicCast())
      {
        v13 = v162;
        if (v162)
        {
          v44 = &v164;
          MEMORY[0x1CCA5D040]();
          v45 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v49 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (v45 >= v49 >> 1)
          {
            OUTLINED_FUNCTION_15(v49);
            sub_1C7550B9C();
          }

          sub_1C7550BEC();
          OUTLINED_FUNCTION_5_75(v164);
        }
      }

      v48 += 32;
      --v47;
    }

    while (v47);
  }

  else
  {

    OUTLINED_FUNCTION_5_75(MEMORY[0x1E69E7CC0]);
  }

  *&v163 = MEMORY[0x1E69E7CC0];
  v51 = sub_1C6FB6304();
  v52 = 0;
  v15 = v44 & 0xC000000000000001;
  v53 = v44 & 0xFFFFFFFFFFFFFF8;
  while (v51 != v52)
  {
    if (v15)
    {
      v54 = MEMORY[0x1CCA5DDD0](v52, v44);
    }

    else
    {
      if (v52 >= *(v53 + 16))
      {
        goto LABEL_123;
      }

      v54 = *(v44 + 8 * v52 + 32);
    }

    v13 = v54;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_122;
    }

    *&v161[0] = v54;
    if (sub_1C733A0C8(v161, v45))
    {
      sub_1C755192C();
      v45 = *(v163 + 16);
      sub_1C755196C();
      OUTLINED_FUNCTION_12_62();
      sub_1C755197C();
      sub_1C755193C();
      v44 = v26;
    }

    else
    {
    }

    ++v52;
  }

  v55 = v163;

  sub_1C75504FC();
  v56 = sub_1C754FEEC();
  v57 = sub_1C755117C();
  v15 = v143;
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134218240;
    *(v58 + 4) = sub_1C6FB6304();

    *(v58 + 12) = 2048;
    *(v58 + 14) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v56, v57, "\t%ld/%ld assets passed gating", v58, 0x16u);
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v13 = v151;
  v59 = sub_1C6FB6304();
  v60 = v145[1];
  v24 = __OFADD__(v60, v59);
  v61 = v60 + v59;
  if (v24)
  {
    goto LABEL_129;
  }

  v62 = v59;
  v145[1] = v61;
  OUTLINED_FUNCTION_76_0();
  sub_1C754F2DC();
  if (v62 < 1)
  {

    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_582();

    v82 = OUTLINED_FUNCTION_15_64(v81);
    v83 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v85, v86, v87, v88, v84, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    OUTLINED_FUNCTION_76_0();
LABEL_119:
    sub_1C754F2EC();
    return;
  }

  sub_1C75504FC();
  if (v55 < 0 || (v55 & 0x4000000000000000) != 0)
  {
    goto LABEL_130;
  }

  sub_1C7551DDC();
LABEL_57:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2192B0, &qword_1C7583FB0);
  v63 = sub_1C7550B3C();

  v64 = [v15 sortedDedupedCandidatesFromCandidates:v63 sortDescriptors:v141 timeIntervalForCandidateDeduping:60.0];

  v65 = sub_1C7550B5C();
  *&v163 = MEMORY[0x1E69E7CC0];
  v66 = sub_1C6FB6304();
  v67 = 0;
  v15 = v65 & 0xFFFFFFFFFFFFFF8;
  while (v66 != v67)
  {
    if ((v65 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA5DDD0](v67, v65);
    }

    else
    {
      if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_125;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(v67, 1))
    {
      goto LABEL_124;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1CCA5D040]();
      v68 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v68 >> 1)
      {
        OUTLINED_FUNCTION_15(v68);
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v140 = v163;
      ++v67;
      v13 = v151;
    }

    else
    {
      swift_unknownObjectRelease();
      ++v67;
      v13 = v151;
    }
  }

  v69 = sub_1C6FB6304();
  v70 = v145[2];
  v24 = __OFADD__(v70, v69);
  v71 = v70 + v69;
  if (v24)
  {
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v145[2] = v71;

  v72 = sub_1C75504FC();
  v73 = v160;
  v74 = OUTLINED_FUNCTION_15_64(v72);
  v75 = sub_1C75511BC();
  v76 = a3;
  if (OUTLINED_FUNCTION_7_0(v75))
  {
    v73 = swift_slowAlloc();
    *v73 = 134218240;
    *(v73 + 4) = sub_1C6FB6304();

    *(v73 + 12) = 2048;
    *(v73 + 14) = sub_1C6FB6304();

    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v77, v78, v79, v80, v73, 0x16u);
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v89 = MessagesBackdrop.SuggestionProcessor.rankAssets(candidateAssets:existingAssets:)(v140, v150);
  v91 = v90;
  v92 = sub_1C6FB6304();
  v93 = sub_1C6FB6304();
  v144 = v91;
  v94 = sub_1C7338498(v91);
  v95 = v93 - v94;
  if (__OFSUB__(v93, v94))
  {
    goto LABEL_132;
  }

  v24 = __OFADD__(v92, v95);
  v96 = v92 + v95;
  if (v24)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v97 = v145[3];
  v24 = __OFADD__(v97, v96);
  v98 = v97 + v96;
  if (v24)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v145[3] = v98;
  v99 = sub_1C75504FC();
  v100 = OUTLINED_FUNCTION_15_64(v99);
  v101 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v101))
  {
    OUTLINED_FUNCTION_13_3();
    v73 = swift_slowAlloc();
    *v73 = 134217984;
    *(v73 + 4) = sub_1C6FB6304();

    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v102, v103, v104, v105, v73, 0xCu);
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v151 = v89;
  v106 = sub_1C6FB6304();
  if (!v106)
  {
    goto LABEL_93;
  }

  v107 = v106;
  if (v106 >= 1)
  {
    v108 = 0;
    v109 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_persistenceRecipes;
    v145 = (v151 & 0xC000000000000001);
    v110 = (v13 + 8);
    do
    {
      if (v145)
      {
        v111 = MEMORY[0x1CCA5DDD0](v108, v151);
      }

      else
      {
        v111 = *(v151 + 8 * v108 + 32);
      }

      v13 = v154;
      *v154 = v111;
      *(v154 + 8) = a2;
      *(v154 + 16) = v76;
      *(v154 + 24) = v146;
      sub_1C75504FC();
      sub_1C754DF5C();
      sub_1C754DF5C();
      sub_1C754DEEC();
      (*v110)(v148, v147);
      swift_beginAccess();
      v112 = *(v73 + v109);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v73 + v109) = v112;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6FB4774(0, *(v112 + 16) + 1, 1, v112);
        v112 = v118;
        *(v73 + v109) = v118;
      }

      v115 = *(v112 + 16);
      v114 = *(v112 + 24);
      v116 = v149;
      v117 = v154;
      if (v115 >= v114 >> 1)
      {
        v119 = OUTLINED_FUNCTION_15(v114);
        sub_1C6FB4774(v119, v115 + 1, 1, v112);
        v116 = v149;
        v112 = v120;
        v117 = v154;
      }

      ++v108;
      *(v112 + 16) = v115 + 1;
      sub_1C733BAEC(v117, v112 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v115);
      v73 = v160;
      *(v160 + v109) = v112;
      swift_endAccess();
      v76 = a3;
    }

    while (v107 != v108);
LABEL_93:
    OUTLINED_FUNCTION_76_0();
    sub_1C754F2DC();
    v15 = 0;
    a2 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire;
    v121 = v144 & 0xFFFFFFFFFFFFFF8;
    if (v144 < 0)
    {
      v121 = v144;
    }

    a3 = v121;
    v154 = v144 & 0xC000000000000001;
    while (1)
    {
LABEL_96:
      if (v15 == v159)
      {

        OUTLINED_FUNCTION_194();

        OUTLINED_FUNCTION_18_49();
        OUTLINED_FUNCTION_582();

        goto LABEL_119;
      }

      if (v158)
      {
        v122 = MEMORY[0x1CCA5DDD0](v15, v155);
      }

      else
      {
        if (v15 >= *(v157 + 16))
        {
          goto LABEL_127;
        }

        v122 = *(v142 + 8 * v15);
      }

      v24 = __OFADD__(v15++, 1);
      if (v24)
      {
        goto LABEL_126;
      }

      v123 = v122;
      v124 = sub_1C6FCA214(v123);
      if (!v125)
      {
        goto LABEL_137;
      }

      v126 = v125;
      v127 = *(v73 + v156);
      if (!*(v127 + 16))
      {
        break;
      }

      v128 = v124;
      sub_1C75504FC();
      v129 = sub_1C6F78124(v128, v126);
      v13 = v130;

      if (v13)
      {
        v131 = *(*(v127 + 56) + 8 * v129);

        if (v154)
        {
          v132 = v131;
          v133 = sub_1C755170C();

          if (v133)
          {
LABEL_113:
            swift_beginAccess();
            v138 = v123;
            sub_1C70F5FC8(v161, v138);
            v139 = *&v161[0];
            swift_endAccess();

            v73 = v160;
            goto LABEL_114;
          }
        }

        else
        {
          if (*(v144 + 16))
          {
            v134 = sub_1C75513DC();
            v135 = ~(-1 << *(v144 + 32));
            while (1)
            {
              v13 = v134 & v135;
              if (((*(v144 + 56 + (((v134 & v135) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v134 & v135)) & 1) == 0)
              {
                break;
              }

              v136 = *(*(v144 + 48) + 8 * v13);
              v137 = sub_1C75513EC();

              v134 = v13 + 1;
              if (v137)
              {
                goto LABEL_113;
              }
            }
          }
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_76_0();
      v73 = v160;
    }

LABEL_114:
    OUTLINED_FUNCTION_76_0();
    goto LABEL_96;
  }

LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);

  __break(1u);
}

uint64_t sub_1C733A0C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1C73384B8(*a1, *(a2 + 24), v48);
  v4 = v48[0];
  if (!v48[0])
  {
    return v4 == 0;
  }

  v43 = v3;
  v5 = v48[0] + 56;
  v6 = 1 << *(v48[0] + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v48[0] + 56);
  v47 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedFailureReasons;
  v9 = (v6 + 63) >> 6;
  sub_1C75504FC();
  v10 = 0;
  v44 = v9;
  v45 = v4 + 56;
  v46 = v4;
  if (!v8)
  {
    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    sub_1C75504FC();
    v28 = v43;
    v29 = sub_1C754FEEC();
    v30 = sub_1C755118C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48[0] = v32;
      *v31 = 136315394;
      v33 = [v28 localIdentifier];
      v34 = sub_1C755068C();
      v36 = v35;

      v37 = sub_1C6F765A4(v34, v36, v48);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A5F0, &qword_1C75811D0);
      sub_1C733C030();
      v38 = sub_1C7550F9C();
      v40 = v39;

      v41 = sub_1C6F765A4(v38, v40, v48);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_1C6F5C000, v29, v30, "\tAsset %s did not pass gating due to %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
      MEMORY[0x1CCA5F8E0](v31, -1, -1);
    }

    else
    {
    }

    return v4 == 0;
  }

  while (1)
  {
    v11 = v10;
LABEL_9:
    v12 = *(*(v4 + 48) + 24 * (__clz(__rbit64(v8)) | (v11 << 6)));
    swift_beginAccess();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a2 + v47);
    v13 = v49;
    *(a2 + v47) = 0x8000000000000000;
    v14 = sub_1C6FC33C4(v12);
    if (__OFADD__(v13[2], (v15 & 1) == 0))
    {
      break;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ABE0, &qword_1C7584150);
    v18 = sub_1C7551A2C();
    v19 = v49;
    if (v18)
    {
      v20 = sub_1C6FC33C4(v12);
      if ((v17 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v16 = v20;
    }

    *(a2 + v47) = v19;
    if ((v17 & 1) == 0)
    {
      v19[(v16 >> 6) + 8] |= 1 << v16;
      *(v19[6] + v16) = v12;
      *(v19[7] + 8 * v16) = 0;
      v22 = v19[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_27;
      }

      v19[2] = v24;
    }

    v25 = v19[7];
    v26 = *(v25 + 8 * v16);
    v23 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v23)
    {
      goto LABEL_26;
    }

    v8 &= v8 - 1;
    *(v25 + 8 * v16) = v27;
    swift_endAccess();

    v10 = v11;
    v5 = v45;
    v4 = v46;
    v9 = v44;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t MessagesBackdrop.SuggestionProcessor.rankAssets(candidateAssets:existingAssets:)(uint64_t a1, unint64_t a2)
{
  sub_1C75504FC();
  v7 = sub_1C703437C(16, a1);
  v11 = (v10 >> 1) - v9;
  if (__OFSUB__(v10 >> 1, v9))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFSUB__(16, v11))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  a1 = v7;
  v3 = v8;
  v4 = v9;
  v2 = v10;
  sub_1C75504FC();
  sub_1C703437C(16 - v11, a2);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1C75504FC();
  sub_1C706D3D8(v18, v19, v20, v21, v22, v23, v24, v25, v35);
  v27 = v26;
  v28 = swift_unknownObjectRetain();
  sub_1C706F5AC(v28, v13, v15, v17);
  sub_1C72387D0(v29, v27);

  if ((v2 & 1) == 0)
  {
LABEL_4:
    sub_1C739C610(a1, v3, v4, v2);
    v31 = v30;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = *(v32 + 16);

  if (v33 != v11)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
    goto LABEL_4;
  }

  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v31)
  {
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_11:
  swift_unknownObjectRelease();
  return v31;
}

id sub_1C733A684()
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
  if (*(v0 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext))
  {
    if (*(v0 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext) != 1)
    {
      sub_1C733BA98();
      swift_allocError();
      swift_willThrow();

      return v2;
    }

    OUTLINED_FUNCTION_3_91();
    v4 = 1502;
  }

  else
  {
    OUTLINED_FUNCTION_3_91();
    v4 = 1501;
  }

  v89 = v4;
  v93 = v0;
  v91 = *(v0 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_photoLibrary);
  v94 = [v91 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C756AD80;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C75604F0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C6F6D524();
  *(v6 + 32) = 0x6574617473;
  *(v6 + 40) = 0xE500000000000000;
  v7 = MEMORY[0x1E69E75F8];
  v8 = MEMORY[0x1E69E7660];
  *(v6 + 96) = MEMORY[0x1E69E75F8];
  *(v6 + 104) = v8;
  *(v6 + 72) = 2;
  *(v5 + 32) = sub_1C755112C();
  v9 = OUTLINED_FUNCTION_14_56();
  OUTLINED_FUNCTION_6_82(v9);
  *(v10 + 32) = 1701869940;
  *(v10 + 40) = 0xE400000000000000;
  *(v10 + 96) = v7;
  *(v10 + 104) = v8;
  *(v10 + 72) = 14;
  *(v5 + 40) = sub_1C755112C();
  v11 = OUTLINED_FUNCTION_14_56();
  OUTLINED_FUNCTION_6_82(v11);
  *(v12 + 32) = 0x65707974627573;
  *(v12 + 40) = 0xE700000000000000;
  *(v12 + 96) = v7;
  *(v12 + 104) = v8;
  *(v12 + 72) = v89;
  *(v5 + 48) = sub_1C755112C();
  v13 = OUTLINED_FUNCTION_14_56();
  OUTLINED_FUNCTION_6_82(v13);
  strcpy((v14 + 32), "creationDate");
  *(v14 + 45) = 0;
  *(v14 + 46) = -5120;
  sub_1C754DF0C();
  v15 = sub_1C754DECC();
  (*(v90 + 8))();
  v13[6].n128_u64[0] = sub_1C6F65BE8(0, &unk_1EDD0CD28, 0x1E695DF00);
  v13[6].n128_u64[1] = sub_1C733BF2C(&qword_1EDD0CD20, &unk_1EDD0CD28, 0x1E695DF00, MEMORY[0x1E69E81C8]);
  v13[4].n128_u64[1] = v15;
  *(v5 + 56) = sub_1C755112C();
  v16 = sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  v17 = sub_1C6F6E5C4(v5);
  OUTLINED_FUNCTION_76_0();
  [v16 v18];

  v19 = [objc_opt_self() fetchSuggestionsWithOptions_];
  v20 = [v19 fetchedObjects];

  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
    v22 = sub_1C7550B5C();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = swift_allocObject();
  v24 = v93;
  v23[2] = v93;
  v23[3] = v22;
  v23[4] = v92;
  aBlock[4] = sub_1C733BB50;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_32;
  v25 = _Block_copy(aBlock);

  sub_1C75504FC();

  aBlock[0] = 0;
  v26 = [v91 performChangesAndWait:v25 error:aBlock];
  _Block_release(v25);
  v2 = aBlock[0];
  if (v26)
  {

    v27 = v2;
    v28 = sub_1C754FEEC();
    v29 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v29))
    {
      OUTLINED_FUNCTION_13_3();
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = *(v93 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);

      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v31, v32, v33, v34, v30, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v36 = sub_1C754FEEC();
    v37 = sub_1C75511BC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 134218498;
      v40 = *(v93 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);
      *(v38 + 4) = *(v93 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults + 8);
      *(v38 + 12) = 2048;
      *(v38 + 14) = v40;

      *(v38 + 22) = 2080;
      OUTLINED_FUNCTION_5(v93 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedFailureReasons, v95);
      sub_1C72CE5A0();
      sub_1C75504FC();
      v41 = sub_1C75504BC();
      v43 = v42;

      v44 = v41;
      v24 = v93;
      v45 = sub_1C6F765A4(v44, v43, aBlock);

      *(v38 + 24) = v45;
      _os_log_impl(&dword_1C6F5C000, v36, v37, "%ld/%ld assets passed gating. Reject reasons: %s", v38, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v21 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v46 = sub_1C754FEEC();
    v47 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134218240;
      v49 = *(v24 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults + 8);
      *(v48 + 4) = *(v24 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults + 16);
      *(v48 + 12) = 2048;
      *(v48 + 14) = v49;

      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v50, v51, v52, v53, v48, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v54 = sub_1C754FEEC();
    v55 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v55))
    {
      OUTLINED_FUNCTION_13_3();
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = *(v24 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults + 24);

      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v57, v58, v59, v60, v56, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    sub_1C75504FC();

    v61 = sub_1C754FEEC();
    v62 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134218496;
      v64 = OUTLINED_FUNCTION_194();
      OUTLINED_FUNCTION_5(v64, v65);
      *(v63 + 4) = *(*(v92 + 16) + 16);

      *(v63 + 12) = 2048;
      v66 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire;
      OUTLINED_FUNCTION_5(v24 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire, v96);
      v67 = *(v24 + v66);
      if ((v67 & 0xC000000000000001) != 0)
      {
        sub_1C75504FC();
        v68 = sub_1C75516BC();
      }

      else
      {
        v68 = *(v67 + 16);
      }

      *(v63 + 14) = v68;

      *(v63 + 22) = 2048;
      v69 = sub_1C6FB6304();

      *(v63 + 24) = v69;

      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v70, v71, v72, v73, v63, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v74 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_persistenceRecipes;
    swift_beginAccess();
    *(v24 + v74) = v21;

    if (sub_1C6FB6304())
    {
      sub_1C707F4FC(MEMORY[0x1E69E7CC0], v75, v76, v77, v78, v79, v80, v81, v88);
      v83 = v82;
    }

    else
    {
      v83 = MEMORY[0x1E69E7CD0];
    }

    v84 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire;
    swift_beginAccess();
    *(v24 + v84) = v83;

    v85 = OUTLINED_FUNCTION_194();
    OUTLINED_FUNCTION_5(v85, v86);
    v2 = *(v92 + 16);
    sub_1C75504FC();
  }

  else
  {
    v35 = aBlock[0];

    sub_1C754DBEC();

    swift_willThrow();
  }

  return v2;
}

void sub_1C733B1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_1C75504FC();
    sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
    sub_1C733BF2C(&qword_1EC21ABD8, &qword_1EDD0CEB0, 0x1E6978AE8, MEMORY[0x1E69E81B8]);
    sub_1C7550FEC();
    v9 = v68;
    v11 = v69;
    v12 = v70;
    v13 = v71;
    v14 = v72;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v11 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);
    sub_1C75504FC();
    v13 = 0;
  }

  v61 = v12;
  v18 = (v12 + 64) >> 6;
  *&v10 = 136315138;
  v62 = v10;
  v63 = v9;
  while ((v9 & 0x8000000000000000) == 0)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v21 >= v18)
        {
          goto LABEL_23;
        }

        v20 = *(v11 + 8 * v21);
        ++v19;
        if (v20)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

LABEL_13:
    v64 = (v20 - 1) & v20;
    v22 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v22)
    {
      goto LABEL_23;
    }

LABEL_17:
    v24 = [objc_opt_self() changeRequestForSuggestion_];
    if (v24)
    {
      v25 = v24;
      [v24 markRetired];
      [v25 setFeaturedState_];

      v13 = v21;
      v14 = v64;
    }

    else
    {
      v26 = v22;
      v27 = sub_1C754FEEC();
      v28 = sub_1C755119C();
      if (os_log_type_enabled(v27, v28))
      {
        v60 = a2;
        v59 = a1;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v67[0] = v30;
        *v29 = v62;
        v31 = sub_1C70CAC04(v26);
        v32 = v26;
        v34 = v33;
        v58 = v32;

        if (!v34)
        {
          goto LABEL_35;
        }

        v35 = sub_1C6F765A4(v31, v34, v67);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_1C6F5C000, v27, v28, "Failed to initialize PHSuggestionChangeRequest for suggestion: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v29, -1, -1);

        v13 = v21;
        v9 = v63;
        v14 = v64;
        a1 = v59;
        a2 = v60;
      }

      else
      {

        v13 = v21;
        v9 = v63;
        v14 = v64;
      }
    }
  }

  v23 = sub_1C75516FC();
  if (v23)
  {
    v66 = v23;
    sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
    swift_dynamicCast();
    v22 = v67[0];
    v21 = v13;
    v64 = v14;
    if (v67[0])
    {
      goto LABEL_17;
    }
  }

LABEL_23:
  sub_1C6F61E88(v9);
  v36 = objc_opt_self();
  sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
  v37 = sub_1C7550B3C();
  [v36 deleteSuggestions_];

  v38 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_persistenceRecipes;
  swift_beginAccess();
  v64 = *(a1 + v38);
  v39 = *(v64 + 16);
  if (v39)
  {
    v40 = v64 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v41 = *(v57 + 72);
    sub_1C75504FC();
    do
    {
      sub_1C733BF70(v40, v7);
      v42 = MessagesBackdrop.SuggestionProcessor.suggestionCreationRequest(from:)(v7);
      sub_1C733BFD4(v7);
      v43 = [v42 placeholderForCreatedSuggestion];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 localIdentifier];

        v46 = sub_1C755068C();
        v48 = v47;

        v49 = v65;
        swift_beginAccess();
        v50 = *(v49 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v49 + 16) = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C6FB1814();
          v50 = v54;
          *(v65 + 16) = v54;
        }

        v52 = *(v50 + 16);
        if (v52 >= *(v50 + 24) >> 1)
        {
          sub_1C6FB1814();
          v50 = v55;
        }

        *(v50 + 16) = v52 + 1;
        v53 = v50 + 16 * v52;
        *(v53 + 32) = v46;
        *(v53 + 40) = v48;
        *(v65 + 16) = v50;
        swift_endAccess();
      }

      v40 += v41;
      --v39;
    }

    while (v39);
  }
}

id MessagesBackdrop.SuggestionProcessor.suggestionCreationRequest(from:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C7565670;
  v5 = *a1;
  *(v4 + 32) = *a1;
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v6 = v5;
  v7 = sub_1C7550B3C();

  type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  v8 = sub_1C754DECC();
  v9 = sub_1C754DECC();
  v10 = [v2 creationRequestForSuggestionWithType:14 subtype:v3 keyAssets:v7 representativeAssets:0 creationDate:v8 relevantUntilDate:v9 version:3];

  [v10 setFeaturedState_];
  [v10 setAvailableFeatures_];
  v11 = sub_1C755065C();
  [v10 setContext_];

  return v10;
}

uint64_t MessagesBackdrop.SuggestionProcessor.deinit()
{

  sub_1C70D7CB8(v0 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_latestUpdatedDate);

  v1 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t MessagesBackdrop.SuggestionProcessor.__deallocating_deinit()
{
  MessagesBackdrop.SuggestionProcessor.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C733BA98()
{
  result = qword_1EC21ABA8;
  if (!qword_1EC21ABA8)
  {
    result = swift_getWitnessTable(byte_1C7584110, &_s19SuggestionProcessorC5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC21ABA8);
  }

  return result;
}

uint64_t sub_1C733BAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C733BB84(uint64_t a1)
{
  sub_1C6F5FB48(319);
  if (v1 <= 0x3F)
  {
    sub_1C754FF1C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C733BD74(uint64_t a1)
{
  sub_1C6F65BE8(319, &qword_1EDD0FA70, 0x1E6978630);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PHSuggestionSubtype(319);
    if (v2 <= 0x3F)
    {
      sub_1C754DF6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *_s19SuggestionProcessorC5ErrorOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C733BED8()
{
  result = qword_1EC21ABD0;
  if (!qword_1EC21ABD0)
  {
    result = swift_getWitnessTable(aAm, &_s19SuggestionProcessorC5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC21ABD0);
  }

  return result;
}

uint64_t sub_1C733BF2C(unint64_t *a1, unint64_t *a2, void *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1C6F65BE8(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C733BF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C733BFD4(uint64_t a1)
{
  v2 = type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C733C030()
{
  result = qword_1EC21ABF0;
  if (!qword_1EC21ABF0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A5F0, &qword_1C75811D0);
    result = swift_getWitnessTable(protocol conformance descriptor for AssetGating.GenericFailureReason<A>, v3, v0, v1);
    atomic_store(result, &qword_1EC21ABF0);
  }

  return result;
}

uint64_t Hastings.FeatureProvider.__allocating_init(storyElements:storySession:storyPhotoLibraryContext:configuration:)(const void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  Hastings.FeatureProvider.init(storyElements:storySession:storyPhotoLibraryContext:configuration:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Hastings.FeatureProvider.init(storyElements:storySession:storyPhotoLibraryContext:configuration:)(const void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  v8 = *(a3 + 4);
  v9 = a3[2];
  v10 = *a4;
  sub_1C754FEFC();
  memcpy((v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements), a1, 0x130uLL);
  sub_1C733EB78(a2, v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storySession, type metadata accessor for StoryGenerationSession);
  *(v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_configuration) = v10;
  v11 = v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyPhotoLibraryContext;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  return v4;
}

void sub_1C733C208()
{
  OUTLINED_FUNCTION_33();
  v84 = v2;
  v91 = 0;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v80 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v80 - v8;
  v9 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_configuration);
  v85 = v0;
  v10 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 224);
  v11 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 232);
  v80 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 216);
  v81 = v11;
  v12 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 280);
  v82 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 288);
  v83 = v12;
  v13 = MEMORY[0x1E69E7CC8];
  v97 = MEMORY[0x1E69E7CC8];
  v14 = *(v9 + 16);
  v86 = v9;
  v15 = (v9 + 32);
  v16 = (v9 + 32);
  while (2)
  {
    if (v14)
    {
      switch(*v16)
      {
        case 1:
        case 2:
        case 4:
          goto LABEL_6;
        case 3:
          OUTLINED_FUNCTION_64_0();
          goto LABEL_6;
        case 5:
          OUTLINED_FUNCTION_5_76();
          OUTLINED_FUNCTION_24_36();
LABEL_6:
          v1 = sub_1C7551DBC();

          ++v16;
          --v14;
          if (v1)
          {
            goto LABEL_7;
          }

          continue;
        default:

LABEL_7:
          sub_1C733CAC4();
          OUTLINED_FUNCTION_32_33();
          v93 = v13;
          OUTLINED_FUNCTION_0_142();
          OUTLINED_FUNCTION_9_73(v17, v18, v19, v20);
          OUTLINED_FUNCTION_7_69();
          break;
      }
    }

    break;
  }

  OUTLINED_FUNCTION_21_50();
  while (v14)
  {
    switch(*v1)
    {
      case 1:

        goto LABEL_14;
      case 3:
        OUTLINED_FUNCTION_64_0();
        break;
      case 5:
        OUTLINED_FUNCTION_5_76();
        OUTLINED_FUNCTION_24_36();
        break;
      default:
        break;
    }

    sub_1C7551DBC();
    OUTLINED_FUNCTION_31_37();
    ++v1;
    --v14;
    if (v10)
    {
LABEL_14:
      sub_1C733D0D4();
      OUTLINED_FUNCTION_32_33();
      v93 = v13;
      OUTLINED_FUNCTION_0_142();
      OUTLINED_FUNCTION_9_73(v21, v22, v23, v24);
      OUTLINED_FUNCTION_7_69();
      break;
    }
  }

  OUTLINED_FUNCTION_21_50();
  while (v14)
  {
    switch(*v1)
    {
      case 2:

        goto LABEL_21;
      case 3:
        OUTLINED_FUNCTION_64_0();
        break;
      case 5:
        OUTLINED_FUNCTION_24_36();
        OUTLINED_FUNCTION_5_76();
        break;
      default:
        break;
    }

    sub_1C7551DBC();
    OUTLINED_FUNCTION_31_37();
    ++v1;
    --v14;
    if (v10)
    {
LABEL_21:
      sub_1C733D520();
      OUTLINED_FUNCTION_32_33();
      v93 = v13;
      OUTLINED_FUNCTION_0_142();
      OUTLINED_FUNCTION_9_73(v25, v26, v27, v28);
      OUTLINED_FUNCTION_7_69();
      break;
    }
  }

  OUTLINED_FUNCTION_21_50();
  while (v14)
  {
    switch(*v1)
    {
      case 3:

        goto LABEL_27;
      case 5:
        OUTLINED_FUNCTION_5_76();
        OUTLINED_FUNCTION_24_36();
        break;
      default:
        break;
    }

    sub_1C7551DBC();
    OUTLINED_FUNCTION_31_37();
    ++v1;
    --v14;
    if (v10)
    {
LABEL_27:
      v29 = v85;
      sub_1C733D80C();
      OUTLINED_FUNCTION_32_33();
      v93 = v13;
      OUTLINED_FUNCTION_0_142();
      OUTLINED_FUNCTION_9_73(v30, v31, v32, v33);
      v13 = v93;
      v97 = v93;
      goto LABEL_29;
    }
  }

  v29 = v85;
LABEL_29:
  v34 = *(v86 + 16);
  while (2)
  {
    if (v34)
    {
      switch(*v15)
      {
        case 3:
          OUTLINED_FUNCTION_64_0();
          goto LABEL_34;
        case 4:

          break;
        case 5:
          OUTLINED_FUNCTION_24_36();
          OUTLINED_FUNCTION_5_76();
          goto LABEL_34;
        default:
LABEL_34:
          sub_1C7551DBC();
          OUTLINED_FUNCTION_31_37();
          ++v15;
          --v34;
          if (v10)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v35 = sub_1C754FEEC();
  v36 = sub_1C755117C();
  if (!os_log_type_enabled(v35, v36))
  {

LABEL_48:
    v79 = v29 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storySession;
    if (*(v79 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      sub_1C7163AF0();
    }

    OUTLINED_FUNCTION_25_0();
    return;
  }

  v37 = OUTLINED_FUNCTION_41_0();
  v38 = swift_slowAlloc();
  v39 = v38;
  v96 = v38;
  *v37 = 136315138;
  v40 = *(v13 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (!v40)
  {
LABEL_47:
    v93 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    v75 = sub_1C75505FC();
    v77 = v76;

    v78 = sub_1C6F765A4(v75, v77, &v96);

    *(v37 + 4) = v78;
    _os_log_impl(&dword_1C6F5C000, v35, v36, "Hastings features revealed:\n%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_0_60();

    v29 = v85;
    goto LABEL_48;
  }

  v81 = v38;
  LODWORD(v82) = v36;
  v83 = v37;
  v84 = v35;
  v95 = MEMORY[0x1E69E7CC0];
  sub_1C75504FC();
  sub_1C6F7ED9C(0, v40, 0, v42, v43, v44, v45);
  v41 = v95;
  v46 = sub_1C70D4544();
  LODWORD(v48) = v47;
  v36 = v49;
  v86 = v13 + 64;
  while ((v46 & 0x8000000000000000) == 0 && v46 < 1 << *(v13 + 32))
  {
    if (((*(v86 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
    {
      goto LABEL_57;
    }

    if (*(v13 + 36) != v48)
    {
      goto LABEL_58;
    }

    LODWORD(v91) = v36;
    v50 = v41;
    v51 = *(v13 + 48);
    v52 = type metadata accessor for Hastings.Feature(0);
    v53 = v13;
    v54 = v87;
    sub_1C72373C4(v51 + *(*(v52 - 8) + 72) * v46, v87);
    v55 = *(*(v53 + 56) + 8 * v46);
    OUTLINED_FUNCTION_1_108();
    v56 = v54;
    v57 = v88;
    sub_1C733EB78(v56, v88, v58);
    v59 = v90;
    *(v57 + *(v90 + 48)) = v55;
    v93 = 9;
    v94 = 0xE100000000000000;
    sub_1C75504FC();
    v60 = Hastings.Feature.description.getter();
    MEMORY[0x1CCA5CD70](v60);

    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    v61 = v89;
    sub_1C733EBD8(v57, v89);
    v62 = *(*(v61 + *(v59 + 48)) + 16);

    v92 = v62;
    v63 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v63);

    sub_1C733ECB0(v61, type metadata accessor for Hastings.Feature);
    MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
    v41 = v50;
    v64 = v93;
    v65 = v94;
    sub_1C733EC48(v57);
    v95 = v41;
    v71 = *(v41 + 16);
    v70 = *(v41 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_1C6F7ED9C(v70 > 1, v71 + 1, 1, v66, v67, v68, v69);
      v41 = v95;
    }

    *(v41 + 16) = v71 + 1;
    v72 = v41 + 16 * v71;
    *(v72 + 32) = v64;
    *(v72 + 40) = v65;
    v46 = sub_1C733E77C(v46, v48, v91 & 1, v53);
    v48 = v73;
    v36 = v74;
    --v40;
    v13 = v53;
    if (!v40)
    {

      sub_1C6F9ED50(v46, v48, v36 & 1);
      v37 = v83;
      v35 = v84;
      LOBYTE(v36) = v82;
      v39 = v81;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1C733CAC4()
{
  OUTLINED_FUNCTION_33();
  v57 = v0;
  v55 = v1;
  v3 = v2;
  v5 = v4;
  v56 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v58 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v54 = v9 - v8;
  v10 = 0;
  v11 = *(v5 + 16);
  v12 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v13 = 72 * v10 + 32;
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    memcpy(v60, (v5 + v13), 0x41uLL);
    if (__OFADD__(v10, 1))
    {
      goto LABEL_38;
    }

    if ((v60[3] & 1) == 0)
    {
      sub_1C7025F3C(v60, v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D97C();
        v12 = v61;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v15);
        sub_1C716D97C();
        v12 = v61;
      }

      *(v12 + 16) = v16 + 1;
      memcpy((v12 + 72 * v16 + 32), v60, 0x41uLL);
      ++v10;
      goto LABEL_2;
    }

    ++v10;
    v13 += 72;
  }

  v17 = sub_1C71B9E20(v12);

  v18 = 0;
  v19 = *(v3 + 16);
  v20 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v21 = 72 * v18 + 32;
  for (i = v18; v19 != i; ++i)
  {
    if (i >= v19)
    {
      goto LABEL_39;
    }

    memcpy(v60, (v3 + v21), 0x42uLL);
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_40;
    }

    if ((v60[3] & 1) == 0)
    {
      sub_1C7025FF8(v60, v59);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v61 = v20;
      if ((v23 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D940();
        v20 = v61;
      }

      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v24);
        sub_1C716D940();
        v20 = v61;
      }

      *(v20 + 16) = v25 + 1;
      memcpy((v20 + 72 * v25 + 32), v60, 0x42uLL);
      goto LABEL_14;
    }

    v21 += 72;
  }

  v26 = sub_1C71B9F20(v20);

  v60[0] = v17;
  sub_1C6FD2404(v26);
  v53 = *(v58 + 104);
  v53(v54, *MEMORY[0x1E69C1920], v56);
  OUTLINED_FUNCTION_22_55();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6_83();
  *(v28 - 32) = 0;
  *(v28 - 24) = v54;
  *(v28 - 16) = v57;
  *(v28 - 8) = v55;
  v29 = sub_1C6FD9E70();

  v30 = *(v58 + 8);
  v30(v54, v56);
  v31 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_logger;
  sub_1C75504FC();
  v32 = sub_1C754FEEC();
  v33 = sub_1C75511BC();
  v34 = v30;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = OUTLINED_FUNCTION_41_0();
    *v35 = 134217984;
    *(v35 + 4) = *(v29 + 16);

    _os_log_impl(&dword_1C6F5C000, v32, v33, "Found %ld required character features", v35, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v36 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v60[0] = v36;
  OUTLINED_FUNCTION_0_142();
  sub_1C733E86C(v29, v37, 0, v38, v60);
  v39 = v60[0];
  if (*(v60[0] + 16))
  {
    sub_1C733DE1C(v5, v3, v55);
    v40 = (v53)(v54, *MEMORY[0x1E69C1918], v56);
    MEMORY[0x1EEE9AC00](v40);
    OUTLINED_FUNCTION_6_83();
    *(v41 - 32) = 0;
    *(v41 - 24) = v54;
    *(v41 - 16) = v57;
    *(v41 - 8) = v55;
    v42 = sub_1C6FD9E70();

    v34(v54, v56);
    sub_1C75504FC();
    v43 = sub_1C754FEEC();
    v44 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v44))
    {
      v45 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_68_1(v45, 3.852e-34);
      OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v46, v47, "Found %ld prioritized character features");
      OUTLINED_FUNCTION_0_60();
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v39;
    OUTLINED_FUNCTION_0_142();
    sub_1C733E86C(v42, v51, 0, v52, v60);
  }

  else
  {
    v48 = sub_1C754FEEC();
    v49 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C6F5C000, v48, (v57 + v31), "Did not create prioritized character features because no character query tokens were found", v50, 2u);
      OUTLINED_FUNCTION_109();
    }
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C733D0D4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = *(v2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = 0;
LABEL_2:
  v12 = 56 * v11 + 32;
  while (v9 != v11)
  {
    if (v11 >= v9)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v13 = *(v2 + v12 + 16);
    v48 = *(v2 + v12);
    v49 = v13;
    v50 = *(v2 + v12 + 32);
    v51 = *(v2 + v12 + 48);
    v0 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_24;
    }

    if ((BYTE8(v50) & 1) == 0)
    {
      sub_1C70260B4(&v48, &v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716DD2C();
        v10 = v52;
      }

      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v15);
        sub_1C716DD2C();
        v10 = v52;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 56 * v16;
      v18 = v48;
      v19 = v49;
      v20 = v50;
      *(v17 + 80) = v51;
      *(v17 + 48) = v19;
      *(v17 + 64) = v20;
      *(v17 + 32) = v18;
      v11 = v0;
      goto LABEL_2;
    }

    ++v11;
    v12 += 56;
  }

  v21 = &unk_1C755C000;
  if (*(v10 + 16) <= 1uLL)
  {

    v30 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    sub_1C71BA020(v10);

    v22 = OUTLINED_FUNCTION_23_41();
    v23(v22);
    OUTLINED_FUNCTION_22_55();
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_6_83();
    OUTLINED_FUNCTION_18_50(v25);
    v26 = sub_1C6FD9E70();

    (*(v4 + 8))(v8, v0);
    sub_1C75504FC();
    v27 = sub_1C754FEEC();
    v28 = sub_1C75511BC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_41_0();
      *v29 = 134217984;
      *(v29 + 4) = *(v26 + 16);

      _os_log_impl(&dword_1C6F5C000, v27, v28, "Found %ld required location features", v29, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v31 = MEMORY[0x1E69E7CC8];
    swift_isUniquelyReferenced_nonNull_native();
    *&v48 = v31;
    OUTLINED_FUNCTION_0_142();
    sub_1C733E86C(v26, v32, 0, v33, &v48);
    v30 = v48;
    v21 = &unk_1C755C000;
  }

  sub_1C733E088(v2);
  sub_1C71BA020(v34);

  v35 = OUTLINED_FUNCTION_23_41();
  v36(v35);
  OUTLINED_FUNCTION_22_55();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_83();
  OUTLINED_FUNCTION_18_50(v38);
  v39 = sub_1C6FD9E70();

  (*(v4 + 8))(v8, v0);
  sub_1C75504FC();
  v40 = sub_1C754FEEC();
  v41 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v41))
  {
    v42 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_68_1(v42, COERCE_FLOAT(v21[397]));
    OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v43, v44, "Found %ld prioritized location features");
    OUTLINED_FUNCTION_0_60();
  }

  else
  {
  }

  swift_isUniquelyReferenced_nonNull_native();
  *&v48 = v30;
  OUTLINED_FUNCTION_0_142();
  sub_1C733E86C(v39, v45, 0, v46, &v48);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C733D520()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(v4 + 16);
  v14 = v4 - 8;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v16 = (v14 + 40 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

    v18 = *(v16 + 64);
    ++v12;
    v16 += 5;
    if ((v18 & 1) == 0)
    {
      v35 = v7;
      v19 = v16[1];
      v30 = v16[2];
      v31 = *v16;
      v32 = *(v16 + 26);
      v33 = *(v16 + 25);
      v20 = v16[4];
      sub_1C75504FC();
      sub_1C75504FC();
      v34 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C716DBAC();
      }

      v21 = *(v15 + 16);
      if (v21 >= *(v15 + 24) >> 1)
      {
        sub_1C716DBAC();
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 40 * v21;
      *(v22 + 32) = v31;
      *(v22 + 40) = v19;
      *(v22 + 48) = v30;
      *(v22 + 56) = 0;
      *(v22 + 57) = v33;
      *(v22 + 58) = v32;
      *(v22 + 64) = v20;
      v12 = v17;
      v7 = v35;
      v14 = v34;
      goto LABEL_2;
    }
  }

  sub_1C71BA730(v15);

  (*(v7 + 104))(v11, *MEMORY[0x1E69C1920], v5);
  OUTLINED_FUNCTION_22_55();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_83();
  *(v24 - 32) = 2;
  *(v24 - 24) = v11;
  *(v24 - 16) = v0;
  *(v24 - 8) = v2;
  sub_1C6FD9E70();

  (*(v7 + 8))(v11, v5);
  sub_1C75504FC();
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v26))
  {
    v27 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_29_34(v27, 3.852e-34);
    OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v28, v29, "Found %ld required event features");
    OUTLINED_FUNCTION_0_60();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C733D80C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(v4 + 16);
  v14 = v4 + 32;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v16 = (v14 + (v12 << 6));
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v17 = v16[1];
    v36 = *v16;
    v37 = v17;
    v18 = v16[3];
    v38 = v16[2];
    v39 = v18;
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_19;
    }

    if ((BYTE8(v37) & 1) == 0 && *(&v39 + 1))
    {
      sub_1C7026698(&v36, &v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      v34 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716DBE8();
        v15 = v40;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v21);
        sub_1C716DBE8();
        v15 = v40;
      }

      *(v15 + 16) = v22 + 1;
      v23 = (v15 + (v22 << 6));
      v24 = v36;
      v25 = v37;
      v26 = v39;
      v23[4] = v38;
      v23[5] = v26;
      v23[2] = v24;
      v23[3] = v25;
      v12 = v19;
      v2 = v34;
      goto LABEL_2;
    }

    ++v12;
    v16 += 4;
  }

  sub_1C71BA624(v15);

  (*(v7 + 104))(v11, *MEMORY[0x1E69C1920], v5);
  OUTLINED_FUNCTION_22_55();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6_83();
  *(v28 - 32) = 3;
  *(v28 - 24) = v11;
  *(v28 - 16) = v0;
  *(v28 - 8) = v2;
  sub_1C6FD9E70();

  (*(v7 + 8))(v11, v5);
  sub_1C75504FC();
  v29 = sub_1C754FEEC();
  v30 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v30))
  {
    v31 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_29_34(v31, 3.852e-34);
    OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v32, v33, "Found %ld required trip features");
    OUTLINED_FUNCTION_0_60();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C733DAB0(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v36 = a1;
  v9 = type metadata accessor for Hastings.Feature(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 64))(v13, v14);
  v17 = v16;
  v18 = *(v10 + 32);
  v19 = sub_1C754F58C();
  (*(*(v19 - 8) + 16))(&v12[v18], a4, v19);
  *v12 = v15;
  *(v12 + 1) = v17;
  v12[16] = a3;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = *(v21 + 56);
  sub_1C75504FC();
  if (!v22(v20, v21))
  {
    sub_1C75504FC();
    v27 = sub_1C754FEEC();
    v28 = sub_1C755119C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      v31 = sub_1C6F765A4(v15, v17, &v38);

      *(v29 + 4) = v31;
      v32 = "Extended token %s missing assetUUIDs!";
LABEL_8:
      _os_log_impl(&dword_1C6F5C000, v27, v28, v32, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1CCA5F8E0](v30, -1, -1);
      MEMORY[0x1CCA5F8E0](v29, -1, -1);

      return sub_1C733ECB0(v12, type metadata accessor for Hastings.Feature);
    }

LABEL_9:

    return sub_1C733ECB0(v12, type metadata accessor for Hastings.Feature);
  }

  sub_1C706D154();
  sub_1C7069A44();
  v24 = v23;
  if (!*(v23 + 16))
  {

    sub_1C75504FC();
    v27 = sub_1C754FEEC();
    v28 = sub_1C75511BC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      v33 = sub_1C6F765A4(v15, v17, &v38);

      *(v29 + 4) = v33;
      v32 = "Extended token %s has no relevant asset left after scoping, not using as a required feature";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v25 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v25;
  sub_1C6FC9488(v24, v12, isUniquelyReferenced_nonNull_native);
  *v25 = v38;
  return sub_1C733ECB0(v12, type metadata accessor for Hastings.Feature);
}

void sub_1C733DE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 32;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v7 + 72 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    memcpy(__dst, v9, 0x41uLL);
    if (__OFADD__(v5, 1))
    {
      goto LABEL_27;
    }

    if (__dst[3])
    {
      sub_1C7025F3C(__dst, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D97C();
        v8 = v30;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v11);
        sub_1C716D97C();
        v8 = v30;
      }

      *(v8 + 16) = v12 + 1;
      memcpy((v8 + 72 * v12 + 32), __dst, 0x41uLL);
      ++v5;
      goto LABEL_2;
    }

    ++v5;
    v9 += 72;
  }

  sub_1C733E1C0(v8, a3);
  v14 = v13;

  v15 = 0;
  v16 = *(a2 + 16);
  v17 = a2 + 32;
  v18 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v19 = (v17 + 72 * v15);
  for (i = v15; v16 != i; ++i)
  {
    if (i >= v16)
    {
      goto LABEL_28;
    }

    memcpy(__dst, v19, 0x42uLL);
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    if (__dst[3])
    {
      sub_1C7025FF8(__dst, v28);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v30 = v18;
      if ((v21 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D940();
        v18 = v30;
      }

      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v22);
        sub_1C716D940();
        v18 = v30;
      }

      *(v18 + 16) = v23 + 1;
      memcpy((v18 + 72 * v23 + 32), __dst, 0x42uLL);
      goto LABEL_14;
    }

    v19 += 72;
  }

  sub_1C733E414(v18, a3);
  v25 = v24;

  v26 = sub_1C71B9E20(v14);

  v27 = sub_1C71B9F20(v25);

  __dst[0] = v26;
  sub_1C6FD2404(v27);
}

void sub_1C733E088(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 56 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v6 = v5[1];
    v15 = *v5;
    v16 = v6;
    v17 = v5[2];
    v18 = *(v5 + 6);
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    if (BYTE8(v17))
    {
      sub_1C70260B4(&v15, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DD2C();
        v4 = v19;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_1C716DD2C();
        v4 = v19;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 56 * v9;
      v11 = v15;
      v12 = v16;
      v13 = v17;
      *(v10 + 80) = v18;
      *(v10 + 48) = v12;
      *(v10 + 64) = v13;
      *(v10 + 32) = v11;
      v1 = v7;
      goto LABEL_2;
    }

    ++v1;
    v5 = (v5 + 56);
  }
}

void sub_1C733E1C0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v50 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    OUTLINED_FUNCTION_17_66();
    sub_1C716D97C();
    v7 = *(v3 + 72);
    OUTLINED_FUNCTION_13_66();
    do
    {
      memcpy(__dst, v4, 0x41uLL);
      v8 = __dst[4];
      v9 = __dst[5];
      v10 = __dst[1];
      v58 = __dst[0];
      sub_1C7025F3C(__dst, &v65);
      sub_1C75504FC();
      sub_1C75504FC();
      v11 = objc_autoreleasePoolPush();
      OUTLINED_FUNCTION_19_60(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, SHIDWORD(v46), v48, v50, v52, v54, v56, v58, v60, v62, v64);
      objc_autoreleasePoolPop(v5);
      v19 = v65[2];
      v61 = v10;
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        OUTLINED_FUNCTION_15_65(v21, v22, v23, v24, v25, v26, v27, v28, v41, v43, v45, v47, v49, v51);
        v30 = v29;
        sub_1C6F61E88(v65);
        if (v30 != v19)
        {
          __break(1u);

          __break(1u);
          return;
        }
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      v31 = v8;
      v65 = v20;

      sub_1C70401E8();

      LODWORD(v57) = LOWORD(__dst[6]);
      HIDWORD(v57) = LOBYTE(__dst[8]);
      LODWORD(v55) = BYTE3(__dst[6]);
      HIDWORD(v55) = BYTE2(__dst[6]);
      LODWORD(v53) = BYTE5(__dst[6]);
      HIDWORD(v53) = BYTE4(__dst[6]);
      v32 = __dst[2];
      v33 = __dst[3];
      sub_1C7025F74(__dst);
      v66 = v33;
      v68 = v7;
      v35 = *(v7 + 16);
      v34 = *(v7 + 24);
      v5 = (v35 + 1);
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v34);
        v43 = v39;
        sub_1C716D97C();
        v7 = v68;
      }

      *(v7 + 16) = v5;
      v36 = v7 + 72 * v35;
      *(v36 + 32) = v59;
      *(v36 + 40) = v61;
      *(v36 + 48) = v32;
      *(v36 + 56) = v33;
      OUTLINED_FUNCTION_28_30(v36, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63);
      *(v37 + 64) = v31;
      *(v37 + 72) = v9;
      *(v37 + 80) = v56;
      *(v37 + 82) = BYTE4(v54);
      *(v37 + 83) = v54;
      *(v37 + 84) = BYTE4(v52);
      *(v37 + 85) = v52;
      *(v37 + 86) = 0;
      *(v37 + 88) = v38;
      *(v37 + 96) = BYTE4(v56);
      v4 += 72;
      --v6;
    }

    while (v6);
  }
}

void sub_1C733E414(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v50 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    OUTLINED_FUNCTION_17_66();
    sub_1C716D940();
    v7 = *(v3 + 72);
    OUTLINED_FUNCTION_13_66();
    do
    {
      memcpy(__dst, v4, 0x42uLL);
      v8 = __dst[4];
      v9 = __dst[5];
      v10 = __dst[1];
      v56 = __dst[0];
      sub_1C7025FF8(__dst, &v65);
      sub_1C75504FC();
      sub_1C75504FC();
      v11 = objc_autoreleasePoolPush();
      OUTLINED_FUNCTION_19_60(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, SHIDWORD(v46), v48, v50, v52, v54, v56, v58, v60, v62, v64);
      objc_autoreleasePoolPop(v5);
      v19 = v65[2];
      v59 = v4;
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        OUTLINED_FUNCTION_15_65(v21, v22, v23, v24, v25, v26, v27, v28, v41, v43, v45, v47, v49, v51);
        v30 = v29;
        sub_1C6F61E88(v65);
        if (v30 != v19)
        {
          __break(1u);

          __break(1u);
          return;
        }
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      v31 = v10;
      v65 = v20;

      sub_1C70401E8();

      LODWORD(v55) = LOBYTE(__dst[8]);
      HIDWORD(v55) = BYTE1(__dst[8]);
      HIDWORD(v53) = LOWORD(__dst[6]);
      v32 = __dst[2];
      v33 = __dst[3];
      sub_1C7026030(__dst);
      v66 = v33;
      v68 = v7;
      v35 = *(v7 + 16);
      v34 = *(v7 + 24);
      v5 = (v35 + 1);
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v34);
        v43 = v39;
        sub_1C716D940();
        v7 = v68;
      }

      *(v7 + 16) = v5;
      v36 = v7 + 72 * v35;
      *(v36 + 32) = v57;
      *(v36 + 40) = v31;
      *(v36 + 48) = v32;
      *(v36 + 56) = v33;
      OUTLINED_FUNCTION_28_30(v36, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63);
      *(v37 + 64) = v8;
      *(v37 + 72) = v9;
      *(v37 + 80) = WORD2(v52);
      *(v37 + 82) = 0;
      *(v37 + 87) = v62;
      *(v37 + 83) = HIDWORD(v60);
      *(v37 + 88) = v38;
      *(v37 + 96) = v54;
      *(v37 + 97) = BYTE4(v54);
      v4 = (v58 + 72);
      --v6;
    }

    while (v6);
  }
}

uint64_t Hastings.FeatureProvider.deinit()
{
  v1 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  memcpy(__dst, (v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements), 0x130uLL);
  sub_1C6FE0DC0(__dst);
  sub_1C733ECB0(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storySession, type metadata accessor for StoryGenerationSession);

  v3 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyPhotoLibraryContext);

  return v0;
}

uint64_t Hastings.FeatureProvider.__deallocating_deinit()
{
  Hastings.FeatureProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C733E77C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1C755162C();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C733E7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC20, &unk_1C75891E0) + 48);
  result = sub_1C73DB440(a2, a1, *(a1 + v4));
  *(a2 + v5) = result;
  return result;
}

void sub_1C733E86C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v36[0] = type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v43 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC18, &qword_1C75841D8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v36 - v15;
  sub_1C6F78034(v41);
  v37 = v41[0];
  v38 = v41[1];
  v39 = v41[2];
  v40 = v42;
  v36[2] = a1;
  sub_1C75504FC();
  v36[1] = a3;

  while (1)
  {
    sub_1C73DAE4C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC20, &unk_1C75891E0);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1C6F61E88(v37);

      return;
    }

    v18 = *(v17 + 48);
    OUTLINED_FUNCTION_1_108();
    sub_1C733EB78(v16, v13, v19);
    v20 = *&v16[v18];
    v21 = *a5;
    v23 = sub_1C6FC27A8();
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (*(v21 + 24) >= v26)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152A8, &qword_1C755CB90);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7354CE0(v26, a4 & 1);
      v28 = sub_1C6FC27A8();
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *a5;
    if (v27)
    {
      sub_1C733ECB0(v13, type metadata accessor for Hastings.Feature);
      *(*(v30 + 56) + 8 * v23) = v20;

      a4 = 1;
    }

    else
    {
      *(v30 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      OUTLINED_FUNCTION_1_108();
      sub_1C733EB78(v13, v31, v32);
      *(*(v30 + 56) + 8 * v23) = v20;
      v33 = *(v30 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_15;
      }

      *(v30 + 16) = v35;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C733EB78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C733EBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C733EC48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C733ECB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for Hastings.FeatureProvider(uint64_t a1)
{
  result = qword_1EC21AC08;
  if (!qword_1EC21AC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C733ED5C(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StoryGenerationSession(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_33()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1C733EF30()
{
  result = [objc_opt_self() promptValidationAssetCountThreshold];
  qword_1EC21AC28 = result;
  return result;
}

uint64_t static PromptSuggestionPersister.maxAssetsToPersist.getter()
{
  if (qword_1EC214020 != -1)
  {
    swift_once();
  }

  return qword_1EC21AC28;
}

uint64_t static PromptSuggestionPersister.supportedSources.getter()
{
  if (qword_1EDD091D8 != -1)
  {
    OUTLINED_FUNCTION_0_143();
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t PromptSuggestionPersister.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t PromptSuggestionPersister.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PromptSuggestionPersister.init(photoLibrary:)(a1);
  return v2;
}

uint64_t PromptSuggestionPersister.init(photoLibrary:)(uint64_t a1)
{
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  v10 = sub_1C755146C();
  *(v1 + 16) = a1;
  *(v1 + 24) = v10;
  v11 = v10;
  sub_1C754FF2C();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger, v9, v3);
  return v1;
}

void PromptSuggestionPersister.persistValidatedPromptSuggestions(_:eventRecorder:)(uint64_t a1, void *a2)
{
  v4 = v3;
  v39 = *v2;
  v7 = type metadata accessor for PromptSuggestion(0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v36 = v15;
  v37 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v18 = v17 - v16;
  v38 = a2;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v35 = v18;
  sub_1C754F1CC();
  sub_1C75504FC();
  v42 = v2;
  v19 = sub_1C754FEEC();
  v20 = sub_1C75511BC();
  v21 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_13_3();
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1C6F5C000, v19, v20, "Persisting %ld validated prompt suggestions", v23, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_1();
  v40 = swift_allocObject();
  *(v40 + 16) = MEMORY[0x1E69E7CC8];
  v24 = static PromptSuggestionPersister.uniqueSupportedPromptSuggestions(from:)(a1);
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();
  v27 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_13_3();
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v24 + 16);
    _os_log_impl(&dword_1C6F5C000, v25, v26, "Persisting %ld allowed prompt suggestions", v29, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v30 = sub_1C733F9D0(v24);
  OUTLINED_FUNCTION_27_1();
  v31 = swift_allocObject();
  v32 = 0;
  *(v31 + 16) = MEMORY[0x1E69E7CC0];
  v33 = *(v24 + 16);
  while (1)
  {
    if (v33 == v32)
    {

      swift_beginAccess();
      sub_1C75504FC();

      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_1C754F1AC();
      (*(v36 + 8))(v35, v37);
      return;
    }

    if (v32 >= *(v24 + 16))
    {
      break;
    }

    sub_1C71592A8(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, v13);
    v34 = objc_autoreleasePoolPush();
    sub_1C733FC8C(v42, v13, v30, v40, v31, v39, v41);
    if (v4)
    {
      sub_1C715930C(v13);

      objc_autoreleasePoolPop(v34);

      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_1C754F1AC();
      (*(v36 + 8))(v35, v37);
      return;
    }

    v4 = 0;
    ++v32;
    sub_1C715930C(v13);
    objc_autoreleasePoolPop(v34);
  }

  __break(1u);
}

uint64_t static PromptSuggestionPersister.uniqueSupportedPromptSuggestions(from:)(uint64_t a1)
{
  v2 = type metadata accessor for PromptSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - v6;
  v45 = MEMORY[0x1E69E7CD0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v40 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v43 = a1 + v40;
    v42 = MEMORY[0x1E69E7CC0];
    v10 = *(v5 + 72);
    do
    {
      sub_1C71592A8(v43 + v10 * v9, v7);
      if (qword_1EDD091D8 != -1)
      {
        OUTLINED_FUNCTION_0_143();
        swift_once();
      }

      v11 = off_1EDD091E0;
      if (*(off_1EDD091E0 + 2))
      {
        v12 = v7[16];
        sub_1C7551F3C();
        MEMORY[0x1CCA5E460](v12);
        v13 = sub_1C7551FAC();
        v14 = ~(-1 << v11[32]);
        while (1)
        {
          v15 = v13 & v14;
          if (((*&v11[(((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v13 & v14)) & 1) == 0)
          {
            break;
          }

          v13 = v15 + 1;
          if (*(*(v11 + 6) + v15) == v12)
          {
            v16 = v45;
            v17 = *(v7 + 13);
            v18 = *(v7 + 14);
            if (*(v45 + 16))
            {
              sub_1C7551F3C();
              sub_1C75505AC();
              v19 = sub_1C7551FAC();
              v20 = ~(-1 << *(v16 + 32));
              while (1)
              {
                v21 = v19 & v20;
                if (((*(v16 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
                {
                  break;
                }

                v22 = (*(v16 + 48) + 16 * v21);
                if (*v22 != v17 || v22[1] != v18)
                {
                  v24 = sub_1C7551DBC();
                  v19 = v21 + 1;
                  if ((v24 & 1) == 0)
                  {
                    continue;
                  }
                }

                goto LABEL_23;
              }
            }

            sub_1C71592A8(v7, v41);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v25 = v42;
            }

            else
            {
              v28 = OUTLINED_FUNCTION_24_0();
              sub_1C6FB3648(v28, v29, v30, v31);
              v25 = v32;
            }

            v27 = *(v25 + 16);
            v26 = *(v25 + 24);
            if (v27 >= v26 >> 1)
            {
              v33 = OUTLINED_FUNCTION_15_2(v26);
              sub_1C6FB3648(v33, v34, v35, v36);
              v25 = v37;
            }

            *(v25 + 16) = v27 + 1;
            v42 = v25;
            sub_1C7159368(v41, v25 + v40 + v27 * v10);
            sub_1C75504FC();
            sub_1C70F082C(v44, v17, v18);

            break;
          }
        }
      }

LABEL_23:
      sub_1C715930C(v7);
      ++v9;
    }

    while (v9 != v8);
    v38 = v42;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  return v38;
}

uint64_t sub_1C733F9D0(uint64_t a1)
{
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v35 = v1;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v11, 0, v5, v6, v7, v8);
    v12 = v37;
    v13 = *(v4 + 80);
    v34 = a1;
    v14 = a1 + ((v13 + 32) & ~v13);
    v15 = *(v4 + 72);
    v36 = v11;
    v16 = v11;
    do
    {
      sub_1C71592A8(v14, v10);
      v17 = *(v10 + 13);
      v18 = *(v10 + 14);
      sub_1C75504FC();
      sub_1C715930C(v10);
      v37 = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C6F7ED9C(v23 > 1, v24 + 1, 1, v19, v20, v21, v22);
        v12 = v37;
      }

      *(v12 + 16) = v24 + 1;
      v25 = v12 + 16 * v24;
      *(v25 + 32) = v17;
      *(v25 + 40) = v18;
      v14 += v15;
      --v16;
    }

    while (v16);
    v1 = v35;
    v11 = v36;
  }

  v26 = *(v1 + 16);
  if (qword_1EDD091D8 != -1)
  {
    swift_once();
  }

  v27 = sub_1C75504FC();
  v28 = sub_1C71CDCE0(v27);
  v29 = static PromptSuggestionReader.phSuggestionByPromptText(_:in:sources:)(v12, v26, v28);

  sub_1C75504FC();
  sub_1C75504FC();
  v30 = sub_1C754FEEC();
  v31 = sub_1C75511BC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = *(v29 + 16);

    *(v32 + 12) = 2048;
    *(v32 + 14) = v11;

    _os_log_impl(&dword_1C6F5C000, v30, v31, "Found %ld PHSuggestions for %ld PromptSuggestions", v32, 0x16u);
    MEMORY[0x1CCA5F8E0](v32, -1, -1);
  }

  else
  {
  }

  return v29;
}

void sub_1C733FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v80 = a5;
  v81 = a7;
  v8 = v7;
  v79 = a4;
  v89 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for PromptSuggestion(0);
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C71592A8(a2, &v72 - v17);
  v75 = v19;
  v20 = sub_1C754FEEC();
  v21 = sub_1C75511BC();
  v22 = os_log_type_enabled(v20, v21);
  v82 = v7;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v73 = a3;
    v25 = v24;
    aBlock = v24;
    *v23 = 136315138;
    PromptSuggestion.description.getter();
    v27 = v26;
    v74 = a2;
    v28 = v13;
    v29 = a1;
    v31 = v30;
    sub_1C715930C(v18);
    v32 = sub_1C6F765A4(v27, v31, &aBlock);
    a1 = v29;
    v13 = v28;
    a2 = v74;

    *(v23 + 4) = v32;
    _os_log_impl(&dword_1C6F5C000, v20, v21, "Persisting suggestion %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v33 = v25;
    a3 = v73;
    MEMORY[0x1CCA5F8E0](v33, -1, -1);
    v34 = v23;
    v8 = v82;
    MEMORY[0x1CCA5F8E0](v34, -1, -1);
  }

  else
  {

    sub_1C715930C(v18);
  }

  v35 = sub_1C6FE376C(*(a2 + 104), *(a2 + 112), a3);
  v36 = v35;
  if (!v35 || [v35 state] != 3)
  {
    if (*(a2 + 56) == 1)
    {
      if (qword_1EC214020 != -1)
      {
        swift_once();
      }

      v49 = a1;
      sub_1C7340384(a2, qword_1EC21AC28);
      v51 = v8;
      if (v8)
      {
LABEL_18:

        *v81 = v51;
        return;
      }

      v52 = v50;
      v76 = v36;
      v82 = 0;
    }

    else
    {
      v76 = v36;
      v49 = a1;
      v52 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    }

    v75 = *(v49 + 16);
    v53 = v78;
    sub_1C71592A8(a2, v78);
    v54 = (*(v77 + 80) + 24) & ~*(v77 + 80);
    v55 = (v13 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = v49;
    sub_1C7159368(v53, v58 + v54);
    *(v58 + v55) = v52;
    v59 = v80;
    *(v58 + v56) = v79;
    v60 = v76;
    *(v58 + v57) = v76;
    *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;
    v61 = v59;
    v87 = sub_1C7343F70;
    v88 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_1C6FD8F68;
    v86 = &block_descriptor_30_1;
    v62 = _Block_copy(&aBlock);
    v63 = v60;
    v36 = v52;

    aBlock = 0;
    v64 = v75;
    LODWORD(v54) = [v75 performChangesAndWait:v62 error:&aBlock];
    _Block_release(v62);
    v65 = aBlock;
    if (v54)
    {
      v66 = swift_allocObject();
      *(v66 + 16) = v61;
      *(v66 + 24) = v49;
      v87 = sub_1C7344010;
      v88 = v66;
      aBlock = MEMORY[0x1E69E9820];
      v84 = 1107296256;
      v85 = sub_1C6FD8F68;
      v86 = &block_descriptor_36;
      v67 = _Block_copy(&aBlock);

      v68 = v65;

      aBlock = 0;
      v69 = [v64 performChangesAndWait:v67 error:&aBlock];
      _Block_release(v67);
      v65 = aBlock;
      if (v69)
      {
        v70 = aBlock;

        return;
      }
    }

    v71 = v65;
    v51 = sub_1C754DBEC();

    swift_willThrow();
    goto LABEL_18;
  }

  v37 = v76;
  sub_1C71592A8(a2, v76);
  v38 = v36;
  v39 = sub_1C754FEEC();
  v40 = sub_1C75511BC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock = v81;
    *v41 = 136315394;
    v43 = PromptSuggestion.shortDescription.getter();
    v45 = v44;
    sub_1C715930C(v37);
    v46 = sub_1C6F765A4(v43, v45, &aBlock);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v38;
    *v42 = v36;
    v47 = v38;
    _os_log_impl(&dword_1C6F5C000, v39, v40, "Skip persisting %s. A matching PHSuggestion %@ is used by user", v41, 0x16u);
    sub_1C6FC15D8(v42);
    MEMORY[0x1CCA5F8E0](v42, -1, -1);
    v48 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x1CCA5F8E0](v48, -1, -1);
    MEMORY[0x1CCA5F8E0](v41, -1, -1);
  }

  else
  {

    sub_1C715930C(v37);
  }
}

void sub_1C7340384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_autoreleasePoolPush();
  sub_1C734302C(v3, a1, a2, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

void sub_1C7340414(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = PromptSuggestionPersister.suggestionCreationRequest(for:assets:)(a2, a3);
  if (v14)
  {
    v15 = v14;
    v44 = a4;
    sub_1C71592A8(a2, v13);
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = v15;
      v19 = v18;
      v20 = swift_slowAlloc();
      v42[0] = a5;
      v42[1] = a6;
      v21 = v20;
      v46[0] = v20;
      *v19 = 136315138;
      v22 = PromptSuggestion.shortDescription.getter();
      v24 = v23;
      sub_1C715930C(v13);
      v25 = sub_1C6F765A4(v22, v24, v46);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Persisted suggestion for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v26 = v21;
      a5 = v42[0];
      MEMORY[0x1CCA5F8E0](v26, -1, -1);
      v27 = v19;
      v15 = v43;
      MEMORY[0x1CCA5F8E0](v27, -1, -1);
    }

    else
    {

      sub_1C715930C(v13);
    }

    v28 = [v15 placeholderForCreatedSuggestion];
    if (v28 && (sub_1C6FCA214(v28), v29))
    {
      v30 = v44;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v30 + 16);
      sub_1C6FC9608();
      *(v30 + 16) = v45;
      swift_endAccess();
      if (!a5)
      {
LABEL_14:

        return;
      }

      swift_beginAccess();
      v31 = a5;
      MEMORY[0x1CCA5D040]();
      sub_1C6FB6328();
      sub_1C7550BEC();
      swift_endAccess();
      v32 = v31;
      v33 = sub_1C754FEEC();
      v34 = sub_1C75511BC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = a5;
        v38 = v36;
        *v35 = 138412290;
        *(v35 + 4) = v32;
        *v36 = v37;
        v39 = v32;
        _os_log_impl(&dword_1C6F5C000, v33, v34, "Deleted old suggestion %@.", v35, 0xCu);
        sub_1C6FC15D8(v38);
        MEMORY[0x1CCA5F8E0](v38, -1, -1);
        MEMORY[0x1CCA5F8E0](v35, -1, -1);

        v33 = v15;
        v15 = v39;
      }

      else
      {
      }
    }

    else
    {
      v33 = sub_1C754FEEC();
      v40 = sub_1C755119C();
      if (os_log_type_enabled(v33, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1C6F5C000, v33, v40, "error capturing placeholder suggestion UUID", v41, 2u);
        MEMORY[0x1CCA5F8E0](v41, -1, -1);
      }
    }

    goto LABEL_14;
  }
}

id PromptSuggestionPersister.suggestionCreationRequest(for:assets:)(_BYTE *a1, uint64_t a2)
{
  v62 = a2;
  v65[4] = *MEMORY[0x1E69E9840];
  v63 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  v10 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_3();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  sub_1C754DF3C();
  LOBYTE(v65[0]) = a1[16];
  v20 = PromptSuggestion.Source.suggestionSubtype.getter();
  v64 = v19;
  if ((v20 & 0x10000) != 0)
  {
    sub_1C71592A8(a1, v9);
    sub_1C71592A8(a1, v6);
    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_23_1();
      v65[0] = swift_slowAlloc();
      *v32 = 136315394;
      v33 = 0xE400000000000000;
      v34 = 1701736270;
      switch(v9[16])
      {
        case 1:
          v33 = 0xE600000000000000;
          v34 = 0x636961736F4DLL;
          break;
        case 2:
          v33 = 0xE600000000000000;
          v34 = 0x686372616553;
          break;
        case 3:
          v33 = 0xE90000000000006CLL;
          v34 = 0x616369736D696857;
          break;
        case 4:
          v33 = 0xEA00000000006C61;
          v34 = 0x75747865746E6F43;
          break;
        default:
          break;
      }

      sub_1C715930C(v9);
      v54 = sub_1C6F765A4(v34, v33, v65);

      *(v32 + 4) = v54;
      *(v32 + 12) = 2080;
      PromptSuggestion.description.getter();
      v56 = v55;
      v58 = v57;
      sub_1C715930C(v6);
      v59 = sub_1C6F765A4(v56, v58, v65);

      *(v32 + 14) = v59;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Failed to persist suggestion, unknown subtype for source %s : %s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      sub_1C715930C(v6);
      sub_1C715930C(v9);
    }

    (*(v12 + 8))(v64, v10);
    return 0;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = sub_1C754DECC();
  (*(v12 + 16))(v2, v19, v10);
  sub_1C754DE7C();
  v24 = sub_1C754DECC();
  v25 = *(v12 + 8);
  v25(v16, v10);
  v26 = [v22 creationRequestForSuggestionWithType:13 subtype:v21 keyAssets:v62 representativeAssets:0 creationDate:v23 relevantUntilDate:v24 version:8];

  v27 = sub_1C755065C();
  [v26 setSubtitle_];

  v28 = &selRef_markActive;
  if (!a1[56])
  {
    v28 = &selRef_markRetired;
  }

  [v26 *v28];
  v29 = a1[17] & 0xFE;
  v62 = v10;
  if (v29 == 2)
  {
    [v26 markAccepted];
  }

  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C7343B20();
  v35 = sub_1C754D78C();
  v37 = v36;

  v38 = objc_opt_self();
  v39 = sub_1C754DDCC();
  v65[0] = 0;
  v40 = [v38 JSONObjectWithData:v39 options:0 error:v65];

  if (!v40)
  {
    v44 = v65[0];
    v45 = sub_1C754DBEC();

LABEL_16:
    swift_willThrow();
    sub_1C6FC1640(v35, v37);
    v46 = v45;
    v47 = sub_1C754FEEC();
    v48 = sub_1C755119C();

    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_13_3();
      v49 = swift_slowAlloc();
      v50 = v25;
      v51 = swift_slowAlloc();
      *v49 = 138412290;
      v52 = v45;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_1C6F5C000, v47, v48, "error serializing prompt suggestion %@", v49, 0xCu);
      sub_1C6FC15D8(v51);
      v25 = v50;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v25(v64, v62);
    return 0;
  }

  v41 = v65[0];
  sub_1C75515CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C72249A8();
    OUTLINED_FUNCTION_9_10();
    v45 = swift_allocError();
    goto LABEL_16;
  }

  sub_1C6FC1640(v35, v37);
  v42 = sub_1C755048C();

  [v26 setFeaturesProperties_];

  v43 = sub_1C755065C();
  [v26 setTitle_];

  v25(v64, v62);
  return v26;
}

double sub_1C7340FBC(uint64_t a1)
{
  v1 = objc_opt_self();
  swift_beginAccess();
  sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
  sub_1C75504FC();
  v2 = sub_1C7550B3C();

  [v1 deleteSuggestions_];

  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    *(v5 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v3, v4, "Deleted %ld old suggestions", v5, 0xCu);
    MEMORY[0x1CCA5F8E0](v5, -1, -1);
  }

  else
  {
  }

  return result;
}

Swift::Void __swiftcall PromptSuggestionPersister.removeStaleSuggestions(for:timePeriod:)(Swift::OpaquePointer a1, Swift::Double timePeriod)
{
  v6 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_3();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v79 - v11;
  v13 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C75504FC();
  v81 = v2;
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();

  v16 = os_log_type_enabled(v14, v15);
  rawValue = a1._rawValue;
  v79[1] = v13;
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_98();
    v18 = swift_slowAlloc();
    v87 = v18;
    *v17 = 136315394;
    v19 = MEMORY[0x1CCA5D090](a1._rawValue, &type metadata for PromptSuggestion.Source);
    v21 = sub_1C6F765A4(v19, v20, &v87);

    *(v17 + 4) = v21;
    a1._rawValue = rawValue;
    *(v17 + 12) = 2048;
    *(v17 + 14) = timePeriod;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Removing stale suggestions for sources: %s over time period %f", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v22 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v22);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C754DF3C();
  sub_1C754DEBC();
  v23 = *(v8 + 8);
  v82 = v8 + 8;
  v83 = v6;
  v80 = v23;
  v23(v3, v6);
  v25 = *(a1._rawValue + 2);
  v85 = v12;
  if (v25)
  {
    v26 = a1._rawValue + 32;
    v27 = MEMORY[0x1E69E7CC0];
    v28 = 0x1EC213000uLL;
    *&v24 = 136315138;
    v86 = v24;
    while (1)
    {
      v30 = *v26++;
      v29 = v30;
      if (v30 == 1)
      {
        v31 = 1401;
      }

      else if (v29 == 4)
      {
        v31 = 1403;
      }

      else
      {
        if (v29 != 3)
        {
          if (*(v28 + 3808) != -1)
          {
            OUTLINED_FUNCTION_4_81();
            swift_once();
          }

          v34 = sub_1C754FF1C();
          __swift_project_value_buffer(v34, qword_1EC219390);
          v35 = sub_1C754FEEC();
          v36 = sub_1C755119C();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = v28;
            OUTLINED_FUNCTION_13_3();
            v38 = swift_slowAlloc();
            OUTLINED_FUNCTION_98();
            v39 = swift_slowAlloc();
            v87 = v39;
            *v38 = v86;
            v40 = 0x636961736F4DLL;
            if (v29 != 1)
            {
              v40 = 0x686372616553;
            }

            if (v29)
            {
              v41 = v40;
            }

            else
            {
              v41 = 1701736270;
            }

            if (v29)
            {
              v42 = 0xE600000000000000;
            }

            else
            {
              v42 = 0xE400000000000000;
            }

            v43 = sub_1C6F765A4(v41, v42, &v87);

            *(v38 + 4) = v43;
            _os_log_impl(&dword_1C6F5C000, v35, v36, "Template source %s does not have a PHSuggestionSubtype", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v39);
            v44 = OUTLINED_FUNCTION_4_0();
            MEMORY[0x1CCA5F8E0](v44);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();

            v28 = v37;
          }

          else
          {
          }

          goto LABEL_16;
        }

        v31 = 1402;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB38CC(v45, v46, v47, v27);
        v27 = v48;
      }

      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C6FB38CC(v32 > 1, v33 + 1, 1, v27);
        v27 = v49;
      }

      *(v27 + 16) = v33 + 1;
      *(v27 + 2 * v33 + 32) = v31;
LABEL_16:
      if (!--v25)
      {
        goto LABEL_32;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v79[0] = [*(v81 + 16) librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C75650C0;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v51 = swift_allocObject();
  v86 = xmmword_1C75604F0;
  *(v51 + 16) = xmmword_1C75604F0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1C6F6D524();
  *(v51 + 64) = v53;
  OUTLINED_FUNCTION_15_66();
  *(v51 + 32) = v54;
  *(v51 + 40) = v55;
  *(v51 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300, &unk_1C7577770);
  *(v51 + 104) = sub_1C7343B78();
  *(v51 + 72) = v27;
  OUTLINED_FUNCTION_13_67();
  *(v50 + 32) = sub_1C755112C();
  v56 = OUTLINED_FUNCTION_16_56();
  OUTLINED_FUNCTION_20_53(v56);
  v58 = OUTLINED_FUNCTION_21_51(v57);
  *(v50 + 40) = OUTLINED_FUNCTION_7_70(v58, MEMORY[0x1E69E75F8]);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1C7564A90;
  v60 = OUTLINED_FUNCTION_16_56();
  *(v60 + 16) = v86;
  *(v60 + 56) = v52;
  *(v60 + 64) = v53;
  *(v60 + 32) = 0xD000000000000011;
  *(v60 + 40) = 0x80000001C75AB660;
  v61 = sub_1C754DECC();
  *(v60 + 96) = sub_1C6F65BE8(0, &unk_1EDD0CD28, 0x1E695DF00);
  *(v60 + 104) = sub_1C706700C();
  *(v60 + 72) = v61;
  *(v59 + 32) = sub_1C755112C();
  v62 = OUTLINED_FUNCTION_16_56();
  OUTLINED_FUNCTION_20_53(v62);
  v63[4] = 0x6E6F6973726576;
  v63[5] = 0xE700000000000000;
  v64 = MEMORY[0x1E69E65A8];
  v63[12] = MEMORY[0x1E69E6530];
  v63[13] = v64;
  v63[9] = 8;
  *(v59 + 40) = sub_1C755112C();
  *(v50 + 48) = sub_1C74B8340(v59);
  v65 = v50;
  v66 = v79[0];
  v67 = sub_1C6F6E5C4(v65);
  [v66 setPredicate_];

  v68 = [objc_opt_self() fetchSuggestionsWithOptions_];
  PromptSuggestionPersister.batchDelete(suggestions:)(v68);
  v69 = rawValue;
  sub_1C75504FC();
  v70 = v68;
  v71 = sub_1C754FEEC();
  v72 = sub_1C75511BC();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_98();
    v74 = swift_slowAlloc();
    v87 = v74;
    *v73 = 134218242;
    *(v73 + 4) = [v70 count];

    *(v73 + 12) = 2080;
    v75 = MEMORY[0x1CCA5D090](v69, &type metadata for PromptSuggestion.Source);
    v77 = sub_1C6F765A4(v75, v76, &v87);

    *(v73 + 14) = v77;
    _os_log_impl(&dword_1C6F5C000, v71, v72, "Attempted to remove %ld stale suggestions for sources: %s", v73, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v74);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v78 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v78);
  }

  else
  {
  }

  v80(v85, v83);
}

void PromptSuggestionPersister.batchDelete(suggestions:)(void *a1)
{
  v3 = [a1 count];
  v5 = 0;
  swift_beginAccess();
  while (v5 < v3)
  {
    v4 = objc_autoreleasePoolPush();
    sub_1C73434E4(&v5, v3, a1, v1);
    objc_autoreleasePoolPop(v4);
  }
}

Swift::Void __swiftcall PromptSuggestionPersister.removeSuggestions(for:)(Swift::OpaquePointer a1)
{
  sub_1C75504FC();
  v59 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  rawValue = a1._rawValue;
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_13_3();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v6 = swift_slowAlloc();
    v63 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x1CCA5D090](a1._rawValue, &type metadata for PromptSuggestion.Source);
    v9 = sub_1C6F765A4(v7, v8, &v63);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "Removing suggestions for sources: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v10 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v10);
  }

  v11 = *(a1._rawValue + 2);
  if (v11)
  {
    v12 = a1._rawValue + 32;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = 0x1EC213000uLL;
    while (1)
    {
      v16 = *v12++;
      v15 = v16;
      if (v16 == 1)
      {
        v17 = 1401;
      }

      else if (v15 == 4)
      {
        v17 = 1403;
      }

      else
      {
        if (v15 != 3)
        {
          if (*(v14 + 3808) != -1)
          {
            OUTLINED_FUNCTION_4_81();
            swift_once();
          }

          v20 = sub_1C754FF1C();
          __swift_project_value_buffer(v20, qword_1EC219390);
          v21 = sub_1C754FEEC();
          v22 = sub_1C755119C();
          v23 = OUTLINED_FUNCTION_72();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = v14;
            OUTLINED_FUNCTION_13_3();
            v26 = swift_slowAlloc();
            OUTLINED_FUNCTION_98();
            v27 = swift_slowAlloc();
            v63 = v27;
            *v26 = 136315138;
            v28 = 0x636961736F4DLL;
            if (v15 != 1)
            {
              v28 = 0x686372616553;
            }

            if (v15)
            {
              v29 = v28;
            }

            else
            {
              v29 = 1701736270;
            }

            if (v15)
            {
              v30 = 0xE600000000000000;
            }

            else
            {
              v30 = 0xE400000000000000;
            }

            v31 = sub_1C6F765A4(v29, v30, &v63);

            *(v26 + 4) = v31;
            _os_log_impl(&dword_1C6F5C000, v21, v22, "Template source %s does not have a PHSuggestionSubtype", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v27);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();

            v14 = v25;
          }

          else
          {
          }

          goto LABEL_16;
        }

        v17 = 1402;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB38CC(v32, v33, v34, v13);
        v13 = v35;
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        v36 = OUTLINED_FUNCTION_15_2(v18);
        sub_1C6FB38CC(v36, v37, v38, v13);
        v13 = v39;
      }

      *(v13 + 16) = v19 + 1;
      *(v13 + 2 * v19 + 32) = v17;
LABEL_16:
      if (!--v11)
      {
        goto LABEL_32;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v62 = [*(v59 + 16) librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C75604F0;
  v42 = MEMORY[0x1E69E6158];
  *(v41 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1C6F6D524();
  *(v41 + 64) = v43;
  OUTLINED_FUNCTION_15_66();
  *(v41 + 32) = v44;
  *(v41 + 40) = v45;
  *(v41 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300, &unk_1C7577770);
  *(v41 + 104) = sub_1C7343B78();
  *(v41 + 72) = v13;
  OUTLINED_FUNCTION_13_67();
  *(v40 + 32) = sub_1C755112C();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C75604F0;
  *(v46 + 56) = v42;
  *(v46 + 64) = v43;
  v47 = OUTLINED_FUNCTION_21_51(v46);
  *(v40 + 40) = OUTLINED_FUNCTION_7_70(v47, MEMORY[0x1E69E75F8]);
  v48 = sub_1C6F6E5C4(v40);
  [v62 setPredicate_];

  v49 = [objc_opt_self() fetchSuggestionsWithOptions_];
  PromptSuggestionPersister.batchDelete(suggestions:)(v49);
  sub_1C75504FC();
  v61 = v49;
  v50 = sub_1C754FEEC();
  v51 = sub_1C75511BC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_98();
    v53 = swift_slowAlloc();
    v63 = v53;
    *v52 = 134218242;
    *(v52 + 4) = [v61 count];

    *(v52 + 12) = 2080;
    v54 = MEMORY[0x1CCA5D090](rawValue, &type metadata for PromptSuggestion.Source);
    v56 = sub_1C6F765A4(v54, v55, &v63);

    *(v52 + 14) = v56;
    _os_log_impl(&dword_1C6F5C000, v50, v51, "Attempted to remove %ld suggestions for sources: %s", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v57 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v57);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    v58 = v62;
  }

  else
  {

    v58 = v61;
  }
}

void PromptSuggestionPersister.updatePromptSuggestionInDB(_:)(uint64_t a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v78 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v74 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v74 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v17 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C71592A8(a1, &v74 - v15);
  v81 = v17;
  v18 = sub_1C754FEEC();
  v19 = sub_1C75511BC();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_13_3();
    v20 = swift_slowAlloc();
    v80 = v2;
    v21 = v20;
    OUTLINED_FUNCTION_98();
    v22 = swift_slowAlloc();
    v74 = v5;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    PromptSuggestion.description.getter();
    v25 = v24;
    v75 = v7;
    v26 = a1;
    v27 = v9;
    v29 = v28;
    sub_1C715930C(v16);
    v30 = sub_1C6F765A4(v25, v29, aBlock);
    v9 = v27;
    a1 = v26;
    v7 = v75;

    *(v21 + 4) = v30;
    _os_log_impl(&dword_1C6F5C000, v18, v19, "Updating prompt suggestion in DB: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v5 = v74;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v2 = v80;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    sub_1C715930C(v16);
  }

  if (qword_1EDD091D8 != -1)
  {
    OUTLINED_FUNCTION_0_143();
    swift_once();
  }

  if ((sub_1C702B198() & 1) == 0)
  {
    sub_1C71592A8(a1, v9);
    v39 = sub_1C754FEEC();
    v40 = sub_1C755119C();
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_13_3();
      v41 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = 0xE400000000000000;
      v44 = 1701736270;
      v45 = v42;
      switch(v9[16])
      {
        case 1:
          v43 = 0xE600000000000000;
          v44 = 0x636961736F4DLL;
          break;
        case 2:
          v43 = 0xE600000000000000;
          v44 = 0x686372616553;
          break;
        case 3:
          v43 = 0xE90000000000006CLL;
          v44 = 0x616369736D696857;
          break;
        case 4:
          v43 = 0xEA00000000006C61;
          v44 = 0x75747865746E6F43;
          break;
        default:
          break;
      }

      sub_1C715930C(v9);
      v69 = sub_1C6F765A4(v44, v43, aBlock);

      *(v41 + 4) = v69;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "Unsupported prompt suggestion type to update: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v70 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v70);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      sub_1C715930C(v9);
    }

    sub_1C7343BDC();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v71 = 0;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217280, &unk_1C75697C0);
  v31 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C755BAB0;
  sub_1C71592A8(a1, v32 + v31);
  v33 = sub_1C733F9D0(v32);
  swift_setDeallocating();
  sub_1C6FDCB7C();
  v34 = sub_1C6FE376C(*(a1 + 104), *(a1 + 112), v33);

  if (!v34)
  {
    v46 = v77;
    sub_1C71592A8(a1, v77);
    v47 = sub_1C754FEEC();
    v48 = sub_1C755119C();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_13_3();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136315138;
      PromptSuggestion.description.getter();
      v52 = v51;
      v54 = v53;
      sub_1C715930C(v46);
      v55 = sub_1C6F765A4(v52, v54, aBlock);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_1C6F5C000, v47, v48, "Cannot find matching PHSuggestion for %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      sub_1C715930C(v46);
    }

    sub_1C7343BDC();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v68 = 1;
LABEL_27:
    swift_willThrow();
    return;
  }

  v80 = v2;
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C7343B20();
  v35 = v79;
  v36 = sub_1C754D78C();
  v38 = v37;

  if (v35)
  {

    return;
  }

  v56 = objc_opt_self();
  v57 = sub_1C754DDCC();
  v81 = v38;
  v58 = v57;
  aBlock[0] = 0;
  v59 = [v56 JSONObjectWithData:v57 options:0 error:aBlock];

  if (!v59)
  {
    v72 = aBlock[0];
    sub_1C754DBEC();

LABEL_30:
    swift_willThrow();

    sub_1C6FC1640(v36, v81);
    return;
  }

  v60 = aBlock[0];
  sub_1C75515CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C72249A8();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    goto LABEL_30;
  }

  sub_1C6FC1640(v36, v81);
  v79 = v82;
  v61 = v80;
  v81 = *(v80 + 16);
  v62 = v76;
  sub_1C71592A8(a1, v76);
  v63 = swift_allocObject();
  v63[2] = v34;
  v63[3] = v61;
  sub_1C7159368(v62, v63 + v31);
  *(v63 + ((v7 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v79;
  aBlock[4] = sub_1C7343C30;
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_33;
  v64 = _Block_copy(aBlock);
  v65 = v34;

  aBlock[0] = 0;
  v66 = [v81 performChangesAndWait:v64 error:aBlock];
  _Block_release(v64);
  if (v66)
  {
    v67 = aBlock[0];
  }

  else
  {
    v73 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }
}

void sub_1C734283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() changeRequestForSuggestion_];
  if (v5)
  {
    v6 = v5;
    if ((*(a3 + 17) & 0xFE) == 2)
    {
      [v5 markAccepted];
    }

    oslog = sub_1C755048C();
    [v6 setFeaturesProperties_];
  }

  else
  {
    oslog = sub_1C754FEEC();
    v7 = sub_1C755119C();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C6F5C000, oslog, v7, "Failed to create PHSuggestionChangeRequest", v8, 2u);
      MEMORY[0x1CCA5F8E0](v8, -1, -1);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PromptSuggestionPersister.updateRankedOrder(for:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  sub_1C75504FC();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  v6 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_13_3();
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(a1._rawValue + 2);

    _os_log_impl(&dword_1C6F5C000, v4, v5, "Updating prompt suggestion ranked order for %ld suggestions", v8, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v9 = sub_1C733F9D0(a1._rawValue);
  v10 = v2[2];
  v11 = swift_allocObject();
  v11[2]._rawValue = a1._rawValue;
  v11[3]._rawValue = v9;
  v11[4]._rawValue = v2;
  aBlock[4] = sub_1C7343CAC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_12_0;
  v12 = _Block_copy(aBlock);
  sub_1C75504FC();

  aBlock[0] = 0;
  v13 = [v10 performChangesAndWait:v12 error:aBlock];
  _Block_release(v12);
  if (v13)
  {
    v14 = aBlock[0];
  }

  else
  {
    v15 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }
}

void sub_1C7342BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PromptSuggestion(0);
  v53 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC40, &qword_1C7584300);
  MEMORY[0x1EEE9AC00](v12);
  v52 = (v50.n128_u64 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC48, &qword_1C7584308);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v58 = (&v50 - v19);
  v20 = 0;
  v54 = a1;
  v21 = *(a1 + 16);
  v56 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  v18.n128_u64[0] = 136315138;
  v50 = v18;
  v55 = v16;
  v51 = a2;
  v57 = v21;
  while (1)
  {
    if (v20 == v21)
    {
      v22 = 1;
      v59 = v21;
      goto LABEL_7;
    }

    if (v20 >= v21)
    {
      break;
    }

    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_20;
    }

    v24 = v52;
    v25 = v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v20;
    v26 = *(v12 + 48);
    *v52 = v20;
    sub_1C71592A8(v25, v24 + v26);
    sub_1C718F6FC(v24, v16, &qword_1EC21AC40, &qword_1C7584300);
    v22 = 0;
    v59 = v23;
LABEL_7:
    v27 = v58;
    __swift_storeEnumTagSinglePayload(v16, v22, 1, v12);
    sub_1C718F6FC(v16, v27, &qword_1EC21AC48, &qword_1C7584308);
    if (__swift_getEnumTagSinglePayload(v27, 1, v12) == 1)
    {
      return;
    }

    v28 = *v27;
    sub_1C7159368(v27 + *(v12 + 48), v11);
    if (!*(a2 + 16) || (v29 = sub_1C6F78124(*(v11 + 13), *(v11 + 14)), (v30 & 1) == 0))
    {
      sub_1C71592A8(v11, v8);
      v38 = sub_1C754FEEC();
      v39 = sub_1C755119C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v60 = v41;
        *v40 = v50.n128_u32[0];
        v42 = v12;
        v43 = v11;
        v44 = a3;
        v45 = *(v8 + 13);
        v46 = *(v8 + 14);
        sub_1C75504FC();
        sub_1C715930C(v8);
        v47 = sub_1C6F765A4(v45, v46, &v60);
        a3 = v44;
        v11 = v43;
        v12 = v42;

        *(v40 + 4) = v47;
        _os_log_impl(&dword_1C6F5C000, v38, v39, "Cannot find corresponding PHSuggestion for '%s'", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        v48 = v41;
        a2 = v51;
        MEMORY[0x1CCA5F8E0](v48, -1, -1);
        v49 = v40;
        v16 = v55;
        MEMORY[0x1CCA5F8E0](v49, -1, -1);
      }

      else
      {

        sub_1C715930C(v8);
      }

      goto LABEL_15;
    }

    v31 = *(*(a2 + 56) + 8 * v29);
    v32 = objc_opt_self();
    v33 = v31;
    v34 = [v32 changeRequestForSuggestion_];
    if (v34)
    {
      v60 = v28;
      v35 = v34;
      v36 = sub_1C7551D8C();
      sub_1C7343F0C(v36, v37, v35);

      v16 = v55;
LABEL_15:
      sub_1C715930C(v11);
      goto LABEL_16;
    }

    sub_1C715930C(v11);

LABEL_16:
    v21 = v57;
    v20 = v59;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1C734330C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_1C75516BC())
  {
    if (a2 < 1 && result <= a2)
    {
      sub_1C75504FC();
      return v3;
    }

    v11 = MEMORY[0x1E69E7CC0];
    if (a2 > 1)
    {
      if (__OFSUB__(result, 1))
      {
        goto LABEL_35;
      }

      v6 = (result - 1) / (a2 - 1);
      goto LABEL_13;
    }

    if (a2 < 0)
    {
      break;
    }

    v6 = 1.0;
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

LABEL_13:
    v7 = 0;
    while (1)
    {
      v8 = round(v6 * v7);
      if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v8 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v8 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      v9 = v8;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA5DDD0](v9, v3);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v9)
        {
          goto LABEL_32;
        }

        v10 = *(v3 + 32 + 8 * v9);
      }

      MEMORY[0x1CCA5D040]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      ++v7;
      sub_1C7550BEC();
      if (a2 == v7)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void sub_1C73434E4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = sub_1C754E2FC();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (__OFADD__(*a1, 20))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*a1 + 20 < a2)
  {
    a2 = *a1 + 20;
  }

  if (a2 < *a1)
  {
    goto LABEL_17;
  }

  sub_1C754E26C();
  v48 = v10;
  v11 = sub_1C754E28C();
  v12 = a4;
  v13 = [a3 objectsAtIndexes_];

  v46 = sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
  v14 = sub_1C7550B5C();

  v15 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C75504FC();
  v16 = v12;
  v47 = v15;
  v17 = sub_1C754FEEC();
  v18 = sub_1C75511BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218496;
    swift_beginAccess();
    *(v19 + 4) = *a1;
    *(v19 + 12) = 2048;
    if (!__OFSUB__(a2, 1))
    {
      *(v19 + 14) = a2 - 1;
      *(v19 + 22) = 2048;
      *(v19 + 24) = sub_1C6FB6304();

      _os_log_impl(&dword_1C6F5C000, v17, v18, "Deleting batch from index %ld to %ld (batch size: %ld).", v19, 0x20u);
      MEMORY[0x1CCA5F8E0](v19, -1, -1);

      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  v20 = *(v16 + 16);
  v21 = swift_allocObject();
  v21[2] = a3;
  aBlock[4] = sub_1C725C970;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_24_2;
  v22 = _Block_copy(aBlock);
  v23 = a3;

  aBlock[0] = 0;
  v24 = [v20 performChangesAndWait:v22 error:aBlock];
  _Block_release(v22);
  v25 = aBlock[0];
  if (v24)
  {
    v26 = sub_1C6FB6304();
    v27 = v25;

    (*(v49 + 8))(v48, v8);
    swift_beginAccess();
    if (!__OFADD__(*a1, v26))
    {
      *a1 += v26;
      return;
    }

LABEL_19:
    __break(1u);
  }

  v45 = v8;
  v28 = aBlock[0];
  v29 = sub_1C754DBEC();

  swift_willThrow();
  v50 = 0;
  sub_1C75504FC();
  v30 = v29;
  v31 = sub_1C754FEEC();
  v32 = sub_1C755119C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v33 = 136315394;
    v35 = MEMORY[0x1CCA5D090](v14, v46);
    v36 = v49;
    v37 = v35;
    v39 = v38;

    v40 = sub_1C6F765A4(v37, v39, aBlock);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2112;
    v41 = v29;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v42;
    *v34 = v42;
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Error removing suggestions: %s, error: %@. Return", v33, 0x16u);
    sub_1C6FC15D8(v34);
    MEMORY[0x1CCA5F8E0](v34, -1, -1);
    v43 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1CCA5F8E0](v43, -1, -1);
    MEMORY[0x1CCA5F8E0](v33, -1, -1);

    (*(v36 + 8))(v48, v45);
  }

  else
  {

    (*(v49 + 8))(v48, v45);
  }
}