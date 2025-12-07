void is_start_VP(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_57_8();
  v59 = *MEMORY[0x277D85DE8];
  memset(v54, 0, sizeof(v54));
  OUTLINED_FUNCTION_33_16();
  bzero(v53, v3);
  OUTLINED_FUNCTION_32_16();
  bzero(v58, v4);
  if (setjmp(v58))
  {
    goto LABEL_4;
  }

  if (ventproc(v2, v53, v57, v56, v55, v58))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_20_22();
  push_ptr_init(v2, v54);
  fence_30(v2, 0, &null_str_9);
  v5 = OUTLINED_FUNCTION_31_17();
  fence_30(v5, v6, v7);
  v8 = OUTLINED_FUNCTION_93_4();
  starttest(v8, v9);
  v10 = OUTLINED_FUNCTION_14_27();
  if (lpta_loadp_setscan_l(v10, v11, v12))
  {
    goto LABEL_4;
  }

  while (2)
  {
    v13 = OUTLINED_FUNCTION_26_21();
    savescptr(v13, v14, v54);
    v15 = OUTLINED_FUNCTION_63_7();
    bspush_ca_scan(v15, v16);
LABEL_6:
    bspush_ca_scan(v2, 5);
LABEL_7:
    v17 = OUTLINED_FUNCTION_68_7();
    bspush_ca_scan(v17, v18);
    v19 = OUTLINED_FUNCTION_16_26();
LABEL_8:
    if (!testFldeq(v19, v20, v21, 2))
    {
LABEL_9:
      v22 = OUTLINED_FUNCTION_31_17();
      if (!testFldeq(v22, v23, 6, 2) && !advance_tok(v2, v24, v25, v26))
      {
        v27 = OUTLINED_FUNCTION_29_18();
        if (!lpta_loadp_setscan_r(v27, v28, 2))
        {
          bspush_ca_scan(v2, 9);
          v29 = OUTLINED_FUNCTION_16_26();
          v32 = 4;
LABEL_13:
          if (!testFldeq(v29, v30, v31, v32) && !advance_tok(v2, v33, v34, v35))
          {
            break;
          }
        }
      }
    }

LABEL_15:
    v36 = *(v2 + 104);
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_34_15(v36);
    }

    else
    {
      v38 = OUTLINED_FUNCTION_47_9();
      v37 = vback(v38, v39);
    }

    switch(v37)
    {
      case 2:
        continue;
      case 3:
        v40 = OUTLINED_FUNCTION_31_17();
        if (!testFldeq(v40, v41, 2, 2) && !advance_tok(v2, v42, v43, v44))
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      case 4:
        goto LABEL_6;
      case 5:
        v45 = OUTLINED_FUNCTION_16_26();
        if (!testFldeq(v45, v46, v47, 1) && !advance_tok(v2, v48, v49, v50))
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      case 6:
        goto LABEL_7;
      case 7:
        v19 = OUTLINED_FUNCTION_31_17();
        v21 = 2;
        goto LABEL_8;
      case 8:
        goto LABEL_9;
      case 9:
        v51 = OUTLINED_FUNCTION_81_6();
        bspush_ca_scan(v51, v52);
        v29 = OUTLINED_FUNCTION_16_26();
        v32 = 3;
        goto LABEL_13;
      case 11:
        v29 = OUTLINED_FUNCTION_16_26();
        v32 = 11;
        goto LABEL_13;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  vretproc(v2);
  OUTLINED_FUNCTION_90_5();
  OUTLINED_FUNCTION_71_7();
}

uint64_t is_first_adjacent_noun_accent(uint64_t a1)
{
  OUTLINED_FUNCTION_57_8();
  v171 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v2, v3, v4, v5, v6, v7, v8, v9, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v168, v169);
  OUTLINED_FUNCTION_32_16();
  bzero(v170, v10);
  if (setjmp(v170))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_8();
  if (ventproc(v1, v11, v12, v13, v14, v170))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v16 = OUTLINED_FUNCTION_28_18();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_36_13();
  v20 = push_ptr_init(v18, v19);
  v22 = OUTLINED_FUNCTION_73_7(v20, v21, &null_str_9);
  OUTLINED_FUNCTION_59_8(v22, v23, &_MergedGlobals_27);
  OUTLINED_FUNCTION_88_5();
  v24 = OUTLINED_FUNCTION_14_27();
  if (!lpta_loadp_setscan_r(v24, v25, v26) && !advance_tok(v1, v27, v28, v29))
  {
LABEL_8:
    v42 = OUTLINED_FUNCTION_67_7();
    savescptr(v42, v43, v44);
    if (!advance_tok(v1, v45, v46, v47))
    {
      OUTLINED_FUNCTION_28_18();
      if (!is_emphatic_word())
      {
        goto LABEL_3;
      }
    }

LABEL_17:
    OUTLINED_FUNCTION_75_7();
    while (1)
    {
      v72 = v1[13];
      if (v72)
      {
        v35 = OUTLINED_FUNCTION_34_15(v72);
        v73 = v71;
      }

      else
      {
        v35 = vback(v1, v71);
        v73 = 0;
      }

      switch(v35)
      {
        case 1:
          goto LABEL_6;
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_40;
        case 5:
          goto LABEL_11;
        case 6:
          bspop_boa(v1);
          OUTLINED_FUNCTION_44_9();
          bspush_ca_scan_boa();
          v74 = OUTLINED_FUNCTION_0_34();
          goto LABEL_27;
        case 7:
          bspop_boa(v1);
          OUTLINED_FUNCTION_84_5();
          bspush_ca_scan_boa();
          v74 = OUTLINED_FUNCTION_3_31();
          v77 = 8;
LABEL_27:
          v83 = testFldeq(v74, v75, v76, v77);
          goto LABEL_28;
        case 8:
          bspop_boa(v1);
          v84 = OUTLINED_FUNCTION_18_24();
          v86 = npush_fld(v84, v85, 5u);
          LODWORD(v71) = v73;
          if (v86)
          {
            continue;
          }

          v87 = OUTLINED_FUNCTION_47_9();
          npush_i(v87);
          v95 = if_testlt(v1, v88, v89, v90, v91, v92, v93, v94);
          LODWORD(v71) = v73;
          if (v95)
          {
            continue;
          }

          v98 = advance_tok(v1, v73, v96, v97);
          LODWORD(v71) = v73;
          if (v98)
          {
            continue;
          }

          v99 = OUTLINED_FUNCTION_1_32();
          v103 = testFldeq(v99, v100, v101, v102);
          LODWORD(v71) = v73;
          if (v103)
          {
            continue;
          }

          v104 = OUTLINED_FUNCTION_18_24();
          v106 = npush_fld(v104, v105, 5u);
          LODWORD(v71) = v73;
          if (v106)
          {
            continue;
          }

          v107 = OUTLINED_FUNCTION_47_9();
          npush_i(v107);
          v115 = if_testlt(v1, v108, v109, v110, v111, v112, v113, v114);
          LODWORD(v71) = v73;
          if (v115)
          {
            continue;
          }

          v118 = advance_tok(v1, v73, v116, v117);
          LODWORD(v71) = v73;
          if (v118)
          {
            continue;
          }

          OUTLINED_FUNCTION_29_18();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_99_3();
          v78 = OUTLINED_FUNCTION_4_30();
          v81 = 3;
          goto LABEL_24;
        case 9:
          bspop_boa(v1);
LABEL_40:
          vretproc(v1);
          return 0;
        case 10:
          v78 = OUTLINED_FUNCTION_4_30();
          v81 = 11;
LABEL_24:
          v82 = testFldeq(v78, v79, v80, v81);
          v71 = v73;
          if (!v82)
          {
            goto LABEL_25;
          }

          continue;
        case 11:
LABEL_25:
          v83 = advance_tok(v1, v71, v36, v37);
LABEL_28:
          if (v83)
          {
            LODWORD(v71) = v73;
          }

          else
          {
            LODWORD(v71) = 1;
          }

          break;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_6:
  v30 = OUTLINED_FUNCTION_17_25();
  starttest(v30, v31);
  v32 = OUTLINED_FUNCTION_21_22();
  v35 = lpta_loadp_setscan_l(v32, v33, v34);
  if (!v35)
  {
LABEL_11:
    OUTLINED_FUNCTION_76_7(v35, 5, v36, v37, v38, v39, v40, v41, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166);
    v48 = OUTLINED_FUNCTION_18_24();
    if (!npush_fld(v48, v49, 5u))
    {
      npush_i(v1);
      if (!if_testgt(v1, v50, v51, v52, v53, v54, v55, v56) && !advance_tok(v1, v57, v58, v59))
      {
        v60 = OUTLINED_FUNCTION_21_22();
        if (!lpta_loadp_setscan_r(v60, v61, v62))
        {
          v63 = OUTLINED_FUNCTION_1_32();
          if (!testFldeq(v63, v64, v65, v66))
          {
            OUTLINED_FUNCTION_19_23();
            bspush_ca_scan_boa();
            v67 = OUTLINED_FUNCTION_2_32();
            testFldeq(v67, v68, v69, v70);
          }
        }
      }
    }

    goto LABEL_17;
  }

LABEL_3:
  vretproc(v1);
  return 94;
}

void is_initial_matrix_verb(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_57_8();
  v106 = *MEMORY[0x277D85DE8];
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(v90, v3);
  OUTLINED_FUNCTION_32_16();
  bzero(v105, v4);
  v5 = setjmp(v105);
  if (!v5 && !OUTLINED_FUNCTION_85_5(v5, v90, v6, v7, v8, v9, v10, v11, v87, v88, v89, v90[0], v90[1], v90[2], v90[3], v90[4], v90[5], v90[6], v90[7], v90[8], v90[9], v90[10], v90[11], v90[12], v90[13], v90[14], v90[15], v90[16], v90[17], v90[18], v90[19], v90[20], v90[21], v90[22], v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105[0]))
  {
    OUTLINED_FUNCTION_20_22();
    v12 = OUTLINED_FUNCTION_82_6();
    push_ptr_init(v12, v13);
    fence_30(v2, 0, &null_str_9);
    v14 = OUTLINED_FUNCTION_19_23();
    starttest(v14, v15);
    v16 = OUTLINED_FUNCTION_14_27();
    if (!lpta_loadp_setscan_l(v16, v17, v18))
    {
      LODWORD(v19) = 0;
      while (2)
      {
        savescptr(v2, 2, &v91);
        v20 = OUTLINED_FUNCTION_29_18();
        bspush_ca_scan(v20, v21);
        v22 = v19;
LABEL_7:
        if (test_synch(v2, 4, 1, &_MergedGlobals_27) || lpta_loadp_setscan_r(v2, &v91, 2) || (v23 = OUTLINED_FUNCTION_16_26(), testFldeq(v23, v24, v25, 3)) || advance_tok(v2, v26, v27, v28) || (v29 = OUTLINED_FUNCTION_16_26(), testFldeq(v29, v30, v31, 10)) || advance_tok(v2, v32, v33, v34))
        {
          v35 = v22;
LABEL_14:
          v36 = v2[13];
          if (v36)
          {
            v37 = OUTLINED_FUNCTION_34_15(v36);
            v19 = v38;
          }

          else
          {
            v37 = vback(v2, v35);
            v19 = 0;
          }

          v22 = v19;
          switch(v37)
          {
            case 2:
              continue;
            case 3:
              v39 = OUTLINED_FUNCTION_62_7();
              bspush_ca_scan(v39, v40);
              goto LABEL_27;
            case 4:
              goto LABEL_7;
            case 5:
              v41 = OUTLINED_FUNCTION_31_17();
              v43 = npush_fld(v41, v42, 5u);
              v35 = v19;
              if (v43)
              {
                goto LABEL_14;
              }

              OUTLINED_FUNCTION_65_7(v43, v19, v44, v45, v46, v47, v48, v49);
              v57 = if_testgt(v2, v50, v51, v52, v53, v54, v55, v56);
              v35 = v19;
              if (v57)
              {
                goto LABEL_14;
              }

              v58 = 5;
              goto LABEL_23;
            case 6:
              goto LABEL_27;
            case 7:
            case 9:
              bspop_boa(v2);
              v58 = 10;
              goto LABEL_23;
            case 8:
              bspop_boa(v2);
              v65 = advance_tok(v2, v62, v63, v64);
              v35 = v19;
              if (v65)
              {
                goto LABEL_14;
              }

LABEL_27:
              v66 = OUTLINED_FUNCTION_31_17();
              v68 = npush_fld(v66, v67, 5u);
              v35 = v19;
              if (!v68)
              {
                OUTLINED_FUNCTION_65_7(v68, v19, v69, v70, v71, v72, v73, v74);
                v82 = if_testgt(v2, v75, v76, v77, v78, v79, v80, v81);
                v35 = v19;
                if (!v82)
                {
                  v58 = 5;
LABEL_23:
                  bspush_ca_scan_boa();
                  v59 = OUTLINED_FUNCTION_16_26();
                  if (testFldeq(v59, v60, v61, v58))
                  {
                    v35 = v19;
                  }

                  else
                  {
                    v35 = 1;
                  }
                }
              }

              goto LABEL_14;
            case 10:
              bspop_boa(v2);
              v86 = advance_tok(v2, v83, v84, v85);
              v22 = v19;
              v35 = v19;
              if (!v86)
              {
                goto LABEL_7;
              }

              goto LABEL_14;
            default:
              goto LABEL_4;
          }
        }

        break;
      }
    }
  }

LABEL_4:
  vretproc(v2);
  OUTLINED_FUNCTION_71_7();
}

void adjust_por_word_stress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_22_22();
  v110 = *MEMORY[0x277D85DE8];
  v105[0] = 0;
  v105[1] = 0;
  v104[0] = 0;
  v104[1] = 0;
  v103 = 0;
  v102[0] = 0;
  v102[1] = 0;
  v101[0] = 0;
  v101[1] = 0;
  v100[0] = 0;
  v100[1] = 0;
  v99[0] = 0;
  v99[1] = 0;
  v98[0] = 0;
  v98[1] = 0;
  v97[0] = 0;
  v97[1] = 0;
  v96[0] = 0;
  v96[1] = 0;
  v95 = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(v94, v4);
  OUTLINED_FUNCTION_32_16();
  bzero(v109, v5);
  if (!setjmp(v109) && !ventproc(v3, v94, v108, v107, v106, v109))
  {
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_20_22();
    LOWORD(v103) = -4;
    v6 = OUTLINED_FUNCTION_63_7();
    push_ptr_init(v6, v7);
    push_ptr_init(v3, v101);
    v8 = OUTLINED_FUNCTION_68_7();
    push_ptr_init(v8, v9);
    v10 = OUTLINED_FUNCTION_78_7();
    push_ptr_init(v10, v11);
    push_ptr_init(v3, v98);
    v12 = OUTLINED_FUNCTION_43_9();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_62_7();
    v16 = push_ptr_init(v14, v15);
    v95 = 65532;
    OUTLINED_FUNCTION_73_7(v16, v17, &null_str_9);
    HIWORD(v103) = 0;
    startloop(v3, 1);
    v18 = OUTLINED_FUNCTION_29_18();
    lpta_loadpn(v18, v19);
    OUTLINED_FUNCTION_49_8();
    lpta_mover();
    v20 = OUTLINED_FUNCTION_63_7();
    lpta_storep(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_26_21();
    lpta_loadpn(v23, v24);
    OUTLINED_FUNCTION_49_8();
    lpta_mover();
    v25 = OUTLINED_FUNCTION_68_7();
    lpta_storep(v25, v26, v27);
    while (1)
    {
LABEL_5:
      if (forall_to_test(v3, v102, v100))
      {
        goto LABEL_8;
      }

LABEL_6:
      bspush_ca(v3);
      if (lpta_loadp_setscan_r(v3, v102, 2) || advance_tok(v3, v28, v29, v30))
      {
        break;
      }

LABEL_27:
      savescptr(v3, 4, v101);
LABEL_28:
      v72 = OUTLINED_FUNCTION_15_27();
      if (upgrade_wh_word(v72, v73, v74, v105, &v103))
      {
LABEL_29:
        v75 = OUTLINED_FUNCTION_15_27();
        if (upgrade_misc(v75))
        {
LABEL_30:
          v76 = OUTLINED_FUNCTION_15_27();
          if (destress_postnuclear_expr(v76))
          {
LABEL_31:
            v77 = OUTLINED_FUNCTION_15_27();
            if (destress_adverbs(v77))
            {
LABEL_32:
              v78 = OUTLINED_FUNCTION_15_27();
              destress_verbs(v78, v79, v80);
              if (v81)
              {
LABEL_33:
                v82 = OUTLINED_FUNCTION_15_27();
                destress_proper_names(v82, v83, v84);
                if (v85)
                {
LABEL_34:
                  v86 = OUTLINED_FUNCTION_15_27();
                  if (destress_numbers(v86, v87, v88))
                  {
LABEL_35:
                    v89 = OUTLINED_FUNCTION_15_27();
                    if (destress_compounds(v89))
                    {
LABEL_36:
                      v90 = OUTLINED_FUNCTION_15_27();
                      destress_nps(v90, v91, v92);
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_37:
      lpta_loadpn(v3, v101);
      OUTLINED_FUNCTION_49_8();
      lpta_mover();
      lpta_storep(v3, v99, v93);
      forall_cont_from();
    }

    while (1)
    {
LABEL_8:
      v31 = v3[13];
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_34_15(v31);
      }

      else
      {
        v33 = OUTLINED_FUNCTION_31_17();
        v32 = vback(v33, v34);
      }

      switch(v32)
      {
        case 1:
          goto LABEL_13;
        case 2:
          goto LABEL_28;
        case 3:
          if (forto_adv_upto_r(v3, 1, 2, 15, 2, v102))
          {
            continue;
          }

LABEL_13:
          starttest(v3, 16);
          v35 = OUTLINED_FUNCTION_26_21();
          if (lpta_loadp_setscan_l(v35, v36, 2))
          {
            goto LABEL_3;
          }

          v37 = OUTLINED_FUNCTION_49_8();
          if (npush_fld(v37, v38, 5u))
          {
            continue;
          }

          npush_i(v3);
          if (if_testgt(v3, v39, v40, v41, v42, v43, v44, v45) || advance_tok(v3, v46, v47, v48))
          {
            continue;
          }

LABEL_17:
          savescptr(v3, 17, v96);
          if (advanc(v3))
          {
            continue;
          }

LABEL_18:
          v49 = OUTLINED_FUNCTION_29_18();
          savescptr(v49, v50, v97);
          if (advance_tok(v3, v51, v52, v53))
          {
            continue;
          }

LABEL_19:
          v54 = OUTLINED_FUNCTION_81_6();
          savescptr(v54, v55, v98);
          v56 = OUTLINED_FUNCTION_63_7();
          if (!followed_by_hyphen(v56))
          {
            goto LABEL_3;
          }

LABEL_20:
          v57 = OUTLINED_FUNCTION_62_7();
          is_postnuclear_expr(v57, v58, v104);
          if (v59)
          {
LABEL_21:
            v60 = OUTLINED_FUNCTION_19_23();
            starttest(v60, v61);
            v62 = OUTLINED_FUNCTION_68_7();
            move_i(v62, v63, 1);
            v64 = OUTLINED_FUNCTION_62_7();
            if (!mark_word_stress(v64))
            {
              goto LABEL_3;
            }
          }

          else
          {
            starttest_l(v3, 22);
            v65 = OUTLINED_FUNCTION_62_7();
            if (lpta_loadp_setscan_r(v65, v66, 2))
            {
              goto LABEL_3;
            }

            v67 = OUTLINED_FUNCTION_49_8();
            if (!testFldeq(v67, v68, 3, 25) && !advance_tok(v3, v69, v70, v71))
            {
              mark_word_stress(v3);
              goto LABEL_3;
            }
          }

          break;
        case 4:
          goto LABEL_27;
        case 5:
          goto LABEL_29;
        case 6:
          goto LABEL_37;
        case 7:
          goto LABEL_30;
        case 8:
          goto LABEL_31;
        case 9:
          goto LABEL_32;
        case 10:
          goto LABEL_33;
        case 11:
          goto LABEL_34;
        case 12:
          goto LABEL_35;
        case 13:
          goto LABEL_36;
        case 14:
          goto LABEL_5;
        case 15:
          goto LABEL_6;
        case 17:
          goto LABEL_17;
        case 18:
          goto LABEL_18;
        case 19:
          goto LABEL_19;
        case 20:
          goto LABEL_20;
        case 21:
          goto LABEL_21;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_71_7();
}

uint64_t upgrade_wh_word(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, __int16 *a5)
{
  v170 = *MEMORY[0x277D85DE8];
  v165[0] = 0;
  v165[1] = 0;
  v163 = 0;
  v164 = 0;
  v161 = 0;
  v162 = 0;
  v160 = 0;
  v159[0] = 0;
  v159[1] = 0;
  v157 = 0;
  v158 = 0;
  v155 = 0u;
  v156 = 0u;
  HIDWORD(v154) = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v131, v9);
  OUTLINED_FUNCTION_32_16();
  bzero(v169, v10);
  if (setjmp(v169) || ventproc(a1, &v131, v168, v167, v166, v169))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_78_7();
  get_parm(v12, v13, a2, -6);
  v14 = OUTLINED_FUNCTION_51_8();
  get_parm(v14, v15, v16, -6);
  v17 = OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_89_5(v17, v18);
  get_parm(a1, &v160, a5, -4);
  push_ptr_init(a1, v159);
  v19 = push_ptr_init(a1, &v157);
  *&v156 = 0;
  *(&v156 + 6) = 0;
  HIDWORD(v154) = 65532;
  LODWORD(v155) = -65532;
  v20 = 0;
  OUTLINED_FUNCTION_73_7(v19, v21, &null_str_9);
  v22 = OUTLINED_FUNCTION_49_8();
  fence_30(v22, v23, v24);
  OUTLINED_FUNCTION_98_3();
  if (lpta_loadp_setscan_l(a1, a1 + 1432, 5))
  {
LABEL_5:
    if (SHIWORD(v160) >= 1)
    {
LABEL_3:
      vretproc(a1);
      return 94;
    }

LABEL_45:
    v115 = OUTLINED_FUNCTION_43_9();
    lpta_loadpn(v115, v116);
    v117 = OUTLINED_FUNCTION_79_7();
    rpta_loadpn(v117, v118);
    if (!compare_ptas(a1) && !testneq(a1))
    {
      goto LABEL_3;
    }

LABEL_47:
    v119 = OUTLINED_FUNCTION_19_23();
    starttest(v119, v120);
    v121 = OUTLINED_FUNCTION_21_22();
    if (lpta_loadp_setscan_r(v121, v122, v123))
    {
LABEL_48:
      v124 = OUTLINED_FUNCTION_19_23();
      starttest(v124, v125);
      OUTLINED_FUNCTION_19_23();
      bspush_ca_boa();
      v126 = OUTLINED_FUNCTION_43_9();
      v127 = isit_por_WH(v126);
    }

    else
    {
      OUTLINED_FUNCTION_19_23();
      bspush_ca_scan_boa();
      v128 = OUTLINED_FUNCTION_3_31();
      v127 = testFldeq(v128, v129, v130, 33);
    }

    if (v127)
    {
      v28 = v20;
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_23();
    bspush_ca_scan_boa();
    v25 = OUTLINED_FUNCTION_50_8();
    v28 = !testFldeq(v25, v26, v27, 9);
  }

  while (2)
  {
    v29 = *(a1 + 104);
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_34_15(v29);
      v32 = v31;
    }

    else
    {
      v30 = vback(a1, v28);
      v32 = 0;
    }

    switch(v30)
    {
      case 1:
        v20 = v32;
        goto LABEL_5;
      case 2:
      case 7:
        bspop_boa(a1);
        v36 = advance_tok(a1, v33, v34, v35);
        v28 = v32;
        if (!v36)
        {
          goto LABEL_3;
        }

        continue;
      case 3:
        goto LABEL_29;
      case 4:
        v20 = v32;
        goto LABEL_45;
      case 5:
        v20 = v32;
        goto LABEL_47;
      case 6:
        v20 = v32;
        goto LABEL_48;
      case 8:
        v37 = OUTLINED_FUNCTION_19_23();
        starttest(v37, v38);
        v39 = OUTLINED_FUNCTION_13_29();
        if (lpta_loadp_setscan_l(v39, v40, v41))
        {
          goto LABEL_15;
        }

        goto LABEL_31;
      case 9:
        bspop_boa(a1);
        goto LABEL_3;
      case 10:
LABEL_15:
        v42 = OUTLINED_FUNCTION_19_23();
        starttest(v42, v43);
        v44 = OUTLINED_FUNCTION_13_29();
        if (lpta_loadp_setscan_l(v44, v45, v46))
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      case 11:
LABEL_31:
        OUTLINED_FUNCTION_70_7(11, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1), v156, *(&v156 + 1), v157, v158, v159[0]);
        v89 = advance_tok(a1, v86, v87, v88);
        v28 = v32;
        if (!v89)
        {
          v90 = OUTLINED_FUNCTION_21_22();
          v93 = lpta_loadp_setscan_r(v90, v91, v92);
          v28 = v32;
          if (!v93)
          {
            v94 = advanc(a1);
            v28 = v32;
            if (!v94)
            {
              goto LABEL_34;
            }
          }
        }

        continue;
      case 12:
LABEL_34:
        savescptr(a1, 12, v165);
        v95 = OUTLINED_FUNCTION_3_31();
        v98 = testFldeq(v95, v96, v97, 18);
        v28 = v32;
        if (!v98)
        {
          v99 = OUTLINED_FUNCTION_6_30();
          v102 = testFldeq(v99, v100, v101, 5);
          v28 = v32;
          if (!v102)
          {
            v103 = OUTLINED_FUNCTION_18_24();
            v105 = testFldeq(v103, v104, 4, 1);
            v28 = v32;
            if (!v105)
            {
              v108 = advance_tok(a1, v32, v106, v107);
              v28 = v32;
              if (!v108)
              {
                goto LABEL_38;
              }
            }
          }
        }

        continue;
      case 13:
LABEL_38:
        savescptr(a1, 13, &v163);
        v109 = OUTLINED_FUNCTION_3_31();
        v112 = testFldeq(v109, v110, v111, 33);
        v28 = v32;
        if (v112)
        {
          continue;
        }

        v54 = advance_tok(a1, v32, v113, v114);
        goto LABEL_40;
      case 14:
LABEL_16:
        v47 = OUTLINED_FUNCTION_19_23();
        starttest(v47, v48);
        v49 = OUTLINED_FUNCTION_78_7();
        if (!lpta_loadp_setscan_r(v49, v50, 4) && !test_string_s())
        {
          goto LABEL_18;
        }

        goto LABEL_29;
      case 15:
LABEL_21:
        OUTLINED_FUNCTION_70_7(15, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1), v156, *(&v156 + 1), v157, v158, v159[0]);
        v58 = advance_tok(a1, v55, v56, v57);
        v28 = v32;
        if (!v58)
        {
          v59 = OUTLINED_FUNCTION_4_30();
          v62 = testFldeq(v59, v60, v61, 9);
          v28 = v32;
          if (!v62)
          {
            v65 = advance_tok(a1, v32, v63, v64);
            v28 = v32;
            if (!v65)
            {
              v66 = OUTLINED_FUNCTION_21_22();
              v69 = lpta_loadp_setscan_r(v66, v67, v68);
              v28 = v32;
              if (!v69)
              {
                v70 = advanc(a1);
                v28 = v32;
                if (!v70)
                {
                  goto LABEL_26;
                }
              }
            }
          }
        }

        continue;
      case 16:
LABEL_26:
        OUTLINED_FUNCTION_48_9();
        savescptr(a1, v71, v165);
        v72 = OUTLINED_FUNCTION_4_30();
        v75 = testFldeq(v72, v73, v74, 8);
        v28 = v32;
        if (!v75)
        {
          v78 = advance_tok(a1, v32, v76, v77);
          v28 = v32;
          if (!v78)
          {
            goto LABEL_28;
          }
        }

        continue;
      case 17:
LABEL_28:
        OUTLINED_FUNCTION_61_8();
        savescptr(a1, v79, &v163);
        goto LABEL_29;
      case 18:
LABEL_18:
        savescptr(a1, 18, &v157);
        v51 = test_string_s();
        v28 = v32;
        if (v51)
        {
          continue;
        }

        *(a1 + 136) = 1;
        v53 = OUTLINED_FUNCTION_69_7(v51, v32, v52);
        v28 = v32;
        if (v53)
        {
          continue;
        }

        lpta_rpta_loadp(a1, &v157, &v163);
        OUTLINED_FUNCTION_29_18();
        settvar_s();
        insert_2ptv();
LABEL_40:
        v28 = v32;
        if (v54)
        {
          continue;
        }

LABEL_29:
        v80 = OUTLINED_FUNCTION_19_23();
        starttest(v80, v81);
        v82 = OUTLINED_FUNCTION_29_18();
        move_i(v82, v83, 1);
        v84 = OUTLINED_FUNCTION_78_7();
        v85 = mark_word_stress(v84);
        v28 = v32;
        if (v85)
        {
          continue;
        }

LABEL_42:
        HIWORD(v160) = 1;
        *(a3 + 8) = v164;
        a5[1] = 1;
        vretproc(a1);
        result = 0;
        break;
      case 19:
        goto LABEL_42;
      default:
        goto LABEL_3;
    }

    return result;
  }
}

uint64_t upgrade_misc(uint64_t a1)
{
  OUTLINED_FUNCTION_22_22();
  v543 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_92_4();
  v538 = 65532;
  v537[0] = 0;
  v537[1] = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v514, v4);
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_100_2(v5, v6);
  v7 = setjmp(v3);
  if (v7 || OUTLINED_FUNCTION_87_5(v7, &v514, v542, v541, v540))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_27_19();
  v9 = OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_64_7(v9, v10);
  v11 = push_ptr_init(v1, v537);
  v12 = 0;
  OUTLINED_FUNCTION_73_7(v11, v13, &null_str_9);
  v14 = OUTLINED_FUNCTION_49_8();
  fence_30(v14, v15, v16);
  HIWORD(v538) = *(v1 + 3070);
  OUTLINED_FUNCTION_98_3();
  v17 = OUTLINED_FUNCTION_29_18();
  if (!lpta_loadp_setscan_r(v17, v18, 2))
  {
    v37 = OUTLINED_FUNCTION_18_24();
    if (npush_fld(v37, v38, 5u) || (npush_v(v1, (v1 + 3064), v39, v40, v41, v42, v43, v44), if_testlt(v1, v45, v46, v47, v48, v49, v50, v51)) || advance_tok(v1, v52, v53, v54))
    {
      LODWORD(v33) = 0;
      goto LABEL_59;
    }

    goto LABEL_3;
  }

  while (2)
  {
    v19 = OUTLINED_FUNCTION_19_23();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_8_30();
    v24 = lpta_loadp_setscan_l(v21, v22, v23);
    v25 = v12;
    if (!v24)
    {
LABEL_6:
      OUTLINED_FUNCTION_40_10();
      savescptr(v1, v26, v537);
      v27 = OUTLINED_FUNCTION_19_23();
      bspush_ca_scan(v27, v28);
      v29 = OUTLINED_FUNCTION_4_30();
      v32 = 3;
LABEL_7:
      testFldeq(v29, v30, v31, v32);
      OUTLINED_FUNCTION_72_7();
      if (v36)
      {
        goto LABEL_59;
      }

LABEL_8:
      LODWORD(v12) = v34;
      if (advance_tok(v1, v33, v34, v35))
      {
        goto LABEL_148;
      }

LABEL_14:
      v55 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v55, v56, v57))
      {
        v58 = OUTLINED_FUNCTION_4_30();
        if (!testFldeq(v58, v59, v60, 8))
        {
          v61 = OUTLINED_FUNCTION_18_24();
          if (!npush_fld(v61, v62, 5u))
          {
            v63 = OUTLINED_FUNCTION_47_9();
            npush_i(v63);
LABEL_18:
            if (!if_testeq(v1, v64, v65, v66, v67, v68, v69, v70))
            {
              goto LABEL_111;
            }
          }
        }
      }

LABEL_148:
      LODWORD(v33) = v12;
      goto LABEL_59;
    }

LABEL_21:
    v12 = v25;
    v71 = OUTLINED_FUNCTION_19_23();
    starttest(v71, v72);
    v73 = OUTLINED_FUNCTION_8_30();
    if (!lpta_loadp_setscan_r(v73, v74, v75))
    {
      v164 = OUTLINED_FUNCTION_4_30();
      if (testFldeq(v164, v165, v166, 8))
      {
        goto LABEL_148;
      }

      v167 = OUTLINED_FUNCTION_18_24();
      if (npush_fld(v167, v168, 5u))
      {
        goto LABEL_148;
      }

      v169 = OUTLINED_FUNCTION_47_9();
      npush_i(v169);
      if (if_testeq(v1, v170, v171, v172, v173, v174, v175, v176) || advance_tok(v1, v177, v178, v179))
      {
        goto LABEL_148;
      }

      v180 = OUTLINED_FUNCTION_19_23();
      bspush_ca_scan(v180, v181);
      v182 = v12;
LABEL_41:
      v183 = v182;
      v184 = OUTLINED_FUNCTION_19_23();
      bspush_ca_scan(v184, v185);
      v186 = v183;
LABEL_42:
      v12 = v186;
      v187 = OUTLINED_FUNCTION_19_23();
      bspush_ca_scan(v187, v188);
      v189 = OUTLINED_FUNCTION_4_30();
      v192 = 3;
LABEL_121:
      v416 = testFldeq(v189, v190, v191, v192);
      v35 = v12;
      v33 = v12;
      if (v416)
      {
        goto LABEL_59;
      }

LABEL_122:
      LODWORD(v12) = v35;
      goto LABEL_111;
    }

LABEL_22:
    v76 = OUTLINED_FUNCTION_19_23();
    starttest(v76, v77);
    v78 = OUTLINED_FUNCTION_8_30();
    if (lpta_loadp_setscan_r(v78, v79, v80))
    {
LABEL_23:
      v81 = OUTLINED_FUNCTION_19_23();
      starttest(v81, v82);
      v83 = OUTLINED_FUNCTION_8_30();
      v86 = lpta_loadp_setscan_l(v83, v84, v85);
      v87 = v12;
      if (!v86)
      {
LABEL_114:
        OUTLINED_FUNCTION_45_9(22, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537[0]);
LABEL_115:
        v409 = OUTLINED_FUNCTION_19_23();
        if (test_synch(v409, v410, 1, v411))
        {
          goto LABEL_148;
        }

        goto LABEL_14;
      }

LABEL_24:
      v12 = v87;
      v88 = OUTLINED_FUNCTION_19_23();
      starttest(v88, v89);
      v90 = OUTLINED_FUNCTION_8_30();
      if (!lpta_loadp_setscan_r(v90, v91, v92))
      {
        v228 = OUTLINED_FUNCTION_18_24();
        v230 = npush_fld(v228, v229, 5u);
        if (v230)
        {
          goto LABEL_148;
        }

        OUTLINED_FUNCTION_65_7(v230, v231, v232, v233, v234, v235, v236, v237);
        if (if_testgt(v1, v238, v239, v240, v241, v242, v243, v244))
        {
          goto LABEL_148;
        }

        v245 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v245, v246, v247, 24))
        {
          goto LABEL_148;
        }

        if (advance_tok(v1, v248, v249, v250))
        {
          goto LABEL_148;
        }

        v251 = OUTLINED_FUNCTION_18_24();
        if (npush_fld(v251, v252, 5u))
        {
          goto LABEL_148;
        }

        npush_v(v1, (v1 + 3064), v253, v254, v255, v256, v257, v258);
        if (if_testgt(v1, v259, v260, v261, v262, v263, v264, v265))
        {
          goto LABEL_148;
        }

        goto LABEL_111;
      }

LABEL_25:
      v93 = OUTLINED_FUNCTION_19_23();
      starttest(v93, v94);
      v95 = OUTLINED_FUNCTION_8_30();
      v98 = lpta_loadp_setscan_l(v95, v96, v97);
      v99 = v12;
      if (v98)
      {
LABEL_26:
        v100 = v99;
        v101 = OUTLINED_FUNCTION_19_23();
        starttest(v101, v102);
        v103 = OUTLINED_FUNCTION_8_30();
        v106 = lpta_loadp_setscan_l(v103, v104, v105);
        LODWORD(v12) = v100;
        v107 = v100;
        if (v106)
        {
LABEL_27:
          v108 = v107;
          v109 = OUTLINED_FUNCTION_19_23();
          starttest(v109, v110);
          v111 = OUTLINED_FUNCTION_8_30();
          v114 = lpta_loadp_setscan_l(v111, v112, v113);
          v12 = v108;
          v115 = v108;
          if (!v114)
          {
LABEL_131:
            OUTLINED_FUNCTION_45_9(36, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537[0]);
            v451 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v451, v452);
            v453 = OUTLINED_FUNCTION_1_32();
            v457 = testFldeq(v453, v454, v455, v456);
            v33 = v12;
            v268 = v12;
            if (v457)
            {
              goto LABEL_59;
            }

LABEL_132:
            v12 = v268;
            if (advance_tok(v1, v33, v34, v35))
            {
              goto LABEL_148;
            }

            v458 = OUTLINED_FUNCTION_21_22();
            if (lpta_loadp_setscan_r(v458, v459, v460))
            {
              goto LABEL_148;
            }

            v461 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v461, v462);
            v463 = OUTLINED_FUNCTION_3_31();
            v466 = testFldeq(v463, v464, v465, 3);
            v33 = v12;
            v269 = v12;
            if (v466)
            {
              goto LABEL_59;
            }

LABEL_135:
            LODWORD(v12) = v269;
            if (advance_tok(v1, v33, v34, v35))
            {
              goto LABEL_148;
            }

            v467 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v467, v468);
            v469 = OUTLINED_FUNCTION_18_24();
            v471 = npush_fld(v469, v470, 5u);
            if (v471)
            {
              goto LABEL_148;
            }

            OUTLINED_FUNCTION_77_7(v471, v472, v473, v474, v475, v476, v477, v478);
            goto LABEL_18;
          }

LABEL_28:
          v116 = v115;
          v117 = OUTLINED_FUNCTION_19_23();
          starttest(v117, v118);
          v119 = OUTLINED_FUNCTION_8_30();
          v122 = lpta_loadp_setscan_l(v119, v120, v121);
          LODWORD(v12) = v116;
          v123 = v116;
          if (v122)
          {
LABEL_29:
            v124 = v123;
            v125 = OUTLINED_FUNCTION_19_23();
            starttest(v125, v126);
            v127 = OUTLINED_FUNCTION_8_30();
            v130 = lpta_loadp_setscan_l(v127, v128, v129);
            v12 = v124;
            v131 = v124;
            if (!v130)
            {
LABEL_143:
              OUTLINED_FUNCTION_45_9(52, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537[0]);
              v491 = OUTLINED_FUNCTION_6_30();
              if (!testFldeq(v491, v492, v493, 1) && !advance_tok(v1, v494, v495, v496))
              {
                v497 = OUTLINED_FUNCTION_21_22();
                if (!lpta_loadp_setscan_r(v497, v498, v499))
                {
                  v500 = OUTLINED_FUNCTION_3_31();
                  if (!testFldeq(v500, v501, v502, 26) && !advance_tok(v1, v503, v504, v505))
                  {
                    v506 = OUTLINED_FUNCTION_19_23();
                    bspush_ca_scan(v506, v507);
                    v508 = OUTLINED_FUNCTION_1_32();
                    v512 = testFldeq(v508, v509, v510, v511);
                    v33 = v12;
                    v270 = v12;
                    if (!v512)
                    {
LABEL_156:
                      LODWORD(v12) = v270;
                      goto LABEL_111;
                    }

LABEL_59:
                    v266 = *(v1 + 104);
                    if (v266)
                    {
                      v267 = OUTLINED_FUNCTION_34_15(v266);
                      v12 = v33;
                    }

                    else
                    {
                      v267 = vback(v1, v33);
                      v12 = 0;
                    }

                    v34 = v12;
                    v182 = v12;
                    v186 = v12;
                    v35 = v12;
                    v219 = v12;
                    v223 = v12;
                    v268 = v12;
                    v269 = v12;
                    v270 = v12;
                    switch(v267)
                    {
                      case 1:
                        continue;
                      case 2:
                      case 42:
                        goto LABEL_112;
                      case 3:
                        v25 = v12;
                        goto LABEL_21;
                      case 4:
                        goto LABEL_6;
                      case 5:
                        v412 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v412, v413);
                        v29 = OUTLINED_FUNCTION_4_30();
                        v32 = 11;
                        goto LABEL_7;
                      case 6:
                        goto LABEL_8;
                      case 7:
                        v29 = OUTLINED_FUNCTION_6_30();
                        v32 = 6;
                        goto LABEL_7;
                      case 8:
                        goto LABEL_22;
                      case 9:
                        v271 = OUTLINED_FUNCTION_4_30();
                        v274 = testFldeq(v271, v272, v273, 1);
                        LODWORD(v33) = v12;
                        if (!v274)
                        {
                          v277 = advance_tok(v1, v12, v275, v276);
                          v182 = v12;
                          LODWORD(v33) = v12;
                          if (!v277)
                          {
                            goto LABEL_41;
                          }
                        }

                        goto LABEL_59;
                      case 10:
                        goto LABEL_41;
                      case 11:
                        v329 = OUTLINED_FUNCTION_3_31();
                        v332 = testFldeq(v329, v330, v331, 10);
                        LODWORD(v33) = v12;
                        if (!v332)
                        {
                          v335 = advance_tok(v1, v12, v333, v334);
                          v186 = v12;
                          LODWORD(v33) = v12;
                          if (!v335)
                          {
                            goto LABEL_42;
                          }
                        }

                        goto LABEL_59;
                      case 12:
                        goto LABEL_42;
                      case 13:
                        v414 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v414, v415);
                        v189 = OUTLINED_FUNCTION_4_30();
                        v192 = 11;
                        goto LABEL_121;
                      case 14:
                        goto LABEL_122;
                      case 15:
                        v189 = OUTLINED_FUNCTION_6_30();
                        v192 = 6;
                        goto LABEL_121;
                      case 16:
                        goto LABEL_23;
                      case 17:
                        v322 = OUTLINED_FUNCTION_4_30();
                        v325 = testFldeq(v322, v323, v324, 1);
                        LODWORD(v33) = v12;
                        if (!v325)
                        {
                          v328 = advance_tok(v1, v12, v326, v327);
                          v219 = v12;
                          LODWORD(v33) = v12;
                          if (!v328)
                          {
                            goto LABEL_48;
                          }
                        }

                        goto LABEL_59;
                      case 18:
                        goto LABEL_48;
                      case 19:
                        v347 = OUTLINED_FUNCTION_3_31();
                        v350 = testFldeq(v347, v348, v349, 10);
                        LODWORD(v33) = v12;
                        if (!v350)
                        {
                          v353 = advance_tok(v1, v12, v351, v352);
                          v223 = v12;
                          LODWORD(v33) = v12;
                          if (!v353)
                          {
                            goto LABEL_49;
                          }
                        }

                        goto LABEL_59;
                      case 20:
                        goto LABEL_49;
                      case 21:
                        v87 = v12;
                        goto LABEL_24;
                      case 22:
                        goto LABEL_114;
                      case 23:
                        goto LABEL_115;
                      case 24:
                        goto LABEL_25;
                      case 25:
                        v99 = v12;
                        goto LABEL_26;
                      case 26:
                        goto LABEL_125;
                      case 27:
                        bspop_boa(v1);
                        v293 = advance_tok(v1, v290, v291, v292);
                        LODWORD(v33) = v12;
                        if (!v293)
                        {
                          v294 = OUTLINED_FUNCTION_21_22();
                          v297 = lpta_loadp_setscan_r(v294, v295, v296);
                          LODWORD(v33) = v12;
                          if (!v297)
                          {
                            v298 = OUTLINED_FUNCTION_3_31();
                            v301 = testFldeq(v298, v299, v300, 14);
                            LODWORD(v33) = v12;
                            if (!v301)
                            {
                              v304 = advance_tok(v1, v12, v302, v303);
                              LODWORD(v33) = v12;
                              if (!v304)
                              {
                                v305 = OUTLINED_FUNCTION_18_24();
                                v307 = npush_fld(v305, v306, 5u);
                                LODWORD(v33) = v12;
                                if (!v307)
                                {
                                  OUTLINED_FUNCTION_77_7(v307, v12, v308, v309, v310, v311, v312, v313);
                                  v321 = if_testeq(v1, v314, v315, v316, v317, v318, v319, v320);
                                  LODWORD(v33) = v12;
                                  if (!v321)
                                  {
                                    goto LABEL_130;
                                  }
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_59;
                      case 28:
                      case 33:
                        bspop_boa(v1);
                        OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan_boa();
                        v160 = OUTLINED_FUNCTION_4_30();
                        v163 = 9;
                        goto LABEL_124;
                      case 29:
                      case 34:
                        bspop_boa(v1);
                        goto LABEL_111;
                      case 30:
                        v107 = v12;
                        goto LABEL_27;
                      case 31:
                        goto LABEL_128;
                      case 32:
                        bspop_boa(v1);
                        v365 = advance_tok(v1, v362, v363, v364);
                        LODWORD(v33) = v12;
                        if (!v365)
                        {
                          v366 = OUTLINED_FUNCTION_21_22();
                          v369 = lpta_loadp_setscan_r(v366, v367, v368);
                          LODWORD(v33) = v12;
                          if (!v369)
                          {
                            v370 = OUTLINED_FUNCTION_3_31();
                            v373 = testFldeq(v370, v371, v372, 18);
                            LODWORD(v33) = v12;
                            if (!v373)
                            {
                              v376 = advance_tok(v1, v12, v374, v375);
                              LODWORD(v33) = v12;
                              if (!v376)
                              {
                                v377 = OUTLINED_FUNCTION_18_24();
                                v379 = npush_fld(v377, v378, 5u);
                                LODWORD(v33) = v12;
                                if (!v379)
                                {
                                  OUTLINED_FUNCTION_77_7(v379, v12, v380, v381, v382, v383, v384, v385);
                                  v393 = if_testeq(v1, v386, v387, v388, v389, v390, v391, v392);
                                  LODWORD(v33) = v12;
                                  if (!v393)
                                  {
                                    goto LABEL_130;
                                  }
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_59;
                      case 35:
                        v115 = v12;
                        goto LABEL_28;
                      case 36:
                        goto LABEL_131;
                      case 37:
                        v286 = OUTLINED_FUNCTION_6_30();
                        testFldeq(v286, v287, v288, 1);
                        OUTLINED_FUNCTION_96_4();
                        if (!v289)
                        {
                          goto LABEL_132;
                        }

                        goto LABEL_59;
                      case 38:
                        goto LABEL_132;
                      case 39:
                        v354 = OUTLINED_FUNCTION_6_30();
                        v357 = testFldeq(v354, v355, v356, 2);
                        LODWORD(v33) = v12;
                        if (!v357)
                        {
                          v358 = OUTLINED_FUNCTION_3_31();
                          v361 = testFldeq(v358, v359, v360, 4);
                          v269 = v12;
                          v33 = v12;
                          if (!v361)
                          {
                            goto LABEL_135;
                          }
                        }

                        goto LABEL_59;
                      case 40:
                        goto LABEL_135;
                      case 41:
                        v336 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v336, v337);
                        goto LABEL_86;
                      case 43:
                        v394 = OUTLINED_FUNCTION_4_30();
                        v397 = testFldeq(v394, v395, v396, 1);
                        LODWORD(v33) = v12;
                        if (v397)
                        {
                          goto LABEL_59;
                        }

                        v400 = advance_tok(v1, v12, v398, v399);
                        LODWORD(v33) = v12;
                        if (v400)
                        {
                          goto LABEL_59;
                        }

                        goto LABEL_86;
                      case 44:
LABEL_86:
                        v338 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v338, v339);
                        goto LABEL_87;
                      case 45:
                        v401 = OUTLINED_FUNCTION_3_31();
                        v404 = testFldeq(v401, v402, v403, 10);
                        LODWORD(v33) = v12;
                        if (v404)
                        {
                          goto LABEL_59;
                        }

                        v407 = advance_tok(v1, v12, v405, v406);
                        LODWORD(v33) = v12;
                        if (v407)
                        {
                          goto LABEL_59;
                        }

                        goto LABEL_87;
                      case 46:
LABEL_87:
                        v340 = OUTLINED_FUNCTION_19_23();
                        bspush_ca_scan(v340, v341);
                        v342 = OUTLINED_FUNCTION_4_30();
                        v345 = 4;
                        goto LABEL_89;
                      case 47:
                        v342 = OUTLINED_FUNCTION_4_30();
                        v345 = 3;
LABEL_89:
                        v346 = testFldeq(v342, v343, v344, v345);
                        v33 = v12;
                        if (!v346)
                        {
                          goto LABEL_111;
                        }

                        goto LABEL_59;
                      case 48:
                        goto LABEL_111;
                      case 49:
                        v123 = v12;
                        goto LABEL_29;
                      case 50:
                        goto LABEL_138;
                      case 51:
                        v131 = v12;
                        goto LABEL_30;
                      case 52:
                        goto LABEL_143;
                      case 53:
                        v278 = OUTLINED_FUNCTION_4_30();
                        v281 = testFldeq(v278, v279, v280, 11);
                        v270 = v12;
                        v33 = v12;
                        if (!v281)
                        {
                          goto LABEL_156;
                        }

                        goto LABEL_59;
                      case 54:
                        goto LABEL_156;
                      case 56:
                        bspop_boa(v1);
                        v285 = advance_tok(v1, v282, v283, v284);
                        LODWORD(v33) = v12;
                        if (v285)
                        {
                          goto LABEL_59;
                        }

                        HIWORD(v538) = *(v1 + 3066);
                        goto LABEL_112;
                      case 57:
                        goto LABEL_113;
                      default:
                        goto LABEL_3;
                    }
                  }
                }
              }

              goto LABEL_148;
            }

LABEL_30:
            LODWORD(v12) = v131;
            v132 = OUTLINED_FUNCTION_19_23();
            starttest(v132, v133);
            v134 = OUTLINED_FUNCTION_8_30();
            if (!lpta_loadp_setscan_r(v134, v135, v136))
            {
              v137 = OUTLINED_FUNCTION_3_31();
              if (testFldeq(v137, v138, v139, 16))
              {
                goto LABEL_148;
              }

              v140 = OUTLINED_FUNCTION_18_24();
              v142 = npush_fld(v140, v141, 5u);
              if (v142)
              {
                goto LABEL_148;
              }

              OUTLINED_FUNCTION_77_7(v142, v143, v144, v145, v146, v147, v148, v149);
              if (if_testeq(v1, v150, v151, v152, v153, v154, v155, v156) || advance_tok(v1, v157, v158, v159))
              {
                goto LABEL_148;
              }

              OUTLINED_FUNCTION_19_23();
              bspush_ca_scan_boa();
              v160 = OUTLINED_FUNCTION_4_30();
              v163 = 3;
LABEL_124:
              testFldeq(v160, v161, v162, v163);
              OUTLINED_FUNCTION_95_4();
              goto LABEL_59;
            }

LABEL_3:
            vretproc(v1);
            return 94;
          }

LABEL_138:
          OUTLINED_FUNCTION_45_9(50, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537[0]);
          v479 = OUTLINED_FUNCTION_3_31();
          if (testFldeq(v479, v480, v481, 18))
          {
            goto LABEL_148;
          }

          if (advance_tok(v1, v482, v483, v484))
          {
            goto LABEL_148;
          }

          v485 = OUTLINED_FUNCTION_21_22();
          if (lpta_loadp_setscan_r(v485, v486, v487))
          {
            goto LABEL_148;
          }

          v488 = OUTLINED_FUNCTION_3_31();
          if (testFldeq(v488, v489, v490, 11))
          {
            goto LABEL_148;
          }

          v224 = OUTLINED_FUNCTION_6_30();
          v227 = 2;
          goto LABEL_50;
        }

LABEL_128:
        OUTLINED_FUNCTION_45_9(31, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537[0]);
        v434 = OUTLINED_FUNCTION_18_24();
        v436 = npush_fld(v434, v435, 5u);
        if (v436)
        {
          goto LABEL_148;
        }

        OUTLINED_FUNCTION_77_7(v436, v437, v438, v439, v440, v441, v442, v443);
        if (if_testeq(v1, v444, v445, v446, v447, v448, v449, v450))
        {
          goto LABEL_148;
        }
      }

      else
      {
LABEL_125:
        OUTLINED_FUNCTION_45_9(26, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537[0]);
        v417 = OUTLINED_FUNCTION_18_24();
        v419 = npush_fld(v417, v418, 5u);
        if (v419)
        {
          goto LABEL_148;
        }

        OUTLINED_FUNCTION_77_7(v419, v420, v421, v422, v423, v424, v425, v426);
        if (if_testeq(v1, v427, v428, v429, v430, v431, v432, v433))
        {
          goto LABEL_148;
        }
      }

LABEL_130:
      OUTLINED_FUNCTION_19_23();
      bspush_ca_scan_boa();
      v160 = OUTLINED_FUNCTION_3_31();
      v163 = 11;
      goto LABEL_124;
    }

    break;
  }

  v193 = OUTLINED_FUNCTION_1_32();
  if (testFldeq(v193, v194, v195, v196))
  {
    goto LABEL_148;
  }

  v197 = OUTLINED_FUNCTION_18_24();
  v199 = npush_fld(v197, v198, 5u);
  if (v199)
  {
    goto LABEL_148;
  }

  OUTLINED_FUNCTION_65_7(v199, v200, v201, v202, v203, v204, v205, v206);
  if (if_testgt(v1, v207, v208, v209, v210, v211, v212, v213) || advance_tok(v1, v214, v215, v216))
  {
    goto LABEL_148;
  }

  v217 = OUTLINED_FUNCTION_19_23();
  bspush_ca_scan(v217, v218);
  v219 = v12;
LABEL_48:
  v220 = v219;
  v221 = OUTLINED_FUNCTION_19_23();
  bspush_ca_scan(v221, v222);
  v223 = v220;
LABEL_49:
  LODWORD(v12) = v223;
  v224 = OUTLINED_FUNCTION_4_30();
  v227 = 3;
LABEL_50:
  if (testFldeq(v224, v225, v226, v227))
  {
    goto LABEL_148;
  }

LABEL_111:
  v408 = advance_tok(v1, v33, v34, v35);
  LODWORD(v33) = v12;
  if (v408)
  {
    goto LABEL_59;
  }

LABEL_112:
  mark_word_stress(v1);
LABEL_113:
  *(v2 + 8) = v539;
  vretproc(v1);
  return 0;
}

uint64_t destress_postnuclear_expr(uint64_t a1)
{
  OUTLINED_FUNCTION_22_22();
  v58 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v52, v3);
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_100_2(v4, v5);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_8();
  if (OUTLINED_FUNCTION_87_5(v6, v7, v8, v9, v10))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_27_19();
  v12 = OUTLINED_FUNCTION_28_18();
  OUTLINED_FUNCTION_64_7(v12, v13);
  v53 = 65532;
  fence_30(v1, 0, &null_str_9);
  fence_30(v1, 1, &_MergedGlobals_27);
  v14 = OUTLINED_FUNCTION_84_5();
  starttest(v14, v15);
  v16 = OUTLINED_FUNCTION_29_18();
  if (lpta_loadp_setscan_r(v16, v17, 2))
  {
    goto LABEL_15;
  }

  v18 = OUTLINED_FUNCTION_18_24();
  v20 = npush_fld(v18, v19, 5u);
  if (!v20)
  {
    OUTLINED_FUNCTION_65_7(v20, v21, v22, v23, v24, v25, v26, v27);
    if (!if_testgt(v1, v28, v29, v30, v31, v32, v33, v34) && !advance_tok(v1, v35, v36, v37))
    {
      goto LABEL_3;
    }
  }

  while (1)
  {
    v38 = *(v1 + 104);
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_34_15(v38);
    }

    else
    {
      v40 = OUTLINED_FUNCTION_47_9();
      v39 = vback(v40, v41);
    }

    if (v39 == 1)
    {
LABEL_15:
      v42 = OUTLINED_FUNCTION_67_7();
      is_postnuclear_expr(v42, v43, v44);
      if (v45)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    if (v39 != 2)
    {
      break;
    }

LABEL_16:
    v46 = OUTLINED_FUNCTION_17_25();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_26_21();
    move_i(v48, v49, v50);
    v51 = OUTLINED_FUNCTION_37_13();
    if (!mark_word_stress(v51))
    {
      goto LABEL_17;
    }
  }

  if (v39 != 4)
  {
    goto LABEL_3;
  }

LABEL_17:
  OUTLINED_FUNCTION_94_4(v55);
LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_90_5();
}

uint64_t destress_adverbs(uint64_t a1)
{
  OUTLINED_FUNCTION_22_22();
  v166 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_29(v2, v3, v4, v5, v6, v7, v8, v9, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v162, v163);
  OUTLINED_FUNCTION_32_16();
  bzero(v165, v10);
  if (setjmp(v165))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_8();
  if (ventproc(v1, v11, v12, v13, v14, v165))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_27_19();
  v16 = OUTLINED_FUNCTION_28_18();
  OUTLINED_FUNCTION_64_7(v16, v17);
  v18 = OUTLINED_FUNCTION_36_13();
  v20 = push_ptr_init(v18, v19);
  OUTLINED_FUNCTION_73_7(v20, v21, &null_str_9);
  v22 = OUTLINED_FUNCTION_49_8();
  fence_30(v22, v23, v24);
  OUTLINED_FUNCTION_98_3();
  v25 = OUTLINED_FUNCTION_29_18();
  v27 = lpta_loadp_setscan_l(v25, v26, 2);
  if (v27)
  {
    while (2)
    {
      v53 = OUTLINED_FUNCTION_17_25();
      starttest(v53, v54);
      v55 = OUTLINED_FUNCTION_21_22();
      if (lpta_loadp_setscan_r(v55, v56, v57))
      {
LABEL_14:
        v58 = OUTLINED_FUNCTION_19_23();
        starttest(v58, v59);
        v60 = OUTLINED_FUNCTION_37_13();
        lpta_loadpn(v60, v61);
        v62 = OUTLINED_FUNCTION_79_7();
        rpta_loadpn(v62, v63);
        if (compare_ptas(v1))
        {
          goto LABEL_3;
        }

        if (testneq(v1))
        {
          goto LABEL_3;
        }

        v64 = OUTLINED_FUNCTION_21_22();
        if (lpta_loadp_setscan_r(v64, v65, v66))
        {
          goto LABEL_3;
        }

        v67 = OUTLINED_FUNCTION_4_30();
        if (!testFldeq(v67, v68, v69, 1))
        {
          OUTLINED_FUNCTION_84_5();
          bspush_ca_scan_boa();
          v70 = OUTLINED_FUNCTION_3_31();
          testFldeq(v70, v71, v72, 6);
        }
      }

      else
      {
        v73 = OUTLINED_FUNCTION_18_24();
        v75 = npush_fld(v73, v74, 5u);
        if (!v75)
        {
          OUTLINED_FUNCTION_65_7(v75, v76, v77, v78, v79, v80, v81, v82);
          if (!if_testgt(v1, v83, v84, v85, v86, v87, v88, v89) && !advance_tok(v1, v90, v91, v92))
          {
            goto LABEL_3;
          }
        }
      }

LABEL_21:
      OUTLINED_FUNCTION_75_7();
LABEL_22:
      v94 = v1[13];
      if (v94)
      {
        v27 = OUTLINED_FUNCTION_34_15(v94);
        v95 = v93;
      }

      else
      {
        v27 = vback(v1, v93);
        v95 = 0;
      }

      switch(v27)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_5;
        case 3:
          goto LABEL_36;
        case 4:
          goto LABEL_14;
        case 6:
          bspop_boa(v1);
          OUTLINED_FUNCTION_84_5();
          bspush_ca_scan_boa();
          v96 = OUTLINED_FUNCTION_3_31();
          if (testFldeq(v96, v97, v98, 7))
          {
            LODWORD(v93) = v95;
          }

          else
          {
            LODWORD(v93) = 1;
          }

          goto LABEL_22;
        case 7:
          bspop_boa(v1);
          v108 = advance_tok(v1, v105, v106, v107);
          LODWORD(v93) = v95;
          if (v108)
          {
            goto LABEL_22;
          }

          v109 = OUTLINED_FUNCTION_29_18();
          bspush_ca_scan(v109, v110);
          v101 = OUTLINED_FUNCTION_4_30();
          v104 = 3;
          goto LABEL_34;
        case 8:
          OUTLINED_FUNCTION_99_3();
          v101 = OUTLINED_FUNCTION_4_30();
          v104 = 9;
          goto LABEL_34;
        case 9:
          goto LABEL_35;
        case 10:
          v99 = OUTLINED_FUNCTION_63_7();
          bspush_ca_scan(v99, v100);
          v101 = OUTLINED_FUNCTION_6_30();
          v104 = 6;
          goto LABEL_34;
        case 11:
          v101 = OUTLINED_FUNCTION_6_30();
          v104 = 7;
LABEL_34:
          v111 = testFldeq(v101, v102, v103, v104);
          v93 = v95;
          if (v111)
          {
            goto LABEL_22;
          }

LABEL_35:
          v112 = advance_tok(v1, v93, v28, v29);
          LODWORD(v93) = v95;
          if (!v112)
          {
            goto LABEL_36;
          }

          goto LABEL_22;
        case 12:
          goto LABEL_37;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_76_7(v27, 2, v28, v29, v30, v31, v32, v33, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160);
  if (testFldeq(v1, 2u, 3, 8))
  {
    goto LABEL_21;
  }

  if (advance_tok(v1, v34, v35, v36))
  {
    goto LABEL_21;
  }

  v37 = OUTLINED_FUNCTION_21_22();
  if (lpta_loadp_setscan_r(v37, v38, v39))
  {
    goto LABEL_21;
  }

  v40 = OUTLINED_FUNCTION_3_31();
  if (testFldeq(v40, v41, v42, 6))
  {
    goto LABEL_21;
  }

  if (advance_tok(v1, v43, v44, v45))
  {
    goto LABEL_21;
  }

  v46 = OUTLINED_FUNCTION_1_32();
  if (testFldeq(v46, v47, v48, v49) || advance_tok(v1, v50, v51, v52))
  {
    goto LABEL_21;
  }

LABEL_36:
  mark_word_stress(v1);
LABEL_37:
  OUTLINED_FUNCTION_94_4(v164);
LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_90_5();
}

void destress_verbs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_7();
  v160 = v4;
  OUTLINED_FUNCTION_57_8();
  v179 = *MEMORY[0x277D85DE8];
  v166 = 0;
  v167 = 0;
  v164 = 0;
  v165 = 0;
  HIDWORD(v163) = 65532;
  OUTLINED_FUNCTION_33_16();
  bzero(v162, v5);
  OUTLINED_FUNCTION_32_16();
  bzero(v178, v6);
  v7 = setjmp(v178);
  if (v7 || OUTLINED_FUNCTION_85_5(v7, v162, v8, v9, v10, v11, v12, v13, v159, v160, v162[0], v162[1], v162[2], v162[3], v162[4], v162[5], v162[6], v162[7], v162[8], v162[9], v162[10], v162[11], v162[12], v162[13], v162[14], v162[15], v162[16], v162[17], v162[18], v162[19], v162[20], v162[21], v162[22], v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178[0]))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_20_22();
  v14 = OUTLINED_FUNCTION_82_6();
  get_parm(v14, v15, v161, -6);
  v16 = 0;
  v19 = OUTLINED_FUNCTION_73_7(v17, v18, &null_str_9);
  OUTLINED_FUNCTION_59_8(v19, v20, &_MergedGlobals_27);
  HIWORD(v163) = *(v3 + 3066);
  OUTLINED_FUNCTION_88_5();
  v21 = OUTLINED_FUNCTION_14_27();
  if (!lpta_loadp_setscan_r(v21, v22, v23))
  {
    v56 = OUTLINED_FUNCTION_18_24();
    v58 = npush_fld(v56, v57, 5u);
    if (v58)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_77_7(v58, v59, v60, v61, v62, v63, v64, v65);
    if (if_testeq(v3, v66, v67, v68, v69, v70, v71, v72) || advance_tok(v3, v73, v74, v75))
    {
      goto LABEL_28;
    }

    goto LABEL_3;
  }

  while (2)
  {
    v24 = OUTLINED_FUNCTION_19_23();
    starttest(v24, v25);
    v26 = OUTLINED_FUNCTION_21_22();
    if (lpta_loadp_setscan_r(v26, v27, v28))
    {
LABEL_22:
      v76 = OUTLINED_FUNCTION_19_23();
      starttest(v76, v77);
      v78 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v78, v79, v80))
      {
        v81 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v81, v82);
        v83 = OUTLINED_FUNCTION_4_30();
        if (!testFldeq(v83, v84, v85, 3))
        {
LABEL_24:
          if (!advance_tok(v3, v35, v37, v36))
          {
            v86 = OUTLINED_FUNCTION_18_24();
            if (!npush_fld(v86, v87, 5u))
            {
              npush_v(v3, (v3 + 3064), v88, v89, v90, v91, v92, v93);
              if (!if_testlt(v3, v94, v95, v96, v97, v98, v99, v100))
              {
                OUTLINED_FUNCTION_19_23();
                bspush_ca_scan_boa();
                v101 = OUTLINED_FUNCTION_3_31();
                testFldeq(v101, v102, v103, 25);
              }
            }
          }
        }

        goto LABEL_28;
      }

LABEL_3:
      vretproc(v3);
      goto LABEL_4;
    }

    v29 = OUTLINED_FUNCTION_17_25();
    bspush_ca_scan(v29, v30);
    v31 = OUTLINED_FUNCTION_4_30();
    v34 = testFldeq(v31, v32, v33, 3);
    v37 = v16;
    if (v34)
    {
      goto LABEL_28;
    }

LABEL_8:
    v38 = v37;
    if (advance_tok(v3, v35, v37, v36))
    {
      goto LABEL_28;
    }

    v39 = OUTLINED_FUNCTION_6_30();
    if (testFldeq(v39, v40, v41, 6) || advance_tok(v3, v42, v43, v44))
    {
      goto LABEL_28;
    }

    v45 = OUTLINED_FUNCTION_19_23();
    starttest_l(v45, v46);
    v47 = OUTLINED_FUNCTION_21_22();
    if (lpta_loadp_setscan_r(v47, v48, v49))
    {
      goto LABEL_15;
    }

    v50 = OUTLINED_FUNCTION_19_23();
    bspush_ca_scan(v50, v51);
    v52 = OUTLINED_FUNCTION_3_31();
    v55 = testFldeq(v52, v53, v54, 19);
    v36 = v38;
    if (v55)
    {
LABEL_28:
      OUTLINED_FUNCTION_75_7();
LABEL_29:
      v104 = *(v3 + 104);
      if (v104)
      {
        v105 = OUTLINED_FUNCTION_34_15(v104);
        v106 = v35;
      }

      else
      {
        v105 = vback(v3, v35);
        v106 = 0;
      }

      v37 = v106;
      v36 = v106;
      switch(v105)
      {
        case 1:
          v16 = v106;
          continue;
        case 2:
        case 7:
        case 21:
          goto LABEL_15;
        case 3:
          goto LABEL_22;
        case 4:
          v107 = OUTLINED_FUNCTION_29_18();
          bspush_ca_scan(v107, v108);
          v109 = OUTLINED_FUNCTION_4_30();
          v112 = 11;
          goto LABEL_50;
        case 5:
          goto LABEL_8;
        case 6:
          v109 = OUTLINED_FUNCTION_6_30();
          v112 = 7;
LABEL_50:
          testFldeq(v109, v110, v111, v112);
          OUTLINED_FUNCTION_72_7();
          if (!v155)
          {
            goto LABEL_8;
          }

          goto LABEL_29;
        case 8:
          OUTLINED_FUNCTION_99_3();
          v131 = OUTLINED_FUNCTION_3_31();
          v134 = 17;
          goto LABEL_47;
        case 9:
          goto LABEL_13;
        case 10:
          v131 = OUTLINED_FUNCTION_3_31();
          v134 = 20;
LABEL_47:
          v154 = testFldeq(v131, v132, v133, v134);
          v36 = v106;
          v35 = v106;
          if (!v154)
          {
            goto LABEL_13;
          }

          goto LABEL_29;
        case 12:
          v122 = OUTLINED_FUNCTION_68_7();
          bspush_ca_scan(v122, v123);
          v124 = OUTLINED_FUNCTION_4_30();
          v127 = 11;
          goto LABEL_53;
        case 13:
          goto LABEL_24;
        case 14:
          v156 = OUTLINED_FUNCTION_81_6();
          bspush_ca_scan(v156, v157);
          v124 = OUTLINED_FUNCTION_6_30();
          v127 = 7;
          goto LABEL_53;
        case 15:
          v124 = OUTLINED_FUNCTION_6_30();
          v127 = 6;
LABEL_53:
          testFldeq(v124, v125, v126, v127);
          OUTLINED_FUNCTION_96_4();
          if (!v158)
          {
            goto LABEL_24;
          }

          goto LABEL_29;
        case 16:
          bspop_boa(v3);
          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v128 = OUTLINED_FUNCTION_3_31();
          testFldeq(v128, v129, v130, 9);
          OUTLINED_FUNCTION_95_4();
          goto LABEL_29;
        case 17:
          bspop_boa(v3);
          v116 = advance_tok(v3, v113, v114, v115);
          LODWORD(v35) = v106;
          if (v116)
          {
            goto LABEL_29;
          }

          goto LABEL_35;
        case 18:
LABEL_35:
          v117 = OUTLINED_FUNCTION_62_7();
          savescptr(v117, v118, &v164);
          v119 = OUTLINED_FUNCTION_44_9();
          bspush_ca_scan(v119, v120);
          goto LABEL_36;
        case 19:
          v135 = OUTLINED_FUNCTION_18_24();
          v137 = npush_fld(v135, v136, 5u);
          LODWORD(v35) = v106;
          if (v137)
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_77_7(v137, v106, v138, v139, v140, v141, v142, v143);
          v151 = if_testeq(v3, v144, v145, v146, v147, v148, v149, v150);
          LODWORD(v35) = v106;
          if (v151)
          {
            goto LABEL_29;
          }

          v121 = advance_tok(v3, v106, v152, v153);
          goto LABEL_37;
        case 20:
LABEL_36:
          v121 = test_synch(v3, 20, 1, &_MergedGlobals_27);
LABEL_37:
          LODWORD(v35) = v106;
          if (!v121)
          {
            goto LABEL_15;
          }

          goto LABEL_29;
        case 22:
          goto LABEL_16;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_13:
  if (advance_tok(v3, v35, v37, v36))
  {
    goto LABEL_28;
  }

  HIWORD(v163) = *(v3 + 3054);
LABEL_15:
  mark_word_stress(v3);
LABEL_16:
  *(v161 + 8) = v165;
  vretproc(v3);
LABEL_4:
  OUTLINED_FUNCTION_71_7();
}

void destress_proper_names(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_7();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v236 = *MEMORY[0x277D85DE8];
  v230 = 0;
  v231 = 0;
  v228 = 0;
  v229 = 0;
  v227[0] = 0;
  v227[1] = 0;
  v226[0] = 0;
  v226[1] = 0;
  v224 = 0;
  v225 = 0;
  v222 = 0;
  v223 = 0;
  HIDWORD(v221) = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v198, v9);
  OUTLINED_FUNCTION_32_16();
  bzero(v235, v10);
  if (!setjmp(v235) && !ventproc(v8, &v198, v234, v233, v232, v235))
  {
    v11 = OUTLINED_FUNCTION_44_9();
    get_parm(v11, v12, v6, -6);
    v197 = v4;
    OUTLINED_FUNCTION_89_5(v8, &v228);
    push_ptr_init(v8, v227);
    push_ptr_init(v8, v226);
    push_ptr_init(v8, &v224);
    v13 = OUTLINED_FUNCTION_82_6();
    v15 = push_ptr_init(v13, v14);
    HIDWORD(v221) = 65532;
    LODWORD(v6) = 0;
    v17 = OUTLINED_FUNCTION_73_7(v15, v16, &null_str_9);
    OUTLINED_FUNCTION_59_8(v17, v18, &_MergedGlobals_27);
    OUTLINED_FUNCTION_88_5();
    v19 = OUTLINED_FUNCTION_44_9();
    if (lpta_loadp_setscan_r(v19, v20, 2))
    {
LABEL_5:
      v21 = v6;
      v22 = OUTLINED_FUNCTION_19_23();
      starttest(v22, v23);
      v24 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_l(v24, v25, v26))
      {
LABEL_6:
        OUTLINED_FUNCTION_40_10();
        savescptr(v8, v27, &v224);
LABEL_7:
        OUTLINED_FUNCTION_19_23();
        bspush_ca_scan_boa();
        v28 = OUTLINED_FUNCTION_2_32();
        testFldeq(v28, v29, v30, v31);
        OUTLINED_FUNCTION_96_4();
        if (!v36)
        {
          v37 = v35;
          if (advance_tok(v8, v32, v33, v34))
          {
            LODWORD(v32) = v37;
          }

          else
          {
            LODWORD(v32) = 1;
          }
        }

        goto LABEL_15;
      }

LABEL_38:
      v120 = OUTLINED_FUNCTION_19_23();
      starttest(v120, v121);
      v122 = OUTLINED_FUNCTION_21_22();
      if (!lpta_loadp_setscan_r(v122, v123, v124))
      {
        v138 = OUTLINED_FUNCTION_2_32();
        if (testFldeq(v138, v139, v140, v141))
        {
          goto LABEL_61;
        }

        v145 = advance_tok(v8, v142, v143, v144);
        LODWORD(v32) = v21;
        if (v145)
        {
          goto LABEL_15;
        }

LABEL_53:
        savescptr(v8, 13, v227);
        v162 = OUTLINED_FUNCTION_2_32();
        if (testFldeq(v162, v163, v164, v165) || advance_tok(v8, v166, v167, v168))
        {
          goto LABEL_61;
        }

        v169 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v169, v170);
        v61 = v21;
LABEL_56:
        LODWORD(v6) = v61;
        OUTLINED_FUNCTION_70_7(15, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226[0]);
        v171 = OUTLINED_FUNCTION_2_32();
        if (!testFldeq(v171, v172, v173, v174))
        {
          v178 = advance_tok(v8, v175, v176, v177);
          LODWORD(v32) = v6;
          if (v178)
          {
            goto LABEL_15;
          }

LABEL_58:
          OUTLINED_FUNCTION_48_9();
          savescptr(v8, v179, &v228);
          goto LABEL_7;
        }

        goto LABEL_65;
      }

LABEL_39:
      v125 = OUTLINED_FUNCTION_19_23();
      starttest(v125, v126);
      v127 = OUTLINED_FUNCTION_21_22();
      if (lpta_loadp_setscan_r(v127, v128, v129))
      {
        goto LABEL_3;
      }

      v130 = OUTLINED_FUNCTION_2_32();
      if (testFldeq(v130, v131, v132, v133))
      {
        goto LABEL_61;
      }

      v137 = advance_tok(v8, v134, v135, v136);
      LODWORD(v32) = v21;
      if (v137)
      {
        goto LABEL_15;
      }

LABEL_60:
      savescptr(v8, 19, v227);
      v180 = OUTLINED_FUNCTION_2_32();
      if (testFldeq(v180, v181, v182, v183))
      {
        goto LABEL_61;
      }

      v187 = advance_tok(v8, v184, v185, v186);
      LODWORD(v32) = v21;
      LODWORD(v6) = v21;
      if (v187)
      {
        goto LABEL_15;
      }

LABEL_63:
      OUTLINED_FUNCTION_70_7(20, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226[0]);
LABEL_64:
      savescptr(v8, 21, &v228);
      v188 = OUTLINED_FUNCTION_2_32();
      if (testFldeq(v188, v189, v190, v191))
      {
LABEL_65:
        LODWORD(v32) = v6;
        goto LABEL_15;
      }

      v195 = advance_tok(v8, v192, v193, v194);
      LODWORD(v32) = v6;
      if (v195)
      {
        goto LABEL_15;
      }

LABEL_34:
      v109 = OUTLINED_FUNCTION_19_23();
      startloop(v109, v110);
      lpta_loadpn(v8, v227);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v111 = OUTLINED_FUNCTION_44_9();
      lpta_storep(v111, v112, v113);
      lpta_loadpn(v8, v226);
      OUTLINED_FUNCTION_18_24();
      lpta_mover();
      v114 = OUTLINED_FUNCTION_26_21();
      lpta_storep(v114, v115, v116);
      v117 = OUTLINED_FUNCTION_44_9();
      v119 = forall_to_test(v117, v118, &v224);
      LODWORD(v32) = v6;
      v21 = v6;
      if (v119)
      {
        goto LABEL_15;
      }

LABEL_47:
      v146 = OUTLINED_FUNCTION_19_23();
      bspush_ca(v146);
      v147 = OUTLINED_FUNCTION_21_22();
      if (lpta_loadp_setscan_r(v147, v148, v149))
      {
LABEL_61:
        LODWORD(v32) = v21;
        goto LABEL_15;
      }

      v153 = advance_tok(v8, v150, v151, v152);
      LODWORD(v32) = v21;
      LODWORD(v6) = v21;
      if (!v153)
      {
LABEL_49:
        v154 = OUTLINED_FUNCTION_19_23();
        starttest(v154, v155);
        v156 = OUTLINED_FUNCTION_44_9();
        move_i(v156, v157, v158);
        v159 = OUTLINED_FUNCTION_82_6();
        v160 = mark_word_stress(v159);
        LODWORD(v32) = v6;
        if (!v160)
        {
LABEL_50:
          v161 = forto_adv_upto_r(v8, 22, 23, 25, 2, &v222);
          LODWORD(v32) = v6;
          if (!v161)
          {
LABEL_51:
            *(v197 + 8) = v229;
            goto LABEL_3;
          }
        }
      }
    }

    else
    {
      v38 = OUTLINED_FUNCTION_18_24();
      v40 = npush_fld(v38, v39, 5u);
      if (!v40)
      {
        OUTLINED_FUNCTION_65_7(v40, v41, v42, v43, v44, v45, v46, v47);
        if (!if_testgt(v8, v48, v49, v50, v51, v52, v53, v54) && !advance_tok(v8, v55, v56, v57))
        {
          goto LABEL_3;
        }
      }

      LODWORD(v32) = 0;
    }

LABEL_15:
    while (2)
    {
      v58 = v8[13];
      if (v58)
      {
        v59 = OUTLINED_FUNCTION_34_15(v58);
        v6 = v60;
      }

      else
      {
        v59 = vback(v8, v32);
        v6 = 0;
      }

      v61 = v6;
      switch(v59)
      {
        case 1:
          goto LABEL_5;
        case 2:
          goto LABEL_34;
        case 3:
          v21 = v6;
          goto LABEL_38;
        case 4:
          goto LABEL_6;
        case 5:
          bspop_boa(v8);
          v62 = lpta_loadp_setscan_r(v8, &v224, 2);
          LODWORD(v32) = v6;
          if (v62)
          {
            continue;
          }

          goto LABEL_20;
        case 6:
LABEL_20:
          v63 = OUTLINED_FUNCTION_29_18();
          savescptr(v63, v64, v227);
          v65 = OUTLINED_FUNCTION_2_32();
          v69 = testFldeq(v65, v66, v67, v68);
          LODWORD(v32) = v6;
          if (!v69)
          {
            v72 = advance_tok(v8, v6, v70, v71);
            LODWORD(v32) = v6;
            if (!v72)
            {
              goto LABEL_22;
            }
          }

          continue;
        case 7:
LABEL_22:
          v73 = OUTLINED_FUNCTION_63_7();
          savescptr(v73, v74, v226);
          v75 = OUTLINED_FUNCTION_68_7();
          bspush_ca_scan(v75, v76);
          goto LABEL_23;
        case 8:
          v102 = OUTLINED_FUNCTION_4_30();
          v105 = testFldeq(v102, v103, v104, 9);
          LODWORD(v32) = v6;
          if (v105)
          {
            continue;
          }

          v108 = advance_tok(v8, v6, v106, v107);
          LODWORD(v32) = v6;
          if (v108)
          {
            continue;
          }

          goto LABEL_23;
        case 9:
LABEL_23:
          v77 = OUTLINED_FUNCTION_2_32();
          v81 = testFldeq(v77, v78, v79, v80);
          LODWORD(v32) = v6;
          if (!v81)
          {
            v84 = advance_tok(v8, v6, v82, v83);
            LODWORD(v32) = v6;
            if (!v84)
            {
              goto LABEL_25;
            }
          }

          continue;
        case 10:
LABEL_25:
          v85 = OUTLINED_FUNCTION_81_6();
          savescptr(v85, v86, &v228);
          OUTLINED_FUNCTION_44_9();
          bspush_ca_scan_boa();
          v87 = OUTLINED_FUNCTION_2_32();
          v91 = testFldeq(v87, v88, v89, v90);
          LODWORD(v32) = v6;
          if (!v91)
          {
            advance_tok(v8, v6, v92, v93);
            OUTLINED_FUNCTION_95_4();
          }

          continue;
        case 11:
        case 17:
          bspop_boa(v8);
          goto LABEL_34;
        case 12:
          v21 = v6;
          goto LABEL_39;
        case 13:
          v21 = v6;
          goto LABEL_53;
        case 14:
          v94 = OUTLINED_FUNCTION_2_32();
          v98 = testFldeq(v94, v95, v96, v97);
          LODWORD(v32) = v6;
          if (!v98)
          {
            advance_tok(v8, v6, v99, v100);
            OUTLINED_FUNCTION_72_7();
            if (!v101)
            {
              goto LABEL_56;
            }
          }

          continue;
        case 15:
          goto LABEL_56;
        case 16:
          goto LABEL_58;
        case 19:
          v21 = v6;
          goto LABEL_60;
        case 20:
          goto LABEL_63;
        case 21:
          goto LABEL_64;
        case 22:
          goto LABEL_51;
        case 23:
          goto LABEL_49;
        case 24:
          goto LABEL_50;
        case 25:
          v21 = v6;
          goto LABEL_47;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v8);
  OUTLINED_FUNCTION_71_7();
}

uint64_t destress_numbers(void *a1, uint64_t a2, uint64_t a3)
{
  v405 = *MEMORY[0x277D85DE8];
  v399 = 0;
  v400 = 0;
  v397 = 0;
  v398 = 0;
  v395 = 0;
  v396 = 0;
  OUTLINED_FUNCTION_92_4();
  v389 = 0;
  v390 = 0;
  HIDWORD(v388) = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v365, v5);
  OUTLINED_FUNCTION_32_16();
  bzero(v404, v6);
  v7 = setjmp(v404);
  if (v7 || OUTLINED_FUNCTION_87_5(v7, &v365, v403, v402, v401))
  {
    goto LABEL_3;
  }

  v9 = OUTLINED_FUNCTION_26_21();
  OUTLINED_FUNCTION_89_5(v9, v10);
  OUTLINED_FUNCTION_41_9(v11, &v397);
  v12 = OUTLINED_FUNCTION_60_8();
  push_ptr_init(v12, v13);
  v14 = OUTLINED_FUNCTION_25_21();
  push_ptr_init(v14, v15);
  v16 = OUTLINED_FUNCTION_37_13();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_28_18();
  v20 = push_ptr_init(v18, v19);
  HIDWORD(v388) = 65532;
  v21 = 0;
  OUTLINED_FUNCTION_73_7(v20, v22, &null_str_9);
  v23 = OUTLINED_FUNCTION_49_8();
  fence_30(v23, v24, v25);
  OUTLINED_FUNCTION_98_3();
  v26 = OUTLINED_FUNCTION_14_27();
  if (lpta_loadp_setscan_r(v26, v27, v28))
  {
    while (2)
    {
      v50 = OUTLINED_FUNCTION_19_23();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_13_29();
      LODWORD(v55) = v21;
      if (!lpta_loadp_setscan_r(v52, v53, v54))
      {
LABEL_12:
        OUTLINED_FUNCTION_40_10();
        v56 = OUTLINED_FUNCTION_54_8();
        savescptr(v56, v57, v58);
        v59 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v59, v60, v61, v62) || advance_tok(a1, v63, v64, v65))
        {
          goto LABEL_111;
        }

        v66 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v66, v67);
        v68 = v55;
LABEL_15:
        LODWORD(v55) = v68;
        v69 = OUTLINED_FUNCTION_3_31();
        if (testFldeq(v69, v70, v71, 32))
        {
          goto LABEL_111;
        }

        advance_tok(a1, v72, v73, v74);
        OUTLINED_FUNCTION_72_7();
        if (v76)
        {
          goto LABEL_17;
        }

LABEL_41:
        LODWORD(v55) = v75;
        OUTLINED_FUNCTION_46_9(7, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
        v132 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v132, v133, v134, v135))
        {
          goto LABEL_111;
        }

        advance_tok(a1, v136, v137, v138);
        OUTLINED_FUNCTION_72_7();
        if (v139)
        {
          goto LABEL_17;
        }

LABEL_39:
        LODWORD(v55) = v131;
        OUTLINED_FUNCTION_52_8(8, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397);
        goto LABEL_96;
      }

LABEL_53:
      v157 = OUTLINED_FUNCTION_19_23();
      starttest(v157, v158);
      v159 = OUTLINED_FUNCTION_13_29();
      LODWORD(v55) = v21;
      if (lpta_loadp_setscan_l(v159, v160, v161))
      {
LABEL_54:
        v162 = OUTLINED_FUNCTION_19_23();
        starttest(v162, v163);
        v164 = OUTLINED_FUNCTION_13_29();
        if (lpta_loadp_setscan_r(v164, v165, v166))
        {
LABEL_55:
          v167 = OUTLINED_FUNCTION_19_23();
          starttest(v167, v168);
          v169 = OUTLINED_FUNCTION_13_29();
          LODWORD(v55) = v21;
          if (lpta_loadp_setscan_r(v169, v170, v171))
          {
LABEL_56:
            v172 = OUTLINED_FUNCTION_19_23();
            starttest(v172, v173);
            v174 = OUTLINED_FUNCTION_13_29();
            if (lpta_loadp_setscan_r(v174, v175, v176))
            {
              LODWORD(v55) = v21;
LABEL_58:
              v177 = OUTLINED_FUNCTION_19_23();
              starttest(v177, v178);
              v179 = OUTLINED_FUNCTION_13_29();
              if (!lpta_loadp_setscan_r(v179, v180, v181))
              {
                v269 = OUTLINED_FUNCTION_0_34();
                if (testFldeq(v269, v270, v271, v272))
                {
                  goto LABEL_111;
                }

                v276 = advance_tok(a1, v273, v274, v275);
                LODWORD(v49) = v55;
                if (v276)
                {
                  goto LABEL_17;
                }

LABEL_90:
                OUTLINED_FUNCTION_53_8(33, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
                v277 = OUTLINED_FUNCTION_0_34();
                if (testFldeq(v277, v278, v279, v280))
                {
                  goto LABEL_111;
                }

                v284 = advance_tok(a1, v281, v282, v283);
                LODWORD(v49) = v55;
                if (v284)
                {
                  goto LABEL_17;
                }

LABEL_92:
                OUTLINED_FUNCTION_46_9(34, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
LABEL_93:
                v156 = 35;
                goto LABEL_94;
              }

LABEL_59:
              v182 = OUTLINED_FUNCTION_19_23();
              starttest(v182, v183);
              v184 = OUTLINED_FUNCTION_13_29();
              if (lpta_loadp_setscan_r(v184, v185, v186))
              {
                goto LABEL_3;
              }

              v187 = OUTLINED_FUNCTION_0_34();
              if (testFldeq(v187, v188, v189, v190))
              {
                goto LABEL_111;
              }

              if (advance_tok(a1, v191, v192, v193))
              {
                goto LABEL_111;
              }

              v194 = OUTLINED_FUNCTION_3_31();
              if (testFldeq(v194, v195, v196, 34))
              {
                goto LABEL_111;
              }

              v200 = advance_tok(a1, v197, v198, v199);
              LODWORD(v49) = v55;
              v21 = v55;
              if (v200)
              {
                goto LABEL_17;
              }

LABEL_45:
              LODWORD(v55) = 37;
              v140 = OUTLINED_FUNCTION_54_8();
              savescptr(v140, v141, v142);
              v143 = OUTLINED_FUNCTION_3_31();
              if (!testFldeq(v143, v144, v145, 37) && !advance_tok(a1, v146, v147, v148))
              {
                v149 = OUTLINED_FUNCTION_3_31();
                if (!testFldeq(v149, v150, v151, 34))
                {
                  advance_tok(a1, v152, v153, v154);
                  OUTLINED_FUNCTION_97_4();
                  if (v155)
                  {
                    goto LABEL_17;
                  }

LABEL_49:
                  OUTLINED_FUNCTION_46_9(38, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
LABEL_50:
                  v156 = 39;
LABEL_94:
                  OUTLINED_FUNCTION_52_8(v156, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397);
                  v285 = OUTLINED_FUNCTION_0_34();
                  if (testFldeq(v285, v286, v287, v288))
                  {
                    goto LABEL_111;
                  }

                  v292 = advance_tok(a1, v289, v290, v291);
                  LODWORD(v49) = v55;
                  if (v292)
                  {
                    goto LABEL_17;
                  }

LABEL_96:
                  v293 = OUTLINED_FUNCTION_19_23();
                  startloop(v293, v294);
                  v295 = OUTLINED_FUNCTION_60_8();
                  lpta_loadpn(v295, v296);
                  OUTLINED_FUNCTION_18_24();
                  lpta_mover();
                  v297 = OUTLINED_FUNCTION_26_21();
                  lpta_storep(v297, v298, v299);
                  v300 = OUTLINED_FUNCTION_25_21();
                  lpta_loadpn(v300, v301);
                  OUTLINED_FUNCTION_18_24();
                  lpta_mover();
                  v302 = OUTLINED_FUNCTION_29_18();
                  lpta_storep(v302, v303, v304);
                  v305 = OUTLINED_FUNCTION_26_21();
                  v307 = forall_to_test(v305, v306, &v391);
                  LODWORD(v49) = v55;
                  if (v307)
                  {
                    goto LABEL_17;
                  }

LABEL_97:
                  v308 = OUTLINED_FUNCTION_19_23();
                  bspush_ca(v308);
                  v309 = OUTLINED_FUNCTION_10_30();
                  if (!lpta_loadp_setscan_r(v309, v310, v311))
                  {
                    v312 = OUTLINED_FUNCTION_18_24();
                    v314 = npush_fld(v312, v313, 5u);
                    if (!v314)
                    {
                      OUTLINED_FUNCTION_65_7(v314, v315, v316, v317, v318, v319, v320, v321);
                      if (!if_testeq(a1, v322, v323, v324, v325, v326, v327, v328))
                      {
                        v332 = advance_tok(a1, v329, v330, v331);
                        LODWORD(v49) = v55;
                        if (!v332)
                        {
LABEL_101:
                          v333 = OUTLINED_FUNCTION_19_23();
                          starttest(v333, v334);
                          v55 = &v388 + 4;
                          v335 = OUTLINED_FUNCTION_26_21();
                          move_i(v335, v336, v337);
                          v338 = OUTLINED_FUNCTION_28_18();
                          mark_word_stress(v338);
                          OUTLINED_FUNCTION_97_4();
                          if (!v339)
                          {
LABEL_102:
                            v340 = forto_adv_upto_r(a1, 40, 41, 43, 2, &v389);
                            LODWORD(v49) = v55;
                            if (!v340)
                            {
LABEL_103:
                              OUTLINED_FUNCTION_94_4(v398);
                              goto LABEL_4;
                            }
                          }
                        }

LABEL_17:
                        v77 = a1[13];
                        if (v77)
                        {
                          v78 = OUTLINED_FUNCTION_34_15(v77);
                          v55 = v79;
                        }

                        else
                        {
                          v78 = vback(a1, v49);
                          v55 = 0;
                        }

                        v68 = v55;
                        v80 = v55;
                        switch(v78)
                        {
                          case 1:
                            v21 = v55;
                            continue;
                          case 2:
                            goto LABEL_96;
                          case 3:
                            v21 = v55;
                            goto LABEL_53;
                          case 4:
                            goto LABEL_12;
                          case 5:
                            v81 = OUTLINED_FUNCTION_3_31();
                            v84 = testFldeq(v81, v82, v83, 34);
                            LODWORD(v49) = v55;
                            if (!v84)
                            {
                              v87 = advance_tok(a1, v55, v85, v86);
                              LODWORD(v49) = v55;
                              if (!v87)
                              {
                                v88 = OUTLINED_FUNCTION_0_34();
                                v92 = testFldeq(v88, v89, v90, v91);
                                LODWORD(v49) = v55;
                                if (!v92)
                                {
                                  advance_tok(a1, v55, v93, v94);
                                  OUTLINED_FUNCTION_72_7();
                                  if (!v95)
                                  {
                                    goto LABEL_15;
                                  }
                                }
                              }
                            }

                            goto LABEL_17;
                          case 6:
                            goto LABEL_15;
                          case 7:
                            v75 = v55;
                            goto LABEL_41;
                          case 8:
                            v131 = v55;
                            goto LABEL_39;
                          case 9:
                            v21 = v55;
                            goto LABEL_54;
                          case 10:
                            goto LABEL_65;
                          case 11:
                            bspop_boa(a1);
                            v96 = OUTLINED_FUNCTION_21_22();
                            v99 = lpta_loadp_setscan_r(v96, v97, v98);
                            LODWORD(v49) = v55;
                            if (v99)
                            {
                              goto LABEL_17;
                            }

                            goto LABEL_27;
                          case 12:
LABEL_27:
                            OUTLINED_FUNCTION_53_8(12, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
                            v100 = OUTLINED_FUNCTION_0_34();
                            v104 = testFldeq(v100, v101, v102, v103);
                            LODWORD(v49) = v55;
                            if (!v104)
                            {
                              v107 = advance_tok(a1, v55, v105, v106);
                              LODWORD(v49) = v55;
                              if (!v107)
                              {
                                goto LABEL_29;
                              }
                            }

                            goto LABEL_17;
                          case 13:
LABEL_29:
                            OUTLINED_FUNCTION_46_9(13, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
                            v108 = OUTLINED_FUNCTION_0_34();
                            v112 = testFldeq(v108, v109, v110, v111);
                            LODWORD(v49) = v55;
                            if (!v112)
                            {
                              v115 = advance_tok(a1, v55, v113, v114);
                              LODWORD(v49) = v55;
                              if (!v115)
                              {
                                goto LABEL_31;
                              }
                            }

                            goto LABEL_17;
                          case 14:
LABEL_31:
                            OUTLINED_FUNCTION_52_8(14, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397);
                            OUTLINED_FUNCTION_19_23();
                            bspush_ca_scan_boa();
                            v116 = OUTLINED_FUNCTION_0_34();
                            v120 = testFldeq(v116, v117, v118, v119);
                            v49 = v55;
                            if (!v120)
                            {
                              goto LABEL_68;
                            }

                            goto LABEL_17;
                          case 15:
                          case 21:
                          case 26:
                          case 31:
                            bspop_boa(a1);
                            goto LABEL_96;
                          case 16:
                            v21 = v55;
                            goto LABEL_55;
                          case 17:
                            goto LABEL_71;
                          case 18:
                            v123 = OUTLINED_FUNCTION_0_34();
                            v127 = testFldeq(v123, v124, v125, v126);
                            LODWORD(v49) = v55;
                            if (!v127)
                            {
                              v130 = advance_tok(a1, v55, v128, v129);
                              v80 = v55;
                              LODWORD(v49) = v55;
                              if (!v130)
                              {
                                goto LABEL_74;
                              }
                            }

                            goto LABEL_17;
                          case 19:
                            goto LABEL_74;
                          case 20:
                            goto LABEL_76;
                          case 22:
                            v21 = v55;
                            goto LABEL_56;
                          case 23:
                            goto LABEL_77;
                          case 24:
                            goto LABEL_81;
                          case 25:
                            goto LABEL_83;
                          case 27:
                            goto LABEL_58;
                          case 28:
                            goto LABEL_106;
                          case 29:
                            goto LABEL_110;
                          case 30:
                            goto LABEL_113;
                          case 32:
                            goto LABEL_59;
                          case 33:
                            goto LABEL_90;
                          case 34:
                            goto LABEL_92;
                          case 35:
                            goto LABEL_93;
                          case 37:
                            v21 = v55;
                            goto LABEL_45;
                          case 38:
                            goto LABEL_49;
                          case 39:
                            goto LABEL_50;
                          case 40:
                            goto LABEL_103;
                          case 41:
                            goto LABEL_101;
                          case 42:
                            goto LABEL_102;
                          case 43:
                            goto LABEL_97;
                          default:
                            goto LABEL_3;
                        }
                      }
                    }
                  }

LABEL_111:
                  LODWORD(v49) = v55;
                  goto LABEL_17;
                }
              }

LABEL_87:
              LODWORD(v49) = v21;
              goto LABEL_17;
            }

            v256 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v256, v257, v258, v259))
            {
              goto LABEL_87;
            }

            if (advance_tok(a1, v260, v261, v262))
            {
              goto LABEL_87;
            }

            v263 = OUTLINED_FUNCTION_3_31();
            if (testFldeq(v263, v264, v265, 34))
            {
              goto LABEL_87;
            }

            advance_tok(a1, v266, v267, v268);
            OUTLINED_FUNCTION_97_4();
            if (v341)
            {
              goto LABEL_17;
            }

LABEL_106:
            OUTLINED_FUNCTION_53_8(28, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
            v342 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v342, v343, v344, v345))
            {
              goto LABEL_111;
            }

            if (advance_tok(a1, v346, v347, v348))
            {
              goto LABEL_111;
            }

            v349 = OUTLINED_FUNCTION_3_31();
            if (testFldeq(v349, v350, v351, 34))
            {
              goto LABEL_111;
            }

            v355 = advance_tok(a1, v352, v353, v354);
            LODWORD(v49) = v55;
            if (v355)
            {
              goto LABEL_17;
            }

LABEL_110:
            OUTLINED_FUNCTION_46_9(29, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
            v356 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v356, v357, v358, v359))
            {
              goto LABEL_111;
            }

            v363 = advance_tok(a1, v360, v361, v362);
            LODWORD(v49) = v55;
            if (v363)
            {
              goto LABEL_17;
            }

LABEL_113:
            OUTLINED_FUNCTION_52_8(30, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397);
          }

          else
          {
LABEL_77:
            OUTLINED_FUNCTION_53_8(23, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
            v234 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v234, v235, v236, v237))
            {
              goto LABEL_111;
            }

            if (advance_tok(a1, v238, v239, v240))
            {
              goto LABEL_111;
            }

            v241 = OUTLINED_FUNCTION_3_31();
            if (testFldeq(v241, v242, v243, 34))
            {
              goto LABEL_111;
            }

            v247 = advance_tok(a1, v244, v245, v246);
            LODWORD(v49) = v55;
            if (v247)
            {
              goto LABEL_17;
            }

LABEL_81:
            OUTLINED_FUNCTION_46_9(24, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
            v248 = OUTLINED_FUNCTION_0_34();
            if (testFldeq(v248, v249, v250, v251))
            {
              goto LABEL_111;
            }

            v255 = advance_tok(a1, v252, v253, v254);
            LODWORD(v49) = v55;
            if (v255)
            {
              goto LABEL_17;
            }

LABEL_83:
            OUTLINED_FUNCTION_52_8(25, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397);
          }

          OUTLINED_FUNCTION_19_23();
          bspush_ca_scan_boa();
          v204 = OUTLINED_FUNCTION_3_31();
          v207 = 34;
LABEL_67:
          testFldeq(v204, v205, v206, v207);
          OUTLINED_FUNCTION_96_4();
          if (!v208)
          {
LABEL_68:
            advance_tok(a1, v49, v121, v122);
            OUTLINED_FUNCTION_95_4();
          }

          goto LABEL_17;
        }

        v209 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v209, v210, v211, v212))
        {
          goto LABEL_87;
        }

        advance_tok(a1, v213, v214, v215);
        OUTLINED_FUNCTION_97_4();
        if (v216)
        {
          goto LABEL_17;
        }

LABEL_71:
        OUTLINED_FUNCTION_53_8(17, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
        v217 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v217, v218, v219, v220) || advance_tok(a1, v221, v222, v223))
        {
          goto LABEL_111;
        }

        v224 = OUTLINED_FUNCTION_19_23();
        bspush_ca_scan(v224, v225);
        v80 = v55;
LABEL_74:
        LODWORD(v55) = v80;
        OUTLINED_FUNCTION_46_9(19, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
        v226 = OUTLINED_FUNCTION_0_34();
        if (testFldeq(v226, v227, v228, v229))
        {
          goto LABEL_111;
        }

        v233 = advance_tok(a1, v230, v231, v232);
        LODWORD(v49) = v55;
        if (v233)
        {
          goto LABEL_17;
        }

LABEL_76:
        OUTLINED_FUNCTION_52_8(20, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397);
      }

      else
      {
LABEL_65:
        v201 = OUTLINED_FUNCTION_39_11();
        savescptr(v201, v202, v203);
      }

      break;
    }

    OUTLINED_FUNCTION_19_23();
    bspush_ca_scan_boa();
    v204 = OUTLINED_FUNCTION_0_34();
    goto LABEL_67;
  }

  v29 = OUTLINED_FUNCTION_18_24();
  v31 = npush_fld(v29, v30, 5u);
  if (v31 || (OUTLINED_FUNCTION_65_7(v31, v32, v33, v34, v35, v36, v37, v38), if_testgt(a1, v39, v40, v41, v42, v43, v44, v45)) || advance_tok(a1, v46, v47, v48))
  {
    LODWORD(v49) = 0;
    goto LABEL_17;
  }

LABEL_3:
  a3 = 94;
LABEL_4:
  vretproc(a1);
  return a3;
}

uint64_t destress_compounds(uint64_t a1)
{
  OUTLINED_FUNCTION_22_22();
  v65 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(&v59, v3);
  OUTLINED_FUNCTION_32_16();
  OUTLINED_FUNCTION_100_2(v4, v5);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_8();
  if (OUTLINED_FUNCTION_87_5(v6, v7, v8, v9, v10))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_27_19();
  v12 = OUTLINED_FUNCTION_28_18();
  OUTLINED_FUNCTION_64_7(v12, v13);
  v60 = 65532;
  fence_30(v1, 0, &null_str_9);
  v14 = OUTLINED_FUNCTION_31_17();
  fence_30(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_93_4();
  starttest(v17, v18);
  v19 = OUTLINED_FUNCTION_29_18();
  if (lpta_loadp_setscan_r(v19, v20, 2))
  {
LABEL_9:
    v41 = OUTLINED_FUNCTION_19_23();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_10_30();
    if (lpta_loadp_setscan_r(v43, v44, v45))
    {
LABEL_12:
      v49 = OUTLINED_FUNCTION_67_7();
      if (followed_by_hyphen(v49))
      {
        goto LABEL_3;
      }

LABEL_13:
      v50 = OUTLINED_FUNCTION_19_23();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_26_21();
      move_i(v52, v53, 0);
      v54 = OUTLINED_FUNCTION_37_13();
      if (!mark_word_stress(v54))
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    v46 = OUTLINED_FUNCTION_6_30();
    if (!testFldeq(v46, v47, v48, 2))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_18_24();
    v23 = npush_fld(v21, v22, 5u);
    if (!v23)
    {
      OUTLINED_FUNCTION_65_7(v23, v24, v25, v26, v27, v28, v29, v30);
      if (!if_testgt(v1, v31, v32, v33, v34, v35, v36, v37))
      {
LABEL_7:
        if (!advance_tok(v1, v38, v39, v40))
        {
          goto LABEL_3;
        }
      }
    }
  }

LABEL_14:
  v55 = *(v1 + 104);
  if (v55)
  {
    v56 = OUTLINED_FUNCTION_34_15(v55);
  }

  else
  {
    v57 = OUTLINED_FUNCTION_47_9();
    v56 = vback(v57, v58);
  }

  switch(v56)
  {
    case 1:
      goto LABEL_9;
    case 2:
      goto LABEL_13;
    case 3:
      goto LABEL_12;
    default:
      break;
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_90_5();
}

void destress_nps(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_7();
  v876 = v4;
  v878 = v3;
  v899 = *MEMORY[0x277D85DE8];
  v890 = 0u;
  v891 = 0u;
  v894[0] = 0;
  v894[1] = 0;
  v892 = 0;
  v893 = 0;
  v889 = 0;
  v887 = 0;
  v888 = 0;
  v886[0] = 0;
  v886[1] = 0;
  v885[0] = 0;
  v885[1] = 0;
  v884[0] = 0;
  v884[1] = 0;
  v883[0] = 0;
  v883[1] = 0;
  v882 = 0;
  v881[0] = 0;
  v881[1] = 0;
  v880[0] = 0;
  v880[1] = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(v879, v5);
  OUTLINED_FUNCTION_32_16();
  bzero(v898, v6);
  if (!setjmp(v898) && !ventproc(v878, v879, v897, v896, v895, v898))
  {
    OUTLINED_FUNCTION_89_5(v878, v894);
    get_parm(v878, &v892, v876, -6);
    v891 = 0uLL;
    LODWORD(v890) = -65534;
    v889 = 65532;
    push_ptr_init(v878, &v887);
    push_ptr_init(v878, v886);
    push_ptr_init(v878, v885);
    push_ptr_init(v878, v884);
    push_ptr_init(v878, v883);
    v882 = 65532;
    push_ptr_init(v878, v881);
    push_ptr_init(v878, v880);
    fence_30(v878, 0, &null_str_9);
    fence_30(v878, 1, &_MergedGlobals_27);
    starttest(v878, 1);
    v7 = lpta_loadp_setscan_r(v878, v894, 2);
    if (!v7)
    {
      v14 = OUTLINED_FUNCTION_23_22(v7, 2, v8, v9, v10, v11, v12, v13, v616, v619, v622, v641, v660, v679, v698, v717, v736, v755, v774, v793, v812, v831, v852, v876, v878);
      bspush_ca_scan(v14, v15);
      if (testFldeq(65532, 2u, 2, 1))
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v22 = advance_tok(65532, v16, v17, v18);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v21 = 0;
        v19 = 0;
        v20 = 0;
        if (!v22)
        {
LABEL_11:
          v26 = v25;
          v27 = v24;
          v28 = v23;
          bspush_ca_scan_boa();
          if (testFldeq(v878, 2u, 2, 6))
          {
            v20 = v26;
          }

          else
          {
            v20 = 1;
          }

          v21 = v28;
          v19 = v27;
        }
      }

      v29 = v21;
      v30 = v19;
      LODWORD(v31) = v20;
      while (1)
      {
        v32 = v31;
        v33 = v29;
        v34 = *(v878 + 104);
        v35 = v33;
        LODWORD(v36) = v30;
        if (v34)
        {
          *(v878 + 104) = 0;
          v37 = v34;
        }

        else
        {
          v37 = vback(v878, v31);
          v32 = 0;
        }

        HIDWORD(v832) = v35;
        v853 = __PAIR64__(v32, v36);
        v38 = v37 - 2;
        v40 = v35;
        v39 = v36;
        LODWORD(v832) = v35;
        v813 = __PAIR64__(v35, v36);
        HIDWORD(v756) = v36;
        LODWORD(v775) = v35;
        HIDWORD(v775) = v35;
        v794 = __PAIR64__(v36, v35);
        LODWORD(v737) = v36;
        HIDWORD(v737) = v36;
        LODWORD(v756) = v36;
        HIDWORD(v699) = v35;
        LODWORD(v718) = v35;
        LODWORD(v699) = v35;
        HIDWORD(v642) = v36;
        LODWORD(v661) = v36;
        HIDWORD(v718) = v35;
        HIDWORD(v661) = v36;
        v680 = __PAIR64__(v36, v35);
        HIDWORD(v623) = v35;
        LODWORD(v642) = v36;
        v31 = v35;
        v41 = v36;
        HIDWORD(v620) = v36;
        LODWORD(v623) = v35;
        v42 = v35;
        v43 = v36;
        v44 = v35;
        v45 = v36;
        v46 = v36;
        v47 = v35;
        v48 = v36;
        v49 = v35;
        v50 = v36;
        v51 = v35;
        v52 = v36;
        v53 = v35;
        v54 = v36;
        v55 = v35;
        v56 = v35;
        v57 = v36;
        LODWORD(v58) = v35;
        v36 = v36;
        v59 = v36;
        v60 = v35;
        v61 = v36;
        switch(v38)
        {
          case 0:
            v23 = HIDWORD(v832);
            v24 = v36;
            v25 = HIDWORD(v853);
            goto LABEL_11;
          case 1:
            v62 = OUTLINED_FUNCTION_23_22(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspop_boa(v62);
            OUTLINED_FUNCTION_17_25();
            bspush_ca_scan_boa();
            v63 = OUTLINED_FUNCTION_2_32();
            goto LABEL_48;
          case 2:
            v309 = OUTLINED_FUNCTION_23_22(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspop_boa(v309);
            v310 = OUTLINED_FUNCTION_19_23();
            bspush_ca_scan(v310, v311);
            v188 = OUTLINED_FUNCTION_4_30();
            goto LABEL_72;
          case 3:
            v188 = OUTLINED_FUNCTION_42_9(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            v190 = 2;
LABEL_72:
            testFldeq(v188, v189, v190, 2);
            OUTLINED_FUNCTION_24_22();
            if (!v48)
            {
              goto LABEL_73;
            }

            continue;
          case 4:
LABEL_73:
            v312 = OUTLINED_FUNCTION_42_9(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            npush_fld(v312, v313, 5u);
            OUTLINED_FUNCTION_24_22();
            if (!v314)
            {
              v320 = OUTLINED_FUNCTION_23_22(v314, 0, v31, v315, v316, v317, v318, v319, v617, v620, v634, v653, v672, v691, v710, v729, v748, v767, v786, v805, v824, v843, v865, v877, v878);
              npush_i(v320);
              if_testle(v36, v321, v322, v323, v324, v325, v326, v327);
              OUTLINED_FUNCTION_24_22();
              if (!v330)
              {
                advance_tok(v878, v328, v31, v329);
                OUTLINED_FUNCTION_24_22();
                if (!v331)
                {
                  savetok(v878, &v890);
                  OUTLINED_FUNCTION_24_22();
                  if (!v48)
                  {
                    goto LABEL_77;
                  }
                }
              }
            }

            continue;
          case 5:
LABEL_77:
            v332 = OUTLINED_FUNCTION_23_22(v48, 7, &v887, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            savescptr(v332, v333, v334);
            v335 = OUTLINED_FUNCTION_19_23();
            startloop(v335, v336);
            HIDWORD(v794) = 1;
            HIDWORD(v813) = 1;
            goto LABEL_88;
          case 6:
          case 8:
          case 14:
            goto LABEL_91;
          case 7:
            goto LABEL_89;
          case 9:
            v197 = OUTLINED_FUNCTION_23_22(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspop_boa(v197);
            OUTLINED_FUNCTION_84_5();
            bspush_ca_scan_boa();
            v63 = OUTLINED_FUNCTION_3_31();
            v66 = 12;
            goto LABEL_48;
          case 10:
            v356 = OUTLINED_FUNCTION_23_22(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspop_boa(v356);
            v357 = OUTLINED_FUNCTION_1_32();
            testFldeq(v357, v358, v359, v360);
            OUTLINED_FUNCTION_24_22();
            if (v361)
            {
              continue;
            }

            v368 = OUTLINED_FUNCTION_42_9(v361, v362, v31, v363, v364, v365, v366, v367, v617, v620, v636, v655, v674, v693, v712, v731, v750, v769, v788, v807, v826, v845, v867, v877, v878);
            npush_fld(v368, v369, 4u);
            OUTLINED_FUNCTION_24_22();
            if (v370)
            {
              continue;
            }

            WORD1(v890) = 4;
            v376 = OUTLINED_FUNCTION_23_22(v370, &v890, v31, v371, v372, v373, v374, v375, v617, v620, v637, v656, v675, v694, v713, v732, v751, v770, v789, v808, v827, v846, v868, v877, v878);
            npush_v(v376, v377, v378, v379, v380, v381, v382, v383);
            if_testeq(v36, v384, v385, v386, v387, v388, v389, v390);
            OUTLINED_FUNCTION_24_22();
            if (v393)
            {
              continue;
            }

            advance_tok(v878, v391, v31, v392);
            OUTLINED_FUNCTION_24_22();
            if (v394)
            {
              continue;
            }

            goto LABEL_86;
          case 11:
LABEL_86:
            savescptr(v878, 13, &v887);
            HIDWORD(v756) = v853 + 1;
            goto LABEL_87;
          case 12:
LABEL_87:
            while_iterate(v878, 8, 9);
            HIDWORD(v813) = HIDWORD(v832);
            HIDWORD(v794) = HIDWORD(v756);
            goto LABEL_88;
          case 13:
LABEL_88:
            bspush_ca(v878);
            LODWORD(v832) = HIDWORD(v813);
            LODWORD(v813) = HIDWORD(v794);
            OUTLINED_FUNCTION_80_6();
            v31 = HIDWORD(v853);
            if (v395 > 3)
            {
              continue;
            }

LABEL_89:
            v396 = v813;
            v397 = v832;
            v398 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            starttest(v398, v399);
            v400 = OUTLINED_FUNCTION_21_22();
            if (lpta_loadp_setscan_r(v400, v401, v402))
            {
              HIDWORD(v775) = v397;
              HIDWORD(v737) = v396;
LABEL_91:
              v223 = HIDWORD(v737);
              v224 = HIDWORD(v775);
              OUTLINED_FUNCTION_61_8();
              startloop(v878, v403);
LABEL_92:
              LODWORD(v775) = v224;
              LODWORD(v737) = v223;
LABEL_93:
              v36 = v737;
              v61 = v775;
              OUTLINED_FUNCTION_61_8();
              bspush_ca(v878);
              LODWORD(v794) = v775;
              LODWORD(v756) = v737;
              OUTLINED_FUNCTION_80_6();
              v31 = HIDWORD(v853);
              if (v404 <= 2)
              {
LABEL_94:
                v396 = v756;
                v405 = v794;
                v406 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                starttest(v406, v407);
                v408 = OUTLINED_FUNCTION_21_22();
                v48 = lpta_loadp_setscan_r(v408, v409, v410);
                if (v48)
                {
                  HIDWORD(v699) = v405;
                  LODWORD(v661) = v396;
LABEL_96:
                  v411 = v661;
                  v412 = HIDWORD(v699);
                  v893 = v888;
                  if (v661 <= 2)
                  {
                    v486 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                    starttest(v486, v487);
                    if (v411 != 2)
                    {
                      LODWORD(v699) = v412;
                      HIDWORD(v661) = v411;
                      goto LABEL_127;
                    }

                    v48 = lpta_loadp_setscan_l(v36, &v892, 2);
                    HIDWORD(v718) = v412;
                    HIDWORD(v661) = 2;
                    HIDWORD(v642) = 2;
                    LODWORD(v699) = v412;
                    if (v48)
                    {
LABEL_127:
                      v502 = HIDWORD(v661);
                      v503 = v699;
                      v504 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                      starttest(v504, v505);
                      v506 = OUTLINED_FUNCTION_21_22();
                      v48 = lpta_loadp_setscan_l(v506, v507, v508);
                      if (v48)
                      {
                        v31 = v503;
                        v41 = v502;
LABEL_129:
                        v509 = v41;
                        v510 = v31;
                        v511 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                        starttest(v511, v512);
                        v513 = OUTLINED_FUNCTION_21_22();
                        v48 = lpta_loadp_setscan_l(v513, v514, v515);
                        if (v48)
                        {
                          v42 = v510;
                          v43 = v509;
LABEL_131:
                          v516 = v43;
                          v517 = v42;
                          v518 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                          starttest(v518, v519);
                          v520 = OUTLINED_FUNCTION_21_22();
                          v523 = lpta_loadp_setscan_r(v520, v521, v522);
                          if (v523)
                          {
LABEL_162:
                            *(v877 + 8) = v893;
                            vretproc(v878);
                            goto LABEL_5;
                          }

                          v531 = OUTLINED_FUNCTION_9_30(v523, v524, v525, v526, v527, v528, v529, v530, v618, v621, v639, v658, v677, v696, v715, v734, v753, v772, v791, v810, v829, v848, v870, v877, v878);
                          bspush_ca_scan(v531, v532);
                          v533 = OUTLINED_FUNCTION_6_30();
                          v536 = testFldeq(v533, v534, v535, 1);
                          v29 = v517;
                          v30 = v516;
                          LODWORD(v31) = HIDWORD(v853);
                          if (!v536)
                          {
                            v539 = advance_tok(v878, v537, HIDWORD(v853), v538);
                            v44 = v517;
                            v29 = v517;
                            v30 = v516;
                            LODWORD(v31) = HIDWORD(v853);
                            if (!v539)
                            {
LABEL_134:
                              v540 = v44;
                              OUTLINED_FUNCTION_83_5();
                              savescptr(v878, v541, v542);
                              bspush_ca_scan(v878, 42);
                              testFldeq(v878, 2u, 3, 8);
                              HIDWORD(v623) = v540;
                              OUTLINED_FUNCTION_80_6();
LABEL_135:
                              v31 = HIDWORD(v853);
                              if (!v118)
                              {
LABEL_136:
                                v396 = v46;
                                v405 = HIDWORD(v623);
                                advance_tok(v878, v46, v31, v45);
                                OUTLINED_FUNCTION_11_29();
                                if (!v543)
                                {
                                  OUTLINED_FUNCTION_7_30();
                                  testFldeq(v544, v545, v546, v547);
                                  OUTLINED_FUNCTION_11_29();
                                  if (!v548)
                                  {
                                    OUTLINED_FUNCTION_9_30(v548, v549, v31, v550, v551, v552, v553, v554, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                                    bspush_ca_scan_boa();
                                    v498 = OUTLINED_FUNCTION_3_31();
                                    v501 = 6;
                                    goto LABEL_139;
                                  }
                                }
                              }
                            }
                          }
                        }

                        else
                        {
                          v598 = OUTLINED_FUNCTION_6_30();
                          testFldeq(v598, v599, v600, 2);
                          OUTLINED_FUNCTION_11_29();
                          if (!v603)
                          {
                            advance_tok(v878, v601, v31, v602);
                            OUTLINED_FUNCTION_11_29();
                            if (!v604)
                            {
                              OUTLINED_FUNCTION_7_30();
                              testFldeq(v605, v606, v607, v608);
                              OUTLINED_FUNCTION_11_29();
                              if (!v611)
                              {
                                advance_tok(v878, v609, v31, v610);
                                OUTLINED_FUNCTION_11_29();
                                if (!v612)
                                {
LABEL_157:
                                  savescptr(v878, 39, v886);
                                  starttest_e(v878, 40);
                                  move_i(v878, &v882, 0);
                                  mark_word_stress(v878);
                                  OUTLINED_FUNCTION_80_6();
                                  goto LABEL_158;
                                }
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        v555 = OUTLINED_FUNCTION_1_32();
                        testFldeq(v555, v556, v557, v558);
                        OUTLINED_FUNCTION_11_29();
                        if (!v561)
                        {
                          advance_tok(v878, v559, v31, v560);
                          LODWORD(v680) = v503;
                          LODWORD(v642) = v502;
                          OUTLINED_FUNCTION_11_29();
                          if (!v562)
                          {
LABEL_145:
                            v563 = v642;
                            v564 = v680;
                            OUTLINED_FUNCTION_83_5();
                            v573 = OUTLINED_FUNCTION_23_22(v565, v566, v567, v568, v569, v570, v571, v572, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                            savescptr(v573, v574, v575);
                            v576 = OUTLINED_FUNCTION_3_31();
                            v579 = testFldeq(v576, v577, v578, 13);
                            v29 = v564;
                            v30 = v563;
                            LODWORD(v31) = HIDWORD(v871);
                            if (!v579)
                            {
                              v582 = advance_tok(v878, v580, HIDWORD(v871), v581);
                              v29 = v564;
                              v30 = v563;
                              LODWORD(v31) = HIDWORD(v871);
                              if (!v582)
                              {
                                v589 = OUTLINED_FUNCTION_9_30(v582, v583, HIDWORD(v871), v584, v585, v586, v587, v588, v617, v620, v640, v659, v678, v697, v716, v735, v754, v773, v792, v811, v830, v849, v871, v877, v878);
                                starttest_e(v589, v590);
                                v591 = OUTLINED_FUNCTION_26_21();
                                move_i(v591, v592, v593);
                                v594 = OUTLINED_FUNCTION_51_8();
                                v115 = mark_word_stress(v594);
                                v29 = v564;
                                v30 = v563;
LABEL_158:
                                LODWORD(v31) = HIDWORD(v853);
                                if (!v115)
                                {
                                  goto LABEL_162;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
LABEL_123:
                      savescptr(v878, 27, v884);
                      bspush_ca_scan_boa();
                      testFldeq(v878, 2u, 3, 37);
                      OUTLINED_FUNCTION_80_6();
                    }
                  }

                  else
                  {
                    v47 = HIDWORD(v699);
                    v48 = v661;
LABEL_98:
                    v54 = v48;
                    v413 = v47;
                    v414 = OUTLINED_FUNCTION_38_12(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                    starttest(v414, v415);
                    v48 = lpta_loadp_setscan_r(v61, v894, 2);
                    v49 = v413;
                    v50 = v54;
                    v53 = v413;
                    if (v48)
                    {
                      goto LABEL_104;
                    }

LABEL_99:
                    v416 = v50;
                    v417 = OUTLINED_FUNCTION_38_12(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                    bspush_ca_scan(v417, v418);
                    npush_fld(v61, 2u, 5u);
                    OUTLINED_FUNCTION_56_8();
                    if (!v419)
                    {
                      v61 = v878;
                      npush_i(v878);
                      if_testle(v878, v420, v421, v422, v423, v424, v425, v426);
                      OUTLINED_FUNCTION_56_8();
                      if (!v429)
                      {
                        advance_tok(v878, v427, v31, v428);
                        OUTLINED_FUNCTION_56_8();
                        if (!v430)
                        {
                          advanc(v878);
                          v52 = v416;
                          OUTLINED_FUNCTION_56_8();
                          if (!v431)
                          {
LABEL_103:
                            v54 = v52;
                            v432 = v51;
                            OUTLINED_FUNCTION_83_5();
                            savescptr(v878, v433, v434);
                            v53 = v432;
LABEL_104:
                            v36 = v54;
                            v58 = v53;
                            if (v53 < 3 || (v435 = OUTLINED_FUNCTION_38_12(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878), starttest_l(v435, v436), v48 = lpta_loadp_setscan_r(v61, v886, 2), v55 = v58, v48))
                            {
LABEL_111:
                              v39 = v36;
                              v40 = v58;
                              v463 = OUTLINED_FUNCTION_38_12(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                              starttest(v463, v464);
                              v48 = lpta_loadp_setscan_l(v61, &v887, 2);
                              v59 = v36;
                              if (v48)
                              {
                                goto LABEL_117;
                              }

LABEL_112:
                              v465 = OUTLINED_FUNCTION_38_12(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                              bspush_ca_scan(v465, v466);
                              npush_fld(v61, 2u, 5u);
                              OUTLINED_FUNCTION_86_5();
                              if (!v467)
                              {
                                npush_i(v878);
                                if_testle(v878, v468, v469, v470, v471, v472, v473, v474);
                                OUTLINED_FUNCTION_86_5();
                                if (!v477)
                                {
                                  advance_tok(v878, v475, v31, v476);
                                  OUTLINED_FUNCTION_86_5();
                                  if (!v478)
                                  {
                                    advanc(v878);
                                    LODWORD(v61) = v59;
                                    OUTLINED_FUNCTION_86_5();
                                    v60 = v479;
                                    if (!v480)
                                    {
LABEL_116:
                                      v39 = v61;
                                      v40 = v60;
                                      savescptr(v878, 57, v885);
LABEL_117:
                                      v481 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                                      starttest(v481, v482);
                                      v483 = OUTLINED_FUNCTION_19_23();
                                      bspush_ca(v483);
                                      lpta_loadpn(v36, v886);
                                      rpta_loadpn(v36, v36 + 3344);
                                      compare_ptas(v36);
                                      OUTLINED_FUNCTION_11_29();
                                      if (!v484)
                                      {
                                        v485 = testeq(v878);
                                        v29 = v40;
                                        v30 = v39;
LABEL_119:
                                        LODWORD(v31) = v874;
                                        if (!v485)
                                        {
                                          goto LABEL_4;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            else
                            {
LABEL_106:
                              v437 = v55;
                              v438 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                              bspush_ca_scan(v438, v439);
                              v440 = OUTLINED_FUNCTION_18_24();
                              npush_fld(v440, v441, 5u);
                              OUTLINED_FUNCTION_11_29();
                              if (!v442)
                              {
                                v448 = OUTLINED_FUNCTION_23_22(v442, 0, v31, v443, v444, v445, v446, v447, v617, v620, v638, v657, v676, v695, v714, v733, v752, v771, v790, v809, v828, v847, v869, v877, v878);
                                npush_i(v448);
                                if_testle(v36, v449, v450, v451, v452, v453, v454, v455);
                                OUTLINED_FUNCTION_11_29();
                                if (!v458)
                                {
                                  advance_tok(v878, v456, v31, v457);
                                  OUTLINED_FUNCTION_11_29();
                                  if (!v459)
                                  {
                                    advanc(v878);
                                    v56 = v437;
                                    OUTLINED_FUNCTION_11_29();
                                    if (!v460)
                                    {
LABEL_110:
                                      v36 = v57;
                                      LODWORD(v58) = v56;
                                      OUTLINED_FUNCTION_83_5();
                                      savescptr(v878, v461, v462);
                                      goto LABEL_111;
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
                  v488 = OUTLINED_FUNCTION_4_30();
                  testFldeq(v488, v489, v490, 9);
                  OUTLINED_FUNCTION_11_29();
                  if (!v491)
                  {
                    OUTLINED_FUNCTION_9_30(v491, v492, v31, v493, v494, v495, v496, v497, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
                    bspush_ca_scan_boa();
                    v498 = OUTLINED_FUNCTION_6_30();
                    v501 = 1;
LABEL_139:
                    if (testFldeq(v498, v499, v500, v501))
                    {
                      LODWORD(v31) = v875;
                    }

                    else
                    {
                      LODWORD(v31) = 1;
                    }

                    v29 = v405;
                    goto LABEL_152;
                  }
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_19_23();
              bspush_ca_scan_boa();
              v595 = OUTLINED_FUNCTION_6_30();
              if (testFldeq(v595, v596, v597, 6))
              {
                LODWORD(v31) = HIDWORD(v853);
              }

              else
              {
                LODWORD(v31) = 1;
              }

              v29 = v397;
LABEL_152:
              v30 = v396;
            }

            break;
          case 15:
          case 17:
            goto LABEL_96;
          case 16:
            goto LABEL_94;
          case 18:
            v138 = OUTLINED_FUNCTION_23_22(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspop_boa(v138);
            v139 = OUTLINED_FUNCTION_18_24();
            npush_fld(v139, v140, 5u);
            OUTLINED_FUNCTION_24_22();
            if (v141)
            {
              continue;
            }

            v147 = OUTLINED_FUNCTION_23_22(v141, 0, v31, v142, v143, v144, v145, v146, v617, v620, v627, v646, v665, v684, v703, v722, v741, v760, v779, v798, v817, v836, v858, v877, v878);
            npush_i(v147);
            if_testgt(v36, v148, v149, v150, v151, v152, v153, v154);
            OUTLINED_FUNCTION_24_22();
            if (v157)
            {
              continue;
            }

            advance_tok(v878, v155, v31, v156);
            OUTLINED_FUNCTION_24_22();
            if (v158)
            {
              continue;
            }

            OUTLINED_FUNCTION_7_30();
            testFldeq(v159, v160, v161, v162);
            OUTLINED_FUNCTION_24_22();
            if (v163)
            {
              continue;
            }

            OUTLINED_FUNCTION_9_30(v163, v164, v31, v165, v166, v167, v168, v169, v617, v620, v628, v647, v666, v685, v704, v723, v742, v761, v780, v799, v818, v837, v859, v877, v878);
            bspush_ca_scan_boa();
            v63 = OUTLINED_FUNCTION_6_30();
            v66 = 6;
LABEL_48:
            v198 = testFldeq(v63, v64, v65, v66);
            goto LABEL_49;
          case 19:
            v218 = OUTLINED_FUNCTION_23_22(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspop_boa(v218);
            advance_tok(v36, v219, v220, v221);
            OUTLINED_FUNCTION_24_22();
            if (v222)
            {
              continue;
            }

            goto LABEL_58;
          case 20:
LABEL_58:
            savescptr(v878, 22, &v887);
            LODWORD(v718) = HIDWORD(v832) + 1;
            HIDWORD(v680) = v853 + 1;
            goto LABEL_59;
          case 21:
LABEL_59:
            v223 = HIDWORD(v680);
            v224 = v718;
            OUTLINED_FUNCTION_61_8();
            while_iterate(v878, v225, 18);
            goto LABEL_92;
          case 22:
            goto LABEL_93;
          case 23:
            goto LABEL_98;
          case 24:
            goto LABEL_127;
          case 25:
            goto LABEL_123;
          case 26:
            v226 = OUTLINED_FUNCTION_23_22(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspop_boa(v226);
            v227 = OUTLINED_FUNCTION_18_24();
            npush_fld(v227, v228, 5u);
            OUTLINED_FUNCTION_24_22();
            if (v229)
            {
              continue;
            }

            v235 = OUTLINED_FUNCTION_23_22(v229, 0, v31, v230, v231, v232, v233, v234, v617, v620, v630, v649, v668, v687, v706, v725, v744, v763, v782, v801, v820, v839, v861, v877, v878);
            npush_i(v235);
            if_testlt(v36, v236, v237, v238, v239, v240, v241, v242);
            OUTLINED_FUNCTION_24_22();
            if (v245)
            {
              continue;
            }

            advance_tok(v878, v243, v31, v244);
            OUTLINED_FUNCTION_24_22();
            if (v246)
            {
              continue;
            }

            v253 = OUTLINED_FUNCTION_42_9(v246, v247, v31, v248, v249, v250, v251, v252, v617, v620, v631, v650, v669, v688, v707, v726, v745, v764, v783, v802, v821, v840, v862, v877, v878);
            testFldeq(v253, v254, 1, 9);
            OUTLINED_FUNCTION_24_22();
            if (v257)
            {
              continue;
            }

            advance_tok(v878, v255, v31, v256);
            OUTLINED_FUNCTION_24_22();
            if (v48)
            {
              continue;
            }

            goto LABEL_65;
          case 27:
LABEL_65:
            v258 = OUTLINED_FUNCTION_23_22(v48, 29, v885, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            savescptr(v258, v259, v260);
            v261 = OUTLINED_FUNCTION_18_24();
            npush_fld(v261, v262, 5u);
            OUTLINED_FUNCTION_24_22();
            if (!v263)
            {
              v269 = OUTLINED_FUNCTION_23_22(v263, 0, v31, v264, v265, v266, v267, v268, v617, v620, v632, v651, v670, v689, v708, v727, v746, v765, v784, v803, v822, v841, v863, v877, v878);
              npush_i(v269);
              if_testlt(v36, v270, v271, v272, v273, v274, v275, v276);
              OUTLINED_FUNCTION_24_22();
              if (!v279)
              {
                advance_tok(v878, v277, v31, v278);
                OUTLINED_FUNCTION_24_22();
                if (!v280)
                {
                  goto LABEL_68;
                }
              }
            }

            continue;
          case 28:
LABEL_68:
            OUTLINED_FUNCTION_83_5();
            v289 = OUTLINED_FUNCTION_23_22(v281, v282, v283, v284, v285, v286, v287, v288, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            savescptr(v289, v290, v291);
            v292 = OUTLINED_FUNCTION_21_22();
            lpta_loadp_setscan_r(v292, v293, v294);
            OUTLINED_FUNCTION_24_22();
            if (!v295)
            {
              OUTLINED_FUNCTION_9_30(v295, v296, v31, v297, v298, v299, v300, v301, v617, v620, v633, v652, v671, v690, v709, v728, v747, v766, v785, v804, v823, v842, v864, v877, v878);
              bspush_ca_scan_boa();
              v302 = OUTLINED_FUNCTION_1_32();
              testFldeq(v302, v303, v304, v305);
              OUTLINED_FUNCTION_24_22();
              if (!v308)
              {
                v198 = advance_tok(v878, v306, v31, v307);
LABEL_49:
                v30 = v854;
                if (v198)
                {
                  LODWORD(v31) = v873;
                }

                else
                {
                  LODWORD(v31) = 1;
                }

                v29 = v850;
              }
            }

            continue;
          case 29:
            v170 = OUTLINED_FUNCTION_23_22(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspop_boa(v170);
            v171 = OUTLINED_FUNCTION_19_23();
            starttest(v171, v172);
            lpta_loadpn(v36, v886);
            lpta_ctxtl();
            v173 = OUTLINED_FUNCTION_26_21();
            lpta_storep(v173, v174, v175);
            lpta_loadpn(v36, v885);
            lpta_ctxtr();
            v176 = OUTLINED_FUNCTION_29_18();
            lpta_storep(v176, v177, v178);
            v179 = OUTLINED_FUNCTION_51_8();
            estimate_por_nsylls(v179, v180, v181, v883);
            OUTLINED_FUNCTION_24_22();
            if (v48)
            {
              continue;
            }

            goto LABEL_40;
          case 30:
LABEL_40:
            if (SHIWORD(v889) <= 3)
            {
              goto LABEL_41;
            }

            goto LABEL_162;
          case 31:
          case 32:
          case 35:
          case 38:
          case 43:
          case 59:
            goto LABEL_162;
          case 33:
            goto LABEL_129;
          case 34:
            goto LABEL_145;
          case 36:
            goto LABEL_131;
          case 37:
            goto LABEL_157;
          case 39:
            goto LABEL_134;
          case 40:
            v116 = OUTLINED_FUNCTION_42_9(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            v118 = testFldeq(v116, v117, 3, 37);
            v29 = HIDWORD(v832);
            v30 = v853;
            HIDWORD(v623) = HIDWORD(v832);
            v46 = v853;
            goto LABEL_135;
          case 41:
            goto LABEL_136;
          case 42:
            v191 = OUTLINED_FUNCTION_23_22(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspop_boa(v191);
            advance_tok(v36, v192, v193, v194);
            OUTLINED_FUNCTION_24_22();
            if (v196)
            {
              continue;
            }

            *(v878 + 136) = 1;
            *(v878 + 112) = v893;
            *(v878 + 128) = 0;
            test_ptr(v878, v195, v31);
            OUTLINED_FUNCTION_24_22();
            if (v48)
            {
              continue;
            }

LABEL_41:
            v182 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            starttest_e(v182, v183);
            v184 = OUTLINED_FUNCTION_26_21();
            move_i(v184, v185, v186);
            v187 = OUTLINED_FUNCTION_51_8();
            v115 = mark_word_stress(v187);
            goto LABEL_42;
          case 44:
            goto LABEL_104;
          case 45:
            goto LABEL_99;
          case 46:
            v337 = OUTLINED_FUNCTION_42_9(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            npush_fld(v337, v338, 5u);
            OUTLINED_FUNCTION_24_22();
            if (v339)
            {
              continue;
            }

            v345 = OUTLINED_FUNCTION_23_22(v339, 0, v31, v340, v341, v342, v343, v344, v617, v620, v635, v654, v673, v692, v711, v730, v749, v768, v787, v806, v825, v844, v866, v877, v878);
            npush_i(v345);
            if_testgt(v36, v346, v347, v348, v349, v350, v351, v352);
            OUTLINED_FUNCTION_24_22();
            if (v355)
            {
              continue;
            }

            v48 = advance_tok(v878, v353, v31, v354);
            v29 = HIDWORD(v832);
            v30 = v853;
            v49 = HIDWORD(v832);
            v50 = v853;
            v31 = HIDWORD(v853);
            if (v48)
            {
              continue;
            }

            goto LABEL_99;
          case 47:
            goto LABEL_103;
          case 48:
            goto LABEL_111;
          case 49:
            goto LABEL_106;
          case 50:
            v199 = OUTLINED_FUNCTION_42_9(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            npush_fld(v199, v200, 5u);
            OUTLINED_FUNCTION_24_22();
            if (v201)
            {
              continue;
            }

            v207 = OUTLINED_FUNCTION_23_22(v201, 0, v31, v202, v203, v204, v205, v206, v617, v620, v629, v648, v667, v686, v705, v724, v743, v762, v781, v800, v819, v838, v860, v877, v878);
            npush_i(v207);
            if_testgt(v36, v208, v209, v210, v211, v212, v213, v214);
            OUTLINED_FUNCTION_24_22();
            if (v217)
            {
              continue;
            }

            v48 = advance_tok(v878, v215, v31, v216);
            v29 = HIDWORD(v832);
            v30 = v853;
            v55 = HIDWORD(v832);
            v31 = HIDWORD(v853);
            if (v48)
            {
              continue;
            }

            goto LABEL_106;
          case 51:
            goto LABEL_110;
          case 52:
            goto LABEL_117;
          case 53:
            goto LABEL_112;
          case 54:
            v119 = OUTLINED_FUNCTION_42_9(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            npush_fld(v119, v120, 5u);
            OUTLINED_FUNCTION_24_22();
            if (v121)
            {
              continue;
            }

            v127 = OUTLINED_FUNCTION_23_22(v121, 0, v31, v122, v123, v124, v125, v126, v617, v620, v626, v645, v664, v683, v702, v721, v740, v759, v778, v797, v816, v835, v857, v877, v878);
            npush_i(v127);
            if_testgt(v36, v128, v129, v130, v131, v132, v133, v134);
            OUTLINED_FUNCTION_24_22();
            if (v137)
            {
              continue;
            }

            v48 = advance_tok(v878, v135, v31, v136);
            v29 = HIDWORD(v832);
            v30 = v853;
            v59 = v853;
            v31 = HIDWORD(v853);
            if (v48)
            {
              continue;
            }

            goto LABEL_112;
          case 55:
            goto LABEL_116;
          case 56:
            v67 = OUTLINED_FUNCTION_9_30(v36, v36, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            startloop(v67, v68);
            lpta_loadpn(v36, v886);
            OUTLINED_FUNCTION_18_24();
            lpta_mover();
            v69 = OUTLINED_FUNCTION_26_21();
            lpta_storep(v69, v70, v71);
            lpta_loadpn(v36, v885);
            OUTLINED_FUNCTION_18_24();
            lpta_mover();
            v72 = OUTLINED_FUNCTION_29_18();
            lpta_storep(v72, v73, v74);
            v75 = OUTLINED_FUNCTION_26_21();
            forall_to_test(v75, v76, v883);
            OUTLINED_FUNCTION_24_22();
            if (v48)
            {
              continue;
            }

            goto LABEL_22;
          case 57:
            v613 = OUTLINED_FUNCTION_23_22(v36, v885, v31, v36, v49, v36, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            lpta_loadpn(v613, v614);
            rpta_loadpn(v36, v36 + 3344);
            compare_ptas(v36);
            OUTLINED_FUNCTION_24_22();
            if (v615)
            {
              continue;
            }

            v485 = testeq(v878);
            v29 = v851;
            v30 = v872;
            goto LABEL_119;
          case 60:
            goto LABEL_27;
          case 61:
            goto LABEL_28;
          case 62:
            goto LABEL_26;
          case 63:
LABEL_22:
            v77 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            bspush_ca(v77);
            v78 = OUTLINED_FUNCTION_21_22();
            lpta_loadp_setscan_r(v78, v79, v80);
            OUTLINED_FUNCTION_24_22();
            if (v81)
            {
              continue;
            }

            v88 = OUTLINED_FUNCTION_42_9(v81, v82, v31, v83, v84, v85, v86, v87, v617, v620, v624, v643, v662, v681, v700, v719, v738, v757, v776, v795, v814, v833, v855, v877, v878);
            npush_fld(v88, v89, 5u);
            OUTLINED_FUNCTION_24_22();
            if (v90)
            {
              continue;
            }

            v96 = OUTLINED_FUNCTION_23_22(v90, 0, v31, v91, v92, v93, v94, v95, v617, v620, v625, v644, v663, v682, v701, v720, v739, v758, v777, v796, v815, v834, v856, v877, v878);
            npush_i(v96);
            if_testle(v36, v97, v98, v99, v100, v101, v102, v103);
            OUTLINED_FUNCTION_24_22();
            if (v106)
            {
              continue;
            }

            advance_tok(v878, v104, v31, v105);
            OUTLINED_FUNCTION_24_22();
            if (v107)
            {
              continue;
            }

LABEL_26:
            savescptr(v878, 64, v880);
LABEL_27:
            v108 = OUTLINED_FUNCTION_9_30(v48, v46, v31, v45, v49, v50, v55, v53, v617, v620, v623, v642, v661, v680, v699, v718, v737, v756, v775, v794, v813, v832, v853, v877, v878);
            starttest(v108, v109);
            v110 = OUTLINED_FUNCTION_26_21();
            move_i(v110, v111, v112);
            v113 = OUTLINED_FUNCTION_51_8();
            mark_word_stress(v113);
            OUTLINED_FUNCTION_24_22();
            if (v114)
            {
              continue;
            }

LABEL_28:
            v115 = forto_adv_upto_r(v878, 61, 62, 65, 2, v881);
LABEL_42:
            v29 = HIDWORD(v832);
            v30 = v853;
            goto LABEL_158;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v878);
LABEL_5:
  OUTLINED_FUNCTION_71_7();
}

void is_postnuclear_expr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_22_22();
  v76 = *MEMORY[0x277D85DE8];
  v71[0] = 0;
  v71[1] = 0;
  v70[0] = 0;
  v70[1] = 0;
  v69[0] = 0;
  v69[1] = 0;
  OUTLINED_FUNCTION_33_16();
  bzero(v68, v4);
  OUTLINED_FUNCTION_32_16();
  bzero(v75, v5);
  if (!setjmp(v75) && !ventproc(v3, v68, v74, v73, v72, v75))
  {
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_41_9(v6, v70);
    push_ptr_init(v3, v69);
    fence_30(v3, 0, &null_str_9);
    v7 = OUTLINED_FUNCTION_31_17();
    fence_30(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_29_18();
    lpta_loadpn(v10, v11);
    v12 = OUTLINED_FUNCTION_79_7();
    rpta_loadpn(v12, v13);
    if (compare_ptas(v3) || testeq(v3))
    {
      v14 = 0;
      while (2)
      {
        starttest(v3, 3);
        v15 = OUTLINED_FUNCTION_29_18();
        if (lpta_loadp_setscan_l(v15, v16, 2))
        {
LABEL_8:
          starttest(v3, 6);
          if (lpta_loadp_setscan_r(v3, v71, 2))
          {
LABEL_9:
            starttest(v3, 7);
            if (lpta_loadp_setscan_l(v3, v71, 2))
            {
              break;
            }

LABEL_10:
            v17 = OUTLINED_FUNCTION_63_7();
            savescptr(v17, v18, v69);
            v19 = OUTLINED_FUNCTION_62_7();
            bspush_ca_scan(v19, v20);
            v21 = OUTLINED_FUNCTION_18_24();
            v23 = testFldeq(v21, v22, 1, 2);
            v24 = v14;
            if (!v23)
            {
LABEL_36:
              LODWORD(v14) = v24;
              bspush_ca_scan_boa();
              v66 = OUTLINED_FUNCTION_18_24();
              if (!testFldeq(v66, v67, 3, 6))
              {
                LODWORD(v14) = 1;
              }
            }
          }

          else
          {
            v25 = OUTLINED_FUNCTION_18_24();
            if (!testFldeq(v25, v26, 1, 1))
            {
              v27 = OUTLINED_FUNCTION_18_24();
              if (!testFldeq(v27, v28, 3, 25))
              {
                v32 = advance_tok(v3, v29, v30, v31);
                if (!v32)
                {
                  *(v3 + 136) = 1;
                  if (!OUTLINED_FUNCTION_69_7(v32, v33, v34))
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        else
        {
          bspush_ca_scan(v3, 4);
          v35 = OUTLINED_FUNCTION_18_24();
          v37 = testFldeq(v35, v36, 3, 18);
          v40 = v14;
          if (!v37)
          {
LABEL_18:
            LODWORD(v14) = v40;
            if (!advance_tok(v3, v38, v40, v39))
            {
              break;
            }
          }
        }

        LODWORD(v38) = v14;
LABEL_20:
        v41 = *(v3 + 104);
        if (v41)
        {
          v42 = OUTLINED_FUNCTION_34_15(v41);
          v14 = v38;
        }

        else
        {
          v42 = vback(v3, v38);
          v14 = 0;
        }

        v40 = v14;
        v24 = v14;
        switch(v42)
        {
          case 1:
            continue;
          case 3:
            goto LABEL_8;
          case 4:
            v43 = OUTLINED_FUNCTION_18_24();
            v45 = testFldeq(v43, v44, 3, 14);
            v40 = v14;
            v38 = v14;
            if (!v45)
            {
              goto LABEL_18;
            }

            goto LABEL_20;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_9;
          case 8:
            goto LABEL_10;
          case 9:
            v63 = OUTLINED_FUNCTION_18_24();
            v65 = testFldeq(v63, v64, 3, 12);
            v24 = v14;
            LODWORD(v38) = v14;
            if (!v65)
            {
              goto LABEL_36;
            }

            goto LABEL_20;
          case 10:
            goto LABEL_36;
          case 11:
            bspop_boa(v3);
            bspush_ca_scan_boa();
            v61 = OUTLINED_FUNCTION_18_24();
            if (testFldeq(v61, v62, 3, 7))
            {
              LODWORD(v38) = v14;
            }

            else
            {
              LODWORD(v38) = 1;
            }

            goto LABEL_20;
          case 12:
            bspop_boa(v3);
            v49 = advance_tok(v3, v46, v47, v48);
            LODWORD(v38) = v14;
            if (v49)
            {
              goto LABEL_20;
            }

            v50 = OUTLINED_FUNCTION_81_6();
            v52 = lpta_loadp_setscan_r(v50, v51, 2);
            LODWORD(v38) = v14;
            if (v52)
            {
              goto LABEL_20;
            }

            v53 = OUTLINED_FUNCTION_18_24();
            v55 = testFldeq(v53, v54, 3, 24);
            LODWORD(v38) = v14;
            if (v55)
            {
              goto LABEL_20;
            }

            v58 = advance_tok(v3, v14, v56, v57);
            LODWORD(v38) = v14;
            if (v58)
            {
              goto LABEL_20;
            }

            *(v3 + 136) = 1;
            v60 = OUTLINED_FUNCTION_69_7(v58, v14, v59);
            LODWORD(v38) = v14;
            if (v60)
            {
              goto LABEL_20;
            }

            break;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_71_7();
}

uint64_t get_nonpickup_word(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_92_4();
  OUTLINED_FUNCTION_12_29(v9, v10, v11, v12, v13, v14, v15, v16, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v29[22], v29[23], v30, v31, v32);
  OUTLINED_FUNCTION_32_16();
  bzero(v36, v17);
  if (setjmp(v36) || ventproc(a1, v29, v35, v34, v33, v36))
  {
    a5 = 94;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_25_21();
    get_parm(v19, v20, a2, -6);
    v21 = OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_89_5(v21, v22);
    v23 = OUTLINED_FUNCTION_28_18();
    get_parm(v23, v24, a4, -6);
    v25 = OUTLINED_FUNCTION_36_13();
    OUTLINED_FUNCTION_64_7(v25, v26);
    OUTLINED_FUNCTION_73_7(v27, v28, &null_str_9);
    *(a4 + 8) = v32;
    OUTLINED_FUNCTION_94_4(v30);
  }

  vretproc(a1);
  return a5;
}

void OUTLINED_FUNCTION_12_29(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_20_22()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_27_19()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_35_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  return lpta_rpta_loadp(v37, va, &a36);
}

void OUTLINED_FUNCTION_41_9(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

double OUTLINED_FUNCTION_45_9@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_46_9@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  *&result = savescptr(v31, a1, &a31).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_52_8@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  *&result = savescptr(v35, a1, &a35).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_53_8@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  *&result = savescptr(v33, a1, &a33).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_58_8@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_59_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_30(v3, 1, a3);
}

void OUTLINED_FUNCTION_64_7(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + 3068), a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_69_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = v3;
  *(v4 + 128) = 0;

  return test_ptr(v4, a2, a3);
}

double OUTLINED_FUNCTION_70_7@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  *&result = savescptr(v32, a1, &a32).n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_73_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_30(v3, 0, a3);
}

double OUTLINED_FUNCTION_76_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  *&result = savescptr(v32, a2, &a32).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_77_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + 3052), a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_85_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, __int16 a42, __int16 a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{

  return ventproc(v49, a2, &a47, &a43, &a40, &a49);
}

uint64_t OUTLINED_FUNCTION_87_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

void OUTLINED_FUNCTION_88_5()
{

  starttest(v0, v1);
}

void OUTLINED_FUNCTION_89_5(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_98_3()
{

  starttest(v0, v1);
}

double OUTLINED_FUNCTION_99_3()
{

  *&result = bspush_ca_scan(v0, v1).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_100_2(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

void *fence_31(uint64_t a1, int a2, uint64_t a3)
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

uint64_t break_into_morphs(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, __int16 *a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  bzero(v36, 0xB8uLL);
  bzero(v55, 0xC0uLL);
  v10 = setjmp(v55);
  if (!v10 && !OUTLINED_FUNCTION_3_32(v10, v36, v11, v12, v13, v14, v15, v16, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], v36[21], v36[22], v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0]))
  {
    get_parm(a1, &v43, a2, -6);
    get_parm(a1, &v41, a3, -6);
    OUTLINED_FUNCTION_2_33(v19, &v39);
    get_parm(a1, &v37, a5, -6);
    fence_31(a1, 0, &null_str_10);
    fence_31(a1, 1, &_MergedGlobals_28);
    v40 = v38;
    if (*(a1 + 3842) != 1)
    {
      while (2)
      {
        starttest(a1, 3);
        v20 = OUTLINED_FUNCTION_1_33();
        if (lpta_loadp_setscan_r(v20, v21, 3))
        {
LABEL_13:
          v27 = OUTLINED_FUNCTION_1_33();
          if (por_words(v27, v28, &v37))
          {
LABEL_14:
            v29 = OUTLINED_FUNCTION_1_33();
            if (roots_dict_lookup(v29, v30))
            {
LABEL_15:
              OUTLINED_FUNCTION_1_33();
              strip_suffix();
LABEL_16:
              starttest(a1, 7);
              if (!*(a1 + 5946) || (starttest_l(a1, 7), v31 = OUTLINED_FUNCTION_1_33(), roots_dict_lookup(v31, v32)))
              {
LABEL_18:
                v33 = OUTLINED_FUNCTION_1_33();
                lpta_rpta_loadp(v33, v34, &v39);
                if (insert_2pt_s(a1, 3u, 1, &_MergedGlobals_28, 0))
                {
LABEL_9:
                  v25 = *(a1 + 104);
                  if (v25)
                  {
                    *(a1 + 104) = 0;
                    v26 = v25;
                  }

                  else
                  {
                    v26 = vback(a1, 0);
                  }

                  switch(v26)
                  {
                    case 1:
                      continue;
                    case 2:
                      goto LABEL_19;
                    case 3:
                      goto LABEL_13;
                    case 4:
                      goto LABEL_14;
                    case 5:
                      goto LABEL_15;
                    case 6:
                      goto LABEL_16;
                    case 7:
                      goto LABEL_18;
                    default:
                      goto LABEL_3;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (testFldeq(a1, 3u, 0, 2) || advance_tok(a1, v22, v23, v24))
          {
            goto LABEL_9;
          }

          *(a1 + 3886) = *(a1 + 2286);
        }

        break;
      }
    }

LABEL_19:
    *(a3 + 8) = v42;
    *(a4 + 8) = v40;
    v17 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v17 = 94;
LABEL_4:
  vretproc(a1);
  return v17;
}

uint64_t roots_dict_lookup(uint64_t a1, __int16 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  bzero(v9, 0xB8uLL);
  bzero(v16, 0xC0uLL);
  if (!setjmp(v16) && !ventproc(a1, v9, v15, v14, v13, v16))
  {
    v6 = OUTLINED_FUNCTION_1_33();
    get_parm(v6, v7, a2, -6);
    OUTLINED_FUNCTION_5_31();
    OUTLINED_FUNCTION_2_33(v8, v10);
    v4 = 0;
    fence_31(a1, 0, &null_str_10);
    OUTLINED_FUNCTION_1_33();
    if (!user_rootdict())
    {
      goto LABEL_4;
    }

    if (!por_roots(a1, v12, v11, v10))
    {
      v4 = 0;
      goto LABEL_4;
    }
  }

  v4 = 94;
LABEL_4:
  vretproc(a1);
  return v4;
}

uint64_t one_syllable(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  bzero(v40, 0xB8uLL);
  bzero(v55, 0xC0uLL);
  v2 = setjmp(v55);
  if (v2 || OUTLINED_FUNCTION_3_32(v2, v40, v3, v4, v5, v6, v7, v8, v35, v36, v37, v38, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17], v40[18], v40[19], v40[20], v40[21], v40[22], v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0]) || (OUTLINED_FUNCTION_5_31(), OUTLINED_FUNCTION_2_33(v9, &v41), fence_31(a1, 0, &null_str_10), starttest(a1, 1), lpta_loadp_setscan_r(a1, &v43, 1)))
  {
LABEL_4:
    vretproc(a1);
    return 94;
  }

  else
  {
    v11 = 0;
LABEL_6:
    v12 = v11;
    bspush_ca_scan(a1, 4);
    bspush_ca_scan(a1, 5);
    if (OUTLINED_FUNCTION_4_31() || advance_tok(a1, v13, v14, v15))
    {
      v16 = v12;
    }

    else
    {
      bspush_ca_scan(a1, 6);
      bspush_ca_scan(a1, 7);
      OUTLINED_FUNCTION_0_35();
      v17 = test_string_s();
      v16 = v12;
      v18 = v12;
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    do
    {
      do
      {
        while (2)
        {
          v23 = v16;
          v24 = *(a1 + 104);
          if (v24)
          {
            *(a1 + 104) = 0;
            v25 = v24;
          }

          else
          {
            v25 = vback(a1, v16);
            v23 = 0;
          }

          v11 = v23;
          v18 = v23;
          switch(v25)
          {
            case 2:
              goto LABEL_6;
            case 3:
              bspop_boa(a1);
              v29 = advance_tok(a1, v26, v27, v28);
              v11 = v23;
              v16 = v23;
              if (!v29)
              {
                goto LABEL_6;
              }

              continue;
            case 4:
            case 14:
              bspush_ca_scan_boa();
              if (OUTLINED_FUNCTION_4_31())
              {
                v16 = v23;
              }

              else
              {
                v16 = 1;
              }

              continue;
            case 5:
              bspush_ca_scan(a1, 9);
              OUTLINED_FUNCTION_0_35();
              v30 = test_string_s();
              v16 = v23;
              if (v30)
              {
                continue;
              }

              bspush_ca_scan(a1, 10);
              OUTLINED_FUNCTION_0_35();
              goto LABEL_23;
            case 6:
            case 8:
            case 11:
            case 12:
              goto LABEL_10;
            case 7:
            case 10:
              OUTLINED_FUNCTION_0_35();
              goto LABEL_23;
            case 9:
LABEL_23:
              v31 = test_string_s();
              break;
            case 13:
              bspop_boa(a1);
              v31 = advance_tok(a1, v32, v33, v34);
              break;
            default:
              goto LABEL_4;
          }

          break;
        }

        v18 = v23;
        v16 = v23;
      }

      while (v31);
LABEL_10:
      v19 = v18;
      bspush_ca_scan(a1, 14);
      *(a1 + 136) = 1;
      *(a1 + 112) = v42;
      *(a1 + 128) = 0;
      v22 = test_ptr(a1, v20, v21);
      v16 = v19;
    }

    while (v22);
    vretproc(a1);
    return 0;
  }
}

void OUTLINED_FUNCTION_2_33(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_3_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, __int16 a44, __int16 a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

BOOL OUTLINED_FUNCTION_4_31()
{

  return testFldeq(v0, v1, v2, v1);
}

void OUTLINED_FUNCTION_5_31()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t normalize_por_letters()
{
  OUTLINED_FUNCTION_17_26();
  v136 = *MEMORY[0x277D85DE8];
  v131[0] = 0;
  v131[1] = 0;
  v130[0] = 0;
  v130[1] = 0;
  v129[0] = 0;
  v129[1] = 0;
  v128[0] = 0;
  v128[1] = 0;
  v127[0] = 0;
  v127[1] = 0;
  v126[0] = 0;
  v126[1] = 0;
  bzero(v125, 0xB8uLL);
  OUTLINED_FUNCTION_15_28();
  bzero(v135, v1);
  if (setjmp(v135) || ventproc(v0, v125, v134, v133, v132, v135))
  {
LABEL_3:
    v2 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_21_23(v0, v131);
    OUTLINED_FUNCTION_18_25(v0, v130);
    v4 = OUTLINED_FUNCTION_7_31();
    push_ptr_init(v4, v5);
    v6 = OUTLINED_FUNCTION_9_31();
    push_ptr_init(v6, v7);
    v8 = OUTLINED_FUNCTION_14_28();
    push_ptr_init(v8, v9);
    push_ptr_init(v0, v126);
    fence_32(v0);
    startloop(v0, 1);
    v10 = OUTLINED_FUNCTION_7_31();
    copyvar(v10, v11, v131);
    v12 = OUTLINED_FUNCTION_14_28();
    copyvar(v12, v13, v130);
    while (1)
    {
LABEL_6:
      v14 = OUTLINED_FUNCTION_7_31();
      if (forall_to_test(v14, v15, v127))
      {
        goto LABEL_42;
      }

LABEL_7:
      bspush_ca(v0);
      v16 = OUTLINED_FUNCTION_2_34();
      if (lpta_loadp_setscan_r(v16, v17, v18) || advance_tok(v0, v19, v20, v21))
      {
        goto LABEL_42;
      }

LABEL_9:
      savescptr(v0, 4, v128);
LABEL_10:
      v22 = OUTLINED_FUNCTION_2_34();
      if (lpta_loadp_setscan_r(v22, v23, v24))
      {
        break;
      }

      OUTLINED_FUNCTION_1_34();
      if (test_string_s())
      {
        break;
      }

      v72 = OUTLINED_FUNCTION_3_33();
      delete_inp_from_right(v72);
LABEL_33:
      forall_cont_from();
    }

LABEL_12:
    starttest(v0, 8);
    v25 = OUTLINED_FUNCTION_2_34();
    if (!lpta_loadp_setscan_r(v25, v26, v27))
    {
      bspush_ca_scan(v0, 9);
      OUTLINED_FUNCTION_1_34();
LABEL_38:
      if (!test_string_s())
      {
LABEL_39:
        v76 = OUTLINED_FUNCTION_3_33();
        lpta_rpta_loadp(v76, v77, v78);
        v79 = OUTLINED_FUNCTION_1_34();
        v83 = &unk_2806BC06B;
        goto LABEL_40;
      }

      goto LABEL_42;
    }

LABEL_13:
    starttest(v0, 12);
    v28 = OUTLINED_FUNCTION_2_34();
    if (lpta_loadp_setscan_r(v28, v29, v30) || (OUTLINED_FUNCTION_1_34(), test_string_s()) || (v31 = OUTLINED_FUNCTION_3_33(), lpta_rpta_loadp(v31, v32, v33), v34 = OUTLINED_FUNCTION_1_34(), insert_2pt_s(v34, v35, v36, &unk_2806BC06D, v37)))
    {
LABEL_16:
      starttest(v0, 13);
      v38 = OUTLINED_FUNCTION_2_34();
      if (!lpta_loadp_setscan_r(v38, v39, v40))
      {
        bspush_ca_scan(v0, 14);
        OUTLINED_FUNCTION_1_34();
LABEL_58:
        if (!test_string_s())
        {
LABEL_59:
          v101 = OUTLINED_FUNCTION_3_33();
          lpta_rpta_loadp(v101, v102, v103);
          v79 = OUTLINED_FUNCTION_1_34();
          v83 = &unk_2806BC070;
          goto LABEL_40;
        }

        goto LABEL_42;
      }

LABEL_17:
      starttest(v0, 16);
      v41 = OUTLINED_FUNCTION_2_34();
      if (!lpta_loadp_setscan_r(v41, v42, v43))
      {
        bspush_ca_scan(v0, 17);
        OUTLINED_FUNCTION_1_34();
LABEL_68:
        if (!test_string_s())
        {
LABEL_69:
          v110 = OUTLINED_FUNCTION_3_33();
          lpta_rpta_loadp(v110, v111, v112);
          v79 = OUTLINED_FUNCTION_1_34();
          v83 = &unk_2806BC074;
          goto LABEL_40;
        }

        goto LABEL_42;
      }

LABEL_18:
      starttest(v0, 20);
      v44 = OUTLINED_FUNCTION_2_34();
      if (lpta_loadp_setscan_r(v44, v45, v46) || (OUTLINED_FUNCTION_1_34(), test_string_s()) || (v47 = OUTLINED_FUNCTION_3_33(), lpta_rpta_loadp(v47, v48, v49), v50 = OUTLINED_FUNCTION_5_32(), insert_2pt_s(v50, v51, 2, &unk_2806BC08B, v52)))
      {
LABEL_21:
        starttest(v0, 21);
        v53 = OUTLINED_FUNCTION_2_34();
        if (!lpta_loadp_setscan_r(v53, v54, v55))
        {
          bspush_ca_scan(v0, 22);
          OUTLINED_FUNCTION_1_34();
          goto LABEL_65;
        }

LABEL_22:
        starttest(v0, 26);
        v56 = OUTLINED_FUNCTION_2_34();
        if (!lpta_loadp_setscan_r(v56, v57, v58))
        {
          bspush_ca_scan(v0, 27);
          OUTLINED_FUNCTION_1_34();
LABEL_61:
          if (!test_string_s())
          {
LABEL_62:
            v104 = OUTLINED_FUNCTION_3_33();
            lpta_rpta_loadp(v104, v105, v106);
            v79 = OUTLINED_FUNCTION_5_32();
            v81 = 2;
            v83 = &unk_2806BC08D;
            goto LABEL_40;
          }

          goto LABEL_42;
        }

LABEL_23:
        v59 = OUTLINED_FUNCTION_2_34();
        if (lpta_loadp_setscan_r(v59, v60, v61) || (OUTLINED_FUNCTION_1_34(), test_string_s()))
        {
LABEL_25:
          starttest(v0, 34);
          v62 = OUTLINED_FUNCTION_2_34();
          if (lpta_loadp_setscan_r(v62, v63, v64) || (OUTLINED_FUNCTION_1_34(), test_string_s()) || (v65 = OUTLINED_FUNCTION_3_33(), lpta_rpta_loadp(v65, v66, v67), v68 = OUTLINED_FUNCTION_1_34(), insert_2pt_s(v68, v69, v70, &unk_2806BC07D, v71)))
          {
LABEL_70:
            v113 = OUTLINED_FUNCTION_10_31();
            starttest(v113, v114);
            v115 = OUTLINED_FUNCTION_2_34();
            if (!lpta_loadp_setscan_r(v115, v116, v117))
            {
              OUTLINED_FUNCTION_1_34();
              if (!test_string_s())
              {
                v118 = OUTLINED_FUNCTION_3_33();
                lpta_rpta_loadp(v118, v119, v120);
                v121 = OUTLINED_FUNCTION_1_34();
                insert_2pt_s(v121, v122, v123, &unk_2806BC082, v124);
              }
            }
          }
        }

        else
        {
          starttest_l(v0, 30);
          v73 = OUTLINED_FUNCTION_2_34();
          if (!lpta_loadp_setscan_l(v73, v74, v75))
          {
LABEL_73:
            savescptr(v0, 31, v126);
            bspush_ca_scan(v0, 32);
            OUTLINED_FUNCTION_1_34();
LABEL_48:
            if (test_string_s())
            {
              goto LABEL_42;
            }

LABEL_49:
            if (lpta_loadp_setscan_r(v0, v126, 1))
            {
              goto LABEL_42;
            }

            if (advance_tok(v0, v88, v89, v90))
            {
              goto LABEL_42;
            }

            if (testFldeq(v0, 1u, 4, 1))
            {
              goto LABEL_42;
            }

            if (advance_tok(v0, v91, v92, v93))
            {
              goto LABEL_42;
            }

            v94 = OUTLINED_FUNCTION_3_33();
            lpta_rpta_loadp(v94, v95, v96);
            OUTLINED_FUNCTION_5_32();
            if (mark_s())
            {
              goto LABEL_42;
            }
          }
        }
      }
    }

LABEL_41:
    while (forto_adv_r(v0, 1, 2, 35, 1, v129))
    {
      do
      {
        do
        {
LABEL_42:
          v84 = v0[13];
          if (v84)
          {
            v85 = OUTLINED_FUNCTION_20_23(v84);
          }

          else
          {
            v85 = vback(v0, 0);
          }

          switch(v85)
          {
            case 1:
              goto LABEL_74;
            case 2:
              goto LABEL_10;
            case 3:
            case 30:
              goto LABEL_41;
            case 4:
              goto LABEL_9;
            case 5:
              goto LABEL_12;
            case 6:
              goto LABEL_33;
            case 7:
              goto LABEL_6;
            case 8:
              goto LABEL_13;
            case 9:
              v86 = OUTLINED_FUNCTION_10_31();
              bspush_ca_scan(v86, v87);
              goto LABEL_63;
            case 10:
              goto LABEL_39;
            case 11:
LABEL_63:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_38;
            case 12:
              goto LABEL_16;
            case 13:
              goto LABEL_17;
            case 14:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_58;
            case 15:
              goto LABEL_59;
            case 16:
              goto LABEL_18;
            case 17:
              v99 = OUTLINED_FUNCTION_10_31();
              bspush_ca_scan(v99, v100);
              goto LABEL_67;
            case 18:
              goto LABEL_69;
            case 19:
LABEL_67:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_68;
            case 20:
              goto LABEL_21;
            case 21:
              goto LABEL_22;
            case 22:
            case 24:
              v97 = OUTLINED_FUNCTION_10_31();
              bspush_ca_scan(v97, v98);
              goto LABEL_64;
            case 23:
              goto LABEL_66;
            case 25:
LABEL_64:
              OUTLINED_FUNCTION_0_36();
              break;
            case 26:
              goto LABEL_23;
            case 27:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_61;
            case 28:
              goto LABEL_62;
            case 29:
              goto LABEL_25;
            case 31:
              goto LABEL_73;
            case 32:
              OUTLINED_FUNCTION_0_36();
              goto LABEL_48;
            case 33:
              goto LABEL_49;
            case 34:
              goto LABEL_70;
            case 35:
              goto LABEL_7;
            default:
              goto LABEL_3;
          }

LABEL_65:
          ;
        }

        while (test_string_s());
LABEL_66:
        v107 = OUTLINED_FUNCTION_3_33();
        lpta_rpta_loadp(v107, v108, v109);
        v79 = OUTLINED_FUNCTION_1_34();
        v83 = &unk_2806BC07A;
LABEL_40:
        ;
      }

      while (insert_2pt_s(v79, v80, v81, v83, v82));
    }

LABEL_74:
    v2 = 0;
  }

  vretproc(v0);
  return v2;
}

uint64_t por_acrotest()
{
  OUTLINED_FUNCTION_17_26();
  v112 = *MEMORY[0x277D85DE8];
  memset(v107, 0, sizeof(v107));
  bzero(v106, 0xB8uLL);
  OUTLINED_FUNCTION_15_28();
  bzero(v111, v1);
  if (setjmp(v111))
  {
    goto LABEL_3;
  }

  if (ventproc(v0, v106, v110, v109, v108, v111))
  {
    goto LABEL_3;
  }

  v5 = OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_21_23(v5, v6);
  v7 = OUTLINED_FUNCTION_9_31();
  OUTLINED_FUNCTION_18_25(v7, v8);
  fence_32(v0);
  v9 = OUTLINED_FUNCTION_14_28();
  lpta_rpta_loadp(v9, v10, v107);
  if (!setd_lookup(v0, 1u, 50))
  {
    goto LABEL_3;
  }

  v11 = 0;
  while (2)
  {
    v12 = OUTLINED_FUNCTION_9_31();
    lpta_rpta_loadp(v12, v13, v107);
    if (!setd_lookup(v0, 1u, 51))
    {
      goto LABEL_47;
    }

    v14 = v11;
LABEL_9:
    v15 = v14;
    starttest(v0, 4);
    v16 = OUTLINED_FUNCTION_8_31();
    v19 = lpta_loadp_setscan_r(v16, v17, v18);
    v20 = v15;
    if (!v19)
    {
LABEL_10:
      v21 = v20;
      v22 = OUTLINED_FUNCTION_11_30();
      if (!testFldeq(v22, v23, v24, 2) && !advance_tok(v0, v25, v26, v27))
      {
        v28 = v0;
        v29 = 5;
        goto LABEL_13;
      }

LABEL_42:
      v34 = v21;
      goto LABEL_14;
    }

LABEL_18:
    v42 = v20;
    starttest(v0, 6);
    v43 = OUTLINED_FUNCTION_8_31();
    v46 = lpta_loadp_setscan_r(v43, v44, v45);
    v39 = v42;
    if (v46)
    {
LABEL_19:
      v21 = v39;
      starttest(v0, 8);
      v47 = OUTLINED_FUNCTION_8_31();
      if (lpta_loadp_setscan_r(v47, v48, v49) || advance_tok(v0, v50, v51, v52) || advance_tok(v0, v53, v54, v55) || advance_tok(v0, v56, v57, v58) || advance_tok(v0, v59, v60, v61) || advance_tok(v0, v62, v63, v64) || (v68 = advance_tok(v0, v65, v66, v67), v40 = v21, v68))
      {
LABEL_26:
        starttest(v0, 10);
        v69 = OUTLINED_FUNCTION_8_31();
        if (!lpta_loadp_setscan_r(v69, v70, v71))
        {
          v95 = OUTLINED_FUNCTION_11_30();
          if (testFldeq(v95, v96, v97, 2) || advance_tok(v0, v98, v99, v100))
          {
            goto LABEL_42;
          }

          bspush_ca_boa();
          v101 = OUTLINED_FUNCTION_9_31();
          v88 = por_legal_initial_cons(v101);
          goto LABEL_38;
        }

        v41 = v21;
LABEL_28:
        v21 = v41;
        starttest(v0, 12);
        v72 = OUTLINED_FUNCTION_14_28();
        if (!lpta_loadp_setscan_l(v72, v73, 1))
        {
          v74 = OUTLINED_FUNCTION_11_30();
          if (testFldeq(v74, v75, v76, 2) || advance_tok(v0, v77, v78, v79))
          {
            goto LABEL_42;
          }

          bspush_ca_boa();
          v80 = OUTLINED_FUNCTION_14_28();
          v88 = por_legal_final_cons(v80, v81, v82, v83, v84, v85, v86, v87);
LABEL_38:
          if (v88)
          {
            v34 = v21;
          }

          else
          {
            v34 = 1;
          }

          goto LABEL_14;
        }
      }

      else
      {
LABEL_41:
        v21 = v40;
        if (advance_tok(v0, v2, v20, v39))
        {
          goto LABEL_42;
        }

        bspush_ca_scan(v0, 9);
        *(v0 + 136) = 1;
        v105 = OUTLINED_FUNCTION_19_24(v102, v103, v104);
        v34 = v21;
        if (v105)
        {
          goto LABEL_14;
        }
      }

LABEL_3:
      v2 = 94;
      break;
    }

LABEL_32:
    v21 = v39;
    v89 = OUTLINED_FUNCTION_11_30();
    if (testFldeq(v89, v90, v91, 1) || advance_tok(v0, v92, v93, v94))
    {
      goto LABEL_42;
    }

    v28 = v0;
    v29 = 7;
LABEL_13:
    bspush_ca_scan(v28, v29);
    *(v0 + 136) = 1;
    v33 = OUTLINED_FUNCTION_19_24(v30, v31, v32);
    v34 = v21;
    if (!v33)
    {
LABEL_47:
      v2 = 0;
      break;
    }

LABEL_14:
    v35 = *(v0 + 104);
    if (v35)
    {
      *(v0 + 104) = 0;
      v36 = v35;
      v37 = v34;
    }

    else
    {
      v36 = vback(v0, v34);
      v37 = 0;
    }

    v2 = 94;
    v38 = v36 - 1;
    v14 = v37;
    v20 = v37;
    v39 = v37;
    v40 = v37;
    v21 = v37;
    v41 = v37;
    switch(v38)
    {
      case 0:
        v11 = v37;
        continue;
      case 1:
        goto LABEL_47;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_18;
      case 4:
        goto LABEL_10;
      case 5:
        goto LABEL_19;
      case 6:
        goto LABEL_32;
      case 7:
        goto LABEL_26;
      case 8:
        goto LABEL_41;
      case 9:
        goto LABEL_28;
      case 10:
      case 12:
        bspop_boa(v0);
        goto LABEL_47;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  v3 = v2;
  vretproc(v0);
  return v3;
}

uint64_t por_legal_initial_cons(void *a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v83 = 0;
  bzero(v81, 0xB8uLL);
  OUTLINED_FUNCTION_15_28();
  bzero(v87, v2);
  if (setjmp(v87) || ventproc(a1, v81, v86, v85, v84, v87))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_9_31();
  OUTLINED_FUNCTION_18_25(v6, v7);
  fence_32(a1);
  v8 = OUTLINED_FUNCTION_16_27();
  starttest(v8, v9);
  v10 = OUTLINED_FUNCTION_8_31();
  if (!lpta_loadp_setscan_r(v10, v11, v12))
  {
    v14 = OUTLINED_FUNCTION_4_32();
    if (testFldeq(v14, v15, v16, 2) || advance_tok(a1, v17, v18, v19) || (v20 = OUTLINED_FUNCTION_4_32(), testFldeq(v20, v21, v22, 1)))
    {
      v13 = 0;
    }

    else
    {
      v26 = advance_tok(a1, v23, v24, v25);
      v13 = 0;
      v3 = 0;
      if (!v26)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_35;
  }

  v13 = 0;
LABEL_14:
  v27 = OUTLINED_FUNCTION_10_31();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_13_30();
  if (!lpta_loadp_setscan_r(v29, v30, v31))
  {
    v32 = OUTLINED_FUNCTION_4_32();
    if (!testFldeq(v32, v33, v34, 2) && !advance_tok(a1, v35, v36, v37))
    {
      v38 = OUTLINED_FUNCTION_4_32();
      if (!testFldeq(v38, v39, v40, 2) && !advance_tok(a1, v41, v42, v43))
      {
        v44 = OUTLINED_FUNCTION_4_32();
        if (!testFldeq(v44, v45, v46, 2) && !advance_tok(a1, v47, v48, v49))
        {
          goto LABEL_3;
        }
      }
    }

    while (1)
    {
LABEL_35:
      v73 = v13;
      do
      {
        while (2)
        {
          v74 = a1[13];
          if (v74)
          {
            v75 = OUTLINED_FUNCTION_20_23(v74);
          }

          else
          {
            v75 = vback(a1, v73);
            v73 = 0;
          }

          v61 = v73;
          v65 = v73;
          v72 = v73;
          switch(v75)
          {
            case 1:
              v13 = v73;
              goto LABEL_14;
            case 2:
              goto LABEL_54;
            case 3:
              v13 = v73;
              goto LABEL_23;
            case 4:
              v13 = v73;
              goto LABEL_25;
            case 6:
              v76 = OUTLINED_FUNCTION_7_31();
              bspush_ca_scan(v76, v77);
              OUTLINED_FUNCTION_0_36();
              break;
            case 7:
              goto LABEL_29;
            case 8:
              bspush_ca_scan(a1, 9);
              OUTLINED_FUNCTION_0_36();
              break;
            case 9:
              bspush_ca_scan(a1, 10);
              OUTLINED_FUNCTION_0_36();
              break;
            case 10:
              bspush_ca_scan(a1, 11);
              OUTLINED_FUNCTION_0_36();
              break;
            case 11:
              bspush_ca_scan(a1, 12);
              OUTLINED_FUNCTION_0_36();
              break;
            case 12:
              bspush_ca_scan(a1, 13);
              OUTLINED_FUNCTION_0_36();
              break;
            case 13:
              OUTLINED_FUNCTION_0_36();
              break;
            case 14:
              OUTLINED_FUNCTION_0_36();
              v79 = test_string_s();
              v65 = v73;
              if (!v79)
              {
                goto LABEL_30;
              }

              continue;
            case 15:
              goto LABEL_30;
            case 16:
              bspop_boa(a1);
              goto LABEL_54;
            case 17:
              OUTLINED_FUNCTION_0_36();
              v78 = test_string_s();
              v72 = v73;
              if (!v78)
              {
                goto LABEL_32;
              }

              continue;
            case 18:
              goto LABEL_32;
            default:
              goto LABEL_3;
          }

          break;
        }

        v80 = test_string_s();
        v61 = v73;
      }

      while (v80);
LABEL_29:
      v13 = v61;
      v62 = OUTLINED_FUNCTION_10_31();
      bspush_ca_scan(v62, v63);
      OUTLINED_FUNCTION_0_36();
      v64 = test_string_s();
      v65 = v13;
      if (!v64)
      {
LABEL_30:
        v13 = v65;
        OUTLINED_FUNCTION_10_31();
        bspush_ca_boa();
        v66 = OUTLINED_FUNCTION_13_30();
        if (!lpta_loadp_setscan_r(v66, v67, v68))
        {
          v69 = OUTLINED_FUNCTION_10_31();
          bspush_ca_scan(v69, v70);
          OUTLINED_FUNCTION_0_36();
          v71 = test_string_s();
          v72 = v13;
          if (!v71)
          {
LABEL_32:
            LODWORD(v13) = v72;
            OUTLINED_FUNCTION_0_36();
            if (test_string_s())
            {
              v13 = v13;
            }

            else
            {
              v13 = 1;
            }
          }
        }
      }
    }
  }

LABEL_23:
  v50 = OUTLINED_FUNCTION_13_30();
  if (!lpta_loadp_setscan_r(v50, v51, v52))
  {
    OUTLINED_FUNCTION_6_31();
    if (!test_string_s())
    {
LABEL_54:
      v3 = 0;
      goto LABEL_4;
    }
  }

LABEL_25:
  v53 = OUTLINED_FUNCTION_10_31();
  starttest(v53, v54);
  v55 = OUTLINED_FUNCTION_13_30();
  if (!lpta_loadp_setscan_r(v55, v56, v57))
  {
    v58 = OUTLINED_FUNCTION_10_31();
    bspush_ca_scan(v58, v59);
    OUTLINED_FUNCTION_0_36();
    v60 = test_string_s();
    v61 = v13;
    if (!v60)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

LABEL_3:
  v3 = 94;
LABEL_4:
  v4 = v3;
  vretproc(a1);
  return v4;
}

uint64_t por_legal_final_cons(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v64 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_30(a1, a2, a3, a4, a5, a6, a7, a8, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15], v59[16], v59[17], v59[18], v59[19], v59[20], v59[21], v59[22], v59[23], v59[24]);
  OUTLINED_FUNCTION_15_28();
  bzero(v63, v9);
  if (setjmp(v63) || ventproc(a1, v59, v62, v61, v60, v63))
  {
LABEL_3:
    v10 = 94;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_18_25(v12, v13);
    fence_32(a1);
    v14 = OUTLINED_FUNCTION_16_27();
    starttest(v14, v15);
    v16 = OUTLINED_FUNCTION_8_31();
    if (lpta_loadp_setscan_l(v16, v17, v18))
    {
      goto LABEL_11;
    }

    v19 = OUTLINED_FUNCTION_4_32();
    if (testFldeq(v19, v20, v21, 2) || advance_tok(a1, v22, v23, v24) || (v25 = OUTLINED_FUNCTION_4_32(), testFldeq(v25, v26, v27, 1)) || advance_tok(a1, v28, v29, v30))
    {
      while (1)
      {
        v54 = a1[13];
        v55 = v54 ? OUTLINED_FUNCTION_20_23(v54) : vback(a1, 0);
        if (v55 != 1)
        {
          break;
        }

LABEL_11:
        v31 = OUTLINED_FUNCTION_10_31();
        starttest(v31, v32);
        v33 = OUTLINED_FUNCTION_13_30();
        if (lpta_loadp_setscan_l(v33, v34, v35))
        {
          goto LABEL_24;
        }

        v36 = OUTLINED_FUNCTION_4_32();
        if (!testFldeq(v36, v37, v38, 2) && !advance_tok(a1, v39, v40, v41))
        {
          v42 = OUTLINED_FUNCTION_4_32();
          if (!testFldeq(v42, v43, v44, 2) && !advance_tok(a1, v45, v46, v47))
          {
            v48 = OUTLINED_FUNCTION_4_32();
            if (!testFldeq(v48, v49, v50, 2) && !advance_tok(a1, v51, v52, v53))
            {
              goto LABEL_3;
            }
          }
        }
      }

      if (v55 == 2)
      {
        goto LABEL_10;
      }

      if (v55 != 3)
      {
        goto LABEL_3;
      }

LABEL_24:
      v56 = OUTLINED_FUNCTION_13_30();
      if (lpta_loadp_setscan_l(v56, v57, v58))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_31();
      if (test_string_s())
      {
        goto LABEL_3;
      }
    }

LABEL_10:
    v10 = 0;
  }

  vretproc(a1);
  return v10;
}

uint64_t add_por_plural()
{
  OUTLINED_FUNCTION_17_26();
  v19 = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[1] = 0;
  OUTLINED_FUNCTION_12_30(v1, v2, v3, v4, v5, v6, v7, v8, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], v11[22], v12, v13);
  OUTLINED_FUNCTION_15_28();
  bzero(v18, v9);
  if (setjmp(v18) || ventproc(v0, v11, v17, v16, v15, v18))
  {
    vretproc(v0);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_21_23(v0, v14);
    OUTLINED_FUNCTION_18_25(v0, &v12);
    fence_32(v0);
    if (*(v0 + 2290) == *(v0 + 2914))
    {
      *(v0 + 168) = 1;
      *(v0 + 144) = v13;
      *(v0 + 128) = 0;
      insert_l(v0, 1);
    }

    vretproc(v0);
    return 0;
  }
}

uint64_t por_hyphen_between_nums(uint64_t a1, __int16 *a2, __int16 *a3, int a4, int a5, int a6, int a7, int a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v40[0] = 0;
  v40[1] = 0;
  v39[0] = 0;
  v39[1] = 0;
  v38[0] = 0;
  v38[1] = 0;
  v37[0] = 0;
  v37[1] = 0;
  v36[0] = 0;
  v36[1] = 0;
  memset(v35, 0, sizeof(v35));
  OUTLINED_FUNCTION_12_30(a1, a2, a3, a4, a5, a6, a7, a8, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v33[14], v33[15], v33[16], v33[17], v33[18], v33[19], v33[20], v33[21], v33[22], v34[0], v34[1]);
  OUTLINED_FUNCTION_15_28();
  bzero(v44, v11);
  if (!setjmp(v44) && !ventproc(a1, v33, v43, v42, v41, v44))
  {
    get_parm(a1, v40, a2, -6);
    get_parm(a1, v39, a3, -6);
    OUTLINED_FUNCTION_21_23(a1, v38);
    OUTLINED_FUNCTION_18_25(a1, v37);
    v14 = OUTLINED_FUNCTION_7_31();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_9_31();
    push_ptr_init(v16, v17);
    push_ptr_init(a1, v35);
    push_ptr_init(a1, v34);
    fence_32(a1);
    v18 = OUTLINED_FUNCTION_3_33();
    find_previous_word(v18, v19, v20, v40);
    if (v21 || (v22 = OUTLINED_FUNCTION_16_27(), starttest_l(v22, v23), lpta_loadp_setscan_r(a1, v36, v36)))
    {
LABEL_7:
      find_next_word(a1, v37, v35, v34);
      if (v24)
      {
LABEL_10:
        v12 = 0;
        goto LABEL_4;
      }

      lpta_rpta_loadp(a1, v35, v34);
      v25 = OUTLINED_FUNCTION_6_31();
      if (setd_lookup(v25, v26, 52))
      {
LABEL_9:
        lpta_rpta_loadp(a1, v35, v34);
        v27 = OUTLINED_FUNCTION_6_31();
        if (setd_lookup(v27, v28, 53))
        {
          goto LABEL_10;
        }
      }

LABEL_19:
      v12 = 0;
      *(a1 + 2790) = *(a1 + 2794);
      goto LABEL_4;
    }

    bspush_ca_scan(a1, 2);
    while (2)
    {
      v29 = test_string_s();
      if (!v29)
      {
LABEL_18:
        *(a1 + 136) = v36;
        if (!OUTLINED_FUNCTION_19_24(v29, v30, v31))
        {
          goto LABEL_19;
        }
      }

      v32 = *(a1 + 104);
      if (v32)
      {
        v29 = OUTLINED_FUNCTION_20_23(v32);
      }

      else
      {
        v29 = vback(a1, 0);
      }

      switch(v29)
      {
        case 1:
          goto LABEL_7;
        case 2:
          OUTLINED_FUNCTION_6_31();
          continue;
        case 3:
          goto LABEL_18;
        case 4:
          goto LABEL_10;
        case 5:
          goto LABEL_9;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(a1);
  return v12;
}

void OUTLINED_FUNCTION_12_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_18_25(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_19_24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = v3;
  *(v4 + 128) = 0;

  return test_ptr(v4, a2, a3);
}

void OUTLINED_FUNCTION_21_23(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
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

uint64_t convert_por_digits_to_words()
{
  OUTLINED_FUNCTION_6_32();
  v91 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v2, v3, v4, v5, v6, v7, v8, v9, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  OUTLINED_FUNCTION_23_23(v10, v11, v12, v13, v14, v15, v16, v17, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_12_31(v18, &v59, v19, v20, v21, v22, v23, v24, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, SHIDWORD(v86), v87, SWORD2(v87), SHIWORD(v87), v88, SWORD2(v88), SBYTE6(v88), SHIBYTE(v88), v89, v90))
  {
    goto LABEL_3;
  }

  v26 = OUTLINED_FUNCTION_10_32();
  get_parm(v26, v27, v28, -6);
  v29 = OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_71_8(v29, v30);
  fence_33(v0, 0, &null_str_11);
  v31 = OUTLINED_FUNCTION_10_32();
  convert_por_time(v31, v32, v33);
  if (!v34)
  {
    goto LABEL_20;
  }

  while (2)
  {
    OUTLINED_FUNCTION_40_11();
    if (!convert_por_date())
    {
      goto LABEL_20;
    }

LABEL_6:
    v35 = OUTLINED_FUNCTION_50_9();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_40_11();
    if (lpta_loadp_setscan_r(v37, v38, 1) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
    {
LABEL_14:
      OUTLINED_FUNCTION_5_33();
      convert_digits();
LABEL_16:
      OUTLINED_FUNCTION_26_22();
      if (v52)
      {
        goto LABEL_19;
      }

LABEL_17:
      v53 = OUTLINED_FUNCTION_45_10();
      add_por_point_digits(v53, v54, v54);
      if (!v55)
      {
LABEL_19:
        *(v0 + 2910) = 0;
        goto LABEL_20;
      }

LABEL_18:
      v56 = OUTLINED_FUNCTION_45_10();
      process_por_fraction(v56, v57, v57);
      if (!v58)
      {
        goto LABEL_19;
      }

LABEL_20:
      OUTLINED_FUNCTION_105_2(v83);
      break;
    }

    do
    {
LABEL_8:
      v39 = OUTLINED_FUNCTION_66_8();
      bspush_ca_scan(v39, v40);
      v41 = OUTLINED_FUNCTION_4_33();
    }

    while (!testFldeq(v41, v42, v43, 2) && !advance_tok(v0, v44, v45, v46));
    v47 = *(v0 + 104);
    if (v47)
    {
      v48 = OUTLINED_FUNCTION_47_10(v47);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_74_8();
    }

    switch(v48)
    {
      case 1:
        continue;
      case 2:
      case 7:
        goto LABEL_16;
      case 3:
        goto LABEL_6;
      case 4:
        goto LABEL_14;
      case 5:
        OUTLINED_FUNCTION_17_27(5, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
        v49 = OUTLINED_FUNCTION_21_24();
        single_chars(v49, v50, v51);
        goto LABEL_16;
      case 6:
        goto LABEL_8;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_19;
      case 10:
        goto LABEL_18;
      case 11:
        goto LABEL_20;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_103_2();
}

void convert_por_time(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70_8();
  v125 = v3;
  v5 = v4;
  v138 = *MEMORY[0x277D85DE8];
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v129[0] = 0;
  v129[1] = 0;
  v128[0] = 0;
  v128[1] = 0;
  v127[0] = 0;
  v127[1] = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v126, v6);
  OUTLINED_FUNCTION_37_14();
  bzero(v137, v7);
  if (setjmp(v137) || ventproc(v5, v126, v136, v135, v134, v137) || (v8 = OUTLINED_FUNCTION_10_32(), get_parm(v8, v9, v10, -6), get_parm(v5, &v130, v125, -6), push_ptr_init(v5, v129), v11 = OUTLINED_FUNCTION_77_8(), push_ptr_init(v11, v12), v13 = OUTLINED_FUNCTION_68_8(), push_ptr_init(v13, v14), fence_33(v5, 0, &null_str_11), v15 = OUTLINED_FUNCTION_58_9(), starttest(v15, v16), v17 = OUTLINED_FUNCTION_34_16(), lpta_loadp_setscan_r(v17, v18, 1)))
  {
LABEL_4:
    vretproc(v5);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v19, v20);
    v21 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v21, v22);
    OUTLINED_FUNCTION_2_35();
    v23 = test_string_s();
    v24 = 0;
    v25 = 0;
    if (!v23)
    {
LABEL_7:
      v24 = v25;
      v26 = OUTLINED_FUNCTION_4_33();
      if (!testFldeq(v26, v27, v28, 2))
      {
        LODWORD(v32) = v24;
        if (!advance_tok(v5, v29, v30, v31))
        {
LABEL_9:
          v24 = v32;
          savescptr(v5, 5, v129);
          v33 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v33, v34);
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
LABEL_10:
            v24 = v32;
            OUTLINED_FUNCTION_64_8();
            savescptr(v5, v35, v128);
            v36 = OUTLINED_FUNCTION_4_33();
            if (!testFldeq(v36, v37, v38, 2) && !advance_tok(v5, v39, v40, v41))
            {
              v42 = OUTLINED_FUNCTION_4_33();
              if (!testFldeq(v42, v43, v44, 2) && !advance_tok(v5, v45, v46, v47))
              {
LABEL_14:
                v24 = v32;
                v48 = OUTLINED_FUNCTION_56_9();
                savescptr(v48, v49, v50);
                OUTLINED_FUNCTION_22_23();
                bspush_ca_scan_boa();
                v51 = OUTLINED_FUNCTION_4_33();
                if (!testFldeq(v51, v52, v53, 2))
                {
                  if (advance_tok(v5, v54, v55, v56))
                  {
                    v24 = v32;
                  }

                  else
                  {
                    v24 = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    v57 = v24;
    while (2)
    {
      v58 = *(v5 + 104);
      if (v58)
      {
        v59 = OUTLINED_FUNCTION_47_10(v58);
        v32 = v60;
      }

      else
      {
        v59 = vback(v5, v57);
        v32 = 0;
      }

      v25 = v32;
      switch(v59)
      {
        case 2:
          goto LABEL_7;
        case 3:
          bspush_ca_scan(v5, 4);
          OUTLINED_FUNCTION_2_35();
          goto LABEL_37;
        case 4:
          OUTLINED_FUNCTION_2_35();
LABEL_37:
          v88 = test_string_s();
          v25 = v32;
          v57 = v32;
          if (!v88)
          {
            goto LABEL_7;
          }

          continue;
        case 5:
          goto LABEL_9;
        case 6:
          OUTLINED_FUNCTION_2_35();
          v89 = test_string_s();
          v57 = v32;
          if (v89)
          {
            continue;
          }

          goto LABEL_40;
        case 7:
          goto LABEL_10;
        case 8:
          goto LABEL_14;
        case 9:
          bspop_boa(v5);
          bspush_ca_scan(v5, 10);
          OUTLINED_FUNCTION_2_35();
          goto LABEL_47;
        case 10:
        case 11:
          goto LABEL_48;
        case 12:
LABEL_40:
          savescptr(v5, 12, v128);
          bspush_ca_scan(v5, 11);
          v90 = OUTLINED_FUNCTION_4_33();
          v93 = testFldeq(v90, v91, v92, 2);
          v57 = v32;
          if (!v93)
          {
            v96 = advance_tok(v5, v32, v94, v95);
            v57 = v32;
            if (!v96)
            {
              v97 = OUTLINED_FUNCTION_4_33();
              v100 = testFldeq(v97, v98, v99, 2);
              v57 = v32;
              if (!v100)
              {
                v103 = advance_tok(v5, v32, v101, v102);
                v57 = v32;
                if (!v103)
                {
                  goto LABEL_44;
                }
              }
            }
          }

          continue;
        case 13:
LABEL_44:
          savescptr(v5, 13, v127);
          v104 = OUTLINED_FUNCTION_63_8();
          bspush_ca_scan(v104, v105);
          OUTLINED_FUNCTION_2_35();
          v106 = test_string_s();
          v57 = v32;
          if (v106)
          {
            continue;
          }

          v107 = OUTLINED_FUNCTION_63_8();
          bspush_ca_scan(v107, v108);
          OUTLINED_FUNCTION_16_28();
LABEL_47:
          v109 = test_string_s();
          v57 = v32;
          if (v109)
          {
            continue;
          }

LABEL_48:
          v110 = OUTLINED_FUNCTION_31_18();
          savescptr(v110, v111, v112);
LABEL_49:
          v113 = OUTLINED_FUNCTION_66_8();
          starttest(v113, v114);
          OUTLINED_FUNCTION_34_16();
          bspush_ca_boa();
          v115 = OUTLINED_FUNCTION_40_11();
          v116 = end_of_word(v115);
          goto LABEL_50;
        case 14:
          goto LABEL_49;
        case 15:
          *(v5 + 2822) = *(v5 + 2830);
          convert_1_or_2_digits(v5);
          goto LABEL_31;
        case 16:
          bspop_boa(v5);
          goto LABEL_4;
        case 17:
LABEL_31:
          v77 = OUTLINED_FUNCTION_92_5();
          starttest(v77, v78);
          lpta_loadpn(v5, v127);
          OUTLINED_FUNCTION_78_8();
          if (compare_ptas(v5) || testneq(v5))
          {
            goto LABEL_33;
          }

          bspush_ca_boa();
          v117 = OUTLINED_FUNCTION_93_5();
          v119 = lpta_loadp_setscan_r(v117, v118, 1);
          v57 = v32;
          if (v119)
          {
            continue;
          }

          OUTLINED_FUNCTION_16_28();
          goto LABEL_55;
        case 18:
LABEL_33:
          v79 = OUTLINED_FUNCTION_50_9();
          lpta_rpta_loadp(v79, v80, &v130);
          v81 = OUTLINED_FUNCTION_3_34();
          inserted = insert_2pt_s(v81, v82, 5, &unk_2806BC167, v83);
          v57 = v32;
          if (inserted)
          {
            continue;
          }

          starttest_l(v5, 23);
          bspush_ca_boa();
          v85 = OUTLINED_FUNCTION_50_9();
          v87 = lpta_loadp_setscan_l(v85, v86, 1);
          v57 = v32;
          if (v87)
          {
            continue;
          }

          OUTLINED_FUNCTION_4_33();
LABEL_55:
          v116 = test_string_s();
LABEL_50:
          if (v116)
          {
            v57 = v32;
          }

          else
          {
            v57 = 1;
          }

          continue;
        case 19:
          bspop_boa(v5);
          *(v5 + 2822) = *(v5 + 2826);
          starttest(v5, 20);
          v61 = OUTLINED_FUNCTION_93_5();
          if (lpta_loadp_setscan_r(v61, v62, 1))
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_16_28();
          if (test_string_s())
          {
            goto LABEL_27;
          }

          v63 = OUTLINED_FUNCTION_93_5();
          lpta_rpta_loadp(v63, v64, v127);
          v65 = OUTLINED_FUNCTION_3_34();
          if (insert_2pt_s(v65, v66, 4, &unk_2806BC133, v67))
          {
            goto LABEL_27;
          }

          goto LABEL_28;
        case 20:
LABEL_27:
          v68 = OUTLINED_FUNCTION_104_2();
          starttest(v68, v69);
          v70 = OUTLINED_FUNCTION_93_5();
          convert_por_double(v70);
          goto LABEL_28;
        case 21:
LABEL_28:
          v71 = OUTLINED_FUNCTION_50_9();
          lpta_rpta_loadp(v71, v72, v128);
          v73 = OUTLINED_FUNCTION_3_34();
          v76 = insert_2pt_s(v73, v74, 3, &unk_2806BC0E9, v75);
          v57 = v32;
          if (v76)
          {
            continue;
          }

          v120 = OUTLINED_FUNCTION_68_8();
          lpta_loadpn(v120, v121);
          rpta_loadpn(v5, &v130);
          v122 = compare_ptas(v5);
          if (!v122 && !testneq(v5))
          {
            delete_inp_from_left(v5);
          }

LABEL_60:
          *(v125 + 8) = v131;
          vretproc(v5);
          break;
        case 22:
        case 23:
          goto LABEL_60;
        case 24:
          bspop_boa(v5);
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_35_15();
          v123 = OUTLINED_FUNCTION_20_24();
          insert_l(v123, v124);
          goto LABEL_60;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_69_8();
}

uint64_t convert_por_date()
{
  OUTLINED_FUNCTION_6_32();
  v219 = *MEMORY[0x277D85DE8];
  v208 = 0;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v201 = 0;
  v202 = 0;
  v199 = 0;
  v200 = 0;
  OUTLINED_FUNCTION_83_6();
  v193 = 0;
  v194 = 0;
  v195 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v170, v2);
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_108_2(v3, v4);
  v5 = setjmp(v1);
  if (v5 || OUTLINED_FUNCTION_87_6(v5, v6, v7, v8, v9, v10, v11, v12, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198[0], v198[1], v198[2], v198[3], v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218) || (v13 = OUTLINED_FUNCTION_10_32(), get_parm(v13, v14, v15, -6), v16 = OUTLINED_FUNCTION_42_10(), get_parm(v16, v17, v18, -6), WORD2(v205) = 0, LODWORD(v205) = 0, LODWORD(v203) = -65535, v19 = OUTLINED_FUNCTION_68_8(), push_ptr_init(v19, v20), v21 = OUTLINED_FUNCTION_76_8(), v23 = push_ptr_init(v21, v22), OUTLINED_FUNCTION_99_4(v23, v24, v25, v26, v27, v28, v29, v30, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198[0], v198[1]), v31 = OUTLINED_FUNCTION_52_9(), push_ptr_init(v31, v32), v33 = OUTLINED_FUNCTION_54_9(), v35 = push_ptr_init(v33, v34), WORD2(v195) = 0, LODWORD(v195) = 0, LODWORD(v193) = -65535, OUTLINED_FUNCTION_82_7(v35, v36, &null_str_11), v37 = OUTLINED_FUNCTION_58_9(), starttest(v37, v38), v39 = OUTLINED_FUNCTION_34_16(), lpta_loadp_setscan_r(v39, v40, 1)))
  {
LABEL_4:
    vretproc(v0);
    return 94;
  }

  v42 = OUTLINED_FUNCTION_58_9();
  bspush_ca_scan(v42, v43);
  v44 = OUTLINED_FUNCTION_4_33();
  if (testFldeq(v44, v45, v46, 2) || advance_tok(v0, v47, v48, v49))
  {
    goto LABEL_14;
  }

LABEL_7:
  v50 = OUTLINED_FUNCTION_4_33();
  if (testFldeq(v50, v51, v52, 2) || advance_tok(v0, v53, v54, v55))
  {
    goto LABEL_14;
  }

LABEL_9:
  OUTLINED_FUNCTION_67_8();
  v56 = OUTLINED_FUNCTION_56_9();
  savescptr(v56, v57, v58);
  v59 = OUTLINED_FUNCTION_28_19();
  bspush_ca_scan(v59, v60);
LABEL_10:
  OUTLINED_FUNCTION_2_35();
  if (test_string_s())
  {
    goto LABEL_14;
  }

LABEL_11:
  v61 = OUTLINED_FUNCTION_77_8();
  if (savetok(v61, v62))
  {
    goto LABEL_14;
  }

LABEL_12:
  OUTLINED_FUNCTION_64_8();
  v63 = OUTLINED_FUNCTION_91_5();
  savescptr(v63, v64, v65);
  v66 = OUTLINED_FUNCTION_28_19();
  bspush_ca_scan(v66, v67);
  OUTLINED_FUNCTION_2_35();
  if (test_string_s())
  {
    goto LABEL_14;
  }

  v68 = OUTLINED_FUNCTION_22_23();
  bspush_ca_scan(v68, v69);
LABEL_28:
  OUTLINED_FUNCTION_2_35();
  if (test_string_s())
  {
    goto LABEL_14;
  }

  while (1)
  {
LABEL_29:
    v92 = OUTLINED_FUNCTION_101_2();
    savescptr(v92, v93, v94);
    if (advance_tok(v0, v95, v96, v97))
    {
      goto LABEL_14;
    }

    v98 = OUTLINED_FUNCTION_45_10();
    if (savetok(v98, v99))
    {
      goto LABEL_14;
    }

    v100 = OUTLINED_FUNCTION_33_17();
    if (testeq_tvars(v100, v101, v102))
    {
      goto LABEL_14;
    }

LABEL_32:
    v103 = OUTLINED_FUNCTION_89_6();
    savescptr(v103, v104, v105);
    v106 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v106, v107);
    v108 = OUTLINED_FUNCTION_4_33();
    if (testFldeq(v108, v109, v110, 2))
    {
      goto LABEL_14;
    }

    if (advance_tok(v0, v111, v112, v113))
    {
      goto LABEL_14;
    }

    v114 = OUTLINED_FUNCTION_4_33();
    if (testFldeq(v114, v115, v116, 2) || advance_tok(v0, v117, v118, v119))
    {
      goto LABEL_14;
    }

LABEL_36:
    v120 = OUTLINED_FUNCTION_62_8();
    savescptr(v120, v121, v122);
LABEL_37:
    v123 = OUTLINED_FUNCTION_4_33();
    if (testFldeq(v123, v124, v125, 2))
    {
      goto LABEL_14;
    }

    if (advance_tok(v0, v126, v127, v128))
    {
      goto LABEL_14;
    }

    v129 = OUTLINED_FUNCTION_4_33();
    if (testFldeq(v129, v130, v131, 2) || advance_tok(v0, v132, v133, v134))
    {
      goto LABEL_14;
    }

LABEL_41:
    v135 = OUTLINED_FUNCTION_31_18();
    savescptr(v135, v136, v137);
    v138 = OUTLINED_FUNCTION_40_11();
    if (end_of_word(v138))
    {
      goto LABEL_14;
    }

LABEL_42:
    *(v0 + 2822) = *(v0 + 2834);
    v139 = OUTLINED_FUNCTION_28_19();
    starttest(v139, v140);
    v141 = OUTLINED_FUNCTION_30_18();
    if (lpta_loadp_setscan_r(v141, v142, v143))
    {
      break;
    }

    v168 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v168, v169);
LABEL_23:
    OUTLINED_FUNCTION_49_9();
    v80 = test_string_s();
    if (!v80)
    {
      *(v0 + 136) = 1;
      if (!OUTLINED_FUNCTION_39_12(v80, v81, v82))
      {
        v83 = OUTLINED_FUNCTION_56_9();
        lpta_rpta_loadp(v83, v84, v85);
        v86 = OUTLINED_FUNCTION_3_34();
        if (!insert_2pt_s(v86, v87, 8, v88, v89))
        {
          goto LABEL_44;
        }
      }
    }

    do
    {
LABEL_14:
      while (2)
      {
        v70 = *(v0 + 104);
        if (v70)
        {
          v71 = OUTLINED_FUNCTION_47_10(v70);
        }

        else
        {
          v71 = OUTLINED_FUNCTION_74_8();
        }

        switch(v71)
        {
          case 2:
            goto LABEL_7;
          case 3:
            goto LABEL_9;
          case 4:
            v166 = OUTLINED_FUNCTION_28_19();
            bspush_ca_scan(v166, v167);
            goto LABEL_10;
          case 5:
            goto LABEL_11;
          case 6:
            goto LABEL_10;
          case 7:
            goto LABEL_12;
          case 8:
            v72 = OUTLINED_FUNCTION_28_19();
            bspush_ca_scan(v72, v73);
            OUTLINED_FUNCTION_2_35();
            if (test_string_s())
            {
              continue;
            }

            break;
          case 9:
            v90 = OUTLINED_FUNCTION_28_19();
            bspush_ca_scan(v90, v91);
            goto LABEL_28;
          case 10:
          case 12:
            goto LABEL_29;
          case 11:
            goto LABEL_28;
          case 13:
            goto LABEL_19;
          case 14:
            goto LABEL_32;
          case 15:
            goto LABEL_37;
          case 16:
            goto LABEL_36;
          case 17:
            goto LABEL_41;
          case 18:
            goto LABEL_42;
          case 19:
            goto LABEL_43;
          case 20:
            OUTLINED_FUNCTION_2_35();
            if (!test_string_s())
            {
              goto LABEL_23;
            }

            continue;
          case 21:
            goto LABEL_23;
          case 22:
            goto LABEL_44;
          case 23:
            goto LABEL_46;
          case 24:
            goto LABEL_49;
          case 25:
          case 26:
            goto LABEL_50;
          default:
            goto LABEL_4;
        }

        break;
      }

LABEL_19:
      v74 = OUTLINED_FUNCTION_4_33();
    }

    while (testFldeq(v74, v75, v76, 2) || advance_tok(v0, v77, v78, v79));
  }

LABEL_43:
  v144 = OUTLINED_FUNCTION_28_19();
  starttest(v144, v145);
  v146 = OUTLINED_FUNCTION_56_9();
  convert_1_or_2_digits(v146);
LABEL_44:
  v147 = OUTLINED_FUNCTION_91_5();
  lpta_rpta_loadp(v147, v148, v149);
  v150 = OUTLINED_FUNCTION_3_34();
  if (insert_2pt_s(v150, v151, 4, v152, v153))
  {
    goto LABEL_14;
  }

  v154 = OUTLINED_FUNCTION_28_19();
  starttest_l(v154, v155);
  v156 = OUTLINED_FUNCTION_101_2();
  convert_1_or_2_digits(v156);
LABEL_46:
  v157 = OUTLINED_FUNCTION_89_6();
  lpta_rpta_loadp(v157, v158, v159);
  v160 = OUTLINED_FUNCTION_3_34();
  if (insert_2pt_s(v160, v161, 3, v162, v163))
  {
    goto LABEL_14;
  }

  v164 = OUTLINED_FUNCTION_54_9();
  lpta_loadpn(v164, v165);
  OUTLINED_FUNCTION_78_8();
  if (compare_ptas(v0) || testneq(v0))
  {
LABEL_49:
    convert_por_double(v0);
  }

  else
  {
    *(v0 + 2898) = 4;
    convert_large_numbers(v0, v198, &v206);
  }

LABEL_50:
  OUTLINED_FUNCTION_97_5(v207);
  return 0;
}

void add_por_point_digits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v58 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_38_13();
  bzero(v50, v4);
  OUTLINED_FUNCTION_37_14();
  bzero(v57, v5);
  if (setjmp(v57) || ventproc(v3, v50, v56, v55, v54, v57) || (v6 = OUTLINED_FUNCTION_10_32(), get_parm(v6, v7, v8, -6), v9 = OUTLINED_FUNCTION_42_10(), get_parm(v9, v10, v11, -6), v12 = OUTLINED_FUNCTION_54_9(), push_ptr_init(v12, v13), fence_33(v3, 0, &null_str_11), v14 = OUTLINED_FUNCTION_58_9(), starttest(v14, v15), v16 = OUTLINED_FUNCTION_34_16(), lpta_loadp_setscan_r(v16, v17, 1)) || (OUTLINED_FUNCTION_49_9(), test_string_s()))
  {
LABEL_5:
    vretproc(v3);
  }

  else
  {
    LODWORD(v18) = 0;
    while (2)
    {
      savescptr(v3, 2, v51);
LABEL_9:
      while (1)
      {
        v19 = OUTLINED_FUNCTION_49_9();
        if (testFldeq(v19, v20, 3, 2) || advance_tok(v3, v21, v22, v23))
        {
          break;
        }

        bspush_ca_scan(v3, 3);
      }

      v24 = v18;
LABEL_13:
      v25 = *(v3 + 104);
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_47_10(v25);
        v18 = v27;
      }

      else
      {
        v26 = vback(v3, v24);
        v18 = 0;
      }

      switch(v26)
      {
        case 2:
          continue;
        case 3:
          savescptr(v3, 3, v52);
          copyvar(v3, (v3 + 2820), (v3 + 2868));
          v28 = OUTLINED_FUNCTION_104_2();
          lpta_rpta_loadp(v28, v29, v51);
          v30 = OUTLINED_FUNCTION_49_9();
          inserted = insert_2pt_s(v30, v31, 9, &unk_2806BC2F2, 0);
          v24 = v18;
          if (inserted)
          {
            goto LABEL_13;
          }

          starttest(v3, 5);
          v33 = OUTLINED_FUNCTION_66_8();
          if (lpta_loadp_setscan_r(v33, v34, 1))
          {
            goto LABEL_26;
          }

          bspush_ca_scan_boa();
          v35 = OUTLINED_FUNCTION_49_9();
          if (testFldeq(v35, v36, 0, 53))
          {
            v24 = v18;
          }

          else
          {
            v24 = 1;
          }

          goto LABEL_13;
        case 4:
          goto LABEL_9;
        case 5:
LABEL_26:
          v46 = OUTLINED_FUNCTION_89_6();
          single_chars(v46, v47, v48);
          goto LABEL_27;
        case 6:
          bspop_boa(v3);
          v40 = advance_tok(v3, v37, v38, v39);
          v24 = v18;
          if (v40)
          {
            goto LABEL_13;
          }

          v43 = advance_tok(v3, v18, v41, v42);
          v24 = v18;
          if (v43)
          {
            goto LABEL_13;
          }

          *(v3 + 136) = 1;
          v45 = OUTLINED_FUNCTION_39_12(v43, v18, v44);
          v24 = v18;
          if (v45)
          {
            goto LABEL_13;
          }

          v49 = OUTLINED_FUNCTION_89_6();
          convert_por_double(v49);
          goto LABEL_27;
        case 7:
        case 8:
LABEL_27:
          *(v3 + 2614) = *(v3 + 2642);
          break;
        case 9:
          goto LABEL_28;
        default:
          goto LABEL_5;
      }

      break;
    }

LABEL_28:
    OUTLINED_FUNCTION_97_5(v53);
  }

  OUTLINED_FUNCTION_69_8();
}

void process_por_fraction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v96 = *MEMORY[0x277D85DE8];
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v87[0] = 0;
  v87[1] = 0;
  v86[0] = 0;
  v86[1] = 0;
  v85[0] = 0;
  v85[1] = 0;
  v83 = 0;
  v84 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v82, v4);
  OUTLINED_FUNCTION_37_14();
  bzero(v95, v5);
  if (setjmp(v95) || ventproc(v3, v82, v94, v93, v92, v95) || (v6 = OUTLINED_FUNCTION_10_32(), get_parm(v6, v7, v8, -6), v9 = OUTLINED_FUNCTION_42_10(), get_parm(v9, v10, v11, -6), v12 = OUTLINED_FUNCTION_68_8(), push_ptr_init(v12, v13), v14 = OUTLINED_FUNCTION_76_8(), v16 = push_ptr_init(v14, v15), OUTLINED_FUNCTION_99_4(v16, v17, v18, v19, v20, v21, v22, v23, v77, v78, v79, v80, v81, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v83, v84), v24 = OUTLINED_FUNCTION_52_9(), push_ptr_init(v24, v25), fence_33(v3, 0, &null_str_11), v26 = OUTLINED_FUNCTION_58_9(), starttest(v26, v27), v28 = OUTLINED_FUNCTION_34_16(), lpta_loadp_setscan_r(v28, v29, 1)))
  {
LABEL_4:
    vretproc(v3);
    goto LABEL_5;
  }

  bspush_boa(v3);
  LODWORD(v30) = 0;
  do
  {
LABEL_7:
    v31 = OUTLINED_FUNCTION_50_9();
    bspush_ca_scan(v31, v32);
    OUTLINED_FUNCTION_2_35();
  }

  while (!test_string_s());
  LODWORD(v33) = v30;
  while (2)
  {
    v34 = *(v3 + 104);
    if (v34)
    {
      v35 = OUTLINED_FUNCTION_47_10(v34);
      v30 = v36;
    }

    else
    {
      v35 = vback(v3, v33);
      v30 = 0;
    }

    switch(v35)
    {
      case 2:
        bspush_nboa(v3);
        goto LABEL_14;
      case 3:
        goto LABEL_7;
      case 4:
LABEL_14:
        v37 = OUTLINED_FUNCTION_66_8();
        savescptr(v37, v38, v87);
        v39 = OUTLINED_FUNCTION_93_5();
        bspush_ca_scan(v39, v40);
        v41 = OUTLINED_FUNCTION_4_33();
        v44 = testFldeq(v41, v42, v43, 3);
        v33 = v30;
        if (!v44)
        {
          goto LABEL_24;
        }

        continue;
      case 5:
        v47 = OUTLINED_FUNCTION_4_33();
        v50 = testFldeq(v47, v48, v49, 2);
        LODWORD(v33) = v30;
        if (v50)
        {
          continue;
        }

        v53 = advance_tok(v3, v30, v51, v52);
        LODWORD(v33) = v30;
        if (v53)
        {
          continue;
        }

        OUTLINED_FUNCTION_2_35();
        v54 = test_string_s();
        LODWORD(v33) = v30;
        if (v54)
        {
          continue;
        }

        v55 = OUTLINED_FUNCTION_4_33();
        v58 = testFldeq(v55, v56, v57, 2);
        LODWORD(v33) = v30;
        if (v58)
        {
          continue;
        }

        bspush_ca_scan_boa();
        v59 = OUTLINED_FUNCTION_27_20();
        v61 = 53;
        goto LABEL_22;
      case 6:
        goto LABEL_25;
      case 7:
        bspop_boa(v3);
        bspush_ca_scan_boa();
        v59 = OUTLINED_FUNCTION_27_20();
        v61 = 54;
LABEL_22:
        v62 = testFldeq(v59, v60, 0, v61);
        goto LABEL_28;
      case 8:
        bspop_boa(v3);
LABEL_24:
        v63 = advance_tok(v3, v33, v45, v46);
        LODWORD(v33) = v30;
        if (v63)
        {
          continue;
        }

LABEL_25:
        v64 = OUTLINED_FUNCTION_104_2();
        savescptr(v64, v65, &v88);
        v66 = OUTLINED_FUNCTION_34_16();
        v67 = end_of_word(v66);
        LODWORD(v33) = v30;
        if (v67)
        {
          continue;
        }

LABEL_26:
        *(v3 + 2822) = *(v3 + 2842);
        v68 = OUTLINED_FUNCTION_92_5();
        starttest(v68, v69);
        v70 = OUTLINED_FUNCTION_34_16();
        find_next_word(v70, v71, v86, v85);
        if (!v72)
        {
          bspush_ca_boa();
          lpta_rpta_loadp(v3, v86, v85);
          v73 = OUTLINED_FUNCTION_27_20();
          v62 = setd_lookup(v73, v74, 54);
LABEL_28:
          if (v62)
          {
            LODWORD(v33) = v30;
          }

          else
          {
            LODWORD(v33) = 1;
          }

          continue;
        }

LABEL_34:
        convert_por_fraction(v3);
LABEL_35:
        *(v3 + 3010) = 0;
        OUTLINED_FUNCTION_97_5(v89);
LABEL_5:
        OUTLINED_FUNCTION_69_8();
        return;
      case 9:
        goto LABEL_26;
      case 10:
        goto LABEL_34;
      case 11:
        bspop_boa(v3);
        copy_string(v3, v87, &v88, &v83);
        goto LABEL_33;
      case 12:
LABEL_33:
        OUTLINED_FUNCTION_46_10();
        OUTLINED_FUNCTION_35_15();
        v75 = OUTLINED_FUNCTION_20_24();
        insert_l(v75, v76);
        goto LABEL_34;
      case 13:
      case 14:
        goto LABEL_35;
      default:
        goto LABEL_4;
    }
  }
}

void por_monetary_exp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70_8();
  v62 = v3;
  v63 = v4;
  v6 = v5;
  v78 = *MEMORY[0x277D85DE8];
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v68[0] = 0;
  v68[1] = 0;
  OUTLINED_FUNCTION_75_8();
  v65 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v64, v7);
  OUTLINED_FUNCTION_37_14();
  bzero(v77, v8);
  if (!setjmp(v77) && !ventproc(v6, v64, v76, v75, v74, v77))
  {
    v9 = OUTLINED_FUNCTION_51_9();
    get_parm(v9, v10, v62, -6);
    v11 = OUTLINED_FUNCTION_68_8();
    get_parm(v11, v12, v63, -6);
    LOWORD(v69) = -4;
    push_ptr_init(v6, v68);
    v13 = OUTLINED_FUNCTION_73_8();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_32_17();
    v17 = push_ptr_init(v15, v16);
    v65 = 65532;
    OUTLINED_FUNCTION_82_7(v17, v18, &null_str_11);
    HIWORD(v69) = 0;
    v19 = OUTLINED_FUNCTION_58_9();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_51_9();
    if (!lpta_loadp_setscan_r(v21, v22, 1))
    {
      v23 = OUTLINED_FUNCTION_28_19();
      bspush_ca_scan(v23, v24);
      OUTLINED_FUNCTION_2_35();
      v25 = test_string_s();
      v26 = 0;
      v27 = 0;
      if (v25)
      {
LABEL_8:
        while (2)
        {
          v30 = v6[13];
          if (v30)
          {
            v31 = OUTLINED_FUNCTION_47_10(v30);
            v26 = v32;
          }

          else
          {
            v31 = vback(v6, v27);
            v26 = 0;
          }

          v33 = v26;
          switch(v31)
          {
            case 2:
              v34 = OUTLINED_FUNCTION_34_16();
              bspush_ca_scan(v34, v35);
              OUTLINED_FUNCTION_16_28();
              v36 = test_string_s();
              v27 = v26;
              if (v36)
              {
                continue;
              }

              goto LABEL_24;
            case 3:
              goto LABEL_7;
            case 4:
              goto LABEL_26;
            case 5:
              OUTLINED_FUNCTION_2_35();
              v37 = test_string_s();
              v27 = v26;
              if (v37)
              {
                continue;
              }

              v38 = OUTLINED_FUNCTION_66_8();
              bspush_ca_scan(v38, v39);
              v40 = OUTLINED_FUNCTION_92_5();
              bspush_ca_scan(v40, v41);
              OUTLINED_FUNCTION_2_35();
              goto LABEL_17;
            case 6:
LABEL_24:
              OUTLINED_FUNCTION_65_8();
              v29 = &v67;
              goto LABEL_25;
            case 7:
              v43 = OUTLINED_FUNCTION_51_9();
              bspush_ca_scan(v43, v44);
              OUTLINED_FUNCTION_2_35();
              goto LABEL_21;
            case 8:
              OUTLINED_FUNCTION_2_35();
LABEL_17:
              v42 = test_string_s();
              v27 = v26;
              if (!v42)
              {
                goto LABEL_23;
              }

              continue;
            case 9:
LABEL_23:
              v28 = 9;
              v29 = &v66;
              goto LABEL_25;
            case 10:
              OUTLINED_FUNCTION_2_35();
LABEL_21:
              v45 = test_string_s();
              v33 = v26;
              v27 = v26;
              if (!v45)
              {
                goto LABEL_26;
              }

              continue;
            case 11:
              v48 = v26;
              goto LABEL_27;
            case 12:
              goto LABEL_30;
            case 13:
            case 16:
              goto LABEL_36;
            case 14:
              goto LABEL_32;
            case 15:
              goto LABEL_34;
            case 17:
              *(v62 + 8) = v73;
              *(v63 + 8) = v71;
              vretproc(v6);
              goto LABEL_5;
            case 18:
              bspop_boa(v6);
              goto LABEL_4;
            default:
              goto LABEL_4;
          }
        }
      }

LABEL_7:
      OUTLINED_FUNCTION_67_8();
      v29 = v68;
LABEL_25:
      savescptr(v6, v28, v29);
      v33 = v26;
LABEL_26:
      v46 = v33;
      OUTLINED_FUNCTION_2_35();
      v47 = test_string_s();
      v48 = v46;
      v27 = v46;
      if (v47)
      {
        goto LABEL_8;
      }

LABEL_27:
      savescptr(v6, 11, &v72);
      lpta_loadpn(v6, v68);
      OUTLINED_FUNCTION_78_8();
      if (compare_ptas(v6))
      {
        v26 = v48;
      }

      else
      {
        v49 = testneq(v6);
        v50 = 2950;
        v26 = v48;
        if (!v49)
        {
LABEL_35:
          v26 = v48;
          HIWORD(v69) = *(v6 + v50);
LABEL_36:
          v57 = OUTLINED_FUNCTION_28_19();
          starttest(v57, v58);
          OUTLINED_FUNCTION_28_19();
          bspush_ca_boa();
          v59 = OUTLINED_FUNCTION_51_9();
          move_i(v59, v60, v61);
          if (convert_por_monetary_exp(v6, &v72, &v70, &v69))
          {
            v27 = v26;
          }

          else
          {
            v27 = 1;
          }

          goto LABEL_8;
        }
      }

LABEL_30:
      v48 = v26;
      v51 = OUTLINED_FUNCTION_73_8();
      lpta_loadpn(v51, v52);
      OUTLINED_FUNCTION_78_8();
      if (compare_ptas(v6) || (v53 = testneq(v6), v50 = 2922, v53))
      {
LABEL_32:
        v48 = v26;
        v54 = OUTLINED_FUNCTION_32_17();
        lpta_loadpn(v54, v55);
        OUTLINED_FUNCTION_78_8();
        if (compare_ptas(v6) || (v56 = testneq(v6), v50 = 5930, v56))
        {
LABEL_34:
          v50 = 5934;
          v48 = v26;
        }
      }

      goto LABEL_35;
    }
  }

LABEL_4:
  vretproc(v6);
LABEL_5:
  OUTLINED_FUNCTION_69_8();
}

uint64_t convert_por_monetary_exp(uint64_t a1, __int16 *a2, uint64_t a3, __int16 *a4)
{
  v330 = *MEMORY[0x277D85DE8];
  v325[0] = 0;
  v325[1] = 0;
  v323 = 0;
  v324 = 0;
  v321[1] = 0;
  v322 = 0;
  v320 = 0;
  v321[0] = 0;
  OUTLINED_FUNCTION_43_10();
  v317[0] = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v316, v7);
  OUTLINED_FUNCTION_37_14();
  bzero(v329, v8);
  if (setjmp(v329) || ventproc(a1, v316, v328, v327, v326, v329))
  {
    goto LABEL_3;
  }

  v10 = OUTLINED_FUNCTION_34_16();
  get_parm(v10, v11, a2, -6);
  v12 = OUTLINED_FUNCTION_42_10();
  get_parm(v12, v13, v14, -6);
  get_parm(a1, &v322 + 4, a4, -4);
  v15 = OUTLINED_FUNCTION_31_18();
  get_parm(v15, v16, v17, -4);
  push_ptr_init(a1, v321);
  v18 = OUTLINED_FUNCTION_77_8();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_68_8();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_76_8();
  v24 = push_ptr_init(v22, v23);
  OUTLINED_FUNCTION_99_4(v24, v25, v26, v27, v28, v29, v30, v31, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], v316[17], v316[18], v316[19], v316[20], v316[21], v316[22], v317[0], v317[1], v317[2], v317[3], v317[4], v317[5]);
  v32 = OUTLINED_FUNCTION_52_9();
  push_ptr_init(v32, v33);
  v34 = OUTLINED_FUNCTION_54_9();
  push_ptr_init(v34, v35);
  v36 = OUTLINED_FUNCTION_44_10();
  v38 = push_ptr_init(v36, v37);
  v39 = 0;
  OUTLINED_FUNCTION_82_7(v38, v40, &null_str_11);
  starttest(a1, 1);
  v41 = OUTLINED_FUNCTION_34_16();
  v43 = 0;
  if (lpta_loadp_setscan_r(v41, v42, 1))
  {
LABEL_5:
    v44 = v39;
    v45 = OUTLINED_FUNCTION_28_19();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_30_18();
    if (lpta_loadp_setscan_r(v47, v48, v49))
    {
LABEL_3:
      vretproc(a1);
      return 94;
    }

    v50 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v50, v51);
    OUTLINED_FUNCTION_2_35();
    if (!test_string_s())
    {
LABEL_7:
      OUTLINED_FUNCTION_94_5();
      savescptr(a1, 31, v325);
      v52 = OUTLINED_FUNCTION_28_19();
      bspush_ca_scan(v52, v53);
      OUTLINED_FUNCTION_2_35();
      if (!test_string_s())
      {
LABEL_8:
        OUTLINED_FUNCTION_94_5();
        v54 = OUTLINED_FUNCTION_62_8();
        savescptr(v54, v55, v56);
        v57 = OUTLINED_FUNCTION_4_33();
        if (!testFldeq(v57, v58, v59, 2) && !advance_tok(a1, v60, v61, v62))
        {
          v63 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v63, v64);
          v65 = v43;
LABEL_11:
          v66 = v65;
          v67 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v67, v68);
          v69 = v44;
          v70 = v66;
LABEL_12:
          v71 = v70;
          v44 = v69;
          v72 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v72, v73);
          v74 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v74, v75);
LABEL_13:
          while (1)
          {
            OUTLINED_FUNCTION_2_35();
            if (test_string_s())
            {
              break;
            }

            v76 = OUTLINED_FUNCTION_4_33();
            if (testFldeq(v76, v77, v78, 2))
            {
              break;
            }

            if (advance_tok(a1, v79, v80, v81))
            {
              break;
            }

            v82 = OUTLINED_FUNCTION_4_33();
            if (testFldeq(v82, v83, v84, 2))
            {
              break;
            }

            if (advance_tok(a1, v85, v86, v87))
            {
              break;
            }

            v88 = OUTLINED_FUNCTION_4_33();
            if (testFldeq(v88, v89, v90, 2) || advance_tok(a1, v91, v92, v93))
            {
              break;
            }

            v94 = OUTLINED_FUNCTION_34_16();
            bspush_ca_scan(v94, v95);
          }

          v43 = v71;
        }
      }
    }
  }

  else
  {
    v96 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v96, v97);
    OUTLINED_FUNCTION_2_35();
    v44 = 0;
    v43 = 0;
    if (!test_string_s())
    {
LABEL_22:
      OUTLINED_FUNCTION_94_5();
      savescptr(a1, 2, v325);
      v98 = OUTLINED_FUNCTION_4_33();
      if (!testFldeq(v98, v99, v100, 2) && !advance_tok(a1, v101, v102, v103))
      {
        v104 = OUTLINED_FUNCTION_58_9();
        bspush_ca_scan(v104, v105);
        v106 = OUTLINED_FUNCTION_27_20();
        if (!testFldeq(v106, v107, 3, 2) && !advance_tok(a1, v108, v109, v110))
        {
LABEL_135:
          OUTLINED_FUNCTION_94_5();
          savescptr(a1, 4, v321);
          v287 = OUTLINED_FUNCTION_58_9();
          bspush_ca_scan(v287, v288);
          v289 = OUTLINED_FUNCTION_27_20();
          if (!testFldeq(v289, v290, 3, 2))
          {
            v294 = advance_tok(a1, v291, v292, v293);
            v113 = v44;
            v286 = v43;
            if (!v294)
            {
LABEL_137:
              v43 = v286;
              savescptr(a1, 5, v319);
LABEL_138:
              OUTLINED_FUNCTION_67_8();
              v295 = OUTLINED_FUNCTION_56_9();
              savescptr(v295, v296, v297);
              v298 = OUTLINED_FUNCTION_28_19();
              bspush_ca_scan(v298, v299);
LABEL_139:
              v44 = v113;
              OUTLINED_FUNCTION_64_8();
              v300 = OUTLINED_FUNCTION_91_5();
              savescptr(v300, v301, v302);
              OUTLINED_FUNCTION_2_35();
              if (!test_string_s())
              {
LABEL_140:
                OUTLINED_FUNCTION_94_5();
                while (1)
                {
                  v305 = OUTLINED_FUNCTION_4_33();
                  if (testFldeq(v305, v306, v307, 2) || advance_tok(a1, v308, v309, v310))
                  {
                    break;
                  }

                  v303 = OUTLINED_FUNCTION_40_11();
                  bspush_ca_scan(v303, v304);
                }
              }
            }
          }
        }
      }
    }
  }

  v111 = v44;
LABEL_29:
  LODWORD(v112) = v43;
  while (2)
  {
    v113 = v111;
    v114 = *(a1 + 104);
    if (v114)
    {
      v115 = OUTLINED_FUNCTION_47_10(v114);
      v43 = v116;
    }

    else
    {
      v115 = vback(a1, v112);
      v43 = 0;
    }

    v117 = v115 - 1;
    v44 = v113;
    v65 = v43;
    v69 = v113;
    v70 = v43;
    v118 = v113;
    v119 = v113;
    LODWORD(v120) = v113;
    v121 = v113;
    switch(v117)
    {
      case 0:
        v39 = v113;
        goto LABEL_5;
      case 1:
        goto LABEL_22;
      case 2:
        goto LABEL_138;
      case 3:
        goto LABEL_135;
      case 4:
        v286 = v43;
        goto LABEL_137;
      case 5:
        OUTLINED_FUNCTION_65_8();
        v258 = OUTLINED_FUNCTION_101_2();
        savescptr(v258, v259, v260);
        bspush_boa(a1);
        goto LABEL_108;
      case 6:
        goto LABEL_139;
      case 7:
        goto LABEL_140;
      case 8:
        bspush_nboa(a1);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_28_19();
        bspush_ca_scan_boa();
        goto LABEL_73;
      case 9:
LABEL_108:
        while (1)
        {
          OUTLINED_FUNCTION_2_35();
          if (test_string_s())
          {
            break;
          }

          v261 = OUTLINED_FUNCTION_22_23();
          bspush_ca_scan(v261, v262);
        }

        goto LABEL_109;
      case 10:
        OUTLINED_FUNCTION_4_33();
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v209)
        {
          continue;
        }

        goto LABEL_81;
      case 11:
        v202 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v202, v203);
LABEL_73:
        OUTLINED_FUNCTION_2_35();
        goto LABEL_74;
      case 12:
        goto LABEL_75;
      case 13:
        OUTLINED_FUNCTION_16_28();
LABEL_74:
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v204)
        {
          continue;
        }

LABEL_75:
        bspush_nboa(a1);
        OUTLINED_FUNCTION_4_33();
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v205)
        {
          continue;
        }

        v206 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v206, v207);
        OUTLINED_FUNCTION_16_28();
LABEL_78:
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v208)
        {
          continue;
        }

LABEL_82:
        bspush_nboa(a1);
LABEL_83:
        v213 = OUTLINED_FUNCTION_31_18();
        savescptr(v213, v214, v215);
        v216 = OUTLINED_FUNCTION_40_11();
        end_of_word(v216);
        OUTLINED_FUNCTION_41_10();
        if (v217)
        {
          continue;
        }

        OUTLINED_FUNCTION_107_2();
LABEL_113:
        v267 = OUTLINED_FUNCTION_77_8();
        lpta_loadpn(v267, v268);
        OUTLINED_FUNCTION_78_8();
        if (compare_ptas(a1) || testneq(a1))
        {
LABEL_115:
          lpta_loadpn(a1, v321);
          OUTLINED_FUNCTION_78_8();
          if (compare_ptas(a1) || testneq(a1))
          {
LABEL_117:
            v269 = OUTLINED_FUNCTION_56_9();
            convert_por_single_digit(v269);
          }

          else
          {
            v311 = OUTLINED_FUNCTION_56_9();
            convert_por_double(v311);
          }
        }

        else
        {
          v312 = OUTLINED_FUNCTION_56_9();
          convert_por_hundreds(v312, v313, v314);
        }

LABEL_118:
        v270 = OUTLINED_FUNCTION_76_8();
        lpta_loadpn(v270, v271);
        OUTLINED_FUNCTION_78_8();
        if (!compare_ptas(a1) && !testneq(a1))
        {
          v272 = OUTLINED_FUNCTION_101_2();
          add_por_point_digits(v272, v273, v274);
        }

LABEL_121:
        v275 = OUTLINED_FUNCTION_52_9();
        lpta_loadpn(v275, v276);
        OUTLINED_FUNCTION_78_8();
        if (!compare_ptas(a1) && !testeq(a1))
        {
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_35_15();
          v277 = OUTLINED_FUNCTION_29_19();
          insert_l(v277, v278);
        }

LABEL_124:
        add_por_currency_units(a1, &v323, &v322 + 4);
        goto LABEL_132;
      case 14:
        OUTLINED_FUNCTION_4_33();
        goto LABEL_78;
      case 15:
      case 16:
        goto LABEL_82;
      case 17:
LABEL_81:
        v210 = OUTLINED_FUNCTION_89_6();
        savescptr(v210, v211, v212);
        goto LABEL_82;
      case 18:
        goto LABEL_83;
      case 19:
        goto LABEL_113;
      case 20:
        goto LABEL_115;
      case 21:
      case 22:
      case 24:
        goto LABEL_118;
      case 23:
        goto LABEL_117;
      case 25:
        goto LABEL_121;
      case 26:
        goto LABEL_124;
      case 27:
      case 28:
      case 60:
        goto LABEL_132;
      case 30:
        goto LABEL_7;
      case 31:
        goto LABEL_8;
      case 32:
        v186 = OUTLINED_FUNCTION_4_33();
        testFldeq(v186, v187, v188, 2);
        OUTLINED_FUNCTION_41_10();
        if (!v190)
        {
          advance_tok(a1, v112, v111, v189);
          v44 = v113;
          OUTLINED_FUNCTION_41_10();
          if (!v191)
          {
            goto LABEL_11;
          }
        }

        continue;
      case 33:
        goto LABEL_11;
      case 34:
        v180 = OUTLINED_FUNCTION_4_33();
        testFldeq(v180, v181, v182, 2);
        OUTLINED_FUNCTION_41_10();
        if (!v184)
        {
          advance_tok(a1, v112, v111, v183);
          OUTLINED_FUNCTION_41_10();
          if (!v185)
          {
            goto LABEL_12;
          }
        }

        continue;
      case 35:
        goto LABEL_12;
      case 36:
      case 38:
        v122 = OUTLINED_FUNCTION_56_9();
        savescptr(v122, v123, v124);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_2_35();
        test_string_s();
        OUTLINED_FUNCTION_41_10();
        if (v125)
        {
          continue;
        }

        goto LABEL_35;
      case 37:
        goto LABEL_95;
      case 39:
        v44 = v113;
        v71 = v43;
        goto LABEL_13;
      case 40:
        do
        {
          v236 = OUTLINED_FUNCTION_4_33();
          testFldeq(v236, v237, v238, 2);
          OUTLINED_FUNCTION_41_10();
          if (v240)
          {
            break;
          }

          advance_tok(a1, v112, v111, v239);
          OUTLINED_FUNCTION_41_10();
          if (v241)
          {
            break;
          }

          v242 = OUTLINED_FUNCTION_4_33();
          testFldeq(v242, v243, v244, 2);
          OUTLINED_FUNCTION_41_10();
          if (v246)
          {
            break;
          }

          advance_tok(a1, v112, v111, v245);
          OUTLINED_FUNCTION_41_10();
          if (v247)
          {
            break;
          }

          v248 = OUTLINED_FUNCTION_4_33();
          testFldeq(v248, v249, v250, 2);
          OUTLINED_FUNCTION_41_10();
          if (v252)
          {
            break;
          }

          advance_tok(a1, v112, v111, v251);
          OUTLINED_FUNCTION_41_10();
          if (v253)
          {
            break;
          }

          v254 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v254, v255);
LABEL_95:
          v233 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v233, v234);
          OUTLINED_FUNCTION_2_35();
          test_string_s();
          OUTLINED_FUNCTION_41_10();
        }

        while (!v235);
        continue;
      case 41:
        goto LABEL_39;
      case 42:
LABEL_35:
        v126 = OUTLINED_FUNCTION_57_9();
        savescptr(v126, v127, v128);
        v129 = OUTLINED_FUNCTION_4_33();
        testFldeq(v129, v130, v131, 2);
        OUTLINED_FUNCTION_41_10();
        if (v133)
        {
          continue;
        }

        advance_tok(a1, v112, v111, v132);
        OUTLINED_FUNCTION_41_10();
        if (v134)
        {
          continue;
        }

        v135 = OUTLINED_FUNCTION_4_33();
        testFldeq(v135, v136, v137, 2);
        OUTLINED_FUNCTION_41_10();
        if (v139)
        {
          continue;
        }

        advance_tok(a1, v112, v111, v138);
        OUTLINED_FUNCTION_41_10();
        if (v140)
        {
          continue;
        }

LABEL_39:
        bspush_nboa(a1);
LABEL_40:
        savescptr(a1, 44, &v323);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_scan_boa();
        v141 = OUTLINED_FUNCTION_4_33();
        testFldeq(v141, v142, v143, 2);
        OUTLINED_FUNCTION_41_10();
        if (!v145)
        {
          v146 = advance_tok(a1, v112, v111, v144);
LABEL_86:
          if (v146)
          {
            LODWORD(v112) = v43;
          }

          else
          {
            LODWORD(v112) = 1;
          }

          v111 = v113;
        }

        continue;
      case 43:
        goto LABEL_40;
      case 44:
        bspop_boa(a1);
        v218 = OUTLINED_FUNCTION_28_19();
        starttest(v218, v219);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_boa();
        v146 = end_of_word(a1);
        goto LABEL_86;
      case 45:
        OUTLINED_FUNCTION_107_2();
        goto LABEL_43;
      case 46:
        bspop_boa(a1);
        goto LABEL_3;
      case 47:
LABEL_43:
        lpta_loadpn(a1, v325);
        v147 = OUTLINED_FUNCTION_54_9();
        rpta_loadpn(v147, v148);
        if (!compare_ptas(a1) && !testneq(a1))
        {
          v149 = OUTLINED_FUNCTION_62_8();
          lpta_rpta_loadp(v149, v150, v151);
          v152 = OUTLINED_FUNCTION_3_34();
          insert_2pt_s(v152, v153, 6, v154, v155);
        }

        goto LABEL_46;
      case 48:
LABEL_46:
        v156 = OUTLINED_FUNCTION_28_19();
        starttest(v156, v157);
        v158 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v158, v159, v160))
        {
          goto LABEL_47;
        }

        goto LABEL_104;
      case 49:
LABEL_47:
        v161 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_r(v161, v162, v163))
        {
          OUTLINED_FUNCTION_49_9();
          v164 = test_string_s();
          if (!v164)
          {
            *(a1 + 136) = 1;
            if (!OUTLINED_FUNCTION_39_12(v164, v165, v166))
            {
              *(a1 + 2906) = 1;
            }
          }
        }

        goto LABEL_51;
      case 50:
        OUTLINED_FUNCTION_102_2();
        OUTLINED_FUNCTION_39_12(v192, v193, v194);
        OUTLINED_FUNCTION_41_10();
        if (v195)
        {
          continue;
        }

        v196 = OUTLINED_FUNCTION_28_19();
        starttest(v196, v197);
        v198 = OUTLINED_FUNCTION_28_19();
        bspush_ca(v198);
        v199 = OUTLINED_FUNCTION_68_8();
        lpta_loadpn(v199, v200);
        rpta_loadpn(a1, &v323);
        compare_ptas(a1);
        OUTLINED_FUNCTION_41_10();
        if (v201)
        {
          continue;
        }

        testeq(a1);
        goto LABEL_92;
      case 51:
LABEL_104:
        while (1)
        {
          OUTLINED_FUNCTION_2_35();
          if (test_string_s())
          {
            break;
          }

          v256 = OUTLINED_FUNCTION_28_19();
          bspush_ca_scan(v256, v257);
        }

LABEL_109:
        v111 = v113;
        goto LABEL_29;
      case 52:
      case 56:
        goto LABEL_54;
      case 53:
        v220 = OUTLINED_FUNCTION_7_32();
        lpta_loadp_setscan_r(v220, v221, v222);
        OUTLINED_FUNCTION_41_10();
        if (v223)
        {
          continue;
        }

        OUTLINED_FUNCTION_16_28();
        test_string_s();
LABEL_92:
        OUTLINED_FUNCTION_41_10();
        if (!v224)
        {
          goto LABEL_93;
        }

        continue;
      case 54:
LABEL_93:
        v225 = OUTLINED_FUNCTION_56_9();
        lpta_rpta_loadp(v225, v226, v227);
        v228 = OUTLINED_FUNCTION_3_34();
        insert_2pt_s(v228, v229, 4, v230, v231);
        OUTLINED_FUNCTION_41_10();
        if (!v232)
        {
          goto LABEL_52;
        }

        continue;
      case 55:
      case 57:
        goto LABEL_52;
      case 58:
LABEL_51:
        OUTLINED_FUNCTION_56_9();
        convert_digits();
LABEL_52:
        add_por_currency_units(a1, v318, &v322 + 4);
        goto LABEL_53;
      case 59:
LABEL_53:
        *(a1 + 2906) = 0;
        v118 = 1;
LABEL_54:
        v120 = v118;
        v167 = OUTLINED_FUNCTION_44_10();
        lpta_loadpn(v167, v168);
        OUTLINED_FUNCTION_78_8();
        if (compare_ptas(a1) || testneq(a1))
        {
          goto LABEL_132;
        }

        v169 = OUTLINED_FUNCTION_7_32();
        if (!lpta_loadp_setscan_r(v169, v170, v171))
        {
          OUTLINED_FUNCTION_16_28();
          if (!test_string_s())
          {
            v172 = OUTLINED_FUNCTION_28_19();
            starttest(v172, v173);
            v119 = v120;
            if (v120 == 1)
            {
              goto LABEL_132;
            }

LABEL_59:
            v174 = v119;
            lpta_rpta_loadp(a1, v317, &v323);
            v175 = OUTLINED_FUNCTION_3_34();
            inserted = insert_2pt_s(v175, v176, 4, v177, v178);
            v121 = v174;
            v111 = v174;
            LODWORD(v112) = v43;
            if (!inserted)
            {
              goto LABEL_128;
            }

            continue;
          }
        }

LABEL_110:
        v263 = v120;
        v264 = OUTLINED_FUNCTION_7_32();
        if (!lpta_loadp_setscan_r(v264, v265, v266))
        {
          OUTLINED_FUNCTION_49_9();
          if (!test_string_s())
          {
            *(a1 + 2906) = 1;
          }
        }

LABEL_127:
        convert_por_double(a1);
        v121 = v263;
LABEL_128:
        LODWORD(v113) = v121;
        add_por_subunits(a1);
LABEL_129:
        if (v113 == 1)
        {
          v279 = OUTLINED_FUNCTION_57_9();
          lpta_rpta_loadp(v279, v280, v281);
          v282 = OUTLINED_FUNCTION_3_34();
          insert_2pt_s(v282, v283, 3, v284, v285);
        }

LABEL_131:
        *(a1 + 2906) = 0;
LABEL_132:
        *(a1 + 2614) = *(a1 + 2642);
        *(a1 + 3010) = 0;
        OUTLINED_FUNCTION_97_5(v324);
        return 0;
      case 61:
        goto LABEL_110;
      case 62:
        goto LABEL_59;
      case 63:
      case 64:
        goto LABEL_128;
      case 65:
        v263 = v113;
        goto LABEL_127;
      case 66:
        goto LABEL_129;
      case 67:
        goto LABEL_131;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t assign_gender_to_currency()
{
  OUTLINED_FUNCTION_100_3();
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v7, v1);
  OUTLINED_FUNCTION_37_14();
  bzero(v12, v2);
  if (setjmp(v12) || ventproc(v0, v7, v11, v10, v9, v12))
  {
    vretproc(v0);
    return 94;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_42_10();
    get_parm(v4, v5, v6, -4);
    fence_33(v0, 0, &null_str_11);
    v0[1505] = v0[1507];
    if (v0[1467] == HIWORD(v8))
    {
      v0[1505] = v0[1509];
    }

    vretproc(v0);
    return 0;
  }
}

void convert_por_hundreds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v220 = *MEMORY[0x277D85DE8];
  v214 = 0;
  v215 = 0;
  v212 = 0;
  v213 = 0;
  v210 = 0;
  v211 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v187, v4);
  OUTLINED_FUNCTION_37_14();
  bzero(v219, v5);
  if (setjmp(v219) || ventproc(v3, &v187, v218, v217, v216, v219))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_10_32();
  get_parm(v6, v7, v8, -6);
  v9 = OUTLINED_FUNCTION_42_10();
  get_parm(v9, v10, v11, -6);
  v12 = OUTLINED_FUNCTION_44_10();
  push_ptr_init(v12, v13);
  fence_33(v3, 0, &null_str_11);
  v14 = OUTLINED_FUNCTION_34_16();
  if (!lpta_loadp_setscan_r(v14, v15, 1))
  {
    OUTLINED_FUNCTION_4_33();
    if (!test_string_s())
    {
LABEL_62:
      OUTLINED_FUNCTION_105_2(v213);
      goto LABEL_3;
    }
  }

  while (2)
  {
    v16 = OUTLINED_FUNCTION_40_11();
    if (!lpta_loadp_setscan_r(v16, v17, 1))
    {
      OUTLINED_FUNCTION_2_35();
      if (!test_string_s())
      {
LABEL_60:
        OUTLINED_FUNCTION_67_8();
        v181 = OUTLINED_FUNCTION_57_9();
        savescptr(v181, v182, v183);
        v184 = OUTLINED_FUNCTION_52_9();
        insert_e_before_hundreds(v184);
LABEL_61:
        v185 = OUTLINED_FUNCTION_62_8();
        convert_por_double(v185);
        goto LABEL_62;
      }
    }

LABEL_8:
    v18 = OUTLINED_FUNCTION_40_11();
    if (!lpta_loadp_setscan_r(v18, v19, 1) && !advance_tok(v3, v20, v21, v22))
    {
LABEL_10:
      v23 = OUTLINED_FUNCTION_50_9();
      savescptr(v23, v24, &v210);
    }

LABEL_11:
    v25 = OUTLINED_FUNCTION_81_7();
    if (lpta_loadp_setscan_l(v25, v26, v27) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
    {
LABEL_26:
      v54 = OUTLINED_FUNCTION_7_32();
      if (lpta_loadp_setscan_l(v54, v55, v56) || (OUTLINED_FUNCTION_2_35(), v57 = test_string_s(), v57) || (OUTLINED_FUNCTION_55_9(v57, v58, v59, v60, v61, v62, v63, v64, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213), v65 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v65, v66, 6, v67, v68)))
      {
LABEL_29:
        v69 = OUTLINED_FUNCTION_7_32();
        if (lpta_loadp_setscan_l(v69, v70, v71) || (OUTLINED_FUNCTION_2_35(), v72 = test_string_s(), v72) || (OUTLINED_FUNCTION_55_9(v72, v73, v74, v75, v76, v77, v78, v79, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213), v80 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v80, v81, 7, v82, v83)))
        {
LABEL_32:
          v84 = OUTLINED_FUNCTION_7_32();
          if (lpta_loadp_setscan_l(v84, v85, v86) || (OUTLINED_FUNCTION_2_35(), v87 = test_string_s(), v87) || (OUTLINED_FUNCTION_55_9(v87, v88, v89, v90, v91, v92, v93, v94, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213), v95 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v95, v96, 10, v97, v98)))
          {
LABEL_35:
            v99 = OUTLINED_FUNCTION_7_32();
            if (lpta_loadp_setscan_l(v99, v100, v101) || (OUTLINED_FUNCTION_2_35(), v102 = test_string_s(), v102) || (OUTLINED_FUNCTION_55_9(v102, v103, v104, v105, v106, v107, v108, v109, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213), v110 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v110, v111, 8, v112, v113)))
            {
LABEL_38:
              v114 = OUTLINED_FUNCTION_7_32();
              if (lpta_loadp_setscan_l(v114, v115, v116) || (OUTLINED_FUNCTION_2_35(), v117 = test_string_s(), v117) || (OUTLINED_FUNCTION_55_9(v117, v118, v119, v120, v121, v122, v123, v124, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213), v125 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v125, v126, 8, v127, v128)))
              {
LABEL_41:
                v129 = OUTLINED_FUNCTION_7_32();
                if (lpta_loadp_setscan_l(v129, v130, v131) || (OUTLINED_FUNCTION_2_35(), v132 = test_string_s(), v132) || (OUTLINED_FUNCTION_55_9(v132, v133, v134, v135, v136, v137, v138, v139, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213), v140 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v140, v141, 8, v142, v143)))
                {
LABEL_44:
                  v144 = OUTLINED_FUNCTION_7_32();
                  if (lpta_loadp_setscan_l(v144, v145, v146) || (OUTLINED_FUNCTION_2_35(), v147 = test_string_s(), v147) || (OUTLINED_FUNCTION_55_9(v147, v148, v149, v150, v151, v152, v153, v154, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213), v155 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v155, v156, 8, v157, v158)))
                  {
LABEL_47:
                    v159 = OUTLINED_FUNCTION_7_32();
                    if (!lpta_loadp_setscan_l(v159, v160, v161))
                    {
                      OUTLINED_FUNCTION_2_35();
                      v162 = test_string_s();
                      if (!v162)
                      {
                        OUTLINED_FUNCTION_55_9(v162, v163, v164, v165, v166, v167, v168, v169, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
                        v170 = OUTLINED_FUNCTION_3_34();
                        insert_2pt_s(v170, v171, 8, v172, v173);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_50:
      OUTLINED_FUNCTION_26_22();
      if (!v28)
      {
LABEL_53:
        add_gender_to_hundreds(v3, &v210, &v212, v3 + 3008);
        goto LABEL_54;
      }

LABEL_52:
      insert_ordinal_ending(v3);
LABEL_54:
      v174 = OUTLINED_FUNCTION_7_32();
      if (lpta_loadp_setscan_r(v174, v175, v176) || (OUTLINED_FUNCTION_16_28(), test_string_s()))
      {
LABEL_56:
        v177 = OUTLINED_FUNCTION_62_8();
        convert_por_double(v177);
LABEL_57:
        OUTLINED_FUNCTION_26_22();
        if (!v28)
        {
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_35_15();
          v178 = OUTLINED_FUNCTION_29_19();
          insert_l(v178, v179);
        }
      }

      else
      {
        v180 = OUTLINED_FUNCTION_52_9();
        insert_e_before_hundreds(v180);
      }

      goto LABEL_62;
    }

    OUTLINED_FUNCTION_26_22();
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_40_11();
      lpta_rpta_loadp(v29, v30, &v210);
      v31 = OUTLINED_FUNCTION_3_34();
      if (!insert_2pt_s(v31, v32, 5, &unk_2806BC176, v33))
      {
        goto LABEL_52;
      }
    }

LABEL_16:
    v34 = OUTLINED_FUNCTION_104_2();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_81_7();
    if (lpta_loadp_setscan_r(v36, v37, v38) || (OUTLINED_FUNCTION_16_28(), test_string_s()))
    {
LABEL_24:
      v49 = OUTLINED_FUNCTION_40_11();
      lpta_rpta_loadp(v49, v50, &v210);
      v51 = OUTLINED_FUNCTION_3_34();
      if (insert_2pt_s(v51, v52, 6, &unk_2806BC1DC, v53))
      {
        goto LABEL_20;
      }

      goto LABEL_54;
    }

    v39 = OUTLINED_FUNCTION_34_16();
    starttest(v39, v40);
    v41 = OUTLINED_FUNCTION_40_11();
    insert_e_before_hundreds(v41);
LABEL_19:
    v42 = OUTLINED_FUNCTION_40_11();
    lpta_rpta_loadp(v42, v43, &v210);
    v44 = OUTLINED_FUNCTION_3_34();
    if (!insert_2pt_s(v44, v45, 4, &unk_2806BC13F, v46))
    {
      goto LABEL_62;
    }

LABEL_20:
    v47 = *(v3 + 104);
    if (v47)
    {
      v48 = OUTLINED_FUNCTION_47_10(v47);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_74_8();
    }

    switch(v48)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_60;
      case 4:
        goto LABEL_61;
      case 5:
      case 26:
      case 27:
        goto LABEL_62;
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_10;
      case 8:
        goto LABEL_26;
      case 9:
        goto LABEL_16;
      case 10:
      case 11:
      case 14:
      case 24:
        goto LABEL_54;
      case 12:
        goto LABEL_24;
      case 13:
        goto LABEL_19;
      case 15:
        goto LABEL_29;
      case 16:
        goto LABEL_50;
      case 17:
        goto LABEL_32;
      case 18:
        goto LABEL_35;
      case 19:
        goto LABEL_38;
      case 20:
        goto LABEL_41;
      case 21:
        goto LABEL_44;
      case 22:
        goto LABEL_47;
      case 23:
        goto LABEL_53;
      case 25:
        goto LABEL_56;
      case 28:
        goto LABEL_57;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_69_8();
}

uint64_t convert_por_double(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v274 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v4, v5, v6, v7, v8, v9, v10, v11, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v271);
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_108_2(v12, v13);
  if (!setjmp(v3))
  {
    OUTLINED_FUNCTION_84_6();
    if (!ventproc(v1, v14, v15, v16, v17, v273))
    {
      v19 = OUTLINED_FUNCTION_10_32();
      get_parm(v19, v20, v21, -6);
      v22 = OUTLINED_FUNCTION_36_14();
      OUTLINED_FUNCTION_71_8(v22, v23);
      v24 = OUTLINED_FUNCTION_45_10();
      push_ptr_init(v24, v25);
      fence_33(v1, 0, &null_str_11);
      v26 = OUTLINED_FUNCTION_34_16();
      if (!lpta_loadp_setscan_r(v26, v27, 1))
      {
        OUTLINED_FUNCTION_2_35();
        if (!test_string_s())
        {
LABEL_74:
          OUTLINED_FUNCTION_17_27(2, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
          v192 = OUTLINED_FUNCTION_40_11();
          convert_por_single_digit(v192);
          goto LABEL_83;
        }
      }

      while (2)
      {
        OUTLINED_FUNCTION_26_22();
        if (!v28)
        {
LABEL_16:
          v50 = OUTLINED_FUNCTION_30_18();
          if (lpta_loadp_setscan_r(v50, v51, v52) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
          {
LABEL_18:
            v53 = OUTLINED_FUNCTION_28_19();
            starttest(v53, v54);
            v55 = OUTLINED_FUNCTION_30_18();
            if (!lpta_loadp_setscan_r(v55, v56, v57))
            {
              OUTLINED_FUNCTION_2_35();
              if (!test_string_s())
              {
LABEL_36:
                OUTLINED_FUNCTION_17_27(29, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
                v101 = OUTLINED_FUNCTION_31_18();
                lpta_rpta_loadp(v101, v102, v103);
                v96 = OUTLINED_FUNCTION_3_34();
                v100 = 5;
                goto LABEL_42;
              }
            }

LABEL_20:
            v58 = OUTLINED_FUNCTION_28_19();
            starttest(v58, v59);
            v60 = OUTLINED_FUNCTION_30_18();
            if (!lpta_loadp_setscan_r(v60, v61, v62))
            {
              OUTLINED_FUNCTION_2_35();
              if (!test_string_s())
              {
LABEL_37:
                OUTLINED_FUNCTION_17_27(31, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
                v104 = OUTLINED_FUNCTION_31_18();
                lpta_rpta_loadp(v104, v105, v106);
                v96 = OUTLINED_FUNCTION_3_34();
                v100 = 6;
                goto LABEL_42;
              }
            }

LABEL_22:
            v63 = OUTLINED_FUNCTION_28_19();
            starttest(v63, v64);
            v65 = OUTLINED_FUNCTION_30_18();
            if (lpta_loadp_setscan_r(v65, v66, v67) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
LABEL_24:
              v68 = OUTLINED_FUNCTION_28_19();
              starttest(v68, v69);
              v70 = OUTLINED_FUNCTION_30_18();
              if (!lpta_loadp_setscan_r(v70, v71, v72))
              {
                OUTLINED_FUNCTION_2_35();
                if (!test_string_s())
                {
LABEL_39:
                  OUTLINED_FUNCTION_17_27(35, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
                  v110 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v110, v111, v112);
                  v96 = OUTLINED_FUNCTION_3_34();
                  v100 = 9;
                  goto LABEL_42;
                }
              }

LABEL_26:
              v73 = OUTLINED_FUNCTION_28_19();
              starttest(v73, v74);
              v75 = OUTLINED_FUNCTION_30_18();
              if (lpta_loadp_setscan_r(v75, v76, v77) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
              {
LABEL_28:
                v78 = OUTLINED_FUNCTION_28_19();
                starttest(v78, v79);
                v80 = OUTLINED_FUNCTION_30_18();
                if (lpta_loadp_setscan_r(v80, v81, v82) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
                {
LABEL_30:
                  v83 = OUTLINED_FUNCTION_28_19();
                  starttest(v83, v84);
                  v85 = OUTLINED_FUNCTION_30_18();
                  if (lpta_loadp_setscan_r(v85, v86, v87) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
                  {
LABEL_32:
                    v88 = OUTLINED_FUNCTION_28_19();
                    starttest(v88, v89);
                    v90 = OUTLINED_FUNCTION_30_18();
                    if (lpta_loadp_setscan_r(v90, v91, v92))
                    {
                      goto LABEL_77;
                    }

                    OUTLINED_FUNCTION_2_35();
                    if (test_string_s())
                    {
                      goto LABEL_77;
                    }

LABEL_34:
                    OUTLINED_FUNCTION_17_27(42, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
                    v93 = OUTLINED_FUNCTION_31_18();
                    lpta_rpta_loadp(v93, v94, v95);
                  }

                  else
                  {
LABEL_45:
                    OUTLINED_FUNCTION_17_27(41, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
                    v119 = OUTLINED_FUNCTION_31_18();
                    lpta_rpta_loadp(v119, v120, v121);
                  }
                }

                else
                {
LABEL_44:
                  OUTLINED_FUNCTION_17_27(39, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
                  v116 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v116, v117, v118);
                }

                v96 = OUTLINED_FUNCTION_3_34();
                v100 = 7;
LABEL_42:
                if (!insert_2pt_s(v96, v97, v100, v98, v99))
                {
                  goto LABEL_77;
                }

                goto LABEL_12;
              }

LABEL_40:
              OUTLINED_FUNCTION_17_27(37, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
              v113 = OUTLINED_FUNCTION_31_18();
              lpta_rpta_loadp(v113, v114, v115);
            }

            else
            {
LABEL_38:
              OUTLINED_FUNCTION_17_27(33, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
              v107 = OUTLINED_FUNCTION_31_18();
              lpta_rpta_loadp(v107, v108, v109);
            }

            v96 = OUTLINED_FUNCTION_3_34();
            v100 = 8;
            goto LABEL_42;
          }

          v219 = OUTLINED_FUNCTION_53_9();
          convert_por_teens(v219);
LABEL_83:
          OUTLINED_FUNCTION_105_2(v272);
          goto LABEL_4;
        }

        v29 = OUTLINED_FUNCTION_28_19();
        starttest(v29, v30);
        v31 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_r(v31, v32, v33))
        {
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
LABEL_11:
            OUTLINED_FUNCTION_17_27(7, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
            v34 = OUTLINED_FUNCTION_31_18();
            lpta_rpta_loadp(v34, v35, v36);
            v37 = OUTLINED_FUNCTION_3_34();
            if (!insert_2pt_s(v37, v38, 5, v39, v40))
            {
              v193 = OUTLINED_FUNCTION_85_6();
              inserted = insert_gender(v193);
LABEL_76:
              OUTLINED_FUNCTION_15_29(inserted, v43, v44, v45, v46, v47, v48, v49, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269);
              v194 = OUTLINED_FUNCTION_20_24();
              insert_l(v194, v195);
LABEL_77:
              v196 = OUTLINED_FUNCTION_14_29();
              if (lpta_loadp_setscan_r(v196, v197, v198) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
              {
LABEL_79:
                OUTLINED_FUNCTION_26_22();
                if (!v28)
                {
                  OUTLINED_FUNCTION_15_29(v199, v200, v201, v202, v203, v204, v205, v206, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269);
                  v207 = OUTLINED_FUNCTION_29_19();
                  insert_l(v207, v208);
                }

LABEL_81:
                v209 = OUTLINED_FUNCTION_59_9();
                convert_por_single_digit(v209);
              }

              else
              {
                v218 = OUTLINED_FUNCTION_59_9();
                delete_inp_from_left(v218);
              }

LABEL_82:
              v210 = OUTLINED_FUNCTION_32_17();
              insert_space(v210, v211, v212, v213, v214, v215, v216, v217);
              goto LABEL_83;
            }

LABEL_12:
            v41 = *(v1 + 104);
            if (v41)
            {
              inserted = OUTLINED_FUNCTION_47_10(v41);
            }

            else
            {
              inserted = OUTLINED_FUNCTION_74_8();
            }

            switch(inserted)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_74;
              case 3:
              case 27:
              case 47:
                goto LABEL_83;
              case 4:
              case 9:
                goto LABEL_77;
              case 5:
                goto LABEL_16;
              case 6:
                goto LABEL_46;
              case 7:
                goto LABEL_11;
              case 8:
                goto LABEL_76;
              case 10:
                goto LABEL_48;
              case 11:
                goto LABEL_66;
              case 12:
                goto LABEL_73;
              case 13:
                goto LABEL_50;
              case 14:
                goto LABEL_67;
              case 15:
                goto LABEL_52;
              case 16:
                goto LABEL_68;
              case 17:
                goto LABEL_54;
              case 18:
                goto LABEL_69;
              case 19:
                goto LABEL_56;
              case 20:
                goto LABEL_70;
              case 21:
                goto LABEL_58;
              case 22:
                goto LABEL_71;
              case 23:
                goto LABEL_60;
              case 24:
                goto LABEL_72;
              case 25:
                goto LABEL_62;
              case 26:
                goto LABEL_18;
              case 28:
                goto LABEL_20;
              case 29:
                goto LABEL_36;
              case 30:
                goto LABEL_22;
              case 31:
                goto LABEL_37;
              case 32:
                goto LABEL_24;
              case 33:
                goto LABEL_38;
              case 34:
                goto LABEL_26;
              case 35:
                goto LABEL_39;
              case 36:
                goto LABEL_28;
              case 37:
                goto LABEL_40;
              case 38:
                goto LABEL_30;
              case 39:
                goto LABEL_44;
              case 40:
                goto LABEL_32;
              case 41:
                goto LABEL_45;
              case 42:
                goto LABEL_34;
              case 43:
                goto LABEL_79;
              case 44:
              case 45:
                goto LABEL_82;
              case 46:
                goto LABEL_81;
              default:
                goto LABEL_3;
            }
          }
        }

        break;
      }

LABEL_46:
      v122 = OUTLINED_FUNCTION_28_19();
      starttest(v122, v123);
      v124 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v124, v125, v126) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
      {
LABEL_48:
        v127 = OUTLINED_FUNCTION_28_19();
        starttest(v127, v128);
        v129 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v129, v130, v131) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
        {
LABEL_50:
          v132 = OUTLINED_FUNCTION_28_19();
          starttest(v132, v133);
          v134 = OUTLINED_FUNCTION_30_18();
          if (lpta_loadp_setscan_r(v134, v135, v136) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
          {
LABEL_52:
            v137 = OUTLINED_FUNCTION_28_19();
            starttest(v137, v138);
            v139 = OUTLINED_FUNCTION_30_18();
            if (lpta_loadp_setscan_r(v139, v140, v141) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
LABEL_54:
              v142 = OUTLINED_FUNCTION_28_19();
              starttest(v142, v143);
              v144 = OUTLINED_FUNCTION_30_18();
              if (!lpta_loadp_setscan_r(v144, v145, v146))
              {
                OUTLINED_FUNCTION_2_35();
                if (!test_string_s())
                {
LABEL_70:
                  OUTLINED_FUNCTION_17_27(20, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
                  v182 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v182, v183, v184);
LABEL_63:
                  v165 = OUTLINED_FUNCTION_3_34();
                  v169 = 5;
                  goto LABEL_64;
                }
              }

LABEL_56:
              v147 = OUTLINED_FUNCTION_28_19();
              starttest(v147, v148);
              v149 = OUTLINED_FUNCTION_30_18();
              if (lpta_loadp_setscan_r(v149, v150, v151) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
              {
LABEL_58:
                v152 = OUTLINED_FUNCTION_28_19();
                starttest(v152, v153);
                v154 = OUTLINED_FUNCTION_30_18();
                if (lpta_loadp_setscan_r(v154, v155, v156) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
                {
LABEL_60:
                  v157 = OUTLINED_FUNCTION_28_19();
                  starttest(v157, v158);
                  v159 = OUTLINED_FUNCTION_30_18();
                  if (lpta_loadp_setscan_r(v159, v160, v161))
                  {
                    goto LABEL_73;
                  }

                  OUTLINED_FUNCTION_2_35();
                  if (test_string_s())
                  {
                    goto LABEL_73;
                  }

LABEL_62:
                  OUTLINED_FUNCTION_17_27(25, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
                  v162 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v162, v163, v164);
                }

                else
                {
LABEL_72:
                  OUTLINED_FUNCTION_17_27(24, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
                  v188 = OUTLINED_FUNCTION_31_18();
                  lpta_rpta_loadp(v188, v189, v190);
                }

                goto LABEL_63;
              }

LABEL_71:
              OUTLINED_FUNCTION_17_27(22, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
              v185 = OUTLINED_FUNCTION_31_18();
              lpta_rpta_loadp(v185, v186, v187);
              v165 = OUTLINED_FUNCTION_3_34();
              v169 = 6;
            }

            else
            {
LABEL_69:
              OUTLINED_FUNCTION_17_27(18, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
              v179 = OUTLINED_FUNCTION_31_18();
              lpta_rpta_loadp(v179, v180, v181);
              v165 = OUTLINED_FUNCTION_3_34();
              v169 = 8;
            }
          }

          else
          {
LABEL_68:
            OUTLINED_FUNCTION_17_27(16, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
            v176 = OUTLINED_FUNCTION_31_18();
            lpta_rpta_loadp(v176, v177, v178);
            v165 = OUTLINED_FUNCTION_3_34();
            v169 = 7;
          }
        }

        else
        {
LABEL_67:
          OUTLINED_FUNCTION_17_27(14, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
          v173 = OUTLINED_FUNCTION_31_18();
          lpta_rpta_loadp(v173, v174, v175);
          v165 = OUTLINED_FUNCTION_3_34();
          v169 = 4;
        }
      }

      else
      {
LABEL_66:
        OUTLINED_FUNCTION_17_27(11, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267);
        v170 = OUTLINED_FUNCTION_31_18();
        lpta_rpta_loadp(v170, v171, v172);
        v165 = OUTLINED_FUNCTION_3_34();
        v169 = 3;
      }

LABEL_64:
      if (insert_2pt_s(v165, v166, v169, v167, v168))
      {
        goto LABEL_12;
      }

LABEL_73:
      v191 = OUTLINED_FUNCTION_85_6();
      insert_ordinal_ending(v191);
      goto LABEL_77;
    }
  }

LABEL_3:
  v2 = 94;
LABEL_4:
  vretproc(v1);
  return v2;
}