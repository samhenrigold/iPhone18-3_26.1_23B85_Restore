void heavy_syllable(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_108_7();
  v173 = *MEMORY[0x277D85DE8];
  v160 = 0;
  v161 = 0;
  v158 = 0;
  v159 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v154, v3);
  OUTLINED_FUNCTION_51_17();
  bzero(v172, v4);
  v5 = setjmp(v172);
  if (v5 || OUTLINED_FUNCTION_107_8(v5, v6, v7, v8, v9, v10, v11, v12, v152, v153, v154[0], v154[1], v154[2], v154[3], v154[4], v154[5], v154[6], v154[7], v154[8], v154[9], v154[10], v154[11], v154[12], v154[13], v154[14], v154[15], v154[16], v154[17], v154[18], v154[19], v154[20], v154[21], v154[22], v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172[0]))
  {
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_34_27();
  get_parm(v13, v14, v15, -6);
  push_ptr_init(v2, &v158);
  BYTE4(v157) = 0;
  LODWORD(v157) = 0;
  LODWORD(v155) = -65535;
  fence_46(v2, &_MergedGlobals_39);
  v16 = OUTLINED_FUNCTION_37_23();
  starttest(v16, v17);
  v18 = OUTLINED_FUNCTION_18_37();
  LODWORD(v21) = 0;
  v22 = 0;
  if (!lpta_loadp_setscan_l(v18, v19, v20))
  {
LABEL_9:
    v28 = OUTLINED_FUNCTION_119_7();
    savescptr(v28, v29, v30);
    OUTLINED_FUNCTION_48_17();
    if (test_string_s())
    {
      goto LABEL_19;
    }

    v31 = OUTLINED_FUNCTION_62_16();
    if (lpta_loadp_setscan_r(v31, v32, v33))
    {
      goto LABEL_19;
    }

    v34 = OUTLINED_FUNCTION_10_42();
    if (testFldeq(v34, v35, v36, 2))
    {
      goto LABEL_19;
    }

    v40 = advance_tok(v2, v37, v38, v39);
    v41 = v21;
    if (v40)
    {
      goto LABEL_19;
    }

LABEL_15:
    LODWORD(v21) = v41;
    v42 = OUTLINED_FUNCTION_19_37();
    if (chstream(v42, v43, v44))
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_4_44();
    if (test_string_s())
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  while (2)
  {
    v23 = OUTLINED_FUNCTION_37_23();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_39_22();
    if (!lpta_loadp_setscan_r(v25, v26, v27))
    {
      OUTLINED_FUNCTION_23_34();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_4_44();
      if (test_string_s())
      {
        LODWORD(v21) = v22;
      }

      else
      {
        LODWORD(v21) = 1;
      }

      goto LABEL_19;
    }

LABEL_53:
    v90 = OUTLINED_FUNCTION_28_30();
    starttest(v90, v91);
    v92 = OUTLINED_FUNCTION_62_16();
    if (lpta_loadp_setscan_l(v92, v93, v94))
    {
      LODWORD(v21) = v22;
LABEL_55:
      v95 = OUTLINED_FUNCTION_37_23();
      starttest(v95, v96);
      v97 = OUTLINED_FUNCTION_62_16();
      v89 = v21;
      if (lpta_loadp_setscan_l(v97, v98, v99))
      {
LABEL_56:
        v100 = OUTLINED_FUNCTION_37_23();
        starttest(v100, v101);
        v102 = OUTLINED_FUNCTION_62_16();
        if (!lpta_loadp_setscan_l(v102, v103, v104))
        {
          v140 = OUTLINED_FUNCTION_10_42();
          if (testFldeq(v140, v141, v142, 1))
          {
            goto LABEL_19;
          }

          if (advance_tok(v2, v143, v144, v145))
          {
            goto LABEL_19;
          }

          v146 = OUTLINED_FUNCTION_10_42();
          if (testFldeq(v146, v147, v148, 1) || advance_tok(v2, v149, v150, v151))
          {
            goto LABEL_19;
          }

          break;
        }

LABEL_57:
        v89 = v21;
        v105 = OUTLINED_FUNCTION_37_23();
        starttest(v105, v106);
        v107 = OUTLINED_FUNCTION_62_16();
        if (lpta_loadp_setscan_l(v107, v108, v109))
        {
          break;
        }

LABEL_58:
        v110 = OUTLINED_FUNCTION_119_7();
        savescptr(v110, v111, v112);
        OUTLINED_FUNCTION_10_42();
        if (test_string_s())
        {
          goto LABEL_69;
        }

        v113 = OUTLINED_FUNCTION_62_16();
        if (lpta_loadp_setscan_r(v113, v114, v115))
        {
          goto LABEL_69;
        }

        OUTLINED_FUNCTION_10_42();
        if (test_string_s())
        {
          goto LABEL_69;
        }
      }

      else
      {
LABEL_65:
        v122 = OUTLINED_FUNCTION_119_7();
        savescptr(v122, v123, v124);
        v125 = OUTLINED_FUNCTION_10_42();
        if (testFldeq(v125, v126, v127, 1))
        {
          goto LABEL_69;
        }

        if (advance_tok(v2, v128, v129, v130))
        {
          goto LABEL_69;
        }

        v131 = OUTLINED_FUNCTION_62_16();
        if (lpta_loadp_setscan_r(v131, v132, v133))
        {
          goto LABEL_69;
        }
      }

      v134 = OUTLINED_FUNCTION_10_42();
      if (testFldeq(v134, v135, v136, 1))
      {
LABEL_69:
        LODWORD(v21) = v89;
        goto LABEL_19;
      }

      LODWORD(v21) = v89;
      if (advance_tok(v2, v137, v138, v139))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v116 = OUTLINED_FUNCTION_27_31();
      bspush_ca_scan(v116, v117);
      v118 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v118, v119);
      OUTLINED_FUNCTION_10_42();
      LODWORD(v21) = v22;
      if (test_string_s())
      {
        goto LABEL_19;
      }

LABEL_63:
      LODWORD(v21) = v22;
      v120 = OUTLINED_FUNCTION_26_32();
      bspush_ca_scan(v120, v121);
      OUTLINED_FUNCTION_10_42();
      if (test_string_s())
      {
LABEL_19:
        v45 = v21;
LABEL_20:
        v46 = v2[13];
        if (v46)
        {
          v47 = OUTLINED_FUNCTION_53_17(v46);
          v21 = v48;
        }

        else
        {
          v47 = vback(v2, v45);
          v21 = 0;
        }

        switch(v47)
        {
          case 1:
            v22 = v21;
            continue;
          case 2:
            goto LABEL_9;
          case 3:
            v41 = v21;
            goto LABEL_15;
          case 4:
            v22 = v21;
            goto LABEL_53;
          case 5:
            bspop_boa(v2);
            v49 = OUTLINED_FUNCTION_0_47();
            v53 = testFldeq(v49, v50, v51, v52);
            v45 = v21;
            if (!v53)
            {
              v56 = advance_tok(v2, v21, v54, v55);
              v45 = v21;
              if (!v56)
              {
                v57 = OUTLINED_FUNCTION_122_7();
                v59 = savetok(v57, v58);
                v45 = v21;
                if (!v59)
                {
                  v62 = advance_tok(v2, v21, v60, v61);
                  v45 = v21;
                  if (!v62)
                  {
                    v63 = savetok(v2, &v155);
                    v45 = v21;
                    if (!v63)
                    {
                      v64 = OUTLINED_FUNCTION_122_7();
                      v66 = testeq_tvars(v64, v65, &v155);
                      v45 = v21;
                      if (!v66)
                      {
                        OUTLINED_FUNCTION_82_12();
                        bspush_ca_scan_boa();
                        OUTLINED_FUNCTION_2_46();
                        if (test_string_s())
                        {
                          v45 = v21;
                        }

                        else
                        {
                          v45 = 1;
                        }
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_20;
          case 6:
            bspop_boa(v2);
            goto LABEL_8;
          case 7:
            goto LABEL_55;
          case 8:
            bspush_ca_scan(v2, 15);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 9:
            v22 = v21;
            goto LABEL_63;
          case 10:
            v85 = OUTLINED_FUNCTION_74_12();
            bspush_ca_scan(v85, v86);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 12:
            v87 = OUTLINED_FUNCTION_95_9();
            bspush_ca_scan(v87, v88);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 13:
            v69 = OUTLINED_FUNCTION_35_26();
            v73 = testFldeq(v69, v70, v71, v72);
            v45 = v21;
            if (v73)
            {
              goto LABEL_20;
            }

            v76 = advance_tok(v2, v21, v74, v75);
            goto LABEL_45;
          case 15:
            v79 = OUTLINED_FUNCTION_103_8();
            bspush_ca_scan(v79, v80);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 16:
            v83 = OUTLINED_FUNCTION_49_17();
            bspush_ca_scan(v83, v84);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 17:
            v67 = OUTLINED_FUNCTION_100_8();
            bspush_ca_scan(v67, v68);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 18:
            v77 = OUTLINED_FUNCTION_66_15();
            bspush_ca_scan(v77, v78);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 19:
            v81 = OUTLINED_FUNCTION_42_21();
            bspush_ca_scan(v81, v82);
            OUTLINED_FUNCTION_10_42();
            goto LABEL_44;
          case 20:
            OUTLINED_FUNCTION_10_42();
LABEL_44:
            v76 = test_string_s();
LABEL_45:
            v45 = v21;
            if (!v76)
            {
              goto LABEL_8;
            }

            goto LABEL_20;
          case 21:
            goto LABEL_56;
          case 22:
            v89 = v21;
            goto LABEL_65;
          case 23:
            goto LABEL_57;
          case 25:
            v89 = v21;
            goto LABEL_58;
          default:
            goto LABEL_8;
        }
      }
    }

    break;
  }

LABEL_8:
  vretproc(v2);
  OUTLINED_FUNCTION_98_9();
  OUTLINED_FUNCTION_87_11();
}

void apply_strong_alternation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_21_34();
  v123 = *MEMORY[0x277D85DE8];
  v114[0] = 0;
  v112 = 0;
  v113 = 0;
  v110 = 0;
  v111 = 0;
  OUTLINED_FUNCTION_104_8();
  OUTLINED_FUNCTION_52_17();
  bzero(v105, v4);
  OUTLINED_FUNCTION_51_17();
  bzero(v122, v5);
  v6 = setjmp(v122);
  if (v6 || OUTLINED_FUNCTION_79_12(v6, v105, v7, v8, v9, v10, v11, v12, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], v105[10], v105[11], v105[12], v105[13], v105[14], v105[15], v105[16], v105[17], v105[18], v105[19], v105[20], v105[21], v105[22], v106[0], v106[1], v107[0], v107[1], v108, v109, v110, v111, v112, v113, v114[0], v114[1], v114[2], v115, v116, v117, v118, v119, v120, v121, v122[0]))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_83_12();
  get_parm(v13, v14, v15, -4);
  v16 = OUTLINED_FUNCTION_59_16();
  get_parm(v16, v17, v18, -4);
  LODWORD(v113) = 65532;
  v19 = OUTLINED_FUNCTION_49_17();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_43_20();
  push_ptr_init(v21, v22);
  v108 = 0xFFFC0000FFFCLL;
  v23 = OUTLINED_FUNCTION_66_15();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_74_12();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_42_21();
  fence_46(v27, v28);
  fence_46(v3, &unk_280581339);
  OUTLINED_FUNCTION_44_20();
  find_last_syll();
  while (2)
  {
    if (HIWORD(v113))
    {
      startloop(v3, 2);
      move_i(v3, &v113, 1);
      move_i(v3, &v108 + 4, 1);
      copyvar(v3, &v108, &v113 + 2);
      if (for_test(v3, &v113, &v108, &v108 + 2))
      {
LABEL_25:
        v76 = *(v3 + 104);
        if (v76)
        {
          v77 = OUTLINED_FUNCTION_53_17(v76);
        }

        else
        {
          v77 = OUTLINED_FUNCTION_99_8();
        }

        switch(v77)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_8;
          case 3:
            goto LABEL_31;
          case 4:
            goto LABEL_34;
          case 5:
            goto LABEL_32;
          case 6:
            goto LABEL_33;
          case 7:
            goto LABEL_9;
          case 8:
            goto LABEL_12;
          case 10:
            goto LABEL_13;
          case 11:
            goto LABEL_15;
          case 13:
            goto LABEL_21;
          case 14:
            if (forto_adv_l(v3, 12, 13, 20, 7, v107))
            {
              goto LABEL_25;
            }

            break;
          case 15:
            goto LABEL_19;
          case 16:
            goto LABEL_20;
          case 17:
            goto LABEL_22;
          case 18:
            goto LABEL_24;
          case 19:
            goto LABEL_16;
          case 20:
            goto LABEL_17;
          default:
            goto LABEL_3;
        }

        goto LABEL_3;
      }

      do
      {
LABEL_31:
        v78 = OUTLINED_FUNCTION_92_10();
        starttest(v78, v79);
        v80 = OUTLINED_FUNCTION_49_17();
        if (!lpta_loadp_setscan_l(v80, v81, 7))
        {
LABEL_32:
          v82 = OUTLINED_FUNCTION_94_9();
          savescptr(v82, v83, &v109);
          if (advance_tok(v3, v84, v85, v86))
          {
            goto LABEL_25;
          }

LABEL_33:
          v87 = OUTLINED_FUNCTION_86_11();
          savescptr(v87, v88, &v111);
        }

LABEL_34:
        ;
      }

      while (for_adv(v3, 2, 3, &v113, &v108, &v108 + 2));
    }

    break;
  }

LABEL_8:
  v29 = OUTLINED_FUNCTION_49_17();
  insert_stressval(v29, v30, &v109, v114, v31, v32, v33, v34);
LABEL_9:
  v35 = OUTLINED_FUNCTION_58_16();
  if (lpta_loadp_setscan_r(v35, v36, 7) || advance_tok(v3, v37, v38, v39) || (OUTLINED_FUNCTION_76_12(), v40 = OUTLINED_FUNCTION_7_43(), test_ptr(v40, v41, v42)))
  {
LABEL_12:
    v43 = 2;
    if (HIWORD(v114[0]) != 1)
    {
LABEL_13:
      v43 = 1;
    }

    HIWORD(v114[0]) = v43;
LABEL_15:
    v44 = OUTLINED_FUNCTION_102_8();
    startloop(v44, v45);
    v46 = OUTLINED_FUNCTION_66_15();
    copyvar(v46, v47, &v111);
    v48 = OUTLINED_FUNCTION_74_12();
    copyvar(v48, v49, v50);
LABEL_16:
    while (1)
    {
      v51 = OUTLINED_FUNCTION_66_15();
      if (forall_to_test(v51, v52, v106))
      {
        goto LABEL_25;
      }

LABEL_17:
      v53 = OUTLINED_FUNCTION_82_12();
      bspush_ca(v53);
      v54 = OUTLINED_FUNCTION_66_15();
      if (lpta_loadp_setscan_l(v54, v55, 7) || advance_tok(v3, v56, v57, v58))
      {
        goto LABEL_25;
      }

LABEL_19:
      v59 = OUTLINED_FUNCTION_110_7();
      savescptr(v59, v60, &v109);
      if (advance_tok(v3, v61, v62, v63))
      {
        goto LABEL_25;
      }

LABEL_20:
      v64 = OUTLINED_FUNCTION_101_8();
      savescptr(v64, v65, &v111);
LABEL_21:
      v66 = OUTLINED_FUNCTION_49_17();
      insert_stressval(v66, v67, &v109, v114, v68, v69, v70, v71);
LABEL_22:
      HIWORD(v114[0]) = 2;
      v72 = OUTLINED_FUNCTION_49_17();
      lpta_loadpn(v72, v73);
      v74 = OUTLINED_FUNCTION_58_16();
      rpta_loadpn(v74, v75);
      if (!compare_ptas(v3) && !testeq(v3))
      {
        goto LABEL_3;
      }

LABEL_24:
      forall_cont_from();
    }
  }

  if (HIWORD(v114[0]) == 2)
  {
    v89 = OUTLINED_FUNCTION_58_16();
    lpta_rpta_loadp(v89, v90, v91);
    v92 = OUTLINED_FUNCTION_14_41();
    insert_2pt_i(v92, v93, v94, v95, 0);
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_87_11();
}

uint64_t insert_adj_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_21_34();
  v60 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v59 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v58, v3);
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_114_7(v4, v5);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_36_24();
  if (OUTLINED_FUNCTION_105_8(v6, v7, v8, v9, v10))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_83_12();
  get_parm(v12, v13, v14, -6);
  v15 = OUTLINED_FUNCTION_59_16();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_73_12();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v20, v21);
  v59 = 0xFFFC0000FFFCLL;
  fence_46(v1, &_MergedGlobals_39);
  v22 = OUTLINED_FUNCTION_37_23();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_44_20();
  if (lpta_loadp_setscan_l(v24, v25, 2) || advance_tok(v1, v26, v27, v28))
  {
    goto LABEL_8;
  }

  while (2)
  {
    v29 = OUTLINED_FUNCTION_80_12();
    savescptr(v29, v30, v31);
    OUTLINED_FUNCTION_48_17();
    if (!test_string_s())
    {
LABEL_7:
      OUTLINED_FUNCTION_77_12();
      v32 = OUTLINED_FUNCTION_67_15();
      savescptr(v32, v33, v34);
LABEL_8:
      v35 = OUTLINED_FUNCTION_65_15();
      lpta_rpta_loadp(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_10_42();
      if (!insert_2pt_s(v38, v39, v40, v41, v42))
      {
        v43 = OUTLINED_FUNCTION_37_23();
        starttest_l(v43, v44);
        v45 = OUTLINED_FUNCTION_11_42();
        move_i(v45, v46, v47);
        v48 = OUTLINED_FUNCTION_18_37();
        move_i(v48, v49, v50);
        v51 = OUTLINED_FUNCTION_32_28();
        apply_strong_alternation(v51, v52, v53);
        if (!v54)
        {
          break;
        }
      }
    }

    v55 = *(v1 + 104);
    if (v55)
    {
      v56 = OUTLINED_FUNCTION_53_17(v55);
    }

    else
    {
      v56 = OUTLINED_FUNCTION_99_8();
    }

    if ((v56 - 1) <= 3)
    {
      OUTLINED_FUNCTION_91_10();
      switch(v57)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_3;
        default:
          goto LABEL_8;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_98_9();
}

uint64_t test_lex_pre(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = 0;
  v57 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v54, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v61, v3);
  if (setjmp(v61) || ventproc(a1, v54, v60, v59, v58, v61) || (BYTE4(v57) = 0, LODWORD(v57) = 0, LODWORD(v55) = -65535, fence_46(a1, &_MergedGlobals_39), v4 = 1, v5 = OUTLINED_FUNCTION_81_12(), starttest(v5, v6), v7 = OUTLINED_FUNCTION_58_16(), lpta_loadp_setscan_r(v7, v8, 1)))
  {
LABEL_4:
    v4 = 94;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v10, v11);
    OUTLINED_FUNCTION_2_46();
    if (test_string_s())
    {
      goto LABEL_10;
    }

LABEL_7:
    v12 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v12, v13);
LABEL_8:
    OUTLINED_FUNCTION_2_46();
LABEL_9:
    while (test_string_s())
    {
LABEL_10:
      while (2)
      {
        v14 = *(a1 + 104);
        if (v14)
        {
          v15 = OUTLINED_FUNCTION_53_17(v14);
        }

        else
        {
          v15 = OUTLINED_FUNCTION_99_8();
        }

        if ((v15 - 2) > 0x21)
        {
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_91_10();
        switch(v16)
        {
          case 1:
            v46 = OUTLINED_FUNCTION_23_34();
            bspush_ca_scan(v46, v47);
            goto LABEL_40;
          case 2:
          case 4:
          case 7:
          case 12:
          case 21:
          case 24:
          case 28:
          case 32:
            goto LABEL_5;
          case 3:
          case 20:
          case 33:
            v17 = OUTLINED_FUNCTION_0_47();
            if (!testFldeq(v17, v18, v19, v20) && !advance_tok(a1, v21, v22, v23))
            {
              v24 = OUTLINED_FUNCTION_122_7();
              if (!savetok(v24, v25) && !advance_tok(a1, v26, v27, v28))
              {
                v29 = OUTLINED_FUNCTION_112_7();
                if (!savetok(v29, v30))
                {
                  v31 = OUTLINED_FUNCTION_122_7();
                  if (!testeq_tvars(v31, v32, v33))
                  {
                    goto LABEL_41;
                  }
                }
              }
            }

            continue;
          case 5:
            v42 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v42, v43);
            OUTLINED_FUNCTION_2_46();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 6:
          case 8:
          case 11:
          case 23:
          case 30:
            goto LABEL_7;
          case 9:
          case 13:
          case 25:
          case 27:
          case 31:
            goto LABEL_8;
          case 10:
            v48 = OUTLINED_FUNCTION_25_32();
            bspush_ca_scan(v48, v49);
            goto LABEL_40;
          case 14:
          case 16:
          case 17:
            v50 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v50, v51);
            OUTLINED_FUNCTION_5_44();
            goto LABEL_9;
          case 15:
            v52 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v52, v53);
LABEL_40:
            OUTLINED_FUNCTION_4_44();
            break;
          case 18:
            v38 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v38, v39);
            OUTLINED_FUNCTION_2_46();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 19:
            v44 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v44, v45);
            OUTLINED_FUNCTION_2_46();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 22:
            v36 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v36, v37);
            OUTLINED_FUNCTION_4_44();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 26:
            OUTLINED_FUNCTION_4_44();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          case 29:
            v34 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v34, v35);
            OUTLINED_FUNCTION_2_46();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
          default:
            v40 = OUTLINED_FUNCTION_28_30();
            bspush_ca_scan(v40, v41);
            OUTLINED_FUNCTION_4_44();
            if (!test_string_s())
            {
              goto LABEL_7;
            }

            continue;
        }

        break;
      }
    }

LABEL_41:
    v4 = 0;
  }

LABEL_5:
  vretproc(a1);
  return v4;
}

uint64_t insert_eng_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_21_34();
  v90 = *MEMORY[0x277D85DE8];
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v86[0] = 0;
  v86[1] = 0;
  v85[0] = 0;
  v85[1] = 0;
  v84 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v83, v5);
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_114_7(v6, v7);
  if (setjmp(v4) || (OUTLINED_FUNCTION_106_8(), OUTLINED_FUNCTION_105_8(v8, v9, v10, v11, v12)))
  {
LABEL_3:
    v2 = 94;
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_75_12();
  get_parm(v14, v15, v3, -6);
  v16 = OUTLINED_FUNCTION_59_16();
  get_parm(v16, v17, v18, -4);
  push_ptr_init(v1, v86);
  v19 = OUTLINED_FUNCTION_112_7();
  push_ptr_init(v19, v20);
  v84 = 65532;
  fence_46(v1, &_MergedGlobals_39);
  v21 = OUTLINED_FUNCTION_37_23();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_58_16();
  if (!lpta_loadp_setscan_r(v23, v24, 7) && !advance_tok(v1, v25, v26, v27))
  {
LABEL_7:
    OUTLINED_FUNCTION_78_12();
    savescptr(v1, v28, v86);
    if (advance_tok(v1, v29, v30, v31))
    {
      goto LABEL_12;
    }

LABEL_8:
    OUTLINED_FUNCTION_77_12();
    v32 = OUTLINED_FUNCTION_111_7();
    savescptr(v32, v33, v34);
  }

LABEL_9:
  v35 = HIWORD(v87);
  if (HIWORD(v87) == 1)
  {
    v36 = OUTLINED_FUNCTION_23_34();
    starttest(v36, v37);
    v2 = &v84;
    v38 = OUTLINED_FUNCTION_11_42();
    move_i(v38, v39, v40);
    v45 = v86;
    v46 = (v1 + 1640);
    goto LABEL_11;
  }

  while (2)
  {
    if (v35 == 2)
    {
      v50 = OUTLINED_FUNCTION_27_31();
      starttest(v50, v51);
LABEL_29:
      v2 = &v84;
      v80 = OUTLINED_FUNCTION_11_42();
      move_i(v80, v81, v82);
      v46 = v86;
      v45 = v85;
LABEL_11:
      if (insert_stressval(v1, v46, v45, &v84, v41, v42, v43, v44))
      {
        goto LABEL_12;
      }

LABEL_30:
      v2 = 0;
      break;
    }

LABEL_22:
    if (v35 != 3)
    {
LABEL_26:
      if (v35 != 4)
      {
        goto LABEL_30;
      }

      v71 = OUTLINED_FUNCTION_58_16();
      lpta_rpta_loadp(v71, v72, v73);
      v2 = 0;
      v74 = OUTLINED_FUNCTION_14_41();
      if (insert_2pt_i(v74, v75, v76, v77, 0))
      {
        break;
      }

      v78 = OUTLINED_FUNCTION_37_23();
      starttest_l(v78, v79);
      goto LABEL_29;
    }

    v52 = OUTLINED_FUNCTION_26_32();
    starttest(v52, v53);
    v2 = &v84;
    v54 = OUTLINED_FUNCTION_11_42();
    move_i(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_58_16();
    if (!insert_stressval(v57, v58, v59, &v84, v60, v61, v62, v63))
    {
LABEL_24:
      v64 = OUTLINED_FUNCTION_111_7();
      lpta_rpta_loadp(v64, v65, v66);
      v2 = 0;
      v67 = OUTLINED_FUNCTION_14_41();
      if (!insert_2pt_i(v67, v68, v69, v70, 0))
      {
        break;
      }
    }

LABEL_12:
    v47 = *(v1 + 104);
    if (v47)
    {
      v48 = OUTLINED_FUNCTION_53_17(v47);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_99_8();
    }

    if ((v48 - 1) > 0xA)
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_91_10();
    switch(v49)
    {
      case 1:
        goto LABEL_7;
      case 2:
        goto LABEL_8;
      case 3:
        v35 = HIWORD(v87);
        continue;
      case 4:
      case 5:
      case 7:
      case 10:
        goto LABEL_4;
      case 6:
        v35 = HIWORD(v87);
        goto LABEL_22;
      case 8:
        v35 = HIWORD(v87);
        goto LABEL_26;
      case 9:
        goto LABEL_24;
      default:
        goto LABEL_9;
    }
  }

LABEL_4:
  vretproc(v1);
  return v2;
}

void multi_stress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_21_34();
  v1008 = *MEMORY[0x277D85DE8];
  v995 = 0;
  v996 = 0;
  v993 = 0;
  v994 = 0;
  HIDWORD(v992) = 0;
  v990 = 0;
  v991 = 0;
  HIDWORD(v989) = 0;
  v987 = 0;
  v988 = 0;
  v985 = 0;
  v986 = 0;
  v983 = 0;
  v984 = 0;
  v981 = 0;
  v982 = 0;
  v979 = 0;
  v980 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v978, v4);
  OUTLINED_FUNCTION_51_17();
  bzero(v1007, v5);
  v6 = setjmp(v1007);
  if (v6 || OUTLINED_FUNCTION_79_12(v6, v978, v7, v8, v9, v10, v11, v12, v977, v978[0], v978[1], v978[2], v978[3], v978[4], v978[5], v978[6], v978[7], v978[8], v978[9], v978[10], v978[11], v978[12], v978[13], v978[14], v978[15], v978[16], v978[17], v978[18], v978[19], v978[20], v978[21], v978[22], v979, v980, v981, v982, v983, v984, v985, v986, v987, v988, v989, v990, v991, v992, v993, v994, v995, v996, v997, v998, v999, v1000, v1001, v1002, v1003, v1004, v1005, v1006, v1007[0]))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_41_21();
  get_parm(v13, v14, v15, -6);
  v16 = OUTLINED_FUNCTION_34_27();
  get_parm(v16, v17, v18, -6);
  HIDWORD(v992) = 65532;
  push_ptr_init(v3, &v990);
  HIDWORD(v989) = 65532;
  push_ptr_init(v3, &v987);
  push_ptr_init(v3, &v985);
  push_ptr_init(v3, &v983);
  push_ptr_init(v3, &v981);
  v19 = OUTLINED_FUNCTION_112_7();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_42_21();
  fence_46(v21, v22);
  fence_46(v3, &unk_280581335);
  v23 = OUTLINED_FUNCTION_41_21();
  lpta_rpta_loadp(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_38_22();
  if (!setd_lookup(v26, v27, 454))
  {
    v47 = OUTLINED_FUNCTION_6_43();
    test_noun_verb(v47, v48, v49, v50, v51, v52);
    LODWORD(v39) = 0;
LABEL_13:
    OUTLINED_FUNCTION_31_30();
    if (v46)
    {
      goto LABEL_15;
    }

    goto LABEL_87;
  }

  v28 = 0;
LABEL_6:
  v29 = OUTLINED_FUNCTION_6_43();
  lpta_rpta_loadp(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_38_22();
  if (setd_lookup(v32, v33, 455))
  {
LABEL_129:
    v257 = OUTLINED_FUNCTION_6_43();
    lpta_rpta_loadp(v257, v258, v259);
    v260 = OUTLINED_FUNCTION_38_22();
    if (!setd_lookup(v260, v261, 456))
    {
      v402 = OUTLINED_FUNCTION_6_43();
      test_noun_verb(v402, v403, v404, v405, v406, v407);
      v39 = v28;
LABEL_192:
      OUTLINED_FUNCTION_24_32();
      if (!v46)
      {
LABEL_199:
        v414 = OUTLINED_FUNCTION_37_23();
        starttest(v414, v415);
        v416 = OUTLINED_FUNCTION_39_22();
        v28 = v39;
        if (lpta_loadp_setscan_l(v416, v417, v418))
        {
          goto LABEL_15;
        }

LABEL_206:
        savescptr(v3, 26, &v990);
        OUTLINED_FUNCTION_2_46();
        if (test_string_s())
        {
          goto LABEL_374;
        }

        v427 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v427, v428);
        OUTLINED_FUNCTION_38_22();
        v429 = test_string_s();
        v64 = v28;
        LODWORD(v60) = v28;
        if (v429)
        {
          goto LABEL_17;
        }

LABEL_208:
        v28 = v64;
        v430 = OUTLINED_FUNCTION_39_22();
        if (lpta_loadp_setscan_r(v430, v431, v432))
        {
          goto LABEL_374;
        }

        v433 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v433, v434);
        OUTLINED_FUNCTION_4_44();
        v435 = test_string_s();
        v65 = v28;
        LODWORD(v60) = v28;
        if (v435)
        {
          goto LABEL_17;
        }

LABEL_210:
        LODWORD(v39) = v65;
        OUTLINED_FUNCTION_13_41();
        if (test_string_s())
        {
          goto LABEL_464;
        }

        *(v3 + 136) = v28;
        v436 = OUTLINED_FUNCTION_7_43();
        if (test_ptr(v436, v437, v438))
        {
          goto LABEL_464;
        }
      }

      goto LABEL_87;
    }

LABEL_130:
    v262 = OUTLINED_FUNCTION_6_43();
    lpta_rpta_loadp(v262, v263, v264);
    v265 = OUTLINED_FUNCTION_38_22();
    if (setd_lookup(v265, v266, 457))
    {
      v39 = v28;
LABEL_132:
      v267 = OUTLINED_FUNCTION_39_22();
      if (lpta_loadp_setscan_r(v267, v268, v269) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v270 = OUTLINED_FUNCTION_7_43(), test_ptr(v270, v271, v272)))
      {
LABEL_135:
        v273 = OUTLINED_FUNCTION_39_22();
        if (!lpta_loadp_setscan_r(v273, v274, v275))
        {
          OUTLINED_FUNCTION_13_41();
          if (!test_string_s())
          {
            *(v3 + 136) = v28;
            v276 = OUTLINED_FUNCTION_7_43();
            if (!test_ptr(v276, v277, v278))
            {
              v510 = OUTLINED_FUNCTION_6_43();
              test_noun_adj(v510, v511, v512, v513, v514, v515);
LABEL_251:
              OUTLINED_FUNCTION_60_16();
              if (!v46)
              {
                goto LABEL_100;
              }

              goto LABEL_201;
            }
          }
        }

LABEL_138:
        v28 = v39;
        v279 = OUTLINED_FUNCTION_37_23();
        starttest(v279, v280);
        v281 = OUTLINED_FUNCTION_39_22();
        if (!lpta_loadp_setscan_r(v281, v282, v283))
        {
          OUTLINED_FUNCTION_4_44();
          if (!test_string_s())
          {
            v456 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v456, v457);
            OUTLINED_FUNCTION_17_38();
            v458 = test_string_s();
            v66 = v39;
            LODWORD(v60) = v39;
            if (v458)
            {
              goto LABEL_17;
            }

LABEL_224:
            v28 = v66;
            OUTLINED_FUNCTION_76_12();
            v459 = OUTLINED_FUNCTION_7_43();
            if (test_ptr(v459, v460, v461))
            {
              goto LABEL_374;
            }

            v462 = OUTLINED_FUNCTION_50_17();
            lpta_loadpn(v462, v463);
            v464 = OUTLINED_FUNCTION_71_13();
            rpta_loadpn(v464, v465);
            if (compare_ptas(v3) || testeq(v3) || (v466 = OUTLINED_FUNCTION_68_13(), lpta_loadpn(v466, v467), v468 = OUTLINED_FUNCTION_84_12(), rpta_loadpn(v468, v469), compare_ptas(v3)) || testeq(v3))
            {
LABEL_229:
              v470 = OUTLINED_FUNCTION_6_43();
              test_noun_adj(v470, v471, v472, v473, v474, v475);
              LODWORD(v39) = v28;
LABEL_230:
              OUTLINED_FUNCTION_60_16();
              if (v46)
              {
                goto LABEL_15;
              }
            }

            else
            {
              v965 = OUTLINED_FUNCTION_37_23();
              starttest(v965, v966);
              v967 = OUTLINED_FUNCTION_50_17();
              if (lpta_loadp_setscan_l(v967, v968, 4))
              {
LABEL_381:
                v787 = OUTLINED_FUNCTION_37_23();
                starttest(v787, v788);
                v789 = OUTLINED_FUNCTION_63_16();
                if (lpta_loadp_setscan_r(v789, v790, v791))
                {
                  LODWORD(v39) = v28;
LABEL_383:
                  v792 = OUTLINED_FUNCTION_6_43();
                  test_noun_adj(v792, v793, v794, v795, v796, v797);
                  if (!v798)
                  {
                    OUTLINED_FUNCTION_60_16();
                    if (v46)
                    {
                      goto LABEL_15;
                    }
                  }
                }

                else
                {
                  v891 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v891, v892);
                  v893 = OUTLINED_FUNCTION_16_40();
                  v896 = testFldeq(v893, v894, v895, 10);
                  v69 = v28;
                  v60 = v28;
                  if (v896)
                  {
                    goto LABEL_17;
                  }

LABEL_430:
                  LODWORD(v39) = v69;
                  if (advance_tok(v3, v60, v72, v64))
                  {
                    goto LABEL_464;
                  }
                }
              }

              else
              {
                v969 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v969, v970);
                v67 = v28;
LABEL_462:
                v28 = v67;
                v971 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v971, v972);
                v973 = OUTLINED_FUNCTION_16_40();
                v976 = testFldeq(v973, v974, v975, 7);
                v68 = v28;
                v60 = v28;
                if (v976)
                {
                  goto LABEL_17;
                }

LABEL_463:
                LODWORD(v39) = v68;
                if (advance_tok(v3, v60, v72, v64))
                {
                  goto LABEL_464;
                }
              }
            }

            goto LABEL_87;
          }
        }

LABEL_140:
        v284 = OUTLINED_FUNCTION_39_22();
        if (lpta_loadp_setscan_r(v284, v285, v286) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v287 = OUTLINED_FUNCTION_7_43(), test_ptr(v287, v288, v289)))
        {
LABEL_143:
          v290 = OUTLINED_FUNCTION_39_22();
          if (!lpta_loadp_setscan_r(v290, v291, v292))
          {
            OUTLINED_FUNCTION_13_41();
            if (!test_string_s())
            {
              *(v3 + 136) = v28;
              v293 = OUTLINED_FUNCTION_7_43();
              if (!test_ptr(v293, v294, v295))
              {
                v593 = OUTLINED_FUNCTION_6_43();
                test_verb_adj(v593, v594, v595, v596, v597, v598);
LABEL_283:
                OUTLINED_FUNCTION_31_30();
                if (!v46)
                {
                  goto LABEL_100;
                }

                goto LABEL_15;
              }
            }
          }

LABEL_146:
          LOBYTE(v28) = v39;
          v296 = OUTLINED_FUNCTION_6_43();
          lpta_rpta_loadp(v296, v297, v298);
          v299 = OUTLINED_FUNCTION_38_22();
          if (setd_lookup(v299, v300, 458))
          {
LABEL_147:
            v301 = OUTLINED_FUNCTION_39_22();
            if (lpta_loadp_setscan_r(v301, v302, v303) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v304 = OUTLINED_FUNCTION_7_43(), test_ptr(v304, v305, v306)))
            {
LABEL_150:
              v28 = v39;
              v307 = OUTLINED_FUNCTION_6_43();
              lpta_rpta_loadp(v307, v308, v309);
              v310 = OUTLINED_FUNCTION_38_22();
              if (setd_lookup(v310, v311, 459))
              {
LABEL_151:
                v312 = OUTLINED_FUNCTION_6_43();
                lpta_rpta_loadp(v312, v313, v314);
                v315 = OUTLINED_FUNCTION_38_22();
                if (setd_lookup(v315, v316, 460))
                {
LABEL_152:
                  v317 = OUTLINED_FUNCTION_37_23();
                  starttest(v317, v318);
                  v319 = OUTLINED_FUNCTION_39_22();
                  if (lpta_loadp_setscan_r(v319, v320, v321))
                  {
LABEL_153:
                    v322 = OUTLINED_FUNCTION_37_23();
                    starttest(v322, v323);
                    v324 = OUTLINED_FUNCTION_39_22();
                    if (!lpta_loadp_setscan_r(v324, v325, v326))
                    {
                      v538 = OUTLINED_FUNCTION_37_23();
                      bspush_ca_scan(v538, v539);
                      OUTLINED_FUNCTION_4_44();
                      v540 = test_string_s();
                      v74 = v28;
                      LODWORD(v60) = v28;
                      if (v540)
                      {
                        goto LABEL_17;
                      }

LABEL_264:
                      v39 = v74;
                      OUTLINED_FUNCTION_13_41();
                      if (!test_string_s())
                      {
                        *(v3 + 136) = v28;
                        v541 = OUTLINED_FUNCTION_7_43();
                        if (!test_ptr(v541, v542, v543))
                        {
                          v544 = OUTLINED_FUNCTION_6_43();
                          test_noun_verb(v544, v545, v546, v547, v548, v549);
LABEL_267:
                          LODWORD(v28) = v39;
                          OUTLINED_FUNCTION_24_32();
                          if (v46)
                          {
                            v550 = OUTLINED_FUNCTION_37_23();
                            starttest_l(v550, v551);
                            v552 = OUTLINED_FUNCTION_62_16();
                            if (!lpta_loadp_setscan_l(v552, v553, v554) && !advance_tok(v3, v555, v556, v557))
                            {
LABEL_271:
                              v558 = OUTLINED_FUNCTION_59_16();
                              savescptr(v558, v559, v560);
                              v561 = OUTLINED_FUNCTION_42_21();
                              lpta_rpta_loadp(v561, v562, v563);
                              v564 = OUTLINED_FUNCTION_10_42();
                              inserted = insert_2pt_s(v564, v565, v566, v567, v568);
                              v28 = v39;
                              LODWORD(v60) = v39;
                              if (inserted)
                              {
                                goto LABEL_17;
                              }
                            }
                          }

LABEL_396:
                          LODWORD(v39) = v28;
                          goto LABEL_15;
                        }
                      }

                      goto LABEL_464;
                    }

                    v39 = v28;
LABEL_155:
                    v327 = OUTLINED_FUNCTION_39_22();
                    if (!lpta_loadp_setscan_r(v327, v328, v329))
                    {
                      OUTLINED_FUNCTION_13_41();
                      if (!test_string_s())
                      {
                        *(v3 + 136) = v28;
                        v330 = OUTLINED_FUNCTION_7_43();
                        if (!test_ptr(v330, v331, v332))
                        {
                          v813 = OUTLINED_FUNCTION_6_43();
                          test_noun_verb(v813, v814, v815, v816, v817, v818);
LABEL_402:
                          OUTLINED_FUNCTION_24_32();
                          if (!v46)
                          {
                            goto LABEL_15;
                          }

                          v819 = OUTLINED_FUNCTION_37_23();
                          starttest(v819, v820);
                          v821 = OUTLINED_FUNCTION_62_16();
                          if (!lpta_loadp_setscan_l(v821, v822, v823))
                          {
                            v960 = advance_tok(v3, v824, v825, v826);
                            v687 = v39;
                            if (!v960)
                            {
LABEL_331:
                              v688 = v687;
                              v28 = &v979;
                              v689 = OUTLINED_FUNCTION_59_16();
                              savescptr(v689, v690, v691);
                              v692 = OUTLINED_FUNCTION_42_21();
                              lpta_rpta_loadp(v692, v693, v694);
                              v695 = OUTLINED_FUNCTION_10_42();
                              v700 = insert_2pt_s(v695, v696, v697, v698, v699);
                              LODWORD(v39) = v688;
                              LODWORD(v60) = v688;
                              if (v700)
                              {
                                goto LABEL_17;
                              }
                            }
                          }

                          goto LABEL_87;
                        }
                      }
                    }

LABEL_158:
                    v28 = v39;
                    v333 = OUTLINED_FUNCTION_37_23();
                    starttest(v333, v334);
                    v335 = OUTLINED_FUNCTION_39_22();
                    if (lpta_loadp_setscan_r(v335, v336, v337))
                    {
LABEL_159:
                      v338 = OUTLINED_FUNCTION_37_23();
                      starttest(v338, v339);
                      v340 = OUTLINED_FUNCTION_39_22();
                      if (!lpta_loadp_setscan_r(v340, v341, v342))
                      {
                        v627 = OUTLINED_FUNCTION_37_23();
                        bspush_ca_scan(v627, v628);
                        OUTLINED_FUNCTION_38_22();
                        v629 = test_string_s();
                        v76 = v28;
                        LODWORD(v60) = v28;
                        if (v629)
                        {
                          goto LABEL_17;
                        }

LABEL_299:
                        v28 = v76;
                        OUTLINED_FUNCTION_76_12();
                        v630 = OUTLINED_FUNCTION_7_43();
                        if (!test_ptr(v630, v631, v632))
                        {
                          v633 = OUTLINED_FUNCTION_6_43();
                          test_nva(v633, v634, v635, v636, v637, v638);
LABEL_389:
                          if (!*(v3 + 4438))
                          {
                            v799 = OUTLINED_FUNCTION_6_43();
                            test_noun_verb(v799, v800, v801, v802, v803, v804);
                          }

                          LODWORD(v39) = v28;
LABEL_392:
                          OUTLINED_FUNCTION_31_30();
                          if (!v46)
                          {
                            goto LABEL_100;
                          }

                          goto LABEL_15;
                        }

                        goto LABEL_374;
                      }

                      v39 = v28;
LABEL_161:
                      v343 = OUTLINED_FUNCTION_39_22();
                      if (lpta_loadp_setscan_r(v343, v344, v345) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v346 = OUTLINED_FUNCTION_7_43(), test_ptr(v346, v347, v348)))
                      {
LABEL_164:
                        v349 = OUTLINED_FUNCTION_39_22();
                        if (lpta_loadp_setscan_r(v349, v350, v351) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v352 = OUTLINED_FUNCTION_7_43(), test_ptr(v352, v353, v354)))
                        {
LABEL_167:
                          v355 = OUTLINED_FUNCTION_39_22();
                          if (lpta_loadp_setscan_r(v355, v356, v357) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v358 = OUTLINED_FUNCTION_7_43(), test_ptr(v358, v359, v360)))
                          {
LABEL_170:
                            v361 = OUTLINED_FUNCTION_39_22();
                            if (lpta_loadp_setscan_r(v361, v362, v363) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v364 = OUTLINED_FUNCTION_7_43(), test_ptr(v364, v365, v366)))
                            {
LABEL_173:
                              v28 = v39;
                              v367 = OUTLINED_FUNCTION_37_23();
                              starttest(v367, v368);
                              v369 = OUTLINED_FUNCTION_39_22();
                              if (lpta_loadp_setscan_r(v369, v370, v371) || (OUTLINED_FUNCTION_5_44(), test_string_s()))
                              {
LABEL_175:
                                v372 = OUTLINED_FUNCTION_39_22();
                                if (lpta_loadp_setscan_r(v372, v373, v374) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v375 = OUTLINED_FUNCTION_7_43(), test_ptr(v375, v376, v377)))
                                {
LABEL_178:
                                  v378 = OUTLINED_FUNCTION_39_22();
                                  if (lpta_loadp_setscan_r(v378, v379, v380) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v381 = OUTLINED_FUNCTION_7_43(), test_ptr(v381, v382, v383)))
                                  {
LABEL_181:
                                    v384 = OUTLINED_FUNCTION_39_22();
                                    if (lpta_loadp_setscan_r(v384, v385, v386) || (OUTLINED_FUNCTION_13_41(), test_string_s()) || (*(v3 + 136) = v28, v387 = OUTLINED_FUNCTION_7_43(), test_ptr(v387, v388, v389)))
                                    {
LABEL_184:
                                      v390 = OUTLINED_FUNCTION_39_22();
                                      if (lpta_loadp_setscan_r(v390, v391, v392))
                                      {
                                        goto LABEL_3;
                                      }

                                      OUTLINED_FUNCTION_13_41();
                                      if (test_string_s())
                                      {
                                        goto LABEL_3;
                                      }

                                      *(v3 + 136) = v28;
                                      v393 = OUTLINED_FUNCTION_7_43();
                                      if (test_ptr(v393, v394, v395))
                                      {
                                        goto LABEL_3;
                                      }

                                      v396 = OUTLINED_FUNCTION_6_43();
                                      test_verb_adj(v396, v397, v398, v399, v400, v401);
LABEL_188:
                                      v239 = v39;
                                      OUTLINED_FUNCTION_31_30();
                                      if (!v46)
                                      {
LABEL_377:
                                        v780 = OUTLINED_FUNCTION_37_23();
                                        starttest(v780, v781);
                                        v28 = (&v989 + 4);
                                        v782 = OUTLINED_FUNCTION_11_42();
                                        move_i(v782, v783, v784);
                                        v785 = OUTLINED_FUNCTION_59_16();
                                        v786 = insert_eng_stress(v785);
                                        LODWORD(v60) = v239;
                                        if (!v786)
                                        {
                                          goto LABEL_3;
                                        }

                                        goto LABEL_17;
                                      }

                                      goto LABEL_238;
                                    }

                                    v827 = OUTLINED_FUNCTION_37_23();
                                    starttest(v827, v828);
                                    v829 = OUTLINED_FUNCTION_39_22();
                                    if (!lpta_loadp_setscan_r(v829, v830, v831))
                                    {
                                      OUTLINED_FUNCTION_2_46();
                                      v239 = v39;
                                      if (!test_string_s())
                                      {
LABEL_359:
                                        v756 = OUTLINED_FUNCTION_19_37();
                                        if (test_synch(v756, v757, v758, v759))
                                        {
                                          LODWORD(v60) = v239;
                                          goto LABEL_17;
                                        }

                                        goto LABEL_238;
                                      }
                                    }

LABEL_408:
                                    v239 = v39;
                                    v832 = OUTLINED_FUNCTION_37_23();
                                    starttest(v832, v833);
                                    v529 = OUTLINED_FUNCTION_20_35();
LABEL_260:
                                    move_i(v529, v530, v531);
                                    v28 = 0;
LABEL_261:
                                    v532 = OUTLINED_FUNCTION_49_17();
                                    move_i(v532, v533, 0);
                                    v534 = OUTLINED_FUNCTION_29_30();
                                    apply_strong_alternation(v534, v535, v536);
                                    LODWORD(v60) = v239;
                                    if (!v537)
                                    {
                                      goto LABEL_3;
                                    }

                                    goto LABEL_17;
                                  }

                                  v834 = OUTLINED_FUNCTION_37_23();
                                  starttest(v834, v835);
                                  v836 = OUTLINED_FUNCTION_37_23();
                                  bspush_ca(v836);
                                  v837 = OUTLINED_FUNCTION_40_21();
                                  if (!lpta_loadp_setscan_r(v837, v838, v839))
                                  {
                                    v840 = OUTLINED_FUNCTION_37_23();
                                    bspush_ca_scan(v840, v841);
                                    v842 = OUTLINED_FUNCTION_16_40();
                                    v845 = testFldeq(v842, v843, v844, 1);
                                    v60 = v39;
                                    v84 = v39;
                                    if (!v845)
                                    {
LABEL_411:
                                      v846 = advance_tok(v3, v60, v72, v64);
                                      LODWORD(v60) = v84;
                                      v85 = v84;
                                      if (!v846)
                                      {
LABEL_412:
                                        v847 = OUTLINED_FUNCTION_37_23();
                                        starttest(v847, v848);
                                        v28 = (&v992 + 4);
                                        v849 = OUTLINED_FUNCTION_42_21();
                                        move_i(v849, v850, 3);
                                        v851 = OUTLINED_FUNCTION_59_16();
                                        v852 = insert_eng_stress(v851);
                                        LODWORD(v60) = v85;
                                        if (!v852)
                                        {
                                          goto LABEL_3;
                                        }
                                      }
                                    }

                                    goto LABEL_17;
                                  }
                                }

                                else
                                {
                                  v853 = OUTLINED_FUNCTION_37_23();
                                  starttest(v853, v854);
                                  v855 = OUTLINED_FUNCTION_37_23();
                                  bspush_ca(v855);
                                  v856 = OUTLINED_FUNCTION_40_21();
                                  if (!lpta_loadp_setscan_r(v856, v857, v858))
                                  {
                                    v859 = OUTLINED_FUNCTION_37_23();
                                    bspush_ca_scan(v859, v860);
                                    v861 = OUTLINED_FUNCTION_16_40();
                                    v864 = testFldeq(v861, v862, v863, 1);
                                    v60 = v39;
                                    v82 = v39;
                                    if (!v864)
                                    {
LABEL_416:
                                      v865 = advance_tok(v3, v60, v72, v64);
                                      LODWORD(v60) = v82;
                                      v83 = v82;
                                      if (!v865)
                                      {
LABEL_417:
                                        v866 = OUTLINED_FUNCTION_37_23();
                                        starttest(v866, v867);
                                        v28 = (&v992 + 4);
                                        v868 = OUTLINED_FUNCTION_42_21();
                                        move_i(v868, v869, 3);
                                        v870 = OUTLINED_FUNCTION_59_16();
                                        v871 = insert_eng_stress(v870);
                                        LODWORD(v60) = v83;
                                        if (!v871)
                                        {
                                          goto LABEL_3;
                                        }
                                      }
                                    }

                                    goto LABEL_17;
                                  }
                                }

LABEL_464:
                                LODWORD(v60) = v39;
                                goto LABEL_17;
                              }

                              v673 = OUTLINED_FUNCTION_37_23();
                              bspush_ca_scan(v673, v674);
                              OUTLINED_FUNCTION_4_44();
                              if (test_string_s())
                              {
                                goto LABEL_374;
                              }

                              v675 = OUTLINED_FUNCTION_37_23();
                              bspush_ca_scan(v675, v676);
                              OUTLINED_FUNCTION_2_46();
                              v677 = test_string_s();
                              LODWORD(v60) = v39;
                              v80 = v39;
                              if (v677)
                              {
                                goto LABEL_17;
                              }

LABEL_322:
                              v28 = v80;
                              v678 = OUTLINED_FUNCTION_19_37();
                              if (test_synch(v678, v679, v680, v681))
                              {
                                goto LABEL_374;
                              }

                              v682 = OUTLINED_FUNCTION_37_23();
                              starttest(v682, v683);
                              v684 = OUTLINED_FUNCTION_40_21();
                              if (lpta_loadp_setscan_r(v684, v685, v686))
                              {
                                LODWORD(v39) = v80;
                                goto LABEL_15;
                              }

                              v807 = OUTLINED_FUNCTION_37_23();
                              bspush_ca_scan(v807, v808);
                              v809 = OUTLINED_FUNCTION_16_40();
                              v812 = testFldeq(v809, v810, v811, 1);
                              v60 = v80;
                              v81 = v80;
                              if (v812)
                              {
                                goto LABEL_17;
                              }

LABEL_399:
                              LODWORD(v39) = v81;
                              if (advance_tok(v3, v60, v72, v64))
                              {
                                goto LABEL_464;
                              }
                            }

                            else
                            {
                              v872 = OUTLINED_FUNCTION_6_43();
                              test_nva(v872, v873, v874, v875, v876, v877);
LABEL_420:
                              OUTLINED_FUNCTION_121_7();
                              if (!v878)
                              {
                                v879 = OUTLINED_FUNCTION_6_43();
                                test_noun_verb(v879, v880, v881, v882, v883, v884);
                              }

LABEL_422:
                              if (!*(v3 + 4438))
                              {
                                v885 = OUTLINED_FUNCTION_6_43();
                                test_noun_adj(v885, v886, v887, v888, v889, v890);
                              }

                              LODWORD(v39) = v28;
LABEL_425:
                              OUTLINED_FUNCTION_24_32();
                              if (!v46)
                              {
                                goto LABEL_15;
                              }
                            }
                          }

                          else
                          {
                            v897 = OUTLINED_FUNCTION_37_23();
                            starttest(v897, v898);
                            v899 = OUTLINED_FUNCTION_50_17();
                            if (!lpta_loadp_setscan_r(v899, v900, v28))
                            {
                              OUTLINED_FUNCTION_37_23();
                              bspush_ca_scan_boa();
                              *(v3 + 136) = v28;
                              v961 = OUTLINED_FUNCTION_7_43();
                              if (test_ptr(v961, v962, v963))
                              {
                                LODWORD(v60) = v39;
                              }

                              else
                              {
                                LODWORD(v60) = 1;
                              }

                              goto LABEL_17;
                            }

LABEL_433:
                            v901 = OUTLINED_FUNCTION_6_43();
                            test_nva(v901, v902, v903, v904, v905, v906);
LABEL_434:
                            OUTLINED_FUNCTION_121_7();
                            if (!v907)
                            {
                              v908 = OUTLINED_FUNCTION_6_43();
                              test_noun_adj(v908, v909, v910, v911, v912, v913);
                            }

                            LODWORD(v39) = v28;
LABEL_437:
                            OUTLINED_FUNCTION_60_16();
                            if (!v46)
                            {
                              goto LABEL_15;
                            }
                          }

                          goto LABEL_87;
                        }

                        v914 = OUTLINED_FUNCTION_37_23();
                        starttest(v914, v915);
                        v916 = OUTLINED_FUNCTION_68_13();
                        lpta_loadpn(v916, v917);
                        v918 = OUTLINED_FUNCTION_84_12();
                        rpta_loadpn(v918, v919);
                        if (compare_ptas(v3) || testeq(v3) || (v920 = OUTLINED_FUNCTION_50_17(), v28 = v39, lpta_loadp_setscan_l(v920, v921, 4)))
                        {
LABEL_443:
                          v922 = OUTLINED_FUNCTION_6_43();
                          test_nva(v922, v923, v924, v925, v926, v927);
LABEL_444:
                          OUTLINED_FUNCTION_121_7();
                          if (!v928)
                          {
                            v929 = OUTLINED_FUNCTION_6_43();
                            test_noun_verb(v929, v930, v931, v932, v933, v934);
                          }

LABEL_446:
                          if (!*(v3 + 4438))
                          {
                            v935 = OUTLINED_FUNCTION_6_43();
                            test_noun_adj(v935, v936, v937, v938, v939, v940);
                          }

LABEL_448:
                          v941 = OUTLINED_FUNCTION_37_23();
                          starttest(v941, v942);
                          v943 = OUTLINED_FUNCTION_37_23();
                          bspush_ca(v943);
                          v237 = *(v3 + 2250);
                          v238 = *(v3 + 4438);
                          v79 = v28;
                          LODWORD(v60) = v28;
LABEL_109:
                          if (v237 == v238)
                          {
LABEL_110:
                            LODWORD(v39) = v79;
                            goto LABEL_15;
                          }

                          goto LABEL_17;
                        }

LABEL_117:
                        v240 = OUTLINED_FUNCTION_19_37();
                        if (!chstream(v240, v241, v242))
                        {
                          OUTLINED_FUNCTION_2_46();
                          if (!test_string_s())
                          {
                            v243 = OUTLINED_FUNCTION_37_23();
                            bspush_ca_scan(v243, v244);
                            OUTLINED_FUNCTION_4_44();
                            v245 = test_string_s();
                            v78 = v28;
                            LODWORD(v60) = v28;
                            if (v245)
                            {
                              goto LABEL_17;
                            }

LABEL_120:
                            OUTLINED_FUNCTION_17_38();
                            v246 = test_string_s();
                            LODWORD(v39) = v78;
                            LODWORD(v60) = v78;
                            if (v246)
                            {
                              goto LABEL_17;
                            }

LABEL_121:
                            v247 = OUTLINED_FUNCTION_37_23();
                            if (!chstream(v247, v248, 4u))
                            {
                              v249 = OUTLINED_FUNCTION_16_40();
                              if (!testFldeq(v249, v250, v251, 7))
                              {
                                v252 = OUTLINED_FUNCTION_61_16();
                                if (!testFldeq(v252, v253, 2, 25) && !advance_tok(v3, v254, v255, v256))
                                {
                                  goto LABEL_15;
                                }
                              }
                            }

                            goto LABEL_464;
                          }
                        }

LABEL_374:
                        LODWORD(v60) = v28;
                        goto LABEL_17;
                      }

                      v944 = OUTLINED_FUNCTION_6_43();
                      test_nva(v944, v945, v946, v947, v948, v949);
LABEL_450:
                      OUTLINED_FUNCTION_121_7();
                      if (!v950)
                      {
                        v951 = OUTLINED_FUNCTION_6_43();
                        test_noun_verb(v951, v952, v953, v954, v955, v956);
                      }

LABEL_452:
                      v957 = OUTLINED_FUNCTION_37_23();
                      starttest(v957, v958);
                      v959 = OUTLINED_FUNCTION_37_23();
                      bspush_ca(v959);
                      v228 = *(v3 + 2246);
                      v229 = *(v3 + 4438);
                      v77 = v28;
                      LODWORD(v60) = v28;
LABEL_103:
                      if (v228 != v229)
                      {
                        goto LABEL_17;
                      }

LABEL_104:
                      LODWORD(v39) = v77;
LABEL_87:
                      v192 = OUTLINED_FUNCTION_37_23();
                      starttest(v192, v193);
LABEL_88:
                      v28 = (&v992 + 4);
                      v55 = OUTLINED_FUNCTION_42_21();
                      v57 = 3;
LABEL_16:
                      move_i(v55, v56, v57);
                      v58 = OUTLINED_FUNCTION_59_16();
                      v59 = insert_eng_stress(v58);
                      LODWORD(v60) = v39;
                      if (!v59)
                      {
                        goto LABEL_3;
                      }

                      goto LABEL_17;
                    }

                    v599 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v599, v600);
                    OUTLINED_FUNCTION_4_44();
                    v601 = test_string_s();
                    v75 = v39;
                    LODWORD(v60) = v39;
                    if (v601)
                    {
                      goto LABEL_17;
                    }

LABEL_287:
                    v39 = v75;
                    OUTLINED_FUNCTION_13_41();
                    if (test_string_s())
                    {
                      goto LABEL_464;
                    }

                    *(v3 + 136) = v28;
                    v602 = OUTLINED_FUNCTION_7_43();
                    if (test_ptr(v602, v603, v604))
                    {
                      goto LABEL_464;
                    }

                    v605 = OUTLINED_FUNCTION_6_43();
                    test_verb_adj(v605, v606, v607, v608, v609, v610);
LABEL_290:
                    v28 = v39;
                    v611 = OUTLINED_FUNCTION_62_16();
                    if (!lpta_loadp_setscan_l(v611, v612, v613) && !advance_tok(v3, v614, v615, v616))
                    {
LABEL_292:
                      v617 = OUTLINED_FUNCTION_111_7();
                      savescptr(v617, v618, v619);
LABEL_293:
                      v28 = v39;
                    }

                    v620 = OUTLINED_FUNCTION_37_23();
                    starttest(v620, v621);
                    OUTLINED_FUNCTION_60_16();
                    if (v46)
                    {
                      lpta_rpta_loadp(v3, &v979, &v993);
                      v622 = OUTLINED_FUNCTION_10_42();
                      v39 = v28;
                      if (!insert_2pt_s(v622, v623, v624, v625, v626))
                      {
                        goto LABEL_362;
                      }
                    }

                    else
                    {
                      v39 = v28;
                    }

LABEL_318:
                    lpta_rpta_loadp(v3, &v979, &v993);
                    v667 = OUTLINED_FUNCTION_10_42();
                    v672 = insert_2pt_s(v667, v668, v669, v670, v671);
                    v28 = v39;
                    LODWORD(v60) = v39;
                    if (v672)
                    {
                      goto LABEL_17;
                    }

LABEL_362:
                    LODWORD(v39) = v28;
                    goto LABEL_15;
                  }

                  v492 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v492, v493);
                  OUTLINED_FUNCTION_17_38();
                  v494 = test_string_s();
                  v73 = v28;
                  LODWORD(v60) = v28;
                  if (v494)
                  {
                    goto LABEL_17;
                  }

LABEL_240:
                  LODWORD(v39) = v73;
                  OUTLINED_FUNCTION_13_41();
                  if (test_string_s())
                  {
                    goto LABEL_464;
                  }

                  *(v3 + 136) = v28;
                  v495 = OUTLINED_FUNCTION_7_43();
                  if (test_ptr(v495, v496, v497))
                  {
                    goto LABEL_464;
                  }

                  OUTLINED_FUNCTION_97_9();
LABEL_243:
                  v498 = OUTLINED_FUNCTION_6_43();
                  test_noun_verb(v498, v499, v500, v501, v502, v503);
LABEL_244:
                  OUTLINED_FUNCTION_24_32();
                  if (!v46)
                  {
LABEL_245:
                    v239 = v39;
LABEL_259:
                    v527 = OUTLINED_FUNCTION_37_23();
                    starttest(v527, v528);
                    v529 = OUTLINED_FUNCTION_18_37();
                    goto LABEL_260;
                  }

                  goto LABEL_305;
                }

                OUTLINED_FUNCTION_97_9();
LABEL_234:
                v476 = OUTLINED_FUNCTION_6_43();
                test_verb_adj(v476, v477, v478, v479, v480, v481);
                v39 = v28;
LABEL_235:
                v28 = v39;
                if (*(v3 + 2254) == *(v3 + 4438))
                {
                  goto LABEL_305;
                }

LABEL_236:
                v482 = OUTLINED_FUNCTION_37_23();
                starttest(v482, v483);
                v484 = OUTLINED_FUNCTION_39_22();
                if (!lpta_loadp_setscan_r(v484, v485, v486))
                {
                  v516 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v516, v517);
                  OUTLINED_FUNCTION_2_46();
                  if (test_string_s())
                  {
                    goto LABEL_374;
                  }

                  v518 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v518, v519);
                  OUTLINED_FUNCTION_2_46();
                  v520 = test_string_s();
                  LODWORD(v72) = v28;
                  LODWORD(v60) = v28;
                  if (v520)
                  {
                    goto LABEL_17;
                  }

LABEL_256:
                  LODWORD(v39) = v72;
                  v521 = OUTLINED_FUNCTION_6_43();
                  test_noun_verb(v521, v522, v523, v524, v525, v526);
LABEL_257:
                  OUTLINED_FUNCTION_24_32();
                  if (!v46)
                  {
LABEL_258:
                    v239 = v39;
                    goto LABEL_259;
                  }

LABEL_305:
                  insert_adj_stress(v3);
                  goto LABEL_3;
                }

LABEL_237:
                v239 = v28;
              }

              else
              {
                OUTLINED_FUNCTION_97_9();
LABEL_214:
                v439 = OUTLINED_FUNCTION_6_43();
                test_verb_adj(v439, v440, v441, v442, v443, v444);
                v239 = v28;
LABEL_215:
                OUTLINED_FUNCTION_31_30();
                if (!v46)
                {
                  goto LABEL_305;
                }
              }

LABEL_238:
              v487 = OUTLINED_FUNCTION_37_23();
              starttest(v487, v488);
              v489 = OUTLINED_FUNCTION_18_37();
              move_i(v489, v490, v491);
              v28 = 0;
              goto LABEL_261;
            }

            v639 = OUTLINED_FUNCTION_6_43();
            test_noun_verb(v639, v640, v641, v642, v643, v644);
LABEL_302:
            v239 = v39;
            OUTLINED_FUNCTION_24_32();
            if (v46)
            {
              goto LABEL_259;
            }

            v28 = v39;
LABEL_307:
            v645 = OUTLINED_FUNCTION_37_23();
            starttest(v645, v646);
            v647 = OUTLINED_FUNCTION_50_17();
            if (!lpta_loadp_setscan_r(v647, v648, 7))
            {
              LODWORD(v39) = v28;
              if (!advance_tok(v3, v649, v650, v651))
              {
LABEL_309:
                savescptr(v3, 113, &v987);
                v655 = advance_tok(v3, v652, v653, v654);
                LODWORD(v60) = v39;
                if (v655)
                {
                  goto LABEL_17;
                }

LABEL_310:
                savescptr(v3, 114, &v985);
LABEL_311:
                LODWORD(v28) = v39;
              }
            }

            v453 = v28;
            v454 = &v987;
            v455 = &v985;
          }

          else
          {
            v421 = OUTLINED_FUNCTION_6_43();
            test_noun_verb(v421, v422, v423, v424, v425, v426);
            v239 = v39;
LABEL_203:
            OUTLINED_FUNCTION_31_30();
            if (v46)
            {
              goto LABEL_238;
            }

            v445 = v239;
LABEL_218:
            v446 = OUTLINED_FUNCTION_37_23();
            starttest(v446, v447);
            v448 = OUTLINED_FUNCTION_50_17();
            if (!lpta_loadp_setscan_r(v448, v449, 7))
            {
              LODWORD(v39) = v445;
              if (!advance_tok(v3, v450, v451, v452))
              {
LABEL_220:
                savescptr(v3, 106, &v987);
LABEL_221:
                v445 = v39;
              }
            }

            v453 = v445;
            v454 = &v995;
            v455 = &v987;
          }

          lpta_rpta_loadp(v3, v454, v455);
          v28 = 0;
          v656 = OUTLINED_FUNCTION_14_41();
          v660 = insert_2pt_i(v656, v657, v658, v659, 0);
          LODWORD(v60) = v453;
          if (!v660)
          {
            goto LABEL_3;
          }

          goto LABEL_17;
        }

        v570 = OUTLINED_FUNCTION_37_23();
        starttest(v570, v571);
        v572 = OUTLINED_FUNCTION_40_21();
        if (lpta_loadp_setscan_r(v572, v573, v574))
        {
LABEL_274:
          v28 = v39;
          v575 = OUTLINED_FUNCTION_37_23();
          starttest(v575, v576);
          v577 = OUTLINED_FUNCTION_50_17();
          lpta_loadpn(v577, v578);
          v579 = OUTLINED_FUNCTION_71_13();
          rpta_loadpn(v579, v580);
          if (!compare_ptas(v3) && !testeq(v3))
          {
            v581 = OUTLINED_FUNCTION_68_13();
            lpta_loadpn(v581, v582);
            v583 = OUTLINED_FUNCTION_84_12();
            rpta_loadpn(v583, v584);
            if (!compare_ptas(v3) && !testeq(v3))
            {
              v585 = OUTLINED_FUNCTION_40_21();
              if (!lpta_loadp_setscan_l(v585, v586, v587))
              {
LABEL_279:
                savescptr(v3, 75, &v990);
                v588 = advanc(v3);
                LODWORD(v60) = v39;
                if (v588)
                {
                  goto LABEL_17;
                }

LABEL_280:
                savescptr(v3, 76, v3 + 1752);
                v592 = advance_tok(v3, v589, v590, v591);
                v28 = v39;
                LODWORD(v60) = v39;
                if (v592)
                {
                  goto LABEL_17;
                }

LABEL_369:
                savescptr(v3, 77, v3 + 1736);
                v760 = OUTLINED_FUNCTION_63_16();
                if (lpta_loadp_setscan_r(v760, v761, v762))
                {
                  goto LABEL_374;
                }

                v766 = advance_tok(v3, v763, v764, v765);
                v39 = v28;
                LODWORD(v60) = v28;
                if (v766)
                {
                  goto LABEL_17;
                }

LABEL_371:
                v28 = v39;
                v767 = OUTLINED_FUNCTION_19_37();
                if (test_synch(v767, v768, v769, v770))
                {
                  goto LABEL_374;
                }

                v771 = OUTLINED_FUNCTION_37_23();
                bspush_ca(v771);
                v772 = OUTLINED_FUNCTION_40_21();
                if (lpta_loadp_setscan_l(v772, v773, v774))
                {
                  goto LABEL_374;
                }

                v775 = OUTLINED_FUNCTION_61_16();
                if (testFldeq(v775, v776, 2, 3))
                {
                  goto LABEL_374;
                }

                v964 = advance_tok(v3, v777, v778, v779);
                v70 = v39;
                LODWORD(v60) = v39;
                if (v964)
                {
                  goto LABEL_17;
                }

LABEL_459:
                LODWORD(v39) = v70;
                goto LABEL_201;
              }
            }
          }

LABEL_334:
          v701 = OUTLINED_FUNCTION_37_23();
          starttest(v701, v702);
          v703 = OUTLINED_FUNCTION_50_17();
          lpta_loadpn(v703, v704);
          v705 = OUTLINED_FUNCTION_71_13();
          rpta_loadpn(v705, v706);
          if (!compare_ptas(v3) && !testeq(v3))
          {
            v707 = OUTLINED_FUNCTION_68_13();
            lpta_loadpn(v707, v708);
            v709 = OUTLINED_FUNCTION_84_12();
            rpta_loadpn(v709, v710);
            if (!compare_ptas(v3) && !testeq(v3))
            {
              v711 = OUTLINED_FUNCTION_63_16();
              if (!lpta_loadp_setscan_r(v711, v712, v713))
              {
                LODWORD(v39) = v28;
                if (!advanc(v3))
                {
LABEL_352:
                  OUTLINED_FUNCTION_115_7(83);
                  v747 = advance_tok(v3, v744, v745, v746);
                  LODWORD(v60) = v39;
                  if (v747)
                  {
                    goto LABEL_17;
                  }

LABEL_353:
                  v748 = OUTLINED_FUNCTION_90_10();
                  savescptr(v748, v749, v750);
                  v751 = OUTLINED_FUNCTION_90_10();
                  lpta_rpta_loadp(v751, v752, v753);
                  v754 = OUTLINED_FUNCTION_38_22();
                  if (setd_lookup(v754, v755, 245))
                  {
                    goto LABEL_464;
                  }

                  goto LABEL_201;
                }
              }
            }
          }

LABEL_340:
          v714 = OUTLINED_FUNCTION_37_23();
          starttest(v714, v715);
          v716 = OUTLINED_FUNCTION_50_17();
          lpta_loadpn(v716, v717);
          v718 = OUTLINED_FUNCTION_71_13();
          rpta_loadpn(v718, v719);
          if (compare_ptas(v3) || testeq(v3) || (v720 = OUTLINED_FUNCTION_68_13(), lpta_loadpn(v720, v721), v722 = OUTLINED_FUNCTION_84_12(), rpta_loadpn(v722, v723), compare_ptas(v3)) || testeq(v3) || (v724 = OUTLINED_FUNCTION_63_16(), lpta_loadp_setscan_r(v724, v725, v726)) || (LODWORD(v39) = v28, advanc(v3)))
          {
LABEL_346:
            v727 = OUTLINED_FUNCTION_6_43();
            test_noun_adj(v727, v728, v729, v730, v731, v732);
            LODWORD(v39) = v28;
LABEL_347:
            OUTLINED_FUNCTION_24_32();
            if (v46)
            {
              goto LABEL_100;
            }

            goto LABEL_201;
          }

LABEL_350:
          OUTLINED_FUNCTION_115_7(87);
          v736 = advance_tok(v3, v733, v734, v735);
          LODWORD(v60) = v39;
          if (v736)
          {
            goto LABEL_17;
          }

LABEL_351:
          v737 = OUTLINED_FUNCTION_90_10();
          savescptr(v737, v738, v739);
          v740 = OUTLINED_FUNCTION_37_23();
          bspush_ca(v740);
          v741 = OUTLINED_FUNCTION_90_10();
          lpta_rpta_loadp(v741, v742, v743);
          v233 = OUTLINED_FUNCTION_38_22();
          v235 = 51;
LABEL_106:
          v236 = setd_lookup(v233, v234, v235);
          v71 = v39;
          LODWORD(v60) = v39;
          if (v236)
          {
            goto LABEL_17;
          }

LABEL_107:
          LODWORD(v39) = v71;
        }

        else
        {
          v661 = OUTLINED_FUNCTION_16_40();
          if (testFldeq(v661, v662, v663, 18) || advance_tok(v3, v664, v665, v666))
          {
            goto LABEL_464;
          }
        }

LABEL_100:
        v226 = OUTLINED_FUNCTION_37_23();
        starttest(v226, v227);
LABEL_101:
        v28 = (&v992 + 4);
        v55 = OUTLINED_FUNCTION_11_42();
        goto LABEL_16;
      }

      v504 = OUTLINED_FUNCTION_6_43();
      test_noun_verb(v504, v505, v506, v507, v508, v509);
LABEL_247:
      OUTLINED_FUNCTION_31_30();
      if (!v46)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v408 = OUTLINED_FUNCTION_6_43();
      test_noun_verb(v408, v409, v410, v411, v412, v413);
      LODWORD(v39) = v28;
LABEL_196:
      OUTLINED_FUNCTION_24_32();
      if (v46)
      {
        goto LABEL_87;
      }
    }

LABEL_201:
    v419 = OUTLINED_FUNCTION_37_23();
    starttest(v419, v420);
    v28 = (&v992 + 4);
    v55 = OUTLINED_FUNCTION_42_21();
    v57 = 4;
    goto LABEL_16;
  }

  v34 = OUTLINED_FUNCTION_27_31();
  starttest(v34, v35);
  v36 = OUTLINED_FUNCTION_40_21();
  v39 = v28;
  if (lpta_loadp_setscan_r(v36, v37, v38))
  {
LABEL_8:
    v40 = OUTLINED_FUNCTION_6_43();
    test_noun_verb(v40, v41, v42, v43, v44, v45);
    LODWORD(v39) = v28;
LABEL_9:
    OUTLINED_FUNCTION_31_30();
    if (!v46)
    {
      goto LABEL_100;
    }

LABEL_15:
    v53 = OUTLINED_FUNCTION_37_23();
    starttest(v53, v54);
    v28 = (&v992 + 4);
    v55 = OUTLINED_FUNCTION_42_21();
    v57 = 2;
    goto LABEL_16;
  }

  while (2)
  {
    v28 = v39;
    v194 = OUTLINED_FUNCTION_19_37();
    if (chstream(v194, v195, v196))
    {
      goto LABEL_374;
    }

    OUTLINED_FUNCTION_38_22();
    v197 = test_string_s();
    LODWORD(v60) = v39;
    if (v197)
    {
      goto LABEL_17;
    }

LABEL_91:
    v28 = v39;
    v198 = OUTLINED_FUNCTION_26_32();
    if (chstream(v198, v199, 4u))
    {
      goto LABEL_374;
    }

    v200 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v200, v201);
    v202 = OUTLINED_FUNCTION_16_40();
    if (testFldeq(v202, v203, v204, 3))
    {
      goto LABEL_374;
    }

    v205 = OUTLINED_FUNCTION_61_16();
    if (testFldeq(v205, v206, 2, 3))
    {
      goto LABEL_374;
    }

    v210 = advance_tok(v3, v207, v208, v209);
    LODWORD(v60) = v39;
    if (v210)
    {
      goto LABEL_17;
    }

LABEL_95:
    v211 = advanc(v3);
    LODWORD(v60) = v39;
    if (!v211)
    {
LABEL_96:
      OUTLINED_FUNCTION_115_7(12);
      v215 = advance_tok(v3, v212, v213, v214);
      LODWORD(v60) = v39;
      if (v215)
      {
        goto LABEL_17;
      }

LABEL_97:
      v216 = OUTLINED_FUNCTION_90_10();
      savescptr(v216, v217, v218);
      v219 = OUTLINED_FUNCTION_90_10();
      lpta_rpta_loadp(v219, v220, v221);
      v222 = OUTLINED_FUNCTION_38_22();
      if (!setd_lookup(v222, v223, 291))
      {
        if (*(v3 + 3710) != *(v3 + 3706))
        {
          break;
        }

        v224 = OUTLINED_FUNCTION_37_23();
        starttest_e(v224, v225);
        goto LABEL_101;
      }

      goto LABEL_464;
    }

LABEL_17:
    v61 = *(v3 + 104);
    if (v61)
    {
      v62 = OUTLINED_FUNCTION_53_17(v61);
      v39 = v63;
    }

    else
    {
      v62 = vback(v3, v60);
      v39 = 0;
    }

    if ((v62 - 1) <= 0x100)
    {
      OUTLINED_FUNCTION_91_10();
      v64 = v39;
      v65 = v39;
      v66 = v39;
      v67 = v39;
      v68 = v39;
      v69 = v39;
      v70 = v39;
      v71 = v39;
      v72 = v39;
      v73 = v39;
      v74 = v39;
      v75 = v39;
      v76 = v39;
      v77 = v39;
      v78 = v39;
      v79 = v39;
      v80 = v39;
      v81 = v39;
      v82 = v39;
      v83 = v39;
      v84 = v39;
      v85 = v39;
      switch(v86)
      {
        case 1:
          goto LABEL_13;
        case 2:
        case 40:
        case 63:
        case 67:
        case 157:
        case 197:
          goto LABEL_87;
        case 3:
        case 4:
        case 5:
        case 13:
        case 14:
        case 15:
        case 18:
        case 22:
        case 23:
        case 32:
        case 36:
        case 37:
        case 41:
        case 42:
        case 46:
        case 47:
        case 57:
        case 58:
        case 62:
        case 64:
        case 65:
        case 68:
        case 71:
        case 72:
        case 80:
        case 84:
        case 90:
        case 93:
        case 97:
        case 98:
        case 102:
        case 103:
        case 109:
        case 110:
        case 118:
        case 119:
        case 124:
        case 125:
        case 136:
        case 137:
        case 144:
        case 145:
        case 153:
        case 159:
        case 160:
        case 169:
        case 176:
        case 177:
        case 184:
        case 185:
        case 192:
        case 193:
        case 200:
        case 204:
        case 205:
        case 209:
        case 215:
        case 216:
        case 225:
        case 226:
        case 235:
        case 236:
        case 245:
        case 246:
        case 250:
        case 251:
        case 252:
        case 255:
        case 256:
          break;
        case 6:
          v28 = v39;
          goto LABEL_129;
        case 7:
          LODWORD(v28) = v39;
          goto LABEL_8;
        case 8:
          continue;
        case 9:
          goto LABEL_91;
        case 10:
          goto LABEL_95;
        case 11:
          goto LABEL_96;
        case 12:
          goto LABEL_97;
        case 16:
          goto LABEL_9;
        case 17:
        case 45:
        case 96:
        case 175:
          goto LABEL_100;
        case 19:
          v28 = v39;
          goto LABEL_130;
        case 20:
          goto LABEL_192;
        case 21:
          goto LABEL_199;
        case 24:
        case 156:
        case 181:
        case 208:
        case 214:
        case 222:
          goto LABEL_15;
        case 25:
          v28 = v39;
          goto LABEL_206;
        case 26:
          v87 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v87, v88);
          goto LABEL_26;
        case 27:
          goto LABEL_208;
        case 28:
          OUTLINED_FUNCTION_2_46();
          v92 = test_string_s();
          LODWORD(v60) = v39;
          if (v92)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        case 29:
LABEL_26:
          OUTLINED_FUNCTION_38_22();
          v93 = test_string_s();
          v64 = v39;
          LODWORD(v60) = v39;
          if (!v93)
          {
            goto LABEL_208;
          }

          goto LABEL_17;
        case 30:
          OUTLINED_FUNCTION_4_44();
          v183 = test_string_s();
          v65 = v39;
          LODWORD(v60) = v39;
          if (!v183)
          {
            goto LABEL_210;
          }

          goto LABEL_17;
        case 31:
          goto LABEL_210;
        case 33:
          goto LABEL_132;
        case 34:
          goto LABEL_196;
        case 35:
        case 92:
        case 228:
        case 238:
          goto LABEL_201;
        case 38:
          goto LABEL_135;
        case 39:
          goto LABEL_247;
        case 43:
          goto LABEL_138;
        case 44:
          goto LABEL_251;
        case 48:
          goto LABEL_140;
        case 49:
          OUTLINED_FUNCTION_38_22();
          v191 = test_string_s();
          v66 = v39;
          LODWORD(v60) = v39;
          if (!v191)
          {
            goto LABEL_224;
          }

          goto LABEL_17;
        case 50:
          goto LABEL_224;
        case 51:
          LODWORD(v28) = v39;
          goto LABEL_229;
        case 52:
          v28 = v39;
          goto LABEL_381;
        case 53:
          v98 = OUTLINED_FUNCTION_16_40();
          v101 = testFldeq(v98, v99, v100, 2);
          LODWORD(v60) = v39;
          if (!v101)
          {
            v104 = advance_tok(v3, v39, v102, v103);
            v67 = v39;
            LODWORD(v60) = v39;
            if (!v104)
            {
              goto LABEL_462;
            }
          }

          goto LABEL_17;
        case 54:
          goto LABEL_462;
        case 55:
          v89 = OUTLINED_FUNCTION_61_16();
          v91 = testFldeq(v89, v90, 2, 25);
          v68 = v39;
          v60 = v39;
          if (!v91)
          {
            goto LABEL_463;
          }

          goto LABEL_17;
        case 56:
          goto LABEL_463;
        case 59:
          goto LABEL_383;
        case 60:
          v94 = OUTLINED_FUNCTION_16_40();
          v97 = testFldeq(v94, v95, v96, 1);
          v69 = v39;
          v60 = v39;
          if (!v97)
          {
            goto LABEL_430;
          }

          goto LABEL_17;
        case 61:
          goto LABEL_430;
        case 66:
          goto LABEL_230;
        case 69:
          goto LABEL_143;
        case 70:
          goto LABEL_274;
        case 73:
          v28 = v39;
          goto LABEL_334;
        case 74:
          goto LABEL_279;
        case 75:
          goto LABEL_280;
        case 76:
          v28 = v39;
          goto LABEL_369;
        case 77:
          goto LABEL_371;
        case 78:
          is_copula_verb(v3, v3 + 1736, v3 + 1752, v39, v39, v39);
          v70 = v39;
          LODWORD(v60) = v39;
          if (!v189)
          {
            goto LABEL_459;
          }

          goto LABEL_17;
        case 79:
          goto LABEL_459;
        case 81:
          v28 = v39;
          goto LABEL_340;
        case 82:
          goto LABEL_352;
        case 83:
          goto LABEL_353;
        case 85:
          LODWORD(v28) = v39;
          goto LABEL_346;
        case 86:
          goto LABEL_350;
        case 87:
          goto LABEL_351;
        case 88:
          v230 = OUTLINED_FUNCTION_90_10();
          lpta_rpta_loadp(v230, v231, v232);
          v233 = OUTLINED_FUNCTION_38_22();
          v235 = 221;
          goto LABEL_106;
        case 89:
          goto LABEL_107;
        case 91:
          goto LABEL_347;
        case 94:
          goto LABEL_146;
        case 95:
          goto LABEL_283;
        case 99:
          goto LABEL_147;
        case 100:
          v239 = v39;
          goto LABEL_203;
        case 101:
          v445 = v39;
          goto LABEL_218;
        case 104:
          goto LABEL_221;
        case 105:
          goto LABEL_220;
        case 106:
          goto LABEL_150;
        case 107:
          goto LABEL_302;
        case 108:
          v28 = v39;
          goto LABEL_307;
        case 111:
          goto LABEL_311;
        case 112:
          goto LABEL_309;
        case 113:
          goto LABEL_310;
        case 114:
          v28 = v39;
          goto LABEL_151;
        case 115:
          LODWORD(v28) = v39;
          goto LABEL_214;
        case 116:
          v239 = v39;
          goto LABEL_215;
        case 117:
          goto LABEL_305;
        case 120:
          v28 = v39;
          goto LABEL_152;
        case 121:
          v28 = v39;
          goto LABEL_234;
        case 122:
          goto LABEL_235;
        case 123:
          v28 = v39;
          goto LABEL_236;
        case 126:
          LODWORD(v28) = v39;
          goto LABEL_237;
        case 127:
          v178 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v178, v179);
          OUTLINED_FUNCTION_2_46();
          v180 = test_string_s();
          LODWORD(v60) = v39;
          if (v180)
          {
            goto LABEL_17;
          }

          v181 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v181, v182);
          goto LABEL_79;
        case 128:
        case 131:
        case 132:
LABEL_79:
          OUTLINED_FUNCTION_2_46();
          v188 = test_string_s();
          LODWORD(v72) = v39;
          LODWORD(v60) = v39;
          if (!v188)
          {
            goto LABEL_256;
          }

          goto LABEL_17;
        case 129:
        case 130:
        case 133:
          goto LABEL_256;
        case 134:
          goto LABEL_257;
        case 135:
          goto LABEL_258;
        case 138:
          v28 = v39;
          goto LABEL_153;
        case 139:
          OUTLINED_FUNCTION_17_38();
          v190 = test_string_s();
          v73 = v39;
          LODWORD(v60) = v39;
          if (!v190)
          {
            goto LABEL_240;
          }

          goto LABEL_17;
        case 140:
          goto LABEL_240;
        case 141:
          goto LABEL_243;
        case 142:
          goto LABEL_244;
        case 143:
          goto LABEL_245;
        case 146:
          goto LABEL_155;
        case 147:
          v184 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v184, v185);
          goto LABEL_75;
        case 148:
          goto LABEL_264;
        case 149:
LABEL_75:
          OUTLINED_FUNCTION_5_44();
          v186 = test_string_s();
          v74 = v39;
          LODWORD(v60) = v39;
          if (!v186)
          {
            goto LABEL_264;
          }

          goto LABEL_17;
        case 150:
          goto LABEL_267;
        case 151:
          LODWORD(v28) = v39;
          goto LABEL_396;
        case 152:
          goto LABEL_271;
        case 154:
          goto LABEL_158;
        case 155:
          goto LABEL_402;
        case 158:
          v687 = v39;
          goto LABEL_331;
        case 161:
          v28 = v39;
          goto LABEL_159;
        case 162:
          OUTLINED_FUNCTION_2_46();
          v187 = test_string_s();
          v75 = v39;
          LODWORD(v60) = v39;
          if (!v187)
          {
            goto LABEL_287;
          }

          goto LABEL_17;
        case 163:
          goto LABEL_287;
        case 164:
          goto LABEL_290;
        case 165:
          goto LABEL_293;
        case 166:
          goto LABEL_292;
        case 167:
          goto LABEL_318;
        case 168:
          LODWORD(v28) = v39;
          goto LABEL_362;
        case 170:
          goto LABEL_161;
        case 171:
          OUTLINED_FUNCTION_38_22();
          v169 = test_string_s();
          v76 = v39;
          LODWORD(v60) = v39;
          if (!v169)
          {
            goto LABEL_299;
          }

          goto LABEL_17;
        case 172:
          goto LABEL_299;
        case 173:
          LODWORD(v28) = v39;
          goto LABEL_389;
        case 174:
          goto LABEL_392;
        case 178:
          goto LABEL_164;
        case 179:
          goto LABEL_450;
        case 180:
          v28 = v39;
          goto LABEL_452;
        case 182:
          v228 = *(v3 + 2254);
          v229 = *(v3 + 4438);
          v77 = v39;
          LODWORD(v60) = v39;
          goto LABEL_103;
        case 183:
          goto LABEL_104;
        case 186:
          goto LABEL_167;
        case 187:
          goto LABEL_443;
        case 188:
          v28 = v39;
          goto LABEL_117;
        case 189:
          OUTLINED_FUNCTION_4_44();
          v105 = test_string_s();
          v78 = v39;
          LODWORD(v60) = v39;
          if (!v105)
          {
            goto LABEL_120;
          }

          goto LABEL_17;
        case 190:
          goto LABEL_120;
        case 191:
          goto LABEL_121;
        case 194:
          goto LABEL_444;
        case 195:
          v28 = v39;
          goto LABEL_446;
        case 196:
          v28 = v39;
          goto LABEL_448;
        case 198:
          v237 = *(v3 + 2254);
          v238 = *(v3 + 4438);
          v79 = v39;
          LODWORD(v60) = v39;
          goto LABEL_109;
        case 199:
          goto LABEL_110;
        case 201:
          goto LABEL_170;
        case 202:
          goto LABEL_433;
        case 203:
          bspop_boa(v3);
          v123 = OUTLINED_FUNCTION_2_46();
          v126 = testFldeq(v123, v124, v125, 2);
          LODWORD(v60) = v39;
          if (v126)
          {
            goto LABEL_17;
          }

          v129 = advance_tok(v3, v39, v127, v128);
          LODWORD(v60) = v39;
          if (v129)
          {
            goto LABEL_17;
          }

          v130 = OUTLINED_FUNCTION_2_46();
          v133 = testFldeq(v130, v131, v132, 1);
          LODWORD(v60) = v39;
          if (v133)
          {
            goto LABEL_17;
          }

          v136 = advance_tok(v3, v39, v134, v135);
          LODWORD(v60) = v39;
          if (v136)
          {
            goto LABEL_17;
          }

          v805 = OUTLINED_FUNCTION_37_23();
          starttest_l(v805, v806);
          goto LABEL_88;
        case 206:
          goto LABEL_434;
        case 207:
          goto LABEL_437;
        case 210:
          goto LABEL_173;
        case 211:
          goto LABEL_420;
        case 212:
          LODWORD(v28) = v39;
          goto LABEL_422;
        case 213:
          goto LABEL_425;
        case 217:
          goto LABEL_175;
        case 218:
        case 219:
          OUTLINED_FUNCTION_2_46();
          v159 = test_string_s();
          v80 = v39;
          LODWORD(v60) = v39;
          if (!v159)
          {
            goto LABEL_322;
          }

          goto LABEL_17;
        case 220:
        case 221:
          goto LABEL_322;
        case 223:
          v170 = OUTLINED_FUNCTION_16_40();
          v173 = testFldeq(v170, v171, v172, 10);
          v81 = v39;
          v60 = v39;
          if (!v173)
          {
            goto LABEL_399;
          }

          goto LABEL_17;
        case 224:
          goto LABEL_399;
        case 227:
          goto LABEL_178;
        case 229:
          OUTLINED_FUNCTION_76_12();
          OUTLINED_FUNCTION_7_43();
          v137 = lpta_tstmover();
          LODWORD(v60) = v39;
          if (v137)
          {
            goto LABEL_17;
          }

          v138 = OUTLINED_FUNCTION_38_22();
          setscan_r(v138, v139, v140);
          LODWORD(v60) = v39;
          if (v141)
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_5_44();
          v142 = test_string_s();
          LODWORD(v60) = v39;
          if (v142)
          {
            goto LABEL_17;
          }

          v143 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v143, v144);
          goto LABEL_53;
        case 230:
          v174 = OUTLINED_FUNCTION_16_40();
          v177 = testFldeq(v174, v175, v176, 10);
          v82 = v39;
          v60 = v39;
          if (!v177)
          {
            goto LABEL_416;
          }

          goto LABEL_17;
        case 231:
          goto LABEL_416;
        case 232:
          goto LABEL_417;
        case 233:
          v160 = OUTLINED_FUNCTION_37_23();
          v162 = chstream(v160, v161, 4u);
          LODWORD(v60) = v39;
          if (v162)
          {
            goto LABEL_17;
          }

          v163 = OUTLINED_FUNCTION_16_40();
          v166 = testFldeq(v163, v164, v165, 5);
          LODWORD(v60) = v39;
          if (v166)
          {
            goto LABEL_17;
          }

          v149 = advance_tok(v3, v39, v167, v168);
          goto LABEL_54;
        case 234:
LABEL_53:
          v145 = OUTLINED_FUNCTION_19_37();
          v149 = test_synch(v145, v146, v147, v148);
LABEL_54:
          v83 = v39;
          LODWORD(v60) = v39;
          if (!v149)
          {
            goto LABEL_417;
          }

          goto LABEL_17;
        case 237:
          goto LABEL_181;
        case 239:
          OUTLINED_FUNCTION_76_12();
          OUTLINED_FUNCTION_7_43();
          v106 = lpta_tstmover();
          LODWORD(v60) = v39;
          if (v106)
          {
            goto LABEL_17;
          }

          v107 = OUTLINED_FUNCTION_38_22();
          setscan_r(v107, v108, v109);
          LODWORD(v60) = v39;
          if (v110)
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_4_44();
          v111 = test_string_s();
          LODWORD(v60) = v39;
          if (v111)
          {
            goto LABEL_17;
          }

          v112 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v112, v113);
          goto LABEL_39;
        case 240:
          v119 = OUTLINED_FUNCTION_16_40();
          v122 = testFldeq(v119, v120, v121, 10);
          v84 = v39;
          v60 = v39;
          if (!v122)
          {
            goto LABEL_411;
          }

          goto LABEL_17;
        case 241:
          goto LABEL_411;
        case 242:
          goto LABEL_412;
        case 243:
          v150 = OUTLINED_FUNCTION_37_23();
          v152 = chstream(v150, v151, 4u);
          LODWORD(v60) = v39;
          if (v152)
          {
            goto LABEL_17;
          }

          v153 = OUTLINED_FUNCTION_16_40();
          v156 = testFldeq(v153, v154, v155, 5);
          LODWORD(v60) = v39;
          if (v156)
          {
            goto LABEL_17;
          }

          v118 = advance_tok(v3, v39, v157, v158);
          goto LABEL_40;
        case 244:
LABEL_39:
          v114 = OUTLINED_FUNCTION_19_37();
          v118 = test_synch(v114, v115, v116, v117);
LABEL_40:
          v85 = v39;
          LODWORD(v60) = v39;
          if (!v118)
          {
            goto LABEL_412;
          }

          goto LABEL_17;
        case 247:
          goto LABEL_184;
        case 248:
          goto LABEL_408;
        case 249:
          v239 = v39;
          goto LABEL_359;
        case 253:
          goto LABEL_188;
        case 254:
          v239 = v39;
          goto LABEL_377;
        default:
          v28 = v39;
          goto LABEL_6;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_87_11();
}

uint64_t except_stress1(uint64_t a1)
{
  OUTLINED_FUNCTION_21_34();
  v140 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v137 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v136, v3);
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_114_7(v4, v5);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_36_24();
  if (OUTLINED_FUNCTION_105_8(v6, v7, v8, v9, v10))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_41_21();
  get_parm(v12, v13, v14, -6);
  v15 = OUTLINED_FUNCTION_59_16();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_73_12();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v20, v21);
  v137 = 65532;
  v22 = OUTLINED_FUNCTION_42_21();
  fence_46(v22, v23);
  v24 = OUTLINED_FUNCTION_42_21();
  fence_46(v24, v25);
  v26 = OUTLINED_FUNCTION_37_23();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_49_17();
  if (lpta_loadp_setscan_r(v28, v29, 7) || advance_tok(v1, v30, v31, v32))
  {
LABEL_8:
    v42 = OUTLINED_FUNCTION_12_41();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_38_22();
    if (!setd_lookup(v45, v46, 461))
    {
      v47 = OUTLINED_FUNCTION_23_34();
      starttest(v47, v48);
LABEL_10:
      v49 = OUTLINED_FUNCTION_11_42();
      move_i(v49, v50, v51);
      v52 = OUTLINED_FUNCTION_65_15();
      if (!insert_stressval(v52, v53, v54, &v137, v55, v56, v57, v58))
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

LABEL_16:
    v62 = OUTLINED_FUNCTION_12_41();
    lpta_rpta_loadp(v62, v63, v64);
    v65 = OUTLINED_FUNCTION_38_22();
    if (setd_lookup(v65, v66, 462) || (v67 = OUTLINED_FUNCTION_64_15(), lpta_rpta_loadp(v67, v68, v69), v70 = OUTLINED_FUNCTION_9_43(), insert_2pt_i(v70, v71, v72, v73, v74)) || (v75 = OUTLINED_FUNCTION_65_15(), lpta_rpta_loadp(v75, v76, v77), v78 = OUTLINED_FUNCTION_9_43(), insert_2pt_i(v78, v79, v80, v81, v82)))
    {
LABEL_19:
      v83 = OUTLINED_FUNCTION_12_41();
      lpta_rpta_loadp(v83, v84, v85);
      v86 = OUTLINED_FUNCTION_38_22();
      if (setd_lookup(v86, v87, 463) || (v88 = OUTLINED_FUNCTION_64_15(), lpta_rpta_loadp(v88, v89, v90), v91 = OUTLINED_FUNCTION_9_43(), insert_2pt_i(v91, v92, v93, v94, v95)) || (lpta_rpta_loadp(v1, v138, v139), OUTLINED_FUNCTION_56_17(), rpta_ctxtr(), v96 = OUTLINED_FUNCTION_9_43(), insert_2pt_i(v96, v97, v98, v99, v100)))
      {
LABEL_22:
        v101 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v101, v102, v103);
        v104 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v104, v105, 464))
        {
          v106 = OUTLINED_FUNCTION_64_15();
          lpta_rpta_loadp(v106, v107, v108);
          v109 = OUTLINED_FUNCTION_9_43();
          if (!insert_2pt_i(v109, v110, v111, v112, v113))
          {
            v114 = OUTLINED_FUNCTION_65_15();
            lpta_rpta_loadp(v114, v115, v116);
            v117 = OUTLINED_FUNCTION_14_41();
            if (!insert_2pt_i(v117, v118, v119, v120, 0))
            {
              goto LABEL_3;
            }
          }
        }

LABEL_25:
        v121 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v121, v122, v123);
        v124 = OUTLINED_FUNCTION_38_22();
        if (setd_lookup(v124, v125, 465))
        {
          goto LABEL_3;
        }

        v126 = OUTLINED_FUNCTION_64_15();
        lpta_rpta_loadp(v126, v127, v128);
        v129 = OUTLINED_FUNCTION_9_43();
        if (insert_2pt_i(v129, v130, v131, v132, v133))
        {
          goto LABEL_3;
        }

        v134 = OUTLINED_FUNCTION_37_23();
        starttest_l(v134, v135);
        goto LABEL_10;
      }
    }

    *(v1 + 4094) = 1;
    goto LABEL_3;
  }

  while (2)
  {
    OUTLINED_FUNCTION_78_12();
    v33 = OUTLINED_FUNCTION_67_15();
    savescptr(v33, v34, v35);
    if (!advance_tok(v1, v36, v37, v38))
    {
LABEL_7:
      OUTLINED_FUNCTION_77_12();
      v39 = OUTLINED_FUNCTION_80_12();
      savescptr(v39, v40, v41);
      goto LABEL_8;
    }

LABEL_11:
    v59 = *(v1 + 104);
    if (v59)
    {
      v60 = OUTLINED_FUNCTION_53_17(v59);
    }

    else
    {
      v60 = OUTLINED_FUNCTION_99_8();
    }

    if ((v60 - 1) <= 0xA)
    {
      OUTLINED_FUNCTION_91_10();
      switch(v61)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_16;
        case 4:
        case 5:
        case 9:
        case 10:
          goto LABEL_3;
        case 6:
          goto LABEL_19;
        case 7:
          goto LABEL_22;
        case 8:
          goto LABEL_25;
        default:
          goto LABEL_8;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_98_9();
}

uint64_t except_stress2(uint64_t a1)
{
  OUTLINED_FUNCTION_21_34();
  v198[37] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v198[0] = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v197, v3);
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_114_7(v4, v5);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_36_24();
  if (OUTLINED_FUNCTION_105_8(v6, v7, v8, v9, v10))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_41_21();
  get_parm(v12, v13, v14, -6);
  v15 = OUTLINED_FUNCTION_59_16();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_73_12();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v20, v21);
  v198[0] = 0xFFFC0000FFFCLL;
  v22 = &_MergedGlobals_39;
  v23 = OUTLINED_FUNCTION_42_21();
  fence_46(v23, v24);
  v25 = OUTLINED_FUNCTION_42_21();
  fence_46(v25, v26);
  v27 = OUTLINED_FUNCTION_37_23();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_49_17();
  if (lpta_loadp_setscan_r(v29, v30, 7) || advance_tok(v1, v31, v32, v33))
  {
LABEL_8:
    v43 = OUTLINED_FUNCTION_12_41();
    lpta_rpta_loadp(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_38_22();
    if (setd_lookup(v46, v47, 466))
    {
LABEL_9:
      v48 = OUTLINED_FUNCTION_12_41();
      lpta_rpta_loadp(v48, v49, v50);
      v51 = OUTLINED_FUNCTION_38_22();
      if (setd_lookup(v51, v52, 467))
      {
LABEL_10:
        v53 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v53, v54, v55);
        v56 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v56, v57, 468))
        {
          v83 = OUTLINED_FUNCTION_26_32();
          starttest(v83, v84);
          v22 = v198 + 4;
          v85 = OUTLINED_FUNCTION_11_42();
          move_i(v85, v86, v87);
          goto LABEL_18;
        }

LABEL_11:
        v58 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v58, v59, v60);
        v61 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v61, v62, 469))
        {
          v63 = OUTLINED_FUNCTION_37_23();
          starttest(v63, v64);
          v22 = v198;
          v65 = OUTLINED_FUNCTION_42_21();
          move_i(v65, v66, 2);
LABEL_18:
          v88 = OUTLINED_FUNCTION_20_35();
          goto LABEL_19;
        }

LABEL_21:
        v95 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v95, v96, v97);
        v98 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v98, v99, 470))
        {
          v100 = OUTLINED_FUNCTION_37_23();
          starttest(v100, v101);
          v22 = v198 + 4;
          v102 = OUTLINED_FUNCTION_11_42();
          move_i(v102, v103, v104);
LABEL_23:
          v88 = OUTLINED_FUNCTION_18_37();
LABEL_19:
          move_i(v88, v89, v90);
          v91 = OUTLINED_FUNCTION_32_28();
          apply_strong_alternation(v91, v92, v93);
          if (!v94)
          {
            goto LABEL_3;
          }

          goto LABEL_45;
        }

LABEL_24:
        v105 = OUTLINED_FUNCTION_39_22();
        if (!lpta_loadp_setscan_r(v105, v106, v107))
        {
          OUTLINED_FUNCTION_13_41();
          if (!test_string_s())
          {
            *(v1 + 136) = v22;
            v108 = OUTLINED_FUNCTION_7_43();
            if (!test_ptr(v108, v109, v110))
            {
              v111 = OUTLINED_FUNCTION_25_32();
              starttest(v111, v112);
              v22 = v198;
              v113 = OUTLINED_FUNCTION_42_21();
              move_i(v113, v114, 2);
              goto LABEL_23;
            }
          }
        }

LABEL_28:
        v115 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v115, v116, v117);
        v118 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v118, v119, 471))
        {
          v120 = OUTLINED_FUNCTION_37_23();
          starttest(v120, v121);
          v122 = OUTLINED_FUNCTION_20_35();
          move_i(v122, v123, v124);
          LOBYTE(v22) = 0;
          goto LABEL_30;
        }

LABEL_32:
        v131 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v131, v132, v133);
        v134 = OUTLINED_FUNCTION_38_22();
        if (!setd_lookup(v134, v135, 472))
        {
          v136 = OUTLINED_FUNCTION_37_23();
          starttest(v136, v137);
          v138 = OUTLINED_FUNCTION_18_37();
          move_i(v138, v139, v140);
          LOBYTE(v22) = 0;
LABEL_30:
          v125 = OUTLINED_FUNCTION_49_17();
          move_i(v125, v126, 0);
          v127 = OUTLINED_FUNCTION_29_30();
          apply_long_alternation(v127, v128, v129);
          if (!v130)
          {
            goto LABEL_3;
          }

          goto LABEL_45;
        }

LABEL_34:
        v141 = OUTLINED_FUNCTION_12_41();
        lpta_rpta_loadp(v141, v142, v143);
        v144 = OUTLINED_FUNCTION_38_22();
        if (setd_lookup(v144, v145, 473))
        {
LABEL_39:
          v158 = OUTLINED_FUNCTION_12_41();
          lpta_rpta_loadp(v158, v159, v160);
          v161 = OUTLINED_FUNCTION_38_22();
          if (setd_lookup(v161, v162, 475))
          {
LABEL_41:
            v167 = OUTLINED_FUNCTION_12_41();
            lpta_rpta_loadp(v167, v168, v169);
            v170 = OUTLINED_FUNCTION_38_22();
            if (setd_lookup(v170, v171, 474))
            {
LABEL_43:
              v177 = OUTLINED_FUNCTION_12_41();
              lpta_rpta_loadp(v177, v178, v179);
              v180 = OUTLINED_FUNCTION_38_22();
              if (setd_lookup(v180, v181, 476))
              {
                goto LABEL_3;
              }

              v182 = OUTLINED_FUNCTION_37_23();
              starttest(v182, v183);
              v22 = v198;
              v184 = OUTLINED_FUNCTION_11_42();
              move_i(v184, v185, v186);
              v187 = OUTLINED_FUNCTION_64_15();
              if (!insert_stressval(v187, v188, v189, v198, v190, v191, v192, v193))
              {
                goto LABEL_3;
              }

              goto LABEL_45;
            }

            v172 = OUTLINED_FUNCTION_37_23();
            starttest(v172, v173);
            v22 = v198 + 4;
            v174 = OUTLINED_FUNCTION_11_42();
            move_i(v174, v175, v176);
            v151 = OUTLINED_FUNCTION_18_37();
            goto LABEL_37;
          }

          v163 = OUTLINED_FUNCTION_37_23();
          starttest(v163, v164);
          v22 = v198;
          v165 = OUTLINED_FUNCTION_42_21();
          move_i(v165, v166, 2);
        }

        else
        {
          v146 = OUTLINED_FUNCTION_37_23();
          starttest(v146, v147);
          v22 = v198 + 4;
          v148 = OUTLINED_FUNCTION_11_42();
          move_i(v148, v149, v150);
        }

        v151 = OUTLINED_FUNCTION_20_35();
LABEL_37:
        move_i(v151, v152, v153);
        v154 = OUTLINED_FUNCTION_32_28();
        apply_long_alternation(v154, v155, v156);
        if (!v157)
        {
          goto LABEL_3;
        }

        goto LABEL_45;
      }

      v72 = OUTLINED_FUNCTION_27_31();
      starttest(v72, v73);
      v74 = OUTLINED_FUNCTION_18_37();
      move_i(v74, v75, v76);
      LOBYTE(v22) = 0;
    }

    else
    {
      v67 = OUTLINED_FUNCTION_23_34();
      starttest(v67, v68);
      v69 = OUTLINED_FUNCTION_20_35();
      move_i(v69, v70, v71);
      LOBYTE(v22) = 0;
    }

    v77 = OUTLINED_FUNCTION_49_17();
    move_i(v77, v78, 0);
    v79 = OUTLINED_FUNCTION_29_30();
    apply_strong_alternation(v79, v80, v81);
    if (!v82)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

  while (2)
  {
    OUTLINED_FUNCTION_78_12();
    v34 = OUTLINED_FUNCTION_67_15();
    savescptr(v34, v35, v36);
    if (!advance_tok(v1, v37, v38, v39))
    {
LABEL_7:
      OUTLINED_FUNCTION_77_12();
      v40 = OUTLINED_FUNCTION_80_12();
      savescptr(v40, v41, v42);
      goto LABEL_8;
    }

LABEL_45:
    v194 = *(v1 + 104);
    if (v194)
    {
      v195 = OUTLINED_FUNCTION_53_17(v194);
    }

    else
    {
      v195 = OUTLINED_FUNCTION_99_8();
    }

    if ((v195 - 1) <= 0x1B)
    {
      OUTLINED_FUNCTION_91_10();
      switch(v196)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_9;
        case 4:
        case 5:
        case 7:
        case 9:
        case 11:
        case 13:
        case 15:
        case 17:
        case 19:
        case 21:
        case 23:
        case 25:
        case 26:
        case 27:
          goto LABEL_3;
        case 6:
          goto LABEL_10;
        case 8:
          goto LABEL_11;
        case 10:
          goto LABEL_21;
        case 12:
          goto LABEL_24;
        case 14:
          goto LABEL_28;
        case 16:
          goto LABEL_32;
        case 18:
          goto LABEL_34;
        case 20:
          goto LABEL_39;
        case 22:
          goto LABEL_41;
        case 24:
          goto LABEL_43;
        default:
          goto LABEL_8;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_98_9();
}

uint64_t zero_stress_syll(uint64_t a1)
{
  OUTLINED_FUNCTION_108_7();
  v75 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_19(v2, v3, v4, v5, v6, v7, v8, v9, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  OUTLINED_FUNCTION_51_17();
  bzero(v74, v10);
  if (setjmp(v74) || (OUTLINED_FUNCTION_57_16(), ventproc(v1, v11, v12, v13, v14, v74)) || (v15 = OUTLINED_FUNCTION_34_27(), get_parm(v15, v16, v17, -6), v18 = OUTLINED_FUNCTION_89_11(), push_ptr_init(v18, v19), fence_46(v1, &_MergedGlobals_39), v20 = OUTLINED_FUNCTION_37_23(), starttest(v20, v21), v22 = OUTLINED_FUNCTION_43_20(), lpta_loadp_setscan_r(v22, v23, 7)))
  {
LABEL_4:
    v24 = 94;
  }

  else
  {
    v26 = OUTLINED_FUNCTION_54_17();
    if (npush_fld(v26, 7u, v27))
    {
      goto LABEL_10;
    }

    v28 = OUTLINED_FUNCTION_38_22();
    npush_i(v28);
    if (if_testneq(v1, v29, v30, v31, v32, v33, v34, v35) || advance_tok(v1, v36, v37, v38))
    {
      goto LABEL_10;
    }

    while (1)
    {
      OUTLINED_FUNCTION_78_12();
      v39 = OUTLINED_FUNCTION_59_16();
      savescptr(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_59_16();
      lpta_rpta_loadp(v42, v43, v44);
      v24 = 0;
      OUTLINED_FUNCTION_56_17();
      if (!mark_i())
      {
        break;
      }

LABEL_10:
      v45 = *(v1 + 104);
      if (v45)
      {
        v46 = OUTLINED_FUNCTION_53_17(v45);
      }

      else
      {
        v46 = OUTLINED_FUNCTION_99_8();
      }

      if (v46 != 2)
      {
        if (v46 != 3)
        {
          goto LABEL_4;
        }

        v24 = 0;
        break;
      }
    }
  }

  vretproc(v1);
  return v24;
}

uint64_t OUTLINED_FUNCTION_7_43()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_45_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_47_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_69_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, __int16 a41, __int16 a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, &a10, &a46, &a42, &a39, v47 - 248);
}

uint64_t OUTLINED_FUNCTION_79_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, int a53, __int16 a54, __int16 a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, char a61)
{

  return ventproc(v61, a2, &a59, &a55, &a52, &a61);
}

uint64_t OUTLINED_FUNCTION_97_9()
{

  return find_last_syll();
}

uint64_t OUTLINED_FUNCTION_99_8()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_105_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

uint64_t OUTLINED_FUNCTION_107_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, __int16 a44, __int16 a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, &a11, &a49, &a45, &a42, &a51);
}

uint64_t OUTLINED_FUNCTION_113_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_114_7(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

double OUTLINED_FUNCTION_115_7@<D0>(uint64_t a1@<X8>)
{

  *&result = savescptr(v1, a1, v1 + 1768).n128_u64[0];
  return result;
}

void *fence_47(uint64_t a1, int a2, uint64_t a3)
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

uint64_t create_eng_syllables()
{
  OUTLINED_FUNCTION_14_42();
  v59 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  v52[0] = 0;
  v52[1] = 0;
  v50 = 0;
  v51 = 0;
  v49[0] = 0;
  v49[1] = 0;
  v48[0] = 0;
  v48[1] = 0;
  OUTLINED_FUNCTION_20_36(v2, v3, v4, v5, v6, v7, v8, v9, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8], v45[9], v45[10], v45[11], v45[12], v45[13], v45[14], v45[15], v45[16], v45[17], v45[18], v45[19], v45[20], v45[21], v45[22], v46[0], v46[1], v47[0], v47[1]);
  OUTLINED_FUNCTION_22_35();
  bzero(v58, v10);
  if (!setjmp(v58) && !ventproc(v0, v45, v57, v56, v55, v58))
  {
    OUTLINED_FUNCTION_27_32(v0, &v53);
    get_parm(v0, v52, v1, -6);
    push_ptr_init(v0, &v50);
    push_ptr_init(v0, v49);
    push_ptr_init(v0, v48);
    push_ptr_init(v0, v47);
    v12 = OUTLINED_FUNCTION_23_35();
    v14 = push_ptr_init(v12, v13);
    OUTLINED_FUNCTION_28_31(v14, v15, &_MergedGlobals_1_7);
    v16 = OUTLINED_FUNCTION_8_44();
    fence_47(v16, v17, v18);
    v51 = v54;
    *(v0 + 3998) = 0;
    if (!*(v0 + 4026))
    {
LABEL_20:
      v27 = OUTLINED_FUNCTION_4_45();
      startloop(v27, v28);
      copyvar(v0, v46, &v53);
      copyvar(v0, v47, v52);
      goto LABEL_24;
    }

    v19 = OUTLINED_FUNCTION_4_45();
    startloop(v19, v20);
    copyvar(v0, &v50, &v53);
    copyvar(v0, v47, v52);
LABEL_6:
    while (!forall_to_test(v0, &v50, v47))
    {
LABEL_7:
      bspush_ca(v0);
      if (lpta_loadp_setscan_r(v0, &v50, 3))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_25_33();
      if (test_string_s())
      {
        goto LABEL_12;
      }

LABEL_9:
      savescptr(v0, 4, v49);
LABEL_10:
      break_into_eng_syllables();
LABEL_11:
      OUTLINED_FUNCTION_21_35();
      forall_cont_from();
    }

    while (1)
    {
LABEL_12:
      v21 = *(v0 + 104);
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_26_33(v21);
      }

      else
      {
        v22 = vback(v0, 0);
      }

      switch(v22)
      {
        case 1:
          goto LABEL_20;
        case 2:
          goto LABEL_10;
        case 3:
          OUTLINED_FUNCTION_21_35();
          if (!forto_adv_r(v0, v23, v24, 7, 3, &v50))
          {
            goto LABEL_20;
          }

          continue;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_11;
        case 6:
          goto LABEL_6;
        case 7:
          goto LABEL_7;
        case 8:
          goto LABEL_19;
        case 9:
          goto LABEL_22;
        case 10:
          OUTLINED_FUNCTION_11_43();
          if (forto_adv_r(v0, v25, v26, 16, 3, v46))
          {
            continue;
          }

LABEL_19:
          vretproc(v0);
          return 0;
        case 11:
          goto LABEL_26;
        case 12:
          savescptr(v0, 12, v48);
LABEL_22:
          break_into_eng_syllables();
          goto LABEL_23;
        case 13:
          goto LABEL_28;
        case 14:
LABEL_23:
          OUTLINED_FUNCTION_11_43();
          forall_cont_from();
          break;
        case 15:
          break;
        case 16:
          goto LABEL_25;
        default:
          goto LABEL_3;
      }

LABEL_24:
      if (!forall_to_test(v0, v46, v47))
      {
LABEL_25:
        v29 = OUTLINED_FUNCTION_4_45();
        bspush_ca(v29);
        v30 = OUTLINED_FUNCTION_23_35();
        if (!lpta_loadp_setscan_r(v30, v31, 3))
        {
LABEL_26:
          savescptr(v0, 11, v0 + 1640);
          v32 = OUTLINED_FUNCTION_25_33();
          if (!testFldeq(v32, v33, v34, 2) && !advance_tok(v0, v35, v36, v37))
          {
            do
            {
LABEL_28:
              v38 = OUTLINED_FUNCTION_7_44();
              bspush_ca_scan(v38, v39);
              v40 = OUTLINED_FUNCTION_25_33();
            }

            while (!testFldeq(v40, v41, 0, 3) && !advance_tok(v0, v42, v43, v44));
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  return 94;
}

uint64_t break_into_eng_syllables()
{
  OUTLINED_FUNCTION_14_42();
  v66 = *MEMORY[0x277D85DE8];
  v61[0] = 0;
  v61[1] = 0;
  v59 = 0;
  v60 = 0;
  v58[0] = 0;
  v58[1] = 0;
  v57[0] = 0;
  v57[1] = 0;
  v56[0] = 0;
  v56[1] = 0;
  v55[0] = 0;
  v55[1] = 0;
  v54[0] = 0;
  v54[1] = 0;
  v53[0] = 0;
  v53[1] = 0;
  v51 = 0;
  v52 = 0;
  bzero(v50, 0xB8uLL);
  OUTLINED_FUNCTION_22_35();
  bzero(v65, v2);
  if (!setjmp(v65) && !ventproc(v0, v50, v64, v63, v62, v65))
  {
    v4 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_27_32(v4, v5);
    v6 = OUTLINED_FUNCTION_18_38();
    get_parm(v6, v7, v1, -6);
    push_ptr_init(v0, v58);
    push_ptr_init(v0, v57);
    v8 = OUTLINED_FUNCTION_13_42();
    push_ptr_init(v8, v9);
    v10 = OUTLINED_FUNCTION_17_39();
    push_ptr_init(v10, v11);
    push_ptr_init(v0, v54);
    push_ptr_init(v0, v53);
    v12 = OUTLINED_FUNCTION_16_41();
    v14 = push_ptr_init(v12, v13);
    OUTLINED_FUNCTION_28_31(v14, v15, &_MergedGlobals_1_7);
    v16 = OUTLINED_FUNCTION_4_45();
    startloop(v16, v17);
    v18 = OUTLINED_FUNCTION_9_44();
    lpta_loadpn(v18, v19);
    OUTLINED_FUNCTION_6_44();
    lpta_mover();
    lpta_storep(v0, v58, v20);
    v21 = OUTLINED_FUNCTION_18_38();
    lpta_loadpn(v21, v22);
    OUTLINED_FUNCTION_6_44();
    lpta_mover();
    v23 = OUTLINED_FUNCTION_17_39();
    lpta_storep(v23, v24, v25);
LABEL_5:
    while (!forall_to_test(v0, v58, v55))
    {
LABEL_6:
      bspush_ca(v0);
      if (lpta_loadp_setscan_r(v0, v58, 2))
      {
        goto LABEL_9;
      }

      v26 = OUTLINED_FUNCTION_6_44();
      if (testFldeq(v26, v27, 1, 1) || advance_tok(v0, v28, v29, v30))
      {
        goto LABEL_9;
      }

LABEL_25:
      savescptr(v0, 4, v57);
LABEL_26:
      assign_eng_syll_init_con();
LABEL_27:
      *(v0 + 136) = 1;
      OUTLINED_FUNCTION_15_41();
      proj_def();
      ++*(v0 + 3998);
      lpta_loadpn(v0, v57);
      OUTLINED_FUNCTION_6_44();
      lpta_mover();
      lpta_storep(v0, v53, v49);
      forall_cont_from();
    }

    while (1)
    {
LABEL_9:
      v31 = *(v0 + 104);
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_26_33(v31);
      }

      else
      {
        v32 = vback(v0, 0);
      }

      switch(v32)
      {
        case 1:
          goto LABEL_14;
        case 2:
          goto LABEL_26;
        case 3:
          if (forto_adv_upto_r(v0, 1, 2, 7, 2, v58))
          {
            continue;
          }

LABEL_14:
          v52 = v60;
          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_15_41();
          proj_def();
          startloop(v0, 8);
          v33 = OUTLINED_FUNCTION_16_41();
          copyvar(v33, v34, &v59);
          v35 = OUTLINED_FUNCTION_17_39();
          copyvar(v35, v36, v61);
          goto LABEL_17;
        case 4:
          goto LABEL_25;
        case 5:
          goto LABEL_27;
        case 6:
          goto LABEL_5;
        case 7:
          goto LABEL_6;
        case 8:
          goto LABEL_28;
        case 9:
          goto LABEL_21;
        case 10:
          OUTLINED_FUNCTION_11_43();
          if (forto_adv_l(v0, v37, v38, 15, 7, &v51))
          {
            continue;
          }

LABEL_28:
          vretproc(v0);
          return 0;
        case 11:
          goto LABEL_20;
        case 12:
          goto LABEL_23;
        case 13:
          goto LABEL_24;
        case 14:
          goto LABEL_17;
        case 15:
          break;
        default:
          goto LABEL_3;
      }

      while (1)
      {
        bspush_ca(v0);
        v41 = OUTLINED_FUNCTION_16_41();
        if (lpta_loadp_setscan_l(v41, v42, 7) || advanc(v0))
        {
          break;
        }

LABEL_20:
        savescptr(v0, 11, v56);
LABEL_21:
        v43 = OUTLINED_FUNCTION_18_38();
        starttest(v43, v44);
        if (*(v0 + 3998) != 1 || (v45 = OUTLINED_FUNCTION_13_42(), lpta_rpta_loadp(v45, v46, &v51), insert_2pt_i(v0, 7u, 2, &string_6_0, 0)))
        {
LABEL_23:
          v47 = OUTLINED_FUNCTION_13_42();
          lpta_rpta_loadp(v47, v48, &v51);
          if (insert_2pt_i(v0, 7u, 2, &unk_2805BF300, 0))
          {
            goto LABEL_9;
          }
        }

LABEL_24:
        OUTLINED_FUNCTION_4_45();
        forall_cont_from();
LABEL_17:
        v39 = OUTLINED_FUNCTION_16_41();
        if (forall_to_test(v39, v40, v55))
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_3:
  vretproc(v0);
  return 94;
}

uint64_t assign_eng_syll_init_con()
{
  OUTLINED_FUNCTION_14_42();
  v261 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_36(v2, v3, v4, v5, v6, v7, v8, v9, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256);
  OUTLINED_FUNCTION_22_35();
  bzero(v260, v10);
  if (!setjmp(v260) && !ventproc(v0, &v230, v259, v258, v257, v260))
  {
    v12 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_27_32(v12, v13);
    v14 = OUTLINED_FUNCTION_23_35();
    get_parm(v14, v15, v1, -6);
    v16 = 0;
    OUTLINED_FUNCTION_28_31(v17, v18, &_MergedGlobals_1_7);
    fence_47(v0, 1, &_MergedGlobals_40);
    starttest(v0, 1);
    v19 = OUTLINED_FUNCTION_9_44();
    v21 = 0;
    if (lpta_loadp_setscan_l(v19, v20, 2))
    {
LABEL_5:
      v22 = OUTLINED_FUNCTION_4_45();
      starttest(v22, v23);
      v24 = lpta_loadp_setscan_r(v0, v0 + 1640, 2);
      v25 = v21;
      if (v24)
      {
LABEL_81:
        v180 = v25;
        v181 = OUTLINED_FUNCTION_4_45();
        starttest(v181, v182);
        v183 = lpta_loadp_setscan_r(v0, v0 + 1320, 3);
        LODWORD(v45) = v180;
        if (v183)
        {
LABEL_82:
          v184 = OUTLINED_FUNCTION_4_45();
          starttest(v184, v185);
          v186 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v186);
          if (OUTLINED_FUNCTION_10_43(v187, v188, v189, v190, v191, v192, v193, v194, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254))
          {
            LODWORD(v21) = v180;
          }

          else
          {
            v205 = OUTLINED_FUNCTION_4_45();
            bspush_ca_scan(v205, v206);
            v207 = OUTLINED_FUNCTION_4_45();
            bspush_ca_scan(v207, v208);
            v209 = OUTLINED_FUNCTION_3_46();
            v212 = testFldeq(v209, v210, v211, 3);
            v46 = v180;
            LODWORD(v21) = v180;
            if (!v212)
            {
LABEL_88:
              LODWORD(v21) = v46;
              v213 = advance_tok(v0, v37, v45, v46);
              v214 = v21;
              if (!v213)
              {
LABEL_92:
                v215 = v214;
                OUTLINED_FUNCTION_4_45();
                bspush_ca_scan_boa();
                v216 = OUTLINED_FUNCTION_5_45();
                if (testFldeq(v216, v217, 2, v218))
                {
                  LODWORD(v21) = v215;
                }

                else
                {
                  LODWORD(v21) = 1;
                }
              }
            }
          }
        }

        else
        {
LABEL_84:
          LODWORD(v21) = v45;
          v195 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v195, v196);
          v197 = OUTLINED_FUNCTION_25_33();
          if (!testFldeq(v197, v198, v199, 1))
          {
            v203 = advance_tok(v0, v200, v201, v202);
            v204 = v21;
            if (!v203)
            {
LABEL_96:
              LODWORD(v21) = v204;
              v219 = OUTLINED_FUNCTION_4_45();
              v221 = chstream(v219, v220, 2u);
              v179 = v21;
              if (!v221)
              {
LABEL_97:
                LODWORD(v21) = v179;
                OUTLINED_FUNCTION_19_38(12, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
                do
                {
LABEL_98:
                  v222 = OUTLINED_FUNCTION_7_44();
                  bspush_ca_scan(v222, v223);
                  v224 = OUTLINED_FUNCTION_0_48();
                }

                while (!testFldeq(v224, v225, v226, 2) && !advance_tok(v0, v227, v228, v229));
              }
            }
          }
        }
      }

      else
      {
LABEL_6:
        OUTLINED_FUNCTION_19_38(5, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
        do
        {
LABEL_7:
          v26 = OUTLINED_FUNCTION_7_44();
          bspush_ca_scan(v26, v27);
          v28 = OUTLINED_FUNCTION_0_48();
        }

        while (!testFldeq(v28, v29, v30, 2) && !advance_tok(v0, v31, v32, v33));
      }
    }

    else
    {
LABEL_11:
      LODWORD(v21) = v16;
      savescptr(v0, 2, &v253);
      OUTLINED_FUNCTION_4_45();
      bspush_ca_scan_boa();
      if (!testFldeq(v0, 2u, 1, 2))
      {
        if (advance_tok(v0, v34, v35, v36))
        {
          LODWORD(v21) = v16;
        }

        else
        {
          LODWORD(v21) = 1;
        }
      }
    }

    LODWORD(v37) = v21;
    while (1)
    {
      v38 = *(v0 + 104);
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_26_33(v38);
        v21 = v44;
      }

      else
      {
        v39 = vback(v0, v37);
        v21 = 0;
      }

      v37 = 21;
      v45 = v21;
      v46 = v21;
      switch(v39)
      {
        case 1:
          goto LABEL_5;
        case 2:
          v16 = v21;
          goto LABEL_11;
        case 3:
          bspop_boa(v0);
          goto LABEL_5;
        case 4:
          v25 = v21;
          goto LABEL_81;
        case 5:
          goto LABEL_6;
        case 6:
        case 13:
          *(v0 + 136) = 1;
          v47 = OUTLINED_FUNCTION_15_41();
          v50 = test_ptr(v47, v48, v49);
          LODWORD(v37) = v21;
          if (v50)
          {
            continue;
          }

          goto LABEL_102;
        case 7:
          goto LABEL_7;
        case 8:
          v180 = v21;
          goto LABEL_82;
        case 9:
          goto LABEL_84;
        case 10:
          v62 = advance_tok(v0, 21, v21, v21);
          LODWORD(v45) = v21;
          LODWORD(v37) = v21;
          if (!v62)
          {
            goto LABEL_84;
          }

          continue;
        case 11:
          v204 = v21;
          goto LABEL_96;
        case 12:
          v179 = v21;
          goto LABEL_97;
        case 14:
          goto LABEL_98;
        case 15:
          goto LABEL_102;
        case 16:
          v94 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v94);
          v103 = OUTLINED_FUNCTION_10_43(v95, v96, v97, v98, v99, v100, v101, v102, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);
          LODWORD(v37) = v21;
          if (v103)
          {
            continue;
          }

          v104 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v104, v105);
          v67 = OUTLINED_FUNCTION_3_46();
          v70 = 3;
          goto LABEL_39;
        case 17:
          v214 = v21;
          goto LABEL_92;
        case 18:
          v63 = OUTLINED_FUNCTION_5_45();
          v66 = testFldeq(v63, v64, v65, 26);
          v46 = v21;
          v37 = v21;
          if (!v66)
          {
            goto LABEL_88;
          }

          continue;
        case 19:
          goto LABEL_88;
        case 20:
          bspop_boa(v0);
          v125 = OUTLINED_FUNCTION_3_46();
          v129 = testFldeq(v125, v126, v127, v128);
          LODWORD(v37) = v21;
          if (v129)
          {
            continue;
          }

          v132 = advance_tok(v0, v21, v130, v131);
          LODWORD(v37) = v21;
          if (v132)
          {
            continue;
          }

          OUTLINED_FUNCTION_0_48();
          v133 = test_string_s();
          LODWORD(v37) = v21;
          if (v133)
          {
            continue;
          }

          v61 = 21;
          goto LABEL_69;
        case 21:
          goto LABEL_70;
        case 22:
          goto LABEL_71;
        case 23:
          v134 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v134);
          v143 = OUTLINED_FUNCTION_10_43(v135, v136, v137, v138, v139, v140, v141, v142, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);
          LODWORD(v37) = v21;
          if (v143)
          {
            continue;
          }

          v144 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v144, v145);
          v71 = OUTLINED_FUNCTION_3_46();
          v74 = 3;
          goto LABEL_58;
        case 24:
          v67 = OUTLINED_FUNCTION_5_45();
          v70 = 26;
LABEL_39:
          v106 = testFldeq(v67, v68, v69, v70);
          v37 = v21;
          if (!v106)
          {
            goto LABEL_40;
          }

          continue;
        case 25:
LABEL_40:
          v107 = advance_tok(v0, v37, v45, v46);
          LODWORD(v37) = v21;
          if (v107)
          {
            continue;
          }

          OUTLINED_FUNCTION_4_45();
          bspush_ca_scan_boa();
          v90 = OUTLINED_FUNCTION_5_45();
          v92 = 2;
          goto LABEL_42;
        case 26:
          bspop_boa(v0);
          v156 = OUTLINED_FUNCTION_3_46();
          v159 = testFldeq(v156, v157, v158, 1);
          LODWORD(v37) = v21;
          if (v159)
          {
            continue;
          }

          v162 = advance_tok(v0, v21, v160, v161);
          LODWORD(v37) = v21;
          if (v162)
          {
            continue;
          }

          goto LABEL_65;
        case 27:
LABEL_65:
          v61 = 27;
          goto LABEL_69;
        case 28:
          v75 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v75);
          v84 = OUTLINED_FUNCTION_10_43(v76, v77, v78, v79, v80, v81, v82, v83, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);
          LODWORD(v37) = v21;
          if (v84)
          {
            continue;
          }

          OUTLINED_FUNCTION_0_48();
          v85 = test_string_s();
          LODWORD(v37) = v21;
          if (v85)
          {
            continue;
          }

          v86 = OUTLINED_FUNCTION_0_48();
          v89 = testFldeq(v86, v87, v88, 2);
          LODWORD(v37) = v21;
          if (v89)
          {
            continue;
          }

          OUTLINED_FUNCTION_4_45();
          bspush_ca_scan_boa();
          v90 = OUTLINED_FUNCTION_3_46();
          v93 = 3;
LABEL_42:
          if (testFldeq(v90, v91, v92, v93))
          {
            LODWORD(v37) = v21;
          }

          else
          {
            LODWORD(v37) = 1;
          }

          continue;
        case 29:
          v71 = OUTLINED_FUNCTION_5_45();
          v74 = 26;
LABEL_58:
          v146 = testFldeq(v71, v72, v73, v74);
          v37 = v21;
          if (!v146)
          {
            goto LABEL_59;
          }

          continue;
        case 30:
LABEL_59:
          v147 = advance_tok(v0, v37, v45, v46);
          LODWORD(v37) = v21;
          if (!v147)
          {
            v148 = OUTLINED_FUNCTION_3_46();
            v152 = testFldeq(v148, v149, v150, v151);
            LODWORD(v37) = v21;
            if (!v152)
            {
              v155 = advance_tok(v0, v21, v153, v154);
              LODWORD(v37) = v21;
              if (!v155)
              {
                goto LABEL_62;
              }
            }
          }

          continue;
        case 31:
LABEL_62:
          v61 = 31;
          goto LABEL_69;
        case 32:
          v114 = OUTLINED_FUNCTION_4_45();
          bspush_ca(v114);
          v123 = OUTLINED_FUNCTION_10_43(v115, v116, v117, v118, v119, v120, v121, v122, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);
          LODWORD(v37) = v21;
          if (v123)
          {
            continue;
          }

          goto LABEL_50;
        case 33:
          bspop_boa(v0);
          v168 = advance_tok(v0, v165, v166, v167);
          LODWORD(v37) = v21;
          if (v168)
          {
            continue;
          }

          goto LABEL_68;
        case 34:
LABEL_68:
          v61 = 34;
          goto LABEL_69;
        case 35:
          v53 = OUTLINED_FUNCTION_10_43(v39, 21, v21, v21, v40, v41, v42, v43, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);
          LODWORD(v37) = v21;
          if (v53)
          {
            continue;
          }

          v54 = OUTLINED_FUNCTION_0_48();
          v57 = testFldeq(v54, v55, v56, 2);
          LODWORD(v37) = v21;
          if (v57)
          {
            continue;
          }

          v60 = advance_tok(v0, v21, v58, v59);
          LODWORD(v37) = v21;
          if (v60)
          {
            continue;
          }

          goto LABEL_26;
        case 36:
LABEL_50:
          OUTLINED_FUNCTION_19_38(36, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
          OUTLINED_FUNCTION_0_48();
          v124 = test_string_s();
          LODWORD(v37) = v21;
          if (!v124)
          {
            goto LABEL_71;
          }

          continue;
        case 37:
LABEL_26:
          v61 = 37;
LABEL_69:
          v37 = v61;
LABEL_70:
          savescptr(v0, v37, &v253);
LABEL_71:
          OUTLINED_FUNCTION_4_45();
          bspush_ca_boa();
          v169 = OUTLINED_FUNCTION_23_35();
          v171 = lpta_loadp_setscan_r(v169, v170, 2);
          LODWORD(v37) = v21;
          if (!v171)
          {
            v172 = OUTLINED_FUNCTION_4_45();
            bspush_ca_scan(v172, v173);
            v174 = OUTLINED_FUNCTION_4_45();
            bspush_ca_scan(v174, v175);
            OUTLINED_FUNCTION_0_48();
            v176 = test_string_s();
            LODWORD(v37) = v21;
            if (!v176)
            {
              goto LABEL_73;
            }
          }

          continue;
        case 38:
          bspop_boa(v0);
LABEL_102:
          *(v1 + 8) = v254;
          vretproc(v0);
          return 0;
        case 39:
          v108 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v108, v109);
          OUTLINED_FUNCTION_0_48();
          v110 = test_string_s();
          LODWORD(v37) = v21;
          if (v110)
          {
            continue;
          }

          v111 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v111, v112);
          goto LABEL_47;
        case 40:
          goto LABEL_73;
        case 41:
          goto LABEL_77;
        case 42:
          v51 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v51, v52);
LABEL_73:
          OUTLINED_FUNCTION_5_45();
          goto LABEL_76;
        case 43:
LABEL_47:
          OUTLINED_FUNCTION_0_48();
          v113 = test_string_s();
          LODWORD(v37) = v21;
          if (!v113)
          {
            goto LABEL_75;
          }

          continue;
        case 44:
        case 47:
          goto LABEL_75;
        case 45:
          v163 = OUTLINED_FUNCTION_4_45();
          bspush_ca_scan(v163, v164);
          goto LABEL_74;
        case 46:
LABEL_74:
          OUTLINED_FUNCTION_0_48();
          v177 = test_string_s();
          LODWORD(v37) = v21;
          if (!v177)
          {
LABEL_75:
            OUTLINED_FUNCTION_0_48();
LABEL_76:
            v178 = test_string_s();
            LODWORD(v37) = v21;
            if (!v178)
            {
LABEL_77:
              LODWORD(v37) = 1;
            }
          }

          break;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  return 94;
}

uint64_t estimate_eng_nsylls(void *a1, __int16 *a2, __int16 *a3)
{
  v227 = *MEMORY[0x277D85DE8];
  v222 = 0;
  v220[1] = 0;
  memset(v221, 0, sizeof(v221));
  v219[1] = 0;
  v220[0] = 0;
  v218[1] = 0;
  v219[0] = 0;
  v217[1] = 0;
  v218[0] = 0;
  v217[0] = 0;
  bzero(v216, 0xB8uLL);
  OUTLINED_FUNCTION_22_35();
  bzero(v226, v6);
  if (!setjmp(v226) && !ventproc(a1, v216, v225, v224, v223, v226))
  {
    get_parm(a1, &v222, a2, -4);
    v9 = OUTLINED_FUNCTION_17_39();
    get_parm(v9, v10, a3, -6);
    v11 = OUTLINED_FUNCTION_13_42();
    OUTLINED_FUNCTION_27_32(v11, v12);
    v13 = OUTLINED_FUNCTION_7_44();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_9_44();
    push_ptr_init(v15, v16);
    v17 = OUTLINED_FUNCTION_18_38();
    push_ptr_init(v17, v18);
    push_ptr_init(a1, v218);
    v19 = push_ptr_init(a1, v217);
    OUTLINED_FUNCTION_28_31(v19, v20, &_MergedGlobals_1_7);
    v21 = OUTLINED_FUNCTION_6_44();
    fence_47(v21, v22, v23);
    startloop(a1, 1);
    v24 = OUTLINED_FUNCTION_17_39();
    lpta_loadpn(v24, v25);
    OUTLINED_FUNCTION_6_44();
    lpta_mover();
    v26 = OUTLINED_FUNCTION_7_44();
    lpta_storep(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_13_42();
    lpta_loadpn(v29, v30);
    OUTLINED_FUNCTION_6_44();
    lpta_mover();
    v31 = OUTLINED_FUNCTION_18_38();
    lpta_storep(v31, v32, v33);
    while (1)
    {
LABEL_6:
      v34 = OUTLINED_FUNCTION_7_44();
      forall_to_test(v34, v35, v219);
      OUTLINED_FUNCTION_24_33();
      if (v38)
      {
        goto LABEL_47;
      }

LABEL_7:
      LODWORD(v39) = v37;
      bspush_ca(a1);
      v40 = OUTLINED_FUNCTION_2_47();
      if (lpta_loadp_setscan_r(v40, v41, v42))
      {
        goto LABEL_127;
      }

      advance_tok(a1, v43, v44, v45);
      OUTLINED_FUNCTION_24_33();
      if (v47)
      {
        goto LABEL_47;
      }

LABEL_9:
      LODWORD(v39) = v46;
      savescptr(a1, 4, v220);
LABEL_10:
      v48 = OUTLINED_FUNCTION_13_42();
      starttest(v48, v49);
      v50 = OUTLINED_FUNCTION_2_47();
      if (!lpta_loadp_setscan_r(v50, v51, v52))
      {
        v61 = OUTLINED_FUNCTION_6_44();
        if (testFldeq(v61, v62, 4, 2))
        {
          goto LABEL_127;
        }

        v66 = advance_tok(a1, v63, v64, v65);
        v36 = v39;
        if (!v66)
        {
LABEL_13:
          OUTLINED_FUNCTION_21_35();
          v60 = forto_adv_upto_r(a1, v58, v59, 67, 1, v221);
LABEL_46:
          v36 = v39;
          if (!v60)
          {
LABEL_129:
            a2[1] = HIWORD(v222);
            v7 = 0;
            goto LABEL_4;
          }
        }

        goto LABEL_47;
      }

LABEL_11:
      starttest(a1, 7);
      v53 = OUTLINED_FUNCTION_2_47();
      if (lpta_loadp_setscan_r(v53, v54, v55))
      {
        break;
      }

      v67 = OUTLINED_FUNCTION_6_44();
      if (testFldeq(v67, v68, 4, 1) || advance_tok(a1, v69, v70, v71))
      {
        goto LABEL_127;
      }

      v72 = OUTLINED_FUNCTION_2_47();
      if (lpta_loadp_setscan_r(v72, v73, v74) || (OUTLINED_FUNCTION_1_47(), test_string_s()))
      {
LABEL_21:
        v75 = OUTLINED_FUNCTION_2_47();
        if (lpta_loadp_setscan_r(v75, v76, v77) || (OUTLINED_FUNCTION_1_47(), test_string_s()))
        {
LABEL_23:
          v78 = OUTLINED_FUNCTION_2_47();
          if (!lpta_loadp_setscan_r(v78, v79, v80))
          {
            OUTLINED_FUNCTION_1_47();
            if (!test_string_s())
            {
              starttest_l(a1, 54);
              v92 = OUTLINED_FUNCTION_9_44();
              if (lpta_loadp_setscan_r(v92, v93, 1))
              {
                goto LABEL_120;
              }

              bspush_ca_scan(a1, 55);
              OUTLINED_FUNCTION_1_47();
              if (!test_string_s())
              {
LABEL_35:
                v94 = 56;
                goto LABEL_82;
              }

LABEL_127:
              v36 = v39;
              goto LABEL_47;
            }
          }

LABEL_25:
          v81 = OUTLINED_FUNCTION_2_47();
          if (!lpta_loadp_setscan_r(v81, v82, v83))
          {
            OUTLINED_FUNCTION_1_47();
            if (!test_string_s())
            {
              starttest_l(a1, 58);
              v84 = OUTLINED_FUNCTION_9_44();
              if (!lpta_loadp_setscan_r(v84, v85, 1))
              {
                bspush_ca_scan(a1, 59);
                OUTLINED_FUNCTION_1_47();
                if (test_string_s())
                {
                  goto LABEL_127;
                }

                v86 = 60;
LABEL_83:
                savescptr(a1, v86, v220);
              }
            }
          }
        }

        else
        {
          v95 = OUTLINED_FUNCTION_9_44();
          if (!lpta_loadp_setscan_r(v95, v96, 1))
          {
            OUTLINED_FUNCTION_1_47();
            if (!test_string_s())
            {
LABEL_38:
              v94 = 52;
              goto LABEL_82;
            }
          }
        }
      }

      else
      {
        starttest(a1, 9);
        v97 = OUTLINED_FUNCTION_2_47();
        v100 = lpta_loadp_setscan_l(v97, v98, v99);
        v101 = v39;
        if (!v100)
        {
LABEL_108:
          LODWORD(v39) = v101;
          savescptr(a1, 10, v218);
          OUTLINED_FUNCTION_1_47();
          if (test_string_s())
          {
            goto LABEL_127;
          }

          v198 = OUTLINED_FUNCTION_6_44();
          if (testFldeq(v198, v199, 4, 2))
          {
            goto LABEL_127;
          }

          if (advance_tok(a1, v200, v201, v202))
          {
            goto LABEL_127;
          }

          v203 = OUTLINED_FUNCTION_12_42();
          if (lpta_loadp_setscan_r(v203, v204, v205) || advance_tok(a1, v206, v207, v208))
          {
            goto LABEL_127;
          }

          bspush_ca_scan_boa();
          v115 = v39;
LABEL_114:
          LODWORD(v39) = v115;
          bspush_nboa(a1);
LABEL_115:
          v90 = a1;
          v91 = 14;
LABEL_116:
          v209 = test_synch(v90, v91, 1, &_MergedGlobals_40);
          v36 = v39;
          if (v209)
          {
            goto LABEL_47;
          }

          goto LABEL_120;
        }

        while (2)
        {
          starttest(a1, 16);
          v102 = lpta_loadp_setscan_r(a1, v220, 1);
          v103 = v39;
          if (!v102)
          {
LABEL_41:
            savescptr(a1, 17, v218);
LABEL_42:
            if (test_synch(a1, 18, 1, &_MergedGlobals_40))
            {
              goto LABEL_127;
            }

            v104 = OUTLINED_FUNCTION_12_42();
            if (lpta_loadp_setscan_l(v104, v105, v106) || advance_tok(a1, v107, v108, v109))
            {
              goto LABEL_127;
            }

            bspush_boa(a1);
            v110 = 19;
LABEL_122:
            v116 = v39;
            goto LABEL_123;
          }

LABEL_90:
          v175 = v103;
          starttest(a1, 22);
          v176 = lpta_loadp_setscan_r(a1, v220, 1);
          LODWORD(v39) = v175;
          v177 = v175;
          if (!v176)
          {
LABEL_91:
            savescptr(a1, 23, v218);
            OUTLINED_FUNCTION_1_47();
            v178 = test_string_s();
            v36 = v39;
            if (v178)
            {
              goto LABEL_47;
            }

LABEL_92:
            if (test_synch(a1, 24, 1, &_MergedGlobals_40))
            {
              goto LABEL_127;
            }

            v179 = OUTLINED_FUNCTION_12_42();
            if (lpta_loadp_setscan_l(v179, v180, v181))
            {
              goto LABEL_127;
            }

            advance_tok(a1, v182, v183, v184);
            OUTLINED_FUNCTION_24_33();
            if (v186)
            {
              goto LABEL_47;
            }

LABEL_104:
            v173 = v185;
            savescptr(a1, 25, v217);
            bspush_boa(a1);
            v174 = 26;
LABEL_105:
            v110 = v174;
            v116 = v173;
LABEL_123:
            v213 = v116;
            bspush_ca_scan(a1, v110);
            OUTLINED_FUNCTION_16_41();
            bspush_ca_scan_boa();
            v214 = OUTLINED_FUNCTION_6_44();
            if (testFldeq(v214, v215, 4, 1))
            {
              v36 = v213;
            }

            else
            {
              v36 = 1;
            }

            goto LABEL_47;
          }

LABEL_97:
          v187 = v177;
          starttest(a1, 35);
          v188 = lpta_loadp_setscan_r(a1, v220, 1);
          LODWORD(v39) = v187;
          v189 = v187;
          if (!v188)
          {
LABEL_98:
            savescptr(a1, 36, v218);
            OUTLINED_FUNCTION_1_47();
            v190 = test_string_s();
            v36 = v39;
            if (v190)
            {
              goto LABEL_47;
            }

LABEL_99:
            if (test_synch(a1, 37, 1, &_MergedGlobals_40))
            {
              goto LABEL_127;
            }

            v191 = OUTLINED_FUNCTION_12_42();
            if (lpta_loadp_setscan_l(v191, v192, v193))
            {
              goto LABEL_127;
            }

            advance_tok(a1, v194, v195, v196);
            OUTLINED_FUNCTION_24_33();
            if (!v197)
            {
LABEL_88:
              v173 = v172;
              savescptr(a1, 38, v217);
              bspush_boa(a1);
              v174 = 39;
              goto LABEL_105;
            }

LABEL_47:
            v111 = a1[13];
            if (v111)
            {
              v112 = OUTLINED_FUNCTION_26_33(v111);
              v39 = v113;
            }

            else
            {
              v112 = vback(a1, v36);
              v39 = 0;
            }

            v114 = v112 - 1;
            v86 = 60;
            v110 = 19;
            v115 = v39;
            v116 = v39;
            switch(v114)
            {
              case 0:
                goto LABEL_129;
              case 1:
                goto LABEL_10;
              case 2:
              case 62:
                goto LABEL_13;
              case 3:
                v46 = v39;
                goto LABEL_9;
              case 4:
                goto LABEL_11;
              case 5:
              case 14:
              case 28:
              case 41:
              case 48:
              case 50:
              case 53:
              case 57:
                goto LABEL_120;
              case 6:
                goto LABEL_12;
              case 7:
                goto LABEL_21;
              case 8:
                continue;
              case 9:
                v101 = v39;
                goto LABEL_108;
              case 10:
                v117 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v117, v118);
                goto LABEL_65;
              case 11:
                goto LABEL_114;
              case 12:
LABEL_65:
                OUTLINED_FUNCTION_8_44();
                v149 = test_string_s();
                v115 = v39;
                v36 = v39;
                if (!v149)
                {
                  goto LABEL_114;
                }

                goto LABEL_47;
              case 13:
                goto LABEL_115;
              case 15:
                v103 = v39;
                goto LABEL_90;
              case 16:
                goto LABEL_41;
              case 17:
                goto LABEL_42;
              case 18:
                bspush_nboa(a1);
                v154 = OUTLINED_FUNCTION_8_44();
                v156 = testFldeq(v154, v155, 4, 1);
                v36 = v39;
                if (v156)
                {
                  goto LABEL_47;
                }

                v60 = advance_tok(a1, v39, v157, v158);
                goto LABEL_46;
              case 19:
                bspop_boa(a1);
                v163 = advance_tok(a1, v160, v161, v162);
                v36 = v39;
                if (v163)
                {
                  goto LABEL_47;
                }

                v212 = 19;
                goto LABEL_121;
              case 20:
                goto LABEL_123;
              case 21:
                v177 = v39;
                goto LABEL_97;
              case 22:
                goto LABEL_91;
              case 23:
                goto LABEL_92;
              case 24:
                v185 = v39;
                goto LABEL_104;
              case 25:
                bspush_nboa(a1);
                v135 = OUTLINED_FUNCTION_8_44();
                v137 = testFldeq(v135, v136, 4, 1);
                v36 = v39;
                if (v137)
                {
                  goto LABEL_47;
                }

                v140 = advance_tok(a1, v39, v138, v139);
                v36 = v39;
                if (v140)
                {
                  goto LABEL_47;
                }

                v141 = OUTLINED_FUNCTION_4_45();
                starttest_l(v141, v142);
                OUTLINED_FUNCTION_4_45();
                bspush_ca_boa();
                v143 = lpta_loadp_setscan_l(a1, v217, 1);
                v36 = v39;
                if (v143)
                {
                  goto LABEL_47;
                }

                v144 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v144, v145);
                v146 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v146, v147);
                OUTLINED_FUNCTION_8_44();
                v148 = test_string_s();
                v36 = v39;
                if (v148)
                {
                  goto LABEL_47;
                }

                goto LABEL_71;
              case 26:
                bspop_boa(a1);
                v153 = advance_tok(a1, v150, v151, v152);
                v36 = v39;
                if (v153)
                {
                  goto LABEL_47;
                }

                goto LABEL_84;
              case 27:
LABEL_84:
                v212 = 26;
                goto LABEL_121;
              case 29:
              case 42:
                bspop_boa(a1);
                goto LABEL_129;
              case 30:
                goto LABEL_55;
              case 31:
              case 33:
              case 43:
                goto LABEL_71;
              case 32:
              case 44:
                goto LABEL_72;
              case 34:
                v189 = v39;
                goto LABEL_119;
              case 35:
                goto LABEL_98;
              case 36:
                goto LABEL_99;
              case 37:
                v172 = v39;
                goto LABEL_88;
              case 38:
                bspush_nboa(a1);
                v119 = OUTLINED_FUNCTION_8_44();
                v121 = testFldeq(v119, v120, 4, 1);
                v36 = v39;
                if (v121)
                {
                  goto LABEL_47;
                }

                v124 = advance_tok(a1, v39, v122, v123);
                v36 = v39;
                if (v124)
                {
                  goto LABEL_47;
                }

                v125 = OUTLINED_FUNCTION_4_45();
                starttest_l(v125, v126);
                OUTLINED_FUNCTION_4_45();
                bspush_ca_boa();
                v127 = lpta_loadp_setscan_l(a1, v217, 1);
                v36 = v39;
                if (v127)
                {
                  goto LABEL_47;
                }

LABEL_55:
                v128 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v128, v129);
LABEL_71:
                OUTLINED_FUNCTION_8_44();
                v159 = test_string_s();
                v36 = v39;
                if (!v159)
                {
LABEL_72:
                  v36 = 1;
                }

                goto LABEL_47;
              case 39:
                bspop_boa(a1);
                v167 = advance_tok(a1, v164, v165, v166);
                v36 = v39;
                if (v167)
                {
                  goto LABEL_47;
                }

                goto LABEL_85;
              case 40:
LABEL_85:
                v212 = 39;
LABEL_121:
                v110 = v212;
                goto LABEL_122;
              case 45:
                v169 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v169, v170);
                goto LABEL_80;
              case 46:
                goto LABEL_81;
              case 47:
LABEL_80:
                OUTLINED_FUNCTION_8_44();
                v171 = test_string_s();
                v36 = v39;
                if (!v171)
                {
                  goto LABEL_81;
                }

                goto LABEL_47;
              case 49:
                goto LABEL_23;
              case 51:
                goto LABEL_38;
              case 52:
                goto LABEL_25;
              case 54:
                v133 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v133, v134);
                goto LABEL_77;
              case 55:
                goto LABEL_35;
              case 56:
LABEL_77:
                OUTLINED_FUNCTION_8_44();
                v168 = test_string_s();
                v36 = v39;
                if (!v168)
                {
                  goto LABEL_35;
                }

                goto LABEL_47;
              case 58:
              case 60:
                v130 = OUTLINED_FUNCTION_4_45();
                bspush_ca_scan(v130, v131);
                goto LABEL_57;
              case 59:
                goto LABEL_83;
              case 61:
LABEL_57:
                OUTLINED_FUNCTION_8_44();
                v132 = test_string_s();
                v36 = v39;
                if (v132)
                {
                  goto LABEL_47;
                }

                v94 = 60;
                break;
              case 63:
                goto LABEL_31;
              case 64:
                goto LABEL_32;
              case 65:
                goto LABEL_6;
              case 66:
                v37 = v39;
                goto LABEL_7;
              default:
                goto LABEL_3;
            }

LABEL_82:
            v86 = v94;
            goto LABEL_83;
          }

          break;
        }

LABEL_119:
        LODWORD(v39) = v189;
        starttest(a1, 15);
        v210 = OUTLINED_FUNCTION_9_44();
        if (!lpta_loadp_setscan_r(v210, v211, 1))
        {
          bspush_ca_scan(a1, 46);
          OUTLINED_FUNCTION_1_47();
          if (test_string_s())
          {
            goto LABEL_127;
          }

LABEL_81:
          v94 = 47;
          goto LABEL_82;
        }
      }

LABEL_120:
      ++HIWORD(v222);
      OUTLINED_FUNCTION_21_35();
      forall_cont_from();
    }

LABEL_12:
    starttest(a1, 63);
    v56 = OUTLINED_FUNCTION_9_44();
    if (lpta_loadp_setscan_r(v56, v57, 1))
    {
      goto LABEL_13;
    }

    bspush_ca_scan(a1, 64);
    OUTLINED_FUNCTION_1_47();
    v87 = test_string_s();
    v36 = v39;
    if (v87)
    {
      goto LABEL_47;
    }

LABEL_31:
    v88 = OUTLINED_FUNCTION_4_45();
    savescptr(v88, v89, v220);
LABEL_32:
    v90 = a1;
    v91 = 65;
    goto LABEL_116;
  }

LABEL_3:
  v7 = 94;
LABEL_4:
  vretproc(a1);
  return v7;
}

uint64_t OUTLINED_FUNCTION_10_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return lpta_loadp_setscan_l(v33, va, 2);
}

uint64_t OUTLINED_FUNCTION_15_41()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

double OUTLINED_FUNCTION_19_38@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_20_36(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_27_32(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void *OUTLINED_FUNCTION_28_31(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_47(v3, 0, a3);
}

void *fence_48(uint64_t a1, int a2, uint64_t a3)
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

uint64_t eng_symbolic_rules(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(&v21[184], 0, 32);
  bzero(v21, 0xB8uLL);
  bzero(v25, 0xC0uLL);
  if (setjmp(v25) || ventproc(a1, v21, v24, v23, v22, v25))
  {
    v5 = 94;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_48();
    get_parm(v7, v8, v9, -6);
    v10 = OUTLINED_FUNCTION_8_45();
    get_parm(v10, v11, a3, -6);
    fence_48(a1, 0, &null_str_14);
    fence_48(a1, 1, &_MergedGlobals_41);
    init_eng_symbolic_vars(a1);
    OUTLINED_FUNCTION_1_48();
    analyze_morphs2();
    v12 = OUTLINED_FUNCTION_1_48();
    generate_diaphones(v12, v13, v14);
    OUTLINED_FUNCTION_1_48();
    pre_syll_phone_adjustments();
    OUTLINED_FUNCTION_1_48();
    create_eng_syllables();
    OUTLINED_FUNCTION_1_48();
    assign_eng_stress();
    v15 = OUTLINED_FUNCTION_1_48();
    post_syll_adjustments(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_1_48();
    break_into_phones(v18, v19, v20);
    v5 = 0;
  }

  vretproc(a1);
  return v5;
}

uint64_t break_into_phones(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v121 = *MEMORY[0x277D85DE8];
  v116[0] = 0;
  v116[1] = 0;
  memset(v115, 0, sizeof(v115));
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110[0] = 0;
  v110[1] = 0;
  bzero(v109, 0xB8uLL);
  bzero(v120, 0xC0uLL);
  if (setjmp(v120) || ventproc(a1, v109, v119, v118, v117, v120))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  get_parm(a1, v116, a2, -6);
  v7 = OUTLINED_FUNCTION_8_45();
  get_parm(v7, v8, a3, -6);
  v9 = OUTLINED_FUNCTION_7_45();
  push_ptr_init(v9, v10);
  *&v114 = 0;
  *(&v114 + 6) = 0;
  LODWORD(v113) = -65534;
  *&v112 = 0;
  *(&v112 + 6) = 0;
  LODWORD(v111) = -65534;
  push_ptr_init(a1, v110);
  v11 = 0;
  fence_48(a1, 0, &null_str_14);
  fence_48(a1, 1, &_MergedGlobals_41);
  startloop(a1, 1);
  lpta_loadpn(a1, v116);
  OUTLINED_FUNCTION_2_48();
  lpta_mover();
  lpta_storep(a1, a1 + 1576, v12);
  v13 = OUTLINED_FUNCTION_8_45();
  lpta_loadpn(v13, v14);
  OUTLINED_FUNCTION_2_48();
  lpta_mover();
  v15 = OUTLINED_FUNCTION_7_45();
  lpta_storep(v15, v16, v17);
  v18 = 0;
  if (!forall_to_test(a1, (a1 + 1576), v115))
  {
LABEL_5:
    v18 = v11;
    v19 = OUTLINED_FUNCTION_4_46();
    bspush_ca(v19);
    if (!OUTLINED_FUNCTION_5_46())
    {
      OUTLINED_FUNCTION_4_46();
      bspush_ca_scan_boa();
      v20 = OUTLINED_FUNCTION_2_48();
      if (testFldeq(v20, v21, v22, 19))
      {
        v18 = v11;
      }

      else
      {
        v18 = 1;
      }
    }
  }

  v23 = v18;
  while (2)
  {
    v24 = *(a1 + 104);
    if (v24)
    {
      *(a1 + 104) = 0;
      v25 = v24;
      v26 = v23;
    }

    else
    {
      v25 = vback(a1, v23);
      v26 = 0;
    }

    switch(v25)
    {
      case 1:
        goto LABEL_84;
      case 2:
        goto LABEL_16;
      case 3:
      case 7:
      case 9:
      case 11:
      case 13:
      case 15:
      case 26:
      case 30:
        goto LABEL_83;
      case 4:
        bspop_boa(a1);
        v30 = advance_tok(a1, v27, v28, v29);
        v23 = v26;
        if (v30)
        {
          continue;
        }

        goto LABEL_15;
      case 5:
LABEL_15:
        savescptr(a1, 5, a1 + 1592);
LABEL_16:
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_18;
        }

        v94 = OUTLINED_FUNCTION_4_46();
        starttest(v94, v95);
        OUTLINED_FUNCTION_3_47();
        if (!v59)
        {
          goto LABEL_83;
        }

        goto LABEL_77;
      case 6:
LABEL_18:
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_20;
        }

        v92 = OUTLINED_FUNCTION_4_46();
        starttest(v92, v93);
        OUTLINED_FUNCTION_3_47();
        if (!v59)
        {
          goto LABEL_83;
        }

        goto LABEL_77;
      case 8:
LABEL_20:
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_22;
        }

        v87 = OUTLINED_FUNCTION_4_46();
        starttest(v87, v88);
        OUTLINED_FUNCTION_3_47();
        if (!v59)
        {
          goto LABEL_83;
        }

        goto LABEL_77;
      case 10:
LABEL_22:
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_24;
        }

        v85 = OUTLINED_FUNCTION_4_46();
        starttest(v85, v86);
        OUTLINED_FUNCTION_3_47();
        if (!v59)
        {
          goto LABEL_83;
        }

        goto LABEL_77;
      case 12:
LABEL_24:
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_26;
        }

        v83 = OUTLINED_FUNCTION_4_46();
        starttest(v83, v84);
        OUTLINED_FUNCTION_3_47();
        if (v59)
        {
LABEL_77:
          OUTLINED_FUNCTION_6_45();
          v96 = OUTLINED_FUNCTION_0_49();
          insert_2pt_s(v96, v97, v98, v99, v100);
        }

        goto LABEL_83;
      case 14:
LABEL_26:
        v31 = OUTLINED_FUNCTION_4_46();
        starttest(v31, v32);
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_7_45();
        settvar_s();
        OUTLINED_FUNCTION_2_48();
        insert_2ptv();
        v23 = v26;
        if (v78)
        {
          continue;
        }

        OUTLINED_FUNCTION_7_45();
        settvar_s();
        npush_s(a1);
        WORD1(v111) = 1;
        v79 = OUTLINED_FUNCTION_7_45();
        npop(v79, v80);
        npush_s(a1);
        WORD1(v111) = 5;
        v81 = OUTLINED_FUNCTION_7_45();
        npop(v81, v82);
        OUTLINED_FUNCTION_2_48();
        goto LABEL_82;
      case 16:
LABEL_28:
        v33 = OUTLINED_FUNCTION_4_46();
        starttest(v33, v34);
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_6_45();
        v35 = OUTLINED_FUNCTION_2_48();
        if (insert_2pt_s(v35, v36, 1, v37, v38))
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_8_45();
        settvar_s();
        npush_s(a1);
        WORD1(v111) = 1;
        v104 = OUTLINED_FUNCTION_8_45();
        npop(v104, v105);
        npush_s(a1);
        WORD1(v111) = 5;
        v106 = OUTLINED_FUNCTION_8_45();
        npop(v106, v107);
        OUTLINED_FUNCTION_2_48();
LABEL_82:
        insert_lv();
        goto LABEL_83;
      case 17:
LABEL_31:
        v39 = OUTLINED_FUNCTION_4_46();
        starttest(v39, v40);
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_6_45();
        v41 = OUTLINED_FUNCTION_2_48();
        if (insert_2pt_s(v41, v42, 1, v43, v44))
        {
          goto LABEL_34;
        }

        v101 = OUTLINED_FUNCTION_2_48();
        insert_l(v101, v102);
        lpta_storep(a1, v110, v103);
        settvar_s();
        npush_s(a1);
        WORD1(v111) = 1;
        npop(a1, &v111);
        npush_s(a1);
        WORD1(v111) = 5;
        npop(a1, &v111);
        OUTLINED_FUNCTION_2_48();
        insert_2ptv();
        goto LABEL_79;
      case 18:
LABEL_34:
        v45 = OUTLINED_FUNCTION_4_46();
        starttest(v45, v46);
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_6_45();
        v47 = OUTLINED_FUNCTION_2_48();
        if (insert_2pt_s(v47, v48, 2, v49, v50))
        {
          goto LABEL_37;
        }

        goto LABEL_83;
      case 19:
LABEL_37:
        v51 = OUTLINED_FUNCTION_4_46();
        starttest(v51, v52);
        if (OUTLINED_FUNCTION_5_46())
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_0_49();
        if (test_string_s())
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_6_45();
        v53 = OUTLINED_FUNCTION_2_48();
        if (insert_2pt_s(v53, v54, 2, v55, v56))
        {
          goto LABEL_40;
        }

        goto LABEL_83;
      case 20:
LABEL_40:
        v57 = OUTLINED_FUNCTION_4_46();
        starttest(v57, v58);
        OUTLINED_FUNCTION_3_47();
        if (!v59)
        {
          goto LABEL_83;
        }

        v60 = OUTLINED_FUNCTION_4_46();
        starttest(v60, v61);
        if (!OUTLINED_FUNCTION_5_46())
        {
          v66 = OUTLINED_FUNCTION_4_46();
          bspush_ca_scan(v66, v67);
LABEL_49:
          OUTLINED_FUNCTION_0_49();
          v68 = test_string_s();
          v23 = v26;
          if (!v68)
          {
            goto LABEL_68;
          }

          continue;
        }

LABEL_43:
        v62 = OUTLINED_FUNCTION_4_46();
        starttest(v62, v63);
        if (!OUTLINED_FUNCTION_5_46())
        {
          OUTLINED_FUNCTION_0_49();
          if (!test_string_s())
          {
            goto LABEL_68;
          }
        }

LABEL_45:
        v64 = OUTLINED_FUNCTION_4_46();
        starttest(v64, v65);
        if (!OUTLINED_FUNCTION_5_46())
        {
          OUTLINED_FUNCTION_0_49();
          if (!test_string_s())
          {
LABEL_68:
            OUTLINED_FUNCTION_4_46();
            bspush_ca_scan_boa();
LABEL_69:
            v89 = OUTLINED_FUNCTION_4_46();
            if (test_synch(v89, v90, 1, v91))
            {
              v23 = v26;
            }

            else
            {
              v23 = 1;
            }

            continue;
          }
        }

LABEL_83:
        v108 = forto_adv_upto_r(a1, 1, 2, 33, 2, a1 + 1576);
        v23 = v26;
        if (v108)
        {
          continue;
        }

LABEL_84:
        vretproc(a1);
        return 0;
      case 21:
        goto LABEL_43;
      case 22:
        goto LABEL_49;
      case 23:
        goto LABEL_68;
      case 24:
        bspop_boa(a1);
        OUTLINED_FUNCTION_0_49();
        v70 = test_string_s();
        v23 = v26;
        if (v70)
        {
          continue;
        }

        goto LABEL_56;
      case 25:
      case 29:
      case 32:
        goto LABEL_69;
      case 27:
        goto LABEL_45;
      case 28:
        bspop_boa(a1);
        OUTLINED_FUNCTION_0_49();
        v71 = test_string_s();
        v23 = v26;
        if (v71)
        {
          continue;
        }

        goto LABEL_56;
      case 31:
        bspop_boa(a1);
        OUTLINED_FUNCTION_0_49();
        v69 = test_string_s();
        v23 = v26;
        if (v69)
        {
          continue;
        }

LABEL_56:
        OUTLINED_FUNCTION_6_45();
        v72 = OUTLINED_FUNCTION_0_49();
        inserted = insert_2pt_s(v72, v73, v74, v75, v76);
LABEL_79:
        v23 = v26;
        if (!inserted)
        {
          goto LABEL_83;
        }

        continue;
      case 33:
        v11 = v26;
        goto LABEL_5;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_46()
{

  return lpta_loadp_setscan_r(v0, v0 + 1576, 2);
}

uint64_t OUTLINED_FUNCTION_6_45()
{

  return lpta_rpta_loadp(v0, v0 + 1576, v0 + 1592);
}

void *fence_49(uint64_t a1)
{
  *(*(a1 + 192) + 8121) = 1;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  v3 = _MergedGlobals_42;
  **(a1 + 248) = _MergedGlobals_42;
  *(*(a1 + 264) + v3) = 0;
  return result;
}

uint64_t GA_vals(_WORD *a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v142);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, SHIDWORD(v190), v192, SWORD2(v192), SHIWORD(v192), v194, SWORD2(v194), SBYTE6(v194), SHIBYTE(v194), v196, v197))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_49(a1);
    v20 = OUTLINED_FUNCTION_2_49();
    if (lpta_loadp_setscan_r(v20, v21, v22) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
    {
      v30 = OUTLINED_FUNCTION_2_49();
      if (lpta_loadp_setscan_r(v30, v31, v32) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
      {
        v33 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_r(v33, v34, v35) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
        {
          v36 = OUTLINED_FUNCTION_2_49();
          if (lpta_loadp_setscan_r(v36, v37, v38) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
          {
            v46 = OUTLINED_FUNCTION_2_49();
            if (lpta_loadp_setscan_r(v46, v47, v48) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
            {
              v56 = OUTLINED_FUNCTION_2_49();
              if (lpta_loadp_setscan_r(v56, v57, v58) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
              {
                v59 = OUTLINED_FUNCTION_2_49();
                if (lpta_loadp_setscan_r(v59, v60, v61) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                {
                  v62 = OUTLINED_FUNCTION_2_49();
                  if (lpta_loadp_setscan_r(v62, v63, v64) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                  {
                    v65 = OUTLINED_FUNCTION_2_49();
                    if (lpta_loadp_setscan_r(v65, v66, v67) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                    {
                      v75 = OUTLINED_FUNCTION_2_49();
                      if (lpta_loadp_setscan_r(v75, v76, v77) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                      {
                        v78 = OUTLINED_FUNCTION_2_49();
                        if (lpta_loadp_setscan_r(v78, v79, v80) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                        {
                          v81 = OUTLINED_FUNCTION_2_49();
                          if (lpta_loadp_setscan_r(v81, v82, v83) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                          {
                            v84 = OUTLINED_FUNCTION_2_49();
                            if (lpta_loadp_setscan_r(v84, v85, v86) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                            {
                              v87 = OUTLINED_FUNCTION_2_49();
                              if (lpta_loadp_setscan_r(v87, v88, v89) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                              {
                                v90 = OUTLINED_FUNCTION_2_49();
                                if (lpta_loadp_setscan_r(v90, v91, v92) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                {
                                  v100 = OUTLINED_FUNCTION_2_49();
                                  if (lpta_loadp_setscan_r(v100, v101, v102) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                  {
                                    v110 = OUTLINED_FUNCTION_2_49();
                                    if (lpta_loadp_setscan_r(v110, v111, v112) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                    {
                                      v113 = OUTLINED_FUNCTION_2_49();
                                      if (lpta_loadp_setscan_r(v113, v114, v115) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                      {
                                        v116 = OUTLINED_FUNCTION_2_49();
                                        if (lpta_loadp_setscan_r(v116, v117, v118) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
                                        {
                                          v119 = OUTLINED_FUNCTION_2_49();
                                          if (!lpta_loadp_setscan_r(v119, v120, v121))
                                          {
                                            OUTLINED_FUNCTION_1_49();
                                            if (!test_string_s())
                                            {
                                              ga_ph_m(a1);
                                            }
                                          }
                                        }

                                        else
                                        {
                                          ga_ph_U(a1);
                                        }
                                      }

                                      else
                                      {
                                        ga_ph_n(a1);
                                      }
                                    }

                                    else
                                    {
                                      ga_ph_w(a1);
                                    }
                                  }

                                  else
                                  {
                                    ga_ph_o(a1, v103, v104, v105, v106, v107, v108, v109);
                                  }
                                }

                                else
                                {
                                  ga_ph_u(a1, v93, v94, v95, v96, v97, v98, v99);
                                }
                              }

                              else
                              {
                                ga_ph_l(a1);
                              }
                            }

                            else
                            {
                              ga_ph_r(a1);
                            }
                          }

                          else
                          {
                            ga_ph_H(a1);
                          }
                        }

                        else
                        {
                          ga_ph_A(a1);
                        }
                      }

                      else
                      {
                        ga_ph_e(a1);
                      }
                    }

                    else
                    {
                      ga_ph_c(a1, v68, v69, v70, v71, v72, v73, v74);
                    }
                  }

                  else
                  {
                    ga_ph_R(a1);
                  }
                }

                else
                {
                  ga_ph_y(a1);
                }
              }

              else
              {
                ga_ph_E(a1);
              }
            }

            else
            {
              ga_ph_I(a1, v49, v50, v51, v52, v53, v54, v55);
            }
          }

          else
          {
            eng_ph_x(a1, v39, v40, v41, v42, v43, v44, v45);
          }
        }

        else
        {
          ga_ph_i(a1);
        }
      }

      else
      {
        ga_ph_a(a1);
      }
    }

    else
    {
      ga_ph_X(a1, v23, v24, v25, v26, v27, v28, v29);
    }

    a1[2457] = 4;
    v122 = OUTLINED_FUNCTION_22_36();
    if (!if_testeq_v_i(v122, v123, v124, v125, v126, v127, v128, v129))
    {
      a1[2457] = 6;
      if (!if_testneq_v_i(a1, a1 + 2456, 100, v130, v131, v132, v133, v134))
      {
        adjust_eng_female_breathiness(a1, v135, v136, v137, v138, v139, v140, v141);
      }

      if (a1[2283] <= 299)
      {
        a1[2283] = 300;
      }
    }

    nasalize_vow(a1);
    insert_acoustic_vals(a1);
    vretproc(a1);
    return 0;
  }
}

uint64_t ga_ph_X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v341 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v288);
  OUTLINED_FUNCTION_19_39();
  bzero(v340, v9);
  v10 = setjmp(v340);
  if (v10 || OUTLINED_FUNCTION_25_34(v10, v11, v12, v13, v14, v15, v16, v17, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, 0, 0, v336, SHIDWORD(v336), v337, SWORD2(v337), SHIWORD(v337), v338, SWORD2(v338), SBYTE6(v338), SHIBYTE(v338), v339, v340[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v19 = OUTLINED_FUNCTION_27_33();
  push_ptr_init(v19, v20);
  fence_49(a1);
  OUTLINED_FUNCTION_20_37(400);
  OUTLINED_FUNCTION_28_32(1600);
  OUTLINED_FUNCTION_24_34(2550);
  if (*(a1 + 3592) >= 100.0)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_10_44();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_17_40();
    if (!lpta_loadp_setscan_r(v23, v24, v340))
    {
      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      v27 = OUTLINED_FUNCTION_14_43();
      v29 = !testFldeq(v27, v28, 10, 1);
      goto LABEL_9;
    }

    v25 = 0;
LABEL_76:
    v161 = v25;
    v162 = OUTLINED_FUNCTION_16_42();
    starttest(v162, v163);
    v164 = OUTLINED_FUNCTION_3_48();
    v26 = v161;
    if (lpta_loadp_setscan_l(v164, v165, v166))
    {
LABEL_85:
      v179 = OUTLINED_FUNCTION_12_43();
      starttest(v179, v180);
      v181 = OUTLINED_FUNCTION_3_48();
      if (!lpta_loadp_setscan_r(v181, v182, v183))
      {
        v210 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v210, v211);
        v36 = v161;
LABEL_101:
        v29 = v36;
        OUTLINED_FUNCTION_16_42();
        bspush_ca_scan_boa();
        v212 = OUTLINED_FUNCTION_7_46();
        if (!testFldeq(v212, v213, v214, 51) && !advance_tok(a1, v215, v216, v217))
        {
          v29 = 1;
        }

        goto LABEL_9;
      }

      LODWORD(v26) = v161;
    }

    else
    {
LABEL_77:
      OUTLINED_FUNCTION_26_34(24, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v335);
      if (advance_tok(a1, v167, v168, v169))
      {
        goto LABEL_81;
      }

      v170 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v170, v171);
      v172 = OUTLINED_FUNCTION_7_46();
      v175 = testFldeq(v172, v173, v174, 26);
      v29 = v26;
      v34 = v26;
      if (v175)
      {
        goto LABEL_9;
      }

LABEL_79:
      v26 = v34;
      if (advance_tok(a1, v30, v34, v35) || (v176 = OUTLINED_FUNCTION_15_42(), lpta_loadp_setscan_r(v176, v177, v178)))
      {
LABEL_81:
        v29 = v26;
        goto LABEL_9;
      }

      v273 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v273, v274);
      v275 = OUTLINED_FUNCTION_7_46();
      v278 = testFldeq(v275, v276, v277, 26);
      v29 = v26;
      v35 = v26;
      if (v278)
      {
        goto LABEL_9;
      }

LABEL_142:
      LODWORD(v26) = v35;
      v29 = v35;
      if (advance_tok(a1, v30, v34, v35))
      {
        goto LABEL_9;
      }
    }
  }

  while (2)
  {
    v29 = v26;
    OUTLINED_FUNCTION_32_29();
    if (v184 == v185 && *(a1 + 4786) >= 1)
    {
      v186 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v186, v187, v188))
      {
        OUTLINED_FUNCTION_1_49();
        if (!test_string_s())
        {
          v33 = 2350;
          v38 = 1300;
LABEL_115:
          *(a1 + 4778) = v38;
          *(a1 + 4786) = v33;
          goto LABEL_116;
        }
      }

LABEL_91:
      v189 = OUTLINED_FUNCTION_16_42();
      starttest(v189, v190);
      v191 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v191, v192, v193))
      {
        v218 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v218, v219);
        OUTLINED_FUNCTION_1_49();
        if (test_string_s())
        {
          goto LABEL_9;
        }

        v33 = 2450;
        v38 = 1800;
        goto LABEL_115;
      }

      LODWORD(v26) = v29;
LABEL_93:
      v194 = OUTLINED_FUNCTION_16_42();
      starttest(v194, v195);
      v196 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v196, v197, v198))
      {
        v220 = OUTLINED_FUNCTION_16_42();
        bspush_ca_scan(v220, v221);
        v222 = OUTLINED_FUNCTION_0_50();
        v226 = testFldeq(v222, v223, v224, v225);
        v29 = v26;
        v37 = v26;
        if (v226)
        {
          goto LABEL_9;
        }

LABEL_107:
        v29 = v37;
        if (advance_tok(a1, v30, v34, v35))
        {
          goto LABEL_9;
        }

        v33 = 2450;
        goto LABEL_114;
      }

LABEL_94:
      v29 = v26;
      v199 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v199, v200, v201))
      {
        OUTLINED_FUNCTION_1_49();
        if (!test_string_s())
        {
          v33 = 2750;
          goto LABEL_114;
        }
      }

LABEL_96:
      v202 = OUTLINED_FUNCTION_16_42();
      starttest(v202, v203);
      v204 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v204, v205, v206))
      {
        v227 = OUTLINED_FUNCTION_5_47();
        if (testFldeq(v227, v228, v229, 3) || advance_tok(a1, v230, v231, v232))
        {
          goto LABEL_9;
        }

        v33 = 2450;
        v38 = 1700;
        goto LABEL_115;
      }

LABEL_97:
      v207 = OUTLINED_FUNCTION_2_49();
      if (!lpta_loadp_setscan_l(v207, v208, v209))
      {
        OUTLINED_FUNCTION_1_49();
        if (!test_string_s())
        {
          v33 = 2050;
LABEL_114:
          v38 = 1400;
          goto LABEL_115;
        }
      }
    }

LABEL_116:
    if (*(a1 + 4782) < 1 || *(a1 + 4790) < 1)
    {
      goto LABEL_149;
    }

    v233 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v233, v234, v235))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        v261 = 2350;
        goto LABEL_147;
      }
    }

LABEL_120:
    v236 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v236, v237, v238))
    {
      LODWORD(v26) = v29;
    }

    else
    {
      OUTLINED_FUNCTION_1_49();
      LODWORD(v26) = v29;
      if (!test_string_s())
      {
        v261 = 2450;
        v262 = 1800;
        goto LABEL_148;
      }
    }

LABEL_123:
    v239 = OUTLINED_FUNCTION_16_42();
    starttest(v239, v240);
    v241 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v241, v242, v243))
    {
      v263 = OUTLINED_FUNCTION_16_42();
      bspush_ca_scan(v263, v264);
      v265 = OUTLINED_FUNCTION_0_50();
      v269 = testFldeq(v265, v266, v267, v268);
      v29 = v26;
      v39 = v26;
      if (v269)
      {
        goto LABEL_9;
      }

LABEL_132:
      v29 = v39;
      if (!advance_tok(a1, v30, v34, v35))
      {
        v261 = 2450;
LABEL_147:
        v262 = 1400;
        goto LABEL_148;
      }

LABEL_9:
      LODWORD(v30) = v29;
LABEL_10:
      v31 = *(a1 + 104);
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_23_36(v31);
        v26 = v30;
      }

      else
      {
        v32 = vback(a1, v30);
        v26 = 0;
      }

      v33 = 2450;
      v25 = v26;
      v34 = v26;
      v35 = v26;
      v36 = v26;
      v37 = v26;
      v38 = 1800;
      v29 = v26;
      v39 = v26;
      v40 = v26;
      switch(v32)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_76;
        case 3:
          bspop_boa(a1);
          v44 = advance_tok(a1, v41, v42, v43);
          LODWORD(v30) = v26;
          if (v44)
          {
            goto LABEL_10;
          }

          v45 = OUTLINED_FUNCTION_16_42();
          starttest(v45, v46);
          v47 = OUTLINED_FUNCTION_2_49();
          if (lpta_loadp_setscan_l(v47, v48, v49))
          {
            goto LABEL_16;
          }

          goto LABEL_19;
        case 4:
LABEL_16:
          v50 = OUTLINED_FUNCTION_10_44();
          starttest(v50, v51);
          if (!lpta_loadp_setscan_l(a1, a1 + 1592, v26))
          {
            goto LABEL_17;
          }

          goto LABEL_75;
        case 5:
LABEL_19:
          OUTLINED_FUNCTION_26_34(5, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v335);
          v58 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v58, v59);
          v60 = OUTLINED_FUNCTION_7_46();
          v63 = 26;
          goto LABEL_45;
        case 6:
          v118 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v118, v119);
          v60 = OUTLINED_FUNCTION_7_46();
          v63 = 24;
          goto LABEL_45;
        case 7:
          goto LABEL_46;
        case 8:
          v104 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v104, v105);
          v60 = OUTLINED_FUNCTION_7_46();
          v63 = 43;
          goto LABEL_45;
        case 9:
          v106 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v106, v107);
          v60 = OUTLINED_FUNCTION_7_46();
          v63 = 35;
          goto LABEL_45;
        case 10:
          v108 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v108, v109);
          v60 = OUTLINED_FUNCTION_0_50();
          goto LABEL_45;
        case 11:
          v60 = OUTLINED_FUNCTION_9_45();
LABEL_45:
          v124 = testFldeq(v60, v61, v62, v63);
          v30 = v26;
          if (v124)
          {
            goto LABEL_10;
          }

LABEL_46:
          v125 = advance_tok(a1, v30, v34, v35);
          LODWORD(v30) = v26;
          if (v125)
          {
            goto LABEL_10;
          }

          v126 = OUTLINED_FUNCTION_15_42();
          v129 = lpta_loadp_setscan_r(v126, v127, v128);
          LODWORD(v30) = v26;
          if (v129)
          {
            goto LABEL_10;
          }

          v132 = advance_tok(a1, v26, v130, v131);
          LODWORD(v30) = v26;
          if (v132)
          {
            goto LABEL_10;
          }

          v133 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v133, v134);
          v81 = OUTLINED_FUNCTION_7_46();
          v84 = 26;
LABEL_60:
          v150 = testFldeq(v81, v82, v83, v84);
          v30 = v26;
          if (v150)
          {
            goto LABEL_10;
          }

LABEL_61:
          v151 = advance_tok(a1, v30, v34, v35);
          v25 = v26;
          LODWORD(v30) = v26;
          if (!v151)
          {
            goto LABEL_76;
          }

          goto LABEL_10;
        case 12:
          v116 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v116, v117);
          v81 = OUTLINED_FUNCTION_7_46();
          v84 = 24;
          goto LABEL_60;
        case 13:
          goto LABEL_61;
        case 14:
          v148 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v148, v149);
          v81 = OUTLINED_FUNCTION_0_50();
          goto LABEL_60;
        case 15:
          v81 = OUTLINED_FUNCTION_9_45();
          goto LABEL_60;
        case 16:
LABEL_17:
          OUTLINED_FUNCTION_26_34(16, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v335);
          v55 = advance_tok(a1, v52, v53, v54);
          LODWORD(v30) = v26;
          if (v55)
          {
            goto LABEL_10;
          }

          v56 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v56, v57);
          goto LABEL_54;
        case 17:
          v139 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v139, v140);
          v135 = OUTLINED_FUNCTION_7_46();
          v138 = 35;
          goto LABEL_52;
        case 18:
          goto LABEL_54;
        case 19:
          v135 = OUTLINED_FUNCTION_7_46();
          v138 = 32;
LABEL_52:
          v141 = testFldeq(v135, v136, v137, v138);
          v30 = v26;
          if (!v141)
          {
            goto LABEL_53;
          }

          goto LABEL_10;
        case 20:
LABEL_53:
          v142 = advance_tok(a1, v30, v34, v35);
          LODWORD(v30) = v26;
          if (v142)
          {
            goto LABEL_10;
          }

LABEL_54:
          OUTLINED_FUNCTION_16_42();
          bspush_ca_scan_boa();
          v143 = OUTLINED_FUNCTION_7_46();
          v103 = testFldeq(v143, v144, v145, 51);
LABEL_55:
          if (v103)
          {
            LODWORD(v30) = v26;
          }

          else
          {
            LODWORD(v30) = 1;
          }

          goto LABEL_10;
        case 21:
          bspop_boa(a1);
          v92 = advance_tok(a1, v89, v90, v91);
          LODWORD(v30) = v26;
          if (v92)
          {
            goto LABEL_10;
          }

          v93 = OUTLINED_FUNCTION_15_42();
          v96 = lpta_loadp_setscan_r(v93, v94, v95);
          LODWORD(v30) = v26;
          if (v96)
          {
            goto LABEL_10;
          }

          OUTLINED_FUNCTION_16_42();
          bspush_ca_scan_boa();
          v97 = OUTLINED_FUNCTION_7_46();
          v100 = testFldeq(v97, v98, v99, 51);
          LODWORD(v30) = v26;
          if (v100)
          {
            goto LABEL_10;
          }

          v103 = advance_tok(a1, v26, v101, v102);
          goto LABEL_55;
        case 22:
          bspop_boa(a1);
          *(a1 + 4778) = -2;
          *(a1 + 4786) = -2;
LABEL_75:
          v25 = v26;
          goto LABEL_76;
        case 23:
          LODWORD(v161) = v26;
          goto LABEL_85;
        case 24:
          goto LABEL_77;
        case 25:
          v75 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v75, v76);
          v77 = OUTLINED_FUNCTION_7_46();
          v80 = 24;
          goto LABEL_65;
        case 26:
          goto LABEL_79;
        case 27:
          v152 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v152, v153);
          v77 = OUTLINED_FUNCTION_0_50();
          goto LABEL_65;
        case 28:
          v77 = OUTLINED_FUNCTION_9_45();
LABEL_65:
          v154 = testFldeq(v77, v78, v79, v80);
          v34 = v26;
          v30 = v26;
          if (!v154)
          {
            goto LABEL_79;
          }

          goto LABEL_10;
        case 29:
          v155 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v155, v156);
          v120 = OUTLINED_FUNCTION_7_46();
          v123 = 24;
          goto LABEL_68;
        case 30:
          goto LABEL_142;
        case 31:
          v146 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v146, v147);
          v120 = OUTLINED_FUNCTION_0_50();
          goto LABEL_68;
        case 32:
          v120 = OUTLINED_FUNCTION_9_45();
LABEL_68:
          v157 = testFldeq(v120, v121, v122, v123);
          v35 = v26;
          v30 = v26;
          if (!v157)
          {
            goto LABEL_142;
          }

          goto LABEL_10;
        case 33:
          v69 = OUTLINED_FUNCTION_21_36();
          bspush_ca_scan(v69, v70);
          v71 = OUTLINED_FUNCTION_7_46();
          v74 = 35;
          goto LABEL_27;
        case 34:
          goto LABEL_101;
        case 35:
          v71 = OUTLINED_FUNCTION_7_46();
          v74 = 32;
LABEL_27:
          v87 = testFldeq(v71, v72, v73, v74);
          v30 = v26;
          if (!v87)
          {
            goto LABEL_28;
          }

          goto LABEL_10;
        case 36:
LABEL_28:
          v88 = advance_tok(a1, v30, v34, v35);
          v36 = v26;
          LODWORD(v30) = v26;
          if (!v88)
          {
            goto LABEL_101;
          }

          goto LABEL_10;
        case 37:
          bspop_boa(a1);
          *(a1 + 4782) = -2;
          *(a1 + 4790) = -2;
          continue;
        case 38:
          v29 = v26;
          goto LABEL_116;
        case 39:
          v29 = v26;
          goto LABEL_91;
        case 40:
          goto LABEL_93;
        case 41:
          v158 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v158, v159);
          goto LABEL_71;
        case 42:
          goto LABEL_115;
        case 43:
LABEL_71:
          OUTLINED_FUNCTION_1_49();
          v160 = test_string_s();
          LODWORD(v30) = v26;
          if (v160)
          {
            goto LABEL_10;
          }

          v33 = 2450;
          v38 = 1800;
          v29 = v26;
          goto LABEL_115;
        case 44:
          goto LABEL_94;
        case 45:
          v111 = OUTLINED_FUNCTION_9_45();
          v115 = testFldeq(v111, v112, v113, v114);
          v37 = v26;
          v30 = v26;
          if (!v115)
          {
            goto LABEL_107;
          }

          goto LABEL_10;
        case 46:
          goto LABEL_107;
        case 47:
          v29 = v26;
          goto LABEL_96;
        case 48:
          v29 = v26;
          goto LABEL_97;
        case 49:
          goto LABEL_149;
        case 50:
          v29 = v26;
          goto LABEL_120;
        case 51:
          goto LABEL_123;
        case 52:
          goto LABEL_124;
        case 53:
          v64 = OUTLINED_FUNCTION_9_45();
          v68 = testFldeq(v64, v65, v66, v67);
          v39 = v26;
          v30 = v26;
          if (!v68)
          {
            goto LABEL_132;
          }

          goto LABEL_10;
        case 54:
          goto LABEL_132;
        case 55:
          v244 = v26;
          goto LABEL_126;
        case 56:
          goto LABEL_134;
        case 57:
          v85 = OUTLINED_FUNCTION_16_42();
          bspush_ca_scan(v85, v86);
          goto LABEL_37;
        case 58:
          goto LABEL_128;
        case 59:
LABEL_37:
          OUTLINED_FUNCTION_1_49();
          v110 = test_string_s();
          v40 = v26;
          LODWORD(v30) = v26;
          if (!v110)
          {
            goto LABEL_128;
          }

          goto LABEL_10;
        case 60:
          goto LABEL_151;
        case 61:
          goto LABEL_160;
        case 62:
          goto LABEL_154;
        case 63:
          goto LABEL_157;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_124:
  v244 = v26;
  v245 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v245, v246, v247))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      v261 = 2750;
      goto LABEL_147;
    }
  }

LABEL_126:
  v248 = OUTLINED_FUNCTION_16_42();
  starttest(v248, v249);
  v250 = OUTLINED_FUNCTION_3_48();
  if (lpta_loadp_setscan_r(v250, v251, v252))
  {
LABEL_134:
    v270 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v270, v271, v272))
    {
      goto LABEL_149;
    }

    OUTLINED_FUNCTION_1_49();
    if (test_string_s())
    {
      goto LABEL_149;
    }

    v261 = 2050;
    goto LABEL_147;
  }

  v253 = OUTLINED_FUNCTION_16_42();
  bspush_ca_scan(v253, v254);
  v40 = v244;
LABEL_128:
  v29 = v40;
  v255 = OUTLINED_FUNCTION_5_47();
  if (testFldeq(v255, v256, v257, 3) || advance_tok(a1, v258, v259, v260))
  {
    goto LABEL_9;
  }

  v261 = 2450;
  v262 = 1700;
LABEL_148:
  *(a1 + 4782) = v262;
  *(a1 + 4790) = v261;
LABEL_149:
  v279 = OUTLINED_FUNCTION_3_48();
  if (lpta_loadp_setscan_r(v279, v280, v281) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
  {
LABEL_151:
    v282 = *(a1 + 4770);
    if (v282 >= 1 && *(a1 + 4774) >= 1)
    {
      OUTLINED_FUNCTION_29_31(v282);
      OUTLINED_FUNCTION_20_37(v283);
    }

LABEL_154:
    OUTLINED_FUNCTION_32_29();
    if (v184 == v185 && *(a1 + 4782) >= 1)
    {
      OUTLINED_FUNCTION_29_31(v284);
      OUTLINED_FUNCTION_28_32(v285);
    }

LABEL_157:
    v286 = *(a1 + 4786);
    if (v286 >= 1 && *(a1 + 4790) >= 1)
    {
      OUTLINED_FUNCTION_29_31(v286);
      OUTLINED_FUNCTION_24_34(v287);
    }
  }

LABEL_160:
  vretproc(a1);
  return 0;
}

uint64_t ga_ph_a(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v108);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, SHIDWORD(v156), v158, SWORD2(v158), SHIWORD(v158), v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v162, v163))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_49(a1);
  v20 = OUTLINED_FUNCTION_12_43();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
    v34 = 0;
LABEL_11:
    v35 = OUTLINED_FUNCTION_16_42();
    if (test_synch(v35, v36, 1, v37))
    {
      v25 = v34;
    }

    else
    {
      v25 = 1;
    }

    goto LABEL_51;
  }

  v25 = 0;
  while (2)
  {
    OUTLINED_FUNCTION_20_37(750);
    OUTLINED_FUNCTION_28_32(1200);
    OUTLINED_FUNCTION_24_34(2440);
    v26 = OUTLINED_FUNCTION_16_42();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v28, v29, v30))
    {
      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
LABEL_8:
      v31 = OUTLINED_FUNCTION_16_42();
      if (!test_synch(v31, v32, 1, v33))
      {
        v25 = 1;
      }

LABEL_51:
      v42 = v25;
LABEL_14:
      v38 = *(a1 + 104);
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_23_36(v38);
        v34 = v40;
      }

      else
      {
        v39 = vback(a1, v42);
        v34 = 0;
      }

      switch(v39)
      {
        case 1:
          v25 = v34;
          continue;
        case 2:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          v41 = test_string_s();
          v42 = v34;
          if (v41)
          {
            goto LABEL_14;
          }

          ga_ph_A(a1);
          goto LABEL_57;
        case 3:
          goto LABEL_11;
        case 4:
LABEL_57:
          v100 = *(a1 + 4774);
          if (v100 >= 701)
          {
            *(a1 + 4774) = v100 - 50;
          }

          goto LABEL_59;
        case 5:
LABEL_59:
          OUTLINED_FUNCTION_32_29();
          if (v102 == v103)
          {
            *(a1 + 4778) = v101 - 250;
          }

          goto LABEL_61;
        case 6:
LABEL_61:
          v104 = *(a1 + 4782);
          if (v104 >= 1)
          {
            *(a1 + 4782) = v104 - 250;
          }

          goto LABEL_3;
        case 8:
          v25 = v34;
          goto LABEL_27;
        case 9:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          v43 = test_string_s();
          v42 = v34;
          if (v43)
          {
            goto LABEL_14;
          }

          v44 = 2310;
          v45 = 1030;
          v46 = 680;
          v25 = v34;
          goto LABEL_31;
        case 10:
          v25 = v34;
          goto LABEL_8;
        case 11:
          v25 = v34;
          goto LABEL_36;
        case 12:
          v25 = v34;
          goto LABEL_28;
        case 13:
          v25 = v34;
          goto LABEL_38;
        case 14:
          goto LABEL_72;
        case 15:
          v25 = v34;
          goto LABEL_40;
        case 16:
          v25 = v34;
          goto LABEL_42;
        case 17:
          v25 = v34;
          goto LABEL_44;
        case 18:
          goto LABEL_65;
        case 19:
          v25 = v34;
          goto LABEL_45;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_27:
  v47 = OUTLINED_FUNCTION_16_42();
  starttest(v47, v48);
  v49 = OUTLINED_FUNCTION_2_49();
  if (!lpta_loadp_setscan_l(v49, v50, v51))
  {
    v57 = OUTLINED_FUNCTION_5_47();
    if (testFldeq(v57, v58, v59, 2) || advance_tok(a1, v60, v61, v62))
    {
      goto LABEL_51;
    }

    v56 = 1250;
    v55 = 4778;
    goto LABEL_35;
  }

LABEL_28:
  v52 = OUTLINED_FUNCTION_2_49();
  if (!lpta_loadp_setscan_l(v52, v53, v54))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      v44 = 2540;
      v45 = 1000;
      v46 = 670;
LABEL_31:
      *(a1 + 4770) = v46;
      *(a1 + 4778) = v45;
      v55 = 4786;
      v56 = v44;
LABEL_35:
      *(a1 + v55) = v56;
    }
  }

LABEL_36:
  v63 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v63, v64, v65))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      v106 = 2310;
      goto LABEL_69;
    }
  }

LABEL_38:
  v66 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v66, v67, v68))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      v91 = 1350;
      v92 = 4782;
LABEL_71:
      *(a1 + v92) = v91;
      goto LABEL_72;
    }
  }

LABEL_40:
  v69 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v69, v70, v71))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      v106 = 2640;
LABEL_69:
      v107 = 1070;
LABEL_70:
      *(a1 + 4782) = v107;
      v92 = 4790;
      v91 = v106;
      goto LABEL_71;
    }
  }

LABEL_42:
  v72 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v72, v73, v74))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_20_37(700);
      v105 = *(a1 + 4778);
      if (v105 >= 1001)
      {
        *(a1 + 4778) = v105 - 100;
      }

LABEL_65:
      v106 = -2;
      v107 = 1100;
      goto LABEL_70;
    }
  }

LABEL_44:
  v75 = OUTLINED_FUNCTION_16_42();
  starttest(v75, v76);
  v77 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v77, v78, v79))
  {
    v93 = OUTLINED_FUNCTION_0_50();
    if (testFldeq(v93, v94, v95, v96) || advance_tok(a1, v97, v98, v99))
    {
      goto LABEL_51;
    }

    v106 = 2340;
    v107 = 1150;
    goto LABEL_70;
  }

LABEL_45:
  v80 = OUTLINED_FUNCTION_16_42();
  starttest(v80, v81);
  v82 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v82, v83, v84))
  {
    v85 = OUTLINED_FUNCTION_5_47();
    if (testFldeq(v85, v86, v87, 4) || advance_tok(a1, v88, v89, v90))
    {
      goto LABEL_51;
    }

    v91 = 2240;
    v92 = 4790;
    goto LABEL_71;
  }

LABEL_72:
  vretproc(a1);
  return 0;
}

void ga_ph_i(uint64_t a1)
{
  OUTLINED_FUNCTION_39_23();
  v2 = v1;
  v88 = *MEMORY[0x277D85DE8];
  v83[0] = 0;
  v83[1] = 0;
  bzero(v82, 0xB8uLL);
  OUTLINED_FUNCTION_19_39();
  v3 = v87;
  bzero(v87, v4);
  if (setjmp(v87) || ventproc(v2, v82, v86, v85, v84, v87))
  {
    goto LABEL_3;
  }

  push_ptr_init(v2, v83);
  fence_49(v2);
  OUTLINED_FUNCTION_20_37(270);
  OUTLINED_FUNCTION_28_32(2190);
  OUTLINED_FUNCTION_24_34(2800);
  v5 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_l(v5, v6, v7) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
  {
    v8 = 0;
LABEL_7:
    v9 = OUTLINED_FUNCTION_10_44();
    starttest(v9, v10);
    v11 = OUTLINED_FUNCTION_17_40();
    v13 = lpta_loadp_setscan_l(v11, v12, v3);
    v14 = v8;
    if (!v13)
    {
LABEL_8:
      savescptr(v2, 3, v83);
      OUTLINED_FUNCTION_1_49();
      if (test_string_s() || (v15 = OUTLINED_FUNCTION_15_42(), lpta_loadp_setscan_r(v15, v16, v17)) || advance_tok(v2, v18, v19, v20))
      {
        v14 = v8;
      }

      else
      {
        OUTLINED_FUNCTION_16_42();
        bspush_ca_scan_boa();
        v21 = OUTLINED_FUNCTION_5_47();
        if (testFldeq(v21, v22, v23, 3))
        {
          v14 = v8;
        }

        else
        {
          v14 = 1;
        }
      }

      goto LABEL_65;
    }
  }

  else
  {
    *(v2 + 4778) = 2070;
    *(v2 + 4786) = 2700;
    v14 = 0;
  }

LABEL_52:
  v47 = OUTLINED_FUNCTION_16_42();
  starttest(v47, v48);
  v49 = OUTLINED_FUNCTION_3_48();
  if (lpta_loadp_setscan_r(v49, v50, v51))
  {
LABEL_53:
    v52 = OUTLINED_FUNCTION_16_42();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v54, v55, v56))
    {
LABEL_54:
      v57 = OUTLINED_FUNCTION_16_42();
      starttest(v57, v58);
      v59 = OUTLINED_FUNCTION_3_48();
      if (lpta_loadp_setscan_l(v59, v60, v61))
      {
        goto LABEL_3;
      }

LABEL_55:
      savescptr(v2, 15, v83);
      v62 = OUTLINED_FUNCTION_14_43();
      if (npush_fld(v62, v63, 7u))
      {
        goto LABEL_65;
      }

      v64 = OUTLINED_FUNCTION_37_24();
      npush_i(v64);
      if (if_testeq(v2, v65, v66, v67, v68, v69, v70, v71) || advance_tok(v2, v72, v73, v74))
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      v75 = OUTLINED_FUNCTION_1_49();
      v78 = testFldeq(v75, v76, v77, 1);
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
  }

  else
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
  }

LABEL_62:
  v79 = OUTLINED_FUNCTION_16_42();
  v78 = test_synch(v79, v80, 1, v81);
LABEL_63:
  if (!v78)
  {
    v14 = 1;
  }

LABEL_65:
  v31 = v14;
  v3 = 5;
  while (2)
  {
    v24 = *(v2 + 104);
    if (v24)
    {
      v25 = OUTLINED_FUNCTION_23_36(v24);
      v8 = v26;
    }

    else
    {
      v25 = vback(v2, v31);
      v8 = 0;
    }

    switch(v25)
    {
      case 1:
        goto LABEL_7;
      case 2:
        goto LABEL_51;
      case 3:
        goto LABEL_8;
      case 4:
        bspop_boa(v2);
        OUTLINED_FUNCTION_21_36();
        goto LABEL_24;
      case 5:
        bspop_boa(v2);
        bspush_ca_scan_boa();
        v32 = OUTLINED_FUNCTION_14_43();
        v34 = 5;
        v35 = 2;
        goto LABEL_32;
      case 6:
        bspop_boa(v2);
        OUTLINED_FUNCTION_35_27();
        bspush_ca_scan_boa();
        v32 = OUTLINED_FUNCTION_6_46();
        v34 = 6;
        goto LABEL_32;
      case 7:
        bspop_boa(v2);
        v30 = advance_tok(v2, v27, v28, v29);
        v31 = v8;
        if (v30)
        {
          continue;
        }

        *(v2 + 4778) = 2070;
        *(v2 + 4782) -= 120;
        *(v2 + 4786) = 2600;
        *(v2 + 4790) -= 100;
LABEL_51:
        v14 = v8;
        goto LABEL_52;
      case 8:
        v14 = v8;
        goto LABEL_53;
      case 9:
        bspop_boa(v2);
        OUTLINED_FUNCTION_1_49();
        v42 = test_string_s();
        v31 = v8;
        if (v42)
        {
          continue;
        }

        *(v2 + 4778) -= 200;
        *(v2 + 4782) = 1740;
        *(v2 + 4790) = 2600;
        goto LABEL_50;
      case 10:
        v14 = v8;
        goto LABEL_62;
      case 11:
        goto LABEL_50;
      case 12:
        bspop_boa(v2);
        OUTLINED_FUNCTION_1_49();
        v43 = test_string_s();
        v31 = v8;
        if (v43)
        {
          continue;
        }

        OUTLINED_FUNCTION_31_31();
        *(v2 + 4782) = 2090;
LABEL_50:
        v14 = v8;
        goto LABEL_54;
      case 13:
        v14 = v8;
        goto LABEL_62;
      case 15:
        v14 = v8;
        goto LABEL_55;
      case 16:
        bspop_boa(v2);
LABEL_24:
        bspush_ca_scan_boa();
        v32 = OUTLINED_FUNCTION_14_43();
        v34 = 5;
        v35 = 4;
        goto LABEL_32;
      case 17:
        bspop_boa(v2);
        bspush_ca_scan_boa();
        v32 = OUTLINED_FUNCTION_14_43();
        v34 = 4;
        v35 = 5;
LABEL_32:
        if (testFldeq(v32, v33, v34, v35))
        {
          v31 = v8;
        }

        else
        {
          v31 = 1;
        }

        continue;
      case 18:
        bspop_boa(v2);
        v39 = advance_tok(v2, v36, v37, v38);
        v31 = v8;
        if (v39)
        {
          continue;
        }

        v40 = lpta_loadp_setscan_r(v2, v83, 2);
        v31 = v8;
        if (v40)
        {
          continue;
        }

        goto LABEL_28;
      case 19:
LABEL_28:
        v41 = test_synch(v2, 19, 1, &unk_28058168C);
        v31 = v8;
        if (v41)
        {
          continue;
        }

        v44 = *(v2 + 4778);
        v45 = *(v2 + 4778);
        if (v44 < 1901)
        {
LABEL_45:
          if (v45 < 1801)
          {
            goto LABEL_3;
          }

          v46 = v45 - 200;
        }

        else
        {
          v46 = v44 - 300;
        }

        *(v2 + 4778) = v46;
        break;
      case 20:
        v45 = *(v2 + 4778);
        goto LABEL_45;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_38_23();
}

uint64_t ga_ph_I(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v96);
  OUTLINED_FUNCTION_11_44(v10, v11, v12, v13, v14, v15, v16, v17, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_4_47(v18, v19, v20, v21, v22, v23, v24, v25, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, SHIDWORD(v144), v146, SWORD2(v146), SHIWORD(v146), v148, SWORD2(v148), SBYTE6(v148), SHIBYTE(v148), v150, v151))
  {
LABEL_3:
    v26 = 94;
  }

  else
  {
    fence_49(a1);
    *(a1 + 4770) = 380;
    *(a1 + 4774) = 440;
    *(a1 + 4778) = 1800;
    *(a1 + 4782) = 1650;
    OUTLINED_FUNCTION_24_34(2480);
    v29 = OUTLINED_FUNCTION_12_43();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_2_49();
    if (lpta_loadp_setscan_r(v31, v32, v33))
    {
      v34 = 0;
LABEL_33:
      v89 = OUTLINED_FUNCTION_16_42();
      starttest(v89, v90);
      v91 = OUTLINED_FUNCTION_3_48();
      if (lpta_loadp_setscan_r(v91, v92, v93))
      {
LABEL_38:
        v26 = 0;
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_16_42();
      bspush_ca_scan_boa();
      v94 = OUTLINED_FUNCTION_14_43();
      if (testFldeq(v94, v95, 10, 1))
      {
        v35 = v34;
      }

      else
      {
        v35 = 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_10_44();
      bspush_ca_scan_boa();
      v35 = !OUTLINED_FUNCTION_30_31();
    }

    v45 = v35;
    while (2)
    {
      v36 = *(a1 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_23_36(v36);
        v39 = v38;
      }

      else
      {
        v37 = vback(a1, v45);
        v39 = 0;
      }

      v40 = v37 - 1;
      v26 = 0;
      switch(v40)
      {
        case 0:
          goto LABEL_32;
        case 1:
          bspop_boa(a1);
          v44 = advance_tok(a1, v41, v42, v43);
          v45 = v39;
          if (v44)
          {
            continue;
          }

          v74 = OUTLINED_FUNCTION_2_49();
          if (lpta_loadp_setscan_l(v74, v75, v76))
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_1_49();
          v78 = test_string_s();
          v79 = 2280;
          v80 = 1650;
          if (v78)
          {
            goto LABEL_27;
          }

          goto LABEL_31;
        case 2:
LABEL_27:
          v81 = OUTLINED_FUNCTION_2_49();
          if (lpta_loadp_setscan_l(v81, v82, v83))
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_1_49();
          v84 = test_string_s();
          v79 = 2680;
          v80 = 1650;
          if (v84)
          {
            goto LABEL_29;
          }

          goto LABEL_31;
        case 3:
LABEL_29:
          v85 = OUTLINED_FUNCTION_2_49();
          if (!lpta_loadp_setscan_l(v85, v86, v87))
          {
            OUTLINED_FUNCTION_1_49();
            v88 = test_string_s();
            v79 = 2080;
            v80 = 1700;
            if (!v88)
            {
LABEL_31:
              *(a1 + 4778) = v80;
              *(a1 + 4786) = v79;
            }
          }

LABEL_32:
          v34 = v39;
          goto LABEL_33;
        case 4:
          goto LABEL_4;
        case 5:
          bspop_boa(a1);
          v49 = advance_tok(a1, v46, v47, v48);
          v45 = v39;
          if (v49)
          {
            continue;
          }

          v50 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v50, v51, v52))
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          v72 = 2280;
          v73 = 1550;
          goto LABEL_42;
        case 6:
LABEL_17:
          v53 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v53, v54, v55))
          {
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            goto LABEL_19;
          }

          v72 = 2080;
          v73 = 1600;
          goto LABEL_42;
        case 7:
LABEL_19:
          v56 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v56, v57, v58))
          {
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            goto LABEL_21;
          }

          v72 = 2680;
          v73 = 1500;
          goto LABEL_42;
        case 8:
LABEL_21:
          v59 = OUTLINED_FUNCTION_35_27();
          starttest(v59, v60);
          v61 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v61, v62, v63))
          {
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_14_43();
          OUTLINED_FUNCTION_34_28();
          v68 = testFldeq(v64, v65, v66, v67);
          v45 = v39;
          if (v68)
          {
            continue;
          }

          v71 = advance_tok(a1, v39, v69, v70);
          v45 = v39;
          if (v71)
          {
            continue;
          }

          v72 = 2380;
          v73 = 1800;
LABEL_42:
          v26 = 0;
          *(a1 + 4782) = v73;
          *(a1 + 4790) = v72;
          break;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_4:
  v27 = v26;
  vretproc(a1);
  return v27;
}

void ga_ph_E(uint64_t a1)
{
  OUTLINED_FUNCTION_39_23();
  v2 = v1;
  v81 = *MEMORY[0x277D85DE8];
  bzero(v76, 0xB8uLL);
  OUTLINED_FUNCTION_19_39();
  bzero(v80, v3);
  if (setjmp(v80) || ventproc(v2, v76, v79, v78, v77, v80))
  {
    goto LABEL_3;
  }

  fence_49(v2);
  OUTLINED_FUNCTION_20_37(570);
  OUTLINED_FUNCTION_28_32(1650);
  OUTLINED_FUNCTION_24_34(2480);
  v4 = OUTLINED_FUNCTION_12_43();
  starttest(v4, v5);
  v6 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_r(v6, v7, v8) || advance_tok(v2, v9, v10, v11))
  {
    v12 = 0;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_10_44();
  bspush_ca_scan_boa();
  v16 = 0;
  if (!testFldeq(v2, v80, 0, 23))
  {
    v16 = !advance_tok(v2, v13, v14, v15);
  }

LABEL_9:
  v17 = v16;
  while (2)
  {
    v18 = *(v2 + 104);
    if (v18)
    {
      v19 = OUTLINED_FUNCTION_23_36(v18);
      v21 = v20;
    }

    else
    {
      v19 = vback(v2, v17);
      v21 = 0;
    }

    v22 = v19 - 1;
    v23 = 2180;
    v24 = 2680;
    v25 = 1500;
    v12 = v21;
    switch(v22)
    {
      case 0:
      case 7:
        goto LABEL_41;
      case 1:
        bspop_boa(v2);
        v26 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v26, v27, v28))
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_16;
        }

        v24 = 2380;
        goto LABEL_37;
      case 2:
LABEL_16:
        v29 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v29, v30, v31))
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_18;
        }

        starttest(v2, 5);
        v46 = OUTLINED_FUNCTION_2_49();
        if (!lpta_loadp_setscan_l(v46, v47, v48))
        {
          bspush_ca_scan_boa();
LABEL_29:
          if (test_synch(v2, 7, 1, &unk_28058168D))
          {
            v17 = v21;
          }

          else
          {
            v17 = 1;
          }

          continue;
        }

        v24 = 2680;
LABEL_37:
        v25 = 1500;
LABEL_38:
        *(v2 + 4778) = v25;
        v23 = v24;
LABEL_39:
        *(v2 + 4786) = v23;
LABEL_40:
        v12 = v21;
LABEL_41:
        v16 = v12;
        v49 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v49, v50, v51) || (OUTLINED_FUNCTION_1_49(), test_string_s()))
        {
LABEL_43:
          v52 = OUTLINED_FUNCTION_16_42();
          starttest(v52, v53);
          v54 = OUTLINED_FUNCTION_3_48();
          if (lpta_loadp_setscan_r(v54, v55, v56))
          {
LABEL_44:
            v57 = OUTLINED_FUNCTION_16_42();
            starttest(v57, v58);
            v59 = OUTLINED_FUNCTION_3_48();
            if (lpta_loadp_setscan_r(v59, v60, v61))
            {
              goto LABEL_3;
            }

            v62 = OUTLINED_FUNCTION_0_50();
            if (!testFldeq(v62, v63, v64, v65) && !advance_tok(v2, v66, v67, v68))
            {
              *(v2 + 4782) = 1500;
              v69 = 2380;
              goto LABEL_53;
            }

            goto LABEL_9;
          }

          v70 = OUTLINED_FUNCTION_5_47();
          if (testFldeq(v70, v71, v72, 4) || advance_tok(v2, v73, v74, v75))
          {
            goto LABEL_9;
          }

          *(v2 + 4782) = 1750;
        }

        else
        {
          *(v2 + 4782) = 1500;
          v69 = 2680;
LABEL_53:
          *(v2 + 4790) = v69;
        }

LABEL_3:
        vretproc(v2);
        OUTLINED_FUNCTION_38_23();
        return;
      case 3:
LABEL_18:
        starttest(v2, 9);
        v32 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v32, v33, v34))
        {
          goto LABEL_19;
        }

        v38 = OUTLINED_FUNCTION_6_46();
        v41 = testFldeq(v38, v39, 5, v40);
        v17 = v21;
        if (v41)
        {
          continue;
        }

        v44 = advance_tok(v2, v21, v42, v43);
        v17 = v21;
        if (v44)
        {
          continue;
        }

        v23 = 2380;
        goto LABEL_39;
      case 4:
        goto LABEL_38;
      case 5:
        bspop_boa(v2);
        OUTLINED_FUNCTION_20_37(600);
        v24 = 2680;
        v25 = 1450;
        goto LABEL_38;
      case 6:
        goto LABEL_29;
      case 8:
LABEL_19:
        starttest(v2, 1);
        v35 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v35, v36, v37))
        {
          goto LABEL_40;
        }

        bspush_ca_scan(v2, 10);
        OUTLINED_FUNCTION_14_43();
LABEL_25:
        v45 = test_string_s();
        v17 = v21;
        if (v45)
        {
          continue;
        }

        v23 = 2180;
        goto LABEL_39;
      case 9:
        OUTLINED_FUNCTION_14_43();
        goto LABEL_25;
      case 10:
        goto LABEL_39;
      case 11:
        v16 = v21;
        goto LABEL_43;
      case 13:
        v16 = v21;
        goto LABEL_44;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t ga_ph_y(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v28);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, SHIDWORD(v76), v78, SWORD2(v78), SHIWORD(v78), v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v82, v83))
  {
    v19 = 94;
  }

  else
  {
    fence_49(a1);
    eng_high_pal_Fv(a1, v21, v22, v23, v24, v25, v26, v27);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t ga_ph_R(uint64_t a1)
{
  OUTLINED_FUNCTION_13_43(*MEMORY[0x277D85DE8], v30);
  OUTLINED_FUNCTION_11_44(v3, v4, v5, v6, v7, v8, v9, v10, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_47(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, SHIDWORD(v78), v80, SWORD2(v80), SHIWORD(v80), v82, SWORD2(v82), SBYTE6(v82), SHIBYTE(v82), v84, v85))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_49(a1);
    OUTLINED_FUNCTION_20_37(440);
    v20 = OUTLINED_FUNCTION_2_49();
    if (!lpta_loadp_setscan_l(v20, v21, v22))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(a1 + 4770) = 510;
      }
    }

    eng_ret_Fv(a1, v23, v24, v25, v26, v27, v28, v29);
    vretproc(a1);
    return 0;
  }
}

uint64_t ga_ph_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_18_39(a1, a2, a3, a4, a5, a6, a7, a8, v62);
  OUTLINED_FUNCTION_11_44(v10, v11, v12, v13, v14, v15, v16, v17, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_4_47(v18, v19, v20, v21, v22, v23, v24, v25, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, SHIDWORD(v110), v112, SWORD2(v112), SHIWORD(v112), v114, SWORD2(v114), SBYTE6(v114), SHIBYTE(v114), v116, v117))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_49(a1);
  OUTLINED_FUNCTION_20_37(700);
  OUTLINED_FUNCTION_28_32(1050);
  OUTLINED_FUNCTION_24_34(2410);
  *(a1 + 4566) = 200;
  v27 = OUTLINED_FUNCTION_12_43();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v29, v30, v31))
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
    v33 = 0;
LABEL_7:
    v34 = OUTLINED_FUNCTION_16_42();
    v37 = test_synch(v34, v35, 1, v36);
    v38 = v33;
LABEL_17:
    if (v37)
    {
      v33 = v38;
    }

    else
    {
      v33 = 1;
    }

    while (2)
    {
      v52 = *(a1 + 104);
      if (v52)
      {
        v53 = OUTLINED_FUNCTION_23_36(v52);
        v33 = v54;
      }

      else
      {
        v53 = vback(a1, v33);
        v33 = 0;
      }

      switch(v53)
      {
        case 1:
          v32 = v33;
          goto LABEL_9;
        case 2:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            continue;
          }

          v55 = 900;
          v56 = 480;
          break;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_32;
        case 5:
          v32 = v33;
          goto LABEL_14;
        case 6:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            continue;
          }

          v55 = 960;
          v56 = 630;
          break;
        case 7:
          v32 = v33;
          goto LABEL_16;
        case 8:
          bspop_boa(a1);
          OUTLINED_FUNCTION_1_49();
          if (test_string_s())
          {
            continue;
          }

          v55 = 850;
          v56 = 450;
          break;
        case 9:
          v32 = v33;
          goto LABEL_16;
        case 10:
          goto LABEL_35;
        default:
          goto LABEL_3;
      }

      break;
    }

    *(a1 + 4770) = v56;
    *(a1 + 4774) = v56;
    OUTLINED_FUNCTION_28_32(v55);
    *(a1 + 4786) = v57;
    *(a1 + 4790) = v58;
    goto LABEL_32;
  }

  v32 = 0;
LABEL_9:
  v39 = OUTLINED_FUNCTION_16_42();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v41, v42, v43))
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
    goto LABEL_16;
  }

LABEL_14:
  v44 = OUTLINED_FUNCTION_16_42();
  starttest(v44, v45);
  v46 = OUTLINED_FUNCTION_3_48();
  if (!lpta_loadp_setscan_r(v46, v47, v48))
  {
    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
LABEL_16:
    v49 = OUTLINED_FUNCTION_16_42();
    v37 = test_synch(v49, v50, 1, v51);
    v38 = v32;
    goto LABEL_17;
  }

LABEL_32:
  v59 = OUTLINED_FUNCTION_2_49();
  if (!lpta_loadp_setscan_l(v59, v60, v61))
  {
    OUTLINED_FUNCTION_1_49();
    if (!test_string_s())
    {
      *(a1 + 4770) -= 80;
      OUTLINED_FUNCTION_31_31();
    }
  }

LABEL_35:
  vretproc(a1);
  return 0;
}

void ga_ph_e(uint64_t a1)
{
  OUTLINED_FUNCTION_39_23();
  v2 = v1;
  v96 = *MEMORY[0x277D85DE8];
  bzero(v91, 0xB8uLL);
  OUTLINED_FUNCTION_19_39();
  bzero(v95, v3);
  if (setjmp(v95) || ventproc(v2, v91, v94, v93, v92, v95))
  {
    goto LABEL_3;
  }

  fence_49(v2);
  *(v2 + 4770) = 470;
  *(v2 + 4774) = 350;
  *(v2 + 4778) = 1800;
  *(v2 + 4782) = 2000;
  *(v2 + 4786) = 2480;
  *(v2 + 4790) = 2430;
  v4 = OUTLINED_FUNCTION_12_43();
  starttest(v4, v5);
  v6 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_r(v6, v7, v8))
  {
    v9 = 0;
LABEL_7:
    v11 = v9;
    v12 = OUTLINED_FUNCTION_16_42();
    starttest(v12, v13);
    v14 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v14, v15, v16))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_16_42();
    bspush_ca_scan_boa();
    v17 = OUTLINED_FUNCTION_14_43();
    v10 = !testFldeq(v17, v18, 10, 1) || v11;
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    bspush_ca_scan_boa();
    v10 = !OUTLINED_FUNCTION_30_31();
  }

  LODWORD(v19) = v10;
  while (2)
  {
    v20 = *(v2 + 104);
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_23_36(v20);
      v24 = v19;
    }

    else
    {
      v21 = vback(v2, v19);
      v24 = 0;
    }

    v9 = v24;
    switch(v21)
    {
      case 1:
        goto LABEL_7;
      case 2:
        bspop_boa(v2);
        v28 = advance_tok(v2, v25, v26, v27);
        LODWORD(v19) = v24;
        if (v28)
        {
          continue;
        }

        starttest(v2, 3);
        v29 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v29, v30, v31))
        {
          goto LABEL_18;
        }

        bspush_ca_scan(v2, 4);
        OUTLINED_FUNCTION_14_43();
        goto LABEL_39;
      case 3:
LABEL_18:
        v32 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v32, v33, v34))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_20;
        }

        v88 = 1720;
        goto LABEL_64;
      case 4:
        OUTLINED_FUNCTION_14_43();
LABEL_39:
        v74 = test_string_s();
        LODWORD(v19) = v24;
        if (!v74)
        {
          goto LABEL_63;
        }

        continue;
      case 5:
LABEL_63:
        v88 = 2000;
LABEL_64:
        *(v2 + 4778) = v88;
        goto LABEL_69;
      case 6:
LABEL_20:
        starttest(v2, 7);
        v35 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v35, v36, v37))
        {
          goto LABEL_21;
        }

        bspush_ca_scan(v2, 8);
        OUTLINED_FUNCTION_14_43();
        goto LABEL_52;
      case 7:
LABEL_21:
        starttest(v2, 1);
        v38 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v38, v39, v40))
        {
          goto LABEL_69;
        }

        v41 = OUTLINED_FUNCTION_5_47();
        v44 = testFldeq(v41, v42, v43, 4);
        LODWORD(v19) = v24;
        if (v44)
        {
          continue;
        }

        v47 = advance_tok(v2, v24, v45, v46);
        LODWORD(v19) = v24;
        if (v47)
        {
          continue;
        }

        *(v2 + 4778) = 1900;
        v90 = 2380;
        goto LABEL_68;
      case 8:
        OUTLINED_FUNCTION_14_43();
LABEL_52:
        v86 = test_string_s();
        LODWORD(v19) = v24;
        if (!v86)
        {
          goto LABEL_61;
        }

        continue;
      case 9:
LABEL_61:
        *(v2 + 4778) = 1700;
        v90 = 2180;
LABEL_68:
        *(v2 + 4786) = v90;
LABEL_69:
        v9 = v24;
        goto LABEL_7;
      case 11:
        bspop_boa(v2);
        v61 = advance_tok(v2, v58, v59, v60);
        LODWORD(v19) = v24;
        if (v61)
        {
          continue;
        }

        starttest(v2, 12);
        v62 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v62, v63, v64))
        {
          goto LABEL_34;
        }

        bspush_ca_scan(v2, 13);
        v49 = OUTLINED_FUNCTION_6_46();
        v51 = 6;
        goto LABEL_43;
      case 12:
LABEL_34:
        starttest(v2, 17);
        v65 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v65, v66, v67))
        {
          goto LABEL_35;
        }

        bspush_ca_scan_boa();
        goto LABEL_55;
      case 13:
        bspush_ca_scan(v2, 15);
        v49 = OUTLINED_FUNCTION_5_47();
        v52 = 3;
        goto LABEL_43;
      case 14:
        goto LABEL_44;
      case 15:
        bspush_ca_scan(v2, 16);
        v49 = OUTLINED_FUNCTION_5_47();
        v52 = 2;
        goto LABEL_43;
      case 16:
        v49 = OUTLINED_FUNCTION_5_47();
        v52 = 4;
LABEL_43:
        v75 = testFldeq(v49, v50, v51, v52);
        v19 = v24;
        if (v75)
        {
          continue;
        }

LABEL_44:
        v76 = advance_tok(v2, v19, v22, v23);
        LODWORD(v19) = v24;
        if (v76)
        {
          continue;
        }

        *(v2 + 4782) = 2120;
        v87 = 2530;
        goto LABEL_67;
      case 17:
LABEL_35:
        starttest(v2, 10);
        v68 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v68, v69, v70))
        {
          goto LABEL_3;
        }

        bspush_ca_scan_boa();
        goto LABEL_37;
      case 18:
        bspop_boa(v2);
        OUTLINED_FUNCTION_14_43();
        v48 = test_string_s();
        LODWORD(v19) = v24;
        if (v48)
        {
          continue;
        }

        *(v2 + 4782) = 1900;
        goto LABEL_3;
      case 19:
LABEL_55:
        v71 = OUTLINED_FUNCTION_35_27();
        v73 = &unk_28058168D;
        goto LABEL_56;
      case 20:
        bspop_boa(v2);
        OUTLINED_FUNCTION_14_43();
        v53 = test_string_s();
        LODWORD(v19) = v24;
        if (v53)
        {
          continue;
        }

        starttest(v2, 22);
        bspush_ca(v2);
        v54 = OUTLINED_FUNCTION_17_40();
        lpta_loadpn(v54, v55);
        rpta_loadpn(v2, v2 + 640);
        v56 = compare_ptas(v2);
        LODWORD(v19) = v24;
        if (v56)
        {
          continue;
        }

        v57 = testeq(v2);
        goto LABEL_49;
      case 21:
LABEL_37:
        v71 = v2;
        v72 = 21;
        v73 = &unk_28058168E;
LABEL_56:
        if (test_synch(v71, v72, 1, v73))
        {
          LODWORD(v19) = v24;
        }

        else
        {
          LODWORD(v19) = 1;
        }

        continue;
      case 22:
        *(v2 + 4774) = 520;
        v89 = *(v2 + 4778);
        *(v2 + 4778) = v89 - 200;
        *(v2 + 4782) = 1650;
        *(v2 + 4786) = v89 + 500;
        v87 = 2300;
        goto LABEL_67;
      case 23:
        v77 = OUTLINED_FUNCTION_2_49();
        v80 = lpta_loadp_setscan_r(v77, v78, v79);
        LODWORD(v19) = v24;
        if (v80)
        {
          continue;
        }

        v81 = OUTLINED_FUNCTION_14_43();
        v83 = testFldeq(v81, v82, 10, 1);
        LODWORD(v19) = v24;
        if (v83)
        {
          continue;
        }

        v57 = advance_tok(v2, v24, v84, v85);
LABEL_49:
        LODWORD(v19) = v24;
        if (!v57)
        {
          goto LABEL_65;
        }

        continue;
      case 24:
LABEL_65:
        *(v2 + 4774) = 500;
        *(v2 + 4782) = 1750;
        v87 = *(v2 + 4778) + 700;
        *(v2 + 4786) = v87;
LABEL_67:
        *(v2 + 4790) = v87;
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_38_23();
}

void ga_ph_A(uint64_t a1)
{
  OUTLINED_FUNCTION_39_23();
  v3 = v2;
  OUTLINED_FUNCTION_18_39(v2, v4, v5, v6, v7, v8, v9, v10, v127);
  OUTLINED_FUNCTION_11_44(v11, v12, v13, v14, v15, v16, v17, v18, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180);
  v19 = setjmp(v1);
  if (v19 || OUTLINED_FUNCTION_4_47(v19, v20, v21, v22, v23, v24, v25, v26, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, SHIDWORD(v175), v177, SWORD2(v177), SHIWORD(v177), v179, SWORD2(v179), SBYTE6(v179), SHIBYTE(v179), v181, v182))
  {
    goto LABEL_3;
  }

  fence_49(v3);
  OUTLINED_FUNCTION_20_37(750);
  OUTLINED_FUNCTION_28_32(1650);
  OUTLINED_FUNCTION_24_34(2410);
  v27 = OUTLINED_FUNCTION_12_43();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_2_49();
  if (lpta_loadp_setscan_r(v29, v30, v31))
  {
    v32 = 0;
LABEL_38:
    v33 = v32;
    v98 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v98, v99, v100))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(v3 + 4782) = 1550;
LABEL_55:
        v118 = OUTLINED_FUNCTION_16_42();
        starttest(v118, v119);
        v120 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v120, v121, v122))
        {
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_16_42();
        bspush_ca_scan_boa();
LABEL_57:
        v123 = OUTLINED_FUNCTION_16_42();
        if (!test_synch(v123, v124, 1, v125))
        {
          LODWORD(v33) = 1;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    v102 = OUTLINED_FUNCTION_3_48();
    if (!lpta_loadp_setscan_r(v102, v103, v104))
    {
      OUTLINED_FUNCTION_1_49();
      if (!test_string_s())
      {
        *(v3 + 4782) = 1450;
        v105 = 2610;
LABEL_53:
        *(v3 + 4790) = v105;
        goto LABEL_55;
      }
    }

LABEL_49:
    v106 = OUTLINED_FUNCTION_16_42();
    starttest(v106, v107);
    v108 = OUTLINED_FUNCTION_3_48();
    if (lpta_loadp_setscan_r(v108, v109, v110))
    {
      goto LABEL_55;
    }

    v111 = OUTLINED_FUNCTION_16_42();
    bspush_ca_scan(v111, v112);
    v113 = OUTLINED_FUNCTION_0_50();
    v117 = testFldeq(v113, v114, v115, v116);
    v40 = v33;
    if (!v117)
    {
LABEL_51:
      LODWORD(v33) = v40;
      if (!advance_tok(v3, v36, v40, v37))
      {
        v105 = 2310;
        goto LABEL_53;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    bspush_ca_scan_boa();
    LODWORD(v33) = !OUTLINED_FUNCTION_30_31();
  }

LABEL_59:
  LODWORD(v36) = v33;
  while (2)
  {
    v34 = *(v3 + 104);
    if (v34)
    {
      v35 = OUTLINED_FUNCTION_23_36(v34);
      v38 = v36;
    }

    else
    {
      v35 = vback(v3, v36);
      v38 = 0;
    }

    v39 = v35 - 1;
    v32 = v38;
    v40 = v38;
    switch(v39)
    {
      case 0:
        goto LABEL_38;
      case 1:
        bspop_boa(v3);
        v44 = advance_tok(v3, v41, v42, v43);
        LODWORD(v36) = v38;
        if (v44)
        {
          continue;
        }

        v45 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v45, v46, v47))
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_14;
        }

        *(v3 + 4778) = 1550;
        v97 = 2410;
        goto LABEL_36;
      case 2:
LABEL_14:
        v48 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v48, v49, v50))
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_14_43();
        if (test_string_s())
        {
          goto LABEL_16;
        }

        *(v3 + 4778) = 1550;
        v97 = 2110;
        goto LABEL_36;
      case 3:
LABEL_16:
        v51 = OUTLINED_FUNCTION_35_27();
        starttest(v51, v52);
        v53 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v53, v54, v55))
        {
          goto LABEL_17;
        }

        v90 = OUTLINED_FUNCTION_6_46();
        v93 = testFldeq(v90, v91, 5, v92);
        LODWORD(v36) = v38;
        if (v93)
        {
          continue;
        }

        v96 = advance_tok(v3, v38, v94, v95);
        LODWORD(v36) = v38;
        if (v96)
        {
          continue;
        }

        *(v3 + 4778) = 1550;
        goto LABEL_37;
      case 4:
LABEL_17:
        starttest(v3, 1);
        v56 = OUTLINED_FUNCTION_2_49();
        if (lpta_loadp_setscan_l(v56, v57, v58))
        {
          goto LABEL_37;
        }

        bspush_ca_scan(v3, 6);
        v59 = OUTLINED_FUNCTION_14_43();
        v61 = 5;
        v62 = 3;
LABEL_20:
        v63 = testFldeq(v59, v60, v61, v62);
        v36 = v38;
        if (v63)
        {
          continue;
        }

LABEL_21:
        v64 = advance_tok(v3, v36, v40, v37);
        LODWORD(v36) = v38;
        if (v64)
        {
          continue;
        }

        *(v3 + 4778) = 1700;
        v97 = 2310;
LABEL_36:
        *(v3 + 4786) = v97;
LABEL_37:
        v32 = v38;
        goto LABEL_38;
      case 5:
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_34_28();
        goto LABEL_20;
      case 6:
        goto LABEL_21;
      case 7:
        v33 = v38;
        goto LABEL_44;
      case 8:
        LODWORD(v33) = v38;
        goto LABEL_55;
      case 9:
        v33 = v38;
        goto LABEL_49;
      case 10:
        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_34_28();
        v89 = testFldeq(v85, v86, v87, v88);
        v40 = v38;
        v36 = v38;
        if (!v89)
        {
          goto LABEL_51;
        }

        continue;
      case 11:
        goto LABEL_51;
      case 13:
        bspop_boa(v3);
        v65 = OUTLINED_FUNCTION_14_43();
        v67 = testFldeq(v65, v66, 4, 4);
        LODWORD(v36) = v38;
        if (v67)
        {
          continue;
        }

        v70 = advance_tok(v3, v38, v68, v69);
        LODWORD(v36) = v38;
        if (v70)
        {
          continue;
        }

        OUTLINED_FUNCTION_32_29();
        if (v72 == v73)
        {
          *(v3 + 4778) = v71 + 200;
        }

        goto LABEL_27;
      case 14:
        LODWORD(v33) = v38;
        goto LABEL_57;
      case 15:
LABEL_27:
        starttest(v3, 17);
        v74 = OUTLINED_FUNCTION_3_48();
        if (lpta_loadp_setscan_r(v74, v75, v76))
        {
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_14_43();
        OUTLINED_FUNCTION_34_28();
        v81 = testFldeq(v77, v78, v79, v80);
        LODWORD(v36) = v38;
        if (v81)
        {
          continue;
        }

        v84 = advance_tok(v3, v38, v82, v83);
        LODWORD(v36) = v38;
        if (v84)
        {
          continue;
        }

        *(v3 + 4774) -= 100;
        v126 = *(v3 + 4782) + 200;
        goto LABEL_62;
      case 16:
LABEL_41:
        *(v3 + 4770) -= 100;
        v101 = *(v3 + 4782);
        if (v101 < 1)
        {
          goto LABEL_3;
        }

        v126 = v101 - 100;
LABEL_62:
        *(v3 + 4782) = v126;
        break;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_38_23();
}