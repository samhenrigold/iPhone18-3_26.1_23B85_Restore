uint64_t post_inflection_strip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_29_29(a1, a2, a3, a4, a5, a6, a7, a8, v44);
  OUTLINED_FUNCTION_30_29();
  bzero(v72, v9);
  v10 = setjmp(v72);
  if (v10 || OUTLINED_FUNCTION_52_16(v10, v11, v12, v13, v14, v15, v16, v17, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, SHIDWORD(v68), v69, SWORD2(v69), SHIWORD(v69), v70, SWORD2(v70), SBYTE6(v70), SHIBYTE(v70), v71, v72[0]))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_44(a1, 0, &null_str_12);
    OUTLINED_FUNCTION_68_12();
    if (!v19 && *(a1 + 4030) != 2)
    {
      if (split_final_compound(a1))
      {
        strip_ize(a1, v20, v21, v22, v23);
        if (v28)
        {
          strip_noun_verb_suffix(a1, v24, v25, v26, v27);
          if (v36)
          {
            if (strip_inner_noun_suffix(a1, v29, v30, v31, v32, v33, v34, v35))
            {
              strip_nounadj_suffix(a1, v37, v38, v39, v40, v41, v42, v43);
            }
          }
        }
      }
    }

    vretproc(a1);
    return 0;
  }
}

void strip_ess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  v6 = v5;
  v50 = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  v45[1] = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v44, v7);
  OUTLINED_FUNCTION_30_29();
  bzero(v49, v8);
  if (setjmp(v49))
  {
    goto LABEL_5;
  }

  if (ventproc(v6, v44, v48, v47, v46, v49))
  {
    goto LABEL_5;
  }

  push_ptr_init(v6, v45);
  fence_44(v6, 0, &null_str_12);
  v9 = OUTLINED_FUNCTION_22_33();
  fence_44(v9, v10, v11);
  v12 = OUTLINED_FUNCTION_4_42();
  if (lpta_loadp_setscan_l(v12, v13, v14))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_13_40();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  v15 = 0;
  while (2)
  {
    v16 = v15;
    v17 = OUTLINED_FUNCTION_44_19();
    savescptr(v17, v18, v45);
    v19 = OUTLINED_FUNCTION_69_12();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_40_20();
    if (lpta_loadp_setscan_l(v21, v22, v49) || (OUTLINED_FUNCTION_12_40(), v23 = test_string_s(), v24 = v16, v23))
    {
LABEL_19:
      *(v6 + 5958) = v49;
      v36 = v16;
      goto LABEL_12;
    }

LABEL_9:
    v25 = v24;
    v26 = OUTLINED_FUNCTION_50_16();
    savescptr(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_28_29();
    v31 = testFldeq(v29, v30, 4, 2);
    if (!v31)
    {
      v31 = advance_tok(v6, v32, v33, v34);
      v36 = v25;
      v35 = v25;
      if (v31)
      {
        goto LABEL_15;
      }

LABEL_12:
      v37 = v36;
      v38 = OUTLINED_FUNCTION_90_9();
      starttest(v38, v39);
      OUTLINED_FUNCTION_64_14();
      bspush_ca_boa();
      v40 = OUTLINED_FUNCTION_40_20();
      v31 = strip_suffix(v40);
      if (v31)
      {
        v35 = v37;
      }

      else
      {
        v35 = 1;
      }

      goto LABEL_15;
    }

    v35 = v25;
LABEL_15:
    if (*(v6 + 104))
    {
      v41 = OUTLINED_FUNCTION_84_11(v31, v35);
    }

    else
    {
      v42 = vback(v6, v35);
      v41 = 0;
    }

    v43 = v42 - 2;
    v15 = v41;
    v24 = v41;
    LODWORD(v16) = v41;
    v36 = v41;
    switch(v43)
    {
      case 0:
        continue;
      case 1:
        goto LABEL_19;
      case 2:
        goto LABEL_9;
      case 3:
      case 4:
        goto LABEL_12;
      case 6:
        bspop_boa(v6);
        break;
      default:
        goto LABEL_5;
    }

    break;
  }

LABEL_5:
  vretproc(v6);
  OUTLINED_FUNCTION_65_14();
}

uint64_t insert_suffix(uint64_t a1)
{
  OUTLINED_FUNCTION_81_11();
  v95 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(v2, v3, v4, v5, v6, v7, v8, v9, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83);
  OUTLINED_FUNCTION_30_29();
  bzero(v94, v10);
  v11 = setjmp(v94);
  if (v11 || OUTLINED_FUNCTION_15_39(v11, v12, v13, v14, v15, v16, v17, v18, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94[0]))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_51_16();
    OUTLINED_FUNCTION_86_10(v20, v21);
    fence_44(v1, 0, &null_str_12);
    v22 = OUTLINED_FUNCTION_39_21();
    suffixes(v22, &v82, v23, v24, v25, v26, v27, v28);
    *(v1 + 1664) = v83;
    *(v1 + 5938) = 1;
    adjust_root(v1, v29, v30, v31, v32, v33, v34, v35);
    if (!*(v1 + 5946))
    {
      OUTLINED_FUNCTION_9_41();
      eng_roots_dict_lookup();
    }

    *(v1 + 5958) = 0;
    *(v1 + 5962) = 0;
    *(v1 + 5966) = 0;
    *(v1 + 5990) = 0;
    vretproc(v1);
    return 0;
  }
}

uint64_t ise_to_ize(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v96 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_41(a1, a2, a3, a4, a5, a6, a7, a8, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v88, v89, v90);
  OUTLINED_FUNCTION_30_29();
  bzero(v95, v9);
  if (setjmp(v95))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_36();
  if (OUTLINED_FUNCTION_107_7(v10, v11, v12, v13, v14, v15, v16, v17, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87, v88, v89, v90, v91, v92, v93, v94))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_33_26();
  OUTLINED_FUNCTION_92_9(v20, v21);
  v22 = OUTLINED_FUNCTION_32_27();
  OUTLINED_FUNCTION_86_10(v22, v23);
  fence_44(a1, 0, &null_str_12);
  v24 = OUTLINED_FUNCTION_9_41();
  has_lex_prefix(v24, v25);
  if (!v26)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_99_7();
LABEL_7:
  v27 = OUTLINED_FUNCTION_35_25();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_9_41();
  lpta_rpta_loadp(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_22_33();
  if (!setd_lookup(v32, v33, 385))
  {
LABEL_3:
    v18 = 94;
  }

  else
  {
    while (1)
    {
      v34 = OUTLINED_FUNCTION_51_16();
      lpta_rpta_loadp(v34, v35, &v87);
      v18 = 0;
      v36 = OUTLINED_FUNCTION_2_44();
      if (!insert_2pt_s(v36, v37, v38, &unk_28058118A, 0))
      {
        break;
      }

      v39 = *(a1 + 104);
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_38_21(v39);
      }

      else
      {
        v40 = OUTLINED_FUNCTION_96_8();
      }

      if (v40 != 2)
      {
        v18 = 94;
        if (v40 == 1)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  vretproc(a1);
  return v18;
}

void potential_suffix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_66_14();
  OUTLINED_FUNCTION_81_11();
  v59 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  OUTLINED_FUNCTION_31_29();
  bzero(v52, v7);
  OUTLINED_FUNCTION_30_29();
  bzero(v58, v8);
  if (!setjmp(v58) && !ventproc(v5, v52, v57, v56, v55, v58))
  {
    v9 = OUTLINED_FUNCTION_36_23();
    get_parm(v9, v10, v11, -6);
    fence_44(v5, 0, &null_str_12);
    v12 = OUTLINED_FUNCTION_13_40();
    fence_44(v12, v13, v14);
    if (*(v5 + 2478) != *(v5 + 5990))
    {
      v15 = 0;
      OUTLINED_FUNCTION_62_15();
      v51 = v16;
      while (2)
      {
        starttest(v5, v16);
        OUTLINED_FUNCTION_40_20();
        bspush_ca_boa();
        *(v5 + 136) = v6;
        *(v5 + 112) = v54;
        *(v5 + 128) = 0;
        v17 = OUTLINED_FUNCTION_28_29();
        setscan_nof_l(v17, v18, v19);
        if (!v23)
        {
          v24 = advance_tok(v5, v20, v21, v22);
          v26 = v15;
          if (!v24)
          {
LABEL_9:
            LODWORD(v15) = v26;
            if (advance_tok(v5, v25, v21, v22))
            {
              v15 = v15;
            }

            else
            {
              v15 = 1;
            }
          }
        }

        v25 = v15;
LABEL_13:
        v27 = *(v5 + 104);
        if (v27)
        {
          *(v5 + 104) = 0;
          v28 = v27;
          v15 = v25;
        }

        else
        {
          v28 = vback(v5, v25);
          v15 = 0;
        }

        v26 = v15;
        switch(v28)
        {
          case 1:
            v16 = v51;
            continue;
          case 2:
            goto LABEL_29;
          case 3:
            v29 = OUTLINED_FUNCTION_70_12();
            starttest(v29, v30);
            OUTLINED_FUNCTION_63_15();
            bspush_ca_boa();
            v31 = lpta_loadp_setscan_l(v5, &v53, v6);
            goto LABEL_19;
          case 4:
          case 6:
            bspop_boa(v5);
            goto LABEL_29;
          case 5:
            v41 = OUTLINED_FUNCTION_9_41();
            lpta_rpta_loadp(v41, v42, v43);
            v44 = OUTLINED_FUNCTION_22_33();
            if (setd_lookup(v44, v45, 383))
            {
              goto LABEL_27;
            }

            goto LABEL_29;
          case 7:
            goto LABEL_20;
          case 8:
            v31 = advance_tok(v5, v25, v21, v22);
LABEL_19:
            v25 = v15;
            if (v31)
            {
              goto LABEL_13;
            }

LABEL_20:
            v32 = OUTLINED_FUNCTION_64_14();
            bspush_ca_scan(v32, v33);
            v34 = OUTLINED_FUNCTION_44_19();
            bspush_ca_scan(v34, v35);
            v36 = OUTLINED_FUNCTION_28_29();
            v38 = 4;
            v39 = v6;
LABEL_22:
            v40 = testFldeq(v36, v37, v38, v39);
            v26 = v15;
            v25 = v15;
            if (!v40)
            {
              goto LABEL_9;
            }

            goto LABEL_13;
          case 9:
            v36 = OUTLINED_FUNCTION_28_29();
            v38 = 0;
            v39 = 30;
            goto LABEL_22;
          case 10:
            goto LABEL_9;
          case 11:
LABEL_27:
            v46 = OUTLINED_FUNCTION_9_41();
            lpta_rpta_loadp(v46, v47, v48);
            v49 = OUTLINED_FUNCTION_22_33();
            if (!setd_lookup(v49, v50, 384))
            {
              *(v5 + 6002) = *(v5 + 5294);
LABEL_29:
              *(v5 + 5958) = 0;
              *(v5 + 5962) = 0;
              *(v5 + 5966) = 0;
              *(v5 + 5978) = 0;
            }

            goto LABEL_3;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_65_14();
}

uint64_t adjust_root(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_29_29(a1, a2, a3, a4, a5, a6, a7, a8, v33);
  OUTLINED_FUNCTION_30_29();
  bzero(v61, v9);
  v10 = setjmp(v61);
  if (v10 || OUTLINED_FUNCTION_52_16(v10, v11, v12, v13, v14, v15, v16, v17, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, SHIDWORD(v57), v58, SWORD2(v58), SHIWORD(v58), v59, SWORD2(v59), SBYTE6(v59), SHIBYTE(v59), v60, v61[0]) || ((fence_44(a1, 0, &null_str_12), a1[2979] < 1) || insert_e(a1, v19, v20, v21, v22, v23, v24, v25)) && (OUTLINED_FUNCTION_9_41(), eng_roots_dict_lookup()) && (a1[2981] != 1 || two_to_one(a1, v26, v27, v28, v29, v30, v31, v32)) && (a1[2983] != 1 || i_to_y(a1, v26, v27, v28, v29, v30, v31, v32)))
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

uint64_t insert_e(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v358 = *MEMORY[0x277D85DE8];
  v353 = 0;
  v352[0] = 0;
  v352[1] = 0;
  v350 = 0;
  v351 = 0;
  v348 = 0;
  v349 = 0;
  v346 = 0;
  v347 = 0;
  OUTLINED_FUNCTION_7_41(a1, a2, a3, a4, a5, a6, a7, a8, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0], v343[1], v343[2], v343[3], v344, v345);
  OUTLINED_FUNCTION_30_29();
  bzero(v357, v9);
  if (setjmp(v357) || ventproc(a1, &v320, v356, v355, v354, v357))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v353 = 65532;
  push_ptr_init(a1, v352);
  v11 = OUTLINED_FUNCTION_59_15();
  push_ptr_init(v11, v12);
  v13 = OUTLINED_FUNCTION_74_11();
  push_ptr_init(v13, v14);
  v15 = OUTLINED_FUNCTION_53_16();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_42_20();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_33_26();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_32_27();
  push_ptr_init(v21, v22);
  fence_44(a1, 0, &null_str_12);
  v23 = OUTLINED_FUNCTION_13_40();
  fence_44(v23, v24, v25);
  if (*(a1 + 5958) == 2)
  {
    goto LABEL_5;
  }

  LODWORD(v28) = 0;
  while (2)
  {
    v29 = OUTLINED_FUNCTION_9_41();
    lpta_rpta_loadp(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_22_33();
    if (!setd_lookup(v32, v33, 381))
    {
LABEL_5:
      *(a1 + 168) = v357;
      *(a1 + 144) = *(a1 + 1664);
      *(a1 + 128) = 0;
      v26 = OUTLINED_FUNCTION_28_29();
      insert_l(v26, v27);
      *(a1 + 5938) = v357;
    }

    else
    {
LABEL_9:
      OUTLINED_FUNCTION_9_41();
      if (eng_roots_dict_lookup())
      {
LABEL_10:
        v34 = OUTLINED_FUNCTION_9_41();
        lpta_rpta_loadp(v34, v35, v36);
        v37 = OUTLINED_FUNCTION_22_33();
        v39 = v28;
        if (setd_lookup(v37, v38, 380))
        {
LABEL_11:
          v40 = OUTLINED_FUNCTION_44_19();
          starttest(v40, v41);
          OUTLINED_FUNCTION_40_20();
          bspush_ca_boa();
          if (!OUTLINED_FUNCTION_76_11())
          {
            v42 = OUTLINED_FUNCTION_55_16();
            if (!testFldeq(v42, v43, 4, 0) && !advance_tok(a1, v44, v45, v46))
            {
              v39 = 1;
            }
          }

          LODWORD(v47) = v39;
LABEL_16:
          v48 = *(a1 + 104);
          if (v48)
          {
            v49 = OUTLINED_FUNCTION_38_21(v48);
            v28 = v47;
          }

          else
          {
            v49 = vback(a1, v47);
            v28 = 0;
          }

          switch(v49)
          {
            case 1:
              continue;
            case 2:
            case 16:
            case 24:
            case 25:
            case 44:
            case 77:
            case 106:
              goto LABEL_5;
            case 3:
              goto LABEL_9;
            case 4:
              goto LABEL_10;
            case 5:
              v39 = v28;
              goto LABEL_11;
            case 6:
              v52 = OUTLINED_FUNCTION_9_41();
              lpta_rpta_loadp(v52, v53, v54);
              v55 = OUTLINED_FUNCTION_22_33();
              if (!setd_lookup(v55, v56, 368))
              {
                goto LABEL_3;
              }

              goto LABEL_21;
            case 7:
            case 46:
              bspop_boa(a1);
              goto LABEL_3;
            case 8:
LABEL_21:
              v57 = OUTLINED_FUNCTION_16_39();
              starttest(v57, v58);
              v59 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v59, v60, v61))
              {
                goto LABEL_23;
              }

              OUTLINED_FUNCTION_2_44();
              if (test_string_s())
              {
                goto LABEL_23;
              }

              goto LABEL_64;
            case 9:
LABEL_23:
              v62 = OUTLINED_FUNCTION_21_33();
              starttest(v62, v63);
              v64 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v64, v65, v66))
              {
                goto LABEL_25;
              }

              OUTLINED_FUNCTION_2_44();
              if (test_string_s())
              {
                goto LABEL_25;
              }

              goto LABEL_164;
            case 10:
LABEL_64:
              savescptr(a1, 10, &v348);
              v187 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v187, v188);
              goto LABEL_65;
            case 11:
              v250 = OUTLINED_FUNCTION_75_11();
              savescptr(v250, v251, v252);
              goto LABEL_107;
            case 12:
LABEL_65:
              OUTLINED_FUNCTION_95_8(12, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0], v343[1], v343[2], v343[3], v344, v345, v346, v347, v348, v349, v350, v351, v352[0]);
              v189 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v189, v190);
              goto LABEL_107;
            case 13:
LABEL_107:
              OUTLINED_FUNCTION_2_44();
              v253 = test_string_s();
              LODWORD(v47) = v28;
              if (!v253)
              {
                goto LABEL_167;
              }

              goto LABEL_16;
            case 14:
            case 15:
LABEL_167:
              isolate_z_root(a1, &v353, v352, &v350, &v348);
              if (!v313)
              {
                goto LABEL_168;
              }

              goto LABEL_5;
            case 17:
LABEL_25:
              v67 = OUTLINED_FUNCTION_21_33();
              starttest(v67, v68);
              v69 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v69, v70, v71))
              {
                goto LABEL_26;
              }

              goto LABEL_54;
            case 18:
LABEL_164:
              v310 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v310, v311);
              OUTLINED_FUNCTION_2_44();
              v312 = test_string_s();
              LODWORD(v47) = v28;
              if (!v312)
              {
                goto LABEL_176;
              }

              goto LABEL_16;
            case 19:
              goto LABEL_176;
            case 20:
              OUTLINED_FUNCTION_2_44();
              v225 = test_string_s();
              LODWORD(v47) = v28;
              if (v225)
              {
                goto LABEL_16;
              }

              goto LABEL_175;
            case 21:
LABEL_175:
              OUTLINED_FUNCTION_60_15(21, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0], v343[1], v343[2], v343[3], v344, v345, v346);
LABEL_176:
              if (isolate_non_plural_root(a1, &v353, a1 + 1640, a1 + 1656))
              {
                goto LABEL_177;
              }

              goto LABEL_180;
            case 22:
LABEL_177:
              v317 = OUTLINED_FUNCTION_53_16();
              lpta_loadpn(v317, v318);
              OUTLINED_FUNCTION_67_14();
              if (compare_ptas(a1) || testneq(a1) || isolate_es_root(a1, &v353, (a1 + 1640)))
              {
                goto LABEL_5;
              }

LABEL_180:
              if (HIWORD(v353) != 1)
              {
                goto LABEL_6;
              }

              goto LABEL_3;
            case 23:
            case 26:
              goto LABEL_6;
            case 27:
LABEL_26:
              v72 = OUTLINED_FUNCTION_21_33();
              starttest(v72, v73);
              v74 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v74, v75, v76) || test_string_s())
              {
                goto LABEL_28;
              }

              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              *(a1 + 136) = 1;
              goto LABEL_116;
            case 28:
LABEL_54:
              OUTLINED_FUNCTION_43_19(28, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0]);
              v159 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v159, v160);
              OUTLINED_FUNCTION_2_44();
              v161 = test_string_s();
              LODWORD(v47) = v28;
              if (!v161)
              {
                goto LABEL_72;
              }

              goto LABEL_16;
            case 29:
            case 33:
              v235 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v235, v236);
              OUTLINED_FUNCTION_5_42();
              goto LABEL_97;
            case 30:
              goto LABEL_73;
            case 31:
            case 32:
              goto LABEL_115;
            case 34:
            case 35:
LABEL_72:
              v204 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v204, v205);
LABEL_73:
              OUTLINED_FUNCTION_2_44();
LABEL_97:
              v237 = test_string_s();
              LODWORD(v47) = v28;
              if (!v237)
              {
                goto LABEL_115;
              }

              goto LABEL_16;
            case 36:
              OUTLINED_FUNCTION_5_42();
              v246 = test_string_s();
              LODWORD(v47) = v28;
              if (v246)
              {
                goto LABEL_16;
              }

              goto LABEL_102;
            case 37:
LABEL_102:
              OUTLINED_FUNCTION_49_16(37, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0], v343[1], v343[2], v343[3], v344);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v247 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v247, v248);
              goto LABEL_133;
            case 38:
              bspop_boa(a1);
LABEL_115:
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              OUTLINED_FUNCTION_88_10();
LABEL_116:
              v257 = OUTLINED_FUNCTION_26_31();
              v260 = test_ptr(v257, v258, v259);
              goto LABEL_137;
            case 39:
            case 57:
            case 59:
              v284 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v284, v285);
              goto LABEL_133;
            case 40:
            case 58:
              goto LABEL_134;
            case 41:
            case 60:
              goto LABEL_133;
            case 42:
              bspop_boa(a1);
              v267 = OUTLINED_FUNCTION_23_33();
              v270 = lpta_loadp_setscan_r(v267, v268, v269);
              LODWORD(v47) = v28;
              if (v270)
              {
                goto LABEL_16;
              }

              v273 = advance_tok(a1, v28, v271, v272);
              LODWORD(v47) = v28;
              if (v273)
              {
                goto LABEL_16;
              }

              goto LABEL_182;
            case 43:
LABEL_182:
              OUTLINED_FUNCTION_56_16(43, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0], v343[1], v343[2]);
              isolate_e_root(a1, &v353, &v344, a1 + 1656, 0);
              if (v319)
              {
                goto LABEL_5;
              }

LABEL_168:
              if (HIWORD(v353) != 1)
              {
                goto LABEL_5;
              }

              goto LABEL_3;
            case 45:
LABEL_28:
              v77 = OUTLINED_FUNCTION_21_33();
              starttest(v77, v78);
              v79 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v79, v80, v81))
              {
                goto LABEL_29;
              }

              goto LABEL_51;
            case 47:
LABEL_29:
              v82 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v82, v83, v84))
              {
                goto LABEL_31;
              }

              OUTLINED_FUNCTION_6_41();
              if (test_string_s())
              {
                goto LABEL_31;
              }

              goto LABEL_5;
            case 48:
LABEL_51:
              OUTLINED_FUNCTION_43_19(48, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0]);
              OUTLINED_FUNCTION_2_44();
              v154 = test_string_s();
              LODWORD(v47) = v28;
              if (v154)
              {
                goto LABEL_16;
              }

              v155 = OUTLINED_FUNCTION_23_33();
              v158 = lpta_loadp_setscan_r(v155, v156, v157);
              LODWORD(v47) = v28;
              if (v158)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_5_42();
              goto LABEL_149;
            case 49:
LABEL_31:
              v85 = OUTLINED_FUNCTION_21_33();
              starttest(v85, v86);
              v87 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v87, v88, v89))
              {
                goto LABEL_32;
              }

              goto LABEL_50;
            case 50:
LABEL_32:
              v90 = OUTLINED_FUNCTION_21_33();
              starttest(v90, v91);
              v92 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v92, v93, v94))
              {
                goto LABEL_34;
              }

              OUTLINED_FUNCTION_5_42();
              if (test_string_s())
              {
                goto LABEL_34;
              }

              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              OUTLINED_FUNCTION_2_44();
              v290 = test_string_s();
              LODWORD(v47) = v28;
              if (!v290)
              {
                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                v291 = OUTLINED_FUNCTION_21_33();
                bspush_ca_scan(v291, v292);
LABEL_133:
                OUTLINED_FUNCTION_2_44();
                v286 = test_string_s();
                LODWORD(v47) = v28;
                if (!v286)
                {
                  goto LABEL_134;
                }
              }

              goto LABEL_16;
            case 51:
LABEL_50:
              OUTLINED_FUNCTION_43_19(51, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343[0]);
              v152 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v152, v153);
              goto LABEL_117;
            case 52:
LABEL_117:
              OUTLINED_FUNCTION_2_44();
              v261 = test_string_s();
              LODWORD(v47) = v28;
              if (!v261)
              {
                goto LABEL_118;
              }

              goto LABEL_16;
            case 53:
LABEL_118:
              v262 = OUTLINED_FUNCTION_23_33();
              v265 = lpta_loadp_setscan_r(v262, v263, v264);
              LODWORD(v47) = v28;
              if (v265)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_5_42();
              v266 = test_string_s();
              goto LABEL_130;
            case 54:
LABEL_34:
              v95 = OUTLINED_FUNCTION_21_33();
              starttest(v95, v96);
              v97 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v97, v98, v99))
              {
                goto LABEL_35;
              }

              v173 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v173, v174);
              OUTLINED_FUNCTION_5_42();
              goto LABEL_89;
            case 55:
            case 74:
              bspop_boa(a1);
              goto LABEL_6;
            case 56:
              bspop_boa(a1);
LABEL_134:
              LODWORD(v47) = 1;
              goto LABEL_16;
            case 61:
LABEL_35:
              v100 = OUTLINED_FUNCTION_21_33();
              starttest(v100, v101);
              v102 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v102, v103, v104))
              {
                goto LABEL_37;
              }

              OUTLINED_FUNCTION_2_44();
              if (test_string_s())
              {
                goto LABEL_37;
              }

              goto LABEL_147;
            case 62:
              v206 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v206, v207);
              v208 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v208, v209);
              goto LABEL_82;
            case 63:
              goto LABEL_136;
            case 64:
              v217 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v217, v218);
              OUTLINED_FUNCTION_5_42();
              v219 = test_string_s();
              LODWORD(v47) = v28;
              if (v219)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              OUTLINED_FUNCTION_5_42();
              goto LABEL_144;
            case 65:
              v222 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v222, v223);
              goto LABEL_82;
            case 66:
            case 72:
            case 73:
              goto LABEL_88;
            case 67:
LABEL_82:
              OUTLINED_FUNCTION_2_44();
              v224 = test_string_s();
              LODWORD(v47) = v28;
              if (!v224)
              {
                goto LABEL_88;
              }

              goto LABEL_16;
            case 68:
              v212 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v212, v213);
              OUTLINED_FUNCTION_2_44();
              v214 = test_string_s();
              LODWORD(v47) = v28;
              if (v214)
              {
                goto LABEL_16;
              }

              v215 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v215, v216);
              goto LABEL_88;
            case 69:
              bspop_boa(a1);
              goto LABEL_136;
            case 70:
            case 71:
              OUTLINED_FUNCTION_2_44();
              v226 = test_string_s();
              LODWORD(v47) = v28;
              if (v226)
              {
                goto LABEL_16;
              }

LABEL_88:
              OUTLINED_FUNCTION_2_44();
LABEL_89:
              v227 = test_string_s();
              LODWORD(v47) = v28;
              if (v227)
              {
                goto LABEL_16;
              }

LABEL_136:
              OUTLINED_FUNCTION_21_33();
              bspush_ca_boa();
              OUTLINED_FUNCTION_9_41();
              v260 = one_eng_syllable();
              goto LABEL_137;
            case 75:
LABEL_37:
              v105 = OUTLINED_FUNCTION_21_33();
              starttest(v105, v106);
              v107 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v107, v108, v109))
              {
                goto LABEL_39;
              }

              OUTLINED_FUNCTION_5_42();
              if (test_string_s())
              {
                goto LABEL_39;
              }

              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              OUTLINED_FUNCTION_2_44();
LABEL_144:
              v260 = test_string_s();
              goto LABEL_137;
            case 76:
            case 78:
            case 79:
            case 105:
              goto LABEL_147;
            case 80:
            case 111:
              goto LABEL_148;
            case 81:
LABEL_39:
              v110 = OUTLINED_FUNCTION_21_33();
              starttest(v110, v111);
              v112 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v112, v113, v114))
              {
                goto LABEL_40;
              }

              v162 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v162, v163);
              v164 = OUTLINED_FUNCTION_0_45();
              v168 = testFldeq(v164, v165, v166, v167);
              LODWORD(v47) = v28;
              if (!v168)
              {
                goto LABEL_57;
              }

              goto LABEL_16;
            case 82:
              bspop_boa(a1);
              goto LABEL_128;
            case 83:
              goto LABEL_128;
            case 84:
              v274 = advance_tok(a1, v47, v50, v51);
              LODWORD(v47) = v28;
              if (v274)
              {
                goto LABEL_16;
              }

LABEL_128:
              v275 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v275, v276);
              v277 = OUTLINED_FUNCTION_1_44();
              v281 = testFldeq(v277, v278, v279, v280);
              LODWORD(v47) = v28;
              if (!v281)
              {
                v266 = advance_tok(a1, v28, v282, v283);
LABEL_130:
                LODWORD(v47) = v28;
                if (!v266)
                {
                  goto LABEL_3;
                }
              }

              goto LABEL_16;
            case 85:
LABEL_40:
              v115 = OUTLINED_FUNCTION_21_33();
              starttest(v115, v116);
              v117 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v117, v118, v119))
              {
                goto LABEL_41;
              }

              v175 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v175, v176);
              goto LABEL_103;
            case 86:
              OUTLINED_FUNCTION_2_44();
              v232 = test_string_s();
              LODWORD(v47) = v28;
              if (v232)
              {
                goto LABEL_16;
              }

              goto LABEL_94;
            case 87:
              bspop_boa(a1);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v169 = OUTLINED_FUNCTION_10_40();
              v172 = 28;
              goto LABEL_126;
            case 88:
              bspop_boa(a1);
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v169 = OUTLINED_FUNCTION_10_40();
              v172 = 16;
              goto LABEL_126;
            case 89:
              bspop_boa(a1);
              v203 = advance_tok(a1, v200, v201, v202);
              goto LABEL_124;
            case 90:
            case 130:
              goto LABEL_125;
            case 91:
LABEL_94:
              v233 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v233, v234);
              goto LABEL_123;
            case 92:
LABEL_123:
              OUTLINED_FUNCTION_2_44();
              v203 = test_string_s();
LABEL_124:
              LODWORD(v47) = v28;
              if (!v203)
              {
                goto LABEL_125;
              }

              goto LABEL_16;
            case 93:
              bspop_boa(a1);
              v231 = advance_tok(a1, v228, v229, v230);
              goto LABEL_152;
            case 94:
LABEL_41:
              v120 = OUTLINED_FUNCTION_21_33();
              starttest(v120, v121);
              v122 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v122, v123, v124))
              {
                goto LABEL_43;
              }

              OUTLINED_FUNCTION_5_42();
              if (test_string_s())
              {
                goto LABEL_43;
              }

              goto LABEL_150;
            case 95:
              v210 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v210, v211);
              OUTLINED_FUNCTION_5_42();
              goto LABEL_104;
            case 96:
              goto LABEL_105;
            case 97:
LABEL_103:
              OUTLINED_FUNCTION_2_44();
LABEL_104:
              v249 = test_string_s();
              LODWORD(v47) = v28;
              if (!v249)
              {
                goto LABEL_105;
              }

              goto LABEL_16;
            case 98:
LABEL_43:
              v125 = OUTLINED_FUNCTION_21_33();
              starttest(v125, v126);
              v127 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v127, v128, v129))
              {
                goto LABEL_44;
              }

LABEL_147:
              v293 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v293, v294);
              goto LABEL_148;
            case 99:
            case 107:
              goto LABEL_150;
            case 100:
            case 103:
              goto LABEL_153;
            case 101:
              v287 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v287, v288);
              OUTLINED_FUNCTION_2_44();
              v289 = test_string_s();
              LODWORD(v47) = v28;
              if (v289)
              {
                goto LABEL_16;
              }

LABEL_150:
              v295 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v295, v296);
              goto LABEL_151;
            case 102:
LABEL_151:
              OUTLINED_FUNCTION_2_44();
              v231 = test_string_s();
LABEL_152:
              LODWORD(v47) = v28;
              if (v231)
              {
                goto LABEL_16;
              }

LABEL_153:
              v196 = OUTLINED_FUNCTION_0_45();
              goto LABEL_154;
            case 104:
LABEL_44:
              v130 = OUTLINED_FUNCTION_21_33();
              starttest(v130, v131);
              v132 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v132, v133, v134))
              {
                goto LABEL_45;
              }

              v177 = OUTLINED_FUNCTION_0_45();
              v181 = testFldeq(v177, v178, v179, v180);
              LODWORD(v47) = v28;
              if (v181)
              {
                goto LABEL_16;
              }

              v184 = advance_tok(a1, v28, v182, v183);
              LODWORD(v47) = v28;
              if (v184)
              {
                goto LABEL_16;
              }

              v185 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v185, v186);
LABEL_66:
              OUTLINED_FUNCTION_2_44();
              v191 = test_string_s();
              LODWORD(v47) = v28;
              if (v191)
              {
                goto LABEL_16;
              }

LABEL_148:
              OUTLINED_FUNCTION_2_44();
LABEL_149:
              v245 = test_string_s();
              goto LABEL_156;
            case 108:
              OUTLINED_FUNCTION_6_41();
              goto LABEL_149;
            case 109:
LABEL_45:
              v135 = OUTLINED_FUNCTION_21_33();
              starttest(v135, v136);
              v137 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v137, v138, v139))
              {
                goto LABEL_47;
              }

              OUTLINED_FUNCTION_2_44();
              if (test_string_s())
              {
                goto LABEL_47;
              }

              goto LABEL_158;
            case 110:
              goto LABEL_66;
            case 112:
LABEL_47:
              v140 = OUTLINED_FUNCTION_21_33();
              starttest(v140, v141);
              v142 = OUTLINED_FUNCTION_4_42();
              if (lpta_loadp_setscan_l(v142, v143, v144))
              {
                goto LABEL_170;
              }

              v145 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v145, v146);
              v147 = OUTLINED_FUNCTION_0_45();
              v151 = testFldeq(v147, v148, v149, v150);
              LODWORD(v47) = v28;
              if (v151)
              {
                goto LABEL_16;
              }

LABEL_57:
              OUTLINED_FUNCTION_21_33();
              bspush_ca_scan_boa();
              v169 = OUTLINED_FUNCTION_10_40();
              v172 = 29;
              goto LABEL_126;
            case 113:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
LABEL_158:
              v298 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v298, v299);
              goto LABEL_159;
            case 114:
              goto LABEL_160;
            case 123:
LABEL_159:
              OUTLINED_FUNCTION_2_44();
              v300 = test_string_s();
              LODWORD(v47) = v28;
              if (!v300)
              {
                do
                {
LABEL_160:
                  v301 = OUTLINED_FUNCTION_21_33();
                  bspush_ca_scan(v301, v302);
                  v303 = OUTLINED_FUNCTION_0_45();
                }

                while (!testFldeq(v303, v304, v305, v306) && !advance_tok(a1, v307, v308, v309));
                LODWORD(v47) = v28;
              }

              goto LABEL_16;
            case 124:
              v220 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v220, v221);
LABEL_105:
              v196 = OUTLINED_FUNCTION_1_44();
              goto LABEL_154;
            case 125:
              v196 = OUTLINED_FUNCTION_10_40();
              v199 = 30;
LABEL_154:
              v297 = testFldeq(v196, v197, v198, v199);
              v47 = v28;
              if (!v297)
              {
                goto LABEL_155;
              }

              goto LABEL_16;
            case 126:
LABEL_155:
              v245 = advance_tok(a1, v47, v50, v51);
              goto LABEL_156;
            case 127:
LABEL_170:
              v314 = OUTLINED_FUNCTION_4_42();
              if (!lpta_loadp_setscan_l(v314, v315, v316))
              {
                OUTLINED_FUNCTION_3_43();
                if (!test_string_s())
                {
                  goto LABEL_5;
                }
              }

              goto LABEL_3;
            case 128:
              OUTLINED_FUNCTION_2_44();
              v254 = test_string_s();
              LODWORD(v47) = v28;
              if (v254)
              {
                goto LABEL_16;
              }

              v255 = OUTLINED_FUNCTION_21_33();
              bspush_ca_scan(v255, v256);
              goto LABEL_111;
            case 129:
              bspop_boa(a1);
              v195 = advance_tok(a1, v192, v193, v194);
              goto LABEL_112;
            case 131:
LABEL_111:
              OUTLINED_FUNCTION_2_44();
              v195 = test_string_s();
LABEL_112:
              LODWORD(v47) = v28;
              if (!v195)
              {
LABEL_125:
                OUTLINED_FUNCTION_21_33();
                bspush_ca_scan_boa();
                v169 = OUTLINED_FUNCTION_0_45();
LABEL_126:
                v260 = testFldeq(v169, v170, v171, v172);
LABEL_137:
                if (v260)
                {
                  LODWORD(v47) = v28;
                }

                else
                {
                  LODWORD(v47) = 1;
                }
              }

              goto LABEL_16;
            case 132:
              bspop_boa(a1);
              v241 = advance_tok(a1, v238, v239, v240);
              LODWORD(v47) = v28;
              if (v241)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_88_10();
              v242 = OUTLINED_FUNCTION_26_31();
              v245 = test_ptr(v242, v243, v244);
LABEL_156:
              LODWORD(v47) = v28;
              if (!v245)
              {
                goto LABEL_5;
              }

              goto LABEL_16;
            default:
              goto LABEL_3;
          }
        }

        goto LABEL_3;
      }
    }

    break;
  }

LABEL_6:
  vretproc(a1);
  return 0;
}

uint64_t two_to_one(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v79 = *MEMORY[0x277D85DE8];
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v74[0] = 0;
  v74[1] = 0;
  v73[0] = 0;
  v73[1] = 0;
  OUTLINED_FUNCTION_29_29(a1, a2, a3, a4, a5, a6, a7, a8, v72);
  OUTLINED_FUNCTION_30_29();
  bzero(v78, v9);
  if (setjmp(v78))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_85_11();
  if (ventproc(a1, v10, v11, v12, v13, v78))
  {
    goto LABEL_5;
  }

  BYTE4(v77) = 0;
  LODWORD(v77) = 0;
  LODWORD(v75) = -65535;
  v14 = OUTLINED_FUNCTION_87_10();
  push_ptr_init(v14, v15);
  v16 = push_ptr_init(a1, v73);
  OUTLINED_FUNCTION_71_12(v16, v17, &null_str_12);
  v18 = OUTLINED_FUNCTION_13_40();
  fence_44(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_91_9();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_24_31();
  if (lpta_loadp_setscan_l(v23, v24, v78))
  {
    goto LABEL_5;
  }

  v25 = OUTLINED_FUNCTION_98_8();
  if (savetok(v25, v26))
  {
    goto LABEL_5;
  }

  v28 = OUTLINED_FUNCTION_0_45();
  if (testFldeq(v28, v29, v30, v31))
  {
    v35 = 0;
    goto LABEL_17;
  }

  v35 = 0;
  v36 = 0;
  if (advance_tok(a1, v32, v33, v34))
  {
LABEL_17:
    v36 = v35;
    while (2)
    {
      v61 = *(a1 + 104);
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_38_21(v61);
        v36 = v63;
      }

      else
      {
        v62 = vback(a1, v36);
        v36 = 0;
      }

      v55 = v36;
      switch(v62)
      {
        case 2:
          break;
        case 3:
          goto LABEL_12;
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_26;
        case 6:
          v64 = OUTLINED_FUNCTION_35_25();
          bspush_ca_scan(v64, v65);
          OUTLINED_FUNCTION_2_44();
          goto LABEL_24;
        case 7:
          goto LABEL_15;
        case 8:
          OUTLINED_FUNCTION_2_44();
LABEL_24:
          v66 = test_string_s();
          v55 = v36;
          if (!v66)
          {
            goto LABEL_15;
          }

          continue;
        case 9:
          bspop_boa(a1);
          goto LABEL_5;
        case 11:
          goto LABEL_27;
        case 12:
          goto LABEL_28;
        default:
          goto LABEL_5;
      }

      break;
    }
  }

  v35 = v36;
  OUTLINED_FUNCTION_47_17();
  savescptr(a1, v37, v73);
  v38 = OUTLINED_FUNCTION_32_27();
  if (savetok(v38, v39))
  {
    goto LABEL_17;
  }

  if (advance_tok(a1, v40, v41, v42))
  {
    goto LABEL_17;
  }

  v43 = OUTLINED_FUNCTION_46_18();
  if (testeq_tvars(v43, v44, v45))
  {
    goto LABEL_17;
  }

LABEL_12:
  OUTLINED_FUNCTION_62_15();
  savescptr(a1, v46, v74);
LABEL_13:
  v35 = v36;
  v47 = OUTLINED_FUNCTION_21_33();
  starttest(v47, v48);
  v49 = OUTLINED_FUNCTION_23_33();
  if (!lpta_loadp_setscan_r(v49, v50, v51))
  {
    v52 = OUTLINED_FUNCTION_21_33();
    bspush_ca_scan(v52, v53);
    OUTLINED_FUNCTION_2_44();
    v54 = test_string_s();
    v55 = v36;
    if (!v54)
    {
LABEL_15:
      v35 = v55;
      OUTLINED_FUNCTION_16_39();
      bspush_ca_boa();
      v56 = OUTLINED_FUNCTION_41_20();
      lpta_rpta_loadp(v56, v57, v58);
      v59 = OUTLINED_FUNCTION_22_33();
      if (!setd_lookup(v59, v60, 387))
      {
        v35 = 1;
      }
    }

    goto LABEL_17;
  }

LABEL_26:
  v67 = OUTLINED_FUNCTION_9_41();
  lpta_rpta_loadp(v67, v68, v69);
  v70 = OUTLINED_FUNCTION_22_33();
  if (setd_lookup(v70, v71, 386))
  {
LABEL_27:
    delete_inp_from_left(a1);
LABEL_28:
    *(a1 + 5938) = 1;
  }

LABEL_5:
  vretproc(a1);
  return OUTLINED_FUNCTION_101_7();
}

uint64_t i_to_y(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v93 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_40(a1, a2, a3, a4, a5, a6, a7, a8, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91[0], v91[1]);
  OUTLINED_FUNCTION_30_29();
  bzero(v92, v9);
  v10 = setjmp(v92);
  if (!v10 && !OUTLINED_FUNCTION_15_39(v10, v11, v12, v13, v14, v15, v16, v17, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v91[0], v91[1], v91[2], SHIDWORD(v91[2]), v91[3], SWORD2(v91[3]), SHIWORD(v91[3]), v91[4], SWORD2(v91[4]), SBYTE6(v91[4]), SHIBYTE(v91[4]), v91[5], v92[0]))
  {
    v18 = OUTLINED_FUNCTION_32_27();
    push_ptr_init(v18, v19);
    fence_44(a1, 0, &null_str_12);
    v20 = OUTLINED_FUNCTION_22_33();
    fence_44(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_4_42();
    if (!lpta_loadp_setscan_l(v23, v24, v25))
    {
      OUTLINED_FUNCTION_2_44();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_99_7();
LABEL_6:
        v26 = OUTLINED_FUNCTION_35_25();
        savescptr(v26, v27, v91);
        do
        {
          v28 = OUTLINED_FUNCTION_44_19();
          starttest(v28, v29);
          v30 = OUTLINED_FUNCTION_9_41();
          lpta_rpta_loadp(v30, v31, v32);
          v33 = OUTLINED_FUNCTION_22_33();
          if (!setd_lookup(v33, v34, 388))
          {
            break;
          }

          do
          {
            v35 = OUTLINED_FUNCTION_39_21();
            lpta_rpta_loadp(v35, v91, v36);
            v37 = OUTLINED_FUNCTION_2_44();
            if (!insert_2pt_s(v37, v38, v39, &unk_28058118C, v40))
            {
              v43 = 0;
              *(a1 + 5938) = 1;
              goto LABEL_16;
            }

            v41 = *(a1 + 104);
            if (v41)
            {
              v42 = OUTLINED_FUNCTION_38_21(v41);
            }

            else
            {
              v42 = OUTLINED_FUNCTION_96_8();
            }
          }

          while (v42 == 4);
          if (v42 == 2)
          {
            goto LABEL_6;
          }
        }

        while (v42 == 3);
      }
    }
  }

  v43 = 94;
LABEL_16:
  vretproc(a1);
  return v43;
}

void OUTLINED_FUNCTION_7_41(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_8_41(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_11_40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_15_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_26_31()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

double OUTLINED_FUNCTION_27_30@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_29_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_43_19@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_48_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_49_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  *&result = savescptr(v29, a1, &a29).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_52_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

double OUTLINED_FUNCTION_56_16@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_57_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, int a47, __int16 a48, __int16 a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{

  return ventproc(v55, a2, &a53, &a49, &a46, &a55);
}

uint64_t OUTLINED_FUNCTION_58_15()
{

  return lpta_rpta_loadp(v0, v0 + 1320, v0 + 1336);
}

double OUTLINED_FUNCTION_60_15@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  *&result = savescptr(v31, a1, &a31).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_67_14()
{

  return rpta_loadpn(v0, v0 + 3536);
}

void *OUTLINED_FUNCTION_71_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_44(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_76_11()
{

  return lpta_loadp_setscan_r(v0, v0 + 1320, 4);
}

double OUTLINED_FUNCTION_80_11@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  *&result = savescptr(v41, a1, &a41).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_86_10(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_92_9(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_93_8()
{

  starttest(v0, v1);
}

BOOL OUTLINED_FUNCTION_94_8()
{

  return vretproc(v0);
}

double OUTLINED_FUNCTION_95_8@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  *&result = savescptr(v37, a1, &a37).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_96_8()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_104_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 232);
}

void OUTLINED_FUNCTION_105_7(uint64_t a1, size_t a2)
{

  bzero((v2 - 232), a2);
}

uint64_t OUTLINED_FUNCTION_106_7()
{

  return vback(v0, v1);
}

uint64_t OUTLINED_FUNCTION_107_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return ventproc(v39, a2, a3, a4, a5, va);
}

void *fence_45(uint64_t a1, int a2, uint64_t a3)
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

uint64_t insert_eng_spr_phone(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v303 = *MEMORY[0x277D85DE8];
  v297 = 0;
  v298 = 0;
  v295 = 0;
  v296 = 0;
  v292 = 0u;
  v293 = 0u;
  bzero(&v269, 0xB8uLL);
  bzero(v302, 0xC0uLL);
  if (setjmp(v302) || ventproc(a1, &v269, v301, v300, v299, v302))
  {
    goto LABEL_3;
  }

  v10 = OUTLINED_FUNCTION_10_41();
  get_parm(v10, v11, a2, -6);
  get_parm(a1, &v295, a3, -6);
  *&v293 = 0;
  *(&v293 + 6) = 0;
  LODWORD(v292) = -65534;
  fence_45(a1, 0, &null_str_13);
  v12 = OUTLINED_FUNCTION_10_41();
  v14 = lpta_loadp_setscan_r(v12, v13, 1);
  if (!v14)
  {
    v17 = OUTLINED_FUNCTION_7_42(v14, v15, v16, &_MergedGlobals_38);
    if (!v17)
    {
      OUTLINED_FUNCTION_6_42(v17, v18, v19, v20, v21, v22, v23, v24, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296);
      v25 = OUTLINED_FUNCTION_2_45();
      if (!insert_2pt_s(v25, v26, v27, v28, 0))
      {
        v7 = 0;
        goto LABEL_4;
      }
    }
  }

  while (2)
  {
    v29 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v29, v30, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v31 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v31, v32, &v295);
        v33 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v33, v34, v35, &unk_2805812FA, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_11:
    v36 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v36, v37, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v38 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v38, v39, &v295);
        v40 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v40, v41, v42, &unk_2805812FC, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_14:
    v43 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v43, v44, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v45 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v45, v46, &v295);
        v47 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v47, v48, v49, &unk_2805812FE, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_17:
    if (*(a1 + 3710) == *(a1 + 3706))
    {
      v50 = OUTLINED_FUNCTION_5_43();
      if (!lpta_loadp_setscan_r(v50, v51, 1))
      {
        OUTLINED_FUNCTION_3_44();
        if (!test_string_s())
        {
          v52 = OUTLINED_FUNCTION_5_43();
          lpta_rpta_loadp(v52, v53, &v295);
          v54 = OUTLINED_FUNCTION_0_46();
          if (!insert_2pt_s(v54, v55, v56, &unk_280581300, 0))
          {
            goto LABEL_146;
          }
        }
      }
    }

LABEL_21:
    if (*(a1 + 3710) == *(a1 + 3706))
    {
      v57 = OUTLINED_FUNCTION_5_43();
      if (!lpta_loadp_setscan_r(v57, v58, 1))
      {
        OUTLINED_FUNCTION_3_44();
        if (!test_string_s())
        {
          v59 = OUTLINED_FUNCTION_5_43();
          lpta_rpta_loadp(v59, v60, &v295);
          v61 = OUTLINED_FUNCTION_0_46();
          if (!insert_2pt_s(v61, v62, v63, &unk_280581302, 0))
          {
            goto LABEL_146;
          }
        }
      }
    }

LABEL_25:
    v64 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v64, v65, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v66 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v66, v67, &v295);
        v68 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v68, v69, v70, &unk_280581304, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_28:
    v71 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v71, v72, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v73 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v73, v74, &v295);
        v75 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v75, v76, v77, &unk_280581306, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_31:
    v78 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v78, v79, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v80 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v80, v81, &v295);
        v82 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v82, v83, v84, &unk_280581308, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_34:
    v85 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v85, v86, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v87 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v87, v88, &v295);
        v89 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v89, v90, v91, &unk_28058130A, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_37:
    v92 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v92, v93, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v94 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v94, v95, &v295);
        v96 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v96, v97, v98, &_MergedGlobals_38, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_40:
    v99 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v99, v100, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v101 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v101, v102, &v295);
        v103 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v103, v104, v105, &unk_28058130D, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_43:
    v106 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v106, v107, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v108 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v108, v109, &v295);
        v110 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v110, v111, v112, &unk_2805812FB, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_46:
    v113 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v113, v114, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v115 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v115, v116, &v295);
        v117 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v117, v118, v119, &unk_28058130C, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_49:
    v120 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v120, v121, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v122 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v122, v123, &v295);
        v124 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v124, v125, v126, &unk_280581305, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_52:
    v127 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v127, v128, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v129 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v129, v130, &v295);
        v131 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v131, v132, v133, &unk_280581312, 0))
        {
LABEL_146:
          v7 = v3;
          break;
        }
      }
    }

LABEL_55:
    v134 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v134, v135, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v136 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v136, v137, &v295);
        v138 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v138, v139, v140, &unk_280581314, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_58:
    v141 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v141, v142, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v143 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v143, v144, &v295);
        v145 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v145, v146, v147, &unk_280581303, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_61:
    v148 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v148, v149, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v150 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v150, v151, &v295);
        v152 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v152, v153, v154, &unk_280581316, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_64:
    v155 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v155, v156, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v157 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v157, v158, &v295);
        v159 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v159, v160, v161, &unk_280581317, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_67:
    v162 = OUTLINED_FUNCTION_5_43();
    if (!lpta_loadp_setscan_r(v162, v163, 1))
    {
      OUTLINED_FUNCTION_3_44();
      if (!test_string_s())
      {
        v164 = OUTLINED_FUNCTION_5_43();
        lpta_rpta_loadp(v164, v165, &v295);
        v166 = OUTLINED_FUNCTION_0_46();
        if (!insert_2pt_s(v166, v167, v168, &unk_280581318, 0))
        {
          goto LABEL_146;
        }
      }
    }

LABEL_70:
    starttest(a1, 23);
    v169 = OUTLINED_FUNCTION_5_43();
    if (lpta_loadp_setscan_r(v169, v170, 1) || (OUTLINED_FUNCTION_3_44(), test_string_s()))
    {
LABEL_77:
      starttest(a1, 24);
      v188 = OUTLINED_FUNCTION_5_43();
      v7 = lpta_loadp_setscan_r(v188, v189, 1);
      if (v7 || (OUTLINED_FUNCTION_3_44(), v7 = test_string_s(), v7))
      {
LABEL_79:
        v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
        if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_28058131B), v7) || (v190 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v190, v191, v192, &unk_2805812F9), v7))
        {
LABEL_82:
          v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
          if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_28058131C), v7) || (v193 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v193, v194, v195, &unk_28058131D), v7))
          {
LABEL_85:
            v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
            if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581316), v7) || (v196 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v196, v197, v198, &unk_28058131C), v7))
            {
LABEL_88:
              v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
              if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_28058131E), v7) || (v199 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v199, v200, v201, &unk_28058130F), v7))
              {
LABEL_91:
                v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_28058131F), v7) || (v202 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v202, v203, v204, &unk_2805812FD), v7))
                {
LABEL_94:
                  v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                  if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_2805812FC), v7) || (v205 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v205, v206, v207, &unk_28058130B), v7))
                  {
LABEL_97:
                    v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                    if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581306), v7) || (v208 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v208, v209, v210, &unk_28058131F), v7))
                    {
LABEL_100:
                      v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                      if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_2805812FA), v7) || (v211 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v211, v212, v213, &unk_280581320), v7))
                      {
LABEL_103:
                        v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                        if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581304), v7) || (v214 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v214, v215, v216, &unk_28058131E), v7))
                        {
LABEL_106:
                          v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                          if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581302), v7) || (v217 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v217, v218, v219, &unk_28058130E), v7))
                          {
LABEL_109:
                            v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                            if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581321), v7) || (v220 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v220, v221, v222, &unk_280581322), v7))
                            {
LABEL_112:
                              v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                              if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581323), v7) || (v223 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v223, v224, v225, &unk_280581307), v7))
                              {
LABEL_115:
                                v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581320), v7) || (v226 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v226, v227, v228, &unk_2805812FF), v7))
                                {
LABEL_118:
                                  v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                  if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581324), v7) || (v229 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v229, v230, v231, &unk_28058131B), v7))
                                  {
LABEL_121:
                                    v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                    if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_2805812F8), v7) || (v232 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v232, v233, v234, &unk_280581325), v7))
                                    {
LABEL_124:
                                      v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                      if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581300), v7) || (v235 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v235, v236, v237, &unk_280581326), v7))
                                      {
LABEL_127:
                                        v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                        if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_28058130A), v7) || (v238 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v238, v239, v240, &unk_280581324), v7))
                                        {
LABEL_130:
                                          v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                          if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_2805812FE), v7) || (v241 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v241, v242, v243, &unk_280581311), v7))
                                          {
LABEL_133:
                                            v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                            if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_28058130D), v7) || (v244 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v244, v245, v246, &unk_280581309), v7))
                                            {
LABEL_136:
                                              v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                              if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581327), v7) || (v247 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v247, v248, v249, &unk_280581328), v7))
                                              {
LABEL_139:
                                                v7 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                                if (v7 || (v7 = OUTLINED_FUNCTION_7_42(v7, v177, v178, &unk_280581329), v7) || (v250 = OUTLINED_FUNCTION_6_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), v7 = OUTLINED_FUNCTION_1_45(v250, v251, v252, &unk_280581329), v7))
                                                {
LABEL_142:
                                                  v253 = OUTLINED_FUNCTION_8_42(v7, v177, v178, v179, v180, v181, v182, v183, v267, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, v297);
                                                  if (v253 || (v256 = OUTLINED_FUNCTION_7_42(v253, v254, v255, &unk_280581308), v256) || (v264 = OUTLINED_FUNCTION_6_42(v256, v257, v258, v259, v260, v261, v262, v263, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296), OUTLINED_FUNCTION_1_45(v264, v265, v266, &unk_280581321)))
                                                  {
LABEL_3:
                                                    v7 = 94;
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

        v7 = 1;
        break;
      }
    }

    v171 = OUTLINED_FUNCTION_5_43();
    lpta_rpta_loadp(v171, v172, &v295);
    OUTLINED_FUNCTION_10_41();
    settvar_s();
    v3 = 0;
    npush_s(a1);
    WORD1(v292) = 3;
    v173 = OUTLINED_FUNCTION_10_41();
    npop(v173, v174);
    npush_s(a1);
    WORD1(v292) = 1;
    v175 = OUTLINED_FUNCTION_10_41();
    npop(v175, v176);
    OUTLINED_FUNCTION_4_43();
    insert_2ptv();
    if (!v184)
    {
      goto LABEL_146;
    }

    v185 = *(a1 + 104);
    if (v185)
    {
      *(a1 + 104) = 0;
      v186 = v185;
    }

    else
    {
      v186 = vback(a1, 0);
    }

    v187 = v186 - 1;
    v7 = 0;
    switch(v187)
    {
      case 0:
        continue;
      case 1:
        goto LABEL_4;
      case 2:
        goto LABEL_11;
      case 3:
        goto LABEL_14;
      case 4:
        goto LABEL_17;
      case 5:
        goto LABEL_21;
      case 6:
        goto LABEL_25;
      case 7:
        goto LABEL_28;
      case 8:
        goto LABEL_31;
      case 9:
        goto LABEL_34;
      case 10:
        goto LABEL_37;
      case 11:
        goto LABEL_40;
      case 12:
        goto LABEL_43;
      case 13:
        goto LABEL_46;
      case 14:
        goto LABEL_49;
      case 15:
        goto LABEL_52;
      case 16:
        goto LABEL_55;
      case 17:
        goto LABEL_58;
      case 18:
        goto LABEL_61;
      case 19:
        goto LABEL_64;
      case 20:
        goto LABEL_67;
      case 21:
        goto LABEL_70;
      case 22:
        goto LABEL_77;
      case 23:
        goto LABEL_79;
      case 24:
        goto LABEL_82;
      case 25:
        goto LABEL_85;
      case 26:
        goto LABEL_88;
      case 27:
        goto LABEL_91;
      case 28:
        goto LABEL_94;
      case 29:
        goto LABEL_97;
      case 30:
        goto LABEL_100;
      case 31:
        goto LABEL_103;
      case 32:
        goto LABEL_106;
      case 33:
        goto LABEL_109;
      case 34:
        goto LABEL_112;
      case 35:
        goto LABEL_115;
      case 36:
        goto LABEL_118;
      case 37:
        goto LABEL_121;
      case 38:
        goto LABEL_124;
      case 39:
        goto LABEL_127;
      case 40:
        goto LABEL_130;
      case 41:
        goto LABEL_133;
      case 42:
        goto LABEL_136;
      case 43:
        goto LABEL_139;
      case 44:
        goto LABEL_142;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  v8 = v7;
  vretproc(a1);
  return v8;
}

uint64_t print_eng_SPR(void *a1, __int16 *a2, uint64_t a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v78[0] = 0;
  v78[1] = 0;
  v76 = 0;
  v77 = 0;
  bzero(&v53, 0xB8uLL);
  bzero(v82, 0xC0uLL);
  if (!setjmp(v82) && !ventproc(a1, &v53, v81, v80, v79, v82))
  {
    v8 = OUTLINED_FUNCTION_10_41();
    get_parm(v8, v9, a2, -6);
    get_parm(a1, &v76, a3, -6);
    fence_45(a1, 0, &null_str_13);
    fence_45(a1, 1, &unk_280581304);
    starttest(a1, 1);
    v10 = OUTLINED_FUNCTION_10_41();
    v12 = lpta_loadp_setscan_r(v10, v11, 2);
    if (!v12)
    {
      v20 = OUTLINED_FUNCTION_4_43();
      if (testFldeq(v20, v21, 10, 1) || advance_tok(a1, v13, v14, v15))
      {
        goto LABEL_35;
      }

      v12 = print_lit(a1, 8, "h");
    }

    while (2)
    {
      v12 = OUTLINED_FUNCTION_9_42(v12, v13, v14, v15, v16, v17, v18, v19, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
      if (!v12)
      {
        OUTLINED_FUNCTION_4_43();
        v12 = test_string_s();
        if (!v12)
        {
LABEL_11:
          OUTLINED_FUNCTION_11_41(3, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
          v22 = "C";
LABEL_24:
          v23 = a1;
          goto LABEL_25;
        }
      }

LABEL_12:
      v12 = OUTLINED_FUNCTION_9_42(v12, v13, v14, v15, v16, v17, v18, v19, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
      if (!v12)
      {
        OUTLINED_FUNCTION_4_43();
        v12 = test_string_s();
        if (!v12)
        {
LABEL_14:
          OUTLINED_FUNCTION_11_41(6, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
          v22 = "J";
          goto LABEL_24;
        }
      }

LABEL_15:
      v12 = OUTLINED_FUNCTION_9_42(v12, v13, v14, v15, v16, v17, v18, v19, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
      if (!v12)
      {
        OUTLINED_FUNCTION_4_43();
        v12 = test_string_s();
        if (!v12)
        {
LABEL_17:
          savescptr(a1, 8, &v76);
          v22 = "Y";
          v23 = a1;
LABEL_25:
          print_lit(v23, 8, v22);
LABEL_40:
          *(a3 + 8) = v77;
          v6 = 0;
          goto LABEL_4;
        }
      }

LABEL_18:
      v12 = OUTLINED_FUNCTION_9_42(v12, v13, v14, v15, v16, v17, v18, v19, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
      if (!v12)
      {
        OUTLINED_FUNCTION_4_43();
        v12 = test_string_s();
        if (!v12)
        {
LABEL_20:
          OUTLINED_FUNCTION_11_41(10, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
          v22 = "W";
          goto LABEL_24;
        }
      }

LABEL_21:
      if (!OUTLINED_FUNCTION_9_42(v12, v13, v14, v15, v16, v17, v18, v19, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]))
      {
        OUTLINED_FUNCTION_4_43();
        if (!test_string_s())
        {
LABEL_23:
          OUTLINED_FUNCTION_11_41(12, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
          v22 = "O";
          goto LABEL_24;
        }
      }

LABEL_26:
      starttest(a1, 13);
      if (OUTLINED_FUNCTION_9_42(v24, v25, v26, v27, v28, v29, v30, v31, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]))
      {
LABEL_27:
        starttest(a1, 14);
        if (OUTLINED_FUNCTION_9_42(v32, v33, v34, v35, v36, v37, v38, v39, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]))
        {
LABEL_39:
          lpta_rpta_loadp(a1, v78, &v76);
          print_stream(a1, 8, 2, 0, &unk_26DD32C5A);
          goto LABEL_40;
        }

        v40 = OUTLINED_FUNCTION_4_43();
        if (!testFldeq(v40, v41, v42, 20))
        {
          v43 = OUTLINED_FUNCTION_2_45();
          if (!testFldeq(v43, v44, v45, 1) && !advance_tok(a1, v13, v14, v15))
          {
            v22 = "M";
            goto LABEL_24;
          }
        }
      }

      else
      {
        v46 = OUTLINED_FUNCTION_4_43();
        if (!testFldeq(v46, v47, v48, 21))
        {
          v49 = OUTLINED_FUNCTION_2_45();
          if (!testFldeq(v49, v50, v51, 1) && !advance_tok(a1, v13, v14, v15))
          {
            v22 = "N";
            goto LABEL_24;
          }
        }
      }

LABEL_35:
      v52 = a1[13];
      if (v52)
      {
        a1[13] = 0;
        v12 = v52;
      }

      else
      {
        v12 = vback(a1, 0);
      }

      switch(v12)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_12;
        case 3:
          goto LABEL_11;
        case 4:
          goto LABEL_40;
        case 5:
          goto LABEL_15;
        case 6:
          goto LABEL_14;
        case 7:
          goto LABEL_18;
        case 8:
          goto LABEL_17;
        case 9:
          goto LABEL_21;
        case 10:
          goto LABEL_20;
        case 11:
          goto LABEL_26;
        case 12:
          goto LABEL_23;
        case 13:
          goto LABEL_27;
        case 14:
          goto LABEL_39;
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

uint64_t OUTLINED_FUNCTION_1_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return insert_2pt_s(v4, 2u, 1, a4, 0);
}

uint64_t OUTLINED_FUNCTION_6_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return lpta_rpta_loadp(v39, va, &a38);
}

uint64_t OUTLINED_FUNCTION_7_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return test_string_s();
}

uint64_t OUTLINED_FUNCTION_8_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return lpta_loadp_setscan_r(v40, &a40, 1);
}

uint64_t OUTLINED_FUNCTION_9_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return lpta_loadp_setscan_r(v34, &a34, 2);
}

double OUTLINED_FUNCTION_11_41@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void *fence_46(uint64_t a1, unsigned __int8 *a2)
{
  *(*(a1 + 192) + 8121) = 1;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  v5 = *a2;
  **(a1 + 248) = v5;
  *(*(a1 + 264) + v5) = 0;
  return result;
}

uint64_t assign_eng_stress()
{
  OUTLINED_FUNCTION_21_34();
  v157 = *MEMORY[0x277D85DE8];
  v155 = 0;
  v156 = 0;
  OUTLINED_FUNCTION_47_18(v3, v4, v5, v6, v7, v8, v9, v10, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0], v153[1], *v154, *&v154[8]);
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_114_7(v11, v12);
  if (setjmp(v2) || (OUTLINED_FUNCTION_106_8(), OUTLINED_FUNCTION_105_8(v13, v14, v15, v16, v17)))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  v19 = OUTLINED_FUNCTION_75_12();
  get_parm(v19, v20, v1, -6);
  v21 = OUTLINED_FUNCTION_59_16();
  get_parm(v21, v22, v23, -6);
  v24 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v24, v25);
  v152 = 65532;
  fence_46(v0, &_MergedGlobals_39);
  if (*(v0 + 3998) != 1)
  {
    v31 = 0;
    while (2)
    {
      *(v0 + 1648) = v156;
      if (*(v0 + 4026))
      {
        assign_prefix_stress();
      }

LABEL_33:
      if (*(v0 + 5970))
      {
        OUTLINED_FUNCTION_73_12();
        assign_suffix_stress();
      }

LABEL_35:
      *(v0 + 6278) = 0;
      v70 = OUTLINED_FUNCTION_28_30();
      starttest(v70, v71);
      v72 = OUTLINED_FUNCTION_27_31();
      bspush_ca(v72);
      v50 = v31;
      v60 = v31;
      if (*(v0 + 5974) != 1)
      {
        goto LABEL_16;
      }

LABEL_36:
      *(v0 + 6278) = 1;
      v51 = v60;
LABEL_37:
      v73 = OUTLINED_FUNCTION_26_32();
      startloop(v73, v74);
      v75 = OUTLINED_FUNCTION_58_16();
      copyvar(v75, v76, v77);
      v78 = OUTLINED_FUNCTION_42_21();
      copyvar(v78, v79, v80);
      v81 = OUTLINED_FUNCTION_58_16();
      v83 = forall_to_test(v81, v82, v153);
      v50 = v51;
      v68 = v51;
      if (v83)
      {
LABEL_16:
        v51 = v50;
LABEL_17:
        v56 = *(v0 + 104);
        if (v56)
        {
          v57 = OUTLINED_FUNCTION_53_17(v56);
          v51 = v58;
        }

        else
        {
          v57 = vback(v0, v51);
          v51 = 0;
        }

        v59 = v57 - 1;
        v60 = v51;
        switch(v59)
        {
          case 0:
            v31 = v51;
            continue;
          case 1:
          case 9:
            goto LABEL_6;
          case 2:
            bspop_boa(v0);
            v61 = OUTLINED_FUNCTION_32_28();
            lpta_rpta_loadp(v61, v62, v63);
            v64 = OUTLINED_FUNCTION_9_43();
            if (!insert_2pt_i(v64, v65, v66, &string_3_1, v67))
            {
              goto LABEL_6;
            }

            goto LABEL_17;
          case 3:
            goto LABEL_13;
          case 4:
            v31 = v51;
            goto LABEL_33;
          case 5:
            v31 = v51;
            goto LABEL_35;
          case 6:
            goto LABEL_37;
          case 7:
            v60 = v51;
            if (*(v0 + 4066) == 1)
            {
              goto LABEL_36;
            }

            goto LABEL_17;
          case 8:
            goto LABEL_36;
          case 10:
            goto LABEL_42;
          case 11:
            goto LABEL_54;
          case 12:
            goto LABEL_41;
          case 13:
            v68 = v51;
            goto LABEL_43;
          case 14:
          case 15:
          case 17:
          case 21:
            goto LABEL_53;
          case 16:
            goto LABEL_47;
          case 18:
            goto LABEL_48;
          case 19:
            goto LABEL_49;
          case 20:
            v69 = v51;
            goto LABEL_52;
          case 22:
            v68 = v51;
            goto LABEL_38;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

LABEL_38:
    v84 = OUTLINED_FUNCTION_37_23();
    bspush_ca(v84);
    v85 = OUTLINED_FUNCTION_58_16();
    if (!lpta_loadp_setscan_r(v85, v86, 3))
    {
      v87 = OUTLINED_FUNCTION_54_17();
      if (!testFldeq(v87, 3u, v88, 2))
      {
        v92 = advance_tok(v0, v89, v90, v91);
        v50 = v68;
        v51 = v68;
        if (v92)
        {
          goto LABEL_16;
        }

LABEL_41:
        v93 = OUTLINED_FUNCTION_70_13();
        savescptr(v93, v94, v95);
LABEL_42:
        v68 = v51;
        v96 = OUTLINED_FUNCTION_37_23();
        starttest(v96, v97);
        v98 = OUTLINED_FUNCTION_58_16();
        if (lpta_loadp_setscan_r(v98, v99, 3))
        {
LABEL_43:
          if (!*(v0 + 4056))
          {
            v51 = v68;
LABEL_47:
            v103 = OUTLINED_FUNCTION_44_20();
            set_extrametrical_syll(v103, v104);
LABEL_48:
            get_numRootSylls(v0, v0 + 1640, v0 + 1656, v0 + 4000);
LABEL_49:
            v69 = v51;
            if (*(v0 + 4002) == 1)
            {
              v105 = OUTLINED_FUNCTION_37_23();
              starttest(v105, v106);
              v107 = OUTLINED_FUNCTION_11_42();
              move_i(v107, v108, v109);
              inserted = insert_stressval(v0, (v0 + 1640), (v0 + 4008), &v152, v110, v111, v112, v113);
              v50 = v51;
              if (inserted)
              {
                goto LABEL_16;
              }
            }

            else
            {
LABEL_52:
              v115 = OUTLINED_FUNCTION_25_32();
              starttest(v115, v116);
              OUTLINED_FUNCTION_55_17();
              assign_root_stress();
              v51 = v69;
            }

            goto LABEL_53;
          }

          v100 = OUTLINED_FUNCTION_37_23();
          starttest(v100, v101);
          v102 = OUTLINED_FUNCTION_55_17();
          insert_stress_pattern(v102);
LABEL_45:
          v51 = v68;
LABEL_53:
          v117 = OUTLINED_FUNCTION_39_22();
          move_i(v117, v118, v119);
LABEL_54:
          v120 = forto_adv_r(v0, 10, 11, 23, 3, v0 + 1640);
          v50 = v51;
          if (!v120)
          {
            goto LABEL_6;
          }

          goto LABEL_16;
        }

        if (!testFldeq(v0, 3u, 2, 3) && !advance_tok(v0, v121, v122, v123))
        {
          v124 = OUTLINED_FUNCTION_37_23();
          starttest(v124, v125);
          v126 = OUTLINED_FUNCTION_55_17();
          assign_user_stress(v126);
          goto LABEL_45;
        }
      }
    }

    v50 = v68;
    goto LABEL_16;
  }

  v26 = OUTLINED_FUNCTION_37_23();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_63_16();
  if (!lpta_loadp_setscan_r(v28, v29, v30))
  {
    v32 = OUTLINED_FUNCTION_61_16();
    if (npush_fld(v32, v33, 7u) || (npush_v(v0, (v0 + 3236), v34, v35, v36, v37, v38, v39), if_testgt(v0, v40, v41, v42, v43, v44, v45, v46)) || advance_tok(v0, v47, v48, v49))
    {
      v50 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_37_23();
      bspush_ca_scan_boa();
      v51 = 0;
LABEL_13:
      v52 = OUTLINED_FUNCTION_19_37();
      if (test_synch(v52, v53, v54, v55))
      {
        v50 = v51;
      }

      else
      {
        v50 = 1;
      }
    }

    goto LABEL_16;
  }

LABEL_6:
  vretproc(v0);
  return 0;
}

uint64_t assign_prefix_stress()
{
  OUTLINED_FUNCTION_21_34();
  v173 = *MEMORY[0x277D85DE8];
  v170 = 0;
  v171 = 0;
  v168[1] = 0;
  v169 = 0;
  OUTLINED_FUNCTION_45_19(v2, v3, v4, v5, v6, v7, v8, v9, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166[0], v166[1], v167, v168[0]);
  OUTLINED_FUNCTION_51_17();
  bzero(v172, v10);
  if (!setjmp(v172))
  {
    OUTLINED_FUNCTION_106_8();
    if (!ventproc(v0, v11, v12, v13, v14, v172))
    {
      v17 = OUTLINED_FUNCTION_41_21();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_59_16();
      get_parm(v20, v21, v22, -6);
      v168[0] = 0xFFFC0000FFFCLL;
      v167 = 0xFFFC0000FFFCLL;
      v23 = OUTLINED_FUNCTION_89_11();
      push_ptr_init(v23, v24);
      fence_46(v0, &_MergedGlobals_39);
      v25 = OUTLINED_FUNCTION_37_23();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_49_17();
      v29 = 0;
      v30 = 0;
      if (!lpta_loadp_setscan_r(v27, v28, 3))
      {
        while (2)
        {
          bspush_ca_scan(v0, 3);
          v31 = OUTLINED_FUNCTION_54_17();
          if (testFldeq(v31, 3u, v32, 2) || (v29 = v30, advance_tok(v0, v33, v34, v35)))
          {
LABEL_40:
            LODWORD(v124) = v30;
LABEL_41:
            v125 = *(v0 + 104);
            if (v125)
            {
              v126 = OUTLINED_FUNCTION_53_17(v125);
              v29 = v124;
            }

            else
            {
              v126 = vback(v0, v124);
              v29 = 0;
            }

            v30 = v29;
            v64 = v29;
            v99 = v29;
            switch(v126)
            {
              case 1:
                goto LABEL_9;
              case 2:
                continue;
              case 3:
                v128 = advance_tok(v0, v124, v29, v127);
                v30 = v29;
                LODWORD(v124) = v29;
                if (!v128)
                {
                  continue;
                }

                goto LABEL_41;
              case 4:
                goto LABEL_8;
              case 5:
                goto LABEL_31;
              case 6:
                goto LABEL_10;
              case 7:
                goto LABEL_15;
              case 8:
                v54 = v29;
                goto LABEL_14;
              case 9:
                goto LABEL_16;
              case 10:
                savescptr(v0, 10, v0 + 1272);
                v130 = OUTLINED_FUNCTION_10_42();
                v133 = testFldeq(v130, v131, v132, 1);
                LODWORD(v124) = v29;
                if (v133)
                {
                  goto LABEL_41;
                }

                v136 = advance_tok(v0, v29, v134, v135);
                LODWORD(v124) = v29;
                if (v136)
                {
                  goto LABEL_41;
                }

                goto LABEL_57;
              case 11:
                v137 = OUTLINED_FUNCTION_35_26();
                v141 = testFldeq(v137, v138, v139, v140);
                v124 = v29;
                if (v141)
                {
                  goto LABEL_41;
                }

                goto LABEL_55;
              case 12:
                bspop_boa(v0);
                goto LABEL_55;
              case 13:
LABEL_55:
                v142 = advance_tok(v0, v124, v99, v127);
                v64 = v29;
                LODWORD(v124) = v29;
                if (!v142)
                {
                  goto LABEL_37;
                }

                goto LABEL_41;
              case 14:
                goto LABEL_37;
              case 15:
LABEL_57:
                savescptr(v0, 15, v166);
                goto LABEL_16;
              case 16:
                v71 = 2;
                goto LABEL_17;
              case 17:
                OUTLINED_FUNCTION_3_45();
                v129 = test_string_s();
                v99 = v29;
                LODWORD(v124) = v29;
                if (!v129)
                {
                  goto LABEL_25;
                }

                goto LABEL_41;
              case 18:
                goto LABEL_25;
              case 19:
                goto LABEL_18;
              case 20:
                goto LABEL_19;
              case 21:
                goto LABEL_22;
              case 22:
                goto LABEL_20;
              case 23:
                goto LABEL_21;
              case 24:
                goto LABEL_29;
              case 25:
                goto LABEL_30;
              default:
                goto LABEL_3;
            }
          }

          break;
        }

LABEL_8:
        OUTLINED_FUNCTION_85_12();
        v36 = OUTLINED_FUNCTION_70_13();
        savescptr(v36, v37, v38);
      }

LABEL_9:
      fence_46(v0, &unk_280581339);
      v39 = OUTLINED_FUNCTION_23_34();
      startloop(v39, v40);
      v41 = OUTLINED_FUNCTION_20_35();
      move_i(v41, v42, v43);
      v44 = OUTLINED_FUNCTION_49_17();
      move_i(v44, v45, 1);
      copyvar(v0, &v167, (v0 + 4024));
      v46 = OUTLINED_FUNCTION_43_20();
      LODWORD(v30) = v29;
      if (for_test(v46, v47, &v167, &v167 + 2))
      {
        goto LABEL_40;
      }

      while (1)
      {
LABEL_10:
        v48 = OUTLINED_FUNCTION_75_12();
        if (!lpta_loadp_setscan_r(v48, v49, 3))
        {
          v53 = advance_tok(v0, v50, v51, v52);
          v54 = v29;
          if (!v53)
          {
LABEL_14:
            v29 = v54;
            v55 = OUTLINED_FUNCTION_67_15();
            savescptr(v55, v56, v57);
          }
        }

LABEL_15:
        v58 = OUTLINED_FUNCTION_37_23();
        starttest(v58, v59);
        v60 = OUTLINED_FUNCTION_62_16();
        v63 = lpta_loadp_setscan_r(v60, v61, v62);
        v64 = v29;
        if (!v63)
        {
LABEL_37:
          v116 = v64;
          v117 = OUTLINED_FUNCTION_26_32();
          bspush_ca_scan(v117, v118);
          v119 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v119, v120);
          OUTLINED_FUNCTION_37_23();
          bspush_ca_scan_boa();
          v121 = OUTLINED_FUNCTION_10_42();
          if (testFldeq(v121, v122, v123, 1))
          {
            LODWORD(v30) = v116;
          }

          else
          {
            LODWORD(v30) = 1;
          }

          goto LABEL_40;
        }

LABEL_16:
        v65 = OUTLINED_FUNCTION_25_32();
        starttest(v65, v66);
        v67 = OUTLINED_FUNCTION_39_22();
        v70 = lpta_loadp_setscan_r(v67, v68, v69);
        v71 = 2;
        if (!v70)
        {
          v96 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v96, v97);
          OUTLINED_FUNCTION_4_44();
          v98 = test_string_s();
          LODWORD(v30) = v29;
          v99 = v29;
          if (v98)
          {
            goto LABEL_40;
          }

LABEL_25:
          v29 = v99;
          *(v0 + 136) = 1;
          v100 = OUTLINED_FUNCTION_7_43();
          v103 = test_ptr(v100, v101, v102);
          v71 = 1;
          LODWORD(v30) = v29;
          if (v103)
          {
            goto LABEL_40;
          }
        }

LABEL_17:
        WORD1(v168[0]) = v71;
LABEL_18:
        v72 = OUTLINED_FUNCTION_37_23();
        starttest(v72, v73);
        v74 = OUTLINED_FUNCTION_62_16();
        if (lpta_loadp_setscan_r(v74, v75, v76))
        {
LABEL_19:
          v77 = OUTLINED_FUNCTION_70_13();
          lpta_rpta_loadp(v77, v78, v79);
          v80 = OUTLINED_FUNCTION_38_22();
          v82 = setd_lookup(v80, v81, 481);
          v83 = v29;
          if (!v82)
          {
            goto LABEL_27;
          }

LABEL_20:
          v84 = OUTLINED_FUNCTION_70_13();
          lpta_rpta_loadp(v84, v85, v86);
          v87 = OUTLINED_FUNCTION_38_22();
          v89 = setd_lookup(v87, v88, 482);
          v83 = v29;
          if (!v89)
          {
LABEL_27:
            WORD1(v168[0]) = 1;
            v95 = v83;
LABEL_28:
            *(v0 + 5974) = 1;
            v29 = v95;
            goto LABEL_29;
          }

LABEL_21:
          v90 = OUTLINED_FUNCTION_70_13();
          lpta_rpta_loadp(v90, v91, v92);
          v93 = OUTLINED_FUNCTION_38_22();
          if (setd_lookup(v93, v94, 483))
          {
LABEL_22:
            v95 = v29;
            if (WORD1(v168[0]) == 1)
            {
              goto LABEL_28;
            }
          }

          else
          {
            WORD1(v168[0]) = 2;
          }
        }

        else
        {
          v109 = OUTLINED_FUNCTION_35_26();
          if (testFldeq(v109, v110, v111, v112) || advance_tok(v0, v113, v114, v115))
          {
            LODWORD(v30) = v29;
            goto LABEL_40;
          }

          WORD1(v168[0]) = 0;
        }

LABEL_29:
        v104 = OUTLINED_FUNCTION_37_23();
        starttest(v104, v105);
        insert_stress();
LABEL_30:
        v106 = OUTLINED_FUNCTION_67_15();
        copyvar(v106, v107, v108);
        if (!for_adv(v0, 5, 6, v168 + 2, &v167, &v167 + 2))
        {
LABEL_31:
          *(v1 + 8) = v169;
          v15 = 0;
          goto LABEL_4;
        }
      }
    }
  }

LABEL_3:
  v15 = 94;
LABEL_4:
  vretproc(v0);
  return v15;
}

uint64_t assign_suffix_stress()
{
  OUTLINED_FUNCTION_108_7();
  v110 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_19(v1, v2, v3, v4, v5, v6, v7, v8, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0], v108[1], v108[2], v108[3]);
  OUTLINED_FUNCTION_51_17();
  bzero(v109, v9);
  if (setjmp(v109))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_57_16();
  if (ventproc(v0, v10, v11, v12, v13, v109))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_34_27();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_89_11();
  push_ptr_init(v18, v19);
  fence_46(v0, &_MergedGlobals_39);
  v20 = OUTLINED_FUNCTION_37_23();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_43_20();
  v24 = lpta_loadp_setscan_l(v22, v23, 3);
  v25 = 0;
  LODWORD(v26) = 0;
  if (!v24)
  {
LABEL_5:
    v27 = v25;
    v28 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v28, v29);
LABEL_7:
    OUTLINED_FUNCTION_85_12();
    savescptr(v0, v30, v108);
    v31 = OUTLINED_FUNCTION_54_17();
    if (testFldeq(v31, 3u, v32, 2))
    {
      goto LABEL_30;
    }

    LODWORD(v26) = v27;
    if (advance_tok(v0, v33, v34, v35))
    {
      goto LABEL_30;
    }
  }

  while (2)
  {
    v27 = v26;
    if (*(v0 + 4066))
    {
      goto LABEL_25;
    }

LABEL_12:
    v36 = OUTLINED_FUNCTION_28_30();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_39_22();
    if (!lpta_loadp_setscan_r(v38, v39, v40))
    {
      OUTLINED_FUNCTION_4_44();
      if (!test_string_s())
      {
        v56 = OUTLINED_FUNCTION_27_31();
        bspush_ca_scan(v56, v57);
        v58 = v27;
LABEL_21:
        v55 = v58;
        if (!test_synch(v0, 9, 1, &unk_280581339))
        {
          v54 = 1;
          goto LABEL_24;
        }

        v27 = v55;
LABEL_30:
        LODWORD(v26) = v27;
LABEL_31:
        v75 = *(v0 + 104);
        if (v75)
        {
          v76 = OUTLINED_FUNCTION_53_17(v75);
          v26 = v77;
        }

        else
        {
          v76 = vback(v0, v26);
          v26 = 0;
        }

        v25 = v26;
        v58 = v26;
        v49 = v26;
        v65 = v26;
        switch(v76)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_5;
          case 3:
            v78 = advance_tok(v0, v26, v26, v26);
            v25 = v26;
            if (!v78)
            {
              goto LABEL_5;
            }

            goto LABEL_31;
          case 4:
            v27 = v26;
            goto LABEL_7;
          case 5:
            v27 = v26;
            goto LABEL_12;
          case 6:
            goto LABEL_25;
          case 7:
            v27 = v26;
            goto LABEL_14;
          case 8:
            OUTLINED_FUNCTION_2_46();
            v79 = test_string_s();
            v58 = v26;
            if (!v79)
            {
              goto LABEL_21;
            }

            goto LABEL_31;
          case 9:
            goto LABEL_21;
          case 11:
            OUTLINED_FUNCTION_2_46();
            v80 = test_string_s();
            v49 = v26;
            if (!v80)
            {
              goto LABEL_17;
            }

            goto LABEL_31;
          case 12:
            goto LABEL_17;
          case 13:
            goto LABEL_18;
          case 14:
            goto LABEL_45;
          case 15:
            goto LABEL_26;
          case 16:
            v81 = advance_tok(v0, v26, v26, v26);
            v65 = v26;
            if (!v81)
            {
              goto LABEL_26;
            }

            goto LABEL_31;
          case 17:
            v27 = v26;
            goto LABEL_27;
          case 18:
            bspop_boa(v0);
            if (advance_tok(v0, v82, v83, v84))
            {
              goto LABEL_31;
            }

            break;
          case 19:
            break;
          case 20:
            goto LABEL_46;
          default:
            goto LABEL_3;
        }

        savescptr(v0, 19, v0 + 1288);
        goto LABEL_45;
      }
    }

    break;
  }

LABEL_14:
  v41 = OUTLINED_FUNCTION_26_32();
  starttest(v41, v42);
  v43 = OUTLINED_FUNCTION_39_22();
  if (lpta_loadp_setscan_r(v43, v44, v45) || (OUTLINED_FUNCTION_2_46(), test_string_s()))
  {
LABEL_3:
    vretproc(v0);
    return 94;
  }

  v46 = OUTLINED_FUNCTION_37_23();
  bspush_ca_scan(v46, v47);
  OUTLINED_FUNCTION_2_46();
  v48 = test_string_s();
  v49 = v27;
  if (v48)
  {
    goto LABEL_30;
  }

LABEL_17:
  v27 = v49;
  OUTLINED_FUNCTION_2_46();
  LODWORD(v26) = v27;
  if (test_string_s())
  {
    goto LABEL_30;
  }

LABEL_18:
  v27 = v26;
  v50 = OUTLINED_FUNCTION_19_37();
  if (test_synch(v50, v51, v52, v53))
  {
    goto LABEL_30;
  }

  v54 = 2;
  v55 = v26;
LABEL_24:
  *(v0 + 4066) = v54;
  LODWORD(v26) = v55;
LABEL_25:
  v59 = OUTLINED_FUNCTION_37_23();
  starttest(v59, v60);
  v61 = OUTLINED_FUNCTION_62_16();
  v64 = lpta_loadp_setscan_r(v61, v62, v63);
  v65 = v26;
  if (!v64)
  {
LABEL_26:
    v27 = v65;
    v66 = OUTLINED_FUNCTION_25_32();
    bspush_ca_scan(v66, v67);
LABEL_27:
    savescptr(v0, 17, v0 + 1272);
    v68 = OUTLINED_FUNCTION_10_42();
    if (!testFldeq(v68, v69, v70, 1))
    {
      OUTLINED_FUNCTION_37_23();
      bspush_ca_scan_boa();
      v71 = OUTLINED_FUNCTION_35_26();
      if (!testFldeq(v71, v72, v73, v74))
      {
        v27 = 1;
      }
    }

    goto LABEL_30;
  }

LABEL_45:
  insert_stress();
LABEL_46:
  vretproc(v0);
  return 0;
}

void set_extrametrical_syll(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_108_7();
  v38 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v24, v4);
  OUTLINED_FUNCTION_51_17();
  bzero(v37, v5);
  v6 = setjmp(v37);
  if (!v6 && !OUTLINED_FUNCTION_113_7(v6, v24, v7, v8, v9, v10, v11, v12, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v24[17], v24[18], v24[19], v24[20], v24[21], v24[22], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37[0]))
  {
    v13 = OUTLINED_FUNCTION_34_27();
    get_parm(v13, v14, v15, -6);
    fence_46(v2, &_MergedGlobals_39);
    starttest(v2, 1);
    v16 = OUTLINED_FUNCTION_43_20();
    if (!lpta_loadp_setscan_l(v16, v17, 1))
    {
      OUTLINED_FUNCTION_4_44();
      if (!test_string_s())
      {
        while (2)
        {
          v18 = OUTLINED_FUNCTION_43_20();
          savescptr(v18, v19, &v25);
          OUTLINED_FUNCTION_2_46();
          if (!test_string_s())
          {
            v20 = OUTLINED_FUNCTION_66_15();
            bspush_ca_scan(v20, v21);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_8;
          }

          while (1)
          {
            v22 = *(v2 + 104);
            v23 = v22 ? OUTLINED_FUNCTION_53_17(v22) : OUTLINED_FUNCTION_99_8();
            if (v23 != 3)
            {
              break;
            }

            OUTLINED_FUNCTION_2_46();
LABEL_8:
            if (!test_string_s())
            {
              goto LABEL_17;
            }
          }

          if ((v23 - 4) < 2)
          {
LABEL_17:
            *(v3 + 8) = v26;
            break;
          }

          if (v23 == 2)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  vretproc(v2);
  OUTLINED_FUNCTION_87_11();
}

uint64_t insert_stressval(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v103 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_47_18(a1, a2, a3, a4, a5, a6, a7, a8, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, SHIDWORD(v89), v91, v93, v95, v97);
  OUTLINED_FUNCTION_51_17();
  bzero(v102, v11);
  v12 = setjmp(v102);
  if (v12 || OUTLINED_FUNCTION_69_13(v12, v13, v14, v15, v16, v17, v18, v19, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v99, SHIDWORD(v99), v100, SWORD2(v100), SHIWORD(v100), v101, SWORD2(v101), SBYTE6(v101), SHIBYTE(v101)))
  {
LABEL_10:
    vretproc(a1);
    return 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_73_12();
    get_parm(v20, v21, a2, -6);
    v22 = OUTLINED_FUNCTION_72_12();
    get_parm(v22, v23, a3, -6);
    v24 = OUTLINED_FUNCTION_59_16();
    get_parm(v24, v25, v26, -4);
    fence_46(a1, &_MergedGlobals_39);
    v27 = OUTLINED_FUNCTION_37_23();
    starttest(v27, v28);
    if (*(a1 + 6278) == 1)
    {
      v29 = OUTLINED_FUNCTION_62_16();
      move_i(v29, v30, v31);
    }

    while (1)
    {
      v32 = OUTLINED_FUNCTION_29_30();
      lpta_rpta_loadp(v32, v33, v34);
      OUTLINED_FUNCTION_56_17();
      insert_2ptv();
      if (!v35)
      {
        break;
      }

      v36 = *(a1 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_53_17(v36);
      }

      else
      {
        v38 = OUTLINED_FUNCTION_48_17();
        v37 = vback(v38, v39);
      }

      if (v37 != 1)
      {
        goto LABEL_10;
      }
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t assign_root_stress()
{
  OUTLINED_FUNCTION_21_34();
  v68 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_19(v1, v2, v3, v4, v5, v6, v7, v8, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  OUTLINED_FUNCTION_51_17();
  bzero(v67, v9);
  if (setjmp(v67) || (OUTLINED_FUNCTION_57_16(), ventproc(v0, v10, v11, v12, v13, v67)))
  {
    v14 = 94;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_41_21();
    get_parm(v16, v17, v18, -6);
    v19 = OUTLINED_FUNCTION_34_27();
    get_parm(v19, v20, v21, -6);
    fence_46(v0, &_MergedGlobals_39);
    OUTLINED_FUNCTION_41_21();
    if (exceptional_stress_from_dict())
    {
      if (apply_spanish_stress(v0))
      {
        penult_one_two_longalt(v0, v22, v23);
        if (v24)
        {
          if (final_one(v0))
          {
            if (penult_one(v0))
            {
              final_two(v0, v25, v26);
              if (v29)
              {
                antepenult_one(v0, v27, v28);
                if (v32)
                {
                  penult_two(v0, v30, v31);
                  if (v35)
                  {
                    special_cases(v0, v33, v34);
                    if (v38)
                    {
                      default_stress(v0, v36, v37);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v39 = OUTLINED_FUNCTION_72_12();
      two_stress_begin(v39);
    }

    v14 = 0;
  }

  vretproc(v0);
  return v14;
}

uint64_t exceptional_stress_from_dict()
{
  OUTLINED_FUNCTION_21_34();
  v59 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v57[0] = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(&v56, v2);
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_114_7(v3, v4);
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_36_24();
  if (OUTLINED_FUNCTION_105_8(v5, v6, v7, v8, v9))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_83_12();
  get_parm(v11, v12, v13, -6);
  v14 = OUTLINED_FUNCTION_59_16();
  get_parm(v14, v15, v16, -6);
  v17 = OUTLINED_FUNCTION_73_12();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v19, v20);
  v57[0] = 65532;
  fence_46(v0, &_MergedGlobals_39);
  if (*(v0 + 5942) == 1)
  {
    v21 = OUTLINED_FUNCTION_37_23();
    starttest(v21, v22);
    if (!lpta_loadp_setscan_r(v0, v58, 7) && !advance_tok(v0, v23, v24, v25))
    {
      while (2)
      {
        OUTLINED_FUNCTION_77_12();
        v26 = OUTLINED_FUNCTION_67_15();
        savescptr(v26, v27, v28);
        if (advance_tok(v0, v29, v30, v31))
        {
LABEL_10:
          v47 = *(v0 + 104);
          if (v47)
          {
            v48 = OUTLINED_FUNCTION_53_17(v47);
          }

          else
          {
            v48 = OUTLINED_FUNCTION_99_8();
          }

          if ((v48 - 1) <= 7)
          {
            OUTLINED_FUNCTION_91_10();
            switch(v49)
            {
              case 1:
                goto LABEL_9;
              case 2:
                continue;
              case 3:
                goto LABEL_8;
              case 4:
              case 5:
                goto LABEL_3;
              case 6:
                goto LABEL_16;
              case 7:
                goto LABEL_17;
              default:
                goto LABEL_15;
            }
          }

          goto LABEL_3;
        }

        break;
      }

LABEL_8:
      OUTLINED_FUNCTION_85_12();
      v32 = OUTLINED_FUNCTION_80_12();
      savescptr(v32, v33, v34);
    }

LABEL_9:
    v35 = OUTLINED_FUNCTION_23_34();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_11_42();
    move_i(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_65_15();
    if (!insert_stressval(v40, v41, v42, v57, v43, v44, v45, v46))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

LABEL_15:
  v50 = OUTLINED_FUNCTION_12_41();
  multi_stress(v50, v51, v52);
  if (v53)
  {
LABEL_16:
    v54 = OUTLINED_FUNCTION_12_41();
    if (except_stress1(v54))
    {
LABEL_17:
      v55 = OUTLINED_FUNCTION_12_41();
      except_stress2(v55);
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_98_9();
}

uint64_t apply_spanish_stress(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  HIDWORD(v75) = 0;
  v76 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v74, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v86, v3);
  v4 = setjmp(v86);
  if (v4 || OUTLINED_FUNCTION_113_7(v4, v74, v5, v6, v7, v8, v9, v10, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86[0]))
  {
    goto LABEL_3;
  }

  HIDWORD(v75) = 65532;
  v76 = 65532;
  fence_46(a1, &_MergedGlobals_39);
  v13 = OUTLINED_FUNCTION_81_12();
  starttest(v13, v14);
  v15 = OUTLINED_FUNCTION_22_34();
  if (!lpta_loadp_setscan_l(v15, v16, v17))
  {
    v43 = OUTLINED_FUNCTION_81_12();
    bspush_ca_scan(v43, v44);
    OUTLINED_FUNCTION_38_22();
    goto LABEL_31;
  }

LABEL_6:
  OUTLINED_FUNCTION_118_7();
  if (!v18)
  {
LABEL_3:
    v11 = 94;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_37_23();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_8_43();
    if (lpta_loadp_setscan_l(v21, v22, v23) || (OUTLINED_FUNCTION_5_44(), test_string_s()))
    {
LABEL_10:
      v24 = OUTLINED_FUNCTION_37_23();
      starttest(v24, v25);
      v26 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v26, v27, v28))
      {
LABEL_38:
        apply_longalt_final_two_opt(a1);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v29, v30);
LABEL_12:
        v31 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v31, v32);
LABEL_13:
        OUTLINED_FUNCTION_2_46();
        if (test_string_s())
        {
          goto LABEL_18;
        }

LABEL_14:
        OUTLINED_FUNCTION_2_46();
        if (test_string_s())
        {
          goto LABEL_18;
        }

        v33 = OUTLINED_FUNCTION_37_23();
        starttest(v33, v34);
        v35 = OUTLINED_FUNCTION_11_42();
        move_i(v35, v36, v37);
        for (i = OUTLINED_FUNCTION_18_37(); ; i = OUTLINED_FUNCTION_20_35())
        {
          move_i(i, v39, v40);
          v58 = OUTLINED_FUNCTION_32_28();
          apply_long_alternation(v58, v59, v60);
          if (!v61)
          {
            break;
          }

          do
          {
LABEL_18:
            while (2)
            {
              v45 = *(a1 + 104);
              if (v45)
              {
                v46 = OUTLINED_FUNCTION_53_17(v45);
              }

              else
              {
                v46 = OUTLINED_FUNCTION_99_8();
              }

              switch(v46)
              {
                case 1:
                  goto LABEL_6;
                case 2:
                  v51 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v51, v52);
                  OUTLINED_FUNCTION_4_44();
                  break;
                case 3:
                  goto LABEL_32;
                case 4:
                  v47 = OUTLINED_FUNCTION_23_34();
                  bspush_ca_scan(v47, v48);
                  goto LABEL_23;
                case 5:
LABEL_23:
                  OUTLINED_FUNCTION_2_46();
                  if (!test_string_s())
                  {
                    goto LABEL_24;
                  }

                  continue;
                case 6:
LABEL_24:
                  v49 = OUTLINED_FUNCTION_28_30();
                  bspush_ca_scan(v49, v50);
                  goto LABEL_25;
                case 7:
LABEL_25:
                  OUTLINED_FUNCTION_2_46();
                  if (!test_string_s())
                  {
                    goto LABEL_29;
                  }

                  continue;
                case 8:
LABEL_29:
                  OUTLINED_FUNCTION_2_46();
                  break;
                case 9:
                case 10:
                case 15:
                case 16:
                case 22:
                  goto LABEL_39;
                case 12:
                  goto LABEL_10;
                case 13:
                  goto LABEL_35;
                case 14:
                  goto LABEL_36;
                case 17:
                  goto LABEL_38;
                case 18:
                  OUTLINED_FUNCTION_2_46();
                  if (!test_string_s())
                  {
                    goto LABEL_12;
                  }

                  continue;
                case 19:
                  goto LABEL_12;
                case 20:
                  goto LABEL_13;
                case 21:
                  goto LABEL_14;
                default:
                  goto LABEL_3;
              }

              break;
            }

LABEL_31:
            ;
          }

          while (test_string_s());
LABEL_32:
          v53 = OUTLINED_FUNCTION_37_23();
          starttest(v53, v54);
          v55 = OUTLINED_FUNCTION_11_42();
          move_i(v55, v56, v57);
        }
      }

LABEL_39:
      v11 = 0;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v41, v42);
LABEL_35:
      OUTLINED_FUNCTION_2_46();
      if (test_string_s())
      {
        goto LABEL_18;
      }

LABEL_36:
      v62 = OUTLINED_FUNCTION_37_23();
      starttest(v62, v63);
      v64 = OUTLINED_FUNCTION_20_35();
      move_i(v64, v65, v66);
      v11 = 0;
      v67 = OUTLINED_FUNCTION_49_17();
      move_i(v67, v68, 0);
      v69 = OUTLINED_FUNCTION_29_30();
      apply_long_alternation(v69, v70, v71);
      if (v72)
      {
        goto LABEL_18;
      }
    }
  }

  vretproc(a1);
  return v11;
}

void penult_one_two_longalt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  v4 = v3;
  v64 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v59 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v57, v5);
  OUTLINED_FUNCTION_51_17();
  bzero(v63, v6);
  if (!setjmp(v63) && !ventproc(v4, v57, v62, v61, v60, v63))
  {
    v58 = 65532;
    v59 = 65532;
    fence_46(v4, &_MergedGlobals_39);
    if (*(v4 + 4002) >= 4)
    {
      while (2)
      {
        v7 = OUTLINED_FUNCTION_92_10();
        starttest(v7, v8);
        v9 = OUTLINED_FUNCTION_8_43();
        if (lpta_loadp_setscan_l(v9, v10, v11) || (OUTLINED_FUNCTION_5_44(), test_string_s()))
        {
LABEL_6:
          v12 = OUTLINED_FUNCTION_94_9();
          starttest(v12, v13);
          if (*(v4 + 4002) < 5 || (v14 = OUTLINED_FUNCTION_8_43(), lpta_loadp_setscan_l(v14, v15, v16)) || (OUTLINED_FUNCTION_38_22(), test_string_s()))
          {
LABEL_9:
            v17 = OUTLINED_FUNCTION_102_8();
            starttest(v17, v18);
            if (*(v4 + 4002) < 5)
            {
              break;
            }

            v19 = OUTLINED_FUNCTION_8_43();
            if (lpta_loadp_setscan_l(v19, v20, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_17_38();
            if (test_string_s())
            {
              break;
            }

            v22 = OUTLINED_FUNCTION_93_9();
            bspush_ca_scan(v22, v23);
            OUTLINED_FUNCTION_3_45();
LABEL_29:
            if (!test_string_s())
            {
LABEL_30:
              v51 = OUTLINED_FUNCTION_86_11();
              starttest(v51, v52);
              move_i(v4, &v58, 1);
              move_i(v4, &v59, 1);
              v53 = OUTLINED_FUNCTION_34_27();
              apply_long_alternation(v53, v54, v55);
              if (!v56)
              {
                break;
              }
            }
          }

          else
          {
            v24 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v24, v25);
            OUTLINED_FUNCTION_2_46();
LABEL_23:
            if (!test_string_s())
            {
LABEL_24:
              v42 = OUTLINED_FUNCTION_82_12();
              starttest(v42, v43);
              move_i(v4, &v59, 2);
              move_i(v4, &v58, 0);
              v44 = OUTLINED_FUNCTION_42_21();
              apply_long_alternation(v44, v45, &v58);
              if (!v46)
              {
                break;
              }
            }
          }
        }

        else
        {
          v26 = OUTLINED_FUNCTION_0_47();
          if (!testFldeq(v26, v27, v28, v29) && !advance_tok(v4, v30, v31, v32))
          {
            v33 = OUTLINED_FUNCTION_0_47();
            if (!testFldeq(v33, v34, v35, v36) && !advance_tok(v4, v37, v38, v39))
            {
              apply_longalt_final_two_opt(v4);
              break;
            }
          }
        }

        v40 = *(v4 + 104);
        if (v40)
        {
          v41 = OUTLINED_FUNCTION_53_17(v40);
        }

        else
        {
          v41 = OUTLINED_FUNCTION_99_8();
        }

        switch(v41)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_6;
          case 5:
            goto LABEL_9;
          case 6:
            OUTLINED_FUNCTION_2_46();
            goto LABEL_23;
          case 7:
            goto LABEL_24;
          case 10:
            v49 = OUTLINED_FUNCTION_66_15();
            bspush_ca_scan(v49, v50);
            OUTLINED_FUNCTION_5_44();
            goto LABEL_29;
          case 11:
            goto LABEL_30;
          case 12:
            v47 = OUTLINED_FUNCTION_100_8();
            bspush_ca_scan(v47, v48);
            OUTLINED_FUNCTION_5_44();
            goto LABEL_29;
          case 13:
            OUTLINED_FUNCTION_3_45();
            goto LABEL_29;
          default:
            goto LABEL_31;
        }
      }
    }
  }

LABEL_31:
  vretproc(v4);
  OUTLINED_FUNCTION_87_11();
}

uint64_t final_one(uint64_t a1)
{
  v613 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_30_30();
  v608[23] = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v608, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v612, v3);
  if (!setjmp(v612))
  {
    OUTLINED_FUNCTION_36_24();
    if (!ventproc(a1, v4, v5, v6, v7, v612))
    {
      push_ptr_init(a1, v611);
      v9 = OUTLINED_FUNCTION_75_12();
      push_ptr_init(v9, v10);
      v11 = OUTLINED_FUNCTION_73_12();
      push_ptr_init(v11, v12);
      v609[0] = 65532;
      v609[1] = 65532;
      v13 = OUTLINED_FUNCTION_112_7();
      push_ptr_init(v13, v14);
      fence_46(a1, &_MergedGlobals_39);
      v15 = OUTLINED_FUNCTION_55_17();
      lpta_rpta_loadp(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_38_22();
      v20 = setd_lookup(v18, v19, 477);
      v21 = 0;
      LODWORD(v22) = 0;
      v23 = 0;
      if (!v20)
      {
LABEL_7:
        while (2)
        {
          v34 = v23;
          v35 = OUTLINED_FUNCTION_37_23();
          starttest(v35, v36);
          v37 = OUTLINED_FUNCTION_39_22();
          v40 = lpta_loadp_setscan_r(v37, v38, v39);
          v41 = 10;
          if (v40)
          {
            goto LABEL_8;
          }

          v76 = OUTLINED_FUNCTION_1_46();
          if (!testFldeq(v76, v77, v78, v79) && !advance_tok(a1, v80, v81, v82))
          {
            v83 = OUTLINED_FUNCTION_1_46();
            if (!testFldeq(v83, v84, v85, v86) && !advance_tok(a1, v87, v88, v89))
            {
              OUTLINED_FUNCTION_120_7();
              v41 = 10;
LABEL_8:
              v42 = v34;
LABEL_9:
              if (v41 == 10)
              {
                v43 = 10;
                if (*(a1 + 5294) == *(a1 + 6002) && *(a1 + 3998) == 4)
                {
                  v44 = OUTLINED_FUNCTION_37_23();
                  starttest(v44, v45);
                  v46 = OUTLINED_FUNCTION_11_42();
                  move_i(v46, v47, v48);
                  v49 = OUTLINED_FUNCTION_43_20();
                  move_i(v49, v50, v51);
                  v52 = OUTLINED_FUNCTION_32_28();
                  apply_long_alternation(v52, v53, v54);
                  v32 = 10;
                  v33 = v42;
                  if (!v55)
                  {
LABEL_13:
                    v56 = OUTLINED_FUNCTION_58_16();
                    if (!lpta_loadp_setscan_r(v56, v57, 7) && !advance_tok(a1, v58, v59, v60))
                    {
LABEL_15:
                      v61 = OUTLINED_FUNCTION_111_7();
                      savescptr(v61, v62, v63);
                    }

                    goto LABEL_270;
                  }

                  goto LABEL_286;
                }

LABEL_263:
                v90 = v42;
                v519 = OUTLINED_FUNCTION_37_23();
                starttest(v519, v520);
                v521 = OUTLINED_FUNCTION_20_35();
                move_i(v521, v522, v523);
                v524 = OUTLINED_FUNCTION_49_17();
                move_i(v524, v525, 0);
                v526 = OUTLINED_FUNCTION_29_30();
                apply_strong_alternation(v526, v527, v528);
                v32 = v43;
LABEL_264:
                v33 = v90;
                if (!v101)
                {
                  goto LABEL_3;
                }

                goto LABEL_286;
              }

              LODWORD(v43) = v41;
LABEL_18:
              if (v43 == 12)
              {
                v64 = OUTLINED_FUNCTION_37_23();
                starttest_e(v64, v65);
                v66 = OUTLINED_FUNCTION_11_42();
                move_i(v66, v67, v68);
                v69 = OUTLINED_FUNCTION_18_37();
                move_i(v69, v70, v71);
                v72 = OUTLINED_FUNCTION_32_28();
                apply_strong_alternation(v72, v73, v74);
                v32 = 12;
                v33 = v42;
                if (!v75)
                {
                  goto LABEL_3;
                }

                goto LABEL_286;
              }

              v90 = v42;
LABEL_27:
              if (v43 == 20)
              {
                v91 = OUTLINED_FUNCTION_37_23();
                starttest_e(v91, v92);
                v93 = OUTLINED_FUNCTION_18_37();
                move_i(v93, v94, v95);
                v96 = OUTLINED_FUNCTION_49_17();
                move_i(v96, v97, 0);
                v98 = OUTLINED_FUNCTION_29_30();
                apply_strong_alternation(v98, v99, v100);
                v32 = 20;
                goto LABEL_264;
              }

LABEL_268:
              if (v43)
              {
                goto LABEL_3;
              }

              v529 = OUTLINED_FUNCTION_37_23();
              starttest(v529, v530);
              v531 = OUTLINED_FUNCTION_11_42();
              move_i(v531, v532, v533);
              v534 = OUTLINED_FUNCTION_49_17();
              move_i(v534, v535, 0);
              v536 = OUTLINED_FUNCTION_42_21();
              apply_long_alternation(v536, v537, v609);
              v32 = 0;
              v33 = v90;
              if (!v538)
              {
LABEL_270:
                zero_stress_syll(a1);
                goto LABEL_3;
              }

LABEL_286:
              v43 = v32;
              LODWORD(v116) = v33;
LABEL_30:
              v102 = *(a1 + 104);
              if (v102)
              {
                v103 = OUTLINED_FUNCTION_53_17(v102);
                v22 = v104;
              }

              else
              {
                v103 = vback(a1, v116);
                v22 = 0;
              }

              v105 = v43;
              v106 = v43;
              v107 = v22;
              v108 = v43;
              v109 = v22;
              v110 = v43;
              v111 = v43;
              v112 = v22;
              v113 = v43;
              v114 = v22;
              v115 = v22;
              v116 = v43;
              v23 = v22;
              switch(v103)
              {
                case 1:
                  v21 = v43;
                  goto LABEL_5;
                case 2:
                case 5:
                case 9:
                case 29:
                case 48:
                case 113:
                case 122:
                case 135:
                case 158:
                case 160:
                  continue;
                case 3:
                  v21 = v43;
                  goto LABEL_276;
                case 4:
                  v122 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v122, v123);
                  goto LABEL_160;
                case 6:
                  v366 = OUTLINED_FUNCTION_28_30();
                  bspush_ca_scan(v366, v367);
                  OUTLINED_FUNCTION_5_44();
                  v368 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v368)
                  {
                    goto LABEL_30;
                  }

                  v369 = OUTLINED_FUNCTION_27_31();
                  bspush_ca_scan(v369, v370);
                  goto LABEL_154;
                case 7:
                  v331 = OUTLINED_FUNCTION_26_32();
                  bspush_ca_scan(v331, v332);
                  OUTLINED_FUNCTION_5_44();
                  v333 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v333)
                  {
                    goto LABEL_30;
                  }

                  v334 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v334, v335);
                  goto LABEL_140;
                case 8:
                case 136:
                  goto LABEL_154;
                case 10:
                  v201 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v201, v202);
                  OUTLINED_FUNCTION_4_44();
                  v203 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v203)
                  {
                    goto LABEL_30;
                  }

                  v204 = OUTLINED_FUNCTION_1_46();
                  v208 = testFldeq(v204, v205, v206, v207);
                  LODWORD(v116) = v22;
                  if (v208)
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v167 = OUTLINED_FUNCTION_15_40();
                  v170 = 3;
                  goto LABEL_217;
                case 11:
                  OUTLINED_FUNCTION_2_46();
                  v121 = test_string_s();
                  goto LABEL_89;
                case 12:
                  goto LABEL_140;
                case 13:
                case 123:
                  v288 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v288, v289);
                  goto LABEL_226;
                case 14:
                  bspop_boa(a1);
                  v228 = advance_tok(a1, v225, v226, v227);
                  LODWORD(v116) = v22;
                  if (v228)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_154;
                case 15:
                  v344 = OUTLINED_FUNCTION_25_32();
                  bspush_ca_scan(v344, v345);
                  goto LABEL_160;
                case 16:
                  goto LABEL_160;
                case 17:
                  v518 = v43;
                  v517 = v22;
                  goto LABEL_279;
                case 18:
                  goto LABEL_292;
                case 19:
                  bspop_boa(a1);
                  v430 = OUTLINED_FUNCTION_37_23();
                  starttest(v430, v431);
                  v432 = OUTLINED_FUNCTION_44_20();
                  lpta_loadpn(v432, v433);
                  v434 = OUTLINED_FUNCTION_84_12();
                  rpta_loadpn(v434, v435);
                  if (compare_ptas(a1))
                  {
                    goto LABEL_197;
                  }

                  if (testneq(a1))
                  {
                    goto LABEL_197;
                  }

                  v436 = OUTLINED_FUNCTION_44_20();
                  if (lpta_loadp_setscan_r(v436, v437, 3))
                  {
                    goto LABEL_197;
                  }

                  goto LABEL_129;
                case 20:
                case 22:
                  v426 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v426, v427);
                  OUTLINED_FUNCTION_5_44();
                  goto LABEL_213;
                case 21:
                  goto LABEL_293;
                case 23:
                  v199 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v199, v200);
                  goto LABEL_212;
                case 24:
LABEL_212:
                  OUTLINED_FUNCTION_2_46();
LABEL_213:
                  v463 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v463)
                  {
                    goto LABEL_30;
                  }

                  v105 = v43;
                  goto LABEL_293;
                case 25:
LABEL_197:
                  v438 = OUTLINED_FUNCTION_37_23();
                  starttest(v438, v439);
                  v440 = OUTLINED_FUNCTION_39_22();
                  if (lpta_loadp_setscan_l(v440, v441, v442))
                  {
                    goto LABEL_231;
                  }

                  v443 = OUTLINED_FUNCTION_0_47();
                  v447 = testFldeq(v443, v444, v445, v446);
                  LODWORD(v116) = v22;
                  if (v447)
                  {
                    goto LABEL_30;
                  }

                  v450 = advance_tok(a1, v22, v448, v449);
                  LODWORD(v116) = v22;
                  if (v450)
                  {
                    goto LABEL_30;
                  }

                  v451 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v451, v452);
                  v217 = OUTLINED_FUNCTION_0_47();
LABEL_201:
                  v453 = testFldeq(v217, v218, v219, v220);
                  v116 = v22;
                  if (v453)
                  {
                    goto LABEL_30;
                  }

LABEL_202:
                  v454 = advance_tok(a1, v116, v110, v108);
                  LODWORD(v116) = v22;
                  if (!v454)
                  {
                    goto LABEL_290;
                  }

                  goto LABEL_30;
                case 26:
                case 45:
                  bspop_boa(a1);
                  goto LABEL_3;
                case 27:
                case 46:
                  v117 = a1;
                  v118 = 3;
                  v119 = 1;
                  v120 = 4;
                  goto LABEL_133;
                case 28:
                case 47:
                  goto LABEL_134;
                case 30:
                  v217 = OUTLINED_FUNCTION_15_40();
                  v220 = 30;
                  goto LABEL_201;
                case 31:
                  goto LABEL_202;
                case 32:
                  v517 = v22;
                  goto LABEL_280;
                case 33:
                  v458 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v458, v459);
                  OUTLINED_FUNCTION_5_44();
                  v460 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v460)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_208;
                case 34:
                case 37:
                  goto LABEL_288;
                case 35:
                  v386 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v386, v387);
                  v388 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v388, v389);
                  goto LABEL_162;
                case 36:
LABEL_208:
                  v461 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v461, v462);
                  goto LABEL_209;
                case 38:
LABEL_209:
                  OUTLINED_FUNCTION_2_46();
                  v409 = test_string_s();
                  goto LABEL_210;
                case 39:
                  OUTLINED_FUNCTION_5_44();
                  v401 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v401)
                  {
                    goto LABEL_30;
                  }

                  v402 = OUTLINED_FUNCTION_1_46();
                  v406 = testFldeq(v402, v403, v404, v405);
                  LODWORD(v116) = v22;
                  if (v406)
                  {
                    goto LABEL_30;
                  }

                  v409 = advance_tok(a1, v22, v407, v408);
LABEL_210:
                  LODWORD(v116) = v22;
                  if (!v409)
                  {
                    goto LABEL_260;
                  }

                  goto LABEL_30;
                case 40:
                  OUTLINED_FUNCTION_2_46();
                  v233 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v233)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_162;
                case 41:
LABEL_162:
                  savescptr(a1, 41, v610);
                  OUTLINED_FUNCTION_5_44();
                  v390 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v390)
                  {
                    goto LABEL_163;
                  }

                  goto LABEL_30;
                case 42:
                  bspop_boa(a1);
LABEL_260:
                  v106 = v43;
                  v107 = v22;
                  goto LABEL_288;
                case 43:
                  goto LABEL_291;
                case 44:
                  bspop_boa(a1);
                  v319 = OUTLINED_FUNCTION_44_20();
                  v321 = lpta_loadp_setscan_r(v319, v320, 3);
                  LODWORD(v116) = v22;
                  if (v321)
                  {
                    goto LABEL_30;
                  }

LABEL_129:
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v322 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v322, v323);
                  v117 = a1;
                  v118 = 3;
                  v119 = 1;
                  goto LABEL_132;
                case 49:
                  goto LABEL_283;
                case 50:
                  v126 = OUTLINED_FUNCTION_37_23();
                  starttest(v126, v127);
                  v128 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v128, v129, v130))
                  {
                    goto LABEL_40;
                  }

                  v471 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v471, v472);
                  OUTLINED_FUNCTION_2_46();
                  v473 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v473)
                  {
                    goto LABEL_30;
                  }

                  v474 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v474, v475);
                  v476 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v476, v477);
                  goto LABEL_135;
                case 51:
                  LODWORD(v116) = v22;
                  if (*(a1 + 5294) != *(a1 + 6002))
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_boa();
                  v253 = OUTLINED_FUNCTION_8_43();
                  v256 = lpta_loadp_setscan_l(v253, v254, v255);
                  LODWORD(v116) = v22;
                  if (v256)
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_4_44();
                  v257 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v257)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_94;
                case 52:
                  v392 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v392, v393);
                  OUTLINED_FUNCTION_2_46();
                  v394 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v394)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_167;
                case 53:
                  v455 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v455, v456);
                  goto LABEL_205;
                case 54:
                  goto LABEL_297;
                case 55:
LABEL_205:
                  OUTLINED_FUNCTION_4_44();
                  v457 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v457)
                  {
                    goto LABEL_297;
                  }

                  goto LABEL_30;
                case 56:
                case 95:
                case 96:
                case 98:
                  goto LABEL_237;
                case 57:
                  v382 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v382, v383);
                  v384 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v384, v385);
                  goto LABEL_181;
                case 58:
                case 61:
LABEL_167:
                  v395 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v395, v396);
                  goto LABEL_189;
                case 59:
                case 87:
                case 94:
                  goto LABEL_190;
                case 60:
                  savescptr(a1, 60, v611);
                  v418 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v418, v419);
                  goto LABEL_189;
                case 62:
LABEL_189:
                  OUTLINED_FUNCTION_4_44();
                  v429 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v429)
                  {
                    goto LABEL_190;
                  }

                  goto LABEL_30;
                case 63:
                  v276 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v276, v277);
                  v278 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v278, v279);
                  OUTLINED_FUNCTION_2_46();
                  goto LABEL_187;
                case 64:
                  v124 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v124, v125);
                  OUTLINED_FUNCTION_2_46();
                  goto LABEL_177;
                case 65:
                  goto LABEL_181;
                case 66:
                  OUTLINED_FUNCTION_4_44();
LABEL_177:
                  v417 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v417)
                  {
                    goto LABEL_181;
                  }

                  goto LABEL_30;
                case 67:
                case 76:
                  goto LABEL_180;
                case 68:
                  OUTLINED_FUNCTION_4_44();
LABEL_187:
                  v428 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v428)
                  {
                    goto LABEL_188;
                  }

                  goto LABEL_30;
                case 69:
                  goto LABEL_188;
                case 70:
                  v186 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v186, v187);
                  v188 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v188, v189);
                  goto LABEL_165;
                case 71:
                  v179 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v179, v180);
                  OUTLINED_FUNCTION_4_44();
                  v181 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v181)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_183;
                case 72:
                  OUTLINED_FUNCTION_2_46();
                  v391 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v391)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_165;
                case 73:
                case 97:
LABEL_165:
                  OUTLINED_FUNCTION_3_45();
                  goto LABEL_191;
                case 74:
                  v397 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v397, v398);
                  v399 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v399, v400);
                  goto LABEL_173;
                case 75:
                case 82:
                case 99:
                  bspop_boa(a1);
                  goto LABEL_236;
                case 77:
                  OUTLINED_FUNCTION_2_46();
                  v410 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v410)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_173;
                case 78:
LABEL_173:
                  OUTLINED_FUNCTION_2_46();
                  v411 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v411)
                  {
                    v412 = OUTLINED_FUNCTION_1_46();
                    v416 = testFldeq(v412, v413, v414, v415);
                    LODWORD(v116) = v22;
                    if (!v416)
                    {
                      goto LABEL_175;
                    }
                  }

                  goto LABEL_30;
                case 79:
                  bspop_boa(a1);
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v167 = OUTLINED_FUNCTION_15_40();
                  v170 = 4;
                  goto LABEL_217;
                case 80:
                  bspop_boa(a1);
                  v376 = advance_tok(a1, v373, v374, v375);
                  LODWORD(v116) = v22;
                  if (v376)
                  {
                    goto LABEL_30;
                  }

                  v377 = OUTLINED_FUNCTION_1_46();
                  v381 = testFldeq(v377, v378, v379, v380);
                  LODWORD(v116) = v22;
                  if (v381)
                  {
                    goto LABEL_30;
                  }

LABEL_175:
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v167 = OUTLINED_FUNCTION_15_40();
                  v170 = 1;
                  goto LABEL_217;
                case 81:
                  bspop_boa(a1);
                  v425 = advance_tok(a1, v422, v423, v424);
                  LODWORD(v116) = v22;
                  if (v425)
                  {
                    goto LABEL_30;
                  }

LABEL_183:
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_184;
                case 83:
                  OUTLINED_FUNCTION_2_46();
                  v290 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v290)
                  {
                    goto LABEL_30;
                  }

LABEL_180:
                  v420 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v420, v421);
LABEL_181:
                  OUTLINED_FUNCTION_5_44();
                  goto LABEL_191;
                case 84:
                  v221 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v221, v222);
                  v223 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v223, v224);
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_97;
                case 85:
                  v171 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v171, v172);
                  OUTLINED_FUNCTION_2_46();
                  v173 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v173)
                  {
                    goto LABEL_30;
                  }

                  v174 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v174, v175);
                  OUTLINED_FUNCTION_2_46();
                  v176 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v176)
                  {
                    goto LABEL_30;
                  }

                  v177 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v177, v178);
                  goto LABEL_190;
                case 86:
                  v182 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v182, v183);
                  v184 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v184, v185);
                  goto LABEL_95;
                case 88:
                  OUTLINED_FUNCTION_2_46();
                  v229 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v229)
                  {
                    goto LABEL_30;
                  }

                  v230 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v230, v231);
                  goto LABEL_96;
                case 89:
LABEL_95:
                  OUTLINED_FUNCTION_2_46();
                  v260 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v260)
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_30;
                case 90:
                case 91:
LABEL_96:
                  OUTLINED_FUNCTION_2_46();
LABEL_97:
                  v261 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v261)
                  {
                    goto LABEL_30;
                  }

LABEL_190:
                  OUTLINED_FUNCTION_2_46();
LABEL_191:
                  v198 = test_string_s();
LABEL_192:
                  LODWORD(v116) = v22;
                  if (v198)
                  {
                    goto LABEL_30;
                  }

LABEL_236:
                  v108 = v43;
                  v109 = v22;
                  goto LABEL_237;
                case 92:
                  v371 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v371, v372);
LABEL_188:
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_191;
                case 93:
                  OUTLINED_FUNCTION_2_46();
                  v190 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v190)
                  {
                    goto LABEL_30;
                  }

                  v191 = OUTLINED_FUNCTION_1_46();
                  v195 = testFldeq(v191, v192, v193, v194);
                  LODWORD(v116) = v22;
                  if (v195)
                  {
                    goto LABEL_30;
                  }

                  v198 = advance_tok(a1, v22, v196, v197);
                  goto LABEL_192;
                case 100:
LABEL_94:
                  v258 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v258, v259);
                  goto LABEL_81;
                case 101:
                  goto LABEL_82;
                case 102:
LABEL_81:
                  OUTLINED_FUNCTION_2_46();
                  v234 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v234)
                  {
LABEL_82:
                    LODWORD(v116) = 1;
                  }

                  goto LABEL_30;
                case 103:
                  v489 = v43;
                  v487 = v22;
                  goto LABEL_240;
                case 104:
                case 107:
                  v487 = v22;
                  goto LABEL_252;
                case 105:
                  goto LABEL_311;
                case 106:
                  v209 = OUTLINED_FUNCTION_0_47();
                  v213 = testFldeq(v209, v210, v211, v212);
                  LODWORD(v116) = v22;
                  if (!v213)
                  {
                    v216 = advance_tok(a1, v22, v214, v215);
                    LODWORD(v116) = v22;
                    if (!v216)
                    {
                      goto LABEL_311;
                    }
                  }

                  goto LABEL_30;
                case 108:
                  goto LABEL_241;
                case 109:
                  v346 = OUTLINED_FUNCTION_0_47();
                  v350 = testFldeq(v346, v347, v348, v349);
                  LODWORD(v116) = v22;
                  if (v350)
                  {
                    goto LABEL_30;
                  }

                  v353 = advance_tok(a1, v22, v351, v352);
                  LODWORD(v116) = v22;
                  if (v353)
                  {
                    goto LABEL_30;
                  }

                  v111 = v43;
                  v112 = v22;
                  goto LABEL_241;
                case 110:
                  v236 = OUTLINED_FUNCTION_1_46();
                  v240 = testFldeq(v236, v237, v238, v239);
                  LODWORD(v116) = v22;
                  if (v240)
                  {
                    goto LABEL_30;
                  }

                  v243 = advance_tok(a1, v22, v241, v242);
                  LODWORD(v116) = v22;
                  if (v243)
                  {
                    goto LABEL_30;
                  }

                  v244 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v244, v245);
                  v246 = OUTLINED_FUNCTION_1_46();
                  goto LABEL_149;
                case 111:
                  goto LABEL_242;
                case 112:
                  v354 = OUTLINED_FUNCTION_0_47();
                  v358 = testFldeq(v354, v355, v356, v357);
                  LODWORD(v116) = v22;
                  if (v358)
                  {
                    goto LABEL_30;
                  }

                  v361 = advance_tok(a1, v22, v359, v360);
                  LODWORD(v116) = v22;
                  if (v361)
                  {
                    goto LABEL_30;
                  }

                  v246 = OUTLINED_FUNCTION_0_47();
LABEL_149:
                  v362 = testFldeq(v246, v247, v248, v249);
                  LODWORD(v116) = v22;
                  if (!v362)
                  {
                    v365 = advance_tok(a1, v22, v363, v364);
                    LODWORD(v116) = v22;
                    if (!v365)
                    {
                      goto LABEL_242;
                    }
                  }

                  goto LABEL_30;
                case 114:
                  OUTLINED_FUNCTION_4_44();
                  v232 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v232)
                  {
                    goto LABEL_30;
                  }

                  v113 = v43;
                  v114 = v22;
                  goto LABEL_305;
                case 115:
                  goto LABEL_305;
                case 116:
                  bspop_boa(a1);
                  v41 = 0;
                  goto LABEL_304;
                case 117:
                  v41 = v43;
                  goto LABEL_304;
                case 118:
LABEL_40:
                  v131 = OUTLINED_FUNCTION_37_23();
                  starttest(v131, v132);
                  v133 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v133, v134, v135))
                  {
                    goto LABEL_42;
                  }

                  OUTLINED_FUNCTION_2_46();
                  if (test_string_s())
                  {
                    goto LABEL_42;
                  }

                  v480 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v480, v481);
                  OUTLINED_FUNCTION_2_46();
                  v482 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v482)
                  {
                    goto LABEL_226;
                  }

                  goto LABEL_30;
                case 119:
                  v284 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v284, v285);
                  goto LABEL_112;
                case 120:
                  goto LABEL_136;
                case 121:
LABEL_135:
                  OUTLINED_FUNCTION_2_46();
                  v329 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v329)
                  {
                    goto LABEL_30;
                  }

LABEL_136:
                  OUTLINED_FUNCTION_2_46();
                  v330 = test_string_s();
                  LODWORD(v116) = v22;
                  if (!v330)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_30;
                case 124:
LABEL_112:
                  OUTLINED_FUNCTION_17_38();
                  goto LABEL_227;
                case 125:
LABEL_42:
                  v136 = OUTLINED_FUNCTION_37_23();
                  starttest(v136, v137);
                  v138 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v138, v139, v140))
                  {
                    goto LABEL_44;
                  }

                  OUTLINED_FUNCTION_5_44();
                  if (test_string_s())
                  {
                    goto LABEL_44;
                  }

                  v478 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v478, v479);
                  goto LABEL_224;
                case 126:
LABEL_226:
                  OUTLINED_FUNCTION_5_44();
                  goto LABEL_227;
                case 127:
LABEL_44:
                  v141 = OUTLINED_FUNCTION_37_23();
                  starttest(v141, v142);
                  v143 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v143, v144, v145))
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_50;
                case 128:
                  OUTLINED_FUNCTION_2_46();
                  v235 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v235)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_224;
                case 129:
LABEL_224:
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_227;
                case 130:
LABEL_45:
                  v146 = OUTLINED_FUNCTION_37_23();
                  starttest(v146, v147);
                  v148 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v148, v149, v150))
                  {
                    goto LABEL_47;
                  }

                  OUTLINED_FUNCTION_4_44();
                  if (test_string_s())
                  {
                    goto LABEL_47;
                  }

                  v464 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v464, v465);
                  v466 = OUTLINED_FUNCTION_0_47();
                  v470 = testFldeq(v466, v467, v468, v469);
                  LODWORD(v116) = v22;
                  if (v470)
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v167 = OUTLINED_FUNCTION_15_40();
                  v170 = 19;
LABEL_217:
                  v328 = testFldeq(v167, v168, v169, v170);
                  goto LABEL_218;
                case 131:
LABEL_50:
                  v159 = OUTLINED_FUNCTION_67_15();
                  savescptr(v159, v160, v161);
                  OUTLINED_FUNCTION_4_44();
                  v162 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v162)
                  {
                    goto LABEL_30;
                  }

                  v163 = OUTLINED_FUNCTION_39_22();
                  v166 = lpta_loadp_setscan_r(v163, v164, v165);
                  LODWORD(v116) = v22;
                  if (v166)
                  {
                    goto LABEL_30;
                  }

LABEL_160:
                  OUTLINED_FUNCTION_3_45();
                  goto LABEL_227;
                case 132:
LABEL_47:
                  v151 = OUTLINED_FUNCTION_37_23();
                  starttest(v151, v152);
                  v153 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v153, v154, v155))
                  {
                    goto LABEL_232;
                  }

                  v156 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v156, v157);
                  OUTLINED_FUNCTION_5_44();
                  v158 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v158)
                  {
                    goto LABEL_30;
                  }

LABEL_163:
                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  OUTLINED_FUNCTION_2_46();
LABEL_184:
                  v328 = test_string_s();
                  goto LABEL_218;
                case 133:
                  v262 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v262, v263);
LABEL_154:
                  OUTLINED_FUNCTION_2_46();
LABEL_227:
                  v343 = test_string_s();
                  goto LABEL_228;
                case 134:
                  bspop_boa(a1);
                  v121 = advance_tok(a1, v250, v251, v252);
LABEL_89:
                  LODWORD(v116) = v22;
                  if (v121)
                  {
                    goto LABEL_30;
                  }

LABEL_140:
                  v336 = OUTLINED_FUNCTION_0_47();
                  v340 = testFldeq(v336, v337, v338, v339);
                  LODWORD(v116) = v22;
                  if (v340)
                  {
                    goto LABEL_30;
                  }

                  v343 = advance_tok(a1, v22, v341, v342);
LABEL_228:
                  LODWORD(v116) = v22;
                  if (v343)
                  {
                    goto LABEL_30;
                  }

LABEL_231:
                  v23 = v22;
                  continue;
                case 137:
LABEL_232:
                  v483 = OUTLINED_FUNCTION_8_43();
                  if (lpta_loadp_setscan_l(v483, v484, v485))
                  {
                    goto LABEL_3;
                  }

                  OUTLINED_FUNCTION_3_45();
                  if (test_string_s())
                  {
                    goto LABEL_3;
                  }

                  v41 = 12;
                  v486 = *(a1 + 3998);
                  goto LABEL_248;
                case 138:
                  v273 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v273, v274);
                  OUTLINED_FUNCTION_5_44();
                  v275 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v275)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_117;
                case 139:
                case 150:
                  bspop_boa(a1);
                  goto LABEL_120;
                case 140:
                case 143:
                  goto LABEL_120;
                case 141:
                  v324 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v324, v325);
                  OUTLINED_FUNCTION_4_44();
                  v326 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v326)
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan_boa();
                  v117 = OUTLINED_FUNCTION_3_45();
LABEL_132:
                  v120 = 1;
LABEL_133:
                  v327 = testFldeq(v117, v118, v119, v120);
                  v116 = v22;
                  if (v327)
                  {
                    goto LABEL_30;
                  }

LABEL_134:
                  v328 = advance_tok(a1, v116, v110, v108);
LABEL_218:
                  if (v328)
                  {
                    LODWORD(v116) = v22;
                  }

                  else
                  {
                    LODWORD(v116) = 1;
                  }

                  goto LABEL_30;
                case 142:
                case 144:
                case 145:
                case 147:
LABEL_117:
                  v291 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v291, v292);
                  goto LABEL_118;
                case 146:
                  v286 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v286, v287);
                  OUTLINED_FUNCTION_4_44();
                  goto LABEL_119;
                case 148:
LABEL_118:
                  OUTLINED_FUNCTION_2_46();
                  goto LABEL_119;
                case 149:
                  OUTLINED_FUNCTION_3_45();
LABEL_119:
                  v293 = test_string_s();
                  LODWORD(v116) = v22;
                  if (v293)
                  {
                    goto LABEL_30;
                  }

LABEL_120:
                  v294 = *(a1 + 3998);
                  if (v294 != 2)
                  {
                    goto LABEL_247;
                  }

                  v295 = OUTLINED_FUNCTION_37_23();
                  starttest(v295, v296);
                  v297 = OUTLINED_FUNCTION_39_22();
                  if (lpta_loadp_setscan_r(v297, v298, v299))
                  {
                    goto LABEL_246;
                  }

LABEL_122:
                  v300 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v300, v301);
                  v302 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v302, v303);
                  v280 = OUTLINED_FUNCTION_1_46();
LABEL_123:
                  v304 = testFldeq(v280, v281, v282, v283);
                  v116 = v22;
                  if (v304)
                  {
                    goto LABEL_30;
                  }

LABEL_124:
                  v305 = advance_tok(a1, v116, v110, v108);
                  LODWORD(v116) = v22;
                  if (v305)
                  {
                    goto LABEL_30;
                  }

                  v306 = OUTLINED_FUNCTION_37_23();
                  bspush_ca_scan(v306, v307);
                  v311 = advance_tok(a1, v308, v309, v310);
                  LODWORD(v116) = v22;
                  if (v311)
                  {
                    goto LABEL_30;
                  }

                  v312 = OUTLINED_FUNCTION_0_47();
                  v316 = testFldeq(v312, v313, v314, v315);
                  LODWORD(v116) = v22;
                  if (v316)
                  {
                    goto LABEL_30;
                  }

                  v272 = advance_tok(a1, v22, v317, v318);
LABEL_104:
                  LODWORD(v116) = v22;
                  if (v272)
                  {
                    goto LABEL_30;
                  }

LABEL_245:
                  OUTLINED_FUNCTION_120_7();
LABEL_246:
                  LOWORD(v294) = *(a1 + 3998);
LABEL_247:
                  v486 = v294;
                  v41 = 20;
LABEL_248:
                  v23 = v22;
                  v42 = v22;
                  if (v486 >= 3)
                  {
                    goto LABEL_9;
                  }

                  continue;
                case 151:
                  goto LABEL_246;
                case 152:
                  goto LABEL_122;
                case 153:
                  v264 = OUTLINED_FUNCTION_0_47();
                  v268 = testFldeq(v264, v265, v266, v267);
                  LODWORD(v116) = v22;
                  if (v268)
                  {
                    goto LABEL_30;
                  }

                  v271 = advance_tok(a1, v22, v269, v270);
                  LODWORD(v116) = v22;
                  if (v271)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_122;
                case 154:
                  v280 = OUTLINED_FUNCTION_15_40();
                  v283 = 30;
                  goto LABEL_123;
                case 155:
                  goto LABEL_124;
                case 156:
                  OUTLINED_FUNCTION_2_46();
                  v272 = test_string_s();
                  goto LABEL_104;
                case 157:
                  goto LABEL_245;
                case 161:
                  v41 = 10;
LABEL_304:
                  v42 = v22;
                  goto LABEL_9;
                case 162:
                  v42 = v22;
                  goto LABEL_18;
                case 163:
                  v42 = v22;
                  goto LABEL_263;
                case 164:
                  goto LABEL_13;
                case 165:
                case 174:
                  goto LABEL_270;
                case 166:
                  goto LABEL_15;
                case 170:
                  v90 = v22;
                  goto LABEL_27;
                case 172:
                  v90 = v22;
                  goto LABEL_268;
                default:
                  goto LABEL_3;
              }
            }
          }

          break;
        }

LABEL_285:
        OUTLINED_FUNCTION_96_9();
        goto LABEL_286;
      }

LABEL_5:
      v24 = OUTLINED_FUNCTION_37_23();
      starttest(v24, v25);
      v26 = OUTLINED_FUNCTION_8_43();
      if (!lpta_loadp_setscan_l(v26, v27, v28))
      {
        v29 = OUTLINED_FUNCTION_81_12();
        bspush_ca_scan(v29, v30);
        OUTLINED_FUNCTION_38_22();
        v31 = test_string_s();
        v32 = v21;
        v33 = v22;
        v23 = v22;
        if (v31)
        {
          goto LABEL_286;
        }

        goto LABEL_7;
      }

LABEL_276:
      v517 = v22;
      v539 = OUTLINED_FUNCTION_37_23();
      starttest(v539, v540);
      v541 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v541, v542, v543))
      {
        v518 = v21;
      }

      else
      {
        OUTLINED_FUNCTION_5_44();
        v544 = test_string_s();
        v518 = v21;
        if (!v544)
        {
LABEL_292:
          savescptr(a1, 18, v611);
          OUTLINED_FUNCTION_37_23();
          bspush_ca_scan_boa();
          v573 = OUTLINED_FUNCTION_37_23();
          bspush_ca_scan(v573, v574);
          OUTLINED_FUNCTION_4_44();
          test_string_s();
          OUTLINED_FUNCTION_96_9();
          if (!v575)
          {
LABEL_293:
            v33 = 1;
            v32 = v105;
          }

          goto LABEL_286;
        }
      }

LABEL_279:
      v545 = v518;
      v546 = OUTLINED_FUNCTION_37_23();
      starttest(v546, v547);
      v548 = OUTLINED_FUNCTION_8_43();
      if (!lpta_loadp_setscan_l(v548, v549, v550))
      {
        v563 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v563, v564);
        OUTLINED_FUNCTION_5_44();
        test_string_s();
        v106 = v545;
        OUTLINED_FUNCTION_96_9();
        if (v565)
        {
          goto LABEL_286;
        }

LABEL_288:
        LODWORD(v22) = v107;
        v566 = OUTLINED_FUNCTION_37_23();
        starttest(v566, v567);
        *(a1 + 136) = 1;
        v568 = OUTLINED_FUNCTION_7_43();
        if (!setscan_nof_r(v568, 1, v569))
        {
          *(a1 + 136) = 1;
          v570 = OUTLINED_FUNCTION_7_43();
          if (!test_ptr(v570, v571, v572))
          {
            OUTLINED_FUNCTION_37_23();
            bspush_ca_scan_boa();
            OUTLINED_FUNCTION_76_12();
            v580 = OUTLINED_FUNCTION_7_43();
            if (test_ptr(v580, v581, v582))
            {
              v33 = v22;
            }

            else
            {
              v33 = 1;
            }

            v32 = v106;
            goto LABEL_286;
          }
        }

LABEL_290:
        v115 = v22;
        goto LABEL_291;
      }

LABEL_280:
      OUTLINED_FUNCTION_118_7();
      if (v551)
      {
        v552 = OUTLINED_FUNCTION_8_43();
        if (!lpta_loadp_setscan_l(v552, v553, v554))
        {
          OUTLINED_FUNCTION_4_44();
          v115 = v517;
          if (!test_string_s())
          {
LABEL_291:
            OUTLINED_FUNCTION_120_7();
            v23 = v115;
            goto LABEL_7;
          }
        }
      }

LABEL_283:
      v555 = OUTLINED_FUNCTION_37_23();
      starttest(v555, v556);
      v557 = OUTLINED_FUNCTION_37_23();
      bspush_ca(v557);
      v558 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v558, v559, v560))
      {
        goto LABEL_285;
      }

      v561 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v561, v562);
      OUTLINED_FUNCTION_2_46();
      if (test_string_s())
      {
        goto LABEL_285;
      }

      v576 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v576, v577);
      OUTLINED_FUNCTION_4_44();
      test_string_s();
      OUTLINED_FUNCTION_96_9();
      if (v578)
      {
        goto LABEL_286;
      }

LABEL_297:
      OUTLINED_FUNCTION_2_46();
      test_string_s();
      OUTLINED_FUNCTION_96_9();
      if (v579)
      {
        goto LABEL_286;
      }

LABEL_237:
      v487 = v109;
      v488 = v108;
      lpta_loadpn(a1, v611);
      rpta_loadpn(a1, a1 + 3536);
      if (compare_ptas(a1) || testneq(a1))
      {
        v489 = v488;
LABEL_240:
        v490 = v489;
        v491 = OUTLINED_FUNCTION_37_23();
        starttest(v491, v492);
        v493 = OUTLINED_FUNCTION_39_22();
        v496 = lpta_loadp_setscan_r(v493, v494, v495);
        v111 = v490;
        v112 = v487;
        if (v496)
        {
          goto LABEL_252;
        }

LABEL_241:
        v497 = v111;
        v498 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v498, v499);
        v500 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v500, v501);
        OUTLINED_FUNCTION_2_46();
        v502 = test_string_s();
        v32 = v497;
        v33 = v112;
        if (v502)
        {
          goto LABEL_286;
        }
      }

      else
      {
        v504 = OUTLINED_FUNCTION_37_23();
        starttest_l(v504, v505);
        v506 = OUTLINED_FUNCTION_39_22();
        if (lpta_loadp_setscan_r(v506, v507, v508))
        {
LABEL_252:
          *(a1 + 6002) = *(a1 + 5294);
          v509 = OUTLINED_FUNCTION_37_23();
          starttest(v509, v510);
          if (*(a1 + 3998) >= 3)
          {
            v511 = OUTLINED_FUNCTION_39_22();
            if (!lpta_loadp_setscan_r(v511, v512, v513))
            {
              v514 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v514, v515);
              OUTLINED_FUNCTION_4_44();
              test_string_s();
              v114 = v487;
              OUTLINED_FUNCTION_96_9();
              if (!v516)
              {
LABEL_305:
                v583 = v113;
                OUTLINED_FUNCTION_37_23();
                bspush_ca_scan_boa();
                v584 = OUTLINED_FUNCTION_1_46();
                if (testFldeq(v584, v585, v586, v587))
                {
                  v32 = v583;
                  v33 = v114;
                }

                else
                {
                  if (advance_tok(a1, v588, v589, v590))
                  {
                    v33 = v114;
                  }

                  else
                  {
                    v33 = 1;
                  }

                  v32 = v583;
                }
              }

              goto LABEL_286;
            }
          }

          v23 = v487;
          goto LABEL_7;
        }

LABEL_311:
        v591 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v591, v592);
        v593 = OUTLINED_FUNCTION_1_46();
        if (testFldeq(v593, v594, v595, v596))
        {
          goto LABEL_285;
        }

        if (advance_tok(a1, v597, v598, v599))
        {
          goto LABEL_285;
        }

        v600 = OUTLINED_FUNCTION_1_46();
        if (testFldeq(v600, v601, v602, v603))
        {
          goto LABEL_285;
        }

        advance_tok(a1, v604, v605, v606);
        OUTLINED_FUNCTION_96_9();
        if (v607)
        {
          goto LABEL_286;
        }
      }

LABEL_242:
      OUTLINED_FUNCTION_120_7();
      v487 = v503;
      goto LABEL_252;
    }
  }

LABEL_3:
  vretproc(a1);
  return OUTLINED_FUNCTION_98_9();
}

uint64_t penult_one(uint64_t a1)
{
  v290 = *MEMORY[0x277D85DE8];
  v278 = 0;
  v279 = 0;
  v276 = 0;
  v277 = 0;
  v275 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v274, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v289, v3);
  v4 = setjmp(v289);
  if (v4 || OUTLINED_FUNCTION_69_13(v4, v5, v6, v7, v8, v9, v10, v11, v273, v274[0], v274[1], v274[2], v274[3], v274[4], v274[5], v274[6], v274[7], v274[8], v274[9], v274[10], v274[11], v274[12], v274[13], v274[14], v274[15], v274[16], v274[17], v274[18], v274[19], v274[20], v274[21], v274[22], v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288))
  {
    goto LABEL_3;
  }

  v14 = OUTLINED_FUNCTION_73_12();
  push_ptr_init(v14, v15);
  v16 = OUTLINED_FUNCTION_72_12();
  push_ptr_init(v16, v17);
  v275 = 0xFFFC0000FFFCLL;
  fence_46(a1, &_MergedGlobals_39);
  v18 = OUTLINED_FUNCTION_81_12();
  starttest(v18, v19);
  v20 = OUTLINED_FUNCTION_22_34();
  if (!lpta_loadp_setscan_l(v20, v21, v22))
  {
    v24 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v24, v25);
    OUTLINED_FUNCTION_2_46();
    v26 = test_string_s();
    v23 = 0;
    v27 = 0;
    if (v26)
    {
      goto LABEL_146;
    }

LABEL_8:
    v23 = v27;
    OUTLINED_FUNCTION_5_44();
    LODWORD(v28) = v23;
    if (test_string_s())
    {
      goto LABEL_146;
    }

LABEL_9:
    OUTLINED_FUNCTION_85_12();
    v29 = OUTLINED_FUNCTION_59_16();
    savescptr(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_42_21();
    lpta_loadpn(v32, v33);
    OUTLINED_FUNCTION_56_17();
    lpta_ctxtr();
    rpta_loadpn(a1, a1 + 4008);
    if (!compare_ptas(a1))
    {
      v34 = testeq(a1);
      v35 = v28;
      v23 = v28;
      if (v34)
      {
        goto LABEL_146;
      }

      goto LABEL_145;
    }

    goto LABEL_10;
  }

  v23 = 0;
  while (2)
  {
    v36 = OUTLINED_FUNCTION_37_23();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_8_43();
    if (!lpta_loadp_setscan_l(v38, v39, v40))
    {
      v41 = OUTLINED_FUNCTION_28_30();
      bspush_ca_scan(v41, v42);
      v43 = OUTLINED_FUNCTION_27_31();
      bspush_ca_scan(v43, v44);
      OUTLINED_FUNCTION_2_46();
      v45 = test_string_s();
      v46 = v23;
      if (v45)
      {
        goto LABEL_146;
      }

LABEL_16:
      v23 = v46;
      OUTLINED_FUNCTION_3_45();
      if (!test_string_s())
      {
        v47 = OUTLINED_FUNCTION_26_32();
        bspush_ca_scan(v47, v48);
        goto LABEL_144;
      }

      goto LABEL_146;
    }

LABEL_115:
    v192 = OUTLINED_FUNCTION_37_23();
    starttest(v192, v193);
    v194 = OUTLINED_FUNCTION_8_43();
    if (!lpta_loadp_setscan_l(v194, v195, v196))
    {
      v212 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v212, v213);
      v214 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v214, v215);
      OUTLINED_FUNCTION_2_46();
      v216 = test_string_s();
      v52 = v23;
      if (v216)
      {
        goto LABEL_146;
      }

LABEL_123:
      v23 = v52;
      v217 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v217, v218);
      OUTLINED_FUNCTION_2_46();
      v219 = test_string_s();
      v53 = v23;
      if (v219)
      {
        goto LABEL_146;
      }

LABEL_124:
      v23 = v53;
      OUTLINED_FUNCTION_2_46();
      LODWORD(v28) = v23;
      if (test_string_s())
      {
        goto LABEL_146;
      }

LABEL_125:
      v220 = OUTLINED_FUNCTION_67_15();
      savescptr(v220, v221, v222);
      v223 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v223, v224);
      OUTLINED_FUNCTION_2_46();
      v225 = test_string_s();
      v54 = v28;
      v23 = v28;
      if (v225)
      {
LABEL_146:
        LODWORD(v58) = v23;
LABEL_18:
        v49 = *(a1 + 104);
        if (v49)
        {
          v50 = OUTLINED_FUNCTION_53_17(v49);
          v28 = v51;
        }

        else
        {
          v50 = vback(a1, v58);
          v28 = 0;
        }

        v27 = v28;
        v46 = v28;
        v52 = v28;
        v53 = v28;
        v54 = v28;
        v55 = v28;
        v56 = v28;
        v35 = v28;
        switch(v50)
        {
          case 1:
            v23 = v28;
            continue;
          case 2:
            OUTLINED_FUNCTION_4_44();
            v114 = test_string_s();
            v27 = v28;
            LODWORD(v58) = v28;
            if (!v114)
            {
              goto LABEL_8;
            }

            goto LABEL_18;
          case 3:
            goto LABEL_8;
          case 4:
            goto LABEL_9;
          case 5:
          case 11:
          case 12:
          case 15:
          case 20:
          case 27:
          case 35:
          case 48:
          case 60:
          case 99:
            goto LABEL_145;
          case 6:
            v23 = v28;
            goto LABEL_115;
          case 7:
            v111 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v111, v112);
            OUTLINED_FUNCTION_5_44();
            v113 = test_string_s();
            LODWORD(v58) = v28;
            if (v113)
            {
              goto LABEL_18;
            }

            goto LABEL_73;
          case 8:
            OUTLINED_FUNCTION_4_44();
            v117 = test_string_s();
            v46 = v28;
            LODWORD(v58) = v28;
            if (!v117)
            {
              goto LABEL_16;
            }

            goto LABEL_18;
          case 9:
            goto LABEL_16;
          case 10:
          case 19:
          case 26:
          case 100:
            goto LABEL_108;
          case 13:
            v118 = OUTLINED_FUNCTION_25_32();
            bspush_ca_scan(v118, v119);
            v120 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v120, v121);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_60;
          case 14:
          case 34:
            goto LABEL_74;
          case 16:
          case 28:
            goto LABEL_73;
          case 17:
            OUTLINED_FUNCTION_4_44();
LABEL_60:
            v122 = test_string_s();
            LODWORD(v58) = v28;
            if (!v122)
            {
              goto LABEL_61;
            }

            goto LABEL_18;
          case 18:
LABEL_61:
            OUTLINED_FUNCTION_3_45();
            v123 = test_string_s();
            LODWORD(v58) = v28;
            if (!v123)
            {
              goto LABEL_107;
            }

            goto LABEL_18;
          case 21:
            v109 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v109, v110);
            OUTLINED_FUNCTION_38_22();
            goto LABEL_109;
          case 22:
            v68 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v68, v69);
            v70 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v70, v71);
            goto LABEL_75;
          case 23:
          case 29:
            v115 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v115, v116);
            OUTLINED_FUNCTION_17_38();
            goto LABEL_109;
          case 24:
LABEL_75:
            OUTLINED_FUNCTION_2_46();
            v143 = test_string_s();
            LODWORD(v58) = v28;
            if (!v143)
            {
              goto LABEL_76;
            }

            goto LABEL_18;
          case 25:
LABEL_76:
            OUTLINED_FUNCTION_5_44();
            v144 = test_string_s();
            LODWORD(v58) = v28;
            if (!v144)
            {
              goto LABEL_107;
            }

            goto LABEL_18;
          case 30:
            v139 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v139, v140);
            goto LABEL_72;
          case 31:
            v145 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v145, v146);
            OUTLINED_FUNCTION_3_45();
            goto LABEL_109;
          case 32:
            OUTLINED_FUNCTION_2_46();
            v95 = test_string_s();
            LODWORD(v58) = v28;
            if (v95)
            {
              goto LABEL_18;
            }

            v96 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v96, v97);
            OUTLINED_FUNCTION_2_46();
            v98 = test_string_s();
            LODWORD(v58) = v28;
            if (v98)
            {
              goto LABEL_18;
            }

LABEL_73:
            v141 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v141, v142);
LABEL_74:
            OUTLINED_FUNCTION_4_44();
            goto LABEL_109;
          case 33:
LABEL_72:
            OUTLINED_FUNCTION_5_44();
            goto LABEL_109;
          case 36:
            v23 = v28;
            goto LABEL_116;
          case 37:
            goto LABEL_123;
          case 38:
            v62 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v62, v63);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_34;
          case 39:
            OUTLINED_FUNCTION_4_44();
LABEL_34:
            v72 = test_string_s();
            v52 = v28;
            LODWORD(v58) = v28;
            if (!v72)
            {
              goto LABEL_123;
            }

            goto LABEL_18;
          case 40:
            OUTLINED_FUNCTION_2_46();
            v152 = test_string_s();
            v53 = v28;
            LODWORD(v58) = v28;
            if (!v152)
            {
              goto LABEL_124;
            }

            goto LABEL_18;
          case 41:
            goto LABEL_124;
          case 42:
            goto LABEL_125;
          case 43:
          case 45:
          case 46:
            v136 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v136, v137);
            goto LABEL_69;
          case 44:
            break;
          case 47:
LABEL_69:
            OUTLINED_FUNCTION_2_46();
            v138 = test_string_s();
            v54 = v28;
            LODWORD(v58) = v28;
            if (!v138)
            {
              break;
            }

            goto LABEL_18;
          case 49:
            v124 = OUTLINED_FUNCTION_1_46();
            v128 = testFldeq(v124, v125, v126, v127);
            v58 = v28;
            if (v128)
            {
              goto LABEL_18;
            }

            goto LABEL_87;
          case 50:
            goto LABEL_150;
          case 51:
            OUTLINED_FUNCTION_76_12();
            v73 = OUTLINED_FUNCTION_7_43();
            v76 = test_ptr(v73, v74, v75);
            LODWORD(v58) = v28;
            if (v76)
            {
              goto LABEL_18;
            }

            v77 = OUTLINED_FUNCTION_37_23();
            starttest(v77, v78);
            v79 = OUTLINED_FUNCTION_58_16();
            if (!lpta_loadp_setscan_r(v79, v80, 7) && !advance_tok(a1, v81, v82, v83))
            {
              goto LABEL_39;
            }

            goto LABEL_137;
          case 52:
            bspop_boa(a1);
LABEL_87:
            v159 = advance_tok(a1, v58, v129, v130);
            LODWORD(v58) = v28;
            if (!v159)
            {
              goto LABEL_90;
            }

            goto LABEL_18;
          case 53:
            goto LABEL_90;
          case 54:
LABEL_39:
            v84 = OUTLINED_FUNCTION_59_16();
            savescptr(v84, v85, v86);
            v87 = OUTLINED_FUNCTION_58_16();
            lpta_rpta_loadp(v87, v88, &v276);
            v89 = OUTLINED_FUNCTION_9_43();
            inserted = insert_2pt_i(v89, v90, v91, v92, v93);
            goto LABEL_110;
          case 55:
            v23 = v28;
            goto LABEL_117;
          case 56:
            OUTLINED_FUNCTION_2_46();
            v64 = test_string_s();
            LODWORD(v58) = v28;
            if (v64)
            {
              goto LABEL_18;
            }

            v65 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v65, v66);
            goto LABEL_46;
          case 57:
            goto LABEL_131;
          case 58:
LABEL_46:
            OUTLINED_FUNCTION_2_46();
            v107 = test_string_s();
            LODWORD(v58) = v28;
            if (!v107)
            {
              goto LABEL_47;
            }

            goto LABEL_18;
          case 59:
LABEL_47:
            OUTLINED_FUNCTION_2_46();
            v108 = test_string_s();
            v55 = v28;
            LODWORD(v58) = v28;
            if (!v108)
            {
              goto LABEL_131;
            }

            goto LABEL_18;
          case 61:
            v23 = v28;
            goto LABEL_118;
          case 62:
            bspop_boa(a1);
            v170 = OUTLINED_FUNCTION_1_46();
            v174 = testFldeq(v170, v171, v172, v173);
            LODWORD(v58) = v28;
            if (v174)
            {
              goto LABEL_18;
            }

            OUTLINED_FUNCTION_37_23();
            bspush_ca_scan_boa();
            v166 = OUTLINED_FUNCTION_15_40();
            v169 = 2;
            goto LABEL_92;
          case 63:
            v157 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v157, v158);
            OUTLINED_FUNCTION_3_45();
            goto LABEL_104;
          case 64:
            OUTLINED_FUNCTION_2_46();
            v67 = test_string_s();
            v56 = v28;
            LODWORD(v58) = v28;
            if (!v67)
            {
              goto LABEL_134;
            }

            goto LABEL_18;
          case 65:
            goto LABEL_134;
          case 66:
          case 70:
          case 77:
          case 78:
            goto LABEL_135;
          case 67:
            v147 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v147, v148);
            OUTLINED_FUNCTION_2_46();
            v149 = test_string_s();
            LODWORD(v58) = v28;
            if (v149)
            {
              goto LABEL_18;
            }

            goto LABEL_80;
          case 68:
            v99 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v99, v100);
            OUTLINED_FUNCTION_2_46();
            v101 = test_string_s();
            LODWORD(v58) = v28;
            if (v101)
            {
              goto LABEL_18;
            }

            v102 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v102, v103);
            OUTLINED_FUNCTION_2_46();
            v104 = test_string_s();
            LODWORD(v58) = v28;
            if (v104)
            {
              goto LABEL_18;
            }

            goto LABEL_45;
          case 69:
          case 71:
            v60 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v60, v61);
            OUTLINED_FUNCTION_4_44();
            goto LABEL_104;
          case 72:
            OUTLINED_FUNCTION_2_46();
            v59 = test_string_s();
            LODWORD(v58) = v28;
            if (v59)
            {
              goto LABEL_18;
            }

LABEL_45:
            v105 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v105, v106);
            goto LABEL_103;
          case 73:
          case 76:
          case 82:
          case 84:
            goto LABEL_103;
          case 74:
            v182 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v182, v183);
            v184 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v184, v185);
            goto LABEL_100;
          case 75:
LABEL_80:
            v150 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v150, v151);
            goto LABEL_100;
          case 79:
            v131 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v131, v132);
            v133 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v133, v134);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_66;
          case 80:
          case 83:
          case 85:
          case 86:
            v186 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v186, v187);
            goto LABEL_102;
          case 81:
            OUTLINED_FUNCTION_4_44();
LABEL_66:
            v135 = test_string_s();
            LODWORD(v58) = v28;
            if (!v135)
            {
              goto LABEL_103;
            }

            goto LABEL_18;
          case 87:
LABEL_102:
            OUTLINED_FUNCTION_2_46();
            v188 = test_string_s();
            LODWORD(v58) = v28;
            if (v188)
            {
              goto LABEL_18;
            }

LABEL_103:
            OUTLINED_FUNCTION_2_46();
            goto LABEL_104;
          case 88:
            OUTLINED_FUNCTION_17_38();
            goto LABEL_104;
          case 89:
            OUTLINED_FUNCTION_2_46();
            v57 = test_string_s();
            LODWORD(v58) = v28;
            if (v57)
            {
              goto LABEL_18;
            }

            goto LABEL_100;
          case 90:
LABEL_100:
            OUTLINED_FUNCTION_5_44();
LABEL_104:
            v189 = test_string_s();
            LODWORD(v58) = v28;
            if (!v189)
            {
              goto LABEL_135;
            }

            goto LABEL_18;
          case 91:
            bspop_boa(a1);
            v156 = advance_tok(a1, v153, v154, v155);
            LODWORD(v58) = v28;
            if (v156)
            {
              goto LABEL_18;
            }

            goto LABEL_91;
          case 92:
            bspop_boa(a1);
            v163 = advance_tok(a1, v160, v161, v162);
            LODWORD(v58) = v28;
            if (v163)
            {
              goto LABEL_18;
            }

LABEL_90:
            v164 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v164, v165);
            goto LABEL_91;
          case 93:
            v175 = OUTLINED_FUNCTION_1_46();
            v179 = testFldeq(v175, v176, v177, v178);
            LODWORD(v58) = v28;
            if (v179)
            {
              goto LABEL_18;
            }

            inserted = advance_tok(a1, v28, v180, v181);
            goto LABEL_110;
          case 94:
LABEL_91:
            OUTLINED_FUNCTION_37_23();
            bspush_ca_scan_boa();
            v166 = OUTLINED_FUNCTION_1_46();
LABEL_92:
            if (testFldeq(v166, v167, v168, v169))
            {
              LODWORD(v58) = v28;
            }

            else
            {
              LODWORD(v58) = 1;
            }

            goto LABEL_18;
          case 95:
            v23 = v28;
            goto LABEL_139;
          case 96:
            bspop_boa(a1);
LABEL_137:
            v35 = v28;
            goto LABEL_145;
          case 98:
LABEL_107:
            v190 = OUTLINED_FUNCTION_37_23();
            bspush_ca_scan(v190, v191);
LABEL_108:
            OUTLINED_FUNCTION_2_46();
LABEL_109:
            inserted = test_string_s();
LABEL_110:
            v35 = v28;
            LODWORD(v58) = v28;
            if (!inserted)
            {
              goto LABEL_145;
            }

            goto LABEL_18;
          case 101:
            goto LABEL_147;
          default:
            goto LABEL_3;
        }
      }

      v23 = v54;
      v226 = OUTLINED_FUNCTION_73_12();
      lpta_loadpn(v226, v227);
      OUTLINED_FUNCTION_56_17();
      lpta_ctxtr();
      rpta_loadpn(a1, a1 + 4008);
      if (compare_ptas(a1) || testeq(a1))
      {
        goto LABEL_146;
      }

      v228 = OUTLINED_FUNCTION_37_23();
      starttest(v228, v229);
      v230 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v230, v231, v232))
      {
        v35 = v23;
        goto LABEL_145;
      }

      OUTLINED_FUNCTION_17_38();
      v263 = test_string_s();
      LODWORD(v28) = v23;
      v35 = v23;
      if (v263)
      {
LABEL_145:
        v250 = v35;
        v251 = OUTLINED_FUNCTION_37_23();
        starttest(v251, v252);
        v253 = OUTLINED_FUNCTION_11_42();
        move_i(v253, v254, v255);
        v256 = OUTLINED_FUNCTION_20_35();
        move_i(v256, v257, v258);
        v259 = OUTLINED_FUNCTION_32_28();
        apply_strong_alternation(v259, v260, v261);
        v23 = v250;
        if (!v262)
        {
LABEL_147:
          v12 = 0;
          goto LABEL_4;
        }

        goto LABEL_146;
      }

LABEL_150:
      while (1)
      {
        v264 = OUTLINED_FUNCTION_0_47();
        if (testFldeq(v264, v265, v266, v267) || advance_tok(a1, v268, v269, v270))
        {
          break;
        }

        v271 = OUTLINED_FUNCTION_42_21();
        bspush_ca_scan(v271, v272);
      }

LABEL_10:
      v23 = v28;
      goto LABEL_146;
    }

    break;
  }

LABEL_116:
  v197 = OUTLINED_FUNCTION_37_23();
  starttest(v197, v198);
  v199 = OUTLINED_FUNCTION_8_43();
  if (!lpta_loadp_setscan_l(v199, v200, v201))
  {
    v233 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v233, v234);
    OUTLINED_FUNCTION_5_44();
    v235 = test_string_s();
    v55 = v23;
    if (v235)
    {
      goto LABEL_146;
    }

LABEL_131:
    v35 = v55;
    if (*(a1 + 4002) >= 4)
    {
      goto LABEL_3;
    }

    goto LABEL_145;
  }

LABEL_117:
  v202 = OUTLINED_FUNCTION_37_23();
  starttest(v202, v203);
  v204 = OUTLINED_FUNCTION_8_43();
  if (!lpta_loadp_setscan_l(v204, v205, v206))
  {
    OUTLINED_FUNCTION_37_23();
    bspush_ca_scan_boa();
    v236 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v236, v237);
    v238 = OUTLINED_FUNCTION_37_23();
    bspush_ca_scan(v238, v239);
    OUTLINED_FUNCTION_2_46();
    v240 = test_string_s();
    v56 = v23;
    if (!v240)
    {
LABEL_134:
      v23 = v56;
      OUTLINED_FUNCTION_4_44();
      if (!test_string_s())
      {
LABEL_135:
        v23 = 1;
      }
    }

    goto LABEL_146;
  }

LABEL_118:
  v207 = OUTLINED_FUNCTION_37_23();
  starttest(v207, v208);
  v209 = OUTLINED_FUNCTION_8_43();
  if (!lpta_loadp_setscan_l(v209, v210, v211))
  {
    OUTLINED_FUNCTION_5_44();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_37_23();
      bspush_ca_scan_boa();
      OUTLINED_FUNCTION_2_46();
      if (!test_string_s())
      {
        v23 = 1;
      }

      goto LABEL_146;
    }
  }

LABEL_139:
  v241 = OUTLINED_FUNCTION_37_23();
  starttest(v241, v242);
  OUTLINED_FUNCTION_118_7();
  if (v243)
  {
    v244 = OUTLINED_FUNCTION_8_43();
    if (!lpta_loadp_setscan_l(v244, v245, v246))
    {
      OUTLINED_FUNCTION_4_44();
      if (!test_string_s())
      {
        v247 = OUTLINED_FUNCTION_37_23();
        bspush_ca_scan(v247, v248);
LABEL_144:
        OUTLINED_FUNCTION_2_46();
        v249 = test_string_s();
        v35 = v23;
        if (v249)
        {
          goto LABEL_146;
        }

        goto LABEL_145;
      }
    }
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(a1);
  return v12;
}

void final_two(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  v4 = v3;
  v78 = *MEMORY[0x277D85DE8];
  v72 = 0;
  v73 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v71, v5);
  OUTLINED_FUNCTION_51_17();
  bzero(v77, v6);
  if (!setjmp(v77) && !ventproc(v4, v71, v76, v75, v74, v77))
  {
    v72 = 65532;
    v73 = 65532;
    fence_46(v4, &_MergedGlobals_39);
    v7 = OUTLINED_FUNCTION_81_12();
    starttest(v7, v8);
    v9 = OUTLINED_FUNCTION_22_34();
    if (!lpta_loadp_setscan_l(v9, v10, v11))
    {
      v12 = OUTLINED_FUNCTION_37_23();
      bspush_ca_scan(v12, v13);
      OUTLINED_FUNCTION_3_45();
      v14 = test_string_s();
      v15 = 0;
      v16 = 0;
      if (!v14)
      {
LABEL_32:
        v59 = v16;
        v60 = OUTLINED_FUNCTION_25_32();
        starttest(v60, v61);
        v62 = OUTLINED_FUNCTION_18_37();
        move_i(v62, v63, v64);
        v65 = OUTLINED_FUNCTION_49_17();
        move_i(v65, v66, 0);
        v67 = OUTLINED_FUNCTION_29_30();
        apply_strong_alternation(v67, v68, v69);
        v15 = v59;
        if (!v70)
        {
          goto LABEL_4;
        }
      }

      while (2)
      {
        v17 = v4[13];
        if (v17)
        {
          v18 = OUTLINED_FUNCTION_53_17(v17);
          v20 = v19;
        }

        else
        {
          v18 = vback(v4, v15);
          v20 = 0;
        }

        v16 = v20;
        switch(v18)
        {
          case 2:
            v21 = OUTLINED_FUNCTION_86_11();
            bspush_ca_scan(v21, v22);
            OUTLINED_FUNCTION_4_44();
            v23 = test_string_s();
            v15 = v20;
            if (v23)
            {
              continue;
            }

            v24 = OUTLINED_FUNCTION_93_9();
            bspush_ca_scan(v24, v25);
            OUTLINED_FUNCTION_2_46();
            goto LABEL_20;
          case 3:
          case 6:
            goto LABEL_32;
          case 4:
            v34 = OUTLINED_FUNCTION_82_12();
            bspush_ca_scan(v34, v35);
            OUTLINED_FUNCTION_38_22();
            goto LABEL_20;
          case 5:
            OUTLINED_FUNCTION_2_46();
            goto LABEL_20;
          case 7:
            v30 = OUTLINED_FUNCTION_74_12();
            bspush_ca_scan(v30, v31);
            OUTLINED_FUNCTION_33_27();
            goto LABEL_20;
          case 8:
            v28 = OUTLINED_FUNCTION_95_9();
            bspush_ca_scan(v28, v29);
            OUTLINED_FUNCTION_3_45();
            goto LABEL_20;
          case 9:
            v36 = OUTLINED_FUNCTION_49_17();
            bspush_ca_scan(v36, v37);
            OUTLINED_FUNCTION_5_44();
            goto LABEL_20;
          case 10:
            v39 = OUTLINED_FUNCTION_103_8();
            bspush_ca_scan(v39, v40);
            OUTLINED_FUNCTION_5_44();
            v41 = test_string_s();
            v15 = v20;
            if (!v41)
            {
              OUTLINED_FUNCTION_102_8();
              bspush_ca_scan_boa();
              v42 = OUTLINED_FUNCTION_1_46();
              v46 = testFldeq(v42, v43, v44, v45);
              v15 = v20;
              if (!v46)
              {
                if (advance_tok(v4, v20, v47, v48))
                {
                  v15 = v20;
                }

                else
                {
                  v15 = 1;
                }
              }
            }

            continue;
          case 11:
            v32 = OUTLINED_FUNCTION_66_15();
            bspush_ca_scan(v32, v33);
            OUTLINED_FUNCTION_33_27();
            goto LABEL_20;
          case 12:
            bspop_boa(v4);
            v16 = v20;
            goto LABEL_32;
          case 13:
            v49 = OUTLINED_FUNCTION_42_21();
            bspush_ca_scan(v49, v50);
            OUTLINED_FUNCTION_5_44();
            v51 = test_string_s();
            v15 = v20;
            if (v51)
            {
              continue;
            }

            v52 = OUTLINED_FUNCTION_0_47();
            v56 = testFldeq(v52, v53, v54, v55);
            v15 = v20;
            if (v56)
            {
              continue;
            }

            advance_tok(v4, v20, v57, v58);
            goto LABEL_21;
          case 14:
            v26 = OUTLINED_FUNCTION_43_20();
            bspush_ca_scan(v26, v27);
            OUTLINED_FUNCTION_33_27();
            goto LABEL_20;
          case 15:
            OUTLINED_FUNCTION_5_44();
LABEL_20:
            test_string_s();
LABEL_21:
            OUTLINED_FUNCTION_124_7();
            if (!v38)
            {
              goto LABEL_32;
            }

            continue;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(v4);
  OUTLINED_FUNCTION_87_11();
}

void antepenult_one(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  v4 = v3;
  v69 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v63 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v62, v5);
  OUTLINED_FUNCTION_51_17();
  bzero(v68, v6);
  if (!setjmp(v68) && !ventproc(v4, v62, v67, v66, v65, v68))
  {
    v64 = 65532;
    v63 = 65532;
    fence_46(v4, &_MergedGlobals_39);
    if (*(v4 + 4002) != 2)
    {
      v7 = 0;
      OUTLINED_FUNCTION_116_7();
      v61 = v8;
      while (2)
      {
        starttest(v4, v8);
        v9 = OUTLINED_FUNCTION_8_43();
        if (!lpta_loadp_setscan_l(v9, v10, v11))
        {
          bspush_ca_scan(v4, 3);
          bspush_ca_scan(v4, 4);
          OUTLINED_FUNCTION_38_22();
          v12 = test_string_s();
          v13 = v7;
          if (!v12)
          {
LABEL_8:
            v7 = v13;
            bspush_ca_scan(v4, 6);
            v14 = OUTLINED_FUNCTION_110_7();
            bspush_ca_scan(v14, v15);
            OUTLINED_FUNCTION_33_27();
            v16 = test_string_s();
            v17 = v7;
            if (!v16)
            {
LABEL_9:
              v7 = v17;
              OUTLINED_FUNCTION_101_8();
              bspush_ca_scan_boa();
              v18 = OUTLINED_FUNCTION_33_27();
              if (!testFldeq(v18, v19, v20, 2))
              {
                v7 = 1;
              }
            }
          }

          v21 = v7;
LABEL_12:
          v22 = *(v4 + 104);
          if (v22)
          {
            v23 = OUTLINED_FUNCTION_53_17(v22);
            v7 = v24;
          }

          else
          {
            v23 = vback(v4, v21);
            v7 = 0;
          }

          v13 = v7;
          v17 = v7;
          switch(v23)
          {
            case 1:
              v8 = v61;
              continue;
            case 3:
              v25 = OUTLINED_FUNCTION_109_7();
              bspush_ca_scan(v25, v26);
              OUTLINED_FUNCTION_17_38();
              goto LABEL_36;
            case 4:
              OUTLINED_FUNCTION_2_46();
              test_string_s();
              OUTLINED_FUNCTION_124_7();
              if (!v38)
              {
                goto LABEL_8;
              }

              goto LABEL_12;
            case 5:
              goto LABEL_8;
            case 6:
              v50 = OUTLINED_FUNCTION_92_10();
              bspush_ca_scan(v50, v51);
              OUTLINED_FUNCTION_33_27();
              goto LABEL_36;
            case 7:
              OUTLINED_FUNCTION_5_44();
              v33 = test_string_s();
              v17 = v7;
              v21 = v7;
              if (!v33)
              {
                goto LABEL_9;
              }

              goto LABEL_12;
            case 8:
              goto LABEL_9;
            case 9:
              bspop_boa(v4);
              v37 = advance_tok(v4, v34, v35, v36);
              goto LABEL_37;
            case 10:
            case 12:
            case 19:
              goto LABEL_38;
            case 11:
              OUTLINED_FUNCTION_33_27();
              goto LABEL_36;
            case 13:
              v27 = OUTLINED_FUNCTION_94_9();
              bspush_ca_scan(v27, v28);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_36;
            case 14:
              v29 = OUTLINED_FUNCTION_86_11();
              bspush_ca_scan(v29, v30);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_36;
            case 15:
              v42 = OUTLINED_FUNCTION_93_9();
              bspush_ca_scan(v42, v43);
              OUTLINED_FUNCTION_17_38();
              goto LABEL_36;
            case 16:
              v45 = OUTLINED_FUNCTION_43_20();
              bspush_ca_scan(v45, v46);
              OUTLINED_FUNCTION_33_27();
              v47 = test_string_s();
              v21 = v7;
              if (v47)
              {
                goto LABEL_12;
              }

              v48 = OUTLINED_FUNCTION_82_12();
              bspush_ca_scan(v48, v49);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_36;
            case 17:
              OUTLINED_FUNCTION_2_46();
              v39 = test_string_s();
              v21 = v7;
              if (v39)
              {
                goto LABEL_12;
              }

              v40 = OUTLINED_FUNCTION_102_8();
              bspush_ca_scan(v40, v41);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_31;
            case 18:
              v31 = OUTLINED_FUNCTION_49_17();
              bspush_ca_scan(v31, v32);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_36;
            case 20:
              OUTLINED_FUNCTION_2_46();
              goto LABEL_36;
            case 21:
              OUTLINED_FUNCTION_2_46();
LABEL_31:
              v44 = test_string_s();
              v21 = v7;
              if (!v44)
              {
                goto LABEL_32;
              }

              goto LABEL_12;
            case 22:
LABEL_32:
              OUTLINED_FUNCTION_38_22();
LABEL_36:
              v37 = test_string_s();
LABEL_37:
              v21 = v7;
              if (v37)
              {
                goto LABEL_12;
              }

LABEL_38:
              v52 = OUTLINED_FUNCTION_74_12();
              starttest(v52, v53);
              v54 = OUTLINED_FUNCTION_66_15();
              move_i(v54, v55, 1);
              v56 = OUTLINED_FUNCTION_103_8();
              move_i(v56, v57, 2);
              v58 = OUTLINED_FUNCTION_66_15();
              apply_strong_alternation(v58, v59, &v63);
              v21 = v7;
              if (!v60)
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            default:
              goto LABEL_4;
          }
        }

        break;
      }
    }
  }

LABEL_4:
  vretproc(v4);
  OUTLINED_FUNCTION_87_11();
}

void penult_two(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  v4 = v3;
  v69 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v63 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v62, v5);
  OUTLINED_FUNCTION_51_17();
  bzero(v68, v6);
  if (!setjmp(v68) && !ventproc(v4, v62, v67, v66, v65, v68))
  {
    v64 = 65532;
    v63 = 65532;
    fence_46(v4, &_MergedGlobals_39);
    OUTLINED_FUNCTION_117_7();
    if (v7 == v8)
    {
      v9 = 0;
      OUTLINED_FUNCTION_78_12();
      OUTLINED_FUNCTION_116_7();
      v61 = v10;
      while (2)
      {
        starttest(v4, v10);
        v11 = OUTLINED_FUNCTION_8_43();
        if (!lpta_loadp_setscan_l(v11, v12, v13))
        {
          bspush_ca_scan(v4, 3);
          OUTLINED_FUNCTION_38_22();
          if (test_string_s())
          {
            goto LABEL_10;
          }

          v25 = OUTLINED_FUNCTION_110_7();
          bspush_ca_scan(v25, v26);
          OUTLINED_FUNCTION_2_46();
LABEL_16:
          v27 = test_string_s();
          v28 = v9;
          v24 = v9;
          if (v27)
          {
            goto LABEL_20;
          }

LABEL_17:
          v9 = v28;
          v29 = OUTLINED_FUNCTION_101_8();
          bspush_ca_scan(v29, v30);
          v31 = OUTLINED_FUNCTION_38_22();
          if (testFldeq(v31, v32, 4, 1))
          {
LABEL_10:
            v24 = v9;
            goto LABEL_20;
          }

          v36 = advance_tok(v4, v33, v34, v35);
          v24 = v9;
          v37 = v9;
          if (!v36)
          {
LABEL_19:
            v38 = v37;
            v39 = OUTLINED_FUNCTION_109_7();
            starttest(v39, v40);
            move_i(v4, &v64, 2);
            move_i(v4, &v63, 1);
            v41 = OUTLINED_FUNCTION_66_15();
            apply_strong_alternation(v41, v42, &v63);
            v24 = v38;
            if (!v43)
            {
              goto LABEL_40;
            }
          }

LABEL_20:
          v44 = v4[13];
          if (v44)
          {
            v45 = OUTLINED_FUNCTION_53_17(v44);
            v9 = v46;
          }

          else
          {
            v45 = vback(v4, v24);
            v9 = 0;
          }

          v28 = v9;
          v37 = v9;
          switch(v45)
          {
            case 1:
              v10 = v61;
              continue;
            case 2:
              goto LABEL_6;
            case 3:
              v47 = OUTLINED_FUNCTION_74_12();
              bspush_ca_scan(v47, v48);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_34;
            case 4:
              OUTLINED_FUNCTION_2_46();
              goto LABEL_16;
            case 5:
              goto LABEL_17;
            case 6:
              v49 = OUTLINED_FUNCTION_42_21();
              bspush_ca_scan(v49, v50);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_34;
            case 7:
            case 9:
            case 15:
              goto LABEL_19;
            case 8:
              OUTLINED_FUNCTION_2_46();
              goto LABEL_34;
            case 10:
              v57 = OUTLINED_FUNCTION_92_10();
              bspush_ca_scan(v57, v58);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_34;
            case 11:
              v54 = OUTLINED_FUNCTION_94_9();
              bspush_ca_scan(v54, v55);
              OUTLINED_FUNCTION_38_22();
              goto LABEL_34;
            case 12:
              OUTLINED_FUNCTION_2_46();
              v51 = test_string_s();
              v24 = v9;
              if (v51)
              {
                goto LABEL_20;
              }

              v52 = OUTLINED_FUNCTION_86_11();
              bspush_ca_scan(v52, v53);
              OUTLINED_FUNCTION_2_46();
              goto LABEL_31;
            case 13:
              OUTLINED_FUNCTION_2_46();
LABEL_31:
              v56 = test_string_s();
              v24 = v9;
              if (!v56)
              {
                goto LABEL_32;
              }

              goto LABEL_20;
            case 14:
LABEL_32:
              OUTLINED_FUNCTION_17_38();
LABEL_34:
              test_string_s();
              OUTLINED_FUNCTION_124_7();
              if (!v59)
              {
                goto LABEL_19;
              }

              goto LABEL_20;
            case 17:
              bspop_boa(v4);
              OUTLINED_FUNCTION_124_7();
              if (v60 >= 4)
              {
                goto LABEL_19;
              }

              goto LABEL_20;
            default:
              goto LABEL_40;
          }
        }

        break;
      }

LABEL_6:
      v14 = OUTLINED_FUNCTION_93_9();
      starttest(v14, v15);
      v16 = OUTLINED_FUNCTION_8_43();
      if (!lpta_loadp_setscan_l(v16, v17, v18))
      {
        OUTLINED_FUNCTION_38_22();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_82_12();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_38_22();
          if (!test_string_s())
          {
            v19 = OUTLINED_FUNCTION_38_22();
            if (!testFldeq(v19, v20, 4, 1))
            {
              if (advance_tok(v4, v21, v22, v23))
              {
                v24 = v9;
              }

              else
              {
                v24 = 1;
              }

              goto LABEL_20;
            }
          }

          goto LABEL_10;
        }
      }
    }
  }

LABEL_40:
  vretproc(v4);
  OUTLINED_FUNCTION_87_11();
}

void special_cases(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  v4 = v3;
  v93 = *MEMORY[0x277D85DE8];
  v88 = 0;
  OUTLINED_FUNCTION_104_8();
  v84 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v83, v5);
  OUTLINED_FUNCTION_51_17();
  bzero(v92, v6);
  if (setjmp(v92))
  {
    goto LABEL_56;
  }

  if (ventproc(v4, v83, v91, v90, v89, v92))
  {
    goto LABEL_56;
  }

  LOWORD(v88) = -4;
  push_ptr_init(v4, v87);
  push_ptr_init(v4, v86);
  push_ptr_init(v4, v85);
  v84 = 65532;
  fence_46(v4, &_MergedGlobals_39);
  HIWORD(v88) = 1;
  OUTLINED_FUNCTION_117_7();
  if (v7 != v8)
  {
    goto LABEL_56;
  }

  v9 = 0;
  while (2)
  {
    v10 = OUTLINED_FUNCTION_8_43();
    if (lpta_loadp_setscan_l(v10, v11, v12) || (OUTLINED_FUNCTION_17_38(), v13 = v9, test_string_s()))
    {
LABEL_41:
      v13 = v9;
      v71 = OUTLINED_FUNCTION_94_9();
      starttest(v71, v72);
      v73 = OUTLINED_FUNCTION_8_43();
      if (lpta_loadp_setscan_l(v73, v74, v75))
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_5_44();
      if (test_string_s())
      {
        goto LABEL_56;
      }

LABEL_43:
      v76 = OUTLINED_FUNCTION_66_15();
      savescptr(v76, v77, v85);
      OUTLINED_FUNCTION_3_45();
      v24 = v13;
      if (!test_string_s())
      {
LABEL_44:
        v78 = OUTLINED_FUNCTION_86_11();
        savescptr(v78, v79, v86);
        if (*(v4 + 4002) != 5 || (OUTLINED_FUNCTION_93_9(), bspush_ca_boa(), v80 = OUTLINED_FUNCTION_8_43(), lpta_loadp_setscan_r(v80, v81, v82)))
        {
LABEL_46:
          v13 = v24;
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_4_44();
        if (test_string_s())
        {
          v13 = v24;
        }

        else
        {
          v13 = 1;
        }
      }

LABEL_23:
      v58 = v13;
LABEL_24:
      v59 = *(v4 + 104);
      if (v59)
      {
        v60 = OUTLINED_FUNCTION_53_17(v59);
        v13 = v61;
      }

      else
      {
        v60 = vback(v4, v58);
        v13 = 0;
      }

      v22 = 2;
      v23 = v13;
      switch(v60)
      {
        case 1:
          v9 = v13;
          continue;
        case 2:
          v9 = v13;
          goto LABEL_41;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_8;
        case 5:
          v62 = OUTLINED_FUNCTION_100_8();
          bspush_ca_scan(v62, v63);
          OUTLINED_FUNCTION_38_22();
          goto LABEL_33;
        case 6:
        case 14:
          goto LABEL_21;
        case 7:
          v67 = OUTLINED_FUNCTION_95_9();
          bspush_ca_scan(v67, v68);
          OUTLINED_FUNCTION_38_22();
          goto LABEL_33;
        case 8:
          OUTLINED_FUNCTION_38_22();
LABEL_33:
          v69 = test_string_s();
          v58 = v13;
          if (v69)
          {
            goto LABEL_24;
          }

          v22 = 2;
          goto LABEL_55;
        case 9:
        case 16:
        case 17:
          goto LABEL_22;
        case 10:
          v21 = *(v4 + 4002);
          goto LABEL_9;
        case 11:
          v31 = *(v4 + 4002);
          v24 = v13;
          goto LABEL_15;
        case 12:
          v22 = 3;
          goto LABEL_55;
        case 13:
          OUTLINED_FUNCTION_2_46();
          v64 = test_string_s();
          v58 = v13;
          if (v64)
          {
            goto LABEL_24;
          }

          v65 = OUTLINED_FUNCTION_92_10();
          bspush_ca_scan(v65, v66);
          OUTLINED_FUNCTION_2_46();
          goto LABEL_36;
        case 15:
          OUTLINED_FUNCTION_2_46();
LABEL_36:
          v70 = test_string_s();
          v58 = v13;
          if (!v70)
          {
            goto LABEL_54;
          }

          goto LABEL_24;
        case 19:
          goto LABEL_43;
        case 20:
          v24 = v13;
          goto LABEL_44;
        case 21:
          bspop_boa(v4);
LABEL_54:
          v22 = 2;
LABEL_55:
          v23 = v13;
          goto LABEL_21;
        default:
          goto LABEL_56;
      }
    }

    break;
  }

LABEL_7:
  v14 = OUTLINED_FUNCTION_101_8();
  savescptr(v14, v15, v87);
  v16 = OUTLINED_FUNCTION_109_7();
  starttest(v16, v17);
  v18 = OUTLINED_FUNCTION_20_35();
  if (!lpta_loadp_setscan_l(v18, v19, v20))
  {
    v28 = OUTLINED_FUNCTION_23_34();
    bspush_ca_scan(v28, v29);
    OUTLINED_FUNCTION_38_22();
    v30 = test_string_s();
    v22 = 2;
    v23 = v13;
    if (v30)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_8:
  v21 = *(v4 + 4002);
  v22 = 2;
  v23 = v13;
  if (v21 == 3)
  {
LABEL_21:
    v13 = v23;
    HIWORD(v88) = v22;
    goto LABEL_22;
  }

LABEL_9:
  v24 = v13;
  if (v21 == 4)
  {
    v25 = OUTLINED_FUNCTION_82_12();
    starttest(v25, v26);
    v27 = lpta_loadp_setscan_l(v4, v87, 1);
    v22 = 3;
    if (v27)
    {
      v23 = v13;
      goto LABEL_21;
    }

    v33 = OUTLINED_FUNCTION_102_8();
    bspush_ca_scan(v33, v34);
    v35 = OUTLINED_FUNCTION_0_47();
    if (!testFldeq(v35, v36, v37, v38) && !advance_tok(v4, v39, v40, v41))
    {
      v42 = OUTLINED_FUNCTION_0_47();
      if (!testFldeq(v42, v43, v44, v45))
      {
        v49 = advance_tok(v4, v46, v47, v48);
        v22 = 2;
        v23 = v13;
        if (v49)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    goto LABEL_46;
  }

  v31 = v21;
LABEL_15:
  v32 = v31;
  v22 = 3;
  v13 = v24;
  v23 = v24;
  if (v32 == 5)
  {
    goto LABEL_21;
  }

LABEL_22:
  v50 = OUTLINED_FUNCTION_103_8();
  starttest(v50, v51);
  v52 = OUTLINED_FUNCTION_11_42();
  move_i(v52, v53, v54);
  v55 = OUTLINED_FUNCTION_42_21();
  apply_strong_alternation(v55, v56, &v88);
  if (v57)
  {
    goto LABEL_23;
  }

LABEL_56:
  vretproc(v4);
  OUTLINED_FUNCTION_87_11();
}

void default_stress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  v4 = v3;
  v95 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v76, v5);
  OUTLINED_FUNCTION_51_17();
  bzero(v94, v6);
  v7 = setjmp(v94);
  if (v7 || OUTLINED_FUNCTION_107_8(v7, v8, v9, v10, v11, v12, v13, v14, v74, v75, v76[0], v76[1], v76[2], v76[3], v76[4], v76[5], v76[6], v76[7], v76[8], v76[9], v76[10], v76[11], v76[12], v76[13], v76[14], v76[15], v76[16], v76[17], v76[18], v76[19], v76[20], v76[21], v76[22], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94[0]))
  {
    goto LABEL_3;
  }

  v15 = OUTLINED_FUNCTION_42_21();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_49_17();
  push_ptr_init(v17, v18);
  v19 = OUTLINED_FUNCTION_43_20();
  push_ptr_init(v19, v20);
  v77 = 0xFFFC0000FFFCLL;
  fence_46(v4, &_MergedGlobals_39);
  OUTLINED_FUNCTION_44_20();
  find_last_syll();
  v21 = 0;
  while (2)
  {
    if (*(v4 + 4002) != 2)
    {
LABEL_19:
      starttest(v4, 7);
      OUTLINED_FUNCTION_49_17();
      bspush_ca_boa();
      v62 = OUTLINED_FUNCTION_42_21();
      heavy_syllable(v62, v63);
      if (v64)
      {
        v21 = v21;
      }

      else
      {
        v21 = 1;
      }

      goto LABEL_10;
    }

    v22 = OUTLINED_FUNCTION_58_16();
    if (!lpta_loadp_setscan_r(v22, v23, v24))
    {
      v28 = advance_tok(v4, v25, v26, v27);
      v29 = v21;
      if (!v28)
      {
LABEL_8:
        v21 = v29;
        v30 = OUTLINED_FUNCTION_82_12();
        savescptr(v30, v31, &v78);
      }
    }

LABEL_9:
    v32 = OUTLINED_FUNCTION_66_15();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_74_12();
    move_i(v34, v35, 1);
    v36 = OUTLINED_FUNCTION_58_16();
    if (insert_stressval(v36, v37, &v78, &v77 + 4, v38, v39, v40, v41))
    {
LABEL_10:
      v44 = *(v4 + 104);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_53_17(v44);
      }

      else
      {
        v45 = vback(v4, v21);
        v21 = 0;
      }

      switch(v45)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_19;
        case 3:
          goto LABEL_9;
        case 4:
          v29 = v21;
          goto LABEL_8;
        case 5:
        case 6:
        case 9:
          goto LABEL_22;
        case 7:
          v46 = OUTLINED_FUNCTION_100_8();
          starttest(v46, v47);
          v48 = OUTLINED_FUNCTION_95_9();
          move_i(v48, v49, 1);
          v50 = OUTLINED_FUNCTION_74_12();
          move_i(v50, v51, 1);
          v52 = OUTLINED_FUNCTION_95_9();
          v54 = (&v77 + 4);
          goto LABEL_16;
        case 8:
          bspop_boa(v4);
          v55 = OUTLINED_FUNCTION_103_8();
          starttest(v55, v56);
          v57 = OUTLINED_FUNCTION_74_12();
          move_i(v57, v58, 1);
          v59 = OUTLINED_FUNCTION_95_9();
          move_i(v59, v60, 2);
          v52 = OUTLINED_FUNCTION_74_12();
          v54 = &v77;
LABEL_16:
          apply_strong_alternation(v52, v53, v54);
          if (!v61)
          {
            goto LABEL_22;
          }

          goto LABEL_10;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_22:
  two_stress_ending(v4, v42, v43);
  if (!v65)
  {
    v66 = OUTLINED_FUNCTION_119_7();
    lpta_rpta_loadp(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_9_43();
    insert_2pt_i(v69, v70, v71, v72, v73);
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_87_11();
}

uint64_t two_stress_begin(uint64_t a1)
{
  OUTLINED_FUNCTION_108_7();
  v239 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_45_19(v2, v3, v4, v5, v6, v7, v8, v9, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236[0], v236[1], v237[0], v237[1]);
  OUTLINED_FUNCTION_51_17();
  bzero(v238, v10);
  if (setjmp(v238) || (OUTLINED_FUNCTION_57_16(), ventproc(v1, v11, v12, v13, v14, v238)))
  {
LABEL_3:
    v15 = 94;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_34_27();
    get_parm(v18, v19, v20, -6);
    v21 = OUTLINED_FUNCTION_89_11();
    push_ptr_init(v21, v22);
    fence_46(v1, &_MergedGlobals_39);
    v23 = OUTLINED_FUNCTION_37_23();
    starttest(v23, v24);
    v25 = OUTLINED_FUNCTION_43_20();
    if (!lpta_loadp_setscan_r(v25, v26, 7))
    {
      OUTLINED_FUNCTION_14_41();
      if (!test_string_i())
      {
        LODWORD(v27) = 0;
        while (2)
        {
          v28 = OUTLINED_FUNCTION_81_12();
          savescptr(v28, v29, v236);
          OUTLINED_FUNCTION_49_17();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_56_17();
          v30 = test_string_i();
LABEL_10:
          if (v30)
          {
            LODWORD(v31) = v27;
          }

          else
          {
            LODWORD(v31) = 1;
          }

LABEL_13:
          v32 = *(v1 + 104);
          if (v32)
          {
            v33 = OUTLINED_FUNCTION_53_17(v32);
            v27 = v34;
          }

          else
          {
            v33 = vback(v1, v31);
            v27 = 0;
          }

          v35 = v33;
          v15 = 94;
          switch(v35)
          {
            case 1:
              break;
            case 2:
              continue;
            case 3:
              bspop_boa(v1);
              v36 = OUTLINED_FUNCTION_70_13();
              lpta_rpta_loadp(v36, v37, v38);
              v39 = OUTLINED_FUNCTION_38_22();
              if (!setd_lookup(v39, v40, 480))
              {
                goto LABEL_3;
              }

              goto LABEL_18;
            case 4:
LABEL_18:
              v41 = OUTLINED_FUNCTION_37_23();
              starttest(v41, v42);
              if (*(v1 + 6010) != 1)
              {
                goto LABEL_19;
              }

              goto LABEL_86;
            case 5:
            case 33:
            case 45:
            case 57:
              goto LABEL_86;
            case 6:
LABEL_19:
              v43 = OUTLINED_FUNCTION_28_30();
              starttest(v43, v44);
              v45 = OUTLINED_FUNCTION_62_16();
              if (lpta_loadp_setscan_r(v45, v46, v47))
              {
                goto LABEL_20;
              }

              v195 = OUTLINED_FUNCTION_27_31();
              bspush_ca_scan(v195, v196);
              goto LABEL_93;
            case 7:
LABEL_20:
              v48 = OUTLINED_FUNCTION_37_23();
              starttest(v48, v49);
              v50 = OUTLINED_FUNCTION_39_22();
              if (lpta_loadp_setscan_r(v50, v51, v52))
              {
                goto LABEL_21;
              }

              v184 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v184, v185);
              goto LABEL_89;
            case 8:
              while (1)
              {
                v76 = OUTLINED_FUNCTION_10_42();
                if (testFldeq(v76, v77, v78, 2) || advance_tok(v1, v79, v80, v81))
                {
                  break;
                }

                v74 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v74, v75);
              }

              goto LABEL_95;
            case 9:
              OUTLINED_FUNCTION_10_42();
              v107 = test_string_s();
              LODWORD(v31) = v27;
              if (v107)
              {
                goto LABEL_13;
              }

              goto LABEL_74;
            case 10:
              do
              {
LABEL_93:
                v197 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v197, v198);
                v199 = OUTLINED_FUNCTION_10_42();
              }

              while (!testFldeq(v199, v200, v201, 2) && !advance_tok(v1, v202, v203, v204));
              goto LABEL_95;
            case 11:
            case 13:
            case 14:
LABEL_74:
              v161 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v161, v162);
              goto LABEL_75;
            case 12:
            case 16:
            case 24:
            case 25:
            case 31:
              goto LABEL_84;
            case 15:
LABEL_75:
              OUTLINED_FUNCTION_10_42();
              goto LABEL_76;
            case 17:
              OUTLINED_FUNCTION_46_19();
LABEL_76:
              v163 = test_string_s();
              LODWORD(v31) = v27;
              if (!v163)
              {
                goto LABEL_84;
              }

              goto LABEL_13;
            case 18:
LABEL_21:
              v53 = OUTLINED_FUNCTION_37_23();
              starttest(v53, v54);
              if (*(v1 + 4002) != 4)
              {
                goto LABEL_24;
              }

              v55 = OUTLINED_FUNCTION_8_43();
              if (lpta_loadp_setscan_l(v55, v56, v57))
              {
                goto LABEL_24;
              }

              OUTLINED_FUNCTION_5_44();
              if (test_string_s())
              {
                goto LABEL_24;
              }

              v205 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v205, v206);
              goto LABEL_38;
            case 19:
              v159 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v159, v160);
              OUTLINED_FUNCTION_17_38();
              goto LABEL_52;
            case 20:
              v104 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v104, v105);
              OUTLINED_FUNCTION_2_46();
              v106 = test_string_s();
              LODWORD(v31) = v27;
              if (v106)
              {
                goto LABEL_13;
              }

              goto LABEL_81;
            case 21:
              do
              {
LABEL_89:
                v186 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v186, v187);
                v188 = OUTLINED_FUNCTION_0_47();
              }

              while (!testFldeq(v188, v189, v190, v191) && !advance_tok(v1, v192, v193, v194));
              goto LABEL_95;
            case 22:
              v109 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v109, v110);
              OUTLINED_FUNCTION_76_12();
              v111 = OUTLINED_FUNCTION_7_43();
              v114 = test_ptr(v111, v112, v113);
              LODWORD(v31) = v27;
              if (v114)
              {
                goto LABEL_13;
              }

              v115 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v115, v116);
              goto LABEL_80;
            case 23:
            case 30:
              goto LABEL_82;
            case 26:
              v117 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v117, v118);
              OUTLINED_FUNCTION_4_44();
              goto LABEL_83;
            case 27:
              v119 = OUTLINED_FUNCTION_0_47();
              v123 = testFldeq(v119, v120, v121, v122);
              LODWORD(v31) = v27;
              if (v123)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v209 = OUTLINED_FUNCTION_15_40();
              v212 = 12;
              goto LABEL_102;
            case 28:
              goto LABEL_80;
            case 29:
              bspop_boa(v1);
              v169 = advance_tok(v1, v166, v167, v168);
              LODWORD(v31) = v27;
              if (v169)
              {
                goto LABEL_13;
              }

LABEL_80:
              OUTLINED_FUNCTION_2_46();
              v170 = test_string_s();
              LODWORD(v31) = v27;
              if (v170)
              {
                goto LABEL_13;
              }

LABEL_81:
              v171 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v171, v172);
LABEL_82:
              OUTLINED_FUNCTION_2_46();
LABEL_83:
              v173 = test_string_s();
              LODWORD(v31) = v27;
              if (v173)
              {
                goto LABEL_13;
              }

LABEL_84:
              v174 = OUTLINED_FUNCTION_19_37();
              v108 = test_synch(v174, v175, v176, v177);
              goto LABEL_85;
            case 32:
              v95 = OUTLINED_FUNCTION_1_46();
              v99 = testFldeq(v95, v96, v97, v98);
              LODWORD(v31) = v27;
              if (v99)
              {
                goto LABEL_13;
              }

              v102 = advance_tok(v1, v27, v100, v101);
              LODWORD(v31) = v27;
              if (v102)
              {
                goto LABEL_13;
              }

              goto LABEL_82;
            case 34:
              v164 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v164, v165);
              OUTLINED_FUNCTION_3_45();
              goto LABEL_52;
            case 35:
              v207 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v207, v208);
              goto LABEL_99;
            case 36:
              while (1)
              {
                v67 = OUTLINED_FUNCTION_0_47();
                if (testFldeq(v67, v68, v69, v70) || advance_tok(v1, v71, v72, v73))
                {
                  break;
                }

                v65 = OUTLINED_FUNCTION_37_23();
                bspush_ca_scan(v65, v66);
              }

LABEL_95:
              LODWORD(v31) = v27;
              goto LABEL_13;
            case 37:
              bspop_boa(v1);
              v127 = advance_tok(v1, v124, v125, v126);
              LODWORD(v31) = v27;
              if (v127)
              {
                goto LABEL_13;
              }

              v128 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v128, v129);
              v130 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v130, v131);
              goto LABEL_62;
            case 38:
LABEL_99:
              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v209 = OUTLINED_FUNCTION_1_46();
              goto LABEL_102;
            case 39:
              OUTLINED_FUNCTION_2_46();
              v84 = test_string_s();
              LODWORD(v31) = v27;
              if (v84)
              {
                goto LABEL_13;
              }

              goto LABEL_62;
            case 40:
LABEL_62:
              OUTLINED_FUNCTION_2_46();
              v132 = test_string_s();
              LODWORD(v31) = v27;
              if (v132)
              {
                goto LABEL_13;
              }

              v133 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v133, v134);
              v135 = OUTLINED_FUNCTION_0_47();
              v139 = testFldeq(v135, v136, v137, v138);
              LODWORD(v31) = v27;
              if (v139)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v209 = OUTLINED_FUNCTION_15_40();
              v212 = 21;
              goto LABEL_102;
            case 41:
              v91 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v91, v92);
              v93 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v93, v94);
              goto LABEL_45;
            case 42:
              bspop_boa(v1);
              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v209 = OUTLINED_FUNCTION_15_40();
              v212 = 29;
              goto LABEL_102;
            case 43:
              bspop_boa(v1);
              goto LABEL_101;
            case 44:
              bspop_boa(v1);
              v153 = advance_tok(v1, v150, v151, v152);
              LODWORD(v31) = v27;
              if (v153)
              {
                goto LABEL_13;
              }

              v154 = OUTLINED_FUNCTION_1_46();
              v158 = testFldeq(v154, v155, v156, v157);
              v31 = v27;
              if (v158)
              {
                goto LABEL_13;
              }

              goto LABEL_66;
            case 46:
              OUTLINED_FUNCTION_4_44();
              goto LABEL_52;
            case 47:
              v82 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v82, v83);
              goto LABEL_45;
            case 48:
            case 56:
              goto LABEL_51;
            case 49:
LABEL_45:
              OUTLINED_FUNCTION_2_46();
              v103 = test_string_s();
              LODWORD(v31) = v27;
              if (!v103)
              {
                goto LABEL_51;
              }

              goto LABEL_13;
            case 50:
              v142 = OUTLINED_FUNCTION_1_46();
              v146 = testFldeq(v142, v143, v144, v145);
              LODWORD(v31) = v27;
              if (v146)
              {
                goto LABEL_13;
              }

              v149 = advance_tok(v1, v27, v147, v148);
              LODWORD(v31) = v27;
              if (v149)
              {
                goto LABEL_13;
              }

              goto LABEL_51;
            case 51:
LABEL_24:
              v58 = OUTLINED_FUNCTION_37_23();
              starttest(v58, v59);
              v60 = OUTLINED_FUNCTION_39_22();
              if (lpta_loadp_setscan_r(v60, v61, v62))
              {
                goto LABEL_3;
              }

              OUTLINED_FUNCTION_5_44();
              if (test_string_s())
              {
                goto LABEL_3;
              }

              v63 = OUTLINED_FUNCTION_37_23();
              bspush_ca_scan(v63, v64);
LABEL_51:
              OUTLINED_FUNCTION_2_46();
LABEL_52:
              v108 = test_string_s();
              goto LABEL_85;
            case 52:
LABEL_38:
              OUTLINED_FUNCTION_4_44();
              v85 = test_string_s();
              LODWORD(v31) = v27;
              if (!v85)
              {
                goto LABEL_39;
              }

              goto LABEL_13;
            case 53:
LABEL_39:
              v86 = OUTLINED_FUNCTION_0_47();
              v90 = testFldeq(v86, v87, v88, v89);
              LODWORD(v31) = v27;
              if (v90)
              {
                goto LABEL_13;
              }

LABEL_101:
              OUTLINED_FUNCTION_37_23();
              bspush_ca_scan_boa();
              v209 = OUTLINED_FUNCTION_15_40();
              v212 = 24;
LABEL_102:
              v30 = testFldeq(v209, v210, v211, v212);
              goto LABEL_10;
            case 54:
              bspop_boa(v1);
LABEL_66:
              v108 = advance_tok(v1, v31, v140, v141);
LABEL_85:
              LODWORD(v31) = v27;
              if (v108)
              {
                goto LABEL_13;
              }

LABEL_86:
              lpta_rpta_loadp(v1, v237, v236);
              v178 = OUTLINED_FUNCTION_9_43();
              inserted = insert_2pt_i(v178, v179, v180, v181, v182);
              LODWORD(v31) = v27;
              if (!inserted)
              {
                goto LABEL_7;
              }

              goto LABEL_13;
            default:
              goto LABEL_4;
          }

          break;
        }
      }
    }

LABEL_7:
    v15 = 0;
  }

LABEL_4:
  v16 = v15;
  vretproc(v1);
  return v16;
}

void apply_long_alternation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  OUTLINED_FUNCTION_21_34();
  v156 = *MEMORY[0x277D85DE8];
  v147[0] = 0;
  v145 = 0;
  v146 = 0;
  v143 = 0;
  v144 = 0;
  OUTLINED_FUNCTION_104_8();
  OUTLINED_FUNCTION_52_17();
  bzero(v138, v4);
  OUTLINED_FUNCTION_51_17();
  bzero(v155, v5);
  v6 = setjmp(v155);
  if (v6 || OUTLINED_FUNCTION_79_12(v6, v138, v7, v8, v9, v10, v11, v12, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138[0], v138[1], v138[2], v138[3], v138[4], v138[5], v138[6], v138[7], v138[8], v138[9], v138[10], v138[11], v138[12], v138[13], v138[14], v138[15], v138[16], v138[17], v138[18], v138[19], v138[20], v138[21], v138[22], v139[0], v139[1], v140[0], v140[1], v141, v142, v143, v144, v145, v146, v147[0], v147[1], v147[2], v148, v149, v150, v151, v152, v153, v154, v155[0]))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_83_12();
  get_parm(v13, v14, v15, -4);
  v16 = OUTLINED_FUNCTION_59_16();
  get_parm(v16, v17, v18, -4);
  LODWORD(v146) = 65532;
  v19 = OUTLINED_FUNCTION_49_17();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_43_20();
  push_ptr_init(v21, v22);
  v141 = 0xFFFC0000FFFCLL;
  v23 = OUTLINED_FUNCTION_66_15();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_74_12();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_42_21();
  fence_46(v27, v28);
  v29 = OUTLINED_FUNCTION_42_21();
  fence_46(v29, v30);
  OUTLINED_FUNCTION_44_20();
  find_last_syll();
  v31 = 0;
  while (2)
  {
    if (HIWORD(v146))
    {
      startloop(v3, 2);
      move_i(v3, &v146, 1);
      move_i(v3, &v141 + 4, 1);
      copyvar(v3, &v141, &v146 + 2);
      v32 = for_test(v3, &v146, &v141, &v141 + 2);
      v33 = v31;
      if (v32)
      {
        goto LABEL_18;
      }

      do
      {
LABEL_41:
        v31 = v33;
        v109 = OUTLINED_FUNCTION_94_9();
        starttest(v109, v110);
        v111 = OUTLINED_FUNCTION_123_7();
        v113 = lpta_loadp_setscan_l(v111, v112, 7);
        v108 = v31;
        if (!v113)
        {
LABEL_42:
          v31 = v108;
          v114 = OUTLINED_FUNCTION_86_11();
          savescptr(v114, v115, &v142);
          v119 = advance_tok(v3, v116, v117, v118);
          v107 = v31;
          if (v119)
          {
            goto LABEL_18;
          }

LABEL_43:
          v31 = v107;
          v120 = OUTLINED_FUNCTION_93_9();
          savescptr(v120, v121, &v144);
        }

LABEL_44:
        v122 = for_adv(v3, 2, 3, &v146, &v141, &v141 + 2);
        v33 = v31;
      }

      while (v122);
    }

LABEL_8:
    v34 = OUTLINED_FUNCTION_123_7();
    insert_stressval(v34, v35, &v142, v147, v36, v37, v38, v39);
LABEL_9:
    v40 = OUTLINED_FUNCTION_58_16();
    if (!lpta_loadp_setscan_r(v40, v41, 7) && !advance_tok(v3, v42, v43, v44))
    {
      OUTLINED_FUNCTION_76_12();
      v45 = OUTLINED_FUNCTION_7_43();
      if (!test_ptr(v45, v46, v47))
      {
        if (HIWORD(v147[0]) != 2)
        {
          break;
        }

        v124 = &v144;
        v123 = (v3 + 1640);
LABEL_52:
        lpta_rpta_loadp(v3, v123, v124);
        v125 = OUTLINED_FUNCTION_14_41();
        insert_2pt_i(v125, v126, v127, v128, 0);
        break;
      }
    }

LABEL_12:
    v48 = OUTLINED_FUNCTION_123_7();
    lpta_loadpn(v48, v49);
    v50 = OUTLINED_FUNCTION_58_16();
    rpta_loadpn(v50, v51);
    if (!compare_ptas(v3) && !testeq(v3))
    {
      if (HIWORD(v147[0]) != 1)
      {
        break;
      }

      v123 = &v144;
      v124 = &v142;
      goto LABEL_52;
    }

LABEL_14:
    v52 = 2;
    v53 = v31;
    if (HIWORD(v147[0]) != 1)
    {
LABEL_15:
      v52 = 1;
      v53 = v31;
    }

    LODWORD(v31) = v53;
    HIWORD(v147[0]) = v52;
LABEL_17:
    v54 = OUTLINED_FUNCTION_110_7();
    starttest(v54, v55);
    c_assvar(v3, &v141 + 2);
    HIWORD(v141) = *(v3 + 3998) - HIWORD(v146);
    if (SHIWORD(v141) >= 3)
    {
LABEL_18:
      v56 = v31;
LABEL_19:
      v57 = *(v3 + 104);
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_53_17(v57);
        v31 = v63;
      }

      else
      {
        v58 = vback(v3, v56);
        v31 = 0;
      }

      switch(v58)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_8;
        case 3:
          v33 = v31;
          goto LABEL_41;
        case 4:
          goto LABEL_44;
        case 5:
          v108 = v31;
          goto LABEL_42;
        case 6:
          v107 = v31;
          goto LABEL_43;
        case 7:
          goto LABEL_9;
        case 8:
          goto LABEL_12;
        case 10:
          goto LABEL_14;
        case 12:
          goto LABEL_15;
        case 13:
          goto LABEL_17;
        case 14:
          v64 = OUTLINED_FUNCTION_43_20();
          starttest(v64, v65);
          v66 = OUTLINED_FUNCTION_123_7();
          if (!lpta_loadp_setscan_l(v66, v67, 7) && !advance_tok(v3, v68, v69, v70))
          {
            goto LABEL_25;
          }

          goto LABEL_27;
        case 15:
          goto LABEL_27;
        case 16:
LABEL_25:
          v71 = OUTLINED_FUNCTION_101_8();
          savescptr(v71, v72, v139);
          v73 = OUTLINED_FUNCTION_109_7();
          bspush_ca_scan(v73, v74);
          v78 = advance_tok(v3, v75, v76, v77);
          v56 = v31;
          if (!v78)
          {
            goto LABEL_26;
          }

          goto LABEL_19;
        case 17:
LABEL_26:
          v79 = OUTLINED_FUNCTION_37_23();
          savescptr(v79, v80, v140);
LABEL_27:
          v81 = OUTLINED_FUNCTION_100_8();
          starttest(v81, v82);
          OUTLINED_FUNCTION_103_8();
          bspush_ca_boa();
          v83 = OUTLINED_FUNCTION_74_12();
          heavy_syllable(v83, v84);
          if (v85)
          {
            v56 = v31;
          }

          else
          {
            v56 = 1;
          }

          goto LABEL_19;
        case 18:
          goto LABEL_46;
        case 19:
          bspop_boa(v3);
          v86 = OUTLINED_FUNCTION_37_23();
          starttest_e(v86, v87);
          v88 = OUTLINED_FUNCTION_66_15();
          if (!lpta_loadp_setscan_l(v88, v89, 7))
          {
            goto LABEL_31;
          }

          goto LABEL_46;
        case 20:
LABEL_31:
          v90 = OUTLINED_FUNCTION_95_9();
          savescptr(v90, v91, v139);
          v95 = advance_tok(v3, v92, v93, v94);
          v56 = v31;
          if (!v95)
          {
            goto LABEL_35;
          }

          goto LABEL_19;
        case 21:
LABEL_35:
          v100 = OUTLINED_FUNCTION_92_10();
          savescptr(v100, v101, v140);
          goto LABEL_36;
        case 22:
          OUTLINED_FUNCTION_76_12();
          v96 = OUTLINED_FUNCTION_7_43();
          v99 = test_ptr(v96, v97, v98);
          v56 = v31;
          if (v99)
          {
            goto LABEL_19;
          }

LABEL_46:
          insert_stressval(v3, v140, v139, v147, v59, v60, v61, v62);
          goto LABEL_3;
        case 23:
          do
          {
LABEL_36:
            v102 = OUTLINED_FUNCTION_42_21();
            bspush_ca_scan(v102, v103);
          }

          while (!advance_tok(v3, v104, v105, v106));
          goto LABEL_18;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_87_11();
}

uint64_t apply_longalt_final_two_opt(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  HIDWORD(v44) = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v39, v2);
  OUTLINED_FUNCTION_51_17();
  bzero(v54, v3);
  v4 = setjmp(v54);
  if (v4 || OUTLINED_FUNCTION_69_13(v4, v5, v6, v7, v8, v9, v10, v11, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13], v39[14], v39[15], v39[16], v39[17], v39[18], v39[19], v39[20], v39[21], v39[22], v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53))
  {
    goto LABEL_3;
  }

  HIDWORD(v44) = 65532;
  v45 = 65532;
  push_ptr_init(a1, &v42);
  v14 = OUTLINED_FUNCTION_112_7();
  push_ptr_init(v14, v15);
  fence_46(a1, &_MergedGlobals_39);
  v16 = OUTLINED_FUNCTION_81_12();
  starttest(v16, v17);
  v18 = OUTLINED_FUNCTION_43_20();
  move_i(v18, v19, 1);
  v20 = OUTLINED_FUNCTION_49_17();
  move_i(v20, v21, 1);
  v22 = OUTLINED_FUNCTION_29_30();
  apply_long_alternation(v22, v23, v24);
  if (!v25 || ((v26 = *(a1 + 104)) == 0 ? (v27 = OUTLINED_FUNCTION_99_8()) : (v27 = OUTLINED_FUNCTION_53_17(v26)), v27 == 1))
  {
    OUTLINED_FUNCTION_44_20();
    find_last_syll();
LABEL_14:
    two_stress_ending(a1, v28, v29);
    if (!v30)
    {
      v31 = OUTLINED_FUNCTION_111_7();
      lpta_rpta_loadp(v31, v32, v33);
      v12 = 0;
      v34 = OUTLINED_FUNCTION_14_41();
      insert_2pt_i(v34, v35, v36, v37, 0);
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  if (v27 == 2)
  {
    goto LABEL_14;
  }

  if (v27 == 3)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v12 = 94;
LABEL_4:
  vretproc(a1);
  return v12;
}

void two_stress_ending(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88_11();
  v4 = v3;
  v449 = *MEMORY[0x277D85DE8];
  v443[0] = 0;
  v443[1] = 0;
  v444 = 0;
  v442[0] = 0;
  v442[1] = 0;
  OUTLINED_FUNCTION_52_17();
  bzero(v441, v5);
  OUTLINED_FUNCTION_51_17();
  bzero(v448, v6);
  if (!setjmp(v448) && !ventproc(v4, v441, v447, v446, v445, v448))
  {
    BYTE4(v444) = 0;
    LODWORD(v444) = 0;
    LODWORD(v443[0]) = -65535;
    push_ptr_init(v4, v442);
    v7 = OUTLINED_FUNCTION_42_21();
    fence_46(v7, v8);
    fence_46(v4, &unk_280581339);
    if (*(v4 + 5954) != 1)
    {
      LODWORD(v9) = 0;
      while (2)
      {
        OUTLINED_FUNCTION_118_7();
        if (!v10 || (v11 = OUTLINED_FUNCTION_22_34(), lpta_loadp_setscan_l(v11, v12, v13)) || (OUTLINED_FUNCTION_48_17(), test_string_s()))
        {
LABEL_11:
          v14 = OUTLINED_FUNCTION_55_17();
          lpta_rpta_loadp(v14, v15, v16);
          v17 = OUTLINED_FUNCTION_48_17();
          if (!setd_lookup(v17, v18, 479))
          {
            break;
          }

LABEL_12:
          v19 = OUTLINED_FUNCTION_49_17();
          starttest(v19, v20);
          v21 = OUTLINED_FUNCTION_44_20();
          v23 = lpta_loadp_setscan_l(v21, v22, 2);
          v24 = v9;
          if (!v23)
          {
LABEL_40:
            LODWORD(v9) = v24;
            bspush_ca_scan(v4, 8);
            v88 = OUTLINED_FUNCTION_35_26();
            goto LABEL_41;
          }

LABEL_13:
          v25 = OUTLINED_FUNCTION_55_17();
          lpta_rpta_loadp(v25, v26, v27);
          v28 = OUTLINED_FUNCTION_48_17();
          if (!setd_lookup(v28, v29, 478))
          {
            break;
          }

LABEL_14:
          v30 = OUTLINED_FUNCTION_22_34();
          if (lpta_loadp_setscan_l(v30, v31, v32) || (OUTLINED_FUNCTION_48_17(), test_string_s()) || (OUTLINED_FUNCTION_117_7(), v33 ^ v34) || lpta_loadp_setscan_l(v4, v4 + 4008, 7) || advance_tok(v4, v35, v36, v37) || (OUTLINED_FUNCTION_14_41(), test_string_i()))
          {
LABEL_20:
            v38 = OUTLINED_FUNCTION_100_8();
            starttest(v38, v39);
            v40 = OUTLINED_FUNCTION_22_34();
            if (!lpta_loadp_setscan_l(v40, v41, v42))
            {
              OUTLINED_FUNCTION_48_17();
              v43 = test_string_s();
              v44 = v9;
              if (!v43)
              {
LABEL_223:
                LODWORD(v9) = v44;
                v439 = OUTLINED_FUNCTION_43_20();
                savescptr(v439, v440, v442);
                bspush_ca(v4);
                OUTLINED_FUNCTION_117_7();
                if (v33 == v34)
                {
                  break;
                }

                goto LABEL_43;
              }
            }

LABEL_22:
            starttest(v4, 17);
            v45 = OUTLINED_FUNCTION_44_20();
            if (lpta_loadp_setscan_l(v45, v46, 2))
            {
LABEL_23:
              v47 = OUTLINED_FUNCTION_101_8();
              starttest(v47, v48);
              v49 = OUTLINED_FUNCTION_22_34();
              if (!lpta_loadp_setscan_l(v49, v50, v51))
              {
                OUTLINED_FUNCTION_48_17();
                if (!test_string_s())
                {
                  OUTLINED_FUNCTION_109_7();
                  bspush_ca_boa();
                  v76 = OUTLINED_FUNCTION_22_34();
                  if (!lpta_loadp_setscan_r(v76, v77, v78))
                  {
                    v79 = OUTLINED_FUNCTION_92_10();
                    bspush_ca_scan(v79, v80);
                    *(v4 + 136) = 1;
                    v81 = OUTLINED_FUNCTION_7_43();
                    if (!test_ptr(v81, v82, v83))
                    {
LABEL_37:
                      LODWORD(v9) = 1;
                    }
                  }

                  goto LABEL_43;
                }
              }

LABEL_25:
              v52 = OUTLINED_FUNCTION_94_9();
              starttest(v52, v53);
              v54 = OUTLINED_FUNCTION_22_34();
              if (lpta_loadp_setscan_l(v54, v55, v56) || (OUTLINED_FUNCTION_48_17(), test_string_s()))
              {
LABEL_27:
                v57 = OUTLINED_FUNCTION_93_9();
                starttest(v57, v58);
                v59 = OUTLINED_FUNCTION_22_34();
                if (lpta_loadp_setscan_l(v59, v60, v61))
                {
                  break;
                }

                v62 = OUTLINED_FUNCTION_82_12();
                bspush_ca_scan(v62, v63);
                v64 = OUTLINED_FUNCTION_102_8();
                bspush_ca_scan(v64, v65);
                OUTLINED_FUNCTION_48_17();
                v66 = test_string_s();
                v67 = v9;
                if (!v66)
                {
LABEL_29:
                  LODWORD(v9) = v67;
                  v68 = OUTLINED_FUNCTION_48_17();
                  if (!testFldeq(v68, v69, 4, 1) && !advance_tok(v4, v70, v71, v72))
                  {
                    break;
                  }
                }

LABEL_43:
                LODWORD(v95) = v9;
LABEL_44:
                v96 = *(v4 + 104);
                if (v96)
                {
                  v97 = OUTLINED_FUNCTION_53_17(v96);
                  v9 = v98;
                }

                else
                {
                  v97 = vback(v4, v95);
                  v9 = 0;
                }

                v24 = v9;
                v75 = v9;
                v67 = v9;
                switch(v97)
                {
                  case 1:
                    continue;
                  case 3:
                    goto LABEL_11;
                  case 4:
                    goto LABEL_12;
                  case 5:
                    goto LABEL_13;
                  case 6:
                    goto LABEL_40;
                  case 7:
                    bspop_boa(v4);
                    v102 = advance_tok(v4, v99, v100, v101);
                    v24 = v9;
                    LODWORD(v95) = v9;
                    if (!v102)
                    {
                      goto LABEL_40;
                    }

                    goto LABEL_44;
                  case 8:
                    OUTLINED_FUNCTION_28_30();
                    bspush_ca_scan_boa();
                    v113 = OUTLINED_FUNCTION_10_42();
                    goto LABEL_139;
                  case 9:
                    goto LABEL_14;
                  case 10:
                    goto LABEL_20;
                  case 11:
                    goto LABEL_22;
                  case 12:
                    v44 = v9;
                    goto LABEL_223;
                  case 13:
                    v109 = OUTLINED_FUNCTION_39_22();
                    v112 = lpta_loadp_setscan_l(v109, v110, v111);
                    LODWORD(v95) = v9;
                    if (v112)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v113 = OUTLINED_FUNCTION_3_45();
LABEL_139:
                    v196 = 1;
                    goto LABEL_140;
                  case 15:
                    bspop_boa(v4);
                    OUTLINED_FUNCTION_25_32();
                    bspush_ca_scan_boa();
                    v113 = OUTLINED_FUNCTION_15_40();
                    v196 = 19;
                    goto LABEL_140;
                  case 16:
                    bspop_boa(v4);
                    goto LABEL_195;
                  case 17:
                    goto LABEL_23;
                  case 18:
                    v351 = OUTLINED_FUNCTION_10_42();
                    v354 = testFldeq(v351, v352, v353, 2);
                    LODWORD(v95) = v9;
                    if (v354)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v355 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v355, v356);
                    v241 = OUTLINED_FUNCTION_46_19();
                    v244 = 24;
                    goto LABEL_215;
                  case 19:
                    goto LABEL_33;
                  case 20:
                    bspop_boa(v4);
                    v217 = advance_tok(v4, v214, v215, v216);
                    v75 = v9;
                    LODWORD(v95) = v9;
                    if (!v217)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_44;
                  case 21:
                    v428 = OUTLINED_FUNCTION_81_12();
                    bspush_ca_scan(v428, v429);
                    v241 = OUTLINED_FUNCTION_46_19();
                    v244 = 23;
                    goto LABEL_215;
                  case 22:
                  case 55:
                  case 120:
                    goto LABEL_217;
                  case 23:
                    v413 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v413, v414);
                    v241 = OUTLINED_FUNCTION_46_19();
                    v244 = 20;
                    goto LABEL_215;
                  case 24:
                    v275 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v275, v276);
                    v241 = OUTLINED_FUNCTION_46_19();
                    v244 = 14;
                    goto LABEL_215;
                  case 25:
                    v241 = OUTLINED_FUNCTION_46_19();
                    v244 = 10;
LABEL_215:
                    v412 = testFldeq(v241, v242, v243, v244);
                    goto LABEL_216;
                  case 26:
                    goto LABEL_25;
                  case 27:
                    bspop_boa(v4);
                    goto LABEL_3;
                  case 28:
                    v197 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v197, v198);
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_212;
                  case 29:
                    goto LABEL_37;
                  case 30:
                    v403 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v403, v404);
                    goto LABEL_211;
                  case 31:
                    v103 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v103, v104);
                    OUTLINED_FUNCTION_5_44();
                    goto LABEL_212;
                  case 32:
LABEL_211:
                    OUTLINED_FUNCTION_4_44();
LABEL_212:
                    v427 = test_string_s();
                    LODWORD(v95) = v9;
                    if (!v427)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_44;
                  case 33:
                    goto LABEL_27;
                  case 34:
                    v152 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v152, v153);
                    v154 = OUTLINED_FUNCTION_0_47();
                    v158 = testFldeq(v154, v155, v156, v157);
                    LODWORD(v95) = v9;
                    if (v158)
                    {
                      goto LABEL_44;
                    }

                    v159 = OUTLINED_FUNCTION_15_40();
                    v162 = 19;
                    goto LABEL_65;
                  case 36:
                    v415 = OUTLINED_FUNCTION_0_47();
                    v419 = testFldeq(v415, v416, v417, v418);
                    LODWORD(v95) = v9;
                    if (v419)
                    {
                      goto LABEL_44;
                    }

                    v420 = OUTLINED_FUNCTION_15_40();
                    v423 = testFldeq(v420, v421, v422, 13);
                    LODWORD(v95) = v9;
                    if (v423)
                    {
                      goto LABEL_44;
                    }

                    v426 = advance_tok(v4, v9, v424, v425);
                    LODWORD(v95) = v9;
                    if (v426)
                    {
                      goto LABEL_44;
                    }

                    v159 = OUTLINED_FUNCTION_1_46();
LABEL_65:
                    v163 = testFldeq(v159, v160, v161, v162);
                    LODWORD(v95) = v9;
                    if (!v163)
                    {
                      v166 = advance_tok(v4, v9, v164, v165);
                      LODWORD(v95) = v9;
                      if (!v166)
                      {
                        goto LABEL_3;
                      }
                    }

                    goto LABEL_44;
                  case 38:
                    v173 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v173, v174);
                    OUTLINED_FUNCTION_2_46();
                    v175 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v175)
                    {
                      goto LABEL_44;
                    }

                    v176 = OUTLINED_FUNCTION_1_46();
                    v180 = testFldeq(v176, v177, v178, v179);
                    LODWORD(v95) = v9;
                    if (v180)
                    {
                      goto LABEL_44;
                    }

                    v183 = advance_tok(v4, v9, v181, v182);
                    LODWORD(v95) = v9;
                    if (v183)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v184 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v184, v185);
                    goto LABEL_185;
                  case 39:
                    OUTLINED_FUNCTION_2_46();
                    v312 = test_string_s();
                    v67 = v9;
                    LODWORD(v95) = v9;
                    if (!v312)
                    {
                      goto LABEL_29;
                    }

                    goto LABEL_44;
                  case 40:
                    goto LABEL_29;
                  case 42:
                    v322 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v322, v323);
                    v324 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v324, v325);
                    OUTLINED_FUNCTION_2_46();
                    v326 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v326)
                    {
                      goto LABEL_44;
                    }

                    v327 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v327, v328);
                    goto LABEL_146;
                  case 43:
                  case 63:
                  case 118:
                    bspop_boa(v4);
                    goto LABEL_3;
                  case 44:
LABEL_185:
                    OUTLINED_FUNCTION_2_46();
                    v387 = test_string_s();
                    LODWORD(v95) = v9;
                    if (!v387)
                    {
                      goto LABEL_186;
                    }

                    goto LABEL_44;
                  case 45:
LABEL_186:
                    v388 = OUTLINED_FUNCTION_1_46();
                    v392 = testFldeq(v388, v389, v390, v391);
                    LODWORD(v95) = v9;
                    if (v392)
                    {
                      goto LABEL_44;
                    }

                    v151 = advance_tok(v4, v9, v393, v394);
                    goto LABEL_201;
                  case 46:
                    v105 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v105, v106);
                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v107 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v107, v108);
                    goto LABEL_204;
                  case 47:
                    v313 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v313, v314);
                    goto LABEL_144;
                  case 48:
                  case 51:
                    goto LABEL_146;
                  case 49:
                  case 50:
                  case 73:
                  case 86:
                  case 93:
                  case 97:
                  case 105:
                  case 109:
                  case 125:
                  case 129:
                  case 135:
                  case 141:
                  case 150:
                  case 153:
                  case 156:
                    goto LABEL_181;
                  case 52:
                    v116 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v116, v117);
                    OUTLINED_FUNCTION_4_44();
                    v118 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v118)
                    {
                      goto LABEL_44;
                    }

                    v119 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v119, v120);
                    goto LABEL_56;
                  case 53:
                    bspop_boa(v4);
                    goto LABEL_198;
                  case 54:
LABEL_204:
                    OUTLINED_FUNCTION_3_45();
                    goto LABEL_205;
                  case 56:
                    goto LABEL_198;
                  case 57:
                    v358 = OUTLINED_FUNCTION_0_47();
                    v362 = testFldeq(v358, v359, v360, v361);
                    LODWORD(v95) = v9;
                    if (v362)
                    {
                      goto LABEL_44;
                    }

                    v365 = advance_tok(v4, v9, v363, v364);
                    LODWORD(v95) = v9;
                    if (v365)
                    {
                      goto LABEL_44;
                    }

LABEL_198:
                    v405 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v405, v406);
                    OUTLINED_FUNCTION_2_46();
                    v407 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v407)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
LABEL_200:
                    v408 = OUTLINED_FUNCTION_19_37();
                    v151 = test_synch(v408, v409, v410, v411);
                    goto LABEL_201;
                  case 58:
                    bspop_boa(v4);
                    goto LABEL_181;
                  case 59:
                    goto LABEL_200;
                  case 60:
                  case 67:
                    v379 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v379, v380);
                    v381 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v381, v382);
                    goto LABEL_178;
                  case 61:
LABEL_56:
                    OUTLINED_FUNCTION_2_46();
                    v121 = test_string_s();
                    LODWORD(v95) = v9;
                    if (!v121)
                    {
                      goto LABEL_57;
                    }

                    goto LABEL_44;
                  case 62:
LABEL_57:
                    v122 = savetok(v4, v443);
                    LODWORD(v95) = v9;
                    if (v122)
                    {
                      goto LABEL_44;
                    }

                    v123 = OUTLINED_FUNCTION_0_47();
                    v127 = testFldeq(v123, v124, v125, v126);
                    LODWORD(v95) = v9;
                    if (v127)
                    {
                      goto LABEL_44;
                    }

                    v130 = advance_tok(v4, v9, v128, v129);
                    LODWORD(v95) = v9;
                    if (v130)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v131 = OUTLINED_FUNCTION_15_40();
                    v134 = npush_fld(v131, v132, v133);
                    LODWORD(v95) = v9;
                    if (v134)
                    {
                      goto LABEL_44;
                    }

                    v137 = advance_tok(v4, v9, v135, v136);
                    LODWORD(v95) = v9;
                    if (v137)
                    {
                      goto LABEL_44;
                    }

                    WORD1(v443[0]) = 0;
                    npush_vf(v4, v443, v138, v139, v140, v141, v142, v143);
                    v151 = if_testeq(v4, v144, v145, v146, v147, v148, v149, v150);
                    goto LABEL_201;
                  case 64:
                    v253 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v253, v254);
                    goto LABEL_106;
                  case 65:
                  case 68:
                    v171 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v171, v172);
                    goto LABEL_178;
                  case 66:
                  case 128:
                  case 144:
                  case 146:
                  case 147:
                  case 148:
                    goto LABEL_180;
                  case 69:
                    OUTLINED_FUNCTION_4_44();
                    v292 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v292)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_178;
                  case 70:
LABEL_178:
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_179;
                  case 71:
                    v366 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v366, v367);
                    goto LABEL_172;
                  case 72:
LABEL_172:
                    OUTLINED_FUNCTION_4_44();
LABEL_179:
                    v383 = test_string_s();
                    LODWORD(v95) = v9;
                    if (!v383)
                    {
                      goto LABEL_180;
                    }

                    goto LABEL_44;
                  case 75:
                  case 76:
                  case 94:
                  case 126:
                    v346 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v346, v347);
                    OUTLINED_FUNCTION_3_45();
                    goto LABEL_182;
                  case 77:
                    v167 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v167, v168);
                    v169 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v169, v170);
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_190;
                  case 78:
                    v229 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v229, v230);
                    v231 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v231, v232);
LABEL_106:
                    OUTLINED_FUNCTION_5_44();
                    goto LABEL_192;
                  case 79:
                    v395 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v395, v396);
                    goto LABEL_189;
                  case 80:
                  case 83:
                    goto LABEL_191;
                  case 81:
LABEL_189:
                    OUTLINED_FUNCTION_4_44();
LABEL_190:
                    v397 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v397)
                    {
                      goto LABEL_44;
                    }

LABEL_191:
                    OUTLINED_FUNCTION_4_44();
LABEL_192:
                    v287 = test_string_s();
                    goto LABEL_193;
                  case 82:
                    v293 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v293, v294);
                    OUTLINED_FUNCTION_4_44();
                    v295 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v295)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_180;
                  case 84:
                    goto LABEL_194;
                  case 85:
                    v296 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v296, v297);
                    OUTLINED_FUNCTION_2_46();
                    v298 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v298)
                    {
                      goto LABEL_44;
                    }

                    v299 = OUTLINED_FUNCTION_0_47();
                    v303 = testFldeq(v299, v300, v301, v302);
                    LODWORD(v95) = v9;
                    if (v303)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v113 = OUTLINED_FUNCTION_15_40();
                    v196 = 24;
                    goto LABEL_140;
                  case 88:
                  case 91:
                  case 115:
                    goto LABEL_153;
                  case 89:
                    bspop_boa(v4);
                    v271 = advance_tok(v4, v268, v269, v270);
                    LODWORD(v95) = v9;
                    if (v271)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_181;
                  case 90:
                    v316 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v316, v317);
                    v318 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v318, v319);
LABEL_146:
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_147;
                  case 92:
LABEL_144:
                    OUTLINED_FUNCTION_4_44();
LABEL_147:
                    v320 = test_string_s();
                    LODWORD(v95) = v9;
                    if (!v320)
                    {
                      goto LABEL_181;
                    }

                    goto LABEL_44;
                  case 95:
                    v348 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v348, v349);
                    OUTLINED_FUNCTION_4_44();
                    v350 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v350)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_180;
                  case 96:
                    v336 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v336, v337);
                    goto LABEL_158;
                  case 99:
                    v199 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v199, v200);
                    goto LABEL_81;
                  case 100:
LABEL_158:
                    v338 = OUTLINED_FUNCTION_0_47();
                    v342 = testFldeq(v338, v339, v340, v341);
                    LODWORD(v95) = v9;
                    if (!v342)
                    {
                      v345 = advance_tok(v4, v9, v343, v344);
                      LODWORD(v95) = v9;
                      if (!v345)
                      {
                        goto LABEL_85;
                      }
                    }

                    goto LABEL_44;
                  case 101:
                    v368 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v368, v369);
                    OUTLINED_FUNCTION_2_46();
                    v370 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v370)
                    {
                      goto LABEL_44;
                    }

                    v371 = OUTLINED_FUNCTION_0_47();
                    v375 = testFldeq(v371, v372, v373, v374);
                    LODWORD(v95) = v9;
                    if (v375)
                    {
                      goto LABEL_44;
                    }

                    v378 = advance_tok(v4, v9, v376, v377);
                    LODWORD(v95) = v9;
                    if (v378)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_181;
                  case 102:
LABEL_81:
                    v201 = OUTLINED_FUNCTION_0_47();
                    v205 = testFldeq(v201, v202, v203, v204);
                    LODWORD(v95) = v9;
                    if (!v205)
                    {
                      v208 = advance_tok(v4, v9, v206, v207);
                      LODWORD(v95) = v9;
                      if (!v208)
                      {
                        goto LABEL_85;
                      }
                    }

                    goto LABEL_44;
                  case 103:
                    v265 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v265, v266);
                    OUTLINED_FUNCTION_4_44();
                    v267 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v267)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_180;
                  case 104:
                    v245 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v245, v246);
                    OUTLINED_FUNCTION_2_46();
                    v247 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v247)
                    {
                      goto LABEL_44;
                    }

                    v248 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v248, v249);
                    goto LABEL_166;
                  case 107:
                    v209 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v209, v210);
                    OUTLINED_FUNCTION_2_46();
                    v211 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v211)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_85;
                  case 108:
LABEL_166:
                    OUTLINED_FUNCTION_2_46();
                    v357 = test_string_s();
                    LODWORD(v95) = v9;
                    if (!v357)
                    {
                      goto LABEL_181;
                    }

                    goto LABEL_44;
                  case 110:
                    v186 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v186, v187);
                    goto LABEL_75;
                  case 111:
                    OUTLINED_FUNCTION_2_46();
                    v315 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v315)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_143;
                  case 112:
                  case 154:
                    goto LABEL_143;
                  case 113:
                    v255 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v255, v256);
                    v257 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v257, v258);
                    OUTLINED_FUNCTION_2_46();
                    v259 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v259)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_108;
                  case 114:
LABEL_75:
                    v188 = OUTLINED_FUNCTION_0_47();
                    v192 = testFldeq(v188, v189, v190, v191);
                    LODWORD(v95) = v9;
                    if (!v192)
                    {
                      v195 = advance_tok(v4, v9, v193, v194);
                      LODWORD(v95) = v9;
                      if (!v195)
                      {
                        goto LABEL_85;
                      }
                    }

                    goto LABEL_44;
                  case 116:
LABEL_108:
                    v260 = OUTLINED_FUNCTION_0_47();
                    v264 = testFldeq(v260, v261, v262, v263);
                    LODWORD(v95) = v9;
                    if (v264)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v113 = OUTLINED_FUNCTION_15_40();
                    v196 = 26;
LABEL_140:
                    v151 = testFldeq(v113, v114, v115, v196);
                    goto LABEL_201;
                  case 117:
                    bspop_boa(v4);
                    v221 = advance_tok(v4, v218, v219, v220);
                    LODWORD(v95) = v9;
                    if (v221)
                    {
                      goto LABEL_44;
                    }

                    v222 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v222, v223);
                    OUTLINED_FUNCTION_4_44();
                    v224 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v224)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    v225 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v225, v226);
                    goto LABEL_88;
                  case 119:
LABEL_88:
                    OUTLINED_FUNCTION_2_46();
LABEL_205:
                    v412 = test_string_s();
LABEL_216:
                    LODWORD(v95) = v9;
                    if (!v412)
                    {
LABEL_217:
                      LODWORD(v95) = 1;
                    }

                    goto LABEL_44;
                  case 121:
                    v233 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v233, v234);
                    OUTLINED_FUNCTION_5_44();
                    v235 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v235)
                    {
                      goto LABEL_44;
                    }

LABEL_153:
                    v329 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v329, v330);
                    OUTLINED_FUNCTION_5_44();
                    goto LABEL_182;
                  case 122:
                    v236 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v236, v237);
                    OUTLINED_FUNCTION_2_46();
                    v238 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v238)
                    {
                      goto LABEL_44;
                    }

                    v239 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v239, v240);
                    goto LABEL_149;
                  case 123:
                  case 131:
                  case 149:
LABEL_85:
                    v212 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v212, v213);
LABEL_143:
                    OUTLINED_FUNCTION_4_44();
                    goto LABEL_182;
                  case 127:
LABEL_149:
                    OUTLINED_FUNCTION_2_46();
                    v321 = test_string_s();
                    LODWORD(v95) = v9;
                    if (!v321)
                    {
                      goto LABEL_180;
                    }

                    goto LABEL_44;
                  case 132:
                    v331 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v331, v332);
                    v333 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v333, v334);
                    OUTLINED_FUNCTION_3_45();
                    goto LABEL_155;
                  case 133:
                    v272 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v272, v273);
                    OUTLINED_FUNCTION_4_44();
                    v274 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v274)
                    {
                      goto LABEL_44;
                    }

                    OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan_boa();
                    OUTLINED_FUNCTION_4_44();
                    v151 = test_string_s();
LABEL_201:
                    if (v151)
                    {
                      LODWORD(v95) = v9;
                    }

                    else
                    {
                      LODWORD(v95) = 1;
                    }

                    goto LABEL_44;
                  case 134:
                    while (1)
                    {
                      v432 = OUTLINED_FUNCTION_0_47();
                      if (testFldeq(v432, v433, v434, v435) || advance_tok(v4, v436, v437, v438))
                      {
                        break;
                      }

                      v430 = OUTLINED_FUNCTION_37_23();
                      bspush_ca_scan(v430, v431);
                    }

                    goto LABEL_43;
                  case 136:
                  case 152:
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_155;
                  case 137:
                    v304 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v304, v305);
                    v306 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v306, v307);
                    OUTLINED_FUNCTION_2_46();
                    goto LABEL_130;
                  case 138:
                    bspop_boa(v4);
                    goto LABEL_194;
                  case 139:
                    v277 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v277, v278);
                    OUTLINED_FUNCTION_5_44();
                    v279 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v279)
                    {
                      goto LABEL_44;
                    }

                    v280 = OUTLINED_FUNCTION_0_47();
                    v284 = testFldeq(v280, v281, v282, v283);
                    LODWORD(v95) = v9;
                    if (v284)
                    {
                      goto LABEL_44;
                    }

                    v287 = advance_tok(v4, v9, v285, v286);
LABEL_193:
                    LODWORD(v95) = v9;
                    if (v287)
                    {
                      goto LABEL_44;
                    }

LABEL_194:
                    v398 = OUTLINED_FUNCTION_0_47();
                    v402 = testFldeq(v398, v399, v400, v401);
                    v95 = v9;
                    if (v402)
                    {
                      goto LABEL_44;
                    }

LABEL_195:
                    v386 = advance_tok(v4, v95, v227, v228);
                    goto LABEL_183;
                  case 140:
                    OUTLINED_FUNCTION_5_44();
LABEL_130:
                    v308 = test_string_s();
                    LODWORD(v95) = v9;
                    if (!v308)
                    {
                      goto LABEL_181;
                    }

                    goto LABEL_44;
                  case 142:
                    v250 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v250, v251);
                    OUTLINED_FUNCTION_4_44();
                    v252 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v252)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_180;
                  case 143:
                    v309 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v309, v310);
                    OUTLINED_FUNCTION_5_44();
                    v311 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v311)
                    {
                      goto LABEL_44;
                    }

LABEL_180:
                    v384 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v384, v385);
                    goto LABEL_181;
                  case 151:
                    v288 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v288, v289);
                    v290 = OUTLINED_FUNCTION_37_23();
                    bspush_ca_scan(v290, v291);
                    OUTLINED_FUNCTION_4_44();
                    goto LABEL_155;
                  case 155:
                    OUTLINED_FUNCTION_5_44();
LABEL_155:
                    v335 = test_string_s();
                    LODWORD(v95) = v9;
                    if (v335)
                    {
                      goto LABEL_44;
                    }

LABEL_181:
                    OUTLINED_FUNCTION_2_46();
LABEL_182:
                    v386 = test_string_s();
LABEL_183:
                    LODWORD(v95) = v9;
                    if (!v386)
                    {
                      goto LABEL_3;
                    }

                    goto LABEL_44;
                  default:
                    goto LABEL_3;
                }
              }

              v84 = OUTLINED_FUNCTION_86_11();
              bspush_ca_scan(v84, v85);
              v86 = OUTLINED_FUNCTION_48_17();
              if (testFldeq(v86, v87, 4, 2))
              {
                goto LABEL_43;
              }

              v88 = OUTLINED_FUNCTION_48_17();
              v91 = 24;
LABEL_41:
              if (!testFldeq(v88, v89, v90, v91) && !advance_tok(v4, v92, v93, v94))
              {
                break;
              }

              goto LABEL_43;
            }

            v73 = OUTLINED_FUNCTION_110_7();
            bspush_ca_scan(v73, v74);
            v75 = v9;
LABEL_33:
            LODWORD(v9) = v75;
            OUTLINED_FUNCTION_46_19();
            if (test_string_s())
            {
              goto LABEL_43;
            }
          }
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_87_11();
}