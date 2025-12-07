uint64_t por_ph_u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v325);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_85_3(v10, v11, v12, v13, v14, v15, v16, v17, v326, v329, v332, v335, v338, v341, v344, v347, v350, v353, v356, v359, v362, v365, v368, v371, v374, v377, v380, v383, v386, v389, v392, 0, 0, v398, v400, v402, v404);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_20_19(v18, v19, v20, v21, v22, v23, v24, v25, v327, v330, v333, v336, v339, v342, v345, v348, v351, v354, v357, v360, v363, v366, v369, v372, v375, v378, v381, v384, v387, v390, v393, v395, v397, v399, SHIDWORD(v399), v401, SWORD2(v401), SHIWORD(v401), v403, SWORD2(v403), SBYTE6(v403), SHIBYTE(v403), v405, v406))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_44_7();
  push_ptr_init(v27, v28);
  fence_27(a1);
  OUTLINED_FUNCTION_63_5(250);
  OUTLINED_FUNCTION_53_6(800);
  OUTLINED_FUNCTION_62_5(2300);
  OUTLINED_FUNCTION_55_6();
  if (!v29 || (v30 = OUTLINED_FUNCTION_34_12(), lpta_loadpn(v30, v31), rpta_loadpn(a1, a1 + 1448), compare_ptas(a1)) || testneq(a1))
  {
    v32 = 0;
  }

  else
  {
    v46 = OUTLINED_FUNCTION_12_26();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_5_27();
    v51 = lpta_loadp_setscan_l(v48, v49, v50);
    v52 = 0;
    v32 = 0;
    if (!v51)
    {
LABEL_16:
      v53 = v52;
      OUTLINED_FUNCTION_50_6(2, v328, v331, v334, v337, v340, v343, v346, v349, v352, v355, v358, v361, v364, v367, v370, v373, v376, v379, v382, v385, v388, v391, v394, v396);
      v54 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v54, v55);
      v56 = v53;
LABEL_17:
      v57 = v56;
      v58 = OUTLINED_FUNCTION_31_14();
      v61 = lpta_loadp_setscan_r(v58, v59, v60);
      v32 = v57;
      LODWORD(v62) = v57;
      if (!v61)
      {
LABEL_18:
        v63 = OUTLINED_FUNCTION_30_14();
        if (!test_synch(v63, v64, 1, v65))
        {
          OUTLINED_FUNCTION_15_24();
          bspush_ca_scan_boa();
LABEL_21:
          v66 = OUTLINED_FUNCTION_30_14();
          v69 = test_synch(v66, v67, 1, v68);
          goto LABEL_22;
        }

LABEL_19:
        LODWORD(v62) = v32;
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_30_14();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_6_27();
    v38 = lpta_loadp_setscan_l(v35, v36, v37);
    v39 = v32;
    if (!v38)
    {
LABEL_10:
      v40 = OUTLINED_FUNCTION_23_19();
      if (test_synch(v40, v41, 1, v42))
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_89_3();
      OUTLINED_FUNCTION_46_7(v43);
      v45 = v44 - 50;
      goto LABEL_12;
    }

LABEL_75:
    v32 = v39;
    v165 = OUTLINED_FUNCTION_30_14();
    starttest(v165, v166);
    v167 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v167, v168, v169))
    {
LABEL_76:
      v170 = OUTLINED_FUNCTION_30_14();
      starttest(v170, v171);
      v172 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v172, v173, v174))
      {
LABEL_77:
        v175 = OUTLINED_FUNCTION_30_14();
        starttest(v175, v176);
        v177 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v177, v178, v179))
        {
LABEL_78:
          v180 = OUTLINED_FUNCTION_24_19();
          starttest(v180, v181);
          v182 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_l(v182, v183, v184))
          {
LABEL_79:
            v185 = OUTLINED_FUNCTION_16_23();
            starttest(v185, v186);
            v187 = OUTLINED_FUNCTION_6_27();
            if (lpta_loadp_setscan_l(v187, v188, v189))
            {
LABEL_80:
              v190 = OUTLINED_FUNCTION_6_27();
              if (lpta_loadp_setscan_l(v190, v191, v192) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
              {
LABEL_82:
                v193 = OUTLINED_FUNCTION_6_27();
                if (lpta_loadp_setscan_l(v193, v194, v195) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                {
LABEL_84:
                  v196 = OUTLINED_FUNCTION_30_14();
                  starttest(v196, v197);
                  v198 = OUTLINED_FUNCTION_6_27();
                  if (lpta_loadp_setscan_l(v198, v199, v200))
                  {
LABEL_85:
                    v201 = OUTLINED_FUNCTION_30_14();
                    starttest(v201, v202);
                    v203 = OUTLINED_FUNCTION_6_27();
                    if (lpta_loadp_setscan_l(v203, v204, v205))
                    {
                      goto LABEL_110;
                    }

                    v206 = OUTLINED_FUNCTION_4_27();
                    if (testFldeq(v206, v207, v208, 32) || advance_tok(a1, v209, v210, v211))
                    {
                      goto LABEL_19;
                    }

                    v212 = *(a1 + 4586) + 80;
                  }

                  else
                  {
                    v234 = OUTLINED_FUNCTION_4_27();
                    if (testFldeq(v234, v235, v236, 16) || advance_tok(a1, v237, v238, v239))
                    {
                      goto LABEL_19;
                    }

                    v212 = *(a1 + 4586) + 150;
                  }

                  goto LABEL_109;
                }

                v311 = *(a1 + 4586) + 250;
              }

              else
              {
                v311 = *(a1 + 4586) + 50;
              }

              OUTLINED_FUNCTION_66_5(v311);
LABEL_12:
              *(a1 + 4594) = v45;
              goto LABEL_110;
            }

            v232 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v232, v233);
            v140 = OUTLINED_FUNCTION_0_31();
LABEL_103:
            testFldeq(v140, v141, v142, v143);
            OUTLINED_FUNCTION_79_5();
            if (v71)
            {
              goto LABEL_25;
            }

LABEL_104:
            if (OUTLINED_FUNCTION_97_2(v71, v62, v72, v56))
            {
              goto LABEL_19;
            }

            v212 = *(a1 + 4586) + 200;
LABEL_109:
            *(a1 + 4586) = v212;
            goto LABEL_110;
          }

          v227 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v227, v228);
          v161 = OUTLINED_FUNCTION_7_27();
LABEL_99:
          testFldeq(v161, v162, v163, v164);
          OUTLINED_FUNCTION_80_4();
          if (v229)
          {
            goto LABEL_25;
          }

LABEL_100:
          v230 = v73;
          v231 = advance_tok(a1, v62, v72, v56);
          v32 = v230;
          LODWORD(v62) = v230;
          if (v231)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v222 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v222, v223);
LABEL_96:
          OUTLINED_FUNCTION_3_28();
          test_string_s();
          OUTLINED_FUNCTION_70_5();
          if (v224)
          {
            goto LABEL_25;
          }

LABEL_97:
          OUTLINED_FUNCTION_46_7(*(a1 + 4586) - 50);
          *(a1 + 4594) = v225 - 100;
          v32 = v226;
        }
      }

      else
      {
        v217 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v217, v218);
LABEL_93:
        OUTLINED_FUNCTION_3_28();
        test_string_s();
        OUTLINED_FUNCTION_81_4();
        if (v219)
        {
          goto LABEL_25;
        }

LABEL_94:
        OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 300);
        *(a1 + 4594) = v220 + 100;
        v32 = v221;
      }
    }

    else
    {
      v213 = OUTLINED_FUNCTION_25_18();
      bspush_ca_scan(v213, v214);
LABEL_90:
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_65_5();
      if (v215)
      {
        goto LABEL_25;
      }

LABEL_91:
      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 700);
      OUTLINED_FUNCTION_91_2(v216 + 200);
    }

LABEL_110:
    v240 = OUTLINED_FUNCTION_30_14();
    starttest(v240, v241);
    v242 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v242, v243, v244))
    {
      v289 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v289, v290);
      v132 = OUTLINED_FUNCTION_4_27();
      v135 = 21;
LABEL_126:
      testFldeq(v132, v133, v134, v135);
      OUTLINED_FUNCTION_78_5();
      if (!v71)
      {
LABEL_127:
        if (OUTLINED_FUNCTION_96_2(v71, v62, v72, v56))
        {
          goto LABEL_19;
        }

        v149 = *(a1 + 4590) + 200;
        goto LABEL_136;
      }

      goto LABEL_25;
    }

LABEL_111:
    v245 = OUTLINED_FUNCTION_30_14();
    starttest(v245, v246);
    v247 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v247, v248, v249))
    {
      v291 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v291, v292);
      v128 = OUTLINED_FUNCTION_4_27();
      v131 = 28;
LABEL_130:
      testFldeq(v128, v129, v130, v131);
      OUTLINED_FUNCTION_87_3();
      if (v293)
      {
        goto LABEL_25;
      }

LABEL_131:
      v32 = v74;
      if (advance_tok(a1, v62, v72, v56))
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_40_8();
      v295 = v294 + 100;
LABEL_153:
      *(a1 + 4598) = v295;
      goto LABEL_154;
    }

LABEL_112:
    v250 = OUTLINED_FUNCTION_30_14();
    starttest(v250, v251);
    v252 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v252, v253, v254))
    {
      v296 = OUTLINED_FUNCTION_4_27();
      if (testFldeq(v296, v297, v298, 37) || advance_tok(a1, v299, v300, v301))
      {
        goto LABEL_19;
      }

      *(a1 + 4582) += 50;
      v149 = *(a1 + 4590) - 200;
      goto LABEL_136;
    }

LABEL_113:
    v255 = OUTLINED_FUNCTION_27_16();
    starttest(v255, v256);
    v257 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v257, v258, v259))
    {
      v302 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v302, v303);
      v136 = OUTLINED_FUNCTION_4_27();
      v139 = 25;
LABEL_138:
      testFldeq(v136, v137, v138, v139);
      OUTLINED_FUNCTION_76_5();
      if (v304)
      {
        goto LABEL_25;
      }

LABEL_139:
      v32 = v75;
      if (advance_tok(a1, v62, v72, v56))
      {
        goto LABEL_19;
      }

      *(a1 + 4586) -= 50;
      OUTLINED_FUNCTION_71_5();
      goto LABEL_153;
    }

LABEL_114:
    v260 = OUTLINED_FUNCTION_30_14();
    starttest(v260, v261);
    v262 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v262, v263, v264))
    {
      v305 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v305, v306);
      v155 = OUTLINED_FUNCTION_7_27();
LABEL_142:
      testFldeq(v155, v156, v157, v158);
      OUTLINED_FUNCTION_86_3();
      if (!v71)
      {
LABEL_143:
        if (OUTLINED_FUNCTION_95_2(v71, v62, v72, v56))
        {
          goto LABEL_19;
        }

        v307 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v307, v308);
        v116 = OUTLINED_FUNCTION_4_27();
        v119 = 28;
LABEL_52:
        v120 = testFldeq(v116, v117, v118, v119);
        v76 = v32;
        v62 = v32;
        if (!v120)
        {
LABEL_53:
          v32 = v76;
          if (advance_tok(a1, v62, v72, v56))
          {
            goto LABEL_19;
          }

          goto LABEL_124;
        }
      }

      goto LABEL_25;
    }

LABEL_115:
    v265 = OUTLINED_FUNCTION_30_14();
    starttest(v265, v266);
    v267 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v267, v268, v269))
    {
      v309 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v309, v310);
      v121 = OUTLINED_FUNCTION_7_27();
LABEL_56:
      v125 = testFldeq(v121, v122, v123, v124);
      v77 = v32;
      v62 = v32;
      if (!v125)
      {
LABEL_57:
        v126 = v77;
        v127 = advance_tok(a1, v62, v72, v56);
        v32 = v126;
        LODWORD(v62) = v126;
        if (v127)
        {
          goto LABEL_25;
        }

        goto LABEL_154;
      }

LABEL_25:
      v70 = *(a1 + 104);
      if (v70)
      {
        v71 = OUTLINED_FUNCTION_26_18(v70);
      }

      else
      {
        v71 = vback(a1, v62);
        v32 = 0;
      }

      v56 = v32;
      v72 = v32;
      v73 = v32;
      v74 = v32;
      v75 = v32;
      v76 = v32;
      v77 = v32;
      v78 = v32;
      v79 = v32;
      switch(v71)
      {
        case 1:
          continue;
        case 2:
          v52 = v32;
          goto LABEL_16;
        case 3:
          v80 = OUTLINED_FUNCTION_17_22();
          bspush_ca_scan(v80, v81);
          v82 = OUTLINED_FUNCTION_4_27();
          v85 = 9;
          goto LABEL_42;
        case 4:
          goto LABEL_17;
        case 5:
          v82 = OUTLINED_FUNCTION_4_27();
          v85 = 10;
LABEL_42:
          v107 = testFldeq(v82, v83, v84, v85);
          v62 = v32;
          if (!v107)
          {
            goto LABEL_43;
          }

          goto LABEL_25;
        case 6:
LABEL_43:
          advance_tok(a1, v62, v72, v56);
          OUTLINED_FUNCTION_69_5();
          if (!v108)
          {
            goto LABEL_17;
          }

          goto LABEL_25;
        case 7:
          goto LABEL_18;
        case 8:
          bspop_boa(a1);
          OUTLINED_FUNCTION_58_6();
          if (!v29)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_63_5(350);
          continue;
        case 9:
          goto LABEL_21;
        case 10:
          v39 = v32;
          goto LABEL_75;
        case 11:
          goto LABEL_10;
        case 12:
          goto LABEL_110;
        case 13:
          goto LABEL_76;
        case 14:
          goto LABEL_90;
        case 15:
          goto LABEL_91;
        case 16:
          goto LABEL_77;
        case 17:
          goto LABEL_93;
        case 18:
          goto LABEL_94;
        case 19:
          goto LABEL_78;
        case 20:
          goto LABEL_96;
        case 21:
          goto LABEL_97;
        case 22:
          goto LABEL_79;
        case 23:
          v161 = OUTLINED_FUNCTION_2_29();
          goto LABEL_99;
        case 24:
          goto LABEL_100;
        case 25:
          goto LABEL_80;
        case 26:
          v140 = OUTLINED_FUNCTION_1_29();
          goto LABEL_103;
        case 27:
          goto LABEL_104;
        case 28:
          goto LABEL_82;
        case 29:
          goto LABEL_84;
        case 30:
          goto LABEL_85;
        case 31:
          goto LABEL_111;
        case 32:
          v132 = OUTLINED_FUNCTION_4_27();
          v135 = 17;
          goto LABEL_126;
        case 33:
          goto LABEL_127;
        case 34:
          goto LABEL_154;
        case 35:
          goto LABEL_112;
        case 36:
          v128 = OUTLINED_FUNCTION_4_27();
          v131 = 23;
          goto LABEL_130;
        case 37:
          goto LABEL_131;
        case 38:
          goto LABEL_113;
        case 39:
          goto LABEL_114;
        case 40:
          v159 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v159, v160);
          v136 = OUTLINED_FUNCTION_4_27();
          v139 = 26;
          goto LABEL_138;
        case 41:
          goto LABEL_139;
        case 42:
          v136 = OUTLINED_FUNCTION_4_27();
          v139 = 30;
          goto LABEL_138;
        case 43:
          goto LABEL_115;
        case 44:
          v155 = OUTLINED_FUNCTION_2_29();
          goto LABEL_142;
        case 45:
          goto LABEL_143;
        case 46:
          v116 = OUTLINED_FUNCTION_4_27();
          v119 = 23;
          goto LABEL_52;
        case 47:
          goto LABEL_53;
        case 48:
          goto LABEL_116;
        case 49:
          v121 = OUTLINED_FUNCTION_2_29();
          goto LABEL_56;
        case 50:
          goto LABEL_57;
        case 51:
          goto LABEL_117;
        case 52:
          v144 = OUTLINED_FUNCTION_1_29();
          goto LABEL_64;
        case 53:
          goto LABEL_65;
        case 54:
          goto LABEL_119;
        case 55:
          goto LABEL_121;
        case 56:
          goto LABEL_122;
        case 57:
          v150 = OUTLINED_FUNCTION_4_27();
          v153 = 20;
          goto LABEL_68;
        case 58:
          goto LABEL_69;
        case 59:
          goto LABEL_157;
        case 60:
          goto LABEL_155;
        case 61:
          bspop_boa(a1);
          OUTLINED_FUNCTION_58_6();
          if (!v29)
          {
            goto LABEL_25;
          }

          v92 = OUTLINED_FUNCTION_30_14();
          starttest_l(v92, v93);
          v94 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v94, v95, v96))
          {
            goto LABEL_34;
          }

          v109 = OUTLINED_FUNCTION_4_27();
          v112 = testFldeq(v109, v110, v111, 37);
          LODWORD(v62) = v32;
          if (!v112)
          {
            v115 = advance_tok(a1, v32, v113, v114);
            LODWORD(v62) = v32;
            if (!v115)
            {
              goto LABEL_157;
            }
          }

          goto LABEL_25;
        case 62:
LABEL_34:
          OUTLINED_FUNCTION_51_6();
          v97 = OUTLINED_FUNCTION_30_14();
          starttest(v97, v98);
          v99 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v99, v100, v101))
          {
            goto LABEL_157;
          }

          v102 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v102, v103);
          v88 = OUTLINED_FUNCTION_4_27();
          v91 = 28;
LABEL_37:
          v104 = testFldeq(v88, v89, v90, v91);
          v62 = v32;
          if (v104)
          {
            goto LABEL_25;
          }

LABEL_38:
          v105 = advance_tok(a1, v62, v72, v56);
          LODWORD(v62) = v32;
          if (v105)
          {
            goto LABEL_25;
          }

          v106 = *(a1 + 4586);
          LODWORD(v62) = v32;
          if (v106 > 999)
          {
            goto LABEL_25;
          }

          *(a1 + 4586) = v106 + 300;
          break;
        case 63:
          v86 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v86, v87);
          v88 = OUTLINED_FUNCTION_4_27();
          v91 = 35;
          goto LABEL_37;
        case 64:
          goto LABEL_38;
        case 65:
          v88 = OUTLINED_FUNCTION_4_27();
          v91 = 23;
          goto LABEL_37;
        default:
          goto LABEL_3;
      }

      goto LABEL_157;
    }

    break;
  }

LABEL_116:
  v270 = OUTLINED_FUNCTION_30_14();
  starttest(v270, v271);
  v272 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v272, v273, v274))
  {
    v312 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v312, v313);
    v144 = OUTLINED_FUNCTION_0_31();
LABEL_64:
    v148 = testFldeq(v144, v145, v146, v147);
    v78 = v32;
    v62 = v32;
    if (!v148)
    {
LABEL_65:
      v32 = v78;
      if (advance_tok(a1, v62, v72, v56))
      {
        goto LABEL_19;
      }

      v149 = *(a1 + 4590) + 170;
      goto LABEL_136;
    }

    goto LABEL_25;
  }

LABEL_117:
  v275 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v275, v276, v277))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_60_6();
      v295 = -2;
      goto LABEL_153;
    }
  }

LABEL_119:
  v278 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v278, v279, v280))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_43_7(*(a1 + 4590) + 250);
      v295 = v316 - 150;
      goto LABEL_153;
    }
  }

LABEL_121:
  v281 = OUTLINED_FUNCTION_30_14();
  starttest(v281, v282);
  v283 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v283, v284, v285))
  {
    v314 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v314, v315);
    v150 = OUTLINED_FUNCTION_4_27();
    v153 = 16;
LABEL_68:
    v154 = testFldeq(v150, v151, v152, v153);
    v79 = v32;
    v62 = v32;
    if (!v154)
    {
LABEL_69:
      v32 = v79;
      if (advance_tok(a1, v62, v72, v56))
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_52_6();
      goto LABEL_136;
    }

    goto LABEL_25;
  }

LABEL_122:
  v286 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v286, v287, v288))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
LABEL_124:
      OUTLINED_FUNCTION_61_6();
LABEL_136:
      *(a1 + 4590) = v149;
    }
  }

LABEL_154:
  v317 = OUTLINED_FUNCTION_30_14();
  starttest(v317, v318);
  v319 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v319, v320, v321))
  {
LABEL_155:
    v322 = OUTLINED_FUNCTION_30_14();
    if (!test_synch(v322, v323, 1, v324))
    {
      OUTLINED_FUNCTION_30_14();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_3_28();
      v69 = test_string_s();
LABEL_22:
      if (v69)
      {
        LODWORD(v62) = v32;
      }

      else
      {
        LODWORD(v62) = 1;
      }

      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_157:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_i_nas(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v41);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, SHIDWORD(v89), v91, SWORD2(v91), SHIWORD(v91), v93, SWORD2(v93), SBYTE6(v93), SHIBYTE(v93), v95, v96))
  {
    fence_27(a1);
    *(a1 + 4578) = 350;
    *(a1 + 4586) = 2100;
    *(a1 + 4594) = 2600;
    if (!*(a1 + 962))
    {
      *(a1 + 4590) = 2500;
      *(a1 + 4598) = 2900;
    }

LABEL_6:
    v20 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v20, v21, v22))
    {
      OUTLINED_FUNCTION_3_28();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_89_3();
        OUTLINED_FUNCTION_46_7(v23);
        *(a1 + 4594) = v24 - 450;
      }
    }

    while (1)
    {
      starttest(a1, 3);
      v25 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v25, v26, v27))
      {
        goto LABEL_20;
      }

      v28 = OUTLINED_FUNCTION_8_27();
      if (!testFldeq(v28, v29, v30, 4) && !advance_tok(a1, v31, v32, v33))
      {
        break;
      }

      v34 = *(a1 + 104);
      if (v34)
      {
        v35 = OUTLINED_FUNCTION_45_7(v34);
      }

      else
      {
        v36 = OUTLINED_FUNCTION_56_6();
        v35 = vback(v36, v37);
      }

      if (v35 != 2)
      {
        if (v35 == 1)
        {
          goto LABEL_6;
        }

        if (v35 != 3)
        {
          goto LABEL_3;
        }

LABEL_20:
        OUTLINED_FUNCTION_74_5();
        *(a1 + 4378) = v40;
        *(a1 + 4382) = 2 * *(a1 + 4290);
        OUTLINED_FUNCTION_75_5();
        vretproc(a1);
        return 0;
      }
    }

    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_43_7(v38);
    *(a1 + 4598) = v39 - 300;
    goto LABEL_20;
  }

LABEL_3:
  vretproc(a1);
  return 94;
}

uint64_t por_ph_e_nas(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v27[0] = 0;
  v27[1] = 0;
  v26[0] = 0;
  v26[1] = 0;
  OUTLINED_FUNCTION_42_7();
  bzero(v25, v2);
  OUTLINED_FUNCTION_41_7();
  bzero(v31, v3);
  if (setjmp(v31) || ventproc(a1, v25, v30, v29, v28, v31))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  push_ptr_init(a1, v27);
  push_ptr_init(a1, v26);
  fence_27(a1);
  *(a1 + 4578) = 480;
  *(a1 + 4582) = 300;
  *(a1 + 4586) = 1850;
  *(a1 + 4590) = 2250;
  *(a1 + 4594) = 2450;
  OUTLINED_FUNCTION_90_3(2650);
  v5 = OUTLINED_FUNCTION_12_26();
  starttest(v5, v6);
  OUTLINED_FUNCTION_55_6();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v8, v9, v10))
    {
      while (2)
      {
        savescptr(a1, 2, v26);
LABEL_9:
        if (test_synch(a1, 3, 1, &unk_2806BBF2D))
        {
          goto LABEL_18;
        }

        if (lpta_loadp_setscan_r(a1, v26, 4))
        {
          goto LABEL_18;
        }

        if (advance_tok(a1, v11, v12, v13))
        {
          goto LABEL_18;
        }

        bspush_ca_scan(a1, 4);
LABEL_13:
        savescptr(a1, 5, v27);
LABEL_14:
        if (test_synch(a1, 6, 1, &unk_2806BBF2D))
        {
          goto LABEL_18;
        }

        starttest(a1, 7);
        if (lpta_loadp_setscan_r(a1, v27, 4))
        {
LABEL_24:
          v24 = -1;
        }

        else
        {
          if (testFldeq(a1, 4u, 1, 1) || advance_tok(a1, v14, v15, v16))
          {
LABEL_18:
            v17 = *(a1 + 104);
            if (v17)
            {
              v18 = OUTLINED_FUNCTION_45_7(v17);
            }

            else
            {
              v22 = OUTLINED_FUNCTION_56_6();
              v18 = vback(v22, v23);
            }

            switch(v18)
            {
              case 1:
                goto LABEL_7;
              case 2:
                continue;
              case 3:
                goto LABEL_9;
              case 4:
                if (!advance_tok(a1, v19, v20, v21))
                {
                  goto LABEL_13;
                }

                goto LABEL_18;
              case 5:
                goto LABEL_13;
              case 6:
                goto LABEL_14;
              case 7:
                goto LABEL_24;
              default:
                goto LABEL_3;
            }
          }

          v24 = -2;
        }

        break;
      }

      *(a1 + 4578) = 350;
      *(a1 + 4582) = -1;
      *(a1 + 4590) = v24;
      *(a1 + 4598) = v24;
    }
  }

LABEL_7:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_a_nas(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v203);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, SHIDWORD(v251), v253, SWORD2(v253), SHIWORD(v253), v255, SWORD2(v255), SBYTE6(v255), SHIBYTE(v255), v257, v258))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_27(a1);
  *(a1 + 4578) = 570;
  OUTLINED_FUNCTION_53_6(1380);
  OUTLINED_FUNCTION_62_5(2400);
  v20 = OUTLINED_FUNCTION_12_26();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_6_27();
  if (lpta_loadp_setscan_l(v22, v23, v24))
  {
LABEL_5:
    v25 = OUTLINED_FUNCTION_15_24();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v27, v28, v29))
    {
LABEL_14:
      v42 = OUTLINED_FUNCTION_23_19();
      starttest(v42, v43);
      v44 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v44, v45, v46))
      {
LABEL_15:
        v47 = OUTLINED_FUNCTION_25_18();
        starttest(v47, v48);
        v49 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v49, v50, v51))
        {
LABEL_16:
          v52 = OUTLINED_FUNCTION_30_14();
          starttest(v52, v53);
          v54 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_l(v54, v55, v56))
          {
            goto LABEL_26;
          }

          v57 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v57, v58);
          v59 = OUTLINED_FUNCTION_7_27();
LABEL_56:
          if (testFldeq(v59, v60, v61, v62))
          {
            goto LABEL_80;
          }

LABEL_57:
          if (advance_tok(a1, v36, v37, v38))
          {
            goto LABEL_80;
          }

          v39 = -200;
        }

        else
        {
          v69 = OUTLINED_FUNCTION_22_19();
          bspush_ca_scan(v69, v70);
LABEL_23:
          OUTLINED_FUNCTION_3_28();
          if (test_string_s())
          {
            goto LABEL_80;
          }

LABEL_24:
          v39 = -150;
        }
      }

      else
      {
        v63 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v63, v64);
        v65 = OUTLINED_FUNCTION_0_31();
LABEL_19:
        if (testFldeq(v65, v66, v67, v68))
        {
          goto LABEL_80;
        }

LABEL_20:
        if (advance_tok(a1, v36, v37, v38))
        {
          goto LABEL_80;
        }

        v39 = 120;
      }
    }

    else
    {
      v30 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v30, v31);
      v32 = OUTLINED_FUNCTION_4_27();
      v35 = 11;
LABEL_7:
      if (testFldeq(v32, v33, v34, v35))
      {
        goto LABEL_80;
      }

LABEL_8:
      if (advance_tok(a1, v36, v37, v38))
      {
        goto LABEL_80;
      }

      v39 = 50;
    }
  }

  else
  {
    v40 = OUTLINED_FUNCTION_13_26();
    bspush_ca_scan(v40, v41);
LABEL_11:
    OUTLINED_FUNCTION_29_15();
LABEL_12:
    if (test_string_s())
    {
      goto LABEL_80;
    }

    v39 = 150;
  }

  while (2)
  {
    *(a1 + 4586) += v39;
LABEL_26:
    v71 = OUTLINED_FUNCTION_30_14();
    starttest(v71, v72);
    v73 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v73, v74, v75))
    {
      goto LABEL_41;
    }

LABEL_27:
    v76 = OUTLINED_FUNCTION_30_14();
    starttest(v76, v77);
    v78 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v78, v79, v80))
    {
      v130 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v130, v131);
      v132 = OUTLINED_FUNCTION_4_27();
      v135 = 11;
LABEL_43:
      if (testFldeq(v132, v133, v134, v135))
      {
        goto LABEL_80;
      }

LABEL_44:
      if (!advance_tok(a1, v36, v37, v38))
      {
        v127 = 50;
LABEL_61:
        *(a1 + 4590) += v127;
        goto LABEL_62;
      }

      goto LABEL_80;
    }

LABEL_28:
    v81 = OUTLINED_FUNCTION_30_14();
    starttest(v81, v82);
    v83 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v83, v84, v85))
    {
      v136 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v136, v137);
      v138 = OUTLINED_FUNCTION_0_31();
      goto LABEL_72;
    }

LABEL_29:
    v86 = OUTLINED_FUNCTION_30_14();
    starttest(v86, v87);
    v88 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v88, v89, v90))
    {
      v142 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v142, v143);
LABEL_75:
      OUTLINED_FUNCTION_3_28();
      if (test_string_s())
      {
        goto LABEL_80;
      }

LABEL_76:
      v127 = -150;
      goto LABEL_61;
    }

LABEL_30:
    v91 = OUTLINED_FUNCTION_30_14();
    starttest(v91, v92);
    v93 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v93, v94, v95))
    {
      v144 = OUTLINED_FUNCTION_7_27();
      if (testFldeq(v144, v145, v146, v147) || advance_tok(a1, v148, v149, v150))
      {
        goto LABEL_80;
      }

      v127 = -200;
      goto LABEL_61;
    }

LABEL_31:
    v96 = OUTLINED_FUNCTION_30_14();
    starttest(v96, v97);
    v98 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v98, v99, v100))
    {
      v151 = OUTLINED_FUNCTION_2_29();
      if (testFldeq(v151, v152, v153, v154) || advance_tok(a1, v155, v156, v157))
      {
        goto LABEL_80;
      }

      v127 = -100;
      goto LABEL_61;
    }

LABEL_32:
    v101 = OUTLINED_FUNCTION_30_14();
    starttest(v101, v102);
    v103 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v103, v104, v105))
    {
      v158 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v158, v159);
LABEL_77:
      OUTLINED_FUNCTION_3_28();
      if (test_string_s())
      {
        goto LABEL_80;
      }

LABEL_41:
      v128 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v128, v129);
LABEL_59:
      OUTLINED_FUNCTION_3_28();
      if (test_string_s())
      {
        goto LABEL_80;
      }

      goto LABEL_60;
    }

LABEL_33:
    v106 = OUTLINED_FUNCTION_30_14();
    starttest(v106, v107);
    v108 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v108, v109, v110))
    {
      OUTLINED_FUNCTION_3_28();
      if (!test_string_s())
      {
        v160 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v160, v161);
        v162 = OUTLINED_FUNCTION_4_27();
        v165 = 23;
LABEL_79:
        if (testFldeq(v162, v163, v164, v165))
        {
          goto LABEL_80;
        }

LABEL_98:
        if (!advance_tok(a1, v36, v37, v38))
        {
          v127 = 150;
          goto LABEL_61;
        }

        goto LABEL_80;
      }
    }

LABEL_35:
    v111 = OUTLINED_FUNCTION_30_14();
    starttest(v111, v112);
    v113 = OUTLINED_FUNCTION_10_27();
    if (!lpta_loadp_setscan_r(v113, v114, v115))
    {
      OUTLINED_FUNCTION_3_28();
      if (!test_string_s())
      {
LABEL_85:
        v138 = OUTLINED_FUNCTION_1_29();
LABEL_72:
        if (testFldeq(v138, v139, v140, v141))
        {
          goto LABEL_80;
        }

LABEL_73:
        if (!advance_tok(a1, v36, v37, v38))
        {
LABEL_60:
          v127 = 100;
          goto LABEL_61;
        }

LABEL_80:
        v187 = *(a1 + 104);
        if (v187)
        {
          v188 = OUTLINED_FUNCTION_45_7(v187);
        }

        else
        {
          v189 = OUTLINED_FUNCTION_56_6();
          v188 = vback(v189, v190);
        }

        v39 = 150;
        v127 = 100;
        switch(v188)
        {
          case 1:
            goto LABEL_5;
          case 2:
            v191 = OUTLINED_FUNCTION_35_11();
            bspush_ca_scan(v191, v192);
            goto LABEL_12;
          case 3:
            continue;
          case 4:
            v195 = OUTLINED_FUNCTION_17_22();
            bspush_ca_scan(v195, v196);
            goto LABEL_11;
          case 5:
            v193 = OUTLINED_FUNCTION_14_24();
            bspush_ca_scan(v193, v194);
            goto LABEL_11;
          case 6:
            goto LABEL_11;
          case 7:
            goto LABEL_26;
          case 8:
            goto LABEL_14;
          case 9:
            v32 = OUTLINED_FUNCTION_4_27();
            v35 = 12;
            goto LABEL_7;
          case 10:
            goto LABEL_8;
          case 11:
            goto LABEL_15;
          case 12:
            v65 = OUTLINED_FUNCTION_1_29();
            goto LABEL_19;
          case 13:
            goto LABEL_20;
          case 14:
            goto LABEL_16;
          case 15:
            goto LABEL_23;
          case 16:
            goto LABEL_24;
          case 17:
            v59 = OUTLINED_FUNCTION_2_29();
            goto LABEL_56;
          case 18:
            goto LABEL_57;
          case 19:
            goto LABEL_27;
          case 20:
            v197 = OUTLINED_FUNCTION_24_19();
            bspush_ca_scan(v197, v198);
            goto LABEL_59;
          case 21:
          case 41:
            goto LABEL_61;
          case 22:
          case 23:
          case 39:
            goto LABEL_41;
          case 24:
          case 40:
            goto LABEL_59;
          case 25:
            goto LABEL_62;
          case 26:
            goto LABEL_28;
          case 27:
            v132 = OUTLINED_FUNCTION_4_27();
            v135 = 12;
            goto LABEL_43;
          case 28:
            goto LABEL_44;
          case 29:
            goto LABEL_29;
          case 30:
            goto LABEL_85;
          case 31:
            goto LABEL_73;
          case 32:
            goto LABEL_30;
          case 33:
            goto LABEL_75;
          case 34:
            goto LABEL_76;
          case 35:
            goto LABEL_31;
          case 36:
            goto LABEL_32;
          case 37:
            goto LABEL_33;
          case 38:
            goto LABEL_77;
          case 42:
            goto LABEL_35;
          case 43:
            v162 = OUTLINED_FUNCTION_4_27();
            v165 = 28;
            goto LABEL_79;
          case 44:
            goto LABEL_98;
          case 45:
            goto LABEL_37;
          case 46:
            goto LABEL_97;
          case 47:
            goto LABEL_65;
          case 48:
            goto LABEL_66;
          case 49:
            goto LABEL_94;
          case 50:
            goto LABEL_67;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_37:
  v116 = OUTLINED_FUNCTION_16_23();
  starttest(v116, v117);
  v118 = OUTLINED_FUNCTION_10_27();
  if (!lpta_loadp_setscan_r(v118, v119, v120))
  {
    v121 = OUTLINED_FUNCTION_4_27();
    if (testFldeq(v121, v122, v123, 40) || advance_tok(a1, v124, v125, v126))
    {
      goto LABEL_80;
    }

    v127 = -50;
    goto LABEL_61;
  }

LABEL_62:
  OUTLINED_FUNCTION_55_6();
  if (!v166)
  {
    goto LABEL_97;
  }

  *(a1 + 4578) -= 40;
  if (*(a1 + 3400) > 20.0)
  {
    goto LABEL_97;
  }

LABEL_65:
  v167 = OUTLINED_FUNCTION_30_14();
  starttest(v167, v168);
  v169 = OUTLINED_FUNCTION_10_27();
  if (!lpta_loadp_setscan_r(v169, v170, v171))
  {
    v180 = OUTLINED_FUNCTION_3_28();
    if (!testFldeq(v180, v181, v182, 2) && !advance_tok(a1, v183, v184, v185))
    {
      OUTLINED_FUNCTION_51_6();
      *(a1 + 4598) = v186;
      goto LABEL_97;
    }

    goto LABEL_80;
  }

LABEL_66:
  v172 = OUTLINED_FUNCTION_30_14();
  starttest(v172, v173);
  v174 = OUTLINED_FUNCTION_10_27();
  if (lpta_loadp_setscan_r(v174, v175, v176))
  {
LABEL_94:
    OUTLINED_FUNCTION_93_2();
    if (v200 == v201)
    {
      v202 = *(a1 + 4590);
      if (v202 >= 1)
      {
        OUTLINED_FUNCTION_39_9(vcvtd_n_f64_u32(v202 + v199, 1uLL) + 150.0);
      }
    }

    goto LABEL_97;
  }

LABEL_67:
  v177 = OUTLINED_FUNCTION_30_14();
  if (test_synch(v177, v178, 1, v179))
  {
    goto LABEL_80;
  }

LABEL_97:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_o_nas(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v213);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, SHIDWORD(v261), v263, SWORD2(v263), SHIWORD(v263), v265, SWORD2(v265), SBYTE6(v265), SHIBYTE(v265), v267, v268))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_27(a1);
  *(a1 + 4578) = 480;
  *(a1 + 4582) = 325;
  *(a1 + 4586) = 900;
  *(a1 + 4590) = 745;
  *(a1 + 4594) = 2200;
  *(a1 + 4598) = 2800;
  *(a1 + 4602) = 3500;
  *(a1 + 4606) = 3400;
  v20 = OUTLINED_FUNCTION_12_26();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_6_27();
  if (lpta_loadp_setscan_l(v22, v23, v24))
  {
    v1 = 0;
LABEL_6:
    v25 = OUTLINED_FUNCTION_17_22();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v27, v28, v29))
    {
LABEL_7:
      v30 = OUTLINED_FUNCTION_15_24();
      starttest(v30, v31);
      v32 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v32, v33, v34))
      {
LABEL_8:
        v35 = OUTLINED_FUNCTION_35_11();
        starttest(v35, v36);
        v37 = OUTLINED_FUNCTION_34_12();
        if (!lpta_loadp_setscan_l(v37, v38, v1))
        {
          v75 = OUTLINED_FUNCTION_8_27();
          if (testFldeq(v75, v76, v77, 2) || advance_tok(a1, v78, v79, v80))
          {
            v45 = v1;
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_59_6();
        }
      }

      else
      {
        v49 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v49, v50);
        OUTLINED_FUNCTION_3_28();
        test_string_s();
        OUTLINED_FUNCTION_81_4();
        if (v52)
        {
          goto LABEL_63;
        }

LABEL_14:
        v1 = v51;
        v53 = OUTLINED_FUNCTION_23_19();
        starttest(v53, v54);
        v55 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v55, v56, v57) || advance_tok(a1, v58, v59, v60))
        {
LABEL_16:
          v61 = OUTLINED_FUNCTION_22_19();
          starttest(v61, v62);
          v63 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_l(v63, v64, v65) || advance_tok(a1, v66, v67, v68))
          {
LABEL_18:
            v69 = OUTLINED_FUNCTION_25_18();
            starttest(v69, v70);
            v71 = OUTLINED_FUNCTION_6_27();
            if (!lpta_loadp_setscan_l(v71, v72, v73))
            {
              OUTLINED_FUNCTION_30_14();
              bspush_ca_scan_boa();
LABEL_20:
              v74 = 19;
              goto LABEL_55;
            }
          }

          else
          {
            v85 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v85, v86);
            v87 = OUTLINED_FUNCTION_1_29();
            testFldeq(v87, v88, v89, v90);
            OUTLINED_FUNCTION_80_4();
            if (v92)
            {
              goto LABEL_63;
            }

LABEL_28:
            v1 = v91;
            if (advance_tok(a1, v45, v46, v47))
            {
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_66_5(*(a1 + 4586) + 30);
LABEL_32:
            *(a1 + 4594) = v93;
          }
        }

        else
        {
          v94 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v94, v95);
          OUTLINED_FUNCTION_3_28();
          test_string_s();
          OUTLINED_FUNCTION_70_5();
          if (v96)
          {
            goto LABEL_63;
          }

LABEL_31:
          OUTLINED_FUNCTION_66_5(*(a1 + 4586) + 130);
          *(a1 + 4594) = v97;
          v1 = v98;
        }
      }
    }

    else
    {
      v39 = OUTLINED_FUNCTION_14_24();
      bspush_ca_scan(v39, v40);
      v41 = OUTLINED_FUNCTION_0_31();
      testFldeq(v41, v42, v43, v44);
      OUTLINED_FUNCTION_69_5();
      if (v48)
      {
        goto LABEL_63;
      }

LABEL_11:
      v1 = v47;
      if (advance_tok(a1, v45, v46, v47))
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_48_7();
    }
  }

  else
  {
    v81 = OUTLINED_FUNCTION_13_26();
    bspush_ca_scan(v81, v82);
    OUTLINED_FUNCTION_3_28();
    v83 = test_string_s();
    v45 = 0;
    if (v83)
    {
      goto LABEL_63;
    }

LABEL_25:
    OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 300);
    OUTLINED_FUNCTION_91_2(v84 + 50);
  }

LABEL_33:
  v99 = OUTLINED_FUNCTION_30_14();
  starttest(v99, v100);
  v101 = OUTLINED_FUNCTION_10_27();
  if (!lpta_loadp_setscan_r(v101, v102, v103))
  {
    v130 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v130, v131);
    OUTLINED_FUNCTION_3_28();
    v132 = test_string_s();
    v45 = v1;
    if (!v132)
    {
LABEL_41:
      OUTLINED_FUNCTION_51_6();
LABEL_95:
      *(a1 + 4598) = v133;
      goto LABEL_96;
    }

    goto LABEL_63;
  }

LABEL_34:
  v104 = OUTLINED_FUNCTION_30_14();
  starttest(v104, v105);
  v106 = OUTLINED_FUNCTION_10_27();
  if (!lpta_loadp_setscan_r(v106, v107, v108))
  {
    v134 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v134, v135);
    OUTLINED_FUNCTION_3_28();
    v136 = test_string_s();
    v45 = v1;
    if (!v136)
    {
LABEL_43:
      OUTLINED_FUNCTION_43_7(*(a1 + 4590) + 300);
      v133 = v137 + 50;
      goto LABEL_95;
    }

    goto LABEL_63;
  }

LABEL_35:
  v109 = OUTLINED_FUNCTION_30_14();
  starttest(v109, v110);
  v111 = OUTLINED_FUNCTION_10_27();
  if (!lpta_loadp_setscan_r(v111, v112, v113))
  {
    v138 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v138, v139);
    v140 = OUTLINED_FUNCTION_0_31();
    testFldeq(v140, v141, v142, v143);
    OUTLINED_FUNCTION_76_5();
    if (!v145)
    {
LABEL_45:
      v146 = v144;
      v147 = advance_tok(a1, v45, v46, v47);
      v45 = v146;
      if (!v147)
      {
        v148 = *(a1 + 4590) + 200;
LABEL_60:
        *(a1 + 4590) = v148;
        goto LABEL_96;
      }
    }

    goto LABEL_63;
  }

LABEL_36:
  v114 = OUTLINED_FUNCTION_30_14();
  starttest(v114, v115);
  v116 = OUTLINED_FUNCTION_10_27();
  if (!lpta_loadp_setscan_r(v116, v117, v118))
  {
    v149 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v149, v150);
    OUTLINED_FUNCTION_3_28();
    test_string_s();
    OUTLINED_FUNCTION_79_5();
    if (v152)
    {
      goto LABEL_63;
    }

LABEL_48:
    v1 = v151;
    v153 = OUTLINED_FUNCTION_30_14();
    starttest(v153, v154);
    v155 = OUTLINED_FUNCTION_10_27();
    if (lpta_loadp_setscan_r(v155, v156, v157) || advance_tok(a1, v158, v159, v160))
    {
LABEL_50:
      v161 = OUTLINED_FUNCTION_30_14();
      starttest(v161, v162);
      v163 = OUTLINED_FUNCTION_10_27();
      if (lpta_loadp_setscan_r(v163, v164, v165) || advance_tok(a1, v166, v167, v168))
      {
LABEL_52:
        v169 = OUTLINED_FUNCTION_27_16();
        starttest(v169, v170);
        v171 = OUTLINED_FUNCTION_10_27();
        if (lpta_loadp_setscan_r(v171, v172, v173))
        {
          goto LABEL_96;
        }

        OUTLINED_FUNCTION_30_14();
        bspush_ca_scan_boa();
LABEL_54:
        v74 = 44;
LABEL_55:
        if (test_synch(a1, v74, 1, &unk_2806BBF2D))
        {
          v45 = v1;
        }

        else
        {
          v45 = 1;
        }

        goto LABEL_63;
      }

      v175 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v175, v176);
      v177 = OUTLINED_FUNCTION_1_29();
      testFldeq(v177, v178, v179, v180);
      OUTLINED_FUNCTION_78_5();
      if (v181)
      {
        goto LABEL_63;
      }

LABEL_62:
      v182 = OUTLINED_FUNCTION_96_2(v181, v45, v46, v47);
      v45 = v1;
      if (v182)
      {
LABEL_63:
        v1 = v45;
        do
        {
          while (2)
          {
            v183 = *(a1 + 104);
            if (v183)
            {
              v181 = OUTLINED_FUNCTION_26_18(v183);
            }

            else
            {
              v181 = vback(a1, v1);
              v1 = 0;
            }

            v46 = v1;
            v47 = v1;
            v51 = v1;
            v91 = v1;
            v144 = v1;
            v151 = v1;
            switch(v181)
            {
              case 1:
                goto LABEL_6;
              case 2:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_25;
                }

                continue;
              case 3:
                goto LABEL_25;
              case 4:
              case 14:
                goto LABEL_33;
              case 5:
                goto LABEL_7;
              case 6:
                v188 = OUTLINED_FUNCTION_1_29();
                v192 = testFldeq(v188, v189, v190, v191);
                v47 = v1;
                if (!v192)
                {
                  goto LABEL_11;
                }

                continue;
              case 7:
                goto LABEL_11;
              case 8:
                goto LABEL_8;
              case 9:
                OUTLINED_FUNCTION_3_28();
                v187 = test_string_s();
                v51 = v1;
                if (!v187)
                {
                  goto LABEL_14;
                }

                continue;
              case 10:
                goto LABEL_14;
              case 11:
                goto LABEL_16;
              case 12:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_31;
                }

                continue;
              case 13:
                goto LABEL_31;
              case 15:
                goto LABEL_18;
              case 16:
                v202 = OUTLINED_FUNCTION_0_31();
                v206 = testFldeq(v202, v203, v204, v205);
                v91 = v1;
                if (!v206)
                {
                  goto LABEL_28;
                }

                continue;
              case 17:
                goto LABEL_28;
              case 18:
                bspop_boa(a1);
                v93 = -2;
                *(a1 + 4586) = -2;
                goto LABEL_32;
              case 19:
                goto LABEL_20;
              case 20:
                goto LABEL_34;
              case 21:
              case 23:
                v185 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v185, v186);
                break;
              case 22:
                goto LABEL_41;
              case 24:
                v207 = OUTLINED_FUNCTION_16_23();
                bspush_ca_scan(v207, v208);
                break;
              case 25:
                goto LABEL_88;
              case 26:
              case 39:
                goto LABEL_96;
              case 27:
                goto LABEL_35;
              case 28:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_43;
                }

                continue;
              case 29:
                goto LABEL_43;
              case 30:
                goto LABEL_36;
              case 31:
                v193 = OUTLINED_FUNCTION_1_29();
                v197 = testFldeq(v193, v194, v195, v196);
                v144 = v1;
                if (!v197)
                {
                  goto LABEL_45;
                }

                continue;
              case 32:
                goto LABEL_45;
              case 33:
                goto LABEL_37;
              case 34:
                OUTLINED_FUNCTION_3_28();
                v184 = test_string_s();
                v151 = v1;
                if (!v184)
                {
                  goto LABEL_48;
                }

                continue;
              case 35:
                goto LABEL_48;
              case 36:
                goto LABEL_50;
              case 37:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_91;
                }

                continue;
              case 38:
                goto LABEL_91;
              case 40:
                goto LABEL_52;
              case 41:
                v198 = OUTLINED_FUNCTION_0_31();
                v181 = testFldeq(v198, v199, v200, v201);
                if (!v181)
                {
                  goto LABEL_62;
                }

                continue;
              case 42:
                goto LABEL_62;
              case 43:
                bspop_boa(a1);
                v209 = -1;
                goto LABEL_94;
              case 44:
                goto LABEL_54;
              default:
                goto LABEL_3;
            }

            break;
          }

LABEL_88:
          OUTLINED_FUNCTION_3_28();
        }

        while (test_string_s());
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_61_6();
    }

    else
    {
      v210 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v210, v211);
      OUTLINED_FUNCTION_3_28();
      v212 = test_string_s();
      v45 = v1;
      if (v212)
      {
        goto LABEL_63;
      }

LABEL_91:
      v209 = *(a1 + 4590) + 120;
    }

LABEL_94:
    *(a1 + 4590) = v209;
    v133 = -2;
    goto LABEL_95;
  }

LABEL_37:
  v119 = OUTLINED_FUNCTION_30_14();
  starttest(v119, v120);
  v121 = OUTLINED_FUNCTION_10_27();
  if (!lpta_loadp_setscan_r(v121, v122, v123))
  {
    v124 = OUTLINED_FUNCTION_8_27();
    if (testFldeq(v124, v125, v126, 2))
    {
LABEL_39:
      v45 = v1;
      goto LABEL_63;
    }

    v174 = advance_tok(a1, v127, v128, v129);
    v45 = v1;
    if (!v174)
    {
      OUTLINED_FUNCTION_52_6();
      goto LABEL_60;
    }

    goto LABEL_63;
  }

LABEL_96:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_u_nas(uint64_t a1)
{
  v139 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_42_7();
  bzero(v134, v2);
  OUTLINED_FUNCTION_41_7();
  bzero(v138, v3);
  if (setjmp(v138) || ventproc(a1, v134, v137, v136, v135, v138))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_27(a1);
  *(a1 + 4578) = 300;
  *(a1 + 4582) = 200;
  *(a1 + 4586) = 700;
  *(a1 + 4590) = 1150;
  *(a1 + 4594) = 2300;
  *(a1 + 4598) = 2700;
  *(a1 + 4602) = 3300;
  *(a1 + 4606) = 3300;
  if (*(a1 + 746) < 0)
  {
    *(a1 + 4586) = 1150;
    v6 = 2500;
  }

  else
  {
LABEL_5:
    if (*(a1 + 950))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 100);
    v6 = v5 + 200;
  }

  *(a1 + 4594) = v6;
LABEL_9:
  while (2)
  {
    starttest(a1, 3);
    v7 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v7, v8, 4))
    {
      bspush_ca_scan(a1, 4);
      OUTLINED_FUNCTION_37_11();
LABEL_15:
      if (test_string_s())
      {
        goto LABEL_40;
      }

LABEL_16:
      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 200);
      v12 = v13 + 100;
      goto LABEL_77;
    }

LABEL_10:
    starttest(a1, 7);
    v9 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v9, v10, 4))
    {
      bspush_ca_scan(a1, 8);
      OUTLINED_FUNCTION_37_11();
LABEL_12:
      if (test_string_s())
      {
        goto LABEL_40;
      }

LABEL_13:
      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 500);
      v12 = v11 + 200;
      goto LABEL_77;
    }

LABEL_45:
    starttest(a1, 10);
    v78 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v78, v79, 4))
    {
      bspush_ca_scan(a1, 11);
      OUTLINED_FUNCTION_37_11();
LABEL_53:
      if (test_string_s())
      {
        goto LABEL_40;
      }

LABEL_54:
      v12 = *(a1 + 4594) + 400;
LABEL_77:
      *(a1 + 4594) = v12;
      goto LABEL_17;
    }

LABEL_46:
    starttest(a1, 13);
    v80 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v80, v81, 4))
    {
      bspush_ca_scan(a1, 14);
      v94 = OUTLINED_FUNCTION_28_15();
      v97 = 1;
LABEL_71:
      if (testFldeq(v94, v95, v96, v97))
      {
        goto LABEL_40;
      }

LABEL_72:
      if (advance_tok(a1, v55, v56, v57))
      {
        goto LABEL_40;
      }

      goto LABEL_17;
    }

LABEL_47:
    starttest(a1, 16);
    v82 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v82, v83, 4))
    {
      bspush_ca_scan(a1, 17);
      v98 = OUTLINED_FUNCTION_28_15();
      v101 = 3;
LABEL_65:
      if (testFldeq(v98, v99, v100, v101))
      {
        goto LABEL_40;
      }

LABEL_66:
      if (advance_tok(a1, v55, v56, v57))
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 150);
      v12 = v102 - 150;
      goto LABEL_77;
    }

LABEL_48:
    starttest(a1, 19);
    v84 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v84, v85, 4))
    {
      bspush_ca_scan(a1, 20);
      OUTLINED_FUNCTION_37_11();
LABEL_75:
      if (test_string_s())
      {
        goto LABEL_40;
      }

LABEL_76:
      *(a1 + 4578) += 50;
      OUTLINED_FUNCTION_59_6();
      v12 = -2;
      goto LABEL_77;
    }

LABEL_49:
    starttest(a1, 22);
    v86 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v86, v87, 4))
    {
      v116 = OUTLINED_FUNCTION_33_13();
      if (testFldeq(v116, 4u, v117, 20) || advance_tok(a1, v118, v119, v120))
      {
        goto LABEL_40;
      }

      v109 = *(a1 + 4586) + 250;
LABEL_111:
      *(a1 + 4586) = v109;
      goto LABEL_17;
    }

LABEL_50:
    starttest(a1, 6);
    v88 = OUTLINED_FUNCTION_34_12();
    if (!lpta_loadp_setscan_l(v88, v89, 4))
    {
      bspush_ca_scan(a1, 23);
      v90 = OUTLINED_FUNCTION_28_15();
      v93 = 2;
LABEL_81:
      if (testFldeq(v90, v91, v92, v93))
      {
        goto LABEL_40;
      }

LABEL_82:
      if (advance_tok(a1, v55, v56, v57))
      {
        goto LABEL_40;
      }

      v109 = *(a1 + 4586) + 80;
      goto LABEL_111;
    }

LABEL_17:
    v14 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_l(v14, v15, v16))
    {
      OUTLINED_FUNCTION_37_11();
      if (!test_string_s())
      {
        v133 = 850;
        goto LABEL_114;
      }
    }

LABEL_19:
    starttest(a1, 28);
    v17 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v17, v18, v19))
    {
      v45 = OUTLINED_FUNCTION_28_15();
      if (!testFldeq(v45, v46, v47, 4) && !advance_tok(a1, v48, v49, v50))
      {
        OUTLINED_FUNCTION_71_5();
        *(a1 + 4598) = v121;
LABEL_113:
        OUTLINED_FUNCTION_52_6();
        goto LABEL_114;
      }

      goto LABEL_40;
    }

LABEL_20:
    starttest(a1, 29);
    v20 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v20, v21, v22))
    {
      bspush_ca_scan(a1, 30);
      v51 = OUTLINED_FUNCTION_33_13();
      v53 = 4;
      v54 = 28;
LABEL_32:
      if (testFldeq(v51, v53, v52, v54))
      {
        goto LABEL_40;
      }

LABEL_33:
      if (!advance_tok(a1, v55, v56, v57))
      {
        OUTLINED_FUNCTION_40_8();
        v132 = v131 + 100;
        goto LABEL_116;
      }

      goto LABEL_40;
    }

LABEL_21:
    starttest(a1, 34);
    v23 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v23, v24, v25))
    {
      bspush_ca_scan(a1, 35);
      v58 = OUTLINED_FUNCTION_33_13();
      v60 = 4;
      v61 = 25;
LABEL_89:
      if (testFldeq(v58, v60, v59, v61))
      {
        goto LABEL_40;
      }

LABEL_90:
      if (!advance_tok(a1, v55, v56, v57))
      {
        *(a1 + 4586) -= 50;
        OUTLINED_FUNCTION_71_5();
        goto LABEL_116;
      }

      goto LABEL_40;
    }

LABEL_22:
    starttest(a1, 38);
    v26 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v26, v27, v28))
    {
      bspush_ca_scan(a1, 39);
      v62 = OUTLINED_FUNCTION_28_15();
      v65 = 1;
LABEL_101:
      if (testFldeq(v62, v63, v64, v65))
      {
        goto LABEL_40;
      }

LABEL_102:
      if (advance_tok(a1, v55, v56, v57))
      {
        goto LABEL_40;
      }

      bspush_ca_scan(a1, 41);
      v112 = OUTLINED_FUNCTION_33_13();
      v113 = 4;
      v115 = 28;
LABEL_97:
      if (testFldeq(v112, v113, v114, v115))
      {
        goto LABEL_40;
      }

LABEL_98:
      if (!advance_tok(a1, v55, v56, v57))
      {
        goto LABEL_126;
      }

      goto LABEL_40;
    }

LABEL_23:
    starttest(a1, 43);
    v29 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v29, v30, v31))
    {
      bspush_ca_scan(a1, 44);
      v66 = OUTLINED_FUNCTION_28_15();
      v69 = 1;
LABEL_105:
      if (!testFldeq(v66, v67, v68, v69))
      {
LABEL_106:
        if (!advance_tok(a1, v55, v56, v57))
        {
          goto LABEL_121;
        }
      }

      goto LABEL_40;
    }

LABEL_24:
    starttest(a1, 46);
    v32 = OUTLINED_FUNCTION_18_21();
    if (!lpta_loadp_setscan_r(v32, v33, v34))
    {
      bspush_ca_scan(a1, 47);
      v70 = OUTLINED_FUNCTION_28_15();
      v73 = 3;
LABEL_85:
      if (testFldeq(v70, v71, v72, v73))
      {
        goto LABEL_40;
      }

LABEL_86:
      if (!advance_tok(a1, v55, v56, v57))
      {
        v133 = *(a1 + 4590) + 170;
LABEL_114:
        *(a1 + 4590) = v133;
        goto LABEL_121;
      }

LABEL_40:
      v74 = *(a1 + 104);
      if (v74)
      {
        v75 = OUTLINED_FUNCTION_45_7(v74);
      }

      else
      {
        v76 = OUTLINED_FUNCTION_56_6();
        v75 = vback(v76, v77);
      }

      switch(v75)
      {
        case 1:
          goto LABEL_5;
        case 2:
          continue;
        case 3:
          goto LABEL_10;
        case 4:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_15;
        case 5:
          goto LABEL_16;
        case 6:
          goto LABEL_17;
        case 7:
          goto LABEL_45;
        case 8:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_12;
        case 9:
          goto LABEL_13;
        case 10:
          goto LABEL_46;
        case 11:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_53;
        case 12:
          goto LABEL_54;
        case 13:
          goto LABEL_47;
        case 14:
          v94 = OUTLINED_FUNCTION_2_29();
          goto LABEL_71;
        case 15:
          goto LABEL_72;
        case 16:
          goto LABEL_48;
        case 17:
          v98 = OUTLINED_FUNCTION_1_29();
          goto LABEL_65;
        case 18:
          goto LABEL_66;
        case 19:
          goto LABEL_49;
        case 20:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_75;
        case 21:
          goto LABEL_76;
        case 22:
          goto LABEL_50;
        case 23:
          v107 = OUTLINED_FUNCTION_16_23();
          bspush_ca_scan(v107, v108);
          v90 = OUTLINED_FUNCTION_4_27();
          v93 = 20;
          goto LABEL_81;
        case 24:
          goto LABEL_82;
        case 25:
          v90 = OUTLINED_FUNCTION_4_27();
          v93 = 32;
          goto LABEL_81;
        case 26:
          goto LABEL_19;
        case 27:
          goto LABEL_121;
        case 28:
          goto LABEL_20;
        case 29:
          goto LABEL_21;
        case 30:
          v105 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v105, v106);
          v51 = OUTLINED_FUNCTION_4_27();
          v54 = 23;
          goto LABEL_32;
        case 31:
          goto LABEL_33;
        case 32:
          v103 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v103, v104);
          v51 = OUTLINED_FUNCTION_4_27();
          v54 = 21;
          goto LABEL_32;
        case 33:
          v51 = OUTLINED_FUNCTION_4_27();
          v54 = 17;
          goto LABEL_32;
        case 34:
          goto LABEL_22;
        case 35:
          v110 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v110, v111);
          v58 = OUTLINED_FUNCTION_4_27();
          v61 = 30;
          goto LABEL_89;
        case 36:
          goto LABEL_90;
        case 37:
          v58 = OUTLINED_FUNCTION_4_27();
          v61 = 26;
          goto LABEL_89;
        case 38:
          goto LABEL_23;
        case 39:
          v62 = OUTLINED_FUNCTION_2_29();
          goto LABEL_101;
        case 40:
          goto LABEL_102;
        case 41:
          v112 = OUTLINED_FUNCTION_4_27();
          v115 = 23;
          goto LABEL_97;
        case 42:
          goto LABEL_98;
        case 43:
          goto LABEL_24;
        case 44:
          v66 = OUTLINED_FUNCTION_2_29();
          goto LABEL_105;
        case 45:
          goto LABEL_106;
        case 46:
          goto LABEL_25;
        case 47:
          v70 = OUTLINED_FUNCTION_1_29();
          goto LABEL_85;
        case 48:
          goto LABEL_86;
        case 49:
          goto LABEL_26;
        case 50:
          OUTLINED_FUNCTION_3_28();
          goto LABEL_60;
        case 51:
          goto LABEL_115;
        case 52:
          goto LABEL_117;
        case 53:
          v41 = OUTLINED_FUNCTION_4_27();
          v44 = 20;
          goto LABEL_93;
        case 54:
          goto LABEL_94;
        case 55:
          goto LABEL_119;
        case 56:
          goto LABEL_124;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_25:
  starttest(a1, 49);
  v35 = OUTLINED_FUNCTION_18_21();
  if (!lpta_loadp_setscan_r(v35, v36, v37))
  {
    bspush_ca_scan(a1, 50);
    OUTLINED_FUNCTION_37_11();
LABEL_60:
    if (test_string_s())
    {
      goto LABEL_40;
    }

LABEL_115:
    OUTLINED_FUNCTION_60_6();
    v132 = -2;
LABEL_116:
    *(a1 + 4598) = v132;
    goto LABEL_121;
  }

LABEL_26:
  starttest(a1, 52);
  v38 = OUTLINED_FUNCTION_18_21();
  if (!lpta_loadp_setscan_r(v38, v39, v40))
  {
    bspush_ca_scan(a1, 53);
    v41 = OUTLINED_FUNCTION_28_15();
    v44 = 2;
LABEL_93:
    if (!testFldeq(v41, v42, v43, v44))
    {
LABEL_94:
      if (!advance_tok(a1, v55, v56, v57))
      {
        goto LABEL_113;
      }
    }

    goto LABEL_40;
  }

LABEL_117:
  v122 = OUTLINED_FUNCTION_10_27();
  if (!lpta_loadp_setscan_r(v122, v123, v124))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
LABEL_126:
      OUTLINED_FUNCTION_61_6();
      goto LABEL_114;
    }
  }

LABEL_119:
  v125 = OUTLINED_FUNCTION_10_27();
  if (!lpta_loadp_setscan_l(v125, v126, v127))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
      v133 = *(a1 + 4590) - 300;
      goto LABEL_114;
    }
  }

LABEL_121:
  OUTLINED_FUNCTION_55_6();
  if (v128)
  {
    OUTLINED_FUNCTION_74_5();
    v129 = (5 * *(a1 + 4294));
    *(a1 + 4378) = 2 * *(a1 + 4286);
    OUTLINED_FUNCTION_73_5(v129);
    *(a1 + 4386) = v130;
  }

LABEL_124:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_W(_WORD *a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, SHIDWORD(v70), v72, SWORD2(v72), SHIWORD(v72), v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v77))
  {
    v19 = 94;
  }

  else
  {
    fence_27(a1);
    v19 = 0;
    a1[2289] = 380;
    a1[2293] = 850;
    a1[2297] = 2300;
    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_75_5();
    a1[2189] = 2 * a1[2143];
    OUTLINED_FUNCTION_73_5((7 * a1[2145]));
    a1[2191] = v21;
  }

  vretproc(a1);
  return v19;
}

uint64_t por_ph_Y(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v45);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, SHIDWORD(v93), v95, SWORD2(v95), SHIWORD(v95), v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v100))
  {
    goto LABEL_3;
  }

  fence_27(a1);
  *(a1 + 4578) = 300;
  v20 = OUTLINED_FUNCTION_12_26();
  starttest_l(v20, v21);
  v22 = OUTLINED_FUNCTION_5_27();
  if (lpta_loadp_setscan_r(v22, v23, v24))
  {
    goto LABEL_5;
  }

  v35 = OUTLINED_FUNCTION_8_27();
  if (!testFldeq(v35, v36, v37, 5) && !advance_tok(a1, v38, v39, v40))
  {
    *(a1 + 4578) = 250;
LABEL_5:
    por_high_pal_Fv(a1);
    goto LABEL_6;
  }

  v41 = *(a1 + 104);
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_45_7(v41);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_56_6();
    v42 = vback(v43, v44);
  }

  if (v42 == 1)
  {
    goto LABEL_5;
  }

  if (v42 == 2)
  {
LABEL_6:
    OUTLINED_FUNCTION_75_5();
    OUTLINED_FUNCTION_74_5();
    *(a1 + 4382) = 2 * *(a1 + 4290);
    *(a1 + 4722) = 4;
    if (!if_testeq_v_i(a1, (a1 + 4720), 1, v25, v26, v27, v28, v29))
    {
      *(a1 + 4722) = 5;
      if (!if_testgt_v_i(a1, (a1 + 4720), 30, v30, v31, v32, v33, v34))
      {
        *(a1 + 4414) = *(a1 + 4410);
      }
    }

    goto LABEL_17;
  }

  if (v42 != 3)
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

LABEL_17:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_M(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v77);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, SHIDWORD(v125), v127, SWORD2(v127), SHIWORD(v127), v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v131, v132))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_27(a1);
  v20 = OUTLINED_FUNCTION_12_26();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    OUTLINED_FUNCTION_13_26();
    bspush_ca_scan_boa();
    v1 = 0;
    v26 = OUTLINED_FUNCTION_29_15();
    if (!testFldeq(v26, v27, 3, 0))
    {
      v1 = !advance_tok(a1, v28, v29, v30);
    }

    goto LABEL_22;
  }

  v25 = 0;
  while (2)
  {
    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_53_6(65534);
    *(a1 + 4594) = v31;
    *(a1 + 4414) = *(a1 + 4410) + 150;
    *(a1 + 4378) = 3 * *(a1 + 4286);
    v32 = OUTLINED_FUNCTION_30_14();
    starttest_l(v32, v33);
    v34 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v34, v35, v36))
    {
      OUTLINED_FUNCTION_35_11();
      bspush_ca_scan_boa();
      v67 = OUTLINED_FUNCTION_33_13();
      if (testFldeq(v67, v1, v68, 18))
      {
        v1 = v25;
      }

      else
      {
        v1 = 1;
      }

      goto LABEL_22;
    }

    v1 = v25;
LABEL_12:
    v37 = OUTLINED_FUNCTION_47_7(4);
    if (if_testeq_v_i(v37, v38, 1, v39, v40, v41, v42, v43))
    {
      break;
    }

    v44 = OUTLINED_FUNCTION_47_7(5);
    if (!if_testgt_v_i(v44, v45, 30, v46, v47, v48, v49, v50))
    {
      v66 = *(a1 + 4410);
      goto LABEL_30;
    }

LABEL_14:
    v51 = OUTLINED_FUNCTION_17_22();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v53, v54, v55))
    {
      v56 = OUTLINED_FUNCTION_1_29();
      if (!testFldeq(v56, v57, v58, v59))
      {
        v60 = OUTLINED_FUNCTION_8_27();
        if (!testFldeq(v60, v61, v62, 5) && !advance_tok(a1, v63, v64, v65))
        {
          v66 = *(a1 + 4414) - 50;
LABEL_30:
          *(a1 + 4414) = v66;
          break;
        }
      }

LABEL_22:
      v69 = v1;
LABEL_23:
      v70 = *(a1 + 104);
      if (v70)
      {
        v71 = OUTLINED_FUNCTION_26_18(v70);
      }

      else
      {
        v71 = vback(a1, v69);
        v1 = 0;
      }

      switch(v71)
      {
        case 1:
          goto LABEL_9;
        case 2:
          bspop_boa(a1);
          *(a1 + 4578) = 300;
LABEL_9:
          v25 = v1;
          continue;
        case 3:
          goto LABEL_12;
        case 4:
          bspop_boa(a1);
          v75 = advance_tok(a1, v72, v73, v74);
          v69 = v1;
          if (v75)
          {
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_73_5((6 * *(a1 + 4290)));
          *(a1 + 4382) = v76;
          goto LABEL_12;
        case 5:
          goto LABEL_31;
        case 6:
          goto LABEL_14;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_31:
  vretproc(a1);
  return 0;
}

uint64_t por_coarticulation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v101) = 0;
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v54);
  OUTLINED_FUNCTION_21_19(v10, v11, v12, v13, v14, v15, v16, v17, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_9_27(v18, v19, v20, v21, v22, v23, v24, v25, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, SHIDWORD(v102), v104, SWORD2(v104), SHIWORD(v104), v106, SWORD2(v106), SBYTE6(v106), SHIBYTE(v106), v108, v109))
  {
LABEL_3:
    v26 = 94;
    goto LABEL_4;
  }

  fence_27(a1);
  v28 = OUTLINED_FUNCTION_12_26();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_6_27();
  if (!lpta_loadp_setscan_l(v30, v31, v32))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
      v33 = OUTLINED_FUNCTION_13_26();
      bspush_ca(v33);
      if (*(a1 + 4602) < 3001)
      {
        goto LABEL_21;
      }

LABEL_8:
      if (*(a1 + 4606) < 0)
      {
        if ((*(a1 + 4602) & 0x80000000) == 0)
        {
LABEL_10:
          *(a1 + 4606) = vcvtd_n_f64_s32(*(a1 + 4602) + 3000, 1uLL);
          OUTLINED_FUNCTION_67_5();
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_67_5();
      }

      else
      {
LABEL_13:
        OUTLINED_FUNCTION_67_5();
        v35 = OUTLINED_FUNCTION_12_26();
        starttest_l(v35, v36);
        v37 = OUTLINED_FUNCTION_44_7();
        c_assvar(v37, v38);
        if ((*(a1 + 4606) - *(a1 + 4602)) < 501)
        {
          goto LABEL_21;
        }

        v34 = 3500;
      }

      *(a1 + 4606) = v34;
    }
  }

LABEL_16:
  v39 = OUTLINED_FUNCTION_14_24();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_5_27();
  if (lpta_loadp_setscan_r(v41, v42, v43) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
  {
LABEL_30:
    v26 = 0;
  }

  else
  {
    v44 = OUTLINED_FUNCTION_30_14();
    bspush_ca(v44);
    if (*(a1 + 4606) < 3001)
    {
      goto LABEL_21;
    }

LABEL_19:
    while ((*(a1 + 4602) & 0x80000000) == 0)
    {
LABEL_20:
      *(a1 + 4606) = 3000;
      v45 = OUTLINED_FUNCTION_14_24();
      starttest_l(v45, v46);
      v47 = OUTLINED_FUNCTION_44_7();
      c_assvar(v47, v48);
      if ((*(a1 + 4602) - *(a1 + 4606)) > 500)
      {
        v26 = 0;
        *(a1 + 4602) = 3500;
        goto LABEL_4;
      }

LABEL_21:
      while (2)
      {
        v49 = *(a1 + 104);
        if (v49)
        {
          v50 = OUTLINED_FUNCTION_45_7(v49);
        }

        else
        {
          v51 = OUTLINED_FUNCTION_56_6();
          v50 = vback(v51, v52);
        }

        switch(v50)
        {
          case 1:
            goto LABEL_16;
          case 2:
            if (*(a1 + 4602) < 0)
            {
              goto LABEL_8;
            }

            continue;
          case 3:
            goto LABEL_8;
          case 4:
            if ((*(a1 + 4606) & 0x80000000) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_10;
          case 5:
            goto LABEL_13;
          case 6:
            goto LABEL_30;
          case 7:
            if ((*(a1 + 4606) & 0x80000000) == 0)
            {
              continue;
            }

            break;
          case 8:
            if ((*(a1 + 4606) & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

            break;
          case 9:
            goto LABEL_19;
          case 10:
            goto LABEL_20;
          default:
            goto LABEL_3;
        }

        break;
      }

      if (*(a1 + 4602) < 0)
      {
        v26 = 0;
        OUTLINED_FUNCTION_67_5();
        goto LABEL_35;
      }
    }

    v26 = 0;
    *(a1 + 4602) = vcvtd_n_f64_s32(*(a1 + 4606) + 3000, 1uLL);
    v53 = 3000;
LABEL_35:
    *(a1 + 4606) = v53;
  }

LABEL_4:
  vretproc(a1);
  return v26;
}

uint64_t OUTLINED_FUNCTION_9_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

uint64_t OUTLINED_FUNCTION_19_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = 1;
  *(v3 + 112) = *(v3 + 1600);
  *(v3 + 128) = 0;

  return test_ptr(v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_21_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_32_13(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_38_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_50_6@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_72_5@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_84_3@<D0>(int a1@<W8>)
{
  result = vcvtd_n_f64_u32(v1 + a1, 1uLL);
  *(v2 + 4594) = result;
  return result;
}

void OUTLINED_FUNCTION_85_3(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  bzero(va, a2);
}

BOOL OUTLINED_FUNCTION_95_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return advance_tok(v4, a2, a3, a4);
}

BOOL OUTLINED_FUNCTION_96_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return advance_tok(v4, a2, a3, a4);
}

BOOL OUTLINED_FUNCTION_97_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return advance_tok(v4, a2, a3, a4);
}

void por_trans_features(uint64_t a1)
{
  OUTLINED_FUNCTION_31_15();
  v2 = v1;
  v115 = *MEMORY[0x277D85DE8];
  v110[0] = 0;
  v110[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(&v87, v3);
  OUTLINED_FUNCTION_23_20();
  bzero(v114, v4);
  if (!setjmp(v114) && !ventproc(v2, &v87, v113, v112, v111, v114))
  {
    push_ptr_init(v2, v110);
    fence_28(v2);
    v5 = OUTLINED_FUNCTION_14_25();
    starttest(v5, v6);
    v7 = OUTLINED_FUNCTION_3_29();
    v10 = lpta_loadp_setscan_l(v7, v8, v9);
    v11 = 0;
    v12 = 0;
    if (v10)
    {
LABEL_5:
      v13 = v12;
      v14 = OUTLINED_FUNCTION_14_25();
      starttest(v14, v15);
      v16 = OUTLINED_FUNCTION_3_29();
      if (!lpta_loadp_setscan_l(v16, v17, v18))
      {
LABEL_6:
        OUTLINED_FUNCTION_29_16(8, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110[0]);
        OUTLINED_FUNCTION_14_25();
        bspush_ca_scan_boa();
        v19 = OUTLINED_FUNCTION_12_27();
        if (testFldeq(v19, v20, 2, v21))
        {
          v22 = v12;
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_9;
      }

LABEL_35:
      v52 = OUTLINED_FUNCTION_3_29();
      if (!lpta_loadp_setscan_l(v52, v53, v54))
      {
        OUTLINED_FUNCTION_2_30();
        if (!test_string_s())
        {
          goto LABEL_3;
        }
      }

LABEL_37:
      v55 = OUTLINED_FUNCTION_3_29();
      if (!lpta_loadp_setscan_r(v55, v56, v57))
      {
        OUTLINED_FUNCTION_2_30();
        if (!test_string_s())
        {
          goto LABEL_3;
        }
      }

LABEL_39:
      v58 = OUTLINED_FUNCTION_14_25();
      starttest(v58, v59);
      v60 = OUTLINED_FUNCTION_3_29();
      v63 = lpta_loadp_setscan_l(v60, v61, v62);
      v12 = v13;
      v64 = v13;
      if (!v63)
      {
LABEL_41:
        OUTLINED_FUNCTION_29_16(14, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110[0]);
        v65 = OUTLINED_FUNCTION_14_25();
        bspush_ca_scan(v65, v66);
        v67 = OUTLINED_FUNCTION_6_28();
        v70 = testFldeq(v67, v68, v69, 4);
        v22 = v12;
        v27 = v12;
        if (!v70)
        {
LABEL_42:
          v71 = v27;
          if (advance_tok(v2, v23, v26, v27) || (v72 = OUTLINED_FUNCTION_15_25(), lpta_loadp_setscan_r(v72, v73, v74)))
          {
            v22 = v71;
          }

          else
          {
            v81 = OUTLINED_FUNCTION_14_25();
            bspush_ca_scan(v81, v82);
            v83 = OUTLINED_FUNCTION_6_28();
            v86 = testFldeq(v83, v84, v85, 4);
            v22 = v71;
            v28 = v71;
            if (!v86)
            {
LABEL_55:
              v22 = v28;
              if (!advance_tok(v2, v23, v26, v27))
              {
                goto LABEL_3;
              }
            }
          }
        }

        goto LABEL_9;
      }

LABEL_40:
      v22 = v64;
      lpta_rpta_loadp(v2, (v2 + 197), (v2 + 199));
      OUTLINED_FUNCTION_12_27();
    }

    else
    {
      while (2)
      {
        v22 = v11;
        OUTLINED_FUNCTION_29_16(2, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110[0]);
        v75 = OUTLINED_FUNCTION_14_25();
        bspush_ca_scan(v75, v76);
        OUTLINED_FUNCTION_2_30();
        v77 = test_string_s();
        LODWORD(v26) = v22;
        if (v77)
        {
          goto LABEL_9;
        }

LABEL_47:
        v22 = v26;
        v78 = OUTLINED_FUNCTION_15_25();
        if (lpta_loadp_setscan_r(v78, v79, v80) || (OUTLINED_FUNCTION_2_30(), test_string_s()))
        {
LABEL_9:
          LODWORD(v23) = v22;
LABEL_10:
          v24 = v2[13];
          if (v24)
          {
            v25 = OUTLINED_FUNCTION_27_17(v24);
            v12 = v23;
          }

          else
          {
            v25 = vback(v2, v23);
            v12 = 0;
          }

          v26 = v12;
          v27 = v12;
          v28 = v12;
          switch(v25)
          {
            case 1:
              goto LABEL_5;
            case 2:
              v11 = v12;
              continue;
            case 3:
              bspush_ca_scan(v2, 5);
              OUTLINED_FUNCTION_2_30();
              goto LABEL_21;
            case 4:
              goto LABEL_47;
            case 5:
              OUTLINED_FUNCTION_2_30();
LABEL_21:
              v38 = test_string_s();
              LODWORD(v26) = v12;
              LODWORD(v23) = v12;
              if (!v38)
              {
                goto LABEL_47;
              }

              goto LABEL_10;
            case 7:
              v13 = v12;
              goto LABEL_35;
            case 8:
              goto LABEL_6;
            case 9:
              bspop_boa(v2);
              v46 = advance_tok(v2, v43, v44, v45);
              LODWORD(v23) = v12;
              if (!v46)
              {
                v47 = lpta_loadp_setscan_r(v2, v110, 4);
                LODWORD(v23) = v12;
                if (!v47)
                {
                  OUTLINED_FUNCTION_28_16();
                  bspush_ca_scan_boa();
                  v48 = OUTLINED_FUNCTION_12_27();
                  if (testFldeq(v48, v49, 2, v50))
                  {
                    LODWORD(v23) = v12;
                  }

                  else
                  {
                    LODWORD(v23) = 1;
                  }
                }
              }

              goto LABEL_10;
            case 10:
              bspop_boa(v2);
              v42 = advance_tok(v2, v39, v40, v41);
              LODWORD(v23) = v12;
              if (v42)
              {
                goto LABEL_10;
              }

              goto LABEL_3;
            case 11:
              v13 = v12;
              goto LABEL_37;
            case 12:
              v13 = v12;
              goto LABEL_39;
            case 13:
              v64 = v12;
              goto LABEL_40;
            case 14:
              goto LABEL_41;
            case 15:
              bspush_ca_scan(v2, 17);
              v33 = OUTLINED_FUNCTION_6_28();
              v36 = 1;
              goto LABEL_31;
            case 16:
              goto LABEL_42;
            case 17:
              v33 = OUTLINED_FUNCTION_6_28();
              v36 = 2;
LABEL_31:
              v51 = testFldeq(v33, v34, v35, v36);
              v27 = v12;
              v23 = v12;
              if (!v51)
              {
                goto LABEL_42;
              }

              goto LABEL_10;
            case 18:
              bspush_ca_scan(v2, 20);
              v29 = OUTLINED_FUNCTION_6_28();
              v32 = 1;
              goto LABEL_18;
            case 19:
              goto LABEL_55;
            case 20:
              v29 = OUTLINED_FUNCTION_6_28();
              v32 = 2;
LABEL_18:
              v37 = testFldeq(v29, v30, v31, v32);
              v28 = v12;
              v23 = v12;
              if (!v37)
              {
                goto LABEL_55;
              }

              goto LABEL_10;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

      lpta_rpta_loadp(v2, (v2 + 197), (v2 + 199));
      OUTLINED_FUNCTION_12_27();
    }

    if (!mark_s())
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_30_15();
}

void get_por_trans_dur(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_25_19();
  v100 = *MEMORY[0x277D85DE8];
  v95 = 0;
  v94[0] = 0;
  v94[1] = 0;
  v93[0] = 0;
  v93[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v92, v3);
  OUTLINED_FUNCTION_23_20();
  bzero(v99, v4);
  if (setjmp(v99))
  {
    goto LABEL_3;
  }

  v5 = ventproc(v2, v92, v98, v97, v96, v99);
  if (v5)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_21(v5, &v95);
  push_ptr_init(v2, v94);
  push_ptr_init(v2, v93);
  fence_28(v2);
  por_trans_features(v2);
  while (2)
  {
    HIWORD(v95) = 30;
    v6 = OUTLINED_FUNCTION_28_16();
    starttest(v6, v7);
    v8 = OUTLINED_FUNCTION_3_29();
    if (!lpta_loadp_setscan_l(v8, v9, v10))
    {
      OUTLINED_FUNCTION_2_30();
      if (!test_string_s())
      {
        v11 = OUTLINED_FUNCTION_2_30();
        if (testFldeq(v11, v12, v13, 2) || advance_tok(v2, v14, v15, v16))
        {
          goto LABEL_9;
        }

        v85 = &v95;
        v86 = (v2 + 1592);
        v84 = v2;
        goto LABEL_47;
      }
    }

LABEL_17:
    starttest(v2, 5);
    v36 = OUTLINED_FUNCTION_3_29();
    if (!lpta_loadp_setscan_l(v36, v37, v38))
    {
LABEL_25:
      savescptr(v2, 6, v93);
      v59 = OUTLINED_FUNCTION_2_30();
      if (testFldeq(v59, v60, v61, 2))
      {
        goto LABEL_9;
      }

      if (advance_tok(v2, v62, v63, v64))
      {
        goto LABEL_9;
      }

      if (lpta_loadp_setscan_r(v2, v93, 4))
      {
        goto LABEL_9;
      }

      v65 = OUTLINED_FUNCTION_33_14();
      bspush_ca_scan(v65, v66);
      v67 = OUTLINED_FUNCTION_0_32();
      if (testFldeq(v67, v68, v69, 27) || advance_tok(v2, v70, v71, v72))
      {
        goto LABEL_9;
      }

LABEL_46:
      savescptr(v2, 7, v94);
      v84 = OUTLINED_FUNCTION_21_20();
      v86 = v94;
LABEL_47:
      get_por_vow_trans_dur(v84, v85, v86);
      goto LABEL_48;
    }

LABEL_18:
    starttest(v2, 9);
    v39 = OUTLINED_FUNCTION_3_29();
    if (lpta_loadp_setscan_l(v39, v40, v41))
    {
LABEL_19:
      v42 = OUTLINED_FUNCTION_22_20();
      starttest(v42, v43);
      v44 = OUTLINED_FUNCTION_3_29();
      if (lpta_loadp_setscan_l(v44, v45, v46))
      {
LABEL_20:
        starttest(v2, 17);
        v47 = OUTLINED_FUNCTION_3_29();
        if (lpta_loadp_setscan_l(v47, v48, v49))
        {
LABEL_21:
          starttest(v2, 22);
          v50 = OUTLINED_FUNCTION_3_29();
          if (lpta_loadp_setscan_l(v50, v51, v52))
          {
LABEL_43:
            v81 = OUTLINED_FUNCTION_3_29();
            if (!lpta_loadp_setscan_l(v81, v82, v83))
            {
              OUTLINED_FUNCTION_2_30();
              if (!test_string_s())
              {
                OUTLINED_FUNCTION_21_20();
                get_pause_trans_dur();
              }
            }
          }

          else
          {
            v53 = OUTLINED_FUNCTION_12_27();
            if (testFldeq(v53, v54, 3, v55) || advance_tok(v2, v56, v57, v58))
            {
              goto LABEL_9;
            }

            v87 = OUTLINED_FUNCTION_21_20();
            get_por_son_trans_dur(v87, v88);
          }

LABEL_48:
          OUTLINED_FUNCTION_26_19(SHIWORD(v95));
          break;
        }

        v77 = OUTLINED_FUNCTION_14_25();
        bspush_ca_scan(v77, v78);
        v28 = OUTLINED_FUNCTION_6_28();
        v31 = 4;
LABEL_40:
        if (testFldeq(v28, v29, v30, v31))
        {
          goto LABEL_9;
        }

LABEL_41:
        if (!advance_tok(v2, v19, v20, v21))
        {
          v79 = OUTLINED_FUNCTION_21_20();
          get_por_obstr_trans_dur(v79, v80);
          goto LABEL_48;
        }
      }

      else
      {
        v75 = OUTLINED_FUNCTION_32_14();
        bspush_ca_scan(v75, v76);
        v32 = OUTLINED_FUNCTION_0_32();
        v35 = 18;
LABEL_36:
        if (testFldeq(v32, v33, v34, v35))
        {
          goto LABEL_9;
        }

LABEL_37:
        if (!advance_tok(v2, v19, v20, v21))
        {
          v91 = OUTLINED_FUNCTION_21_20();
          get_por_trill_trans_dur(v91);
          goto LABEL_48;
        }
      }
    }

    else
    {
      v73 = OUTLINED_FUNCTION_34_13();
      bspush_ca_scan(v73, v74);
      v24 = OUTLINED_FUNCTION_0_32();
      v27 = 21;
LABEL_32:
      if (testFldeq(v24, v25, v26, v27))
      {
        goto LABEL_9;
      }

LABEL_33:
      if (!advance_tok(v2, v19, v20, v21))
      {
        v89 = OUTLINED_FUNCTION_21_20();
        get_portl_high_pal_trans_dur(v89, v90);
        goto LABEL_48;
      }
    }

LABEL_9:
    v17 = *(v2 + 104);
    if (v17)
    {
      v18 = OUTLINED_FUNCTION_27_17(v17);
    }

    else
    {
      v22 = OUTLINED_FUNCTION_35_12();
      v18 = vback(v22, v23);
    }

    switch(v18)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_17;
      case 3:
      case 4:
      case 8:
      case 12:
      case 16:
      case 21:
      case 23:
      case 24:
        goto LABEL_48;
      case 5:
        goto LABEL_18;
      case 6:
        goto LABEL_25;
      case 7:
        goto LABEL_46;
      case 9:
        goto LABEL_19;
      case 10:
        v24 = OUTLINED_FUNCTION_0_32();
        v27 = 17;
        goto LABEL_32;
      case 11:
        goto LABEL_33;
      case 13:
        goto LABEL_20;
      case 14:
        v32 = OUTLINED_FUNCTION_0_32();
        v35 = 19;
        goto LABEL_36;
      case 15:
        goto LABEL_37;
      case 17:
        goto LABEL_21;
      case 18:
        bspush_ca_scan(v2, 20);
        v28 = OUTLINED_FUNCTION_6_28();
        v31 = 2;
        goto LABEL_40;
      case 19:
        goto LABEL_41;
      case 20:
        v28 = OUTLINED_FUNCTION_6_28();
        v31 = 1;
        goto LABEL_40;
      case 22:
        goto LABEL_43;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_30_15();
}

uint64_t get_por_vow_trans_dur(uint64_t a1, uint64_t a2, __int16 *a3)
{
  OUTLINED_FUNCTION_25_19();
  v425 = *MEMORY[0x277D85DE8];
  v420 = 0;
  v419[0] = 0;
  v419[1] = 0;
  v417 = 0u;
  v418 = 0u;
  v416[0] = 0;
  v416[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(&v393, v6);
  OUTLINED_FUNCTION_23_20();
  bzero(v424, v7);
  if (!setjmp(v424))
  {
    v8 = ventproc(v3, &v393, v423, v422, v421, v424);
    if (!v8)
    {
      OUTLINED_FUNCTION_19_21(v8, &v420);
      get_parm(v3, v419, a3, -6);
      *&v418 = 0;
      *(&v418 + 6) = 0;
      LODWORD(v417) = -65532;
      push_ptr_init(v3, v416);
      fence_28(v3);
      HIWORD(v420) = 30;
      v10 = OUTLINED_FUNCTION_14_25();
      starttest(v10, v11);
      v12 = OUTLINED_FUNCTION_3_29();
      v15 = lpta_loadp_setscan_r(v12, v13, v14);
      v16 = 0;
      v17 = 0;
      if (v15)
      {
        while (2)
        {
          starttest(v3, 4);
          v18 = OUTLINED_FUNCTION_13_27();
          v20 = lpta_loadp_setscan_l(v18, v19, 4);
          v21 = v17;
          if (!v20)
          {
LABEL_7:
            OUTLINED_FUNCTION_20_20(5, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416[0]);
            OUTLINED_FUNCTION_2_30();
            if (test_string_s())
            {
              goto LABEL_27;
            }

            v22 = OUTLINED_FUNCTION_15_25();
            if (lpta_loadp_setscan_r(v22, v23, v24))
            {
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_2_30();
            if (test_string_s())
            {
              goto LABEL_27;
            }

LABEL_10:
            v25 = 75;
            goto LABEL_15;
          }

LABEL_78:
          v149 = v21;
          v150 = OUTLINED_FUNCTION_14_25();
          starttest(v150, v151);
          v152 = OUTLINED_FUNCTION_3_29();
          v155 = lpta_loadp_setscan_l(v152, v153, v154);
          LODWORD(v17) = v149;
          v156 = v149;
          if (v155)
          {
LABEL_79:
            v157 = v156;
            v158 = OUTLINED_FUNCTION_14_25();
            starttest(v158, v159);
            v160 = OUTLINED_FUNCTION_3_29();
            v163 = lpta_loadp_setscan_l(v160, v161, v162);
            LODWORD(v17) = v157;
            v164 = v157;
            if (!v163)
            {
LABEL_100:
              OUTLINED_FUNCTION_20_20(9, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416[0]);
              OUTLINED_FUNCTION_14_25();
              bspush_ca_scan_boa();
              v242 = OUTLINED_FUNCTION_0_32();
              v245 = 32;
LABEL_101:
              v246 = testFldeq(v242, v243, v244, v245);
              goto LABEL_102;
            }

LABEL_80:
            v17 = v164;
            v165 = OUTLINED_FUNCTION_14_25();
            starttest(v165, v166);
            v167 = OUTLINED_FUNCTION_3_29();
            if (lpta_loadp_setscan_r(v167, v168, v169))
            {
LABEL_81:
              v170 = OUTLINED_FUNCTION_14_25();
              starttest(v170, v171);
              v172 = OUTLINED_FUNCTION_3_29();
              if (lpta_loadp_setscan_l(v172, v173, v174))
              {
LABEL_82:
                v175 = OUTLINED_FUNCTION_14_25();
                starttest(v175, v176);
                v177 = OUTLINED_FUNCTION_3_29();
                if (lpta_loadp_setscan_l(v177, v178, v179))
                {
LABEL_83:
                  v180 = OUTLINED_FUNCTION_14_25();
                  starttest(v180, v181);
                  v182 = OUTLINED_FUNCTION_3_29();
                  if (lpta_loadp_setscan_l(v182, v183, v184))
                  {
                    goto LABEL_17;
                  }

                  v185 = OUTLINED_FUNCTION_10_28();
                  if (testFldeq(v185, v186, v187, 2) || advance_tok(v3, v188, v189, v190))
                  {
                    goto LABEL_27;
                  }

                  v191 = OUTLINED_FUNCTION_14_25();
                  starttest(v191, v192);
                  v193 = OUTLINED_FUNCTION_4_28();
                  if (lpta_loadp_setscan_r(v193, v194, v195))
                  {
LABEL_87:
                    v196 = OUTLINED_FUNCTION_14_25();
                    starttest(v196, v197);
                    v198 = OUTLINED_FUNCTION_4_28();
                    if (lpta_loadp_setscan_r(v198, v199, v200))
                    {
LABEL_88:
                      v201 = OUTLINED_FUNCTION_14_25();
                      starttest(v201, v202);
                      v203 = OUTLINED_FUNCTION_4_28();
                      if (lpta_loadp_setscan_r(v203, v204, v205))
                      {
LABEL_89:
                        v206 = OUTLINED_FUNCTION_14_25();
                        starttest(v206, v207);
                        v208 = OUTLINED_FUNCTION_4_28();
                        if (lpta_loadp_setscan_r(v208, v209, v210))
                        {
                          goto LABEL_17;
                        }

                        v211 = OUTLINED_FUNCTION_14_25();
                        bspush_ca_scan(v211, v212);
                        v213 = OUTLINED_FUNCTION_0_32();
                        v216 = testFldeq(v213, v214, v215, 19);
                        v47 = v17;
                        v67 = v17;
                        if (v216)
                        {
                          goto LABEL_28;
                        }

LABEL_91:
                        LODWORD(v17) = v67;
                        if (advance_tok(v3, v47, v62, v61))
                        {
                          goto LABEL_27;
                        }

                        v25 = 25;
                        goto LABEL_15;
                      }

                      v364 = OUTLINED_FUNCTION_14_25();
                      bspush_ca_scan(v364, v365);
                      v366 = OUTLINED_FUNCTION_0_32();
                      v369 = testFldeq(v366, v367, v368, 17);
                      v47 = v17;
                      v66 = v17;
                      if (v369)
                      {
                        goto LABEL_28;
                      }

LABEL_160:
                      LODWORD(v17) = v66;
                      goto LABEL_161;
                    }

                    v382 = OUTLINED_FUNCTION_6_28();
                    v385 = 6;
                    goto LABEL_171;
                  }

                  v386 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v386, v387);
                  v388 = OUTLINED_FUNCTION_10_28();
                  v391 = testFldeq(v388, v389, v390, 1);
                  v47 = v17;
                  v65 = v17;
                  if (v391)
                  {
                    goto LABEL_28;
                  }

LABEL_174:
                  LODWORD(v17) = v65;
LABEL_175:
                  if (advance_tok(v3, v47, v62, v61))
                  {
                    goto LABEL_27;
                  }

LABEL_176:
                  v25 = 50;
                  goto LABEL_15;
                }

                v301 = OUTLINED_FUNCTION_10_28();
                if (testFldeq(v301, v302, v303, 1) || advance_tok(v3, v304, v305, v306))
                {
                  goto LABEL_27;
                }

                v307 = OUTLINED_FUNCTION_14_25();
                starttest(v307, v308);
                v309 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v309, v310, v311))
                {
                  v382 = OUTLINED_FUNCTION_0_32();
                  v385 = 25;
LABEL_171:
                  if (testFldeq(v382, v383, v384, v385))
                  {
                    goto LABEL_27;
                  }

LABEL_72:
                  if (advance_tok(v3, v47, v62, v61))
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_10;
                }

LABEL_122:
                v312 = OUTLINED_FUNCTION_14_25();
                starttest(v312, v313);
                v314 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v314, v315, v316))
                {
                  v379 = OUTLINED_FUNCTION_9_28();
                  if (testFldeq(v379, v380, v381, 1))
                  {
                    goto LABEL_27;
                  }

                  OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan_boa();
                  v242 = OUTLINED_FUNCTION_0_32();
                  v245 = 7;
                  goto LABEL_101;
                }

LABEL_123:
                v317 = OUTLINED_FUNCTION_14_25();
                starttest(v317, v318);
                v319 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v319, v320, v321))
                {
                  v362 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v362, v363);
                  OUTLINED_FUNCTION_2_30();
                  if (test_string_s())
                  {
                    goto LABEL_27;
                  }

LABEL_158:
                  v25 = 35;
                  goto LABEL_15;
                }

LABEL_124:
                v322 = OUTLINED_FUNCTION_14_25();
                starttest(v322, v323);
                v324 = OUTLINED_FUNCTION_4_28();
                v327 = lpta_loadp_setscan_l(v324, v325, v326);
                v328 = v17;
                if (!v327)
                {
LABEL_125:
                  OUTLINED_FUNCTION_20_20(45, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416[0]);
                  OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan_boa();
                  v242 = OUTLINED_FUNCTION_0_32();
                  v245 = 28;
                  goto LABEL_101;
                }

LABEL_128:
                LODWORD(v17) = v328;
                v329 = OUTLINED_FUNCTION_14_25();
                starttest(v329, v330);
                v331 = OUTLINED_FUNCTION_4_28();
                if (lpta_loadp_setscan_r(v331, v332, v333))
                {
LABEL_129:
                  v334 = OUTLINED_FUNCTION_14_25();
                  starttest(v334, v335);
                  v336 = OUTLINED_FUNCTION_4_28();
                  v339 = lpta_loadp_setscan_l(v336, v337, v338);
                  v340 = v17;
                  if (v339)
                  {
                    goto LABEL_17;
                  }

LABEL_141:
                  LODWORD(v17) = v340;
                  OUTLINED_FUNCTION_20_20(48, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416[0]);
                  goto LABEL_142;
                }

                v347 = OUTLINED_FUNCTION_10_28();
                v350 = 3;
                goto LABEL_150;
              }

              v253 = OUTLINED_FUNCTION_10_28();
              if (testFldeq(v253, v254, v255, 3) || advance_tok(v3, v256, v257, v258))
              {
                goto LABEL_27;
              }

              v259 = OUTLINED_FUNCTION_14_25();
              starttest(v259, v260);
              v261 = OUTLINED_FUNCTION_4_28();
              if (lpta_loadp_setscan_r(v261, v262, v263))
              {
LABEL_111:
                v264 = OUTLINED_FUNCTION_14_25();
                starttest(v264, v265);
                v266 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v266, v267, v268))
                {
                  v360 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v360, v361);
                  v138 = OUTLINED_FUNCTION_0_32();
                  v141 = 37;
LABEL_67:
                  v142 = testFldeq(v138, v139, v140, v141);
                  v61 = v17;
                  v47 = v17;
                  if (v142)
                  {
                    goto LABEL_28;
                  }

LABEL_68:
                  LODWORD(v17) = v61;
                  goto LABEL_72;
                }

LABEL_112:
                v269 = OUTLINED_FUNCTION_14_25();
                starttest(v269, v270);
                v271 = OUTLINED_FUNCTION_4_28();
                if (!lpta_loadp_setscan_r(v271, v272, v273))
                {
                  v358 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v358, v359);
                  v129 = OUTLINED_FUNCTION_0_32();
                  v132 = 17;
LABEL_75:
                  v148 = testFldeq(v129, v130, v131, v132);
                  v62 = v17;
                  v47 = v17;
                  if (v148)
                  {
                    goto LABEL_28;
                  }

LABEL_76:
                  LODWORD(v17) = v62;
LABEL_161:
                  if (advance_tok(v3, v47, v62, v61))
                  {
                    goto LABEL_27;
                  }

                  v25 = 45;
                  goto LABEL_15;
                }

LABEL_113:
                v274 = OUTLINED_FUNCTION_14_25();
                starttest(v274, v275);
                v276 = OUTLINED_FUNCTION_4_28();
                if (lpta_loadp_setscan_r(v276, v277, v278))
                {
LABEL_114:
                  v279 = OUTLINED_FUNCTION_14_25();
                  starttest(v279, v280);
                  v281 = OUTLINED_FUNCTION_4_28();
                  if (!lpta_loadp_setscan_r(v281, v282, v283))
                  {
                    v353 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v353, v354);
                    v143 = OUTLINED_FUNCTION_0_32();
                    v146 = 23;
LABEL_70:
                    v147 = testFldeq(v143, v144, v145, v146);
                    v63 = v17;
                    v47 = v17;
                    if (v147)
                    {
                      goto LABEL_28;
                    }

LABEL_71:
                    LODWORD(v17) = v63;
                    goto LABEL_72;
                  }

LABEL_115:
                  v284 = OUTLINED_FUNCTION_14_25();
                  starttest(v284, v285);
                  v286 = OUTLINED_FUNCTION_4_28();
                  if (lpta_loadp_setscan_r(v286, v287, v288))
                  {
LABEL_116:
                    v289 = OUTLINED_FUNCTION_14_25();
                    starttest(v289, v290);
                    v291 = OUTLINED_FUNCTION_4_28();
                    if (lpta_loadp_setscan_r(v291, v292, v293))
                    {
LABEL_117:
                      v294 = OUTLINED_FUNCTION_14_25();
                      starttest(v294, v295);
                      v296 = OUTLINED_FUNCTION_4_28();
                      v299 = lpta_loadp_setscan_l(v296, v297, v298);
                      v300 = v17;
                      if (v299)
                      {
                        goto LABEL_17;
                      }

LABEL_133:
                      LODWORD(v17) = v300;
                      OUTLINED_FUNCTION_20_20(32, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416[0]);
LABEL_142:
                      OUTLINED_FUNCTION_14_25();
                      bspush_ca_scan_boa();
                      v341 = OUTLINED_FUNCTION_9_28();
                      if (testFldeq(v341, v342, v343, 7))
                      {
                        goto LABEL_27;
                      }

                      v246 = advance_tok(v3, v344, v345, v346);
LABEL_102:
                      if (v246)
                      {
                        LODWORD(v47) = v17;
                      }

                      else
                      {
                        LODWORD(v47) = 1;
                      }

                      goto LABEL_28;
                    }

                    v347 = OUTLINED_FUNCTION_10_28();
                    v350 = 1;
LABEL_150:
                    if (testFldeq(v347, v348, v349, v350))
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_175;
                  }

                  v351 = OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan(v351, v352);
                  v133 = OUTLINED_FUNCTION_9_28();
                  v136 = 3;
LABEL_62:
                  v137 = testFldeq(v133, v134, v135, v136);
                  v64 = v17;
                  v47 = v17;
                  if (v137)
                  {
                    goto LABEL_28;
                  }

LABEL_63:
                  LODWORD(v17) = v64;
                }

                else
                {
                  v355 = OUTLINED_FUNCTION_9_28();
                  if (testFldeq(v355, v356, v357, 4))
                  {
                    goto LABEL_27;
                  }
                }

                if (advance_tok(v3, v47, v62, v61))
                {
                  goto LABEL_27;
                }

LABEL_65:
                v25 = 40;
                goto LABEL_15;
              }

              v370 = OUTLINED_FUNCTION_9_28();
              if (testFldeq(v370, v371, v372, 2))
              {
                goto LABEL_27;
              }

              v373 = OUTLINED_FUNCTION_12_27();
              if (testFldeq(v373, v374, 2, v375) || advance_tok(v3, v376, v377, v378))
              {
                goto LABEL_27;
              }

              goto LABEL_14;
            }

            v247 = OUTLINED_FUNCTION_0_32();
            if (testFldeq(v247, v248, v249, 19) || advance_tok(v3, v250, v251, v252))
            {
              goto LABEL_27;
            }
          }

          else
          {
LABEL_93:
            OUTLINED_FUNCTION_20_20(7, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416[0]);
            if (savetok(v3, &v417))
            {
              goto LABEL_27;
            }

            if (advance_tok(v3, v217, v218, v219))
            {
              goto LABEL_27;
            }

            v220 = OUTLINED_FUNCTION_15_25();
            if (lpta_loadp_setscan_r(v220, v221, v222))
            {
              goto LABEL_27;
            }

            v223 = OUTLINED_FUNCTION_0_32();
            if (npush_fld(v223, v224, v225))
            {
              goto LABEL_27;
            }

            if (advance_tok(v3, v226, v227, v228))
            {
              goto LABEL_27;
            }

            WORD1(v417) = 0;
            npush_vf(v3, &v417, v229, v230, v231, v232, v233, v234);
            if (if_testeq(v3, v235, v236, v237, v238, v239, v240, v241))
            {
              goto LABEL_27;
            }
          }

          v25 = 10;
LABEL_15:
          v29 = v17;
LABEL_16:
          HIWORD(v420) = v25;
          LODWORD(v17) = v29;
LABEL_17:
          v30 = OUTLINED_FUNCTION_14_25();
          starttest(v30, v31);
          v32 = OUTLINED_FUNCTION_3_29();
          if (lpta_loadp_setscan_r(v32, v33, v34))
          {
LABEL_18:
            v35 = OUTLINED_FUNCTION_14_25();
            starttest(v35, v36);
            v37 = OUTLINED_FUNCTION_3_29();
            if (!lpta_loadp_setscan_l(v37, v38, v39))
            {
              v40 = OUTLINED_FUNCTION_0_32();
              if (!testFldeq(v40, v41, v42, 27))
              {
                v46 = advance_tok(v3, v43, v44, v45);
                LODWORD(v47) = v17;
                if (!v46)
                {
                  v48 = HIWORD(v420);
                  if (SHIWORD(v420) < 43)
                  {
LABEL_138:
                    if (v48 > 32)
                    {
                      v49 = 10;
                    }

                    else
                    {
LABEL_139:
                      v49 = 1;
                    }
                  }

                  else
                  {
                    v49 = 20;
                  }

                  goto LABEL_153;
                }

LABEL_28:
                v58 = v3[13];
                if (v58)
                {
                  v59 = OUTLINED_FUNCTION_27_17(v58);
                  v17 = v47;
                }

                else
                {
                  v59 = vback(v3, v47);
                  v17 = 0;
                }

                v60 = v59 - 1;
                v61 = v17;
                v62 = v17;
                v63 = v17;
                v64 = v17;
                v65 = v17;
                v66 = v17;
                v67 = v17;
                v25 = 35;
                v29 = v17;
                switch(v60)
                {
                  case 0:
                    continue;
                  case 1:
                    v16 = v17;
                    goto LABEL_12;
                  case 2:
                  case 15:
                  case 35:
                  case 52:
                    goto LABEL_17;
                  case 3:
                    v21 = v17;
                    goto LABEL_78;
                  case 4:
                    goto LABEL_7;
                  case 5:
                    v156 = v17;
                    goto LABEL_79;
                  case 6:
                    goto LABEL_93;
                  case 7:
                    v164 = v17;
                    goto LABEL_80;
                  case 8:
                    goto LABEL_100;
                  case 9:
                    bspop_boa(v3);
                    v105 = advance_tok(v3, v102, v103, v104);
                    LODWORD(v47) = v17;
                    if (v105)
                    {
                      goto LABEL_28;
                    }

                    v106 = OUTLINED_FUNCTION_15_25();
                    v109 = lpta_loadp_setscan_r(v106, v107, v108);
                    LODWORD(v47) = v17;
                    if (v109)
                    {
                      goto LABEL_28;
                    }

                    v110 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v110, v111);
                    goto LABEL_49;
                  case 10:
                    v95 = OUTLINED_FUNCTION_0_32();
                    v98 = testFldeq(v95, v96, v97, 27);
                    LODWORD(v47) = v17;
                    if (v98)
                    {
                      goto LABEL_28;
                    }

                    v101 = advance_tok(v3, v17, v99, v100);
                    LODWORD(v47) = v17;
                    if (v101)
                    {
                      goto LABEL_28;
                    }

                    goto LABEL_49;
                  case 11:
LABEL_49:
                    v72 = OUTLINED_FUNCTION_0_32();
                    v75 = 18;
                    goto LABEL_50;
                  case 12:
                    goto LABEL_81;
                  case 13:
                    goto LABEL_82;
                  case 14:
                    goto LABEL_111;
                  case 16:
                    goto LABEL_112;
                  case 17:
                    v138 = OUTLINED_FUNCTION_0_32();
                    v141 = 25;
                    goto LABEL_67;
                  case 18:
                    goto LABEL_68;
                  case 19:
                    goto LABEL_113;
                  case 20:
                    v127 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v127, v128);
                    v129 = OUTLINED_FUNCTION_0_32();
                    v132 = 21;
                    goto LABEL_75;
                  case 21:
                    goto LABEL_76;
                  case 22:
                    v129 = OUTLINED_FUNCTION_0_32();
                    v132 = 20;
                    goto LABEL_75;
                  case 23:
                    goto LABEL_114;
                  case 24:
                    goto LABEL_115;
                  case 25:
                    v143 = OUTLINED_FUNCTION_0_32();
                    v146 = 24;
                    goto LABEL_70;
                  case 26:
                    goto LABEL_71;
                  case 27:
                    goto LABEL_116;
                  case 28:
                    v133 = OUTLINED_FUNCTION_9_28();
                    v136 = 2;
                    goto LABEL_62;
                  case 29:
                    goto LABEL_63;
                  case 30:
                    goto LABEL_117;
                  case 31:
                    v300 = v17;
                    goto LABEL_133;
                  case 32:
                  case 48:
                    bspop_boa(v3);
                    v68 = OUTLINED_FUNCTION_15_25();
                    v71 = lpta_loadp_setscan_r(v68, v69, v70);
                    LODWORD(v47) = v17;
                    if (v71)
                    {
                      goto LABEL_28;
                    }

                    v72 = OUTLINED_FUNCTION_9_28();
                    v75 = 7;
                    goto LABEL_50;
                  case 33:
                    goto LABEL_83;
                  case 34:
                    goto LABEL_122;
                  case 36:
                    goto LABEL_123;
                  case 37:
                    bspop_boa(v3);
                    v126 = advance_tok(v3, v123, v124, v125);
                    LODWORD(v47) = v17;
                    if (!v126)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_28;
                  case 38:
                    goto LABEL_124;
                  case 39:
                  case 41:
                    v92 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v92, v93);
                    goto LABEL_41;
                  case 40:
                    goto LABEL_16;
                  case 42:
LABEL_41:
                    OUTLINED_FUNCTION_2_30();
                    v94 = test_string_s();
                    LODWORD(v47) = v17;
                    if (!v94)
                    {
                      goto LABEL_158;
                    }

                    goto LABEL_28;
                  case 43:
                    v328 = v17;
                    goto LABEL_128;
                  case 44:
                    goto LABEL_125;
                  case 45:
                    bspop_boa(v3);
                    v79 = advance_tok(v3, v76, v77, v78);
                    LODWORD(v47) = v17;
                    if (v79)
                    {
                      goto LABEL_28;
                    }

                    v80 = OUTLINED_FUNCTION_15_25();
                    v83 = lpta_loadp_setscan_r(v80, v81, v82);
                    LODWORD(v47) = v17;
                    if (v83)
                    {
                      goto LABEL_28;
                    }

                    v72 = OUTLINED_FUNCTION_0_32();
                    v75 = 28;
LABEL_50:
                    v112 = testFldeq(v72, v73, v74, v75);
                    LODWORD(v47) = v17;
                    if (!v112)
                    {
                      v115 = advance_tok(v3, v17, v113, v114);
                      LODWORD(v47) = v17;
                      if (!v115)
                      {
                        goto LABEL_176;
                      }
                    }

                    goto LABEL_28;
                  case 46:
                    goto LABEL_129;
                  case 47:
                    v340 = v17;
                    goto LABEL_141;
                  case 49:
                    goto LABEL_87;
                  case 50:
                    v84 = OUTLINED_FUNCTION_10_28();
                    v87 = testFldeq(v84, v85, v86, 3);
                    v65 = v17;
                    v47 = v17;
                    if (!v87)
                    {
                      goto LABEL_174;
                    }

                    goto LABEL_28;
                  case 51:
                    goto LABEL_174;
                  case 53:
                    goto LABEL_88;
                  case 54:
                    goto LABEL_89;
                  case 55:
                    v116 = OUTLINED_FUNCTION_14_25();
                    bspush_ca_scan(v116, v117);
                    v88 = OUTLINED_FUNCTION_0_32();
                    v91 = 21;
                    goto LABEL_54;
                  case 56:
                    goto LABEL_160;
                  case 57:
                    v88 = OUTLINED_FUNCTION_0_32();
                    v91 = 20;
LABEL_54:
                    v118 = testFldeq(v88, v89, v90, v91);
                    v66 = v17;
                    v47 = v17;
                    if (!v118)
                    {
                      goto LABEL_160;
                    }

                    goto LABEL_28;
                  case 58:
                    v119 = OUTLINED_FUNCTION_0_32();
                    v122 = testFldeq(v119, v120, v121, 18);
                    v67 = v17;
                    v47 = v17;
                    if (!v122)
                    {
                      goto LABEL_91;
                    }

                    goto LABEL_28;
                  case 59:
                    goto LABEL_91;
                  case 60:
                    goto LABEL_18;
                  case 61:
                    v57 = HIWORD(v420);
                    goto LABEL_135;
                  case 62:
                  case 63:
                  case 65:
                    goto LABEL_154;
                  case 64:
                    v48 = HIWORD(v420);
                    goto LABEL_138;
                  case 66:
                    goto LABEL_139;
                  default:
                    goto LABEL_3;
                }
              }

LABEL_27:
              LODWORD(v47) = v17;
              goto LABEL_28;
            }

LABEL_154:
            OUTLINED_FUNCTION_26_19(SHIWORD(v420));
            goto LABEL_4;
          }

          break;
        }

        v50 = OUTLINED_FUNCTION_0_32();
        if (testFldeq(v50, v51, v52, 27))
        {
          goto LABEL_27;
        }

        v56 = advance_tok(v3, v53, v54, v55);
        LODWORD(v47) = v17;
        if (v56)
        {
          goto LABEL_28;
        }

        v57 = HIWORD(v420);
        if (SHIWORD(v420) < 43)
        {
LABEL_135:
          if (v57 < 33)
          {
            goto LABEL_154;
          }

          v49 = v57 - 10;
        }

        else
        {
          v49 = HIWORD(v420) - 20;
        }

LABEL_153:
        HIWORD(v420) = v49;
        goto LABEL_154;
      }

LABEL_12:
      LODWORD(v17) = v16;
      v26 = OUTLINED_FUNCTION_14_25();
      if (test_synch(v26, v27, 1, v28))
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_2_30();
      if (test_string_s())
      {
        goto LABEL_27;
      }

LABEL_14:
      v25 = 60;
      goto LABEL_15;
    }
  }

LABEL_3:
  v4 = 94;
LABEL_4:
  vretproc(v3);
  return v4;
}

void get_portl_high_pal_trans_dur(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_25_19();
  v114 = *MEMORY[0x277D85DE8];
  v109 = 0;
  v108[0] = 0;
  v108[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v107, v3);
  OUTLINED_FUNCTION_23_20();
  bzero(v113, v4);
  if (!setjmp(v113))
  {
    v5 = ventproc(v2, v107, v112, v111, v110, v113);
    if (!v5)
    {
      OUTLINED_FUNCTION_19_21(v5, &v109);
      v6 = OUTLINED_FUNCTION_21_20();
      push_ptr_init(v6, v7);
      fence_28(v2);
      HIWORD(v109) = 50;
      v8 = OUTLINED_FUNCTION_13_27();
      three_cluster(v8);
      v9 = 0;
      v10 = 3;
      while (2)
      {
        v11 = OUTLINED_FUNCTION_28_16();
        starttest(v11, v12);
        v13 = OUTLINED_FUNCTION_1_30();
        v16 = lpta_loadp_setscan_l(v13, v14, v15);
        v17 = v9;
        if (!v16)
        {
LABEL_25:
          v106 = v10;
          v9 = v17;
          savescptr(v2, 4, v108);
          v67 = OUTLINED_FUNCTION_11_27();
          if (!testFldeq(v67, v68, v69, v70) && !advance_tok(v2, v71, v72, v73) && !lpta_loadp_setscan_r(v2, v108, 4))
          {
            OUTLINED_FUNCTION_8_28();
            if (!test_string_s())
            {
              v105 = 15;
              goto LABEL_54;
            }
          }

          goto LABEL_29;
        }

LABEL_6:
        v106 = v10;
        starttest(v2, 5);
        v18 = OUTLINED_FUNCTION_1_30();
        if (lpta_loadp_setscan_r(v18, v19, v20))
        {
LABEL_7:
          v21 = OUTLINED_FUNCTION_22_20();
          starttest(v21, v22);
          v23 = OUTLINED_FUNCTION_1_30();
          if (!lpta_loadp_setscan_r(v23, v24, v25))
          {
            bspush_ca_scan_boa();
LABEL_22:
            v65 = OUTLINED_FUNCTION_33_14();
            if (test_synch(v65, v66, 1, &unk_2806BBF42))
            {
              v9 = v9;
            }

            else
            {
              v9 = 1;
            }

            goto LABEL_29;
          }

LABEL_8:
          v26 = OUTLINED_FUNCTION_1_30();
          if (!lpta_loadp_setscan_r(v26, v27, v28))
          {
            OUTLINED_FUNCTION_8_28();
            if (!test_string_s())
            {
              v105 = 20;
              goto LABEL_54;
            }
          }

LABEL_10:
          v29 = OUTLINED_FUNCTION_1_30();
          if (!lpta_loadp_setscan_r(v29, v30, v31))
          {
            OUTLINED_FUNCTION_8_28();
            if (!test_string_s())
            {
              v105 = 35;
              goto LABEL_54;
            }
          }

LABEL_12:
          v32 = OUTLINED_FUNCTION_34_13();
          starttest(v32, v33);
          v34 = OUTLINED_FUNCTION_1_30();
          if (lpta_loadp_setscan_r(v34, v35, v36))
          {
LABEL_55:
            OUTLINED_FUNCTION_26_19(SHIWORD(v109));
            break;
          }

          v37 = OUTLINED_FUNCTION_17_23();
          if (!testFldeq(v37, v38, 3, v39) && !advance_tok(v2, v40, v41, v42))
          {
            v43 = OUTLINED_FUNCTION_32_14();
            starttest(v43, v44);
            v45 = OUTLINED_FUNCTION_1_30();
            if (!lpta_loadp_setscan_r(v45, v46, v47))
            {
              v48 = OUTLINED_FUNCTION_17_23();
              if (!npush_fld(v48, v49, 8u))
              {
                v50 = OUTLINED_FUNCTION_35_12();
                npush_i(v50);
                if (!if_testeq(v2, v51, v52, v53, v54, v55, v56, v57) && !advance_tok(v2, v58, v59, v60))
                {
                  v105 = 30;
LABEL_54:
                  HIWORD(v109) = v105;
                  goto LABEL_55;
                }
              }

              goto LABEL_29;
            }

LABEL_52:
            v105 = 50;
            goto LABEL_54;
          }
        }

        else
        {
          bspush_ca_scan(v2, 6);
          v61 = v2;
          v62 = 4;
          v63 = 6;
          v64 = 3;
LABEL_38:
          v81 = testFldeq(v61, v62, v63, v64);
          v80 = v9;
          if (v81)
          {
            goto LABEL_29;
          }

LABEL_39:
          v9 = v80;
          if (!advance_tok(v2, v80, v76, v77))
          {
            starttest(v2, 8);
            v82 = OUTLINED_FUNCTION_1_30();
            if (lpta_loadp_setscan_r(v82, v83, v84))
            {
LABEL_41:
              starttest(v2, 10);
              v85 = OUTLINED_FUNCTION_1_30();
              if (lpta_loadp_setscan_r(v85, v86, v87))
              {
LABEL_53:
                v105 = 70;
                goto LABEL_54;
              }

              v88 = OUTLINED_FUNCTION_17_23();
              if (npush_fld(v88, v89, 8u))
              {
                goto LABEL_29;
              }

              npush_i(v2);
              if (if_testeq(v2, v90, v91, v92, v93, v94, v95, v96) || advance_tok(v2, v97, v98, v99))
              {
                goto LABEL_29;
              }

              goto LABEL_52;
            }

            v100 = OUTLINED_FUNCTION_17_23();
            if (!testFldeq(v100, v101, 5, 5) && !advance_tok(v2, v102, v103, v104))
            {
              v105 = 75;
              goto LABEL_54;
            }
          }
        }

LABEL_29:
        v74 = *(v2 + 104);
        if (v74)
        {
          v75 = OUTLINED_FUNCTION_27_17(v74);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_18_22();
          v75 = vback(v78, v79);
          v9 = 0;
        }

        v80 = v9;
        v105 = 50;
        switch(v75)
        {
          case 1:
            v10 = v106;
            continue;
          case 2:
          case 9:
          case 19:
            goto LABEL_55;
          case 3:
            v10 = v106;
            goto LABEL_6;
          case 4:
            v17 = v9;
            v10 = v106;
            goto LABEL_25;
          case 5:
            goto LABEL_7;
          case 6:
            v61 = OUTLINED_FUNCTION_17_23();
            v63 = 0;
            v64 = 32;
            goto LABEL_38;
          case 7:
            goto LABEL_39;
          case 8:
            goto LABEL_41;
          case 10:
            goto LABEL_53;
          case 11:
            goto LABEL_8;
          case 12:
            bspop_boa(v2);
            bspush_ca_scan(v2, 14);
            OUTLINED_FUNCTION_8_28();
            goto LABEL_35;
          case 13:
            goto LABEL_22;
          case 14:
            OUTLINED_FUNCTION_8_28();
LABEL_35:
            if (!test_string_s())
            {
              goto LABEL_52;
            }

            goto LABEL_29;
          case 15:
          case 18:
            goto LABEL_54;
          case 16:
            goto LABEL_10;
          case 17:
            goto LABEL_12;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_30_15();
}

uint64_t get_por_trill_trans_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_25_19();
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v23, v3);
  OUTLINED_FUNCTION_23_20();
  bzero(v28, v4);
  if (setjmp(v28) || (v5 = ventproc(v1, v23, v27, v26, v25, v28), v5))
  {
LABEL_3:
    v2 = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_19_21(v5, &v24);
  fence_28(v1);
  v7 = OUTLINED_FUNCTION_13_27();
  three_cluster(v7);
  while (2)
  {
    v8 = OUTLINED_FUNCTION_13_27();
    if (lpta_loadp_setscan_l(v8, v9, 4) || test_string_s())
    {
LABEL_8:
      starttest(v1, 4);
      v10 = OUTLINED_FUNCTION_13_27();
      if (lpta_loadp_setscan_r(v10, v11, 4))
      {
LABEL_16:
        v20 = OUTLINED_FUNCTION_3_29();
        if (lpta_loadp_setscan_r(v20, v21, v22) || (OUTLINED_FUNCTION_2_30(), test_string_s()))
        {
LABEL_18:
          v19 = 45;
          goto LABEL_20;
        }
      }

      else if (testFldeq(v1, 4u, 1, 1) || advance_tok(v1, v12, v13, v14))
      {
        v15 = *(v1 + 104);
        if (v15)
        {
          v16 = OUTLINED_FUNCTION_27_17(v15);
        }

        else
        {
          v17 = OUTLINED_FUNCTION_35_12();
          v16 = vback(v17, v18);
        }

        switch(v16)
        {
          case 1:
            continue;
          case 2:
            v19 = HIWORD(v24);
            goto LABEL_21;
          case 3:
            goto LABEL_8;
          case 4:
            goto LABEL_16;
          case 5:
            goto LABEL_18;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

  v19 = 10;
LABEL_20:
  HIWORD(v24) = v19;
LABEL_21:
  OUTLINED_FUNCTION_26_19(v19);
LABEL_4:
  vretproc(v1);
  return v2;
}

void get_por_obstr_trans_dur(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_25_19();
  v267 = *MEMORY[0x277D85DE8];
  v262 = 0;
  v260 = 0u;
  v261 = 0u;
  v259[0] = 0;
  v259[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v258, v3);
  OUTLINED_FUNCTION_23_20();
  bzero(v266, v4);
  if (!setjmp(v266))
  {
    v5 = ventproc(v2, v258, v265, v264, v263, v266);
    if (!v5)
    {
      OUTLINED_FUNCTION_19_21(v5, &v262);
      *&v261 = 0;
      *(&v261 + 6) = 0;
      LODWORD(v260) = -65532;
      v6 = OUTLINED_FUNCTION_22_20();
      push_ptr_init(v6, v7);
      fence_28(v2);
      HIWORD(v262) = 30;
      v8 = OUTLINED_FUNCTION_13_27();
      three_cluster(v8);
      v9 = 0;
      v10 = 3;
      while (2)
      {
        starttest(v2, v10);
        v11 = OUTLINED_FUNCTION_1_30();
        v14 = lpta_loadp_setscan_l(v11, v12, v13);
        v15 = v9;
        if (!v14)
        {
LABEL_11:
          v257 = v10;
          v9 = v15;
          savescptr(v2, 4, v259);
          if (!savetok(v2, &v260) && !advance_tok(v2, v37, v38, v39))
          {
            v40 = OUTLINED_FUNCTION_22_20();
            if (!lpta_loadp_setscan_r(v40, v41, 4))
            {
              v42 = OUTLINED_FUNCTION_17_23();
              if (!npush_fld(v42, v43, 0) && !advance_tok(v2, v44, v45, v46))
              {
                WORD1(v260) = 0;
                npush_vf(v2, &v260, v47, v48, v49, v50, v51, v52);
                v60 = if_testeq(v2, v53, v54, v55, v56, v57, v58, v59);
                goto LABEL_17;
              }
            }
          }

          goto LABEL_121;
        }

LABEL_6:
        v257 = v10;
        v16 = v9;
        v17 = OUTLINED_FUNCTION_33_14();
        starttest(v17, v18);
        v19 = OUTLINED_FUNCTION_1_30();
        if (!lpta_loadp_setscan_l(v19, v20, v21))
        {
LABEL_7:
          savescptr(v2, 6, v259);
          v22 = OUTLINED_FUNCTION_11_27();
          if (!testFldeq(v22, v23, v24, v25) && !advance_tok(v2, v26, v27, v28))
          {
            v29 = OUTLINED_FUNCTION_22_20();
            if (!lpta_loadp_setscan_r(v29, v30, 4))
            {
              v31 = OUTLINED_FUNCTION_34_13();
              bspush_ca_scan(v31, v32);
              v33 = OUTLINED_FUNCTION_11_27();
LABEL_46:
              v123 = testFldeq(v33, v34, v35, v36);
              v64 = v9;
              v61 = v9;
              if (v123)
              {
                goto LABEL_18;
              }

LABEL_47:
              v9 = v64;
              v60 = advance_tok(v2, v61, v64, v65);
LABEL_17:
              v61 = v9;
              if (v60)
              {
                goto LABEL_18;
              }

              goto LABEL_136;
            }
          }

          goto LABEL_121;
        }

LABEL_62:
        v132 = OUTLINED_FUNCTION_28_16();
        starttest(v132, v133);
        v134 = OUTLINED_FUNCTION_1_30();
        if (!lpta_loadp_setscan_r(v134, v135, v136))
        {
          v183 = OUTLINED_FUNCTION_11_27();
          if (testFldeq(v183, v184, v185, v186))
          {
            v61 = v16;
          }

          else
          {
            v204 = advance_tok(v2, v187, v188, v189);
            v61 = v16;
            if (!v204)
            {
LABEL_136:
              v70 = 1;
              goto LABEL_137;
            }
          }

          goto LABEL_18;
        }

LABEL_63:
        starttest(v2, 11);
        v137 = OUTLINED_FUNCTION_1_30();
        v9 = v16;
        if (lpta_loadp_setscan_l(v137, v138, v139))
        {
LABEL_64:
          starttest(v2, 17);
          v140 = OUTLINED_FUNCTION_1_30();
          v9 = v16;
          if (lpta_loadp_setscan_l(v140, v141, v142))
          {
LABEL_65:
            v143 = OUTLINED_FUNCTION_1_30();
            if (!lpta_loadp_setscan_r(v143, v144, v145))
            {
              OUTLINED_FUNCTION_8_28();
              if (!test_string_s())
              {
                goto LABEL_140;
              }
            }

LABEL_67:
            starttest(v2, 20);
            v146 = OUTLINED_FUNCTION_1_30();
            LODWORD(v9) = v16;
            if (lpta_loadp_setscan_l(v146, v147, v148))
            {
LABEL_68:
              starttest(v2, 23);
              v149 = OUTLINED_FUNCTION_1_30();
              if (!lpta_loadp_setscan_r(v149, v150, v151))
              {
                bspush_ca_scan(v2, 24);
                OUTLINED_FUNCTION_8_28();
                v209 = test_string_s();
                v61 = v16;
                if (!v209)
                {
LABEL_139:
                  v70 = 10;
                  goto LABEL_137;
                }

                goto LABEL_18;
              }

LABEL_69:
              starttest(v2, 26);
              v152 = OUTLINED_FUNCTION_1_30();
              LODWORD(v9) = v16;
              if (lpta_loadp_setscan_l(v152, v153, v154))
              {
LABEL_70:
                starttest(v2, 29);
                v155 = OUTLINED_FUNCTION_1_30();
                if (lpta_loadp_setscan_r(v155, v156, v157))
                {
                  v9 = v16;
LABEL_72:
                  starttest(v2, 32);
                  v158 = OUTLINED_FUNCTION_1_30();
                  if (lpta_loadp_setscan_l(v158, v159, v160))
                  {
LABEL_73:
                    starttest(v2, 44);
                    v161 = OUTLINED_FUNCTION_1_30();
                    if (lpta_loadp_setscan_l(v161, v162, v163))
                    {
LABEL_74:
                      v164 = OUTLINED_FUNCTION_14_25();
                      starttest(v164, v165);
                      v166 = OUTLINED_FUNCTION_1_30();
                      if (!lpta_loadp_setscan_l(v166, v167, v168))
                      {
LABEL_75:
                        savescptr(v2, 50, v259);
                        v169 = OUTLINED_FUNCTION_17_23();
                        if (!testFldeq(v169, v170, 5, 4) && !advance_tok(v2, v171, v172, v173))
                        {
                          v174 = OUTLINED_FUNCTION_22_20();
                          if (!lpta_loadp_setscan_r(v174, v175, 4))
                          {
                            v176 = OUTLINED_FUNCTION_8_28();
                            if (!testFldeq(v176, v177, v178, 2))
                            {
                              v182 = advance_tok(v2, v179, v180, v181);
                              v61 = v9;
                              if (v182)
                              {
                                goto LABEL_18;
                              }

                              v70 = 35;
                              goto LABEL_137;
                            }
                          }
                        }

                        goto LABEL_121;
                      }

LABEL_138:
                      OUTLINED_FUNCTION_26_19(SHIWORD(v262));
                      goto LABEL_3;
                    }

                    v231 = OUTLINED_FUNCTION_17_23();
                    if (testFldeq(v231, v232, 5, 2) || advance_tok(v2, v233, v234, v235))
                    {
                      goto LABEL_121;
                    }

                    starttest(v2, 45);
                    v236 = OUTLINED_FUNCTION_1_30();
                    if (!lpta_loadp_setscan_r(v236, v237, v238))
                    {
                      v245 = OUTLINED_FUNCTION_16_24();
                      v246 = 4;
                      v248 = 29;
                      goto LABEL_117;
                    }

LABEL_114:
                    starttest(v2, 47);
                    v239 = OUTLINED_FUNCTION_1_30();
                    if (lpta_loadp_setscan_r(v239, v240, v241))
                    {
LABEL_115:
                      starttest(v2, 46);
                      v242 = OUTLINED_FUNCTION_1_30();
                      if (lpta_loadp_setscan_r(v242, v243, v244))
                      {
                        goto LABEL_138;
                      }

                      v245 = OUTLINED_FUNCTION_17_23();
                      v247 = 6;
                      v248 = 3;
LABEL_117:
                      if (!testFldeq(v245, v246, v247, v248))
                      {
LABEL_118:
                        v249 = advance_tok(v2, v61, v96, v97);
                        v61 = v9;
                        if (v249)
                        {
                          goto LABEL_18;
                        }

                        v70 = 40;
LABEL_137:
                        HIWORD(v262) = v70;
                        goto LABEL_138;
                      }

LABEL_121:
                      v61 = v9;
                      goto LABEL_18;
                    }

                    bspush_ca_scan(v2, 48);
                    v252 = OUTLINED_FUNCTION_16_24();
                    v254 = testFldeq(v252, 4u, v253, 25);
                    v61 = v9;
                    v69 = v9;
                    if (!v254)
                    {
LABEL_133:
                      v255 = v69;
                      v256 = advance_tok(v2, v61, v64, v65);
                      v61 = v255;
                      if (!v256)
                      {
LABEL_140:
                        v70 = 50;
                        goto LABEL_137;
                      }
                    }

LABEL_18:
                    v62 = v2[13];
                    if (v62)
                    {
                      v2[13] = 0;
                      v63 = v62;
                      v9 = v61;
                    }

                    else
                    {
                      v63 = vback(v2, v61);
                      v9 = 0;
                    }

                    v64 = v9;
                    v65 = v9;
                    v66 = v9;
                    v67 = v9;
                    v68 = v9;
                    v69 = v9;
                    v70 = 10;
                    switch(v63)
                    {
                      case 1:
                        v10 = v257;
                        continue;
                      case 2:
                      case 38:
                      case 46:
                        goto LABEL_138;
                      case 3:
                        v10 = v257;
                        goto LABEL_6;
                      case 4:
                        v15 = v9;
                        v10 = v257;
                        goto LABEL_11;
                      case 5:
                        v16 = v9;
                        goto LABEL_62;
                      case 6:
                        goto LABEL_7;
                      case 7:
                        v111 = OUTLINED_FUNCTION_14_25();
                        bspush_ca_scan(v111, v112);
                        v33 = OUTLINED_FUNCTION_6_28();
                        v36 = 2;
                        goto LABEL_46;
                      case 8:
                        goto LABEL_47;
                      case 9:
                        v33 = OUTLINED_FUNCTION_6_28();
                        v36 = 4;
                        goto LABEL_46;
                      case 10:
                        v16 = v9;
                        goto LABEL_63;
                      case 11:
                        v16 = v9;
                        goto LABEL_64;
                      case 12:
                        goto LABEL_83;
                      case 13:
                        v113 = OUTLINED_FUNCTION_6_28();
                        v116 = 4;
                        goto LABEL_84;
                      case 14:
                        goto LABEL_85;
                      case 15:
                        v117 = OUTLINED_FUNCTION_6_28();
                        v120 = 4;
                        goto LABEL_43;
                      case 16:
                        goto LABEL_44;
                      case 17:
                        v16 = v9;
                        goto LABEL_65;
                      case 18:
                        goto LABEL_88;
                      case 19:
                        v16 = v9;
                        goto LABEL_67;
                      case 20:
                        v16 = v9;
                        goto LABEL_68;
                      case 21:
                        goto LABEL_94;
                      case 22:
                        bspop_boa(v2);
                        v74 = advance_tok(v2, v71, v72, v73);
                        v61 = v9;
                        if (v74)
                        {
                          goto LABEL_18;
                        }

                        v75 = OUTLINED_FUNCTION_15_25();
                        v78 = lpta_loadp_setscan_r(v75, v76, v77);
                        v61 = v9;
                        if (v78)
                        {
                          goto LABEL_18;
                        }

                        goto LABEL_32;
                      case 23:
                        v16 = v9;
                        goto LABEL_69;
                      case 24:
LABEL_32:
                        OUTLINED_FUNCTION_2_30();
                        v98 = test_string_s();
                        v61 = v9;
                        if (!v98)
                        {
                          goto LABEL_139;
                        }

                        goto LABEL_18;
                      case 25:
                        goto LABEL_137;
                      case 26:
                        v16 = v9;
                        goto LABEL_70;
                      case 27:
                        goto LABEL_97;
                      case 28:
                        bspop_boa(v2);
                        v82 = advance_tok(v2, v79, v80, v81);
                        v61 = v9;
                        if (v82)
                        {
                          goto LABEL_18;
                        }

                        v83 = OUTLINED_FUNCTION_15_25();
                        v86 = lpta_loadp_setscan_r(v83, v84, v85);
                        v61 = v9;
                        if (v86)
                        {
                          goto LABEL_18;
                        }

                        v87 = OUTLINED_FUNCTION_9_28();
                        v90 = 7;
                        goto LABEL_30;
                      case 29:
                        goto LABEL_72;
                      case 30:
                        bspop_boa(v2);
                        OUTLINED_FUNCTION_2_30();
                        goto LABEL_49;
                      case 31:
                        goto LABEL_103;
                      case 32:
                        goto LABEL_73;
                      case 33:
                        goto LABEL_107;
                      case 34:
                        v219 = v9;
                        goto LABEL_129;
                      case 35:
                        bspop_boa(v2);
                        v91 = OUTLINED_FUNCTION_15_25();
                        v94 = lpta_loadp_setscan_r(v91, v92, v93);
                        v61 = v9;
                        if (v94)
                        {
                          goto LABEL_18;
                        }

                        v87 = OUTLINED_FUNCTION_10_28();
                        v90 = 1;
LABEL_30:
                        v95 = testFldeq(v87, v88, v89, v90);
                        v61 = v9;
                        if (!v95)
                        {
                          goto LABEL_118;
                        }

                        goto LABEL_18;
                      case 36:
                        v124 = OUTLINED_FUNCTION_0_32();
                        v127 = 15;
                        goto LABEL_53;
                      case 37:
                        goto LABEL_54;
                      case 39:
                        v131 = v9;
                        goto LABEL_108;
                      case 40:
                        goto LABEL_120;
                      case 41:
                        bspop_boa(v2);
                        v103 = OUTLINED_FUNCTION_15_25();
                        v106 = lpta_loadp_setscan_r(v103, v104, v105);
                        v61 = v9;
                        if (v106)
                        {
                          goto LABEL_18;
                        }

                        OUTLINED_FUNCTION_2_30();
                        v130 = test_string_s();
                        goto LABEL_56;
                      case 42:
                        v107 = OUTLINED_FUNCTION_0_32();
                        v110 = testFldeq(v107, v108, v109, 30);
                        v68 = v9;
                        v61 = v9;
                        if (!v110)
                        {
                          goto LABEL_39;
                        }

                        goto LABEL_18;
                      case 43:
                        goto LABEL_39;
                      case 44:
                        goto LABEL_74;
                      case 45:
                        goto LABEL_114;
                      case 47:
                        goto LABEL_115;
                      case 48:
                        v99 = OUTLINED_FUNCTION_0_32();
                        v102 = testFldeq(v99, v100, v101, 30);
                        v69 = v9;
                        v61 = v9;
                        if (!v102)
                        {
                          goto LABEL_133;
                        }

                        goto LABEL_18;
                      case 49:
                        goto LABEL_133;
                      case 50:
                        goto LABEL_75;
                      default:
                        goto LABEL_3;
                    }
                  }

                  v210 = OUTLINED_FUNCTION_17_23();
                  if (testFldeq(v210, v211, 5, 1) || advance_tok(v2, v212, v213, v214))
                  {
                    goto LABEL_121;
                  }

                  starttest(v2, 33);
                  v215 = OUTLINED_FUNCTION_1_30();
                  v218 = lpta_loadp_setscan_l(v215, v216, v217);
                  v219 = v9;
                  if (v218)
                  {
LABEL_107:
                    starttest(v2, 39);
                    v220 = OUTLINED_FUNCTION_1_30();
                    v223 = lpta_loadp_setscan_l(v220, v221, v222);
                    v131 = v9;
                    if (v223)
                    {
LABEL_108:
                      v224 = v131;
                      starttest(v2, 38);
                      v225 = OUTLINED_FUNCTION_1_30();
                      if (lpta_loadp_setscan_r(v225, v226, v227))
                      {
                        goto LABEL_138;
                      }

                      bspush_ca_scan(v2, 42);
                      v228 = OUTLINED_FUNCTION_16_24();
                      v230 = testFldeq(v228, 4u, v229, 25);
                      v61 = v224;
                      v68 = v224;
                      if (!v230)
                      {
LABEL_39:
                        v9 = v68;
                        v130 = advance_tok(v2, v61, v64, v65);
LABEL_56:
                        v61 = v9;
                        if (v130)
                        {
                          goto LABEL_18;
                        }

                        v70 = 25;
                        goto LABEL_137;
                      }

                      goto LABEL_18;
                    }

LABEL_120:
                    savescptr(v2, 40, v259);
                    bspush_ca_scan_boa();
                    v250 = OUTLINED_FUNCTION_16_24();
                    if (testFldeq(v250, 4u, v251, 15))
                    {
                      goto LABEL_121;
                    }
                  }

                  else
                  {
LABEL_129:
                    v9 = v219;
                    savescptr(v2, 34, v259);
                    bspush_ca_scan_boa();
                    bspush_ca_scan(v2, 36);
                    v124 = OUTLINED_FUNCTION_16_24();
                    v125 = 4;
                    v127 = 7;
LABEL_53:
                    v128 = testFldeq(v124, v125, v126, v127);
                    v67 = v9;
                    v61 = v9;
                    if (v128)
                    {
                      goto LABEL_18;
                    }

LABEL_54:
                    LODWORD(v9) = v67;
                  }

                  v129 = advance_tok(v2, v61, v64, v65);
                }

                else
                {
                  OUTLINED_FUNCTION_14_25();
                  bspush_ca_scan_boa();
                  LODWORD(v9) = v16;
LABEL_103:
                  v129 = test_synch(v2, 31, 1, &unk_2806BBF3D);
                }

LABEL_99:
                if (v129)
                {
                  v61 = v9;
                }

                else
                {
                  v61 = 1;
                }

                goto LABEL_18;
              }

LABEL_97:
              savescptr(v2, 27, v259);
              bspush_ca_scan_boa();
              v205 = OUTLINED_FUNCTION_17_23();
              v208 = 5;
              v207 = 1;
            }

            else
            {
LABEL_94:
              savescptr(v2, 21, v259);
              bspush_ca_scan_boa();
              v205 = OUTLINED_FUNCTION_17_23();
              v208 = 2;
            }

            v129 = testFldeq(v205, v206, v208, v207);
            goto LABEL_99;
          }

LABEL_88:
          savescptr(v2, 18, v259);
          v195 = OUTLINED_FUNCTION_11_27();
          if (testFldeq(v195, v196, v197, v198))
          {
            goto LABEL_121;
          }

          if (advance_tok(v2, v199, v200, v201))
          {
            goto LABEL_121;
          }

          v202 = OUTLINED_FUNCTION_22_20();
          if (lpta_loadp_setscan_r(v202, v203, 4))
          {
            goto LABEL_121;
          }

          OUTLINED_FUNCTION_8_28();
LABEL_49:
          v122 = test_string_s();
        }

        else
        {
LABEL_83:
          savescptr(v2, 12, v259);
          bspush_ca_scan(v2, 13);
          v113 = OUTLINED_FUNCTION_17_23();
          v115 = 4;
          v116 = 2;
LABEL_84:
          v190 = testFldeq(v113, v114, v115, v116);
          v65 = v9;
          v61 = v9;
          if (v190)
          {
            goto LABEL_18;
          }

LABEL_85:
          v9 = v65;
          if (advance_tok(v2, v61, v64, v65))
          {
            goto LABEL_121;
          }

          v191 = OUTLINED_FUNCTION_22_20();
          if (lpta_loadp_setscan_r(v191, v192, 4))
          {
            goto LABEL_121;
          }

          v193 = OUTLINED_FUNCTION_32_14();
          bspush_ca_scan(v193, v194);
          v117 = OUTLINED_FUNCTION_17_23();
          v119 = 4;
          v120 = 2;
LABEL_43:
          v121 = testFldeq(v117, v118, v119, v120);
          v66 = v9;
          v61 = v9;
          if (v121)
          {
            goto LABEL_18;
          }

LABEL_44:
          v9 = v66;
          v122 = advance_tok(v2, v61, v64, v65);
        }

        break;
      }

      v61 = v9;
      if (v122)
      {
        goto LABEL_18;
      }

      v70 = 15;
      goto LABEL_137;
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_30_15();
}

void get_por_son_trans_dur(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_25_19();
  v170 = *MEMORY[0x277D85DE8];
  v165 = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v164, v3);
  OUTLINED_FUNCTION_23_20();
  bzero(v169, v4);
  if (!setjmp(v169))
  {
    v5 = ventproc(v2, v164, v168, v167, v166, v169);
    if (!v5)
    {
      OUTLINED_FUNCTION_19_21(v5, &v165);
      fence_28(v2);
      HIWORD(v165) = 40;
      v6 = OUTLINED_FUNCTION_13_27();
      three_cluster(v6);
      v7 = 0;
      while (2)
      {
        v8 = OUTLINED_FUNCTION_28_16();
        starttest(v8, v9);
        v10 = OUTLINED_FUNCTION_5_28();
        if (!lpta_loadp_setscan_r(v10, v11, v12))
        {
          bspush_ca_scan(v2, 4);
          OUTLINED_FUNCTION_7_28();
LABEL_35:
          if (!test_string_s())
          {
            v163 = 5;
            goto LABEL_82;
          }

          goto LABEL_36;
        }

LABEL_6:
        starttest(v2, 6);
        v13 = OUTLINED_FUNCTION_5_28();
        if (lpta_loadp_setscan_l(v13, v14, v15))
        {
LABEL_7:
          starttest(v2, 12);
          v16 = OUTLINED_FUNCTION_5_28();
          if (lpta_loadp_setscan_l(v16, v17, v18))
          {
LABEL_8:
            v19 = v7;
            v20 = OUTLINED_FUNCTION_5_28();
            if (lpta_loadp_setscan_l(v20, v21, v22))
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_7_28();
            if (test_string_s())
            {
              goto LABEL_83;
            }

            starttest(v2, 22);
            v23 = OUTLINED_FUNCTION_5_28();
            if (lpta_loadp_setscan_r(v23, v24, v25))
            {
LABEL_11:
              v26 = OUTLINED_FUNCTION_5_28();
              if (!lpta_loadp_setscan_r(v26, v27, v28))
              {
                OUTLINED_FUNCTION_7_28();
                if (!test_string_s())
                {
                  v163 = 10;
                  goto LABEL_82;
                }
              }

LABEL_13:
              v29 = OUTLINED_FUNCTION_33_14();
              starttest(v29, v30);
              v31 = OUTLINED_FUNCTION_5_28();
              if (lpta_loadp_setscan_r(v31, v32, v33))
              {
LABEL_14:
                starttest(v2, 26);
                v34 = OUTLINED_FUNCTION_5_28();
                if (!lpta_loadp_setscan_r(v34, v35, v36))
                {
                  v37 = OUTLINED_FUNCTION_7_28();
                  v40 = 2;
                  goto LABEL_16;
                }

                goto LABEL_83;
              }

              v49 = OUTLINED_FUNCTION_18_22();
              if (testFldeq(v49, v50, 4, 6) || advance_tok(v2, v51, v52, v53))
              {
                goto LABEL_36;
              }

              v54 = OUTLINED_FUNCTION_34_13();
              starttest(v54, v55);
              v56 = OUTLINED_FUNCTION_5_28();
              if (lpta_loadp_setscan_r(v56, v57, v58))
              {
LABEL_26:
                v59 = OUTLINED_FUNCTION_32_14();
                starttest(v59, v60);
                v61 = OUTLINED_FUNCTION_5_28();
                if (lpta_loadp_setscan_r(v61, v62, v63))
                {
                  goto LABEL_83;
                }

                v64 = OUTLINED_FUNCTION_18_22();
                if (npush_fld(v64, v65, 8u))
                {
                  goto LABEL_36;
                }

                v66 = OUTLINED_FUNCTION_35_12();
                npush_i(v66);
                if (if_testeq(v2, v67, v68, v69, v70, v71, v72, v73))
                {
                  goto LABEL_36;
                }

LABEL_47:
                if (advance_tok(v2, v74, v75, v76))
                {
                  goto LABEL_36;
                }

LABEL_84:
                v163 = 25;
                goto LABEL_82;
              }

              v77 = OUTLINED_FUNCTION_18_22();
              if (!npush_fld(v77, v78, 8u))
              {
                npush_i(v2);
                if (!if_testeq(v2, v79, v80, v81, v82, v83, v84, v85) && !advance_tok(v2, v86, v87, v88))
                {
                  v163 = 35;
                  goto LABEL_82;
                }
              }
            }

            else
            {
              bspush_ca_scan(v2, 23);
              v44 = OUTLINED_FUNCTION_18_22();
              if (testFldeq(v44, v45, 4, 4))
              {
                goto LABEL_36;
              }

LABEL_43:
              v7 = v19;
              if (!advance_tok(v2, v46, v47, v48))
              {
                goto LABEL_84;
              }
            }

LABEL_36:
            v89 = v2[13];
            if (v89)
            {
              v90 = OUTLINED_FUNCTION_27_17(v89);
            }

            else
            {
              v90 = vback(v2, v7);
              v7 = 0;
            }

            v46 = v7;
            v47 = v7;
            v19 = v7;
            v163 = 5;
            switch(v90)
            {
              case 1:
                continue;
              case 2:
              case 11:
              case 16:
              case 20:
              case 26:
              case 30:
                goto LABEL_83;
              case 3:
                goto LABEL_6;
              case 4:
                OUTLINED_FUNCTION_2_30();
                goto LABEL_35;
              case 5:
                goto LABEL_82;
              case 6:
                goto LABEL_7;
              case 7:
                v97 = OUTLINED_FUNCTION_14_25();
                bspush_ca_scan(v97, v98);
                goto LABEL_50;
              case 8:
                goto LABEL_52;
              case 9:
LABEL_50:
                OUTLINED_FUNCTION_2_30();
                goto LABEL_51;
              case 10:
                goto LABEL_54;
              case 12:
                goto LABEL_8;
              case 13:
                OUTLINED_FUNCTION_2_30();
                goto LABEL_59;
              case 14:
                goto LABEL_60;
              case 15:
                goto LABEL_62;
              case 17:
                goto LABEL_63;
              case 18:
                goto LABEL_64;
              case 19:
                goto LABEL_73;
              case 21:
                bspop_boa(v2);
                goto LABEL_47;
              case 22:
                goto LABEL_11;
              case 23:
                v91 = OUTLINED_FUNCTION_14_25();
                bspush_ca_scan(v91, v92);
                v93 = OUTLINED_FUNCTION_6_28();
                v96 = 1;
                goto LABEL_42;
              case 24:
                goto LABEL_43;
              case 25:
                v93 = OUTLINED_FUNCTION_6_28();
                v96 = 2;
LABEL_42:
                v19 = v7;
                if (!testFldeq(v93, v94, v95, v96))
                {
                  goto LABEL_43;
                }

                goto LABEL_36;
              case 27:
                goto LABEL_13;
              case 28:
                goto LABEL_14;
              case 29:
                goto LABEL_26;
              default:
                goto LABEL_3;
            }
          }

          bspush_ca_scan(v2, 13);
          OUTLINED_FUNCTION_7_28();
LABEL_59:
          v111 = test_string_s();
          v47 = v7;
          if (v111)
          {
            goto LABEL_36;
          }

LABEL_60:
          v7 = v47;
          v112 = OUTLINED_FUNCTION_5_28();
          if (lpta_loadp_setscan_r(v112, v113, v114) || (OUTLINED_FUNCTION_7_28(), test_string_s()))
          {
LABEL_62:
            starttest(v2, 17);
            v115 = OUTLINED_FUNCTION_5_28();
            if (!lpta_loadp_setscan_r(v115, v116, v117))
            {
              v37 = OUTLINED_FUNCTION_18_22();
              v39 = 0;
              v40 = 20;
LABEL_16:
              if (testFldeq(v37, v38, v39, v40))
              {
                goto LABEL_36;
              }

LABEL_17:
              if (!advance_tok(v2, v41, v42, v43))
              {
                v163 = 30;
LABEL_82:
                HIWORD(v165) = v163;
                goto LABEL_83;
              }

              goto LABEL_36;
            }

LABEL_63:
            starttest(v2, 18);
            v118 = OUTLINED_FUNCTION_5_28();
            if (lpta_loadp_setscan_r(v118, v119, v120))
            {
LABEL_64:
              starttest(v2, 16);
              v121 = OUTLINED_FUNCTION_5_28();
              if (!lpta_loadp_setscan_r(v121, v122, v123))
              {
                v124 = OUTLINED_FUNCTION_7_28();
                if (!testFldeq(v124, v125, v126, 1))
                {
                  bspush_ca_scan_boa();
                  v127 = OUTLINED_FUNCTION_18_22();
                  if (testFldeq(v127, v128, 5, 1))
                  {
                    v7 = v7;
                  }

                  else
                  {
                    v7 = 1;
                  }
                }

                goto LABEL_36;
              }

              goto LABEL_83;
            }

            v129 = OUTLINED_FUNCTION_18_22();
            if (testFldeq(v129, v130, 3, 0) || advance_tok(v2, v131, v132, v133))
            {
              goto LABEL_36;
            }

            starttest(v2, 19);
            v134 = OUTLINED_FUNCTION_5_28();
            if (!lpta_loadp_setscan_r(v134, v135, v136))
            {
              v154 = OUTLINED_FUNCTION_18_22();
              if (npush_fld(v154, v155, 8u))
              {
                goto LABEL_36;
              }

              npush_i(v2);
              if (if_testeq(v2, v156, v157, v158, v159, v160, v161, v162))
              {
                goto LABEL_36;
              }

              goto LABEL_17;
            }

LABEL_73:
            v137 = OUTLINED_FUNCTION_14_25();
            starttest(v137, v138);
            v139 = OUTLINED_FUNCTION_5_28();
            if (lpta_loadp_setscan_r(v139, v140, v141))
            {
LABEL_83:
              OUTLINED_FUNCTION_26_19(SHIWORD(v165));
              goto LABEL_3;
            }

            v142 = OUTLINED_FUNCTION_18_22();
            if (npush_fld(v142, v143, 8u))
            {
              goto LABEL_36;
            }

            npush_i(v2);
            if (if_testeq(v2, v144, v145, v146, v147, v148, v149, v150) || advance_tok(v2, v151, v152, v153))
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          bspush_ca_scan(v2, 7);
          OUTLINED_FUNCTION_7_28();
LABEL_51:
          v99 = test_string_s();
          v46 = v7;
          if (v99)
          {
            goto LABEL_36;
          }

LABEL_52:
          v7 = v46;
          v100 = OUTLINED_FUNCTION_5_28();
          if (lpta_loadp_setscan_r(v100, v101, v102) || (OUTLINED_FUNCTION_7_28(), test_string_s()))
          {
LABEL_54:
            starttest(v2, 11);
            v103 = OUTLINED_FUNCTION_5_28();
            if (!lpta_loadp_setscan_r(v103, v104, v105))
            {
              v106 = OUTLINED_FUNCTION_18_22();
              if (!testFldeq(v106, v107, 6, 1) && !advance_tok(v2, v108, v109, v110))
              {
                v163 = 65;
                goto LABEL_82;
              }

              goto LABEL_36;
            }

            goto LABEL_83;
          }
        }

        break;
      }

      v163 = 50;
      goto LABEL_82;
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_30_15();
}

uint64_t three_cluster(uint64_t a1)
{
  OUTLINED_FUNCTION_25_19();
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  OUTLINED_FUNCTION_24_20();
  bzero(v6, v3);
  OUTLINED_FUNCTION_23_20();
  bzero(v12, v4);
  if (!setjmp(v12) && !ventproc(v1, v6, v11, v10, v9, v12))
  {
    get_parm(v1, v8, v2, -6);
    push_ptr_init(v1, v7);
    fence_28(v1);
  }

  vretproc(v1);
  return 94;
}

void OUTLINED_FUNCTION_19_21(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -4);
}

double OUTLINED_FUNCTION_20_20@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_29_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void *fence_29(uint64_t a1, int a2, uint64_t a3)
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

uint64_t mark_por_funct_words()
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v2, v3, v4, v5, v6, v7, v8, v9, v32, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110);
  OUTLINED_FUNCTION_62_6(v10, v11, v12, v13, v14, v15, v16, v17, v33, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v113, v115, v117, v119);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_17_24(v18, v19, v20, v21, v22, v23, v24, v25, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v114, SHIDWORD(v114), v116, SWORD2(v116), SHIWORD(v116), v118, SWORD2(v118), SBYTE6(v118), SHIBYTE(v118), v120, v121))
  {
    v26 = OUTLINED_FUNCTION_26_20();
    get_parm(v26, v27, v28, -6);
    OUTLINED_FUNCTION_53_7();
    OUTLINED_FUNCTION_115_1(v29, v30, &null_str_8);
    OUTLINED_FUNCTION_26_20();
    mark_determiners();
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t mark_determiners()
{
  OUTLINED_FUNCTION_22_21();
  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_85_4();
  bzero(&v35, v2);
  OUTLINED_FUNCTION_56_7();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_30_16();
    if (!OUTLINED_FUNCTION_116_1(v3, v4, v5, v6, v7))
    {
      if ((v8 = OUTLINED_FUNCTION_26_20(), get_parm(v8, v9, v10, -6), OUTLINED_FUNCTION_53_7(), fence_29(v0, 0, &null_str_8), v11 = OUTLINED_FUNCTION_26_20(), lpta_rpta_loadp(v11, v12, v13), v14 = OUTLINED_FUNCTION_20_21(), !setd_lookup(v14, v15, v16)) && (v17 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v17, v18, v19), OUTLINED_FUNCTION_3_30(), !mark_s()) && (OUTLINED_FUNCTION_2_31(), !mark_s()) || (v20 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v20, v21, v22), v23 = OUTLINED_FUNCTION_36_12(), !setd_lookup(v23, v24, v25)) && (v26 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v26, v27, v28), OUTLINED_FUNCTION_0_33(), !mark_s()) && (OUTLINED_FUNCTION_3_30(), !mark_s()) && (OUTLINED_FUNCTION_2_31(), !mark_s()))
      {
        v30 = OUTLINED_FUNCTION_29_17();
        if (lpta_loadp_setscan_l(v30, v31, v32) || (OUTLINED_FUNCTION_20_21(), test_string_s()))
        {
          v33 = 3022;
        }

        else
        {
          v33 = 3026;
        }

        v36 = *(v0 + v33);
        OUTLINED_FUNCTION_101_1();
        mark_number();
        v34 = OUTLINED_FUNCTION_101_1();
        mark_word_stress(v34);
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_number()
{
  OUTLINED_FUNCTION_108_1();
  v61 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v1, v2, v3, v4, v5, v6, v7, v8, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, SHIDWORD(v54), v56, v57, v58, v59);
  OUTLINED_FUNCTION_84_4();
  bzero(v60, v9);
  if (!setjmp(v60))
  {
    OUTLINED_FUNCTION_30_16();
    if (!OUTLINED_FUNCTION_116_1(v10, v11, v12, v13, v14))
    {
      v16 = OUTLINED_FUNCTION_93_3();
      OUTLINED_FUNCTION_137_0(v16, v17);
      v18 = OUTLINED_FUNCTION_76_6();
      OUTLINED_FUNCTION_110_1(v18, v19);
      v20 = OUTLINED_FUNCTION_95_3();
      get_parm(v20, v21, v22, -4);
      fence_29(v0, 0, &null_str_8);
      v23 = v55;
      if (*(v0 + 3022) == v55)
      {
        v24 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v24, v25, v26);
        OUTLINED_FUNCTION_6_29();
        if (!mark_s())
        {
LABEL_10:
          vretproc(v0);
          return 0;
        }

        v23 = v55;
      }

      if (*(v0 + 3026) == v23)
      {
        v27 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v27, v28, v29);
        OUTLINED_FUNCTION_10_29();
        mark_s();
      }

      goto LABEL_10;
    }
  }

  vretproc(v0);
  return 94;
}

uint64_t disambig_por_functword()
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v237, v240);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227, v231, v235, v238, v241, v243, v245, v247, v249);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228, v232, v236, v239, v242, v244, SHIDWORD(v244), v246, SWORD2(v246), SHIWORD(v246), v248, SWORD2(v248), SBYTE6(v248), SHIBYTE(v248), v250, v251))
  {
    v28 = OUTLINED_FUNCTION_26_20();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_70_6(v31, v32, v33, v34, v35, v36, v37, v38, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v225, v229, v233);
    fence_29(v0, 0, &null_str_8);
    v39 = OUTLINED_FUNCTION_73_6();
    fence_29(v39, v40, v41);
    v42 = OUTLINED_FUNCTION_77_6();
    if (!lpta_loadp_setscan_r(v42, v43, 1))
    {
      OUTLINED_FUNCTION_24_21();
      if (!test_string_s())
      {
        *(v0 + 136) = v1;
        v44 = OUTLINED_FUNCTION_23_21();
        if (!test_ptr(v44, v45, v46))
        {
          OUTLINED_FUNCTION_16_25();
          disambiguate_a();
          goto LABEL_3;
        }
      }
    }

    while (2)
    {
      v47 = OUTLINED_FUNCTION_32_15();
      starttest(v47, v48);
      v49 = OUTLINED_FUNCTION_29_17();
      if (lpta_loadp_setscan_r(v49, v50, v51) || (OUTLINED_FUNCTION_36_12(), test_string_s()))
      {
LABEL_9:
        v52 = OUTLINED_FUNCTION_29_17();
        if (!lpta_loadp_setscan_r(v52, v53, v54))
        {
          OUTLINED_FUNCTION_24_21();
          if (!test_string_s())
          {
            *(v0 + 136) = v1;
            v55 = OUTLINED_FUNCTION_23_21();
            if (!test_ptr(v55, v56, v57))
            {
              OUTLINED_FUNCTION_16_25();
              disambiguate_esse();
              break;
            }
          }
        }

LABEL_12:
        v58 = OUTLINED_FUNCTION_29_17();
        if (!lpta_loadp_setscan_r(v58, v59, v60))
        {
          OUTLINED_FUNCTION_24_21();
          if (!test_string_s())
          {
            *(v0 + 136) = v1;
            v61 = OUTLINED_FUNCTION_23_21();
            if (!test_ptr(v61, v62, v63))
            {
              OUTLINED_FUNCTION_16_25();
              disambiguate_este();
              break;
            }
          }
        }

LABEL_15:
        v64 = OUTLINED_FUNCTION_29_17();
        if (!lpta_loadp_setscan_r(v64, v65, v66))
        {
          OUTLINED_FUNCTION_24_21();
          if (!test_string_s())
          {
            *(v0 + 136) = v1;
            v67 = OUTLINED_FUNCTION_23_21();
            if (!test_ptr(v67, v68, v69))
            {
              OUTLINED_FUNCTION_16_25();
              disambiguate_nos();
              break;
            }
          }
        }

LABEL_18:
        v70 = OUTLINED_FUNCTION_72_6();
        starttest(v70, v71);
        v72 = OUTLINED_FUNCTION_35_13();
        if (lpta_loadp_setscan_r(v72, v73, v74))
        {
LABEL_19:
          v75 = OUTLINED_FUNCTION_29_17();
          if (!lpta_loadp_setscan_r(v75, v76, v77))
          {
            OUTLINED_FUNCTION_24_21();
            if (!test_string_s())
            {
              *(v0 + 136) = v1;
              v78 = OUTLINED_FUNCTION_23_21();
              if (!test_ptr(v78, v79, v80))
              {
                v137 = OUTLINED_FUNCTION_16_25();
                disambiguate_por(v137);
                break;
              }
            }
          }

LABEL_22:
          v81 = OUTLINED_FUNCTION_29_17();
          if (!lpta_loadp_setscan_r(v81, v82, v83))
          {
            OUTLINED_FUNCTION_24_21();
            if (!test_string_s())
            {
              *(v0 + 136) = v1;
              v84 = OUTLINED_FUNCTION_23_21();
              if (!test_ptr(v84, v85, v86))
              {
                v136 = OUTLINED_FUNCTION_16_25();
                disambiguate_se(v136);
                break;
              }
            }
          }

LABEL_25:
          v87 = OUTLINED_FUNCTION_29_17();
          if (!lpta_loadp_setscan_r(v87, v88, v89))
          {
            OUTLINED_FUNCTION_24_21();
            if (!test_string_s())
            {
              *(v0 + 136) = v1;
              v90 = OUTLINED_FUNCTION_23_21();
              if (!test_ptr(v90, v91, v92))
              {
                v135 = OUTLINED_FUNCTION_16_25();
                disambiguate_sao(v135);
                break;
              }
            }
          }

LABEL_28:
          v93 = OUTLINED_FUNCTION_72_6();
          starttest(v93, v94);
          v95 = OUTLINED_FUNCTION_35_13();
          if (lpta_loadp_setscan_r(v95, v96, v97))
          {
LABEL_29:
            v98 = OUTLINED_FUNCTION_72_6();
            starttest(v98, v99);
            v100 = OUTLINED_FUNCTION_35_13();
            if (lpta_loadp_setscan_r(v100, v101, v102))
            {
              break;
            }

            v103 = OUTLINED_FUNCTION_15_26();
            if (!testFldeq(v103, v104, v105, 3) && !advance_tok(v0, v106, v107, v108))
            {
              v130 = OUTLINED_FUNCTION_16_25();
              det_vs_nounadj(v130);
              break;
            }
          }

          else
          {
            v115 = OUTLINED_FUNCTION_15_26();
            if (!testFldeq(v115, v116, v117, 4) && !advance_tok(v0, v118, v119, v120))
            {
              v134 = OUTLINED_FUNCTION_16_25();
              pro_vs_det(v134);
              break;
            }
          }
        }

        else
        {
          v109 = OUTLINED_FUNCTION_14_26();
          if (!testFldeq(v109, v110, v111, 31) && !advance_tok(v0, v112, v113, v114))
          {
            v131 = OUTLINED_FUNCTION_16_25();
            disambiguate_pelo(v131, v132, v133);
            break;
          }
        }
      }

      else
      {
        v121 = OUTLINED_FUNCTION_31_16();
        bspush_ca_scan(v121, v122);
LABEL_40:
        OUTLINED_FUNCTION_117_1();
        v123 = OUTLINED_FUNCTION_23_21();
        if (!test_ptr(v123, v124, v125))
        {
          OUTLINED_FUNCTION_16_25();
          disambiguate_um();
          break;
        }
      }

LABEL_41:
      v126 = *(v0 + 104);
      if (v126)
      {
        v127 = OUTLINED_FUNCTION_87_4(v126);
      }

      else
      {
        v128 = OUTLINED_FUNCTION_90_4();
        v127 = vback(v128, v129);
      }

      switch(v127)
      {
        case 1:
          continue;
        case 4:
          goto LABEL_9;
        case 5:
          OUTLINED_FUNCTION_20_21();
          if (!test_string_s())
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        case 6:
          goto LABEL_40;
        case 8:
          goto LABEL_12;
        case 10:
          goto LABEL_15;
        case 12:
          goto LABEL_18;
        case 14:
          goto LABEL_19;
        case 16:
          goto LABEL_22;
        case 18:
          goto LABEL_25;
        case 20:
          goto LABEL_28;
        case 22:
          goto LABEL_29;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t disambiguate_a()
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v183, v185, v187, v189);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v184, SHIDWORD(v184), v186, SWORD2(v186), SHIWORD(v186), v188, SWORD2(v188), SBYTE6(v188), SHIBYTE(v188), v190, v191))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_110_1(v28, v29);
  OUTLINED_FUNCTION_53_7();
  fence_29(v0, 0, &null_str_8);
  v30 = OUTLINED_FUNCTION_24_21();
  fence_29(v30, v31, v32);
  v33 = OUTLINED_FUNCTION_97_3();
  starttest(v33, v34);
  v35 = OUTLINED_FUNCTION_66_6();
  if (!lpta_loadp_setscan_r(v35, v36, v37))
  {
    v47 = OUTLINED_FUNCTION_78_6();
    bspush_ca_scan(v47, v48);
    v43 = OUTLINED_FUNCTION_79_6();
    v45 = v1;
    v46 = v1;
    goto LABEL_8;
  }

  while (2)
  {
    v38 = OUTLINED_FUNCTION_31_16();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v40, v41, v42))
    {
      v43 = OUTLINED_FUNCTION_14_26();
      v46 = 33;
      goto LABEL_8;
    }

LABEL_14:
    v56 = OUTLINED_FUNCTION_47_8();
    starttest(v56, v57);
    v58 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v58, v59, v60))
    {
      v86 = OUTLINED_FUNCTION_1_31();
      if (testFldeq(v86, v87, v88, v89))
      {
        goto LABEL_9;
      }

      v43 = OUTLINED_FUNCTION_28_17();
      v46 = 2;
      goto LABEL_8;
    }

LABEL_15:
    v61 = OUTLINED_FUNCTION_46_8();
    starttest(v61, v62);
    v63 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v63, v64, v65))
    {
      v43 = OUTLINED_FUNCTION_14_26();
      v46 = 12;
      goto LABEL_8;
    }

LABEL_16:
    v66 = OUTLINED_FUNCTION_34_14();
    starttest(v66, v67);
    v68 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v68, v69, v70))
    {
      v43 = OUTLINED_FUNCTION_15_26();
      v46 = 6;
LABEL_8:
      if (testFldeq(v43, v44, v45, v46))
      {
        goto LABEL_9;
      }

LABEL_27:
      if (!advance_tok(v0, v49, v50, v51))
      {
        v90 = 2074;
        goto LABEL_32;
      }

LABEL_9:
      v52 = *(v0 + 104);
      if (v52)
      {
        v53 = OUTLINED_FUNCTION_87_4(v52);
      }

      else
      {
        v54 = OUTLINED_FUNCTION_90_4();
        v53 = vback(v54, v55);
      }

      switch(v53)
      {
        case 1:
          continue;
        case 2:
          v43 = OUTLINED_FUNCTION_4_29();
          goto LABEL_8;
        case 3:
          goto LABEL_27;
        case 4:
          v92 = 0;
          goto LABEL_36;
        case 5:
          goto LABEL_14;
        case 6:
          goto LABEL_15;
        case 7:
          goto LABEL_16;
        case 8:
          goto LABEL_17;
        case 9:
          goto LABEL_19;
        case 10:
          goto LABEL_29;
        case 12:
          v92 = 0;
          goto LABEL_39;
        case 13:
          goto LABEL_49;
        case 14:
          v92 = 0;
          goto LABEL_45;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_17:
  v71 = OUTLINED_FUNCTION_29_17();
  if (lpta_loadp_setscan_l(v71, v72, v73) || (OUTLINED_FUNCTION_20_21(), test_string_s()))
  {
LABEL_19:
    v74 = OUTLINED_FUNCTION_68_6();
    starttest(v74, v75);
    v76 = OUTLINED_FUNCTION_35_13();
    if (lpta_loadp_setscan_l(v76, v77, v78))
    {
LABEL_29:
      OUTLINED_FUNCTION_43_8();
      if (!v91)
      {
LABEL_3:
        vretproc(v0);
        return 94;
      }
    }

    else
    {
      v79 = OUTLINED_FUNCTION_5_29();
      if (testFldeq(v79, v80, v81, v82) || advance_tok(v0, v83, v84, v85))
      {
        goto LABEL_9;
      }
    }

    v90 = 2066;
  }

  else
  {
    v90 = 2070;
  }

LABEL_32:
  v92 = *(v0 + v90);
LABEL_36:
  OUTLINED_FUNCTION_128_0();
  if (!v91 || (v93 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v93, v94, v95), OUTLINED_FUNCTION_0_33(), mark_s()))
  {
LABEL_39:
    OUTLINED_FUNCTION_111_1();
    if (!v91 || (v96 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v96, v97, v98), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()))
    {
LABEL_45:
      if (*(v0 + 2066) == v92)
      {
        v99 = OUTLINED_FUNCTION_16_25();
        lpta_rpta_loadp(v99, v100, v101);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_3_30();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_6_29();
            mark_s();
          }
        }
      }
    }
  }

LABEL_49:
  vretproc(v0);
  return 0;
}

uint64_t disambiguate_um()
{
  OUTLINED_FUNCTION_22_21();
  v59 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_85_4();
  bzero(v57, v3);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2) || (OUTLINED_FUNCTION_30_16(), OUTLINED_FUNCTION_116_1(v4, v5, v6, v7, v8)))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  v10 = OUTLINED_FUNCTION_93_3();
  OUTLINED_FUNCTION_110_1(v10, v11);
  v12 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v12, v13);
  fence_29(v0, 0, &null_str_8);
  v14 = OUTLINED_FUNCTION_24_21();
  fence_29(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_97_3();
  starttest(v17, v18);
  *(v0 + 136) = v1;
  OUTLINED_FUNCTION_23_21();
  if (!lpta_tstmovel())
  {
    v19 = OUTLINED_FUNCTION_73_6();
    setscan_l(v19, v20, v21);
    if (!v22)
    {
      v23 = OUTLINED_FUNCTION_63_6();
      bspush_ca_scan(v23, v24);
      OUTLINED_FUNCTION_58_7();
      while (2)
      {
        if (!test_string_s())
        {
LABEL_8:
          v25 = OUTLINED_FUNCTION_38_11();
          if (!test_synch(v25, v26, 1, v27))
          {
LABEL_9:
            v28 = 3070;
            v29 = 2070;
            goto LABEL_21;
          }
        }

LABEL_13:
        v42 = *(v0 + 104);
        if (v42)
        {
          v43 = OUTLINED_FUNCTION_87_4(v42);
        }

        else
        {
          v44 = OUTLINED_FUNCTION_90_4();
          v43 = vback(v44, v45);
        }

        switch(v43)
        {
          case 1:
            break;
          case 2:
            OUTLINED_FUNCTION_73_6();
            continue;
          case 3:
            goto LABEL_8;
          case 4:
            v49 = 0;
            goto LABEL_22;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_20;
          case 7:
            v49 = 0;
            goto LABEL_30;
          case 8:
            goto LABEL_34;
          case 9:
            goto LABEL_35;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

  v30 = OUTLINED_FUNCTION_31_16();
  starttest(v30, v31);
  v32 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_r(v32, v33, v34))
  {
    v35 = OUTLINED_FUNCTION_5_29();
    if (!testFldeq(v35, v36, v37, v38) && !advance_tok(v0, v39, v40, v41))
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_18:
  v46 = OUTLINED_FUNCTION_65_6();
  if (!lpta_loadp_setscan_l(v46, v47, v48))
  {
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
      goto LABEL_9;
    }
  }

LABEL_20:
  v28 = 3054;
  v29 = 2066;
LABEL_21:
  v49 = *(v0 + v29);
  v58 = *(v0 + v28);
LABEL_22:
  OUTLINED_FUNCTION_111_1();
  if (!v50 || (v51 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v51, v52, v53), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_30:
    if (*(v0 + 2066) == v49)
    {
      v54 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v54, v55, v56);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_2_31();
          mark_s();
        }
      }
    }
  }

LABEL_34:
  mark_word_stress(v0);
LABEL_35:
  vretproc(v0);
  return 0;
}

uint64_t disambiguate_esse()
{
  OUTLINED_FUNCTION_22_21();
  v163 = *MEMORY[0x277D85DE8];
  v152 = 0;
  v153 = 0;
  OUTLINED_FUNCTION_27_18(v2, v3, v4, v5, v6, v7, v8, v9, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
  OUTLINED_FUNCTION_56_7();
  v10 = setjmp(v1);
  if (v10 || OUTLINED_FUNCTION_39_10(v10, &v125, v11, v12, v13, v14, v15, v16, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_26_20();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v21, v22);
  v23 = OUTLINED_FUNCTION_89_4();
  v25 = push_ptr_init(v23, v24);
  v27 = OUTLINED_FUNCTION_115_1(v25, v26, &null_str_8);
  OUTLINED_FUNCTION_104_1(v27, v28, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  v29 = OUTLINED_FUNCTION_41_8();
  v32 = lpta_loadp_setscan_l(v29, v30, v31);
  v33 = 0;
  if (!v32)
  {
    v34 = OUTLINED_FUNCTION_4_29();
    if (testFldeq(v34, v35, v36, v37) || (v38 = OUTLINED_FUNCTION_6_29(), testFldeq(v38, v39, v40, v41)) || advance_tok(v0, v42, v43, v44))
    {
      v45 = 0;
LABEL_34:
      v112 = v45;
      v113 = *(v0 + 104);
      if (v113)
      {
        v114 = OUTLINED_FUNCTION_87_4(v113);
      }

      else
      {
        v115 = OUTLINED_FUNCTION_90_4();
        v114 = vback(v115, v116);
      }

      v117 = v114 - 1;
      v33 = v112;
      v54 = v112;
      v85 = v112;
      v93 = v112;
      v94 = v112;
      v106 = v112;
      v118 = v112;
      switch(v117)
      {
        case 0:
          goto LABEL_11;
        case 1:
          goto LABEL_25;
        case 2:
          goto LABEL_13;
        case 3:
          goto LABEL_22;
        case 4:
          goto LABEL_23;
        case 6:
          goto LABEL_29;
        case 7:
          goto LABEL_27;
        case 8:
          goto LABEL_39;
        case 9:
          goto LABEL_33;
        default:
          goto LABEL_3;
      }

      goto LABEL_3;
    }

    goto LABEL_10;
  }

LABEL_11:
  v48 = v33;
  v49 = OUTLINED_FUNCTION_38_11();
  starttest(v49, v50);
  v51 = OUTLINED_FUNCTION_54_7();
  if (!lpta_loadp_setscan_l(v51, v52, v53))
  {
    v72 = OUTLINED_FUNCTION_1_31();
    if (!testFldeq(v72, v73, v74, v75))
    {
      v76 = OUTLINED_FUNCTION_6_29();
      if (!testFldeq(v76, v77, v78, v79))
      {
        v46 = advance_tok(v0, v80, v81, v82);
        v45 = v48;
        if (v46)
        {
          goto LABEL_34;
        }

LABEL_10:
        v47 = 2054;
        goto LABEL_24;
      }
    }

    goto LABEL_20;
  }

  v54 = v48;
LABEL_13:
  v48 = v54;
  v55 = OUTLINED_FUNCTION_32_15();
  starttest(v55, v56);
  v57 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_r(v57, v58, v59))
  {
    v60 = OUTLINED_FUNCTION_1_31();
    if (!testFldeq(v60, v61, v62, v63))
    {
      v64 = OUTLINED_FUNCTION_6_29();
      if (!testFldeq(v64, v65, v66, v67))
      {
        v71 = advance_tok(v0, v68, v69, v70);
        v45 = v48;
        if (v71)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    v45 = v48;
    goto LABEL_34;
  }

LABEL_22:
  v83 = OUTLINED_FUNCTION_93_3();
  if (!lpta_loadp_setscan_l(v83, v84, 5))
  {
LABEL_21:
    v47 = 2070;
    goto LABEL_24;
  }

LABEL_23:
  v47 = 2070;
  if (*(v0 + 3078) != *(v0 + 3074))
  {
    goto LABEL_3;
  }

LABEL_24:
  v85 = *(v0 + v47);
LABEL_25:
  v86 = v85;
  v87 = OUTLINED_FUNCTION_93_3();
  if (lpta_loadp_setscan_r(v87, v88, 4))
  {
    goto LABEL_28;
  }

  v92 = advance_tok(v0, v89, v90, v91);
  v93 = v86;
  v94 = v86;
  if (!v92)
  {
LABEL_27:
    v86 = v93;
    v95 = OUTLINED_FUNCTION_74_6();
    savescptr(v95, v96, v97);
LABEL_28:
    v94 = v86;
  }

LABEL_29:
  v98 = v94;
  OUTLINED_FUNCTION_111_1();
  if (!v99 || (v100 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v100, v101, v102), OUTLINED_FUNCTION_3_30(), mark_s()))
  {
    v118 = v98;
LABEL_39:
    if (*(v0 + 2054) == v118)
    {
      v119 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v119, v120, v121);
      OUTLINED_FUNCTION_1_31();
      if (!mark_s())
      {
        v122 = OUTLINED_FUNCTION_74_6();
        lpta_rpta_loadp(v122, v123, v124);
        insert_2pt_s(v0, 4u, 1, &unk_2806BBF48, 0);
      }
    }
  }

  else
  {
    v103 = OUTLINED_FUNCTION_68_6();
    starttest(v103, v104);
    v105 = OUTLINED_FUNCTION_19_22();
    pro_vs_det(v105);
    v106 = v98;
LABEL_33:
    v107 = v106;
    v108 = OUTLINED_FUNCTION_19_22();
    lpta_rpta_loadp(v108, v109, v110);
    OUTLINED_FUNCTION_11_28();
    v111 = mark_s();
    v45 = v107;
    if (v111)
    {
      goto LABEL_34;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_119_1();
}

uint64_t disambiguate_este()
{
  OUTLINED_FUNCTION_22_21();
  v136 = *MEMORY[0x277D85DE8];
  v125 = 0;
  v126 = 0;
  OUTLINED_FUNCTION_27_18(v2, v3, v4, v5, v6, v7, v8, v9, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
  OUTLINED_FUNCTION_56_7();
  v10 = setjmp(v1);
  if (v10 || OUTLINED_FUNCTION_39_10(v10, &v98, v11, v12, v13, v14, v15, v16, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_26_20();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v21, v22);
  v23 = OUTLINED_FUNCTION_89_4();
  push_ptr_init(v23, v24);
  fence_29(v0, 0, &null_str_8);
  v25 = OUTLINED_FUNCTION_24_21();
  fence_29(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_97_3();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_41_8();
  if (!lpta_loadp_setscan_l(v30, v31, v32))
  {
    v33 = OUTLINED_FUNCTION_4_29();
    if (!testFldeq(v33, v34, v35, v36))
    {
      v37 = OUTLINED_FUNCTION_6_29();
      if (!testFldeq(v37, v38, v39, v40) && !advance_tok(v0, v41, v42, v43))
      {
        v44 = 2054;
LABEL_22:
        v66 = *(v0 + v44);
LABEL_23:
        v68 = v66;
        v73 = OUTLINED_FUNCTION_93_3();
        if (!lpta_loadp_setscan_r(v73, v74, 4))
        {
          v78 = advance_tok(v0, v75, v76, v77);
          v67 = v68;
          if (!v78)
          {
LABEL_25:
            v68 = v67;
            OUTLINED_FUNCTION_99_2();
            v79 = OUTLINED_FUNCTION_74_6();
            savescptr(v79, v80, v81);
          }
        }

LABEL_26:
        OUTLINED_FUNCTION_111_1();
        if (v72)
        {
          v82 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v82, v83, v84);
          OUTLINED_FUNCTION_3_30();
          v85 = mark_s();
          v69 = v68;
          if (!v85)
          {
            v86 = OUTLINED_FUNCTION_19_22();
            pro_vs_det(v86);
LABEL_33:
            vretproc(v0);
            return 0;
          }
        }

        else
        {
          v69 = v68;
        }

LABEL_30:
        if (*(v0 + 2054) == v69)
        {
          v87 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v87, v88, v89);
          OUTLINED_FUNCTION_0_33();
          if (!mark_s())
          {
            v90 = OUTLINED_FUNCTION_74_6();
            lpta_rpta_loadp(v90, v91, v92);
            v93 = OUTLINED_FUNCTION_44_8();
            insert_2pt_s(v93, v94, v95, v96, v97);
          }
        }

        goto LABEL_33;
      }
    }

LABEL_14:
    v61 = *(v0 + 104);
    if (v61)
    {
      v62 = OUTLINED_FUNCTION_87_4(v61);
    }

    else
    {
      v63 = OUTLINED_FUNCTION_90_4();
      v62 = vback(v63, v64);
    }

    v65 = v62 - 1;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    switch(v65)
    {
      case 0:
        break;
      case 1:
        goto LABEL_23;
      case 2:
        goto LABEL_18;
      case 3:
        goto LABEL_19;
      case 5:
        goto LABEL_26;
      case 6:
        goto LABEL_25;
      case 7:
        goto LABEL_30;
      case 8:
      case 9:
        goto LABEL_33;
      default:
        goto LABEL_3;
    }
  }

  v45 = OUTLINED_FUNCTION_38_11();
  starttest(v45, v46);
  v47 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_r(v47, v48, v49))
  {
    v50 = OUTLINED_FUNCTION_1_31();
    if (testFldeq(v50, v51, v52, v53))
    {
      goto LABEL_14;
    }

    v54 = OUTLINED_FUNCTION_6_29();
    if (testFldeq(v54, v55, v56, v57) || advance_tok(v0, v58, v59, v60))
    {
      goto LABEL_14;
    }

LABEL_21:
    v44 = 2070;
    goto LABEL_22;
  }

LABEL_18:
  v70 = OUTLINED_FUNCTION_93_3();
  if (!lpta_loadp_setscan_l(v70, v71, 5))
  {
    goto LABEL_21;
  }

LABEL_19:
  OUTLINED_FUNCTION_43_8();
  if (v72)
  {
    goto LABEL_21;
  }

LABEL_3:
  vretproc(v0);
  return 94;
}

uint64_t disambiguate_nos()
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v2, v3, v4, v5, v6, v7, v8, v9, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157);
  OUTLINED_FUNCTION_62_6(v10, v11, v12, v13, v14, v15, v16, v17, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v160, v162, v164, v166);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_17_24(v18, v19, v20, v21, v22, v23, v24, v25, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v161, SHIDWORD(v161), v163, SWORD2(v163), SHIWORD(v163), v165, SWORD2(v165), SBYTE6(v165), SHIBYTE(v165), v167, v168))
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_110_1(v27, v28);
  OUTLINED_FUNCTION_53_7();
  fence_29(v0, 0, &null_str_8);
  v29 = OUTLINED_FUNCTION_24_21();
  fence_29(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_97_3();
  starttest(v32, v33);
  v34 = OUTLINED_FUNCTION_66_6();
  if (!lpta_loadp_setscan_r(v34, v35, v36))
  {
    v37 = OUTLINED_FUNCTION_8_29();
    if (!testFldeq(v37, v38, v39, v40) && !advance_tok(v0, v41, v42, v43))
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  while (2)
  {
    v44 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_l(v44, v45, v46) || (OUTLINED_FUNCTION_20_21(), test_string_s()))
    {
LABEL_10:
      v47 = OUTLINED_FUNCTION_32_15();
      starttest(v47, v48);
      v49 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_r(v49, v50, v51))
      {
LABEL_19:
        v67 = OUTLINED_FUNCTION_31_16();
        starttest(v67, v68);
        v69 = OUTLINED_FUNCTION_80_5();
        if (lpta_loadp_setscan_r(v69, v70, v71))
        {
LABEL_3:
          vretproc(v0);
          return 94;
        }

        v56 = OUTLINED_FUNCTION_14_26();
        v59 = 12;
      }

      else
      {
        v52 = OUTLINED_FUNCTION_1_31();
        if (testFldeq(v52, v53, v54, v55))
        {
          goto LABEL_15;
        }

        v56 = OUTLINED_FUNCTION_28_17();
        v59 = 2;
      }

      if (testFldeq(v56, v57, v58, v59) || advance_tok(v0, v60, v61, v62))
      {
LABEL_15:
        v63 = *(v0 + 104);
        if (v63)
        {
          v64 = OUTLINED_FUNCTION_87_4(v63);
        }

        else
        {
          v65 = OUTLINED_FUNCTION_90_4();
          v64 = vback(v65, v66);
        }

        switch(v64)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_21;
          case 3:
            goto LABEL_10;
          case 4:
            goto LABEL_19;
          case 6:
            goto LABEL_26;
          case 7:
            goto LABEL_32;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_21:
  OUTLINED_FUNCTION_111_1();
  if (!v72 || (v73 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v73, v74, v75), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_26:
    OUTLINED_FUNCTION_128_0();
    if (v72)
    {
      v76 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v76, v77, v78);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_2_31();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_10_29();
            mark_s();
          }
        }
      }
    }
  }

LABEL_32:
  vretproc(v0);
  return 0;
}

void disambiguate_pelo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v267 = *MEMORY[0x277D85DE8];
  v262[0] = 0;
  v262[1] = 0;
  v260 = 0;
  v261 = 0;
  v258 = 0u;
  v259 = 0u;
  v256 = 0;
  v257 = 0;
  v254 = 0;
  v255 = 0;
  v252 = 0;
  v253 = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(&v229, v4);
  OUTLINED_FUNCTION_84_4();
  bzero(v266, v5);
  if (setjmp(v266))
  {
    goto LABEL_3;
  }

  v6 = ventproc(v3, &v229, v265, v264, v263, v266);
  if (v6)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_94_3(v6, v262);
  OUTLINED_FUNCTION_53_7();
  v259 = 0uLL;
  LODWORD(v258) = -65534;
  push_ptr_init(v3, &v256);
  push_ptr_init(v3, &v254);
  v7 = push_ptr_init(v3, &v252);
  v8 = 0;
  OUTLINED_FUNCTION_115_1(v7, v9, &null_str_8);
  v10 = OUTLINED_FUNCTION_73_6();
  fence_29(v10, v11, v12);
  v13 = OUTLINED_FUNCTION_81_5();
  v15 = 0;
  if (lpta_loadp_setscan_l(v13, v14, 1) || (OUTLINED_FUNCTION_20_21(), test_string_s(), OUTLINED_FUNCTION_144_0(), v15 = 0, v18))
  {
LABEL_10:
    v32 = OUTLINED_FUNCTION_73_6();
    v33 = npush_s(v32);
    OUTLINED_FUNCTION_148_0(v33, v34, v35, v36, v37, v38, v39, v40, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, SWORD1(v258));
    v257 = v261;
    v30 = v8;
    v31 = v15;
  }

  else
  {
LABEL_8:
    v19 = v16;
    v20 = v17;
    savescptr(v3, 2, &v256);
    v21 = OUTLINED_FUNCTION_79_6();
    v22 = npush_s(v21);
    OUTLINED_FUNCTION_148_0(v22, v23, v24, v25, v26, v27, v28, v29, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, SWORD1(v258));
    v30 = v20;
    v31 = v19;
  }

  v41 = (v3 + 2054);
  v42 = (v3 + 2058);
  v43 = 4;
  v228 = 5;
  v227 = 19;
  v226 = 20;
  v225 = 21;
  v224 = 8;
  v223 = 10;
  LODWORD(v44) = v31;
  while (2)
  {
    v45 = v30;
    v46 = OUTLINED_FUNCTION_133_0();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_66_6();
    if (lpta_loadp_setscan_l(v48, v49, v50))
    {
      v51 = v45;
LABEL_14:
      v52 = v51;
      starttest(v3, v224);
      v53 = OUTLINED_FUNCTION_66_6();
      if (lpta_loadp_setscan_l(v53, v54, v55))
      {
        v56 = v52;
LABEL_16:
        v52 = v56;
        v57 = OUTLINED_FUNCTION_52_7();
        starttest(v57, v58);
        v59 = OUTLINED_FUNCTION_134_0();
        if (lpta_loadp_setscan_r(v59, v60, 2))
        {
          v61 = v52;
LABEL_18:
          v52 = v61;
          starttest(v3, v223);
          v62 = OUTLINED_FUNCTION_134_0();
          if (lpta_loadp_setscan_r(v62, v63, 2))
          {
            v64 = v52;
LABEL_20:
            v52 = v64;
            v65 = OUTLINED_FUNCTION_51_7();
            starttest(v65, v66);
            v67 = OUTLINED_FUNCTION_134_0();
            if (lpta_loadp_setscan_r(v67, v68, 2))
            {
LABEL_21:
              v69 = (v3 + 2074);
              v70 = v44;
              if (*(v3 + 3078) != *(v3 + 3074))
              {
                goto LABEL_3;
              }

              goto LABEL_43;
            }

            v117 = OUTLINED_FUNCTION_1_31();
            if (!testFldeq(v117, v118, v119, v120))
            {
              OUTLINED_FUNCTION_60_7();
              bspush_ca_scan_boa();
              v121 = OUTLINED_FUNCTION_64_6();
              bspush_ca_scan(v121, v122);
              v123 = OUTLINED_FUNCTION_61_7();
              v126 = npush_fld(v123, v124, v125);
              if (!v126)
              {
                OUTLINED_FUNCTION_139_0(v126, v127, v128, v129, v130, v131, v132, v133, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, SWORD1(v258));
                v141 = if_testeq(v3, v134, v135, v136, v137, v138, v139, v140);
                v142 = v52;
                v113 = v52;
                if (!v141)
                {
LABEL_73:
                  LODWORD(v44) = 1;
                  v113 = v142;
                }

                goto LABEL_62;
              }
            }

LABEL_40:
            v113 = v52;
            goto LABEL_62;
          }

          v114 = OUTLINED_FUNCTION_14_26();
          if (testFldeq(v114, v115, v116, 12))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v81 = OUTLINED_FUNCTION_1_31();
          if (testFldeq(v81, v82, v83, v84))
          {
            goto LABEL_40;
          }

          v85 = OUTLINED_FUNCTION_61_7();
          v88 = npush_fld(v85, v86, v87);
          if (v88)
          {
            goto LABEL_40;
          }

          OUTLINED_FUNCTION_139_0(v88, v89, v90, v91, v92, v93, v94, v95, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, SWORD1(v258));
          if (if_testeq(v3, v96, v97, v98, v99, v100, v101, v102))
          {
            goto LABEL_40;
          }
        }

        v80 = advance_tok(v3, v103, v104, v105);
        v69 = (v3 + 2074);
      }

      else
      {
        v71 = OUTLINED_FUNCTION_14_26();
        if (testFldeq(v71, v72, v73, 11))
        {
          goto LABEL_40;
        }

        v74 = OUTLINED_FUNCTION_61_7();
        if (testFldeq(v74, v75, v76, 1))
        {
          goto LABEL_40;
        }

        v80 = advance_tok(v3, v77, v78, v79);
        v69 = v42;
      }
    }

    else
    {
      bspush_ca_scan(v3, v228);
      v106 = OUTLINED_FUNCTION_4_29();
      v110 = testFldeq(v106, v107, v108, v109);
      v111 = v45;
      v112 = v44;
      v113 = v45;
      if (v110)
      {
        goto LABEL_62;
      }

LABEL_38:
      LODWORD(v44) = v112;
      v52 = v111;
      v143 = OUTLINED_FUNCTION_61_7();
      v146 = npush_fld(v143, v144, v145);
      if (v146)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_139_0(v146, v147, v148, v149, v150, v151, v152, v153, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, SWORD1(v258));
      if (if_testeq(v3, v154, v155, v156, v157, v158, v159, v160))
      {
        goto LABEL_40;
      }

      v80 = advance_tok(v3, v161, v162, v163);
      v69 = v41;
    }

    v70 = v44;
    v113 = v52;
    if (v80)
    {
      goto LABEL_62;
    }

LABEL_43:
    v164 = *v69;
    v165 = v70;
LABEL_44:
    v166 = v164;
    if (*(v3 + 2074) != v164 || (v167 = OUTLINED_FUNCTION_81_5(), lpta_rpta_loadp(v167, v168, &v260), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
    {
      v169 = v166;
      v15 = v165;
    }

    else
    {
      WORD1(v258) = 4;
      v181 = OUTLINED_FUNCTION_12_28();
      v184 = mark_v(v181, v182, 4, &v258, v183);
      v169 = v166;
      v15 = v165;
      if (!v184)
      {
        goto LABEL_3;
      }
    }

LABEL_49:
    v44 = v169;
    if (*v42 == v169)
    {
      v170 = OUTLINED_FUNCTION_81_5();
      lpta_rpta_loadp(v170, v171, &v260);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_12_28();
          if (!mark_s())
          {
            v172 = OUTLINED_FUNCTION_12_28();
            if (!OUTLINED_FUNCTION_140_0(v172))
            {
              starttest_l(v3, v227);
              v173 = OUTLINED_FUNCTION_81_5();
              if (!lpta_loadp_setscan_r(v173, v174, 4))
              {
                v178 = advance_tok(v3, v175, v176, v177);
                v179 = v44;
                v180 = v15;
                if (!v178)
                {
LABEL_59:
                  LODWORD(v44) = v180;
                  v185 = v42;
                  v186 = v43;
                  v187 = v41;
                  v188 = v179;
                  savescptr(v3, v226, &v254);
                  v192 = advance_tok(v3, v189, v190, v191);
                  v193 = v188;
                  v15 = v44;
                  v113 = v188;
                  v41 = v187;
                  v43 = v186;
                  v42 = v185;
                  if (v192)
                  {
                    goto LABEL_62;
                  }

LABEL_60:
                  v44 = v193;
                  savescptr(v3, v225, &v252);
                }
              }

LABEL_61:
              lpta_rpta_loadp(v3, &v254, &v252);
              v194 = OUTLINED_FUNCTION_79_6();
              inserted = insert_2pt_s(v194, v195, 1, &unk_2806BBF48, v196);
              v113 = v44;
              LODWORD(v44) = v15;
              if (!inserted)
              {
                goto LABEL_3;
              }

LABEL_62:
              v198 = v44;
              v44 = v113;
              v199 = v198;
LABEL_63:
              v200 = *(v3 + 104);
              if (v200)
              {
                v201 = OUTLINED_FUNCTION_87_4(v200);
                v15 = v202;
              }

              else
              {
                v201 = vback(v3, v199);
                v15 = 0;
              }

              v111 = v44;
              v112 = v15;
              v142 = v44;
              switch(v201)
              {
                case 1:
                  v8 = v44;
                  goto LABEL_10;
                case 2:
                  v17 = v44;
                  v16 = v15;
                  goto LABEL_8;
                case 3:
                  v30 = OUTLINED_FUNCTION_129_0();
                  continue;
                case 4:
                  v51 = OUTLINED_FUNCTION_129_0();
                  goto LABEL_14;
                case 5:
                  v203 = OUTLINED_FUNCTION_15_26();
                  v206 = testFldeq(v203, v204, v205, 4);
                  v199 = v15;
                  if (v206)
                  {
                    goto LABEL_63;
                  }

                  v111 = v44;
                  v112 = v15;
                  goto LABEL_38;
                case 6:
                  goto LABEL_38;
                case 7:
                  v164 = v44;
                  v165 = v15;
                  goto LABEL_44;
                case 8:
                  v56 = OUTLINED_FUNCTION_129_0();
                  goto LABEL_16;
                case 9:
                  v61 = OUTLINED_FUNCTION_129_0();
                  goto LABEL_18;
                case 10:
                  v64 = OUTLINED_FUNCTION_129_0();
                  goto LABEL_20;
                case 11:
                  LODWORD(v44) = v15;
                  goto LABEL_21;
                case 12:
                  bspop_boa(v3);
                  v210 = advance_tok(v3, v207, v208, v209);
                  v199 = v15;
                  if (v210)
                  {
                    goto LABEL_63;
                  }

                  v69 = v42;
                  v70 = v15;
                  goto LABEL_43;
                case 13:
                  v211 = OUTLINED_FUNCTION_61_7();
                  v215 = testFldeq(v211, v212, v213, v214);
                  v199 = v15;
                  if (v215)
                  {
                    goto LABEL_63;
                  }

                  v142 = v44;
                  goto LABEL_73;
                case 14:
                  goto LABEL_73;
                case 16:
                  v169 = v44;
                  goto LABEL_49;
                case 18:
                  goto LABEL_84;
                case 19:
                  goto LABEL_61;
                case 20:
                  v179 = v44;
                  v180 = v15;
                  goto LABEL_59;
                case 21:
                  v193 = v44;
                  goto LABEL_60;
                default:
                  goto LABEL_3;
              }
            }
          }
        }
      }
    }

    break;
  }

LABEL_84:
  if (*v41 == v44)
  {
    lpta_rpta_loadp(v3, v262, &v260);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      v216 = OUTLINED_FUNCTION_12_28();
      if (!OUTLINED_FUNCTION_140_0(v216))
      {
        WORD1(v258) = 4;
        v217 = OUTLINED_FUNCTION_71_6();
        mark_v(v217, v218, v219, v220, v221);
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_122_0();
}

uint64_t disambiguate_por(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152, v155);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v156, v158, v160, v162, v164);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154, v157, v159, SHIDWORD(v159), v161, SWORD2(v161), SHIWORD(v161), v163, SWORD2(v163), SBYTE6(v163), SHIBYTE(v163), v165, v166) || (v27 = OUTLINED_FUNCTION_76_6(), OUTLINED_FUNCTION_110_1(v27, v28), OUTLINED_FUNCTION_70_6(v29, v30, v31, v32, v33, v34, v35, v36, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148), fence_29(v1, 0, &null_str_8), v37 = OUTLINED_FUNCTION_73_6(), fence_29(v37, v38, v39), OUTLINED_FUNCTION_43_8(), !v40))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_112_1();
    if (!v40 || (v41 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v41, v42, v43), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (v44 = OUTLINED_FUNCTION_40_9(), mark_v(v44, v45, v46, v47, v48)))
    {
      OUTLINED_FUNCTION_128_0();
      if (v40)
      {
        v49 = OUTLINED_FUNCTION_16_25();
        lpta_rpta_loadp(v49, v50, v51);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_2_31();
          mark_s();
        }
      }
    }

    vretproc(v1);
    return 0;
  }
}

uint64_t disambiguate_se(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v3, v4, v5, v6, v7, v8, v9, v10, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_50_7();
  if (OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_59_7();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_53_7();
  v20 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_89_4();
  push_ptr_init(v22, v23);
  fence_29(v1, 0, &null_str_8);
  v24 = OUTLINED_FUNCTION_24_21();
  fence_29(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_97_3();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_66_6();
  if (!lpta_loadp_setscan_r(v29, v30, v31))
  {
    v71 = OUTLINED_FUNCTION_8_29();
    goto LABEL_19;
  }

LABEL_5:
  v32 = OUTLINED_FUNCTION_38_11();
  starttest(v32, v33);
  v34 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v34, v35, v36))
  {
    v71 = OUTLINED_FUNCTION_13_28();
    v74 = 8;
LABEL_19:
    if (testFldeq(v71, v72, v73, v74) || advance_tok(v1, v75, v76, v77))
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_6:
  v37 = OUTLINED_FUNCTION_32_15();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v39, v40, v41))
  {
    v71 = OUTLINED_FUNCTION_14_26();
    v74 = 29;
    goto LABEL_19;
  }

LABEL_7:
  v42 = OUTLINED_FUNCTION_31_16();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v44, v45, v46))
  {
    v71 = OUTLINED_FUNCTION_13_28();
    v74 = 10;
    goto LABEL_19;
  }

LABEL_8:
  v47 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_l(v47, v48, v49))
  {
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
LABEL_21:
      v78 = 2070;
      goto LABEL_22;
    }
  }

LABEL_10:
  v50 = OUTLINED_FUNCTION_46_8();
  starttest(v50, v51);
  v52 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v52, v53, v54))
  {
    v71 = OUTLINED_FUNCTION_5_29();
    goto LABEL_19;
  }

LABEL_11:
  v55 = OUTLINED_FUNCTION_34_14();
  starttest(v55, v56);
  v57 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v57, v58, v59))
  {
LABEL_12:
    v60 = OUTLINED_FUNCTION_74_6();
    savescptr(v60, v61, v62);
    v63 = OUTLINED_FUNCTION_68_6();
    bspush_ca_scan(v63, v64);
LABEL_13:
    v65 = OUTLINED_FUNCTION_60_7();
    bspush_ca_scan(v65, v66);
    v67 = OUTLINED_FUNCTION_14_26();
    for (i = 16; ; i = v101)
    {
LABEL_49:
      if (!testFldeq(v67, v68, v69, i))
      {
LABEL_50:
        if (!advance_tok(v1, v86, v87, v88))
        {
          v108 = OUTLINED_FUNCTION_80_5();
          if (!lpta_loadp_setscan_r(v108, v109, v110) && !advance_tok(v1, v111, v112, v113) && !advance_tok(v1, v114, v115, v116))
          {
LABEL_54:
            v117 = OUTLINED_FUNCTION_82_5();
            savescptr(v117, v118, v119);
            OUTLINED_FUNCTION_117_1();
            OUTLINED_FUNCTION_21_21(v120, v121, v122, v123, v124, v125, v126, v127, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202);
            if (!lpta_tstmovel())
            {
              v128 = OUTLINED_FUNCTION_73_6();
              setscan_l(v128, v129, v130);
              if (!v131)
              {
                v132 = OUTLINED_FUNCTION_72_6();
                bspush_ca_scan(v132, v133);
                OUTLINED_FUNCTION_36_12();
LABEL_43:
                if (!test_string_s())
                {
LABEL_36:
                  v97 = OUTLINED_FUNCTION_72_6();
                  bspush_ca_scan(v97, v98);
LABEL_37:
                  OUTLINED_FUNCTION_20_21();
                  if (!test_string_s())
                  {
                    goto LABEL_21;
                  }
                }
              }
            }
          }
        }
      }

LABEL_29:
      while (2)
      {
        v84 = *(v1 + 104);
        if (v84)
        {
          v85 = OUTLINED_FUNCTION_87_4(v84);
        }

        else
        {
          v89 = OUTLINED_FUNCTION_90_4();
          v85 = vback(v89, v90);
        }

        v78 = 2070;
        switch(v85)
        {
          case 1:
            goto LABEL_5;
          case 2:
            v79 = 0;
            goto LABEL_23;
          case 3:
            goto LABEL_6;
          case 4:
            goto LABEL_7;
          case 5:
            goto LABEL_8;
          case 6:
            goto LABEL_10;
          case 7:
            goto LABEL_11;
          case 8:
            goto LABEL_57;
          case 9:
            goto LABEL_12;
          case 10:
            v91 = OUTLINED_FUNCTION_13_28();
            if (!testFldeq(v91, v92, v93, 1) && !advance_tok(v1, v94, v95, v96))
            {
              goto LABEL_13;
            }

            continue;
          case 11:
            goto LABEL_13;
          case 12:
            v101 = 14;
            break;
          case 13:
            goto LABEL_50;
          case 14:
            v104 = OUTLINED_FUNCTION_69_6();
            bspush_ca_scan(v104, v105);
            v67 = OUTLINED_FUNCTION_14_26();
            i = 19;
            goto LABEL_49;
          case 15:
            v99 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v99, v100);
            v67 = OUTLINED_FUNCTION_14_26();
            i = 15;
            goto LABEL_49;
          case 16:
            v101 = 17;
            break;
          case 17:
            v67 = OUTLINED_FUNCTION_14_26();
            i = 20;
            goto LABEL_49;
          case 18:
            goto LABEL_54;
          case 19:
            v102 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v102, v103);
            OUTLINED_FUNCTION_20_21();
            goto LABEL_43;
          case 20:
          case 22:
            goto LABEL_36;
          case 21:
            OUTLINED_FUNCTION_42_8();
            goto LABEL_43;
          case 23:
            goto LABEL_22;
          case 24:
            goto LABEL_37;
          case 25:
            goto LABEL_61;
          case 27:
            v79 = 0;
            goto LABEL_65;
          case 28:
            goto LABEL_68;
          default:
            goto LABEL_3;
        }

        break;
      }

      v106 = OUTLINED_FUNCTION_97_3();
      bspush_ca_scan(v106, v107);
      v67 = OUTLINED_FUNCTION_14_26();
    }
  }

LABEL_57:
  v134 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_r(v134, v135, v136) && !advance_tok(v1, v137, v138, v139) && !advance_tok(v1, v140, v141, v142))
  {
    OUTLINED_FUNCTION_117_1();
    v143 = OUTLINED_FUNCTION_23_21();
    if (!test_ptr(v143, v144, v145))
    {
      goto LABEL_21;
    }
  }

LABEL_61:
  OUTLINED_FUNCTION_43_8();
  if (!v80)
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v78 = 2082;
LABEL_22:
  v79 = *(v1 + v78);
LABEL_23:
  OUTLINED_FUNCTION_111_1();
  if (!v80 || (v81 = OUTLINED_FUNCTION_25_20(), lpta_rpta_loadp(v81, v82, v83), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_65:
    if (*(v1 + 2082) == v79)
    {
      v146 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v146, v147, v148);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_2_31();
        mark_s();
      }
    }
  }

LABEL_68:
  vretproc(v1);
  return 0;
}

uint64_t disambiguate_sao(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v214 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v2, v3, v4, v5, v6, v7, v8, v9, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204);
  OUTLINED_FUNCTION_84_4();
  bzero(v213, v10);
  if (setjmp(v213))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_50_7();
  if (OUTLINED_FUNCTION_141_0(v11, v12, v13, v14, v15, v16, v17, v18, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, *v206, *&v206[8], v207, v208, v209, v210, v211, v212))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_59_7();
  get_parm(v20, v21, v22, -6);
  OUTLINED_FUNCTION_53_7();
  v23 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_89_4();
  v27 = push_ptr_init(v25, v26);
  OUTLINED_FUNCTION_115_1(v27, v28, &null_str_8);
  v29 = OUTLINED_FUNCTION_57_7();
  fence_29(v29, v30, v31);
  OUTLINED_FUNCTION_125_0();
  v32 = OUTLINED_FUNCTION_66_6();
  v35 = 0;
  if (!lpta_loadp_setscan_r(v32, v33, v34))
  {
    v35 = 0;
    v36 = 0;
    if (!advanc(v1))
    {
LABEL_6:
      LODWORD(v35) = v36;
      OUTLINED_FUNCTION_102_1();
      v37 = OUTLINED_FUNCTION_82_5();
      savescptr(v37, v38, v39);
      if (advance_tok(v1, v40, v41, v42))
      {
        goto LABEL_35;
      }

LABEL_7:
      v43 = OUTLINED_FUNCTION_74_6();
      savescptr(v43, v44, v45);
LABEL_8:
      v35 = v36;
    }
  }

  v46 = OUTLINED_FUNCTION_89_4();
  lpta_loadpn(v46, v47);
  rpta_loadpn(v1, (v1 + 418));
  if (!compare_ptas(v1) && !testneq(v1))
  {
    v48 = OUTLINED_FUNCTION_86_4();
    if (!is_proper_name(v48, v49, v50, v51, v52, v53, v54, v55))
    {
      v56 = OUTLINED_FUNCTION_76_6();
      if (!is_proper_name(v56, v57, v58, v59, v60, v61, v62, v63))
      {
        v64 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v64, v65, v66);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_3_30();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_11_28();
            if (!mark_s())
            {
              goto LABEL_3;
            }
          }
        }
      }
    }
  }

  while (2)
  {
    v67 = v35;
    v68 = OUTLINED_FUNCTION_47_8();
    starttest(v68, v69);
    v70 = OUTLINED_FUNCTION_49_7();
    if (!lpta_loadp_setscan_l(v70, v71, v72))
    {
      v94 = OUTLINED_FUNCTION_46_8();
      bspush_ca_scan(v94, v95);
      v96 = OUTLINED_FUNCTION_14_26();
      v99 = testFldeq(v96, v97, v98, 11);
      v102 = v35;
      if (!v99)
      {
LABEL_25:
        LODWORD(v35) = v102;
        if (!advance_tok(v1, v100, v102, v101))
        {
          v103 = OUTLINED_FUNCTION_25_20();
          lpta_rpta_loadp(v103, v104, v105);
          OUTLINED_FUNCTION_0_33();
          if (!mark_s())
          {
            OUTLINED_FUNCTION_3_30();
            if (!mark_s())
            {
              OUTLINED_FUNCTION_2_31();
              if (!mark_s())
              {
                OUTLINED_FUNCTION_10_29();
                if (!mark_s())
                {
                  v106 = OUTLINED_FUNCTION_40_9();
                  if (!mark_v(v106, v107, v108, v109, 0))
                  {
                    goto LABEL_3;
                  }
                }
              }
            }
          }
        }
      }

LABEL_35:
      LODWORD(v100) = v35;
LABEL_36:
      v114 = v1[13];
      if (v114)
      {
        v115 = OUTLINED_FUNCTION_87_4(v114);
        v36 = v100;
      }

      else
      {
        v115 = vback(v1, v100);
        v36 = 0;
      }

      v102 = v36;
      v85 = v36;
      switch(v115)
      {
        case 1:
          goto LABEL_8;
        case 2:
          goto LABEL_6;
        case 3:
          goto LABEL_7;
        case 4:
          v35 = v36;
          continue;
        case 6:
          v67 = v36;
          goto LABEL_19;
        case 7:
          v116 = OUTLINED_FUNCTION_101_1();
          bspush_ca_scan(v116, v117);
          v118 = OUTLINED_FUNCTION_13_28();
          goto LABEL_44;
        case 8:
          goto LABEL_25;
        case 9:
          v118 = OUTLINED_FUNCTION_15_26();
LABEL_44:
          v126 = testFldeq(v118, v119, v120, 2);
          LODWORD(v100) = v36;
          if (!v126)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        case 10:
LABEL_45:
          v127 = OUTLINED_FUNCTION_28_17();
          v130 = testFldeq(v127, v128, v129, 2);
          v102 = v36;
          v100 = v36;
          if (!v130)
          {
            goto LABEL_25;
          }

          goto LABEL_36;
        case 11:
          goto LABEL_52;
        case 12:
          v121 = OUTLINED_FUNCTION_1_31();
          v125 = testFldeq(v121, v122, v123, v124);
          v85 = v36;
          LODWORD(v100) = v36;
          if (!v125)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        case 13:
          goto LABEL_21;
        case 14:
          bspop_boa(v1);
          v134 = advance_tok(v1, v131, v132, v133);
          LODWORD(v100) = v36;
          if (v134)
          {
            goto LABEL_36;
          }

          v135 = OUTLINED_FUNCTION_81_5();
          lpta_rpta_loadp(v135, v136, v206);
          OUTLINED_FUNCTION_0_33();
          v137 = mark_s();
          LODWORD(v100) = v36;
          if (v137)
          {
            goto LABEL_36;
          }

          OUTLINED_FUNCTION_6_29();
          v138 = mark_s();
          LODWORD(v100) = v36;
          if (v138)
          {
            goto LABEL_36;
          }

          v139 = OUTLINED_FUNCTION_40_9();
          v143 = mark_v(v139, v140, v141, v142, 0);
          LODWORD(v100) = v36;
          if (v143)
          {
            goto LABEL_36;
          }

          goto LABEL_3;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_19:
  v73 = OUTLINED_FUNCTION_51_7();
  starttest(v73, v74);
  v75 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v75, v76, v77))
  {
    v78 = OUTLINED_FUNCTION_60_7();
    bspush_ca_scan(v78, v79);
    v80 = OUTLINED_FUNCTION_4_29();
    v84 = testFldeq(v80, v81, v82, v83);
    v85 = v67;
    LODWORD(v35) = v67;
    if (!v84)
    {
LABEL_21:
      v86 = v85;
      v87 = OUTLINED_FUNCTION_6_29();
      if (testFldeq(v87, v88, v89, v90) || advance_tok(v1, v91, v92, v93))
      {
        LODWORD(v35) = v86;
      }

      else
      {
        OUTLINED_FUNCTION_72_6();
        bspush_ca_scan_boa();
        v110 = OUTLINED_FUNCTION_5_29();
        if (testFldeq(v110, v111, v112, v113))
        {
          LODWORD(v35) = v86;
        }

        else
        {
          LODWORD(v35) = 1;
        }
      }
    }

    goto LABEL_35;
  }

LABEL_52:
  OUTLINED_FUNCTION_43_8();
  if (v144)
  {
    v145 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v145, v146, v147);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      OUTLINED_FUNCTION_3_30();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_10_29();
          if (!mark_s())
          {
            v148 = OUTLINED_FUNCTION_40_9();
            mark_v(v148, v149, v150, v151, 0);
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_113_1();
}

uint64_t pro_vs_det(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v141 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v4, v5, v6, v7, v8, v9, v10, v11, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v3))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_16();
  if (OUTLINED_FUNCTION_116_1(v12, v13, v14, v15, v16))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_26_20();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v21, v22);
  OUTLINED_FUNCTION_131_0();
  v25 = OUTLINED_FUNCTION_115_1(v23, v24, &null_str_8);
  OUTLINED_FUNCTION_104_1(v25, v26, &unk_2806BBF44);
  HIWORD(v136) = 0;
  OUTLINED_FUNCTION_127_0();
  v27 = OUTLINED_FUNCTION_77_6();
  if (lpta_loadp_setscan_l(v27, v28, v2) || (OUTLINED_FUNCTION_20_21(), test_string_s()))
  {
LABEL_16:
    v53 = OUTLINED_FUNCTION_38_11();
    starttest(v53, v54);
    v55 = OUTLINED_FUNCTION_35_13();
    if (!lpta_loadp_setscan_r(v55, v56, v57))
    {
      v58 = OUTLINED_FUNCTION_1_31();
      if (testFldeq(v58, v59, v60, v61))
      {
        goto LABEL_30;
      }

LABEL_18:
      if (advance_tok(v1, v62, v63, v64))
      {
        goto LABEL_30;
      }

      v65 = 2066;
      goto LABEL_40;
    }

LABEL_20:
    v66 = OUTLINED_FUNCTION_32_15();
    starttest(v66, v67);
    v68 = OUTLINED_FUNCTION_35_13();
    if (lpta_loadp_setscan_r(v68, v69, v70))
    {
LABEL_21:
      v71 = OUTLINED_FUNCTION_34_14();
      starttest(v71, v72);
      v73 = OUTLINED_FUNCTION_35_13();
      if (lpta_loadp_setscan_r(v73, v74, v75))
      {
LABEL_22:
        OUTLINED_FUNCTION_43_8();
        if (!v76)
        {
LABEL_3:
          vretproc(v1);
          return 94;
        }

        v77 = OUTLINED_FUNCTION_51_7();
        starttest(v77, v78);
        v79 = OUTLINED_FUNCTION_54_7();
        if (!lpta_loadp_setscan_r(v79, v80, v81))
        {
          v82 = OUTLINED_FUNCTION_40_9();
          if (npush_fld(v82, v83, v84))
          {
            goto LABEL_30;
          }

          v85 = OUTLINED_FUNCTION_90_4();
          npush_i(v85);
          if (if_testgt(v1, v86, v87, v88, v89, v90, v91, v92))
          {
            goto LABEL_30;
          }

          goto LABEL_18;
        }
      }

      else
      {
LABEL_36:
        v108 = OUTLINED_FUNCTION_52_7();
        if (test_synch(v108, v109, 1, v110))
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v93 = OUTLINED_FUNCTION_31_16();
      bspush_ca_scan(v93, v94);
      v95 = OUTLINED_FUNCTION_5_29();
LABEL_29:
      if (testFldeq(v95, v96, v97, v98))
      {
        goto LABEL_30;
      }

LABEL_38:
      if (advance_tok(v1, v99, v100, v101))
      {
        goto LABEL_30;
      }
    }

LABEL_39:
    v65 = 2070;
LABEL_40:
    HIWORD(v136) = *(v1 + v65);
    goto LABEL_7;
  }

  copyvar(v1, &v136, (v1 + 2068));
  v29 = OUTLINED_FUNCTION_19_22();
  lpta_rpta_loadp(v29, v30, v31);
  OUTLINED_FUNCTION_2_31();
  if (mark_s())
  {
    goto LABEL_30;
  }

LABEL_7:
  while (2)
  {
    if (*(v1 + 2070) != HIWORD(v136) || (v32 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v32, v33, v34), OUTLINED_FUNCTION_3_30(), mark_s()))
    {
LABEL_9:
      if (*(v1 + 2066) == HIWORD(v136))
      {
        v35 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v35, v36, v37);
        OUTLINED_FUNCTION_3_30();
        mark_s();
      }
    }

LABEL_11:
    v38 = OUTLINED_FUNCTION_69_6();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_54_7();
    if (!lpta_loadp_setscan_r(v40, v41, v42))
    {
      v43 = OUTLINED_FUNCTION_13_28();
      if (testFldeq(v43, v44, v45, v46) || advance_tok(v1, v47, v48, v49) || (v50 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v50, v51, v52), OUTLINED_FUNCTION_0_33(), mark_s()))
      {
LABEL_30:
        v102 = *(v1 + 104);
        if (v102)
        {
          v103 = OUTLINED_FUNCTION_87_4(v102);
        }

        else
        {
          v104 = OUTLINED_FUNCTION_90_4();
          v103 = vback(v104, v105);
        }

        switch(v103)
        {
          case 1:
            goto LABEL_16;
          case 2:
          case 12:
            continue;
          case 3:
            goto LABEL_20;
          case 4:
            goto LABEL_21;
          case 5:
            v106 = OUTLINED_FUNCTION_46_8();
            bspush_ca_scan(v106, v107);
            v95 = OUTLINED_FUNCTION_8_29();
            goto LABEL_29;
          case 6:
            goto LABEL_38;
          case 7:
            v95 = OUTLINED_FUNCTION_13_28();
            v98 = 10;
            goto LABEL_29;
          case 8:
            goto LABEL_22;
          case 9:
            goto LABEL_36;
          case 11:
            goto LABEL_39;
          case 13:
            goto LABEL_9;
          case 14:
            goto LABEL_11;
          case 15:
            goto LABEL_15;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_15:
  vretproc(v1);
  return 0;
}

uint64_t det_vs_nounadj(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v167, v170);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v168, v171, v173, v175, v177, v179);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v169, v172, v174, SHIDWORD(v174), v176, SWORD2(v176), SHIWORD(v176), v178, SWORD2(v178), SBYTE6(v178), SHIBYTE(v178), v180, v181))
  {
    v28 = OUTLINED_FUNCTION_26_20();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_70_6(v31, v32, v33, v34, v35, v36, v37, v38, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163);
    fence_29(v1, 0, &null_str_8);
    v39 = OUTLINED_FUNCTION_24_21();
    fence_29(v39, v40, v41);
    v42 = OUTLINED_FUNCTION_97_3();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_41_8();
    if (lpta_loadp_setscan_l(v44, v45, v46) || ((v51 = OUTLINED_FUNCTION_4_29(), testFldeq(v51, v52, v53, v54)) || (v55 = OUTLINED_FUNCTION_14_26(), testFldeq(v55, v56, v57, 2)) || advance_tok(v1, v58, v59, v60) || (v61 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v61, v62, v63), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_15_26(), mark_s())) && ((v64 = *(v1 + 104)) == 0 ? (v66 = OUTLINED_FUNCTION_90_4(), v65 = vback(v66, v67)) : (v65 = OUTLINED_FUNCTION_87_4(v64)), v65 == 1))
    {
      OUTLINED_FUNCTION_43_8();
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_16_25();
        lpta_rpta_loadp(v48, v49, v50);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_4_29();
          mark_s();
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t disambiguate_cedo(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v130 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v4, v5, v6, v7, v8, v9, v10, v11, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v3) || (OUTLINED_FUNCTION_50_7(), OUTLINED_FUNCTION_116_1(v12, v13, v14, v15, v16)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v18 = OUTLINED_FUNCTION_59_7();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_92_3(v21, v129);
  v22 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  v26 = push_ptr_init(v24, v25);
  v28 = OUTLINED_FUNCTION_115_1(v26, v27, &null_str_8);
  OUTLINED_FUNCTION_104_1(v28, v29, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  *(v1 + 136) = v2;
  OUTLINED_FUNCTION_23_21();
  if (lpta_tstmovel() || (v30 = OUTLINED_FUNCTION_73_6(), setscan_l(v30, v31, v32), v33) || (OUTLINED_FUNCTION_36_12(), v2 = 0, test_string_s()))
  {
LABEL_9:
    v38 = OUTLINED_FUNCTION_32_15();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_25_20();
    if (!followed_by_hyphen(v40))
    {
      v41 = OUTLINED_FUNCTION_54_7();
      if (!lpta_loadp_setscan_r(v41, v42, v43))
      {
        v58 = OUTLINED_FUNCTION_31_16();
        bspush_ca_scan(v58, v59);
        v60 = OUTLINED_FUNCTION_9_29();
        testFldeq(v60, v61, v62, v63);
        OUTLINED_FUNCTION_143_0();
        if (!v67)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }
    }

LABEL_11:
    v37 = 2078;
    goto LABEL_12;
  }

LABEL_7:
  v34 = OUTLINED_FUNCTION_63_6();
  if (test_synch(v34, v35, 1, v36))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v37 = 2058;
LABEL_12:
    v44 = *(v1 + v37);
LABEL_13:
    v45 = OUTLINED_FUNCTION_34_14();
    starttest(v45, v46);
    if (*(v1 + 2058) != v44 || (v47 = OUTLINED_FUNCTION_25_20(), lpta_rpta_loadp(v47, v48, v49), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_3_30(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()) || (v50 = OUTLINED_FUNCTION_12_28(), OUTLINED_FUNCTION_140_0(v50)))
    {
LABEL_38:
      v88 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v88, v89, v90);
      OUTLINED_FUNCTION_0_33();
      if (mark_s())
      {
        v2 = v44;
      }

      else
      {
        OUTLINED_FUNCTION_2_31();
        v2 = v44;
        if (!mark_s())
        {
          break;
        }
      }

      goto LABEL_29;
    }

    v51 = OUTLINED_FUNCTION_52_7();
    starttest_l(v51, v52);
    v53 = OUTLINED_FUNCTION_86_4();
    if (lpta_loadp_setscan_r(v53, v54, 4))
    {
      v2 = v44;
    }

    else
    {
      advance_tok(v1, v55, v56, v57);
      OUTLINED_FUNCTION_143_0();
      if (!v69)
      {
LABEL_28:
        v2 = v68;
        v70 = OUTLINED_FUNCTION_82_5();
        savescptr(v70, v71, v72);
        v76 = advance_tok(v1, v73, v74, v75);
        v77 = v2;
        if (v76)
        {
          goto LABEL_29;
        }

LABEL_43:
        v2 = v77;
        v91 = OUTLINED_FUNCTION_74_6();
        savescptr(v91, v92, v93);
      }
    }

LABEL_44:
    v94 = OUTLINED_FUNCTION_16_25();
    lpta_rpta_loadp(v94, v95, v96);
    v97 = OUTLINED_FUNCTION_44_8();
    if (!insert_2pt_s(v97, v98, v99, v100, v101))
    {
      break;
    }

    do
    {
      do
      {
LABEL_29:
        v78 = *(v1 + 104);
        if (v78)
        {
          v79 = OUTLINED_FUNCTION_87_4(v78);
        }

        else
        {
          v80 = OUTLINED_FUNCTION_90_4();
          v79 = vback(v80, v81);
        }

        v64 = v2;
        switch(v79)
        {
          case 1:
            goto LABEL_9;
          case 2:
            goto LABEL_7;
          case 3:
            v44 = v2;
            goto LABEL_13;
          case 4:
            goto LABEL_11;
          case 5:
            v82 = OUTLINED_FUNCTION_101_1();
            bspush_ca_scan(v82, v83);
            v84 = OUTLINED_FUNCTION_15_26();
            v87 = 4;
            break;
          case 6:
            goto LABEL_24;
          case 7:
            v84 = OUTLINED_FUNCTION_14_26();
            v87 = 29;
            break;
          case 8:
            v44 = v2;
            goto LABEL_38;
          case 9:
            goto LABEL_44;
          case 10:
            v68 = v2;
            goto LABEL_28;
          case 11:
            v77 = v2;
            goto LABEL_43;
          case 12:
          case 13:
            goto LABEL_46;
          default:
            goto LABEL_3;
        }
      }

      while (testFldeq(v84, v85, v86, v87));
      v64 = v2;
LABEL_24:
      v2 = v64;
    }

    while (advance_tok(v1, v64, v65, v66));
  }

  OUTLINED_FUNCTION_136_0();
LABEL_46:
  vretproc(v1);
  return 0;
}

uint64_t disambiguate_mesmo(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v4, v5, v6, v7, v8, v9, v10, v11, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v179, v182);
  OUTLINED_FUNCTION_62_6(v12, v13, v14, v15, v16, v17, v18, v19, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v180, v183, v185, v187, v189, v191);
  v20 = setjmp(v3);
  if (v20 || OUTLINED_FUNCTION_17_24(v20, v21, v22, v23, v24, v25, v26, v27, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v181, v184, v186, SHIDWORD(v186), v188, SWORD2(v188), SHIWORD(v188), v190, SWORD2(v190), SBYTE6(v190), SHIBYTE(v190), v192, v193))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_26_20();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_70_6(v32, v33, v34, v35, v36, v37, v38, v39, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175);
  fence_29(v1, 0, &null_str_8);
  v40 = OUTLINED_FUNCTION_24_21();
  fence_29(v40, v41, v42);
  v43 = OUTLINED_FUNCTION_97_3();
  starttest(v43, v44);
  v45 = OUTLINED_FUNCTION_41_8();
  if (!lpta_loadp_setscan_l(v45, v46, v47))
  {
    v50 = OUTLINED_FUNCTION_78_6();
    bspush_ca_scan(v50, v51);
    v52 = OUTLINED_FUNCTION_79_6();
    v54 = testFldeq(v52, v53, v2, 1);
    v57 = 0;
    v58 = 0;
    if (!v54)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_5:
  OUTLINED_FUNCTION_43_8();
  if (!v48)
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    for (i = 2078; ; i = 2062)
    {
      v59 = *(v1 + i);
LABEL_12:
      v60 = OUTLINED_FUNCTION_34_14();
      starttest(v60, v61);
      if (*(v1 + 2078) == v59)
      {
        v62 = OUTLINED_FUNCTION_16_25();
        lpta_rpta_loadp(v62, v63, v64);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_2_31();
          if (!mark_s())
          {
            break;
          }
        }
      }

LABEL_19:
      v65 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v65, v66, v67);
      OUTLINED_FUNCTION_0_33();
      if (mark_s())
      {
        v58 = v59;
      }

      else
      {
        OUTLINED_FUNCTION_2_31();
        v58 = v59;
        if (!mark_s())
        {
          break;
        }
      }

      do
      {
        do
        {
LABEL_22:
          v68 = *(v1 + 104);
          if (v68)
          {
            v69 = OUTLINED_FUNCTION_87_4(v68);
          }

          else
          {
            v70 = OUTLINED_FUNCTION_90_4();
            v69 = vback(v70, v71);
          }

          v57 = v58;
          switch(v69)
          {
            case 1:
              goto LABEL_5;
            case 2:
              v72 = OUTLINED_FUNCTION_97_3();
              bspush_ca_scan(v72, v73);
              v74 = OUTLINED_FUNCTION_15_26();
              v77 = 4;
              break;
            case 3:
              goto LABEL_9;
            case 4:
              v78 = OUTLINED_FUNCTION_81_5();
              bspush_ca_scan(v78, v79);
              v74 = OUTLINED_FUNCTION_14_26();
              v77 = 3;
              break;
            case 5:
              v74 = OUTLINED_FUNCTION_14_26();
              v77 = 37;
              break;
            case 6:
              v59 = v58;
              goto LABEL_12;
            case 8:
              v59 = v58;
              goto LABEL_19;
            case 9:
              goto LABEL_17;
            default:
              goto LABEL_3;
          }
        }

        while (testFldeq(v74, v75, v76, v77));
        v57 = v58;
LABEL_9:
        v58 = v57;
      }

      while (advance_tok(v1, v57, v55, v56));
    }

LABEL_17:
    vretproc(v1);
    return 0;
  }
}

uint64_t disambiguate_como(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v191 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v4, v5, v6, v7, v8, v9, v10, v11, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v3) || (OUTLINED_FUNCTION_50_7(), OUTLINED_FUNCTION_116_1(v12, v13, v14, v15, v16)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v18 = OUTLINED_FUNCTION_59_7();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_92_3(v21, v190);
  v22 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  v26 = push_ptr_init(v24, v25);
  v27 = 0;
  v29 = OUTLINED_FUNCTION_115_1(v26, v28, &null_str_8);
  OUTLINED_FUNCTION_104_1(v29, v30, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  *(v1 + 136) = v2;
  OUTLINED_FUNCTION_23_21();
  if (!lpta_tstmovel())
  {
    v31 = OUTLINED_FUNCTION_73_6();
    setscan_l(v31, v32, v33);
    if (v34)
    {
      v27 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_36_12();
      test_string_s();
      OUTLINED_FUNCTION_144_0();
      if (!v36)
      {
LABEL_31:
        v27 = v35;
        v86 = OUTLINED_FUNCTION_63_6();
        if (test_synch(v86, v87, 1, v88))
        {
          goto LABEL_34;
        }

LABEL_19:
        v56 = 2058;
        goto LABEL_20;
      }
    }
  }

LABEL_8:
  v37 = OUTLINED_FUNCTION_32_15();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_25_20();
  if (!followed_by_hyphen(v39))
  {
    v40 = OUTLINED_FUNCTION_54_7();
    if (!lpta_loadp_setscan_r(v40, v41, v42))
    {
      v66 = OUTLINED_FUNCTION_31_16();
      bspush_ca_scan(v66, v67);
      v68 = OUTLINED_FUNCTION_9_29();
      v72 = testFldeq(v68, v69, v70, v71);
      v64 = v27;
      if (v72)
      {
        goto LABEL_34;
      }

LABEL_18:
      v27 = v64;
      if (advance_tok(v1, v64, v65, v49))
      {
        goto LABEL_34;
      }

      goto LABEL_19;
    }
  }

LABEL_10:
  v43 = OUTLINED_FUNCTION_34_14();
  starttest(v43, v44);
  v45 = OUTLINED_FUNCTION_54_7();
  v48 = lpta_loadp_setscan_r(v45, v46, v47);
  v49 = v27;
  if (!v48)
  {
LABEL_73:
    v27 = v49;
    v152 = OUTLINED_FUNCTION_68_6();
    bspush_ca_scan(v152, v153);
    v154 = OUTLINED_FUNCTION_51_7();
    bspush_ca_scan(v154, v155);
LABEL_74:
    v94 = v27;
LABEL_75:
    v27 = v94;
    v156 = OUTLINED_FUNCTION_64_6();
    bspush_ca_scan(v156, v157);
    v158 = OUTLINED_FUNCTION_8_29();
    v162 = testFldeq(v158, v159, v160, v161);
    v95 = v27;
    if (v162)
    {
      goto LABEL_34;
    }

LABEL_76:
    v27 = v95;
    if (advance_tok(v1, v64, v65, v49))
    {
      goto LABEL_34;
    }

    v56 = 2070;
    goto LABEL_20;
  }

LABEL_11:
  v50 = OUTLINED_FUNCTION_69_6();
  starttest(v50, v51);
  v52 = OUTLINED_FUNCTION_54_7();
  if (!lpta_loadp_setscan_r(v52, v53, v54))
  {
    v57 = OUTLINED_FUNCTION_72_6();
    bspush_ca_scan(v57, v58);
    v59 = OUTLINED_FUNCTION_4_29();
    v63 = testFldeq(v59, v60, v61, v62);
    v65 = v27;
    if (!v63)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

LABEL_12:
  OUTLINED_FUNCTION_43_8();
  if (!v55)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v56 = 2082;
LABEL_20:
    v27 = *(v1 + v56);
LABEL_21:
    OUTLINED_FUNCTION_112_1();
    if (!v55)
    {
      break;
    }

    v73 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v73, v74, v75);
    OUTLINED_FUNCTION_0_33();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_3_30();
    if (mark_s())
    {
      break;
    }

    OUTLINED_FUNCTION_6_29();
    if (mark_s())
    {
      break;
    }

    v76 = OUTLINED_FUNCTION_12_28();
    if (OUTLINED_FUNCTION_140_0(v76))
    {
      break;
    }

    v77 = OUTLINED_FUNCTION_72_6();
    starttest_l(v77, v78);
    v79 = OUTLINED_FUNCTION_86_4();
    if (!lpta_loadp_setscan_r(v79, v80, 4))
    {
      v84 = advance_tok(v1, v81, v82, v83);
      v85 = v27;
      if (!v84)
      {
LABEL_66:
        v27 = v85;
        v133 = OUTLINED_FUNCTION_82_5();
        savescptr(v133, v134, v135);
        v139 = advance_tok(v1, v136, v137, v138);
        v140 = v27;
        if (v139)
        {
          goto LABEL_34;
        }

LABEL_69:
        v27 = v140;
        v141 = OUTLINED_FUNCTION_74_6();
        savescptr(v141, v142, v143);
      }
    }

LABEL_70:
    v144 = OUTLINED_FUNCTION_16_25();
    lpta_rpta_loadp(v144, v145, v146);
    v147 = OUTLINED_FUNCTION_44_8();
    if (!insert_2pt_s(v147, v148, v149, v150, v151))
    {
      goto LABEL_71;
    }

    do
    {
LABEL_34:
      while (2)
      {
        v89 = *(v1 + 104);
        if (v89)
        {
          v90 = OUTLINED_FUNCTION_87_4(v89);
        }

        else
        {
          v91 = OUTLINED_FUNCTION_90_4();
          v90 = vback(v91, v92);
        }

        v93 = v90 - 1;
        v64 = v27;
        v49 = v27;
        v94 = v27;
        v95 = v27;
        v65 = v27;
        switch(v93)
        {
          case 0:
            goto LABEL_8;
          case 1:
            v35 = v27;
            goto LABEL_31;
          case 2:
            goto LABEL_21;
          case 3:
            goto LABEL_10;
          case 4:
            v96 = OUTLINED_FUNCTION_46_8();
            bspush_ca_scan(v96, v97);
            v98 = OUTLINED_FUNCTION_15_26();
            v101 = 4;
            goto LABEL_49;
          case 5:
            goto LABEL_18;
          case 6:
            v98 = OUTLINED_FUNCTION_14_26();
            v101 = 29;
LABEL_49:
            if (testFldeq(v98, v99, v100, v101))
            {
              continue;
            }

            v64 = v27;
            goto LABEL_18;
          case 7:
            goto LABEL_11;
          case 8:
            goto LABEL_73;
          case 9:
            v105 = OUTLINED_FUNCTION_1_31();
            if (testFldeq(v105, v106, v107, v108) || advance_tok(v1, v109, v110, v111))
            {
              continue;
            }

            v49 = v27;
            goto LABEL_73;
          case 10:
            v112 = OUTLINED_FUNCTION_9_29();
            if (!testFldeq(v112, v113, v114, v115) && !advance_tok(v1, v116, v117, v118))
            {
              goto LABEL_74;
            }

            continue;
          case 11:
            goto LABEL_75;
          case 12:
            v102 = OUTLINED_FUNCTION_15_26();
            if (testFldeq(v102, v103, v104, 6))
            {
              continue;
            }

            v95 = v27;
            goto LABEL_76;
          case 13:
            goto LABEL_76;
          case 14:
            goto LABEL_12;
          case 15:
            v119 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v119, v120);
            v121 = OUTLINED_FUNCTION_13_28();
            goto LABEL_52;
          case 16:
            goto LABEL_33;
          case 17:
            v124 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v124, v125);
            v121 = OUTLINED_FUNCTION_15_26();
LABEL_52:
            v126 = 2;
            goto LABEL_54;
          case 18:
            v121 = OUTLINED_FUNCTION_13_28();
            v126 = 5;
LABEL_54:
            if (testFldeq(v121, v122, v123, v126))
            {
              continue;
            }

            v65 = v27;
            break;
          case 20:
            goto LABEL_56;
          case 21:
            goto LABEL_70;
          case 22:
            v85 = v27;
            goto LABEL_66;
          case 23:
            v140 = v27;
            goto LABEL_69;
          case 24:
          case 25:
          case 27:
          case 28:
            goto LABEL_72;
          case 26:
            goto LABEL_61;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_33:
      v27 = v65;
    }

    while (advance_tok(v1, v64, v65, v49));
  }

LABEL_56:
  OUTLINED_FUNCTION_111_1();
  if (v55)
  {
    v127 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v127, v128, v129);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      OUTLINED_FUNCTION_3_30();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
          goto LABEL_71;
        }
      }
    }
  }

LABEL_61:
  if (*(v1 + 2082) == v27)
  {
    v130 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v130, v131, v132);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      OUTLINED_FUNCTION_3_30();
      if (!mark_s())
      {
LABEL_71:
        OUTLINED_FUNCTION_136_0();
      }
    }
  }

LABEL_72:
  vretproc(v1);
  return 0;
}