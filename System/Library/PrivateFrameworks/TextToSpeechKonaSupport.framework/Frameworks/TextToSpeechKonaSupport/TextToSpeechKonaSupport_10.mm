uint64_t disambiguate_acerca(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v109 = *MEMORY[0x277D85DE8];
  v105[0] = 0;
  v105[1] = 0;
  v104[0] = 0;
  v104[1] = 0;
  v103 = 65532;
  v102[25] = 0;
  v102[26] = 0;
  OUTLINED_FUNCTION_67_6(v3, v4, v5, v6, v7, v8, v9, v10, v101, v102[0], v102[1], v102[2], v102[3], v102[4], v102[5], v102[6], v102[7], v102[8], v102[9], v102[10], v102[11], v102[12], v102[13], v102[14], v102[15], v102[16], v102[17], v102[18], v102[19], v102[20], v102[21], v102[22], v102[23], v102[24]);
  OUTLINED_FUNCTION_56_7();
  v11 = setjmp(v2);
  if (v11 || (v12 = OUTLINED_FUNCTION_116_1(v11, v102, v108, v107, v106), v12))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  OUTLINED_FUNCTION_94_3(v12, v105);
  v14 = v104;
  OUTLINED_FUNCTION_53_7();
  v15 = OUTLINED_FUNCTION_107_1();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_96_3();
  v19 = push_ptr_init(v17, v18);
  OUTLINED_FUNCTION_115_1(v19, v20, &null_str_8);
  v21 = OUTLINED_FUNCTION_57_7();
  fence_29(v21, v22, v23);
  OUTLINED_FUNCTION_125_0();
  v24 = OUTLINED_FUNCTION_66_6();
  if (lpta_loadp_setscan_r(v24, v25, v26))
  {
LABEL_9:
    v36 = OUTLINED_FUNCTION_38_11();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_100_1();
    if (!followed_by_hyphen(v38))
    {
      v39 = OUTLINED_FUNCTION_49_7();
      if (!lpta_loadp_setscan_r(v39, v40, v41))
      {
        v67 = OUTLINED_FUNCTION_32_15();
        bspush_ca_scan(v67, v68);
        v69 = OUTLINED_FUNCTION_9_29();
        testFldeq(v69, v70, v71, v72);
        OUTLINED_FUNCTION_143_0();
        if (!v76)
        {
          goto LABEL_25;
        }

        goto LABEL_31;
      }
    }

LABEL_11:
    v34 = *(v1 + 2058);
    v35 = *(v1 + 3070);
LABEL_12:
    HIWORD(v103) = v35;
    goto LABEL_13;
  }

  v27 = OUTLINED_FUNCTION_5_29();
  if (!testFldeq(v27, v28, v29, v30) && !advance_tok(v1, v31, v32, v33))
  {
    v34 = *(v1 + 2078);
    v35 = *(v1 + 3066);
    goto LABEL_12;
  }

  v14 = 0;
  while (1)
  {
    do
    {
LABEL_31:
      OUTLINED_FUNCTION_142_0();
      do
      {
        v88 = *(v1 + 104);
        if (v88)
        {
          v89 = OUTLINED_FUNCTION_87_4(v88);
        }

        else
        {
          v90 = OUTLINED_FUNCTION_90_4();
          v89 = vback(v90, v91);
        }

        v73 = v14;
        switch(v89)
        {
          case 1:
            goto LABEL_9;
          case 2:
            v34 = v14;
            goto LABEL_13;
          case 3:
            goto LABEL_11;
          case 4:
            v92 = OUTLINED_FUNCTION_101_1();
            bspush_ca_scan(v92, v93);
            v94 = OUTLINED_FUNCTION_15_26();
            v97 = 4;
            break;
          case 5:
            goto LABEL_25;
          case 6:
            v94 = OUTLINED_FUNCTION_14_26();
            v97 = 29;
            break;
          case 7:
            LODWORD(v34) = v14;
            goto LABEL_41;
          case 8:
            v34 = v14;
            goto LABEL_30;
          case 9:
            goto LABEL_22;
          case 10:
            v66 = v14;
            goto LABEL_29;
          case 11:
            goto LABEL_43;
          case 12:
            goto LABEL_44;
          default:
            goto LABEL_3;
        }
      }

      while (testFldeq(v94, v95, v96, v97));
      v73 = v14;
LABEL_25:
      v14 = v73;
    }

    while (advance_tok(v1, v73, v74, v75));
    v34 = *(v1 + 2058);
LABEL_13:
    OUTLINED_FUNCTION_112_1();
    if (!v42)
    {
      break;
    }

    v43 = OUTLINED_FUNCTION_100_1();
    lpta_rpta_loadp(v43, v44, v45);
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

    v46 = OUTLINED_FUNCTION_34_14();
    starttest_l(v46, v47);
    v48 = OUTLINED_FUNCTION_86_4();
    if (lpta_loadp_setscan_l(v48, v49, 4))
    {
      goto LABEL_30;
    }

    if (advance_tok(v1, v50, v51, v52))
    {
      goto LABEL_30;
    }

    if (advance_tok(v1, v53, v54, v55))
    {
      goto LABEL_30;
    }

    v14 = v34;
    if (advance_tok(v1, v56, v57, v58))
    {
      goto LABEL_30;
    }

LABEL_22:
    v59 = OUTLINED_FUNCTION_106_1();
    savescptr(v59, v60, v61);
    v65 = advance_tok(v1, v62, v63, v64);
    v66 = v14;
    if (!v65)
    {
LABEL_29:
      v34 = v66;
      v77 = OUTLINED_FUNCTION_145_0();
      savescptr(v77, v78, v79);
LABEL_30:
      v80 = OUTLINED_FUNCTION_106_1();
      lpta_rpta_loadp(v80, v81, v82);
      v83 = OUTLINED_FUNCTION_44_8();
      v14 = v34;
      if (!insert_2pt_s(v83, v84, v85, v86, v87))
      {
        goto LABEL_43;
      }
    }
  }

LABEL_41:
  if (*(v1 + 2078) == v34)
  {
    v98 = OUTLINED_FUNCTION_100_1();
    lpta_rpta_loadp(v98, v99, v100);
    OUTLINED_FUNCTION_0_33();
    mark_s();
  }

LABEL_43:
  mark_word_stress(v1);
LABEL_44:
  vretproc(v1);
  return 0;
}

uint64_t mark_por_content_word(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v146, v148, v150, v152);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v147, SHIDWORD(v147), v149, SWORD2(v149), SHIWORD(v149), v151, SWORD2(v151), SBYTE6(v151), SHIBYTE(v151), v153, v154))
  {
    v28 = OUTLINED_FUNCTION_26_20();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_53_7();
    fence_29(v1, 0, &null_str_8);
    v31 = OUTLINED_FUNCTION_73_6();
    fence_29(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_26_20();
    lpta_rpta_loadp(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_73_6();
    if (setd_lookup(v37, v38, 17))
    {
      v39 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_73_6();
      if (setd_lookup(v42, v43, 18) || (v44 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v44, v45, v46), OUTLINED_FUNCTION_0_33(), mark_s()) || (v47 = OUTLINED_FUNCTION_40_9(), mark_v(v47, v48, v49, v50, 0)))
      {
        v51 = OUTLINED_FUNCTION_16_25();
        if (mark_proper_name(v51))
        {
          v52 = OUTLINED_FUNCTION_16_25();
          if (mark_aux_verb(v52))
          {
            v53 = OUTLINED_FUNCTION_16_25();
            if (mark_numbers(v53))
            {
              v54 = OUTLINED_FUNCTION_16_25();
              if (mark_nounadj_from_sets(v54))
              {
                v55 = OUTLINED_FUNCTION_16_25();
                if (mark_verb_from_sets(v55))
                {
                  v56 = OUTLINED_FUNCTION_16_25();
                  if (mark_noun_verb_from_sets(v56))
                  {
                    v57 = OUTLINED_FUNCTION_16_25();
                    if (mark_prespart(v57))
                    {
                      v58 = OUTLINED_FUNCTION_16_25();
                      if (mark_inf(v58))
                      {
                        v59 = OUTLINED_FUNCTION_16_25();
                        if (mark_adverb(v59))
                        {
                          v60 = OUTLINED_FUNCTION_16_25();
                          if (mark_verb_by_rule(v60))
                          {
                            v61 = OUTLINED_FUNCTION_16_25();
                            if (mark_nounadj_by_rule(v61))
                            {
                              v62 = OUTLINED_FUNCTION_16_25();
                              mark_noun_verb(v62, v63, v64);
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
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t mark_proper_name(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v148, v149, v150);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v148, v149, v150, v151, v152, v153, v154);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v147, v148, v149, v150, v151, SHIDWORD(v151), v152, SWORD2(v152), SHIWORD(v152), v153, SWORD2(v153), SBYTE6(v153), SHIBYTE(v153), v154, v155))
  {
    v27 = OUTLINED_FUNCTION_26_20();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_70_6(v30, v31, v32, v33, v34, v35, v36, v37, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v147);
    fence_29(v1, 0, &null_str_8);
    v38 = OUTLINED_FUNCTION_72_6();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_77_6();
    if (!is_proper_name(v40, v41, v42, v43, v44, v45, v46, v47))
    {
      do
      {
        v48 = OUTLINED_FUNCTION_81_5();
        lpta_rpta_loadp(v48, v49, &v147);
        OUTLINED_FUNCTION_1_31();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_14_26();
          if (!mark_s())
          {
            break;
          }
        }

        v50 = *(v1 + 104);
        if (v50)
        {
          v51 = OUTLINED_FUNCTION_87_4(v50);
        }

        else
        {
          v52 = OUTLINED_FUNCTION_79_6();
          v51 = vback(v52, v53);
        }
      }

      while (v51 == 2);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t mark_aux_verb(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v138[33] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98_2();
  v138[0] = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(&v137, v3);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_16();
  if (OUTLINED_FUNCTION_116_1(v4, v5, v6, v7, v8))
  {
    goto LABEL_3;
  }

  v10 = OUTLINED_FUNCTION_26_20();
  get_parm(v10, v11, v12, -6);
  OUTLINED_FUNCTION_53_7();
  v138[0] = 0xFFFC0000FFFCLL;
  OUTLINED_FUNCTION_115_1(v13, v14, &null_str_8);
  HIWORD(v138[0]) = 0;
  WORD1(v138[0]) = *(v1 + 3066);
  v15 = OUTLINED_FUNCTION_97_3();
  starttest(v15, v16);
  v17 = OUTLINED_FUNCTION_26_20();
  lpta_rpta_loadp(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_79_6();
  if (!setd_lookup(v20, v21, 7))
  {
    goto LABEL_5;
  }

  while (2)
  {
    v35 = OUTLINED_FUNCTION_38_11();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_19_22();
    lpta_rpta_loadp(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_73_6();
    if (setd_lookup(v40, v41, 8))
    {
LABEL_14:
      v42 = OUTLINED_FUNCTION_32_15();
      starttest(v42, v43);
      v44 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v44, v45, v46);
      v47 = OUTLINED_FUNCTION_73_6();
      if (!setd_lookup(v47, v48, 9))
      {
LABEL_17:
        OUTLINED_FUNCTION_105_1();
        goto LABEL_19;
      }

LABEL_15:
      v49 = OUTLINED_FUNCTION_31_16();
      starttest(v49, v50);
      v51 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v51, v52, v53);
      v54 = OUTLINED_FUNCTION_73_6();
      if (setd_lookup(v54, v55, 10))
      {
LABEL_16:
        v56 = OUTLINED_FUNCTION_47_8();
        starttest(v56, v57);
        v58 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v58, v59, v60);
        v61 = OUTLINED_FUNCTION_73_6();
        if (!setd_lookup(v61, v62, 11))
        {
          goto LABEL_17;
        }

LABEL_24:
        v72 = OUTLINED_FUNCTION_46_8();
        starttest(v72, v73);
        v74 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v74, v75, v76);
        v77 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v77, v78, 12))
        {
LABEL_25:
          v79 = OUTLINED_FUNCTION_34_14();
          starttest(v79, v80);
          v81 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v81, v82, v83);
          v84 = OUTLINED_FUNCTION_73_6();
          if (setd_lookup(v84, v85, 13))
          {
LABEL_26:
            v86 = OUTLINED_FUNCTION_52_7();
            starttest(v86, v87);
            v88 = OUTLINED_FUNCTION_19_22();
            lpta_rpta_loadp(v88, v89, v90);
            v91 = OUTLINED_FUNCTION_73_6();
            if (!setd_lookup(v91, v92, 14))
            {
              goto LABEL_13;
            }

LABEL_27:
            v93 = OUTLINED_FUNCTION_68_6();
            starttest(v93, v94);
            v95 = OUTLINED_FUNCTION_19_22();
            lpta_rpta_loadp(v95, v96, v97);
            v98 = OUTLINED_FUNCTION_73_6();
            if (!setd_lookup(v98, v99, 15))
            {
              goto LABEL_17;
            }

LABEL_28:
            v100 = OUTLINED_FUNCTION_51_7();
            starttest(v100, v101);
            v102 = OUTLINED_FUNCTION_19_22();
            lpta_rpta_loadp(v102, v103, v104);
            v105 = OUTLINED_FUNCTION_73_6();
            if (!setd_lookup(v105, v106, 16))
            {
              goto LABEL_18;
            }

LABEL_29:
            v107 = OUTLINED_FUNCTION_60_7();
            starttest(v107, v108);
            v109 = OUTLINED_FUNCTION_19_22();
            lpta_rpta_loadp(v109, v110, v111);
            v112 = OUTLINED_FUNCTION_73_6();
            if (setd_lookup(v112, v113, 5))
            {
LABEL_30:
              v114 = OUTLINED_FUNCTION_64_6();
              starttest(v114, v115);
              v116 = OUTLINED_FUNCTION_19_22();
              lpta_rpta_loadp(v116, v117, v118);
              v119 = OUTLINED_FUNCTION_73_6();
              if (!setd_lookup(v119, v120, 6))
              {
                goto LABEL_13;
              }

LABEL_31:
              v121 = OUTLINED_FUNCTION_72_6();
              starttest(v121, v122);
              v123 = OUTLINED_FUNCTION_19_22();
              lpta_rpta_loadp(v123, v124, v125);
              v126 = OUTLINED_FUNCTION_42_8();
              if (!setd_lookup(v126, v127, v128))
              {
                goto LABEL_17;
              }

LABEL_32:
              v129 = OUTLINED_FUNCTION_69_6();
              starttest(v129, v130);
              v131 = OUTLINED_FUNCTION_19_22();
              lpta_rpta_loadp(v131, v132, v133);
              v134 = OUTLINED_FUNCTION_58_7();
              if (setd_lookup(v134, v135, v136))
              {
                break;
              }

              goto LABEL_18;
            }
          }

LABEL_5:
          OUTLINED_FUNCTION_105_1();
          goto LABEL_6;
        }
      }

LABEL_18:
      OUTLINED_FUNCTION_118_1();
LABEL_19:
      copyvar(v1, v63, v64);
      v65 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v65, v66, v67);
      OUTLINED_FUNCTION_2_31();
      if (!mark_s())
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_13:
    OUTLINED_FUNCTION_118_1();
LABEL_6:
    copyvar(v1, v22, v23);
    v24 = OUTLINED_FUNCTION_19_22();
    lpta_rpta_loadp(v24, v25, v26);
    OUTLINED_FUNCTION_2_31();
    if (!mark_s())
    {
      copyvar(v1, v138, (v1 + 3052));
LABEL_8:
      v27 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v27, v28, v29);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          v30 = OUTLINED_FUNCTION_40_9();
          if (!mark_v(v30, v31, v32, v33, v34))
          {
            OUTLINED_FUNCTION_83_4();
            OUTLINED_FUNCTION_130_0();
            mark_number();
            break;
          }
        }
      }
    }

LABEL_20:
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

    switch(v69)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_14;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_16;
      case 6:
        goto LABEL_24;
      case 7:
        goto LABEL_25;
      case 8:
        goto LABEL_26;
      case 9:
        goto LABEL_27;
      case 10:
        goto LABEL_28;
      case 11:
        goto LABEL_29;
      case 12:
        goto LABEL_30;
      case 13:
        goto LABEL_31;
      case 14:
        goto LABEL_32;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_numbers(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v89 = *MEMORY[0x277D85DE8];
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v80[25] = 0;
  v80[26] = 0;
  OUTLINED_FUNCTION_67_6(v3, v4, v5, v6, v7, v8, v9, v10, v79, v80[0], v80[1], v80[2], v80[3], v80[4], v80[5], v80[6], v80[7], v80[8], v80[9], v80[10], v80[11], v80[12], v80[13], v80[14], v80[15], v80[16], v80[17], v80[18], v80[19], v80[20], v80[21], v80[22], v80[23], v80[24]);
  OUTLINED_FUNCTION_56_7();
  v11 = setjmp(v2);
  if (v11 || OUTLINED_FUNCTION_116_1(v11, v80, v88, v87, v86))
  {
    goto LABEL_3;
  }

  v14 = OUTLINED_FUNCTION_26_20();
  get_parm(v14, v15, v16, -6);
  v17 = OUTLINED_FUNCTION_86_4();
  OUTLINED_FUNCTION_114_1(v17, v18);
  LOWORD(v81) = -4;
  v19 = OUTLINED_FUNCTION_107_1();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_96_3();
  v23 = push_ptr_init(v21, v22);
  OUTLINED_FUNCTION_115_1(v23, v24, &null_str_8);
  HIWORD(v81) = 0;
  v25 = OUTLINED_FUNCTION_97_3();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_77_6();
  if (!lpta_loadp_setscan_r(v27, v28, 1))
  {
    OUTLINED_FUNCTION_79_6();
    if (!test_string_s())
    {
      *(v1 + 136) = 1;
      v29 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v29, v30, v31))
      {
        goto LABEL_28;
      }
    }
  }

  while (2)
  {
    v32 = OUTLINED_FUNCTION_38_11();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_100_1();
    lpta_rpta_loadp(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_73_6();
    if (setd_lookup(v37, v38, 26))
    {
LABEL_14:
      v43 = OUTLINED_FUNCTION_32_15();
      starttest(v43, v44);
      v45 = OUTLINED_FUNCTION_48_8();
      if (lpta_loadp_setscan_l(v45, v46, v47))
      {
LABEL_3:
        v12 = 94;
        goto LABEL_4;
      }

      v48 = OUTLINED_FUNCTION_31_16();
      bspush_ca_scan(v48, v49);
      v50 = OUTLINED_FUNCTION_47_8();
      bspush_ca_scan(v50, v51);
LABEL_16:
      OUTLINED_FUNCTION_99_2();
      v52 = OUTLINED_FUNCTION_106_1();
      savescptr(v52, v53, v54);
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
LABEL_17:
        v55 = OUTLINED_FUNCTION_34_14();
        bspush_ca_scan(v55, v56);
LABEL_18:
        OUTLINED_FUNCTION_20_21();
        if (test_string_s())
        {
          goto LABEL_19;
        }

LABEL_23:
        v61 = OUTLINED_FUNCTION_95_3();
        savescptr(v61, v62, v63);
        v64 = OUTLINED_FUNCTION_95_3();
        lpta_rpta_loadp(v64, v65, v66);
        v67 = OUTLINED_FUNCTION_73_6();
        if (!setd_lookup(v67, v68, 27))
        {
          v69 = OUTLINED_FUNCTION_52_7();
          starttest(v69, v70);
          v71 = OUTLINED_FUNCTION_96_3();
          lpta_loadpn(v71, v72);
          rpta_loadpn(v1, v1 + 3344);
          if (!compare_ptas(v1) && !testneq(v1))
          {
            break;
          }

LABEL_26:
          v73 = OUTLINED_FUNCTION_51_7();
          starttest(v73, v74);
          v75 = OUTLINED_FUNCTION_107_1();
          lpta_loadpn(v75, v76);
          v77 = OUTLINED_FUNCTION_86_4();
          rpta_loadpn(v77, v78);
          if (!compare_ptas(v1) && !testeq(v1))
          {
            goto LABEL_11;
          }

LABEL_28:
          v39 = (v1 + 3020);
          goto LABEL_10;
        }
      }

LABEL_19:
      v57 = *(v1 + 104);
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_87_4(v57);
      }

      else
      {
        v59 = OUTLINED_FUNCTION_90_4();
        v58 = vback(v59, v60);
      }

      switch(v58)
      {
        case 1:
          continue;
        case 2:
        case 10:
          goto LABEL_11;
        case 3:
          goto LABEL_14;
        case 5:
          goto LABEL_23;
        case 6:
          goto LABEL_17;
        case 7:
          goto LABEL_16;
        case 8:
          goto LABEL_18;
        case 9:
          goto LABEL_26;
        case 11:
          goto LABEL_28;
        case 12:
          goto LABEL_29;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v39 = (v1 + 3024);
LABEL_10:
  copyvar(v1, &v81, v39);
LABEL_11:
  v40 = OUTLINED_FUNCTION_100_1();
  lpta_rpta_loadp(v40, v41, v42);
  OUTLINED_FUNCTION_0_33();
  if (mark_s())
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_2_31();
  if (mark_s())
  {
    goto LABEL_19;
  }

  mark_number();
LABEL_29:
  v12 = 0;
LABEL_4:
  vretproc(v1);
  return v12;
}

uint64_t mark_nounadj_from_sets(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v151 = *MEMORY[0x277D85DE8];
  v147[0] = 0;
  v147[1] = 0;
  v145 = 0;
  v146 = 0;
  HIDWORD(v144) = 0;
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  OUTLINED_FUNCTION_67_6(v3, v4, v5, v6, v7, v8, v9, v10, v113, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
  OUTLINED_FUNCTION_56_7();
  v11 = setjmp(v2);
  if (v11)
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_116_1(v11, &v115, v150, v149, v148);
  if (v12)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_94_3(v12, v147);
  OUTLINED_FUNCTION_53_7();
  WORD2(v144) = -4;
  push_ptr_init(v1, &v142);
  v15 = OUTLINED_FUNCTION_107_1();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_96_3();
  v19 = push_ptr_init(v17, v18);
  OUTLINED_FUNCTION_115_1(v19, v20, &null_str_8);
  v21 = OUTLINED_FUNCTION_73_6();
  fence_29(v21, v22, v23);
  HIWORD(v144) = 0;
  v24 = OUTLINED_FUNCTION_81_5();
  v26 = lpta_loadp_setscan_l(v24, v25, 1);
  if (!v26)
  {
    OUTLINED_FUNCTION_42_8();
    v26 = test_string_s();
    if (!v26)
    {
      v37 = 3022;
      goto LABEL_23;
    }
  }

  while (2)
  {
    OUTLINED_FUNCTION_138_0(v26, v27, v28, v29, v30, v31, v32, v33, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
    v34 = OUTLINED_FUNCTION_73_6();
    v36 = setd_lookup(v34, v35, 29);
    v37 = 3026;
    if (!v36)
    {
LABEL_23:
      HIWORD(v144) = *(v1 + v37);
      goto LABEL_24;
    }

LABEL_8:
    strip_plural(v1, &v142, &v140, &v145);
    if (v38)
    {
LABEL_9:
      v141 = v146;
      v39 = 3022;
    }

    else
    {
      v39 = 3026;
    }

    HIWORD(v144) = *(v1 + v39);
LABEL_12:
    v40 = OUTLINED_FUNCTION_145_0();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_73_6();
    if (!setd_lookup(v43, v44, 28))
    {
      goto LABEL_24;
    }

LABEL_13:
    v45 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v45, v46, v47))
    {
      OUTLINED_FUNCTION_73_6();
      if (!test_string_s())
      {
        goto LABEL_24;
      }
    }

LABEL_15:
    v48 = OUTLINED_FUNCTION_34_14();
    starttest(v48, v49);
    v50 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v50, v51, v52))
    {
      OUTLINED_FUNCTION_42_8();
      if (!test_string_s())
      {
LABEL_38:
        v88 = OUTLINED_FUNCTION_106_1();
        savescptr(v88, v89, v90);
        v91 = OUTLINED_FUNCTION_68_6();
        bspush_ca_scan(v91, v92);
        v93 = OUTLINED_FUNCTION_73_6();
        if (testFldeq(v93, v94, v95, 1))
        {
          goto LABEL_26;
        }

LABEL_39:
        if (!advance_tok(v1, v27, v28, v29))
        {
          v96 = OUTLINED_FUNCTION_106_1();
          lpta_rpta_loadp(v96, v97, v98);
          v99 = OUTLINED_FUNCTION_73_6();
          v101 = 30;
          goto LABEL_44;
        }

LABEL_26:
        v73 = *(v1 + 104);
        if (v73)
        {
          v26 = OUTLINED_FUNCTION_87_4(v73);
        }

        else
        {
          v74 = OUTLINED_FUNCTION_90_4();
          v26 = vback(v74, v75);
        }

        switch(v26)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_24;
          case 3:
            goto LABEL_8;
          case 4:
            goto LABEL_9;
          case 5:
            goto LABEL_12;
          case 6:
            goto LABEL_13;
          case 7:
            goto LABEL_15;
          case 8:
            goto LABEL_17;
          case 9:
            goto LABEL_38;
          case 10:
            v76 = OUTLINED_FUNCTION_101_1();
            bspush_ca_scan(v76, v77);
            v78 = OUTLINED_FUNCTION_73_6();
            v81 = 2;
            goto LABEL_32;
          case 11:
            goto LABEL_39;
          case 12:
            v78 = OUTLINED_FUNCTION_73_6();
            v81 = 3;
LABEL_32:
            if (!testFldeq(v78, v79, v80, v81))
            {
              goto LABEL_39;
            }

            goto LABEL_26;
          case 13:
            goto LABEL_19;
          case 14:
            goto LABEL_41;
          case 15:
            v82 = OUTLINED_FUNCTION_81_5();
            bspush_ca_scan(v82, v83);
            v84 = OUTLINED_FUNCTION_73_6();
            v87 = 2;
            goto LABEL_36;
          case 16:
            goto LABEL_42;
          case 17:
            v84 = OUTLINED_FUNCTION_73_6();
            v87 = 3;
LABEL_36:
            if (!testFldeq(v84, v85, v86, v87))
            {
              goto LABEL_42;
            }

            goto LABEL_26;
          case 19:
            goto LABEL_25;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_17:
  v53 = OUTLINED_FUNCTION_64_6();
  starttest(v53, v54);
  v55 = OUTLINED_FUNCTION_75_6();
  if (!lpta_loadp_setscan_l(v55, v56, v57))
  {
    OUTLINED_FUNCTION_36_12();
    if (!test_string_s())
    {
LABEL_41:
      v102 = OUTLINED_FUNCTION_106_1();
      savescptr(v102, v103, v104);
      v105 = OUTLINED_FUNCTION_69_6();
      bspush_ca_scan(v105, v106);
      v107 = OUTLINED_FUNCTION_73_6();
      if (testFldeq(v107, v108, v109, 1))
      {
        goto LABEL_26;
      }

LABEL_42:
      if (!advance_tok(v1, v27, v28, v29))
      {
        v110 = OUTLINED_FUNCTION_106_1();
        lpta_rpta_loadp(v110, v111, v112);
        v99 = OUTLINED_FUNCTION_73_6();
        v101 = 31;
LABEL_44:
        if (!setd_lookup(v99, v100, v101))
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      goto LABEL_26;
    }
  }

LABEL_19:
  v58 = OUTLINED_FUNCTION_145_0();
  lpta_rpta_loadp(v58, v59, v60);
  v61 = OUTLINED_FUNCTION_73_6();
  v63 = setd_lookup(v61, v62, 32);
  if (v63 || (OUTLINED_FUNCTION_138_0(v63, v64, v65, v66, v67, v68, v69, v70, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146), OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_3:
    v13 = 94;
    goto LABEL_4;
  }

LABEL_24:
  v71 = OUTLINED_FUNCTION_72_6();
  starttest(v71, v72);
  v26 = mark_number();
LABEL_25:
  OUTLINED_FUNCTION_138_0(v26, v27, v28, v29, v30, v31, v32, v33, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
  v13 = 0;
  OUTLINED_FUNCTION_1_31();
  if (mark_s())
  {
    goto LABEL_26;
  }

LABEL_4:
  vretproc(v1);
  return v13;
}

uint64_t mark_verb_from_sets(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_45_8(v3, v4, v5, v6, v7, v8, v9, v10, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, SHIDWORD(v70), v71, v72, v73, v74);
  OUTLINED_FUNCTION_56_7();
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_30_16();
    if (!OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15))
    {
      v17 = OUTLINED_FUNCTION_26_20();
      get_parm(v17, v18, v19, -6);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_115_1(v20, v21, &null_str_8);
      fence_29(v1, 1, &unk_2806BBF47);
      starttest(v1, 1);
      v22 = OUTLINED_FUNCTION_26_20();
      lpta_rpta_loadp(v22, v23, v24);
      if (setd_lookup(v1, 1u, 36))
      {
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_105_1();
      copyvar(v1, v25, v26);
LABEL_8:
      while (1)
      {
        v39 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v39, v40, v41);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_3_30();
          if (!mark_s())
          {
            break;
          }
        }

        while (1)
        {
          v42 = *(v1 + 104);
          if (v42)
          {
            v43 = OUTLINED_FUNCTION_87_4(v42);
          }

          else
          {
            v44 = OUTLINED_FUNCTION_90_4();
            v43 = vback(v44, v45);
          }

          if (v43 != 1)
          {
            break;
          }

LABEL_6:
          v27 = OUTLINED_FUNCTION_38_11();
          starttest(v27, v28);
          v29 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v29, v30, v31);
          v32 = OUTLINED_FUNCTION_73_6();
          if (setd_lookup(v32, v33, 42))
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_105_1();
          copyvar(v1, v34, v35);
          v36 = OUTLINED_FUNCTION_19_22();
          lpta_rpta_loadp(v36, v37, v38);
          OUTLINED_FUNCTION_2_31();
          if (!mark_s())
          {
            goto LABEL_8;
          }
        }

        if (v43 != 2)
        {
          goto LABEL_3;
        }
      }

      OUTLINED_FUNCTION_83_4();
      OUTLINED_FUNCTION_130_0();
      mark_number();
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_noun_verb_from_sets(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v62[32] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v3, v4, v5, v6, v7, v8, v9, v10, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, SHIDWORD(v61), v62[0], v62[1], v62[2], v62[3]);
  OUTLINED_FUNCTION_56_7();
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_30_16();
    if (!OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15))
    {
      v16 = OUTLINED_FUNCTION_26_20();
      get_parm(v16, v17, v18, -6);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_115_1(v19, v20, &null_str_8);
      v21 = OUTLINED_FUNCTION_97_3();
      starttest(v21, v22);
      v23 = OUTLINED_FUNCTION_26_20();
      lpta_rpta_loadp(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_79_6();
      if (!setd_lookup(v26, v27, 33))
      {
        OUTLINED_FUNCTION_105_1();
        copyvar(v1, v29, v30);
        while (1)
        {
          v31 = OUTLINED_FUNCTION_81_5();
          lpta_rpta_loadp(v31, v32, v62);
          OUTLINED_FUNCTION_13_28();
          if (!mark_s())
          {
            break;
          }

          v33 = *(v1 + 104);
          if (v33)
          {
            v34 = OUTLINED_FUNCTION_87_4(v33);
          }

          else
          {
            v35 = OUTLINED_FUNCTION_79_6();
            v34 = vback(v35, v36);
          }

          if (v34 != 2)
          {
            goto LABEL_4;
          }
        }

        OUTLINED_FUNCTION_83_4();
        OUTLINED_FUNCTION_130_0();
        mark_number();
      }
    }
  }

LABEL_4:
  vretproc(v1);
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_prespart(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v180, v182, v184, v186);
  v19 = setjmp(v2);
  if (v19)
  {
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v181, SHIDWORD(v181), v183, SWORD2(v183), SHIWORD(v183), v185, SWORD2(v185), SBYTE6(v185), SHIBYTE(v185), v187, v188))
  {
    goto LABEL_5;
  }

  v27 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_110_1(v27, v28);
  OUTLINED_FUNCTION_53_7();
  fence_29(v1, 0, &null_str_8);
  v29 = OUTLINED_FUNCTION_97_3();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_81_5();
  if (lpta_loadp_setscan_l(v31, v32, 1))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_42_8();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  v34 = OUTLINED_FUNCTION_63_6();
  bspush_ca_scan(v34, v35);
  while (2)
  {
    OUTLINED_FUNCTION_20_21();
    if (test_string_s())
    {
      goto LABEL_8;
    }

LABEL_13:
    v42 = OUTLINED_FUNCTION_16_25();
    lpta_rpta_loadp(v42, v43, v44);
    OUTLINED_FUNCTION_3_30();
    if (mark_s())
    {
LABEL_8:
      v36 = *(v1 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_87_4(v36);
      }

      else
      {
        v38 = OUTLINED_FUNCTION_90_4();
        v37 = vback(v38, v39);
      }

      switch(v37)
      {
        case 2:
          v40 = OUTLINED_FUNCTION_32_15();
          bspush_ca_scan(v40, v41);
          continue;
        case 3:
        case 5:
          goto LABEL_13;
        case 4:
          continue;
        case 6:
          goto LABEL_18;
        case 8:
          goto LABEL_22;
        case 9:
          goto LABEL_26;
        case 10:
          goto LABEL_30;
        case 11:
          goto LABEL_34;
        default:
          goto LABEL_5;
      }

      goto LABEL_5;
    }

    break;
  }

  v45 = OUTLINED_FUNCTION_29_17();
  if (lpta_loadp_setscan_r(v45, v46, v47) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v1 + 136) = 1, v48 = OUTLINED_FUNCTION_23_21(), test_ptr(v48, v49, v50)) || (v51 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v51, v52, v53), OUTLINED_FUNCTION_11_28(), mark_s()))
  {
LABEL_18:
    v54 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v54, v55, v56) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v1 + 136) = 1, v57 = OUTLINED_FUNCTION_23_21(), test_ptr(v57, v58, v59)) || (v60 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v60, v61, v62), OUTLINED_FUNCTION_11_28(), mark_s()))
    {
LABEL_22:
      v63 = OUTLINED_FUNCTION_29_17();
      if (lpta_loadp_setscan_r(v63, v64, v65) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v1 + 136) = 1, v66 = OUTLINED_FUNCTION_23_21(), test_ptr(v66, v67, v68)) || (v69 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v69, v70, v71), OUTLINED_FUNCTION_11_28(), mark_s()))
      {
LABEL_26:
        v72 = OUTLINED_FUNCTION_29_17();
        if (lpta_loadp_setscan_r(v72, v73, v74) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v1 + 136) = 1, v75 = OUTLINED_FUNCTION_23_21(), test_ptr(v75, v76, v77)) || (v78 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v78, v79, v80), OUTLINED_FUNCTION_11_28(), mark_s()))
        {
LABEL_30:
          v81 = OUTLINED_FUNCTION_29_17();
          if (lpta_loadp_setscan_r(v81, v82, v83) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v1 + 136) = 1, v84 = OUTLINED_FUNCTION_23_21(), test_ptr(v84, v85, v86)) || (v87 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v87, v88, v89), OUTLINED_FUNCTION_11_28(), mark_s()))
          {
LABEL_34:
            v90 = OUTLINED_FUNCTION_29_17();
            if (!lpta_loadp_setscan_r(v90, v91, v92))
            {
              OUTLINED_FUNCTION_24_21();
              if (!test_string_s())
              {
                *(v1 + 136) = 1;
                v93 = OUTLINED_FUNCTION_23_21();
                if (!test_ptr(v93, v94, v95))
                {
                  v96 = OUTLINED_FUNCTION_16_25();
                  lpta_rpta_loadp(v96, v97, v98);
                  OUTLINED_FUNCTION_11_28();
                  mark_s();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  vretproc(v1);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t mark_inf(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_45_8(v4, v5, v6, v7, v8, v9, v10, v11, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, SHIDWORD(v245), v247, v249, v251, v252);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v3))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_116_1(v12, v13, v14, v15, v16))
  {
    goto LABEL_4;
  }

  v17 = OUTLINED_FUNCTION_59_7();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_53_7();
  v20 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v20, v21);
  OUTLINED_FUNCTION_131_0();
  fence_29(v1, 0, &null_str_8);
  v22 = OUTLINED_FUNCTION_24_21();
  fence_29(v22, v23, v24);
  v25 = OUTLINED_FUNCTION_97_3();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_81_5();
  if (lpta_loadp_setscan_l(v27, v28, v2))
  {
    goto LABEL_4;
  }

  v30 = OUTLINED_FUNCTION_78_6();
  bspush_ca_scan(v30, v31);
  v32 = OUTLINED_FUNCTION_38_11();
  bspush_ca_scan(v32, v33);
  OUTLINED_FUNCTION_73_6();
  if (test_string_s())
  {
    goto LABEL_39;
  }

  v34 = OUTLINED_FUNCTION_32_15();
  bspush_ca_scan(v34, v35);
  OUTLINED_FUNCTION_20_21();
LABEL_7:
  if (test_string_s())
  {
    goto LABEL_39;
  }

  while (2)
  {
    OUTLINED_FUNCTION_102_1();
    v36 = OUTLINED_FUNCTION_82_5();
    savescptr(v36, v37, v38);
LABEL_9:
    v39 = OUTLINED_FUNCTION_46_8();
    bspush_ca_scan(v39, v40);
    v41 = OUTLINED_FUNCTION_58_7();
    if (testFldeq(v41, v42, v43, 1) || advance_tok(v1, v44, v45, v46))
    {
      goto LABEL_39;
    }

LABEL_11:
    v47 = OUTLINED_FUNCTION_82_5();
    lpta_rpta_loadp(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_73_6();
    if (!setd_lookup(v50, v51, 34))
    {
      goto LABEL_4;
    }

LABEL_12:
    v52 = OUTLINED_FUNCTION_51_7();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_82_5();
    lpta_rpta_loadp(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_73_6();
    if (!setd_lookup(v57, v58, 35))
    {
      goto LABEL_25;
    }

LABEL_13:
    v59 = OUTLINED_FUNCTION_60_7();
    starttest(v59, v60);
    v61 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_l(v61, v62, v63) || (OUTLINED_FUNCTION_20_21(), test_string_s()))
    {
LABEL_15:
      v64 = OUTLINED_FUNCTION_72_6();
      starttest(v64, v65);
      v66 = OUTLINED_FUNCTION_29_17();
      if (lpta_loadp_setscan_l(v66, v67, v68))
      {
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_4;
      }

      v69 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v69, v70);
LABEL_23:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_39;
      }

LABEL_24:
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
        goto LABEL_25;
      }

LABEL_39:
      v138 = *(v1 + 104);
      if (v138)
      {
        v139 = OUTLINED_FUNCTION_87_4(v138);
      }

      else
      {
        v140 = OUTLINED_FUNCTION_90_4();
        v139 = vback(v140, v141);
      }

      switch(v139)
      {
        case 2:
        case 4:
          continue;
        case 3:
          v142 = OUTLINED_FUNCTION_31_16();
          bspush_ca_scan(v142, v143);
          OUTLINED_FUNCTION_42_8();
          goto LABEL_7;
        case 5:
          OUTLINED_FUNCTION_36_12();
          goto LABEL_7;
        case 6:
          goto LABEL_9;
        case 7:
          if (!advance_tok(v1, v73, v74, v75))
          {
            goto LABEL_9;
          }

          goto LABEL_39;
        case 8:
          goto LABEL_11;
        case 9:
          goto LABEL_12;
        case 10:
          goto LABEL_25;
        case 11:
          goto LABEL_13;
        case 12:
          goto LABEL_15;
        case 13:
          v144 = OUTLINED_FUNCTION_69_6();
          bspush_ca_scan(v144, v145);
          goto LABEL_19;
        case 14:
          goto LABEL_20;
        case 15:
          goto LABEL_19;
        case 17:
          goto LABEL_23;
        case 18:
          goto LABEL_24;
        case 19:
          goto LABEL_30;
        case 22:
          goto LABEL_34;
        case 24:
          goto LABEL_48;
        case 26:
          goto LABEL_52;
        case 27:
          goto LABEL_56;
        default:
          goto LABEL_4;
      }

      goto LABEL_4;
    }

    break;
  }

  v71 = OUTLINED_FUNCTION_64_6();
  bspush_ca_scan(v71, v72);
LABEL_19:
  OUTLINED_FUNCTION_20_21();
  if (test_string_s())
  {
    goto LABEL_39;
  }

LABEL_20:
  if (advance_tok(v1, v73, v74, v75) || advance_tok(v1, v76, v77, v78))
  {
    goto LABEL_39;
  }

LABEL_25:
  v79 = OUTLINED_FUNCTION_25_20();
  lpta_rpta_loadp(v79, v80, v81);
  OUTLINED_FUNCTION_3_30();
  if (mark_s())
  {
    goto LABEL_39;
  }

  v82 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_r(v82, v83, v84))
  {
    OUTLINED_FUNCTION_24_21();
    v85 = test_string_s();
    if (!v85)
    {
      *(v1 + 136) = v2;
      v93 = OUTLINED_FUNCTION_21_21(v85, v86, v87, v88, v89, v90, v91, v92, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250);
      if (!test_ptr(v93, v94, v95))
      {
        v96 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v96, v97, v98);
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
LABEL_38:
          v133 = OUTLINED_FUNCTION_72_6();
          starttest_l(v133, v134);
          LOBYTE(v2) = 0;
          v135 = OUTLINED_FUNCTION_81_5();
          move_i(v135, v136, 0);
          v137 = OUTLINED_FUNCTION_59_7();
          if (!mark_word_stress(v137))
          {
            goto LABEL_4;
          }

          goto LABEL_39;
        }
      }
    }
  }

LABEL_30:
  v99 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_r(v99, v100, v101))
  {
    OUTLINED_FUNCTION_24_21();
    v102 = test_string_s();
    if (!v102)
    {
      *(v1 + 136) = v2;
      v110 = OUTLINED_FUNCTION_21_21(v102, v103, v104, v105, v106, v107, v108, v109, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250);
      if (!test_ptr(v110, v111, v112))
      {
        v113 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v113, v114, v115);
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
          goto LABEL_38;
        }
      }
    }
  }

LABEL_34:
  v116 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_r(v116, v117, v118))
  {
    OUTLINED_FUNCTION_24_21();
    v119 = test_string_s();
    if (!v119)
    {
      *(v1 + 136) = v2;
      v127 = OUTLINED_FUNCTION_21_21(v119, v120, v121, v122, v123, v124, v125, v126, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250);
      if (!test_ptr(v127, v128, v129))
      {
        v130 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v130, v131, v132);
        OUTLINED_FUNCTION_2_31();
        if (!mark_s())
        {
          goto LABEL_38;
        }
      }
    }
  }

LABEL_48:
  v146 = OUTLINED_FUNCTION_48_8();
  if (lpta_loadp_setscan_r(v146, v147, v148) || (OUTLINED_FUNCTION_24_21(), v149 = test_string_s(), v149) || (*(v1 + 136) = v2, v157 = OUTLINED_FUNCTION_21_21(v149, v150, v151, v152, v153, v154, v155, v156, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250), test_ptr(v157, v158, v159)) || (v160 = OUTLINED_FUNCTION_25_20(), lpta_rpta_loadp(v160, v161, v162), OUTLINED_FUNCTION_11_28(), mark_s()))
  {
LABEL_52:
    v163 = OUTLINED_FUNCTION_48_8();
    if (lpta_loadp_setscan_r(v163, v164, v165) || (OUTLINED_FUNCTION_24_21(), v166 = test_string_s(), v166) || (*(v1 + 136) = v2, v174 = OUTLINED_FUNCTION_21_21(v166, v167, v168, v169, v170, v171, v172, v173, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250), test_ptr(v174, v175, v176)) || (v177 = OUTLINED_FUNCTION_25_20(), lpta_rpta_loadp(v177, v178, v179), OUTLINED_FUNCTION_11_28(), mark_s()))
    {
LABEL_56:
      v180 = OUTLINED_FUNCTION_48_8();
      if (!lpta_loadp_setscan_r(v180, v181, v182))
      {
        OUTLINED_FUNCTION_24_21();
        v183 = test_string_s();
        if (!v183)
        {
          *(v1 + 136) = v2;
          v191 = OUTLINED_FUNCTION_21_21(v183, v184, v185, v186, v187, v188, v189, v190, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250);
          if (!test_ptr(v191, v192, v193))
          {
            v194 = OUTLINED_FUNCTION_25_20();
            lpta_rpta_loadp(v194, v195, v196);
            OUTLINED_FUNCTION_11_28();
            mark_s();
          }
        }
      }
    }
  }

LABEL_4:
  vretproc(v1);
  return OUTLINED_FUNCTION_113_1();
}

uint64_t mark_adverb(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v114 = *MEMORY[0x277D85DE8];
  v103 = 0;
  v104 = 0;
  OUTLINED_FUNCTION_27_18(v3, v4, v5, v6, v7, v8, v9, v10, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  OUTLINED_FUNCTION_56_7();
  v11 = setjmp(v2);
  if (!v11 && !OUTLINED_FUNCTION_39_10(v11, &v76, v12, v13, v14, v15, v16, v17, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113))
  {
    v19 = OUTLINED_FUNCTION_93_3();
    OUTLINED_FUNCTION_110_1(v19, v20);
    OUTLINED_FUNCTION_53_7();
    v21 = OUTLINED_FUNCTION_89_4();
    v23 = push_ptr_init(v21, v22);
    OUTLINED_FUNCTION_115_1(v23, v24, &null_str_8);
    v25 = OUTLINED_FUNCTION_57_7();
    fence_29(v25, v26, v27);
    OUTLINED_FUNCTION_125_0();
    v28 = OUTLINED_FUNCTION_81_5();
    v30 = lpta_loadp_setscan_l(v28, v29, v2);
    LODWORD(v2) = 0;
    if (v30 || (OUTLINED_FUNCTION_73_6(), v31 = test_string_s(), v32 = 0, LODWORD(v2) = 0, v31))
    {
LABEL_6:
      v33 = OUTLINED_FUNCTION_52_7();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_73_6();
      v40 = setd_lookup(v38, v39, 19);
      v41 = v2;
      if (v40)
      {
        goto LABEL_3;
      }

LABEL_7:
      v42 = v41;
      v43 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v43, v44, v45);
      OUTLINED_FUNCTION_13_28();
      if (!mark_s())
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_10:
      v46 = v32;
      OUTLINED_FUNCTION_102_1();
      v47 = OUTLINED_FUNCTION_74_6();
      savescptr(v47, v48, v49);
      v50 = v46;
LABEL_11:
      v42 = v50;
      v51 = OUTLINED_FUNCTION_97_3();
      bspush_ca_scan(v51, v52);
      v53 = OUTLINED_FUNCTION_73_6();
      if (!testFldeq(v53, v54, 4, 1))
      {
        v58 = advance_tok(v1, v55, v56, v57);
        v59 = v42;
        if (!v58)
        {
LABEL_13:
          v60 = v59;
          v61 = OUTLINED_FUNCTION_47_8();
          bspush_ca_scan(v61, v62);
          OUTLINED_FUNCTION_117_1();
          v63 = OUTLINED_FUNCTION_23_21();
          if (test_ptr(v63, v64, v65))
          {
            v42 = v60;
          }

          else
          {
            OUTLINED_FUNCTION_46_8();
            bspush_ca_boa();
            v66 = OUTLINED_FUNCTION_74_6();
            if (one_syllable(v66))
            {
              v42 = v60;
            }

            else
            {
              v42 = 1;
            }
          }
        }
      }
    }

    LODWORD(v2) = v42;
    while (2)
    {
      v67 = v1[13];
      if (v67)
      {
        v68 = OUTLINED_FUNCTION_87_4(v67);
        v2 = v70;
      }

      else
      {
        v68 = vback(v1, v2);
        v2 = 0;
      }

      v50 = v2;
      v59 = v2;
      v41 = v2;
      switch(v68)
      {
        case 1:
          goto LABEL_6;
        case 2:
          v32 = v2;
          goto LABEL_10;
        case 3:
          goto LABEL_11;
        case 4:
          v71 = advance_tok(v1, v2, v2, v69);
          v50 = v2;
          if (!v71)
          {
            goto LABEL_11;
          }

          continue;
        case 5:
          goto LABEL_13;
        case 6:
          v75 = advance_tok(v1, v2, v2, v69);
          v59 = v2;
          if (!v75)
          {
            goto LABEL_13;
          }

          continue;
        case 7:
          bspop_boa(v1);
          v72 = OUTLINED_FUNCTION_101_1();
          lpta_rpta_loadp(v72, v73, &v101);
          OUTLINED_FUNCTION_2_31();
          v74 = mark_s();
          v41 = v2;
          if (!v74)
          {
            goto LABEL_7;
          }

          continue;
        case 8:
          goto LABEL_7;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_119_1();
}

uint64_t mark_verb_by_rule(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v85 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  v84 = 0;
  OUTLINED_FUNCTION_67_6(v3, v4, v5, v6, v7, v8, v9, v10, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_59_7();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_53_7();
  v84 = 65532;
  v20 = OUTLINED_FUNCTION_96_3();
  v22 = push_ptr_init(v20, v21);
  OUTLINED_FUNCTION_115_1(v22, v23, &null_str_8);
  v24 = OUTLINED_FUNCTION_57_7();
  fence_29(v24, v25, v26);
  OUTLINED_FUNCTION_125_0();
  v27 = OUTLINED_FUNCTION_81_5();
  if (!lpta_loadp_setscan_l(v27, v28, v2))
  {
    OUTLINED_FUNCTION_42_8();
    if (!test_string_s())
    {
      copyvar(v1, &v84, (v1 + 3020));
LABEL_14:
      v48 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v48, v49, v50);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_88_4();
          OUTLINED_FUNCTION_149_0();
          goto LABEL_3;
        }
      }

      goto LABEL_16;
    }
  }

  while (2)
  {
    v29 = OUTLINED_FUNCTION_38_11();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_65_6();
    if (lpta_loadp_setscan_l(v31, v32, v33))
    {
      break;
    }

LABEL_7:
    v34 = OUTLINED_FUNCTION_72_6();
    bspush_ca_scan(v34, v35);
LABEL_8:
    v36 = OUTLINED_FUNCTION_58_7();
    if (testFldeq(v36, v37, v38, 1) || advance_tok(v1, v39, v40, v41))
    {
      goto LABEL_16;
    }

LABEL_10:
    v42 = OUTLINED_FUNCTION_106_1();
    savescptr(v42, v43, v44);
    if (!advance_tok(v1, v45, v46, v47) && !match_verb_pattern())
    {
      goto LABEL_14;
    }

LABEL_16:
    v51 = *(v1 + 104);
    if (v51)
    {
      v52 = OUTLINED_FUNCTION_87_4(v51);
    }

    else
    {
      v56 = OUTLINED_FUNCTION_90_4();
      v52 = vback(v56, v57);
    }

    switch(v52)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_14;
      case 4:
        if (!advance_tok(v1, v53, v54, v55))
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      case 5:
        goto LABEL_8;
      case 6:
        if (!advance_tok(v1, v53, v54, v55))
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      case 7:
        if (!advance_tok(v1, v53, v54, v55))
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      case 8:
        goto LABEL_10;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_113_1();
}

uint64_t mark_nounadj_by_rule(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v225 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  v221 = 0;
  OUTLINED_FUNCTION_67_6(v3, v4, v5, v6, v7, v8, v9, v10, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_59_7();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_53_7();
  v221 = 65532;
  v20 = OUTLINED_FUNCTION_96_3();
  v22 = push_ptr_init(v20, v21);
  OUTLINED_FUNCTION_115_1(v22, v23, &null_str_8);
  v24 = OUTLINED_FUNCTION_57_7();
  fence_29(v24, v25, v26);
  OUTLINED_FUNCTION_125_0();
  v27 = OUTLINED_FUNCTION_81_5();
  if (!lpta_loadp_setscan_l(v27, v28, v2))
  {
    OUTLINED_FUNCTION_36_12();
    if (!test_string_s())
    {
      goto LABEL_6;
    }
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_38_11();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_l(v35, v36, v37))
    {
      OUTLINED_FUNCTION_42_8();
      if (!test_string_s())
      {
LABEL_6:
        v29 = 3024;
LABEL_7:
        copyvar(v1, &v221, (v1 + v29));
        goto LABEL_8;
      }
    }

LABEL_12:
    v38 = OUTLINED_FUNCTION_32_15();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_l(v40, v41, v42))
    {
      OUTLINED_FUNCTION_73_6();
      if (!test_string_s() && !advance_tok(v1, v43, v44, v45) && !advance_tok(v1, v46, v47, v48))
      {
LABEL_40:
        v29 = 3020;
        goto LABEL_7;
      }
    }

LABEL_16:
    v49 = OUTLINED_FUNCTION_31_16();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_l(v51, v52, v53))
    {
      OUTLINED_FUNCTION_36_12();
      if (!test_string_s())
      {
        goto LABEL_40;
      }
    }

LABEL_18:
    v54 = OUTLINED_FUNCTION_47_8();
    starttest(v54, v55);
    v56 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_l(v56, v57, v58))
    {
      OUTLINED_FUNCTION_20_21();
      v59 = test_string_s();
      v29 = 3020;
      if (!v59)
      {
        goto LABEL_7;
      }
    }

LABEL_20:
    strip_plural(v1, v224, &v219, v222);
    if (v60)
    {
LABEL_21:
      HIWORD(v221) = *(v1 + 3022);
      v220 = v223;
    }

    else
    {
      HIWORD(v221) = *(v1 + 3026);
    }

LABEL_23:
    v61 = OUTLINED_FUNCTION_52_7();
    starttest(v61, v62);
    v63 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v63, v64, v65))
    {
      v113 = OUTLINED_FUNCTION_68_6();
      bspush_ca_scan(v113, v114);
      goto LABEL_68;
    }

LABEL_24:
    v66 = OUTLINED_FUNCTION_64_6();
    starttest(v66, v67);
    v68 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v68, v69, v70))
    {
      v115 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v115, v116);
LABEL_46:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_47:
      if (advance_tok(v1, v127, v128, v129))
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

LABEL_25:
    v71 = OUTLINED_FUNCTION_72_6();
    starttest(v71, v72);
    v73 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v73, v74, v75))
    {
      OUTLINED_FUNCTION_58_7();
      if (!test_string_s())
      {
        goto LABEL_8;
      }
    }

LABEL_27:
    v76 = OUTLINED_FUNCTION_72_6();
    starttest(v76, v77);
    v78 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v78, v79, v80))
    {
      OUTLINED_FUNCTION_36_12();
      if (!test_string_s())
      {
        goto LABEL_8;
      }
    }

LABEL_29:
    v81 = OUTLINED_FUNCTION_72_6();
    starttest(v81, v82);
    v83 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v83, v84, v85))
    {
      v117 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v117, v118);
LABEL_61:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_62:
      OUTLINED_FUNCTION_42_8();
      goto LABEL_77;
    }

LABEL_30:
    v86 = OUTLINED_FUNCTION_72_6();
    starttest(v86, v87);
    v88 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v88, v89, v90))
    {
      OUTLINED_FUNCTION_42_8();
      if (!test_string_s())
      {
        v123 = OUTLINED_FUNCTION_72_6();
        bspush_ca_scan(v123, v124);
LABEL_70:
        OUTLINED_FUNCTION_20_21();
        goto LABEL_71;
      }
    }

LABEL_32:
    v91 = OUTLINED_FUNCTION_72_6();
    starttest(v91, v92);
    v93 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v93, v94, v95))
    {
      v119 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v119, v120);
LABEL_59:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

      goto LABEL_62;
    }

LABEL_33:
    v96 = OUTLINED_FUNCTION_72_6();
    starttest(v96, v97);
    v98 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v98, v99, v100))
    {
      v121 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v121, v122);
LABEL_57:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_74:
      OUTLINED_FUNCTION_36_12();
LABEL_71:
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_49:
      if (advance_tok(v1, v127, v128, v129))
      {
        goto LABEL_50;
      }

LABEL_8:
      v30 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v30, v31, v32);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_88_4();
        OUTLINED_FUNCTION_149_0();
        break;
      }

      goto LABEL_50;
    }

LABEL_34:
    v101 = OUTLINED_FUNCTION_72_6();
    starttest(v101, v102);
    v103 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v103, v104, v105))
    {
      v125 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v125, v126);
LABEL_55:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

      goto LABEL_74;
    }

LABEL_35:
    v106 = OUTLINED_FUNCTION_72_6();
    starttest(v106, v107);
    v108 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v108, v109, v110))
    {
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
        v111 = OUTLINED_FUNCTION_72_6();
        bspush_ca_scan(v111, v112);
LABEL_63:
        OUTLINED_FUNCTION_20_21();
        if (test_string_s())
        {
          goto LABEL_50;
        }

        goto LABEL_70;
      }
    }

LABEL_79:
    v141 = OUTLINED_FUNCTION_72_6();
    starttest(v141, v142);
    v143 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v143, v144, v145))
    {
      v189 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v189, v190);
LABEL_73:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

      goto LABEL_74;
    }

LABEL_80:
    v146 = OUTLINED_FUNCTION_72_6();
    starttest(v146, v147);
    v148 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v148, v149, v150))
    {
      OUTLINED_FUNCTION_42_8();
      if (!test_string_s() && !advance_tok(v1, v151, v152, v153))
      {
        goto LABEL_8;
      }
    }

LABEL_83:
    v154 = OUTLINED_FUNCTION_72_6();
    starttest(v154, v155);
    v156 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v156, v157, v158))
    {
      OUTLINED_FUNCTION_58_7();
      if (!test_string_s() && !advance_tok(v1, v159, v160, v161) && !advance_tok(v1, v162, v163, v164))
      {
        goto LABEL_8;
      }
    }

LABEL_87:
    v165 = OUTLINED_FUNCTION_72_6();
    starttest(v165, v166);
    v167 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v167, v168, v169))
    {
      OUTLINED_FUNCTION_58_7();
      if (!test_string_s() && !advance_tok(v1, v170, v171, v172) && !advance_tok(v1, v173, v174, v175))
      {
        goto LABEL_8;
      }
    }

LABEL_91:
    v176 = OUTLINED_FUNCTION_72_6();
    starttest(v176, v177);
    v178 = OUTLINED_FUNCTION_75_6();
    if (!lpta_loadp_setscan_l(v178, v179, v180))
    {
      v191 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v191, v192);
LABEL_75:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_76:
      OUTLINED_FUNCTION_36_12();
LABEL_77:
      if (test_string_s())
      {
        goto LABEL_50;
      }

LABEL_48:
      if (!advance_tok(v1, v130, v131, v132))
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

LABEL_92:
    v181 = OUTLINED_FUNCTION_72_6();
    starttest(v181, v182);
    v183 = OUTLINED_FUNCTION_75_6();
    if (lpta_loadp_setscan_l(v183, v184, v185))
    {
LABEL_93:
      v186 = OUTLINED_FUNCTION_72_6();
      starttest(v186, v187);
      is_antepenult_stress(v1, &v219, v222);
      if (v188)
      {
        break;
      }

      goto LABEL_8;
    }

    v193 = OUTLINED_FUNCTION_72_6();
    bspush_ca_scan(v193, v194);
LABEL_65:
    OUTLINED_FUNCTION_20_21();
    if (test_string_s())
    {
      goto LABEL_50;
    }

LABEL_66:
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
      v139 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v139, v140);
LABEL_68:
      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_50;
      }

      goto LABEL_8;
    }

LABEL_50:
    v133 = *(v1 + 104);
    if (v133)
    {
      v134 = OUTLINED_FUNCTION_87_4(v133);
    }

    else
    {
      v135 = OUTLINED_FUNCTION_90_4();
      v134 = vback(v135, v136);
    }

    switch(v134)
    {
      case 1:
        continue;
      case 2:
      case 11:
      case 49:
        goto LABEL_8;
      case 3:
        goto LABEL_12;
      case 4:
        goto LABEL_16;
      case 5:
        goto LABEL_18;
      case 6:
        goto LABEL_20;
      case 7:
        goto LABEL_21;
      case 8:
        goto LABEL_23;
      case 9:
        goto LABEL_24;
      case 10:
        v137 = OUTLINED_FUNCTION_60_7();
        bspush_ca_scan(v137, v138);
        goto LABEL_68;
      case 12:
      case 48:
        goto LABEL_68;
      case 13:
        goto LABEL_25;
      case 14:
        goto LABEL_46;
      case 15:
        goto LABEL_47;
      case 16:
        goto LABEL_27;
      case 17:
        goto LABEL_29;
      case 18:
        goto LABEL_30;
      case 19:
        goto LABEL_61;
      case 20:
      case 26:
        goto LABEL_62;
      case 21:
        goto LABEL_32;
      case 22:
      case 35:
        goto LABEL_70;
      case 23:
        goto LABEL_49;
      case 24:
        goto LABEL_33;
      case 25:
        goto LABEL_59;
      case 27:
        goto LABEL_34;
      case 28:
        goto LABEL_57;
      case 29:
      case 32:
      case 38:
        goto LABEL_74;
      case 30:
        goto LABEL_35;
      case 31:
        goto LABEL_55;
      case 33:
        goto LABEL_79;
      case 34:
        goto LABEL_63;
      case 36:
        goto LABEL_80;
      case 37:
        goto LABEL_73;
      case 39:
        goto LABEL_83;
      case 40:
        goto LABEL_87;
      case 41:
        goto LABEL_91;
      case 42:
        goto LABEL_92;
      case 43:
        goto LABEL_75;
      case 44:
        goto LABEL_76;
      case 45:
        goto LABEL_93;
      case 46:
        goto LABEL_65;
      case 47:
        goto LABEL_66;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_113_1();
}

void mark_noun_verb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v70 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = 0;
  OUTLINED_FUNCTION_98_2();
  v60[0] = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(v59, v5);
  OUTLINED_FUNCTION_84_4();
  bzero(v69, v6);
  if (!setjmp(v69))
  {
    OUTLINED_FUNCTION_37_12();
    if (!OUTLINED_FUNCTION_141_0(v7, v8, v9, v10, v11, v12, v13, v14, v58, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15], v59[16], v59[17], v59[18], v59[19], v59[20], v59[21], v59[22], v60[0], v60[1], v61, v62[0], v62[1], v63, v64, v65, v66, v67, v68))
    {
      v15 = OUTLINED_FUNCTION_59_7();
      get_parm(v15, v16, v17, -6);
      OUTLINED_FUNCTION_53_7();
      WORD2(v61) = -4;
      LOWORD(v61) = -4;
      v18 = OUTLINED_FUNCTION_96_3();
      v20 = push_ptr_init(v18, v19);
      OUTLINED_FUNCTION_115_1(v20, v21, &null_str_8);
      HIWORD(v61) = 0;
      WORD1(v61) = 0;
      v22 = OUTLINED_FUNCTION_24_21();
      fence_29(v22, v23, v24);
      v25 = OUTLINED_FUNCTION_97_3();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_81_5();
      if (!lpta_loadp_setscan_l(v27, v28, v4))
      {
        while (2)
        {
          if (!advance_tok(v3, v29, v30, v31))
          {
            v32 = OUTLINED_FUNCTION_81_5();
            bspush_ca_scan(v32, v33);
LABEL_7:
            v34 = OUTLINED_FUNCTION_77_6();
            savescptr(v34, v35, v60);
            if (!advance_tok(v3, v36, v37, v38) && !advance_tok(v3, v39, v40, v41))
            {
              OUTLINED_FUNCTION_91_3();
              if (!is_ambig_noun_verb_ending())
              {
LABEL_10:
                v42 = OUTLINED_FUNCTION_133_0();
                lpta_rpta_loadp(v42, v43, v62);
                OUTLINED_FUNCTION_79_6();
                if (!mark_s())
                {
                  OUTLINED_FUNCTION_88_4();
                  OUTLINED_FUNCTION_149_0();
LABEL_17:
                  v48 = WORD1(v61);
                  if (WORD1(v61) == 1)
                  {
                    v49 = OUTLINED_FUNCTION_25_20();
                    lpta_rpta_loadp(v49, v50, v51);
                    OUTLINED_FUNCTION_15_26();
                    if (!mark_s())
                    {
                      break;
                    }

LABEL_19:
                    v48 = WORD1(v61);
                  }

                  if (v48 == 2)
                  {
                    v52 = OUTLINED_FUNCTION_25_20();
                    lpta_rpta_loadp(v52, v53, v54);
                    OUTLINED_FUNCTION_15_26();
                    if (!mark_s() || WORD1(v61) != 3)
                    {
                      break;
                    }
                  }

                  else
                  {
LABEL_24:
                    if (v48 != 3)
                    {
                      break;
                    }
                  }

                  v55 = OUTLINED_FUNCTION_25_20();
                  lpta_rpta_loadp(v55, v56, v57);
                  OUTLINED_FUNCTION_15_26();
                  mark_s();
                  break;
                }
              }
            }
          }

          v44 = *(v3 + 104);
          if (v44)
          {
            v45 = OUTLINED_FUNCTION_87_4(v44);
          }

          else
          {
            v46 = OUTLINED_FUNCTION_90_4();
            v45 = vback(v46, v47);
          }

          switch(v45)
          {
            case 2:
              continue;
            case 3:
              goto LABEL_7;
            case 4:
              goto LABEL_10;
            case 5:
              goto LABEL_17;
            case 6:
              goto LABEL_19;
            case 8:
              v48 = WORD1(v61);
              goto LABEL_24;
            default:
              goto LABEL_4;
          }
        }
      }
    }
  }

LABEL_4:
  vretproc(v3);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122_0();
}

void strip_plural(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_123_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v58 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = 0;
  OUTLINED_FUNCTION_27_18(v8, v10, v6, v4, v11, v12, v13, v14, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17], v49[18], v49[19], v49[20], v49[21], v49[22], v49[23], v49[24], v50, v51);
  OUTLINED_FUNCTION_84_4();
  bzero(v57, v15);
  if (!setjmp(v57) && !ventproc(v9, v49, v56, v55, v54, v57))
  {
    v16 = OUTLINED_FUNCTION_93_3();
    OUTLINED_FUNCTION_137_0(v16, v17);
    v18 = OUTLINED_FUNCTION_76_6();
    OUTLINED_FUNCTION_114_1(v18, v19);
    v20 = OUTLINED_FUNCTION_26_20();
    get_parm(v20, v21, v22, -6);
    v23 = fence_29(v9, 0, &null_str_8);
    OUTLINED_FUNCTION_104_1(v23, v24, &unk_2806BBF47);
    OUTLINED_FUNCTION_127_0();
    v25 = OUTLINED_FUNCTION_77_6();
    if (lpta_loadp_setscan_l(v25, v26, v5) || (OUTLINED_FUNCTION_36_12(), test_string_s()))
    {
LABEL_5:
      v27 = OUTLINED_FUNCTION_75_6();
      if (lpta_loadp_setscan_l(v27, v28, v29))
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_20_21();
      if (test_string_s())
      {
        goto LABEL_7;
      }

LABEL_18:
      v46 = OUTLINED_FUNCTION_82_5();
      savescptr(v46, v47, v48);
LABEL_19:
      *(v7 + 8) = v51;
      goto LABEL_7;
    }

    while (2)
    {
      v30 = OUTLINED_FUNCTION_81_5();
      savescptr(v30, v31, &v50);
      v32 = OUTLINED_FUNCTION_120_1();
      bspush_ca_scan(v32, v33);
      OUTLINED_FUNCTION_20_21();
LABEL_9:
      if (!test_string_s())
      {
LABEL_10:
        v34 = OUTLINED_FUNCTION_58_7();
        if (!testFldeq(v34, v35, v36, 1) && !advance_tok(v9, v37, v38, v39))
        {
          goto LABEL_19;
        }
      }

      v40 = *(v9 + 104);
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_87_4(v40);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_90_4();
        v41 = vback(v42, v43);
      }

      switch(v41)
      {
        case 1:
          goto LABEL_5;
        case 2:
          continue;
        case 3:
          v44 = OUTLINED_FUNCTION_146_0();
          bspush_ca_scan(v44, v45);
          OUTLINED_FUNCTION_20_21();
          goto LABEL_9;
        case 4:
          goto LABEL_10;
        case 5:
          OUTLINED_FUNCTION_20_21();
          goto LABEL_9;
        case 6:
          goto LABEL_19;
        case 8:
          goto LABEL_18;
        default:
          goto LABEL_7;
      }
    }
  }

LABEL_7:
  vretproc(v9);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_122_0();
}

uint64_t match_verb_pattern()
{
  OUTLINED_FUNCTION_135_0();
  v55 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  OUTLINED_FUNCTION_98_2();
  v46 = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(v45, v3);
  OUTLINED_FUNCTION_84_4();
  bzero(v54, v4);
  if (!setjmp(v54))
  {
    OUTLINED_FUNCTION_37_12();
    if (!OUTLINED_FUNCTION_141_0(v5, v6, v7, v8, v9, v10, v11, v12, v44, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8], v45[9], v45[10], v45[11], v45[12], v45[13], v45[14], v45[15], v45[16], v45[17], v45[18], v45[19], v45[20], v45[21], v45[22], v46, v47[0], v47[1], v47[2], v47[3], v48, v49, v50, v51, v52, v53))
    {
      v14 = OUTLINED_FUNCTION_86_4();
      get_parm(v14, v15, v2, -6);
      v16 = OUTLINED_FUNCTION_91_3();
      OUTLINED_FUNCTION_137_0(v16, v17);
      v18 = OUTLINED_FUNCTION_26_20();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_95_3();
      get_parm(v21, v22, v23, -4);
      LOWORD(v46) = -4;
      OUTLINED_FUNCTION_115_1(v24, v25, &null_str_8);
      v26 = OUTLINED_FUNCTION_73_6();
      fence_29(v26, v27, v28);
      WORD1(v46) = 0;
      v29 = OUTLINED_FUNCTION_91_3();
      lpta_rpta_loadp(v29, v30, v47);
      v31 = OUTLINED_FUNCTION_73_6();
      if (setd_lookup(v31, v32, 37))
      {
        v33 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v33, v34, v35);
        v36 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v36, v37, 38))
        {
          OUTLINED_FUNCTION_83_4();
          OUTLINED_FUNCTION_130_0();
          if (match_por_paradigm_verb())
          {
            v38 = OUTLINED_FUNCTION_25_20();
            lpta_rpta_loadp(v38, v39, v40);
            v41 = OUTLINED_FUNCTION_73_6();
            if (setd_lookup(v41, v42, 41))
            {
              goto LABEL_3;
            }

            OUTLINED_FUNCTION_83_4();
            if (is_ambig_noun_verb_ending())
            {
              goto LABEL_3;
            }
          }

LABEL_13:
          *(v1 + 2) = HIWORD(v46);
          goto LABEL_3;
        }

        v43 = 3026;
      }

      else
      {
        v43 = 3022;
      }

      HIWORD(v46) = *(v0 + v43);
      goto LABEL_13;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_113_1();
}

uint64_t match_por_paradigm_verb()
{
  OUTLINED_FUNCTION_108_1();
  v73 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_8(v2, v3, v4, v5, v6, v7, v8, v9, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, SHIDWORD(v66), v68, v69, v70, v71);
  OUTLINED_FUNCTION_84_4();
  bzero(v72, v10);
  if (setjmp(v72) || (OUTLINED_FUNCTION_30_16(), OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_137_0(v17, v18);
    v19 = OUTLINED_FUNCTION_76_6();
    OUTLINED_FUNCTION_110_1(v19, v20);
    v21 = OUTLINED_FUNCTION_95_3();
    get_parm(v21, v22, v23, -4);
    v24 = 0;
    OUTLINED_FUNCTION_115_1(v25, v26, &null_str_8);
    OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_63_6();
    bspush_ca_boa();
    v27 = OUTLINED_FUNCTION_91_3();
    if (!lpta_loadp_setscan_l(v27, v28, 1))
    {
      OUTLINED_FUNCTION_20_21();
      v24 = test_string_s() == 0;
    }

    v29 = *(v0 + 104);
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_87_4(v29);
    }

    else
    {
      v30 = vback(v0, v24);
    }

    switch(v30)
    {
      case 1:
        v31 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v31, v32, v33);
        v34 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v34, v35, 39))
        {
          goto LABEL_11;
        }

        v41 = *(v0 + 3022);
        goto LABEL_16;
      case 2:
        bspop_boa(v0);
        goto LABEL_3;
      case 3:
LABEL_11:
        v36 = OUTLINED_FUNCTION_19_22();
        lpta_rpta_loadp(v36, v37, v38);
        v39 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v39, v40, 40))
        {
          goto LABEL_3;
        }

        v41 = *(v0 + 3026);
LABEL_16:
        *(v1 + 2) = v41;
        vretproc(v0);
        result = 0;
        break;
      case 4:
        v41 = v67;
        goto LABEL_16;
      default:
        goto LABEL_3;
    }
  }

  return result;
}

uint64_t is_ambig_noun_verb_ending()
{
  OUTLINED_FUNCTION_135_0();
  v103 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98_2();
  v99 = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(v98, v5);
  OUTLINED_FUNCTION_84_4();
  bzero(v102, v6);
  if (setjmp(v102))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_16();
  if (ventproc(v0, v7, v8, v9, v10, v102))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_120_1();
  get_parm(v12, v13, v4, -6);
  v14 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_137_0(v14, v15);
  get_parm(v0, &v99 + 4, v2, -4);
  v16 = OUTLINED_FUNCTION_95_3();
  get_parm(v16, v17, v18, -4);
  fence_29(v0, 0, &null_str_8);
  v19 = OUTLINED_FUNCTION_57_7();
  fence_29(v19, v20, v21);
  OUTLINED_FUNCTION_125_0();
  v22 = OUTLINED_FUNCTION_120_1();
  if (!lpta_loadp_setscan_r(v22, v23, v3))
  {
    v24 = OUTLINED_FUNCTION_63_6();
    bspush_ca_scan(v24, v25);
LABEL_7:
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
LABEL_8:
      OUTLINED_FUNCTION_57_7();
      v26 = test_string_s();
      if (!v26)
      {
        *(v0 + 136) = v3;
        v34 = OUTLINED_FUNCTION_21_21(v26, v27, v28, v29, v30, v31, v32, v33, v97, v98[0], v98[1], v98[2], v98[3], v98[4], v98[5], v98[6], v98[7], v98[8], v98[9], v98[10], v98[11], v98[12], v98[13], v98[14], v98[15], v98[16], v98[17], v98[18], v98[19], v98[20], v98[21], v98[22], v99, v100, v101);
        if (!test_ptr(v34, v35, v36))
        {
          v37 = *(v0 + 3026);
LABEL_11:
          HIWORD(v99) = v37;
          v38 = v37;
          v39 = 2;
LABEL_12:
          WORD1(v99) = v39;
LABEL_34:
          v2[1] = v38;
          *(v1 + 2) = v39;
          vretproc(v0);
          return 0;
        }
      }
    }

    goto LABEL_26;
  }

  while (2)
  {
    v40 = OUTLINED_FUNCTION_31_16();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_65_6();
    if (!lpta_loadp_setscan_r(v42, v43, v44))
    {
      v45 = OUTLINED_FUNCTION_47_8();
      bspush_ca_scan(v45, v46);
LABEL_15:
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
LABEL_16:
        OUTLINED_FUNCTION_57_7();
        v47 = test_string_s();
        if (!v47)
        {
          *(v0 + 136) = v3;
          v55 = OUTLINED_FUNCTION_21_21(v47, v48, v49, v50, v51, v52, v53, v54, v97, v98[0], v98[1], v98[2], v98[3], v98[4], v98[5], v98[6], v98[7], v98[8], v98[9], v98[10], v98[11], v98[12], v98[13], v98[14], v98[15], v98[16], v98[17], v98[18], v98[19], v98[20], v98[21], v98[22], v99, v100, v101);
          if (!test_ptr(v55, v56, v57))
          {
            v37 = *(v0 + 3022);
            goto LABEL_11;
          }
        }
      }

LABEL_26:
      v83 = *(v0 + 104);
      if (v83)
      {
        v72 = OUTLINED_FUNCTION_87_4(v83);
      }

      else
      {
        v84 = OUTLINED_FUNCTION_90_4();
        v72 = vback(v84, v85);
      }

      switch(v72)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_8;
        case 4:
          v38 = HIWORD(v99);
          v39 = WORD1(v99);
          goto LABEL_34;
        case 5:
          goto LABEL_19;
        case 6:
          goto LABEL_15;
        case 7:
          goto LABEL_16;
        case 8:
          goto LABEL_20;
        case 9:
          goto LABEL_30;
        case 10:
          goto LABEL_31;
        case 12:
          goto LABEL_23;
        case 13:
          goto LABEL_24;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_19:
  v58 = OUTLINED_FUNCTION_34_14();
  starttest(v58, v59);
  v60 = OUTLINED_FUNCTION_65_6();
  if (!lpta_loadp_setscan_r(v60, v61, v62))
  {
    v70 = OUTLINED_FUNCTION_52_7();
    bspush_ca_scan(v70, v71);
LABEL_30:
    OUTLINED_FUNCTION_20_21();
    if (!test_string_s())
    {
LABEL_31:
      OUTLINED_FUNCTION_117_1();
      v94 = OUTLINED_FUNCTION_21_21(v86, v87, v88, v89, v90, v91, v92, v93, v97, v98[0], v98[1], v98[2], v98[3], v98[4], v98[5], v98[6], v98[7], v98[8], v98[9], v98[10], v98[11], v98[12], v98[13], v98[14], v98[15], v98[16], v98[17], v98[18], v98[19], v98[20], v98[21], v98[22], v99, v100, v101);
      if (!test_ptr(v94, v95, v96))
      {
        HIWORD(v99) = *(v0 + 3022);
        v38 = HIWORD(v99);
        v39 = 3;
        goto LABEL_12;
      }
    }

    goto LABEL_26;
  }

LABEL_20:
  v63 = OUTLINED_FUNCTION_51_7();
  starttest(v63, v64);
  v65 = OUTLINED_FUNCTION_65_6();
  if (!lpta_loadp_setscan_r(v65, v66, v67))
  {
    v68 = OUTLINED_FUNCTION_60_7();
    bspush_ca_scan(v68, v69);
LABEL_23:
    OUTLINED_FUNCTION_20_21();
    v72 = test_string_s();
    if (!v72)
    {
LABEL_24:
      LOBYTE(v3) = 1;
      *(v0 + 136) = 1;
      v80 = OUTLINED_FUNCTION_21_21(v72, v73, v74, v75, v76, v77, v78, v79, v97, v98[0], v98[1], v98[2], v98[3], v98[4], v98[5], v98[6], v98[7], v98[8], v98[9], v98[10], v98[11], v98[12], v98[13], v98[14], v98[15], v98[16], v98[17], v98[18], v98[19], v98[20], v98[21], v98[22], v99, v100, v101);
      if (!test_ptr(v80, v81, v82))
      {
        HIWORD(v99) = *(v0 + 3022);
        v38 = HIWORD(v99);
        WORD1(v99) = 1;
        v39 = 1;
        goto LABEL_34;
      }
    }

    goto LABEL_26;
  }

LABEL_3:
  vretproc(v0);
  return 94;
}

void is_antepenult_stress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v136 = *MEMORY[0x277D85DE8];
  memset(v131, 0, sizeof(v131));
  OUTLINED_FUNCTION_67_6(v4, v5, v6, v7, v8, v9, v10, v11, v128, *v129, *&v129[8], *&v129[16], *&v129[24], *&v129[32], *&v129[40], *&v129[48], *&v129[56], *&v129[64], *&v129[72], *&v129[80], *&v129[88], *&v129[96], *&v129[104], *&v129[112], *&v129[120], *&v129[128], *&v129[136], *&v129[144], *&v129[152], *&v129[160], *&v129[168], *&v129[176], v130[0], v130[1]);
  OUTLINED_FUNCTION_84_4();
  bzero(v135, v12);
  if (!setjmp(v135) && !ventproc(v3, v129, v134, v133, v132, v135))
  {
    v13 = OUTLINED_FUNCTION_26_20();
    get_parm(v13, v14, v15, -6);
    OUTLINED_FUNCTION_92_3(v16, v131);
    v17 = OUTLINED_FUNCTION_96_3();
    push_ptr_init(v17, v18);
    fence_29(v3, 0, &null_str_8);
    v19 = OUTLINED_FUNCTION_97_3();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_77_6();
    if (!lpta_loadp_setscan_l(v21, v22, 1))
    {
      v23 = OUTLINED_FUNCTION_55_7();
      if (testFldeq(v23, v24, v25, 1) || advance_tok(v3, v26, v27, v28))
      {
        v29 = 0;
      }

      else
      {
        v30 = OUTLINED_FUNCTION_63_6();
        bspush_ca_scan(v30, v31);
        LODWORD(v32) = 0;
LABEL_45:
        v29 = v32;
        v106 = OUTLINED_FUNCTION_58_7();
        if (!testFldeq(v106, v107, v108, 1) && !advance_tok(v3, v109, v110, v111))
        {
          v112 = OUTLINED_FUNCTION_47_8();
          bspush_ca_scan(v112, v113);
          LODWORD(v37) = v29;
LABEL_48:
          v29 = v37;
          v114 = OUTLINED_FUNCTION_68_6();
          bspush_ca_scan(v114, v115);
          v116 = OUTLINED_FUNCTION_51_7();
          bspush_ca_scan(v116, v117);
          v118 = OUTLINED_FUNCTION_73_6();
          v121 = testFldeq(v118, v119, v120, 5);
          v38 = v29;
          if (!v121)
          {
LABEL_49:
            v29 = v38;
            LODWORD(v36) = v38;
            if (!advance_tok(v3, v35, v32, v37))
            {
LABEL_50:
              v29 = v36;
              v122 = OUTLINED_FUNCTION_58_7();
              if (!testFldeq(v122, v123, v124, 1))
              {
                OUTLINED_FUNCTION_64_6();
                bspush_ca_scan_boa();
                v125 = OUTLINED_FUNCTION_73_6();
                if (testFldeq(v125, v126, 5, v127))
                {
                  v29 = v36;
                }

                else
                {
                  v29 = 1;
                }
              }
            }
          }
        }
      }

      LODWORD(v35) = v29;
      while (2)
      {
        v33 = *(v3 + 104);
        if (v33)
        {
          v34 = OUTLINED_FUNCTION_87_4(v33);
          v36 = v35;
        }

        else
        {
          v34 = vback(v3, v35);
          v36 = 0;
        }

        v32 = v36;
        v37 = v36;
        v38 = v36;
        switch(v34)
        {
          case 2:
            v39 = OUTLINED_FUNCTION_55_7();
            v42 = testFldeq(v39, v40, v41, 2);
            LODWORD(v35) = v36;
            if (v42)
            {
              continue;
            }

            v45 = advance_tok(v3, v36, v43, v44);
            LODWORD(v35) = v36;
            if (v45)
            {
              continue;
            }

            goto LABEL_44;
          case 3:
            goto LABEL_45;
          case 4:
            v79 = OUTLINED_FUNCTION_55_7();
            v82 = testFldeq(v79, v80, v81, 2);
            LODWORD(v35) = v36;
            if (v82)
            {
              continue;
            }

            v85 = advance_tok(v3, v36, v83, v84);
            LODWORD(v35) = v36;
            if (v85)
            {
              continue;
            }

LABEL_44:
            v104 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v104, v105);
            LODWORD(v32) = v36;
            goto LABEL_45;
          case 5:
            v65 = OUTLINED_FUNCTION_55_7();
            v68 = testFldeq(v65, v66, v67, 2);
            LODWORD(v35) = v36;
            if (!v68)
            {
              v71 = advance_tok(v3, v36, v69, v70);
              LODWORD(v32) = v36;
              LODWORD(v35) = v36;
              if (!v71)
              {
                goto LABEL_45;
              }
            }

            continue;
          case 6:
            v72 = OUTLINED_FUNCTION_55_7();
            v75 = testFldeq(v72, v73, v74, 2);
            LODWORD(v35) = v36;
            if (v75)
            {
              continue;
            }

            v78 = advance_tok(v3, v36, v76, v77);
            LODWORD(v35) = v36;
            if (v78)
            {
              continue;
            }

            goto LABEL_43;
          case 7:
            goto LABEL_48;
          case 8:
            v58 = OUTLINED_FUNCTION_55_7();
            v61 = testFldeq(v58, v59, v60, 2);
            LODWORD(v35) = v36;
            if (v61)
            {
              continue;
            }

            v64 = advance_tok(v3, v36, v62, v63);
            LODWORD(v35) = v36;
            if (v64)
            {
              continue;
            }

LABEL_43:
            v102 = OUTLINED_FUNCTION_72_6();
            bspush_ca_scan(v102, v103);
            LODWORD(v37) = v36;
            goto LABEL_48;
          case 9:
            v86 = OUTLINED_FUNCTION_55_7();
            v89 = testFldeq(v86, v87, v88, 2);
            LODWORD(v35) = v36;
            if (!v89)
            {
              v92 = advance_tok(v3, v36, v90, v91);
              LODWORD(v37) = v36;
              LODWORD(v35) = v36;
              if (!v92)
              {
                goto LABEL_48;
              }
            }

            continue;
          case 10:
            goto LABEL_50;
          case 11:
            v93 = OUTLINED_FUNCTION_79_6();
            v96 = testFldeq(v93, v94, v95, 3);
            v38 = v36;
            v35 = v36;
            if (!v96)
            {
              goto LABEL_49;
            }

            continue;
          case 12:
            goto LABEL_49;
          case 13:
            bspop_boa(v3);
            v49 = advance_tok(v3, v46, v47, v48);
            LODWORD(v35) = v36;
            if (v49)
            {
              continue;
            }

            goto LABEL_17;
          case 14:
LABEL_17:
            v50 = OUTLINED_FUNCTION_81_5();
            savescptr(v50, v51, v130);
            goto LABEL_18;
          case 15:
LABEL_18:
            v52 = OUTLINED_FUNCTION_91_3();
            starttest(v52, v53);
            v54 = OUTLINED_FUNCTION_77_6();
            if (lpta_loadp_setscan_r(v54, v55, 1))
            {
              goto LABEL_4;
            }

            OUTLINED_FUNCTION_79_6();
            if (test_string_s())
            {
              goto LABEL_4;
            }

            v56 = OUTLINED_FUNCTION_146_0();
            bspush_ca_scan(v56, v57);
            OUTLINED_FUNCTION_79_6();
LABEL_39:
            v97 = test_string_s();
            LODWORD(v35) = v36;
            if (v97)
            {
              continue;
            }

LABEL_40:
            *(v3 + 136) = 1;
            v98 = OUTLINED_FUNCTION_23_21();
            v101 = test_ptr(v98, v99, v100);
            LODWORD(v35) = v36;
            if (!v101)
            {
              goto LABEL_4;
            }

            continue;
          case 17:
            OUTLINED_FUNCTION_79_6();
            goto LABEL_39;
          case 18:
            goto LABEL_40;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v3);
  OUTLINED_FUNCTION_122_0();
}

void disambig_por_single_word(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v90 = *MEMORY[0x277D85DE8];
  v85[0] = 0;
  v85[1] = 0;
  v84[0] = 0;
  v84[1] = 0;
  v83[0] = 0;
  v83[1] = 0;
  OUTLINED_FUNCTION_67_6(v4, v5, v6, v7, v8, v9, v10, v11, v80, v81[0], v81[1], v81[2], v81[3], v81[4], v81[5], v81[6], v81[7], v81[8], v81[9], v81[10], v81[11], v81[12], v81[13], v81[14], v81[15], v81[16], v81[17], v81[18], v81[19], v81[20], v81[21], v81[22], v82[0], v82[1]);
  OUTLINED_FUNCTION_84_4();
  bzero(v89, v12);
  if (!setjmp(v89) && !ventproc(v3, v81, v88, v87, v86, v89))
  {
    v13 = OUTLINED_FUNCTION_26_20();
    get_parm(v13, v14, v15, -6);
    OUTLINED_FUNCTION_92_3(v16, v84);
    v17 = OUTLINED_FUNCTION_107_1();
    push_ptr_init(v17, v18);
    v19 = OUTLINED_FUNCTION_96_3();
    v21 = push_ptr_init(v19, v20);
    OUTLINED_FUNCTION_115_1(v21, v22, &null_str_8);
    v23 = OUTLINED_FUNCTION_72_6();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_41_8();
    if (lpta_loadp_setscan_r(v25, v26, v27))
    {
LABEL_10:
      v34 = OUTLINED_FUNCTION_38_11();
      starttest(v34, v35);
      v36 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_r(v36, v37, v38))
      {
        goto LABEL_3;
      }

      v39 = OUTLINED_FUNCTION_14_26();
      if (!testFldeq(v39, v40, v41, 31) && !advance_tok(v3, v42, v43, v44))
      {
        v45 = OUTLINED_FUNCTION_32_15();
        starttest_l(v45, v46);
        OUTLINED_FUNCTION_31_16();
        bspush_ca_boa();
        v47 = OUTLINED_FUNCTION_75_6();
        if (!lpta_loadp_setscan_l(v47, v48, v49))
        {
          OUTLINED_FUNCTION_36_12();
          test_string_s();
        }
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_13_28();
      if (!testFldeq(v28, v29, v30, 11) && !advance_tok(v3, v31, v32, v33))
      {
        lpta_rpta_loadp(v3, v85, v84);
        OUTLINED_FUNCTION_7_29();
        if (!mark_s())
        {
          goto LABEL_3;
        }
      }
    }

    OUTLINED_FUNCTION_142_0();
    while (2)
    {
      v51 = v3[13];
      if (v51)
      {
        v52 = OUTLINED_FUNCTION_87_4(v51);
        v54 = v53;
      }

      else
      {
        v52 = vback(v3, v50);
        v54 = 0;
      }

      switch(v52)
      {
        case 1:
          goto LABEL_10;
        case 5:
          bspop_boa(v3);
          v55 = OUTLINED_FUNCTION_101_1();
          starttest(v55, v56);
          v57 = OUTLINED_FUNCTION_81_5();
          if (!lpta_loadp_setscan_r(v57, v58, 4) && !advance_tok(v3, v59, v60, v61))
          {
            goto LABEL_22;
          }

          goto LABEL_24;
        case 6:
          goto LABEL_24;
        case 7:
LABEL_22:
          v62 = OUTLINED_FUNCTION_77_6();
          savescptr(v62, v63, v83);
          v67 = advance_tok(v3, v64, v65, v66);
          v50 = v54;
          if (!v67)
          {
            goto LABEL_23;
          }

          continue;
        case 8:
LABEL_23:
          v68 = OUTLINED_FUNCTION_120_1();
          savescptr(v68, v69, v82);
LABEL_24:
          v70 = OUTLINED_FUNCTION_91_3();
          lpta_rpta_loadp(v70, v71, v82);
          v72 = OUTLINED_FUNCTION_44_8();
          inserted = insert_2pt_s(v72, v73, v74, &unk_2806BBF48, v75);
          v50 = v54;
          if (!inserted)
          {
            v77 = OUTLINED_FUNCTION_81_5();
            lpta_rpta_loadp(v77, v78, v84);
            OUTLINED_FUNCTION_7_29();
            v79 = mark_s();
            v50 = v54;
            if (!v79)
            {
              goto LABEL_3;
            }
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_122_0();
}

uint64_t disambig_por_content_word(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v4, v5, v6, v7, v8, v9, v10, v11, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v225, v229, v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v273, v277, v281, v284, v287);
  OUTLINED_FUNCTION_62_6(v12, v13, v14, v15, v16, v17, v18, v19, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258, v262, v266, v270, v274, v278, v282, v285, v288, v290, v292, v294, v296);
  v20 = setjmp(v3);
  if (v20 || OUTLINED_FUNCTION_17_24(v20, v21, v22, v23, v24, v25, v26, v27, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227, v231, v235, v239, v243, v247, v251, v255, v259, v263, v267, v271, v275, v279, v283, v286, v289, v291, SHIDWORD(v291), v293, SWORD2(v293), SHIWORD(v293), v295, SWORD2(v295), SBYTE6(v295), SHIBYTE(v295), v297, v298))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_26_20();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_70_6(v32, v33, v34, v35, v36, v37, v38, v39, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228, v232, v236, v240, v244, v248, v252, v256, v260, v264, v268, v272, v276, v280);
  fence_29(v1, 0, &null_str_8);
  v40 = OUTLINED_FUNCTION_72_6();
  starttest(v40, v41);
  v42 = OUTLINED_FUNCTION_41_8();
  if (lpta_loadp_setscan_r(v42, v43, v44))
  {
LABEL_5:
    v45 = OUTLINED_FUNCTION_72_6();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_35_13();
    if (lpta_loadp_setscan_r(v47, v48, v49))
    {
LABEL_6:
      v50 = OUTLINED_FUNCTION_72_6();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_35_13();
      if (lpta_loadp_setscan_r(v52, v53, v54))
      {
        goto LABEL_3;
      }

      v55 = OUTLINED_FUNCTION_15_26();
      if (!testFldeq(v55, v56, v57, 4) && !advance_tok(v1, v58, v59, v60))
      {
        v61 = OUTLINED_FUNCTION_16_25();
        pro_vs_det(v61);
        goto LABEL_3;
      }
    }

    else
    {
      v62 = OUTLINED_FUNCTION_13_28();
      if (!testFldeq(v62, v63, v64, 11) && !advance_tok(v1, v65, v66, v67))
      {
        v68 = OUTLINED_FUNCTION_16_25();
        noun_vs_verb(v68, v69, v70);
        goto LABEL_3;
      }
    }

    goto LABEL_49;
  }

  v71 = OUTLINED_FUNCTION_13_28();
  if (testFldeq(v71, v72, v73, v74) || advance_tok(v1, v75, v76, v77))
  {
LABEL_49:
    while (2)
    {
      v151 = *(v1 + 104);
      if (v151)
      {
        v152 = OUTLINED_FUNCTION_87_4(v151);
      }

      else
      {
        v153 = OUTLINED_FUNCTION_90_4();
        v152 = vback(v153, v154);
      }

      switch(v152)
      {
        case 1:
          goto LABEL_5;
        case 2:
          goto LABEL_16;
        case 5:
          goto LABEL_17;
        case 7:
          goto LABEL_18;
        case 8:
          OUTLINED_FUNCTION_20_21();
          if (!test_string_s())
          {
            goto LABEL_38;
          }

          continue;
        case 9:
          goto LABEL_38;
        case 11:
          goto LABEL_21;
        case 13:
          goto LABEL_24;
        case 15:
          goto LABEL_26;
        case 16:
          goto LABEL_48;
        case 17:
          goto LABEL_69;
        case 18:
          OUTLINED_FUNCTION_20_21();
          if (!test_string_s())
          {
            goto LABEL_71;
          }

          continue;
        case 19:
          goto LABEL_71;
        case 21:
          goto LABEL_29;
        case 23:
          goto LABEL_59;
        case 24:
          OUTLINED_FUNCTION_36_12();
          if (!test_string_s())
          {
            goto LABEL_32;
          }

          continue;
        case 25:
          goto LABEL_32;
        case 27:
          goto LABEL_62;
        case 29:
          goto LABEL_65;
        case 31:
          goto LABEL_68;
        case 34:
          goto LABEL_6;
        default:
          goto LABEL_3;
      }
    }

    goto LABEL_3;
  }

  v78 = OUTLINED_FUNCTION_78_6();
  starttest(v78, v79);
  v80 = OUTLINED_FUNCTION_76_6();
  if (!lpta_loadp_setscan_r(v80, v81, v2))
  {
    v141 = OUTLINED_FUNCTION_15_26();
    if (!testFldeq(v141, v142, v143, 6) && !advance_tok(v1, v144, v145, v146))
    {
      v147 = OUTLINED_FUNCTION_16_25();
      assign_inf_category(v147);
      goto LABEL_3;
    }

    goto LABEL_49;
  }

LABEL_16:
  v82 = OUTLINED_FUNCTION_31_16();
  starttest(v82, v83);
  v84 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_r(v84, v85, v86))
  {
    v126 = OUTLINED_FUNCTION_14_26();
    if (!testFldeq(v126, v127, v128, 6) && !advance_tok(v1, v129, v130, v131))
    {
      v132 = OUTLINED_FUNCTION_16_25();
      disambiguate_mais(v132);
      goto LABEL_3;
    }

    goto LABEL_49;
  }

LABEL_17:
  v87 = OUTLINED_FUNCTION_46_8();
  starttest(v87, v88);
  v89 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v89, v90, v91))
  {
    v133 = OUTLINED_FUNCTION_34_14();
    bspush_ca_scan(v133, v134);
LABEL_38:
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v1 + 136) = v2;
      v135 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v135, v136, v137))
      {
        v138 = OUTLINED_FUNCTION_16_25();
        disambiguate_acerca(v138);
        goto LABEL_3;
      }
    }

    goto LABEL_49;
  }

LABEL_18:
  v92 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v92, v93, v94))
  {
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v1 + 136) = v2;
      v95 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v95, v96, v97))
      {
        v149 = OUTLINED_FUNCTION_16_25();
        disambiguate_cedo(v149);
        goto LABEL_3;
      }
    }
  }

LABEL_21:
  v98 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v98, v99, v100))
  {
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v1 + 136) = v2;
      v101 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v101, v102, v103))
      {
        v148 = OUTLINED_FUNCTION_16_25();
        disambiguate_como(v148);
        goto LABEL_3;
      }
    }
  }

LABEL_24:
  v104 = OUTLINED_FUNCTION_69_6();
  starttest(v104, v105);
  v106 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v106, v107, v108))
  {
    OUTLINED_FUNCTION_42_8();
    if (!test_string_s())
    {
      v139 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v139, v140);
LABEL_48:
      OUTLINED_FUNCTION_20_21();
      if (!test_string_s())
      {
LABEL_69:
        OUTLINED_FUNCTION_20_21();
        if (!test_string_s())
        {
          v176 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v176, v177);
LABEL_71:
          OUTLINED_FUNCTION_117_1();
          v178 = OUTLINED_FUNCTION_23_21();
          if (!test_ptr(v178, v179, v180))
          {
            v181 = OUTLINED_FUNCTION_16_25();
            disambiguate_desse_or_deste(v181);
            goto LABEL_3;
          }
        }
      }

      goto LABEL_49;
    }
  }

LABEL_26:
  v109 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v109, v110, v111))
  {
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v1 + 136) = v2;
      v112 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v112, v113, v114))
      {
        v150 = OUTLINED_FUNCTION_16_25();
        disambiguate_mesmo(v150);
        goto LABEL_3;
      }
    }
  }

LABEL_29:
  v115 = OUTLINED_FUNCTION_72_6();
  starttest(v115, v116);
  v117 = OUTLINED_FUNCTION_29_17();
  if (!lpta_loadp_setscan_r(v117, v118, v119))
  {
    OUTLINED_FUNCTION_73_6();
    if (!test_string_s())
    {
      v120 = OUTLINED_FUNCTION_72_6();
      bspush_ca_scan(v120, v121);
LABEL_32:
      OUTLINED_FUNCTION_117_1();
      v122 = OUTLINED_FUNCTION_23_21();
      if (!test_ptr(v122, v123, v124))
      {
        v125 = OUTLINED_FUNCTION_16_25();
        disambiguate_colher(v125);
        goto LABEL_3;
      }

      goto LABEL_49;
    }
  }

LABEL_59:
  v155 = OUTLINED_FUNCTION_29_17();
  if (lpta_loadp_setscan_r(v155, v156, v157) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v1 + 136) = v2, v158 = OUTLINED_FUNCTION_23_21(), test_ptr(v158, v159, v160)))
  {
LABEL_62:
    v161 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v161, v162, v163) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v1 + 136) = v2, v164 = OUTLINED_FUNCTION_23_21(), test_ptr(v164, v165, v166)))
    {
LABEL_65:
      v167 = OUTLINED_FUNCTION_29_17();
      if (lpta_loadp_setscan_r(v167, v168, v169) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v1 + 136) = v2, v170 = OUTLINED_FUNCTION_23_21(), test_ptr(v170, v171, v172)))
      {
LABEL_68:
        v173 = OUTLINED_FUNCTION_16_25();
        is_nounadj(v173, v174, v175);
      }

      else
      {
        v182 = OUTLINED_FUNCTION_16_25();
        disambiguate_sobre(v182);
      }
    }

    else
    {
      v183 = OUTLINED_FUNCTION_16_25();
      disambiguate_segundo(v183);
    }
  }

  else
  {
    v184 = OUTLINED_FUNCTION_16_25();
    disambiguate_muito(v184);
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t assign_inf_category(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228, v232, v235, v238);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v225, v229, v233, v236, v239, v241, v243, v245, v247);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v237, v240, v242, SHIDWORD(v242), v244, SWORD2(v244), SHIWORD(v244), v246, SWORD2(v246), SBYTE6(v246), SHIBYTE(v246), v248, v249))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_26_20();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_70_6(v31, v32, v33, v34, v35, v36, v37, v38, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227, v231);
  v39 = 0;
  v42 = OUTLINED_FUNCTION_115_1(v40, v41, &null_str_8);
  OUTLINED_FUNCTION_104_1(v42, v43, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  v44 = OUTLINED_FUNCTION_41_8();
  if (lpta_loadp_setscan_l(v44, v45, v46))
  {
LABEL_9:
    v53 = OUTLINED_FUNCTION_38_11();
    starttest(v53, v54);
    v55 = OUTLINED_FUNCTION_35_13();
    if (!lpta_loadp_setscan_l(v55, v56, v57))
    {
      v58 = OUTLINED_FUNCTION_32_15();
      bspush_ca_scan(v58, v59);
      v60 = OUTLINED_FUNCTION_4_29();
      v64 = testFldeq(v60, v61, v62, v63);
      v67 = v39;
      if (!v64)
      {
        goto LABEL_24;
      }

      goto LABEL_34;
    }

LABEL_26:
    v101 = OUTLINED_FUNCTION_46_8();
    starttest(v101, v102);
    v103 = OUTLINED_FUNCTION_35_13();
    if (!lpta_loadp_setscan_l(v103, v104, v105))
    {
      v122 = OUTLINED_FUNCTION_5_29();
      if (!testFldeq(v122, v123, v124, v125))
      {
        OUTLINED_FUNCTION_34_14();
        bspush_ca_scan_boa();
        v126 = OUTLINED_FUNCTION_14_26();
        testFldeq(v126, v127, v128, 30);
      }

      do
      {
LABEL_34:
        OUTLINED_FUNCTION_142_0();
        do
        {
          while (2)
          {
            v68 = v1[13];
            if (v68)
            {
              v69 = OUTLINED_FUNCTION_87_4(v68);
              v70 = v65;
            }

            else
            {
              v69 = vback(v1, v65);
              v70 = 0;
            }

            v67 = v70;
            switch(v69)
            {
              case 1:
                v39 = v70;
                goto LABEL_9;
              case 2:
                goto LABEL_35;
              case 3:
                goto LABEL_26;
              case 4:
                v71 = OUTLINED_FUNCTION_101_1();
                bspush_ca_scan(v71, v72);
                v73 = OUTLINED_FUNCTION_15_26();
                v76 = testFldeq(v73, v74, v75, 4);
                LODWORD(v65) = v70;
                if (v76)
                {
                  continue;
                }

                v77 = OUTLINED_FUNCTION_40_9();
                v80 = npush_fld(v77, v78, v79);
                LODWORD(v65) = v70;
                if (v80)
                {
                  continue;
                }

                v81 = OUTLINED_FUNCTION_90_4();
                npush_i(v81);
                v89 = if_testgt(v1, v82, v83, v84, v85, v86, v87, v88);
                break;
              case 5:
                goto LABEL_24;
              case 6:
                v98 = OUTLINED_FUNCTION_14_26();
                v89 = testFldeq(v98, v99, v100, 3);
                break;
              case 7:
                goto LABEL_27;
              case 8:
                bspop_boa(v1);
                v90 = OUTLINED_FUNCTION_15_26();
                v94 = testFldeq(v90, v91, v92, v93);
                LODWORD(v65) = v70;
                if (!v94)
                {
                  v97 = advance_tok(v1, v70, v95, v96);
                  LODWORD(v65) = v70;
                  if (!v97)
                  {
                    goto LABEL_35;
                  }
                }

                continue;
              case 10:
                goto LABEL_39;
              case 11:
                goto LABEL_42;
              default:
                goto LABEL_3;
            }

            break;
          }

          v67 = v70;
          v65 = v70;
        }

        while (v89);
LABEL_24:
        ;
      }

      while (advance_tok(v1, v65, v67, v66));
      goto LABEL_35;
    }

LABEL_27:
    v106 = OUTLINED_FUNCTION_52_7();
    starttest(v106, v107);
    v108 = OUTLINED_FUNCTION_35_13();
    if (lpta_loadp_setscan_l(v108, v109, v110))
    {
LABEL_3:
      vretproc(v1);
      return 94;
    }

    v111 = OUTLINED_FUNCTION_7_29();
    if (testFldeq(v111, v112, v113, v114))
    {
      goto LABEL_34;
    }

    v115 = OUTLINED_FUNCTION_8_29();
    if (testFldeq(v115, v116, v117, v118) || advance_tok(v1, v119, v120, v121))
    {
      goto LABEL_34;
    }
  }

  else
  {
    v47 = OUTLINED_FUNCTION_14_26();
    if (testFldeq(v47, v48, v49, 30) || advance_tok(v1, v50, v51, v52))
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_121_0();
  if (!v129 || (v130 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v130, v131, v132), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()))
  {
LABEL_39:
    OUTLINED_FUNCTION_112_1();
    if (v129)
    {
      v133 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v133, v134, v135);
      OUTLINED_FUNCTION_0_33();
      mark_s();
    }
  }

LABEL_42:
  vretproc(v1);
  return 0;
}

uint64_t disambiguate_mais(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v183, v186);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v184, v187, v189, v191, v193, v195);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v185, v188, v190, SHIDWORD(v190), v192, SWORD2(v192), SHIWORD(v192), v194, SWORD2(v194), SBYTE6(v194), SHIBYTE(v194), v196, v197))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_26_20();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_70_6(v31, v32, v33, v34, v35, v36, v37, v38, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179);
  fence_29(v1, 0, &null_str_8);
  v39 = OUTLINED_FUNCTION_24_21();
  fence_29(v39, v40, v41);
  v42 = OUTLINED_FUNCTION_97_3();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_41_8();
  if (!lpta_loadp_setscan_l(v44, v45, v46))
  {
    v49 = OUTLINED_FUNCTION_4_29();
    goto LABEL_8;
  }

  while (2)
  {
    v47 = OUTLINED_FUNCTION_89_4();
    if (!lpta_loadp_setscan_l(v47, v48, 5))
    {
      break;
    }

LABEL_11:
    v57 = OUTLINED_FUNCTION_32_15();
    starttest(v57, v58);
    v59 = OUTLINED_FUNCTION_35_13();
    if (lpta_loadp_setscan_l(v59, v60, v61))
    {
LABEL_26:
      OUTLINED_FUNCTION_43_8();
      if (!v77)
      {
LABEL_3:
        vretproc(v1);
        return 94;
      }

      goto LABEL_10;
    }

LABEL_12:
    v62 = OUTLINED_FUNCTION_31_16();
    if (test_synch(v62, v63, 1, v64))
    {
      goto LABEL_13;
    }

    v69 = OUTLINED_FUNCTION_47_8();
    starttest(v69, v70);
    v71 = OUTLINED_FUNCTION_80_5();
    if (!lpta_loadp_setscan_r(v71, v72, v73))
    {
      v74 = OUTLINED_FUNCTION_46_8();
      bspush_ca_scan(v74, v75);
      v49 = OUTLINED_FUNCTION_1_31();
LABEL_8:
      if (testFldeq(v49, v50, v51, v52))
      {
        goto LABEL_13;
      }

LABEL_9:
      if (advance_tok(v1, v53, v54, v55))
      {
LABEL_13:
        v65 = *(v1 + 104);
        if (v65)
        {
          v66 = OUTLINED_FUNCTION_87_4(v65);
        }

        else
        {
          v67 = OUTLINED_FUNCTION_90_4();
          v66 = vback(v67, v68);
        }

        switch(v66)
        {
          case 1:
            continue;
          case 2:
          case 9:
            v76 = 0;
            goto LABEL_22;
          case 3:
            goto LABEL_11;
          case 4:
            goto LABEL_26;
          case 5:
            goto LABEL_12;
          case 6:
            goto LABEL_20;
          case 7:
            v49 = OUTLINED_FUNCTION_13_28();
            v52 = 11;
            goto LABEL_8;
          case 8:
            goto LABEL_9;
          case 11:
            v76 = 0;
            goto LABEL_31;
          case 12:
            goto LABEL_33;
          default:
            goto LABEL_3;
        }
      }

LABEL_10:
      v56 = 2054;
      goto LABEL_21;
    }

    break;
  }

LABEL_20:
  v56 = 2078;
LABEL_21:
  v76 = *(v1 + v56);
LABEL_22:
  OUTLINED_FUNCTION_121_0();
  if (!v77 || (v78 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v78, v79, v80), OUTLINED_FUNCTION_0_33(), mark_s()))
  {
LABEL_31:
    if (*(v1 + 2078) == v76)
    {
      v81 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v81, v82, v83);
      OUTLINED_FUNCTION_0_33();
      mark_s();
    }
  }

LABEL_33:
  vretproc(v1);
  return 0;
}

uint64_t disambiguate_desse_or_deste(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_45_8(v3, v4, v5, v6, v7, v8, v9, v10, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, SHIDWORD(v199), v200, v201, v202, v203);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_116_1(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_59_7();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_53_7();
  v20 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v20, v21);
  OUTLINED_FUNCTION_131_0();
  v22 = 0;
  OUTLINED_FUNCTION_115_1(v23, v24, &null_str_8);
  v25 = OUTLINED_FUNCTION_57_7();
  fence_29(v25, v26, v27);
  OUTLINED_FUNCTION_125_0();
  v28 = OUTLINED_FUNCTION_66_6();
  if (!lpta_loadp_setscan_r(v28, v29, v30))
  {
    v91 = OUTLINED_FUNCTION_78_6();
    bspush_ca_scan(v91, v92);
    v93 = OUTLINED_FUNCTION_79_6();
    testFldeq(v93, v94, 1, 9);
    OUTLINED_FUNCTION_144_0();
    if (!v95)
    {
LABEL_29:
      v22 = v88;
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_5:
  v31 = OUTLINED_FUNCTION_34_14();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_25_20();
  if (!followed_by_hyphen(v33))
  {
    v34 = OUTLINED_FUNCTION_54_7();
    if (!lpta_loadp_setscan_r(v34, v35, v36))
    {
      v81 = OUTLINED_FUNCTION_52_7();
      bspush_ca_scan(v81, v82);
      v83 = OUTLINED_FUNCTION_9_29();
      v87 = testFldeq(v83, v84, v85, v86);
      v90 = v22;
      if (!v87)
      {
        goto LABEL_54;
      }

      goto LABEL_56;
    }
  }

LABEL_7:
  v37 = v22;
  v38 = OUTLINED_FUNCTION_60_7();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_49_7();
  if (lpta_loadp_setscan_l(v40, v41, v42))
  {
LABEL_8:
    OUTLINED_FUNCTION_43_8();
    if (!v43)
    {
LABEL_3:
      vretproc(v1);
      return 94;
    }

    goto LABEL_10;
  }

  v45 = OUTLINED_FUNCTION_14_26();
  if (testFldeq(v45, v46, v47, 11) || (v48 = OUTLINED_FUNCTION_9_29(), testFldeq(v48, v49, v50, v51)) || advance_tok(v1, v52, v53, v54))
  {
LABEL_55:
    v22 = v37;
    goto LABEL_56;
  }

  v55 = OUTLINED_FUNCTION_64_6();
  starttest(v55, v56);
  v57 = OUTLINED_FUNCTION_49_7();
  if (!lpta_loadp_setscan_l(v57, v58, v59))
  {
    v96 = OUTLINED_FUNCTION_6_29();
    if (testFldeq(v96, v97, v98, v99))
    {
      goto LABEL_55;
    }

    if (advance_tok(v1, v100, v101, v102))
    {
      goto LABEL_55;
    }

    v103 = OUTLINED_FUNCTION_48_8();
    if (lpta_loadp_setscan_r(v103, v104, v105))
    {
      goto LABEL_55;
    }

LABEL_78:
    OUTLINED_FUNCTION_24_21();
    if (!test_string_s())
    {
      *(v1 + 136) = v22;
      v172 = OUTLINED_FUNCTION_23_21();
      v22 = v37;
      if (test_ptr(v172, v173, v174))
      {
        goto LABEL_56;
      }

      goto LABEL_31;
    }

    goto LABEL_55;
  }

LABEL_15:
  v60 = OUTLINED_FUNCTION_69_6();
  starttest(v60, v61);
  v62 = OUTLINED_FUNCTION_48_8();
  v37 = v22;
  if (!lpta_loadp_setscan_l(v62, v63, v64))
  {
LABEL_76:
    v166 = OUTLINED_FUNCTION_82_5();
    savescptr(v166, v167, v168);
    OUTLINED_FUNCTION_58_7();
    if (test_string_s())
    {
      goto LABEL_55;
    }

    v169 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v169, v170, v171))
    {
      goto LABEL_55;
    }

    goto LABEL_78;
  }

LABEL_16:
  v65 = OUTLINED_FUNCTION_72_6();
  starttest(v65, v66);
  v67 = OUTLINED_FUNCTION_48_8();
  v37 = v22;
  if (!lpta_loadp_setscan_l(v67, v68, v69))
  {
LABEL_71:
    v160 = OUTLINED_FUNCTION_82_5();
    savescptr(v160, v161, v162);
    OUTLINED_FUNCTION_42_8();
    if (test_string_s())
    {
      goto LABEL_55;
    }

    v163 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v163, v164, v165))
    {
      goto LABEL_55;
    }

    goto LABEL_78;
  }

LABEL_17:
  v70 = OUTLINED_FUNCTION_72_6();
  starttest(v70, v71);
  v72 = OUTLINED_FUNCTION_48_8();
  if (!lpta_loadp_setscan_l(v72, v73, v74))
  {
LABEL_18:
    v37 = v22;
    v75 = OUTLINED_FUNCTION_82_5();
    savescptr(v75, v76, v77);
    OUTLINED_FUNCTION_42_8();
    if (test_string_s())
    {
      goto LABEL_55;
    }

    v78 = OUTLINED_FUNCTION_29_17();
    if (lpta_loadp_setscan_r(v78, v79, v80))
    {
      goto LABEL_55;
    }

    goto LABEL_78;
  }

LABEL_10:
  for (i = 2070; ; i = 2058)
  {
    v22 = *(v1 + i);
LABEL_33:
    OUTLINED_FUNCTION_111_1();
    if (v43)
    {
      v106 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v106, v107, v108);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        if (!mark_s())
        {
          break;
        }
      }
    }

LABEL_37:
    OUTLINED_FUNCTION_112_1();
    if (!v43)
    {
      goto LABEL_51;
    }

    v109 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v109, v110, v111);
    OUTLINED_FUNCTION_0_33();
    if (mark_s())
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_3_30();
    if (mark_s())
    {
      goto LABEL_51;
    }

    v112 = OUTLINED_FUNCTION_72_6();
    starttest_l(v112, v113);
    v114 = OUTLINED_FUNCTION_101_1();
    move_i(v114, v115, 1);
    v116 = OUTLINED_FUNCTION_86_4();
    v117 = mark_word_stress(v116);
    v118 = v22;
    if (!v117)
    {
LABEL_42:
      v119 = v118;
      v120 = OUTLINED_FUNCTION_72_6();
      starttest(v120, v121);
      v122 = OUTLINED_FUNCTION_48_8();
      if (lpta_loadp_setscan_r(v122, v123, v124) || (OUTLINED_FUNCTION_24_21(), test_string_s()) || (*(v1 + 136) = v22, v125 = OUTLINED_FUNCTION_23_21(), test_ptr(v125, v126, v127)))
      {
        v22 = v119;
      }

      else
      {
        v137 = OUTLINED_FUNCTION_25_20();
        lpta_rpta_loadp(v137, v138, v139);
        OUTLINED_FUNCTION_10_29();
        v22 = v119;
        if (!mark_s())
        {
          goto LABEL_51;
        }
      }

LABEL_46:
      v128 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v128, v129, v130);
      OUTLINED_FUNCTION_6_29();
      if (!mark_s())
      {
        goto LABEL_51;
      }
    }

    do
    {
LABEL_56:
      while (2)
      {
        v140 = *(v1 + 104);
        if (v140)
        {
          v141 = OUTLINED_FUNCTION_87_4(v140);
        }

        else
        {
          v142 = OUTLINED_FUNCTION_90_4();
          v141 = vback(v142, v143);
        }

        v88 = v22;
        v90 = v22;
        switch(v141)
        {
          case 1:
            goto LABEL_5;
          case 2:
            v144 = OUTLINED_FUNCTION_32_15();
            bspush_ca_scan(v144, v145);
            v146 = OUTLINED_FUNCTION_13_28();
            v149 = 10;
            goto LABEL_65;
          case 3:
            goto LABEL_29;
          case 4:
            v154 = OUTLINED_FUNCTION_31_16();
            bspush_ca_scan(v154, v155);
            v146 = OUTLINED_FUNCTION_13_28();
            v149 = 6;
            goto LABEL_65;
          case 5:
            v156 = OUTLINED_FUNCTION_47_8();
            bspush_ca_scan(v156, v157);
            v146 = OUTLINED_FUNCTION_13_28();
            v149 = 5;
            goto LABEL_65;
          case 6:
            v146 = OUTLINED_FUNCTION_4_29();
LABEL_65:
            if (testFldeq(v146, v147, v148, v149))
            {
              continue;
            }

            v88 = v22;
            goto LABEL_29;
          case 7:
          case 14:
            goto LABEL_33;
          case 8:
            goto LABEL_7;
          case 9:
            v158 = OUTLINED_FUNCTION_51_7();
            bspush_ca_scan(v158, v159);
            v150 = OUTLINED_FUNCTION_15_26();
            v153 = 4;
            goto LABEL_68;
          case 10:
            goto LABEL_54;
          case 11:
            v150 = OUTLINED_FUNCTION_14_26();
            v153 = 29;
LABEL_68:
            if (testFldeq(v150, v151, v152, v153))
            {
              continue;
            }

            v90 = v22;
            break;
          case 12:
            goto LABEL_8;
          case 13:
            goto LABEL_15;
          case 15:
            goto LABEL_16;
          case 16:
            v37 = v22;
            goto LABEL_76;
          case 17:
            goto LABEL_17;
          case 18:
            v37 = v22;
            goto LABEL_71;
          case 19:
            goto LABEL_10;
          case 20:
            goto LABEL_18;
          case 22:
            goto LABEL_37;
          case 23:
            goto LABEL_49;
          case 24:
          case 25:
          case 28:
            goto LABEL_51;
          case 26:
            v118 = v22;
            goto LABEL_42;
          case 27:
            goto LABEL_46;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_54:
      v22 = v90;
LABEL_30:
      ;
    }

    while (advance_tok(v1, v88, v90, v89));
LABEL_31:
    ;
  }

  v131 = OUTLINED_FUNCTION_72_6();
  starttest_l(v131, v132);
  v133 = OUTLINED_FUNCTION_25_20();
  pro_vs_det(v133);
LABEL_49:
  v134 = OUTLINED_FUNCTION_25_20();
  lpta_rpta_loadp(v134, v135, v136);
  OUTLINED_FUNCTION_2_31();
  if (mark_s())
  {
    goto LABEL_56;
  }

  mark_word_stress(v1);
LABEL_51:
  vretproc(v1);
  return 0;
}

uint64_t disambiguate_colher(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v145 = *MEMORY[0x277D85DE8];
  v141[0] = 0;
  v141[1] = 0;
  v140[0] = 0;
  v140[1] = 0;
  v138 = 0u;
  v139 = 0u;
  v137[0] = 0;
  v137[1] = 0;
  v136[25] = 0;
  v136[26] = 0;
  OUTLINED_FUNCTION_67_6(v4, v5, v6, v7, v8, v9, v10, v11, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12], v136[13], v136[14], v136[15], v136[16], v136[17], v136[18], v136[19], v136[20], v136[21], v136[22], v136[23], v136[24]);
  OUTLINED_FUNCTION_56_7();
  v12 = setjmp(v3);
  if (v12)
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_116_1(v12, v136, v144, v143, v142);
  if (v13)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_94_3(v13, v141);
  OUTLINED_FUNCTION_53_7();
  v139 = 0uLL;
  LODWORD(v138) = -65534;
  push_ptr_init(v1, v137);
  v15 = OUTLINED_FUNCTION_107_1();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_96_3();
  v19 = push_ptr_init(v17, v18);
  OUTLINED_FUNCTION_115_1(v19, v20, &null_str_8);
  v21 = OUTLINED_FUNCTION_57_7();
  fence_29(v21, v22, v23);
  OUTLINED_FUNCTION_125_0();
  v24 = OUTLINED_FUNCTION_81_5();
  v26 = lpta_loadp_setscan_l(v24, v25, v3);
  v27 = 0;
  if (!v26)
  {
    v28 = OUTLINED_FUNCTION_78_6();
    bspush_ca_scan(v28, v29);
    OUTLINED_FUNCTION_73_6();
    test_string_s();
    OUTLINED_FUNCTION_144_0();
    if (v31)
    {
      goto LABEL_29;
    }

LABEL_6:
    v32 = v30;
    OUTLINED_FUNCTION_102_1();
    savescptr(v1, v33, v137);
    v27 = v32;
  }

  while (2)
  {
    v34 = v27;
    lpta_loadpn(v1, v137);
    rpta_loadpn(v1, v140);
    if (compare_ptas(v1) || testeq(v1))
    {
      v35 = v34;
LABEL_10:
      v34 = v35;
    }

    npush_s(v1);
    WORD1(v138) = 4;
    npop(v1, &v138);
    v36 = v34;
LABEL_12:
    v37 = OUTLINED_FUNCTION_31_16();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_80_5();
    if (lpta_loadp_setscan_l(v39, v40, v41))
    {
      v42 = v36;
LABEL_14:
      v2 = v42;
      v43 = OUTLINED_FUNCTION_46_8();
      starttest(v43, v44);
      v45 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_l(v45, v46, v47))
      {
        v48 = v2;
LABEL_16:
        v36 = v48;
        v49 = OUTLINED_FUNCTION_34_14();
        starttest(v49, v50);
        v51 = OUTLINED_FUNCTION_80_5();
        if (!lpta_loadp_setscan_r(v51, v52, v53))
        {
          v54 = OUTLINED_FUNCTION_1_31();
          goto LABEL_19;
        }

LABEL_33:
        if (lpta_loadp_setscan_l(v1, v141, 5))
        {
LABEL_34:
          v84 = 2058;
          if (*(v1 + 3078) != *(v1 + 3074))
          {
LABEL_3:
            vretproc(v1);
            return 94;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v77 = OUTLINED_FUNCTION_8_29();
        if (testFldeq(v77, v78, v79, v80) || advance_tok(v1, v81, v82, v83))
        {
          goto LABEL_29;
        }
      }

      v84 = 2058;
      goto LABEL_37;
    }

    v54 = OUTLINED_FUNCTION_4_29();
LABEL_19:
    if (testFldeq(v54, v55, v56, v57) || (v58 = OUTLINED_FUNCTION_61_7(), npush_fld(v58, v59, v60)) || (WORD1(v138) = 4, npush_v(v1, &v138, v61, v62, v63, v64, v65, v66), if_testeq(v1, v67, v68, v69, v70, v71, v72, v73)))
    {
      v2 = v36;
      goto LABEL_29;
    }

    v2 = v36;
    if (advance_tok(v1, v74, v75, v76))
    {
      goto LABEL_29;
    }

    v84 = 2054;
LABEL_37:
    v90 = *(v1 + v84);
LABEL_38:
    v92 = v90;
    v93 = OUTLINED_FUNCTION_51_7();
    starttest(v93, v94);
    if (!lpta_loadp_setscan_r(v1, v141, 4) && !advance_tok(v1, v95, v96, v97) && !advance_tok(v1, v98, v99, v100))
    {
      v104 = advance_tok(v1, v101, v102, v103);
      v91 = v92;
      if (!v104)
      {
LABEL_42:
        v2 = v91;
        v105 = OUTLINED_FUNCTION_145_0();
        savescptr(v105, v106, v107);
        if (!advance_tok(v1, v108, v109, v110))
        {
LABEL_43:
          v111 = OUTLINED_FUNCTION_106_1();
          savescptr(v111, v112, v113);
          break;
        }

LABEL_29:
        v85 = *(v1 + 104);
        if (v85)
        {
          v86 = OUTLINED_FUNCTION_87_4(v85);
        }

        else
        {
          v87 = OUTLINED_FUNCTION_90_4();
          v86 = vback(v87, v88);
        }

        v89 = v86 - 1;
        v30 = v2;
        v27 = v2;
        v35 = v2;
        v36 = v2;
        v42 = v2;
        v48 = v2;
        v90 = v2;
        v91 = v2;
        switch(v89)
        {
          case 0:
            continue;
          case 1:
            goto LABEL_6;
          case 2:
            goto LABEL_10;
          case 3:
            goto LABEL_12;
          case 4:
            goto LABEL_14;
          case 5:
            goto LABEL_38;
          case 6:
            goto LABEL_16;
          case 7:
            goto LABEL_33;
          case 8:
            goto LABEL_34;
          case 10:
            goto LABEL_44;
          case 11:
            goto LABEL_42;
          case 12:
            goto LABEL_43;
          case 13:
            goto LABEL_47;
          case 14:
          case 15:
            goto LABEL_53;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_44:
  OUTLINED_FUNCTION_112_1();
  if (v114 && (v115 = OUTLINED_FUNCTION_126_0(), lpta_rpta_loadp(v115, v116, v117), OUTLINED_FUNCTION_3_30(), !mark_s()))
  {
    v134 = OUTLINED_FUNCTION_126_0();
    assign_inf_category(v134);
  }

  else
  {
LABEL_47:
    OUTLINED_FUNCTION_121_0();
    if (v114)
    {
      v118 = OUTLINED_FUNCTION_126_0();
      lpta_rpta_loadp(v118, v119, v120);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        WORD1(v138) = 4;
        v121 = OUTLINED_FUNCTION_71_6();
        if (!mark_v(v121, v122, v123, v124, v125))
        {
          v126 = OUTLINED_FUNCTION_106_1();
          lpta_rpta_loadp(v126, v127, v128);
          v129 = OUTLINED_FUNCTION_44_8();
          insert_2pt_s(v129, v130, v131, v132, v133);
        }
      }
    }
  }

LABEL_53:
  vretproc(v1);
  return 0;
}

uint64_t disambiguate_muito(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v134 = *MEMORY[0x277D85DE8];
  v123 = 0;
  v124 = 0;
  OUTLINED_FUNCTION_27_18(v3, v4, v5, v6, v7, v8, v9, v10, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
  OUTLINED_FUNCTION_56_7();
  v11 = setjmp(v2);
  if (v11 || OUTLINED_FUNCTION_39_10(v11, &v96, v12, v13, v14, v15, v16, v17, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_26_20();
  get_parm(v19, v20, v21, -6);
  v22 = OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_114_1(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  push_ptr_init(v24, v25);
  fence_29(v1, 0, &null_str_8);
  v26 = OUTLINED_FUNCTION_24_21();
  fence_29(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_97_3();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_41_8();
  if (!lpta_loadp_setscan_l(v31, v32, v33))
  {
    v34 = OUTLINED_FUNCTION_14_26();
    v37 = 18;
    goto LABEL_6;
  }

  while (2)
  {
    v52 = OUTLINED_FUNCTION_38_11();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_54_7();
    if (lpta_loadp_setscan_l(v54, v55, v56))
    {
LABEL_20:
      v57 = OUTLINED_FUNCTION_47_8();
      starttest(v57, v58);
      v59 = OUTLINED_FUNCTION_54_7();
      if (lpta_loadp_setscan_l(v59, v60, v61))
      {
LABEL_3:
        vretproc(v1);
        return 94;
      }

LABEL_21:
      OUTLINED_FUNCTION_99_2();
      v62 = OUTLINED_FUNCTION_74_6();
      savescptr(v62, v63, v64);
LABEL_22:
      v65 = OUTLINED_FUNCTION_34_14();
      if (test_synch(v65, v66, 1, v67))
      {
        goto LABEL_15;
      }

      v68 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_r(v68, v69, v70) || advance_tok(v1, v71, v72, v73))
      {
        goto LABEL_15;
      }

      v34 = OUTLINED_FUNCTION_1_31();
LABEL_6:
      if (!testFldeq(v34, v35, v36, v37) && !advance_tok(v1, v38, v39, v40))
      {
        v41 = 2054;
        goto LABEL_9;
      }

LABEL_15:
      v48 = *(v1 + 104);
      if (v48)
      {
        v49 = OUTLINED_FUNCTION_87_4(v48);
      }

      else
      {
        v50 = OUTLINED_FUNCTION_90_4();
        v49 = vback(v50, v51);
      }

      v43 = 0;
      v42 = 0;
      switch(v49)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_10;
        case 3:
          goto LABEL_20;
        case 4:
          goto LABEL_26;
        case 5:
          goto LABEL_30;
        case 7:
          goto LABEL_21;
        case 8:
          goto LABEL_22;
        case 9:
          goto LABEL_32;
        case 10:
          goto LABEL_34;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_26:
  v74 = OUTLINED_FUNCTION_74_6();
  savescptr(v74, v75, v76);
  v77 = OUTLINED_FUNCTION_7_29();
  if (testFldeq(v77, v78, v79, v80))
  {
    goto LABEL_15;
  }

  if (advance_tok(v1, v81, v82, v83))
  {
    goto LABEL_15;
  }

  v84 = OUTLINED_FUNCTION_80_5();
  if (lpta_loadp_setscan_r(v84, v85, v86) || advance_tok(v1, v87, v88, v89))
  {
    goto LABEL_15;
  }

LABEL_30:
  v90 = OUTLINED_FUNCTION_31_16();
  if (test_synch(v90, v91, 1, v92))
  {
    goto LABEL_15;
  }

  v41 = 2078;
LABEL_9:
  v42 = *(v1 + v41);
LABEL_10:
  v43 = v42;
  OUTLINED_FUNCTION_121_0();
  if (!v44 || (v45 = OUTLINED_FUNCTION_19_22(), lpta_rpta_loadp(v45, v46, v47), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()))
  {
LABEL_32:
    if (*(v1 + 2078) == v43)
    {
      v93 = OUTLINED_FUNCTION_19_22();
      lpta_rpta_loadp(v93, v94, v95);
      OUTLINED_FUNCTION_0_33();
      mark_s();
    }
  }

LABEL_34:
  vretproc(v1);
  return 0;
}

uint64_t disambiguate_segundo(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_27_18(v3, v4, v5, v6, v7, v8, v9, v10, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228, v232, v236, v240, v244, v248, v252, v255, v258);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v225, v229, v233, v237, v241, v245, v249, v253, v256, v259, v261, v263, v265, v267);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v257, v260, v262, SHIDWORD(v262), v264, SWORD2(v264), SHIWORD(v264), v266, SWORD2(v266), SBYTE6(v266), SHIBYTE(v266), v268, v269))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_26_20();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_70_6(v31, v32, v33, v34, v35, v36, v37, v38, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227, v231, v235, v239, v243, v247, v251);
  v39 = 0;
  v42 = OUTLINED_FUNCTION_115_1(v40, v41, &null_str_8);
  OUTLINED_FUNCTION_104_1(v42, v43, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  v44 = OUTLINED_FUNCTION_77_6();
  lpta_loadpn(v44, v45);
  rpta_loadpn(v1, (v1 + 177));
  if (!compare_ptas(v1))
  {
    if (!testeq(v1))
    {
      OUTLINED_FUNCTION_78_6();
      bspush_ca_boa();
      v46 = OUTLINED_FUNCTION_76_6();
      if (lpta_loadp_setscan_r(v46, v47, 0))
      {
        LODWORD(v51) = 0;
      }

      else
      {
        v52 = advance_tok(v1, v48, v49, v50);
        LODWORD(v53) = 0;
        LODWORD(v51) = 0;
        if (!v52)
        {
LABEL_10:
          v54 = OUTLINED_FUNCTION_38_11();
          if (test_synch(v54, v55, 1, v56))
          {
            LODWORD(v51) = v53;
          }

          else
          {
            LODWORD(v51) = 1;
          }
        }
      }

      goto LABEL_30;
    }

    v39 = 0;
  }

LABEL_14:
  v57 = OUTLINED_FUNCTION_31_16();
  starttest(v57, v58);
  v59 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_l(v59, v60, v61))
  {
    v62 = OUTLINED_FUNCTION_47_8();
    bspush_ca_scan(v62, v63);
    v64 = OUTLINED_FUNCTION_14_26();
    v67 = testFldeq(v64, v65, v66, 29);
    v69 = v39;
    v51 = v39;
    if (v67)
    {
      goto LABEL_30;
    }

LABEL_16:
    v70 = v69;
    goto LABEL_17;
  }

LABEL_20:
  v72 = OUTLINED_FUNCTION_34_14();
  starttest(v72, v73);
  v74 = OUTLINED_FUNCTION_35_13();
  if (!lpta_loadp_setscan_r(v74, v75, v76))
  {
    v95 = OUTLINED_FUNCTION_52_7();
    bspush_ca_scan(v95, v96);
    v97 = OUTLINED_FUNCTION_14_26();
    v100 = testFldeq(v97, v98, v99, 37);
    v101 = v39;
    v51 = v39;
    if (v100)
    {
      goto LABEL_30;
    }

LABEL_26:
    v70 = v101;
LABEL_17:
    v71 = advance_tok(v1, v51, v68, v69);
    LODWORD(v51) = v70;
    if (!v71)
    {
      goto LABEL_57;
    }

    do
    {
      do
      {
LABEL_30:
        while (2)
        {
          v108 = v1[13];
          if (v108)
          {
            v109 = OUTLINED_FUNCTION_87_4(v108);
            v53 = v51;
          }

          else
          {
            v109 = vback(v1, v51);
            v53 = 0;
          }

          v69 = v53;
          v101 = v53;
          v68 = v53;
          v93 = v53;
          switch(v109)
          {
            case 1:
              v39 = v53;
              goto LABEL_14;
            case 2:
              bspop_boa(v1);
              goto LABEL_57;
            case 3:
              goto LABEL_10;
            case 4:
              goto LABEL_57;
            case 5:
              v39 = v53;
              goto LABEL_20;
            case 6:
              v110 = OUTLINED_FUNCTION_4_29();
              v114 = testFldeq(v110, v111, v112, v113);
              v69 = v53;
              v51 = v53;
              if (!v114)
              {
                goto LABEL_16;
              }

              continue;
            case 7:
              goto LABEL_16;
            case 8:
              v39 = v53;
              goto LABEL_21;
            case 9:
              v119 = OUTLINED_FUNCTION_14_26();
              v122 = testFldeq(v119, v120, v121, 38);
              v101 = v53;
              v51 = v53;
              if (!v122)
              {
                goto LABEL_26;
              }

              continue;
            case 10:
              goto LABEL_26;
            case 11:
              v39 = v53;
              goto LABEL_22;
            case 12:
              v123 = OUTLINED_FUNCTION_101_1();
              bspush_ca_scan(v123, v124);
              v125 = OUTLINED_FUNCTION_4_29();
              v129 = testFldeq(v125, v126, v127, v128);
              LODWORD(v51) = v53;
              if (!v129)
              {
                OUTLINED_FUNCTION_81_5();
                bspush_ca_scan_boa();
                v130 = OUTLINED_FUNCTION_5_29();
                if (testFldeq(v130, v131, v132, v133))
                {
                  LODWORD(v51) = v53;
                }

                else
                {
                  LODWORD(v51) = 1;
                }
              }

              continue;
            case 13:
              goto LABEL_53;
            case 14:
              v138 = OUTLINED_FUNCTION_77_6();
              bspush_ca_scan(v138, v139);
              v115 = OUTLINED_FUNCTION_14_26();
              v118 = 37;
              break;
            case 15:
              bspop_boa(v1);
              v68 = v53;
              goto LABEL_53;
            case 16:
              v140 = OUTLINED_FUNCTION_91_3();
              bspush_ca_scan(v140, v141);
              v115 = OUTLINED_FUNCTION_14_26();
              v118 = 3;
              break;
            case 17:
              v115 = OUTLINED_FUNCTION_14_26();
              v118 = 4;
              break;
            case 18:
              goto LABEL_49;
            case 19:
              v134 = OUTLINED_FUNCTION_14_26();
              v137 = testFldeq(v134, v135, v136, 10);
              v93 = v53;
              v51 = v53;
              if (!v137)
              {
                goto LABEL_24;
              }

              continue;
            case 20:
              goto LABEL_24;
            case 22:
              goto LABEL_62;
            case 23:
            case 24:
              goto LABEL_69;
            default:
              goto LABEL_3;
          }

          break;
        }

        v142 = testFldeq(v115, v116, v117, v118);
        v68 = v53;
        v51 = v53;
      }

      while (v142);
LABEL_53:
      v94 = v68;
LABEL_54:
      v144 = advance_tok(v1, v51, v68, v69);
      LODWORD(v51) = v94;
    }

    while (v144);
    goto LABEL_57;
  }

LABEL_21:
  v77 = OUTLINED_FUNCTION_51_7();
  starttest(v77, v78);
  v79 = OUTLINED_FUNCTION_80_5();
  if (!lpta_loadp_setscan_r(v79, v80, v81))
  {
    v102 = OUTLINED_FUNCTION_60_7();
    bspush_ca_scan(v102, v103);
    v104 = OUTLINED_FUNCTION_14_26();
    v107 = testFldeq(v104, v105, v106, 29);
    v51 = v39;
    v68 = v39;
    if (!v107)
    {
      goto LABEL_53;
    }

    goto LABEL_30;
  }

LABEL_22:
  v82 = OUTLINED_FUNCTION_72_6();
  starttest(v82, v83);
  v84 = OUTLINED_FUNCTION_80_5();
  if (!lpta_loadp_setscan_r(v84, v85, v86))
  {
    v87 = OUTLINED_FUNCTION_72_6();
    bspush_ca_scan(v87, v88);
    v89 = OUTLINED_FUNCTION_14_26();
    v92 = testFldeq(v89, v90, v91, 11);
    v51 = v39;
    v93 = v39;
    if (!v92)
    {
LABEL_24:
      v94 = v93;
      goto LABEL_54;
    }

    goto LABEL_30;
  }

LABEL_49:
  OUTLINED_FUNCTION_43_8();
  if (!v143)
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

LABEL_57:
  OUTLINED_FUNCTION_121_0();
  if (!v143 || (v145 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v145, v146, v147), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_6_29(), mark_s()) || (OUTLINED_FUNCTION_2_31(), mark_s()))
  {
LABEL_62:
    OUTLINED_FUNCTION_128_0();
    if (v143)
    {
      v148 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v148, v149, v150);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_40_9();
        if (!mark_i())
        {
          v151 = OUTLINED_FUNCTION_76_6();
          lpta_loadpn(v151, v152);
          rpta_loadpn(v1, (v1 + 177));
          if (!compare_ptas(v1) && !testeq(v1))
          {
            v153 = OUTLINED_FUNCTION_16_25();
            lpta_rpta_loadp(v153, v154, v155);
            OUTLINED_FUNCTION_2_31();
            mark_s();
          }
        }
      }
    }
  }

LABEL_69:
  vretproc(v1);
  return 0;
}

uint64_t disambiguate_sobre(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  v175 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_27_18(v4, v5, v6, v7, v8, v9, v10, v11, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);
  OUTLINED_FUNCTION_56_7();
  if (setjmp(v3) || (OUTLINED_FUNCTION_50_7(), OUTLINED_FUNCTION_116_1(v12, v13, v14, v15, v16)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v18 = OUTLINED_FUNCTION_26_20();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_92_3(v21, v174);
  v22 = OUTLINED_FUNCTION_76_6();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_89_4();
  v26 = push_ptr_init(v24, v25);
  v27 = 0;
  v29 = OUTLINED_FUNCTION_115_1(v26, v28, &null_str_8);
  OUTLINED_FUNCTION_104_1(v29, v30, &unk_2806BBF44);
  OUTLINED_FUNCTION_127_0();
  v31 = OUTLINED_FUNCTION_41_8();
  if (lpta_loadp_setscan_l(v31, v32, v33))
  {
LABEL_5:
    v34 = OUTLINED_FUNCTION_38_11();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_25_20();
    if (!followed_by_hyphen(v36))
    {
      v37 = OUTLINED_FUNCTION_54_7();
      if (!lpta_loadp_setscan_r(v37, v38, v39))
      {
        v82 = OUTLINED_FUNCTION_32_15();
        bspush_ca_scan(v82, v83);
        v84 = OUTLINED_FUNCTION_9_29();
        testFldeq(v84, v85, v86, v87);
        OUTLINED_FUNCTION_143_0();
        if (!v91)
        {
          goto LABEL_28;
        }

        goto LABEL_65;
      }
    }

LABEL_7:
    v40 = OUTLINED_FUNCTION_46_8();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_54_7();
    if (lpta_loadp_setscan_r(v42, v43, v44))
    {
LABEL_8:
      v45 = OUTLINED_FUNCTION_34_14();
      starttest(v45, v46);
      v47 = OUTLINED_FUNCTION_49_7();
      if (lpta_loadp_setscan_l(v47, v48, v49))
      {
LABEL_9:
        OUTLINED_FUNCTION_43_8();
        if (v50)
        {
          i = 2074;
          goto LABEL_30;
        }

        goto LABEL_3;
      }

      v52 = OUTLINED_FUNCTION_52_7();
      bspush_ca_scan(v52, v53);
      v54 = v27;
LABEL_13:
      v27 = v54;
      v55 = OUTLINED_FUNCTION_13_28();
      if (testFldeq(v55, v56, v57, 10) || advance_tok(v1, v58, v59, v60))
      {
LABEL_16:
        v2 = v27;
        goto LABEL_65;
      }
    }

    v61 = OUTLINED_FUNCTION_5_29();
    if (!testFldeq(v61, v62, v63, v64))
    {
      v2 = v27;
      if (advance_tok(v1, v65, v66, v67))
      {
        goto LABEL_65;
      }

      goto LABEL_29;
    }

    goto LABEL_16;
  }

  v68 = OUTLINED_FUNCTION_4_29();
  if (testFldeq(v68, v69, v70, v71) || (v72 = OUTLINED_FUNCTION_6_29(), testFldeq(v72, v73, v74, v75)) || (v76 = OUTLINED_FUNCTION_14_26(), testFldeq(v76, v77, v78, 2)) || advance_tok(v1, v79, v80, v81))
  {
    v2 = 0;
    goto LABEL_65;
  }

  for (i = 2054; ; i = 2058)
  {
LABEL_30:
    v92 = *(v1 + i);
LABEL_31:
    OUTLINED_FUNCTION_121_0();
    if (v50)
    {
      v93 = OUTLINED_FUNCTION_25_20();
      lpta_rpta_loadp(v93, v94, v95);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_6_29();
        if (!mark_s())
        {
          v96 = OUTLINED_FUNCTION_12_28();
          if (!OUTLINED_FUNCTION_140_0(v96))
          {
            goto LABEL_70;
          }
        }
      }
    }

LABEL_54:
    OUTLINED_FUNCTION_112_1();
    if (!v50)
    {
      break;
    }

    v115 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v115, v116, v117);
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

    v118 = OUTLINED_FUNCTION_12_28();
    if (OUTLINED_FUNCTION_140_0(v118))
    {
      break;
    }

    v119 = OUTLINED_FUNCTION_72_6();
    starttest_l(v119, v120);
    v121 = OUTLINED_FUNCTION_86_4();
    if (!lpta_loadp_setscan_r(v121, v122, 4))
    {
      v2 = v92;
      if (!advance_tok(v1, v123, v124, v125))
      {
LABEL_62:
        v126 = OUTLINED_FUNCTION_82_5();
        savescptr(v126, v127, v128);
        v132 = advance_tok(v1, v129, v130, v131);
        v114 = v2;
        if (v132)
        {
          goto LABEL_65;
        }

LABEL_63:
        v92 = v114;
        v133 = OUTLINED_FUNCTION_74_6();
        savescptr(v133, v134, v135);
      }
    }

LABEL_64:
    v136 = OUTLINED_FUNCTION_16_25();
    lpta_rpta_loadp(v136, v137, v138);
    v139 = OUTLINED_FUNCTION_44_8();
    v2 = v92;
    if (!insert_2pt_s(v139, v140, v141, v142, v143))
    {
      goto LABEL_70;
    }

    do
    {
LABEL_65:
      OUTLINED_FUNCTION_142_0();
      while (2)
      {
        v97 = *(v1 + 104);
        if (v97)
        {
          v98 = OUTLINED_FUNCTION_87_4(v97);
        }

        else
        {
          v99 = OUTLINED_FUNCTION_90_4();
          v98 = vback(v99, v100);
        }

        v101 = v98 - 1;
        v88 = v2;
        v54 = v2;
        switch(v101)
        {
          case 0:
            v27 = v2;
            goto LABEL_5;
          case 1:
            v92 = v2;
            goto LABEL_31;
          case 2:
            v27 = v2;
            goto LABEL_7;
          case 3:
            v102 = OUTLINED_FUNCTION_101_1();
            bspush_ca_scan(v102, v103);
            v104 = OUTLINED_FUNCTION_15_26();
            v107 = 4;
            goto LABEL_45;
          case 4:
            break;
          case 5:
            v104 = OUTLINED_FUNCTION_14_26();
            v107 = 29;
LABEL_45:
            if (testFldeq(v104, v105, v106, v107))
            {
              continue;
            }

            v88 = v2;
            break;
          case 6:
            v27 = v2;
            goto LABEL_8;
          case 7:
            goto LABEL_9;
          case 8:
            v108 = OUTLINED_FUNCTION_13_28();
            if (testFldeq(v108, v109, v110, 8) || advance_tok(v1, v111, v112, v113))
            {
              continue;
            }

            v54 = v2;
            goto LABEL_13;
          case 9:
            goto LABEL_13;
          case 11:
            v92 = v2;
            goto LABEL_54;
          case 12:
          case 13:
          case 18:
          case 19:
            goto LABEL_71;
          case 14:
            goto LABEL_66;
          case 15:
            v92 = v2;
            goto LABEL_64;
          case 16:
            goto LABEL_62;
          case 17:
            v114 = v2;
            goto LABEL_63;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_28:
      v2 = v88;
    }

    while (advance_tok(v1, v88, v89, v90));
LABEL_29:
    ;
  }

LABEL_66:
  OUTLINED_FUNCTION_128_0();
  if (v50)
  {
    v144 = OUTLINED_FUNCTION_25_20();
    lpta_rpta_loadp(v144, v145, v146);
    OUTLINED_FUNCTION_0_33();
    if (!mark_s())
    {
      OUTLINED_FUNCTION_40_9();
      if (!mark_i())
      {
LABEL_70:
        OUTLINED_FUNCTION_136_0();
      }
    }
  }

LABEL_71:
  vretproc(v1);
  return 0;
}

void is_nounadj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v132 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  HIDWORD(v129) = 65532;
  OUTLINED_FUNCTION_67_6(v4, v5, v6, v7, v8, v9, v10, v11, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v128);
  OUTLINED_FUNCTION_84_4();
  bzero(v131, v12);
  if (setjmp(v131))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_37_12();
  if (OUTLINED_FUNCTION_141_0(v13, v14, v15, v16, v17, v18, v19, v20, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v127, v128, v129, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7]))
  {
    goto LABEL_3;
  }

  v21 = OUTLINED_FUNCTION_26_20();
  get_parm(v21, v22, v23, -6);
  OUTLINED_FUNCTION_53_7();
  v24 = OUTLINED_FUNCTION_101_1();
  push_ptr_init(v24, v25);
  fence_29(v3, 0, &null_str_8);
  v26 = OUTLINED_FUNCTION_73_6();
  fence_29(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_77_6();
  strip_plural(v29, v30, &v127, v130);
  if (v31)
  {
LABEL_5:
    v32 = 3022;
  }

  else
  {
    v32 = 3026;
  }

  HIWORD(v129) = *(v3 + v32);
  while (2)
  {
    v33 = OUTLINED_FUNCTION_81_5();
    starttest(v33, v34);
    if (*(v3 + 3022) != HIWORD(v129) || (v35 = OUTLINED_FUNCTION_41_8(), lpta_loadp_setscan_l(v35, v36, v37)))
    {
LABEL_10:
      v38 = OUTLINED_FUNCTION_134_0();
      starttest(v38, v39);
      if (*(v3 + 3026) != HIWORD(v129))
      {
        break;
      }

      v40 = OUTLINED_FUNCTION_41_8();
      if (lpta_loadp_setscan_l(v40, v41, v42))
      {
        break;
      }

      v43 = OUTLINED_FUNCTION_133_0();
      bspush_ca_scan(v43, v44);
LABEL_13:
      v45 = OUTLINED_FUNCTION_4_29();
      if (testFldeq(v45, v46, v47, v48))
      {
        goto LABEL_21;
      }

      v49 = OUTLINED_FUNCTION_71_6();
      v51 = 2;
      goto LABEL_18;
    }

    v52 = OUTLINED_FUNCTION_120_1();
    bspush_ca_scan(v52, v53);
LABEL_16:
    v54 = OUTLINED_FUNCTION_4_29();
    if (!testFldeq(v54, v55, v56, v57))
    {
      v49 = OUTLINED_FUNCTION_71_6();
      v51 = 1;
LABEL_18:
      if (!testFldeq(v49, v50, 4, v51) && !advance_tok(v3, v58, v59, v60))
      {
LABEL_20:
        v61 = OUTLINED_FUNCTION_77_6();
        lpta_rpta_loadp(v61, v62, v130);
        OUTLINED_FUNCTION_0_33();
        if (!mark_s())
        {
          OUTLINED_FUNCTION_88_4();
          OUTLINED_FUNCTION_149_0();
          break;
        }
      }
    }

LABEL_21:
    v63 = *(v3 + 104);
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
        goto LABEL_5;
      case 2:
        continue;
      case 3:
        goto LABEL_10;
      case 4:
        v67 = OUTLINED_FUNCTION_61_7();
        if (!testFldeq(v67, v68, v69, 4) && !advance_tok(v3, v70, v71, v72))
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      case 5:
        goto LABEL_16;
      case 6:
        goto LABEL_20;
      case 8:
        v73 = OUTLINED_FUNCTION_61_7();
        if (!testFldeq(v73, v74, v75, 4) && !advance_tok(v3, v76, v77, v78))
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      case 9:
        goto LABEL_13;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122_0();
}

void noun_vs_verb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_22_21();
  v518 = *MEMORY[0x277D85DE8];
  v513[1] = 0;
  v513[0] = 0;
  v512[1] = 0;
  v512[0] = 0;
  v510 = 0u;
  v511 = 0u;
  v508 = 0u;
  v509 = 0u;
  v507[0] = 0;
  v507[1] = 0;
  v506[0] = 0;
  v506[1] = 0;
  OUTLINED_FUNCTION_85_4();
  bzero(&v488, v4);
  OUTLINED_FUNCTION_84_4();
  bzero(v517, v5);
  if (setjmp(v517) || ventproc(v3, &v488, v516, v515, v514, v517))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_26_20();
  get_parm(v6, v7, v8, -6);
  OUTLINED_FUNCTION_53_7();
  v511 = 0uLL;
  LODWORD(v510) = -65534;
  v509 = 0uLL;
  LODWORD(v508) = -65534;
  v9 = OUTLINED_FUNCTION_101_1();
  push_ptr_init(v9, v10);
  v11 = push_ptr_init(v3, v506);
  v12 = 0;
  OUTLINED_FUNCTION_115_1(v11, v13, &null_str_8);
  v14 = OUTLINED_FUNCTION_73_6();
  fence_29(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_77_6();
  strip_plural(v17, v18, v507, v512);
  if (v19)
  {
LABEL_5:
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  npush_s(v3);
  WORD1(v508) = 4;
  npop(v3, &v508);
  v455 = 7;
  v21 = 23;
  v22 = 24;
  v23 = 27;
  v485 = 28;
  v484 = 31;
  v483 = 32;
  v24 = 33;
  v25 = 34;
  v480 = 36;
  v26 = 37;
  v27 = 38;
  v28 = 39;
  v29 = 40;
  v30 = 41;
  v31 = 42;
  v32 = 44;
  v33 = 45;
  v34 = 46;
  v35 = 47;
  v36 = 48;
  v37 = 52;
  v38 = 54;
  v39 = 55;
  v40 = 56;
  v41 = 57;
  v463 = 58;
  v462 = 59;
  v461 = 60;
  v460 = 62;
  v459 = 68;
  v458 = 70;
  v457 = 71;
  v42 = 72;
  v452 = 6;
  v454 = 8;
  v453 = 12;
  while (2)
  {
    v456 = v42;
    v464 = v41;
    v465 = v40;
    v466 = v39;
    v467 = v38;
    v468 = v37;
    v469 = v36;
    v470 = v35;
    v471 = v34;
    v472 = v33;
    v473 = v32;
    v474 = v31;
    v475 = v30;
    v476 = v29;
    v477 = v28;
    v478 = v27;
    v479 = v26;
    v481 = v25;
    v482 = v24;
    v43 = OUTLINED_FUNCTION_33_15();
    if (!lpta_loadp_setscan_r(v43, v44, v45) && !advance_tok(v3, v46, v47, v48))
    {
      savetok(v3, &v510);
    }

LABEL_11:
    v49 = OUTLINED_FUNCTION_32_15();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_33_15();
    if (!lpta_loadp_setscan_l(v51, v52, v53))
    {
      v165 = OUTLINED_FUNCTION_8_29();
LABEL_85:
      if (!testFldeq(v165, v166, v167, v168))
      {
LABEL_91:
        v151 = advance_tok(v3, v156, v157, v158);
        goto LABEL_92;
      }

      goto LABEL_182;
    }

LABEL_12:
    starttest(v3, v452);
    if (!lpta_loadp_setscan_r(v3, v512, 2))
    {
      v119 = OUTLINED_FUNCTION_8_29();
      if (testFldeq(v119, v120, v121, v122) || advance_tok(v3, v123, v124, v125))
      {
        goto LABEL_182;
      }

      starttest(v3, v455);
      v126 = OUTLINED_FUNCTION_33_15();
      if (lpta_loadp_setscan_l(v126, v127, v128))
      {
LABEL_41:
        v129 = OUTLINED_FUNCTION_51_7();
        starttest(v129, v130);
        v131 = OUTLINED_FUNCTION_33_15();
        if (lpta_loadp_setscan_l(v131, v132, v133))
        {
          goto LABEL_188;
        }

        v134 = OUTLINED_FUNCTION_1_31();
        if (testFldeq(v134, v135, v136, v137) || advance_tok(v3, v138, v139, v140))
        {
          goto LABEL_182;
        }

        bspush_ca_scan(v3, v453);
        v141 = v20;
LABEL_45:
        v142 = v141;
        v143 = OUTLINED_FUNCTION_120_1();
        bspush_ca_scan(v143, v144);
        v145 = v142;
LABEL_46:
        v20 = v145;
        bspush_ca_scan(v3, 21);
        v146 = OUTLINED_FUNCTION_13_28();
        v149 = 10;
LABEL_158:
        v375 = testFldeq(v146, v147, v148, v149);
        v259 = v20;
        v156 = v20;
        if (v375)
        {
          goto LABEL_93;
        }

LABEL_159:
        LODWORD(v20) = v259;
      }

      else
      {
        v193 = OUTLINED_FUNCTION_14_26();
        if (testFldeq(v193, v194, v195, 11) || advance_tok(v3, v196, v197, v198))
        {
          goto LABEL_182;
        }

        bspush_ca_scan(v3, v454);
        v199 = OUTLINED_FUNCTION_13_28();
        v202 = 10;
LABEL_148:
        v366 = testFldeq(v199, v200, v201, v202);
        v157 = v20;
        v156 = v20;
        if (v366)
        {
          goto LABEL_93;
        }

LABEL_149:
        LODWORD(v20) = v157;
      }

      goto LABEL_145;
    }

LABEL_13:
    v54 = OUTLINED_FUNCTION_146_0();
    starttest(v54, v55);
    v56 = OUTLINED_FUNCTION_91_3();
    if (!followed_by_hyphen(v56))
    {
      v57 = OUTLINED_FUNCTION_41_8();
      if (!lpta_loadp_setscan_r(v57, v58, v59))
      {
        v159 = OUTLINED_FUNCTION_81_5();
        bspush_ca_scan(v159, v160);
        v161 = OUTLINED_FUNCTION_9_29();
LABEL_155:
        v374 = testFldeq(v161, v162, v163, v164);
        v158 = v20;
        v156 = v20;
        if (v374)
        {
          goto LABEL_93;
        }

LABEL_156:
        LODWORD(v20) = v158;
LABEL_145:
        v365 = advance_tok(v3, v156, v157, v158);
        LODWORD(v156) = v20;
        if (v365)
        {
          goto LABEL_93;
        }

        goto LABEL_188;
      }
    }

LABEL_15:
    v60 = OUTLINED_FUNCTION_133_0();
    starttest(v60, v61);
    v62 = OUTLINED_FUNCTION_91_3();
    if (!lpta_loadp_setscan_l(v62, v63, 1))
    {
      bspush_ca_scan(v3, v485);
      v150 = v20;
LABEL_48:
      LODWORD(v20) = v150;
      OUTLINED_FUNCTION_20_21();
      v151 = test_string_s();
LABEL_92:
      LODWORD(v156) = v20;
      if (v151)
      {
        goto LABEL_93;
      }

      goto LABEL_188;
    }

LABEL_16:
    v64 = OUTLINED_FUNCTION_91_3();
    if (!lpta_loadp_setscan_l(v64, v65, 5))
    {
      goto LABEL_188;
    }

LABEL_17:
    starttest(v3, v484);
    v66 = OUTLINED_FUNCTION_33_15();
    if (!lpta_loadp_setscan_l(v66, v67, v68))
    {
      v152 = OUTLINED_FUNCTION_13_28();
LABEL_50:
      v155 = 10;
      goto LABEL_51;
    }

LABEL_18:
    starttest(v3, v483);
    v69 = OUTLINED_FUNCTION_33_15();
    if (!lpta_loadp_setscan_l(v69, v70, v71))
    {
LABEL_165:
      v377 = OUTLINED_FUNCTION_147_0();
      savescptr(v377, v482, v506);
      v378 = OUTLINED_FUNCTION_14_26();
      if (!testFldeq(v378, v379, v380, 12))
      {
        v384 = advance_tok(v3, v381, v382, v383);
        if (!v384 && !OUTLINED_FUNCTION_124_0(v384, v385, v386, v387, v388, v389, v390, v391, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505))
        {
          bspush_ca_scan(v3, v481);
          v369 = OUTLINED_FUNCTION_15_26();
          v372 = 9;
LABEL_152:
          v373 = testFldeq(v369, v370, v371, v372);
          v260 = v20;
          v156 = v20;
          if (v373)
          {
            goto LABEL_93;
          }

LABEL_153:
          LODWORD(v20) = v260;
          goto LABEL_91;
        }
      }

LABEL_182:
      LODWORD(v156) = v20;
      goto LABEL_93;
    }

LABEL_19:
    starttest(v3, v480);
    v72 = OUTLINED_FUNCTION_33_15();
    if (!lpta_loadp_setscan_l(v72, v73, v74))
    {
LABEL_169:
      v392 = OUTLINED_FUNCTION_147_0();
      savescptr(v392, v479, v506);
      v393 = OUTLINED_FUNCTION_14_26();
      if (testFldeq(v393, v394, v395, 12))
      {
        goto LABEL_182;
      }

      v399 = advance_tok(v3, v396, v397, v398);
      if (v399 || OUTLINED_FUNCTION_124_0(v399, v400, v401, v402, v403, v404, v405, v406, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505))
      {
        goto LABEL_182;
      }

      v152 = OUTLINED_FUNCTION_15_26();
      v155 = 11;
LABEL_51:
      if (testFldeq(v152, v153, v154, v155))
      {
        goto LABEL_182;
      }

      goto LABEL_145;
    }

LABEL_20:
    starttest(v3, v478);
    v75 = OUTLINED_FUNCTION_33_15();
    if (!lpta_loadp_setscan_l(v75, v76, v77))
    {
      v169 = OUTLINED_FUNCTION_14_26();
      if (testFldeq(v169, v170, v171, 11))
      {
        goto LABEL_182;
      }

      v487 = v23;
      v172 = OUTLINED_FUNCTION_71_6();
      if (npush_fld(v172, v173, 4u) || (WORD1(v510) = 4, npush_v(v3, &v510, v174, v175, v176, v177, v178, v179), if_testeq(v3, v180, v181, v182, v183, v184, v185, v186)))
      {
        LODWORD(v156) = v20;
        goto LABEL_93;
      }

      v255 = advance_tok(v3, v187, v188, v189);
      LODWORD(v156) = v20;
      if (!v255)
      {
        goto LABEL_188;
      }

LABEL_93:
      v257 = v3[13];
      if (v257)
      {
        v258 = OUTLINED_FUNCTION_87_4(v257);
        v20 = v156;
      }

      else
      {
        v258 = vback(v3, v156);
        v20 = 0;
      }

      v157 = v20;
      v141 = v20;
      v145 = v20;
      v259 = v20;
      v158 = v20;
      v150 = v20;
      v260 = v20;
      v207 = v20;
      v250 = v20;
      v252 = v20;
      v254 = v20;
      switch(v258)
      {
        case 1:
          v12 = v20;
          goto LABEL_5;
        case 2:
          v25 = v481;
          v24 = v482;
          v27 = v478;
          v26 = v479;
          v29 = v476;
          v28 = v477;
          v31 = v474;
          v30 = v475;
          v33 = v472;
          v32 = v473;
          v35 = v470;
          v34 = v471;
          v37 = v468;
          v36 = v469;
          v39 = v466;
          v38 = v467;
          v41 = v464;
          v40 = v465;
          v42 = v456;
          continue;
        case 3:
          goto LABEL_11;
        case 4:
          goto LABEL_12;
        case 5:
        case 10:
        case 11:
        case 47:
        case 50:
        case 53:
          goto LABEL_188;
        case 6:
          goto LABEL_13;
        case 7:
          goto LABEL_41;
        case 8:
          v199 = OUTLINED_FUNCTION_13_28();
          v202 = 6;
          goto LABEL_148;
        case 9:
          goto LABEL_149;
        case 12:
          v261 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v261, v262);
          v263 = OUTLINED_FUNCTION_14_26();
          v266 = 37;
          goto LABEL_118;
        case 13:
          goto LABEL_45;
        case 14:
          v310 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v310, v311);
          v263 = OUTLINED_FUNCTION_14_26();
          v266 = 3;
          goto LABEL_118;
        case 15:
          goto LABEL_119;
        case 16:
          v289 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v289, v290);
          v263 = OUTLINED_FUNCTION_15_26();
          goto LABEL_115;
        case 17:
          v263 = OUTLINED_FUNCTION_13_28();
LABEL_115:
          v266 = 2;
LABEL_118:
          v312 = testFldeq(v263, v264, v265, v266);
          v156 = v20;
          if (v312)
          {
            goto LABEL_93;
          }

LABEL_119:
          v313 = advance_tok(v3, v156, v157, v158);
          v141 = v20;
          LODWORD(v156) = v20;
          if (!v313)
          {
            goto LABEL_45;
          }

          goto LABEL_93;
        case 18:
          v291 = OUTLINED_FUNCTION_4_29();
          v295 = testFldeq(v291, v292, v293, v294);
          LODWORD(v156) = v20;
          if (v295)
          {
            goto LABEL_93;
          }

          OUTLINED_FUNCTION_72_6();
          goto LABEL_160;
        case 19:
          goto LABEL_46;
        case 20:
          bspop_boa(v3);
          v323 = advance_tok(v3, v320, v321, v322);
          v145 = v20;
          LODWORD(v156) = v20;
          if (!v323)
          {
            goto LABEL_46;
          }

          goto LABEL_93;
        case 21:
          v146 = OUTLINED_FUNCTION_13_28();
          v149 = 6;
          goto LABEL_158;
        case 22:
          goto LABEL_159;
        case 23:
          goto LABEL_15;
        case 24:
          v367 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v367, v368);
          v161 = OUTLINED_FUNCTION_15_26();
          v164 = 4;
          goto LABEL_155;
        case 25:
          goto LABEL_156;
        case 26:
          v161 = OUTLINED_FUNCTION_14_26();
          v164 = 29;
          goto LABEL_155;
        case 27:
          goto LABEL_16;
        case 28:
          OUTLINED_FUNCTION_20_21();
          v280 = test_string_s();
          v150 = v20;
          LODWORD(v156) = v20;
          if (!v280)
          {
            goto LABEL_48;
          }

          goto LABEL_93;
        case 29:
          goto LABEL_48;
        case 30:
          goto LABEL_17;
        case 31:
          goto LABEL_18;
        case 32:
          goto LABEL_19;
        case 33:
          goto LABEL_165;
        case 34:
          v369 = OUTLINED_FUNCTION_15_26();
          v372 = 10;
          goto LABEL_152;
        case 35:
          goto LABEL_153;
        case 36:
          goto LABEL_20;
        case 37:
          goto LABEL_169;
        case 38:
          goto LABEL_21;
        case 39:
          goto LABEL_22;
        case 40:
          goto LABEL_23;
        case 41:
          goto LABEL_24;
        case 42:
          v267 = OUTLINED_FUNCTION_14_26();
          v270 = testFldeq(v267, v268, v269, 4);
          LODWORD(v156) = v20;
          if (!v270)
          {
            v273 = advance_tok(v3, v20, v271, v272);
            v207 = v20;
            LODWORD(v156) = v20;
            if (!v273)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_93;
        case 43:
          goto LABEL_67;
        case 44:
          goto LABEL_25;
        case 45:
          goto LABEL_26;
        case 46:
          goto LABEL_27;
        case 48:
          bspop_boa(v3);
          v327 = advance_tok(v3, v324, v325, v326);
          LODWORD(v156) = v20;
          if (v327)
          {
            goto LABEL_93;
          }

          OUTLINED_FUNCTION_72_6();
          bspush_ca_scan_boa();
          v328 = OUTLINED_FUNCTION_5_29();
          v332 = testFldeq(v328, v329, v330, v331);
          LODWORD(v156) = v20;
          if (v332)
          {
            goto LABEL_93;
          }

          v376 = advance_tok(v3, v20, v333, v334);
          goto LABEL_162;
        case 49:
          bspop_boa(v3);
          goto LABEL_188;
        case 52:
          goto LABEL_30;
        case 54:
          goto LABEL_31;
        case 55:
          goto LABEL_32;
        case 56:
          goto LABEL_173;
        case 57:
          goto LABEL_33;
        case 58:
          goto LABEL_178;
        case 59:
          goto LABEL_34;
        case 60:
          v281 = OUTLINED_FUNCTION_1_31();
          v285 = testFldeq(v281, v282, v283, v284);
          LODWORD(v156) = v20;
          if (!v285)
          {
            v288 = advance_tok(v3, v20, v286, v287);
            v250 = v20;
            LODWORD(v156) = v20;
            if (!v288)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_93;
        case 61:
          goto LABEL_82;
        case 62:
          v274 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v274, v275);
          v276 = OUTLINED_FUNCTION_4_29();
          goto LABEL_129;
        case 63:
          goto LABEL_83;
        case 64:
          v314 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v314, v315);
          v276 = OUTLINED_FUNCTION_14_26();
          v279 = 3;
          goto LABEL_129;
        case 65:
          goto LABEL_130;
        case 66:
          v335 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v335, v336);
          v276 = OUTLINED_FUNCTION_14_26();
          v279 = 37;
          goto LABEL_129;
        case 67:
          v276 = OUTLINED_FUNCTION_9_29();
LABEL_129:
          v337 = testFldeq(v276, v277, v278, v279);
          v156 = v20;
          if (v337)
          {
            goto LABEL_93;
          }

LABEL_130:
          v338 = advance_tok(v3, v156, v157, v158);
          v252 = v20;
          LODWORD(v156) = v20;
          if (!v338)
          {
            goto LABEL_83;
          }

          goto LABEL_93;
        case 68:
          v296 = OUTLINED_FUNCTION_5_29();
          v300 = testFldeq(v296, v297, v298, v299);
          LODWORD(v156) = v20;
          if (!v300)
          {
            v303 = advance_tok(v3, v20, v301, v302);
            v254 = v20;
            LODWORD(v156) = v20;
            if (!v303)
            {
              goto LABEL_84;
            }
          }

          goto LABEL_93;
        case 69:
          goto LABEL_84;
        case 71:
          goto LABEL_35;
        case 72:
          bspop_boa(v3);
          v339 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v339, v340);
          v306 = OUTLINED_FUNCTION_4_29();
          goto LABEL_136;
        case 73:
          v304 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v304, v305);
          v306 = OUTLINED_FUNCTION_14_26();
          v309 = 37;
          goto LABEL_136;
        case 74:
          goto LABEL_137;
        case 75:
          v343 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v343, v344);
          v306 = OUTLINED_FUNCTION_14_26();
          v309 = 3;
          goto LABEL_136;
        case 76:
          v306 = OUTLINED_FUNCTION_9_29();
LABEL_136:
          v345 = testFldeq(v306, v307, v308, v309);
          v156 = v20;
          if (v345)
          {
            goto LABEL_93;
          }

LABEL_137:
          v346 = advance_tok(v3, v156, v157, v158);
          LODWORD(v156) = v20;
          if (v346)
          {
            goto LABEL_93;
          }

          v347 = OUTLINED_FUNCTION_80_5();
          v350 = lpta_loadp_setscan_r(v347, v348, v349);
          LODWORD(v156) = v20;
          if (v350)
          {
            goto LABEL_93;
          }

          v353 = advance_tok(v3, v20, v351, v352);
          LODWORD(v156) = v20;
          if (v353)
          {
            goto LABEL_93;
          }

          v354 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v354, v355);
          v316 = OUTLINED_FUNCTION_4_29();
LABEL_142:
          v358 = testFldeq(v316, v317, v318, v319);
          v156 = v20;
          if (v358)
          {
            goto LABEL_93;
          }

LABEL_143:
          v359 = advance_tok(v3, v156, v157, v158);
          LODWORD(v156) = v20;
          if (!v359)
          {
            v360 = OUTLINED_FUNCTION_1_31();
            v364 = testFldeq(v360, v361, v362, v363);
            v156 = v20;
            if (!v364)
            {
              goto LABEL_145;
            }
          }

          goto LABEL_93;
        case 77:
          v356 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v356, v357);
          v316 = OUTLINED_FUNCTION_14_26();
          v319 = 37;
          goto LABEL_142;
        case 78:
          goto LABEL_143;
        case 79:
          v341 = OUTLINED_FUNCTION_72_6();
          bspush_ca_scan(v341, v342);
          v316 = OUTLINED_FUNCTION_14_26();
          v319 = 3;
          goto LABEL_142;
        case 80:
          v316 = OUTLINED_FUNCTION_9_29();
          goto LABEL_142;
        case 81:
          goto LABEL_193;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_21:
  starttest(v3, v477);
  v78 = OUTLINED_FUNCTION_33_15();
  if (!lpta_loadp_setscan_l(v78, v79, v80))
  {
    v190 = OUTLINED_FUNCTION_14_26();
    if (testFldeq(v190, v191, v192, 6))
    {
      goto LABEL_182;
    }

    v165 = OUTLINED_FUNCTION_1_31();
    goto LABEL_85;
  }

LABEL_22:
  starttest(v3, v476);
  v81 = OUTLINED_FUNCTION_33_15();
  if (!lpta_loadp_setscan_l(v81, v82, v83))
  {
    v203 = OUTLINED_FUNCTION_5_29();
    if (testFldeq(v203, v204, v205, v206))
    {
      goto LABEL_182;
    }

    v165 = OUTLINED_FUNCTION_15_26();
    goto LABEL_85;
  }

LABEL_23:
  starttest(v3, v475);
  v84 = OUTLINED_FUNCTION_33_15();
  if (!lpta_loadp_setscan_l(v84, v85, v86))
  {
    bspush_ca_scan(v3, v474);
    v207 = v20;
LABEL_67:
    LODWORD(v20) = v207;
    v208 = OUTLINED_FUNCTION_4_29();
    if (testFldeq(v208, v209, v210, v211))
    {
      goto LABEL_182;
    }

    v486 = v21;
    v21 = v23;
    v23 = v22;
    v22 = 21;
    v212 = OUTLINED_FUNCTION_71_6();
    if (npush_fld(v212, v213, 4u) || (WORD1(v508) = 4, npush_v(v3, &v508, v214, v215, v216, v217, v218, v219), if_testeq(v3, v220, v221, v222, v223, v224, v225, v226)))
    {
      OUTLINED_FUNCTION_132_0();
      goto LABEL_93;
    }

    advance_tok(v3, v227, v228, v229);
    OUTLINED_FUNCTION_132_0();
    if (!v256)
    {
      goto LABEL_188;
    }

    goto LABEL_93;
  }

LABEL_24:
  starttest(v3, v473);
  v87 = OUTLINED_FUNCTION_33_15();
  if (!lpta_loadp_setscan_l(v87, v88, v89))
  {
    v152 = OUTLINED_FUNCTION_14_26();
    goto LABEL_50;
  }

LABEL_25:
  starttest(v3, v472);
  v90 = OUTLINED_FUNCTION_33_15();
  if (!lpta_loadp_setscan_l(v90, v91, v92))
  {
    v152 = OUTLINED_FUNCTION_13_28();
    v155 = 8;
    goto LABEL_51;
  }

LABEL_26:
  starttest(v3, v471);
  v93 = OUTLINED_FUNCTION_33_15();
  if (lpta_loadp_setscan_l(v93, v94, v95))
  {
LABEL_27:
    OUTLINED_FUNCTION_43_8();
    if (!v96)
    {
      goto LABEL_3;
    }

    starttest(v3, v468);
    if (lpta_loadp_setscan_r(v3, v512, 2))
    {
LABEL_30:
      starttest(v3, v467);
      v97 = OUTLINED_FUNCTION_33_15();
      if (lpta_loadp_setscan_r(v97, v98, v99))
      {
LABEL_31:
        starttest(v3, v466);
        v100 = OUTLINED_FUNCTION_33_15();
        if (lpta_loadp_setscan_l(v100, v101, v102))
        {
LABEL_32:
          starttest(v3, v464);
          v103 = OUTLINED_FUNCTION_33_15();
          if (lpta_loadp_setscan_l(v103, v104, v105))
          {
LABEL_33:
            starttest(v3, v462);
            v106 = OUTLINED_FUNCTION_33_15();
            if (lpta_loadp_setscan_l(v106, v107, v108))
            {
LABEL_34:
              starttest(v3, v458);
              v109 = OUTLINED_FUNCTION_33_15();
              if (lpta_loadp_setscan_l(v109, v110, v111))
              {
                goto LABEL_3;
              }

LABEL_35:
              savescptr(v3, v457, v506);
              v112 = OUTLINED_FUNCTION_1_31();
              if (!testFldeq(v112, v113, v114, v115) && !advance_tok(v3, v116, v117, v118))
              {
LABEL_160:
                bspush_ca_scan_boa();
                v246 = OUTLINED_FUNCTION_5_29();
LABEL_161:
                v376 = testFldeq(v246, v247, v248, v249);
LABEL_162:
                if (v376)
                {
                  LODWORD(v156) = v20;
                }

                else
                {
                  LODWORD(v156) = 1;
                }

                goto LABEL_93;
              }

              goto LABEL_182;
            }

            bspush_ca_scan(v3, v461);
            v250 = v20;
LABEL_82:
            v251 = v250;
            bspush_ca_scan(v3, v460);
            v252 = v251;
LABEL_83:
            v253 = v252;
            bspush_ca_scan(v3, v459);
            v254 = v253;
LABEL_84:
            LODWORD(v20) = v254;
            v165 = OUTLINED_FUNCTION_7_29();
          }

          else
          {
LABEL_178:
            v427 = OUTLINED_FUNCTION_147_0();
            savescptr(v427, v463, v506);
            v428 = OUTLINED_FUNCTION_1_31();
            if (testFldeq(v428, v429, v430, v431))
            {
              goto LABEL_182;
            }

            v432 = OUTLINED_FUNCTION_28_17();
            if (testFldeq(v432, v433, v434, 2))
            {
              goto LABEL_182;
            }

            v438 = advance_tok(v3, v435, v436, v437);
            if (v438 || OUTLINED_FUNCTION_124_0(v438, v439, v440, v441, v442, v443, v444, v445, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505))
            {
              goto LABEL_182;
            }

            v165 = OUTLINED_FUNCTION_6_29();
          }
        }

        else
        {
LABEL_173:
          v407 = OUTLINED_FUNCTION_147_0();
          savescptr(v407, v465, v506);
          v408 = OUTLINED_FUNCTION_1_31();
          if (testFldeq(v408, v409, v410, v411))
          {
            goto LABEL_182;
          }

          v412 = OUTLINED_FUNCTION_6_29();
          if (testFldeq(v412, v413, v414, v415))
          {
            goto LABEL_182;
          }

          v419 = advance_tok(v3, v416, v417, v418);
          if (v419 || OUTLINED_FUNCTION_124_0(v419, v420, v421, v422, v423, v424, v425, v426, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505))
          {
            goto LABEL_182;
          }

          v165 = OUTLINED_FUNCTION_15_26();
          v168 = 9;
        }
      }

      else
      {
        v165 = OUTLINED_FUNCTION_15_26();
        v168 = 10;
      }

      goto LABEL_85;
    }

    v152 = OUTLINED_FUNCTION_15_26();
    v155 = 6;
    goto LABEL_51;
  }

  v230 = OUTLINED_FUNCTION_14_26();
  if (testFldeq(v230, v231, v232, 3) || advance_tok(v3, v233, v234, v235))
  {
    goto LABEL_182;
  }

  starttest(v3, v470);
  v236 = OUTLINED_FUNCTION_33_15();
  if (!lpta_loadp_setscan_l(v236, v237, v238) && !advance_tok(v3, v239, v240, v241))
  {
    v242 = OUTLINED_FUNCTION_1_31();
    if (!testFldeq(v242, v243, v244, v245))
    {
      bspush_ca_scan_boa();
      v246 = OUTLINED_FUNCTION_14_26();
      v249 = 5;
      goto LABEL_161;
    }

    goto LABEL_182;
  }

LABEL_188:
  OUTLINED_FUNCTION_121_0();
  if (!v96 || (lpta_rpta_loadp(v3, v513, v512), OUTLINED_FUNCTION_0_33(), mark_s()) || (OUTLINED_FUNCTION_15_26(), mark_s()) || (WORD1(v508) = 4, v446 = OUTLINED_FUNCTION_71_6(), mark_v(v446, v447, v448, v449, v450)))
  {
LABEL_193:
    OUTLINED_FUNCTION_112_1();
    if (v96)
    {
      lpta_rpta_loadp(v3, v513, v512);
      OUTLINED_FUNCTION_0_33();
      if (!mark_s())
      {
        OUTLINED_FUNCTION_3_30();
        mark_s();
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_122_0();
}

uint64_t mark_por_subcategory(uint64_t a1)
{
  OUTLINED_FUNCTION_22_21();
  OUTLINED_FUNCTION_18_23(v3, v4, v5, v6, v7, v8, v9, v10, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v202, v205);
  OUTLINED_FUNCTION_62_6(v11, v12, v13, v14, v15, v16, v17, v18, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v203, v206, v208, v210, v212, v214);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_17_24(v19, v20, v21, v22, v23, v24, v25, v26, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v204, v207, v209, SHIDWORD(v209), v211, SWORD2(v211), SHIWORD(v211), v213, SWORD2(v213), SBYTE6(v213), SHIBYTE(v213), v215, v216))
  {
    v28 = OUTLINED_FUNCTION_26_20();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_70_6(v31, v32, v33, v34, v35, v36, v37, v38, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198);
    fence_29(v1, 0, &null_str_8);
    v39 = OUTLINED_FUNCTION_72_6();
    starttest(v39, v40);
    v41 = OUTLINED_FUNCTION_41_8();
    if (lpta_loadp_setscan_r(v41, v42, v43))
    {
LABEL_5:
      v44 = OUTLINED_FUNCTION_16_25();
      lpta_rpta_loadp(v44, v45, v46);
      v47 = OUTLINED_FUNCTION_73_6();
      if (setd_lookup(v47, v48, 49) || (v49 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v49, v50, v51), OUTLINED_FUNCTION_11_28(), mark_s()))
      {
LABEL_14:
        v63 = OUTLINED_FUNCTION_16_25();
        lpta_rpta_loadp(v63, v64, v65);
        v66 = OUTLINED_FUNCTION_73_6();
        if (setd_lookup(v66, v67, 22) || (v68 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v68, v69, v70), OUTLINED_FUNCTION_11_28(), mark_s()))
        {
LABEL_16:
          v71 = OUTLINED_FUNCTION_16_25();
          lpta_rpta_loadp(v71, v72, v73);
          v74 = OUTLINED_FUNCTION_73_6();
          if (setd_lookup(v74, v75, 21) || (v76 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v76, v77, v78), OUTLINED_FUNCTION_11_28(), mark_s()))
          {
LABEL_18:
            v79 = OUTLINED_FUNCTION_16_25();
            lpta_rpta_loadp(v79, v80, v81);
            v82 = OUTLINED_FUNCTION_73_6();
            if (setd_lookup(v82, v83, 20) || (v84 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v84, v85, v86), OUTLINED_FUNCTION_11_28(), mark_s()))
            {
LABEL_20:
              v87 = OUTLINED_FUNCTION_16_25();
              lpta_rpta_loadp(v87, v88, v89);
              v90 = OUTLINED_FUNCTION_73_6();
              if (setd_lookup(v90, v91, 24) || (v92 = OUTLINED_FUNCTION_16_25(), lpta_rpta_loadp(v92, v93, v94), OUTLINED_FUNCTION_11_28(), mark_s()))
              {
LABEL_22:
                v95 = OUTLINED_FUNCTION_16_25();
                lpta_rpta_loadp(v95, v96, v97);
                v98 = OUTLINED_FUNCTION_73_6();
                if (!setd_lookup(v98, v99, 23))
                {
                  v100 = OUTLINED_FUNCTION_16_25();
                  lpta_rpta_loadp(v100, v101, v102);
                  OUTLINED_FUNCTION_11_28();
                  mark_s();
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v52 = OUTLINED_FUNCTION_7_29();
      if (testFldeq(v52, v53, v54, v55) || advance_tok(v1, v56, v57, v58))
      {
        v59 = *(v1 + 104);
        if (v59)
        {
          v60 = OUTLINED_FUNCTION_87_4(v59);
        }

        else
        {
          v61 = OUTLINED_FUNCTION_90_4();
          v60 = vback(v61, v62);
        }

        switch(v60)
        {
          case 1:
            goto LABEL_5;
          case 3:
            goto LABEL_14;
          case 4:
            goto LABEL_16;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_20;
          case 7:
            goto LABEL_22;
          default:
            break;
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_109_1();
}

void disambiguate_noun_from_adj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_123_0();
  v5 = v4;
  v79 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_67_6(v4, v6, v7, v8, v9, v10, v11, v12, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], v74[23], v74[24]);
  OUTLINED_FUNCTION_84_4();
  bzero(v78, v13);
  if (!setjmp(v78) && !ventproc(v5, v74, v77, v76, v75, v78))
  {
    OUTLINED_FUNCTION_53_7();
    v14 = 0;
    OUTLINED_FUNCTION_115_1(v15, v16, &null_str_8);
    v17 = OUTLINED_FUNCTION_57_7();
    fence_29(v17, v18, v19);
    OUTLINED_FUNCTION_125_0();
    v20 = OUTLINED_FUNCTION_66_6();
    if (lpta_loadp_setscan_l(v20, v21, v22))
    {
LABEL_5:
      v23 = OUTLINED_FUNCTION_60_7();
      starttest(v23, v24);
      v25 = OUTLINED_FUNCTION_80_5();
      if (lpta_loadp_setscan_l(v25, v26, v27))
      {
        goto LABEL_3;
      }

      v28 = OUTLINED_FUNCTION_64_6();
      bspush_ca_scan(v28, v29);
      v30 = OUTLINED_FUNCTION_5_29();
      v34 = testFldeq(v30, v31, v32, v33);
      v37 = v14;
      if (!v34)
      {
LABEL_12:
        v14 = v37;
        if (!advance_tok(v5, v37, v35, v36))
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v38 = OUTLINED_FUNCTION_63_6();
      bspush_ca_scan(v38, v39);
      v36 = 0;
LABEL_9:
      v14 = v36;
      v40 = OUTLINED_FUNCTION_52_7();
      bspush_ca_scan(v40, v41);
      v42 = OUTLINED_FUNCTION_14_26();
      v45 = testFldeq(v42, v43, v44, 18);
      v35 = v14;
      if (!v45)
      {
LABEL_10:
        v14 = v35;
        if (!advance_tok(v5, v37, v35, v36))
        {
          goto LABEL_3;
        }
      }
    }

    while (2)
    {
      v46 = *(v5 + 104);
      if (v46)
      {
        v47 = OUTLINED_FUNCTION_87_4(v46);
      }

      else
      {
        v48 = OUTLINED_FUNCTION_79_6();
        v47 = vback(v48, v49);
        v14 = 0;
      }

      v36 = v14;
      v35 = v14;
      v37 = v14;
      switch(v47)
      {
        case 1:
          goto LABEL_5;
        case 2:
          bspush_ca_scan_boa();
          v50 = OUTLINED_FUNCTION_5_29();
          goto LABEL_29;
        case 3:
          goto LABEL_9;
        case 4:
          bspop_boa(v5);
          OUTLINED_FUNCTION_81_5();
          bspush_ca_scan_boa();
          v50 = OUTLINED_FUNCTION_4_29();
          goto LABEL_29;
        case 5:
          bspop_boa(v5);
          OUTLINED_FUNCTION_77_6();
          bspush_ca_scan_boa();
          v50 = OUTLINED_FUNCTION_14_26();
          v53 = 3;
          goto LABEL_29;
        case 6:
          bspop_boa(v5);
          OUTLINED_FUNCTION_91_3();
          bspush_ca_scan_boa();
          v50 = OUTLINED_FUNCTION_9_29();
          goto LABEL_29;
        case 7:
          bspop_boa(v5);
          OUTLINED_FUNCTION_120_1();
          bspush_ca_scan_boa();
          v50 = OUTLINED_FUNCTION_14_26();
          v53 = 37;
LABEL_29:
          if (testFldeq(v50, v51, v52, v53))
          {
            v14 = v14;
          }

          else
          {
            v14 = 1;
          }

          continue;
        case 8:
          bspop_boa(v5);
          v65 = advance_tok(v5, v62, v63, v64);
          v36 = v14;
          if (!v65)
          {
            goto LABEL_9;
          }

          continue;
        case 9:
          v66 = OUTLINED_FUNCTION_14_26();
          v69 = testFldeq(v66, v67, v68, 14);
          v35 = v14;
          if (!v69)
          {
            goto LABEL_10;
          }

          continue;
        case 10:
          goto LABEL_10;
        case 13:
          v70 = OUTLINED_FUNCTION_146_0();
          bspush_ca_scan(v70, v71);
          v54 = OUTLINED_FUNCTION_4_29();
          goto LABEL_35;
        case 14:
          goto LABEL_12;
        case 15:
          v57 = OUTLINED_FUNCTION_134_0();
          bspush_ca_scan(v57, v58);
          v54 = OUTLINED_FUNCTION_14_26();
          goto LABEL_20;
        case 16:
          v60 = OUTLINED_FUNCTION_133_0();
          bspush_ca_scan(v60, v61);
          v54 = OUTLINED_FUNCTION_9_29();
          goto LABEL_35;
        case 17:
          bspush_ca_scan(v5, 18);
          v54 = OUTLINED_FUNCTION_14_26();
          v59 = 37;
          goto LABEL_35;
        case 18:
          v54 = OUTLINED_FUNCTION_13_28();
LABEL_20:
          v59 = 3;
LABEL_35:
          v72 = testFldeq(v54, v55, v56, v59);
          v37 = v14;
          if (!v72)
          {
            goto LABEL_12;
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_122_0();
}

void disambiguate_travesso(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_108_1();
  v142 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_103_1();
  HIDWORD(v132) = 0;
  OUTLINED_FUNCTION_67_6(v6, v7, v8, v9, v10, v11, v12, v13, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v131);
  OUTLINED_FUNCTION_84_4();
  bzero(v141, v14);
  if (!setjmp(v141))
  {
    OUTLINED_FUNCTION_37_12();
    if (!OUTLINED_FUNCTION_141_0(v15, v16, v17, v18, v19, v20, v21, v22, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140))
    {
      v23 = OUTLINED_FUNCTION_86_4();
      OUTLINED_FUNCTION_137_0(v23, v24);
      v25 = OUTLINED_FUNCTION_26_20();
      get_parm(v25, v26, v27, -6);
      v28 = OUTLINED_FUNCTION_95_3();
      get_parm(v28, v29, v30, -4);
      v31 = OUTLINED_FUNCTION_96_3();
      v33 = push_ptr_init(v31, v32);
      v34 = 0;
      OUTLINED_FUNCTION_115_1(v33, v35, &null_str_8);
      fence_29(v4, 1, &unk_2806BBF44);
      starttest(v4, 1);
      v36 = OUTLINED_FUNCTION_41_8();
      if (!lpta_loadp_setscan_r(v36, v37, v38))
      {
        v34 = 0;
        v39 = 0;
        if (!advanc(v4))
        {
LABEL_8:
          v40 = OUTLINED_FUNCTION_63_6();
          if (!chstream(v40, v41, 1u))
          {
            OUTLINED_FUNCTION_36_12();
            v34 = v39;
            if (!test_string_s())
            {
LABEL_12:
              v42 = OUTLINED_FUNCTION_38_11();
              if (!chstream(v42, v43, 2u) && !advanc(v4))
              {
                OUTLINED_FUNCTION_32_15();
                bspush_ca_scan_boa();
                v44 = OUTLINED_FUNCTION_14_26();
                if (testFldeq(v44, v45, v46, 12))
                {
                  v39 = v34;
                }

                else
                {
                  v39 = 1;
                }

                goto LABEL_18;
              }

LABEL_17:
              v39 = v34;
              goto LABEL_18;
            }
          }

          goto LABEL_18;
        }
      }

      while (2)
      {
        v58 = OUTLINED_FUNCTION_47_8();
        starttest(v58, v59);
        v60 = OUTLINED_FUNCTION_49_7();
        if (lpta_loadp_setscan_l(v60, v61, v62))
        {
LABEL_39:
          HIWORD(v132) = 1;
        }

        else
        {
          v63 = OUTLINED_FUNCTION_1_31();
          if (testFldeq(v63, v64, v65, v66))
          {
            goto LABEL_17;
          }

          if (advance_tok(v4, v67, v68, v69))
          {
            goto LABEL_17;
          }

          v70 = OUTLINED_FUNCTION_5_29();
          if (testFldeq(v70, v71, v72, v73))
          {
            goto LABEL_17;
          }

          v39 = v34;
          v47 = v34;
          if (advance_tok(v4, v74, v75, v76))
          {
            goto LABEL_18;
          }

LABEL_36:
          v39 = v47;
          OUTLINED_FUNCTION_99_2();
          savescptr(v4, v77, &v130);
          v78 = OUTLINED_FUNCTION_81_5();
          if (lpta_loadp_setscan_r(v78, v79, 1) || (v80 = OUTLINED_FUNCTION_34_14(), bspush_ca_scan(v80, v81), OUTLINED_FUNCTION_36_12(), test_string_s()))
          {
LABEL_18:
            v47 = v39;
LABEL_19:
            v48 = v4[13];
            if (v48)
            {
              v49 = OUTLINED_FUNCTION_87_4(v48);
              v47 = v50;
            }

            else
            {
              v49 = vback(v4, v47);
              v47 = 0;
            }

            switch(v49)
            {
              case 1:
                v34 = v47;
                continue;
              case 2:
                v39 = v47;
                goto LABEL_8;
              case 3:
                v34 = v47;
                goto LABEL_12;
              case 4:
                bspop_boa(v4);
                if (!advance_tok(v4, v51, v52, v53))
                {
                  goto LABEL_40;
                }

                goto LABEL_19;
              case 5:
              case 9:
                goto LABEL_40;
              case 6:
                goto LABEL_39;
              case 7:
                goto LABEL_36;
              case 8:
                v54 = OUTLINED_FUNCTION_81_5();
                bspush_ca_scan(v54, v55);
                OUTLINED_FUNCTION_36_12();
                goto LABEL_28;
              case 10:
                v56 = OUTLINED_FUNCTION_91_3();
                bspush_ca_scan(v56, v57);
                OUTLINED_FUNCTION_36_12();
                goto LABEL_28;
              case 11:
                OUTLINED_FUNCTION_42_8();
LABEL_28:
                if (!test_string_s())
                {
                  goto LABEL_40;
                }

                goto LABEL_19;
              default:
                goto LABEL_3;
            }
          }
        }

        break;
      }

LABEL_40:
      *(v5 + 2) = HIWORD(v132);
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122_0();
}

uint64_t OUTLINED_FUNCTION_17_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_18_23(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_21_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 112) = a35;
  *(v35 + 128) = 0;
  return v35;
}

uint64_t OUTLINED_FUNCTION_23_21()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_27_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_39_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, __int16 a41, __int16 a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, a2, &a46, &a42, &a39, v47 - 248);
}

void OUTLINED_FUNCTION_45_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_53_7()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_56_7()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_62_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_67_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_70_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

void OUTLINED_FUNCTION_92_3(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_94_3(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void *OUTLINED_FUNCTION_104_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_29(v3, 1, a3);
}

void OUTLINED_FUNCTION_110_1(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_114_1(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void *OUTLINED_FUNCTION_115_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_29(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_116_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

uint64_t OUTLINED_FUNCTION_124_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return lpta_loadp_setscan_r(v69, &a69, 2);
}

void OUTLINED_FUNCTION_125_0()
{

  starttest(v0, v1);
}

void OUTLINED_FUNCTION_127_0()
{

  starttest(v0, v1);
}

uint64_t OUTLINED_FUNCTION_136_0()
{

  return mark_word_stress(v0);
}

void OUTLINED_FUNCTION_137_0(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_138_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);

  return lpta_rpta_loadp(v41, va, &a40);
}

uint64_t OUTLINED_FUNCTION_139_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int16 a45, __int16 a46)
{
  a46 = v47;

  return npush_v(v46, &a45, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_140_0(uint64_t a1)
{

  return mark_i();
}

uint64_t OUTLINED_FUNCTION_141_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);

  return ventproc(v43, a2, a3, a4, a5, va);
}

void OUTLINED_FUNCTION_148_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int16 a45, __int16 a46)
{
  a46 = 4;

  npop(v46, &a45);
}

uint64_t OUTLINED_FUNCTION_149_0()
{

  return mark_number();
}

void *fence_30(uint64_t a1, int a2, uint64_t a3)
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

uint64_t adjust_por_accents()
{
  OUTLINED_FUNCTION_22_22();
  v407 = *MEMORY[0x277D85DE8];
  memset(v403, 0, sizeof(v403));
  OUTLINED_FUNCTION_92_4();
  OUTLINED_FUNCTION_12_29(v2, v3, v4, v5, v6, v7, v8, v9, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3]);
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_100_2(v10, v11);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_87_5(v12, &v378, v406, v405, v404))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  OUTLINED_FUNCTION_27_19();
  OUTLINED_FUNCTION_41_9(v14, v403);
  v15 = OUTLINED_FUNCTION_25_21();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_37_13();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_28_18();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_36_13();
  push_ptr_init(v21, v22);
  fence_30(v0, 0, &null_str_9);
  v23 = OUTLINED_FUNCTION_19_23();
  starttest(v23, v24);
  v25 = OUTLINED_FUNCTION_79_7();
  lpta_loadpn(v25, v26);
  v27 = OUTLINED_FUNCTION_29_18();
  rpta_loadpn(v27, v28);
  if (compare_ptas(v0) || testeq(v0) || (v29 = OUTLINED_FUNCTION_60_8(), lpta_loadpn(v29, v30), rpta_loadpn(v0, v0 + 1432), compare_ptas(v0)) || testeq(v0) || (v31 = OUTLINED_FUNCTION_43_9(), lpta_loadp_setscan_r(v31, v32, 5)))
  {
LABEL_9:
    v33 = OUTLINED_FUNCTION_19_23();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_43_9();
    if (lpta_loadp_setscan_r(v35, v36, 5))
    {
LABEL_10:
      v37 = OUTLINED_FUNCTION_19_23();
      startloop(v37, v38);
      v39 = OUTLINED_FUNCTION_43_9();
      lpta_loadpn(v39, v40);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v41 = OUTLINED_FUNCTION_25_21();
      lpta_storep(v41, v42, v43);
      v44 = OUTLINED_FUNCTION_60_8();
      lpta_loadpn(v44, v45);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v46 = OUTLINED_FUNCTION_28_18();
      lpta_storep(v46, v47, v48);
      while (1)
      {
LABEL_11:
        v49 = OUTLINED_FUNCTION_67_7();
        if (forall_to_test(v49, v50, v51))
        {
          goto LABEL_69;
        }

LABEL_12:
        v52 = OUTLINED_FUNCTION_19_23();
        bspush_ca(v52);
        v53 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v53, v54, v55))
        {
          goto LABEL_69;
        }

        v56 = OUTLINED_FUNCTION_18_24();
        v58 = npush_fld(v56, v57, 5u);
        if (v58)
        {
          goto LABEL_69;
        }

        OUTLINED_FUNCTION_65_7(v58, v59, v60, v61, v62, v63, v64, v65);
        if (if_testle(v0, v66, v67, v68, v69, v70, v71, v72) || advance_tok(v0, v73, v74, v75))
        {
          goto LABEL_69;
        }

LABEL_16:
        v76 = OUTLINED_FUNCTION_39_11();
        savescptr(v76, v77, v78);
LABEL_17:
        v79 = OUTLINED_FUNCTION_19_23();
        starttest(v79, v80);
        v81 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v81, v82, v83))
        {
LABEL_18:
          v84 = OUTLINED_FUNCTION_19_23();
          starttest(v84, v85);
          v86 = OUTLINED_FUNCTION_8_30();
          if (lpta_loadp_setscan_r(v86, v87, v88))
          {
LABEL_19:
            v89 = OUTLINED_FUNCTION_19_23();
            starttest(v89, v90);
            v91 = OUTLINED_FUNCTION_8_30();
            if (lpta_loadp_setscan_r(v91, v92, v93))
            {
LABEL_20:
              v94 = OUTLINED_FUNCTION_25_21();
              is_sentential_adverb(v94, v95);
              if (v96 || (OUTLINED_FUNCTION_35_14(v96, v97, v98, v99, v100, v101, v102, v103, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]), OUTLINED_FUNCTION_5_30(), mark_s()))
              {
LABEL_22:
                v104 = OUTLINED_FUNCTION_25_21();
                v105 = is_minor_phrase(v104);
                if (v105 || (OUTLINED_FUNCTION_35_14(v105, v106, v107, v108, v109, v110, v111, v112, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]), OUTLINED_FUNCTION_5_30(), mark_s()))
                {
LABEL_24:
                  v113 = OUTLINED_FUNCTION_25_21();
                  is_start_VP(v113, v114);
                  if (v115 || (OUTLINED_FUNCTION_35_14(v115, v116, v117, v118, v119, v120, v121, v122, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]), OUTLINED_FUNCTION_5_30(), mark_s()))
                  {
LABEL_26:
                    OUTLINED_FUNCTION_25_21();
                    v123 = is_emphatic_word();
                    if (v123 || (OUTLINED_FUNCTION_35_14(v123, v124, v125, v126, v127, v128, v129, v130, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]), OUTLINED_FUNCTION_5_30(), mark_s()))
                    {
LABEL_28:
                      v131 = OUTLINED_FUNCTION_25_21();
                      adjacent_noun_accent = is_first_adjacent_noun_accent(v131);
                      if (adjacent_noun_accent || (OUTLINED_FUNCTION_35_14(adjacent_noun_accent, v133, v134, v135, v136, v137, v138, v139, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]), OUTLINED_FUNCTION_5_30(), mark_s()))
                      {
LABEL_30:
                        v140 = OUTLINED_FUNCTION_25_21();
                        is_initial_matrix_verb(v140, v141);
                        if (v142 || (OUTLINED_FUNCTION_35_14(v142, v143, v144, v145, v146, v147, v148, v149, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]), OUTLINED_FUNCTION_5_30(), mark_s()))
                        {
LABEL_32:
                          OUTLINED_FUNCTION_25_21();
                          v150 = is_accented_wh_word();
                          if (!v150)
                          {
                            OUTLINED_FUNCTION_35_14(v150, v151, v152, v153, v154, v155, v156, v157, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]);
                            OUTLINED_FUNCTION_5_30();
                            mark_s();
                          }
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_86;
            }

            v210 = OUTLINED_FUNCTION_18_24();
            v212 = npush_fld(v210, v211, 5u);
            if (v212)
            {
              goto LABEL_69;
            }

            OUTLINED_FUNCTION_65_7(v212, v213, v214, v215, v216, v217, v218, v219);
            if (if_testlt(v0, v220, v221, v222, v223, v224, v225, v226))
            {
              goto LABEL_69;
            }
          }

          else
          {
            v205 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v205, v206);
            v207 = OUTLINED_FUNCTION_18_24();
            v209 = 2;
LABEL_84:
            if (testFldeq(v207, v208, 8, v209))
            {
              goto LABEL_69;
            }
          }

LABEL_85:
          if (advance_tok(v0, v227, v228, v229))
          {
            goto LABEL_69;
          }
        }

        else
        {
          v176 = OUTLINED_FUNCTION_18_24();
          if (npush_fld(v176, v177, 5u))
          {
            goto LABEL_69;
          }

          v178 = OUTLINED_FUNCTION_18_24();
          npush_i(v178);
          if (if_testlt(v0, v179, v180, v181, v182, v183, v184, v185))
          {
            goto LABEL_69;
          }

          if (advance_tok(v0, v186, v187, v188))
          {
            goto LABEL_69;
          }

          v189 = OUTLINED_FUNCTION_19_23();
          starttest(v189, v190);
          v191 = OUTLINED_FUNCTION_43_9();
          if (!lpta_loadp_setscan_r(v191, v192, 5))
          {
            v193 = OUTLINED_FUNCTION_50_8();
            if (testFldeq(v193, v194, v195, 1))
            {
              goto LABEL_69;
            }

            if (advance_tok(v0, v196, v197, v198))
            {
              goto LABEL_69;
            }

            v199 = OUTLINED_FUNCTION_54_8();
            lpta_rpta_loadp(v199, v200, v201);
            if (mark_s())
            {
              goto LABEL_69;
            }

            v202 = OUTLINED_FUNCTION_54_8();
            lpta_rpta_loadp(v202, v203, v204);
            if (mark_s())
            {
              goto LABEL_69;
            }
          }
        }

LABEL_86:
        v320 = OUTLINED_FUNCTION_37_13();
        lpta_loadpn(v320, v321);
        OUTLINED_FUNCTION_18_24();
        lpta_mover();
        v322 = OUTLINED_FUNCTION_44_9();
        lpta_storep(v322, v323, v324);
        OUTLINED_FUNCTION_74_7();
        forall_cont_from();
      }
    }

    v158 = OUTLINED_FUNCTION_50_8();
    if (!testFldeq(v158, v159, v160, 8) && !advance_tok(v0, v161, v162, v163))
    {
      v164 = OUTLINED_FUNCTION_19_23();
      startloop(v164, v165);
      v166 = OUTLINED_FUNCTION_43_9();
      lpta_loadpn(v166, v167);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v168 = OUTLINED_FUNCTION_25_21();
      lpta_storep(v168, v169, v170);
      v171 = OUTLINED_FUNCTION_60_8();
      lpta_loadpn(v171, v172);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v173 = OUTLINED_FUNCTION_28_18();
      lpta_storep(v173, v174, v175);
LABEL_87:
      while (1)
      {
        v325 = OUTLINED_FUNCTION_67_7();
        if (forall_to_test(v325, v326, v327))
        {
          break;
        }

LABEL_88:
        v328 = OUTLINED_FUNCTION_19_23();
        bspush_ca(v328);
        v329 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v329, v330, v331))
        {
          break;
        }

        v332 = OUTLINED_FUNCTION_18_24();
        v334 = npush_fld(v332, v333, 5u);
        if (v334)
        {
          break;
        }

        OUTLINED_FUNCTION_65_7(v334, v335, v336, v337, v338, v339, v340, v341);
        if (if_testeq(v0, v342, v343, v344, v345, v346, v347, v348) || advance_tok(v0, v349, v350, v351))
        {
          break;
        }

LABEL_92:
        v352 = OUTLINED_FUNCTION_39_11();
        savescptr(v352, v353, v354);
LABEL_93:
        v355 = OUTLINED_FUNCTION_19_23();
        starttest(v355, v356);
        v357 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v357, v358, v359))
        {
LABEL_94:
          OUTLINED_FUNCTION_25_21();
          if (is_emphatic_word())
          {
LABEL_95:
            v360 = OUTLINED_FUNCTION_19_23();
            starttest(v360, v361);
            v362 = OUTLINED_FUNCTION_21_22();
            v293 = lpta_loadp_setscan_r(v362, v363, v364);
            if (!v293)
            {
              v372 = OUTLINED_FUNCTION_3_31();
              if (testFldeq(v372, v373, v374, 35))
              {
                break;
              }

              v293 = advance_tok(v0, v375, v376, v377);
              if (v293)
              {
                break;
              }
            }

LABEL_96:
            OUTLINED_FUNCTION_35_14(v293, v227, v228, v229, v294, v295, v296, v297, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]);
            OUTLINED_FUNCTION_5_30();
            if (mark_s())
            {
              break;
            }
          }
        }

        else
        {
          v370 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v370, v371);
          v317 = OUTLINED_FUNCTION_18_24();
          v319 = 2;
LABEL_80:
          if (testFldeq(v317, v318, 8, v319))
          {
            break;
          }

LABEL_81:
          if (advance_tok(v0, v227, v228, v229))
          {
            break;
          }
        }

LABEL_97:
        v365 = OUTLINED_FUNCTION_37_13();
        lpta_loadpn(v365, v366);
        OUTLINED_FUNCTION_18_24();
        lpta_mover();
        v367 = OUTLINED_FUNCTION_44_9();
        lpta_storep(v367, v368, v369);
        OUTLINED_FUNCTION_48_9();
        OUTLINED_FUNCTION_74_7();
        forall_cont_from();
      }
    }
  }

  else
  {
    v230 = OUTLINED_FUNCTION_50_8();
    if (!testFldeq(v230, v231, v232, 9) && !advance_tok(v0, v233, v234, v235))
    {
      v236 = OUTLINED_FUNCTION_93_4();
      startloop(v236, v237);
      v238 = OUTLINED_FUNCTION_43_9();
      lpta_loadpn(v238, v239);
      OUTLINED_FUNCTION_31_17();
      lpta_mover();
      v240 = OUTLINED_FUNCTION_25_21();
      lpta_storep(v240, v241, v242);
      v243 = OUTLINED_FUNCTION_60_8();
      lpta_loadpn(v243, v244);
      OUTLINED_FUNCTION_31_17();
      lpta_mover();
      v245 = OUTLINED_FUNCTION_28_18();
      lpta_storep(v245, v246, v247);
LABEL_53:
      while (1)
      {
        v248 = OUTLINED_FUNCTION_67_7();
        if (forall_to_test(v248, v249, v250))
        {
          break;
        }

LABEL_54:
        v251 = OUTLINED_FUNCTION_17_25();
        bspush_ca(v251);
        v252 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v252, v253, v254))
        {
          break;
        }

        v255 = OUTLINED_FUNCTION_18_24();
        v257 = npush_fld(v255, v256, 5u);
        if (v257)
        {
          break;
        }

        OUTLINED_FUNCTION_65_7(v257, v258, v259, v260, v261, v262, v263, v264);
        if (if_testeq(v0, v265, v266, v267, v268, v269, v270, v271) || advance_tok(v0, v272, v273, v274))
        {
          break;
        }

LABEL_58:
        v275 = OUTLINED_FUNCTION_39_11();
        savescptr(v275, v276, v277);
LABEL_59:
        v278 = OUTLINED_FUNCTION_19_23();
        starttest(v278, v279);
        v280 = OUTLINED_FUNCTION_8_30();
        if (lpta_loadp_setscan_r(v280, v281, v282))
        {
LABEL_60:
          OUTLINED_FUNCTION_25_21();
          v283 = is_accented_wh_word();
          if (v283 || (OUTLINED_FUNCTION_35_14(v283, v284, v285, v286, v287, v288, v289, v290, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]), OUTLINED_FUNCTION_5_30(), mark_s()))
          {
LABEL_62:
            v291 = OUTLINED_FUNCTION_19_23();
            starttest(v291, v292);
            OUTLINED_FUNCTION_25_21();
            v293 = is_emphatic_word();
            if (v293)
            {
LABEL_63:
              OUTLINED_FUNCTION_35_14(v293, v227, v228, v229, v294, v295, v296, v297, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401[0], v401[1], v401[2], v401[3], v402[0], v402[1]);
              OUTLINED_FUNCTION_5_30();
              if (mark_s())
              {
                break;
              }
            }
          }
        }

        else
        {
          v298 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v298, v299);
          v300 = OUTLINED_FUNCTION_18_24();
          v302 = 2;
LABEL_66:
          if (testFldeq(v300, v301, 8, v302))
          {
            break;
          }

LABEL_67:
          if (advance_tok(v0, v227, v228, v229))
          {
            break;
          }
        }

LABEL_68:
        v303 = OUTLINED_FUNCTION_37_13();
        lpta_loadpn(v303, v304);
        OUTLINED_FUNCTION_31_17();
        lpta_mover();
        v305 = OUTLINED_FUNCTION_26_21();
        lpta_storep(v305, v306, v307);
        OUTLINED_FUNCTION_74_7();
        forall_cont_from();
      }
    }
  }

LABEL_69:
  while (2)
  {
    v308 = *(v0 + 104);
    if (v308)
    {
      v293 = OUTLINED_FUNCTION_34_15(v308);
    }

    else
    {
      v309 = OUTLINED_FUNCTION_47_9();
      v293 = vback(v309, v310);
    }

    switch(v293)
    {
      case 1:
        goto LABEL_9;
      case 2:
      case 14:
      case 16:
        goto LABEL_77;
      case 3:
        goto LABEL_59;
      case 4:
        v311 = OUTLINED_FUNCTION_91_4();
        goto LABEL_76;
      case 5:
        goto LABEL_58;
      case 6:
        goto LABEL_60;
      case 7:
        v300 = OUTLINED_FUNCTION_18_24();
        v302 = 4;
        goto LABEL_66;
      case 8:
        goto LABEL_67;
      case 9:
        goto LABEL_68;
      case 10:
        goto LABEL_62;
      case 11:
        goto LABEL_63;
      case 12:
        goto LABEL_53;
      case 13:
        goto LABEL_54;
      case 15:
        goto LABEL_10;
      case 17:
        goto LABEL_93;
      case 18:
        OUTLINED_FUNCTION_48_9();
        goto LABEL_75;
      case 19:
        goto LABEL_92;
      case 20:
        goto LABEL_94;
      case 21:
        v317 = OUTLINED_FUNCTION_18_24();
        v319 = 4;
        goto LABEL_80;
      case 22:
        goto LABEL_81;
      case 23:
        goto LABEL_97;
      case 24:
        goto LABEL_95;
      case 25:
        goto LABEL_96;
      case 26:
        goto LABEL_87;
      case 27:
        goto LABEL_88;
      case 28:
        goto LABEL_17;
      case 29:
LABEL_75:
        v311 = OUTLINED_FUNCTION_91_4();
        v315 = 2;
LABEL_76:
        if (forto_adv_upto_r(v311, v312, v313, v314, v315, v316))
        {
          continue;
        }

LABEL_77:
        vretproc(v0);
        result = 0;
        break;
      case 30:
        goto LABEL_16;
      case 31:
        goto LABEL_18;
      case 32:
      case 33:
        goto LABEL_86;
      case 34:
        goto LABEL_19;
      case 35:
        v207 = OUTLINED_FUNCTION_18_24();
        v209 = 4;
        goto LABEL_84;
      case 36:
        goto LABEL_85;
      case 37:
        goto LABEL_20;
      case 38:
        goto LABEL_22;
      case 39:
        goto LABEL_24;
      case 40:
        goto LABEL_26;
      case 41:
        goto LABEL_28;
      case 42:
        goto LABEL_30;
      case 43:
        goto LABEL_32;
      case 44:
        goto LABEL_11;
      case 45:
        goto LABEL_12;
      default:
        goto LABEL_3;
    }

    return result;
  }
}

uint64_t is_accented_wh_word()
{
  OUTLINED_FUNCTION_57_8();
  v113 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v1, v2, v3, v4, v5, v6, v7, v8, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v110, v111);
  OUTLINED_FUNCTION_32_16();
  bzero(v112, v9);
  if (setjmp(v112))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_17();
  if (ventproc(v0, v10, v11, v12, v13, v112))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v16 = OUTLINED_FUNCTION_36_13();
  push_ptr_init(v16, v17);
  fence_30(v0, 0, &null_str_9);
  v18 = OUTLINED_FUNCTION_19_23();
  starttest(v18, v19);
  v20 = OUTLINED_FUNCTION_14_27();
  if (lpta_loadp_setscan_r(v20, v21, v22))
  {
    goto LABEL_9;
  }

LABEL_6:
  v23 = OUTLINED_FUNCTION_3_31();
  if (!testFldeq(v23, v24, v25, 33) && !advance_tok(v0, v26, v27, v28))
  {
LABEL_8:
    v14 = 0;
    goto LABEL_4;
  }

  while (1)
  {
    v57 = *(v0 + 104);
    if (v57)
    {
      v58 = OUTLINED_FUNCTION_34_15(v57);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_47_9();
      v58 = vback(v59, v60);
    }

    if (v58 == 1)
    {
LABEL_9:
      v29 = OUTLINED_FUNCTION_19_23();
      starttest(v29, v30);
      v31 = OUTLINED_FUNCTION_10_30();
      if (lpta_loadp_setscan_l(v31, v32, v33))
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    if (v58 != 4)
    {
      break;
    }

LABEL_10:
    OUTLINED_FUNCTION_40_10();
    OUTLINED_FUNCTION_76_7(v34, v35, v36, v37, v38, v39, v40, v41, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108);
    v42 = OUTLINED_FUNCTION_3_31();
    if (!testFldeq(v42, v43, v44, 33) && !advance_tok(v0, v45, v46, v47))
    {
      v48 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v48, v49, v50))
      {
        v51 = OUTLINED_FUNCTION_3_31();
        if (!testFldeq(v51, v52, v53, 18) && !advance_tok(v0, v54, v55, v56))
        {
          goto LABEL_6;
        }
      }
    }
  }

  if (v58 == 2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v14 = 94;
LABEL_4:
  vretproc(v0);
  return v14;
}

uint64_t is_emphatic_word()
{
  OUTLINED_FUNCTION_57_8();
  v171 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v1, v2, v3, v4, v5, v6, v7, v8, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v168, v169);
  OUTLINED_FUNCTION_32_16();
  bzero(v170, v9);
  if (setjmp(v170))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_17();
  if (ventproc(v0, v10, v11, v12, v13, v170))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v16 = OUTLINED_FUNCTION_36_13();
  push_ptr_init(v16, v17);
  fence_30(v0, 0, &null_str_9);
  v18 = OUTLINED_FUNCTION_31_17();
  fence_30(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_93_4();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_14_27();
  v26 = lpta_loadp_setscan_l(v23, v24, v25);
  if (!v26)
  {
LABEL_6:
    OUTLINED_FUNCTION_76_7(v26, 2, v27, v28, v29, v30, v31, v32, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166);
    v33 = OUTLINED_FUNCTION_31_17();
    if (testFldeq(v33, v34, 3, 8))
    {
      goto LABEL_32;
    }

    if (advance_tok(v0, v35, v36, v37))
    {
      goto LABEL_32;
    }

    v38 = OUTLINED_FUNCTION_21_22();
    if (lpta_loadp_setscan_r(v38, v39, v40))
    {
      goto LABEL_32;
    }

    v41 = OUTLINED_FUNCTION_3_31();
    if (testFldeq(v41, v42, v43, 6) || advance_tok(v0, v44, v45, v46))
    {
      goto LABEL_32;
    }

    v47 = OUTLINED_FUNCTION_1_32();
    goto LABEL_12;
  }

  while (2)
  {
    v54 = OUTLINED_FUNCTION_17_25();
    starttest(v54, v55);
    v56 = OUTLINED_FUNCTION_10_30();
    if (lpta_loadp_setscan_l(v56, v57, v58))
    {
LABEL_24:
      v82 = OUTLINED_FUNCTION_19_23();
      starttest(v82, v83);
      v84 = OUTLINED_FUNCTION_10_30();
      if (lpta_loadp_setscan_r(v84, v85, v86))
      {
LABEL_36:
        v109 = OUTLINED_FUNCTION_19_23();
        starttest(v109, v110);
        v111 = OUTLINED_FUNCTION_10_30();
        if (lpta_loadp_setscan_r(v111, v112, v113))
        {
LABEL_37:
          v114 = OUTLINED_FUNCTION_19_23();
          starttest(v114, v115);
          v116 = OUTLINED_FUNCTION_10_30();
          if (lpta_loadp_setscan_r(v116, v117, v118))
          {
LABEL_3:
            v14 = 94;
            break;
          }

          v99 = OUTLINED_FUNCTION_3_31();
          v102 = 7;
        }

        else
        {
          v99 = OUTLINED_FUNCTION_3_31();
          v102 = 6;
        }
      }

      else
      {
        v87 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v87, v88, v89, 8))
        {
          goto LABEL_32;
        }

        if (advance_tok(v0, v90, v91, v92))
        {
          goto LABEL_32;
        }

        v93 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v93, v94, v95, 6) || advance_tok(v0, v96, v97, v98))
        {
          goto LABEL_32;
        }

        v99 = OUTLINED_FUNCTION_1_32();
      }

      if (!testFldeq(v99, v100, v101, v102) && !advance_tok(v0, v103, v104, v105))
      {
        v14 = 0;
        break;
      }

      goto LABEL_32;
    }

LABEL_16:
    OUTLINED_FUNCTION_58_8(5, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166);
    v59 = OUTLINED_FUNCTION_1_32();
    if (!testFldeq(v59, v60, v61, v62) && !advance_tok(v0, v63, v64, v65))
    {
      v66 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v66, v67, v68))
      {
        v69 = OUTLINED_FUNCTION_3_31();
        if (!testFldeq(v69, v70, v71, 6) && !advance_tok(v0, v72, v73, v74))
        {
          v75 = OUTLINED_FUNCTION_1_32();
          if (!testFldeq(v75, v76, v77, v78) && !advance_tok(v0, v79, v80, v81))
          {
            v47 = OUTLINED_FUNCTION_3_31();
            v50 = 18;
LABEL_12:
            if (!testFldeq(v47, v48, v49, v50) && !advance_tok(v0, v51, v52, v53))
            {
              goto LABEL_3;
            }
          }
        }
      }
    }

LABEL_32:
    v106 = *(v0 + 104);
    if (v106)
    {
      v26 = OUTLINED_FUNCTION_34_15(v106);
    }

    else
    {
      v107 = OUTLINED_FUNCTION_47_9();
      v26 = vback(v107, v108);
    }

    v14 = 0;
    switch(v26)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_4;
      case 4:
        goto LABEL_24;
      case 5:
        goto LABEL_16;
      case 6:
        goto LABEL_36;
      case 7:
        goto LABEL_37;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v0);
  return v14;
}

void is_sentential_adverb(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_57_8();
  v151 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v3, v4, v5, v6, v7, v8, v9, v10, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v148, v149);
  OUTLINED_FUNCTION_32_16();
  bzero(v150, v11);
  if (!setjmp(v150))
  {
    OUTLINED_FUNCTION_30_17();
    if (!ventproc(v2, v12, v13, v14, v15, v150))
    {
      OUTLINED_FUNCTION_20_22();
      v16 = OUTLINED_FUNCTION_36_13();
      v18 = push_ptr_init(v16, v17);
      v20 = OUTLINED_FUNCTION_73_7(v18, v19, &null_str_9);
      OUTLINED_FUNCTION_59_8(v20, v21, &_MergedGlobals_27);
      OUTLINED_FUNCTION_88_5();
      v22 = OUTLINED_FUNCTION_26_21();
      lpta_loadpn(v22, v23);
      v24 = OUTLINED_FUNCTION_79_7();
      rpta_loadpn(v24, v25);
      if (compare_ptas(v2))
      {
        LODWORD(v26) = 0;
      }

      else
      {
        if (!testeq(v2))
        {
          v27 = OUTLINED_FUNCTION_10_30();
          if (!lpta_loadp_setscan_r(v27, v28, v29))
          {
            v52 = OUTLINED_FUNCTION_4_30();
            if (testFldeq(v52, v53, v54, 1))
            {
              v51 = 0;
            }

            else
            {
              v58 = advance_tok(v2, v55, v56, v57);
              v51 = 0;
              if (!v58)
              {
                goto LABEL_3;
              }
            }

            goto LABEL_19;
          }
        }

        LODWORD(v26) = 0;
      }

      while (2)
      {
        v30 = OUTLINED_FUNCTION_19_23();
        starttest(v30, v31);
        v32 = OUTLINED_FUNCTION_10_30();
        if (lpta_loadp_setscan_r(v32, v33, v34))
        {
          break;
        }

LABEL_10:
        OUTLINED_FUNCTION_40_10();
        OUTLINED_FUNCTION_76_7(v35, v36, v37, v38, v39, v40, v41, v42, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
        v43 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v43, v44);
        v45 = OUTLINED_FUNCTION_1_32();
        v49 = testFldeq(v45, v46, v47, v48);
        v50 = v26;
        v51 = v26;
        if (!v49)
        {
LABEL_16:
          v59 = v50;
          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v60 = OUTLINED_FUNCTION_0_34();
          if (testFldeq(v60, v61, v62, v63))
          {
            v51 = v59;
          }

          else
          {
            v51 = 1;
          }
        }

LABEL_19:
        LODWORD(v64) = v51;
LABEL_20:
        v65 = *(v2 + 104);
        if (v65)
        {
          v66 = OUTLINED_FUNCTION_34_15(v65);
          v26 = v69;
        }

        else
        {
          v66 = vback(v2, v64);
          v26 = 0;
        }

        v50 = v26;
        v64 = 0;
        switch(v66)
        {
          case 1:
            continue;
          case 4:
            goto LABEL_10;
          case 5:
            v70 = OUTLINED_FUNCTION_44_9();
            bspush_ca_scan(v70, v71);
            v72 = OUTLINED_FUNCTION_3_31();
            v75 = 24;
            goto LABEL_37;
          case 6:
            goto LABEL_16;
          case 7:
            v72 = OUTLINED_FUNCTION_3_31();
            v75 = 25;
LABEL_37:
            v98 = testFldeq(v72, v73, v74, v75);
            v50 = v26;
            LODWORD(v64) = v26;
            if (!v98)
            {
              goto LABEL_16;
            }

            goto LABEL_20;
          case 8:
            bspop_boa(v2);
            v83 = advance_tok(v2, v80, v81, v82);
            LODWORD(v64) = v26;
            if (v83)
            {
              goto LABEL_20;
            }

            v84 = OUTLINED_FUNCTION_14_27();
            v87 = lpta_loadp_setscan_l(v84, v85, v86);
            LODWORD(v64) = v26;
            if (v87)
            {
              goto LABEL_20;
            }

            OUTLINED_FUNCTION_99_3();
            goto LABEL_32;
          case 9:
            bspush_ca_scan(v2, 11);
            v76 = OUTLINED_FUNCTION_6_30();
            v79 = 1;
            goto LABEL_30;
          case 10:
            goto LABEL_32;
          case 11:
            v76 = OUTLINED_FUNCTION_6_30();
            v79 = 2;
LABEL_30:
            v88 = testFldeq(v76, v77, v78, v79);
            v64 = v26;
            if (!v88)
            {
              goto LABEL_31;
            }

            goto LABEL_20;
          case 12:
LABEL_31:
            v89 = advance_tok(v2, v64, v67, v68);
            LODWORD(v64) = v26;
            if (v89)
            {
              goto LABEL_20;
            }

LABEL_32:
            v90 = OUTLINED_FUNCTION_18_24();
            v92 = testFldeq(v90, v91, 1, 9);
            LODWORD(v64) = v26;
            if (!v92)
            {
              v95 = advance_tok(v2, v26, v93, v94);
              LODWORD(v64) = v26;
              if (!v95)
              {
                *(v2 + 136) = 1;
                v97 = OUTLINED_FUNCTION_69_7(v95, v26, v96);
                LODWORD(v64) = v26;
                if (!v97)
                {
                  goto LABEL_3;
                }
              }
            }

            goto LABEL_20;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_71_7();
}

uint64_t is_minor_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_57_8();
  v340 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v2, v3, v4, v5, v6, v7, v8, v9, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v337, v338);
  OUTLINED_FUNCTION_32_16();
  bzero(v339, v10);
  if (setjmp(v339))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_30_17();
  if (ventproc(v1, v11, v12, v13, v14, v339))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v18 = OUTLINED_FUNCTION_36_13();
  v20 = push_ptr_init(v18, v19);
  v21 = 0;
  v23 = OUTLINED_FUNCTION_73_7(v20, v22, &null_str_9);
  OUTLINED_FUNCTION_59_8(v23, v24, &_MergedGlobals_27);
  OUTLINED_FUNCTION_88_5();
  v25 = OUTLINED_FUNCTION_14_27();
  if (!lpta_loadp_setscan_r(v25, v26, v27))
  {
    if (advance_tok(v1, v28, v29, v30))
    {
      v21 = 0;
    }

    else
    {
      v34 = advance_tok(v1, v31, v32, v33);
      v35 = 0;
      v21 = 0;
      if (!v34)
      {
LABEL_61:
        LODWORD(v21) = v35;
        goto LABEL_10;
      }
    }
  }

  while (2)
  {
    v36 = OUTLINED_FUNCTION_17_25();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_10_30();
    v41 = lpta_loadp_setscan_l(v38, v39, v40);
    v42 = v21;
    if (!v41)
    {
      goto LABEL_10;
    }

LABEL_63:
    v21 = v42;
    v141 = OUTLINED_FUNCTION_19_23();
    starttest(v141, v142);
    v143 = OUTLINED_FUNCTION_10_30();
    if (!lpta_loadp_setscan_r(v143, v144, v145))
    {
      v182 = OUTLINED_FUNCTION_0_34();
      if (testFldeq(v182, v183, v184, v185))
      {
        goto LABEL_11;
      }

      if (advance_tok(v1, v186, v187, v188))
      {
        goto LABEL_11;
      }

      v189 = OUTLINED_FUNCTION_4_30();
      if (testFldeq(v189, v190, v191, 5))
      {
        goto LABEL_11;
      }

      if (advance_tok(v1, v192, v193, v194))
      {
        goto LABEL_11;
      }

      v195 = OUTLINED_FUNCTION_0_34();
      if (testFldeq(v195, v196, v197, v198) || advance_tok(v1, v199, v200, v201))
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    }

LABEL_64:
    v146 = OUTLINED_FUNCTION_19_23();
    starttest(v146, v147);
    v148 = OUTLINED_FUNCTION_10_30();
    if (lpta_loadp_setscan_r(v148, v149, v150))
    {
LABEL_65:
      v151 = OUTLINED_FUNCTION_19_23();
      starttest(v151, v152);
      v153 = OUTLINED_FUNCTION_10_30();
      if (lpta_loadp_setscan_r(v153, v154, v155))
      {
LABEL_66:
        v156 = OUTLINED_FUNCTION_19_23();
        starttest(v156, v157);
        v158 = OUTLINED_FUNCTION_10_30();
        if (!lpta_loadp_setscan_r(v158, v159, v160))
        {
          v264 = OUTLINED_FUNCTION_1_32();
          if (testFldeq(v264, v265, v266, v267) || advance_tok(v1, v268, v269, v270))
          {
            goto LABEL_11;
          }

          v271 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v271, v272);
          v53 = v21;
LABEL_103:
          v273 = v53;
          v274 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v274, v275);
          v54 = v273;
LABEL_104:
          LODWORD(v21) = v54;
          v276 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v276, v277);
          v278 = OUTLINED_FUNCTION_4_30();
          if (testFldeq(v278, v279, v280, 4))
          {
            goto LABEL_11;
          }

          v284 = advance_tok(v1, v281, v282, v283);
          LODWORD(v55) = v21;
          if (v284)
          {
            goto LABEL_11;
          }

LABEL_106:
          LODWORD(v21) = v55;
          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v285 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v285, v286);
          v178 = OUTLINED_FUNCTION_4_30();
          v181 = 10;
          goto LABEL_107;
        }

LABEL_67:
        v161 = OUTLINED_FUNCTION_19_23();
        starttest(v161, v162);
        v163 = OUTLINED_FUNCTION_10_30();
        v166 = lpta_loadp_setscan_l(v163, v164, v165);
        v140 = v21;
        if (v166)
        {
LABEL_68:
          LODWORD(v21) = v140;
          v167 = OUTLINED_FUNCTION_19_23();
          starttest(v167, v168);
          v169 = OUTLINED_FUNCTION_10_30();
          if (lpta_loadp_setscan_l(v169, v170, v171))
          {
            goto LABEL_3;
          }

LABEL_69:
          OUTLINED_FUNCTION_58_8(34, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335);
          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v172 = OUTLINED_FUNCTION_19_23();
          bspush_ca_scan(v172, v173);
          v174 = OUTLINED_FUNCTION_4_30();
          v177 = testFldeq(v174, v175, v176, 9);
          v56 = v21;
          if (v177)
          {
            goto LABEL_11;
          }

LABEL_70:
          LODWORD(v21) = v56;
          if (advance_tok(v1, v46, v51, v55))
          {
            goto LABEL_11;
          }

          v178 = OUTLINED_FUNCTION_4_30();
          v181 = 3;
LABEL_107:
          v287 = testFldeq(v178, v179, v180, v181);
          v57 = v21;
          if (!v287)
          {
LABEL_108:
            LODWORD(v21) = v57;
            if (!advance_tok(v1, v46, v51, v55))
            {
              LODWORD(v21) = 1;
            }
          }

          goto LABEL_11;
        }

LABEL_92:
        OUTLINED_FUNCTION_58_8(32, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335);
        v243 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v243, v244, v245, 10))
        {
          goto LABEL_11;
        }

        if (advance_tok(v1, v246, v247, v248))
        {
          goto LABEL_11;
        }

        v249 = OUTLINED_FUNCTION_21_22();
        if (lpta_loadp_setscan_r(v249, v250, v251))
        {
          goto LABEL_11;
        }

        v252 = OUTLINED_FUNCTION_4_30();
        if (testFldeq(v252, v253, v254, 3))
        {
          goto LABEL_11;
        }

        if (advance_tok(v1, v255, v256, v257))
        {
          goto LABEL_11;
        }

        v258 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v258, v259, v260, 9) || advance_tok(v1, v261, v262, v263))
        {
          goto LABEL_11;
        }

        v236 = OUTLINED_FUNCTION_4_30();
        v239 = 9;
      }

      else
      {
        v224 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v224, v225);
        v226 = OUTLINED_FUNCTION_1_32();
        if (testFldeq(v226, v227, v228, v229))
        {
          goto LABEL_11;
        }

        v233 = advance_tok(v1, v230, v231, v232);
        v52 = v21;
        if (v233)
        {
          goto LABEL_11;
        }

LABEL_88:
        LODWORD(v21) = v52;
        v234 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v234, v235);
        v236 = OUTLINED_FUNCTION_4_30();
        v239 = 5;
      }

      if (!testFldeq(v236, v237, v238, v239))
      {
        v15 = advance_tok(v1, v240, v241, v242);
        if (!v15)
        {
          break;
        }
      }

      goto LABEL_11;
    }

    v202 = OUTLINED_FUNCTION_1_32();
    if (testFldeq(v202, v203, v204, v205))
    {
      goto LABEL_11;
    }

    if (advance_tok(v1, v206, v207, v208))
    {
      goto LABEL_11;
    }

    v209 = OUTLINED_FUNCTION_19_23();
    bspush_ca_scan(v209, v210);
    v211 = OUTLINED_FUNCTION_3_31();
    v214 = testFldeq(v211, v212, v213, 18);
    v51 = v21;
    if (v214)
    {
      goto LABEL_11;
    }

LABEL_82:
    LODWORD(v21) = v51;
    if (!advance_tok(v1, v46, v51, v55))
    {
      v215 = OUTLINED_FUNCTION_1_32();
      if (!testFldeq(v215, v216, v217, v218) && !advance_tok(v1, v219, v220, v221))
      {
        v222 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v222, v223);
LABEL_10:
        v43 = OUTLINED_FUNCTION_19_23();
        if (test_synch(v43, v44, 1, v45))
        {
          goto LABEL_11;
        }

LABEL_3:
        v15 = 94;
        break;
      }
    }

LABEL_11:
    LODWORD(v46) = v21;
LABEL_12:
    v47 = v1[13];
    if (v47)
    {
      v48 = OUTLINED_FUNCTION_34_15(v47);
      v21 = v46;
    }

    else
    {
      v48 = vback(v1, v46);
      v21 = 0;
    }

    v49 = v48;
    v15 = 94;
    v50 = v49 - 1;
    v51 = v21;
    v52 = v21;
    v53 = v21;
    v54 = v21;
    v55 = v21;
    v56 = v21;
    v57 = v21;
    switch(v50)
    {
      case 0:
        continue;
      case 1:
        v35 = v21;
        goto LABEL_61;
      case 2:
      case 16:
        goto LABEL_111;
      case 3:
        v42 = v21;
        goto LABEL_63;
      case 4:
      case 10:
        goto LABEL_10;
      case 5:
        goto LABEL_64;
      case 6:
        goto LABEL_65;
      case 7:
        v58 = OUTLINED_FUNCTION_3_31();
        v61 = testFldeq(v58, v59, v60, 14);
        v51 = v21;
        v46 = v21;
        if (!v61)
        {
          goto LABEL_82;
        }

        goto LABEL_12;
      case 8:
        goto LABEL_82;
      case 9:
        v131 = OUTLINED_FUNCTION_4_30();
        v134 = testFldeq(v131, v132, v133, 5);
        LODWORD(v46) = v21;
        if (!v134)
        {
          v137 = advance_tok(v1, v21, v135, v136);
          LODWORD(v46) = v21;
          if (!v137)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_12;
      case 12:
        goto LABEL_66;
      case 13:
        v106 = OUTLINED_FUNCTION_6_30();
        v109 = testFldeq(v106, v107, v108, 2);
        LODWORD(v46) = v21;
        if (!v109)
        {
          v112 = advance_tok(v1, v21, v110, v111);
          v52 = v21;
          LODWORD(v46) = v21;
          if (!v112)
          {
            goto LABEL_88;
          }
        }

        goto LABEL_12;
      case 14:
        goto LABEL_88;
      case 15:
        v113 = OUTLINED_FUNCTION_4_30();
        v116 = 10;
        goto LABEL_52;
      case 17:
        goto LABEL_67;
      case 18:
        v124 = OUTLINED_FUNCTION_4_30();
        v127 = testFldeq(v124, v125, v126, 1);
        LODWORD(v46) = v21;
        if (!v127)
        {
          v130 = advance_tok(v1, v21, v128, v129);
          v53 = v21;
          LODWORD(v46) = v21;
          if (!v130)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_12;
      case 19:
        goto LABEL_103;
      case 20:
        v117 = OUTLINED_FUNCTION_6_30();
        v120 = testFldeq(v117, v118, v119, 2);
        LODWORD(v46) = v21;
        if (!v120)
        {
          v123 = advance_tok(v1, v21, v121, v122);
          v54 = v21;
          LODWORD(v46) = v21;
          if (!v123)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_12;
      case 21:
        goto LABEL_104;
      case 22:
        v93 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v93, v94);
        v95 = OUTLINED_FUNCTION_4_30();
        v98 = testFldeq(v95, v96, v97, 3);
        LODWORD(v46) = v21;
        if (v98)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v71 = OUTLINED_FUNCTION_3_31();
        v74 = 16;
        goto LABEL_56;
      case 23:
        goto LABEL_106;
      case 24:
        v99 = OUTLINED_FUNCTION_4_30();
        v102 = testFldeq(v99, v100, v101, 11);
        v46 = v21;
        if (v102)
        {
          goto LABEL_12;
        }

        goto LABEL_33;
      case 25:
        bspop_boa(v1);
        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v71 = OUTLINED_FUNCTION_3_31();
        v74 = 19;
        goto LABEL_56;
      case 26:
        bspop_boa(v1);
LABEL_33:
        v105 = advance_tok(v1, v46, v103, v104);
        LODWORD(v55) = v21;
        LODWORD(v46) = v21;
        if (!v105)
        {
          goto LABEL_106;
        }

        goto LABEL_12;
      case 27:
        bspop_boa(v1);
        goto LABEL_111;
      case 28:
        v75 = OUTLINED_FUNCTION_4_30();
        v78 = testFldeq(v75, v76, v77, 5);
        v57 = v21;
        v46 = v21;
        if (!v78)
        {
          goto LABEL_108;
        }

        goto LABEL_12;
      case 29:
        goto LABEL_108;
      case 30:
        v140 = v21;
        goto LABEL_68;
      case 31:
        goto LABEL_92;
      case 33:
        goto LABEL_69;
      case 34:
        bspop_boa(v1);
        v62 = OUTLINED_FUNCTION_21_22();
        v65 = lpta_loadp_setscan_r(v62, v63, v64);
        LODWORD(v46) = v21;
        if (v65)
        {
          goto LABEL_12;
        }

        v66 = OUTLINED_FUNCTION_1_32();
        v70 = testFldeq(v66, v67, v68, v69);
        LODWORD(v46) = v21;
        if (v70)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v71 = OUTLINED_FUNCTION_0_34();
        goto LABEL_56;
      case 35:
        v89 = OUTLINED_FUNCTION_4_30();
        v92 = testFldeq(v89, v90, v91, 1);
        v56 = v21;
        v46 = v21;
        if (!v92)
        {
          goto LABEL_70;
        }

        goto LABEL_12;
      case 36:
        goto LABEL_70;
      case 37:
        bspop_boa(v1);
        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v71 = OUTLINED_FUNCTION_3_31();
        v74 = 4;
        goto LABEL_56;
      case 38:
        bspop_boa(v1);
        v82 = advance_tok(v1, v79, v80, v81);
        LODWORD(v46) = v21;
        if (v82)
        {
          goto LABEL_12;
        }

        v83 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v83, v84);
        v85 = OUTLINED_FUNCTION_6_30();
        v88 = testFldeq(v85, v86, v87, 1);
        LODWORD(v46) = v21;
        if (v88)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v71 = OUTLINED_FUNCTION_3_31();
        v74 = 3;
        goto LABEL_56;
      case 39:
        v113 = OUTLINED_FUNCTION_0_34();
LABEL_52:
        v138 = testFldeq(v113, v114, v115, v116);
        v46 = v21;
        if (!v138)
        {
          goto LABEL_53;
        }

        goto LABEL_12;
      case 40:
        bspop_boa(v1);
        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v71 = OUTLINED_FUNCTION_4_30();
        v74 = 9;
LABEL_56:
        if (testFldeq(v71, v72, v73, v74))
        {
          LODWORD(v46) = v21;
        }

        else
        {
          LODWORD(v46) = 1;
        }

        goto LABEL_12;
      case 41:
        bspop_boa(v1);
        goto LABEL_53;
      case 42:
LABEL_53:
        v139 = advance_tok(v1, v46, v51, v55);
        LODWORD(v46) = v21;
        if (v139)
        {
          goto LABEL_12;
        }

LABEL_111:
        v15 = 0;
        break;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_4:
  v16 = v15;
  vretproc(v1);
  return v16;
}