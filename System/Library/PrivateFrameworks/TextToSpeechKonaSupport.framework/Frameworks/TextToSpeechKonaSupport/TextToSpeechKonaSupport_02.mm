uint64_t internal_dict_lookup()
{
  OUTLINED_FUNCTION_1_10();
  v60 = *MEMORY[0x277D85DE8];
  v58[0] = 0;
  v58[1] = 0;
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v57[0], v57[1]);
  OUTLINED_FUNCTION_9_9();
  bzero(v59, v9);
  if (setjmp(v59) || (OUTLINED_FUNCTION_12_9(), v14 = ventproc(v0, v10, v11, v12, v13, v59), v14) || (OUTLINED_FUNCTION_4_9(v14, v58), OUTLINED_FUNCTION_5_9(v15, v57), push_ptr_init(v0, v56), fence_11(v0, 0, &null_str_2), *(v0 + 5122) != *(v0 + 5090)))
  {
    v30 = 94;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_6_9();
    starttest_l(v16, v17);
    v18 = OUTLINED_FUNCTION_6_9();
    bspush_ca(v18);
    v19 = OUTLINED_FUNCTION_11_9();
    if (por_words(v19))
    {
      while (1)
      {
        v20 = *(v0 + 104);
        v21 = v20 ? OUTLINED_FUNCTION_13_9(v20) : vback(v0, 0);
        if (v21 != 3)
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_16_8();
        lpta_loadpn(v22, v23);
        lpta_ctxtr();
        v24 = OUTLINED_FUNCTION_3_10();
        lpta_storep(v24, v25, v26);
        v27 = OUTLINED_FUNCTION_14_8();
        v29 = por_roots(v27, v28, v57, v56);
        v30 = 0;
        if (!v29)
        {
          goto LABEL_12;
        }
      }

      if (v21 == 4)
      {
        v30 = 0;
      }

      else
      {
        v30 = 94;
      }
    }

    else
    {
      v30 = 0;
    }
  }

LABEL_12:
  v31 = v30;
  vretproc(v0);
  return v31;
}

uint64_t user_abbr_dict()
{
  OUTLINED_FUNCTION_1_10();
  v117 = *MEMORY[0x277D85DE8];
  v112[0] = 0;
  v112[1] = 0;
  v110 = 0;
  v111 = 0;
  v108 = 0;
  v109 = 0;
  v106 = 0;
  v107 = 0;
  v104 = 0;
  v105 = 0;
  bzero(&v81, 0xB8uLL);
  OUTLINED_FUNCTION_9_9();
  bzero(v116, v1);
  if (setjmp(v116))
  {
    goto LABEL_3;
  }

  v2 = ventproc(v0, &v81, v115, v114, v113, v116);
  if (v2)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_4_9(v2, v112);
  OUTLINED_FUNCTION_5_9(v4, &v110);
  push_ptr_init(v0, &v108);
  push_ptr_init(v0, &v106);
  push_ptr_init(v0, &v104);
  fence_11(v0, 0, &null_str_2);
  if (!*(v0 + 5398))
  {
    goto LABEL_3;
  }

  LODWORD(v5) = 0;
  v6 = 2;
  v78 = 4;
  v77 = 6;
  v76 = 7;
  v75 = 13;
  v74 = 16;
  v73 = 5;
  v72 = 22;
  v71 = 10;
  v70 = 11;
  v79 = 3;
  v80 = 2;
  while (2)
  {
    starttest(v0, v6);
    OUTLINED_FUNCTION_3_10();
    bspush_ca_boa();
    v7 = callUserDictLookup(v0, v0 + 4040, v112, &v110);
LABEL_7:
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

LABEL_10:
    v9 = *(v0 + 104);
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_13_9(v9);
      v5 = v11;
    }

    else
    {
      v10 = vback(v0, v8);
      v5 = 0;
    }

    switch(v10)
    {
      case 1:
        v6 = v80;
        continue;
      case 2:
        v18 = OUTLINED_FUNCTION_10_9();
        v20 = fence_11(v18, v19, &_MergedGlobals_5);
        *(v0 + 136) = 1;
        v28 = OUTLINED_FUNCTION_0_11(v20, v21, v22, v23, v24, v25, v26, v27, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
        addfence(v28, v29);
        startloop(v0, v78);
        lpta_loadpn(v0, v112);
        OUTLINED_FUNCTION_10_9();
        lpta_mover();
        v30 = OUTLINED_FUNCTION_7_9();
        lpta_storep(v30, v31, v32);
        v33 = OUTLINED_FUNCTION_3_10();
        lpta_loadpn(v33, v34);
        OUTLINED_FUNCTION_10_9();
        lpta_mover();
        lpta_storep(v0, &v106, v35);
        goto LABEL_22;
      case 3:
        bspop_boa(v0);
        goto LABEL_3;
      case 4:
        goto LABEL_37;
      case 5:
        goto LABEL_25;
      case 6:
        v36 = OUTLINED_FUNCTION_6_9();
        v38 = forto_adv_upto_r(v36, v37, v73, v72, 1, &v108);
        v8 = v5;
        if (v38)
        {
          goto LABEL_10;
        }

        goto LABEL_37;
      case 7:
        goto LABEL_26;
      case 8:
        v64 = OUTLINED_FUNCTION_6_9();
        savescptr(v64, v65, &v104);
        starttest_e(v0, v71);
        bspush_ca_boa();
        OUTLINED_FUNCTION_7_9();
        v7 = isLegalWord();
        goto LABEL_7;
      case 9:
        goto LABEL_29;
      case 10:
      case 12:
      case 18:
        goto LABEL_19;
      case 11:
        v10 = bspop_boa(v0);
        goto LABEL_41;
      case 13:
        goto LABEL_41;
      case 14:
        OUTLINED_FUNCTION_10_9();
        goto LABEL_33;
      case 15:
        goto LABEL_34;
      case 16:
        v39 = OUTLINED_FUNCTION_6_9();
        savescptr(v39, v40, &v104);
LABEL_19:
        lpta_loadpn(v0, &v104);
        v41 = OUTLINED_FUNCTION_3_10();
        rpta_loadpn(v41, v42);
        if (compare_ptas(v0) || testeq(v0))
        {
          goto LABEL_21;
        }

LABEL_37:
        v10 = convert_to_lowercase(v0);
        goto LABEL_38;
      case 17:
        goto LABEL_32;
      case 20:
LABEL_21:
        forall_cont_from();
        goto LABEL_22;
      case 21:
LABEL_22:
        v43 = OUTLINED_FUNCTION_7_9();
        v45 = forall_to_test(v43, v44, &v106);
        v8 = v5;
        if (!v45)
        {
          goto LABEL_23;
        }

        goto LABEL_10;
      case 22:
LABEL_23:
        bspush_ca(v0);
        v46 = OUTLINED_FUNCTION_7_9();
        v48 = lpta_loadp_setscan_r(v46, v47, 1);
        v8 = v5;
        if (v48)
        {
          goto LABEL_10;
        }

        v51 = advance_tok(v0, v5, v49, v50);
        v8 = v5;
        if (v51)
        {
          goto LABEL_10;
        }

LABEL_25:
        starttest(v0, v76);
        v52 = OUTLINED_FUNCTION_7_9();
        if (!lpta_loadp_setscan_r(v52, v53, 1))
        {
LABEL_29:
          while (1)
          {
            v56 = OUTLINED_FUNCTION_10_9();
            if (testFldeq(v56, v57, 3, 1) || advance_tok(v0, v58, v59, v60))
            {
              break;
            }

            bspush_ca_scan(v0, 8);
          }

          v8 = v5;
          goto LABEL_10;
        }

LABEL_26:
        starttest(v0, v75);
        v54 = OUTLINED_FUNCTION_7_9();
        v10 = lpta_loadp_setscan_r(v54, v55, 1);
        if (!v10)
        {
LABEL_32:
          while (1)
          {
            v61 = OUTLINED_FUNCTION_16_8();
            bspush_ca_scan(v61, v62);
            OUTLINED_FUNCTION_10_9();
LABEL_33:
            v63 = test_string_s();
            v8 = v5;
            if (v63)
            {
              break;
            }

LABEL_34:
            bspush_ca_scan(v0, v74);
          }

          goto LABEL_10;
        }

LABEL_41:
        *(v0 + 136) = 1;
        v68 = OUTLINED_FUNCTION_0_11(v10, v11, v12, v13, v14, v15, v16, v17, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
        remfence(v68, v69);
        user_dict_error(v0, v112, &v110, (v0 + 4040));
LABEL_3:
        vretproc(v0);
        return 94;
      case 23:
LABEL_38:
        *(v0 + 136) = 1;
        v66 = OUTLINED_FUNCTION_0_11(v10, v11, v12, v13, v14, v15, v16, v17, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
        remfence(v66, v67);
        vretproc(v0);
        return 0;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  *(v50 + 112) = a50;
  *(v50 + 128) = 0;
  return v50;
}

void OUTLINED_FUNCTION_2_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *(v36 + 136) = v37;
  *(v36 + 112) = a36;
  *(v36 + 128) = 0;

  return test_ptr(v36, a2, a3);
}

uint64_t mark_word_categories(uint64_t a1)
{
  v138 = *MEMORY[0x277D85DE8];
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v129[0] = 0;
  v129[1] = 0;
  v128[0] = 0;
  v128[1] = 0;
  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v123 = 0;
  bzero(v122, 0xB8uLL);
  bzero(v137, 0xC0uLL);
  if (setjmp(v137) || ventproc(a1, v122, v136, v135, v134, v137))
  {
LABEL_3:
    v2 = 94;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_2_11();
    push_ptr_init(v4, v5);
    push_ptr_init(a1, &v130);
    v6 = OUTLINED_FUNCTION_8_10();
    push_ptr_init(v6, v7);
    push_ptr_init(a1, v128);
    push_ptr_init(a1, &v126);
    push_ptr_init(a1, &v124);
    v123 = 0xFFFC0000FFFCLL;
    fence_12(a1);
    phrase_level_printouts(a1);
    v8 = 0;
LABEL_6:
    init_gcat_vars(a1);
LABEL_7:
    startloop(a1, 3);
    lpta_loadpn(a1, a1 + 1416);
    OUTLINED_FUNCTION_5_10();
    lpta_mover();
    v9 = OUTLINED_FUNCTION_2_11();
    lpta_storep(v9, v10, v11);
    lpta_loadpn(a1, a1 + 1432);
    OUTLINED_FUNCTION_5_10();
    lpta_mover();
    v12 = OUTLINED_FUNCTION_8_10();
    lpta_storep(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_2_11();
    v17 = forall_to_test(v15, v16, v129);
    v18 = v8;
    if (!v17)
    {
LABEL_8:
      v8 = v18;
      bspush_ca(a1);
      v19 = OUTLINED_FUNCTION_2_11();
      if (!lpta_loadp_setscan_r(v19, v20, 2))
      {
        v24 = advance_tok(a1, v21, v22, v23);
        v25 = v8;
        if (!v24)
        {
LABEL_10:
          v8 = v25;
          savescptr(a1, 6, &v130);
LABEL_11:
          starttest(a1, 7);
          v26 = OUTLINED_FUNCTION_2_11();
          v27 = is_spr(v26);
          v28 = v8;
          if (!v27)
          {
            goto LABEL_17;
          }

LABEL_12:
          v8 = v28;
          v127 = v133;
          v125 = v131;
          starttest(a1, 8);
          bspush_ca_boa();
          v29 = OUTLINED_FUNCTION_2_11();
          if (!lpta_loadp_setscan_r(v29, v30, 2))
          {
            v31 = OUTLINED_FUNCTION_5_10();
            if (!testFldeq(v31, v32, 1, 0))
            {
              if (advance_tok(a1, v33, v34, v35))
              {
                v8 = v8;
              }

              else
              {
                v8 = 1;
              }
            }
          }
        }
      }
    }

    do
    {
      while (1)
      {
        do
        {
LABEL_25:
          v46 = v8;
          while (2)
          {
            v47 = *(a1 + 104);
            if (v47)
            {
              *(a1 + 104) = 0;
              v48 = v47;
              v8 = v46;
            }

            else
            {
              v48 = vback(a1, v46);
              v8 = 0;
            }

            switch(v48)
            {
              case 1:
                goto LABEL_6;
              case 2:
                goto LABEL_7;
              case 3:
                v39 = v8;
                goto LABEL_18;
              case 4:
                goto LABEL_11;
              case 5:
                break;
              case 6:
                v25 = v8;
                goto LABEL_10;
              case 7:
                v28 = v8;
                goto LABEL_12;
              case 8:
                v49 = OUTLINED_FUNCTION_0_12();
                starttest(v49, v50);
                v51 = OUTLINED_FUNCTION_0_12();
                bspush_ca(v51);
                v52 = *(a1 + 5094);
                goto LABEL_37;
              case 9:
                bspop_boa(a1);
                goto LABEL_48;
              case 10:
                goto LABEL_48;
              case 11:
                v62 = OUTLINED_FUNCTION_0_12();
                starttest(v62, v63);
                v64 = OUTLINED_FUNCTION_3_11();
                mark_function_word(v64, v65, v66, v67, v68);
                if (v69)
                {
                  goto LABEL_45;
                }

                goto LABEL_48;
              case 12:
                v55 = OUTLINED_FUNCTION_0_12();
                bspush_ca(v55);
                v52 = *(a1 + 5106);
                goto LABEL_37;
              case 13:
                goto LABEL_38;
              case 14:
                v53 = OUTLINED_FUNCTION_0_12();
                bspush_ca(v53);
                v52 = *(a1 + 5122);
                goto LABEL_37;
              case 15:
                v54 = OUTLINED_FUNCTION_0_12();
                bspush_ca(v54);
                v52 = *(a1 + 5130);
                goto LABEL_37;
              case 16:
                v52 = *(a1 + 5102);
LABEL_37:
                v46 = v8;
                if (v52 != *(a1 + 5090))
                {
                  continue;
                }

LABEL_38:
                v56 = OUTLINED_FUNCTION_3_11();
                gramm_cat_dict_lookup(v56, v57, v58, v59, v60);
                v46 = v8;
                if (v61)
                {
                  continue;
                }

LABEL_48:
                move_i(a1, a1 + 3840, 0);
                break;
              case 17:
LABEL_45:
                v70 = OUTLINED_FUNCTION_0_12();
                starttest(v70, v71);
                v72 = OUTLINED_FUNCTION_3_11();
                mark_content_word(v72, v73, v74, v75, v76);
                goto LABEL_48;
              case 18:
                v18 = v8;
                goto LABEL_8;
              case 19:
                goto LABEL_19;
              case 20:
                goto LABEL_22;
              case 21:
              case 24:
                goto LABEL_73;
              case 22:
                v46 = v8;
                if (*(a1 + 5102) == *(a1 + 5090))
                {
                  goto LABEL_72;
                }

                continue;
              case 23:
                goto LABEL_72;
              case 25:
                v45 = v8;
                goto LABEL_53;
              case 26:
                v45 = v8;
                goto LABEL_67;
              case 27:
                goto LABEL_58;
              case 28:
                v45 = v8;
                goto LABEL_66;
              case 29:
                v45 = v8;
                goto LABEL_57;
              case 30:
                goto LABEL_59;
              case 31:
              case 32:
                goto LABEL_64;
              case 33:
                goto LABEL_65;
              case 34:
                v45 = v8;
                goto LABEL_54;
              default:
                goto LABEL_3;
            }

            break;
          }

LABEL_17:
          v36 = OUTLINED_FUNCTION_0_12();
          v38 = forto_adv_upto_r(v36, v37, 4, 18, 2, &v132);
          v39 = v8;
        }

        while (v38);
LABEL_18:
        v8 = v39;
        reset_gcat_vars(a1);
LABEL_19:
        if (!lpta_loadp_setscan_r(a1, a1 + 1416, 2) && !advance_tok(a1, v40, v41, v42))
        {
          *(a1 + 136) = 1;
          *(a1 + 112) = *(a1 + 1440);
          *(a1 + 128) = 0;
          if (!test_ptr(a1, v43, v44))
          {
            break;
          }
        }

LABEL_22:
        v45 = v8;
        startloop(a1, 24);
        move_i(a1, a1 + 3072, 1);
        move_i(a1, &v123 + 4, 1);
        copyvar(a1, &v123, (a1 + 3076));
        if (!for_test(a1, (a1 + 3072), &v123, &v123 + 2))
        {
LABEL_53:
          while (1)
          {
            startloop(a1, 26);
            lpta_loadpn(a1, a1 + 1416);
            OUTLINED_FUNCTION_5_10();
            lpta_mover();
            v77 = OUTLINED_FUNCTION_2_11();
            lpta_storep(v77, v78, v79);
            lpta_loadpn(a1, a1 + 1432);
            OUTLINED_FUNCTION_5_10();
            lpta_mover();
            v80 = OUTLINED_FUNCTION_8_10();
            lpta_storep(v80, v81, v82);
            v83 = OUTLINED_FUNCTION_2_11();
            v8 = v45;
            if (forall_to_test(v83, v84, v129))
            {
              break;
            }

LABEL_54:
            bspush_ca(a1);
            v85 = OUTLINED_FUNCTION_2_11();
            if (lpta_loadp_setscan_r(v85, v86, 2))
            {
              v8 = v45;
              goto LABEL_25;
            }

            v8 = v45;
            if (advance_tok(a1, v87, v88, v89))
            {
              goto LABEL_25;
            }

LABEL_57:
            savescptr(a1, 29, &v130);
            v8 = v45;
LABEL_58:
            starttest(a1, 30);
            v90 = OUTLINED_FUNCTION_2_11();
            if (lpta_loadp_setscan_r(v90, v91, 2))
            {
LABEL_59:
              OUTLINED_FUNCTION_2_11();
              disambiguate_content_word();
            }

            else
            {
              v92 = OUTLINED_FUNCTION_5_10();
              if (npush_fld(v92, v93, 5u))
              {
                goto LABEL_25;
              }

              npush_v(a1, (a1 + 3044), v94, v95, v96, v97, v98, v99);
              if (if_testgt(a1, v100, v101, v102, v103, v104, v105, v106) || advance_tok(a1, v107, v108, v109))
              {
                goto LABEL_25;
              }

              starttest_l(a1, 31);
              v110 = OUTLINED_FUNCTION_2_11();
              if (!lpta_loadp_setscan_r(v110, v111, 2))
              {
                v116 = OUTLINED_FUNCTION_5_10();
                if (testFldeq(v116, v117, 1, v118) || advance_tok(a1, v119, v120, v121))
                {
                  goto LABEL_25;
                }

                OUTLINED_FUNCTION_2_11();
                disambiguate_functword();
              }
            }

LABEL_64:
            OUTLINED_FUNCTION_2_11();
            mark_subcategory();
LABEL_65:
            v45 = v8;
            v112 = OUTLINED_FUNCTION_0_12();
            starttest(v112, v113);
            init_word_ptrs(a1);
LABEL_66:
            v114 = OUTLINED_FUNCTION_0_12();
            v8 = v45;
            if (forto_adv_upto_r(v114, v115, 27, 34, 2, &v132))
            {
              goto LABEL_25;
            }

LABEL_67:
            if (!for_adv(a1, 24, 25, (a1 + 3072), &v123, &v123 + 2))
            {
              goto LABEL_73;
            }
          }
        }
      }

      starttest(a1, 21);
      bspush_ca(a1);
    }

    while (*(a1 + 5122) != *(a1 + 5090));
LABEL_72:
    disambiguate_single_word();
LABEL_73:
    v2 = 0;
  }

  vretproc(a1);
  return v2;
}

uint64_t phrase_level_printouts(uint64_t a1)
{
  OUTLINED_FUNCTION_10_10(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_9_10(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_10(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_12(a1);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t init_gcat_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_10_10(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_9_10(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_10(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_12(a1);
    v19 = 0;
    *(a1 + 3074) = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t reset_gcat_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_10_10(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_9_10(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_4_10(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_12(a1);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t print_normalized_inp(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v82 = *MEMORY[0x277D85DE8];
  memset(v77, 0, sizeof(v77));
  v76[0] = 0;
  v76[1] = 0;
  v75[0] = 0;
  v75[1] = 0;
  v74[0] = 0;
  v74[1] = 0;
  v73[0] = 0;
  v73[1] = 0;
  bzero(v72, 0xB8uLL);
  bzero(v81, 0xC0uLL);
  if (!setjmp(v81) && !ventproc(a1, v72, v80, v79, v78, v81))
  {
    v8 = OUTLINED_FUNCTION_8_10();
    get_parm(v8, v9, a2, -6);
    v10 = OUTLINED_FUNCTION_11_10();
    get_parm(v10, v11, a3, -6);
    v12 = OUTLINED_FUNCTION_2_11();
    push_ptr_init(v12, v13);
    push_ptr_init(a1, v75);
    v14 = OUTLINED_FUNCTION_13_10();
    push_ptr_init(v14, v15);
    push_ptr_init(a1, v73);
    fence_12(a1);
    v16 = OUTLINED_FUNCTION_0_12();
    startloop(v16, v17);
    v18 = OUTLINED_FUNCTION_8_10();
    lpta_loadpn(v18, v19);
    OUTLINED_FUNCTION_5_10();
    lpta_mover();
    v20 = OUTLINED_FUNCTION_2_11();
    lpta_storep(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_11_10();
    lpta_loadpn(v23, v24);
    OUTLINED_FUNCTION_5_10();
    lpta_mover();
    v25 = OUTLINED_FUNCTION_13_10();
    lpta_storep(v25, v26, v27);
    v28 = OUTLINED_FUNCTION_2_11();
    v30 = 0;
    v31 = 0;
    if (!forall_to_test(v28, v29, v74))
    {
LABEL_6:
      v30 = v31;
      v32 = OUTLINED_FUNCTION_0_12();
      bspush_ca(v32);
      if (!lpta_loadp_setscan_r(a1, v76, 2) && !advance_tok(a1, v33, v34, v35))
      {
LABEL_8:
        savescptr(a1, 4, v75);
LABEL_9:
        v36 = OUTLINED_FUNCTION_0_12();
        starttest(v36, v37);
        v38 = OUTLINED_FUNCTION_2_11();
        lpta_loadpn(v38, v39);
        OUTLINED_FUNCTION_5_10();
        lpta_movel();
        v40 = OUTLINED_FUNCTION_11_10();
        lpta_storep(v40, v41, v42);
        v43 = OUTLINED_FUNCTION_11_10();
        v30 = v31;
        if (!print_interword_chars(v43, v44, v76))
        {
LABEL_10:
          lpta_rpta_loadp(a1, v76, v75);
          v45 = OUTLINED_FUNCTION_12_10();
          print_stream(v45, v46, 1, v47, v48);
LABEL_11:
          v30 = v31;
          if (!forto_adv_upto_r(a1, 1, 2, 6, 2, v76))
          {
LABEL_12:
            v30 = v31;
            lpta_loadpn(a1, v77);
            rpta_loadpn(a1, a1 + 1240);
            if (compare_ptas(a1) || testeq(a1))
            {
LABEL_33:
              v6 = 0;
              goto LABEL_4;
            }

            print_interword_chars(a1, (a1 + 1240), (a1 + 1256));
LABEL_15:
            v49 = OUTLINED_FUNCTION_0_12();
            starttest(v49, v50);
            OUTLINED_FUNCTION_0_12();
            bspush_ca_boa();
            v51 = OUTLINED_FUNCTION_7_10();
            v54 = lpta_loadp_setscan_r(v51, v52, v53);
            v55 = v30;
            if (!v54)
            {
LABEL_16:
              LODWORD(v30) = v55;
              v56 = OUTLINED_FUNCTION_0_12();
              bspush_ca_scan(v56, v57);
              OUTLINED_FUNCTION_0_12();
              bspush_ca_scan_boa();
              v58 = OUTLINED_FUNCTION_1_11();
              if (testFldeq(v58, v59, v60, 4))
              {
                v30 = v30;
              }

              else
              {
                v30 = 1;
              }
            }
          }
        }
      }
    }

    v31 = v30;
    while (1)
    {
      v61 = *(a1 + 104);
      if (v61)
      {
        *(a1 + 104) = 0;
        v62 = v61;
      }

      else
      {
        v62 = vback(a1, v31);
        v31 = 0;
      }

      v55 = v31;
      switch(v62)
      {
        case 1:
          goto LABEL_12;
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_11;
        case 4:
          goto LABEL_8;
        case 5:
          goto LABEL_10;
        case 6:
          goto LABEL_6;
        case 7:
          goto LABEL_33;
        case 8:
          v30 = v31;
          goto LABEL_15;
        case 9:
          goto LABEL_32;
        case 10:
          bspop_boa(a1);
LABEL_32:
          v69 = OUTLINED_FUNCTION_12_10();
          print_lit(v69, v70, v71);
          goto LABEL_33;
        case 11:
          v63 = OUTLINED_FUNCTION_2_11();
          bspush_ca_scan(v63, v64);
          OUTLINED_FUNCTION_6_10();
          goto LABEL_28;
        case 12:
          bspop_boa(a1);
          v68 = advance_tok(a1, v65, v66, v67);
          v55 = v31;
          if (!v68)
          {
            goto LABEL_16;
          }

          continue;
        case 13:
          goto LABEL_16;
        case 14:
          OUTLINED_FUNCTION_6_10();
LABEL_28:
          if (!test_string_s())
          {
            goto LABEL_29;
          }

          continue;
        case 15:
LABEL_29:
          v31 = 1;
          break;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v6 = 94;
LABEL_4:
  vretproc(a1);
  return v6;
}

uint64_t print_interword_chars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v121 = *MEMORY[0x277D85DE8];
  memset(v116, 0, sizeof(v116));
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v112[0] = 0;
  v112[1] = 0;
  v111[0] = 0;
  v111[1] = 0;
  bzero(v110, 0xB8uLL);
  bzero(v120, 0xC0uLL);
  if (setjmp(v120) || ventproc(a1, v110, v119, v118, v117, v120))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_8_10();
    get_parm(v7, v8, a2, -6);
    v9 = OUTLINED_FUNCTION_11_10();
    get_parm(v9, v10, a3, -6);
    LOWORD(v115) = -4;
    v11 = OUTLINED_FUNCTION_2_11();
    push_ptr_init(v11, v12);
    push_ptr_init(a1, v112);
    v13 = OUTLINED_FUNCTION_13_10();
    push_ptr_init(v13, v14);
    fence_12(a1);
    HIWORD(v115) = 0;
    startloop(a1, 1);
    v15 = OUTLINED_FUNCTION_8_10();
    lpta_loadpn(v15, v16);
    lpta_mover();
    v17 = OUTLINED_FUNCTION_2_11();
    lpta_storep(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_11_10();
    lpta_loadpn(v20, v21);
    lpta_mover();
    v22 = OUTLINED_FUNCTION_13_10();
    lpta_storep(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_2_11();
    v27 = forall_to_test(v25, v26, v111);
    v28 = 0;
    v29 = 0;
    if (!v27)
    {
LABEL_7:
      v28 = v29;
      v30 = OUTLINED_FUNCTION_0_12();
      bspush_ca(v30);
      v31 = OUTLINED_FUNCTION_7_10();
      if (!lpta_loadp_setscan_r(v31, v32, v33))
      {
        OUTLINED_FUNCTION_0_12();
        bspush_ca_scan_boa();
        v34 = OUTLINED_FUNCTION_1_11();
        if (testFldeq(v34, v35, v36, 1))
        {
          v28 = v28;
        }

        else
        {
          v28 = 1;
        }
      }
    }

    v37 = v28;
    while (2)
    {
      v38 = *(a1 + 104);
      if (v38)
      {
        *(a1 + 104) = 0;
        v39 = v38;
        v40 = v37;
      }

      else
      {
        v39 = vback(a1, v37);
        v40 = 0;
      }

      switch(v39)
      {
        case 1:
          goto LABEL_48;
        case 2:
          goto LABEL_26;
        case 3:
          goto LABEL_20;
        case 4:
          bspop_boa(a1);
          OUTLINED_FUNCTION_0_12();
          bspush_ca_scan_boa();
          v63 = OUTLINED_FUNCTION_1_11();
          v66 = 2;
          goto LABEL_30;
        case 5:
          bspop_boa(a1);
          v70 = advance_tok(a1, v67, v68, v69);
          v37 = v40;
          if (v70)
          {
            continue;
          }

          goto LABEL_25;
        case 6:
LABEL_25:
          savescptr(a1, 6, v112);
LABEL_26:
          v71 = OUTLINED_FUNCTION_0_12();
          starttest(v71, v72);
          v73 = OUTLINED_FUNCTION_7_10();
          if (lpta_loadp_setscan_r(v73, v74, v75))
          {
            goto LABEL_27;
          }

          v89 = OUTLINED_FUNCTION_1_11();
          v92 = testFldeq(v89, v90, v91, 4);
          v37 = v40;
          if (v92)
          {
            continue;
          }

          v95 = advance_tok(a1, v40, v93, v94);
          v37 = v40;
          if (v95)
          {
            continue;
          }

          v96 = OUTLINED_FUNCTION_0_12();
          starttest(v96, v97);
          OUTLINED_FUNCTION_0_12();
          bspush_ca_boa();
          *(a1 + 136) = 1;
          *(a1 + 112) = v114;
          *(a1 + 128) = 0;
          OUTLINED_FUNCTION_5_10();
          v98 = lpta_tstctxtl();
          v37 = v40;
          if (v98)
          {
            continue;
          }

          setscan_l(a1, 5, v99);
          goto LABEL_43;
        case 7:
LABEL_27:
          v76 = OUTLINED_FUNCTION_0_12();
          starttest(v76, v77);
          OUTLINED_FUNCTION_0_12();
          bspush_ca_boa();
          v78 = OUTLINED_FUNCTION_7_10();
          v81 = lpta_loadp_setscan_r(v78, v79, v80);
          v37 = v40;
          if (!v81)
          {
            goto LABEL_34;
          }

          continue;
        case 8:
          v41 = OUTLINED_FUNCTION_0_12();
          starttest(v41, v42);
          v43 = OUTLINED_FUNCTION_7_10();
          if (lpta_loadp_setscan_r(v43, v44, v45))
          {
            goto LABEL_18;
          }

          v103 = OUTLINED_FUNCTION_1_11();
          v106 = testFldeq(v103, v104, v105, 2);
          v37 = v40;
          if (!v106)
          {
            goto LABEL_32;
          }

          continue;
        case 9:
        case 16:
          bspop_boa(a1);
          goto LABEL_20;
        case 10:
LABEL_18:
          v46 = OUTLINED_FUNCTION_0_12();
          starttest(v46, v47);
          v48 = OUTLINED_FUNCTION_7_10();
          if (lpta_loadp_setscan_r(v48, v49, v50))
          {
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_0_12();
          bspush_ca_scan_boa();
          goto LABEL_42;
        case 11:
        case 15:
LABEL_19:
          lpta_rpta_loadp(a1, &v113, v112);
          v51 = OUTLINED_FUNCTION_12_10();
          print_stream(v51, v52, 1, v53, v54);
          v55 = OUTLINED_FUNCTION_7_10();
          move_i(v55, v56, v57);
          goto LABEL_20;
        case 12:
          bspop_boa(a1);
          v59 = OUTLINED_FUNCTION_1_11();
          v62 = testFldeq(v59, v60, v61, 1);
          v37 = v40;
          if (v62)
          {
            continue;
          }

          OUTLINED_FUNCTION_0_12();
          bspush_ca_scan_boa();
          v63 = OUTLINED_FUNCTION_6_10();
          v66 = 73;
LABEL_30:
          v82 = testFldeq(v63, v64, v65, v66);
          goto LABEL_43;
        case 13:
LABEL_42:
          v100 = OUTLINED_FUNCTION_0_12();
          v82 = test_synch(v100, v101, 1, v102);
LABEL_43:
          if (v82)
          {
            v37 = v40;
          }

          else
          {
            v37 = 1;
          }

          continue;
        case 14:
          bspop_boa(a1);
LABEL_32:
          v85 = advance_tok(a1, v37, v83, v84);
          v37 = v40;
          if (v85)
          {
            continue;
          }

LABEL_20:
          v58 = forto_adv_upto_r(a1, 1, 2, 29, 1, &v113);
          v37 = v40;
          if (v58)
          {
            continue;
          }

LABEL_48:
          if (!HIWORD(v115))
          {
            lpta_loadpn(a1, v116);
            rpta_loadpn(a1, a1 + 1224);
            if (!compare_ptas(a1) && !testneq(a1))
            {
              v107 = OUTLINED_FUNCTION_12_10();
              print_lit(v107, v108, v109);
            }
          }

LABEL_52:
          vretproc(a1);
          result = 0;
          break;
        case 17:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
LABEL_34:
          v86 = OUTLINED_FUNCTION_0_12();
          bspush_ca_scan(v86, v87);
          goto LABEL_35;
        case 18:
          goto LABEL_36;
        case 28:
LABEL_35:
          OUTLINED_FUNCTION_6_10();
          v88 = test_string_s();
          v37 = v40;
          if (!v88)
          {
LABEL_36:
            v37 = 1;
          }

          continue;
        case 29:
          v29 = v40;
          goto LABEL_7;
        case 30:
          goto LABEL_52;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_9_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_10_10(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t count_input(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  HIDWORD(v18) = 65532;
  v19[0] = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v17, v4);
  OUTLINED_FUNCTION_9_11();
  bzero(v27, v5);
  v6 = setjmp(v27);
  if (v6 || (v13 = OUTLINED_FUNCTION_22_6(v6, v17, v7, v8, v9, v10, v11, v12, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12], v17[13], v17[14], v17[15], v17[16], v17[17], v17[18], v17[19], v17[20], v17[21], v17[22], v18, v19[0], v19[1], v19[2], v20, v21, v22, v23, v24, v25, v26, v27[0]), v13))
  {
    v14 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_21_6(v13, v19);
    fence_13(a1);
    count_normalized_inp(a1);
    count_unnormalized_inp(a1, (a1 + 2464), &v18 + 4);
    HIWORD(v19[0]) = HIWORD(v18) + *(a1 + 2414);
    *(a2 + 2) = HIWORD(v19[0]);
    v14 = 0;
  }

  vretproc(a1);
  return v14;
}

uint64_t count_normalized_inp(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_11();
  bzero(v14, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v25, v3);
  v4 = setjmp(v25);
  if (v4 || OUTLINED_FUNCTION_7_11(v4, v5, v6, v7, v8, v9, v10, v11, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v14[18], v14[19], v14[20], v14[21], v14[22], v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25[0]))
  {
    v12 = 94;
  }

  else
  {
    fence_13(a1);
    count_cumulative_chars();
    v12 = 0;
    *(a1 + 2472) = *(a1 + 2456);
  }

  vretproc(a1);
  return v12;
}

uint64_t count_unnormalized_inp(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v33, v6);
  OUTLINED_FUNCTION_9_11();
  bzero(v42, v7);
  if (setjmp(v42) || ventproc(a1, v33, v41, v40, v39, v42))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_23_6();
    get_parm(v9, v10, a2, -6);
    OUTLINED_FUNCTION_21_6(v11, &v36);
    LOWORD(v35) = 0;
    LODWORD(v34[0]) = -65536;
    fence_13(a1);
    v12 = OUTLINED_FUNCTION_23_6();
    if (lpta_loadp_setscan_r(v12, v13, 1) || (*(a1 + 136) = 1, v14 = OUTLINED_FUNCTION_1_12(), test_ptr(v14, v15, v16)))
    {
      v17 = *(a1 + 2414);
      *(a1 + 136) = 1;
      *(a1 + 112) = v38;
      *(a1 + 128) = 0;
      if (v17)
      {
        OUTLINED_FUNCTION_14_9();
        if (!lpta_tstctxtr())
        {
          v18 = OUTLINED_FUNCTION_14_9();
          setscan_l(v18, v19, v20);
          if (!v21 && !savetok(a1, v34))
          {
            advance_tok(a1, v22, v23, v24);
          }
        }

        v25 = *(a1 + 2402) - v35 + HIWORD(v36);
      }

      else if (lpta_tstmover() || (v26 = OUTLINED_FUNCTION_14_9(), setscan_l(v26, v27, v28), v29) || savetok(a1, v34) || advance_tok(a1, v30, v31, v32))
      {
        v25 = *(a1 + 2402);
      }

      else
      {
        v25 = *(a1 + 2402) - v35;
      }

      HIWORD(v36) = v25;
    }

    else
    {
      v25 = HIWORD(v36);
    }

    *(a3 + 2) = v25;
    vretproc(a1);
    return 0;
  }
}

uint64_t forced_synthesis(uint64_t a1, __int16 *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v26[1] = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v25, v4);
  OUTLINED_FUNCTION_9_11();
  bzero(v30, v5);
  if (setjmp(v30) || ventproc(a1, v25, v29, v28, v27, v30))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  get_parm(a1, v26, a2, -6);
  fence_13(a1);
  if (*(a1 + 2422) != 1)
  {
    LODWORD(v7) = 0;
LABEL_8:
    if (*(a1 + 2606) > *(a1 + 2538))
    {
LABEL_9:
      if (*(a1 + 2430) != 1 || (OUTLINED_FUNCTION_24_6(), !v8))
      {
LABEL_11:
        starttest(a1, 5);
        OUTLINED_FUNCTION_23_6();
        bspush_ca_boa();
        v9 = OUTLINED_FUNCTION_4_11();
        if (lpta_loadp_setscan_l(v9, v10, 0))
        {
          v11 = v7;
        }

        else
        {
          v11 = 1;
        }

        while (1)
        {
          v12 = *(a1 + 104);
          if (v12)
          {
            v13 = OUTLINED_FUNCTION_19_6(v12);
            v7 = v14;
          }

          else
          {
            v13 = vback(a1, v11);
            v7 = 0;
          }

          switch(v13)
          {
            case 1:
              goto LABEL_8;
            case 2:
              goto LABEL_5;
            case 3:
              goto LABEL_9;
            case 4:
              goto LABEL_11;
            case 5:
              v15 = OUTLINED_FUNCTION_17_8();
              starttest(v15, v16);
              v17 = OUTLINED_FUNCTION_4_11();
              if (lpta_loadp_setscan_r(v17, v18, 1))
              {
                goto LABEL_19;
              }

              v21 = testFldeq(a1, 1u, 3, 4);
              v11 = v7;
              if (!v21)
              {
                v24 = advance_tok(a1, v7, v22, v23);
                v11 = v7;
                if (!v24)
                {
                  goto LABEL_3;
                }
              }

              continue;
            case 6:
              bspop_boa(a1);
              goto LABEL_3;
            case 7:
LABEL_19:
              v19 = OUTLINED_FUNCTION_13_11();
              starttest(v19, v20);
              OUTLINED_FUNCTION_18_7();
              bspush_ca_boa();
              bspush_ca(a1);
              v11 = v7;
              if (*(a1 + 2694) == *(a1 + 2670))
              {
                goto LABEL_24;
              }

              continue;
            case 8:
              goto LABEL_30;
            case 9:
              bspop_boa(a1);
              count_input(a1, a1 + 2424);
LABEL_30:
              if (*(a1 + 2434) <= *(a1 + 2426))
              {
                goto LABEL_5;
              }

              goto LABEL_3;
            case 10:
              bspush_ca(a1);
              v11 = v7;
              if (*(a1 + 2614) > 0)
              {
                continue;
              }

              goto LABEL_24;
            case 11:
              goto LABEL_24;
            case 12:
              v11 = v7;
              if (*(a1 + 2614) < 10)
              {
                continue;
              }

LABEL_24:
              v11 = 1;
              break;
            case 13:
              goto LABEL_6;
            default:
              goto LABEL_3;
          }
        }
      }
    }

    goto LABEL_3;
  }

LABEL_5:
  create_sentence(a1);
LABEL_6:
  vretproc(a1);
  return 0;
}

uint64_t single_chars_forced_syn(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, __int16 *a5, __int16 *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v23, v12);
  OUTLINED_FUNCTION_9_11();
  bzero(v34, v13);
  if (setjmp(v34) || ventproc(a1, v23, v33, v32, v31, v34))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_13_11();
    get_parm(v15, v16, a2, -6);
    v17 = OUTLINED_FUNCTION_17_8();
    get_parm(v17, v18, a3, -6);
    get_parm(a1, &v25, a4, -6);
    v19 = OUTLINED_FUNCTION_4_11();
    get_parm(v19, v20, a5, -4);
    get_parm(a1, &v24, a6, -4);
    fence_13(a1);
    OUTLINED_FUNCTION_13_11();
    count_cumulative_chars();
    v21 = HIWORD(v24);
    if (*(a1 + 2434) <= (WORD1(v24) + HIWORD(v24)))
    {
      *(a1 + 2422) = 1;
      v22 = v28;
      v26 = v28;
    }

    else
    {
      v22 = v26;
    }

    *(a4 + 8) = v22;
    a5[1] = v21;
    vretproc(a1);
    return 0;
  }
}

uint64_t get_input(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v24[0] = 65532;
  OUTLINED_FUNCTION_10_11();
  bzero(v23, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v32, v3);
  v4 = setjmp(v32);
  if (v4 || OUTLINED_FUNCTION_7_11(v4, v5, v6, v7, v8, v9, v10, v11, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v23[22], v24[0], v24[1], v24[2], v25, v26, v27, v28, v29, v30, v31, v32[0]))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_13(a1);
    v13 = *(a1 + 2402);
    count_input(a1, v24);
    if (no_readin(a1))
    {
      v14 = OUTLINED_FUNCTION_3_12();
      startloop(v14, v15);
      v16 = v13;
      while (1)
      {
        v17 = v16;
        get_tok(a1);
        v18 = *(a1 + 2402);
        HIWORD(v24[0]) += v18 - v17;
        OUTLINED_FUNCTION_24_6();
        if (v19)
        {
          *(a1 + 2336) = *(a1 + 1392);
          goto LABEL_15;
        }

        lpta_loadpn(a1, a1 + 2480);
        rpta_loadpn(a1, a1 + 3344);
        if (!compare_ptas(a1) && !testneq(a1))
        {
          break;
        }

        if (*(a1 + 2438) <= SHIWORD(v24[0]))
        {
          *(a1 + 2488) = *(a1 + 2336);
          goto LABEL_15;
        }

        potential_sent_end(a1, a1 + 2328, v20, v21);
        v16 = v18;
        if (!v22)
        {
          goto LABEL_15;
        }
      }

      get_tok(a1);
    }

LABEL_15:
    vretproc(a1);
    return 0;
  }
}

uint64_t no_readin(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v51[0] = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v50, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v59, v3);
  v4 = setjmp(v59);
  if (v4)
  {
    goto LABEL_4;
  }

  v12 = OUTLINED_FUNCTION_7_11(v4, v5, v6, v7, v8, v9, v10, v11, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v51[0], v51[1], v51[2], v52, v53, v54, v55, v56, v57, v58, v59[0]);
  if (v12)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_21_6(v12, v51);
  fence_13(a1);
  if (*(a1 + 2438) > SHIWORD(v51[0]))
  {
    goto LABEL_4;
  }

  while (2)
  {
    v14 = OUTLINED_FUNCTION_16_9();
    if (!lpta_loadp_setscan_r(v14, v15, v16))
    {
      *(a1 + 136) = 1;
      v17 = OUTLINED_FUNCTION_1_12();
      if (!test_ptr(v17, v18, v19))
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    if (*(a1 + 2418) != 1)
    {
LABEL_16:
      if (!lpta_loadp_setscan_r(a1, a1 + 2448, 0) && !advance_tok(a1, v29, v30, v31) && !advance_tok(a1, v32, v33, v34) && !advance_tok(a1, v35, v36, v37) && !advance_tok(a1, v38, v39, v40) && !advance_tok(a1, v41, v42, v43))
      {
        goto LABEL_9;
      }

LABEL_4:
      vretproc(a1);
      return 94;
    }

LABEL_9:
    starttest(a1, 6);
    v20 = OUTLINED_FUNCTION_16_9();
    if (!lpta_loadp_setscan_l(v20, v21, v22))
    {
LABEL_10:
      while (1)
      {
        OUTLINED_FUNCTION_12_11();
        if (test_string_s())
        {
          break;
        }

        v25 = OUTLINED_FUNCTION_4_11();
        bspush_ca_scan(v25, v26);
      }

      v23 = *(a1 + 104);
      if (v23)
      {
        v24 = OUTLINED_FUNCTION_19_6(v23);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_14_9();
        v24 = vback(v27, v28);
      }

      switch(v24)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_9;
        case 3:
          goto LABEL_8;
        case 4:
          goto LABEL_16;
        case 6:
          goto LABEL_24;
        case 7:
          savescptr(a1, 7, a1 + 2328);
          goto LABEL_24;
        case 8:
          goto LABEL_10;
        case 9:
          goto LABEL_27;
        default:
          goto LABEL_4;
      }
    }

    break;
  }

LABEL_24:
  v44 = OUTLINED_FUNCTION_16_9();
  if (!lpta_loadp_setscan_r(v44, v45, v46))
  {
    *(a1 + 136) = 1;
    v47 = OUTLINED_FUNCTION_1_12();
    if (!test_ptr(v47, v48, v49))
    {
      *(a1 + 2336) = *(a1 + 2320);
    }
  }

LABEL_27:
  *(a1 + 2488) = *(a1 + 2336);
  vretproc(a1);
  return 0;
}

uint64_t get_tok(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_11();
  bzero(v25, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v29, v3);
  if (!setjmp(v29) && !ventproc(a1, v25, v28, v27, v26, v29))
  {
    fence_13(a1);
    OUTLINED_FUNCTION_24_6();
    if (!v4)
    {
      LODWORD(v6) = 0;
LABEL_6:
      starttest(a1, 2);
      while (1)
      {
        bspush_ca_boa();
        v7 = gettok(a1);
        while (2)
        {
          if (v7)
          {
            v8 = v6;
          }

          else
          {
            v8 = 1;
          }

LABEL_11:
          v9 = *(a1 + 104);
          if (v9)
          {
            v10 = OUTLINED_FUNCTION_19_6(v9);
            v6 = v11;
          }

          else
          {
            v10 = vback(a1, v8);
            v6 = 0;
          }

          switch(v10)
          {
            case 1:
              goto LABEL_6;
            case 2:
              insert_char_count(a1);
              goto LABEL_16;
            case 3:
            case 10:
              bspop_boa(a1);
              goto LABEL_5;
            case 4:
LABEL_16:
              if (*(a1 + 5926) != 1)
              {
                goto LABEL_23;
              }

              OUTLINED_FUNCTION_24_6();
              if (v4)
              {
                if (*(a1 + 2350))
                {
                  goto LABEL_5;
                }

                v12 = OUTLINED_FUNCTION_23_6();
                starttest(v12, v13);
                OUTLINED_FUNCTION_4_11();
                bspush_ca_boa();
                v14 = OUTLINED_FUNCTION_26_6();
                v16 = lpta_loadp_setscan_r(v14, v15, 1);
                v8 = v6;
                if (!v16)
                {
                  v7 = advance_tok(a1, v6, v17, v18);
                  continue;
                }

                goto LABEL_11;
              }

LABEL_28:
              v23 = OUTLINED_FUNCTION_17_8();
              starttest(v23, v24);
              OUTLINED_FUNCTION_13_11();
              break;
            case 5:
              goto LABEL_23;
            case 6:
              goto LABEL_28;
            case 8:
              bspop_boa(a1);
              text_index(a1, (a1 + 2312));
              goto LABEL_5;
            case 9:
              insert_char_count(a1);
LABEL_23:
              v19 = OUTLINED_FUNCTION_18_7();
              starttest(v19, v20);
              v21 = OUTLINED_FUNCTION_20_6();
              if (lpta_loadp_setscan_l(v21, v22, 1))
              {
                goto LABEL_32;
              }

              goto LABEL_26;
            case 11:
              goto LABEL_32;
            case 12:
              savescptr(a1, 12, a1 + 2328);
LABEL_32:
              vretproc(a1);
              return 0;
            case 13:
LABEL_26:
              while (!test_string_s())
              {
                bspush_ca_scan(a1, 12);
              }

              v8 = v6;
              goto LABEL_11;
            default:
              goto LABEL_5;
          }

          break;
        }
      }
    }
  }

LABEL_5:
  vretproc(a1);
  return 94;
}

uint64_t gettok(uint64_t a1)
{
  v209 = *MEMORY[0x277D85DE8];
  v203[0] = 0;
  v203[1] = 0;
  v204 = 0;
  v201[0] = 0;
  v201[1] = 0;
  v202 = 0;
  v199 = 0;
  v200 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v198, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v208, v3);
  if (setjmp(v208) || ventproc(a1, v198, v207, v206, v205, v208))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    WORD2(v204) = 0;
    LODWORD(v204) = 0;
    LODWORD(v203[0]) = -65535;
    WORD2(v202) = 0;
    LODWORD(v202) = 0;
    LODWORD(v201[0]) = -65535;
    push_ptr_init(a1, &v199);
    fence_13(a1);
    v197 = *(a1 + 2402);
    *(a1 + 2418) = 0;
    *(a1 + 5926) = 0;
    *(a1 + 2320) = *(a1 + 1392);
    v5 = OUTLINED_FUNCTION_16_9();
    if (!lpta_loadp_setscan_r(v5, v6, v7))
    {
      *(a1 + 136) = 1;
      v8 = OUTLINED_FUNCTION_1_12();
      if (!test_ptr(v8, v9, v10))
      {
        print_prompt(a1);
      }
    }

    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
LABEL_8:
    startloop(a1, 2);
LABEL_9:
    v15 = v14;
    do
    {
      do
      {
        v16 = v15;
        v17 = OUTLINED_FUNCTION_8_11();
        copyvar(v17, v203, v18);
        if (*(a1 + 2354) != 1)
        {
          v24 = OUTLINED_FUNCTION_3_12();
          starttest_l(v24, v25);
          bspush_ca_boa();
          v26 = OUTLINED_FUNCTION_8_11();
          tvar = read_tvar(v26, 6, v27, v28, v29, v30, v31, v32);
LABEL_27:
          if (tvar)
          {
            LODWORD(v23) = v16;
          }

          else
          {
            LODWORD(v23) = 1;
          }

LABEL_35:
          v22 = v13;
          goto LABEL_36;
        }

LABEL_11:
        v14 = v16;
        v19 = v13;
        ++*(a1 + 2402);
        *(a1 + 2354) = 0;
        starttest(a1, 6);
        settvar_s();
        v20 = OUTLINED_FUNCTION_8_11();
        if (testeq_tvars(v20, v201, v21))
        {
          v22 = v13;
          goto LABEL_13;
        }

        v34 = v11;
        v11 = 1;
        v35 = 1;
        v15 = v14;
        v36 = v12;
        v37 = v14;
      }

      while (v34 != 1);
LABEL_16:
      v38 = v37;
      v13 = v19;
      v11 = v35;
      *(a1 + 2346) = 0;
      if (v36 == 1)
      {
        starttest_e(a1, 30);
        v39 = OUTLINED_FUNCTION_15_9();
        if (!lpta_loadp_setscan_l(v39, v40, 1))
        {
          bspush_ca_scan_boa();
          v12 = 1;
          if (testFldeq(a1, 1u, 0, 72))
          {
            LODWORD(v23) = v38;
          }

          else
          {
            LODWORD(v23) = 1;
          }

          goto LABEL_35;
        }

        v12 = 1;
      }

      else
      {
        v12 = v36;
      }

      v16 = v38;
LABEL_21:
      starttest(a1, 32);
      v41 = OUTLINED_FUNCTION_15_9();
      if (!lpta_loadp_setscan_l(v41, v42, 4))
      {
        bspush_ca_scan_boa();
        tvar = advanc(a1);
        goto LABEL_27;
      }

      v43 = v12;
      v14 = v16;
LABEL_23:
      *(a1 + 168) = 1;
      v44 = v11;
      *(a1 + 144) = *(a1 + 1392);
      *(a1 + 128) = 0;
      v45 = OUTLINED_FUNCTION_12_11();
      insert_l(v45, v46);
      lpta_storep(a1, &v199, v47);
      OUTLINED_FUNCTION_8_11();
      insert_2ptv();
      v12 = v43;
      v22 = v13;
      LODWORD(v23) = v14;
      v48 = v43;
      if (v49)
      {
        goto LABEL_36;
      }

LABEL_24:
      v22 = v13;
      starttest(a1, 35);
      settvar_s();
      v50 = OUTLINED_FUNCTION_8_11();
      if (testeq_tvars(v50, v201, v51))
      {
        v11 = v44;
        v12 = v48;
LABEL_13:
        LODWORD(v23) = v14;
LABEL_36:
        v57 = v22;
        while (2)
        {
          v13 = v57;
          v58 = *(a1 + 104);
          if (v58)
          {
            v59 = OUTLINED_FUNCTION_19_6(v58);
            v14 = v60;
          }

          else
          {
            v59 = vback(a1, v23);
            v14 = 0;
          }

          v61 = v59 - 1;
          v62 = v13;
          v35 = v11;
          v36 = v12;
          v19 = v13;
          v37 = v14;
          v44 = v11;
          v55 = v12;
          v56 = v14;
          switch(v61)
          {
            case 0:
              goto LABEL_8;
            case 1:
            case 12:
            case 23:
              goto LABEL_117;
            case 2:
            case 45:
              goto LABEL_9;
            case 3:
              goto LABEL_88;
            case 4:
              bspop_boa(a1);
              OUTLINED_FUNCTION_25_6();
              settvar_s();
LABEL_88:
              v16 = v14;
              goto LABEL_11;
            case 5:
              v63 = OUTLINED_FUNCTION_3_12();
              starttest(v63, v64);
              OUTLINED_FUNCTION_0_13();
              settvar_s();
              v65 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v65, v66, v67);
              OUTLINED_FUNCTION_6_11();
              if (v68)
              {
                continue;
              }

              if (v11 != 1)
              {
                goto LABEL_43;
              }

              v35 = 1;
              goto LABEL_107;
            case 6:
              v11 = 1;
              goto LABEL_9;
            case 7:
            case 8:
            case 11:
            case 17:
              goto LABEL_16;
            case 9:
              v79 = OUTLINED_FUNCTION_3_12();
              starttest(v79, v80);
              OUTLINED_FUNCTION_0_13();
              settvar_s();
              v81 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v81, v82, v83);
              OUTLINED_FUNCTION_6_11();
              if (v84)
              {
                continue;
              }

              if (v12)
              {
                goto LABEL_49;
              }

              *(a1 + 2354) = 1;
              --*(a1 + 2402);
              goto LABEL_117;
            case 10:
LABEL_43:
              *(a1 + 2386) = 1;
              ++*(a1 + 2346);
              --*(a1 + 2402);
              if (*(a1 + 2350))
              {
                goto LABEL_117;
              }

              v69 = OUTLINED_FUNCTION_3_12();
              starttest(v69, v70);
              OUTLINED_FUNCTION_3_12();
              bspush_ca_boa();
              v71 = OUTLINED_FUNCTION_26_6();
              goto LABEL_67;
            case 13:
              goto LABEL_112;
            case 14:
              bspop_boa(a1);
              v191 = OUTLINED_FUNCTION_15_9();
              text_index(v191, v192);
LABEL_112:
              *(a1 + 2406) = 0;
              goto LABEL_3;
            case 15:
              v98 = OUTLINED_FUNCTION_3_12();
              starttest(v98, v99);
              OUTLINED_FUNCTION_0_13();
              settvar_s();
              v100 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v100, v101, v102);
              OUTLINED_FUNCTION_6_11();
              if (v103)
              {
                continue;
              }

              OUTLINED_FUNCTION_25_6();
              settvar_s();
              npush_s(a1);
              *(a1 + 2362) = 4;
              v178 = OUTLINED_FUNCTION_25_6();
              npop(v178, v179);
              v35 = v11;
LABEL_107:
              v36 = v12;
              v19 = v13;
              v37 = v14;
              goto LABEL_16;
            case 16:
LABEL_49:
              v85 = OUTLINED_FUNCTION_3_12();
              startloop(v85, v86);
              v62 = 1;
              goto LABEL_50;
            case 18:
            case 27:
              goto LABEL_50;
            case 19:
              v73 = OUTLINED_FUNCTION_3_12();
              starttest(v73, v74);
              OUTLINED_FUNCTION_0_13();
              settvar_s();
              v75 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v75, v76, v77);
              OUTLINED_FUNCTION_6_11();
              if (v78)
              {
                continue;
              }

              v62 = (v13 + 1);
              ++*(a1 + 2402);
LABEL_50:
              v87 = v62;
              v88 = OUTLINED_FUNCTION_3_12();
              starttest(v88, v89);
              OUTLINED_FUNCTION_3_12();
              bspush_ca_boa();
              v90 = OUTLINED_FUNCTION_8_11();
              if (read_tvar(v90, 6, v91, v92, v93, v94, v95, v96))
              {
                LODWORD(v23) = v14;
              }

              else
              {
                LODWORD(v23) = 1;
              }

              v57 = v87;
              continue;
            case 20:
              bspop_boa(a1);
              OUTLINED_FUNCTION_25_6();
              settvar_s();
              goto LABEL_65;
            case 21:
LABEL_65:
              v126 = OUTLINED_FUNCTION_3_12();
              starttest(v126, v127);
              OUTLINED_FUNCTION_17_8();
              settvar_s();
              v128 = OUTLINED_FUNCTION_8_11();
              testeq_tvars(v128, v201, v129);
              OUTLINED_FUNCTION_6_11();
              if (!v130)
              {
                *(a1 + 2386) = 1;
                *(a1 + 5926) = 1;
                ++*(a1 + 2346);
                *(a1 + 2354) = 0;
                v131 = OUTLINED_FUNCTION_3_12();
                starttest(v131, v132);
                OUTLINED_FUNCTION_3_12();
                bspush_ca_boa();
                v71 = OUTLINED_FUNCTION_26_6();
LABEL_67:
                lpta_loadp_setscan_r(v71, v72, 1);
                OUTLINED_FUNCTION_6_11();
                if (!v135)
                {
                  if (advance_tok(a1, v23, v133, v134))
                  {
                    LODWORD(v23) = v14;
                  }

                  else
                  {
                    LODWORD(v23) = 1;
                  }

                  v57 = v13;
                }
              }

              continue;
            case 22:
              *(a1 + 2354) = 1;
              v104 = OUTLINED_FUNCTION_3_12();
              starttest(v104, v105);
              v106 = OUTLINED_FUNCTION_26_6();
              if (lpta_loadp_setscan_r(v106, v107, 1) || advance_tok(a1, v108, v109, v110))
              {
                goto LABEL_59;
              }

              *(a1 + 168) = 1;
              OUTLINED_FUNCTION_5_11();
              v155 = OUTLINED_FUNCTION_11_11();
              insert_l(v155, v156);
              v157 = OUTLINED_FUNCTION_20_6();
              lpta_storep(v157, v158, v159);
              v160 = OUTLINED_FUNCTION_11_11();
              insert_2pt_s(v160, v161, v162, &_MergedGlobals_7, 0);
              OUTLINED_FUNCTION_6_11();
              if (v163)
              {
                continue;
              }

              *(a1 + 168) = 1;
              *(a1 + 144) = *(a1 + 2304);
              *(a1 + 136) = 1;
              OUTLINED_FUNCTION_2_12();
              v193 = OUTLINED_FUNCTION_14_9();
              proj_l(v193, v194, v195);
LABEL_114:
              if (v13 >= 2)
              {
                *(a1 + 168) = 1;
                OUTLINED_FUNCTION_5_11();
                insert_l(a1, v196);
              }

LABEL_116:
              *(a1 + 5926) = 1;
              goto LABEL_117;
            case 24:
              bspop_boa(a1);
              *(a1 + 2304) = *(a1 + 1408);
              *(a1 + 2406) = 0;
              goto LABEL_117;
            case 25:
LABEL_59:
              *(a1 + 168) = 1;
              OUTLINED_FUNCTION_5_11();
              insert_l(a1, 1);
              v111 = OUTLINED_FUNCTION_20_6();
              lpta_storep(v111, v112, v113);
              insert_2pt_s(a1, 1u, 1, &_MergedGlobals_7, 0);
              OUTLINED_FUNCTION_6_11();
              if (!v114)
              {
                goto LABEL_114;
              }

              continue;
            case 26:
            case 28:
              goto LABEL_116;
            case 29:
              goto LABEL_105;
            case 30:
              bspop_boa(a1);
              advance_tok(a1, v115, v116, v117);
              OUTLINED_FUNCTION_6_11();
              if (v118)
              {
                continue;
              }

              *(a1 + 168) = 1;
              OUTLINED_FUNCTION_5_11();
              v119 = OUTLINED_FUNCTION_11_11();
              insert_l(v119, v120);
              lpta_storep(a1, &v199, v121);
              v122 = OUTLINED_FUNCTION_11_11();
              insert_2pt_s(v122, v123, v124, &_MergedGlobals_7, 0);
              OUTLINED_FUNCTION_6_11();
              if (v125)
              {
                continue;
              }

              *(a1 + 168) = 1;
              *(a1 + 144) = v200;
              *(a1 + 136) = 1;
              OUTLINED_FUNCTION_2_12();
              v186 = OUTLINED_FUNCTION_14_9();
              proj_l(v186, v187, v188);
LABEL_105:
              v16 = v14;
              goto LABEL_21;
            case 31:
              v43 = v12;
              goto LABEL_23;
            case 32:
              bspop_boa(a1);
              advance_tok(a1, v140, v141, v142);
              OUTLINED_FUNCTION_6_11();
              if (v143)
              {
                continue;
              }

              *(a1 + 168) = 1;
              OUTLINED_FUNCTION_5_11();
              insert_l(a1, 4);
              v144 = OUTLINED_FUNCTION_13_11();
              lpta_storep(v144, v145, v146);
              v147 = OUTLINED_FUNCTION_13_11();
              lpta_rpta_loadp(v147, v148, v149);
              OUTLINED_FUNCTION_8_11();
              insert_2ptv();
              OUTLINED_FUNCTION_6_11();
              if (v150)
              {
                continue;
              }

              *(a1 + 168) = 1;
              *(a1 + 144) = v200;
              *(a1 + 136) = 1;
              v189 = OUTLINED_FUNCTION_1_12();
              proj_l(v189, 8, v190);
              goto LABEL_108;
            case 33:
LABEL_108:
              v44 = v11;
              v48 = v12;
              goto LABEL_24;
            case 34:
              v164 = v11;
              goto LABEL_83;
            case 35:
            case 37:
              v97 = OUTLINED_FUNCTION_3_12();
              bspush_ca(v97);
              OUTLINED_FUNCTION_0_13();
              goto LABEL_73;
            case 36:
              goto LABEL_82;
            case 38:
              OUTLINED_FUNCTION_0_13();
LABEL_73:
              settvar_s();
              v136 = OUTLINED_FUNCTION_4_11();
              testeq_tvars(v136, v137, v138);
              OUTLINED_FUNCTION_6_11();
              if (v139)
              {
                continue;
              }

              v44 = v11;
              v55 = v12;
              v56 = v14;
              goto LABEL_82;
            case 39:
              v164 = v11;
              goto LABEL_90;
            case 40:
              v170 = v11;
              v171 = v12;
              v169 = v13;
              goto LABEL_96;
            case 41:
              goto LABEL_94;
            case 42:
              bspop_boa(a1);
              advance_tok(a1, v151, v152, v153);
              OUTLINED_FUNCTION_6_11();
              if (v154)
              {
                continue;
              }

              v180 = OUTLINED_FUNCTION_3_12();
              bspush_ca_scan(v180, v181);
              goto LABEL_101;
            case 43:
              savescptr(a1, 44, a1 + 1416);
LABEL_94:
              v170 = v11;
              v171 = v12;
              v169 = v13;
              goto LABEL_99;
            case 44:
LABEL_101:
              v177 = v14;
              goto LABEL_102;
            default:
              goto LABEL_3;
          }
        }
      }

      bspush_ca(a1);
      OUTLINED_FUNCTION_18_7();
      settvar_s();
      v52 = OUTLINED_FUNCTION_18_7();
      v54 = testeq_tvars(v52, v53, v203);
      v11 = v44;
      v12 = v48;
      LODWORD(v23) = v14;
      v55 = v48;
      v56 = v14;
      if (v54)
      {
        goto LABEL_36;
      }

LABEL_82:
      v14 = v56;
      LODWORD(v12) = v55;
      *(a1 + 2488) = v200;
      v164 = v44;
LABEL_83:
      if (v12 == 1)
      {
        v165 = v200;
        *(a1 + 2304) = v200;
        *(a1 + 168) = 1;
        *(a1 + 144) = v165;
        *(a1 + 136) = 1;
        OUTLINED_FUNCTION_2_12();
        v166 = OUTLINED_FUNCTION_14_9();
        proj_l(v166, v167, v168);
      }

LABEL_90:
      *(a1 + 2354) = 0;
      if (v164 == 1)
      {
        lpta_rpta_loadp(a1, &v199, a1 + 1384);
        v169 = 0;
        OUTLINED_FUNCTION_12_11();
        v170 = mark_s() != 0;
        v171 = 0;
      }

      else
      {
        v170 = v164;
        v171 = 0;
        v169 = 0;
      }

LABEL_96:
      *(a1 + 2350) = 1;
      lpta_loadpn(a1, a1 + 1416);
      v172 = OUTLINED_FUNCTION_15_9();
      rpta_loadpn(v172, v173);
      if (!compare_ptas(a1) && !testeq(a1))
      {
        starttest_e(a1, 42);
        v174 = OUTLINED_FUNCTION_15_9();
        v176 = lpta_loadp_setscan_l(v174, v175, 1);
        v11 = v170;
        v12 = v171;
        v13 = v169;
        v177 = v14;
        if (!v176)
        {
LABEL_102:
          v182 = v177;
          bspush_ca_scan_boa();
          v183 = OUTLINED_FUNCTION_12_11();
          if (testFldeq(v183, v184, v185, 72))
          {
            LODWORD(v23) = v182;
          }

          else
          {
            LODWORD(v23) = 1;
          }

          goto LABEL_35;
        }
      }

LABEL_99:
      v13 = v169;
      v12 = v171;
      v11 = v170;
      *(a1 + 2274) = 0;
      v15 = v14;
    }

    while (*(a1 + 2442) > (*(a1 + 2402) - v197));
    *(a1 + 2418) = 1;
LABEL_117:
    vretproc(a1);
    return 0;
  }
}

uint64_t insert_char_count(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = 0;
  OUTLINED_FUNCTION_10_11();
  bzero(v35, v2);
  OUTLINED_FUNCTION_9_11();
  bzero(v48, v3);
  v4 = setjmp(v48);
  if (v4 || OUTLINED_FUNCTION_22_6(v4, v35, v5, v6, v7, v8, v9, v10, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17], v35[18], v35[19], v35[20], v35[21], v35[22], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  push_ptr_init(a1, &v36);
  fence_13(a1);
  v37 = *(a1 + 3352);
  v12 = OUTLINED_FUNCTION_20_6();
  lpta_loadpn(v12, v13);
  rpta_loadpn(a1, a1 + 3344);
  if (compare_ptas(a1) || testeq(a1))
  {
LABEL_11:
    v20 = OUTLINED_FUNCTION_3_12();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_15_9();
    if (lpta_loadp_setscan_l(v22, v23, 1) || (*(a1 + 136) = 1, v24 = OUTLINED_FUNCTION_1_12(), test_ptr(v24, v25, v26)) || lpta_loadp_setscan_l(a1, a1 + 2312, 0) || advance_tok(a1, v27, v28, v29))
    {
LABEL_16:
      copyvar(a1, &v36, (a1 + 2296));
      goto LABEL_17;
    }

LABEL_15:
    v19 = 6;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_3_12();
    starttest_e(v14, v15);
    if (lpta_loadp_setscan_l(a1, a1 + 2312, 0) || advance_tok(a1, v16, v17, v18))
    {
      goto LABEL_17;
    }

LABEL_9:
    v19 = 3;
  }

  savescptr(a1, v19, &v36);
LABEL_17:
  while (2)
  {
    lpta_rpta_loadp(a1, &v36, a1 + 2312);
    OUTLINED_FUNCTION_12_11();
    insert_2ptv();
    if (v30)
    {
      v31 = *(a1 + 104);
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_19_6(v31);
      }

      else
      {
        v33 = OUTLINED_FUNCTION_12_11();
        v32 = vback(v33, v34);
      }

      switch(v32)
      {
        case 1:
          goto LABEL_11;
        case 2:
        case 4:
          continue;
        case 3:
          goto LABEL_9;
        case 5:
          goto LABEL_16;
        case 6:
          goto LABEL_15;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  vretproc(a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_12()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -4);
}

uint64_t OUTLINED_FUNCTION_22_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

void *fence_14(uint64_t a1, int a2, uint64_t a3)
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

void build_phrases(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_77_0();
  v77 = 0;
  v78 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v76, v4);
  OUTLINED_FUNCTION_22_7();
  bzero(v92, v5);
  v6 = setjmp(v92);
  if (!v6 && !OUTLINED_FUNCTION_80_0(v6, v76, v7, v8, v9, v10, v11, v12, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1], v76[2], v76[3], v76[4], v76[5], v76[6], v76[7], v76[8], v76[9], v76[10], v76[11], v76[12], v76[13], v76[14], v76[15], v76[16], v76[17], v76[18], v76[19], v76[20], v76[21], v76[22], v77, v78, v79[0], v79[1], v80[0], v80[1], v80[2], v80[3], v80[4], v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92[0]))
  {
    v13 = OUTLINED_FUNCTION_11_12();
    get_parm(v13, v14, v15, -6);
    v16 = OUTLINED_FUNCTION_28_4();
    get_parm(v16, v17, v18, -6);
    push_ptr_init(v3, v80);
    push_ptr_init(v3, v79);
    push_ptr_init(v3, &v77);
    fence_14(v3, 0, &null_str_3);
    lpta_loadpn(v3, v3 + 1400);
    v19 = OUTLINED_FUNCTION_24_7();
    rpta_loadpn(v19, v20);
    OUTLINED_FUNCTION_21_7();
    rpta_ctxtl();
    if (compare_ptas(v3) || testeq(v3))
    {
      v21 = 0;
LABEL_7:
      starttest(v3, 2);
      OUTLINED_FUNCTION_42_0();
      bspush_ca_boa();
      *(v3 + 136) = 1;
      *(v3 + 112) = v81;
      *(v3 + 128) = 0;
      OUTLINED_FUNCTION_26_7();
      if (!lpta_tstctxtl())
      {
        OUTLINED_FUNCTION_26_7();
        if (!lpta_tstmovel())
        {
          v24 = OUTLINED_FUNCTION_21_7();
          setscan_r(v24, v25, v26);
          if (!v28)
          {
            if (advance_tok(v3, v27, v22, v23))
            {
              v21 = v21;
            }

            else
            {
              v21 = 1;
            }
          }
        }
      }

      while (1)
      {
        v29 = v21;
        while (2)
        {
          v30 = *(v3 + 104);
          if (v30)
          {
            *(v3 + 104) = 0;
            v31 = v30;
            v21 = v29;
          }

          else
          {
            v31 = vback(v3, v29);
            v21 = 0;
          }

          switch(v31)
          {
            case 1:
              goto LABEL_7;
            case 2:
              if (*(v3 + 2606) <= *(v3 + 2538))
              {
                v32 = OUTLINED_FUNCTION_42_0();
                delimit_sentence(v32);
              }

              goto LABEL_20;
            case 3:
              bspop_boa(v3);
              goto LABEL_3;
            case 4:
LABEL_20:
              OUTLINED_FUNCTION_42_0();
              delimit_major_phrase();
              goto LABEL_21;
            case 5:
LABEL_21:
              mark_word_categories(v3);
              goto LABEL_22;
            case 6:
LABEL_22:
              apply_comma_phr_rules(v3, v29, v22, v23);
              goto LABEL_23;
            case 7:
LABEL_23:
              v33 = OUTLINED_FUNCTION_42_0();
              insert_major_phrase(v33);
              goto LABEL_24;
            case 8:
LABEL_24:
              OUTLINED_FUNCTION_91();
              if (v35 || *(v3 + 5126) == v34)
              {
                goto LABEL_32;
              }

              v36 = OUTLINED_FUNCTION_88_0();
              startloop(v36, v37);
              v38 = OUTLINED_FUNCTION_64_0();
              lpta_loadpn(v38, v39);
              OUTLINED_FUNCTION_26_7();
              lpta_mover();
              v40 = OUTLINED_FUNCTION_59_0();
              lpta_storep(v40, v41, v42);
              v43 = OUTLINED_FUNCTION_76_0();
              lpta_loadpn(v43, v44);
              OUTLINED_FUNCTION_26_7();
              lpta_mover();
              lpta_storep(v3, &v77, v45);
              v46 = OUTLINED_FUNCTION_63_0();
              v48 = forall_to_test(v46, v47, &v77);
              v29 = v21;
              if (v48)
              {
                continue;
              }

LABEL_27:
              v49 = OUTLINED_FUNCTION_75_0();
              bspush_ca(v49);
              v50 = OUTLINED_FUNCTION_59_0();
              v52 = lpta_loadp_setscan_r(v50, v51, 5);
              v29 = v21;
              if (v52)
              {
                continue;
              }

              v53 = advance_tok(v3, v21, v22, v23);
              v29 = v21;
              if (v53)
              {
                continue;
              }

LABEL_29:
              v54 = OUTLINED_FUNCTION_74_0();
              savescptr(v54, v55, v79);
LABEL_30:
              v56 = OUTLINED_FUNCTION_19_7();
              starttest(v56, v57);
              v58 = OUTLINED_FUNCTION_59_0();
              adjust_words_in_phrase(v58, v59, v79);
LABEL_31:
              v60 = OUTLINED_FUNCTION_19_7();
              v62 = forto_adv_upto_r(v60, v61, 10, 13, 5, v80);
              v29 = v21;
              if (v62)
              {
                continue;
              }

LABEL_32:
              v63 = OUTLINED_FUNCTION_25_7();
              starttest(v63, v64);
              v65 = OUTLINED_FUNCTION_63_0();
              if (lpta_loadp_setscan_r(v65, v66, 1))
              {
                goto LABEL_3;
              }

              do
              {
LABEL_33:
                v67 = OUTLINED_FUNCTION_27_5();
                bspush_ca_scan(v67, v68);
                OUTLINED_FUNCTION_86_0();
              }

              while (!test_string_s());
              break;
            case 9:
              goto LABEL_32;
            case 10:
              goto LABEL_30;
            case 11:
              goto LABEL_31;
            case 12:
              goto LABEL_29;
            case 13:
              goto LABEL_27;
            case 15:
              savescptr(v3, 15, v3 + 1416);
              goto LABEL_3;
            case 16:
              goto LABEL_33;
            default:
              goto LABEL_3;
          }

          break;
        }
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_60_0();
}

uint64_t delimit_sentence(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  v73 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_96(v11, v12);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_52_0();
  if (ventproc(v1, v13, v14, v15, v16, v72))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_11_12();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_28_4();
  get_parm(v21, v22, v23, -6);
  v24 = OUTLINED_FUNCTION_30_3();
  push_ptr_init(v24, v25);
  v26 = OUTLINED_FUNCTION_29_4();
  push_ptr_init(v26, v27);
  v28 = OUTLINED_FUNCTION_33_2();
  fence_14(v28, v29, v30);
  *(v1 + 2390) = 1;
  v31 = OUTLINED_FUNCTION_24_7();
  lpta_loadpn(v31, v32);
  OUTLINED_FUNCTION_44_0();
  lpta_ctxtl();
  OUTLINED_FUNCTION_44_0();
  lpta_movel();
  lpta_storep(v1, v1 + 1240, v33);
  v34 = OUTLINED_FUNCTION_93();
  lpta_loadpn(v34, v35);
  OUTLINED_FUNCTION_44_0();
  lpta_mover();
  v36 = OUTLINED_FUNCTION_93();
  lpta_storep(v36, v37, v38);
  *(v1 + 136) = 1;
  OUTLINED_FUNCTION_66_0(*(v1 + 1232));
  OUTLINED_FUNCTION_26_7();
  proj_def();
  *(v1 + 136) = 1;
  OUTLINED_FUNCTION_66_0(*(v1 + 1248));
  OUTLINED_FUNCTION_26_7();
  proj_def();
  *(v1 + 1264) = 0;
  *(v1 + 136) = 1;
  OUTLINED_FUNCTION_66_0(0);
  proj_def_mult(v1, 8u, &delimit_sentence_proj_str, v1 + 1256);
  starttest(v1, 1);
  OUTLINED_FUNCTION_81_0();
  bspush_ca_boa();
  v39 = lpta_loadp_setscan_l(v1, v1 + 1256, 0);
  v40 = *(v1 + 104);
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_31_3(v40);
  }

  else
  {
    v41 = vback(v1, v39 == 0);
  }

  if (v41 == 1)
  {
LABEL_11:
    v44 = *(v1 + 3352);
    *(v1 + 1328) = v44;
    *(v1 + 1344) = v44;
    vretproc(v1);
    return 0;
  }

  if (v41 == 2)
  {
    bspop_boa(v1);
    divide_char_count_token(v1, v1 + 1256, v42, v43);
    goto LABEL_11;
  }

LABEL_3:
  vretproc(v1);
  return 94;
}

uint64_t delimit_major_phrase()
{
  OUTLINED_FUNCTION_65_0();
  v70 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_12(v1, v2, v3, v4, v5, v6, v7, v8, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
  OUTLINED_FUNCTION_22_7();
  bzero(v69, v9);
  v10 = setjmp(v69);
  if (v10 || OUTLINED_FUNCTION_56_0(v10, &v34, v11, v12, v13, v14, v15, v16, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0]))
  {
    v17 = 94;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_62_0(v19, v20);
    v17 = 0;
    v21 = OUTLINED_FUNCTION_33_2();
    fence_14(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_64_0();
    lpta_loadpn(v24, v25);
    OUTLINED_FUNCTION_21_7();
    lpta_ctxtr();
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v26 = OUTLINED_FUNCTION_64_0();
    lpta_storep(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_27_5();
    lpta_loadpn(v29, v30);
    OUTLINED_FUNCTION_21_7();
    lpta_ctxtl();
    OUTLINED_FUNCTION_21_7();
    lpta_movel();
    v31 = OUTLINED_FUNCTION_76_0();
    lpta_storep(v31, v32, v33);
    *(v0 + 136) = 1;
    OUTLINED_FUNCTION_66_0(*(v0 + 1424));
    OUTLINED_FUNCTION_26_7();
    proj_def();
    *(v0 + 136) = 1;
    OUTLINED_FUNCTION_66_0(*(v0 + 1440));
    OUTLINED_FUNCTION_26_7();
    proj_def();
  }

  vretproc(v0);
  return v17;
}

void apply_comma_phr_rules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_61_0();
  v5 = v4;
  v73 = *MEMORY[0x277D85DE8];
  v68[0] = 0;
  v68[1] = 0;
  v67[0] = 0;
  v67[1] = 0;
  OUTLINED_FUNCTION_90_0();
  v65 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v64, v6);
  OUTLINED_FUNCTION_22_7();
  bzero(v72, v7);
  if (setjmp(v72) || ventproc(v5, v64, v71, v70, v69, v72))
  {
    goto LABEL_3;
  }

  v8 = OUTLINED_FUNCTION_25_7();
  push_ptr_init(v8, v9);
  v10 = OUTLINED_FUNCTION_27_5();
  push_ptr_init(v10, v11);
  v12 = OUTLINED_FUNCTION_24_7();
  push_ptr_init(v12, v13);
  v14 = OUTLINED_FUNCTION_48_0();
  push_ptr_init(v14, v15);
  v65 = 65532;
  v16 = OUTLINED_FUNCTION_33_2();
  fence_14(v16, v17, v18);
  handle_non_phrasal_commas(v5, v19, v20, v21);
  while (2)
  {
    v22 = OUTLINED_FUNCTION_75_0();
    startloop(v22, v23);
    v24 = OUTLINED_FUNCTION_25_7();
    copyvar(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_24_7();
    copyvar(v27, v28, v29);
LABEL_6:
    while (1)
    {
      v30 = OUTLINED_FUNCTION_25_7();
      if (forall_to_test(v30, v31, v66))
      {
        break;
      }

LABEL_7:
      v32 = OUTLINED_FUNCTION_74_0();
      bspush_ca(v32);
      v33 = OUTLINED_FUNCTION_25_7();
      if (lpta_loadp_setscan_r(v33, v34, 5) || advanc(v5))
      {
        break;
      }

LABEL_9:
      v35 = OUTLINED_FUNCTION_19_7();
      savescptr(v35, v36, v67);
LABEL_10:
      v37 = OUTLINED_FUNCTION_6_12();
      post_comma_phrase(v37, v38, v39);
      if (!v40)
      {
        v46 = OUTLINED_FUNCTION_27_5();
        lpta_loadpn(v46, v47);
        v48 = OUTLINED_FUNCTION_76_0();
        rpta_loadpn(v48, v49);
        if (!compare_ptas(v5) && !testeq(v5))
        {
          goto LABEL_21;
        }

LABEL_19:
        v50 = OUTLINED_FUNCTION_6_12();
        insert_comma_phrase(v50, v51, v52);
        goto LABEL_20;
      }

LABEL_11:
      OUTLINED_FUNCTION_6_12();
      find_unpuncted_phrases();
LABEL_12:
      v41 = OUTLINED_FUNCTION_27_5();
      lpta_loadpn(v41, v42);
      v43 = OUTLINED_FUNCTION_76_0();
      rpta_loadpn(v43, v44);
      if (!compare_ptas(v5) && !testeq(v5))
      {
LABEL_21:
        v58 = OUTLINED_FUNCTION_73_0();
        starttest(v58, v59);
        move_i(v5, &v65, 0);
        OUTLINED_FUNCTION_48_0();
        if (!set_phrase_defaults())
        {
          goto LABEL_3;
        }

        break;
      }

LABEL_14:
      v45 = OUTLINED_FUNCTION_6_12();
      if (comma_at_end_quote(v45))
      {
LABEL_15:
        OUTLINED_FUNCTION_6_12();
        if (apply_lang_comma_rules())
        {
          goto LABEL_19;
        }
      }

LABEL_20:
      v53 = OUTLINED_FUNCTION_27_5();
      lpta_loadpn(v53, v54);
      lpta_mover();
      v55 = OUTLINED_FUNCTION_48_0();
      lpta_storep(v55, v56, v57);
      OUTLINED_FUNCTION_84_0();
      forall_cont_from();
    }

LABEL_22:
    v60 = v5[13];
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_31_3(v60);
    }

    else
    {
      v62 = OUTLINED_FUNCTION_87_0();
      v61 = vback(v62, v63);
    }

    switch(v61)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_21;
      case 3:
        goto LABEL_10;
      case 4:
        if (!forto_adv_r(v5, 2, 3, 15, 5, v68))
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      case 5:
        goto LABEL_9;
      case 6:
        goto LABEL_11;
      case 7:
      case 14:
        goto LABEL_19;
      case 8:
      case 13:
        goto LABEL_20;
      case 9:
        goto LABEL_6;
      case 10:
        goto LABEL_12;
      case 11:
        goto LABEL_14;
      case 12:
        goto LABEL_15;
      case 15:
        goto LABEL_7;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_60_0();
}

uint64_t insert_major_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  v77 = *MEMORY[0x277D85DE8];
  v66 = 0;
  v67 = 0;
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_96(v11, v12);
  v13 = setjmp(v2);
  if (v13 || (v20 = OUTLINED_FUNCTION_34_2(v13, &v39, v14, v15, v16, v17, v18, v19, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76), v20))
  {
    v21 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_32_2(v20, &v66);
    v23 = OUTLINED_FUNCTION_28_4();
    get_parm(v23, v24, v25, -6);
    v26 = OUTLINED_FUNCTION_29_4();
    push_ptr_init(v26, v27);
    fence_14(v1, 0, &null_str_3);
    v28 = OUTLINED_FUNCTION_45_0();
    if (!lpta_loadp_setscan_l(v28, v29, v30) && !advanc(v1))
    {
      v31 = OUTLINED_FUNCTION_37_1();
      savescptr(v31, v32, v33);
    }

    v34 = OUTLINED_FUNCTION_25_7();
    assign_major_phr_features(v34);
    v35 = OUTLINED_FUNCTION_25_7();
    insert_phrase(v35, v36, v37, v38);
    v21 = 0;
  }

  vretproc(v1);
  return v21;
}

void adjust_words_in_phrase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_61_0();
  v4 = v3;
  v52 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_0();
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v44, v5);
  OUTLINED_FUNCTION_22_7();
  bzero(v51, v6);
  v7 = setjmp(v51);
  if (!v7 && !OUTLINED_FUNCTION_58_0(v7, v44, v8, v9, v10, v11, v12, v13, v43, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10], v44[11], v44[12], v44[13], v44[14], v44[15], v44[16], v44[17], v44[18], v44[19], v44[20], v44[21], v44[22], v45, v46, v47, v48, v49[0], v49[1], v50[0], v50[1], v50[2], SHIDWORD(v50[2]), v50[3], SWORD2(v50[3]), SHIWORD(v50[3]), v50[4], SWORD2(v50[4]), SBYTE6(v50[4]), SHIBYTE(v50[4]), v50[5], v51[0]))
  {
    v14 = OUTLINED_FUNCTION_6_12();
    get_parm(v14, v15, v16, -6);
    v17 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_70_0(v17, v18);
    v19 = OUTLINED_FUNCTION_24_7();
    push_ptr_init(v19, v20);
    v21 = OUTLINED_FUNCTION_48_0();
    push_ptr_init(v21, v22);
    v23 = OUTLINED_FUNCTION_33_2();
    fence_14(v23, v24, v25);
    v48 = *(v4 + 3352);
    v46 = v48;
    v26 = OUTLINED_FUNCTION_6_12();
    adjust_word_stress(v26);
    while (2)
    {
      v27 = OUTLINED_FUNCTION_6_12();
      get_nuclear_accent(v27, v28, v29, &v47);
LABEL_6:
      v30 = OUTLINED_FUNCTION_6_12();
      adjust_accents(v30, v31, v32, &v47);
LABEL_7:
      v33 = OUTLINED_FUNCTION_63_0();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_39_0();
      bspush_ca(v35);
LABEL_8:
      OUTLINED_FUNCTION_40_0();
      if (v36)
      {
LABEL_15:
        adjust_numbers(v4, v50, v49);
LABEL_16:
        if (*(v4 + 3454) == 3)
        {
          print_normalized_inp(v4, v50, v49);
        }
      }

      else
      {
        v37 = *(v4 + 104);
        if (v37)
        {
          v38 = OUTLINED_FUNCTION_31_3(v37);
        }

        else
        {
          v39 = OUTLINED_FUNCTION_87_0();
          v38 = vback(v39, v40);
        }

        switch(v38)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_6;
          case 3:
            goto LABEL_7;
          case 5:
            v41 = OUTLINED_FUNCTION_59_0();
            bspush_ca(v41);
            goto LABEL_8;
          case 6:
            goto LABEL_15;
          case 7:
            v42 = OUTLINED_FUNCTION_85_0();
            bspush_ca(v42);
            goto LABEL_8;
          case 8:
            goto LABEL_8;
          case 9:
            goto LABEL_16;
          default:
            goto LABEL_3;
        }
      }

      break;
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_60_0();
}

void handle_non_phrasal_commas(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_61_0();
  v5 = v4;
  v68 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_0();
  v53 = 0;
  v54 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v52, v6);
  OUTLINED_FUNCTION_22_7();
  bzero(v67, v7);
  v8 = setjmp(v67);
  if (v8)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_58_0(v8, v52, v9, v10, v11, v12, v13, v14, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v53, v54, v55[0], v55[1], v56[0], v56[1], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67[0]))
  {
    goto LABEL_4;
  }

  push_ptr_init(v5, v56);
  push_ptr_init(v5, v55);
  push_ptr_init(v5, &v53);
  fence_14(v5, 0, &null_str_3);
  if (*(v5 + 2282) == *(v5 + 3238))
  {
    goto LABEL_4;
  }

  v15 = 0;
  while (2)
  {
    startloop(v5, 2);
    v16 = OUTLINED_FUNCTION_27_5();
    copyvar(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_24_7();
    copyvar(v19, v20, v21);
LABEL_7:
    v22 = v15;
LABEL_8:
    v15 = v22;
    v23 = OUTLINED_FUNCTION_27_5();
    v25 = forall_to_test(v23, v24, v55);
    v26 = v15;
    if (!v25)
    {
LABEL_9:
      v15 = v26;
      v27 = OUTLINED_FUNCTION_73_0();
      bspush_ca(v27);
      v28 = OUTLINED_FUNCTION_27_5();
      v30 = lpta_loadp_setscan_l(v28, v29, 5);
      v31 = v15;
      if (!v30)
      {
LABEL_10:
        v32 = v31;
        starttest(v5, 5);
        v33 = OUTLINED_FUNCTION_27_5();
        lpta_loadpn(v33, v34);
        v35 = OUTLINED_FUNCTION_64_0();
        rpta_loadpn(v35, v36);
        if (compare_ptas(v5))
        {
          v37 = v32;
        }

        else
        {
          v38 = testeq(v5);
          v37 = v32;
          v39 = v32;
          if (!v38)
          {
            goto LABEL_13;
          }
        }

LABEL_18:
        v15 = v37;
        starttest(v5, 4);
        OUTLINED_FUNCTION_27_5();
        if (lang_non_phrasal_comma())
        {
          v39 = v15;
LABEL_13:
          v15 = v39;
          if (!forto_adv_r(v5, 2, 3, 9, 5, v56))
          {
            break;
          }

          goto LABEL_14;
        }

        v42 = OUTLINED_FUNCTION_25_7();
        starttest(v42, v43);
        OUTLINED_FUNCTION_89_0();
        bspush_ca_boa();
        v44 = OUTLINED_FUNCTION_27_5();
        if (lpta_loadp_setscan_l(v44, v45, 5))
        {
          v15 = v15;
        }

        else
        {
          v15 = 1;
        }
      }
    }

LABEL_14:
    v40 = *(v5 + 104);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_31_3(v40);
    }

    else
    {
      v41 = vback(v5, v15);
      v15 = 0;
    }

    v22 = v15;
    v26 = v15;
    v31 = v15;
    v37 = v15;
    v39 = v15;
    switch(v41)
    {
      case 1:
        continue;
      case 3:
        goto LABEL_10;
      case 4:
      case 6:
        goto LABEL_13;
      case 5:
        goto LABEL_18;
      case 7:
        bspop_boa(v5);
        v46 = OUTLINED_FUNCTION_27_5();
        lpta_loadpn(v46, v47);
        OUTLINED_FUNCTION_87_0();
        lpta_ctxtr();
        lpta_storep(v5, &v53, v48);
        OUTLINED_FUNCTION_84_0();
        forall_cont_from();
        goto LABEL_7;
      case 8:
        goto LABEL_8;
      case 9:
        goto LABEL_9;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  vretproc(v5);
  OUTLINED_FUNCTION_60_0();
}

void post_comma_phrase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_2_13(v5, v6, v7, v8, v9, v10, v11, v12, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v13, v14, v15, v16, v17, v18, v19, v20, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v155, v157, v159, v161);
  v21 = setjmp(v4);
  if (!v21)
  {
    v29 = OUTLINED_FUNCTION_7_12(v21, v22, v23, v24, v25, v26, v27, v28, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v156, SHIDWORD(v156), v158, SWORD2(v158), SHIWORD(v158), v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v162, v163);
    if (!v29)
    {
      OUTLINED_FUNCTION_20_7(v29, v30, v31, v32, v33, v34, v35, v36, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151);
      v37 = OUTLINED_FUNCTION_13_12();
      get_parm(v37, v38, v39, -6);
      fence_14(v3, 0, &null_str_3);
      if (*(v3 + 3082))
      {
        v40 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_40_0();
          if (!v41)
          {
            break;
          }

          v42 = OUTLINED_FUNCTION_25_7();
          starttest_l(v42, v43);
          OUTLINED_FUNCTION_27_5();
          bspush_ca_boa();
          OUTLINED_FUNCTION_24_7();
          if (por_post_comma_phrase())
          {
            v44 = v40;
          }

          else
          {
            v44 = 1;
          }

          v45 = *(v3 + 104);
          if (v45)
          {
            v46 = OUTLINED_FUNCTION_31_3(v45);
          }

          else
          {
            v46 = vback(v3, v44);
            v47 = 0;
          }

          v40 = v47;
          if (v46 != 1)
          {
            if ((v46 - 2) >= 2 && v46 == 4)
            {
              bspop_boa(v3);
            }

            break;
          }
        }
      }
    }
  }

  vretproc(v3);
  OUTLINED_FUNCTION_98();
}

void insert_comma_phrase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_3_13();
  v114 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();
  v110[2] = 0;
  v110[3] = 0;
  OUTLINED_FUNCTION_2_13(v4, v5, v6, v7, v8, v9, v10, v11, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110[0], v110[1]);
  OUTLINED_FUNCTION_22_7();
  bzero(v113, v12);
  if (setjmp(v113))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_50_0();
  v17 = ventproc(v3, v13, v14, v15, v16, v113);
  if (v17)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_32_2(v17, v112);
  v18 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_62_0(v18, v19);
  v20 = OUTLINED_FUNCTION_25_7();
  push_ptr_init(v20, v21);
  v22 = OUTLINED_FUNCTION_30_3();
  push_ptr_init(v22, v23);
  v24 = OUTLINED_FUNCTION_29_4();
  push_ptr_init(v24, v25);
  fence_14(v3, 0, &null_str_3);
  v26 = OUTLINED_FUNCTION_54_0();
  fence_14(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_27_5();
  lpta_loadpn(v29, v30);
  OUTLINED_FUNCTION_21_7();
  lpta_mover();
  v31 = OUTLINED_FUNCTION_25_7();
  lpta_storep(v31, v32, v33);
  *(v3 + 136) = 1;
  OUTLINED_FUNCTION_16_10();
  proj_def();
  v34 = OUTLINED_FUNCTION_69_0();
  starttest(v34, v35);
  v36 = OUTLINED_FUNCTION_25_7();
  if (lpta_loadp_setscan_l(v36, v37, 1))
  {
    goto LABEL_5;
  }

  while (2)
  {
    v42 = OUTLINED_FUNCTION_25_7();
    bspush_ca_scan(v42, v43);
    v44 = OUTLINED_FUNCTION_27_5();
    bspush_ca_scan(v44, v45);
    if (!advanc(v3))
    {
LABEL_8:
      v46 = OUTLINED_FUNCTION_47_0();
      savescptr(v46, v47, v48);
      OUTLINED_FUNCTION_35_1();
      v49 = test_string_s();
      if (!v49)
      {
LABEL_15:
        OUTLINED_FUNCTION_94(v49, v50, v51, v52, v53, v54, v55, v56, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109);
LABEL_5:
        v38 = OUTLINED_FUNCTION_49_0();
        assign_currPhr_vals(v38, v39, v40, v41);
LABEL_6:
        insert_phrase(v3, v112, v111, v110);
        break;
      }
    }

LABEL_9:
    v57 = *(v3 + 104);
    if (v57)
    {
      v49 = OUTLINED_FUNCTION_31_3(v57);
    }

    else
    {
      v58 = OUTLINED_FUNCTION_41_0();
      v49 = vback(v58, v59);
    }

    switch(v49)
    {
      case 1:
        goto LABEL_5;
      case 2:
        continue;
      case 3:
        if (!advance_tok(v3, v50, v51, v52))
        {
          continue;
        }

        goto LABEL_9;
      case 4:
        goto LABEL_8;
      case 5:
        goto LABEL_15;
      case 6:
        goto LABEL_6;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_98();
}

uint64_t find_unpuncted_phrases()
{
  OUTLINED_FUNCTION_65_0();
  v73 = *MEMORY[0x277D85DE8];
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  HIDWORD(v59) = 65532;
  OUTLINED_FUNCTION_23_7();
  bzero(&v36, v3);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_96(v4, v5);
  v6 = setjmp(v2);
  if (v6 || OUTLINED_FUNCTION_34_2(v6, &v36, v7, v8, v9, v10, v11, v12, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72) || (v13 = OUTLINED_FUNCTION_28_4(), get_parm(v13, v14, v15, -6), OUTLINED_FUNCTION_20_7(v16, v17, v18, v19, v20, v21, v22, v23, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60), fence_14(v0, 0, &null_str_3), *(v0 + 2282) == *(v0 + 3238)))
  {
    vretproc(v0);
    return 94;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_51_0();
    mark_potential_phrase_breaks(v25, v26, v27, v28);
    if (!v29)
    {
      v30 = OUTLINED_FUNCTION_51_0();
      insert_unpuncted_phrases(v30, v31, v32, v33);
    }

    init_word_ptrs(v0);
    *(v1 + 8) = v63;
    vretproc(v0);
    return 0;
  }
}

uint64_t comma_at_end_quote(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v11, v12, v13, v14, v15, v16, v17, v18, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v173, v175, v177, v179);
  v19 = setjmp(v2);
  if (v19 || (v27 = OUTLINED_FUNCTION_7_12(v19, v20, v21, v22, v23, v24, v25, v26, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v174, SHIDWORD(v174), v176, SWORD2(v176), SHIWORD(v176), v178, SWORD2(v178), SBYTE6(v178), SHIBYTE(v178), v180, v181), v27))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  OUTLINED_FUNCTION_20_7(v27, v28, v29, v30, v31, v32, v33, v34, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169);
  v36 = OUTLINED_FUNCTION_13_12();
  get_parm(v36, v37, v38, -6);
  fence_14(v1, 0, &null_str_3);
  v39 = OUTLINED_FUNCTION_19_7();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_19_7();
  bspush_ca(v41);
  while (2)
  {
    OUTLINED_FUNCTION_40_0();
    if (!v42)
    {
LABEL_7:
      v43 = *(v1 + 104);
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_31_3(v43);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_41_0();
        v44 = vback(v45, v46);
      }

      switch(v44)
      {
        case 2:
          v47 = OUTLINED_FUNCTION_14_10();
          bspush_ca(v47);
          continue;
        case 3:
          goto LABEL_13;
        case 4:
          v48 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v48);
          continue;
        case 5:
          continue;
        case 6:
          goto LABEL_14;
        case 7:
          goto LABEL_17;
        case 8:
          goto LABEL_19;
        case 9:
          goto LABEL_20;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_13:
  v49 = OUTLINED_FUNCTION_29_4();
  follows_end_quote(v49, v50, v51, v52);
  if (v53)
  {
    goto LABEL_7;
  }

LABEL_14:
  OUTLINED_FUNCTION_40_0();
  if (v42)
  {
    v54 = OUTLINED_FUNCTION_26_7();
    npush_s(v54);
    v55 = OUTLINED_FUNCTION_1_13(2);
    npop(v55, v56);
    v57 = OUTLINED_FUNCTION_33_2();
    npush_s(v57);
    v58 = OUTLINED_FUNCTION_1_13(3);
    npop(v58, v59);
    v60 = OUTLINED_FUNCTION_33_2();
    npush_s(v60);
    v61 = OUTLINED_FUNCTION_1_13(4);
    npop(v61, v62);
  }

LABEL_17:
  OUTLINED_FUNCTION_40_0();
  if (!v42)
  {
    *(v1 + 3186) = *(v1 + 3194);
  }

LABEL_19:
  OUTLINED_FUNCTION_92();
  v63 = OUTLINED_FUNCTION_37_1();
  insert_comma_phrase(v63, v64, v65);
LABEL_20:
  vretproc(v1);
  return 0;
}

uint64_t set_phrase_defaults()
{
  OUTLINED_FUNCTION_65_0();
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v19, v1);
  OUTLINED_FUNCTION_22_7();
  bzero(v30, v2);
  v3 = setjmp(v30);
  if (v3 || OUTLINED_FUNCTION_0_14(v3, v4, v5, v6, v7, v8, v9, v10, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v19[17], v19[18], v19[19], v19[20], v19[21], v19[22], v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0]))
  {
    vretproc(v0);
    return 94;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_13_12();
    get_parm(v12, v13, v14, -4);
    v15 = OUTLINED_FUNCTION_33_2();
    fence_14(v15, v16, v17);
    v0[1781] = v0[1627];
    v18 = 1560;
    if (v0[1273] == HIWORD(v20))
    {
      v18 = 1576;
    }

    copyvar(v0, v0 + 1544, &v0[v18]);
    vretproc(v0);
    return 0;
  }
}

void said_phrase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_55_0();
  v82 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_90_0();
  HIDWORD(v69) = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v68, v5);
  OUTLINED_FUNCTION_22_7();
  bzero(v81, v6);
  v7 = setjmp(v81);
  if (v7)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_58_0(v7, v68, v8, v9, v10, v11, v12, v13, v64, v65, v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v68[21], v68[22], v69, v70[0], v70[1], v70[2], v70[3], v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81[0]))
  {
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_47_0();
  get_parm(v14, v15, v16, -6);
  OUTLINED_FUNCTION_32_2(v17, v70);
  v18 = OUTLINED_FUNCTION_28_4();
  get_parm(v18, v19, v20, -4);
  fence_14(v4, 0, &null_str_3);
  if (*(v4 + 3190))
  {
    goto LABEL_4;
  }

  v21 = 0;
  while (2)
  {
    v22 = v21;
    if (HIWORD(v69))
    {
      goto LABEL_12;
    }

LABEL_7:
    v21 = v22;
    v23 = OUTLINED_FUNCTION_89_0();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_27_5();
    if (lpta_loadp_setscan_l(v25, v26, 5))
    {
LABEL_22:
      v50 = OUTLINED_FUNCTION_69_0();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_27_5();
      if (lpta_loadp_setscan_l(v52, v53, 5))
      {
LABEL_23:
        starttest(v4, 8);
        v54 = OUTLINED_FUNCTION_27_5();
        if (lpta_loadp_setscan_l(v54, v55, 5))
        {
          break;
        }

        v56 = OUTLINED_FUNCTION_54_0();
        if (testFldeq(v56, v57, 1, 5))
        {
          goto LABEL_17;
        }

        v32 = advance_tok(v4, v58, v59, v60);
        v33 = (v4 + 2590);
      }

      else
      {
        v61 = OUTLINED_FUNCTION_85_0();
        bspush_ca_scan(v61, v62);
        v47 = OUTLINED_FUNCTION_54_0();
        v49 = 9;
LABEL_27:
        v63 = testFldeq(v47, v48, 1, v49);
        v46 = v21;
        if (v63)
        {
          goto LABEL_17;
        }

LABEL_28:
        v21 = v46;
        v32 = advance_tok(v4, v46, v42, v43);
        v33 = (v4 + 3210);
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_54_0();
      if (testFldeq(v27, v28, 1, 3))
      {
        goto LABEL_17;
      }

      v32 = advance_tok(v4, v29, v30, v31);
      v33 = (v4 + 2574);
    }

    if (!v32)
    {
      HIWORD(v69) = *v33;
LABEL_12:
      OUTLINED_FUNCTION_40_0();
      if (!v34)
      {
LABEL_30:
        set_said_phr_vals(v4);
        break;
      }

      v35 = OUTLINED_FUNCTION_48_0();
      starttest_l(v35, v36);
      OUTLINED_FUNCTION_42_0();
      bspush_ca_boa();
      v37 = OUTLINED_FUNCTION_27_5();
      por_said_phrase(v37, v38, v70);
      if (v39)
      {
        v21 = v21;
      }

      else
      {
        v21 = 1;
      }
    }

LABEL_17:
    v40 = *(v4 + 104);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_31_3(v40);
    }

    else
    {
      v44 = OUTLINED_FUNCTION_43_0();
      v41 = vback(v44, v45);
      v21 = 0;
    }

    v46 = v21;
    switch(v41)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_12;
      case 3:
        v22 = v21;
        goto LABEL_7;
      case 4:
        goto LABEL_22;
      case 5:
        goto LABEL_23;
      case 6:
        v47 = OUTLINED_FUNCTION_54_0();
        v49 = 8;
        goto LABEL_27;
      case 7:
        goto LABEL_28;
      case 9:
      case 10:
        goto LABEL_30;
      case 11:
        bspop_boa(v4);
        break;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_4:
  vretproc(v4);
  OUTLINED_FUNCTION_60_0();
}

uint64_t set_said_phr_vals(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  HIDWORD(v28) = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v27, v3);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v4, v5, v6, v7, v8, v9, v10, v11, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v27[22], v28, v29, v30, v31, v32, v33[0], v33[1]);
  if (setjmp(v2) || ventproc(v1, v27, v33 + 7, &v32 + 6, &v31 + 4, v34))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_11_12();
    get_parm(v13, v14, v15, -6);
    v16 = OUTLINED_FUNCTION_28_4();
    get_parm(v16, v17, v18, -4);
    v19 = OUTLINED_FUNCTION_33_2();
    fence_14(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_24_7();
    adjust_prev_phr_pause(v22, v23, v24);
    v25 = 3194;
    if (*(v1 + 2574) == HIWORD(v28))
    {
      v25 = 3206;
    }

    *(v1 + 3190) = *(v1 + v25);
    vretproc(v1);
    return 0;
  }
}

void adjust_prev_phr_pause(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_13();
  v64 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v59 = 0;
  v57 = 0;
  OUTLINED_FUNCTION_2_13(v4, v5, v6, v7, v8, v9, v10, v11, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11], v54[12], v54[13], v54[14], v54[15], v54[16], v54[17], v54[18], v54[19], v54[20], v54[21], v54[22], v55[0], v55[1], v56[0], v56[1]);
  OUTLINED_FUNCTION_22_7();
  bzero(v63, v12);
  if (!setjmp(v63) && !ventproc(v3, v54, v62, v61, v60, v63))
  {
    v13 = OUTLINED_FUNCTION_11_12();
    get_parm(v13, v14, v15, -6);
    v16 = OUTLINED_FUNCTION_28_4();
    get_parm(v16, v17, v18, -4);
    v19 = OUTLINED_FUNCTION_30_3();
    push_ptr_init(v19, v20);
    v21 = OUTLINED_FUNCTION_29_4();
    push_ptr_init(v21, v22);
    v23 = OUTLINED_FUNCTION_33_2();
    fence_14(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_44_0();
    fence_14(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_81_0();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_24_7();
    if (!lpta_loadp_setscan_l(v31, v32, 4) && !advanc(v3))
    {
      v33 = 0;
      while (2)
      {
        v34 = OUTLINED_FUNCTION_27_5();
        savescptr(v34, v35, v55);
        v36 = OUTLINED_FUNCTION_86_0();
        if (!testFldeq(v36, v37, 0, 40))
        {
          OUTLINED_FUNCTION_42_0();
          bspush_ca_scan_boa();
          v38 = OUTLINED_FUNCTION_86_0();
          if (!testFldeq(v38, v39, 4, 7))
          {
            v33 = 1;
          }
        }

        v40 = v33;
LABEL_11:
        v41 = v3[13];
        if (v41)
        {
          v42 = OUTLINED_FUNCTION_31_3(v41);
          v44 = v43;
        }

        else
        {
          v42 = vback(v3, v40);
          v44 = 0;
        }

        switch(v42)
        {
          case 2:
            v33 = v44;
            continue;
          case 3:
            bspop_boa(v3);
            v48 = advance_tok(v3, v45, v46, v47);
            v40 = v44;
            if (v48)
            {
              goto LABEL_11;
            }

            goto LABEL_16;
          case 4:
LABEL_16:
            savescptr(v3, 4, v56);
            v49 = OUTLINED_FUNCTION_63_0();
            lpta_rpta_loadp(v49, v50, v55);
            v51 = OUTLINED_FUNCTION_86_0();
            v53 = mark_v(v51, v52, 11, &v57, 0);
            v40 = v44;
            if (!v53)
            {
              goto LABEL_3;
            }

            goto LABEL_11;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_60_0();
}

void mark_potential_phrase_breaks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_61_0();
  v6 = v5;
  OUTLINED_FUNCTION_3_13();
  v85 = *MEMORY[0x277D85DE8];
  v80[0] = 0;
  v80[1] = 0;
  v79[0] = 0;
  v79[1] = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v75[0] = 0;
  v75[1] = 0;
  v74[0] = 0;
  v74[1] = 0;
  v73[0] = 0;
  v73[1] = 0;
  v71 = 0;
  v72 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v70, v7);
  OUTLINED_FUNCTION_22_7();
  bzero(v84, v8);
  if (setjmp(v84))
  {
    goto LABEL_3;
  }

  if (ventproc(v4, v70, v83, v82, v81, v84))
  {
    goto LABEL_3;
  }

  v9 = OUTLINED_FUNCTION_11_12();
  get_parm(v9, v10, v11, -6);
  v12 = OUTLINED_FUNCTION_28_4();
  get_parm(v12, v13, v14, -6);
  get_parm(v4, &v78 + 4, v6, -4);
  LODWORD(v78) = 65532;
  v77 = 0xFFFC0000FFFCLL;
  v76 = 65532;
  push_ptr_init(v4, v75);
  push_ptr_init(v4, v74);
  push_ptr_init(v4, v73);
  v15 = OUTLINED_FUNCTION_49_0();
  push_ptr_init(v15, v16);
  fence_14(v4, 0, &null_str_3);
  v17 = OUTLINED_FUNCTION_44_0();
  fence_14(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_24_7();
  if (!lpta_loadp_setscan_r(v20, v21, 2) && !advance_tok(v4, v22, v23, v24))
  {
    *(v4 + 136) = 1;
    v25 = OUTLINED_FUNCTION_16_10();
    if (!test_ptr(v25, v26, v27))
    {
      goto LABEL_3;
    }
  }

  while (2)
  {
    num_words_in_range();
LABEL_8:
    startloop(v4, 3);
    lpta_loadpn(v4, v80);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v28 = OUTLINED_FUNCTION_39_0();
    lpta_storep(v28, v29, v30);
    lpta_loadpn(v4, v79);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v31 = OUTLINED_FUNCTION_59_0();
    lpta_storep(v31, v32, v33);
    while (1)
    {
LABEL_9:
      v34 = OUTLINED_FUNCTION_39_0();
      if (forall_to_test(v34, v35, v73))
      {
        goto LABEL_21;
      }

LABEL_10:
      bspush_ca(v4);
      v36 = OUTLINED_FUNCTION_39_0();
      if (lpta_loadp_setscan_r(v36, v37, 2) || advance_tok(v4, v38, v39, v40))
      {
        goto LABEL_21;
      }

LABEL_12:
      v41 = OUTLINED_FUNCTION_88_0();
      savescptr(v41, v42, v74);
LABEL_13:
      v43 = OUTLINED_FUNCTION_63_0();
      starttest(v43, v44);
      *(v4 + 136) = 1;
      v45 = OUTLINED_FUNCTION_16_10();
      setscan_nof_l(v45, 1, v46);
      if (!v47)
      {
        break;
      }

LABEL_14:
      v48 = OUTLINED_FUNCTION_74_0();
      starttest(v48, v49);
      v50 = OUTLINED_FUNCTION_39_0();
      if (!inside_orig_inp_token(v50))
      {
        goto LABEL_20;
      }

LABEL_15:
      OUTLINED_FUNCTION_39_0();
      if (find_lang_obligatory_phrase())
      {
LABEL_16:
        v51 = OUTLINED_FUNCTION_73_0();
        starttest(v51, v52);
        if (*(v4 + 3222) > SWORD1(v77))
        {
          goto LABEL_20;
        }

LABEL_25:
        v57 = OUTLINED_FUNCTION_89_0();
        starttest(v57, v58);
        OUTLINED_FUNCTION_39_0();
        if (!num_words_in_range() && *(v4 + 3234) > SHIWORD(v76))
        {
          goto LABEL_20;
        }

LABEL_27:
        OUTLINED_FUNCTION_39_0();
        find_lang_potential_phrase();
      }

LABEL_28:
      if (WORD1(v78))
      {
        v59 = OUTLINED_FUNCTION_39_0();
        lpta_rpta_loadp(v59, v60, v74);
        v61 = OUTLINED_FUNCTION_21_7();
        if (!mark_v(v61, v62, 9, &v78, v63))
        {
          absval(v4);
LABEL_31:
          if (SHIWORD(v78) < SHIWORD(v77))
          {
            HIWORD(v78) = HIWORD(v77);
          }

LABEL_33:
          WORD1(v78) = 0;
        }
      }

LABEL_34:
      v64 = OUTLINED_FUNCTION_24_7();
      lpta_loadpn(v64, v65);
      OUTLINED_FUNCTION_21_7();
      lpta_mover();
      v66 = OUTLINED_FUNCTION_48_0();
      lpta_storep(v66, v67, v68);
      OUTLINED_FUNCTION_84_0();
      forall_cont_from();
    }

    OUTLINED_FUNCTION_75_0();
    bspush_ca_scan_boa();
    OUTLINED_FUNCTION_44_0();
    if (test_string_s())
    {
LABEL_21:
      v53 = *(v4 + 104);
      if (v53)
      {
        v54 = OUTLINED_FUNCTION_31_3(v53);
      }

      else
      {
        v55 = OUTLINED_FUNCTION_41_0();
        v54 = vback(v55, v56);
      }

      switch(v54)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_35;
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_20;
        case 6:
          goto LABEL_12;
        case 7:
          goto LABEL_14;
        case 8:
          goto LABEL_19;
        case 9:
          goto LABEL_28;
        case 10:
          goto LABEL_15;
        case 11:
          goto LABEL_16;
        case 12:
          goto LABEL_25;
        case 13:
          goto LABEL_27;
        case 14:
          goto LABEL_34;
        case 15:
          goto LABEL_31;
        case 16:
          goto LABEL_33;
        case 17:
          goto LABEL_9;
        case 18:
          goto LABEL_10;
        case 19:
          v69 = HIWORD(v78);
          goto LABEL_36;
        default:
          goto LABEL_3;
      }

      goto LABEL_3;
    }

    break;
  }

LABEL_19:
  bspush_nboa(v4);
  OUTLINED_FUNCTION_44_0();
  if (test_string_s())
  {
    goto LABEL_21;
  }

LABEL_20:
  if (forto_adv_upto_r(v4, 3, 4, 18, 2, v75))
  {
    goto LABEL_21;
  }

LABEL_35:
  v69 = HIWORD(v78);
  if (HIWORD(v78))
  {
LABEL_36:
    v6[1] = v69;
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_60_0();
}

void insert_unpuncted_phrases(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_61_0();
  v5 = v4;
  v102 = v6;
  v8 = v7;
  v124 = *MEMORY[0x277D85DE8];
  v118 = 0;
  v119 = 0;
  v117[0] = 0;
  v117[1] = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0u;
  v112 = 0u;
  v109[1] = 0;
  v110 = 0;
  v108[1] = 0;
  v109[0] = 0;
  v107[1] = 0;
  v108[0] = 0;
  v106 = 0;
  v107[0] = 0;
  v104[1] = 0;
  v105 = 0;
  v104[0] = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v103, v9);
  OUTLINED_FUNCTION_22_7();
  bzero(v123, v10);
  if (setjmp(v123) || ventproc(v8, v103, v122, v121, v120, v123))
  {
LABEL_3:
    vretproc(v8);
  }

  else
  {
    get_parm(v8, &v118, v102, -6);
    v11 = OUTLINED_FUNCTION_47_0();
    get_parm(v11, v12, v13, -6);
    get_parm(v8, &v116 + 4, v5, -4);
    LODWORD(v116) = 65532;
    v115 = 0xFFFC0000FFFCLL;
    HIDWORD(v114) = 65532;
    LOWORD(v114) = -4;
    v113 = 0xFFFC0000FFFCLL;
    v112 = 0uLL;
    LODWORD(v111) = -65534;
    v110 = 0xFFFC0000FFFCLL;
    push_ptr_init(v8, v109);
    push_ptr_init(v8, v108);
    push_ptr_init(v8, v107);
    push_ptr_init(v8, &v105);
    push_ptr_init(v8, v104);
    v14 = OUTLINED_FUNCTION_33_2();
    fence_14(v14, v15, v16);
    WORD1(v114) = 0;
    if (*(v8 + 3218) < SHIWORD(v116))
    {
      HIWORD(v116) = *(v8 + 3218);
    }

    while (2)
    {
      startloop(v8, 2);
      move_i(v8, &v116, 1);
      v17 = OUTLINED_FUNCTION_27_5();
      move_i(v17, v18, 1);
      v19 = OUTLINED_FUNCTION_85_0();
      copyvar(v19, v20, &v116 + 2);
      v21 = OUTLINED_FUNCTION_59_0();
      if (!for_test(v21, v22, &v110, &v110 + 2))
      {
LABEL_8:
        while (1)
        {
          set_min_token_vals(v8);
LABEL_9:
          startloop(v8, 5);
          lpta_loadpn(v8, &v118);
          OUTLINED_FUNCTION_44_0();
          lpta_mover();
          v23 = OUTLINED_FUNCTION_71_0();
          lpta_storep(v23, v24, v25);
          lpta_loadpn(v8, v117);
          OUTLINED_FUNCTION_44_0();
          lpta_mover();
          v26 = OUTLINED_FUNCTION_39_0();
          lpta_storep(v26, v27, v28);
          if (forall_to_test(v8, &v110, v108))
          {
            break;
          }

LABEL_10:
          bspush_ca(v8);
          v29 = OUTLINED_FUNCTION_25_7();
          if (lpta_loadp_setscan_r(v29, v30, 2))
          {
            break;
          }

          v31 = OUTLINED_FUNCTION_44_0();
          if (npush_fld(v31, v32, 9u))
          {
            break;
          }

          v33 = OUTLINED_FUNCTION_41_0();
          npush_i(v33);
          if (if_testneq(v8, v34, v35, v36, v37, v38, v39, v40) || advance_tok(v8, v41, v42, v43) || savetok(v8, &v111))
          {
            break;
          }

LABEL_15:
          v44 = OUTLINED_FUNCTION_83_0();
          absval(v44);
LABEL_16:
          v45 = OUTLINED_FUNCTION_19_7();
          starttest(v45, v46);
          if (WORD1(v116) == HIWORD(v113))
          {
LABEL_17:
            starttest(v8, 11);
            v47 = OUTLINED_FUNCTION_25_7();
            if (lpta_loadp_setscan_l(v47, v48, 2) || savetok(v8, &v111))
            {
              goto LABEL_24;
            }

            v49 = OUTLINED_FUNCTION_44_0();
            if (npush_fld(v49, v50, 9u))
            {
              break;
            }

            v51 = OUTLINED_FUNCTION_41_0();
            npush_i(v51);
            if (if_testneq(v8, v52, v53, v54, v55, v56, v57, v58) || advance_tok(v8, v59, v60, v61))
            {
              break;
            }

            v62 = OUTLINED_FUNCTION_83_0();
            absval(v62);
LABEL_23:
            v63 = OUTLINED_FUNCTION_19_7();
            starttest(v63, v64);
            if (SWORD1(v116) < SWORD1(v113))
            {
LABEL_24:
              starttest(v8, 13);
              v65 = OUTLINED_FUNCTION_71_0();
              lpta_loadpn(v65, v66);
              OUTLINED_FUNCTION_26_7();
              lpta_ctxtl();
              lpta_storep(v8, v107, v67);
              v68 = OUTLINED_FUNCTION_25_7();
              if (num_tokens_in_range(v68))
              {
                break;
              }

LABEL_25:
              starttest(v8, 14);
              if (SWORD1(v115) <= SHIWORD(v115))
              {
LABEL_26:
                v69 = OUTLINED_FUNCTION_73_0();
                starttest(v69, v70);
                if (!HIWORD(v114))
                {
                  goto LABEL_29;
                }

                v71 = OUTLINED_FUNCTION_88_0();
                starttest(v71, v72);
                v73 = OUTLINED_FUNCTION_71_0();
                lpta_loadpn(v73, v74);
                OUTLINED_FUNCTION_26_7();
                lpta_ctxtr();
                lpta_storep(v8, v107, v75);
                if (num_tokens_in_range(v8))
                {
                  break;
                }

LABEL_28:
                v76 = OUTLINED_FUNCTION_19_7();
                starttest(v76, v77);
                if (SHIWORD(v114) <= SHIWORD(v115))
                {
LABEL_29:
                  *(v8 + 136) = 1;
                  OUTLINED_FUNCTION_16_10();
                  proj_def();
                  c_assvar(v8, &v114);
                  ++WORD1(v114);
                }
              }
            }
          }

LABEL_30:
          v78 = OUTLINED_FUNCTION_19_7();
          if (forto_adv_upto_r(v78, v79, 6, 17, 2, v109))
          {
            break;
          }

LABEL_31:
          v80 = OUTLINED_FUNCTION_81_0();
          if (!for_adv(v80, v81, 3, &v116, &v110, &v110 + 2))
          {
LABEL_32:
            v82 = OUTLINED_FUNCTION_74_0();
            startloop(v82, v83);
            v84 = OUTLINED_FUNCTION_42_0();
            copyvar(v84, v85, &v118);
            v86 = OUTLINED_FUNCTION_39_0();
            copyvar(v86, v87, v117);
LABEL_33:
            while (1)
            {
              v88 = OUTLINED_FUNCTION_42_0();
              if (forall_to_test(v88, v89, v108))
              {
                goto LABEL_37;
              }

LABEL_34:
              v90 = OUTLINED_FUNCTION_69_0();
              bspush_ca(v90);
              if (SWORD1(v114) < 1)
              {
                goto LABEL_37;
              }

              bsclear(v8);
              bspush_ca(v8);
              v91 = OUTLINED_FUNCTION_42_0();
              if (lpta_loadp_setscan_r(v91, v92, 5) || advanc(v8))
              {
                goto LABEL_37;
              }

LABEL_43:
              v99 = OUTLINED_FUNCTION_75_0();
              savescptr(v99, v100, v104);
LABEL_44:
              v101 = OUTLINED_FUNCTION_42_0();
              insert_unpuncted_phrase(v101);
LABEL_45:
              --WORD1(v114);
              OUTLINED_FUNCTION_84_0();
              forall_cont_from();
            }
          }
        }
      }

LABEL_37:
      v93 = *(v8 + 104);
      if (v93)
      {
        v94 = OUTLINED_FUNCTION_31_3(v93);
      }

      else
      {
        v95 = OUTLINED_FUNCTION_41_0();
        v94 = vback(v95, v96);
      }

      switch(v94)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_32;
        case 3:
          goto LABEL_8;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_31;
        case 6:
          goto LABEL_15;
        case 7:
        case 9:
          goto LABEL_30;
        case 8:
          goto LABEL_16;
        case 10:
          goto LABEL_17;
        case 11:
          goto LABEL_24;
        case 12:
          goto LABEL_23;
        case 13:
          goto LABEL_25;
        case 14:
          goto LABEL_26;
        case 15:
          goto LABEL_29;
        case 16:
          goto LABEL_28;
        case 17:
          goto LABEL_10;
        case 18:
          goto LABEL_46;
        case 19:
          goto LABEL_44;
        case 20:
          v97 = OUTLINED_FUNCTION_69_0();
          if (forto_adv_r(v97, v98, 19, 24, 5, &v105))
          {
            goto LABEL_37;
          }

          break;
        case 21:
          goto LABEL_43;
        case 22:
          goto LABEL_45;
        case 23:
          goto LABEL_33;
        case 24:
          goto LABEL_34;
        default:
          goto LABEL_3;
      }

      break;
    }

LABEL_46:
    v119 = v106;
    *(v102 + 8) = v106;
    vretproc(v8);
  }

  OUTLINED_FUNCTION_60_0();
}

uint64_t num_tokens_in_range(uint64_t a1)
{
  OUTLINED_FUNCTION_55_0();
  v67 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  HIDWORD(v52) = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(&v29, v3);
  OUTLINED_FUNCTION_22_7();
  bzero(v66, v4);
  v5 = setjmp(v66);
  if (v5 || OUTLINED_FUNCTION_34_2(v5, &v29, v6, v7, v8, v9, v10, v11, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_70_0(v13, v14);
    OUTLINED_FUNCTION_20_7(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    v23 = OUTLINED_FUNCTION_28_4();
    get_parm(v23, v24, v25, -4);
    fence_14(v1, 0, &null_str_3);
    OUTLINED_FUNCTION_40_0();
    if (!v26)
    {
      OUTLINED_FUNCTION_51_0();
      num_words_in_range();
    }

    *(v2 + 2) = HIWORD(v52);
    vretproc(v1);
    return 0;
  }
}

uint64_t set_min_token_vals(uint64_t a1)
{
  OUTLINED_FUNCTION_55_0();
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v24 = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v23, v5);
  OUTLINED_FUNCTION_22_7();
  bzero(v35, v6);
  v7 = setjmp(v35);
  if (!v7 && !OUTLINED_FUNCTION_56_0(v7, v23, v8, v9, v10, v11, v12, v13, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v23[22], v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]))
  {
    v16 = OUTLINED_FUNCTION_30_3();
    get_parm(v16, v17, v4, -4);
    get_parm(v1, &v24 + 4, v3, -4);
    v18 = OUTLINED_FUNCTION_28_4();
    get_parm(v18, v19, v20, -4);
    fence_14(v1, 0, &null_str_3);
    if (HIWORD(v25) == 1)
    {
      HIWORD(v24) = 1;
      v21 = 0;
    }

    else
    {
      if (v1[2549] == v1[2545])
      {
        goto LABEL_9;
      }

      switch(HIWORD(v25))
      {
        case 4u:
          v21 = 6;
          HIWORD(v24) = 6;
          break;
        case 3u:
          HIWORD(v24) = 4;
          v21 = 5;
          break;
        case 2u:
          HIWORD(v24) = v1[1613];
          v21 = v1[1615];
          break;
        default:
          goto LABEL_9;
      }
    }

    WORD1(v24) = v21;
LABEL_9:
    v3[1] = HIWORD(v24);
    *(v2 + 2) = WORD1(v24);
    v14 = 0;
    goto LABEL_4;
  }

  v14 = 94;
LABEL_4:
  vretproc(v1);
  return v14;
}

uint64_t insert_unpuncted_phrase(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();
  v70 = 0;
  v71 = 0;
  OUTLINED_FUNCTION_2_13(v2, v3, v4, v5, v6, v7, v8, v9, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  OUTLINED_FUNCTION_22_7();
  bzero(v74, v10);
  if (setjmp(v74) || (OUTLINED_FUNCTION_50_0(), ventproc(a1, v11, v12, v13, v14, v74)))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_6_12();
    get_parm(v16, v17, v18, -6);
    v19 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_70_0(v19, v20);
    v21 = OUTLINED_FUNCTION_24_7();
    push_ptr_init(v21, v22);
    v23 = OUTLINED_FUNCTION_30_3();
    push_ptr_init(v23, v24);
    v25 = OUTLINED_FUNCTION_29_4();
    push_ptr_init(v25, v26);
    fence_14(a1, 0, &null_str_3);
    v27 = OUTLINED_FUNCTION_27_5();
    lpta_loadpn(v27, v28);
    OUTLINED_FUNCTION_21_7();
    lpta_movel();
    v29 = OUTLINED_FUNCTION_24_7();
    lpta_storep(v29, v30, v31);
    *(a1 + 136) = 1;
    OUTLINED_FUNCTION_66_0(v71);
    OUTLINED_FUNCTION_26_7();
    proj_def();
    *(a1 + 136) = 1;
    OUTLINED_FUNCTION_66_0(v72);
    OUTLINED_FUNCTION_26_7();
    proj_def();
    v32 = OUTLINED_FUNCTION_6_12();
    assign_unpuncted_phr_vals(v32);
    if (*(a1 + 3562) < 1)
    {
      v67 = v71;
      v69 = v72;
    }

    else
    {
      *(a1 + 168) = 1;
      *(a1 + 144) = v72;
      *(a1 + 128) = 0;
      v33 = OUTLINED_FUNCTION_54_0();
      insert_l(v33, v34);
      v35 = OUTLINED_FUNCTION_30_3();
      lpta_storep(v35, v36, v37);
      *(a1 + 168) = 1;
      *(a1 + 144) = v69;
      *(a1 + 128) = 0;
      v38 = OUTLINED_FUNCTION_54_0();
      insert_l(v38, v39);
      v40 = OUTLINED_FUNCTION_29_4();
      lpta_storep(v40, v41, v42);
    }

    insert_phrase(a1, v73, &v70, &v66);
    vretproc(a1);
    return 0;
  }
}

uint64_t assign_major_phr_features(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v11, v12, v13, v14, v15, v16, v17, v18, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, v123, v125, v127);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_7_12(v19, v20, v21, v22, v23, v24, v25, v26, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v122, SHIDWORD(v122), v124, SWORD2(v124), SHIWORD(v124), v126, SWORD2(v126), SBYTE6(v126), SHIBYTE(v126), v128, v129))
  {
    v27 = 94;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_11_12();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_62_0(v32, v33);
    fence_14(v1, 0, &null_str_3);
    v34 = OUTLINED_FUNCTION_11_12();
    if (period_phrase(v34))
    {
      if (comma_phrase(v1))
      {
        v35 = OUTLINED_FUNCTION_37_1();
        if (question_phrase(v35))
        {
          OUTLINED_FUNCTION_29_4();
          if (exclam_phrase())
          {
            semicolon_phrase(v1);
          }
        }
      }
    }

    assign_sent_final_features(v1);
    v36 = OUTLINED_FUNCTION_30_3();
    assign_currPhr_vals(v36, v37, v38, v39);
    assign_phr_final_anno_features(v1);
    v27 = 0;
    v1[1269] = 0;
  }

  vretproc(v1);
  return v27;
}

void insert_phrase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_15_10();
  v101 = *MEMORY[0x277D85DE8];
  memset(v99, 0, 32);
  OUTLINED_FUNCTION_2_13(v5, v6, v7, v8, v9, v10, v11, v12, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  OUTLINED_FUNCTION_22_7();
  bzero(v100, v13);
  if (setjmp(v100))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_52_0();
  if (ventproc(v4, v14, v15, v16, v17, v100))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_95(v18, v19);
  v20 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_70_0(v20, v21);
  OUTLINED_FUNCTION_20_7(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
  v30 = OUTLINED_FUNCTION_13_12();
  get_parm(v30, v31, v32, -6);
  v33 = OUTLINED_FUNCTION_33_2();
  fence_14(v33, v34, v35);
  *(v4 + 3090) = 0;
  c_assvar(v4, (v4 + 3088));
  *(v4 + 3104) = *(v4 + 3082) + 1;
  v36 = OUTLINED_FUNCTION_42_0();
  lpta_rpta_loadp(v36, v37, v99);
  OUTLINED_FUNCTION_26_7();
  insert_2ptv();
  if (!v38)
  {
    v41 = OUTLINED_FUNCTION_37_1();
    insert_phrase_pause(v41, v42, v43);
LABEL_10:
    reset_phrase_vars(v4);
    goto LABEL_3;
  }

  v39 = *(v4 + 104);
  if (v39)
  {
    v40 = OUTLINED_FUNCTION_31_3(v39);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_41_0();
    v40 = vback(v44, v45);
  }

  if (v40 == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_98();
}

uint64_t period_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v11, v12, v13, v14, v15, v16, v17, v18, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v147, v149, v151, v153);
  v19 = setjmp(v2);
  if (v19 || (v27 = OUTLINED_FUNCTION_7_12(v19, v20, v21, v22, v23, v24, v25, v26, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v148, SHIDWORD(v148), v150, SWORD2(v150), SHIWORD(v150), v152, SWORD2(v152), SBYTE6(v152), SHIBYTE(v152), v154, v155), v27) || (OUTLINED_FUNCTION_20_7(v27, v28, v29, v30, v31, v32, v33, v34, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143), v35 = OUTLINED_FUNCTION_13_12(), get_parm(v35, v36, v37, -6), fence_14(v1, 0, &null_str_3), OUTLINED_FUNCTION_46_0(), !v38))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    vretproc(v1);
    return 0;
  }
}

uint64_t comma_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76) || (fence_14(a1, 0, &null_str_3), OUTLINED_FUNCTION_46_0(), !v19))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    set_phrase_defaults();
    vretproc(a1);
    return 0;
  }
}

uint64_t question_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v11, v12, v13, v14, v15, v16, v17, v18, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v168, v170, v172, v174);
  v19 = setjmp(v2);
  if (v19 || (v27 = OUTLINED_FUNCTION_7_12(v19, v20, v21, v22, v23, v24, v25, v26, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v169, SHIDWORD(v169), v171, SWORD2(v171), SHIWORD(v171), v173, SWORD2(v173), SBYTE6(v173), SHIBYTE(v173), v175, v176), v27))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  OUTLINED_FUNCTION_20_7(v27, v28, v29, v30, v31, v32, v33, v34, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164);
  v36 = OUTLINED_FUNCTION_13_12();
  get_parm(v36, v37, v38, -6);
  fence_14(v1, 0, &null_str_3);
  v39 = OUTLINED_FUNCTION_19_7();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_19_7();
  bspush_ca(v41);
  OUTLINED_FUNCTION_46_0();
  while (!v42)
  {
    v48 = *(v1 + 104);
    if (v48)
    {
      v49 = OUTLINED_FUNCTION_31_3(v48);
    }

    else
    {
      v50 = OUTLINED_FUNCTION_41_0();
      v49 = vback(v50, v51);
    }

    switch(v49)
    {
      case 2:
        v52 = OUTLINED_FUNCTION_25_7();
        bspush_ca(v52);
        break;
      case 3:
        goto LABEL_7;
      case 4:
        break;
      case 5:
        goto LABEL_8;
      case 6:
      case 10:
        goto LABEL_14;
      case 7:
        goto LABEL_9;
      case 8:
        goto LABEL_10;
      case 9:
        goto LABEL_13;
      case 11:
        v54 = 0;
        goto LABEL_30;
      case 12:
      case 13:
      case 15:
        LOWORD(v54) = 0;
        goto LABEL_34;
      case 14:
        LOWORD(v54) = 0;
        goto LABEL_33;
      case 16:
      case 19:
        goto LABEL_42;
      case 17:
        goto LABEL_39;
      case 18:
        goto LABEL_41;
      default:
        goto LABEL_3;
    }

    OUTLINED_FUNCTION_46_0();
  }

LABEL_7:
  OUTLINED_FUNCTION_40_0();
  if (v42)
  {
    goto LABEL_14;
  }

LABEL_8:
  OUTLINED_FUNCTION_37_1();
  if (!isitWH())
  {
    goto LABEL_23;
  }

LABEL_9:
  OUTLINED_FUNCTION_37_1();
  if (!isitAlt())
  {
LABEL_24:
    v53 = 3214;
    goto LABEL_25;
  }

LABEL_10:
  v43 = OUTLINED_FUNCTION_64_0();
  lpta_loadpn(v43, v44);
  v45 = OUTLINED_FUNCTION_30_3();
  rpta_loadpn(v45, v46);
  if (compare_ptas(v1) || testneq(v1))
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_64_0();
  if (!isitWH())
  {
LABEL_23:
    v53 = 3210;
LABEL_25:
    v47 = *(v1 + v53);
    goto LABEL_26;
  }

LABEL_13:
  OUTLINED_FUNCTION_64_0();
  if (!isitAlt())
  {
    goto LABEL_24;
  }

LABEL_14:
  v47 = 0;
LABEL_26:
  v54 = v47;
  if (*(v1 + 3210) == v47)
  {
    assign_wh_quest_features(v1);
  }

  else
  {
LABEL_30:
    if (*(v1 + 3214) == v54)
    {
      assign_alt_quest_features(v1);
    }

    else
    {
LABEL_33:
      assign_default_quest_features(v1);
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_46_0();
  if (v42)
  {
    v55 = OUTLINED_FUNCTION_29_4();
    precedes_end_quote(v55, v56, v57, v58);
    if (!v59)
    {
      if (v54 <= 0)
      {
LABEL_39:
        v60 = 3206;
      }

      else
      {
        v60 = 3194;
      }

      *(v1 + 3186) = *(v1 + v60);
LABEL_41:
      OUTLINED_FUNCTION_92();
    }
  }

LABEL_42:
  vretproc(v1);
  return 0;
}

uint64_t exclam_phrase()
{
  OUTLINED_FUNCTION_65_0();
  v75 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_12(v1, v2, v3, v4, v5, v6, v7, v8, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  OUTLINED_FUNCTION_22_7();
  bzero(v74, v9);
  v10 = setjmp(v74);
  if (v10 || OUTLINED_FUNCTION_56_0(v10, &v39, v11, v12, v13, v14, v15, v16, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74[0]))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_13_12();
    get_parm(v18, v19, v20, -6);
    fence_14(v0, 0, &null_str_3);
    v21 = OUTLINED_FUNCTION_67_0();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_19_7();
    bspush_ca(v23);
    OUTLINED_FUNCTION_46_0();
    if (!v24)
    {
      while (2)
      {
        v35 = *(v0 + 104);
        if (v35)
        {
          v36 = OUTLINED_FUNCTION_31_3(v35);
        }

        else
        {
          v37 = OUTLINED_FUNCTION_41_0();
          v36 = vback(v37, v38);
        }

        switch(v36)
        {
          case 1:
            OUTLINED_FUNCTION_46_0();
            if (!v24)
            {
              goto LABEL_3;
            }

            break;
          case 2:
            OUTLINED_FUNCTION_46_0();
            if (!v24)
            {
              continue;
            }

            goto LABEL_7;
          case 3:
            goto LABEL_7;
          case 4:
            goto LABEL_8;
          case 6:
            goto LABEL_11;
          case 7:
            goto LABEL_12;
          case 8:
            goto LABEL_16;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

LABEL_7:
    npush_s(v0);
    v25 = OUTLINED_FUNCTION_10_12();
    npop(v25, v26);
LABEL_8:
    OUTLINED_FUNCTION_91();
    if (!v24 && *(v0 + 5102) != v27)
    {
      npush_s(v0);
      v28 = OUTLINED_FUNCTION_1_13(2);
      npop(v28, v29);
    }

LABEL_11:
    set_window_size(v0);
LABEL_12:
    OUTLINED_FUNCTION_46_0();
    if (v24)
    {
      v30 = OUTLINED_FUNCTION_29_4();
      precedes_end_quote(v30, v31, v32, v33);
      if (!v34)
      {
        *(v0 + 3186) = *(v0 + 3194);
        OUTLINED_FUNCTION_92();
      }
    }

LABEL_16:
    vretproc(v0);
    return 0;
  }
}

uint64_t semicolon_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v24);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, SHIDWORD(v72), v74, SWORD2(v74), SHIWORD(v74), v76, SWORD2(v76), SBYTE6(v76), SHIBYTE(v76), v78, v79) || (fence_14(a1, 0, &null_str_3), OUTLINED_FUNCTION_46_0(), !v19))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_21_7();
    npush_s(v20);
    v21 = OUTLINED_FUNCTION_1_13(1);
    npop(v21, v22);
    *(a1 + 3562) = *(a1 + 3250);
    vretproc(a1);
    return 0;
  }
}

uint64_t assign_sent_final_features(_WORD *a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, SHIDWORD(v70), v72, SWORD2(v72), SHIWORD(v72), v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v77))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_14(a1, 0, &null_str_3);
    if (a1[1195] == 1 && a1[1285] <= a1[1269])
    {
      a1[1781] = a1[1623];
      v20 = OUTLINED_FUNCTION_1_13(5);
      move_i(v20, v21, 2);
    }

    vretproc(a1);
    return 0;
  }
}

void assign_currPhr_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_65_0();
  v66 = *MEMORY[0x277D85DE8];
  v61[0] = 0;
  v61[1] = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(v60, v5);
  OUTLINED_FUNCTION_22_7();
  bzero(v65, v6);
  if (!setjmp(v65) && !ventproc(v4, v60, v64, v63, v62, v65))
  {
    v7 = OUTLINED_FUNCTION_28_4();
    get_parm(v7, v8, v9, -6);
    fence_14(v4, 0, &null_str_3);
    v10 = OUTLINED_FUNCTION_35_1();
    fence_14(v10, v11, v12);
    v13 = *(v4 + 3190);
    if (*(v4 + 3190))
    {
      v14 = 0;
      while (2)
      {
        if (*(v4 + 3194) != v13)
        {
LABEL_8:
          if (*(v4 + 3198) == v13)
          {
            npush_s(v4);
            v15 = OUTLINED_FUNCTION_10_12();
            npop(v15, v16);
            v17 = OUTLINED_FUNCTION_27_5();
            starttest(v17, v18);
            v19 = OUTLINED_FUNCTION_48_0();
            bspush_ca(v19);
LABEL_10:
            OUTLINED_FUNCTION_40_0();
            if (!v20)
            {
              goto LABEL_11;
            }
          }

          else
          {
LABEL_18:
            if (*(v4 + 3206) == v13)
            {
              v25 = OUTLINED_FUNCTION_54_0();
              npush_s(v25);
              v26 = OUTLINED_FUNCTION_10_12();
              npop(v26, v27);
              v28 = OUTLINED_FUNCTION_39_0();
              starttest(v28, v29);
              OUTLINED_FUNCTION_59_0();
              bspush_ca_boa();
              if (!lpta_loadp_setscan_r(v4, v61, 2) && !advance_tok(v4, v30, v31, v32) && !advance_tok(v4, v33, v34, v35) && !advance_tok(v4, v36, v37, v38) && !advance_tok(v4, v39, v40, v41) && !advance_tok(v4, v42, v43, v44) && !advance_tok(v4, v45, v46, v47) && !advance_tok(v4, v48, v49, v50))
              {
                v14 = 1;
              }

LABEL_11:
              v21 = *(v4 + 104);
              if (v21)
              {
                v22 = OUTLINED_FUNCTION_31_3(v21);
              }

              else
              {
                v22 = vback(v4, v14);
                v14 = 0;
              }

              switch(v22)
              {
                case 1:
                  v13 = *(v4 + 3190);
                  continue;
                case 2:
                case 5:
                case 11:
                  goto LABEL_38;
                case 3:
                  v13 = *(v4 + 3190);
                  goto LABEL_8;
                case 4:
                  v13 = *(v4 + 3190);
                  goto LABEL_18;
                case 6:
                  v23 = OUTLINED_FUNCTION_42_0();
                  bspush_ca(v23);
                  goto LABEL_10;
                case 7:
                  goto LABEL_37;
                case 8:
                  v24 = OUTLINED_FUNCTION_63_0();
                  bspush_ca(v24);
                  goto LABEL_10;
                case 9:
                  goto LABEL_10;
                case 10:
                  break;
                case 12:
                  bspop_boa(v4);
                  npush_s(v4);
                  v52 = OUTLINED_FUNCTION_1_13(2);
                  npop(v52, v53);
                  goto LABEL_36;
                default:
                  goto LABEL_3;
              }
            }

            OUTLINED_FUNCTION_91();
            if (v20 || *(v4 + 5102) == v51 || *(v4 + 3202) != *(v4 + 3190))
            {
              goto LABEL_38;
            }

LABEL_36:
            v54 = OUTLINED_FUNCTION_82_0();
            npush_s(v54);
            v55 = OUTLINED_FUNCTION_10_12();
            npop(v55, v56);
          }
        }

        break;
      }

LABEL_37:
      v57 = OUTLINED_FUNCTION_82_0();
      npush_s(v57);
      v58 = OUTLINED_FUNCTION_10_12();
      npop(v58, v59);
LABEL_38:
      *(v4 + 3190) = 0;
      vretproc(v4);
      goto LABEL_4;
    }
  }

LABEL_3:
  vretproc(v4);
LABEL_4:
  OUTLINED_FUNCTION_60_0();
}

uint64_t assign_phr_final_anno_features(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v35);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, SHIDWORD(v83), v85, SWORD2(v85), SHIWORD(v85), v87, SWORD2(v87), SBYTE6(v87), SHIBYTE(v87), v89, v90))
  {
    goto LABEL_3;
  }

  fence_14(a1, 0, &null_str_3);
  v20 = a1[1383];
  if (a1[1383])
  {
    if (a1[1385] == v20)
    {
      v21 = OUTLINED_FUNCTION_41_0();
      npush_s(v21);
      v22 = OUTLINED_FUNCTION_1_13(3);
      npop(v22, v23);
      v24 = OUTLINED_FUNCTION_35_1();
      npush_s(v24);
      v25 = OUTLINED_FUNCTION_1_13(4);
      npop(v25, v26);
    }

    else if (a1[1393] == v20)
    {
      v27 = OUTLINED_FUNCTION_41_0();
      npush_s(v27);
      v28 = OUTLINED_FUNCTION_1_13(3);
      npop(v28, v29);
      v30 = OUTLINED_FUNCTION_35_1();
      npush_s(v30);
      v31 = OUTLINED_FUNCTION_1_13(4);
      npop(v31, v32);
      OUTLINED_FUNCTION_92();
    }

    else
    {
      if (a1[1391] != v20)
      {
LABEL_3:
        vretproc(a1);
        return 94;
      }

      a1[1781] = a1[1621];
      v33 = OUTLINED_FUNCTION_1_13(5);
      move_i(v33, v34, 3);
    }

    a1[1383] = 0;
  }

  vretproc(a1);
  return 0;
}

uint64_t assign_wh_quest_features(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v32);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, SHIDWORD(v80), v82, SWORD2(v82), SHIWORD(v82), v84, SWORD2(v84), SBYTE6(v84), SHIBYTE(v84), v86, v87))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_14(a1, 0, &null_str_3);
    npush_s(a1);
    v20 = OUTLINED_FUNCTION_1_13(1);
    npop(v20, v21);
    OUTLINED_FUNCTION_40_0();
    if (v22)
    {
      v23 = OUTLINED_FUNCTION_35_1();
      npush_s(v23);
      v24 = OUTLINED_FUNCTION_1_13(2);
      npop(v24, v25);
      v26 = OUTLINED_FUNCTION_35_1();
      npush_s(v26);
      v27 = OUTLINED_FUNCTION_1_13(3);
      npop(v27, v28);
      v29 = OUTLINED_FUNCTION_35_1();
      npush_s(v29);
      v30 = OUTLINED_FUNCTION_1_13(4);
      npop(v30, v31);
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t assign_alt_quest_features(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v39);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, SHIDWORD(v87), v89, SWORD2(v89), SHIWORD(v89), v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v93, v94))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_14(a1, 0, &null_str_3);
    npush_s(a1);
    v20 = OUTLINED_FUNCTION_10_12();
    npop(v20, v21);
    v22 = OUTLINED_FUNCTION_67_0();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_67_0();
    bspush_ca(v24);
    while (1)
    {
      OUTLINED_FUNCTION_40_0();
      if (v25)
      {
        break;
      }

      v26 = *(a1 + 104);
      if (v26)
      {
        v27 = OUTLINED_FUNCTION_31_3(v26);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_41_0();
        v27 = vback(v28, v29);
      }

      if (v27 != 2)
      {
        if (v27 == 1)
        {
          goto LABEL_13;
        }

        if (v27 != 3)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    v30 = OUTLINED_FUNCTION_26_7();
    npush_s(v30);
    v31 = OUTLINED_FUNCTION_10_12();
    npop(v31, v32);
    v33 = OUTLINED_FUNCTION_33_2();
    npush_s(v33);
    v34 = OUTLINED_FUNCTION_1_13(3);
    npop(v34, v35);
    v36 = OUTLINED_FUNCTION_33_2();
    npush_s(v36);
    v37 = OUTLINED_FUNCTION_1_13(4);
    npop(v37, v38);
LABEL_13:
    vretproc(a1);
    return 0;
  }
}

uint64_t assign_default_quest_features(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v33);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, SHIDWORD(v81), v83, SWORD2(v83), SHIWORD(v83), v85, SWORD2(v85), SBYTE6(v85), SHIBYTE(v85), v87, v88))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_14(a1, 0, &null_str_3);
    OUTLINED_FUNCTION_46_0();
    npush_s(a1);
    v20 = OUTLINED_FUNCTION_1_13(1);
    npop(v20, v21);
    OUTLINED_FUNCTION_91();
    if (!v23 && *(a1 + 5118) != v22)
    {
      v24 = OUTLINED_FUNCTION_35_1();
      npush_s(v24);
      v25 = OUTLINED_FUNCTION_1_13(2);
      npop(v25, v26);
    }

    v27 = OUTLINED_FUNCTION_35_1();
    npush_s(v27);
    v28 = OUTLINED_FUNCTION_1_13(4);
    npop(v28, v29);
    v30 = OUTLINED_FUNCTION_35_1();
    npush_s(v30);
    v31 = OUTLINED_FUNCTION_10_12();
    npop(v31, v32);
    set_window_size(a1);
    vretproc(a1);
    return 0;
  }
}

void precedes_end_quote(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_23_7();
  bzero(v125, v5);
  OUTLINED_FUNCTION_22_7();
  bzero(v139, v6);
  v7 = setjmp(v139);
  if (!v7 && !OUTLINED_FUNCTION_80_0(v7, v125, v8, v9, v10, v11, v12, v13, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v125[9], v125[10], v125[11], v125[12], v125[13], v125[14], v125[15], v125[16], v125[17], v125[18], v125[19], v125[20], v125[21], v125[22], v126[0], v126[1], v127[0], v127[1], v128[0], v128[1], v128[2], v128[3], v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139[0]))
  {
    v14 = OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_62_0(v14, v15);
    push_ptr_init(v4, v128);
    push_ptr_init(v4, v127);
    push_ptr_init(v4, v126);
    v16 = OUTLINED_FUNCTION_33_2();
    fence_14(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_67_0();
    starttest(v19, v20);
    OUTLINED_FUNCTION_19_7();
    bspush_ca_boa();
    v21 = OUTLINED_FUNCTION_24_7();
    if (lpta_loadp_setscan_r(v21, v22, 1))
    {
      v23 = 0;
    }

    else
    {
      v24 = OUTLINED_FUNCTION_19_7();
      bspush_ca_scan(v24, v25);
      OUTLINED_FUNCTION_35_1();
      if (test_string_s())
      {
        v23 = 0;
      }

      else
      {
LABEL_8:
        v23 = 1;
      }
    }

    v26 = v23;
    while (2)
    {
      v27 = *(v4 + 104);
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_31_3(v27);
        v32 = v29;
      }

      else
      {
        v28 = vback(v4, v26);
        v32 = 0;
      }

      switch(v28)
      {
        case 1:
          v33 = OUTLINED_FUNCTION_93();
          lpta_loadpn(v33, v34);
          OUTLINED_FUNCTION_21_7();
          lpta_mover();
          lpta_storep(v4, v128, v35);
          v36 = OUTLINED_FUNCTION_24_7();
          if (lpta_loadp_setscan_r(v36, v37, 1))
          {
            goto LABEL_17;
          }

          if (advance_tok(v4, v38, v39, v40))
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_12_12();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          starttest(v4, 7);
          v109 = OUTLINED_FUNCTION_53_0();
          if (!lpta_loadp_setscan_l(v109, v110, v111))
          {
            goto LABEL_51;
          }

          break;
        case 2:
        case 21:
          bspop_boa(v4);
          break;
        case 3:
          v100 = OUTLINED_FUNCTION_74_0();
          bspush_ca_scan(v100, v101);
          OUTLINED_FUNCTION_12_12();
          goto LABEL_44;
        case 4:
          goto LABEL_8;
        case 5:
          OUTLINED_FUNCTION_12_12();
LABEL_44:
          v102 = test_string_s();
          v26 = v32;
          if (!v102)
          {
            goto LABEL_8;
          }

          continue;
        case 6:
LABEL_17:
          v41 = OUTLINED_FUNCTION_24_7();
          if (lpta_loadp_setscan_r(v41, v42, 1))
          {
            goto LABEL_20;
          }

          if (advance_tok(v4, v43, v44, v45))
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_12_12();
          if (test_string_s())
          {
            goto LABEL_20;
          }

          v103 = OUTLINED_FUNCTION_53_0();
          if (lpta_loadp_setscan_l(v103, v104, v105))
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_12_12();
          if (test_string_s())
          {
            goto LABEL_3;
          }

          starttest_l(v4, 15);
          v106 = OUTLINED_FUNCTION_53_0();
          if (lpta_loadp_setscan_r(v106, v107, v108))
          {
            goto LABEL_3;
          }

          goto LABEL_37;
        case 8:
LABEL_51:
          savescptr(v4, 8, v127);
          OUTLINED_FUNCTION_12_12();
          v112 = test_string_s();
          v26 = v32;
          if (!v112)
          {
            v113 = OUTLINED_FUNCTION_39_0();
            v115 = lpta_loadp_setscan_r(v113, v114, 1);
            v26 = v32;
            if (!v115)
            {
              goto LABEL_53;
            }
          }

          continue;
        case 9:
          bspop_boa(v4);
          v69 = advance_tok(v4, v66, v67, v68);
          v26 = v32;
          if (v69)
          {
            continue;
          }

          v70 = OUTLINED_FUNCTION_73_0();
          goto LABEL_32;
        case 10:
LABEL_53:
          bspush_ca_scan_boa();
          v62 = OUTLINED_FUNCTION_43_0();
          v65 = 96;
          goto LABEL_54;
        case 13:
LABEL_20:
          v46 = OUTLINED_FUNCTION_24_7();
          if (!lpta_loadp_setscan_r(v46, v47, 1) && !advance_tok(v4, v48, v49, v50))
          {
            OUTLINED_FUNCTION_12_12();
            if (!test_string_s())
            {
              v51 = OUTLINED_FUNCTION_59_0();
              starttest(v51, v52);
              v53 = OUTLINED_FUNCTION_53_0();
              if (!lpta_loadp_setscan_l(v53, v54, v55))
              {
                goto LABEL_24;
              }
            }
          }

          goto LABEL_3;
        case 16:
          goto LABEL_37;
        case 17:
          v81 = advance_tok(v4, v29, v30, v31);
          v26 = v32;
          if (v81)
          {
            continue;
          }

LABEL_37:
          v82 = OUTLINED_FUNCTION_88_0();
          bspush_ca_scan(v82, v83);
          OUTLINED_FUNCTION_12_12();
          v84 = test_string_s();
          v26 = v32;
          if (!v84)
          {
            goto LABEL_38;
          }

          continue;
        case 18:
LABEL_38:
          v85 = OUTLINED_FUNCTION_48_0();
          savescptr(v85, v86, v126);
          goto LABEL_39;
        case 19:
          goto LABEL_39;
        case 20:
          v80 = advance_tok(v4, v29, v30, v31);
          v26 = v32;
          if (v80)
          {
            continue;
          }

LABEL_39:
          v87 = OUTLINED_FUNCTION_85_0();
          bspush_ca_scan(v87, v88);
          *(v4 + 136) = 1;
          v89 = OUTLINED_FUNCTION_16_10();
          v92 = test_ptr(v89, v90, v91);
          v26 = v32;
          if (v92)
          {
            continue;
          }

          OUTLINED_FUNCTION_75_0();
          bspush_ca_boa();
          v93 = lpta_loadp_setscan_r(v4, v126, 1);
          v26 = v32;
          if (v93)
          {
            continue;
          }

          v94 = OUTLINED_FUNCTION_43_0();
          v96 = testFldeq(v94, v95, 3, 1);
          v26 = v32;
          if (v96)
          {
            continue;
          }

          v99 = advance_tok(v4, v32, v97, v98);
          goto LABEL_55;
        case 25:
LABEL_24:
          v56 = OUTLINED_FUNCTION_63_0();
          savescptr(v56, v57, v127);
          OUTLINED_FUNCTION_12_12();
          v58 = test_string_s();
          v26 = v32;
          if (!v58)
          {
            v59 = OUTLINED_FUNCTION_39_0();
            v61 = lpta_loadp_setscan_r(v59, v60, 1);
            v26 = v32;
            if (!v61)
            {
              goto LABEL_26;
            }
          }

          continue;
        case 26:
          bspop_boa(v4);
          v75 = advance_tok(v4, v72, v73, v74);
          v26 = v32;
          if (v75)
          {
            continue;
          }

          v70 = OUTLINED_FUNCTION_89_0();
LABEL_32:
          bspush_ca_scan(v70, v71);
          *(v4 + 136) = 1;
          v76 = OUTLINED_FUNCTION_16_10();
          v79 = test_ptr(v76, v77, v78);
          v26 = v32;
          if (!v79)
          {
            goto LABEL_3;
          }

          continue;
        case 27:
LABEL_26:
          OUTLINED_FUNCTION_27_5();
          bspush_ca_scan_boa();
          v62 = OUTLINED_FUNCTION_43_0();
          v65 = 168;
LABEL_54:
          v99 = testFldeq(v62, v63, v64, v65);
LABEL_55:
          if (v99)
          {
            v26 = v32;
          }

          else
          {
            v26 = 1;
          }

          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_60_0();
}

uint64_t set_window_size(uint64_t a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v61);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, SHIDWORD(v109), v111, SWORD2(v111), SHIWORD(v111), v113, SWORD2(v113), SBYTE6(v113), SHIBYTE(v113), v115, v116))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_33_2();
    fence_14(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_1_13(6);
    if (!if_testeq_v_i(v23, v24, 0, v25, v26, v27, v28, v29))
    {
      v30 = OUTLINED_FUNCTION_10_12();
      npush_v(v30, v31, v32, v33, v34, v35, v36, v37);
      v38 = OUTLINED_FUNCTION_68_0();
      ncompare_s(v38, v39);
      if (!testeq(a1) || (v40 = OUTLINED_FUNCTION_10_12(), npush_v(v40, v41, v42, v43, v44, v45, v46, v47), v48 = OUTLINED_FUNCTION_26_7(), ncompare_s(v48, v49), !testeq(a1)) || (v50 = OUTLINED_FUNCTION_1_13(1), npush_v(v50, v51, v52, v53, v54, v55, v56, v57), ncompare_s(a1, 6u), !testeq(a1)))
      {
        v58 = OUTLINED_FUNCTION_1_13(6);
        move_i(v58, v59, v60);
      }
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t adjust_word_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  v174 = *MEMORY[0x277D85DE8];
  v163 = 0;
  v164 = 0;
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_96(v11, v12);
  v13 = setjmp(v2);
  if (v13 || OUTLINED_FUNCTION_34_2(v13, &v136, v14, v15, v16, v17, v18, v19, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173))
  {
LABEL_3:
    v20 = 94;
    goto LABEL_4;
  }

  v22 = OUTLINED_FUNCTION_11_12();
  get_parm(v22, v23, v24, -6);
  v25 = OUTLINED_FUNCTION_28_4();
  get_parm(v25, v26, v27, -6);
  v28 = OUTLINED_FUNCTION_29_4();
  push_ptr_init(v28, v29);
  fence_14(v1, 0, &null_str_3);
  v30 = OUTLINED_FUNCTION_24_7();
  if (lpta_loadp_setscan_r(v30, v31, 2) || advance_tok(v1, v32, v33, v34) || (*(v1 + 136) = 1, v35 = OUTLINED_FUNCTION_16_10(), test_ptr(v35, v36, v37)))
  {
LABEL_24:
    v85 = OUTLINED_FUNCTION_19_7();
    starttest(v85, v86);
    v87 = OUTLINED_FUNCTION_38_1();
    if (lpta_loadp_setscan_r(v87, v88, 5))
    {
LABEL_36:
      OUTLINED_FUNCTION_40_0();
      if (v135)
      {
        adjust_por_word_stress(v1, &v163, &v161);
      }

      goto LABEL_15;
    }

    v89 = OUTLINED_FUNCTION_5_12();
    if (!testFldeq(v89, v90, v91, 7) && !advance_tok(v1, v92, v93, v94))
    {
      v95 = OUTLINED_FUNCTION_19_7();
      startloop(v95, v96);
      v97 = OUTLINED_FUNCTION_38_1();
      lpta_loadpn(v97, v98);
      OUTLINED_FUNCTION_21_7();
      lpta_mover();
      lpta_storep(v1, v1 + 1320, v99);
      v100 = OUTLINED_FUNCTION_30_3();
      lpta_loadpn(v100, v101);
      OUTLINED_FUNCTION_21_7();
      lpta_mover();
      v102 = OUTLINED_FUNCTION_25_7();
      lpta_storep(v102, v103, v104);
      v105 = OUTLINED_FUNCTION_28_4();
      if (!forall_to_test(v105, v106, v107))
      {
LABEL_28:
        v108 = OUTLINED_FUNCTION_19_7();
        bspush_ca(v108);
        v109 = OUTLINED_FUNCTION_36_1();
        if (!lpta_loadp_setscan_r(v109, v110, v111))
        {
          v112 = OUTLINED_FUNCTION_4_12();
          v115 = npush_fld(v112, v113, v114);
          if (!v115)
          {
            OUTLINED_FUNCTION_79_0(v115, v116, v117, v118, v119, v120, v121, v122);
            if (!if_testlt(v1, v123, v124, v125, v126, v127, v128, v129) && !advance_tok(v1, v130, v131, v132))
            {
LABEL_32:
              savescptr(v1, 11, v1 + 1336);
LABEL_33:
              v133 = OUTLINED_FUNCTION_19_7();
              starttest(v133, v134);
              demote_word(v1);
LABEL_34:
              if (!forto_adv_upto_r(v1, 8, 9, 12, 2, v1 + 1320))
              {
                goto LABEL_15;
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

  v38 = OUTLINED_FUNCTION_19_7();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_38_1();
  if (lpta_loadp_setscan_r(v40, v41, 5))
  {
LABEL_18:
    v74 = OUTLINED_FUNCTION_14_10();
    starttest(v74, v75);
    v76 = OUTLINED_FUNCTION_38_1();
    if (lpta_loadp_setscan_r(v76, v77, 5))
    {
      goto LABEL_15;
    }

    v78 = OUTLINED_FUNCTION_5_12();
    if (testFldeq(v78, v79, v80, 7))
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v42 = OUTLINED_FUNCTION_5_12();
  if (!testFldeq(v42, v43, v44, 6) && !advance_tok(v1, v45, v46, v47))
  {
    v48 = OUTLINED_FUNCTION_19_7();
    starttest_l(v48, v49);
    v50 = OUTLINED_FUNCTION_36_1();
    if (lpta_loadp_setscan_r(v50, v51, v52))
    {
LABEL_15:
      v20 = 0;
      goto LABEL_4;
    }

    v53 = OUTLINED_FUNCTION_4_12();
    v56 = npush_fld(v53, v54, v55);
    if (!v56)
    {
      OUTLINED_FUNCTION_79_0(v56, v57, v58, v59, v60, v61, v62, v63);
      if (!if_testgt(v1, v64, v65, v66, v67, v68, v69, v70))
      {
LABEL_16:
        if (!advance_tok(v1, v71, v72, v73))
        {
          mark_word_stress(v1);
          goto LABEL_15;
        }
      }
    }
  }

LABEL_20:
  v81 = *(v1 + 104);
  if (v81)
  {
    v82 = OUTLINED_FUNCTION_31_3(v81);
  }

  else
  {
    v83 = OUTLINED_FUNCTION_41_0();
    v82 = vback(v83, v84);
  }

  v20 = 0;
  switch(v82)
  {
    case 1:
      goto LABEL_24;
    case 2:
      goto LABEL_18;
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 13:
      break;
    case 7:
      goto LABEL_36;
    case 9:
      goto LABEL_33;
    case 10:
      goto LABEL_34;
    case 11:
      goto LABEL_32;
    case 12:
      goto LABEL_28;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(v1);
  return v20;
}

void get_nuclear_accent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_15_10();
  v105 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();
  v99 = 0;
  v100 = 0;
  OUTLINED_FUNCTION_2_13(v7, v8, v9, v10, v11, v12, v13, v14, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  OUTLINED_FUNCTION_22_7();
  bzero(v104, v15);
  if (setjmp(v104))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_50_0();
  if (ventproc(v4, v16, v17, v18, v19, v104))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_95(v20, v21);
  v22 = OUTLINED_FUNCTION_47_0();
  get_parm(v22, v23, v24, -6);
  OUTLINED_FUNCTION_32_2(v25, &v99);
  v26 = OUTLINED_FUNCTION_28_4();
  get_parm(v26, v27, v28, -6);
  v29 = OUTLINED_FUNCTION_29_4();
  push_ptr_init(v29, v30);
  fence_14(v4, 0, &null_str_3);
  v31 = OUTLINED_FUNCTION_54_0();
  fence_14(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_69_0();
  starttest(v34, v35);
  OUTLINED_FUNCTION_40_0();
  if (!v36)
  {
    v37 = OUTLINED_FUNCTION_45_0();
    if (!lpta_loadp_setscan_r(v37, v38, v39))
    {
      v58 = OUTLINED_FUNCTION_69_0();
      bspush_ca_scan(v58, v59);
      v60 = OUTLINED_FUNCTION_26_7();
      v62 = 2;
      v63 = 6;
      while (2)
      {
        if (!testFldeq(v60, v61, v62, v63))
        {
LABEL_24:
          if (!advance_tok(v4, v64, v65, v66))
          {
LABEL_3:
            vretproc(v4);
            goto LABEL_4;
          }
        }

        v67 = *(v4 + 104);
        if (v67)
        {
          v68 = OUTLINED_FUNCTION_31_3(v67);
        }

        else
        {
          v69 = OUTLINED_FUNCTION_41_0();
          v68 = vback(v69, v70);
        }

        switch(v68)
        {
          case 1:
            break;
          case 2:
            v60 = OUTLINED_FUNCTION_5_12();
            v63 = 7;
            continue;
          case 3:
            goto LABEL_24;
          case 4:
            goto LABEL_10;
          case 5:
            goto LABEL_9;
          case 6:
            goto LABEL_15;
          case 7:
            goto LABEL_14;
          case 8:
            goto LABEL_16;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

  v98 = v102;
  v40 = OUTLINED_FUNCTION_30_3();
  if (!lpta_loadp_setscan_l(v40, v41, 2) && !advance_tok(v4, v42, v43, v44))
  {
LABEL_9:
    savescptr(v4, 5, &v99);
  }

LABEL_10:
  v45 = OUTLINED_FUNCTION_38_1();
  lpta_loadpn(v45, v46);
  v47 = OUTLINED_FUNCTION_49_0();
  rpta_loadpn(v47, v48);
  if (!compare_ptas(v4) && !testneq(v4))
  {
    v49 = OUTLINED_FUNCTION_36_1();
    if (!lpta_loadp_setscan_l(v49, v50, v51) && !advance_tok(v4, v52, v53, v54))
    {
LABEL_14:
      v55 = OUTLINED_FUNCTION_37_1();
      savescptr(v55, v56, v57);
    }
  }

LABEL_15:
  mark_nuclear_accent(v4, v103, v101, &v99);
LABEL_16:
  *(v6 + 8) = v100;
  *(v5 + 8) = v98;
  vretproc(v4);
LABEL_4:
  OUTLINED_FUNCTION_98();
}

void adjust_accents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_15_10();
  v465 = *MEMORY[0x277D85DE8];
  v460[0] = 0;
  v460[1] = 0;
  v459[0] = 0;
  v459[1] = 0;
  v458[0] = 0;
  v458[1] = 0;
  v456 = 0;
  v457 = 0;
  v454 = 0;
  v455 = 0;
  v452 = 0;
  v453 = 0;
  OUTLINED_FUNCTION_72_0();
  v447 = 0;
  v448 = 0;
  v445 = 0;
  v446 = 0;
  HIDWORD(v444) = 0;
  OUTLINED_FUNCTION_23_7();
  bzero(&v421, v5);
  OUTLINED_FUNCTION_22_7();
  bzero(v464, v6);
  if (setjmp(v464) || ventproc(v4, &v421, v463, v462, v461, v464))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_95(v4, v460);
  v7 = OUTLINED_FUNCTION_47_0();
  get_parm(v7, v8, v9, -6);
  OUTLINED_FUNCTION_32_2(v10, v458);
  v11 = OUTLINED_FUNCTION_28_4();
  get_parm(v11, v12, v13, -6);
  push_ptr_init(v4, &v454);
  push_ptr_init(v4, &v452);
  v14 = OUTLINED_FUNCTION_49_0();
  push_ptr_init(v14, v15);
  push_ptr_init(v4, &v449);
  v16 = OUTLINED_FUNCTION_38_1();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_30_3();
  push_ptr_init(v18, v19);
  HIDWORD(v444) = 65532;
  v20 = 0;
  v21 = OUTLINED_FUNCTION_33_2();
  fence_14(v21, v22, v23);
  v24 = OUTLINED_FUNCTION_44_0();
  fence_14(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_81_0();
  starttest(v27, v28);
  OUTLINED_FUNCTION_40_0();
  if (!v29)
  {
    v30 = OUTLINED_FUNCTION_45_0();
    if (!lpta_loadp_setscan_r(v30, v31, v32))
    {
      LODWORD(v20) = 2;
      v33 = OUTLINED_FUNCTION_67_0();
      bspush_ca_scan(v33, v34);
      v35 = OUTLINED_FUNCTION_26_7();
      v37 = testFldeq(v35, v36, 2, 6);
      LODWORD(v40) = 0;
      v41 = 0;
      if (!v37)
      {
LABEL_8:
        LODWORD(v40) = v41;
        if (!advance_tok(v4, v38, v39, v41))
        {
          goto LABEL_3;
        }
      }

      goto LABEL_125;
    }

    v20 = 0;
  }

  while (2)
  {
    v40 = v20;
    v42 = OUTLINED_FUNCTION_14_10();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_36_1();
    if (!lpta_loadp_setscan_r(v44, v45, v46))
    {
      v47 = OUTLINED_FUNCTION_4_12();
      v50 = npush_fld(v47, v48, v49);
      if (v50)
      {
        goto LABEL_125;
      }

      OUTLINED_FUNCTION_97(v50, v51, v52, v53, v54, v55, v56, v57);
      if (if_testlt(v4, v58, v59, v60, v61, v62, v63, v64) || advance_tok(v4, v65, v66, v67))
      {
        goto LABEL_125;
      }

      v68 = OUTLINED_FUNCTION_14_10();
      starttest_l(v68, v69);
      v70 = OUTLINED_FUNCTION_36_1();
      if (!lpta_loadp_setscan_l(v70, v71, v72))
      {
        LODWORD(v20) = 5;
        v73 = OUTLINED_FUNCTION_67_0();
        bspush_ca_scan(v73, v74);
        v75 = OUTLINED_FUNCTION_21_7();
        v77 = npush_fld(v75, v76, 5u);
        if (v77)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_79_0(v77, v78, v79, v80, v81, v82, v83, v84);
        if (if_testge(v4, v85, v86, v87, v88, v89, v90, v91))
        {
          goto LABEL_125;
        }

        v95 = v40;
        if (advance_tok(v4, v92, v93, v94))
        {
          goto LABEL_125;
        }

LABEL_19:
        LODWORD(v40) = v95;
        if (advanc(v4))
        {
          goto LABEL_125;
        }

LABEL_20:
        LODWORD(v40) = v95;
        savescptr(v4, 6, &v452);
        v96 = OUTLINED_FUNCTION_4_12();
        v99 = npush_fld(v96, v97, v98);
        if (v99)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_97(v99, v100, v101, v102, v103, v104, v105, v106);
        if (if_testgt(v4, v107, v108, v109, v110, v111, v112, v113) || advance_tok(v4, v114, v115, v116))
        {
          goto LABEL_125;
        }

LABEL_23:
        v20 = &v454;
        v117 = OUTLINED_FUNCTION_28_4();
        savescptr(v117, v118, v119);
        v120 = OUTLINED_FUNCTION_25_7();
        mark_word_stress(v120);
LABEL_24:
        v40 = v95;
        v121 = OUTLINED_FUNCTION_14_10();
        starttest(v121, v122);
        v123 = OUTLINED_FUNCTION_36_1();
        if (!lpta_loadp_setscan_r(v123, v124, v125))
        {
          v176 = OUTLINED_FUNCTION_4_12();
          if (npush_fld(v176, v177, v178))
          {
            goto LABEL_125;
          }

          npush_v(v4, (v4 + 3056), v179, v180, v181, v182, v183, v184);
          if (if_testlt(v4, v185, v186, v187, v188, v189, v190, v191) || advance_tok(v4, v192, v193, v194))
          {
            goto LABEL_125;
          }

          v195 = OUTLINED_FUNCTION_14_10();
          starttest(v195, v196);
          v197 = OUTLINED_FUNCTION_36_1();
          if (!lpta_loadp_setscan_l(v197, v198, v199))
          {
LABEL_48:
            LODWORD(v40) = v95;
            LODWORD(v20) = 9;
            while (1)
            {
              v212 = OUTLINED_FUNCTION_4_12();
              v215 = npush_fld(v212, v213, v214);
              if (v215)
              {
                break;
              }

              OUTLINED_FUNCTION_97(v215, v216, v217, v218, v219, v220, v221, v222);
              if (if_testgt(v4, v200, v201, v202, v203, v204, v205, v206) || advance_tok(v4, v207, v208, v209))
              {
                break;
              }

              v210 = OUTLINED_FUNCTION_25_7();
              bspush_ca_scan(v210, v211);
            }

            goto LABEL_125;
          }
        }
      }
    }

LABEL_25:
    OUTLINED_FUNCTION_40_0();
    if (!v29)
    {
      v126 = OUTLINED_FUNCTION_19_7();
      starttest_l(v126, v127);
      v128 = OUTLINED_FUNCTION_45_0();
      if (!lpta_loadp_setscan_r(v128, v129, v130))
      {
        v223 = OUTLINED_FUNCTION_19_7();
        bspush_ca_scan(v223, v224);
        v225 = OUTLINED_FUNCTION_26_7();
        v227 = testFldeq(v225, v226, 1, 3);
        v228 = v40;
        if (v227)
        {
          goto LABEL_125;
        }

LABEL_55:
        v40 = v228;
        if (advance_tok(v4, v38, v39, v41))
        {
          goto LABEL_125;
        }

        v229 = OUTLINED_FUNCTION_19_7();
        starttest_l(v229, v230);
        v231 = OUTLINED_FUNCTION_36_1();
        if (!lpta_loadp_setscan_l(v231, v232, v233))
        {
          v95 = v40;
          if (!advanc(v4))
          {
LABEL_58:
            LODWORD(v40) = v95;
            savescptr(v4, 18, &v452);
            v234 = OUTLINED_FUNCTION_4_12();
            v237 = npush_fld(v234, v235, v236);
            if (v237)
            {
              goto LABEL_125;
            }

            OUTLINED_FUNCTION_79_0(v237, v238, v239, v240, v241, v242, v243, v244);
            if (if_testlt(v4, v245, v246, v247, v248, v249, v250, v251) || advance_tok(v4, v252, v253, v254))
            {
              goto LABEL_125;
            }

LABEL_61:
            v20 = &v454;
            v255 = OUTLINED_FUNCTION_28_4();
            savescptr(v255, v256, v257);
            v258 = OUTLINED_FUNCTION_25_7();
            mark_word_stress(v258);
LABEL_62:
            v40 = v95;
          }
        }
      }
    }

    OUTLINED_FUNCTION_40_0();
    if (v29)
    {
      LODWORD(v95) = v40;
      goto LABEL_30;
    }

    v148 = OUTLINED_FUNCTION_19_7();
    startloop(v148, v149);
    lpta_loadpn(v4, &v456);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    lpta_storep(v4, v4 + 1320, v150);
    lpta_loadpn(v4, v459);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v20 = &v445;
    v151 = OUTLINED_FUNCTION_25_7();
    lpta_storep(v151, v152, v153);
    v154 = OUTLINED_FUNCTION_28_4();
    v157 = forall_to_test(v154, v155, v156);
    v95 = v40;
    if (v157)
    {
      goto LABEL_125;
    }

LABEL_38:
    LODWORD(v40) = v95;
    v158 = OUTLINED_FUNCTION_19_7();
    bspush_ca(v158);
    v159 = OUTLINED_FUNCTION_36_1();
    if (lpta_loadp_setscan_r(v159, v160, v161) || advance_tok(v4, v162, v163, v164))
    {
      goto LABEL_125;
    }

LABEL_40:
    savescptr(v4, 23, v4 + 1336);
LABEL_41:
    LODWORD(v40) = v95;
    v165 = OUTLINED_FUNCTION_19_7();
    starttest(v165, v166);
    v167 = OUTLINED_FUNCTION_36_1();
    if (lpta_loadp_setscan_r(v167, v168, v169))
    {
LABEL_121:
      lpta_rpta_loadp(v4, v4 + 1320, v4 + 1336);
      v415 = OUTLINED_FUNCTION_4_12();
      if (mark_v(v415, v416, v417, v418, v419))
      {
        goto LABEL_125;
      }

      OUTLINED_FUNCTION_9_12();
      v175 = mark_s();
    }

    else
    {
      v170 = OUTLINED_FUNCTION_19_7();
      bspush_ca_scan(v170, v171);
      v172 = OUTLINED_FUNCTION_21_7();
      v174 = testFldeq(v172, v173, 8, 1);
      v39 = v95;
      if (v174)
      {
        goto LABEL_125;
      }

LABEL_43:
      LODWORD(v40) = v39;
      v175 = advance_tok(v4, v38, v39, v41);
    }

    LODWORD(v95) = v40;
    if (v175)
    {
LABEL_125:
      LODWORD(v38) = v40;
LABEL_63:
      v259 = *(v4 + 104);
      if (v259)
      {
        v260 = OUTLINED_FUNCTION_31_3(v259);
        v95 = v38;
      }

      else
      {
        v260 = vback(v4, v38);
        v95 = 0;
      }

      v261 = v260 - 1;
      v41 = v95;
      v40 = v95;
      v228 = v95;
      v39 = v95;
      v134 = v95;
      switch(v261)
      {
        case 0:
          v20 = v95;
          continue;
        case 1:
          v262 = OUTLINED_FUNCTION_5_12();
          v265 = testFldeq(v262, v263, v264, 7);
          v41 = v95;
          v38 = v95;
          if (!v265)
          {
            goto LABEL_8;
          }

          goto LABEL_63;
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_25;
        case 4:
          goto LABEL_19;
        case 5:
          goto LABEL_20;
        case 6:
          goto LABEL_23;
        case 7:
          goto LABEL_24;
        case 8:
          savescptr(v4, 9, v451);
          v297 = advance_tok(v4, v294, v295, v296);
          LODWORD(v38) = v95;
          if (v297)
          {
            goto LABEL_63;
          }

          v298 = OUTLINED_FUNCTION_14_10();
          startloop(v298, v299);
          v300 = OUTLINED_FUNCTION_49_0();
          lpta_loadpn(v300, v301);
          OUTLINED_FUNCTION_21_7();
          lpta_mover();
          v20 = &v449;
          v302 = OUTLINED_FUNCTION_25_7();
          lpta_storep(v302, v303, v304);
          lpta_loadpn(v4, &v454);
          OUTLINED_FUNCTION_21_7();
          lpta_mover();
          v305 = OUTLINED_FUNCTION_27_5();
          lpta_storep(v305, v306, v307);
          v308 = OUTLINED_FUNCTION_6_12();
          v311 = forall_to_test(v308, v309, v310);
          LODWORD(v38) = v95;
          if (v311)
          {
            goto LABEL_63;
          }

          goto LABEL_80;
        case 9:
          goto LABEL_48;
        case 10:
          goto LABEL_83;
        case 11:
          goto LABEL_84;
        case 12:
          goto LABEL_82;
        case 13:
LABEL_80:
          v312 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v312);
          v313 = OUTLINED_FUNCTION_36_1();
          v316 = lpta_loadp_setscan_r(v313, v314, v315);
          LODWORD(v38) = v95;
          if (v316)
          {
            goto LABEL_63;
          }

          v319 = advance_tok(v4, v95, v317, v318);
          LODWORD(v38) = v95;
          if (v319)
          {
            goto LABEL_63;
          }

LABEL_82:
          savescptr(v4, 13, &v447);
LABEL_83:
          v320 = OUTLINED_FUNCTION_19_7();
          starttest(v320, v321);
          v20 = (&v444 + 4);
          v322 = OUTLINED_FUNCTION_25_7();
          move_i(v322, v323, v324);
          v325 = OUTLINED_FUNCTION_28_4();
          v326 = demote_word(v325);
          LODWORD(v38) = v95;
          if (v326)
          {
            goto LABEL_63;
          }

LABEL_84:
          v327 = forto_adv_upto_r(v4, 4, 11, 14, 2, &v449);
          v40 = v95;
          LODWORD(v38) = v95;
          if (!v327)
          {
            goto LABEL_25;
          }

          goto LABEL_63;
        case 14:
          goto LABEL_62;
        case 15:
          v268 = OUTLINED_FUNCTION_26_7();
          v270 = testFldeq(v268, v269, 1, 4);
          v228 = v95;
          v38 = v95;
          if (!v270)
          {
            goto LABEL_55;
          }

          goto LABEL_63;
        case 16:
          goto LABEL_55;
        case 17:
          goto LABEL_58;
        case 18:
          goto LABEL_61;
        case 19:
          goto LABEL_30;
        case 20:
          goto LABEL_41;
        case 21:
          goto LABEL_124;
        case 22:
          goto LABEL_40;
        case 23:
          LODWORD(v40) = v95;
          goto LABEL_121;
        case 24:
          v271 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v271, v272);
          v273 = OUTLINED_FUNCTION_21_7();
          v275 = testFldeq(v273, v274, 8, 4);
          goto LABEL_75;
        case 25:
          goto LABEL_43;
        case 26:
          v276 = OUTLINED_FUNCTION_4_12();
          v279 = npush_fld(v276, v277, v278);
          LODWORD(v38) = v95;
          if (v279)
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_79_0(v279, v95, v280, v281, v282, v283, v284, v285);
          v275 = if_testge(v4, v286, v287, v288, v289, v290, v291, v292);
LABEL_75:
          v39 = v95;
          v38 = v95;
          if (!v275)
          {
            goto LABEL_43;
          }

          goto LABEL_63;
        case 27:
          goto LABEL_38;
        case 28:
          LODWORD(v40) = v95;
          goto LABEL_32;
        case 29:
          v331 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v331);
          v267 = *(v4 + 5102);
          goto LABEL_100;
        case 30:
          goto LABEL_31;
        case 31:
          v293 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v293);
          v267 = *(v4 + 5110);
          goto LABEL_100;
        case 32:
          v375 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v375);
          v267 = *(v4 + 5098);
          goto LABEL_100;
        case 33:
          v266 = OUTLINED_FUNCTION_19_7();
          bspush_ca(v266);
          v267 = *(v4 + 5122);
          goto LABEL_100;
        case 34:
          v267 = *(v4 + 5130);
LABEL_100:
          v134 = v95;
          LODWORD(v38) = v95;
          if (v267 == *(v4 + 5090))
          {
            goto LABEL_31;
          }

          goto LABEL_63;
        case 36:
          bspop_boa(v4);
          v332 = OUTLINED_FUNCTION_19_7();
          starttest(v332, v333);
          v334 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v334, v335, v336))
          {
            goto LABEL_90;
          }

          v400 = OUTLINED_FUNCTION_5_12();
          v404 = testFldeq(v400, v401, v402, v403);
          LODWORD(v38) = v95;
          if (v404)
          {
            goto LABEL_63;
          }

          v407 = advance_tok(v4, v95, v405, v406);
          LODWORD(v38) = v95;
          if (v407)
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_57_0(v407, v95, v408, v409, v410, v411, v412, v413, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451[0], v451[1], v452, v453, v454, v455, v456, v457);
          OUTLINED_FUNCTION_21_7();
          goto LABEL_117;
        case 37:
          v328 = OUTLINED_FUNCTION_21_7();
          v330 = testFldeq(v328, v329, 8, 4);
          LODWORD(v38) = v95;
          if (!v330)
          {
            goto LABEL_34;
          }

          goto LABEL_63;
        case 38:
          goto LABEL_34;
        case 39:
LABEL_90:
          v337 = OUTLINED_FUNCTION_19_7();
          starttest(v337, v338);
          v339 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v339, v340, v341))
          {
            goto LABEL_91;
          }

          v394 = OUTLINED_FUNCTION_5_12();
          v397 = testFldeq(v394, v395, v396, 1);
          LODWORD(v38) = v95;
          if (!v397)
          {
            v368 = advance_tok(v4, v95, v398, v399);
            LODWORD(v38) = v95;
            if (!v368)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_63;
        case 40:
LABEL_91:
          v342 = OUTLINED_FUNCTION_19_7();
          starttest(v342, v343);
          v344 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v344, v345, v346))
          {
            goto LABEL_92;
          }

          v388 = OUTLINED_FUNCTION_5_12();
          v391 = testFldeq(v388, v389, v390, 2);
          LODWORD(v38) = v95;
          if (!v391)
          {
            v368 = advance_tok(v4, v95, v392, v393);
            LODWORD(v38) = v95;
            if (!v368)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_63;
        case 41:
LABEL_92:
          v347 = OUTLINED_FUNCTION_19_7();
          starttest(v347, v348);
          v349 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v349, v350, v351))
          {
            goto LABEL_93;
          }

          v382 = OUTLINED_FUNCTION_5_12();
          v385 = testFldeq(v382, v383, v384, 3);
          LODWORD(v38) = v95;
          if (!v385)
          {
            v368 = advance_tok(v4, v95, v386, v387);
            LODWORD(v38) = v95;
            if (!v368)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_63;
        case 42:
LABEL_93:
          v352 = OUTLINED_FUNCTION_19_7();
          starttest(v352, v353);
          v354 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v354, v355, v356))
          {
            goto LABEL_94;
          }

          v376 = OUTLINED_FUNCTION_5_12();
          v379 = testFldeq(v376, v377, v378, 4);
          LODWORD(v38) = v95;
          if (!v379)
          {
            v368 = advance_tok(v4, v95, v380, v381);
            LODWORD(v38) = v95;
            if (!v368)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_63;
        case 43:
LABEL_94:
          v357 = OUTLINED_FUNCTION_19_7();
          starttest(v357, v358);
          v359 = OUTLINED_FUNCTION_45_0();
          if (lpta_loadp_setscan_r(v359, v360, v361))
          {
            goto LABEL_3;
          }

          v362 = OUTLINED_FUNCTION_5_12();
          v365 = testFldeq(v362, v363, v364, 5);
          LODWORD(v38) = v95;
          if (v365)
          {
            goto LABEL_63;
          }

          v368 = advance_tok(v4, v95, v366, v367);
          LODWORD(v38) = v95;
          if (v368)
          {
            goto LABEL_63;
          }

LABEL_113:
          OUTLINED_FUNCTION_57_0(v368, v95, v369, v370, v371, v372, v373, v374, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451[0], v451[1], v452, v453, v454, v455, v456, v457);
          OUTLINED_FUNCTION_9_12();
LABEL_117:
          v414 = mark_s();
          LODWORD(v38) = v95;
          if (!v414)
          {
            goto LABEL_3;
          }

          goto LABEL_63;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_124:
  LODWORD(v40) = v95;
  if (forto_adv_upto_r(v4, 20, 21, 28, 2, v4 + 1320))
  {
    goto LABEL_125;
  }

LABEL_30:
  v131 = OUTLINED_FUNCTION_19_7();
  starttest(v131, v132);
  v133 = OUTLINED_FUNCTION_19_7();
  bspush_ca(v133);
  v134 = v95;
  LODWORD(v40) = v95;
  if (*(v4 + 5094) != *(v4 + 5090))
  {
    goto LABEL_125;
  }

LABEL_31:
  LODWORD(v40) = v134;
  adjust_lg_specific_accents(v4, v460, v459, v458, &v456);
LABEL_32:
  v135 = OUTLINED_FUNCTION_19_7();
  starttest(v135, v136);
  v137 = OUTLINED_FUNCTION_36_1();
  if (!lpta_loadp_setscan_r(v137, v138, v139))
  {
    OUTLINED_FUNCTION_19_7();
    bspush_ca_scan_boa();
    v140 = OUTLINED_FUNCTION_19_7();
    bspush_ca_scan(v140, v141);
    v142 = OUTLINED_FUNCTION_21_7();
    if (!testFldeq(v142, v143, 8, 2))
    {
LABEL_34:
      v144 = OUTLINED_FUNCTION_82_0();
      if (advance_tok(v144, v145, v146, v147))
      {
        LODWORD(v40) = v20;
      }

      else
      {
        LODWORD(v40) = 1;
      }
    }

    goto LABEL_125;
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_98();
}

void mark_nuclear_accent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_15_10();
  v279 = *MEMORY[0x277D85DE8];
  v277[0] = 0;
  v277[1] = 0;
  v276[0] = 0;
  v276[1] = 0;
  OUTLINED_FUNCTION_2_13(v7, v8, v9, v10, v11, v12, v13, v14, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v274);
  OUTLINED_FUNCTION_22_7();
  bzero(v278, v15);
  if (!setjmp(v278))
  {
    OUTLINED_FUNCTION_52_0();
    if (!ventproc(v4, v16, v17, v18, v19, v278))
    {
      OUTLINED_FUNCTION_95(v4, v277);
      v20 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_70_0(v20, v21);
      OUTLINED_FUNCTION_20_7(v22, v23, v24, v25, v26, v27, v28, v29, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273);
      v30 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_62_0(v30, v31);
      v32 = OUTLINED_FUNCTION_33_2();
      fence_14(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_87_0();
      fence_14(v35, v36, v37);
      starttest(v4, 1);
      v38 = OUTLINED_FUNCTION_24_7();
      v40 = lpta_loadp_setscan_l(v38, v39, 2);
      LODWORD(v41) = 0;
      LODWORD(v42) = 0;
      if (v40)
      {
LABEL_5:
        v43 = OUTLINED_FUNCTION_19_7();
        starttest(v43, v44);
        v45 = OUTLINED_FUNCTION_29_4();
        v47 = lpta_loadp_setscan_l(v45, v46, 2);
        LODWORD(v48) = v41;
        if (!v47)
        {
LABEL_16:
          v61 = v48;
          v94 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v94, v95);
          v96 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v96, v97);
          LODWORD(v41) = v61;
          if (!advanc(v4))
          {
LABEL_17:
            v61 = v41;
            v98 = OUTLINED_FUNCTION_37_1();
            savescptr(v98, v99, v100);
            v101 = OUTLINED_FUNCTION_4_12();
            v104 = npush_fld(v101, v102, v103);
            if (!v104)
            {
              OUTLINED_FUNCTION_79_0(v104, v105, v106, v107, v108, v109, v110, v111);
              if (!if_testlt(v4, v112, v113, v114, v115, v116, v117, v118) && !advance_tok(v4, v119, v120, v121))
              {
LABEL_20:
                v122 = OUTLINED_FUNCTION_47_0();
                savescptr(v122, v123, v124);
                v125 = OUTLINED_FUNCTION_24_7();
                lpta_rpta_loadp(v125, v126, v127);
                v128 = OUTLINED_FUNCTION_4_12();
                v61 = v41;
                if (!mark_v(v128, v129, v130, v131, v132))
                {
                  goto LABEL_15;
                }
              }
            }
          }

          goto LABEL_49;
        }

LABEL_6:
        v49 = OUTLINED_FUNCTION_19_7();
        starttest(v49, v50);
        v51 = OUTLINED_FUNCTION_29_4();
        v53 = lpta_loadp_setscan_l(v51, v52, 2);
        LODWORD(v54) = v41;
        if (v53)
        {
LABEL_7:
          v55 = OUTLINED_FUNCTION_19_7();
          starttest(v55, v56);
          v57 = OUTLINED_FUNCTION_29_4();
          v59 = lpta_loadp_setscan_l(v57, v58, 2);
          LODWORD(v60) = v41;
          if (v59)
          {
LABEL_8:
            v61 = v41;
            lpta_rpta_loadp(v4, v277, v276);
            OUTLINED_FUNCTION_5_12();
            if (!mark_s())
            {
              goto LABEL_15;
            }

            goto LABEL_49;
          }

LABEL_45:
          v61 = v60;
          v188 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v188, v189);
          v190 = OUTLINED_FUNCTION_19_7();
          bspush_ca_scan(v190, v191);
          LODWORD(v41) = v61;
          if (advanc(v4))
          {
            goto LABEL_49;
          }

LABEL_46:
          v192 = OUTLINED_FUNCTION_37_1();
          savescptr(v192, v193, v194);
          v159 = v41;
LABEL_47:
          v61 = v159;
          bspush_ca_scan_boa();
          v195 = OUTLINED_FUNCTION_21_7();
          if (!testFldeq(v195, v196, 8, 1))
          {
            v61 = 1;
          }

          goto LABEL_49;
        }

LABEL_22:
        v61 = v54;
        v133 = OUTLINED_FUNCTION_19_7();
        bspush_ca_scan(v133, v134);
        v135 = OUTLINED_FUNCTION_19_7();
        bspush_ca_scan(v135, v136);
        LODWORD(v41) = v61;
        if (advanc(v4))
        {
          goto LABEL_49;
        }

LABEL_23:
        v61 = v41;
        v137 = OUTLINED_FUNCTION_37_1();
        savescptr(v137, v138, v139);
        v140 = OUTLINED_FUNCTION_4_12();
        v143 = npush_fld(v140, v141, v142);
        if (!v143)
        {
          OUTLINED_FUNCTION_79_0(v143, v144, v145, v146, v147, v148, v149, v150);
          v158 = if_testle(v4, v151, v152, v153, v154, v155, v156, v157);
          v159 = v41;
          if (!v158)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_10:
        v61 = v42;
        v62 = OUTLINED_FUNCTION_19_7();
        bspush_ca_scan(v62, v63);
        v64 = OUTLINED_FUNCTION_14_10();
        bspush_ca_scan(v64, v65);
        LODWORD(v41) = v61;
        if (!advanc(v4))
        {
LABEL_11:
          v61 = v41;
          v66 = OUTLINED_FUNCTION_37_1();
          savescptr(v66, v67, v68);
          v69 = OUTLINED_FUNCTION_4_12();
          v72 = npush_fld(v69, v70, v71);
          if (!v72)
          {
            OUTLINED_FUNCTION_97(v72, v73, v74, v75, v76, v77, v78, v79);
            if (!if_testle(v4, v80, v81, v82, v83, v84, v85, v86))
            {
              v90 = advance_tok(v4, v87, v88, v89);
              if (!v90)
              {
LABEL_14:
                OUTLINED_FUNCTION_94(v90, v91, v42, v48, v54, v60, v92, v93, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271);
LABEL_15:
                *(v6 + 8) = v275;
                *(v5 + 8) = v271;
                goto LABEL_3;
              }
            }
          }
        }
      }

LABEL_49:
      v162 = v61;
      while (2)
      {
        v160 = v4[13];
        if (v160)
        {
          v90 = OUTLINED_FUNCTION_31_3(v160);
          v41 = v91;
        }

        else
        {
          v90 = vback(v4, v162);
          v41 = 0;
        }

        v42 = v41;
        v48 = v41;
        v54 = v41;
        v60 = v41;
        switch(v90)
        {
          case 1:
            goto LABEL_5;
          case 2:
            goto LABEL_10;
          case 3:
            v161 = advance_tok(v4, v91, v41, v41);
            LODWORD(v42) = v41;
            v162 = v41;
            if (!v161)
            {
              goto LABEL_10;
            }

            continue;
          case 4:
            goto LABEL_11;
          case 5:
            goto LABEL_14;
          case 6:
            goto LABEL_15;
          case 7:
            goto LABEL_6;
          case 8:
            goto LABEL_16;
          case 9:
            v186 = advance_tok(v4, v91, v41, v41);
            LODWORD(v48) = v41;
            v162 = v41;
            if (!v186)
            {
              goto LABEL_16;
            }

            continue;
          case 10:
            goto LABEL_17;
          case 11:
            goto LABEL_20;
          case 12:
            goto LABEL_7;
          case 13:
            goto LABEL_22;
          case 14:
            v185 = advance_tok(v4, v91, v41, v41);
            LODWORD(v54) = v41;
            v162 = v41;
            if (!v185)
            {
              goto LABEL_22;
            }

            continue;
          case 15:
            goto LABEL_23;
          case 16:
          case 23:
            bspop_boa(v4);
            OUTLINED_FUNCTION_24_7();
            bspush_ca_scan_boa();
            v163 = OUTLINED_FUNCTION_21_7();
            if (testFldeq(v163, v164, 8, 4))
            {
              v162 = v41;
            }

            else
            {
              v162 = 1;
            }

            continue;
          case 17:
            bspop_boa(v4);
            v172 = advance_tok(v4, v169, v170, v171);
            v162 = v41;
            if (v172)
            {
              continue;
            }

            goto LABEL_38;
          case 18:
          case 25:
            goto LABEL_38;
          case 19:
            goto LABEL_8;
          case 20:
            goto LABEL_45;
          case 21:
            v187 = advance_tok(v4, v91, v41, v41);
            LODWORD(v60) = v41;
            v162 = v41;
            if (!v187)
            {
              goto LABEL_45;
            }

            continue;
          case 22:
            goto LABEL_46;
          case 24:
            bspop_boa(v4);
            v168 = advance_tok(v4, v165, v166, v167);
            v162 = v41;
            if (v168)
            {
              continue;
            }

LABEL_38:
            v173 = OUTLINED_FUNCTION_47_0();
            savescptr(v173, v174, v175);
            v176 = OUTLINED_FUNCTION_24_7();
            lpta_rpta_loadp(v176, v177, v178);
            v179 = OUTLINED_FUNCTION_4_12();
            v184 = mark_v(v179, v180, v181, v182, v183);
            v162 = v41;
            if (!v184)
            {
              goto LABEL_15;
            }

            continue;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_98();
}

void insert_phrase_pause(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_13();
  v44 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();
  v38 = 0u;
  v39 = 0u;
  OUTLINED_FUNCTION_23_7();
  bzero(v37, v4);
  OUTLINED_FUNCTION_22_7();
  bzero(v43, v5);
  if (!setjmp(v43))
  {
    OUTLINED_FUNCTION_50_0();
    v10 = ventproc(v3, v6, v7, v8, v9, v43);
    if (!v10)
    {
      OUTLINED_FUNCTION_32_2(v10, v42);
      v11 = OUTLINED_FUNCTION_28_4();
      get_parm(v11, v12, v13, -6);
      *&v39 = 0;
      *(&v39 + 6) = 0;
      LODWORD(v38) = -65532;
      fence_14(v3, 0, &null_str_3);
      fence_14(v3, 1, &unk_2806BB0BC);
      if (*(v3 + 3562))
      {
        while (2)
        {
          v14 = OUTLINED_FUNCTION_24_7();
          starttest(v14, v15);
          OUTLINED_FUNCTION_48_0();
          bspush_ca_boa();
          *(v3 + 136) = 1;
          *(v3 + 112) = v41;
          *(v3 + 128) = 0;
          OUTLINED_FUNCTION_68_0();
          if (!lpta_tstctxtl())
          {
            v16 = OUTLINED_FUNCTION_68_0();
            setscan_l(v16, v17, v18);
            if (!v19)
            {
              v20 = OUTLINED_FUNCTION_68_0();
              if (!testFldeq(v20, v21, 0, 40))
              {
                v22 = OUTLINED_FUNCTION_68_0();
                if (!testFldeq(v22, v23, 4, 7))
                {
                  advance_tok(v3, v24, v25, v26);
                }
              }
            }
          }

          while (1)
          {
            v27 = *(v3 + 104);
            if (v27)
            {
              *(v3 + 104) = 0;
              v28 = v27;
            }

            else
            {
              v29 = OUTLINED_FUNCTION_43_0();
              v28 = vback(v29, v30);
            }

            if (v28 != 3)
            {
              break;
            }

            bspop_boa(v3);
            v31 = OUTLINED_FUNCTION_42_0();
            lpta_rpta_loadp(v31, v32, v40);
            OUTLINED_FUNCTION_39_0();
            settvar_s();
            WORD1(v38) = 11;
            v33 = OUTLINED_FUNCTION_39_0();
            copyvar(v33, v34, v35);
            OUTLINED_FUNCTION_68_0();
            insert_2ptv();
            if (!v36)
            {
              goto LABEL_18;
            }
          }

          if (v28 == 1)
          {
            continue;
          }

          break;
        }

        if (v28 == 2)
        {
LABEL_18:
          *(v3 + 3562) = *(v3 + 3254);
        }
      }
    }
  }

  vretproc(v3);
  OUTLINED_FUNCTION_60_0();
}

uint64_t reset_phrase_vars(_WORD *a1)
{
  OUTLINED_FUNCTION_18_8(*MEMORY[0x277D85DE8], v24);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_14(v11, v12, v13, v14, v15, v16, v17, v18, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, SHIDWORD(v72), v74, SWORD2(v74), SHIWORD(v74), v76, SWORD2(v76), SBYTE6(v76), SHIBYTE(v76), v78, v79))
  {
    v19 = 94;
  }

  else
  {
    v19 = 0;
    v21 = OUTLINED_FUNCTION_33_2();
    fence_14(v21, v22, v23);
    a1[1545] = 0;
    copyvar(a1, a1 + 1540, a1 + 1544);
    a1[1595] = a1[1593];
    a1[1593] = 0;
    set_phrase_defaults();
  }

  vretproc(a1);
  return v19;
}

uint64_t assign_unpuncted_phr_vals(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_2_13(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_78_0(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_7_12(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v124, SHIDWORD(v124), v126, SWORD2(v126), SHIWORD(v126), v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v131))
  {
    v27 = 94;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_11_12();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_13_12();
    get_parm(v32, v33, v34, -6);
    v27 = 0;
    v35 = OUTLINED_FUNCTION_33_2();
    fence_14(v35, v36, v37);
    v38 = OUTLINED_FUNCTION_24_7();
    assign_currPhr_vals(v38, v39, v40, v41);
  }

  vretproc(v1);
  return v27;
}

void follows_end_quote(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_65_0();
  v92 = *MEMORY[0x277D85DE8];
  v87[27] = 0;
  v87[28] = 0;
  OUTLINED_FUNCTION_2_13(v5, v6, v7, v8, v9, v10, v11, v12, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v87[13], v87[14], v87[15], v87[16], v87[17], v87[18], v87[19], v87[20], v87[21], v87[22], v87[23], v87[24], v87[25], v87[26]);
  OUTLINED_FUNCTION_22_7();
  bzero(v91, v13);
  if (!setjmp(v91) && !ventproc(v4, v87, v90, v89, v88, v91))
  {
    v14 = OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_62_0(v14, v15);
    v16 = OUTLINED_FUNCTION_24_7();
    push_ptr_init(v16, v17);
    v18 = OUTLINED_FUNCTION_29_4();
    push_ptr_init(v18, v19);
    v20 = 0;
    v21 = OUTLINED_FUNCTION_33_2();
    fence_14(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_93();
    lpta_loadpn(v24, v25);
    OUTLINED_FUNCTION_21_7();
    lpta_mover();
    v26 = OUTLINED_FUNCTION_24_7();
    lpta_storep(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_27_5();
    if (!lpta_loadp_setscan_r(v29, v30, 1))
    {
      OUTLINED_FUNCTION_35_1();
      if (!test_string_s())
      {
        v31 = OUTLINED_FUNCTION_19_7();
        starttest(v31, v32);
        v33 = OUTLINED_FUNCTION_30_3();
        if (lpta_loadp_setscan_l(v33, v34, 1))
        {
          goto LABEL_3;
        }

        v20 = 0;
        while (2)
        {
          v35 = OUTLINED_FUNCTION_37_1();
          savescptr(v35, v36, v37);
          OUTLINED_FUNCTION_35_1();
          if (!test_string_s())
          {
LABEL_11:
            v38 = OUTLINED_FUNCTION_29_4();
            v40 = v20;
            if (lpta_loadp_setscan_r(v38, v39, 1))
            {
              goto LABEL_32;
            }

            goto LABEL_29;
          }

LABEL_32:
          v65 = v20;
LABEL_33:
          v66 = *(v4 + 104);
          if (v66)
          {
            v67 = OUTLINED_FUNCTION_31_3(v66);
            v40 = v68;
          }

          else
          {
            v67 = vback(v4, v65);
            v40 = 0;
          }

          switch(v67)
          {
            case 1:
              v20 = v40;
              goto LABEL_14;
            case 3:
              v20 = v40;
              continue;
            case 4:
              bspop_boa(v4);
              v72 = advance_tok(v4, v69, v70, v71);
              v65 = v40;
              if (v72)
              {
                goto LABEL_33;
              }

              v73 = OUTLINED_FUNCTION_25_7();
              goto LABEL_43;
            case 5:
            case 12:
            case 18:
              goto LABEL_29;
            case 8:
              v20 = v40;
              goto LABEL_22;
            case 10:
              v20 = v40;
              goto LABEL_19;
            case 11:
              bspop_boa(v4);
              v78 = advance_tok(v4, v75, v76, v77);
              v65 = v40;
              if (v78)
              {
                goto LABEL_33;
              }

              v73 = OUTLINED_FUNCTION_27_5();
              goto LABEL_43;
            case 16:
              v20 = v40;
              goto LABEL_25;
            case 17:
              bspop_boa(v4);
              v82 = advance_tok(v4, v79, v80, v81);
              v65 = v40;
              if (v82)
              {
                goto LABEL_33;
              }

              v73 = OUTLINED_FUNCTION_24_7();
LABEL_43:
              bspush_ca_scan(v73, v74);
              *(v4 + 136) = 1;
              v83 = OUTLINED_FUNCTION_16_10();
              v86 = test_ptr(v83, v84, v85);
              v65 = v40;
              if (!v86)
              {
                goto LABEL_3;
              }

              goto LABEL_33;
            default:
              goto LABEL_3;
          }
        }
      }

      v20 = 0;
    }

LABEL_14:
    v41 = OUTLINED_FUNCTION_38_1();
    if (lpta_loadp_setscan_r(v41, v42, 1) || (OUTLINED_FUNCTION_35_1(), test_string_s()))
    {
LABEL_22:
      v50 = OUTLINED_FUNCTION_38_1();
      if (lpta_loadp_setscan_r(v50, v51, 1))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_35_1();
      if (test_string_s())
      {
        goto LABEL_3;
      }

      v52 = OUTLINED_FUNCTION_19_7();
      starttest(v52, v53);
      v54 = OUTLINED_FUNCTION_30_3();
      if (lpta_loadp_setscan_l(v54, v55, 1))
      {
        goto LABEL_3;
      }

LABEL_25:
      v56 = OUTLINED_FUNCTION_37_1();
      savescptr(v56, v57, v58);
      OUTLINED_FUNCTION_35_1();
      if (!test_string_s())
      {
        v59 = OUTLINED_FUNCTION_29_4();
        if (!lpta_loadp_setscan_r(v59, v60, 1))
        {
          v40 = v20;
LABEL_29:
          OUTLINED_FUNCTION_82_0();
          bspush_ca_scan_boa();
          v61 = OUTLINED_FUNCTION_35_1();
          if (testFldeq(v61, v62, v63, v64))
          {
            v20 = v40;
          }

          else
          {
            v20 = 1;
          }

          goto LABEL_32;
        }
      }
    }

    else
    {
      v43 = OUTLINED_FUNCTION_19_7();
      starttest(v43, v44);
      v45 = OUTLINED_FUNCTION_30_3();
      if (lpta_loadp_setscan_l(v45, v46, 1))
      {
        goto LABEL_3;
      }

LABEL_19:
      v47 = OUTLINED_FUNCTION_37_1();
      savescptr(v47, v48, v49);
      OUTLINED_FUNCTION_35_1();
      if (!test_string_s())
      {
        goto LABEL_11;
      }
    }

    goto LABEL_32;
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_98();
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_2_13(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_8_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_16_10()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_17_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_18_8(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_20_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  get_parm(v34, &a34, v35, -6);
}

void OUTLINED_FUNCTION_32_2(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, __int16 a41, __int16 a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, a2, &a46, &a42, &a39, v47 - 248);
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);

  return lpta_rpta_loadp(v47, va, &a46);
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, __int16 a44, __int16 a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

void OUTLINED_FUNCTION_62_0(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_78_0(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, a2);
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + 3044), a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, int a51, __int16 a52, __int16 a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, char a59)
{

  return ventproc(v59, a2, &a57, &a53, &a50, &a59);
}

double OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  *&result = savescptr(v33, 5, va).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_96(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

uint64_t OUTLINED_FUNCTION_97(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + 3032), a3, a4, a5, a6, a7, a8);
}

uint64_t DeltaProc_main(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_15(a1);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t DeltaProc_start(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, SHIDWORD(v70), v72, SWORD2(v72), SHIWORD(v72), v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v77))
  {
    v19 = 94;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_17_10();
    init_platform(v21);
    set_global_constants(a1);
    init_vars(a1);
    init_user_dicts(a1, a1 + 4032, a1 + 4036, a1 + 4040);
    initStreamArrays(a1);
    resetStreamArrayC(a1);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t DeltaProc_process_remaining(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v91) = 0;
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v44);
  OUTLINED_FUNCTION_1_14(v10, v11, v12, v13, v14, v15, v16, v17, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_0_15(v18, v19, v20, v21, v22, v23, v24, v25, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, SHIDWORD(v92), v94, SWORD2(v94), SHIWORD(v94), v96, SWORD2(v96), SBYTE6(v96), SHIBYTE(v96), v98, v99))
  {
    fence_15(a1);
    v28 = OUTLINED_FUNCTION_11_13();
    starttest(v28, v29);
    v26 = 0;
    v30 = OUTLINED_FUNCTION_9_13();
    move_i(v30, v31, 0);
    v32 = OUTLINED_FUNCTION_9_13();
    if (!process_input(v32, v33, v34, v35, v36, v37, v38, v39))
    {
      goto LABEL_4;
    }

    v40 = *(a1 + 104);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_12_13(v40);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_10_13();
      v41 = vback(v42, v43);
    }

    if (v41 == 1)
    {
      v26 = 0;
      goto LABEL_4;
    }
  }

  v26 = 94;
LABEL_4:
  vretproc(a1);
  return v26;
}

uint64_t process_input(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v47);
  OUTLINED_FUNCTION_6_13();
  bzero(v76, v9);
  v10 = setjmp(v76);
  if (v10 || OUTLINED_FUNCTION_0_15(v10, v11, v12, v13, v14, v15, v16, v17, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, 0, v72, v73, SWORD2(v73), SHIWORD(v73), v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v75, v76[0]))
  {
LABEL_3:
    v18 = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_16_11();
    get_parm(v20, v21, v22, -4);
    fence_15(a1);
    *(a1 + 2386) = 0;
    v23 = OUTLINED_FUNCTION_15_11();
    v25 = lpta_loadp_setscan_r(v23, v24, 1);
    if (!v25)
    {
      *(a1 + 136) = 1;
      if (!OUTLINED_FUNCTION_13_13(v25, v26, v27))
      {
        reset_sent_vars(a1);
        v30 = 0;
        while (2)
        {
          v31 = v30;
          v32 = OUTLINED_FUNCTION_8_13();
          starttest(v32, v33);
          OUTLINED_FUNCTION_9_13();
          bspush_ca_boa();
          if (get_tok(a1))
          {
            v39 = v31;
          }

          else
          {
            v39 = 1;
          }

          v40 = *(a1 + 104);
          if (v40)
          {
            *(a1 + 104) = 0;
            v41 = v40;
            v30 = v39;
          }

          else
          {
            v41 = vback(a1, v39);
            v30 = 0;
          }

          switch(v41)
          {
            case 1:
              break;
            case 2:
              continue;
            case 3:
              if (v71 == 3 && *(a1 + 2346) == 1)
              {
                goto LABEL_32;
              }

              goto LABEL_7;
            case 4:
              bspop_boa(a1);
              goto LABEL_32;
            case 5:
              goto LABEL_32;
            case 6:
            case 14:
              goto LABEL_20;
            case 7:
              goto LABEL_21;
            case 8:
              goto LABEL_24;
            case 9:
              goto LABEL_25;
            case 10:
              goto LABEL_26;
            case 11:
              goto LABEL_27;
            case 12:
              goto LABEL_28;
            case 13:
              goto LABEL_30;
            default:
              goto LABEL_3;
          }

          break;
        }
      }
    }

LABEL_7:
    *(a1 + 2346) = 0;
    v28 = OUTLINED_FUNCTION_11_13();
    startloop(v28, v29);
LABEL_20:
    while (1)
    {
      get_input(a1);
LABEL_21:
      if (v71 == 3)
      {
        lpta_loadpn(a1, a1 + 2480);
        rpta_loadpn(a1, a1 + 3344);
        if (!compare_ptas(a1) && !testeq(a1))
        {
          break;
        }
      }

LABEL_24:
      normalize_text(a1, a1 + 2448, a1 + 2328);
LABEL_25:
      if (!no_words_in_delta(a1, v39, v41, v34, v35, v36, v37, v38))
      {
        break;
      }

LABEL_26:
      if (*(a1 + 2390))
      {
LABEL_27:
        apply_rules(a1, v39, v41, v34, v35, v36, v37, v38);
LABEL_28:
        v42 = OUTLINED_FUNCTION_15_11();
        v44 = lpta_loadp_setscan_r(v42, v43, 1);
        if (!v44)
        {
          *(a1 + 136) = 1;
          if (!OUTLINED_FUNCTION_13_13(v44, v45, v46))
          {
            break;
          }
        }

LABEL_30:
        reset_sent_vars(a1);
      }

      else
      {
        *(a1 + 2488) = *(a1 + 3352);
      }
    }

LABEL_32:
    v18 = 0;
  }

  vretproc(a1);
  return v18;
}

uint64_t DeltaProc_process_sentences(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v91) = 0;
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v44);
  OUTLINED_FUNCTION_1_14(v10, v11, v12, v13, v14, v15, v16, v17, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_15(v18, v19, v20, v21, v22, v23, v24, v25, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, SHIDWORD(v92), v94, SWORD2(v94), SHIWORD(v94), v96, SWORD2(v96), SBYTE6(v96), SHIBYTE(v96), v98, v99) || (fence_15(a1), v28 = OUTLINED_FUNCTION_11_13(), starttest(v28, v29), v30 = OUTLINED_FUNCTION_8_13(), move_i(v30, v31, 3), v32 = OUTLINED_FUNCTION_8_13(), process_input(v32, v33, v34, v35, v36, v37, v38, v39)) && ((v40 = *(a1 + 104)) == 0 ? (v42 = OUTLINED_FUNCTION_10_13(), v41 = vback(v42, v43)) : (v41 = OUTLINED_FUNCTION_12_13(v40)), v41 != 1))
  {
    v26 = 94;
  }

  else
  {
    v26 = 0;
  }

  vretproc(a1);
  return v26;
}

uint64_t no_words_in_delta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x277D85DE8];
  v33[0] = 0;
  v33[1] = 0;
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v32[0]);
  OUTLINED_FUNCTION_6_13();
  bzero(v37, v9);
  if (setjmp(v37) || ventproc(a1, v32, v36, v35, v34, v37) || (push_ptr_init(a1, v33), fence_15(a1), *(a1 + 2446) != 1))
  {
LABEL_15:
    v30 = 94;
  }

  else
  {
    while (2)
    {
      v10 = OUTLINED_FUNCTION_8_13();
      starttest(v10, v11);
      lpta_loadpn(a1, a1 + 1400);
      lpta_mover();
      v12 = OUTLINED_FUNCTION_9_13();
      lpta_storep(v12, v13, v14);
      v15 = OUTLINED_FUNCTION_9_13();
      if (text_index(v15, v16))
      {
        v17 = *(a1 + 104);
        if (v17)
        {
          v18 = OUTLINED_FUNCTION_12_13(v17);
        }

        else
        {
          v19 = OUTLINED_FUNCTION_10_13();
          v18 = vback(v19, v20);
        }

        switch(v18)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_9;
          case 3:
            goto LABEL_13;
          case 4:
            goto LABEL_12;
          case 5:
            goto LABEL_14;
          default:
            goto LABEL_15;
        }
      }

      break;
    }

LABEL_9:
    if (!lpta_loadp_setscan_l(a1, a1 + 1384, 4) && !advance_tok(a1, v21, v22, v23))
    {
      handle_pause(a1, (a1 + 1400), v24, v25, v26, v27, v28, v29);
LABEL_12:
      resetStreamArrayC(a1);
    }

LABEL_13:
    clear_delta(a1);
LABEL_14:
    v30 = 0;
    *(a1 + 2410) = 0;
    *(a1 + 2402) = 0;
  }

  vretproc(a1);
  return v30;
}

uint64_t apply_rules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_4_13(a1, a2, a3, a4, a5, a6, a7, a8, v38);
  OUTLINED_FUNCTION_1_14(v10, v11, v12, v13, v14, v15, v16, v17, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_15(v18, v19, v20, v21, v22, v23, v24, v25, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, SHIDWORD(v86), v88, SWORD2(v88), SHIWORD(v88), v90, SWORD2(v90), SBYTE6(v90), SHIBYTE(v90), v92, v93))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_17_10();
  init_symbolic_vars(v27);
  while (2)
  {
    startloop(a1, 2);
    lpta_loadpn(a1, a1 + 1400);
    lpta_mover();
    lpta_storep(a1, a1 + 640, v28);
LABEL_6:
    v29 = OUTLINED_FUNCTION_9_13();
    bspush_ca(v29);
    if (lpta_loadp_setscan_r(a1, a1 + 640, 2) || advance_tok(a1, v30, v31, v32))
    {
LABEL_13:
      v34 = *(a1 + 104);
      if (v34)
      {
        v35 = OUTLINED_FUNCTION_12_13(v34);
      }

      else
      {
        v36 = OUTLINED_FUNCTION_10_13();
        v35 = vback(v36, v37);
      }

      switch(v35)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_17;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_12;
        case 5:
          goto LABEL_8;
        case 6:
          goto LABEL_10;
        case 7:
          goto LABEL_6;
        case 8:
          goto LABEL_18;
        case 9:
          goto LABEL_20;
        case 10:
          goto LABEL_22;
        case 11:
          goto LABEL_23;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_8:
  savescptr(a1, 5, a1 + 656);
LABEL_9:
  run_text_module(a1);
LABEL_10:
  starttest(a1, 4);
  OUTLINED_FUNCTION_14_11();
  if (!v33)
  {
    starttest_e(a1, 4);
    run_speech_module(a1);
  }

LABEL_12:
  if (forall_adv_upto_r(a1, 2, 3, 7, 2, a1 + 640))
  {
    goto LABEL_13;
  }

LABEL_17:
  printouts(a1);
LABEL_18:
  if (*(a1 + 3430) == 1)
  {
    pause();
  }

LABEL_20:
  if (*(a1 + 3426) == 1)
  {
    pause();
  }

LABEL_22:
  init_delta(a1);
LABEL_23:
  vretproc(a1);
  return 0;
}

uint64_t text_index(uint64_t a1, __int16 *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v18 = 65532;
  v19 = 65532;
  OUTLINED_FUNCTION_7_13();
  bzero(v17, v4);
  OUTLINED_FUNCTION_6_13();
  bzero(v25, v5);
  if (setjmp(v25) || ventproc(a1, v17, v24, v23, v22, v25))
  {
    v6 = 94;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_13();
    get_parm(v8, v9, a2, -6);
    fence_15(a1);
    v10 = OUTLINED_FUNCTION_9_13();
    get_indices(v10, v11, &v19, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_8_13();
    synthesizingWord(v15, v16);
    v6 = 0;
  }

  vretproc(a1);
  return v6;
}

uint64_t clear_delta(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v26);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, SHIDWORD(v74), v76, SWORD2(v76), SHIWORD(v76), v78, SWORD2(v78), SBYTE6(v78), SHIBYTE(v78), v80, v81))
  {
LABEL_9:
    v24 = 94;
  }

  else
  {
    fence_15(a1);
    starttest(a1, 1);
    delete_2_more(a1);
    while (1)
    {
      OUTLINED_FUNCTION_3_14();
      if (!delete_2pt(a1, 1, 0, v19))
      {
        break;
      }

      v20 = a1[13];
      if (v20)
      {
        v21 = OUTLINED_FUNCTION_12_13(v20);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_10_13();
        v21 = vback(v22, v23);
      }

      if (v21 != 1)
      {
        goto LABEL_9;
      }
    }

    v24 = 0;
  }

  vretproc(a1);
  return v24;
}

uint64_t run_text_module(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v32);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, SHIDWORD(v80), v82, SWORD2(v82), SHIWORD(v82), v84, SWORD2(v84), SBYTE6(v84), SHIBYTE(v84), v86, v87))
  {
    v19 = 94;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_17_10();
    init_tm_vars(v21);
    word_level_rules(a1, a1 + 3912, a1 + 3928, v22, v23, v24, v25, v26);
    phrase_level_rules(a1, a1 + 3944, a1 + 3960, v27, v28, v29, v30, v31);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t run_speech_module(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  memset(v51, 0, sizeof(v51));
  OUTLINED_FUNCTION_7_13();
  bzero(v50, v2);
  OUTLINED_FUNCTION_6_13();
  bzero(v55, v3);
  if (setjmp(v55) || ventproc(a1, v50, v54, v53, v52, v55))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_8_13();
    push_ptr_init(v5, v6);
    v7 = OUTLINED_FUNCTION_9_13();
    push_ptr_init(v7, v8);
    fence_15(a1);
    v9 = OUTLINED_FUNCTION_11_13();
    starttest(v9, v10);
    OUTLINED_FUNCTION_11_13();
    bspush_ca_boa();
    v11 = init_word_vars(a1) == 0;
    while (2)
    {
      v12 = *(a1 + 104);
      if (v12)
      {
        v13 = OUTLINED_FUNCTION_12_13(v12);
        v21 = v20;
      }

      else
      {
        v13 = vback(a1, v11);
        v21 = 0;
      }

      switch(v13)
      {
        case 1:
          startloop(a1, 3);
          lpta_loadpn(a1, a1 + 672);
          lpta_mover();
          lpta_storep(a1, a1 + 768, v22);
          lpta_loadpn(a1, a1 + 688);
          lpta_mover();
          v23 = OUTLINED_FUNCTION_8_13();
          lpta_storep(v23, v24, v25);
          v26 = OUTLINED_FUNCTION_16_11();
          v29 = forall_to_test(v26, v27, v28);
          v11 = v21;
          if (v29)
          {
            continue;
          }

          goto LABEL_11;
        case 2:
          bspop_boa(a1);
          goto LABEL_3;
        case 3:
          goto LABEL_20;
        case 4:
          goto LABEL_14;
        case 5:
          goto LABEL_19;
        case 6:
          goto LABEL_13;
        case 7:
          goto LABEL_15;
        case 8:
          goto LABEL_16;
        case 9:
          goto LABEL_17;
        case 10:
LABEL_11:
          bspush_ca(a1);
          v30 = lpta_loadp_setscan_r(a1, a1 + 768, 7);
          v11 = v21;
          if (v30)
          {
            continue;
          }

          v33 = advance_tok(a1, v21, v31, v32);
          v11 = v21;
          if (v33)
          {
            continue;
          }

LABEL_13:
          savescptr(a1, 6, a1 + 784);
LABEL_14:
          init_syll_vars(a1);
LABEL_15:
          generate_durations(a1);
LABEL_16:
          generate_intonation(a1);
LABEL_17:
          starttest(a1, 5);
          if (*(a1 + 3438) == *(a1 + 3434))
          {
            starttest_e(a1, 5);
            generate_acoustic_vals(a1, v34, v35, v36, v37, v38, v39, v40);
          }

LABEL_19:
          v41 = forto_adv_upto_r(a1, 3, 4, 10, 7, a1 + 768);
          v11 = v21;
          if (v41)
          {
            continue;
          }

LABEL_20:
          if (*(a1 + 3438) != *(a1 + 3434))
          {
            goto LABEL_26;
          }

          if (!lpta_loadp_setscan_r(a1, a1 + 656, 4) && !advanc(a1))
          {
LABEL_23:
            savescptr(a1, 13, v51);
          }

LABEL_24:
          starttest(a1, 14);
          v42 = OUTLINED_FUNCTION_9_13();
          lpta_loadpn(v42, v43);
          OUTLINED_FUNCTION_10_13();
          lpta_ctxtl();
          v44 = OUTLINED_FUNCTION_8_13();
          lpta_storep(v44, v45, v46);
          v47 = OUTLINED_FUNCTION_8_13();
          v49 = text_index(v47, v48);
          v11 = v21;
          if (v49)
          {
            continue;
          }

LABEL_25:
          handle_pause(a1, v51, v14, v15, v16, v17, v18, v19);
LABEL_26:
          vretproc(a1);
          result = 0;
          break;
        case 11:
        case 15:
          goto LABEL_26;
        case 12:
          goto LABEL_24;
        case 13:
          goto LABEL_23;
        case 14:
          goto LABEL_25;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

uint64_t printouts(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v20);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, SHIDWORD(v68), v70, SWORD2(v70), SHIWORD(v70), v72, SWORD2(v72), SBYTE6(v72), SHIBYTE(v72), v74, v75))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_15(a1);
    if (*(a1 + 3450) == 1)
    {
      print_spr(a1);
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t init_delta(uint64_t a1)
{
  v90 = *MEMORY[0x277D85DE8];
  v85[0] = 0;
  v85[1] = 0;
  v84[0] = 0;
  v84[1] = 0;
  OUTLINED_FUNCTION_7_13();
  bzero(v83, v2);
  OUTLINED_FUNCTION_6_13();
  bzero(v89, v3);
  if (!setjmp(v89) && !ventproc(a1, v83, v88, v87, v86, v89))
  {
    v5 = OUTLINED_FUNCTION_8_13();
    push_ptr_init(v5, v6);
    v7 = OUTLINED_FUNCTION_9_13();
    push_ptr_init(v7, v8);
    v9 = OUTLINED_FUNCTION_17_10();
    resetStreamArrayC(v9);
    while (2)
    {
      v10 = OUTLINED_FUNCTION_15_11();
      if (!lpta_loadp_setscan_r(v10, v11, 2))
      {
        *(a1 + 136) = 1;
        *(a1 + 112) = *(a1 + 368);
        *(a1 + 128) = 0;
        if (!test_ptr(a1, v12, v13))
        {
          v14 = lpta_loadp_setscan_r(a1, a1 + 1256, 1);
          if (!v14)
          {
            *(a1 + 136) = 1;
            if (!OUTLINED_FUNCTION_13_13(v14, v15, v16))
            {
              initdelta(a1, 9u, byte_2806BB0CB);
              init_vars(a1);
LABEL_45:
              vretproc(a1);
              return 0;
            }
          }
        }
      }

LABEL_10:
      OUTLINED_FUNCTION_14_11();
      if (v17)
      {
        if (!lpta_loadp_setscan_l(a1, a1 + 1256, 0) && !OUTLINED_FUNCTION_19_8())
        {
          advance_tok(a1, v18, v19, v20);
        }

LABEL_15:
        *(a1 + 1906) = 0;
        copyvar(a1, (a1 + 2408), (a1 + 1904));
      }

LABEL_16:
      starttest(a1, 6);
      OUTLINED_FUNCTION_14_11();
      if (v17)
      {
LABEL_18:
        OUTLINED_FUNCTION_3_14();
        v21 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v21, 2, v22, v23))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v24 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v24, 3, v25, v26))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v27 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v27, 5, v28, v29))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v30 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v30, 6, v31, v32))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v33 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v33, 7, v34, v35))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v36 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v36, 8, v37, v38))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_18_9();
        v39 = OUTLINED_FUNCTION_10_13();
        if (delete_2pt(v39, v40, 0, v41))
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_3_14();
        v42 = OUTLINED_FUNCTION_5_13();
        if (delete_2pt(v42, 4, v43, v44))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v45 = OUTLINED_FUNCTION_11_13();
        starttest_l(v45, v46);
        delete_2_more(a1);
      }

LABEL_26:
      OUTLINED_FUNCTION_18_9();
      v47 = OUTLINED_FUNCTION_5_13();
      if (!delete_2pt(v47, 1, v48, v49))
      {
        *(a1 + 2304) = *(a1 + 3352);
        *(a1 + 2402) = 0;
        startloop(a1, 9);
        lpta_loadpn(a1, a1 + 1256);
        lpta_mover();
        v50 = OUTLINED_FUNCTION_8_13();
        lpta_storep(v50, v51, v52);
LABEL_28:
        bspush_ca(a1);
        v53 = OUTLINED_FUNCTION_5_13();
        if (!lpta_loadp_setscan_r(v53, v85, v54) && !advance_tok(a1, v55, v56, v57))
        {
LABEL_30:
          savescptr(a1, 12, v84);
          if (!OUTLINED_FUNCTION_19_8())
          {
LABEL_31:
            starttest(a1, 13);
            v58 = OUTLINED_FUNCTION_5_13();
            if (!lpta_loadp_setscan_r(v58, v85, v59) && !advance_tok(a1, v60, v61, v62))
            {
              OUTLINED_FUNCTION_19_8();
            }

LABEL_34:
            c_assvar(a1, (a1 + 2400));
            *(a1 + 2402) = *(a1 + 1920) - *(a1 + 2410);
            v63 = OUTLINED_FUNCTION_8_13();
            lpta_rpta_loadp(v63, v64, v84);
            insert_2ptv();
            if (!v65)
            {
LABEL_35:
              v66 = OUTLINED_FUNCTION_11_13();
              if (!forall_adv_upto_r(v66, v67, 10, 14, v68, v85))
              {
LABEL_36:
                *(a1 + 2410) = 0;
                starttest(a1, 15);
                v69 = OUTLINED_FUNCTION_15_11();
                if (lpta_loadp_setscan_r(v69, v70, 1))
                {
                  goto LABEL_45;
                }

LABEL_39:
                while (!test_string_s())
                {
                  bspush_ca_scan(a1, 16);
                }
              }
            }
          }
        }
      }

LABEL_40:
      v71 = *(a1 + 104);
      if (v71)
      {
        v72 = OUTLINED_FUNCTION_12_13(v71);
      }

      else
      {
        v73 = OUTLINED_FUNCTION_10_13();
        v72 = vback(v73, v74);
      }

      switch(v72)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_10;
        case 3:
        case 15:
          goto LABEL_45;
        case 4:
          goto LABEL_16;
        case 5:
          goto LABEL_15;
        case 6:
          goto LABEL_18;
        case 7:
        case 8:
          goto LABEL_26;
        case 9:
          goto LABEL_36;
        case 10:
          goto LABEL_31;
        case 11:
          goto LABEL_35;
        case 12:
          goto LABEL_30;
        case 13:
          goto LABEL_34;
        case 14:
          goto LABEL_28;
        case 16:
          v75 = OUTLINED_FUNCTION_16_11();
          savescptr(v75, v76, v77);
          v78 = OUTLINED_FUNCTION_15_11();
          lpta_rpta_loadp(v78, v79, v85);
          v80 = OUTLINED_FUNCTION_5_13();
          if (!delete_2pt(v80, 1, v81, v82))
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        case 17:
          goto LABEL_39;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  return 94;
}

uint64_t get_indices(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v28[0] = 0;
  v28[1] = 0;
  v26 = 0;
  v27 = 0;
  v25 = 65532;
  OUTLINED_FUNCTION_7_13();
  bzero(v24, v12);
  OUTLINED_FUNCTION_6_13();
  bzero(v32, v13);
  if (setjmp(v32) || ventproc(a1, v24, v31, v30, v29, v32))
  {
    v14 = 94;
  }

  else
  {
    get_parm(a1, v28, a2, -6);
    get_parm(a1, &v27 + 4, a3, -4);
    get_parm(a1, &v27, a4, -4);
    get_parm(a1, &v26 + 4, a5, -4);
    v16 = OUTLINED_FUNCTION_16_11();
    get_parm(v16, v17, v18, -4);
    fence_15(a1);
    v19 = OUTLINED_FUNCTION_5_13();
    if (!lpta_loadp_setscan_l(v19, v28, v20) && !OUTLINED_FUNCTION_19_8() && !advance_tok(a1, v21, v22, v23))
    {
      *(a1 + 1906) = 0;
      copyvar(a1, &v25, (a1 + 1904));
      HIWORD(v27) = HIWORD(v25) - WORD1(v27);
      WORD1(v27) = HIWORD(v25);
    }

    a3[1] = HIWORD(v27);
    a4[1] = WORD1(v27);
    a5[1] = HIWORD(v26);
    *(a6 + 2) = WORD1(v26);
    v14 = 0;
  }

  vretproc(a1);
  return v14;
}

uint64_t delete_2_more(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v45);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, SHIDWORD(v93), v95, SWORD2(v95), SHIWORD(v95), v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v100))
  {
    goto LABEL_14;
  }

  fence_15(a1);
  OUTLINED_FUNCTION_3_14();
  v19 = OUTLINED_FUNCTION_5_13();
  if (delete_2pt(v19, 2, v20, v21) || (OUTLINED_FUNCTION_3_14(), v22 = OUTLINED_FUNCTION_5_13(), delete_2pt(v22, 3, v23, v24)) || (OUTLINED_FUNCTION_3_14(), v25 = OUTLINED_FUNCTION_5_13(), delete_2pt(v25, 4, v26, v27)) || (OUTLINED_FUNCTION_3_14(), v28 = OUTLINED_FUNCTION_5_13(), delete_2pt(v28, 5, v29, v30)) || (OUTLINED_FUNCTION_3_14(), v31 = OUTLINED_FUNCTION_5_13(), delete_2pt(v31, 6, v32, v33)) || (OUTLINED_FUNCTION_3_14(), v34 = OUTLINED_FUNCTION_5_13(), delete_2pt(v34, 7, v35, v36)) || (OUTLINED_FUNCTION_18_9(), v37 = OUTLINED_FUNCTION_10_13(), delete_2pt(v37, v38, 0, v39)) || (OUTLINED_FUNCTION_3_14(), v40 = 0, delete_2pt(a1, 8, 0, v41)))
  {
    if (a1[13])
    {
      a1[13] = 0;
    }

    else
    {
      v42 = OUTLINED_FUNCTION_10_13();
      vback(v42, v43);
    }

LABEL_14:
    v40 = 94;
  }

  vretproc(a1);
  return v40;
}

uint64_t DeltaProc_end(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, SHIDWORD(v70), v72, SWORD2(v72), SHIWORD(v72), v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v77))
  {
    v19 = 94;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_17_10();
    close_platform(v21);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t DeltaProc_getInputCharCount(uint64_t a1)
{
  OUTLINED_FUNCTION_2_14(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_1_14(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_15(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_15(a1);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_2_14(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return lpta_rpta_loadp(v0, v0 + 344, v0 + 1384);
}

void OUTLINED_FUNCTION_4_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_13_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = v3[174];
  v3[16] = 0;

  return test_ptr(v3, a2, a3);
}