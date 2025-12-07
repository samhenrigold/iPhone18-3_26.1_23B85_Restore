uint64_t word_stress_adjust(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v100 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_13(a1, a2, a3, a4, a5, a6, a7, a8, v66, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, SHIDWORD(v92), v93, v94);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_79_4(v10, v11, v12, v13, v14, v15, v16, v17, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_29_14(v18, &v69, v19, v20, v21, v22, v23, v24, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, SHIDWORD(v95), v96, SWORD2(v96), SHIWORD(v96), v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v98, v99))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_12_25();
  v28 = 0;
  v31 = OUTLINED_FUNCTION_64_4(v29, v30, &null_str_7);
  OUTLINED_FUNCTION_54_5(v31, v32, &_MergedGlobals_23);
  OUTLINED_FUNCTION_69_4();
  v33 = OUTLINED_FUNCTION_3_27();
  if (lpta_loadp_setscan_r(v33, v34, v35))
  {
    while (2)
    {
      v36 = v28;
      if (*(a1 + 746) >= 3)
      {
        v40 = OUTLINED_FUNCTION_21_18();
        starttest_e(v40, v41);
        OUTLINED_FUNCTION_24_18();
        move_f(v42);
        v43 = OUTLINED_FUNCTION_7_26();
        move_i(v43, v44, 500);
        OUTLINED_FUNCTION_24_18();
        v25 = setdur();
        if (!v25)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v37 = *(a1 + 746);
LABEL_8:
        if (v37 == 1)
        {
          v38 = OUTLINED_FUNCTION_18_20();
          starttest_l(v38, v39);
        }

        else
        {
LABEL_18:
          if (v37)
          {
            v25 = 0;
            goto LABEL_4;
          }

          v50 = OUTLINED_FUNCTION_21_18();
          starttest(v50, v51);
        }

        OUTLINED_FUNCTION_21_18();
        bspush_ca_boa();
        OUTLINED_FUNCTION_43_6();
        if (is_open_class())
        {
          v36 = v28;
        }

        else
        {
          v36 = 1;
        }
      }

LABEL_23:
      v52 = v36;
LABEL_24:
      v53 = *(a1 + 104);
      if (v53)
      {
        v54 = OUTLINED_FUNCTION_40_7(v53);
        v52 = v55;
      }

      else
      {
        v54 = vback(a1, v52);
        v52 = 0;
      }

      v56 = v54 - 1;
      v25 = 0;
      switch(v56)
      {
        case 0:
          v28 = v52;
          continue;
        case 1:
          v37 = *(a1 + 746);
          v28 = v52;
          goto LABEL_8;
        case 2:
        case 3:
        case 5:
        case 9:
        case 10:
          goto LABEL_4;
        case 4:
          v37 = *(a1 + 746);
          v28 = v52;
          goto LABEL_18;
        case 6:
          bspop_boa(a1);
          v57 = OUTLINED_FUNCTION_24_18();
          starttest_e(v57, v58);
          OUTLINED_FUNCTION_27_15();
          move_f(0.85);
          v59 = OUTLINED_FUNCTION_48_6();
          v61 = 75;
          goto LABEL_31;
        case 7:
          v62 = OUTLINED_FUNCTION_59_5();
          starttest(v62, v63);
          OUTLINED_FUNCTION_27_15();
          move_f(0.8);
          v59 = OUTLINED_FUNCTION_48_6();
          v61 = 70;
          goto LABEL_31;
        case 8:
          bspop_boa(a1);
          v64 = OUTLINED_FUNCTION_47_6();
          starttest_e(v64, v65);
          OUTLINED_FUNCTION_27_15();
          move_f(0.7);
          v59 = OUTLINED_FUNCTION_48_6();
          v61 = 60;
LABEL_31:
          move_i(v59, v60, v61);
          OUTLINED_FUNCTION_27_15();
          v25 = setdur();
          if (!v25)
          {
            goto LABEL_4;
          }

          goto LABEL_24;
        default:
          goto LABEL_3;
      }
    }
  }

  v45 = OUTLINED_FUNCTION_22_18();
  if (OUTLINED_FUNCTION_65_4(v45, v46) || advance_tok(a1, v47, v48, v49))
  {
    v36 = 0;
    goto LABEL_23;
  }

LABEL_3:
  v25 = 94;
LABEL_4:
  v26 = v25;
  vretproc(a1);
  return v26;
}

uint64_t word_syll_adjust(uint64_t a1)
{
  v372 = *MEMORY[0x277D85DE8];
  v366 = 0;
  v367 = 0;
  v365 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v364, v2);
  OUTLINED_FUNCTION_38_9();
  bzero(v371, v3);
  if (setjmp(v371) || (v4 = ventproc(a1, v364, v370, v369, v368, v371), v4))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v367 = 0;
  LOWORD(v366) = -5;
  v365 = 65532;
  v7 = 0;
  v8 = OUTLINED_FUNCTION_64_4(v4, v5, &null_str_7);
  OUTLINED_FUNCTION_54_5(v8, v9, &unk_2806BBEFC);
  OUTLINED_FUNCTION_69_4();
  v10 = OUTLINED_FUNCTION_3_27();
  if (!lpta_loadp_setscan_r(v10, v11, v12))
  {
    v126 = OUTLINED_FUNCTION_22_18();
    if (OUTLINED_FUNCTION_65_4(v126, v127) || advance_tok(a1, v128, v129, v130))
    {
      v7 = 0;
      goto LABEL_52;
    }

    goto LABEL_3;
  }

LABEL_5:
  v13 = OUTLINED_FUNCTION_16_22();
  starttest(v13, v14);
  v15 = OUTLINED_FUNCTION_37_10();
  if (!lpta_loadp_setscan_r(v15, v16, v17))
  {
    v47 = OUTLINED_FUNCTION_31_13();
    if (!npush_fld(v47, 7u, v48))
    {
      v49 = OUTLINED_FUNCTION_44_6();
      npush_i(v49);
      if (!if_testeq(a1, v50, v51, v52, v53, v54, v55, v56) && !advance_tok(a1, v57, v58, v59))
      {
        OUTLINED_FUNCTION_41_6();
        v60 = OUTLINED_FUNCTION_4_26();
        if (!test_ptr(v60, v61, v62))
        {
          v63 = OUTLINED_FUNCTION_3_27();
          if (!lpta_loadp_setscan_r(v63, v64, v65))
          {
            v66 = OUTLINED_FUNCTION_5_26();
            if (!testFldeq(v66, v67, v68, v69))
            {
              OUTLINED_FUNCTION_21_18();
              bspush_ca_scan_boa();
              v70 = OUTLINED_FUNCTION_6_26();
              if (!testFldeq(v70, v71, v72, 36))
              {
                v7 = 1;
              }
            }
          }
        }
      }
    }

    goto LABEL_52;
  }

  v18 = v7;
LABEL_7:
  v19 = OUTLINED_FUNCTION_18_20();
  starttest(v19, v20);
  v21 = OUTLINED_FUNCTION_23_18();
  if (!lpta_loadp_setscan_r(v21, v22, v23))
  {
    v73 = OUTLINED_FUNCTION_22_18();
    if (npush_fld(v73, v74, 8u))
    {
      goto LABEL_140;
    }

    v75 = OUTLINED_FUNCTION_44_6();
    npush_i(v75);
    if (if_testeq(a1, v76, v77, v78, v79, v80, v81, v82))
    {
      goto LABEL_140;
    }

    if (advance_tok(a1, v83, v84, v85))
    {
      goto LABEL_140;
    }

    OUTLINED_FUNCTION_41_6();
    v86 = OUTLINED_FUNCTION_4_26();
    if (test_ptr(v86, v87, v88))
    {
      goto LABEL_140;
    }

    v89 = OUTLINED_FUNCTION_21_18();
    starttest_e(v89, v90);
    goto LABEL_31;
  }

LABEL_8:
  v24 = OUTLINED_FUNCTION_37_10();
  if (!lpta_loadp_setscan_r(v24, v25, v26) && !advance_tok(a1, v27, v28, v29))
  {
    OUTLINED_FUNCTION_41_6();
    v30 = OUTLINED_FUNCTION_4_26();
    if (!test_ptr(v30, v31, v32))
    {
      v33 = OUTLINED_FUNCTION_23_18();
      if (!lpta_loadp_setscan_r(v33, v34, v35) && !advance_tok(a1, v36, v37, v38) && !advance_tok(a1, v39, v40, v41))
      {
        OUTLINED_FUNCTION_41_6();
        v42 = OUTLINED_FUNCTION_4_26();
        if (!test_ptr(v42, v43, v44))
        {
          v135 = OUTLINED_FUNCTION_20_18();
          starttest_l(v135, v136);
LABEL_31:
          OUTLINED_FUNCTION_24_18();
          move_f(v91);
          v92 = OUTLINED_FUNCTION_13_25();
          v94 = 250;
          goto LABEL_133;
        }
      }
    }
  }

  v45 = v18;
LABEL_16:
  if (*(a1 + 950) == 1)
  {
    v46 = v45;
    goto LABEL_134;
  }

  if (*(a1 + 2286) != *(a1 + 734) || (v95 = OUTLINED_FUNCTION_62_4(), lpta_loadpn(v95, v96), v97 = OUTLINED_FUNCTION_50_5(), rpta_loadpn(v97, v98), compare_ptas(a1)))
  {
    LODWORD(v99) = v45;
    goto LABEL_35;
  }

  v131 = testeq(a1);
  LODWORD(v99) = v45;
  v46 = v45;
  if (v131)
  {
LABEL_35:
    v100 = OUTLINED_FUNCTION_21_18();
    starttest(v100, v101);
    v102 = OUTLINED_FUNCTION_37_10();
    if (!lpta_loadp_setscan_r(v102, v103, v104) && !advance_tok(a1, v105, v106, v107))
    {
      v132 = OUTLINED_FUNCTION_21_18();
      bspush_ca_scan(v132, v133);
      v134 = v99;
LABEL_65:
      v156 = v134;
      OUTLINED_FUNCTION_41_6();
      v157 = OUTLINED_FUNCTION_4_26();
      v160 = test_ptr(v157, v158, v159);
      v7 = v156;
      v46 = v156;
      if (v160)
      {
        goto LABEL_52;
      }

      goto LABEL_134;
    }

    v18 = v99;
LABEL_38:
    v108 = OUTLINED_FUNCTION_37_10();
    if (lpta_loadp_setscan_r(v108, v109, v110) || advance_tok(a1, v111, v112, v113) || advance_tok(a1, v114, v115, v116) || advance_tok(a1, v117, v118, v119) || (OUTLINED_FUNCTION_41_6(), v120 = OUTLINED_FUNCTION_4_26(), test_ptr(v120, v121, v122)))
    {
LABEL_80:
      v162 = OUTLINED_FUNCTION_37_10();
      if (lpta_loadp_setscan_r(v162, v163, v164) || advance_tok(a1, v165, v166, v167) || advance_tok(a1, v168, v169, v170) || advance_tok(a1, v171, v172, v173) || advance_tok(a1, v174, v175, v176) || (OUTLINED_FUNCTION_41_6(), v177 = OUTLINED_FUNCTION_4_26(), test_ptr(v177, v178, v179)))
      {
LABEL_86:
        v180 = OUTLINED_FUNCTION_37_10();
        if (lpta_loadp_setscan_r(v180, v181, v182) || advance_tok(a1, v183, v184, v185) || advance_tok(a1, v186, v187, v188) || advance_tok(a1, v189, v190, v191) || advance_tok(a1, v192, v193, v194) || advance_tok(a1, v195, v196, v197) || (OUTLINED_FUNCTION_41_6(), v198 = OUTLINED_FUNCTION_4_26(), test_ptr(v198, v199, v200)))
        {
LABEL_93:
          v201 = OUTLINED_FUNCTION_37_10();
          if (lpta_loadp_setscan_r(v201, v202, v203) || advance_tok(a1, v204, v205, v206) || advance_tok(a1, v207, v208, v209) || advance_tok(a1, v210, v211, v212) || advance_tok(a1, v213, v214, v215) || advance_tok(a1, v216, v217, v218) || advance_tok(a1, v219, v220, v221) || (OUTLINED_FUNCTION_41_6(), v222 = OUTLINED_FUNCTION_4_26(), test_ptr(v222, v223, v224)))
          {
LABEL_101:
            v225 = OUTLINED_FUNCTION_37_10();
            if (lpta_loadp_setscan_r(v225, v226, v227) || advance_tok(a1, v228, v229, v230) || advance_tok(a1, v231, v232, v233) || advance_tok(a1, v234, v235, v236) || advance_tok(a1, v237, v238, v239) || advance_tok(a1, v240, v241, v242) || advance_tok(a1, v243, v244, v245) || advance_tok(a1, v246, v247, v248) || (OUTLINED_FUNCTION_41_6(), v249 = OUTLINED_FUNCTION_4_26(), test_ptr(v249, v250, v251)))
            {
LABEL_110:
              v252 = OUTLINED_FUNCTION_37_10();
              if (lpta_loadp_setscan_r(v252, v253, v254) || advance_tok(a1, v255, v256, v257) || advance_tok(a1, v258, v259, v260) || advance_tok(a1, v261, v262, v263) || advance_tok(a1, v264, v265, v266) || advance_tok(a1, v267, v268, v269) || advance_tok(a1, v270, v271, v272) || advance_tok(a1, v273, v274, v275) || advance_tok(a1, v276, v277, v278) || (OUTLINED_FUNCTION_41_6(), v279 = OUTLINED_FUNCTION_4_26(), test_ptr(v279, v280, v281)))
              {
LABEL_120:
                v282 = OUTLINED_FUNCTION_37_10();
                if (lpta_loadp_setscan_r(v282, v283, v284) || advance_tok(a1, v285, v286, v287) || advance_tok(a1, v288, v289, v290) || advance_tok(a1, v291, v292, v293) || advance_tok(a1, v294, v295, v296) || advance_tok(a1, v297, v298, v299) || advance_tok(a1, v300, v301, v302) || advance_tok(a1, v303, v304, v305) || advance_tok(a1, v306, v307, v308) || advance_tok(a1, v309, v310, v311) || (OUTLINED_FUNCTION_41_6(), v312 = OUTLINED_FUNCTION_4_26(), test_ptr(v312, v313, v314)))
                {
LABEL_131:
                  v315 = OUTLINED_FUNCTION_21_18();
                  starttest(v315, v316);
                }

                else
                {
                  v362 = OUTLINED_FUNCTION_21_18();
                  starttest_e(v362, v363);
                }

                OUTLINED_FUNCTION_24_18();
                move_f(v317);
                v92 = OUTLINED_FUNCTION_13_25();
                v94 = 40;
              }

              else
              {
                v359 = OUTLINED_FUNCTION_21_18();
                starttest_e(v359, v360);
                OUTLINED_FUNCTION_24_18();
                move_f(v361);
                v92 = OUTLINED_FUNCTION_13_25();
                v94 = 45;
              }
            }

            else
            {
              v356 = OUTLINED_FUNCTION_21_18();
              starttest_e(v356, v357);
              OUTLINED_FUNCTION_24_18();
              move_f(v358);
              v92 = OUTLINED_FUNCTION_13_25();
              v94 = 50;
            }
          }

          else
          {
            v353 = OUTLINED_FUNCTION_21_18();
            starttest_e(v353, v354);
            OUTLINED_FUNCTION_24_18();
            move_f(v355);
            v92 = OUTLINED_FUNCTION_13_25();
            v94 = 55;
          }
        }

        else
        {
          v350 = OUTLINED_FUNCTION_21_18();
          starttest_e(v350, v351);
          OUTLINED_FUNCTION_24_18();
          move_f(v352);
          v92 = OUTLINED_FUNCTION_13_25();
          v94 = 60;
        }
      }

      else
      {
        v347 = OUTLINED_FUNCTION_21_18();
        starttest_e(v347, v348);
        OUTLINED_FUNCTION_24_18();
        move_f(v349);
        v92 = OUTLINED_FUNCTION_13_25();
        v94 = 65;
      }
    }

    else
    {
      v123 = OUTLINED_FUNCTION_21_18();
      starttest_e(v123, v124);
      OUTLINED_FUNCTION_24_18();
      move_f(v125);
      v92 = OUTLINED_FUNCTION_13_25();
      v94 = 70;
    }

LABEL_133:
    move_i(v92, v93, v94);
    OUTLINED_FUNCTION_24_18();
    v318 = setdur();
    v7 = v18;
    v46 = v18;
    if (v318)
    {
      goto LABEL_52;
    }
  }

LABEL_134:
  v7 = v46;
  v319 = OUTLINED_FUNCTION_21_18();
  starttest(v319, v320);
  if (*(a1 + 942) == 1)
  {
    v321 = OUTLINED_FUNCTION_0_30();
    if (!lpta_loadp_setscan_r(v321, v322, v323))
    {
      v324 = OUTLINED_FUNCTION_1_28();
      if (testFldeq(v324, v325, v326, 1) || advance_tok(a1, v327, v328, v329))
      {
        goto LABEL_52;
      }

      v330 = OUTLINED_FUNCTION_21_18();
      bspush_ca_scan(v330, v331);
      v142 = v7;
      while (1)
      {
LABEL_139:
        v18 = v142;
        v332 = OUTLINED_FUNCTION_21_18();
        if (test_synch(v332, v333, 1, v334))
        {
LABEL_140:
          v7 = v18;
        }

        else
        {
          v161 = *(a1 + 746);
          if (*(a1 + 746) >= 3)
          {
            v344 = OUTLINED_FUNCTION_21_18();
            starttest_e(v344, v345);
            OUTLINED_FUNCTION_24_18();
            move_f(v346);
            v338 = OUTLINED_FUNCTION_13_25();
            v340 = 220;
          }

          else
          {
LABEL_142:
            if (v161 == 2)
            {
              v335 = OUTLINED_FUNCTION_21_18();
              starttest_e(v335, v336);
              OUTLINED_FUNCTION_24_18();
              move_f(v337);
              v338 = OUTLINED_FUNCTION_13_25();
              v340 = 200;
            }

            else
            {
LABEL_144:
              if (v161 != 1)
              {
                break;
              }

              v341 = OUTLINED_FUNCTION_21_18();
              starttest_e(v341, v342);
              OUTLINED_FUNCTION_24_18();
              move_f(v343);
              v338 = OUTLINED_FUNCTION_13_25();
              v340 = 180;
            }
          }

          move_i(v338, v339, v340);
          OUTLINED_FUNCTION_24_18();
          v7 = v18;
          if (!setdur())
          {
            break;
          }
        }

LABEL_52:
        v137 = v7;
        do
        {
          while (2)
          {
            v138 = *(a1 + 104);
            if (v138)
            {
              v139 = OUTLINED_FUNCTION_40_7(v138);
              v99 = v141;
            }

            else
            {
              v139 = vback(a1, v137);
              v99 = 0;
            }

            v134 = v99;
            v46 = v99;
            v142 = v99;
            switch(v139)
            {
              case 1:
                v7 = v99;
                goto LABEL_5;
              case 2:
                v18 = v99;
                goto LABEL_7;
              case 3:
                bspop_boa(a1);
                v146 = advance_tok(a1, v143, v144, v145);
                v137 = v99;
                if (!v146)
                {
                  v147 = OUTLINED_FUNCTION_27_15();
                  starttest_l(v147, v148);
                  OUTLINED_FUNCTION_48_6();
                  move_f(1.3);
                  v149 = OUTLINED_FUNCTION_59_5();
                  move_i(v149, v150, 250);
                  OUTLINED_FUNCTION_48_6();
                  v151 = setdur();
                  v46 = v99;
                  v137 = v99;
                  if (!v151)
                  {
                    goto LABEL_134;
                  }
                }

                continue;
              case 4:
              case 5:
              case 7:
              case 9:
              case 11:
              case 16:
              case 18:
              case 20:
              case 22:
              case 24:
              case 26:
              case 28:
                goto LABEL_134;
              case 6:
                v18 = v99;
                goto LABEL_8;
              case 8:
                v45 = v99;
                goto LABEL_16;
              case 10:
                goto LABEL_35;
              case 12:
                v18 = v99;
                goto LABEL_38;
              case 13:
                v155 = advance_tok(a1, v99, v140, v99);
                v134 = v99;
                v137 = v99;
                if (!v155)
                {
                  goto LABEL_65;
                }

                continue;
              case 14:
                goto LABEL_65;
              case 15:
                v18 = v99;
                goto LABEL_80;
              case 17:
                v18 = v99;
                goto LABEL_86;
              case 19:
                v18 = v99;
                goto LABEL_93;
              case 21:
                v18 = v99;
                goto LABEL_101;
              case 23:
                v18 = v99;
                goto LABEL_110;
              case 25:
                v18 = v99;
                goto LABEL_120;
              case 27:
                v18 = v99;
                goto LABEL_131;
              case 29:
              case 34:
              case 36:
              case 37:
                goto LABEL_148;
              case 30:
                v152 = OUTLINED_FUNCTION_47_6();
                bspush_ca_scan(v152, v153);
                OUTLINED_FUNCTION_51_5();
                break;
              case 31:
                goto LABEL_139;
              case 32:
                OUTLINED_FUNCTION_51_5();
                break;
              case 33:
                v161 = *(a1 + 746);
                v18 = v99;
                goto LABEL_142;
              case 35:
                v161 = *(a1 + 746);
                v18 = v99;
                goto LABEL_144;
              default:
                goto LABEL_3;
            }

            break;
          }

          v154 = test_string_s();
          v142 = v99;
          v137 = v99;
        }

        while (v154);
      }
    }
  }

LABEL_148:
  vretproc(a1);
  return 0;
}

uint64_t shorten_weak_syllables(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_39_8();
  bzero(&v46, v3);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_72_4(v4, v5, v6, v7, v8, v9, v10, v11, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_9_26(v12, v13, v14, v15, v16, v17, v18, v19, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, SHIDWORD(v69), v70, SWORD2(v70), SHIWORD(v70), v71, SWORD2(v71), SBYTE6(v71), SHIBYTE(v71), v72, v73))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_26(a1, 0, &null_str_7);
  v21 = OUTLINED_FUNCTION_51_5();
  fence_26(v21, v22, v23);
  v24 = OUTLINED_FUNCTION_52_5();
  starttest(v24, v25);
  v26 = OUTLINED_FUNCTION_3_27();
  if (!lpta_loadp_setscan_r(v26, v27, v28))
  {
    v37 = OUTLINED_FUNCTION_22_18();
    if (OUTLINED_FUNCTION_65_4(v37, v38) || advance_tok(a1, v39, v40, v41))
    {
      v42 = *(a1 + 104);
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_40_7(v42);
      }

      else
      {
        v44 = OUTLINED_FUNCTION_32_12();
        v43 = vback(v44, v45);
      }

      switch(v43)
      {
        case 1:
          goto LABEL_6;
        case 2:
          goto LABEL_7;
        case 3:
        case 4:
        case 7:
        case 8:
          goto LABEL_19;
        case 5:
          v36 = *(a1 + 950);
          goto LABEL_8;
        case 6:
          goto LABEL_16;
        default:
          goto LABEL_3;
      }
    }

    goto LABEL_3;
  }

LABEL_6:
  if (*(a1 + 746) < 0)
  {
    shorten_func_unstressed_vows(a1, v29, v30, v31, v32, v33, v34, v35);
  }

  else
  {
LABEL_7:
    v36 = *(a1 + 950);
    if (*(a1 + 950))
    {
LABEL_8:
      if (v36 == 2)
      {
        shorten_2stress(a1, v29, v30, v31, v32, v33, v34, v35);
      }
    }

    else
    {
      shorten_unstress(a1);
LABEL_16:
      shorten_adjacent_vows(a1);
    }
  }

LABEL_19:
  vretproc(a1);
  return 0;
}

uint64_t phrase_word_final_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v265 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_13(a1, a2, a3, a4, a5, a6, a7, a8, v254, v257[0], v257[1], v257[2], v257[3], v257[4], v257[5], v257[6], v257[7], v257[8], v257[9], v257[10], v257[11], v257[12], v257[13], v257[14], v257[15], v257[16], v257[17], v257[18], v257[19], v257[20], v257[21], v257[22], v257[23], SHIDWORD(v257[23]), v258, v259);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_79_4(v10, v11, v12, v13, v14, v15, v16, v17, v255, v257[0], v257[1], v257[2], v257[3], v257[4], v257[5], v257[6], v257[7], v257[8], v257[9], v257[10], v257[11], v257[12], v257[13], v257[14], v257[15], v257[16], v257[17], v257[18], v257[19], v257[20], v257[21], v257[22], v257[23], v258, v259, v260, v261, v262, v263);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_29_14(v18, v257, v19, v20, v21, v22, v23, v24, v256, v257[0], v257[1], v257[2], v257[3], v257[4], v257[5], v257[6], v257[7], v257[8], v257[9], v257[10], v257[11], v257[12], v257[13], v257[14], v257[15], v257[16], v257[17], v257[18], v257[19], v257[20], v257[21], v257[22], v257[23], v258, v259, v260, SHIDWORD(v260), v261, SWORD2(v261), SHIWORD(v261), v262, SWORD2(v262), SBYTE6(v262), SHIBYTE(v262), v263, v264))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  OUTLINED_FUNCTION_12_25();
  fence_26(a1, 0, &null_str_7);
  v26 = OUTLINED_FUNCTION_44_6();
  fence_26(v26, v27, v28);
  v29 = *(a1 + 2286);
  if (v29 != *(a1 + 734))
  {
LABEL_54:
    if (v29 == *(a1 + 930))
    {
      v96 = OUTLINED_FUNCTION_21_18();
      starttest(v96, v97);
      if (*(a1 + 950) == 1)
      {
        v98 = OUTLINED_FUNCTION_62_4();
        if (!lpta_loadp_setscan_r(v98, v99, 2))
        {
LABEL_88:
          v188 = OUTLINED_FUNCTION_33_12();
          if (npush_fld(v188, v189, 5u))
          {
            goto LABEL_99;
          }

          v190 = OUTLINED_FUNCTION_44_6();
          npush_i(v190);
          if (if_testgt(a1, v191, v192, v193, v194, v195, v196, v197) || advance_tok(a1, v198, v199, v200))
          {
            goto LABEL_99;
          }

          v201 = OUTLINED_FUNCTION_21_18();
          bspush_ca_scan(v201, v202);
LABEL_92:
          v203 = OUTLINED_FUNCTION_21_18();
          if (test_synch(v203, v204, 1, v205))
          {
            goto LABEL_99;
          }

          OUTLINED_FUNCTION_35_10();
          if (!v31)
          {
LABEL_96:
            OUTLINED_FUNCTION_75_4();
            if (!v31)
            {
              goto LABEL_51;
            }
          }

LABEL_71:
          v141 = OUTLINED_FUNCTION_21_18();
          starttest_e(v141, v142);
          goto LABEL_52;
        }
      }

LABEL_57:
      OUTLINED_FUNCTION_43_6();
      if (is_minor_phrase_edge())
      {
LABEL_58:
        OUTLINED_FUNCTION_43_6();
        if (is_phon_phrase_edge())
        {
LABEL_59:
          v100 = OUTLINED_FUNCTION_28_14();
          lpta_loadpn(v100, v101);
          v102 = OUTLINED_FUNCTION_62_4();
          rpta_loadpn(v102, v103);
          if (compare_ptas(a1) || testeq(a1))
          {
            goto LABEL_111;
          }

          v104 = OUTLINED_FUNCTION_21_18();
          starttest(v104, v105);
          v106 = OUTLINED_FUNCTION_0_30();
          if (!lpta_loadp_setscan_l(v106, v107, v108))
          {
            v135 = OUTLINED_FUNCTION_6_26();
            if (testFldeq(v135, v136, v137, 27) || advance_tok(a1, v138, v139, v140))
            {
              goto LABEL_99;
            }

            goto LABEL_71;
          }

LABEL_62:
          v109 = OUTLINED_FUNCTION_21_18();
          starttest(v109, v110);
          v111 = OUTLINED_FUNCTION_0_30();
          if (!lpta_loadp_setscan_l(v111, v112, v113))
          {
            v114 = OUTLINED_FUNCTION_21_18();
            bspush_ca_scan(v114, v115);
            v116 = OUTLINED_FUNCTION_6_26();
            v119 = 26;
LABEL_113:
            if (testFldeq(v116, v117, v118, v119))
            {
              goto LABEL_99;
            }

LABEL_114:
            if (advance_tok(a1, v87, v88, v89))
            {
              goto LABEL_99;
            }

            goto LABEL_71;
          }

          goto LABEL_111;
        }

        v130 = OUTLINED_FUNCTION_21_18();
        starttest(v130, v131);
        v132 = OUTLINED_FUNCTION_3_27();
        if (!lpta_loadp_setscan_r(v132, v133, v134))
        {
          v172 = OUTLINED_FUNCTION_1_28();
          if (!testFldeq(v172, v173, v174, 2) && !advance_tok(a1, v175, v176, v177))
          {
            v178 = OUTLINED_FUNCTION_2_28();
            if (!testFldeq(v178, v179, v180, v181) && !advance_tok(a1, v182, v183, v184))
            {
              OUTLINED_FUNCTION_41_6();
              v185 = OUTLINED_FUNCTION_4_26();
              if (!test_ptr(v185, v186, v187))
              {
                goto LABEL_111;
              }
            }
          }

          goto LABEL_99;
        }

        goto LABEL_108;
      }

      v120 = OUTLINED_FUNCTION_21_18();
      starttest(v120, v121);
      v122 = OUTLINED_FUNCTION_3_27();
      if (lpta_loadp_setscan_r(v122, v123, v124))
      {
LABEL_65:
        v125 = OUTLINED_FUNCTION_21_18();
        starttest(v125, v126);
        v127 = OUTLINED_FUNCTION_3_27();
        if (lpta_loadp_setscan_r(v127, v128, v129))
        {
          goto LABEL_108;
        }

        v156 = OUTLINED_FUNCTION_1_28();
        if (testFldeq(v156, v157, v158, 2))
        {
          goto LABEL_99;
        }

        if (advance_tok(a1, v159, v160, v161))
        {
          goto LABEL_99;
        }

        v162 = OUTLINED_FUNCTION_2_28();
        if (testFldeq(v162, v163, v164, v165))
        {
          goto LABEL_99;
        }

        if (advance_tok(a1, v166, v167, v168))
        {
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_41_6();
        v169 = OUTLINED_FUNCTION_4_26();
        if (test_ptr(v169, v170, v171))
        {
          goto LABEL_99;
        }
      }

      else
      {
        v143 = OUTLINED_FUNCTION_22_18();
        if (npush_fld(v143, v144, 8u))
        {
          goto LABEL_99;
        }

        v145 = OUTLINED_FUNCTION_32_12();
        npush_i(v145);
        if (if_testeq(a1, v146, v147, v148, v149, v150, v151, v152) || advance_tok(a1, v153, v154, v155))
        {
          goto LABEL_99;
        }
      }
    }

    else
    {
LABEL_104:
      if (*(a1 + 950) != 1)
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_43_6();
      if (is_minor_phrase_edge())
      {
        goto LABEL_111;
      }

      v210 = OUTLINED_FUNCTION_21_18();
      starttest(v210, v211);
      v212 = OUTLINED_FUNCTION_3_27();
      if (lpta_loadp_setscan_r(v212, v213, v214))
      {
LABEL_107:
        v215 = OUTLINED_FUNCTION_21_18();
        starttest(v215, v216);
        v217 = OUTLINED_FUNCTION_3_27();
        if (lpta_loadp_setscan_r(v217, v218, v219))
        {
LABEL_108:
          v220 = OUTLINED_FUNCTION_21_18();
          starttest(v220, v221);
LABEL_109:
          OUTLINED_FUNCTION_24_18();
          move_f(v222);
          v47 = OUTLINED_FUNCTION_7_26();
          v49 = 500;
LABEL_110:
          move_i(v47, v48, v49);
          OUTLINED_FUNCTION_24_18();
          if (!setdur())
          {
            goto LABEL_111;
          }

          goto LABEL_99;
        }

        v238 = OUTLINED_FUNCTION_1_28();
        if (testFldeq(v238, v239, v240, 2))
        {
          goto LABEL_99;
        }

        if (advance_tok(a1, v241, v242, v243))
        {
          goto LABEL_99;
        }

        v244 = OUTLINED_FUNCTION_2_28();
        if (testFldeq(v244, v245, v246, v247))
        {
          goto LABEL_99;
        }

        if (advance_tok(a1, v248, v249, v250))
        {
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_41_6();
        v251 = OUTLINED_FUNCTION_4_26();
        if (test_ptr(v251, v252, v253))
        {
          goto LABEL_99;
        }
      }

      else
      {
        v223 = OUTLINED_FUNCTION_22_18();
        if (npush_fld(v223, v224, 8u))
        {
          goto LABEL_99;
        }

        v225 = OUTLINED_FUNCTION_32_12();
        npush_i(v225);
        if (if_testeq(a1, v226, v227, v228, v229, v230, v231, v232) || advance_tok(a1, v233, v234, v235))
        {
          goto LABEL_99;
        }
      }
    }

    v236 = OUTLINED_FUNCTION_21_18();
    starttest_e(v236, v237);
    goto LABEL_109;
  }

  v30 = *(a1 + 950);
  if (v30 == 1)
  {
    OUTLINED_FUNCTION_53_5();
    if (!v31)
    {
LABEL_23:
      OUTLINED_FUNCTION_35_10();
      if (!v31)
      {
LABEL_26:
        OUTLINED_FUNCTION_75_4();
        if (!v31)
        {
LABEL_29:
          v50 = OUTLINED_FUNCTION_21_18();
          starttest(v50, v51);
          goto LABEL_22;
        }
      }

LABEL_21:
      v44 = OUTLINED_FUNCTION_21_18();
      starttest_e(v44, v45);
LABEL_22:
      OUTLINED_FUNCTION_24_18();
      move_f(v46);
      v47 = OUTLINED_FUNCTION_7_26();
      v49 = 250;
      goto LABEL_110;
    }

    v32 = OUTLINED_FUNCTION_0_30();
    if (lpta_loadp_setscan_r(v32, v33, v34) || (OUTLINED_FUNCTION_1_28(), test_string_s()))
    {
LABEL_11:
      OUTLINED_FUNCTION_35_10();
      if (!v31)
      {
LABEL_14:
        OUTLINED_FUNCTION_75_4();
        if (!v31)
        {
LABEL_17:
          v37 = OUTLINED_FUNCTION_18_20();
          starttest(v37, v38);
          goto LABEL_18;
        }
      }
    }

    v35 = OUTLINED_FUNCTION_21_18();
    starttest_e(v35, v36);
LABEL_18:
    OUTLINED_FUNCTION_24_18();
    move_f(v39);
    v40 = OUTLINED_FUNCTION_7_26();
    move_i(v40, v41, 250);
    OUTLINED_FUNCTION_24_18();
    if (setdur())
    {
      goto LABEL_99;
    }

LABEL_19:
    v42 = OUTLINED_FUNCTION_28_14();
    lpta_loadpn(v42, v43);
    OUTLINED_FUNCTION_78_4();
    if (compare_ptas(a1) || testneq(a1))
    {
      goto LABEL_111;
    }

    goto LABEL_21;
  }

  while (2)
  {
    if (!v30)
    {
      v52 = OUTLINED_FUNCTION_21_18();
      starttest(v52, v53);
      OUTLINED_FUNCTION_34_11();
      if (!(v54 ^ v55 | v31))
      {
        v56 = OUTLINED_FUNCTION_43_6();
        if (!lpta_loadp_setscan_r(v56, v57, 2))
        {
          v71 = OUTLINED_FUNCTION_33_12();
          if (npush_fld(v71, v72, 5u))
          {
            goto LABEL_99;
          }

          v73 = OUTLINED_FUNCTION_32_12();
          npush_i(v73);
          if (if_testle(a1, v74, v75, v76, v77, v78, v79, v80) || advance_tok(a1, v81, v82, v83))
          {
            goto LABEL_99;
          }

          v84 = OUTLINED_FUNCTION_21_18();
          starttest_e(v84, v85);
          OUTLINED_FUNCTION_24_18();
          move_f(v86);
          v47 = OUTLINED_FUNCTION_7_26();
          v49 = 150;
          goto LABEL_110;
        }
      }

LABEL_34:
      OUTLINED_FUNCTION_53_5();
      if (!v31)
      {
        break;
      }

      v58 = OUTLINED_FUNCTION_21_18();
      starttest(v58, v59);
      v60 = OUTLINED_FUNCTION_0_30();
      if (lpta_loadp_setscan_r(v60, v61, v62))
      {
        break;
      }

      v63 = OUTLINED_FUNCTION_21_18();
      bspush_ca_scan(v63, v64);
      v65 = OUTLINED_FUNCTION_21_18();
      bspush_ca_scan(v65, v66);
      v67 = OUTLINED_FUNCTION_1_28();
      v70 = 1;
LABEL_42:
      if (testFldeq(v67, v68, v69, v70))
      {
        goto LABEL_99;
      }

LABEL_43:
      if (advance_tok(a1, v87, v88, v89))
      {
        goto LABEL_99;
      }

LABEL_44:
      OUTLINED_FUNCTION_41_6();
      v90 = OUTLINED_FUNCTION_4_26();
      if (test_ptr(v90, v91, v92))
      {
LABEL_99:
        v206 = *(a1 + 104);
        if (v206)
        {
          v207 = OUTLINED_FUNCTION_40_7(v206);
        }

        else
        {
          v208 = OUTLINED_FUNCTION_32_12();
          v207 = vback(v208, v209);
        }

        switch(v207)
        {
          case 1:
            v29 = *(a1 + 2286);
            goto LABEL_54;
          case 2:
            v30 = *(a1 + 950);
            continue;
          case 3:
            goto LABEL_23;
          case 4:
            goto LABEL_11;
          case 5:
          case 6:
          case 8:
          case 10:
            goto LABEL_19;
          case 7:
            goto LABEL_14;
          case 9:
            goto LABEL_17;
          case 11:
          case 12:
          case 14:
          case 16:
          case 17:
          case 19:
          case 20:
          case 21:
          case 26:
          case 27:
          case 29:
          case 30:
          case 36:
          case 37:
          case 39:
          case 40:
          case 43:
          case 44:
          case 46:
          case 49:
          case 51:
          case 52:
          case 55:
          case 57:
          case 59:
            goto LABEL_111;
          case 13:
            goto LABEL_26;
          case 15:
            goto LABEL_29;
          case 18:
            goto LABEL_34;
          case 22:
            goto LABEL_44;
          case 23:
            v67 = OUTLINED_FUNCTION_2_28();
            goto LABEL_42;
          case 24:
            goto LABEL_43;
          case 25:
            goto LABEL_48;
          case 28:
          case 38:
            goto LABEL_51;
          case 31:
            goto LABEL_104;
          case 32:
            goto LABEL_57;
          case 33:
            goto LABEL_88;
          case 34:
            goto LABEL_92;
          case 35:
            goto LABEL_96;
          case 41:
            goto LABEL_58;
          case 42:
            goto LABEL_65;
          case 45:
          case 48:
          case 58:
            goto LABEL_108;
          case 47:
            goto LABEL_59;
          case 50:
            goto LABEL_62;
          case 53:
            v116 = OUTLINED_FUNCTION_6_26();
            v119 = 24;
            goto LABEL_113;
          case 54:
            goto LABEL_114;
          case 56:
            goto LABEL_107;
          default:
            goto LABEL_3;
        }
      }

      OUTLINED_FUNCTION_35_10();
      if (!v31)
      {
LABEL_48:
        OUTLINED_FUNCTION_75_4();
        if (!v31)
        {
LABEL_51:
          v93 = OUTLINED_FUNCTION_21_18();
          starttest(v93, v94);
LABEL_52:
          OUTLINED_FUNCTION_24_18();
          move_f(v95);
          v47 = OUTLINED_FUNCTION_7_26();
          v49 = 200;
          goto LABEL_110;
        }
      }

      goto LABEL_71;
    }

    break;
  }

LABEL_111:
  vretproc(a1);
  return 0;
}

uint64_t adjust_single_word(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v135 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_13(a1, a2, a3, a4, a5, a6, a7, a8, v101, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, SHIDWORD(v127), v128, v129);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_79_4(v10, v11, v12, v13, v14, v15, v16, v17, v102, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_29_14(v18, &v104, v19, v20, v21, v22, v23, v24, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, SHIDWORD(v130), v131, SWORD2(v131), SHIWORD(v131), v132, SWORD2(v132), SBYTE6(v132), SHIBYTE(v132), v133, v134))
  {
LABEL_3:
    v25 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_12_25();
    OUTLINED_FUNCTION_64_4(v27, v28, &null_str_7);
    v29 = OUTLINED_FUNCTION_44_6();
    fence_26(v29, v30, v31);
    if (*(a1 + 946) == 1)
    {
      OUTLINED_FUNCTION_53_5();
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_16_22();
        starttest(v33, v34);
        v35 = OUTLINED_FUNCTION_0_30();
        if (!lpta_loadp_setscan_l(v35, v36, v37))
        {
          OUTLINED_FUNCTION_21_18();
          bspush_ca_scan_boa();
          v40 = OUTLINED_FUNCTION_1_28();
          v38 = !testFldeq(v40, v41, v42, 2);
          goto LABEL_43;
        }

        v38 = 0;
LABEL_27:
        v67 = OUTLINED_FUNCTION_21_18();
        starttest(v67, v68);
        v69 = OUTLINED_FUNCTION_0_30();
        if (!lpta_loadp_setscan_r(v69, v70, v71))
        {
          v72 = OUTLINED_FUNCTION_1_28();
          if (!testFldeq(v72, v73, v74, 1))
          {
            OUTLINED_FUNCTION_21_18();
            bspush_ca_scan_boa();
            v75 = OUTLINED_FUNCTION_15_23();
            if (!testFldeq(v75, v76, 3, v77))
            {
              v38 = 1;
            }
          }

          goto LABEL_43;
        }

LABEL_32:
        v78 = OUTLINED_FUNCTION_18_20();
        starttest(v78, v79);
        OUTLINED_FUNCTION_24_18();
        move_f(v80);
        v81 = OUTLINED_FUNCTION_7_26();
        move_i(v81, v82, 500);
        OUTLINED_FUNCTION_24_18();
        v83 = setdur();
        v39 = v38;
        if (v83)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_33:
    while (1)
    {
      v66 = v39;
      v84 = OUTLINED_FUNCTION_23_18();
      if (lpta_loadp_setscan_r(v84, v85, v86))
      {
        break;
      }

      OUTLINED_FUNCTION_1_28();
      if (test_string_s())
      {
        break;
      }

      v87 = OUTLINED_FUNCTION_62_4();
      lpta_loadpn(v87, v88);
      OUTLINED_FUNCTION_78_4();
      if (compare_ptas(a1) || testneq(a1))
      {
        break;
      }

      v89 = OUTLINED_FUNCTION_23_18();
      if (lpta_loadp_setscan_l(v89, v90, v91) || (OUTLINED_FUNCTION_1_28(), test_string_s()) || (v92 = OUTLINED_FUNCTION_43_6(), lpta_loadpn(v92, v93), rpta_loadpn(a1, a1 + 1448), compare_ptas(a1)) || testneq(a1))
      {
LABEL_41:
        v94 = OUTLINED_FUNCTION_21_18();
        starttest(v94, v95);
      }

      else
      {
        v99 = OUTLINED_FUNCTION_21_18();
        starttest_e(v99, v100);
      }

      OUTLINED_FUNCTION_24_18();
      move_f(v96);
      v97 = OUTLINED_FUNCTION_7_26();
      move_i(v97, v98, 500);
      OUTLINED_FUNCTION_24_18();
      v38 = v66;
      if (!setdur())
      {
        break;
      }

LABEL_43:
      v49 = v38;
      do
      {
        while (2)
        {
          v43 = *(a1 + 104);
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_40_7(v43);
            v46 = v45;
          }

          else
          {
            v44 = vback(a1, v49);
            v46 = 0;
          }

          v39 = v46;
          switch(v44)
          {
            case 1:
            case 5:
            case 6:
            case 9:
              goto LABEL_33;
            case 2:
              v38 = v46;
              goto LABEL_27;
            case 3:
              bspop_boa(a1);
              OUTLINED_FUNCTION_52_5();
              bspush_ca_scan_boa();
              v47 = OUTLINED_FUNCTION_31_13();
              if (testFldeq(v47, 4u, v48, 27))
              {
                v49 = v46;
              }

              else
              {
                v49 = 1;
              }

              continue;
            case 4:
              bspop_boa(a1);
              v53 = advance_tok(a1, v50, v51, v52);
              v49 = v46;
              if (v53)
              {
                continue;
              }

              v54 = OUTLINED_FUNCTION_27_15();
              starttest_e(v54, v55);
              OUTLINED_FUNCTION_48_6();
              v56 = 1.15;
              break;
            case 7:
              v38 = v46;
              goto LABEL_32;
            case 8:
              bspop_boa(a1);
              v60 = advance_tok(a1, v57, v58, v59);
              v49 = v46;
              if (v60)
              {
                continue;
              }

              v61 = OUTLINED_FUNCTION_47_6();
              starttest_e(v61, v62);
              OUTLINED_FUNCTION_48_6();
              v56 = 1.1;
              break;
            case 10:
            case 12:
              goto LABEL_44;
            case 11:
              v66 = v46;
              goto LABEL_41;
            default:
              goto LABEL_3;
          }

          break;
        }

        move_f(v56);
        v63 = OUTLINED_FUNCTION_59_5();
        move_i(v63, v64, 500);
        OUTLINED_FUNCTION_48_6();
        v65 = setdur();
        v39 = v46;
        v49 = v46;
      }

      while (v65);
    }

LABEL_44:
    v25 = 0;
  }

  vretproc(a1);
  return v25;
}

uint64_t shorten_func_unstressed_vows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v361 = *MEMORY[0x277D85DE8];
  v359[0] = 0;
  v359[1] = 0;
  OUTLINED_FUNCTION_30_13(a1, a2, a3, a4, a5, a6, a7, a8, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v337, v339, v341, v343, v345, v347, v349, v351, v353, SHIDWORD(v353), v355, v357);
  OUTLINED_FUNCTION_38_9();
  bzero(v360, v9);
  if (!setjmp(v360))
  {
    OUTLINED_FUNCTION_56_5();
    if (!ventproc(a1, v10, v11, v12, v13, v360))
    {
      push_ptr_init(a1, v359);
      OUTLINED_FUNCTION_12_25();
      v16 = 0;
      v19 = OUTLINED_FUNCTION_64_4(v17, v18, &null_str_7);
      OUTLINED_FUNCTION_54_5(v19, v20, &_MergedGlobals_23);
      OUTLINED_FUNCTION_69_4();
      v21 = OUTLINED_FUNCTION_3_27();
      LODWORD(v24) = 0;
      if (!lpta_loadp_setscan_l(v21, v22, v23))
      {
LABEL_11:
        OUTLINED_FUNCTION_58_5(2, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v359[0]);
        v35 = OUTLINED_FUNCTION_21_18();
        bspush_ca_scan(v35, v36);
        v37 = v16;
LABEL_12:
        LODWORD(v24) = v37;
        v38 = OUTLINED_FUNCTION_21_18();
        if (test_synch(v38, v39, 1, v40))
        {
          goto LABEL_123;
        }

        goto LABEL_13;
      }

      while (2)
      {
        v25 = OUTLINED_FUNCTION_21_18();
        starttest(v25, v26);
        v27 = OUTLINED_FUNCTION_3_27();
        v30 = lpta_loadp_setscan_l(v27, v28, v29);
        v31 = v24;
        if (!v30)
        {
LABEL_7:
          OUTLINED_FUNCTION_58_5(11, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v359[0]);
LABEL_8:
          v32 = OUTLINED_FUNCTION_21_18();
          if (test_synch(v32, v33, 1, v34))
          {
            goto LABEL_123;
          }

LABEL_13:
          OUTLINED_FUNCTION_21_18();
          bspush_ca_scan_boa();
LABEL_14:
          v41 = OUTLINED_FUNCTION_21_18();
          v44 = test_synch(v41, v42, 1, v43);
LABEL_15:
          if (!v44)
          {
            LODWORD(v24) = 1;
          }

          goto LABEL_123;
        }

LABEL_60:
        v140 = v31;
        v141 = OUTLINED_FUNCTION_20_18();
        starttest(v141, v142);
        v143 = OUTLINED_FUNCTION_3_27();
        v146 = lpta_loadp_setscan_l(v143, v144, v145);
        LODWORD(v24) = v140;
        v48 = v140;
        if (!v146)
        {
LABEL_81:
          OUTLINED_FUNCTION_58_5(18, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v359[0]);
LABEL_82:
          v186 = OUTLINED_FUNCTION_21_18();
          if (test_synch(v186, v187, 1, v188))
          {
            goto LABEL_123;
          }

          goto LABEL_13;
        }

LABEL_61:
        LODWORD(v24) = v48;
        lpta_loadpn(a1, a1 + 1448);
        rpta_loadpn(a1, a1 + 768);
        if (!compare_ptas(a1) && !testeq(a1))
        {
          v244 = OUTLINED_FUNCTION_21_18();
          starttest_e(v244, v245);
LABEL_121:
          OUTLINED_FUNCTION_24_18();
          move_f(v285);
          v192 = OUTLINED_FUNCTION_7_26();
          v194 = 60;
LABEL_122:
          move_i(v192, v193, v194);
          OUTLINED_FUNCTION_24_18();
          if (!setdur())
          {
LABEL_124:
            v14 = 0;
            goto LABEL_4;
          }

LABEL_123:
          v51 = v24;
LABEL_17:
          v45 = *(a1 + 104);
          if (v45)
          {
            v46 = OUTLINED_FUNCTION_40_7(v45);
            v24 = v47;
          }

          else
          {
            v46 = vback(a1, v51);
            v24 = 0;
          }

          v14 = 0;
          v37 = v24;
          v48 = v24;
          v49 = v24;
          switch(v46)
          {
            case 1:
              continue;
            case 2:
              v16 = v24;
              goto LABEL_11;
            case 3:
              v50 = advance_tok(a1, v47, v24, v24);
              v37 = v24;
              v51 = v24;
              if (!v50)
              {
                goto LABEL_12;
              }

              goto LABEL_17;
            case 4:
              goto LABEL_12;
            case 5:
              bspop_boa(a1);
              v56 = OUTLINED_FUNCTION_23_18();
              v59 = lpta_loadp_setscan_r(v56, v57, v58);
              v51 = v24;
              if (v59)
              {
                goto LABEL_17;
              }

              OUTLINED_FUNCTION_1_28();
              v60 = test_string_s();
              v51 = v24;
              if (v60)
              {
                goto LABEL_17;
              }

              goto LABEL_27;
            case 6:
            case 14:
            case 21:
              goto LABEL_14;
            case 7:
LABEL_27:
              v61 = OUTLINED_FUNCTION_21_18();
              v64 = test_synch(v61, v62, 1, v63);
              v51 = v24;
              if (v64)
              {
                goto LABEL_17;
              }

              v65 = OUTLINED_FUNCTION_21_18();
              starttest_e(v65, v66);
              OUTLINED_FUNCTION_24_18();
              move_f(v67);
              v68 = OUTLINED_FUNCTION_7_26();
              v70 = 60;
              goto LABEL_37;
            case 8:
            case 9:
            case 17:
            case 23:
              goto LABEL_61;
            case 10:
              v31 = v24;
              goto LABEL_60;
            case 11:
              goto LABEL_7;
            case 12:
              goto LABEL_8;
            case 13:
              bspop_boa(a1);
              v102 = OUTLINED_FUNCTION_23_18();
              v105 = lpta_loadp_setscan_r(v102, v103, v104);
              v51 = v24;
              if (v105)
              {
                goto LABEL_17;
              }

              v106 = OUTLINED_FUNCTION_1_28();
              v109 = testFldeq(v106, v107, v108, 2);
              v51 = v24;
              if (v109)
              {
                goto LABEL_17;
              }

              v112 = advance_tok(a1, v24, v110, v111);
              v51 = v24;
              if (v112)
              {
                goto LABEL_17;
              }

              v113 = OUTLINED_FUNCTION_2_28();
              v117 = testFldeq(v113, v114, v115, v116);
              v51 = v24;
              if (v117)
              {
                goto LABEL_17;
              }

              v120 = advance_tok(a1, v24, v118, v119);
              v51 = v24;
              if (v120)
              {
                goto LABEL_17;
              }

              v121 = OUTLINED_FUNCTION_21_18();
              bspush_ca_scan(v121, v122);
              goto LABEL_35;
            case 15:
              OUTLINED_FUNCTION_1_28();
              v89 = test_string_s();
              v51 = v24;
              if (v89)
              {
                goto LABEL_17;
              }

              goto LABEL_35;
            case 16:
LABEL_35:
              v90 = OUTLINED_FUNCTION_21_18();
              v93 = test_synch(v90, v91, 1, v92);
              v51 = v24;
              if (v93)
              {
                goto LABEL_17;
              }

              v94 = OUTLINED_FUNCTION_21_18();
              starttest_e(v94, v95);
              OUTLINED_FUNCTION_24_18();
              move_f(v96);
              v68 = OUTLINED_FUNCTION_7_26();
              v70 = 70;
              goto LABEL_37;
            case 18:
              goto LABEL_81;
            case 19:
              goto LABEL_82;
            case 20:
              bspop_boa(a1);
              v71 = OUTLINED_FUNCTION_23_18();
              v74 = lpta_loadp_setscan_r(v71, v72, v73);
              v51 = v24;
              if (v74)
              {
                goto LABEL_17;
              }

              v75 = OUTLINED_FUNCTION_1_28();
              v78 = testFldeq(v75, v76, v77, 2);
              v51 = v24;
              if (v78)
              {
                goto LABEL_17;
              }

              v81 = advance_tok(a1, v24, v79, v80);
              v51 = v24;
              if (v81)
              {
                goto LABEL_17;
              }

              goto LABEL_32;
            case 22:
LABEL_32:
              v82 = OUTLINED_FUNCTION_21_18();
              v85 = test_synch(v82, v83, 1, v84);
              v51 = v24;
              if (v85)
              {
                goto LABEL_17;
              }

              v86 = OUTLINED_FUNCTION_21_18();
              starttest_e(v86, v87);
              OUTLINED_FUNCTION_24_18();
              move_f(v88);
              v68 = OUTLINED_FUNCTION_7_26();
              v70 = 65;
LABEL_37:
              move_i(v68, v69, v70);
              OUTLINED_FUNCTION_24_18();
              v97 = setdur();
              v48 = v24;
              v51 = v24;
              if (!v97)
              {
                goto LABEL_61;
              }

              goto LABEL_17;
            case 24:
              goto LABEL_63;
            case 25:
            case 26:
            case 28:
            case 30:
            case 32:
            case 35:
            case 37:
            case 40:
            case 44:
            case 47:
            case 52:
            case 53:
            case 56:
            case 59:
              goto LABEL_4;
            case 27:
              goto LABEL_65;
            case 29:
              goto LABEL_66;
            case 31:
              goto LABEL_67;
            case 33:
              v139 = v24;
              goto LABEL_68;
            case 34:
              goto LABEL_88;
            case 36:
              goto LABEL_70;
            case 38:
              v137 = v24;
              goto LABEL_71;
            case 39:
              goto LABEL_95;
            case 41:
              v137 = v24;
              goto LABEL_73;
            case 42:
              v123 = advance_tok(a1, v47, v24, v24);
              v49 = v24;
              v51 = v24;
              if (!v123)
              {
                goto LABEL_114;
              }

              goto LABEL_17;
            case 43:
              goto LABEL_114;
            case 45:
              v138 = v24;
              goto LABEL_76;
            case 46:
              goto LABEL_109;
            case 48:
              v138 = v24;
              goto LABEL_80;
            case 49:
              goto LABEL_118;
            case 50:
              bspop_boa(a1);
              OUTLINED_FUNCTION_21_18();
              bspush_ca_scan_boa();
              v124 = OUTLINED_FUNCTION_6_26();
              if (testFldeq(v124, v125, v126, 19))
              {
                v51 = v24;
              }

              else
              {
                v51 = 1;
              }

              goto LABEL_17;
            case 51:
              bspop_boa(a1);
              v130 = advance_tok(a1, v127, v128, v129);
              v51 = v24;
              if (v130)
              {
                goto LABEL_17;
              }

              goto LABEL_53;
            case 54:
              goto LABEL_119;
            case 55:
              bspop_boa(a1);
              v101 = advance_tok(a1, v98, v99, v100);
              v51 = v24;
              if (v101)
              {
                goto LABEL_17;
              }

              goto LABEL_53;
            case 57:
              goto LABEL_120;
            case 58:
              bspop_boa(a1);
              v55 = advance_tok(a1, v52, v53, v54);
              v51 = v24;
              if (v55)
              {
                goto LABEL_17;
              }

LABEL_53:
              v131 = OUTLINED_FUNCTION_21_18();
              starttest_e(v131, v132);
              OUTLINED_FUNCTION_24_18();
              move_f(v133);
              v134 = OUTLINED_FUNCTION_7_26();
              move_i(v134, v135, 30);
              OUTLINED_FUNCTION_24_18();
              v136 = setdur();
              v51 = v24;
              if (!v136)
              {
                goto LABEL_124;
              }

              goto LABEL_17;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

LABEL_63:
      v147 = OUTLINED_FUNCTION_50_5();
      lpta_loadpn(v147, v148);
      OUTLINED_FUNCTION_78_4();
      if (!compare_ptas(a1) && !testeq(a1))
      {
        goto LABEL_115;
      }

LABEL_65:
      OUTLINED_FUNCTION_43_6();
      if (following_minor_phrase_edge())
      {
LABEL_66:
        v149 = OUTLINED_FUNCTION_21_18();
        starttest(v149, v150);
        v151 = OUTLINED_FUNCTION_3_27();
        if (!lpta_loadp_setscan_r(v151, v152, v153))
        {
          v195 = OUTLINED_FUNCTION_5_26();
          if (testFldeq(v195, v196, v197, v198) || advance_tok(a1, v199, v200, v201))
          {
            goto LABEL_123;
          }

          goto LABEL_115;
        }

LABEL_67:
        v154 = OUTLINED_FUNCTION_21_18();
        starttest(v154, v155);
        v156 = OUTLINED_FUNCTION_25_17();
        v159 = lpta_loadp_setscan_l(v156, v157, v158);
        v139 = v24;
        if (!v159)
        {
LABEL_88:
          OUTLINED_FUNCTION_58_5(34, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v359[0]);
          if (advance_tok(a1, v202, v203, v204))
          {
            goto LABEL_123;
          }

          OUTLINED_FUNCTION_41_6();
          v205 = OUTLINED_FUNCTION_4_26();
          if (test_ptr(v205, v206, v207))
          {
            goto LABEL_123;
          }

          v208 = OUTLINED_FUNCTION_37_10();
          if (lpta_loadp_setscan_r(v208, v209, v210))
          {
            goto LABEL_123;
          }

          v211 = OUTLINED_FUNCTION_31_13();
          if (npush_fld(v211, 7u, v212))
          {
            goto LABEL_123;
          }

          v213 = OUTLINED_FUNCTION_44_6();
          npush_i(v213);
          if (if_testeq(a1, v214, v215, v216, v217, v218, v219, v220) || advance_tok(a1, v221, v222, v223))
          {
            goto LABEL_123;
          }

          v224 = OUTLINED_FUNCTION_21_18();
          starttest_e(v224, v225);
          OUTLINED_FUNCTION_24_18();
          move_f(v226);
          v192 = OUTLINED_FUNCTION_7_26();
          v194 = 80;
          goto LABEL_122;
        }

LABEL_68:
        LODWORD(v24) = v139;
        v160 = OUTLINED_FUNCTION_21_18();
        starttest(v160, v161);
        v162 = OUTLINED_FUNCTION_0_30();
        if (lpta_loadp_setscan_l(v162, v163, v164) || (OUTLINED_FUNCTION_1_28(), test_string_s()))
        {
LABEL_70:
          v137 = v24;
          v165 = OUTLINED_FUNCTION_21_18();
          starttest(v165, v166);
          v167 = OUTLINED_FUNCTION_0_30();
          if (lpta_loadp_setscan_l(v167, v168, v169))
          {
LABEL_71:
            v170 = OUTLINED_FUNCTION_21_18();
            starttest(v170, v171);
            v172 = OUTLINED_FUNCTION_3_27();
            if (lpta_loadp_setscan_r(v172, v173, v174) || (OUTLINED_FUNCTION_1_28(), test_string_s()))
            {
LABEL_73:
              v175 = OUTLINED_FUNCTION_21_18();
              starttest(v175, v176);
              OUTLINED_FUNCTION_43_6();
              if (is_open_class() || (v177 = OUTLINED_FUNCTION_3_27(), lpta_loadp_setscan_r(v177, v178, v179)))
              {
                v138 = v137;
LABEL_76:
                v180 = OUTLINED_FUNCTION_0_30();
                if (lpta_loadp_setscan_l(v180, v181, v182) || (OUTLINED_FUNCTION_8_26(), test_string_s()) || (*(a1 + 136) = 1, v183 = OUTLINED_FUNCTION_4_26(), test_ptr(v183, v184, v185)) || (OUTLINED_FUNCTION_22_18(), test_string_s()))
                {
LABEL_80:
                  LODWORD(v24) = v138;
LABEL_120:
                  v283 = OUTLINED_FUNCTION_21_18();
                  starttest(v283, v284);
                  goto LABEL_121;
                }

                v268 = OUTLINED_FUNCTION_21_18();
                starttest(v268, v269);
                v270 = OUTLINED_FUNCTION_0_30();
                if (!lpta_loadp_setscan_r(v270, v271, v272))
                {
                  v299 = OUTLINED_FUNCTION_1_28();
                  if (testFldeq(v299, v300, v301, 1))
                  {
                    LODWORD(v24) = v138;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_21_18();
                    bspush_ca_scan_boa();
                    v302 = OUTLINED_FUNCTION_15_23();
                    if (testFldeq(v302, v303, 2, v304))
                    {
                      LODWORD(v24) = v138;
                    }

                    else
                    {
                      LODWORD(v24) = 1;
                    }
                  }

                  goto LABEL_123;
                }

                LODWORD(v24) = v138;
LABEL_118:
                v273 = OUTLINED_FUNCTION_21_18();
                starttest(v273, v274);
                v275 = OUTLINED_FUNCTION_0_30();
                if (lpta_loadp_setscan_r(v275, v276, v277))
                {
LABEL_119:
                  v278 = OUTLINED_FUNCTION_21_18();
                  starttest(v278, v279);
                  v280 = OUTLINED_FUNCTION_0_30();
                  if (lpta_loadp_setscan_r(v280, v281, v282))
                  {
                    goto LABEL_120;
                  }

                  v286 = OUTLINED_FUNCTION_1_28();
                  if (testFldeq(v286, v287, v288, 1))
                  {
                    goto LABEL_123;
                  }

                  OUTLINED_FUNCTION_21_18();
                  bspush_ca_scan_boa();
                  v289 = OUTLINED_FUNCTION_6_26();
                  v292 = 18;
                }

                else
                {
                  v293 = OUTLINED_FUNCTION_1_28();
                  if (testFldeq(v293, v294, v295, 1))
                  {
                    goto LABEL_123;
                  }

                  v296 = OUTLINED_FUNCTION_15_23();
                  if (testFldeq(v296, v297, 2, v298))
                  {
                    goto LABEL_123;
                  }

                  OUTLINED_FUNCTION_21_18();
                  bspush_ca_scan_boa();
                  v289 = OUTLINED_FUNCTION_15_23();
                  v291 = 3;
                }

                v44 = testFldeq(v289, v290, v291, v292);
                goto LABEL_15;
              }

              OUTLINED_FUNCTION_1_28();
              LODWORD(v24) = v137;
              v138 = v137;
              if (test_string_s())
              {
                goto LABEL_76;
              }

LABEL_109:
              v251 = OUTLINED_FUNCTION_21_18();
              if (test_synch(v251, v252, 1, v253))
              {
                goto LABEL_123;
              }

              v254 = OUTLINED_FUNCTION_1_28();
              if (testFldeq(v254, v255, v256, 2) || advance_tok(a1, v257, v258, v259))
              {
                goto LABEL_123;
              }
            }

            else
            {
              v260 = OUTLINED_FUNCTION_21_18();
              bspush_ca_scan(v260, v261);
              v49 = v137;
LABEL_114:
              LODWORD(v24) = v49;
              v262 = OUTLINED_FUNCTION_21_18();
              if (test_synch(v262, v263, 1, v264))
              {
                goto LABEL_123;
              }
            }
          }

          else
          {
LABEL_95:
            OUTLINED_FUNCTION_58_5(39, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v359[0]);
            OUTLINED_FUNCTION_1_28();
            if (test_string_s())
            {
              goto LABEL_123;
            }

            OUTLINED_FUNCTION_22_18();
            OUTLINED_FUNCTION_76_4();
            if (testFldeq(v227, v228, v229, v230))
            {
              goto LABEL_123;
            }

            if (advance_tok(a1, v231, v232, v233))
            {
              goto LABEL_123;
            }

            v234 = OUTLINED_FUNCTION_23_18();
            if (lpta_loadp_setscan_r(v234, v235, v236))
            {
              goto LABEL_123;
            }

            OUTLINED_FUNCTION_22_18();
            OUTLINED_FUNCTION_76_4();
            if (testFldeq(v237, v238, v239, v240) || advance_tok(a1, v241, v242, v243))
            {
              goto LABEL_123;
            }
          }

LABEL_115:
          v265 = OUTLINED_FUNCTION_21_18();
          starttest_e(v265, v266);
          OUTLINED_FUNCTION_24_18();
          move_f(v267);
          v192 = OUTLINED_FUNCTION_7_26();
          v194 = 70;
          goto LABEL_122;
        }

        v246 = OUTLINED_FUNCTION_22_18();
        if (testFldeq(v246, v247, 6, 1) || advance_tok(a1, v248, v249, v250))
        {
          goto LABEL_123;
        }
      }

      v189 = OUTLINED_FUNCTION_21_18();
      starttest_e(v189, v190);
      OUTLINED_FUNCTION_24_18();
      move_f(v191);
      v192 = OUTLINED_FUNCTION_7_26();
      v194 = 65;
      goto LABEL_122;
    }
  }

LABEL_3:
  v14 = 94;
LABEL_4:
  vretproc(a1);
  return v14;
}

uint64_t shorten_unstress(uint64_t a1)
{
  v294 = *MEMORY[0x277D85DE8];
  v291 = 0;
  v292 = 0;
  v290 = 0;
  v287 = 0;
  v288 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v286, v2);
  OUTLINED_FUNCTION_38_9();
  bzero(v293, v3);
  if (setjmp(v293))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_56_5();
  v8 = ventproc(a1, v4, v5, v6, v7, v293);
  if (v8)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_63_4(v8, v9, v10, v11, v12, v13, v14, v15, v284, v286[0], v286[1], v286[2], v286[3], v286[4], v286[5], v286[6], v286[7], v286[8], v286[9], v286[10], v286[11], v286[12], v286[13], v286[14], v286[15], v286[16], v286[17], v286[18], v286[19], v286[20], v286[21], v286[22], v287, v288, v289, v290, v291, v292);
  fence_26(a1, 0, &null_str_7);
  v17 = OUTLINED_FUNCTION_51_5();
  fence_26(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_52_5();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_3_27();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    v89 = OUTLINED_FUNCTION_22_18();
    if (!OUTLINED_FUNCTION_65_4(v89, v90) && !advance_tok(a1, v91, v92, v93))
    {
LABEL_3:
      vretproc(a1);
      return 94;
    }

    goto LABEL_28;
  }

  while (2)
  {
    v25 = OUTLINED_FUNCTION_16_22();
    starttest(v25, v26);
    OUTLINED_FUNCTION_34_11();
    if (!(v28 ^ v29 | v27))
    {
      v30 = OUTLINED_FUNCTION_25_17();
      if (!lpta_loadp_setscan_r(v30, v31, v32))
      {
        v71 = OUTLINED_FUNCTION_31_13();
        if (npush_fld(v71, 7u, v72))
        {
          goto LABEL_28;
        }

        v73 = OUTLINED_FUNCTION_32_12();
        npush_i(v73);
        if (if_testeq(a1, v74, v75, v76, v77, v78, v79, v80) || advance_tok(a1, v81, v82, v83))
        {
          goto LABEL_28;
        }

        v84 = OUTLINED_FUNCTION_43_6();
        lpta_loadpn(v84, v85);
        rpta_loadpn(a1, a1 + 800);
        if (!compare_ptas(a1) && !testeq(a1))
        {
          if (!is_simple_nucleus(a1))
          {
            v86 = OUTLINED_FUNCTION_21_18();
            starttest_e(v86, v87);
            OUTLINED_FUNCTION_24_18();
            move_f(v88);
            v68 = OUTLINED_FUNCTION_11_25();
            v70 = 40;
            goto LABEL_79;
          }

LABEL_66:
          v207 = OUTLINED_FUNCTION_52_5();
          starttest(v207, v208);
          v209 = OUTLINED_FUNCTION_50_5();
          if (lpta_loadp_setscan_r(v209, v210, 7))
          {
LABEL_67:
            v211 = OUTLINED_FUNCTION_18_20();
            starttest(v211, v212);
LABEL_68:
            OUTLINED_FUNCTION_24_18();
            move_f(v213);
            v68 = OUTLINED_FUNCTION_11_25();
            v70 = 55;
            goto LABEL_79;
          }

          v266 = OUTLINED_FUNCTION_31_13();
          if (npush_fld(v266, 7u, v267))
          {
            goto LABEL_28;
          }

          v268 = OUTLINED_FUNCTION_33_12();
          npush_i(v268);
          if (if_testeq(a1, v269, v270, v271, v272, v273, v274, v275) || advance_tok(a1, v276, v277, v278))
          {
            goto LABEL_28;
          }

LABEL_89:
          v279 = OUTLINED_FUNCTION_21_18();
          starttest_e(v279, v280);
          goto LABEL_68;
        }

LABEL_51:
        v158 = OUTLINED_FUNCTION_21_18();
        starttest(v158, v159);
        v160 = OUTLINED_FUNCTION_37_10();
        if (lpta_loadp_setscan_r(v160, v161, v162))
        {
LABEL_52:
          v163 = OUTLINED_FUNCTION_21_18();
          starttest(v163, v164);
          v165 = OUTLINED_FUNCTION_25_17();
          if (lpta_loadp_setscan_l(v165, v166, v167))
          {
LABEL_53:
            v168 = OUTLINED_FUNCTION_21_18();
            starttest(v168, v169);
            v170 = OUTLINED_FUNCTION_25_17();
            if (!lpta_loadp_setscan_l(v170, v171, v172))
            {
LABEL_55:
              v175 = OUTLINED_FUNCTION_21_18();
              if (!test_synch(v175, v176, 1, v177))
              {
                v178 = OUTLINED_FUNCTION_31_13();
                if (!npush_fld(v178, 7u, v179))
                {
                  v180 = OUTLINED_FUNCTION_32_12();
                  npush_i(v180);
                  if (!if_testeq(a1, v181, v182, v183, v184, v185, v186, v187) && !advance_tok(a1, v188, v189, v190))
                  {
                    if (!is_simple_nucleus(a1))
                    {
                      v281 = OUTLINED_FUNCTION_21_18();
                      starttest_e(v281, v282);
                      OUTLINED_FUNCTION_24_18();
                      move_f(v283);
                      v68 = OUTLINED_FUNCTION_11_25();
                      v70 = 45;
                      goto LABEL_79;
                    }

LABEL_60:
                    v191 = OUTLINED_FUNCTION_21_18();
                    starttest(v191, v192);
                    OUTLINED_FUNCTION_24_18();
                    move_f(v193);
                    v68 = OUTLINED_FUNCTION_11_25();
                    v70 = 50;
                    goto LABEL_79;
                  }
                }
              }

LABEL_28:
              v94 = *(a1 + 104);
              if (v94)
              {
                v95 = OUTLINED_FUNCTION_40_7(v94);
              }

              else
              {
                v99 = OUTLINED_FUNCTION_32_12();
                v95 = vback(v99, v100);
              }

              switch(v95)
              {
                case 1:
                  continue;
                case 2:
                  goto LABEL_7;
                case 3:
                  goto LABEL_51;
                case 4:
                  goto LABEL_66;
                case 5:
                case 6:
                case 8:
                case 9:
                case 13:
                case 14:
                case 16:
                case 20:
                case 21:
                case 22:
                case 25:
                case 26:
                case 27:
                case 32:
                case 34:
                case 37:
                  goto LABEL_80;
                case 7:
                  goto LABEL_67;
                case 10:
                  goto LABEL_52;
                case 11:
                  goto LABEL_77;
                case 12:
                  goto LABEL_81;
                case 15:
                  goto LABEL_53;
                case 17:
                  break;
                case 18:
                  goto LABEL_55;
                case 19:
                case 35:
                  goto LABEL_60;
                case 23:
                  goto LABEL_39;
                case 24:
                  goto LABEL_61;
                case 28:
                  goto LABEL_40;
                case 29:
                  goto LABEL_43;
                case 30:
                  v101 = OUTLINED_FUNCTION_6_26();
                  v104 = 30;
                  goto LABEL_33;
                case 31:
                  goto LABEL_34;
                case 33:
                  goto LABEL_41;
                case 36:
                  goto LABEL_44;
                default:
                  goto LABEL_3;
              }
            }

            v173 = OUTLINED_FUNCTION_20_18();
            starttest(v173, v174);
          }

          else
          {
            v214 = OUTLINED_FUNCTION_31_13();
            if (npush_fld(v214, 7u, v215))
            {
              goto LABEL_28;
            }

            v216 = OUTLINED_FUNCTION_33_12();
            npush_i(v216);
            if (if_testeq(a1, v217, v218, v219, v220, v221, v222, v223) || advance_tok(a1, v224, v225, v226))
            {
              goto LABEL_28;
            }

            v227 = OUTLINED_FUNCTION_21_18();
            starttest_e(v227, v228);
          }
        }

        else
        {
          v229 = OUTLINED_FUNCTION_31_13();
          if (npush_fld(v229, 7u, v230))
          {
            goto LABEL_28;
          }

          v231 = OUTLINED_FUNCTION_33_12();
          npush_i(v231);
          if (if_testeq(a1, v232, v233, v234, v235, v236, v237, v238) || advance_tok(a1, v239, v240, v241))
          {
            goto LABEL_28;
          }

          v242 = OUTLINED_FUNCTION_21_18();
          starttest(v242, v243);
          v244 = OUTLINED_FUNCTION_25_17();
          if (!lpta_loadp_setscan_l(v244, v245, v246))
          {
LABEL_81:
            v250 = OUTLINED_FUNCTION_21_18();
            if (test_synch(v250, v251, 1, v252))
            {
              goto LABEL_28;
            }

            v253 = OUTLINED_FUNCTION_31_13();
            if (npush_fld(v253, 7u, v254))
            {
              goto LABEL_28;
            }

            v255 = OUTLINED_FUNCTION_32_12();
            npush_i(v255);
            if (if_testeq(a1, v256, v257, v258, v259, v260, v261, v262) || advance_tok(a1, v263, v264, v265))
            {
              goto LABEL_28;
            }

            goto LABEL_89;
          }

LABEL_77:
          v247 = OUTLINED_FUNCTION_21_18();
          starttest(v247, v248);
        }

        OUTLINED_FUNCTION_24_18();
        move_f(v249);
        v68 = OUTLINED_FUNCTION_11_25();
        v70 = 60;
        goto LABEL_79;
      }
    }

    break;
  }

LABEL_7:
  v33 = OUTLINED_FUNCTION_21_18();
  starttest(v33, v34);
  OUTLINED_FUNCTION_34_11();
  if (v28 == v29)
  {
    goto LABEL_80;
  }

  v35 = OUTLINED_FUNCTION_25_17();
  if (lpta_loadp_setscan_r(v35, v36, v37))
  {
    goto LABEL_80;
  }

  v38 = OUTLINED_FUNCTION_31_13();
  if (npush_fld(v38, 7u, v39))
  {
    goto LABEL_28;
  }

  v40 = OUTLINED_FUNCTION_32_12();
  npush_i(v40);
  if (if_testeq(a1, v41, v42, v43, v44, v45, v46, v47) || advance_tok(a1, v48, v49, v50))
  {
    goto LABEL_28;
  }

  v51 = OUTLINED_FUNCTION_28_14();
  lpta_loadpn(v51, v52);
  OUTLINED_FUNCTION_78_4();
  if (compare_ptas(a1) || testeq(a1))
  {
LABEL_39:
    v117 = OUTLINED_FUNCTION_21_18();
    starttest(v117, v118);
    v119 = OUTLINED_FUNCTION_0_30();
    if (lpta_loadp_setscan_l(v119, v120, v121))
    {
LABEL_40:
      v122 = OUTLINED_FUNCTION_21_18();
      starttest(v122, v123);
      v124 = OUTLINED_FUNCTION_0_30();
      if (lpta_loadp_setscan_l(v124, v125, v126))
      {
LABEL_41:
        v127 = OUTLINED_FUNCTION_21_18();
        starttest(v127, v128);
        v129 = OUTLINED_FUNCTION_25_17();
        if (lpta_loadp_setscan_l(v129, v130, v131))
        {
          goto LABEL_60;
        }

LABEL_44:
        OUTLINED_FUNCTION_49_5(36, v285, v286[0], v286[1], v286[2], v286[3], v286[4], v286[5], v286[6], v286[7], v286[8], v286[9], v286[10], v286[11], v286[12], v286[13], v286[14], v286[15], v286[16], v286[17], v286[18], v286[19], v286[20], v286[21], v286[22], v287);
        v134 = OUTLINED_FUNCTION_31_13();
        if (!npush_fld(v134, 7u, v135))
        {
          v136 = OUTLINED_FUNCTION_32_12();
          npush_i(v136);
          if (!if_testeq(a1, v137, v138, v139, v140, v141, v142, v143) && !advance_tok(a1, v144, v145, v146))
          {
            v147 = OUTLINED_FUNCTION_37_10();
            if (!lpta_loadp_setscan_r(v147, v148, v149) && !advance_tok(a1, v150, v151, v152))
            {
              OUTLINED_FUNCTION_41_6();
              v153 = OUTLINED_FUNCTION_4_26();
              if (!test_ptr(v153, v154, v155))
              {
                v156 = OUTLINED_FUNCTION_21_18();
                starttest_e(v156, v157);
LABEL_62:
                OUTLINED_FUNCTION_24_18();
                move_f(v196);
                v68 = OUTLINED_FUNCTION_11_25();
                v70 = 80;
                goto LABEL_79;
              }
            }
          }
        }
      }

      else
      {
        v197 = OUTLINED_FUNCTION_2_28();
        if (!testFldeq(v197, v198, v199, v200) && !advance_tok(a1, v201, v202, v203))
        {
          v204 = OUTLINED_FUNCTION_21_18();
          starttest_e(v204, v205);
          OUTLINED_FUNCTION_24_18();
          move_f(v206);
          v68 = OUTLINED_FUNCTION_11_25();
          v70 = 90;
          goto LABEL_79;
        }
      }
    }

    else
    {
LABEL_43:
      OUTLINED_FUNCTION_49_5(29, v285, v286[0], v286[1], v286[2], v286[3], v286[4], v286[5], v286[6], v286[7], v286[8], v286[9], v286[10], v286[11], v286[12], v286[13], v286[14], v286[15], v286[16], v286[17], v286[18], v286[19], v286[20], v286[21], v286[22], v287);
      v132 = OUTLINED_FUNCTION_21_18();
      bspush_ca_scan(v132, v133);
      v101 = OUTLINED_FUNCTION_6_26();
      v104 = 28;
LABEL_33:
      if (!testFldeq(v101, v102, v103, v104))
      {
LABEL_34:
        if (!advance_tok(a1, v96, v97, v98))
        {
          v105 = OUTLINED_FUNCTION_23_18();
          if (!lpta_loadp_setscan_r(v105, v106, v107))
          {
            v108 = OUTLINED_FUNCTION_6_26();
            if (!testFldeq(v108, v109, v110, 37) && !advance_tok(a1, v111, v112, v113))
            {
              v114 = OUTLINED_FUNCTION_21_18();
              starttest_e(v114, v115);
              OUTLINED_FUNCTION_24_18();
              move_f(v116);
              v68 = OUTLINED_FUNCTION_11_25();
              v70 = 130;
              goto LABEL_79;
            }
          }
        }
      }
    }

    goto LABEL_28;
  }

  v53 = OUTLINED_FUNCTION_21_18();
  starttest(v53, v54);
  v55 = OUTLINED_FUNCTION_0_30();
  if (lpta_loadp_setscan_l(v55, v56, v57))
  {
LABEL_61:
    v194 = OUTLINED_FUNCTION_21_18();
    starttest(v194, v195);
    goto LABEL_62;
  }

  v58 = OUTLINED_FUNCTION_2_28();
  if (testFldeq(v58, v59, v60, v61) || advance_tok(a1, v62, v63, v64))
  {
    goto LABEL_28;
  }

  v65 = OUTLINED_FUNCTION_21_18();
  starttest_e(v65, v66);
  OUTLINED_FUNCTION_24_18();
  move_f(v67);
  v68 = OUTLINED_FUNCTION_11_25();
  v70 = 95;
LABEL_79:
  move_i(v68, v69, v70);
  OUTLINED_FUNCTION_24_18();
  if (setdur())
  {
    goto LABEL_28;
  }

LABEL_80:
  vretproc(a1);
  return 0;
}

uint64_t shorten_adjacent_vows(void *a1)
{
  v379 = *MEMORY[0x277D85DE8];
  v376 = 0;
  v377 = 0;
  v375 = 0;
  v372 = 0;
  v373 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v371, v2);
  OUTLINED_FUNCTION_38_9();
  bzero(v378, v3);
  if (!setjmp(v378))
  {
    OUTLINED_FUNCTION_56_5();
    v8 = ventproc(a1, v4, v5, v6, v7, v378);
    if (!v8)
    {
      v19 = OUTLINED_FUNCTION_63_4(v8, v9, v10, v11, v12, v13, v14, v15, v369, *v371, *&v371[8], *&v371[16], *&v371[24], *&v371[32], *&v371[40], *&v371[48], *&v371[56], *&v371[64], *&v371[72], *&v371[80], *&v371[88], *&v371[96], *&v371[104], *&v371[112], *&v371[120], *&v371[128], *&v371[136], *&v371[144], *&v371[152], *&v371[160], *&v371[168], *&v371[176], v372, v373, v374, v375, v376, v377);
      v20 = 0;
      v22 = OUTLINED_FUNCTION_64_4(v19, v21, &null_str_7);
      OUTLINED_FUNCTION_54_5(v22, v23, &_MergedGlobals_23);
      OUTLINED_FUNCTION_69_4();
      v24 = OUTLINED_FUNCTION_0_30();
      if (lpta_loadp_setscan_r(v24, v25, v26))
      {
        while (2)
        {
          v27 = OUTLINED_FUNCTION_21_18();
          starttest(v27, v28);
          v29 = OUTLINED_FUNCTION_3_27();
          LODWORD(v32) = v20;
          if (lpta_loadp_setscan_l(v29, v30, v31))
          {
LABEL_98:
            v304 = OUTLINED_FUNCTION_28_14();
            lpta_loadpn(v304, v305);
            v306 = OUTLINED_FUNCTION_62_4();
            rpta_loadpn(v306, v307);
            if (compare_ptas(a1) || testeq(a1))
            {
LABEL_100:
              v308 = OUTLINED_FUNCTION_21_18();
              starttest(v308, v309);
              v310 = OUTLINED_FUNCTION_3_27();
              LODWORD(v32) = v20;
              if (!lpta_loadp_setscan_l(v310, v311, v312))
              {
LABEL_103:
                OUTLINED_FUNCTION_49_5(38, v370, *v371, *&v371[8], *&v371[16], *&v371[24], *&v371[32], *&v371[40], *&v371[48], *&v371[56], *&v371[64], *&v371[72], *&v371[80], *&v371[88], *&v371[96], *&v371[104], *&v371[112], *&v371[120], *&v371[128], *&v371[136], *&v371[144], *&v371[152], *&v371[160], *&v371[168], *&v371[176], v372);
                OUTLINED_FUNCTION_21_18();
                bspush_ca_scan_boa();
                goto LABEL_104;
              }

LABEL_101:
              v313 = OUTLINED_FUNCTION_21_18();
              starttest(v313, v314);
              v315 = OUTLINED_FUNCTION_3_27();
              LODWORD(v32) = v20;
              if (!lpta_loadp_setscan_l(v315, v316, v317))
              {
LABEL_102:
                OUTLINED_FUNCTION_49_5(42, v370, *v371, *&v371[8], *&v371[16], *&v371[24], *&v371[32], *&v371[40], *&v371[48], *&v371[56], *&v371[64], *&v371[72], *&v371[80], *&v371[88], *&v371[96], *&v371[104], *&v371[112], *&v371[120], *&v371[128], *&v371[136], *&v371[144], *&v371[152], *&v371[160], *&v371[168], *&v371[176], v372);
                OUTLINED_FUNCTION_21_18();
                bspush_ca_scan_boa();
                goto LABEL_104;
              }
            }

            else
            {
              v322 = OUTLINED_FUNCTION_21_18();
              starttest(v322, v323);
              v324 = OUTLINED_FUNCTION_0_30();
              LODWORD(v32) = v20;
              if (!lpta_loadp_setscan_l(v324, v325, v326))
              {
LABEL_122:
                OUTLINED_FUNCTION_49_5(27, v370, *v371, *&v371[8], *&v371[16], *&v371[24], *&v371[32], *&v371[40], *&v371[48], *&v371[56], *&v371[64], *&v371[72], *&v371[80], *&v371[88], *&v371[96], *&v371[104], *&v371[112], *&v371[120], *&v371[128], *&v371[136], *&v371[144], *&v371[152], *&v371[160], *&v371[168], *&v371[176], v372);
                OUTLINED_FUNCTION_21_18();
                bspush_ca_scan_boa();
                v362 = OUTLINED_FUNCTION_5_26();
                v321 = testFldeq(v362, v363, v364, v365);
LABEL_105:
                if (v321)
                {
                  LODWORD(v20) = v32;
                }

                else
                {
                  LODWORD(v20) = 1;
                }

                goto LABEL_108;
              }

LABEL_110:
              v327 = OUTLINED_FUNCTION_21_18();
              starttest(v327, v328);
              v329 = OUTLINED_FUNCTION_0_30();
              if (!lpta_loadp_setscan_r(v329, v330, v331))
              {
                v332 = OUTLINED_FUNCTION_1_28();
                if (!testFldeq(v332, v333, v334, 2))
                {
                  v335 = OUTLINED_FUNCTION_22_18();
                  if (!npush_fld(v335, v336, 8u))
                  {
                    v337 = OUTLINED_FUNCTION_44_6();
                    npush_i(v337);
                    if (!if_testeq(a1, v338, v339, v340, v341, v342, v343, v344) && !advance_tok(a1, v345, v346, v347))
                    {
                      v348 = OUTLINED_FUNCTION_21_18();
                      starttest(v348, v349);
                      v350 = OUTLINED_FUNCTION_0_30();
                      v32 = v20;
                      if (lpta_loadp_setscan_l(v350, v351, v352))
                      {
LABEL_91:
                        v297 = v20;
                        v298 = OUTLINED_FUNCTION_21_18();
                        starttest(v298, v299);
                        OUTLINED_FUNCTION_24_18();
                        move_f(v300);
                        v301 = OUTLINED_FUNCTION_11_25();
                        v303 = 80;
                      }

                      else
                      {
LABEL_116:
                        LODWORD(v20) = v32;
                        OUTLINED_FUNCTION_49_5(32, v370, *v371, *&v371[8], *&v371[16], *&v371[24], *&v371[32], *&v371[40], *&v371[48], *&v371[56], *&v371[64], *&v371[72], *&v371[80], *&v371[88], *&v371[96], *&v371[104], *&v371[112], *&v371[120], *&v371[128], *&v371[136], *&v371[144], *&v371[152], *&v371[160], *&v371[168], *&v371[176], v372);
                        v353 = OUTLINED_FUNCTION_21_18();
                        bspush_ca_scan(v353, v354);
                        v355 = OUTLINED_FUNCTION_6_26();
                        v358 = testFldeq(v355, v356, v357, 28);
                        v38 = v32;
                        if (v358)
                        {
                          goto LABEL_108;
                        }

LABEL_117:
                        v297 = v38;
                        if (advance_tok(a1, v35, v38, v36) || (v359 = OUTLINED_FUNCTION_23_18(), lpta_loadp_setscan_r(v359, v360, v361)) || (OUTLINED_FUNCTION_1_28(), test_string_s()))
                        {
                          LODWORD(v20) = v297;
                          goto LABEL_108;
                        }

                        v366 = OUTLINED_FUNCTION_21_18();
                        starttest_e(v366, v367);
                        OUTLINED_FUNCTION_24_18();
                        move_f(v368);
                        v301 = OUTLINED_FUNCTION_11_25();
                        v303 = 130;
                      }

                      move_i(v301, v302, v303);
                      OUTLINED_FUNCTION_24_18();
                      v16 = setdur();
                      LODWORD(v20) = v297;
                      if (!v16)
                      {
                        goto LABEL_4;
                      }
                    }
                  }
                }

LABEL_108:
                LODWORD(v35) = v20;
LABEL_9:
                v33 = a1[13];
                if (v33)
                {
                  v34 = OUTLINED_FUNCTION_40_7(v33);
                  v32 = v35;
                }

                else
                {
                  v34 = vback(a1, v35);
                  v32 = 0;
                }

                v37 = v34 - 1;
                v16 = 0;
                v38 = v32;
                switch(v37)
                {
                  case 0:
                    v20 = v32;
                    continue;
                  case 1:
                    bspop_boa(a1);
                    v39 = OUTLINED_FUNCTION_1_28();
                    v42 = testFldeq(v39, v40, v41, 2);
                    LODWORD(v35) = v32;
                    if (v42)
                    {
                      goto LABEL_9;
                    }

                    v43 = OUTLINED_FUNCTION_22_18();
                    v45 = npush_fld(v43, v44, 8u);
                    LODWORD(v35) = v32;
                    if (v45)
                    {
                      goto LABEL_9;
                    }

                    v46 = OUTLINED_FUNCTION_44_6();
                    npush_i(v46);
                    v54 = if_testeq(a1, v47, v48, v49, v50, v51, v52, v53);
                    LODWORD(v35) = v32;
                    if (v54)
                    {
                      goto LABEL_9;
                    }

                    v57 = advance_tok(a1, v32, v55, v56);
                    LODWORD(v35) = v32;
                    if (v57)
                    {
                      goto LABEL_9;
                    }

                    v58 = OUTLINED_FUNCTION_0_30();
                    if (lpta_loadp_setscan_l(v58, v59, v60))
                    {
                      goto LABEL_19;
                    }

                    OUTLINED_FUNCTION_19_19();
                    if (test_string_s())
                    {
                      goto LABEL_19;
                    }

                    goto LABEL_85;
                  case 2:
                  case 15:
                  case 39:
                  case 43:
                    goto LABEL_104;
                  case 3:
LABEL_19:
                    v61 = OUTLINED_FUNCTION_0_30();
                    if (lpta_loadp_setscan_l(v61, v62, v63))
                    {
                      goto LABEL_21;
                    }

                    OUTLINED_FUNCTION_19_19();
                    if (test_string_s())
                    {
                      goto LABEL_21;
                    }

                    goto LABEL_85;
                  case 4:
                  case 5:
                  case 7:
                  case 10:
                  case 11:
                  case 17:
                  case 18:
                  case 20:
                  case 23:
                  case 28:
                  case 29:
                  case 34:
                  case 35:
                  case 40:
                  case 46:
                    goto LABEL_4;
                  case 6:
LABEL_21:
                    v64 = OUTLINED_FUNCTION_18_20();
                    starttest(v64, v65);
                    v66 = OUTLINED_FUNCTION_0_30();
                    if (lpta_loadp_setscan_l(v66, v67, v68))
                    {
                      break;
                    }

                    v69 = OUTLINED_FUNCTION_20_18();
                    bspush_ca_scan(v69, v70);
LABEL_49:
                    OUTLINED_FUNCTION_1_28();
                    v188 = test_string_s();
                    LODWORD(v35) = v32;
                    if (v188)
                    {
                      goto LABEL_9;
                    }

LABEL_50:
                    v189 = OUTLINED_FUNCTION_21_18();
                    starttest(v189, v190);
                    OUTLINED_FUNCTION_24_18();
                    move_f(v191);
                    v185 = OUTLINED_FUNCTION_11_25();
                    v187 = 70;
                    goto LABEL_81;
                  case 8:
                    goto LABEL_49;
                  case 9:
                    goto LABEL_50;
                  case 12:
                    v20 = v32;
                    goto LABEL_98;
                  case 13:
                    goto LABEL_7;
                  case 14:
                    bspop_boa(a1);
                    v241 = OUTLINED_FUNCTION_22_18();
                    v243 = npush_fld(v241, v242, 8u);
                    LODWORD(v35) = v32;
                    if (v243)
                    {
                      goto LABEL_9;
                    }

                    v244 = OUTLINED_FUNCTION_44_6();
                    npush_i(v244);
                    v252 = if_testeq(a1, v245, v246, v247, v248, v249, v250, v251);
                    LODWORD(v35) = v32;
                    if (v252)
                    {
                      goto LABEL_9;
                    }

                    v255 = advance_tok(a1, v32, v253, v254);
                    LODWORD(v35) = v32;
                    if (v255)
                    {
                      goto LABEL_9;
                    }

                    v256 = OUTLINED_FUNCTION_23_18();
                    v259 = lpta_loadp_setscan_r(v256, v257, v258);
                    LODWORD(v35) = v32;
                    if (v259)
                    {
                      goto LABEL_9;
                    }

                    v262 = advance_tok(a1, v32, v260, v261);
                    LODWORD(v35) = v32;
                    if (v262)
                    {
                      goto LABEL_9;
                    }

                    v263 = OUTLINED_FUNCTION_1_28();
                    v266 = testFldeq(v263, v264, v265, 2);
                    LODWORD(v35) = v32;
                    if (v266)
                    {
                      goto LABEL_9;
                    }

                    v269 = advance_tok(a1, v32, v267, v268);
                    LODWORD(v35) = v32;
                    if (v269)
                    {
                      goto LABEL_9;
                    }

                    v270 = OUTLINED_FUNCTION_0_30();
                    if (lpta_loadp_setscan_l(v270, v271, v272))
                    {
                      goto LABEL_75;
                    }

                    OUTLINED_FUNCTION_19_19();
                    if (test_string_s())
                    {
                      goto LABEL_75;
                    }

                    goto LABEL_86;
                  case 16:
LABEL_75:
                    v273 = OUTLINED_FUNCTION_0_30();
                    if (lpta_loadp_setscan_l(v273, v274, v275))
                    {
                      goto LABEL_77;
                    }

                    OUTLINED_FUNCTION_19_19();
                    if (test_string_s())
                    {
                      goto LABEL_77;
                    }

LABEL_86:
                    v294 = OUTLINED_FUNCTION_21_18();
                    starttest_e(v294, v295);
                    OUTLINED_FUNCTION_24_18();
                    move_f(v296);
                    v185 = OUTLINED_FUNCTION_11_25();
                    v187 = 60;
                    goto LABEL_81;
                  case 19:
LABEL_77:
                    v276 = OUTLINED_FUNCTION_21_18();
                    starttest(v276, v277);
                    v278 = OUTLINED_FUNCTION_0_30();
                    if (lpta_loadp_setscan_l(v278, v279, v280))
                    {
                      break;
                    }

                    v281 = OUTLINED_FUNCTION_21_18();
                    bspush_ca_scan(v281, v282);
LABEL_79:
                    OUTLINED_FUNCTION_1_28();
                    v283 = test_string_s();
                    LODWORD(v35) = v32;
                    if (v283)
                    {
                      goto LABEL_9;
                    }

LABEL_80:
                    v284 = OUTLINED_FUNCTION_21_18();
                    starttest(v284, v285);
                    OUTLINED_FUNCTION_24_18();
                    move_f(v286);
                    v185 = OUTLINED_FUNCTION_11_25();
                    v187 = 80;
LABEL_81:
                    move_i(v185, v186, v187);
                    OUTLINED_FUNCTION_24_18();
                    v16 = setdur();
                    LODWORD(v35) = v32;
                    if (!v16)
                    {
                      goto LABEL_4;
                    }

                    goto LABEL_9;
                  case 21:
                    goto LABEL_79;
                  case 22:
                    goto LABEL_80;
                  case 24:
                    LODWORD(v20) = v32;
                    goto LABEL_100;
                  case 25:
                    v20 = v32;
                    goto LABEL_110;
                  case 26:
                    goto LABEL_122;
                  case 27:
                    bspop_boa(a1);
                    v195 = advance_tok(a1, v192, v193, v194);
                    LODWORD(v35) = v32;
                    if (v195)
                    {
                      goto LABEL_9;
                    }

                    v196 = OUTLINED_FUNCTION_23_18();
                    v199 = lpta_loadp_setscan_r(v196, v197, v198);
                    LODWORD(v35) = v32;
                    if (v199)
                    {
                      goto LABEL_9;
                    }

                    v200 = OUTLINED_FUNCTION_1_28();
                    v203 = testFldeq(v200, v201, v202, 2);
                    LODWORD(v35) = v32;
                    if (v203)
                    {
                      goto LABEL_9;
                    }

                    v204 = OUTLINED_FUNCTION_22_18();
                    v206 = npush_fld(v204, v205, 8u);
                    LODWORD(v35) = v32;
                    if (v206)
                    {
                      goto LABEL_9;
                    }

                    v207 = OUTLINED_FUNCTION_32_12();
                    npush_i(v207);
                    v215 = if_testeq(a1, v208, v209, v210, v211, v212, v213, v214);
                    LODWORD(v35) = v32;
                    if (v215)
                    {
                      goto LABEL_9;
                    }

                    v218 = advance_tok(a1, v32, v216, v217);
                    LODWORD(v35) = v32;
                    if (v218)
                    {
                      goto LABEL_9;
                    }

LABEL_85:
                    v291 = OUTLINED_FUNCTION_21_18();
                    starttest_e(v291, v292);
                    OUTLINED_FUNCTION_24_18();
                    move_f(v293);
                    v185 = OUTLINED_FUNCTION_11_25();
                    v187 = 50;
                    goto LABEL_81;
                  case 30:
                    LODWORD(v20) = v32;
                    goto LABEL_91;
                  case 31:
                    goto LABEL_116;
                  case 32:
                    v287 = OUTLINED_FUNCTION_6_26();
                    v290 = testFldeq(v287, v288, v289, 30);
                    v38 = v32;
                    v35 = v32;
                    if (!v290)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_9;
                  case 33:
                    goto LABEL_117;
                  case 36:
                    LODWORD(v20) = v32;
                    goto LABEL_101;
                  case 37:
                    goto LABEL_103;
                  case 38:
                    bspop_boa(a1);
                    v71 = OUTLINED_FUNCTION_1_28();
                    v74 = testFldeq(v71, v72, v73, 2);
                    LODWORD(v35) = v32;
                    if (v74)
                    {
                      goto LABEL_9;
                    }

                    v75 = OUTLINED_FUNCTION_22_18();
                    v77 = npush_fld(v75, v76, 8u);
                    LODWORD(v35) = v32;
                    if (v77)
                    {
                      goto LABEL_9;
                    }

                    v78 = OUTLINED_FUNCTION_32_12();
                    npush_i(v78);
                    v86 = if_testeq(a1, v79, v80, v81, v82, v83, v84, v85);
                    LODWORD(v35) = v32;
                    if (v86)
                    {
                      goto LABEL_9;
                    }

                    v89 = advance_tok(a1, v32, v87, v88);
                    LODWORD(v35) = v32;
                    if (v89)
                    {
                      goto LABEL_9;
                    }

                    v90 = OUTLINED_FUNCTION_23_18();
                    v93 = lpta_loadp_setscan_r(v90, v91, v92);
                    LODWORD(v35) = v32;
                    if (v93)
                    {
                      goto LABEL_9;
                    }

                    v94 = OUTLINED_FUNCTION_1_28();
                    v97 = testFldeq(v94, v95, v96, 2);
                    LODWORD(v35) = v32;
                    if (v97)
                    {
                      goto LABEL_9;
                    }

                    v98 = OUTLINED_FUNCTION_22_18();
                    v100 = npush_fld(v98, v99, 8u);
                    LODWORD(v35) = v32;
                    if (v100)
                    {
                      goto LABEL_9;
                    }

                    v101 = OUTLINED_FUNCTION_32_12();
                    npush_i(v101);
                    v109 = if_testeq(a1, v102, v103, v104, v105, v106, v107, v108);
                    LODWORD(v35) = v32;
                    if (v109)
                    {
                      goto LABEL_9;
                    }

                    v112 = advance_tok(a1, v32, v110, v111);
                    LODWORD(v35) = v32;
                    if (v112)
                    {
                      goto LABEL_9;
                    }

                    OUTLINED_FUNCTION_41_6();
                    v113 = OUTLINED_FUNCTION_4_26();
                    v116 = test_ptr(v113, v114, v115);
                    LODWORD(v35) = v32;
                    if (v116)
                    {
                      goto LABEL_9;
                    }

                    v117 = OUTLINED_FUNCTION_1_28();
                    v120 = testFldeq(v117, v118, v119, 2);
                    LODWORD(v35) = v32;
                    if (v120)
                    {
                      goto LABEL_9;
                    }

                    v121 = OUTLINED_FUNCTION_22_18();
                    v123 = npush_fld(v121, v122, 8u);
                    LODWORD(v35) = v32;
                    if (v123)
                    {
                      goto LABEL_9;
                    }

                    v124 = OUTLINED_FUNCTION_32_12();
                    npush_i(v124);
                    v132 = if_testeq(a1, v125, v126, v127, v128, v129, v130, v131);
                    LODWORD(v35) = v32;
                    if (v132)
                    {
                      goto LABEL_9;
                    }

                    v135 = advance_tok(a1, v32, v133, v134);
                    LODWORD(v35) = v32;
                    if (v135)
                    {
                      goto LABEL_9;
                    }

                    goto LABEL_48;
                  case 41:
                    goto LABEL_102;
                  case 42:
                    bspop_boa(a1);
                    v219 = OUTLINED_FUNCTION_1_28();
                    v222 = testFldeq(v219, v220, v221, 2);
                    LODWORD(v35) = v32;
                    if (v222)
                    {
                      goto LABEL_9;
                    }

                    v223 = OUTLINED_FUNCTION_22_18();
                    v225 = npush_fld(v223, v224, 8u);
                    LODWORD(v35) = v32;
                    if (v225)
                    {
                      goto LABEL_9;
                    }

                    v226 = OUTLINED_FUNCTION_32_12();
                    npush_i(v226);
                    v234 = if_testeq(a1, v227, v228, v229, v230, v231, v232, v233);
                    LODWORD(v35) = v32;
                    if (v234)
                    {
                      goto LABEL_9;
                    }

                    v237 = advance_tok(a1, v32, v235, v236);
                    LODWORD(v35) = v32;
                    if (v237)
                    {
                      goto LABEL_9;
                    }

                    OUTLINED_FUNCTION_21_18();
                    bspush_ca_scan_boa();
                    goto LABEL_63;
                  case 44:
                    bspop_boa(a1);
                    v136 = OUTLINED_FUNCTION_1_28();
                    v139 = testFldeq(v136, v137, v138, 2);
                    LODWORD(v35) = v32;
                    if (v139)
                    {
                      goto LABEL_9;
                    }

                    v140 = OUTLINED_FUNCTION_22_18();
                    v142 = npush_fld(v140, v141, 8u);
                    LODWORD(v35) = v32;
                    if (v142)
                    {
                      goto LABEL_9;
                    }

                    v143 = OUTLINED_FUNCTION_32_12();
                    npush_i(v143);
                    v151 = if_testeq(a1, v144, v145, v146, v147, v148, v149, v150);
                    LODWORD(v35) = v32;
                    if (v151)
                    {
                      goto LABEL_9;
                    }

                    v154 = advance_tok(a1, v32, v152, v153);
                    LODWORD(v35) = v32;
                    if (v154)
                    {
                      goto LABEL_9;
                    }

                    v155 = OUTLINED_FUNCTION_23_18();
                    v158 = lpta_loadp_setscan_r(v155, v156, v157);
                    LODWORD(v35) = v32;
                    if (v158)
                    {
                      goto LABEL_9;
                    }

                    v159 = OUTLINED_FUNCTION_1_28();
                    v162 = testFldeq(v159, v160, v161, 2);
                    LODWORD(v35) = v32;
                    if (v162)
                    {
                      goto LABEL_9;
                    }

                    v163 = OUTLINED_FUNCTION_22_18();
                    v165 = npush_fld(v163, v164, 8u);
                    LODWORD(v35) = v32;
                    if (v165)
                    {
                      goto LABEL_9;
                    }

                    v166 = OUTLINED_FUNCTION_32_12();
                    npush_i(v166);
                    v174 = if_testeq(a1, v167, v168, v169, v170, v171, v172, v173);
                    LODWORD(v35) = v32;
                    if (v174)
                    {
                      goto LABEL_9;
                    }

                    v177 = advance_tok(a1, v32, v175, v176);
                    LODWORD(v35) = v32;
                    if (v177)
                    {
                      goto LABEL_9;
                    }

                    OUTLINED_FUNCTION_41_6();
                    v178 = OUTLINED_FUNCTION_4_26();
                    v181 = test_ptr(v178, v179, v180);
                    LODWORD(v35) = v32;
                    if (v181)
                    {
                      goto LABEL_9;
                    }

LABEL_48:
                    v182 = OUTLINED_FUNCTION_21_18();
                    starttest_e(v182, v183);
                    OUTLINED_FUNCTION_24_18();
                    move_f(v184);
                    v185 = OUTLINED_FUNCTION_11_25();
                    v187 = 20;
                    goto LABEL_81;
                  case 45:
LABEL_63:
                    v238 = OUTLINED_FUNCTION_21_18();
                    if (test_synch(v238, v239, 1, v240))
                    {
                      LODWORD(v35) = v32;
                    }

                    else
                    {
                      LODWORD(v35) = 1;
                    }

                    goto LABEL_9;
                  default:
                    goto LABEL_3;
                }
              }
            }

            v16 = 0;
            goto LABEL_4;
          }

          break;
        }

LABEL_7:
        OUTLINED_FUNCTION_49_5(14, v370, *v371, *&v371[8], *&v371[16], *&v371[24], *&v371[32], *&v371[40], *&v371[48], *&v371[56], *&v371[64], *&v371[72], *&v371[80], *&v371[88], *&v371[96], *&v371[104], *&v371[112], *&v371[120], *&v371[128], *&v371[136], *&v371[144], *&v371[152], *&v371[160], *&v371[168], *&v371[176], v372);
        OUTLINED_FUNCTION_21_18();
        bspush_ca_scan_boa();
      }

      else
      {
        OUTLINED_FUNCTION_16_22();
        bspush_ca_scan_boa();
        LODWORD(v32) = 0;
      }

LABEL_104:
      v318 = OUTLINED_FUNCTION_21_18();
      v321 = test_synch(v318, v319, 1, v320);
      goto LABEL_105;
    }
  }

LABEL_3:
  v16 = 94;
LABEL_4:
  v17 = v16;
  vretproc(a1);
  return v17;
}

uint64_t shorten_2stress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v171 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_13(a1, a2, a3, a4, a5, a6, a7, a8, v160, v163[0], v163[1], v163[2], v163[3], v163[4], v163[5], v163[6], v163[7], v163[8], v163[9], v163[10], v163[11], v163[12], v163[13], v163[14], v163[15], v163[16], v163[17], v163[18], v163[19], v163[20], v163[21], v163[22], v163[23], SHIDWORD(v163[23]), v164, v165);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_79_4(v10, v11, v12, v13, v14, v15, v16, v17, v161, v163[0], v163[1], v163[2], v163[3], v163[4], v163[5], v163[6], v163[7], v163[8], v163[9], v163[10], v163[11], v163[12], v163[13], v163[14], v163[15], v163[16], v163[17], v163[18], v163[19], v163[20], v163[21], v163[22], v163[23], v164, v165, v166, v167, v168, v169);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_29_14(v18, v163, v19, v20, v21, v22, v23, v24, v162, v163[0], v163[1], v163[2], v163[3], v163[4], v163[5], v163[6], v163[7], v163[8], v163[9], v163[10], v163[11], v163[12], v163[13], v163[14], v163[15], v163[16], v163[17], v163[18], v163[19], v163[20], v163[21], v163[22], v163[23], v164, v165, v166, SHIDWORD(v166), v167, SWORD2(v167), SHIWORD(v167), v168, SWORD2(v168), SBYTE6(v168), SHIBYTE(v168), v169, v170))
  {
LABEL_3:
    v25 = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_12_25();
  fence_26(a1, 0, &null_str_7);
  v27 = OUTLINED_FUNCTION_44_6();
  fence_26(v27, v28, v29);
  if (*(a1 + 978) <= *(a1 + 958))
  {
LABEL_42:
    v139 = OUTLINED_FUNCTION_21_18();
    starttest(v139, v140);
    goto LABEL_43;
  }

  if (*(a1 + 942) == 1)
  {
    lpta_loadpn(a1, a1 + 768);
    rpta_loadpn(a1, a1 + 800);
    if (!compare_ptas(a1) && !testeq(a1))
    {
      v30 = OUTLINED_FUNCTION_21_18();
      starttest(v30, v31);
      v32 = OUTLINED_FUNCTION_37_10();
      if (!lpta_loadp_setscan_r(v32, v33, v34))
      {
        v35 = OUTLINED_FUNCTION_31_13();
        if (!npush_fld(v35, 7u, v36))
        {
          v37 = OUTLINED_FUNCTION_44_6();
          npush_i(v37);
          if (!if_testeq(a1, v38, v39, v40, v41, v42, v43, v44) && !advance_tok(a1, v45, v46, v47))
          {
            goto LABEL_13;
          }
        }

        goto LABEL_50;
      }

LABEL_14:
      v54 = OUTLINED_FUNCTION_52_5();
      starttest(v54, v55);
      v56 = OUTLINED_FUNCTION_50_5();
      if (lpta_loadp_setscan_r(v56, v57, 7) || advance_tok(a1, v58, v59, v60))
      {
LABEL_16:
        v61 = OUTLINED_FUNCTION_20_18();
        starttest(v61, v62);
        v63 = OUTLINED_FUNCTION_3_27();
        if (!lpta_loadp_setscan_r(v63, v64, v65))
        {
          v66 = OUTLINED_FUNCTION_5_26();
          if (testFldeq(v66, v67, v68, v69) || advance_tok(a1, v70, v71, v72))
          {
            goto LABEL_50;
          }

          v73 = OUTLINED_FUNCTION_21_18();
          starttest_e(v73, v74);
          OUTLINED_FUNCTION_24_18();
          move_f(v75);
          v51 = OUTLINED_FUNCTION_7_26();
          v53 = 80;
LABEL_44:
          move_i(v51, v52, v53);
          OUTLINED_FUNCTION_24_18();
          if (!setdur())
          {
LABEL_45:
            lpta_loadpn(a1, a1 + 768);
            rpta_loadpn(a1, a1 + 800);
            if (compare_ptas(a1) || testeq(a1) || (v155 = OUTLINED_FUNCTION_21_18(), starttest_e(v155, v156), OUTLINED_FUNCTION_24_18(), move_f(v157), v158 = OUTLINED_FUNCTION_7_26(), move_i(v158, v159, 200), OUTLINED_FUNCTION_24_18(), !setdur()))
            {
LABEL_47:
              v142 = OUTLINED_FUNCTION_50_5();
              lpta_loadpn(v142, v143);
              v144 = OUTLINED_FUNCTION_28_14();
              rpta_loadpn(v144, v145);
              if (compare_ptas(a1) || testneq(a1) || (v146 = OUTLINED_FUNCTION_21_18(), starttest_e(v146, v147), OUTLINED_FUNCTION_24_18(), move_f(v148), v149 = OUTLINED_FUNCTION_7_26(), move_i(v149, v150, 50), OUTLINED_FUNCTION_24_18(), !setdur()))
              {
                v25 = 0;
                goto LABEL_4;
              }
            }
          }

          goto LABEL_50;
        }

        goto LABEL_24;
      }

      v76 = OUTLINED_FUNCTION_31_13();
      if (npush_fld(v76, 7u, v77))
      {
        goto LABEL_50;
      }

      v78 = OUTLINED_FUNCTION_44_6();
      npush_i(v78);
      if (if_testeq(a1, v79, v80, v81, v82, v83, v84, v85) || advance_tok(a1, v86, v87, v88))
      {
        goto LABEL_50;
      }

      goto LABEL_23;
    }

LABEL_26:
    v94 = OUTLINED_FUNCTION_50_5();
    lpta_loadpn(v94, v95);
    v96 = OUTLINED_FUNCTION_28_14();
    rpta_loadpn(v96, v97);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      v98 = OUTLINED_FUNCTION_21_18();
      starttest_e(v98, v99);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  while (2)
  {
    v100 = OUTLINED_FUNCTION_21_18();
    starttest(v100, v101);
    v102 = OUTLINED_FUNCTION_37_10();
    if (lpta_loadp_setscan_r(v102, v103, v104))
    {
LABEL_35:
      v118 = OUTLINED_FUNCTION_21_18();
      starttest(v118, v119);
      v120 = OUTLINED_FUNCTION_37_10();
      if (!lpta_loadp_setscan_r(v120, v121, v122) && !advance_tok(a1, v123, v124, v125))
      {
        v126 = OUTLINED_FUNCTION_31_13();
        if (npush_fld(v126, 7u, v127))
        {
          goto LABEL_50;
        }

        v128 = OUTLINED_FUNCTION_44_6();
        npush_i(v128);
        if (if_testeq(a1, v129, v130, v131, v132, v133, v134, v135) || advance_tok(a1, v136, v137, v138))
        {
          goto LABEL_50;
        }

LABEL_23:
        v89 = OUTLINED_FUNCTION_21_18();
        starttest_e(v89, v90);
LABEL_43:
        OUTLINED_FUNCTION_24_18();
        move_f(v141);
        v51 = OUTLINED_FUNCTION_7_26();
        v53 = 70;
        goto LABEL_44;
      }

LABEL_24:
      v91 = OUTLINED_FUNCTION_21_18();
      starttest(v91, v92);
LABEL_25:
      OUTLINED_FUNCTION_24_18();
      move_f(v93);
      v51 = OUTLINED_FUNCTION_7_26();
      v53 = 75;
      goto LABEL_44;
    }

    v105 = OUTLINED_FUNCTION_31_13();
    if (!npush_fld(v105, 7u, v106))
    {
      v107 = OUTLINED_FUNCTION_44_6();
      npush_i(v107);
      if (!if_testeq(a1, v108, v109, v110, v111, v112, v113, v114) && !advance_tok(a1, v115, v116, v117))
      {
LABEL_13:
        v48 = OUTLINED_FUNCTION_21_18();
        starttest_e(v48, v49);
        OUTLINED_FUNCTION_24_18();
        move_f(v50);
        v51 = OUTLINED_FUNCTION_7_26();
        v53 = 50;
        goto LABEL_44;
      }
    }

LABEL_50:
    v151 = *(a1 + 104);
    if (v151)
    {
      v152 = OUTLINED_FUNCTION_40_7(v151);
    }

    else
    {
      v153 = OUTLINED_FUNCTION_32_12();
      v152 = vback(v153, v154);
    }

    v25 = 0;
    switch(v152)
    {
      case 1:
        goto LABEL_42;
      case 2:
        continue;
      case 3:
        goto LABEL_26;
      case 4:
        goto LABEL_14;
      case 5:
      case 6:
      case 8:
      case 10:
      case 11:
      case 13:
      case 14:
      case 16:
      case 18:
      case 19:
        goto LABEL_45;
      case 7:
        goto LABEL_16;
      case 9:
      case 12:
      case 17:
        goto LABEL_24;
      case 15:
        goto LABEL_35;
      case 20:
        goto LABEL_47;
      case 21:
        goto LABEL_4;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  return v25;
}

uint64_t is_simple_nucleus(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_39_8();
  bzero(&v39, v3);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_72_4(v4, v5, v6, v7, v8, v9, v10, v11, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_9_26(v12, v13, v14, v15, v16, v17, v18, v19, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, SHIDWORD(v62), v63, SWORD2(v63), SHIWORD(v63), v64, SWORD2(v64), SBYTE6(v64), SHIBYTE(v64), v65, v66) || (fence_26(a1, 0, &null_str_7), v20 = OUTLINED_FUNCTION_21_18(), starttest(v20, v21), v22 = OUTLINED_FUNCTION_3_27(), lpta_loadp_setscan_r(v22, v23, v24)) || ((v25 = OUTLINED_FUNCTION_1_28(), testFldeq(v25, v26, v27, 2)) || advance_tok(a1, v28, v29, v30) || (OUTLINED_FUNCTION_41_6(), v31 = OUTLINED_FUNCTION_4_26(), test_ptr(v31, v32, v33))) && ((v34 = *(a1 + 104)) == 0 ? (v36 = OUTLINED_FUNCTION_32_12(), v35 = vback(v36, v37)) : (v35 = OUTLINED_FUNCTION_40_7(v34)), v35 != 2))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    vretproc(a1);
    return 0;
  }
}

uint64_t is_open_class()
{
  OUTLINED_FUNCTION_60_5();
  v118 = *MEMORY[0x277D85DE8];
  v105 = 0;
  v106 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v104, v1);
  OUTLINED_FUNCTION_38_9();
  bzero(v117, v2);
  v3 = setjmp(v117);
  if (v3 || OUTLINED_FUNCTION_17_21(v3, v4, v5, v6, v7, v8, v9, v10, v104[0], v104[1], v104[2], v104[3], v104[4], v104[5], v104[6], v104[7], v104[8], v104[9], v104[10], v104[11], v104[12], v104[13], v104[14], v104[15], v104[16], v104[17], v104[18], v104[19], v104[20], v104[21], v104[22], v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0]))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_77_4(v13, v14);
  fence_26(v0, 0, &null_str_7);
  v15 = OUTLINED_FUNCTION_21_18();
  starttest(v15, v16);
  v17 = OUTLINED_FUNCTION_27_15();
  if (!lpta_loadp_setscan_r(v17, v18, 2))
  {
    v80 = OUTLINED_FUNCTION_52_5();
    bspush_ca_scan(v80, v81);
    v70 = OUTLINED_FUNCTION_51_5();
    v72 = 3;
    v73 = 18;
LABEL_24:
    if (testFldeq(v70, v71, v72, v73))
    {
      goto LABEL_26;
    }

LABEL_25:
    if (advance_tok(v0, v67, v68, v69))
    {
      goto LABEL_26;
    }

    goto LABEL_3;
  }

LABEL_6:
  v19 = OUTLINED_FUNCTION_21_18();
  starttest(v19, v20);
  v21 = OUTLINED_FUNCTION_46_6();
  if (!lpta_loadp_setscan_r(v21, v22, 2))
  {
    v47 = OUTLINED_FUNCTION_18_20();
    bspush_ca_scan(v47, v48);
    v49 = OUTLINED_FUNCTION_14_23();
    if (testFldeq(v49, v50, v51, 19))
    {
      goto LABEL_26;
    }

LABEL_14:
    v52 = OUTLINED_FUNCTION_33_12();
    if (npush_fld(v52, v53, 5u))
    {
      goto LABEL_26;
    }

    npush_v(v0, (v0 + 3068), v54, v55, v56, v57, v58, v59);
    if (if_testgt(v0, v60, v61, v62, v63, v64, v65, v66))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_7:
  v23 = OUTLINED_FUNCTION_20_18();
  starttest(v23, v24);
  v25 = OUTLINED_FUNCTION_46_6();
  if (!lpta_loadp_setscan_r(v25, v26, 2))
  {
    v70 = OUTLINED_FUNCTION_14_23();
    v73 = 3;
    goto LABEL_24;
  }

LABEL_8:
  v27 = OUTLINED_FUNCTION_21_18();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_46_6();
  if (!lpta_loadp_setscan_r(v29, v30, 2))
  {
    v74 = OUTLINED_FUNCTION_52_5();
    bspush_ca_scan(v74, v75);
    v70 = OUTLINED_FUNCTION_14_23();
    v73 = 11;
    goto LABEL_24;
  }

LABEL_9:
  v31 = OUTLINED_FUNCTION_21_18();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_46_6();
  if (lpta_loadp_setscan_r(v33, v34, 2))
  {
LABEL_10:
    v35 = OUTLINED_FUNCTION_21_18();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_46_6();
    if (lpta_loadp_setscan_r(v37, v38, 2))
    {
LABEL_11:
      v39 = OUTLINED_FUNCTION_21_18();
      starttest(v39, v40);
      v41 = OUTLINED_FUNCTION_46_6();
      if (lpta_loadp_setscan_r(v41, v42, 2))
      {
LABEL_3:
        v11 = 94;
        goto LABEL_4;
      }

      v43 = OUTLINED_FUNCTION_33_12();
      v46 = 4;
    }

    else
    {
      v78 = OUTLINED_FUNCTION_21_18();
      bspush_ca_scan(v78, v79);
      v43 = OUTLINED_FUNCTION_14_23();
      v45 = 6;
    }
  }

  else
  {
    v76 = OUTLINED_FUNCTION_21_18();
    bspush_ca_scan(v76, v77);
    v43 = OUTLINED_FUNCTION_33_12();
    v46 = 1;
    v45 = 2;
  }

  if (testFldeq(v43, v44, v46, v45))
  {
    goto LABEL_26;
  }

LABEL_48:
  while (advance_tok(v0, v67, v68, v69))
  {
    do
    {
LABEL_26:
      while (2)
      {
        v82 = *(v0 + 104);
        if (v82)
        {
          v83 = OUTLINED_FUNCTION_40_7(v82);
        }

        else
        {
          v84 = OUTLINED_FUNCTION_32_12();
          v83 = vback(v84, v85);
        }

        switch(v83)
        {
          case 1:
            goto LABEL_6;
          case 2:
            v86 = OUTLINED_FUNCTION_14_23();
            v89 = 14;
            goto LABEL_38;
          case 3:
          case 12:
            goto LABEL_25;
          case 4:
            goto LABEL_49;
          case 5:
            goto LABEL_7;
          case 6:
            v96 = OUTLINED_FUNCTION_27_15();
            bspush_ca_scan(v96, v97);
            v98 = OUTLINED_FUNCTION_14_23();
            v101 = 16;
            goto LABEL_41;
          case 7:
            goto LABEL_14;
          case 8:
            v98 = OUTLINED_FUNCTION_14_23();
            v101 = 20;
LABEL_41:
            if (!testFldeq(v98, v99, v100, v101))
            {
              goto LABEL_14;
            }

            continue;
          case 9:
            goto LABEL_8;
          case 10:
            goto LABEL_9;
          case 11:
            v86 = OUTLINED_FUNCTION_14_23();
            v89 = 10;
LABEL_38:
            if (!testFldeq(v86, v87, v88, v89))
            {
              goto LABEL_25;
            }

            continue;
          case 13:
            goto LABEL_10;
          case 14:
            bspush_ca_scan(v0, 16);
            v90 = OUTLINED_FUNCTION_33_12();
            v92 = 1;
            v93 = 11;
            goto LABEL_47;
          case 15:
          case 20:
            goto LABEL_48;
          case 16:
            v102 = OUTLINED_FUNCTION_59_5();
            bspush_ca_scan(v102, v103);
            v90 = OUTLINED_FUNCTION_33_12();
            v92 = 1;
            v93 = 3;
            goto LABEL_47;
          case 17:
            v90 = OUTLINED_FUNCTION_33_12();
            v92 = 1;
            v93 = 1;
            goto LABEL_47;
          case 18:
            goto LABEL_11;
          case 19:
            v94 = OUTLINED_FUNCTION_47_6();
            bspush_ca_scan(v94, v95);
            v90 = OUTLINED_FUNCTION_14_23();
            goto LABEL_46;
          case 21:
            bspush_ca_scan(v0, 22);
            v90 = OUTLINED_FUNCTION_14_23();
            v93 = 12;
            goto LABEL_47;
          case 22:
            bspush_ca_scan(v0, 23);
            v90 = OUTLINED_FUNCTION_33_12();
            v92 = 2;
            v93 = 6;
            goto LABEL_47;
          case 23:
            bspush_ca_scan(v0, 24);
            v90 = OUTLINED_FUNCTION_33_12();
            v92 = 2;
LABEL_46:
            v93 = 7;
            break;
          case 24:
            v90 = OUTLINED_FUNCTION_33_12();
            v92 = 2;
            v93 = 8;
            break;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_47:
      ;
    }

    while (testFldeq(v90, v91, v92, v93));
  }

LABEL_49:
  v11 = 0;
LABEL_4:
  vretproc(v0);
  return v11;
}

uint64_t is_minor_phrase_edge()
{
  OUTLINED_FUNCTION_60_5();
  v43 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v29, v1);
  OUTLINED_FUNCTION_38_9();
  bzero(v42, v2);
  v3 = setjmp(v42);
  if (v3 || OUTLINED_FUNCTION_17_21(v3, v4, v5, v6, v7, v8, v9, v10, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v29[22], v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0]) || (v11 = OUTLINED_FUNCTION_46_6(), OUTLINED_FUNCTION_77_4(v11, v12), fence_26(v0, 0, &null_str_7), v13 = OUTLINED_FUNCTION_52_5(), starttest(v13, v14), *(v0 + 136) = 1, v15 = OUTLINED_FUNCTION_4_26(), setscan_nof_r(v15, 2, v16)) || ((OUTLINED_FUNCTION_33_12(), OUTLINED_FUNCTION_76_4(), testFldeq(v17, v18, v19, v20)) || advance_tok(v0, v21, v22, v23)) && ((v24 = *(v0 + 104)) == 0 ? (v26 = OUTLINED_FUNCTION_32_12(), v25 = vback(v26, v27)) : (v25 = OUTLINED_FUNCTION_40_7(v24)), v25 != 2))
  {
    vretproc(v0);
    return 94;
  }

  else
  {
    vretproc(v0);
    return 0;
  }
}

uint64_t is_phon_phrase_edge()
{
  OUTLINED_FUNCTION_60_5();
  v63 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v49, v1);
  OUTLINED_FUNCTION_38_9();
  bzero(v62, v2);
  v3 = setjmp(v62);
  if (v3 || OUTLINED_FUNCTION_17_21(v3, v4, v5, v6, v7, v8, v9, v10, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17], v49[18], v49[19], v49[20], v49[21], v49[22], v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]) || (v11 = OUTLINED_FUNCTION_27_15(), OUTLINED_FUNCTION_77_4(v11, v12), fence_26(v0, 0, &null_str_7), v13 = OUTLINED_FUNCTION_21_18(), starttest(v13, v14), v15 = OUTLINED_FUNCTION_27_15(), lpta_loadp_setscan_r(v15, v16, 2)) || ((v17 = OUTLINED_FUNCTION_33_12(), npush_fld(v17, v18, 5u)) || (v19 = OUTLINED_FUNCTION_32_12(), npush_i(v19), if_testlt(v0, v20, v21, v22, v23, v24, v25, v26)) || advance_tok(v0, v27, v28, v29) || (v30 = OUTLINED_FUNCTION_33_12(), npush_fld(v30, v31, 5u)) || (v32 = OUTLINED_FUNCTION_32_12(), npush_i(v32), if_testgt(v0, v33, v34, v35, v36, v37, v38, v39)) || advance_tok(v0, v40, v41, v42)) && ((v43 = *(v0 + 104)) == 0 ? (v45 = OUTLINED_FUNCTION_32_12(), v44 = vback(v45, v46)) : (v44 = OUTLINED_FUNCTION_40_7(v43)), v44 != 2))
  {
    v47 = 94;
  }

  else
  {
    v47 = 0;
  }

  vretproc(v0);
  return v47;
}

uint64_t get_por_non_vowels(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v47[0] = 0;
  v45 = 0;
  v46 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v44, v2);
  OUTLINED_FUNCTION_38_9();
  bzero(v55, v3);
  v4 = setjmp(v55);
  if (v4 || OUTLINED_FUNCTION_17_21(v4, v5, v6, v7, v8, v9, v10, v11, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10], v44[11], v44[12], v44[13], v44[14], v44[15], v44[16], v44[17], v44[18], v44[19], v44[20], v44[21], v44[22], v45, v46, v47[0], v47[1], v47[2], v48, v49, v50, v51, v52, v53, v54, v55[0]))
  {
    goto LABEL_3;
  }

  LOWORD(v47[0]) = -4;
  v14 = OUTLINED_FUNCTION_46_6();
  v16 = push_ptr_init(v14, v15);
  OUTLINED_FUNCTION_64_4(v16, v17, &null_str_7);
  HIWORD(v47[0]) = 0;
  v18 = OUTLINED_FUNCTION_21_18();
  starttest(v18, v19);
  v20 = OUTLINED_FUNCTION_0_30();
  if (lpta_loadp_setscan_l(v20, v21, v22))
  {
LABEL_6:
    v23 = OUTLINED_FUNCTION_0_30();
    if (lpta_loadp_setscan_l(v23, v24, v25) || (OUTLINED_FUNCTION_1_28(), test_string_s()))
    {
LABEL_8:
      v26 = OUTLINED_FUNCTION_0_30();
      if (lpta_loadp_setscan_l(v26, v27, v28) || (OUTLINED_FUNCTION_1_28(), test_string_s()))
      {
LABEL_10:
        v29 = OUTLINED_FUNCTION_0_30();
        if (lpta_loadp_setscan_l(v29, v30, v31) || (OUTLINED_FUNCTION_1_28(), test_string_s()))
        {
LABEL_3:
          v12 = 94;
          goto LABEL_4;
        }

        HIWORD(v47[0]) = 3;
      }

      else
      {
        por_glide_w_dur();
      }
    }

    else
    {
      por_glide_y_dur();
    }
  }

  else
  {
    v32 = OUTLINED_FUNCTION_16_22();
    bspush_ca_scan(v32, v33);
    OUTLINED_FUNCTION_1_28();
    if (test_string_s())
    {
      while (2)
      {
        v34 = *(a1 + 104);
        if (v34)
        {
          v35 = OUTLINED_FUNCTION_40_7(v34);
        }

        else
        {
          v36 = OUTLINED_FUNCTION_32_12();
          v35 = vback(v36, v37);
        }

        switch(v35)
        {
          case 1:
            goto LABEL_6;
          case 2:
            OUTLINED_FUNCTION_1_28();
            if (!test_string_s())
            {
              break;
            }

            continue;
          case 3:
            goto LABEL_19;
          case 4:
          case 5:
          case 7:
          case 9:
            goto LABEL_22;
          case 6:
            goto LABEL_8;
          case 8:
            goto LABEL_10;
          case 11:
            goto LABEL_25;
          case 12:
            goto LABEL_24;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

LABEL_19:
    por_glide_dur();
  }

LABEL_22:
  v38 = OUTLINED_FUNCTION_0_30();
  if (!lpta_loadp_setscan_l(v38, v39, v40) && !advance_tok(a1, v41, v42, v43))
  {
LABEL_24:
    savescptr(a1, 12, &v45);
    insert_dur(a1, v47, &v45, (a1 + 816), (a1 + 1024));
  }

LABEL_25:
  v12 = 0;
LABEL_4:
  vretproc(a1);
  return v12;
}

uint64_t por_glide_dur()
{
  OUTLINED_FUNCTION_60_5();
  v46 = *MEMORY[0x277D85DE8];
  v35 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v34, v2);
  OUTLINED_FUNCTION_38_9();
  bzero(v45, v3);
  v4 = setjmp(v45);
  if (v4 || OUTLINED_FUNCTION_9_26(v4, v5, v6, v7, v8, v9, v10, v11, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14], v34[15], v34[16], v34[17], v34[18], v34[19], v34[20], v34[21], v34[22], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0]))
  {
LABEL_3:
    v12 = 94;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_46_6();
    get_parm(v14, v15, v1, -4);
    fence_26(v0, 0, &null_str_7);
    v16 = OUTLINED_FUNCTION_0_30();
    if (lpta_loadp_setscan_l(v16, v17, v18) || (OUTLINED_FUNCTION_22_18(), test_string_s()))
    {
      v19 = 0;
      while (2)
      {
        v20 = OUTLINED_FUNCTION_59_5();
        starttest(v20, v21);
        v22 = OUTLINED_FUNCTION_28_14();
        if (lpta_loadp_setscan_r(v22, v23, 4))
        {
LABEL_18:
          v31 = OUTLINED_FUNCTION_0_30();
          if (lpta_loadp_setscan_r(v31, v32, v33) || (OUTLINED_FUNCTION_1_28(), test_string_s()))
          {
LABEL_20:
            v30 = 35;
          }

          else
          {
            v30 = 50;
          }
        }

        else
        {
          if (!testFldeq(v0, 4u, 1, 1))
          {
            bspush_ca_scan_boa();
            if (!testFldeq(v0, 4u, 3, 0))
            {
              v19 = 1;
            }
          }

LABEL_12:
          v24 = v0[13];
          if (v24)
          {
            v25 = OUTLINED_FUNCTION_40_7(v24);
            v19 = v26;
          }

          else
          {
            v25 = vback(v0, v19);
            v19 = 0;
          }

          switch(v25)
          {
            case 1:
              continue;
            case 2:
              v30 = HIWORD(v35);
              goto LABEL_24;
            case 3:
              goto LABEL_18;
            case 4:
              bspop_boa(v0);
              if (advance_tok(v0, v27, v28, v29))
              {
                goto LABEL_12;
              }

              v30 = 15;
              break;
            case 5:
              goto LABEL_20;
            default:
              goto LABEL_3;
          }
        }

        break;
      }
    }

    else
    {
      v30 = 25;
    }

    HIWORD(v35) = v30;
LABEL_24:
    v1[1] = v30;
    v12 = 0;
  }

  vretproc(v0);
  return v12;
}

uint64_t por_glide_y_dur()
{
  OUTLINED_FUNCTION_60_5();
  v48 = *MEMORY[0x277D85DE8];
  v37 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v36, v2);
  OUTLINED_FUNCTION_38_9();
  bzero(v47, v3);
  v4 = setjmp(v47);
  if (v4 || OUTLINED_FUNCTION_9_26(v4, v5, v6, v7, v8, v9, v10, v11, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], v36[21], v36[22], v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47[0]))
  {
    goto LABEL_3;
  }

  v14 = OUTLINED_FUNCTION_46_6();
  get_parm(v14, v15, v1, -4);
  fence_26(v0, 0, &null_str_7);
  v16 = OUTLINED_FUNCTION_21_18();
  starttest(v16, v17);
  v18 = OUTLINED_FUNCTION_0_30();
  if (lpta_loadp_setscan_r(v18, v19, v20))
  {
    goto LABEL_6;
  }

  v22 = OUTLINED_FUNCTION_1_28();
  if (testFldeq(v22, v23, v24, 1))
  {
    v25 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_22();
    bspush_ca_scan_boa();
    v26 = OUTLINED_FUNCTION_15_23();
    v25 = !testFldeq(v26, v27, 3, v28);
  }

  v29 = v25;
  while (1)
  {
    v30 = v0[13];
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_40_7(v30);
      v29 = v32;
    }

    else
    {
      v31 = vback(v0, v29);
      v29 = 0;
    }

    if (v31 != 2)
    {
      break;
    }

    bspop_boa(v0);
    if (!advance_tok(v0, v33, v34, v35))
    {
      v21 = 10;
      goto LABEL_7;
    }
  }

  if (v31 == 1)
  {
LABEL_6:
    v21 = 25;
LABEL_7:
    HIWORD(v37) = v21;
    goto LABEL_8;
  }

  if (v31 == 3)
  {
    v21 = HIWORD(v37);
LABEL_8:
    v1[1] = v21;
    v12 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(v0);
  return v12;
}

uint64_t por_glide_w_dur()
{
  OUTLINED_FUNCTION_60_5();
  v48 = *MEMORY[0x277D85DE8];
  v37 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v36, v2);
  OUTLINED_FUNCTION_38_9();
  bzero(v47, v3);
  v4 = setjmp(v47);
  if (v4 || OUTLINED_FUNCTION_9_26(v4, v5, v6, v7, v8, v9, v10, v11, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], v36[21], v36[22], v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47[0]))
  {
    goto LABEL_3;
  }

  v14 = OUTLINED_FUNCTION_46_6();
  get_parm(v14, v15, v1, -4);
  fence_26(v0, 0, &null_str_7);
  v16 = OUTLINED_FUNCTION_21_18();
  starttest(v16, v17);
  v18 = OUTLINED_FUNCTION_0_30();
  if (lpta_loadp_setscan_r(v18, v19, v20))
  {
    goto LABEL_6;
  }

  v22 = OUTLINED_FUNCTION_1_28();
  if (testFldeq(v22, v23, v24, 1))
  {
    v25 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_22();
    bspush_ca_scan_boa();
    v26 = OUTLINED_FUNCTION_15_23();
    v25 = !testFldeq(v26, v27, 3, v28);
  }

  v29 = v25;
  while (1)
  {
    v30 = v0[13];
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_40_7(v30);
      v29 = v32;
    }

    else
    {
      v31 = vback(v0, v29);
      v29 = 0;
    }

    if (v31 != 2)
    {
      break;
    }

    bspop_boa(v0);
    if (!advance_tok(v0, v33, v34, v35))
    {
      v21 = 5;
      goto LABEL_7;
    }
  }

  if (v31 == 1)
  {
LABEL_6:
    v21 = 30;
LABEL_7:
    HIWORD(v37) = v21;
    goto LABEL_8;
  }

  if (v31 == 3)
  {
    v21 = HIWORD(v37);
LABEL_8:
    v1[1] = v21;
    v12 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(v0);
  return v12;
}

uint64_t following_minor_phrase_edge()
{
  OUTLINED_FUNCTION_60_5();
  v76 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(&v38, v1);
  OUTLINED_FUNCTION_38_9();
  bzero(v75, v2);
  v3 = setjmp(v75);
  if (v3 || OUTLINED_FUNCTION_29_14(v3, &v38, v4, v5, v6, v7, v8, v9, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0]))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_77_4(v11, v12);
  v13 = OUTLINED_FUNCTION_46_6();
  v15 = push_ptr_init(v13, v14);
  OUTLINED_FUNCTION_64_4(v15, v16, &null_str_7);
  v17 = OUTLINED_FUNCTION_44_6();
  fence_26(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_27_15();
  v22 = lpta_loadp_setscan_l(v20, v21, 2);
  v25 = 0;
  if (!v22)
  {
    v26 = advance_tok(v0, 0, v23, v24);
    v27 = 0;
    v25 = 0;
    if (!v26)
    {
LABEL_9:
      v28 = v27;
      OUTLINED_FUNCTION_70_4(2, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
      v25 = v28;
    }
  }

  v29 = v25;
  while (2)
  {
    v30 = OUTLINED_FUNCTION_24_18();
    lpta_loadpn(v30, v31);
    rpta_loadpn(v0, (v0 + 418));
    if (!compare_ptas(v0) && !testeq(v0))
    {
LABEL_3:
      vretproc(v0);
      return 94;
    }

    else
    {
LABEL_13:
      v32 = OUTLINED_FUNCTION_27_15();
      starttest(v32, v33);
      OUTLINED_FUNCTION_48_6();
      bspush_ca_boa();
      OUTLINED_FUNCTION_24_18();
      if (is_minor_phrase_edge())
      {
        v34 = v29;
      }

      else
      {
        v34 = 1;
      }

      v35 = v0[13];
      if (v35)
      {
        v0[13] = 0;
        v36 = v35;
        v37 = v34;
      }

      else
      {
        v36 = vback(v0, v34);
        v37 = 0;
      }

      v29 = v37;
      switch(v36)
      {
        case 1:
          v29 = v37;
          continue;
        case 2:
          v27 = v37;
          goto LABEL_9;
        case 3:
          goto LABEL_13;
        case 4:
          vretproc(v0);
          result = 0;
          break;
        case 5:
          bspop_boa(v0);
          goto LABEL_3;
        default:
          goto LABEL_3;
      }
    }

    return result;
  }
}

uint64_t OUTLINED_FUNCTION_4_26()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

uint64_t OUTLINED_FUNCTION_17_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_29_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, a2, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_30_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36)
{
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return lpta_loadp_setscan_r(v0, v1, 4);
}

double OUTLINED_FUNCTION_49_5@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_54_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_26(v3, 1, a3);
}

double OUTLINED_FUNCTION_58_5@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, __int16 a37, uint64_t a38)
{
  a38 = 0;
  a37 = -5;
  a36 = 65532;

  return push_ptr_init(v38, &a33);
}

void *OUTLINED_FUNCTION_64_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_26(v3, 0, a3);
}

BOOL OUTLINED_FUNCTION_65_4(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 10, 4);
}

void OUTLINED_FUNCTION_69_4()
{

  starttest(v0, v1);
}

double OUTLINED_FUNCTION_70_4@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_71_4@<D0>(uint64_t a1@<X8>)
{

  *&result = savescptr(v1, a1, &STACK[0x2B0]).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_72_4(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, a2);
}

BOOL OUTLINED_FUNCTION_73_4(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 5, 5);
}

void OUTLINED_FUNCTION_77_4(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_78_4()
{

  return rpta_loadpn(v0, v0 + 1464);
}

void OUTLINED_FUNCTION_79_4(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, a2);
}

uint64_t get_por_nas_tilt_amp(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v39);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, SHIDWORD(v87), v89, SWORD2(v89), SHIWORD(v89), v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v93, v94))
  {
    fence_27(a1);
    v21 = OUTLINED_FUNCTION_12_26();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_r(v23, v24, v25))
    {
LABEL_6:
      v19 = 0;
      goto LABEL_4;
    }

    v26 = OUTLINED_FUNCTION_13_26();
    bspush_ca_scan(v26, v27);
    v28 = OUTLINED_FUNCTION_4_27();
    for (i = 35; ; i = 37)
    {
      if (!testFldeq(v28, v29, v30, i))
      {
LABEL_16:
        if (!advance_tok(a1, v32, v33, v34))
        {
          v19 = 0;
          *(a1 + 4406) = ((9 * *(a1 + 4562)) / 10.0 + 10.0);
          *(a1 + 4530) = 1;
          goto LABEL_4;
        }
      }

      v35 = *(a1 + 104);
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_45_7(v35);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_56_6();
        v36 = vback(v37, v38);
      }

      if (v36 != 2)
      {
        if (v36 == 1)
        {
          goto LABEL_6;
        }

        if (v36 != 3)
        {
          break;
        }

        goto LABEL_16;
      }

      v28 = OUTLINED_FUNCTION_4_27();
    }
  }

  v19 = 94;
LABEL_4:
  vretproc(a1);
  return v19;
}

uint64_t get_por_nuc_AV(uint64_t a1)
{
  v380 = *MEMORY[0x277D85DE8];
  v375[0] = 0;
  v375[1] = 0;
  HIDWORD(v374) = 0;
  OUTLINED_FUNCTION_42_7();
  bzero(&v351, v2);
  OUTLINED_FUNCTION_41_7();
  bzero(v379, v3);
  if (setjmp(v379) || ventproc(a1, &v351, v378, v377, v376, v379))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  push_ptr_init(a1, v375);
  HIDWORD(v374) = 65532;
  fence_27(a1);
  v5 = 0;
  *(a1 + 4366) = 0;
  v6 = OUTLINED_FUNCTION_12_26();
  starttest(v6, v7);
  v8 = OUTLINED_FUNCTION_11_26();
  if (lpta_loadp_setscan_r(v8, v9, v10))
  {
LABEL_5:
    v11 = OUTLINED_FUNCTION_23_19();
    starttest(v11, v12);
    v13 = OUTLINED_FUNCTION_11_26();
    if (!lpta_loadp_setscan_r(v13, v14, v15))
    {
      v44 = OUTLINED_FUNCTION_4_27();
      if (testFldeq(v44, v45, v46, 39) || advance_tok(a1, v47, v48, v49))
      {
        goto LABEL_67;
      }

      v43 = 55;
      goto LABEL_37;
    }

LABEL_6:
    v16 = OUTLINED_FUNCTION_30_14();
    starttest(v16, v17);
    v18 = OUTLINED_FUNCTION_11_26();
    if (lpta_loadp_setscan_r(v18, v19, v20))
    {
LABEL_7:
      v21 = OUTLINED_FUNCTION_22_19();
      starttest(v21, v22);
      v23 = OUTLINED_FUNCTION_11_26();
      if (!lpta_loadp_setscan_r(v23, v24, v25))
      {
        v56 = OUTLINED_FUNCTION_8_27();
        if (testFldeq(v56, v57, v58, 7) || advance_tok(a1, v59, v60, v61))
        {
          goto LABEL_67;
        }

        v43 = 53;
        goto LABEL_37;
      }

LABEL_8:
      v26 = OUTLINED_FUNCTION_11_26();
      if (!lpta_loadp_setscan_r(v26, v27, v28))
      {
        OUTLINED_FUNCTION_3_28();
        if (!test_string_s())
        {
          goto LABEL_36;
        }
      }

LABEL_10:
      v29 = OUTLINED_FUNCTION_11_26();
      if (!lpta_loadp_setscan_r(v29, v30, v31))
      {
        OUTLINED_FUNCTION_3_28();
        if (!test_string_s())
        {
          v43 = 57;
          goto LABEL_37;
        }
      }

LABEL_12:
      v32 = OUTLINED_FUNCTION_11_26();
      if (lpta_loadp_setscan_r(v32, v33, v34) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
      {
LABEL_14:
        v35 = OUTLINED_FUNCTION_11_26();
        if (lpta_loadp_setscan_r(v35, v36, v37) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
        {
LABEL_16:
          v38 = OUTLINED_FUNCTION_30_14();
          starttest(v38, v39);
          v40 = OUTLINED_FUNCTION_11_26();
          if (lpta_loadp_setscan_r(v40, v41, v42))
          {
LABEL_17:
            v43 = 56;
LABEL_37:
            *(a1 + 4362) = v43;
            goto LABEL_38;
          }

          v62 = OUTLINED_FUNCTION_4_27();
          if (testFldeq(v62, v63, v64, 38))
          {
            goto LABEL_67;
          }

          v65 = OUTLINED_FUNCTION_4_27();
          if (testFldeq(v65, v66, v67, 24))
          {
            goto LABEL_67;
          }

          goto LABEL_72;
        }
      }

      v43 = 58;
      goto LABEL_37;
    }

    v50 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v50, v51);
    v52 = OUTLINED_FUNCTION_4_27();
    v55 = 31;
LABEL_70:
    testFldeq(v52, v53, v54, v55);
    OUTLINED_FUNCTION_70_5();
    if (v144)
    {
      goto LABEL_78;
    }

LABEL_71:
    v5 = v143;
LABEL_72:
    if (advance_tok(a1, v68, v69, v70))
    {
      goto LABEL_67;
    }

    goto LABEL_36;
  }

  v71 = OUTLINED_FUNCTION_29_15();
  if (testFldeq(v71, v72, 10, 4) || advance_tok(a1, v73, v74, v75))
  {
    LODWORD(v68) = 0;
    goto LABEL_78;
  }

  v76 = OUTLINED_FUNCTION_13_26();
  starttest(v76, v77);
  v78 = OUTLINED_FUNCTION_11_26();
  v81 = lpta_loadp_setscan_l(v78, v79, v80);
  v82 = 0;
  v5 = 0;
  if (v81)
  {
LABEL_34:
    if (*(a1 + 978) <= *(a1 + 958))
    {
LABEL_35:
      v43 = 50;
      goto LABEL_37;
    }

LABEL_36:
    v43 = 54;
    goto LABEL_37;
  }

LABEL_63:
  v129 = v82;
  OUTLINED_FUNCTION_72_5(3, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375[0]);
  v130 = OUTLINED_FUNCTION_35_11();
  bspush_ca_scan(v130, v131);
  v132 = test_string_s();
  v70 = v129;
  LODWORD(v68) = v129;
  if (v132)
  {
    goto LABEL_78;
  }

LABEL_64:
  v5 = v70;
  v133 = OUTLINED_FUNCTION_31_14();
  if (lpta_loadp_setscan_r(v133, v134, v135) || advance_tok(a1, v136, v137, v138))
  {
    goto LABEL_67;
  }

  v139 = OUTLINED_FUNCTION_14_24();
  bspush_ca_scan(v139, v140);
LABEL_68:
  OUTLINED_FUNCTION_3_28();
  test_string_s();
  OUTLINED_FUNCTION_81_4();
  if (v142)
  {
    goto LABEL_78;
  }

LABEL_69:
  *(a1 + 4362) = 45;
  *(a1 + 4366) = 45;
  v5 = v141;
LABEL_38:
  adjust_AV_for_fem_voice(a1);
LABEL_39:
  v83 = OUTLINED_FUNCTION_10_27();
  if (lpta_loadp_setscan_l(v83, v84, v85) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
  {
LABEL_41:
    v86 = *(a1 + 4362) - 2;
  }

  else
  {
    v95 = OUTLINED_FUNCTION_30_14();
    starttest(v95, v96);
    v97 = OUTLINED_FUNCTION_10_27();
    if (lpta_loadp_setscan_r(v97, v98, v99))
    {
LABEL_52:
      v100 = *(a1 + 4362);
      *(a1 + 4362) = v100 + 2;
      v86 = v100 - 3;
    }

    else
    {
      v123 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v123, v124);
      v125 = OUTLINED_FUNCTION_29_15();
      v127 = 4;
      v128 = 1;
LABEL_74:
      testFldeq(v125, v126, v127, v128);
      OUTLINED_FUNCTION_65_5();
      if (v145)
      {
        goto LABEL_78;
      }

LABEL_75:
      v5 = v69;
      if (advance_tok(a1, v68, v69, v70))
      {
        goto LABEL_67;
      }

      v86 = *(a1 + 4362) - 5;
    }
  }

  *(a1 + 4366) = v86;
LABEL_43:
  if (*(a1 + 1018) == *(a1 + 938) && *(a1 + 2570) == *(a1 + 3270) && !*(a1 + 950))
  {
    v101 = OUTLINED_FUNCTION_30_14();
    starttest(v101, v102);
    v103 = OUTLINED_FUNCTION_11_26();
    if (lpta_loadp_setscan_l(v103, v104, v105))
    {
LABEL_54:
      v106 = OUTLINED_FUNCTION_30_14();
      starttest(v106, v107);
      v108 = OUTLINED_FUNCTION_11_26();
      if (!lpta_loadp_setscan_l(v108, v109, v110))
      {
LABEL_134:
        OUTLINED_FUNCTION_72_5(35, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375[0]);
        v279 = OUTLINED_FUNCTION_29_15();
        if (!testFldeq(v279, v280, 2, v281) && !advance_tok(a1, v282, v283, v284))
        {
          v285 = OUTLINED_FUNCTION_31_14();
          if (!lpta_loadp_setscan_r(v285, v286, v287))
          {
            v288 = OUTLINED_FUNCTION_8_27();
            if (!testFldeq(v288, v289, v290, 5) && !advance_tok(a1, v291, v292, v293))
            {
              *(a1 + 4362) -= 5;
              v94 = -8;
              goto LABEL_113;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_55:
      OUTLINED_FUNCTION_92_2();
      goto LABEL_59;
    }

LABEL_77:
    v146 = 32;
    v147 = 31;
LABEL_131:
    v275 = v5;
    v5 = v146;
    savescptr(a1, v147, v375);
    bspush_ca_scan_boa();
    v276 = OUTLINED_FUNCTION_29_15();
    if (testFldeq(v276, v277, 2, v278))
    {
      LODWORD(v68) = v275;
    }

    else
    {
      LODWORD(v68) = 1;
    }

    goto LABEL_78;
  }

LABEL_46:
  if (*(a1 + 930) != 1 || *(a1 + 978) >= *(a1 + 958))
  {
LABEL_94:
    v181 = OUTLINED_FUNCTION_30_14();
    starttest(v181, v182);
    v183 = OUTLINED_FUNCTION_83_3();
    if (lpta_loadp_setscan_r(v183, v184, 7))
    {
      goto LABEL_95;
    }

    v222 = OUTLINED_FUNCTION_33_13();
    if (!npush_fld(v222, 7u, v223))
    {
      v224 = OUTLINED_FUNCTION_56_6();
      npush_i(v224);
      if (!if_testeq(a1, v225, v226, v227, v228, v229, v230, v231) && !advance_tok(a1, v232, v233, v234))
      {
        *(a1 + 136) = 1;
        *(a1 + 112) = *(a1 + 664);
        *(a1 + 128) = 0;
        if (!test_ptr(a1, v235, v236))
        {
          v237 = OUTLINED_FUNCTION_83_3();
          lpta_loadpn(v237, v238);
          rpta_loadpn(a1, a1 + 1448);
          if (compare_ptas(a1))
          {
LABEL_110:
            v239 = v5;
          }

          else
          {
            v349 = testeq(a1);
            v239 = v5;
            v185 = v5;
            if (!v349)
            {
              goto LABEL_96;
            }
          }

          v185 = v239;
          OUTLINED_FUNCTION_83_3();
          v5 = v185;
          if (following_minor_phrase_edge())
          {
LABEL_112:
            *(a1 + 4362) -= 2;
            v94 = -2;
            goto LABEL_113;
          }

          goto LABEL_96;
        }
      }
    }

    goto LABEL_67;
  }

  OUTLINED_FUNCTION_83_3();
  if (!is_minor_phrase_edge())
  {
    v111 = OUTLINED_FUNCTION_27_16();
    starttest(v111, v112);
    v113 = OUTLINED_FUNCTION_11_26();
    if (lpta_loadp_setscan_l(v113, v114, v115))
    {
LABEL_57:
      v116 = OUTLINED_FUNCTION_30_14();
      starttest(v116, v117);
      v118 = OUTLINED_FUNCTION_11_26();
      v121 = lpta_loadp_setscan_l(v118, v119, v120);
      v93 = v5;
      if (!v121)
      {
LABEL_140:
        OUTLINED_FUNCTION_72_5(44, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375[0]);
        v294 = OUTLINED_FUNCTION_29_15();
        if (!testFldeq(v294, v295, 2, v296) && !advance_tok(a1, v297, v298, v299))
        {
          v300 = OUTLINED_FUNCTION_31_14();
          if (!lpta_loadp_setscan_r(v300, v301, v302))
          {
            v303 = OUTLINED_FUNCTION_8_27();
            if (!testFldeq(v303, v304, v305, 5) && !advance_tok(a1, v306, v307, v308))
            {
              OUTLINED_FUNCTION_92_2();
              goto LABEL_113;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_58:
      --*(a1 + 4362);
      v94 = -4;
      goto LABEL_59;
    }

LABEL_130:
    v146 = 41;
    v147 = 40;
    goto LABEL_131;
  }

LABEL_49:
  v87 = OUTLINED_FUNCTION_30_14();
  starttest(v87, v88);
  v89 = OUTLINED_FUNCTION_11_26();
  v92 = lpta_loadp_setscan_l(v89, v90, v91);
  v93 = v5;
  if (v92)
  {
LABEL_50:
    --*(a1 + 4362);
    v94 = -2;
LABEL_59:
    v122 = (a1 + 4366);
    v5 = v93;
    goto LABEL_60;
  }

LABEL_124:
  OUTLINED_FUNCTION_72_5(47, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375[0]);
  v260 = OUTLINED_FUNCTION_29_15();
  if (testFldeq(v260, v261, 2, v262))
  {
    goto LABEL_67;
  }

  if (advance_tok(a1, v263, v264, v265))
  {
    goto LABEL_67;
  }

  v266 = OUTLINED_FUNCTION_31_14();
  if (lpta_loadp_setscan_r(v266, v267, v268))
  {
    goto LABEL_67;
  }

  v269 = OUTLINED_FUNCTION_8_27();
  if (testFldeq(v269, v270, v271, 5) || advance_tok(a1, v272, v273, v274))
  {
    goto LABEL_67;
  }

  v122 = (a1 + 4362);
  v94 = -6;
LABEL_60:
  while (1)
  {
    *v122 += v94;
LABEL_95:
    v185 = v5;
LABEL_96:
    *(a1 + 4722) = 4;
    v186 = OUTLINED_FUNCTION_68_5();
    if (if_testeq_v_i(v186, v187, 1, v188, v189, v190, v191, v192))
    {
      break;
    }

    v193 = OUTLINED_FUNCTION_30_14();
    starttest(v193, v194);
    v195 = OUTLINED_FUNCTION_11_26();
    if (lpta_loadp_setscan_r(v195, v196, v197))
    {
LABEL_98:
      v198 = OUTLINED_FUNCTION_30_14();
      starttest(v198, v199);
      v200 = OUTLINED_FUNCTION_11_26();
      if (lpta_loadp_setscan_r(v200, v201, v202))
      {
        v5 = v185;
      }

      else
      {
        v255 = OUTLINED_FUNCTION_29_15();
        if (testFldeq(v255, v256, 7, 1) || advance_tok(a1, v257, v258, v259))
        {
          goto LABEL_123;
        }

        v332 = OUTLINED_FUNCTION_30_14();
        starttest(v332, v333);
        v334 = OUTLINED_FUNCTION_57_6();
        move_i(v334, v335, 58);
        v336 = OUTLINED_FUNCTION_68_5();
        v338 = set_av_limit(v336, v337, v5);
        LODWORD(v68) = v185;
        if (v338)
        {
          goto LABEL_78;
        }

LABEL_157:
        v339 = OUTLINED_FUNCTION_30_14();
        starttest(v339, v340);
        v341 = OUTLINED_FUNCTION_57_6();
        v343 = 58;
LABEL_161:
        move_i(v341, v342, v343);
        v346 = OUTLINED_FUNCTION_54_6();
        v348 = set_av_limit(v346, v347, v5);
        LODWORD(v68) = v185;
        v5 = v185;
        if (v348)
        {
          goto LABEL_78;
        }
      }

LABEL_100:
      v203 = OUTLINED_FUNCTION_30_14();
      starttest(v203, v204);
      *(a1 + 4722) = 5;
      v205 = OUTLINED_FUNCTION_68_5();
      if (if_testgt_v_i(v205, v206, 30, v207, v208, v209, v210, v211) || (v212 = OUTLINED_FUNCTION_11_26(), lpta_loadp_setscan_r(v212, v213, v214)))
      {
LABEL_146:
        *(a1 + 4722) = 9;
        v309 = OUTLINED_FUNCTION_68_5();
        if (if_testgt_v_i(v309, v310, 1000, v311, v312, v313, v314, v315))
        {
          break;
        }

        v221 = -2;
        goto LABEL_148;
      }

      v215 = OUTLINED_FUNCTION_29_15();
      if (testFldeq(v215, v216, 7, 1))
      {
LABEL_67:
        LODWORD(v68) = v5;
      }

      else
      {
        v220 = advance_tok(a1, v217, v218, v219);
        LODWORD(v68) = v5;
        if (!v220)
        {
          v221 = -1;
LABEL_148:
          *(a1 + 4362) += v221;
          *(a1 + 4366) += v221;
          break;
        }
      }

      goto LABEL_78;
    }

    v240 = OUTLINED_FUNCTION_4_27();
    if (testFldeq(v240, v241, v242, 37) || advance_tok(a1, v243, v244, v245))
    {
LABEL_123:
      LODWORD(v68) = v185;
      goto LABEL_78;
    }

    v246 = OUTLINED_FUNCTION_30_14();
    starttest(v246, v247);
    v248 = OUTLINED_FUNCTION_57_6();
    move_i(v248, v249, 57);
    v250 = OUTLINED_FUNCTION_68_5();
    v252 = set_av_limit(v250, v251, v5);
    LODWORD(v68) = v185;
    if (!v252)
    {
LABEL_160:
      v344 = OUTLINED_FUNCTION_30_14();
      starttest(v344, v345);
      v341 = OUTLINED_FUNCTION_57_6();
      v343 = 57;
      goto LABEL_161;
    }

LABEL_78:
    while (2)
    {
      v148 = *(a1 + 104);
      if (v148)
      {
        v149 = OUTLINED_FUNCTION_26_18(v148);
      }

      else
      {
        v149 = vback(a1, v68);
        v5 = 0;
      }

      v70 = v5;
      v141 = v5;
      v143 = v5;
      v69 = v5;
      switch(v149)
      {
        case 1:
          goto LABEL_5;
        case 2:
          goto LABEL_34;
        case 3:
          v82 = v5;
          goto LABEL_63;
        case 4:
          OUTLINED_FUNCTION_3_28();
          test_string_s();
          OUTLINED_FUNCTION_69_5();
          if (!v150)
          {
            goto LABEL_64;
          }

          continue;
        case 5:
          goto LABEL_64;
        case 6:
          goto LABEL_68;
        case 7:
          goto LABEL_69;
        case 8:
        case 10:
          goto LABEL_38;
        case 9:
          goto LABEL_35;
        case 11:
          goto LABEL_6;
        case 12:
          goto LABEL_7;
        case 13:
          v52 = OUTLINED_FUNCTION_4_27();
          v55 = 34;
          goto LABEL_70;
        case 14:
          goto LABEL_71;
        case 15:
          goto LABEL_8;
        case 16:
          goto LABEL_10;
        case 17:
          goto LABEL_12;
        case 18:
          goto LABEL_14;
        case 19:
          goto LABEL_16;
        case 20:
          goto LABEL_17;
        case 21:
          goto LABEL_39;
        case 22:
          goto LABEL_41;
        case 23:
          goto LABEL_52;
        case 24:
          v253 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v253, v254);
          v125 = OUTLINED_FUNCTION_4_27();
          v128 = 18;
          goto LABEL_74;
        case 25:
          goto LABEL_75;
        case 26:
          v125 = OUTLINED_FUNCTION_4_27();
          v128 = 19;
          goto LABEL_74;
        case 27:
        case 28:
          goto LABEL_43;
        case 29:
          goto LABEL_46;
        case 30:
          goto LABEL_54;
        case 31:
          goto LABEL_77;
        case 32:
          bspop_boa(a1);
          v154 = advance_tok(a1, v151, v152, v153);
          LODWORD(v68) = v5;
          if (v154)
          {
            continue;
          }

          v155 = OUTLINED_FUNCTION_31_14();
          v158 = lpta_loadp_setscan_r(v155, v156, v157);
          LODWORD(v68) = v5;
          if (v158)
          {
            continue;
          }

          v159 = OUTLINED_FUNCTION_8_27();
          v162 = testFldeq(v159, v160, v161, 5);
          LODWORD(v68) = v5;
          if (v162)
          {
            continue;
          }

          v165 = advance_tok(a1, v5, v163, v164);
          LODWORD(v68) = v5;
          if (v165)
          {
            continue;
          }

          *(a1 + 4362) -= 6;
          v94 = -9;
          break;
        case 33:
        case 36:
        case 42:
        case 45:
        case 49:
          goto LABEL_95;
        case 34:
          goto LABEL_55;
        case 35:
          goto LABEL_134;
        case 37:
          goto LABEL_94;
        case 38:
          goto LABEL_49;
        case 39:
          goto LABEL_57;
        case 40:
          goto LABEL_130;
        case 41:
          bspop_boa(a1);
          v169 = advance_tok(a1, v166, v167, v168);
          LODWORD(v68) = v5;
          if (v169)
          {
            continue;
          }

          v170 = OUTLINED_FUNCTION_31_14();
          v173 = lpta_loadp_setscan_r(v170, v171, v172);
          LODWORD(v68) = v5;
          if (v173)
          {
            continue;
          }

          v174 = OUTLINED_FUNCTION_8_27();
          v177 = testFldeq(v174, v175, v176, 5);
          LODWORD(v68) = v5;
          if (v177)
          {
            continue;
          }

          v180 = advance_tok(a1, v5, v178, v179);
          LODWORD(v68) = v5;
          if (v180)
          {
            continue;
          }

          *(a1 + 4362) -= 4;
          v94 = -7;
          break;
        case 43:
          v93 = v5;
          goto LABEL_58;
        case 44:
          goto LABEL_140;
        case 46:
          v93 = v5;
          goto LABEL_50;
        case 47:
          goto LABEL_124;
        case 48:
          goto LABEL_110;
        case 50:
          goto LABEL_112;
        case 51:
          goto LABEL_149;
        case 52:
          v185 = v5;
          goto LABEL_98;
        case 53:
          v185 = v5;
          goto LABEL_160;
        case 54:
        case 55:
        case 57:
          goto LABEL_100;
        case 56:
          v185 = v5;
          goto LABEL_157;
        case 58:
          goto LABEL_146;
        case 59:
          goto LABEL_150;
        case 60:
          goto LABEL_151;
        default:
          goto LABEL_3;
      }

      break;
    }

LABEL_113:
    v122 = (a1 + 4366);
  }

LABEL_149:
  v316 = OUTLINED_FUNCTION_68_5();
  adjust_breathiness_av(v316, v317, v318, v319, v320, v321, v322, v323);
LABEL_150:
  v324 = OUTLINED_FUNCTION_54_6();
  adjust_breathiness_av(v324, v325, v326, v327, v328, v329, v330, v331);
LABEL_151:
  vretproc(a1);
  return 0;
}

uint64_t set_av_limit(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  OUTLINED_FUNCTION_42_7();
  bzero(v11, v6);
  OUTLINED_FUNCTION_41_7();
  bzero(v17, v7);
  if (setjmp(v17) || ventproc(a1, v11, v16, v15, v14, v17))
  {
    v8 = 94;
  }

  else
  {
    get_parm(a1, &v13, a2, -4);
    get_parm(a1, &v12, a3, -4);
    fence_27(a1);
    v10 = HIWORD(v13);
    if (SHIWORD(v12) < SHIWORD(v13))
    {
      HIWORD(v13) = HIWORD(v12);
      v10 = HIWORD(v12);
    }

    a2[1] = v10;
    v8 = 0;
  }

  vretproc(a1);
  return v8;
}

uint64_t adjust_breathiness_av(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v64);
  OUTLINED_FUNCTION_41_7();
  bzero(v93, v10);
  v11 = setjmp(v93);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, 0, v89, v90, SWORD2(v90), SHIWORD(v90), v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v92, v93[0]) || (v20 = OUTLINED_FUNCTION_44_7(), get_parm(v20, v21, a2, -4), fence_27(a1), v88 < 0))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    *(a1 + 4722) = 6;
    v22 = OUTLINED_FUNCTION_54_6();
    if (if_testle_v_i(v22, v23, 90, v24, v25, v26, v27, v28))
    {
      *(a1 + 4722) = 6;
      v29 = OUTLINED_FUNCTION_54_6();
      if (if_testle_v_i(v29, v30, 80, v31, v32, v33, v34, v35))
      {
        *(a1 + 4722) = 6;
        v36 = OUTLINED_FUNCTION_54_6();
        if (if_testle_v_i(v36, v37, 74, v38, v39, v40, v41, v42))
        {
          *(a1 + 4722) = 6;
          v43 = OUTLINED_FUNCTION_54_6();
          if (if_testle_v_i(v43, v44, 69, v45, v46, v47, v48, v49))
          {
            v50 = OUTLINED_FUNCTION_47_7(6);
            if_testle_v_i(v50, v51, 66, v52, v53, v54, v55, v56);
            OUTLINED_FUNCTION_77_5();
            if (!v59 && v58 >= 59)
            {
              v57 = 58;
            }
          }

          else
          {
            OUTLINED_FUNCTION_77_5();
            if (v63 >= 58)
            {
              v57 = 57;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_77_5();
          if (v62 >= 57)
          {
            v57 = 56;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_77_5();
        if (v61 >= 56)
        {
          v57 = 55;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_77_5();
      if (v60 >= 55)
      {
        v57 = 54;
      }
    }

    a2[1] = v57;
    vretproc(a1);
    return 0;
  }
}

uint64_t por_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v177);
  OUTLINED_FUNCTION_21_19(v10, v11, v12, v13, v14, v15, v16, v17, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_9_27(v18, v19, v20, v21, v22, v23, v24, v25, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, SHIDWORD(v225), v227, SWORD2(v227), SHIWORD(v227), v229, SWORD2(v229), SBYTE6(v229), SHIBYTE(v229), v231, v232))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_27(a1);
  v27 = OUTLINED_FUNCTION_6_27();
  if (lpta_loadp_setscan_r(v27, v28, v29) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
  {
    v30 = 0;
LABEL_8:
    v37 = v30;
    v38 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_r(v38, v39, v40) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
    {
      v31 = v37;
LABEL_11:
      v37 = v31;
      v48 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_r(v48, v49, v50) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
      {
        v32 = v37;
LABEL_14:
        v37 = v32;
        v51 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_r(v51, v52, v53) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
        {
          v33 = v37;
LABEL_17:
          v37 = v33;
          v61 = OUTLINED_FUNCTION_6_27();
          if (lpta_loadp_setscan_r(v61, v62, v63) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
          {
            v34 = v37;
LABEL_20:
            v37 = v34;
            v71 = OUTLINED_FUNCTION_6_27();
            if (lpta_loadp_setscan_r(v71, v72, v73) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
            {
              v35 = v37;
LABEL_23:
              v37 = v35;
              v81 = OUTLINED_FUNCTION_6_27();
              if (lpta_loadp_setscan_r(v81, v82, v83) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
              {
                v36 = v37;
LABEL_26:
                v37 = v36;
                v91 = OUTLINED_FUNCTION_6_27();
                if (lpta_loadp_setscan_r(v91, v92, v93) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                {
                  v94 = v37;
LABEL_29:
                  v37 = v94;
                  v95 = OUTLINED_FUNCTION_6_27();
                  if (lpta_loadp_setscan_r(v95, v96, v97) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                  {
                    v98 = v37;
LABEL_32:
                    v37 = v98;
                    v99 = OUTLINED_FUNCTION_6_27();
                    if (lpta_loadp_setscan_r(v99, v100, v101) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                    {
                      v102 = v37;
LABEL_35:
                      v37 = v102;
                      v103 = OUTLINED_FUNCTION_6_27();
                      if (lpta_loadp_setscan_r(v103, v104, v105) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                      {
                        v106 = v37;
LABEL_38:
                        v37 = v106;
                        v107 = OUTLINED_FUNCTION_6_27();
                        if (lpta_loadp_setscan_r(v107, v108, v109) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                        {
                          v110 = v37;
LABEL_41:
                          v37 = v110;
                          v111 = OUTLINED_FUNCTION_6_27();
                          if (lpta_loadp_setscan_r(v111, v112, v113) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                          {
                            v114 = v37;
LABEL_44:
                            v37 = v114;
                            v115 = OUTLINED_FUNCTION_6_27();
                            if (lpta_loadp_setscan_r(v115, v116, v117) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                            {
                              v118 = v37;
LABEL_47:
                              v37 = v118;
                              v119 = OUTLINED_FUNCTION_6_27();
                              if (lpta_loadp_setscan_r(v119, v120, v121) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                              {
                                v122 = v37;
LABEL_50:
                                v37 = v122;
                                v123 = OUTLINED_FUNCTION_6_27();
                                if (lpta_loadp_setscan_r(v123, v124, v125) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                                {
                                  v133 = v37;
LABEL_53:
                                  v37 = v133;
                                  v134 = OUTLINED_FUNCTION_30_14();
                                  starttest(v134, v135);
                                  v136 = OUTLINED_FUNCTION_6_27();
                                  if (!lpta_loadp_setscan_r(v136, v137, v138))
                                  {
                                    v139 = OUTLINED_FUNCTION_4_27();
                                    if (testFldeq(v139, v140, v141, 27) || advance_tok(a1, v142, v143, v144))
                                    {
LABEL_81:
                                      v167 = v37;
                                      goto LABEL_82;
                                    }

                                    por_ph_M(a1);
                                  }
                                }

                                else
                                {
                                  por_ph_y(a1, v126, v127, v128, v129, v130, v131, v132);
                                }
                              }

                              else
                              {
                                por_ph_Y(a1);
                              }
                            }

                            else
                            {
                              por_ph_W(a1);
                            }
                          }

                          else
                          {
                            por_ph_w(a1);
                          }
                        }

                        else
                        {
                          por_ph_u_nas(a1);
                        }
                      }

                      else
                      {
                        por_ph_o_nas(a1);
                      }
                    }

                    else
                    {
                      por_ph_a_nas(a1);
                    }
                  }

                  else
                  {
                    por_ph_e_nas(a1);
                  }
                }

                else
                {
                  por_ph_i_nas(a1);
                }
              }

              else
              {
                por_ph_u(a1, v84, v85, v86, v87, v88, v89, v90);
              }
            }

            else
            {
              por_ph_c(a1, v74, v75, v76, v77, v78, v79, v80);
            }
          }

          else
          {
            por_ph_o(a1, v64, v65, v66, v67, v68, v69, v70);
          }
        }

        else
        {
          por_ph_a(a1, v54, v55, v56, v57, v58, v59, v60);
        }
      }

      else
      {
        por_ph_E(a1);
      }
    }

    else
    {
      por_ph_e(a1, v41, v42, v43, v44, v45, v46, v47);
    }
  }

  else
  {
    por_ph_i(a1);
    v37 = 0;
  }

  while (2)
  {
    por_coarticulation(a1, v30, v31, v32, v33, v34, v35, v36);
    v145 = v37;
LABEL_73:
    v146 = OUTLINED_FUNCTION_47_7(4);
    if (if_testeq_v_i(v146, v147, 1, v148, v149, v150, v151, v152))
    {
      v153 = v145;
    }

    else
    {
      v154 = OUTLINED_FUNCTION_47_7(6);
      if (!if_testneq_v_i(v154, v155, 100, v156, v157, v158, v159, v160))
      {
        modify_breathiness_for_femV(a1);
      }

      v161 = v145;
LABEL_78:
      v153 = v161;
      if (*(a1 + 4374) <= 299)
      {
        *(a1 + 4374) = 300;
      }
    }

LABEL_80:
    v37 = v153;
    v162 = OUTLINED_FUNCTION_30_14();
    starttest(v162, v163);
    OUTLINED_FUNCTION_27_16();
    bspush_ca_boa();
    v164 = OUTLINED_FUNCTION_5_27();
    if (lpta_loadp_setscan_r(v164, v165, v166))
    {
      goto LABEL_81;
    }

    v170 = OUTLINED_FUNCTION_4_27();
    if (testFldeq(v170, v171, v172, 17))
    {
      goto LABEL_81;
    }

    if (advance_tok(a1, v173, v174, v175))
    {
      v167 = v37;
    }

    else
    {
      v167 = 1;
    }

LABEL_82:
    v168 = *(a1 + 104);
    if (v168)
    {
      *(a1 + 104) = 0;
      v169 = v168;
      v153 = v167;
    }

    else
    {
      v169 = vback(a1, v167);
      v153 = 0;
    }

    v176 = v169 - 1;
    v30 = v153;
    v31 = v153;
    v32 = v153;
    v33 = v153;
    v34 = v153;
    v35 = v153;
    v36 = v153;
    v94 = v153;
    v98 = v153;
    v102 = v153;
    v106 = v153;
    v110 = v153;
    v114 = v153;
    v118 = v153;
    v122 = v153;
    v133 = v153;
    v37 = v153;
    v145 = v153;
    v161 = v153;
    switch(v176)
    {
      case 0:
        goto LABEL_8;
      case 1:
      case 2:
      case 4:
      case 6:
      case 8:
      case 10:
      case 12:
      case 14:
      case 16:
      case 18:
      case 20:
      case 22:
      case 24:
      case 26:
      case 28:
      case 30:
      case 32:
      case 33:
        continue;
      case 3:
        goto LABEL_11;
      case 5:
        goto LABEL_14;
      case 7:
        goto LABEL_17;
      case 9:
        goto LABEL_20;
      case 11:
        goto LABEL_23;
      case 13:
        goto LABEL_26;
      case 15:
        goto LABEL_29;
      case 17:
        goto LABEL_32;
      case 19:
        goto LABEL_35;
      case 21:
        goto LABEL_38;
      case 23:
        goto LABEL_41;
      case 25:
        goto LABEL_44;
      case 27:
        goto LABEL_47;
      case 29:
        goto LABEL_50;
      case 31:
        goto LABEL_53;
      case 34:
        goto LABEL_73;
      case 35:
        goto LABEL_80;
      case 36:
        goto LABEL_78;
      case 37:
        goto LABEL_91;
      case 38:
        bspop_boa(a1);
        nasalize_vow(a1);
LABEL_91:
        get_por_nas_tilt_amp(a1);
        goto LABEL_92;
      case 39:
LABEL_92:
        insert_acoustic_vals(a1);
        break;
      case 40:
        goto LABEL_93;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_93:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_i(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v144);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, SHIDWORD(v192), v194, SWORD2(v194), SHIWORD(v194), v196, SWORD2(v196), SBYTE6(v196), SHIBYTE(v196), v198, v199))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_27(a1);
  *(a1 + 4578) = 270;
  OUTLINED_FUNCTION_53_6(2190);
  OUTLINED_FUNCTION_62_5(2800);
  v20 = OUTLINED_FUNCTION_12_26();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_6_27();
  if (!lpta_loadp_setscan_l(v22, v23, v24))
  {
    v139 = OUTLINED_FUNCTION_13_26();
    bspush_ca_scan(v139, v140);
    OUTLINED_FUNCTION_3_28();
    v25 = 0;
    if (test_string_s())
    {
      goto LABEL_40;
    }

LABEL_72:
    v39 = 100;
    goto LABEL_15;
  }

  v25 = 0;
  while (2)
  {
    v26 = OUTLINED_FUNCTION_17_22();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v28, v29, v30))
    {
      v37 = OUTLINED_FUNCTION_14_24();
      bspush_ca_scan(v37, v38);
      OUTLINED_FUNCTION_3_28();
      if (test_string_s())
      {
        goto LABEL_40;
      }

LABEL_13:
      v39 = -200;
      goto LABEL_15;
    }

LABEL_7:
    v31 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v31, v32, v33))
    {
      OUTLINED_FUNCTION_3_28();
      if (!test_string_s())
      {
LABEL_14:
        v39 = -100;
LABEL_15:
        OUTLINED_FUNCTION_36_11(v39);
        v25 = v40;
        goto LABEL_16;
      }
    }

LABEL_9:
    v34 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v34, v35, v36))
    {
      OUTLINED_FUNCTION_3_28();
      if (!test_string_s())
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v41 = OUTLINED_FUNCTION_30_14();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v43, v44, v45))
    {
      v65 = OUTLINED_FUNCTION_8_27();
      if (!testFldeq(v65, v66, v67, 4) && !advance_tok(a1, v68, v69, v70))
      {
        OUTLINED_FUNCTION_52_6();
        OUTLINED_FUNCTION_43_7(v71);
        v64 = v72 - 300;
        goto LABEL_31;
      }

LABEL_40:
      LODWORD(v95) = v25;
LABEL_41:
      v96 = *(a1 + 104);
      if (v96)
      {
        v97 = OUTLINED_FUNCTION_26_18(v96);
      }

      else
      {
        v97 = vback(a1, v95);
        v25 = 0;
      }

      v39 = 100;
      v98 = v25;
      v99 = v25;
      switch(v97)
      {
        case 1:
          continue;
        case 2:
          OUTLINED_FUNCTION_3_28();
          v100 = test_string_s();
          LODWORD(v95) = v25;
          if (!v100)
          {
            goto LABEL_72;
          }

          goto LABEL_41;
        case 3:
          goto LABEL_15;
        case 4:
          goto LABEL_16;
        case 5:
          goto LABEL_7;
        case 6:
          v122 = OUTLINED_FUNCTION_15_24();
          bspush_ca_scan(v122, v123);
          goto LABEL_56;
        case 7:
          goto LABEL_13;
        case 8:
        case 9:
          v124 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v124, v125);
          goto LABEL_56;
        case 10:
LABEL_56:
          OUTLINED_FUNCTION_3_28();
          v126 = test_string_s();
          LODWORD(v95) = v25;
          if (!v126)
          {
            goto LABEL_13;
          }

          goto LABEL_41;
        case 11:
          goto LABEL_9;
        case 12:
          goto LABEL_17;
        case 13:
          goto LABEL_32;
        case 14:
          goto LABEL_18;
        case 15:
          OUTLINED_FUNCTION_3_28();
          test_string_s();
          OUTLINED_FUNCTION_69_5();
          if (!v128)
          {
            goto LABEL_28;
          }

          goto LABEL_41;
        case 16:
          goto LABEL_28;
        case 17:
          goto LABEL_19;
        case 18:
        case 20:
          v118 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v118, v119);
          goto LABEL_58;
        case 19:
          goto LABEL_30;
        case 21:
          v120 = OUTLINED_FUNCTION_24_19();
          bspush_ca_scan(v120, v121);
          goto LABEL_58;
        case 22:
LABEL_58:
          OUTLINED_FUNCTION_3_28();
          test_string_s();
          OUTLINED_FUNCTION_65_5();
          if (!v127)
          {
            goto LABEL_30;
          }

          goto LABEL_41;
        case 23:
          goto LABEL_21;
        case 24:
          goto LABEL_75;
        case 25:
          goto LABEL_35;
        case 26:
          bspop_boa(a1);
          OUTLINED_FUNCTION_58_6();
          if (!v101)
          {
            goto LABEL_41;
          }

          v102 = OUTLINED_FUNCTION_30_14();
          starttest(v102, v103);
          v104 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v104, v105, v106))
          {
            goto LABEL_50;
          }

          v132 = OUTLINED_FUNCTION_29_15();
          v134 = testFldeq(v132, v133, 6, 2);
          LODWORD(v95) = v25;
          if (v134)
          {
            goto LABEL_41;
          }

          v137 = advance_tok(a1, v25, v135, v136);
          LODWORD(v95) = v25;
          if (v137)
          {
            goto LABEL_41;
          }

          v138 = *(a1 + 4590);
          LODWORD(v95) = v25;
          if (v138 < 2001)
          {
            goto LABEL_41;
          }

          v143 = v138 - 350;
          goto LABEL_74;
        case 27:
          goto LABEL_37;
        case 28:
LABEL_50:
          v107 = OUTLINED_FUNCTION_30_14();
          starttest(v107, v108);
          v109 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v109, v110, v111))
          {
            goto LABEL_75;
          }

          v112 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v112, v113);
          v114 = OUTLINED_FUNCTION_4_27();
          v117 = 30;
LABEL_63:
          v129 = testFldeq(v114, v115, v116, v117);
          v95 = v25;
          if (v129)
          {
            goto LABEL_41;
          }

LABEL_64:
          v130 = advance_tok(a1, v95, v99, v98);
          LODWORD(v95) = v25;
          if (v130)
          {
            goto LABEL_41;
          }

          v131 = *(a1 + 4590);
          LODWORD(v95) = v25;
          if (v131 < 2001)
          {
            goto LABEL_41;
          }

          v143 = v131 - 550;
LABEL_74:
          *(a1 + 4590) = v143;
          break;
        case 29:
          v114 = OUTLINED_FUNCTION_4_27();
          v117 = 37;
          goto LABEL_63;
        case 30:
          goto LABEL_64;
        default:
          goto LABEL_3;
      }

      goto LABEL_75;
    }

    break;
  }

LABEL_17:
  v46 = OUTLINED_FUNCTION_25_18();
  starttest(v46, v47);
  v48 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v48, v49, v50))
  {
    v73 = OUTLINED_FUNCTION_22_19();
    bspush_ca_scan(v73, v74);
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
LABEL_28:
      OUTLINED_FUNCTION_51_6();
      v25 = v75;
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_18:
  v51 = OUTLINED_FUNCTION_30_14();
  starttest(v51, v52);
  v53 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v53, v54, v55))
  {
    v76 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v76, v77);
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
LABEL_30:
      OUTLINED_FUNCTION_43_7(*(a1 + 4590) - 200);
      v64 = v78 - 100;
      v25 = v79;
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_19:
  v56 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v56, v57, v58))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_43_7(v141);
      v64 = v142 - 250;
      goto LABEL_31;
    }
  }

LABEL_21:
  v59 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v59, v60, v61))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_43_7(v62);
      v64 = v63 - 150;
LABEL_31:
      *(a1 + 4598) = v64;
    }
  }

LABEL_32:
  v80 = OUTLINED_FUNCTION_30_14();
  starttest(v80, v81);
  v82 = OUTLINED_FUNCTION_34_12();
  lpta_loadpn(v82, v83);
  v84 = OUTLINED_FUNCTION_83_3();
  rpta_loadpn(v84, v85);
  if (!compare_ptas(a1) && !testneq(a1))
  {
    v86 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v86, v87, v88))
    {
LABEL_35:
      v89 = OUTLINED_FUNCTION_16_23();
      if (!test_synch(v89, v90, 1, v91))
      {
        OUTLINED_FUNCTION_30_14();
        bspush_ca_scan_boa();
LABEL_37:
        v92 = OUTLINED_FUNCTION_30_14();
        if (test_synch(v92, v93, 1, v94))
        {
          v25 = v25;
        }

        else
        {
          v25 = 1;
        }
      }

      goto LABEL_40;
    }
  }

LABEL_75:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_e(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v259);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_85_3(v10, v11, v12, v13, v14, v15, v16, v17, v260, v263, v266, v269, v272, v275, v278, v281, v284, v287, v290, v293, v296, v299, v302, v305, v308, v311, v314, v317, v320, v323, v326, 0, 0, v332, v334, v336, v338);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_20_19(v18, v19, v20, v21, v22, v23, v24, v25, v261, v264, v267, v270, v273, v276, v279, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v312, v315, v318, v321, v324, v327, v329, v331, v333, SHIDWORD(v333), v335, SWORD2(v335), SHIWORD(v335), v337, SWORD2(v337), SBYTE6(v337), SHIBYTE(v337), v339, v340))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_44_7();
  push_ptr_init(v27, v28);
  fence_27(a1);
  OUTLINED_FUNCTION_63_5(350);
  OUTLINED_FUNCTION_53_6(1900);
  OUTLINED_FUNCTION_62_5(2600);
  v29 = OUTLINED_FUNCTION_12_26();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_6_27();
  if (!lpta_loadp_setscan_l(v31, v32, v33))
  {
    v79 = OUTLINED_FUNCTION_13_26();
    bspush_ca_scan(v79, v80);
LABEL_54:
    OUTLINED_FUNCTION_29_15();
LABEL_55:
    if (test_string_s())
    {
      goto LABEL_85;
    }

    v78 = -400;
    goto LABEL_21;
  }

LABEL_5:
  v34 = OUTLINED_FUNCTION_30_14();
  starttest(v34, v35);
  v36 = OUTLINED_FUNCTION_6_27();
  if (!lpta_loadp_setscan_l(v36, v37, v38))
  {
    v56 = OUTLINED_FUNCTION_15_24();
    bspush_ca_scan(v56, v57);
    v58 = OUTLINED_FUNCTION_4_27();
    v61 = 17;
LABEL_11:
    if (testFldeq(v58, v59, v60, v61))
    {
      goto LABEL_85;
    }

LABEL_12:
    if (advance_tok(a1, v62, v63, v64))
    {
      goto LABEL_85;
    }

LABEL_53:
    v78 = 150;
    goto LABEL_21;
  }

LABEL_6:
  v39 = OUTLINED_FUNCTION_30_14();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_6_27();
  if (!lpta_loadp_setscan_l(v41, v42, v43))
  {
    v65 = OUTLINED_FUNCTION_23_19();
    bspush_ca_scan(v65, v66);
    v67 = OUTLINED_FUNCTION_4_27();
    v70 = 28;
LABEL_57:
    if (testFldeq(v67, v68, v69, v70))
    {
      goto LABEL_85;
    }

LABEL_58:
    if (advance_tok(a1, v62, v63, v64))
    {
      goto LABEL_85;
    }

    goto LABEL_53;
  }

LABEL_7:
  v44 = OUTLINED_FUNCTION_25_18();
  starttest(v44, v45);
  v46 = OUTLINED_FUNCTION_6_27();
  if (lpta_loadp_setscan_l(v46, v47, v48))
  {
LABEL_8:
    v49 = OUTLINED_FUNCTION_14_24();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v51, v52, v53))
    {
      goto LABEL_22;
    }

    v54 = OUTLINED_FUNCTION_22_19();
    bspush_ca_scan(v54, v55);
LABEL_19:
    OUTLINED_FUNCTION_3_28();
    if (test_string_s())
    {
      goto LABEL_85;
    }

LABEL_20:
    v78 = -150;
  }

  else
  {
    v71 = OUTLINED_FUNCTION_2_29();
    if (testFldeq(v71, v72, v73, v74) || advance_tok(a1, v75, v76, v77))
    {
      goto LABEL_85;
    }

    v78 = -100;
  }

LABEL_21:
  OUTLINED_FUNCTION_36_11(v78);
LABEL_22:
  v81 = OUTLINED_FUNCTION_30_14();
  starttest(v81, v82);
  v83 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v83, v84, v85))
  {
    v122 = OUTLINED_FUNCTION_4_27();
    if (testFldeq(v122, v123, v124, 17) || advance_tok(a1, v125, v126, v127))
    {
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_51_6();
    OUTLINED_FUNCTION_90_3(v128);
    goto LABEL_67;
  }

LABEL_23:
  v86 = OUTLINED_FUNCTION_30_14();
  starttest(v86, v87);
  v88 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v88, v89, v90))
  {
    v129 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v129, v130);
    v131 = OUTLINED_FUNCTION_4_27();
    v134 = 21;
LABEL_60:
    if (testFldeq(v131, v132, v133, v134))
    {
      goto LABEL_85;
    }

LABEL_61:
    if (advance_tok(a1, v62, v63, v64))
    {
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_51_6();
    goto LABEL_66;
  }

LABEL_24:
  v91 = OUTLINED_FUNCTION_30_14();
  starttest(v91, v92);
  v93 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v93, v94, v95))
  {
    v135 = OUTLINED_FUNCTION_16_23();
    bspush_ca_scan(v135, v136);
LABEL_63:
    OUTLINED_FUNCTION_3_28();
    if (test_string_s())
    {
      goto LABEL_85;
    }

LABEL_64:
    *(a1 + 4590) -= 200;
    goto LABEL_65;
  }

LABEL_25:
  v96 = OUTLINED_FUNCTION_30_14();
  starttest(v96, v97);
  v98 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v98, v99, v100))
  {
    v137 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v137, v138);
    v139 = OUTLINED_FUNCTION_0_31();
LABEL_84:
    if (testFldeq(v139, v140, v141, v142))
    {
      goto LABEL_85;
    }

LABEL_109:
    if (advance_tok(a1, v62, v63, v64))
    {
      goto LABEL_85;
    }

    goto LABEL_67;
  }

LABEL_26:
  v101 = OUTLINED_FUNCTION_30_14();
  starttest(v101, v102);
  v103 = OUTLINED_FUNCTION_5_27();
  if (lpta_loadp_setscan_r(v103, v104, v105))
  {
LABEL_27:
    v106 = OUTLINED_FUNCTION_30_14();
    starttest(v106, v107);
    v108 = OUTLINED_FUNCTION_5_27();
    if (lpta_loadp_setscan_r(v108, v109, v110))
    {
LABEL_28:
      v111 = OUTLINED_FUNCTION_30_14();
      starttest(v111, v112);
      v113 = OUTLINED_FUNCTION_5_27();
      if (!lpta_loadp_setscan_r(v113, v114, v115))
      {
        v163 = OUTLINED_FUNCTION_2_29();
        if (testFldeq(v163, v164, v165, v166) || advance_tok(a1, v167, v168, v169))
        {
          goto LABEL_85;
        }

        OUTLINED_FUNCTION_43_7(*(a1 + 4590) - 150);
        v171 = v170 - 80;
        goto LABEL_66;
      }

LABEL_29:
      v116 = OUTLINED_FUNCTION_5_27();
      if (!lpta_loadp_setscan_r(v116, v117, v118))
      {
        OUTLINED_FUNCTION_3_28();
        if (!test_string_s())
        {
          *(a1 + 4578) += 30;
          v171 = *(a1 + 4598) - 200;
LABEL_66:
          *(a1 + 4598) = v171;
          goto LABEL_67;
        }
      }

LABEL_31:
      v119 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v119, v120, v121))
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_3_28();
      if (test_string_s())
      {
        goto LABEL_67;
      }

      *(a1 + 4578) += 30;
LABEL_65:
      OUTLINED_FUNCTION_71_5();
      goto LABEL_66;
    }

    v157 = OUTLINED_FUNCTION_8_27();
    if (testFldeq(v157, v158, v159, 4) || advance_tok(a1, v160, v161, v162))
    {
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_52_6();
  }

  else
  {
    v143 = OUTLINED_FUNCTION_8_27();
    if (testFldeq(v143, v144, v145, 4))
    {
      goto LABEL_85;
    }

    if (advance_tok(a1, v146, v147, v148))
    {
      goto LABEL_85;
    }

    v149 = OUTLINED_FUNCTION_2_29();
    if (testFldeq(v149, v150, v151, v152) || advance_tok(a1, v153, v154, v155))
    {
      goto LABEL_85;
    }

    v156 = *(a1 + 4590) - 300;
  }

  *(a1 + 4590) = v156;
LABEL_67:
  v172 = OUTLINED_FUNCTION_30_14();
  starttest(v172, v173);
  v174 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v174, v175, v176))
  {
    v177 = OUTLINED_FUNCTION_29_15();
    if (testFldeq(v177, v178, 4, 4) || advance_tok(a1, v179, v180, v181))
    {
      goto LABEL_85;
    }

    *(a1 + 4578) -= 20;
  }

LABEL_71:
  OUTLINED_FUNCTION_55_6();
  if (v182)
  {
    v183 = OUTLINED_FUNCTION_30_14();
    starttest(v183, v184);
    v185 = OUTLINED_FUNCTION_5_27();
    if (lpta_loadp_setscan_r(v185, v186, v187))
    {
LABEL_74:
      v188 = OUTLINED_FUNCTION_27_16();
      starttest(v188, v189);
      v190 = OUTLINED_FUNCTION_30_14();
      bspush_ca(v190);
      v191 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v191, v192, v193))
      {
        goto LABEL_85;
      }

LABEL_75:
      OUTLINED_FUNCTION_50_6(41, v262, v265, v268, v271, v274, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, v310, v313, v316, v319, v322, v325, v328, v330);
      v194 = OUTLINED_FUNCTION_3_28();
      if (testFldeq(v194, v195, v196, 2))
      {
        goto LABEL_85;
      }

      if (advance_tok(a1, v197, v198, v199))
      {
        goto LABEL_85;
      }

      v200 = OUTLINED_FUNCTION_31_14();
      if (lpta_loadp_setscan_r(v200, v201, v202))
      {
        goto LABEL_85;
      }

      v206 = advance_tok(a1, v203, v204, v205);
      if (v206 || OUTLINED_FUNCTION_19_20(v206, v207, v208))
      {
        goto LABEL_85;
      }

      v209 = OUTLINED_FUNCTION_0_31();
      while (testFldeq(v209, v210, v211, v212) || advance_tok(a1, v241, v242, v243))
      {
        while (1)
        {
LABEL_85:
          v218 = *(a1 + 104);
          if (v218)
          {
            v219 = OUTLINED_FUNCTION_45_7(v218);
          }

          else
          {
            v220 = OUTLINED_FUNCTION_56_6();
            v219 = vback(v220, v221);
          }

          v78 = -400;
          switch(v219)
          {
            case 1:
              goto LABEL_5;
            case 2:
              v249 = OUTLINED_FUNCTION_35_11();
              bspush_ca_scan(v249, v250);
              goto LABEL_55;
            case 3:
              goto LABEL_21;
            case 4:
              v251 = OUTLINED_FUNCTION_17_22();
              bspush_ca_scan(v251, v252);
              goto LABEL_54;
            case 5:
              goto LABEL_54;
            case 6:
              goto LABEL_22;
            case 7:
              goto LABEL_6;
            case 8:
              v58 = OUTLINED_FUNCTION_4_27();
              v61 = 21;
              goto LABEL_11;
            case 9:
              goto LABEL_12;
            case 10:
              goto LABEL_7;
            case 11:
              v245 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v245, v246);
              v67 = OUTLINED_FUNCTION_4_27();
              v70 = 23;
              goto LABEL_57;
            case 12:
              goto LABEL_58;
            case 13:
              v67 = OUTLINED_FUNCTION_4_27();
              v70 = 24;
              goto LABEL_57;
            case 14:
              goto LABEL_8;
            case 15:
              goto LABEL_19;
            case 16:
              goto LABEL_20;
            case 17:
              goto LABEL_23;
            case 18:
              goto LABEL_67;
            case 19:
              goto LABEL_24;
            case 20:
              v253 = OUTLINED_FUNCTION_24_19();
              bspush_ca_scan(v253, v254);
              v131 = OUTLINED_FUNCTION_4_27();
              v134 = 28;
              goto LABEL_60;
            case 21:
              goto LABEL_61;
            case 22:
              bspush_ca_scan(a1, 23);
              v131 = OUTLINED_FUNCTION_4_27();
              v134 = 23;
              goto LABEL_60;
            case 23:
              v131 = OUTLINED_FUNCTION_4_27();
              v134 = 24;
              goto LABEL_60;
            case 24:
              goto LABEL_25;
            case 25:
            case 27:
              v247 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v247, v248);
              goto LABEL_63;
            case 26:
              goto LABEL_64;
            case 28:
              goto LABEL_63;
            case 29:
              goto LABEL_26;
            case 30:
              v139 = OUTLINED_FUNCTION_1_29();
              goto LABEL_84;
            case 31:
              goto LABEL_109;
            case 32:
              goto LABEL_27;
            case 33:
              goto LABEL_28;
            case 34:
              goto LABEL_29;
            case 35:
              goto LABEL_31;
            case 36:
              goto LABEL_71;
            case 37:
              goto LABEL_114;
            case 38:
              goto LABEL_74;
            case 39:
              OUTLINED_FUNCTION_93_2();
              if (v256 == v257)
              {
                v258 = *(a1 + 4590);
                if (v258 >= 1)
                {
                  OUTLINED_FUNCTION_39_9(vcvtd_n_f64_u32(v258 + v255, 1uLL) + -100.0);
                }
              }

              goto LABEL_114;
            case 40:
              v222 = OUTLINED_FUNCTION_6_27();
              if (lpta_loadp_setscan_l(v222, v223, v224))
              {
                continue;
              }

              break;
            case 41:
              goto LABEL_75;
            case 42:
              goto LABEL_98;
            case 43:
              break;
            default:
              goto LABEL_3;
          }

          OUTLINED_FUNCTION_50_6(43, v262, v265, v268, v271, v274, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, v310, v313, v316, v319, v322, v325, v328, v330);
          v225 = OUTLINED_FUNCTION_0_31();
          if (!testFldeq(v225, v226, v227, v228) && !advance_tok(a1, v229, v230, v231))
          {
            v232 = OUTLINED_FUNCTION_31_14();
            if (!lpta_loadp_setscan_r(v232, v233, v234))
            {
              v238 = advance_tok(a1, v235, v236, v237);
              if (!v238 && !OUTLINED_FUNCTION_19_20(v238, v239, v240))
              {
                break;
              }
            }
          }
        }

        v209 = OUTLINED_FUNCTION_3_28();
        v212 = 2;
      }

LABEL_98:
      OUTLINED_FUNCTION_53_6(65534);
      OUTLINED_FUNCTION_62_5(v244);
    }

    else
    {
      v213 = OUTLINED_FUNCTION_29_15();
      if (testFldeq(v213, v214, 4, 6) || advance_tok(a1, v215, v216, v217))
      {
        goto LABEL_85;
      }
    }
  }

LABEL_114:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_E(uint64_t a1)
{
  OUTLINED_FUNCTION_32_13(*MEMORY[0x277D85DE8], v170);
  OUTLINED_FUNCTION_21_19(v3, v4, v5, v6, v7, v8, v9, v10, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_9_27(v11, v12, v13, v14, v15, v16, v17, v18, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, SHIDWORD(v218), v220, SWORD2(v220), SHIWORD(v220), v222, SWORD2(v222), SBYTE6(v222), SHIBYTE(v222), v224, v225))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_27(a1);
  *(a1 + 4578) = 500;
  *(a1 + 4582) = 550;
  *(a1 + 4586) = 1700;
  *(a1 + 4590) = 1600;
  *(a1 + 4594) = 2550;
  *(a1 + 4598) = 2350;
  v20 = OUTLINED_FUNCTION_12_26();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_6_27();
  if (!lpta_loadp_setscan_l(v22, v23, v24))
  {
    v40 = OUTLINED_FUNCTION_13_26();
    bspush_ca_scan(v40, v41);
    v42 = OUTLINED_FUNCTION_4_27();
    v45 = 28;
LABEL_11:
    if (testFldeq(v42, v43, v44, v45))
    {
      goto LABEL_54;
    }

LABEL_12:
    if (advance_tok(a1, v36, v37, v38))
    {
      goto LABEL_54;
    }

    v39 = 150;
    goto LABEL_14;
  }

  while (2)
  {
    v25 = OUTLINED_FUNCTION_15_24();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v27, v28, v29))
    {
      v30 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v30, v31);
      v32 = OUTLINED_FUNCTION_4_27();
      v35 = 30;
LABEL_7:
      if (testFldeq(v32, v33, v34, v35))
      {
        goto LABEL_54;
      }

LABEL_8:
      if (advance_tok(a1, v36, v37, v38))
      {
        goto LABEL_54;
      }

      v39 = -200;
      goto LABEL_14;
    }

LABEL_15:
    v46 = OUTLINED_FUNCTION_30_14();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v48, v49, v50))
    {
      v100 = OUTLINED_FUNCTION_2_29();
      if (testFldeq(v100, v101, v102, v103) || advance_tok(a1, v104, v105, v106))
      {
        goto LABEL_54;
      }

      v39 = 100;
LABEL_14:
      OUTLINED_FUNCTION_36_11(v39);
      goto LABEL_17;
    }

LABEL_16:
    v51 = OUTLINED_FUNCTION_30_14();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v53, v54, v55))
    {
      v113 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v113, v114);
LABEL_49:
      OUTLINED_FUNCTION_3_28();
      if (test_string_s())
      {
        goto LABEL_54;
      }

      v39 = -150;
      goto LABEL_14;
    }

LABEL_17:
    v56 = OUTLINED_FUNCTION_22_19();
    starttest(v56, v57);
    v58 = OUTLINED_FUNCTION_5_27();
    if (lpta_loadp_setscan_r(v58, v59, v60))
    {
LABEL_18:
      v61 = OUTLINED_FUNCTION_24_19();
      starttest(v61, v62);
      v63 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v63, v64, v65))
      {
LABEL_19:
        v66 = OUTLINED_FUNCTION_16_23();
        starttest(v66, v67);
        v68 = OUTLINED_FUNCTION_5_27();
        if (lpta_loadp_setscan_r(v68, v69, v70))
        {
LABEL_20:
          v71 = OUTLINED_FUNCTION_30_14();
          starttest(v71, v72);
          v73 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v73, v74, v75))
          {
LABEL_21:
            v76 = OUTLINED_FUNCTION_30_14();
            starttest(v76, v77);
            v78 = OUTLINED_FUNCTION_5_27();
            if (lpta_loadp_setscan_r(v78, v79, v80))
            {
LABEL_22:
              v81 = OUTLINED_FUNCTION_30_14();
              starttest(v81, v82);
              v83 = OUTLINED_FUNCTION_5_27();
              if (lpta_loadp_setscan_r(v83, v84, v85))
              {
LABEL_23:
                v86 = OUTLINED_FUNCTION_30_14();
                starttest(v86, v87);
                v88 = OUTLINED_FUNCTION_5_27();
                if (lpta_loadp_setscan_r(v88, v89, v90))
                {
LABEL_71:
                  v161 = OUTLINED_FUNCTION_5_27();
                  if (lpta_loadp_setscan_r(v161, v162, v163) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                  {
LABEL_73:
                    v164 = OUTLINED_FUNCTION_5_27();
                    if (lpta_loadp_setscan_r(v164, v165, v166) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
                    {
LABEL_75:
                      v167 = OUTLINED_FUNCTION_5_27();
                      if (!lpta_loadp_setscan_r(v167, v168, v169))
                      {
                        OUTLINED_FUNCTION_3_28();
                        if (!test_string_s())
                        {
                          *(a1 + 4582) += 50;
                        }
                      }

                      goto LABEL_78;
                    }

                    *(a1 + 4582) += 30;
                    goto LABEL_80;
                  }

                  *(a1 + 4582) += 30;
LABEL_82:
                  v97 = *(a1 + 4598) - 200;
                  goto LABEL_29;
                }

LABEL_45:
                v137 = OUTLINED_FUNCTION_2_29();
              }

              else
              {
                v135 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v135, v136);
                v137 = OUTLINED_FUNCTION_7_27();
              }

              if (!testFldeq(v137, v138, v139, v140))
              {
LABEL_47:
                if (!advance_tok(a1, v36, v37, v38))
                {
                  OUTLINED_FUNCTION_43_7(*(a1 + 4590) - 150);
                  v97 = v141 - 80;
                  goto LABEL_29;
                }
              }
            }

            else
            {
              v128 = OUTLINED_FUNCTION_8_27();
              if (!testFldeq(v128, v129, v130, 4) && !advance_tok(a1, v131, v132, v133))
              {
                OUTLINED_FUNCTION_52_6();
                *(a1 + 4590) = v134;
                goto LABEL_82;
              }
            }
          }

          else
          {
            v115 = OUTLINED_FUNCTION_8_27();
            if (!testFldeq(v115, v116, v117, 4) && !advance_tok(a1, v118, v119, v120))
            {
              v121 = OUTLINED_FUNCTION_2_29();
              if (!testFldeq(v121, v122, v123, v124) && !advance_tok(a1, v125, v126, v127))
              {
                *(a1 + 4590) -= 125;
LABEL_80:
                OUTLINED_FUNCTION_71_5();
                goto LABEL_29;
              }
            }
          }
        }

        else
        {
          v107 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v107, v108);
          v109 = OUTLINED_FUNCTION_0_31();
LABEL_53:
          if (!testFldeq(v109, v110, v111, v112))
          {
LABEL_69:
            if (!advance_tok(a1, v36, v37, v38))
            {
              goto LABEL_78;
            }
          }
        }
      }

      else
      {
        v98 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v98, v99);
LABEL_51:
        OUTLINED_FUNCTION_3_28();
        if (!test_string_s())
        {
LABEL_52:
          OUTLINED_FUNCTION_82_4();
          *(a1 + 4590) = v142;
          goto LABEL_78;
        }
      }

      goto LABEL_54;
    }

    v91 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v91, v92);
    v93 = OUTLINED_FUNCTION_4_27();
    v96 = 17;
LABEL_26:
    if (testFldeq(v93, v94, v95, v96))
    {
      goto LABEL_54;
    }

LABEL_27:
    if (advance_tok(a1, v36, v37, v38))
    {
LABEL_54:
      v143 = *(a1 + 104);
      if (v143)
      {
        v144 = OUTLINED_FUNCTION_45_7(v143);
      }

      else
      {
        v145 = OUTLINED_FUNCTION_56_6();
        v144 = vback(v145, v146);
      }

      v39 = -150;
      switch(v144)
      {
        case 1:
          continue;
        case 2:
          v147 = OUTLINED_FUNCTION_35_11();
          bspush_ca_scan(v147, v148);
          v42 = OUTLINED_FUNCTION_33_13();
          v43 = v1;
          v45 = 23;
          goto LABEL_11;
        case 3:
          goto LABEL_12;
        case 4:
          v153 = OUTLINED_FUNCTION_17_22();
          bspush_ca_scan(v153, v154);
          v42 = OUTLINED_FUNCTION_4_27();
          v45 = 17;
          goto LABEL_11;
        case 5:
          v155 = OUTLINED_FUNCTION_14_24();
          bspush_ca_scan(v155, v156);
          v42 = OUTLINED_FUNCTION_4_27();
          v45 = 21;
          goto LABEL_11;
        case 6:
          v42 = OUTLINED_FUNCTION_4_27();
          v45 = 24;
          goto LABEL_11;
        case 7:
          goto LABEL_17;
        case 8:
          goto LABEL_15;
        case 9:
          v149 = OUTLINED_FUNCTION_23_19();
          bspush_ca_scan(v149, v150);
          v32 = OUTLINED_FUNCTION_4_27();
          v35 = 25;
          goto LABEL_7;
        case 10:
          goto LABEL_8;
        case 11:
          v32 = OUTLINED_FUNCTION_4_27();
          v35 = 37;
          goto LABEL_7;
        case 12:
          goto LABEL_16;
        case 13:
          goto LABEL_49;
        case 14:
          goto LABEL_14;
        case 15:
          goto LABEL_18;
        case 16:
          v151 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v151, v152);
          v93 = OUTLINED_FUNCTION_4_27();
          v96 = 21;
          goto LABEL_26;
        case 17:
          goto LABEL_27;
        case 18:
          v157 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v157, v158);
          v93 = OUTLINED_FUNCTION_4_27();
          v96 = 28;
          goto LABEL_26;
        case 19:
          v159 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v159, v160);
          v93 = OUTLINED_FUNCTION_4_27();
          v96 = 23;
          goto LABEL_26;
        case 20:
          v93 = OUTLINED_FUNCTION_4_27();
          v96 = 24;
          goto LABEL_26;
        case 21:
          goto LABEL_78;
        case 22:
          goto LABEL_19;
        case 23:
          goto LABEL_51;
        case 24:
          goto LABEL_52;
        case 25:
          goto LABEL_20;
        case 26:
          v109 = OUTLINED_FUNCTION_1_29();
          goto LABEL_53;
        case 27:
          goto LABEL_69;
        case 28:
          goto LABEL_21;
        case 29:
          goto LABEL_22;
        case 30:
          goto LABEL_23;
        case 31:
          goto LABEL_45;
        case 32:
          goto LABEL_47;
        case 33:
          goto LABEL_71;
        case 34:
          goto LABEL_73;
        case 35:
          goto LABEL_75;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  OUTLINED_FUNCTION_51_6();
LABEL_29:
  *(a1 + 4598) = v97;
LABEL_78:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_a(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v443);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_85_3(v10, v11, v12, v13, v14, v15, v16, v17, v444, v447, v450, v453, v456, v459, v462, v465, v468, v471, v474, v477, v480, v483, v486, v489, v492, v495, v498, v501, v504, v507, v510, 0, 0, v516, v518, v520, v522);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_20_19(v18, v19, v20, v21, v22, v23, v24, v25, v445, v448, v451, v454, v457, v460, v463, v466, v469, v472, v475, v478, v481, v484, v487, v490, v493, v496, v499, v502, v505, v508, v511, v513, v515, v517, SHIDWORD(v517), v519, SWORD2(v519), SHIWORD(v519), v521, SWORD2(v521), SBYTE6(v521), SHIBYTE(v521), v523, v524))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_44_7();
  push_ptr_init(v27, v28);
  fence_27(a1);
  v29 = OUTLINED_FUNCTION_12_26();
  starttest(v29, v30);
  if (*(a1 + 978) == *(a1 + 958))
  {
    v31 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v31, v32, v33))
    {
      OUTLINED_FUNCTION_13_26();
      bspush_ca_scan_boa();
      v38 = 0;
      goto LABEL_183;
    }
  }

  while (2)
  {
    if (*(a1 + 982) > *(a1 + 958))
    {
LABEL_76:
      OUTLINED_FUNCTION_63_5(650);
      OUTLINED_FUNCTION_53_6(1250);
      v35 = 2350;
      v36 = 4598;
      v37 = 4594;
    }

    else
    {
      OUTLINED_FUNCTION_63_5(550);
      OUTLINED_FUNCTION_53_6(1350);
      OUTLINED_FUNCTION_62_5(2300);
      v36 = 4606;
      v37 = 4602;
    }

    v167 = v36;
    v441 = v37;
    v442 = v167;
LABEL_78:
    *(a1 + v441) = v35;
    *(a1 + v442) = v35;
    v38 = v34;
LABEL_79:
    v168 = OUTLINED_FUNCTION_14_24();
    starttest(v168, v169);
    v170 = OUTLINED_FUNCTION_6_27();
    v173 = lpta_loadp_setscan_l(v170, v171, v172);
    v166 = v38;
    if (!v173)
    {
LABEL_93:
      OUTLINED_FUNCTION_50_6(7, v446, v449, v452, v455, v458, v461, v464, v467, v470, v473, v476, v479, v482, v485, v488, v491, v494, v497, v500, v503, v506, v509, v512, v514);
      v232 = OUTLINED_FUNCTION_15_24();
      bspush_ca_scan(v232, v233);
      v155 = OUTLINED_FUNCTION_0_31();
LABEL_94:
      testFldeq(v155, v156, v157, v158);
      OUTLINED_FUNCTION_69_5();
      if (v234)
      {
        goto LABEL_9;
      }

LABEL_95:
      v38 = v42;
      if (advance_tok(a1, v41, v44, v42))
      {
        goto LABEL_187;
      }

      v235 = OUTLINED_FUNCTION_31_14();
      if (lpta_loadp_setscan_r(v235, v236, v237))
      {
        goto LABEL_187;
      }

      v241 = advance_tok(a1, v238, v239, v240);
      if (v241)
      {
        goto LABEL_187;
      }

      OUTLINED_FUNCTION_19_20(v241, v242, v243);
      OUTLINED_FUNCTION_65_5();
      if (v244)
      {
        goto LABEL_9;
      }

LABEL_99:
      v38 = v165;
      v245 = OUTLINED_FUNCTION_30_14();
      if (test_synch(v245, v246, 1, v247))
      {
        goto LABEL_187;
      }

      v248 = OUTLINED_FUNCTION_23_19();
      bspush_ca_scan(v248, v249);
      v159 = OUTLINED_FUNCTION_0_31();
LABEL_71:
      testFldeq(v159, v160, v161, v162);
      OUTLINED_FUNCTION_81_4();
      if (v163)
      {
        goto LABEL_9;
      }

LABEL_72:
      v38 = v43;
      if (advance_tok(a1, v41, v44, v42))
      {
        goto LABEL_187;
      }

      *(a1 + 4578) -= 150;
      *(a1 + 4582) -= 150;
      *(a1 + 4586) += 250;
      *(a1 + 4590) += 250;
      *(a1 + 4594) += 200;
      v164 = *(a1 + 4598) + 200;
      goto LABEL_176;
    }

LABEL_80:
    v38 = v166;
    v174 = OUTLINED_FUNCTION_25_18();
    starttest(v174, v175);
    v176 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v176, v177, v178))
    {
      v250 = OUTLINED_FUNCTION_22_19();
      bspush_ca_scan(v250, v251);
LABEL_102:
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_65_5();
      if (v252)
      {
        goto LABEL_9;
      }

LABEL_103:
      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 150);
      OUTLINED_FUNCTION_91_2(v253 + 100);
      goto LABEL_125;
    }

LABEL_81:
    v179 = OUTLINED_FUNCTION_30_14();
    starttest(v179, v180);
    v181 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v181, v182, v183))
    {
      v254 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v254, v255);
LABEL_105:
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_70_5();
      if (v256)
      {
        goto LABEL_9;
      }

LABEL_106:
      *(a1 + 4578) -= 50;
      OUTLINED_FUNCTION_48_7();
      *(a1 + 4602) -= 200;
      v38 = v257;
      goto LABEL_125;
    }

LABEL_82:
    v184 = OUTLINED_FUNCTION_24_19();
    starttest(v184, v185);
    v186 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v186, v187, v188))
    {
      v258 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v258, v259);
      v135 = OUTLINED_FUNCTION_4_27();
      v138 = 11;
LABEL_108:
      testFldeq(v135, v136, v137, v138);
      OUTLINED_FUNCTION_80_4();
      if (v260)
      {
        goto LABEL_9;
      }

LABEL_109:
      v38 = v45;
      if (advance_tok(a1, v41, v44, v42))
      {
        goto LABEL_187;
      }

      v261 = *(a1 + 4586) + 50;
      goto LABEL_124;
    }

LABEL_83:
    v189 = OUTLINED_FUNCTION_16_23();
    starttest(v189, v190);
    v191 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v191, v192, v193))
    {
      v262 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v262, v263);
      v151 = OUTLINED_FUNCTION_0_31();
LABEL_112:
      testFldeq(v151, v152, v153, v154);
      OUTLINED_FUNCTION_79_5();
      if (v40)
      {
        goto LABEL_9;
      }

LABEL_113:
      if (OUTLINED_FUNCTION_97_2(v40, v41, v44, v42))
      {
        goto LABEL_187;
      }

      v261 = *(a1 + 4586) + 120;
LABEL_124:
      *(a1 + 4586) = v261;
      goto LABEL_125;
    }

LABEL_84:
    v194 = OUTLINED_FUNCTION_30_14();
    starttest(v194, v195);
    v196 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v196, v197, v198))
    {
      v264 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v264, v265);
LABEL_116:
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_78_5();
      if (v266)
      {
        goto LABEL_9;
      }

LABEL_117:
      OUTLINED_FUNCTION_46_7(*(a1 + 4586) - 150);
      *(a1 + 4594) = v267 - 50;
      v38 = v268;
      goto LABEL_125;
    }

LABEL_85:
    v199 = OUTLINED_FUNCTION_30_14();
    starttest(v199, v200);
    v201 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v201, v202, v203))
    {
      v269 = OUTLINED_FUNCTION_7_27();
      if (testFldeq(v269, v270, v271, v272) || advance_tok(a1, v273, v274, v275))
      {
        goto LABEL_187;
      }

      v261 = 1200;
      goto LABEL_124;
    }

LABEL_86:
    v204 = OUTLINED_FUNCTION_30_14();
    starttest(v204, v205);
    v206 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v206, v207, v208))
    {
      v276 = OUTLINED_FUNCTION_2_29();
      if (testFldeq(v276, v277, v278, v279) || advance_tok(a1, v280, v281, v282))
      {
        goto LABEL_187;
      }

      v261 = *(a1 + 4586) - 200;
      goto LABEL_124;
    }

LABEL_87:
    v209 = OUTLINED_FUNCTION_30_14();
    starttest(v209, v210);
    v211 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v211, v212, v213))
    {
LABEL_88:
      v214 = OUTLINED_FUNCTION_30_14();
      starttest(v214, v215);
      v216 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v216, v217, v218))
      {
LABEL_89:
        v219 = OUTLINED_FUNCTION_30_14();
        starttest(v219, v220);
        v221 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v221, v222, v223))
        {
          goto LABEL_125;
        }

        v224 = OUTLINED_FUNCTION_4_27();
        if (testFldeq(v224, v225, v226, 20) || advance_tok(a1, v227, v228, v229))
        {
          goto LABEL_187;
        }

        OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 50);
        v231 = v230 + 100;
      }

      else
      {
        v374 = OUTLINED_FUNCTION_4_27();
        if (testFldeq(v374, v375, v376, 16) || advance_tok(a1, v377, v378, v379))
        {
          goto LABEL_187;
        }

        *(a1 + 4586) = 1500;
        v231 = 2600;
      }
    }

    else
    {
      v366 = OUTLINED_FUNCTION_4_27();
      if (testFldeq(v366, v367, v368, 18) || advance_tok(a1, v369, v370, v371))
      {
        goto LABEL_187;
      }

      OUTLINED_FUNCTION_66_5(1400);
    }

    *(a1 + 4594) = v231;
LABEL_125:
    v283 = OUTLINED_FUNCTION_30_14();
    starttest(v283, v284);
    v285 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v285, v286, v287))
    {
      v354 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v354, v355);
LABEL_144:
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_87_3();
      if (v356)
      {
        goto LABEL_9;
      }

LABEL_145:
      *(a1 + 4582) -= 50;
      OUTLINED_FUNCTION_49_6();
      *(a1 + 4606) -= 200;
      v38 = v357;
      goto LABEL_179;
    }

LABEL_126:
    v288 = OUTLINED_FUNCTION_30_14();
    starttest(v288, v289);
    v290 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v290, v291, v292))
    {
      v358 = OUTLINED_FUNCTION_27_16();
      bspush_ca_scan(v358, v359);
LABEL_147:
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_76_5();
      if (v360)
      {
        goto LABEL_9;
      }

LABEL_148:
      OUTLINED_FUNCTION_52_6();
      OUTLINED_FUNCTION_43_7(v361);
      *(a1 + 4598) = v362 + 100;
      v38 = v363;
      goto LABEL_179;
    }

LABEL_127:
    v293 = OUTLINED_FUNCTION_30_14();
    starttest(v293, v294);
    v295 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v295, v296, v297))
    {
      v364 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v364, v365);
      v116 = OUTLINED_FUNCTION_4_27();
      v119 = 11;
LABEL_150:
      testFldeq(v116, v117, v118, v119);
      OUTLINED_FUNCTION_86_3();
      if (v40)
      {
        goto LABEL_9;
      }

LABEL_151:
      if (OUTLINED_FUNCTION_95_2(v40, v41, v44, v42))
      {
        goto LABEL_187;
      }

      OUTLINED_FUNCTION_61_6();
LABEL_165:
      *(a1 + 4590) = v150;
      goto LABEL_179;
    }

LABEL_128:
    v298 = OUTLINED_FUNCTION_30_14();
    starttest(v298, v299);
    v300 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v300, v301, v302))
    {
      v372 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v372, v373);
      v145 = OUTLINED_FUNCTION_0_31();
LABEL_66:
      v149 = testFldeq(v145, v146, v147, v148);
      v46 = v38;
      v41 = v38;
      if (v149)
      {
        goto LABEL_9;
      }

LABEL_67:
      v38 = v46;
LABEL_68:
      if (advance_tok(a1, v41, v44, v42))
      {
        goto LABEL_187;
      }

      OUTLINED_FUNCTION_52_6();
      goto LABEL_165;
    }

LABEL_129:
    v303 = OUTLINED_FUNCTION_30_14();
    starttest(v303, v304);
    v305 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v305, v306, v307))
    {
      v380 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v380, v381);
LABEL_47:
      OUTLINED_FUNCTION_3_28();
      v120 = test_string_s();
      LODWORD(v41) = v38;
      if (v120)
      {
        goto LABEL_9;
      }

LABEL_48:
      OUTLINED_FUNCTION_43_7(*(a1 + 4590) - 150);
      *(a1 + 4598) = v121 - 50;
      v38 = v122;
      goto LABEL_179;
    }

LABEL_130:
    v308 = OUTLINED_FUNCTION_30_14();
    starttest(v308, v309);
    v310 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v310, v311, v312))
    {
      v382 = OUTLINED_FUNCTION_2_29();
      if (testFldeq(v382, v383, v384, v385) || advance_tok(a1, v386, v387, v388))
      {
        goto LABEL_187;
      }

      OUTLINED_FUNCTION_82_4();
      goto LABEL_165;
    }

LABEL_131:
    v313 = OUTLINED_FUNCTION_30_14();
    starttest(v313, v314);
    v315 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v315, v316, v317))
    {
      v389 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v389, v390);
LABEL_43:
      OUTLINED_FUNCTION_3_28();
      v107 = test_string_s();
      v47 = v38;
      LODWORD(v41) = v38;
      if (v107)
      {
        goto LABEL_9;
      }

LABEL_44:
      v38 = v47;
      v108 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v108, v109);
LABEL_37:
      OUTLINED_FUNCTION_3_28();
      v100 = test_string_s();
      v48 = v38;
      LODWORD(v41) = v38;
      if (v100)
      {
        goto LABEL_9;
      }

LABEL_38:
      OUTLINED_FUNCTION_52_6();
      *(a1 + 4590) = v101;
      v38 = v48;
      goto LABEL_179;
    }

LABEL_132:
    v318 = OUTLINED_FUNCTION_30_14();
    starttest(v318, v319);
    v320 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v320, v321, v322))
    {
      v391 = OUTLINED_FUNCTION_4_27();
      if (testFldeq(v391, v392, v393, 18) || advance_tok(a1, v394, v395, v396))
      {
        goto LABEL_187;
      }

      OUTLINED_FUNCTION_43_7(1400);
      v164 = v397 - 150;
LABEL_176:
      *(a1 + 4598) = v164;
      goto LABEL_179;
    }

LABEL_133:
    v323 = OUTLINED_FUNCTION_30_14();
    starttest(v323, v324);
    v325 = OUTLINED_FUNCTION_5_27();
    if (!lpta_loadp_setscan_r(v325, v326, v327))
    {
      v406 = OUTLINED_FUNCTION_4_27();
      if (testFldeq(v406, v407, v408, 16) || advance_tok(a1, v409, v410, v411))
      {
        goto LABEL_187;
      }

      OUTLINED_FUNCTION_60_6();
      v164 = -2;
      goto LABEL_176;
    }

LABEL_134:
    v328 = OUTLINED_FUNCTION_30_14();
    starttest(v328, v329);
    v330 = OUTLINED_FUNCTION_5_27();
    if (lpta_loadp_setscan_r(v330, v331, v332) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
    {
LABEL_136:
      v333 = OUTLINED_FUNCTION_30_14();
      starttest(v333, v334);
      v335 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v335, v336, v337) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
      {
LABEL_138:
        v338 = OUTLINED_FUNCTION_30_14();
        starttest(v338, v339);
        v340 = OUTLINED_FUNCTION_5_27();
        if (lpta_loadp_setscan_r(v340, v341, v342))
        {
LABEL_139:
          v343 = OUTLINED_FUNCTION_30_14();
          starttest(v343, v344);
          v345 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v345, v346, v347))
          {
            goto LABEL_179;
          }

          v348 = OUTLINED_FUNCTION_4_27();
          if (testFldeq(v348, v349, v350, 40) || advance_tok(a1, v351, v352, v353))
          {
            goto LABEL_187;
          }

          v150 = *(a1 + 4590) - 50;
          goto LABEL_165;
        }

        v398 = OUTLINED_FUNCTION_4_27();
        if (testFldeq(v398, v399, v400, 20) || advance_tok(a1, v401, v402, v403))
        {
          goto LABEL_187;
        }

        OUTLINED_FUNCTION_61_6();
        OUTLINED_FUNCTION_43_7(v404);
        v164 = v405 + 100;
        goto LABEL_176;
      }

      v435 = OUTLINED_FUNCTION_1_29();
      if (testFldeq(v435, v436, v437, v438))
      {
        goto LABEL_187;
      }

      goto LABEL_68;
    }

    v439 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v439, v440);
    v102 = OUTLINED_FUNCTION_4_27();
    v105 = 23;
LABEL_40:
    v106 = testFldeq(v102, v103, v104, v105);
    v49 = v38;
    v41 = v38;
    if (v106)
    {
      goto LABEL_9;
    }

LABEL_41:
    if (advance_tok(a1, v41, v44, v42))
    {
      LODWORD(v41) = v49;
      goto LABEL_9;
    }

    *(a1 + 4590) += 150;
    v38 = v49;
LABEL_179:
    v413 = OUTLINED_FUNCTION_30_14();
    starttest(v413, v414);
    v415 = OUTLINED_FUNCTION_5_27();
    v418 = lpta_loadp_setscan_l(v415, v416, v417);
    v412 = v38;
    if (!v418)
    {
LABEL_186:
      OUTLINED_FUNCTION_50_6(65, v446, v449, v452, v455, v458, v461, v464, v467, v470, v473, v476, v479, v482, v485, v488, v491, v494, v497, v500, v503, v506, v509, v512, v514);
      if (!advance_tok(a1, v430, v431, v432))
      {
        v433 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v433, v434);
        v112 = OUTLINED_FUNCTION_4_27();
        v115 = 30;
LABEL_61:
        v139 = testFldeq(v112, v113, v114, v115);
        v50 = v38;
        v41 = v38;
        if (v139)
        {
          goto LABEL_9;
        }

LABEL_62:
        v38 = v50;
        if (!advance_tok(a1, v41, v44, v42))
        {
          v140 = OUTLINED_FUNCTION_31_14();
          if (!lpta_loadp_setscan_r(v140, v141, v142))
          {
            v143 = OUTLINED_FUNCTION_30_14();
            bspush_ca_scan(v143, v144);
            v125 = OUTLINED_FUNCTION_4_27();
            v128 = 30;
LABEL_52:
            v131 = testFldeq(v125, v126, v127, v128);
            v51 = v38;
            v41 = v38;
            if (v131)
            {
              goto LABEL_9;
            }

LABEL_53:
            v38 = v51;
            if (!advance_tok(a1, v41, v44, v42))
            {
              OUTLINED_FUNCTION_55_6();
              if (v63)
              {
LABEL_56:
                v132 = *(a1 + 4578);
                LODWORD(v41) = v38;
                if (v132 < 551)
                {
                  goto LABEL_9;
                }

                *(a1 + 4578) = v132 - 150;
                goto LABEL_189;
              }
            }
          }
        }
      }

LABEL_187:
      LODWORD(v41) = v38;
LABEL_9:
      v39 = *(a1 + 104);
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_26_18(v39);
      }

      else
      {
        v40 = vback(a1, v41);
        v38 = 0;
      }

      v42 = v38;
      v43 = v38;
      v44 = v38;
      v45 = v38;
      v46 = v38;
      v47 = v38;
      v48 = v38;
      v49 = v38;
      v50 = v38;
      v51 = v38;
      switch(v40)
      {
        case 1:
          continue;
        case 2:
          bspop_boa(a1);
          v52 = OUTLINED_FUNCTION_29_15();
          v54 = testFldeq(v52, v53, 4, 4);
          LODWORD(v41) = v38;
          if (v54)
          {
            goto LABEL_9;
          }

          v57 = advance_tok(a1, v38, v55, v56);
          LODWORD(v41) = v38;
          if (v57)
          {
            goto LABEL_9;
          }

          OUTLINED_FUNCTION_63_5(450);
          OUTLINED_FUNCTION_53_6(1350);
          v35 = 2250;
          v441 = 4594;
          v442 = 4598;
          v34 = v38;
          goto LABEL_78;
        case 3:
        case 75:
          goto LABEL_183;
        case 4:
          goto LABEL_79;
        case 5:
          goto LABEL_76;
        case 6:
          v166 = v38;
          goto LABEL_80;
        case 7:
          goto LABEL_93;
        case 8:
          v58 = OUTLINED_FUNCTION_1_29();
          v62 = testFldeq(v58, v59, v60, v61);
          LODWORD(v41) = v38;
          if (v62)
          {
            goto LABEL_9;
          }

          v155 = OUTLINED_FUNCTION_8_27();
          v158 = 5;
          goto LABEL_94;
        case 9:
          goto LABEL_95;
        case 10:
          v165 = v38;
          goto LABEL_99;
        case 11:
          v80 = OUTLINED_FUNCTION_1_29();
          v84 = testFldeq(v80, v81, v82, v83);
          LODWORD(v41) = v38;
          if (v84)
          {
            goto LABEL_9;
          }

          v159 = OUTLINED_FUNCTION_8_27();
          v162 = 5;
          goto LABEL_71;
        case 12:
          goto LABEL_72;
        case 13:
          goto LABEL_179;
        case 14:
          goto LABEL_81;
        case 15:
          v133 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v133, v134);
          goto LABEL_102;
        case 16:
          goto LABEL_103;
        case 17:
          goto LABEL_102;
        case 18:
          goto LABEL_125;
        case 19:
          goto LABEL_82;
        case 20:
          goto LABEL_105;
        case 21:
          goto LABEL_106;
        case 22:
          goto LABEL_83;
        case 23:
          v135 = OUTLINED_FUNCTION_4_27();
          v138 = 12;
          goto LABEL_108;
        case 24:
          goto LABEL_109;
        case 25:
          goto LABEL_84;
        case 26:
          v151 = OUTLINED_FUNCTION_1_29();
          goto LABEL_112;
        case 27:
          goto LABEL_113;
        case 28:
          goto LABEL_85;
        case 29:
          goto LABEL_116;
        case 30:
          goto LABEL_117;
        case 31:
          goto LABEL_86;
        case 32:
          goto LABEL_87;
        case 33:
          goto LABEL_88;
        case 34:
          goto LABEL_89;
        case 35:
          goto LABEL_126;
        case 36:
          goto LABEL_144;
        case 37:
          goto LABEL_145;
        case 38:
          goto LABEL_127;
        case 39:
          v123 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v123, v124);
          goto LABEL_147;
        case 40:
          goto LABEL_148;
        case 41:
          goto LABEL_147;
        case 42:
          goto LABEL_128;
        case 43:
          v116 = OUTLINED_FUNCTION_4_27();
          v119 = 12;
          goto LABEL_150;
        case 44:
          goto LABEL_151;
        case 45:
          goto LABEL_129;
        case 46:
          v145 = OUTLINED_FUNCTION_1_29();
          goto LABEL_66;
        case 47:
          goto LABEL_67;
        case 48:
          goto LABEL_130;
        case 49:
          goto LABEL_47;
        case 50:
          goto LABEL_48;
        case 51:
          goto LABEL_131;
        case 52:
          goto LABEL_132;
        case 53:
          goto LABEL_43;
        case 54:
          goto LABEL_44;
        case 55:
          goto LABEL_37;
        case 56:
          goto LABEL_38;
        case 57:
          goto LABEL_133;
        case 58:
          goto LABEL_134;
        case 59:
          goto LABEL_136;
        case 60:
          v102 = OUTLINED_FUNCTION_4_27();
          v105 = 28;
          goto LABEL_40;
        case 61:
          goto LABEL_41;
        case 62:
          goto LABEL_138;
        case 63:
          goto LABEL_139;
        case 64:
          v412 = v38;
          goto LABEL_180;
        case 65:
          goto LABEL_186;
        case 66:
          v110 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v110, v111);
          v112 = OUTLINED_FUNCTION_4_27();
          v115 = 25;
          goto LABEL_61;
        case 67:
          goto LABEL_62;
        case 68:
          v112 = OUTLINED_FUNCTION_4_27();
          v115 = 37;
          goto LABEL_61;
        case 69:
          v129 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v129, v130);
          v125 = OUTLINED_FUNCTION_4_27();
          v128 = 25;
          goto LABEL_52;
        case 70:
          goto LABEL_53;
        case 71:
          v125 = OUTLINED_FUNCTION_4_27();
          v128 = 37;
          goto LABEL_52;
        case 72:
        case 80:
          goto LABEL_189;
        case 73:
          goto LABEL_181;
        case 74:
          bspop_boa(a1);
          OUTLINED_FUNCTION_58_6();
          if (!v63)
          {
            goto LABEL_9;
          }

          OUTLINED_FUNCTION_51_6();
          v64 = OUTLINED_FUNCTION_30_14();
          starttest(v64, v65);
          v66 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v66, v67, v68))
          {
            goto LABEL_21;
          }

          v98 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v98, v99);
          v87 = OUTLINED_FUNCTION_4_27();
          v90 = 28;
          goto LABEL_32;
        case 76:
LABEL_21:
          v69 = OUTLINED_FUNCTION_30_14();
          starttest(v69, v70);
          v71 = OUTLINED_FUNCTION_5_27();
          if (lpta_loadp_setscan_r(v71, v72, v73))
          {
            goto LABEL_189;
          }

          v74 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v74, v75);
          v76 = OUTLINED_FUNCTION_4_27();
          v79 = 30;
          goto LABEL_28;
        case 77:
          v85 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v85, v86);
          v87 = OUTLINED_FUNCTION_4_27();
          v90 = 35;
          goto LABEL_32;
        case 78:
          goto LABEL_33;
        case 79:
          v87 = OUTLINED_FUNCTION_4_27();
          v90 = 23;
LABEL_32:
          v95 = testFldeq(v87, v88, v89, v90);
          v41 = v38;
          if (v95)
          {
            goto LABEL_9;
          }

LABEL_33:
          v96 = advance_tok(a1, v41, v44, v42);
          LODWORD(v41) = v38;
          if (v96)
          {
            goto LABEL_9;
          }

          v97 = *(a1 + 4586);
          LODWORD(v41) = v38;
          if (v97 > 1349)
          {
            goto LABEL_9;
          }

          *(a1 + 4586) = v97 + 250;
          goto LABEL_189;
        case 81:
          v91 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v91, v92);
          v76 = OUTLINED_FUNCTION_4_27();
          v79 = 25;
          goto LABEL_28;
        case 82:
          goto LABEL_29;
        case 83:
          v76 = OUTLINED_FUNCTION_4_27();
          v79 = 37;
LABEL_28:
          v93 = testFldeq(v76, v77, v78, v79);
          v41 = v38;
          if (v93)
          {
            goto LABEL_9;
          }

LABEL_29:
          v94 = advance_tok(a1, v41, v44, v42);
          LODWORD(v41) = v38;
          if (!v94)
          {
            goto LABEL_56;
          }

          goto LABEL_9;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_180:
  v38 = v412;
  v419 = OUTLINED_FUNCTION_30_14();
  starttest(v419, v420);
  v421 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v421, v422, v423))
  {
LABEL_181:
    v424 = OUTLINED_FUNCTION_30_14();
    if (!test_synch(v424, v425, 1, v426))
    {
      OUTLINED_FUNCTION_30_14();
      bspush_ca_scan_boa();
LABEL_183:
      v427 = OUTLINED_FUNCTION_30_14();
      if (test_synch(v427, v428, 1, v429))
      {
        LODWORD(v41) = v38;
      }

      else
      {
        LODWORD(v41) = 1;
      }

      goto LABEL_9;
    }

    goto LABEL_187;
  }

LABEL_189:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_o(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v236);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_85_3(v10, v11, v12, v13, v14, v15, v16, v17, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v282, v285, v288, v291, v294, v297, v300, v303, 0, 0, v309, v311, v313, v315);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_20_19(v18, v19, v20, v21, v22, v23, v24, v25, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v306, v308, v310, SHIDWORD(v310), v312, SWORD2(v312), SHIWORD(v312), v314, SWORD2(v314), SBYTE6(v314), SHIBYTE(v314), v316, v317))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_44_7();
  push_ptr_init(v27, v28);
  fence_27(a1);
  OUTLINED_FUNCTION_63_5(425);
  OUTLINED_FUNCTION_53_6(800);
  OUTLINED_FUNCTION_62_5(2550);
  v29 = OUTLINED_FUNCTION_12_26();
  starttest(v29, v30);
  OUTLINED_FUNCTION_55_6();
  if (v31 && (v32 = OUTLINED_FUNCTION_6_27(), !lpta_loadp_setscan_l(v32, v33, v34)))
  {
    v75 = OUTLINED_FUNCTION_13_26();
    bspush_ca_scan(v75, v76);
    OUTLINED_FUNCTION_3_28();
    v77 = test_string_s();
    v78 = 0;
    v55 = 0;
    if (v77)
    {
      goto LABEL_74;
    }

LABEL_24:
    *(a1 + 4578) -= 75;
    *(a1 + 4586) += 300;
    v35 = v78;
  }

  else
  {
    v35 = 0;
LABEL_8:
    v36 = OUTLINED_FUNCTION_17_22();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v38, v39, v40))
    {
LABEL_9:
      v41 = OUTLINED_FUNCTION_30_14();
      starttest(v41, v42);
      v43 = OUTLINED_FUNCTION_6_27();
      if (lpta_loadp_setscan_l(v43, v44, v45))
      {
LABEL_10:
        v46 = OUTLINED_FUNCTION_6_27();
        if (lpta_loadp_setscan_l(v46, v47, v48) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
        {
LABEL_12:
          v49 = OUTLINED_FUNCTION_35_11();
          starttest(v49, v50);
          v51 = OUTLINED_FUNCTION_34_12();
          if (!lpta_loadp_setscan_l(v51, v52, v35))
          {
            v68 = OUTLINED_FUNCTION_8_27();
            if (testFldeq(v68, v69, v70, 2) || advance_tok(a1, v71, v72, v73))
            {
              v55 = v35;
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_59_6();
          }
        }

        else
        {
          OUTLINED_FUNCTION_64_5();
          *(a1 + 4594) = v74;
        }
      }

      else
      {
        v58 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v58, v59);
        v60 = OUTLINED_FUNCTION_0_31();
        testFldeq(v60, v61, v62, v63);
        OUTLINED_FUNCTION_70_5();
        if (v67)
        {
          goto LABEL_74;
        }

LABEL_17:
        v35 = v66;
        if (advance_tok(a1, v55, v64, v65))
        {
          goto LABEL_73;
        }

        OUTLINED_FUNCTION_48_7();
      }
    }

    else
    {
      v53 = OUTLINED_FUNCTION_14_24();
      bspush_ca_scan(v53, v54);
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_65_5();
      if (v56)
      {
        goto LABEL_74;
      }

LABEL_15:
      OUTLINED_FUNCTION_46_7(*(a1 + 4586) + 200);
      OUTLINED_FUNCTION_91_2(v57 + 50);
    }
  }

LABEL_25:
  v79 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v79, v80, v81))
  {
    OUTLINED_FUNCTION_3_28();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_51_6();
LABEL_43:
      *(a1 + 4598) = v108;
      goto LABEL_45;
    }
  }

LABEL_26:
  v82 = OUTLINED_FUNCTION_22_19();
  starttest(v82, v83);
  v84 = OUTLINED_FUNCTION_5_27();
  if (lpta_loadp_setscan_r(v84, v85, v86))
  {
LABEL_27:
    v87 = OUTLINED_FUNCTION_30_14();
    starttest(v87, v88);
    v89 = OUTLINED_FUNCTION_5_27();
    if (lpta_loadp_setscan_r(v89, v90, v91))
    {
LABEL_28:
      v92 = OUTLINED_FUNCTION_24_19();
      starttest(v92, v93);
      v94 = OUTLINED_FUNCTION_5_27();
      if (lpta_loadp_setscan_r(v94, v95, v96))
      {
LABEL_29:
        v97 = OUTLINED_FUNCTION_5_27();
        if (!lpta_loadp_setscan_r(v97, v98, v99))
        {
          OUTLINED_FUNCTION_3_28();
          if (!test_string_s())
          {
            *(a1 + 4582) -= 30;
            OUTLINED_FUNCTION_43_7(*(a1 + 4590) + 150);
            v108 = v126 - 200;
            goto LABEL_43;
          }
        }

LABEL_31:
        v100 = OUTLINED_FUNCTION_25_18();
        starttest(v100, v101);
        v102 = OUTLINED_FUNCTION_5_27();
        if (lpta_loadp_setscan_r(v102, v103, v104))
        {
          goto LABEL_45;
        }

        v105 = OUTLINED_FUNCTION_8_27();
        if (testFldeq(v105, v106, v107, 2))
        {
          goto LABEL_73;
        }
      }

      else
      {
        v118 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v118, v119);
        v120 = OUTLINED_FUNCTION_0_31();
        testFldeq(v120, v121, v122, v123);
        OUTLINED_FUNCTION_76_5();
        if (v125)
        {
          goto LABEL_74;
        }

LABEL_64:
        v35 = v124;
      }

      if (advance_tok(a1, v55, v64, v65))
      {
        goto LABEL_73;
      }

      *(a1 + 4590) += 200;
    }

    else
    {
      v113 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v113, v114);
      OUTLINED_FUNCTION_3_28();
      test_string_s();
      OUTLINED_FUNCTION_69_5();
      if (v115)
      {
        goto LABEL_74;
      }

LABEL_39:
      OUTLINED_FUNCTION_43_7(*(a1 + 4590) + 300);
      *(a1 + 4598) = v116 + 50;
      v35 = v117;
    }
  }

  else
  {
    v109 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v109, v110);
    OUTLINED_FUNCTION_3_28();
    test_string_s();
    OUTLINED_FUNCTION_80_4();
    if (v111)
    {
      goto LABEL_74;
    }

LABEL_37:
    *(a1 + 4582) -= 75;
    OUTLINED_FUNCTION_49_6();
    v35 = v112;
  }

LABEL_45:
  OUTLINED_FUNCTION_55_6();
  if (!v31)
  {
    goto LABEL_119;
  }

  v127 = OUTLINED_FUNCTION_30_14();
  starttest(v127, v128);
  v129 = OUTLINED_FUNCTION_6_27();
  v132 = lpta_loadp_setscan_l(v129, v130, v131);
  v133 = v35;
  if (!v132)
  {
LABEL_68:
    v35 = v133;
    OUTLINED_FUNCTION_50_6(28, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v281, v284, v287, v290, v293, v296, v299, v302, v305, v307);
    v176 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v176, v177);
    v178 = OUTLINED_FUNCTION_7_27();
    testFldeq(v178, v179, v180, v181);
    OUTLINED_FUNCTION_79_5();
    if (v157)
    {
      goto LABEL_74;
    }

LABEL_69:
    if (!OUTLINED_FUNCTION_97_2(v157, v55, v64, v65))
    {
      v182 = OUTLINED_FUNCTION_31_14();
      if (!lpta_loadp_setscan_r(v182, v183, v184))
      {
        v188 = advance_tok(a1, v185, v186, v187);
        if (!v188 && !OUTLINED_FUNCTION_19_20(v188, v189, v190))
        {
          OUTLINED_FUNCTION_30_14();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_3_28();
          v158 = test_string_s();
LABEL_121:
          if (v158)
          {
            v55 = v35;
          }

          else
          {
            v55 = 1;
          }

LABEL_74:
          v35 = v55;
          while (2)
          {
            v191 = *(a1 + 104);
            if (v191)
            {
              v157 = OUTLINED_FUNCTION_26_18(v191);
            }

            else
            {
              v157 = vback(a1, v35);
              v35 = 0;
            }

            v78 = v35;
            v64 = v35;
            v66 = v35;
            v65 = v35;
            v124 = v35;
            v150 = v35;
            switch(v157)
            {
              case 1:
                goto LABEL_8;
              case 2:
                OUTLINED_FUNCTION_3_28();
                v192 = test_string_s();
                v78 = v35;
                if (!v192)
                {
                  goto LABEL_24;
                }

                continue;
              case 3:
                goto LABEL_24;
              case 4:
                goto LABEL_25;
              case 5:
                goto LABEL_9;
              case 6:
                v206 = OUTLINED_FUNCTION_15_24();
                bspush_ca_scan(v206, v207);
                goto LABEL_93;
              case 7:
                goto LABEL_15;
              case 8:
LABEL_93:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_15;
                }

                continue;
              case 9:
                goto LABEL_10;
              case 10:
                v213 = OUTLINED_FUNCTION_1_29();
                v217 = testFldeq(v213, v214, v215, v216);
                v66 = v35;
                if (!v217)
                {
                  goto LABEL_17;
                }

                continue;
              case 11:
                goto LABEL_17;
              case 12:
                goto LABEL_12;
              case 13:
                goto LABEL_26;
              case 14:
                goto LABEL_45;
              case 15:
                goto LABEL_27;
              case 16:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_37;
                }

                continue;
              case 17:
                goto LABEL_37;
              case 18:
                goto LABEL_28;
              case 19:
                v208 = OUTLINED_FUNCTION_30_14();
                bspush_ca_scan(v208, v209);
                goto LABEL_97;
              case 20:
                goto LABEL_39;
              case 21:
LABEL_97:
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  goto LABEL_39;
                }

                continue;
              case 22:
                goto LABEL_29;
              case 23:
                v218 = OUTLINED_FUNCTION_1_29();
                v222 = testFldeq(v218, v219, v220, v221);
                v124 = v35;
                if (!v222)
                {
                  goto LABEL_64;
                }

                continue;
              case 24:
                goto LABEL_64;
              case 25:
                goto LABEL_31;
              case 26:
              case 37:
              case 45:
                goto LABEL_119;
              case 27:
                goto LABEL_48;
              case 28:
                v133 = v35;
                goto LABEL_68;
              case 29:
                v197 = OUTLINED_FUNCTION_2_29();
                v157 = testFldeq(v197, v198, v199, v200);
                if (!v157)
                {
                  goto LABEL_69;
                }

                continue;
              case 30:
                goto LABEL_69;
              case 31:
                bspop_boa(a1);
                *(a1 + 4586) = -2;
                *(a1 + 4594) = -2;
                goto LABEL_119;
              case 32:
                goto LABEL_49;
              case 33:
                goto LABEL_54;
              case 34:
                v193 = OUTLINED_FUNCTION_0_31();
                v157 = testFldeq(v193, v194, v195, v196);
                if (!v157)
                {
                  goto LABEL_56;
                }

                continue;
              case 35:
                goto LABEL_56;
              case 36:
                goto LABEL_61;
              case 38:
                goto LABEL_101;
              case 39:
                v201 = OUTLINED_FUNCTION_2_29();
                v205 = testFldeq(v201, v202, v203, v204);
                v150 = v35;
                if (!v205)
                {
                  goto LABEL_51;
                }

                continue;
              case 40:
                goto LABEL_51;
              case 41:
                bspop_boa(a1);
                OUTLINED_FUNCTION_51_6();
                goto LABEL_117;
              case 42:
                v210 = OUTLINED_FUNCTION_4_27();
                v157 = testFldeq(v210, v211, v212, 23);
                if (!v157)
                {
                  goto LABEL_53;
                }

                continue;
              case 43:
                goto LABEL_53;
              case 44:
                goto LABEL_103;
              case 46:
                v226 = *(a1 + 4586);
                v227 = v226;
                goto LABEL_108;
              case 47:
                goto LABEL_113;
              default:
                goto LABEL_3;
            }
          }
        }
      }
    }

LABEL_73:
    v55 = v35;
    goto LABEL_74;
  }

LABEL_48:
  v134 = OUTLINED_FUNCTION_30_14();
  starttest(v134, v135);
  v136 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_l(v136, v137, v138))
  {
LABEL_54:
    OUTLINED_FUNCTION_50_6(33, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v281, v284, v287, v290, v293, v296, v299, v302, v305, v307);
    if (advance_tok(a1, v159, v160, v161))
    {
      goto LABEL_73;
    }

    v162 = OUTLINED_FUNCTION_30_14();
    bspush_ca_scan(v162, v163);
    v164 = OUTLINED_FUNCTION_8_27();
    testFldeq(v164, v165, v166, 2);
    OUTLINED_FUNCTION_78_5();
    if (v157)
    {
      goto LABEL_74;
    }

LABEL_56:
    if (OUTLINED_FUNCTION_96_2(v157, v55, v64, v65))
    {
      goto LABEL_73;
    }

    v167 = OUTLINED_FUNCTION_31_14();
    if (lpta_loadp_setscan_r(v167, v168, v169))
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_3_28();
    v170 = test_string_s();
    v55 = v35;
    if (v170)
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_93_2();
    if (v172 == v173)
    {
      *(a1 + 4586) = v171 + 100;
    }

LABEL_61:
    OUTLINED_FUNCTION_88_3();
    if (v172 != v173)
    {
      goto LABEL_119;
    }

    v175 = v174 + 100;
    goto LABEL_63;
  }

LABEL_49:
  v139 = OUTLINED_FUNCTION_30_14();
  starttest(v139, v140);
  v141 = OUTLINED_FUNCTION_5_27();
  if (!lpta_loadp_setscan_r(v141, v142, v143))
  {
    v144 = OUTLINED_FUNCTION_27_16();
    bspush_ca_scan(v144, v145);
    v146 = OUTLINED_FUNCTION_7_27();
    testFldeq(v146, v147, v148, v149);
    OUTLINED_FUNCTION_87_3();
    if (v151)
    {
      goto LABEL_74;
    }

LABEL_51:
    v35 = v150;
    if (!advance_tok(a1, v55, v64, v65))
    {
      OUTLINED_FUNCTION_30_14();
      bspush_ca_scan_boa();
      v152 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v152, v153);
      v154 = OUTLINED_FUNCTION_4_27();
      testFldeq(v154, v155, v156, 28);
      OUTLINED_FUNCTION_86_3();
      if (v157)
      {
        goto LABEL_74;
      }

LABEL_53:
      v158 = OUTLINED_FUNCTION_95_2(v157, v55, v64, v65);
      goto LABEL_121;
    }

    goto LABEL_73;
  }

LABEL_101:
  v223 = OUTLINED_FUNCTION_5_27();
  if (lpta_loadp_setscan_r(v223, v224, v225) || (OUTLINED_FUNCTION_3_28(), test_string_s()))
  {
LABEL_103:
    if (*(a1 + 4586) >= 901)
    {
      v227 = OUTLINED_FUNCTION_94_2();
      if (v172 == v173)
      {
        v231 = v229 + v228;
        v232 = 150.0;
LABEL_112:
        OUTLINED_FUNCTION_39_9(vcvtd_n_f64_u32(v231, 1uLL) + v232);
        goto LABEL_113;
      }
    }

    else
    {
      v226 = *(a1 + 4586);
      v227 = v226;
LABEL_108:
      if (v226 < 1)
      {
        goto LABEL_113;
      }

      v230 = *(a1 + 4590);
    }

    if (v230 >= 1)
    {
      v231 = v227 + v230;
      v232 = 70.0;
      goto LABEL_112;
    }

LABEL_113:
    v233 = *(a1 + 4594);
    if (v233 >= 1 && *(a1 + 4598) >= 1)
    {
      OUTLINED_FUNCTION_84_3(v233);
LABEL_117:
      *(a1 + 4598) = v234;
    }

    goto LABEL_119;
  }

  OUTLINED_FUNCTION_88_3();
  if (v172 == v173)
  {
    v175 = v235 + 50;
LABEL_63:
    *(a1 + 4590) = v175;
  }

LABEL_119:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_10(a1, a2, a3, a4, a5, a6, a7, a8, v248);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_85_3(v10, v11, v12, v13, v14, v15, v16, v17, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v312, v315, 0, 0, v321, v323, v325, v327);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_20_19(v18, v19, v20, v21, v22, v23, v24, v25, v250, v253, v256, v259, v262, v265, v268, v271, v274, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, v310, v313, v316, v318, v320, v322, SHIDWORD(v322), v324, SWORD2(v324), SHIWORD(v324), v326, SWORD2(v326), SBYTE6(v326), SHIBYTE(v326), v328, v329))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_44_7();
  push_ptr_init(v27, v28);
  fence_27(a1);
  OUTLINED_FUNCTION_63_5(550);
  OUTLINED_FUNCTION_53_6(1000);
  OUTLINED_FUNCTION_62_5(2400);
  v29 = OUTLINED_FUNCTION_12_26();
  starttest(v29, v30);
  OUTLINED_FUNCTION_55_6();
  if (!v31 || (v32 = OUTLINED_FUNCTION_6_27(), lpta_loadp_setscan_l(v32, v33, v34)))
  {
    v35 = 0;
LABEL_8:
    v36 = OUTLINED_FUNCTION_17_22();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v38, v39, v40))
    {
      v50 = OUTLINED_FUNCTION_14_24();
      bspush_ca_scan(v50, v51);
      v52 = OUTLINED_FUNCTION_7_27();
      testFldeq(v52, v53, v54, v55);
      OUTLINED_FUNCTION_65_5();
      if (!v59)
      {
        goto LABEL_14;
      }

      goto LABEL_54;
    }

LABEL_9:
    v41 = OUTLINED_FUNCTION_30_14();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_6_27();
    if (!lpta_loadp_setscan_l(v43, v44, v45))
    {
      v61 = OUTLINED_FUNCTION_23_19();
      bspush_ca_scan(v61, v62);
      v63 = OUTLINED_FUNCTION_0_31();
      testFldeq(v63, v64, v65, v66);
      OUTLINED_FUNCTION_81_4();
      if (!v68)
      {
LABEL_17:
        v35 = v67;
        if (advance_tok(a1, v56, v57, v58))
        {
          goto LABEL_53;
        }

        v60 = *(a1 + 4586) + 100;
        goto LABEL_19;
      }

      goto LABEL_54;
    }

LABEL_10:
    v46 = OUTLINED_FUNCTION_6_27();
    if (lpta_loadp_setscan_l(v46, v47, v48))
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_3_28();
    if (test_string_s())
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_64_5();
LABEL_23:
    *(a1 + 4594) = v49;
    goto LABEL_24;
  }

  v69 = OUTLINED_FUNCTION_13_26();
  bspush_ca_scan(v69, v70);
  v71 = OUTLINED_FUNCTION_29_15();
  v73 = testFldeq(v71, v72, 0, 17);
  v56 = 0;
  v58 = 0;
  if (!v73)
  {
LABEL_21:
    v35 = v58;
    if (advance_tok(a1, v56, v57, v58))
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_89_3();
    *(a1 + 4586) = v74;
    OUTLINED_FUNCTION_49_6();
    v49 = *(a1 + 4594) - 250;
    goto LABEL_23;
  }

  do
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
LABEL_54:
                v35 = v56;
                do
                {
                  while (2)
                  {
                    v155 = *(a1 + 104);
                    if (v155)
                    {
                      v136 = OUTLINED_FUNCTION_26_18(v155);
                    }

                    else
                    {
                      v136 = vback(a1, v35);
                      v35 = 0;
                    }

                    v58 = v35;
                    v57 = v35;
                    v67 = v35;
                    v103 = v35;
                    v144 = v35;
                    v153 = v35;
                    v129 = v35;
                    switch(v136)
                    {
                      case 1:
                        goto LABEL_8;
                      case 2:
                        v156 = OUTLINED_FUNCTION_4_27();
                        v159 = testFldeq(v156, v157, v158, 21);
                        v58 = v35;
                        if (!v159)
                        {
                          goto LABEL_21;
                        }

                        continue;
                      case 3:
                        goto LABEL_21;
                      case 4:
                        goto LABEL_24;
                      case 5:
                        goto LABEL_9;
                      case 6:
                        v164 = OUTLINED_FUNCTION_15_24();
                        bspush_ca_scan(v164, v165);
                        v166 = OUTLINED_FUNCTION_2_29();
                        break;
                      case 7:
                        goto LABEL_14;
                      case 8:
                        v174 = OUTLINED_FUNCTION_30_14();
                        bspush_ca_scan(v174, v175);
                        v166 = OUTLINED_FUNCTION_4_27();
                        v169 = 25;
                        break;
                      case 9:
                        v166 = OUTLINED_FUNCTION_4_27();
                        v169 = 30;
                        break;
                      case 10:
                        goto LABEL_10;
                      case 11:
                        v180 = OUTLINED_FUNCTION_1_29();
                        v184 = testFldeq(v180, v181, v182, v183);
                        v67 = v35;
                        if (!v184)
                        {
                          goto LABEL_17;
                        }

                        continue;
                      case 12:
                        goto LABEL_17;
                      case 13:
                        goto LABEL_25;
                      case 14:
                        v170 = OUTLINED_FUNCTION_4_27();
                        v173 = testFldeq(v170, v171, v172, 21);
                        v103 = v35;
                        if (!v173)
                        {
                          goto LABEL_33;
                        }

                        continue;
                      case 15:
                        goto LABEL_33;
                      case 16:
                        goto LABEL_36;
                      case 17:
                        goto LABEL_27;
                      case 18:
                        goto LABEL_28;
                      case 19:
                        v190 = OUTLINED_FUNCTION_1_29();
                        v194 = testFldeq(v190, v191, v192, v193);
                        v144 = v35;
                        if (!v194)
                        {
                          goto LABEL_46;
                        }

                        continue;
                      case 20:
                        goto LABEL_46;
                      case 21:
                        goto LABEL_29;
                      case 22:
                        v160 = OUTLINED_FUNCTION_4_27();
                        v163 = testFldeq(v160, v161, v162, 30);
                        v153 = v35;
                        if (!v163)
                        {
                          goto LABEL_49;
                        }

                        continue;
                      case 23:
                        goto LABEL_49;
                      case 24:
                      case 35:
                      case 43:
                        goto LABEL_120;
                      case 25:
                        goto LABEL_39;
                      case 26:
                        v112 = v35;
                        goto LABEL_100;
                      case 27:
                        v199 = OUTLINED_FUNCTION_2_29();
                        v136 = testFldeq(v199, v200, v201, v202);
                        if (!v136)
                        {
                          goto LABEL_101;
                        }

                        continue;
                      case 28:
                        goto LABEL_101;
                      case 29:
                        bspop_boa(a1);
                        *(a1 + 4586) = -2;
                        *(a1 + 4594) = -2;
                        goto LABEL_120;
                      case 30:
                        goto LABEL_40;
                      case 31:
                        goto LABEL_82;
                      case 32:
                        v195 = OUTLINED_FUNCTION_0_31();
                        v136 = testFldeq(v195, v196, v197, v198);
                        if (!v136)
                        {
                          goto LABEL_84;
                        }

                        continue;
                      case 33:
                        goto LABEL_84;
                      case 34:
                        goto LABEL_89;
                      case 36:
                        goto LABEL_92;
                      case 37:
                        v185 = OUTLINED_FUNCTION_2_29();
                        v189 = testFldeq(v185, v186, v187, v188);
                        v129 = v35;
                        if (!v189)
                        {
                          goto LABEL_42;
                        }

                        continue;
                      case 38:
                        goto LABEL_42;
                      case 39:
                        bspop_boa(a1);
                        OUTLINED_FUNCTION_51_6();
                        goto LABEL_119;
                      case 40:
                        v177 = OUTLINED_FUNCTION_4_27();
                        v136 = testFldeq(v177, v178, v179, 23);
                        if (!v136)
                        {
                          goto LABEL_44;
                        }

                        continue;
                      case 41:
                        goto LABEL_44;
                      case 42:
                        goto LABEL_94;
                      case 44:
                        v223 = *(a1 + 4586);
                        v224 = v223;
                        goto LABEL_111;
                      case 45:
                        goto LABEL_116;
                      default:
                        goto LABEL_3;
                    }

                    break;
                  }

                  v176 = testFldeq(v166, v167, v168, v169);
                  v57 = v35;
                }

                while (v176);
LABEL_14:
                v35 = v57;
                if (advance_tok(a1, v56, v57, v58))
                {
                  goto LABEL_53;
                }

                OUTLINED_FUNCTION_89_3();
LABEL_19:
                *(a1 + 4586) = v60;
LABEL_24:
                v75 = OUTLINED_FUNCTION_30_14();
                starttest(v75, v76);
                v77 = OUTLINED_FUNCTION_5_27();
                if (lpta_loadp_setscan_r(v77, v78, v79))
                {
                  break;
                }

                v98 = OUTLINED_FUNCTION_25_18();
                bspush_ca_scan(v98, v99);
                v100 = OUTLINED_FUNCTION_4_27();
                testFldeq(v100, v101, v102, 17);
                OUTLINED_FUNCTION_70_5();
                if (!v104)
                {
LABEL_33:
                  v35 = v103;
                  if (advance_tok(a1, v56, v57, v58))
                  {
                    goto LABEL_53;
                  }

                  OUTLINED_FUNCTION_40_8();
                  v97 = v105 - 250;
                  goto LABEL_35;
                }
              }

LABEL_25:
              v80 = OUTLINED_FUNCTION_5_27();
              if (!lpta_loadp_setscan_r(v80, v81, v82))
              {
                OUTLINED_FUNCTION_3_28();
                if (!test_string_s())
                {
                  OUTLINED_FUNCTION_51_6();
                  goto LABEL_35;
                }
              }

LABEL_27:
              v83 = OUTLINED_FUNCTION_30_14();
              starttest(v83, v84);
              v85 = OUTLINED_FUNCTION_5_27();
              if (lpta_loadp_setscan_r(v85, v86, v87))
              {
                break;
              }

              v138 = OUTLINED_FUNCTION_30_14();
              bspush_ca_scan(v138, v139);
              v140 = OUTLINED_FUNCTION_0_31();
              testFldeq(v140, v141, v142, v143);
              OUTLINED_FUNCTION_80_4();
              if (!v145)
              {
LABEL_46:
                v35 = v144;
                if (advance_tok(a1, v56, v57, v58))
                {
                  goto LABEL_53;
                }

                OUTLINED_FUNCTION_52_6();
LABEL_51:
                *(a1 + 4590) = v146;
                goto LABEL_36;
              }
            }

LABEL_28:
            v88 = OUTLINED_FUNCTION_30_14();
            starttest(v88, v89);
            v90 = OUTLINED_FUNCTION_5_27();
            if (lpta_loadp_setscan_r(v90, v91, v92))
            {
              break;
            }

            v147 = OUTLINED_FUNCTION_24_19();
            bspush_ca_scan(v147, v148);
            v149 = OUTLINED_FUNCTION_2_29();
            testFldeq(v149, v150, v151, v152);
            OUTLINED_FUNCTION_76_5();
            if (!v154)
            {
LABEL_49:
              v35 = v153;
              if (advance_tok(a1, v56, v57, v58))
              {
                goto LABEL_53;
              }

              OUTLINED_FUNCTION_82_4();
              goto LABEL_51;
            }
          }

LABEL_29:
          v93 = OUTLINED_FUNCTION_5_27();
          if (!lpta_loadp_setscan_r(v93, v94, v95))
          {
            OUTLINED_FUNCTION_3_28();
            if (!test_string_s())
            {
              *(a1 + 4582) -= 30;
              OUTLINED_FUNCTION_40_8();
              v97 = v96 - 300;
LABEL_35:
              *(a1 + 4598) = v97;
            }
          }

LABEL_36:
          OUTLINED_FUNCTION_55_6();
          if (!v31)
          {
            goto LABEL_120;
          }

          v106 = OUTLINED_FUNCTION_16_23();
          starttest(v106, v107);
          v108 = OUTLINED_FUNCTION_6_27();
          v111 = lpta_loadp_setscan_l(v108, v109, v110);
          v112 = v35;
          if (v111)
          {
            break;
          }

LABEL_100:
          v35 = v112;
          OUTLINED_FUNCTION_50_6(26, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v281, v284, v287, v290, v293, v296, v299, v302, v305, v308, v311, v314, v317, v319);
          v231 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v231, v232);
          v233 = OUTLINED_FUNCTION_7_27();
          testFldeq(v233, v234, v235, v236);
          OUTLINED_FUNCTION_79_5();
          if (!v136)
          {
LABEL_101:
            if (!OUTLINED_FUNCTION_97_2(v136, v56, v57, v58))
            {
              v237 = OUTLINED_FUNCTION_31_14();
              if (!lpta_loadp_setscan_r(v237, v238, v239))
              {
                v243 = advance_tok(a1, v240, v241, v242);
                if (!v243 && !OUTLINED_FUNCTION_19_20(v243, v244, v245))
                {
                  OUTLINED_FUNCTION_30_14();
                  bspush_ca_scan_boa();
                  OUTLINED_FUNCTION_3_28();
                  v137 = test_string_s();
                  goto LABEL_106;
                }
              }
            }

LABEL_53:
            v56 = v35;
          }
        }

LABEL_39:
        v113 = OUTLINED_FUNCTION_30_14();
        starttest(v113, v114);
        v115 = OUTLINED_FUNCTION_5_27();
        if (!lpta_loadp_setscan_l(v115, v116, v117))
        {
          break;
        }

LABEL_40:
        v118 = OUTLINED_FUNCTION_30_14();
        starttest(v118, v119);
        v120 = OUTLINED_FUNCTION_5_27();
        if (lpta_loadp_setscan_r(v120, v121, v122))
        {
LABEL_92:
          v220 = OUTLINED_FUNCTION_5_27();
          if (!lpta_loadp_setscan_r(v220, v221, v222))
          {
            OUTLINED_FUNCTION_3_28();
            if (!test_string_s())
            {
              OUTLINED_FUNCTION_88_3();
              if (v216 == v217)
              {
                v219 = v247 + 50;
                goto LABEL_91;
              }

              goto LABEL_120;
            }
          }

LABEL_94:
          if (*(a1 + 4586) >= 901)
          {
            v224 = OUTLINED_FUNCTION_94_2();
            if (v216 == v217)
            {
              v228 = v226 + v225;
              v229 = 150.0;
LABEL_115:
              OUTLINED_FUNCTION_39_9(vcvtd_n_f64_u32(v228, 1uLL) + v229);
              goto LABEL_116;
            }
          }

          else
          {
            v223 = *(a1 + 4586);
            v224 = v223;
LABEL_111:
            if (v223 < 1)
            {
              goto LABEL_116;
            }

            v227 = *(a1 + 4590);
          }

          if (v227 >= 1)
          {
            v228 = v224 + v227;
            v229 = 70.0;
            goto LABEL_115;
          }

LABEL_116:
          v246 = *(a1 + 4594);
          if (v246 >= 1 && *(a1 + 4598) >= 1)
          {
            OUTLINED_FUNCTION_84_3(v246);
LABEL_119:
            *(a1 + 4598) = v230;
          }

          goto LABEL_120;
        }

        v123 = OUTLINED_FUNCTION_30_14();
        bspush_ca_scan(v123, v124);
        v125 = OUTLINED_FUNCTION_7_27();
        testFldeq(v125, v126, v127, v128);
        OUTLINED_FUNCTION_87_3();
        if (!v130)
        {
LABEL_42:
          v35 = v129;
          if (advance_tok(a1, v56, v57, v58))
          {
            goto LABEL_53;
          }

          OUTLINED_FUNCTION_27_16();
          bspush_ca_scan_boa();
          v131 = OUTLINED_FUNCTION_30_14();
          bspush_ca_scan(v131, v132);
          v133 = OUTLINED_FUNCTION_4_27();
          testFldeq(v133, v134, v135, 28);
          OUTLINED_FUNCTION_86_3();
          if (!v136)
          {
LABEL_44:
            v137 = OUTLINED_FUNCTION_95_2(v136, v56, v57, v58);
LABEL_106:
            if (v137)
            {
              v56 = v35;
            }

            else
            {
              v56 = 1;
            }
          }
        }
      }

LABEL_82:
      OUTLINED_FUNCTION_50_6(31, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v281, v284, v287, v290, v293, v296, v299, v302, v305, v308, v311, v314, v317, v319);
      if (advance_tok(a1, v203, v204, v205))
      {
        goto LABEL_53;
      }

      v206 = OUTLINED_FUNCTION_30_14();
      bspush_ca_scan(v206, v207);
      v208 = OUTLINED_FUNCTION_8_27();
      testFldeq(v208, v209, v210, 2);
      OUTLINED_FUNCTION_78_5();
    }

    while (v136);
LABEL_84:
    if (OUTLINED_FUNCTION_96_2(v136, v56, v57, v58))
    {
      goto LABEL_53;
    }

    v211 = OUTLINED_FUNCTION_31_14();
    if (lpta_loadp_setscan_r(v211, v212, v213))
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_3_28();
    v214 = test_string_s();
    v56 = v35;
  }

  while (v214);
  OUTLINED_FUNCTION_93_2();
  if (v216 == v217)
  {
    *(a1 + 4586) = v215 + 100;
  }

LABEL_89:
  OUTLINED_FUNCTION_88_3();
  if (v216 == v217)
  {
    v219 = v218 + 100;
LABEL_91:
    *(a1 + 4590) = v219;
  }

LABEL_120:
  vretproc(a1);
  return 0;
}