void hyphen_between_nums(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v81 = *MEMORY[0x277D85DE8];
  v76[0] = 0;
  v76[1] = 0;
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v71, v4);
  OUTLINED_FUNCTION_57_1();
  bzero(v80, v5);
  if (setjmp(v80) || ventproc(v3, v71, v79, v78, v77, v80) || (v6 = OUTLINED_FUNCTION_72_1(), get_parm(v6, v7, v8, -6), v9 = OUTLINED_FUNCTION_54_1(), OUTLINED_FUNCTION_126(v9, v10), v11 = OUTLINED_FUNCTION_87_1(), push_ptr_init(v11, v12), v13 = OUTLINED_FUNCTION_86_1(), push_ptr_init(v13, v14), fence_16(v3, 0, &_MergedGlobals_1_0), v15 = OUTLINED_FUNCTION_110(), starttest(v15, v16), v17 = OUTLINED_FUNCTION_54_1(), lpta_loadp_setscan_r(v17, v18, 1)))
  {
LABEL_4:
    vretproc(v3);
  }

  else
  {
    OUTLINED_FUNCTION_153();
    while (2)
    {
      v19 = OUTLINED_FUNCTION_111();
      savescptr(v19, v20, v73);
      OUTLINED_FUNCTION_24_8();
      if (!test_string_s())
      {
LABEL_8:
        v21 = OUTLINED_FUNCTION_106();
        savescptr(v21, v22, v74);
LABEL_10:
        while (1)
        {
          v25 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v25, v26) || advance_tok(v3, v27, v28, v29))
          {
            break;
          }

          v23 = OUTLINED_FUNCTION_91_0();
          bspush_ca_scan(v23, v24);
        }
      }

LABEL_12:
      v30 = *(v3 + 104);
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_65_1(v30);
      }

      else
      {
        v31 = OUTLINED_FUNCTION_133();
      }

      switch(v31)
      {
        case 2:
          continue;
        case 3:
          goto LABEL_8;
        case 4:
          v32 = OUTLINED_FUNCTION_52_1();
          savescptr(v32, v33, v72);
          v34 = OUTLINED_FUNCTION_112();
          starttest(v34, v35);
          v36 = OUTLINED_FUNCTION_70_1();
          bspush_ca(v36);
          goto LABEL_20;
        case 5:
          goto LABEL_10;
        case 6:
          lang_hyphen_between_nums(v3, v76, v73, v74, v72);
          goto LABEL_36;
        case 7:
          v38 = OUTLINED_FUNCTION_64_1();
          bspush_ca(v38);
          goto LABEL_20;
        case 8:
          goto LABEL_22;
        case 9:
          v39 = OUTLINED_FUNCTION_84_1();
          bspush_ca(v39);
          goto LABEL_20;
        case 10:
          v37 = OUTLINED_FUNCTION_74_1();
          bspush_ca(v37);
          goto LABEL_20;
        case 11:
LABEL_20:
          OUTLINED_FUNCTION_88_1();
          if (!v40)
          {
            goto LABEL_12;
          }

LABEL_22:
          if (*(v3 + 2902) != 4)
          {
            goto LABEL_12;
          }

          v41 = OUTLINED_FUNCTION_141();
          if (lpta_loadp_setscan_r(v41, v42, 1))
          {
            goto LABEL_12;
          }

          v43 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v43, v44))
          {
            goto LABEL_12;
          }

          if (advance_tok(v3, v45, v46, v47))
          {
            goto LABEL_12;
          }

          v48 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v48, v49))
          {
            goto LABEL_12;
          }

          if (advance_tok(v3, v50, v51, v52))
          {
            goto LABEL_12;
          }

          v53 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v53, v54))
          {
            goto LABEL_12;
          }

          if (advance_tok(v3, v55, v56, v57))
          {
            goto LABEL_12;
          }

          v58 = OUTLINED_FUNCTION_80_1();
          if (OUTLINED_FUNCTION_163(v58, v59))
          {
            goto LABEL_12;
          }

          if (advance_tok(v3, v60, v61, v62))
          {
            goto LABEL_12;
          }

          *(v3 + 136) = 1;
          v63 = OUTLINED_FUNCTION_12_14();
          if (test_ptr(v63, v64, v65))
          {
            goto LABEL_12;
          }

          v66 = OUTLINED_FUNCTION_156();
          if (end_of_word(v66))
          {
            goto LABEL_12;
          }

          *(v3 + 2790) = *(v3 + 2794);
LABEL_36:
          v67 = OUTLINED_FUNCTION_147();
          single_chars(v67, v68, v69);
LABEL_37:
          *(v3 + 2790) = 0;
          OUTLINED_FUNCTION_136();
          OUTLINED_FUNCTION_117();
          insert_l(v3, v70);
          OUTLINED_FUNCTION_137(v75);
          break;
        case 12:
        case 13:
          goto LABEL_36;
        case 14:
          goto LABEL_37;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_113();
}

uint64_t slash_before_measure(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v145, v148);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149, v151, v153, v155, v157);
  if (setjmp(v2) || (OUTLINED_FUNCTION_0_16(), OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158)) || (v27 = OUTLINED_FUNCTION_63_1(), get_parm(v27, v28, v29, -6), OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141), fence_16(v1, 0, &_MergedGlobals_1_0), OUTLINED_FUNCTION_79_1(), !v38) || (v39 = OUTLINED_FUNCTION_50_1(), lpta_rpta_loadp(v39, v40, v41), v42 = OUTLINED_FUNCTION_6_14(), setd_lookup(v42, v43, v44)))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    *(v1 + 2806) = *(v1 + 2810);
    vretproc(v1);
    return 0;
  }
}

void adjust_numbers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v130 = *MEMORY[0x277D85DE8];
  memset(v125, 0, sizeof(v125));
  v123 = 0u;
  v124 = 0u;
  v122[0] = 0;
  v122[1] = 0;
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v119, v4);
  OUTLINED_FUNCTION_57_1();
  bzero(v129, v5);
  if (!setjmp(v129) && !ventproc(v3, v119, v128, v127, v126, v129))
  {
    v6 = OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_127(v6, v7);
    OUTLINED_FUNCTION_21_8();
    v124 = 0uLL;
    LODWORD(v123) = -65534;
    v8 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v8, v9);
    v10 = OUTLINED_FUNCTION_107();
    push_ptr_init(v10, v11);
    v12 = OUTLINED_FUNCTION_64_1();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_86_1();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_73_1();
    fence_16(v16, v17, v18);
    fence_16(v3, 1, &string_7_1);
    startloop(v3, 1);
    v19 = OUTLINED_FUNCTION_70_1();
    lpta_loadpn(v19, v20);
    OUTLINED_FUNCTION_97_0();
    lpta_mover();
    v21 = OUTLINED_FUNCTION_71_1();
    lpta_storep(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_55_1();
    lpta_loadpn(v24, v25);
    OUTLINED_FUNCTION_97_0();
    lpta_mover();
    v26 = OUTLINED_FUNCTION_64_1();
    lpta_storep(v26, v27, v28);
    v29 = 0;
LABEL_5:
    v30 = v29;
    v31 = OUTLINED_FUNCTION_140();
    v33 = forall_to_test(v31, v32, v120);
    v34 = v30;
    if (!v33)
    {
LABEL_6:
      v30 = v34;
      v35 = OUTLINED_FUNCTION_106();
      bspush_ca(v35);
      v36 = OUTLINED_FUNCTION_140();
      if (!lpta_loadp_setscan_r(v36, v37, 2))
      {
        OUTLINED_FUNCTION_112();
        bspush_ca_scan_boa();
        v38 = OUTLINED_FUNCTION_97_0();
        if (testFldeq(v38, v39, 10, 0))
        {
          v30 = v30;
        }

        else
        {
          v30 = 1;
        }
      }
    }

LABEL_10:
    v40 = v30;
    while (2)
    {
      v41 = *(v3 + 104);
      if (v41)
      {
        *(v3 + 104) = 0;
        v42 = v41;
        v30 = v40;
      }

      else
      {
        v42 = vback(v3, v40);
        v30 = 0;
      }

      v43 = v42 - 1;
      v29 = v30;
      switch(v43)
      {
        case 1:
          goto LABEL_21;
        case 2:
          v44 = OUTLINED_FUNCTION_176();
          v47 = forto_adv_upto_r(v44, v45, v46, 18, 2, v122);
          v40 = v30;
          if (v47)
          {
            continue;
          }

          goto LABEL_3;
        case 3:
          bspop_boa(v3);
          v51 = advance_tok(v3, v48, v49, v50);
          v40 = v30;
          if (v51)
          {
            continue;
          }

          v52 = OUTLINED_FUNCTION_81_1();
          v54 = savetok(v52, v53);
          v40 = v30;
          if (v54)
          {
            continue;
          }

          goto LABEL_25;
        case 4:
          v55 = OUTLINED_FUNCTION_22_8();
          savescptr(v55, v56, v121);
LABEL_21:
          v57 = OUTLINED_FUNCTION_91_0();
          starttest(v57, v58);
          v59 = OUTLINED_FUNCTION_64_1();
          bspush_ca(v59);
          v60 = *(v3 + 5122);
          goto LABEL_23;
        case 5:
          do
          {
LABEL_25:
            v61 = OUTLINED_FUNCTION_74_1();
            bspush_ca_scan(v61, v62);
            v63 = OUTLINED_FUNCTION_97_0();
            if (npush_fld(v63, v64, 0xAu))
            {
              break;
            }

            WORD1(v123) = 10;
            v65 = OUTLINED_FUNCTION_81_1();
            npush_v(v65, v66, v67, v68, v69, v70, v71, v72);
            if (if_testeq(v3, v73, v74, v75, v76, v77, v78, v79))
            {
              break;
            }
          }

          while (!advance_tok(v3, v80, v81, v82));
          goto LABEL_10;
        case 6:
        case 10:
        case 11:
        case 13:
        case 14:
          goto LABEL_37;
        case 7:
          v60 = *(v3 + 5098);
LABEL_23:
          v40 = v30;
          if (v60 == *(v3 + 5090))
          {
            goto LABEL_29;
          }

          continue;
        case 8:
LABEL_29:
          WORD1(v123) = 10;
          v83 = OUTLINED_FUNCTION_81_1();
          npush_v(v83, v84, v85, v86, v87, v88, v89, v90);
          v91 = OUTLINED_FUNCTION_51_1();
          ncompare_s(v91, v92);
          if (testeq(v3))
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_140();
          assign_gender_to_number();
          goto LABEL_37;
        case 9:
LABEL_30:
          WORD1(v123) = 10;
          v93 = OUTLINED_FUNCTION_81_1();
          npush_v(v93, v94, v95, v96, v97, v98, v99, v100);
          v101 = OUTLINED_FUNCTION_97_0();
          ncompare_s(v101, v102);
          if (testeq(v3))
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_141();
          adjust_num_in_ordinal();
          goto LABEL_37;
        case 12:
LABEL_31:
          OUTLINED_FUNCTION_79_1();
          if (v103)
          {
            WORD1(v123) = 10;
            v104 = OUTLINED_FUNCTION_81_1();
            npush_v(v104, v105, v106, v107, v108, v109, v110, v111);
            ncompare_s(v3, 3u);
            if (!testeq(v3))
            {
              OUTLINED_FUNCTION_140();
              assign_gend_to_roman_num();
            }
          }

LABEL_37:
          v112 = OUTLINED_FUNCTION_141();
          lpta_loadpn(v112, v113);
          rpta_loadpn(v3, v125);
          if (compare_ptas(v3) || testeq(v3))
          {
            goto LABEL_39;
          }

          goto LABEL_3;
        case 15:
LABEL_39:
          v114 = OUTLINED_FUNCTION_141();
          lpta_loadpn(v114, v115);
          OUTLINED_FUNCTION_97_0();
          lpta_mover();
          v116 = OUTLINED_FUNCTION_156();
          lpta_storep(v116, v117, v118);
          OUTLINED_FUNCTION_176();
          forall_cont_from();
          v29 = v30;
          goto LABEL_5;
        case 16:
          goto LABEL_5;
        case 17:
          v34 = v30;
          goto LABEL_6;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_113();
}

void potential_sent_end(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v90 = *MEMORY[0x277D85DE8];
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v74, v6);
  OUTLINED_FUNCTION_57_1();
  bzero(v89, v7);
  v8 = setjmp(v89);
  if (v8 || OUTLINED_FUNCTION_34_3(v8, v74, v9, v10, v11, v12, v13, v14, v71, v72, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89[0]))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_21_8();
  v15 = OUTLINED_FUNCTION_86_1();
  push_ptr_init(v15, v16);
  v17 = 0;
  v18 = OUTLINED_FUNCTION_73_1();
  fence_16(v18, v19, v20);
  OUTLINED_FUNCTION_103();
  v21 = OUTLINED_FUNCTION_55_1();
  v23 = 0;
  if (lpta_loadp_setscan_l(v21, v22, v5))
  {
LABEL_6:
    v24 = OUTLINED_FUNCTION_52_1();
    starttest(v24, v25);
    v26 = OUTLINED_FUNCTION_52_1();
    bspush_ca(v26);
    v27 = v23;
    if (*(v4 + 5102) == *(v4 + 5090))
    {
LABEL_7:
      v23 = v27;
      v28 = OUTLINED_FUNCTION_38_2();
      starttest(v28, v29);
      OUTLINED_FUNCTION_37_2();
      bspush_ca_boa();
      v30 = OUTLINED_FUNCTION_53_1();
      v33 = lpta_loadp_setscan_l(v30, v31, v32);
      v34 = v23;
      if (!v33)
      {
LABEL_8:
        v35 = v34;
        do
        {
          v36 = OUTLINED_FUNCTION_71_1();
          bspush_ca_scan(v36, v37);
          v38 = OUTLINED_FUNCTION_55_1();
          bspush_ca_scan(v38, v39);
          OUTLINED_FUNCTION_4_14();
        }

        while (!test_string_s());
        v23 = v35;
      }
    }

    while (1)
    {
LABEL_15:
      v46 = *(v4 + 104);
      if (v46)
      {
        v47 = OUTLINED_FUNCTION_65_1(v46);
      }

      else
      {
        v48 = OUTLINED_FUNCTION_80_1();
        v47 = vback(v48, v49);
        v23 = 0;
      }

      v50 = v47 - 1;
      v27 = v23;
      v34 = v23;
      switch(v50)
      {
        case 0:
          goto LABEL_6;
        case 1:
          v17 = v23;
          goto LABEL_12;
        case 2:
        case 7:
          *(v4 + 2488) = v78;
          vretproc(v4);
          goto LABEL_4;
        case 3:
          v51 = OUTLINED_FUNCTION_111();
          bspush_ca(v51);
          v52 = *(v4 + 5110);
          goto LABEL_29;
        case 4:
          goto LABEL_7;
        case 5:
          v65 = OUTLINED_FUNCTION_106();
          bspush_ca(v65);
          v52 = *(v4 + 5122);
          goto LABEL_29;
        case 6:
          v52 = *(v4 + 5098);
LABEL_29:
          v27 = v23;
          if (v52 == *(v4 + 5090))
          {
            goto LABEL_7;
          }

          continue;
        case 8:
          bspop_boa(v4);
          goto LABEL_3;
        case 9:
          v59 = OUTLINED_FUNCTION_54_1();
          bspush_ca_scan(v59, v60);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_36;
        case 10:
          v57 = OUTLINED_FUNCTION_81_1();
          bspush_ca_scan(v57, v58);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_33;
        case 11:
        case 16:
          goto LABEL_8;
        case 12:
          v61 = OUTLINED_FUNCTION_74_1();
          bspush_ca_scan(v61, v62);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_33;
        case 13:
          v63 = OUTLINED_FUNCTION_70_1();
          bspush_ca_scan(v63, v64);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_33;
        case 14:
          v66 = OUTLINED_FUNCTION_64_1();
          bspush_ca_scan(v66, v67);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_33;
        case 15:
          OUTLINED_FUNCTION_4_14();
LABEL_33:
          v68 = test_string_s();
          v34 = v23;
          if (!v68)
          {
            goto LABEL_8;
          }

          continue;
        case 17:
          v55 = OUTLINED_FUNCTION_84_1();
          bspush_ca_scan(v55, v56);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_36;
        case 18:
          goto LABEL_37;
        case 19:
          v53 = OUTLINED_FUNCTION_91_0();
          bspush_ca_scan(v53, v54);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_36;
        case 20:
          v69 = OUTLINED_FUNCTION_71_1();
          bspush_ca_scan(v69, v70);
          OUTLINED_FUNCTION_4_14();
          goto LABEL_36;
        case 21:
          OUTLINED_FUNCTION_4_14();
LABEL_36:
          if (!test_string_s())
          {
LABEL_37:
            v23 = 1;
          }

          break;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_12:
  v23 = v17;
  OUTLINED_FUNCTION_75_1();
  v40 = OUTLINED_FUNCTION_138();
  savescptr(v40, v41, v42);
  OUTLINED_FUNCTION_4_14();
  if (test_string_s())
  {
    goto LABEL_15;
  }

  v43 = OUTLINED_FUNCTION_53_1();
  if (lpta_loadp_setscan_r(v43, v44, v45))
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_51_1();
  if (test_string_s())
  {
    goto LABEL_15;
  }

LABEL_3:
  vretproc(v4);
LABEL_4:
  OUTLINED_FUNCTION_113();
}

void end_of_token(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v67 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v53, v5);
  OUTLINED_FUNCTION_57_1();
  bzero(v66, v6);
  v7 = setjmp(v66);
  if (!v7)
  {
    v14 = OUTLINED_FUNCTION_44_1(v7, v53, v8, v9, v10, v11, v12, v13, v50, v51, v52, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8], v53[9], v53[10], v53[11], v53[12], v53[13], v53[14], v53[15], v53[16], v53[17], v53[18], v53[19], v53[20], v53[21], v53[22], v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
    if (!v14)
    {
      OUTLINED_FUNCTION_62_1(v14, &v54);
      fence_16(v4, 0, &_MergedGlobals_1_0);
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_150();
      if (compare_ptas(v4) || testneq(v4) || (OUTLINED_FUNCTION_180(), v15 = OUTLINED_FUNCTION_86_1(), rpta_loadpn(v15, v16), compare_ptas(v4)) || testneq(v4))
      {
        OUTLINED_FUNCTION_165();
        while (2)
        {
          v17 = OUTLINED_FUNCTION_111();
          starttest(v17, v18);
          v19 = OUTLINED_FUNCTION_156();
          if (!lpta_loadp_setscan_r(v19, v20, 1))
          {
            do
            {
LABEL_10:
              v21 = OUTLINED_FUNCTION_139();
              bspush_ca_scan(v21, v22);
              v23 = OUTLINED_FUNCTION_106();
              bspush_ca_scan(v23, v24);
              v25 = OUTLINED_FUNCTION_9_14();
            }

            while (!testFldeq(v25, v26, v27, 4) && !advance_tok(v4, v28, v29, v30));
LABEL_12:
            v31 = *(v4 + 104);
            if (v31)
            {
              v32 = OUTLINED_FUNCTION_65_1(v31);
            }

            else
            {
              v32 = OUTLINED_FUNCTION_133();
            }

            switch(v32)
            {
              case 1:
                continue;
              case 4:
                v33 = OUTLINED_FUNCTION_53_1();
                if (test_synch(v33, v34, v35, &unk_2806C4680))
                {
                  goto LABEL_12;
                }

                goto LABEL_3;
              case 5:
                v46 = OUTLINED_FUNCTION_74_1();
                bspush_ca_scan(v46, v47);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 6:
              case 14:
                goto LABEL_10;
              case 7:
                v40 = OUTLINED_FUNCTION_54_1();
                bspush_ca_scan(v40, v41);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 8:
                v48 = OUTLINED_FUNCTION_55_1();
                bspush_ca_scan(v48, v49);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 9:
                v38 = OUTLINED_FUNCTION_84_1();
                bspush_ca_scan(v38, v39);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 10:
                v42 = OUTLINED_FUNCTION_91_0();
                bspush_ca_scan(v42, v43);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 11:
                v44 = OUTLINED_FUNCTION_71_1();
                bspush_ca_scan(v44, v45);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 12:
                v36 = OUTLINED_FUNCTION_64_1();
                bspush_ca_scan(v36, v37);
                OUTLINED_FUNCTION_4_14();
                goto LABEL_26;
              case 13:
                OUTLINED_FUNCTION_4_14();
LABEL_26:
                if (!test_string_s())
                {
                  goto LABEL_10;
                }

                goto LABEL_12;
              default:
                goto LABEL_3;
            }
          }

          break;
        }
      }
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_113();
}

uint64_t create_sentence(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  v113 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v112);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_179(v11, v12);
  if (setjmp(v2) || (OUTLINED_FUNCTION_0_16(), OUTLINED_FUNCTION_178(v13, v14, v15, v16, v17)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    v19 = &v111;
    OUTLINED_FUNCTION_21_8();
    v20 = OUTLINED_FUNCTION_66_1();
    push_ptr_init(v20, v21);
    v22 = 0;
    v23 = OUTLINED_FUNCTION_73_1();
    fence_16(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_42_1();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_55_1();
    if (lpta_loadp_setscan_l(v28, v29, 2))
    {
LABEL_7:
      v31 = OUTLINED_FUNCTION_67_1();
      lpta_loadpn(v31, v32);
      OUTLINED_FUNCTION_94_0();
      lpta_ctxtl();
      OUTLINED_FUNCTION_94_0();
      lpta_movel();
      v33 = OUTLINED_FUNCTION_66_1();
      lpta_storep(v33, v34, v35);
      v36 = v22;
LABEL_8:
      v37 = v36;
      *(v1 + 2538) = *(v1 + 2570);
      v38 = OUTLINED_FUNCTION_22_8();
      starttest(v38, v39);
      OUTLINED_FUNCTION_36_2();
      bspush_ca_boa();
      v40 = OUTLINED_FUNCTION_59_1();
      build_phrases(v40, v41, v42);
      if (v43)
      {
        v30 = v37;
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_12();
      bspush_ca_scan_boa();
      v30 = !advanc(v1);
    }

    v44 = *(v1 + 104);
    if (v44)
    {
      v45 = OUTLINED_FUNCTION_60_1(v44);
    }

    else
    {
      v45 = vback(v1, v30);
      LODWORD(v19) = 0;
    }

    v22 = v19;
    v36 = v19;
    switch(v45)
    {
      case 1:
        goto LABEL_7;
      case 2:
        v46 = bspop_boa(v1);
        OUTLINED_FUNCTION_102(v46, v47, v48, v49, v50, v51, v52, v53, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v111, v112);
        v54 = OUTLINED_FUNCTION_129();
        insert_l(v54, v55);
        v56 = OUTLINED_FUNCTION_71_1();
        lpta_storep(v56, v57, v58);
        v59 = OUTLINED_FUNCTION_59_1();
        project_word_boundary_sync(v59);
        v36 = v19;
        goto LABEL_8;
      case 3:
      case 4:
        goto LABEL_8;
      case 5:
        break;
      case 6:
        bspop_boa(v1);
        v60 = OUTLINED_FUNCTION_59_1();
        delimit_sentence(v60);
        break;
      default:
        goto LABEL_3;
    }

    vretproc(v1);
    return 0;
  }
}

uint64_t project_word_boundary_sync(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v102, v112, v122, v132, v142, v152, v162, v172, v182, v192, v202, v212, v222, v232, v242, v252, v262, v272, v282, v292, v302, v312, v322, v332, v342, v351, v360);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v103, v113, v123, v133, v143, v153, v163, v173, v183, v193, v203, v213, v223, v233, v243, v253, v263, v273, v283, v293, v303, v313, v323, v333, v343, v352, v361, v369, v371, v373, v375);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v104, v114, v124, v134, v144, v154, v164, v174, v184, v194, v204, v214, v224, v234, v244, v254, v264, v274, v284, v294, v304, v314, v324, v334, v344, v353, v362, v370, v372, v374, v376))
    {
      v28 = OUTLINED_FUNCTION_63_1();
      get_parm(v28, v29, v30, -6);
      OUTLINED_FUNCTION_43_1(v31, v32, v33, v34, v35, v36, v37, v38, v105, v115, v125, v135, v145, v155, v165, v175, v185, v195, v205, v215, v225, v235, v245, v255, v265, v275, v285, v295, v305, v315, v325, v335);
      v39 = OUTLINED_FUNCTION_73_1();
      v42 = fence_16(v39, v40, v41);
      v50 = OUTLINED_FUNCTION_2_15(v42, v43, v44, v45, v46, v47, v48, v49, v106, v116, v126, v136, v146, v156, v166, v176, v186, v196, v206, v216, v226, v236, v246, v256, v266, v276, v286, v296, v306, v316, v326, v336, v345, v354, v363);
      v52 = proj_l(v50, 2, v51);
      v60 = OUTLINED_FUNCTION_2_15(v52, v53, v54, v55, v56, v57, v58, v59, v107, v117, v127, v137, v147, v157, v167, v177, v187, v197, v207, v217, v227, v237, v247, v257, v267, v277, v287, v297, v307, v317, v327, v337, v346, v355, v364);
      v62 = proj_l(v60, 3, v61);
      v70 = OUTLINED_FUNCTION_2_15(v62, v63, v64, v65, v66, v67, v68, v69, v108, v118, v128, v138, v148, v158, v168, v178, v188, v198, v208, v218, v228, v238, v248, v258, v268, v278, v288, v298, v308, v318, v328, v338, v347, v356, v365);
      v72 = proj_l(v70, 4, v71);
      v80 = OUTLINED_FUNCTION_2_15(v72, v73, v74, v75, v76, v77, v78, v79, v109, v119, v129, v139, v149, v159, v169, v179, v189, v199, v209, v219, v229, v239, v249, v259, v269, v279, v289, v299, v309, v319, v329, v339, v348, v357, v366);
      v82 = proj_l(v80, 6, v81);
      v90 = OUTLINED_FUNCTION_2_15(v82, v83, v84, v85, v86, v87, v88, v89, v110, v120, v130, v140, v150, v160, v170, v180, v190, v200, v210, v220, v230, v240, v250, v260, v270, v280, v290, v300, v310, v320, v330, v340, v349, v358, v367);
      v92 = proj_l(v90, 7, v91);
      v100 = OUTLINED_FUNCTION_2_15(v92, v93, v94, v95, v96, v97, v98, v99, v111, v121, v131, v141, v151, v161, v171, v181, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, v311, v321, v331, v341, v350, v359, v368);
      proj_l(v100, 8, v101);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

void divide_char_count_token(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v75 = *MEMORY[0x277D85DE8];
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v56, v5);
  OUTLINED_FUNCTION_57_1();
  bzero(v74, v6);
  v7 = setjmp(v74);
  if (!v7 && !OUTLINED_FUNCTION_89_1(v7, v56, v8, v9, v10, v11, v12, v13, v55, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v56[13], v56[14], v56[15], v56[16], v56[17], v56[18], v56[19], v56[20], v56[21], v56[22], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74[0]))
  {
    OUTLINED_FUNCTION_21_8();
    WORD2(v61) = -4;
    LOWORD(v61) = -4;
    v14 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_54_1();
    push_ptr_init(v16, v17);
    v18 = OUTLINED_FUNCTION_73_1();
    fence_16(v18, v19, v20);
    HIWORD(v61) = 0;
    WORD1(v61) = 0;
    v21 = OUTLINED_FUNCTION_55_1();
    lpta_loadpn(v21, v22);
    OUTLINED_FUNCTION_73_1();
    lpta_ctxtl();
    v23 = OUTLINED_FUNCTION_71_1();
    lpta_storep(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_55_1();
    lpta_loadpn(v26, v27);
    OUTLINED_FUNCTION_73_1();
    lpta_ctxtr();
    v28 = OUTLINED_FUNCTION_54_1();
    lpta_storep(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_71_1();
    if (!lpta_loadp_setscan_r(v31, v32, 0) && !advance_tok(v4, v33, v34, v35))
    {
      savetok(v4, (v4 + 1904));
    }

    OUTLINED_FUNCTION_143();
LABEL_7:
    v36 = OUTLINED_FUNCTION_55_1();
    starttest(v36, v37);
    OUTLINED_FUNCTION_54_1();
    count_chars();
    while (1)
    {
      v38 = OUTLINED_FUNCTION_81_1();
      c_assvar(v38, v39);
      HIWORD(v61) = *(v4 + 1920) - WORD1(v61);
      v40 = OUTLINED_FUNCTION_74_1();
      lpta_rpta_loadp(v40, v41, &v57);
      v42 = OUTLINED_FUNCTION_130();
      if (!delete_2pt(v42, v43, 0, v44))
      {
        v45 = OUTLINED_FUNCTION_74_1();
        lpta_rpta_loadp(v45, v46, &v62);
        OUTLINED_FUNCTION_130();
        insert_2ptv();
        if (!v47)
        {
          v48 = OUTLINED_FUNCTION_54_1();
          lpta_rpta_loadp(v48, v49, &v57);
          OUTLINED_FUNCTION_130();
          insert_2ptv();
          if (!v50)
          {
            break;
          }
        }
      }

      v51 = *(v4 + 104);
      if (v51)
      {
        v52 = OUTLINED_FUNCTION_65_1(v51);
      }

      else
      {
        v53 = OUTLINED_FUNCTION_130();
        v52 = vback(v53, v54);
      }

      if (v52 != 2)
      {
        if (v52 == 1)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  vretproc(v4);
  OUTLINED_FUNCTION_113();
}

uint64_t insert_non_phrase_pause(uint64_t a1, uint64_t a2, __int16 *a3)
{
  OUTLINED_FUNCTION_76_1();
  v47 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0u;
  v35 = 0u;
  OUTLINED_FUNCTION_58_1();
  bzero(v33, v5);
  OUTLINED_FUNCTION_57_1();
  bzero(v46, v6);
  if (!setjmp(v46))
  {
    v7 = ventproc(v3, v33, v45, v44, v43, v46);
    if (!v7)
    {
      OUTLINED_FUNCTION_62_1(v7, &v41);
      v9 = OUTLINED_FUNCTION_71_1();
      get_parm(v9, v10, a3, -4);
      v11 = OUTLINED_FUNCTION_54_1();
      push_ptr_init(v11, v12);
      v13 = OUTLINED_FUNCTION_70_1();
      push_ptr_init(v13, v14);
      *&v35 = 0;
      *(&v35 + 6) = 0;
      LODWORD(v34) = -65532;
      v15 = OUTLINED_FUNCTION_73_1();
      fence_16(v15, v16, v17);
      *(v3 + 168) = 1;
      *(v3 + 144) = v42;
      *(v3 + 128) = 0;
      v18 = OUTLINED_FUNCTION_47_1();
      insert_l(v18, v19);
      v20 = OUTLINED_FUNCTION_54_1();
      lpta_storep(v20, v21, v22);
      *(v3 + 168) = 1;
      *(v3 + 144) = v39;
      *(v3 + 128) = 0;
      v23 = OUTLINED_FUNCTION_47_1();
      insert_l(v23, v24);
      v25 = OUTLINED_FUNCTION_70_1();
      lpta_storep(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_70_1();
      lpta_rpta_loadp(v28, v29, &v38);
      OUTLINED_FUNCTION_54_1();
      settvar_s();
      WORD1(v34) = 11;
      v30 = OUTLINED_FUNCTION_54_1();
      copyvar(v30, v31, &v40);
      insert_2ptv();
      if (!v32)
      {
        vretproc(v3);
        return 0;
      }

      if (*(v3 + 104))
      {
        *(v3 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_133();
      }
    }
  }

  vretproc(v3);
  return 94;
}

void find_next_token(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_146();
  v69 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v7, v8, v9, v10, v11, v12, v13, v14, v48, *v51, *&v51[8], *&v51[16], *&v51[24], *&v51[32], *&v51[40], *&v51[48], *&v51[56], *&v51[64], *&v51[72], *&v51[80], *&v51[88], *&v51[96], *&v51[104], *&v51[112], *&v51[120], *&v51[128], *&v51[136], *&v51[144], *&v51[152], *&v51[160], *&v51[168], *&v51[176], *v52, v53, *v54, v55, v56, v57);
  OUTLINED_FUNCTION_57_1();
  bzero(v68, v15);
  v16 = setjmp(v68);
  if (!v16 && !OUTLINED_FUNCTION_34_3(v16, v51, v17, v18, v19, v20, v21, v22, v49, *v51, *&v51[8], *&v51[16], *&v51[24], *&v51[32], *&v51[40], *&v51[48], *&v51[56], *&v51[64], *&v51[72], *&v51[80], *&v51[88], *&v51[96], *&v51[104], *&v51[112], *&v51[120], *&v51[128], *&v51[136], *&v51[144], *&v51[152], *&v51[160], *&v51[168], *&v51[176], *v52, v53, *v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68[0]))
  {
    v23 = OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_159(v23, v24);
    v25 = OUTLINED_FUNCTION_72_1();
    get_parm(v25, v26, v27, -6);
    OUTLINED_FUNCTION_62_1(v28, v52);
    fence_16(v4, 0, &_MergedGlobals_1_0);
    OUTLINED_FUNCTION_103();
    v29 = OUTLINED_FUNCTION_70_1();
    if (!lpta_loadp_setscan_r(v29, v30, v6))
    {
      bspush_boa(v4);
      v31 = 0;
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_153();
LABEL_7:
      while (1)
      {
        OUTLINED_FUNCTION_4_14();
        if (test_string_s())
        {
          break;
        }

        v32 = OUTLINED_FUNCTION_64_1();
        bspush_ca_scan(v32, v33);
      }

      v34 = v31;
      while (1)
      {
        v35 = v4[13];
        if (v35)
        {
          v36 = OUTLINED_FUNCTION_65_1(v35);
          v31 = v37;
        }

        else
        {
          v36 = vback(v4, v34);
          v31 = 0;
        }

        switch(v36)
        {
          case 2:
            bspush_nboa(v4);
            goto LABEL_15;
          case 3:
            goto LABEL_7;
          case 4:
LABEL_15:
            v38 = OUTLINED_FUNCTION_81_1();
            savescptr(v38, v39, v54);
            goto LABEL_16;
          case 5:
            bspop_boa(v4);
            v45 = advance_tok(v4, v42, v43, v44);
            v34 = v31;
            if (v45)
            {
              continue;
            }

            v46 = OUTLINED_FUNCTION_112();
            bspush_ca_scan(v46, v47);
            goto LABEL_16;
          case 6:
            OUTLINED_FUNCTION_162(6, v50, *v51, *&v51[8], *&v51[16], *&v51[24], *&v51[32], *&v51[40], *&v51[48], *&v51[56], *&v51[64], *&v51[72], *&v51[80], *&v51[88], *&v51[96], *&v51[104], *&v51[112], *&v51[120], *&v51[128], *&v51[136], *&v51[144], *&v51[152], *&v51[160], *&v51[168], *&v51[176]);
            *(v5 + 8) = v55;
            OUTLINED_FUNCTION_137(v53);
            goto LABEL_5;
          case 7:
LABEL_16:
            OUTLINED_FUNCTION_84_1();
            bspush_ca_scan_boa();
            v40 = OUTLINED_FUNCTION_51_1();
            if (testFldeq(v40, v41, 0, 72))
            {
              v34 = v31;
            }

            else
            {
              v34 = 1;
            }

            break;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v4);
LABEL_5:
  OUTLINED_FUNCTION_113();
}

void find_next_word(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  v80 = v7;
  OUTLINED_FUNCTION_146();
  v100 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v82, v8);
  OUTLINED_FUNCTION_57_1();
  bzero(v99, v9);
  v10 = setjmp(v99);
  if (!v10 && !OUTLINED_FUNCTION_92_0(v10, v82, v11, v12, v13, v14, v15, v16, v74, v75, v76, v77, v78, v79, v80, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99[0]))
  {
    v17 = OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_159(v17, v18);
    v19 = OUTLINED_FUNCTION_72_1();
    get_parm(v19, v20, v21, -6);
    v22 = OUTLINED_FUNCTION_107();
    get_parm(v22, v23, v81, -6);
    fence_16(v4, 0, &_MergedGlobals_1_0);
    OUTLINED_FUNCTION_103();
    v24 = OUTLINED_FUNCTION_70_1();
    if (!lpta_loadp_setscan_r(v24, v25, v6))
    {
      bspush_boa(v4);
      v26 = 0;
      OUTLINED_FUNCTION_145();
      while (2)
      {
        while (1)
        {
          OUTLINED_FUNCTION_4_14();
          if (test_string_s())
          {
            break;
          }

          v27 = OUTLINED_FUNCTION_70_1();
          bspush_ca_scan(v27, v28);
        }

LABEL_9:
        v29 = v26;
LABEL_10:
        v30 = v4[13];
        if (v30)
        {
          v31 = OUTLINED_FUNCTION_65_1(v30);
          v26 = v32;
        }

        else
        {
          v31 = vback(v4, v29);
          v26 = 0;
        }

        switch(v31)
        {
          case 2:
            bspush_nboa(v4);
            goto LABEL_15;
          case 3:
            continue;
          case 4:
LABEL_15:
            v33 = OUTLINED_FUNCTION_64_1();
            savescptr(v33, v34, &v85);
            v35 = OUTLINED_FUNCTION_1_15();
            v39 = testFldeq(v35, v36, v37, v38);
            v29 = v26;
            if (v39)
            {
              goto LABEL_10;
            }

            OUTLINED_FUNCTION_157();
LABEL_25:
            bspush_ca_scan_boa();
            v63 = OUTLINED_FUNCTION_51_1();
            v57 = testFldeq(v63, v64, 0, 73);
            goto LABEL_26;
          case 5:
            bspop_boa(v4);
            v43 = advance_tok(v4, v40, v41, v42);
            v29 = v26;
            if (v43)
            {
              goto LABEL_10;
            }

            v44 = OUTLINED_FUNCTION_134();
            starttest(v44, v45);
            v46 = OUTLINED_FUNCTION_140();
            if (!lpta_loadp_setscan_r(v46, v47, 1))
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          case 6:
            goto LABEL_22;
          case 7:
            v58 = OUTLINED_FUNCTION_1_15();
            v62 = testFldeq(v58, v59, v60, v61);
            v29 = v26;
            if (v62)
            {
              goto LABEL_10;
            }

            OUTLINED_FUNCTION_111();
            goto LABEL_25;
          case 8:
            do
            {
LABEL_29:
              v65 = OUTLINED_FUNCTION_91_0();
              bspush_ca_scan(v65, v66);
              v67 = OUTLINED_FUNCTION_1_15();
            }

            while (!testFldeq(v67, v68, v69, v70) && !advance_tok(v4, v71, v72, v73));
            goto LABEL_9;
          case 9:
            bspop_boa(v4);
            v51 = advance_tok(v4, v48, v49, v50);
            v29 = v26;
            if (v51)
            {
              goto LABEL_10;
            }

            goto LABEL_21;
          case 10:
LABEL_21:
            v52 = OUTLINED_FUNCTION_106();
            savescptr(v52, v53, &v83);
LABEL_22:
            v54 = OUTLINED_FUNCTION_84_1();
            starttest(v54, v55);
            OUTLINED_FUNCTION_74_1();
            bspush_ca_boa();
            v56 = OUTLINED_FUNCTION_81_1();
            v57 = end_of_word(v56);
LABEL_26:
            if (v57)
            {
              v29 = v26;
            }

            else
            {
              v29 = 1;
            }

            goto LABEL_10;
          case 11:
          case 13:
            *(v5 + 8) = v86;
            *(v81 + 8) = v84;
            vretproc(v4);
            goto LABEL_5;
          case 12:
            bspop_boa(v4);
            goto LABEL_4;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v4);
LABEL_5:
  OUTLINED_FUNCTION_113();
}

void find_previous_word(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  v7 = v6;
  OUTLINED_FUNCTION_11_14();
  v107 = *MEMORY[0x277D85DE8];
  v104 = 0;
  v105 = 0;
  OUTLINED_FUNCTION_10_14(v8, v9, v10, v11, v12, v13, v14, v15, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v103);
  OUTLINED_FUNCTION_57_1();
  bzero(v106, v16);
  if (setjmp(v106) || (OUTLINED_FUNCTION_119(), ventproc(v4, v17, v18, v19, v20, v106)) || (v21 = OUTLINED_FUNCTION_56_1(), OUTLINED_FUNCTION_127(v21, v22), OUTLINED_FUNCTION_62_1(v23, &v102), v24 = OUTLINED_FUNCTION_66_1(), OUTLINED_FUNCTION_159(v24, v25), fence_16(v4, 0, &_MergedGlobals_1_0), OUTLINED_FUNCTION_103(), *(v4 + 136) = v7, OUTLINED_FUNCTION_12_14(), lpta_tstctxtl()) || (OUTLINED_FUNCTION_94_0(), lpta_tstmovel()) || (v26 = OUTLINED_FUNCTION_94_0(), setscan_l(v26, v27, v28), v29))
  {
LABEL_6:
    vretproc(v4);
  }

  else
  {
    OUTLINED_FUNCTION_15_12();
    bspush_ca_scan_boa();
    OUTLINED_FUNCTION_145();
    v30 = 0;
    while (2)
    {
      v31 = OUTLINED_FUNCTION_70_1();
      if (!test_synch(v31, v32, 1, &string_7_1))
      {
        v30 = 1;
      }

LABEL_11:
      v33 = *(v4 + 104);
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_65_1(v33);
        v30 = v35;
      }

      else
      {
        v34 = vback(v4, v30);
        v30 = 0;
      }

      switch(v34)
      {
        case 2:
          bspop_boa(v4);
          goto LABEL_16;
        case 3:
          continue;
        case 4:
LABEL_16:
          v36 = OUTLINED_FUNCTION_64_1();
          savescptr(v36, v37, &v102);
          if (!advance_tok(v4, v38, v39, v40))
          {
            goto LABEL_17;
          }

          goto LABEL_11;
        case 5:
LABEL_17:
          OUTLINED_FUNCTION_93_0();
          v41 = OUTLINED_FUNCTION_90_1();
          savescptr(v41, v42, v43);
          *(v5 + 8) = v105;
          OUTLINED_FUNCTION_131(v44, v45, v46, v47, v48, v49, v50, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v102, v103);
          break;
        default:
          goto LABEL_6;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_113();
}

void find_prev_word_optional_comma(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  v7 = v6;
  OUTLINED_FUNCTION_11_14();
  v73 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v8, v9, v10, v11, v12, v13, v14, v15, v54, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v56[13], v56[14], v56[15], v56[16], v56[17], v56[18], v56[19], v56[20], v56[21], v56[22], v56[23], v57, v58, v59, v60, v61);
  OUTLINED_FUNCTION_57_1();
  bzero(v72, v16);
  v17 = setjmp(v72);
  if (v17)
  {
    goto LABEL_20;
  }

  if (OUTLINED_FUNCTION_34_3(v17, v56, v18, v19, v20, v21, v22, v23, v55, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v56[13], v56[14], v56[15], v56[16], v56[17], v56[18], v56[19], v56[20], v56[21], v56[22], v56[23], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72[0]))
  {
    goto LABEL_20;
  }

  v24 = OUTLINED_FUNCTION_72_1();
  get_parm(v24, v25, v26, -6);
  OUTLINED_FUNCTION_62_1(v27, &v58);
  v28 = OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_159(v28, v29);
  fence_16(v4, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_103();
  *(v4 + 136) = v7;
  OUTLINED_FUNCTION_12_14();
  if (lpta_tstctxtl())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_94_0();
  if (lpta_tstmovel())
  {
    goto LABEL_20;
  }

  v30 = OUTLINED_FUNCTION_94_0();
  setscan_l(v30, v31, v32);
  if (v33)
  {
    goto LABEL_20;
  }

  v34 = 0;
  OUTLINED_FUNCTION_175();
  do
  {
    v35 = OUTLINED_FUNCTION_54_1();
    savescptr(v35, v36, &v58);
    v40 = advance_tok(v4, v37, v38, v39);
    v41 = v34;
    v42 = v34;
    if (!v40)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (*(v4 + 104))
    {
      v52 = OUTLINED_FUNCTION_144(v40, v42);
    }

    else
    {
      v53 = vback(v4, v42);
      v52 = 0;
    }

    v34 = v52;
  }

  while (v53 == 2);
  v41 = v52;
  if (v53 == 3)
  {
LABEL_8:
    v43 = OUTLINED_FUNCTION_64_1();
    savescptr(v43, v44, &v60);
    v45 = OUTLINED_FUNCTION_74_1();
    starttest_l(v45, v46);
    OUTLINED_FUNCTION_84_1();
    bspush_ca_boa();
    v47 = OUTLINED_FUNCTION_70_1();
    v40 = lpta_loadp_setscan_l(v47, v48, 5);
    if (v40)
    {
      v42 = v41;
    }

    else
    {
      v40 = advance_tok(v4, v49, v50, v51);
      if (v40)
      {
        v42 = v41;
      }

      else
      {
        v42 = 1;
      }
    }

    goto LABEL_13;
  }

  if (v53 != 4)
  {
LABEL_20:
    vretproc(v4);
    goto LABEL_21;
  }

  bspop_boa(v4);
  *(v5 + 8) = v61;
  OUTLINED_FUNCTION_137(v59);
LABEL_21:
  OUTLINED_FUNCTION_113();
}

uint64_t precedes_number(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v188, v191);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v189, v192, v194, v196, v198, v200);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v190, v193, v195, v197, v199, v201))
    {
      v27 = OUTLINED_FUNCTION_13_14();
      get_parm(v27, v28, v29, -6);
      OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182);
      fence_16(v1, 0, &_MergedGlobals_1_0);
      v38 = OUTLINED_FUNCTION_110();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_54_1();
      if (!lpta_loadp_setscan_r(v40, v41, 1))
      {
        OUTLINED_FUNCTION_15_12();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_4_14();
        if (!test_string_s())
        {
LABEL_14:
          bspush_nboa(v1);
          bspush_boa(v1);
LABEL_15:
          while (1)
          {
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              break;
            }

            v62 = OUTLINED_FUNCTION_54_1();
            bspush_ca_scan(v62, v63);
          }
        }

        while (2)
        {
          v43 = *(v1 + 104);
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_65_1(v43);
          }

          else
          {
            v44 = OUTLINED_FUNCTION_133();
          }

          switch(v44)
          {
            case 2:
              goto LABEL_14;
            case 3:
              bspush_nboa(v1);
              goto LABEL_11;
            case 4:
              goto LABEL_15;
            case 5:
LABEL_11:
              OUTLINED_FUNCTION_93_0();
              v52 = OUTLINED_FUNCTION_83_1();
              savescptr(v52, v53, v54);
              v55 = OUTLINED_FUNCTION_3_15();
              if (!testFldeq(v55, v56, v57, v58))
              {
                v44 = advance_tok(v1, v59, v60, v61);
                if (!v44)
                {
                  goto LABEL_13;
                }
              }

              continue;
            case 6:
LABEL_13:
              OUTLINED_FUNCTION_61_1(v44, v45, v46, v47, v48, v49, v50, v51, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v187);
              break;
            default:
              goto LABEL_4;
          }

          break;
        }
      }
    }
  }

LABEL_4:
  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

uint64_t abbr_before_num(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_20_8(v4, v5, v6, v7, v8, v9, v10, v11, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v12, v13, v14, v15, v16, v17, v18, v19, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v158, v160, v162, v164);
  v20 = setjmp(v2);
  if (v20)
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_25_8(v20, v21, v22, v23, v24, v25, v26, v27, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v159, SHIDWORD(v159), v161, SWORD2(v161), SHIWORD(v161), v163, SWORD2(v163), SBYTE6(v163), SHIBYTE(v163), v165, v166);
  if (v28)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_9(v28, v29, v30, v31, v32, v33, v34, v35, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154);
  v37 = OUTLINED_FUNCTION_73_1();
  fence_16(v37, v38, v39);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_15_12();
  bspush_ca_boa();
  v40 = OUTLINED_FUNCTION_55_1();
  if (lpta_loadp_setscan_r(v40, v41, v3))
  {
    v42 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    if (test_string_s())
    {
      v42 = 0;
    }

    else
    {
      bspush_boa(v1);
      v42 = 0;
LABEL_12:
      while (1)
      {
        OUTLINED_FUNCTION_4_14();
        if (test_string_s())
        {
          break;
        }

        v43 = OUTLINED_FUNCTION_55_1();
        bspush_ca_scan(v43, v44);
      }
    }
  }

  v45 = v42;
  while (2)
  {
    v46 = v1[13];
    if (v46)
    {
      OUTLINED_FUNCTION_65_1(v46);
      v48 = v47;
    }

    else
    {
      vback(v1, v45);
      v48 = 0;
    }

    OUTLINED_FUNCTION_152();
    if (!v51 & v50)
    {
LABEL_3:
      vretproc(v1);
      return 94;
    }

    else
    {
      switch(v49)
      {
        case 1:
          bspop_boa(v1);
          goto LABEL_3;
        case 2:
          bspush_nboa(v1);
          v52 = OUTLINED_FUNCTION_3_15();
          v56 = testFldeq(v52, v53, v54, v55);
          v45 = v48;
          if (!v56)
          {
            if (advance_tok(v1, v48, v57, v58))
            {
              v45 = v48;
            }

            else
            {
              v45 = 1;
            }
          }

          continue;
        case 3:
          v42 = v48;
          goto LABEL_12;
        default:
          vretproc(v1);
          result = 0;
          break;
      }
    }

    return result;
  }
}

uint64_t spell_out_token(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v175, v178);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v176, v179, v181, v183, v185, v187);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v177, v180, v182, v184, v186, v188))
    {
      v28 = OUTLINED_FUNCTION_13_14();
      get_parm(v28, v29, v30, -6);
      OUTLINED_FUNCTION_19_9(v31, v32, v33, v34, v35, v36, v37, v38, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169);
      v39 = OUTLINED_FUNCTION_73_1();
      fence_16(v39, v40, v41);
      *(v1 + 2742) = *(v1 + 2754);
      v42 = OUTLINED_FUNCTION_13_14();
      single_chars_token(v42);
      OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_61_1(v43, v44, v45, v46, v47, v48, v49, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v174);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

void single_chars_to_punct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v73 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_10(v5, v6, v7, v8, v9, v10, v11, v12, v60, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], v63[21], v63[22], v64, v65, v66, v67);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_177(v13, v14, v15, v16, v17, v18, v19, v20, v61, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], v63[21], v63[22], v64, v65, v66, v67, v68, v69, v70, v71);
  v21 = setjmp(v4);
  if (v21 || OUTLINED_FUNCTION_44_1(v21, v63, v22, v23, v24, v25, v26, v27, v62, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v63[12], v63[13], v63[14], v63[15], v63[16], v63[17], v63[18], v63[19], v63[20], v63[21], v63[22], v64, v65, v66, v67, v68, SHIDWORD(v68), v69, SWORD2(v69), SHIWORD(v69), v70, SWORD2(v70), SBYTE6(v70), SHIBYTE(v70), v71, v72))
  {
LABEL_3:
    vretproc(v3);
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_13_14();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_62_1(v31, &v64);
  fence_16(v3, 0, &_MergedGlobals_1_0);
  v32 = OUTLINED_FUNCTION_110();
  starttest(v32, v33);
  v34 = OUTLINED_FUNCTION_54_1();
  if (!lpta_loadp_setscan_r(v34, v35, 1))
  {
    while (2)
    {
      v39 = OUTLINED_FUNCTION_70_1();
      bspush_ca_scan(v39, v40);
LABEL_9:
      v41 = OUTLINED_FUNCTION_142();
      savescptr(v41, v42, &v64);
      v43 = OUTLINED_FUNCTION_74_1();
      bspush_ca_scan(v43, v44);
      v45 = OUTLINED_FUNCTION_80_1();
      if (!testFldeq(v45, v46, 3, 4) && !advance_tok(v3, v47, v48, v49))
      {
LABEL_11:
        v50 = OUTLINED_FUNCTION_84_1();
        bspush_ca_scan(v50, v51);
        OUTLINED_FUNCTION_24_8();
        if (!test_string_s())
        {
          break;
        }
      }

LABEL_12:
      v52 = *(v3 + 104);
      if (v52)
      {
        v53 = OUTLINED_FUNCTION_65_1(v52);
      }

      else
      {
        v53 = OUTLINED_FUNCTION_133();
      }

      switch(v53)
      {
        case 1:
          break;
        case 2:
          continue;
        case 3:
          if (!advance_tok(v3, v54, v55, v56))
          {
            continue;
          }

          goto LABEL_12;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_11;
        case 6:
          *(v3 + 136) = 1;
          v57 = OUTLINED_FUNCTION_12_14();
          if (!test_ptr(v57, v58, v59))
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        case 7:
          goto LABEL_7;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_6:
  *(v3 + 2742) = *(v3 + 2754);
  v36 = OUTLINED_FUNCTION_124();
  single_chars(v36, v37, v38);
LABEL_7:
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_137(v65);
LABEL_4:
  OUTLINED_FUNCTION_113();
}

void single_chars_count_inp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v63 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v44, v14);
  OUTLINED_FUNCTION_57_1();
  bzero(v62, v15);
  v16 = setjmp(v62);
  if (!v16 && !OUTLINED_FUNCTION_89_1(v16, v44, v17, v18, v19, v20, v21, v22, v43, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10], v44[11], v44[12], v44[13], v44[14], v44[15], v44[16], v44[17], v44[18], v44[19], v44[20], v44[21], v44[22], v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]))
  {
    v23 = OUTLINED_FUNCTION_54_1();
    get_parm(v23, v24, v11, -6);
    v25 = OUTLINED_FUNCTION_64_1();
    get_parm(v25, v26, v9, -6);
    v27 = OUTLINED_FUNCTION_70_1();
    get_parm(v27, v28, v7, -4);
    v29 = OUTLINED_FUNCTION_81_1();
    get_parm(v29, v30, v5, -4);
    v31 = OUTLINED_FUNCTION_74_1();
    push_ptr_init(v31, v32);
    v33 = OUTLINED_FUNCTION_73_1();
    fence_16(v33, v34, v35);
    HIWORD(v47) = *(v13 + 2414);
    count_cumulative_chars();
    v36 = OUTLINED_FUNCTION_64_1();
    lpta_loadpn(v36, v37);
    OUTLINED_FUNCTION_73_1();
    lpta_ctxtr();
    v38 = OUTLINED_FUNCTION_74_1();
    lpta_storep(v38, v39, v40);
    OUTLINED_FUNCTION_54_1();
    count_chars();
    v41 = OUTLINED_FUNCTION_74_1();
    count_unnormalized_inp(v41, v42, &v47);
    v7[1] = HIWORD(v47);
    v5[1] = WORD1(v47);
  }

  vretproc(v13);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_113();
}

uint64_t ambig_abbr(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_20_8(v4, v5, v6, v7, v8, v9, v10, v11, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v12, v13, v14, v15, v16, v17, v18, v19, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v148, v150, v152, v154);
  v20 = setjmp(v2);
  if (!v20)
  {
    v28 = OUTLINED_FUNCTION_25_8(v20, v21, v22, v23, v24, v25, v26, v27, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v149, SHIDWORD(v149), v151, SWORD2(v151), SHIWORD(v151), v153, SWORD2(v153), SBYTE6(v153), SHIBYTE(v153), v155, v156);
    if (!v28)
    {
      OUTLINED_FUNCTION_19_9(v28, v29, v30, v31, v32, v33, v34, v35, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
      v36 = 0;
      v38 = OUTLINED_FUNCTION_73_1();
      fence_16(v38, v39, v40);
      OUTLINED_FUNCTION_103();
      v41 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v41, v42, v3))
      {
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_4_14();
      if (test_string_s())
      {
        goto LABEL_7;
      }

      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_51_1();
      test_string_s();
      OUTLINED_FUNCTION_149();
      while (1)
      {
        v44 = v1[13];
        if (v44)
        {
          v45 = OUTLINED_FUNCTION_65_1(v44);
          v47 = v46;
        }

        else
        {
          v45 = vback(v1, v43);
          v47 = 0;
        }

        if (v45 != 2)
        {
          break;
        }

        bspop_boa(v1);
        OUTLINED_FUNCTION_71_1();
        bspush_ca_boa();
        v48 = OUTLINED_FUNCTION_55_1();
        if (end_of_sentence(v48))
        {
          v43 = v47;
        }

        else
        {
          v43 = 1;
        }
      }

      if (v45 == 1)
      {
LABEL_7:
        v36 = 0;
        goto LABEL_4;
      }

      if (v45 == 3)
      {
        bspop_boa(v1);
      }
    }
  }

  v36 = 94;
LABEL_4:
  vretproc(v1);
  return v36;
}

void delete_comma_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v131[30] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v6, v7, v8, v9, v10, v11, v12, v13, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131[0], v131[1]);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v14, v15, v16, v17, v18, v19, v20, v21, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5]);
  if (!setjmp(v5))
  {
    OUTLINED_FUNCTION_0_16();
    v30 = OUTLINED_FUNCTION_132(v22, v23, v24, v25, v26, v27, v28, v29, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5]);
    if (!v30)
    {
      OUTLINED_FUNCTION_62_1(v30, v131);
      v31 = OUTLINED_FUNCTION_66_1();
      push_ptr_init(v31, v32);
      fence_16(v4, 0, &_MergedGlobals_1_0);
      if (*(v4 + 2282) != *(v4 + 3238))
      {
        OUTLINED_FUNCTION_168();
        v33 = 0;
        while (2)
        {
          v34 = OUTLINED_FUNCTION_71_1();
          lpta_loadpn(v34, v35);
          OUTLINED_FUNCTION_80_1();
          lpta_ctxtl();
          v36 = OUTLINED_FUNCTION_54_1();
          lpta_storep(v36, v37, v38);
          v39 = OUTLINED_FUNCTION_110();
          starttest(v39, v40);
          v41 = OUTLINED_FUNCTION_54_1();
          if (!lpta_loadp_setscan_l(v41, v42, 5))
          {
            OUTLINED_FUNCTION_64_1();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_81_1();
            bspush_ca_scan_boa();
            if (advanc(v4))
            {
              v43 = v33;
            }

            else
            {
              v43 = 1;
            }

LABEL_10:
            v44 = *(v4 + 104);
            if (v44)
            {
              v45 = OUTLINED_FUNCTION_65_1(v44);
              v33 = v46;
            }

            else
            {
              v45 = vback(v4, v43);
              v33 = 0;
            }

            switch(v45)
            {
              case 1:
                continue;
              case 3:
                bspop_boa(v4);
                OUTLINED_FUNCTION_98_0();
                OUTLINED_FUNCTION_12_14();
                delete_1pt();
                goto LABEL_4;
              case 4:
                bspop_boa(v4);
                v47 = OUTLINED_FUNCTION_139();
                bspush_ca_scan(v47, v48);
                v52 = advance_tok(v4, v49, v50, v51);
                goto LABEL_16;
              case 5:
                *(v4 + 136) = 1;
                v53 = OUTLINED_FUNCTION_12_14();
                v52 = test_ptr(v53, v54, v55);
LABEL_16:
                v43 = v33;
                if (!v52)
                {
                  goto LABEL_17;
                }

                goto LABEL_10;
              case 6:
LABEL_17:
                v43 = 1;
                goto LABEL_10;
              default:
                goto LABEL_4;
            }
          }

          break;
        }
      }
    }
  }

LABEL_4:
  vretproc(v4);
  OUTLINED_FUNCTION_113();
}

uint64_t is_hyphenated_word(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_20_8(v4, v5, v6, v7, v8, v9, v10, v11, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v12, v13, v14, v15, v16, v17, v18, v19, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v143, v145, v147, v149);
  v20 = setjmp(v3);
  if (v20 || (v28 = OUTLINED_FUNCTION_25_8(v20, v21, v22, v23, v24, v25, v26, v27, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v144, SHIDWORD(v144), v146, SWORD2(v146), SHIWORD(v146), v148, SWORD2(v148), SBYTE6(v148), SHIBYTE(v148), v150, v151), v28) || (OUTLINED_FUNCTION_19_9(v28, v29, v30, v31, v32, v33, v34, v35, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139), fence_16(v1, 0, &_MergedGlobals_1_0), v36 = OUTLINED_FUNCTION_100(), starttest(v36, v37), v38 = OUTLINED_FUNCTION_55_1(), lpta_loadp_setscan_r(v38, v39, v2)) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || ((OUTLINED_FUNCTION_15_12(), bspush_ca_scan_boa(), OUTLINED_FUNCTION_4_14(), v40 = test_string_s(), (v41 = v1[13]) == 0) ? (v42 = vback(v1, v40 == 0)) : (v42 = OUTLINED_FUNCTION_65_1(v41)), v42 != 2))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    bspop_boa(v1);
    vretproc(v1);
    return 0;
  }
}

uint64_t followed_by_hyphen(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_10_14(v4, v5, v6, v7, v8, v9, v10, v11, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v156);
  OUTLINED_FUNCTION_26_8(v12, v13, v14, v15, v16, v17, v18, v19, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154, v157, v159, v161, v163, v165);
  if (setjmp(v3))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v20, v21, v22, v23, v24, v25, v26, v27, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v155, v158, v160, v162, v164, v166))
  {
    goto LABEL_16;
  }

  v28 = OUTLINED_FUNCTION_63_1();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_19_9(v31, v32, v33, v34, v35, v36, v37, v38, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149);
  fence_16(v1, 0, &_MergedGlobals_1_0);
  v39 = OUTLINED_FUNCTION_100();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_55_1();
  if (lpta_loadp_setscan_r(v41, v42, v2))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_14();
  if (test_string_s())
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_15_12();
  bspush_ca_scan_boa();
  OUTLINED_FUNCTION_24_8();
  test_string_s();
  OUTLINED_FUNCTION_149();
  while (1)
  {
    v44 = v1[13];
    if (v44)
    {
      v45 = OUTLINED_FUNCTION_65_1(v44);
      v47 = v46;
    }

    else
    {
      v45 = vback(v1, v43);
      v47 = 0;
    }

    if (v45 != 2)
    {
      break;
    }

    bspop_boa(v1);
    v48 = OUTLINED_FUNCTION_110();
    starttest_e(v48, v49);
    OUTLINED_FUNCTION_54_1();
    bspush_ca_boa();
    v50 = OUTLINED_FUNCTION_70_1();
    v52 = lpta_loadp_setscan_l(v50, v51, 1);
    v43 = v47;
    if (!v52)
    {
      OUTLINED_FUNCTION_24_8();
      if (test_string_s())
      {
        v43 = v47;
      }

      else
      {
        v43 = 1;
      }
    }
  }

  if (v45 != 3)
  {
LABEL_16:
    vretproc(v1);
    return 94;
  }

  else
  {
    bspop_boa(v1);
    vretproc(v1);
    return 0;
  }
}

void between_proper_names(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v79 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_16_12(v4, v5, v6, v7, v8, v9, v10, v11, v59, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v61[9], v61[10], v61[11], v61[12], v61[13], v61[14], v61[15], v61[16], v61[17], v61[18], v61[19], v61[20], v61[21], v61[22], v62[0], v62[1], v63, v64, v65[0], v65[1]);
  OUTLINED_FUNCTION_57_1();
  bzero(v78, v12);
  v13 = setjmp(v78);
  if (!v13 && !OUTLINED_FUNCTION_92_0(v13, v61, v14, v15, v16, v17, v18, v19, v60, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v61[9], v61[10], v61[11], v61[12], v61[13], v61[14], v61[15], v61[16], v61[17], v61[18], v61[19], v61[20], v61[21], v61[22], v62[0], v62[1], v63, v64, v65[0], v65[1], v66[0], v66[1], v66[2], v66[3], v67[0], v67[1], v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]))
  {
    v20 = OUTLINED_FUNCTION_72_1();
    get_parm(v20, v21, v22, -6);
    v23 = OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_126(v23, v24);
    v25 = OUTLINED_FUNCTION_55_1();
    push_ptr_init(v25, v26);
    v27 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v27, v28);
    v29 = OUTLINED_FUNCTION_54_1();
    push_ptr_init(v29, v30);
    v31 = OUTLINED_FUNCTION_104();
    push_ptr_init(v31, v32);
    fence_16(v3, 0, &_MergedGlobals_1_0);
    v33 = OUTLINED_FUNCTION_42_1();
    starttest(v33, v34);
    OUTLINED_FUNCTION_15_12();
    bspush_ca_boa();
    v35 = OUTLINED_FUNCTION_64_1();
    find_next_word(v35, v36, v66, v65);
    OUTLINED_FUNCTION_149();
    while (2)
    {
      v38 = v3[13];
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_65_1(v38);
        v41 = v40;
      }

      else
      {
        v39 = vback(v3, v37);
        v41 = 0;
      }

      switch(v39)
      {
        case 1:
          v42 = OUTLINED_FUNCTION_64_1();
          starttest(v42, v43);
          OUTLINED_FUNCTION_81_1();
          bspush_ca_boa();
          v44 = OUTLINED_FUNCTION_54_1();
          find_previous_word(v44, v45, v62, v67);
          goto LABEL_12;
        case 2:
        case 4:
        case 6:
        case 8:
          bspop_boa(v3);
          break;
        case 3:
          v47 = OUTLINED_FUNCTION_74_1();
          starttest(v47, v48);
          OUTLINED_FUNCTION_84_1();
          bspush_ca_boa();
          v49 = OUTLINED_FUNCTION_55_1();
          goto LABEL_11;
        case 5:
          v57 = OUTLINED_FUNCTION_91_0();
          starttest(v57, v58);
          OUTLINED_FUNCTION_71_1();
          bspush_ca_boa();
          v49 = OUTLINED_FUNCTION_54_1();
LABEL_11:
          v46 = is_proper_name(v49, v50, v51, v52, v53, v54, v55, v56);
LABEL_12:
          if (v46)
          {
            v37 = v41;
          }

          else
          {
            v37 = 1;
          }

          continue;
        default:
          goto LABEL_16;
      }

      break;
    }
  }

LABEL_16:
  vretproc(v3);
  OUTLINED_FUNCTION_113();
}

uint64_t mark_uppercase(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  v39 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32[0] = 0;
  v32[1] = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v31, v3);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v4, v5);
  v6 = setjmp(v2);
  if (!v6 && !OUTLINED_FUNCTION_160(v6, v31, v38, v37, v36))
  {
    v8 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_127(v8, v9);
    v10 = OUTLINED_FUNCTION_68_1();
    get_parm(v10, v11, v12, -4);
    v13 = OUTLINED_FUNCTION_104();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_73_1();
    fence_16(v15, v16, v17);
    if (HIWORD(v33) == 1)
    {
      v18 = OUTLINED_FUNCTION_15_12();
      starttest(v18, v19);
      v20 = OUTLINED_FUNCTION_7_14();
      if (!lpta_loadp_setscan_r(v20, v21, v22) && !advance_tok(v1, v23, v24, v25))
      {
        goto LABEL_7;
      }

      do
      {
LABEL_8:
        v26 = OUTLINED_FUNCTION_71_1();
        lpta_rpta_loadp(v26, v27, v32);
        OUTLINED_FUNCTION_4_14();
        if (!mark_s())
        {
          goto LABEL_3;
        }

        v28 = *(v1 + 104);
        if (v28)
        {
          v29 = OUTLINED_FUNCTION_65_1(v28);
        }

        else
        {
          v29 = OUTLINED_FUNCTION_133();
        }
      }

      while (v29 == 2);
      if (v29 == 3)
      {
LABEL_7:
        OUTLINED_FUNCTION_162(3, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], v31[22]);
        goto LABEL_8;
      }
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_154();
}

uint64_t mark_non_letter(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v144, v147);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v145, v148, v150, v152, v154, v156);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149, v151, v153, v155, v157))
    {
      v27 = OUTLINED_FUNCTION_13_14();
      get_parm(v27, v28, v29, -6);
      OUTLINED_FUNCTION_19_9(v30, v31, v32, v33, v34, v35, v36, v37, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140);
      v38 = OUTLINED_FUNCTION_73_1();
      fence_16(v38, v39, v40);
      v41 = OUTLINED_FUNCTION_13_14();
      lpta_rpta_loadp(v41, v42, v43);
      OUTLINED_FUNCTION_9_14();
      if (mark_s() || (OUTLINED_FUNCTION_51_1(), mark_s()) || (OUTLINED_FUNCTION_4_14(), mark_s()))
      {
        if (*(v1 + 104))
        {
          *(v1 + 104) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_133();
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

uint64_t inside_orig_inp_token(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  v71[32] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3]);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_179(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_178(v13, v14, v15, v16, v17))
    {
      OUTLINED_FUNCTION_21_8();
      v18 = OUTLINED_FUNCTION_71_1();
      push_ptr_init(v18, v19);
      v20 = OUTLINED_FUNCTION_73_1();
      fence_16(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_55_1();
      lpta_loadpn(v23, v24);
      OUTLINED_FUNCTION_73_1();
      lpta_movel();
      v25 = OUTLINED_FUNCTION_71_1();
      lpta_storep(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_100();
      starttest_l(v28, v29);
      *(v1 + 136) = v71;
      OUTLINED_FUNCTION_12_14();
      if (!lpta_tstctxtr())
      {
        v30 = OUTLINED_FUNCTION_94_0();
        setscan_r(v30, v31, v32);
        if (!v33)
        {
          OUTLINED_FUNCTION_15_12();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_98_0();
          v36 = OUTLINED_FUNCTION_12_14();
          v39 = test_ptr(v36, v37, v38) == 0;
          while (1)
          {
            v40 = *(v1 + 104);
            if (v40)
            {
              v41 = OUTLINED_FUNCTION_65_1(v40);
              v43 = v42;
            }

            else
            {
              v41 = vback(v1, v39);
              v43 = 0;
            }

            if (v41 != 2)
            {
              break;
            }

            bspop_boa(v1);
            v47 = advance_tok(v1, v44, v45, v46);
            v39 = v43;
            v34 = 0;
            if (!v47)
            {
              goto LABEL_6;
            }
          }
        }
      }
    }
  }

  v34 = 94;
LABEL_6:
  vretproc(v1);
  return v34;
}

uint64_t lowercase_and_normalize(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v142, v145);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v143, v146, v148, v150, v152, v154);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v144, v147, v149, v151, v153, v155))
    {
      v28 = OUTLINED_FUNCTION_13_14();
      get_parm(v28, v29, v30, -6);
      OUTLINED_FUNCTION_19_9(v31, v32, v33, v34, v35, v36, v37, v38, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138);
      v39 = OUTLINED_FUNCTION_73_1();
      fence_16(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_13_14();
      convert_to_lowercase(v42);
      OUTLINED_FUNCTION_13_14();
      normalize_letters();
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = v36;
  *(v35 + 144) = a35;
  *(v35 + 136) = v36;
  *(v35 + 112) = a33;
  *(v35 + 128) = 0;
  return v35;
}

void OUTLINED_FUNCTION_5_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_10_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_12_14()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_16_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_18_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  a35 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_19_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

void OUTLINED_FUNCTION_20_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_21_8()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_26_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, __int16 a42, __int16 a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{

  return ventproc(v49, a2, &a47, &a43, &a40, &a49);
}

void OUTLINED_FUNCTION_43_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, __int16 a40, __int16 a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{

  return ventproc(v47, a2, &a45, &a41, &a38, &a47);
}

void OUTLINED_FUNCTION_62_1(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, __int16 a44, __int16 a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, int a42, __int16 a43, __int16 a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{

  return ventproc(v50, a2, &a48, &a44, &a41, &a50);
}

uint64_t OUTLINED_FUNCTION_92_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, int a47, __int16 a48, __int16 a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{

  return ventproc(v55, a2, &a53, &a49, &a46, &a55);
}

void OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = 1;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

void OUTLINED_FUNCTION_103()
{

  starttest(v0, 1);
}

void OUTLINED_FUNCTION_126(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

BOOL OUTLINED_FUNCTION_131(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 + 8) = a35;

  return vretproc(v35);
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return ventproc(v39, a2, a3, a4, a5, va);
}

uint64_t OUTLINED_FUNCTION_133()
{

  return vback(v0, 0);
}

BOOL OUTLINED_FUNCTION_137@<W0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;

  return vretproc(v1);
}

uint64_t OUTLINED_FUNCTION_150()
{

  return rpta_loadpn(v0, v0 + 3344);
}

void OUTLINED_FUNCTION_158(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  bzero(va, a2);
}

void OUTLINED_FUNCTION_159(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

void OUTLINED_FUNCTION_161(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

double OUTLINED_FUNCTION_162@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  *&result = savescptr(v25, a1, va).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_163(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, v3, v2);
}

void OUTLINED_FUNCTION_164(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, a2);
}

void OUTLINED_FUNCTION_177(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  bzero(va, a2);
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 232);
}

void OUTLINED_FUNCTION_179(uint64_t a1, size_t a2)
{

  bzero((v2 - 232), a2);
}

uint64_t OUTLINED_FUNCTION_180()
{

  return lpta_loadpn(v0, v0 + 2496);
}

uint64_t convert_digits_to_words()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_3_16(v2, v3, v4, v5, v6, v7, v8, v9, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v179, v182);
  OUTLINED_FUNCTION_10_15(v10, v11, v12, v13, v14, v15, v16, v17, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v180, v183, v185, v187, v189, v191);
  v18 = setjmp(v1);
  if (v18)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_2_16(v18, v19, v20, v21, v22, v23, v24, v25, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v181, v184, v186, SHIDWORD(v186), v188, SWORD2(v188), SHIWORD(v188), v190, SWORD2(v190), SBYTE6(v190), SHIBYTE(v190), v192, v193))
  {
    goto LABEL_4;
  }

  v26 = OUTLINED_FUNCTION_5_15();
  get_parm(v26, v27, v28, -6);
  OUTLINED_FUNCTION_14_13(v29, v30, v31, v32, v33, v34, v35, v36, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173);
  fence_17(v0);
  starttest(v0, 1);
  v37 = OUTLINED_FUNCTION_15_13();
  if (lpta_loadp_setscan_r(v37, v38, 1))
  {
    goto LABEL_4;
  }

  if (!OUTLINED_FUNCTION_8_15() && !advance_tok(v0, v40, v41, v42))
  {
    *(v0 + 2614) = *(v0 + 2642);
    OUTLINED_FUNCTION_4_15();
    convert_lang_digits_to_words();
    goto LABEL_16;
  }

  v43 = *(v0 + 104);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_31_5(v43);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_39_2();
  }

  if ((v44 - 4) < 2)
  {
    goto LABEL_18;
  }

  if (v44 == 2)
  {
LABEL_16:
    v52 = OUTLINED_FUNCTION_4_15();
    hyphen_between_nums(v52, v53, v54);
    if (!v44)
    {
LABEL_18:
      OUTLINED_FUNCTION_25_9(v44, v45, v46, v47, v48, v49, v50, v51, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v178);
      return 0;
    }

LABEL_17:
    v44 = separate_tokens(v0);
    goto LABEL_18;
  }

  if (v44 == 3)
  {
    goto LABEL_17;
  }

LABEL_4:
  vretproc(v0);
  return 94;
}

uint64_t convert_digits()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v116, v119);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v117, v120, v122, v124, v126, v128);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v118, v121, v123, SHIDWORD(v123), v125, SWORD2(v125), SHIWORD(v125), v127, SWORD2(v127), SBYTE6(v127), SHIBYTE(v127), v129, v130))
  {
    v27 = 94;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_5_15();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_28_6(v32, v33);
    fence_17(v0);
    v34 = OUTLINED_FUNCTION_5_15();
    count_digits(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_5_15();
    get_number_info(v37);
    v38 = OUTLINED_FUNCTION_5_15();
    convert_numbers(v38);
    v39 = OUTLINED_FUNCTION_18_11();
    reset_enum_ptr(v39);
    *(v1 + 8) = v115;
    v27 = 0;
  }

  vretproc(v0);
  return v27;
}

void count_digits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_6_15();
  v81 = *MEMORY[0x277D85DE8];
  v76[0] = 0;
  v76[1] = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v72[0] = 0;
  v72[1] = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(v71, v6);
  OUTLINED_FUNCTION_19_10();
  bzero(v80, v7);
  if (setjmp(v80) || ventproc(v3, v71, v79, v78, v77, v80))
  {
LABEL_3:
    vretproc(v3);
    goto LABEL_4;
  }

  get_parm(v3, v76, v5, -6);
  OUTLINED_FUNCTION_28_6(v3, &v74);
  v73 = 65532;
  push_ptr_init(v3, v72);
  fence_17(v3);
  *(v3 + 2910) = 0;
  *(v3 + 2902) = 0;
  *(v3 + 2898) = 0;
  v8 = OUTLINED_FUNCTION_35_3();
  starttest(v8, v9);
  OUTLINED_FUNCTION_35_3();
  bspush_ca_boa();
  v10 = OUTLINED_FUNCTION_35_3();
  bspush_ca(v10);
  v11 = 0;
  if (*(v3 + 5094) == *(v3 + 5090))
  {
LABEL_6:
    v11 = 1;
  }

  v12 = v11;
  while (2)
  {
    v13 = *(v3 + 104);
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_31_5(v13);
      v16 = v15;
    }

    else
    {
      v14 = vback(v3, v12);
      v16 = 0;
    }

    switch(v14)
    {
      case 1:
      case 6:
        goto LABEL_56;
      case 2:
        bspop_boa(v3);
        *(v3 + 2918) = 0;
        HIWORD(v73) = 0;
        startloop(v3, 6);
        v17 = OUTLINED_FUNCTION_15_13();
        copyvar(v17, v18, v76);
        goto LABEL_13;
      case 3:
        bspush_ca(v3);
        v34 = *(v3 + 5114);
        goto LABEL_31;
      case 4:
        goto LABEL_6;
      case 5:
        v34 = *(v3 + 5118);
LABEL_31:
        v12 = v16;
        if (v34 == *(v3 + 5090))
        {
          goto LABEL_6;
        }

        continue;
      case 7:
        goto LABEL_16;
      case 8:
        goto LABEL_38;
      case 9:
        goto LABEL_15;
      case 10:
        goto LABEL_19;
      case 11:
        bspop_boa(v3);
        v35 = v3;
        v36 = &v73;
        goto LABEL_37;
      case 12:
        goto LABEL_22;
      case 13:
        bspop_boa(v3);
        starttest(v3, 15);
        if (HIWORD(v73) != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      case 14:
        goto LABEL_25;
      case 15:
LABEL_35:
        v37 = OUTLINED_FUNCTION_15_13();
        lpta_rpta_loadp(v37, v38, v72);
        v39 = OUTLINED_FUNCTION_1_16();
        inserted = insert_2pt_s(v39, v40, v41, &_MergedGlobals_11, v42);
        v12 = v16;
        if (inserted)
        {
          continue;
        }

        v36 = (v3 + 2916);
        v35 = v3;
LABEL_37:
        move_i(v35, v36, 1);
        goto LABEL_38;
      case 16:
        goto LABEL_23;
      case 17:
        bspop_boa(v3);
        goto LABEL_56;
      case 18:
LABEL_13:
        bspush_ca(v3);
        v19 = OUTLINED_FUNCTION_15_13();
        v21 = lpta_loadp_setscan_r(v19, v20, 1);
        v12 = v16;
        if (v21)
        {
          continue;
        }

        v24 = advance_tok(v3, v16, v22, v23);
        v12 = v16;
        if (v24)
        {
          continue;
        }

LABEL_15:
        savescptr(v3, 9, v72);
LABEL_16:
        v25 = OUTLINED_FUNCTION_15_13();
        if (!lpta_loadp_setscan_r(v25, v26, 1))
        {
          OUTLINED_FUNCTION_1_16();
          if (!test_string_s())
          {
            starttest_l(v3, 10);
            if (!lpta_loadp_setscan_r(v3, v72, 1))
            {
              v58 = OUTLINED_FUNCTION_8_15();
              v12 = v16;
              if (!v58)
              {
                v61 = advance_tok(v3, v16, v59, v60);
                v12 = v16;
                if (!v61)
                {
                  v62 = OUTLINED_FUNCTION_8_15();
                  v12 = v16;
                  if (!v62)
                  {
                    v65 = advance_tok(v3, v16, v63, v64);
                    v12 = v16;
                    if (!v65)
                    {
                      v66 = OUTLINED_FUNCTION_8_15();
                      v12 = v16;
                      if (!v66)
                      {
                        v69 = advance_tok(v3, v16, v67, v68);
                        v12 = v16;
                        if (!v69)
                        {
                          goto LABEL_24;
                        }
                      }
                    }
                  }
                }
              }

              continue;
            }
          }
        }

LABEL_19:
        v27 = OUTLINED_FUNCTION_15_13();
        if (!lpta_loadp_setscan_r(v27, v28, 1))
        {
          OUTLINED_FUNCTION_1_16();
          if (!test_string_s())
          {
            starttest(v3, 12);
            if (!lpta_loadp_setscan_r(v3, v72, 1))
            {
              v45 = OUTLINED_FUNCTION_8_15();
              v12 = v16;
              if (!v45)
              {
                v48 = advance_tok(v3, v16, v46, v47);
                v12 = v16;
                if (!v48)
                {
                  v49 = OUTLINED_FUNCTION_8_15();
                  v12 = v16;
                  if (!v49)
                  {
                    v52 = advance_tok(v3, v16, v50, v51);
                    v12 = v16;
                    if (!v52)
                    {
                      v53 = OUTLINED_FUNCTION_8_15();
                      v12 = v16;
                      if (!v53)
                      {
                        v56 = advance_tok(v3, v16, v54, v55);
                        v12 = v16;
                        if (!v56)
                        {
                          bspush_ca_scan_boa();
                          bspush_ca_scan(v3, 14);
                          OUTLINED_FUNCTION_1_16();
                          v57 = test_string_s();
                          v12 = v16;
                          if (!v57)
                          {
                            goto LABEL_25;
                          }
                        }
                      }
                    }
                  }
                }
              }

              continue;
            }
          }
        }

LABEL_22:
        starttest(v3, 16);
        v29 = OUTLINED_FUNCTION_15_13();
        if (!lpta_loadp_setscan_r(v29, v30, 1))
        {
LABEL_24:
          bspush_ca_scan_boa();
LABEL_25:
          v31 = OUTLINED_FUNCTION_8_15();
          v12 = v16;
          if (!v31)
          {
            if (advance_tok(v3, v16, v32, v33))
            {
              v12 = v16;
            }

            else
            {
              v12 = 1;
            }
          }

          continue;
        }

LABEL_23:
        c_assvar(v3, (v3 + 2896));
        ++*(v3 + 2898);
LABEL_38:
        v44 = forall_adv_over_r(v3, 6, 7, 18, 1, &v74);
        v12 = v16;
        if (v44)
        {
          continue;
        }

LABEL_56:
        v70 = *(v3 + 2898);
        *(v3 + 2902) = v70;
        if (v70 == 1 && !lpta_loadp_setscan_l(v3, &v74, 1))
        {
          OUTLINED_FUNCTION_1_16();
          if (!test_string_s())
          {
            *(v3 + 2910) = *(v3 + 2286);
          }
        }

LABEL_60:
        *(v4 + 8) = v75;
        vretproc(v3);
LABEL_4:
        OUTLINED_FUNCTION_38_3();
        return;
      case 19:
        goto LABEL_60;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t get_number_info(uint64_t a1)
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v53, v59, v65, v71, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191[0], v191[1], v191[2], v191[3]);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v54, v60, v66, v72, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v191[0], v191[1], v191[2], v191[3], v191[4], v191[5], v191[6], v191[7]);
  v19 = setjmp(v2);
  if (v19 || (v27 = OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v55, v61, v67, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v191[0], v191[1], v191[2], v191[3], v191[4], SHIDWORD(v191[4]), v191[5], SWORD2(v191[5]), SHIWORD(v191[5]), v191[6], SWORD2(v191[6]), SBYTE6(v191[6]), SHIBYTE(v191[6]), v191[7], v191[8]), v27))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_27_7(v27, v28, v29, v30, v31, v32, v33, v34, v56, v62, v68, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v191[0], v191[1], v191[2]);
    OUTLINED_FUNCTION_14_13(v36, v37, v38, v39, v40, v41, v42, v43, v57, v63, v69, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v191[0]);
    fence_17(v1);
    OUTLINED_FUNCTION_33_4();
    if (v52)
    {
      identify_ordinal(v1, v191, v46, v47);
    }

    OUTLINED_FUNCTION_25_9(v44, v45, v46, v47, v48, v49, v50, v51, v58, v64, v70, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v191[0], v191[1]);
    return 0;
  }
}

uint64_t convert_numbers(uint64_t a1)
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v62, v68, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200, v206, v211, v215);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v63, v69, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v207, v212, v216, v218, v220, v222, v224);
  v19 = setjmp(v2);
  if (v19 || (v27 = OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v64, v70, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v208, v213, v217, v219, SHIDWORD(v219), v221, SWORD2(v221), SHIWORD(v221), v223, SWORD2(v223), SBYTE6(v223), SHIBYTE(v223), v225, v226), v27))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_27_7(v27, v28, v29, v30, v31, v32, v33, v34, v65, v71, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v209, v214);
    OUTLINED_FUNCTION_14_13(v36, v37, v38, v39, v40, v41, v42, v43, v66, v72, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204);
    fence_17(v1);
    v44 = *(v1 + 2898);
    if (v44 == 1)
    {
      OUTLINED_FUNCTION_4_15();
      v45 = convert_single_digit();
    }

    else
    {
      while (2)
      {
        if (v44 == 2)
        {
          OUTLINED_FUNCTION_4_15();
          v45 = convert_double();
        }

        else
        {
LABEL_8:
          if (v44 == 3)
          {
            OUTLINED_FUNCTION_4_15();
            v45 = convert_hundreds();
          }

          else
          {
LABEL_9:
            v53 = OUTLINED_FUNCTION_18_11();
            starttest(v53, v54);
            v55 = OUTLINED_FUNCTION_15_13();
            bspush_ca(v55);
            if (*(v1 + 2898) >= 16)
            {
LABEL_10:
              v56 = *(v1 + 104);
              if (v56)
              {
                v45 = OUTLINED_FUNCTION_31_5(v56);
              }

              else
              {
                v45 = OUTLINED_FUNCTION_39_2();
              }

              switch(v45)
              {
                case 1:
                  v44 = *(v1 + 2898);
                  continue;
                case 2:
                case 3:
                case 5:
                case 7:
                case 11:
                  goto LABEL_6;
                case 4:
                  v44 = *(v1 + 2898);
                  goto LABEL_8;
                case 6:
                  goto LABEL_9;
                case 8:
                  v61 = OUTLINED_FUNCTION_4_15();
                  v45 = spell_out_large_num(v61);
                  goto LABEL_6;
                case 9:
                  OUTLINED_FUNCTION_33_4();
                  if (v57 && *(v1 + 2898) <= 18)
                  {
                    break;
                  }

                  goto LABEL_10;
                case 10:
                  break;
                default:
                  goto LABEL_3;
              }
            }

            v58 = OUTLINED_FUNCTION_4_15();
            convert_large_numbers(v58, v59, v60);
          }
        }

        break;
      }
    }

LABEL_6:
    OUTLINED_FUNCTION_25_9(v45, v46, v47, v48, v49, v50, v51, v52, v67, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v210);
    return 0;
  }
}

uint64_t reset_enum_ptr(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v46 = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(&v22, v2);
  OUTLINED_FUNCTION_19_10();
  bzero(v50, v3);
  if (setjmp(v50) || (v4 = ventproc(a1, &v22, v49, v48, v47, v50), v4))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_14_13(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    fence_17(a1);
    OUTLINED_FUNCTION_33_4();
    if (v21)
    {
      if (*(a1 + 2846) == *(a1 + 2822))
      {
        v46 = *(a1 + 6000);
      }
    }

    OUTLINED_FUNCTION_25_9(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    return 0;
  }
}

void identify_ordinal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_37_3();
  v5 = v4;
  v39 = *MEMORY[0x277D85DE8];
  v34[0] = 0;
  v34[1] = 0;
  v33[0] = 0;
  v33[1] = 0;
  v31 = 0;
  v32 = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(v30, v6);
  OUTLINED_FUNCTION_19_10();
  bzero(v38, v7);
  if (setjmp(v38))
  {
    goto LABEL_4;
  }

  if (ventproc(v5, v30, v37, v36, v35, v38))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_28_6(v5, v34);
  push_ptr_init(v5, v33);
  push_ptr_init(v5, &v31);
  fence_17(v5);
  if (*(v5 + 2918) == 1)
  {
    goto LABEL_4;
  }

  LODWORD(v8) = 0;
  while (2)
  {
    starttest(v5, 3);
    v9 = OUTLINED_FUNCTION_15_13();
    if (!lpta_loadp_setscan_r(v9, v10, 1))
    {
      bspush_ca_scan(v5, 4);
      OUTLINED_FUNCTION_1_16();
      v13 = test_string_s();
      v14 = v8;
      if (v13)
      {
        goto LABEL_20;
      }

LABEL_19:
      LODWORD(v8) = v14;
      savescptr(v5, 5, v5 + 5992);
      if (!end_of_word(v5))
      {
        goto LABEL_49;
      }

LABEL_20:
      v15 = v8;
LABEL_21:
      v16 = *(v5 + 104);
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_31_5(v16);
        v8 = v18;
      }

      else
      {
        v17 = vback(v5, v15);
        v8 = 0;
      }

      switch(v17)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_49;
        case 3:
          goto LABEL_7;
        case 4:
          OUTLINED_FUNCTION_1_16();
          v19 = test_string_s();
          v15 = v8;
          if (v19)
          {
            goto LABEL_21;
          }

          goto LABEL_46;
        case 5:
          goto LABEL_47;
        case 6:
LABEL_46:
          savescptr(v5, 6, v33);
LABEL_47:
          v14 = v8;
          goto LABEL_19;
        case 8:
          goto LABEL_9;
        case 9:
          goto LABEL_10;
        case 10:
          OUTLINED_FUNCTION_1_16();
          goto LABEL_38;
        case 12:
          goto LABEL_48;
        case 13:
          goto LABEL_11;
        case 14:
          bspush_nboa(v5);
          bspush_ca_scan(v5, 16);
          OUTLINED_FUNCTION_1_16();
          v25 = test_string_s();
          v15 = v8;
          if (v25)
          {
            goto LABEL_21;
          }

          bspush_ca_scan(v5, 17);
          OUTLINED_FUNCTION_12_15();
          goto LABEL_36;
        case 15:
          goto LABEL_44;
        case 16:
        case 19:
          OUTLINED_FUNCTION_12_15();
          goto LABEL_38;
        case 17:
          OUTLINED_FUNCTION_12_15();
LABEL_36:
          v26 = test_string_s();
          v15 = v8;
          if (!v26)
          {
            goto LABEL_37;
          }

          goto LABEL_21;
        case 18:
LABEL_37:
          bspush_ca_scan(v5, 19);
          OUTLINED_FUNCTION_1_16();
LABEL_38:
          v27 = test_string_s();
          v15 = v8;
          if (!v27)
          {
            goto LABEL_4;
          }

          goto LABEL_21;
        case 22:
          goto LABEL_13;
        case 23:
          bspop_boa(v5);
          goto LABEL_4;
        case 24:
          bspush_nboa(v5);
          v20 = OUTLINED_FUNCTION_12_15();
          v22 = testFldeq(v20, v21, 3, 1);
          v15 = v8;
          if (!v22)
          {
            if (advance_tok(v5, v8, v23, v24))
            {
              v15 = v8;
            }

            else
            {
              v15 = 1;
            }
          }

          goto LABEL_21;
        case 25:
          goto LABEL_41;
        default:
          goto LABEL_4;
      }
    }

    break;
  }

LABEL_7:
  v11 = OUTLINED_FUNCTION_15_13();
  if (lpta_loadp_setscan_r(v11, v12, 1))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_1_16();
  if (test_string_s())
  {
    goto LABEL_4;
  }

LABEL_9:
  savescptr(v5, 8, &v31);
  starttest(v5, 9);
  if (!OUTLINED_FUNCTION_29_6())
  {
    bspush_ca_scan(v5, 10);
    OUTLINED_FUNCTION_1_16();
    if (!test_string_s())
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

LABEL_10:
  starttest(v5, 13);
  if (!OUTLINED_FUNCTION_29_6())
  {
    bspush_boa(v5);
LABEL_44:
    while (1)
    {
      OUTLINED_FUNCTION_1_16();
      if (test_string_s())
      {
        break;
      }

      v28 = OUTLINED_FUNCTION_18_11();
      bspush_ca_scan(v28, v29);
    }

    goto LABEL_20;
  }

LABEL_11:
  if (OUTLINED_FUNCTION_29_6() || (OUTLINED_FUNCTION_1_16(), test_string_s()))
  {
LABEL_13:
    starttest(v5, 12);
    if (!OUTLINED_FUNCTION_29_6())
    {
      bspush_ca_scan_boa();
      bspush_boa(v5);
LABEL_41:
      while (1)
      {
        OUTLINED_FUNCTION_1_16();
        if (test_string_s())
        {
          break;
        }

        bspush_ca_scan(v5, 24);
      }

      goto LABEL_20;
    }
  }

LABEL_48:
  *(v5 + 6000) = v32;
LABEL_49:
  *(v5 + 2822) = *(v5 + 2846);
  npush_s(v5);
  *(v5 + 3602) = 10;
  npop(v5, (v5 + 3600));
  *(v5 + 3010) = *(v5 + 3014);
  lpta_loadpn(v5, v33);
  rpta_loadpn(v5, v5 + 3344);
  if (!compare_ptas(v5) && !testneq(v5))
  {
    *(v5 + 3010) = *(v5 + 3018);
  }

LABEL_4:
  vretproc(v5);
  OUTLINED_FUNCTION_38_3();
}

void convert_large_numbers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_3();
  v40 = v3;
  v5 = v4;
  v54 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v42[0] = 0;
  v42[1] = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(v41, v6);
  OUTLINED_FUNCTION_19_10();
  bzero(v53, v7);
  if (setjmp(v53) || ventproc(v5, v41, v52, v51, v50, v53))
  {
LABEL_3:
    vretproc(v5);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_28_6(v8, v9);
    get_parm(v5, &v46, v40, -6);
    LOWORD(v44) = -3;
    v43 = 65532;
    v10 = OUTLINED_FUNCTION_15_13();
    push_ptr_init(v10, v11);
    fence_17(v5);
    v45 = 0;
    startloop(v5, 1);
    while (2)
    {
      while (1)
      {
        bspush_ca(v5);
        if (*(v5 + 2898) < 4)
        {
          break;
        }

LABEL_11:
        starttest(v5, 3);
        move_i(v5, &v43, 3);
        if (modulo(v5, (v5 + 2896), &v43, &v44))
        {
          break;
        }

LABEL_12:
        v14 = v45;
        if (v45)
        {
LABEL_13:
          if (v14 == 2)
          {
            v15 = OUTLINED_FUNCTION_18_11();
            if (!lpta_loadp_setscan_r(v15, v16, 1) && !advance_tok(v5, v17, v18, v19) && !advance_tok(v5, v20, v21, v22))
            {
LABEL_17:
              savescptr(v5, 11, v42);
            }

LABEL_18:
            OUTLINED_FUNCTION_18_11();
            convert_double();
          }

          else
          {
LABEL_19:
            v23 = OUTLINED_FUNCTION_18_11();
            if (!lpta_loadp_setscan_r(v23, v24, 1) && !advance_tok(v5, v25, v26, v27))
            {
LABEL_21:
              savescptr(v5, 14, v42);
            }

LABEL_22:
            v28 = OUTLINED_FUNCTION_18_11();
            insert_single_digit(v28);
          }
        }

        else
        {
          v29 = OUTLINED_FUNCTION_18_11();
          if (!lpta_loadp_setscan_r(v29, v30, 1) && !advance_tok(v5, v31, v32, v33) && !advance_tok(v5, v34, v35, v36) && !advance_tok(v5, v37, v38, v39))
          {
LABEL_27:
            savescptr(v5, 6, v42);
          }

LABEL_28:
          OUTLINED_FUNCTION_18_11();
          convert_hundreds();
LABEL_29:
          v45 = 3;
        }

LABEL_30:
        OUTLINED_FUNCTION_18_11();
        insert_lang_large_number();
LABEL_31:
        *(v5 + 2898) -= v45;
        while_iterate(v5, 1, 2);
      }

      v12 = *(v5 + 104);
      if (v12)
      {
        *(v5 + 104) = 0;
        v13 = v12;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_39_2();
      }

      switch(v13)
      {
        case 1:
          convert_hundreds();
          break;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_12;
        case 4:
          v14 = v45;
          goto LABEL_13;
        case 5:
          goto LABEL_28;
        case 6:
          goto LABEL_27;
        case 7:
          goto LABEL_29;
        case 8:
        case 12:
          goto LABEL_30;
        case 9:
          goto LABEL_19;
        case 10:
          goto LABEL_18;
        case 11:
          goto LABEL_17;
        case 13:
          goto LABEL_22;
        case 14:
          goto LABEL_21;
        case 15:
          goto LABEL_31;
        case 16:
          continue;
        case 17:
          goto LABEL_34;
        default:
          goto LABEL_3;
      }

      break;
    }

LABEL_34:
    *(v40 + 8) = v47;
    vretproc(v5);
  }

  OUTLINED_FUNCTION_38_3();
}

uint64_t spell_out_large_num(uint64_t a1)
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v62, v68, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200[0], v200[1], v200[2], v200[3]);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v63, v69, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v200[0], v200[1], v200[2], v200[3], v200[4], v200[5], v200[6], v200[7]);
  v19 = setjmp(v2);
  if (v19 || (v27 = OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v64, v70, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v200[0], v200[1], v200[2], v200[3], v200[4], SHIDWORD(v200[4]), v200[5], SWORD2(v200[5]), SHIWORD(v200[5]), v200[6], SWORD2(v200[6]), SBYTE6(v200[6]), SHIBYTE(v200[6]), v200[7], v200[8]), v27))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_27_7(v27, v28, v29, v30, v31, v32, v33, v34, v65, v71, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v200[0], v200[1], v200[2]);
    OUTLINED_FUNCTION_14_13(v36, v37, v38, v39, v40, v41, v42, v43, v66, v72, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v200[0]);
    fence_17(v1);
    OUTLINED_FUNCTION_33_4();
    if (!v52)
    {
      v53 = OUTLINED_FUNCTION_35_3();
      starttest(v53, v54);
      if (!lpta_loadp_setscan_r(v1, v200, 1))
      {
        do
        {
LABEL_8:
          bspush_ca_scan(v1, 3);
          v56 = OUTLINED_FUNCTION_12_15();
        }

        while (!testFldeq(v56, v57, 3, 1) && !advance_tok(v1, v58, v59, v60));
        v61 = *(v1 + 104);
        if (v61)
        {
          v44 = OUTLINED_FUNCTION_31_5(v61);
        }

        else
        {
          v44 = OUTLINED_FUNCTION_39_2();
        }

        switch(v44)
        {
          case 1:
          case 5:
            goto LABEL_7;
          case 2:
            break;
          case 3:
            savescptr(v1, 3, v200);
            break;
          case 4:
            goto LABEL_8;
          default:
            goto LABEL_3;
        }
      }

      v55 = OUTLINED_FUNCTION_4_15();
      v44 = spell_out_alphanum(v55);
    }

LABEL_7:
    OUTLINED_FUNCTION_25_9(v44, v45, v46, v47, v48, v49, v50, v51, v67, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v200[0], v200[1]);
    return 0;
  }
}

uint64_t insert_single_digit(uint64_t a1)
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_3_16(v3, v4, v5, v6, v7, v8, v9, v10, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112);
  OUTLINED_FUNCTION_10_15(v11, v12, v13, v14, v15, v16, v17, v18, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v115, v117, v119, v121);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_2_16(v19, v20, v21, v22, v23, v24, v25, v26, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v116, SHIDWORD(v116), v118, SWORD2(v118), SHIWORD(v118), v120, SWORD2(v120), SBYTE6(v120), SHIBYTE(v120), v122, v123))
  {
    v27 = 94;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_5_15();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_28_6(v32, v33);
    fence_17(v1);
    OUTLINED_FUNCTION_5_15();
    char_name();
    v27 = 0;
  }

  vretproc(v1);
  return v27;
}

uint64_t convert_1_or_2_digits(uint64_t a1)
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_3_16(v4, v5, v6, v7, v8, v9, v10, v11, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v151);
  OUTLINED_FUNCTION_10_15(v12, v13, v14, v15, v16, v17, v18, v19, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152, v154, v156, v158, v160);
  v20 = setjmp(v3);
  if (v20 || OUTLINED_FUNCTION_2_16(v20, v21, v22, v23, v24, v25, v26, v27, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v155, SHIDWORD(v155), v157, SWORD2(v157), SHIWORD(v157), v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v162))
  {
    v28 = 94;
  }

  else
  {
    v30 = OUTLINED_FUNCTION_5_15();
    get_parm(v30, v31, v32, -6);
    OUTLINED_FUNCTION_14_13(v33, v34, v35, v36, v37, v38, v39, v40, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143);
    fence_17(v1);
    v41 = OUTLINED_FUNCTION_15_13();
    if (lpta_loadp_setscan_r(v41, v42, 1) || advance_tok(v1, v43, v44, v45) || (*(v1 + 136) = 1, *(v1 + 112) = v147, *(v1 + 128) = 0, test_ptr(v1, v46, v47)))
    {
      OUTLINED_FUNCTION_4_15();
      convert_double();
    }

    else
    {
      OUTLINED_FUNCTION_4_15();
      char_name();
    }

    *(v2 + 8) = v147;
    v28 = 0;
  }

  vretproc(v1);
  return v28;
}

void convert_roman_nums(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_3();
  v4 = v3;
  v6 = v5;
  v288 = *MEMORY[0x277D85DE8];
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  OUTLINED_FUNCTION_20_9();
  bzero(v275, v7);
  OUTLINED_FUNCTION_19_10();
  bzero(v287, v8);
  v274 = v6;
  if (!setjmp(v287) && !ventproc(v6, v275, v286, v285, v284, v287))
  {
    get_parm(v6, &v282, v4, -6);
    OUTLINED_FUNCTION_28_6(v6, &v280);
    push_ptr_init(v6, &v278);
    v277 = 0xFFFC0000FFFCLL;
    v276 = 65532;
    fence_17(v6);
    v279 = *(v6 + 3352);
    HIWORD(v277) = 0;
    starttest(v6, 1);
    if (!lpta_loadp_setscan_r(v6, &v282, 1))
    {
      bspush_boa(v6);
      v9 = 0;
      HIDWORD(v273) = 0;
      v10 = 2;
      v271 = 9;
      v272 = 2;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = v13;
        bspush_ca_scan(v6, v10);
        OUTLINED_FUNCTION_9_15();
        v15 = test_string_s();
        LODWORD(v267) = v9;
        v265 = __PAIR64__(v11, v12);
        HIDWORD(v263) = v14;
        v22 = v9;
        v23 = v14;
        if (v15)
        {
          break;
        }

LABEL_136:
        v133 = HIDWORD(v263);
        v12 = v265;
        v11 = HIDWORD(v265);
        v9 = v267;
        v134 = OUTLINED_FUNCTION_36_3(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
        bspush_ca_scan(v134, v271);
        v13 = v133;
LABEL_137:
        v10 = v272;
      }

      while (1)
      {
        v9 = v22;
        v24 = *(v274 + 104);
        if (v24)
        {
          *(v274 + 104) = 0;
          v25 = v24;
        }

        else
        {
          v26 = v23;
          v25 = vback(v274, SHIDWORD(v273));
          v23 = v26;
        }

        v27 = v25 - 2;
        v267 = __PAIR64__(v11, v9);
        v265 = __PAIR64__(v11, v12);
        v263 = __PAIR64__(v23, v9);
        HIDWORD(v259) = v9;
        HIDWORD(v261) = v9;
        HIDWORD(v257) = v9;
        LODWORD(v259) = v9;
        LODWORD(v257) = v9;
        HIDWORD(v255) = v9;
        LODWORD(v253) = v9;
        LODWORD(v251) = v9;
        LODWORD(v255) = v9;
        HIDWORD(v251) = v9;
        HIDWORD(v253) = v9;
        LODWORD(v247) = v11;
        HIDWORD(v247) = v11;
        LODWORD(v249) = v9;
        HIDWORD(v249) = v9;
        HIDWORD(v243) = v11;
        v245 = __PAIR64__(v11, v9);
        HIDWORD(v241) = v9;
        LODWORD(v243) = v11;
        HIDWORD(v239) = v9;
        LODWORD(v241) = v9;
        LODWORD(v261) = v9;
        v235 = v11;
        HIDWORD(v237) = v9;
        LODWORD(v239) = 94;
        v233 = __PAIR64__(v9, v11);
        v229 = __PAIR64__(v9, v11);
        LODWORD(v231) = v9;
        HIDWORD(v231) = v9;
        HIDWORD(v225) = v11;
        v227 = __PAIR64__(v9, v11);
        LODWORD(v225) = v11;
        v219 = __PAIR64__(v11, v12);
        v221 = __PAIR64__(v11, v9);
        v217 = __PAIR64__(v11, v12);
        v223 = __PAIR64__(v11, v9);
        HIDWORD(v213) = v12;
        v215 = __PAIR64__(v9, v11);
        v211 = __PAIR64__(v12, v9);
        LODWORD(v209) = v9;
        LODWORD(v205) = v11;
        HIDWORD(v205) = v11;
        LODWORD(v237) = v9;
        LODWORD(v213) = v12;
        HIDWORD(v209) = v9;
        v203 = __PAIR64__(v12, v9);
        v207 = __PAIR64__(v11, v9);
        v201 = __PAIR64__(v11, v9);
        v17 = v12;
        v199 = __PAIR64__(v11, v9);
        v197 = __PAIR64__(v9, v12);
        v28 = v11;
        v21 = v12;
        v193 = __PAIR64__(v11, v12);
        v195 = __PAIR64__(v11, v9);
        v189 = __PAIR64__(v9, v12);
        v15 = v23;
        v191 = __PAIR64__(v11, v9);
        HIDWORD(v186) = v12;
        v187 = __PAIR64__(v12, v11);
        v16 = v11;
        v29 = v12;
        v30 = v11;
        v20 = v12;
        v19 = v9;
        v31 = v11;
        v32 = v12;
        v33 = v11;
        v18 = v12;
        v6 = v11;
        v34 = v12;
        v35 = v23;
        v36 = v9;
        v269 = __PAIR64__(v23, v12);
        switch(v27)
        {
          case 0:
            v37 = OUTLINED_FUNCTION_24_9(v23, 4, v12, v12, v23, v9, v12, v12, v186, __SPAIR64__(v12, v11), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), __SPAIR64__(v12, v9), v205, __SPAIR64__(v11, v9), v209, __SPAIR64__(v12, v9), v213, __SPAIR64__(v9, v11), __SPAIR64__(v11, v12), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), v225, __SPAIR64__(v9, v11), __SPAIR64__(v9, v11), v231, __SPAIR64__(v9, v11), v11, v237, v239, v241, v243, __SPAIR64__(v11, v9), v247, v249, v251, v253, v255, v257, v259, v261, __SPAIR64__(v23, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v23, v12), v271, v272, v273, v274);
            bspush_ca_scan(v37, v38);
            goto LABEL_26;
          case 1:
            goto LABEL_136;
          case 2:
            v61 = OUTLINED_FUNCTION_24_9(v23, 5, v12, v12, v23, v9, v12, v12, v186, __SPAIR64__(v12, v11), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), __SPAIR64__(v12, v9), v205, __SPAIR64__(v11, v9), v209, __SPAIR64__(v12, v9), v213, __SPAIR64__(v9, v11), __SPAIR64__(v11, v12), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), v225, __SPAIR64__(v9, v11), __SPAIR64__(v9, v11), v231, __SPAIR64__(v9, v11), v11, v237, v239, v241, v243, __SPAIR64__(v11, v9), v247, v249, v251, v253, v255, v257, v259, v261, __SPAIR64__(v23, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v23, v12), v271, v272, v273, v274);
            bspush_ca_scan(v61, v62);
            goto LABEL_26;
          case 3:
            v63 = OUTLINED_FUNCTION_24_9(v23, 6, v12, v12, v23, v9, v12, v12, v186, __SPAIR64__(v12, v11), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), __SPAIR64__(v12, v9), v205, __SPAIR64__(v11, v9), v209, __SPAIR64__(v12, v9), v213, __SPAIR64__(v9, v11), __SPAIR64__(v11, v12), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), v225, __SPAIR64__(v9, v11), __SPAIR64__(v9, v11), v231, __SPAIR64__(v9, v11), v11, v237, v239, v241, v243, __SPAIR64__(v11, v9), v247, v249, v251, v253, v255, v257, v259, v261, __SPAIR64__(v23, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v23, v12), v271, v272, v273, v274);
            bspush_ca_scan(v63, v64);
            goto LABEL_26;
          case 4:
            v57 = OUTLINED_FUNCTION_24_9(v23, 7, v12, v12, v23, v9, v12, v12, v186, __SPAIR64__(v12, v11), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), __SPAIR64__(v12, v9), v205, __SPAIR64__(v11, v9), v209, __SPAIR64__(v12, v9), v213, __SPAIR64__(v9, v11), __SPAIR64__(v11, v12), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), v225, __SPAIR64__(v9, v11), __SPAIR64__(v9, v11), v231, __SPAIR64__(v9, v11), v11, v237, v239, v241, v243, __SPAIR64__(v11, v9), v247, v249, v251, v253, v255, v257, v259, v261, __SPAIR64__(v23, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v23, v12), v271, v272, v273, v274);
            bspush_ca_scan(v57, v58);
            goto LABEL_26;
          case 5:
            v59 = OUTLINED_FUNCTION_24_9(v23, 8, v12, v12, v23, v9, v12, v12, v186, __SPAIR64__(v12, v11), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), __SPAIR64__(v12, v9), v205, __SPAIR64__(v11, v9), v209, __SPAIR64__(v12, v9), v213, __SPAIR64__(v9, v11), __SPAIR64__(v11, v12), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), v225, __SPAIR64__(v9, v11), __SPAIR64__(v9, v11), v231, __SPAIR64__(v9, v11), v11, v237, v239, v241, v243, __SPAIR64__(v11, v9), v247, v249, v251, v253, v255, v257, v259, v261, __SPAIR64__(v23, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v23, v12), v271, v272, v273, v274);
            bspush_ca_scan(v59, v60);
            goto LABEL_26;
          case 6:
LABEL_26:
            OUTLINED_FUNCTION_9_15();
            v15 = test_string_s();
            LODWORD(v267) = v9;
            v11 = HIDWORD(v267);
            v12 = v269;
            v265 = __PAIR64__(HIDWORD(v267), v269);
            v23 = HIDWORD(v269);
            HIDWORD(v263) = HIDWORD(v269);
            v22 = v9;
            if (!v15)
            {
              goto LABEL_136;
            }

            continue;
          case 7:
            v39 = OUTLINED_FUNCTION_24_9(v23, v11, v12, v12, v23, v9, v12, v12, v186, __SPAIR64__(v12, v11), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v9, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), __SPAIR64__(v12, v9), v205, __SPAIR64__(v11, v9), v209, __SPAIR64__(v12, v9), v213, __SPAIR64__(v9, v11), __SPAIR64__(v11, v12), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v11, v9), v225, __SPAIR64__(v9, v11), __SPAIR64__(v9, v11), v231, __SPAIR64__(v9, v11), v11, v237, v239, v241, v243, __SPAIR64__(v11, v9), v247, v249, v251, v253, v255, v257, v259, v261, __SPAIR64__(v23, v9), __SPAIR64__(v11, v12), __SPAIR64__(v11, v9), __SPAIR64__(v23, v12), v271, v272, v273, v274);
            bspush_nboa(v39);
            *(v35 + 136) = 1;
            *(v35 + 112) = v281;
            *(v35 + 128) = 0;
            test_ptr(v35, v40, v41);
            OUTLINED_FUNCTION_7_15();
            if (v42)
            {
              continue;
            }

            v279 = v283;
            v48 = OUTLINED_FUNCTION_24_9(v42, &v278, v43, v44, v23, v45, v46, v47, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v271, v272, v273, v274);
            v15 = lpta_loadp_setscan_r(v48, v49, 1);
            if (v15 || (OUTLINED_FUNCTION_1_16(), v15 = test_string_s(), v15))
            {
              LODWORD(v263) = v9;
            }

            else
            {
LABEL_16:
              OUTLINED_FUNCTION_13_15(12, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
              LODWORD(v263) = v9 + 1;
            }

LABEL_17:
            v50 = v263;
            v15 = OUTLINED_FUNCTION_16_13(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
            if (v15)
            {
              HIDWORD(v261) = v50;
            }

            else
            {
              OUTLINED_FUNCTION_9_15();
              v15 = test_string_s();
              HIDWORD(v259) = v50;
              HIDWORD(v261) = v50;
              if (!v15)
              {
LABEL_34:
                v65 = HIDWORD(v259);
                OUTLINED_FUNCTION_13_15(14, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                HIDWORD(v261) = v65 + 1;
              }
            }

LABEL_35:
            v66 = HIDWORD(v261);
            v15 = OUTLINED_FUNCTION_16_13(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
            if (v15)
            {
              LODWORD(v259) = v66;
            }

            else
            {
              OUTLINED_FUNCTION_9_15();
              v15 = test_string_s();
              HIDWORD(v257) = v66;
              LODWORD(v259) = v66;
              if (!v15)
              {
LABEL_38:
                v67 = HIDWORD(v257);
                OUTLINED_FUNCTION_13_15(16, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                LODWORD(v259) = v67 + 1;
              }
            }

LABEL_39:
            v68 = v259;
            v15 = OUTLINED_FUNCTION_16_13(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
            if (v15)
            {
              HIDWORD(v255) = v68;
            }

            else
            {
              v15 = test_string_s();
              LODWORD(v257) = v68;
              HIDWORD(v255) = v68;
              if (!v15)
              {
LABEL_58:
                v78 = v257;
                OUTLINED_FUNCTION_13_15(18, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                v71 = HIDWORD(v267) + 9;
                goto LABEL_60;
              }
            }

LABEL_42:
            v69 = HIDWORD(v255);
            if (OUTLINED_FUNCTION_16_13(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274))
            {
              LODWORD(v251) = v69;
            }

            else
            {
              LODWORD(v253) = v69;
              LODWORD(v251) = v69;
              if (!test_string_s())
              {
LABEL_57:
                v78 = v253;
                OUTLINED_FUNCTION_13_15(21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                v71 = HIDWORD(v267) + 4;
                goto LABEL_60;
              }
            }

LABEL_45:
            starttest(v274, 22);
            v15 = lpta_loadp_setscan_r(v274, &v278, 1);
            if (v15)
            {
              LODWORD(v241) = v251;
LABEL_47:
              v70 = v241;
              v15 = OUTLINED_FUNCTION_16_13(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
              if (v15 || (OUTLINED_FUNCTION_9_15(), v15 = test_string_s(), HIDWORD(v239) = v70, v15))
              {
                LODWORD(v261) = v70;
                v71 = HIDWORD(v267);
LABEL_67:
                HIDWORD(v247) = v71;
                goto LABEL_68;
              }

LABEL_59:
              v78 = HIDWORD(v239);
              OUTLINED_FUNCTION_13_15(30, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
              v71 = HIDWORD(v267) + 5;
LABEL_60:
              LODWORD(v261) = v78;
              goto LABEL_67;
            }

            bspush_ca_scan(v274, 23);
            OUTLINED_FUNCTION_9_15();
            test_string_s();
            LODWORD(v255) = v251;
            OUTLINED_FUNCTION_7_15();
            if (!v72)
            {
LABEL_51:
              OUTLINED_FUNCTION_9_15();
              test_string_s();
              HIDWORD(v251) = v255;
              OUTLINED_FUNCTION_7_15();
              if (!v15)
              {
LABEL_52:
                v73 = HIDWORD(v251);
                v74 = OUTLINED_FUNCTION_36_3(v15, 24, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                savescptr(v74, v75, &v278);
                v15 = lpta_loadp_setscan_l(v11, &v278, 1);
                if (v15 || (v15 = advance_tok(v11, v16, v17, v18), v15))
                {
                  HIDWORD(v253) = v73;
                  LODWORD(v247) = HIDWORD(v267) + 1;
                }

                else
                {
                  OUTLINED_FUNCTION_9_15();
                  v15 = test_string_s();
                  v132 = HIDWORD(v267) + 6;
                  if (v15)
                  {
                    v132 = HIDWORD(v267) + 1;
                  }

                  HIDWORD(v253) = v73;
                  LODWORD(v247) = v132;
                }

LABEL_55:
                v76 = v247;
                v77 = HIDWORD(v253);
                v15 = OUTLINED_FUNCTION_11_15(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                if (v15)
                {
                  HIDWORD(v249) = v77;
                  HIDWORD(v243) = v76;
                }

                else
                {
                  OUTLINED_FUNCTION_9_15();
                  v15 = test_string_s();
                  LODWORD(v249) = v77;
                  HIDWORD(v245) = v76;
                  HIDWORD(v249) = v77;
                  HIDWORD(v243) = v76;
                  if (!v15)
                  {
LABEL_62:
                    v79 = HIDWORD(v245);
                    v80 = v249;
                    OUTLINED_FUNCTION_13_15(27, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                    HIDWORD(v249) = v80;
                    HIDWORD(v243) = v79 + 1;
                  }
                }

LABEL_63:
                v81 = HIDWORD(v243);
                v82 = HIDWORD(v249);
                v15 = OUTLINED_FUNCTION_11_15(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                if (v15)
                {
                  LODWORD(v261) = v82;
                  HIDWORD(v247) = v81;
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_9_15();
                v15 = test_string_s();
                LODWORD(v245) = v82;
                LODWORD(v243) = v81;
                LODWORD(v261) = v82;
                HIDWORD(v247) = v81;
                if (!v15)
                {
LABEL_66:
                  v83 = v243;
                  v84 = v245;
                  OUTLINED_FUNCTION_13_15(29, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                  v71 = v83 + 1;
                  LODWORD(v261) = v84;
                  goto LABEL_67;
                }

LABEL_68:
                v85 = HIDWORD(v247);
                v86 = v261;
                v15 = OUTLINED_FUNCTION_11_15(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                if (v15)
                {
                  HIDWORD(v237) = v86;
                  LODWORD(v233) = v85;
                }

                else
                {
                  OUTLINED_FUNCTION_23_9();
                  v15 = test_string_s();
                  HIDWORD(v241) = v86;
                  LODWORD(v235) = v85;
                  HIDWORD(v237) = v86;
                  LODWORD(v233) = v85;
                  if (!v15)
                  {
LABEL_86:
                    v100 = v235;
                    v101 = HIDWORD(v241);
                    OUTLINED_FUNCTION_13_15(32, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                    v91 = v269 + 9;
                    goto LABEL_89;
                  }
                }

LABEL_71:
                v87 = v233;
                v88 = HIDWORD(v237);
                if (OUTLINED_FUNCTION_11_15(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274))
                {
                  HIDWORD(v231) = v88;
                  HIDWORD(v225) = v87;
                }

                else
                {
                  OUTLINED_FUNCTION_23_9();
                  HIDWORD(v233) = v88;
                  LODWORD(v229) = v87;
                  HIDWORD(v231) = v88;
                  HIDWORD(v225) = v87;
                  if (!test_string_s())
                  {
LABEL_87:
                    v100 = v229;
                    v101 = HIDWORD(v233);
                    OUTLINED_FUNCTION_13_15(35, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                    v91 = v269 + 4;
                    goto LABEL_89;
                  }
                }

LABEL_74:
                v11 = HIDWORD(v225);
                starttest(v274, 36);
                v15 = lpta_loadp_setscan_r(v274, &v278, 1);
                if (v15)
                {
                  LODWORD(v211) = HIDWORD(v231);
                  HIDWORD(v207) = HIDWORD(v225);
LABEL_76:
                  v89 = HIDWORD(v207);
                  v90 = v211;
                  v15 = OUTLINED_FUNCTION_11_15(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                  if (v15 || (OUTLINED_FUNCTION_9_15(), v15 = test_string_s(), LODWORD(v209) = v90, LODWORD(v205) = v89, v15))
                  {
                    LODWORD(v237) = v90;
                    HIDWORD(v221) = v89;
                    v91 = v269;
LABEL_90:
                    LODWORD(v213) = v91;
                    goto LABEL_91;
                  }

LABEL_88:
                  v100 = v205;
                  v101 = v209;
                  OUTLINED_FUNCTION_13_15(44, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                  v91 = v269 + 5;
LABEL_89:
                  LODWORD(v237) = v101;
                  HIDWORD(v221) = v100;
                  goto LABEL_90;
                }

                bspush_ca_scan(v274, 37);
                OUTLINED_FUNCTION_9_15();
                v92 = test_string_s();
                LODWORD(v231) = HIDWORD(v231);
                LODWORD(v227) = HIDWORD(v225);
                v22 = HIDWORD(v231);
                v12 = v269;
                v23 = HIDWORD(v269);
                if (!v92)
                {
LABEL_80:
                  v11 = v227;
                  OUTLINED_FUNCTION_9_15();
                  v15 = test_string_s();
                  HIDWORD(v227) = v231;
                  LODWORD(v225) = v227;
                  v22 = v231;
                  v12 = v269;
                  v23 = HIDWORD(v269);
                  if (!v15)
                  {
LABEL_81:
                    v93 = v225;
                    v94 = HIDWORD(v227);
                    v95 = OUTLINED_FUNCTION_36_3(v15, 38, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                    savescptr(v95, v96, &v278);
                    v15 = lpta_loadp_setscan_l(v6, &v278, 1);
                    if (v15 || (v15 = advance_tok(v6, v16, v17, v18), v15))
                    {
                      HIDWORD(v229) = v94;
                      HIDWORD(v223) = v93;
                      LODWORD(v219) = v269 + 1;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_9_15();
                      v15 = test_string_s();
                      v131 = v269 + 6;
                      if (v15)
                      {
                        v131 = v269 + 1;
                      }

                      HIDWORD(v229) = v94;
                      HIDWORD(v223) = v93;
                      LODWORD(v219) = v131;
                    }

LABEL_84:
                    v97 = v219;
                    v98 = HIDWORD(v223);
                    v99 = HIDWORD(v229);
                    v15 = OUTLINED_FUNCTION_21_9(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                    if (v15)
                    {
                      LODWORD(v223) = v99;
                      HIDWORD(v217) = v98;
                      HIDWORD(v213) = v97;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_9_15();
                      v15 = test_string_s();
                      HIDWORD(v219) = v98;
                      LODWORD(v221) = v99;
                      v217 = __PAIR64__(v98, v97);
                      LODWORD(v223) = v99;
                      HIDWORD(v213) = v97;
                      if (!v15)
                      {
LABEL_121:
                        v122 = v217;
                        v123 = HIDWORD(v219);
                        v124 = v221;
                        OUTLINED_FUNCTION_13_15(41, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                        LODWORD(v223) = v124;
                        HIDWORD(v217) = v123;
                        HIDWORD(v213) = v122 + 1;
                      }
                    }

LABEL_122:
                    v125 = HIDWORD(v213);
                    v126 = HIDWORD(v217);
                    v127 = v223;
                    v15 = OUTLINED_FUNCTION_21_9(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                    if (v15)
                    {
                      LODWORD(v237) = v127;
                      HIDWORD(v221) = v126;
                      LODWORD(v213) = v125;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_9_15();
                      v15 = test_string_s();
                      v215 = __PAIR64__(v127, v126);
                      HIDWORD(v211) = v125;
                      LODWORD(v213) = v125;
                      LODWORD(v237) = v127;
                      HIDWORD(v221) = v126;
                      if (!v15)
                      {
LABEL_125:
                        v128 = HIDWORD(v211);
                        v129 = v215;
                        v130 = HIDWORD(v215);
                        OUTLINED_FUNCTION_13_15(43, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                        v91 = v128 + 1;
                        LODWORD(v237) = v130;
                        HIDWORD(v221) = v129;
                        goto LABEL_90;
                      }
                    }

LABEL_91:
                    v102 = v213;
                    v12 = HIDWORD(v221);
                    v103 = v237;
                    v15 = OUTLINED_FUNCTION_11_15(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                    if (v15)
                    {
                      LODWORD(v207) = v103;
                      HIDWORD(v201) = v12;
                      v17 = v102;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_23_9();
                      v15 = test_string_s();
                      HIDWORD(v209) = v103;
                      HIDWORD(v205) = v12;
                      LODWORD(v207) = v103;
                      HIDWORD(v203) = v102;
                      HIDWORD(v201) = v12;
                      v17 = v102;
                      if (!v15)
                      {
LABEL_109:
                        v6 = HIDWORD(v205);
                        OUTLINED_FUNCTION_13_15(46, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                        goto LABEL_117;
                      }
                    }

LABEL_94:
                    v104 = v17;
                    v12 = HIDWORD(v201);
                    v105 = v207;
                    if (OUTLINED_FUNCTION_11_15(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274))
                    {
                      LODWORD(v201) = v105;
                      v28 = v12;
                      v21 = v104;
                      goto LABEL_97;
                    }

                    OUTLINED_FUNCTION_23_9();
                    v106 = test_string_s();
                    LODWORD(v203) = v105;
                    HIDWORD(v199) = v12;
                    LODWORD(v201) = v105;
                    LODWORD(v197) = v104;
                    v28 = v12;
                    v21 = v104;
                    if (v106)
                    {
LABEL_97:
                      v32 = v21;
                      v11 = v28;
                      starttest(v274, 50);
                      v15 = lpta_loadp_setscan_r(v274, &v278, 1);
                      if (v15)
                      {
                        v19 = v201;
                        v31 = v11;
LABEL_99:
                        v15 = OUTLINED_FUNCTION_21_9(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                        if (v15 || (OUTLINED_FUNCTION_9_15(), v15 = test_string_s(), v33 = v31, v18 = v32, v15))
                        {
                          v6 = v31;
                        }

                        else
                        {
LABEL_111:
                          v6 = v33;
                          OUTLINED_FUNCTION_13_15(58, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                        }

                        goto LABEL_117;
                      }

                      bspush_ca_scan(v274, 51);
                      OUTLINED_FUNCTION_9_15();
                      v107 = test_string_s();
                      LODWORD(v199) = v201;
                      HIDWORD(v195) = v11;
                      LODWORD(v193) = v32;
                      v22 = v201;
                      v12 = v32;
                      v23 = HIDWORD(v269);
                      if (!v107)
                      {
LABEL_103:
                        v12 = v193;
                        v11 = HIDWORD(v195);
                        OUTLINED_FUNCTION_9_15();
                        v108 = test_string_s();
                        LODWORD(v195) = v199;
                        HIDWORD(v191) = HIDWORD(v195);
                        LODWORD(v189) = v193;
                        v22 = v199;
                        v23 = HIDWORD(v269);
                        if (!v108)
                        {
LABEL_104:
                          v12 = v274;
                          savescptr(v274, 52, &v278);
                          if (lpta_loadp_setscan_l(v274, &v278, 1) || advance_tok(v274, v16, v17, v18))
                          {
                            HIDWORD(v197) = v195;
                            HIDWORD(v193) = HIDWORD(v191);
                            HIDWORD(v187) = v189;
                            v15 = (HIDWORD(v269) + 1);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_9_15();
                            if (test_string_s())
                            {
                              v15 = (HIDWORD(v269) + 1);
                            }

                            else
                            {
                              v15 = (HIDWORD(v269) + 6);
                            }

                            HIDWORD(v197) = v195;
                            HIDWORD(v193) = HIDWORD(v191);
                            HIDWORD(v187) = v189;
                          }

LABEL_107:
                          v109 = HIDWORD(v187);
                          v110 = HIDWORD(v193);
                          v111 = HIDWORD(v197);
                          v15 = OUTLINED_FUNCTION_21_9(v15, v16, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                          if (v15)
                          {
                            LODWORD(v191) = v111;
                            v16 = v110;
                            v29 = v109;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_9_15();
                            v15 = test_string_s();
                            HIDWORD(v189) = v111;
                            LODWORD(v191) = v111;
                            HIDWORD(v186) = v109;
                            LODWORD(v187) = v110;
                            v16 = v110;
                            v29 = v109;
                            if (!v15)
                            {
LABEL_113:
                              v112 = HIDWORD(v186);
                              v113 = v187;
                              v114 = HIDWORD(v189);
                              OUTLINED_FUNCTION_13_15(55, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                              LODWORD(v191) = v114;
                              v16 = v113;
                              v29 = v112;
                            }
                          }

LABEL_114:
                          v115 = v29;
                          v6 = v16;
                          v116 = OUTLINED_FUNCTION_24_9(v15, &v278, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                          v15 = lpta_loadp_setscan_r(v116, v117, 1);
                          if (!v15)
                          {
                            OUTLINED_FUNCTION_1_16();
                            v15 = test_string_s();
                            v30 = v6;
                            v20 = v115;
                            if (!v15)
                            {
LABEL_116:
                              v6 = v30;
                              OUTLINED_FUNCTION_13_15(57, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                            }
                          }

                          goto LABEL_117;
                        }
                      }
                    }

                    else
                    {
LABEL_110:
                      v6 = HIDWORD(v199);
                      OUTLINED_FUNCTION_13_15(49, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
LABEL_117:
                      v118 = OUTLINED_FUNCTION_36_3(v15, 59, v17, v18, v23, v19, v20, v21, v186, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v272, v273, v274);
                      starttest(v118, v119);
                      bspush_ca(v6);
                      lpta_loadpn(v6, &v278);
                      rpta_loadpn(v6, &v280);
                      compare_ptas(v6);
                      OUTLINED_FUNCTION_32_4();
                      if (!v120)
                      {
                        testneq(v274);
                        OUTLINED_FUNCTION_32_4();
                        if (!v121)
                        {
                          goto LABEL_4;
                        }
                      }
                    }
                  }
                }
              }
            }

            break;
          case 8:
            v11 = v11;
            v12 = v12;
            v13 = v23;
            v6 = v274;
            goto LABEL_137;
          case 9:
            goto LABEL_17;
          case 10:
            goto LABEL_16;
          case 11:
            goto LABEL_35;
          case 12:
            goto LABEL_34;
          case 13:
            goto LABEL_39;
          case 14:
            goto LABEL_38;
          case 15:
            goto LABEL_42;
          case 16:
            goto LABEL_58;
          case 17:
          case 26:
            goto LABEL_68;
          case 18:
            goto LABEL_45;
          case 19:
            goto LABEL_57;
          case 20:
            goto LABEL_47;
          case 21:
            goto LABEL_51;
          case 22:
            goto LABEL_52;
          case 23:
            goto LABEL_55;
          case 24:
            goto LABEL_63;
          case 25:
            goto LABEL_62;
          case 27:
            goto LABEL_66;
          case 28:
            goto LABEL_59;
          case 29:
            goto LABEL_71;
          case 30:
            goto LABEL_86;
          case 31:
          case 40:
            goto LABEL_91;
          case 32:
            goto LABEL_74;
          case 33:
            goto LABEL_87;
          case 34:
            goto LABEL_76;
          case 35:
            goto LABEL_80;
          case 36:
            goto LABEL_81;
          case 37:
            goto LABEL_84;
          case 38:
            goto LABEL_122;
          case 39:
            goto LABEL_121;
          case 41:
            goto LABEL_125;
          case 42:
            goto LABEL_88;
          case 43:
            goto LABEL_94;
          case 44:
            goto LABEL_109;
          case 45:
          case 54:
            goto LABEL_117;
          case 46:
            goto LABEL_97;
          case 47:
            goto LABEL_110;
          case 48:
            goto LABEL_99;
          case 49:
            goto LABEL_103;
          case 50:
            goto LABEL_104;
          case 51:
            goto LABEL_107;
          case 52:
            goto LABEL_114;
          case 53:
            goto LABEL_113;
          case 55:
            goto LABEL_116;
          case 56:
            goto LABEL_111;
          case 57:
            copyvar(v274, (v274 + 2612), (v274 + 2640));
            lpta_rpta_loadp(v274, &v282, &v280);
            v51 = OUTLINED_FUNCTION_12_15();
            delete_2pt(v51, v52, v53, v54);
            OUTLINED_FUNCTION_7_15();
            if (v55)
            {
              continue;
            }

            startloop(v274, 62);
            move_i(v274, &v277 + 4, 0);
            move_i(v274, &v277, 1);
            v31 = &v276;
            move_i(v274, &v276, 3);
            for_test(v274, &v277 + 2, &v276, &v277);
            OUTLINED_FUNCTION_7_15();
            if (v56)
            {
              continue;
            }

            v36 = v9;
            OUTLINED_FUNCTION_7_15();
            WORD2(v235) = 0;
            goto LABEL_158;
          case 58:
            OUTLINED_FUNCTION_7_15();
            if (!v9)
            {
              v22 = v9;
              v11 = v11;
              v12 = v269;
              v23 = HIDWORD(v269);
              if (!v11)
              {
                v22 = v9;
                v11 = v11;
                v12 = v269;
                v23 = HIDWORD(v269);
                if (!v269)
                {
                  v22 = v9;
                  v11 = v11;
                  v12 = v269;
                  v23 = HIDWORD(v269);
                  if (!WORD2(v269))
                  {
                    goto LABEL_4;
                  }
                }
              }
            }

            continue;
          case 61:
            goto LABEL_158;
          case 62:
            v143 = OUTLINED_FUNCTION_26_9();
            goto LABEL_159;
          case 63:
            v153 = HIWORD(v277);
            v154 = v11;
            v155 = v12;
            v156 = v23;
            v34 = v274;
            while (2)
            {
              v136 = v155;
              v135 = v154;
              if (v153)
              {
                OUTLINED_FUNCTION_30_5();
              }

              else
              {
                OUTLINED_FUNCTION_17_12();
                v164 = OUTLINED_FUNCTION_0_17();
                insert_2pt_s(v164, v165, v166, v167, 0);
                OUTLINED_FUNCTION_30_5();
                v138 = 0;
                v137 = v156;
                if (!v168)
                {
                  goto LABEL_192;
                }
              }

LABEL_191:
              v176 = v159;
              *(v34 + 136) = 1;
              v135 = v158;
              v9 = v157;
              *(v34 + 112) = v283;
              *(v34 + 128) = 0;
              insert_r(v34, 1, 2, v142, 0);
              v136 = v31;
              v137 = v11;
              v138 = v176;
LABEL_192:
              v139 = v138;
              v140 = v137;
              if (HIWORD(v277))
              {
                v141 = HIWORD(v277);
                v31 = v9;
LABEL_194:
                if (v141 == 1)
                {
                  v177 = OUTLINED_FUNCTION_34_4();
                  starttest_e(v177, v178);
                  v36 = v31;
                  v11 = v135;
                  if (!(v135 | v31))
                  {
                    goto LABEL_4;
                  }
                }

                else
                {
                  v11 = v135;
LABEL_198:
                  v179 = OUTLINED_FUNCTION_34_4();
                  starttest(v179, v180);
                  if (HIWORD(v277) == 2)
                  {
                    v181 = OUTLINED_FUNCTION_34_4();
                    starttest_e(v181, v182);
                    v36 = v31;
                    if (!v31)
                    {
                      goto LABEL_4;
                    }
                  }

                  else
                  {
                    v36 = v31;
                  }
                }
              }

              else
              {
                v183 = OUTLINED_FUNCTION_34_4();
                starttest_e(v183, v184);
                if (v136 || v135)
                {
                  v36 = v9;
                  v11 = v135;
                }

                else
                {
                  v36 = v9;
                  v11 = v135;
                  if (!v9)
                  {
                    goto LABEL_4;
                  }
                }
              }

LABEL_207:
              v12 = v136;
              v185 = for_adv(v34, 62, 63, &v277 + 2, &v276, &v277);
              v23 = v140;
              WORD2(v235) = v139;
              if (v185)
              {
LABEL_158:
                v144 = v12;
                v147 = HIWORD(v277);
                v160 = 0;
                v161 = v36;
                v143 = v36;
                v135 = v11;
                v136 = v144;
                v137 = v23;
                v162 = v23;
                v145 = v23;
                v146 = WORD2(v235);
                v34 = v274;
                if (HIWORD(v277))
                {
LABEL_159:
                  v160 = 1;
                  v161 = v143;
                  v135 = v11;
                  v136 = v144;
                  v162 = v144;
                  v137 = v145;
                  if (v147 != 1)
                  {
LABEL_160:
                    v160 = 2;
                    v161 = v143;
                    v149 = v143;
                    v135 = v11;
                    v162 = v11;
                    v150 = v11;
                    v136 = v144;
                    v151 = v144;
                    v137 = v145;
                    v152 = v145;
                    v148 = v146;
                    if (v147 != 2)
                    {
LABEL_161:
                      if (v147 == 3)
                      {
                        v162 = v149;
                      }

                      else
                      {
                        v162 = v148;
                      }

                      v160 = v147;
                      v161 = v149;
                      v135 = v150;
                      v136 = v151;
                      v137 = v152;
                    }
                  }
                }

                v163 = v162;
                v153 = v160;
                v9 = v161;
                v154 = v135;
                v155 = v136;
                v156 = v137;
                switch(v163)
                {
                  case 0:
                    continue;
                  case 1:
                    if (v160)
                    {
                      goto LABEL_188;
                    }

                    OUTLINED_FUNCTION_17_12();
                    v31 = 1;
                    insert_2pt_s(v34, 1u, 1, &unk_2806BB16A, 0);
                    OUTLINED_FUNCTION_22_9();
                    v138 = v159;
                    goto LABEL_190;
                  case 2:
                    if (!v160)
                    {
                      goto LABEL_189;
                    }

                    goto LABEL_188;
                  case 3:
                    if (!v160)
                    {
                      goto LABEL_189;
                    }

                    goto LABEL_188;
                  case 4:
                    if (!v160)
                    {
                      goto LABEL_189;
                    }

                    goto LABEL_188;
                  case 5:
                    if (!v160)
                    {
                      goto LABEL_189;
                    }

                    goto LABEL_188;
                  case 6:
                    if (!v160)
                    {
                      goto LABEL_189;
                    }

                    goto LABEL_188;
                  case 7:
                    if (!v160)
                    {
                      goto LABEL_189;
                    }

                    goto LABEL_188;
                  case 8:
                    if (v160)
                    {
                      goto LABEL_188;
                    }

                    goto LABEL_189;
                  case 9:
                    if (v160)
                    {
LABEL_188:
                      OUTLINED_FUNCTION_22_9();
                      goto LABEL_191;
                    }

LABEL_189:
                    OUTLINED_FUNCTION_17_12();
                    v170 = OUTLINED_FUNCTION_0_17();
                    insert_2pt_s(v170, v171, v172, v173, v174);
                    OUTLINED_FUNCTION_22_9();
                    v138 = v175;
                    v159 = v175;
LABEL_190:
                    v9 = v161;
                    if (v169)
                    {
                      goto LABEL_191;
                    }

                    goto LABEL_192;
                  default:
                    v9 = v161;
                    v138 = v160;
                    goto LABEL_192;
                }
              }

              goto LABEL_4;
            }

          case 64:
            v143 = OUTLINED_FUNCTION_26_9();
            goto LABEL_160;
          case 65:
            v147 = HIWORD(v277);
            v148 = 0;
            v149 = v9;
            v150 = v11;
            v151 = v12;
            v152 = v23;
            v34 = v274;
            goto LABEL_161;
          case 66:
          case 68:
          case 69:
          case 70:
          case 72:
          case 73:
          case 75:
          case 76:
          case 78:
          case 79:
          case 81:
          case 82:
          case 84:
          case 85:
          case 87:
          case 88:
          case 90:
          case 91:
          case 93:
          case 95:
            v135 = v11;
            v136 = v12;
            v137 = v23;
            v138 = 0;
            v34 = v274;
            goto LABEL_192;
          case 67:
            v142 = &unk_2806BB18F;
            goto LABEL_157;
          case 71:
            v142 = &unk_2806BB191;
            goto LABEL_157;
          case 74:
            v142 = &unk_2806BB193;
            goto LABEL_157;
          case 77:
            v142 = &unk_2806BB195;
            goto LABEL_157;
          case 80:
            v142 = &unk_2806BB197;
            goto LABEL_157;
          case 83:
            v142 = &unk_2806BB199;
            goto LABEL_157;
          case 86:
            v142 = &unk_2806BB19B;
            goto LABEL_157;
          case 89:
            v142 = &unk_2806BB19D;
            goto LABEL_157;
          case 92:
            v142 = &unk_2806BB19F;
            goto LABEL_157;
          case 94:
            v142 = &unk_2806BB1A1;
LABEL_157:
            v157 = v9;
            v158 = v11;
            v31 = v269;
            v11 = HIDWORD(v269);
            v159 = 0;
            v34 = v274;
            goto LABEL_191;
          case 96:
            v141 = HIWORD(v277);
            v139 = 0;
            v31 = v9;
            v135 = v11;
            v136 = v12;
            v140 = v23;
            v34 = v274;
            goto LABEL_194;
          case 97:
          case 98:
          case 100:
          case 101:
            v139 = 0;
            v36 = v9;
            v11 = v11;
            v136 = v12;
            v140 = v23;
            v34 = v274;
            goto LABEL_207;
          case 99:
            v31 = v9;
            v11 = v11;
            v136 = v12;
            v140 = v23;
            v139 = 0;
            v34 = v274;
            goto LABEL_198;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v274);
  OUTLINED_FUNCTION_38_3();
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_3_16(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

BOOL OUTLINED_FUNCTION_8_15()
{

  return testFldeq(v0, 1u, 3, 2);
}

void OUTLINED_FUNCTION_10_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_11_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return lpta_loadp_setscan_r(a55, &STACK[0x240], 1);
}

double OUTLINED_FUNCTION_13_15@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{

  *&result = savescptr(a48, a1, &STACK[0x240]).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_14_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

uint64_t OUTLINED_FUNCTION_16_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return lpta_loadp_setscan_r(a55, &STACK[0x240], 1);
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return lpta_rpta_loadp(v0, &STACK[0x260], &STACK[0x250]);
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return lpta_loadp_setscan_r(a55, &STACK[0x240], 1);
}

BOOL OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v34 + 8) = a33;

  return vretproc(v33);
}

void OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  get_parm(v34, &a34, v35, -6);
}

void OUTLINED_FUNCTION_28_6(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return lpta_loadp_setscan_r(v0, v1, 1);
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return vback(v0, 0);
}

void *fence_18(uint64_t a1, int a2, uint64_t a3)
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

void print_spr(uint64_t a1)
{
  OUTLINED_FUNCTION_31_6();
  v2 = v1;
  v91 = *MEMORY[0x277D85DE8];
  v85[0] = 0;
  v85[1] = 0;
  v86 = 0;
  v84[0] = 0;
  v84[1] = 0;
  v83[0] = 0;
  v83[1] = 0;
  v81 = 0;
  v82 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v80, v3);
  OUTLINED_FUNCTION_9_16();
  bzero(v90, v4);
  if (!setjmp(v90) && !ventproc(v2, v80, v89, v88, v87, v90))
  {
    LOWORD(v86) = 0;
    LODWORD(v85[0]) = -65529;
    v5 = OUTLINED_FUNCTION_16_14();
    push_ptr_init(v5, v6);
    push_ptr_init(v2, v83);
    v7 = OUTLINED_FUNCTION_6_16();
    v9 = push_ptr_init(v7, v8);
    OUTLINED_FUNCTION_25_10(v9, v10, &null_str_4);
    v11 = OUTLINED_FUNCTION_2_17();
    startloop(v11, v12);
    lpta_loadpn(v2, v2 + 1400);
    OUTLINED_FUNCTION_4_16();
    lpta_mover();
    v13 = OUTLINED_FUNCTION_20_10();
    lpta_storep(v13, v14, v15);
    lpta_loadpn(v2, v2 + 1240);
    OUTLINED_FUNCTION_4_16();
    lpta_mover();
    v16 = OUTLINED_FUNCTION_16_14();
    lpta_storep(v16, v17, v18);
    v19 = 0;
    while (1)
    {
LABEL_5:
      v20 = v19;
      v21 = OUTLINED_FUNCTION_20_10();
      v23 = forall_to_test(v21, v22, v84);
      v24 = v20;
      if (!v23)
      {
LABEL_6:
        v20 = v24;
        bspush_ca(v2);
        v25 = OUTLINED_FUNCTION_20_10();
        if (!lpta_loadp_setscan_r(v25, v26, 4))
        {
          bspush_ca_scan_boa();
          v27 = OUTLINED_FUNCTION_4_16();
          if (!testFldeq(v27, v28, 0, 40))
          {
            v20 = 1;
          }
        }
      }

      v29 = v20;
      while (2)
      {
        v30 = *(v2 + 104);
        if (v30)
        {
          v31 = OUTLINED_FUNCTION_21_10(v30);
          v33 = v32;
        }

        else
        {
          v31 = vback(v2, v29);
          v33 = 0;
        }

        v34 = v31 - 1;
        v19 = v33;
        switch(v34)
        {
          case 1:
            goto LABEL_18;
          case 2:
            v35 = forto_adv_upto_r(v2, 1, 2, 15, 4, v2 + 1576);
            v29 = v33;
            if (v35)
            {
              continue;
            }

            goto LABEL_3;
          case 3:
            bspop_boa(v2);
            v39 = advance_tok(v2, v36, v37, v38);
            v29 = v33;
            if (v39)
            {
              continue;
            }

            goto LABEL_17;
          case 4:
LABEL_17:
            v40 = OUTLINED_FUNCTION_16_14();
            savescptr(v40, v41, v42);
LABEL_18:
            v43 = OUTLINED_FUNCTION_20_10();
            if (lpta_loadp_setscan_l(v43, v44, 2))
            {
              goto LABEL_24;
            }

            v45 = OUTLINED_FUNCTION_20_10();
            lpta_loadpn(v45, v46);
            rpta_loadpn(v2, v2 + 1224);
            if (!compare_ptas(v2) && !testeq(v2))
            {
              print_between_word_chars();
            }

LABEL_22:
            v47 = OUTLINED_FUNCTION_20_10();
            print_word_stress(v47);
LABEL_23:
            v48 = OUTLINED_FUNCTION_17_13();
LABEL_24:
            v50 = OUTLINED_FUNCTION_20_10();
            if (!lpta_loadp_setscan_r(v50, v51, 7) && !advance_tok(v2, v52, v53, v54) && !savetok(v2, v85))
            {
LABEL_27:
              v55 = OUTLINED_FUNCTION_22_10();
              savescptr(v55, v56, v83);
              v57 = OUTLINED_FUNCTION_17_13();
              print_lit(v57, v58, ".");
              if (*(v2 + 5102) != *(v2 + 5090))
              {
                WORD1(v85[0]) = 0;
                v59 = OUTLINED_FUNCTION_17_13();
                print_var(v59, v60, v85);
              }
            }

LABEL_29:
            lang_specific_SPR();
LABEL_30:
            v61 = OUTLINED_FUNCTION_24_10();
            if (!lpta_loadp_setscan_l(v61, v62, 2))
            {
              v63 = OUTLINED_FUNCTION_17_13();
              print_lit(v63, v64, "]");
              v65 = OUTLINED_FUNCTION_7_16();
              starttest(v65, v66);
              v67 = OUTLINED_FUNCTION_24_10();
              lpta_loadpn(v67, v68);
              lpta_mover();
              v69 = OUTLINED_FUNCTION_6_16();
              lpta_storep(v69, v70, v71);
              OUTLINED_FUNCTION_24_10();
              v72 = print_between_word_chars();
              v29 = v33;
              if (v72)
              {
                continue;
              }
            }

LABEL_32:
            v73 = OUTLINED_FUNCTION_24_10();
            lpta_loadpn(v73, v74);
            rpta_loadpn(v2, v2 + 1240);
            if (!compare_ptas(v2) && !testeq(v2))
            {
              goto LABEL_3;
            }

LABEL_34:
            v75 = OUTLINED_FUNCTION_24_10();
            lpta_loadpn(v75, v76);
            OUTLINED_FUNCTION_4_16();
            lpta_mover();
            v77 = OUTLINED_FUNCTION_6_16();
            lpta_storep(v77, v78, v79);
            forall_cont_from();
            v19 = v33;
            break;
          case 5:
            goto LABEL_24;
          case 6:
            goto LABEL_22;
          case 7:
            goto LABEL_23;
          case 8:
            goto LABEL_29;
          case 9:
            goto LABEL_27;
          case 10:
            goto LABEL_30;
          case 11:
            goto LABEL_32;
          case 12:
            goto LABEL_34;
          case 13:
            goto LABEL_5;
          case 14:
            v24 = v33;
            goto LABEL_6;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_32_5();
}

uint64_t print_between_word_chars()
{
  OUTLINED_FUNCTION_11_16();
  v41 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v25, v1);
  OUTLINED_FUNCTION_9_16();
  bzero(v40, v2);
  v3 = setjmp(v40);
  if (v3 || OUTLINED_FUNCTION_23_10(v3, v4, v5, v6, v7, v8, v9, v10, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21], v25[22], v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40[0]))
  {
    v11 = 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_17();
    get_parm(v13, v14, v15, -6);
    OUTLINED_FUNCTION_8_16();
    v11 = 0;
    OUTLINED_FUNCTION_25_10(v16, v17, &null_str_4);
    v18 = OUTLINED_FUNCTION_3_17();
    print_after_word_chars(v18, v19);
    v20 = OUTLINED_FUNCTION_7_16();
    lpta_loadpn(v20, v21);
    rpta_loadpn(v0, v0 + 1240);
    if (!compare_ptas(v0))
    {
      if (!testneq(v0))
      {
        v22 = OUTLINED_FUNCTION_17_13();
        print_lit(v22, v23, v24);
      }

      v11 = 0;
    }
  }

  vretproc(v0);
  return v11;
}

uint64_t print_word_stress(uint64_t a1)
{
  v195 = *MEMORY[0x277D85DE8];
  v189 = 0;
  v190 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(&v166, v2);
  OUTLINED_FUNCTION_9_16();
  bzero(v194, v3);
  if (setjmp(v194) || (v4 = ventproc(a1, &v166, v193, v192, v191, v194), v4))
  {
LABEL_3:
    v5 = 94;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_10(v4, &v189);
  fence_18(a1, 0, &null_str_4);
  starttest(a1, 1);
  *(a1 + 136) = 1;
  *(a1 + 112) = v190;
  *(a1 + 128) = 0;
  if (lpta_tstctxtl() || (setscan_r(a1, 2, v7), v11) || advance_tok(a1, v8, v9, v10))
  {
LABEL_10:
    v15 = OUTLINED_FUNCTION_2_17();
    starttest(v15, v16);
    if (OUTLINED_FUNCTION_14_14(v17, v18, v19, v20, v21, v22, v23, v24, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189))
    {
LABEL_18:
      v50 = OUTLINED_FUNCTION_2_17();
      starttest(v50, v51);
      if (OUTLINED_FUNCTION_14_14(v52, v53, v54, v55, v56, v57, v58, v59, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189))
      {
LABEL_19:
        v60 = OUTLINED_FUNCTION_2_17();
        starttest(v60, v61);
        if (OUTLINED_FUNCTION_14_14(v62, v63, v64, v65, v66, v67, v68, v69, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189))
        {
LABEL_20:
          v70 = OUTLINED_FUNCTION_2_17();
          starttest(v70, v71);
          if (OUTLINED_FUNCTION_14_14(v72, v73, v74, v75, v76, v77, v78, v79, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189))
          {
LABEL_21:
            v80 = OUTLINED_FUNCTION_2_17();
            starttest(v80, v81);
            v42 = OUTLINED_FUNCTION_14_14(v82, v83, v84, v85, v86, v87, v88, v89, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
            if (v42)
            {
LABEL_38:
              if (!OUTLINED_FUNCTION_14_14(v42, v43, v44, v45, v46, v47, v48, v49, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189) && !advance_tok(a1, v154, v155, v156))
              {
                savetok(a1, (a1 + 3600));
              }

LABEL_41:
              v157 = OUTLINED_FUNCTION_17_13();
              print_lit(v157, v158, v159);
              *(a1 + 3602) = 5;
              v160 = OUTLINED_FUNCTION_17_13();
              print_var(v160, v161, v162);
            }

            else
            {
              if (OUTLINED_FUNCTION_19_11())
              {
                goto LABEL_14;
              }

              npush_v(a1, (a1 + 3060), v90, v91, v92, v93, v94, v95);
              if (if_testeq(a1, v96, v97, v98, v99, v100, v101, v102) || advance_tok(a1, v103, v104, v105))
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
            if (OUTLINED_FUNCTION_19_11())
            {
              goto LABEL_14;
            }

            npush_v(a1, (a1 + 3056), v138, v139, v140, v141, v142, v143);
            if (if_testeq(a1, v144, v145, v146, v147, v148, v149, v150) || advance_tok(a1, v151, v152, v153))
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          if (OUTLINED_FUNCTION_19_11())
          {
            goto LABEL_14;
          }

          npush_v(a1, (a1 + 3032), v122, v123, v124, v125, v126, v127);
          if (if_testeq(a1, v128, v129, v130, v131, v132, v133, v134) || advance_tok(a1, v135, v136, v137))
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        if (OUTLINED_FUNCTION_19_11())
        {
          goto LABEL_14;
        }

        npush_v(a1, (a1 + 3044), v106, v107, v108, v109, v110, v111);
        if (if_testgt(a1, v112, v113, v114, v115, v116, v117, v118) || advance_tok(a1, v119, v120, v121))
        {
          goto LABEL_14;
        }
      }

      v163 = OUTLINED_FUNCTION_17_13();
      print_lit(v163, v164, v165);
      goto LABEL_9;
    }

    if (!OUTLINED_FUNCTION_19_11())
    {
      npush_v(a1, (a1 + 3036), v25, v26, v27, v28, v29, v30);
      if (!if_testeq(a1, v31, v32, v33, v34, v35, v36, v37) && !advance_tok(a1, v38, v39, v40))
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = OUTLINED_FUNCTION_2_17();
    if (!test_synch(v12, v13, 1, v14))
    {
LABEL_9:
      v5 = 0;
      goto LABEL_4;
    }
  }

LABEL_14:
  v41 = *(a1 + 104);
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_21_10(v41);
  }

  else
  {
    v42 = OUTLINED_FUNCTION_27_8();
  }

  v5 = 0;
  switch(v42)
  {
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_8;
    case 3:
      break;
    case 4:
      goto LABEL_18;
    case 5:
      goto LABEL_19;
    case 6:
      goto LABEL_20;
    case 7:
      goto LABEL_21;
    case 8:
      goto LABEL_38;
    case 9:
      goto LABEL_41;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(a1);
  return v5;
}

void print_after_word_chars(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_6();
  OUTLINED_FUNCTION_11_16();
  v92 = *MEMORY[0x277D85DE8];
  v87[0] = 0;
  v87[1] = 0;
  memset(v86, 0, sizeof(v86));
  v85[0] = 0;
  v85[1] = 0;
  v84[0] = 0;
  v84[1] = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v83, v4);
  OUTLINED_FUNCTION_9_16();
  bzero(v91, v5);
  if (!setjmp(v91) && !ventproc(v2, v83, v90, v89, v88, v91))
  {
    v6 = OUTLINED_FUNCTION_6_16();
    get_parm(v6, v7, v3, -6);
    OUTLINED_FUNCTION_8_16();
    v8 = OUTLINED_FUNCTION_13_16();
    push_ptr_init(v8, v9);
    push_ptr_init(v2, v85);
    v10 = OUTLINED_FUNCTION_7_16();
    v12 = push_ptr_init(v10, v11);
    OUTLINED_FUNCTION_25_10(v12, v13, &null_str_4);
    v14 = OUTLINED_FUNCTION_4_16();
    fence_18(v14, v15, v16);
    startloop(v2, 1);
    v17 = OUTLINED_FUNCTION_13_16();
    copyvar(v17, v18, v87);
    v19 = OUTLINED_FUNCTION_3_17();
    copyvar(v19, v20, v21);
    v22 = 0;
    while (1)
    {
LABEL_5:
      v23 = OUTLINED_FUNCTION_13_16();
      v25 = forall_to_test(v23, v24, v84);
      v26 = v22;
      LODWORD(v27) = v22;
      if (v25)
      {
        goto LABEL_20;
      }

LABEL_6:
      v22 = v26;
      bspush_ca(v2);
      v28 = OUTLINED_FUNCTION_13_16();
      if (lpta_loadp_setscan_r(v28, v29, 1))
      {
        goto LABEL_19;
      }

      bspush_ca_scan(v2, 4);
      v30 = OUTLINED_FUNCTION_4_16();
      if (testFldeq(v30, v31, 3, 4))
      {
        LODWORD(v27) = v22;
        goto LABEL_20;
      }

      v35 = advance_tok(v2, v32, v33, v34);
      v36 = v22;
      LODWORD(v27) = v22;
      if (v35)
      {
        goto LABEL_20;
      }

LABEL_10:
      v22 = v36;
      savescptr(v2, 5, v85);
      while (2)
      {
        starttest(v2, 6);
        v37 = OUTLINED_FUNCTION_13_16();
        if (lpta_loadp_setscan_r(v37, v38, 1))
        {
LABEL_12:
          starttest(v2, 8);
          if (!lpta_loadp_setscan_r(v2, v85, 1))
          {
            bspush_ca_scan(v2, 9);
            OUTLINED_FUNCTION_1_17();
            v39 = test_string_s();
            LODWORD(v27) = v22;
            v40 = v22;
            if (!v39)
            {
LABEL_14:
              v41 = v40;
              v42 = OUTLINED_FUNCTION_2_17();
              bspush_ca_scan(v42, v43);
              bspush_ca_scan_boa();
              v44 = OUTLINED_FUNCTION_4_16();
              if (testFldeq(v44, v45, v46, 72))
              {
                LODWORD(v27) = v41;
              }

              else
              {
                LODWORD(v27) = 1;
              }
            }

LABEL_20:
            v52 = *(v2 + 104);
            if (v52)
            {
              v53 = OUTLINED_FUNCTION_21_10(v52);
              v22 = v54;
            }

            else
            {
              v53 = vback(v2, v27);
              v22 = 0;
            }

            v36 = v22;
            v40 = v22;
            switch(v53)
            {
              case 2:
                continue;
              case 3:
                v55 = forto_adv_r(v2, 1, 2, 18, 1, v86);
                LODWORD(v27) = v22;
                if (v55)
                {
                  goto LABEL_20;
                }

                goto LABEL_3;
              case 4:
                OUTLINED_FUNCTION_1_17();
                v69 = test_string_s();
                v36 = v22;
                LODWORD(v27) = v22;
                if (!v69)
                {
                  goto LABEL_10;
                }

                goto LABEL_20;
              case 5:
                goto LABEL_10;
              case 6:
                goto LABEL_12;
              case 7:
              case 8:
                goto LABEL_42;
              case 9:
                v63 = OUTLINED_FUNCTION_22_10();
                bspush_ca_scan(v63, v64);
                OUTLINED_FUNCTION_1_17();
                v65 = test_string_s();
                LODWORD(v27) = v22;
                if (v65)
                {
                  goto LABEL_20;
                }

                v66 = OUTLINED_FUNCTION_4_16();
                v68 = testFldeq(v66, v67, 3, 2);
                v27 = v22;
                if (v68)
                {
                  goto LABEL_20;
                }

                goto LABEL_30;
              case 10:
                goto LABEL_14;
              case 11:
                v58 = OUTLINED_FUNCTION_6_16();
                bspush_ca_scan(v58, v59);
                OUTLINED_FUNCTION_1_17();
                goto LABEL_32;
              case 12:
                v56 = OUTLINED_FUNCTION_16_14();
                bspush_ca_scan(v56, v57);
                OUTLINED_FUNCTION_1_17();
                goto LABEL_32;
              case 13:
                bspush_ca_scan(v2, 14);
                OUTLINED_FUNCTION_1_17();
                goto LABEL_32;
              case 14:
                OUTLINED_FUNCTION_1_17();
LABEL_32:
                v62 = test_string_s();
                goto LABEL_33;
              case 15:
                savescptr(v2, 15, v85);
                print_lit(v2, 8, " ");
                v70 = v22;
                goto LABEL_41;
              case 16:
                bspop_boa(v2);
LABEL_30:
                v62 = advance_tok(v2, v27, v60, v61);
LABEL_33:
                v40 = v22;
                LODWORD(v27) = v22;
                if (!v62)
                {
                  goto LABEL_14;
                }

                goto LABEL_20;
              case 17:
                goto LABEL_5;
              case 18:
                v26 = v22;
                goto LABEL_6;
              default:
                goto LABEL_3;
            }
          }
        }

        else
        {
          v47 = OUTLINED_FUNCTION_4_16();
          if (testFldeq(v47, v48, 3, 4) || advance_tok(v2, v49, v50, v51))
          {
LABEL_19:
            LODWORD(v27) = v22;
            goto LABEL_20;
          }

          *(v2 + 136) = 1;
          OUTLINED_FUNCTION_0_18();
          if (!lpta_tstctxtl())
          {
            v73 = OUTLINED_FUNCTION_5_16();
            setscan_r(v73, v74, v75);
            if (!v79 && !advance_tok(v2, v76, v77, v78))
            {
              *(v2 + 136) = 1;
              OUTLINED_FUNCTION_0_18();
              if (!lpta_tstctxtr())
              {
                v82 = test_ptr(v2, v80, v81);
                v70 = v22;
                if (!v82)
                {
LABEL_41:
                  v22 = v70;
                  v71 = OUTLINED_FUNCTION_13_16();
                  lpta_rpta_loadp(v71, v72, v85);
                  print_stream(v2, 8, 1, 0, &unk_26E7817DA);
                }
              }
            }
          }
        }

        break;
      }

LABEL_42:
      forall_cont_from();
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_32_5();
}

void handle_SPR(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v174 = *MEMORY[0x277D85DE8];
  v168 = 0;
  v169 = 0;
  v167[0] = 0;
  v167[1] = 0;
  v165 = 0;
  v166 = 0;
  v163 = 0;
  v164 = 0;
  v162[0] = 0;
  v162[1] = 0;
  v161[0] = 0;
  v161[1] = 0;
  v160[0] = 0;
  v160[1] = 0;
  v159[0] = 0;
  v159[1] = 0;
  v158[0] = 0;
  v158[1] = 0;
  v157 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v156, v12);
  OUTLINED_FUNCTION_9_16();
  bzero(v173, v13);
  if (setjmp(v173))
  {
    goto LABEL_93;
  }

  if (ventproc(v11, v156, v172, v171, v170, v173))
  {
    goto LABEL_93;
  }

  get_parm(v11, &v168, v9, -6);
  v14 = OUTLINED_FUNCTION_6_16();
  get_parm(v14, v15, v7, -6);
  OUTLINED_FUNCTION_26_10(v16, &v165);
  get_parm(v11, &v164 + 4, v3, -4);
  LOWORD(v164) = -4;
  WORD2(v163) = -4;
  LOWORD(v163) = -4;
  push_ptr_init(v11, v162);
  v17 = OUTLINED_FUNCTION_15_14();
  push_ptr_init(v17, v18);
  push_ptr_init(v11, v160);
  push_ptr_init(v11, v159);
  v19 = push_ptr_init(v11, v158);
  v157 = 65532;
  OUTLINED_FUNCTION_25_10(v19, v20, &null_str_4);
  WORD1(v164) = 0;
  WORD1(v163) = 0;
  HIWORD(v163) = 0;
  *(v11 + 4686) = 0;
  starttest(v11, 1);
  v21 = OUTLINED_FUNCTION_6_16();
  if (lpta_loadp_setscan_r(v21, v22, 1))
  {
    goto LABEL_93;
  }

  LODWORD(v26) = 0;
  v27 = 2;
  while (2)
  {
    if (advance_tok(v11, v23, v24, v25))
    {
      v155 = v27;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_7_16();
      bspush_ca_scan(v28, v29);
LABEL_8:
      v155 = v27;
      savescptr(v11, 3, v162);
      OUTLINED_FUNCTION_12_16();
      v30 = test_string_s();
      v31 = v26;
      if (!v30)
      {
LABEL_9:
        LODWORD(v26) = v31;
        v32 = OUTLINED_FUNCTION_22_10();
        savescptr(v32, v33, &v165);
LABEL_10:
        if (*(v11 + 2622) == HIWORD(v164))
        {
          starttest_l(v11, 7);
          bspush_ca_boa();
          v34 = lpta_loadp_setscan_l(v11, &v165, 3);
        }

        else
        {
LABEL_86:
          starttest(v11, 9);
          OUTLINED_FUNCTION_6_16();
          bspush_ca_boa();
          v34 = end_of_word(v11);
        }

        if (!v34)
        {
          LODWORD(v26) = 1;
        }
      }
    }

    v35 = v26;
LABEL_15:
    v36 = *(v11 + 104);
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_21_10(v36);
      v26 = v23;
    }

    else
    {
      v37 = vback(v11, v35);
      v26 = 0;
    }

    switch(v37)
    {
      case 2:
        v27 = v155;
        continue;
      case 3:
        v27 = v155;
        goto LABEL_8;
      case 4:
        v31 = v26;
        goto LABEL_9;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_86;
      case 7:
      case 9:
        *(v11 + 136) = 1;
        *(v11 + 112) = v169;
        *(v11 + 128) = 0;
        OUTLINED_FUNCTION_5_16();
        proj_def();
        *(v11 + 136) = 1;
        *(v11 + 112) = v166;
        *(v11 + 128) = 0;
        OUTLINED_FUNCTION_5_16();
        proj_def();
        WORD1(v164) = -1;
        v38 = OUTLINED_FUNCTION_2_17();
        startloop(v38, v39);
        lpta_loadpn(v11, v167);
        lpta_mover();
        v40 = OUTLINED_FUNCTION_15_14();
        lpta_storep(v40, v41, v42);
        lpta_loadpn(v11, v162);
        lpta_mover();
        lpta_storep(v11, v158, v43);
        goto LABEL_41;
      case 8:
      case 10:
        bspop_boa(v11);
        goto LABEL_93;
      case 11:
        goto LABEL_62;
      case 12:
        goto LABEL_46;
      case 13:
        OUTLINED_FUNCTION_30_6();
        v128 = forto_adv_upto_r(v11, v126, v127, 32, 1, v161);
        v35 = v26;
        if (v128)
        {
          goto LABEL_15;
        }

LABEL_62:
        v129 = *(v11 + 5090);
        if (*(v11 + 5114) == v129 || *(v11 + 5126) == v129)
        {
          goto LABEL_64;
        }

        v130 = *(v11 + 4686);
        if (v130 != 1)
        {
          goto LABEL_65;
        }

        v150 = OUTLINED_FUNCTION_2_17();
        starttest(v150, v151);
        v152 = OUTLINED_FUNCTION_18_12();
        if (!lpta_loadp_setscan_r(v152, v153, v154))
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      case 14:
        goto LABEL_44;
      case 15:
        goto LABEL_45;
      case 16:
        goto LABEL_48;
      case 17:
        goto LABEL_39;
      case 18:
        goto LABEL_49;
      case 19:
        goto LABEL_57;
      case 20:
        LOWORD(v97) = *(v11 + 3778);
        goto LABEL_38;
      case 22:
        v142 = OUTLINED_FUNCTION_2_17();
        starttest(v142, v143);
        OUTLINED_FUNCTION_2_17();
        bspush_ca_boa();
        inserted = insert_spr_phone();
        goto LABEL_50;
      case 23:
      case 26:
        bspop_boa(v11);
        goto LABEL_92;
      case 25:
        v44 = OUTLINED_FUNCTION_2_17();
        starttest(v44, v45);
        v46 = OUTLINED_FUNCTION_15_14();
        if (lpta_loadp_setscan_r(v46, v47, 4))
        {
          goto LABEL_21;
        }

        v144 = OUTLINED_FUNCTION_5_16();
        v146 = OUTLINED_FUNCTION_33_5(v144, v145);
        v35 = v26;
        if (v146)
        {
          goto LABEL_15;
        }

        v149 = advance_tok(v11, v26, v147, v148);
        v35 = v26;
        if (v149)
        {
          goto LABEL_15;
        }

        ++*(v11 + 4686);
LABEL_21:
        v48 = OUTLINED_FUNCTION_2_17();
        starttest(v48, v49);
        v50 = OUTLINED_FUNCTION_15_14();
        if (lpta_loadp_setscan_r(v50, v51, 4))
        {
          goto LABEL_39;
        }

        v52 = OUTLINED_FUNCTION_5_16();
        v54 = OUTLINED_FUNCTION_33_5(v52, v53);
        v35 = v26;
        if (v54)
        {
          goto LABEL_15;
        }

        v57 = advance_tok(v11, v26, v55, v56);
        v35 = v26;
        if (v57)
        {
          goto LABEL_15;
        }

        mark_spr_syll_vals(v11, v161, v160, &v164, &v163 + 2, &v163);
        break;
      case 28:
        goto LABEL_21;
      case 29:
        goto LABEL_40;
      case 30:
        bspop_boa(v11);
        OUTLINED_FUNCTION_28_7();
        OUTLINED_FUNCTION_0_18();
        delete_1pt();
        goto LABEL_40;
      case 31:
        goto LABEL_41;
      case 32:
        goto LABEL_42;
      case 33:
LABEL_64:
        v130 = *(v11 + 4686);
LABEL_65:
        if (v130)
        {
          goto LABEL_66;
        }

        goto LABEL_92;
      case 34:
        goto LABEL_30;
      case 35:
        goto LABEL_26;
      case 36:
        v58 = advance_tok(v11, v23, v24, v25);
        v35 = v26;
        if (v58)
        {
          goto LABEL_15;
        }

LABEL_26:
        v59 = OUTLINED_FUNCTION_2_17();
        bspush_ca_scan(v59, v60);
        goto LABEL_27;
      case 37:
LABEL_27:
        savescptr(v11, 37, v11 + 1272);
        v61 = OUTLINED_FUNCTION_5_16();
        v63 = OUTLINED_FUNCTION_33_5(v61, v62);
        v35 = v26;
        if (!v63)
        {
          v66 = advance_tok(v11, v26, v64, v65);
          v35 = v26;
          if (!v66)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_15;
      case 38:
LABEL_29:
        savescptr(v11, 38, v11 + 1288);
LABEL_30:
        v67 = OUTLINED_FUNCTION_2_17();
        starttest(v67, v68);
        v69 = OUTLINED_FUNCTION_18_12();
        if (lpta_loadp_setscan_r(v69, v70, v71))
        {
          goto LABEL_71;
        }

        v72 = OUTLINED_FUNCTION_5_16();
        v74 = npush_fld(v72, v73, 8u);
        v35 = v26;
        if (!v74)
        {
          v75 = OUTLINED_FUNCTION_7_16();
          c_assvar(v75, v76);
          HIWORD(v157) = -1;
          v77 = OUTLINED_FUNCTION_7_16();
          npush_v(v77, v78, v79, v80, v81, v82, v83, v84);
          v92 = if_testeq(v11, v85, v86, v87, v88, v89, v90, v91);
          v35 = v26;
          if (!v92)
          {
            v95 = advance_tok(v11, v26, v93, v94);
            v35 = v26;
            if (!v95)
            {
              lpta_rpta_loadp(v11, v11 + 1272, v11 + 1288);
              OUTLINED_FUNCTION_5_16();
              v96 = mark_i();
              v35 = v26;
              if (!v96)
              {
                goto LABEL_71;
              }
            }
          }
        }

        goto LABEL_15;
      case 39:
      case 40:
        goto LABEL_71;
      case 41:
LABEL_66:
        v131 = *(v11 + 5090);
        if (*(v11 + 5114) != v131 && *(v11 + 5126) != v131 && HIWORD(v163) == 0)
        {
          goto LABEL_92;
        }

LABEL_71:
        v133 = OUTLINED_FUNCTION_18_12();
        if (!lpta_loadp_setscan_r(v133, v134, v135) && !advanc(v11))
        {
LABEL_73:
          savescptr(v11, 45, v161);
          OUTLINED_FUNCTION_28_7();
          OUTLINED_FUNCTION_0_18();
          delete_1pt();
        }

LABEL_74:
        v136 = OUTLINED_FUNCTION_2_17();
        starttest(v136, v137);
        v138 = OUTLINED_FUNCTION_18_12();
        if (!lpta_loadp_setscan_l(v138, v139, v140) && !advanc(v11))
        {
LABEL_76:
          savescptr(v11, 47, v161);
          OUTLINED_FUNCTION_28_7();
          OUTLINED_FUNCTION_0_18();
          delete_1pt();
        }

LABEL_77:
        lpta_rpta_loadp(v11, &v168, &v165);
        v141 = insert_2pt_s(v11, 3u, 1, &_MergedGlobals_12, 0);
        v35 = v26;
        if (v141)
        {
          goto LABEL_15;
        }

        *(v11 + 3842) = 1;
        *(v5 + 8) = v166;
        vretproc(v11);
        goto LABEL_94;
      case 44:
        goto LABEL_74;
      case 45:
        goto LABEL_73;
      case 46:
        goto LABEL_77;
      case 47:
        goto LABEL_76;
      default:
        goto LABEL_93;
    }

    break;
  }

  while (1)
  {
    do
    {
LABEL_39:
      v98 = OUTLINED_FUNCTION_2_17();
      starttest(v98, v99);
      v100 = OUTLINED_FUNCTION_15_14();
      if (!lpta_loadp_setscan_l(v100, v101, 4) && !advanc(v11))
      {
        OUTLINED_FUNCTION_2_17();
        bspush_ca_scan_boa();
        OUTLINED_FUNCTION_28_7();
        *(v11 + 112) = *(v11 + 352);
        *(v11 + 128) = 0;
        inserted = test_ptr(v11, v124, v125);
LABEL_50:
        if (inserted)
        {
          v35 = v26;
        }

        else
        {
          v35 = 1;
        }

        goto LABEL_15;
      }

LABEL_40:
      OUTLINED_FUNCTION_30_6();
      forall_cont_from();
LABEL_41:
      v102 = forall_to_test(v11, v161, v158);
      v35 = v26;
      if (v102)
      {
        goto LABEL_15;
      }

LABEL_42:
      v103 = OUTLINED_FUNCTION_2_17();
      bspush_ca(v103);
      v104 = OUTLINED_FUNCTION_15_14();
      v106 = lpta_loadp_setscan_r(v104, v105, 1);
      v35 = v26;
      if (v106)
      {
        goto LABEL_15;
      }

      v109 = advance_tok(v11, v26, v107, v108);
      v35 = v26;
      if (v109)
      {
        goto LABEL_15;
      }

LABEL_44:
      savescptr(v11, 14, v160);
LABEL_45:
      savescptr(v11, 15, v159);
LABEL_46:
      v110 = OUTLINED_FUNCTION_15_14();
      if (lpta_loadp_setscan_r(v110, v111, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_12_16();
    }

    while (!test_string_s());
LABEL_48:
    v112 = OUTLINED_FUNCTION_2_17();
    starttest(v112, v113);
    v114 = OUTLINED_FUNCTION_15_14();
    if (lpta_loadp_setscan_r(v114, v115, 1))
    {
LABEL_49:
      v116 = OUTLINED_FUNCTION_2_17();
      starttest(v116, v117);
      OUTLINED_FUNCTION_2_17();
      bspush_ca_boa();
      find_pair_of_single_quotes(v11, v161);
      goto LABEL_50;
    }

    v119 = testFldeq(v11, 1u, 3, 2);
    v35 = v26;
    if (v119)
    {
      goto LABEL_15;
    }

    v122 = advance_tok(v11, v26, v120, v121);
    v35 = v26;
    if (v122)
    {
      goto LABEL_15;
    }

    v123 = savetok(v11, (v11 + 1784));
    v35 = v26;
    if (v123)
    {
      goto LABEL_15;
    }

    token_to_number(v11, v11 + 1784, v11 + 3776);
LABEL_57:
    v97 = *(v11 + 3778);
    if (*(v11 + 2630) < v97)
    {
      break;
    }

LABEL_38:
    WORD1(v164) = v97;
  }

LABEL_92:
  delete_invalid_SPR(v11);
LABEL_93:
  vretproc(v11);
LABEL_94:
  OUTLINED_FUNCTION_32_5();
}

uint64_t delete_invalid_SPR(uint64_t a1)
{
  OUTLINED_FUNCTION_11_16();
  v41 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v25, v2);
  OUTLINED_FUNCTION_9_16();
  bzero(v40, v3);
  v4 = setjmp(v40);
  if (!v4 && !OUTLINED_FUNCTION_23_10(v4, v5, v6, v7, v8, v9, v10, v11, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21], v25[22], v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40[0]))
  {
    v14 = OUTLINED_FUNCTION_3_17();
    get_parm(v14, v15, v16, -6);
    OUTLINED_FUNCTION_8_16();
    v12 = 0;
    OUTLINED_FUNCTION_25_10(v17, v18, &null_str_4);
    v19 = OUTLINED_FUNCTION_3_17();
    lpta_rpta_loadp(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_5_16();
    if (!delete_2pt(v22, v23, 0, v24))
    {
      goto LABEL_4;
    }

    if (*(v1 + 104))
    {
      *(v1 + 104) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_27_8();
    }
  }

  v12 = 94;
LABEL_4:
  vretproc(v1);
  return v12;
}

void find_pair_of_single_quotes(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v37 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v26, v10);
  OUTLINED_FUNCTION_9_16();
  bzero(v36, v11);
  if (setjmp(v36) || ventproc(v9, v26, v35, v34, v33, v36))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_6_16();
  get_parm(v12, v13, v7, -6);
  get_parm(v9, &v29, v5, -6);
  OUTLINED_FUNCTION_26_10(v14, &v27);
  fence_18(v9, 0, &null_str_4);
  v15 = OUTLINED_FUNCTION_6_16();
  if (lpta_loadp_setscan_r(v15, v16, 1) || (OUTLINED_FUNCTION_12_16(), test_string_s()))
  {
LABEL_15:
    *(v7 + 8) = v32;
    *(v5 + 8) = v30;
    *(v3 + 8) = v28;
    goto LABEL_3;
  }

  while (2)
  {
    savescptr(v9, 2, &v31);
    v17 = OUTLINED_FUNCTION_22_10();
    starttest(v17, v18);
    v19 = OUTLINED_FUNCTION_6_16();
    if (lpta_loadp_setscan_r(v19, v20, 1))
    {
      break;
    }

LABEL_7:
    if (!advance_tok(v9, v21, v22, v23))
    {
      bspush_ca_scan(v9, 4);
LABEL_9:
      savescptr(v9, 5, &v29);
      OUTLINED_FUNCTION_12_16();
      if (!test_string_s())
      {
LABEL_14:
        savescptr(v9, 6, &v27);
        goto LABEL_15;
      }
    }

    v24 = *(v9 + 104);
    if (v24)
    {
      v25 = OUTLINED_FUNCTION_21_10(v24);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_27_8();
    }

    switch(v25)
    {
      case 1:
        goto LABEL_15;
      case 2:
        continue;
      case 4:
        goto LABEL_7;
      case 5:
        goto LABEL_9;
      case 6:
        goto LABEL_14;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v9);
  OUTLINED_FUNCTION_32_5();
}

uint64_t mark_spr_syll_vals(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  v29 = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v28, v12);
  OUTLINED_FUNCTION_9_16();
  bzero(v35, v13);
  if (!setjmp(v35) && !ventproc(a1, v28, v34, v33, v32, v35))
  {
    v16 = OUTLINED_FUNCTION_22_10();
    get_parm(v16, v17, a2, -6);
    get_parm(a1, v31, a3, -6);
    v18 = OUTLINED_FUNCTION_6_16();
    get_parm(v18, v19, a4, -4);
    get_parm(a1, &v30, a5, -4);
    get_parm(a1, &v29, a6, -4);
    OUTLINED_FUNCTION_25_10(v20, v21, &null_str_4);
    v22 = OUTLINED_FUNCTION_22_10();
    lpta_rpta_loadp(v22, v23, v31);
    v24 = OUTLINED_FUNCTION_5_16();
    if (mark_v(v24, v25, 8, &v30 + 2, 0))
    {
      v26 = *(a1 + 104);
      if (v26)
      {
        v27 = OUTLINED_FUNCTION_21_10(v26);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_27_8();
      }

      if (v27 != 1)
      {
        goto LABEL_3;
      }
    }

    else if (HIWORD(v30) == 1)
    {
      WORD1(v30) = HIWORD(v30);
    }

    HIWORD(v30) = -1;
    a4[1] = -1;
    a5[1] = WORD1(v30);
    a6[1] = HIWORD(v29);
    v14 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v14 = 94;
LABEL_4:
  vretproc(a1);
  return v14;
}

uint64_t assign_user_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_11_16();
  v63 = *MEMORY[0x277D85DE8];
  v58[0] = 0;
  v58[1] = 0;
  v57[0] = 0;
  v57[1] = 0;
  v55 = 0u;
  v56 = 0u;
  v54[0] = 0;
  v54[1] = 0;
  v53[0] = 0;
  v53[1] = 0;
  v52[0] = 0;
  v52[1] = 0;
  OUTLINED_FUNCTION_10_16();
  bzero(v51, v2);
  OUTLINED_FUNCTION_9_16();
  bzero(v62, v3);
  if (!setjmp(v62) && !ventproc(v1, v51, v61, v60, v59, v62))
  {
    v6 = OUTLINED_FUNCTION_3_17();
    get_parm(v6, v7, v8, -6);
    OUTLINED_FUNCTION_8_16();
    *&v56 = 0;
    *(&v56 + 6) = 0;
    LODWORD(v55) = -65532;
    v9 = OUTLINED_FUNCTION_13_16();
    push_ptr_init(v9, v10);
    push_ptr_init(v1, v53);
    v11 = OUTLINED_FUNCTION_6_16();
    push_ptr_init(v11, v12);
    fence_18(v1, 0, &null_str_4);
    v13 = OUTLINED_FUNCTION_2_17();
    startloop(v13, v14);
    v15 = OUTLINED_FUNCTION_13_16();
    copyvar(v15, v16, v58);
    v17 = OUTLINED_FUNCTION_6_16();
    copyvar(v17, v18, v57);
    v19 = OUTLINED_FUNCTION_13_16();
    if (forall_to_test(v19, v20, v52))
    {
      goto LABEL_18;
    }

LABEL_6:
    v21 = OUTLINED_FUNCTION_2_17();
    bspush_ca(v21);
    if (lpta_loadp_setscan_r(v1, v54, 7) || advanc(v1))
    {
      goto LABEL_18;
    }

LABEL_8:
    savescptr(v1, 4, v53);
    while (2)
    {
      v22 = OUTLINED_FUNCTION_2_17();
      starttest(v22, v23);
      v24 = OUTLINED_FUNCTION_18_12();
      if (!lpta_loadp_setscan_r(v24, v25, v26))
      {
LABEL_15:
        v39 = OUTLINED_FUNCTION_2_17();
        bspush_ca_scan(v39, v40);
        v41 = OUTLINED_FUNCTION_5_16();
        if (OUTLINED_FUNCTION_33_5(v41, v42) || advance_tok(v1, v43, v44, v45) || savetok(v1, &v55))
        {
          goto LABEL_18;
        }
      }

LABEL_10:
      starttest(v1, 8);
      v27 = OUTLINED_FUNCTION_29_7();
      if (!if_testgt_v_i(v27, v28, v29, v30, v31, v32, v33, v34))
      {
        v35 = OUTLINED_FUNCTION_29_7();
        move_i(v35, v36, v37);
      }

LABEL_12:
      lpta_rpta_loadp(v1, v54, v53);
      WORD1(v55) = 8;
      insert_2ptv();
      if (!v38)
      {
LABEL_13:
        if (!forto_adv_r(v1, 1, 2, 9, 7, v54))
        {
LABEL_14:
          v4 = 0;
          goto LABEL_4;
        }
      }

LABEL_18:
      v46 = v1[13];
      if (v46)
      {
        v47 = OUTLINED_FUNCTION_21_10(v46);
      }

      else
      {
        v47 = OUTLINED_FUNCTION_27_8();
      }

      switch(v47)
      {
        case 1:
          goto LABEL_14;
        case 2:
          continue;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_8;
        case 5:
          goto LABEL_10;
        case 6:
          goto LABEL_15;
        case 7:
          if (!advance_tok(v1, v48, v49, v50))
          {
            goto LABEL_15;
          }

          goto LABEL_18;
        case 8:
          goto LABEL_12;
        case 9:
          goto LABEL_6;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v4 = 94;
LABEL_4:
  vretproc(v1);
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_18()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_8_16()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  return lpta_loadp_setscan_r(v32, &a32, 2);
}

uint64_t OUTLINED_FUNCTION_19_11()
{

  return npush_fld(v0, 2u, 5u);
}

uint64_t OUTLINED_FUNCTION_23_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void *OUTLINED_FUNCTION_25_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_18(v3, 0, a3);
}

void OUTLINED_FUNCTION_26_10(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return vback(v0, 0);
}

BOOL OUTLINED_FUNCTION_33_5(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 1, 2);
}

void *fence_19(uint64_t a1, int a2, uint64_t a3)
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

uint64_t word_level_rules(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = 0;
  v50[2] = 0;
  v51 = 0;
  OUTLINED_FUNCTION_0_19(a1, a2, a3, a4, a5, a6, a7, a8, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17], v49[18], v49[19], v49[20], v49[21], v49[22], v49[23], v49[24], v50[0], v50[1]);
  OUTLINED_FUNCTION_6_17();
  bzero(v57, v10);
  if (!setjmp(v57) && !ventproc(a1, v49, v56, v55, v54, v57))
  {
    v13 = OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_18_13(v13, v14);
    v15 = OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_21_11(v15, v16);
    v17 = OUTLINED_FUNCTION_11_17();
    push_ptr_init(v17, v18);
    v19 = OUTLINED_FUNCTION_13_17();
    push_ptr_init(v19, v20);
    fence_19(a1, 0, &null_str_5);
    v21 = OUTLINED_FUNCTION_1_18();
    startloop(v21, v22);
    v23 = OUTLINED_FUNCTION_2_18();
    lpta_loadpn(v23, v24);
    lpta_mover();
    v25 = OUTLINED_FUNCTION_23_11();
    lpta_storep(v25, v26, v27);
    v28 = OUTLINED_FUNCTION_14_15();
    lpta_loadpn(v28, v29);
    lpta_mover();
    v30 = OUTLINED_FUNCTION_11_17();
    lpta_storep(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_23_11();
    if (!forall_to_test(v33, v34, v50))
    {
LABEL_6:
      v35 = OUTLINED_FUNCTION_1_18();
      bspush_ca(v35);
      v36 = OUTLINED_FUNCTION_23_11();
      if (!lpta_loadp_setscan_r(v36, v37, 2) && !advance_tok(a1, v38, v39, v40))
      {
LABEL_8:
        savescptr(a1, 4, a1 + 1336);
LABEL_9:
        v41 = OUTLINED_FUNCTION_23_11();
        if (!is_spr(v41))
        {
          *(a1 + 3842) = 1;
        }

LABEL_11:
        v42 = OUTLINED_FUNCTION_1_18();
        starttest(v42, v43);
        OUTLINED_FUNCTION_3_18();
        if (v44)
        {
          v45 = OUTLINED_FUNCTION_1_18();
          starttest_e(v45, v46);
          por_symbolic_rules(a1, a1 + 1320, (a1 + 1336));
        }

LABEL_14:
        move_i(a1, a1 + 3840, 0);
LABEL_15:
        if (!forto_adv_upto_r(a1, 1, 2, 8, 2, a1 + 1320))
        {
LABEL_20:
          v53 = v51;
          *(a2 + 8) = v51;
          v11 = 0;
          goto LABEL_4;
        }
      }
    }

    v47 = *(a1 + 104);
    if (v47)
    {
      v48 = OUTLINED_FUNCTION_8_17(v47);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_22_11();
    }

    switch(v48)
    {
      case 1:
        goto LABEL_20;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_8;
      case 5:
        goto LABEL_11;
      case 6:
      case 7:
        goto LABEL_14;
      case 8:
        goto LABEL_6;
      default:
        break;
    }
  }

  v11 = 94;
LABEL_4:
  vretproc(a1);
  return v11;
}

uint64_t phrase_level_rules(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v28 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_19(a1, a2, a3, a4, a5, a6, a7, a8, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11], v20[12], v20[13], v20[14], v20[15], v20[16], v20[17], v20[18], v20[19], v20[20], v20[21], v20[22], v20[23], v21, v22, v23);
  OUTLINED_FUNCTION_6_17();
  bzero(v27, v10);
  if (setjmp(v27) || ventproc(a1, v20, v26, v25, v24, v27))
  {
    v11 = 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_18_13(v13, v14);
    v15 = OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_21_11(v15, v16);
    v17 = OUTLINED_FUNCTION_17_14();
    fence_19(v17, v18, v19);
    OUTLINED_FUNCTION_2_18();
    lang_phrase_level_rules();
    OUTLINED_FUNCTION_2_18();
    copy_stress_to_phones();
    v23 = v21;
    *(a2 + 8) = v21;
    v11 = 0;
  }

  vretproc(a1);
  return v11;
}

uint64_t copy_stress_to_phones()
{
  OUTLINED_FUNCTION_4_17();
  v89 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v79[0] = 0;
  v79[1] = 0;
  v80 = 0;
  v78 = 0;
  v77[0] = 0;
  v77[1] = 0;
  OUTLINED_FUNCTION_0_19(v1, v2, v3, v4, v5, v6, v7, v8, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1]);
  OUTLINED_FUNCTION_6_17();
  bzero(v88, v9);
  if (setjmp(v88) || ventproc(v0, &v51, v87, v86, v85, v88))
  {
LABEL_3:
    v10 = 94;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_21_11(v12, v13);
    v14 = OUTLINED_FUNCTION_11_17();
    OUTLINED_FUNCTION_18_13(v14, v15);
    LOWORD(v80) = 0;
    LODWORD(v79[0]) = -65529;
    LOWORD(v78) = -4;
    v16 = OUTLINED_FUNCTION_10_17();
    push_ptr_init(v16, v17);
    push_ptr_init(v0, v76);
    v18 = OUTLINED_FUNCTION_7_17();
    push_ptr_init(v18, v19);
    v20 = OUTLINED_FUNCTION_17_14();
    fence_19(v20, v21, v22);
    HIWORD(v78) = 0;
    v23 = OUTLINED_FUNCTION_1_18();
    startloop(v23, v24);
    v25 = OUTLINED_FUNCTION_2_18();
    lpta_loadpn(v25, v26);
    lpta_mover();
    v27 = OUTLINED_FUNCTION_10_17();
    lpta_storep(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_11_17();
    lpta_loadpn(v30, v31);
    lpta_mover();
    v32 = OUTLINED_FUNCTION_7_17();
    lpta_storep(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_10_17();
    if (!forall_to_test(v35, v36, &v74))
    {
LABEL_6:
      v37 = OUTLINED_FUNCTION_1_18();
      bspush_ca(v37);
      v38 = OUTLINED_FUNCTION_9_17();
      if (!lpta_loadp_setscan_r(v38, v39, 7) && !advance_tok(v0, v40, v41, v42) && !savetok(v0, v79))
      {
LABEL_9:
        OUTLINED_FUNCTION_19_12(4, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
LABEL_10:
        WORD1(v79[0]) = 0;
        v43 = OUTLINED_FUNCTION_11_17();
        copyvar(v43, v44, v45);
        v46 = OUTLINED_FUNCTION_5_17();
        lpta_rpta_loadp(v46, v47, v48);
        if (!mark_v(v0, 4, 8, &v78, 0))
        {
LABEL_11:
          if (!forto_adv_upto_r(v0, 1, 2, 5, 7, v77))
          {
            v10 = 0;
            goto LABEL_4;
          }
        }
      }
    }

    v49 = *(v0 + 104);
    if (v49)
    {
      v50 = OUTLINED_FUNCTION_8_17(v49);
    }

    else
    {
      v50 = OUTLINED_FUNCTION_22_11();
    }

    v10 = 0;
    switch(v50)
    {
      case 1:
        break;
      case 2:
        goto LABEL_10;
      case 3:
        goto LABEL_11;
      case 4:
        goto LABEL_9;
      case 5:
        goto LABEL_6;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v0);
  return v10;
}

uint64_t build_words()
{
  OUTLINED_FUNCTION_4_17();
  v98 = *MEMORY[0x277D85DE8];
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  OUTLINED_FUNCTION_0_19(v1, v2, v3, v4, v5, v6, v7, v8, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  OUTLINED_FUNCTION_6_17();
  bzero(v97, v9);
  if (setjmp(v97) || ventproc(v0, &v61, v96, v95, v94, v97))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_21_11(v0, &v92);
    OUTLINED_FUNCTION_18_13(v0, &v90);
    v11 = OUTLINED_FUNCTION_9_17();
    push_ptr_init(v11, v12);
    push_ptr_init(v0, &v86);
    v13 = OUTLINED_FUNCTION_13_17();
    push_ptr_init(v13, v14);
    fence_19(v0, 0, &null_str_5);
    if (*(v0 + 3842) == 1)
    {
      v89 = v93;
      v15 = OUTLINED_FUNCTION_1_18();
      starttest_l(v15, v16);
      v17 = OUTLINED_FUNCTION_9_17();
      if (!lpta_loadp_setscan_r(v17, v18, 4))
      {
LABEL_8:
        while (!advance_tok(v0, v19, v20, v21))
        {
          v22 = OUTLINED_FUNCTION_10_17();
          bspush_ca_scan(v22, v23);
        }

        while (1)
        {
          v51 = *(v0 + 104);
          if (v51)
          {
            v34 = OUTLINED_FUNCTION_8_17(v51);
          }

          else
          {
            v34 = OUTLINED_FUNCTION_22_11();
          }

          switch(v34)
          {
            case 1:
              goto LABEL_13;
            case 2:
              goto LABEL_11;
            case 3:
              OUTLINED_FUNCTION_19_12(3, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
              goto LABEL_11;
            case 4:
              goto LABEL_8;
            case 5:
              goto LABEL_12;
            case 6:
              goto LABEL_23;
            case 7:
              goto LABEL_22;
            case 8:
              goto LABEL_29;
            case 9:
              v52 = OUTLINED_FUNCTION_10_17();
              v34 = forto_adv_upto_r(v52, v53, 8, 14, 1, &v88);
              if (!v34)
              {
                goto LABEL_22;
              }

              continue;
            case 10:
              OUTLINED_FUNCTION_19_12(10, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
LABEL_29:
              OUTLINED_FUNCTION_5_17();
              insert_word();
              break;
            case 11:
              goto LABEL_25;
            case 12:
              break;
            case 13:
              goto LABEL_15;
            case 14:
              goto LABEL_16;
            case 15:
              goto LABEL_24;
            default:
              goto LABEL_3;
          }

          forall_cont_from();
LABEL_15:
          if (!forall_to_test(v0, &v88, &v84))
          {
LABEL_16:
            v48 = OUTLINED_FUNCTION_1_18();
            bspush_ca(v48);
            v49 = OUTLINED_FUNCTION_9_17();
            if (!lpta_loadp_setscan_r(v49, v50, 1))
            {
LABEL_25:
              while (!testFldeq(v0, 1u, 3, 1) && !advance_tok(v0, v56, v57, v58))
              {
                v59 = OUTLINED_FUNCTION_10_17();
                bspush_ca_scan(v59, v60);
              }
            }
          }
        }
      }

LABEL_11:
      OUTLINED_FUNCTION_5_17();
      insert_word();
LABEL_12:
      *(v0 + 3842) = 0;
    }

    else
    {
LABEL_13:
      v24 = fence_19(v0, 1, &string_5_0);
      *(v0 + 136) = 1;
      v32 = OUTLINED_FUNCTION_16_15(v24, v25, v26, v27, v28, v29, v30, v31, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
      addfence(v32, v33);
      OUTLINED_FUNCTION_3_18();
      if (!v39)
      {
        v40 = OUTLINED_FUNCTION_1_18();
        startloop(v40, v41);
        lpta_loadpn(v0, &v92);
        lpta_mover();
        v42 = OUTLINED_FUNCTION_9_17();
        lpta_storep(v42, v43, v44);
        lpta_loadpn(v0, &v90);
        lpta_mover();
        v45 = OUTLINED_FUNCTION_13_17();
        lpta_storep(v45, v46, v47);
        goto LABEL_15;
      }

LABEL_22:
      *(v0 + 136) = 1;
      v54 = OUTLINED_FUNCTION_16_15(v34, v19, v20, v21, v35, v36, v37, v38, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
      remfence(v54, v55);
    }

LABEL_23:
    reset_word_vals(v0);
LABEL_24:
    vretproc(v0);
    return 0;
  }
}

uint64_t insert_word()
{
  OUTLINED_FUNCTION_4_17();
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = 0;
  OUTLINED_FUNCTION_0_19(v1, v2, v3, v4, v5, v6, v7, v8, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17], v40[18], v40[19], v40[20], v40[21], v40[22], v40[23], v41, v42, v43);
  OUTLINED_FUNCTION_6_17();
  bzero(v49, v9);
  if (setjmp(v49) || ventproc(v0, v40, v48, v47, v46, v49))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_21_11(v11, v12);
  v13 = OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_18_13(v13, v14);
  v15 = OUTLINED_FUNCTION_13_17();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_17_14();
  fence_19(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_2_18();
  lpta_rpta_loadp(v20, v21, &v42);
  insert_2ptv();
  if (v22 || (v23 = OUTLINED_FUNCTION_5_17(), lpta_rpta_loadp(v23, v24, v25), insert_2ptv(), v26))
  {
    v27 = 0;
  }

  else
  {
    v35 = OUTLINED_FUNCTION_1_18();
    starttest(v35, v36);
    OUTLINED_FUNCTION_1_18();
    bspush_ca_boa();
    v37 = OUTLINED_FUNCTION_9_17();
    v27 = lpta_loadp_setscan_l(v37, v38, v39) == 0;
  }

  v28 = *(v0 + 104);
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_8_17(v28);
  }

  else
  {
    v29 = vback(v0, v27);
  }

  switch(v29)
  {
    case 1:
      goto LABEL_15;
    case 3:
LABEL_16:
      vretproc(v0);
      return 0;
    case 2:
      bspop_boa(v0);
      *(v0 + 168) = 1;
      *(v0 + 144) = v45;
      *(v0 + 128) = 0;
      v30 = OUTLINED_FUNCTION_9_17();
      lpta_loadpn(v30, v31);
      OUTLINED_FUNCTION_17_14();
      lpta_ctxtl();
      v32 = OUTLINED_FUNCTION_13_17();
      lpta_storep(v32, v33, v34);
      *(v0 + 136) = 1;
      *(v0 + 112) = v41;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_17_14();
      proj_r();
LABEL_15:
      *(v0 + 136) = 1;
      *(v0 + 112) = v45;
      *(v0 + 128) = 0;
      proj_def_mult(v0, 6u, &_MergedGlobals_13, &v44);
      *(v0 + 136) = 1;
      *(v0 + 112) = v43;
      *(v0 + 128) = 0;
      proj_def_mult(v0, 6u, &unk_2806BB1C1, &v42);
      init_word(v0);
      goto LABEL_16;
  }

LABEL_3:
  vretproc(v0);
  return 94;
}

uint64_t reset_word_vals(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v31[23] = 0;
  v31[24] = 0;
  bzero(v31, 0xB8uLL);
  OUTLINED_FUNCTION_6_17();
  bzero(v35, v2);
  if (setjmp(v35) || ventproc(a1, v31, v34, v33, v32, v35))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v4 = OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_18_13(v4, v5);
  fence_19(a1, 0, &null_str_5);
  v6 = OUTLINED_FUNCTION_1_18();
  starttest(v6, v7);
  v8 = OUTLINED_FUNCTION_1_18();
  bspush_ca(v8);
  while (2)
  {
    OUTLINED_FUNCTION_3_18();
    if (!v17)
    {
LABEL_10:
      v21 = *(a1 + 104);
      if (v21)
      {
        v9 = OUTLINED_FUNCTION_8_17(v21);
      }

      else
      {
        v9 = OUTLINED_FUNCTION_22_11();
      }

      switch(v9)
      {
        case 1:
          goto LABEL_8;
        case 2:
        case 4:
          v22 = OUTLINED_FUNCTION_1_18();
          bspush_ca(v22);
          continue;
        case 3:
          goto LABEL_7;
        case 5:
          continue;
        case 6:
          goto LABEL_16;
        case 7:
          goto LABEL_9;
        case 8:
          goto LABEL_15;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_7:
  OUTLINED_FUNCTION_20_11(v9, v10, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_12_17();
LABEL_8:
  v18 = OUTLINED_FUNCTION_1_18();
  starttest(v18, v19);
  v20 = OUTLINED_FUNCTION_1_18();
  bspush_ca(v20);
LABEL_9:
  OUTLINED_FUNCTION_3_18();
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_15:
  OUTLINED_FUNCTION_20_11(v9, v10, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_20_11(v23, v24, v25, v26, v27, v28, v29, v30);
  OUTLINED_FUNCTION_12_17();
LABEL_16:
  vretproc(a1);
  return 0;
}

uint64_t init_word(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  bzero(v36, 0xB8uLL);
  OUTLINED_FUNCTION_6_17();
  bzero(v42, v2);
  if (setjmp(v42) || ventproc(a1, v36, v41, v40, v39, v42))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v38 = 0uLL;
  LODWORD(v37) = -65534;
  fence_19(a1, 0, &null_str_5);
  copyvar(a1, &v37, (a1 + 3600));
  OUTLINED_FUNCTION_3_18();
  if (!v4)
  {
    copyvar(a1, (a1 + 3600), (a1 + 3696));
  }

  while (2)
  {
    *(a1 + 3616) = v38 + 1;
    v5 = OUTLINED_FUNCTION_10_17();
    starttest(v5, v6);
    v7 = OUTLINED_FUNCTION_11_17();
    bspush_ca(v7);
LABEL_8:
    OUTLINED_FUNCTION_3_18();
    if (!v4)
    {
LABEL_16:
      v33 = *(a1 + 104);
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_8_17(v33);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_22_11();
      }

      switch(v34)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_11;
        case 3:
          bspush_ca(a1);
          goto LABEL_8;
        case 4:
          goto LABEL_10;
        case 5:
          v35 = OUTLINED_FUNCTION_15_15();
          bspush_ca(v35);
          goto LABEL_8;
        case 6:
          goto LABEL_8;
        case 7:
          goto LABEL_14;
        case 8:
          goto LABEL_23;
        case 9:
          goto LABEL_15;
        case 10:
          goto LABEL_22;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_10:
  WORD1(v37) = 10;
  v8 = OUTLINED_FUNCTION_2_18();
  npush_v(v8, v9, v10, v11, v12, v13, v14, v15);
  *(a1 + 3602) = 10;
  npop(a1, (a1 + 3600));
LABEL_11:
  OUTLINED_FUNCTION_3_18();
  if (v4)
  {
    WORD1(v37) = 1;
    v16 = OUTLINED_FUNCTION_2_18();
    npush_v(v16, v17, v18, v19, v20, v21, v22, v23);
    *(a1 + 3602) = 1;
    npop(a1, (a1 + 3600));
  }

LABEL_14:
  v24 = OUTLINED_FUNCTION_14_15();
  starttest(v24, v25);
  v26 = OUTLINED_FUNCTION_7_17();
  bspush_ca(v26);
LABEL_15:
  OUTLINED_FUNCTION_3_18();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_22:
  WORD1(v37) = 3;
  npush_v(a1, &v37, v27, v28, v29, v30, v31, v32);
  OUTLINED_FUNCTION_12_17();
LABEL_23:
  vretproc(a1);
  return 0;
}

uint64_t estimate_nsylls(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  OUTLINED_FUNCTION_4_17();
  v67 = *MEMORY[0x277D85DE8];
  v62[0] = 0;
  v62[1] = 0;
  v61[0] = 0;
  v61[1] = 0;
  v60 = 0;
  v59[0] = 0;
  v59[1] = 0;
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
  bzero(v52, 0xB8uLL);
  OUTLINED_FUNCTION_6_17();
  bzero(v66, v6);
  if (!setjmp(v66) && !ventproc(v4, v52, v65, v64, v63, v66))
  {
    OUTLINED_FUNCTION_21_11(v4, v62);
    OUTLINED_FUNCTION_18_13(v4, v61);
    get_parm(v4, &v60, a4, -4);
    push_ptr_init(v4, v59);
    push_ptr_init(v4, v58);
    push_ptr_init(v4, v57);
    push_ptr_init(v4, v56);
    push_ptr_init(v4, v55);
    push_ptr_init(v4, v54);
    push_ptr_init(v4, v53);
    fence_19(v4, 0, &null_str_5);
    OUTLINED_FUNCTION_3_18();
    if (v9)
    {
      goto LABEL_7;
    }

    while (2)
    {
      HIWORD(v60) = 0;
      startloop(v4, 2);
      lpta_loadpn(v4, v62);
      OUTLINED_FUNCTION_24_11();
      lpta_mover();
      v10 = OUTLINED_FUNCTION_7_17();
      lpta_storep(v10, v11, v12);
      lpta_loadpn(v4, v61);
      OUTLINED_FUNCTION_24_11();
      lpta_mover();
      lpta_storep(v4, v57, v13);
      v14 = OUTLINED_FUNCTION_7_17();
      if (forall_to_test(v14, v15, v57))
      {
        goto LABEL_24;
      }

LABEL_9:
      bspush_ca(v4);
      v16 = OUTLINED_FUNCTION_7_17();
      if (lpta_loadp_setscan_r(v16, v17, 2) || advance_tok(v4, v18, v19, v20))
      {
        goto LABEL_24;
      }

LABEL_11:
      savescptr(v4, 5, v58);
LABEL_12:
      OUTLINED_FUNCTION_3_18();
      if (!v9)
      {
        v21 = OUTLINED_FUNCTION_7_17();
        if (!lpta_loadp_setscan_r(v21, v22, 7) && !advance_tok(v4, v23, v24, v25))
        {
          startloop(v4, 7);
          v26 = OUTLINED_FUNCTION_7_17();
          lpta_loadpn(v26, v27);
          OUTLINED_FUNCTION_24_11();
          lpta_mover();
          lpta_storep(v4, v56, v28);
          lpta_loadpn(v4, v58);
          OUTLINED_FUNCTION_24_11();
          lpta_mover();
          v29 = OUTLINED_FUNCTION_14_15();
          lpta_storep(v29, v30, v31);
          if (forall_to_test(v4, v56, v55))
          {
            goto LABEL_24;
          }

LABEL_35:
          bspush_ca(v4);
          if (lpta_loadp_setscan_r(v4, v56, 7) || advance_tok(v4, v49, v50, v51))
          {
            goto LABEL_24;
          }

LABEL_28:
          c_assvar(v4, &v60);
          ++HIWORD(v60);
LABEL_29:
          if (forto_adv_upto_r(v4, 7, 8, 10, 7, v56))
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

LABEL_17:
      startloop(v4, 4);
      v32 = OUTLINED_FUNCTION_15_15();
      copyvar(v32, v33, v59);
      v34 = OUTLINED_FUNCTION_14_15();
      copyvar(v34, v35, v58);
      v36 = OUTLINED_FUNCTION_15_15();
      if (forall_to_test(v36, v37, v55))
      {
        goto LABEL_24;
      }

LABEL_18:
      bspush_ca(v4);
      v38 = OUTLINED_FUNCTION_15_15();
      if (!lpta_loadp_setscan_l(v38, v39, 4))
      {
LABEL_19:
        v40 = OUTLINED_FUNCTION_15_15();
        if (!lpta_loadp_setscan_r(v40, v41, 4) && !advanc(v4))
        {
LABEL_21:
          savescptr(v4, 14, v53);
          starttest_l(v4, 15);
          estimate_lang_nsylls(v4, &v60, v54);
          goto LABEL_22;
        }

LABEL_31:
        starttest(v4, 12);
        v44 = OUTLINED_FUNCTION_15_15();
        if (lpta_loadp_setscan_r(v44, v45, 4))
        {
LABEL_22:
          if (forto_adv_r(v4, 4, 11, 16, 4, v54))
          {
            goto LABEL_24;
          }

LABEL_23:
          if (forto_adv_upto_r(v4, 2, 3, 17, 2, v59))
          {
            goto LABEL_24;
          }

LABEL_7:
          v7 = 0;
          a4[1] = HIWORD(v60);
          goto LABEL_4;
        }

        if (!testFldeq(v4, 4u, 1, 2) && !advance_tok(v4, v46, v47, v48))
        {
          c_assvar(v4, &v60);
          ++HIWORD(v60);
          goto LABEL_22;
        }
      }

LABEL_24:
      v42 = v4[13];
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_8_17(v42);
      }

      else
      {
        v43 = vback(v4, 0);
      }

      switch(v43)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          goto LABEL_12;
        case 4:
        case 7:
          goto LABEL_23;
        case 5:
          goto LABEL_11;
        case 6:
          goto LABEL_17;
        case 8:
          goto LABEL_28;
        case 9:
          goto LABEL_29;
        case 10:
          goto LABEL_35;
        case 11:
          goto LABEL_19;
        case 12:
        case 15:
          goto LABEL_22;
        case 13:
          goto LABEL_31;
        case 14:
          goto LABEL_21;
        case 16:
          goto LABEL_18;
        case 17:
          goto LABEL_9;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v7 = 94;
LABEL_4:
  vretproc(v4);
  return v7;
}

void OUTLINED_FUNCTION_0_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_12_17()
{
  *(v0 + 3602) = v1;

  npop(v0, (v0 + 3600));
}

uint64_t OUTLINED_FUNCTION_16_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v39 + 112) = a39;
  *(v39 + 128) = 0;
  return v39;
}

void OUTLINED_FUNCTION_18_13(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

double OUTLINED_FUNCTION_19_12@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  *&result = savescptr(v26, a1, va).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 3698) = v9;

  return npush_v(v8, (v8 + 3696), a3, a4, a5, a6, a7, a8);
}

void OUTLINED_FUNCTION_21_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return vback(v0, 0);
}

void *fence_20(uint64_t a1, int a2, uint64_t a3)
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

void token_to_number(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_6_18();
  v66 = *MEMORY[0x277D85DE8];
  v60 = 0uLL;
  v61 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  OUTLINED_FUNCTION_26_11();
  bzero(v55, v5);
  OUTLINED_FUNCTION_25_11();
  bzero(v65, v6);
  if (!setjmp(v65) && !ventproc(v3, v55, v64, v63, v62, v65))
  {
    v60 = *v4;
    v61 = *(v4 + 2);
    LODWORD(v60) = -65535;
    v7 = OUTLINED_FUNCTION_30_7();
    get_parm(v7, v8, v9, -4);
    WORD2(v58) = 0;
    LODWORD(v58) = 0;
    LODWORD(v56) = -65535;
    fence_20(v3, 0, &_MergedGlobals_1_1);
    v10 = OUTLINED_FUNCTION_14_16();
    starttest(v10, v11);
    OUTLINED_FUNCTION_27_9();
    settvar_s();
    v12 = OUTLINED_FUNCTION_27_9();
    if (testeq_tvars(v12, v13, v14))
    {
      while (2)
      {
        v15 = *(v3 + 104);
        if (v15)
        {
          v16 = OUTLINED_FUNCTION_33_6(v15);
        }

        else
        {
          v16 = OUTLINED_FUNCTION_51_2();
        }

        switch(v16)
        {
          case 1:
            starttest(v3, 3);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v17 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v17, v18, v19))
            {
              continue;
            }

            v54 = 1;
            goto LABEL_29;
          case 2:
            v54 = HIWORD(v59);
            goto LABEL_30;
          case 3:
            starttest(v3, 4);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v28 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v28, v29, v30))
            {
              continue;
            }

            v54 = 2;
            goto LABEL_29;
          case 4:
            starttest(v3, 5);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v25 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v25, v26, v27))
            {
              continue;
            }

            v54 = 3;
            goto LABEL_29;
          case 5:
            v49 = OUTLINED_FUNCTION_49_2();
            starttest(v49, v50);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v51 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v51, v52, v53))
            {
              continue;
            }

            v54 = 4;
            goto LABEL_29;
          case 6:
            v44 = OUTLINED_FUNCTION_53_2();
            starttest(v44, v45);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v46 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v46, v47, v48))
            {
              continue;
            }

            v54 = 5;
            goto LABEL_29;
          case 7:
            starttest(v3, 8);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v31 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v31, v32, v33))
            {
              continue;
            }

            v54 = 6;
            goto LABEL_29;
          case 8:
            v34 = OUTLINED_FUNCTION_82_2();
            starttest(v34, v35);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v36 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v36, v37, v38))
            {
              continue;
            }

            v54 = 7;
            goto LABEL_29;
          case 9:
            v20 = OUTLINED_FUNCTION_27_9();
            starttest(v20, v21);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v22 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v22, v23, v24))
            {
              continue;
            }

            v54 = 8;
            goto LABEL_29;
          case 10:
            v39 = OUTLINED_FUNCTION_29_8();
            starttest(v39, v40);
            OUTLINED_FUNCTION_24_12();
            settvar_s();
            v41 = OUTLINED_FUNCTION_19_13();
            if (testeq_tvars(v41, v42, v43))
            {
              continue;
            }

            v54 = 9;
LABEL_29:
            HIWORD(v59) = v54;
            goto LABEL_30;
          default:
            goto LABEL_3;
        }
      }
    }

    v54 = 0;
    HIWORD(v59) = 0;
LABEL_30:
    OUTLINED_FUNCTION_62_2(v54);
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_70_2();
}

void string_to_short(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_31_7();
  v69 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  OUTLINED_FUNCTION_26_11();
  bzero(v50, v7);
  OUTLINED_FUNCTION_25_11();
  bzero(v68, v8);
  v9 = setjmp(v68);
  if (v9 || OUTLINED_FUNCTION_67_2(v9, v10, v11, v12, v13, v14, v15, v16, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68[0]))
  {
LABEL_3:
    vretproc(v4);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_73_2(v17, v18);
    v19 = OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_57_2(v19, v20);
    v21 = OUTLINED_FUNCTION_30_7();
    get_parm(v21, v22, v23, -4);
    LOWORD(v53) = -4;
    v24 = OUTLINED_FUNCTION_24_12();
    v26 = push_ptr_init(v24, v25);
    OUTLINED_FUNCTION_52_2(v26, v27, &_MergedGlobals_1_1);
    WORD1(v53) = 0;
    HIWORD(v53) = 0;
    v52 = v55;
    v28 = OUTLINED_FUNCTION_60_2();
    startloop(v28, v29);
    v30 = 1;
    OUTLINED_FUNCTION_77_2();
    while (2)
    {
      while (1)
      {
        v31 = OUTLINED_FUNCTION_60_2();
        bspush_ca(v31);
        v32 = OUTLINED_FUNCTION_24_12();
        lpta_loadpn(v32, v33);
        v34 = OUTLINED_FUNCTION_27_9();
        rpta_loadpn(v34, v35);
        if (compare_ptas(v4) || testneq(v4))
        {
          break;
        }

LABEL_12:
        v38 = OUTLINED_FUNCTION_24_12();
        token_to_digit(v38);
LABEL_13:
        HIWORD(v53) += WORD1(v53) * v30;
        v30 = (10 * v30);
        v39 = OUTLINED_FUNCTION_24_12();
        if (!lpta_loadp_setscan_l(v39, v40, 1))
        {
          v44 = advance_tok(v4, v41, v42, v43);
          v45 = v30;
          if (!v44)
          {
LABEL_17:
            v30 = v45;
            v46 = OUTLINED_FUNCTION_53_2();
            savescptr(v46, v47, &v51);
          }
        }

LABEL_18:
        v48 = OUTLINED_FUNCTION_60_2();
        while_iterate(v48, v49, v6);
      }

      v36 = v4[13];
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_33_6(v36);
      }

      else
      {
        v37 = vback(v4, 0);
      }

      switch(v37)
      {
        case 1:
          *(v5 + 2) = HIWORD(v53);
          vretproc(v4);
          break;
        case 2:
          goto LABEL_12;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_18;
        case 5:
          v45 = v30;
          goto LABEL_17;
        case 6:
          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_70_2();
}

uint64_t token_to_digit(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  v97 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v63, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, SHIDWORD(v89), v90, v91);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v64, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_8_18(v19, &v66, v20, v21, v22, v23, v24, v25, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, SHIDWORD(v92), v93, SWORD2(v93), SHIWORD(v93), v94, SWORD2(v94), SBYTE6(v94), SHIBYTE(v94), v95, v96))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -4);
    fence_20(v1, 0, &_MergedGlobals_1_1);
    v33 = OUTLINED_FUNCTION_24_12();
    if (lpta_loadp_setscan_l(v33, v34, 1) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
    {
      v35 = OUTLINED_FUNCTION_21_12();
      if (lpta_loadp_setscan_l(v35, v36, v37) || test_string_s())
      {
        v38 = OUTLINED_FUNCTION_21_12();
        if (lpta_loadp_setscan_l(v38, v39, v40) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
        {
          v41 = OUTLINED_FUNCTION_21_12();
          if (lpta_loadp_setscan_l(v41, v42, v43) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
          {
            v44 = OUTLINED_FUNCTION_21_12();
            if (lpta_loadp_setscan_l(v44, v45, v46) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
            {
              v47 = OUTLINED_FUNCTION_21_12();
              if (lpta_loadp_setscan_l(v47, v48, v49) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
              {
                v50 = OUTLINED_FUNCTION_21_12();
                if (lpta_loadp_setscan_l(v50, v51, v52) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
                {
                  v53 = OUTLINED_FUNCTION_21_12();
                  if (lpta_loadp_setscan_l(v53, v54, v55) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
                  {
                    v56 = OUTLINED_FUNCTION_21_12();
                    if (lpta_loadp_setscan_l(v56, v57, v58) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
                    {
                      v59 = OUTLINED_FUNCTION_21_12();
                      if (lpta_loadp_setscan_l(v59, v60, v61))
                      {
                        goto LABEL_3;
                      }

                      OUTLINED_FUNCTION_9_18();
                      if (test_string_s())
                      {
                        goto LABEL_3;
                      }

                      v62 = 9;
                    }

                    else
                    {
                      v62 = 8;
                    }
                  }

                  else
                  {
                    v62 = 7;
                  }
                }

                else
                {
                  v62 = 6;
                }
              }

              else
              {
                v62 = 5;
              }
            }

            else
            {
              v62 = 4;
            }
          }

          else
          {
            v62 = 3;
          }
        }

        else
        {
          v62 = 2;
        }
      }

      else
      {
        v62 = 1;
      }
    }

    else
    {
      v62 = 0;
    }

    HIWORD(v89) = v62;
    OUTLINED_FUNCTION_62_2(v62);
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

void string_to_number(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_31_7();
  v61 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  OUTLINED_FUNCTION_15_16(v7, v8, v9, v10, v11, v12, v13, v14, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10], v47[11], v47[12], v47[13], v47[14], v47[15], v47[16], v47[17], v47[18], v47[19], v47[20], v47[21], v47[22], v48, v49);
  OUTLINED_FUNCTION_25_11();
  bzero(v60, v15);
  if (setjmp(v60) || ventproc(v4, v47, v59, v58, v57, v60))
  {
LABEL_3:
    vretproc(v4);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_73_2(v16, v17);
    OUTLINED_FUNCTION_57_2(v4, &v53);
    v18 = OUTLINED_FUNCTION_30_7();
    get_parm(v18, v19, v20, -3);
    LOWORD(v50) = -4;
    v21 = OUTLINED_FUNCTION_24_12();
    v23 = push_ptr_init(v21, v22);
    OUTLINED_FUNCTION_52_2(v23, v24, &_MergedGlobals_1_1);
    HIWORD(v50) = 0;
    v52 = 0;
    v49 = v54;
    v25 = 1;
    v26 = OUTLINED_FUNCTION_82_2();
    startloop(v26, v27);
    OUTLINED_FUNCTION_77_2();
    while (2)
    {
      while (1)
      {
        v28 = OUTLINED_FUNCTION_60_2();
        bspush_ca(v28);
        v29 = OUTLINED_FUNCTION_24_12();
        lpta_loadpn(v29, v30);
        v31 = OUTLINED_FUNCTION_27_9();
        rpta_loadpn(v31, v32);
        if (compare_ptas(v4) || testneq(v4))
        {
          break;
        }

LABEL_12:
        v35 = OUTLINED_FUNCTION_24_12();
        token_to_digit(v35);
LABEL_13:
        v52 += v25 * SHIWORD(v50);
        v25 *= 10;
        v36 = OUTLINED_FUNCTION_24_12();
        if (!lpta_loadp_setscan_l(v36, v37, 1))
        {
          v41 = advance_tok(v4, v38, v39, v40);
          v42 = v25;
          if (!v41)
          {
LABEL_17:
            v25 = v42;
            v43 = OUTLINED_FUNCTION_53_2();
            savescptr(v43, v44, &v48);
          }
        }

LABEL_18:
        v45 = OUTLINED_FUNCTION_60_2();
        while_iterate(v45, v46, v6);
      }

      v33 = v4[13];
      if (v33)
      {
        v4[13] = 0;
        v34 = v33;
      }

      else
      {
        v34 = vback(v4, 0);
      }

      switch(v34)
      {
        case 1:
          *(v5 + 8) = v52;
          vretproc(v4);
          break;
        case 2:
          goto LABEL_12;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_18;
        case 5:
          v42 = v25;
          goto LABEL_17;
        case 6:
          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_70_2();
}

uint64_t absval(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  v37 = *MEMORY[0x277D85DE8];
  HIDWORD(v25) = 0;
  v26 = 0;
  OUTLINED_FUNCTION_26_11();
  bzero(v24, v4);
  OUTLINED_FUNCTION_25_11();
  bzero(v36, v5);
  v6 = setjmp(v36);
  if (v6 || OUTLINED_FUNCTION_35_4(v6, v24, v7, v8, v9, v10, v11, v12, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v24[17], v24[18], v24[19], v24[20], v24[21], v24[22], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]))
  {
    v13 = 94;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_38_4();
    get_parm(v15, v16, v3, -4);
    v17 = OUTLINED_FUNCTION_30_7();
    get_parm(v17, v18, v19, -4);
    OUTLINED_FUNCTION_52_2(v20, v21, &_MergedGlobals_1_1);
    LOWORD(v22) = HIWORD(v26);
    if (v26 < 0)
    {
      v22 = -SHIWORD(v26);
    }

    HIWORD(v25) = v22;
    *(v2 + 2) = v22;
    v13 = 0;
  }

  vretproc(v1);
  return v13;
}

uint64_t find_last_syll()
{
  OUTLINED_FUNCTION_7_18();
  v100 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_18(v3, v4, v5, v6, v7, v8, v9, v10, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v96, v97);
  OUTLINED_FUNCTION_25_11();
  bzero(v99, v11);
  if (setjmp(v99) || (OUTLINED_FUNCTION_18_14(), ventproc(v0, v12, v13, v14, v15, v99)))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_10_18();
    get_parm(v17, v18, v19, -6);
    v20 = OUTLINED_FUNCTION_38_4();
    OUTLINED_FUNCTION_50_2(v20, v21);
    v22 = OUTLINED_FUNCTION_30_7();
    get_parm(v22, v23, v24, -6);
    OUTLINED_FUNCTION_52_2(v25, v26, &_MergedGlobals_1_1);
    v27 = OUTLINED_FUNCTION_60_2();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_29_8();
    v31 = lpta_loadp_setscan_l(v29, v30, 4);
    v32 = 0;
    LODWORD(v33) = 0;
    if (v31)
    {
      goto LABEL_18;
    }

LABEL_5:
    v34 = v32;
    bspush_ca_scan(v0, 2);
    OUTLINED_FUNCTION_16_16();
    bspush_ca_scan_boa();
    v35 = OUTLINED_FUNCTION_42_2();
    if (testFldeq(v35, v36, 1, 2))
    {
      v37 = v34;
    }

    else
    {
      v37 = 1;
    }

    while (1)
    {
      v38 = *(v0 + 104);
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_33_6(v38);
        v33 = v40;
      }

      else
      {
        v39 = vback(v0, v37);
        v33 = 0;
      }

      v32 = v33;
      switch(v39)
      {
        case 1:
          goto LABEL_18;
        case 2:
          v41 = OUTLINED_FUNCTION_42_2();
          v43 = testFldeq(v41, v42, 1, 2);
          v37 = v33;
          if (v43)
          {
            continue;
          }

          v46 = advance_tok(v0, v33, v44, v45);
          v37 = v33;
          if (v46)
          {
            continue;
          }

          break;
        case 3:
          bspop_boa(v0);
          v50 = advance_tok(v0, v47, v48, v49);
          v32 = v33;
          v37 = v33;
          if (!v50)
          {
            goto LABEL_5;
          }

          continue;
        case 4:
          goto LABEL_5;
        case 5:
          break;
        case 6:
          goto LABEL_22;
        case 7:
          goto LABEL_20;
        case 8:
          goto LABEL_21;
        default:
          goto LABEL_3;
      }

      v51 = OUTLINED_FUNCTION_69_2();
      savescptr(v51, v52, v53);
LABEL_18:
      v54 = OUTLINED_FUNCTION_28_8();
      starttest(v54, v55);
      *(v0 + 136) = 1;
      OUTLINED_FUNCTION_13_18();
      if (lpta_tstctxtl())
      {
        break;
      }

      v56 = OUTLINED_FUNCTION_36_4();
      setscan_r(v56, v57, v58);
      if (v59)
      {
        break;
      }

LABEL_20:
      v60 = OUTLINED_FUNCTION_69_2();
      savescptr(v60, v61, v62);
      v66 = advance_tok(v0, v63, v64, v65);
      v37 = v33;
      if (!v66)
      {
LABEL_21:
        v67 = OUTLINED_FUNCTION_63_2();
        savescptr(v67, v68, v69);
        break;
      }
    }

LABEL_22:
    *(v2 + 8) = v98;
    *(v1 + 8) = v95;
    vretproc(v0);
    return 0;
  }
}

void get_numRootSylls(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71_2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v61 = *MEMORY[0x277D85DE8];
  v56[0] = 0;
  v56[1] = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  memset(v50, 0, sizeof(v50));
  v49[0] = 0;
  v49[1] = 0;
  OUTLINED_FUNCTION_26_11();
  bzero(v48, v10);
  OUTLINED_FUNCTION_25_11();
  bzero(v60, v11);
  if (!setjmp(v60) && !ventproc(v9, v48, v59, v58, v57, v60))
  {
    OUTLINED_FUNCTION_73_2(v9, v56);
    v12 = OUTLINED_FUNCTION_10_18();
    get_parm(v12, v13, v14, -6);
    v15 = OUTLINED_FUNCTION_43_2();
    get_parm(v15, v16, v17, -4);
    v18 = OUTLINED_FUNCTION_41_2();
    get_parm(v18, v19, v5, -6);
    v20 = OUTLINED_FUNCTION_24_12();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_49_2();
    push_ptr_init(v22, v23);
    v24 = OUTLINED_FUNCTION_53_2();
    v26 = push_ptr_init(v24, v25);
    OUTLINED_FUNCTION_52_2(v26, v27, &_MergedGlobals_1_1);
    HIWORD(v53) = 0;
    OUTLINED_FUNCTION_10_18();
    find_last_syll();
    while (2)
    {
      v28 = OUTLINED_FUNCTION_82_2();
      startloop(v28, v29);
      v30 = OUTLINED_FUNCTION_49_2();
      copyvar(v30, v31, v56);
      v32 = OUTLINED_FUNCTION_53_2();
      copyvar(v32, v33, &v51);
      v34 = OUTLINED_FUNCTION_49_2();
      if (!forall_to_test(v34, v35, v49))
      {
LABEL_6:
        v36 = OUTLINED_FUNCTION_24_12();
        bspush_ca(v36);
        v37 = OUTLINED_FUNCTION_49_2();
        if (!lpta_loadp_setscan_r(v37, v38, 7) && !advance_tok(v9, v39, v40, v41))
        {
LABEL_8:
          c_assvar(v9, &v53);
          ++HIWORD(v53);
LABEL_9:
          v42 = OUTLINED_FUNCTION_54_2();
          if (!forto_adv_r(v42, v43, 3, 5, 7, v50))
          {
LABEL_15:
            *(v7 + 2) = HIWORD(v53);
            *(v5 + 8) = v52;
            break;
          }
        }
      }

      v44 = v9[13];
      if (v44)
      {
        OUTLINED_FUNCTION_33_6(v44);
      }

      else
      {
        vback(v9, 0);
      }

      OUTLINED_FUNCTION_56_2();
      if (!(!v47 & v46))
      {
        switch(v45)
        {
          case 1:
            goto LABEL_15;
          case 2:
            goto LABEL_8;
          case 3:
            goto LABEL_9;
          case 4:
            goto LABEL_6;
          default:
            continue;
        }
      }

      break;
    }
  }

  vretproc(v9);
  OUTLINED_FUNCTION_70_2();
}

uint64_t mark_syll_stress()
{
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v10, v11);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v12, v13, v14, v15, v16))
    {
      v17 = OUTLINED_FUNCTION_10_18();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_0_20();
      get_parm(v20, v21, v22, -6);
      v23 = OUTLINED_FUNCTION_11_18();
      get_parm(v23, v24, v25, -4);
      OUTLINED_FUNCTION_52_2(v26, v27, &_MergedGlobals_1_1);
      v28 = OUTLINED_FUNCTION_10_18();
      lpta_rpta_loadp(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_36_4();
      if (mark_v(v31, v32, 0, &v65, 0) || (v33 = OUTLINED_FUNCTION_69_2(), lpta_rpta_loadp(v33, v34, v35), v36 = OUTLINED_FUNCTION_42_2(), mark_v(v36, v37, 8, v38, 0)))
      {
        if (*(v0 + 104))
        {
          *(v0 + 104) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_51_2();
        }
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_47_2();
}

uint64_t insert_stress()
{
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, SHIDWORD(v52), v53, v54);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v10, v11);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v12, v13, v14, v15, v16))
    {
      v18 = OUTLINED_FUNCTION_80_2();
      OUTLINED_FUNCTION_57_2(v18, v19);
      v20 = OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_50_2(v20, v21);
      v22 = OUTLINED_FUNCTION_11_18();
      get_parm(v22, v23, v24, -4);
      OUTLINED_FUNCTION_52_2(v25, v26, &_MergedGlobals_1_1);
      *(v0 + 136) = 1;
      *(v0 + 112) = v56;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_36_4();
      lpta_ctxtl();
      *(v0 + 168) = 1;
      *(v0 + 144) = v55;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_36_4();
      rpta_ctxtr();
      OUTLINED_FUNCTION_36_4();
      insert_2ptv();
      if (!v27)
      {
        vretproc(v0);
        return 0;
      }

      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }
  }

  vretproc(v0);
  return 94;
}

uint64_t insert_penult_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  v100 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_15(v3, v4, v5, v6, v7, v8, v9, v10, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94[0], v94[1], v95[0], v95[1], v96, v97, v98, v99);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_65_2();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v19 = OUTLINED_FUNCTION_4_18();
      get_parm(v19, v20, v21, -6);
      v22 = OUTLINED_FUNCTION_30_7();
      get_parm(v22, v23, v24, -4);
      v25 = OUTLINED_FUNCTION_46_2();
      push_ptr_init(v25, v26);
      v27 = OUTLINED_FUNCTION_59_2();
      push_ptr_init(v27, v28);
      fence_20(v1, 0, &_MergedGlobals_1_1);
      v29 = OUTLINED_FUNCTION_44_2();
      fence_20(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_54_2();
      starttest(v32, v33);
      v34 = OUTLINED_FUNCTION_24_12();
      if (!lpta_loadp_setscan_l(v34, v35, 7))
      {
        v36 = advanc(v1);
        if (!v36)
        {
          goto LABEL_6;
        }
      }

LABEL_8:
      while (1)
      {
        lpta_rpta_loadp(v1, v95, v94);
        OUTLINED_FUNCTION_36_4();
        insert_2ptv();
        if (!v44)
        {
          break;
        }

        while (1)
        {
          v45 = v1[13];
          v36 = v45 ? OUTLINED_FUNCTION_33_6(v45) : OUTLINED_FUNCTION_51_2();
          if (v36 == 1)
          {
            break;
          }

          if (v36 != 2)
          {
            if (v36 == 3)
            {
LABEL_7:
              savescptr(v1, 3, v95);
              goto LABEL_8;
            }

            goto LABEL_3;
          }

LABEL_6:
          OUTLINED_FUNCTION_58_2(v36, v37, v38, v39, v40, v41, v42, v43, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93);
          if (!advanc(v1))
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_81_2();
}

uint64_t insert_final_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_23_12(v3, v4, v5, v6, v7, v8, v9, v10, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v92);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v18 = OUTLINED_FUNCTION_4_18();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_30_7();
      get_parm(v21, v22, v23, -4);
      v24 = OUTLINED_FUNCTION_59_2();
      push_ptr_init(v24, v25);
      fence_20(v1, 0, &_MergedGlobals_1_1);
      v26 = OUTLINED_FUNCTION_14_16();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_24_12();
      if (!lpta_loadp_setscan_l(v28, v29, 7))
      {
        v30 = advanc(v1);
        if (!v30)
        {
          goto LABEL_5;
        }
      }

      do
      {
LABEL_6:
        v38 = OUTLINED_FUNCTION_48_2();
        lpta_rpta_loadp(v38, v39, v93);
        OUTLINED_FUNCTION_36_4();
        insert_2ptv();
        if (!v40)
        {
          goto LABEL_12;
        }

        v41 = v1[13];
        if (v41)
        {
          v30 = OUTLINED_FUNCTION_33_6(v41);
        }

        else
        {
          v30 = OUTLINED_FUNCTION_51_2();
        }
      }

      while (v30 == 1);
      if (v30 == 2)
      {
LABEL_5:
        OUTLINED_FUNCTION_58_2(v30, v31, v32, v33, v34, v35, v36, v37, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90);
        goto LABEL_6;
      }
    }
  }

LABEL_12:
  vretproc(v1);
  return OUTLINED_FUNCTION_47_2();
}

uint64_t insert_initial_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_68_2();
  v92 = 0;
  OUTLINED_FUNCTION_23_12(v3, v4, v5, v6, v7, v8, v9, v10, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, *v91, *&v91[8]);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v18 = OUTLINED_FUNCTION_4_18();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_30_7();
      get_parm(v21, v22, v23, -4);
      v24 = OUTLINED_FUNCTION_59_2();
      push_ptr_init(v24, v25);
      fence_20(v1, 0, &_MergedGlobals_1_1);
      v26 = OUTLINED_FUNCTION_14_16();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_24_12();
      if (!lpta_loadp_setscan_r(v28, v29, 7))
      {
        v30 = advanc(v1);
        if (!v30)
        {
          goto LABEL_5;
        }
      }

      do
      {
LABEL_6:
        v38 = OUTLINED_FUNCTION_48_2();
        lpta_rpta_loadp(v38, v39, v91);
        OUTLINED_FUNCTION_36_4();
        insert_2ptv();
        if (!v40)
        {
          goto LABEL_12;
        }

        v41 = v1[13];
        if (v41)
        {
          v30 = OUTLINED_FUNCTION_33_6(v41);
        }

        else
        {
          v30 = OUTLINED_FUNCTION_51_2();
        }
      }

      while (v30 == 1);
      if (v30 == 2)
      {
LABEL_5:
        OUTLINED_FUNCTION_58_2(v30, v31, v32, v33, v34, v35, v36, v37, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90);
        goto LABEL_6;
      }
    }
  }

LABEL_12:
  vretproc(v1);
  return OUTLINED_FUNCTION_47_2();
}

uint64_t insert_root_final_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  v72 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_15(v3, v4, v5, v6, v7, v8, v9, v10, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67[0], v67[1], *v68, *&v68[8], *&v68[16], v69, v70, v71);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v11, v12);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_65_2();
  if (OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_4_18();
  get_parm(v19, v20, v21, -6);
  v22 = OUTLINED_FUNCTION_30_7();
  get_parm(v22, v23, v24, -4);
  v25 = OUTLINED_FUNCTION_46_2();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_59_2();
  push_ptr_init(v27, v28);
  fence_20(v1, 0, &_MergedGlobals_1_1);
  v29 = OUTLINED_FUNCTION_14_16();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_24_12();
  if (lpta_loadp_setscan_l(v31, v32, 4))
  {
LABEL_5:
    insert_stress();
    goto LABEL_3;
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_48_2();
    bspush_ca_scan(v33, v34);
LABEL_7:
    savescptr(v1, 4, v67);
    if (!testFldeq(v1, 4u, 1, 2) && !advance_tok(v1, v35, v36, v37))
    {
LABEL_15:
      savescptr(v1, 5, v68);
      goto LABEL_5;
    }

LABEL_9:
    v38 = *(v1 + 104);
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_33_6(v38);
    }

    else
    {
      v39 = OUTLINED_FUNCTION_51_2();
    }

    switch(v39)
    {
      case 1:
        goto LABEL_5;
      case 2:
        continue;
      case 3:
        if (!advance_tok(v1, v40, v41, v42))
        {
          continue;
        }

        goto LABEL_9;
      case 4:
        goto LABEL_7;
      case 5:
        goto LABEL_15;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_81_2();
}

uint64_t insert_zero_sylls(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  v85[30] = *MEMORY[0x277D85DE8];
  v85[0] = 0;
  v85[1] = 0;
  v84[0] = 0;
  v84[1] = 0;
  v83[0] = 0;
  v83[1] = 0;
  OUTLINED_FUNCTION_5_18(v3, v4, v5, v6, v7, v8, v9, v10, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82[0], v82[1], v82[2], v82[3]);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_75_2(v11, v12);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_66_2();
  if (OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_4_18();
  get_parm(v20, v21, v22, -6);
  v23 = OUTLINED_FUNCTION_11_18();
  get_parm(v23, v24, v25, -6);
  v26 = OUTLINED_FUNCTION_48_2();
  push_ptr_init(v26, v27);
  v28 = OUTLINED_FUNCTION_38_4();
  push_ptr_init(v28, v29);
  v30 = OUTLINED_FUNCTION_29_8();
  push_ptr_init(v30, v31);
  fence_20(v1, 0, &_MergedGlobals_1_1);
  v32 = OUTLINED_FUNCTION_14_16();
  startloop(v32, v33);
  v34 = OUTLINED_FUNCTION_48_2();
  copyvar(v34, v35, v85);
  v36 = OUTLINED_FUNCTION_29_8();
  copyvar(v36, v37, v84);
  v38 = OUTLINED_FUNCTION_48_2();
  if (!forall_to_test(v38, v39, v82))
  {
LABEL_6:
    v40 = OUTLINED_FUNCTION_16_16();
    bspush_ca(v40);
    v41 = OUTLINED_FUNCTION_80_2();
    if (!lpta_loadp_setscan_r(v41, v42, 7) && !advanc(v1))
    {
LABEL_8:
      OUTLINED_FUNCTION_78_2();
      v43 = OUTLINED_FUNCTION_69_2();
      savescptr(v43, v44, v45);
LABEL_9:
      v46 = OUTLINED_FUNCTION_69_2();
      lpta_rpta_loadp(v46, v47, v48);
      v49 = OUTLINED_FUNCTION_36_4();
      if (!insert_2pt_i(v49, v50, 2, v51, v52))
      {
LABEL_10:
        OUTLINED_FUNCTION_79_2();
        if (!forto_adv_r(v1, v53, v54, 5, 7, v83))
        {
          v18 = 0;
          goto LABEL_4;
        }
      }
    }
  }

  v55 = v1[13];
  if (v55)
  {
    OUTLINED_FUNCTION_33_6(v55);
  }

  else
  {
    OUTLINED_FUNCTION_51_2();
  }

  OUTLINED_FUNCTION_56_2();
  if (!v58 & v57)
  {
LABEL_3:
    v18 = 94;
  }

  else
  {
    v18 = 0;
    switch(v56)
    {
      case 1:
        goto LABEL_9;
      case 2:
        goto LABEL_10;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_6;
      default:
        break;
    }
  }

LABEL_4:
  vretproc(v1);
  return v18;
}