uint64_t o_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v4, v5, v6, v7, v8, v9, v10, v11, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391, v393, v395, v396, v397, v398, v399);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_46_15();
  if (OUTLINED_FUNCTION_137_4(v12, v13, v14, v15, v16))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_78_11();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_41_15();
  v21 = OUTLINED_FUNCTION_75_12();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v23, v24);
  LODWORD(v25) = 0;
  v26 = OUTLINED_FUNCTION_98_7();
  v29 = fence_37(v26, v27, v28);
  OUTLINED_FUNCTION_111_4(v29, v30, &unk_28064B83D);
  v31 = OUTLINED_FUNCTION_116_4();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_74_12();
  if (!lpta_loadp_setscan_r(v33, v34, v3))
  {
    v93 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v93, v94);
    OUTLINED_FUNCTION_5_36();
    v95 = test_string_s();
    LODWORD(v92) = 0;
    LODWORD(v91) = 0;
    if (v95)
    {
      goto LABEL_39;
    }

LABEL_28:
    LODWORD(v25) = v92;
    OUTLINED_FUNCTION_109_4();
    v40 = &v398;
    v96 = OUTLINED_FUNCTION_86_9();
    savescptr(v96, v97, v98);
    v99 = OUTLINED_FUNCTION_78_11();
    lpta_rpta_loadp(v99, v100, v101);
    goto LABEL_31;
  }

  while (2)
  {
    v35 = OUTLINED_FUNCTION_35_17();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_11_35();
    LODWORD(v40) = v25;
    if (!lpta_loadp_setscan_l(v37, v38, v39))
    {
LABEL_33:
      v110 = OUTLINED_FUNCTION_85_10();
      savescptr(v110, v111, v112);
      if (advance_tok(v1, v113, v114, v115))
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_50_15();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_5_36();
      v116 = test_string_s();
      goto LABEL_36;
    }

LABEL_6:
    v41 = OUTLINED_FUNCTION_76_12();
    is_nasal_vow(v41, v42);
    if (!v43)
    {
      v44 = OUTLINED_FUNCTION_20_28();
      lpta_rpta_loadp(v44, v45, v46);
      v47 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v47, v48, v49, v50, v51))
      {
        goto LABEL_75;
      }
    }

LABEL_8:
    LODWORD(v40) = v25;
    v52 = OUTLINED_FUNCTION_39_16();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_11_35();
    if (!lpta_loadp_setscan_r(v54, v55, v56))
    {
      v88 = OUTLINED_FUNCTION_49_15();
      bspush_ca_scan(v88, v89);
      OUTLINED_FUNCTION_5_36();
      test_string_s();
      OUTLINED_FUNCTION_138_4();
      if (v90)
      {
        goto LABEL_39;
      }

LABEL_25:
      if (!OUTLINED_FUNCTION_4_37(v90, v91, v92))
      {
        goto LABEL_30;
      }

      goto LABEL_137;
    }

LABEL_9:
    v57 = OUTLINED_FUNCTION_11_35();
    if (!lpta_loadp_setscan_r(v57, v58, v59))
    {
      OUTLINED_FUNCTION_5_36();
      LODWORD(v25) = v40;
      if (!test_string_s())
      {
LABEL_87:
        v40 = &v398;
        v204 = OUTLINED_FUNCTION_86_9();
        savescptr(v204, v205, v206);
        v207 = OUTLINED_FUNCTION_74_12();
        is_nasal_vow(v207, v208);
        if (!v209)
        {
          v210 = OUTLINED_FUNCTION_20_28();
          lpta_rpta_loadp(v210, v211, v212);
          v213 = OUTLINED_FUNCTION_1_39();
          if (!insert_2pt_s(v213, v214, v215, v216, v217))
          {
            goto LABEL_75;
          }
        }

LABEL_89:
        v218 = OUTLINED_FUNCTION_70_12();
        starttest(v218, v219);
        OUTLINED_FUNCTION_22_26();
        if (v164)
        {
          v220 = OUTLINED_FUNCTION_11_35();
          if (!lpta_loadp_setscan_l(v220, v221, v222))
          {
            v281 = OUTLINED_FUNCTION_69_12();
            if (!OUTLINED_FUNCTION_152_3(v281, v282) && !advance_tok(v1, v283, v284, v285))
            {
LABEL_72:
              v183 = OUTLINED_FUNCTION_20_28();
              lpta_rpta_loadp(v183, v184, v185);
LABEL_73:
              v105 = OUTLINED_FUNCTION_1_39();
LABEL_74:
              inserted = insert_2pt_s(v105, v106, v107, v108, v109);
              LODWORD(v91) = v25;
              if (!inserted)
              {
                goto LABEL_75;
              }

LABEL_39:
              v117 = *(v1 + 104);
              if (v117)
              {
                v90 = OUTLINED_FUNCTION_92_9(v117);
                v25 = v91;
              }

              else
              {
                v90 = vback(v1, v91);
                v25 = 0;
              }

              v92 = v25;
              LODWORD(v40) = v25;
              v118 = v25;
              switch(v90)
              {
                case 1:
                  continue;
                case 2:
                  OUTLINED_FUNCTION_5_36();
                  test_string_s();
                  OUTLINED_FUNCTION_145_4();
                  if (!v119)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_39;
                case 3:
                  goto LABEL_28;
                case 4:
                case 14:
                case 26:
                case 32:
                case 40:
                case 49:
                  goto LABEL_75;
                case 5:
                  goto LABEL_6;
                case 6:
                  LODWORD(v40) = v25;
                  goto LABEL_33;
                case 7:
                  bspop_boa(v1);
                  v146 = OUTLINED_FUNCTION_10_35();
                  v149 = lpta_loadp_setscan_r(v146, v147, v148);
                  LODWORD(v91) = v25;
                  if (v149)
                  {
                    goto LABEL_39;
                  }

                  LOBYTE(v40) = 1;
                  OUTLINED_FUNCTION_17_33();
                  v150 = test_string_s();
                  LODWORD(v91) = v25;
                  if (v150)
                  {
                    goto LABEL_39;
                  }

                  *(v1 + 136) = 1;
                  v151 = OUTLINED_FUNCTION_9_35();
                  v145 = test_ptr(v151, v152, v153);
                  goto LABEL_54;
                case 8:
                  goto LABEL_8;
                case 9:
                  LODWORD(v40) = v25;
                  goto LABEL_9;
                case 10:
                  goto LABEL_25;
                case 11:
                  LODWORD(v40) = v25;
                  goto LABEL_11;
                case 12:
                  goto LABEL_87;
                case 13:
                  goto LABEL_89;
                case 15:
                  goto LABEL_92;
                case 16:
                  LODWORD(v40) = v25;
                  goto LABEL_131;
                case 17:
                  LODWORD(v40) = v25;
                  goto LABEL_133;
                case 18:
                  goto LABEL_136;
                case 19:
                  bspop_boa(v1);
                  v131 = advance_tok(v1, v154, v155, v156);
                  goto LABEL_60;
                case 20:
                  LODWORD(v40) = v25;
                  goto LABEL_12;
                case 21:
                  goto LABEL_80;
                case 22:
                  bspop_boa(v1);
                  v132 = OUTLINED_FUNCTION_10_35();
                  v135 = lpta_loadp_setscan_r(v132, v133, v134);
                  LODWORD(v91) = v25;
                  if (v135)
                  {
                    goto LABEL_39;
                  }

                  v138 = advance_tok(v1, v25, v136, v137);
                  LODWORD(v91) = v25;
                  if (v138)
                  {
                    goto LABEL_39;
                  }

                  v139 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v139, v140);
                  goto LABEL_62;
                case 23:
LABEL_62:
                  OUTLINED_FUNCTION_5_36();
                  v157 = test_string_s();
                  LODWORD(v91) = v25;
                  if (!v157)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_39;
                case 24:
LABEL_63:
                  v158 = OUTLINED_FUNCTION_91_9();
                  savescptr(v158, v159, v160);
                  OUTLINED_FUNCTION_5_36();
                  v161 = test_string_s();
                  LODWORD(v91) = v25;
                  if (!v161)
                  {
                    v162 = OUTLINED_FUNCTION_70_12();
                    starttest(v162, v163);
                    OUTLINED_FUNCTION_22_26();
                    if (!v164)
                    {
                      goto LABEL_72;
                    }

                    v165 = OUTLINED_FUNCTION_11_35();
                    if (lpta_loadp_setscan_l(v165, v166, v167))
                    {
                      goto LABEL_72;
                    }

                    v168 = OUTLINED_FUNCTION_69_12();
                    v170 = OUTLINED_FUNCTION_152_3(v168, v169);
                    LODWORD(v91) = v25;
                    if (!v170)
                    {
                      v173 = advance_tok(v1, v25, v171, v172);
                      LODWORD(v91) = v25;
                      if (!v173)
                      {
                        goto LABEL_72;
                      }
                    }
                  }

                  goto LABEL_39;
                case 25:
                case 50:
                  goto LABEL_72;
                case 27:
                  LODWORD(v40) = v25;
                  goto LABEL_14;
                case 28:
                  goto LABEL_97;
                case 29:
                  goto LABEL_98;
                case 30:
                  LODWORD(v40) = v25;
                  goto LABEL_141;
                case 31:
                  bspop_boa(v1);
                  v145 = advance_tok(v1, v142, v143, v144);
LABEL_54:
                  LODWORD(v91) = v25;
                  if (!v145)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_39;
                case 33:
                  goto LABEL_100;
                case 34:
                  goto LABEL_149;
                case 35:
                  LODWORD(v40) = v25;
                  goto LABEL_129;
                case 36:
                  LODWORD(v40) = v25;
                  goto LABEL_128;
                case 37:
                  LODWORD(v40) = v25;
                  goto LABEL_16;
                case 38:
                  goto LABEL_103;
                case 39:
                  goto LABEL_105;
                case 41:
                  LODWORD(v40) = v25;
                  goto LABEL_129;
                case 42:
                  OUTLINED_FUNCTION_5_36();
                  test_string_s();
                  OUTLINED_FUNCTION_133_4();
                  if (!v141)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_39;
                case 43:
                  goto LABEL_113;
                case 44:
                  LODWORD(v40) = v25;
                  goto LABEL_18;
                case 45:
                  goto LABEL_108;
                case 46:
                  v120 = OUTLINED_FUNCTION_70_12();
                  starttest(v120, v121);
                  v122 = OUTLINED_FUNCTION_11_35();
                  if (lpta_loadp_setscan_r(v122, v123, v124))
                  {
                    goto LABEL_72;
                  }

                  OUTLINED_FUNCTION_5_36();
                  if (test_string_s())
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_47;
                case 47:
                  OUTLINED_FUNCTION_87_9();
                  v174 = OUTLINED_FUNCTION_69_12();
                  setd_lookup(v174, v175, 28);
                  OUTLINED_FUNCTION_144_4();
                  if (!v176)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_39;
                case 48:
                  goto LABEL_71;
                case 51:
LABEL_47:
                  v125 = OUTLINED_FUNCTION_91_9();
                  savescptr(v125, v126, v127);
                  v131 = OUTLINED_FUNCTION_4_37(v128, v129, v130);
LABEL_60:
                  LODWORD(v91) = v25;
                  if (!v131)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_39;
                case 52:
                  goto LABEL_30;
                case 53:
                  bspop_boa(v1);
                  OUTLINED_FUNCTION_70_12();
                  bspush_ca_boa();
                  OUTLINED_FUNCTION_87_9();
                  v202 = OUTLINED_FUNCTION_69_12();
                  v201 = setd_lookup(v202, v203, 18);
                  goto LABEL_83;
                case 54:
                  bspop_boa(v1);
                  goto LABEL_30;
                case 55:
                  goto LABEL_79;
                default:
                  goto LABEL_3;
              }
            }

LABEL_137:
            LODWORD(v91) = v25;
            goto LABEL_39;
          }
        }

LABEL_92:
        LODWORD(v40) = v25;
        OUTLINED_FUNCTION_22_26();
        if (v164)
        {
          OUTLINED_FUNCTION_87_9();
          v223 = OUTLINED_FUNCTION_69_12();
          if (!setd_lookup(v223, v224, 189))
          {
            v225 = OUTLINED_FUNCTION_20_28();
            lpta_rpta_loadp(v225, v226, v227);
            v228 = OUTLINED_FUNCTION_1_39();
            if (!insert_2pt_s(v228, v229, v230, v231, v232))
            {
              goto LABEL_75;
            }
          }
        }

LABEL_131:
        v305 = OUTLINED_FUNCTION_48_15();
        starttest(v305, v306);
        v307 = OUTLINED_FUNCTION_11_35();
        if (!lpta_loadp_setscan_r(v307, v308, v309))
        {
          OUTLINED_FUNCTION_5_36();
          LODWORD(v25) = v40;
          if (!test_string_s())
          {
LABEL_136:
            v314 = OUTLINED_FUNCTION_91_9();
            savescptr(v314, v315, v316);
            v317 = OUTLINED_FUNCTION_12_35();
            if (!testFldeq(v317, v318, v319, 2))
            {
              OUTLINED_FUNCTION_44_15();
              bspush_ca_scan_boa();
              v320 = OUTLINED_FUNCTION_31_21();
              v201 = testFldeq(v320, v321, v322, 25);
LABEL_83:
              if (v201)
              {
                LODWORD(v91) = v25;
              }

              else
              {
                LODWORD(v91) = 1;
              }

              goto LABEL_39;
            }

            goto LABEL_137;
          }
        }

        goto LABEL_133;
      }
    }

    break;
  }

LABEL_11:
  v60 = OUTLINED_FUNCTION_70_12();
  starttest(v60, v61);
  v62 = OUTLINED_FUNCTION_33_20();
  LODWORD(v25) = v40;
  if (!lpta_loadp_setscan_l(v62, v63, v64))
  {
LABEL_80:
    v198 = OUTLINED_FUNCTION_85_10();
    savescptr(v198, v199, v200);
    OUTLINED_FUNCTION_58_13();
    bspush_ca_scan_boa();
    OUTLINED_FUNCTION_5_36();
LABEL_81:
    v201 = test_string_s();
    goto LABEL_83;
  }

LABEL_12:
  v65 = OUTLINED_FUNCTION_11_35();
  if (!lpta_loadp_setscan_r(v65, v66, v67))
  {
    OUTLINED_FUNCTION_5_36();
    LODWORD(v25) = v40;
    if (!test_string_s())
    {
LABEL_97:
      OUTLINED_FUNCTION_81_11(28, v348, v350, v352, v354, v356, v358, v360, v362, v364, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v394);
      v233 = OUTLINED_FUNCTION_70_12();
      starttest(v233, v234);
      v235 = OUTLINED_FUNCTION_11_35();
      LODWORD(v40) = v25;
      if (lpta_loadp_setscan_l(v235, v236, v237))
      {
LABEL_98:
        v238 = OUTLINED_FUNCTION_70_12();
        starttest(v238, v239);
        v240 = OUTLINED_FUNCTION_16_33();
        if (!lpta_loadp_setscan_r(v240, v241, v242))
        {
          OUTLINED_FUNCTION_13_34();
          if (!test_string_s())
          {
            v338 = OUTLINED_FUNCTION_70_12();
            bspush_ca_scan(v338, v339);
            OUTLINED_FUNCTION_5_36();
            v340 = test_string_s();
            LODWORD(v91) = v25;
            if (v340)
            {
              goto LABEL_39;
            }

LABEL_149:
            v40 = &v398;
            v341 = OUTLINED_FUNCTION_86_9();
            savescptr(v341, v342, v343);
            v344 = OUTLINED_FUNCTION_78_11();
            lpta_rpta_loadp(v344, v345, v346);
            goto LABEL_73;
          }
        }

LABEL_100:
        LODWORD(v40) = v25;
        v243 = OUTLINED_FUNCTION_70_12();
        starttest(v243, v244);
        v245 = OUTLINED_FUNCTION_16_33();
        if (!lpta_loadp_setscan_r(v245, v246, v247))
        {
          v248 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v248, v249);
          OUTLINED_FUNCTION_5_36();
          v250 = test_string_s();
          LODWORD(v91) = v25;
          if (v250)
          {
            goto LABEL_39;
          }

LABEL_128:
          v294 = OUTLINED_FUNCTION_91_9();
          savescptr(v294, v295, v296);
        }

LABEL_129:
        v297 = OUTLINED_FUNCTION_20_28();
        lpta_rpta_loadp(v297, v298, v299);
        v300 = OUTLINED_FUNCTION_0_40();
        goto LABEL_134;
      }

LABEL_141:
      v323 = OUTLINED_FUNCTION_85_10();
      savescptr(v323, v324, v325);
      if (advance_tok(v1, v326, v327, v328) || (OUTLINED_FUNCTION_5_36(), test_string_s()) || (v329 = OUTLINED_FUNCTION_10_35(), lpta_loadp_setscan_r(v329, v330, v331)) || (OUTLINED_FUNCTION_5_36(), test_string_s()) || (v332 = OUTLINED_FUNCTION_12_35(), testFldeq(v332, v333, v334, 2)))
      {
LABEL_34:
        LODWORD(v91) = v40;
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_43_15();
      bspush_ca_scan_boa();
      v335 = OUTLINED_FUNCTION_31_21();
      v116 = testFldeq(v335, v336, v337, 19);
LABEL_36:
      if (v116)
      {
        LODWORD(v91) = v40;
      }

      else
      {
        LODWORD(v91) = 1;
      }

      goto LABEL_39;
    }
  }

LABEL_14:
  v68 = OUTLINED_FUNCTION_11_35();
  if (lpta_loadp_setscan_r(v68, v69, v70) || (OUTLINED_FUNCTION_5_36(), LODWORD(v25) = v40, test_string_s()))
  {
LABEL_16:
    v71 = OUTLINED_FUNCTION_11_35();
    if (lpta_loadp_setscan_r(v71, v72, v73) || (OUTLINED_FUNCTION_5_36(), LODWORD(v25) = v40, test_string_s()))
    {
LABEL_18:
      LODWORD(v25) = v40;
      v74 = OUTLINED_FUNCTION_70_12();
      starttest(v74, v75);
      v76 = OUTLINED_FUNCTION_33_20();
      if (lpta_loadp_setscan_r(v76, v77, v78) || advance_tok(v1, v79, v80, v81) || (OUTLINED_FUNCTION_21_27(), test_string_s()) || (*(v1 + 136) = v40, v82 = OUTLINED_FUNCTION_9_35(), test_ptr(v82, v83, v84)) || (v85 = OUTLINED_FUNCTION_33_20(), lpta_loadp_setscan_l(v85, v86, v87)))
      {
LABEL_30:
        v102 = OUTLINED_FUNCTION_20_28();
        lpta_rpta_loadp(v102, v103, v104);
LABEL_31:
        v105 = OUTLINED_FUNCTION_0_40();
        goto LABEL_74;
      }

      OUTLINED_FUNCTION_70_12();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_13_34();
      goto LABEL_81;
    }

LABEL_108:
    OUTLINED_FUNCTION_81_11(45, v348, v350, v352, v354, v356, v358, v360, v362, v364, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v394);
    v262 = OUTLINED_FUNCTION_70_12();
    starttest(v262, v263);
    v264 = OUTLINED_FUNCTION_70_12();
    bspush_ca(v264);
    OUTLINED_FUNCTION_153_3();
    v265 = OUTLINED_FUNCTION_9_35();
    if (!setscan_nof_r(v265, v266, v267))
    {
      v268 = OUTLINED_FUNCTION_12_35();
      if (!testFldeq(v268, v269, v270, 2))
      {
        v274 = advance_tok(v1, v271, v272, v273);
        LODWORD(v91) = v25;
        v118 = v25;
        if (v274)
        {
          goto LABEL_39;
        }

LABEL_71:
        LODWORD(v25) = v118;
        v40 = &v398;
        v177 = OUTLINED_FUNCTION_74_12();
        copyvar(v177, v178, v179);
        v180 = OUTLINED_FUNCTION_78_11();
        lpta_rpta_loadp(v180, v181, v182);
        goto LABEL_73;
      }
    }

    goto LABEL_137;
  }

LABEL_103:
  v251 = OUTLINED_FUNCTION_91_9();
  savescptr(v251, v252, v253);
  v254 = OUTLINED_FUNCTION_33_20();
  if (lpta_loadp_setscan_l(v254, v255, v256) || (OUTLINED_FUNCTION_29_23(), test_string_s()))
  {
LABEL_105:
    LODWORD(v40) = v25;
  }

  else
  {
    v286 = OUTLINED_FUNCTION_20_28();
    lpta_rpta_loadp(v286, v287, v288);
    v289 = OUTLINED_FUNCTION_0_40();
    LODWORD(v40) = v25;
    if (!insert_2pt_s(v289, v290, v291, v292, v293))
    {
      goto LABEL_75;
    }
  }

  v257 = OUTLINED_FUNCTION_70_12();
  starttest(v257, v258);
  v259 = OUTLINED_FUNCTION_33_20();
  if (lpta_loadp_setscan_l(v259, v260, v261))
  {
    goto LABEL_129;
  }

  v275 = OUTLINED_FUNCTION_70_12();
  bspush_ca_scan(v275, v276);
  OUTLINED_FUNCTION_5_36();
  v277 = test_string_s();
  LODWORD(v91) = v40;
  if (v277)
  {
    goto LABEL_39;
  }

LABEL_113:
  OUTLINED_FUNCTION_96_7();
  v278 = OUTLINED_FUNCTION_9_35();
  if (test_ptr(v278, v279, v280))
  {
    goto LABEL_34;
  }

LABEL_133:
  v310 = OUTLINED_FUNCTION_20_28();
  lpta_rpta_loadp(v310, v311, v312);
  v300 = OUTLINED_FUNCTION_1_39();
LABEL_134:
  v313 = insert_2pt_s(v300, v301, v302, v303, v304);
  LODWORD(v91) = v40;
  if (v313)
  {
    goto LABEL_39;
  }

LABEL_75:
  v187 = OUTLINED_FUNCTION_94_8();
  lpta_loadpn(v187, v188);
  v189 = OUTLINED_FUNCTION_99_7();
  rpta_loadpn(v189, v190);
  if (!compare_ptas(v1) && !testeq(v1))
  {
    OUTLINED_FUNCTION_87_9();
    v191 = OUTLINED_FUNCTION_21_27();
    if (!setd_lookup(v191, v192, 52))
    {
      *(v1 + 136) = v40;
      *(v1 + 112) = v400;
      *(v1 + 128) = 0;
      v193 = OUTLINED_FUNCTION_1_39();
      insert_r(v193, v194, v195, v196, v197);
    }
  }

LABEL_79:
  OUTLINED_FUNCTION_100_6(v399);
LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_135_4();
}

uint64_t o_circ_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v3, v4, v5, v6, v7, v8, v9, v10, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119);
  OUTLINED_FUNCTION_64_12(v11, v12, v13, v14, v15, v16, v17, v18, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v122, v124, v126, v128);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_14_34(v19, v20, v21, v22, v23, v24, v25, v26, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, SHIDWORD(v123), v125, SWORD2(v125), SHIWORD(v125), v127, SWORD2(v127), SBYTE6(v127), SHIBYTE(v127), v129, v130))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_6_36();
    if (insert_2pt_s(v37, v38, v39, v40, 0))
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_118_4();
}

void u_rules(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v81 = *MEMORY[0x277D85DE8];
  v76[0] = 0;
  v76[1] = 0;
  v74 = 0;
  v75 = 0;
  v73[0] = 0;
  v73[1] = 0;
  OUTLINED_FUNCTION_90_9();
  bzero(v72, v4);
  OUTLINED_FUNCTION_89_9();
  bzero(v80, v5);
  if (setjmp(v80) || ventproc(v2, v72, v79, v78, v77, v80))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_86_9();
  get_parm(v6, v7, v8, -6);
  v9 = OUTLINED_FUNCTION_80_11();
  OUTLINED_FUNCTION_129_4(v9, v10);
  push_ptr_init(v2, v73);
  fence_37(v2, 0, &null_str_14);
  v11 = OUTLINED_FUNCTION_21_27();
  fence_37(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_63_12();
  if (!lpta_loadp_setscan_r(v14, v15, v16))
  {
    OUTLINED_FUNCTION_56_13();
    if (!test_string_s())
    {
      *(v2 + 136) = &v74;
      v17 = OUTLINED_FUNCTION_9_35();
      if (!test_ptr(v17, v18, v19))
      {
        lpta_rpta_loadp(v2, v76, &v74);
        v20 = OUTLINED_FUNCTION_0_40();
        if (!insert_2pt_s(v20, v21, v22, v23, v24))
        {
          goto LABEL_31;
        }
      }
    }
  }

  while (2)
  {
    v25 = OUTLINED_FUNCTION_80_11();
    is_nasal_vow(v25, v26);
    if (v27)
    {
LABEL_20:
      v41 = OUTLINED_FUNCTION_156_3();
      starttest(v41, v42);
      v43 = OUTLINED_FUNCTION_63_12();
      if (lpta_loadp_setscan_r(v43, v44, v45) || (OUTLINED_FUNCTION_73_12(), test_string_s()))
      {
LABEL_22:
        v46 = OUTLINED_FUNCTION_125_4();
        starttest(v46, v47);
        v48 = OUTLINED_FUNCTION_63_12();
        if (!lpta_loadp_setscan_r(v48, v49, v50))
        {
          v54 = OUTLINED_FUNCTION_95_8();
          bspush_ca_scan(v54, v55);
          OUTLINED_FUNCTION_17_33();
LABEL_25:
          if (test_string_s())
          {
            goto LABEL_15;
          }

LABEL_26:
          v56 = OUTLINED_FUNCTION_108_4();
          savescptr(v56, v57, v58);
          *(v2 + 136) = v3;
          v59 = OUTLINED_FUNCTION_9_35();
          if (test_ptr(v59, v60, v61))
          {
            goto LABEL_15;
          }
        }

LABEL_23:
        v51 = OUTLINED_FUNCTION_107_4();
        lpta_rpta_loadp(v51, v52, v53);
        v34 = OUTLINED_FUNCTION_2_38();
        v38 = &unk_28064B84F;
      }

      else
      {
        v62 = OUTLINED_FUNCTION_147_4();
        bspush_ca_scan(v62, v63);
        OUTLINED_FUNCTION_17_33();
        if (test_string_s())
        {
          goto LABEL_15;
        }

LABEL_29:
        v64 = OUTLINED_FUNCTION_32_20();
        savescptr(v64, v65, &v74);
        v66 = OUTLINED_FUNCTION_107_4();
        lpta_rpta_loadp(v66, v67, v68);
        v34 = OUTLINED_FUNCTION_1_39();
        v38 = &unk_28064B8E4;
      }

LABEL_14:
      if (insert_2pt_s(v34, v35, v36, v38, v37))
      {
        goto LABEL_15;
      }

LABEL_31:
      OUTLINED_FUNCTION_100_6(v75);
      break;
    }

    starttest(v2, 4);
    v28 = OUTLINED_FUNCTION_63_12();
    if (lpta_loadp_setscan_l(v28, v29, v30))
    {
LABEL_30:
      v69 = OUTLINED_FUNCTION_107_4();
      lpta_rpta_loadp(v69, v70, v71);
      v34 = OUTLINED_FUNCTION_2_38();
      v38 = &unk_28064B853;
      goto LABEL_14;
    }

LABEL_10:
    savescptr(v2, 5, v73);
    OUTLINED_FUNCTION_17_33();
    if (!test_string_s() && !lpta_loadp_setscan_r(v2, v73, v3))
    {
      OUTLINED_FUNCTION_17_33();
      if (!test_string_s())
      {
        v31 = OUTLINED_FUNCTION_107_4();
        lpta_rpta_loadp(v31, v32, v33);
        v34 = OUTLINED_FUNCTION_2_38();
        v38 = &unk_28064B852;
        goto LABEL_14;
      }
    }

LABEL_15:
    v39 = *(v2 + 104);
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_92_9(v39);
    }

    else
    {
      v40 = OUTLINED_FUNCTION_136_4();
    }

    switch(v40)
    {
      case 1:
        continue;
      case 2:
      case 6:
        goto LABEL_31;
      case 3:
        goto LABEL_20;
      case 4:
        goto LABEL_30;
      case 5:
        goto LABEL_10;
      case 7:
        goto LABEL_22;
      case 8:
        goto LABEL_29;
      case 9:
        goto LABEL_23;
      case 10:
        OUTLINED_FUNCTION_17_33();
        goto LABEL_25;
      case 11:
        goto LABEL_26;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_157_3();
  OUTLINED_FUNCTION_131_4();
}

void reduce_duplicate_cons(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  v112 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_16(v4, v5, v6, v7, v8, v9, v10, v11, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
  OUTLINED_FUNCTION_89_9();
  bzero(v111, v12);
  if (!setjmp(v111))
  {
    OUTLINED_FUNCTION_121_4();
    if (!ventproc(v3, v13, v14, v15, v16, v111))
    {
      v17 = OUTLINED_FUNCTION_86_9();
      get_parm(v17, v18, v19, -6);
      OUTLINED_FUNCTION_41_15();
      OUTLINED_FUNCTION_102_6();
      v20 = OUTLINED_FUNCTION_98_7();
      fence_37(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_56_13();
      fence_37(v23, v24, v25);
      OUTLINED_FUNCTION_143_4();
      v26 = OUTLINED_FUNCTION_74_12();
      if (!lpta_loadp_setscan_l(v26, v27, 2))
      {
        v28 = OUTLINED_FUNCTION_117_4();
        if (!savetok(v28, v29))
        {
          v30 = OUTLINED_FUNCTION_6_36();
          if (testFldeq(v30, v31, v32, 2) || advance_tok(v3, v33, v34, v35))
          {
            goto LABEL_9;
          }

          v37 = OUTLINED_FUNCTION_72_12();
          if (npush_fld(v37, v38, 0))
          {
            goto LABEL_11;
          }

          if (!advance_tok(v3, v39, v40, v41))
          {
            v42 = OUTLINED_FUNCTION_117_4();
            npush_vf(v42, v43, v44, v45, v46, v47, v48, v49);
            if (if_testeq(v3, v50, v51, v52, v53, v54, v55, v56))
            {
LABEL_11:
              v36 = 0;
              goto LABEL_21;
            }

            v57 = OUTLINED_FUNCTION_70_12();
            starttest(v57, v58);
            OUTLINED_FUNCTION_38_17();
            bspush_ca_boa();
            if (!OUTLINED_FUNCTION_120_4())
            {
              v59 = OUTLINED_FUNCTION_101_6();
              if (!testFldeq(v59, v60, v61, 1) && !advance_tok(v3, v62, v63, v64))
              {
                v65 = OUTLINED_FUNCTION_33_20();
                if (!lpta_loadp_setscan_l(v65, v66, v67))
                {
                  OUTLINED_FUNCTION_13_34();
                  if (!test_string_s())
                  {
                    v68 = OUTLINED_FUNCTION_61_13();
                    bspush_ca_scan(v68, v69);
                    OUTLINED_FUNCTION_69_12();
                    if (!test_string_s())
                    {
LABEL_30:
                      v36 = 1;
LABEL_21:
                      v70 = v36;
                      while (2)
                      {
                        v71 = v3[13];
                        if (v71)
                        {
                          v72 = OUTLINED_FUNCTION_92_9(v71);
                          v74 = v73;
                        }

                        else
                        {
                          v72 = vback(v3, v70);
                          v74 = 0;
                        }

                        switch(v72)
                        {
                          case 2:
                            bspop_boa(v3);
                            v79 = OUTLINED_FUNCTION_106_4();
                            delete_phone_from_left(v79);
                            goto LABEL_3;
                          case 3:
                            OUTLINED_FUNCTION_13_34();
                            v75 = test_string_s();
                            v70 = v74;
                            if (v75)
                            {
                              continue;
                            }

                            v76 = OUTLINED_FUNCTION_74_12();
                            bspush_ca_scan(v76, v77);
                            OUTLINED_FUNCTION_5_36();
                            goto LABEL_29;
                          case 4:
                            goto LABEL_30;
                          case 5:
                            OUTLINED_FUNCTION_5_36();
LABEL_29:
                            v78 = test_string_s();
                            v70 = v74;
                            if (!v78)
                            {
                              goto LABEL_30;
                            }

                            continue;
                          default:
                            goto LABEL_3;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_9:
          v36 = 0;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_161_3();
}

void is_liaison_con(uint64_t a1)
{
  OUTLINED_FUNCTION_132_4();
  v2 = v1;
  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_9();
  bzero(v32, v3);
  OUTLINED_FUNCTION_89_9();
  bzero(v36, v4);
  if (setjmp(v36))
  {
    goto LABEL_3;
  }

  if (ventproc(v2, v32, v35, v34, v33, v36))
  {
    goto LABEL_3;
  }

  fence_37(v2, 0, &null_str_14);
  v5 = OUTLINED_FUNCTION_105_5();
  lpta_loadpn(v5, v6);
  OUTLINED_FUNCTION_149_4();
  if (!compare_ptas(v2) && !testneq(v2))
  {
    goto LABEL_3;
  }

  v7 = 0;
  while (2)
  {
    v8 = OUTLINED_FUNCTION_74_12();
    starttest(v8, v9);
    if (OUTLINED_FUNCTION_120_4())
    {
LABEL_8:
      OUTLINED_FUNCTION_87_9();
      v10 = OUTLINED_FUNCTION_69_12();
      if (!setd_lookup(v10, v11, 3))
      {
        v12 = OUTLINED_FUNCTION_114_4();
        lpta_rpta_loadp(v12, v13, v14);
        OUTLINED_FUNCTION_155_3();
        if (!mark_s())
        {
          break;
        }
      }

LABEL_10:
      v15 = OUTLINED_FUNCTION_112_4();
      starttest(v15, v16);
      v17 = OUTLINED_FUNCTION_71_12();
      if (lpta_loadp_setscan_l(v17, v18, v19))
      {
        break;
      }

      v20 = OUTLINED_FUNCTION_125_4();
      bspush_ca_scan(v20, v21);
      OUTLINED_FUNCTION_5_36();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_110_4();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_5_36();
        if (test_string_s())
        {
          v22 = v7;
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v23 = OUTLINED_FUNCTION_155_3();
      if (!testFldeq(v23, v24, v25, v26))
      {
        v22 = v7;
        if (!advance_tok(v2, v27, v28, v29))
        {
          break;
        }

        goto LABEL_17;
      }
    }

    v22 = v7;
LABEL_17:
    v7 = v22;
LABEL_18:
    v30 = v2[13];
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_92_9(v30);
    }

    else
    {
      v31 = vback(v2, v7);
      v7 = 0;
    }

    switch(v31)
    {
      case 1:
        continue;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_10;
      case 6:
        OUTLINED_FUNCTION_5_36();
        if (test_string_s())
        {
          goto LABEL_18;
        }

        break;
      case 7:
        bspop_boa(v2);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_131_4();
}

uint64_t is_t_pron_s_in_ti(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v6, v7, v8, v9, v10, v11, v12, v13, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v155, v156, v157, v158);
  OUTLINED_FUNCTION_89_9();
  bzero(v159, v14);
  if (setjmp(v159))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_46_15();
  if (OUTLINED_FUNCTION_137_4(v15, v16, v17, v18, v19))
  {
    goto LABEL_3;
  }

  v21 = OUTLINED_FUNCTION_108_4();
  get_parm(v21, v22, v23, -6);
  v24 = OUTLINED_FUNCTION_67_12();
  get_parm(v24, v25, v26, -6);
  v27 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_129_4(v27, v28);
  v29 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v29, v30);
  fence_37(a1, 0, &null_str_14);
  v31 = OUTLINED_FUNCTION_82_10();
  fence_37(v31, v32, v33);
  starttest(a1, a4);
  v34 = OUTLINED_FUNCTION_112_4();
  if (!lpta_loadp_setscan_l(v34, v35, a4))
  {
    v76 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v76, v77);
LABEL_21:
    OUTLINED_FUNCTION_96_7();
    v78 = OUTLINED_FUNCTION_9_35();
    if (!test_ptr(v78, v79, v80))
    {
      goto LABEL_3;
    }

    goto LABEL_22;
  }

  while (2)
  {
    v36 = OUTLINED_FUNCTION_35_17();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_10_35();
    if (!lpta_loadp_setscan_r(v38, v39, v40))
    {
      OUTLINED_FUNCTION_13_34();
      if (!test_string_s())
      {
        v71 = OUTLINED_FUNCTION_51_14();
        bspush_ca_scan(v71, v72);
        OUTLINED_FUNCTION_13_34();
        v73 = test_string_s();
        if (!v73)
        {
LABEL_18:
          if (!OUTLINED_FUNCTION_4_37(v73, v74, v75))
          {
            goto LABEL_3;
          }
        }

        goto LABEL_22;
      }
    }

LABEL_7:
    v41 = OUTLINED_FUNCTION_50_15();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_10_35();
    if (!lpta_loadp_setscan_r(v43, v44, v45))
    {
      v67 = OUTLINED_FUNCTION_32_20();
      bspush_ca_scan(v67, v68);
      OUTLINED_FUNCTION_5_36();
      if (!test_string_s())
      {
        v69 = OUTLINED_FUNCTION_39_16();
        bspush_ca_scan(v69, v70);
        goto LABEL_41;
      }

      goto LABEL_22;
    }

LABEL_8:
    v46 = OUTLINED_FUNCTION_47_15();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_10_35();
    if (!lpta_loadp_setscan_r(v48, v49, v50))
    {
LABEL_28:
      OUTLINED_FUNCTION_81_11(15, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153);
      OUTLINED_FUNCTION_82_10();
      if (!test_string_s())
      {
        *(a1 + 136) = a4;
        v83 = OUTLINED_FUNCTION_9_35();
        if (!test_ptr(v83, v84, v85))
        {
          v86 = OUTLINED_FUNCTION_16_33();
          if (!lpta_loadp_setscan_l(v86, v87, v88) && !advance_tok(a1, v89, v90, v91) && !advance_tok(a1, v92, v93, v94))
          {
            OUTLINED_FUNCTION_5_36();
            if (!test_string_s())
            {
              v95 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v95, v96);
              OUTLINED_FUNCTION_5_36();
LABEL_37:
              if (!test_string_s())
              {
LABEL_38:
                if (!advance_tok(a1, v74, v75, v82))
                {
                  goto LABEL_3;
                }
              }
            }
          }
        }
      }

      goto LABEL_22;
    }

LABEL_9:
    v51 = OUTLINED_FUNCTION_60_13();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_33_20();
    if (lpta_loadp_setscan_l(v53, v54, v55))
    {
LABEL_45:
      v101 = OUTLINED_FUNCTION_99_7();
      lpta_rpta_loadp(v101, v102, v103);
      v104 = OUTLINED_FUNCTION_69_12();
      setd_lookup(v104, v105, 48);
      goto LABEL_3;
    }

LABEL_10:
    OUTLINED_FUNCTION_81_11(19, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153);
    OUTLINED_FUNCTION_5_36();
    if (test_string_s() || (v56 = OUTLINED_FUNCTION_16_33(), lpta_loadp_setscan_r(v56, v57, v58)) || advance_tok(a1, v59, v60, v61) || advance_tok(a1, v62, v63, v64))
    {
LABEL_22:
      v81 = *(a1 + 104);
      if (v81)
      {
        v73 = OUTLINED_FUNCTION_92_9(v81);
      }

      else
      {
        v73 = OUTLINED_FUNCTION_136_4();
      }

      LOBYTE(a4) = 0;
      switch(v73)
      {
        case 1:
          continue;
        case 2:
          OUTLINED_FUNCTION_13_34();
          if (!test_string_s())
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        case 3:
          goto LABEL_21;
        case 5:
          goto LABEL_7;
        case 6:
          goto LABEL_18;
        case 7:
          goto LABEL_8;
        case 8:
          v97 = OUTLINED_FUNCTION_59_13();
          bspush_ca_scan(v97, v98);
          goto LABEL_42;
        case 9:
          v99 = OUTLINED_FUNCTION_42_15();
          bspush_ca_scan(v99, v100);
          goto LABEL_41;
        case 11:
        case 13:
LABEL_42:
          OUTLINED_FUNCTION_13_34();
          goto LABEL_43;
        case 14:
          goto LABEL_9;
        case 15:
          goto LABEL_28;
        case 16:
          OUTLINED_FUNCTION_13_34();
          goto LABEL_37;
        case 17:
          goto LABEL_38;
        case 18:
          goto LABEL_45;
        case 19:
          goto LABEL_10;
        case 20:
          goto LABEL_41;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v65 = OUTLINED_FUNCTION_70_12();
  bspush_ca_scan(v65, v66);
LABEL_41:
  OUTLINED_FUNCTION_5_36();
LABEL_43:
  if (test_string_s())
  {
    goto LABEL_22;
  }

LABEL_3:
  vretproc(a1);
  return OUTLINED_FUNCTION_135_4();
}

void is_nasal_vow(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_148_4();
  v74 = *MEMORY[0x277D85DE8];
  v68 = 0;
  v69 = 0;
  OUTLINED_FUNCTION_159_3();
  OUTLINED_FUNCTION_84_10(v5, v6, v7, v8, v9, v10, v11, v12, v62, *v63, *&v63[8], *&v63[16], *&v63[24], *&v63[32], *&v63[40], *&v63[48], *&v63[56], *&v63[64], *&v63[72], *&v63[80], *&v63[88], *&v63[96], *&v63[104], *&v63[112], *&v63[120], *&v63[128], *&v63[136], *&v63[144], *&v63[152], *&v63[160], *&v63[168], *&v63[176], v64[0], v64[1]);
  OUTLINED_FUNCTION_89_9();
  bzero(v73, v13);
  if (setjmp(v73) || ventproc(v2, v63, v72, v71, v70, v73) || (OUTLINED_FUNCTION_41_15(), push_ptr_init(v2, v67), push_ptr_init(v2, v65), v14 = OUTLINED_FUNCTION_117_4(), push_ptr_init(v14, v15), fence_37(v2, 0, &null_str_14), v16 = OUTLINED_FUNCTION_56_13(), fence_37(v16, v17, v18), OUTLINED_FUNCTION_143_4(), v19 = OUTLINED_FUNCTION_74_12(), lpta_loadp_setscan_r(v19, v20, v4)))
  {
LABEL_4:
    vretproc(v2);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v21, v22);
    OUTLINED_FUNCTION_5_36();
    v23 = 0;
    v24 = 0;
    if (!test_string_s())
    {
LABEL_7:
      OUTLINED_FUNCTION_109_4();
      savescptr(v2, v25, v67);
      v26 = v23;
LABEL_8:
      v24 = v26;
      savescptr(v2, 4, v65);
      OUTLINED_FUNCTION_35_17();
      bspush_ca_scan_boa();
      v27 = OUTLINED_FUNCTION_51_14();
      bspush_ca_scan(v27, v28);
      v29 = OUTLINED_FUNCTION_69_12();
      if (!testFldeq(v29, v30, 4, 1) && !advance_tok(v2, v31, v32, v33))
      {
LABEL_10:
        v24 = 1;
      }
    }

    v34 = v24;
    while (2)
    {
      v35 = v2[13];
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_92_9(v35);
        v23 = v37;
      }

      else
      {
        v36 = vback(v2, v34);
        v23 = 0;
      }

      v26 = v23;
      switch(v36)
      {
        case 2:
          OUTLINED_FUNCTION_5_36();
          v38 = test_string_s();
          v26 = v23;
          v34 = v23;
          if (!v38)
          {
            goto LABEL_8;
          }

          continue;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_8;
        case 5:
          bspop_boa(v2);
          v43 = OUTLINED_FUNCTION_80_11();
          starttest(v43, v44);
          if (lpta_loadp_setscan_l(v2, v65, 1))
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        case 6:
          v58 = OUTLINED_FUNCTION_112_4();
          bspush_ca_scan(v58, v59);
          OUTLINED_FUNCTION_5_36();
          goto LABEL_33;
        case 7:
          goto LABEL_10;
        case 8:
          v41 = OUTLINED_FUNCTION_74_12();
          bspush_ca_scan(v41, v42);
          OUTLINED_FUNCTION_5_36();
          goto LABEL_33;
        case 9:
          OUTLINED_FUNCTION_5_36();
LABEL_33:
          v60 = test_string_s();
          v34 = v23;
          if (!v60)
          {
            goto LABEL_10;
          }

          continue;
        case 10:
LABEL_22:
          OUTLINED_FUNCTION_87_9();
          v45 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v45, v46, 11))
          {
            goto LABEL_23;
          }

          goto LABEL_4;
        case 11:
LABEL_27:
          v53 = OUTLINED_FUNCTION_93_9();
          savescptr(v53, v54, v64);
          OUTLINED_FUNCTION_5_36();
          v55 = test_string_s();
          v34 = v23;
          if (!v55)
          {
            v56 = lpta_loadp_setscan_r(v2, v64, 1);
            v34 = v23;
            if (!v56)
            {
              OUTLINED_FUNCTION_5_36();
              v57 = test_string_s();
              v34 = v23;
              if (!v57)
              {
                goto LABEL_4;
              }
            }
          }

          continue;
        case 12:
        case 13:
LABEL_23:
          v47 = OUTLINED_FUNCTION_95_8();
          starttest(v47, v48);
          v49 = OUTLINED_FUNCTION_119_4();
          bspush_ca(v49);
          v50 = OUTLINED_FUNCTION_110_4();
          lpta_loadpn(v50, v51);
          rpta_loadpn(v2, (v2 + 442));
          v52 = compare_ptas(v2);
          v34 = v23;
          if (v52)
          {
            continue;
          }

          v40 = testeq(v2);
LABEL_25:
          v34 = v23;
          if (v40)
          {
            continue;
          }

LABEL_35:
          v61 = v66;
          v69 = v66;
LABEL_37:
          *(v3 + 8) = v61;
          vretproc(v2);
          break;
        case 14:
          v61 = v69;
          goto LABEL_37;
        case 15:
          lpta_loadpn(v2, v65);
          OUTLINED_FUNCTION_149_4();
          v39 = compare_ptas(v2);
          v34 = v23;
          if (v39)
          {
            continue;
          }

          v40 = testneq(v2);
          goto LABEL_25;
        case 16:
          goto LABEL_35;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_131_4();
}

uint64_t en_rules()
{
  OUTLINED_FUNCTION_124_4();
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v264, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v313, v314, v315, v316);
  OUTLINED_FUNCTION_89_9();
  bzero(v318, v10);
  if (!setjmp(v318))
  {
    OUTLINED_FUNCTION_46_15();
    if (!OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15))
    {
      v17 = OUTLINED_FUNCTION_94_8();
      get_parm(v17, v18, v1, -6);
      v19 = OUTLINED_FUNCTION_76_12();
      OUTLINED_FUNCTION_129_4(v19, v20);
      v21 = OUTLINED_FUNCTION_23_26();
      get_parm(v21, v22, v23, -6);
      v24 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v24, v25);
      v26 = 0;
      v27 = OUTLINED_FUNCTION_98_7();
      v30 = fence_37(v27, v28, v29);
      OUTLINED_FUNCTION_111_4(v30, v31, &unk_28064B83D);
      v32 = OUTLINED_FUNCTION_116_4();
      starttest(v32, v33);
      v34 = OUTLINED_FUNCTION_80_11();
      v36 = 0;
      if (lpta_loadp_setscan_r(v34, v35, v318))
      {
        while (2)
        {
          v37 = OUTLINED_FUNCTION_32_20();
          starttest(v37, v38);
          v39 = OUTLINED_FUNCTION_10_35();
          v42 = v36;
          if (!lpta_loadp_setscan_r(v39, v40, v41))
          {
LABEL_36:
            OUTLINED_FUNCTION_81_11(9, v265, v267, v269, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311);
            if (OUTLINED_FUNCTION_4_37(v132, v133, v134) || (v135 = OUTLINED_FUNCTION_16_33(), lpta_loadp_setscan_l(v135, v136, v137)) || advance_tok(v0, v138, v139, v140) || advance_tok(v0, v141, v142, v143) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
            {
              v36 = v42;
            }

            else
            {
              OUTLINED_FUNCTION_49_15();
              bspush_ca_scan_boa();
              v144 = OUTLINED_FUNCTION_31_21();
              if (testFldeq(v144, v145, v146, 108))
              {
                v36 = v42;
              }

              else
              {
                v36 = 1;
              }
            }

            goto LABEL_97;
          }

LABEL_6:
          v43 = v36;
          v44 = OUTLINED_FUNCTION_76_12();
          is_nasal_vow(v44, v45);
          if (!v46)
          {
            v64 = OUTLINED_FUNCTION_66_12();
            starttest(v64, v65);
            v66 = OUTLINED_FUNCTION_33_20();
            if (lpta_loadp_setscan_l(v66, v67, v68))
            {
LABEL_14:
              v69 = OUTLINED_FUNCTION_48_15();
              starttest(v69, v70);
              OUTLINED_FUNCTION_87_9();
              v71 = OUTLINED_FUNCTION_69_12();
              if (!setd_lookup(v71, v72, 24))
              {
                v73 = OUTLINED_FUNCTION_20_28();
                lpta_rpta_loadp(v73, v74, v75);
                v76 = OUTLINED_FUNCTION_0_40();
                if (!insert_2pt_s(v76, v77, v78, v79, v80))
                {
                  goto LABEL_68;
                }
              }

LABEL_96:
              v240 = OUTLINED_FUNCTION_20_28();
              lpta_rpta_loadp(v240, v241, v242);
              v243 = OUTLINED_FUNCTION_0_40();
              v36 = v43;
              if (!insert_2pt_s(v243, v244, v245, v246, v247))
              {
LABEL_68:
                OUTLINED_FUNCTION_100_6(v317);
                goto LABEL_3;
              }

LABEL_97:
              v156 = v36;
LABEL_45:
              v147 = *(v0 + 104);
              if (v147)
              {
                v148 = OUTLINED_FUNCTION_92_9(v147);
                v36 = v149;
              }

              else
              {
                v148 = vback(v0, v156);
                v36 = 0;
              }

              v150 = v36;
              v104 = v36;
              v51 = v36;
              switch(v148)
              {
                case 1:
                  continue;
                case 2:
                  v26 = v36;
                  goto LABEL_25;
                case 3:
                case 24:
                  goto LABEL_75;
                case 4:
                  bspop_boa(v0);
                  OUTLINED_FUNCTION_35_17();
                  bspush_ca_boa();
                  v151 = OUTLINED_FUNCTION_99_7();
                  lpta_rpta_loadp(v151, v152, v153);
                  v154 = OUTLINED_FUNCTION_69_12();
                  if (setd_lookup(v154, v155, 25))
                  {
                    v156 = v36;
                  }

                  else
                  {
                    v156 = 1;
                  }

                  goto LABEL_45;
                case 5:
                  bspop_boa(v0);
                  v157 = OUTLINED_FUNCTION_20_28();
                  lpta_rpta_loadp(v157, v158, v159);
                  goto LABEL_67;
                case 6:
                case 7:
                case 16:
                case 23:
                case 33:
                  goto LABEL_68;
                case 8:
                  goto LABEL_6;
                case 9:
                  v42 = v36;
                  goto LABEL_36;
                case 10:
                  bspop_boa(v0);
                  v167 = advance_tok(v0, v164, v165, v166);
                  v156 = v36;
                  if (v167)
                  {
                    goto LABEL_45;
                  }

                  v168 = OUTLINED_FUNCTION_20_28();
                  lpta_rpta_loadp(v168, v169, v170);
                  goto LABEL_67;
                case 11:
                  goto LABEL_7;
                case 12:
                  v43 = v36;
                  goto LABEL_14;
                case 13:
                  break;
                case 14:
                  OUTLINED_FUNCTION_5_36();
                  test_string_s();
                  OUTLINED_FUNCTION_144_4();
                  if (!v172)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_45;
                case 15:
                  goto LABEL_71;
                case 17:
                  v43 = v36;
                  goto LABEL_96;
                case 18:
                  goto LABEL_9;
                case 19:
                  goto LABEL_18;
                case 20:
                  OUTLINED_FUNCTION_5_36();
                  v160 = test_string_s();
                  v156 = v36;
                  if (v160)
                  {
                    goto LABEL_45;
                  }

                  v161 = OUTLINED_FUNCTION_58_13();
                  bspush_ca_scan(v161, v162);
                  goto LABEL_55;
                case 21:
                  goto LABEL_23;
                case 22:
LABEL_55:
                  OUTLINED_FUNCTION_29_23();
                  test_string_s();
                  OUTLINED_FUNCTION_145_4();
                  if (!v163)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_45;
                case 25:
                  OUTLINED_FUNCTION_5_36();
                  v171 = test_string_s();
                  v156 = v36;
                  if (v171)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_66;
                case 26:
                  bspop_boa(v0);
                  goto LABEL_66;
                case 27:
LABEL_66:
                  v174 = OUTLINED_FUNCTION_74_12();
                  copyvar(v174, v175, v176);
                  v177 = OUTLINED_FUNCTION_78_11();
                  lpta_rpta_loadp(v177, v178, v179);
LABEL_67:
                  v180 = OUTLINED_FUNCTION_0_40();
                  inserted = insert_2pt_s(v180, v181, v182, v183, v184);
                  v156 = v36;
                  if (!inserted)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_45;
                case 28:
                  v51 = v36;
                  goto LABEL_78;
                case 29:
                  goto LABEL_80;
                case 30:
                  v51 = v36;
                  goto LABEL_99;
                case 31:
                  OUTLINED_FUNCTION_13_34();
                  test_string_s();
                  OUTLINED_FUNCTION_133_4();
                  if (!v173)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_45;
                case 32:
                  goto LABEL_91;
                case 34:
                  v51 = v36;
                  goto LABEL_102;
                case 35:
                  v219 = v36;
                  goto LABEL_81;
                case 36:
                  goto LABEL_82;
                default:
                  goto LABEL_3;
              }
            }

            OUTLINED_FUNCTION_81_11(13, v265, v267, v269, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311);
            v186 = OUTLINED_FUNCTION_47_15();
            bspush_ca_scan(v186, v187);
            v188 = OUTLINED_FUNCTION_3_38();
            if (testFldeq(v188, v189, v190, v191))
            {
              goto LABEL_97;
            }

            v195 = advance_tok(v0, v192, v193, v194);
            v150 = v36;
            if (v195)
            {
              goto LABEL_97;
            }

LABEL_71:
            v36 = v150;
            v196 = OUTLINED_FUNCTION_16_33();
            if (lpta_loadp_setscan_r(v196, v197, v198))
            {
              goto LABEL_97;
            }

            if (advance_tok(v0, v199, v200, v201))
            {
              goto LABEL_97;
            }

            v205 = advance_tok(v0, v202, v203, v204);
            if (v205 || OUTLINED_FUNCTION_4_37(v205, v206, v207))
            {
              goto LABEL_97;
            }

            goto LABEL_75;
          }

          break;
        }

LABEL_7:
        v47 = OUTLINED_FUNCTION_94_8();
        lpta_loadpn(v47, v48);
        v49 = OUTLINED_FUNCTION_99_7();
        rpta_loadpn(v49, v50);
        if (compare_ptas(v0) || testeq(v0))
        {
LABEL_9:
          v51 = v36;
          v52 = OUTLINED_FUNCTION_75_12();
          lpta_loadpn(v52, v53);
          v54 = OUTLINED_FUNCTION_105_5();
          rpta_loadpn(v54, v55);
          if (!compare_ptas(v0) && !testeq(v0))
          {
            v56 = OUTLINED_FUNCTION_20_28();
            lpta_rpta_loadp(v56, v57, v58);
            v59 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v59, v60, v61, v62, v63))
            {
              goto LABEL_68;
            }
          }

LABEL_78:
          v211 = OUTLINED_FUNCTION_10_35();
          if (lpta_loadp_setscan_r(v211, v212, v213) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
          {
LABEL_80:
            v214 = OUTLINED_FUNCTION_70_12();
            starttest(v214, v215);
            v216 = OUTLINED_FUNCTION_11_35();
            lpta_loadp_setscan_l(v216, v217, v218);
            OUTLINED_FUNCTION_138_4();
            if (v220)
            {
LABEL_81:
              v36 = v219;
              v221 = OUTLINED_FUNCTION_20_28();
              lpta_rpta_loadp(v221, v222, v223);
              goto LABEL_33;
            }

LABEL_82:
            OUTLINED_FUNCTION_81_11(36, v265, v267, v269, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311);
            if (advance_tok(v0, v224, v225, v226))
            {
              goto LABEL_97;
            }

            OUTLINED_FUNCTION_13_34();
            if (test_string_s())
            {
              goto LABEL_97;
            }

            v227 = OUTLINED_FUNCTION_16_33();
            if (lpta_loadp_setscan_r(v227, v228, v229))
            {
              goto LABEL_97;
            }

            OUTLINED_FUNCTION_5_36();
            if (test_string_s())
            {
              goto LABEL_97;
            }
          }

          else
          {
            v230 = OUTLINED_FUNCTION_70_12();
            starttest(v230, v231);
            v232 = OUTLINED_FUNCTION_10_35();
            if (lpta_loadp_setscan_r(v232, v233, v234) || advance_tok(v0, v235, v236, v237) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
            {
LABEL_99:
              v248 = OUTLINED_FUNCTION_70_12();
              starttest(v248, v249);
              v250 = OUTLINED_FUNCTION_33_20();
              if (!lpta_loadp_setscan_l(v250, v251, v252))
              {
                OUTLINED_FUNCTION_29_23();
                if (!test_string_s())
                {
                  v253 = OUTLINED_FUNCTION_20_28();
                  lpta_rpta_loadp(v253, v254, v255);
                  v256 = OUTLINED_FUNCTION_0_40();
                  if (!insert_2pt_s(v256, v257, v258, v259, v260))
                  {
                    goto LABEL_68;
                  }
                }
              }

LABEL_102:
              v36 = v51;
              v261 = OUTLINED_FUNCTION_20_28();
              lpta_rpta_loadp(v261, v262, v263);
LABEL_33:
              v127 = OUTLINED_FUNCTION_0_40();
              if (!insert_2pt_s(v127, v128, v129, v130, v131))
              {
                goto LABEL_68;
              }

              goto LABEL_97;
            }

            v238 = OUTLINED_FUNCTION_43_15();
            bspush_ca_scan(v238, v239);
            OUTLINED_FUNCTION_5_36();
            v36 = v51;
            if (test_string_s())
            {
              goto LABEL_97;
            }

LABEL_91:
            v36 = v51;
          }

          goto LABEL_75;
        }

        v81 = OUTLINED_FUNCTION_44_15();
        starttest(v81, v82);
        v83 = OUTLINED_FUNCTION_10_35();
        if (!lpta_loadp_setscan_r(v83, v84, v85))
        {
          v94 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v94, v95);
          v96 = OUTLINED_FUNCTION_3_38();
          if (testFldeq(v96, v97, v98, v99))
          {
            goto LABEL_97;
          }

          v103 = advance_tok(v0, v100, v101, v102);
          v104 = v36;
          if (v103)
          {
            goto LABEL_97;
          }

LABEL_23:
          v36 = v104;
          goto LABEL_75;
        }

LABEL_18:
        v86 = OUTLINED_FUNCTION_70_12();
        starttest(v86, v87);
        v88 = OUTLINED_FUNCTION_10_35();
        if (lpta_loadp_setscan_r(v88, v89, v90))
        {
LABEL_75:
          v208 = OUTLINED_FUNCTION_20_28();
          lpta_rpta_loadp(v208, v209, v210);
          goto LABEL_33;
        }

        v91 = OUTLINED_FUNCTION_70_12();
        bspush_ca_scan(v91, v92);
        OUTLINED_FUNCTION_5_36();
        if (test_string_s())
        {
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_57_13();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_13_34();
        root_vow = test_string_s();
      }

      else
      {
LABEL_25:
        v36 = v26;
        OUTLINED_FUNCTION_104_6();
        v105 = OUTLINED_FUNCTION_91_9();
        savescptr(v105, v106, v107);
        OUTLINED_FUNCTION_17_33();
        if (test_string_s())
        {
          goto LABEL_97;
        }

        *(v0 + 136) = 1;
        v108 = OUTLINED_FUNCTION_9_35();
        if (test_ptr(v108, v109, v110))
        {
          goto LABEL_97;
        }

        v111 = OUTLINED_FUNCTION_61_13();
        starttest(v111, v112);
        if (OUTLINED_FUNCTION_120_4())
        {
          goto LABEL_75;
        }

        v113 = OUTLINED_FUNCTION_101_6();
        if (testFldeq(v113, v114, v115, 1) || advance_tok(v0, v116, v117, v118))
        {
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_52_14();
        bspush_ca_boa();
        v119 = OUTLINED_FUNCTION_94_8();
        root_vow = first_root_vow(v119, v120, v121, v122, v123, v124, v125, v126);
      }

      if (!root_vow)
      {
        v36 = 1;
      }

      goto LABEL_97;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_135_4();
}

void er_rules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_124_4();
  v215 = *MEMORY[0x277D85DE8];
  v202 = 0;
  v203 = 0;
  v200 = 0;
  v201 = 0;
  *&v6 = OUTLINED_FUNCTION_122_4();
  v194 = v6;
  v195 = v6;
  OUTLINED_FUNCTION_84_10(v7, v8, v9, v10, v11, v12, v13, v14, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192);
  OUTLINED_FUNCTION_89_9();
  bzero(v214, v15);
  v16 = setjmp(v214);
  if (v16 || OUTLINED_FUNCTION_142_4(v16, v17, v18, v19, v20, v21, v22, v23, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v194, *(&v194 + 1), v195, *(&v195 + 1), v196, v197, v198, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214[0]))
  {
    goto LABEL_3;
  }

  get_parm(v4, &v202, v5, -6);
  OUTLINED_FUNCTION_103_6(v24, &v200);
  v25 = OUTLINED_FUNCTION_23_26();
  get_parm(v25, v26, v27, -6);
  v28 = OUTLINED_FUNCTION_117_4();
  push_ptr_init(v28, v29);
  fence_37(v4, 0, &null_str_14);
  v30 = OUTLINED_FUNCTION_69_12();
  fence_37(v30, v31, v32);
  v33 = OUTLINED_FUNCTION_80_11();
  lpta_loadpn(v33, v34);
  v35 = OUTLINED_FUNCTION_105_5();
  rpta_loadpn(v35, v36);
  if (!compare_ptas(v4) && !testeq(v4))
  {
    lpta_loadpn(v4, &v202);
    v37 = OUTLINED_FUNCTION_99_7();
    rpta_loadpn(v37, v38);
    if (!compare_ptas(v4) && !testneq(v4))
    {
      v39 = OUTLINED_FUNCTION_34_18();
      if (!final_er_pronounced_Er(v39))
      {
        v40 = OUTLINED_FUNCTION_115_4();
        lpta_rpta_loadp(v40, v41, v42);
        v43 = OUTLINED_FUNCTION_1_39();
        if (!insert_2pt_s(v43, v44, v45, v46, v47))
        {
          goto LABEL_15;
        }
      }

LABEL_10:
      v48 = OUTLINED_FUNCTION_52_14();
      starttest(v48, v49);
      v50 = OUTLINED_FUNCTION_34_18();
      if (!final_er_pronounced_oer(v50))
      {
        v51 = OUTLINED_FUNCTION_115_4();
        lpta_rpta_loadp(v51, v52, v53);
        v54 = OUTLINED_FUNCTION_1_39();
        if (!insert_2pt_s(v54, v55, v56, v57, v58))
        {
LABEL_15:
          v201 = v199;
LABEL_43:
          OUTLINED_FUNCTION_100_6(v201);
          goto LABEL_3;
        }
      }

LABEL_12:
      v59 = OUTLINED_FUNCTION_34_18();
      lpta_rpta_loadp(v59, v60, v61);
      v62 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v62, v63, v64, v65, v66))
      {
        v67 = OUTLINED_FUNCTION_61_13();
        starttest_l(v67, v68);
        is_liaison_con(v4);
        if (v69)
        {
          goto LABEL_15;
        }

        v70 = OUTLINED_FUNCTION_115_4();
        lpta_rpta_loadp(v70, v71, v72);
        OUTLINED_FUNCTION_74_12();
        settvar_s();
        v73 = OUTLINED_FUNCTION_69_12();
        npush_s(v73);
        v74 = OUTLINED_FUNCTION_74_12();
        npop(v74, v75);
        OUTLINED_FUNCTION_37_17();
        insert_2ptv();
        if (!v76)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_39;
    }
  }

  while (2)
  {
    v77 = OUTLINED_FUNCTION_51_14();
    starttest(v77, v78);
    OUTLINED_FUNCTION_22_26();
    if (v79)
    {
      v80 = OUTLINED_FUNCTION_53_14();
      if (!lpta_loadp_setscan_r(v80, v81, v82))
      {
        OUTLINED_FUNCTION_13_34();
        if (!test_string_s())
        {
LABEL_35:
          v124 = OUTLINED_FUNCTION_86_9();
          savescptr(v124, v125, v126);
          v127 = OUTLINED_FUNCTION_86_9();
          lpta_rpta_loadp(v127, v128, v129);
          v130 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v130, v131, 188))
          {
            goto LABEL_39;
          }

          v132 = OUTLINED_FUNCTION_114_4();
          lpta_rpta_loadp(v132, v133, v134);
          v135 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v135, v136, 180))
          {
            goto LABEL_39;
          }

          goto LABEL_27;
        }
      }
    }

LABEL_20:
    v83 = OUTLINED_FUNCTION_32_20();
    starttest(v83, v84);
    OUTLINED_FUNCTION_22_26();
    if (v79)
    {
      v85 = OUTLINED_FUNCTION_71_12();
      if (!lpta_loadp_setscan_r(v85, v86, v87))
      {
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v117 = OUTLINED_FUNCTION_34_18();
          lpta_rpta_loadp(v117, v118, v119);
          OUTLINED_FUNCTION_74_12();
          settvar_s();
          v120 = OUTLINED_FUNCTION_98_7();
          npush_s(v120);
          v121 = OUTLINED_FUNCTION_74_12();
          npop(v121, v122);
          OUTLINED_FUNCTION_72_12();
          insert_2ptv();
          if (!v123)
          {
            goto LABEL_43;
          }

          goto LABEL_39;
        }
      }
    }

LABEL_24:
    v88 = OUTLINED_FUNCTION_39_16();
    starttest(v88, v89);
    v90 = OUTLINED_FUNCTION_53_14();
    if (!lpta_loadp_setscan_r(v90, v91, v92) && !advance_tok(v4, v93, v94, v95))
    {
      v111 = OUTLINED_FUNCTION_12_35();
      if (testFldeq(v111, v112, v113, 2) || advance_tok(v4, v114, v115, v116))
      {
        goto LABEL_39;
      }

      goto LABEL_27;
    }

LABEL_26:
    v96 = OUTLINED_FUNCTION_49_15();
    starttest(v96, v97);
    v98 = OUTLINED_FUNCTION_65_12();
    if (lpta_loadp_setscan_l(v98, v99, v100))
    {
      goto LABEL_27;
    }

    v109 = OUTLINED_FUNCTION_42_15();
    bspush_ca_scan(v109, v110);
LABEL_38:
    OUTLINED_FUNCTION_29_23();
    if (test_string_s())
    {
      goto LABEL_39;
    }

LABEL_44:
    OUTLINED_FUNCTION_96_7();
    v139 = OUTLINED_FUNCTION_9_35();
    if (!test_ptr(v139, v140, v141))
    {
LABEL_27:
      v101 = OUTLINED_FUNCTION_34_18();
      lpta_rpta_loadp(v101, v102, v103);
      v104 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v104, v105, v106, v107, v108))
      {
        goto LABEL_43;
      }
    }

LABEL_39:
    v137 = *(v4 + 104);
    if (v137)
    {
      v138 = OUTLINED_FUNCTION_92_9(v137);
    }

    else
    {
      v138 = OUTLINED_FUNCTION_136_4();
    }

    switch(v138)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_10;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_12;
      case 5:
        goto LABEL_43;
      case 6:
        goto LABEL_20;
      case 7:
        goto LABEL_35;
      case 8:
        goto LABEL_24;
      case 9:
        goto LABEL_26;
      case 10:
        goto LABEL_27;
      case 11:
        goto LABEL_38;
      case 12:
        goto LABEL_44;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_161_3();
}

uint64_t em_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_124_4();
  v190 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v3, v4, v5, v6, v7, v8, v9, v10, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v188);
  OUTLINED_FUNCTION_89_9();
  bzero(v189, v11);
  if (setjmp(v189))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_28();
  if (OUTLINED_FUNCTION_137_4(v12, v13, v14, v15, v16))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_76_12();
  get_parm(v18, v19, v2, -6);
  v20 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_129_4(v20, v21);
  v22 = OUTLINED_FUNCTION_23_26();
  get_parm(v22, v23, v24, -6);
  fence_37(v1, 0, &null_str_14);
  v25 = OUTLINED_FUNCTION_21_27();
  fence_37(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_128_4();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_63_12();
  if (!lpta_loadp_setscan_r(v30, v31, v32))
  {
    v33 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v33, v34);
    OUTLINED_FUNCTION_5_36();
    if (test_string_s())
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  while (2)
  {
    v46 = OUTLINED_FUNCTION_75_12();
    is_nasal_vow(v46, v47);
    if (!v48)
    {
      OUTLINED_FUNCTION_83_10(v48, v49, v50, v51, v52, v53, v54, v55, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186);
      v56 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v56, v57, v58, v59, v60))
      {
        goto LABEL_33;
      }
    }

LABEL_10:
    v61 = OUTLINED_FUNCTION_16_33();
    if (lpta_loadp_setscan_r(v61, v62, v63) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
    {
LABEL_25:
      v101 = OUTLINED_FUNCTION_10_35();
      if (!lpta_loadp_setscan_r(v101, v102, v103))
      {
        OUTLINED_FUNCTION_13_34();
        v104 = test_string_s();
        if (!v104)
        {
          OUTLINED_FUNCTION_83_10(v104, v105, v106, v107, v108, v109, v110, v111, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186);
          v112 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v112, v113, v114, v115, v116))
          {
            goto LABEL_33;
          }
        }
      }

LABEL_28:
      v117 = OUTLINED_FUNCTION_66_12();
      starttest(v117, v118);
      v119 = OUTLINED_FUNCTION_76_12();
      lpta_loadpn(v119, v120);
      v121 = OUTLINED_FUNCTION_99_7();
      rpta_loadpn(v121, v122);
      inserted = compare_ptas(v1);
      if (!inserted)
      {
        inserted = testeq(v1);
        if (!inserted)
        {
          OUTLINED_FUNCTION_83_10(inserted, v39, v40, v41, v42, v43, v44, v45, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186);
          v123 = OUTLINED_FUNCTION_0_40();
          inserted = insert_2pt_s(v123, v124, v125, v126, v127);
          if (!inserted)
          {
LABEL_33:
            OUTLINED_FUNCTION_100_6(v186);
            break;
          }
        }
      }
    }

    else
    {
      v64 = OUTLINED_FUNCTION_51_14();
      starttest(v64, v65);
      v66 = OUTLINED_FUNCTION_76_12();
      lpta_loadpn(v66, v67);
      v68 = OUTLINED_FUNCTION_99_7();
      rpta_loadpn(v68, v69);
      if (!compare_ptas(v1) && !testeq(v1))
      {
        v70 = OUTLINED_FUNCTION_74_12();
        copyvar(v70, v71, v72);
        v73 = OUTLINED_FUNCTION_67_12();
        lpta_rpta_loadp(v73, v74, v75);
        goto LABEL_32;
      }

LABEL_15:
      v76 = OUTLINED_FUNCTION_77_11();
      lpta_loadpn(v76, v77);
      v78 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v78, v79);
      if (!compare_ptas(v1))
      {
        v80 = testeq(v1);
        if (!v80)
        {
          OUTLINED_FUNCTION_83_10(v80, v81, v82, v83, v84, v85, v86, v87, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186);
          v88 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v88, v89, v90, v91, v92))
          {
            goto LABEL_33;
          }
        }
      }

LABEL_18:
      v93 = OUTLINED_FUNCTION_39_16();
      starttest(v93, v94);
      v95 = OUTLINED_FUNCTION_16_33();
      inserted = lpta_loadp_setscan_r(v95, v96, v97);
      if (!inserted)
      {
        inserted = advance_tok(v1, v39, v40, v41);
        if (!inserted)
        {
          v98 = OUTLINED_FUNCTION_49_15();
          bspush_ca_scan(v98, v99);
          OUTLINED_FUNCTION_5_36();
          if (test_string_s())
          {
            goto LABEL_21;
          }

LABEL_6:
          OUTLINED_FUNCTION_96_7();
          v35 = OUTLINED_FUNCTION_9_35();
          inserted = test_ptr(v35, v36, v37);
          if (inserted)
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_31:
    OUTLINED_FUNCTION_83_10(inserted, v39, v40, v41, v42, v43, v44, v45, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186);
LABEL_32:
    v128 = OUTLINED_FUNCTION_0_40();
    if (!insert_2pt_s(v128, v129, v130, v131, v132))
    {
      goto LABEL_33;
    }

LABEL_21:
    v100 = *(v1 + 104);
    if (v100)
    {
      inserted = OUTLINED_FUNCTION_92_9(v100);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_136_4();
    }

    switch(inserted)
    {
      case 1:
        continue;
      case 2:
      case 10:
        goto LABEL_6;
      case 3:
      case 7:
        goto LABEL_33;
      case 4:
        goto LABEL_10;
      case 5:
        goto LABEL_25;
      case 6:
        goto LABEL_15;
      case 8:
        goto LABEL_18;
      case 9:
      case 12:
        goto LABEL_31;
      case 11:
        goto LABEL_28;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_126_4();
}

uint64_t eu_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_8_36(v3, v4, v5, v6, v7, v8, v9, v10, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v243);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15))
    {
      v17 = OUTLINED_FUNCTION_23_26();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_75_12();
      OUTLINED_FUNCTION_129_4(v20, v21);
      v22 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v22, v23);
      v24 = 0;
      v25 = OUTLINED_FUNCTION_98_7();
      fence_37(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_69_12();
      fence_37(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_80_11();
      lpta_loadpn(v31, v32);
      v33 = OUTLINED_FUNCTION_99_7();
      rpta_loadpn(v33, v34);
      if (!compare_ptas(v1))
      {
        if (!testeq(v1))
        {
          v117 = OUTLINED_FUNCTION_38_17();
          starttest_l(v117, v118);
          v119 = OUTLINED_FUNCTION_114_4();
          lpta_rpta_loadp(v119, v120, v121);
          v122 = OUTLINED_FUNCTION_69_12();
          inserted = setd_lookup(v122, v123, 22);
          if (inserted)
          {
            LODWORD(v35) = 0;
          }

          else
          {
            OUTLINED_FUNCTION_83_10(inserted, v41, v42, v43, v44, v45, v46, v47, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241);
            v124 = OUTLINED_FUNCTION_6_36();
            inserted = insert_2pt_s(v124, v125, v126, v127, 0);
            LODWORD(v35) = 0;
            if (!inserted)
            {
              goto LABEL_3;
            }
          }

          goto LABEL_41;
        }

        v24 = 0;
      }

      while (2)
      {
        LODWORD(v35) = v24;
        v36 = OUTLINED_FUNCTION_52_14();
        starttest(v36, v37);
        lpta_rpta_loadp(v1, v1 + 1320, v1 + 1656);
        v38 = OUTLINED_FUNCTION_69_12();
        inserted = setd_lookup(v38, v39, 23);
        if (!inserted)
        {
LABEL_41:
          OUTLINED_FUNCTION_83_10(inserted, v41, v42, v43, v44, v45, v46, v47, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241);
LABEL_42:
          v128 = OUTLINED_FUNCTION_6_36();
          v132 = insert_2pt_s(v128, v129, v130, v131, 0);
          LODWORD(v41) = v35;
          if (!v132)
          {
            goto LABEL_3;
          }

LABEL_52:
          v145 = *(v1 + 104);
          if (v145)
          {
            inserted = OUTLINED_FUNCTION_92_9(v145);
            v24 = v41;
          }

          else
          {
            inserted = vback(v1, v41);
            v24 = 0;
          }

          v42 = v24;
          v43 = v24;
          LODWORD(v35) = v24;
          switch(inserted)
          {
            case 1:
              continue;
            case 2:
            case 3:
            case 7:
            case 15:
              goto LABEL_41;
            case 4:
              goto LABEL_8;
            case 5:
              goto LABEL_10;
            case 6:
            case 32:
              goto LABEL_30;
            case 8:
              goto LABEL_11;
            case 9:
              goto LABEL_39;
            case 10:
              v183 = OUTLINED_FUNCTION_42_15();
              bspush_ca_scan(v183, v184);
              goto LABEL_38;
            case 11:
              goto LABEL_38;
            case 12:
              v35 = v24;
              goto LABEL_14;
            case 13:
              goto LABEL_16;
            case 14:
              v146 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v146, v147);
              goto LABEL_64;
            case 16:
              v150 = OUTLINED_FUNCTION_48_15();
              bspush_ca_scan(v150, v151);
              goto LABEL_64;
            case 17:
              v148 = OUTLINED_FUNCTION_60_13();
              bspush_ca_scan(v148, v149);
              goto LABEL_64;
            case 18:
              v162 = OUTLINED_FUNCTION_44_15();
              bspush_ca_scan(v162, v163);
              goto LABEL_64;
            case 19:
              v164 = OUTLINED_FUNCTION_3_38();
              v168 = testFldeq(v164, v165, v166, v167);
              LODWORD(v41) = v24;
              if (v168)
              {
                goto LABEL_52;
              }

              inserted = advance_tok(v1, v24, v169, v170);
              goto LABEL_65;
            case 20:
              goto LABEL_17;
            case 21:
            case 29:
              goto LABEL_75;
            case 22:
              bspop_boa(v1);
              v152 = OUTLINED_FUNCTION_16_33();
              v155 = lpta_loadp_setscan_r(v152, v153, v154);
              LODWORD(v41) = v24;
              if (v155)
              {
                goto LABEL_52;
              }

              v158 = advance_tok(v1, v24, v156, v157);
              LODWORD(v41) = v24;
              if (v158)
              {
                goto LABEL_52;
              }

              v161 = advance_tok(v1, v24, v159, v160);
              LODWORD(v41) = v24;
              if (v161)
              {
                goto LABEL_52;
              }

              goto LABEL_64;
            case 23:
              v87 = v24;
              goto LABEL_18;
            case 24:
              goto LABEL_45;
            case 25:
              v181 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v181, v182);
              goto LABEL_46;
            case 26:
              goto LABEL_47;
            case 27:
              goto LABEL_46;
            case 28:
              goto LABEL_19;
            case 30:
              bspop_boa(v1);
              v171 = OUTLINED_FUNCTION_16_33();
              v174 = lpta_loadp_setscan_r(v171, v172, v173);
              LODWORD(v41) = v24;
              if (v174)
              {
                goto LABEL_52;
              }

              v177 = advance_tok(v1, v24, v175, v176);
              LODWORD(v41) = v24;
              if (v177)
              {
                goto LABEL_52;
              }

              v180 = advance_tok(v1, v24, v178, v179);
              LODWORD(v41) = v24;
              if (v180)
              {
                goto LABEL_52;
              }

LABEL_64:
              OUTLINED_FUNCTION_5_36();
              inserted = test_string_s();
LABEL_65:
              LODWORD(v35) = v24;
              v41 = v24;
              if (!inserted)
              {
                goto LABEL_41;
              }

              goto LABEL_52;
            case 31:
              goto LABEL_28;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

LABEL_8:
      LODWORD(v35) = v24;
      v48 = OUTLINED_FUNCTION_10_35();
      if (!lpta_loadp_setscan_r(v48, v49, v50))
      {
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v104 = OUTLINED_FUNCTION_51_14();
          starttest(v104, v105);
          v106 = OUTLINED_FUNCTION_11_35();
          inserted = lpta_loadp_setscan_l(v106, v107, v108);
          if (inserted)
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_82_10();
          inserted = test_string_s();
          if (inserted)
          {
            goto LABEL_29;
          }

          *(v1 + 136) = v24;
          v109 = OUTLINED_FUNCTION_9_35();
          inserted = test_ptr(v109, v110, v111);
LABEL_32:
          LODWORD(v24) = v35;
          if (inserted)
          {
            goto LABEL_30;
          }

          goto LABEL_41;
        }
      }

LABEL_10:
      v51 = OUTLINED_FUNCTION_32_20();
      starttest(v51, v52);
      v53 = OUTLINED_FUNCTION_10_35();
      if (lpta_loadp_setscan_r(v53, v54, v55))
      {
LABEL_11:
        v35 = v24;
        v56 = OUTLINED_FUNCTION_10_35();
        if (!lpta_loadp_setscan_r(v56, v57, v58))
        {
          OUTLINED_FUNCTION_13_34();
          v59 = test_string_s();
          if (!v59)
          {
            OUTLINED_FUNCTION_83_10(v59, v60, v61, v62, v63, v64, v65, v66, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241);
            v67 = OUTLINED_FUNCTION_6_36();
            if (!insert_2pt_s(v67, v68, v69, v70, 0))
            {
              goto LABEL_3;
            }
          }
        }

LABEL_14:
        v71 = OUTLINED_FUNCTION_59_13();
        starttest(v71, v72);
        v73 = OUTLINED_FUNCTION_10_35();
        if (lpta_loadp_setscan_r(v73, v74, v75))
        {
          v24 = v35;
LABEL_16:
          v76 = OUTLINED_FUNCTION_70_12();
          starttest(v76, v77);
          v78 = OUTLINED_FUNCTION_11_35();
          if (!lpta_loadp_setscan_l(v78, v79, v80))
          {
            goto LABEL_75;
          }

LABEL_17:
          v81 = OUTLINED_FUNCTION_70_12();
          starttest(v81, v82);
          v83 = OUTLINED_FUNCTION_11_35();
          v86 = lpta_loadp_setscan_l(v83, v84, v85);
          v87 = v24;
          if (v86)
          {
LABEL_18:
            LODWORD(v24) = v87;
            v88 = OUTLINED_FUNCTION_70_12();
            starttest(v88, v89);
            v90 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_l(v90, v91, v92))
            {
LABEL_19:
              LODWORD(v35) = v24;
              v93 = OUTLINED_FUNCTION_43_15();
              starttest(v93, v94);
              v95 = OUTLINED_FUNCTION_11_35();
              if (!lpta_loadp_setscan_l(v95, v96, v97))
              {
                OUTLINED_FUNCTION_13_34();
                inserted = test_string_s();
                if (!inserted)
                {
                  goto LABEL_41;
                }
              }

LABEL_28:
              LODWORD(v35) = v24;
              v112 = OUTLINED_FUNCTION_70_12();
              starttest(v112, v113);
              v114 = OUTLINED_FUNCTION_10_35();
              inserted = lpta_loadp_setscan_l(v114, v115, v116);
              if (inserted)
              {
LABEL_29:
                LODWORD(v24) = v35;
LABEL_30:
                LODWORD(v35) = v24;
                OUTLINED_FUNCTION_83_10(inserted, v41, v42, v43, v44, v45, v46, v47, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241);
                goto LABEL_42;
              }

              OUTLINED_FUNCTION_5_36();
              inserted = test_string_s();
              goto LABEL_32;
            }

LABEL_75:
            v185 = OUTLINED_FUNCTION_88_9();
            savescptr(v185, v186, v187);
            OUTLINED_FUNCTION_74_12();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_5_36();
            if (test_string_s())
            {
              LODWORD(v41) = v24;
            }

            else
            {
              LODWORD(v41) = 1;
            }

            goto LABEL_52;
          }

LABEL_45:
          OUTLINED_FUNCTION_81_11(24, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235);
          v133 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v133, v134);
LABEL_46:
          OUTLINED_FUNCTION_5_36();
          v135 = test_string_s();
          v43 = v24;
          LODWORD(v41) = v24;
          if (v135)
          {
            goto LABEL_52;
          }

LABEL_47:
          v35 = v43;
          v136 = OUTLINED_FUNCTION_16_33();
          if (lpta_loadp_setscan_r(v136, v137, v138) || advance_tok(v1, v139, v140, v141) || advance_tok(v1, v142, v143, v144))
          {
            LODWORD(v41) = v35;
            goto LABEL_52;
          }
        }

        else
        {
          v102 = OUTLINED_FUNCTION_47_15();
          bspush_ca_scan(v102, v103);
        }

        OUTLINED_FUNCTION_5_36();
        inserted = test_string_s();
      }

      else
      {
        v98 = OUTLINED_FUNCTION_39_16();
        bspush_ca_scan(v98, v99);
        v100 = OUTLINED_FUNCTION_49_15();
        bspush_ca_scan(v100, v101);
LABEL_38:
        OUTLINED_FUNCTION_5_36();
        inserted = test_string_s();
        v42 = v24;
        v41 = v24;
        if (inserted)
        {
          goto LABEL_52;
        }

LABEL_39:
        v35 = v42;
        inserted = OUTLINED_FUNCTION_4_37(inserted, v41, v42);
      }

      v41 = v35;
      if (inserted)
      {
        goto LABEL_52;
      }

      goto LABEL_41;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_126_4();
}

uint64_t final_er_pronounced_Er(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v3, v4, v5, v6, v7, v8, v9, v10, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130);
  OUTLINED_FUNCTION_64_12(v11, v12, v13, v14, v15, v16, v17, v18, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v133, v135, v137, v139);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_14_34(v19, v20, v21, v22, v23, v24, v25, v26, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v134, SHIDWORD(v134), v136, SWORD2(v136), SHIWORD(v136), v138, SWORD2(v138), SBYTE6(v138), SHIBYTE(v138), v140, v141))
  {
    v27 = OUTLINED_FUNCTION_75_12();
    OUTLINED_FUNCTION_130_4(v27, v28);
    v29 = OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_129_4(v29, v30);
    fence_37(v1, 0, &null_str_14);
    v31 = OUTLINED_FUNCTION_70_12();
    starttest(v31, v32);
    if (OUTLINED_FUNCTION_120_4() || ((v38 = OUTLINED_FUNCTION_101_6(), testFldeq(v38, v39, v40, 2)) || advance_tok(v1, v41, v42, v43) || (v44 = OUTLINED_FUNCTION_99_7(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_69_12(), setd_lookup(v47, v48, 29))) && ((v49 = *(v1 + 104)) == 0 ? (v50 = OUTLINED_FUNCTION_136_4()) : (v50 = OUTLINED_FUNCTION_92_9(v49)), v50 == 1))
    {
      v33 = OUTLINED_FUNCTION_99_7();
      lpta_rpta_loadp(v33, v34, v35);
      v36 = OUTLINED_FUNCTION_69_12();
      setd_lookup(v36, v37, 30);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_118_4();
}

uint64_t final_er_pronounced_oer(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v3, v4, v5, v6, v7, v8, v9, v10, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130);
  OUTLINED_FUNCTION_64_12(v11, v12, v13, v14, v15, v16, v17, v18, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v133, v135, v137, v139);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_14_34(v19, v20, v21, v22, v23, v24, v25, v26, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v134, SHIDWORD(v134), v136, SWORD2(v136), SHIWORD(v136), v138, SWORD2(v138), SBYTE6(v138), SHIBYTE(v138), v140, v141))
  {
    v27 = OUTLINED_FUNCTION_75_12();
    OUTLINED_FUNCTION_130_4(v27, v28);
    v29 = OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_129_4(v29, v30);
    fence_37(v1, 0, &null_str_14);
    v31 = OUTLINED_FUNCTION_70_12();
    starttest(v31, v32);
    if (OUTLINED_FUNCTION_120_4() || ((v38 = OUTLINED_FUNCTION_101_6(), testFldeq(v38, v39, v40, 2)) || advance_tok(v1, v41, v42, v43) || (v44 = OUTLINED_FUNCTION_99_7(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_69_12(), setd_lookup(v47, v48, 31))) && ((v49 = *(v1 + 104)) == 0 ? (v50 = OUTLINED_FUNCTION_136_4()) : (v50 = OUTLINED_FUNCTION_92_9(v49)), v50 == 1))
    {
      v33 = OUTLINED_FUNCTION_99_7();
      lpta_rpta_loadp(v33, v34, v35);
      v36 = OUTLINED_FUNCTION_69_12();
      setd_lookup(v36, v37, 32);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_118_4();
}

void adjust_phones(uint64_t a1)
{
  OUTLINED_FUNCTION_132_4();
  v2 = v1;
  v110 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_159_3();
  OUTLINED_FUNCTION_84_10(v3, v4, v5, v6, v7, v8, v9, v10, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v106);
  OUTLINED_FUNCTION_89_9();
  bzero(v109, v11);
  v12 = setjmp(v109);
  if (!v12 && !OUTLINED_FUNCTION_141_4(v12, v13, v14, v15, v16, v17, v18, v19, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v105, v106, v107[0], v107[1], v108[0], v108[1], v108[2], SHIDWORD(v108[2]), v108[3], SWORD2(v108[3]), SHIWORD(v108[3]), v108[4], SWORD2(v108[4]), SBYTE6(v108[4]), SHIBYTE(v108[4]), v108[5], v109[0]))
  {
    v20 = OUTLINED_FUNCTION_97_7();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_74_12();
    push_ptr_init(v22, v23);
    v24 = OUTLINED_FUNCTION_80_11();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_98_7();
    fence_37(v26, v27, v28);
    startloop(v2, 1);
    v29 = OUTLINED_FUNCTION_74_12();
    copyvar(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_80_11();
    copyvar(v32, v33, v34);
LABEL_5:
    while (1)
    {
      v35 = OUTLINED_FUNCTION_74_12();
      if (forall_to_test(v35, v36, &v105))
      {
        break;
      }

LABEL_6:
      v37 = OUTLINED_FUNCTION_93_9();
      bspush_ca(v37);
      v38 = OUTLINED_FUNCTION_74_12();
      if (lpta_loadp_setscan_l(v38, v39, 2) || testFldeq(v2, 2u, 1, 1) || advance_tok(v2, v40, v41, v42))
      {
        break;
      }

LABEL_15:
      v45 = OUTLINED_FUNCTION_95_8();
      savescptr(v45, v46, v108);
LABEL_16:
      v47 = OUTLINED_FUNCTION_36_17();
      if (word_medial_oe_deletion(v47))
      {
LABEL_17:
        v48 = OUTLINED_FUNCTION_36_17();
        mid_vowel_alternations(v48, v49, v50);
        if (v51)
        {
LABEL_18:
          v52 = OUTLINED_FUNCTION_36_17();
          high_vowel_gliding(v52);
        }
      }

LABEL_19:
      v53 = OUTLINED_FUNCTION_97_7();
      lpta_loadpn(v53, v54);
      v55 = OUTLINED_FUNCTION_99_7();
      rpta_loadpn(v55, v56);
      if (!compare_ptas(v2) && !testeq(v2))
      {
        goto LABEL_3;
      }

LABEL_21:
      forall_cont_from();
    }

    while (2)
    {
      v43 = v2[13];
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_92_9(v43);
      }

      else
      {
        v44 = vback(v2, 0);
      }

      switch(v44)
      {
        case 2:
          goto LABEL_16;
        case 3:
          if (forto_adv_l(v2, 1, 2, 10, 2, v107))
          {
            continue;
          }

          break;
        case 4:
          goto LABEL_15;
        case 5:
          goto LABEL_17;
        case 6:
          goto LABEL_19;
        case 7:
          goto LABEL_18;
        case 8:
          goto LABEL_21;
        case 9:
          goto LABEL_5;
        case 10:
          goto LABEL_6;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_135_4();
  OUTLINED_FUNCTION_131_4();
}

uint64_t word_medial_oe_deletion(uint64_t a1)
{
  OUTLINED_FUNCTION_148_4();
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v4, v5, v6, v7, v8, v9, v10, v11, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v272, v274, v276, v278, v280, v281, v282, v283, v284);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v3) || (OUTLINED_FUNCTION_46_15(), OUTLINED_FUNCTION_137_4(v12, v13, v14, v15, v16)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_80_11();
    OUTLINED_FUNCTION_129_4(v18, v19);
    v20 = OUTLINED_FUNCTION_67_12();
    get_parm(v20, v21, v22, -6);
    v23 = OUTLINED_FUNCTION_75_12();
    push_ptr_init(v23, v24);
    v25 = OUTLINED_FUNCTION_77_11();
    push_ptr_init(v25, v26);
    v27 = 0;
    v28 = OUTLINED_FUNCTION_98_7();
    v31 = fence_37(v28, v29, v30);
    OUTLINED_FUNCTION_111_4(v31, v32, &_MergedGlobals_33);
    v33 = OUTLINED_FUNCTION_116_4();
    starttest(v33, v34);
    OUTLINED_FUNCTION_116_4();
    bspush_ca_boa();
    v35 = OUTLINED_FUNCTION_80_11();
    if (!lpta_loadp_setscan_r(v35, v36, 2))
    {
      OUTLINED_FUNCTION_6_36();
      v27 = test_string_s() == 0;
    }

    v37 = v27;
    while (2)
    {
      v38 = v1[13];
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_92_9(v38);
        v41 = v40;
      }

      else
      {
        v39 = vback(v1, v37);
        v41 = 0;
      }

      switch(v39)
      {
        case 1:
          v175 = OUTLINED_FUNCTION_52_14();
          starttest(v175, v176);
          OUTLINED_FUNCTION_35_17();
          bspush_ca_boa();
          v177 = OUTLINED_FUNCTION_11_35();
          v180 = lpta_loadp_setscan_l(v177, v178, v179);
          v37 = v41;
          if (v180)
          {
            continue;
          }

          OUTLINED_FUNCTION_5_36();
          v67 = test_string_s();
          goto LABEL_79;
        case 2:
        case 5:
        case 7:
          bspop_boa(v1);
          goto LABEL_3;
        case 3:
          goto LABEL_83;
        case 4:
          v54 = OUTLINED_FUNCTION_51_14();
          starttest(v54, v55);
          OUTLINED_FUNCTION_50_15();
          bspush_ca_boa();
          v56 = OUTLINED_FUNCTION_94_8();
          v58 = lpta_loadp_setscan_l(v56, v57, 2);
          v37 = v41;
          if (v58)
          {
            continue;
          }

          v59 = OUTLINED_FUNCTION_32_20();
          bspush_ca_scan(v59, v60);
          goto LABEL_18;
        case 6:
          v68 = OUTLINED_FUNCTION_42_15();
          starttest(v68, v69);
          v70 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v70, v71, 2))
          {
            goto LABEL_21;
          }

          v211 = OUTLINED_FUNCTION_6_36();
          v214 = testFldeq(v211, v212, v213, 2);
          v37 = v41;
          if (!v214)
          {
            v217 = advance_tok(v1, v41, v215, v216);
            v37 = v41;
            if (!v217)
            {
              goto LABEL_73;
            }
          }

          continue;
        case 8:
          OUTLINED_FUNCTION_49_15();
          bspush_ca_scan_boa();
          v46 = OUTLINED_FUNCTION_6_36();
          v49 = 1;
          goto LABEL_78;
        case 9:
          goto LABEL_18;
        case 10:
          bspop_boa(v1);
          v53 = advance_tok(v1, v50, v51, v52);
          v37 = v41;
          if (v53)
          {
            continue;
          }

LABEL_18:
          v61 = OUTLINED_FUNCTION_6_36();
          v64 = testFldeq(v61, v62, v63, 1);
          v37 = v41;
          if (v64)
          {
            continue;
          }

          v67 = advance_tok(v1, v41, v65, v66);
          goto LABEL_79;
        case 11:
LABEL_21:
          v72 = OUTLINED_FUNCTION_59_13();
          starttest(v72, v73);
          v74 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v74, v75, 2))
          {
            goto LABEL_22;
          }

          goto LABEL_57;
        case 12:
LABEL_73:
          v218 = OUTLINED_FUNCTION_86_9();
          savescptr(v218, v219, v220);
          v221 = OUTLINED_FUNCTION_86_9();
          lpta_rpta_loadp(v221, v222, v223);
          v224 = OUTLINED_FUNCTION_69_12();
          v190 = setd_lookup(v224, v225, 10);
          goto LABEL_74;
        case 13:
LABEL_22:
          v76 = OUTLINED_FUNCTION_44_15();
          starttest(v76, v77);
          v78 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v78, v79, 2))
          {
            goto LABEL_23;
          }

          goto LABEL_53;
        case 14:
LABEL_57:
          OUTLINED_FUNCTION_81_11(14, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279);
          v173 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v173, v174);
          goto LABEL_60;
        case 15:
LABEL_60:
          OUTLINED_FUNCTION_6_36();
          v181 = test_string_s();
          v37 = v41;
          if (!v181)
          {
            goto LABEL_61;
          }

          continue;
        case 16:
LABEL_61:
          v182 = OUTLINED_FUNCTION_77_11();
          v184 = lpta_loadp_setscan_r(v182, v183, 2);
          v37 = v41;
          if (v184)
          {
            continue;
          }

          v187 = advance_tok(v1, v41, v185, v186);
          v37 = v41;
          if (v187)
          {
            continue;
          }

          v188 = OUTLINED_FUNCTION_48_15();
          bspush_ca_scan(v188, v189);
          goto LABEL_64;
        case 17:
          goto LABEL_64;
        case 18:
        case 31:
          goto LABEL_82;
        case 19:
LABEL_23:
          v80 = OUTLINED_FUNCTION_70_12();
          starttest(v80, v81);
          v82 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v82, v83, 2))
          {
            goto LABEL_24;
          }

          goto LABEL_49;
        case 20:
LABEL_53:
          OUTLINED_FUNCTION_81_11(20, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279);
          OUTLINED_FUNCTION_6_36();
          v166 = test_string_s();
          v37 = v41;
          if (!v166)
          {
            v167 = OUTLINED_FUNCTION_77_11();
            v169 = lpta_loadp_setscan_r(v167, v168, 2);
            v37 = v41;
            if (!v169)
            {
              v172 = advance_tok(v1, v41, v170, v171);
              v37 = v41;
              if (!v172)
              {
                goto LABEL_64;
              }
            }
          }

          continue;
        case 21:
LABEL_24:
          v84 = OUTLINED_FUNCTION_70_12();
          starttest(v84, v85);
          v86 = OUTLINED_FUNCTION_62_12();
          if (lpta_loadp_setscan_r(v86, v87, v88))
          {
            goto LABEL_25;
          }

          v191 = OUTLINED_FUNCTION_6_36();
          v194 = testFldeq(v191, v192, v193, 2);
          v37 = v41;
          if (!v194)
          {
            v197 = advance_tok(v1, v41, v195, v196);
            v37 = v41;
            if (!v197)
            {
              v198 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v198, v199);
              v200 = OUTLINED_FUNCTION_72_12();
              v203 = testFldeq(v200, v201, v202, 26);
              v37 = v41;
              if (!v203)
              {
                v206 = advance_tok(v1, v41, v204, v205);
                v37 = v41;
                if (!v206)
                {
                  goto LABEL_69;
                }
              }
            }
          }

          continue;
        case 22:
LABEL_49:
          OUTLINED_FUNCTION_81_11(22, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279);
          OUTLINED_FUNCTION_6_36();
          v159 = test_string_s();
          v37 = v41;
          if (v159)
          {
            continue;
          }

          v160 = OUTLINED_FUNCTION_77_11();
          v162 = lpta_loadp_setscan_r(v160, v161, 2);
          v37 = v41;
          if (v162)
          {
            continue;
          }

          v165 = advance_tok(v1, v41, v163, v164);
          v37 = v41;
          if (v165)
          {
            continue;
          }

LABEL_64:
          OUTLINED_FUNCTION_6_36();
          v190 = test_string_s();
LABEL_74:
          v37 = v41;
          if (!v190)
          {
            goto LABEL_82;
          }

          continue;
        case 23:
LABEL_25:
          v89 = OUTLINED_FUNCTION_57_13();
          starttest(v89, v90);
          v91 = OUTLINED_FUNCTION_62_12();
          if (lpta_loadp_setscan_r(v91, v92, v93))
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_26_26();
          if (test_string_s())
          {
            goto LABEL_27;
          }

          v226 = OUTLINED_FUNCTION_6_36();
          v229 = testFldeq(v226, v227, v228, 1);
          v37 = v41;
          if (!v229)
          {
            goto LABEL_77;
          }

          continue;
        case 24:
LABEL_69:
          v207 = OUTLINED_FUNCTION_6_36();
          v210 = testFldeq(v207, v208, v209, 1);
          v37 = v41;
          if (!v210)
          {
            goto LABEL_77;
          }

          continue;
        case 25:
        case 27:
        case 30:
        case 33:
          bspop_boa(v1);
          v45 = advance_tok(v1, v42, v43, v44);
          v37 = v41;
          if (v45)
          {
            continue;
          }

LABEL_83:
          v231 = OUTLINED_FUNCTION_20_28();
          delete_phone_from_left(v231);
          goto LABEL_84;
        case 26:
LABEL_27:
          v94 = OUTLINED_FUNCTION_70_12();
          starttest(v94, v95);
          v96 = OUTLINED_FUNCTION_94_8();
          if (lpta_loadp_setscan_l(v96, v97, 2))
          {
            goto LABEL_28;
          }

          goto LABEL_39;
        case 28:
LABEL_28:
          v98 = OUTLINED_FUNCTION_43_15();
          starttest(v98, v99);
          v100 = OUTLINED_FUNCTION_94_8();
          if (!lpta_loadp_setscan_l(v100, v101, 2))
          {
            goto LABEL_29;
          }

LABEL_82:
          v230 = v286;
          goto LABEL_85;
        case 29:
LABEL_39:
          OUTLINED_FUNCTION_81_11(29, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279);
          v128 = OUTLINED_FUNCTION_6_36();
          v131 = testFldeq(v128, v129, v130, 1);
          v37 = v41;
          if (!v131)
          {
            v134 = advance_tok(v1, v41, v132, v133);
            v37 = v41;
            if (!v134)
            {
              v135 = OUTLINED_FUNCTION_77_11();
              v137 = lpta_loadp_setscan_r(v135, v136, 2);
              v37 = v41;
              if (!v137)
              {
                v140 = advance_tok(v1, v41, v138, v139);
                v37 = v41;
                if (!v140)
                {
                  v141 = OUTLINED_FUNCTION_6_36();
                  v144 = testFldeq(v141, v142, v143, 2);
                  v37 = v41;
                  if (!v144)
                  {
                    v147 = advance_tok(v1, v41, v145, v146);
                    v37 = v41;
                    if (!v147)
                    {
                      v148 = OUTLINED_FUNCTION_6_36();
                      v151 = testFldeq(v148, v149, v150, 3);
                      v37 = v41;
                      if (!v151)
                      {
                        v154 = advance_tok(v1, v41, v152, v153);
                        v37 = v41;
                        if (!v154)
                        {
                          v155 = OUTLINED_FUNCTION_6_36();
                          v158 = testFldeq(v155, v156, v157, 1);
                          v37 = v41;
                          if (!v158)
                          {
                            goto LABEL_77;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        case 32:
LABEL_29:
          OUTLINED_FUNCTION_81_11(32, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279);
          OUTLINED_FUNCTION_6_36();
          v102 = test_string_s();
          v37 = v41;
          if (!v102)
          {
            v103 = OUTLINED_FUNCTION_6_36();
            v106 = testFldeq(v103, v104, v105, 1);
            v37 = v41;
            if (!v106)
            {
              v109 = advance_tok(v1, v41, v107, v108);
              v37 = v41;
              if (!v109)
              {
                v110 = OUTLINED_FUNCTION_77_11();
                v112 = lpta_loadp_setscan_r(v110, v111, 2);
                v37 = v41;
                if (!v112)
                {
                  v115 = advance_tok(v1, v41, v113, v114);
                  v37 = v41;
                  if (!v115)
                  {
                    v116 = OUTLINED_FUNCTION_6_36();
                    v119 = testFldeq(v116, v117, v118, 2);
                    v37 = v41;
                    if (!v119)
                    {
                      v122 = advance_tok(v1, v41, v120, v121);
                      v37 = v41;
                      if (!v122)
                      {
                        OUTLINED_FUNCTION_6_36();
                        v123 = test_string_s();
                        v37 = v41;
                        if (!v123)
                        {
                          v124 = OUTLINED_FUNCTION_6_36();
                          v127 = testFldeq(v124, v125, v126, 1);
                          v37 = v41;
                          if (!v127)
                          {
LABEL_77:
                            OUTLINED_FUNCTION_70_12();
                            bspush_ca_scan_boa();
                            v46 = OUTLINED_FUNCTION_72_12();
                            v49 = 47;
LABEL_78:
                            v67 = testFldeq(v46, v47, v48, v49);
LABEL_79:
                            if (v67)
                            {
                              v37 = v41;
                            }

                            else
                            {
                              v37 = 1;
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

          continue;
        case 34:
LABEL_84:
          v230 = v285;
LABEL_85:
          *(v2 + 8) = v230;
          vretproc(v1);
          result = 0;
          break;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

void mid_vowel_alternations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v5, v6, v7, v8, v9, v10, v11, v12, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190);
  OUTLINED_FUNCTION_64_12(v13, v14, v15, v16, v17, v18, v19, v20, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v193, v195, v197, v199);
  v21 = setjmp(v4);
  if (v21 || OUTLINED_FUNCTION_14_34(v21, v22, v23, v24, v25, v26, v27, v28, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v194, SHIDWORD(v194), v196, SWORD2(v196), SHIWORD(v196), v198, SWORD2(v198), SBYTE6(v198), SHIBYTE(v198), v200, v201))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_23_26();
  get_parm(v29, v30, v31, -6);
  v32 = OUTLINED_FUNCTION_77_11();
  OUTLINED_FUNCTION_129_4(v32, v33);
  v34 = 0;
  v35 = OUTLINED_FUNCTION_98_7();
  fence_37(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_21_27();
  fence_37(v38, v39, v40);
  v41 = OUTLINED_FUNCTION_128_4();
  starttest(v41, v42);
  v43 = OUTLINED_FUNCTION_80_11();
  if (lpta_loadp_setscan_r(v43, v44, 2))
  {
LABEL_5:
    v45 = OUTLINED_FUNCTION_75_12();
    if (lpta_loadp_setscan_r(v45, v46, 2) || (OUTLINED_FUNCTION_6_36(), test_string_s()))
    {
LABEL_7:
      v47 = OUTLINED_FUNCTION_75_12();
      if (lpta_loadp_setscan_r(v47, v48, 2))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_36();
      if (test_string_s())
      {
        goto LABEL_3;
      }

      v49 = OUTLINED_FUNCTION_32_20();
      starttest(v49, v50);
      v51 = OUTLINED_FUNCTION_10_35();
      if (lpta_loadp_setscan_r(v51, v52, v53))
      {
        goto LABEL_3;
      }

      v54 = OUTLINED_FUNCTION_39_16();
      bspush_ca_scan(v54, v55);
      v56 = v34;
LABEL_11:
      v57 = v56;
      OUTLINED_FUNCTION_5_36();
      if (test_string_s())
      {
        goto LABEL_20;
      }

      v58 = OUTLINED_FUNCTION_77_11();
      if (!lpta_loadp_setscan_r(v58, v59, 2))
      {
        OUTLINED_FUNCTION_6_36();
        if (!test_string_s())
        {
          v60 = OUTLINED_FUNCTION_66_12();
          starttest_l(v60, v61);
          OUTLINED_FUNCTION_59_13();
          bspush_ca_boa();
          v62 = OUTLINED_FUNCTION_10_35();
          if (!lpta_loadp_setscan_l(v62, v63, v64))
          {
            OUTLINED_FUNCTION_12_35();
            if (!test_string_s())
            {
              v57 = 1;
            }
          }

          goto LABEL_20;
        }
      }

LABEL_33:
      v89 = OUTLINED_FUNCTION_77_11();
      if (open_final_syll(v89, v90, v91, v92, v93, v94, v95, v96))
      {
        goto LABEL_3;
      }

      v97 = &unk_28064B84D;
    }

    else
    {
      v104 = OUTLINED_FUNCTION_77_11();
      if (open_final_syll(v104, v105, v106, v107, v108, v109, v110, v111))
      {
        goto LABEL_3;
      }

      v97 = &unk_28064B850;
    }

    v98 = OUTLINED_FUNCTION_88_9();
    lpta_rpta_loadp(v98, v99, v100);
    v101 = OUTLINED_FUNCTION_6_36();
    insert_2pt_s(v101, v102, v103, v97, 0);
    goto LABEL_3;
  }

  bspush_ca_scan_boa();
  if (testFldeq(v3, 2u, 6, 1))
  {
    v57 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_61_13();
    bspush_ca_scan_boa();
    v65 = OUTLINED_FUNCTION_72_12();
    v57 = !testFldeq(v65, v66, 11, 1);
  }

LABEL_20:
  v67 = v57;
  while (2)
  {
    v68 = v3[13];
    if (v68)
    {
      v69 = OUTLINED_FUNCTION_92_9(v68);
      v71 = v70;
    }

    else
    {
      v69 = vback(v3, v67);
      v71 = 0;
    }

    v56 = v71;
    switch(v69)
    {
      case 1:
        v34 = v71;
        goto LABEL_5;
      case 2:
        bspop_boa(v3);
        break;
      case 3:
        bspop_boa(v3);
        if (advance_tok(v3, v72, v73, v74))
        {
          v67 = v71;
        }

        else
        {
          v67 = 1;
        }

        continue;
      case 5:
        v34 = v71;
        goto LABEL_7;
      case 9:
        v75 = OUTLINED_FUNCTION_12_35();
        v78 = testFldeq(v75, v76, v77, 2);
        v67 = v71;
        if (!v78)
        {
          v81 = advance_tok(v3, v71, v79, v80);
          v56 = v71;
          v67 = v71;
          if (!v81)
          {
            goto LABEL_11;
          }
        }

        continue;
      case 10:
        goto LABEL_11;
      case 11:
        goto LABEL_33;
      case 13:
        bspop_boa(v3);
        v82 = OUTLINED_FUNCTION_36_17();
        lpta_rpta_loadp(v82, v83, v84);
        v85 = OUTLINED_FUNCTION_6_36();
        inserted = insert_2pt_s(v85, v86, v87, &unk_28064B84D, 0);
        v67 = v71;
        if (inserted)
        {
          continue;
        }

        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_118_4();
  OUTLINED_FUNCTION_161_3();
}

uint64_t high_vowel_gliding(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_8_36(v3, v4, v5, v6, v7, v8, v9, v10, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v260);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v2) || (OUTLINED_FUNCTION_19_28(), OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v17 = OUTLINED_FUNCTION_23_26();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_129_4(v20, v21);
  v22 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_98_7();
  fence_37(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_21_27();
  fence_37(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_128_4();
  starttest(v30, v31);
  OUTLINED_FUNCTION_128_4();
  bspush_ca_boa();
  v32 = OUTLINED_FUNCTION_63_12();
  if (lpta_loadp_setscan_r(v32, v33, v34))
  {
    v35 = 0;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_61_13();
    bspush_ca_scan(v36, v37);
    OUTLINED_FUNCTION_6_36();
    if (test_string_s())
    {
      v35 = 0;
    }

    else
    {
LABEL_8:
      v35 = 1;
    }
  }

  LODWORD(v38) = v35;
  while (2)
  {
    v39 = *(v1 + 104);
    if (v39)
    {
      inserted = OUTLINED_FUNCTION_92_9(v39);
      v47 = v38;
    }

    else
    {
      inserted = vback(v1, v38);
      v47 = 0;
    }

    switch(inserted)
    {
      case 1:
        v48 = OUTLINED_FUNCTION_51_14();
        starttest(v48, v49);
        OUTLINED_FUNCTION_50_15();
        bspush_ca_boa();
        v50 = OUTLINED_FUNCTION_75_12();
        v52 = lpta_loadp_setscan_r(v50, v51, 2);
        LODWORD(v38) = v47;
        if (v52)
        {
          continue;
        }

        v53 = OUTLINED_FUNCTION_6_36();
        v56 = testFldeq(v53, v54, v55, 1);
        LODWORD(v38) = v47;
        if (v56)
        {
          continue;
        }

        OUTLINED_FUNCTION_32_20();
        bspush_ca_scan_boa();
        v57 = OUTLINED_FUNCTION_72_12();
        v60 = 47;
        goto LABEL_51;
      case 2:
        bspop_boa(v1);
        goto LABEL_3;
      case 3:
        v65 = OUTLINED_FUNCTION_35_17();
        bspush_ca_scan(v65, v66);
        goto LABEL_20;
      case 4:
        goto LABEL_8;
      case 5:
LABEL_20:
        OUTLINED_FUNCTION_6_36();
        v67 = test_string_s();
        LODWORD(v38) = v47;
        if (!v67)
        {
          goto LABEL_8;
        }

        continue;
      case 6:
        v68 = OUTLINED_FUNCTION_49_15();
        starttest(v68, v69);
        v70 = OUTLINED_FUNCTION_10_35();
        if (lpta_loadp_setscan_l(v70, v71, v72))
        {
          goto LABEL_24;
        }

        goto LABEL_45;
      case 7:
        bspop_boa(v1);
        goto LABEL_76;
      case 8:
        bspop_boa(v1);
        v64 = advance_tok(v1, v61, v62, v63);
        goto LABEL_52;
      case 9:
      case 23:
        goto LABEL_31;
      case 10:
LABEL_24:
        v73 = OUTLINED_FUNCTION_114_4();
        lpta_rpta_loadp(v73, v74, v75);
        v76 = OUTLINED_FUNCTION_69_12();
        if (setd_lookup(v76, v77, 54))
        {
          goto LABEL_25;
        }

        goto LABEL_76;
      case 11:
LABEL_45:
        OUTLINED_FUNCTION_81_11(11, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252);
        OUTLINED_FUNCTION_5_36();
        v140 = test_string_s();
        LODWORD(v38) = v47;
        if (!v140)
        {
          v141 = OUTLINED_FUNCTION_16_33();
          v144 = lpta_loadp_setscan_r(v141, v142, v143);
          LODWORD(v38) = v47;
          if (!v144)
          {
            goto LABEL_47;
          }
        }

        continue;
      case 12:
LABEL_25:
        v78 = OUTLINED_FUNCTION_59_13();
        starttest(v78, v79);
        v80 = OUTLINED_FUNCTION_62_12();
        if (lpta_loadp_setscan_l(v80, v81, v82))
        {
          goto LABEL_26;
        }

        v154 = OUTLINED_FUNCTION_47_15();
        bspush_ca_scan(v154, v155);
        goto LABEL_58;
      case 13:
LABEL_26:
        v83 = OUTLINED_FUNCTION_57_13();
        starttest(v83, v84);
        v85 = OUTLINED_FUNCTION_62_12();
        if (lpta_loadp_setscan_l(v85, v86, v87))
        {
          goto LABEL_27;
        }

        v148 = OUTLINED_FUNCTION_6_36();
        v151 = testFldeq(v148, v149, v150, 3);
        LODWORD(v38) = v47;
        if (v151)
        {
          continue;
        }

        v130 = advance_tok(v1, v47, v152, v153);
        goto LABEL_39;
      case 14:
LABEL_58:
        OUTLINED_FUNCTION_6_36();
        v156 = test_string_s();
        LODWORD(v38) = v47;
        if (!v156)
        {
          goto LABEL_59;
        }

        continue;
      case 15:
LABEL_59:
        v157 = OUTLINED_FUNCTION_70_12();
        bspush_ca_scan(v157, v158);
        v159 = OUTLINED_FUNCTION_37_17();
        v162 = testFldeq(v159, v160, 4, v161);
        v38 = v47;
        if (!v162)
        {
          goto LABEL_60;
        }

        continue;
      case 16:
        v145 = OUTLINED_FUNCTION_72_12();
        v147 = testFldeq(v145, v146, 4, 1);
        LODWORD(v38) = v47;
        if (v147)
        {
          continue;
        }

        OUTLINED_FUNCTION_60_13();
        bspush_ca_scan_boa();
        v57 = OUTLINED_FUNCTION_72_12();
        v60 = 23;
LABEL_51:
        v64 = testFldeq(v57, v58, v59, v60);
LABEL_52:
        if (v64)
        {
          LODWORD(v38) = v47;
        }

        else
        {
          LODWORD(v38) = 1;
        }

        continue;
      case 17:
        goto LABEL_60;
      case 18:
        bspop_boa(v1);
LABEL_60:
        v163 = advance_tok(v1, v38, v41, v42);
        LODWORD(v38) = v47;
        if (v163)
        {
          continue;
        }

        v164 = OUTLINED_FUNCTION_44_15();
        starttest(v164, v165);
        v166 = OUTLINED_FUNCTION_62_12();
        if (!lpta_loadp_setscan_l(v166, v167, v168))
        {
LABEL_69:
          OUTLINED_FUNCTION_81_11(20, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252);
          OUTLINED_FUNCTION_26_26();
          v192 = test_string_s();
          LODWORD(v38) = v47;
          if (!v192)
          {
            v193 = OUTLINED_FUNCTION_77_11();
            v195 = lpta_loadp_setscan_r(v193, v194, 2);
            LODWORD(v38) = v47;
            if (!v195)
            {
              v196 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v196, v197);
LABEL_22:
              OUTLINED_FUNCTION_72_12();
LABEL_48:
              v130 = test_string_s();
              goto LABEL_39;
            }
          }

          continue;
        }

LABEL_62:
        v169 = OUTLINED_FUNCTION_70_12();
        starttest(v169, v170);
        v171 = OUTLINED_FUNCTION_62_12();
        if (!lpta_loadp_setscan_r(v171, v172, v173))
        {
          OUTLINED_FUNCTION_6_36();
          if (!test_string_s())
          {
            v198 = OUTLINED_FUNCTION_37_17();
            v201 = testFldeq(v198, v199, 6, v200);
            LODWORD(v38) = v47;
            if (!v201)
            {
              v204 = advance_tok(v1, v47, v202, v203);
              LODWORD(v38) = v47;
              if (!v204)
              {
LABEL_31:
                v99 = OUTLINED_FUNCTION_62_12();
                if (!lpta_loadp_setscan_r(v99, v100, v101))
                {
                  OUTLINED_FUNCTION_6_36();
                  v102 = test_string_s();
                  if (!v102)
                  {
                    OUTLINED_FUNCTION_83_10(v102, v103, v104, v105, v106, v107, v108, v109, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258);
                    v110 = OUTLINED_FUNCTION_0_40();
                    if (!insert_2pt_s(v110, v111, v112, v113, v114))
                    {
                      goto LABEL_76;
                    }
                  }
                }

LABEL_34:
                v115 = OUTLINED_FUNCTION_43_15();
                starttest(v115, v116);
                v117 = OUTLINED_FUNCTION_62_12();
                inserted = lpta_loadp_setscan_r(v117, v118, v119);
                if (!inserted)
                {
                  OUTLINED_FUNCTION_6_36();
                  inserted = test_string_s();
                  if (!inserted)
                  {
                    OUTLINED_FUNCTION_83_10(inserted, v38, v41, v42, v43, v44, v45, v46, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258);
                    v120 = OUTLINED_FUNCTION_0_40();
                    inserted = insert_2pt_s(v120, v121, v122, v123, v124);
                    if (!inserted)
                    {
                      goto LABEL_76;
                    }
                  }
                }

LABEL_37:
                OUTLINED_FUNCTION_83_10(inserted, v38, v41, v42, v43, v44, v45, v46, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258);
                v125 = OUTLINED_FUNCTION_0_40();
                goto LABEL_38;
              }
            }

            continue;
          }
        }

LABEL_64:
        v174 = OUTLINED_FUNCTION_70_12();
        starttest(v174, v175);
        v176 = OUTLINED_FUNCTION_62_12();
        if (!lpta_loadp_setscan_r(v176, v177, v178))
        {
          OUTLINED_FUNCTION_6_36();
          if (!test_string_s())
          {
            v179 = OUTLINED_FUNCTION_6_36();
            v182 = testFldeq(v179, v180, v181, 1);
            LODWORD(v38) = v47;
            if (!v182)
            {
              v185 = advance_tok(v1, v47, v183, v184);
              LODWORD(v38) = v47;
              if (!v185)
              {
                OUTLINED_FUNCTION_83_10(v185, v47, v186, v187, v188, v189, v190, v191, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258);
                v125 = OUTLINED_FUNCTION_1_39();
LABEL_38:
                v130 = insert_2pt_s(v125, v126, v127, v128, v129);
LABEL_39:
                LODWORD(v38) = v47;
                if (!v130)
                {
                  goto LABEL_76;
                }
              }
            }

            continue;
          }
        }

LABEL_76:
        vretproc(v1);
        return 0;
      case 19:
        goto LABEL_62;
      case 20:
        goto LABEL_69;
      case 21:
        goto LABEL_22;
      case 22:
      case 25:
      case 30:
        goto LABEL_76;
      case 24:
        goto LABEL_64;
      case 26:
LABEL_27:
        v88 = OUTLINED_FUNCTION_11_35();
        if (lpta_loadp_setscan_l(v88, v89, v90))
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_82_10();
        if (test_string_s())
        {
          goto LABEL_30;
        }

        *(v1 + 136) = 0;
        v91 = OUTLINED_FUNCTION_9_35();
        if (test_ptr(v91, v92, v93))
        {
          goto LABEL_30;
        }

        goto LABEL_76;
      case 27:
LABEL_30:
        v94 = OUTLINED_FUNCTION_39_16();
        starttest(v94, v95);
        v96 = OUTLINED_FUNCTION_11_35();
        if (lpta_loadp_setscan_l(v96, v97, v98))
        {
          goto LABEL_31;
        }

        goto LABEL_41;
      case 28:
LABEL_41:
        OUTLINED_FUNCTION_81_11(28, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252);
        OUTLINED_FUNCTION_82_10();
        v131 = test_string_s();
        LODWORD(v38) = v47;
        if (v131)
        {
          continue;
        }

        *(v1 + 136) = 0;
        v132 = OUTLINED_FUNCTION_9_35();
        v135 = test_ptr(v132, v133, v134);
        LODWORD(v38) = v47;
        if (v135)
        {
          continue;
        }

        v136 = OUTLINED_FUNCTION_16_33();
        v139 = lpta_loadp_setscan_r(v136, v137, v138);
        LODWORD(v38) = v47;
        if (v139)
        {
          continue;
        }

LABEL_47:
        OUTLINED_FUNCTION_69_12();
        goto LABEL_48;
      case 29:
        goto LABEL_34;
      case 31:
        goto LABEL_37;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t six_dix_final_con(uint64_t a1)
{
  OUTLINED_FUNCTION_148_4();
  OUTLINED_FUNCTION_140_4();
  v14 = 0u;
  memset(v15, 0, 24);
  OUTLINED_FUNCTION_90_9();
  bzero(v13, v2);
  OUTLINED_FUNCTION_89_9();
  bzero(v19, v3);
  v4 = setjmp(v19);
  if (v4 || OUTLINED_FUNCTION_137_4(v4, v13, v18, v17, v16))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_41_15();
    v15[0] = 0;
    v15[1] = 0;
    *(&v15[1] + 6) = 0;
    LODWORD(v14) = -65534;
    fence_37(v1, 0, &null_str_14);
    v6 = OUTLINED_FUNCTION_74_12();
    v7 = is_prenom_modifier(v6);
    *(v1 + 168) = 1;
    *(v1 + 144) = v15[4];
    *(v1 + 128) = 0;
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_1_39();
      insert_l(v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_97_7();
      settvar_s();
      v10 = OUTLINED_FUNCTION_69_12();
      npush_s(v10);
      WORD1(v14) = 17;
      v11 = OUTLINED_FUNCTION_97_7();
      npop(v11, v12);
      OUTLINED_FUNCTION_37_17();
      insert_lv();
    }

    vretproc(v1);
    return 0;
  }
}

uint64_t is_prenom_modifier(uint64_t a1)
{
  OUTLINED_FUNCTION_148_4();
  v126 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v121, v122, v123, v124);
  OUTLINED_FUNCTION_89_9();
  bzero(v125, v10);
  if (setjmp(v125))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_28();
  if (OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_41_15();
  v17 = OUTLINED_FUNCTION_75_12();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v19, v20);
  v21 = 0;
  v22 = OUTLINED_FUNCTION_98_7();
  fence_37(v22, v23, v24);
  v25 = OUTLINED_FUNCTION_56_13();
  fence_37(v25, v26, v27);
  OUTLINED_FUNCTION_143_4();
  v28 = OUTLINED_FUNCTION_74_12();
  if (lpta_loadp_setscan_r(v28, v29, 4))
  {
    goto LABEL_9;
  }

  v21 = 0;
  v30 = 0;
  if (advanc(v1))
  {
    goto LABEL_9;
  }

  while (2)
  {
    v31 = OUTLINED_FUNCTION_85_10();
    savescptr(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_101_6();
    if (!testFldeq(v34, v35, v36, 2))
    {
      v40 = advance_tok(v1, v37, v38, v39);
      v41 = v30;
      if (!v40)
      {
LABEL_8:
        v21 = v41;
        OUTLINED_FUNCTION_81_11(3, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119);
LABEL_9:
        v42 = OUTLINED_FUNCTION_77_11();
        lpta_loadpn(v42, v43);
        rpta_loadpn(v1, (v1 + 442));
        if (compare_ptas(v1))
        {
          v44 = v21;
        }

        else
        {
          v45 = testeq(v1);
          v44 = v21;
          if (!v45)
          {
            break;
          }
        }

LABEL_12:
        v46 = v44;
        OUTLINED_FUNCTION_22_26();
        if (v47)
        {
          v48 = OUTLINED_FUNCTION_88_9();
          lpta_rpta_loadp(v48, v49, v50);
          v51 = OUTLINED_FUNCTION_69_12();
          v53 = setd_lookup(v51, v52, 59);
          v54 = v46;
          if (!v53)
          {
            break;
          }
        }

        else
        {
          v54 = v46;
        }

LABEL_15:
        v55 = v54;
        v56 = OUTLINED_FUNCTION_35_17();
        starttest(v56, v57);
        v58 = OUTLINED_FUNCTION_75_12();
        if (lpta_loadp_setscan_r(v58, v59, 4))
        {
          break;
        }

        if (testFldeq(v1, 4u, 3, 13) || advance_tok(v1, v60, v61, v62))
        {
          v30 = v55;
        }

        else
        {
          OUTLINED_FUNCTION_50_15();
          bspush_ca_boa();
          v67 = OUTLINED_FUNCTION_88_9();
          lpta_rpta_loadp(v67, v68, v69);
          v70 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v70, v71, 158))
          {
            v30 = v55;
          }

          else
          {
            v30 = 1;
          }
        }
      }
    }

    v63 = v1[13];
    if (v63)
    {
      v1[13] = 0;
      v64 = v63;
      v65 = v30;
    }

    else
    {
      v64 = vback(v1, v30);
      v65 = 0;
    }

    v66 = v64 - 1;
    v30 = v65;
    v41 = v65;
    v21 = v65;
    v44 = v65;
    v54 = v65;
    switch(v66)
    {
      case 0:
        goto LABEL_9;
      case 1:
        continue;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_12;
      case 5:
        goto LABEL_15;
      case 6:
        bspop_boa(v1);
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_126_4();
}

uint64_t OUTLINED_FUNCTION_4_37(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = 1;
  *(v3 + 112) = *(v3 + 1664);
  *(v3 + 128) = 0;

  return test_ptr(v3, a2, a3);
}

void OUTLINED_FUNCTION_8_36(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_9_35()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_14_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_15_33(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_40_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a38 = 0;
  a39 = 0;
  a36 = 0;
  a37 = 0;
  a35 = 0;
  a33 = 0u;
  a34 = 0u;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_41_15()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_55_14()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_64_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, 0xC0uLL);
}

double OUTLINED_FUNCTION_81_11@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_83_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  return lpta_rpta_loadp(v35, va, &a34);
}

void OUTLINED_FUNCTION_84_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_87_9()
{

  return lpta_rpta_loadp(v0, v0 + 1640, v0 + 1656);
}

void OUTLINED_FUNCTION_103_6(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void *OUTLINED_FUNCTION_111_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_37(v3, 1, a3);
}

uint64_t OUTLINED_FUNCTION_120_4()
{

  return lpta_loadp_setscan_r(v0, v0 + 1320, 4);
}

uint64_t OUTLINED_FUNCTION_127_4()
{

  return lpta_rpta_loadp(v0, &STACK[0x248], &STACK[0x238]);
}

void OUTLINED_FUNCTION_129_4(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_130_4(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_136_4()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_137_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

double OUTLINED_FUNCTION_139_4@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  *&result = savescptr(v37, a1, &a37).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_141_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, __int16 a42, __int16 a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{

  return ventproc(v49, &a10, &a47, &a43, &a40, &a49);
}

uint64_t OUTLINED_FUNCTION_142_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, int a47, int a48, __int16 a49, __int16 a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char a56)
{

  return ventproc(v56, &a10, &a54, &a50, &a47, &a56);
}

void OUTLINED_FUNCTION_143_4()
{

  starttest(v0, v1);
}

uint64_t OUTLINED_FUNCTION_149_4()
{

  return rpta_loadpn(v0, v0 + 1336);
}

uint64_t OUTLINED_FUNCTION_150_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54, int a55, __int16 a56, __int16 a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, char a63)
{

  return ventproc(v63, a2, &a61, &a57, &a54, &a63);
}

double OUTLINED_FUNCTION_151_3@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_152_3(uint64_t a1, uint64_t a2)
{

  return testFldeq(a1, a2, 5, 3);
}

void *fence_38(uint64_t a1, int a2, uint64_t a3)
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

uint64_t fren_non_phrasal_comma()
{
  OUTLINED_FUNCTION_111_5();
  v12 = *MEMORY[0x277D85DE8];
  v7[23] = 0;
  v7[24] = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v7, v1);
  OUTLINED_FUNCTION_52_15();
  bzero(v11, v2);
  if (!setjmp(v11) && !ventproc(v0, v7, v10, v9, v8, v11))
  {
    v3 = OUTLINED_FUNCTION_59_14();
    get_parm(v3, v4, v5, -6);
    fence_38(v0, 0, &null_str_15);
  }

  vretproc(v0);
  return 94;
}

uint64_t find_fren_obligatory_phrase()
{
  OUTLINED_FUNCTION_16_34();
  v341 = *MEMORY[0x277D85DE8];
  memset(v336, 0, sizeof(v336));
  v335 = 0;
  v334[0] = 0;
  v334[1] = 0;
  v333[0] = 0;
  v333[1] = 0;
  v332[0] = 0;
  v332[1] = 0;
  OUTLINED_FUNCTION_40_17(v2, v3, v4, v5, v6, v7, v8, v9, v329, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], *&v331[96], *&v331[104], *&v331[112], *&v331[120], *&v331[128], *&v331[136], *&v331[144], *&v331[152], *&v331[160], *&v331[168], *&v331[176], *&v331[184], *&v331[192]);
  OUTLINED_FUNCTION_52_15();
  bzero(v340, v10);
  if (setjmp(v340) || ventproc(v0, v331, v339, v338, v337, v340))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_43_16();
  OUTLINED_FUNCTION_68_13(v14, v336);
  v15 = OUTLINED_FUNCTION_59_14();
  get_parm(v15, v16, v17, -4);
  push_ptr_init(v0, v334);
  v18 = OUTLINED_FUNCTION_94_9();
  push_ptr_init(v18, v19);
  push_ptr_init(v0, v332);
  v20 = OUTLINED_FUNCTION_47_16();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_58_14();
  fence_38(v22, v23, v24);
  v25 = OUTLINED_FUNCTION_38_18();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_22_27();
  v30 = lpta_loadp_setscan_l(v27, v28, v29);
  v31 = 0;
  LODWORD(v32) = 0;
  if (!v30)
  {
LABEL_33:
    v139 = v31;
    OUTLINED_FUNCTION_65_13();
    savescptr(v0, v140, v332);
    v141 = advanc(v0);
    v142 = v139;
    LODWORD(v71) = v139;
    if (v141)
    {
      goto LABEL_45;
    }

LABEL_36:
    LODWORD(v32) = 3;
    savescptr(v0, 3, v333);
    v143 = OUTLINED_FUNCTION_9_36();
    if (!testFldeq(v143, v144, v145, 3))
    {
      v146 = OUTLINED_FUNCTION_10_36();
      if (!testFldeq(v146, v147, v148, 9))
      {
        advance_tok(v0, v149, v150, v151);
        OUTLINED_FUNCTION_102_7();
        if (v152)
        {
          goto LABEL_45;
        }

LABEL_40:
        savescptr(v0, 4, v334);
LABEL_41:
        v153 = OUTLINED_FUNCTION_13_35();
        if (!test_synch(v153, v154, v155, v156))
        {
          v157 = OUTLINED_FUNCTION_39_17();
          if (!lpta_loadp_setscan_r(v157, v158, v159))
          {
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v160 = OUTLINED_FUNCTION_4_38();
LABEL_81:
            if (testFldeq(v160, v161, v162, v163))
            {
              LODWORD(v71) = v32;
            }

            else
            {
              LODWORD(v71) = 1;
            }

            goto LABEL_45;
          }
        }

        goto LABEL_44;
      }
    }

    goto LABEL_38;
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_38_18();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_32_21();
    if (!lpta_loadp_setscan_r(v35, v36, v37))
    {
      v125 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v125, v126, v127, 11) || advance_tok(v0, v128, v129, v130))
      {
        goto LABEL_44;
      }

      v131 = OUTLINED_FUNCTION_30_23();
      bspush_ca_scan(v131, v132);
      LODWORD(v133) = v32;
LABEL_31:
      LODWORD(v32) = v133;
      v134 = OUTLINED_FUNCTION_13_35();
      v138 = test_synch(v134, v135, v136, v137);
      goto LABEL_78;
    }

LABEL_7:
    v38 = OUTLINED_FUNCTION_34_19();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_32_21();
    if (!lpta_loadp_setscan_l(v40, v41, v42))
    {
LABEL_84:
      OUTLINED_FUNCTION_66_13(15, v330, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], *&v331[96], *&v331[104], *&v331[112], *&v331[120], *&v331[128], *&v331[136], *&v331[144], *&v331[152], *&v331[160], *&v331[168], *&v331[176], *&v331[184], *&v331[192], v332[0]);
      v237 = OUTLINED_FUNCTION_38_18();
      bspush_ca_scan(v237, v238);
      v239 = OUTLINED_FUNCTION_10_36();
      v242 = testFldeq(v239, v240, v241, 4);
      LODWORD(v71) = v32;
      LODWORD(v167) = v32;
      if (v242)
      {
        goto LABEL_45;
      }

LABEL_85:
      LODWORD(v32) = v167;
      v243 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v243, v244, v245, 4))
      {
        goto LABEL_44;
      }

      v246 = OUTLINED_FUNCTION_2_39();
      if (testFldeq(v246, v247, v248, v249))
      {
        goto LABEL_44;
      }

      if (advance_tok(v0, v250, v251, v252))
      {
        goto LABEL_44;
      }

      v253 = OUTLINED_FUNCTION_39_17();
      if (lpta_loadp_setscan_r(v253, v254, v255))
      {
        goto LABEL_44;
      }

      v256 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v256, v257, v258, 4))
      {
        goto LABEL_44;
      }

      v259 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v259, v260, v261, 4))
      {
        goto LABEL_44;
      }

      goto LABEL_27;
    }

LABEL_8:
    v43 = OUTLINED_FUNCTION_38_18();
    starttest(v43, v44);
    v45 = OUTLINED_FUNCTION_32_21();
    lpta_loadp_setscan_l(v45, v46, v47);
    OUTLINED_FUNCTION_102_7();
    if (!v48)
    {
LABEL_92:
      OUTLINED_FUNCTION_66_13(19, v330, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], *&v331[96], *&v331[104], *&v331[112], *&v331[120], *&v331[128], *&v331[136], *&v331[144], *&v331[152], *&v331[160], *&v331[168], *&v331[176], *&v331[184], *&v331[192], v332[0]);
      v262 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v262, v263, v264, 13))
      {
        goto LABEL_44;
      }

      if (advance_tok(v0, v265, v266, v267))
      {
        goto LABEL_44;
      }

      v268 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v268, v269, v270, 11))
      {
        goto LABEL_44;
      }

      v274 = advance_tok(v0, v271, v272, v273);
      LODWORD(v71) = v32;
      v142 = v32;
      if (v274)
      {
        goto LABEL_45;
      }

LABEL_110:
      v294 = OUTLINED_FUNCTION_13_35();
      if (!test_synch(v294, v295, v296, v297))
      {
        v298 = OUTLINED_FUNCTION_39_17();
        if (!lpta_loadp_setscan_r(v298, v299, v300))
        {
          v301 = OUTLINED_FUNCTION_3_39();
          if (!testFldeq(v301, v302, v303, v304))
          {
            OUTLINED_FUNCTION_93_10();
            bspush_ca_scan_boa();
            v305 = OUTLINED_FUNCTION_10_36();
            if (testFldeq(v305, v306, v307, 21))
            {
              LODWORD(v71) = v142;
            }

            else
            {
              LODWORD(v71) = 1;
            }

            goto LABEL_45;
          }
        }
      }

LABEL_38:
      LODWORD(v71) = v142;
      goto LABEL_45;
    }

LABEL_9:
    v49 = OUTLINED_FUNCTION_38_18();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_32_21();
    lpta_loadp_setscan_l(v51, v52, v53);
    OUTLINED_FUNCTION_102_7();
    if (!v54)
    {
LABEL_97:
      OUTLINED_FUNCTION_66_13(24, v330, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], *&v331[96], *&v331[104], *&v331[112], *&v331[120], *&v331[128], *&v331[136], *&v331[144], *&v331[152], *&v331[160], *&v331[168], *&v331[176], *&v331[184], *&v331[192], v332[0]);
      v275 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v275, v276, v277, 2) || advance_tok(v0, v278, v279, v280))
      {
        goto LABEL_44;
      }

      v281 = OUTLINED_FUNCTION_39_17();
      v284 = lpta_loadp_setscan_r(v281, v282, v283);
      LODWORD(v71) = v32;
      if (v284)
      {
        goto LABEL_45;
      }

LABEL_100:
      v285 = OUTLINED_FUNCTION_13_35();
      if (chstream(v285, v286, v287))
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_42_16();
      v138 = test_string_s();
LABEL_78:
      LODWORD(v71) = v32;
      if (!v138)
      {
LABEL_79:
        v11 = 0;
        HIWORD(v335) = 1;
        *(v1 + 2) = 1;
        goto LABEL_4;
      }

      goto LABEL_45;
    }

LABEL_10:
    v55 = OUTLINED_FUNCTION_38_18();
    starttest(v55, v56);
    v57 = OUTLINED_FUNCTION_32_21();
    lpta_loadp_setscan_l(v57, v58, v59);
    OUTLINED_FUNCTION_102_7();
    if (!v61)
    {
LABEL_102:
      v288 = OUTLINED_FUNCTION_13_35();
      if (chstream(v288, v289, v290))
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_42_16();
      v291 = test_string_s();
      LODWORD(v71) = v32;
      if (v291)
      {
        goto LABEL_45;
      }

LABEL_104:
      v292 = OUTLINED_FUNCTION_38_18();
      if (chstream(v292, v293, 4u))
      {
        goto LABEL_44;
      }

      v121 = OUTLINED_FUNCTION_10_36();
      v124 = 2;
      goto LABEL_106;
    }

LABEL_11:
    v62 = v60;
    v63 = OUTLINED_FUNCTION_38_18();
    starttest(v63, v64);
    v65 = OUTLINED_FUNCTION_44_16();
    if (!lpta_loadp_setscan_r(v65, v66, v67))
    {
      v68 = OUTLINED_FUNCTION_38_18();
      bspush_ca_scan(v68, v69);
      OUTLINED_FUNCTION_17_34();
      v70 = test_string_s();
      LODWORD(v71) = v62;
      v72 = v62;
      if (v70)
      {
        goto LABEL_45;
      }

LABEL_13:
      v32 = v72;
      v73 = OUTLINED_FUNCTION_13_35();
      if (test_synch(v73, v74, v75, v76))
      {
        goto LABEL_44;
      }

      v77 = OUTLINED_FUNCTION_33_21();
      starttest(v77, v78);
      v79 = OUTLINED_FUNCTION_32_21();
      v82 = lpta_loadp_setscan_l(v79, v80, v81);
      v83 = v32;
      if (v82)
      {
LABEL_15:
        v84 = OUTLINED_FUNCTION_38_18();
        starttest(v84, v85);
        v86 = OUTLINED_FUNCTION_32_21();
        if (!lpta_loadp_setscan_l(v86, v87, v88))
        {
LABEL_16:
          OUTLINED_FUNCTION_66_13(47, v330, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], *&v331[96], *&v331[104], *&v331[112], *&v331[120], *&v331[128], *&v331[136], *&v331[144], *&v331[152], *&v331[160], *&v331[168], *&v331[176], *&v331[184], *&v331[192], v332[0]);
          if (advanc(v0))
          {
            goto LABEL_44;
          }

          v89 = OUTLINED_FUNCTION_2_39();
          if (testFldeq(v89, v90, v91, v92))
          {
            goto LABEL_44;
          }

          v96 = advance_tok(v0, v93, v94, v95);
          LODWORD(v71) = v32;
          if (v96)
          {
            goto LABEL_45;
          }

LABEL_19:
          OUTLINED_FUNCTION_45_16(48, v330, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], *&v331[96], *&v331[104], *&v331[112], *&v331[120], *&v331[128], *&v331[136], *&v331[144], *&v331[152], *&v331[160], *&v331[168], *&v331[176], v331[184]);
          v97 = OUTLINED_FUNCTION_39_17();
          if (lpta_loadp_setscan_r(v97, v98, v99))
          {
            goto LABEL_44;
          }

          if (advance_tok(v0, v100, v101, v102))
          {
            goto LABEL_44;
          }

          v103 = OUTLINED_FUNCTION_2_39();
          if (testFldeq(v103, v104, v105, v106) || advance_tok(v0, v107, v108, v109))
          {
            goto LABEL_44;
          }

          v110 = OUTLINED_FUNCTION_38_18();
          starttest(v110, v111);
          v112 = OUTLINED_FUNCTION_15_34();
          if (!lpta_loadp_setscan_l(v112, v113, v114))
          {
LABEL_24:
            v115 = OUTLINED_FUNCTION_13_35();
            if (chstream(v115, v116, v117))
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_17_34();
            v118 = test_string_s();
            LODWORD(v71) = v32;
            if (v118)
            {
              goto LABEL_45;
            }

LABEL_26:
            v119 = OUTLINED_FUNCTION_38_18();
            if (chstream(v119, v120, 4u))
            {
              goto LABEL_44;
            }

LABEL_27:
            v121 = OUTLINED_FUNCTION_2_39();
LABEL_106:
            if (!testFldeq(v121, v122, v123, v124))
            {
LABEL_77:
              v138 = advance_tok(v0, v71, v133, v167);
              goto LABEL_78;
            }

            goto LABEL_44;
          }
        }
      }

      else
      {
LABEL_117:
        v32 = v83;
        OUTLINED_FUNCTION_66_13(33, v330, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], *&v331[96], *&v331[104], *&v331[112], *&v331[120], *&v331[128], *&v331[136], *&v331[144], *&v331[152], *&v331[160], *&v331[168], *&v331[176], *&v331[184], *&v331[192], v332[0]);
        if (advanc(v0))
        {
          goto LABEL_44;
        }

        v308 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v308, v309);
        v310 = OUTLINED_FUNCTION_1_40();
        v314 = testFldeq(v310, v311, v312, v313);
        v71 = v32;
        v168 = v32;
        if (v314)
        {
          goto LABEL_45;
        }

LABEL_119:
        v32 = v168;
        v315 = advance_tok(v0, v71, v133, v167);
        LODWORD(v71) = v32;
        if (v315)
        {
LABEL_45:
          v164 = v0[13];
          if (v164)
          {
            v165 = OUTLINED_FUNCTION_56_14(v164);
            v32 = v71;
          }

          else
          {
            v165 = vback(v0, v71);
            v32 = 0;
          }

          v166 = v165;
          v11 = 94;
          v133 = v32;
          v167 = v32;
          v72 = v32;
          v168 = v32;
          v169 = v32;
          v170 = v32;
          switch(v166)
          {
            case 1:
              continue;
            case 2:
              v31 = v32;
              goto LABEL_33;
            case 3:
              v142 = v32;
              goto LABEL_36;
            case 4:
              goto LABEL_40;
            case 5:
              goto LABEL_41;
            case 6:
              bspop_boa(v0);
              v174 = advance_tok(v0, v171, v172, v173);
              LODWORD(v71) = v32;
              if (v174)
              {
                goto LABEL_45;
              }

              v175 = OUTLINED_FUNCTION_38_18();
              starttest(v175, v176);
              v177 = OUTLINED_FUNCTION_32_21();
              if (lpta_loadp_setscan_r(v177, v178, v179))
              {
                goto LABEL_79;
              }

              v180 = OUTLINED_FUNCTION_10_36();
              v183 = testFldeq(v180, v181, v182, 21);
              LODWORD(v71) = v32;
              if (!v183)
              {
                v186 = advance_tok(v0, v32, v184, v185);
                LODWORD(v71) = v32;
                if (!v186)
                {
                  lpta_rpta_loadp(v0, v334, v333);
                  v187 = OUTLINED_FUNCTION_42_16();
                  v189 = setd_lookup(v187, v188, 166);
                  LODWORD(v71) = v32;
                  if (!v189)
                  {
                    goto LABEL_3;
                  }
                }
              }

              goto LABEL_45;
            case 7:
            case 8:
            case 44:
            case 45:
            case 52:
              goto LABEL_79;
            case 9:
              goto LABEL_7;
            case 10:
              v201 = OUTLINED_FUNCTION_38_18();
              bspush_ca_scan(v201, v202);
              v203 = OUTLINED_FUNCTION_9_36();
              v206 = 5;
              goto LABEL_63;
            case 11:
              goto LABEL_31;
            case 12:
              v203 = OUTLINED_FUNCTION_10_36();
              v206 = 13;
LABEL_63:
              v207 = testFldeq(v203, v204, v205, v206);
              v71 = v32;
              if (!v207)
              {
                goto LABEL_64;
              }

              goto LABEL_45;
            case 13:
LABEL_64:
              v208 = advance_tok(v0, v71, v133, v167);
              LODWORD(v133) = v32;
              LODWORD(v71) = v32;
              if (!v208)
              {
                goto LABEL_31;
              }

              goto LABEL_45;
            case 14:
              goto LABEL_8;
            case 15:
              goto LABEL_84;
            case 16:
              v190 = OUTLINED_FUNCTION_10_36();
              v194 = testFldeq(v190, v191, v192, v193);
              LODWORD(v167) = v32;
              LODWORD(v71) = v32;
              if (!v194)
              {
                goto LABEL_85;
              }

              goto LABEL_45;
            case 17:
              goto LABEL_85;
            case 18:
              goto LABEL_9;
            case 19:
              goto LABEL_92;
            case 20:
              v142 = v32;
              goto LABEL_110;
            case 21:
              bspop_boa(v0);
              OUTLINED_FUNCTION_38_18();
              bspush_ca_scan_boa();
              v160 = OUTLINED_FUNCTION_10_36();
              v163 = 23;
              goto LABEL_81;
            case 22:
              bspop_boa(v0);
              goto LABEL_77;
            case 23:
              goto LABEL_10;
            case 24:
              goto LABEL_97;
            case 25:
              goto LABEL_100;
            case 26:
              v60 = v32;
              goto LABEL_11;
            case 27:
              goto LABEL_102;
            case 28:
              goto LABEL_104;
            case 30:
              OUTLINED_FUNCTION_17_34();
              v195 = test_string_s();
              v72 = v32;
              LODWORD(v71) = v32;
              if (!v195)
              {
                goto LABEL_13;
              }

              goto LABEL_45;
            case 31:
              goto LABEL_13;
            case 32:
              goto LABEL_15;
            case 33:
              v83 = v32;
              goto LABEL_117;
            case 34:
              v196 = OUTLINED_FUNCTION_9_36();
              v200 = testFldeq(v196, v197, v198, v199);
              v168 = v32;
              v71 = v32;
              if (!v200)
              {
                goto LABEL_119;
              }

              goto LABEL_45;
            case 35:
              goto LABEL_119;
            case 36:
              break;
            case 37:
              v214 = OUTLINED_FUNCTION_9_36();
              v218 = testFldeq(v214, v215, v216, v217);
              v169 = v32;
              v71 = v32;
              if (!v218)
              {
                goto LABEL_69;
              }

              goto LABEL_45;
            case 38:
              goto LABEL_69;
            case 40:
              goto LABEL_71;
            case 41:
              goto LABEL_73;
            case 42:
              v209 = OUTLINED_FUNCTION_9_36();
              v213 = testFldeq(v209, v210, v211, v212);
              v170 = v32;
              v71 = v32;
              if (!v213)
              {
                goto LABEL_75;
              }

              goto LABEL_45;
            case 43:
              goto LABEL_75;
            case 47:
              goto LABEL_16;
            case 48:
              goto LABEL_19;
            case 50:
              goto LABEL_24;
            case 51:
              goto LABEL_26;
            default:
              goto LABEL_4;
          }
        }

        OUTLINED_FUNCTION_45_16(36, v330, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], *&v331[96], *&v331[104], *&v331[112], *&v331[120], *&v331[128], *&v331[136], *&v331[144], *&v331[152], *&v331[160], *&v331[168], *&v331[176], v331[184]);
        v316 = OUTLINED_FUNCTION_39_17();
        if (lpta_loadp_setscan_r(v316, v317, v318) || advance_tok(v0, v319, v320, v321))
        {
          goto LABEL_44;
        }

        v322 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v322, v323);
        v324 = OUTLINED_FUNCTION_1_40();
        v328 = testFldeq(v324, v325, v326, v327);
        v71 = v32;
        v169 = v32;
        if (v328)
        {
          goto LABEL_45;
        }

LABEL_69:
        v32 = v169;
        if (advance_tok(v0, v71, v133, v167))
        {
          goto LABEL_44;
        }

        v219 = OUTLINED_FUNCTION_38_18();
        starttest(v219, v220);
        v221 = OUTLINED_FUNCTION_15_34();
        if (!lpta_loadp_setscan_l(v221, v222, v223))
        {
LABEL_71:
          v224 = OUTLINED_FUNCTION_13_35();
          if (!chstream(v224, v225, v226))
          {
            OUTLINED_FUNCTION_17_34();
            v227 = test_string_s();
            LODWORD(v71) = v32;
            if (v227)
            {
              goto LABEL_45;
            }

LABEL_73:
            v228 = OUTLINED_FUNCTION_38_18();
            if (!chstream(v228, v229, 4u))
            {
              v230 = OUTLINED_FUNCTION_38_18();
              bspush_ca_scan(v230, v231);
              v232 = OUTLINED_FUNCTION_1_40();
              v236 = testFldeq(v232, v233, v234, v235);
              v71 = v32;
              v170 = v32;
              if (v236)
              {
                goto LABEL_45;
              }

LABEL_75:
              LODWORD(v32) = v170;
              goto LABEL_77;
            }
          }

LABEL_44:
          LODWORD(v71) = v32;
          goto LABEL_45;
        }
      }
    }

    break;
  }

LABEL_3:
  v11 = 94;
LABEL_4:
  v12 = v11;
  vretproc(v0);
  return v12;
}

uint64_t find_fren_potential_phrase()
{
  OUTLINED_FUNCTION_16_34();
  v44 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  HIDWORD(v38) = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v37, v4);
  OUTLINED_FUNCTION_52_15();
  bzero(v43, v5);
  if (setjmp(v43))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_92_10();
  if (ventproc(v0, v6, v7, v8, v9, v43))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_43_16();
  v12 = OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_82_11(v12, v13);
  v14 = OUTLINED_FUNCTION_83_11();
  get_parm(v14, v15, v1, -4);
  fence_38(v0, 0, &null_str_15);
  OUTLINED_FUNCTION_46_16();
  if (subord_conj())
  {
LABEL_6:
    OUTLINED_FUNCTION_26_27();
    if (relpro())
    {
LABEL_7:
      OUTLINED_FUNCTION_26_27();
      if (subj_pro())
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_26_27();
        coord_conj(v16, v17, v18, v19);
        if (v20)
        {
LABEL_9:
          OUTLINED_FUNCTION_26_27();
          if (noun_phrase())
          {
LABEL_10:
            v21 = OUTLINED_FUNCTION_26_27();
            if (prep_phrase(v21))
            {
LABEL_11:
              v22 = OUTLINED_FUNCTION_26_27();
              if (verb_phrase(v22))
              {
LABEL_3:
                v10 = 94;
                goto LABEL_4;
              }
            }
          }
        }
      }
    }
  }

  while (2)
  {
    v23 = OUTLINED_FUNCTION_46_16();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_67_13();
    if (!lpta_loadp_setscan_l(v25, v26, 4))
    {
      v27 = OUTLINED_FUNCTION_37_18();
      if (testFldeq(v27, v28, 4, 1) || advance_tok(v0, v29, v30, v31))
      {
        v32 = *(v0 + 104);
        if (v32)
        {
          v33 = OUTLINED_FUNCTION_56_14(v32);
        }

        else
        {
          v34 = OUTLINED_FUNCTION_69_13();
          v33 = vback(v34, v35);
        }

        switch(v33)
        {
          case 1:
            goto LABEL_6;
          case 2:
            continue;
          case 3:
            goto LABEL_7;
          case 4:
            goto LABEL_8;
          case 5:
            goto LABEL_9;
          case 6:
            goto LABEL_10;
          case 7:
            goto LABEL_11;
          case 9:
            goto LABEL_20;
          case 10:
            break;
          default:
            goto LABEL_3;
        }
      }

      OUTLINED_FUNCTION_79_12(10, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9], v37[10], v37[11], v37[12], v37[13], v37[14], v37[15], v37[16], v37[17], v37[18], v37[19], v37[20], v37[21], v37[22], v38, v39, v40, v41);
    }

    break;
  }

LABEL_20:
  *(v3 + 8) = v42;
  *(v2 + 8) = v40;
  v1[1] = HIWORD(v38);
  v10 = 0;
LABEL_4:
  vretproc(v0);
  return v10;
}

uint64_t subord_conj()
{
  OUTLINED_FUNCTION_104_7();
  OUTLINED_FUNCTION_19_29(v5, v6, v7, v8, v9, v10, v11, v12, v341, v346, v351, v356, v361, v366, v371, v376, v381, v386, v391, v396, v401, v406, v411, v416, v421, v426, v431, v436, v441, v446, v451, v456, v461, v466, v471, SHIDWORD(v471), v476, v480, v484, v488);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v13, v14, v15, v16, v17, v18, v19, v20, v342, v347, v352, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477, v481, v485, v489, v492, v494, v496, v498);
  if (setjmp(v4) || (OUTLINED_FUNCTION_25_27(), OUTLINED_FUNCTION_98_8(v21, v22, v23, v24, v25, v26, v27, v28, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v403, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v482, v486, v490, v493, v495, v497, v499)))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  else
  {
    v30 = OUTLINED_FUNCTION_46_16();
    OUTLINED_FUNCTION_82_11(v30, v31);
    v32 = OUTLINED_FUNCTION_49_16();
    get_parm(v32, v33, v3, -6);
    OUTLINED_FUNCTION_55_15(v34, v35, v36, v37, v38, v39, v40, v41, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v429, v434, v439, v444, v449, v454, v459, v464, v469, *v474, v474[4]);
    v42 = OUTLINED_FUNCTION_47_16();
    push_ptr_init(v42, v43);
    v44 = OUTLINED_FUNCTION_58_14();
    fence_38(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_84_11();
    fence_38(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_105_6();
    starttest(v50, v51);
    OUTLINED_FUNCTION_27_25();
    bspush_ca_boa();
    v52 = OUTLINED_FUNCTION_22_27();
    if (lpta_loadp_setscan_r(v52, v53, v54))
    {
      LODWORD(v55) = 0;
    }

    else
    {
      v56 = OUTLINED_FUNCTION_9_36();
      if (testFldeq(v56, v57, v58, 7))
      {
        LODWORD(v55) = 0;
      }

      else
      {
        v59 = OUTLINED_FUNCTION_88_10();
        bspush_ca_scan(v59, v60);
        v61 = OUTLINED_FUNCTION_37_18();
        v63 = testFldeq(v61, v62, 3, 12);
        v66 = 0;
        v55 = 0;
        if (!v63)
        {
LABEL_9:
          v67 = v66;
          if (advance_tok(v0, v55, v64, v65))
          {
            LODWORD(v55) = v67;
          }

          else
          {
            LODWORD(v55) = 1;
          }
        }
      }
    }

    while (2)
    {
      v87 = *(v0 + 104);
      if (v87)
      {
        v88 = OUTLINED_FUNCTION_56_14(v87);
        v93 = v55;
      }

      else
      {
        v88 = vback(v0, v55);
        v93 = 0;
      }

      v66 = v93;
      switch(v88)
      {
        case 1:
          v94 = OUTLINED_FUNCTION_38_18();
          starttest(v94, v95);
          v96 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v96, v97, v98))
          {
            goto LABEL_29;
          }

          goto LABEL_49;
        case 2:
          bspop_boa(v0);
          goto LABEL_3;
        case 3:
          v208 = OUTLINED_FUNCTION_37_18();
          v210 = testFldeq(v208, v209, 4, 1);
          v66 = v93;
          v55 = v93;
          if (!v210)
          {
            goto LABEL_9;
          }

          continue;
        case 4:
          goto LABEL_9;
        case 5:
LABEL_29:
          v99 = OUTLINED_FUNCTION_38_18();
          starttest(v99, v100);
          v101 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v101, v102, v103))
          {
            goto LABEL_30;
          }

          goto LABEL_42;
        case 6:
LABEL_49:
          OUTLINED_FUNCTION_45_16(6, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465);
          v169 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v169, v170);
          goto LABEL_101;
        case 7:
          v215 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v215, v216);
          v217 = OUTLINED_FUNCTION_1_40();
          v221 = testFldeq(v217, v218, v219, v220);
          LODWORD(v55) = v93;
          if (v221)
          {
            continue;
          }

          v224 = advance_tok(v0, v93, v222, v223);
          LODWORD(v55) = v93;
          if (v224)
          {
            continue;
          }

          v225 = OUTLINED_FUNCTION_30_23();
          bspush_ca_scan(v225, v226);
          goto LABEL_98;
        case 8:
          goto LABEL_101;
        case 9:
          v279 = OUTLINED_FUNCTION_9_36();
          v282 = testFldeq(v279, v280, v281, 4);
          LODWORD(v55) = v93;
          if (v282)
          {
            continue;
          }

          v187 = OUTLINED_FUNCTION_11_36();
          v190 = 9;
          goto LABEL_96;
        case 10:
          v213 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v213, v214);
          v187 = OUTLINED_FUNCTION_9_36();
          v190 = 6;
          goto LABEL_96;
        case 11:
        case 14:
          goto LABEL_98;
        case 12:
          v187 = OUTLINED_FUNCTION_10_36();
          v190 = 15;
LABEL_96:
          v283 = testFldeq(v187, v188, v189, v190);
          v55 = v93;
          if (!v283)
          {
            goto LABEL_97;
          }

          continue;
        case 13:
LABEL_97:
          v284 = advance_tok(v0, v55, v64, v65);
          LODWORD(v55) = v93;
          if (v284)
          {
            continue;
          }

LABEL_98:
          v285 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v285, v286);
          v191 = OUTLINED_FUNCTION_4_38();
LABEL_99:
          v287 = testFldeq(v191, v192, v193, v194);
          v55 = v93;
          if (!v287)
          {
LABEL_100:
            v288 = advance_tok(v0, v55, v64, v65);
            LODWORD(v55) = v93;
            if (!v288)
            {
LABEL_101:
              v289 = OUTLINED_FUNCTION_2_39();
              v293 = testFldeq(v289, v290, v291, v292);
              LODWORD(v55) = v93;
              if (!v293)
              {
                v296 = advance_tok(v0, v93, v294, v295);
                LODWORD(v55) = v93;
                if (!v296)
                {
                  v297 = OUTLINED_FUNCTION_15_34();
                  v300 = lpta_loadp_setscan_r(v297, v298, v299);
                  LODWORD(v55) = v93;
                  if (!v300)
                  {
                    v301 = OUTLINED_FUNCTION_10_36();
                    v304 = testFldeq(v301, v302, v303, 34);
                    LODWORD(v55) = v93;
                    if (!v304)
                    {
                      v307 = advance_tok(v0, v93, v305, v306);
                      LODWORD(v55) = v93;
                      if (!v307)
                      {
                        OUTLINED_FUNCTION_38_18();
                        bspush_ca_scan_boa();
                        v308 = OUTLINED_FUNCTION_38_18();
                        bspush_ca_scan(v308, v309);
                        v195 = OUTLINED_FUNCTION_10_36();
                        v198 = 11;
LABEL_59:
                        v199 = testFldeq(v195, v196, v197, v198);
                        v55 = v93;
                        if (!v199)
                        {
LABEL_60:
                          v200 = advance_tok(v0, v55, v64, v65);
                          LODWORD(v55) = v93;
                          if (!v200)
                          {
                            v201 = OUTLINED_FUNCTION_2_39();
                            v205 = testFldeq(v201, v202, v203, v204);
                            LODWORD(v55) = v93;
                            if (!v205)
                            {
                              if (advance_tok(v0, v93, v206, v207))
                              {
                                LODWORD(v55) = v93;
                              }

                              else
                              {
                                LODWORD(v55) = 1;
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

          continue;
        case 15:
          v191 = OUTLINED_FUNCTION_3_39();
          goto LABEL_99;
        case 16:
          goto LABEL_100;
        case 17:
          bspop_boa(v0);
          goto LABEL_120;
        case 18:
          v195 = OUTLINED_FUNCTION_1_40();
          goto LABEL_59;
        case 19:
          goto LABEL_60;
        case 20:
        case 35:
        case 46:
          goto LABEL_120;
        case 21:
LABEL_30:
          v104 = OUTLINED_FUNCTION_38_18();
          starttest(v104, v105);
          v106 = OUTLINED_FUNCTION_21_28();
          if (lpta_loadp_setscan_r(v106, v107, v108))
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_42_16();
          if (test_string_s())
          {
            goto LABEL_33;
          }

          v109 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v109, v110, v111))
          {
            goto LABEL_33;
          }

          goto LABEL_50;
        case 22:
LABEL_42:
          OUTLINED_FUNCTION_45_16(22, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465);
          v144 = OUTLINED_FUNCTION_10_36();
          v147 = testFldeq(v144, v145, v146, 1);
          LODWORD(v55) = v93;
          if (v147)
          {
            continue;
          }

          v150 = advance_tok(v0, v93, v148, v149);
          LODWORD(v55) = v93;
          if (v150)
          {
            continue;
          }

          v151 = OUTLINED_FUNCTION_10_36();
          v154 = testFldeq(v151, v152, v153, 13);
          LODWORD(v55) = v93;
          if (v154)
          {
            continue;
          }

          v157 = advance_tok(v0, v93, v155, v156);
          LODWORD(v55) = v93;
          if (v157)
          {
            continue;
          }

          v158 = OUTLINED_FUNCTION_15_34();
          v161 = lpta_loadp_setscan_r(v158, v159, v160);
          LODWORD(v55) = v93;
          if (v161)
          {
            continue;
          }

          v164 = advance_tok(v0, v93, v162, v163);
          LODWORD(v55) = v93;
          if (v164)
          {
            continue;
          }

          v165 = OUTLINED_FUNCTION_6_37();
          goto LABEL_68;
        case 23:
LABEL_33:
          v112 = OUTLINED_FUNCTION_38_18();
          starttest(v112, v113);
          v114 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v114, v115, v116))
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        case 24:
LABEL_50:
          OUTLINED_FUNCTION_45_16(24, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465);
          v171 = OUTLINED_FUNCTION_9_36();
          v174 = testFldeq(v171, v172, v173, 5);
          LODWORD(v55) = v93;
          if (v174)
          {
            continue;
          }

          v177 = advance_tok(v0, v93, v175, v176);
          LODWORD(v55) = v93;
          if (v177)
          {
            continue;
          }

          v178 = OUTLINED_FUNCTION_15_34();
          v181 = lpta_loadp_setscan_r(v178, v179, v180);
          LODWORD(v55) = v93;
          if (v181)
          {
            continue;
          }

          v184 = advance_tok(v0, v93, v182, v183);
          LODWORD(v55) = v93;
          if (v184)
          {
            continue;
          }

          v185 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v185, v186);
          v165 = OUTLINED_FUNCTION_3_39();
LABEL_68:
          v211 = testFldeq(v165, v166, v167, v168);
          v55 = v93;
          if (v211)
          {
            continue;
          }

LABEL_69:
          v212 = advance_tok(v0, v55, v64, v65);
          LODWORD(v55) = v93;
          if (!v212)
          {
            goto LABEL_121;
          }

          continue;
        case 25:
          v165 = OUTLINED_FUNCTION_4_38();
          goto LABEL_68;
        case 26:
          goto LABEL_69;
        case 27:
LABEL_34:
          v117 = OUTLINED_FUNCTION_38_18();
          starttest(v117, v118);
          v119 = OUTLINED_FUNCTION_38_18();
          bspush_ca(v119);
          v120 = OUTLINED_FUNCTION_21_28();
          v123 = lpta_loadp_setscan_r(v120, v121, v122);
          LODWORD(v55) = v93;
          if (!v123)
          {
            goto LABEL_111;
          }

          continue;
        case 28:
LABEL_36:
          OUTLINED_FUNCTION_45_16(28, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465);
          v124 = OUTLINED_FUNCTION_2_39();
          v128 = testFldeq(v124, v125, v126, v127);
          LODWORD(v55) = v93;
          if (v128)
          {
            continue;
          }

          v131 = advance_tok(v0, v93, v129, v130);
          LODWORD(v55) = v93;
          if (v131)
          {
            continue;
          }

          v132 = OUTLINED_FUNCTION_15_34();
          v135 = lpta_loadp_setscan_r(v132, v133, v134);
          LODWORD(v55) = v93;
          if (v135)
          {
            continue;
          }

          v136 = OUTLINED_FUNCTION_10_36();
          v139 = testFldeq(v136, v137, v138, 6);
          LODWORD(v55) = v93;
          if (v139)
          {
            continue;
          }

          v140 = OUTLINED_FUNCTION_11_36();
          v143 = testFldeq(v140, v141, v142, 12);
          LODWORD(v55) = v93;
          if (v143)
          {
            continue;
          }

          v79 = OUTLINED_FUNCTION_9_36();
          v82 = 7;
          goto LABEL_21;
        case 29:
          v227 = OUTLINED_FUNCTION_38_18();
          starttest(v227, v228);
          v237 = OUTLINED_FUNCTION_0_41(v229, v230, v231, v232, v233, v234, v235, v236, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465, v470, v475, v479, v483, v487, v491);
          setscan_nof_l(v237, 4, v238);
          if (v239)
          {
            goto LABEL_76;
          }

          goto LABEL_87;
        case 30:
          v317 = OUTLINED_FUNCTION_21_28();
          v320 = lpta_loadp_setscan_r(v317, v318, v319);
          LODWORD(v55) = v93;
          if (v320)
          {
            continue;
          }

LABEL_111:
          OUTLINED_FUNCTION_17_34();
          v321 = test_string_s();
          LODWORD(v55) = v93;
          if (!v321)
          {
            goto LABEL_112;
          }

          continue;
        case 31:
LABEL_112:
          v322 = OUTLINED_FUNCTION_33_21();
          starttest(v322, v323);
          v324 = OUTLINED_FUNCTION_20_29();
          if (lpta_loadp_setscan_r(v324, v325, v326))
          {
            goto LABEL_113;
          }

          v83 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v83, v84);
          v79 = OUTLINED_FUNCTION_1_40();
          goto LABEL_21;
        case 32:
LABEL_113:
          v327 = OUTLINED_FUNCTION_38_18();
          starttest(v327, v328);
          v329 = OUTLINED_FUNCTION_12_36();
          v88 = lpta_loadp_setscan_l(v329, v330, v331);
          if (v88)
          {
            goto LABEL_114;
          }

          v79 = OUTLINED_FUNCTION_8_37();
LABEL_21:
          v85 = testFldeq(v79, v80, v81, v82);
          v55 = v93;
          if (v85)
          {
            continue;
          }

LABEL_22:
          v86 = advance_tok(v0, v55, v64, v65);
          goto LABEL_23;
        case 33:
          v79 = OUTLINED_FUNCTION_9_36();
          goto LABEL_21;
        case 34:
          goto LABEL_22;
        case 36:
LABEL_114:
          OUTLINED_FUNCTION_0_41(v88, v55, v64, v65, v89, v90, v91, v92, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465, v470, v475, v479, v483, v487, v491);
          if (!lpta_tstmovel())
          {
            v332 = OUTLINED_FUNCTION_42_16();
            setscan_l(v332, v333, v334);
            if (!v335)
            {
              OUTLINED_FUNCTION_42_16();
              if (!test_string_s())
              {
                goto LABEL_117;
              }
            }
          }

          goto LABEL_119;
        case 37:
        case 44:
        case 47:
          goto LABEL_119;
        case 38:
LABEL_117:
          v260 = 38;
          goto LABEL_118;
        case 39:
LABEL_76:
          v240 = OUTLINED_FUNCTION_21_28();
          if (lpta_loadp_setscan_r(v240, v241, v242))
          {
            goto LABEL_119;
          }

          OUTLINED_FUNCTION_95_9();
          if (test_string_s())
          {
            goto LABEL_119;
          }

          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_5_37();
          if (lpta_tstmover())
          {
            goto LABEL_81;
          }

          v243 = OUTLINED_FUNCTION_42_16();
          setscan_r(v243, v244, v245);
          if (v246)
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_17_34();
          if (test_string_s())
          {
            goto LABEL_81;
          }

          goto LABEL_120;
        case 40:
LABEL_87:
          OUTLINED_FUNCTION_45_16(40, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465);
          v261 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v261, v262);
          goto LABEL_88;
        case 41:
          v310 = OUTLINED_FUNCTION_10_36();
          v313 = testFldeq(v310, v311, v312, 8);
          LODWORD(v55) = v93;
          if (v313)
          {
            continue;
          }

          v316 = advance_tok(v0, v93, v314, v315);
          LODWORD(v55) = v93;
          if (v316)
          {
            continue;
          }

          goto LABEL_88;
        case 42:
LABEL_88:
          v263 = OUTLINED_FUNCTION_2_39();
          v267 = testFldeq(v263, v264, v265, v266);
          LODWORD(v55) = v93;
          if (!v267)
          {
            v270 = advance_tok(v0, v93, v268, v269);
            LODWORD(v55) = v93;
            if (!v270)
            {
              OUTLINED_FUNCTION_54_15();
              v271 = OUTLINED_FUNCTION_5_37();
              v274 = setscan_nof_r(v271, v272, v273);
              LODWORD(v55) = v93;
              if (!v274)
              {
                goto LABEL_91;
              }
            }
          }

          continue;
        case 43:
LABEL_91:
          v275 = OUTLINED_FUNCTION_13_35();
          v278 = chstream(v275, v276, v277);
          LODWORD(v55) = v93;
          if (v278)
          {
            continue;
          }

          OUTLINED_FUNCTION_42_16();
          v86 = test_string_s();
LABEL_23:
          LODWORD(v55) = v93;
          if (v86)
          {
            continue;
          }

          goto LABEL_120;
        case 45:
LABEL_81:
          v247 = OUTLINED_FUNCTION_38_18();
          starttest(v247, v248);
          v249 = OUTLINED_FUNCTION_12_36();
          if (!lpta_loadp_setscan_l(v249, v250, v251) && !advanc(v0))
          {
            goto LABEL_83;
          }

          goto LABEL_119;
        case 48:
LABEL_83:
          v252 = OUTLINED_FUNCTION_13_35();
          v255 = chstream(v252, v253, v254);
          LODWORD(v55) = v93;
          if (!v255)
          {
            OUTLINED_FUNCTION_28_24();
            v256 = test_string_s();
            LODWORD(v55) = v93;
            if (!v256)
            {
              goto LABEL_85;
            }
          }

          continue;
        case 49:
LABEL_85:
          v257 = OUTLINED_FUNCTION_38_18();
          v259 = chstream(v257, v258, 4u);
          LODWORD(v55) = v93;
          if (!v259)
          {
            goto LABEL_86;
          }

          continue;
        case 50:
LABEL_86:
          v260 = 50;
LABEL_118:
          OUTLINED_FUNCTION_61_14(v260, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465, v470, v475, v479, v483, v487);
LABEL_119:
          HIWORD(v475) = 2;
LABEL_120:
          v336 = OUTLINED_FUNCTION_38_18();
          starttest(v336, v337);
          v338 = OUTLINED_FUNCTION_12_36();
          if (!lpta_loadp_setscan_l(v338, v339, v340) && !advanc(v0))
          {
            goto LABEL_13;
          }

          goto LABEL_121;
        case 51:
          goto LABEL_121;
        case 52:
LABEL_13:
          v68 = OUTLINED_FUNCTION_13_35();
          v71 = chstream(v68, v69, v70);
          LODWORD(v55) = v93;
          if (v71)
          {
            continue;
          }

          v72 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v72, v73);
LABEL_15:
          OUTLINED_FUNCTION_42_16();
          v74 = test_string_s();
          LODWORD(v55) = v93;
          if (v74)
          {
            continue;
          }

LABEL_16:
          OUTLINED_FUNCTION_17_34();
          v75 = test_string_s();
          LODWORD(v55) = v93;
          if (v75)
          {
            continue;
          }

LABEL_17:
          v76 = OUTLINED_FUNCTION_38_18();
          v78 = chstream(v76, v77, 4u);
          LODWORD(v55) = v93;
          if (v78)
          {
            continue;
          }

LABEL_122:
          OUTLINED_FUNCTION_61_14(56, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465, v470, v475, v479, v483, v487);
LABEL_121:
          *(v2 + 8) = v491;
          *(v1 + 2) = HIWORD(v475);
          vretproc(v0);
          result = 0;
          break;
        case 53:
          goto LABEL_15;
        case 54:
          goto LABEL_16;
        case 55:
          goto LABEL_17;
        case 56:
          goto LABEL_122;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

uint64_t relpro()
{
  OUTLINED_FUNCTION_16_34();
  v1178 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v2, v3, v4, v5, v6, v7, v8, v9, v1036, v1041, v1046, v1051, v1056, v1061, v1066, v1071, v1076, v1081, v1086, v1091, v1096, v1101, v1106, v1111, v1116, v1121, v1126, v1131, v1136, v1141, v1146, v1151, v1156, v1161, v1166, SHIDWORD(v1166), v1171[0], v1171[1], v1172, v1173);
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_100_7(v10, v11, v12, v13, v14, v15, v16, v17, v1037, v1042, v1047, v1052, v1057, v1062, v1067, v1072, v1077, v1082, v1087, v1092, v1097, v1102, v1107, v1112, v1117, v1122, v1127, v1132, v1137, v1142, v1147, v1152, v1157, v1162, v1167, v1171[0], v1171[1], v1172, v1173, v1174, v1175, v1176, v1177);
  if (setjmp(v1) || (OUTLINED_FUNCTION_25_27(), OUTLINED_FUNCTION_98_8(v18, v19, v20, v21, v22, v23, v24, v25, v1038, v1043, v1048, v1053, v1058, v1063, v1068, v1073, v1078, v1083, v1088, v1093, v1098, v1103, v1108, v1113, v1118, v1123, v1128, v1133, v1138, v1143, v1148, v1153, v1158, v1163, v1168, v1171[0], v1171[1], v1172, v1173, v1174, v1175, v1176, v1177)))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_43_16();
    v27 = OUTLINED_FUNCTION_49_16();
    OUTLINED_FUNCTION_82_11(v27, v28);
    OUTLINED_FUNCTION_55_15(v29, v30, v31, v32, v33, v34, v35, v36, v1039, v1044, v1049, v1054, v1059, v1064, v1069, v1074, v1079, v1084, v1089, v1094, v1099, v1104, v1109, v1114, v1119, v1124, v1129, v1134, v1139, v1144, v1149, v1154, v1159, v1164, *v1169, v1169[4]);
    v37 = OUTLINED_FUNCTION_47_16();
    push_ptr_init(v37, v38);
    v39 = OUTLINED_FUNCTION_58_14();
    fence_38(v39, v40, v41);
    v42 = OUTLINED_FUNCTION_62_13();
    fence_38(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_89_10();
    starttest(v45, v46);
    OUTLINED_FUNCTION_27_25();
    bspush_ca_boa();
    v47 = OUTLINED_FUNCTION_22_27();
    if (lpta_loadp_setscan_r(v47, v48, v49))
    {
      v50 = 0;
    }

    else
    {
      v51 = OUTLINED_FUNCTION_31_22();
      bspush_ca_scan(v51, v52);
      v53 = OUTLINED_FUNCTION_9_36();
      if (testFldeq(v53, v54, v55, 5))
      {
        v50 = 0;
      }

      else
      {
        bspush_ca_scan_boa();
        v50 = !testFldeq(v0, 4u, 3, 8);
      }
    }

    LODWORD(v56) = v50;
    while (2)
    {
      v57 = v0[13];
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_56_14(v57);
        v65 = v56;
      }

      else
      {
        v58 = vback(v0, v56);
        v65 = 0;
      }

      v66 = 3;
      switch(v58)
      {
        case 1:
          v112 = OUTLINED_FUNCTION_38_18();
          starttest(v112, v113);
          v122 = OUTLINED_FUNCTION_0_41(v114, v115, v116, v117, v118, v119, v120, v121, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172, v1173);
          setscan_nof_l(v122, 4, v123);
          if (v124)
          {
            goto LABEL_34;
          }

          goto LABEL_146;
        case 2:
          bspop_boa(v0);
          goto LABEL_3;
        case 3:
          v733 = OUTLINED_FUNCTION_6_37();
          v737 = testFldeq(v733, v734, v735, v736);
          LODWORD(v56) = v65;
          if (v737)
          {
            continue;
          }

          OUTLINED_FUNCTION_38_18();
          bspush_ca_scan_boa();
          v679 = OUTLINED_FUNCTION_10_36();
          v682 = 8;
          goto LABEL_268;
        case 4:
        case 6:
          bspop_boa(v0);
          goto LABEL_15;
        case 5:
LABEL_15:
          v67 = advance_tok(v0, v56, v59, v60);
          goto LABEL_269;
        case 7:
LABEL_34:
          v125 = OUTLINED_FUNCTION_30_23();
          starttest(v125, v126);
          v135 = OUTLINED_FUNCTION_0_41(v127, v128, v129, v130, v131, v132, v133, v134, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172, v1173);
          setscan_nof_l(v135, 4, v136);
          if (v137)
          {
            goto LABEL_35;
          }

          goto LABEL_142;
        case 8:
LABEL_146:
          OUTLINED_FUNCTION_45_16(8, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v551 = OUTLINED_FUNCTION_1_40();
          v555 = testFldeq(v551, v552, v553, v554);
          LODWORD(v56) = v65;
          if (v555)
          {
            continue;
          }

          v558 = advance_tok(v0, v65, v556, v557);
          LODWORD(v56) = v65;
          if (v558)
          {
            continue;
          }

          OUTLINED_FUNCTION_54_15();
          v559 = OUTLINED_FUNCTION_5_37();
          v562 = setscan_nof_r(v559, v560, v561);
          LODWORD(v56) = v65;
          if (v562)
          {
            continue;
          }

          v563 = OUTLINED_FUNCTION_6_37();
          v567 = testFldeq(v563, v564, v565, v566);
          LODWORD(v56) = v65;
          if (v567)
          {
            continue;
          }

          v570 = advance_tok(v0, v65, v568, v569);
          LODWORD(v56) = v65;
          if (v570)
          {
            continue;
          }

          v571 = OUTLINED_FUNCTION_3_39();
          v575 = testFldeq(v571, v572, v573, v574);
          LODWORD(v56) = v65;
          if (v575)
          {
            continue;
          }

          v578 = advance_tok(v0, v65, v576, v577);
          LODWORD(v56) = v65;
          if (v578)
          {
            continue;
          }

          v66 = 4;
          goto LABEL_323;
        case 9:
        case 86:
        case 91:
        case 107:
        case 130:
          goto LABEL_324;
        case 10:
LABEL_35:
          v138 = OUTLINED_FUNCTION_34_19();
          starttest(v138, v139);
          v148 = OUTLINED_FUNCTION_0_41(v140, v141, v142, v143, v144, v145, v146, v147, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172, v1173);
          setscan_nof_l(v148, 4, v149);
          if (v150)
          {
            goto LABEL_36;
          }

          goto LABEL_141;
        case 11:
LABEL_142:
          OUTLINED_FUNCTION_45_16(11, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v537 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v537, v538);
          goto LABEL_143;
        case 12:
          v68 = OUTLINED_FUNCTION_10_36();
          v71 = testFldeq(v68, v69, v70, 8);
          LODWORD(v56) = v65;
          if (v71)
          {
            continue;
          }

          v72 = OUTLINED_FUNCTION_4_38();
          v76 = testFldeq(v72, v73, v74, v75);
          LODWORD(v56) = v65;
          if (v76)
          {
            continue;
          }

          v79 = advance_tok(v0, v65, v77, v78);
          LODWORD(v56) = v65;
          if (v79)
          {
            continue;
          }

          goto LABEL_143;
        case 13:
LABEL_143:
          v539 = OUTLINED_FUNCTION_2_39();
          v543 = testFldeq(v539, v540, v541, v542);
          LODWORD(v56) = v65;
          if (v543)
          {
            continue;
          }

          v546 = advance_tok(v0, v65, v544, v545);
          LODWORD(v56) = v65;
          if (v546)
          {
            continue;
          }

          OUTLINED_FUNCTION_54_15();
          v547 = OUTLINED_FUNCTION_5_37();
          v550 = setscan_nof_r(v547, v548, v549);
          goto LABEL_304;
        case 14:
LABEL_36:
          v151 = OUTLINED_FUNCTION_38_18();
          starttest(v151, v152);
          v153 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_r(v153, v154, v155))
          {
            goto LABEL_37;
          }

          goto LABEL_136;
        case 15:
LABEL_141:
          OUTLINED_FUNCTION_45_16(15, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v531 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v531, v532);
          v533 = OUTLINED_FUNCTION_10_36();
          v536 = 10;
          goto LABEL_273;
        case 16:
          v533 = OUTLINED_FUNCTION_10_36();
          v536 = 7;
LABEL_273:
          v855 = testFldeq(v533, v534, v535, v536);
          v56 = v65;
          if (!v855)
          {
            goto LABEL_274;
          }

          continue;
        case 17:
LABEL_274:
          v856 = advance_tok(v0, v56, v59, v60);
          LODWORD(v56) = v65;
          if (!v856)
          {
            goto LABEL_275;
          }

          continue;
        case 18:
LABEL_275:
          OUTLINED_FUNCTION_61_14(18, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172);
          OUTLINED_FUNCTION_54_15();
          v857 = OUTLINED_FUNCTION_5_37();
          v860 = setscan_nof_r(v857, v858, v859);
          LODWORD(v56) = v65;
          if (v860)
          {
            continue;
          }

          v861 = OUTLINED_FUNCTION_6_37();
          v865 = testFldeq(v861, v862, v863, v864);
          LODWORD(v56) = v65;
          if (v865)
          {
            continue;
          }

          v868 = advance_tok(v0, v65, v866, v867);
          LODWORD(v56) = v65;
          if (v868)
          {
            continue;
          }

          v869 = OUTLINED_FUNCTION_38_18();
          starttest(v869, v870);
          v879 = OUTLINED_FUNCTION_0_41(v871, v872, v873, v874, v875, v876, v877, v878, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172, v1173);
          setscan_nof_l(v879, 4, v880);
          if (v58)
          {
            goto LABEL_353;
          }

LABEL_279:
          OUTLINED_FUNCTION_45_16(20, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v881 = OUTLINED_FUNCTION_1_40();
          v885 = testFldeq(v881, v882, v883, v884);
          LODWORD(v56) = v65;
          if (v885)
          {
            continue;
          }

          v888 = advance_tok(v0, v65, v886, v887);
          LODWORD(v56) = v65;
          if (v888)
          {
            continue;
          }

          OUTLINED_FUNCTION_54_15();
          v889 = OUTLINED_FUNCTION_5_37();
          v892 = setscan_nof_r(v889, v890, v891);
          LODWORD(v56) = v65;
          if (v892)
          {
            continue;
          }

LABEL_282:
          v893 = OUTLINED_FUNCTION_13_35();
          v896 = chstream(v893, v894, v895);
          LODWORD(v56) = v65;
          if (v896)
          {
            continue;
          }

          OUTLINED_FUNCTION_42_16();
          v897 = test_string_s();
          v56 = v65;
          if (v897)
          {
            continue;
          }

          v1035 = 3;
          goto LABEL_347;
        case 19:
        case 120:
        case 129:
        case 161:
          goto LABEL_353;
        case 20:
          goto LABEL_279;
        case 21:
          goto LABEL_282;
        case 22:
LABEL_37:
          v156 = OUTLINED_FUNCTION_38_18();
          starttest(v156, v157);
          v158 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v158, v159, v160))
          {
            goto LABEL_38;
          }

          v1000 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v1000, v1001);
          goto LABEL_329;
        case 23:
LABEL_136:
          v517 = OUTLINED_FUNCTION_13_35();
          v520 = chstream(v517, v518, v519);
          LODWORD(v56) = v65;
          if (!v520)
          {
            OUTLINED_FUNCTION_42_16();
            v521 = test_string_s();
            LODWORD(v56) = v65;
            if (!v521)
            {
              goto LABEL_138;
            }
          }

          continue;
        case 24:
LABEL_138:
          v522 = OUTLINED_FUNCTION_13_35();
          v526 = test_synch(v522, v523, v524, v525);
          LODWORD(v56) = v65;
          if (!v526)
          {
            goto LABEL_139;
          }

          continue;
        case 25:
LABEL_139:
          v527 = OUTLINED_FUNCTION_38_18();
          v529 = chstream(v527, v528, 4u);
          LODWORD(v56) = v65;
          if (!v529)
          {
            goto LABEL_140;
          }

          continue;
        case 26:
LABEL_38:
          v161 = OUTLINED_FUNCTION_38_18();
          starttest(v161, v162);
          v163 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v163, v164, v165))
          {
            goto LABEL_39;
          }

LABEL_140:
          v407 = OUTLINED_FUNCTION_10_36();
          v530 = 33;
          goto LABEL_337;
        case 27:
          v948 = OUTLINED_FUNCTION_10_36();
          v951 = testFldeq(v948, v949, v950, 8);
          LODWORD(v56) = v65;
          if (v951)
          {
            continue;
          }

          v952 = OUTLINED_FUNCTION_4_38();
          v956 = testFldeq(v952, v953, v954, v955);
          LODWORD(v56) = v65;
          if (v956)
          {
            continue;
          }

          v959 = advance_tok(v0, v65, v957, v958);
          LODWORD(v56) = v65;
          if (v959)
          {
            continue;
          }

          goto LABEL_329;
        case 28:
LABEL_329:
          v1002 = OUTLINED_FUNCTION_10_36();
          v1005 = testFldeq(v1002, v1003, v1004, 2);
          LODWORD(v56) = v65;
          if (v1005)
          {
            continue;
          }

          v1008 = advance_tok(v0, v65, v1006, v1007);
          LODWORD(v56) = v65;
          if (v1008)
          {
            continue;
          }

          v1009 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v1009, v1010);
LABEL_332:
          v407 = OUTLINED_FUNCTION_10_36();
          v530 = 17;
          goto LABEL_337;
        case 29:
          v941 = OUTLINED_FUNCTION_10_36();
          v944 = testFldeq(v941, v942, v943, 18);
          LODWORD(v56) = v65;
          if (v944)
          {
            continue;
          }

          v947 = advance_tok(v0, v65, v945, v946);
          LODWORD(v56) = v65;
          if (v947)
          {
            continue;
          }

          goto LABEL_332;
        case 30:
          goto LABEL_332;
        case 31:
LABEL_39:
          v166 = OUTLINED_FUNCTION_33_21();
          starttest(v166, v167);
          v168 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v168, v169, v170))
          {
            goto LABEL_40;
          }

          v960 = OUTLINED_FUNCTION_1_40();
          v964 = testFldeq(v960, v961, v962, v963);
          LODWORD(v56) = v65;
          if (v964)
          {
            continue;
          }

          v967 = advance_tok(v0, v65, v965, v966);
          LODWORD(v56) = v65;
          if (v967)
          {
            continue;
          }

          v407 = OUTLINED_FUNCTION_9_36();
          goto LABEL_298;
        case 32:
LABEL_40:
          v171 = OUTLINED_FUNCTION_38_18();
          starttest(v171, v172);
          OUTLINED_FUNCTION_0_41(v173, v174, v175, v176, v177, v178, v179, v180, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172, v1173);
          if (lpta_tstmovel())
          {
            goto LABEL_43;
          }

          v181 = OUTLINED_FUNCTION_42_16();
          setscan_l(v181, v182, v183);
          if (v184)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_42_16();
          if (test_string_s())
          {
            goto LABEL_43;
          }

          goto LABEL_162;
        case 33:
LABEL_43:
          v185 = OUTLINED_FUNCTION_38_18();
          starttest(v185, v186);
          v187 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v187, v188, v189))
          {
            goto LABEL_44;
          }

          v579 = OUTLINED_FUNCTION_4_38();
          v583 = testFldeq(v579, v580, v581, v582);
          LODWORD(v56) = v65;
          if (v583)
          {
            continue;
          }

          v586 = advance_tok(v0, v65, v584, v585);
          LODWORD(v56) = v65;
          if (v586)
          {
            continue;
          }

          v587 = OUTLINED_FUNCTION_10_36();
          v590 = testFldeq(v587, v588, v589, 13);
          LODWORD(v56) = v65;
          if (v590)
          {
            continue;
          }

          v593 = advance_tok(v0, v65, v591, v592);
          LODWORD(v56) = v65;
          if (v593)
          {
            continue;
          }

          v594 = OUTLINED_FUNCTION_10_36();
          v597 = 1;
          goto LABEL_302;
        case 34:
LABEL_162:
          OUTLINED_FUNCTION_61_14(34, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172);
          goto LABEL_163;
        case 35:
LABEL_163:
          v606 = OUTLINED_FUNCTION_13_35();
          v58 = test_synch(v606, v607, v608, v609);
          goto LABEL_339;
        case 36:
LABEL_44:
          v190 = OUTLINED_FUNCTION_38_18();
          starttest(v190, v191);
          v192 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v192, v193, v194))
          {
            goto LABEL_45;
          }

          v598 = OUTLINED_FUNCTION_1_40();
          v602 = testFldeq(v598, v599, v600, v601);
          LODWORD(v56) = v65;
          if (v602)
          {
            continue;
          }

          v605 = advance_tok(v0, v65, v603, v604);
          LODWORD(v56) = v65;
          if (v605)
          {
            continue;
          }

          v407 = OUTLINED_FUNCTION_10_36();
          v530 = 28;
          goto LABEL_337;
        case 37:
LABEL_45:
          v195 = OUTLINED_FUNCTION_38_18();
          starttest(v195, v196);
          v197 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v197, v198, v199))
          {
            goto LABEL_46;
          }

          v610 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v610, v611);
          v612 = OUTLINED_FUNCTION_10_36();
          v615 = 13;
          goto LABEL_292;
        case 38:
LABEL_46:
          v200 = OUTLINED_FUNCTION_38_18();
          starttest(v200, v201);
          v202 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v202, v203, v204))
          {
            goto LABEL_47;
          }

          goto LABEL_335;
        case 39:
          v919 = OUTLINED_FUNCTION_9_36();
          v922 = testFldeq(v919, v920, v921, 7);
          LODWORD(v56) = v65;
          if (v922)
          {
            continue;
          }

          v612 = OUTLINED_FUNCTION_11_36();
          v615 = 12;
LABEL_292:
          v923 = testFldeq(v612, v613, v614, v615);
          v56 = v65;
          if (!v923)
          {
            goto LABEL_293;
          }

          continue;
        case 40:
LABEL_293:
          v924 = advance_tok(v0, v56, v59, v60);
          LODWORD(v56) = v65;
          if (v924)
          {
            continue;
          }

          v925 = OUTLINED_FUNCTION_10_36();
          v928 = testFldeq(v925, v926, v927, 1);
          LODWORD(v56) = v65;
          if (v928)
          {
            continue;
          }

          v931 = advance_tok(v0, v65, v929, v930);
          LODWORD(v56) = v65;
          if (v931)
          {
            continue;
          }

          v932 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v932, v933);
          v407 = OUTLINED_FUNCTION_10_36();
          v530 = 25;
          goto LABEL_337;
        case 41:
          v778 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v778, v779);
          v407 = OUTLINED_FUNCTION_10_36();
          v530 = 13;
          goto LABEL_337;
        case 42:
        case 80:
        case 115:
          goto LABEL_338;
        case 43:
          v934 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v934, v935);
          v407 = OUTLINED_FUNCTION_10_36();
          goto LABEL_298;
        case 44:
          v407 = OUTLINED_FUNCTION_9_36();
          v530 = 5;
          goto LABEL_337;
        case 45:
LABEL_47:
          v205 = OUTLINED_FUNCTION_38_18();
          starttest(v205, v206);
          v207 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v207, v208, v209))
          {
            goto LABEL_48;
          }

          v616 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v616, v617);
          goto LABEL_167;
        case 46:
          v769 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v769, v770);
          v594 = OUTLINED_FUNCTION_10_36();
          v597 = 13;
          goto LABEL_302;
        case 47:
        case 112:
          goto LABEL_336;
        case 48:
          v936 = OUTLINED_FUNCTION_9_36();
          v939 = testFldeq(v936, v937, v938, 7);
          LODWORD(v56) = v65;
          if (v939)
          {
            continue;
          }

          v594 = OUTLINED_FUNCTION_11_36();
          v597 = 12;
          goto LABEL_302;
        case 49:
          goto LABEL_303;
        case 50:
LABEL_48:
          v210 = OUTLINED_FUNCTION_38_18();
          starttest(v210, v211);
          v212 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v212, v213, v214))
          {
            goto LABEL_49;
          }

          goto LABEL_113;
        case 51:
          v97 = OUTLINED_FUNCTION_10_36();
          v100 = testFldeq(v97, v98, v99, 11);
          LODWORD(v56) = v65;
          if (v100)
          {
            continue;
          }

          v103 = advance_tok(v0, v65, v101, v102);
          LODWORD(v56) = v65;
          if (v103)
          {
            continue;
          }

          goto LABEL_28;
        case 52:
          goto LABEL_167;
        case 53:
LABEL_28:
          v104 = OUTLINED_FUNCTION_13_35();
          v107 = chstream(v104, v105, v106);
          LODWORD(v56) = v65;
          if (!v107)
          {
            OUTLINED_FUNCTION_42_16();
            v108 = test_string_s();
            LODWORD(v56) = v65;
            if (!v108)
            {
              goto LABEL_30;
            }
          }

          continue;
        case 54:
LABEL_30:
          v109 = OUTLINED_FUNCTION_38_18();
          v111 = chstream(v109, v110, 4u);
          goto LABEL_31;
        case 55:
LABEL_49:
          v215 = OUTLINED_FUNCTION_38_18();
          starttest(v215, v216);
          v217 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v217, v218, v219))
          {
            goto LABEL_50;
          }

          goto LABEL_126;
        case 56:
LABEL_113:
          OUTLINED_FUNCTION_45_16(56, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v430 = OUTLINED_FUNCTION_1_40();
          v434 = testFldeq(v430, v431, v432, v433);
          LODWORD(v56) = v65;
          if (v434)
          {
            continue;
          }

          v437 = advance_tok(v0, v65, v435, v436);
          LODWORD(v56) = v65;
          if (v437)
          {
            continue;
          }

          v438 = OUTLINED_FUNCTION_15_34();
          v441 = lpta_loadp_setscan_r(v438, v439, v440);
          LODWORD(v56) = v65;
          if (v441)
          {
            continue;
          }

          v442 = OUTLINED_FUNCTION_6_37();
          v446 = testFldeq(v442, v443, v444, v445);
          LODWORD(v56) = v65;
          if (v446)
          {
            continue;
          }

          v449 = advance_tok(v0, v65, v447, v448);
          LODWORD(v56) = v65;
          if (v449)
          {
            continue;
          }

          v450 = OUTLINED_FUNCTION_9_36();
          v453 = testFldeq(v450, v451, v452, 4);
          LODWORD(v56) = v65;
          if (v453)
          {
            continue;
          }

          v111 = advance_tok(v0, v65, v454, v455);
LABEL_31:
          LODWORD(v56) = v65;
          if (v111)
          {
            continue;
          }

LABEL_167:
          v407 = OUTLINED_FUNCTION_10_36();
          v530 = 3;
          goto LABEL_337;
        case 57:
LABEL_50:
          v220 = OUTLINED_FUNCTION_38_18();
          starttest(v220, v221);
          v222 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v222, v223, v224))
          {
            goto LABEL_51;
          }

          v618 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v618, v619);
          goto LABEL_169;
        case 58:
LABEL_126:
          OUTLINED_FUNCTION_45_16(58, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v478 = OUTLINED_FUNCTION_1_40();
          v482 = testFldeq(v478, v479, v480, v481);
          LODWORD(v56) = v65;
          if (!v482)
          {
            v485 = advance_tok(v0, v65, v483, v484);
            LODWORD(v56) = v65;
            if (!v485)
            {
              v486 = OUTLINED_FUNCTION_8_37();
              v490 = testFldeq(v486, v487, v488, v489);
              LODWORD(v56) = v65;
              if (!v490)
              {
                v493 = advance_tok(v0, v65, v491, v492);
                LODWORD(v56) = v65;
                if (!v493)
                {
                  v494 = OUTLINED_FUNCTION_15_34();
                  v497 = lpta_loadp_setscan_r(v494, v495, v496);
                  LODWORD(v56) = v65;
                  if (!v497)
                  {
                    goto LABEL_131;
                  }
                }
              }
            }
          }

          continue;
        case 59:
LABEL_131:
          v498 = OUTLINED_FUNCTION_13_35();
          v501 = chstream(v498, v499, v500);
          LODWORD(v56) = v65;
          if (!v501)
          {
            OUTLINED_FUNCTION_35_18();
            v502 = test_string_s();
            LODWORD(v56) = v65;
            if (!v502)
            {
              goto LABEL_133;
            }
          }

          continue;
        case 60:
LABEL_133:
          v503 = OUTLINED_FUNCTION_38_18();
          v505 = chstream(v503, v504, 4u);
          LODWORD(v56) = v65;
          if (v505)
          {
            continue;
          }

          v506 = OUTLINED_FUNCTION_2_39();
          v510 = testFldeq(v506, v507, v508, v509);
          LODWORD(v56) = v65;
          if (v510)
          {
            continue;
          }

          v511 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v511, v512);
          v513 = OUTLINED_FUNCTION_11_36();
          v516 = 4;
LABEL_251:
          v816 = testFldeq(v513, v514, v515, v516);
          v56 = v65;
          if (v816)
          {
            continue;
          }

LABEL_252:
          v817 = advance_tok(v0, v56, v59, v60);
          LODWORD(v56) = v65;
          if (v817)
          {
            continue;
          }

LABEL_348:
          v1032 = 63;
          goto LABEL_351;
        case 61:
          v513 = OUTLINED_FUNCTION_10_36();
          v516 = 3;
          goto LABEL_251;
        case 62:
          goto LABEL_252;
        case 63:
          goto LABEL_348;
        case 64:
LABEL_51:
          v225 = OUTLINED_FUNCTION_38_18();
          starttest(v225, v226);
          v227 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v227, v228, v229))
          {
            goto LABEL_52;
          }

          v626 = OUTLINED_FUNCTION_11_36();
          v629 = testFldeq(v626, v627, v628, 6);
          LODWORD(v56) = v65;
          if (!v629)
          {
            v632 = advance_tok(v0, v65, v630, v631);
            LODWORD(v56) = v65;
            if (!v632)
            {
              v633 = OUTLINED_FUNCTION_38_18();
              bspush_ca_scan(v633, v634);
              v635 = OUTLINED_FUNCTION_4_38();
              v639 = testFldeq(v635, v636, v637, v638);
              LODWORD(v56) = v65;
              if (!v639)
              {
                v642 = advance_tok(v0, v65, v640, v641);
                LODWORD(v56) = v65;
                if (!v642)
                {
                  goto LABEL_174;
                }
              }
            }
          }

          continue;
        case 65:
          v80 = OUTLINED_FUNCTION_10_36();
          v83 = testFldeq(v80, v81, v82, 13);
          LODWORD(v56) = v65;
          if (v83)
          {
            continue;
          }

          v86 = advance_tok(v0, v65, v84, v85);
          LODWORD(v56) = v65;
          if (v86)
          {
            continue;
          }

          v87 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v87, v88);
          goto LABEL_287;
        case 66:
          goto LABEL_169;
        case 67:
          v904 = OUTLINED_FUNCTION_10_36();
          v907 = testFldeq(v904, v905, v906, 28);
          LODWORD(v56) = v65;
          if (v907)
          {
            continue;
          }

          v910 = advance_tok(v0, v65, v908, v909);
          LODWORD(v56) = v65;
          if (v910)
          {
            continue;
          }

          goto LABEL_287;
        case 68:
LABEL_287:
          v911 = OUTLINED_FUNCTION_6_37();
          v915 = testFldeq(v911, v912, v913, v914);
          LODWORD(v56) = v65;
          if (v915)
          {
            continue;
          }

          v918 = advance_tok(v0, v65, v916, v917);
          LODWORD(v56) = v65;
          if (v918)
          {
            continue;
          }

LABEL_169:
          v620 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v620, v621);
          v622 = OUTLINED_FUNCTION_1_40();
          goto LABEL_234;
        case 69:
          v780 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v780, v781);
          v622 = OUTLINED_FUNCTION_9_36();
          goto LABEL_233;
        case 70:
          goto LABEL_235;
        case 71:
          v622 = OUTLINED_FUNCTION_11_36();
LABEL_233:
          v625 = 3;
LABEL_234:
          v782 = testFldeq(v622, v623, v624, v625);
          v56 = v65;
          if (v782)
          {
            continue;
          }

LABEL_235:
          v783 = advance_tok(v0, v56, v59, v60);
          LODWORD(v56) = v65;
          if (v783)
          {
            continue;
          }

          v407 = OUTLINED_FUNCTION_11_36();
LABEL_298:
          v530 = 6;
          goto LABEL_337;
        case 72:
LABEL_52:
          v230 = OUTLINED_FUNCTION_38_18();
          starttest(v230, v231);
          v232 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v232, v233, v234))
          {
            goto LABEL_53;
          }

          v643 = OUTLINED_FUNCTION_11_36();
          v646 = testFldeq(v643, v644, v645, 6);
          LODWORD(v56) = v65;
          if (!v646)
          {
            v649 = advance_tok(v0, v65, v647, v648);
            LODWORD(v56) = v65;
            if (!v649)
            {
              v650 = OUTLINED_FUNCTION_38_18();
              bspush_ca_scan(v650, v651);
              v652 = OUTLINED_FUNCTION_3_39();
              v656 = testFldeq(v652, v653, v654, v655);
              LODWORD(v56) = v65;
              if (!v656)
              {
                v659 = advance_tok(v0, v65, v657, v658);
                LODWORD(v56) = v65;
                if (!v659)
                {
                  goto LABEL_180;
                }
              }
            }
          }

          continue;
        case 73:
LABEL_174:
          v407 = OUTLINED_FUNCTION_9_36();
          goto LABEL_175;
        case 74:
LABEL_53:
          v235 = OUTLINED_FUNCTION_38_18();
          starttest(v235, v236);
          v237 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v237, v238, v239))
          {
            goto LABEL_54;
          }

          v661 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v661, v662);
          goto LABEL_182;
        case 75:
LABEL_180:
          v660 = 75;
          goto LABEL_321;
        case 76:
LABEL_54:
          v240 = OUTLINED_FUNCTION_38_18();
          starttest(v240, v241);
          v242 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v242, v243, v244))
          {
            goto LABEL_55;
          }

          v669 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v669, v670);
          v671 = OUTLINED_FUNCTION_3_39();
          goto LABEL_211;
        case 77:
          v89 = OUTLINED_FUNCTION_3_39();
          v93 = testFldeq(v89, v90, v91, v92);
          LODWORD(v56) = v65;
          if (v93)
          {
            continue;
          }

          v96 = advance_tok(v0, v65, v94, v95);
          LODWORD(v56) = v65;
          if (v96)
          {
            continue;
          }

          goto LABEL_182;
        case 78:
LABEL_182:
          v663 = OUTLINED_FUNCTION_9_36();
          v666 = testFldeq(v663, v664, v665, 4);
          LODWORD(v56) = v65;
          if (v666)
          {
            continue;
          }

          v667 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v667, v668);
          v407 = OUTLINED_FUNCTION_11_36();
          v530 = 9;
          goto LABEL_337;
        case 79:
          v407 = OUTLINED_FUNCTION_10_36();
          v530 = 24;
          goto LABEL_337;
        case 81:
LABEL_55:
          v245 = OUTLINED_FUNCTION_38_18();
          starttest(v245, v246);
          v247 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v247, v248, v249))
          {
            goto LABEL_56;
          }

          v675 = OUTLINED_FUNCTION_11_36();
          v678 = testFldeq(v675, v676, v677, 3);
          LODWORD(v56) = v65;
          if (v678)
          {
            continue;
          }

          OUTLINED_FUNCTION_38_18();
          bspush_ca_scan_boa();
          v679 = OUTLINED_FUNCTION_37_18();
          v681 = 5;
          v682 = 2;
          goto LABEL_268;
        case 82:
          v671 = OUTLINED_FUNCTION_9_36();
          v674 = 7;
LABEL_211:
          v745 = testFldeq(v671, v672, v673, v674);
          v56 = v65;
          if (!v745)
          {
            goto LABEL_212;
          }

          continue;
        case 83:
LABEL_212:
          v746 = advance_tok(v0, v56, v59, v60);
          LODWORD(v56) = v65;
          if (!v746)
          {
            goto LABEL_213;
          }

          continue;
        case 84:
LABEL_213:
          OUTLINED_FUNCTION_86_10(84, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172);
          v747 = OUTLINED_FUNCTION_38_18();
          starttest(v747, v748);
          v749 = OUTLINED_FUNCTION_22_27();
          if (lpta_loadp_setscan_l(v749, v750, v751))
          {
            goto LABEL_322;
          }

          v752 = OUTLINED_FUNCTION_10_36();
          v755 = testFldeq(v752, v753, v754, 18);
          LODWORD(v56) = v65;
          if (!v755)
          {
            v758 = advance_tok(v0, v65, v756, v757);
            LODWORD(v56) = v65;
            if (!v758)
            {
              goto LABEL_3;
            }
          }

          continue;
        case 85:
        case 119:
        case 154:
          goto LABEL_323;
        case 87:
LABEL_56:
          v250 = OUTLINED_FUNCTION_38_18();
          starttest(v250, v251);
          v252 = OUTLINED_FUNCTION_44_16();
          if (lpta_loadp_setscan_l(v252, v253, v254))
          {
            goto LABEL_57;
          }

          v683 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v683, v684);
          goto LABEL_244;
        case 88:
          bspop_boa(v0);
          v821 = advance_tok(v0, v818, v819, v820);
          LODWORD(v56) = v65;
          if (v821)
          {
            continue;
          }

          goto LABEL_255;
        case 89:
LABEL_255:
          OUTLINED_FUNCTION_86_10(89, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172);
          v822 = OUTLINED_FUNCTION_38_18();
          starttest(v822, v823);
          v824 = OUTLINED_FUNCTION_22_27();
          if (lpta_loadp_setscan_l(v824, v825, v826))
          {
            goto LABEL_256;
          }

          v1018 = OUTLINED_FUNCTION_1_40();
          v1022 = testFldeq(v1018, v1019, v1020, v1021);
          LODWORD(v56) = v65;
          if (v1022)
          {
            continue;
          }

          v407 = OUTLINED_FUNCTION_37_18();
          v409 = 5;
          goto LABEL_175;
        case 90:
LABEL_256:
          v827 = OUTLINED_FUNCTION_38_18();
          starttest(v827, v828);
          v829 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v829, v830, v831))
          {
            goto LABEL_264;
          }

          v832 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v832, v833);
          v834 = OUTLINED_FUNCTION_9_36();
          v837 = testFldeq(v834, v835, v836, 4);
          LODWORD(v56) = v65;
          if (v837)
          {
            continue;
          }

          v838 = OUTLINED_FUNCTION_10_36();
          v841 = testFldeq(v838, v839, v840, 12);
          LODWORD(v56) = v65;
          if (v841)
          {
            continue;
          }

          v844 = advance_tok(v0, v65, v842, v843);
          LODWORD(v56) = v65;
          if (v844)
          {
            continue;
          }

LABEL_260:
          v845 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v845, v846);
          v847 = OUTLINED_FUNCTION_10_36();
          v850 = testFldeq(v847, v848, v849, 18);
          LODWORD(v56) = v65;
          if (v850)
          {
            continue;
          }

          v853 = advance_tok(v0, v65, v851, v852);
          LODWORD(v56) = v65;
          if (v853)
          {
            continue;
          }

LABEL_262:
          v333 = 94;
          goto LABEL_263;
        case 92:
          goto LABEL_264;
        case 93:
          goto LABEL_260;
        case 94:
          goto LABEL_262;
        case 95:
LABEL_57:
          v255 = OUTLINED_FUNCTION_38_18();
          starttest(v255, v256);
          v257 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v257, v258, v259))
          {
            goto LABEL_58;
          }

          v685 = OUTLINED_FUNCTION_10_36();
          v688 = testFldeq(v685, v686, v687, 13);
          LODWORD(v56) = v65;
          if (!v688)
          {
            v691 = advance_tok(v0, v65, v689, v690);
            LODWORD(v56) = v65;
            if (!v691)
            {
              goto LABEL_190;
            }
          }

          continue;
        case 96:
          OUTLINED_FUNCTION_42_16();
          v794 = test_string_s();
          LODWORD(v56) = v65;
          if (v794)
          {
            continue;
          }

          goto LABEL_244;
        case 97:
LABEL_244:
          OUTLINED_FUNCTION_28_24();
          v795 = test_string_s();
          LODWORD(v56) = v65;
          if (v795)
          {
            continue;
          }

          v796 = OUTLINED_FUNCTION_12_36();
          v799 = lpta_loadp_setscan_l(v796, v797, v798);
          LODWORD(v56) = v65;
          if (v799)
          {
            continue;
          }

          v800 = OUTLINED_FUNCTION_1_40();
          v804 = testFldeq(v800, v801, v802, v803);
          LODWORD(v56) = v65;
          if (v804)
          {
            continue;
          }

          v807 = advance_tok(v0, v65, v805, v806);
          LODWORD(v56) = v65;
          if (v807)
          {
            continue;
          }

          v808 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v808, v809);
LABEL_249:
          v810 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v810, v811);
          v812 = OUTLINED_FUNCTION_8_37();
LABEL_266:
          v854 = testFldeq(v812, v813, v814, v815);
          LODWORD(v56) = v65;
          if (!v854)
          {
LABEL_267:
            OUTLINED_FUNCTION_38_18();
            bspush_ca_scan_boa();
            v679 = OUTLINED_FUNCTION_10_36();
            v682 = 21;
LABEL_268:
            v67 = testFldeq(v679, v680, v681, v682);
LABEL_269:
            if (v67)
            {
              LODWORD(v56) = v65;
            }

            else
            {
              LODWORD(v56) = 1;
            }
          }

          continue;
        case 98:
          v760 = OUTLINED_FUNCTION_10_36();
          v763 = testFldeq(v760, v761, v762, 32);
          LODWORD(v56) = v65;
          if (v763)
          {
            continue;
          }

          v766 = advance_tok(v0, v65, v764, v765);
          LODWORD(v56) = v65;
          if (v766)
          {
            continue;
          }

          goto LABEL_249;
        case 99:
          goto LABEL_249;
        case 100:
          v812 = OUTLINED_FUNCTION_3_39();
          goto LABEL_266;
        case 101:
          goto LABEL_267;
        case 102:
          bspop_boa(v0);
          v793 = advance_tok(v0, v790, v791, v792);
          LODWORD(v56) = v65;
          if (v793)
          {
            continue;
          }

          goto LABEL_242;
        case 103:
LABEL_242:
          v660 = 103;
          goto LABEL_321;
        case 104:
LABEL_58:
          v260 = OUTLINED_FUNCTION_38_18();
          starttest(v260, v261);
          v262 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v262, v263, v264) || advance_tok(v0, v265, v266, v267))
          {
            goto LABEL_60;
          }

          v1023 = OUTLINED_FUNCTION_10_36();
          v1026 = testFldeq(v1023, v1024, v1025, 1);
          LODWORD(v56) = v65;
          if (v1026)
          {
            continue;
          }

          v1029 = advance_tok(v0, v65, v1027, v1028);
          LODWORD(v56) = v65;
          if (v1029)
          {
            continue;
          }

          v1030 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v1030, v1031);
          v784 = OUTLINED_FUNCTION_10_36();
          v787 = 13;
          goto LABEL_238;
        case 105:
LABEL_190:
          OUTLINED_FUNCTION_86_10(105, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172);
          v692 = OUTLINED_FUNCTION_46_16();
          if (lpta_loadp_setscan_l(v692, v693, 1))
          {
            goto LABEL_192;
          }

          OUTLINED_FUNCTION_42_16();
          v58 = test_string_s();
          if (v58)
          {
            goto LABEL_192;
          }

          goto LABEL_353;
        case 106:
LABEL_192:
          v694 = OUTLINED_FUNCTION_38_18();
          starttest(v694, v695);
          v696 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v696, v697, v698))
          {
            goto LABEL_193;
          }

          v1013 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v1013, v1014);
          goto LABEL_335;
        case 108:
LABEL_193:
          v699 = OUTLINED_FUNCTION_38_18();
          starttest(v699, v700);
          v701 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v701, v702, v703))
          {
            goto LABEL_194;
          }

          v1011 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v1011, v1012);
          v407 = OUTLINED_FUNCTION_10_36();
          v530 = 21;
          goto LABEL_337;
        case 109:
          v738 = OUTLINED_FUNCTION_10_36();
          v741 = testFldeq(v738, v739, v740, 28);
          LODWORD(v56) = v65;
          if (v741)
          {
            continue;
          }

          v744 = advance_tok(v0, v65, v742, v743);
          LODWORD(v56) = v65;
          if (v744)
          {
            continue;
          }

          goto LABEL_335;
        case 110:
LABEL_335:
          v1015 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v1015, v1016);
          goto LABEL_336;
        case 111:
          v594 = OUTLINED_FUNCTION_3_39();
LABEL_302:
          v940 = testFldeq(v594, v595, v596, v597);
          v56 = v65;
          if (v940)
          {
            continue;
          }

LABEL_303:
          v550 = advance_tok(v0, v56, v59, v60);
          goto LABEL_304;
        case 113:
LABEL_194:
          v704 = OUTLINED_FUNCTION_38_18();
          starttest(v704, v705);
          v706 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v706, v707, v708))
          {
            goto LABEL_195;
          }

          v968 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v968, v969);
          v970 = OUTLINED_FUNCTION_10_36();
          v973 = testFldeq(v970, v971, v972, 28);
          LODWORD(v56) = v65;
          if (!v973)
          {
            v976 = advance_tok(v0, v65, v974, v975);
            LODWORD(v56) = v65;
            if (!v976)
            {
              goto LABEL_318;
            }
          }

          continue;
        case 114:
          v407 = OUTLINED_FUNCTION_10_36();
          v530 = 23;
          goto LABEL_337;
        case 116:
LABEL_195:
          v709 = OUTLINED_FUNCTION_38_18();
          starttest(v709, v710);
          v711 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v711, v712, v713))
          {
            goto LABEL_322;
          }

          v714 = OUTLINED_FUNCTION_11_36();
          v717 = testFldeq(v714, v715, v716, 1);
          LODWORD(v56) = v65;
          if (v717)
          {
            continue;
          }

          v720 = advance_tok(v0, v65, v718, v719);
          LODWORD(v56) = v65;
          if (v720)
          {
            continue;
          }

          v721 = OUTLINED_FUNCTION_38_18();
          starttest(v721, v722);
          v723 = OUTLINED_FUNCTION_20_29();
          v58 = lpta_loadp_setscan_r(v723, v724, v725);
          if (v58)
          {
            goto LABEL_353;
          }

          v726 = OUTLINED_FUNCTION_11_36();
          v729 = testFldeq(v726, v727, v728, 4);
          LODWORD(v56) = v65;
          if (v729)
          {
            continue;
          }

          v732 = advance_tok(v0, v65, v730, v731);
          LODWORD(v56) = v65;
          if (v732)
          {
            continue;
          }

LABEL_350:
          v1032 = 121;
LABEL_351:
          v1033 = v1032;
          v1034 = v1171;
          goto LABEL_352;
        case 117:
LABEL_318:
          v977 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v977, v978);
          v979 = OUTLINED_FUNCTION_3_39();
          v983 = testFldeq(v979, v980, v981, v982);
          LODWORD(v56) = v65;
          if (!v983)
          {
            v986 = advance_tok(v0, v65, v984, v985);
            LODWORD(v56) = v65;
            if (!v986)
            {
              goto LABEL_320;
            }
          }

          continue;
        case 118:
LABEL_320:
          v660 = 118;
LABEL_321:
          OUTLINED_FUNCTION_61_14(v660, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172);
          goto LABEL_322;
        case 121:
          goto LABEL_350;
        case 122:
LABEL_60:
          v268 = OUTLINED_FUNCTION_38_18();
          starttest(v268, v269);
          v270 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v270, v271, v272))
          {
            goto LABEL_61;
          }

          goto LABEL_79;
        case 123:
          v784 = OUTLINED_FUNCTION_10_36();
          v787 = 11;
LABEL_238:
          v788 = testFldeq(v784, v785, v786, v787);
          v56 = v65;
          if (!v788)
          {
            goto LABEL_239;
          }

          continue;
        case 124:
LABEL_239:
          v789 = advance_tok(v0, v56, v59, v60);
          LODWORD(v56) = v65;
          if (!v789)
          {
            goto LABEL_349;
          }

          continue;
        case 125:
LABEL_349:
          v1033 = 125;
          v1034 = &v1172;
LABEL_352:
          savescptr(v0, v1033, v1034);
          goto LABEL_353;
        case 126:
LABEL_61:
          v273 = OUTLINED_FUNCTION_38_18();
          starttest(v273, v274);
          v275 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v275, v276, v277))
          {
            goto LABEL_62;
          }

          goto LABEL_91;
        case 127:
LABEL_79:
          OUTLINED_FUNCTION_45_16(127, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v334 = advanc(v0);
          LODWORD(v56) = v65;
          if (!v334)
          {
            goto LABEL_80;
          }

          continue;
        case 128:
LABEL_80:
          v335 = OUTLINED_FUNCTION_13_35();
          v338 = chstream(v335, v336, v337);
          LODWORD(v56) = v65;
          if (v338)
          {
            continue;
          }

          OUTLINED_FUNCTION_28_24();
          v339 = test_string_s();
          LODWORD(v56) = v65;
          if (v339)
          {
            continue;
          }

          v340 = OUTLINED_FUNCTION_15_34();
          v343 = lpta_loadp_setscan_r(v340, v341, v342);
          LODWORD(v56) = v65;
          if (v343)
          {
            continue;
          }

          v344 = OUTLINED_FUNCTION_6_37();
          v348 = testFldeq(v344, v345, v346, v347);
          LODWORD(v56) = v65;
          if (v348)
          {
            continue;
          }

          v351 = advance_tok(v0, v65, v349, v350);
          LODWORD(v56) = v65;
          if (v351)
          {
            continue;
          }

          v352 = OUTLINED_FUNCTION_38_18();
          starttest(v352, v353);
          v354 = OUTLINED_FUNCTION_12_36();
          v58 = lpta_loadp_setscan_l(v354, v355, v356);
          if (v58)
          {
            goto LABEL_353;
          }

          v58 = advance_tok(v0, v56, v59, v60);
          if (v58)
          {
            goto LABEL_353;
          }

          v357 = OUTLINED_FUNCTION_2_39();
          v361 = testFldeq(v357, v358, v359, v360);
          LODWORD(v56) = v65;
          if (!v361)
          {
            v362 = OUTLINED_FUNCTION_11_36();
            v365 = testFldeq(v362, v363, v364, 4);
            LODWORD(v56) = v65;
            if (!v365)
            {
              v368 = advance_tok(v0, v65, v366, v367);
              LODWORD(v56) = v65;
              if (!v368)
              {
                goto LABEL_322;
              }
            }
          }

          continue;
        case 131:
LABEL_62:
          v278 = OUTLINED_FUNCTION_38_18();
          starttest(v278, v279);
          v280 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v280, v281, v282))
          {
            goto LABEL_63;
          }

          goto LABEL_94;
        case 132:
LABEL_91:
          OUTLINED_FUNCTION_45_16(132, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v369 = advanc(v0);
          LODWORD(v56) = v65;
          if (!v369)
          {
            goto LABEL_92;
          }

          continue;
        case 133:
LABEL_92:
          v370 = OUTLINED_FUNCTION_13_35();
          v373 = chstream(v370, v371, v372);
          LODWORD(v56) = v65;
          if (v373)
          {
            continue;
          }

          v374 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v374, v375);
          OUTLINED_FUNCTION_28_24();
          goto LABEL_228;
        case 134:
          v767 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v767, v768);
          OUTLINED_FUNCTION_42_16();
          goto LABEL_228;
        case 135:
          goto LABEL_229;
        case 136:
          OUTLINED_FUNCTION_42_16();
          goto LABEL_228;
        case 137:
LABEL_63:
          v283 = OUTLINED_FUNCTION_38_18();
          starttest(v283, v284);
          v285 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v285, v286, v287))
          {
            goto LABEL_64;
          }

          goto LABEL_97;
        case 138:
LABEL_94:
          OUTLINED_FUNCTION_45_16(138, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v376 = advanc(v0);
          LODWORD(v56) = v65;
          if (!v376)
          {
            goto LABEL_95;
          }

          continue;
        case 139:
LABEL_95:
          v377 = OUTLINED_FUNCTION_13_35();
          v380 = chstream(v377, v378, v379);
          LODWORD(v56) = v65;
          if (v380)
          {
            continue;
          }

          v381 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v381, v382);
LABEL_226:
          v772 = OUTLINED_FUNCTION_38_18();
          bspush_ca_scan(v772, v773);
LABEL_227:
          OUTLINED_FUNCTION_35_18();
LABEL_228:
          v774 = test_string_s();
          LODWORD(v56) = v65;
          if (v774)
          {
            continue;
          }

LABEL_229:
          v775 = OUTLINED_FUNCTION_15_34();
          v550 = lpta_loadp_setscan_r(v775, v776, v777);
LABEL_304:
          LODWORD(v56) = v65;
          if (v550)
          {
            continue;
          }

LABEL_336:
          v407 = OUTLINED_FUNCTION_6_37();
LABEL_337:
          v1017 = testFldeq(v407, v408, v409, v530);
          v56 = v65;
          if (v1017)
          {
            continue;
          }

LABEL_338:
          v58 = advance_tok(v0, v56, v59, v60);
LABEL_339:
          v56 = v65;
          if (!v58)
          {
            goto LABEL_353;
          }

          continue;
        case 140:
          OUTLINED_FUNCTION_42_16();
          v771 = test_string_s();
          LODWORD(v56) = v65;
          if (v771)
          {
            continue;
          }

          goto LABEL_226;
        case 141:
          goto LABEL_226;
        case 142:
          OUTLINED_FUNCTION_17_34();
          v759 = test_string_s();
          LODWORD(v56) = v65;
          if (v759)
          {
            continue;
          }

          goto LABEL_227;
        case 143:
          goto LABEL_227;
        case 144:
LABEL_64:
          v288 = OUTLINED_FUNCTION_38_18();
          starttest(v288, v289);
          v290 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_r(v290, v291, v292))
          {
            goto LABEL_65;
          }

          goto LABEL_104;
        case 145:
LABEL_97:
          OUTLINED_FUNCTION_45_16(145, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v383 = OUTLINED_FUNCTION_1_40();
          v387 = testFldeq(v383, v384, v385, v386);
          LODWORD(v56) = v65;
          if (v387)
          {
            continue;
          }

          v388 = OUTLINED_FUNCTION_10_36();
          v391 = testFldeq(v388, v389, v390, 6);
          LODWORD(v56) = v65;
          if (v391)
          {
            continue;
          }

          v394 = advance_tok(v0, v65, v392, v393);
          LODWORD(v56) = v65;
          if (v394)
          {
            continue;
          }

          v395 = OUTLINED_FUNCTION_15_34();
          v398 = lpta_loadp_setscan_r(v395, v396, v397);
          LODWORD(v56) = v65;
          if (v398)
          {
            continue;
          }

          v399 = OUTLINED_FUNCTION_6_37();
          v403 = testFldeq(v399, v400, v401, v402);
          LODWORD(v56) = v65;
          if (v403)
          {
            continue;
          }

          v406 = advance_tok(v0, v65, v404, v405);
          LODWORD(v56) = v65;
          if (v406)
          {
            continue;
          }

          v407 = OUTLINED_FUNCTION_10_36();
LABEL_175:
          v530 = 1;
          goto LABEL_337;
        case 146:
LABEL_65:
          v293 = OUTLINED_FUNCTION_38_18();
          starttest(v293, v294);
          v295 = OUTLINED_FUNCTION_12_36();
          if (lpta_loadp_setscan_l(v295, v296, v297))
          {
            goto LABEL_66;
          }

          goto LABEL_120;
        case 147:
LABEL_104:
          OUTLINED_FUNCTION_45_16(147, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v410 = OUTLINED_FUNCTION_6_37();
          v414 = testFldeq(v410, v411, v412, v413);
          LODWORD(v56) = v65;
          if (!v414)
          {
            v417 = advance_tok(v0, v65, v415, v416);
            LODWORD(v56) = v65;
            if (!v417)
            {
              v418 = OUTLINED_FUNCTION_15_34();
              v421 = lpta_loadp_setscan_l(v418, v419, v420);
              LODWORD(v56) = v65;
              if (!v421)
              {
                v422 = advanc(v0);
                LODWORD(v56) = v65;
                if (!v422)
                {
                  goto LABEL_108;
                }
              }
            }
          }

          continue;
        case 148:
LABEL_108:
          savescptr(v0, 148, (v0 + 219));
          v426 = advance_tok(v0, v423, v424, v425);
          LODWORD(v56) = v65;
          if (!v426)
          {
            goto LABEL_109;
          }

          continue;
        case 149:
LABEL_109:
          savescptr(v0, 149, (v0 + 217));
          goto LABEL_110;
        case 150:
LABEL_110:
          OUTLINED_FUNCTION_61_14(150, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172);
          lpta_rpta_loadp(v0, (v0 + 217), (v0 + 219));
          v427 = OUTLINED_FUNCTION_42_16();
          v429 = setd_lookup(v427, v428, 168);
          goto LABEL_111;
        case 151:
LABEL_66:
          v298 = OUTLINED_FUNCTION_38_18();
          starttest(v298, v299);
          v300 = OUTLINED_FUNCTION_12_36();
          if (!lpta_loadp_setscan_r(v300, v301, v302))
          {
            goto LABEL_67;
          }

LABEL_322:
          v66 = 3;
          goto LABEL_323;
        case 152:
LABEL_120:
          OUTLINED_FUNCTION_45_16(152, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v456 = OUTLINED_FUNCTION_10_36();
          v459 = testFldeq(v456, v457, v458, 1);
          LODWORD(v56) = v65;
          if (!v459)
          {
            v460 = OUTLINED_FUNCTION_11_36();
            v463 = testFldeq(v460, v461, v462, 4);
            LODWORD(v56) = v65;
            if (!v463)
            {
              v466 = advance_tok(v0, v65, v464, v465);
              LODWORD(v56) = v65;
              if (!v466)
              {
                goto LABEL_123;
              }
            }
          }

          continue;
        case 153:
LABEL_123:
          OUTLINED_FUNCTION_61_14(153, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172);
          v467 = OUTLINED_FUNCTION_15_34();
          v470 = lpta_loadp_setscan_r(v467, v468, v469);
          LODWORD(v56) = v65;
          if (!v470)
          {
            v471 = OUTLINED_FUNCTION_6_37();
            v475 = testFldeq(v471, v472, v473, v474);
            LODWORD(v56) = v65;
            if (!v475)
            {
              v429 = advance_tok(v0, v65, v476, v477);
LABEL_111:
              LODWORD(v56) = v65;
              if (!v429)
              {
                goto LABEL_264;
              }
            }
          }

          continue;
        case 155:
LABEL_67:
          OUTLINED_FUNCTION_45_16(155, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160);
          v303 = OUTLINED_FUNCTION_6_37();
          v307 = testFldeq(v303, v304, v305, v306);
          LODWORD(v56) = v65;
          if (!v307)
          {
            v310 = advance_tok(v0, v65, v308, v309);
            LODWORD(v56) = v65;
            if (!v310)
            {
              v311 = OUTLINED_FUNCTION_15_34();
              v314 = lpta_loadp_setscan_l(v311, v312, v313);
              LODWORD(v56) = v65;
              if (!v314)
              {
                v315 = advanc(v0);
                LODWORD(v56) = v65;
                if (!v315)
                {
                  goto LABEL_71;
                }
              }
            }
          }

          continue;
        case 156:
LABEL_71:
          v316 = OUTLINED_FUNCTION_13_35();
          v319 = chstream(v316, v317, v318);
          LODWORD(v56) = v65;
          if (!v319)
          {
            OUTLINED_FUNCTION_28_24();
            v320 = test_string_s();
            LODWORD(v56) = v65;
            if (!v320)
            {
              goto LABEL_73;
            }
          }

          continue;
        case 157:
LABEL_73:
          v321 = OUTLINED_FUNCTION_38_18();
          v323 = chstream(v321, v322, 4u);
          LODWORD(v56) = v65;
          if (!v323)
          {
            v324 = advanc(v0);
            LODWORD(v56) = v65;
            if (!v324)
            {
              goto LABEL_75;
            }
          }

          continue;
        case 158:
LABEL_75:
          v325 = OUTLINED_FUNCTION_13_35();
          v328 = chstream(v325, v326, v327);
          LODWORD(v56) = v65;
          if (!v328)
          {
            OUTLINED_FUNCTION_17_34();
            v329 = test_string_s();
            LODWORD(v56) = v65;
            if (!v329)
            {
              goto LABEL_77;
            }
          }

          continue;
        case 159:
LABEL_77:
          v330 = OUTLINED_FUNCTION_38_18();
          v332 = chstream(v330, v331, 4u);
          LODWORD(v56) = v65;
          if (!v332)
          {
            goto LABEL_78;
          }

          continue;
        case 160:
LABEL_78:
          v333 = 160;
LABEL_263:
          OUTLINED_FUNCTION_61_14(v333, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0], v1171[1], v1172);
LABEL_264:
          v66 = 2;
LABEL_323:
          HIWORD(v1170) = v66;
LABEL_324:
          v987 = OUTLINED_FUNCTION_38_18();
          starttest(v987, v988);
          v989 = OUTLINED_FUNCTION_20_29();
          v58 = lpta_loadp_setscan_r(v989, v990, v991);
          if (v58)
          {
LABEL_353:
            OUTLINED_FUNCTION_50_16(v58, v56, v59, v60, v61, v62, v63, v64, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, SWORD2(v1170), SHIWORD(v1170), v1171[0], v1171[1], v1172, v1173);
            goto LABEL_354;
          }

          v992 = OUTLINED_FUNCTION_8_37();
          v996 = testFldeq(v992, v993, v994, v995);
          LODWORD(v56) = v65;
          if (v996)
          {
            continue;
          }

          v999 = advance_tok(v0, v65, v997, v998);
          LODWORD(v56) = v65;
          if (v999)
          {
            continue;
          }

LABEL_346:
          OUTLINED_FUNCTION_79_12(162, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, v1171[0]);
          v1035 = 2;
LABEL_347:
          OUTLINED_FUNCTION_50_16(v897, v56, v898, v899, v900, v901, v902, v903, v1040, v1045, v1050, v1055, v1060, v1065, v1070, v1075, v1080, v1085, v1090, v1095, v1100, v1105, v1110, v1115, v1120, v1125, v1130, v1135, v1140, v1145, v1150, v1155, v1160, v1165, v1170, SWORD2(v1170), v1035, v1171[0], v1171[1], v1172, v1173);
LABEL_354:
          vretproc(v0);
          result = 0;
          break;
        case 162:
          goto LABEL_346;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

uint64_t subj_pro()
{
  OUTLINED_FUNCTION_16_34();
  v212 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_29(v2, v3, v4, v5, v6, v7, v8, v9, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v205, SHIDWORD(v205), v207, v208, v209, v210);
  OUTLINED_FUNCTION_52_15();
  bzero(v211, v10);
  if (setjmp(v211))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_25_27();
  if (ventproc(v0, v11, v12, v13, v14, v211))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_43_16();
  v16 = OUTLINED_FUNCTION_49_16();
  OUTLINED_FUNCTION_82_11(v16, v17);
  OUTLINED_FUNCTION_55_15(v18, v19, v20, v21, v22, v23, v24, v25, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, *v206, v206[4]);
  v26 = OUTLINED_FUNCTION_47_16();
  push_ptr_init(v26, v27);
  fence_38(v0, 0, &null_str_15);
  v28 = OUTLINED_FUNCTION_64_13();
  fence_38(v28, v29, v30);
  v31 = OUTLINED_FUNCTION_93_10();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_22_27();
  if (!lpta_loadp_setscan_l(v33, v34, v35))
  {
    v76 = OUTLINED_FUNCTION_27_25();
    bspush_ca_scan(v76, v77);
    goto LABEL_20;
  }

  while (2)
  {
    v36 = OUTLINED_FUNCTION_38_18();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_12_36();
    if (!lpta_loadp_setscan_l(v38, v39, v40))
    {
LABEL_32:
      OUTLINED_FUNCTION_45_16(9, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202);
      v97 = OUTLINED_FUNCTION_30_23();
      bspush_ca_scan(v97, v98);
LABEL_33:
      v99 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v99, v100, v101, 1) || advance_tok(v0, v102, v103, v104))
      {
        goto LABEL_22;
      }

      v105 = OUTLINED_FUNCTION_38_18();
      bspush_ca_scan(v105, v106);
LABEL_36:
      v107 = OUTLINED_FUNCTION_10_36();
      if (testFldeq(v107, v108, v109, 13))
      {
        goto LABEL_22;
      }

      if (advance_tok(v0, v110, v111, v112))
      {
        goto LABEL_22;
      }

      v113 = OUTLINED_FUNCTION_15_34();
      if (lpta_loadp_setscan_r(v113, v114, v115))
      {
        goto LABEL_22;
      }

      v116 = OUTLINED_FUNCTION_11_36();
      if (testFldeq(v116, v117, v118, 9) || advance_tok(v0, v119, v120, v121))
      {
        goto LABEL_22;
      }

LABEL_20:
      v72 = OUTLINED_FUNCTION_9_36();
      v75 = 5;
LABEL_21:
      if (!testFldeq(v72, v73, v74, v75))
      {
LABEL_46:
        if (!advance_tok(v0, v78, v79, v80))
        {
          break;
        }
      }

      goto LABEL_22;
    }

LABEL_6:
    v41 = OUTLINED_FUNCTION_34_19();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_12_36();
    if (lpta_loadp_setscan_r(v43, v44, v45))
    {
LABEL_7:
      v46 = OUTLINED_FUNCTION_21_28();
      if (!lpta_loadp_setscan_r(v46, v47, v48))
      {
        OUTLINED_FUNCTION_17_34();
        if (!test_string_s())
        {
          break;
        }
      }

LABEL_9:
      v49 = OUTLINED_FUNCTION_21_28();
      if (!lpta_loadp_setscan_l(v49, v50, v51))
      {
        OUTLINED_FUNCTION_42_16();
        if (!test_string_s())
        {
          break;
        }
      }

LABEL_11:
      v52 = OUTLINED_FUNCTION_38_18();
      starttest(v52, v53);
      v54 = OUTLINED_FUNCTION_12_36();
      if (lpta_loadp_setscan_r(v54, v55, v56))
      {
        break;
      }

      v57 = OUTLINED_FUNCTION_9_36();
      if (!testFldeq(v57, v58, v59, 4))
      {
        v60 = OUTLINED_FUNCTION_10_36();
        if (!testFldeq(v60, v61, v62, 11) && !advance_tok(v0, v63, v64, v65))
        {
LABEL_15:
          *(v1 + 2) = 3;
          break;
        }
      }

      goto LABEL_22;
    }

    v66 = OUTLINED_FUNCTION_11_36();
    if (!testFldeq(v66, v67, v68, 9) && !advance_tok(v0, v69, v70, v71))
    {
      v72 = OUTLINED_FUNCTION_10_36();
      v75 = 33;
      goto LABEL_21;
    }

LABEL_22:
    v81 = *(v0 + 104);
    if (v81)
    {
      v82 = OUTLINED_FUNCTION_56_14(v81);
    }

    else
    {
      v83 = OUTLINED_FUNCTION_69_13();
      v82 = vback(v83, v84);
    }

    switch(v82)
    {
      case 1:
        continue;
      case 2:
        v122 = OUTLINED_FUNCTION_93_10();
        bspush_ca_scan(v122, v123);
        v72 = OUTLINED_FUNCTION_36_18();
        v75 = 6;
        goto LABEL_21;
      case 3:
        goto LABEL_46;
      case 4:
        v126 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v126, v127);
        v72 = OUTLINED_FUNCTION_3_39();
        goto LABEL_21;
      case 5:
        v124 = OUTLINED_FUNCTION_38_18();
        bspush_ca_scan(v124, v125);
        v72 = OUTLINED_FUNCTION_6_37();
        goto LABEL_21;
      case 6:
        v72 = OUTLINED_FUNCTION_10_36();
        v75 = 34;
        goto LABEL_21;
      case 7:
        goto LABEL_15;
      case 8:
        goto LABEL_6;
      case 9:
        goto LABEL_32;
      case 10:
        v85 = OUTLINED_FUNCTION_10_36();
        if (!testFldeq(v85, v86, v87, 8) && !advance_tok(v0, v88, v89, v90))
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      case 11:
        goto LABEL_33;
      case 12:
        v91 = OUTLINED_FUNCTION_10_36();
        if (!testFldeq(v91, v92, v93, 25) && !advance_tok(v0, v94, v95, v96))
        {
          goto LABEL_36;
        }

        goto LABEL_22;
      case 13:
        goto LABEL_36;
      case 14:
        goto LABEL_7;
      case 15:
        goto LABEL_9;
      case 16:
        goto LABEL_11;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_103_7();
}

void coord_conj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_16_34();
  v156 = *MEMORY[0x277D85DE8];
  v143 = 0;
  v144 = 0;
  v141 = 0;
  v142 = 0;
  HIDWORD(v140) = 0;
  v138 = 0;
  v139 = 0;
  OUTLINED_FUNCTION_53_15();
  bzero(v137, v8);
  OUTLINED_FUNCTION_52_15();
  bzero(v155, v9);
  v10 = setjmp(v155);
  if (v10 || OUTLINED_FUNCTION_99_8(v10, v137, v11, v12, v13, v14, v15, v16, v129, v130, v131, v132, v133, v134, v135, v136, v137[0], v137[1], v137[2], v137[3], v137[4], v137[5], v137[6], v137[7], v137[8], v137[9], v137[10], v137[11], v137[12], v137[13], v137[14], v137[15], v137[16], v137[17], v137[18], v137[19], v137[20], v137[21], v137[22], v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155[0]))
  {
LABEL_3:
    vretproc(v4);
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_43_16();
  OUTLINED_FUNCTION_68_13(v17, &v141);
  v18 = OUTLINED_FUNCTION_59_14();
  get_parm(v18, v19, v20, -4);
  v21 = OUTLINED_FUNCTION_60_14();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_58_14();
  fence_38(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_62_13();
  fence_38(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_89_10();
  starttest(v29, v30);
  OUTLINED_FUNCTION_27_25();
  bspush_ca_boa();
  v31 = OUTLINED_FUNCTION_22_27();
  if (lpta_loadp_setscan_r(v31, v32, v33))
  {
    v34 = 0;
  }

  else
  {
    v35 = OUTLINED_FUNCTION_11_36();
    v34 = !testFldeq(v35, v36, v37, 11) && (v38 = OUTLINED_FUNCTION_9_36(), !testFldeq(v38, v39, v40, 7)) && !advance_tok(v4, v41, v42, v43);
  }

  LODWORD(v44) = v34;
  while (2)
  {
    v45 = v4[13];
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_56_14(v45);
      v49 = v44;
    }

    else
    {
      v46 = vback(v4, v44);
      v49 = 0;
    }

    switch(v46)
    {
      case 1:
        v50 = OUTLINED_FUNCTION_67_13();
        if (lpta_loadp_setscan_r(v50, v51, 1))
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_42_16();
        if (test_string_s())
        {
          goto LABEL_17;
        }

        goto LABEL_51;
      case 2:
        bspop_boa(v4);
        goto LABEL_3;
      case 3:
LABEL_17:
        v52 = OUTLINED_FUNCTION_89_10();
        starttest(v52, v53);
        v54 = OUTLINED_FUNCTION_67_13();
        if (lpta_loadp_setscan_r(v54, v55, 1))
        {
          goto LABEL_52;
        }

        bspush_ca_scan(v4, 5);
        OUTLINED_FUNCTION_17_34();
LABEL_20:
        v56 = test_string_s();
        LODWORD(v44) = v49;
        if (v56)
        {
          continue;
        }

LABEL_21:
        starttest(v4, 7);
        v57 = OUTLINED_FUNCTION_46_16();
        if (!lpta_loadp_setscan_r(v57, v58, 4))
        {
          v122 = OUTLINED_FUNCTION_62_13();
          v124 = testFldeq(v122, v123, 2, 25);
          LODWORD(v44) = v49;
          if (!v124)
          {
            v127 = advance_tok(v4, v49, v125, v126);
            LODWORD(v44) = v49;
            if (!v127)
            {
LABEL_51:
              v128 = 2;
              HIWORD(v140) = 2;
              goto LABEL_53;
            }
          }

          continue;
        }

LABEL_22:
        starttest(v4, 9);
        v59 = OUTLINED_FUNCTION_67_13();
        if (!lpta_loadp_setscan_l(v59, v60, 4))
        {
LABEL_40:
          savescptr(v4, 10, &v138);
          v104 = OUTLINED_FUNCTION_62_13();
          v106 = testFldeq(v104, v105, 3, 2);
          LODWORD(v44) = v49;
          if (!v106)
          {
            v109 = advance_tok(v4, v49, v107, v108);
            LODWORD(v44) = v49;
            if (!v109)
            {
              v110 = lpta_loadp_setscan_r(v4, &v138, 4);
              LODWORD(v44) = v49;
              if (!v110)
              {
                v113 = advance_tok(v4, v49, v111, v112);
                LODWORD(v44) = v49;
                if (!v113)
                {
                  v114 = OUTLINED_FUNCTION_106_5();
                  bspush_ca_scan(v114, v115);
                  v77 = OUTLINED_FUNCTION_62_13();
                  v80 = 1;
                  v79 = 5;
LABEL_29:
                  v81 = testFldeq(v77, v78, v80, v79);
                  v44 = v49;
                  if (!v81)
                  {
LABEL_30:
                    v82 = advance_tok(v4, v44, v47, v48);
                    LODWORD(v44) = v49;
                    if (!v82)
                    {
                      goto LABEL_52;
                    }
                  }
                }
              }
            }
          }

          continue;
        }

LABEL_23:
        v61 = OUTLINED_FUNCTION_110_5();
        starttest(v61, v62);
        v63 = OUTLINED_FUNCTION_67_13();
        if (!lpta_loadp_setscan_l(v63, v64, 4))
        {
LABEL_32:
          v83 = OUTLINED_FUNCTION_107_5();
          savescptr(v83, v84, &v138);
          v85 = OUTLINED_FUNCTION_62_13();
          v87 = testFldeq(v85, v86, 1, 4);
          LODWORD(v44) = v49;
          if (!v87)
          {
            v88 = OUTLINED_FUNCTION_62_13();
            v90 = testFldeq(v88, v89, 2, 24);
            LODWORD(v44) = v49;
            if (!v90)
            {
              v93 = advance_tok(v4, v49, v91, v92);
              LODWORD(v44) = v49;
              if (!v93)
              {
                v94 = lpta_loadp_setscan_r(v4, &v138, 4);
                LODWORD(v44) = v49;
                if (!v94)
                {
                  v97 = advance_tok(v4, v49, v95, v96);
                  LODWORD(v44) = v49;
                  if (!v97)
                  {
                    v98 = OUTLINED_FUNCTION_62_13();
                    v100 = testFldeq(v98, v99, 3, 13);
                    LODWORD(v44) = v49;
                    if (!v100)
                    {
                      v103 = advance_tok(v4, v49, v101, v102);
                      LODWORD(v44) = v49;
                      if (!v103)
                      {
                        goto LABEL_3;
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        }

LABEL_24:
        v65 = OUTLINED_FUNCTION_67_13();
        conjoined_words_same_category(v65, v66, &v141, v67, v68);
        if (!v69)
        {
          goto LABEL_52;
        }

LABEL_25:
        v70 = OUTLINED_FUNCTION_67_13();
        if (no_pause_btw_coordinated_NPs(v70))
        {
LABEL_26:
          v71 = OUTLINED_FUNCTION_96_8();
          starttest(v71, v72);
          v73 = OUTLINED_FUNCTION_46_16();
          if (lpta_loadp_setscan_r(v73, v74, 4))
          {
            goto LABEL_51;
          }

          v75 = OUTLINED_FUNCTION_108_5();
          bspush_ca_scan(v75, v76);
LABEL_28:
          v77 = OUTLINED_FUNCTION_62_13();
          v80 = 1;
          goto LABEL_29;
        }

LABEL_52:
        v128 = HIWORD(v140);
LABEL_53:
        *(v7 + 8) = v144;
        *(v6 + 8) = v142;
        *(v5 + 2) = v128;
        vretproc(v4);
LABEL_4:
        OUTLINED_FUNCTION_90_10();
        return;
      case 4:
      case 8:
        goto LABEL_52;
      case 5:
        OUTLINED_FUNCTION_17_34();
        goto LABEL_20;
      case 6:
        goto LABEL_21;
      case 7:
        goto LABEL_22;
      case 9:
        goto LABEL_23;
      case 10:
        goto LABEL_40;
      case 11:
        v77 = OUTLINED_FUNCTION_62_13();
        v80 = 3;
        v79 = 7;
        goto LABEL_29;
      case 12:
        goto LABEL_30;
      case 13:
        goto LABEL_24;
      case 14:
        goto LABEL_32;
      case 15:
        goto LABEL_25;
      case 16:
        goto LABEL_26;
      case 17:
        goto LABEL_51;
      case 18:
        v116 = OUTLINED_FUNCTION_62_13();
        v118 = testFldeq(v116, v117, 1, 8);
        LODWORD(v44) = v49;
        if (v118)
        {
          continue;
        }

        v121 = advance_tok(v4, v49, v119, v120);
        LODWORD(v44) = v49;
        if (v121)
        {
          continue;
        }

        goto LABEL_28;
      case 19:
        goto LABEL_28;
      default:
        goto LABEL_3;
    }
  }
}