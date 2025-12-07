uint64_t ga_ph_H(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v69);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, SHIDWORD(v117), v119, SWORD2(v119), SHIWORD(v119), v121, SWORD2(v121), SBYTE6(v121), SHIBYTE(v121), v123, v124))
  {
LABEL_3:
    v1 = 94;
    goto LABEL_4;
  }

  fence_49(a1);
  OUTLINED_FUNCTION_20_37(600);
  OUTLINED_FUNCTION_28_32(1300);
  OUTLINED_FUNCTION_24_34(2500);
  v20 = OUTLINED_FUNCTION_2_49();
  if (!lpta_loadp_setscan_l(v20, v21, v22))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_33_28();
      v23 = 2300;
LABEL_8:
      *(a1 + 4786) = v23;
      goto LABEL_16;
    }
  }

  while (2)
  {
    v24 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v24, v25, v26))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(a1 + 4778) = 1250;
        v23 = 2650;
        goto LABEL_8;
      }
    }

LABEL_12:
    v27 = OUTLINED_FUNCTION_10_44();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_17_40();
    if (!lpta_loadp_setscan_l(v29, v30, v1))
    {
      v31 = OUTLINED_FUNCTION_0_50();
      if (testFldeq(v31, v32, v33, v34) || advance_tok(a1, v35, v36, v37))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_33_28();
    }

LABEL_16:
    v38 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v38, v39, v40))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        v41 = 1100;
LABEL_32:
        v1 = 0;
        *(a1 + 4782) = v41;
        break;
      }
    }

LABEL_19:
    v42 = OUTLINED_FUNCTION_16_42();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v44, v45, v46))
    {
LABEL_23:
      v53 = OUTLINED_FUNCTION_16_42();
      starttest(v53, v54);
      v55 = OUTLINED_FUNCTION_3_48();
      if (lpta_loadp_setscan_r(v55, v56, v57))
      {
        v1 = 0;
        break;
      }

      v58 = OUTLINED_FUNCTION_0_50();
      if (!testFldeq(v58, v59, v60, v61) && !advance_tok(a1, v62, v63, v64))
      {
        v41 = 1200;
        goto LABEL_32;
      }
    }

    else
    {
      v47 = OUTLINED_FUNCTION_5_47();
      if (!testFldeq(v47, v48, v49, 3) && !advance_tok(a1, v50, v51, v52))
      {
        v41 = 1400;
        goto LABEL_32;
      }
    }

LABEL_26:
    v65 = *(a1 + 104);
    if (v65)
    {
      v66 = OUTLINED_FUNCTION_23_36(v65);
    }

    else
    {
      v67 = OUTLINED_FUNCTION_37_24();
      v66 = vback(v67, v68);
    }

    v1 = 0;
    switch(v66)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_16;
      case 3:
        goto LABEL_12;
      case 4:
        goto LABEL_19;
      case 5:
        goto LABEL_4;
      case 6:
        goto LABEL_23;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  return v1;
}

uint64_t ga_ph_r(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v38);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, SHIDWORD(v86), v88, SWORD2(v88), SHIWORD(v88), v90, SWORD2(v90), SBYTE6(v90), SHIBYTE(v90), v92, v93))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_49(a1);
    OUTLINED_FUNCTION_20_37(440);
    v20 = OUTLINED_FUNCTION_12_43();
    starttest_l(v20, v21);
    v22 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v22, v23, v24))
    {
      v32 = OUTLINED_FUNCTION_10_44();
      bspush_ca_scan(v32, v33);
      if (test_string_s())
      {
        while (2)
        {
          v34 = *(a1 + 104);
          if (v34)
          {
            v35 = OUTLINED_FUNCTION_23_36(v34);
          }

          else
          {
            v36 = OUTLINED_FUNCTION_37_24();
            v35 = vback(v36, v37);
          }

          switch(v35)
          {
            case 1:
              goto LABEL_12;
            case 2:
              OUTLINED_FUNCTION_1_49();
              if (!test_string_s())
              {
                break;
              }

              continue;
            case 3:
              goto LABEL_11;
            case 4:
              goto LABEL_13;
            default:
              goto LABEL_3;
          }

          break;
        }
      }

LABEL_11:
      OUTLINED_FUNCTION_20_37(520);
    }

LABEL_12:
    eng_ret_Fv(a1, v25, v26, v27, v28, v29, v30, v31);
LABEL_13:
    vretproc(a1);
    return 0;
  }
}

uint64_t ga_ph_u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v327 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v274);
  OUTLINED_FUNCTION_19_39();
  bzero(v326, v9);
  v10 = setjmp(v326);
  if (v10 || OUTLINED_FUNCTION_25_34(v10, v11, v12, v13, v14, v15, v16, v17, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, 0, 0, v322, SHIDWORD(v322), v323, SWORD2(v323), SHIWORD(v323), v324, SWORD2(v324), SBYTE6(v324), SHIBYTE(v324), v325, v326[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v19 = OUTLINED_FUNCTION_27_33();
  push_ptr_init(v19, v20);
  fence_49(a1);
  OUTLINED_FUNCTION_20_37(270);
  *(a1 + 4778) = 1200;
  *(a1 + 4782) = 1020;
  OUTLINED_FUNCTION_24_34(2340);
  v21 = OUTLINED_FUNCTION_2_49();
  if (!lpta_loadp_setscan_l(v21, v22, v23))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      *(a1 + 4778) = 1450;
      *(a1 + 4786) = 2590;
      v24 = 0;
      goto LABEL_20;
    }
  }

  v24 = 0;
  while (2)
  {
    v25 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v25, v26, v27))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        v46 = 2140;
LABEL_19:
        *(a1 + 4786) = v46;
        goto LABEL_20;
      }
    }

LABEL_9:
    v28 = v24;
    v29 = OUTLINED_FUNCTION_16_42();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v31, v32, v33))
    {
      v38 = OUTLINED_FUNCTION_21_36();
      bspush_ca_scan(v38, v39);
      v40 = OUTLINED_FUNCTION_14_43();
      v42 = testFldeq(v40, v41, 5, 1);
      v44 = v24;
      v45 = v24;
      if (v42)
      {
        goto LABEL_44;
      }

LABEL_13:
      v24 = v44;
      if (advance_tok(a1, v45, v44, v43))
      {
        goto LABEL_120;
      }

      *(a1 + 4778) = 1450;
      v46 = 2540;
      goto LABEL_19;
    }

LABEL_10:
    v34 = OUTLINED_FUNCTION_10_44();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_17_40();
    if (lpta_loadp_setscan_l(v36, v37, v24))
    {
      v24 = v28;
    }

    else
    {
      v47 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v47, v48);
      v49 = OUTLINED_FUNCTION_0_50();
      v53 = testFldeq(v49, v50, v51, v52);
      v43 = v28;
      v45 = v28;
      if (v53)
      {
        goto LABEL_44;
      }

LABEL_16:
      v24 = v43;
      if (advance_tok(a1, v45, v44, v43))
      {
        goto LABEL_120;
      }

      OUTLINED_FUNCTION_33_28();
    }

LABEL_20:
    v54 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v54, v55, v56))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(a1 + 4782) = 870;
        v88 = 2240;
        goto LABEL_40;
      }
    }

LABEL_22:
    v57 = OUTLINED_FUNCTION_16_42();
    starttest(v57, v58);
    v59 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v59, v60, v61))
    {
      goto LABEL_30;
    }

LABEL_23:
    v62 = OUTLINED_FUNCTION_16_42();
    starttest(v62, v63);
    v64 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v64, v65, v66))
    {
LABEL_30:
      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
LABEL_31:
      v89 = OUTLINED_FUNCTION_16_42();
      v92 = test_synch(v89, v90, 1, v91);
      goto LABEL_32;
    }

LABEL_24:
    v67 = OUTLINED_FUNCTION_16_42();
    starttest(v67, v68);
    v69 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v69, v70, v71))
    {
      v93 = OUTLINED_FUNCTION_0_50();
      if (testFldeq(v93, v94, v95, v96) || advance_tok(a1, v97, v98, v99))
      {
        goto LABEL_120;
      }

      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      v100 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v100, v101);
      v102 = OUTLINED_FUNCTION_7_46();
      v105 = testFldeq(v102, v103, v104, 27);
      v45 = v24;
      v106 = v24;
      if (v105)
      {
        goto LABEL_44;
      }

LABEL_38:
      LODWORD(v24) = v106;
      v92 = advance_tok(a1, v45, v44, v43);
LABEL_32:
      if (v92)
      {
        LODWORD(v45) = v24;
      }

      else
      {
        LODWORD(v45) = 1;
      }

      goto LABEL_44;
    }

LABEL_25:
    v72 = OUTLINED_FUNCTION_16_42();
    starttest(v72, v73);
    v74 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v74, v75, v76))
    {
LABEL_26:
      v77 = OUTLINED_FUNCTION_16_42();
      starttest(v77, v78);
      v79 = OUTLINED_FUNCTION_3_48();
      if (lpta_loadp_setscan_r(v79, v80, v81))
      {
        goto LABEL_93;
      }

      v82 = OUTLINED_FUNCTION_1_49();
      if (!testFldeq(v82, v83, v84, 1) && !advance_tok(a1, v85, v86, v87))
      {
        *(a1 + 4782) = 920;
        v88 = 2540;
LABEL_40:
        *(a1 + 4790) = v88;
        goto LABEL_93;
      }

LABEL_120:
      LODWORD(v45) = v24;
      goto LABEL_44;
    }

    v107 = OUTLINED_FUNCTION_16_42();
    bspush_ca_scan(v107, v108);
    OUTLINED_FUNCTION_1_49();
    v109 = test_string_s();
    LODWORD(v45) = v24;
    v110 = v24;
    if (v109)
    {
      goto LABEL_44;
    }

LABEL_42:
    *(a1 + 4782) = 870;
    v24 = v110;
LABEL_93:
    v202 = OUTLINED_FUNCTION_16_42();
    starttest(v202, v203);
    v204 = OUTLINED_FUNCTION_2_49();
    v207 = lpta_loadp_setscan_l(v204, v205, v206);
    v200 = v24;
    if (!v207)
    {
LABEL_102:
      OUTLINED_FUNCTION_26_34(28, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v321);
      v231 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v231, v232);
      OUTLINED_FUNCTION_1_49();
      v233 = test_string_s();
      LODWORD(v45) = v24;
      v113 = v24;
      if (v233)
      {
        goto LABEL_44;
      }

LABEL_103:
      LODWORD(v24) = v113;
      v234 = OUTLINED_FUNCTION_15_42();
      if (lpta_loadp_setscan_r(v234, v235, v236) || advance_tok(a1, v237, v238, v239))
      {
        goto LABEL_120;
      }

      v240 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v240, v241);
      OUTLINED_FUNCTION_1_49();
      v199 = test_string_s();
LABEL_106:
      LODWORD(v45) = v24;
      if (v199)
      {
        goto LABEL_44;
      }

LABEL_107:
      OUTLINED_FUNCTION_32_29();
      if (v243 == v244)
      {
        v245 = *(a1 + 4782);
        if (v245 >= 1)
        {
          v246 = v245 + v242;
LABEL_110:
          *(a1 + 4778) = vcvtd_n_f64_u32(v246, 1uLL);
        }
      }

LABEL_111:
      *(a1 + 4782) = -1;
      v247 = *(a1 + 4786);
      if (v247 >= 1 && *(a1 + 4790) >= 1)
      {
        OUTLINED_FUNCTION_29_31(v247);
        *(a1 + 4786) = v248;
      }

LABEL_114:
      *(a1 + 4790) = -1;
      goto LABEL_115;
    }

LABEL_94:
    v24 = v200;
    v208 = OUTLINED_FUNCTION_16_42();
    starttest(v208, v209);
    if (*(a1 + 3592) < 50.0)
    {
      v210 = OUTLINED_FUNCTION_2_49();
      v213 = lpta_loadp_setscan_l(v210, v211, v212);
      v201 = v24;
      if (!v213)
      {
LABEL_116:
        v249 = v201;
        OUTLINED_FUNCTION_26_34(37, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v321);
        v250 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v250, v251);
        v252 = OUTLINED_FUNCTION_5_47();
        v255 = testFldeq(v252, v253, v254, 2);
        v45 = v249;
        v114 = v249;
        if (v255)
        {
          goto LABEL_44;
        }

LABEL_117:
        v24 = v114;
        if (advance_tok(a1, v45, v44, v43))
        {
          goto LABEL_120;
        }

        v256 = OUTLINED_FUNCTION_15_42();
        if (lpta_loadp_setscan_r(v256, v257, v258) || advance_tok(a1, v259, v260, v261))
        {
          goto LABEL_120;
        }

        v262 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v262, v263);
        v264 = OUTLINED_FUNCTION_5_47();
        v267 = testFldeq(v264, v265, v266, 2);
        v45 = v24;
        v115 = v24;
        if (!v267)
        {
LABEL_122:
          v268 = v115;
          v269 = advance_tok(a1, v45, v44, v43);
          LODWORD(v45) = v268;
          if (!v269)
          {
            v270 = (*(a1 + 4782) + 150);
            v271 = *(a1 + 4778);
            if (v271 >= 1 && v270 >= 1)
            {
              v246 = (v271 + v270);
              goto LABEL_110;
            }

            goto LABEL_111;
          }
        }

LABEL_44:
        v111 = *(a1 + 104);
        if (v111)
        {
          v112 = OUTLINED_FUNCTION_23_36(v111);
          v24 = v45;
        }

        else
        {
          v112 = vback(a1, v45);
          v24 = 0;
        }

        v44 = v24;
        v43 = v24;
        v106 = v24;
        v110 = v24;
        v113 = v24;
        v114 = v24;
        v115 = v24;
        v116 = v24;
        switch(v112)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_20;
          case 3:
            goto LABEL_9;
          case 4:
            v28 = v24;
            goto LABEL_10;
          case 5:
            v117 = OUTLINED_FUNCTION_16_42();
            bspush_ca_scan(v117, v118);
            v119 = OUTLINED_FUNCTION_5_47();
            v122 = 2;
            goto LABEL_71;
          case 6:
            goto LABEL_13;
          case 7:
            v119 = OUTLINED_FUNCTION_5_47();
            v122 = 3;
LABEL_71:
            v177 = testFldeq(v119, v120, v121, v122);
            v44 = v24;
            v45 = v24;
            if (!v177)
            {
              goto LABEL_13;
            }

            goto LABEL_44;
          case 8:
            v178 = OUTLINED_FUNCTION_5_47();
            v181 = testFldeq(v178, v179, v180, 4);
            v43 = v24;
            v45 = v24;
            if (!v181)
            {
              goto LABEL_16;
            }

            goto LABEL_44;
          case 9:
            goto LABEL_16;
          case 10:
            goto LABEL_22;
          case 11:
          case 16:
            goto LABEL_93;
          case 12:
            goto LABEL_23;
          case 13:
            bspop_boa(a1);
            OUTLINED_FUNCTION_1_49();
            v142 = test_string_s();
            LODWORD(v45) = v24;
            if (v142)
            {
              goto LABEL_44;
            }

            v143 = OUTLINED_FUNCTION_16_42();
            starttest(v143, v144);
            v145 = OUTLINED_FUNCTION_2_49();
            if (lpta_loadp_setscan_l(v145, v146, v147))
            {
              goto LABEL_86;
            }

            v148 = OUTLINED_FUNCTION_0_50();
            v152 = testFldeq(v148, v149, v150, v151);
            LODWORD(v45) = v24;
            if (v152)
            {
              goto LABEL_44;
            }

            v155 = advance_tok(a1, v24, v153, v154);
            LODWORD(v45) = v24;
            if (v155)
            {
              goto LABEL_44;
            }

            *(a1 + 4774) = 320;
            v273 = 820;
LABEL_87:
            *(a1 + 4778) = v273;
LABEL_92:
            *(a1 + 4782) = v273;
            goto LABEL_93;
          case 14:
          case 19:
            goto LABEL_31;
          case 15:
LABEL_86:
            *(a1 + 4774) = 320;
            v273 = 960;
            goto LABEL_87;
          case 17:
            goto LABEL_24;
          case 18:
            bspop_boa(a1);
            OUTLINED_FUNCTION_1_49();
            v186 = test_string_s();
            LODWORD(v45) = v24;
            if (v186)
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_20_37(320);
            OUTLINED_FUNCTION_28_32(880);
            v88 = 2600;
            *(a1 + 4786) = 2600;
            goto LABEL_40;
          case 20:
            goto LABEL_25;
          case 21:
            bspop_boa(a1);
            v273 = -2;
            goto LABEL_92;
          case 22:
            v129 = OUTLINED_FUNCTION_7_46();
            v132 = testFldeq(v129, v130, v131, 25);
            v106 = v24;
            v45 = v24;
            if (!v132)
            {
              goto LABEL_38;
            }

            goto LABEL_44;
          case 23:
            goto LABEL_38;
          case 24:
            goto LABEL_26;
          case 25:
            v134 = OUTLINED_FUNCTION_9_45();
            v138 = testFldeq(v134, v135, v136, v137);
            LODWORD(v45) = v24;
            if (!v138)
            {
              v141 = advance_tok(a1, v24, v139, v140);
              v110 = v24;
              LODWORD(v45) = v24;
              if (!v141)
              {
                goto LABEL_42;
              }
            }

            goto LABEL_44;
          case 26:
            goto LABEL_42;
          case 27:
            v200 = v24;
            goto LABEL_94;
          case 28:
            goto LABEL_102;
          case 29:
            v156 = OUTLINED_FUNCTION_1_49();
            v159 = testFldeq(v156, v157, v158, 1);
            LODWORD(v45) = v24;
            if (!v159)
            {
              v160 = OUTLINED_FUNCTION_6_46();
              v163 = testFldeq(v160, v161, 6, v162);
              LODWORD(v45) = v24;
              if (!v163)
              {
                v166 = advance_tok(a1, v24, v164, v165);
                v113 = v24;
                LODWORD(v45) = v24;
                if (!v166)
                {
                  goto LABEL_103;
                }
              }
            }

            goto LABEL_44;
          case 30:
            goto LABEL_103;
          case 31:
            v167 = OUTLINED_FUNCTION_1_49();
            v170 = testFldeq(v167, v168, v169, 1);
            LODWORD(v45) = v24;
            if (v170)
            {
              goto LABEL_44;
            }

            v171 = OUTLINED_FUNCTION_6_46();
            v174 = testFldeq(v171, v172, 6, v173);
            LODWORD(v45) = v24;
            if (v174)
            {
              goto LABEL_44;
            }

            v199 = advance_tok(a1, v24, v175, v176);
            goto LABEL_106;
          case 32:
            goto LABEL_107;
          case 33:
          case 44:
            goto LABEL_111;
          case 34:
          case 45:
            goto LABEL_114;
          case 35:
            goto LABEL_115;
          case 36:
            goto LABEL_96;
          case 37:
            v201 = v24;
            goto LABEL_116;
          case 38:
            v193 = OUTLINED_FUNCTION_16_42();
            bspush_ca_scan(v193, v194);
            v182 = OUTLINED_FUNCTION_5_47();
            v185 = 3;
            goto LABEL_80;
          case 39:
            goto LABEL_117;
          case 40:
            v182 = OUTLINED_FUNCTION_5_47();
            v185 = 1;
LABEL_80:
            v195 = testFldeq(v182, v183, v184, v185);
            v114 = v24;
            v45 = v24;
            if (!v195)
            {
              goto LABEL_117;
            }

            goto LABEL_44;
          case 41:
            v123 = OUTLINED_FUNCTION_16_42();
            bspush_ca_scan(v123, v124);
            v125 = OUTLINED_FUNCTION_5_47();
            v128 = 3;
            goto LABEL_53;
          case 42:
            goto LABEL_122;
          case 43:
            v125 = OUTLINED_FUNCTION_5_47();
            v128 = 1;
LABEL_53:
            v133 = testFldeq(v125, v126, v127, v128);
            v115 = v24;
            v45 = v24;
            if (!v133)
            {
              goto LABEL_122;
            }

            goto LABEL_44;
          case 46:
            goto LABEL_97;
          case 47:
            v187 = OUTLINED_FUNCTION_16_42();
            bspush_ca_scan(v187, v188);
            v189 = OUTLINED_FUNCTION_5_47();
            v192 = 1;
            goto LABEL_83;
          case 48:
            goto LABEL_84;
          case 49:
            v189 = OUTLINED_FUNCTION_5_47();
            v192 = 3;
LABEL_83:
            v196 = testFldeq(v189, v190, v191, v192);
            v116 = v24;
            v45 = v24;
            if (!v196)
            {
              goto LABEL_84;
            }

            goto LABEL_44;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_96:
  v214 = OUTLINED_FUNCTION_16_42();
  starttest(v214, v215);
  v216 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_l(v216, v217, v218))
  {
    goto LABEL_115;
  }

LABEL_97:
  OUTLINED_FUNCTION_26_34(46, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v321);
  OUTLINED_FUNCTION_1_49();
  if (test_string_s())
  {
    goto LABEL_120;
  }

  v219 = OUTLINED_FUNCTION_15_42();
  if (lpta_loadp_setscan_r(v219, v220, v221) || advance_tok(a1, v222, v223, v224))
  {
    goto LABEL_120;
  }

  v225 = OUTLINED_FUNCTION_16_42();
  bspush_ca_scan(v225, v226);
  v227 = OUTLINED_FUNCTION_5_47();
  v230 = testFldeq(v227, v228, v229, 2);
  v45 = v24;
  v116 = v24;
  if (v230)
  {
    goto LABEL_44;
  }

LABEL_84:
  v197 = v116;
  v198 = advance_tok(a1, v45, v44, v43);
  LODWORD(v45) = v197;
  if (v198)
  {
    goto LABEL_44;
  }

  *(a1 + 4782) += 100;
LABEL_115:
  vretproc(a1);
  return 0;
}

uint64_t ga_ph_o(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v85);
  OUTLINED_FUNCTION_11_44(v10, v11, v12, v13, v14, v15, v16, v17, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_4_47(v18, v19, v20, v21, v22, v23, v24, v25, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, SHIDWORD(v133), v135, SWORD2(v135), SHIWORD(v135), v137, SWORD2(v137), SBYTE6(v137), SHIBYTE(v137), v139, v140))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_49(a1);
  *(a1 + 4770) = 550;
  *(a1 + 4774) = 400;
  OUTLINED_FUNCTION_33_28();
  *(a1 + 4782) = 850;
  OUTLINED_FUNCTION_24_34(2400);
  v27 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_l(v27, v28, v29) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
  {
    v30 = 0;
    while (2)
    {
      v31 = OUTLINED_FUNCTION_16_42();
      starttest(v31, v32);
      v33 = OUTLINED_FUNCTION_2_49();
      if (lpta_loadp_setscan_l(v33, v34, v35))
      {
        v36 = v30;
LABEL_9:
        v37 = OUTLINED_FUNCTION_10_44();
        starttest(v37, v38);
        v39 = OUTLINED_FUNCTION_17_40();
        if (lpta_loadp_setscan_l(v39, v40, v30))
        {
          LODWORD(v30) = v36;
        }

        else
        {
          v45 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v45, v46);
          v47 = OUTLINED_FUNCTION_5_47();
          v50 = testFldeq(v47, v48, v49, 2);
          v52 = v36;
          LODWORD(v30) = v36;
          if (v50)
          {
            goto LABEL_29;
          }

LABEL_18:
          LODWORD(v30) = v52;
          if (advance_tok(a1, v52, v44, v51))
          {
LABEL_29:
            LODWORD(v67) = v30;
            v30 = &unk_28058167E;
LABEL_30:
            v68 = *(a1 + 104);
            if (v68)
            {
              v69 = OUTLINED_FUNCTION_23_36(v68);
              v67 = v70;
            }

            else
            {
              v69 = vback(a1, v67);
              v67 = 0;
            }

            v44 = v67;
            v52 = v67;
            switch(v69)
            {
              case 1:
                v30 = v67;
                continue;
              case 2:
                LODWORD(v30) = v67;
                goto LABEL_21;
              case 3:
                v36 = v67;
                goto LABEL_9;
              case 4:
                OUTLINED_FUNCTION_1_49();
                v71 = test_string_s();
                LODWORD(v44) = v67;
                if (!v71)
                {
                  goto LABEL_12;
                }

                goto LABEL_30;
              case 5:
                goto LABEL_12;
              case 6:
                bspush_ca_scan(a1, 8);
                v72 = OUTLINED_FUNCTION_5_47();
                v75 = 3;
                goto LABEL_40;
              case 7:
                goto LABEL_18;
              case 8:
                v72 = OUTLINED_FUNCTION_5_47();
                v75 = 4;
LABEL_40:
                v79 = testFldeq(v72, v73, v74, v75);
                v52 = v67;
                if (!v79)
                {
                  goto LABEL_18;
                }

                goto LABEL_30;
              case 9:
                LODWORD(v30) = v67;
                goto LABEL_23;
              case 10:
              case 15:
                goto LABEL_50;
              case 11:
                goto LABEL_42;
              case 12:
                goto LABEL_45;
              case 13:
                bspop_boa(a1);
                if (advance_tok(a1, v76, v77, v78))
                {
                  goto LABEL_30;
                }

                *(a1 + 4770) -= 100;
                *(a1 + 4774) = 450;
                *(a1 + 4778) -= 350;
                v84 = -2;
                goto LABEL_48;
              case 14:
                LODWORD(v30) = v67;
                goto LABEL_27;
              default:
                goto LABEL_3;
            }
          }

          *(a1 + 4778) = 1200;
        }
      }

      else
      {
        v41 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v41, v42);
        OUTLINED_FUNCTION_1_49();
        v43 = test_string_s();
        LODWORD(v44) = v30;
        if (v43)
        {
          goto LABEL_29;
        }

LABEL_12:
        *(a1 + 4778) = 1250;
        LODWORD(v30) = v44;
      }

      break;
    }
  }

  else
  {
    *(a1 + 4778) = 1000;
    *(a1 + 4786) = 2300;
    LODWORD(v30) = 0;
  }

LABEL_21:
  v53 = OUTLINED_FUNCTION_3_48();
  if (lpta_loadp_setscan_r(v53, v54, v55) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
  {
LABEL_23:
    v56 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v56, v57, v58) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
    {
LABEL_42:
      v80 = OUTLINED_FUNCTION_3_48();
      if (lpta_loadp_setscan_r(v80, v81, v82))
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_1_49();
      if (test_string_s())
      {
        goto LABEL_50;
      }

      v84 = -2;
      v83 = 950;
    }

    else
    {
      v59 = OUTLINED_FUNCTION_16_42();
      starttest(v59, v60);
      v61 = OUTLINED_FUNCTION_3_48();
      if (!lpta_loadp_setscan_r(v61, v62, v63))
      {
        OUTLINED_FUNCTION_16_42();
        bspush_ca_scan_boa();
LABEL_27:
        v64 = OUTLINED_FUNCTION_16_42();
        if (!test_synch(v64, v65, 1, v66))
        {
          LODWORD(v30) = 1;
        }

        goto LABEL_29;
      }

LABEL_45:
      v84 = 2500;
LABEL_48:
      v83 = 780;
    }
  }

  else
  {
    v84 = 2300;
    v83 = 750;
  }

  *(a1 + 4782) = v83;
  *(a1 + 4790) = v84;
LABEL_50:
  vretproc(a1);
  return 0;
}

uint64_t ga_ph_w(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_49(a1);
    eng_bilab_Fv(a1);
    v19 = 0;
    *(a1 + 4574) = 500;
  }

  vretproc(a1);
  return v19;
}

uint64_t ga_ph_n(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v64);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, SHIDWORD(v112), v114, SWORD2(v114), SHIWORD(v114), v116, SWORD2(v116), SBYTE6(v116), SHIBYTE(v116), v118, v119))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_49(a1);
  OUTLINED_FUNCTION_20_37(300);
  *(a1 + 4778) = 1600;
  OUTLINED_FUNCTION_24_34(2500);
  v20 = OUTLINED_FUNCTION_12_43();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
    v25 = 0;
LABEL_10:
    v40 = OUTLINED_FUNCTION_16_42();
    if (!test_synch(v40, v41, 1, v42))
    {
      v25 = 1;
    }

LABEL_18:
    while (2)
    {
      v49 = *(a1 + 104);
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_23_36(v49);
        v25 = v36;
      }

      else
      {
        v50 = vback(a1, v25);
        v25 = 0;
      }

      v39 = v25;
      switch(v50)
      {
        case 1:
          goto LABEL_6;
        case 2:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            continue;
          }

          v55 = 1600;
          break;
        case 3:
          goto LABEL_10;
        case 4:
        case 7:
          goto LABEL_28;
        case 5:
          v51 = OUTLINED_FUNCTION_7_46();
          v54 = testFldeq(v51, v52, v53, 25);
          v39 = v25;
          if (!v54)
          {
            goto LABEL_12;
          }

          continue;
        case 6:
          goto LABEL_12;
        case 8:
          bspop_boa(a1);
          v55 = 2000;
          break;
        case 9:
          goto LABEL_30;
        default:
          goto LABEL_3;
      }

      break;
    }

    *(a1 + 4782) = v55;
    goto LABEL_28;
  }

  v25 = 0;
LABEL_6:
  v26 = OUTLINED_FUNCTION_16_42();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v28, v29, v30))
  {
    v31 = OUTLINED_FUNCTION_21_36();
    bspush_ca_scan(v31, v32);
    v33 = OUTLINED_FUNCTION_14_43();
    v35 = testFldeq(v33, v34, 5, 3);
    v39 = v25;
    if (v35)
    {
      goto LABEL_18;
    }

LABEL_12:
    v43 = v39;
    if (advance_tok(a1, v36, v37, v38))
    {
      v25 = v43;
      goto LABEL_18;
    }

    v44 = OUTLINED_FUNCTION_16_42();
    starttest_e(v44, v45);
    v46 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v46, v47, v48))
    {
      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_1_49();
      if (test_string_s())
      {
        v25 = v43;
      }

      else
      {
        v25 = 1;
      }

      goto LABEL_18;
    }
  }

LABEL_28:
  *(a1 + 4570) = 200;
  *(a1 + 4602) = 200;
  *(a1 + 4606) = 320;
  *(a1 + 4914) = 4;
  v56 = OUTLINED_FUNCTION_22_36();
  if (!if_testeq_v_i(v56, v57, v58, v59, v60, v61, v62, v63))
  {
    *(a1 + 4570) = 350;
  }

LABEL_30:
  vretproc(a1);
  return 0;
}

uint64_t ga_ph_U(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v45);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, SHIDWORD(v93), v95, SWORD2(v95), SHIWORD(v95), v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v100))
  {
LABEL_3:
    v19 = 94;
    goto LABEL_4;
  }

  fence_49(a1);
  OUTLINED_FUNCTION_20_37(440);
  OUTLINED_FUNCTION_28_32(1150);
  OUTLINED_FUNCTION_24_34(2300);
  v21 = OUTLINED_FUNCTION_2_49();
  if (!lpta_loadp_setscan_l(v21, v22, v23))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      *(a1 + 4770) = 390;
LABEL_17:
      *(a1 + 4778) = 950;
      goto LABEL_18;
    }
  }

  while (2)
  {
    v24 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v24, v25, v26))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(a1 + 4786) = 2600;
        break;
      }
    }

LABEL_9:
    v27 = OUTLINED_FUNCTION_10_44();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_17_40();
    if (!lpta_loadp_setscan_l(v29, v30, v1))
    {
      v31 = OUTLINED_FUNCTION_0_50();
      if (testFldeq(v31, v32, v33, v34) || advance_tok(a1, v35, v36, v37))
      {
        v38 = *(a1 + 104);
        if (v38)
        {
          v39 = OUTLINED_FUNCTION_23_36(v38);
        }

        else
        {
          v40 = OUTLINED_FUNCTION_37_24();
          v39 = vback(v40, v41);
        }

        switch(v39)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_18;
          case 3:
            goto LABEL_9;
          case 4:
            goto LABEL_20;
          default:
            goto LABEL_3;
        }
      }

      goto LABEL_17;
    }

    break;
  }

LABEL_18:
  v42 = OUTLINED_FUNCTION_3_48();
  if (lpta_loadp_setscan_r(v42, v43, v44) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
  {
LABEL_20:
    v19 = 0;
  }

  else
  {
    v19 = 0;
    *(a1 + 4770) -= 40;
    *(a1 + 4774) = 400;
    OUTLINED_FUNCTION_31_31();
    *(a1 + 4782) = 850;
    *(a1 + 4786) += 300;
    *(a1 + 4790) = 2600;
  }

LABEL_4:
  vretproc(a1);
  return v19;
}

uint64_t ga_ph_m(_WORD *a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v28);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, SHIDWORD(v76), v78, SWORD2(v78), SHIWORD(v78), v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v82, v83))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_49(a1);
    OUTLINED_FUNCTION_20_37(300);
    a1[2389] = 1200;
    a1[2393] = 2400;
    a1[2285] = 200;
    a1[2301] = 200;
    a1[2303] = 320;
    a1[2457] = 4;
    v20 = OUTLINED_FUNCTION_22_36();
    if (!if_testeq_v_i(v20, v21, v22, v23, v24, v25, v26, v27))
    {
      a1[2285] = 350;
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t get_GA_nuc_AV(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v209 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v156);
  OUTLINED_FUNCTION_19_39();
  bzero(v208, v9);
  v10 = setjmp(v208);
  if (v10 || OUTLINED_FUNCTION_25_34(v10, v11, v12, v13, v14, v15, v16, v17, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, 0, 0, v204, SHIDWORD(v204), v205, SWORD2(v205), SHIWORD(v205), v206, SWORD2(v206), SBYTE6(v206), SHIBYTE(v206), v207, v208[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v19 = OUTLINED_FUNCTION_27_33();
  push_ptr_init(v19, v20);
  fence_49(a1);
  LODWORD(v21) = 0;
  *(a1 + 4558) = 0;
  v22 = OUTLINED_FUNCTION_8_46();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      *(a1 + 4554) = 50;
      LODWORD(v21) = 0;
      goto LABEL_88;
    }

    LODWORD(v21) = 0;
  }

  while (2)
  {
    v25 = OUTLINED_FUNCTION_8_46();
    if (!lpta_loadp_setscan_r(v25, v26, v27))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        v65 = 49;
        goto LABEL_87;
      }
    }

LABEL_9:
    v28 = OUTLINED_FUNCTION_8_46();
    if (!lpta_loadp_setscan_r(v28, v29, v30))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        goto LABEL_27;
      }
    }

LABEL_11:
    v31 = OUTLINED_FUNCTION_8_46();
    if (lpta_loadp_setscan_r(v31, v32, v33) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
    {
LABEL_13:
      v34 = OUTLINED_FUNCTION_8_46();
      if (!lpta_loadp_setscan_r(v34, v35, v36))
      {
        OUTLINED_FUNCTION_1_49();
        if (!test_string_s())
        {
          goto LABEL_27;
        }
      }

LABEL_15:
      v37 = OUTLINED_FUNCTION_16_42();
      starttest(v37, v38);
      v39 = OUTLINED_FUNCTION_8_46();
      if (lpta_loadp_setscan_r(v39, v40, v41))
      {
LABEL_16:
        v42 = OUTLINED_FUNCTION_8_46();
        if (!lpta_loadp_setscan_r(v42, v43, v44))
        {
          OUTLINED_FUNCTION_1_49();
          if (!test_string_s())
          {
            v65 = 57;
            goto LABEL_87;
          }
        }

LABEL_18:
        v45 = OUTLINED_FUNCTION_16_42();
        starttest(v45, v46);
        v47 = OUTLINED_FUNCTION_8_46();
        if (lpta_loadp_setscan_r(v47, v48, v49))
        {
LABEL_19:
          v50 = OUTLINED_FUNCTION_8_46();
          if (lpta_loadp_setscan_r(v50, v51, v52) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
          {
LABEL_21:
            v53 = OUTLINED_FUNCTION_8_46();
            if (lpta_loadp_setscan_r(v53, v54, v55) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
            {
LABEL_23:
              v56 = OUTLINED_FUNCTION_8_46();
              if (lpta_loadp_setscan_r(v56, v57, v58) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
              {
LABEL_25:
                v59 = v21;
                v60 = OUTLINED_FUNCTION_16_42();
                starttest(v60, v61);
                v62 = OUTLINED_FUNCTION_8_46();
                if (lpta_loadp_setscan_r(v62, v63, v64))
                {
LABEL_26:
                  *(a1 + 4554) = 57;
                  LODWORD(v21) = v59;
                  break;
                }

                v78 = OUTLINED_FUNCTION_16_42();
                bspush_ca_scan(v78, v79);
                OUTLINED_FUNCTION_1_49();
                if (test_string_s())
                {
                  goto LABEL_63;
                }

LABEL_68:
                LODWORD(v21) = v59;
                *(a1 + 136) = 1;
                *(a1 + 112) = *(a1 + 824);
                *(a1 + 128) = 0;
                if (!test_ptr(a1, v80, v81))
                {
                  *(a1 + 4914) = 4;
                  v128 = OUTLINED_FUNCTION_22_36();
                  if (if_testeq_v_i(v128, v129, v130, v131, v132, v133, v134, v135))
                  {
LABEL_70:
                    v65 = 55;
                  }

                  else
                  {
                    v65 = 53;
                  }

                  goto LABEL_87;
                }

LABEL_63:
                v125 = *(a1 + 104);
                if (v125)
                {
                  v126 = OUTLINED_FUNCTION_23_36(v125);
                  v21 = v127;
                }

                else
                {
                  v126 = vback(a1, v21);
                  v21 = 0;
                }

                v80 = v21;
                v86 = v21;
                v88 = v21;
                v81 = v21;
                v59 = v21;
                switch(v126)
                {
                  case 1:
                    continue;
                  case 2:
                  case 9:
                  case 31:
                  case 39:
                    goto LABEL_88;
                  case 3:
                    goto LABEL_9;
                  case 4:
                    goto LABEL_11;
                  case 5:
                    goto LABEL_13;
                  case 6:
                    goto LABEL_33;
                  case 7:
                    goto LABEL_41;
                  case 8:
                    goto LABEL_42;
                  case 10:
                    goto LABEL_15;
                  case 11:
                    goto LABEL_16;
                  case 12:
                    goto LABEL_43;
                  case 13:
                    goto LABEL_44;
                  case 14:
                    goto LABEL_18;
                  case 15:
                    goto LABEL_19;
                  case 16:
                    goto LABEL_45;
                  case 17:
                    goto LABEL_46;
                  case 18:
                    goto LABEL_49;
                  case 19:
                    goto LABEL_77;
                  case 20:
                    goto LABEL_51;
                  case 21:
                    v99 = v21;
                    goto LABEL_59;
                  case 22:
                    bspop_boa(a1);
                    v89 = 54;
                    goto LABEL_76;
                  case 23:
                    goto LABEL_61;
                  case 24:
                    v106 = v21;
                    goto LABEL_73;
                  case 25:
                    goto LABEL_52;
                  case 26:
                    v136 = OUTLINED_FUNCTION_16_42();
                    bspush_ca_scan(v136, v137);
                    goto LABEL_53;
                  case 27:
                    goto LABEL_54;
                  case 28:
                    goto LABEL_53;
                  case 29:
                    goto LABEL_75;
                  case 30:
                    goto LABEL_80;
                  case 32:
                    goto LABEL_21;
                  case 33:
                    goto LABEL_23;
                  case 34:
                    goto LABEL_25;
                  case 35:
                    v59 = v21;
                    goto LABEL_26;
                  case 36:
                    OUTLINED_FUNCTION_1_49();
                    v59 = v21;
                    if (!test_string_s())
                    {
                      goto LABEL_68;
                    }

                    goto LABEL_63;
                  case 37:
                    goto LABEL_68;
                  case 38:
                    goto LABEL_70;
                  case 40:
                    goto LABEL_89;
                  case 41:
                    goto LABEL_91;
                  case 42:
                    goto LABEL_95;
                  case 43:
                    goto LABEL_93;
                  case 44:
                    goto LABEL_94;
                  case 45:
                    goto LABEL_96;
                  default:
                    goto LABEL_3;
                }
              }

              v65 = 56;
            }

            else
            {
              v65 = 59;
            }

LABEL_87:
            *(a1 + 4554) = v65;
            break;
          }

LABEL_27:
          v65 = 54;
          goto LABEL_87;
        }

        v68 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v68, v69);
LABEL_45:
        OUTLINED_FUNCTION_1_49();
        v87 = test_string_s();
        v88 = v21;
        if (v87)
        {
          goto LABEL_63;
        }

LABEL_46:
        if (*(a1 + 3238) <= *(a1 + 742))
        {
          LODWORD(v21) = v88;
LABEL_49:
          v90 = OUTLINED_FUNCTION_16_42();
          starttest(v90, v91);
          v92 = OUTLINED_FUNCTION_8_46();
          if (!lpta_loadp_setscan_r(v92, v93, v94))
          {
            v98 = advance_tok(a1, v95, v96, v97);
            v99 = v21;
            if (!v98)
            {
LABEL_59:
              LODWORD(v21) = v99;
              v119 = OUTLINED_FUNCTION_16_42();
              if (!test_synch(v119, v120, 1, v121))
              {
                OUTLINED_FUNCTION_16_42();
                bspush_ca_scan_boa();
LABEL_61:
                v122 = OUTLINED_FUNCTION_16_42();
                if (!test_synch(v122, v123, 1, v124))
                {
                  LODWORD(v21) = 1;
                }
              }

              goto LABEL_63;
            }
          }

LABEL_51:
          v100 = OUTLINED_FUNCTION_16_42();
          starttest(v100, v101);
          v102 = OUTLINED_FUNCTION_8_46();
          v105 = lpta_loadp_setscan_l(v102, v103, v104);
          v106 = v21;
          if (v105)
          {
LABEL_73:
            LODWORD(v21) = v106;
            v138 = OUTLINED_FUNCTION_16_42();
            starttest(v138, v139);
            *(a1 + 136) = 1;
            *(a1 + 112) = *(a1 + 808);
            *(a1 + 128) = 0;
            OUTLINED_FUNCTION_36_25();
            if (lpta_tstctxtl() || (v140 = OUTLINED_FUNCTION_36_25(), setscan_l(v140, v141, v142), v143))
            {
LABEL_75:
              v89 = 53;
            }

            else
            {
LABEL_80:
              OUTLINED_FUNCTION_26_34(30, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v203);
              OUTLINED_FUNCTION_36_25();
              if (test_string_i())
              {
                goto LABEL_63;
              }

              v147 = OUTLINED_FUNCTION_27_33();
              if (lpta_loadp_setscan_r(v147, v148, 7))
              {
                goto LABEL_63;
              }

              OUTLINED_FUNCTION_36_25();
              if (test_string_i())
              {
                goto LABEL_63;
              }

              v89 = 51;
            }
          }

          else
          {
LABEL_52:
            OUTLINED_FUNCTION_26_34(25, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v203);
            v107 = OUTLINED_FUNCTION_16_42();
            bspush_ca_scan(v107, v108);
LABEL_53:
            OUTLINED_FUNCTION_1_49();
            v109 = test_string_s();
            LODWORD(v81) = v21;
            if (v109)
            {
              goto LABEL_63;
            }

LABEL_54:
            LODWORD(v21) = v81;
            v110 = OUTLINED_FUNCTION_15_42();
            if (lpta_loadp_setscan_r(v110, v111, v112))
            {
              goto LABEL_63;
            }

            v113 = OUTLINED_FUNCTION_7_46();
            if (testFldeq(v113, v114, v115, 35) || advance_tok(a1, v116, v117, v118))
            {
              goto LABEL_63;
            }

            v89 = 49;
          }
        }

        else
        {
          v89 = 55;
          LODWORD(v21) = v88;
        }

LABEL_76:
        *(a1 + 4554) = v89;
LABEL_77:
        v144 = OUTLINED_FUNCTION_8_46();
        if (!lpta_loadp_setscan_r(v144, v145, v146))
        {
          OUTLINED_FUNCTION_1_49();
          if (!test_string_s())
          {
            v65 = *(a1 + 4554) - 1;
            goto LABEL_87;
          }
        }
      }

      else
      {
        v66 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v66, v67);
LABEL_43:
        OUTLINED_FUNCTION_1_49();
        v85 = test_string_s();
        v86 = v21;
        if (v85)
        {
          goto LABEL_63;
        }

LABEL_44:
        *(a1 + 4554) = 55;
        LODWORD(v21) = v86;
      }
    }

    else
    {
      v70 = OUTLINED_FUNCTION_16_42();
      starttest(v70, v71);
      v72 = OUTLINED_FUNCTION_8_46();
      if (lpta_loadp_setscan_r(v72, v73, v74) || advance_tok(a1, v75, v76, v77))
      {
LABEL_33:
        v65 = 52;
        goto LABEL_87;
      }

      v82 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v82, v83);
LABEL_41:
      OUTLINED_FUNCTION_1_49();
      v84 = test_string_s();
      LODWORD(v80) = v21;
      if (v84)
      {
        goto LABEL_63;
      }

LABEL_42:
      *(a1 + 4554) = 56;
      LODWORD(v21) = v80;
    }

    break;
  }

LABEL_88:
  adjust_AV_for_fem_voice(a1);
LABEL_89:
  if (!*(a1 + 4558))
  {
    *(a1 + 4558) = *(a1 + 4554) - 2;
  }

LABEL_91:
  v149 = OUTLINED_FUNCTION_16_42();
  starttest(v149, v150);
  v151 = OUTLINED_FUNCTION_15_42();
  if (lpta_loadp_setscan_l(v151, v152, v153))
  {
    goto LABEL_95;
  }

  v154 = OUTLINED_FUNCTION_16_42();
  bspush_ca_scan(v154, v155);
LABEL_93:
  OUTLINED_FUNCTION_1_49();
  if (test_string_s())
  {
    goto LABEL_63;
  }

LABEL_94:
  *(a1 + 4558) -= 2;
LABEL_95:
  adjust_nuc_AV_for_unstr(a1);
LABEL_96:
  vretproc(a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_4_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_11_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_13_43(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_18_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_25_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

double OUTLINED_FUNCTION_26_34@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_30_31()
{

  return testFldeq(v0, v1, 10, 1);
}

uint64_t GAroots(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v22[1] = 0;
  v21[0] = 0;
  v21[1] = 0;
  bzero(v20, 0xB8uLL);
  bzero(v26, 0xC0uLL);
  if (setjmp(v26) || ventproc(a1, v20, v25, v24, v23, v26) || (get_parm(a1, v22, a2, -6), get_parm(a1, v21, a3, -6), *(*(a1 + 192) + 8121) = 1, memset(*(a1 + 264), *(a1 + 288), *(a1 + 288)), **(a1 + 248) = 5, *(*(a1 + 264) + 5) = 0, lpta_rpta_loadp(a1, v22, v21), actd_lookup(a1, 24, 0, 0)))
  {
LABEL_4:
    v6 = 94;
  }

  else
  {
    v9 = 5;
    v10 = 0;
LABEL_7:
    starttest(a1, 46);
    if (*(a1 + 4042) == 1)
    {
      v6 = 0;
    }

    else
    {
LABEL_8:
      actd_goto(a1);
      v11 = v10;
      v12 = v9;
      while (2)
      {
        v9 = v12;
        v10 = v11;
        v13 = *(a1 + 104);
        if (v13)
        {
          *(a1 + 104) = 0;
          v14 = v13;
        }

        else
        {
          v14 = vback(a1, 0);
        }

        v15 = v14 - 1;
        v6 = 0;
        v16 = &unk_280581694;
        v17 = 3;
        v18 = v11;
        switch(v15)
        {
          case 0:
            goto LABEL_62;
          case 1:
            v16 = &unk_2805816C0;
            v18 = 12;
            goto LABEL_58;
          case 2:
            v16 = &unk_2805816A0;
            goto LABEL_55;
          case 3:
            v16 = &unk_28058173D;
            v17 = 8;
            v18 = 2001;
            goto LABEL_62;
          case 4:
            v16 = &unk_280581697;
            goto LABEL_61;
          case 5:
            v16 = &unk_2805816A4;
            goto LABEL_55;
          case 6:
            v16 = &unk_2805816C5;
            goto LABEL_57;
          case 7:
            v16 = &unk_2805816ED;
            goto LABEL_51;
          case 8:
            v16 = &unk_280581755;
            goto LABEL_45;
          case 9:
            v16 = &unk_2805816CA;
            goto LABEL_57;
          case 10:
            v16 = &unk_2805816F3;
            goto LABEL_51;
          case 11:
            v16 = &unk_2805816F9;
            goto LABEL_51;
          case 12:
            v16 = &unk_2805816FF;
            goto LABEL_51;
          case 13:
            v16 = &unk_28058175E;
LABEL_45:
            v17 = 9;
            goto LABEL_61;
          case 14:
            v16 = &unk_280581705;
            goto LABEL_51;
          case 15:
            v16 = &_MergedGlobals_43;
            v17 = 2;
            goto LABEL_61;
          case 16:
            v16 = &unk_28058170B;
            goto LABEL_51;
          case 17:
            v16 = &unk_28058169A;
            goto LABEL_61;
          case 18:
            v16 = &unk_280581767;
            v17 = 10;
            goto LABEL_61;
          case 19:
            v16 = &unk_280581771;
            v17 = 12;
            goto LABEL_61;
          case 20:
            v16 = &unk_280581745;
            v17 = 8;
            goto LABEL_61;
          case 21:
            v16 = &unk_2805816CF;
            goto LABEL_57;
          case 22:
            v16 = &unk_28058169D;
            goto LABEL_61;
          case 23:
            v16 = &unk_2805816D4;
            v18 = 21;
            goto LABEL_58;
          case 24:
            v16 = &unk_2805816D9;
            goto LABEL_57;
          case 25:
            v16 = &unk_2805816DE;
            goto LABEL_57;
          case 26:
            v16 = &unk_280581711;
            goto LABEL_51;
          case 27:
            v16 = &unk_280581717;
            goto LABEL_51;
          case 28:
            v16 = &unk_28058172F;
            goto LABEL_60;
          case 29:
            v16 = &unk_2805816E3;
            goto LABEL_57;
          case 30:
            v16 = &unk_28058171D;
            goto LABEL_51;
          case 31:
            v16 = &unk_280581723;
LABEL_51:
            v17 = 6;
            goto LABEL_61;
          case 32:
            v16 = &unk_280581736;
LABEL_60:
            v17 = 7;
            goto LABEL_61;
          case 33:
            v16 = &unk_2805816A8;
            goto LABEL_55;
          case 34:
            v16 = &unk_2805816E8;
LABEL_57:
            v18 = v11;
LABEL_58:
            v17 = v12;
            goto LABEL_62;
          case 35:
            v16 = &unk_280581729;
            v17 = 6;
            goto LABEL_16;
          case 36:
            v16 = &unk_2805816AC;
            v17 = 4;
LABEL_16:
            v18 = 1;
            goto LABEL_62;
          case 37:
            v16 = &unk_2805816B0;
            goto LABEL_55;
          case 38:
            v16 = &unk_2805816B4;
            goto LABEL_55;
          case 39:
            v16 = &unk_2805816B8;
            goto LABEL_55;
          case 40:
            v16 = &unk_28058174D;
            v17 = 8;
            v18 = 120;
            goto LABEL_62;
          case 41:
            v16 = &unk_2805816BC;
LABEL_55:
            v17 = 4;
LABEL_61:
            v18 = v11;
LABEL_62:
            v19 = v16;
            v12 = v17;
            v11 = v18;
            lpta_rpta_loadp(a1, v22, v21);
            if (v11)
            {
              *(a1 + 4056) = v11;
            }

            if (insert_2pt_s(a1, 2u, v12, v19, 0))
            {
              continue;
            }

            v6 = 0;
            break;
          case 43:
            goto LABEL_7;
          case 44:
          case 46:
            goto LABEL_5;
          case 45:
            goto LABEL_8;
          default:
            goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_5:
  v7 = v6;
  vretproc(a1);
  return v7;
}

void *delta_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v8 = malloc_type_malloc(0x1888uLL, 0x10F0040A74CFA1EuLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 164) = -6;
    *(v8 + 42) = 0;
    *(v8 + 172) = -6;
    *(v8 + 44) = 0;
    *(v8 + 180) = -6;
    *(v8 + 46) = 0;
    *(v8 + 188) = -6;
    *(v8 + 48) = 0;
    *(v8 + 196) = -6;
    *(v8 + 50) = 0;
    *(v8 + 204) = -6;
    *(v8 + 52) = 0;
    *(v8 + 212) = -6;
    *(v8 + 54) = 0;
    *(v8 + 220) = -6;
    *(v8 + 56) = 0;
    *(v8 + 228) = -6;
    *(v8 + 58) = 0;
    *(v8 + 236) = -6;
    *(v8 + 60) = 0;
    *(v8 + 244) = -6;
    *(v8 + 62) = 0;
    *(v8 + 252) = -6;
    *(v8 + 64) = 0;
    *(v8 + 260) = -6;
    *(v8 + 66) = 0;
    *(v8 + 268) = -6;
    *(v8 + 68) = 0;
    *(v8 + 276) = -6;
    *(v8 + 70) = 0;
    *(v8 + 284) = -6;
    *(v8 + 72) = 0;
    *(v8 + 292) = -6;
    *(v8 + 74) = 0;
    *(v8 + 300) = -6;
    *(v8 + 76) = 0;
    *(v8 + 308) = -6;
    *(v8 + 78) = 0;
    *(v8 + 158) = 65532;
    *(v8 + 320) = -6;
    *(v8 + 81) = 0;
    *(v8 + 328) = -6;
    *(v8 + 83) = 0;
    *(v8 + 336) = -6;
    *(v8 + 85) = 0;
    *(v8 + 344) = -6;
    *(v8 + 87) = 0;
    *(v8 + 352) = -6;
    *(v8 + 89) = 0;
    *(v8 + 45) = xmmword_26DD28520;
    *(v8 + 46) = xmmword_26DD28520;
    *(v8 + 47) = xmmword_26DD28520;
    *(v8 + 384) = -6;
    *(v8 + 97) = 0;
    *(v8 + 392) = -6;
    *(v8 + 99) = 0;
    *(v8 + 400) = -6;
    *(v8 + 101) = 0;
    *(v8 + 408) = -6;
    *(v8 + 103) = 0;
    *(v8 + 416) = -6;
    *(v8 + 105) = 0;
    *(v8 + 424) = -6;
    *(v8 + 107) = 0;
    *(v8 + 432) = -6;
    *(v8 + 109) = 0;
    *(v8 + 440) = -6;
    *(v8 + 111) = 0;
    *(v8 + 448) = -6;
    *(v8 + 113) = 0;
    *(v8 + 456) = -6;
    *(v8 + 115) = 0;
    *(v8 + 58) = xmmword_26DD28520;
    *(v8 + 59) = xmmword_26DD28520;
    *(v8 + 60) = xmmword_26DD28520;
    *(v8 + 61) = xmmword_26DD28520;
    *(v8 + 62) = xmmword_26DD28520;
    *(v8 + 63) = xmmword_26DD28520;
    *(v8 + 128) = 0xFFFC0000FFFCLL;
    *(v8 + 516) = -5;
    *(v8 + 130) = 0;
    *(v8 + 524) = -5;
    *(v8 + 132) = 0;
    *(v8 + 532) = -5;
    *(v8 + 134) = 0;
    *(v8 + 540) = -5;
    *(v8 + 136) = 0;
    *(v8 + 548) = -5;
    *(v8 + 138) = 0;
    *(v8 + 556) = -5;
    *(v8 + 140) = 0;
    *(v8 + 282) = 65532;
    *(v8 + 568) = -6;
    *(v8 + 143) = 0;
    *(v8 + 576) = -6;
    *(v8 + 145) = 0;
    *(v8 + 584) = -6;
    *(v8 + 147) = 0;
    *(v8 + 148) = 0xFFFC0000FFFCLL;
    *(v8 + 596) = -6;
    *(v8 + 150) = 0;
    *(v8 + 151) = 0xFFFC0000FFFCLL;
    *(v8 + 304) = 65532;
    *(v8 + 612) = -6;
    *(v8 + 154) = 0;
    *(v8 + 620) = -6;
    *(v8 + 156) = 0;
    *(v8 + 628) = -6;
    *(v8 + 158) = 0;
    *(v8 + 636) = -6;
    *(v8 + 160) = 0;
    *(v8 + 644) = -6;
    *(v8 + 162) = 0;
    *(v8 + 652) = -6;
    *(v8 + 164) = 0;
    *(v8 + 660) = -6;
    *(v8 + 166) = 0;
    *(v8 + 668) = -6;
    *(v8 + 168) = 0;
    *(v8 + 676) = -6;
    *(v8 + 170) = 0;
    *(v8 + 684) = -6;
    *(v8 + 172) = 0;
    *(v8 + 692) = -6;
    *(v8 + 174) = 0;
    *(v8 + 700) = -6;
    *(v8 + 176) = 0;
    *(v8 + 708) = -6;
    *(v8 + 178) = 0;
    *(v8 + 716) = -6;
    *(v8 + 180) = 0;
    *(v8 + 724) = -6;
    *(v8 + 182) = 0;
    *(v8 + 732) = -6;
    *(v8 + 184) = 0;
    *(v8 + 740) = -6;
    *(v8 + 186) = 0;
    *(v8 + 748) = -6;
    *(v8 + 188) = 0;
    *(v8 + 756) = -6;
    *(v8 + 190) = 0;
    *(v8 + 764) = -6;
    *(v8 + 192) = 0;
    *(v8 + 772) = -6;
    *(v8 + 194) = 0;
    *(v8 + 780) = -6;
    *(v8 + 196) = 0;
    *(v8 + 788) = -6;
    *(v8 + 198) = 0;
    *(v8 + 796) = -6;
    *(v8 + 200) = 0;
    *(v8 + 804) = -6;
    *(v8 + 202) = 0;
    *(v8 + 812) = -6;
    *(v8 + 204) = 0;
    *(v8 + 820) = -6;
    *(v8 + 206) = 0;
    *(v8 + 828) = -6;
    *(v8 + 208) = 0;
    *(v8 + 836) = -6;
    *(v8 + 210) = 0;
    *(v8 + 844) = -6;
    *(v8 + 212) = 0;
    *(v8 + 852) = -6;
    *(v8 + 214) = 0;
    *(v8 + 860) = -6;
    *(v8 + 216) = 0;
    *(v8 + 868) = -6;
    *(v8 + 218) = 0;
    *(v8 + 876) = -6;
    *(v8 + 220) = 0;
    *(v8 + 884) = -6;
    *(v8 + 222) = 0;
    *(v8 + 892) = -6;
    *(v8 + 224) = 0;
    *(v8 + 900) = -6;
    *(v8 + 226) = 0;
    *(v8 + 908) = -6;
    *(v8 + 228) = 0;
    *(v8 + 916) = -6;
    *(v8 + 230) = 0;
    *(v8 + 924) = -6;
    *(v8 + 232) = 0;
    *(v8 + 932) = -6;
    *(v8 + 234) = 0;
    *(v8 + 940) = -6;
    *(v8 + 236) = 0;
    *(v8 + 948) = -6;
    *(v8 + 238) = 0;
    *(v8 + 956) = -6;
    *(v8 + 240) = 0;
    *(v8 + 964) = -6;
    *(v8 + 242) = 0;
    *(v8 + 972) = -5;
    *(v8 + 244) = 0;
    *(v8 + 980) = -5;
    *(v8 + 246) = 0;
    *(v8 + 2120) = xmmword_26DD28520;
    *(v8 + 2136) = xmmword_26DD28520;
    *(v8 + 2152) = xmmword_26DD28520;
    *(v8 + 2168) = xmmword_26DD28520;
    *(v8 + 2184) = xmmword_26DD28520;
    *(v8 + 2200) = xmmword_26DD28520;
    *(v8 + 2216) = xmmword_26DD28520;
    *(v8 + 2232) = xmmword_26DD28520;
    *(v8 + 2248) = xmmword_26DD28520;
    *(v8 + 2264) = xmmword_26DD28520;
    *(v8 + 285) = 0xFFFC0000FFFCLL;
    *(v8 + 1144) = -5;
    *(v8 + 287) = 0;
    *(v8 + 1152) = -5;
    *(v8 + 289) = 0;
    *(v8 + 1160) = -5;
    *(v8 + 291) = 0;
    *(v8 + 1168) = -5;
    *(v8 + 293) = 0;
    *(v8 + 1176) = -5;
    *(v8 + 295) = 0;
    *(v8 + 1184) = -5;
    *(v8 + 297) = 0;
    *(v8 + 1192) = -5;
    *(v8 + 299) = 0;
    *(v8 + 1200) = -5;
    *(v8 + 301) = 0;
    *(v8 + 1208) = -5;
    *(v8 + 303) = 0;
    *(v8 + 1216) = -5;
    *(v8 + 305) = 0;
    *(v8 + 1224) = -5;
    *(v8 + 307) = 0;
    *(v8 + 154) = xmmword_26DD28520;
    *(v8 + 620) = 65532;
    *(v8 + 1244) = -6;
    *(v8 + 312) = 0;
    *(v8 + 1252) = -6;
    *(v8 + 314) = 0;
    *(v8 + 1260) = -6;
    *(v8 + 316) = 0;
    *(v8 + 317) = 0xFFFC0000FFFCLL;
    *(v8 + 636) = 65532;
    *(v8 + 161) = xmmword_26DD28520;
    *(v8 + 162) = xmmword_26DD28520;
    *(v8 + 163) = xmmword_26DD28520;
    *(v8 + 164) = xmmword_26DD28520;
    *(v8 + 1320) = -6;
    *(v8 + 331) = 0;
    *(v8 + 1328) = -6;
    *(v8 + 333) = 0;
    *(v8 + 2856) = xmmword_26DD28520;
    *(v8 + 2872) = xmmword_26DD28520;
    *(v8 + 2760) = xmmword_26DD28520;
    *(v8 + 2776) = xmmword_26DD28520;
    *(v8 + 2792) = xmmword_26DD28520;
    *(v8 + 2808) = xmmword_26DD28520;
    *(v8 + 2824) = xmmword_26DD28520;
    *(v8 + 2840) = xmmword_26DD28520;
    *(v8 + 337) = 0;
    *(v8 + 676) = 65532;
    *(v8 + 1356) = -6;
    *(v8 + 340) = 0;
    *(v8 + 2728) = xmmword_26DD28520;
    *(v8 + 2744) = xmmword_26DD28520;
    *(v8 + 1336) = -6;
    *(v8 + 335) = 0;
    *(v8 + 1344) = -6;
    *(v8 + 2888) = xmmword_26DD28520;
    *(v8 + 2904) = xmmword_26DD28520;
    *(v8 + 2920) = xmmword_26DD28520;
    *(v8 + 2936) = xmmword_26DD28520;
    *(v8 + 2952) = xmmword_26DD28520;
    *(v8 + 2968) = xmmword_26DD28520;
    *(v8 + 2984) = xmmword_26DD28520;
    *(v8 + 3000) = xmmword_26DD28520;
    *(v8 + 3016) = xmmword_26DD28520;
    *(v8 + 3032) = xmmword_26DD28520;
    *(v8 + 3048) = xmmword_26DD28520;
    *(v8 + 3064) = xmmword_26DD28520;
    *(v8 + 3080) = xmmword_26DD28520;
    *(v8 + 3096) = xmmword_26DD28520;
    *(v8 + 3112) = xmmword_26DD28520;
    *(v8 + 3128) = xmmword_26DD28520;
    *(v8 + 3144) = xmmword_26DD28520;
    *(v8 + 3160) = xmmword_26DD28520;
    *(v8 + 3176) = xmmword_26DD28520;
    *(v8 + 3192) = xmmword_26DD28520;
    *(v8 + 3208) = xmmword_26DD28520;
    *(v8 + 3224) = xmmword_26DD28520;
    *(v8 + 3240) = xmmword_26DD28520;
    *(v8 + 3256) = xmmword_26DD28520;
    *(v8 + 818) = 65532;
    *(v8 + 211) = xmmword_26DD28520;
    *(v8 + 212) = xmmword_26DD28520;
    *(v8 + 213) = xmmword_26DD28520;
    *(v8 + 214) = xmmword_26DD28520;
    *(v8 + 215) = xmmword_26DD28520;
    *(v8 + 216) = xmmword_26DD28520;
    *(v8 + 217) = xmmword_26DD28520;
    *(v8 + 218) = xmmword_26DD28520;
    *(v8 + 219) = xmmword_26DD28520;
    *(v8 + 220) = xmmword_26DD28520;
    *(v8 + 1768) = -6;
    *(v8 + 443) = 0;
    *(v8 + 444) = 0xFFFC0000FFFCLL;
    *(v8 + 890) = 65532;
    *(v8 + 1784) = -5;
    *(v8 + 447) = 0;
    *(v8 + 1792) = -5;
    *(v8 + 449) = 0;
    *(v8 + 225) = xmmword_26DD28520;
    *(v8 + 226) = xmmword_26DD28520;
    *(v8 + 227) = xmmword_26DD28520;
    *(v8 + 228) = xmmword_26DD28520;
    *(v8 + 229) = xmmword_26DD28520;
    *(v8 + 230) = xmmword_26DD28520;
    *(v8 + 231) = xmmword_26DD28520;
    *(v8 + 232) = xmmword_26DD28520;
    *(v8 + 233) = xmmword_26DD28520;
    *(v8 + 234) = xmmword_26DD28520;
    *(v8 + 470) = 0xFFFC0000FFFCLL;
    *(v8 + 942) = 65532;
    *(v8 + 1888) = -3;
    *(v8 + 473) = 0;
    *(v8 + 1960) = -5;
    *(v8 + 491) = 0;
    *(v8 + 984) = 65532;
    *(v8 + 992) = 65532;
    *(v8 + 1988) = -3;
    *(v8 + 498) = 0;
    *(v8 + 499) = 0xFFFC0000FFFCLL;
    *(v8 + 1000) = 65532;
    *(v8 + 2004) = -6;
    *(v8 + 502) = 0;
    *(v8 + 4024) = xmmword_26DD28520;
    *(v8 + 1010) = 65532;
    *(v8 + 2024) = -3;
    *(v8 + 507) = 0;
    *(v8 + 254) = xmmword_26DD28520;
    *(v8 + 255) = xmmword_26DD28520;
    *(v8 + 512) = 0xFFFC0000FFFCLL;
    *(v8 + 2052) = -6;
    *(v8 + 514) = 0;
    *(v8 + 2060) = -6;
    *(v8 + 516) = 0;
    *(v8 + 2068) = -6;
    *(v8 + 518) = 0;
    *(v8 + 2076) = -6;
    *(v8 + 520) = 0;
    *(v8 + 2084) = -6;
    *(v8 + 522) = 0;
    *(v8 + 2092) = -6;
    *(v8 + 524) = 0;
    *(v8 + 525) = 0xFFFC0000FFFCLL;
    *(v8 + 2104) = -5;
    *(v8 + 527) = 0;
    *(v8 + 264) = xmmword_26DD28520;
    *(v8 + 530) = 0xFFFC0000FFFCLL;
    *(v8 + 2124) = -5;
    *(v8 + 532) = 0;
    *(v8 + 2132) = -5;
    *(v8 + 534) = 0;
    *(v8 + 2140) = -5;
    *(v8 + 536) = 0;
    *(v8 + 2148) = -5;
    *(v8 + 538) = 0;
    *(v8 + 2156) = -5;
    *(v8 + 540) = 0;
    *(v8 + 2164) = -5;
    *(v8 + 542) = 0;
    *(v8 + 2172) = -5;
    *(v8 + 544) = 0;
    *(v8 + 2180) = -5;
    *(v8 + 546) = 0;
    *(v8 + 2188) = -5;
    *(v8 + 548) = 0;
    *(v8 + 2196) = -5;
    *(v8 + 550) = 0;
    *(v8 + 4408) = xmmword_26DD28520;
    *(v8 + 4424) = xmmword_26DD28520;
    *(v8 + 555) = 0xFFFC0000FFFCLL;
    *(v8 + 1112) = 65532;
    *(v8 + 2228) = -5;
    *(v8 + 558) = 0;
    *(v8 + 4472) = xmmword_26DD28520;
    *(v8 + 4488) = xmmword_26DD28520;
    *(v8 + 4504) = xmmword_26DD28520;
    *(v8 + 4520) = xmmword_26DD28520;
    *(v8 + 4536) = xmmword_26DD28520;
    *(v8 + 4552) = xmmword_26DD28520;
    *(v8 + 4568) = xmmword_26DD28520;
    *(v8 + 4584) = xmmword_26DD28520;
    *(v8 + 4600) = xmmword_26DD28520;
    *(v8 + 4616) = xmmword_26DD28520;
    *(v8 + 4632) = xmmword_26DD28520;
    *(v8 + 4648) = xmmword_26DD28520;
    *(v8 + 4664) = xmmword_26DD28520;
    *(v8 + 4680) = xmmword_26DD28520;
    *(v8 + 4696) = xmmword_26DD28520;
    *(v8 + 4712) = xmmword_26DD28520;
    *(v8 + 4728) = xmmword_26DD28520;
    *(v8 + 4744) = xmmword_26DD28520;
    *(v8 + 4760) = xmmword_26DD28520;
    *(v8 + 4776) = xmmword_26DD28520;
    *(v8 + 4792) = xmmword_26DD28520;
    *(v8 + 2404) = -6;
    *(v8 + 602) = 0;
    *(v8 + 2412) = -5;
    *(v8 + 604) = 0;
    *(v8 + 2420) = -5;
    *(v8 + 606) = 0;
    *(v8 + 2428) = -6;
    *(v8 + 608) = 0;
    *(v8 + 4872) = xmmword_26DD28520;
    *(v8 + 4888) = xmmword_26DD28520;
    *(v8 + 1226) = 65532;
    *(v8 + 638) = 0xFFFC0000FFFCLL;
    *(v8 + 2556) = -6;
    *(v8 + 640) = 0;
    *(v8 + 2564) = -5;
    *(v8 + 642) = 0;
    *(v8 + 2572) = -5;
    *(v8 + 644) = 0;
    *(v8 + 645) = 0xFFFC0000FFFCLL;
    *(v8 + 2584) = -6;
    *(v8 + 647) = 0;
    *(v8 + 2592) = -6;
    *(v8 + 649) = 0;
    *(v8 + 2600) = -6;
    *(v8 + 651) = 0;
    *(v8 + 2608) = -6;
    *(v8 + 653) = 0;
    *(v8 + 1308) = 65532;
    *(v8 + 2620) = -5;
    *(v8 + 656) = 0;
    *(v8 + 1314) = 65532;
    *(v8 + 2632) = -6;
    *(v8 + 659) = 0;
    *(v8 + 330) = xmmword_26DD28520;
    *(v8 + 331) = xmmword_26DD28520;
    *(v8 + 332) = xmmword_26DD28520;
    *(v8 + 666) = 0xFFFC0000FFFCLL;
    *(v8 + 1334) = 65532;
    *(v8 + 2672) = -5;
    *(v8 + 669) = 0;
    *(v8 + 2680) = -5;
    *(v8 + 671) = 0;
    *(v8 + 2688) = -5;
    *(v8 + 673) = 0;
    *(v8 + 2696) = -6;
    *(v8 + 675) = 0;
    *(v8 + 676) = 0xFFFC0000FFFCLL;
    *(v8 + 1378) = 65532;
    *(v8 + 2760) = -5;
    *(v8 + 691) = 0;
    *(v8 + 2768) = -5;
    *(v8 + 693) = 0;
    *(v8 + 2776) = -5;
    *(v8 + 695) = 0;
    *(v8 + 348) = xmmword_26DD28520;
    *(v8 + 698) = 0xFFFC0000FFFCLL;
    *(v8 + 2796) = -5;
    *(v8 + 700) = 0;
    *(v8 + 5608) = xmmword_26DD28520;
    *(v8 + 5624) = xmmword_26DD28520;
    *(v8 + 5640) = xmmword_26DD28520;
    *(v8 + 5656) = xmmword_26DD28520;
    *(v8 + 5672) = xmmword_26DD28520;
    *(v8 + 5688) = xmmword_26DD28520;
    *(v8 + 5704) = xmmword_26DD28520;
    *(v8 + 5720) = xmmword_26DD28520;
    *(v8 + 5736) = xmmword_26DD28520;
    *(v8 + 5752) = xmmword_26DD28520;
    *(v8 + 5768) = xmmword_26DD28520;
    *(v8 + 5784) = xmmword_26DD28520;
    *(v8 + 5800) = xmmword_26DD28520;
    *(v8 + 5816) = xmmword_26DD28520;
    *(v8 + 5832) = xmmword_26DD28520;
    *(v8 + 5848) = xmmword_26DD28520;
    *(v8 + 5864) = xmmword_26DD28520;
    *(v8 + 5880) = xmmword_26DD28520;
    *(v8 + 5896) = xmmword_26DD28520;
    *(v8 + 5912) = xmmword_26DD28520;
    *(v8 + 5928) = xmmword_26DD28520;
    *(v8 + 5944) = xmmword_26DD28520;
    *(v8 + 5960) = xmmword_26DD28520;
    *(v8 + 5976) = xmmword_26DD28520;
    *(v8 + 5992) = xmmword_26DD28520;
    *(v8 + 1502) = 65532;
    *(v8 + 3008) = -6;
    *(v8 + 753) = 0;
    *(v8 + 1508) = 65532;
    *(v8 + 3020) = -5;
    *(v8 + 756) = 0;
    *(v8 + 3028) = -5;
    *(v8 + 758) = 0;
    *(v8 + 3036) = -5;
    *(v8 + 760) = 0;
    *(v8 + 3044) = -5;
    *(v8 + 762) = 0;
    *(v8 + 3052) = -5;
    *(v8 + 764) = 0;
    *(v8 + 3060) = -5;
    *(v8 + 766) = 0;
    *(v8 + 3068) = -5;
    *(v8 + 768) = 0;
    *(v8 + 3076) = -5;
    *(v8 + 770) = 0;
    *(v8 + 3084) = -5;
    *(v8 + 772) = 0;
    *(v8 + 3092) = -5;
    *(v8 + 774) = 0;
    *(v8 + 3100) = -5;
    *(v8 + 776) = 0;
    *(v8 + 777) = 0xFFFC0000FFFCLL;
    *(v8 + 3112) = -6;
    *(v8 + 779) = 0;
    *(v8 + 390) = xmmword_26DD28520;
    *(v8 + 391) = xmmword_26DD28520;
    *(v8 + 784) = 0xFFFC0000FFFCLL;
    *(v8 + 4) = 220;
    *v8 = xmmword_26DD28530;
    *(v8 + 11) = v8 + 344;
    *(v8 + 12) = v8 + 360;
    v10 = malloc_type_malloc(0x6E0uLL, 0x2004093837F09uLL);
    v9[3] = v10;
    if (v10
      && (*v10 = v9 + 42,
          *(v9[3] + 8) = v9 + 44,
          *(v9[3] + 16) = v9 + 46,
          *(v9[3] + 24) = v9 + 48,
          *(v9[3] + 32) = v9 + 50,
          *(v9[3] + 40) = v9 + 52,
          *(v9[3] + 48) = v9 + 54,
          *(v9[3] + 56) = v9 + 56,
          *(v9[3] + 64) = v9 + 58,
          *(v9[3] + 72) = v9 + 60,
          *(v9[3] + 80) = v9 + 62,
          *(v9[3] + 88) = v9 + 64,
          *(v9[3] + 96) = v9 + 66,
          *(v9[3] + 104) = v9 + 68,
          *(v9[3] + 112) = v9 + 70,
          *(v9[3] + 120) = v9 + 72,
          *(v9[3] + 128) = v9 + 74,
          *(v9[3] + 136) = v9 + 76,
          *(v9[3] + 144) = v9 + 78,
          *(v9[3] + 152) = v9 + 81,
          *(v9[3] + 160) = v9 + 83,
          *(v9[3] + 168) = v9 + 85,
          *(v9[3] + 176) = v9 + 87,
          *(v9[3] + 184) = v9 + 89,
          *(v9[3] + 192) = v9 + 97,
          *(v9[3] + 200) = v9 + 99,
          *(v9[3] + 208) = v9 + 101,
          *(v9[3] + 216) = v9 + 103,
          *(v9[3] + 224) = v9 + 105,
          *(v9[3] + 232) = v9 + 107,
          *(v9[3] + 240) = v9 + 109,
          *(v9[3] + 248) = v9 + 111,
          *(v9[3] + 256) = v9 + 113,
          *(v9[3] + 264) = v9 + 115,
          *(v9[3] + 272) = v9 + 143,
          *(v9[3] + 280) = v9 + 145,
          *(v9[3] + 288) = v9 + 147,
          *(v9[3] + 296) = v9 + 150,
          *(v9[3] + 304) = v9 + 154,
          *(v9[3] + 312) = v9 + 156,
          *(v9[3] + 320) = v9 + 158,
          *(v9[3] + 328) = v9 + 160,
          *(v9[3] + 336) = v9 + 162,
          *(v9[3] + 344) = v9 + 164,
          *(v9[3] + 352) = v9 + 166,
          *(v9[3] + 360) = v9 + 168,
          *(v9[3] + 368) = v9 + 170,
          *(v9[3] + 376) = v9 + 172,
          *(v9[3] + 384) = v9 + 174,
          *(v9[3] + 392) = v9 + 176,
          *(v9[3] + 400) = v9 + 178,
          *(v9[3] + 408) = v9 + 180,
          *(v9[3] + 416) = v9 + 182,
          *(v9[3] + 424) = v9 + 184,
          *(v9[3] + 432) = v9 + 186,
          *(v9[3] + 440) = v9 + 188,
          *(v9[3] + 448) = v9 + 190,
          *(v9[3] + 456) = v9 + 192,
          *(v9[3] + 464) = v9 + 194,
          *(v9[3] + 472) = v9 + 196,
          *(v9[3] + 480) = v9 + 198,
          *(v9[3] + 488) = v9 + 200,
          *(v9[3] + 496) = v9 + 202,
          *(v9[3] + 504) = v9 + 204,
          *(v9[3] + 512) = v9 + 206,
          *(v9[3] + 520) = v9 + 208,
          *(v9[3] + 528) = v9 + 210,
          *(v9[3] + 536) = v9 + 212,
          *(v9[3] + 544) = v9 + 214,
          *(v9[3] + 552) = v9 + 216,
          *(v9[3] + 560) = v9 + 218,
          *(v9[3] + 568) = v9 + 220,
          *(v9[3] + 576) = v9 + 222,
          *(v9[3] + 584) = v9 + 224,
          *(v9[3] + 592) = v9 + 226,
          *(v9[3] + 600) = v9 + 228,
          *(v9[3] + 608) = v9 + 230,
          *(v9[3] + 616) = v9 + 232,
          *(v9[3] + 624) = v9 + 234,
          *(v9[3] + 632) = v9 + 236,
          *(v9[3] + 640) = v9 + 238,
          *(v9[3] + 648) = v9 + 240,
          *(v9[3] + 656) = v9 + 242,
          *(v9[3] + 664) = v9 + 312,
          *(v9[3] + 672) = v9 + 314,
          *(v9[3] + 680) = v9 + 316,
          *(v9[3] + 688) = v9 + 331,
          *(v9[3] + 696) = v9 + 333,
          *(v9[3] + 704) = v9 + 335,
          *(v9[3] + 712) = v9 + 337,
          *(v9[3] + 720) = v9 + 340,
          *(v9[3] + 728) = v9 + 443,
          *(v9[3] + 736) = v9 + 502,
          *(v9[3] + 744) = v9 + 514,
          *(v9[3] + 752) = v9 + 516,
          *(v9[3] + 760) = v9 + 518,
          *(v9[3] + 768) = v9 + 520,
          *(v9[3] + 776) = v9 + 522,
          *(v9[3] + 784) = v9 + 524,
          *(v9[3] + 792) = v9 + 602,
          *(v9[3] + 800) = v9 + 608,
          *(v9[3] + 808) = v9 + 640,
          *(v9[3] + 816) = v9 + 647,
          *(v9[3] + 824) = v9 + 649,
          *(v9[3] + 832) = v9 + 651,
          *(v9[3] + 840) = v9 + 653,
          *(v9[3] + 848) = v9 + 659,
          *(v9[3] + 856) = v9 + 675,
          *(v9[3] + 864) = v9 + 753,
          *(v9[3] + 872) = v9 + 779,
          *(v9[3] + 880) = v9 + 42,
          *(v9[3] + 888) = v9 + 44,
          *(v9[3] + 896) = v9 + 46,
          *(v9[3] + 904) = v9 + 48,
          *(v9[3] + 912) = v9 + 50,
          *(v9[3] + 920) = v9 + 52,
          *(v9[3] + 928) = v9 + 54,
          *(v9[3] + 936) = v9 + 56,
          *(v9[3] + 944) = v9 + 58,
          *(v9[3] + 952) = v9 + 60,
          *(v9[3] + 960) = v9 + 62,
          *(v9[3] + 968) = v9 + 64,
          *(v9[3] + 976) = v9 + 66,
          *(v9[3] + 984) = v9 + 68,
          *(v9[3] + 992) = v9 + 70,
          *(v9[3] + 1000) = v9 + 72,
          *(v9[3] + 1008) = v9 + 74,
          *(v9[3] + 1016) = v9 + 76,
          *(v9[3] + 1024) = v9 + 78,
          *(v9[3] + 1032) = v9 + 81,
          *(v9[3] + 1040) = v9 + 83,
          *(v9[3] + 1048) = v9 + 85,
          *(v9[3] + 1056) = v9 + 87,
          *(v9[3] + 1064) = v9 + 89,
          *(v9[3] + 1072) = v9 + 97,
          *(v9[3] + 1080) = v9 + 99,
          *(v9[3] + 1088) = v9 + 101,
          *(v9[3] + 1096) = v9 + 103,
          *(v9[3] + 1104) = v9 + 105,
          *(v9[3] + 1112) = v9 + 107,
          *(v9[3] + 1120) = v9 + 109,
          *(v9[3] + 1128) = v9 + 111,
          *(v9[3] + 1136) = v9 + 113,
          *(v9[3] + 1144) = v9 + 115,
          *(v9[3] + 1152) = v9 + 143,
          *(v9[3] + 1160) = v9 + 145,
          *(v9[3] + 1168) = v9 + 147,
          *(v9[3] + 1176) = v9 + 150,
          *(v9[3] + 1184) = v9 + 154,
          *(v9[3] + 1192) = v9 + 156,
          *(v9[3] + 1200) = v9 + 158,
          *(v9[3] + 1208) = v9 + 160,
          *(v9[3] + 1216) = v9 + 162,
          *(v9[3] + 1224) = v9 + 164,
          *(v9[3] + 1232) = v9 + 166,
          *(v9[3] + 1240) = v9 + 168,
          *(v9[3] + 1248) = v9 + 170,
          *(v9[3] + 1256) = v9 + 172,
          *(v9[3] + 1264) = v9 + 174,
          *(v9[3] + 1272) = v9 + 176,
          *(v9[3] + 1280) = v9 + 178,
          *(v9[3] + 1288) = v9 + 180,
          *(v9[3] + 1296) = v9 + 182,
          *(v9[3] + 1304) = v9 + 184,
          *(v9[3] + 1312) = v9 + 186,
          *(v9[3] + 1320) = v9 + 188,
          *(v9[3] + 1328) = v9 + 190,
          *(v9[3] + 1336) = v9 + 192,
          *(v9[3] + 1344) = v9 + 194,
          *(v9[3] + 1352) = v9 + 196,
          *(v9[3] + 1360) = v9 + 198,
          *(v9[3] + 1368) = v9 + 200,
          *(v9[3] + 1376) = v9 + 202,
          *(v9[3] + 1384) = v9 + 204,
          *(v9[3] + 1392) = v9 + 206,
          *(v9[3] + 1400) = v9 + 208,
          *(v9[3] + 1408) = v9 + 210,
          *(v9[3] + 1416) = v9 + 212,
          *(v9[3] + 1424) = v9 + 214,
          *(v9[3] + 1432) = v9 + 216,
          *(v9[3] + 1440) = v9 + 218,
          *(v9[3] + 1448) = v9 + 220,
          *(v9[3] + 1456) = v9 + 222,
          *(v9[3] + 1464) = v9 + 224,
          *(v9[3] + 1472) = v9 + 226,
          *(v9[3] + 1480) = v9 + 228,
          *(v9[3] + 1488) = v9 + 230,
          *(v9[3] + 1496) = v9 + 232,
          *(v9[3] + 1504) = v9 + 234,
          *(v9[3] + 1512) = v9 + 236,
          *(v9[3] + 1520) = v9 + 238,
          *(v9[3] + 1528) = v9 + 240,
          *(v9[3] + 1536) = v9 + 242,
          *(v9[3] + 1544) = v9 + 312,
          *(v9[3] + 1552) = v9 + 314,
          *(v9[3] + 1560) = v9 + 316,
          *(v9[3] + 1568) = v9 + 331,
          *(v9[3] + 1576) = v9 + 333,
          *(v9[3] + 1584) = v9 + 335,
          *(v9[3] + 1592) = v9 + 337,
          *(v9[3] + 1600) = v9 + 340,
          *(v9[3] + 1608) = v9 + 443,
          *(v9[3] + 1616) = v9 + 502,
          *(v9[3] + 1624) = v9 + 514,
          *(v9[3] + 1632) = v9 + 516,
          *(v9[3] + 1640) = v9 + 518,
          *(v9[3] + 1648) = v9 + 520,
          *(v9[3] + 1656) = v9 + 522,
          *(v9[3] + 1664) = v9 + 524,
          *(v9[3] + 1672) = v9 + 602,
          *(v9[3] + 1680) = v9 + 608,
          *(v9[3] + 1688) = v9 + 640,
          *(v9[3] + 1696) = v9 + 647,
          *(v9[3] + 1704) = v9 + 649,
          *(v9[3] + 1712) = v9 + 651,
          *(v9[3] + 1720) = v9 + 653,
          *(v9[3] + 1728) = v9 + 659,
          *(v9[3] + 1736) = v9 + 675,
          *(v9[3] + 1744) = v9 + 753,
          *(v9[3] + 1752) = v9 + 779,
          v11 = malloc_type_malloc(0x280uLL, 0x1020040EDED9539uLL),
          (v9[4] = v11) != 0)
      && (*v11 = v9 + 247, v11[1] = 0x500000001, v11[2] = v9 + 250, v11[3] = 0x500000001, v11[4] = v9 + 253, v11[5] = 0x500000001, v11[6] = v9 + 256, v11[7] = 0x200000007, v11[8] = v9 + 259, v11[9] = 0x200000008, v11[10] = v9 + 262, v11[11] = 0x200000000, v11[12] = v9 + 319, v11[13] = 0x500000001, v11[14] = v9 + 410, v11[15] = 0xA00000005, v11[16] = v9 + 414, v11[17] = 0xA00000005, v11[18] = v9 + 418, v11[19] = 0xA00000005, v11[20] = v9 + 474, v11[21] = 0x1000000004, v11[22] = v9 + 478, v11[23] = 0x3000000006, v11[24] = v9 + 486, v11[25] = 0x1000000004, v11[26] = v9 + 493, v11[27] = 0x500000001, v11[28] = v9 + 614, v11[29] = 0x3000000006, v11[30] = v9 + 622, v11[31] = 0x3000000006, v11[32] = v9 + 630, v11[33] = 0x3000000006, v11[34] = v9 + 677, v11[35] = 0xA00000005, v11[36] = v9 + 681, v11[37] = 0x1000000004, v11[38] = v9 + 685, v11[39] = 0x1000000004, v11[40] = v9 + 247, v11[41] = 0x500000001, v11[42] = v9 + 250, v11[43] = 0x500000001, v11[44] = v9 + 253, v11[45] = 0x500000001, v11[46] = v9 + 256, v11[47] = 0x200000007, v11[48] = v9 + 259, v11[49] = 0x200000008, v11[50] = v9 + 262, v11[51] = 0x200000000, v11[52] = v9 + 319, v11[53] = 0x500000001, v11[54] = v9 + 410, v11[55] = 0xA00000005, v11[56] = v9 + 414, v11[57] = 0xA00000005, v11[58] = v9 + 418, v11[59] = 0xA00000005, v11[60] = v9 + 474, v11[61] = 0x1000000004, v11[62] = v9 + 478, v11[63] = 0x3000000006, v11[64] = v9 + 486, v11[65] = 0x1000000004, v11[66] = v9 + 493, v12 = v9[4], v12[67] = 0x500000001, v12[68] = v9 + 614, v12[69] = 0x3000000006, v12[70] = v9 + 622, v12[71] = 0x3000000006, v12[72] = v9 + 630, v12[73] = 0x3000000006, v12[74] = v9 + 677, v12[75] = 0xA00000005, v12[76] = v9 + 681, v12[77] = 0x1000000004, v12[78] = v9 + 685, v12[79] = 0x1000000004, v13 = malloc_type_malloc(0x30uLL, 0x10040436913F5uLL), (v9[5] = v13) != 0)
      && (*v13 = v9 + 473, *(v9[5] + 8) = v9 + 498, *(v9[5] + 16) = v9 + 507, *(v9[5] + 24) = v9 + 473, *(v9[5] + 32) = v9 + 498, *(v9[5] + 40) = v9 + 507, v14 = malloc_type_malloc(0x2630uLL, 0x10040436913F5uLL), (v9[6] = v14) != 0)
      && (*v14 = v9 + 634,
          *(v9[6] + 8) = v9 + 722,
          *(v9[6] + 16) = v9 + 726,
          *(v9[6] + 24) = v9 + 730,
          *(v9[6] + 32) = v9 + 734,
          *(v9[6] + 40) = v9 + 738,
          *(v9[6] + 48) = v9 + 742,
          *(v9[6] + 56) = v9 + 746,
          *(v9[6] + 64) = v9 + 750,
          *(v9[6] + 72) = v9 + 754,
          *(v9[6] + 80) = v9 + 758,
          *(v9[6] + 88) = v9 + 762,
          *(v9[6] + 96) = v9 + 766,
          *(v9[6] + 104) = v9 + 930,
          *(v9[6] + 112) = v9 + 934,
          *(v9[6] + 120) = v9 + 938,
          *(v9[6] + 128) = v9 + 942,
          *(v9[6] + 136) = v9 + 946,
          *(v9[6] + 144) = v9 + 950,
          *(v9[6] + 152) = v9 + 954,
          *(v9[6] + 160) = v9 + 958,
          *(v9[6] + 168) = v9 + 962,
          *(v9[6] + 176) = v9 + 966,
          *(v9[6] + 184) = v9 + 970,
          *(v9[6] + 192) = v9 + 974,
          *(v9[6] + 200) = v9 + 978,
          *(v9[6] + 208) = v9 + 982,
          *(v9[6] + 216) = v9 + 986,
          *(v9[6] + 224) = v9 + 990,
          *(v9[6] + 232) = v9 + 994,
          *(v9[6] + 240) = v9 + 998,
          *(v9[6] + 248) = v9 + 1002,
          *(v9[6] + 256) = v9 + 1006,
          *(v9[6] + 264) = v9 + 1010,
          *(v9[6] + 272) = v9 + 1014,
          *(v9[6] + 280) = v9 + 1018,
          *(v9[6] + 288) = v9 + 1022,
          *(v9[6] + 296) = v9 + 1026,
          *(v9[6] + 304) = v9 + 1030,
          *(v9[6] + 312) = v9 + 1130,
          *(v9[6] + 320) = v9 + 1186,
          *(v9[6] + 328) = v9 + 1190,
          *(v9[6] + 336) = v9 + 1210,
          *(v9[6] + 344) = v9 + 1214,
          *(v9[6] + 352) = v9 + 1218,
          *(v9[6] + 360) = v9 + 2122,
          *(v9[6] + 368) = v9 + 2126,
          *(v9[6] + 376) = v9 + 2130,
          *(v9[6] + 384) = v9 + 2134,
          *(v9[6] + 392) = v9 + 2138,
          *(v9[6] + 400) = v9 + 2142,
          *(v9[6] + 408) = v9 + 2146,
          *(v9[6] + 416) = v9 + 2150,
          *(v9[6] + 424) = v9 + 2154,
          *(v9[6] + 432) = v9 + 2158,
          *(v9[6] + 440) = v9 + 2162,
          *(v9[6] + 448) = v9 + 2166,
          *(v9[6] + 456) = v9 + 2170,
          *(v9[6] + 464) = v9 + 2174,
          *(v9[6] + 472) = v9 + 2178,
          *(v9[6] + 480) = v9 + 2182,
          *(v9[6] + 488) = v9 + 2186,
          *(v9[6] + 496) = v9 + 2190,
          *(v9[6] + 504) = v9 + 2194,
          *(v9[6] + 512) = v9 + 2198,
          *(v9[6] + 520) = v9 + 2202,
          *(v9[6] + 528) = v9 + 2206,
          *(v9[6] + 536) = v9 + 2210,
          *(v9[6] + 544) = v9 + 2214,
          *(v9[6] + 552) = v9 + 2218,
          *(v9[6] + 560) = v9 + 2222,
          *(v9[6] + 568) = v9 + 2226,
          *(v9[6] + 576) = v9 + 2230,
          *(v9[6] + 584) = v9 + 2234,
          *(v9[6] + 592) = v9 + 2238,
          *(v9[6] + 600) = v9 + 2242,
          *(v9[6] + 608) = v9 + 2246,
          *(v9[6] + 616) = v9 + 2250,
          *(v9[6] + 624) = v9 + 2254,
          *(v9[6] + 632) = v9 + 2258,
          *(v9[6] + 640) = v9 + 2262,
          *(v9[6] + 648) = v9 + 2266,
          *(v9[6] + 656) = v9 + 2270,
          *(v9[6] + 664) = v9 + 2274,
          *(v9[6] + 672) = v9 + 2278,
          *(v9[6] + 680) = v9 + 2282,
          *(v9[6] + 688) = v9 + 2286,
          *(v9[6] + 696) = v9 + 2466,
          *(v9[6] + 704) = v9 + 2470,
          *(v9[6] + 712) = v9 + 2474,
          *(v9[6] + 720) = v9 + 2478,
          *(v9[6] + 728) = v9 + 2482,
          *(v9[6] + 736) = v9 + 2538,
          *(v9[6] + 744) = v9 + 2542,
          *(v9[6] + 752) = v9 + 2546,
          *(v9[6] + 760) = v9 + 2578,
          *(v9[6] + 768) = v9 + 2582,
          *(v9[6] + 776) = v9 + 2586,
          *(v9[6] + 784) = v9 + 2590,
          *(v9[6] + 792) = v9 + 2594,
          *(v9[6] + 800) = v9 + 2598,
          *(v9[6] + 808) = v9 + 2602,
          *(v9[6] + 816) = v9 + 2606,
          *(v9[6] + 824) = v9 + 2610,
          *(v9[6] + 832) = v9 + 2614,
          *(v9[6] + 840) = v9 + 2618,
          *(v9[6] + 848) = v9 + 2622,
          *(v9[6] + 856) = v9 + 2626,
          *(v9[6] + 864) = v9 + 2630,
          *(v9[6] + 872) = v9 + 2634,
          *(v9[6] + 880) = v9 + 2638,
          *(v9[6] + 888) = v9 + 2706,
          *(v9[6] + 896) = v9 + 2730,
          *(v9[6] + 904) = v9 + 2734,
          *(v9[6] + 912) = v9 + 2738,
          *(v9[6] + 920) = v9 + 2742,
          *(v9[6] + 928) = v9 + 2746,
          *(v9[6] + 936) = v9 + 2750,
          *(v9[6] + 944) = v9 + 2754,
          *(v9[6] + 952) = v9 + 2758,
          *(v9[6] + 960) = v9 + 2762,
          *(v9[6] + 968) = v9 + 2766,
          *(v9[6] + 976) = v9 + 2770,
          *(v9[6] + 984) = v9 + 2774,
          *(v9[6] + 992) = v9 + 2778,
          *(v9[6] + 1000) = v9 + 2782,
          *(v9[6] + 1008) = v9 + 2786,
          *(v9[6] + 1016) = v9 + 2790,
          *(v9[6] + 1024) = v9 + 2794,
          *(v9[6] + 1032) = v9 + 2798,
          *(v9[6] + 1040) = v9 + 2802,
          *(v9[6] + 1048) = v9 + 2806,
          *(v9[6] + 1056) = v9 + 2810,
          *(v9[6] + 1064) = v9 + 2814,
          *(v9[6] + 1072) = v9 + 2818,
          *(v9[6] + 1080) = v9 + 2822,
          *(v9[6] + 1088) = v9 + 2826,
          *(v9[6] + 1096) = v9 + 2830,
          *(v9[6] + 1104) = v9 + 2834,
          *(v9[6] + 1112) = v9 + 2838,
          *(v9[6] + 1120) = v9 + 2842,
          *(v9[6] + 1128) = v9 + 2846,
          *(v9[6] + 1136) = v9 + 2850,
          *(v9[6] + 1144) = v9 + 2854,
          *(v9[6] + 1152) = v9 + 2858,
          *(v9[6] + 1160) = v9 + 2862,
          *(v9[6] + 1168) = v9 + 2866,
          *(v9[6] + 1176) = v9 + 2870,
          *(v9[6] + 1184) = v9 + 2874,
          *(v9[6] + 1192) = v9 + 2878,
          *(v9[6] + 1200) = v9 + 2882,
          *(v9[6] + 1208) = v9 + 2886,
          *(v9[6] + 1216) = v9 + 2890,
          *(v9[6] + 1224) = v9 + 2894,
          *(v9[6] + 1232) = v9 + 2898,
          *(v9[6] + 1240) = v9 + 2902,
          *(v9[6] + 1248) = v9 + 2906,
          *(v9[6] + 1256) = v9 + 2910,
          *(v9[6] + 1264) = v9 + 2914,
          *(v9[6] + 1272) = v9 + 2918,
          *(v9[6] + 1280) = v9 + 2922,
          *(v9[6] + 1288) = v9 + 2926,
          *(v9[6] + 1296) = v9 + 2930,
          *(v9[6] + 1304) = v9 + 2934,
          *(v9[6] + 1312) = v9 + 2938,
          *(v9[6] + 1320) = v9 + 2942,
          *(v9[6] + 1328) = v9 + 2946,
          *(v9[6] + 1336) = v9 + 2950,
          *(v9[6] + 1344) = v9 + 2954,
          *(v9[6] + 1352) = v9 + 2958,
          *(v9[6] + 1360) = v9 + 2962,
          *(v9[6] + 1368) = v9 + 2966,
          *(v9[6] + 1376) = v9 + 2970,
          *(v9[6] + 1384) = v9 + 2974,
          *(v9[6] + 1392) = v9 + 2978,
          *(v9[6] + 1400) = v9 + 2982,
          *(v9[6] + 1408) = v9 + 2986,
          *(v9[6] + 1416) = v9 + 2990,
          *(v9[6] + 1424) = v9 + 2994,
          *(v9[6] + 1432) = v9 + 2998,
          *(v9[6] + 1440) = v9 + 3002,
          *(v9[6] + 1448) = v9 + 3006,
          *(v9[6] + 1456) = v9 + 3010,
          *(v9[6] + 1464) = v9 + 3014,
          *(v9[6] + 1472) = v9 + 3018,
          *(v9[6] + 1480) = v9 + 3022,
          *(v9[6] + 1488) = v9 + 3026,
          *(v9[6] + 1496) = v9 + 3030,
          *(v9[6] + 1504) = v9 + 3034,
          *(v9[6] + 1512) = v9 + 3038,
          *(v9[6] + 1520) = v9 + 3042,
          *(v9[6] + 1528) = v9 + 3046,
          *(v9[6] + 1536) = v9 + 3050,
          *(v9[6] + 1544) = v9 + 3054,
          *(v9[6] + 1552) = v9 + 3058,
          *(v9[6] + 1560) = v9 + 3062,
          *(v9[6] + 1568) = v9 + 3066,
          *(v9[6] + 1576) = v9 + 3070,
          *(v9[6] + 1584) = v9 + 3074,
          *(v9[6] + 1592) = v9 + 3078,
          *(v9[6] + 1600) = v9 + 3082,
          *(v9[6] + 1608) = v9 + 3086,
          *(v9[6] + 1616) = v9 + 3090,
          *(v9[6] + 1624) = v9 + 3094,
          *(v9[6] + 1632) = v9 + 3098,
          *(v9[6] + 1640) = v9 + 3102,
          *(v9[6] + 1648) = v9 + 3106,
          *(v9[6] + 1656) = v9 + 3110,
          *(v9[6] + 1664) = v9 + 3114,
          *(v9[6] + 1672) = v9 + 3118,
          *(v9[6] + 1680) = v9 + 3122,
          *(v9[6] + 1688) = v9 + 3126,
          *(v9[6] + 1696) = v9 + 3130,
          *(v9[6] + 1704) = v9 + 3134,
          *(v9[6] + 1712) = v9 + 3138,
          *(v9[6] + 1720) = v9 + 3142,
          *(v9[6] + 1728) = v9 + 3146,
          *(v9[6] + 1736) = v9 + 3150,
          *(v9[6] + 1744) = v9 + 3154,
          *(v9[6] + 1752) = v9 + 3158,
          *(v9[6] + 1760) = v9 + 3162,
          *(v9[6] + 1768) = v9 + 3166,
          *(v9[6] + 1776) = v9 + 3170,
          *(v9[6] + 1784) = v9 + 3174,
          *(v9[6] + 1792) = v9 + 3178,
          *(v9[6] + 1800) = v9 + 3182,
          *(v9[6] + 1808) = v9 + 3186,
          *(v9[6] + 1816) = v9 + 3190,
          *(v9[6] + 1824) = v9 + 3194,
          *(v9[6] + 1832) = v9 + 3198,
          *(v9[6] + 1840) = v9 + 3202,
          *(v9[6] + 1848) = v9 + 3206,
          *(v9[6] + 1856) = v9 + 3210,
          *(v9[6] + 1864) = v9 + 3214,
          *(v9[6] + 1872) = v9 + 3218,
          *(v9[6] + 1880) = v9 + 3222,
          *(v9[6] + 1888) = v9 + 3226,
          *(v9[6] + 1896) = v9 + 3230,
          *(v9[6] + 1904) = v9 + 3234,
          *(v9[6] + 1912) = v9 + 3238,
          *(v9[6] + 1920) = v9 + 3242,
          *(v9[6] + 1928) = v9 + 3246,
          *(v9[6] + 1936) = v9 + 3250,
          *(v9[6] + 1944) = v9 + 3254,
          *(v9[6] + 1952) = v9 + 3258,
          *(v9[6] + 1960) = v9 + 3262,
          *(v9[6] + 1968) = v9 + 3266,
          *(v9[6] + 1976) = v9 + 3270,
          *(v9[6] + 1984) = v9 + 3274,
          *(v9[6] + 1992) = v9 + 3378,
          *(v9[6] + 2000) = v9 + 3382,
          *(v9[6] + 2008) = v9 + 3386,
          *(v9[6] + 2016) = v9 + 3390,
          *(v9[6] + 2024) = v9 + 3394,
          *(v9[6] + 2032) = v9 + 3398,
          *(v9[6] + 2040) = v9 + 3402,
          *(v9[6] + 2048) = v9 + 3406,
          *(v9[6] + 2056) = v9 + 3410,
          *(v9[6] + 2064) = v9 + 3414,
          *(v9[6] + 2072) = v9 + 3418,
          *(v9[6] + 2080) = v9 + 3422,
          *(v9[6] + 2088) = v9 + 3426,
          *(v9[6] + 2096) = v9 + 3430,
          *(v9[6] + 2104) = v9 + 3434,
          *(v9[6] + 2112) = v9 + 3438,
          *(v9[6] + 2120) = v9 + 3442,
          *(v9[6] + 2128) = v9 + 3446,
          *(v9[6] + 2136) = v9 + 3450,
          *(v9[6] + 2144) = v9 + 3454,
          *(v9[6] + 2152) = v9 + 3458,
          *(v9[6] + 2160) = v9 + 3462,
          *(v9[6] + 2168) = v9 + 3466,
          *(v9[6] + 2176) = v9 + 3470,
          *(v9[6] + 2184) = v9 + 3474,
          *(v9[6] + 2192) = v9 + 3478,
          *(v9[6] + 2200) = v9 + 3482,
          *(v9[6] + 2208) = v9 + 3486,
          *(v9[6] + 2216) = v9 + 3490,
          *(v9[6] + 2224) = v9 + 3494,
          *(v9[6] + 2232) = v9 + 3498,
          *(v9[6] + 2240) = v9 + 3502,
          *(v9[6] + 2248) = v9 + 3506,
          *(v9[6] + 2256) = v9 + 3510,
          *(v9[6] + 2264) = v9 + 3514,
          *(v9[6] + 2272) = v9 + 3518,
          *(v9[6] + 2280) = v9 + 3522,
          *(v9[6] + 2288) = v9 + 3526,
          *(v9[6] + 2296) = v9 + 3530,
          *(v9[6] + 2304) = v9 + 3534,
          *(v9[6] + 2312) = v9 + 3554,
          *(v9[6] + 2320) = v9 + 3558,
          *(v9[6] + 2328) = v9 + 3562,
          *(v9[6] + 2336) = v9 + 3602,
          *(v9[6] + 2344) = v9 + 3606,
          *(v9[6] + 2352) = v9 + 3610,
          *(v9[6] + 2360) = v9 + 3614,
          *(v9[6] + 2368) = v9 + 3618,
          *(v9[6] + 2376) = v9 + 3622,
          *(v9[6] + 2384) = v9 + 3626,
          *(v9[6] + 2392) = v9 + 3630,
          *(v9[6] + 2400) = v9 + 3634,
          *(v9[6] + 2408) = v9 + 3638,
          *(v9[6] + 2416) = v9 + 3642,
          *(v9[6] + 2424) = v9 + 3646,
          *(v9[6] + 2432) = v9 + 3650,
          *(v9[6] + 2440) = v9 + 3654,
          *(v9[6] + 2448) = v9 + 3658,
          *(v9[6] + 2456) = v9 + 3662,
          *(v9[6] + 2464) = v9 + 3666,
          *(v9[6] + 2472) = v9 + 3670,
          *(v9[6] + 2480) = v9 + 3674,
          *(v9[6] + 2488) = v9 + 3678,
          *(v9[6] + 2496) = v9 + 3682,
          *(v9[6] + 2504) = v9 + 3686,
          *(v9[6] + 2512) = v9 + 3690,
          *(v9[6] + 2520) = v9 + 3694,
          *(v9[6] + 2528) = v9 + 3698,
          *(v9[6] + 2536) = v9 + 3702,
          *(v9[6] + 2544) = v9 + 3706,
          *(v9[6] + 2552) = v9 + 3710,
          *(v9[6] + 2560) = v9 + 3714,
          *(v9[6] + 2568) = v9 + 3718,
          *(v9[6] + 2576) = v9 + 3722,
          *(v9[6] + 2584) = v9 + 3726,
          *(v9[6] + 2592) = v9 + 3730,
          *(v9[6] + 2600) = v9 + 3734,
          *(v9[6] + 2608) = v9 + 3738,
          *(v9[6] + 2616) = v9 + 3742,
          *(v9[6] + 2624) = v9 + 3746,
          *(v9[6] + 2632) = v9 + 3750,
          *(v9[6] + 2640) = v9 + 3754,
          *(v9[6] + 2648) = v9 + 3758,
          *(v9[6] + 2656) = v9 + 3762,
          *(v9[6] + 2664) = v9 + 3766,
          *(v9[6] + 2672) = v9 + 3770,
          *(v9[6] + 2680) = v9 + 3938,
          *(v9[6] + 2688) = v9 + 3970,
          *(v9[6] + 2696) = v9 + 3994,
          *(v9[6] + 2704) = v9 + 3998,
          *(v9[6] + 2712) = v9 + 4002,
          *(v9[6] + 2720) = v9 + 4026,
          *(v9[6] + 2728) = v9 + 4030,
          *(v9[6] + 2736) = v9 + 4034,
          *(v9[6] + 2744) = v9 + 4038,
          *(v9[6] + 2752) = v9 + 4042,
          *(v9[6] + 2760) = v9 + 4066,
          *(v9[6] + 2768) = v9 + 4070,
          *(v9[6] + 2776) = v9 + 4074,
          *(v9[6] + 2784) = v9 + 4078,
          *(v9[6] + 2792) = v9 + 4082,
          *(v9[6] + 2800) = v9 + 4086,
          *(v9[6] + 2808) = v9 + 4090,
          *(v9[6] + 2816) = v9 + 4094,
          *(v9[6] + 2824) = v9 + 4098,
          *(v9[6] + 2832) = v9 + 4102,
          *(v9[6] + 2840) = v9 + 4202,
          *(v9[6] + 2848) = v9 + 4206,
          *(v9[6] + 2856) = v9 + 4226,
          *(v9[6] + 2864) = v9 + 4230,
          *(v9[6] + 2872) = v9 + 4234,
          *(v9[6] + 2880) = v9 + 4238,
          *(v9[6] + 2888) = v9 + 4242,
          *(v9[6] + 2896) = v9 + 4246,
          *(v9[6] + 2904) = v9 + 4410,
          *(v9[6] + 2912) = v9 + 4414,
          *(v9[6] + 2920) = v9 + 4418,
          *(v9[6] + 2928) = v9 + 4422,
          *(v9[6] + 2936) = v9 + 4426,
          *(v9[6] + 2944) = v9 + 4430,
          *(v9[6] + 2952) = v9 + 4434,
          *(v9[6] + 2960) = v9 + 4438,
          *(v9[6] + 2968) = v9 + 4442,
          *(v9[6] + 2976) = v9 + 4446,
          *(v9[6] + 2984) = v9 + 4450,
          *(v9[6] + 2992) = v9 + 4474,
          *(v9[6] + 3000) = v9 + 4478,
          *(v9[6] + 3008) = v9 + 4482,
          *(v9[6] + 3016) = v9 + 4486,
          *(v9[6] + 3024) = v9 + 4490,
          *(v9[6] + 3032) = v9 + 4494,
          *(v9[6] + 3040) = v9 + 4498,
          *(v9[6] + 3048) = v9 + 4502,
          *(v9[6] + 3056) = v9 + 4506,
          *(v9[6] + 3064) = v9 + 4510,
          *(v9[6] + 3072) = v9 + 4514,
          *(v9[6] + 3080) = v9 + 4518,
          *(v9[6] + 3088) = v9 + 4522,
          *(v9[6] + 3096) = v9 + 4526,
          *(v9[6] + 3104) = v9 + 4530,
          *(v9[6] + 3112) = v9 + 4534,
          *(v9[6] + 3120) = v9 + 4538,
          *(v9[6] + 3128) = v9 + 4542,
          *(v9[6] + 3136) = v9 + 4546,
          *(v9[6] + 3144) = v9 + 4550,
          *(v9[6] + 3152) = v9 + 4554,
          *(v9[6] + 3160) = v9 + 4558,
          *(v9[6] + 3168) = v9 + 4562,
          *(v9[6] + 3176) = v9 + 4566,
          *(v9[6] + 3184) = v9 + 4570,
          *(v9[6] + 3192) = v9 + 4574,
          *(v9[6] + 3200) = v9 + 4578,
          *(v9[6] + 3208) = v9 + 4582,
          *(v9[6] + 3216) = v9 + 4586,
          *(v9[6] + 3224) = v9 + 4590,
          *(v9[6] + 3232) = v9 + 4594,
          *(v9[6] + 3240) = v9 + 4598,
          *(v9[6] + 3248) = v9 + 4602,
          *(v9[6] + 3256) = v9 + 4606,
          *(v9[6] + 3264) = v9 + 4610,
          *(v9[6] + 3272) = v9 + 4614,
          *(v9[6] + 3280) = v9 + 4618,
          *(v9[6] + 3288) = v9 + 4622,
          *(v9[6] + 3296) = v9 + 4626,
          *(v9[6] + 3304) = v9 + 4630,
          *(v9[6] + 3312) = v9 + 4634,
          *(v9[6] + 3320) = v9 + 4638,
          *(v9[6] + 3328) = v9 + 4642,
          *(v9[6] + 3336) = v9 + 4646,
          *(v9[6] + 3344) = v9 + 4650,
          *(v9[6] + 3352) = v9 + 4654,
          *(v9[6] + 3360) = v9 + 4658,
          *(v9[6] + 3368) = v9 + 4662,
          *(v9[6] + 3376) = v9 + 4666,
          *(v9[6] + 3384) = v9 + 4670,
          *(v9[6] + 3392) = v9 + 4674,
          *(v9[6] + 3400) = v9 + 4678,
          *(v9[6] + 3408) = v9 + 4682,
          *(v9[6] + 3416) = v9 + 4686,
          *(v9[6] + 3424) = v9 + 4690,
          *(v9[6] + 3432) = v9 + 4694,
          *(v9[6] + 3440) = v9 + 4698,
          *(v9[6] + 3448) = v9 + 4702,
          *(v9[6] + 3456) = v9 + 4706,
          *(v9[6] + 3464) = v9 + 4710,
          *(v9[6] + 3472) = v9 + 4714,
          *(v9[6] + 3480) = v9 + 4718,
          *(v9[6] + 3488) = v9 + 4722,
          *(v9[6] + 3496) = v9 + 4726,
          *(v9[6] + 3504) = v9 + 4730,
          *(v9[6] + 3512) = v9 + 4734,
          *(v9[6] + 3520) = v9 + 4738,
          *(v9[6] + 3528) = v9 + 4742,
          *(v9[6] + 3536) = v9 + 4746,
          *(v9[6] + 3544) = v9 + 4750,
          *(v9[6] + 3552) = v9 + 4754,
          *(v9[6] + 3560) = v9 + 4758,
          *(v9[6] + 3568) = v9 + 4762,
          *(v9[6] + 3576) = v9 + 4766,
          *(v9[6] + 3584) = v9 + 4770,
          *(v9[6] + 3592) = v9 + 4774,
          *(v9[6] + 3600) = v9 + 4778,
          *(v9[6] + 3608) = v9 + 4782,
          *(v9[6] + 3616) = v9 + 4786,
          *(v9[6] + 3624) = v9 + 4790,
          *(v9[6] + 3632) = v9 + 4794,
          *(v9[6] + 3640) = v9 + 4798,
          *(v9[6] + 3648) = v9 + 4802,
          *(v9[6] + 3656) = v9 + 4806,
          *(v9[6] + 3664) = v9 + 4874,
          *(v9[6] + 3672) = v9 + 4878,
          *(v9[6] + 3680) = v9 + 4882,
          *(v9[6] + 3688) = v9 + 4886,
          *(v9[6] + 3696) = v9 + 4890,
          *(v9[6] + 3704) = v9 + 4894,
          *(v9[6] + 3712) = v9 + 4898,
          *(v9[6] + 3720) = v9 + 4902,
          *(v9[6] + 3728) = v9 + 4906,
          *(v9[6] + 3736) = v9 + 5106,
          *(v9[6] + 3744) = v9 + 5110,
          *(v9[6] + 3752) = v9 + 5162,
          *(v9[6] + 3760) = v9 + 5166,
          *(v9[6] + 3768) = v9 + 5234,
          *(v9[6] + 3776) = v9 + 5258,
          *(v9[6] + 3784) = v9 + 5282,
          *(v9[6] + 3792) = v9 + 5286,
          *(v9[6] + 3800) = v9 + 5290,
          *(v9[6] + 3808) = v9 + 5294,
          *(v9[6] + 3816) = v9 + 5298,
          *(v9[6] + 3824) = v9 + 5302,
          *(v9[6] + 3832) = v9 + 5306,
          *(v9[6] + 3840) = v9 + 5310,
          *(v9[6] + 3848) = v9 + 5314,
          *(v9[6] + 3856) = v9 + 5318,
          *(v9[6] + 3864) = v9 + 5322,
          *(v9[6] + 3872) = v9 + 5326,
          *(v9[6] + 3880) = v9 + 5330,
          *(v9[6] + 3888) = v9 + 5334,
          *(v9[6] + 3896) = v9 + 5338,
          *(v9[6] + 3904) = v9 + 5410,
          *(v9[6] + 3912) = v9 + 5414,
          *(v9[6] + 3920) = v9 + 5514,
          *(v9[6] + 3928) = v9 + 5570,
          *(v9[6] + 3936) = v9 + 5574,
          *(v9[6] + 3944) = v9 + 5578,
          *(v9[6] + 3952) = v9 + 5582,
          *(v9[6] + 3960) = v9 + 5586,
          *(v9[6] + 3968) = v9 + 5590,
          *(v9[6] + 3976) = v9 + 5610,
          *(v9[6] + 3984) = v9 + 5614,
          *(v9[6] + 3992) = v9 + 5618,
          *(v9[6] + 4000) = v9 + 5622,
          *(v9[6] + 4008) = v9 + 5626,
          *(v9[6] + 4016) = v9 + 5630,
          *(v9[6] + 4024) = v9 + 5634,
          *(v9[6] + 4032) = v9 + 5638,
          *(v9[6] + 4040) = v9 + 5642,
          *(v9[6] + 4048) = v9 + 5646,
          *(v9[6] + 4056) = v9 + 5650,
          *(v9[6] + 4064) = v9 + 5654,
          *(v9[6] + 4072) = v9 + 5658,
          *(v9[6] + 4080) = v9 + 5662,
          *(v9[6] + 4088) = v9 + 5666,
          *(v9[6] + 4096) = v9 + 5670,
          *(v9[6] + 4104) = v9 + 5674,
          *(v9[6] + 4112) = v9 + 5678,
          *(v9[6] + 4120) = v9 + 5682,
          *(v9[6] + 4128) = v9 + 5686,
          *(v9[6] + 4136) = v9 + 5690,
          *(v9[6] + 4144) = v9 + 5694,
          *(v9[6] + 4152) = v9 + 5698,
          *(v9[6] + 4160) = v9 + 5702,
          *(v9[6] + 4168) = v9 + 5706,
          *(v9[6] + 4176) = v9 + 5710,
          *(v9[6] + 4184) = v9 + 5714,
          *(v9[6] + 4192) = v9 + 5718,
          *(v9[6] + 4200) = v9 + 5722,
          *(v9[6] + 4208) = v9 + 5726,
          *(v9[6] + 4216) = v9 + 5730,
          *(v9[6] + 4224) = v9 + 5734,
          *(v9[6] + 4232) = v9 + 5738,
          *(v9[6] + 4240) = v9 + 5742,
          *(v9[6] + 4248) = v9 + 5746,
          *(v9[6] + 4256) = v9 + 5750,
          *(v9[6] + 4264) = v9 + 5754,
          *(v9[6] + 4272) = v9 + 5758,
          *(v9[6] + 4280) = v9 + 5762,
          *(v9[6] + 4288) = v9 + 5766,
          *(v9[6] + 4296) = v9 + 5770,
          *(v9[6] + 4304) = v9 + 5774,
          *(v9[6] + 4312) = v9 + 5778,
          *(v9[6] + 4320) = v9 + 5782,
          *(v9[6] + 4328) = v9 + 5786,
          *(v9[6] + 4336) = v9 + 5790,
          *(v9[6] + 4344) = v9 + 5794,
          *(v9[6] + 4352) = v9 + 5798,
          *(v9[6] + 4360) = v9 + 5802,
          *(v9[6] + 4368) = v9 + 5806,
          *(v9[6] + 4376) = v9 + 5810,
          *(v9[6] + 4384) = v9 + 5814,
          *(v9[6] + 4392) = v9 + 5818,
          *(v9[6] + 4400) = v9 + 5822,
          *(v9[6] + 4408) = v9 + 5826,
          *(v9[6] + 4416) = v9 + 5830,
          *(v9[6] + 4424) = v9 + 5834,
          *(v9[6] + 4432) = v9 + 5838,
          *(v9[6] + 4440) = v9 + 5842,
          *(v9[6] + 4448) = v9 + 5846,
          *(v9[6] + 4456) = v9 + 5850,
          *(v9[6] + 4464) = v9 + 5854,
          *(v9[6] + 4472) = v9 + 5858,
          *(v9[6] + 4480) = v9 + 5862,
          *(v9[6] + 4488) = v9 + 5866,
          *(v9[6] + 4496) = v9 + 5870,
          *(v9[6] + 4504) = v9 + 5874,
          *(v9[6] + 4512) = v9 + 5878,
          *(v9[6] + 4520) = v9 + 5882,
          *(v9[6] + 4528) = v9 + 5886,
          *(v9[6] + 4536) = v9 + 5890,
          *(v9[6] + 4544) = v9 + 5894,
          *(v9[6] + 4552) = v9 + 5898,
          *(v9[6] + 4560) = v9 + 5902,
          *(v9[6] + 4568) = v9 + 5906,
          *(v9[6] + 4576) = v9 + 5910,
          *(v9[6] + 4584) = v9 + 5914,
          *(v9[6] + 4592) = v9 + 5918,
          *(v9[6] + 4600) = v9 + 5922,
          *(v9[6] + 4608) = v9 + 5926,
          *(v9[6] + 4616) = v9 + 5930,
          *(v9[6] + 4624) = v9 + 5934,
          *(v9[6] + 4632) = v9 + 5938,
          *(v9[6] + 4640) = v9 + 5942,
          *(v9[6] + 4648) = v9 + 5946,
          *(v9[6] + 4656) = v9 + 5950,
          *(v9[6] + 4664) = v9 + 5954,
          *(v9[6] + 4672) = v9 + 5958,
          *(v9[6] + 4680) = v9 + 5962,
          *(v9[6] + 4688) = v9 + 5966,
          *(v9[6] + 4696) = v9 + 5970,
          *(v9[6] + 4704) = v9 + 5974,
          *(v9[6] + 4712) = v9 + 5978,
          *(v9[6] + 4720) = v9 + 5982,
          *(v9[6] + 4728) = v9 + 5986,
          *(v9[6] + 4736) = v9 + 5990,
          *(v9[6] + 4744) = v9 + 5994,
          *(v9[6] + 4752) = v9 + 5998,
          *(v9[6] + 4760) = v9 + 6002,
          *(v9[6] + 4768) = v9 + 6006,
          *(v9[6] + 4776) = v9 + 6010,
          *(v9[6] + 4784) = v9 + 6034,
          *(v9[6] + 4792) = v9 + 6218,
          *(v9[6] + 4800) = v9 + 6222,
          *(v9[6] + 4808) = v9 + 6242,
          *(v9[6] + 4816) = v9 + 6246,
          *(v9[6] + 4824) = v9 + 6250,
          *(v9[6] + 4832) = v9 + 6254,
          *(v9[6] + 4840) = v9 + 6258,
          *(v9[6] + 4848) = v9 + 6262,
          *(v9[6] + 4856) = v9 + 6266,
          *(v9[6] + 4864) = v9 + 6270,
          *(v9[6] + 4872) = v9 + 6274,
          *(v9[6] + 4880) = v9 + 6278,
          *(v9[6] + 4888) = v9 + 634,
          *(v9[6] + 4896) = v9 + 722,
          *(v9[6] + 4904) = v9 + 726,
          *(v9[6] + 4912) = v9 + 730,
          *(v9[6] + 4920) = v9 + 734,
          *(v9[6] + 4928) = v9 + 738,
          *(v9[6] + 4936) = v9 + 742,
          *(v9[6] + 4944) = v9 + 746,
          *(v9[6] + 4952) = v9 + 750,
          *(v9[6] + 4960) = v9 + 754,
          *(v9[6] + 4968) = v9 + 758,
          *(v9[6] + 4976) = v9 + 762,
          *(v9[6] + 4984) = v9 + 766,
          *(v9[6] + 4992) = v9 + 930,
          *(v9[6] + 5000) = v9 + 934,
          *(v9[6] + 5008) = v9 + 938,
          *(v9[6] + 5016) = v9 + 942,
          *(v9[6] + 5024) = v9 + 946,
          *(v9[6] + 5032) = v9 + 950,
          *(v9[6] + 5040) = v9 + 954,
          *(v9[6] + 5048) = v9 + 958,
          *(v9[6] + 5056) = v9 + 962,
          *(v9[6] + 5064) = v9 + 966,
          *(v9[6] + 5072) = v9 + 970,
          *(v9[6] + 5080) = v9 + 974,
          *(v9[6] + 5088) = v9 + 978,
          *(v9[6] + 5096) = v9 + 982,
          *(v9[6] + 5104) = v9 + 986,
          *(v9[6] + 5112) = v9 + 990,
          *(v9[6] + 5120) = v9 + 994,
          *(v9[6] + 5128) = v9 + 998,
          *(v9[6] + 5136) = v9 + 1002,
          *(v9[6] + 5144) = v9 + 1006,
          *(v9[6] + 5152) = v9 + 1010,
          *(v9[6] + 5160) = v9 + 1014,
          *(v9[6] + 5168) = v9 + 1018,
          *(v9[6] + 5176) = v9 + 1022,
          *(v9[6] + 5184) = v9 + 1026,
          *(v9[6] + 5192) = v9 + 1030,
          *(v9[6] + 5200) = v9 + 1130,
          *(v9[6] + 5208) = v9 + 1186,
          *(v9[6] + 5216) = v9 + 1190,
          *(v9[6] + 5224) = v9 + 1210,
          *(v9[6] + 5232) = v9 + 1214,
          *(v9[6] + 5240) = v9 + 1218,
          *(v9[6] + 5248) = v9 + 2122,
          *(v9[6] + 5256) = v9 + 2126,
          *(v9[6] + 5264) = v9 + 2130,
          *(v9[6] + 5272) = v9 + 2134,
          *(v9[6] + 5280) = v9 + 2138,
          *(v9[6] + 5288) = v9 + 2142,
          *(v9[6] + 5296) = v9 + 2146,
          *(v9[6] + 5304) = v9 + 2150,
          *(v9[6] + 5312) = v9 + 2154,
          *(v9[6] + 5320) = v9 + 2158,
          *(v9[6] + 5328) = v9 + 2162,
          *(v9[6] + 5336) = v9 + 2166,
          *(v9[6] + 5344) = v9 + 2170,
          *(v9[6] + 5352) = v9 + 2174,
          *(v9[6] + 5360) = v9 + 2178,
          *(v9[6] + 5368) = v9 + 2182,
          *(v9[6] + 5376) = v9 + 2186,
          *(v9[6] + 5384) = v9 + 2190,
          *(v9[6] + 5392) = v9 + 2194,
          *(v9[6] + 5400) = v9 + 2198,
          *(v9[6] + 5408) = v9 + 2202,
          *(v9[6] + 5416) = v9 + 2206,
          *(v9[6] + 5424) = v9 + 2210,
          *(v9[6] + 5432) = v9 + 2214,
          *(v9[6] + 5440) = v9 + 2218,
          *(v9[6] + 5448) = v9 + 2222,
          *(v9[6] + 5456) = v9 + 2226,
          *(v9[6] + 5464) = v9 + 2230,
          *(v9[6] + 5472) = v9 + 2234,
          *(v9[6] + 5480) = v9 + 2238,
          *(v9[6] + 5488) = v9 + 2242,
          *(v9[6] + 5496) = v9 + 2246,
          *(v9[6] + 5504) = v9 + 2250,
          *(v9[6] + 5512) = v9 + 2254,
          *(v9[6] + 5520) = v9 + 2258,
          *(v9[6] + 5528) = v9 + 2262,
          *(v9[6] + 5536) = v9 + 2266,
          *(v9[6] + 5544) = v9 + 2270,
          *(v9[6] + 5552) = v9 + 2274,
          *(v9[6] + 5560) = v9 + 2278,
          *(v9[6] + 5568) = v9 + 2282,
          *(v9[6] + 5576) = v9 + 2286,
          *(v9[6] + 5584) = v9 + 2466,
          *(v9[6] + 5592) = v9 + 2470,
          *(v9[6] + 5600) = v9 + 2474,
          *(v9[6] + 5608) = v9 + 2478,
          *(v9[6] + 5616) = v9 + 2482,
          *(v9[6] + 5624) = v9 + 2538,
          *(v9[6] + 5632) = v9 + 2542,
          *(v9[6] + 5640) = v9 + 2546,
          *(v9[6] + 5648) = v9 + 2578,
          *(v9[6] + 5656) = v9 + 2582,
          *(v9[6] + 5664) = v9 + 2586,
          *(v9[6] + 5672) = v9 + 2590,
          *(v9[6] + 5680) = v9 + 2594,
          *(v9[6] + 5688) = v9 + 2598,
          *(v9[6] + 5696) = v9 + 2602,
          *(v9[6] + 5704) = v9 + 2606,
          *(v9[6] + 5712) = v9 + 2610,
          *(v9[6] + 5720) = v9 + 2614,
          *(v9[6] + 5728) = v9 + 2618,
          *(v9[6] + 5736) = v9 + 2622,
          *(v9[6] + 5744) = v9 + 2626,
          *(v9[6] + 5752) = v9 + 2630,
          *(v9[6] + 5760) = v9 + 2634,
          *(v9[6] + 5768) = v9 + 2638,
          *(v9[6] + 5776) = v9 + 2706,
          *(v9[6] + 5784) = v9 + 2730,
          *(v9[6] + 5792) = v9 + 2734,
          *(v9[6] + 5800) = v9 + 2738,
          *(v9[6] + 5808) = v9 + 2742,
          *(v9[6] + 5816) = v9 + 2746,
          *(v9[6] + 5824) = v9 + 2750,
          *(v9[6] + 5832) = v9 + 2754,
          *(v9[6] + 5840) = v9 + 2758,
          *(v9[6] + 5848) = v9 + 2762,
          *(v9[6] + 5856) = v9 + 2766,
          *(v9[6] + 5864) = v9 + 2770,
          *(v9[6] + 5872) = v9 + 2774,
          *(v9[6] + 5880) = v9 + 2778,
          *(v9[6] + 5888) = v9 + 2782,
          *(v9[6] + 5896) = v9 + 2786,
          *(v9[6] + 5904) = v9 + 2790,
          *(v9[6] + 5912) = v9 + 2794,
          *(v9[6] + 5920) = v9 + 2798,
          *(v9[6] + 5928) = v9 + 2802,
          *(v9[6] + 5936) = v9 + 2806,
          *(v9[6] + 5944) = v9 + 2810,
          *(v9[6] + 5952) = v9 + 2814,
          *(v9[6] + 5960) = v9 + 2818,
          *(v9[6] + 5968) = v9 + 2822,
          *(v9[6] + 5976) = v9 + 2826,
          *(v9[6] + 5984) = v9 + 2830,
          *(v9[6] + 5992) = v9 + 2834,
          *(v9[6] + 6000) = v9 + 2838,
          *(v9[6] + 6008) = v9 + 2842,
          *(v9[6] + 6016) = v9 + 2846,
          *(v9[6] + 6024) = v9 + 2850,
          *(v9[6] + 6032) = v9 + 2854,
          *(v9[6] + 6040) = v9 + 2858,
          *(v9[6] + 6048) = v9 + 2862,
          *(v9[6] + 6056) = v9 + 2866,
          *(v9[6] + 6064) = v9 + 2870,
          *(v9[6] + 6072) = v9 + 2874,
          *(v9[6] + 6080) = v9 + 2878,
          *(v9[6] + 6088) = v9 + 2882,
          *(v9[6] + 6096) = v9 + 2886,
          *(v9[6] + 6104) = v9 + 2890,
          *(v9[6] + 6112) = v9 + 2894,
          *(v9[6] + 6120) = v9 + 2898,
          *(v9[6] + 6128) = v9 + 2902,
          *(v9[6] + 6136) = v9 + 2906,
          *(v9[6] + 6144) = v9 + 2910,
          *(v9[6] + 6152) = v9 + 2914,
          *(v9[6] + 6160) = v9 + 2918,
          *(v9[6] + 6168) = v9 + 2922,
          *(v9[6] + 6176) = v9 + 2926,
          *(v9[6] + 6184) = v9 + 2930,
          *(v9[6] + 6192) = v9 + 2934,
          *(v9[6] + 6200) = v9 + 2938,
          *(v9[6] + 6208) = v9 + 2942,
          *(v9[6] + 6216) = v9 + 2946,
          *(v9[6] + 6224) = v9 + 2950,
          *(v9[6] + 6232) = v9 + 2954,
          *(v9[6] + 6240) = v9 + 2958,
          *(v9[6] + 6248) = v9 + 2962,
          *(v9[6] + 6256) = v9 + 2966,
          *(v9[6] + 6264) = v9 + 2970,
          *(v9[6] + 6272) = v9 + 2974,
          *(v9[6] + 6280) = v9 + 2978,
          *(v9[6] + 6288) = v9 + 2982,
          *(v9[6] + 6296) = v9 + 2986,
          *(v9[6] + 6304) = v9 + 2990,
          *(v9[6] + 6312) = v9 + 2994,
          *(v9[6] + 6320) = v9 + 2998,
          *(v9[6] + 6328) = v9 + 3002,
          *(v9[6] + 6336) = v9 + 3006,
          *(v9[6] + 6344) = v9 + 3010,
          *(v9[6] + 6352) = v9 + 3014,
          *(v9[6] + 6360) = v9 + 3018,
          *(v9[6] + 6368) = v9 + 3022,
          *(v9[6] + 6376) = v9 + 3026,
          *(v9[6] + 6384) = v9 + 3030,
          *(v9[6] + 6392) = v9 + 3034,
          *(v9[6] + 6400) = v9 + 3038,
          *(v9[6] + 6408) = v9 + 3042,
          *(v9[6] + 6416) = v9 + 3046,
          *(v9[6] + 6424) = v9 + 3050,
          *(v9[6] + 6432) = v9 + 3054,
          *(v9[6] + 6440) = v9 + 3058,
          *(v9[6] + 6448) = v9 + 3062,
          *(v9[6] + 6456) = v9 + 3066,
          *(v9[6] + 6464) = v9 + 3070,
          *(v9[6] + 6472) = v9 + 3074,
          *(v9[6] + 6480) = v9 + 3078,
          *(v9[6] + 6488) = v9 + 3082,
          *(v9[6] + 6496) = v9 + 3086,
          *(v9[6] + 6504) = v9 + 3090,
          *(v9[6] + 6512) = v9 + 3094,
          *(v9[6] + 6520) = v9 + 3098,
          *(v9[6] + 6528) = v9 + 3102,
          *(v9[6] + 6536) = v9 + 3106,
          *(v9[6] + 6544) = v9 + 3110,
          *(v9[6] + 6552) = v9 + 3114,
          *(v9[6] + 6560) = v9 + 3118,
          *(v9[6] + 6568) = v9 + 3122,
          *(v9[6] + 6576) = v9 + 3126,
          *(v9[6] + 6584) = v9 + 3130,
          *(v9[6] + 6592) = v9 + 3134,
          *(v9[6] + 6600) = v9 + 3138,
          *(v9[6] + 6608) = v9 + 3142,
          *(v9[6] + 6616) = v9 + 3146,
          *(v9[6] + 6624) = v9 + 3150,
          *(v9[6] + 6632) = v9 + 3154,
          *(v9[6] + 6640) = v9 + 3158,
          *(v9[6] + 6648) = v9 + 3162,
          *(v9[6] + 6656) = v9 + 3166,
          *(v9[6] + 6664) = v9 + 3170,
          *(v9[6] + 6672) = v9 + 3174,
          *(v9[6] + 6680) = v9 + 3178,
          *(v9[6] + 6688) = v9 + 3182,
          *(v9[6] + 6696) = v9 + 3186,
          *(v9[6] + 6704) = v9 + 3190,
          *(v9[6] + 6712) = v9 + 3194,
          *(v9[6] + 6720) = v9 + 3198,
          *(v9[6] + 6728) = v9 + 3202,
          *(v9[6] + 6736) = v9 + 3206,
          *(v9[6] + 6744) = v9 + 3210,
          *(v9[6] + 6752) = v9 + 3214,
          *(v9[6] + 6760) = v9 + 3218,
          *(v9[6] + 6768) = v9 + 3222,
          *(v9[6] + 6776) = v9 + 3226,
          *(v9[6] + 6784) = v9 + 3230,
          *(v9[6] + 6792) = v9 + 3234,
          *(v9[6] + 6800) = v9 + 3238,
          *(v9[6] + 6808) = v9 + 3242,
          *(v9[6] + 6816) = v9 + 3246,
          *(v9[6] + 6824) = v9 + 3250,
          *(v9[6] + 6832) = v9 + 3254,
          *(v9[6] + 6840) = v9 + 3258,
          *(v9[6] + 6848) = v9 + 3262,
          *(v9[6] + 6856) = v9 + 3266,
          *(v9[6] + 6864) = v9 + 3270,
          *(v9[6] + 6872) = v9 + 3274,
          *(v9[6] + 6880) = v9 + 3378,
          *(v9[6] + 6888) = v9 + 3382,
          *(v9[6] + 6896) = v9 + 3386,
          *(v9[6] + 6904) = v9 + 3390,
          *(v9[6] + 6912) = v9 + 3394,
          *(v9[6] + 6920) = v9 + 3398,
          *(v9[6] + 6928) = v9 + 3402,
          *(v9[6] + 6936) = v9 + 3406,
          *(v9[6] + 6944) = v9 + 3410,
          *(v9[6] + 6952) = v9 + 3414,
          *(v9[6] + 6960) = v9 + 3418,
          *(v9[6] + 6968) = v9 + 3422,
          *(v9[6] + 6976) = v9 + 3426,
          *(v9[6] + 6984) = v9 + 3430,
          *(v9[6] + 6992) = v9 + 3434,
          *(v9[6] + 7000) = v9 + 3438,
          *(v9[6] + 7008) = v9 + 3442,
          *(v9[6] + 7016) = v9 + 3446,
          *(v9[6] + 7024) = v9 + 3450,
          *(v9[6] + 7032) = v9 + 3454,
          *(v9[6] + 7040) = v9 + 3458,
          *(v9[6] + 7048) = v9 + 3462,
          *(v9[6] + 7056) = v9 + 3466,
          *(v9[6] + 7064) = v9 + 3470,
          *(v9[6] + 7072) = v9 + 3474,
          *(v9[6] + 7080) = v9 + 3478,
          *(v9[6] + 7088) = v9 + 3482,
          *(v9[6] + 7096) = v9 + 3486,
          *(v9[6] + 7104) = v9 + 3490,
          *(v9[6] + 7112) = v9 + 3494,
          *(v9[6] + 7120) = v9 + 3498,
          *(v9[6] + 7128) = v9 + 3502,
          *(v9[6] + 7136) = v9 + 3506,
          *(v9[6] + 7144) = v9 + 3510,
          *(v9[6] + 7152) = v9 + 3514,
          *(v9[6] + 7160) = v9 + 3518,
          *(v9[6] + 7168) = v9 + 3522,
          *(v9[6] + 7176) = v9 + 3526,
          *(v9[6] + 7184) = v9 + 3530,
          *(v9[6] + 7192) = v9 + 3534,
          *(v9[6] + 7200) = v9 + 3554,
          *(v9[6] + 7208) = v9 + 3558,
          *(v9[6] + 7216) = v9 + 3562,
          *(v9[6] + 7224) = v9 + 3602,
          *(v9[6] + 7232) = v9 + 3606,
          *(v9[6] + 7240) = v9 + 3610,
          *(v9[6] + 7248) = v9 + 3614,
          *(v9[6] + 7256) = v9 + 3618,
          *(v9[6] + 7264) = v9 + 3622,
          *(v9[6] + 7272) = v9 + 3626,
          *(v9[6] + 7280) = v9 + 3630,
          *(v9[6] + 7288) = v9 + 3634,
          *(v9[6] + 7296) = v9 + 3638,
          *(v9[6] + 7304) = v9 + 3642,
          *(v9[6] + 7312) = v9 + 3646,
          *(v9[6] + 7320) = v9 + 3650,
          *(v9[6] + 7328) = v9 + 3654,
          *(v9[6] + 7336) = v9 + 3658,
          *(v9[6] + 7344) = v9 + 3662,
          *(v9[6] + 7352) = v9 + 3666,
          *(v9[6] + 7360) = v9 + 3670,
          *(v9[6] + 7368) = v9 + 3674,
          *(v9[6] + 7376) = v9 + 3678,
          *(v9[6] + 7384) = v9 + 3682,
          *(v9[6] + 7392) = v9 + 3686,
          *(v9[6] + 7400) = v9 + 3690,
          *(v9[6] + 7408) = v9 + 3694,
          *(v9[6] + 7416) = v9 + 3698,
          *(v9[6] + 7424) = v9 + 3702,
          *(v9[6] + 7432) = v9 + 3706,
          *(v9[6] + 7440) = v9 + 3710,
          *(v9[6] + 7448) = v9 + 3714,
          *(v9[6] + 7456) = v9 + 3718,
          *(v9[6] + 7464) = v9 + 3722,
          *(v9[6] + 7472) = v9 + 3726,
          *(v9[6] + 7480) = v9 + 3730,
          *(v9[6] + 7488) = v9 + 3734,
          *(v9[6] + 7496) = v9 + 3738,
          *(v9[6] + 7504) = v9 + 3742,
          *(v9[6] + 7512) = v9 + 3746,
          *(v9[6] + 7520) = v9 + 3750,
          *(v9[6] + 7528) = v9 + 3754,
          *(v9[6] + 7536) = v9 + 3758,
          *(v9[6] + 7544) = v9 + 3762,
          *(v9[6] + 7552) = v9 + 3766,
          *(v9[6] + 7560) = v9 + 3770,
          *(v9[6] + 7568) = v9 + 3938,
          *(v9[6] + 7576) = v9 + 3970,
          *(v9[6] + 7584) = v9 + 3994,
          *(v9[6] + 7592) = v9 + 3998,
          *(v9[6] + 7600) = v9 + 4002,
          *(v9[6] + 7608) = v9 + 4026,
          *(v9[6] + 7616) = v9 + 4030,
          *(v9[6] + 7624) = v9 + 4034,
          *(v9[6] + 7632) = v9 + 4038,
          *(v9[6] + 7640) = v9 + 4042,
          *(v9[6] + 7648) = v9 + 4066,
          *(v9[6] + 7656) = v9 + 4070,
          *(v9[6] + 7664) = v9 + 4074,
          *(v9[6] + 7672) = v9 + 4078,
          *(v9[6] + 7680) = v9 + 4082,
          *(v9[6] + 7688) = v9 + 4086,
          *(v9[6] + 7696) = v9 + 4090,
          *(v9[6] + 7704) = v9 + 4094,
          *(v9[6] + 7712) = v9 + 4098,
          *(v9[6] + 7720) = v9 + 4102,
          *(v9[6] + 7728) = v9 + 4202,
          *(v9[6] + 7736) = v9 + 4206,
          *(v9[6] + 7744) = v9 + 4226,
          *(v9[6] + 7752) = v9 + 4230,
          *(v9[6] + 7760) = v9 + 4234,
          *(v9[6] + 7768) = v9 + 4238,
          *(v9[6] + 7776) = v9 + 4242,
          *(v9[6] + 7784) = v9 + 4246,
          *(v9[6] + 7792) = v9 + 4410,
          *(v9[6] + 7800) = v9 + 4414,
          *(v9[6] + 7808) = v9 + 4418,
          *(v9[6] + 7816) = v9 + 4422,
          *(v9[6] + 7824) = v9 + 4426,
          *(v9[6] + 7832) = v9 + 4430,
          *(v9[6] + 7840) = v9 + 4434,
          *(v9[6] + 7848) = v9 + 4438,
          *(v9[6] + 7856) = v9 + 4442,
          *(v9[6] + 7864) = v9 + 4446,
          *(v9[6] + 7872) = v9 + 4450,
          *(v9[6] + 7880) = v9 + 4474,
          *(v9[6] + 7888) = v9 + 4478,
          *(v9[6] + 7896) = v9 + 4482,
          *(v9[6] + 7904) = v9 + 4486,
          *(v9[6] + 7912) = v9 + 4490,
          *(v9[6] + 7920) = v9 + 4494,
          *(v9[6] + 7928) = v9 + 4498,
          *(v9[6] + 7936) = v9 + 4502,
          *(v9[6] + 7944) = v9 + 4506,
          *(v9[6] + 7952) = v9 + 4510,
          *(v9[6] + 7960) = v9 + 4514,
          *(v9[6] + 7968) = v9 + 4518,
          *(v9[6] + 7976) = v9 + 4522,
          *(v9[6] + 7984) = v9 + 4526,
          *(v9[6] + 7992) = v9 + 4530,
          *(v9[6] + 8000) = v9 + 4534,
          *(v9[6] + 8008) = v9 + 4538,
          *(v9[6] + 8016) = v9 + 4542,
          *(v9[6] + 8024) = v9 + 4546,
          *(v9[6] + 8032) = v9 + 4550,
          *(v9[6] + 8040) = v9 + 4554,
          *(v9[6] + 8048) = v9 + 4558,
          *(v9[6] + 8056) = v9 + 4562,
          *(v9[6] + 8064) = v9 + 4566,
          *(v9[6] + 8072) = v9 + 4570,
          *(v9[6] + 8080) = v9 + 4574,
          *(v9[6] + 8088) = v9 + 4578,
          *(v9[6] + 8096) = v9 + 4582,
          *(v9[6] + 8104) = v9 + 4586,
          *(v9[6] + 8112) = v9 + 4590,
          *(v9[6] + 8120) = v9 + 4594,
          *(v9[6] + 8128) = v9 + 4598,
          *(v9[6] + 8136) = v9 + 4602,
          *(v9[6] + 8144) = v9 + 4606,
          *(v9[6] + 8152) = v9 + 4610,
          *(v9[6] + 8160) = v9 + 4614,
          *(v9[6] + 8168) = v9 + 4618,
          *(v9[6] + 8176) = v9 + 4622,
          *(v9[6] + 8184) = v9 + 4626,
          *(v9[6] + 0x2000) = v9 + 4630,
          *(v9[6] + 8200) = v9 + 4634,
          *(v9[6] + 8208) = v9 + 4638,
          *(v9[6] + 8216) = v9 + 4642,
          *(v9[6] + 8224) = v9 + 4646,
          *(v9[6] + 8232) = v9 + 4650,
          *(v9[6] + 8240) = v9 + 4654,
          *(v9[6] + 8248) = v9 + 4658,
          *(v9[6] + 8256) = v9 + 4662,
          *(v9[6] + 8264) = v9 + 4666,
          *(v9[6] + 8272) = v9 + 4670,
          *(v9[6] + 8280) = v9 + 4674,
          *(v9[6] + 8288) = v9 + 4678,
          *(v9[6] + 8296) = v9 + 4682,
          *(v9[6] + 8304) = v9 + 4686,
          *(v9[6] + 8312) = v9 + 4690,
          *(v9[6] + 8320) = v9 + 4694,
          *(v9[6] + 8328) = v9 + 4698,
          *(v9[6] + 8336) = v9 + 4702,
          *(v9[6] + 8344) = v9 + 4706,
          *(v9[6] + 8352) = v9 + 4710,
          *(v9[6] + 8360) = v9 + 4714,
          *(v9[6] + 8368) = v9 + 4718,
          *(v9[6] + 8376) = v9 + 4722,
          *(v9[6] + 8384) = v9 + 4726,
          *(v9[6] + 8392) = v9 + 4730,
          *(v9[6] + 8400) = v9 + 4734,
          *(v9[6] + 8408) = v9 + 4738,
          *(v9[6] + 8416) = v9 + 4742,
          *(v9[6] + 8424) = v9 + 4746,
          *(v9[6] + 8432) = v9 + 4750,
          *(v9[6] + 8440) = v9 + 4754,
          *(v9[6] + 8448) = v9 + 4758,
          *(v9[6] + 8456) = v9 + 4762,
          *(v9[6] + 8464) = v9 + 4766,
          *(v9[6] + 8472) = v9 + 4770,
          *(v9[6] + 8480) = v9 + 4774,
          *(v9[6] + 8488) = v9 + 4778,
          *(v9[6] + 8496) = v9 + 4782,
          *(v9[6] + 8504) = v9 + 4786,
          *(v9[6] + 8512) = v9 + 4790,
          *(v9[6] + 8520) = v9 + 4794,
          *(v9[6] + 8528) = v9 + 4798,
          *(v9[6] + 8536) = v9 + 4802,
          *(v9[6] + 8544) = v9 + 4806,
          *(v9[6] + 8552) = v9 + 4874,
          *(v9[6] + 8560) = v9 + 4878,
          *(v9[6] + 8568) = v9 + 4882,
          *(v9[6] + 8576) = v9 + 4886,
          *(v9[6] + 8584) = v9 + 4890,
          *(v9[6] + 8592) = v9 + 4894,
          *(v9[6] + 8600) = v9 + 4898,
          *(v9[6] + 8608) = v9 + 4902,
          *(v9[6] + 8616) = v9 + 4906,
          *(v9[6] + 8624) = v9 + 5106,
          *(v9[6] + 8632) = v9 + 5110,
          *(v9[6] + 8640) = v9 + 5162,
          *(v9[6] + 8648) = v9 + 5166,
          *(v9[6] + 8656) = v9 + 5234,
          *(v9[6] + 8664) = v9 + 5258,
          *(v9[6] + 8672) = v9 + 5282,
          *(v9[6] + 8680) = v9 + 5286,
          *(v9[6] + 8688) = v9 + 5290,
          *(v9[6] + 8696) = v9 + 5294,
          *(v9[6] + 8704) = v9 + 5298,
          *(v9[6] + 8712) = v9 + 5302,
          *(v9[6] + 8720) = v9 + 5306,
          *(v9[6] + 8728) = v9 + 5310,
          *(v9[6] + 8736) = v9 + 5314,
          *(v9[6] + 8744) = v9 + 5318,
          *(v9[6] + 8752) = v9 + 5322,
          *(v9[6] + 8760) = v9 + 5326,
          *(v9[6] + 8768) = v9 + 5330,
          *(v9[6] + 8776) = v9 + 5334,
          *(v9[6] + 8784) = v9 + 5338,
          *(v9[6] + 8792) = v9 + 5410,
          *(v9[6] + 8800) = v9 + 5414,
          *(v9[6] + 8808) = v9 + 5514,
          *(v9[6] + 8816) = v9 + 5570,
          *(v9[6] + 8824) = v9 + 5574,
          *(v9[6] + 8832) = v9 + 5578,
          *(v9[6] + 8840) = v9 + 5582,
          *(v9[6] + 8848) = v9 + 5586,
          *(v9[6] + 8856) = v9 + 5590,
          *(v9[6] + 8864) = v9 + 5610,
          *(v9[6] + 8872) = v9 + 5614,
          *(v9[6] + 8880) = v9 + 5618,
          *(v9[6] + 8888) = v9 + 5622,
          *(v9[6] + 8896) = v9 + 5626,
          *(v9[6] + 8904) = v9 + 5630,
          *(v9[6] + 8912) = v9 + 5634,
          *(v9[6] + 8920) = v9 + 5638,
          *(v9[6] + 8928) = v9 + 5642,
          *(v9[6] + 8936) = v9 + 5646,
          *(v9[6] + 8944) = v9 + 5650,
          *(v9[6] + 8952) = v9 + 5654,
          *(v9[6] + 8960) = v9 + 5658,
          *(v9[6] + 8968) = v9 + 5662,
          *(v9[6] + 8976) = v9 + 5666,
          *(v9[6] + 8984) = v9 + 5670,
          *(v9[6] + 8992) = v9 + 5674,
          *(v9[6] + 9000) = v9 + 5678,
          *(v9[6] + 9008) = v9 + 5682,
          *(v9[6] + 9016) = v9 + 5686,
          *(v9[6] + 9024) = v9 + 5690,
          *(v9[6] + 9032) = v9 + 5694,
          *(v9[6] + 9040) = v9 + 5698,
          *(v9[6] + 9048) = v9 + 5702,
          *(v9[6] + 9056) = v9 + 5706,
          *(v9[6] + 9064) = v9 + 5710,
          *(v9[6] + 9072) = v9 + 5714,
          *(v9[6] + 9080) = v9 + 5718,
          *(v9[6] + 9088) = v9 + 5722,
          *(v9[6] + 9096) = v9 + 5726,
          *(v9[6] + 9104) = v9 + 5730,
          *(v9[6] + 9112) = v9 + 5734,
          *(v9[6] + 9120) = v9 + 5738,
          *(v9[6] + 9128) = v9 + 5742,
          *(v9[6] + 9136) = v9 + 5746,
          *(v9[6] + 9144) = v9 + 5750,
          *(v9[6] + 9152) = v9 + 5754,
          *(v9[6] + 9160) = v9 + 5758,
          *(v9[6] + 9168) = v9 + 5762,
          *(v9[6] + 9176) = v9 + 5766,
          *(v9[6] + 9184) = v9 + 5770,
          *(v9[6] + 9192) = v9 + 5774,
          *(v9[6] + 9200) = v9 + 5778,
          *(v9[6] + 9208) = v9 + 5782,
          *(v9[6] + 9216) = v9 + 5786,
          *(v9[6] + 9224) = v9 + 5790,
          *(v9[6] + 9232) = v9 + 5794,
          *(v9[6] + 9240) = v9 + 5798,
          *(v9[6] + 9248) = v9 + 5802,
          *(v9[6] + 9256) = v9 + 5806,
          *(v9[6] + 9264) = v9 + 5810,
          *(v9[6] + 9272) = v9 + 5814,
          *(v9[6] + 9280) = v9 + 5818,
          *(v9[6] + 9288) = v9 + 5822,
          *(v9[6] + 9296) = v9 + 5826,
          *(v9[6] + 9304) = v9 + 5830,
          *(v9[6] + 9312) = v9 + 5834,
          *(v9[6] + 9320) = v9 + 5838,
          *(v9[6] + 9328) = v9 + 5842,
          *(v9[6] + 9336) = v9 + 5846,
          *(v9[6] + 9344) = v9 + 5850,
          *(v9[6] + 9352) = v9 + 5854,
          *(v9[6] + 9360) = v9 + 5858,
          *(v9[6] + 9368) = v9 + 5862,
          *(v9[6] + 9376) = v9 + 5866,
          *(v9[6] + 9384) = v9 + 5870,
          *(v9[6] + 9392) = v9 + 5874,
          *(v9[6] + 9400) = v9 + 5878,
          *(v9[6] + 9408) = v9 + 5882,
          *(v9[6] + 9416) = v9 + 5886,
          *(v9[6] + 9424) = v9 + 5890,
          *(v9[6] + 9432) = v9 + 5894,
          *(v9[6] + 9440) = v9 + 5898,
          *(v9[6] + 9448) = v9 + 5902,
          *(v9[6] + 9456) = v9 + 5906,
          *(v9[6] + 9464) = v9 + 5910,
          *(v9[6] + 9472) = v9 + 5914,
          *(v9[6] + 9480) = v9 + 5918,
          *(v9[6] + 9488) = v9 + 5922,
          *(v9[6] + 9496) = v9 + 5926,
          *(v9[6] + 9504) = v9 + 5930,
          *(v9[6] + 9512) = v9 + 5934,
          *(v9[6] + 9520) = v9 + 5938,
          *(v9[6] + 9528) = v9 + 5942,
          *(v9[6] + 9536) = v9 + 5946,
          *(v9[6] + 9544) = v9 + 5950,
          *(v9[6] + 9552) = v9 + 5954,
          *(v9[6] + 9560) = v9 + 5958,
          *(v9[6] + 9568) = v9 + 5962,
          *(v9[6] + 9576) = v9 + 5966,
          *(v9[6] + 9584) = v9 + 5970,
          *(v9[6] + 9592) = v9 + 5974,
          *(v9[6] + 9600) = v9 + 5978,
          *(v9[6] + 9608) = v9 + 5982,
          *(v9[6] + 9616) = v9 + 5986,
          *(v9[6] + 9624) = v9 + 5990,
          *(v9[6] + 9632) = v9 + 5994,
          *(v9[6] + 9640) = v9 + 5998,
          *(v9[6] + 9648) = v9 + 6002,
          *(v9[6] + 9656) = v9 + 6006,
          *(v9[6] + 9664) = v9 + 6010,
          *(v9[6] + 9672) = v9 + 6034,
          *(v9[6] + 9680) = v9 + 6218,
          *(v9[6] + 9688) = v9 + 6222,
          *(v9[6] + 9696) = v9 + 6242,
          *(v9[6] + 9704) = v9 + 6246,
          *(v9[6] + 9712) = v9 + 6250,
          *(v9[6] + 9720) = v9 + 6254,
          *(v9[6] + 9728) = v9 + 6258,
          *(v9[6] + 9736) = v9 + 6262,
          *(v9[6] + 9744) = v9 + 6266,
          *(v9[6] + 9752) = v9 + 6270,
          *(v9[6] + 9760) = v9 + 6274,
          *(v9[6] + 9768) = v9 + 6278,
          v15 = malloc_type_malloc(0x390uLL, 0x80040B8603338uLL),
          (v9[7] = v15) != 0))
    {
      *v15 = v9 + 130;
      *(v9[7] + 8) = v9 + 132;
      *(v9[7] + 16) = v9 + 134;
      *(v9[7] + 24) = v9 + 136;
      *(v9[7] + 32) = v9 + 138;
      *(v9[7] + 40) = v9 + 140;
      *(v9[7] + 48) = v9 + 244;
      *(v9[7] + 56) = v9 + 246;
      *(v9[7] + 64) = v9 + 287;
      *(v9[7] + 72) = v9 + 289;
      *(v9[7] + 80) = v9 + 291;
      *(v9[7] + 88) = v9 + 293;
      *(v9[7] + 96) = v9 + 295;
      *(v9[7] + 104) = v9 + 297;
      *(v9[7] + 112) = v9 + 299;
      *(v9[7] + 120) = v9 + 301;
      *(v9[7] + 128) = v9 + 303;
      *(v9[7] + 136) = v9 + 305;
      *(v9[7] + 144) = v9 + 307;
      *(v9[7] + 152) = v9 + 447;
      *(v9[7] + 160) = v9 + 449;
      *(v9[7] + 168) = v9 + 491;
      *(v9[7] + 176) = v9 + 527;
      *(v9[7] + 184) = v9 + 532;
      *(v9[7] + 192) = v9 + 534;
      *(v9[7] + 200) = v9 + 536;
      *(v9[7] + 208) = v9 + 538;
      *(v9[7] + 216) = v9 + 540;
      *(v9[7] + 224) = v9 + 542;
      *(v9[7] + 232) = v9 + 544;
      *(v9[7] + 240) = v9 + 546;
      *(v9[7] + 248) = v9 + 548;
      *(v9[7] + 256) = v9 + 550;
      *(v9[7] + 264) = v9 + 558;
      *(v9[7] + 272) = v9 + 604;
      *(v9[7] + 280) = v9 + 606;
      *(v9[7] + 288) = v9 + 642;
      *(v9[7] + 296) = v9 + 644;
      *(v9[7] + 304) = v9 + 656;
      *(v9[7] + 312) = v9 + 669;
      *(v9[7] + 320) = v9 + 671;
      *(v9[7] + 328) = v9 + 673;
      *(v9[7] + 336) = v9 + 691;
      *(v9[7] + 344) = v9 + 693;
      *(v9[7] + 352) = v9 + 695;
      *(v9[7] + 360) = v9 + 700;
      *(v9[7] + 368) = v9 + 756;
      *(v9[7] + 376) = v9 + 758;
      *(v9[7] + 384) = v9 + 760;
      *(v9[7] + 392) = v9 + 762;
      *(v9[7] + 400) = v9 + 764;
      *(v9[7] + 408) = v9 + 766;
      *(v9[7] + 416) = v9 + 768;
      *(v9[7] + 424) = v9 + 770;
      *(v9[7] + 432) = v9 + 772;
      *(v9[7] + 440) = v9 + 774;
      *(v9[7] + 448) = v9 + 776;
      *(v9[7] + 456) = v9 + 130;
      *(v9[7] + 464) = v9 + 132;
      *(v9[7] + 472) = v9 + 134;
      *(v9[7] + 480) = v9 + 136;
      *(v9[7] + 488) = v9 + 138;
      *(v9[7] + 496) = v9 + 140;
      *(v9[7] + 504) = v9 + 244;
      *(v9[7] + 512) = v9 + 246;
      *(v9[7] + 520) = v9 + 287;
      *(v9[7] + 528) = v9 + 289;
      *(v9[7] + 536) = v9 + 291;
      *(v9[7] + 544) = v9 + 293;
      *(v9[7] + 552) = v9 + 295;
      *(v9[7] + 560) = v9 + 297;
      *(v9[7] + 568) = v9 + 299;
      *(v9[7] + 576) = v9 + 301;
      *(v9[7] + 584) = v9 + 303;
      *(v9[7] + 592) = v9 + 305;
      *(v9[7] + 600) = v9 + 307;
      *(v9[7] + 608) = v9 + 447;
      *(v9[7] + 616) = v9 + 449;
      *(v9[7] + 624) = v9 + 491;
      *(v9[7] + 632) = v9 + 527;
      *(v9[7] + 640) = v9 + 532;
      *(v9[7] + 648) = v9 + 534;
      *(v9[7] + 656) = v9 + 536;
      *(v9[7] + 664) = v9 + 538;
      *(v9[7] + 672) = v9 + 540;
      *(v9[7] + 680) = v9 + 542;
      *(v9[7] + 688) = v9 + 544;
      *(v9[7] + 696) = v9 + 546;
      *(v9[7] + 704) = v9 + 548;
      *(v9[7] + 712) = v9 + 550;
      *(v9[7] + 720) = v9 + 558;
      *(v9[7] + 728) = v9 + 604;
      *(v9[7] + 736) = v9 + 606;
      *(v9[7] + 744) = v9 + 642;
      *(v9[7] + 752) = v9 + 644;
      *(v9[7] + 760) = v9 + 656;
      *(v9[7] + 768) = v9 + 669;
      *(v9[7] + 776) = v9 + 671;
      *(v9[7] + 784) = v9 + 673;
      *(v9[7] + 792) = v9 + 691;
      *(v9[7] + 800) = v9 + 693;
      *(v9[7] + 808) = v9 + 695;
      *(v9[7] + 816) = v9 + 700;
      *(v9[7] + 824) = v9 + 756;
      *(v9[7] + 832) = v9 + 758;
      *(v9[7] + 840) = v9 + 760;
      *(v9[7] + 848) = v9 + 762;
      *(v9[7] + 856) = v9 + 764;
      *(v9[7] + 864) = v9 + 766;
      *(v9[7] + 872) = v9 + 768;
      *(v9[7] + 880) = v9 + 770;
      *(v9[7] + 888) = v9 + 772;
      *(v9[7] + 896) = v9 + 774;
      *(v9[7] + 904) = v9 + 776;
      link_new(v9);
      set_dict_new(v9);
      act_dict_new(v9);
      runtime_new(v9);
    }

    else
    {
      delta_delete(v9);
      return 0;
    }
  }

  return v9;
}

void delta_delete(uint64_t a1)
{
  if (a1)
  {
    link_delete(a1);
    set_dict_delete(a1);
    act_dict_delete(a1);
    runtime_delete(a1);
    v2 = *(a1 + 24);
    if (v2)
    {
      free(v2);
      *(a1 + 24) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      free(v3);
      *(a1 + 32) = 0;
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      free(v4);
      *(a1 + 48) = 0;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      free(v5);
      *(a1 + 56) = 0;
    }

    free(*(a1 + 40));

    free(a1);
  }
}

double viasizes()
{
  qword_280582578 = 0x300000003;
  *&result = 0x800000008;
  qword_2805825D8 = 0x800000008;
  return result;
}

void link_new(uint64_t a1)
{
  *(a1 + 232) = 49;
  v2 = malloc_type_malloc(9uLL, 0x100004077774924uLL);
  *(a1 + 240) = v2;
  if (v2 && (*(a1 + 248) = v2, v3 = malloc_type_malloc(9uLL, 0x100004077774924uLL), (*(a1 + 256) = v3) != 0) && (*(a1 + 264) = v3, v4 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL), (*(a1 + 272) = v4) != 0) && (*(a1 + 280) = v4, *(a1 + 288) = 9, *(a1 + 290) = 131073, *(a1 + 296) = vlfnames_glob, *(a1 + 304) = 12, *(a1 + 306) = 547, *(a1 + 312) = "enu.ddl", *(a1 + 320) = 25, v5 = malloc_type_malloc(0x9B80uLL, 0x101004026C630D6uLL), (*(a1 + 64) = v5) != 0) && (memcpy(v5, &vsetdtbl_glob, 0x9B80uLL), v6 = malloc_type_malloc(0x680uLL, 0x1010040E30AAE52uLL), (*(a1 + 72) = v6) != 0))
  {

    memcpy(v6, &vactdtbl_glob, 0x680uLL);
  }

  else
  {

    delta_delete(a1);
  }
}

void link_delete(void *a1)
{
  if (a1)
  {
    v2 = a1[32];
    if (v2)
    {
      free(v2);
      a1[32] = 0;
    }

    v3 = a1[30];
    if (v3)
    {
      free(v3);
      a1[30] = 0;
    }

    v4 = a1[34];
    if (v4)
    {
      free(v4);
      a1[34] = 0;
    }

    v5 = a1[8];
    if (v5)
    {
      free(v5);
      a1[8] = 0;
    }

    v6 = a1[9];
    if (v6)
    {
      free(v6);
      a1[9] = 0;
    }
  }
}

double vfp0048(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 16) = *a2;
  return result;
}

double vfp0050(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 32) = *a2;
  return result;
}

void act_dict_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0xC8uLL, 0x10040436913F5uLL);
  *(a1 + 176) = v2;
  if (v2)
  {
    *v2 = &unk_28058BC43;
    *(*(a1 + 176) + 8) = &noun_cmpnd2_actentries;
    *(*(a1 + 176) + 16) = &eng_gramm_cat_dict_actentries;
    *(*(a1 + 176) + 24) = &unk_28058BAA6;
    *(*(a1 + 176) + 32) = &unk_28058C087;
    *(*(a1 + 176) + 40) = &_MergedGlobals_1_0;
    *(*(a1 + 176) + 48) = &compounds_actentries;
    *(*(a1 + 176) + 56) = &unk_28058CF3E;
    *(*(a1 + 176) + 64) = &unk_28058BA76;
    *(*(a1 + 176) + 72) = &_MergedGlobals_44;
    *(*(a1 + 176) + 80) = &unk_28058C388;
    *(*(a1 + 176) + 88) = &pnames_actentries;
    *(*(a1 + 176) + 96) = &places_actentries;
    *(*(a1 + 176) + 104) = &roots1a_actentries;
    *(*(a1 + 176) + 112) = &roots1b_actentries;
    *(*(a1 + 176) + 120) = &roots2_actentries;
    *(*(a1 + 176) + 128) = &roots3_actentries;
    *(*(a1 + 176) + 136) = &_MergedGlobals_2;
    *(*(a1 + 176) + 144) = &unk_28058E71A;
    *(*(a1 + 176) + 152) = &eng_abbr_actentries;
    *(*(a1 + 176) + 160) = &unk_28058DA72;
    *(*(a1 + 176) + 168) = &unk_28058CAB2;
    *(*(a1 + 176) + 176) = &unk_28058BB2C;
    *(*(a1 + 176) + 184) = &_MergedGlobals_3;
    *(*(a1 + 176) + 192) = &unk_28058BE25;
  }

  else
  {

    delta_delete(a1);
  }
}

void act_dict_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      free(v2);
      *(a1 + 176) = 0;
    }
  }
}

void set_dict_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x1118uLL, 0x10040436913F5uLL);
  *(a1 + 80) = v2;
  v3 = a1 + 80;
  if (v2)
  {
    *v2 = &unk_2805A5E73;
    *(*v3 + 8) = &unk_2805B2610;
    *(*v3 + 16) = &unk_2805A5C07;
    *(*v3 + 24) = &unk_2805BD165;
    *(*v3 + 32) = &unk_2805A65B1;
    *(*v3 + 40) = &unk_2805A9702;
    *(*v3 + 48) = &unk_2805A5B91;
    *(*v3 + 56) = &unk_2805AC5BD;
    *(*v3 + 64) = &unk_2805A64DD;
    *(*v3 + 72) = &unk_2805AB635;
    *(*v3 + 80) = &unk_2805AAEAF;
    *(*v3 + 88) = &unk_2805A75D3;
    *(*v3 + 96) = &unk_2805A896E;
    *(*v3 + 104) = &unk_2805A6D5D;
    *(*v3 + 112) = &unk_2805A7D5D;
    *(*v3 + 120) = &unk_2805A851F;
    *(*v3 + 128) = &unk_2805A6E8F;
    *(*v3 + 136) = &unk_2805A6C63;
    *(*v3 + 144) = &unk_2805A69BF;
    *(*v3 + 152) = &unk_2805A7EE9;
    *(*v3 + 160) = &unk_2805A799B;
    *(*v3 + 168) = &unk_2805AA75B;
    *(*v3 + 176) = &unk_2805AABA3;
    *(*v3 + 184) = &unk_2805A8CD1;
    *(*v3 + 192) = &unk_2805A7D9F;
    *(*v3 + 200) = &unk_2805A9C76;
    *(*v3 + 208) = &unk_2805A5EF3;
    *(*v3 + 216) = &unk_2805A6C95;
    *(*v3 + 224) = &unk_2805A6B0C;
    *(*v3 + 232) = &unk_2805A6D90;
    *(*v3 + 240) = &unk_2805A7282;
    *(*v3 + 248) = &unk_2805A863F;
    *(*v3 + 256) = &unk_2805A6DC3;
    *(*v3 + 264) = &unk_2805A668D;
    *(*v3 + 272) = &unk_2805A93F0;
    *(*v3 + 280) = &unk_2805A7442;
    *(*v3 + 288) = &unk_2805A7B96;
    *(*v3 + 296) = &unk_2805A631A;
    *(*v3 + 304) = &unk_2805A5E93;
    *(*v3 + 312) = &unk_2805AA9B1;
    *(*v3 + 320) = &unk_2805A8688;
    *(*v3 + 328) = &unk_2805A65DD;
    *(*v3 + 336) = &unk_2805ABAEE;
    *(*v3 + 344) = &unk_2805A66BA;
    *(*v3 + 352) = &unk_2805B53FF;
    *(*v3 + 360) = &unk_2805AAF34;
    *(*v3 + 368) = &unk_2805A8403;
    *(*v3 + 376) = &unk_2805AED2E;
    *(*v3 + 384) = &_MergedGlobals_17;
    *(*v3 + 392) = &unk_2805A9C14;
    *(*v3 + 400) = &unk_2805B853F;
    *(*v3 + 408) = &unk_2805B36EE;
    *(*v3 + 416) = &unk_2805B2112;
    *(*v3 + 424) = &unk_2805A997F;
    *(*v3 + 432) = &unk_2805A6DF6;
    *(*v3 + 440) = &unk_2805AB03E;
    *(*v3 + 448) = &unk_2805A6FC7;
    *(*v3 + 456) = &unk_2805A6507;
    *(*v3 + 464) = &unk_2805A6EC3;
    *(*v3 + 472) = &unk_2805A99DC;
    *(*v3 + 480) = &unk_2805A8841;
    *(*v3 + 488) = &unk_2805AB0C4;
    *(*v3 + 496) = &unk_2805A9B54;
    *(*v3 + 504) = &unk_2805AA2E7;
    *(*v3 + 512) = &unk_2805B64E2;
    *(*v3 + 520) = &unk_2805A755F;
    *(*v3 + 528) = &unk_2805A66E7;
    *(*v3 + 536) = &unk_2805A6204;
    *(*v3 + 544) = &unk_2805A76BF;
    *(*v3 + 552) = &unk_2805AAA2D;
    *(*v3 + 560) = &unk_2805A747B;
    *(*v3 + 568) = &unk_2805A5C17;
    *(*v3 + 576) = &unk_2805A6146;
    *(*v3 + 584) = &unk_2805A6609;
    *(*v3 + 592) = &unk_2805A684F;
    *(*v3 + 600) = &unk_2805A6343;
    *(*v3 + 608) = &unk_2805AA58B;
    *(*v3 + 616) = &unk_2805A8FAD;
    *(*v3 + 624) = &unk_2805A6EF7;
    *(*v3 + 632) = &unk_2805A76FB;
    *(*v3 + 640) = &unk_2805ABD62;
    *(*v3 + 648) = &unk_2805A6E29;
    *(*v3 + 656) = &unk_2805A72BA;
    *(*v3 + 664) = &unk_2805ACDAB;
    *(*v3 + 672) = &unk_2805A622B;
    *(*v3 + 680) = &unk_2805A8219;
    *(*v3 + 688) = &unk_2805A86D1;
    *(*v3 + 696) = &unk_2805A95A0;
    *(*v3 + 704) = &unk_2805ACF2F;
    *(*v3 + 712) = &unk_2805ABFE0;
    *(*v3 + 720) = &unk_2805A929C;
    *(*v3 + 728) = &unk_2805A5D17;
    *(*v3 + 736) = &unk_2805A7105;
    *(*v3 + 744) = &unk_2805A8105;
    *(*v3 + 752) = &unk_2805A8EB7;
    *(*v3 + 760) = &unk_2805A8763;
    *(*v3 + 768) = &unk_2805AA5FF;
    *(*v3 + 776) = &unk_2805A687D;
    *(*v3 + 784) = &unk_2805A9650;
    *(*v3 + 792) = &unk_2805A655B;
    *(*v3 + 800) = &unk_2805ADAB5;
    *(*v3 + 808) = &unk_2805A914C;
    *(*v3 + 816) = &unk_2805A6B3D;
    *(*v3 + 824) = &unk_2805A6022;
    *(*v3 + 832) = &unk_2805A97B6;
    *(*v3 + 840) = &unk_2805A7F2C;
    *(*v3 + 848) = &unk_2805A5F14;
    *(*v3 + 856) = &unk_2805A6046;
    *(*v3 + 864) = &unk_2805A77AF;
    *(*v3 + 872) = &unk_2805A74B4;
    *(*v3 + 880) = &unk_2805A9000;
    *(*v3 + 888) = &unk_2805A92F1;
    *(*v3 + 896) = &unk_2805A6FFC;
    *(*v3 + 904) = &unk_2805A5F35;
    *(*v3 + 912) = &unk_2805A713B;
    *(*v3 + 920) = &unk_2805A8D22;
    *(*v3 + 928) = &unk_2805A7BD7;
    *(*v3 + 936) = &unk_2805AC66D;
    *(*v3 + 944) = &unk_2805AF77D;
    *(*v3 + 952) = &unk_2805A9A39;
    *(*v3 + 960) = &unk_2805A7031;
    *(*v3 + 968) = &_MergedGlobals_1_1;
    *(*v3 + 976) = &unk_2805A91A0;
    *(*v3 + 984) = &unk_2805A5F56;
    *(*v3 + 992) = &unk_2805A636C;
    *(*v3 + 1000) = &unk_2805A825F;
    *(*v3 + 1008) = &unk_2805A9E66;
    *(*v3 + 1016) = &unk_2805A78A3;
    *(*v3 + 1024) = &unk_2805A7AD6;
    *(*v3 + 1032) = &unk_2805A78E1;
    *(*v3 + 1040) = &unk_2805A9053;
    *(*v3 + 1048) = &unk_2805AC87E;
    *(*v3 + 1056) = &unk_2805AB25B;
    *(*v3 + 1064) = &unk_2805AB14A;
    *(*v3 + 1072) = &unk_2805A9E02;
    *(*v3 + 1080) = &unk_2805A8D73;
    *(*v3 + 1088) = &unk_2805A8A55;
    *(*v3 + 1096) = &unk_2805A6395;
    *(*v3 + 1104) = &unk_2805A7C18;
    *(*v3 + 1112) = &unk_2805A82A5;
    *(*v3 + 1120) = &unk_2805A9F96;
    *(*v3 + 1128) = &unk_2805A89BB;
    *(*v3 + 1136) = &unk_2805A6B9F;
    *(*v3 + 1144) = &unk_2805A9CD9;
    *(*v3 + 1152) = &unk_2805ABB8B;
    *(*v3 + 1160) = &unk_2805A79DA;
    *(*v3 + 1168) = &unk_2805A7FF5;
    *(*v3 + 1176) = &unk_2805AAD26;
    *(*v3 + 1184) = &unk_2805AC31A;
    *(*v3 + 1192) = &unk_2805A6635;
    *(*v3 + 1200) = &unk_2805A82EB;
    *(*v3 + 1208) = &unk_2805A8AA3;
    *(*v3 + 1216) = &unk_2805A7066;
    *(*v3 + 1224) = &unk_2805AC71D;
    *(*v3 + 1232) = &unk_2805A90A6;
    *(*v3 + 1240) = &unk_2805A7A19;
    *(*v3 + 1248) = &unk_2805A6714;
    *(*v3 + 1256) = &unk_2805A72F2;
    *(*v3 + 1264) = &unk_2805ABC28;
    *(*v3 + 1272) = &unk_2805A6E5C;
    *(*v3 + 1280) = &unk_2805A63BE;
    *(*v3 + 1288) = &unk_2805A9811;
    *(*v3 + 1296) = &unk_2805A96A9;
    *(*v3 + 1304) = &unk_2805AB2E6;
    *(*v3 + 1312) = &unk_2805AA356;
    *(*v3 + 1320) = &unk_2805A60B2;
    *(*v3 + 1328) = &unk_2805A7DE1;
    *(*v3 + 1336) = &unk_2805A8AF1;
    *(*v3 + 1344) = &unk_2805AB755;
    *(*v3 + 1352) = &unk_2805A9F30;
    *(*v3 + 1360) = &unk_2805A8567;
    *(*v3 + 1368) = &unk_2805A6A4C;
    *(*v3 + 1376) = &unk_2805AC273;
    *(*v3 + 1384) = &unk_2805A68AB;
    *(*v3 + 1392) = &unk_2805AA1A0;
    *(*v3 + 1400) = &unk_2805A77EC;
    *(*v3 + 1408) = &unk_2805A9D3C;
    *(*v3 + 1416) = &unk_2805A9A96;
    *(*v3 + 1424) = &unk_2805AB5A6;
    *(*v3 + 1432) = &unk_2805A8F09;
    *(*v3 + 1440) = &unk_2805A6CC7;
    *(*v3 + 1448) = &unk_2805B0BAA;
    *(*v3 + 1456) = &unk_2805A6741;
    *(*v3 + 1464) = &unk_2805ACFF6;
    *(*v3 + 1472) = &unk_2805A63E7;
    *(*v3 + 1480) = &unk_2805A814A;
    *(*v3 + 1488) = &unk_2805A8F5B;
    *(*v3 + 1496) = &unk_2805A676E;
    *(*v3 + 1504) = &unk_2805A7F6F;
    *(*v3 + 1512) = &unk_2805A6F2B;
    *(*v3 + 1520) = &unk_2805A9346;
    *(*v3 + 1528) = &unk_2805A74ED;
    *(*v3 + 1536) = &unk_2805A7599;
    *(*v3 + 1544) = &unk_2805A91F4;
    *(*v3 + 1552) = &unk_2805A7E23;
    *(*v3 + 1560) = &unk_2805A6BD0;
    *(*v3 + 1568) = &_MergedGlobals_3_0;
    *(*v3 + 1576) = &unk_2805A6410;
    *(*v3 + 1584) = &unk_2805A939B;
    *(*v3 + 1592) = &unk_2805B38F3;
    *(*v3 + 1600) = &unk_2805A6439;
    *(*v3 + 1608) = &unk_2805AE80B;
    *(*v3 + 1616) = &_MergedGlobals_14;
    *(*v3 + 1624) = &unk_2805A68D9;
    *(*v3 + 1632) = &unk_2805AB9B6;
    *(*v3 + 1640) = &unk_2805A5DDF;
    *(*v3 + 1648) = &unk_2805AC937;
    *(*v3 + 1656) = &unk_2805B0E91;
    *(*v3 + 1664) = &unk_2805A888C;
    *(*v3 + 1672) = &unk_2805A5CBF;
    *(*v3 + 1680) = &unk_2805AB6C5;
    *(*v3 + 1688) = &unk_2805AB1D1;
    *(*v3 + 1696) = &unk_2805AA135;
    *(*v3 + 1704) = &unk_2805A6252;
    *(*v3 + 1712) = &unk_2805AD8EB;
    *(*v3 + 1720) = &unk_2805ADE65;
    *(*v3 + 1728) = &unk_2805AA435;
    *(*v3 + 1736) = &unk_2805ACC29;
    *(*v3 + 1744) = &unk_2805B060A;
    *(*v3 + 1752) = &unk_2805ADF59;
    *(*v3 + 1760) = &unk_2805AB882;
    *(*v3 + 1768) = &unk_2805A85AF;
    *(*v3 + 1776) = &unk_2805B47C8;
    *(*v3 + 1784) = &unk_2805B90CC;
    *(*v3 + 1792) = &unk_2805B3F1A;
    *(*v3 + 1800) = &unk_2805A791F;
    *(*v3 + 1808) = &unk_2805A71DD;
    *(*v3 + 1816) = &unk_2805A8922;
    *(*v3 + 1824) = &unk_2805A9248;
    *(*v3 + 1832) = &noun_compounds1_setentries;
    *(*v3 + 1840) = &noun_compounds2_setentries;
    *(*v3 + 1848) = &_MergedGlobals_22;
    *(*v3 + 1856) = &unk_2805B2973;
    *(*v3 + 1864) = &unk_2805BC5D2;
    *(*v3 + 1872) = &unk_2805A6CF9;
    *(*v3 + 1880) = &_MergedGlobals_26;
    *(*v3 + 1888) = &unk_2805A6907;
    *(*v3 + 1896) = &unk_2805AE32E;
    *(*v3 + 1904) = &unk_2805A6D2B;
    *(*v3 + 1912) = &unk_2805A7A58;
    *(*v3 + 1920) = &unk_2805AEB14;
    *(*v3 + 1928) = &unk_2805A6462;
    *(*v3 + 1936) = &unk_2805ABEA0;
    *(*v3 + 1944) = &unk_2805B27BE;
    *(*v3 + 1952) = &unk_2805A844A;
    *(*v3 + 1960) = &unk_2805AD58D;
    *(*v3 + 1968) = &unk_2805AA064;
    *(*v3 + 1976) = &_MergedGlobals_9;
    *(*v3 + 1984) = &_MergedGlobals_8;
    *(*v3 + 1992) = &unk_2805A818F;
    *(*v3 + 2000) = &unk_2805A5B9C;
    *(*v3 + 2008) = &unk_2805A616C;
    *(*v3 + 2016) = &unk_2805A6A7C;
    *(*v3 + 2024) = &unk_2805A8039;
    *(*v3 + 2032) = &unk_2805A94F2;
    *(*v3 + 2040) = &unk_2805B0344;
    *(*v3 + 2048) = &unk_2805A7A97;
    *(*v3 + 2056) = &unk_2805A6586;
    *(*v3 + 2064) = &unk_2805AA3C5;
    *(*v3 + 2072) = &unk_2805A5FB9;
    *(*v3 + 2080) = &unk_2805AF075;
    *(*v3 + 2088) = &unk_2805BABD3;
    *(*v3 + 2096) = &unk_2805A98C7;
    *(*v3 + 2104) = &unk_2805AD663;
    *(*v3 + 2112) = &adjectives_setentries;
    *(*v3 + 2120) = &unk_2805B0D19;
    *(*v3 + 2128) = &unk_2805ADC87;
    *(*v3 + 2136) = &unk_2805AD812;
    *(*v3 + 2144) = &unk_2805B4356;
    *(*v3 + 2152) = &unk_2805A8DC4;
    *(*v3 + 2160) = &unk_2805B34EB;
    *(*v3 + 2168) = &_MergedGlobals_25;
    *(*v3 + 2176) = &unk_2805ABF40;
    *(*v3 + 2184) = &unk_2805AA4A6;
    *(*v3 + 2192) = &unk_2805B1AA4;
    *(*v3 + 2200) = &unk_2805B04A7;
    *(*v3 + 2208) = &unk_2805B2D30;
    *(*v3 + 2216) = &unk_2805AADA9;
    *(*v3 + 2224) = &verbs_setentries;
    *(*v3 + 2232) = &unk_2805AE51C;
    *(*v3 + 2240) = &unk_2805B8CE5;
    *(*v3 + 2248) = &unk_2805A81D4;
    *(*v3 + 2256) = &unk_2805B0085;
    *(*v3 + 2264) = &unk_2805AA518;
    *(*v3 + 2272) = &unk_2805A7737;
    *(*v3 + 2280) = &unk_2805B0A3D;
    *(*v3 + 2288) = &unk_2805AF51B;
    *(*v3 + 2296) = &unk_2805BBAE8;
    *(*v3 + 2304) = &unk_2805B712F;
    *(*v3 + 2312) = &unk_2805AB372;
    *(*v3 + 2320) = &personal_names_setentries;
    *(*v3 + 2328) = &unk_2805A8331;
    *(*v3 + 2336) = &unk_2805A8B91;
    *(*v3 + 2344) = &unk_2805ADB9D;
    *(*v3 + 2352) = &unk_2805AD0BD;
    *(*v3 + 2360) = &unk_2805A5D5F;
    *(*v3 + 2368) = &unk_2805A60D7;
    *(*v3 + 2376) = &unk_2805A5D91;
    *(*v3 + 2384) = &unk_2805A6C01;
    *(*v3 + 2392) = &unk_2805A8BE1;
    *(*v3 + 2400) = &unk_2805A87AD;
    *(*v3 + 2408) = &unk_2805A8A08;
    *(*v3 + 2416) = &unk_2805AB3FE;
    *(*v3 + 2424) = &unk_2805A5F77;
    *(*v3 + 2432) = &_MergedGlobals_16;
    *(*v3 + 2440) = &unk_2805A709B;
    *(*v3 + 2448) = &unk_2805A6F5F;
    *(*v3 + 2456) = &unk_2805AC513;
    *(*v3 + 2464) = &unk_2805A679B;
    *(*v3 + 2472) = &unk_2805AB7E9;
    *(*v3 + 2480) = &unk_2805A87F7;
    *(*v3 + 2488) = &unk_2805AAC24;
    *(*v3 + 2496) = &unk_2805A627A;
    *(*v3 + 2504) = &unk_2805B9D5E;
    *(*v3 + 2512) = &unk_2805AFB35;
    *(*v3 + 2520) = &unk_2805AAB25;
    *(*v3 + 2528) = &unk_2805A9446;
    *(*v3 + 2536) = &unk_2805ADD72;
    *(*v3 + 2544) = &unk_2805AA937;
    *(*v3 + 2552) = &unk_2805A975C;
    *(*v3 + 2560) = &unk_2805AD24F;
    *(*v3 + 2568) = &unk_2805AA8BE;
    *(*v3 + 2576) = &unk_2805B1485;
    *(*v3 + 2584) = &unk_2805AC127;
    *(*v3 + 2592) = &unk_2805BA225;
    *(*v3 + 2600) = &unk_2805B516C;
    *(*v3 + 2608) = &unk_2805AF197;
    *(*v3 + 2616) = &unk_2805AFC84;
    *(*v3 + 2624) = &unk_2805A67C8;
    *(*v3 + 2632) = &unk_2805ABCC5;
    *(*v3 + 2640) = &unk_2805B1917;
    *(*v3 + 2648) = &unk_2805B01E4;
    *(*v3 + 2656) = &unk_2805ACAAE;
    *(*v3 + 2664) = &unk_2805A69EE;
    *(*v3 + 2672) = &unk_2805A90F9;
    *(*v3 + 2680) = &unk_2805AA0CC;
    *(*v3 + 2688) = &refl_verbs_setentries;
    *(*v3 + 2696) = &unk_2805A9FFD;
    *(*v3 + 2704) = &unk_2805A67F5;
    *(*v3 + 2712) = &unk_2805AA20D;
    *(*v3 + 2720) = &unk_2805A6192;
    *(*v3 + 2728) = &unk_2805A606A;
    *(*v3 + 2736) = &unk_2805A732A;
    *(*v3 + 2744) = &unk_2805A7B16;
    *(*v3 + 2752) = &unk_2805AA27A;
    *(*v3 + 2760) = &unk_2805AC1CD;
    *(*v3 + 2768) = &unk_2805AE616;
    *(*v3 + 2776) = &unk_2805B7E34;
    *(*v3 + 2784) = &unk_2805BEB18;
    *(*v3 + 2792) = &unk_2805B08D3;
    *(*v3 + 2800) = &no_medial_prefix_strip_setentries;
    *(*v3 + 2808) = &unk_2805B458C;
    *(*v3 + 2816) = &unk_2805B100C;
    *(*v3 + 2824) = &unk_2805B67E5;
    *(*v3 + 2832) = &medial_prefix_strip_setentries;
    *(*v3 + 2840) = &unk_2805A5FDC;
    *(*v3 + 2848) = &unk_2805B1189;
    *(*v3 + 2856) = &unk_2805B5697;
    *(*v3 + 2864) = &unk_2805A5BCD;
    *(*v3 + 2872) = &lex_prefix_setentries;
    *(*v3 + 2880) = &_MergedGlobals_20;
    *(*v3 + 2888) = &final_compound_word_setentries;
    *(*v3 + 2896) = &_MergedGlobals_21;
    *(*v3 + 2904) = &_MergedGlobals_45;
    *(*v3 + 2912) = &not_compound_setentries;
    *(*v3 + 2920) = &unk_2805B2F16;
    *(*v3 + 2928) = &unk_2805BB0C5;
    *(*v3 + 2936) = &unk_2805B7796;
    *(*v3 + 2944) = &unk_2805A8C31;
    *(*v3 + 2952) = &unk_2805AC082;
    *(*v3 + 2960) = &unk_2805AC46A;
    *(*v3 + 2968) = &unk_2805A9923;
    *(*v3 + 2976) = &unk_2805AEA0E;
    *(*v3 + 2984) = &unk_2805A986C;
    *(*v3 + 2992) = &unk_2805A5FFF;
    *(*v3 + 3000) = &unk_2805ACB6B;
    *(*v3 + 3008) = &unk_2805A6F93;
    *(*v3 + 3016) = &unk_2805AEE41;
    *(*v3 + 3024) = &unk_2805AB91C;
    *(*v3 + 3032) = &unk_2805B178B;
    *(*v3 + 3040) = &unk_2805B6E04;
    *(*v3 + 3048) = &unk_2805B5EF8;
    *(*v3 + 3056) = &unk_2805B22BB;
    *(*v3 + 3064) = &no_suffix_strip_setentries;
    *(*v3 + 3072) = &unk_2805AF64C;
    *(*v3 + 3080) = &unk_2805AB518;
    *(*v3 + 3088) = &unk_2805A5B81;
    *(*v3 + 3096) = &unk_2805AA7D1;
    *(*v3 + 3104) = &unk_2805A5BE9;
    *(*v3 + 3112) = &unk_2805A8E15;
    *(*v3 + 3120) = &unk_2805B594B;
    *(*v3 + 3128) = &unk_2805ABE01;
    *(*v3 + 3136) = &unk_2805B3100;
    *(*v3 + 3144) = &unk_2805A7362;
    *(*v3 + 3152) = &unk_2805A7526;
    *(*v3 + 3160) = &unk_2805A949C;
    *(*v3 + 3168) = &unk_2805AAE2C;
    *(*v3 + 3176) = &unk_2805AC7CD;
    *(*v3 + 3184) = &unk_2805AE425;
    *(*v3 + 3192) = &unk_2805A739A;
    *(*v3 + 3200) = &unk_2805A60FC;
    *(*v3 + 3208) = &unk_2805A760E;
    *(*v3 + 3216) = &unk_2805A6935;
    *(*v3 + 3224) = &unk_2805A5CD5;
    *(*v3 + 3232) = &unk_2805A5D2F;
    *(*v3 + 3240) = &unk_2805A7214;
    *(*v3 + 3248) = &unk_2805A62A2;
    *(*v3 + 3256) = &unk_2805A70D0;
    *(*v3 + 3264) = &unk_2805A7649;
    *(*v3 + 3272) = &unk_2805A5BF8;
    *(*v3 + 3280) = &unk_2805A5EB3;
    *(*v3 + 3288) = &unk_2805A5D78;
    *(*v3 + 3296) = &unk_2805A5E35;
    *(*v3 + 3304) = &unk_2805A5ED3;
    *(*v3 + 3312) = &unk_2805A5C95;
    *(*v3 + 3320) = &unk_2805A6AAC;
    *(*v3 + 3328) = &unk_2805A8491;
    *(*v3 + 3336) = &unk_2805A724B;
    *(*v3 + 3344) = &unk_2805A5F98;
    *(*v3 + 3352) = &unk_2805A7FB2;
    *(*v3 + 3360) = &unk_2805A6963;
    *(*v3 + 3368) = &unk_2805A5DAB;
    *(*v3 + 3376) = &unk_2805A6822;
    *(*v3 + 3384) = &unk_2805A85F7;
    *(*v3 + 3392) = &unk_2805A5C6E;
    *(*v3 + 3400) = &unk_2805AB48B;
    *(*v3 + 3408) = &unk_2805A84D8;
    *(*v3 + 3416) = &unk_2805A5C38;
    *(*v3 + 3424) = &unk_2805A5B7B;
    *(*v3 + 3432) = &unk_2805A7684;
    *(*v3 + 3440) = &unk_2805A88D7;
    *(*v3 + 3448) = &unk_2805A9549;
    *(*v3 + 3456) = &unk_2805A807D;
    *(*v3 + 3464) = &unk_2805A73D2;
    *(*v3 + 3472) = &_MergedGlobals_2_0;
    *(*v3 + 3480) = &unk_2805ACE6D;
    *(*v3 + 3488) = &unk_2805A7C59;
    *(*v3 + 3496) = &unk_2805A6661;
    *(*v3 + 3504) = &unk_2805A7C9A;
    *(*v3 + 3512) = &unk_2805A8377;
    *(*v3 + 3520) = &unk_2805A7E65;
    *(*v3 + 3528) = &unk_2805B1C3B;
    *(*v3 + 3536) = &_MergedGlobals_10;
    *(*v3 + 3544) = &unk_2805A648B;
    *(*v3 + 3552) = &unk_2805A83BD;
    *(*v3 + 3560) = &unk_2805AD4B9;
    *(*v3 + 3568) = &unk_2805A5BB3;
    *(*v3 + 3576) = &unk_2805A61B8;
    *(*v3 + 3584) = &state_names_setentries;
    *(*v3 + 3592) = &_MergedGlobals_15;
    *(*v3 + 3600) = &unk_2805A5DC5;
    *(*v3 + 3608) = &unk_2805AF9EC;
    *(*v3 + 3616) = &unk_2805B1F72;
    *(*v3 + 3624) = &unk_2805A9ECB;
    *(*v3 + 3632) = &unk_2805AE04E;
    *(*v3 + 3640) = &unk_2805A740A;
    *(*v3 + 3648) = &unk_2805AEF54;
    *(*v3 + 3656) = &unk_2805A5C81;
    *(*v3 + 3664) = &unk_2805A7CDB;
    *(*v3 + 3672) = &unk_2805AD31B;
    *(*v3 + 3680) = &unk_2805AE238;
    *(*v3 + 3688) = &_MergedGlobals_27;
    *(*v3 + 3696) = &unk_2805AA673;
    *(*v3 + 3704) = &unk_2805A5C4A;
    *(*v3 + 3712) = &unk_2805B745D;
    *(*v3 + 3720) = &two_one_stress_setentries;
    *(*v3 + 3728) = &unk_2805AD186;
    *(*v3 + 3736) = &unk_2805B8192;
    *(*v3 + 3744) = &unk_2805B3D09;
    *(*v3 + 3752) = &_MergedGlobals_19;
    *(*v3 + 3760) = &unk_2805AACA5;
    *(*v3 + 3768) = &unk_2805A7829;
    *(*v3 + 3776) = &unk_2805AAFB9;
    *(*v3 + 3784) = &_MergedGlobals_11;
    *(*v3 + 3792) = &unk_2805AFDD5;
    *(*v3 + 3800) = &_MergedGlobals_12;
    *(*v3 + 3808) = &one_stress_setentries;
    *(*v3 + 3816) = &final_one_stress_setentries;
    *(*v3 + 3824) = &two_stress_end_setentries;
    *(*v3 + 3832) = &_MergedGlobals_5;
    *(*v3 + 3840) = &unk_2805A871A;
    *(*v3 + 3848) = &prefix_1stress_nouns_setentries;
    *(*v3 + 3856) = &unk_2805B3AFE;
    *(*v3 + 3864) = &unk_2805A6ADC;
    *(*v3 + 3872) = &unk_2805A5E54;
    *(*v3 + 3880) = &unk_2805A6C32;
    *(*v3 + 3888) = &unk_2805B94D2;
    *(*v3 + 3896) = &unk_2805AFF2B;
    *(*v3 + 3904) = &unk_2805AE143;
    *(*v3 + 3912) = &unk_2805ACCEA;
    *(*v3 + 3920) = &unk_2805A64B4;
    *(*v3 + 3928) = &unk_2805A5CEB;
    *(*v3 + 3936) = &unk_2805A6121;
    *(*v3 + 3944) = &unk_2805A5CAA;
    *(*v3 + 3952) = &unk_2805A5E17;
    *(*v3 + 3960) = &unk_2805A5BA7;
    *(*v3 + 3968) = &unk_2805A6531;
    *(*v3 + 3976) = &unk_2805AF2C1;
    *(*v3 + 3984) = &unk_2805A62CA;
    *(*v3 + 3992) = &unk_2805A7171;
    *(*v3 + 4000) = &_MergedGlobals_24;
    *(*v3 + 4008) = &unk_2805AF3EC;
    *(*v3 + 4016) = &unk_2805A95F8;
    *(*v3 + 4024) = &unk_2805A62F2;
    *(*v3 + 4032) = &unk_2805A71A7;
    *(*v3 + 4040) = &unk_2805B61EC;
    *(*v3 + 4048) = &unk_2805B4C73;
    *(*v3 + 4056) = &unk_2805B4A10;
    *(*v3 + 4064) = &unk_2805A80C1;
    *(*v3 + 4072) = &unk_2805A5BDB;
    *(*v3 + 4080) = &unk_2805A5D47;
    *(*v3 + 4088) = &unk_2805A8E66;
    *(*v3 + 4096) = &unk_2805A8C81;
    *(*v3 + 4104) = &unk_2805AE710;
    *(*v3 + 4112) = &unk_2805B1307;
    *(*v3 + 4120) = &unk_2805A795D;
    *(*v3 + 4128) = &_MergedGlobals_18;
    *(*v3 + 4136) = &_MergedGlobals_13;
    *(*v3 + 4144) = &unk_2805A7D1C;
    *(*v3 + 4152) = &unk_2805A61DE;
    *(*v3 + 4160) = &unk_2805A5D01;
    *(*v3 + 4168) = &unk_2805A608E;
    *(*v3 + 4176) = &unk_2805A7773;
    *(*v3 + 4184) = &unk_2805A7866;
    *(*v3 + 4192) = &unk_2805A6991;
    *(*v3 + 4200) = &unk_2805BDD74;
    *(*v3 + 4208) = &unk_2805B2B4F;
    *(*v3 + 4216) = &unk_2805AD73A;
    *(*v3 + 4224) = &unk_2805A5DFB;
    *(*v3 + 4232) = &unk_2805A6A1D;
    *(*v3 + 4240) = &unk_2805A5BC0;
    *(*v3 + 4248) = &_MergedGlobals_23;
    *(*v3 + 4256) = &unk_2805B1DD4;
    *(*v3 + 4264) = &_MergedGlobals_6;
    *(*v3 + 4272) = &_MergedGlobals_4;
    *(*v3 + 4280) = &unk_2805AA847;
    *(*v3 + 4288) = &unk_2805A5C5C;
    *(*v3 + 4296) = &unk_2805AD3EA;
    *(*v3 + 4304) = &unk_2805A9BB4;
    *(*v3 + 4312) = &unk_2805A5C27;
    *(*v3 + 4320) = &unk_2805A5B89;
    *(*v3 + 4328) = &unk_2805AEC20;
    *(*v3 + 4336) = &_MergedGlobals_7;
    *(*v3 + 4344) = &unk_2805AA6E7;
    *(*v3 + 4352) = &unk_2805AC3C2;
    *(*v3 + 4360) = &unk_2805A7EA7;
    *(*v3 + 4368) = &unk_2805A9D9F;
  }

  else
  {

    delta_delete(a1);
  }
}

void set_dict_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      free(v2);
      *(a1 + 80) = 0;
    }
  }
}

uint64_t setEngsynErrorRange(uint64_t result, int a2, int a3)
{
  v3 = *(result + 224);
  *(v3 + 208) = a2;
  *(v3 + 212) = a3;
  return result;
}

uint64_t getEngsynErrorRange(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 224);
  *a2 = *(v3 + 208);
  *a3 = *(v3 + 212);
  return result;
}

uint64_t initStreamArrays(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (*(v1 + 220))
  {
    return 0;
  }

  v2 = 1;
  *(v1 + 220) = 1;
  createStreamArrays(a1, 28);
  if (initStreamArray(a1, 0, "F0") && initStreamArray(a1, 1, "F1") && initStreamArray(a1, 2, "F2") && initStreamArray(a1, 3, "F3") && initStreamArray(a1, 4, "F4") && initStreamArray(a1, 5, "F5") && initStreamArray(a1, 6, "B1") && initStreamArray(a1, 7, "B2") && initStreamArray(a1, 8, "B3") && initStreamArray(a1, 9, "B4") && initStreamArray(a1, 10, "B5") && initStreamArray(a1, 11, "FNP") && initStreamArray(a1, 12, "FNZ") && initStreamArray(a1, 13, "FTP") && initStreamArray(a1, 14, "FTZ") && initStreamArray(a1, 15, "TL") && initStreamArray(a1, 16, "OQ") && initStreamArray(a1, 17, "FL") && initStreamArray(a1, 18, "DI") && initStreamArray(a1, 19, "AV") && initStreamArray(a1, 20, "AH") && initStreamArray(a1, 21, "AF") && initStreamArray(a1, 22, "A1F") && initStreamArray(a1, 23, "A2F") && initStreamArray(a1, 24, "A3F") && initStreamArray(a1, 25, "A4F") && initStreamArray(a1, 26, "A5F") && initStreamArray(a1, 27, "AB"))
  {
    return 0;
  }

  return v2;
}

uint64_t init_user_dicts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  setUserDictInputStream(a1, "inp");
  *(a2 + 2) = 0;
  *(a3 + 2) = 1;
  *(a4 + 2) = 2;
  return 0;
}

uint64_t setNonSequential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10)
{
  for (i = 0; i < *(a1 + 288); ++i)
  {
    *(*(*(a1 + 192) + 9072) + i) = 0;
  }

  clearnonseqIndex(a1);
  v13 = *(a2 + 2);
  if (v13 >= 1)
  {
    for (j = &a10; ; ++j)
    {
      v15 = v13-- != 0;
      if (!v15 || !a9)
      {
        break;
      }

      v16 = *a9;
      if (v16 == 65532)
      {
        LOWORD(v16) = a9[1];
      }

      if ((v16 & 0x8000) == 0 && v16 < *(a1 + 288))
      {
        *(*(*(a1 + 192) + 9072) + v16) = 1;
        setnonseqIndex(a1, v16);
      }

      v17 = j;
      a9 = *v17;
    }
  }

  return 0;
}

void eloqc_new(uint64_t result)
{
  if (result)
  {
    v2 = malloc_type_malloc(0x100uLL, 0x10D0040F3AD890DuLL);
    *(result + 224) = v2;
    bzero(v2, 0x100uLL);
    ecilink_new(result);
    *(*(result + 224) + 221) = -1;
  }
}

void eloqc_delete(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_51();
    if (v2)
    {
      ecilink_delete();
      bzero(*(v1 + 224), 0x100uLL);
      free(*(v1 + 224));
      *(v1 + 224) = 0;
    }
  }
}

uint64_t initializeIO()
{
  OUTLINED_FUNCTION_1_51();
  if (*(v1 + 248))
  {
    v2 = *(v0 + 192);
    if (*(v2 + 9072))
    {
      for (i = 0; ; ++i)
      {
        v2 = *(v0 + 192);
        if (i == 2)
        {
          break;
        }

        *(*(v2 + 9072) + i) = 1;
      }
    }

    *(v2 + 8864) = 0;
    v4 = 1;
    if (*(v2 + 9080))
    {
      *(v2 + 8868) = 1;
      v4 = 0;
    }
  }

  else
  {
    initDllLink();
    if (vffind_lf(v0, "cmdout") == -1)
    {
      v4 = 1;
    }

    else
    {
      v5 = showDialogs();
      v6 = 224;
      if (!v5)
      {
        v6 = 216;
      }

      v4 = 1;
      if (OUTLINED_FUNCTION_0_52("Eloquence output", *(v0 + v6)) && vffind_lf(v0, "pgmout") != -1)
      {
        v7 = showDialogs();
        v8 = 224;
        if (!v7)
        {
          v8 = 216;
        }

        if (OUTLINED_FUNCTION_0_52("Eloquence program output", *(v0 + v8)))
        {
          eciLinkNew();
        }
      }
    }
  }

  *(*(v0 + 224) + 248) = 1;
  return v4;
}

BOOL showDialogs()
{
  v0 = fopen("debug", "r");
  v1 = v0;
  if (v0)
  {
    fclose(v0);
  }

  return v1 != 0;
}

uint64_t closeIO()
{
  OUTLINED_FUNCTION_1_51();
  v2 = *(v1 + 232);
  if (v2)
  {
    v3 = eciLinkDelete(v2);
    v1 = *(v0 + 224);
    *(v1 + 232) = v3;
  }

  v4 = *(v1 + 240);
  if (v4)
  {
    *(*(v0 + 224) + 240) = eciLinkDelete(v4);
  }

  return 0;
}

void ***eciLinkCleanup()
{
  OUTLINED_FUNCTION_1_51();
  v2 = *(v1 + 232);
  if (v2)
  {
    eciLinkDelete(v2);
    v1 = *(v0 + 224);
    *(v1 + 232) = 0;
  }

  result = *(v1 + 240);
  if (result)
  {
    result = eciLinkDelete(result);
    *(*(v0 + 224) + 232) = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_52@<X0>(char *a1@<X2>, uint64_t a2@<X8>)
{

  return logicalFileAddPhysical(v3, v4, a1, (a2 + v2), 0, 1);
}

uint64_t synthesizingWord(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = *(v2 + 8);
  if (v3)
  {
    v3(*(a2 + 2), *(v2 + 16));
  }

  return 0;
}

uint64_t wordIndexCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = *(v2 + 24);
  if (v3)
  {
    v3(*(a2 + 2), *(v2 + 32));
  }

  return 0;
}

uint64_t userIndexCallback(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = *(v1 + 40);
  if (v2)
  {
    v2(*(v1 + 48));
  }

  return 0;
}

uint64_t annoCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 224);
  v4 = *(v3 + 56);
  if (v4)
  {
    v4(*(a2 + 2), *(a3 + 2), *(v3 + 64));
  }

  return 0;
}

uint64_t placePhoneme(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (**(a1 + 224))
  {
    v7 = *a2;
    v5 = a2 + 16;
    v6 = v7;
    if (v7 < 0)
    {
      return 1;
    }

    if (v6 >= *(a1 + 288))
    {
      return 1;
    }

    disptok(a1, v5, v6, 0, v13);
    v10 = strlen(v13);
    if (v10 > 4)
    {
      return 1;
    }

    for (i = v10; i != 4; ++i)
    {
      v13[i] = 0;
    }

    insertPhoneme(a1, *v13, *(a4 + 2) * *(a3 + 2) / 0x3E8uLL);
  }

  return 0;
}

BOOL getObject(uint64_t a1, EngineWrapper **a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_47, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_47))
  {
    RequestLicense::RequestLicense(&qword_2805C0328);
    __cxa_guard_release(&_MergedGlobals_47);
  }

  *a2 = 0;
  if ((a1 - 1) > 1)
  {
    if (a1 == 3)
    {
      *a2 = &qword_2805C0328;
      (*(qword_2805C0328 + 8))(&qword_2805C0328);
    }
  }

  else if (RequestLicense::licenseGranted(&qword_2805C0328))
  {
    operator new();
  }

  return *a2 != 0;
}

BOOL engsynStart(uint64_t a1)
{
  resetEngsynError(a1);
  v2 = *(a1 + 224);
  if (*(v2 + 1) || (*(v2 + 1) = 1, etiwinMainDLL(a1, 0, 0) < 1) || initializeIO())
  {
    v3 = -4;
LABEL_3:
    setEngsynError(a1, v3);
    goto LABEL_4;
  }

  if (DeltaProc_start(a1))
  {
    v3 = -3;
    goto LABEL_3;
  }

LABEL_4:

  return checkEngsynError(a1);
}

uint64_t UnixReg(char *__src, char *a2)
{
  strncpy(libpath, __src, 0x1000uLL);
  if (!a2)
  {
    a2 = getcwd(0, 0x1000uLL);
  }

  if (reg(a2, 0, v3, v4, v5, v6, v7, v8))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL engsynEnd(uint64_t a1)
{
  resetEngsynError(a1);
  v2 = *(a1 + 224);
  if (!*(v2 + 2))
  {
    *(v2 + 2) = 1;
    DeltaProc_end(a1);
    vcmdend(a1, 0);
  }

  setEngsynError(a1, -5);

  return checkEngsynError(a1);
}

BOOL engsynProcessSentences()
{
  OUTLINED_FUNCTION_2_51();
  if (v3)
  {
    setEngsynError(v0, -8);
    goto LABEL_12;
  }

  *(v2 + 4) = 1;
  v4 = *(v2 + 232);
  if (v4)
  {
    if (!eciLinkDataFromECI(v4, v1))
    {
      setEngsynError(v0, -2);
    }

    if (!DeltaProc_process_sentences(v0, v5, v6, v7, v8, v9, v10, v11) && !deltaErrorThrown(v0))
    {
      goto LABEL_11;
    }

    v12 = -3;
  }

  else
  {
    v12 = -1;
  }

  setEngsynError(v0, v12);
LABEL_11:
  *(*(v0 + 224) + 4) = 0;
LABEL_12:

  return checkEngsynError(v0);
}

BOOL engsynProcessRemaining()
{
  OUTLINED_FUNCTION_2_51();
  if (v3)
  {
    setEngsynError(v0, -8);
    goto LABEL_12;
  }

  *(v2 + 4) = 1;
  v4 = *(v2 + 232);
  if (v4)
  {
    if (eciLinkDataFromECI(v4, v1))
    {
      if (!DeltaProc_process_remaining(v0, v5, v6, v7, v8, v9, v10, v11) && !deltaErrorThrown(v0))
      {
        goto LABEL_11;
      }

      v12 = -3;
    }

    else
    {
      v12 = -2;
    }
  }

  else
  {
    v12 = -1;
  }

  setEngsynError(v0, v12);
LABEL_11:
  *(*(v0 + 224) + 4) = 0;
LABEL_12:
  flushDelayedSynthQueue(v0);

  return checkEngsynError(v0);
}

uint64_t engsynGetLastError(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  getEngsynErrorRange(a1, a2, a3);

  return getEngsynError(a1);
}

BOOL engsynRestart(uint64_t a1)
{
  resetEngsynError(a1);
  initGlobalVars(a1);
  resetDelayedSynthQueue(a1);
  flushDelayedSynthQueue(a1);
  if (!vdltinit(a1, 1) || !vinitrun(a1))
  {
    return 1;
  }

  v2 = vffind_lf(a1, "wordsin");
  if (v2 != -1)
  {
    vf_clrbuf(a1, v2);
  }

  stopSynthesizing(a1);
  if (DeltaProc_start(a1))
  {
    setEngsynError(a1, -3);
  }

  *(*(a1 + 224) + 3) = 0;

  return checkEngsynError(a1);
}

BOOL engsynReadPhonemes(uint64_t a1, _BYTE *a2, int a3, int *a4)
{
  v5 = *(*(a1 + 224) + 232);
  if (v5 && !eciLinkDataToECI(v5, a2, a3, a4))
  {
    setEngsynError(a1, -2);
  }

  return checkEngsynError(a1);
}

uint64_t engsynReadErrorMessage(uint64_t a1, char *a2, int a3, int *a4)
{
  v4 = *(a1 + 224);
  if (!*(v4 + 232) || eciLinkDataToECI(*(v4 + 240), a2, a3, a4))
  {
    return 0;
  }

  strncpy(a2, "Unable to get error message from Eloquence.", a3);
  a2[a3] = 0;
  return 1;
}

BOOL engsynFlush(uint64_t a1, int a2)
{
  *(*(a1 + 224) + 3) = a2;
  setInterrupt(a1, a2);
  if (a2)
  {
    throwDeltaErrorNow(a1);
    stopSynthesizing(a1);
  }

  else
  {
    engsynRestart(a1);
  }

  return checkEngsynError(a1);
}

BOOL engsynClearInput()
{
  OUTLINED_FUNCTION_2_51();
  if (v2)
  {
    v3 = -8;
LABEL_3:
    setEngsynError(v0, v3);
    goto LABEL_4;
  }

  if (!eciLinkDataFromECI(*(v1 + 232), &unk_26DD32C5A))
  {
    v3 = -2;
    goto LABEL_3;
  }

  if (DeltaProc_flush(v0))
  {
    v3 = -3;
    goto LABEL_3;
  }

LABEL_4:

  return checkEngsynError(v0);
}

uint64_t engsynSetAbort(uint64_t a1)
{
  setEngsynError(a1, -7);
  throwDeltaErrorNow(a1);
  return 0;
}

uint64_t engsynRegisterWordCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t engsynRegisterWordIndexCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t engsynRegisterUserIndexCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t engsynRegisterAnnoCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return result;
}

uint64_t engsynClose(uint64_t a1)
{
  if (a1)
  {
    stopSynthesizing(a1);
    eciLinkCleanup();
    deltaCleanup(a1);
  }

  return 0;
}

uint64_t engsynDeleteDict(DictionarySet *a1)
{
  OUTLINED_FUNCTION_3_50();
  if (v3)
  {
    DictionarySet::~DictionarySet(a1);
  }

  MEMORY[0x274379FF0](a1, v1);
  return 0;
}

uint64_t engsynLoadDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a4)
  {
    return DictionarySet::load(a2, a3, a4, a4, a5, a6, a7, a8);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynSaveDict(uint64_t a1, int a2, char *a3)
{
  if (a1 && a3)
  {
    return DictionarySet::save(a1, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynUpdateDict(uint64_t a1, int a2, char *a3, char *a4)
{
  if (a1 && a3)
  {
    return DictionarySet::updateEntry(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynDictFindFirst(uint64_t a1, int a2, const char **a3, const char **a4)
{
  if (a1)
  {
    return DictionarySet::findFirst(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynDictFindNext(uint64_t a1, int a2, const char **a3, const char **a4)
{
  if (a1)
  {
    return DictionarySet::findNext(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_53();
  }
}

uint64_t engsynDictLookup(uint64_t result, int a2, char *a3)
{
  if (result)
  {
    return DictionarySet::lookup(result, a2, a3);
  }

  return result;
}

BOOL eciLinkFileOpen(uint64_t a1, void *a2, int a3)
{
  *a2 = a1;
  v3 = a2[2];
  if (v3)
  {
    if ((a3 - 1) < 2)
    {
      v4 = (v3 + 8);
LABEL_5:
      dynaBufReset(*v4);
      return v3 != 0;
    }

    v4 = a2[2];
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  return v3 != 0;
}

uint64_t eciLinkFileRead(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = dynaBufCurrentChar(*v2, 0);
  if (result)
  {
    while (1)
    {
      v5 = dynaBufCurrentChar(*v2, 1);
      if (!v5 || v5 == 10)
      {
        break;
      }

      result = dynaBufAddChar(a2, v5, 0);
      if (!result)
      {
        return result;
      }
    }

    v7 = dynaBufMoveRel(a2, 0);
    v8 = dynaBufMoveRel(a2, 0xFFFFFFFF);
    if (dynaBufCurrentChar(a2, 0) == 32)
    {
      if (v7 != v8)
      {
        dynaBufMoveRel(a2, 1u);
      }
    }

    else
    {
      if (v7 != v8)
      {
        dynaBufMoveRel(a2, 1u);
      }

      dynaBufAddChar(a2, 32, 0);
    }

    result = dynaBufAddChar(a2, 10, 0);
    if (result)
    {
      v9 = *v2;
      if (v5)
      {
        v10 = dynaBufMoveRel(v9, 0);
        dynaBufMoveAbs(*v2, 0);
        dynaBufDeleteChars(*v2, v10);
      }

      else
      {
        dynaBufReset(v9);
      }

      return 1;
    }
  }

  return result;
}

BOOL eciLinkFileWrite(uint64_t a1, char *a2)
{
  if (!*a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  return v2 && dynaBufAddString(*(v2 + 8), a2, 0) != 0;
}

BOOL dialogFileOpen(uint64_t a1, void *a2)
{
  *a2 = a1;
  v3 = dynaBufNew(0);
  a2[2] = v3;
  return v3 != 0;
}

uint64_t dialogFileRead(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  dynaBufAddChar(a2, 10, 0);
  return 1;
}

uint64_t dialogFileWrite(uint64_t a1, char *a2)
{
  v2 = *(a1 + 16);
  if (!v2 || !dynaBufAddString(*(a1 + 16), a2, 0))
  {
    return 0;
  }

  v3 = dynaBufLength(v2);
  if (dynaBufChar(v2, v3 - 1) != 10)
  {
    return 1;
  }

  dynaBufMoveAbs(v2, 0xFFFFFFFF);
  dynaBufMoveRel(v2, 0xFFFFFFFF);
  v4 = 1;
  dynaBufDeleteChars(v2, 1uLL);
  dynaBufReset(v2);
  return v4;
}

double ecilink_new(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 224);
    if (v1)
    {
      v2 = unk_28203A5C0;
      *(v1 + 72) = eciLinkFileClass_glob;
      *(v1 + 88) = v2;
      v3 = *&off_28203A5E0;
      *(v1 + 104) = xmmword_28203A5D0;
      *(v1 + 120) = v3;
      v4 = *(a1 + 224);
      v5 = unk_28203A600;
      *(v4 + 136) = dialogFileClass_glob;
      *(v4 + 152) = v5;
      result = *&xmmword_28203A610;
      v7 = *&off_28203A620;
      *(v4 + 168) = xmmword_28203A610;
      *(v4 + 184) = v7;
    }
  }

  return result;
}

uint64_t eciLinkDelete(void ***a1)
{
  dynaBufDelete(*a1);
  dynaBufDelete(a1[1]);
  MEMORY[0x274379FF0](a1, 0x20C40A4A59CD2);
  return 0;
}

uint64_t eciLinkDataFromECI(uint64_t *a1, char *a2)
{
  result = 1;
  if (a1 && a2)
  {
    dynaBufReset(*a1);
    result = dynaBufAddString(*a1, a2, 0);
    if (result)
    {
      dynaBufMoveAbs(*a1, 0);
      return 1;
    }
  }

  return result;
}

uint64_t eciLinkDataToECI(uint64_t result, _BYTE *a2, int a3, int *a4)
{
  if (result)
  {
    v4 = result;
    result = *(result + 8);
    if (result)
    {
      v8 = a3 - 1;
      v9 = dynaBufLength(result);
      if (v9 >= a3)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      *a4 = v10;
      dynaBufExtract(*(v4 + 8), 0, a2, v10);
      dynaBufMoveAbs(*(v4 + 8), 0);
      dynaBufDeleteChars(*(v4 + 8), *a4);
      if (*a2)
      {
        ++*a4;
      }

      return 1;
    }
  }

  return result;
}

void EngineWrapper::EngineWrapper(EngineWrapper *this)
{
  OUTLINED_FUNCTION_2_52();
  *v2 = v3;
  *(v2 + 8) = 0;
  *(v2 + 24) = 0;
  v11 = delta_new(v2, v4, v5, v6, v7, v8, v9, v10);
  *(v1 + 16) = v11;
  if (!v11)
  {
    *(v1 + 24) = 1;
  }
}

void EngineWrapper::~EngineWrapper(EngineWrapper *this)
{
  OUTLINED_FUNCTION_2_52();
  *v2 = v3;
  v4 = v2[2];
  if (v4)
  {
    delta_delete(v4);
    *(v1 + 16) = 0;
  }
}

BOOL EngineWrapper::queryInterface(EngineWrapper *this, uint64_t a2, void **a3)
{
  *a3 = 0;
  if ((a2 - 1) > 1)
  {
    return 0;
  }

  *a3 = this;
  (*(*this + 8))(this);
  return *a3 != 0;
}

uint64_t EngineWrapper::addRef(EngineWrapper *this)
{
  v1 = *(this + 1) + 1;
  *(this + 1) = v1;
  return v1;
}

uint64_t EngineWrapper::release(EngineWrapper *this)
{
  v1 = *(this + 1);
  v2 = v1 - 1;
  *(this + 1) = v1 - 1;
  if (v1 == 1)
  {
    EngineWrapper::~EngineWrapper(this);
    MEMORY[0x274379FF0](this, 0x1081C40F6F63E5DLL);
  }

  return v2;
}

uint64_t EngineWrapper::start(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynStart(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::end(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynEnd(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::processSentences(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_53();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynProcessSentences();
    if (v4)
    {
      *(v2 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v4);
}

uint64_t EngineWrapper::processRemaining(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_53();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynProcessRemaining();
    if (v4)
    {
      *(v2 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v4);
}

uint64_t EngineWrapper::getLastError(EngineWrapper *this, int *a2, int *a3)
{
  OUTLINED_FUNCTION_1_53();
  if (v6)
  {
    LastError = 1;
  }

  else
  {
    LastError = engsynGetLastError(*(v3 + 16), v4, v5);
    if (LastError == 1)
    {
      *(v3 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(LastError);
}

uint64_t EngineWrapper::restart(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynRestart(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::readPhonemes(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_53();
  if (v8)
  {
    Phonemes = 1;
  }

  else
  {
    Phonemes = engsynReadPhonemes(*(v4 + 16), v5, v6, v7);
    if (Phonemes)
    {
      *(v4 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(Phonemes);
}

uint64_t EngineWrapper::readErrorMessage(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_53();
  if (v8)
  {
    ErrorMessage = 1;
  }

  else
  {
    ErrorMessage = engsynReadErrorMessage(*(v4 + 16), v5, v6, v7);
    if (ErrorMessage == 1)
    {
      *(v4 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(ErrorMessage);
}

BOOL EngineWrapper::flush(EngineWrapper *this, int a2)
{
  *(this + 24) = 0;
  *(this + 25) = a2 != 0;
  return engsynFlush(*(this + 2), a2);
}

uint64_t EngineWrapper::clearInput(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynClearInput();
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::setAbort(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynSetAbort(*(v1 + 16));
    if (v3 == 1)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v3);
}

uint64_t EngineWrapper::outputPlaying(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynOutputPlaying(*(v1 + 16), v2);
    if (v4)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v4);
}

uint64_t EngineWrapper::pause(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynPause(*(v1 + 16), v2);
    if (v4)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v4);
}

uint64_t EngineWrapper::setSynthToNamedFile(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_53();
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = engsynSetSynthToNamedFile(*(v2 + 16), v3);
    if (v5)
    {
      *(v2 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v5);
}

BOOL EngineWrapper::setKlattDynamicHook(EngineWrapper *this, void (*a2)(float *, void *), uint64_t a3)
{
  if (*(this + 24))
  {
    return 1;
  }

  result = engsynSetKlattDynamicHook(*(this + 2), a2, a3);
  if (result)
  {
    *(this + 24) = 1;
  }

  return result;
}

BOOL EngineWrapper::setKlattConstHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    return 1;
  }

  result = engsynSetKlattConstHook(*(a1 + 16), a2, a3);
  if (result)
  {
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t EngineWrapper::setSynthToCallback(EngineWrapper *this, void (*a2)(int, uint64_t *, void *), void *a3)
{
  OUTLINED_FUNCTION_1_53();
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = engsynSetSynthToCallback(*(v3 + 16), v4, v5);
    if (v7)
    {
      *(v3 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(v7);
}

uint64_t EngineWrapper::setDurationCallback(uint64_t this, void (*a2)(uint64_t, uint64_t, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynSetDurationCallback();
  }

  return this;
}

uint64_t EngineWrapper::registerWordCallback(uint64_t this, void (*a2)(int, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterWordCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerWordIndexCallback(uint64_t this, void (*a2)(int, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterWordIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerUserIndexCallback(uint64_t this, void (*a2)(void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterUserIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerIndexCallback(uint64_t this, void (*a2)(int, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterIndexCallback();
  }

  return this;
}

uint64_t EngineWrapper::registerPhonemeCallback(uint64_t this, void (*a2)(int, unsigned int, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterPhonemeCallback();
  }

  return this;
}

uint64_t EngineWrapper::registerAnnoCallback(uint64_t this, void (*a2)(uint64_t, uint64_t, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterAnnoCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::insertSynthesisIndex(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53();
  if (v3)
  {
    inserted = 1;
  }

  else
  {
    inserted = engsynInsertSynthesisIndex(*(v1 + 16), v2);
    if (inserted)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(inserted);
}

uint64_t EngineWrapper::insertDelayedSynthesisIndex(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53();
  if (v4)
  {
    inserted = 1;
  }

  else
  {
    inserted = engsynInsertDelayedSynthesisIndex(*(v1 + 16), v2, v3);
    if (inserted)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(inserted);
}

uint64_t EngineWrapper::wantPhonemeIndices(uint64_t this, char a2)
{
  if (!*(this + 24))
  {
    return engsynWantPhonemeIndices(*(this + 16), a2);
  }

  return this;
}

uint64_t EngineWrapper::close(EngineWrapper *this)
{
  if (engsynClose(*(this + 2)))
  {
    v2 = 1;
    *(this + 24) = 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 25))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_0_54(uint64_t result)
{
  if (*(v1 + 25))
  {
    return 0;
  }

  else
  {
    return result;
  }
}

char *LanguageID::getLanguageString(LanguageID *this)
{
  v1 = this + 3;
  sprintf(this + 3, "%d", *this);
  return v1;
}

_BYTE *OUTLINED_FUNCTION_0_55(_BYTE *result, int a2)
{
  *result = BYTE2(a2);
  result[1] = BYTE1(a2);
  result[2] = a2;
  return result;
}

_BYTE *OUTLINED_FUNCTION_1_54(_BYTE *result, char a2, char a3)
{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

_BYTE *OUTLINED_FUNCTION_2_53(_BYTE *result, char a2, char a3, char a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

BOOL reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = delta_new(a1, a2, a3, a4, a5, a6, a7, a8);
  engsynStart(v9);
  if (ensureInputStream(v9))
  {
    qword_2805C0340 = a1;
    DeltaProc_registerLanguages(v9);
    delta_delete(v9);
    return (_MergedGlobals_48 & 1) == 0;
  }

  else
  {
    delta_delete(v9);
    return 1;
  }
}

BOOL ensureInputStream(uint64_t a1)
{
  if (*(*(a1 + 224) + 221) != 255)
  {
    return 1;
  }

  for (i = 0; i < num_streams(a1); ++i)
  {
    v4 = stream_name(i);
    if (!strcmp(v4, "inp"))
    {
      break;
    }
  }

  if (num_streams(a1) == i)
  {
    return 0;
  }

  *(*(a1 + 224) + 221) = i;
  return single_letter_stream(i) != 0;
}

uint64_t unreg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v21 = *MEMORY[0x277D85DE8];
  globalJustGetLanguage = 1;
  v16 = delta_new(v8, v9, v10, v11, v12, v13, v14, v15);
  engsynStart(v16);
  if (ensureInputStream(v16))
  {
    DeltaProc_registerLanguages(v16);
    LanguageID::LanguageID(v20, *(v16[28] + 224));
    IniFileWriter::IniFileWriter(v19, v8);
    LanguageDialectString = LanguageID::getLanguageDialectString(v20);
    IniFileWriter::deleteSection(v19, LanguageDialectString);
  }

  delta_delete(v16);
  return 1;
}

void sub_26DD04FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerPhoneme(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v33 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_48 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_55();
    v32 = 0;
    v22[4] = 0u;
    v22[5] = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    *v22 = 0u;
    v22[1] = 0u;
    if (sprintf(v31, "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d", *(v23 + 2), *(v24 + 2), *(v25 + 2), *(v26 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2), *(a15 + 2), *(a16 + 2), *(a17 + 2), *(a18 + 2), *(a19 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_56();
    }

    else
    {
      LanguageID::LanguageID(v30, *(v21 + 2), *(v20 + 2));
      IniFileWriter::IniFileWriter(v28, qword_2805C0340);
      if (sprintf(v29, "Phoneme%d", *(v19 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v30);
        IniFileWriter::writeString(v28, LanguageDialectString, v29, v31);
      }

      OUTLINED_FUNCTION_0_56();
      IniFileWriter::~IniFileWriter(v28);
    }
  }
}

void sub_26DD05200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t registerLanguage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v24 = *MEMORY[0x277D85DE8];
  LanguageID::LanguageID(v23, *(v14 + 2), *(v15 + 2));
  *(*(v13 + 224) + 224) = LanguageID::getPackedInt(v16);
  if (v23[0] - 6 > 4)
  {
    v17 = 63;
  }

  else
  {
    v17 = dword_26DD3149C[(v23[0] - 6)];
  }

  sprintf(byte_2805C0348, "%#x", v17);
  if (globalJustGetLanguage || (_MergedGlobals_48 & 1) != 0)
  {
    return 0;
  }

  IniFileWriter::IniFileWriter(v21, qword_2805C0340);
  if (sprintf(v22, "%d.%d", *(v12 + 2), *(v10 + 2)) != -1)
  {
    LanguageDialectString = LanguageID::getLanguageDialectString(v23);
    FullPathName = getFullPathName();
    IniFileWriter::writeString(v21, LanguageDialectString, "Path", FullPathName);
  }

  _MergedGlobals_48 = 1;
  IniFileWriter::~IniFileWriter(v21);
  return 0xFFFFFFFFLL;
}

void sub_26DD053F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerVoice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v26 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_48 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_55();
    v25 = 0;
    v17[4] = 0u;
    v17[5] = 0u;
    v17[2] = 0u;
    v17[3] = 0u;
    *v17 = 0u;
    v17[1] = 0u;
    if (sprintf(v24, "%d %d %d %d %d %d %d %d", *(v18 + 2), *(v19 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_56();
    }

    else
    {
      LanguageID::LanguageID(v23, *(v16 + 2), *(v15 + 2));
      IniFileWriter::IniFileWriter(v21, qword_2805C0340);
      if (sprintf(v22, "Voice%d", *(v14 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v23);
        IniFileWriter::writeString(v21, LanguageDialectString, v22, v24);
      }

      OUTLINED_FUNCTION_0_56();
      IniFileWriter::~IniFileWriter(v21);
    }
  }
}

void sub_26DD055B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t extractInputStreamString(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a5;
  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  result = sync_in_stm(a1, *(*(a1 + 224) + 221), v8);
  if (!result)
  {
    return result;
  }

  result = sync_in_stm(a1, *(*(a1 + 224) + 221), v9);
  if (!result)
  {
    return result;
  }

  result = extract_string(a1, *(*(a1 + 224) + 221), v8, v9, a4, v5);
  if (!result)
  {
    return result;
  }

  if (strlen(a4) < 3)
  {
    return 1;
  }

  for (i = a4; ; ++i)
  {
    v12 = *a4;
    if (v12 != 39)
    {
      break;
    }

    if (a4[1] == 32 && a4[2] == 39)
    {
      LOBYTE(v12) = 32;
      v13 = 3;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 1;
LABEL_13:
    *i = v12;
    a4 += v13;
  }

  if (*a4)
  {
    goto LABEL_12;
  }

  *i = 0;
  return 1;
}

uint64_t sendArrayParameters(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v13 = a3;
  v14 = a2;
  v51 = *MEMORY[0x277D85DE8];
  v16 = *(a1 + 208);
  if (!a2)
  {
    *(v16 + 140) = 0;
  }

  v17 = 0;
  *(v16 + 144) = a3;
  while (v17 != 62)
  {
    v50[v17] = *(a10 + v17 * 4);
    ++v17;
  }

  v50[0] = a8;
  if (a4)
  {
    if (a5)
    {
      if (!a6)
      {
LABEL_11:
        for (i = 4; i != 252; i += 4)
        {
          v19 = *(a9 + i);
          if (v19 != -1)
          {
            Offset = arrayStreamLastOffset(a1, v19);
            if (v13 >= Offset)
            {
              v13 = Offset;
            }
          }
        }

        if (v13 <= v14)
        {
          v21 = v14;
        }

        else
        {
          v21 = v13;
        }

        v13 = v14 + (v21 - v14) / a8 * a8;
        v16 = *(a1 + 208);
      }
    }

    else
    {
      v14 = *(v16 + 8);
      if (!a6)
      {
        goto LABEL_11;
      }
    }

    *(v16 + 8) = v13;
  }

  *(v16 + 136) = v13;
  v22 = *v16;
  if (!*v16)
  {
    v23 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
    if (v23)
    {
      v24 = v23;
      v25 = streamArrayCount(a1);
      v26 = malloc_type_calloc(v25, 0x30uLL, 0x1000040732E9A81uLL);
      *v24 = v26;
      if (v26)
      {
        valueSetReset(a1, v24, v14, v13);
        **(a1 + 208) = v24;
        goto LABEL_30;
      }

      free(v24);
    }

    result = 0;
    **(a1 + 208) = 0;
    return result;
  }

  if (!a4 || a5)
  {
    valueSetReset(a1, v22, v14, v13);
  }

  else
  {
    v22[2] = v13;
  }

LABEL_30:
  v27 = 0;
  v49 = a8;
  while (!v27)
  {
    if (checkInterrupt(a1))
    {
      return 1;
    }

    v28 = **(a1 + 208);
    if (*(v28 + 8) > v14 || *(v28 + 16) <= v14)
    {
      return 1;
    }

    for (j = 0; j != 62; ++j)
    {
      v30 = *(a9 + 4 + 4 * j);
      if (v30 != -1)
      {
        v31 = **(a1 + 208);
        v32 = *v31 + 48 * v30;
        v33 = *(v32 + 16);
        while (v33 < v14)
        {
          if (v33 == -1)
          {
            v38 = OUTLINED_FUNCTION_0_57();
            Val = arrayStreamFirstVal(v38, v39, v40, v41);
            *v32 = 0;
            *(v32 + 8) = 0;
            if (Val)
            {
              v33 = 0;
              *(v32 + 16) = 0;
            }

            else
            {
              v33 = v31[2];
              *(v32 + 16) = v33;
            }

            *(v32 + 24) = 0;
          }

          else
          {
            *v32 = v33;
            *(v32 + 8) = *(v32 + 24);
            v34 = OUTLINED_FUNCTION_0_57();
            if (arrayStreamNextVal(v34, v35, v36, v37))
            {
              v33 = 0;
              *(v32 + 16) = 0;
              *(v32 + 24) = 0;
            }

            else
            {
              v33 = v31[2];
              *(v32 + 16) = v33;
            }
          }
        }

        v43 = *v32;
        v44 = v33 - *v32;
        *(v32 + 32) = v44;
        v45 = *(v32 + 8);
        v46 = *(v32 + 24) - v45;
        *(v32 + 40) = v46;
        if (v46)
        {
          v47 = v33 == v43;
        }

        else
        {
          v47 = 1;
        }

        if (!v47)
        {
          v45 = ((((v14 - v43) * v46) / v44) + v45);
        }

        v50[j] = v45;
      }
    }

    v14 += v49;
    if (v14 > v13)
    {
      v50[0] = (v14 - v13);
    }

    (*(*(*(a1 + 208) + 32) + 32))(v50, *(*(*(a1 + 208) + 32) + 40));
    v27 = !KlattSynth(*(*(a1 + 208) + 64), v50);
  }

  return 0;
}

uint64_t valueSetReset(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  a2[1] = a3;
  a2[2] = a4;
  for (i = 16; ; i += 48)
  {
    result = streamArrayCount(a1);
    if (v6 >= result)
    {
      break;
    }

    *(*a2 + i) = -1;
    ++v6;
  }

  return result;
}

void dlangCleanup(uint64_t a1)
{
  v1 = **(a1 + 208);
  if (v1)
  {
    free(*v1);

    free(v1);
  }
}

double *getDeltaCcodeParm(double *result, double *a2, int a3)
{
  v3 = *result;
  if (v3 == 65531)
  {
    if (a3 != -5)
    {
      if (a3 != -3)
      {
        if (a3 != -4)
        {
          return result;
        }

        v4 = result[1];
        goto LABEL_16;
      }

      v5 = result[1];
      goto LABEL_21;
    }

    v6 = result[1];
    goto LABEL_24;
  }

  if (v3 != 65533)
  {
    if (v3 != 65532)
    {
      return result;
    }

    if (a3 != -5)
    {
      if (a3 != -3)
      {
        if (a3 != -4)
        {
          return result;
        }

        LOWORD(v4) = *(result + 1);
LABEL_16:
        *a2 = v4;
        return result;
      }

      v5 = *(result + 1);
      goto LABEL_21;
    }

    v6 = *(result + 1);
    goto LABEL_24;
  }

  switch(a3)
  {
    case -5:
      v6 = *(result + 1);
LABEL_24:
      *a2 = v6;
      return result;
    case -3:
      v5 = *(result + 1);
LABEL_21:
      *a2 = v5;
      return result;
    case -4:
      *a2 = *(result + 1);
      break;
  }

  return result;
}

double *setDeltaCcodeReturnValue(double *result, int a2, double *a3)
{
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      switch(a2)
      {
        case -5:
          v6 = *result;
          break;
        case -3:
          v6 = *result;
          break;
        case -4:
          v6 = *result;
          break;
        default:
          return result;
      }

      a3[1] = v6;
      break;
    case 65533:
      switch(a2)
      {
        case -5:
          v5 = *result;
          break;
        case -3:
          v5 = *result;
          break;
        case -4:
          v5 = *result;
          break;
        default:
          return result;
      }

      *(a3 + 1) = v5;
      return result;
    case 65532:
      switch(a2)
      {
        case -5:
          v4 = *result;
          goto LABEL_25;
        case -3:
          *(a3 + 1) = *result;
          return result;
        case -4:
          LOWORD(v4) = *result;
LABEL_25:
          *(a3 + 1) = v4;
          break;
      }

      break;
  }

  return result;
}

uint64_t setdlookup(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(vstmtbl[12 * *(a4 + 16) + 1] + 15) != -1)
  {
    return 0;
  }

  result = extract(a1, a2, a3, a5, __s1, *(a4 + 48));
  if (result)
  {
    v7 = 0;
    v8 = *(a4 + 8);
    v9 = *(a4 + 32) * *(a4 + 48) - 1;
    v10 = -1;
    while (v9 >= v7)
    {
      v11 = v9;
      v12 = (v9 + v7) >> 1;
      if (v12 >= -1)
      {
        v9 = -1;
      }

      else
      {
        v9 = (v9 + v7) >> 1;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        while (*(v8 + v12))
        {
          if (--v12 < 0)
          {
            goto LABEL_15;
          }
        }

        v9 = v12;
      }

LABEL_15:
      v13 = v9 + 1;
      if (v9 + 1 == v10)
      {
        break;
      }

      v14 = strcmp(__s1, (v8 + v13));
      if (!v14)
      {
        return 1;
      }

      v10 = v9 + 1;
      if ((v14 & 0x80000000) == 0)
      {
        v7 = v9 + 1;
          ;
        }

        v9 = v11;
        v10 = v13;
      }
    }

    return 0;
  }

  return result;
}

uint64_t extract(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  v6 = *(*(a1 + 192) + 9084) + a4;
  if ((*(a2 + 8 * v6) & 1) == 0 || (*(a3 + 8 * v6) & 1) == 0)
  {
    return 0;
  }

  v11 = a2;
  v13 = 0;
  v14 = *vstmtbl[12 * a4 + 2];
  v15 = 0xFE / a6;
  v16 = a6;
  while (1)
  {
    v17 = v11 == a3 || v11 == *(*(a1 + 200) + 8);
    if (v17 || v13 >= v15)
    {
      break;
    }

    v11 = *(v11 + 8 * (*(*(a1 + 192) + 9084) + a4)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v11 || (*v11 & 2) == 0)
    {
      v19 = v14(v11 + 16);
      memcpy(a5, v19, v16);
      a5 += v16;
      v11 = *(v11 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    ++v13;
  }

  *a5 = 0;
  return 1;
}

const char *actdlookup(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 16);
  if (*(vstmtbl[12 * v5 + 1] + 15) == -1 && extract(a1, a2, a3, v5, __s1, *(a4 + 48)))
  {
    v8 = 0;
    v9 = *(a4 + 8);
    v10 = v9 + 2 * *(a4 + 24);
    v11 = *(a4 + 24) - 1;
    while (v11 >= v8)
    {
      v12 = (v10 + *(v9 + ((v11 + v8) & 0x1FFFFFFFELL)));
      v13 = strcmp(__s1, v12);
      if (!v13)
      {
        v6 = v12;
          ;
        }

        return v6;
      }

      v14 = (v11 + v8) >> 1;
      if (v13 < 0)
      {
        v11 = v14 - 1;
      }

      else
      {
        v8 = v14 + 1;
      }
    }
  }

  return 0;
}

uint64_t vdictinit(uint64_t a1)
{
  v2 = *(a1 + 306);
  if (v2 || *(a1 + 320))
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      dictinit(a1, *(a1 + 64) + v3, 0, i);
      v2 = *(a1 + 306);
      v3 += 64;
    }

    v5 = 0;
    for (j = 0; j < *(a1 + 320); ++j)
    {
      dictinit(a1, *(a1 + 72) + v5, 1, j);
      v5 += 64;
    }
  }

  return 1;
}

void *dictinit(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  switch(*(vstmtbl[12 * *(a2 + 16) + 1] + 15))
  {
    case 0xFFFB:
      v12 = 0x10000000000000;
      v8 = 8;
      v9 = &v12;
      break;
    case 0xFFFC:
      v13 = -32767;
      v8 = 2;
      v9 = &v13;
      break;
    case 0xFFFD:
      v14 = -2147483647;
      v8 = 8;
      v9 = &v14;
      break;
    case 0xFFFE:
      v8 = 2;
      v9 = &unk_26DD314B2;
      break;
    case 0xFFFF:
      v8 = 1;
      v9 = &unk_26DD314B0;
      break;
    default:
      v9 = 0;
      v8 = 0;
      break;
  }

  result = memcpy((a2 + 49), v9, v8);
  *(a2 + 48) = v8;
  v11 = 176;
  if (!a3)
  {
    v11 = 80;
  }

  *(a2 + 8) = *(*(a1 + v11) + 8 * a4);
  return result;
}

uint64_t vgen_frame(uint64_t a1)
{
  v1 = *(a1 + 192);
  v2 = 8160;
  if (**(v1 + 8032) == 195)
  {
    v2 = 8128;
  }

  v3 = v1 + v2;
  *(v1 + 8400) = v1 + v2;
  *(v1 + 8408) = -4;
  *(v1 + 8410) = 0;
  vassign(a1, (v1 + 8400), (v1 + 8384));
  *(v3 + 24) |= 1u;
  return 0;
}

uint64_t vgen_time(uint64_t a1)
{
  v1 = *(a1 + 192);
  v2 = 8160;
  if (**(v1 + 8032) == 196)
  {
    v2 = 8128;
  }

  v3 = *(v1 + 0x2000);
  v4 = v1 + v2;
  *(v4 + 8) = v3;
  *(v4 + 24) |= 2u;
  return 0;
}

uint64_t vgen_params(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = 8160;
  if (**(v2 + 8032) == 197)
  {
    v3 = 8128;
  }

  v4 = v2 + v3;
  *(v2 + v3 + 9) = *(v2 + 0x2000);
  if ((*(v2 + v3 + 24) & 4) != 0)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = dynaBufNew(*(v2 + 8193));
    *(v4 + 16) = v5;
  }

  dynaBufReset(v5);
  for (i = 1; ; ++i)
  {
    v7 = *(a1 + 192);
    if (i > *(v7 + 8193))
    {
      break;
    }

    v8 = *(v4 + 16);
    v9 = *(v7 + 8264);
    *(v7 + 8264) = v9 + 1;
    dynaBufAddChar(v8, *v9, 0);
  }

  *(v4 + 24) |= 4u;
  return 0;
}

uint64_t vgen_copy(uint64_t a1)
{
  v1 = *(a1 + 192);
  if ((~*(v1 + 8152) & 7) != 0)
  {
    return 245;
  }

  *(v1 + 8160) = *(v1 + 8128);
  *(v1 + 8168) = *(v1 + 8136);
  *(*(a1 + 192) + 0x2000) = dynaBufLength(*(v1 + 8144));
  dynaBufReset(*(*(a1 + 192) + 8176));
  for (i = 0; ; ++i)
  {
    v4 = *(a1 + 192);
    if (i >= *(v4 + 0x2000))
    {
      break;
    }

    v5 = *(v4 + 8176);
    v6 = dynaBufChar(*(v4 + 8144), i);
    dynaBufAddChar(v5, v6, 0);
  }

  result = 0;
  *(v4 + 8184) |= 7u;
  return result;
}

uint64_t vgenerate(uint64_t a1)
{
  v2 = 245;
  if (vprt_range(a1, a1 + 112, a1 + 144))
  {
    if (vgen(a1, a1 + 112, (a1 + 144), *(a1 + 192) + 8160, *(*(a1 + 192) + 0x2000)))
    {
      return 0;
    }

    else
    {
      return 245;
    }
  }

  return v2;
}

uint64_t ins_tokens(uint64_t *a1, uint64_t a2, _BYTE *a3, int a4)
{
  v29 = 0;
  v26 = 0;
  v27 = 0.0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (a4 == 1)
  {
    v6 = a1[14];
    v7 = a1[18];
    if (v7 != (*(v6 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) || v6 != (*(v7 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL))
    {
      vdel_2pt(a1, a2, v6, v7);
    }
  }

  else
  {
    LOWORD(v26) = STMTYP(a2);
    v11 = vstmtbl[12 * a2 + 1][32];
    BYTE2(v26) = v11;
    switch(STMTYP(a2))
    {
      case 0xFFFBu:
        v12 = &v27;
        goto LABEL_11;
      case 0xFFFCu:
      case 0xFFFEu:
        v12 = &v28;
        goto LABEL_11;
      case 0xFFFDu:
        v12 = &v29;
        goto LABEL_11;
      case 0xFFFFu:
        v12 = &v30;
LABEL_11:
        v25 = v12;
        v13 = a3 + 1;
        switch(*a3)
        {
          case 0xC7:
            LOWORD(v24) = -1;
            v14 = &v30;
            break;
          case 0xC8:
            v15 = -2;
            goto LABEL_17;
          case 0xC9:
            LOWORD(v24) = -3;
            v14 = &v29;
            break;
          case 0xCA:
            v15 = -4;
LABEL_17:
            LOWORD(v24) = v15;
            v14 = &v28;
            break;
          case 0xCB:
            LOWORD(v24) = -5;
            v14 = &v27;
            break;
          default:
            return 0;
        }

        v23 = v14;
        v30 = 0;
        v16 = &a3[a4];
        v28 = 0;
        BYTE2(v24) = v11;
        break;
      default:
        return 0;
    }

    while (v13 < v16)
    {
      v17 = v24;
      switch(v24)
      {
        case -5:
          v21 = *v13;
          v20 = v13 + 1;
          v30 = v21;
          v27 = atof(v20);
          v13 = &v20[v21];
          break;
        case -4:
        case -2:
          v18 = *(v13 + 1) | ((*v13 & 0x7F) << 8);
          v28 = v18;
          if (*v13 < 0)
          {
            v28 = -v18;
          }

          v13 += 2;
          break;
        case -3:
          v22 = (*(v13 + 1) << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v13 & 0x7F) << 24) | (*(v13 + 2) << 8) | *(v13 + 3);
          v29 = v22;
          if (*v13 < 0)
          {
            v29 = -v22;
          }

          v13 += 4;
          break;
        case -1:
          v19 = *v13++;
          v30 = v19;
          break;
        default:
          return 0;
      }

      if (v26 != v17)
      {
        vassign(a1, &v25, &v23);
      }

      result = vins_tok(a1, a2, a1[14], a1[18], &v25);
      if (result)
      {
        if (v13 >= v16)
        {
          continue;
        }

        result = vins_sync(a1, a2, (*(a1[18] + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL), a1[18]);
        a1[14] = result;
        if (result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t ins_rdtoks(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a1[25];
  v7 = *(v6 + 1720);
  if (*v7 != 5)
  {
    STMTYP(a2);
    for (i = 1; ; i = 0)
    {
      v14 = *v7;
      if (v14 == 5)
      {
        break;
      }

      if ((i & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_0_58();
        result = vins_sync(v15, v16, v17, v18);
        if (!result)
        {
          return result;
        }

        v4 = result;
        v14 = *v7;
      }

      if (v14 != 2)
      {
        return 0;
      }

      v19 = OUTLINED_FUNCTION_0_58();
      result = vins_tok(v19, v20, v21, v4, v22);
      if (!result)
      {
        return result;
      }

      popDeltaStackTop(a1);
      v7 = *(a1[25] + 1720);
    }

    v6 = a1[25];
    goto LABEL_15;
  }

  if ((*(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) == a4 && (*(a4 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL) == a3)
  {
LABEL_15:
    *(v6 + 1760) = *(v7 + 1);
    goto LABEL_16;
  }

  v8 = OUTLINED_FUNCTION_0_58();
  vdel_2pt(v8, v9, v10, v4);
  v11 = *v7;
  *(a1[25] + 1760) = *(v7 + 1);
  if (v11 != 5)
  {
    return 0;
  }

LABEL_16:
  popDeltaStackTop(a1);
  result = 1;
  *(a1[23] + 452) = 1;
  return result;
}

uint64_t timeDuration(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a4;
  v8 = 0;
  v9 = &vstmtbl[12 * a4];
  while (a2 != a3)
  {
    if (a2 == *(*(a1 + 200) + 8))
    {
      return 0;
    }

    if (a2 && (*a2 & 2) != 0)
    {
      v12 = &a2[8 * *(*(a1 + 192) + 9084) + 8 * v4];
    }

    else
    {
      v10 = STMTYP(v4);
      if (v10 == -3)
      {
        v11 = *(*v9[2])(a2 + 16);
      }

      else if (v10 == 65532)
      {
        LODWORD(v11) = *(*v9[2])(a2 + 16);
      }

      else
      {
        LODWORD(v11) = 0;
      }

      v8 += v11;
      v12 = a2 + 8;
    }

    a2 = (*v12 & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v8;
}

uint64_t synthesize(uint64_t a1, int a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, uint64_t a14, int a15, int a16, int a17, void *__s2)
{
  v27 = *(a1 + 208);
  v28 = *(v27 + 32);
  *(v28 + 110) = 1;
  if (*(v27 + 48))
  {
    v29 = 0;
    v30 = 0;
    v31 = *(v27 + 40);
    *v31 = a3;
    v32 = v31 + 4;
    while (v29 != 62)
    {
      v33 = arrayStreamFind(a1, (&parmNames)[v29]);
      *&v32[4 * v29] = v33;
      if (v33 != -1)
      {
        v30 = 1;
      }

      ++v29;
    }

    v27 = *(a1 + 208);
    if (!v30)
    {
      v37 = 0;
      v28 = *(v27 + 32);
      goto LABEL_67;
    }

    *(v27 + 48) = 0;
    v28 = *(v27 + 32);
  }

  v34 = *(v28 + 108);
  v35 = *(v28 + 108) == 0;
  *(v28 + 108) = 1;
  v36 = a7 - a6;
  if (a7 - a6 < 0 || a7 == a6 && !a8)
  {
    goto LABEL_12;
  }

  v61 = v35;
  v38 = a17;
  memcpy(__dst, &unk_287EDBE10, 0x58uLL);
  if (a15)
  {
    v39 = a15;
    *(__dst + 1) = a15;
    *(v27 + 148) = a15;
  }

  else
  {
    v39 = 0.0;
  }

  LODWORD(__dst[1]) = 16;
  if (a17)
  {
    HIDWORD(__dst[1]) = a17;
  }

  else
  {
    v38 = 5;
  }

  v40 = 0.0;
  v41 = 0.0;
  if (a9 != 0.0)
  {
    *(&__dst[5] + 1) = a9;
    v41 = a9;
  }

  if (a10 != 0.0)
  {
    *(&__dst[4] + 1) = a10;
    v40 = a10;
  }

  v42 = 0.0;
  v43 = 0.0;
  if (a11 != 0.0)
  {
    *&__dst[5] = a11;
    v43 = a11;
  }

  v44 = a16;
  if (a12 != 0.0)
  {
    *&__dst[4] = a12;
    v42 = a12;
  }

  __dst[8] = errorIgnore;
  LODWORD(__dst[9]) = 2;
  __dst[10] = ourKlattCallback;
  if (!a16)
  {
    v44 = 5;
  }

  v62 = v44;
  v45 = *(v27 + 56);
  if (v39 == *(v45 + 4) && v38 == *(v45 + 12) && v41 == *(v45 + 44) && v40 == *(v45 + 36) && v43 == *(v45 + 40) && v42 == *(v45 + 32))
  {
    v46 = 1;
  }

  else
  {
    memcpy(v45, __dst, 0x58uLL);
    v46 = 0;
    v27 = *(a1 + 208);
    v28 = *(v27 + 32);
  }

  if (*(v28 + 111))
  {
    if (v34)
    {
      if (!v46 || (v47 = *(v27 + 56), *(v47 + 88) != a13) || memcmp((v47 + 92), __s2, 0xF8uLL))
      {
        v48 = sendArrayParameters(a1, a6, a6, 1, 0, 1, 0, v62, *(v27 + 40), __s2);
        v27 = *(a1 + 208);
        if (!v48)
        {
          v37 = 0;
          v28 = *(v27 + 32);
          goto LABEL_13;
        }
      }
    }

    v49 = *(v27 + 56);
    *(v49 + 88) = a13;
    memcpy((v49 + 92), __s2, 0xF8uLL);
    v27 = *(a1 + 208);
  }

  v28 = *(v27 + 32);
  if (v46)
  {
    v50 = a15;
    if (*(v28 + 109))
    {
      goto LABEL_50;
    }
  }

  else
  {
    (*(v28 + 48))(__dst, *(v28 + 56));
    v51 = *(*(a1 + 208) + 64);
    memcpy(v63, __dst, sizeof(v63));
    KlattSetConstParms(v51, v63);
    v27 = *(a1 + 208);
    *(*(v27 + 32) + 109) = 0;
    v50 = a15;
  }

  v52 = KlattOpen(*(v27 + 64));
  v27 = *(a1 + 208);
  v28 = *(v27 + 32);
  if (!v52)
  {
LABEL_12:
    v37 = 0;
LABEL_13:
    *(v28 + 108) = 0;
    goto LABEL_67;
  }

LABEL_50:
  *(v28 + 109) = 1;
  if (a8)
  {
    if (v36 <= a8)
    {
      v53 = a8;
    }

    else
    {
      v53 = a7 - a6;
    }

    *(v28 + 112) = v53;
    if (*v28 && (v54 = *(v28 + 16)) != 0)
    {
      v54(v53 * v50 / 0x3E8uLL, v50 * a14 / 1000, *(v28 + 24));
      v55 = 0;
      v27 = *(a1 + 208);
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    *(v28 + 112) = 0;
    v55 = 1;
  }

  klattSetVolumeMultiplier(*(v27 + 64), a13);
  v37 = sendArrayParameters(a1, a6, a7, *(*(*(a1 + 208) + 32) + 111), v61, v55, 0, v62, *(*(a1 + 208) + 40), __s2);
  v56 = checkInterrupt(a1);
  v28 = *(*(a1 + 208) + 32);
  if (v56)
  {
    v57 = 0;
    *(v28 + 112) = 0;
  }

  else
  {
    v57 = *(v28 + 112);
  }

  v58 = v57 <= v36;
  v59 = v57 - v36;
  if (v58)
  {
    v59 = 0;
  }

  *(v28 + 112) = v59;
  if (!a8)
  {
    finishSynthesis(a1);
    v28 = *(*(a1 + 208) + 32);
  }

LABEL_67:
  *(v28 + 110) = 0;
  return v37;
}

uint64_t ourKlattCallback(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    OUTLINED_FUNCTION_0_59();
    if (!*(v4 + 128))
    {
      break;
    }

    if (checkInterrupt(a1))
    {
      return 0;
    }
  }

  for (i = 0; ; i += v7)
  {
    v7 = (*a2 - i);
    if (*a2 <= i)
    {
      break;
    }

    OUTLINED_FUNCTION_0_59();
    if (*(v8 + 80))
    {
      IndexQueue::reduceLeadTime((v8 + 72), v7);
      OUTLINED_FUNCTION_0_59();
      v7 = v9;
    }

    if (*v8)
    {
      (*v8)(v7, *(a2 + 8) + 8 * i, *(v8 + 8));
    }

    OUTLINED_FUNCTION_0_59();
    if (IndexQueue::indexDue((v10 + 72)))
    {
      OUTLINED_FUNCTION_0_59();
      IndexQueue::remove((v11 + 72));
    }
  }

  return 1;
}

void finishSynthesis(uint64_t a1)
{
  KlattClose(*(*(a1 + 208) + 64));
  OUTLINED_FUNCTION_1_56();
  *(v1 + 109) = 0;
  clock();
  OUTLINED_FUNCTION_1_56();
  *(v3 + 120) = v2;
  *(v3 + 108) = 0;
}

uint64_t callPlayFile(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 2) && *(a2 + 2) <= 999)
  {
    sprintf(v3, "delta%i.%s", *(a2 + 2), "au");
  }

  return 0;
}

uint64_t floatDur(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0.0;
  if ((*a2 & 0x80) == 0)
  {
    v8 = *a2;
    if (v8 < *(a1 + 288))
    {
      v9 = *(a3 + 8);
      v10 = *(*(a1 + 192) + 9084) + v8;
      if (*&v9[8 * v10])
      {
        v11 = *(a4 + 8);
        if (*&v11[8 * v10])
        {
          v6 = timeDuration(a1, v9, v11, v8);
        }
      }
    }
  }

  *(a5 + 8) = v6;
  return 0;
}

uint64_t stopSynthesizing(uint64_t a1)
{
  v1 = *(*(a1 + 208) + 32);
  if (*(v1 + 110))
  {
    v2 = 1;
    setInterrupt(a1, 1);
  }

  else if (*(v1 + 108))
  {
    *(v1 + 112) = 0;
    finishSynthesis(a1);
    return 1;
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t setSynthToNamedFile(uint64_t a1, char *__s1)
{
  v2 = *(*(a1 + 208) + 32);
  if (*(v2 + 108))
  {
    return 0;
  }

  if (*v2)
  {
    *v2 = 0;
  }

  if (!__s1 || !*__s1)
  {
    v4 = *(v2 + 64);
    if (v4)
    {
      free(v4);
      OUTLINED_FUNCTION_1_56();
      *(v5 + 64) = 0;
    }

    return 1;
  }

  result = strdup(__s1);
  *(v2 + 64) = result;
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t setSynthToCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 208) + 32);
  if (*(v3 + 108))
  {
    return 0;
  }

  if (*(v3 + 64))
  {
    setSynthToNamedFile(a1, 0);
    v3 = *(*(a1 + 208) + 32);
  }

  *v3 = a2;
  *(v3 + 8) = a3;
  return 1;
}

uint64_t setKlattDynamicHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 208) + 32);
  if (*(v3 + 108))
  {
    return 0;
  }

  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return 1;
}

uint64_t setKlattConstantHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 208) + 32);
  if (*(v3 + 108))
  {
    return 0;
  }

  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  return 1;
}

uint64_t setSynthDurationCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 208) + 32);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t registerSynthIndexCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 208) + 32);
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  return result;
}

uint64_t registerPhonemeCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 208) + 32);
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  return result;
}

uint64_t insertPhoneme(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 208) + 32);
  v5 = *(v4 + 152);
  if (v5)
  {
    v5(a2, a3, *(v4 + 160));
    return 1;
  }

  else
  {

    return insertDelayedSynthIndex(a1, a2);
  }
}

uint64_t insertDelayedSynthIndex(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 208);
  v5 = *(v3 + 136);
  v4 = *(v3 + 140);
  if (v4 <= v5)
  {
    v6 = *(v3 + 136);
  }

  else
  {
    v6 = *(v3 + 140);
  }

  v7 = *(v3 + 144);
  if (v6 <= v7)
  {
    v8 = *(v3 + 144);
  }

  else
  {
    v8 = v6;
  }

  *(v3 + 140) = v6;
  *(v3 + 144) = v8;
  if (v5 < v4 || v6 < v7)
  {
    result = IndexQueue::addOffsetFromLast((*(v3 + 32) + 72), a2, *(v3 + 148) * (v8 - v6) / 1000);
    *(*(a1 + 208) + 140) = *(*(a1 + 208) + 144);
  }

  else
  {

    return insertSynthIndex(a1, a2);
  }

  return result;
}

uint64_t insertSynthIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 208) + 32);
  if (!*v2)
  {
    return 0;
  }

  v3 = v2[17];
  if (v3)
  {
    v3(a2, v2[18]);
  }

  return 1;
}

uint64_t flushDelayedSynthQueue(uint64_t a1)
{
  OUTLINED_FUNCTION_1_56();
  if (*(v1 + 80))
  {
    IndexQueue::remove((v1 + 72));
  }

  return 1;
}

void deltaCleanup(uint64_t a1)
{
  deltaHeapCleanup();
  dlangCleanup(a1);
  vnstackCleanup(a1);
  vdelCleanup(a1);

  logicalIOCleanup(a1);
}

void dlang_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x98uLL, 0x1090040BA41C4AEuLL);
  *(a1 + 208) = v2;
  bzero(v2, 0x98uLL);
  v3 = malloc_type_malloc(0x100uLL, 0x10000400763368AuLL);
  *(*(a1 + 208) + 40) = v3;
  bzero(v3, 0x100uLL);
  operator new();
}

void dlang_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 208);
    if (v2)
    {
      klatt_delete(*(v2 + 64));
      stmarray_delete(a1);
      v3 = *(a1 + 208);
      if (*(v3 + 32))
      {
        MEMORY[0x274379FF0](*(v3 + 32), 0);
        v3 = *(a1 + 208);
        *(v3 + 32) = 0;
      }

      if (*(v3 + 56))
      {
        bzero(*(v3 + 56), 0x158uLL);
        free(*(*(a1 + 208) + 56));
        v3 = *(a1 + 208);
        *(v3 + 56) = 0;
      }

      if (*(v3 + 40))
      {
        bzero(*(v3 + 40), 0x100uLL);
        free(*(*(a1 + 208) + 40));
        v3 = *(a1 + 208);
        *(v3 + 40) = 0;
      }

      v4 = *(v3 + 96);
      if (v4)
      {
        *v4 = 0;
        free(*(*(a1 + 208) + 96));
        v3 = *(a1 + 208);
        *(v3 + 96) = 0;
      }

      bzero(v3, 0x98uLL);
      free(*(a1 + 208));
      *(a1 + 208) = 0;
    }
  }
}

void SoundDeviceInfo::SoundDeviceInfo(SoundDeviceInfo *this)
{
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 9) = &unk_287EDBFD0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
}

void IndexQueue::~IndexQueue(IndexQueue *this)
{
  EListQueue::~EListQueue(this);

  JUMPOUT(0x274379FF0);
}

void EListQueue::~EListQueue(EListQueue *this)
{
  EListQueue::~EListQueue(this);

  JUMPOUT(0x274379FF0);
}

{
  *this = &unk_287EDC090;
  EList::reset(this);

  ESList::~ESList(this);
}

void ESList::~ESList(ESList *this)
{
  *this = &unk_287EDC100;
  EList::reset(this);
}

{
  ESList::~ESList(this);

  JUMPOUT(0x274379FF0);
}

uint64_t createStreamArrays(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v4 = *(*(a1 + 208) + 72);
    if (!*v4)
    {
      StreamArrayList::build(v4, a1, a2);
    }
  }

  return 0;
}

void sub_26DD07D18(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = (v4 - 16);
    v7 = -v3;
    do
    {
      StreamArray::~StreamArray(v6);
      v6 = (v8 - 32);
      v7 += 32;
    }

    while (v7);
  }

  MEMORY[0x274379FE0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t StreamArrayList::addName(StreamArrayList *this, const char *a2)
{
  v2 = *(this + 5);
  if (v2 < *(this + 4))
  {
    v3 = *this;
    *(this + 5) = v2 + 1;
    StreamArray::setName((v3 + 32 * v2), a2);
  }

  return 0xFFFFFFFFLL;
}

BOOL addStreamArraySsValC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  v7 = *(a2 + 2);
  v8 = *(a3 + 2);
  return !StreamArrayList::appendValueToStream(*(*(a1 + 208) + 72), v7, *(a4 + 8), v8) || StreamArrayList::appendValueToStream(*(*(a1 + 208) + 72), v7, v6, v8) == 0;
}

uint64_t StreamArrayList::clearAll(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  for (i = 0; i < *(v3 + 8); ++i)
  {
    result = StreamArray::clear((*v3 + v4), a2);
    v4 += 32;
  }

  return result;
}

uint64_t StreamArrayList::findStream(StreamArrayList *this, const char *a2)
{
  v4 = 0;
  for (i = 0; i < *(this + 4); ++i)
  {
    if (!StreamArray::nameMatch((*this + v4), a2))
    {
      return i;
    }

    v4 += 32;
  }

  LOWORD(i) = -1;
  return i;
}

uint64_t stmarray_new(uint64_t result)
{
  if (result)
  {
    if (*(result + 208))
    {
      operator new();
    }
  }

  return result;
}

uint64_t stmarray_delete(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 208);
    if (v2)
    {
      v3 = *(v2 + 72);
      if (v3)
      {
        StreamArrayList::~StreamArrayList(*(v2 + 72));
      }

      result = MEMORY[0x274379FF0](v3, 0x1020C4034E03FFCLL);
      *(*(v1 + 208) + 72) = 0;
    }
  }

  return result;
}

void StreamArray::setName(StreamArray *this, const char *__s)
{
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x274379FE0](v3, 0x1000C8077774924);
  }

  strlen(__s);
  operator new[]();
}

uint64_t StreamArray::clear(TimeValueQueue *a1, uint64_t a2)
{
  result = TimeValueQueue::reset(a1);
  *(a1 + 3) = *(*(a2 + 208) + 80);
  return result;
}

void StreamArray::StreamArray(StreamArray *this)
{
  TimeValueQueue::TimeValueQueue(this, 0x12Cu);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
}

void StreamArray::~StreamArray(StreamArray *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x274379FE0](v2, 0x1000C8077774924);
    *(this + 2) = 0;
  }

  TimeValueQueue::~TimeValueQueue(this);
}

uint64_t StreamArray::appendValue(StreamArray *this, unsigned int a2, int a3)
{
  v3 = *(this + 6);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (!v4)
  {
    return 0;
  }

  if (v5 <= 0xFFFE)
  {
    v9 = v5 | (a3 << 16);
LABEL_7:
    result = TimeValueQueue::push(this, v9);
    goto LABEL_8;
  }

  result = TimeValueQueue::push(this, (a3 << 16) | 0xFFFFu);
  if (result)
  {
    HIDWORD(v10) = a2;
    LODWORD(v10) = a2;
    v9 = v10 >> 16;
    goto LABEL_7;
  }

LABEL_8:
  *(this + 6) = a2;
  return result;
}

uint64_t StreamArray::fetchNext(StreamArray *this, unsigned int *a2, int *a3)
{
  if (TimeValueQueue::isEmpty(this))
  {
    return 0;
  }

  TimeValueQueue::pop(this, &v8);
  *a3 = SHIWORD(v8);
  if (v8 == 0xFFFF)
  {
    if (TimeValueQueue::isEmpty(this))
    {
      return 0;
    }

    TimeValueQueue::pop(this, &v8);
    v7 = HIWORD(v8) | (v8 << 16);
  }

  else
  {
    v7 = *(this + 7) + v8;
  }

  *a2 = v7;
  *(this + 7) = v7;
  return 1;
}

void StreamArrayList::~StreamArrayList(StreamArrayList *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 0;
      v6 = v2 + 32 * v4;
      do
      {
        StreamArray::~StreamArray((v6 + v5 - 32));
        v5 -= 32;
      }

      while (-32 * v4 != v5);
    }

    MEMORY[0x274379FE0](v3, 0x1030C803AA113E6);
    *this = 0;
  }
}

void sub_26DD08470(_Unwind_Exception *a1)
{
  if (32 - 32 * v2 != v3)
  {
    v6 = 32 - (v3 + 32 * v2);
    v7 = (v4 - 64);
    do
    {
      StreamArray::~StreamArray(v7);
      v7 = (v8 - 32);
      v6 += 32;
    }

    while (v6);
  }

  MEMORY[0x274379FE0](v1, 0x1030C803AA113E6);
  _Unwind_Resume(a1);
}

void TimeValueQueue::TimeValueQueue(TimeValueQueue *this, unsigned int a2)
{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 7) = a2;
  v3 = OUTLINED_FUNCTION_0_60(4 * a2);
  *this = v3;
  if (!v3)
  {
    *(this + 4) = 0;
  }
}

uint64_t TimeValueQueue::size(TimeValueQueue *this)
{
  v1 = *(this + 5);
  v2 = *(this + 6);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 += *(this + 4);
  }

  return v4;
}

void TimeValueQueue::~TimeValueQueue(TimeValueQueue *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *(this + 6) = 0;
    *this = 0;
  }
}

uint64_t TimeValueQueue::reset(TimeValueQueue *this)
{
  free(*this);
  result = OUTLINED_FUNCTION_0_60(4 * *(this + 7));
  *this = result;
  if (result)
  {
    *(this + 4) = *(this + 7);
    *(this + 10) = 0;
    return 1;
  }

  return result;
}

uint64_t TimeValueQueue::push(TimeValueQueue *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = *(this + 6);
  *(this + 6) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  v5 = *(this + 6);
  if (v5 == *(this + 4))
  {
    v5 = 0;
    *(this + 6) = 0;
  }

  if (v5 != *(this + 5) || TimeValueQueue::expand(this))
  {
    return 1;
  }

  v7 = *(this + 6);
  if (!v7)
  {
    v7 = *(this + 4);
  }

  result = 0;
  *(this + 6) = v7 - 1;
  return result;
}

uint64_t TimeValueQueue::expand(TimeValueQueue *this)
{
  result = *this;
  if (result)
  {
    v3 = *(this + 4);
    OUTLINED_FUNCTION_1_57();
    v7 = malloc_type_realloc(v4, v5, v6);
    memmove(&v7[4 * *(this + 4)], v7, 4 * *(this + 6));
    memmove(v7, &v7[4 * *(this + 5)], 4 * *(this + 4));
    if (v7)
    {
      *this = v7;
      *(this + 5) = 0;
      *(this + 6) = *(this + 4);
      *(this + 4) = 2 * v3;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TimeValueQueue::pop(const void **a1, _DWORD *a2)
{
  result = TimeValueQueue::peekHead(a1, a2);
  if (result)
  {
    v4 = *(a1 + 5);
    if (*(a1 + 4) == (v4 + 1))
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 + 1;
    }

    *(a1 + 5) = v5;

    return TimeValueQueue::shrinkIfNeeded(a1);
  }

  return result;
}

uint64_t TimeValueQueue::peekHead(uint64_t a1, _DWORD *a2)
{
  if (!*a1 || *(a1 + 10) == *(a1 + 12))
  {
    return 0;
  }

  *a2 = *(*a1 + 4 * *(a1 + 10));
  return 1;
}

uint64_t TimeValueQueue::shrinkIfNeeded(const void **this)
{
  v2 = *(this + 6);
  v3 = *(this + 5);
  v4 = v2 - v3;
  if (v2 <= v3)
  {
    v9 = *(this + 4);
    v4 = v9 - v3 + v2;
    if (v9 <= *(this + 7) || v4 >= (v9 >> 1))
    {
      return 1;
    }

    memmove(*this + 4 * v9 + -4 * v3, *this, 4 * *(this + 6));
    v6 = *this;
    v11 = *(this + 5);
    v7 = *this + 4 * v11;
    v8 = 4 * (*(this + 4) - v11);
  }

  else
  {
    v5 = *(this + 4);
    if (v5 <= *(this + 7) || v4 >= (v5 >> 1))
    {
      return 1;
    }

    v6 = *this;
    v7 = *this + 4 * v3;
    v8 = 4 * v4;
  }

  memmove(v6, v7, v8);
  v12 = *(this + 4);
  OUTLINED_FUNCTION_1_57();
  result = malloc_type_realloc(v14, *&v13 & 0x1FFFCLL, v15);
  if (!result)
  {
    return result;
  }

  *this = result;
  *(this + 5) = 0;
  *(this + 6) = v4;
  *(this + 4) = v12 >> 1;
  return 1;
}

_DWORD *TimeValueQueue::getElements(TimeValueQueue *this, unsigned int *a2)
{
  v4 = TimeValueQueue::size(this);
  result = OUTLINED_FUNCTION_0_60(4 * v4);
  if (result)
  {
    for (i = 0; v4 != i; ++i)
    {
      result[i] = *(*this + 4 * ((i + *(this + 5)) % *(this + 4)));
    }

    *a2 = v4;
  }

  return result;
}

void *OUTLINED_FUNCTION_0_60(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004052888210uLL);
}

uint64_t setUserDictInputStream(uint64_t a1, const char *a2)
{
  if (!a2 || !*a2)
  {
    return 3;
  }

  for (i = 0; i < num_streams(a1); ++i)
  {
    v5 = stream_name(i);
    if (!strcmp(v5, a2))
    {
      break;
    }
  }

  v6 = 3;
  if (num_streams(a1) != i)
  {
    *(*(a1 + 208) + 120) = i;
    if (single_letter_stream(i))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return v6;
}

uint64_t UserDict::buildHashTable(UserDict *this, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 256;
  }

  v4 = 1;
  v5 = hashNew(v3, 1, 1);
  *(this + 513) = v5;
  if (!v5)
  {
    return 0;
  }

  *(this + 1028) = 1;
  return v4;
}

uint64_t UserDict::UserDict(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_55(a1);
  UserDict::loadDictionary(v2, v3, v4, v5, v6, v7, v8, v9);
  return a1;
}

uint64_t UserDict::loadDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_4_49();
  v20 = *MEMORY[0x277D85DE8];
  DictFile = UserDict::findDictFile(v11, v8, v19, v12, v13, v14, v15, v16);
  if (DictFile == -1)
  {
    return 1;
  }

  if (!DictFile)
  {
    return 0;
  }

  if (*(v9 + 513) || UserDict::buildHashTable(v9, (DictFile / 15)))
  {
    UserDict::loadHashTable(v9, v10, v19);
    strcpy(v9, v8);
    return 0;
  }

  return 2;
}

off_t UserDict::findDictFile(UserDict *this, const char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (fileFindInPath(a2, a3, a3, a4, a5, a6, a7, a8) && !stat(a3, &v10))
  {
    return v10.st_size;
  }

  else
  {
    return -1;
  }
}

uint64_t UserDict::loadHashTable(UserDict *a1, uint64_t a2, uint64_t a3)
{
  v10[72] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v10);
  Line = std::ifstream::open();
  while (UserDict::readNextLine(Line, v10, v9))
  {
    Line = UserDict::parseNextLine(a1, a2, v9, __s, v7);
    if (Line)
    {
      Line = UserDict::addOneEntry(a1, __s, v7);
    }
  }

  std::ifstream::close(v10);
  std::ifstream::~ifstream(v10);
  return 1;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 24;
  *a1 = MEMORY[0x277D82858] + 24;
  v3 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  std::istream::basic_istream[abi:ne200100](a1, (MEMORY[0x277D82808] + 8), a1 + 2);
  *a1 = v2;
  a1[53] = v3;
  MEMORY[0x274379ED0](a1 + 2);
  return a1;
}

void sub_26DD08E74(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x274379FC0](v1);
  _Unwind_Resume(a1);
}

BOOL UserDict::readNextLine(uint64_t a1, void *a2, _BYTE *a3)
{
  if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
  {
    return 0;
  }

  std::istream::getline[abi:ne200100](a2, a3, 704);
  return *a3 != 0;
}

uint64_t UserDict::parseNextLine(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4, uint64_t a5)
{
  while (1)
  {
    result = *a3;
    if (!*a3)
    {
      break;
    }

    if (!isspace(result))
    {
      v11 = *a3;
      if (!*a3)
      {
        return 0;
      }

      v12 = 0;
      do
      {
        if (v11 == 9 || v12 == 704)
        {
          break;
        }

        result = UserDict::proofCharacter(a1, a2, v11);
        if (!result)
        {
          return result;
        }

        *(a4 + v12) = a3[v12];
        v11 = a3[++v12];
      }

      while (v11);
      v13 = a4 + v12;
      *(a4 + v12) = 0;
      v14 = &a3[v12];
      do
      {
        v15 = v13;
        if (v13 <= a4)
        {
          break;
        }

        --v13;
      }

      while (isspace(*(v15 - 1)));
      *v15 = 0;
      while (1)
      {
        result = *v14;
        if (result != 9 && result != 32)
        {
          break;
        }

        ++v14;
      }

      if (*v14)
      {
        v16 = 0;
        do
        {
          if (v16 == 704)
          {
            break;
          }

          if (isspace(result))
          {
            v17 = 32;
          }

          else
          {
            result = UserDict::proofCharacter(a1, a2, v14[v16]);
            if (!result)
            {
              return result;
            }

            v17 = v14[v16];
          }

          *(a5 + v16) = v17;
          LODWORD(result) = v14[++v16];
        }

        while (result);
        v18 = 1 - v16;
        v19 = (a5 + v16 + 1);
        do
        {
          v20 = *(v19 - 2);
          --v19;
        }

        while (v20 == 32 && v18++ != 0);
        *v19 = 0;
        return 1;
      }

      return result;
    }

    ++a3;
  }

  return result;
}

uint64_t UserDict::addOneEntry(UserDict *this, const char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 < 0x81)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 129;
  }

  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (!v8)
  {
    return 2;
  }

  if (strlen(__s) < 0x81)
  {
    strcpy(v8, __s);
  }

  else
  {
    strncpy(v8, __s, 0x80uLL);
    if (strlen(__s) >= 0x80)
    {
      v8[128] = 0;
    }
  }

  v9 = strlen(a3);
  v10 = v9 < 0x201 ? v9 + 1 : 513;
  v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
  if (!v11)
  {
    return 2;
  }

  if (strlen(a3) < 0x201)
  {
    strcpy(v11, a3);
  }

  else
  {
    strncpy(v11, a3, 0x200uLL);
    if (strlen(a3) >= 0x200)
    {
      v11[512] = 0;
    }
  }

  inserted = hashInsertString(*(this + 513), v8, v11);
  result = 2;
  if (inserted)
  {
    *(this + 1028) = 2;
    return 0;
  }

  return result;
}

void std::ifstream::close(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));

    std::ios_base::setstate[abi:ne200100](v2, 4);
  }
}

uint64_t *std::ifstream::~ifstream(uint64_t *a1)
{
  std::ifstream::~ifstream(a1, MEMORY[0x277D82808]);
  MEMORY[0x274379FC0](a1 + 53);
  return a1;
}

uint64_t std::istream::getline[abi:ne200100](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::ios::widen[abi:ne200100]((a1 + *(*a1 - 24)), 10);

  return MEMORY[0x2821F7808](a1, a2, a3, v6);
}

int isspace(int _c)
{
  return __istype(_c, 0x4000uLL);
}

{
  return MEMORY[0x282202938](*&_c);
}

uint64_t UserDict::proofCharacter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v13[1] = 0;
  v11 = &v12;
  v10 = 0;
  v9 = &v10;
  v13[0] = a3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  return non_unique_value(a2, *(*(a2 + 208) + 120), 0, v13, &v11, &v9, &v8, &v7, &v6, &v5, &v4);
}

uint64_t UserDict::saveDictionary(UserDict *this, const char *a2)
{
  v13[71] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(v13);
  std::ofstream::open();
  if (*(&v13[4] + *(v13[0] - 24)))
  {
    v10 = 1;
  }

  else
  {
    v4 = *(this + 513);
    if (v4)
    {
      if (hashIterConstruct(v12, v4))
      {
        do
        {
          v5 = hashIterString(v12);
          v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, v5);
          v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "\t");
          v8 = hashIterRef(v12);
          v9 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, v8);
          std::endl[abi:ne200100]<char,std::char_traits<char>>(v9);
        }

        while (hashIterNext(v12));
      }

      std::ofstream::close(v13);
      chmod(a2, 0x180u);
    }

    else
    {
      std::ofstream::close(v13);
      chmod(a2, 0x180u);
    }

    v10 = 0;
  }

  std::ofstream::~ofstream(v13);
  return v10;
}

void sub_26DD094CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ofstream::~ofstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 24;
  *a1 = MEMORY[0x277D82860] + 24;
  v3 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  std::ostream::basic_ostream[abi:ne200100](a1, (MEMORY[0x277D82810] + 8), a1 + 1);
  *a1 = v2;
  a1[52] = v3;
  MEMORY[0x274379ED0](a1 + 1);
  return a1;
}

void sub_26DD095A4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x274379FC0](v1);
  _Unwind_Resume(a1);
}

void std::ofstream::close(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));

    std::ios_base::setstate[abi:ne200100](v2, 4);
  }
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios::widen[abi:ne200100]((a1 + *(*a1 - 24)), 10);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t *std::ofstream::~ofstream(uint64_t *a1)
{
  std::ofstream::~ofstream(a1, MEMORY[0x277D82810]);
  MEMORY[0x274379FC0](a1 + 52);
  return a1;
}

uint64_t UserDict::update(UserDict *this, const char *a2, const char *a3)
{
  OUTLINED_FUNCTION_4_49();
  v7 = *(v6 + 4104);
  if (!v7)
  {
    if (!UserDict::buildHashTable(v4, 256))
    {
      return 2;
    }

    v7 = *(v4 + 4104);
  }

  if (hashLookupString(v7, v5))
  {
    hashDeleteString(*(v4 + 4104), v5, 1, 1);
    if (!v3)
    {
      result = 0;
      *(v4 + 4112) = 2;
      return result;
    }
  }

  else if (!v3)
  {
    return 0;
  }

  return UserDict::addOneEntry(v4, v5, v3);
}

uint64_t UserDict::findFirst(UserDict *this, const char **a2, const char **a3)
{
  v4 = *(this + 513);
  if (!v4 || !hashIterConstruct(this + 4120, v4))
  {
    return 4;
  }

  *a2 = hashIterString(this + 4120);
  v7 = hashIterRef(this + 4120);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t UserDict::findNext(UserDict *this, const char **a2, const char **a3)
{
  OUTLINED_FUNCTION_4_49();
  if (!hashIterNext(v6 + 4120))
  {
    return 4;
  }

  *v5 = hashIterString(v4 + 4120);
  v7 = hashIterRef(v4 + 4120);
  result = 0;
  *v3 = v7;
  return result;
}

uint64_t UserDict::lookup(UserDict *this, char *a2)
{
  if (a2 && *a2 && (v2 = *(this + 513)) != 0)
  {
    return hashLookupString(v2, a2);
  }

  else
  {
    return 0;
  }
}

void DictionarySet::DictionarySet()
{
  OUTLINED_FUNCTION_0_61();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_5_49();
}

{
  OUTLINED_FUNCTION_0_61();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_5_49();
}

void DictionarySet::~DictionarySet(DictionarySet *this)
{
  OUTLINED_FUNCTION_0_61();
  if (*v2)
  {
    UserDict::~UserDict(*v2);
  }

  OUTLINED_FUNCTION_6_48();
  if (*(v1 + 8))
  {
    UserDict::~UserDict(*(v1 + 8));
  }

  OUTLINED_FUNCTION_6_48();
  if (*(v1 + 16))
  {
    UserDict::~UserDict(*(v1 + 16));
  }

  OUTLINED_FUNCTION_6_48();
  v3 = *(*(v1 + 32) + 208);
  if (**(v1 + 24) == *(v3 + 112))
  {
    *(v3 + 112) = 0;
  }
}

uint64_t UserDict::lookupAndTranslate(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (!*(a1 + 4104))
  {
    return 2;
  }

  if (!sync_in_stm(a2, *(a2[26] + 120), a3) || !sync_in_stm(a2, *(a2[26] + 120), a4) || !extract_string(a2, *(a2[26] + 120), a3, a4, (a1 + 4144), 80))
  {
    return 3;
  }

  v8 = hashLookupString(*(a1 + 4104), (a1 + 4144));
  if (!v8)
  {
    return 5;
  }

  v9 = v8;
  del_two_point(a2, *(a2[26] + 120), a3, a4);
  *(a2[23] + 452) = 1;
  if (insert_string(a2, *(a2[26] + 120), a4, v9))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t UserDict::lookupUndo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (!*(a1 + 4144))
  {
    return 5;
  }

  del_two_point(a2, *(a2[26] + 120), a3, a4);
  *(a2[23] + 452) = 1;
  if (insert_string(a2, *(a2[26] + 120), a4, (a1 + 4144)))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x274379EE0](a1 + 2);

  return std::istream::~istream();
}

int __istype(__darwin_ct_rune_t _c, unint64_t _f)
{
  if (_c <= 0x7F)
  {
    return (*(MEMORY[0x277D85DE0] + 4 * _c + 60) & _f) != 0;
  }

  else
  {
    return __maskrune(_c, _f) != 0;
  }
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x274379EE0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t *std::istream::basic_istream[abi:ne200100](uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  a1[1] = 0;
  std::ios::init[abi:ne200100]((a1 + *(*a1 - 24)), a3);
  return a1;
}

void std::ios::init[abi:ne200100](std::ios_base *a1, void *a2)
{
  std::ios_base::init(a1, a2);
  a1[1].__vftable = 0;
  a1[1].__fmtflags_ = -1;
}