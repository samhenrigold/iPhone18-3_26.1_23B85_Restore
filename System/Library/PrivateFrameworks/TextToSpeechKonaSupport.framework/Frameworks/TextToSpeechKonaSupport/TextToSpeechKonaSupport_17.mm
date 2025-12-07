uint64_t destress_verbs(uint64_t a1)
{
  OUTLINED_FUNCTION_25_22();
  v507 = *MEMORY[0x277D85DE8];
  v495 = 0;
  v496 = 0;
  OUTLINED_FUNCTION_18_28(v2, v3, v4, v5, v6, v7, v8, v9, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494);
  OUTLINED_FUNCTION_70_10();
  bzero(v506, v10);
  v11 = setjmp(v506);
  if (v11 || OUTLINED_FUNCTION_65_10(v11, &v468, v12, v13, v14, v15, v16, v17, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_28_19();
    get_parm(v19, v20, v21, -6);
    v22 = OUTLINED_FUNCTION_63_10();
    OUTLINED_FUNCTION_129_3(v22, v23);
    v24 = OUTLINED_FUNCTION_72_10();
    v26 = push_ptr_init(v24, v25);
    OUTLINED_FUNCTION_131_3(v26, v27, &null_str_11);
    v28 = OUTLINED_FUNCTION_62_10();
    fence_32(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_110_3();
    starttest(v31, v32);
    OUTLINED_FUNCTION_20_24();
    bspush_ca_boa();
    v33 = OUTLINED_FUNCTION_39_13();
    if (!lpta_loadp_setscan_r(v33, v34, v35))
    {
      v36 = OUTLINED_FUNCTION_37_14();
      bspush_ca_scan(v36, v37);
      v38 = OUTLINED_FUNCTION_8_31();
      if (!testFldeq(v38, v39, v40, 1))
      {
LABEL_6:
        v41 = OUTLINED_FUNCTION_52_11();
        if (!npush_fld(v41, v42, 6u))
        {
          v43 = OUTLINED_FUNCTION_87_7();
          npush_i(v43);
          if (!if_testle(v1, v44, v45, v46, v47, v48, v49, v50))
          {
            advance_tok(v1, v51, v52, v53);
          }
        }
      }
    }

LABEL_9:
    OUTLINED_FUNCTION_55_11();
    while (2)
    {
      v56 = v55;
      v57 = v1[13];
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_77_9(v57);
        v59 = v54;
      }

      else
      {
        v58 = vback(v1, v54);
        v59 = 0;
      }

      v60 = v56;
      switch(v58)
      {
        case 1:
          v171 = OUTLINED_FUNCTION_47_12();
          starttest(v171, v172);
          v173 = OUTLINED_FUNCTION_17_29();
          if (lpta_loadp_setscan_r(v173, v174, v175))
          {
            goto LABEL_54;
          }

          v444 = OUTLINED_FUNCTION_45_12();
          bspush_ca_scan(v444, v445);
          v133 = OUTLINED_FUNCTION_7_31();
          v136 = 2;
          goto LABEL_171;
        case 2:
        case 53:
          bspop_boa(v1);
          goto LABEL_3;
        case 3:
          v168 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v168, v169);
          v100 = OUTLINED_FUNCTION_8_31();
          v170 = 16;
          goto LABEL_84;
        case 4:
          goto LABEL_6;
        case 5:
          v246 = OUTLINED_FUNCTION_42_12();
          bspush_ca_scan(v246, v247);
          v100 = OUTLINED_FUNCTION_7_31();
          v170 = 3;
          goto LABEL_84;
        case 6:
          v248 = OUTLINED_FUNCTION_51_11();
          bspush_ca_scan(v248, v249);
          v100 = OUTLINED_FUNCTION_4_32();
          goto LABEL_84;
        case 7:
          v234 = OUTLINED_FUNCTION_40_13();
          bspush_ca_scan(v234, v235);
          v100 = OUTLINED_FUNCTION_7_31();
          goto LABEL_72;
        case 8:
          v100 = OUTLINED_FUNCTION_9_31();
LABEL_72:
          v170 = 2;
LABEL_84:
          testFldeq(v100, v101, v102, v170);
          OUTLINED_FUNCTION_55_11();
          if (!v250)
          {
            goto LABEL_6;
          }

          continue;
        case 9:
LABEL_54:
          v176 = OUTLINED_FUNCTION_53_11();
          starttest(v176, v177);
          v178 = OUTLINED_FUNCTION_17_29();
          if (lpta_loadp_setscan_r(v178, v179, v180))
          {
            goto LABEL_55;
          }

          v431 = OUTLINED_FUNCTION_4_32();
          testFldeq(v431, v432, v433, v434);
          OUTLINED_FUNCTION_55_11();
          if (v436)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v435);
          OUTLINED_FUNCTION_55_11();
          if (v437)
          {
            continue;
          }

          v438 = OUTLINED_FUNCTION_7_31();
          testFldeq(v438, v439, v440, 13);
          OUTLINED_FUNCTION_55_11();
          if (v442)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v441);
          OUTLINED_FUNCTION_55_11();
          if (v443)
          {
            continue;
          }

          v93 = OUTLINED_FUNCTION_9_31();
          v96 = 7;
          goto LABEL_23;
        case 10:
          v133 = OUTLINED_FUNCTION_4_32();
LABEL_171:
          testFldeq(v133, v134, v135, v136);
          OUTLINED_FUNCTION_55_11();
          if (!v446)
          {
            goto LABEL_172;
          }

          continue;
        case 11:
LABEL_172:
          advance_tok(v1, v54, v55, v60);
          OUTLINED_FUNCTION_55_11();
          if (v447)
          {
            continue;
          }

          v448 = OUTLINED_FUNCTION_46_12();
          bspush_ca_scan(v448, v449);
          v450 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v450, v451);
          v230 = OUTLINED_FUNCTION_7_31();
          v233 = 11;
LABEL_174:
          testFldeq(v230, v231, v232, v233);
          OUTLINED_FUNCTION_55_11();
          if (v452)
          {
            continue;
          }

LABEL_175:
          advance_tok(v1, v54, v55, v60);
          OUTLINED_FUNCTION_55_11();
          if (v453)
          {
            continue;
          }

LABEL_180:
          bspush_boa(v1);
          do
          {
LABEL_181:
            v460 = OUTLINED_FUNCTION_53_11();
            bspush_ca_scan(v460, v461);
            v462 = OUTLINED_FUNCTION_9_31();
          }

          while (!testFldeq(v462, v463, v464, 5) && !advance_tok(v1, v465, v466, v467));
          goto LABEL_9;
        case 12:
          goto LABEL_180;
        case 13:
          v230 = OUTLINED_FUNCTION_7_31();
          v233 = 36;
          goto LABEL_174;
        case 14:
          goto LABEL_175;
        case 15:
          bspush_nboa(v1);
          v93 = OUTLINED_FUNCTION_9_31();
          v96 = 2;
          goto LABEL_23;
        case 16:
          goto LABEL_181;
        case 17:
        case 71:
          goto LABEL_141;
        case 18:
LABEL_55:
          v181 = OUTLINED_FUNCTION_53_11();
          starttest(v181, v182);
          OUTLINED_FUNCTION_86_7();
          v183 = OUTLINED_FUNCTION_10_31();
          setscan_nof_l(v183, v184, v185);
          if (v186)
          {
            goto LABEL_56;
          }

          goto LABEL_65;
        case 19:
LABEL_56:
          v187 = OUTLINED_FUNCTION_53_11();
          starttest(v187, v188);
          v189 = OUTLINED_FUNCTION_11_31();
          if (lpta_loadp_setscan_l(v189, v190, v191))
          {
            goto LABEL_57;
          }

          goto LABEL_62;
        case 20:
LABEL_65:
          OUTLINED_FUNCTION_75_10(20, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
          v218 = OUTLINED_FUNCTION_7_31();
          testFldeq(v218, v219, v220, 3);
          OUTLINED_FUNCTION_55_11();
          if (v222)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v221);
          OUTLINED_FUNCTION_55_11();
          if (v223)
          {
            continue;
          }

          OUTLINED_FUNCTION_86_7();
          v224 = OUTLINED_FUNCTION_10_31();
          setscan_nof_r(v224, v225, v226);
          OUTLINED_FUNCTION_55_11();
          if (v227)
          {
            continue;
          }

          v228 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v228, v229);
          v89 = OUTLINED_FUNCTION_7_31();
          v92 = 3;
LABEL_33:
          testFldeq(v89, v90, v91, v92);
          OUTLINED_FUNCTION_55_11();
          if (v117)
          {
            continue;
          }

LABEL_34:
          advance_tok(v1, v54, v55, v60);
          OUTLINED_FUNCTION_55_11();
          if (!v118)
          {
            v119 = OUTLINED_FUNCTION_52_11();
            npush_fld(v119, v120, 6u);
            OUTLINED_FUNCTION_55_11();
            if (!v121)
            {
              v122 = OUTLINED_FUNCTION_87_7();
              npush_i(v122);
              if_testgt(v1, v123, v124, v125, v126, v127, v128, v129);
              OUTLINED_FUNCTION_55_11();
              if (!v131)
              {
                advance_tok(v1, v54, v55, v130);
                OUTLINED_FUNCTION_55_11();
                if (!v132)
                {
                  goto LABEL_3;
                }
              }
            }
          }

          continue;
        case 21:
          v115 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v115, v116);
          v89 = OUTLINED_FUNCTION_4_32();
          goto LABEL_33;
        case 22:
          goto LABEL_34;
        case 23:
          v89 = OUTLINED_FUNCTION_7_31();
          v92 = 2;
          goto LABEL_33;
        case 24:
LABEL_57:
          v192 = OUTLINED_FUNCTION_53_11();
          starttest(v192, v193);
          v194 = OUTLINED_FUNCTION_11_31();
          if (lpta_loadp_setscan_l(v194, v195, v196))
          {
            goto LABEL_58;
          }

          goto LABEL_61;
        case 25:
LABEL_62:
          OUTLINED_FUNCTION_75_10(25, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
          v215 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v215, v216);
          v111 = OUTLINED_FUNCTION_4_32();
          goto LABEL_63;
        case 26:
          v109 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v109, v110);
          v111 = OUTLINED_FUNCTION_7_31();
          v114 = 2;
          goto LABEL_63;
        case 27:
          goto LABEL_64;
        case 28:
          v111 = OUTLINED_FUNCTION_7_31();
          v114 = 3;
LABEL_63:
          testFldeq(v111, v112, v113, v114);
          OUTLINED_FUNCTION_55_11();
          if (v217)
          {
            continue;
          }

LABEL_64:
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_9_31();
LABEL_82:
          v78 = 2;
          goto LABEL_130;
        case 29:
          bspop_boa(v1);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_8_31();
          goto LABEL_82;
        case 30:
          bspop_boa(v1);
          advance_tok(v1, v374, v375, v376);
          OUTLINED_FUNCTION_55_11();
          if (v377)
          {
            continue;
          }

          v378 = OUTLINED_FUNCTION_16_29();
          lpta_loadp_setscan_r(v378, v379, v380);
          OUTLINED_FUNCTION_55_11();
          if (v381)
          {
            continue;
          }

          v382 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v382, v383);
          goto LABEL_128;
        case 31:
          v251 = OUTLINED_FUNCTION_5_31();
          testFldeq(v251, v252, v253, v254);
          OUTLINED_FUNCTION_55_11();
          if (v256)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v255);
          OUTLINED_FUNCTION_55_11();
          if (v257)
          {
            continue;
          }

          goto LABEL_128;
        case 32:
LABEL_128:
          v384 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v384, v385);
          goto LABEL_135;
        case 33:
          v83 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v83, v84);
          v85 = OUTLINED_FUNCTION_6_31();
          goto LABEL_133;
        case 34:
          goto LABEL_135;
        case 35:
          v137 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v137, v138);
          v85 = OUTLINED_FUNCTION_7_31();
          v88 = 23;
          goto LABEL_133;
        case 36:
          goto LABEL_134;
        case 37:
          v389 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v389, v390);
          v85 = OUTLINED_FUNCTION_7_31();
          v88 = 21;
          goto LABEL_133;
        case 38:
          v85 = OUTLINED_FUNCTION_7_31();
          v88 = 18;
LABEL_133:
          testFldeq(v85, v86, v87, v88);
          OUTLINED_FUNCTION_55_11();
          if (v391)
          {
            continue;
          }

LABEL_134:
          advance_tok(v1, v54, v55, v60);
          OUTLINED_FUNCTION_55_11();
          if (v392)
          {
            continue;
          }

LABEL_135:
          v393 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v393, v394);
LABEL_136:
          v395 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v395, v396);
          v79 = OUTLINED_FUNCTION_0_35();
          goto LABEL_137;
        case 39:
          v103 = OUTLINED_FUNCTION_8_31();
          testFldeq(v103, v104, v105, 6);
          OUTLINED_FUNCTION_55_11();
          if (v107)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v106);
          OUTLINED_FUNCTION_55_11();
          if (v108)
          {
            continue;
          }

          goto LABEL_136;
        case 40:
          goto LABEL_136;
        case 41:
          v79 = OUTLINED_FUNCTION_8_31();
          goto LABEL_137;
        case 42:
          goto LABEL_139;
        case 43:
LABEL_58:
          v197 = OUTLINED_FUNCTION_53_11();
          starttest(v197, v198);
          v199 = OUTLINED_FUNCTION_11_31();
          if (lpta_loadp_setscan_r(v199, v200, v201))
          {
            goto LABEL_59;
          }

          goto LABEL_79;
        case 44:
LABEL_61:
          OUTLINED_FUNCTION_75_10(44, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
          v210 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v210, v211);
          v212 = OUTLINED_FUNCTION_7_31();
          goto LABEL_74;
        case 45:
          v212 = OUTLINED_FUNCTION_9_31();
LABEL_74:
          testFldeq(v212, v213, v214, 3);
          OUTLINED_FUNCTION_55_11();
          if (!v236)
          {
            goto LABEL_75;
          }

          continue;
        case 46:
LABEL_75:
          advance_tok(v1, v54, v55, v60);
          OUTLINED_FUNCTION_55_11();
          if (v237)
          {
            continue;
          }

          v238 = OUTLINED_FUNCTION_16_29();
          lpta_loadp_setscan_r(v238, v239, v240);
          OUTLINED_FUNCTION_55_11();
          if (v241)
          {
            continue;
          }

          v242 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v242, v243);
LABEL_78:
          v244 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v244, v245);
LABEL_79:
          v79 = OUTLINED_FUNCTION_9_31();
          v82 = 1;
          goto LABEL_137;
        case 47:
          v139 = OUTLINED_FUNCTION_3_33();
          testFldeq(v139, v140, v141, v142);
          OUTLINED_FUNCTION_55_11();
          if (v144)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v143);
          OUTLINED_FUNCTION_55_11();
          if (v145)
          {
            continue;
          }

          goto LABEL_78;
        case 48:
          goto LABEL_78;
        case 49:
          v410 = OUTLINED_FUNCTION_7_31();
          testFldeq(v410, v411, v412, 12);
          OUTLINED_FUNCTION_55_11();
          if (v414)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v413);
          OUTLINED_FUNCTION_55_11();
          if (v415)
          {
            continue;
          }

          goto LABEL_79;
        case 50:
          goto LABEL_79;
        case 51:
LABEL_59:
          v202 = OUTLINED_FUNCTION_53_11();
          starttest(v202, v203);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_boa();
          v204 = OUTLINED_FUNCTION_17_29();
          lpta_loadp_setscan_r(v204, v205, v206);
          OUTLINED_FUNCTION_55_11();
          if (v207)
          {
            continue;
          }

          v208 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v208, v209);
          v67 = OUTLINED_FUNCTION_8_31();
          v70 = 1;
          goto LABEL_150;
        case 52:
          v258 = OUTLINED_FUNCTION_53_11();
          starttest(v258, v259);
          OUTLINED_FUNCTION_86_7();
          v260 = OUTLINED_FUNCTION_10_31();
          setscan_nof_l(v260, v261, v262);
          if (v263)
          {
            goto LABEL_91;
          }

          goto LABEL_103;
        case 54:
          v67 = OUTLINED_FUNCTION_8_31();
          v70 = 16;
          goto LABEL_150;
        case 55:
        case 75:
        case 79:
          goto LABEL_151;
        case 56:
LABEL_91:
          v264 = OUTLINED_FUNCTION_53_11();
          starttest(v264, v265);
          v266 = OUTLINED_FUNCTION_11_31();
          if (lpta_loadp_setscan_l(v266, v267, v268) || advance_tok(v1, v269, v270, v271))
          {
            goto LABEL_93;
          }

          v454 = OUTLINED_FUNCTION_9_31();
          testFldeq(v454, v455, v456, 7);
          OUTLINED_FUNCTION_55_11();
          if (!v458)
          {
            advance_tok(v1, v54, v55, v457);
            OUTLINED_FUNCTION_55_11();
            if (!v459)
            {
              v93 = OUTLINED_FUNCTION_7_31();
              v96 = 13;
LABEL_23:
              testFldeq(v93, v94, v95, v96);
              OUTLINED_FUNCTION_55_11();
              if (!v98)
              {
                advance_tok(v1, v54, v55, v97);
                OUTLINED_FUNCTION_55_11();
                if (!v99)
                {
                  goto LABEL_141;
                }
              }
            }
          }

          continue;
        case 57:
LABEL_103:
          OUTLINED_FUNCTION_75_10(57, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
          v316 = OUTLINED_FUNCTION_9_31();
          testFldeq(v316, v317, v318, 2);
          OUTLINED_FUNCTION_55_11();
          if (v320)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v319);
          OUTLINED_FUNCTION_55_11();
          if (v321)
          {
            continue;
          }

          OUTLINED_FUNCTION_86_7();
          v322 = OUTLINED_FUNCTION_10_31();
          setscan_nof_r(v322, v323, v324);
          OUTLINED_FUNCTION_55_11();
          if (v325)
          {
            continue;
          }

          v326 = OUTLINED_FUNCTION_9_31();
          testFldeq(v326, v327, v328, 3);
          OUTLINED_FUNCTION_55_11();
          if (v330)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v329);
          OUTLINED_FUNCTION_55_11();
          if (v331)
          {
            continue;
          }

          v79 = OUTLINED_FUNCTION_6_31();
          goto LABEL_137;
        case 58:
LABEL_93:
          v272 = OUTLINED_FUNCTION_53_11();
          starttest(v272, v273);
          v274 = OUTLINED_FUNCTION_11_31();
          if (lpta_loadp_setscan_r(v274, v275, v276) || advance_tok(v1, v277, v278, v279))
          {
            goto LABEL_95;
          }

          goto LABEL_109;
        case 59:
LABEL_95:
          v280 = OUTLINED_FUNCTION_53_11();
          starttest(v280, v281);
          v282 = OUTLINED_FUNCTION_17_29();
          if (lpta_loadp_setscan_r(v282, v283, v284))
          {
            goto LABEL_96;
          }

          v340 = OUTLINED_FUNCTION_9_31();
          testFldeq(v340, v341, v342, 4);
          OUTLINED_FUNCTION_55_11();
          if (v344)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v343);
          OUTLINED_FUNCTION_55_11();
          if (v345)
          {
            continue;
          }

          v79 = OUTLINED_FUNCTION_7_31();
          v82 = 8;
          goto LABEL_137;
        case 60:
LABEL_109:
          v332 = OUTLINED_FUNCTION_24_22();
          chstream(v332, v333, v334);
          OUTLINED_FUNCTION_55_11();
          if (!v335)
          {
            OUTLINED_FUNCTION_26_22();
            test_string_s();
            OUTLINED_FUNCTION_55_11();
            if (!v336)
            {
              goto LABEL_111;
            }
          }

          continue;
        case 61:
LABEL_111:
          v337 = OUTLINED_FUNCTION_53_11();
          chstream(v337, v338, 4u);
          OUTLINED_FUNCTION_55_11();
          if (v339)
          {
            continue;
          }

          v79 = OUTLINED_FUNCTION_7_31();
          v82 = 33;
LABEL_137:
          testFldeq(v79, v80, v81, v82);
          goto LABEL_138;
        case 62:
LABEL_96:
          v285 = OUTLINED_FUNCTION_53_11();
          starttest(v285, v286);
          v287 = OUTLINED_FUNCTION_11_31();
          if (lpta_loadp_setscan_r(v287, v288, v289))
          {
            goto LABEL_97;
          }

          v346 = OUTLINED_FUNCTION_52_11();
          npush_fld(v346, v347, 6u);
          OUTLINED_FUNCTION_55_11();
          if (v348)
          {
            continue;
          }

          v349 = OUTLINED_FUNCTION_87_7();
          npush_i(v349);
          if_testlt(v1, v350, v351, v352, v353, v354, v355, v356);
          OUTLINED_FUNCTION_55_11();
          if (v357)
          {
            continue;
          }

          v358 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v358, v359);
          v146 = OUTLINED_FUNCTION_0_35();
LABEL_46:
          testFldeq(v146, v147, v148, v149);
          OUTLINED_FUNCTION_55_11();
          if (v150)
          {
            continue;
          }

LABEL_47:
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_9_31();
          v78 = 6;
          goto LABEL_130;
        case 63:
LABEL_97:
          v290 = OUTLINED_FUNCTION_53_11();
          starttest(v290, v291);
          v292 = OUTLINED_FUNCTION_11_31();
          if (lpta_loadp_setscan_r(v292, v293, v294))
          {
            goto LABEL_98;
          }

          v360 = OUTLINED_FUNCTION_9_31();
          testFldeq(v360, v361, v362, 6);
          OUTLINED_FUNCTION_55_11();
          if (!v364)
          {
            advance_tok(v1, v54, v55, v363);
            OUTLINED_FUNCTION_55_11();
            if (!v365)
            {
              goto LABEL_124;
            }
          }

          continue;
        case 64:
          v146 = OUTLINED_FUNCTION_3_33();
          goto LABEL_46;
        case 65:
          goto LABEL_47;
        case 66:
          bspop_boa(v1);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_7_31();
          v78 = 10;
          goto LABEL_130;
        case 67:
          bspop_boa(v1);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_7_31();
          v78 = 5;
          goto LABEL_130;
        case 68:
          bspop_boa(v1);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_7_31();
          v78 = 28;
          goto LABEL_130;
        case 69:
          bspop_boa(v1);
          advance_tok(v1, v151, v152, v153);
          OUTLINED_FUNCTION_55_11();
          if (v154)
          {
            continue;
          }

          v155 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v155, v156);
          v157 = OUTLINED_FUNCTION_52_11();
          npush_fld(v157, v158, 6u);
          OUTLINED_FUNCTION_55_11();
          if (v159)
          {
            continue;
          }

          v160 = OUTLINED_FUNCTION_56_10();
          npush_i(v160);
          if_testgt(v1, v161, v162, v163, v164, v165, v166, v167);
LABEL_138:
          OUTLINED_FUNCTION_55_11();
          if (!v397)
          {
            goto LABEL_139;
          }

          continue;
        case 70:
          v427 = OUTLINED_FUNCTION_24_22();
          test_synch(v427, v428, v429, v430);
          goto LABEL_140;
        case 72:
LABEL_98:
          v295 = OUTLINED_FUNCTION_53_11();
          starttest(v295, v296);
          v297 = OUTLINED_FUNCTION_11_31();
          if (lpta_loadp_setscan_r(v297, v298, v299))
          {
            goto LABEL_99;
          }

          v366 = OUTLINED_FUNCTION_7_31();
          testFldeq(v366, v367, v368, 28);
          OUTLINED_FUNCTION_55_11();
          if (v370)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v369);
          OUTLINED_FUNCTION_55_11();
          if (v371)
          {
            continue;
          }

LABEL_124:
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v372 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v372, v373);
          v67 = OUTLINED_FUNCTION_7_31();
          v70 = 21;
LABEL_150:
          testFldeq(v67, v68, v69, v70);
          OUTLINED_FUNCTION_55_11();
          if (v409)
          {
            continue;
          }

LABEL_151:
          v386 = advance_tok(v1, v54, v55, v60);
          goto LABEL_152;
        case 73:
        case 77:
          bspop_boa(v1);
          goto LABEL_141;
        case 74:
          v67 = OUTLINED_FUNCTION_9_31();
          v70 = 7;
          goto LABEL_150;
        case 76:
LABEL_99:
          v300 = OUTLINED_FUNCTION_53_11();
          starttest(v300, v301);
          v302 = OUTLINED_FUNCTION_11_31();
          if (!lpta_loadp_setscan_r(v302, v303, v304))
          {
            goto LABEL_100;
          }

          goto LABEL_3;
        case 78:
          v387 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v387, v388);
          v67 = OUTLINED_FUNCTION_7_31();
          v70 = 23;
          goto LABEL_150;
        case 80:
          v67 = OUTLINED_FUNCTION_0_35();
          goto LABEL_150;
        case 82:
          goto LABEL_100;
        case 83:
          v416 = OUTLINED_FUNCTION_3_33();
          testFldeq(v416, v417, v418, v419);
          OUTLINED_FUNCTION_55_11();
          if (v420)
          {
            continue;
          }

          v421 = OUTLINED_FUNCTION_9_31();
          testFldeq(v421, v422, v423, 5);
          OUTLINED_FUNCTION_55_11();
          if (v425)
          {
            continue;
          }

          advance_tok(v1, v54, v55, v424);
          OUTLINED_FUNCTION_55_11();
          if (v426)
          {
            continue;
          }

LABEL_100:
          v305 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v305, v306);
          v307 = OUTLINED_FUNCTION_3_33();
          testFldeq(v307, v308, v309, v310);
          OUTLINED_FUNCTION_55_11();
          if (v311)
          {
            continue;
          }

          v312 = OUTLINED_FUNCTION_7_31();
          testFldeq(v312, v313, v314, 8);
          OUTLINED_FUNCTION_55_11();
          if (v315)
          {
            continue;
          }

          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_7_31();
          v78 = 25;
LABEL_130:
          v386 = testFldeq(v75, v76, v77, v78);
LABEL_152:
          if (v386)
          {
            LODWORD(v54) = v59;
          }

          else
          {
            LODWORD(v54) = 1;
          }

          v55 = v56;
          continue;
        case 84:
          bspop_boa(v1);
          advance_tok(v1, v71, v72, v73);
          OUTLINED_FUNCTION_55_11();
          if (v74)
          {
            continue;
          }

          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_3_33();
          goto LABEL_130;
        case 85:
          bspop_boa(v1);
LABEL_139:
          advance_tok(v1, v54, v55, v60);
LABEL_140:
          OUTLINED_FUNCTION_55_11();
          if (v398)
          {
            continue;
          }

LABEL_141:
          v399 = OUTLINED_FUNCTION_53_11();
          starttest(v399, v400);
          OUTLINED_FUNCTION_113_3();
          if (!v401)
          {
            goto LABEL_184;
          }

          v402 = OUTLINED_FUNCTION_17_29();
          if (lpta_loadp_setscan_r(v402, v403, v404))
          {
            goto LABEL_184;
          }

          v405 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v405, v406);
          v63 = OUTLINED_FUNCTION_4_32();
LABEL_145:
          testFldeq(v63, v64, v65, v66);
          OUTLINED_FUNCTION_55_11();
          if (v407)
          {
            continue;
          }

LABEL_146:
          advance_tok(v1, v54, v55, v60);
          OUTLINED_FUNCTION_55_11();
          if (v408)
          {
            continue;
          }

LABEL_184:
          demote_word(v1);
LABEL_185:
          vretproc(v1);
          result = 0;
          break;
        case 86:
        case 92:
          goto LABEL_184;
        case 87:
          v61 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v61, v62);
          v63 = OUTLINED_FUNCTION_7_31();
          v66 = 2;
          goto LABEL_145;
        case 88:
          goto LABEL_146;
        case 89:
          v63 = OUTLINED_FUNCTION_7_31();
          v66 = 3;
          goto LABEL_145;
        case 90:
        case 91:
        case 93:
          goto LABEL_185;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

uint64_t destress_NPs(void *a1, __int16 *a2, uint64_t a3, __int16 *a4)
{
  v404 = *MEMORY[0x277D85DE8];
  v399[0] = 0;
  v399[1] = 0;
  v397 = 0;
  v398 = 0;
  v396[0] = 0;
  v396[1] = 0;
  v395[0] = 0;
  v395[1] = 0;
  OUTLINED_FUNCTION_114_3();
  OUTLINED_FUNCTION_18_28(v8, v9, v10, v11, v12, v13, v14, v15, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392[0], v392[1]);
  OUTLINED_FUNCTION_70_10();
  bzero(v403, v16);
  if (!setjmp(v403) && !ventproc(a1, &v367, v402, v401, v400, v403))
  {
    v18 = OUTLINED_FUNCTION_64_10();
    get_parm(v18, v19, a2, -6);
    OUTLINED_FUNCTION_80_9(v20, &v397);
    get_parm(a1, v396, a4, -6);
    OUTLINED_FUNCTION_84_8(v21, v395);
    v22 = OUTLINED_FUNCTION_148_3();
    push_ptr_init(v22, v23);
    push_ptr_init(a1, v393);
    v24 = OUTLINED_FUNCTION_76_10();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_63_10();
    push_ptr_init(v26, v27);
    v28 = OUTLINED_FUNCTION_72_10();
    v30 = push_ptr_init(v28, v29);
    OUTLINED_FUNCTION_131_3(v30, v31, &null_str_11);
    v32 = OUTLINED_FUNCTION_74_10();
    fence_32(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_134_3();
    starttest(v35, v36);
    OUTLINED_FUNCTION_20_24();
    bspush_ca_boa();
    v37 = OUTLINED_FUNCTION_39_13();
    v40 = lpta_loadp_setscan_r(v37, v38, v39);
    LODWORD(v41) = 0;
    if (!v40)
    {
      v42 = OUTLINED_FUNCTION_37_14();
      bspush_ca_scan(v42, v43);
      v44 = OUTLINED_FUNCTION_0_35();
      v48 = testFldeq(v44, v45, v46, v47);
      v49 = 0;
      LODWORD(v41) = 0;
      if (!v48)
      {
LABEL_6:
        v50 = v49;
        OUTLINED_FUNCTION_53_11();
        bspush_ca_scan_boa();
        v51 = OUTLINED_FUNCTION_2_33();
        if (testFldeq(v51, v52, v53, v54))
        {
          LODWORD(v41) = v50;
        }

        else
        {
          LODWORD(v41) = 1;
        }
      }
    }

    while (2)
    {
      v55 = a1[13];
      if (v55)
      {
        v56 = OUTLINED_FUNCTION_77_9(v55);
        v60 = v59;
      }

      else
      {
        v56 = vback(a1, v41);
        v60 = 0;
      }

      v41 = 37;
      v49 = v60;
      switch(v56)
      {
        case 1:
          lpta_loadpn(a1, &v397);
          rpta_loadpn(a1, v395);
          if (!compare_ptas(a1) && !testeq(a1))
          {
            break;
          }

          goto LABEL_56;
        case 2:
          bspop_boa(a1);
          break;
        case 3:
          v135 = OUTLINED_FUNCTION_8_31();
          v139 = testFldeq(v135, v136, v137, v138);
          v49 = v60;
          LODWORD(v41) = v60;
          if (!v139)
          {
            goto LABEL_6;
          }

          continue;
        case 4:
          goto LABEL_6;
        case 5:
          bspop_boa(a1);
          goto LABEL_53;
        case 6:
LABEL_56:
          v154 = OUTLINED_FUNCTION_51_11();
          starttest(v154, v155);
          v156 = OUTLINED_FUNCTION_44_12();
          if (!lpta_loadp_setscan_r(v156, v157, v158) && !advanc(a1))
          {
            goto LABEL_58;
          }

          goto LABEL_60;
        case 7:
          goto LABEL_60;
        case 8:
LABEL_58:
          savescptr(a1, 8, v394);
          v162 = advance_tok(a1, v159, v160, v161);
          LODWORD(v41) = v60;
          if (!v162)
          {
            goto LABEL_59;
          }

          continue;
        case 9:
LABEL_59:
          OUTLINED_FUNCTION_99_5();
          savescptr(a1, v163, v393);
LABEL_60:
          v164 = OUTLINED_FUNCTION_45_12();
          starttest(v164, v165);
          v166 = OUTLINED_FUNCTION_44_12();
          if (lpta_loadp_setscan_r(v166, v167, v168))
          {
            goto LABEL_61;
          }

          v62 = OUTLINED_FUNCTION_7_31();
          v65 = 28;
          goto LABEL_141;
        case 10:
LABEL_61:
          v169 = OUTLINED_FUNCTION_46_12();
          starttest(v169, v170);
          OUTLINED_FUNCTION_86_7();
          v171 = OUTLINED_FUNCTION_10_31();
          setscan_nof_l(v171, v172, v173);
          if (v174)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        case 11:
        case 62:
          goto LABEL_153;
        case 12:
LABEL_62:
          v175 = OUTLINED_FUNCTION_53_11();
          starttest(v175, v176);
          v177 = OUTLINED_FUNCTION_54_11();
          if (lpta_loadp_setscan_r(v177, v178, v179))
          {
            goto LABEL_63;
          }

          v287 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v287, v288);
          goto LABEL_112;
        case 13:
LABEL_76:
          OUTLINED_FUNCTION_106_3(13, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392[0], v392[1], v392[2]);
          v232 = OUTLINED_FUNCTION_7_31();
          v235 = testFldeq(v232, v233, v234, 26);
          LODWORD(v41) = v60;
          if (v235)
          {
            continue;
          }

          v238 = advance_tok(a1, v60, v236, v237);
          LODWORD(v41) = v60;
          if (v238)
          {
            continue;
          }

          OUTLINED_FUNCTION_86_7();
          v239 = OUTLINED_FUNCTION_10_31();
          v242 = setscan_nof_r(v239, v240, v241);
          LODWORD(v41) = v60;
          if (v242)
          {
            continue;
          }

          v245 = advance_tok(a1, v60, v243, v244);
          LODWORD(v41) = v60;
          if (v245)
          {
            continue;
          }

          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v148 = OUTLINED_FUNCTION_7_31();
          v151 = 26;
          goto LABEL_52;
        case 14:
          bspop_boa(a1);
          goto LABEL_153;
        case 15:
LABEL_63:
          v180 = OUTLINED_FUNCTION_53_11();
          starttest(v180, v181);
          OUTLINED_FUNCTION_86_7();
          v182 = OUTLINED_FUNCTION_10_31();
          setscan_nof_l(v182, v183, v184);
          if (v185)
          {
            goto LABEL_64;
          }

          goto LABEL_88;
        case 16:
          v315 = advance_tok(a1, 37, v57, v58);
          LODWORD(v41) = v60;
          if (v315)
          {
            continue;
          }

          goto LABEL_112;
        case 17:
LABEL_112:
          v316 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v316, v317);
          v140 = OUTLINED_FUNCTION_9_31();
          v143 = 2;
          goto LABEL_113;
        case 18:
          v140 = OUTLINED_FUNCTION_9_31();
          v143 = 3;
LABEL_113:
          v318 = testFldeq(v140, v141, v142, v143);
          v41 = v60;
          if (!v318)
          {
            goto LABEL_114;
          }

          continue;
        case 19:
LABEL_114:
          v319 = advance_tok(a1, v41, v57, v58);
          LODWORD(v41) = v60;
          if (v319)
          {
            continue;
          }

          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v111 = OUTLINED_FUNCTION_9_31();
LABEL_116:
          v114 = 7;
          goto LABEL_147;
        case 20:
          bspop_boa(a1);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v111 = OUTLINED_FUNCTION_8_31();
          v114 = 5;
          goto LABEL_147;
        case 21:
          bspop_boa(a1);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v111 = OUTLINED_FUNCTION_8_31();
          goto LABEL_116;
        case 22:
          bspop_boa(a1);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v111 = OUTLINED_FUNCTION_9_31();
          v114 = 2;
          goto LABEL_147;
        case 23:
          bspop_boa(a1);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v111 = OUTLINED_FUNCTION_9_31();
          v114 = 3;
          goto LABEL_147;
        case 24:
        case 43:
          bspop_boa(a1);
          goto LABEL_142;
        case 25:
LABEL_64:
          v186 = OUTLINED_FUNCTION_53_11();
          starttest(v186, v187);
          v188 = OUTLINED_FUNCTION_44_12();
          if (lpta_loadp_setscan_r(v188, v189, v190))
          {
            goto LABEL_65;
          }

          v289 = OUTLINED_FUNCTION_2_33();
          v293 = testFldeq(v289, v290, v291, v292);
          LODWORD(v41) = v60;
          if (v293)
          {
            continue;
          }

          v296 = advance_tok(a1, v60, v294, v295);
          LODWORD(v41) = v60;
          if (v296)
          {
            continue;
          }

          lpta_rpta_loadp(a1, v399, &v397);
          v297 = OUTLINED_FUNCTION_56_10();
          v299 = 59;
          goto LABEL_110;
        case 26:
LABEL_88:
          OUTLINED_FUNCTION_106_3(26, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392[0], v392[1], v392[2]);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v111 = OUTLINED_FUNCTION_7_31();
          v114 = 32;
          goto LABEL_147;
        case 27:
          bspop_boa(a1);
          v89 = advance_tok(a1, v86, v87, v88);
          LODWORD(v41) = v60;
          if (v89)
          {
            continue;
          }

          OUTLINED_FUNCTION_86_7();
          v90 = OUTLINED_FUNCTION_10_31();
          v93 = setscan_nof_r(v90, v91, v92);
          LODWORD(v41) = v60;
          if (v93)
          {
            continue;
          }

          v94 = OUTLINED_FUNCTION_7_31();
          v97 = testFldeq(v94, v95, v96, 29);
          LODWORD(v41) = v60;
          if (v97)
          {
            continue;
          }

          v100 = advance_tok(a1, v60, v98, v99);
          LODWORD(v41) = v60;
          if (v100)
          {
            continue;
          }

          v62 = OUTLINED_FUNCTION_7_31();
          v65 = 29;
          goto LABEL_141;
        case 28:
LABEL_65:
          v191 = OUTLINED_FUNCTION_53_11();
          starttest(v191, v192);
          v193 = OUTLINED_FUNCTION_44_12();
          if (lpta_loadp_setscan_r(v193, v194, v195))
          {
            goto LABEL_66;
          }

          v300 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v300, v301);
          v115 = OUTLINED_FUNCTION_0_35();
          goto LABEL_105;
        case 29:
LABEL_66:
          v196 = OUTLINED_FUNCTION_53_11();
          starttest(v196, v197);
          v198 = OUTLINED_FUNCTION_44_12();
          if (lpta_loadp_setscan_r(v198, v199, v200))
          {
            goto LABEL_67;
          }

          goto LABEL_89;
        case 30:
          v115 = OUTLINED_FUNCTION_8_31();
LABEL_105:
          v302 = testFldeq(v115, v116, v117, v118);
          v41 = v60;
          if (!v302)
          {
            goto LABEL_106;
          }

          continue;
        case 31:
LABEL_106:
          v303 = advance_tok(a1, v41, v57, v58);
          LODWORD(v41) = v60;
          if (v303)
          {
            continue;
          }

          v304 = OUTLINED_FUNCTION_7_31();
          v307 = testFldeq(v304, v305, v306, 23);
          LODWORD(v41) = v60;
          if (v307)
          {
            continue;
          }

          v310 = advance_tok(a1, v60, v308, v309);
          LODWORD(v41) = v60;
          if (v310)
          {
            continue;
          }

          v311 = OUTLINED_FUNCTION_143_3();
          lpta_rpta_loadp(v311, v312, v313);
          v297 = OUTLINED_FUNCTION_56_10();
          v299 = 164;
LABEL_110:
          v314 = setd_lookup(v297, v298, v299);
          goto LABEL_143;
        case 32:
LABEL_67:
          v201 = OUTLINED_FUNCTION_53_11();
          starttest(v201, v202);
          v203 = OUTLINED_FUNCTION_44_12();
          if (lpta_loadp_setscan_l(v203, v204, v205))
          {
            goto LABEL_68;
          }

          goto LABEL_93;
        case 33:
LABEL_89:
          v261 = OUTLINED_FUNCTION_24_22();
          v264 = chstream(v261, v262, v263);
          LODWORD(v41) = v60;
          if (v264)
          {
            continue;
          }

          v265 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v265, v266);
          OUTLINED_FUNCTION_56_10();
          v267 = test_string_s();
          LODWORD(v41) = v60;
          if (v267)
          {
            continue;
          }

          v268 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v268, v269);
LABEL_92:
          v270 = 37;
LABEL_119:
          v41 = v270;
LABEL_120:
          bspush_ca_scan(a1, v41);
LABEL_121:
          v321 = OUTLINED_FUNCTION_53_11();
          v323 = chstream(v321, v322, 4u);
          LODWORD(v41) = v60;
          if (v323)
          {
            continue;
          }

          v62 = OUTLINED_FUNCTION_9_31();
          v65 = 7;
          goto LABEL_141;
        case 34:
          OUTLINED_FUNCTION_56_10();
          v320 = test_string_s();
          LODWORD(v41) = v60;
          if (v320)
          {
            continue;
          }

          v270 = 40;
          goto LABEL_119;
        case 35:
          OUTLINED_FUNCTION_56_10();
          v131 = test_string_s();
          LODWORD(v41) = v60;
          if (v131)
          {
            continue;
          }

          goto LABEL_92;
        case 36:
          goto LABEL_120;
        case 37:
        case 40:
          OUTLINED_FUNCTION_26_22();
          v61 = test_string_s();
          LODWORD(v41) = v60;
          if (v61)
          {
            continue;
          }

          goto LABEL_121;
        case 38:
        case 39:
          goto LABEL_121;
        case 41:
LABEL_68:
          v206 = OUTLINED_FUNCTION_53_11();
          starttest(v206, v207);
          v208 = OUTLINED_FUNCTION_44_12();
          if (lpta_loadp_setscan_l(v208, v209, v210))
          {
            goto LABEL_69;
          }

          goto LABEL_97;
        case 42:
LABEL_93:
          OUTLINED_FUNCTION_106_3(42, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392[0], v392[1], v392[2]);
          v271 = OUTLINED_FUNCTION_7_31();
          v274 = testFldeq(v271, v272, v273, 29);
          LODWORD(v41) = v60;
          if (!v274)
          {
            v277 = advance_tok(a1, v60, v275, v276);
            LODWORD(v41) = v60;
            if (!v277)
            {
              v278 = OUTLINED_FUNCTION_17_29();
              v281 = lpta_loadp_setscan_r(v278, v279, v280);
              LODWORD(v41) = v60;
              if (!v281)
              {
                goto LABEL_128;
              }
            }
          }

          continue;
        case 44:
LABEL_69:
          v211 = OUTLINED_FUNCTION_53_11();
          starttest(v211, v212);
          OUTLINED_FUNCTION_113_3();
          if (!v213)
          {
            goto LABEL_72;
          }

          v214 = OUTLINED_FUNCTION_44_12();
          if (lpta_loadp_setscan_r(v214, v215, v216))
          {
            goto LABEL_72;
          }

          v362 = OUTLINED_FUNCTION_0_35();
          v366 = testFldeq(v362, v363, v364, v365);
          LODWORD(v41) = v60;
          if (!v366)
          {
            goto LABEL_146;
          }

          continue;
        case 45:
LABEL_97:
          OUTLINED_FUNCTION_106_3(45, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392[0], v392[1], v392[2]);
          v282 = OUTLINED_FUNCTION_0_35();
          v286 = testFldeq(v282, v283, v284, v285);
          LODWORD(v41) = v60;
          if (!v286)
          {
            goto LABEL_128;
          }

          continue;
        case 46:
          bspop_boa(a1);
          goto LABEL_146;
        case 47:
          bspop_boa(a1);
          v69 = advance_tok(a1, v66, v67, v68);
          LODWORD(v41) = v60;
          if (v69)
          {
            continue;
          }

          v70 = OUTLINED_FUNCTION_2_33();
          v74 = testFldeq(v70, v71, v72, v73);
          LODWORD(v41) = v60;
          if (v74)
          {
            continue;
          }

          v77 = advance_tok(a1, v60, v75, v76);
          LODWORD(v41) = v60;
          if (v77)
          {
            continue;
          }

          v78 = OUTLINED_FUNCTION_17_29();
          v81 = lpta_loadp_setscan_r(v78, v79, v80);
          LODWORD(v41) = v60;
          if (v81)
          {
            continue;
          }

          v82 = OUTLINED_FUNCTION_2_33();
          goto LABEL_86;
        case 48:
LABEL_72:
          v217 = OUTLINED_FUNCTION_53_11();
          starttest(v217, v218);
          OUTLINED_FUNCTION_86_7();
          v219 = OUTLINED_FUNCTION_10_31();
          if (setscan_nof_r(v219, v220, v221))
          {
            goto LABEL_73;
          }

          goto LABEL_81;
        case 49:
          bspop_boa(a1);
          goto LABEL_43;
        case 50:
LABEL_73:
          v222 = OUTLINED_FUNCTION_53_11();
          starttest(v222, v223);
          v224 = OUTLINED_FUNCTION_54_11();
          if (lpta_loadp_setscan_r(v224, v225, v226))
          {
            goto LABEL_3;
          }

          v227 = OUTLINED_FUNCTION_0_35();
          v231 = testFldeq(v227, v228, v229, v230);
          LODWORD(v41) = v60;
          if (!v231)
          {
            goto LABEL_146;
          }

          continue;
        case 51:
LABEL_81:
          OUTLINED_FUNCTION_106_3(51, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392[0], v392[1], v392[2]);
          v246 = OUTLINED_FUNCTION_9_31();
          v249 = testFldeq(v246, v247, v248, 8);
          LODWORD(v41) = v60;
          if (v249)
          {
            continue;
          }

          v252 = advance_tok(a1, v60, v250, v251);
          LODWORD(v41) = v60;
          if (v252)
          {
            continue;
          }

          OUTLINED_FUNCTION_86_7();
          v253 = OUTLINED_FUNCTION_10_31();
          setscan_nof_l(v253, v254, v255);
          LODWORD(v41) = v60;
          if (v258)
          {
            continue;
          }

          v259 = advance_tok(a1, v60, v256, v257);
          LODWORD(v41) = v60;
          if (v259)
          {
            continue;
          }

          v82 = OUTLINED_FUNCTION_7_31();
          v85 = 23;
LABEL_86:
          v260 = testFldeq(v82, v83, v84, v85);
          v41 = v60;
          if (v260)
          {
            continue;
          }

LABEL_43:
          v134 = advance_tok(a1, v41, v132, v133);
          LODWORD(v41) = v60;
          if (!v134)
          {
            goto LABEL_153;
          }

          continue;
        case 53:
        case 57:
          bspop_boa(a1);
LABEL_128:
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v111 = OUTLINED_FUNCTION_7_31();
          v114 = 29;
          goto LABEL_147;
        case 54:
          bspop_boa(a1);
          v126 = advance_tok(a1, v123, v124, v125);
          LODWORD(v41) = v60;
          if (v126)
          {
            continue;
          }

          v127 = OUTLINED_FUNCTION_7_31();
          v130 = testFldeq(v127, v128, v129, 21);
          LODWORD(v41) = v60;
          if (v130)
          {
            continue;
          }

          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v111 = OUTLINED_FUNCTION_6_31();
          goto LABEL_147;
        case 55:
          bspop_boa(a1);
          v327 = advance_tok(a1, v324, v325, v326);
          LODWORD(v41) = v60;
          if (v327)
          {
            continue;
          }

          v328 = advanc(a1);
          LODWORD(v41) = v60;
          if (v328)
          {
            continue;
          }

          goto LABEL_125;
        case 56:
LABEL_125:
          v329 = OUTLINED_FUNCTION_82_8();
          savescptr(v329, v330, v331);
          v332 = OUTLINED_FUNCTION_0_35();
          v336 = testFldeq(v332, v333, v334, v335);
          LODWORD(v41) = v60;
          if (v336)
          {
            continue;
          }

LABEL_146:
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v111 = OUTLINED_FUNCTION_2_33();
LABEL_147:
          v153 = testFldeq(v111, v112, v113, v114);
          goto LABEL_148;
        case 58:
          bspop_boa(a1);
          v147 = advance_tok(a1, v144, v145, v146);
          LODWORD(v41) = v60;
          if (v147)
          {
            continue;
          }

          goto LABEL_51;
        case 59:
LABEL_51:
          OUTLINED_FUNCTION_75_10(59, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v148 = OUTLINED_FUNCTION_0_35();
LABEL_52:
          v152 = testFldeq(v148, v149, v150, v151);
          v41 = v60;
          if (v152)
          {
            continue;
          }

LABEL_53:
          v153 = advance_tok(a1, v41, v121, v122);
LABEL_148:
          if (v153)
          {
            LODWORD(v41) = v60;
          }

          else
          {
            LODWORD(v41) = 1;
          }

          continue;
        case 60:
          bspop_boa(a1);
          if (is_monosyllable(a1))
          {
            goto LABEL_136;
          }

          v345 = OUTLINED_FUNCTION_78_9();
          if (is_monosyllable(v345))
          {
            goto LABEL_136;
          }

          goto LABEL_153;
        case 61:
LABEL_136:
          v346 = OUTLINED_FUNCTION_53_11();
          starttest(v346, v347);
          OUTLINED_FUNCTION_86_7();
          v348 = OUTLINED_FUNCTION_10_31();
          setscan_nof_l(v348, v349, v350);
          if (v351)
          {
            goto LABEL_137;
          }

          goto LABEL_139;
        case 63:
LABEL_137:
          v352 = OUTLINED_FUNCTION_53_11();
          starttest(v352, v353);
          OUTLINED_FUNCTION_86_7();
          v354 = OUTLINED_FUNCTION_10_31();
          if (!setscan_nof_r(v354, v355, v356))
          {
            goto LABEL_140;
          }

LABEL_153:
          demote_word(a1);
          goto LABEL_154;
        case 64:
          goto LABEL_139;
        case 65:
          v103 = OUTLINED_FUNCTION_6_31();
          v107 = testFldeq(v103, v104, v105, v106);
          LODWORD(v41) = v60;
          if (v107)
          {
            continue;
          }

          v110 = advance_tok(a1, v60, v108, v109);
          LODWORD(v41) = v60;
          if (v110)
          {
            continue;
          }

LABEL_139:
          v357 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v357, v358);
          goto LABEL_140;
        case 66:
          goto LABEL_140;
        case 67:
          v339 = OUTLINED_FUNCTION_7_31();
          v342 = 23;
          goto LABEL_131;
        case 68:
          goto LABEL_132;
        case 69:
          v337 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v337, v338);
          v339 = OUTLINED_FUNCTION_7_31();
          v342 = 21;
LABEL_131:
          v343 = testFldeq(v339, v340, v341, v342);
          v41 = v60;
          if (v343)
          {
            continue;
          }

LABEL_132:
          v344 = advance_tok(a1, v41, v57, v58);
          LODWORD(v41) = v60;
          if (v344)
          {
            continue;
          }

LABEL_140:
          v359 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v359, v360);
          v62 = OUTLINED_FUNCTION_0_35();
LABEL_141:
          v361 = testFldeq(v62, v63, v64, v65);
          v41 = v60;
          if (v361)
          {
            continue;
          }

LABEL_142:
          v314 = advance_tok(a1, v41, v57, v58);
LABEL_143:
          LODWORD(v41) = v60;
          if (!v314)
          {
            goto LABEL_3;
          }

          continue;
        case 70:
          v101 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v101, v102);
          v62 = OUTLINED_FUNCTION_7_31();
          v65 = 21;
          goto LABEL_141;
        case 71:
          goto LABEL_142;
        case 72:
          v119 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v119, v120);
          v62 = OUTLINED_FUNCTION_7_31();
          v65 = 23;
          goto LABEL_141;
        case 73:
          v62 = OUTLINED_FUNCTION_7_31();
          v65 = 18;
          goto LABEL_141;
        case 74:
LABEL_154:
          *(a3 + 8) = v398;
          vretproc(a1);
          return 0;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(a1);
  return 94;
}

void destress_hyphenated_wds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_34_15();
  OUTLINED_FUNCTION_135_3();
  v229[0] = 0;
  v229[1] = 0;
  OUTLINED_FUNCTION_71_10();
  bzero(v228, v8);
  OUTLINED_FUNCTION_70_10();
  bzero(v238, v9);
  v10 = setjmp(v238);
  if (v10 || (v11 = OUTLINED_FUNCTION_158_2(v10, v228), v11) || (OUTLINED_FUNCTION_120_3(v11, v237), OUTLINED_FUNCTION_84_8(v12, v236), OUTLINED_FUNCTION_80_9(v13, v234), push_ptr_init(v6, v233), push_ptr_init(v6, v231), v230 = 65532, push_ptr_init(v6, v229), fence_32(v6, 0, &null_str_11), v14 = OUTLINED_FUNCTION_62_10(), fence_32(v14, v15, v16), v17 = OUTLINED_FUNCTION_110_3(), starttest(v17, v18), *(v6 + 136) = 1, v19 = OUTLINED_FUNCTION_15_29(), setscan_nof_r(v19, 1, v20)) || (OUTLINED_FUNCTION_62_10(), test_string_s()))
  {
LABEL_5:
    vretproc(v6);
    goto LABEL_6;
  }

  v21 = 0;
  v22 = 0;
LABEL_8:
  LODWORD(v23) = v22;
  if (chstream(v6, 2, 4u))
  {
    goto LABEL_59;
  }

LABEL_9:
  v24 = OUTLINED_FUNCTION_123_3();
  savescptr(v24, 3, v233);
  v28 = advance_tok(v6, v25, v26, v27);
  v29 = v21;
  if (v28)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
LABEL_59:
              v136 = v23;
              while (2)
              {
                v137 = *(v6 + 104);
                if (v137)
                {
                  v138 = OUTLINED_FUNCTION_77_9(v137);
                  v22 = v139;
                }

                else
                {
                  v138 = vback(v6, v136);
                  v22 = 0;
                }

                v140 = v138 - 2;
                v80 = v21;
                v81 = v22;
                v79 = v21;
                v98 = v22;
                v88 = v21;
                v23 = v22;
                v128 = v21;
                v129 = v22;
                v134 = v21;
                v135 = v22;
                switch(v140)
                {
                  case 0:
                    goto LABEL_8;
                  case 1:
                    goto LABEL_9;
                  case 2:
                    v29 = v21;
                    goto LABEL_10;
                  case 3:
                    goto LABEL_11;
                  case 4:
                    goto LABEL_12;
                  case 5:
                    goto LABEL_32;
                  case 6:
                    v141 = OUTLINED_FUNCTION_8_31();
                    v144 = testFldeq(v141, v142, v143, 10);
                    v136 = v22;
                    if (v144)
                    {
                      continue;
                    }

                    v145 = OUTLINED_FUNCTION_7_31();
                    v148 = 13;
                    goto LABEL_78;
                  case 7:
                    v170 = OUTLINED_FUNCTION_53_11();
                    bspush_ca_scan(v170, v171);
                    v145 = OUTLINED_FUNCTION_7_31();
                    v148 = 12;
                    goto LABEL_78;
                  case 8:
                  case 10:
                    goto LABEL_34;
                  case 9:
                    v145 = OUTLINED_FUNCTION_9_31();
                    v148 = 9;
LABEL_78:
                    v172 = testFldeq(v145, v146, v147, v148);
                    v136 = v22;
                    if (v172)
                    {
                      continue;
                    }

                    v80 = v21;
                    v81 = v22;
                    break;
                  case 11:
                    goto LABEL_35;
                  case 12:
                    LODWORD(v23) = v22;
                    goto LABEL_36;
                  case 13:
                    OUTLINED_FUNCTION_26_22();
                    v161 = test_string_s();
                    v136 = v22;
                    if (v161)
                    {
                      continue;
                    }

                    v79 = v21;
                    v98 = v22;
                    goto LABEL_44;
                  case 14:
                    goto LABEL_44;
                  case 16:
                  case 40:
                  case 41:
                    goto LABEL_110;
                  case 17:
                  case 18:
                  case 23:
                  case 32:
                  case 33:
                  case 34:
                  case 36:
                  case 39:
                    goto LABEL_109;
                  case 19:
                    goto LABEL_38;
                  case 20:
                    v89 = v21;
                    goto LABEL_39;
                  case 21:
                    goto LABEL_104;
                  case 22:
                    v162 = OUTLINED_FUNCTION_1_34();
                    v166 = testFldeq(v162, v163, v164, v165);
                    v136 = v22;
                    if (v166)
                    {
                      continue;
                    }

                    v169 = advance_tok(v6, v22, v167, v168);
                    v136 = v22;
                    if (v169)
                    {
                      continue;
                    }

                    v88 = v21;
                    LODWORD(v23) = v22;
                    goto LABEL_104;
                  case 24:
                    v91 = v21;
                    goto LABEL_41;
                  case 25:
                    v154 = OUTLINED_FUNCTION_8_31();
                    v157 = testFldeq(v154, v155, v156, 6);
                    v136 = v22;
                    if (v157)
                    {
                      continue;
                    }

                    v160 = advance_tok(v6, v22, v158, v159);
                    v136 = v22;
                    if (v160)
                    {
                      continue;
                    }

                    v128 = v21;
                    v129 = v22;
                    goto LABEL_58;
                  case 26:
                    goto LABEL_58;
                  case 27:
                    v149 = OUTLINED_FUNCTION_0_35();
                    v153 = testFldeq(v149, v150, v151, v152);
                    v136 = v22;
                    if (v153)
                    {
                      continue;
                    }

                    v134 = v21;
                    v135 = v22;
                    goto LABEL_99;
                  case 28:
                    goto LABEL_99;
                  case 29:
                    LODWORD(v23) = v22;
                    goto LABEL_96;
                  case 30:
                    goto LABEL_85;
                  case 31:
                    bspop_boa(v6);
                    v176 = advance_tok(v6, v173, v174, v175);
                    v136 = v22;
                    if (!v176)
                    {
                      v177 = OUTLINED_FUNCTION_53_11();
                      starttest_l(v177, v178);
                      v179 = OUTLINED_FUNCTION_121_3();
                      move_i(v179, v180, 1);
                      v181 = mark_word_stress(v6);
                      v136 = v22;
                      if (!v181)
                      {
                        goto LABEL_109;
                      }
                    }

                    continue;
                  case 35:
                    goto LABEL_13;
                  case 37:
                    goto LABEL_14;
                  case 38:
                    goto LABEL_15;
                  default:
                    goto LABEL_5;
                }

                break;
              }

LABEL_34:
              LODWORD(v23) = v81;
              v21 = v80;
            }

            while (advance_tok(v6, v80, v81, v79));
LABEL_35:
            v82 = OUTLINED_FUNCTION_123_3();
            savescptr(v82, 13, v231);
            starttest(v6, 14);
            v83 = OUTLINED_FUNCTION_103_5();
            if (lpta_loadp_setscan_r(v83, v84, 1))
            {
              break;
            }

            bspush_ca_scan(v6, 15);
            OUTLINED_FUNCTION_62_10();
            v97 = test_string_s();
            v79 = v21;
            v98 = v23;
            if (!v97)
            {
LABEL_44:
              LODWORD(v23) = v98;
              v21 = v79;
              OUTLINED_FUNCTION_62_10();
              if (!test_string_s())
              {
                *(v6 + 136) = 1;
                v99 = OUTLINED_FUNCTION_15_29();
                if (!test_ptr(v99, v100, v101))
                {
                  starttest(v6, 17);
                  v102 = OUTLINED_FUNCTION_88_7();
                  if (lpta_loadp_setscan_r(v102, v103, 4))
                  {
                    goto LABEL_5;
                  }

                  v104 = OUTLINED_FUNCTION_90_7();
                  if (!npush_fld(v104, v105, 6u))
                  {
                    v106 = OUTLINED_FUNCTION_62_10();
                    npush_i(v106);
                    if (!if_testgt(v6, v107, v108, v109, v110, v111, v112, v113) && !advance_tok(v6, v114, v115, v116))
                    {
                      *(v6 + 136) = 1;
                      v117 = OUTLINED_FUNCTION_15_29();
                      if (!test_ptr(v117, v118, v119))
                      {
                        v120 = OUTLINED_FUNCTION_119_3();
                        starttest(v120, v121);
                        move_i(v6, &v230, 1);
                        v122 = OUTLINED_FUNCTION_88_7();
                        if (!mark_word_stress(v122))
                        {
                          goto LABEL_110;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_36:
          starttest(v6, 21);
          v85 = OUTLINED_FUNCTION_103_5();
          if (lpta_loadp_setscan_r(v85, v86, 4))
          {
            break;
          }

          v123 = OUTLINED_FUNCTION_90_7();
          if (!testFldeq(v123, v124, 2, 18) && !advance_tok(v6, v125, v126, v127))
          {
            goto LABEL_55;
          }
        }

        LODWORD(v22) = v23;
LABEL_38:
        starttest(v6, 22);
        v87 = lpta_loadp_setscan_r(v6, v231, 4);
        v88 = v21;
        LODWORD(v23) = v22;
        v89 = v21;
        if (!v87)
        {
          break;
        }

LABEL_39:
        v90 = v89;
        starttest(v6, 26);
        if (lpta_loadp_setscan_r(v6, v231, 4))
        {
          v91 = v90;
LABEL_41:
          v92 = OUTLINED_FUNCTION_140_3();
          starttest(v92, v93);
          v94 = OUTLINED_FUNCTION_144_3();
          move_i(v94, v95, 1);
          v96 = OUTLINED_FUNCTION_103_5();
          v21 = v91;
          LODWORD(v23) = v22;
          if (!mark_word_stress(v96))
          {
            goto LABEL_109;
          }
        }

        else
        {
          bspush_ca_scan(v6, 27);
          v128 = v90;
          v129 = v22;
LABEL_58:
          LODWORD(v23) = v129;
          v21 = v128;
          bspush_ca_scan(v6, 29);
          v130 = OUTLINED_FUNCTION_49_12();
          v133 = testFldeq(v130, v131, v132, 3);
          v134 = v21;
          v135 = v23;
          if (!v133)
          {
LABEL_99:
            LODWORD(v23) = v135;
            v21 = v134;
            v203 = OUTLINED_FUNCTION_90_7();
            if (!npush_fld(v203, v204, 6u))
            {
              v205 = OUTLINED_FUNCTION_87_7();
              npush_i(v205);
              if (!if_testlt(v6, v206, v207, v208, v209, v210, v211, v212) && !advance_tok(v6, v213, v214, v215))
              {
                starttest(v6, 31);
                v216 = OUTLINED_FUNCTION_88_7();
                if (lpta_loadp_setscan_l(v216, v217, 4))
                {
LABEL_96:
                  v200 = v21;
                  v201 = OUTLINED_FUNCTION_141_3();
                  starttest(v201, v202);
LABEL_108:
                  v224 = OUTLINED_FUNCTION_144_3();
                  move_i(v224, v225, v226);
                  v227 = OUTLINED_FUNCTION_103_5();
                  v21 = v200;
                  if (!mark_word_stress(v227))
                  {
                    goto LABEL_109;
                  }
                }

                else
                {
LABEL_85:
                  v182 = OUTLINED_FUNCTION_123_3();
                  savescptr(v182, 32, v229);
                  *(v6 + 136) = 1;
                  v183 = OUTLINED_FUNCTION_15_29();
                  if (!test_ptr(v183, v184, v185))
                  {
                    v186 = OUTLINED_FUNCTION_85_8();
                    if (!lpta_loadp_setscan_r(v186, v187, 4))
                    {
                      v188 = OUTLINED_FUNCTION_49_12();
                      if (!testFldeq(v188, v189, v190, 1))
                      {
                        v191 = OUTLINED_FUNCTION_90_7();
                        if (!testFldeq(v191, v192, 2, 4))
                        {
                          v193 = OUTLINED_FUNCTION_90_7();
                          if (!testFldeq(v193, v194, 3, 4) && !advance_tok(v6, v195, v196, v197) && !lpta_loadp_setscan_r(v6, v237, 5))
                          {
                            OUTLINED_FUNCTION_152_2();
                            bspush_ca_scan_boa();
                            v198 = OUTLINED_FUNCTION_111_3();
                            if (!testFldeq(v198, v199, 1, 3))
                            {
                              LODWORD(v23) = 1;
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

LABEL_104:
      v200 = v88;
      bspush_ca_scan(v6, 24);
      v218 = OUTLINED_FUNCTION_49_12();
      if (!testFldeq(v218, v219, v220, 1) && !advance_tok(v6, v221, v222, v223))
      {
        starttest_e(v6, 25);
        goto LABEL_108;
      }

      v21 = v200;
    }
  }

LABEL_10:
  v21 = v29;
  savescptr(v6, 4, v231);
LABEL_11:
  v23 = v22;
  v30 = OUTLINED_FUNCTION_96_5();
  starttest(v30, v31);
  v32 = OUTLINED_FUNCTION_85_8();
  if (!lpta_loadp_setscan_r(v32, v33, 4))
  {
    v50 = OUTLINED_FUNCTION_49_12();
    if (!testFldeq(v50, v51, v52, 1) && !advance_tok(v6, v53, v54, v55) && !advanc(v6))
    {
LABEL_32:
      v70 = OUTLINED_FUNCTION_123_3();
      savescptr(v70, 7, v233);
      bspush_ca_scan(v6, 8);
      v71 = OUTLINED_FUNCTION_49_12();
      if (!testFldeq(v71, v72, v73, 4))
      {
        v74 = OUTLINED_FUNCTION_127_3();
        bspush_ca_scan(v74, v75);
        v76 = OUTLINED_FUNCTION_90_7();
        v78 = testFldeq(v76, v77, 2, 11);
        v80 = v21;
        v81 = v23;
        if (!v78)
        {
          goto LABEL_34;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_12:
  starttest(v6, 37);
  v34 = OUTLINED_FUNCTION_103_5();
  if (lpta_loadp_setscan_r(v34, v35, 4))
  {
LABEL_13:
    starttest(v6, 36);
    v36 = OUTLINED_FUNCTION_88_7();
    if (!lpta_loadp_setscan_l(v36, v37, 4))
    {
LABEL_14:
      savescptr(v6, 39, v229);
LABEL_15:
      LODWORD(v23) = v22;
      if (test_synch(v6, 40, 1, &_MergedGlobals_28))
      {
        goto LABEL_59;
      }

      if (lpta_loadp_setscan_r(v6, v229, 4))
      {
        goto LABEL_59;
      }

      v38 = OUTLINED_FUNCTION_49_12();
      if (testFldeq(v38, v39, v40, 1))
      {
        goto LABEL_59;
      }

      if (advance_tok(v6, v41, v42, v43))
      {
        goto LABEL_59;
      }

      v44 = OUTLINED_FUNCTION_49_12();
      if (testFldeq(v44, v45, v46, 4))
      {
        goto LABEL_59;
      }

LABEL_55:
      if (advance_tok(v6, v47, v48, v49))
      {
        goto LABEL_59;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v56 = OUTLINED_FUNCTION_49_12();
    if (testFldeq(v56, v57, v58, 3) || (v59 = OUTLINED_FUNCTION_90_7(), testFldeq(v59, v60, 3, 9)) || advance_tok(v6, v61, v62, v63) || (*(v6 + 136) = 1, v64 = OUTLINED_FUNCTION_15_29(), test_ptr(v64, v65, v66)))
    {
      LODWORD(v23) = v22;
      goto LABEL_59;
    }

    starttest_l(v6, 38);
    v67 = OUTLINED_FUNCTION_144_3();
    move_i(v67, v68, 1);
    v69 = OUTLINED_FUNCTION_103_5();
    v21 = 1;
    LODWORD(v23) = v22;
    if (mark_word_stress(v69))
    {
      goto LABEL_59;
    }
  }

LABEL_109:
  demote_word(v6);
LABEL_110:
  v235 = v232;
  *(v7 + 8) = v232;
  vretproc(v6);
LABEL_6:
  OUTLINED_FUNCTION_124_3();
}

uint64_t destress_FW(uint64_t a1)
{
  OUTLINED_FUNCTION_25_22();
  v421 = *MEMORY[0x277D85DE8];
  v409 = 0;
  v410 = 0;
  OUTLINED_FUNCTION_18_28(v2, v3, v4, v5, v6, v7, v8, v9, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408);
  OUTLINED_FUNCTION_70_10();
  bzero(v420, v10);
  v11 = setjmp(v420);
  if (v11 || OUTLINED_FUNCTION_65_10(v11, &v382, v12, v13, v14, v15, v16, v17, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_76_10();
  OUTLINED_FUNCTION_130_3(v19, v20);
  OUTLINED_FUNCTION_36_14();
  v21 = OUTLINED_FUNCTION_72_10();
  v23 = push_ptr_init(v21, v22);
  v25 = OUTLINED_FUNCTION_131_3(v23, v24, &null_str_11);
  OUTLINED_FUNCTION_91_7(v25, v26, &_MergedGlobals_28);
  v27 = OUTLINED_FUNCTION_97_5();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_21_23();
  if (!lpta_loadp_setscan_l(v29, v30, v31))
  {
    v55 = OUTLINED_FUNCTION_7_31();
    if (testFldeq(v55, v56, v57, 27))
    {
      LODWORD(v61) = 0;
    }

    else
    {
      v62 = advance_tok(v1, v58, v59, v60);
      LODWORD(v32) = 0;
      LODWORD(v61) = 0;
      if (!v62)
      {
LABEL_14:
        v63 = OUTLINED_FUNCTION_20_24();
        v66 = test_synch(v63, v64, 1, v65);
        goto LABEL_59;
      }
    }

    goto LABEL_15;
  }

LABEL_5:
  LODWORD(v32) = 4;
  v33 = OUTLINED_FUNCTION_105_4();
  starttest(v33, v34);
  v35 = OUTLINED_FUNCTION_63_10();
  lpta_loadp_setscan_l(v35, v36, 4);
  OUTLINED_FUNCTION_138_3();
  if (!v37)
  {
LABEL_6:
    OUTLINED_FUNCTION_75_10(5, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
    v38 = OUTLINED_FUNCTION_1_34();
    if (!testFldeq(v38, v39, v40, v41))
    {
      v42 = OUTLINED_FUNCTION_9_31();
      if (!testFldeq(v42, v43, v44, 9) && !advance_tok(v1, v45, v46, v47))
      {
        OUTLINED_FUNCTION_42_12();
        bspush_ca_scan_boa();
        v48 = OUTLINED_FUNCTION_7_31();
        if (!testFldeq(v48, v49, v50, 28))
        {
          v54 = advance_tok(v1, v51, v52, v53);
          goto LABEL_118;
        }
      }
    }

    goto LABEL_128;
  }

LABEL_63:
  v176 = OUTLINED_FUNCTION_47_12();
  starttest(v176, v177);
  v178 = OUTLINED_FUNCTION_11_31();
  lpta_loadp_setscan_l(v178, v179, v180);
  OUTLINED_FUNCTION_138_3();
  if (v182)
  {
LABEL_64:
    v32 = v181;
    v183 = OUTLINED_FUNCTION_53_11();
    starttest(v183, v184);
    v185 = OUTLINED_FUNCTION_17_29();
    if (lpta_loadp_setscan_r(v185, v186, v187))
    {
LABEL_65:
      v188 = OUTLINED_FUNCTION_53_11();
      starttest(v188, v189);
      v190 = OUTLINED_FUNCTION_11_31();
      if (!lpta_loadp_setscan_l(v190, v191, v192))
      {
LABEL_93:
        OUTLINED_FUNCTION_75_10(18, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
        v296 = OUTLINED_FUNCTION_1_34();
        if (!testFldeq(v296, v297, v298, v299) && !advance_tok(v1, v300, v301, v302))
        {
          v303 = OUTLINED_FUNCTION_8_31();
          if (!testFldeq(v303, v304, v305, 6))
          {
            v306 = OUTLINED_FUNCTION_7_31();
            if (!testFldeq(v306, v307, v308, 19))
            {
              v309 = OUTLINED_FUNCTION_6_31();
              if (!testFldeq(v309, v310, v311, v312) && !advance_tok(v1, v313, v314, v315))
              {
                v316 = OUTLINED_FUNCTION_16_29();
                if (!lpta_loadp_setscan_r(v316, v317, v318))
                {
                  v319 = OUTLINED_FUNCTION_53_11();
                  bspush_ca_scan(v319, v320);
                  v70 = v32;
LABEL_42:
                  v32 = v70;
                  v142 = OUTLINED_FUNCTION_8_31();
                  if (!testFldeq(v142, v143, v144, 6))
                  {
                    v145 = OUTLINED_FUNCTION_7_31();
                    if (!testFldeq(v145, v146, v147, 19))
                    {
                      v148 = OUTLINED_FUNCTION_6_31();
                      if (!testFldeq(v148, v149, v150, v151) && !advance_tok(v1, v152, v153, v154))
                      {
                        v155 = OUTLINED_FUNCTION_53_11();
                        bspush_ca_scan(v155, v156);
                        v157 = OUTLINED_FUNCTION_1_34();
LABEL_52:
                        v166 = testFldeq(v157, v158, v159, v160);
                        v71 = v32;
                        v61 = v32;
                        if (!v166)
                        {
LABEL_53:
                          LODWORD(v32) = v71;
                          goto LABEL_58;
                        }

                        goto LABEL_15;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_128;
      }

LABEL_66:
      v193 = OUTLINED_FUNCTION_53_11();
      starttest(v193, v194);
      v195 = OUTLINED_FUNCTION_11_31();
      lpta_loadp_setscan_l(v195, v196, v197);
      OUTLINED_FUNCTION_138_3();
      if (!v198)
      {
LABEL_101:
        OUTLINED_FUNCTION_75_10(24, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
        v321 = OUTLINED_FUNCTION_5_31();
        if (!testFldeq(v321, v322, v323, v324) && !advance_tok(v1, v325, v326, v327))
        {
          v328 = OUTLINED_FUNCTION_9_31();
          if (!testFldeq(v328, v329, v330, 3) && !advance_tok(v1, v331, v332, v333))
          {
            v334 = OUTLINED_FUNCTION_16_29();
            if (!lpta_loadp_setscan_r(v334, v335, v336))
            {
              v337 = OUTLINED_FUNCTION_53_11();
              bspush_ca_scan(v337, v338);
              v339 = OUTLINED_FUNCTION_1_34();
              if (!testFldeq(v339, v340, v341, v342))
              {
                v161 = OUTLINED_FUNCTION_9_31();
                v164 = 9;
LABEL_48:
                v165 = testFldeq(v161, v162, v163, v164);
                v72 = v32;
                v61 = v32;
                if (v165)
                {
                  goto LABEL_15;
                }

LABEL_49:
                LODWORD(v32) = v72;
                if (!advance_tok(v1, v61, v69, v73))
                {
                  goto LABEL_58;
                }
              }
            }
          }
        }

        goto LABEL_128;
      }

LABEL_67:
      v199 = OUTLINED_FUNCTION_53_11();
      starttest(v199, v200);
      v201 = OUTLINED_FUNCTION_11_31();
      lpta_loadp_setscan_l(v201, v202, v203);
      OUTLINED_FUNCTION_138_3();
      if (!v204)
      {
LABEL_108:
        OUTLINED_FUNCTION_75_10(28, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
        v343 = OUTLINED_FUNCTION_5_31();
        if (!testFldeq(v343, v344, v345, v346) && !advance_tok(v1, v347, v348, v349))
        {
          v350 = OUTLINED_FUNCTION_0_35();
          if (!testFldeq(v350, v351, v352, v353) && !advance_tok(v1, v354, v355, v356))
          {
            v357 = OUTLINED_FUNCTION_16_29();
            if (!lpta_loadp_setscan_r(v357, v358, v359))
            {
              v360 = OUTLINED_FUNCTION_53_11();
              bspush_ca_scan(v360, v361);
              v169 = OUTLINED_FUNCTION_8_31();
              v172 = 6;
LABEL_56:
              v173 = testFldeq(v169, v170, v171, v172);
              v73 = v32;
              v61 = v32;
              if (!v173)
              {
LABEL_57:
                LODWORD(v32) = v73;
                goto LABEL_58;
              }

              goto LABEL_15;
            }
          }
        }

        goto LABEL_128;
      }

LABEL_68:
      v205 = OUTLINED_FUNCTION_53_11();
      starttest(v205, v206);
      v207 = OUTLINED_FUNCTION_11_31();
      lpta_loadp_setscan_l(v207, v208, v209);
      OUTLINED_FUNCTION_138_3();
      if (v210)
      {
LABEL_69:
        v211 = OUTLINED_FUNCTION_53_11();
        starttest(v211, v212);
        v213 = OUTLINED_FUNCTION_11_31();
        lpta_loadp_setscan_l(v213, v214, v215);
        OUTLINED_FUNCTION_138_3();
        if (v216)
        {
LABEL_70:
          v217 = OUTLINED_FUNCTION_53_11();
          starttest(v217, v218);
          v219 = OUTLINED_FUNCTION_17_29();
          lpta_loadp_setscan_l(v219, v220, v221);
          OUTLINED_FUNCTION_138_3();
          if (v222)
          {
LABEL_71:
            LODWORD(v32) = v175;
            v223 = OUTLINED_FUNCTION_53_11();
            starttest(v223, v224);
            v225 = OUTLINED_FUNCTION_17_29();
            if (!lpta_loadp_setscan_r(v225, v226, v227))
            {
              v228 = OUTLINED_FUNCTION_7_31();
              if (!testFldeq(v228, v229, v230, 35) && !advance_tok(v1, v231, v232, v233))
              {
                v234 = OUTLINED_FUNCTION_52_11();
                if (!npush_fld(v234, v235, 6u))
                {
                  v236 = OUTLINED_FUNCTION_87_7();
                  npush_i(v236);
                  if (!if_testle(v1, v237, v238, v239, v240, v241, v242, v243))
                  {
                    goto LABEL_58;
                  }
                }
              }

              goto LABEL_128;
            }

LABEL_3:
            vretproc(v1);
            return 94;
          }

LABEL_121:
          OUTLINED_FUNCTION_75_10(41, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
          v373 = OUTLINED_FUNCTION_7_31();
          if (!testFldeq(v373, v374, v375, 18) && !advance_tok(v1, v376, v377, v378))
          {
            v379 = OUTLINED_FUNCTION_16_29();
            if (!lpta_loadp_setscan_r(v379, v380, v381))
            {
              v292 = OUTLINED_FUNCTION_7_31();
              v295 = 35;
              goto LABEL_127;
            }
          }

          goto LABEL_128;
        }

LABEL_116:
        OUTLINED_FUNCTION_75_10(38, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
        v366 = OUTLINED_FUNCTION_5_31();
        if (testFldeq(v366, v367, v368, v369))
        {
          goto LABEL_128;
        }
      }

      else
      {
LABEL_114:
        OUTLINED_FUNCTION_75_10(33, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
        v362 = OUTLINED_FUNCTION_5_31();
        if (testFldeq(v362, v363, v364, v365))
        {
          goto LABEL_128;
        }
      }

      OUTLINED_FUNCTION_53_11();
      bspush_ca_scan_boa();
      v370 = OUTLINED_FUNCTION_7_31();
      v54 = testFldeq(v370, v371, v372, 35);
LABEL_118:
      if (v54)
      {
        LODWORD(v61) = v32;
      }

      else
      {
        LODWORD(v61) = 1;
      }

      goto LABEL_15;
    }

    v262 = OUTLINED_FUNCTION_1_34();
    if (!testFldeq(v262, v263, v264, v265))
    {
      v266 = OUTLINED_FUNCTION_7_31();
      if (!testFldeq(v266, v267, v268, 8))
      {
        v269 = OUTLINED_FUNCTION_6_31();
        if (!testFldeq(v269, v270, v271, v272) && !advance_tok(v1, v273, v274, v275))
        {
          v276 = OUTLINED_FUNCTION_53_11();
          starttest(v276, v277);
          v278 = OUTLINED_FUNCTION_11_31();
          if (!lpta_loadp_setscan_r(v278, v279, v280))
          {
            v292 = OUTLINED_FUNCTION_0_35();
LABEL_127:
            if (!testFldeq(v292, v293, v294, v295))
            {
              goto LABEL_58;
            }

            goto LABEL_128;
          }

LABEL_89:
          v281 = OUTLINED_FUNCTION_53_11();
          starttest(v281, v282);
          v283 = OUTLINED_FUNCTION_11_31();
          if (lpta_loadp_setscan_r(v283, v284, v285))
          {
            goto LABEL_3;
          }

          v286 = OUTLINED_FUNCTION_7_31();
          if (!testFldeq(v286, v287, v288, 21) && !advance_tok(v1, v289, v290, v291))
          {
            v292 = OUTLINED_FUNCTION_9_31();
            v295 = 9;
            goto LABEL_127;
          }
        }
      }
    }

LABEL_128:
    LODWORD(v61) = v32;
    do
    {
      do
      {
LABEL_15:
        while (2)
        {
          v67 = v1[13];
          if (v67)
          {
            v68 = OUTLINED_FUNCTION_77_9(v67);
            v32 = v61;
          }

          else
          {
            v68 = vback(v1, v61);
            v32 = 0;
          }

          v69 = v32;
          v70 = v32;
          v71 = v32;
          v72 = v32;
          v73 = v32;
          switch(v68)
          {
            case 1:
              goto LABEL_5;
            case 2:
              goto LABEL_14;
            case 3:
            case 15:
            case 43:
              goto LABEL_60;
            case 4:
              goto LABEL_63;
            case 5:
              goto LABEL_6;
            case 6:
              bspop_boa(v1);
              v74 = OUTLINED_FUNCTION_16_29();
              v77 = lpta_loadp_setscan_r(v74, v75, v76);
              LODWORD(v61) = v32;
              if (v77)
              {
                continue;
              }

              goto LABEL_20;
            case 7:
LABEL_20:
              v78 = OUTLINED_FUNCTION_24_22();
              v81 = chstream(v78, v79, v80);
              LODWORD(v61) = v32;
              if (!v81)
              {
                OUTLINED_FUNCTION_56_10();
                v82 = test_string_s();
                LODWORD(v61) = v32;
                if (!v82)
                {
                  goto LABEL_22;
                }
              }

              continue;
            case 8:
LABEL_22:
              v83 = OUTLINED_FUNCTION_40_13();
              v85 = chstream(v83, v84, 4u);
              LODWORD(v61) = v32;
              if (v85)
              {
                continue;
              }

              v86 = OUTLINED_FUNCTION_8_31();
              v89 = 1;
              break;
            case 9:
              v181 = v32;
              goto LABEL_64;
            case 10:
              goto LABEL_77;
            case 11:
              goto LABEL_81;
            case 12:
              v117 = OUTLINED_FUNCTION_1_34();
              v121 = testFldeq(v117, v118, v119, v120);
              LODWORD(v61) = v32;
              if (v121)
              {
                continue;
              }

              v174 = advance_tok(v1, v32, v122, v123);
              goto LABEL_80;
            case 13:
              goto LABEL_65;
            case 14:
              goto LABEL_89;
            case 17:
              goto LABEL_66;
            case 18:
              goto LABEL_93;
            case 19:
              v135 = OUTLINED_FUNCTION_9_31();
              v138 = testFldeq(v135, v136, v137, 11);
              LODWORD(v61) = v32;
              if (!v138)
              {
                v141 = advance_tok(v1, v32, v139, v140);
                v70 = v32;
                LODWORD(v61) = v32;
                if (!v141)
                {
                  goto LABEL_42;
                }
              }

              continue;
            case 20:
              goto LABEL_42;
            case 21:
              v157 = OUTLINED_FUNCTION_0_35();
              goto LABEL_52;
            case 22:
              goto LABEL_53;
            case 23:
              goto LABEL_67;
            case 24:
              goto LABEL_101;
            case 25:
              v161 = OUTLINED_FUNCTION_0_35();
              goto LABEL_48;
            case 26:
              goto LABEL_49;
            case 27:
              goto LABEL_68;
            case 28:
              goto LABEL_108;
            case 29:
              v167 = OUTLINED_FUNCTION_53_11();
              bspush_ca_scan(v167, v168);
              v169 = OUTLINED_FUNCTION_7_31();
              v172 = 15;
              goto LABEL_56;
            case 30:
              goto LABEL_57;
            case 31:
              v169 = OUTLINED_FUNCTION_5_31();
              goto LABEL_56;
            case 32:
              goto LABEL_69;
            case 33:
              goto LABEL_114;
            case 34:
              bspop_boa(v1);
              v127 = advance_tok(v1, v124, v125, v126);
              LODWORD(v61) = v32;
              if (v127)
              {
                continue;
              }

              v128 = OUTLINED_FUNCTION_16_29();
              v131 = lpta_loadp_setscan_r(v128, v129, v130);
              LODWORD(v61) = v32;
              if (v131)
              {
                continue;
              }

              v132 = OUTLINED_FUNCTION_53_11();
              bspush_ca_scan(v132, v133);
              goto LABEL_37;
            case 35:
              v110 = OUTLINED_FUNCTION_8_31();
              v113 = testFldeq(v110, v111, v112, 6);
              LODWORD(v61) = v32;
              if (v113)
              {
                continue;
              }

              v116 = advance_tok(v1, v32, v114, v115);
              LODWORD(v61) = v32;
              if (v116)
              {
                continue;
              }

              goto LABEL_37;
            case 36:
LABEL_37:
              v86 = OUTLINED_FUNCTION_0_35();
              break;
            case 37:
              goto LABEL_70;
            case 38:
              goto LABEL_116;
            case 39:
              bspop_boa(v1);
              v93 = advance_tok(v1, v90, v91, v92);
              LODWORD(v61) = v32;
              if (v93)
              {
                continue;
              }

              v94 = OUTLINED_FUNCTION_16_29();
              v97 = lpta_loadp_setscan_r(v94, v95, v96);
              LODWORD(v61) = v32;
              if (v97)
              {
                continue;
              }

              v98 = OUTLINED_FUNCTION_52_11();
              v100 = npush_fld(v98, v99, 6u);
              LODWORD(v61) = v32;
              if (v100)
              {
                continue;
              }

              v101 = OUTLINED_FUNCTION_56_10();
              npush_i(v101);
              v109 = if_testeq(v1, v102, v103, v104, v105, v106, v107, v108);
              LODWORD(v61) = v32;
              if (v109)
              {
                continue;
              }

              v86 = OUTLINED_FUNCTION_3_33();
              break;
            case 40:
              v175 = v32;
              goto LABEL_71;
            case 41:
              goto LABEL_121;
            case 44:
            case 45:
              goto LABEL_61;
            default:
              goto LABEL_3;
          }

          break;
        }

        v134 = testFldeq(v86, v87, v88, v89);
        v61 = v32;
      }

      while (v134);
LABEL_58:
      v66 = advance_tok(v1, v61, v69, v73);
LABEL_59:
      LODWORD(v61) = v32;
    }

    while (v66);
    goto LABEL_60;
  }

LABEL_77:
  OUTLINED_FUNCTION_75_10(10, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
  v244 = OUTLINED_FUNCTION_7_31();
  if (testFldeq(v244, v245, v246, 14) || advance_tok(v1, v247, v248, v249))
  {
    goto LABEL_128;
  }

  v250 = OUTLINED_FUNCTION_16_29();
  v174 = lpta_loadp_setscan_r(v250, v251, v252);
LABEL_80:
  LODWORD(v69) = v32;
  LODWORD(v61) = v32;
  if (v174)
  {
    goto LABEL_15;
  }

LABEL_81:
  LODWORD(v32) = v69;
  v253 = OUTLINED_FUNCTION_46_12();
  bspush_ca_scan(v253, v254);
  v255 = OUTLINED_FUNCTION_8_31();
  if (testFldeq(v255, v256, v257, 1))
  {
    goto LABEL_128;
  }

  v261 = advance_tok(v1, v258, v259, v260);
  LODWORD(v61) = v32;
  if (v261)
  {
    goto LABEL_15;
  }

LABEL_60:
  demote_word(v1);
LABEL_61:
  vretproc(v1);
  return 0;
}

void destress_adv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_125_3();
  v771 = v6;
  v799 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_146_3();
  OUTLINED_FUNCTION_71_10();
  bzero(&v772, v7);
  OUTLINED_FUNCTION_70_10();
  bzero(v798, v8);
  if (!setjmp(v798))
  {
    OUTLINED_FUNCTION_172_2();
    if (!ventproc(v771, v9, v10, v11, v12, v13))
    {
      v14 = OUTLINED_FUNCTION_28_19();
      get_parm(v14, v15, v16, -6);
      OUTLINED_FUNCTION_80_9(v17, v796);
      v18 = push_ptr_init(v771, v795);
      v19 = 0;
      OUTLINED_FUNCTION_131_3(v18, v20, &null_str_11);
      v21 = OUTLINED_FUNCTION_62_10();
      fence_32(v21, v22, v23);
      v24 = OUTLINED_FUNCTION_110_3();
      starttest(v24, v25);
      OUTLINED_FUNCTION_20_24();
      bspush_ca_boa();
      v26 = OUTLINED_FUNCTION_39_13();
      if (lpta_loadp_setscan_r(v26, v27, v28))
      {
        LODWORD(v29) = 0;
      }

      else
      {
        v30 = OUTLINED_FUNCTION_105_4();
        bspush_ca_scan(v30, v31);
        v32 = OUTLINED_FUNCTION_8_31();
        v35 = testFldeq(v32, v33, v34, 3);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v29 = 0;
        if (v35)
        {
LABEL_11:
          v40 = v29;
          LODWORD(v29) = v38;
          LODWORD(v38) = v40;
          while (1)
          {
            v41 = *(v771 + 104);
            LODWORD(v42) = v29;
            if (v41)
            {
              *(v771 + 104) = 0;
              v43 = v41;
            }

            else
            {
              v43 = vback(v771, v38);
              LODWORD(v38) = 0;
            }

            v735 = __PAIR64__(v38, v42);
            v44 = v43 - 1;
            v37 = v38;
            v36 = v42;
            v45 = v42;
            v29 = v42;
            v46 = v42;
            v38 = v42;
            v47 = v42;
            v48 = v42;
            v49 = v42;
            v50 = v42;
            v51 = v42;
            v52 = v42;
            v53 = v42;
            v54 = v42;
            v55 = v42;
            v56 = v42;
            v57 = v42;
            v58 = v42;
            v59 = v42;
            v60 = v42;
            v61 = v42;
            v62 = v42;
            v63 = v42;
            v42 = v42;
            v64 = v42;
            v65 = v42;
            switch(v44)
            {
              case 0:
                v66 = HIDWORD(v735);
                v67 = *(v771 + 2482);
                v68 = OUTLINED_FUNCTION_42_12();
                starttest(v68, v69);
                v70 = OUTLINED_FUNCTION_32_17();
                if (lpta_loadp_setscan_r(v70, v71, v72))
                {
                  v45 = v67;
LABEL_18:
                  v73 = v45;
                  v74 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                  starttest(v74, v75);
                  v76 = OUTLINED_FUNCTION_32_17();
                  v45 = lpta_loadp_setscan_r(v76, v77, v78);
                  if (v45)
                  {
                    v29 = v73;
LABEL_20:
                    v73 = v29;
                    v79 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                    starttest(v79, v80);
                    v81 = OUTLINED_FUNCTION_32_17();
                    if (!lpta_loadp_setscan_r(v81, v82, v83))
                    {
                      goto LABEL_158;
                    }

                    v46 = v73;
LABEL_22:
                    v84 = v46;
                    OUTLINED_FUNCTION_159_2(23, v733, v735, v771);
                    v85 = OUTLINED_FUNCTION_174_2();
                    v88 = lpta_loadp_setscan_l(v85, v86, v87);
                    v38 = v84;
                    if (v88)
                    {
LABEL_23:
                      v89 = v38;
                      OUTLINED_FUNCTION_159_2(25, v733, v735, v771);
                      v90 = OUTLINED_FUNCTION_174_2();
                      v45 = lpta_loadp_setscan_l(v90, v91, v92);
                      v47 = v89;
                      if (v45)
                      {
LABEL_24:
                        v93 = v47;
                        v94 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                        starttest(v94, v95);
                        v96 = OUTLINED_FUNCTION_32_17();
                        v45 = lpta_loadp_setscan_r(v96, v97, v98);
                        if (v45)
                        {
                          v51 = v93;
LABEL_26:
                          v99 = v51;
                          v100 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                          starttest(v100, v101);
                          v102 = OUTLINED_FUNCTION_32_17();
                          v45 = lpta_loadp_setscan_r(v102, v103, v104);
                          if (v45)
                          {
                            v55 = v99;
LABEL_28:
                            LODWORD(v73) = v55;
                            v105 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                            starttest(v105, v106);
                            v107 = OUTLINED_FUNCTION_32_17();
                            v45 = lpta_loadp_setscan_r(v107, v108, v109);
                            if (v45)
                            {
                              v56 = v55;
LABEL_30:
                              v110 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                              starttest(v110, v111);
                              v112 = OUTLINED_FUNCTION_32_17();
                              v45 = lpta_loadp_setscan_l(v112, v113, v114);
                              v57 = v56;
                              if (v45)
                              {
LABEL_31:
                                v115 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                                starttest(v115, v116);
                                v117 = OUTLINED_FUNCTION_54_11();
                                v45 = lpta_loadp_setscan_l(v117, v118, v119);
                                v58 = v57;
                                if (v45)
                                {
LABEL_32:
                                  v63 = v58;
                                  v120 = OUTLINED_FUNCTION_69_10(v45, v797, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                                  v45 = lpta_loadp_setscan_r(v120, v121, 1);
                                  if (v45 || (OUTLINED_FUNCTION_48_12(), v45 = test_string_s(), v45))
                                  {
LABEL_34:
                                    v122 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                                    starttest(v122, v123);
                                    v124 = OUTLINED_FUNCTION_32_17();
                                    v42 = v63;
                                    if (lpta_loadp_setscan_l(v124, v125, v126))
                                    {
LABEL_35:
                                      OUTLINED_FUNCTION_159_2(61, v733, v735, v771);
                                      v127 = OUTLINED_FUNCTION_174_2();
                                      v64 = v42;
                                      if (lpta_loadp_setscan_l(v127, v128, v129))
                                      {
                                        goto LABEL_3;
                                      }

LABEL_36:
                                      OUTLINED_FUNCTION_128_3();
                                      v138 = OUTLINED_FUNCTION_69_10(v130, v131, v132, v133, v134, v135, v136, v137, v733, v735, v771);
                                      savescptr(v138, v139, v140);
                                      advance_tok(v42, v141, v142, v143);
                                      OUTLINED_FUNCTION_139_3();
                                      if (!v144)
                                      {
                                        v150 = OUTLINED_FUNCTION_29_19(v144, v38, v29, v145, v146, v147, v148, v149, v733, v736, v771);
                                        testFldeq(v150, v151, v152, 1);
                                        OUTLINED_FUNCTION_139_3();
                                        if (!v154)
                                        {
                                          advance_tok(v771, v38, v29, v153);
                                          OUTLINED_FUNCTION_139_3();
                                          if (!v155)
                                          {
                                            v161 = OUTLINED_FUNCTION_29_19(v155, v38, v29, v156, v157, v158, v159, v160, v733, v737, v771);
                                            testFldeq(v161, v162, v163, 13);
                                            OUTLINED_FUNCTION_139_3();
                                            if (!v165)
                                            {
                                              advance_tok(v771, v38, v29, v164);
                                              OUTLINED_FUNCTION_139_3();
                                              if (!v166)
                                              {
                                                OUTLINED_FUNCTION_102_5(v166, v38, v29, v167, v168, v169, v170, v171, v733, v738, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792, v793, v794, v795[0]);
                                                OUTLINED_FUNCTION_139_3();
                                                if (!v172)
                                                {
                                                  v178 = OUTLINED_FUNCTION_14_30(v172, v38, v29, v173, v174, v175, v176, v177, v733, v739, v771);
                                                  bspush_ca_scan(v178, v179);
                                                  v180 = OUTLINED_FUNCTION_9_31();
                                                  v183 = testFldeq(v180, v181, v182, 9);
                                                  v65 = v64;
                                                  v29 = v64;
LABEL_84:
                                                  v38 = HIDWORD(v735);
                                                  if (!v183)
                                                  {
LABEL_85:
                                                    v436 = advance_tok(v771, v38, v29, v36);
                                                    LODWORD(v29) = v65;
LABEL_153:
                                                    LODWORD(v38) = HIDWORD(v735);
                                                    if (!v436)
                                                    {
                                                      goto LABEL_188;
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
LABEL_43:
                                      v184 = v42;
                                      OUTLINED_FUNCTION_128_3();
                                      v193 = OUTLINED_FUNCTION_69_10(v185, v186, v187, v188, v189, v190, v191, v192, v733, v735, v771);
                                      savescptr(v193, v194, v195);
                                      v196 = OUTLINED_FUNCTION_8_31();
                                      testFldeq(v196, v197, v198, 6);
                                      OUTLINED_FUNCTION_68_10();
                                      if (!v199)
                                      {
                                        v205 = OUTLINED_FUNCTION_33_17(v199, v38, v29, v200, v201, v202, v203, v204, v733, v740, v771);
                                        testFldeq(v205, v206, v207, 10);
                                        OUTLINED_FUNCTION_68_10();
                                        if (!v209)
                                        {
                                          advance_tok(v771, v38, v29, v208);
                                          OUTLINED_FUNCTION_68_10();
                                          if (!v210)
                                          {
                                            OUTLINED_FUNCTION_102_5(v210, v38, v29, v211, v212, v213, v214, v215, v733, v741, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792, v793, v794, v795[0]);
                                            OUTLINED_FUNCTION_68_10();
                                            if (!v216)
                                            {
                                              v222 = OUTLINED_FUNCTION_33_17(v216, v38, v29, v217, v218, v219, v220, v221, v733, v742, v771);
                                              testFldeq(v222, v223, v224, 6);
                                              OUTLINED_FUNCTION_68_10();
                                              if (!v225)
                                              {
                                                goto LABEL_93;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v655 = OUTLINED_FUNCTION_53_11();
                                    starttest(v655, v656);
                                    v657 = OUTLINED_FUNCTION_32_17();
                                    v45 = lpta_loadp_setscan_l(v657, v658, v659);
                                    v59 = v58;
                                    if (v45)
                                    {
LABEL_167:
                                      v660 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                                      starttest(v660, v661);
                                      v662 = OUTLINED_FUNCTION_54_11();
                                      v45 = lpta_loadp_setscan_r(v662, v663, v664);
                                      if (v45)
                                      {
                                        v61 = v59;
LABEL_169:
                                        v665 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                                        starttest(v665, v666);
                                        v667 = OUTLINED_FUNCTION_92_7();
                                        if (lpta_loadp_setscan_l(v667, v668, 1))
                                        {
                                          goto LABEL_3;
                                        }

                                        v669 = test_string_s();
                                        if (v669)
                                        {
                                          goto LABEL_3;
                                        }

                                        OUTLINED_FUNCTION_14_30(v669, v670, v671, v672, v673, v674, v675, v676, v734, v765, v771);
                                        bspush_ca_boa();
                                        v677 = OUTLINED_FUNCTION_54_11();
                                        lpta_loadp_setscan_r(v677, v678, v679);
                                        OUTLINED_FUNCTION_68_10();
                                        if (!v680)
                                        {
                                          v686 = OUTLINED_FUNCTION_14_30(v680, v38, v29, v681, v682, v683, v684, v685, v733, v766, v771);
                                          bspush_ca_scan(v686, v687);
                                          v688 = OUTLINED_FUNCTION_8_31();
                                          v562 = testFldeq(v688, v689, v690, 5);
                                          LODWORD(v62) = v61;
                                          v29 = v61;
LABEL_132:
                                          v38 = HIDWORD(v735);
                                          if (!v562)
                                          {
LABEL_133:
                                            v563 = v62;
                                            if (advance_tok(v771, v38, v29, v36))
                                            {
                                              LODWORD(v38) = HIDWORD(v735);
                                            }

                                            else
                                            {
                                              LODWORD(v38) = 1;
                                            }

                                            LODWORD(v29) = v563;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v723 = OUTLINED_FUNCTION_7_31();
                                        testFldeq(v723, v724, v725, 23);
                                        OUTLINED_FUNCTION_55_11();
                                        if (!v727)
                                        {
                                          advance_tok(v771, v38, v29, v726);
                                          v60 = v59;
                                          OUTLINED_FUNCTION_68_10();
                                          if (!v45)
                                          {
LABEL_182:
                                            v728 = OUTLINED_FUNCTION_122_3(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                                            v731 = chstream(v728, v729, v730);
                                            LODWORD(v29) = v60;
                                            LODWORD(v38) = v770;
                                            if (!v731)
                                            {
                                              test_string_s();
                                              goto LABEL_184;
                                            }
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
LABEL_173:
                                      OUTLINED_FUNCTION_128_3();
                                      v699 = OUTLINED_FUNCTION_69_10(v691, v692, v693, v694, v695, v696, v697, v698, v733, v735, v771);
                                      savescptr(v699, v700, v701);
                                      v702 = OUTLINED_FUNCTION_7_31();
                                      v705 = testFldeq(v702, v703, v704, 23);
                                      LODWORD(v29) = v59;
                                      LODWORD(v38) = HIDWORD(v767);
                                      if (!v705)
                                      {
                                        advance_tok(v771, HIDWORD(v767), v59, v706);
                                        OUTLINED_FUNCTION_68_10();
                                        if (!v707)
                                        {
                                          OUTLINED_FUNCTION_102_5(v707, v38, v29, v708, v709, v710, v711, v712, v733, v767, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792, v793, v794, v795[0]);
                                          OUTLINED_FUNCTION_68_10();
                                          if (!v714)
                                          {
                                            advance_tok(v771, v38, v29, v713);
                                            OUTLINED_FUNCTION_68_10();
                                            if (!v715)
                                            {
                                              v280 = OUTLINED_FUNCTION_60_10(v715, v38, v29, v716, v717, v718, v719, v720, v733, v768, v771);
                                              v283 = 8;
                                              goto LABEL_178;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }

                                else
                                {
LABEL_49:
                                  OUTLINED_FUNCTION_128_3();
                                  v234 = OUTLINED_FUNCTION_69_10(v226, v227, v228, v229, v230, v231, v232, v233, v733, v735, v771);
                                  savescptr(v234, v235, v236);
                                  v237 = OUTLINED_FUNCTION_3_33();
                                  v241 = testFldeq(v237, v238, v239, v240);
                                  LODWORD(v29) = v58;
                                  LODWORD(v38) = HIDWORD(v743);
                                  if (!v241)
                                  {
                                    v247 = OUTLINED_FUNCTION_29_19(v241, HIDWORD(v743), v58, v242, v243, v244, v245, v246, v733, v743, v771);
                                    testFldeq(v247, v248, v249, 6);
                                    OUTLINED_FUNCTION_68_10();
                                    if (!v251)
                                    {
                                      advance_tok(v771, v38, v29, v250);
                                      OUTLINED_FUNCTION_68_10();
                                      if (!v252)
                                      {
                                        v258 = OUTLINED_FUNCTION_60_10(v252, v38, v29, v253, v254, v255, v256, v257, v733, v744, v771);
                                        testFldeq(v258, v259, v260, 1);
                                        OUTLINED_FUNCTION_68_10();
                                        if (!v262)
                                        {
                                          advance_tok(v771, v38, v29, v261);
                                          OUTLINED_FUNCTION_68_10();
                                          if (!v263)
                                          {
                                            OUTLINED_FUNCTION_102_5(v263, v38, v29, v264, v265, v266, v267, v268, v733, v745, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792, v793, v794, v795[0]);
                                            OUTLINED_FUNCTION_68_10();
                                            if (!v269)
                                            {
                                              npush_fld(v771, 4u, 6u);
                                              OUTLINED_FUNCTION_68_10();
                                              if (!v270)
                                              {
                                                v271 = OUTLINED_FUNCTION_56_10();
                                                npush_i(v271);
                                                if_testeq(v771, v272, v273, v274, v275, v276, v277, v278);
                                                OUTLINED_FUNCTION_68_10();
                                                if (!v279)
                                                {
                                                  OUTLINED_FUNCTION_12_31();
LABEL_178:
                                                  testFldeq(v280, v281, v282, v283);
                                                  OUTLINED_FUNCTION_68_10();
                                                  if (!v722)
                                                  {
                                                    advance_tok(v771, v38, v29, v721);
LABEL_184:
                                                    OUTLINED_FUNCTION_68_10();
                                                    if (!v732)
                                                    {
                                                      goto LABEL_188;
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

                              else
                              {
LABEL_58:
                                v184 = v57;
                                OUTLINED_FUNCTION_128_3();
                                v292 = OUTLINED_FUNCTION_69_10(v284, v285, v286, v287, v288, v289, v290, v291, v733, v735, v771);
                                savescptr(v292, v293, v294);
                                v295 = OUTLINED_FUNCTION_7_31();
                                v298 = testFldeq(v295, v296, v297, 21);
                                LODWORD(v29) = v57;
                                LODWORD(v38) = HIDWORD(v746);
                                if (!v298)
                                {
                                  advance_tok(v771, HIDWORD(v746), v57, v299);
                                  OUTLINED_FUNCTION_68_10();
                                  if (!v300)
                                  {
                                    OUTLINED_FUNCTION_102_5(v300, v38, v29, v301, v302, v303, v304, v305, v733, v746, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792, v793, v794, v795[0]);
                                    OUTLINED_FUNCTION_68_10();
                                    if (!v306)
                                    {
                                      v312 = OUTLINED_FUNCTION_33_17(v306, v38, v29, v307, v308, v309, v310, v311, v733, v747, v771);
                                      testFldeq(v312, v313, v314, 6);
                                      OUTLINED_FUNCTION_68_10();
                                      if (!v316)
                                      {
                                        advance_tok(v771, v38, v29, v315);
                                        OUTLINED_FUNCTION_68_10();
                                        if (!v317)
                                        {
                                          v323 = OUTLINED_FUNCTION_29_19(v317, v38, v29, v318, v319, v320, v321, v322, v733, v748, v771);
                                          testFldeq(v323, v324, v325, 18);
                                          OUTLINED_FUNCTION_68_10();
                                          if (!v327)
                                          {
                                            advance_tok(v771, v38, v29, v326);
                                            OUTLINED_FUNCTION_68_10();
                                            if (!v328)
                                            {
                                              v334 = OUTLINED_FUNCTION_33_17(v328, v38, v29, v329, v330, v331, v332, v333, v733, v749, v771);
                                              v337 = 6;
LABEL_151:
                                              testFldeq(v334, v335, v336, v337);
                                              OUTLINED_FUNCTION_68_10();
                                              if (!v622)
                                              {
                                                v436 = advance_tok(v771, v38, v29, v621);
                                                LODWORD(v29) = v184;
                                                goto LABEL_153;
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

                            else
                            {
                              v564 = OUTLINED_FUNCTION_3_33();
                              testFldeq(v564, v565, v566, v567);
                              OUTLINED_FUNCTION_55_11();
                              if (!v568)
                              {
                                OUTLINED_FUNCTION_14_30(v568, v38, v29, v569, v570, v571, v572, v573, v733, v735, v771);
                                bspush_ca_scan_boa();
                                v574 = OUTLINED_FUNCTION_7_31();
                                testFldeq(v574, v575, v576, 9);
                                OUTLINED_FUNCTION_55_11();
                                if (!v577)
                                {
                                  v583 = OUTLINED_FUNCTION_33_17(v577, v38, v29, v578, v579, v580, v581, v582, v733, v762, v771);
                                  v586 = 9;
                                  goto LABEL_159;
                                }
                              }
                            }
                          }

                          else
                          {
                            v587 = OUTLINED_FUNCTION_7_31();
                            testFldeq(v587, v588, v589, 28);
                            OUTLINED_FUNCTION_55_11();
                            if (!v591)
                            {
                              advance_tok(v771, v38, v29, v590);
                              OUTLINED_FUNCTION_68_10();
                              if (!v592)
                              {
                                v598 = OUTLINED_FUNCTION_29_19(v592, v38, v29, v593, v594, v595, v596, v597, v733, v735, v771);
                                testFldeq(v598, v599, v600, 23);
                                OUTLINED_FUNCTION_68_10();
                                if (!v602)
                                {
                                  advance_tok(v771, v38, v29, v601);
                                  OUTLINED_FUNCTION_68_10();
                                  if (!v45)
                                  {
LABEL_144:
                                    v603 = v52;
                                    v604 = OUTLINED_FUNCTION_122_3(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                                    chstream(v604, v605, v606);
                                    OUTLINED_FUNCTION_68_10();
                                    if (!v607)
                                    {
                                      v613 = OUTLINED_FUNCTION_14_30(v607, v38, v29, v608, v609, v610, v611, v612, v733, v763, v771);
                                      bspush_ca_scan(v613, v614);
                                      OUTLINED_FUNCTION_48_12();
                                      v467 = test_string_s();
                                      v53 = v603;
                                      LODWORD(v29) = v603;
LABEL_101:
                                      LODWORD(v38) = HIDWORD(v735);
                                      if (!v467)
                                      {
LABEL_102:
                                        v468 = v53;
                                        v45 = chstream(v771, 37, 4u);
                                        v54 = v468;
                                        v29 = v468;
                                        v38 = HIDWORD(v735);
                                        if (!v45)
                                        {
LABEL_103:
                                          v469 = v54;
                                          v470 = OUTLINED_FUNCTION_122_3(v45, v38, v29, &unk_28064B3EE, v62, v48, v53, v49, v733, v735, v771);
                                          v436 = test_synch(v470, v471, v472, v473);
                                          LODWORD(v29) = v469;
                                          goto LABEL_153;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        else
                        {
                          v615 = OUTLINED_FUNCTION_9_31();
                          testFldeq(v615, v616, v617, 6);
                          OUTLINED_FUNCTION_55_11();
                          if (!v619)
                          {
                            advance_tok(v771, v38, v29, v618);
                            OUTLINED_FUNCTION_68_10();
                            if (!v620)
                            {
                              bspush_ca_scan(v771, 32);
                              v50 = v93;
LABEL_149:
                              v184 = v50;
LABEL_150:
                              OUTLINED_FUNCTION_12_31();
                              goto LABEL_151;
                            }
                          }
                        }
                      }

                      else
                      {
LABEL_66:
                        v338 = v47;
                        OUTLINED_FUNCTION_128_3();
                        savescptr(v771, v339, v340);
                        bspush_ca_scan(v771, 27);
                        v341 = testFldeq(v771, 4u, 2, 2);
                        v48 = v338;
                        v29 = v338;
LABEL_79:
                        v38 = HIDWORD(v735);
                        if (!v341)
                        {
LABEL_80:
                          v413 = v48;
                          advance_tok(v771, v38, v29, v36);
                          OUTLINED_FUNCTION_68_10();
                          if (!v414)
                          {
                            OUTLINED_FUNCTION_102_5(v414, v38, v29, v415, v416, v417, v418, v419, v733, v735, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792, v793, v794, v795[0]);
                            OUTLINED_FUNCTION_68_10();
                            if (!v420)
                            {
                              v426 = OUTLINED_FUNCTION_14_30(v420, v38, v29, v421, v422, v423, v424, v425, v733, v755, v771);
                              bspush_ca_scan(v426, v427);
                              v428 = OUTLINED_FUNCTION_9_31();
                              v431 = testFldeq(v428, v429, v430, 5);
                              LODWORD(v49) = v413;
                              v29 = v413;
LABEL_91:
                              v38 = HIDWORD(v735);
                              if (!v431)
                              {
LABEL_92:
                                v184 = v49;
LABEL_93:
                                advance_tok(v771, v38, v29, v36);
                                OUTLINED_FUNCTION_68_10();
                                if (!v461)
                                {
                                  goto LABEL_150;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
LABEL_67:
                      OUTLINED_FUNCTION_128_3();
                      v350 = OUTLINED_FUNCTION_69_10(v342, v343, v344, v345, v346, v347, v348, v349, v733, v735, v771);
                      savescptr(v350, v351, v352);
                      v353 = OUTLINED_FUNCTION_7_31();
                      testFldeq(v353, v354, v355, 18);
                      OUTLINED_FUNCTION_68_10();
                      if (!v357)
                      {
                        advance_tok(v771, v38, v29, v356);
                        OUTLINED_FUNCTION_68_10();
                        if (!v358)
                        {
                          OUTLINED_FUNCTION_102_5(v358, v38, v29, v359, v360, v361, v362, v363, v733, v750, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792, v793, v794, v795[0]);
                          OUTLINED_FUNCTION_68_10();
                          if (!v364)
                          {
                            v370 = OUTLINED_FUNCTION_33_17(v364, v38, v29, v365, v366, v367, v368, v369, v733, v751, v771);
                            testFldeq(v370, v371, v372, 5);
                            OUTLINED_FUNCTION_68_10();
                            if (!v373)
                            {
                              v379 = OUTLINED_FUNCTION_29_19(v373, v38, v29, v374, v375, v376, v377, v378, v733, v752, v771);
                              testFldeq(v379, v380, v381, 27);
                              OUTLINED_FUNCTION_68_10();
                              if (!v383)
                              {
                                advance_tok(v771, v38, v29, v382);
                                OUTLINED_FUNCTION_68_10();
                                if (!v384)
                                {
                                  v280 = OUTLINED_FUNCTION_33_17(v384, v38, v29, v385, v386, v387, v388, v389, v733, v753, v771);
                                  v283 = 7;
                                  goto LABEL_178;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v623 = OUTLINED_FUNCTION_3_33();
                    testFldeq(v623, v624, v625, v626);
                    OUTLINED_FUNCTION_55_11();
                    if (!v627)
                    {
                      OUTLINED_FUNCTION_99_5();
LABEL_158:
                      bspush_ca_scan_boa();
                      v583 = OUTLINED_FUNCTION_7_31();
                      v586 = 8;
LABEL_159:
                      testFldeq(v583, v584, v585, v586);
                      OUTLINED_FUNCTION_173_2();
                      LODWORD(v29) = v73;
                    }
                  }
                }

                else
                {
                  v628 = OUTLINED_FUNCTION_3_33();
                  testFldeq(v628, v629, v630, v631);
                  OUTLINED_FUNCTION_55_11();
                  if (!v632)
                  {
                    v638 = OUTLINED_FUNCTION_29_19(v632, v38, v29, v633, v634, v635, v636, v637, v733, v735, v771);
                    testFldeq(v638, v639, v640, 8);
                    OUTLINED_FUNCTION_55_11();
                    if (!v642)
                    {
                      v643 = advance_tok(v771, v38, v29, v641);
                      LODWORD(v29) = v67;
                      LODWORD(v38) = v66;
                      if (!v643)
                      {
                        v649 = OUTLINED_FUNCTION_29_19(v643, v66, v67, v644, v645, v646, v647, v648, v733, v764, v771);
                        v652 = testFldeq(v649, v650, v651, 21);
                        LODWORD(v29) = v67;
                        LODWORD(v38) = v66;
                        if (!v652)
                        {
                          v654 = advance_tok(v771, v66, v67, v653);
                          LODWORD(v29) = v67;
                          LODWORD(v38) = v66;
                          if (!v654)
                          {
LABEL_188:
                            demote_word(v771);
                            goto LABEL_3;
                          }
                        }
                      }
                    }
                  }
                }

                break;
              case 1:
                bspop_boa(v771);
                goto LABEL_3;
              case 2:
                v437 = OUTLINED_FUNCTION_14_30(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                bspush_ca_scan(v437, v438);
                v439 = OUTLINED_FUNCTION_9_31();
                v442 = 6;
                goto LABEL_96;
              case 3:
                goto LABEL_7;
              case 4:
                OUTLINED_FUNCTION_12_31();
LABEL_96:
                v462 = testFldeq(v439, v440, v441, v442);
                v29 = v735;
                v38 = HIDWORD(v735);
                v36 = v735;
                v37 = HIDWORD(v735);
                if (!v462)
                {
                  goto LABEL_7;
                }

                continue;
              case 5:
                goto LABEL_18;
              case 6:
              case 14:
              case 48:
              case 64:
                goto LABEL_188;
              case 7:
                goto LABEL_20;
              case 8:
                v443 = OUTLINED_FUNCTION_69_10(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                bspop_boa(v443);
                v447 = advance_tok(v42, v444, v445, v446);
                LODWORD(v29) = v756;
                LODWORD(v38) = HIDWORD(v756);
                if (v447)
                {
                  continue;
                }

                v453 = OUTLINED_FUNCTION_14_30(v447, HIDWORD(v756), v756, v448, v449, v450, v451, v452, v733, v756, v771);
                bspush_ca_scan(v453, v454);
                v455 = OUTLINED_FUNCTION_8_31();
                goto LABEL_126;
              case 9:
                v455 = OUTLINED_FUNCTION_33_17(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
LABEL_126:
                v45 = testFldeq(v455, v456, v457, 2);
                v29 = v735;
                v38 = HIDWORD(v735);
                if (!v45)
                {
                  goto LABEL_127;
                }

                continue;
              case 10:
LABEL_127:
                OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                bspush_ca_scan_boa();
                v556 = OUTLINED_FUNCTION_7_31();
                v559 = testFldeq(v556, v557, v558, 29);
                LODWORD(v29) = v761;
                if (v559)
                {
                  LODWORD(v38) = v769;
                }

                else
                {
                  LODWORD(v38) = 1;
                }

                continue;
              case 11:
                v474 = OUTLINED_FUNCTION_69_10(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                bspop_boa(v474);
                v478 = advance_tok(v42, v475, v476, v477);
                LODWORD(v29) = v757;
                LODWORD(v38) = HIDWORD(v757);
                if (v478)
                {
                  continue;
                }

                v484 = OUTLINED_FUNCTION_14_30(v478, HIDWORD(v757), v757, v479, v480, v481, v482, v483, v733, v757, v771);
                starttest(v484, v485);
                v486 = OUTLINED_FUNCTION_32_17();
                v45 = lpta_loadp_setscan_l(v486, v487, v488);
                if (v45)
                {
                  goto LABEL_106;
                }

                goto LABEL_110;
              case 12:
LABEL_106:
                v489 = OUTLINED_FUNCTION_14_30(v45, v38, v29, v36, v62, v48, v53, v49, v733, v735, v771);
                starttest(v489, v490);
                v491 = OUTLINED_FUNCTION_32_17();
                v45 = lpta_loadp_setscan_l(v491, v492, v493);
                if (!v45)
                {
                  goto LABEL_107;
                }

                goto LABEL_188;
              case 13:
LABEL_110:
                OUTLINED_FUNCTION_128_3();
                v507 = OUTLINED_FUNCTION_69_10(v499, v500, v501, v502, v503, v504, v505, v506, v733, v735, v771);
                savescptr(v507, v508, v509);
                v510 = OUTLINED_FUNCTION_6_31();
                v514 = testFldeq(v510, v511, v512, v513);
                LODWORD(v29) = v759;
                LODWORD(v38) = HIDWORD(v759);
                if (v514)
                {
                  continue;
                }

                v516 = advance_tok(v771, HIDWORD(v759), v759, v515);
                LODWORD(v29) = v759;
                LODWORD(v38) = HIDWORD(v759);
                if (v516)
                {
                  continue;
                }

                v522 = OUTLINED_FUNCTION_102_5(v516, HIDWORD(v759), v759, v517, v518, v519, v520, v521, v733, v759, v771, v772, v773, v774, v775, v776, v777, v778, v779, v780, v781, v782, v783, v784, v785, v786, v787, v788, v789, v790, v791, v792, v793, v794, v795[0]);
                LODWORD(v29) = v760;
                LODWORD(v38) = HIDWORD(v760);
                if (v522)
                {
                  continue;
                }

                v528 = OUTLINED_FUNCTION_33_17(v522, HIDWORD(v760), v760, v523, v524, v525, v526, v527, v733, v760, v771);
                v531 = testFldeq(v528, v529, v530, 6);
                LODWORD(v29) = v758;
                LODWORD(v38) = HIDWORD(v758);
                if (v531)
                {
                  continue;
                }

                v498 = advance_tok(v771, HIDWORD(v758), v758, v532);
                goto LABEL_108;
              case 15:
LABEL_107:
                v494 = OUTLINED_FUNCTION_122_3(v45, v38, v29, &_MergedGlobals_28, v62, v48, v53, v49, v733, v735, v771);
                v498 = test_synch(v494, v495, v496, v497);
LABEL_108:
                LODWORD(v29) = v758;
                LODWORD(v38) = HIDWORD(v758);
                if (!v498)
                {
                  goto LABEL_3;
                }

                continue;
              case 16:
                goto LABEL_22;
              case 17:
                v537 = OUTLINED_FUNCTION_69_10(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                bspop_boa(v537);
                v538 = OUTLINED_FUNCTION_53_11();
                bspush_ca_scan(v538, v539);
                v533 = OUTLINED_FUNCTION_9_31();
                v536 = 5;
                goto LABEL_117;
              case 18:
                v533 = OUTLINED_FUNCTION_29_19(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                v536 = 10;
LABEL_117:
                v540 = testFldeq(v533, v534, v535, v536);
                v29 = v735;
                v38 = HIDWORD(v735);
                if (!v540)
                {
                  goto LABEL_118;
                }

                continue;
              case 19:
LABEL_118:
                v541 = advance_tok(v771, v38, v29, v36);
                LODWORD(v29) = v735;
                LODWORD(v38) = HIDWORD(v735);
                if (v541)
                {
                  continue;
                }

                v547 = OUTLINED_FUNCTION_14_30(v541, HIDWORD(v735), v735, v542, v543, v544, v545, v546, v733, v735, v771);
                bspush_ca_scan(v547, v548);
                v406 = OUTLINED_FUNCTION_8_31();
                v409 = 1;
                goto LABEL_120;
              case 20:
                v406 = OUTLINED_FUNCTION_33_17(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                v409 = 2;
                goto LABEL_120;
              case 21:
                goto LABEL_121;
              case 22:
                goto LABEL_23;
              case 23:
                goto LABEL_67;
              case 24:
                goto LABEL_24;
              case 25:
                goto LABEL_66;
              case 26:
                v410 = OUTLINED_FUNCTION_29_19(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                v341 = testFldeq(v410, v411, v412, 1);
                v29 = v735;
                v48 = v735;
                goto LABEL_79;
              case 27:
                goto LABEL_80;
              case 28:
                v458 = OUTLINED_FUNCTION_29_19(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                v431 = testFldeq(v458, v459, v460, 10);
                v29 = v735;
                LODWORD(v49) = v735;
                goto LABEL_91;
              case 29:
                goto LABEL_92;
              case 30:
                goto LABEL_26;
              case 31:
                v550 = OUTLINED_FUNCTION_29_19(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                v553 = testFldeq(v550, v551, v552, 21);
                LODWORD(v29) = v735;
                LODWORD(v38) = HIDWORD(v735);
                if (v553)
                {
                  continue;
                }

                v555 = advance_tok(v771, HIDWORD(v735), v735, v554);
                LODWORD(v29) = v735;
                LODWORD(v38) = HIDWORD(v735);
                v50 = v735;
                if (v555)
                {
                  continue;
                }

                goto LABEL_149;
              case 32:
                goto LABEL_149;
              case 33:
                goto LABEL_28;
              case 34:
                goto LABEL_144;
              case 35:
                v465 = OUTLINED_FUNCTION_14_30(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                bspush_ca_scan(v465, v466);
                OUTLINED_FUNCTION_48_12();
                goto LABEL_100;
              case 36:
                goto LABEL_102;
              case 37:
LABEL_100:
                v467 = test_string_s();
                LODWORD(v29) = v735;
                v53 = v735;
                goto LABEL_101;
              case 38:
                goto LABEL_103;
              case 39:
                goto LABEL_30;
              case 40:
                v396 = OUTLINED_FUNCTION_69_10(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                bspop_boa(v396);
                v400 = advance_tok(v42, v397, v398, v399);
                LODWORD(v29) = v754;
                LODWORD(v38) = HIDWORD(v754);
                if (v400)
                {
                  continue;
                }

                v406 = OUTLINED_FUNCTION_60_10(v400, HIDWORD(v754), v754, v401, v402, v403, v404, v405, v733, v754, v771);
                v409 = 3;
LABEL_120:
                v549 = testFldeq(v406, v407, v408, v409);
                v29 = v735;
                v38 = HIDWORD(v735);
                if (v549)
                {
                  continue;
                }

LABEL_121:
                v436 = advance_tok(v771, v38, v29, v36);
                LODWORD(v29) = v735;
                goto LABEL_153;
              case 41:
                goto LABEL_31;
              case 42:
                goto LABEL_58;
              case 43:
                goto LABEL_32;
              case 44:
                goto LABEL_49;
              case 45:
                goto LABEL_34;
              case 46:
                goto LABEL_167;
              case 47:
                goto LABEL_173;
              case 49:
                goto LABEL_169;
              case 50:
                goto LABEL_182;
              case 52:
                bspop_boa(v771);
                goto LABEL_188;
              case 53:
                v390 = OUTLINED_FUNCTION_14_30(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                bspush_ca_scan(v390, v391);
                v392 = OUTLINED_FUNCTION_9_31();
                v395 = 11;
                goto LABEL_131;
              case 54:
                goto LABEL_133;
              case 55:
                v463 = OUTLINED_FUNCTION_14_30(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                bspush_ca_scan(v463, v464);
                v392 = OUTLINED_FUNCTION_9_31();
                v395 = 12;
                goto LABEL_131;
              case 56:
                v560 = OUTLINED_FUNCTION_14_30(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                bspush_ca_scan(v560, v561);
                v392 = OUTLINED_FUNCTION_7_31();
                v395 = 6;
                goto LABEL_131;
              case 57:
                v392 = OUTLINED_FUNCTION_33_17(v42, v42, v42, v42, v42, v42, v42, v42, v733, v735, v771);
                v395 = 7;
LABEL_131:
                v562 = testFldeq(v392, v393, v394, v395);
                v29 = v735;
                LODWORD(v62) = v735;
                goto LABEL_132;
              case 58:
                goto LABEL_35;
              case 59:
                goto LABEL_43;
              case 61:
                goto LABEL_36;
              case 62:
                OUTLINED_FUNCTION_12_31();
                v183 = testFldeq(v432, v433, v434, v435);
                v29 = v42;
                v65 = v42;
                goto LABEL_84;
              case 63:
                goto LABEL_85;
              default:
                goto LABEL_3;
            }
          }
        }

LABEL_7:
        v39 = v37;
        v19 = v36;
        if (advance_tok(v771, v38, v29, v36))
        {
          LODWORD(v29) = v39;
        }

        else
        {
          LODWORD(v29) = 1;
        }
      }

      LODWORD(v38) = v19;
      goto LABEL_11;
    }
  }

LABEL_3:
  vretproc(v771);
  OUTLINED_FUNCTION_124_3();
}

uint64_t destress_titles(uint64_t a1)
{
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_18_28(v4, v5, v6, v7, v8, v9, v10, v11, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137);
  OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_175_2(v12, v13, v14, v15, v16, v17, v18, v19, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v140, v142, v144, v146);
  v20 = setjmp(v3);
  if (!v20 && !OUTLINED_FUNCTION_19_24(v20, v21, v22, v23, v24, v25, v26, v27, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v141, SHIDWORD(v141), v143, SWORD2(v143), SHIWORD(v143), v145, SWORD2(v145), SBYTE6(v145), SHIBYTE(v145), v147, v148))
  {
    v28 = OUTLINED_FUNCTION_63_10();
    OUTLINED_FUNCTION_130_3(v28, v29);
    OUTLINED_FUNCTION_36_14();
    v30 = fence_32(v1, 0, &null_str_11);
    OUTLINED_FUNCTION_91_7(v30, v31, &_MergedGlobals_28);
    v32 = OUTLINED_FUNCTION_97_5();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_21_23();
    if (!lpta_loadp_setscan_r(v34, v35, v36))
    {
      v38 = OUTLINED_FUNCTION_7_31();
      if (testFldeq(v38, v39, v40, 29) || advance_tok(v1, v41, v42, v43))
      {
        v44 = *(v1 + 104);
        if (v44)
        {
          v45 = OUTLINED_FUNCTION_77_9(v44);
        }

        else
        {
          v46 = OUTLINED_FUNCTION_87_7();
          v45 = vback(v46, v47);
        }

        switch(v45)
        {
          case 2:
            goto LABEL_11;
          case 3:
            goto LABEL_12;
          case 4:
            goto LABEL_13;
          case 5:
            goto LABEL_14;
          case 7:
            goto LABEL_15;
          default:
            break;
        }
      }

      else
      {
LABEL_11:
        OUTLINED_FUNCTION_81_9();
        savescptr(v1, v48, v1 + 1784);
LABEL_12:
        v49 = OUTLINED_FUNCTION_78_9();
        lpta_rpta_loadp(v49, v50, v51);
        v52 = OUTLINED_FUNCTION_56_10();
        if (setd_lookup(v52, v53, 156))
        {
LABEL_13:
          v54 = OUTLINED_FUNCTION_78_9();
          lpta_rpta_loadp(v54, v55, v56);
          v57 = OUTLINED_FUNCTION_56_10();
          if (setd_lookup(v57, v58, 157))
          {
            goto LABEL_4;
          }
        }

LABEL_14:
        mark_word_stress(v1);
LABEL_15:
        *(v2 + 8) = *(v1 + 1792);
      }
    }
  }

LABEL_4:
  OUTLINED_FUNCTION_157_2();
  return OUTLINED_FUNCTION_147_3();
}

uint64_t stress_pros(uint64_t a1)
{
  OUTLINED_FUNCTION_25_22();
  v305 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_67_10(v2, v3, v4, v5, v6, v7, v8, v9, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, SHIDWORD(v299), v300, v301, v302, v303);
  OUTLINED_FUNCTION_70_10();
  bzero(v304, v10);
  if (setjmp(v304) || (OUTLINED_FUNCTION_116_3(), ventproc(v1, v11, v12, v13, v14, v304)))
  {
    v15 = 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_28_19();
    get_parm(v17, v18, v19, -6);
    v20 = OUTLINED_FUNCTION_76_10();
    OUTLINED_FUNCTION_129_3(v20, v21);
    v22 = OUTLINED_FUNCTION_63_10();
    v24 = push_ptr_init(v22, v23);
    OUTLINED_FUNCTION_131_3(v24, v25, &null_str_11);
    v26 = 1;
    v27 = OUTLINED_FUNCTION_62_10();
    fence_32(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_110_3();
    starttest(v30, v31);
    OUTLINED_FUNCTION_20_24();
    bspush_ca_boa();
    v32 = OUTLINED_FUNCTION_39_13();
    if (lpta_loadp_setscan_r(v32, v33, v34))
    {
      v35 = 0;
    }

    else
    {
      v36 = OUTLINED_FUNCTION_1_34();
      v35 = !testFldeq(v36, v37, v38, v39) && !advance_tok(v1, v40, v41, v42);
    }

    LODWORD(v43) = v35;
    while (2)
    {
      v44 = v1[13];
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_57_10(v44);
      }

      else
      {
        v45 = vback(v1, v43);
        v26 = 0;
      }

      v15 = 94;
      switch(v45)
      {
        case 1:
          v48 = OUTLINED_FUNCTION_37_14();
          starttest(v48, v49);
          v50 = OUTLINED_FUNCTION_43_12();
          if (!lpta_loadp_setscan_l(v50, v51, v52))
          {
            goto LABEL_51;
          }

          goto LABEL_16;
        case 2:
          bspop_boa(v1);
          break;
        case 3:
LABEL_16:
          v53 = OUTLINED_FUNCTION_46_12();
          starttest(v53, v54);
          v55 = OUTLINED_FUNCTION_43_12();
          if (lpta_loadp_setscan_l(v55, v56, v57))
          {
            goto LABEL_17;
          }

          goto LABEL_49;
        case 4:
LABEL_51:
          v202 = OUTLINED_FUNCTION_82_8();
          savescptr(v202, v203, v204);
          v205 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v205, v206);
          goto LABEL_52;
        case 5:
          v242 = advance_tok(v1, v43, v46, v47);
          LODWORD(v43) = v26;
          if (v242)
          {
            continue;
          }

          v243 = OUTLINED_FUNCTION_51_11();
          bspush_ca_scan(v243, v244);
          v245 = OUTLINED_FUNCTION_7_31();
          v248 = 23;
          goto LABEL_72;
        case 6:
          goto LABEL_52;
        case 7:
          v245 = OUTLINED_FUNCTION_7_31();
          v248 = 21;
LABEL_72:
          v257 = testFldeq(v245, v246, v247, v248);
          v43 = v26;
          if (!v257)
          {
            goto LABEL_73;
          }

          continue;
        case 8:
LABEL_73:
          v258 = advance_tok(v1, v43, v46, v47);
          LODWORD(v43) = v26;
          if (v258)
          {
            continue;
          }

          v259 = OUTLINED_FUNCTION_7_31();
          v262 = testFldeq(v259, v260, v261, 28);
          LODWORD(v43) = v26;
          if (v262)
          {
            continue;
          }

          v265 = advance_tok(v1, v26, v263, v264);
          LODWORD(v43) = v26;
          if (v265)
          {
            continue;
          }

LABEL_52:
          v207 = OUTLINED_FUNCTION_47_12();
          bspush_ca_scan(v207, v208);
LABEL_53:
          v209 = OUTLINED_FUNCTION_4_32();
          v213 = testFldeq(v209, v210, v211, v212);
          LODWORD(v43) = v26;
          if (v213)
          {
            continue;
          }

          v214 = OUTLINED_FUNCTION_8_31();
          v217 = testFldeq(v214, v215, v216, 1);
          LODWORD(v43) = v26;
          if (v217)
          {
            continue;
          }

          v220 = advance_tok(v1, v26, v218, v219);
          LODWORD(v43) = v26;
          if (v220)
          {
            continue;
          }

          v120 = OUTLINED_FUNCTION_7_31();
          v123 = 13;
          goto LABEL_57;
        case 9:
          v249 = OUTLINED_FUNCTION_3_33();
          v253 = testFldeq(v249, v250, v251, v252);
          LODWORD(v43) = v26;
          if (v253)
          {
            continue;
          }

          v256 = advance_tok(v1, v26, v254, v255);
          LODWORD(v43) = v26;
          if (v256)
          {
            continue;
          }

          goto LABEL_53;
        case 10:
          goto LABEL_53;
        case 11:
          goto LABEL_86;
        case 12:
LABEL_17:
          v58 = OUTLINED_FUNCTION_53_11();
          starttest(v58, v59);
          v60 = OUTLINED_FUNCTION_43_12();
          if (lpta_loadp_setscan_l(v60, v61, v62))
          {
            goto LABEL_18;
          }

          goto LABEL_45;
        case 13:
LABEL_49:
          v195 = OUTLINED_FUNCTION_82_8();
          savescptr(v195, v196, v197);
          v198 = OUTLINED_FUNCTION_9_31();
          v201 = testFldeq(v198, v199, v200, 7);
          LODWORD(v43) = v26;
          if (v201)
          {
            continue;
          }

          v120 = OUTLINED_FUNCTION_7_31();
          v123 = 8;
          goto LABEL_57;
        case 14:
LABEL_18:
          v63 = OUTLINED_FUNCTION_53_11();
          starttest(v63, v64);
          v65 = OUTLINED_FUNCTION_17_29();
          if (lpta_loadp_setscan_r(v65, v66, v67))
          {
            goto LABEL_19;
          }

          v93 = OUTLINED_FUNCTION_9_31();
          v96 = 11;
          goto LABEL_84;
        case 15:
LABEL_45:
          OUTLINED_FUNCTION_115_3();
          v181 = OUTLINED_FUNCTION_82_8();
          savescptr(v181, v182, v183);
          v184 = OUTLINED_FUNCTION_7_31();
          v187 = testFldeq(v184, v185, v186, 34);
          LODWORD(v43) = v26;
          if (!v187)
          {
            v190 = advance_tok(v1, v26, v188, v189);
            LODWORD(v43) = v26;
            if (!v190)
            {
              v191 = OUTLINED_FUNCTION_11_31();
              v194 = lpta_loadp_setscan_r(v191, v192, v193);
              LODWORD(v43) = v26;
              if (!v194)
              {
                goto LABEL_48;
              }
            }
          }

          continue;
        case 16:
LABEL_19:
          v68 = OUTLINED_FUNCTION_53_11();
          starttest(v68, v69);
          v70 = OUTLINED_FUNCTION_17_29();
          if (lpta_loadp_setscan_l(v70, v71, v72))
          {
            goto LABEL_20;
          }

          goto LABEL_39;
        case 17:
LABEL_20:
          v73 = OUTLINED_FUNCTION_53_11();
          starttest(v73, v74);
          v75 = OUTLINED_FUNCTION_17_29();
          if (lpta_loadp_setscan_l(v75, v76, v77))
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        case 18:
LABEL_39:
          v158 = OUTLINED_FUNCTION_82_8();
          savescptr(v158, v159, v160);
          v161 = OUTLINED_FUNCTION_9_31();
          v164 = testFldeq(v161, v162, v163, 9);
          LODWORD(v43) = v26;
          if (v164)
          {
            continue;
          }

          v167 = advance_tok(v1, v26, v165, v166);
          LODWORD(v43) = v26;
          if (v167)
          {
            continue;
          }

          v168 = OUTLINED_FUNCTION_7_31();
          v171 = testFldeq(v168, v169, v170, 8);
          LODWORD(v43) = v26;
          if (v171)
          {
            continue;
          }

          v174 = advance_tok(v1, v26, v172, v173);
          LODWORD(v43) = v26;
          if (v174)
          {
            continue;
          }

          v175 = OUTLINED_FUNCTION_11_31();
          v178 = lpta_loadp_setscan_r(v175, v176, v177);
          LODWORD(v43) = v26;
          if (v178)
          {
            continue;
          }

          v179 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v179, v180);
          v93 = OUTLINED_FUNCTION_8_31();
          v96 = 5;
          goto LABEL_84;
        case 19:
LABEL_48:
          v93 = OUTLINED_FUNCTION_7_31();
          v96 = 6;
          goto LABEL_84;
        case 20:
          goto LABEL_85;
        case 21:
LABEL_21:
          v78 = OUTLINED_FUNCTION_53_11();
          starttest(v78, v79);
          v80 = OUTLINED_FUNCTION_43_12();
          if (lpta_loadp_setscan_l(v80, v81, v82))
          {
            goto LABEL_22;
          }

          goto LABEL_30;
        case 22:
LABEL_31:
          v124 = OUTLINED_FUNCTION_82_8();
          savescptr(v124, v125, v126);
          v127 = OUTLINED_FUNCTION_9_31();
          v130 = testFldeq(v127, v128, v129, 9);
          LODWORD(v43) = v26;
          if (v130)
          {
            continue;
          }

          v133 = advance_tok(v1, v26, v131, v132);
          LODWORD(v43) = v26;
          if (v133)
          {
            continue;
          }

          v134 = OUTLINED_FUNCTION_5_31();
          v138 = testFldeq(v134, v135, v136, v137);
          LODWORD(v43) = v26;
          if (v138)
          {
            continue;
          }

          v141 = advance_tok(v1, v26, v139, v140);
          LODWORD(v43) = v26;
          if (v141)
          {
            continue;
          }

          v142 = OUTLINED_FUNCTION_11_31();
          v145 = lpta_loadp_setscan_r(v142, v143, v144);
          LODWORD(v43) = v26;
          if (v145)
          {
            continue;
          }

          v146 = OUTLINED_FUNCTION_52_11();
          v148 = npush_fld(v146, v147, 6u);
          LODWORD(v43) = v26;
          if (v148)
          {
            continue;
          }

          v149 = OUTLINED_FUNCTION_56_10();
          npush_i(v149);
          v157 = if_testgt(v1, v150, v151, v152, v153, v154, v155, v156);
          LODWORD(v43) = v26;
          if (v157)
          {
            continue;
          }

          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v112 = OUTLINED_FUNCTION_7_31();
          v115 = 12;
          goto LABEL_29;
        case 23:
          bspop_boa(v1);
          goto LABEL_85;
        case 24:
LABEL_22:
          v83 = OUTLINED_FUNCTION_53_11();
          starttest(v83, v84);
          v85 = OUTLINED_FUNCTION_43_12();
          if (lpta_loadp_setscan_l(v85, v86, v87))
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        case 25:
LABEL_30:
          v117 = OUTLINED_FUNCTION_82_8();
          savescptr(v117, v118, v119);
          v120 = OUTLINED_FUNCTION_7_31();
          v123 = 35;
LABEL_57:
          v221 = testFldeq(v120, v121, v122, v123);
          LODWORD(v43) = v26;
          if (v221)
          {
            continue;
          }

          v224 = advance_tok(v1, v26, v222, v223);
          LODWORD(v43) = v26;
          if (v224)
          {
            continue;
          }

          v225 = OUTLINED_FUNCTION_11_31();
          v228 = lpta_loadp_setscan_r(v225, v226, v227);
          LODWORD(v43) = v26;
          if (v228)
          {
            continue;
          }

          v93 = OUTLINED_FUNCTION_9_31();
          v96 = 9;
          goto LABEL_84;
        case 26:
LABEL_23:
          v88 = OUTLINED_FUNCTION_53_11();
          starttest(v88, v89);
          v90 = OUTLINED_FUNCTION_43_12();
          if (lpta_loadp_setscan_l(v90, v91, v92))
          {
            goto LABEL_4;
          }

          v93 = OUTLINED_FUNCTION_7_31();
          v96 = 26;
LABEL_84:
          v267 = testFldeq(v93, v94, v95, v96);
          v43 = v26;
          if (v267)
          {
            continue;
          }

LABEL_85:
          v268 = advance_tok(v1, v43, v46, v47);
          LODWORD(v43) = v26;
          if (v268)
          {
            continue;
          }

LABEL_86:
          v269 = OUTLINED_FUNCTION_53_11();
          starttest(v269, v270);
          v271 = OUTLINED_FUNCTION_100_5();
          move_i(v271, v272, 1);
          v273 = OUTLINED_FUNCTION_83_8();
          v274 = mark_word_stress(v273);
          LODWORD(v43) = v26;
          if (v274)
          {
            continue;
          }

LABEL_87:
          v15 = 0;
          break;
        case 27:
LABEL_25:
          v97 = OUTLINED_FUNCTION_82_8();
          savescptr(v97, v98, v99);
          v100 = OUTLINED_FUNCTION_5_31();
          v104 = testFldeq(v100, v101, v102, v103);
          LODWORD(v43) = v26;
          if (v104)
          {
            continue;
          }

          v107 = advance_tok(v1, v26, v105, v106);
          LODWORD(v43) = v26;
          if (v107)
          {
            continue;
          }

          v108 = OUTLINED_FUNCTION_11_31();
          v111 = lpta_loadp_setscan_r(v108, v109, v110);
          LODWORD(v43) = v26;
          if (v111)
          {
            continue;
          }

          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v112 = OUTLINED_FUNCTION_7_31();
          v115 = 11;
LABEL_29:
          v116 = testFldeq(v112, v113, v114, v115);
          goto LABEL_80;
        case 28:
          bspop_boa(v1);
          v229 = OUTLINED_FUNCTION_9_31();
          v232 = testFldeq(v229, v230, v231, 9);
          LODWORD(v43) = v26;
          if (v232)
          {
            continue;
          }

          v235 = advance_tok(v1, v26, v233, v234);
          LODWORD(v43) = v26;
          if (v235)
          {
            continue;
          }

          OUTLINED_FUNCTION_53_11();
          bspush_ca_scan_boa();
          v236 = OUTLINED_FUNCTION_53_11();
          bspush_ca_scan(v236, v237);
          v238 = OUTLINED_FUNCTION_9_31();
          v241 = 1;
          goto LABEL_78;
        case 29:
          bspop_boa(v1);
          goto LABEL_86;
        case 30:
          v238 = OUTLINED_FUNCTION_9_31();
          v241 = 3;
LABEL_78:
          v266 = testFldeq(v238, v239, v240, v241);
          v43 = v26;
          if (!v266)
          {
            goto LABEL_79;
          }

          continue;
        case 31:
LABEL_79:
          v116 = advance_tok(v1, v43, v46, v47);
LABEL_80:
          if (v116)
          {
            LODWORD(v43) = v26;
          }

          else
          {
            LODWORD(v43) = 1;
          }

          continue;
        case 33:
          goto LABEL_87;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

LABEL_4:
  vretproc(v1);
  return v15;
}

void stress_relpros(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_25_22();
  v110 = *MEMORY[0x277D85DE8];
  memset(v105, 0, sizeof(v105));
  v104[0] = 0;
  v104[1] = 0;
  v103 = 0;
  OUTLINED_FUNCTION_71_10();
  bzero(v102, v7);
  OUTLINED_FUNCTION_70_10();
  bzero(v109, v8);
  if (!setjmp(v109) && !ventproc(v6, v102, v108, v107, v106, v109))
  {
    v9 = OUTLINED_FUNCTION_28_19();
    get_parm(v9, v10, v11, -6);
    OUTLINED_FUNCTION_80_9(v12, v105);
    v13 = OUTLINED_FUNCTION_92_7();
    v15 = push_ptr_init(v13, v14);
    v103 = 65532;
    OUTLINED_FUNCTION_131_3(v15, v16, &null_str_11);
    v17 = OUTLINED_FUNCTION_62_10();
    fence_32(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_110_3();
    starttest(v20, v21);
    OUTLINED_FUNCTION_20_24();
    bspush_ca_boa();
    v22 = OUTLINED_FUNCTION_39_13();
    v25 = lpta_loadp_setscan_r(v22, v23, v24);
    LODWORD(v26) = 0;
    if (!v25)
    {
      v27 = OUTLINED_FUNCTION_37_14();
      bspush_ca_scan(v27, v28);
      v29 = OUTLINED_FUNCTION_8_31();
      v32 = testFldeq(v29, v30, v31, 5);
      v35 = 0;
      v26 = 0;
      if (!v32)
      {
LABEL_6:
        v36 = v35;
        if (advance_tok(v6, v26, v33, v34))
        {
          LODWORD(v26) = v36;
        }

        else
        {
          LODWORD(v26) = 1;
        }
      }
    }

    while (2)
    {
      v37 = v6[13];
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_77_9(v37);
        v39 = v26;
      }

      else
      {
        v38 = vback(v6, v26);
        v39 = 0;
      }

      v35 = v39;
      switch(v38)
      {
        case 1:
          v40 = OUTLINED_FUNCTION_152_2();
          starttest(v40, v41);
          v42 = OUTLINED_FUNCTION_21_23();
          if (lpta_loadp_setscan_l(v42, v43, v44))
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        case 2:
          bspop_boa(v6);
          break;
        case 3:
          v69 = OUTLINED_FUNCTION_7_31();
          v72 = testFldeq(v69, v70, v71, 6);
          v35 = v39;
          v26 = v39;
          if (!v72)
          {
            goto LABEL_6;
          }

          continue;
        case 4:
          goto LABEL_6;
        case 5:
LABEL_14:
          v45 = OUTLINED_FUNCTION_133_3();
          starttest(v45, v46);
          v47 = OUTLINED_FUNCTION_21_23();
          if (!lpta_loadp_setscan_l(v47, v48, v49))
          {
            goto LABEL_15;
          }

          goto LABEL_3;
        case 6:
LABEL_19:
          v64 = OUTLINED_FUNCTION_121_3();
          v66 = chstream(v64, v65, 1u);
          LODWORD(v26) = v39;
          if (v66)
          {
            continue;
          }

          v67 = OUTLINED_FUNCTION_141_3();
          bspush_ca_scan(v67, v68);
          OUTLINED_FUNCTION_26_22();
LABEL_24:
          v73 = test_string_s();
          LODWORD(v26) = v39;
          if (v73)
          {
            continue;
          }

LABEL_25:
          OUTLINED_FUNCTION_56_10();
          v74 = test_string_s();
          LODWORD(v26) = v39;
          if (v74)
          {
            continue;
          }

LABEL_26:
          v75 = OUTLINED_FUNCTION_73_10();
          v77 = test_synch(v75, v76, 1, &unk_28064B3EE);
          LODWORD(v26) = v39;
          if (v77)
          {
            continue;
          }

LABEL_27:
          v78 = OUTLINED_FUNCTION_39_13();
          v81 = chstream(v78, v79, v80);
          LODWORD(v26) = v39;
          if (v81)
          {
            continue;
          }

          v82 = OUTLINED_FUNCTION_7_31();
          v85 = 25;
LABEL_33:
          v94 = testFldeq(v82, v83, v84, v85);
          v26 = v39;
          if (v94)
          {
            continue;
          }

LABEL_34:
          v95 = advance_tok(v6, v26, v33, v34);
          LODWORD(v26) = v39;
          if (v95)
          {
            continue;
          }

LABEL_35:
          v96 = OUTLINED_FUNCTION_85_8();
          starttest(v96, v97);
          v98 = OUTLINED_FUNCTION_88_7();
          move_i(v98, v99, 1);
          v100 = OUTLINED_FUNCTION_61_10();
          v101 = mark_word_stress(v100);
          LODWORD(v26) = v39;
          if (!v101)
          {
            goto LABEL_3;
          }

          continue;
        case 7:
          OUTLINED_FUNCTION_26_22();
          goto LABEL_24;
        case 8:
          goto LABEL_25;
        case 9:
          goto LABEL_26;
        case 10:
          goto LABEL_27;
        case 11:
          goto LABEL_35;
        case 13:
LABEL_15:
          v50 = OUTLINED_FUNCTION_96_5();
          savescptr(v50, v51, v104);
          v52 = OUTLINED_FUNCTION_5_31();
          v56 = testFldeq(v52, v53, v54, v55);
          LODWORD(v26) = v39;
          if (!v56)
          {
            v59 = advance_tok(v6, v39, v57, v58);
            LODWORD(v26) = v39;
            if (!v59)
            {
              v60 = lpta_loadp_setscan_r(v6, v104, 4);
              LODWORD(v26) = v39;
              if (!v60)
              {
                OUTLINED_FUNCTION_140_3();
                bspush_ca_scan_boa();
                v61 = OUTLINED_FUNCTION_9_31();
                testFldeq(v61, v62, v63, 7);
                OUTLINED_FUNCTION_173_2();
              }
            }
          }

          continue;
        case 14:
          bspop_boa(v6);
          v89 = advance_tok(v6, v86, v87, v88);
          LODWORD(v26) = v39;
          if (v89)
          {
            continue;
          }

          v90 = OUTLINED_FUNCTION_127_3();
          bspush_ca_scan(v90, v91);
          v82 = OUTLINED_FUNCTION_5_31();
          goto LABEL_33;
        case 15:
          v92 = OUTLINED_FUNCTION_119_3();
          bspush_ca_scan(v92, v93);
          v82 = OUTLINED_FUNCTION_6_31();
          goto LABEL_33;
        case 16:
          goto LABEL_34;
        case 17:
          v82 = OUTLINED_FUNCTION_1_34();
          goto LABEL_33;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v6);
  OUTLINED_FUNCTION_124_3();
}

uint64_t stress_before_FW(uint64_t a1)
{
  OUTLINED_FUNCTION_25_22();
  v297 = *MEMORY[0x277D85DE8];
  v295[0] = 0;
  v295[1] = 0;
  OUTLINED_FUNCTION_67_10(v2, v3, v4, v5, v6, v7, v8, v9, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, SHIDWORD(v290), v291, v292, v293, v294);
  OUTLINED_FUNCTION_70_10();
  bzero(v296, v10);
  if (setjmp(v296))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_116_3();
  v15 = ventproc(v1, v11, v12, v13, v14, v296);
  if (v15)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_84_8(v15, v295);
  OUTLINED_FUNCTION_36_14();
  v18 = OUTLINED_FUNCTION_63_10();
  v20 = push_ptr_init(v18, v19);
  v21 = 0;
  v23 = OUTLINED_FUNCTION_131_3(v20, v22, &null_str_11);
  OUTLINED_FUNCTION_91_7(v23, v24, &_MergedGlobals_28);
  v25 = OUTLINED_FUNCTION_97_5();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_61_10();
  v29 = 0;
  if (!lpta_loadp_setscan_r(v27, v28, v296))
  {
    OUTLINED_FUNCTION_56_10();
    v30 = test_string_s();
    v31 = 0;
    v32 = 0;
    v21 = 0;
    v29 = 0;
    if (!v30)
    {
LABEL_9:
      v33 = v32;
      v34 = v31;
      OUTLINED_FUNCTION_81_9();
      v37 = test_synch(v1, v35, 1, v36);
      LODWORD(v38) = v33;
      v39 = 1;
      LODWORD(v40) = v33;
      if (v37)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }
  }

LABEL_16:
  v54 = OUTLINED_FUNCTION_105_4();
  starttest(v54, v55);
  v56 = OUTLINED_FUNCTION_76_10();
  v58 = lpta_loadp_setscan_l(v56, v57, 4);
  v34 = v21;
  LODWORD(v21) = v29;
  v59 = v34;
  if (!v58)
  {
LABEL_19:
    v60 = OUTLINED_FUNCTION_82_8();
    savescptr(v60, v61, v62);
    v63 = OUTLINED_FUNCTION_1_34();
    if (!testFldeq(v63, v64, v65, v66))
    {
      v67 = OUTLINED_FUNCTION_7_31();
      if (!testFldeq(v67, v68, v69, 11))
      {
        OUTLINED_FUNCTION_42_12();
        bspush_ca_scan_boa();
        v70 = OUTLINED_FUNCTION_52_11();
        if (testFldeq(v70, v71, 4, 2))
        {
          LODWORD(v38) = v21;
        }

        else
        {
          LODWORD(v38) = 1;
        }

        goto LABEL_24;
      }
    }

LABEL_74:
    LODWORD(v38) = v21;
    goto LABEL_24;
  }

LABEL_49:
  v72 = v59;
  v129 = OUTLINED_FUNCTION_40_13();
  starttest(v129, v130);
  v131 = OUTLINED_FUNCTION_17_29();
  v34 = v72;
  v21 = v29;
  if (!lpta_loadp_setscan_l(v131, v132, v133))
  {
LABEL_63:
    OUTLINED_FUNCTION_99_5();
    v182 = OUTLINED_FUNCTION_82_8();
    savescptr(v182, v183, v184);
    v185 = OUTLINED_FUNCTION_7_31();
    if (testFldeq(v185, v186, v187, 2))
    {
      goto LABEL_74;
    }

    if (advance_tok(v1, v188, v189, v190))
    {
      goto LABEL_74;
    }

    v191 = OUTLINED_FUNCTION_7_31();
    if (testFldeq(v191, v192, v193, 18))
    {
      goto LABEL_74;
    }

    if (advance_tok(v1, v194, v195, v196))
    {
      goto LABEL_74;
    }

    v197 = OUTLINED_FUNCTION_7_31();
    if (testFldeq(v197, v198, v199, 17))
    {
      goto LABEL_74;
    }

    if (advance_tok(v1, v200, v201, v202))
    {
      goto LABEL_74;
    }

    v203 = OUTLINED_FUNCTION_11_31();
    if (lpta_loadp_setscan_r(v203, v204, v205))
    {
      goto LABEL_74;
    }

    v206 = OUTLINED_FUNCTION_52_11();
    if (npush_fld(v206, v207, 6u))
    {
      goto LABEL_74;
    }

    v208 = OUTLINED_FUNCTION_56_10();
    goto LABEL_87;
  }

LABEL_50:
  v134 = OUTLINED_FUNCTION_45_12();
  starttest(v134, v135);
  v136 = OUTLINED_FUNCTION_17_29();
  lpta_loadp_setscan_l(v136, v137, v138);
  OUTLINED_FUNCTION_165_2();
  if (!v139)
  {
LABEL_72:
    v209 = OUTLINED_FUNCTION_82_8();
    savescptr(v209, v210, v211);
    v212 = OUTLINED_FUNCTION_7_31();
    if (testFldeq(v212, v213, v214, 2))
    {
      goto LABEL_73;
    }

    v218 = advance_tok(v1, v215, v216, v217);
    v34 = v72;
    LODWORD(v38) = v21;
    v75 = v72;
    v76 = v21;
    if (v218)
    {
      goto LABEL_24;
    }

LABEL_78:
    LODWORD(v21) = v76;
    v34 = v75;
    v219 = OUTLINED_FUNCTION_53_11();
    bspush_ca_scan(v219, v220);
    v221 = OUTLINED_FUNCTION_9_31();
    if (testFldeq(v221, v222, v223, 7))
    {
      goto LABEL_74;
    }

    if (advance_tok(v1, v224, v225, v226))
    {
      goto LABEL_74;
    }

    v227 = OUTLINED_FUNCTION_7_31();
    if (testFldeq(v227, v228, v229, 13))
    {
      goto LABEL_74;
    }

    if (advance_tok(v1, v230, v231, v232))
    {
      goto LABEL_74;
    }

    v233 = OUTLINED_FUNCTION_4_32();
    if (testFldeq(v233, v234, v235, v236))
    {
      goto LABEL_74;
    }

    if (advance_tok(v1, v237, v238, v239))
    {
      goto LABEL_74;
    }

    v240 = OUTLINED_FUNCTION_11_31();
    if (lpta_loadp_setscan_r(v240, v241, v242))
    {
      goto LABEL_74;
    }

    v243 = OUTLINED_FUNCTION_52_11();
    if (npush_fld(v243, v244, 6u))
    {
      goto LABEL_74;
    }

    v208 = OUTLINED_FUNCTION_87_7();
LABEL_87:
    npush_i(v208);
    if (if_testgt(v1, v245, v246, v247, v248, v249, v250, v251))
    {
      goto LABEL_74;
    }

    v255 = advance_tok(v1, v252, v253, v254);
    v39 = 1;
LABEL_91:
    LODWORD(v38) = v21;
    LODWORD(v40) = v21;
    if (v255)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_10:
      v41 = v40;
      v34 = v39;
      if (v39)
      {
LABEL_11:
        v42 = OUTLINED_FUNCTION_53_11();
        starttest(v42, v43);
        v44 = OUTLINED_FUNCTION_100_5();
        move_i(v44, v45, 1);
        v46 = OUTLINED_FUNCTION_83_8();
        v47 = mark_word_stress(v46);
        LODWORD(v38) = v41;
        if (!v47)
        {
LABEL_12:
          v16 = 0;
          goto LABEL_4;
        }
      }

      else
      {
        v48 = OUTLINED_FUNCTION_53_11();
        starttest_e(v48, v49);
        v50 = OUTLINED_FUNCTION_61_10();
        move_i(v50, v51, 0);
        v52 = OUTLINED_FUNCTION_89_7();
        v53 = mark_word_stress(v52);
        v16 = 0;
        LODWORD(v38) = v41;
        if (!v53)
        {
          goto LABEL_4;
        }
      }

LABEL_24:
      v21 = 7;
      v72 = &unk_28064B3ED;
LABEL_25:
      v73 = v1[13];
      if (v73)
      {
        v74 = OUTLINED_FUNCTION_77_9(v73);
        v29 = v38;
      }

      else
      {
        v74 = vback(v1, v38);
        v29 = 0;
      }

      v75 = v34;
      v76 = v29;
      v77 = v34;
      v78 = v29;
      v79 = v34;
      v80 = v29;
      v39 = v34;
      v40 = v29;
      switch(v74)
      {
        case 1:
          v21 = v34;
          goto LABEL_16;
        case 2:
          v31 = v34;
          v32 = v29;
          goto LABEL_9;
        case 3:
          continue;
        case 4:
          v59 = v34;
          goto LABEL_49;
        case 5:
          LODWORD(v21) = v29;
          goto LABEL_19;
        case 6:
          bspop_boa(v1);
          v84 = advance_tok(v1, v81, v82, v83);
          LODWORD(v38) = v29;
          if (v84)
          {
            goto LABEL_25;
          }

          goto LABEL_30;
        case 7:
LABEL_30:
          v85 = OUTLINED_FUNCTION_100_5();
          v87 = chstream(v85, v86, 1u);
          LODWORD(v38) = v29;
          if (v87)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_26_22();
          v88 = test_string_s();
          LODWORD(v38) = v29;
          if (v88)
          {
            goto LABEL_25;
          }

          v89 = OUTLINED_FUNCTION_39_13();
          v92 = lpta_loadp_setscan_r(v89, v90, v91);
          LODWORD(v38) = v29;
          if (v92)
          {
            goto LABEL_25;
          }

          v93 = OUTLINED_FUNCTION_52_11();
          v95 = npush_fld(v93, v94, 6u);
          LODWORD(v38) = v29;
          if (v95)
          {
            goto LABEL_25;
          }

          v96 = OUTLINED_FUNCTION_87_7();
          npush_i(v96);
          v104 = if_testgt(v1, v97, v98, v99, v100, v101, v102, v103);
          LODWORD(v38) = v29;
          if (v104)
          {
            goto LABEL_25;
          }

          v107 = advance_tok(v1, v29, v105, v106);
          LODWORD(v38) = v29;
          if (v107)
          {
            goto LABEL_25;
          }

          v39 = 1;
          LODWORD(v40) = v29;
          break;
        case 8:
          goto LABEL_50;
        case 9:
          LODWORD(v21) = v29;
          goto LABEL_63;
        case 10:
          goto LABEL_51;
        case 11:
          OUTLINED_FUNCTION_165_2();
          goto LABEL_72;
        case 12:
          goto LABEL_78;
        case 13:
          v108 = OUTLINED_FUNCTION_1_34();
          v112 = testFldeq(v108, v109, v110, v111);
          LODWORD(v38) = v29;
          if (v112)
          {
            goto LABEL_25;
          }

          v115 = advance_tok(v1, v29, v113, v114);
          LODWORD(v38) = v29;
          if (v115)
          {
            goto LABEL_25;
          }

          v75 = v34;
          v76 = v29;
          goto LABEL_78;
        case 15:
          OUTLINED_FUNCTION_165_2();
          goto LABEL_52;
        case 16:
          goto LABEL_89;
        case 17:
          v116 = OUTLINED_FUNCTION_1_34();
          v120 = testFldeq(v116, v117, v118, v119);
          LODWORD(v38) = v29;
          if (v120)
          {
            goto LABEL_25;
          }

          v123 = advance_tok(v1, v29, v121, v122);
          LODWORD(v38) = v29;
          if (v123)
          {
            goto LABEL_25;
          }

          v77 = v34;
          v78 = v29;
          goto LABEL_89;
        case 18:
          v124 = OUTLINED_FUNCTION_4_32();
          v128 = testFldeq(v124, v125, v126, v127);
          v38 = v29;
          if (v128)
          {
            goto LABEL_25;
          }

          v79 = v34;
          v80 = v29;
          goto LABEL_90;
        case 19:
          goto LABEL_90;
        case 20:
          v41 = v29;
          goto LABEL_11;
        case 21:
        case 22:
          goto LABEL_12;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_51:
  v140 = OUTLINED_FUNCTION_53_11();
  starttest(v140, v141);
  v142 = OUTLINED_FUNCTION_17_29();
  lpta_loadp_setscan_l(v142, v143, v144);
  OUTLINED_FUNCTION_165_2();
  if (!v145)
  {
LABEL_52:
    OUTLINED_FUNCTION_115_3();
    v146 = OUTLINED_FUNCTION_82_8();
    savescptr(v146, v147, v148);
    v149 = OUTLINED_FUNCTION_1_34();
    if (!testFldeq(v149, v150, v151, v152))
    {
      v153 = OUTLINED_FUNCTION_7_31();
      if (!testFldeq(v153, v154, v155, 11) && !advance_tok(v1, v156, v157, v158))
      {
        v159 = OUTLINED_FUNCTION_9_31();
        if (!testFldeq(v159, v160, v161, 7) && !advance_tok(v1, v162, v163, v164))
        {
          v165 = OUTLINED_FUNCTION_7_31();
          if (!testFldeq(v165, v166, v167, 13) && !advance_tok(v1, v168, v169, v170))
          {
            v171 = OUTLINED_FUNCTION_4_32();
            if (!testFldeq(v171, v172, v173, v174) && !advance_tok(v1, v175, v176, v177))
            {
              v178 = OUTLINED_FUNCTION_11_31();
              v181 = lpta_loadp_setscan_r(v178, v179, v180);
              v34 = v72;
              LODWORD(v38) = v21;
              v77 = v72;
              v78 = v21;
              if (v181)
              {
                goto LABEL_24;
              }

LABEL_89:
              v256 = v78;
              v257 = v77;
              v258 = OUTLINED_FUNCTION_53_11();
              bspush_ca_scan(v258, v259);
              v260 = OUTLINED_FUNCTION_53_11();
              bspush_ca_scan(v260, v261);
              v262 = OUTLINED_FUNCTION_7_31();
              v265 = testFldeq(v262, v263, v264, 2);
              v34 = v257;
              v38 = v256;
              v79 = v257;
              v80 = v256;
              if (v265)
              {
                goto LABEL_24;
              }

LABEL_90:
              LODWORD(v21) = v80;
              v34 = v79;
              v255 = advance_tok(v1, v38, v75, v40);
              v39 = 0;
              goto LABEL_91;
            }
          }
        }
      }
    }

LABEL_73:
    v34 = v72;
    goto LABEL_74;
  }

LABEL_3:
  v16 = 94;
LABEL_4:
  vretproc(v1);
  return v16;
}

void stress_functed_adv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_25_22();
  v152 = *MEMORY[0x277D85DE8];
  v139 = 0;
  v140 = 0;
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  HIDWORD(v134) = 0;
  OUTLINED_FUNCTION_71_10();
  bzero(v133, v7);
  OUTLINED_FUNCTION_70_10();
  bzero(v151, v8);
  v9 = setjmp(v151);
  if (!v9 && !OUTLINED_FUNCTION_161_2(v9, v133, v10, v11, v12, v13, v14, v15, v129, v130, v131, v132, v133[0], v133[1], v133[2], v133[3], v133[4], v133[5], v133[6], v133[7], v133[8], v133[9], v133[10], v133[11], v133[12], v133[13], v133[14], v133[15], v133[16], v133[17], v133[18], v133[19], v133[20], v133[21], v133[22], v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151[0]))
  {
    v16 = OUTLINED_FUNCTION_28_19();
    get_parm(v16, v17, v18, -6);
    OUTLINED_FUNCTION_80_9(v19, &v137);
    v20 = push_ptr_init(v6, &v135);
    HIDWORD(v134) = 65532;
    OUTLINED_FUNCTION_131_3(v20, v21, &null_str_11);
    v22 = 1;
    v23 = OUTLINED_FUNCTION_62_10();
    fence_32(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_110_3();
    starttest(v26, v27);
    OUTLINED_FUNCTION_20_24();
    bspush_ca_boa();
    v28 = OUTLINED_FUNCTION_39_13();
    if (lpta_loadp_setscan_r(v28, v29, v30))
    {
      v31 = 0;
    }

    else
    {
      v32 = OUTLINED_FUNCTION_3_33();
      v31 = !testFldeq(v32, v33, v34, v35) && (v36 = OUTLINED_FUNCTION_52_11(), !npush_fld(v36, v37, 6u)) && (v38 = OUTLINED_FUNCTION_56_10(), npush_i(v38), !if_testgt(v6, v39, v40, v41, v42, v43, v44, v45)) && !advance_tok(v6, v46, v47, v48);
    }

    LODWORD(v49) = v31;
    while (2)
    {
      v50 = v6[13];
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_57_10(v50);
      }

      else
      {
        v51 = vback(v6, v49);
        v22 = 0;
      }

      switch(v51)
      {
        case 1:
          v54 = OUTLINED_FUNCTION_140_3();
          starttest(v54, v55);
          v56 = OUTLINED_FUNCTION_58_10();
          if (!lpta_loadp_setscan_l(v56, v57, v58))
          {
            goto LABEL_24;
          }

          goto LABEL_16;
        case 2:
          bspop_boa(v6);
          break;
        case 3:
LABEL_16:
          v59 = OUTLINED_FUNCTION_40_13();
          starttest(v59, v60);
          v61 = OUTLINED_FUNCTION_58_10();
          if (!lpta_loadp_setscan_l(v61, v62, v63))
          {
            goto LABEL_17;
          }

          break;
        case 4:
LABEL_24:
          v92 = OUTLINED_FUNCTION_134_3();
          savescptr(v92, v93, &v135);
          v94 = OUTLINED_FUNCTION_23_22();
          v97 = testFldeq(v94, v95, v96, 3);
          LODWORD(v49) = v22;
          if (v97)
          {
            continue;
          }

          v98 = OUTLINED_FUNCTION_59_10();
          v101 = testFldeq(v98, v99, v100, 8);
          LODWORD(v49) = v22;
          if (v101)
          {
            continue;
          }

          OUTLINED_FUNCTION_127_3();
          bspush_ca_scan_boa();
          v102 = OUTLINED_FUNCTION_59_10();
          v105 = 25;
          goto LABEL_27;
        case 5:
          bspop_boa(v6);
          v109 = advance_tok(v6, v106, v107, v108);
          LODWORD(v49) = v22;
          if (v109)
          {
            continue;
          }

          v110 = OUTLINED_FUNCTION_23_22();
          v113 = testFldeq(v110, v111, v112, 1);
          LODWORD(v49) = v22;
          if (v113)
          {
            continue;
          }

          v116 = advance_tok(v6, v22, v114, v115);
          LODWORD(v49) = v22;
          if (v116)
          {
            continue;
          }

          v117 = OUTLINED_FUNCTION_73_10();
          v119 = lpta_loadp_setscan_r(v117, v118, 4);
          LODWORD(v49) = v22;
          if (v119)
          {
            continue;
          }

          OUTLINED_FUNCTION_151_2();
          bspush_ca_scan_boa();
          v102 = OUTLINED_FUNCTION_23_22();
          v105 = 3;
LABEL_27:
          if (testFldeq(v102, v103, v104, v105))
          {
            LODWORD(v49) = v22;
          }

          else
          {
            LODWORD(v49) = 1;
          }

          continue;
        case 6:
          bspop_boa(v6);
          goto LABEL_39;
        case 7:
          goto LABEL_40;
        case 9:
LABEL_17:
          v64 = OUTLINED_FUNCTION_133_3();
          savescptr(v64, v65, &v135);
          v66 = OUTLINED_FUNCTION_23_22();
          v69 = testFldeq(v66, v67, v68, 3);
          LODWORD(v49) = v22;
          if (v69)
          {
            continue;
          }

          v70 = OUTLINED_FUNCTION_74_10();
          v72 = testFldeq(v70, v71, 3, 5);
          LODWORD(v49) = v22;
          if (v72)
          {
            continue;
          }

          v75 = advance_tok(v6, v22, v73, v74);
          LODWORD(v49) = v22;
          if (v75)
          {
            continue;
          }

          v76 = OUTLINED_FUNCTION_23_22();
          v79 = testFldeq(v76, v77, v78, 1);
          LODWORD(v49) = v22;
          if (v79)
          {
            continue;
          }

          v82 = advance_tok(v6, v22, v80, v81);
          LODWORD(v49) = v22;
          if (v82)
          {
            continue;
          }

          v83 = OUTLINED_FUNCTION_73_10();
          v85 = lpta_loadp_setscan_r(v83, v84, 4);
          LODWORD(v49) = v22;
          if (v85)
          {
            continue;
          }

          v86 = OUTLINED_FUNCTION_119_3();
          bspush_ca_scan(v86, v87);
          v88 = OUTLINED_FUNCTION_23_22();
          v91 = 8;
LABEL_38:
          v122 = testFldeq(v88, v89, v90, v91);
          v49 = v22;
          if (v122)
          {
            continue;
          }

LABEL_39:
          v123 = advance_tok(v6, v49, v52, v53);
          LODWORD(v49) = v22;
          if (v123)
          {
            continue;
          }

LABEL_40:
          v124 = OUTLINED_FUNCTION_85_8();
          starttest(v124, v125);
          v126 = OUTLINED_FUNCTION_88_7();
          move_i(v126, v127, 1);
          v128 = mark_word_stress(v6);
          LODWORD(v49) = v22;
          if (!v128)
          {
            goto LABEL_3;
          }

          continue;
        case 10:
          v120 = OUTLINED_FUNCTION_96_5();
          bspush_ca_scan(v120, v121);
          v88 = OUTLINED_FUNCTION_74_10();
          v90 = 3;
          v91 = 10;
          goto LABEL_38;
        case 11:
          goto LABEL_39;
        case 12:
          v88 = OUTLINED_FUNCTION_23_22();
          v91 = 2;
          goto LABEL_38;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v6);
  OUTLINED_FUNCTION_124_3();
}

void stress_conj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_25_22();
  v92 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_146_3();
  v88 = 0;
  OUTLINED_FUNCTION_71_10();
  bzero(v87, v7);
  OUTLINED_FUNCTION_70_10();
  bzero(v91, v8);
  if (!setjmp(v91))
  {
    OUTLINED_FUNCTION_172_2();
    if (!ventproc(v6, v9, v10, v11, v12, v13))
    {
      v14 = OUTLINED_FUNCTION_28_19();
      get_parm(v14, v15, v16, -6);
      OUTLINED_FUNCTION_80_9(v17, v90);
      v18 = push_ptr_init(v6, v89);
      v88 = 65532;
      OUTLINED_FUNCTION_131_3(v18, v19, &null_str_11);
      v20 = OUTLINED_FUNCTION_62_10();
      fence_32(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_110_3();
      starttest(v23, v24);
      OUTLINED_FUNCTION_20_24();
      bspush_ca_boa();
      v25 = OUTLINED_FUNCTION_39_13();
      if (lpta_loadp_setscan_r(v25, v26, v27))
      {
        v28 = 0;
      }

      else
      {
        v29 = OUTLINED_FUNCTION_8_31();
        v28 = !testFldeq(v29, v30, v31, 7) && (v32 = OUTLINED_FUNCTION_52_11(), !npush_fld(v32, v33, 6u)) && (v34 = OUTLINED_FUNCTION_56_10(), npush_i(v34), !if_testgt(v6, v35, v36, v37, v38, v39, v40, v41)) && !advance_tok(v6, v42, v43, v44);
      }

      LODWORD(v45) = v28;
      while (2)
      {
        v46 = v6[13];
        if (v46)
        {
          v47 = OUTLINED_FUNCTION_77_9(v46);
          v50 = v45;
        }

        else
        {
          v47 = vback(v6, v45);
          v50 = 0;
        }

        switch(v47)
        {
          case 1:
            v51 = OUTLINED_FUNCTION_61_10();
            starttest(v51, v52);
            if (!lpta_loadp_setscan_l(v6, v90, 4))
            {
              goto LABEL_16;
            }

            break;
          case 2:
            bspop_boa(v6);
            break;
          case 4:
LABEL_16:
            v53 = OUTLINED_FUNCTION_134_3();
            savescptr(v53, v54, v89);
            goto LABEL_17;
          case 5:
LABEL_17:
            v55 = OUTLINED_FUNCTION_96_5();
            v57 = chstream(v55, v56, 1u);
            LODWORD(v45) = v50;
            if (!v57)
            {
              OUTLINED_FUNCTION_56_10();
              v58 = test_string_s();
              LODWORD(v45) = v50;
              if (!v58)
              {
                goto LABEL_19;
              }
            }

            continue;
          case 6:
LABEL_19:
            v59 = OUTLINED_FUNCTION_85_8();
            v61 = chstream(v59, v60, 4u);
            LODWORD(v45) = v50;
            if (v61)
            {
              continue;
            }

            v62 = OUTLINED_FUNCTION_59_10();
            v65 = testFldeq(v62, v63, v64, 1);
            LODWORD(v45) = v50;
            if (v65)
            {
              continue;
            }

            v68 = advance_tok(v6, v50, v66, v67);
            LODWORD(v45) = v50;
            if (v68)
            {
              continue;
            }

            v69 = OUTLINED_FUNCTION_73_10();
            v71 = lpta_loadp_setscan_r(v69, v70, 4);
            LODWORD(v45) = v50;
            if (v71)
            {
              continue;
            }

            v72 = OUTLINED_FUNCTION_119_3();
            bspush_ca_scan(v72, v73);
            v74 = OUTLINED_FUNCTION_23_22();
            v77 = 2;
LABEL_26:
            v80 = testFldeq(v74, v75, v76, v77);
            v45 = v50;
            if (v80)
            {
              continue;
            }

LABEL_27:
            v81 = advance_tok(v6, v45, v48, v49);
            LODWORD(v45) = v50;
            if (v81)
            {
              continue;
            }

LABEL_28:
            v82 = OUTLINED_FUNCTION_133_3();
            starttest(v82, v83);
            v84 = OUTLINED_FUNCTION_88_7();
            move_i(v84, v85, 1);
            v86 = mark_word_stress(v6);
            LODWORD(v45) = v50;
            if (!v86)
            {
              goto LABEL_3;
            }

            continue;
          case 7:
            v78 = OUTLINED_FUNCTION_100_5();
            bspush_ca_scan(v78, v79);
            v74 = OUTLINED_FUNCTION_23_22();
            v77 = 3;
            goto LABEL_26;
          case 8:
            goto LABEL_27;
          case 9:
            v74 = OUTLINED_FUNCTION_23_22();
            goto LABEL_26;
          case 10:
            goto LABEL_28;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v6);
  OUTLINED_FUNCTION_124_3();
}

uint64_t get_nonpickup_word()
{
  OUTLINED_FUNCTION_156_2();
  v67 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = 0;
  OUTLINED_FUNCTION_114_3();
  HIDWORD(v56) = 0;
  v54 = 0;
  v55 = 0;
  OUTLINED_FUNCTION_71_10();
  bzero(v53, v4);
  OUTLINED_FUNCTION_70_10();
  bzero(v66, v5);
  if (!setjmp(v66) && !ventproc(v0, v53, v65, v64, v63, v66))
  {
    v8 = OUTLINED_FUNCTION_73_10();
    get_parm(v8, v9, v3, -6);
    v10 = OUTLINED_FUNCTION_121_3();
    OUTLINED_FUNCTION_142_3(v10, v11);
    v12 = OUTLINED_FUNCTION_28_19();
    get_parm(v12, v13, v14, -6);
    v15 = OUTLINED_FUNCTION_76_10();
    OUTLINED_FUNCTION_129_3(v15, v16);
    WORD2(v56) = -4;
    v17 = OUTLINED_FUNCTION_96_5();
    v19 = push_ptr_init(v17, v18);
    OUTLINED_FUNCTION_131_3(v19, v20, &null_str_11);
    HIWORD(v56) = 0;
    v21 = OUTLINED_FUNCTION_53_11();
    startloop(v21, v22);
    v23 = OUTLINED_FUNCTION_73_10();
    lpta_loadpn(v23, v24);
    OUTLINED_FUNCTION_52_11();
    lpta_mover();
    v25 = OUTLINED_FUNCTION_64_10();
    lpta_storep(v25, v26, v27);
    v28 = OUTLINED_FUNCTION_121_3();
    lpta_loadpn(v28, v29);
    OUTLINED_FUNCTION_52_11();
    lpta_mover();
    v30 = OUTLINED_FUNCTION_96_5();
    lpta_storep(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_64_10();
    if (!forall_to_test(v33, v34, &v54))
    {
LABEL_6:
      v35 = OUTLINED_FUNCTION_37_14();
      bspush_ca(v35);
      v36 = OUTLINED_FUNCTION_43_12();
      if (!lpta_loadp_setscan_r(v36, v37, v38) && !advance_tok(v0, v39, v40, v41))
      {
LABEL_8:
        OUTLINED_FUNCTION_106_3(4, v52, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8], v53[9], v53[10], v53[11], v53[12], v53[13], v53[14], v53[15], v53[16], v53[17], v53[18], v53[19], v53[20], v53[21], v53[22], v54, v55, v56, v57[0]);
LABEL_9:
        if (HIWORD(v56) != 3)
        {
LABEL_10:
          v42 = OUTLINED_FUNCTION_42_12();
          starttest(v42, v43);
          lpta_rpta_loadp(v0, v59, v57);
          v44 = OUTLINED_FUNCTION_56_10();
          if (!setd_lookup(v44, v45, 2))
          {
            c_assvar(v0, &v56 + 2);
            ++HIWORD(v56);
LABEL_12:
            OUTLINED_FUNCTION_117_3();
            if (forto_adv_upto_r(v0, v46, v47, 7, 4, v59))
            {
              goto LABEL_13;
            }
          }
        }

LABEL_17:
        *(v2 + 8) = v60;
        *(v1 + 8) = v58;
        v6 = 0;
        goto LABEL_4;
      }
    }

LABEL_13:
    v48 = *(v0 + 104);
    if (v48)
    {
      v49 = OUTLINED_FUNCTION_77_9(v48);
    }

    else
    {
      v50 = OUTLINED_FUNCTION_87_7();
      v49 = vback(v50, v51);
    }

    switch(v49)
    {
      case 1:
      case 6:
        goto LABEL_17;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_12;
      case 4:
        goto LABEL_8;
      case 5:
        goto LABEL_10;
      case 7:
        goto LABEL_6;
      default:
        break;
    }
  }

  v6 = 94;
LABEL_4:
  vretproc(v0);
  return v6;
}

uint64_t is_monosyllable(uint64_t a1)
{
  OUTLINED_FUNCTION_25_22();
  v157 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_28(v3, v4, v5, v6, v7, v8, v9, v10, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v149, v150, v151);
  OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_175_2(v11, v12, v13, v14, v15, v16, v17, v18, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v148, v149, v150, v151, v152, v153, v154, v155);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_19_24(v19, v20, v21, v22, v23, v24, v25, v26, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v148, v149, v150, v151, v152, SHIDWORD(v152), v153, SWORD2(v153), SHIWORD(v153), v154, SWORD2(v154), SBYTE6(v154), SHIBYTE(v154), v155, v156))
  {
    v28 = OUTLINED_FUNCTION_63_10();
    OUTLINED_FUNCTION_130_3(v28, v29);
    v30 = &v148;
    OUTLINED_FUNCTION_36_14();
    OUTLINED_FUNCTION_131_3(v31, v32, &null_str_11);
    v33 = OUTLINED_FUNCTION_97_5();
    starttest(v33, v34);
    OUTLINED_FUNCTION_20_24();
    bspush_ca_boa();
    v35 = OUTLINED_FUNCTION_61_10();
    v37 = lpta_loadp_setscan_l(v35, v36, 1);
    v38 = 0;
    if (!v37)
    {
      v39 = OUTLINED_FUNCTION_37_14();
      bspush_ca_scan(v39, v40);
      v41 = 0;
LABEL_7:
      v42 = v41;
      v43 = OUTLINED_FUNCTION_42_12();
      bspush_ca_scan(v43, v44);
      v45 = v42;
LABEL_8:
      v46 = v45;
      v47 = OUTLINED_FUNCTION_40_13();
      bspush_ca_scan(v47, v48);
      v49 = v46;
LABEL_9:
      v50 = v49;
      v51 = OUTLINED_FUNCTION_45_12();
      bspush_ca_scan(v51, v52);
      OUTLINED_FUNCTION_86_7();
      v53 = OUTLINED_FUNCTION_15_29();
      if (test_ptr(v53, v54, v55))
      {
        v38 = v50;
      }

      else
      {
        v38 = 1;
      }
    }

    while (2)
    {
      v56 = v1[13];
      if (v56)
      {
        v57 = OUTLINED_FUNCTION_57_10(v56);
      }

      else
      {
        v57 = vback(v1, v38);
        v30 = 0;
      }

      v41 = v30;
      v45 = v30;
      v49 = v30;
      switch(v57)
      {
        case 1:
          vretproc(v1);
          return 0;
        case 2:
          bspop_boa(v1);
          break;
        case 3:
          OUTLINED_FUNCTION_26_22();
          v58 = test_string_s();
          goto LABEL_22;
        case 4:
        case 5:
          goto LABEL_7;
        case 6:
          v66 = OUTLINED_FUNCTION_48_12();
          v69 = testFldeq(v66, v67, v68, 2);
          v38 = v30;
          if (v69)
          {
            continue;
          }

          v58 = advance_tok(v1, v30, v70, v71);
LABEL_22:
          v41 = v30;
          v38 = v30;
          if (!v58)
          {
            goto LABEL_7;
          }

          continue;
        case 7:
          goto LABEL_8;
        case 8:
          v59 = OUTLINED_FUNCTION_48_12();
          v62 = testFldeq(v59, v60, v61, 1);
          v38 = v30;
          if (!v62)
          {
            v65 = advance_tok(v1, v30, v63, v64);
            v45 = v30;
            v38 = v30;
            if (!v65)
            {
              goto LABEL_8;
            }
          }

          continue;
        case 9:
          goto LABEL_9;
        case 10:
          v72 = OUTLINED_FUNCTION_48_12();
          v75 = testFldeq(v72, v73, v74, 2);
          v38 = v30;
          if (!v75)
          {
            v78 = advance_tok(v1, v30, v76, v77);
            v49 = v30;
            v38 = v30;
            if (!v78)
            {
              goto LABEL_9;
            }
          }

          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v1);
  return 94;
}

uint64_t mark_acc_phr_strength(uint64_t a1)
{
  OUTLINED_FUNCTION_34_15();
  v77 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_67_10(v2, v3, v4, v5, v6, v7, v8, v9, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, SHIDWORD(v62), v63, v64, v65, v66);
  OUTLINED_FUNCTION_70_10();
  bzero(v76, v10);
  v11 = setjmp(v76);
  if (!v11 && !OUTLINED_FUNCTION_65_10(v11, &v39, v12, v13, v14, v15, v16, v17, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75))
  {
    v19 = OUTLINED_FUNCTION_76_10();
    OUTLINED_FUNCTION_142_3(v19, v20);
    v21 = OUTLINED_FUNCTION_63_10();
    OUTLINED_FUNCTION_130_3(v21, v22);
    v23 = OUTLINED_FUNCTION_83_8();
    get_parm(v23, v24, v25, -4);
    fence_32(v1, 0, &null_str_11);
    OUTLINED_FUNCTION_166_2();
    if (v27)
    {
      v28 = OUTLINED_FUNCTION_82_8();
      lpta_rpta_loadp(v28, v29, v30);
      OUTLINED_FUNCTION_22_22();
      if (!mark_s())
      {
        goto LABEL_14;
      }

      v26 = HIWORD(v62);
    }

    if (*(v1 + 6346) != v26)
    {
      goto LABEL_12;
    }

    v31 = OUTLINED_FUNCTION_82_8();
    lpta_rpta_loadp(v31, v32, v33);
    OUTLINED_FUNCTION_22_22();
    if (mark_s())
    {
      v26 = HIWORD(v62);
LABEL_12:
      if (*(v1 + 6342) == v26)
      {
        v34 = OUTLINED_FUNCTION_82_8();
        lpta_rpta_loadp(v34, v35, v36);
        OUTLINED_FUNCTION_22_22();
        mark_s();
      }
    }

LABEL_14:
    vretproc(v1);
    return 0;
  }

  vretproc(v1);
  return 94;
}

uint64_t OUTLINED_FUNCTION_10_31()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_15_29()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_18_28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_19_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_35_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_36_14()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_65_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, __int16 a41, __int16 a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, a2, &a46, &a42, &a39, v47 - 248);
}

uint64_t OUTLINED_FUNCTION_66_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_67_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

double OUTLINED_FUNCTION_75_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_80_9(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_84_8(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void *OUTLINED_FUNCTION_91_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_32(v3, 1, a3);
}

uint64_t OUTLINED_FUNCTION_102_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  return lpta_loadp_setscan_r(a11, &a35, 4);
}

double OUTLINED_FUNCTION_106_3@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_120_3(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_129_3(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_130_3(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void *OUTLINED_FUNCTION_131_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_32(v3, 0, a3);
}

void OUTLINED_FUNCTION_142_3(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

BOOL OUTLINED_FUNCTION_157_2()
{

  return vretproc(v0);
}

uint64_t OUTLINED_FUNCTION_158_2(uint64_t a1, uint64_t a2)
{

  return ventproc(v2, a2, &STACK[0x217], &STACK[0x20E], &STACK[0x204], &STACK[0x220]);
}

void OUTLINED_FUNCTION_159_2(uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{

  starttest(a11, x8_0);
}

double OUTLINED_FUNCTION_160_2@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{

  *&result = savescptr(v60, a1, &a60).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_161_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, int a44, int a45, __int16 a46, __int16 a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53)
{

  return ventproc(v53, a2, &a51, &a47, &a44, &a53);
}

uint64_t OUTLINED_FUNCTION_162_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, int a53, __int16 a54, __int16 a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, char a61)
{

  return ventproc(v61, a2, &a59, &a55, &a52, &a61);
}

uint64_t OUTLINED_FUNCTION_163_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + 3264), a3, a4, a5, a6, a7, a8);
}

void OUTLINED_FUNCTION_175_2(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, a2);
}

void OUTLINED_FUNCTION_176_2(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  bzero(va, a2);
}

uint64_t OUTLINED_FUNCTION_177_2()
{

  return rpta_loadpn(v0, v0 + 3536);
}

void *fence_33(uint64_t a1, int a2, uint64_t a3)
{
  *(*(a1 + 192) + 8121) = a2;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  for (i = 0; a2 != i; ++i)
  {
    v8 = *(a3 + i);
    *(*(a1 + 248) + i) = v8;
    *(*(a1 + 264) + v8) = i;
  }

  return result;
}

uint64_t break_into_morphs(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  bzero(v17, 0xB8uLL);
  OUTLINED_FUNCTION_7_32();
  bzero(v21, v2);
  if (setjmp(v21) || (v3 = ventproc(a1, v17, v20, v19, v18, v21), v3))
  {
LABEL_3:
    v5 = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8_32(v3, v4, &null_str_12);
  fence_33(a1, 1, &_MergedGlobals_29);
  if (*(a1 + 4050) == 1)
  {
    v5 = 0;
    goto LABEL_4;
  }

  while (2)
  {
    starttest(a1, 3);
    if (!lpta_loadp_setscan_r(a1, a1 + 1640, 3))
    {
      if (!testFldeq(a1, 3u, 0, 1))
      {
        v5 = advance_tok(a1, v8, v9, v10);
        if (!v5)
        {
          *(a1 + 4094) = *(a1 + 2478);
          goto LABEL_4;
        }
      }

LABEL_10:
      v11 = *(a1 + 104);
      if (v11)
      {
        *(a1 + 104) = 0;
        v12 = v11;
      }

      else
      {
        v12 = vback(a1, 0);
      }

      v13 = v12 - 1;
      v5 = 0;
      switch(v13)
      {
        case 0:
          continue;
        case 1:
          goto LABEL_4;
        case 2:
          goto LABEL_14;
        case 3:
          goto LABEL_15;
        case 4:
          goto LABEL_16;
        case 5:
          goto LABEL_18;
        case 6:
          goto LABEL_20;
        default:
          goto LABEL_3;
      }

      goto LABEL_4;
    }

    break;
  }

LABEL_14:
  OUTLINED_FUNCTION_2_34();
  v5 = fren_words_dict_lookup();
  if (!v5)
  {
    goto LABEL_4;
  }

LABEL_15:
  OUTLINED_FUNCTION_2_34();
  v5 = fren_roots_dict_lookup();
  if (!v5)
  {
    goto LABEL_4;
  }

LABEL_16:
  if (strip_s(a1) || (OUTLINED_FUNCTION_2_34(), v5 = fren_roots_dict_lookup(), v5))
  {
LABEL_18:
    starttest(a1, 7);
    if (!strip_ment(a1))
    {
      starttest_l(a1, 7);
      OUTLINED_FUNCTION_2_34();
      v5 = fren_roots_dict_lookup();
      if (!v5)
      {
        goto LABEL_4;
      }
    }

LABEL_20:
    v14 = OUTLINED_FUNCTION_2_34();
    lpta_rpta_loadp(v14, v15, v16);
    if (!insert_2pt_s(a1, 3u, 1, &unk_28064B47D, 0))
    {
      v5 = 0;
      goto LABEL_4;
    }

    goto LABEL_10;
  }

LABEL_4:
  v6 = v5;
  vretproc(a1);
  return v6;
}

uint64_t fren_words_dict_lookup()
{
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_6_32(v1, v2, v3, v4, v5, v6, v7, v8, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87);
  OUTLINED_FUNCTION_7_32();
  bzero(v93, v9);
  v10 = setjmp(v93);
  if (!v10 && !OUTLINED_FUNCTION_5_32(v10, v11, v12, v13, v14, v15, v16, v17, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v89, SHIDWORD(v89), v90, SWORD2(v90), SHIWORD(v90), v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v92, v93[0]))
  {
    v20 = OUTLINED_FUNCTION_1_35();
    get_parm(v20, v21, v22, -6);
    OUTLINED_FUNCTION_3_34();
    v18 = 0;
    OUTLINED_FUNCTION_8_32(v23, v24, &null_str_12);
    OUTLINED_FUNCTION_1_35();
    if (!user_rootdict())
    {
      goto LABEL_4;
    }

    v25 = OUTLINED_FUNCTION_0_36();
    if (!fren_words(v25, v26, v27) || (v28 = OUTLINED_FUNCTION_0_36(), !fren_pnames(v28, v29, v30)) || (v31 = OUTLINED_FUNCTION_0_36(), !fren_homog_words(v31, v32, v33)) || *(v0 + 3738) == *(v0 + 3706) && (v34 = OUTLINED_FUNCTION_0_36(), !canfren_words(v34)))
    {
      OUTLINED_FUNCTION_0_36();
      insert_dict_root();
      v18 = 0;
      goto LABEL_4;
    }
  }

  v18 = 94;
LABEL_4:
  vretproc(v0);
  return v18;
}

uint64_t fren_roots_dict_lookup()
{
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_6_32(v1, v2, v3, v4, v5, v6, v7, v8, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
  OUTLINED_FUNCTION_7_32();
  bzero(v90, v9);
  v10 = setjmp(v90);
  if (!v10 && !OUTLINED_FUNCTION_5_32(v10, v11, v12, v13, v14, v15, v16, v17, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v86, SHIDWORD(v86), v87, SWORD2(v87), SHIWORD(v87), v88, SWORD2(v88), SBYTE6(v88), SHIBYTE(v88), v89, v90[0]))
  {
    v20 = OUTLINED_FUNCTION_1_35();
    get_parm(v20, v21, v22, -6);
    OUTLINED_FUNCTION_3_34();
    v18 = 0;
    OUTLINED_FUNCTION_8_32(v23, v24, &null_str_12);
    OUTLINED_FUNCTION_1_35();
    if (!user_rootdict())
    {
      goto LABEL_4;
    }

    v25 = OUTLINED_FUNCTION_0_36();
    if (!fren_roots(v25, v26, v27) || (v28 = OUTLINED_FUNCTION_0_36(), !fren_homog_roots(v28, v29, v30)) || *(v0 + 3738) == *(v0 + 3706) && (v31 = OUTLINED_FUNCTION_0_36(), !canfren_roots(v31)))
    {
      OUTLINED_FUNCTION_0_36();
      insert_dict_root();
      v18 = 0;
      goto LABEL_4;
    }
  }

  v18 = 94;
LABEL_4:
  vretproc(v0);
  return v18;
}

uint64_t insert_dict_root()
{
  OUTLINED_FUNCTION_4_33();
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  bzero(v13, 0xB8uLL);
  OUTLINED_FUNCTION_7_32();
  bzero(v24, v1);
  if (!setjmp(v24) && !ventproc(v0, v13, v23, v22, v21, v24))
  {
    v4 = OUTLINED_FUNCTION_1_35();
    get_parm(v4, v5, v6, -6);
    OUTLINED_FUNCTION_3_34();
    LOBYTE(v16) = 0;
    LODWORD(v14) = -65533;
    OUTLINED_FUNCTION_8_32(v7, v8, &null_str_12);
    v9 = OUTLINED_FUNCTION_1_35();
    lpta_rpta_loadp(v9, v10, v11);
    settvar_s();
    insert_2ptv();
    if (!v12)
    {
      *(v0 + 4094) = 1;
      v2 = 0;
      goto LABEL_4;
    }

    if (*(v0 + 104))
    {
      *(v0 + 104) = 0;
    }

    else
    {
      vback(v0, 0);
    }
  }

  v2 = 94;
LABEL_4:
  vretproc(v0);
  return v2;
}

void OUTLINED_FUNCTION_3_34()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_5_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_6_32(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void *OUTLINED_FUNCTION_8_32(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_33(v3, 0, a3);
}

void normalize_fren_letters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_30_19();
  OUTLINED_FUNCTION_17_30();
  v163 = *MEMORY[0x277D85DE8];
  v158[0] = 0;
  v158[1] = 0;
  v157[0] = 0;
  v157[1] = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v153[0] = 0;
  v153[1] = 0;
  v152[0] = 0;
  v152[1] = 0;
  v151[0] = 0;
  v151[1] = 0;
  OUTLINED_FUNCTION_19_25();
  bzero(v150, v4);
  OUTLINED_FUNCTION_18_29();
  bzero(v162, v5);
  if (!setjmp(v162) && !ventproc(v3, v150, v161, v160, v159, v162))
  {
    v6 = OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_28_20(v6, v7);
    v8 = OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_25_23(v8, v9);
    WORD2(v156) = 0;
    LODWORD(v156) = 0;
    LODWORD(v154) = -65535;
    v10 = OUTLINED_FUNCTION_7_33();
    push_ptr_init(v10, v11);
    v12 = OUTLINED_FUNCTION_21_24();
    push_ptr_init(v12, v13);
    push_ptr_init(v3, v151);
    fence_34(v3);
    startloop(v3, 1);
    v14 = OUTLINED_FUNCTION_7_33();
    copyvar(v14, v15, v158);
    copyvar(v3, v151, v157);
    while (1)
    {
LABEL_5:
      v16 = OUTLINED_FUNCTION_7_33();
      if (forall_to_test(v16, v17, v151))
      {
LABEL_60:
        while (2)
        {
          v121 = *(v3 + 104);
          if (v121)
          {
            v122 = OUTLINED_FUNCTION_20_25(v121);
          }

          else
          {
            v122 = vback(v3, 0);
          }

          switch(v122)
          {
            case 2:
              goto LABEL_10;
            case 3:
              if (forto_adv_r(v3, 1, 2, 42, 1, v153))
              {
                continue;
              }

              goto LABEL_3;
            case 4:
              goto LABEL_9;
            case 5:
              goto LABEL_12;
            case 6:
              goto LABEL_52;
            case 7:
            case 10:
            case 12:
            case 21:
            case 27:
              goto LABEL_82;
            case 8:
            case 41:
              goto LABEL_86;
            case 9:
              goto LABEL_5;
            case 11:
              goto LABEL_13;
            case 13:
              goto LABEL_14;
            case 14:
            case 16:
            case 17:
              v130 = OUTLINED_FUNCTION_5_33();
              bspush_ca_scan(v130, v131);
              goto LABEL_74;
            case 15:
              goto LABEL_76;
            case 18:
LABEL_74:
              OUTLINED_FUNCTION_0_37();
              goto LABEL_75;
            case 19:
              goto LABEL_16;
            case 20:
              goto LABEL_54;
            case 22:
              goto LABEL_19;
            case 23:
              goto LABEL_20;
            case 24:
              OUTLINED_FUNCTION_0_37();
              goto LABEL_78;
            case 25:
              goto LABEL_79;
            case 26:
              goto LABEL_23;
            case 28:
              goto LABEL_26;
            case 29:
              goto LABEL_27;
            case 30:
            case 32:
            case 33:
              v126 = OUTLINED_FUNCTION_5_33();
              bspush_ca_scan(v126, v127);
              goto LABEL_70;
            case 31:
              goto LABEL_72;
            case 34:
LABEL_70:
              OUTLINED_FUNCTION_0_37();
              goto LABEL_71;
            case 35:
              goto LABEL_28;
            case 36:
              OUTLINED_FUNCTION_0_37();
              goto LABEL_67;
            case 37:
              goto LABEL_68;
            case 38:
              goto LABEL_31;
            case 39:
              goto LABEL_34;
            case 40:
              goto LABEL_84;
            case 42:
              goto LABEL_6;
            default:
              goto LABEL_3;
          }
        }
      }

LABEL_6:
      bspush_ca(v3);
      v18 = OUTLINED_FUNCTION_7_33();
      if (lpta_loadp_setscan_r(v18, v19, 1))
      {
        goto LABEL_60;
      }

      v20 = OUTLINED_FUNCTION_8_33();
      if (testFldeq(v20, v21, 3, 1) || advance_tok(v3, v22, v23, v24))
      {
        goto LABEL_60;
      }

LABEL_9:
      savescptr(v3, 4, v152);
      v25 = OUTLINED_FUNCTION_22_23();
      if (savetok(v25, v26))
      {
        goto LABEL_60;
      }

LABEL_10:
      v27 = OUTLINED_FUNCTION_7_33();
      if (lpta_loadp_setscan_r(v27, v28, 1) || (OUTLINED_FUNCTION_1_36(), test_string_s()))
      {
LABEL_12:
        starttest(v3, 11);
        if (lpta_loadp_setscan_r(v3, v158, 1))
        {
LABEL_13:
          starttest(v3, 13);
          v29 = OUTLINED_FUNCTION_7_33();
          if (!lpta_loadp_setscan_r(v29, v30, 1))
          {
            bspush_ca_scan(v3, 14);
            OUTLINED_FUNCTION_1_36();
LABEL_75:
            if (test_string_s())
            {
              goto LABEL_60;
            }

LABEL_76:
            v132 = OUTLINED_FUNCTION_7_33();
            lpta_rpta_loadp(v132, v133, v152);
            v108 = OUTLINED_FUNCTION_1_36();
            v111 = &unk_28064B488;
            goto LABEL_80;
          }

LABEL_14:
          v31 = OUTLINED_FUNCTION_7_33();
          if (!lpta_loadp_setscan_r(v31, v32, 1))
          {
            OUTLINED_FUNCTION_1_36();
            if (!test_string_s())
            {
              starttest(v3, 20);
              v104 = OUTLINED_FUNCTION_21_24();
              if (lpta_loadp_setscan_r(v104, v105, 1))
              {
LABEL_54:
                v106 = OUTLINED_FUNCTION_7_33();
                lpta_rpta_loadp(v106, v107, v152);
                v108 = OUTLINED_FUNCTION_1_36();
                v111 = &unk_28064B48A;
              }

              else
              {
                v112 = OUTLINED_FUNCTION_8_33();
                if (testFldeq(v112, v113, 4, 1) || advance_tok(v3, v114, v115, v116))
                {
                  goto LABEL_60;
                }

                v117 = OUTLINED_FUNCTION_7_33();
                lpta_rpta_loadp(v117, v118, v152);
                v108 = OUTLINED_FUNCTION_8_33();
                v110 = 2;
                v111 = &unk_28064B4C1;
              }

LABEL_80:
              v125 = 0;
LABEL_81:
              if (insert_2pt_s(v108, v109, v110, v111, v125))
              {
                goto LABEL_60;
              }

              goto LABEL_82;
            }
          }

LABEL_16:
          v33 = OUTLINED_FUNCTION_7_33();
          if (!lpta_loadp_setscan_r(v33, v34, 1))
          {
            OUTLINED_FUNCTION_1_36();
            if (!test_string_s())
            {
              v35 = OUTLINED_FUNCTION_7_33();
              lpta_rpta_loadp(v35, v36, v152);
              v37 = OUTLINED_FUNCTION_1_36();
              if (!insert_2pt_s(v37, v38, v39, &unk_28064B48C, 0))
              {
                goto LABEL_82;
              }
            }
          }

LABEL_19:
          starttest(v3, 23);
          v40 = OUTLINED_FUNCTION_7_33();
          if (!lpta_loadp_setscan_r(v40, v41, 1))
          {
            bspush_ca_scan(v3, 24);
            OUTLINED_FUNCTION_1_36();
LABEL_78:
            if (test_string_s())
            {
              goto LABEL_60;
            }

LABEL_79:
            v134 = OUTLINED_FUNCTION_7_33();
            lpta_rpta_loadp(v134, v135, v152);
            v108 = OUTLINED_FUNCTION_1_36();
            v111 = &unk_28064B48F;
            goto LABEL_80;
          }

LABEL_20:
          v42 = OUTLINED_FUNCTION_7_33();
          if (!lpta_loadp_setscan_r(v42, v43, 1))
          {
            OUTLINED_FUNCTION_1_36();
            if (!test_string_s())
            {
              v44 = OUTLINED_FUNCTION_7_33();
              lpta_rpta_loadp(v44, v45, v152);
              v46 = OUTLINED_FUNCTION_1_36();
              if (!insert_2pt_s(v46, v47, v48, &unk_28064B48F, 0))
              {
                if (*(v3 + 3738) == *(v3 + 3706))
                {
                  v119 = OUTLINED_FUNCTION_7_33();
                  lpta_rpta_loadp(v119, v120, v152);
                  OUTLINED_FUNCTION_8_33();
                  mark_s();
                }

                goto LABEL_82;
              }
            }
          }

LABEL_23:
          v49 = OUTLINED_FUNCTION_7_33();
          if (!lpta_loadp_setscan_r(v49, v50, 1))
          {
            OUTLINED_FUNCTION_1_36();
            if (!test_string_s())
            {
              v51 = OUTLINED_FUNCTION_7_33();
              lpta_rpta_loadp(v51, v52, v152);
              v53 = OUTLINED_FUNCTION_1_36();
              if (!insert_2pt_s(v53, v54, v55, &unk_28064B492, v56))
              {
                goto LABEL_82;
              }
            }
          }

LABEL_26:
          starttest(v3, 29);
          v57 = OUTLINED_FUNCTION_7_33();
          if (!lpta_loadp_setscan_r(v57, v58, 1))
          {
            bspush_ca_scan(v3, 30);
            OUTLINED_FUNCTION_1_36();
LABEL_71:
            if (test_string_s())
            {
              goto LABEL_60;
            }

LABEL_72:
            v128 = OUTLINED_FUNCTION_7_33();
            lpta_rpta_loadp(v128, v129, v152);
            v108 = OUTLINED_FUNCTION_1_36();
            v111 = &unk_28064B498;
            goto LABEL_81;
          }

LABEL_27:
          starttest(v3, 35);
          v59 = OUTLINED_FUNCTION_7_33();
          if (!lpta_loadp_setscan_r(v59, v60, 1))
          {
            bspush_ca_scan(v3, 36);
            OUTLINED_FUNCTION_1_36();
LABEL_67:
            if (test_string_s())
            {
              goto LABEL_60;
            }

LABEL_68:
            v123 = OUTLINED_FUNCTION_7_33();
            lpta_rpta_loadp(v123, v124, v152);
            v108 = OUTLINED_FUNCTION_1_36();
            v111 = &unk_28064B49B;
            goto LABEL_81;
          }

LABEL_28:
          v61 = OUTLINED_FUNCTION_7_33();
          if (lpta_loadp_setscan_r(v61, v62, 1) || (OUTLINED_FUNCTION_1_36(), test_string_s()) || (v63 = OUTLINED_FUNCTION_7_33(), lpta_rpta_loadp(v63, v64, v152), v65 = OUTLINED_FUNCTION_1_36(), insert_2pt_s(v65, v66, v67, &unk_28064B481, v68)))
          {
LABEL_31:
            v69 = OUTLINED_FUNCTION_7_33();
            if (lpta_loadp_setscan_r(v69, v70, 1) || (OUTLINED_FUNCTION_1_36(), test_string_s()) || (v71 = OUTLINED_FUNCTION_7_33(), lpta_rpta_loadp(v71, v72, v152), v73 = OUTLINED_FUNCTION_8_33(), insert_2pt_s(v73, v74, 2, &unk_28064B4C3, v75)))
            {
LABEL_34:
              v76 = OUTLINED_FUNCTION_7_33();
              if (!lpta_loadp_setscan_r(v76, v77, 1))
              {
                OUTLINED_FUNCTION_1_36();
                if (!test_string_s())
                {
                  v78 = OUTLINED_FUNCTION_7_33();
                  lpta_rpta_loadp(v78, v79, v152);
                  v80 = OUTLINED_FUNCTION_1_36();
                  v84 = &unk_28064B49F;
LABEL_37:
                  insert_2pt_s(v80, v81, v82, v84, v83);
                }
              }
            }
          }
        }

        else
        {
          v85 = OUTLINED_FUNCTION_8_33();
          if (testFldeq(v85, v86, 0, 1))
          {
            goto LABEL_60;
          }

          v87 = OUTLINED_FUNCTION_1_36();
          if (testFldeq(v87, v88, v89, 2))
          {
            goto LABEL_60;
          }

          v93 = advance_tok(v3, v90, v91, v92);
          if (v93)
          {
            goto LABEL_60;
          }

          *(v3 + 136) = 1;
          if (OUTLINED_FUNCTION_14_31(v93, v94, v95))
          {
            goto LABEL_60;
          }

          lpta_loadpn(v3, v3 + 1400);
          rpta_loadpn(v3, v158);
          rpta_ctxtl();
          if (!compare_ptas(v3) && !testeq(v3))
          {
            v96 = OUTLINED_FUNCTION_7_33();
            lpta_rpta_loadp(v96, v97, v152);
            v80 = OUTLINED_FUNCTION_1_36();
            v84 = &unk_28064B482;
            v83 = 0;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v98 = OUTLINED_FUNCTION_21_24();
        if (lpta_loadp_setscan_r(v98, v99, 1) || (OUTLINED_FUNCTION_1_36(), v100 = test_string_s(), v100) || (*(v3 + 136) = 1, OUTLINED_FUNCTION_14_31(v100, v101, v102)))
        {
LABEL_52:
          v103 = OUTLINED_FUNCTION_23_23();
          delete_inp_from_right(v103);
          goto LABEL_86;
        }
      }

LABEL_82:
      WORD1(v154) = 1;
      v136 = OUTLINED_FUNCTION_22_23();
      npush_v(v136, v137, v138, v139, v140, v141, v142, v143);
      ncompare_s(v3, 2u);
      if (!testeq(v3))
      {
        v144 = OUTLINED_FUNCTION_7_33();
        lpta_rpta_loadp(v144, v145, v152);
        OUTLINED_FUNCTION_1_36();
        mark_s();
      }

LABEL_84:
      v146 = OUTLINED_FUNCTION_23_23();
      lpta_loadpn(v146, v147);
      v148 = OUTLINED_FUNCTION_11_32();
      rpta_loadpn(v148, v149);
      if (!compare_ptas(v3) && !testeq(v3))
      {
        break;
      }

LABEL_86:
      forall_cont_from();
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_31_18();
}

void fren_acrotest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_30_19();
  OUTLINED_FUNCTION_17_30();
  v166 = *MEMORY[0x277D85DE8];
  v153 = 0;
  v154 = 0;
  v151 = 0;
  v152 = 0;
  OUTLINED_FUNCTION_19_25();
  bzero(v150, v4);
  OUTLINED_FUNCTION_18_29();
  bzero(v165, v5);
  v6 = setjmp(v165);
  if (v6)
  {
    goto LABEL_3;
  }

  if (OUTLINED_FUNCTION_27_21(v6, v150, v7, v8, v9, v10, v11, v12, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150[0], v150[1], v150[2], v150[3], v150[4], v150[5], v150[6], v150[7], v150[8], v150[9], v150[10], v150[11], v150[12], v150[13], v150[14], v150[15], v150[16], v150[17], v150[18], v150[19], v150[20], v150[21], v150[22], v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165[0]))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_16_30();
  OUTLINED_FUNCTION_28_20(v13, v14);
  v15 = OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_25_23(v15, v16);
  fence_34(v3);
  v17 = OUTLINED_FUNCTION_16_30();
  lpta_rpta_loadp(v17, v18, &v151);
  v19 = OUTLINED_FUNCTION_13_31();
  if (!setd_lookup(v19, v20, 57))
  {
    goto LABEL_3;
  }

  v21 = 0;
  while (2)
  {
    v22 = OUTLINED_FUNCTION_11_32();
    lpta_rpta_loadp(v22, v23, &v151);
    v24 = OUTLINED_FUNCTION_13_31();
    if (!setd_lookup(v24, v25, 56))
    {
      break;
    }

LABEL_7:
    starttest(v3, 4);
    v26 = OUTLINED_FUNCTION_4_34();
    v29 = lpta_loadp_setscan_r(v26, v27, v28);
    v30 = v21;
    if (!v29)
    {
LABEL_30:
      LODWORD(v21) = v30;
      v100 = OUTLINED_FUNCTION_9_32();
      if (testFldeq(v100, v101, v102, 2) || advance_tok(v3, v103, v104, v105))
      {
        goto LABEL_34;
      }

      v106 = v3;
      v107 = 5;
      goto LABEL_33;
    }

LABEL_8:
    starttest(v3, 6);
    v31 = OUTLINED_FUNCTION_4_34();
    if (lpta_loadp_setscan_r(v31, v32, v33))
    {
LABEL_9:
      starttest(v3, 8);
      v34 = OUTLINED_FUNCTION_4_34();
      if (!lpta_loadp_setscan_r(v34, v35, v36) && !advance_tok(v3, v37, v38, v39) && !advance_tok(v3, v40, v41, v42) && !advance_tok(v3, v43, v44, v45) && !advance_tok(v3, v46, v47, v48) && !advance_tok(v3, v49, v50, v51))
      {
        v55 = advance_tok(v3, v52, v53, v54);
        v58 = v21;
        if (!v55)
        {
LABEL_50:
          LODWORD(v21) = v58;
          if (!advance_tok(v3, v58, v56, v57))
          {
            bspush_ca_scan(v3, 9);
            *(v3 + 136) = 1;
            if (!OUTLINED_FUNCTION_14_31(v130, v131, v132))
            {
              break;
            }
          }

          goto LABEL_34;
        }
      }

LABEL_16:
      v59 = OUTLINED_FUNCTION_23_23();
      starttest(v59, v60);
      v61 = OUTLINED_FUNCTION_4_34();
      v64 = lpta_loadp_setscan_r(v61, v62, v63);
      LODWORD(v56) = v21;
      if (v64)
      {
LABEL_17:
        v65 = OUTLINED_FUNCTION_16_30();
        starttest(v65, v66);
        v67 = OUTLINED_FUNCTION_4_34();
        if (lpta_loadp_setscan_r(v67, v68, v69))
        {
LABEL_18:
          starttest(v3, 18);
          v70 = OUTLINED_FUNCTION_21_24();
          if (lpta_loadp_setscan_l(v70, v71, 1))
          {
            break;
          }

          v72 = OUTLINED_FUNCTION_9_32();
          if (testFldeq(v72, v73, v74, 2) || advance_tok(v3, v75, v76, v77))
          {
            goto LABEL_34;
          }

          bspush_ca_boa();
          v78 = OUTLINED_FUNCTION_21_24();
          fren_legal_word_final_cons(v78, v79, v80, v81);
        }

        else
        {
          bspush_ca_scan_boa();
          v97 = OUTLINED_FUNCTION_9_32();
          v82 = testFldeq(v97, v98, v99, 1);
        }

        if (!v82)
        {
          LODWORD(v21) = 1;
        }

        goto LABEL_34;
      }

LABEL_47:
      LODWORD(v21) = v56;
      bspush_ca_scan(v3, 12);
      OUTLINED_FUNCTION_13_31();
      v129 = test_string_s();
      LODWORD(v57) = v21;
      if (v129)
      {
        goto LABEL_34;
      }

LABEL_48:
      LODWORD(v21) = v57;
      v106 = v3;
      v107 = 14;
LABEL_33:
      bspush_ca_scan(v106, v107);
      *(v3 + 136) = 1;
      if (!OUTLINED_FUNCTION_14_31(v108, v109, v110))
      {
        break;
      }

      goto LABEL_34;
    }

    v83 = OUTLINED_FUNCTION_9_32();
    if (testFldeq(v83, v84, v85, 1))
    {
      goto LABEL_34;
    }

    if (advance_tok(v3, v86, v87, v88))
    {
      goto LABEL_34;
    }

    v89 = OUTLINED_FUNCTION_9_32();
    if (testFldeq(v89, v90, v91, 1))
    {
      goto LABEL_34;
    }

    v95 = advance_tok(v3, v92, v93, v94);
    v96 = v21;
    if (v95)
    {
      goto LABEL_34;
    }

LABEL_54:
    LODWORD(v21) = v96;
    v133 = OUTLINED_FUNCTION_9_32();
    if (!testFldeq(v133, v134, v135, 1) && !advance_tok(v3, v136, v137, v138))
    {
      v106 = v3;
      v107 = 7;
      goto LABEL_33;
    }

LABEL_34:
    v111 = v21;
LABEL_35:
    v112 = *(v3 + 104);
    if (v112)
    {
      v113 = OUTLINED_FUNCTION_20_25(v112);
      v21 = v114;
    }

    else
    {
      v113 = vback(v3, v111);
      v21 = 0;
    }

    v56 = v21;
    v57 = v21;
    switch(v113)
    {
      case 1:
        continue;
      case 3:
        goto LABEL_7;
      case 4:
        goto LABEL_8;
      case 5:
        v30 = v21;
        goto LABEL_30;
      case 6:
        goto LABEL_9;
      case 7:
        v96 = v21;
        goto LABEL_54;
      case 8:
        goto LABEL_16;
      case 9:
        v58 = v21;
        goto LABEL_50;
      case 10:
        goto LABEL_17;
      case 11:
        goto LABEL_47;
      case 12:
        v115 = advance_tok(v3, v114, v21, v21);
        LODWORD(v56) = v21;
        v111 = v21;
        if (!v115)
        {
          goto LABEL_47;
        }

        goto LABEL_35;
      case 13:
        goto LABEL_48;
      case 14:
        v116 = advance_tok(v3, v114, v21, v21);
        LODWORD(v57) = v21;
        v111 = v21;
        if (!v116)
        {
          goto LABEL_48;
        }

        goto LABEL_35;
      case 15:
        goto LABEL_18;
      case 16:
        bspop_boa(v3);
        v120 = advance_tok(v3, v117, v118, v119);
        v111 = v21;
        if (!v120)
        {
          bspush_ca_boa();
          v121 = OUTLINED_FUNCTION_11_32();
          if (fren_legal_initial_cons(v121, v122, v123, v124, v125, v126, v127, v128))
          {
            v111 = v21;
          }

          else
          {
            v111 = 1;
          }
        }

        goto LABEL_35;
      case 17:
      case 19:
        bspop_boa(v3);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_31_18();
}

uint64_t fren_legal_initial_cons(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v158 = *MEMORY[0x277D85DE8];
  v152 = 0;
  v153 = 0;
  v150[0] = 0;
  v150[1] = 0;
  v151 = 0;
  v148[0] = 0;
  v148[1] = 0;
  v149 = 0;
  OUTLINED_FUNCTION_15_30(a1, a2, a3, a4, a5, a6, a7, a8, v147[0], v147[1], v147[2], v147[3], v147[4], v147[5], v147[6], v147[7], v147[8], v147[9], v147[10], v147[11], v147[12], v147[13], v147[14], v147[15], v147[16], v147[17], v147[18], v147[19], v147[20], v147[21], v147[22], v147[23], v147[24]);
  OUTLINED_FUNCTION_18_29();
  bzero(v157, v9);
  if (setjmp(v157) || ventproc(a1, v147, v156, v155, v154, v157))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_25_23(v11, v12);
  WORD2(v151) = 0;
  LODWORD(v151) = 0;
  LODWORD(v150[0]) = -65535;
  WORD2(v149) = 0;
  LODWORD(v149) = 0;
  LODWORD(v148[0]) = -65535;
  v13 = OUTLINED_FUNCTION_12_32();
  push_ptr_init(v13, v14);
  OUTLINED_FUNCTION_24_23();
  v15 = OUTLINED_FUNCTION_4_34();
  v18 = 0;
  if (lpta_loadp_setscan_r(v15, v16, v17))
  {
LABEL_5:
    v19 = OUTLINED_FUNCTION_5_33();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_10_32();
    if (lpta_loadp_setscan_r(v21, v22, v23) || (OUTLINED_FUNCTION_0_37(), test_string_s()))
    {
LABEL_7:
      v24 = OUTLINED_FUNCTION_10_32();
      if (!lpta_loadp_setscan_r(v24, v25, v26))
      {
        OUTLINED_FUNCTION_0_37();
        if (!test_string_s())
        {
          goto LABEL_3;
        }
      }

LABEL_9:
      v27 = OUTLINED_FUNCTION_5_33();
      starttest(v27, v28);
      v29 = OUTLINED_FUNCTION_10_32();
      if (lpta_loadp_setscan_r(v29, v30, v31))
      {
LABEL_10:
        v32 = OUTLINED_FUNCTION_5_33();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_10_32();
        LODWORD(v37) = v18;
        if (!lpta_loadp_setscan_r(v34, v35, v36))
        {
LABEL_11:
          while (1)
          {
            v38 = OUTLINED_FUNCTION_2_35();
            if (testFldeq(v38, v39, v40, 2) || advance_tok(a1, v41, v42, v43))
            {
              break;
            }

            v44 = OUTLINED_FUNCTION_22_23();
            bspush_ca_scan(v44, v45);
          }

          goto LABEL_26;
        }

LABEL_3:
        vretproc(a1);
        return 94;
      }

      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
      v46 = OUTLINED_FUNCTION_2_35();
      v49 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
      v46 = OUTLINED_FUNCTION_6_33();
      v49 = 5;
    }

    if (testFldeq(v46, v47, v48, v49))
    {
      LODWORD(v37) = v18;
    }

    else
    {
      LODWORD(v37) = 1;
    }
  }

  else
  {
    v50 = OUTLINED_FUNCTION_2_35();
    if (!testFldeq(v50, v51, v52, 2) && !advance_tok(a1, v53, v54, v55) && !savetok(a1, v150) && !advance_tok(a1, v56, v57, v58) && !savetok(a1, v148) && !testeq_tvars(a1, v150, v148))
    {
      goto LABEL_3;
    }

    LODWORD(v37) = 0;
  }

LABEL_26:
  LODWORD(v59) = v37;
  while (2)
  {
    v60 = *(a1 + 104);
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_20_25(v60);
      v37 = v59;
    }

    else
    {
      v61 = vback(a1, v59);
      v37 = 0;
    }

    switch(v61)
    {
      case 1:
        v18 = v37;
        goto LABEL_5;
      case 2:
      case 23:
        goto LABEL_85;
      case 3:
        v18 = v37;
        goto LABEL_7;
      case 4:
        bspop_boa(a1);
        v136 = advance_tok(a1, v133, v134, v135);
        LODWORD(v59) = v37;
        if (!v136)
        {
          goto LABEL_3;
        }

        continue;
      case 5:
        v18 = v37;
        goto LABEL_9;
      case 6:
        v18 = v37;
        goto LABEL_10;
      case 7:
        bspop_boa(a1);
        v123 = advance_tok(a1, v120, v121, v122);
        LODWORD(v59) = v37;
        if (v123)
        {
          continue;
        }

        v124 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v124, v125);
        v126 = OUTLINED_FUNCTION_2_35();
        v129 = 1;
        goto LABEL_55;
      case 8:
        v126 = OUTLINED_FUNCTION_6_33();
        v129 = 30;
LABEL_55:
        v130 = testFldeq(v126, v127, v128, v129);
        v59 = v37;
        if (!v130)
        {
          goto LABEL_56;
        }

        continue;
      case 9:
LABEL_56:
        v131 = advance_tok(a1, v59, v62, v63);
        goto LABEL_82;
      case 11:
        v70 = OUTLINED_FUNCTION_29_20();
        savescptr(v70, v71, v72);
        v73 = OUTLINED_FUNCTION_5_33();
        starttest(v73, v74);
        v75 = OUTLINED_FUNCTION_10_32();
        if (lpta_loadp_setscan_r(v75, v76, v77))
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_5_33();
        bspush_ca_scan_boa();
        goto LABEL_73;
      case 12:
        goto LABEL_11;
      case 13:
LABEL_35:
        v78 = OUTLINED_FUNCTION_5_33();
        starttest(v78, v79);
        v80 = OUTLINED_FUNCTION_10_32();
        if (lpta_loadp_setscan_r(v80, v81, v82))
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_0_37();
        if (test_string_s())
        {
          goto LABEL_37;
        }

        goto LABEL_58;
      case 14:
      case 16:
      case 17:
      case 18:
      case 19:
        v116 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v116, v117);
        goto LABEL_73;
      case 15:
        goto LABEL_74;
      case 20:
LABEL_73:
        OUTLINED_FUNCTION_0_37();
        v142 = test_string_s();
        LODWORD(v59) = v37;
        if (v142)
        {
          continue;
        }

LABEL_74:
        bspush_nboa(a1);
        OUTLINED_FUNCTION_5_33();
        bspush_ca_scan_boa();
        goto LABEL_77;
      case 21:
      case 34:
      case 37:
      case 39:
      case 54:
      case 57:
        goto LABEL_77;
      case 22:
      case 26:
      case 38:
      case 53:
      case 58:
        goto LABEL_79;
      case 24:
LABEL_37:
        v83 = OUTLINED_FUNCTION_5_33();
        starttest(v83, v84);
        v85 = OUTLINED_FUNCTION_10_32();
        if (lpta_loadp_setscan_r(v85, v86, v87))
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_0_37();
        if (test_string_s())
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_5_33();
        bspush_ca_scan_boa();
        v143 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v143, v144);
        OUTLINED_FUNCTION_0_37();
        v145 = test_string_s();
        LODWORD(v59) = v37;
        if (!v145)
        {
          goto LABEL_77;
        }

        continue;
      case 25:
      case 27:
      case 29:
      case 30:
      case 31:
      case 33:
      case 36:
        v64 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v64, v65);
        goto LABEL_77;
      case 28:
      case 52:
        v66 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v66, v67);
        goto LABEL_77;
      case 32:
        v118 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v118, v119);
        OUTLINED_FUNCTION_3_35();
        goto LABEL_78;
      case 35:
LABEL_39:
        v88 = OUTLINED_FUNCTION_5_33();
        starttest(v88, v89);
        v90 = OUTLINED_FUNCTION_10_32();
        if (lpta_loadp_setscan_r(v90, v91, v92))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_5_33();
        bspush_ca_scan_boa();
        goto LABEL_61;
      case 40:
LABEL_40:
        v93 = OUTLINED_FUNCTION_5_33();
        starttest(v93, v94);
        v95 = OUTLINED_FUNCTION_10_32();
        if (lpta_loadp_setscan_r(v95, v96, v97))
        {
          goto LABEL_41;
        }

        goto LABEL_49;
      case 41:
LABEL_61:
        OUTLINED_FUNCTION_0_37();
        v137 = test_string_s();
        LODWORD(v59) = v37;
        if (!v137)
        {
          goto LABEL_62;
        }

        continue;
      case 42:
LABEL_62:
        bspush_nboa(a1);
        OUTLINED_FUNCTION_13_31();
        v61 = test_string_s();
        v59 = v37;
        if (v61)
        {
          continue;
        }

        *(a1 + 136) = 1;
        goto LABEL_81;
      case 43:
LABEL_41:
        v98 = OUTLINED_FUNCTION_5_33();
        starttest(v98, v99);
        v100 = OUTLINED_FUNCTION_10_32();
        if (lpta_loadp_setscan_r(v100, v101, v102))
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_0_37();
        if (test_string_s())
        {
          goto LABEL_43;
        }

        v139 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v139, v140);
        OUTLINED_FUNCTION_0_37();
        v141 = test_string_s();
        LODWORD(v59) = v37;
        if (!v141)
        {
          goto LABEL_58;
        }

        continue;
      case 44:
        OUTLINED_FUNCTION_5_33();
        bspush_ca_scan_boa();
        goto LABEL_65;
      case 45:
      case 55:
      case 63:
        goto LABEL_80;
      case 46:
      case 48:
        v68 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v68, v69);
        goto LABEL_65;
      case 47:
        goto LABEL_66;
      case 49:
LABEL_65:
        OUTLINED_FUNCTION_0_37();
        v138 = test_string_s();
        LODWORD(v59) = v37;
        if (v138)
        {
          continue;
        }

LABEL_66:
        bspush_nboa(a1);
        goto LABEL_67;
      case 50:
LABEL_43:
        v103 = OUTLINED_FUNCTION_5_33();
        starttest(v103, v104);
        v105 = OUTLINED_FUNCTION_10_32();
        if (lpta_loadp_setscan_r(v105, v106, v107))
        {
          goto LABEL_3;
        }

        v108 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v108, v109);
        goto LABEL_45;
      case 51:
LABEL_49:
        v114 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v114, v115);
        OUTLINED_FUNCTION_3_35();
        goto LABEL_68;
      case 56:
        OUTLINED_FUNCTION_0_37();
        v132 = test_string_s();
        LODWORD(v59) = v37;
        if (v132)
        {
          continue;
        }

LABEL_58:
        OUTLINED_FUNCTION_5_33();
        bspush_ca_scan_boa();
LABEL_77:
        OUTLINED_FUNCTION_0_37();
LABEL_78:
        v146 = test_string_s();
        LODWORD(v59) = v37;
        if (v146)
        {
          continue;
        }

LABEL_79:
        bspush_nboa(a1);
        goto LABEL_80;
      case 60:
LABEL_45:
        OUTLINED_FUNCTION_0_37();
        v110 = test_string_s();
        LODWORD(v59) = v37;
        if (!v110)
        {
          goto LABEL_46;
        }

        continue;
      case 61:
LABEL_46:
        OUTLINED_FUNCTION_0_37();
        v111 = test_string_s();
        LODWORD(v59) = v37;
        if (v111)
        {
          continue;
        }

        v112 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v112, v113);
LABEL_67:
        OUTLINED_FUNCTION_0_37();
LABEL_68:
        v61 = test_string_s();
        v59 = v37;
        if (v61)
        {
          continue;
        }

LABEL_80:
        *(a1 + 136) = 1;
LABEL_81:
        v131 = OUTLINED_FUNCTION_14_31(v61, v59, v62);
LABEL_82:
        LODWORD(v59) = v37;
        if (v131)
        {
          continue;
        }

LABEL_85:
        vretproc(a1);
        result = 0;
        break;
      case 62:
        goto LABEL_67;
      default:
        goto LABEL_3;
    }

    return result;
  }
}

void fren_legal_word_final_cons(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_30_19();
  v5 = v4;
  v104 = *MEMORY[0x277D85DE8];
  v99[0] = 0;
  v99[1] = 0;
  OUTLINED_FUNCTION_19_25();
  bzero(v98, v6);
  OUTLINED_FUNCTION_18_29();
  bzero(v103, v7);
  if (!setjmp(v103) && !ventproc(v5, v98, v102, v101, v100, v103))
  {
    v8 = OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_25_23(v8, v9);
    OUTLINED_FUNCTION_24_23();
    v10 = OUTLINED_FUNCTION_4_34();
    if (lpta_loadp_setscan_l(v10, v11, v12))
    {
      v13 = 0;
LABEL_6:
      v14 = OUTLINED_FUNCTION_5_33();
      starttest(v14, v15);
      v16 = OUTLINED_FUNCTION_10_32();
      if (lpta_loadp_setscan_l(v16, v17, v18) || (OUTLINED_FUNCTION_0_37(), test_string_s()))
      {
LABEL_17:
        v34 = OUTLINED_FUNCTION_5_33();
        starttest(v34, v35);
        v36 = OUTLINED_FUNCTION_10_32();
        if (lpta_loadp_setscan_l(v36, v37, v38))
        {
LABEL_18:
          v39 = OUTLINED_FUNCTION_5_33();
          starttest(v39, v40);
          v41 = OUTLINED_FUNCTION_10_32();
          if (lpta_loadp_setscan_l(v41, v42, v43))
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_5_33();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_6_33();
          if (!test_string_s())
          {
LABEL_49:
            bspush_nboa(v5);
            goto LABEL_3;
          }
        }

        else
        {
          v44 = OUTLINED_FUNCTION_5_33();
          bspush_ca_scan(v44, v45);
          OUTLINED_FUNCTION_0_37();
          v46 = v13;
          if (!test_string_s())
          {
LABEL_22:
            savescptr(v5, 8, v99);
            v47 = OUTLINED_FUNCTION_2_35();
            if (testFldeq(v47, v48, v49, 2) || advance_tok(v5, v50, v51, v52) || (v53 = OUTLINED_FUNCTION_2_35(), testFldeq(v53, v54, v55, 2)) || advance_tok(v5, v56, v57, v58))
            {
              v13 = v46;
            }

            else
            {
              OUTLINED_FUNCTION_5_33();
              bspush_ca_scan_boa();
              v95 = OUTLINED_FUNCTION_2_35();
              v13 = !testFldeq(v95, v96, v97, 2) || v46;
            }
          }
        }
      }

      else
      {
        v19 = OUTLINED_FUNCTION_2_35();
        if (!testFldeq(v19, v20, v21, 2))
        {
          OUTLINED_FUNCTION_5_33();
          bspush_ca_scan_boa();
          v22 = OUTLINED_FUNCTION_6_33();
          if (!testFldeq(v22, v23, v24, 17))
          {
            v13 = 1;
          }
        }
      }
    }

    else
    {
      v25 = OUTLINED_FUNCTION_2_35();
      if (testFldeq(v25, v26, v27, 2) || advance_tok(v5, v28, v29, v30))
      {
        v13 = 0;
      }

      else
      {
        bspush_ca_scan_boa();
        v31 = OUTLINED_FUNCTION_2_35();
        v13 = !testFldeq(v31, v32, v33, 2);
      }
    }

    v59 = v13;
    while (2)
    {
      v60 = v5[13];
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_20_25(v60);
        v46 = v62;
      }

      else
      {
        v61 = vback(v5, v59);
        v46 = 0;
      }

      switch(v61)
      {
        case 1:
          v13 = v46;
          goto LABEL_6;
        case 2:
        case 6:
          bspop_boa(v5);
          v66 = advance_tok(v5, v63, v64, v65);
          goto LABEL_33;
        case 4:
          v13 = v46;
          goto LABEL_17;
        case 5:
          bspop_boa(v5);
          v85 = advance_tok(v5, v82, v83, v84);
          v59 = v46;
          if (!v85)
          {
            OUTLINED_FUNCTION_22_23();
            bspush_ca_scan_boa();
            v86 = OUTLINED_FUNCTION_2_35();
            v59 = !testFldeq(v86, v87, v88, 2) || v46;
          }

          continue;
        case 7:
          v13 = v46;
          goto LABEL_18;
        case 8:
          goto LABEL_22;
        case 9:
          bspop_boa(v5);
          v73 = advance_tok(v5, v70, v71, v72);
          v59 = v46;
          if (v73)
          {
            continue;
          }

          v66 = fren_legal_final_cons_pair(v5, v99, v74, v75, v76, v77, v78, v79);
LABEL_33:
          v59 = v46;
          if (!v66)
          {
            goto LABEL_3;
          }

          continue;
        case 11:
          v80 = OUTLINED_FUNCTION_16_30();
          bspush_ca_scan(v80, v81);
          OUTLINED_FUNCTION_6_33();
          goto LABEL_48;
        case 12:
        case 17:
          goto LABEL_49;
        case 13:
          v92 = OUTLINED_FUNCTION_21_24();
          bspush_ca_scan(v92, v93);
          OUTLINED_FUNCTION_6_33();
          goto LABEL_48;
        case 14:
          bspush_ca_scan(v5, 15);
          v67 = OUTLINED_FUNCTION_23_23();
          bspush_ca_scan(v67, v68);
          OUTLINED_FUNCTION_3_35();
          v69 = test_string_s();
          v59 = v46;
          if (v69)
          {
            continue;
          }

          goto LABEL_36;
        case 15:
          OUTLINED_FUNCTION_3_35();
          v89 = test_string_s();
          v59 = v46;
          if (v89)
          {
            continue;
          }

          v90 = OUTLINED_FUNCTION_7_33();
          bspush_ca_scan(v90, v91);
          OUTLINED_FUNCTION_0_37();
          goto LABEL_48;
        case 16:
          OUTLINED_FUNCTION_3_35();
          goto LABEL_48;
        case 18:
LABEL_36:
          OUTLINED_FUNCTION_0_37();
LABEL_48:
          v94 = test_string_s();
          v59 = v46;
          if (!v94)
          {
            goto LABEL_49;
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_31_18();
}

uint64_t fren_legal_final_cons_pair(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v99 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_30(a1, a2, a3, a4, a5, a6, a7, a8, v94[0], v94[1], v94[2], v94[3], v94[4], v94[5], v94[6], v94[7], v94[8], v94[9], v94[10], v94[11], v94[12], v94[13], v94[14], v94[15], v94[16], v94[17], v94[18], v94[19], v94[20], v94[21], v94[22], v94[23], v94[24]);
  OUTLINED_FUNCTION_18_29();
  bzero(v98, v9);
  if (setjmp(v98) || ventproc(a1, v94, v97, v96, v95, v98))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_25_23(v12, v13);
  OUTLINED_FUNCTION_24_23();
  v14 = OUTLINED_FUNCTION_4_34();
  if (!lpta_loadp_setscan_l(v14, v15, v16))
  {
LABEL_30:
    while (1)
    {
      v62 = OUTLINED_FUNCTION_2_35();
      if (testFldeq(v62, v63, v64, 2) || advance_tok(a1, v65, v66, v67))
      {
        break;
      }

      bspush_ca_scan(a1, 2);
    }

    goto LABEL_32;
  }

  while (2)
  {
    v17 = OUTLINED_FUNCTION_5_33();
    starttest(v17, v18);
    v19 = OUTLINED_FUNCTION_10_32();
    if (!lpta_loadp_setscan_l(v19, v20, v21))
    {
      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
LABEL_17:
      OUTLINED_FUNCTION_0_37();
      if (test_string_s())
      {
        goto LABEL_32;
      }

LABEL_59:
      bspush_nboa(a1);
      OUTLINED_FUNCTION_0_37();
      if (!test_string_s())
      {
LABEL_60:
        v10 = 0;
        break;
      }

      goto LABEL_32;
    }

LABEL_7:
    v22 = OUTLINED_FUNCTION_5_33();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_10_32();
    if (!lpta_loadp_setscan_l(v24, v25, v26))
    {
      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
LABEL_20:
      OUTLINED_FUNCTION_0_37();
      if (test_string_s())
      {
        goto LABEL_32;
      }

      goto LABEL_59;
    }

LABEL_8:
    v27 = OUTLINED_FUNCTION_5_33();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_10_32();
    if (!lpta_loadp_setscan_l(v29, v30, v31))
    {
      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
LABEL_49:
      OUTLINED_FUNCTION_0_37();
      if (test_string_s())
      {
        goto LABEL_32;
      }

      goto LABEL_59;
    }

LABEL_9:
    v32 = OUTLINED_FUNCTION_5_33();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_10_32();
    if (!lpta_loadp_setscan_l(v34, v35, v36))
    {
      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
LABEL_56:
      OUTLINED_FUNCTION_0_37();
      if (test_string_s())
      {
        goto LABEL_32;
      }

      goto LABEL_59;
    }

LABEL_10:
    v37 = OUTLINED_FUNCTION_5_33();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_10_32();
    if (!lpta_loadp_setscan_l(v39, v40, v41))
    {
      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
LABEL_51:
      OUTLINED_FUNCTION_0_37();
      if (test_string_s())
      {
        goto LABEL_32;
      }

      goto LABEL_59;
    }

LABEL_11:
    v42 = OUTLINED_FUNCTION_5_33();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_10_32();
    if (!lpta_loadp_setscan_l(v44, v45, v46))
    {
      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
LABEL_45:
      OUTLINED_FUNCTION_0_37();
      if (test_string_s())
      {
        goto LABEL_32;
      }

      goto LABEL_59;
    }

LABEL_12:
    v47 = OUTLINED_FUNCTION_5_33();
    starttest(v47, v48);
    v49 = OUTLINED_FUNCTION_10_32();
    if (!lpta_loadp_setscan_l(v49, v50, v51))
    {
      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
LABEL_54:
      OUTLINED_FUNCTION_0_37();
      if (test_string_s())
      {
        goto LABEL_32;
      }

      goto LABEL_59;
    }

LABEL_13:
    v52 = OUTLINED_FUNCTION_5_33();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_10_32();
    if (!lpta_loadp_setscan_l(v54, v55, v56))
    {
      OUTLINED_FUNCTION_5_33();
      bspush_ca_scan_boa();
LABEL_58:
      OUTLINED_FUNCTION_0_37();
      if (test_string_s())
      {
        goto LABEL_32;
      }

      goto LABEL_59;
    }

LABEL_14:
    v57 = OUTLINED_FUNCTION_5_33();
    starttest(v57, v58);
    v59 = OUTLINED_FUNCTION_10_32();
    if (lpta_loadp_setscan_l(v59, v60, v61))
    {
LABEL_3:
      v10 = 94;
      break;
    }

    OUTLINED_FUNCTION_5_33();
    bspush_ca_scan_boa();
LABEL_42:
    OUTLINED_FUNCTION_0_37();
    if (!test_string_s())
    {
      goto LABEL_59;
    }

LABEL_32:
    v68 = *(a1 + 104);
    if (v68)
    {
      v69 = OUTLINED_FUNCTION_20_25(v68);
    }

    else
    {
      v70 = OUTLINED_FUNCTION_26_23();
      v69 = vback(v70, v71);
    }

    v10 = 94;
    switch(v69)
    {
      case 1:
        continue;
      case 2:
        v72 = OUTLINED_FUNCTION_2_35();
        if (testFldeq(v72, v73, v74, 2))
        {
          goto LABEL_32;
        }

        if (advance_tok(a1, v75, v76, v77))
        {
          goto LABEL_32;
        }

        v78 = OUTLINED_FUNCTION_2_35();
        if (testFldeq(v78, v79, v80, 2) || advance_tok(a1, v81, v82, v83))
        {
          goto LABEL_32;
        }

        break;
      case 3:
        goto LABEL_30;
      case 4:
        goto LABEL_7;
      case 5:
      case 7:
        v88 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v88, v89);
        goto LABEL_17;
      case 6:
      case 12:
      case 15:
      case 21:
      case 24:
      case 29:
      case 32:
      case 41:
      case 45:
        goto LABEL_59;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_60;
      case 10:
        goto LABEL_8;
      case 11:
        goto LABEL_20;
      case 13:
        goto LABEL_9;
      case 14:
      case 16:
      case 17:
        v90 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v90, v91);
        goto LABEL_49;
      case 18:
        goto LABEL_49;
      case 19:
        goto LABEL_10;
      case 20:
        goto LABEL_56;
      case 22:
        goto LABEL_11;
      case 23:
      case 25:
        v86 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v86, v87);
        goto LABEL_51;
      case 26:
        goto LABEL_51;
      case 27:
        goto LABEL_12;
      case 28:
        goto LABEL_45;
      case 30:
        goto LABEL_13;
      case 31:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
        v92 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v92, v93);
        goto LABEL_54;
      case 38:
        goto LABEL_54;
      case 39:
        goto LABEL_14;
      case 40:
        v84 = OUTLINED_FUNCTION_5_33();
        bspush_ca_scan(v84, v85);
        goto LABEL_58;
      case 42:
        goto LABEL_58;
      case 44:
        goto LABEL_42;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_4:
  vretproc(a1);
  return v10;
}

uint64_t fren_proclitic(uint64_t a1)
{
  OUTLINED_FUNCTION_17_30();
  v128 = *MEMORY[0x277D85DE8];
  v122 = 0;
  v123 = 0;
  OUTLINED_FUNCTION_15_30(v3, v4, v5, v6, v7, v8, v9, v10, v120[0], v120[1], v120[2], v120[3], v120[4], v120[5], v120[6], v120[7], v120[8], v120[9], v120[10], v120[11], v120[12], v120[13], v120[14], v120[15], v120[16], v120[17], v120[18], v120[19], v120[20], v120[21], v120[22], v120[23], v121);
  OUTLINED_FUNCTION_18_29();
  bzero(v127, v11);
  if (setjmp(v127) || ventproc(v1, v120, v126, v125, v124, v127) || (v12 = OUTLINED_FUNCTION_16_30(), OUTLINED_FUNCTION_28_20(v12, v13), v14 = OUTLINED_FUNCTION_12_32(), OUTLINED_FUNCTION_25_23(v14, v15), fence_34(v1), starttest(v1, 1), v16 = OUTLINED_FUNCTION_16_30(), lpta_loadp_setscan_r(v16, v17, 1)))
  {
LABEL_4:
    v18 = 94;
    goto LABEL_5;
  }

LABEL_6:
  while (1)
  {
    v20 = OUTLINED_FUNCTION_5_33();
    bspush_ca_scan(v20, v21);
LABEL_7:
    OUTLINED_FUNCTION_0_37();
    if (!test_string_s())
    {
      break;
    }

    do
    {
LABEL_8:
      while (2)
      {
        v22 = *(v1 + 104);
        if (v22)
        {
          v23 = OUTLINED_FUNCTION_20_25(v22);
        }

        else
        {
          v24 = OUTLINED_FUNCTION_26_23();
          v23 = vback(v24, v25);
        }

        switch(v23)
        {
          case 2:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 21:
          case 32:
          case 45:
          case 58:
          case 71:
          case 84:
          case 96:
            goto LABEL_6;
          case 3:
          case 23:
          case 34:
          case 47:
          case 60:
          case 73:
          case 86:
            goto LABEL_79;
          case 18:
            v26 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v26, v27);
            v28 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v28, v29);
            goto LABEL_18;
          case 19:
            v36 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v36, v37);
            v38 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v38, v39);
            goto LABEL_28;
          case 20:
LABEL_18:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_6;
            }

            continue;
          case 22:
          case 33:
          case 46:
          case 59:
          case 72:
          case 85:
          case 97:
            goto LABEL_7;
          case 24:
            v32 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v32, v33);
            v34 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v34, v35);
            goto LABEL_16;
          case 25:
LABEL_28:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_29;
            }

            continue;
          case 26:
LABEL_29:
            v56 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v56, v57);
            goto LABEL_30;
          case 27:
LABEL_30:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_31;
            }

            continue;
          case 28:
LABEL_31:
            v58 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v58, v59);
            goto LABEL_32;
          case 29:
LABEL_32:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_33;
            }

            continue;
          case 30:
LABEL_33:
            v60 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v60, v61);
            goto LABEL_34;
          case 31:
LABEL_34:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_6;
            }

            continue;
          case 35:
            v62 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v62, v63);
            v64 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v64, v65);
            goto LABEL_45;
          case 36:
LABEL_16:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_17;
            }

            continue;
          case 37:
LABEL_17:
            v40 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v40, v41);
            goto LABEL_37;
          case 38:
LABEL_37:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_38;
            }

            continue;
          case 39:
LABEL_38:
            v66 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v66, v67);
            goto LABEL_39;
          case 40:
LABEL_39:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_40;
            }

            continue;
          case 41:
LABEL_40:
            v68 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v68, v69);
            goto LABEL_41;
          case 42:
LABEL_41:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_42;
            }

            continue;
          case 43:
LABEL_42:
            v70 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v70, v71);
            goto LABEL_55;
          case 44:
LABEL_55:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_6;
            }

            continue;
          case 48:
            v46 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v46, v47);
            v48 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v48, v49);
            goto LABEL_22;
          case 49:
LABEL_45:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_46;
            }

            continue;
          case 50:
LABEL_46:
            v74 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v74, v75);
            goto LABEL_47;
          case 51:
LABEL_47:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_48;
            }

            continue;
          case 52:
LABEL_48:
            v76 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v76, v77);
            goto LABEL_49;
          case 53:
LABEL_49:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_50;
            }

            continue;
          case 54:
LABEL_50:
            v78 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v78, v79);
            goto LABEL_51;
          case 55:
LABEL_51:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_52;
            }

            continue;
          case 56:
LABEL_52:
            v80 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v80, v81);
            goto LABEL_53;
          case 57:
LABEL_53:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_6;
            }

            continue;
          case 61:
            v42 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v42, v43);
            v44 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v44, v45);
            goto LABEL_43;
          case 62:
LABEL_22:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_23;
            }

            continue;
          case 63:
LABEL_23:
            v50 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v50, v51);
            goto LABEL_24;
          case 64:
LABEL_24:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_25;
            }

            continue;
          case 65:
LABEL_25:
            v52 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v52, v53);
            goto LABEL_26;
          case 66:
LABEL_26:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_27;
            }

            continue;
          case 67:
LABEL_27:
            v54 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v54, v55);
            goto LABEL_65;
          case 68:
LABEL_65:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_66;
            }

            continue;
          case 69:
LABEL_66:
            v88 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v88, v89);
            goto LABEL_67;
          case 70:
LABEL_67:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_6;
            }

            continue;
          case 74:
            v30 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v30, v31);
            goto LABEL_69;
          case 75:
LABEL_43:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_44;
            }

            continue;
          case 76:
LABEL_44:
            v72 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v72, v73);
            goto LABEL_57;
          case 77:
LABEL_57:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_58;
            }

            continue;
          case 78:
LABEL_58:
            v82 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v82, v83);
            goto LABEL_59;
          case 79:
LABEL_59:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_60;
            }

            continue;
          case 80:
LABEL_60:
            v84 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v84, v85);
            goto LABEL_61;
          case 81:
LABEL_61:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_62;
            }

            continue;
          case 82:
LABEL_62:
            v86 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v86, v87);
            goto LABEL_63;
          case 83:
LABEL_63:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_6;
            }

            continue;
          case 87:
LABEL_69:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_70;
            }

            continue;
          case 88:
LABEL_70:
            v90 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v90, v91);
            goto LABEL_71;
          case 89:
LABEL_71:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_72;
            }

            continue;
          case 90:
LABEL_72:
            v92 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v92, v93);
            goto LABEL_73;
          case 91:
LABEL_73:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_74;
            }

            continue;
          case 92:
LABEL_74:
            v94 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v94, v95);
            goto LABEL_75;
          case 93:
LABEL_75:
            OUTLINED_FUNCTION_0_37();
            if (!test_string_s())
            {
              goto LABEL_76;
            }

            continue;
          case 94:
LABEL_76:
            v96 = OUTLINED_FUNCTION_5_33();
            bspush_ca_scan(v96, v97);
            break;
          case 95:
            goto LABEL_77;
          case 98:
            goto LABEL_82;
          case 99:
            goto LABEL_83;
          case 100:
            goto LABEL_84;
          case 101:
            goto LABEL_87;
          default:
            goto LABEL_4;
        }

        break;
      }

LABEL_77:
      OUTLINED_FUNCTION_0_37();
    }

    while (test_string_s());
  }

LABEL_79:
  v98 = OUTLINED_FUNCTION_6_33();
  if (testFldeq(v98, v99, v100, 73))
  {
    goto LABEL_8;
  }

  v101 = OUTLINED_FUNCTION_6_33();
  if (testFldeq(v101, v102, 3, 1) || advance_tok(v1, v103, v104, v105))
  {
    goto LABEL_8;
  }

LABEL_82:
  v106 = OUTLINED_FUNCTION_29_20();
  savescptr(v106, v107, v108);
LABEL_83:
  v109 = OUTLINED_FUNCTION_29_20();
  convert_to_lowercase(v109);
LABEL_84:
  v110 = OUTLINED_FUNCTION_12_32();
  if (!separate_tokens(v110))
  {
    *(v1 + 3794) = 10;
    npush_v(v1, (v1 + 3792), v111, v112, v113, v114, v115, v116);
    v117 = OUTLINED_FUNCTION_26_23();
    ncompare_s(v117, v118);
    if (!testneq(v1))
    {
      copyvar(v1, (v1 + 6144), (v1 + 3792));
      copyvar(v1, (v1 + 3792), (v1 + 3896));
      *(v1 + 3794) = 0;
      *(v1 + 6146) = 0;
      copyvar(v1, (v1 + 3792), (v1 + 6144));
    }
  }

LABEL_87:
  v119 = OUTLINED_FUNCTION_6_33();
  npush_s(v119);
  *(v1 + 3794) = 4;
  npop(v1, (v1 + 3792));
  *(v1 + 2806) = *(v1 + 2826);
  *(v2 + 8) = v121;
  v18 = 0;
LABEL_5:
  vretproc(v1);
  return v18;
}