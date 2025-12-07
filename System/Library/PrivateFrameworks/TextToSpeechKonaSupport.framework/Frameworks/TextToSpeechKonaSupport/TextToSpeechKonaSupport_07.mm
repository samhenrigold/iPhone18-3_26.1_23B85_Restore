uint64_t por_labial_Fv(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v233);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277, v279, v281, SHIDWORD(v281), v283, SWORD2(v283), SHIWORD(v283), v285, SWORD2(v285), SBYTE6(v285), SHIBYTE(v285), v287, v288))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_24(a1);
  OUTLINED_FUNCTION_91_1(900);
  OUTLINED_FUNCTION_89_2(2300);
  OUTLINED_FUNCTION_97_1(3300);
  *(a1 + 4610) = 3600;
  *(a1 + 4614) = 3600;
  v20 = OUTLINED_FUNCTION_22_16();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v22, v23, v24))
  {
    v168 = OUTLINED_FUNCTION_14_21();
    if (testFldeq(v168, v169, v170, v171))
    {
      LODWORD(v68) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_28_12();
      bspush_ca_scan_boa();
      v172 = OUTLINED_FUNCTION_2_26();
      LODWORD(v68) = !testFldeq(v172, v173, v174, v175);
    }

    goto LABEL_49;
  }

  v1 = 0;
  while (2)
  {
    v25 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v25, v26, v27))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        v77 = *(a1 + 4586) + 300;
        goto LABEL_21;
      }
    }

LABEL_8:
    v28 = OUTLINED_FUNCTION_29_12();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v30, v31, v32))
    {
LABEL_9:
      v33 = OUTLINED_FUNCTION_25_15();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v35, v36, v37))
      {
LABEL_10:
        v38 = OUTLINED_FUNCTION_40_5();
        starttest(v38, v39);
        v40 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_l(v40, v41, v42))
        {
LABEL_11:
          v43 = OUTLINED_FUNCTION_37_8();
          starttest(v43, v44);
          v45 = OUTLINED_FUNCTION_15_21();
          if (!lpta_loadp_setscan_l(v45, v46, v47))
          {
            v48 = OUTLINED_FUNCTION_46_4();
            bspush_ca_scan(v48, v49);
            v50 = OUTLINED_FUNCTION_0_28();
            if (testFldeq(v50, v51, v52, v53))
            {
              goto LABEL_94;
            }

            v54 = OUTLINED_FUNCTION_1_26();
LABEL_88:
            v225 = testFldeq(v54, v55, v56, v57);
            v86 = v1;
            v68 = v1;
            if (v225)
            {
              goto LABEL_49;
            }

LABEL_89:
            v1 = v86;
            if (advance_tok(a1, v68, v65, v66))
            {
              goto LABEL_94;
            }

            *(a1 + 4586) -= 150;
            *(a1 + 4602) -= 100;
          }

          goto LABEL_22;
        }

        v126 = OUTLINED_FUNCTION_3_25();
        if (testFldeq(v126, v127, v128, v129) || advance_tok(a1, v130, v131, v132))
        {
          goto LABEL_94;
        }

        v77 = *(a1 + 4586) + 400;
      }

      else
      {
        v71 = OUTLINED_FUNCTION_32_10();
        bspush_ca_scan(v71, v72);
        v73 = OUTLINED_FUNCTION_13_23();
        v76 = 28;
LABEL_74:
        testFldeq(v73, v74, v75, v76);
        OUTLINED_FUNCTION_90_2();
        if (v177)
        {
          goto LABEL_49;
        }

LABEL_75:
        if (OUTLINED_FUNCTION_108_0(v177, v68, v65, v66))
        {
          goto LABEL_94;
        }

        v77 = *(a1 + 4586) + 500;
      }

LABEL_21:
      *(a1 + 4586) = v77;
      goto LABEL_22;
    }

    v58 = OUTLINED_FUNCTION_41_4();
    bspush_ca_scan(v58, v59);
    v60 = OUTLINED_FUNCTION_13_23();
    v63 = 32;
LABEL_15:
    v64 = testFldeq(v60, v61, v62, v63);
    v67 = v1;
    v68 = v1;
    if (v64)
    {
      goto LABEL_49;
    }

LABEL_16:
    v1 = v67;
    if (advance_tok(a1, v68, v65, v66))
    {
      goto LABEL_94;
    }

    OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 200);
    v70 = v69 + 130;
LABEL_18:
    *(a1 + 4594) = v70;
LABEL_22:
    v78 = OUTLINED_FUNCTION_60_3();
    starttest(v78, v79);
    v80 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v80, v81, v82))
    {
      v133 = OUTLINED_FUNCTION_14_21();
      if (testFldeq(v133, v134, v135, v136))
      {
        goto LABEL_94;
      }

      OUTLINED_FUNCTION_57_3();
      bspush_ca_scan_boa();
      v137 = OUTLINED_FUNCTION_2_26();
LABEL_39:
      testFldeq(v137, v138, v139, v140);
      OUTLINED_FUNCTION_113_0();
      goto LABEL_49;
    }

LABEL_23:
    v83 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v83, v84, v85))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        goto LABEL_81;
      }
    }

LABEL_25:
    v89 = OUTLINED_FUNCTION_52_3();
    starttest(v89, v90);
    v91 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v91, v92, v93))
    {
      v141 = OUTLINED_FUNCTION_56_3();
      bspush_ca_scan(v141, v142);
      v143 = OUTLINED_FUNCTION_13_23();
      v146 = 28;
LABEL_84:
      testFldeq(v143, v144, v145, v146);
      OUTLINED_FUNCTION_94_1();
      if (!v177)
      {
LABEL_85:
        v223 = OUTLINED_FUNCTION_112_0(v177, v68, v65, v66);
        LODWORD(v68) = v1;
        if (!v223)
        {
          OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 500);
          v232 = v224 + 200;
LABEL_99:
          *(a1 + 4598) = v232;
          goto LABEL_100;
        }
      }

      goto LABEL_49;
    }

LABEL_26:
    v94 = OUTLINED_FUNCTION_51_3();
    starttest(v94, v95);
    v96 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v96, v97, v98))
    {
      v147 = OUTLINED_FUNCTION_3_25();
      if (testFldeq(v147, v148, v149, v150))
      {
        goto LABEL_94;
      }

      v154 = advance_tok(a1, v151, v152, v153);
      LODWORD(v68) = v1;
      if (v154)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_117_0();
      goto LABEL_98;
    }

LABEL_27:
    v99 = OUTLINED_FUNCTION_55_3();
    starttest(v99, v100);
    v101 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v101, v102, v103))
    {
      v156 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v156, v157);
      v158 = OUTLINED_FUNCTION_18_18();
      v161 = 3;
LABEL_79:
      v217 = testFldeq(v158, v159, v160, v161);
      v88 = v1;
      v68 = v1;
      if (v217)
      {
        goto LABEL_49;
      }

LABEL_80:
      v1 = v88;
      v218 = advance_tok(a1, v68, v65, v66);
      LODWORD(v68) = v1;
      if (v218)
      {
LABEL_49:
        v176 = *(a1 + 104);
        if (v176)
        {
          v177 = OUTLINED_FUNCTION_49_3(v176);
        }

        else
        {
          v177 = vback(a1, v68);
          v1 = 0;
        }

        v67 = v1;
        v65 = v1;
        v86 = v1;
        v66 = v1;
        v88 = v1;
        v178 = v1;
        v87 = v1;
        switch(v177)
        {
          case 1:
            continue;
          case 2:
            bspop_boa(a1);
            v182 = advance_tok(a1, v179, v180, v181);
            LODWORD(v68) = v1;
            if (v182)
            {
              goto LABEL_49;
            }

            OUTLINED_FUNCTION_95_1();
            goto LABEL_18;
          case 3:
            goto LABEL_22;
          case 4:
            goto LABEL_8;
          case 5:
            goto LABEL_9;
          case 6:
            v60 = OUTLINED_FUNCTION_18_18();
            v63 = 2;
            goto LABEL_15;
          case 7:
            goto LABEL_16;
          case 8:
            goto LABEL_10;
          case 9:
            v213 = OUTLINED_FUNCTION_42_4();
            bspush_ca_scan(v213, v214);
            v73 = OUTLINED_FUNCTION_7_24();
            goto LABEL_74;
          case 10:
            goto LABEL_75;
          case 11:
            v209 = OUTLINED_FUNCTION_58_3();
            bspush_ca_scan(v209, v210);
            v73 = OUTLINED_FUNCTION_13_23();
            v76 = 35;
            goto LABEL_74;
          case 12:
            v205 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v205, v206);
            v73 = OUTLINED_FUNCTION_12_23();
            goto LABEL_74;
          case 13:
            v203 = OUTLINED_FUNCTION_34_9();
            bspush_ca_scan(v203, v204);
            v73 = OUTLINED_FUNCTION_11_23();
            goto LABEL_74;
          case 14:
            v73 = OUTLINED_FUNCTION_13_23();
            v76 = 24;
            goto LABEL_74;
          case 15:
            goto LABEL_11;
          case 16:
            v215 = OUTLINED_FUNCTION_54_3();
            bspush_ca_scan(v215, v216);
            v54 = OUTLINED_FUNCTION_8_24();
            goto LABEL_88;
          case 17:
            goto LABEL_89;
          case 18:
            v219 = OUTLINED_FUNCTION_53_3();
            bspush_ca_scan(v219, v220);
            v54 = OUTLINED_FUNCTION_2_26();
            goto LABEL_88;
          case 19:
            v54 = OUTLINED_FUNCTION_6_24();
            goto LABEL_88;
          case 20:
            goto LABEL_23;
          case 21:
            bspop_boa(a1);
            v186 = advance_tok(a1, v183, v184, v185);
            LODWORD(v68) = v1;
            if (v186)
            {
              goto LABEL_49;
            }

            OUTLINED_FUNCTION_99_1();
            goto LABEL_99;
          case 22:
          case 40:
            goto LABEL_100;
          case 23:
            goto LABEL_25;
          case 24:
            goto LABEL_26;
          case 25:
            v211 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v211, v212);
            v143 = OUTLINED_FUNCTION_7_24();
            goto LABEL_84;
          case 26:
            goto LABEL_85;
          case 27:
            v201 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v201, v202);
            v143 = OUTLINED_FUNCTION_13_23();
            v146 = 35;
            goto LABEL_84;
          case 28:
            v221 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v221, v222);
            v143 = OUTLINED_FUNCTION_12_23();
            goto LABEL_84;
          case 29:
            v207 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v207, v208);
            v143 = OUTLINED_FUNCTION_11_23();
            goto LABEL_84;
          case 30:
            v143 = OUTLINED_FUNCTION_13_23();
            v146 = 24;
            goto LABEL_84;
          case 31:
            goto LABEL_27;
          case 32:
            goto LABEL_28;
          case 33:
            v158 = OUTLINED_FUNCTION_18_18();
            v161 = 2;
            goto LABEL_79;
          case 34:
            goto LABEL_80;
          case 35:
            goto LABEL_29;
          case 36:
            v164 = OUTLINED_FUNCTION_18_18();
            v167 = 2;
            goto LABEL_92;
          case 37:
            goto LABEL_93;
          case 38:
            goto LABEL_97;
          case 39:
            bspop_boa(a1);
            v199 = advance_tok(a1, v196, v197, v198);
            LODWORD(v68) = v1;
            if (v199)
            {
              goto LABEL_49;
            }

            OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 200);
            v232 = v200 + 130;
            goto LABEL_99;
          case 41:
            v193 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v193, v194);
            v187 = OUTLINED_FUNCTION_8_24();
            goto LABEL_60;
          case 42:
            goto LABEL_32;
          case 43:
            v191 = OUTLINED_FUNCTION_60_3();
            bspush_ca_scan(v191, v192);
            v187 = OUTLINED_FUNCTION_2_26();
            goto LABEL_60;
          case 44:
            v187 = OUTLINED_FUNCTION_6_24();
LABEL_60:
            v195 = testFldeq(v187, v188, v189, v190);
            v87 = v1;
            v68 = v1;
            if (!v195)
            {
              goto LABEL_32;
            }

            goto LABEL_49;
          case 45:
            goto LABEL_101;
          default:
            goto LABEL_3;
        }
      }

LABEL_81:
      v155 = *(a1 + 4590) + 300;
      goto LABEL_98;
    }

    break;
  }

LABEL_28:
  v104 = OUTLINED_FUNCTION_60_3();
  starttest(v104, v105);
  v106 = OUTLINED_FUNCTION_16_20();
  if (lpta_loadp_setscan_r(v106, v107, v108))
  {
LABEL_29:
    v109 = OUTLINED_FUNCTION_60_3();
    starttest(v109, v110);
    v111 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v111, v112, v113))
    {
      goto LABEL_100;
    }

    v114 = OUTLINED_FUNCTION_60_3();
    bspush_ca_scan(v114, v115);
    v116 = OUTLINED_FUNCTION_0_28();
    if (!testFldeq(v116, v117, v118, v119))
    {
      v120 = OUTLINED_FUNCTION_1_26();
      v124 = testFldeq(v120, v121, v122, v123);
      v68 = v1;
      v87 = v1;
      if (!v124)
      {
LABEL_32:
        v1 = v87;
        v125 = advance_tok(a1, v68, v65, v66);
        LODWORD(v68) = v1;
        if (!v125)
        {
          *(a1 + 4590) -= 150;
          *(a1 + 4606) -= 100;
          goto LABEL_100;
        }
      }

      goto LABEL_49;
    }

LABEL_94:
    LODWORD(v68) = v1;
    goto LABEL_49;
  }

  v162 = OUTLINED_FUNCTION_60_3();
  bspush_ca_scan(v162, v163);
  v164 = OUTLINED_FUNCTION_13_23();
  v167 = 32;
LABEL_92:
  v226 = testFldeq(v164, v165, v166, v167);
  v178 = v1;
  v68 = v1;
  if (v226)
  {
    goto LABEL_49;
  }

LABEL_93:
  v1 = v178;
  if (advance_tok(a1, v68, v65, v66))
  {
    goto LABEL_94;
  }

  v227 = OUTLINED_FUNCTION_60_3();
  starttest(v227, v228);
  v229 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v229, v230, v231))
  {
    OUTLINED_FUNCTION_60_3();
    bspush_ca_scan_boa();
    v137 = OUTLINED_FUNCTION_18_18();
    v140 = 4;
    goto LABEL_39;
  }

LABEL_97:
  *(a1 + 4586) -= 100;
  v155 = *(a1 + 4590) - 100;
LABEL_98:
  *(a1 + 4590) = v155;
LABEL_100:
  por_coart_Fv(a1, v68, v65, v66, v86, v87, v67, v88);
LABEL_101:
  vretproc(a1);
  return 0;
}

uint64_t por_coart_Fv(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v254, v258, v262, v266, v270, v274, v278, v282, v286, v290, v294, v298, v302, v306, v310, v314, v318, v322, v326, v330, v334, v338, v342, v346, v349);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v10, v11, v12, v13, v14, v15, v16, v17, v255, v259, v263, v267, v271, v275, v279, v283, v287, v291, v295, v299, v303, v307, v311, v315, v319, v323, v327, v331, v335, v339, v343, v347, v350, v352, v354, v356, v358);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_30_11(v18, v19, v20, v21, v22, v23, v24, v25, v256, v260, v264, v268, v272, v276, v280, v284, v288, v292, v296, v300, v304, v308, v312, v316, v320, v324, v328, v332, v336, v340, v344, v348, v351, v353, SHIDWORD(v353), v355, SWORD2(v355), SHIWORD(v355), v357, SWORD2(v357), SBYTE6(v357), SHIBYTE(v357), v359, v360))
  {
    v28 = OUTLINED_FUNCTION_76_3();
    push_ptr_init(v28, v29);
    fence_24(a1);
    v30 = OUTLINED_FUNCTION_22_16();
    starttest(v30, v31);
    v32 = OUTLINED_FUNCTION_15_21();
    v35 = lpta_loadp_setscan_l(v32, v33, v34);
    v36 = 0;
    v37 = 0;
    if (v35)
    {
      while (2)
      {
        v38 = OUTLINED_FUNCTION_46_4();
        starttest(v38, v39);
        v40 = OUTLINED_FUNCTION_15_21();
        v43 = lpta_loadp_setscan_l(v40, v41, v42);
        v44 = v37;
        if (!v43)
        {
LABEL_83:
          v37 = v44;
          OUTLINED_FUNCTION_85_2(17, v257, v261, v265, v269, v273, v277, v281, v285, v289, v293, v297, v301, v305, v309, v313, v317, v321, v325, v329, v333, v337, v341, v345);
          OUTLINED_FUNCTION_54_3();
          bspush_ca_scan_boa();
          v185 = OUTLINED_FUNCTION_53_3();
          bspush_ca_scan(v185, v186);
          v187 = OUTLINED_FUNCTION_0_28();
          if (!testFldeq(v187, v188, v189, v190))
          {
            v176 = OUTLINED_FUNCTION_1_26();
LABEL_85:
            v191 = testFldeq(v176, v177, v178, v179);
            v61 = v37;
            v54 = v37;
            if (v191)
            {
              goto LABEL_14;
            }

LABEL_86:
            v37 = v61;
            break;
          }

LABEL_105:
          LODWORD(v54) = v37;
          goto LABEL_14;
        }

LABEL_89:
        v193 = OUTLINED_FUNCTION_60_3();
        starttest(v193, v194);
        v195 = OUTLINED_FUNCTION_15_21();
        v56 = lpta_loadp_setscan_l(v195, v196, v197);
        v54 = v37;
        if (v56)
        {
LABEL_90:
          v37 = v54;
          v198 = OUTLINED_FUNCTION_60_3();
          starttest(v198, v199);
          v200 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v200, v201, v202))
          {
LABEL_106:
            v26 = 0;
            goto LABEL_4;
          }

LABEL_91:
          OUTLINED_FUNCTION_85_2(43, v257, v261, v265, v269, v273, v277, v281, v285, v289, v293, v297, v301, v305, v309, v313, v317, v321, v325, v329, v333, v337, v341, v345);
          v203 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v203, v204);
          v205 = OUTLINED_FUNCTION_0_28();
          if (testFldeq(v205, v206, v207, v208))
          {
            goto LABEL_105;
          }

          v209 = OUTLINED_FUNCTION_1_26();
          v56 = testFldeq(v209, v210, v211, v212);
          v54 = v37;
          v52 = v37;
          if (v56)
          {
            goto LABEL_14;
          }

LABEL_93:
          if (OUTLINED_FUNCTION_112_0(v56, v54, v51, v52))
          {
            goto LABEL_105;
          }

          v213 = OUTLINED_FUNCTION_61_3();
          if (lpta_loadp_setscan_r(v213, v214, v215))
          {
            goto LABEL_105;
          }

          v219 = advance_tok(a1, v216, v217, v218);
          if (v219)
          {
            goto LABEL_105;
          }

          if (OUTLINED_FUNCTION_45_4(v219, v220, v221))
          {
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v222 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v222, v223);
          v224 = OUTLINED_FUNCTION_0_28();
          if (testFldeq(v224, v225, v226, v227))
          {
            goto LABEL_105;
          }

          v228 = OUTLINED_FUNCTION_1_26();
          v232 = testFldeq(v228, v229, v230, v231);
          v54 = v37;
          v63 = v37;
          if (v232)
          {
            goto LABEL_14;
          }

LABEL_77:
          v37 = v63;
        }

        else
        {
LABEL_100:
          v233 = v37;
          v37 = 28;
          OUTLINED_FUNCTION_109_0(v56, v54, v51, v52, v57, v58, v59, v60, v257, v261, v265, v269, v273, v277, v281, v285, v289, v293, v297, v301, v305, v309, v313, v317, v321, v325, v329, v333, v337, v341, v345);
          v234 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v234, v235);
          v236 = OUTLINED_FUNCTION_13_23();
          v56 = testFldeq(v236, v237, v238, 28);
          v54 = v233;
          v51 = v233;
          if (v56)
          {
            goto LABEL_14;
          }

LABEL_101:
          if (OUTLINED_FUNCTION_108_0(v56, v54, v51, v52))
          {
            goto LABEL_105;
          }

          v239 = OUTLINED_FUNCTION_61_3();
          if (lpta_loadp_setscan_r(v239, v240, v241))
          {
            goto LABEL_105;
          }

          v245 = advance_tok(a1, v242, v243, v244);
          if (v245 || OUTLINED_FUNCTION_45_4(v245, v246, v247))
          {
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v248 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v248, v249);
          v250 = OUTLINED_FUNCTION_13_23();
          v253 = testFldeq(v250, v251, v252, 28);
          v54 = v37;
          v62 = v37;
          if (v253)
          {
LABEL_14:
            v55 = *(a1 + 104);
            if (v55)
            {
              v56 = OUTLINED_FUNCTION_49_3(v55);
            }

            else
            {
              v56 = vback(a1, v54);
              v37 = 0;
            }

            v53 = v37;
            v61 = v37;
            v51 = v37;
            v62 = v37;
            v52 = v37;
            v63 = v37;
            switch(v56)
            {
              case 1:
                continue;
              case 2:
                v36 = v37;
                goto LABEL_9;
              case 3:
                bspop_boa(a1);
                v64 = OUTLINED_FUNCTION_61_3();
                v67 = lpta_loadp_setscan_r(v64, v65, v66);
                LODWORD(v54) = v37;
                if (v67)
                {
                  goto LABEL_14;
                }

                v70 = advance_tok(a1, v37, v68, v69);
                LODWORD(v54) = v37;
                if (v70)
                {
                  goto LABEL_14;
                }

                v72 = OUTLINED_FUNCTION_45_4(v70, v37, v71);
                LODWORD(v54) = v37;
                if (v72)
                {
                  goto LABEL_14;
                }

                v73 = OUTLINED_FUNCTION_43_4();
                bspush_ca_scan(v73, v74);
                v75 = OUTLINED_FUNCTION_13_23();
                v78 = 28;
                goto LABEL_54;
              case 4:
                v129 = OUTLINED_FUNCTION_41_4();
                bspush_ca_scan(v129, v130);
                v114 = OUTLINED_FUNCTION_7_24();
                goto LABEL_61;
              case 5:
                goto LABEL_10;
              case 6:
                v163 = OUTLINED_FUNCTION_39_6();
                bspush_ca_scan(v163, v164);
                v114 = OUTLINED_FUNCTION_13_23();
                v117 = 35;
                goto LABEL_61;
              case 7:
                v124 = OUTLINED_FUNCTION_25_15();
                bspush_ca_scan(v124, v125);
                v114 = OUTLINED_FUNCTION_12_23();
                goto LABEL_61;
              case 8:
                v112 = OUTLINED_FUNCTION_32_10();
                bspush_ca_scan(v112, v113);
                v114 = OUTLINED_FUNCTION_11_23();
                goto LABEL_61;
              case 9:
                v114 = OUTLINED_FUNCTION_13_23();
                v117 = 24;
LABEL_61:
                v165 = testFldeq(v114, v115, v116, v117);
                v53 = v37;
                v54 = v37;
                if (!v165)
                {
                  goto LABEL_10;
                }

                goto LABEL_14;
              case 10:
                v122 = OUTLINED_FUNCTION_58_3();
                bspush_ca_scan(v122, v123);
                v75 = OUTLINED_FUNCTION_7_24();
                goto LABEL_54;
              case 11:
                goto LABEL_55;
              case 12:
                v147 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v147, v148);
                v75 = OUTLINED_FUNCTION_13_23();
                v78 = 35;
                goto LABEL_54;
              case 13:
                v108 = OUTLINED_FUNCTION_34_9();
                bspush_ca_scan(v108, v109);
                v75 = OUTLINED_FUNCTION_12_23();
                goto LABEL_54;
              case 14:
                v152 = OUTLINED_FUNCTION_40_5();
                bspush_ca_scan(v152, v153);
                v75 = OUTLINED_FUNCTION_11_23();
                goto LABEL_54;
              case 15:
                v75 = OUTLINED_FUNCTION_13_23();
                v78 = 24;
LABEL_54:
                v154 = testFldeq(v75, v76, v77, v78);
                v54 = v37;
                if (v154)
                {
                  goto LABEL_14;
                }

LABEL_55:
                v155 = advance_tok(a1, v54, v51, v52);
                LODWORD(v54) = v37;
                if (v155)
                {
                  goto LABEL_14;
                }

                OUTLINED_FUNCTION_116_0();
                if (v80 != v81)
                {
                  goto LABEL_14;
                }

                v184 = v156 + 100;
                goto LABEL_88;
              case 16:
                goto LABEL_89;
              case 17:
                v44 = v37;
                goto LABEL_83;
              case 18:
                bspop_boa(a1);
                v131 = OUTLINED_FUNCTION_61_3();
                v134 = lpta_loadp_setscan_r(v131, v132, v133);
                LODWORD(v54) = v37;
                if (v134)
                {
                  goto LABEL_14;
                }

                v137 = advance_tok(a1, v37, v135, v136);
                LODWORD(v54) = v37;
                if (v137)
                {
                  goto LABEL_14;
                }

                v139 = OUTLINED_FUNCTION_45_4(v137, v37, v138);
                LODWORD(v54) = v37;
                if (v139)
                {
                  goto LABEL_14;
                }

                v140 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v140, v141);
                v142 = OUTLINED_FUNCTION_0_28();
                v146 = testFldeq(v142, v143, v144, v145);
                LODWORD(v54) = v37;
                if (v146)
                {
                  goto LABEL_14;
                }

                v102 = OUTLINED_FUNCTION_1_26();
                goto LABEL_65;
              case 19:
                v182 = OUTLINED_FUNCTION_57_3();
                bspush_ca_scan(v182, v183);
                v176 = OUTLINED_FUNCTION_8_24();
                goto LABEL_85;
              case 20:
                goto LABEL_86;
              case 21:
                v180 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v180, v181);
                v176 = OUTLINED_FUNCTION_2_26();
                goto LABEL_85;
              case 22:
                v176 = OUTLINED_FUNCTION_6_24();
                goto LABEL_85;
              case 23:
                v106 = OUTLINED_FUNCTION_56_3();
                bspush_ca_scan(v106, v107);
                v102 = OUTLINED_FUNCTION_8_24();
                goto LABEL_65;
              case 24:
                goto LABEL_66;
              case 25:
                v100 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v100, v101);
                v102 = OUTLINED_FUNCTION_2_26();
                goto LABEL_65;
              case 26:
                v102 = OUTLINED_FUNCTION_6_24();
LABEL_65:
                v166 = testFldeq(v102, v103, v104, v105);
                v54 = v37;
                if (v166)
                {
                  goto LABEL_14;
                }

LABEL_66:
                v167 = advance_tok(a1, v54, v51, v52);
                LODWORD(v54) = v37;
                if (v167)
                {
                  goto LABEL_14;
                }

                OUTLINED_FUNCTION_116_0();
                if (v80 != v81)
                {
                  goto LABEL_14;
                }

                v184 = v168 - 100;
LABEL_88:
                *(a1 + 4586) = v184;
                goto LABEL_89;
              case 27:
                v54 = v37;
                goto LABEL_90;
              case 28:
                goto LABEL_100;
              case 29:
                v120 = OUTLINED_FUNCTION_51_3();
                bspush_ca_scan(v120, v121);
                v96 = OUTLINED_FUNCTION_7_24();
                goto LABEL_73;
              case 30:
                goto LABEL_101;
              case 31:
                v94 = OUTLINED_FUNCTION_55_3();
                bspush_ca_scan(v94, v95);
                v96 = OUTLINED_FUNCTION_13_23();
                v99 = 35;
                goto LABEL_73;
              case 32:
                v171 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v171, v172);
                v96 = OUTLINED_FUNCTION_12_23();
                goto LABEL_73;
              case 33:
                v110 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v110, v111);
                v96 = OUTLINED_FUNCTION_11_23();
                goto LABEL_73;
              case 34:
                v96 = OUTLINED_FUNCTION_13_23();
                v99 = 24;
LABEL_73:
                testFldeq(v96, v97, v98, v99);
                OUTLINED_FUNCTION_90_2();
                if (!v56)
                {
                  goto LABEL_101;
                }

                goto LABEL_14;
              case 35:
                bspop_boa(a1);
                OUTLINED_FUNCTION_116_0();
                if (v80 != v81)
                {
                  goto LABEL_14;
                }

                v192 = v126 + 100;
                goto LABEL_87;
              case 36:
                v127 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v127, v128);
                v84 = OUTLINED_FUNCTION_7_24();
                goto LABEL_51;
              case 37:
                break;
              case 38:
                v118 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v118, v119);
                v84 = OUTLINED_FUNCTION_13_23();
                v87 = 35;
                goto LABEL_51;
              case 39:
                v82 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v82, v83);
                v84 = OUTLINED_FUNCTION_12_23();
                goto LABEL_51;
              case 40:
                v149 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v149, v150);
                v84 = OUTLINED_FUNCTION_11_23();
                goto LABEL_51;
              case 41:
                v84 = OUTLINED_FUNCTION_13_23();
                v87 = 24;
LABEL_51:
                v151 = testFldeq(v84, v85, v86, v87);
                v62 = v37;
                v54 = v37;
                if (!v151)
                {
                  break;
                }

                goto LABEL_14;
              case 42:
                goto LABEL_106;
              case 43:
                goto LABEL_91;
              case 44:
                v169 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v169, v170);
                v90 = OUTLINED_FUNCTION_8_24();
                goto LABEL_70;
              case 45:
                goto LABEL_93;
              case 46:
                v88 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v88, v89);
                v90 = OUTLINED_FUNCTION_2_26();
                goto LABEL_70;
              case 47:
                v90 = OUTLINED_FUNCTION_6_24();
LABEL_70:
                testFldeq(v90, v91, v92, v93);
                OUTLINED_FUNCTION_94_1();
                if (!v56)
                {
                  goto LABEL_93;
                }

                goto LABEL_14;
              case 48:
                bspop_boa(a1);
                OUTLINED_FUNCTION_116_0();
                if (v80 != v81)
                {
                  goto LABEL_14;
                }

                v192 = v79 - 100;
LABEL_87:
                v26 = 0;
                *(a1 + 4590) = v192;
                goto LABEL_4;
              case 49:
                v161 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v161, v162);
                v157 = OUTLINED_FUNCTION_8_24();
                goto LABEL_76;
              case 50:
                goto LABEL_77;
              case 51:
                v173 = OUTLINED_FUNCTION_60_3();
                bspush_ca_scan(v173, v174);
                v157 = OUTLINED_FUNCTION_2_26();
                goto LABEL_76;
              case 52:
                v157 = OUTLINED_FUNCTION_6_24();
LABEL_76:
                v175 = testFldeq(v157, v158, v159, v160);
                v63 = v37;
                v54 = v37;
                if (!v175)
                {
                  goto LABEL_77;
                }

                goto LABEL_14;
              default:
                goto LABEL_3;
            }
          }

          v37 = v62;
        }

        break;
      }
    }

    else
    {
LABEL_9:
      v45 = v36;
      OUTLINED_FUNCTION_85_2(2, v257, v261, v265, v269, v273, v277, v281, v285, v289, v293, v297, v301, v305, v309, v313, v317, v321, v325, v329, v333, v337, v341, v345);
      OUTLINED_FUNCTION_37_8();
      bspush_ca_scan_boa();
      v46 = OUTLINED_FUNCTION_26_15();
      bspush_ca_scan(v46, v47);
      v48 = OUTLINED_FUNCTION_62_3();
      v50 = testFldeq(v48, v37, v49, 28);
      v53 = v45;
      v54 = v45;
      if (v50)
      {
        goto LABEL_14;
      }

LABEL_10:
      v37 = v53;
    }

    if (advance_tok(a1, v54, v51, v52))
    {
      LODWORD(v54) = v37;
    }

    else
    {
      LODWORD(v54) = 1;
    }

    goto LABEL_14;
  }

LABEL_3:
  v26 = 94;
LABEL_4:
  vretproc(a1);
  return v26;
}

uint64_t por_dental_Fv(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v387, v391, v395, v399, v403, v407, v411, v415, v419, v423, v427, v431, v435, v439, v443, v447, v451, v455, v459, v463, v467, v471, v475, v479, v482);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v11, v12, v13, v14, v15, v16, v17, v18, v388, v392, v396, v400, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v444, v448, v452, v456, v460, v464, v468, v472, v476, v480, v483, v485, v487, v489, v491);
  v19 = setjmp(v8);
  if (v19 || OUTLINED_FUNCTION_30_11(v19, v20, v21, v22, v23, v24, v25, v26, v389, v393, v397, v401, v405, v409, v413, v417, v421, v425, v429, v433, v437, v441, v445, v449, v453, v457, v461, v465, v469, v473, v477, v481, v484, v486, SHIDWORD(v486), v488, SWORD2(v488), SHIWORD(v488), v490, SWORD2(v490), SBYTE6(v490), SHIBYTE(v490), v492, v493))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v28 = OUTLINED_FUNCTION_76_3();
  push_ptr_init(v28, v29);
  fence_24(a1);
  OUTLINED_FUNCTION_91_1(1600);
  OUTLINED_FUNCTION_89_2(2600);
  *(a1 + 4602) = 4200;
  *(a1 + 4610) = 4500;
  v30 = OUTLINED_FUNCTION_22_16();
  starttest(v30, v31);
  v32 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v32, v33, v34))
  {
    v9 = 0;
    while (2)
    {
      v35 = OUTLINED_FUNCTION_37_8();
      starttest(v35, v36);
      v37 = OUTLINED_FUNCTION_15_21();
      if (!lpta_loadp_setscan_l(v37, v38, v39))
      {
        v72 = OUTLINED_FUNCTION_18_18();
        if (!testFldeq(v72, v73, v74, 2))
        {
          OUTLINED_FUNCTION_26_15();
          bspush_ca_scan_boa();
          v75 = OUTLINED_FUNCTION_62_3();
          v77 = v8;
          v78 = 20;
          goto LABEL_132;
        }

LABEL_50:
        LODWORD(v70) = v9;
        goto LABEL_64;
      }

LABEL_7:
      v8 = v9;
      v40 = OUTLINED_FUNCTION_29_12();
      starttest(v40, v41);
      v42 = OUTLINED_FUNCTION_15_21();
      if (!lpta_loadp_setscan_l(v42, v43, v44))
      {
        v79 = OUTLINED_FUNCTION_41_4();
        bspush_ca_scan(v79, v80);
        v81 = OUTLINED_FUNCTION_12_23();
        testFldeq(v81, v82, v83, v84);
        OUTLINED_FUNCTION_90_2();
        if (v85)
        {
          goto LABEL_64;
        }

LABEL_17:
        if (OUTLINED_FUNCTION_108_0(v85, v70, v67, v68))
        {
          goto LABEL_31;
        }

        v71 = *(a1 + 4586) + 100;
LABEL_19:
        *(a1 + 4586) = v71;
        break;
      }

LABEL_8:
      v45 = OUTLINED_FUNCTION_42_4();
      starttest(v45, v46);
      v47 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v47, v48, v49))
      {
LABEL_9:
        v50 = OUTLINED_FUNCTION_34_9();
        starttest(v50, v51);
        v52 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_l(v52, v53, v54))
        {
LABEL_10:
          v55 = OUTLINED_FUNCTION_28_12();
          starttest(v55, v56);
          v57 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v57, v58, v59))
          {
            break;
          }

          v60 = OUTLINED_FUNCTION_53_3();
          bspush_ca_scan(v60, v61);
          v62 = OUTLINED_FUNCTION_0_28();
          v66 = testFldeq(v62, v63, v64, v65);
          v69 = v8;
          v70 = v8;
          if (v66)
          {
            goto LABEL_64;
          }

LABEL_12:
          LODWORD(v8) = v69;
          if (advance_tok(a1, v70, v67, v68))
          {
            goto LABEL_31;
          }

          v71 = *(a1 + 4586) - 450;
          goto LABEL_19;
        }

        v94 = OUTLINED_FUNCTION_40_5();
        bspush_ca_scan(v94, v95);
        v96 = OUTLINED_FUNCTION_0_28();
        if (testFldeq(v96, v97, v98, v99))
        {
          goto LABEL_31;
        }

        v100 = OUTLINED_FUNCTION_1_26();
        v104 = testFldeq(v100, v101, v102, v103);
        v105 = v8;
        v70 = v8;
        if (v104)
        {
          goto LABEL_64;
        }

LABEL_25:
        LODWORD(v8) = v105;
        if (advance_tok(a1, v70, v67, v68))
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 400);
        *(a1 + 4594) = v106 - 550;
      }

      else
      {
        v86 = OUTLINED_FUNCTION_58_3();
        bspush_ca_scan(v86, v87);
        v88 = OUTLINED_FUNCTION_18_18();
        v91 = testFldeq(v88, v89, v90, 3);
        v92 = v8;
        v70 = v8;
        if (v91)
        {
          goto LABEL_64;
        }

LABEL_21:
        v9 = v92;
        v93 = advance_tok(a1, v70, v67, v68);
        LODWORD(v8) = v9;
        LODWORD(v70) = v9;
        if (v93)
        {
LABEL_64:
          LODWORD(v8) = 4546;
LABEL_65:
          v199 = *(a1 + 104);
          if (v199)
          {
            v200 = OUTLINED_FUNCTION_74_3(v199);
            v9 = v70;
          }

          else
          {
            v200 = vback(a1, v70);
            v9 = 0;
          }

          v201 = v200 - 1;
          v202 = 55;
          v67 = v9;
          v92 = v9;
          v105 = v9;
          v69 = v9;
          v68 = v9;
          v192 = v9;
          v203 = 4546;
          v85 = v9;
          switch(v201)
          {
            case 0:
              continue;
            case 1:
              goto LABEL_159;
            case 2:
              goto LABEL_7;
            case 3:
              bspop_boa(a1);
              v207 = advance_tok(a1, v204, v205, v206);
              LODWORD(v70) = v9;
              if (v207)
              {
                goto LABEL_65;
              }

              OUTLINED_FUNCTION_95_1();
              *(a1 + 4594) = v338;
LABEL_159:
              LODWORD(v8) = v9;
              goto LABEL_35;
            case 4:
              v8 = v9;
              goto LABEL_8;
            case 5:
              v270 = OUTLINED_FUNCTION_25_15();
              bspush_ca_scan(v270, v271);
              v248 = OUTLINED_FUNCTION_7_24();
              goto LABEL_98;
            case 6:
              goto LABEL_17;
            case 7:
              v277 = OUTLINED_FUNCTION_32_10();
              bspush_ca_scan(v277, v278);
              v248 = OUTLINED_FUNCTION_13_23();
              v251 = 24;
              goto LABEL_98;
            case 8:
              v246 = OUTLINED_FUNCTION_43_4();
              bspush_ca_scan(v246, v247);
              v248 = OUTLINED_FUNCTION_11_23();
              goto LABEL_98;
            case 9:
              v248 = OUTLINED_FUNCTION_13_23();
              v251 = 28;
LABEL_98:
              v85 = testFldeq(v248, v249, v250, v251);
              v67 = v9;
              v70 = v9;
              if (!v85)
              {
                goto LABEL_17;
              }

              goto LABEL_65;
            case 10:
              v8 = v9;
              goto LABEL_9;
            case 11:
              v272 = OUTLINED_FUNCTION_3_25();
              v276 = testFldeq(v272, v273, v274, v275);
              v92 = v9;
              v70 = v9;
              if (!v276)
              {
                goto LABEL_21;
              }

              goto LABEL_65;
            case 12:
              goto LABEL_21;
            case 13:
              v8 = v9;
              goto LABEL_10;
            case 14:
              v305 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v305, v306);
              v293 = OUTLINED_FUNCTION_8_24();
              goto LABEL_112;
            case 15:
              goto LABEL_25;
            case 16:
              v301 = OUTLINED_FUNCTION_54_3();
              bspush_ca_scan(v301, v302);
              v293 = OUTLINED_FUNCTION_2_26();
              goto LABEL_112;
            case 17:
              v293 = OUTLINED_FUNCTION_6_24();
LABEL_112:
              v307 = testFldeq(v293, v294, v295, v296);
              v105 = v9;
              v70 = v9;
              if (!v307)
              {
                goto LABEL_25;
              }

              goto LABEL_65;
            case 18:
              v239 = OUTLINED_FUNCTION_14_21();
              v243 = testFldeq(v239, v240, v241, v242);
              v69 = v9;
              v70 = v9;
              if (!v243)
              {
                goto LABEL_12;
              }

              goto LABEL_65;
            case 19:
              goto LABEL_12;
            case 20:
              LODWORD(v8) = v9;
              goto LABEL_36;
            case 21:
              bspop_boa(a1);
              OUTLINED_FUNCTION_60_3();
              bspush_ca_scan_boa();
              v308 = OUTLINED_FUNCTION_3_25();
              if (testFldeq(v308, v309, v310, v311))
              {
                LODWORD(v70) = v9;
              }

              else
              {
                LODWORD(v70) = 1;
              }

              goto LABEL_65;
            case 22:
              bspop_boa(a1);
              v238 = advance_tok(a1, v235, v236, v237);
              LODWORD(v70) = v9;
              if (v238)
              {
                goto LABEL_65;
              }

              OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 150);
              v340 = v339 - 200;
              goto LABEL_160;
            case 23:
              goto LABEL_55;
            case 24:
              LODWORD(v8) = v9;
              goto LABEL_37;
            case 25:
              bspop_boa(a1);
              v300 = advance_tok(a1, v297, v298, v299);
              LODWORD(v70) = v9;
              if (v300)
              {
                goto LABEL_65;
              }

              OUTLINED_FUNCTION_99_1();
              goto LABEL_160;
            case 26:
              LODWORD(v8) = v9;
              goto LABEL_38;
            case 27:
              v252 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v252, v253);
              v227 = OUTLINED_FUNCTION_12_23();
              goto LABEL_87;
            case 28:
              goto LABEL_49;
            case 29:
              v244 = OUTLINED_FUNCTION_51_3();
              bspush_ca_scan(v244, v245);
              v227 = OUTLINED_FUNCTION_11_23();
              goto LABEL_87;
            case 30:
              v233 = OUTLINED_FUNCTION_55_3();
              bspush_ca_scan(v233, v234);
              v227 = OUTLINED_FUNCTION_13_23();
              v230 = 24;
              goto LABEL_87;
            case 31:
              v227 = OUTLINED_FUNCTION_13_23();
              v230 = 28;
LABEL_87:
              v254 = testFldeq(v227, v228, v229, v230);
              v68 = v9;
              v70 = v9;
              if (!v254)
              {
                goto LABEL_49;
              }

              goto LABEL_65;
            case 32:
              goto LABEL_39;
            case 33:
              goto LABEL_40;
            case 34:
              goto LABEL_129;
            case 35:
              bspop_boa(a1);
              v258 = advance_tok(a1, v255, v256, v257);
              LODWORD(v70) = v9;
              if (v258)
              {
                goto LABEL_65;
              }

              v259 = OUTLINED_FUNCTION_61_3();
              v262 = lpta_loadp_setscan_r(v259, v260, v261);
              LODWORD(v70) = v9;
              if (v262)
              {
                goto LABEL_65;
              }

              v263 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v263, v264);
              v265 = OUTLINED_FUNCTION_0_28();
              v269 = testFldeq(v265, v266, v267, v268);
              LODWORD(v70) = v9;
              if (v269)
              {
                goto LABEL_65;
              }

              v223 = OUTLINED_FUNCTION_1_26();
              goto LABEL_118;
            case 36:
              v231 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v231, v232);
              v223 = OUTLINED_FUNCTION_8_24();
              goto LABEL_118;
            case 37:
              goto LABEL_119;
            case 38:
              v221 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v221, v222);
              v223 = OUTLINED_FUNCTION_2_26();
              goto LABEL_118;
            case 39:
              v223 = OUTLINED_FUNCTION_6_24();
LABEL_118:
              v312 = testFldeq(v223, v224, v225, v226);
              v70 = v9;
              if (v312)
              {
                goto LABEL_65;
              }

LABEL_119:
              v313 = advance_tok(a1, v70, v67, v68);
              LODWORD(v70) = v9;
              if (v313)
              {
                goto LABEL_65;
              }

              OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 400);
              v340 = v333 - 550;
LABEL_160:
              *(a1 + 4598) = v340;
              goto LABEL_55;
            case 40:
              v144 = v9;
              goto LABEL_41;
            case 41:
              goto LABEL_130;
            case 42:
              bspop_boa(a1);
              v282 = advance_tok(a1, v279, v280, v281);
              LODWORD(v70) = v9;
              if (v282)
              {
                goto LABEL_65;
              }

              v283 = OUTLINED_FUNCTION_61_3();
              v286 = lpta_loadp_setscan_r(v283, v284, v285);
              LODWORD(v70) = v9;
              if (v286)
              {
                goto LABEL_65;
              }

              v287 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v287, v288);
              v289 = OUTLINED_FUNCTION_0_28();
              goto LABEL_108;
            case 43:
              v289 = OUTLINED_FUNCTION_14_21();
LABEL_108:
              v303 = testFldeq(v289, v290, v291, v292);
              v70 = v9;
              if (!v303)
              {
                goto LABEL_109;
              }

              goto LABEL_65;
            case 44:
LABEL_109:
              v304 = advance_tok(a1, v70, v67, v68);
              LODWORD(v70) = v9;
              if (v304)
              {
                goto LABEL_65;
              }

              v180 = *(a1 + 4590) - 450;
              goto LABEL_136;
            case 45:
              v152 = v9;
              goto LABEL_150;
            case 46:
              bspop_boa(a1);
              v320 = advance_tok(a1, v317, v318, v319);
              LODWORD(v70) = v9;
              if (v320)
              {
                goto LABEL_65;
              }

              v321 = OUTLINED_FUNCTION_61_3();
              v324 = lpta_loadp_setscan_r(v321, v322, v323);
              LODWORD(v70) = v9;
              if (v324)
              {
                goto LABEL_65;
              }

              v325 = OUTLINED_FUNCTION_13_23();
              v328 = testFldeq(v325, v326, v327, 32);
              LODWORD(v70) = v9;
              if (v328)
              {
                goto LABEL_65;
              }

              v331 = advance_tok(a1, v9, v329, v330);
              LODWORD(v70) = v9;
              if (v331)
              {
                goto LABEL_65;
              }

              v180 = *(a1 + 4590) - 200;
              goto LABEL_136;
            case 47:
            case 59:
            case 67:
              goto LABEL_186;
            case 48:
              v314 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v314, v315);
              v217 = OUTLINED_FUNCTION_13_23();
              v220 = 10;
              goto LABEL_122;
            case 49:
              goto LABEL_57;
            case 50:
              v215 = OUTLINED_FUNCTION_60_3();
              bspush_ca_scan(v215, v216);
              v217 = OUTLINED_FUNCTION_13_23();
              v220 = 4;
              goto LABEL_122;
            case 51:
              v217 = OUTLINED_FUNCTION_13_23();
              v220 = 3;
LABEL_122:
              v316 = testFldeq(v217, v218, v219, v220);
              v192 = v9;
              v70 = v9;
              if (!v316)
              {
                goto LABEL_57;
              }

              goto LABEL_65;
            case 52:
              LODWORD(v8) = v9;
              goto LABEL_143;
            case 53:
              LODWORD(v8) = v9;
              goto LABEL_154;
            case 54:
            case 56:
              goto LABEL_163;
            case 55:
              goto LABEL_162;
            case 57:
              LODWORD(v8) = v9;
              goto LABEL_165;
            case 58:
              v334 = *(a1 + 4050);
              goto LABEL_138;
            case 60:
              goto LABEL_140;
            case 61:
              v337 = *(a1 + 4050);
              goto LABEL_169;
            case 62:
              LODWORD(v8) = v9;
              goto LABEL_179;
            case 63:
              v336 = v9;
              goto LABEL_170;
            case 64:
              goto LABEL_178;
            case 65:
              bspop_boa(a1);
              v208 = OUTLINED_FUNCTION_13_23();
              v211 = testFldeq(v208, v209, v210, 18);
              LODWORD(v70) = v9;
              if (v211)
              {
                goto LABEL_65;
              }

              v214 = advance_tok(a1, v9, v212, v213);
              LODWORD(v70) = v9;
              if (v214)
              {
                goto LABEL_65;
              }

              v202 = 50;
              v203 = 4546;
              LODWORD(v85) = v9;
              goto LABEL_178;
            case 66:
              goto LABEL_177;
            case 68:
              goto LABEL_184;
            default:
              goto LABEL_3;
          }
        }
      }

      break;
    }
  }

  else
  {
    LODWORD(v8) = 0;
    v107 = OUTLINED_FUNCTION_59_3();
    if (testFldeq(v107, v108, 0, 18))
    {
      goto LABEL_31;
    }

    if (advance_tok(a1, v109, v110, v111))
    {
      LODWORD(v70) = 0;
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 150);
    *(a1 + 4594) = v112 - 200;
    LODWORD(v8) = 0;
  }

LABEL_35:
  v113 = OUTLINED_FUNCTION_57_3();
  starttest(v113, v114);
  v115 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v115, v116, v117))
  {
    v153 = OUTLINED_FUNCTION_13_23();
    if (!testFldeq(v153, v154, v155, 18) && !advance_tok(a1, v156, v157, v158))
    {
      OUTLINED_FUNCTION_60_3();
      bspush_ca_scan_boa();
      v159 = OUTLINED_FUNCTION_1_26();
      goto LABEL_61;
    }

    goto LABEL_31;
  }

LABEL_36:
  v118 = OUTLINED_FUNCTION_56_3();
  starttest(v118, v119);
  v120 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v120, v121, v122))
  {
    v163 = OUTLINED_FUNCTION_18_18();
    if (!testFldeq(v163, v164, v165, 2))
    {
      OUTLINED_FUNCTION_60_3();
      bspush_ca_scan_boa();
      v159 = OUTLINED_FUNCTION_13_23();
      v162 = 20;
      goto LABEL_61;
    }

    goto LABEL_31;
  }

LABEL_37:
  v123 = OUTLINED_FUNCTION_60_3();
  starttest(v123, v124);
  v125 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v125, v126, v127))
  {
    v166 = OUTLINED_FUNCTION_60_3();
    bspush_ca_scan(v166, v167);
    v168 = OUTLINED_FUNCTION_7_24();
    testFldeq(v168, v169, v170, v171);
    OUTLINED_FUNCTION_94_1();
    if (v172)
    {
      goto LABEL_64;
    }

LABEL_49:
    v9 = v68;
    if (!advance_tok(a1, v70, v67, v68))
    {
      v180 = *(a1 + 4590) + 200;
LABEL_136:
      *(a1 + 4590) = v180;
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_38:
  v128 = OUTLINED_FUNCTION_60_3();
  starttest(v128, v129);
  v130 = OUTLINED_FUNCTION_16_20();
  if (lpta_loadp_setscan_r(v130, v131, v132))
  {
LABEL_39:
    v133 = OUTLINED_FUNCTION_60_3();
    starttest(v133, v134);
    v135 = OUTLINED_FUNCTION_16_20();
    lpta_loadp_setscan_l(v135, v136, v137);
    OUTLINED_FUNCTION_120_0();
    if (v138)
    {
LABEL_40:
      v139 = OUTLINED_FUNCTION_60_3();
      starttest(v139, v140);
      v141 = OUTLINED_FUNCTION_16_20();
      lpta_loadp_setscan_l(v141, v142, v143);
      OUTLINED_FUNCTION_120_0();
      if (v145)
      {
LABEL_41:
        v9 = v144;
        v146 = OUTLINED_FUNCTION_52_3();
        starttest(v146, v147);
        v148 = OUTLINED_FUNCTION_16_20();
        v151 = lpta_loadp_setscan_l(v148, v149, v150);
        v152 = v9;
        if (!v151)
        {
LABEL_150:
          LODWORD(v8) = v152;
          OUTLINED_FUNCTION_85_2(46, v390, v394, v398, v402, v406, v410, v414, v418, v422, v426, v430, v434, v438, v442, v446, v450, v454, v458, v462, v466, v470, v474, v478);
          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v159 = OUTLINED_FUNCTION_13_23();
          v162 = 16;
LABEL_61:
          if (testFldeq(v159, v160, v161, v162))
          {
            LODWORD(v70) = v8;
          }

          else
          {
            LODWORD(v70) = 1;
          }

          goto LABEL_64;
        }

        goto LABEL_55;
      }

LABEL_130:
      OUTLINED_FUNCTION_85_2(42, v390, v394, v398, v402, v406, v410, v414, v418, v422, v426, v430, v434, v438, v442, v446, v450, v454, v458, v462, v466, v470, v474, v478);
    }

    else
    {
LABEL_129:
      OUTLINED_FUNCTION_85_2(35, v390, v394, v398, v402, v406, v410, v414, v418, v422, v426, v430, v434, v438, v442, v446, v450, v454, v458, v462, v466, v470, v474, v478);
    }

    OUTLINED_FUNCTION_60_3();
    bspush_ca_scan_boa();
    v75 = OUTLINED_FUNCTION_13_23();
    v78 = 16;
LABEL_132:
    v332 = testFldeq(v75, v77, v76, v78);
    goto LABEL_133;
  }

  v173 = OUTLINED_FUNCTION_18_18();
  if (testFldeq(v173, v174, v175, 3))
  {
    goto LABEL_31;
  }

  advance_tok(a1, v176, v177, v178);
  OUTLINED_FUNCTION_120_0();
  if (v179)
  {
    goto LABEL_64;
  }

LABEL_55:
  v181 = OUTLINED_FUNCTION_60_3();
  starttest(v181, v182);
  v183 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_r(v183, v184, v185))
  {
    goto LABEL_186;
  }

  v186 = OUTLINED_FUNCTION_60_3();
  bspush_ca_scan(v186, v187);
  v188 = OUTLINED_FUNCTION_13_23();
  v191 = testFldeq(v188, v189, v190, 9);
  v192 = v9;
  v70 = v9;
  if (v191)
  {
    goto LABEL_64;
  }

LABEL_57:
  LODWORD(v8) = v192;
  if (advance_tok(a1, v70, v67, v68))
  {
    goto LABEL_31;
  }

  *(a1 + 4722) = 3;
  if (if_testeq_v_i(a1, (a1 + 4720), 8000, v193, v194, v195, v196, v197))
  {
LABEL_143:
    if (*(a1 + 4050) != 3)
    {
      goto LABEL_164;
    }

    v198 = 3800;
    goto LABEL_145;
  }

  if (*(a1 + 4050) == 3)
  {
    v198 = 3700;
LABEL_145:
    *(a1 + 4594) = v198;
    goto LABEL_164;
  }

LABEL_154:
  if (*(a1 + 4226) == *(a1 + 4218))
  {
    *(a1 + 4602) = 3800;
    *(a1 + 4610) = 4000;
  }

  else
  {
    LODWORD(v9) = v8;
LABEL_162:
    *(a1 + 4602) = 3800;
LABEL_163:
    LODWORD(v8) = v9;
  }

LABEL_164:
  v341 = OUTLINED_FUNCTION_60_3();
  starttest(v341, v342);
  v343 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_r(v343, v344, v345))
  {
    v364 = OUTLINED_FUNCTION_59_3();
    if (!testFldeq(v364, v365, 4, 2))
    {
      v369 = advance_tok(a1, v366, v367, v368);
      LODWORD(v70) = v8;
      if (v369)
      {
        goto LABEL_64;
      }

      v334 = *(a1 + 4050);
      if (v334 == 3)
      {
        *(a1 + 4426) = 50;
      }

      else
      {
LABEL_138:
        if (v334 == 4)
        {
          v335 = 50;
        }

        else
        {
LABEL_140:
          v335 = 55;
        }

        *(a1 + 4430) = v335;
      }

      goto LABEL_186;
    }

LABEL_31:
    LODWORD(v70) = v8;
    goto LABEL_64;
  }

LABEL_165:
  v346 = OUTLINED_FUNCTION_60_3();
  starttest(v346, v347);
  v348 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_r(v348, v349, v350))
  {
    goto LABEL_186;
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_119_0();
  if (testFldeq(v351, v352, v353, v354) || advance_tok(a1, v355, v356, v357))
  {
    goto LABEL_31;
  }

  v337 = *(a1 + 4050);
  v202 = 50;
  v203 = 4542;
  LODWORD(v9) = v8;
  LODWORD(v85) = v8;
  if (v337 != 3)
  {
LABEL_169:
    v202 = 50;
    v203 = 4546;
    LODWORD(v85) = v9;
    v336 = v9;
    if (v337 != 4)
    {
LABEL_170:
      v358 = OUTLINED_FUNCTION_60_3();
      starttest(v358, v359);
      v360 = OUTLINED_FUNCTION_16_20();
      v363 = lpta_loadp_setscan_r(v360, v361, v362);
      v202 = 55;
      v203 = 4546;
      if (v363)
      {
        LODWORD(v85) = v336;
        goto LABEL_178;
      }

      OUTLINED_FUNCTION_60_3();
      bspush_ca_scan_boa();
      LODWORD(v9) = v336;
LABEL_177:
      v370 = OUTLINED_FUNCTION_60_3();
      v332 = test_synch(v370, v371, 1, v372);
LABEL_133:
      if (v332)
      {
        LODWORD(v70) = v9;
      }

      else
      {
        LODWORD(v70) = 1;
      }

      goto LABEL_64;
    }
  }

LABEL_178:
  *(a1 + v203) = v202;
  LODWORD(v8) = v85;
LABEL_179:
  v373 = OUTLINED_FUNCTION_60_3();
  starttest(v373, v374);
  v375 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_r(v375, v376, v377))
  {
    goto LABEL_186;
  }

  v378 = OUTLINED_FUNCTION_20_16();
  if (testFldeq(v378, v379, 2, v380))
  {
    goto LABEL_31;
  }

  v384 = advance_tok(a1, v381, v382, v383);
  LODWORD(v70) = v8;
  if (v384)
  {
    goto LABEL_64;
  }

  v385 = *(a1 + 4542);
  if (v385 >= 1)
  {
    *(a1 + 4542) = v385 + 5;
  }

LABEL_184:
  v386 = *(a1 + 4546);
  if (v386 >= 1)
  {
    *(a1 + 4546) = v386 + 5;
  }

LABEL_186:
  vretproc(a1);
  return 0;
}

uint64_t por_velar_Fv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v415) = 0;
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4, a5, a6, a7, a8, v368);
  OUTLINED_FUNCTION_31_11(v11, v12, v13, v14, v15, v16, v17, v18, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v403, v405, v407, v409, v411, v413, v415, v417, v419, v421);
  v19 = setjmp(v8);
  if (v19 || OUTLINED_FUNCTION_10_24(v19, v20, v21, v22, v23, v24, v25, v26, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v394, v396, v398, v400, v402, v404, v406, v408, v410, v412, v414, v416, SHIDWORD(v416), v418, SWORD2(v418), SHIWORD(v418), v420, SWORD2(v420), SBYTE6(v420), SHIBYTE(v420), v422, v423))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_24(a1);
  OUTLINED_FUNCTION_91_1(1500);
  OUTLINED_FUNCTION_89_2(2300);
  OUTLINED_FUNCTION_97_1(4000);
  v28 = OUTLINED_FUNCTION_22_16();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v30, v31, v32))
  {
    v76 = OUTLINED_FUNCTION_18_18();
    if (testFldeq(v76, v77, v78, 4) || advance_tok(a1, v79, v80, v81))
    {
      LODWORD(v57) = 0;
      goto LABEL_105;
    }

    OUTLINED_FUNCTION_95_1();
    v38 = 0;
    goto LABEL_67;
  }

  v9 = 0;
  while (2)
  {
    v33 = OUTLINED_FUNCTION_37_8();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v35, v36, v37))
    {
      v60 = OUTLINED_FUNCTION_93_1();
      if (testFldeq(v60, v61, 5, 2))
      {
        LODWORD(v57) = v9;
        goto LABEL_105;
      }

LABEL_84:
      bspush_ca_scan_boa();
      v221 = OUTLINED_FUNCTION_13_23();
      if (testFldeq(v221, v222, v223, 18))
      {
        LODWORD(v57) = v9;
      }

      else
      {
        LODWORD(v57) = 1;
      }

      goto LABEL_105;
    }

    v38 = v9;
LABEL_8:
    v39 = OUTLINED_FUNCTION_41_4();
    starttest(v39, v40);
    v41 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v41, v42, v43))
    {
      v62 = OUTLINED_FUNCTION_13_23();
      if (testFldeq(v62, v63, v64, 32) || advance_tok(a1, v65, v66, v67))
      {
        goto LABEL_28;
      }

      *(a1 + 4578) += 100;
      v68 = *(a1 + 4594) - 100;
      goto LABEL_67;
    }

LABEL_9:
    v44 = OUTLINED_FUNCTION_39_6();
    starttest(v44, v45);
    v46 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v46, v47, v48))
    {
      v69 = OUTLINED_FUNCTION_25_15();
      bspush_ca_scan(v69, v70);
      v71 = OUTLINED_FUNCTION_13_23();
      testFldeq(v71, v72, v73, 28);
      OUTLINED_FUNCTION_90_2();
      if (v74)
      {
        goto LABEL_105;
      }

LABEL_20:
      v38 = v58;
LABEL_21:
      if (advance_tok(a1, v57, v58, v59))
      {
        goto LABEL_28;
      }

      v75 = *(a1 + 4586) + 800;
LABEL_66:
      OUTLINED_FUNCTION_79_3(v75);
      v68 = v163 + 200;
      goto LABEL_67;
    }

LABEL_10:
    v49 = OUTLINED_FUNCTION_60_3();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v51, v52, v53))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        v54 = OUTLINED_FUNCTION_13_23();
        if (testFldeq(v54, v55, v56, 35))
        {
          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

LABEL_34:
    v82 = OUTLINED_FUNCTION_34_9();
    starttest(v82, v83);
    v84 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v84, v85, v86))
    {
      v110 = OUTLINED_FUNCTION_3_25();
      if (testFldeq(v110, v111, v112, v113))
      {
        goto LABEL_28;
      }

      v114 = OUTLINED_FUNCTION_18_18();
      if (testFldeq(v114, v115, v116, 6) || advance_tok(a1, v117, v118, v119))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 150);
      v68 = v120 - 200;
      goto LABEL_67;
    }

LABEL_35:
    v87 = OUTLINED_FUNCTION_40_5();
    starttest(v87, v88);
    v89 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v89, v90, v91))
    {
      v121 = OUTLINED_FUNCTION_18_18();
      if (testFldeq(v121, v122, v123, 3) || advance_tok(a1, v124, v125, v126))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 500);
      v68 = v127 + 100;
      goto LABEL_67;
    }

LABEL_36:
    v92 = OUTLINED_FUNCTION_46_4();
    starttest(v92, v93);
    v94 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v94, v95, v96))
    {
LABEL_37:
      v97 = OUTLINED_FUNCTION_60_3();
      starttest(v97, v98);
      v99 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v99, v100, v101))
      {
LABEL_57:
        v139 = OUTLINED_FUNCTION_57_3();
        starttest(v139, v140);
        v141 = OUTLINED_FUNCTION_15_21();
        if (!lpta_loadp_setscan_l(v141, v142, v143))
        {
          v144 = OUTLINED_FUNCTION_13_23();
          if (testFldeq(v144, v145, v146, 34) || advance_tok(a1, v147, v148, v149))
          {
            goto LABEL_28;
          }

          *(a1 + 4586) = 1400;
          v68 = 2100;
          goto LABEL_67;
        }

LABEL_62:
        v150 = OUTLINED_FUNCTION_28_12();
        starttest(v150, v151);
        v152 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_l(v152, v153, v154))
        {
          goto LABEL_68;
        }

        v155 = OUTLINED_FUNCTION_60_3();
        bspush_ca_scan(v155, v156);
        v157 = OUTLINED_FUNCTION_0_28();
        v161 = testFldeq(v157, v158, v159, v160);
        v162 = v38;
        v57 = v38;
        if (v161)
        {
          goto LABEL_105;
        }

LABEL_64:
        v38 = v162;
        if (advance_tok(a1, v57, v58, v59))
        {
          goto LABEL_28;
        }

        *(a1 + 4578) += 50;
        v75 = *(a1 + 4586) - 500;
        goto LABEL_66;
      }

      v102 = OUTLINED_FUNCTION_8_24();
      if (testFldeq(v102, v103, v104, v105) || advance_tok(a1, v106, v107, v108))
      {
        goto LABEL_28;
      }

      *(a1 + 4578) = 500;
      v109 = 1000;
    }

    else
    {
      v128 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v128, v129);
      v130 = OUTLINED_FUNCTION_0_28();
      if (testFldeq(v130, v131, v132, v133))
      {
        goto LABEL_28;
      }

      v134 = OUTLINED_FUNCTION_1_26();
      testFldeq(v134, v135, v136, v137);
      OUTLINED_FUNCTION_94_1();
      if (v138)
      {
        goto LABEL_105;
      }

LABEL_50:
      if (OUTLINED_FUNCTION_112_0(v138, v57, v58, v59))
      {
        goto LABEL_28;
      }

      *(a1 + 4578) = 400;
      v109 = 900;
    }

    *(a1 + 4586) = v109;
    v68 = 2000;
LABEL_67:
    *(a1 + 4594) = v68;
LABEL_68:
    v164 = OUTLINED_FUNCTION_52_3();
    starttest(v164, v165);
    v166 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v166, v167, v168))
    {
      v210 = OUTLINED_FUNCTION_18_18();
      if (testFldeq(v210, v211, v212, 4) || advance_tok(a1, v213, v214, v215))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_99_1();
      goto LABEL_164;
    }

LABEL_69:
    v169 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v169, v170, v171))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 700);
        v216 = v237 - 500;
        goto LABEL_164;
      }
    }

LABEL_71:
    v172 = OUTLINED_FUNCTION_60_3();
    starttest(v172, v173);
    v174 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v174, v175, v176))
    {
      v217 = OUTLINED_FUNCTION_18_18();
      testFldeq(v217, v218, v219, 2);
      OUTLINED_FUNCTION_120_0();
      if (v220)
      {
        goto LABEL_105;
      }

      goto LABEL_84;
    }

LABEL_72:
    v177 = OUTLINED_FUNCTION_60_3();
    starttest(v177, v178);
    v179 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v179, v180, v181))
    {
      v224 = OUTLINED_FUNCTION_13_23();
      if (testFldeq(v224, v225, v226, 32) || advance_tok(a1, v227, v228, v229))
      {
        goto LABEL_28;
      }

      *(a1 + 4582) += 100;
      v216 = *(a1 + 4598) - 150;
      goto LABEL_164;
    }

LABEL_73:
    v182 = OUTLINED_FUNCTION_51_3();
    starttest(v182, v183);
    v184 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v184, v185, v186))
    {
      v230 = OUTLINED_FUNCTION_55_3();
      bspush_ca_scan(v230, v231);
      v232 = OUTLINED_FUNCTION_13_23();
      v235 = testFldeq(v232, v233, v234, 28);
      v57 = v38;
      if (v235)
      {
        goto LABEL_105;
      }

LABEL_91:
      if (advance_tok(a1, v57, v58, v59))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 530);
      v216 = v236 + 400;
      goto LABEL_164;
    }

LABEL_74:
    v187 = OUTLINED_FUNCTION_60_3();
    starttest(v187, v188);
    v189 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v189, v190, v191))
    {
      v238 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v238, v239);
      v240 = OUTLINED_FUNCTION_3_25();
      v244 = testFldeq(v240, v241, v242, v243);
      v57 = v38;
      v245 = v38;
      if (v244)
      {
        goto LABEL_105;
      }

LABEL_95:
      LODWORD(v38) = v245;
      if (advance_tok(a1, v57, v58, v59))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 500);
      v216 = v246 + 300;
      goto LABEL_164;
    }

LABEL_75:
    v192 = OUTLINED_FUNCTION_60_3();
    starttest(v192, v193);
    v194 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v194, v195, v196))
    {
      v247 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v247, v248);
      v249 = OUTLINED_FUNCTION_0_28();
      if (!testFldeq(v249, v250, v251, v252))
      {
        v253 = OUTLINED_FUNCTION_1_26();
        v257 = testFldeq(v253, v254, v255, v256);
        v57 = v38;
        v258 = v38;
        if (v257)
        {
          goto LABEL_105;
        }

LABEL_99:
        LODWORD(v38) = v258;
        if (!advance_tok(a1, v57, v58, v59))
        {
          *(a1 + 4582) = 400;
          v209 = 900;
          goto LABEL_101;
        }
      }

LABEL_28:
      LODWORD(v57) = v38;
      goto LABEL_105;
    }

LABEL_76:
    v197 = OUTLINED_FUNCTION_60_3();
    starttest(v197, v198);
    v199 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v199, v200, v201))
    {
LABEL_150:
      v331 = OUTLINED_FUNCTION_60_3();
      starttest(v331, v332);
      v333 = OUTLINED_FUNCTION_16_20();
      if (!lpta_loadp_setscan_r(v333, v334, v335))
      {
        v336 = OUTLINED_FUNCTION_13_23();
        if (!testFldeq(v336, v337, v338, 34) && !advance_tok(a1, v339, v340, v341))
        {
          *(a1 + 4590) = 1400;
          *(a1 + 4598) = 2100;
          v342 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v342, v343, v344))
          {
            goto LABEL_167;
          }

          OUTLINED_FUNCTION_17_19();
          if (test_string_s())
          {
            goto LABEL_167;
          }

          v262 = 1100;
          goto LABEL_104;
        }

        goto LABEL_28;
      }

LABEL_160:
      v345 = OUTLINED_FUNCTION_56_3();
      starttest(v345, v346);
      v347 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v347, v348, v349))
      {
        goto LABEL_167;
      }

      v350 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v350, v351);
      v352 = OUTLINED_FUNCTION_0_28();
      v356 = testFldeq(v352, v353, v354, v355);
      v57 = v38;
      v267 = v38;
      if (v356)
      {
        goto LABEL_105;
      }

LABEL_162:
      LODWORD(v38) = v267;
      if (advance_tok(a1, v57, v58, v59))
      {
        goto LABEL_28;
      }

      *(a1 + 4582) += 50;
      OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 500);
      v216 = v357 + 200;
LABEL_164:
      *(a1 + 4598) = v216;
      goto LABEL_167;
    }

    v202 = OUTLINED_FUNCTION_8_24();
    if (testFldeq(v202, v203, v204, v205) || advance_tok(a1, v206, v207, v208))
    {
      goto LABEL_28;
    }

    *(a1 + 4582) = 500;
    v209 = 1000;
LABEL_101:
    *(a1 + 4590) = v209;
    *(a1 + 4598) = 2000;
    v259 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v259, v260, v261))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        v262 = 800;
LABEL_104:
        *(a1 + 4586) = v262;
      }
    }

LABEL_167:
    OUTLINED_FUNCTION_106_0();
    if (v358 == v359 && *(a1 + 4590) >= 1 && *(a1 + 3400) < 40.0)
    {
      v360 = OUTLINED_FUNCTION_60_3();
      starttest(v360, v361);
      v362 = OUTLINED_FUNCTION_76_3();
      c_assvar(v362, v363);
      v364 = *(a1 + 4590);
      LODWORD(v57) = v38;
      if ((*(a1 + 4586) - *(a1 + 4590)) >= 501)
      {
        v365 = (*(a1 + 4586) + (*(a1 + 4586) - v364) * -0.5);
        *(a1 + 4586) = v365;
        v367 = (v365 - v364) / 5.0 + v364;
LABEL_172:
        *(a1 + 4590) = v367;
        break;
      }

LABEL_105:
      LODWORD(v9) = 29;
LABEL_106:
      v263 = *(a1 + 104);
      if (v263)
      {
        v264 = OUTLINED_FUNCTION_74_3(v263);
        v265 = v57;
      }

      else
      {
        v264 = vback(a1, v57);
        v265 = 0;
      }

      v266 = v264 - 1;
      v138 = 29;
      v58 = v265;
      v59 = v265;
      v162 = v265;
      v38 = v265;
      v245 = v265;
      v258 = v265;
      v267 = v265;
      switch(v266)
      {
        case 0:
          v9 = v265;
          continue;
        case 1:
          v38 = v265;
          goto LABEL_68;
        case 2:
          v38 = v265;
          goto LABEL_8;
        case 3:
        case 27:
          bspop_boa(a1);
          OUTLINED_FUNCTION_65_3();
          bspush_ca_scan_boa();
          v268 = OUTLINED_FUNCTION_13_23();
          if (testFldeq(v268, v269, v270, 20))
          {
            LODWORD(v57) = v265;
          }

          else
          {
            LODWORD(v57) = 1;
          }

          goto LABEL_106;
        case 4:
          bspop_boa(a1);
          v314 = advance_tok(a1, v311, v312, v313);
          LODWORD(v57) = v265;
          if (v314)
          {
            goto LABEL_106;
          }

          v68 = *(a1 + 4594) - 100;
          v38 = v265;
          goto LABEL_67;
        case 5:
          v38 = v265;
          goto LABEL_9;
        case 6:
          v38 = v265;
          goto LABEL_10;
        case 7:
          v291 = OUTLINED_FUNCTION_43_4();
          bspush_ca_scan(v291, v292);
          v293 = OUTLINED_FUNCTION_7_24();
          goto LABEL_134;
        case 8:
          goto LABEL_20;
        case 9:
          v305 = OUTLINED_FUNCTION_42_4();
          bspush_ca_scan(v305, v306);
          v293 = OUTLINED_FUNCTION_12_23();
          goto LABEL_134;
        case 10:
          v309 = OUTLINED_FUNCTION_58_3();
          bspush_ca_scan(v309, v310);
          v293 = OUTLINED_FUNCTION_11_23();
          goto LABEL_134;
        case 11:
          v293 = OUTLINED_FUNCTION_13_23();
          v296 = 24;
LABEL_134:
          v315 = testFldeq(v293, v294, v295, v296);
          v58 = v265;
          v57 = v265;
          if (!v315)
          {
            goto LABEL_20;
          }

          goto LABEL_106;
        case 12:
          v38 = v265;
          goto LABEL_34;
        case 13:
          v38 = v265;
          goto LABEL_35;
        case 14:
          v38 = v265;
          goto LABEL_36;
        case 15:
          v38 = v265;
          goto LABEL_37;
        case 16:
          v299 = OUTLINED_FUNCTION_53_3();
          bspush_ca_scan(v299, v300);
          v301 = OUTLINED_FUNCTION_2_26();
          goto LABEL_131;
        case 17:
          goto LABEL_50;
        case 18:
          v301 = OUTLINED_FUNCTION_6_24();
LABEL_131:
          v138 = testFldeq(v301, v302, v303, v304);
          v59 = v265;
          v57 = v265;
          if (!v138)
          {
            goto LABEL_50;
          }

          goto LABEL_106;
        case 19:
          v38 = v265;
          goto LABEL_57;
        case 20:
          v38 = v265;
          goto LABEL_62;
        case 21:
          v275 = OUTLINED_FUNCTION_14_21();
          v279 = testFldeq(v275, v276, v277, v278);
          v162 = v265;
          v57 = v265;
          if (!v279)
          {
            goto LABEL_64;
          }

          goto LABEL_106;
        case 22:
          goto LABEL_64;
        case 23:
          v38 = v265;
          goto LABEL_69;
        case 24:
        case 43:
        case 45:
        case 47:
          goto LABEL_166;
        case 25:
          v38 = v265;
          goto LABEL_71;
        case 26:
          v38 = v265;
          goto LABEL_72;
        case 28:
          bspop_boa(a1);
          v290 = advance_tok(a1, v287, v288, v289);
          LODWORD(v57) = v265;
          if (v290)
          {
            goto LABEL_106;
          }

          *(a1 + 4598) -= 150;
LABEL_166:
          LODWORD(v38) = v265;
          goto LABEL_167;
        case 29:
          v38 = v265;
          goto LABEL_73;
        case 30:
          v38 = v265;
          goto LABEL_74;
        case 31:
          v307 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v307, v308);
          v280 = OUTLINED_FUNCTION_7_24();
          goto LABEL_139;
        case 32:
          goto LABEL_91;
        case 33:
          bspush_ca_scan(a1, 35);
          v280 = OUTLINED_FUNCTION_13_23();
          v283 = 35;
          goto LABEL_139;
        case 34:
          v297 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v297, v298);
          v280 = OUTLINED_FUNCTION_12_23();
          goto LABEL_139;
        case 35:
          v280 = OUTLINED_FUNCTION_11_23();
LABEL_139:
          v321 = testFldeq(v280, v281, v282, v283);
          LODWORD(v38) = v265;
          v57 = v265;
          if (!v321)
          {
            goto LABEL_91;
          }

          goto LABEL_106;
        case 36:
          v38 = v265;
          goto LABEL_75;
        case 37:
          v322 = OUTLINED_FUNCTION_18_18();
          v325 = testFldeq(v322, v323, v324, 3);
          v245 = v265;
          v57 = v265;
          if (!v325)
          {
            goto LABEL_95;
          }

          goto LABEL_106;
        case 38:
          goto LABEL_95;
        case 39:
          v38 = v265;
          goto LABEL_76;
        case 40:
          v284 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v284, v285);
          v271 = OUTLINED_FUNCTION_2_26();
          goto LABEL_118;
        case 41:
          goto LABEL_99;
        case 42:
          v271 = OUTLINED_FUNCTION_6_24();
LABEL_118:
          v286 = testFldeq(v271, v272, v273, v274);
          v258 = v265;
          v57 = v265;
          if (!v286)
          {
            goto LABEL_99;
          }

          goto LABEL_106;
        case 44:
          v38 = v265;
          goto LABEL_150;
        case 46:
          v38 = v265;
          goto LABEL_160;
        case 48:
          v326 = OUTLINED_FUNCTION_14_21();
          v330 = testFldeq(v326, v327, v328, v329);
          v267 = v265;
          v57 = v265;
          if (!v330)
          {
            goto LABEL_162;
          }

          goto LABEL_106;
        case 49:
          goto LABEL_162;
        case 50:
          goto LABEL_173;
        case 51:
          v316 = OUTLINED_FUNCTION_60_3();
          starttest(v316, v317);
          v318 = OUTLINED_FUNCTION_76_3();
          c_assvar(v318, v319);
          v320 = *(a1 + 4590);
          LODWORD(v57) = v265;
          if ((*(a1 + 4590) - *(a1 + 4586)) < 501)
          {
            goto LABEL_106;
          }

          v366 = (vcvtd_n_f64_s32(v320 - *(a1 + 4586), 1uLL) + *(a1 + 4586));
          *(a1 + 4586) = v366;
          v367 = v320 + (v320 - v366) / -5.0;
          goto LABEL_172;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_173:
  vretproc(a1);
  return 0;
}

uint64_t add_TL_to_trill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v84) = 0;
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4, a5, a6, a7, a8, v37);
  OUTLINED_FUNCTION_31_11(v10, v11, v12, v13, v14, v15, v16, v17, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_10_24(v18, v19, v20, v21, v22, v23, v24, v25, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, SHIDWORD(v85), v87, SWORD2(v87), SHIWORD(v87), v89, SWORD2(v89), SBYTE6(v89), SHIBYTE(v89), v91, v92))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_24(a1);
    v27 = OUTLINED_FUNCTION_22_16();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_28_12();
    bspush_ca(v29);
    if (*(a1 + 4602) > 3400)
    {
LABEL_11:
      v36 = *(a1 + 4562) + 20;
    }

    else
    {
      while (2)
      {
        v30 = *(a1 + 104);
        if (v30)
        {
          v31 = OUTLINED_FUNCTION_74_3(v30);
        }

        else
        {
          v32 = OUTLINED_FUNCTION_84_2();
          v31 = vback(v32, v33);
        }

        switch(v31)
        {
          case 1:
            if (*(a1 + 4602) < 3001)
            {
              goto LABEL_16;
            }

            v36 = *(a1 + 4562) + 10;
            break;
          case 2:
            v34 = OUTLINED_FUNCTION_65_3();
            c_assvar(v34, v35);
            if (*(a1 + 4602) == -1)
            {
              goto LABEL_11;
            }

            continue;
          case 3:
            goto LABEL_11;
          case 4:
            goto LABEL_13;
          case 5:
LABEL_16:
            v36 = *(a1 + 4562);
            break;
          case 6:
            goto LABEL_14;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    *(a1 + 4406) = v36;
LABEL_13:
    addStreamArraySsVal(a1, a1 + 1988, (a1 + 4404), a1 + 2128, (a1 + 2144));
LABEL_14:
    *(a1 + 4530) = 1;
    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_ng(uint64_t a1)
{
  v143 = *MEMORY[0x277D85DE8];
  v138[0] = 0;
  v138[1] = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(v137, v2);
  OUTLINED_FUNCTION_69_3();
  bzero(v142, v3);
  if (setjmp(v142) || ventproc(a1, v137, v141, v140, v139, v142))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v5 = OUTLINED_FUNCTION_65_3();
  push_ptr_init(v5, v6);
  OUTLINED_FUNCTION_24_16();
  por_velar_Fv(a1, v7, v8, v9, v10, v11, v12, v13);
  v14 = 0;
LABEL_5:
  *(a1 + 4610) = 4400;
  v15 = *(a1 + 4598);
  if (v15 >= *(a1 + 4594))
  {
    *(a1 + 4594) = v15;
    v17 = v14;
  }

  else
  {
    v16 = *(a1 + 4594);
LABEL_8:
    v17 = v14;
    if (v15 <= v16)
    {
      *(a1 + 4598) = v16;
    }
  }

LABEL_10:
  v18 = OUTLINED_FUNCTION_64_3();
  if (!lpta_loadp_setscan_r(v18, v19, 4))
  {
    OUTLINED_FUNCTION_82_3();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_106_0();
      if (v70 == v71 && *(a1 + 4590) >= 1)
      {
        OUTLINED_FUNCTION_38_7(v132);
        OUTLINED_FUNCTION_102_0(v133);
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_101_0(9 * *(a1 + 4282));
  *(a1 + 4374) = v20;
  v21 = *(a1 + 4286);
  *(a1 + 4378) = 4 * v21;
  OUTLINED_FUNCTION_101_0(12 * v21);
  *(a1 + 4382) = v22;
  *(a1 + 4414) = *(a1 + 4410) + 200;
  starttest(a1, 5);
  v23 = OUTLINED_FUNCTION_64_3();
  LODWORD(v25) = v17;
  if (lpta_loadp_setscan_l(v23, v24, 4))
  {
LABEL_13:
    starttest(a1, 10);
    v26 = OUTLINED_FUNCTION_63_3();
    LODWORD(v25) = v17;
    if (!lpta_loadp_setscan_l(v26, v27, 4))
    {
LABEL_14:
      savescptr(a1, 11, v138);
      v28 = OUTLINED_FUNCTION_68_3();
      if (testFldeq(v28, 4u, 3, v29))
      {
        goto LABEL_49;
      }

      if (advance_tok(a1, v30, v31, v32))
      {
        goto LABEL_49;
      }

      v33 = OUTLINED_FUNCTION_65_3();
      if (lpta_loadp_setscan_r(v33, v34, 4) || advance_tok(a1, v35, v36, v37))
      {
        goto LABEL_49;
      }

      bspush_ca_scan(a1, 12);
      v38 = 2;
      goto LABEL_81;
    }

LABEL_70:
    starttest(a1, 16);
    v114 = OUTLINED_FUNCTION_64_3();
    if (lpta_loadp_setscan_r(v114, v115, 4))
    {
      LODWORD(v25) = v17;
LABEL_72:
      starttest(a1, 18);
      v116 = OUTLINED_FUNCTION_64_3();
      if (!lpta_loadp_setscan_r(v116, v117, 4))
      {
        v125 = OUTLINED_FUNCTION_82_3();
        if (testFldeq(v125, v126, v127, 1))
        {
          goto LABEL_49;
        }

        v38 = 3;
LABEL_81:
        v128 = v25;
        v129 = v38;
        bspush_ca_scan_boa();
        v130 = OUTLINED_FUNCTION_68_3();
        if (testFldeq(v130, 4u, v129, v131))
        {
          LODWORD(v25) = v128;
        }

        else
        {
          LODWORD(v25) = 1;
        }

        goto LABEL_49;
      }

LABEL_73:
      v17 = v25;
      v118 = 49;
    }

    else
    {
      bspush_ca_scan(a1, 17);
      v119 = OUTLINED_FUNCTION_82_3();
      if (testFldeq(v119, v120, v121, 1))
      {
        goto LABEL_78;
      }

      LODWORD(v25) = v17;
      if (advance_tok(a1, v122, v123, v124))
      {
        goto LABEL_49;
      }

LABEL_77:
      OUTLINED_FUNCTION_82_3();
      if (test_string_s())
      {
LABEL_78:
        LODWORD(v25) = v17;
        goto LABEL_49;
      }

      v118 = 43;
    }

    *(a1 + 4394) = v118;
    goto LABEL_28;
  }

LABEL_19:
  savescptr(a1, 6, v138);
  if (!advance_tok(a1, v39, v40, v41))
  {
    v42 = OUTLINED_FUNCTION_83_2();
    if (!testFldeq(v42, v43, 3, 0) && !advance_tok(a1, v44, v45, v46))
    {
      v47 = OUTLINED_FUNCTION_65_3();
      if (!lpta_loadp_setscan_r(v47, v48, 4))
      {
        bspush_ca_scan(a1, 7);
        LODWORD(v49) = v25;
LABEL_24:
        LODWORD(v25) = v49;
        v50 = OUTLINED_FUNCTION_83_2();
        if (!testFldeq(v50, v51, 3, 0) && !advance_tok(a1, v52, v53, v54))
        {
          *(a1 + 4514) = 1;
          goto LABEL_27;
        }
      }
    }
  }

  while (1)
  {
    while (1)
    {
LABEL_49:
      LODWORD(v91) = v25;
      while (2)
      {
        v92 = *(a1 + 104);
        if (v92)
        {
          v93 = OUTLINED_FUNCTION_74_3(v92);
          v25 = v91;
        }

        else
        {
          v93 = vback(a1, v91);
          v25 = 0;
        }

        v49 = v25;
        switch(v93)
        {
          case 1:
            v14 = v25;
            goto LABEL_5;
          case 2:
            LOWORD(v15) = *(a1 + 4598);
            v16 = *(a1 + 4594);
            v14 = v25;
            goto LABEL_8;
          case 3:
            v17 = v25;
            goto LABEL_10;
          case 4:
            v17 = v25;
            goto LABEL_12;
          case 5:
            v17 = v25;
            goto LABEL_13;
          case 6:
            goto LABEL_19;
          case 7:
            v94 = OUTLINED_FUNCTION_13_23();
            v97 = testFldeq(v94, v95, v96, 6);
            LODWORD(v91) = v25;
            if (!v97)
            {
              v100 = advance_tok(a1, v25, v98, v99);
              LODWORD(v49) = v25;
              LODWORD(v91) = v25;
              if (!v100)
              {
                goto LABEL_24;
              }
            }

            continue;
          case 8:
            goto LABEL_24;
          case 9:
            goto LABEL_27;
          case 10:
            v17 = v25;
            goto LABEL_70;
          case 11:
            goto LABEL_14;
          case 12:
            v105 = OUTLINED_FUNCTION_40_5();
            bspush_ca_scan(v105, v106);
            OUTLINED_FUNCTION_59_3();
            OUTLINED_FUNCTION_119_0();
            goto LABEL_60;
          case 13:
            bspop_boa(a1);
            goto LABEL_61;
          case 14:
            goto LABEL_61;
          case 15:
            v101 = OUTLINED_FUNCTION_13_23();
            v104 = 40;
LABEL_60:
            v107 = testFldeq(v101, v102, v103, v104);
            v91 = v25;
            if (v107)
            {
              continue;
            }

LABEL_61:
            v108 = advance_tok(a1, v91, v49, v55);
            LODWORD(v91) = v25;
            if (v108)
            {
              continue;
            }

            v113 = 42;
LABEL_65:
            *(a1 + 4394) = v113;
            break;
          case 16:
            goto LABEL_72;
          case 17:
            v17 = v25;
            goto LABEL_77;
          case 18:
            goto LABEL_73;
          case 19:
            bspop_boa(a1);
            v112 = advance_tok(a1, v109, v110, v111);
            LODWORD(v91) = v25;
            if (v112)
            {
              continue;
            }

            v113 = 45;
            goto LABEL_65;
          case 20:
            v65 = v25;
            goto LABEL_38;
          case 21:
            goto LABEL_32;
          case 22:
            goto LABEL_36;
          case 23:
            goto LABEL_92;
          case 24:
            goto LABEL_39;
          case 25:
            goto LABEL_95;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_27:
      v17 = v25;
LABEL_28:
      *(a1 + 4722) = 4;
      if (if_testeq_v_i(a1, (a1 + 4720), 1, v55, v56, v57, v58, v59))
      {
        v65 = v17;
        goto LABEL_38;
      }

      *(a1 + 4722) = 5;
      if (!if_testgt_v_i(a1, (a1 + 4720), 30, v60, v61, v62, v63, v64))
      {
        break;
      }

      LODWORD(v25) = v17;
LABEL_32:
      starttest(a1, 22);
      v66 = OUTLINED_FUNCTION_63_3();
      if (lpta_loadp_setscan_l(v66, v67, 4))
      {
        goto LABEL_36;
      }

      v84 = OUTLINED_FUNCTION_83_2();
      if (!testFldeq(v84, v85, 6, 1))
      {
        v86 = OUTLINED_FUNCTION_83_2();
        if (!testFldeq(v86, v87, 5, 5) && !advance_tok(a1, v88, v89, v90))
        {
          OUTLINED_FUNCTION_115_0();
          goto LABEL_35;
        }
      }
    }

    v68 = *(a1 + 4410);
LABEL_35:
    *(a1 + 4414) = v68;
LABEL_36:
    OUTLINED_FUNCTION_118_0();
    if (v70 == v71)
    {
      *(a1 + 4406) = v69;
    }

LABEL_38:
    LODWORD(v25) = v65;
    starttest(a1, 23);
    v72 = OUTLINED_FUNCTION_63_3();
    if (lpta_loadp_setscan_l(v72, v73, 4))
    {
      goto LABEL_92;
    }

LABEL_39:
    savescptr(a1, 24, v138);
    v74 = OUTLINED_FUNCTION_83_2();
    if (!testFldeq(v74, v75, 3, 0) && !advance_tok(a1, v76, v77, v78))
    {
      v79 = OUTLINED_FUNCTION_65_3();
      if (!lpta_loadp_setscan_r(v79, v80, 4) && !advance_tok(a1, v81, v82, v83))
      {
        OUTLINED_FUNCTION_82_3();
        if (!test_string_s())
        {
          break;
        }
      }
    }
  }

  modulate_nas_AV(a1);
LABEL_92:
  v134 = OUTLINED_FUNCTION_61_3();
  if (!lpta_loadp_setscan_r(v134, v135, v136))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      *(a1 + 4466) = *(a1 + 4394) - 4;
    }
  }

LABEL_95:
  vretproc(a1);
  return 0;
}

uint64_t do_por_voice_bar(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_24(a1);
    v19 = 0;
    *(a1 + 4394) = 45;
    *(a1 + 4406) = 35;
  }

  vretproc(a1);
  return v19;
}

uint64_t OUTLINED_FUNCTION_10_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

double OUTLINED_FUNCTION_21_16@<D0>(int a1@<W8>)
{
  result = vcvtd_n_f64_u32(v1 + a1, 1uLL);
  *(v2 + 4594) = result;
  *(v2 + 4598) = -1;
  return result;
}

void *OUTLINED_FUNCTION_24_16()
{
  result = fence_24(v0);
  *(v0 + 4578) = 300;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_31_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_36_8(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = 1;
  *(v3 + 112) = *(v3 + 1600);
  *(v3 + 128) = 0;

  return test_ptr(v3, a2, a3);
}

void OUTLINED_FUNCTION_47_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v34 - 40) = v33;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_48_4(double a1, double a2)
{
  result = a1 / a2;
  *(v2 + 4378) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_3()
{
  v0[279] = v0[267] + v0[425] * 5.0 / 10.0;

  return lpta_loadp_setscan_r(v0, (v0 + 203), 4);
}

void OUTLINED_FUNCTION_67_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_72_3(double a1)
{
  result = a1 / 100.0;
  *(v1 + 4374) = result;
  return result;
}

double OUTLINED_FUNCTION_85_2@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  *&result = savescptr(v24, a1, va).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_86_2@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  *&result = savescptr(v26, a1, va).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_103_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 4722) = 6;

  return if_testeq_v_i(v11, (v11 + a11), 100, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_104_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a10, &a44, &a40, &a37, &a46);
}

BOOL OUTLINED_FUNCTION_108_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return advance_tok(v4, a2, a3, a4);
}

double OUTLINED_FUNCTION_109_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);

  *&result = savescptr(v31, v32, va).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_110_0(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  bzero(va, a2);
}

double OUTLINED_FUNCTION_111_0@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);

  *&result = savescptr(v36, a1, va).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_112_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return advance_tok(v4, a2, a3, a4);
}

void *fence_25(uint64_t a1, int a2, uint64_t a3)
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

void por_phr_initial_F0(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  v2 = v1;
  v142 = *MEMORY[0x277D85DE8];
  v137 = 0;
  v136 = 0;
  v134 = 0;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  v131 = 0;
  OUTLINED_FUNCTION_21_17();
  bzero(v130, v3);
  OUTLINED_FUNCTION_20_17();
  bzero(v141, v4);
  if (setjmp(v141) || ventproc(v2, v130, v140, v139, v138, v141))
  {
    goto LABEL_3;
  }

  LOWORD(v137) = -4;
  LOWORD(v136) = -4;
  push_ptr_init(v2, &v134);
  v5 = push_ptr_init(v2, &v132);
  v131 = 65532;
  OUTLINED_FUNCTION_39_7(v5, v6, &_MergedGlobals_1_2);
  v133 = *(v2 + 3352);
  HIWORD(v136) = 0;
  v135 = *(v2 + 776);
  HIWORD(v137) = 70;
  OUTLINED_FUNCTION_47_5();
  if (!v13)
  {
    LODWORD(v15) = 0;
    v16 = 4;
    v17 = 21;
    v18 = 8;
    v19 = 10;
    while (2)
    {
      if (*(v2 + 746) > 0)
      {
LABEL_11:
        OUTLINED_FUNCTION_43_5();
        v129 = v20;
        starttest(v2, v20);
        v21 = OUTLINED_FUNCTION_1_27();
        if (lpta_loadp_setscan_r(v21, v22, v23))
        {
          goto LABEL_3;
        }

        bspush_ca_scan_boa();
        v24 = OUTLINED_FUNCTION_9_25();
        if (!npush_fld(v24, v25, 0))
        {
          v26 = OUTLINED_FUNCTION_11_24();
          npush_i(v26);
          v34 = if_testeq(v2, v27, v28, v29, v30, v31, v32, v33);
          goto LABEL_20;
        }

LABEL_22:
        v43 = v15;
LABEL_23:
        v44 = *(v2 + 104);
        if (v44)
        {
          v45 = OUTLINED_FUNCTION_25_16(v44);
          v15 = v46;
        }

        else
        {
          v45 = vback(v2, v43);
          v15 = 0;
        }

        switch(v45)
        {
          case 1:
            v16 = v129;
            v17 = v127;
            v18 = v126;
            v19 = v125;
            continue;
          case 2:
            goto LABEL_7;
          case 5:
            v17 = v127;
            v18 = v126;
            v19 = v125;
            goto LABEL_11;
          case 6:
            v17 = v127;
            v18 = v126;
            v19 = v125;
            goto LABEL_15;
          case 7:
            goto LABEL_56;
          case 8:
            v42 = v15;
            goto LABEL_55;
          case 9:
            goto LABEL_58;
          case 10:
            bspop_boa(v2);
            v50 = advance_tok(v2, v47, v48, v49);
            v43 = v15;
            if (v50)
            {
              goto LABEL_23;
            }

            HIWORD(v137) += 20;
            goto LABEL_58;
          case 12:
            bspop_boa(v2);
            lpta_loadpn(v2, &v134);
            rpta_loadpn(v2, &v132);
            v73 = compare_ptas(v2);
            v43 = v15;
            if (v73)
            {
              goto LABEL_23;
            }

            v74 = testneq(v2);
            v43 = v15;
            if (v74)
            {
              goto LABEL_23;
            }

            v14 = &v132;
            goto LABEL_8;
          case 13:
            bspop_boa(v2);
            v78 = advance_tok(v2, v75, v76, v77);
            v43 = v15;
            if (v78)
            {
              goto LABEL_23;
            }

            goto LABEL_41;
          case 14:
            bspop_boa(v2);
            v72 = advance_tok(v2, v69, v70, v71);
            v43 = v15;
            if (v72)
            {
              goto LABEL_23;
            }

            bspush_ca_scan(v2, 15);
            goto LABEL_41;
          case 15:
            OUTLINED_FUNCTION_35_9();
            v51 = OUTLINED_FUNCTION_3_26();
            v54 = test_ptr(v51, v52, v53);
            v43 = v15;
            if (v54)
            {
              goto LABEL_23;
            }

            starttest(v2, 17);
            v55 = OUTLINED_FUNCTION_2_27();
            if (lpta_loadp_setscan_r(v55, v56, v57))
            {
              goto LABEL_31;
            }

            v96 = OUTLINED_FUNCTION_14_22();
            v98 = testFldeq(v96, v97, 6, 1);
            v43 = v15;
            if (v98)
            {
              goto LABEL_23;
            }

            v101 = advance_tok(v2, v15, v99, v100);
            v43 = v15;
            if (v101)
            {
              goto LABEL_23;
            }

            starttest_e(v2, v128);
            v63 = OUTLINED_FUNCTION_57_4();
            v65 = 80;
            goto LABEL_33;
          case 16:
LABEL_41:
            bspush_ca_scan_boa();
            v79 = OUTLINED_FUNCTION_9_25();
            v81 = npush_fld(v79, v80, 0);
            v43 = v15;
            if (!v81)
            {
              v82 = OUTLINED_FUNCTION_11_24();
              npush_i(v82);
              if (if_testeq(v2, v83, v84, v85, v86, v87, v88, v89))
              {
                v43 = v15;
              }

              else
              {
                v43 = 1;
              }
            }

            goto LABEL_23;
          case 17:
LABEL_31:
            starttest(v2, 20);
            v58 = OUTLINED_FUNCTION_2_27();
            if (lpta_loadp_setscan_r(v58, v59, v60))
            {
              goto LABEL_32;
            }

            v90 = OUTLINED_FUNCTION_14_22();
            v92 = testFldeq(v90, v91, 6, 2);
            v43 = v15;
            if (v92)
            {
              goto LABEL_23;
            }

            v95 = advance_tok(v2, v15, v93, v94);
            v43 = v15;
            if (v95)
            {
              goto LABEL_23;
            }

            starttest_e(v2, v127);
            v63 = OUTLINED_FUNCTION_57_4();
            v65 = 100;
LABEL_33:
            move_i(v63, v64, v65);
            v66 = OUTLINED_FUNCTION_22_17();
            inserted = insert_f0(v66, v67, v17);
            v43 = v15;
            if (!inserted)
            {
              goto LABEL_3;
            }

            goto LABEL_23;
          case 20:
LABEL_32:
            v61 = OUTLINED_FUNCTION_53_4();
            starttest(v61, v62);
            v63 = OUTLINED_FUNCTION_57_4();
            v65 = v18;
            goto LABEL_33;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    v129 = v16;
    HIWORD(v137) = 130;
    HIWORD(v136) = 0;
    insert_f0(v2, &v134, &v136);
LABEL_15:
    OUTLINED_FUNCTION_43_5();
    v133 = *(v2 + 792);
    lpta_loadpn(v2, &v132);
    rpta_loadpn(v2, v2 + 656);
    if (!compare_ptas(v2) && !testeq(v2))
    {
      v35 = OUTLINED_FUNCTION_49_4();
      if (!lpta_loadp_setscan_l(v35, v36, v37))
      {
        v41 = advance_tok(v2, v38, v39, v40);
        v42 = v15;
        if (!v41)
        {
LABEL_55:
          LODWORD(v15) = v42;
          savescptr(v2, v126, &v132);
        }
      }
    }

LABEL_56:
    HIWORD(v137) = 80;
    HIWORD(v136) = 97;
    starttest(v2, 9);
    v102 = OUTLINED_FUNCTION_49_4();
    if (lpta_loadp_setscan_r(v102, v103, v104) || advance_tok(v2, v105, v106, v107))
    {
LABEL_58:
      starttest(v2, 11);
      v108 = OUTLINED_FUNCTION_49_4();
      if (lpta_loadp_setscan_r(v108, v109, v110) || advance_tok(v2, v111, v112, v113))
      {
        goto LABEL_3;
      }

      bspush_ca_scan_boa();
      if (testFldeq(v2, 4u, 3, 0))
      {
        v19 = 4;
        goto LABEL_22;
      }

      v19 = 4;
      if (npush_fld(v2, 4u, 8u))
      {
        goto LABEL_22;
      }

      v114 = OUTLINED_FUNCTION_11_24();
      npush_i(v114);
      if (if_testeq(v2, v115, v116, v117, v118, v119, v120, v121))
      {
        goto LABEL_22;
      }

      v34 = advance_tok(v2, v122, v123, v124);
    }

    else
    {
      bspush_ca_scan_boa();
      v34 = testFldeq(v2, v19, 2, 0);
    }

LABEL_20:
    if (!v34)
    {
      LODWORD(v15) = 1;
    }

    goto LABEL_22;
  }

  set_first_postnuc_value(v2, (v2 + 4912), v7, v8, v9, v10, v11, v12);
LABEL_7:
  HIWORD(v137) = ((*(v2 + 4918) * SHIWORD(v137)) / 100.0 + *(v2 + 4914));
  v14 = &v134;
LABEL_8:
  insert_f0(v2, v14, &v136);
LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_60_4();
}

uint64_t set_first_postnuc_value(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v69);
  OUTLINED_FUNCTION_20_17();
  bzero(v98, v10);
  v11 = setjmp(v98);
  if (v11 || OUTLINED_FUNCTION_4_25(v11, v12, v13, v14, v15, v16, v17, v18, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, 0, v94, v95, SWORD2(v95), SHIWORD(v95), v96, SWORD2(v96), SBYTE6(v96), SHIBYTE(v96), v97, v98[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v20 = OUTLINED_FUNCTION_27_14();
  get_parm(v20, v21, a2, -4);
  fence_25(a1, 0, &_MergedGlobals_1_2);
  OUTLINED_FUNCTION_50_4();
  if (v22)
  {
    v23 = *(a1 + 3274);
    if (*(a1 + 2542) != v23 || (v23 = *(a1 + 2542), *(a1 + 2574) != *(a1 + 3270)))
    {
LABEL_38:
      if (*(a1 + 3322) != v23)
      {
LABEL_40:
        OUTLINED_FUNCTION_48_5();
        if (v22)
        {
          v68 = 85;
        }

        else
        {
LABEL_43:
          if (*(a1 + 3210) == v67)
          {
            v68 = 30;
          }

          else
          {
LABEL_45:
            v68 = 70;
          }
        }

        goto LABEL_48;
      }
    }

    v68 = 20;
  }

  else
  {
    while (2)
    {
      if (*(a1 + 3286) > 2)
      {
        v68 = -25;
      }

      else
      {
LABEL_10:
        v24 = OUTLINED_FUNCTION_26_16();
        starttest(v24, v25);
        OUTLINED_FUNCTION_30_12();
        if (v22)
        {
          v26 = OUTLINED_FUNCTION_15_22();
          if (!lpta_loadp_setscan_r(v26, v27, v28) && !advance_tok(a1, v29, v30, v31))
          {
LABEL_16:
            while (!advance_tok(a1, v32, v33, v34))
            {
              v35 = OUTLINED_FUNCTION_33_11();
              bspush_ca_scan(v35, v36);
            }

            goto LABEL_21;
          }
        }

LABEL_25:
        if (*(a1 + 3286) == 2)
        {
          v47 = OUTLINED_FUNCTION_53_4();
          starttest(v47, v48);
          v49 = OUTLINED_FUNCTION_15_22();
          if (!lpta_loadp_setscan_r(v49, v50, v51) && !advance_tok(a1, v52, v53, v54) && !advance_tok(a1, v55, v56, v57) && !advance_tok(a1, v58, v59, v60) && !advance_tok(a1, v61, v62, v63))
          {
            do
            {
LABEL_31:
              bspush_ca_scan(a1, 14);
            }

            while (!advance_tok(a1, v64, v65, v66));
LABEL_21:
            v43 = *(a1 + 104);
            if (v43)
            {
              v44 = OUTLINED_FUNCTION_25_16(v43);
            }

            else
            {
              v45 = OUTLINED_FUNCTION_12_24();
              v44 = vback(v45, v46);
            }

            switch(v44)
            {
              case 1:
                continue;
              case 2:
                v23 = *(a1 + 3274);
                goto LABEL_38;
              case 3:
              case 7:
              case 16:
                v68 = v93;
                goto LABEL_48;
              case 4:
                goto LABEL_40;
              case 5:
                v67 = *(a1 + 3270);
                goto LABEL_43;
              case 6:
                goto LABEL_45;
              case 8:
                goto LABEL_10;
              case 9:
                goto LABEL_25;
              case 10:
                *(a1 + 136) = 1;
                v37 = OUTLINED_FUNCTION_3_26();
                if (test_ptr(v37, v38, v39))
                {
                  goto LABEL_21;
                }

                v68 = 45;
                break;
              case 11:
                goto LABEL_16;
              case 12:
                goto LABEL_35;
              case 13:
                goto LABEL_33;
              case 14:
                *(a1 + 136) = 1;
                v40 = OUTLINED_FUNCTION_3_26();
                if (test_ptr(v40, v41, v42))
                {
                  goto LABEL_21;
                }

                v68 = 15;
                break;
              case 15:
                goto LABEL_31;
              default:
                goto LABEL_3;
            }

            break;
          }

LABEL_33:
          v68 = 5;
        }

        else
        {
LABEL_35:
          v68 = 25;
        }
      }

      break;
    }
  }

LABEL_48:
  a2[1] = v68;
  vretproc(a1);
  return 0;
}

uint64_t por_prenucl_f0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v27);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, SHIDWORD(v75), v77, SWORD2(v77), SHIWORD(v77), v79, SWORD2(v79), SBYTE6(v79), SHIBYTE(v79), v81, v82))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    if (*(a1 + 746) >= 1)
    {
      por_add_target(a1);
      por_position_t_ptrs(a1);
      realize_prenucl_tone(a1);
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t por_add_target(void *a1)
{
  v387 = *MEMORY[0x277D85DE8];
  v382[0] = 0;
  v382[1] = 0;
  v381[0] = 0;
  v381[1] = 0;
  v380[0] = 0;
  v380[1] = 0;
  v378 = 0;
  v379 = 0;
  v377 = 0;
  OUTLINED_FUNCTION_21_17();
  bzero(&v354, v2);
  OUTLINED_FUNCTION_20_17();
  bzero(v386, v3);
  if (setjmp(v386) || ventproc(a1, &v354, v385, v384, v383, v386))
  {
LABEL_3:
    v4 = 94;
    goto LABEL_4;
  }

  push_ptr_init(a1, v382);
  push_ptr_init(a1, v381);
  push_ptr_init(a1, v380);
  v379 = 0xFFFC0000FFFCLL;
  v6 = push_ptr_init(a1, &v377);
  v7 = 0;
  OUTLINED_FUNCTION_39_7(v6, v8, &_MergedGlobals_1_2);
  v9 = OUTLINED_FUNCTION_7_25();
  starttest(v9, v10);
  v11 = OUTLINED_FUNCTION_13_24();
  LODWORD(v14) = 0;
  if (!lpta_loadp_setscan_l(v11, v12, v13))
  {
LABEL_22:
    OUTLINED_FUNCTION_42_5(2, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380[0]);
    if (!OUTLINED_FUNCTION_8_25())
    {
      v66 = OUTLINED_FUNCTION_12_24();
      npush_i(v66);
      if (!if_testeq(a1, v67, v68, v69, v70, v71, v72, v73) && !advance_tok(a1, v74, v75, v76))
      {
        v77 = OUTLINED_FUNCTION_13_24();
        lpta_loadp_setscan_r(v77, v78, v79);
        OUTLINED_FUNCTION_44_5();
        if (v80)
        {
          goto LABEL_42;
        }

LABEL_26:
        v7 = v14;
        savescptr(a1, 3, v382);
        if (!OUTLINED_FUNCTION_8_25())
        {
          v81 = OUTLINED_FUNCTION_12_24();
          npush_i(v81);
          if (!if_testeq(a1, v82, v83, v84, v85, v86, v87, v88))
          {
            advance_tok(a1, v89, v90, v91);
            OUTLINED_FUNCTION_44_5();
            if (v92)
            {
              goto LABEL_42;
            }

LABEL_29:
            v7 = v14;
            savescptr(a1, 4, v381);
            if (!OUTLINED_FUNCTION_8_25())
            {
              v93 = OUTLINED_FUNCTION_12_24();
              npush_i(v93);
              if (!if_testeq(a1, v94, v95, v96, v97, v98, v99, v100) && !advance_tok(a1, v101, v102, v103) && !OUTLINED_FUNCTION_8_25())
              {
                v104 = OUTLINED_FUNCTION_12_24();
                npush_i(v104);
                if (!if_testeq(a1, v105, v106, v107, v108, v109, v110, v111) && !advance_tok(a1, v112, v113, v114))
                {
                  OUTLINED_FUNCTION_7_25();
                  bspush_ca_boa();
                  v115 = OUTLINED_FUNCTION_23_17();
                  if (!lpta_loadp_setscan_r(v115, v116, v117))
                  {
                    v118 = OUTLINED_FUNCTION_5_25();
                    if (!testFldeq(v118, v119, v120, 2) && !advance_tok(a1, v121, v122, v123))
                    {
                      OUTLINED_FUNCTION_35_9();
                      v124 = OUTLINED_FUNCTION_3_26();
                      if (test_ptr(v124, v125, v126))
                      {
                        v41 = v14;
                      }

                      else
                      {
                        v41 = 1;
                      }

                      goto LABEL_42;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_41;
  }

  while (2)
  {
    v15 = OUTLINED_FUNCTION_7_25();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_2_27();
    v7 = v14;
    if (lpta_loadp_setscan_l(v17, v18, v19))
    {
LABEL_7:
      v20 = OUTLINED_FUNCTION_7_25();
      starttest(v20, v21);
      v22 = OUTLINED_FUNCTION_2_27();
      v7 = v14;
      if (lpta_loadp_setscan_l(v22, v23, v24))
      {
        goto LABEL_108;
      }

LABEL_8:
      OUTLINED_FUNCTION_42_5(32, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380[0]);
      v25 = OUTLINED_FUNCTION_14_22();
      if (!npush_fld(v25, v26, 5u))
      {
        v27 = OUTLINED_FUNCTION_12_24();
        npush_i(v27);
        if (!if_testeq(a1, v28, v29, v30, v31, v32, v33, v34) && !advance_tok(a1, v35, v36, v37))
        {
          v38 = OUTLINED_FUNCTION_15_22();
          lpta_loadp_setscan_r(v38, v39, v40);
          OUTLINED_FUNCTION_44_5();
          if (v42)
          {
            goto LABEL_42;
          }

LABEL_12:
          v7 = v14;
          v43 = OUTLINED_FUNCTION_7_25();
          if (!chstream(v43, v44, 7u))
          {
            OUTLINED_FUNCTION_9_25();
            if (!test_string_i())
            {
              v45 = OUTLINED_FUNCTION_7_25();
              starttest(v45, v46);
              v47 = OUTLINED_FUNCTION_13_24();
              if (!lpta_loadp_setscan_r(v47, v48, v49) && !advance_tok(a1, v50, v51, v52))
              {
LABEL_16:
                OUTLINED_FUNCTION_34_10(35, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377);
                if (OUTLINED_FUNCTION_8_25() || (v53 = OUTLINED_FUNCTION_12_24(), npush_i(v53), if_testeq(a1, v54, v55, v56, v57, v58, v59, v60)) || advance_tok(a1, v61, v62, v63))
                {
                  v41 = v14;
                  goto LABEL_42;
                }

                v64 = OUTLINED_FUNCTION_7_25();
                starttest_e(v64, v65);
                goto LABEL_93;
              }

LABEL_106:
              v294 = OUTLINED_FUNCTION_16_21();
              if (lpta_loadp_setscan_r(v294, v295, 4) || advance_tok(a1, v296, v297, v298))
              {
LABEL_108:
                v4 = 0;
                goto LABEL_4;
              }

LABEL_110:
              v299 = v7;
              savescptr(a1, 38, &v377);
              v300 = OUTLINED_FUNCTION_7_25();
              starttest_e(v300, v301);
              v4 = 0;
              v302 = OUTLINED_FUNCTION_33_11();
              move_i(v302, v303, 0);
              v304 = OUTLINED_FUNCTION_53_4();
              move_i(v304, v305, 50);
              v306 = OUTLINED_FUNCTION_26_16();
              inserted = insert_f0(v306, v307, &v379);
              v41 = v299;
              if (!inserted)
              {
                goto LABEL_4;
              }

LABEL_42:
              v127 = a1[13];
              if (v127)
              {
                v128 = OUTLINED_FUNCTION_25_16(v127);
                v14 = v129;
              }

              else
              {
                v128 = vback(a1, v41);
                v14 = 0;
              }

              v4 = 0;
              v130 = v14;
              switch(v128)
              {
                case 1:
                  continue;
                case 2:
                  v7 = v14;
                  goto LABEL_22;
                case 3:
                  goto LABEL_26;
                case 4:
                  goto LABEL_29;
                case 5:
                  bspop_boa(a1);
                  v131 = OUTLINED_FUNCTION_7_25();
                  starttest(v131, v132);
                  v133 = OUTLINED_FUNCTION_24_17();
                  move_i(v133, v134, v135);
                  v136 = OUTLINED_FUNCTION_26_16();
                  move_i(v136, v137, 70);
                  v138 = OUTLINED_FUNCTION_40_6();
                  v141 = insert_f0(v138, v139, v140);
                  v41 = v14;
                  if (v141)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_54;
                case 6:
LABEL_54:
                  v156 = OUTLINED_FUNCTION_7_25();
                  starttest(v156, v157);
                  v4 = 0;
                  v158 = &v379;
                  v159 = OUTLINED_FUNCTION_26_16();
                  move_i(v159, v160, 0);
                  v161 = OUTLINED_FUNCTION_33_11();
                  move_i(v161, v162, 110);
                  v163 = v381;
                  goto LABEL_55;
                case 7:
                case 8:
                case 14:
                case 22:
                case 31:
                case 36:
                case 37:
                case 39:
                  goto LABEL_4;
                case 9:
                  goto LABEL_7;
                case 10:
                  v7 = v14;
                  goto LABEL_59;
                case 11:
                  goto LABEL_63;
                case 12:
                  v7 = v14;
                  goto LABEL_77;
                case 13:
                  v207 = v14;
                  goto LABEL_85;
                case 15:
                  goto LABEL_87;
                case 16:
                  goto LABEL_88;
                case 17:
                  OUTLINED_FUNCTION_34_10(17, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377);
                  v149 = OUTLINED_FUNCTION_5_25();
                  v152 = testFldeq(v149, v150, v151, 2);
                  v41 = v14;
                  if (!v152)
                  {
                    v155 = advance_tok(a1, v14, v153, v154);
                    v130 = v14;
                    v41 = v14;
                    if (!v155)
                    {
                      goto LABEL_88;
                    }
                  }

                  goto LABEL_42;
                case 18:
                  v208 = v14;
                  goto LABEL_94;
                case 19:
                  v7 = v14;
                  goto LABEL_91;
                case 20:
                  v7 = v14;
                  goto LABEL_92;
                case 21:
                  goto LABEL_99;
                case 23:
                  v7 = v14;
                  goto LABEL_79;
                case 24:
                  v7 = v14;
                  goto LABEL_113;
                case 25:
                  goto LABEL_116;
                case 26:
                  OUTLINED_FUNCTION_34_10(26, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377);
                  v142 = OUTLINED_FUNCTION_5_25();
                  v145 = testFldeq(v142, v143, v144, 2);
                  v41 = v14;
                  if (!v145)
                  {
                    v148 = advance_tok(a1, v14, v146, v147);
                    v41 = v14;
                    if (!v148)
                    {
                      goto LABEL_116;
                    }
                  }

                  goto LABEL_42;
                case 27:
                  v208 = v14;
                  goto LABEL_81;
                case 28:
                  v165 = v14;
                  goto LABEL_117;
                case 29:
                  goto LABEL_119;
                case 30:
                  goto LABEL_120;
                case 32:
                  v7 = v14;
                  goto LABEL_8;
                case 33:
                  goto LABEL_12;
                case 34:
                  v7 = v14;
                  goto LABEL_106;
                case 35:
                  goto LABEL_16;
                case 38:
                  v7 = v14;
                  goto LABEL_110;
                default:
                  goto LABEL_3;
              }
            }
          }
        }
      }

LABEL_41:
      v41 = v7;
      goto LABEL_42;
    }

    break;
  }

LABEL_59:
  OUTLINED_FUNCTION_42_5(10, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380[0]);
  v166 = OUTLINED_FUNCTION_14_22();
  if (npush_fld(v166, v167, 5u))
  {
    goto LABEL_41;
  }

  v168 = OUTLINED_FUNCTION_12_24();
  npush_i(v168);
  if (if_testgt(a1, v169, v170, v171, v172, v173, v174, v175) || advance_tok(a1, v176, v177, v178))
  {
    goto LABEL_41;
  }

  v179 = OUTLINED_FUNCTION_15_22();
  lpta_loadp_setscan_r(v179, v180, v181);
  OUTLINED_FUNCTION_44_5();
  if (v182)
  {
    goto LABEL_42;
  }

LABEL_63:
  v7 = v14;
  v183 = OUTLINED_FUNCTION_7_25();
  if (chstream(v183, v184, 7u))
  {
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_9_25();
  if (test_string_i())
  {
    goto LABEL_41;
  }

  v185 = OUTLINED_FUNCTION_7_25();
  starttest(v185, v186);
  v187 = OUTLINED_FUNCTION_2_27();
  if (lpta_loadp_setscan_l(v187, v188, v189) || advance_tok(a1, v190, v191, v192))
  {
LABEL_77:
    v209 = OUTLINED_FUNCTION_7_25();
    starttest(v209, v210);
    v211 = OUTLINED_FUNCTION_2_27();
    if (lpta_loadp_setscan_l(v211, v212, v213) || advance_tok(a1, v214, v215, v216))
    {
      goto LABEL_108;
    }

LABEL_79:
    OUTLINED_FUNCTION_34_10(23, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377);
LABEL_113:
    v309 = OUTLINED_FUNCTION_7_25();
    if (chstream(v309, v310, 7u))
    {
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_9_25();
    if (test_string_i())
    {
      goto LABEL_41;
    }

    v311 = OUTLINED_FUNCTION_7_25();
    starttest(v311, v312);
    v313 = OUTLINED_FUNCTION_23_17();
    v208 = v7;
    if (lpta_loadp_setscan_r(v313, v314, v315))
    {
LABEL_116:
      v316 = OUTLINED_FUNCTION_7_25();
      starttest(v316, v317);
      v318 = OUTLINED_FUNCTION_23_17();
      lpta_loadp_setscan_l(v318, v319, v320);
      OUTLINED_FUNCTION_44_5();
      if (v321)
      {
LABEL_117:
        LODWORD(v14) = v165;
        v322 = OUTLINED_FUNCTION_7_25();
        starttest(v322, v323);
        v4 = 0;
        v158 = &v379;
        v324 = OUTLINED_FUNCTION_26_16();
        move_i(v324, v325, 0);
        goto LABEL_118;
      }

LABEL_119:
      OUTLINED_FUNCTION_42_5(29, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380[0]);
LABEL_120:
      v7 = v14;
      v328 = OUTLINED_FUNCTION_7_25();
      if (test_synch(v328, v329, 1, v330))
      {
        goto LABEL_41;
      }

      v331 = OUTLINED_FUNCTION_19_18();
      if (testFldeq(v331, v332, 2, v333))
      {
        goto LABEL_41;
      }

      v334 = OUTLINED_FUNCTION_19_18();
      if (npush_fld(v334, v335, 8u))
      {
        goto LABEL_41;
      }

      v336 = OUTLINED_FUNCTION_11_24();
      npush_i(v336);
      if (if_testeq(a1, v337, v338, v339, v340, v341, v342, v343))
      {
        goto LABEL_41;
      }

      if (advance_tok(a1, v344, v345, v346))
      {
        goto LABEL_41;
      }

      v347 = OUTLINED_FUNCTION_23_17();
      if (lpta_loadp_setscan_r(v347, v348, v349))
      {
        goto LABEL_41;
      }

      v350 = OUTLINED_FUNCTION_5_25();
      if (testFldeq(v350, v351, v352, 2))
      {
        goto LABEL_41;
      }

      goto LABEL_103;
    }

    do
    {
LABEL_81:
      v217 = OUTLINED_FUNCTION_24_17();
      bspush_ca_scan(v217, v218);
      v219 = OUTLINED_FUNCTION_5_25();
    }

    while (!testFldeq(v219, v220, v221, 1) && !advance_tok(a1, v222, v223, v224));
LABEL_96:
    v41 = v208;
    goto LABEL_42;
  }

  v193 = OUTLINED_FUNCTION_14_22();
  if (npush_fld(v193, v194, 5u))
  {
    goto LABEL_41;
  }

  v195 = OUTLINED_FUNCTION_12_24();
  npush_i(v195);
  if (if_testgt(a1, v196, v197, v198, v199, v200, v201, v202))
  {
    goto LABEL_41;
  }

  v206 = advance_tok(a1, v203, v204, v205);
  v207 = v14;
  v41 = v14;
  if (v206)
  {
    goto LABEL_42;
  }

LABEL_85:
  v225 = OUTLINED_FUNCTION_40_6();
  savescptr(v225, v226, v227);
  v228 = OUTLINED_FUNCTION_24_17();
  if (lpta_loadp_setscan_r(v228, v229, 7))
  {
    goto LABEL_108;
  }

  LODWORD(v14) = v207;
  if (advance_tok(a1, v230, v231, v232))
  {
    goto LABEL_108;
  }

LABEL_87:
  v233 = OUTLINED_FUNCTION_40_6();
  savescptr(v233, v234, v235);
  v236 = OUTLINED_FUNCTION_7_25();
  starttest(v236, v237);
  v238 = OUTLINED_FUNCTION_24_17();
  v240 = lpta_loadp_setscan_r(v238, v239, 4);
  v208 = v14;
  v130 = v14;
  if (!v240)
  {
    do
    {
LABEL_94:
      v259 = OUTLINED_FUNCTION_24_17();
      bspush_ca_scan(v259, v260);
      v261 = OUTLINED_FUNCTION_5_25();
    }

    while (!testFldeq(v261, v262, v263, 1) && !advance_tok(a1, v264, v265, v266));
    goto LABEL_96;
  }

LABEL_88:
  v7 = v130;
  v241 = OUTLINED_FUNCTION_13_24();
  if (!lpta_loadp_setscan_l(v241, v242, v243) && !advance_tok(a1, v244, v245, v246))
  {
    OUTLINED_FUNCTION_35_9();
    v247 = OUTLINED_FUNCTION_3_26();
    if (!test_ptr(v247, v248, v249))
    {
      goto LABEL_108;
    }
  }

LABEL_91:
  v250 = OUTLINED_FUNCTION_7_25();
  starttest(v250, v251);
  v252 = OUTLINED_FUNCTION_23_17();
  if (!lpta_loadp_setscan_l(v252, v253, v254))
  {
    v267 = OUTLINED_FUNCTION_5_25();
    if (testFldeq(v267, v268, v269, 2))
    {
      goto LABEL_41;
    }

    advance_tok(a1, v270, v271, v272);
    OUTLINED_FUNCTION_44_5();
    if (v273)
    {
      goto LABEL_42;
    }

LABEL_99:
    v7 = v14;
    v274 = OUTLINED_FUNCTION_7_25();
    if (test_synch(v274, v275, 1, v276))
    {
      goto LABEL_41;
    }

    v277 = OUTLINED_FUNCTION_19_18();
    if (testFldeq(v277, v278, 2, v279))
    {
      goto LABEL_41;
    }

    v280 = OUTLINED_FUNCTION_19_18();
    if (npush_fld(v280, v281, 8u))
    {
      goto LABEL_41;
    }

    v282 = OUTLINED_FUNCTION_11_24();
    npush_i(v282);
    if (if_testeq(a1, v283, v284, v285, v286, v287, v288, v289))
    {
      goto LABEL_41;
    }

LABEL_103:
    v293 = advance_tok(a1, v290, v291, v292);
    v41 = v7;
    if (!v293)
    {
      goto LABEL_108;
    }

    goto LABEL_42;
  }

LABEL_92:
  LODWORD(v14) = v7;
  v255 = OUTLINED_FUNCTION_7_25();
  starttest(v255, v256);
LABEL_93:
  v4 = 0;
  v158 = &v379 + 2;
  v257 = OUTLINED_FUNCTION_26_16();
  move_i(v257, v258, 0);
LABEL_118:
  v326 = OUTLINED_FUNCTION_33_11();
  move_i(v326, v327, 50);
  v163 = &v377;
LABEL_55:
  v164 = insert_f0(a1, v163, v158);
  v41 = v14;
  if (v164)
  {
    goto LABEL_42;
  }

LABEL_4:
  vretproc(a1);
  return v4;
}

void por_position_t_ptrs(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  v3 = v2;
  LODWORD(v313) = 0;
  OUTLINED_FUNCTION_18_19(v2, v4, v5, v6, v7, v8, v9, v10, v240);
  OUTLINED_FUNCTION_6_25(v11, v12, v13, v14, v15, v16, v17, v18, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, 0, 0, v313, v315, v317, v319);
  v19 = setjmp(v1);
  if (!v19 && !OUTLINED_FUNCTION_0_29(v19, v20, v21, v22, v23, v24, v25, v26, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v281, v284, v287, v290, v293, v296, v299, v302, v305, v308, v310, v312, v314, SHIDWORD(v314), v316, SWORD2(v316), SHIWORD(v316), v318, SWORD2(v318), SBYTE6(v318), SHIBYTE(v318), v320, v321))
  {
    v27 = OUTLINED_FUNCTION_27_14();
    v29 = push_ptr_init(v27, v28);
    OUTLINED_FUNCTION_39_7(v29, v30, &_MergedGlobals_1_2);
    v31 = OUTLINED_FUNCTION_11_24();
    fence_25(v31, v32, v33);
    v3[143] = v3[97];
    v3[145] = v3[99];
    v3[147] = v3[419];
    v34 = OUTLINED_FUNCTION_17_20();
    lpta_loadpn(v34, v35);
    v36 = OUTLINED_FUNCTION_16_21();
    rpta_loadpn(v36, v37);
    if (compare_ptas(v3))
    {
      v38 = 0;
    }

    else if (testneq(v3))
    {
      v38 = 0;
    }

    else
    {
      v39 = OUTLINED_FUNCTION_7_25();
      starttest_e(v39, v40);
      v41 = OUTLINED_FUNCTION_17_20();
      v43 = lpta_loadp_setscan_l(v41, v42, 4);
      v38 = 0;
      v44 = 0;
      if (!v43)
      {
LABEL_14:
        LODWORD(v52) = v44;
        v59 = OUTLINED_FUNCTION_7_25();
        bspush_ca_scan(v59, v60);
        v61 = OUTLINED_FUNCTION_5_25();
        if (!testFldeq(v61, v62, v63, 1))
        {
          bspush_ca_scan_boa();
          v64 = OUTLINED_FUNCTION_19_18();
          if (!testFldeq(v64, v65, 3, v66))
          {
            LODWORD(v52) = 1;
          }
        }

        goto LABEL_17;
      }
    }

    while (2)
    {
      v45 = v38;
      v46 = OUTLINED_FUNCTION_7_25();
      starttest(v46, v47);
      v48 = OUTLINED_FUNCTION_23_17();
      v51 = lpta_loadp_setscan_l(v48, v49, v50);
      LODWORD(v52) = v45;
      v53 = v45;
      if (!v51)
      {
        do
        {
LABEL_79:
          v224 = OUTLINED_FUNCTION_24_17();
          bspush_ca_scan(v224, v225);
          v226 = OUTLINED_FUNCTION_5_25();
        }

        while (!testFldeq(v226, v227, v228, 1) && !advance_tok(v3, v229, v230, v231));
        goto LABEL_17;
      }

LABEL_10:
      v54 = v53;
      v55 = OUTLINED_FUNCTION_29_13();
      lpta_loadpn(v55, v56);
      v57 = OUTLINED_FUNCTION_28_13();
      rpta_loadpn(v57, v58);
      if (compare_ptas(v3))
      {
        v52 = v54;
      }

      else
      {
        v52 = v54;
        if (!testeq(v3))
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      v133 = OUTLINED_FUNCTION_7_25();
      starttest(v133, v134);
      v135 = OUTLINED_FUNCTION_24_17();
      if (lpta_loadp_setscan_l(v135, v136, 7))
      {
LABEL_52:
        v137 = OUTLINED_FUNCTION_7_25();
        starttest(v137, v138);
        v139 = OUTLINED_FUNCTION_24_17();
        if (lpta_loadp_setscan_l(v139, v140, 7))
        {
LABEL_53:
          v141 = OUTLINED_FUNCTION_45_5();
          lpta_loadpn(v141, v142);
          OUTLINED_FUNCTION_19_18();
          lpta_mover();
          v143 = OUTLINED_FUNCTION_37_9();
          lpta_storep(v143, v144, v145);
          v54 = v52;
LABEL_54:
          v146 = OUTLINED_FUNCTION_37_9();
          lpta_loadpn(v146, v147);
          rpta_loadpn(v3, (v3 + 418));
          if (compare_ptas(v3))
          {
            v52 = v54;
          }

          else
          {
            v52 = v54;
            if (!testeq(v3))
            {
              break;
            }
          }

LABEL_64:
          v175 = OUTLINED_FUNCTION_7_25();
          starttest(v175, v176);
          v177 = OUTLINED_FUNCTION_2_27();
          if (lpta_loadp_setscan_r(v177, v178, v179))
          {
LABEL_65:
            v180 = OUTLINED_FUNCTION_7_25();
            starttest(v180, v181);
            v182 = OUTLINED_FUNCTION_23_17();
            v70 = v52;
            if (lpta_loadp_setscan_r(v182, v183, v184))
            {
              break;
            }

LABEL_85:
            while (1)
            {
              v232 = OUTLINED_FUNCTION_7_25();
              bspush_ca_scan(v232, v233);
              v234 = OUTLINED_FUNCTION_7_25();
              bspush_ca_scan(v234, v235);
              v236 = OUTLINED_FUNCTION_5_25();
              v239 = testFldeq(v236, v237, v238, 1);
              v71 = v70;
              LODWORD(v52) = v70;
              if (v239)
              {
                break;
              }

LABEL_86:
              LODWORD(v52) = v71;
              v70 = v71;
              if (advance_tok(v3, v67, v38, v53))
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            v185 = OUTLINED_FUNCTION_14_22();
            if (!npush_fld(v185, v186, 5u))
            {
              v187 = OUTLINED_FUNCTION_12_24();
              npush_i(v187);
              if (!if_testlt(v3, v188, v189, v190, v191, v192, v193, v194) && !advance_tok(v3, v195, v196, v197))
              {
                v198 = OUTLINED_FUNCTION_14_22();
                if (!npush_fld(v198, v199, 5u))
                {
                  v200 = OUTLINED_FUNCTION_24_17();
                  c_assvar(v200, v201);
                  v202 = OUTLINED_FUNCTION_24_17();
                  npush_v(v202, v203, v204, v205, v206, v207, v208, v209);
                  if (!if_testlt(v3, v210, v211, v212, v213, v214, v215, v216) && !advance_tok(v3, v217, v218, v219))
                  {
                    OUTLINED_FUNCTION_35_9();
                    OUTLINED_FUNCTION_3_26();
                    if (!lpta_tstctxtr())
                    {
                      v220 = OUTLINED_FUNCTION_9_25();
                      setscan_l(v220, v221, v222);
                      v107 = v52;
                      if (!v223)
                      {
LABEL_41:
                        OUTLINED_FUNCTION_31_12(18, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v311);
                        if (OUTLINED_FUNCTION_8_25() || (v108 = OUTLINED_FUNCTION_11_24(), npush_i(v108), if_testeq(v3, v109, v110, v111, v112, v113, v114, v115)) || advance_tok(v3, v116, v117, v118) || (v119 = OUTLINED_FUNCTION_13_24(), lpta_loadp_setscan_r(v119, v120, v121)) || OUTLINED_FUNCTION_8_25() || (v122 = OUTLINED_FUNCTION_11_24(), npush_i(v122), if_testeq(v3, v123, v124, v125, v126, v127, v128, v129)))
                        {
                          LODWORD(v52) = v107;
                        }

                        else
                        {
                          LODWORD(v52) = v107;
                          if (!advance_tok(v3, v130, v131, v132))
                          {
                            break;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_17;
        }
      }

      else
      {
        if (OUTLINED_FUNCTION_8_25())
        {
          goto LABEL_17;
        }

        v148 = OUTLINED_FUNCTION_12_24();
        npush_i(v148);
        if (if_testeq(v3, v149, v150, v151, v152, v153, v154, v155) || advance_tok(v3, v156, v157, v158))
        {
          goto LABEL_17;
        }
      }

      if (!OUTLINED_FUNCTION_8_25())
      {
        v159 = OUTLINED_FUNCTION_12_24();
        npush_i(v159);
        if (!if_testeq(v3, v160, v161, v162, v163, v164, v165, v166) && !advance_tok(v3, v167, v168, v169))
        {
          v170 = OUTLINED_FUNCTION_24_17();
          lpta_loadpn(v170, v171);
          OUTLINED_FUNCTION_19_18();
          lpta_movel();
          v172 = OUTLINED_FUNCTION_37_9();
          lpta_storep(v172, v173, v174);
          break;
        }
      }

LABEL_17:
      LODWORD(v67) = v52;
LABEL_18:
      v68 = v3[13];
      if (v68)
      {
        v69 = OUTLINED_FUNCTION_25_16(v68);
        v70 = v67;
      }

      else
      {
        v69 = vback(v3, v67);
        v70 = 0;
      }

      v44 = v70;
      v38 = v70;
      v53 = v70;
      v71 = v70;
      switch(v69)
      {
        case 1:
          continue;
        case 2:
          v72 = OUTLINED_FUNCTION_26_16();
          savescptr(v72, v73, v74);
          v75 = OUTLINED_FUNCTION_53_4();
          bspush_ca_scan(v75, v76);
          v77 = OUTLINED_FUNCTION_41_5();
          v80 = 3;
          goto LABEL_24;
        case 3:
          bspop_boa(v3);
          bspush_ca_scan_boa();
          v98 = OUTLINED_FUNCTION_10_25();
          if (testFldeq(v98, 4u, v99, 18))
          {
            LODWORD(v67) = v70;
          }

          else
          {
            LODWORD(v67) = 1;
          }

          goto LABEL_18;
        case 4:
          bspop_boa(v3);
          v103 = advance_tok(v3, v100, v101, v102);
          v44 = v70;
          LODWORD(v67) = v70;
          if (!v103)
          {
            goto LABEL_14;
          }

          goto LABEL_18;
        case 5:
          goto LABEL_14;
        case 6:
          v77 = OUTLINED_FUNCTION_10_25();
          v78 = 4;
          v79 = 18;
LABEL_24:
          v81 = testFldeq(v77, v78, v80, v79);
          v67 = v70;
          if (!v81)
          {
            goto LABEL_25;
          }

          goto LABEL_18;
        case 7:
LABEL_25:
          v82 = advance_tok(v3, v67, v38, v53);
          v38 = v70;
          LODWORD(v67) = v70;
          if (!v82)
          {
            continue;
          }

          goto LABEL_18;
        case 8:
          goto LABEL_10;
        case 9:
          savescptr(v3, 9, (v3 + 144));
          v83 = OUTLINED_FUNCTION_41_5();
          v85 = testFldeq(v83, v84, 1, 2);
          LODWORD(v67) = v70;
          if (!v85)
          {
            v88 = advance_tok(v3, v70, v86, v87);
            v53 = v70;
            LODWORD(v67) = v70;
            if (!v88)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_18;
        case 10:
          LODWORD(v52) = v70;
          goto LABEL_79;
        case 11:
          v52 = v70;
          goto LABEL_51;
        case 12:
          v54 = v70;
          goto LABEL_54;
        case 13:
          v52 = v70;
          goto LABEL_52;
        case 14:
          v52 = v70;
          goto LABEL_53;
        case 15:
          v52 = v70;
          goto LABEL_64;
        case 17:
          v52 = v70;
          goto LABEL_65;
        case 18:
          v107 = v70;
          goto LABEL_41;
        case 19:
          v89 = OUTLINED_FUNCTION_58_4();
          savescptr(v89, v90, v91);
          v92 = OUTLINED_FUNCTION_41_5();
          v94 = testFldeq(v92, v93, 1, 2);
          LODWORD(v67) = v70;
          if (v94)
          {
            goto LABEL_18;
          }

          v97 = advance_tok(v3, v70, v95, v96);
          LODWORD(v67) = v70;
          if (v97)
          {
            goto LABEL_18;
          }

          goto LABEL_3;
        case 20:
          v104 = OUTLINED_FUNCTION_41_5();
          v106 = testFldeq(v104, v105, 4, 6);
          v71 = v70;
          v67 = v70;
          if (!v106)
          {
            goto LABEL_86;
          }

          goto LABEL_18;
        case 21:
          goto LABEL_86;
        case 22:
          goto LABEL_85;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_60_4();
}

uint64_t por_peak(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v655 = *MEMORY[0x277D85DE8];
  v645 = 0;
  v644 = 8585212;
  v643 = 0xFFFC0000FFFCLL;
  v641 = 0;
  v642 = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v618);
  OUTLINED_FUNCTION_20_17();
  bzero(v654, v9);
  v10 = setjmp(v654);
  if (v10 || OUTLINED_FUNCTION_32_11(v10, &v618, v11, v12, v13, v14, v15, v16, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641, v642, v643, v644, v645, v646, v647, v648, v649, v650, v651, v652, v653))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v18 = OUTLINED_FUNCTION_40_6();
  get_parm(v18, v19, v20, -4);
  WORD2(v644) = -4;
  v21 = OUTLINED_FUNCTION_27_14();
  v23 = push_ptr_init(v21, v22);
  LODWORD(v24) = 0;
  OUTLINED_FUNCTION_39_7(v23, v25, &_MergedGlobals_1_2);
  HIWORD(v644) = 0;
  v26 = OUTLINED_FUNCTION_11_24();
  fence_25(v26, v27, v28);
  *(a1 + 1186) = 0;
  *(a1 + 1190) = 160;
  if (*(a1 + 5042) == 1)
  {
    v29 = OUTLINED_FUNCTION_46_5();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_16_21();
    if (lpta_loadp_setscan_r(v31, v32, 0))
    {
      v36 = 0;
    }

    else
    {
      v37 = advance_tok(a1, v33, v34, v35);
      v36 = 0;
      v38 = 0;
      if (!v37)
      {
        do
        {
LABEL_10:
          v39 = OUTLINED_FUNCTION_24_17();
          bspush_ca_scan(v39, v40);
          v41 = OUTLINED_FUNCTION_14_22();
          if (npush_fld(v41, v42, 5u))
          {
            break;
          }

          v43 = OUTLINED_FUNCTION_12_24();
          npush_i(v43);
          if (if_testgt(a1, v44, v45, v46, v47, v48, v49, v50))
          {
            break;
          }
        }

        while (!advance_tok(a1, v51, v52, v53));
        v54 = v38;
        goto LABEL_14;
      }
    }

LABEL_40:
    if (*(a1 + 746) == 2 && !*(a1 + 734))
    {
      v86 = WORD1(v644) + 50;
      goto LABEL_47;
    }

LABEL_42:
    OUTLINED_FUNCTION_59_4();
    if (v83 == v84)
    {
      goto LABEL_46;
    }

LABEL_44:
    v85 = WORD1(v644) + 10;
    goto LABEL_45;
  }

LABEL_29:
  v36 = v24;
  if (*(a1 + 746) != 2 || *(a1 + 734))
  {
LABEL_31:
    OUTLINED_FUNCTION_59_4();
    if (v83 == v84)
    {
LABEL_46:
      v86 = WORD1(v644) + 80;
      goto LABEL_47;
    }

LABEL_33:
    if (*(a1 + 5066) != 1)
    {
      goto LABEL_48;
    }

    v85 = WORD1(v644) - 70;
LABEL_45:
    WORD1(v644) = v85;
    goto LABEL_48;
  }

  v86 = WORD1(v644) + 60;
LABEL_47:
  WORD1(v644) = v86;
  *(a1 + 5066) = 1;
  while (1)
  {
LABEL_48:
    if (HIWORD(v645) == 1)
    {
      WORD1(v644) += 40;
    }

    LODWORD(v24) = v36;
LABEL_51:
    OUTLINED_FUNCTION_56_4();
    if (v88)
    {
      WORD1(v644) -= 20;
    }

LABEL_54:
    v88 = *(a1 + 5042) != 1 && HIWORD(v645) == 2;
    if (v88)
    {
LABEL_60:
      v99 = -100;
      goto LABEL_61;
    }

LABEL_58:
    v89 = OUTLINED_FUNCTION_7_25();
    starttest(v89, v90);
    v91 = OUTLINED_FUNCTION_2_27();
    if (lpta_loadp_setscan_l(v91, v92, v93))
    {
LABEL_59:
      v94 = OUTLINED_FUNCTION_7_25();
      starttest(v94, v95);
      v96 = OUTLINED_FUNCTION_2_27();
      if (lpta_loadp_setscan_l(v96, v97, v98))
      {
        goto LABEL_60;
      }

      v219 = OUTLINED_FUNCTION_14_22();
      if (npush_fld(v219, v220, 5u))
      {
        goto LABEL_232;
      }

      v221 = OUTLINED_FUNCTION_12_24();
      npush_i(v221);
      if (if_testlt(a1, v222, v223, v224, v225, v226, v227, v228) || advance_tok(a1, v229, v230, v231))
      {
        goto LABEL_232;
      }

      v232 = OUTLINED_FUNCTION_1_27();
      v235 = lpta_loadp_setscan_l(v232, v233, v234);
      v54 = v24;
      if (v235)
      {
        goto LABEL_14;
      }

LABEL_105:
      OUTLINED_FUNCTION_31_12(18, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641);
      if (OUTLINED_FUNCTION_8_25())
      {
        goto LABEL_232;
      }

      v236 = OUTLINED_FUNCTION_11_24();
      npush_i(v236);
      if (if_testeq(a1, v237, v238, v239, v240, v241, v242, v243))
      {
        goto LABEL_232;
      }

      if (advance_tok(a1, v244, v245, v246))
      {
        goto LABEL_232;
      }

      v247 = OUTLINED_FUNCTION_13_24();
      if (lpta_loadp_setscan_r(v247, v248, v249))
      {
        goto LABEL_232;
      }

      if (OUTLINED_FUNCTION_8_25())
      {
        goto LABEL_232;
      }

      v250 = OUTLINED_FUNCTION_11_24();
      npush_i(v250);
      if (if_testeq(a1, v251, v252, v253, v254, v255, v256, v257) || advance_tok(a1, v258, v259, v260))
      {
        goto LABEL_232;
      }

      v99 = -50;
    }

    else
    {
      v148 = OUTLINED_FUNCTION_14_22();
      if (testFldeq(v148, v149, 6, 2) || advance_tok(a1, v150, v151, v152))
      {
        goto LABEL_232;
      }

      v99 = 10;
    }

LABEL_61:
    HIWORD(v644) = WORD1(v644) + v99;
LABEL_62:
    OUTLINED_FUNCTION_56_4();
    if (v88)
    {
      v100 = OUTLINED_FUNCTION_7_25();
      starttest(v100, v101);
      v102 = OUTLINED_FUNCTION_15_22();
      if (lpta_loadp_setscan_r(v102, v103, v104))
      {
LABEL_65:
        v105 = OUTLINED_FUNCTION_7_25();
        starttest(v105, v106);
        v107 = OUTLINED_FUNCTION_15_22();
        if (lpta_loadp_setscan_r(v107, v108, v109) || advance_tok(a1, v110, v111, v112))
        {
LABEL_67:
          v113 = OUTLINED_FUNCTION_7_25();
          starttest(v113, v114);
          v115 = OUTLINED_FUNCTION_15_22();
          if (lpta_loadp_setscan_r(v115, v116, v117) || advance_tok(a1, v118, v119, v120) || advance_tok(a1, v121, v122, v123))
          {
LABEL_70:
            v124 = OUTLINED_FUNCTION_7_25();
            starttest(v124, v125);
            v126 = OUTLINED_FUNCTION_15_22();
            if (lpta_loadp_setscan_r(v126, v127, v128) || advance_tok(a1, v129, v130, v131) || advance_tok(a1, v132, v133, v134) || advance_tok(a1, v135, v136, v137))
            {
LABEL_74:
              v82 = 10;
            }

            else
            {
              v580 = OUTLINED_FUNCTION_14_22();
              if (npush_fld(v580, v581, 5u))
              {
                goto LABEL_232;
              }

              v582 = OUTLINED_FUNCTION_12_24();
              npush_i(v582);
              if (if_testlt(a1, v583, v584, v585, v586, v587, v588, v589) || advance_tok(a1, v590, v591, v592))
              {
                goto LABEL_232;
              }

              v82 = 25;
            }
          }

          else
          {
            v508 = OUTLINED_FUNCTION_14_22();
            if (npush_fld(v508, v509, 5u))
            {
              goto LABEL_232;
            }

            v510 = OUTLINED_FUNCTION_12_24();
            npush_i(v510);
            if (if_testlt(a1, v511, v512, v513, v514, v515, v516, v517) || advance_tok(a1, v518, v519, v520))
            {
              goto LABEL_232;
            }

            v82 = 30;
          }
        }

        else
        {
          v307 = OUTLINED_FUNCTION_14_22();
          if (npush_fld(v307, v308, 5u))
          {
            goto LABEL_232;
          }

          v309 = OUTLINED_FUNCTION_12_24();
          npush_i(v309);
          if (if_testlt(a1, v310, v311, v312, v313, v314, v315, v316) || advance_tok(a1, v317, v318, v319))
          {
            goto LABEL_232;
          }

          v82 = 35;
        }
      }

      else
      {
        v186 = OUTLINED_FUNCTION_14_22();
        if (npush_fld(v186, v187, 5u))
        {
          goto LABEL_232;
        }

        v188 = OUTLINED_FUNCTION_12_24();
        npush_i(v188);
        if (if_testlt(a1, v189, v190, v191, v192, v193, v194, v195) || advance_tok(a1, v196, v197, v198))
        {
          goto LABEL_232;
        }

        v82 = 40;
      }
    }

    else
    {
LABEL_75:
      v138 = OUTLINED_FUNCTION_7_25();
      starttest(v138, v139);
      v140 = OUTLINED_FUNCTION_15_22();
      if (lpta_loadp_setscan_r(v140, v141, v142))
      {
LABEL_76:
        if (*(a1 + 5042) != 1)
        {
LABEL_96:
          v199 = OUTLINED_FUNCTION_7_25();
          starttest(v199, v200);
          v201 = OUTLINED_FUNCTION_2_27();
          if (!lpta_loadp_setscan_r(v201, v202, v203))
          {
            v261 = OUTLINED_FUNCTION_14_22();
            if (npush_fld(v261, v262, 5u))
            {
              goto LABEL_232;
            }

            v263 = OUTLINED_FUNCTION_12_24();
            npush_i(v263);
            if (if_testeq(a1, v264, v265, v266, v267, v268, v269, v270) || advance_tok(a1, v271, v272, v273))
            {
              goto LABEL_232;
            }

LABEL_79:
            v82 = -10;
            goto LABEL_154;
          }

LABEL_97:
          v204 = OUTLINED_FUNCTION_7_25();
          starttest(v204, v205);
          v206 = OUTLINED_FUNCTION_1_27();
          if (lpta_loadp_setscan_r(v206, v207, v208))
          {
LABEL_98:
            v209 = OUTLINED_FUNCTION_7_25();
            starttest(v209, v210);
            v211 = OUTLINED_FUNCTION_1_27();
            if (lpta_loadp_setscan_r(v211, v212, v213))
            {
LABEL_99:
              v214 = OUTLINED_FUNCTION_7_25();
              starttest(v214, v215);
              v216 = OUTLINED_FUNCTION_1_27();
              if (lpta_loadp_setscan_r(v216, v217, v218))
              {
LABEL_100:
                v82 = -20;
              }

              else
              {
                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_232;
                }

                v453 = OUTLINED_FUNCTION_11_24();
                npush_i(v453);
                if (if_testeq(a1, v454, v455, v456, v457, v458, v459, v460))
                {
                  goto LABEL_232;
                }

                if (advance_tok(a1, v461, v462, v463))
                {
                  goto LABEL_232;
                }

                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_232;
                }

                v464 = OUTLINED_FUNCTION_12_24();
                npush_i(v464);
                if (if_testeq(a1, v465, v466, v467, v468, v469, v470, v471))
                {
                  goto LABEL_232;
                }

                if (advance_tok(a1, v472, v473, v474))
                {
                  goto LABEL_232;
                }

                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_232;
                }

                v475 = OUTLINED_FUNCTION_12_24();
                npush_i(v475);
                if (if_testeq(a1, v476, v477, v478, v479, v480, v481, v482))
                {
                  goto LABEL_232;
                }

                if (advance_tok(a1, v483, v484, v485))
                {
                  goto LABEL_232;
                }

                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_232;
                }

                v486 = OUTLINED_FUNCTION_12_24();
                npush_i(v486);
                if (if_testeq(a1, v487, v488, v489, v490, v491, v492, v493))
                {
                  goto LABEL_232;
                }

                if (advance_tok(a1, v494, v495, v496))
                {
                  goto LABEL_232;
                }

                if (OUTLINED_FUNCTION_8_25())
                {
                  goto LABEL_232;
                }

                v497 = OUTLINED_FUNCTION_11_24();
                npush_i(v497);
                if (if_testeq(a1, v498, v499, v500, v501, v502, v503, v504) || advance_tok(a1, v505, v506, v507))
                {
                  goto LABEL_232;
                }

                v82 = -30;
              }
            }

            else
            {
              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_232;
              }

              v320 = OUTLINED_FUNCTION_11_24();
              npush_i(v320);
              if (if_testeq(a1, v321, v322, v323, v324, v325, v326, v327))
              {
                goto LABEL_232;
              }

              if (advance_tok(a1, v328, v329, v330))
              {
                goto LABEL_232;
              }

              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_232;
              }

              v331 = OUTLINED_FUNCTION_12_24();
              npush_i(v331);
              if (if_testeq(a1, v332, v333, v334, v335, v336, v337, v338))
              {
                goto LABEL_232;
              }

              if (advance_tok(a1, v339, v340, v341))
              {
                goto LABEL_232;
              }

              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_232;
              }

              v342 = OUTLINED_FUNCTION_12_24();
              npush_i(v342);
              if (if_testeq(a1, v343, v344, v345, v346, v347, v348, v349))
              {
                goto LABEL_232;
              }

              if (advance_tok(a1, v350, v351, v352))
              {
                goto LABEL_232;
              }

              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_232;
              }

              v353 = OUTLINED_FUNCTION_11_24();
              npush_i(v353);
              if (if_testeq(a1, v354, v355, v356, v357, v358, v359, v360) || advance_tok(a1, v361, v362, v363))
              {
                goto LABEL_232;
              }

              v82 = -40;
            }

            goto LABEL_154;
          }

          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_232;
          }

          v274 = OUTLINED_FUNCTION_11_24();
          npush_i(v274);
          if (if_testeq(a1, v275, v276, v277, v278, v279, v280, v281) || advance_tok(a1, v282, v283, v284) || OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_232;
          }

          v285 = OUTLINED_FUNCTION_12_24();
          goto LABEL_123;
        }

        v143 = OUTLINED_FUNCTION_7_25();
        starttest(v143, v144);
        if (HIWORD(v645) != 1)
        {
          goto LABEL_79;
        }

        v145 = OUTLINED_FUNCTION_15_22();
        if (lpta_loadp_setscan_r(v145, v146, v147))
        {
          goto LABEL_79;
        }

        v364 = OUTLINED_FUNCTION_14_22();
        if (npush_fld(v364, v365, 5u))
        {
          goto LABEL_232;
        }

        v366 = OUTLINED_FUNCTION_11_24();
        npush_i(v366);
        if (if_testgt(a1, v367, v368, v369, v370, v371, v372, v373) || advance_tok(a1, v374, v375, v376))
        {
          goto LABEL_232;
        }

        v377 = OUTLINED_FUNCTION_7_25();
        starttest(v377, v378);
        v379 = OUTLINED_FUNCTION_1_27();
        if (!lpta_loadp_setscan_r(v379, v380, v381))
        {
          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_232;
          }

          v285 = OUTLINED_FUNCTION_11_24();
LABEL_123:
          npush_i(v285);
          if (if_testeq(a1, v286, v287, v288, v289, v290, v291, v292))
          {
            goto LABEL_232;
          }

          if (advance_tok(a1, v293, v294, v295))
          {
            goto LABEL_232;
          }

          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_232;
          }

          v296 = OUTLINED_FUNCTION_11_24();
          npush_i(v296);
          if (if_testeq(a1, v297, v298, v299, v300, v301, v302, v303) || advance_tok(a1, v304, v305, v306))
          {
            goto LABEL_232;
          }

          v82 = -50;
          goto LABEL_154;
        }

LABEL_150:
        v382 = OUTLINED_FUNCTION_7_25();
        starttest(v382, v383);
        v384 = OUTLINED_FUNCTION_1_27();
        if (lpta_loadp_setscan_r(v384, v385, v386))
        {
LABEL_151:
          v387 = OUTLINED_FUNCTION_7_25();
          starttest(v387, v388);
          v389 = OUTLINED_FUNCTION_1_27();
          if (lpta_loadp_setscan_r(v389, v390, v391))
          {
LABEL_152:
            v392 = OUTLINED_FUNCTION_7_25();
            starttest(v392, v393);
            v394 = OUTLINED_FUNCTION_1_27();
            if (lpta_loadp_setscan_r(v394, v395, v396))
            {
LABEL_153:
              v82 = -100;
            }

            else
            {
              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_232;
              }

              v521 = OUTLINED_FUNCTION_11_24();
              npush_i(v521);
              if (if_testeq(a1, v522, v523, v524, v525, v526, v527, v528))
              {
                goto LABEL_232;
              }

              if (advance_tok(a1, v529, v530, v531))
              {
                goto LABEL_232;
              }

              if (advance_tok(a1, v532, v533, v534))
              {
                goto LABEL_232;
              }

              if (advance_tok(a1, v535, v536, v537))
              {
                goto LABEL_232;
              }

              if (advance_tok(a1, v538, v539, v540))
              {
                goto LABEL_232;
              }

              if (OUTLINED_FUNCTION_8_25())
              {
                goto LABEL_232;
              }

              v541 = OUTLINED_FUNCTION_11_24();
              npush_i(v541);
              if (if_testeq(a1, v542, v543, v544, v545, v546, v547, v548) || advance_tok(a1, v549, v550, v551))
              {
                goto LABEL_232;
              }

              v82 = -88;
            }
          }

          else
          {
            if (OUTLINED_FUNCTION_8_25())
            {
              goto LABEL_232;
            }

            v552 = OUTLINED_FUNCTION_11_24();
            npush_i(v552);
            if (if_testeq(a1, v553, v554, v555, v556, v557, v558, v559))
            {
              goto LABEL_232;
            }

            if (advance_tok(a1, v560, v561, v562))
            {
              goto LABEL_232;
            }

            if (advance_tok(a1, v563, v564, v565))
            {
              goto LABEL_232;
            }

            if (advance_tok(a1, v566, v567, v568))
            {
              goto LABEL_232;
            }

            if (OUTLINED_FUNCTION_8_25())
            {
              goto LABEL_232;
            }

            v569 = OUTLINED_FUNCTION_11_24();
            npush_i(v569);
            if (if_testeq(a1, v570, v571, v572, v573, v574, v575, v576) || advance_tok(a1, v577, v578, v579))
            {
              goto LABEL_232;
            }

            v82 = -75;
          }
        }

        else
        {
          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_232;
          }

          v593 = OUTLINED_FUNCTION_11_24();
          npush_i(v593);
          if (if_testeq(a1, v594, v595, v596, v597, v598, v599, v600))
          {
            goto LABEL_232;
          }

          if (advance_tok(a1, v601, v602, v603))
          {
            goto LABEL_232;
          }

          if (advance_tok(a1, v604, v605, v606))
          {
            goto LABEL_232;
          }

          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_232;
          }

          v607 = OUTLINED_FUNCTION_11_24();
          npush_i(v607);
          if (if_testeq(a1, v608, v609, v610, v611, v612, v613, v614) || advance_tok(a1, v615, v616, v617))
          {
            goto LABEL_232;
          }

          v82 = -62;
        }
      }

      else
      {
        v153 = OUTLINED_FUNCTION_14_22();
        if (npush_fld(v153, v154, 5u))
        {
          goto LABEL_232;
        }

        v155 = OUTLINED_FUNCTION_12_24();
        npush_i(v155);
        if (if_testlt(a1, v156, v157, v158, v159, v160, v161, v162))
        {
          goto LABEL_232;
        }

        if (advance_tok(a1, v163, v164, v165))
        {
          goto LABEL_232;
        }

        v166 = OUTLINED_FUNCTION_1_27();
        if (lpta_loadp_setscan_r(v166, v167, v168))
        {
          goto LABEL_232;
        }

        if (OUTLINED_FUNCTION_8_25())
        {
          goto LABEL_232;
        }

        v169 = OUTLINED_FUNCTION_11_24();
        npush_i(v169);
        if (if_testeq(a1, v170, v171, v172, v173, v174, v175, v176))
        {
          goto LABEL_232;
        }

        v180 = advance_tok(a1, v177, v178, v179);
        v54 = v24;
        if (v180)
        {
          goto LABEL_14;
        }

LABEL_90:
        v181 = OUTLINED_FUNCTION_7_25();
        if (test_synch(v181, v182, 1, v183))
        {
          goto LABEL_232;
        }

        v184 = OUTLINED_FUNCTION_7_25();
        bspush_ca_scan(v184, v185);
        v58 = v24;
LABEL_25:
        LODWORD(v24) = v58;
        if (OUTLINED_FUNCTION_8_25())
        {
          goto LABEL_232;
        }

        v71 = OUTLINED_FUNCTION_11_24();
        npush_i(v71);
        if (if_testeq(a1, v72, v73, v74, v75, v76, v77, v78) || advance_tok(a1, v79, v80, v81))
        {
          goto LABEL_232;
        }

        v82 = -25;
      }
    }

LABEL_154:
    *(a1 + 1190) = WORD1(v644) + v82;
LABEL_155:
    *(a1 + 5042) = 0;
    v397 = OUTLINED_FUNCTION_7_25();
    starttest(v397, v398);
    v399 = OUTLINED_FUNCTION_2_27();
    v402 = lpta_loadp_setscan_l(v399, v400, v401);
    v87 = v24;
    if (!v402)
    {
LABEL_172:
      LODWORD(v24) = v87;
      OUTLINED_FUNCTION_31_12(43, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639, v640, v641);
      v424 = OUTLINED_FUNCTION_14_22();
      if (npush_fld(v424, v425, 5u))
      {
        goto LABEL_232;
      }

      v426 = OUTLINED_FUNCTION_12_24();
      npush_i(v426);
      if (if_testlt(a1, v427, v428, v429, v430, v431, v432, v433))
      {
        goto LABEL_232;
      }

      if (advance_tok(a1, v434, v435, v436))
      {
        goto LABEL_232;
      }

      v437 = OUTLINED_FUNCTION_15_22();
      if (lpta_loadp_setscan_r(v437, v438, v439))
      {
        goto LABEL_232;
      }

      v440 = OUTLINED_FUNCTION_14_22();
      if (npush_fld(v440, v441, 5u))
      {
        goto LABEL_232;
      }

      v442 = OUTLINED_FUNCTION_12_24();
      npush_i(v442);
      if (if_testlt(a1, v443, v444, v445, v446, v447, v448, v449) || advance_tok(a1, v450, v451, v452))
      {
        goto LABEL_232;
      }

      HIWORD(v644) = vcvtd_n_f64_s32(SWORD1(v644) + SHIWORD(v644), 1uLL);
    }

LABEL_156:
    OUTLINED_FUNCTION_30_12();
    if (v88)
    {
      *(a1 + 1190) += 40;
    }

LABEL_159:
    OUTLINED_FUNCTION_56_4();
    if (v88)
    {
      v403 = OUTLINED_FUNCTION_16_21();
      lpta_loadpn(v403, v404);
      v405 = OUTLINED_FUNCTION_54_4();
      rpta_loadpn(v405, v406);
      if (!compare_ptas(a1) && !testeq(a1))
      {
        WORD1(v644) -= 60;
      }
    }

LABEL_164:
    v407 = OUTLINED_FUNCTION_7_25();
    starttest(v407, v408);
    OUTLINED_FUNCTION_56_4();
    if (v88)
    {
      goto LABEL_169;
    }

    v409 = OUTLINED_FUNCTION_15_22();
    if (lpta_loadp_setscan_r(v409, v410, v411))
    {
      goto LABEL_169;
    }

    v412 = OUTLINED_FUNCTION_14_22();
    if (testFldeq(v412, v413, 6, 1))
    {
LABEL_232:
      v54 = v24;
      goto LABEL_14;
    }

    v417 = advance_tok(a1, v414, v415, v416);
    v54 = v24;
    if (!v417)
    {
      break;
    }

    while (1)
    {
LABEL_14:
      v55 = *(a1 + 104);
      if (v55)
      {
        v56 = OUTLINED_FUNCTION_25_16(v55);
        v24 = v57;
      }

      else
      {
        v56 = vback(a1, v54);
        v24 = 0;
      }

      v36 = v24;
      v58 = v24;
      switch(v56)
      {
        case 1:
          goto LABEL_29;
        case 2:
          v36 = v24;
          goto LABEL_40;
        case 3:
          v59 = advance_tok(a1, v57, v24, v24);
          v54 = v24;
          if (v59)
          {
            continue;
          }

          break;
        case 4:
          v38 = v24;
          goto LABEL_10;
        case 5:
          break;
        case 6:
        case 9:
          goto LABEL_48;
        case 7:
          goto LABEL_42;
        case 8:
          v36 = v24;
          goto LABEL_44;
        case 10:
          goto LABEL_31;
        case 11:
          v36 = v24;
          goto LABEL_33;
        case 12:
          goto LABEL_51;
        case 13:
          goto LABEL_54;
        case 14:
          goto LABEL_58;
        case 15:
          goto LABEL_62;
        case 16:
          goto LABEL_59;
        case 17:
          goto LABEL_60;
        case 18:
          goto LABEL_105;
        case 19:
          goto LABEL_75;
        case 20:
          goto LABEL_65;
        case 21:
        case 25:
        case 33:
        case 37:
          goto LABEL_155;
        case 22:
          goto LABEL_67;
        case 23:
          goto LABEL_70;
        case 24:
          goto LABEL_74;
        case 26:
          goto LABEL_76;
        case 27:
          goto LABEL_90;
        case 28:
          v70 = advance_tok(a1, v57, v24, v24);
          v58 = v24;
          v54 = v24;
          if (!v70)
          {
            goto LABEL_25;
          }

          continue;
        case 29:
          goto LABEL_25;
        case 30:
          goto LABEL_96;
        case 31:
          goto LABEL_79;
        case 32:
          goto LABEL_150;
        case 34:
          goto LABEL_151;
        case 35:
          goto LABEL_152;
        case 36:
          goto LABEL_153;
        case 38:
          goto LABEL_97;
        case 39:
          goto LABEL_98;
        case 40:
          goto LABEL_99;
        case 41:
          goto LABEL_100;
        case 42:
          goto LABEL_156;
        case 43:
          v87 = v24;
          goto LABEL_172;
        case 44:
          goto LABEL_159;
        case 45:
          goto LABEL_164;
        case 46:
          goto LABEL_169;
        case 47:
          goto LABEL_170;
        case 48:
          goto LABEL_171;
        default:
          goto LABEL_3;
      }

      v60 = OUTLINED_FUNCTION_7_25();
      v63 = test_synch(v60, v61, 1, v62);
      v54 = v24;
      if (!v63)
      {
        v54 = v24;
        if (*(a1 + 2546) == *(a1 + 3270))
        {
          v64 = OUTLINED_FUNCTION_16_21();
          lpta_loadpn(v64, v65);
          v66 = OUTLINED_FUNCTION_54_4();
          rpta_loadpn(v66, v67);
          v68 = compare_ptas(a1);
          v54 = v24;
          if (!v68)
          {
            v69 = testneq(a1);
            v36 = v24;
            v54 = v24;
            if (!v69)
            {
              break;
            }
          }
        }
      }
    }
  }

  *(a1 + 1190) = WORD1(v644) - 75;
LABEL_169:
  v418 = OUTLINED_FUNCTION_17_20();
  insert_f0(v418, v419, v420);
LABEL_170:
  v421 = OUTLINED_FUNCTION_29_13();
  insert_f0(v421, v422, v423);
LABEL_171:
  vretproc(a1);
  return 0;
}

uint64_t por_low_tone(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  LODWORD(v92) = v3 | 0x320000;
  HIDWORD(v89) = 65532;
  OUTLINED_FUNCTION_18_19(v4, v5, v6, v7, v8, v9, v10, v11, v42);
  OUTLINED_FUNCTION_6_25(v12, v13, v14, v15, v16, v17, v18, v19, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, 0xFFFC0000FFFCLL, v92, v94, v96, v98);
  v20 = setjmp(v1);
  if (v20 || OUTLINED_FUNCTION_0_29(v20, v21, v22, v23, v24, v25, v26, v27, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v91, v93, SHIDWORD(v93), v95, SWORD2(v95), SHIWORD(v95), v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v100))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v29 = OUTLINED_FUNCTION_11_24();
    fence_25(v29, v30, v31);
    *(a1 + 1190) = 50;
    *(a1 + 1186) = 97;
    OUTLINED_FUNCTION_36_9();
    v32 = OUTLINED_FUNCTION_17_20();
    insert_f0(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_29_13();
    lpta_loadpn(v35, v36);
    v37 = OUTLINED_FUNCTION_37_9();
    rpta_loadpn(v37, v38);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      OUTLINED_FUNCTION_38_8();
      v39 = OUTLINED_FUNCTION_29_13();
      insert_f0(v39, v40, v41);
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t por_high_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v92) = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v45);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, SHIDWORD(v93), v95, SWORD2(v95), SHIWORD(v95), v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v100))
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_39_7(v27, v28, &_MergedGlobals_1_2);
    v29 = OUTLINED_FUNCTION_7_25();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_26_16();
    move_i(v31, v32, 0);
    v33 = OUTLINED_FUNCTION_26_16();
    if (!por_peak(v33, v34, v35, v36, v37, v38, v39, v40))
    {
      goto LABEL_4;
    }

    v41 = *(a1 + 104);
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_25_16(v41);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_12_24();
      v42 = vback(v43, v44);
    }

    if (v42 == 1)
    {
      v8 = 0;
      goto LABEL_4;
    }
  }

  v8 = 94;
LABEL_4:
  vretproc(a1);
  return v8;
}

uint64_t por_low_high_star_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v90) = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v43);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, SHIDWORD(v91), v93, SWORD2(v93), SHIWORD(v93), v95, SWORD2(v95), SBYTE6(v95), SHIBYTE(v95), v97, v98))
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_39_7(v27, v28, &_MergedGlobals_1_2);
    starttest(a1, 1);
    v29 = OUTLINED_FUNCTION_33_11();
    move_i(v29, v30, 1);
    v31 = OUTLINED_FUNCTION_33_11();
    if (!por_peak(v31, v32, v33, v34, v35, v36, v37, v38))
    {
      goto LABEL_4;
    }

    v39 = *(a1 + 104);
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_25_16(v39);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_12_24();
      v40 = vback(v41, v42);
    }

    if (v40 == 1)
    {
      v8 = 0;
      goto LABEL_4;
    }
  }

  v8 = 94;
LABEL_4:
  vretproc(a1);
  return v8;
}

uint64_t por_low_star_high_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v92) = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v45);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, SHIDWORD(v93), v95, SWORD2(v95), SHIWORD(v95), v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v100))
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_39_7(v27, v28, &_MergedGlobals_1_2);
    v29 = OUTLINED_FUNCTION_7_25();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_26_16();
    move_i(v31, v32, 2);
    v33 = OUTLINED_FUNCTION_26_16();
    if (!por_peak(v33, v34, v35, v36, v37, v38, v39, v40))
    {
      goto LABEL_4;
    }

    v41 = *(a1 + 104);
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_25_16(v41);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_12_24();
      v42 = vback(v43, v44);
    }

    if (v42 == 1)
    {
      v8 = 0;
      goto LABEL_4;
    }
  }

  v8 = 94;
LABEL_4:
  vretproc(a1);
  return v8;
}

uint64_t por_high_star_low_tone(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  LODWORD(v92) = v3 | 0x3C0000;
  HIDWORD(v89) = v92 + 2621440;
  *(&v89 + 4) = 0xFFFC0000FFFCLL;
  OUTLINED_FUNCTION_18_19(v4, v5, v6, v7, v8, v9, v10, v11, v42);
  OUTLINED_FUNCTION_6_25(v12, v13, v14, v15, v16, v17, v18, v19, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, *(&v89 + 1), v92, v94, v96, v98);
  v20 = setjmp(v1);
  if (v20 || OUTLINED_FUNCTION_0_29(v20, v21, v22, v23, v24, v25, v26, v27, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v91, v93, SHIDWORD(v93), v95, SWORD2(v95), SHIWORD(v95), v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v100))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v29 = OUTLINED_FUNCTION_11_24();
    fence_25(v29, v30, v31);
    *(a1 + 1190) = 50;
    *(a1 + 1186) = 97;
    OUTLINED_FUNCTION_36_9();
    v32 = OUTLINED_FUNCTION_17_20();
    insert_f0(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_29_13();
    lpta_loadpn(v35, v36);
    v37 = OUTLINED_FUNCTION_37_9();
    rpta_loadpn(v37, v38);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      OUTLINED_FUNCTION_38_8();
      v39 = OUTLINED_FUNCTION_29_13();
      insert_f0(v39, v40, v41);
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t por_high_low_star_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v100) = 2031612;
  HIDWORD(v97) = 720892;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v50);
  OUTLINED_FUNCTION_6_25(v10, v11, v12, v13, v14, v15, v16, v17, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, 0x78FFFC005AFFFCLL, v100, v102, v104, v106);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_29(v18, v19, v20, v21, v22, v23, v24, v25, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v99, v101, SHIDWORD(v101), v103, SWORD2(v103), SHIWORD(v103), v105, SWORD2(v105), SBYTE6(v105), SHIBYTE(v105), v107, v108))
  {
    v26 = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v28 = OUTLINED_FUNCTION_45_5();
    lpta_loadpn(v28, v29);
    v30 = OUTLINED_FUNCTION_28_13();
    rpta_loadpn(v30, v31);
    if (!compare_ptas(a1))
    {
      testeq(a1);
    }

    v32 = OUTLINED_FUNCTION_16_21();
    lpta_loadpn(v32, v33);
    v34 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v34, v35);
    if (!compare_ptas(a1) && !testeq(a1))
    {
      v36 = OUTLINED_FUNCTION_22_17();
      lpta_loadpn(v36, v37);
      v38 = OUTLINED_FUNCTION_17_20();
      rpta_loadpn(v38, v39);
      if (!compare_ptas(a1))
      {
        testeq(a1);
      }
    }

    OUTLINED_FUNCTION_38_8();
    v40 = OUTLINED_FUNCTION_17_20();
    insert_f0(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_29_13();
    lpta_loadpn(v43, v44);
    v45 = OUTLINED_FUNCTION_37_9();
    rpta_loadpn(v45, v46);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      OUTLINED_FUNCTION_36_9();
      v47 = OUTLINED_FUNCTION_22_17();
      insert_f0(v47, v48, v49);
    }

    v26 = 0;
  }

  vretproc(a1);
  return v26;
}

uint64_t por_nucl_high_tone(void *a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  v4 = v3 | 0xA0000;
  HIDWORD(v106) = v4 + 9175040;
  LODWORD(v108) = v4 + 2621440;
  LODWORD(v106) = v4;
  HIDWORD(v104) = v4 + 4587520;
  OUTLINED_FUNCTION_18_19(v5, v6, v7, v8, v9, v10, v11, v12, v57);
  OUTLINED_FUNCTION_6_25(v13, v14, v15, v16, v17, v18, v19, v20, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114);
  v21 = setjmp(v1);
  if (v21 || OUTLINED_FUNCTION_0_29(v21, v22, v23, v24, v25, v26, v27, v28, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, SHIDWORD(v109), v111, SWORD2(v111), SHIWORD(v111), v113, SWORD2(v113), SBYTE6(v113), SHIBYTE(v113), v115, v116))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v30 = OUTLINED_FUNCTION_28_13();
    lpta_loadpn(v30, v31);
    v32 = OUTLINED_FUNCTION_45_5();
    rpta_loadpn(v32, v33);
    if (!compare_ptas(a1))
    {
      testeq(a1);
    }

    v34 = OUTLINED_FUNCTION_13_24();
    if (!lpta_loadp_setscan_r(v34, v35, v36) && !advance_tok(a1, v37, v38, v39))
    {
      OUTLINED_FUNCTION_35_9();
      v40 = OUTLINED_FUNCTION_3_26();
      test_ptr(v40, v41, v42);
    }

    por_add_target(a1);
    v43 = OUTLINED_FUNCTION_16_21();
    lpta_loadpn(v43, v44);
    v45 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v45, v46);
    if (!compare_ptas(a1) && !testeq(a1))
    {
      v47 = OUTLINED_FUNCTION_22_17();
      lpta_loadpn(v47, v48);
      v49 = OUTLINED_FUNCTION_17_20();
      rpta_loadpn(v49, v50);
      if (!compare_ptas(a1))
      {
        testeq(a1);
      }
    }

    OUTLINED_FUNCTION_59_4();
    OUTLINED_FUNCTION_36_9();
    v51 = OUTLINED_FUNCTION_17_20();
    insert_f0(v51, v52, v53);
    OUTLINED_FUNCTION_38_8();
    v54 = OUTLINED_FUNCTION_22_17();
    insert_f0(v54, v55, v56);
    vretproc(a1);
    return 0;
  }
}

uint64_t por_nucl_low_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v278 = *MEMORY[0x277D85DE8];
  v268 = 0;
  HIDWORD(v266) = 1048572;
  v267 = 0x19FFFC0062FFFCLL;
  v264 = 0;
  v265 = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v241);
  OUTLINED_FUNCTION_20_17();
  bzero(v277, v9);
  v10 = setjmp(v277);
  if (v10 || OUTLINED_FUNCTION_32_11(v10, &v241, v11, v12, v13, v14, v15, v16, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276))
  {
LABEL_3:
    v17 = 94;
    goto LABEL_4;
  }

  LOWORD(v268) = -4;
  v19 = OUTLINED_FUNCTION_27_14();
  v21 = push_ptr_init(v19, v20);
  LODWORD(v22) = 0;
  OUTLINED_FUNCTION_39_7(v21, v23, &_MergedGlobals_1_2);
  HIWORD(v268) = 25;
  if (*(a1 + 2546) == *(a1 + 3270))
  {
    HIWORD(v268) = 60;
    HIWORD(v267) = 55;
    v24 = OUTLINED_FUNCTION_7_25();
    starttest_l(v24, v25);
    v26 = OUTLINED_FUNCTION_2_27();
    if (lpta_loadp_setscan_l(v26, v27, v28))
    {
      LODWORD(v22) = 0;
      goto LABEL_63;
    }

    v29 = OUTLINED_FUNCTION_46_5();
    bspush_ca_scan(v29, v30);
    v31 = testFldeq(a1, 0, 6, 3);
    LODWORD(v22) = 0;
    v34 = 0;
    if (v31)
    {
      goto LABEL_66;
    }

    while (2)
    {
      LODWORD(v22) = v34;
      if (advance_tok(a1, v32, v34, v33))
      {
        goto LABEL_66;
      }

      v35 = OUTLINED_FUNCTION_7_25();
      starttest(v35, v36);
      v37 = OUTLINED_FUNCTION_1_27();
      v40 = lpta_loadp_setscan_l(v37, v38, v39);
      v41 = v22;
      if (v40)
      {
LABEL_11:
        v42 = OUTLINED_FUNCTION_7_25();
        starttest(v42, v43);
        v44 = OUTLINED_FUNCTION_1_27();
        v47 = lpta_loadp_setscan_l(v44, v45, v46);
        v48 = v22;
        if (!v47)
        {
LABEL_12:
          OUTLINED_FUNCTION_31_12(7, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
          if (!advance_tok(a1, v49, v50, v51) && !OUTLINED_FUNCTION_8_25())
          {
            v52 = OUTLINED_FUNCTION_11_24();
            npush_i(v52);
            if (!if_testeq(a1, v53, v54, v55, v56, v57, v58, v59) && !advance_tok(a1, v60, v61, v62))
            {
              v63 = OUTLINED_FUNCTION_13_24();
              if (!lpta_loadp_setscan_r(v63, v64, v65) && !OUTLINED_FUNCTION_8_25())
              {
                v66 = OUTLINED_FUNCTION_11_24();
                npush_i(v66);
                if (!if_testeq(a1, v67, v68, v69, v70, v71, v72, v73) && !advance_tok(a1, v74, v75, v76))
                {
                  v77 = 75;
                  v78 = 80;
LABEL_62:
                  HIWORD(v268) = v78;
                  HIWORD(v267) = v77;
                  break;
                }
              }
            }
          }

          goto LABEL_66;
        }

LABEL_31:
        v104 = v48;
        v105 = OUTLINED_FUNCTION_7_25();
        starttest(v105, v106);
        v107 = OUTLINED_FUNCTION_1_27();
        v110 = lpta_loadp_setscan_l(v107, v108, v109);
        LODWORD(v22) = v104;
        v111 = v104;
        if (!v110)
        {
LABEL_32:
          OUTLINED_FUNCTION_31_12(9, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
          if (!advance_tok(a1, v112, v113, v114) && !advance_tok(a1, v115, v116, v117) && !OUTLINED_FUNCTION_8_25())
          {
            v118 = OUTLINED_FUNCTION_11_24();
            npush_i(v118);
            if (!if_testeq(a1, v119, v120, v121, v122, v123, v124, v125) && !advance_tok(a1, v126, v127, v128))
            {
              v129 = OUTLINED_FUNCTION_13_24();
              if (!lpta_loadp_setscan_r(v129, v130, v131) && !OUTLINED_FUNCTION_8_25())
              {
                v132 = OUTLINED_FUNCTION_11_24();
                npush_i(v132);
                if (!if_testeq(a1, v133, v134, v135, v136, v137, v138, v139) && !advance_tok(a1, v140, v141, v142))
                {
                  v77 = 65;
                  v78 = 70;
                  goto LABEL_62;
                }
              }
            }
          }

          goto LABEL_66;
        }

LABEL_43:
        LODWORD(v22) = v111;
        v143 = OUTLINED_FUNCTION_7_25();
        starttest(v143, v144);
        v145 = OUTLINED_FUNCTION_1_27();
        if (lpta_loadp_setscan_r(v145, v146, v147))
        {
LABEL_44:
          v148 = OUTLINED_FUNCTION_7_25();
          starttest(v148, v149);
          v150 = OUTLINED_FUNCTION_1_27();
          if (lpta_loadp_setscan_r(v150, v151, v152))
          {
LABEL_45:
            v153 = OUTLINED_FUNCTION_7_25();
            starttest(v153, v154);
            v155 = OUTLINED_FUNCTION_1_27();
            if (lpta_loadp_setscan_r(v155, v156, v157))
            {
LABEL_46:
              v78 = 60;
              v77 = 60;
              goto LABEL_62;
            }

            if (OUTLINED_FUNCTION_8_25())
            {
              goto LABEL_66;
            }

            v187 = OUTLINED_FUNCTION_11_24();
            npush_i(v187);
            if (if_testeq(a1, v188, v189, v190, v191, v192, v193, v194))
            {
              goto LABEL_66;
            }

            if (advance_tok(a1, v195, v196, v197))
            {
              goto LABEL_66;
            }

            if (advance_tok(a1, v198, v199, v200))
            {
              goto LABEL_66;
            }

            v204 = advance_tok(a1, v201, v202, v203);
            v205 = v22;
            if (v204)
            {
              goto LABEL_66;
            }

LABEL_85:
            LODWORD(v22) = v205;
            v235 = OUTLINED_FUNCTION_7_25();
            if (test_synch(v235, v236, 1, v237))
            {
              goto LABEL_66;
            }

            v77 = 65;
LABEL_90:
            v78 = 60;
            goto LABEL_62;
          }

          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_66;
          }

          v171 = OUTLINED_FUNCTION_11_24();
          npush_i(v171);
          if (if_testeq(a1, v172, v173, v174, v175, v176, v177, v178))
          {
            goto LABEL_66;
          }

          if (advance_tok(a1, v179, v180, v181))
          {
            goto LABEL_66;
          }

          v185 = advance_tok(a1, v182, v183, v184);
          v186 = v22;
          if (v185)
          {
            goto LABEL_66;
          }

LABEL_88:
          LODWORD(v22) = v186;
          v238 = OUTLINED_FUNCTION_7_25();
          if (!test_synch(v238, v239, 1, v240))
          {
            v77 = 75;
            goto LABEL_90;
          }
        }

        else
        {
          if (OUTLINED_FUNCTION_8_25())
          {
            goto LABEL_66;
          }

          v158 = OUTLINED_FUNCTION_11_24();
          npush_i(v158);
          if (if_testeq(a1, v159, v160, v161, v162, v163, v164, v165))
          {
            goto LABEL_66;
          }

          v169 = advance_tok(a1, v166, v167, v168);
          v170 = v22;
          if (v169)
          {
            goto LABEL_66;
          }

LABEL_82:
          LODWORD(v22) = v170;
          v232 = OUTLINED_FUNCTION_7_25();
          if (!test_synch(v232, v233, 1, v234))
          {
            v77 = 85;
            goto LABEL_90;
          }
        }
      }

      else
      {
LABEL_22:
        LODWORD(v22) = v41;
        OUTLINED_FUNCTION_31_12(5, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
        if (!OUTLINED_FUNCTION_8_25())
        {
          v79 = OUTLINED_FUNCTION_11_24();
          npush_i(v79);
          if (!if_testeq(a1, v80, v81, v82, v83, v84, v85, v86) && !advance_tok(a1, v87, v88, v89))
          {
            v90 = OUTLINED_FUNCTION_13_24();
            if (!lpta_loadp_setscan_r(v90, v91, v92) && !OUTLINED_FUNCTION_8_25())
            {
              v93 = OUTLINED_FUNCTION_11_24();
              npush_i(v93);
              if (!if_testeq(a1, v94, v95, v96, v97, v98, v99, v100) && !advance_tok(a1, v101, v102, v103))
              {
                v77 = 85;
                v78 = 90;
                goto LABEL_62;
              }
            }
          }
        }
      }

LABEL_66:
      LODWORD(v32) = v22;
LABEL_67:
      v210 = *(a1 + 104);
      if (v210)
      {
        v211 = OUTLINED_FUNCTION_25_16(v210);
        v22 = v32;
      }

      else
      {
        v211 = vback(a1, v32);
        v22 = 0;
      }

      v34 = v22;
      switch(v211)
      {
        case 1:
          goto LABEL_63;
        case 2:
          v212 = OUTLINED_FUNCTION_14_22();
          v214 = testFldeq(v212, v213, 6, 2);
          v34 = v22;
          v32 = v22;
          if (!v214)
          {
            continue;
          }

          goto LABEL_67;
        case 3:
          continue;
        case 4:
          goto LABEL_11;
        case 5:
          v41 = v22;
          goto LABEL_22;
        case 6:
          v48 = v22;
          goto LABEL_31;
        case 7:
          goto LABEL_12;
        case 8:
          v111 = v22;
          goto LABEL_43;
        case 9:
          goto LABEL_32;
        case 10:
          goto LABEL_44;
        case 11:
          v170 = v22;
          goto LABEL_82;
        case 12:
          goto LABEL_45;
        case 13:
          v186 = v22;
          goto LABEL_88;
        case 14:
          goto LABEL_46;
        case 15:
          v205 = v22;
          goto LABEL_85;
        case 16:
          goto LABEL_76;
        case 17:
          bspop_boa(a1);
          v215 = OUTLINED_FUNCTION_5_25();
          v218 = testFldeq(v215, v216, v217, 2);
          LODWORD(v32) = v22;
          if (v218)
          {
            goto LABEL_67;
          }

          v221 = advance_tok(a1, v22, v219, v220);
          LODWORD(v32) = v22;
          if (v221)
          {
            goto LABEL_67;
          }

          WORD1(v267) = 50;
          break;
        case 18:
          goto LABEL_79;
        case 19:
          goto LABEL_80;
        default:
          goto LABEL_3;
      }

      goto LABEL_76;
    }
  }

LABEL_63:
  v206 = OUTLINED_FUNCTION_7_25();
  starttest(v206, v207);
  v208 = OUTLINED_FUNCTION_17_20();
  if (!lpta_loadp_setscan_r(v208, v209, 4))
  {
    OUTLINED_FUNCTION_7_25();
    bspush_ca_scan_boa();
    if (!advanc(a1))
    {
      LODWORD(v22) = 1;
    }

    goto LABEL_66;
  }

LABEL_76:
  v222 = OUTLINED_FUNCTION_22_17();
  lpta_loadpn(v222, v223);
  v224 = OUTLINED_FUNCTION_17_20();
  rpta_loadpn(v224, v225);
  if (!compare_ptas(a1) && !testneq(a1))
  {
    v226 = OUTLINED_FUNCTION_17_20();
    insert_f0(v226, v227, v228);
  }

LABEL_79:
  v229 = OUTLINED_FUNCTION_22_17();
  insert_f0(v229, v230, v231);
LABEL_80:
  v17 = 0;
LABEL_4:
  vretproc(a1);
  return v17;
}

void por_nucl_low_high_star_tone(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  v2 = v1;
  v173 = *MEMORY[0x277D85DE8];
  v167 = 10551292;
  v168 = 0;
  v165 = 6619132;
  v166 = 6619132;
  v163 = 0;
  v164 = 0;
  OUTLINED_FUNCTION_21_17();
  bzero(v162, v3);
  OUTLINED_FUNCTION_20_17();
  bzero(v172, v4);
  if (setjmp(v172) || ventproc(v2, v162, v171, v170, v169, v172))
  {
    goto LABEL_3;
  }

  LOWORD(v168) = -4;
  v5 = push_ptr_init(v2, &v163);
  v6 = 0;
  OUTLINED_FUNCTION_39_7(v5, v7, &_MergedGlobals_1_2);
  v8 = OUTLINED_FUNCTION_11_24();
  fence_25(v8, v9, v10);
  HIWORD(v168) = 30;
  v11 = OUTLINED_FUNCTION_17_20();
  lpta_loadpn(v11, v12);
  v13 = OUTLINED_FUNCTION_54_4();
  rpta_loadpn(v13, v14);
  if (compare_ptas(v2))
  {
    goto LABEL_17;
  }

  if (testeq(v2) || (v15 = OUTLINED_FUNCTION_17_20(), lpta_loadpn(v15, v16), v17 = OUTLINED_FUNCTION_22_17(), rpta_loadpn(v17, v18), compare_ptas(v2)) || testeq(v2))
  {
    v6 = 0;
LABEL_17:
    if (*(v2 + 1018) == *(v2 + 938))
    {
      HIWORD(v165) = 35;
      HIWORD(v167) = 130;
    }

    else
    {
LABEL_20:
      v29 = OUTLINED_FUNCTION_13_24();
      if (!lpta_loadp_setscan_r(v29, v30, v31) && !advance_tok(v2, v32, v33, v34))
      {
        OUTLINED_FUNCTION_35_9();
        v35 = OUTLINED_FUNCTION_3_26();
        if (!test_ptr(v35, v36, v37))
        {
          HIWORD(v165) = 70;
        }
      }
    }

    LODWORD(v27) = v6;
    goto LABEL_25;
  }

  HIWORD(v166) = 10;
  v19 = OUTLINED_FUNCTION_22_17();
  if (lpta_loadp_setscan_r(v19, v20, 4) || advance_tok(v2, v21, v22, v23) || (OUTLINED_FUNCTION_35_9(), v24 = OUTLINED_FUNCTION_3_26(), test_ptr(v24, v25, v26)))
  {
    LODWORD(v27) = 0;
LABEL_13:
    v28 = 98;
  }

  else
  {
    LODWORD(v27) = 0;
    v28 = 80;
  }

  HIWORD(v165) = v28;
LABEL_25:
  v38 = 6;
  v39 = 8;
  v40 = 9;
LABEL_26:
  v159 = v40;
  v160 = v39;
  v161 = v38;
  starttest(v2, v38);
  v41 = OUTLINED_FUNCTION_17_20();
  lpta_loadpn(v41, v42);
  v43 = OUTLINED_FUNCTION_16_21();
  rpta_loadpn(v43, v44);
  if (compare_ptas(v2) || testeq(v2) || (v45 = OUTLINED_FUNCTION_22_17(), lpta_loadpn(v45, v46), v47 = OUTLINED_FUNCTION_16_21(), rpta_loadpn(v47, v48), compare_ptas(v2)) || testeq(v2) || (v49 = OUTLINED_FUNCTION_13_24(), lpta_loadp_setscan_l(v49, v50, v51)))
  {
LABEL_31:
    v52 = OUTLINED_FUNCTION_7_25();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_17_20();
    v56 = lpta_loadp_setscan_l(v54, v55, 4);
    v57 = v27;
    v58 = v27;
    if (!v56)
    {
LABEL_32:
      LODWORD(v27) = v57;
      bspush_ca_scan(v2, v160);
      bspush_ca_scan_boa();
      v59 = OUTLINED_FUNCTION_19_18();
      if (!testFldeq(v59, v60, 1, 2))
      {
        LODWORD(v27) = 1;
      }

LABEL_44:
      v90 = v27;
      while (1)
      {
        v91 = *(v2 + 104);
        if (v91)
        {
          v92 = OUTLINED_FUNCTION_25_16(v91);
          v27 = v93;
        }

        else
        {
          v92 = vback(v2, v90);
          v27 = 0;
        }

        v57 = v27;
        v58 = v27;
        switch(v92)
        {
          case 1:
            v6 = v27;
            goto LABEL_17;
          case 2:
            goto LABEL_13;
          case 3:
          case 4:
            v38 = v161;
            v40 = v159;
            v39 = v160;
            goto LABEL_26;
          case 5:
            v6 = v27;
            goto LABEL_20;
          case 6:
            goto LABEL_31;
          case 7:
          case 12:
            goto LABEL_43;
          case 8:
            v94 = OUTLINED_FUNCTION_19_18();
            v96 = testFldeq(v94, v95, 1, 2);
            v90 = v27;
            if (v96)
            {
              continue;
            }

            v99 = advance_tok(v2, v27, v97, v98);
            v90 = v27;
            if (v99)
            {
              continue;
            }

            goto LABEL_51;
          case 9:
            bspop_boa(v2);
            v140 = advance_tok(v2, v137, v138, v139);
            v57 = v27;
            v90 = v27;
            if (!v140)
            {
              goto LABEL_32;
            }

            continue;
          case 10:
            goto LABEL_32;
          case 11:
LABEL_51:
            savescptr(v2, 11, &v163);
            starttest_l(v2, 12);
            v100 = OUTLINED_FUNCTION_57_4();
            bspush_ca(v100);
            v101 = OUTLINED_FUNCTION_58_4();
            lpta_loadpn(v101, v102);
            OUTLINED_FUNCTION_14_22();
            lpta_ctxtl();
            v103 = OUTLINED_FUNCTION_16_21();
            rpta_loadpn(v103, v104);
            v105 = compare_ptas(v2);
            v90 = v27;
            if (v105)
            {
              continue;
            }

            v106 = testeq(v2);
LABEL_53:
            v90 = v27;
            if (v106)
            {
              continue;
            }

LABEL_54:
            v107 = OUTLINED_FUNCTION_7_25();
            starttest(v107, v108);
            v109 = OUTLINED_FUNCTION_58_4();
            if (lpta_loadp_setscan_l(v109, v110, 4))
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_26_16();
            bspush_ca_scan_boa();
LABEL_56:
            v111 = OUTLINED_FUNCTION_24_17();
            if (test_synch(v111, v112, 1, &unk_2806BBEF4))
            {
              v90 = v27;
            }

            else
            {
              v90 = 1;
            }

            break;
          case 13:
            *(v2 + 136) = 1;
            OUTLINED_FUNCTION_3_26();
            v113 = lpta_tstctxtl();
            v90 = v27;
            if (v113)
            {
              continue;
            }

            v114 = OUTLINED_FUNCTION_14_22();
            setscan_r(v114, v115, v116);
            v90 = v27;
            if (v117)
            {
              continue;
            }

            v118 = OUTLINED_FUNCTION_14_22();
            v120 = npush_fld(v118, v119, 5u);
            v90 = v27;
            if (v120)
            {
              continue;
            }

            npush_i(v2);
            v128 = if_testgt(v2, v121, v122, v123, v124, v125, v126, v127);
            v90 = v27;
            if (v128)
            {
              continue;
            }

            v106 = advance_tok(v2, v27, v129, v130);
            goto LABEL_53;
          case 14:
            goto LABEL_54;
          case 15:
            bspop_boa(v2);
            v131 = OUTLINED_FUNCTION_19_18();
            v133 = testFldeq(v131, v132, 1, 1);
            v90 = v27;
            if (v133)
            {
              continue;
            }

            v136 = advance_tok(v2, v27, v134, v135);
            v90 = v27;
            if (v136)
            {
              continue;
            }

            *(v2 + 1144) = v164;
            HIWORD(v166) = 50;
            goto LABEL_42;
          case 16:
            goto LABEL_56;
          case 17:
            goto LABEL_77;
          case 18:
            v90 = v27;
            if (*(v2 + 2590) == *(v2 + 3270))
            {
              goto LABEL_76;
            }

            continue;
          case 19:
            goto LABEL_76;
          case 20:
            goto LABEL_78;
          default:
            goto LABEL_3;
        }
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_8_25())
    {
      goto LABEL_44;
    }

    npush_i(v2);
    if (if_testeq(v2, v61, v62, v63, v64, v65, v66, v67))
    {
      goto LABEL_44;
    }

    if (advance_tok(v2, v68, v69, v70))
    {
      goto LABEL_44;
    }

    v71 = OUTLINED_FUNCTION_2_27();
    if (lpta_loadp_setscan_l(v71, v72, v73))
    {
      goto LABEL_44;
    }

    v74 = OUTLINED_FUNCTION_14_22();
    if (npush_fld(v74, v75, 5u))
    {
      goto LABEL_44;
    }

    v76 = OUTLINED_FUNCTION_12_24();
    npush_i(v76);
    if (if_testlt(v2, v77, v78, v79, v80, v81, v82, v83) || advance_tok(v2, v84, v85, v86))
    {
      goto LABEL_44;
    }

    HIWORD(v168) = 50;
    HIWORD(v167) = 120;
LABEL_42:
    v58 = v27;
  }

LABEL_43:
  LODWORD(v27) = v58;
  starttest(v2, 17);
  bspush_ca(v2);
  v87 = OUTLINED_FUNCTION_2_27();
  if (lpta_loadp_setscan_r(v87, v88, v89))
  {
    goto LABEL_44;
  }

  v141 = OUTLINED_FUNCTION_14_22();
  if (npush_fld(v141, v142, 5u))
  {
    goto LABEL_44;
  }

  npush_i(v2);
  if (if_testlt(v2, v143, v144, v145, v146, v147, v148, v149) || advance_tok(v2, v150, v151, v152))
  {
    goto LABEL_44;
  }

LABEL_76:
  HIWORD(v168) += 20;
  HIWORD(v167) += 40;
LABEL_77:
  v153 = OUTLINED_FUNCTION_17_20();
  insert_f0(v153, v154, v155);
LABEL_78:
  v156 = OUTLINED_FUNCTION_22_17();
  insert_f0(v156, v157, v158);
LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_60_4();
}

uint64_t por_nucl_high_star_low_tone(void *a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  v4 = v3 | 0x190000;
  HIDWORD(v106) = v4 + 4915200;
  LODWORD(v108) = v4;
  HIDWORD(v104) = v4 + 3276800;
  LODWORD(v106) = v4 + 4784128;
  OUTLINED_FUNCTION_18_19(v5, v6, v7, v8, v9, v10, v11, v12, v57);
  OUTLINED_FUNCTION_6_25(v13, v14, v15, v16, v17, v18, v19, v20, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114);
  v21 = setjmp(v1);
  if (v21 || OUTLINED_FUNCTION_0_29(v21, v22, v23, v24, v25, v26, v27, v28, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, SHIDWORD(v109), v111, SWORD2(v111), SHIWORD(v111), v113, SWORD2(v113), SBYTE6(v113), SHIBYTE(v113), v115, v116))
  {
LABEL_3:
    v29 = 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v31 = OUTLINED_FUNCTION_7_25();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_17_20();
    if (!lpta_loadp_setscan_r(v33, v34, 4))
    {
      OUTLINED_FUNCTION_46_5();
      bspush_ca_scan_boa();
      v45 = !advanc(a1);
      while (2)
      {
        v46 = a1[13];
        if (v46)
        {
          v47 = OUTLINED_FUNCTION_25_16(v46);
          v49 = v48;
        }

        else
        {
          v47 = vback(a1, v45);
          v49 = 0;
        }

        switch(v47)
        {
          case 1:
            break;
          case 2:
            bspop_boa(a1);
            v50 = OUTLINED_FUNCTION_5_25();
            v53 = testFldeq(v50, v51, v52, v1);
            v45 = v49;
            if (!v53)
            {
              v56 = advance_tok(a1, v49, v54, v55);
              v45 = v49;
              if (!v56)
              {
                break;
              }
            }

            continue;
          case 3:
            goto LABEL_9;
          case 4:
            goto LABEL_10;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    v35 = OUTLINED_FUNCTION_22_17();
    lpta_loadpn(v35, v36);
    v37 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v37, v38);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      OUTLINED_FUNCTION_36_9();
      v39 = OUTLINED_FUNCTION_17_20();
      insert_f0(v39, v40, v41);
    }

LABEL_9:
    OUTLINED_FUNCTION_38_8();
    v42 = OUTLINED_FUNCTION_22_17();
    insert_f0(v42, v43, v44);
LABEL_10:
    v29 = 0;
  }

  vretproc(a1);
  return v29;
}

uint64_t por_nucl_high_low_star_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v97) = 2031612;
  HIDWORD(v94) = 720892;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v47);
  OUTLINED_FUNCTION_6_25(v10, v11, v12, v13, v14, v15, v16, v17, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, 0x78FFFC005AFFFCLL, v97, v99, v101, v103);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_29(v18, v19, v20, v21, v22, v23, v24, v25, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v96, v98, SHIDWORD(v98), v100, SWORD2(v100), SHIWORD(v100), v102, SWORD2(v102), SBYTE6(v102), SHIBYTE(v102), v104, v105))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v27 = OUTLINED_FUNCTION_45_5();
    lpta_loadpn(v27, v28);
    v29 = OUTLINED_FUNCTION_28_13();
    rpta_loadpn(v29, v30);
    if (!compare_ptas(a1))
    {
      testeq(a1);
    }

    lpta_loadpn(a1, a1 + 656);
    v31 = OUTLINED_FUNCTION_28_13();
    rpta_loadpn(v31, v32);
    if (!compare_ptas(a1))
    {
      testneq(a1);
    }

    v33 = OUTLINED_FUNCTION_16_21();
    lpta_loadpn(v33, v34);
    v35 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v35, v36);
    if (!compare_ptas(a1) && !testeq(a1))
    {
      v37 = OUTLINED_FUNCTION_22_17();
      lpta_loadpn(v37, v38);
      v39 = OUTLINED_FUNCTION_17_20();
      rpta_loadpn(v39, v40);
      if (!compare_ptas(a1))
      {
        testeq(a1);
      }
    }

    OUTLINED_FUNCTION_59_4();
    OUTLINED_FUNCTION_38_8();
    v41 = OUTLINED_FUNCTION_17_20();
    insert_f0(v41, v42, v43);
    OUTLINED_FUNCTION_36_9();
    v44 = OUTLINED_FUNCTION_22_17();
    insert_f0(v44, v45, v46);
    vretproc(a1);
    return 0;
  }
}

uint64_t por_nucl_low_star_high_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v37);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90);
  v18 = setjmp(v8);
  if (v18 || (v26 = OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, SHIDWORD(v85), v87, SWORD2(v87), SHIWORD(v87), v89, SWORD2(v89), SBYTE6(v89), SHIBYTE(v89), v91, v92), v26))
  {
    v28 = 94;
  }

  else
  {
    v28 = 0;
    OUTLINED_FUNCTION_39_7(v26, v27, &_MergedGlobals_1_2);
    por_nucl_low_tone(a1, v30, v31, v32, v33, v34, v35, v36);
  }

  vretproc(a1);
  return v28;
}

uint64_t por_postnucl_f0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v71);
  OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_55_4(v10, v11, v12, v13, v14, v15, v16, v17, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124);
  v18 = setjmp(v8);
  if (v18 || (v26 = OUTLINED_FUNCTION_4_25(v18, v19, v20, v21, v22, v23, v24, v25, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, SHIDWORD(v119), v121, SWORD2(v121), SHIWORD(v121), v123, SWORD2(v123), SBYTE6(v123), SHIBYTE(v123), v125, v126), v26))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  OUTLINED_FUNCTION_39_7(v26, v27, &_MergedGlobals_1_2);
  fence_25(a1, 1, &unk_2806BBEF3);
  first_postnucl_accent(a1);
  while (2)
  {
    por_position_t_ptrs(a1);
LABEL_6:
    OUTLINED_FUNCTION_47_5();
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_33_11();
      starttest(v37, v38);
      v39 = OUTLINED_FUNCTION_15_22();
      if (!lpta_loadp_setscan_r(v39, v40, v41))
      {
        v42 = OUTLINED_FUNCTION_14_22();
        if (npush_fld(v42, v43, 5u) || (npush_i(a1), if_testgt(a1, v44, v45, v46, v47, v48, v49, v50)) || advance_tok(a1, v51, v52, v53) || advance_tok(a1, v54, v55, v56) || (*(a1 + 136) = 1, v57 = OUTLINED_FUNCTION_3_26(), test_ptr(v57, v58, v59)) || (v60 = OUTLINED_FUNCTION_13_24(), lpta_loadp_setscan_r(v60, v61, v62)) || advance_tok(a1, v63, v64, v65) || (*(a1 + 136) = 1, v66 = OUTLINED_FUNCTION_3_26(), test_ptr(v66, v67, v68)))
        {
          v69 = *(a1 + 104);
          if (v69)
          {
            v70 = OUTLINED_FUNCTION_25_16(v69);
          }

          else
          {
            v70 = vback(a1, 0);
          }

          switch(v70)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_6;
            case 3:
            case 6:
              goto LABEL_22;
            case 4:
              goto LABEL_21;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
              goto LABEL_24;
            case 11:
              goto LABEL_26;
            default:
              goto LABEL_3;
          }
        }

        goto LABEL_24;
      }

LABEL_21:
      if (*(a1 + 734) == 1)
      {
        goto LABEL_23;
      }
    }

    break;
  }

LABEL_22:
  if (*(a1 + 746) >= 1)
  {
LABEL_23:
    por_postnucl_high_tone(a1, v29, v30, v31, v32, v33, v34, v35);
  }

LABEL_24:
  if (*(a1 + 734) == 1)
  {
    por_phrase_tone(a1);
  }

LABEL_26:
  vretproc(a1);
  return 0;
}

uint64_t por_postnucl_high_tone(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v98) = 0;
  OUTLINED_FUNCTION_18_19(a1, a2, a3, a4, a5, a6, a7, a8, v48);
  OUTLINED_FUNCTION_6_25(v10, v11, v12, v13, v14, v15, v16, v17, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, 0xFFFC0000FFFCLL, 0xAFFFC0001FFFCLL, v98, v100, v102, v104);
  v18 = setjmp(v8);
  if (v18 || (v26 = OUTLINED_FUNCTION_0_29(v18, v19, v20, v21, v22, v23, v24, v25, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v95, v97, v99, SHIDWORD(v99), v101, SWORD2(v101), SHIWORD(v101), v103, SWORD2(v103), SBYTE6(v103), SHIBYTE(v103), v105, v106), v26))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_39_7(v26, v27, &_MergedGlobals_1_2);
    v29 = OUTLINED_FUNCTION_11_24();
    fence_25(v29, v30, v31);
    OUTLINED_FUNCTION_47_5();
    if (v32)
    {
      num_words_in_range();
    }

    v33 = OUTLINED_FUNCTION_22_17();
    lpta_loadpn(v33, v34);
    v35 = OUTLINED_FUNCTION_17_20();
    rpta_loadpn(v35, v36);
    if (!compare_ptas(a1))
    {
      testeq(a1);
    }

    v37 = a1[1271];
    v38 = a1[1637];
    if (v37 == v38 && v96 >= 6)
    {
      a1[2459] = 20;
    }

    OUTLINED_FUNCTION_36_9();
    v40 = OUTLINED_FUNCTION_17_20();
    insert_f0(v40, v41, v42);
    lpta_loadpn(a1, (a1 + 328));
    v43 = OUTLINED_FUNCTION_28_13();
    rpta_loadpn(v43, v44);
    if (!compare_ptas(a1))
    {
      testeq(a1);
    }

    OUTLINED_FUNCTION_38_8();
    v45 = OUTLINED_FUNCTION_29_13();
    insert_f0(v45, v46, v47);
    vretproc(a1);
    return 0;
  }
}

void por_phrase_tone(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  v2 = v1;
  v113 = *MEMORY[0x277D85DE8];
  v107 = 65532;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  OUTLINED_FUNCTION_18_19(v1, v3, v4, v5, v6, v7, v8, v9, v104[0]);
  OUTLINED_FUNCTION_20_17();
  bzero(v112, v10);
  if (setjmp(v112))
  {
    goto LABEL_68;
  }

  if (ventproc(v2, v104, v111, v110, v109, v112))
  {
    goto LABEL_68;
  }

  LOWORD(v108) = -4;
  v11 = OUTLINED_FUNCTION_27_14();
  v13 = push_ptr_init(v11, v12);
  OUTLINED_FUNCTION_39_7(v13, v14, &_MergedGlobals_1_2);
  HIWORD(v108) = 0;
  v106 = *(v2 + 3352);
  if (*(v2 + 1018) != *(v2 + 938))
  {
    goto LABEL_68;
  }

  while (2)
  {
    v106 = *(v2 + 808);
    v15 = *(v2 + 978);
    if (v15 == *(v2 + 738))
    {
      v16 = *(v2 + 978);
      if (*(v2 + 2574) == *(v2 + 3270))
      {
        v17 = *(v2 + 958);
      }

      else
      {
        v17 = *(v2 + 978);
        if (v15 != *(v2 + 958))
        {
          v18 = 30;
          goto LABEL_12;
        }
      }

LABEL_9:
      if (v16 != v17 || (v18 = 100, *(v2 + 1018) == *(v2 + 938)))
      {
LABEL_11:
        v18 = 70;
      }
    }

    else
    {
LABEL_43:
      OUTLINED_FUNCTION_30_12();
      if (v19)
      {
        v18 = 10;
      }

      else
      {
LABEL_46:
        v71 = OUTLINED_FUNCTION_26_16();
        starttest(v71, v72);
        v73 = OUTLINED_FUNCTION_23_17();
        if (lpta_loadp_setscan_r(v73, v74, v75))
        {
LABEL_47:
          v18 = 55;
        }

        else
        {
          v76 = OUTLINED_FUNCTION_33_11();
          bspush_ca_scan(v76, v77);
LABEL_49:
          *(v2 + 136) = 1;
          v78 = OUTLINED_FUNCTION_3_26();
          if (test_ptr(v78, v79, v80))
          {
            goto LABEL_27;
          }

          v18 = 85;
        }
      }
    }

LABEL_12:
    HIWORD(v107) = v18;
LABEL_13:
    OUTLINED_FUNCTION_50_4();
    if (v19)
    {
      OUTLINED_FUNCTION_48_5();
      if (!v19)
      {
LABEL_16:
        if (*(v2 + 2546) != v20)
        {
LABEL_17:
          if (*(v2 + 3210) == v20)
          {
            v21 = OUTLINED_FUNCTION_24_17();
            starttest(v21, v22);
            v23 = OUTLINED_FUNCTION_15_22();
            if (lpta_loadp_setscan_l(v23, v24, v25))
            {
LABEL_19:
              starttest(v2, 18);
              v26 = OUTLINED_FUNCTION_15_22();
              if (!lpta_loadp_setscan_l(v26, v27, v28))
              {
                v29 = OUTLINED_FUNCTION_10_25();
                if (!npush_fld(v29, 2u, v30))
                {
                  v31 = OUTLINED_FUNCTION_9_25();
                  npush_i(v31);
                  if (!if_testlt(v2, v32, v33, v34, v35, v36, v37, v38) && !advance_tok(v2, v39, v40, v41))
                  {
                    v103 = 105;
                    goto LABEL_80;
                  }
                }

                goto LABEL_27;
              }

LABEL_71:
              v103 = 70;
LABEL_80:
              HIWORD(v108) = v103;
LABEL_81:
              insert_f0(v2, &v105, &v107);
LABEL_82:
              por_boundary_tone(v2);
              break;
            }

            v42 = OUTLINED_FUNCTION_10_25();
            if (npush_fld(v42, 2u, v43))
            {
              goto LABEL_27;
            }

            npush_i(v2);
            if (if_testlt(v2, v44, v45, v46, v47, v48, v49, v50) || advance_tok(v2, v51, v52, v53))
            {
              goto LABEL_27;
            }
          }
        }

LABEL_69:
        v103 = 140;
        goto LABEL_80;
      }

      v103 = 180;
      goto LABEL_80;
    }

LABEL_34:
    if (*(v2 + 3286) > 2)
    {
      v103 = -35;
      goto LABEL_80;
    }

LABEL_35:
    OUTLINED_FUNCTION_48_5();
    if (v19)
    {
      v103 = -10;
      goto LABEL_80;
    }

LABEL_36:
    if (*(v2 + 2574) == v63)
    {
LABEL_70:
      v103 = 25;
      goto LABEL_80;
    }

LABEL_37:
    if (*(v2 + 2546) == v63)
    {
      if (*(v2 + 3310) != *(v2 + 3282))
      {
LABEL_39:
        v64 = OUTLINED_FUNCTION_53_4();
        starttest(v64, v65);
        v66 = OUTLINED_FUNCTION_54_4();
        if (!lpta_loadp_setscan_r(v66, v67, 5))
        {
          if (!testFldeq(v2, 5u, 2, 5) && !advance_tok(v2, v68, v69, v70))
          {
            v103 = 5;
            goto LABEL_80;
          }

          goto LABEL_27;
        }

        goto LABEL_70;
      }

      goto LABEL_76;
    }

LABEL_57:
    if (*(v2 + 2602) == v63)
    {
LABEL_76:
      v103 = 100;
      goto LABEL_80;
    }

LABEL_58:
    if (*(v2 + 3286) != 2)
    {
LABEL_72:
      if (*(v2 + 978) == *(v2 + 738))
      {
        v103 = 20;
      }

      else
      {
LABEL_74:
        v103 = 0;
      }

      goto LABEL_80;
    }

    starttest(v2, 29);
    v81 = OUTLINED_FUNCTION_15_22();
    if (lpta_loadp_setscan_r(v81, v82, v83) || advance_tok(v2, v84, v85, v86))
    {
      v103 = -20;
      goto LABEL_80;
    }

LABEL_61:
    if (chstream(v2, 30, 7u))
    {
      goto LABEL_27;
    }

    if (OUTLINED_FUNCTION_8_25())
    {
      goto LABEL_27;
    }

    v87 = OUTLINED_FUNCTION_12_24();
    npush_i(v87);
    if (if_testeq(v2, v88, v89, v90, v91, v92, v93, v94) || advance_tok(v2, v95, v96, v97))
    {
      goto LABEL_27;
    }

LABEL_65:
    v98 = OUTLINED_FUNCTION_58_4();
    if (!chstream(v98, v99, 2u))
    {
      *(v2 + 136) = 1;
      v100 = OUTLINED_FUNCTION_3_26();
      if (!test_ptr(v100, v101, v102))
      {
        v103 = -30;
        goto LABEL_80;
      }
    }

LABEL_27:
    v54 = *(v2 + 104);
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_25_16(v54);
    }

    else
    {
      v56 = OUTLINED_FUNCTION_12_24();
      v55 = vback(v56, v57);
    }

    v103 = -20;
    switch(v55)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_43;
      case 3:
        v16 = *(v2 + 978);
        v17 = *(v2 + 958);
        goto LABEL_9;
      case 4:
      case 6:
        goto LABEL_13;
      case 5:
        goto LABEL_11;
      case 7:
        goto LABEL_46;
      case 8:
        goto LABEL_47;
      case 9:
        v58 = OUTLINED_FUNCTION_19_18();
        if (!testFldeq(v58, v59, 4, 4) && !advance_tok(v2, v60, v61, v62))
        {
          goto LABEL_49;
        }

        goto LABEL_27;
      case 10:
        goto LABEL_49;
      case 11:
        goto LABEL_34;
      case 12:
        v20 = *(v2 + 3270);
        goto LABEL_16;
      case 13:
      case 17:
      case 19:
      case 25:
      case 32:
        goto LABEL_81;
      case 14:
        v20 = *(v2 + 3270);
        goto LABEL_17;
      case 15:
        goto LABEL_69;
      case 16:
        goto LABEL_19;
      case 18:
        goto LABEL_71;
      case 20:
        goto LABEL_35;
      case 21:
        v63 = *(v2 + 3270);
        goto LABEL_36;
      case 22:
        v63 = *(v2 + 3270);
        goto LABEL_37;
      case 23:
        v63 = *(v2 + 3270);
        goto LABEL_57;
      case 24:
        goto LABEL_39;
      case 26:
        goto LABEL_70;
      case 27:
        goto LABEL_58;
      case 28:
        goto LABEL_72;
      case 29:
        goto LABEL_80;
      case 30:
        goto LABEL_61;
      case 31:
        goto LABEL_65;
      case 33:
        goto LABEL_74;
      case 34:
        goto LABEL_82;
      default:
        goto LABEL_68;
    }
  }

LABEL_68:
  vretproc(v2);
  OUTLINED_FUNCTION_60_4();
}

uint64_t por_first_postnucl_accent(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(*MEMORY[0x277D85DE8]);
  HIDWORD(v32) = v3;
  LODWORD(v33) = v3;
  OUTLINED_FUNCTION_21_17();
  bzero(v31, v4);
  OUTLINED_FUNCTION_6_25(v5, v6, v7, v8, v9, v10, v11, v12, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], v31[22], v32, v33, v34, v35[0], v35[1]);
  if (setjmp(v1) || ventproc(a1, v31, v35 + 7, &v34 + 6, &v33 + 4, v36))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v14 = OUTLINED_FUNCTION_11_24();
    fence_25(v14, v15, v16);
    OUTLINED_FUNCTION_50_4();
    if (v18)
    {
      v17 = 7;
    }

    else
    {
      OUTLINED_FUNCTION_30_12();
      if (v18)
      {
        if (*(a1 + 734) == 1)
        {
          v17 = 90;
        }

        else
        {
          v17 = 40;
        }
      }

      else
      {
        v17 = 50;
      }
    }

    WORD1(v33) = v17;
    v19 = OUTLINED_FUNCTION_24_17();
    set_first_postnuc_value(v19, v20, v21, v22, v23, v24, v25, v26);
    *(a1 + 4914) = HIWORD(v32);
    v27 = OUTLINED_FUNCTION_22_17();
    insert_f0(v27, v28, v29);
    vretproc(a1);
    return 0;
  }
}

uint64_t por_boundary_tone(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  HIDWORD(v52) = 65532;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  OUTLINED_FUNCTION_21_17();
  bzero(&v27, v2);
  OUTLINED_FUNCTION_20_17();
  bzero(v62, v3);
  v4 = setjmp(v62);
  if (!v4 && !OUTLINED_FUNCTION_32_11(v4, &v27, v5, v6, v7, v8, v9, v10, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61))
  {
    v12 = OUTLINED_FUNCTION_40_6();
    get_parm(v12, v13, v14, -4);
    push_ptr_init(a1, &v50);
    fence_25(a1, 0, &_MergedGlobals_1_2);
    v51 = *(a1 + 3352);
    v15 = OUTLINED_FUNCTION_23_17();
    if (!lpta_loadp_setscan_l(v15, v16, v17) && !advance_tok(a1, v18, v19, v20))
    {
      OUTLINED_FUNCTION_34_10(2, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    }

    HIWORD(v52) = 99;
    v21 = *(a1 + 3282);
    if (*(a1 + 3310) == v21)
    {
      v22 = HIWORD(v53);
      HIWORD(v53) += 10;
      if (*(a1 + 3286) < 2)
      {
LABEL_15:
        insert_f0(a1, &v50, &v52 + 2);
        vretproc(a1);
        return 0;
      }

      v23 = v22 + 20;
    }

    else
    {
      if (*(a1 + 3314) != v21)
      {
        goto LABEL_15;
      }

      v24 = HIWORD(v53);
      HIWORD(v53) -= 10;
      if (*(a1 + 3286) < 2)
      {
        goto LABEL_15;
      }

      v23 = v24 - 20;
    }

    HIWORD(v53) = v23;
    goto LABEL_15;
  }

  vretproc(a1);
  return 94;
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_3_26()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_6_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  bzero(va, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_8_25()
{

  return npush_fld(v0, 7u, 0);
}

void OUTLINED_FUNCTION_18_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_31_12@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44)
{

  return ventproc(v44, a2, &a44, &a40, &a37, v45 - 232);
}

double OUTLINED_FUNCTION_34_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_39_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_25(v3, 0, a3);
}

double OUTLINED_FUNCTION_42_5@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_55_4(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, a2);
}

void *fence_26(uint64_t a1, int a2, uint64_t a3)
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

uint64_t find_por_nucleus(void *a1)
{
  v76 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_39_8();
  bzero(&v48, v3);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_72_4(v4, v5, v6, v7, v8, v9, v10, v11, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  v12 = setjmp(v1);
  if (v12 || (v20 = OUTLINED_FUNCTION_9_26(v12, v13, v14, v15, v16, v17, v18, v19, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, SHIDWORD(v71), v72, SWORD2(v72), SHIWORD(v72), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v74, v75), v20))
  {
LABEL_3:
    v22 = 94;
    goto LABEL_4;
  }

  v22 = 0;
  v24 = OUTLINED_FUNCTION_64_4(v20, v21, &null_str_7);
  OUTLINED_FUNCTION_54_5(v24, v25, &string_1_0);
  OUTLINED_FUNCTION_69_4();
  v26 = OUTLINED_FUNCTION_23_18();
  if (lpta_loadp_setscan_r(v26, v27, v28))
  {
    goto LABEL_4;
  }

  while (2)
  {
    v29 = OUTLINED_FUNCTION_24_18();
    bspush_ca_scan(v29, v30);
    v31 = OUTLINED_FUNCTION_48_6();
    bspush_ca_scan(v31, v32);
    if (advanc(a1))
    {
LABEL_11:
      v41 = a1[13];
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_40_7(v41);
      }

      else
      {
        v46 = OUTLINED_FUNCTION_32_12();
        v42 = vback(v46, v47);
      }

      switch(v42)
      {
        case 1:
          goto LABEL_18;
        case 2:
          continue;
        case 3:
          if (!advance_tok(a1, v43, v44, v45))
          {
            continue;
          }

          goto LABEL_11;
        case 4:
          goto LABEL_7;
        case 5:
          goto LABEL_17;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_7:
  savescptr(a1, 4, (a1 + 100));
  if (testFldeq(a1, 4u, 1, 2))
  {
    goto LABEL_11;
  }

  if (advance_tok(a1, v33, v34, v35))
  {
    goto LABEL_11;
  }

  v36 = OUTLINED_FUNCTION_59_5();
  bspush_ca_scan(v36, v37);
  if (testFldeq(a1, 4u, 4, 6) || advance_tok(a1, v38, v39, v40))
  {
    goto LABEL_11;
  }

LABEL_17:
  savescptr(a1, 5, (a1 + 102));
LABEL_18:
  v22 = 0;
LABEL_4:
  vretproc(a1);
  return v22;
}

uint64_t assign_por_nuc_durs(void *a1)
{
  v73 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_39_8();
  bzero(&v45, v3);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_72_4(v4, v5, v6, v7, v8, v9, v10, v11, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v12 = setjmp(v1);
  if (v12 || (v20 = OUTLINED_FUNCTION_9_26(v12, v13, v14, v15, v16, v17, v18, v19, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, SHIDWORD(v68), v69, SWORD2(v69), SHIWORD(v69), v70, SWORD2(v70), SBYTE6(v70), SHIBYTE(v70), v71, v72), v20))
  {
    v22 = 94;
  }

  else
  {
    v22 = 0;
    OUTLINED_FUNCTION_64_4(v20, v21, &null_str_7);
    a1[649] = 0xBFF0000000000000;
    a1[647] = 0xBFF0000000000000;
    a1[645] = 0xBFF0000000000000;
    assign_por_start_dur(a1);
    adjust_for_glides(a1);
    context_adjust(a1);
    word_stress_adjust(a1, v24, v25, v26, v27, v28, v29, v30);
    word_syll_adjust(a1);
    shorten_weak_syllables(a1);
    phrase_word_final_dur(a1, v31, v32, v33, v34, v35, v36, v37);
    adjust_single_word(a1, v38, v39, v40, v41, v42, v43, v44);
    distribute_nucdur(a1);
  }

  vretproc(a1);
  return v22;
}

uint64_t assign_por_start_dur(uint64_t a1)
{
  v132 = *MEMORY[0x277D85DE8];
  v119 = 0;
  v120 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(&v96, v2);
  OUTLINED_FUNCTION_38_9();
  bzero(v131, v3);
  v4 = setjmp(v131);
  if (v4 || OUTLINED_FUNCTION_17_21(v4, v5, v6, v7, v8, v9, v10, v11, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v13 = OUTLINED_FUNCTION_46_6();
  push_ptr_init(v13, v14);
  fence_26(a1, 0, &null_str_7);
  v15 = OUTLINED_FUNCTION_21_18();
  starttest(v15, v16);
  v17 = OUTLINED_FUNCTION_3_27();
  if (!lpta_loadp_setscan_r(v17, v18, v19))
  {
    v29 = OUTLINED_FUNCTION_22_18();
    if (OUTLINED_FUNCTION_65_4(v29, v30) || advance_tok(a1, v31, v32, v33))
    {
      goto LABEL_25;
    }

    v34 = OUTLINED_FUNCTION_16_22();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_3_27();
    if (lpta_loadp_setscan_l(v36, v37, v38))
    {
LABEL_17:
      v48 = OUTLINED_FUNCTION_21_18();
      starttest(v48, v49);
      v50 = OUTLINED_FUNCTION_3_27();
      if (lpta_loadp_setscan_l(v50, v51, v52))
      {
LABEL_43:
        v88 = 0x4049000000000000;
        goto LABEL_44;
      }

LABEL_18:
      OUTLINED_FUNCTION_70_4(8, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
      v53 = OUTLINED_FUNCTION_20_18();
      bspush_ca_scan(v53, v54);
LABEL_19:
      OUTLINED_FUNCTION_1_28();
      if (!test_string_s())
      {
LABEL_20:
        v55 = OUTLINED_FUNCTION_23_18();
        if (!lpta_loadp_setscan_r(v55, v56, v57) && !advance_tok(a1, v58, v59, v60))
        {
          OUTLINED_FUNCTION_1_28();
          if (!test_string_s())
          {
            v47 = 25.0;
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
LABEL_11:
      OUTLINED_FUNCTION_70_4(3, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
      v39 = OUTLINED_FUNCTION_52_5();
      bspush_ca_scan(v39, v40);
      OUTLINED_FUNCTION_51_5();
LABEL_12:
      if (!test_string_s())
      {
LABEL_13:
        v41 = OUTLINED_FUNCTION_23_18();
        if (!lpta_loadp_setscan_r(v41, v42, v43) && !advance_tok(a1, v44, v45, v46))
        {
          OUTLINED_FUNCTION_1_28();
          if (!test_string_s())
          {
            v47 = 8.0;
            goto LABEL_45;
          }
        }
      }
    }

    goto LABEL_25;
  }

  while (2)
  {
    v20 = OUTLINED_FUNCTION_21_18();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_3_27();
    if (!lpta_loadp_setscan_r(v22, v23, v24))
    {
      OUTLINED_FUNCTION_22_18();
      OUTLINED_FUNCTION_76_4();
      goto LABEL_24;
    }

LABEL_30:
    v68 = OUTLINED_FUNCTION_21_18();
    starttest(v68, v69);
    v70 = OUTLINED_FUNCTION_3_27();
    if (!lpta_loadp_setscan_r(v70, v71, v72))
    {
      v89 = OUTLINED_FUNCTION_21_18();
      bspush_ca_scan(v89, v90);
      v25 = OUTLINED_FUNCTION_6_26();
      v28 = 33;
LABEL_24:
      if (testFldeq(v25, v26, v27, v28))
      {
        goto LABEL_25;
      }

LABEL_41:
      if (!advance_tok(a1, v61, v62, v63))
      {
        v88 = 0x405E000000000000;
        goto LABEL_44;
      }

LABEL_25:
      v64 = *(a1 + 104);
      if (v64)
      {
        v65 = OUTLINED_FUNCTION_40_7(v64);
      }

      else
      {
        v66 = OUTLINED_FUNCTION_32_12();
        v65 = vback(v66, v67);
      }

      switch(v65)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_17;
        case 3:
          goto LABEL_11;
        case 4:
          OUTLINED_FUNCTION_22_18();
          goto LABEL_12;
        case 5:
          goto LABEL_13;
        case 6:
        case 11:
          goto LABEL_46;
        case 7:
          goto LABEL_43;
        case 8:
          goto LABEL_18;
        case 9:
          goto LABEL_19;
        case 10:
          goto LABEL_20;
        case 12:
          goto LABEL_30;
        case 13:
          goto LABEL_31;
        case 14:
          v25 = OUTLINED_FUNCTION_6_26();
          v28 = 34;
          goto LABEL_24;
        case 15:
          goto LABEL_41;
        case 16:
          goto LABEL_32;
        case 17:
          goto LABEL_40;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_31:
  v73 = OUTLINED_FUNCTION_21_18();
  starttest(v73, v74);
  v75 = OUTLINED_FUNCTION_3_27();
  if (!lpta_loadp_setscan_r(v75, v76, v77))
  {
    v91 = OUTLINED_FUNCTION_22_18();
    if (testFldeq(v91, v92, 5, 6) || advance_tok(a1, v93, v94, v95))
    {
      goto LABEL_25;
    }

LABEL_40:
    v47 = 110.0;
    goto LABEL_45;
  }

LABEL_32:
  v78 = OUTLINED_FUNCTION_21_18();
  starttest(v78, v79);
  v80 = OUTLINED_FUNCTION_3_27();
  if (lpta_loadp_setscan_r(v80, v81, v82))
  {
    goto LABEL_40;
  }

  v83 = OUTLINED_FUNCTION_22_18();
  if (OUTLINED_FUNCTION_73_4(v83, v84) || advance_tok(a1, v85, v86, v87))
  {
    goto LABEL_25;
  }

  v88 = 0x4059000000000000;
LABEL_44:
  v47 = *&v88;
LABEL_45:
  *(a1 + 4272) = v47;
LABEL_46:
  vretproc(a1);
  return 0;
}

uint64_t adjust_for_glides(uint64_t a1)
{
  v215 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_39_8();
  bzero(&v187, v3);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_72_4(v4, v5, v6, v7, v8, v9, v10, v11, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
  v12 = setjmp(v1);
  if (v12 || (v20 = OUTLINED_FUNCTION_9_26(v12, v13, v14, v15, v16, v17, v18, v19, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, SHIDWORD(v210), v211, SWORD2(v211), SHIWORD(v211), v212, SWORD2(v212), SBYTE6(v212), SHIBYTE(v212), v213, v214), v20))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v23 = 0;
  v24 = OUTLINED_FUNCTION_64_4(v20, v21, &null_str_7);
  OUTLINED_FUNCTION_54_5(v24, v25, &_MergedGlobals_23);
  OUTLINED_FUNCTION_69_4();
  if (!*(a1 + 962))
  {
    v26 = OUTLINED_FUNCTION_3_27();
    v23 = 0;
    if (!lpta_loadp_setscan_r(v26, v27, v28))
    {
      v29 = OUTLINED_FUNCTION_22_18();
      if (testFldeq(v29, v30, 0, 36))
      {
        goto LABEL_51;
      }

      v23 = 0;
      if (advance_tok(a1, v31, v32, v33))
      {
        goto LABEL_51;
      }

      v34 = 50.0;
      goto LABEL_29;
    }
  }

  while (2)
  {
    v35 = OUTLINED_FUNCTION_21_18();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_3_27();
    if (!lpta_loadp_setscan_r(v37, v38, v39))
    {
      v57 = OUTLINED_FUNCTION_5_26();
      if (!testFldeq(v57, v58, v59, v60) && !advance_tok(a1, v61, v62, v63))
      {
        v64 = OUTLINED_FUNCTION_2_28();
        if (!testFldeq(v64, v65, v66, v67))
        {
          OUTLINED_FUNCTION_52_5();
          bspush_ca_scan_boa();
          v82 = OUTLINED_FUNCTION_31_13();
          if (!testFldeq(v82, 4u, v83, 27))
          {
            v23 = 1;
          }
        }
      }

      goto LABEL_51;
    }

LABEL_11:
    v40 = OUTLINED_FUNCTION_21_18();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_3_27();
    if (!lpta_loadp_setscan_r(v42, v43, v44))
    {
      v68 = OUTLINED_FUNCTION_1_28();
      if (testFldeq(v68, v69, v70, 2))
      {
        goto LABEL_51;
      }

      if (advance_tok(a1, v71, v72, v73))
      {
        goto LABEL_51;
      }

      v74 = OUTLINED_FUNCTION_2_28();
      if (testFldeq(v74, v75, v76, v77))
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_18_20();
      bspush_ca_scan_boa();
      v78 = OUTLINED_FUNCTION_6_26();
      v81 = 27;
LABEL_49:
      if (!testFldeq(v78, v79, v80, v81))
      {
        v23 = 1;
      }

      goto LABEL_51;
    }

LABEL_12:
    v45 = OUTLINED_FUNCTION_16_22();
    starttest(v45, v46);
    if (!*(a1 + 962))
    {
      v47 = OUTLINED_FUNCTION_3_27();
      if (!lpta_loadp_setscan_r(v47, v48, v49))
      {
        v50 = OUTLINED_FUNCTION_5_26();
        if (testFldeq(v50, v51, v52, v53) || advance_tok(a1, v54, v55, v56))
        {
          goto LABEL_51;
        }

        v34 = 20.0;
LABEL_29:
        *(a1 + 4272) = *(a1 + 4272) + v34;
      }
    }

LABEL_31:
    v84 = OUTLINED_FUNCTION_21_18();
    starttest(v84, v85);
    OUTLINED_FUNCTION_53_5();
    if (!v86 || (v87 = OUTLINED_FUNCTION_3_27(), lpta_loadp_setscan_r(v87, v88, v89)))
    {
LABEL_42:
      v103 = OUTLINED_FUNCTION_20_18();
      starttest(v103, v104);
      OUTLINED_FUNCTION_34_11();
      if (v105 != v106)
      {
        v107 = OUTLINED_FUNCTION_3_27();
        if (!lpta_loadp_setscan_r(v107, v108, v109))
        {
          v110 = OUTLINED_FUNCTION_1_28();
          if (testFldeq(v110, v111, v112, 2))
          {
            goto LABEL_51;
          }

          v113 = OUTLINED_FUNCTION_22_18();
          if (npush_fld(v113, v114, 8u))
          {
            goto LABEL_51;
          }

          v115 = OUTLINED_FUNCTION_32_12();
          npush_i(v115);
          if (if_testeq(a1, v116, v117, v118, v119, v120, v121, v122))
          {
            goto LABEL_51;
          }

          OUTLINED_FUNCTION_21_18();
          bspush_ca_scan_boa();
          v78 = OUTLINED_FUNCTION_5_26();
          goto LABEL_49;
        }
      }

LABEL_70:
      v159 = OUTLINED_FUNCTION_21_18();
      starttest(v159, v160);
      OUTLINED_FUNCTION_34_11();
      if (v105 ^ v106 | v86)
      {
        goto LABEL_40;
      }

      v161 = OUTLINED_FUNCTION_3_27();
      if (lpta_loadp_setscan_r(v161, v162, v163))
      {
        goto LABEL_40;
      }

      v164 = OUTLINED_FUNCTION_6_26();
      if (!testFldeq(v164, v165, v166, 29))
      {
        v167 = OUTLINED_FUNCTION_22_18();
        if (!npush_fld(v167, v168, 8u))
        {
          v169 = OUTLINED_FUNCTION_32_12();
          npush_i(v169);
          if (!if_testeq(a1, v170, v171, v172, v173, v174, v175, v176) && !advance_tok(a1, v177, v178, v179))
          {
            v180 = OUTLINED_FUNCTION_6_26();
            if (!testFldeq(v180, v181, v182, 25) && !advance_tok(a1, v183, v184, v185))
            {
              v96 = OUTLINED_FUNCTION_1_28();
              v99 = 1;
              goto LABEL_37;
            }
          }
        }
      }

LABEL_51:
      v123 = v23;
LABEL_52:
      v124 = *(a1 + 104);
      if (v124)
      {
        v125 = OUTLINED_FUNCTION_40_7(v124);
        v127 = v126;
      }

      else
      {
        v125 = vback(a1, v123);
        v127 = 0;
      }

      switch(v125)
      {
        case 1:
          v23 = v127;
          continue;
        case 2:
          v23 = v127;
          goto LABEL_31;
        case 3:
          v23 = v127;
          goto LABEL_11;
        case 4:
          bspop_boa(a1);
          v131 = advance_tok(a1, v128, v129, v130);
          v123 = v127;
          if (v131)
          {
            goto LABEL_52;
          }

          v186 = 0x404E000000000000;
          goto LABEL_79;
        case 5:
          v23 = v127;
          goto LABEL_12;
        case 6:
          bspop_boa(a1);
          v142 = advance_tok(a1, v139, v140, v141);
          v123 = v127;
          if (v142)
          {
            goto LABEL_52;
          }

          v186 = 0x4044000000000000;
LABEL_79:
          v34 = *&v186;
          v23 = v127;
          goto LABEL_29;
        case 7:
          v23 = v127;
          goto LABEL_42;
        case 8:
          goto LABEL_40;
        case 9:
          v23 = v127;
          goto LABEL_70;
        case 10:
          bspop_boa(a1);
          v146 = advance_tok(a1, v143, v144, v145);
          v123 = v127;
          if (v146)
          {
            goto LABEL_52;
          }

          v147 = OUTLINED_FUNCTION_6_26();
          v150 = testFldeq(v147, v148, v149, 25);
          v123 = v127;
          if (v150)
          {
            goto LABEL_52;
          }

          v153 = advance_tok(a1, v127, v151, v152);
          v123 = v127;
          if (v153)
          {
            goto LABEL_52;
          }

          v154 = OUTLINED_FUNCTION_24_18();
          bspush_ca_scan(v154, v155);
          goto LABEL_67;
        case 11:
          v132 = OUTLINED_FUNCTION_1_28();
          v135 = testFldeq(v132, v133, v134, 1);
          v123 = v127;
          if (v135)
          {
            goto LABEL_52;
          }

          v138 = advance_tok(a1, v127, v136, v137);
          v123 = v127;
          if (v138)
          {
            goto LABEL_52;
          }

          goto LABEL_67;
        case 12:
LABEL_67:
          v156 = OUTLINED_FUNCTION_48_6();
          v158 = test_synch(v156, v157, 1, &unk_2806BBEFC);
          v123 = v127;
          if (!v158)
          {
            goto LABEL_39;
          }

          goto LABEL_52;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v90 = OUTLINED_FUNCTION_1_28();
  if (testFldeq(v90, v91, v92, 2) || advance_tok(a1, v93, v94, v95))
  {
    goto LABEL_51;
  }

  v96 = OUTLINED_FUNCTION_2_28();
LABEL_37:
  if (testFldeq(v96, v97, v98, v99) || advance_tok(a1, v100, v101, v102))
  {
    goto LABEL_51;
  }

LABEL_39:
  *(a1 + 4272) = *(a1 + 4272) + 30.0;
LABEL_40:
  vretproc(a1);
  return 0;
}

uint64_t context_adjust(uint64_t a1)
{
  v557 = *MEMORY[0x277D85DE8];
  v552 = 0;
  v551[1] = 0;
  v551[0] = 0;
  v550 = 0;
  v549 = 0;
  v548 = 0;
  OUTLINED_FUNCTION_39_8();
  bzero(v547, v2);
  OUTLINED_FUNCTION_38_9();
  bzero(v556, v3);
  if (setjmp(v556) || ventproc(a1, v547, v555, v554, v553, v556))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  LOWORD(v552) = -4;
  v5 = push_ptr_init(a1, v551);
  v550 = 0;
  LOWORD(v549) = -5;
  v548 = 65532;
  v6 = 0;
  OUTLINED_FUNCTION_64_4(v5, v7, &null_str_7);
  HIWORD(v552) = 0;
  v8 = OUTLINED_FUNCTION_51_5();
  fence_26(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_36_10();
  if (if_testlt_v_i(v11, v12, 75, v13, v14, v15, v16, v17))
  {
LABEL_5:
    v18 = OUTLINED_FUNCTION_36_10();
    if (if_testlt_v_i(v18, v19, 50, v20, v21, v22, v23, v24))
    {
LABEL_8:
      v26 = OUTLINED_FUNCTION_36_10();
      if (if_testlt_v_i(v26, v27, 25, v28, v29, v30, v31, v32))
      {
LABEL_9:
        v33 = OUTLINED_FUNCTION_36_10();
        if (if_testlt_v_i(v33, v34, 10, v35, v36, v37, v38, v39))
        {
LABEL_10:
          v25 = 40;
        }

        else
        {
          v25 = 30;
        }
      }

      else
      {
        v25 = 20;
      }
    }

    else
    {
      v25 = 10;
    }
  }

  else
  {
    v25 = 5;
  }

  v40 = v6;
  HIWORD(v552) = v25;
  v41 = 7;
  v42 = 9;
  v43 = 24;
  v44 = 25;
  v45 = 26;
  v46 = 29;
  v47 = 31;
  v48 = 33;
  v49 = 34;
  v50 = 35;
  v51 = 36;
  v52 = 37;
  v53 = 38;
  v54 = 27;
  v55 = 39;
  v56 = 40;
  v57 = 41;
  v58 = 42;
  v59 = 94;
  while (2)
  {
    v528 = v59;
    v529 = v58;
    v530 = v57;
    v6 = v40;
    if (*(a1 + 978) > *(a1 + 958))
    {
      v531 = v56;
      v532 = v55;
      v533 = v54;
      v534 = v53;
      v535 = v52;
      v536 = v51;
      v537 = v50;
      v538 = v49;
      v539 = v48;
      v540 = v47;
      v541 = v46;
      v542 = v45;
      v543 = v44;
      v544 = v43;
      v60 = OUTLINED_FUNCTION_47_6();
      starttest(v60, v61);
      v62 = OUTLINED_FUNCTION_0_30();
      if (!lpta_loadp_setscan_l(v62, v63, v64))
      {
LABEL_35:
        v545 = v42;
        v546 = v41;
        v111 = OUTLINED_FUNCTION_57_5();
        savescptr(v111, 8, v551);
        v112 = OUTLINED_FUNCTION_8_26();
        if (testFldeq(v112, v113, v114, 2) || advance_tok(a1, v115, v116, v117))
        {
          goto LABEL_224;
        }

        OUTLINED_FUNCTION_42_6();
        OUTLINED_FUNCTION_66_4();
        if (v118)
        {
          goto LABEL_64;
        }

LABEL_38:
        v119 = OUTLINED_FUNCTION_74_4();
        test_synch(v119, v545, 1, &unk_2806BBEFC);
        goto LABEL_39;
      }

LABEL_16:
      v545 = v42;
      v546 = v41;
      starttest(a1, 11);
      v65 = OUTLINED_FUNCTION_3_27();
      if (!lpta_loadp_setscan_l(v65, v66, v67))
      {
LABEL_17:
        savescptr(a1, 12, v551);
LABEL_18:
        if (test_synch(a1, 13, 1, &unk_2806BBEFC))
        {
          goto LABEL_224;
        }

        if (OUTLINED_FUNCTION_42_6())
        {
          goto LABEL_224;
        }

        v68 = OUTLINED_FUNCTION_8_26();
        if (testFldeq(v68, v69, v70, 2))
        {
          goto LABEL_224;
        }

        advance_tok(a1, v71, v72, v73);
        goto LABEL_39;
      }

LABEL_178:
      v436 = OUTLINED_FUNCTION_67_4();
      starttest(v436, 14);
      v437 = OUTLINED_FUNCTION_0_30();
      lpta_loadp_setscan_l(v437, v438, v439);
      OUTLINED_FUNCTION_61_5();
      if (!v440)
      {
LABEL_188:
        savescptr(a1, 15, v551);
        v463 = OUTLINED_FUNCTION_8_26();
        if (testFldeq(v463, v464, v465, 2))
        {
          goto LABEL_224;
        }

        if (advance_tok(a1, v466, v467, v468))
        {
          goto LABEL_224;
        }

        *(a1 + 136) = 1;
        v469 = OUTLINED_FUNCTION_4_26();
        if (test_ptr(v469, v470, v471))
        {
          goto LABEL_224;
        }

        v472 = OUTLINED_FUNCTION_8_26();
        if (testFldeq(v472, v473, v474, 2))
        {
          goto LABEL_224;
        }

        if (advance_tok(a1, v475, v476, v477))
        {
          goto LABEL_224;
        }

        if (OUTLINED_FUNCTION_42_6())
        {
          goto LABEL_224;
        }

        v478 = OUTLINED_FUNCTION_8_26();
        if (testFldeq(v478, v479, v480, 2) || advance_tok(a1, v481, v482, v483))
        {
          goto LABEL_224;
        }

        starttest_e(a1, 16);
        OUTLINED_FUNCTION_26_17();
        v371 = 1.3;
        goto LABEL_205;
      }

LABEL_179:
      v441 = OUTLINED_FUNCTION_57_5();
      starttest(v441, 17);
      v442 = OUTLINED_FUNCTION_0_30();
      if (lpta_loadp_setscan_l(v442, v443, v444))
      {
LABEL_180:
        starttest(a1, 10);
        v445 = OUTLINED_FUNCTION_0_30();
        if (lpta_loadp_setscan_l(v445, v446, v447))
        {
          goto LABEL_40;
        }

LABEL_181:
        savescptr(a1, 19, v551);
        v448 = OUTLINED_FUNCTION_8_26();
        if (testFldeq(v448, v449, v450, 2))
        {
          goto LABEL_224;
        }

        if (advance_tok(a1, v451, v452, v453))
        {
          goto LABEL_224;
        }

        *(a1 + 136) = 1;
        v454 = OUTLINED_FUNCTION_4_26();
        if (test_ptr(v454, v455, v456))
        {
          goto LABEL_224;
        }

        if (OUTLINED_FUNCTION_42_6())
        {
          goto LABEL_224;
        }

        v457 = OUTLINED_FUNCTION_8_26();
        if (testFldeq(v457, v458, v459, 2) || advance_tok(a1, v460, v461, v462))
        {
          goto LABEL_224;
        }

        v98 = a1;
        v99 = 20;
      }

      else
      {
        v484 = OUTLINED_FUNCTION_8_26();
        if (testFldeq(v484, v485, v486, 2))
        {
          goto LABEL_224;
        }

        if (advance_tok(a1, v487, v488, v489))
        {
          goto LABEL_224;
        }

        *(a1 + 136) = 1;
        v490 = OUTLINED_FUNCTION_4_26();
        if (test_ptr(v490, v491, v492))
        {
          goto LABEL_224;
        }

        v493 = OUTLINED_FUNCTION_8_26();
        if (testFldeq(v493, v494, v495, 2) || advance_tok(a1, v496, v497, v498))
        {
          goto LABEL_224;
        }

        v98 = a1;
        v99 = 18;
      }

      goto LABEL_203;
    }

LABEL_22:
    v531 = v56;
    v532 = v55;
    v533 = v54;
    v534 = v53;
    v535 = v52;
    v536 = v51;
    v537 = v50;
    v538 = v49;
    v539 = v48;
    v540 = v47;
    v541 = v46;
    v542 = v45;
    v543 = v44;
    v544 = v43;
    v545 = v42;
    v546 = v41;
    if (*(a1 + 978) != *(a1 + 958))
    {
LABEL_113:
      starttest(a1, 21);
      OUTLINED_FUNCTION_34_11();
      if (v328 == v329)
      {
        goto LABEL_40;
      }

      v330 = OUTLINED_FUNCTION_0_30();
      if (lpta_loadp_setscan_r(v330, v331, v332))
      {
        goto LABEL_40;
      }

      v337 = OUTLINED_FUNCTION_8_26();
      if (testFldeq(v337, v338, v339, 2) || advance_tok(a1, v340, v341, v342))
      {
        goto LABEL_224;
      }

      starttest(a1, v531);
      v343 = OUTLINED_FUNCTION_0_30();
      if (!lpta_loadp_setscan_l(v343, v344, v345))
      {
LABEL_173:
        v434 = OUTLINED_FUNCTION_57_5();
        savescptr(v434, v530, v551);
        bspush_ca_scan(a1, v529);
        v366 = OUTLINED_FUNCTION_6_26();
        v369 = 28;
LABEL_138:
        v370 = testFldeq(v366, v367, v368, v369);
        v189 = v6;
        v109 = v6;
        if (v370)
        {
          goto LABEL_64;
        }

LABEL_139:
        LODWORD(v6) = v189;
        if (advance_tok(a1, v109, v190, v189))
        {
          goto LABEL_224;
        }

        if (OUTLINED_FUNCTION_42_6())
        {
          goto LABEL_224;
        }

        OUTLINED_FUNCTION_8_26();
        if (test_string_s())
        {
          goto LABEL_224;
        }

        starttest_e(a1, 44);
        OUTLINED_FUNCTION_26_17();
        v371 = 1.4;
        goto LABEL_205;
      }

LABEL_125:
      starttest(a1, 45);
      goto LABEL_204;
    }

    starttest(a1, 23);
    v74 = OUTLINED_FUNCTION_3_27();
    if (!lpta_loadp_setscan_l(v74, v75, v76))
    {
LABEL_211:
      v500 = OUTLINED_FUNCTION_57_5();
      savescptr(v500, v544, v551);
      v501 = OUTLINED_FUNCTION_8_26();
      if (testFldeq(v501, v502, v503, 2))
      {
        goto LABEL_224;
      }

      if (advance_tok(a1, v504, v505, v506))
      {
        goto LABEL_224;
      }

      if (OUTLINED_FUNCTION_42_6())
      {
        goto LABEL_224;
      }

      v507 = OUTLINED_FUNCTION_8_26();
      if (testFldeq(v507, v508, v509, 2) || advance_tok(a1, v510, v511, v512))
      {
        goto LABEL_224;
      }

      *(a1 + 136) = 1;
      v513 = OUTLINED_FUNCTION_4_26();
      test_ptr(v513, v514, v515);
      OUTLINED_FUNCTION_66_4();
      if (v516)
      {
        goto LABEL_64;
      }

LABEL_175:
      v435 = OUTLINED_FUNCTION_74_4();
      if (test_synch(v435, v543, 1, &unk_2806BBEFC))
      {
        goto LABEL_224;
      }

      v358 = a1;
      v359 = v542;
      goto LABEL_177;
    }

LABEL_24:
    starttest(a1, 28);
    v77 = OUTLINED_FUNCTION_3_27();
    if (!lpta_loadp_setscan_r(v77, v78, v79))
    {
      v100 = OUTLINED_FUNCTION_8_26();
      if (!testFldeq(v100, v101, v102, 2) && !advance_tok(a1, v103, v104, v105))
      {
        *(a1 + 136) = 1;
        v106 = OUTLINED_FUNCTION_4_26();
        test_ptr(v106, v107, v108);
        OUTLINED_FUNCTION_66_4();
        if (v110)
        {
          goto LABEL_64;
        }

LABEL_208:
        v499 = OUTLINED_FUNCTION_74_4();
        if (!test_synch(v499, v541, 1, &unk_2806BBEFC))
        {
          bspush_ca_scan_boa();
LABEL_210:
          v186 = test_synch(a1, v540, 1, &_MergedGlobals_23);
          goto LABEL_61;
        }
      }

      goto LABEL_224;
    }

LABEL_25:
    starttest(a1, v539);
    v80 = OUTLINED_FUNCTION_0_30();
    if (!lpta_loadp_setscan_l(v80, v81, v82))
    {
LABEL_126:
      savescptr(a1, v538, v551);
      v346 = OUTLINED_FUNCTION_8_26();
      if (testFldeq(v346, v347, v348, 2))
      {
        goto LABEL_224;
      }

      if (advance_tok(a1, v349, v350, v351))
      {
        goto LABEL_224;
      }

      if (OUTLINED_FUNCTION_42_6())
      {
        goto LABEL_224;
      }

      v352 = OUTLINED_FUNCTION_8_26();
      if (testFldeq(v352, v353, v354, 2) || advance_tok(a1, v355, v356, v357))
      {
        goto LABEL_224;
      }

      v358 = a1;
      v359 = v537;
LABEL_177:
      starttest_e(v358, v359);
      OUTLINED_FUNCTION_26_17();
      goto LABEL_205;
    }

LABEL_26:
    v83 = OUTLINED_FUNCTION_67_4();
    starttest(v83, v536);
    v84 = OUTLINED_FUNCTION_3_27();
    lpta_loadp_setscan_l(v84, v85, v86);
    OUTLINED_FUNCTION_61_5();
    if (v87)
    {
LABEL_27:
      v88 = OUTLINED_FUNCTION_57_5();
      starttest(v88, v533);
      v89 = OUTLINED_FUNCTION_0_30();
      if (lpta_loadp_setscan_r(v89, v90, v91))
      {
        goto LABEL_40;
      }

      v92 = OUTLINED_FUNCTION_8_26();
      if (testFldeq(v92, v93, v94, 2) || advance_tok(a1, v95, v96, v97))
      {
        goto LABEL_224;
      }

      v98 = a1;
      v99 = v532;
    }

    else
    {
LABEL_152:
      savescptr(a1, v535, v551);
      v386 = OUTLINED_FUNCTION_8_26();
      if (testFldeq(v386, v387, v388, 2) || advance_tok(a1, v389, v390, v391) || OUTLINED_FUNCTION_42_6() || advance_tok(a1, v392, v393, v394))
      {
        goto LABEL_224;
      }

      v98 = a1;
      v99 = v534;
    }

LABEL_203:
    starttest_e(v98, v99);
LABEL_204:
    OUTLINED_FUNCTION_26_17();
    v371 = 1.1;
LABEL_205:
    move_f(v371);
    v374 = a1;
LABEL_206:
    move_i(v374, &v548, 300);
    OUTLINED_FUNCTION_47_6();
    setdur();
LABEL_39:
    OUTLINED_FUNCTION_66_4();
    if (v120)
    {
      goto LABEL_64;
    }

LABEL_40:
    v121 = OUTLINED_FUNCTION_59_5();
    starttest(v121, v122);
    v123 = OUTLINED_FUNCTION_0_30();
    lpta_loadp_setscan_l(v123, v124, v125);
    OUTLINED_FUNCTION_61_5();
    if (!v127)
    {
LABEL_55:
      savescptr(a1, 47, v551);
      v172 = v6;
LABEL_56:
      LODWORD(v6) = v172;
      bspush_ca_scan(a1, 50);
      if (!advance_tok(a1, v173, v174, v175))
      {
        *(a1 + 136) = 1;
        v176 = OUTLINED_FUNCTION_4_26();
        if (!test_ptr(v176, v177, v178))
        {
          v179 = OUTLINED_FUNCTION_8_26();
          if (!testFldeq(v179, v180, v181, 1))
          {
            goto LABEL_59;
          }
        }
      }

      goto LABEL_224;
    }

LABEL_41:
    v6 = v126;
    v128 = OUTLINED_FUNCTION_48_6();
    starttest(v128, v129);
    v130 = OUTLINED_FUNCTION_0_30();
    if (lpta_loadp_setscan_r(v130, v131, v132) || advance_tok(a1, v133, v134, v135))
    {
      goto LABEL_228;
    }

    v136 = OUTLINED_FUNCTION_15_23();
    if (testFldeq(v136, v137, 2, v138) || advance_tok(a1, v139, v140, v141))
    {
LABEL_224:
      LODWORD(v109) = v6;
LABEL_64:
      v187 = *(a1 + 104);
      if (v187)
      {
        v188 = OUTLINED_FUNCTION_40_7(v187);
        v6 = v109;
      }

      else
      {
        v188 = vback(a1, v109);
        v6 = 0;
      }

      v42 = &loc_26E77E000;
      v41 = &loc_26E77E000;
      v189 = v6;
      v190 = v6;
      v172 = v6;
      v191 = v6;
      v192 = v6;
      switch(v188)
      {
        case 1:
          goto LABEL_5;
        case 2:
          OUTLINED_FUNCTION_68_4();
          v49 = v538;
          v48 = v539;
          v51 = v536;
          v50 = v537;
          v53 = v534;
          v52 = v535;
          v55 = v532;
          v54 = v533;
          v57 = v530;
          v56 = v531;
          v58 = v529;
          v59 = v528;
          continue;
        case 3:
          goto LABEL_8;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_10;
        case 6:
          OUTLINED_FUNCTION_68_4();
          v49 = v538;
          v48 = v539;
          v51 = v536;
          v50 = v537;
          v53 = v534;
          v52 = v535;
          v55 = v532;
          v54 = v533;
          v56 = v531;
          goto LABEL_22;
        case 7:
          v42 = v545;
          v41 = v546;
          goto LABEL_16;
        case 8:
          v42 = v545;
          v41 = v546;
          goto LABEL_35;
        case 9:
          goto LABEL_38;
        case 10:
        case 16:
        case 18:
        case 20:
        case 21:
        case 26:
        case 27:
        case 32:
        case 35:
        case 38:
        case 39:
        case 44:
        case 45:
          goto LABEL_40;
        case 11:
          goto LABEL_178;
        case 12:
          goto LABEL_17;
        case 13:
          goto LABEL_18;
        case 14:
          goto LABEL_179;
        case 15:
          goto LABEL_188;
        case 17:
          goto LABEL_180;
        case 19:
          goto LABEL_181;
        case 22:
          goto LABEL_113;
        case 23:
          goto LABEL_24;
        case 24:
          goto LABEL_211;
        case 25:
          goto LABEL_175;
        case 28:
          goto LABEL_25;
        case 29:
          goto LABEL_208;
        case 30:
          bspop_boa(a1);
          v372 = OUTLINED_FUNCTION_21_18();
          starttest_e(v372, v373);
          OUTLINED_FUNCTION_45_6();
          move_f(1.4);
          v374 = a1;
          goto LABEL_206;
        case 31:
          goto LABEL_210;
        case 33:
          goto LABEL_26;
        case 34:
          goto LABEL_126;
        case 36:
          goto LABEL_27;
        case 37:
          goto LABEL_152;
        case 40:
          goto LABEL_125;
        case 41:
          goto LABEL_173;
        case 42:
          v366 = OUTLINED_FUNCTION_6_26();
          v369 = 30;
          goto LABEL_138;
        case 43:
          goto LABEL_139;
        case 46:
          v126 = v6;
          goto LABEL_41;
        case 47:
          goto LABEL_55;
        case 48:
          goto LABEL_56;
        case 49:
          bspop_boa(a1);
          v196 = advance_tok(a1, v193, v194, v195);
          v172 = v6;
          LODWORD(v109) = v6;
          if (!v196)
          {
            goto LABEL_56;
          }

          goto LABEL_64;
        case 50:
          OUTLINED_FUNCTION_21_18();
          bspush_ca_scan_boa();
          v182 = OUTLINED_FUNCTION_5_26();
          goto LABEL_60;
        case 51:
        case 53:
        case 87:
        case 94:
          bspop_boa(a1);
          OUTLINED_FUNCTION_21_18();
          bspush_ca_scan_boa();
          v182 = OUTLINED_FUNCTION_6_26();
          v184 = 19;
          goto LABEL_60;
        case 52:
          bspop_boa(a1);
          v312 = advance_tok(a1, v309, v310, v311);
          LODWORD(v109) = v6;
          if (v312)
          {
            goto LABEL_64;
          }

          v313 = OUTLINED_FUNCTION_23_18();
          v316 = lpta_loadp_setscan_r(v313, v314, v315);
          LODWORD(v109) = v6;
          if (v316)
          {
            goto LABEL_64;
          }

          v317 = OUTLINED_FUNCTION_1_28();
          v320 = testFldeq(v317, v318, v319, 1);
          LODWORD(v109) = v6;
          if (v320)
          {
            goto LABEL_64;
          }

          goto LABEL_171;
        case 54:
          bspop_boa(a1);
          v221 = advance_tok(a1, v218, v219, v220);
          LODWORD(v109) = v6;
          if (v221)
          {
            goto LABEL_64;
          }

          v222 = OUTLINED_FUNCTION_21_18();
          starttest(v222, v223);
          v224 = OUTLINED_FUNCTION_0_30();
          if (lpta_loadp_setscan_l(v224, v225, v226))
          {
            goto LABEL_81;
          }

          goto LABEL_99;
        case 55:
LABEL_81:
          v227 = OUTLINED_FUNCTION_21_18();
          starttest(v227, v228);
          v229 = OUTLINED_FUNCTION_0_30();
          if (lpta_loadp_setscan_l(v229, v230, v231))
          {
            goto LABEL_82;
          }

          goto LABEL_93;
        case 56:
LABEL_99:
          OUTLINED_FUNCTION_71_4(56);
          v292 = OUTLINED_FUNCTION_22_18();
          v294 = OUTLINED_FUNCTION_65_4(v292, v293);
          LODWORD(v109) = v6;
          if (!v294)
          {
            v297 = advance_tok(a1, v6, v295, v296);
            LODWORD(v109) = v6;
            if (!v297)
            {
              v298 = OUTLINED_FUNCTION_23_18();
              v301 = lpta_loadp_setscan_r(v298, v299, v300);
              LODWORD(v109) = v6;
              if (!v301)
              {
                goto LABEL_171;
              }
            }
          }

          goto LABEL_64;
        case 57:
          bspop_boa(a1);
          v211 = OUTLINED_FUNCTION_10_26();
          v214 = testFldeq(v211, v212, v213, 2);
          LODWORD(v109) = v6;
          if (v214)
          {
            goto LABEL_64;
          }

          v217 = advance_tok(a1, v6, v215, v216);
          LODWORD(v109) = v6;
          if (v217)
          {
            goto LABEL_64;
          }

          goto LABEL_86;
        case 58:
        case 59:
        case 63:
        case 67:
        case 69:
        case 70:
        case 73:
        case 74:
        case 79:
        case 84:
        case 89:
        case 96:
          goto LABEL_228;
        case 60:
LABEL_82:
          v232 = OUTLINED_FUNCTION_21_18();
          starttest(v232, v233);
          v234 = OUTLINED_FUNCTION_0_30();
          if (lpta_loadp_setscan_l(v234, v235, v236))
          {
            goto LABEL_83;
          }

          goto LABEL_87;
        case 61:
LABEL_93:
          OUTLINED_FUNCTION_71_4(61);
          v270 = OUTLINED_FUNCTION_22_18();
          v272 = OUTLINED_FUNCTION_73_4(v270, v271);
          LODWORD(v109) = v6;
          if (!v272)
          {
            v273 = OUTLINED_FUNCTION_22_18();
            v275 = npush_fld(v273, v274, 8u);
            LODWORD(v109) = v6;
            if (!v275)
            {
              v276 = OUTLINED_FUNCTION_32_12();
              npush_i(v276);
              v284 = if_testeq(a1, v277, v278, v279, v280, v281, v282, v283);
              LODWORD(v109) = v6;
              if (!v284)
              {
                v287 = advance_tok(a1, v6, v285, v286);
                LODWORD(v109) = v6;
                if (!v287)
                {
                  v288 = OUTLINED_FUNCTION_23_18();
                  v291 = lpta_loadp_setscan_r(v288, v289, v290);
                  LODWORD(v109) = v6;
                  if (!v291)
                  {
                    goto LABEL_171;
                  }
                }
              }
            }
          }

          goto LABEL_64;
        case 62:
          bspop_boa(a1);
          v302 = OUTLINED_FUNCTION_10_26();
          v305 = testFldeq(v302, v303, v304, 2);
          LODWORD(v109) = v6;
          if (v305)
          {
            goto LABEL_64;
          }

          v308 = advance_tok(a1, v6, v306, v307);
          LODWORD(v109) = v6;
          if (v308)
          {
            goto LABEL_64;
          }

          v409 = OUTLINED_FUNCTION_21_18();
          starttest_e(v409, v410);
          OUTLINED_FUNCTION_45_6();
          move_f(v411);
          v406 = OUTLINED_FUNCTION_55_5();
          v408 = 70;
          goto LABEL_118;
        case 64:
LABEL_83:
          v237 = OUTLINED_FUNCTION_21_18();
          starttest(v237, v238);
          v239 = OUTLINED_FUNCTION_0_30();
          if (lpta_loadp_setscan_l(v239, v240, v241))
          {
            goto LABEL_117;
          }

          v242 = OUTLINED_FUNCTION_22_18();
          v244 = OUTLINED_FUNCTION_65_4(v242, v243);
          LODWORD(v109) = v6;
          if (!v244)
          {
            v247 = advance_tok(a1, v6, v245, v246);
            LODWORD(v109) = v6;
            if (!v247)
            {
              goto LABEL_86;
            }
          }

          goto LABEL_64;
        case 65:
LABEL_87:
          OUTLINED_FUNCTION_71_4(65);
          v248 = OUTLINED_FUNCTION_22_18();
          v250 = OUTLINED_FUNCTION_73_4(v248, v249);
          LODWORD(v109) = v6;
          if (v250)
          {
            goto LABEL_64;
          }

          v251 = OUTLINED_FUNCTION_22_18();
          v253 = npush_fld(v251, v252, 8u);
          LODWORD(v109) = v6;
          if (v253)
          {
            goto LABEL_64;
          }

          v254 = OUTLINED_FUNCTION_32_12();
          npush_i(v254);
          v262 = if_testeq(a1, v255, v256, v257, v258, v259, v260, v261);
          LODWORD(v109) = v6;
          if (v262)
          {
            goto LABEL_64;
          }

          v265 = advance_tok(a1, v6, v263, v264);
          LODWORD(v109) = v6;
          if (v265)
          {
            goto LABEL_64;
          }

          v266 = OUTLINED_FUNCTION_23_18();
          v269 = lpta_loadp_setscan_r(v266, v267, v268);
          LODWORD(v109) = v6;
          if (v269)
          {
            goto LABEL_64;
          }

LABEL_171:
          OUTLINED_FUNCTION_21_18();
          goto LABEL_59;
        case 66:
          bspop_boa(a1);
          v204 = OUTLINED_FUNCTION_10_26();
          v207 = testFldeq(v204, v205, v206, 1);
          LODWORD(v109) = v6;
          if (v207)
          {
            goto LABEL_64;
          }

          v210 = advance_tok(a1, v6, v208, v209);
          LODWORD(v109) = v6;
          if (v210)
          {
            goto LABEL_64;
          }

          v412 = OUTLINED_FUNCTION_21_18();
          starttest_e(v412, v413);
          OUTLINED_FUNCTION_47_6();
          move_f(v414);
          v406 = OUTLINED_FUNCTION_55_5();
          v408 = 75;
          goto LABEL_118;
        case 68:
LABEL_117:
          v333 = OUTLINED_FUNCTION_21_18();
          starttest(v333, v334);
          OUTLINED_FUNCTION_45_6();
          move_f(v335);
          v406 = OUTLINED_FUNCTION_55_5();
          v408 = 90;
          goto LABEL_118;
        case 71:
          goto LABEL_46;
        case 72:
          goto LABEL_220;
        case 75:
          goto LABEL_47;
        case 76:
          goto LABEL_157;
        case 77:
          v360 = OUTLINED_FUNCTION_6_26();
          v363 = 19;
          goto LABEL_133;
        case 78:
          goto LABEL_134;
        case 80:
          goto LABEL_48;
        case 81:
          goto LABEL_160;
        case 82:
          v375 = OUTLINED_FUNCTION_5_26();
          goto LABEL_145;
        case 83:
          goto LABEL_146;
        case 85:
          goto LABEL_49;
        case 86:
          goto LABEL_161;
        case 88:
          bspop_boa(a1);
          v321 = OUTLINED_FUNCTION_10_26();
          v324 = testFldeq(v321, v322, v323, 2);
          LODWORD(v109) = v6;
          if (v324)
          {
            goto LABEL_64;
          }

          v327 = advance_tok(a1, v6, v325, v326);
          LODWORD(v109) = v6;
          if (v327)
          {
            goto LABEL_64;
          }

LABEL_86:
          v431 = OUTLINED_FUNCTION_21_18();
          starttest_e(v431, v432);
          OUTLINED_FUNCTION_45_6();
          move_f(v433);
          OUTLINED_FUNCTION_47_6();
          goto LABEL_119;
        case 90:
          goto LABEL_50;
        case 91:
          goto LABEL_165;
        case 92:
          goto LABEL_225;
        case 93:
          goto LABEL_51;
        case 95:
          bspop_boa(a1);
          v197 = OUTLINED_FUNCTION_10_26();
          v200 = testFldeq(v197, v198, v199, 2);
          LODWORD(v109) = v6;
          if (v200)
          {
            goto LABEL_64;
          }

          v203 = advance_tok(a1, v6, v201, v202);
          LODWORD(v109) = v6;
          if (v203)
          {
            goto LABEL_64;
          }

          v403 = OUTLINED_FUNCTION_21_18();
          starttest_e(v403, v404);
          OUTLINED_FUNCTION_45_6();
          move_f(v405);
          v406 = OUTLINED_FUNCTION_55_5();
          v408 = 80;
          goto LABEL_118;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  starttest(a1, 71);
  v142 = OUTLINED_FUNCTION_0_30();
  if (!lpta_loadp_setscan_l(v142, v143, v144))
  {
LABEL_220:
    v517 = OUTLINED_FUNCTION_57_5();
    savescptr(v517, 72, v551);
    if (advance_tok(a1, v518, v519, v520))
    {
      goto LABEL_224;
    }

    if (OUTLINED_FUNCTION_42_6())
    {
      goto LABEL_224;
    }

    v521 = OUTLINED_FUNCTION_6_26();
    if (testFldeq(v521, v522, v523, 18) || advance_tok(a1, v524, v525, v526))
    {
      goto LABEL_224;
    }

    starttest_e(a1, 73);
    OUTLINED_FUNCTION_26_17();
    v365 = 1.1;
    goto LABEL_227;
  }

LABEL_46:
  starttest(a1, 75);
  v145 = OUTLINED_FUNCTION_0_30();
  if (!lpta_loadp_setscan_l(v145, v146, v147))
  {
LABEL_157:
    savescptr(a1, 76, v551);
    if (advance_tok(a1, v395, v396, v397) || OUTLINED_FUNCTION_42_6())
    {
      goto LABEL_224;
    }

    bspush_ca_scan(a1, 77);
    v360 = OUTLINED_FUNCTION_15_23();
    v362 = 2;
LABEL_133:
    v364 = testFldeq(v360, v361, v362, v363);
    v191 = v6;
    v109 = v6;
    if (v364)
    {
      goto LABEL_64;
    }

LABEL_134:
    LODWORD(v6) = v191;
    if (advance_tok(a1, v109, v190, v189))
    {
      goto LABEL_224;
    }

    starttest_e(a1, 79);
    OUTLINED_FUNCTION_26_17();
    v365 = 1.2;
LABEL_227:
    move_f(v365);
    v406 = a1;
    v407 = &v548;
    v408 = 200;
    goto LABEL_118;
  }

LABEL_47:
  v148 = OUTLINED_FUNCTION_67_4();
  starttest(v148, 80);
  v149 = OUTLINED_FUNCTION_0_30();
  lpta_loadp_setscan_l(v149, v150, v151);
  OUTLINED_FUNCTION_61_5();
  if (!v152)
  {
LABEL_160:
    savescptr(a1, 81, v551);
    bspush_ca_scan(a1, 82);
    v375 = OUTLINED_FUNCTION_2_28();
LABEL_145:
    v379 = testFldeq(v375, v376, v377, v378);
    v192 = v6;
    v109 = v6;
    if (v379)
    {
      goto LABEL_64;
    }

LABEL_146:
    LODWORD(v6) = v192;
    if (advance_tok(a1, v109, v190, v189))
    {
      goto LABEL_224;
    }

    if (OUTLINED_FUNCTION_42_6())
    {
      goto LABEL_224;
    }

    v380 = OUTLINED_FUNCTION_10_26();
    if (testFldeq(v380, v381, v382, 1) || advance_tok(a1, v383, v384, v385))
    {
      goto LABEL_224;
    }

    starttest_e(a1, 84);
    OUTLINED_FUNCTION_26_17();
    move_f(1.1);
    v406 = a1;
    v407 = &v548;
    v408 = 250;
LABEL_118:
    move_i(v406, v407, v408);
    OUTLINED_FUNCTION_47_6();
LABEL_119:
    v336 = setdur();
LABEL_120:
    LODWORD(v109) = v6;
    if (v336)
    {
      goto LABEL_64;
    }

    goto LABEL_228;
  }

LABEL_48:
  v153 = OUTLINED_FUNCTION_67_4();
  starttest(v153, 85);
  v154 = OUTLINED_FUNCTION_0_30();
  lpta_loadp_setscan_l(v154, v155, v156);
  OUTLINED_FUNCTION_61_5();
  if (!v157)
  {
LABEL_161:
    savescptr(a1, 86, v551);
    v398 = OUTLINED_FUNCTION_22_18();
    if (!OUTLINED_FUNCTION_65_4(v398, v399) && !advance_tok(a1, v400, v401, v402) && !OUTLINED_FUNCTION_42_6())
    {
      goto LABEL_59;
    }

    goto LABEL_224;
  }

LABEL_49:
  v158 = OUTLINED_FUNCTION_67_4();
  starttest(v158, 90);
  v159 = OUTLINED_FUNCTION_0_30();
  lpta_loadp_setscan_l(v159, v160, v161);
  OUTLINED_FUNCTION_61_5();
  if (!v162)
  {
LABEL_165:
    savescptr(a1, 91, v551);
    v415 = OUTLINED_FUNCTION_22_18();
    if (!OUTLINED_FUNCTION_73_4(v415, v416))
    {
      v417 = OUTLINED_FUNCTION_22_18();
      if (!npush_fld(v417, v418, 8u))
      {
        v419 = OUTLINED_FUNCTION_51_5();
        npush_i(v419);
        if (!if_testeq(a1, v420, v421, v422, v423, v424, v425, v426) && !advance_tok(a1, v427, v428, v429))
        {
          OUTLINED_FUNCTION_42_6();
          OUTLINED_FUNCTION_66_4();
          if (v430)
          {
            goto LABEL_64;
          }

LABEL_225:
          v527 = OUTLINED_FUNCTION_74_4();
          v336 = test_synch(v527, 92, 1, &unk_2806BBEFC);
          goto LABEL_120;
        }
      }
    }

    goto LABEL_224;
  }

LABEL_50:
  v163 = OUTLINED_FUNCTION_57_5();
  starttest(v163, 74);
  v164 = OUTLINED_FUNCTION_0_30();
  if (!lpta_loadp_setscan_l(v164, v165, v166))
  {
LABEL_51:
    savescptr(a1, 93, v551);
    v167 = OUTLINED_FUNCTION_22_18();
    if (!OUTLINED_FUNCTION_73_4(v167, v168) && !advance_tok(a1, v169, v170, v171) && !OUTLINED_FUNCTION_42_6())
    {
LABEL_59:
      bspush_ca_scan_boa();
      v182 = OUTLINED_FUNCTION_15_23();
      v185 = 2;
LABEL_60:
      v186 = testFldeq(v182, v183, v185, v184);
LABEL_61:
      if (v186)
      {
        LODWORD(v109) = v6;
      }

      else
      {
        LODWORD(v109) = 1;
      }

      goto LABEL_64;
    }

    goto LABEL_224;
  }

LABEL_228:
  vretproc(a1);
  return 0;
}