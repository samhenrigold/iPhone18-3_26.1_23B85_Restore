uint64_t open_final_syll(void *a1, __int16 *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v103 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96);
  OUTLINED_FUNCTION_16_35();
  bzero(v102, v10);
  v11 = setjmp(v102);
  if (!v11 && !OUTLINED_FUNCTION_15_35(v11, v12, v13, v14, v15, v16, v17, v18, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v98, SHIDWORD(v98), v99, SWORD2(v99), SHIWORD(v99), v100, SWORD2(v100), SBYTE6(v100), SHIBYTE(v100), v101, v102[0]))
  {
    v20 = OUTLINED_FUNCTION_14_36();
    get_parm(v20, v21, a2, -6);
    OUTLINED_FUNCTION_22_28(v22, v23, &null_str_17);
    v24 = OUTLINED_FUNCTION_6_39();
    starttest(v24, v25);
    bspush_ca_boa();
    v26 = OUTLINED_FUNCTION_14_36();
    if (lpta_loadp_setscan_r(v26, v27, 2))
    {
      v28 = 0;
    }

    else
    {
      v29 = OUTLINED_FUNCTION_6_39();
      bspush_ca_scan(v29, v30);
      v31 = OUTLINED_FUNCTION_2_42();
      if (testFldeq(v31, v32, v33, 2) || (v34 = OUTLINED_FUNCTION_9_38(), testFldeq(v34, v35, 17, 1)))
      {
        v28 = 0;
      }

      else
      {
        v39 = advance_tok(a1, v36, v37, v38);
        v40 = 0;
        v28 = 0;
        if (!v39)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
      v45 = a1[13];
      if (v45)
      {
        v46 = OUTLINED_FUNCTION_18_34(v45);
      }

      else
      {
        v46 = vback(a1, v28);
        v47 = 0;
      }

      v40 = v47;
      if (v46 != 3)
      {
        break;
      }

LABEL_11:
      v41 = v40;
      v42 = OUTLINED_FUNCTION_6_39();
      if (test_synch(v42, v43, 1, v44))
      {
        v28 = v41;
      }

      else
      {
        v28 = 1;
      }
    }

    if (v46 == 2)
    {
      bspop_boa(a1);
    }

    else if (v46 == 1)
    {
      vretproc(a1);
      return 0;
    }
  }

  vretproc(a1);
  return 94;
}

uint64_t is_one_syll(uint64_t a1, __int16 *a2, __int16 *a3, int a4, int a5, int a6, int a7, int a8)
{
  v71 = *MEMORY[0x277D85DE8];
  v66[0] = 0;
  v66[1] = 0;
  OUTLINED_FUNCTION_11_38(a1, a2, a3, a4, a5, a6, a7, a8, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v64[12], v64[13], v64[14], v64[15], v64[16], v64[17], v64[18], v64[19], v64[20], v64[21], v64[22], v64[23], v65);
  OUTLINED_FUNCTION_16_35();
  bzero(v70, v11);
  if (!setjmp(v70) && !ventproc(a1, v64, v69, v68, v67, v70))
  {
    get_parm(a1, v66, a2, -6);
    v13 = OUTLINED_FUNCTION_13_37();
    get_parm(v13, v14, a3, -6);
    OUTLINED_FUNCTION_22_28(v15, v16, &null_str_17);
    v17 = OUTLINED_FUNCTION_6_39();
    starttest(v17, v18);
    bspush_ca_boa();
    v19 = lpta_loadp_setscan_r(a1, v66, 2);
    LODWORD(v20) = 0;
    v21 = 0;
    if (!v19)
    {
LABEL_6:
      v21 = v20;
      v22 = OUTLINED_FUNCTION_6_39();
      bspush_ca_scan(v22, v23);
      v24 = OUTLINED_FUNCTION_2_42();
      if (!testFldeq(v24, v25, v26, 1))
      {
        v30 = advance_tok(a1, v27, v28, v29);
        v31 = v21;
        if (!v30)
        {
LABEL_8:
          v32 = v31;
          v33 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v33, v34);
          v35 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v35, v36);
          v38 = v32;
LABEL_27:
          v21 = v38;
          *(a1 + 136) = 1;
          *(a1 + 112) = v65;
          *(a1 + 128) = 0;
          if (!test_ptr(a1, v37, v20))
          {
            v21 = 1;
          }
        }
      }
    }

    LODWORD(v37) = v21;
    while (2)
    {
      v39 = *(a1 + 104);
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_18_34(v39);
        v42 = v41;
      }

      else
      {
        v40 = vback(a1, v37);
        v42 = 0;
      }

      v37 = 4;
      v20 = v42;
      v31 = v42;
      v38 = v42;
      switch(v40)
      {
        case 1:
          vretproc(a1);
          return 0;
        case 2:
          bspop_boa(a1);
          break;
        case 3:
          goto LABEL_6;
        case 4:
          bspop_boa(a1);
          v46 = advance_tok(a1, v43, v44, v45);
          LODWORD(v20) = v42;
          LODWORD(v37) = v42;
          if (!v46)
          {
            goto LABEL_6;
          }

          continue;
        case 5:
        case 8:
          bspush_ca_scan_boa();
          v59 = OUTLINED_FUNCTION_2_42();
          if (testFldeq(v59, v60, v61, 1))
          {
            LODWORD(v37) = v42;
          }

          else
          {
            LODWORD(v37) = 1;
          }

          continue;
        case 6:
          goto LABEL_8;
        case 7:
          bspop_boa(a1);
          v51 = advance_tok(a1, v48, v49, v50);
          v31 = v42;
          LODWORD(v37) = v42;
          if (!v51)
          {
            goto LABEL_8;
          }

          continue;
        case 9:
          OUTLINED_FUNCTION_2_42();
          v47 = test_string_s();
          LODWORD(v37) = v42;
          if (v47)
          {
            continue;
          }

          v62 = OUTLINED_FUNCTION_6_39();
          bspush_ca_scan(v62, v63);
          v38 = v42;
          goto LABEL_27;
        case 10:
          goto LABEL_27;
        case 11:
          v52 = OUTLINED_FUNCTION_2_42();
          v55 = testFldeq(v52, v53, v54, 2);
          LODWORD(v37) = v42;
          if (!v55)
          {
            v58 = advance_tok(a1, v42, v56, v57);
            v38 = v42;
            v37 = v42;
            if (!v58)
            {
              goto LABEL_27;
            }
          }

          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(a1);
  return 94;
}

void OUTLINED_FUNCTION_11_38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_12_38@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_21_29()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;

  return proj_def();
}

void *OUTLINED_FUNCTION_22_28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_42(v3, 0, a3);
}

uint64_t fren_symbolic_rules(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  bzero(v3, 0xB8uLL);
  bzero(v7, 0xC0uLL);
  if (setjmp(v7) || ventproc(a1, v3, v6, v5, v4, v7))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_43(a1);
    init_fren_word_vars(a1);
    break_into_morphs(a1);
    if (*(a1 + 4050) != 1 && *(a1 + 4094) != 1)
    {
      generate_diaphones(a1);
      adjust_phones(a1);
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t fren_phnol_rules(void *a1, uint64_t a2, __int16 *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26[0] = 0;
  v26[1] = 0;
  bzero(v25, 0xB8uLL);
  bzero(v34, 0xC0uLL);
  if (!setjmp(v34) && !ventproc(a1, v25, v33, v32, v31, v34))
  {
    v8 = OUTLINED_FUNCTION_1_44();
    get_parm(v8, v9, a2, -6);
    get_parm(a1, &v27, a3, -6);
    push_ptr_init(a1, v26);
    fence_43(a1);
    startloop(a1, 1);
    v10 = OUTLINED_FUNCTION_1_44();
    lpta_loadpn(v10, v11);
    lpta_mover();
    v12 = OUTLINED_FUNCTION_0_46();
    lpta_storep(v12, v13, v14);
    lpta_loadpn(a1, &v27);
    lpta_mover();
    lpta_storep(a1, v26, v15);
    v16 = OUTLINED_FUNCTION_0_46();
    if (!forall_to_test(v16, v17, v26))
    {
LABEL_6:
      bspush_ca(a1);
      v18 = OUTLINED_FUNCTION_0_46();
      if (!lpta_loadp_setscan_r(v18, v19, 4) && !advance_tok(a1, v20, v21, v22))
      {
LABEL_8:
        savescptr(a1, 4, (a1 + 167));
LABEL_9:
        init_phnol_vars(a1);
LABEL_10:
        pre_syll_phonology(a1);
LABEL_11:
        starttest(a1, 3);
        reset_phnol_vars(a1);
LABEL_12:
        if (!forto_adv_upto_r(a1, 1, 2, 7, 4, (a1 + 165)))
        {
LABEL_17:
          v30 = v28;
          *(a2 + 8) = v28;
          v6 = 0;
          goto LABEL_4;
        }
      }
    }

    v23 = a1[13];
    if (v23)
    {
      a1[13] = 0;
      v24 = v23;
    }

    else
    {
      v24 = vback(a1, 0);
    }

    switch(v24)
    {
      case 1:
        goto LABEL_17;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_12;
      case 4:
        goto LABEL_8;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_6;
      default:
        break;
    }
  }

  v6 = 94;
LABEL_4:
  vretproc(a1);
  return v6;
}

uint64_t fren_phrase_level_rules(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v38[0] = 0;
  v38[1] = 0;
  bzero(v37, 0xB8uLL);
  bzero(v46, 0xC0uLL);
  if (setjmp(v46) || ventproc(a1, v37, v45, v44, v43, v46))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v6 = OUTLINED_FUNCTION_1_44();
  get_parm(v6, v7, a2, -6);
  get_parm(a1, &v39, a3, -6);
  push_ptr_init(a1, v38);
  fence_43(a1);
  v8 = OUTLINED_FUNCTION_1_44();
  if (lpta_loadp_setscan_l(v8, v9, 4) || advance_tok(a1, v10, v11, v12) || (*(a1 + 136) = 1, *(a1 + 112) = v40, *(a1 + 128) = 0, test_ptr(a1, v13, v14)))
  {
    while (2)
    {
      startloop(a1, 2);
      lpta_loadpn(a1, &v41);
      lpta_mover();
      v15 = OUTLINED_FUNCTION_0_46();
      lpta_storep(v15, v16, v17);
      lpta_loadpn(a1, &v39);
      lpta_mover();
      lpta_storep(a1, v38, v18);
      v19 = OUTLINED_FUNCTION_0_46();
      if (forall_to_test(v19, v20, v38))
      {
        goto LABEL_14;
      }

LABEL_8:
      bspush_ca(a1);
      v28 = OUTLINED_FUNCTION_0_46();
      if (lpta_loadp_setscan_r(v28, v29, 4) || advance_tok(a1, v21, v22, v23))
      {
        goto LABEL_14;
      }

LABEL_10:
      savescptr(a1, 5, a1 + 1336);
LABEL_11:
      starttest(a1, 6);
      lpta_loadpn(a1, a1 + 6256);
      rpta_loadpn(a1, a1 + 1336);
      if (compare_ptas(a1) || testeq(a1))
      {
LABEL_18:
        init_phrase_level_vars(a1, v21, v22, v23, v24, v25, v26, v27);
LABEL_19:
        create_syllables(a1, v21, v22, v23, v24, v25, v26, v27);
LABEL_20:
        v32 = OUTLINED_FUNCTION_1_44();
        starttest(v32, v33);
        if (*(a1 + 4014))
        {
LABEL_21:
          assign_stress(a1, v21, v22, v23, v24, v25, v26, v27);
LABEL_22:
          break_into_phones(a1, a1 + 6240);
LABEL_23:
          starttest(a1, 4);
          copy_stress_to_phones();
        }
      }

LABEL_13:
      if (forto_adv_upto_r(a1, 2, 3, 12, 4, a1 + 1320))
      {
LABEL_14:
        v30 = *(a1 + 104);
        if (v30)
        {
          *(a1 + 104) = 0;
          v31 = v30;
        }

        else
        {
          v31 = vback(a1, 0);
        }

        switch(v31)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_24;
          case 3:
            goto LABEL_11;
          case 4:
            goto LABEL_13;
          case 5:
            goto LABEL_10;
          case 6:
            goto LABEL_18;
          case 7:
            goto LABEL_19;
          case 8:
            goto LABEL_20;
          case 9:
            goto LABEL_21;
          case 10:
            goto LABEL_22;
          case 11:
            goto LABEL_23;
          case 12:
            goto LABEL_8;
          case 13:
            goto LABEL_25;
          case 14:
            goto LABEL_28;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

LABEL_24:
    if (lpta_loadp_setscan_l(a1, a1 + 6256, 4))
    {
LABEL_25:
      v34 = &v40;
    }

    else
    {
      v34 = (a1 + 6264);
    }

    v42 = *v34;
LABEL_28:
    v35 = *(a1 + 3544);
    *(a1 + 6248) = v35;
    *(a1 + 6264) = v35;
    *(a1 + 4050) = 0;
  }

  *(a2 + 8) = v42;
  vretproc(a1);
  return 0;
}

void *fence_44(uint64_t a1, int a2, uint64_t a3)
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

uint64_t assign_canfren_affricates(void *a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v91[0] = 0;
  v91[1] = 0;
  v90[0] = 0;
  v90[1] = 0;
  v89[0] = 0;
  v89[1] = 0;
  bzero(v88, 0xB8uLL);
  OUTLINED_FUNCTION_21_30();
  bzero(v95, v2);
  if (!setjmp(v95) && !ventproc(a1, v88, v94, v93, v92, v95))
  {
    v5 = OUTLINED_FUNCTION_16_36();
    push_ptr_init(v5, v6);
    push_ptr_init(a1, v90);
    v7 = OUTLINED_FUNCTION_19_31();
    push_ptr_init(v7, v8);
    v9 = 0;
    v10 = OUTLINED_FUNCTION_24_28();
    fence_44(v10, v11, v12);
    v13 = OUTLINED_FUNCTION_9_39();
    startloop(v13, v14);
    lpta_loadpn(a1, (a1 + 165));
    OUTLINED_FUNCTION_8_40();
    lpta_mover();
    v15 = OUTLINED_FUNCTION_16_36();
    lpta_storep(v15, v16, v17);
    lpta_loadpn(a1, (a1 + 167));
    OUTLINED_FUNCTION_8_40();
    lpta_mover();
    v18 = OUTLINED_FUNCTION_19_31();
    lpta_storep(v18, v19, v20);
    v21 = OUTLINED_FUNCTION_16_36();
    v23 = 0;
    if (forall_to_test(v21, v22, v89))
    {
      goto LABEL_57;
    }

LABEL_8:
    v23 = v9;
    v24 = OUTLINED_FUNCTION_9_39();
    bspush_ca(v24);
    v25 = OUTLINED_FUNCTION_11_39();
    if (!lpta_loadp_setscan_r(v25, v26, v27))
    {
      LODWORD(v31) = v9;
      if (!advance_tok(a1, v28, v29, v30))
      {
LABEL_10:
        savescptr(a1, 4, v90);
LABEL_11:
        v23 = v31;
        v32 = OUTLINED_FUNCTION_11_39();
        if (lpta_loadp_setscan_r(v32, v33, v34) || (OUTLINED_FUNCTION_0_47(), test_string_s()))
        {
LABEL_13:
          v35 = OUTLINED_FUNCTION_9_39();
          starttest(v35, v36);
          v37 = OUTLINED_FUNCTION_11_39();
          if (!lpta_loadp_setscan_r(v37, v38, v39))
          {
            OUTLINED_FUNCTION_0_47();
            if (!test_string_s())
            {
              v40 = OUTLINED_FUNCTION_9_39();
              starttest_l(v40, v41);
              v42 = OUTLINED_FUNCTION_11_39();
              if (!lpta_loadp_setscan_r(v42, v43, v44))
              {
                OUTLINED_FUNCTION_9_39();
                bspush_ca_scan_boa();
                v45 = 19;
                LODWORD(v31) = v23;
LABEL_54:
                if (test_synch(a1, v45, 1, &_MergedGlobals_39))
                {
                  v23 = v31;
                }

                else
                {
                  v23 = 1;
                }

                goto LABEL_57;
              }
            }
          }

          goto LABEL_18;
        }

        v46 = OUTLINED_FUNCTION_9_39();
        starttest_l(v46, v47);
        v48 = OUTLINED_FUNCTION_11_39();
        if (lpta_loadp_setscan_r(v48, v49, v50))
        {
LABEL_18:
          v51 = v23;
LABEL_19:
          v23 = v51;
          OUTLINED_FUNCTION_30_24();
          if (!forto_adv_upto_r(a1, v52, v53, 26, v54, v91))
          {
LABEL_20:
            v3 = 0;
            goto LABEL_4;
          }

          goto LABEL_57;
        }

        v55 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v55, v56);
        OUTLINED_FUNCTION_0_47();
        v57 = test_string_s();
        v58 = v31;
        if (v57)
        {
          goto LABEL_57;
        }

LABEL_22:
        v23 = v58;
        v59 = OUTLINED_FUNCTION_9_39();
        starttest(v59, v60);
        v61 = OUTLINED_FUNCTION_9_39();
        bspush_ca(v61);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_boa();
        v62 = OUTLINED_FUNCTION_11_39();
        v65 = lpta_loadp_setscan_r(v62, v63, v64);
        v45 = 15;
        LODWORD(v31) = v23;
        if (!v65)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_57:
    v79 = v23;
    while (2)
    {
      v66 = a1[13];
      if (v66)
      {
        v67 = OUTLINED_FUNCTION_22_29(v66);
        v31 = v68;
      }

      else
      {
        v67 = vback(a1, v79);
        v31 = 0;
      }

      v58 = v31;
      v51 = v31;
      switch(v67)
      {
        case 1:
          goto LABEL_20;
        case 2:
          goto LABEL_11;
        case 3:
        case 6:
        case 17:
          goto LABEL_19;
        case 4:
          goto LABEL_10;
        case 5:
          v23 = v31;
          goto LABEL_13;
        case 7:
          bspush_ca_scan(a1, 9);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_43;
        case 8:
          goto LABEL_22;
        case 9:
          bspush_ca_scan(a1, 10);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_43;
        case 10:
          bspush_ca_scan(a1, 11);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_43;
        case 11:
          bspush_ca_scan(a1, 12);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_43;
        case 12:
          OUTLINED_FUNCTION_0_47();
LABEL_43:
          v84 = test_string_s();
          v58 = v31;
          v79 = v31;
          if (!v84)
          {
            goto LABEL_22;
          }

          continue;
        case 13:
          v76 = OUTLINED_FUNCTION_19_31();
          v78 = lpta_loadp_setscan_r(v76, v77, 4);
          v79 = v31;
          if (v78)
          {
            continue;
          }

          v80 = testFldeq(a1, 4u, 1, 4);
          v79 = v31;
          if (v80)
          {
            continue;
          }

          v83 = advance_tok(a1, v31, v81, v82);
          v79 = v31;
          if (v83)
          {
            continue;
          }

          goto LABEL_32;
        case 14:
          bspop_boa(a1);
          goto LABEL_32;
        case 15:
          v87 = 15;
          goto LABEL_53;
        case 16:
LABEL_32:
          lpta_rpta_loadp(a1, v91, v90);
          v69 = OUTLINED_FUNCTION_0_47();
          v73 = &unk_28064BB31;
          goto LABEL_49;
        case 18:
          bspop_boa(a1);
          bspush_ca_scan(a1, 20);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 19:
          v87 = 19;
LABEL_53:
          v45 = v87;
          goto LABEL_54;
        case 20:
          bspush_ca_scan(a1, 22);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 21:
          goto LABEL_48;
        case 22:
          bspush_ca_scan(a1, 23);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 23:
          v74 = OUTLINED_FUNCTION_16_36();
          bspush_ca_scan(v74, v75);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 24:
          bspush_ca_scan(a1, 25);
          OUTLINED_FUNCTION_0_47();
          goto LABEL_47;
        case 25:
          OUTLINED_FUNCTION_0_47();
LABEL_47:
          v85 = test_string_s();
          v79 = v31;
          if (v85)
          {
            continue;
          }

LABEL_48:
          lpta_rpta_loadp(a1, v91, v90);
          v69 = OUTLINED_FUNCTION_0_47();
          v73 = &unk_28064BB33;
LABEL_49:
          inserted = insert_2pt_s(v69, v70, v71, v73, v72);
          v51 = v31;
          v79 = v31;
          if (!inserted)
          {
            goto LABEL_19;
          }

          continue;
        case 26:
          v9 = v31;
          goto LABEL_8;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v3 = 94;
LABEL_4:
  vretproc(a1);
  return v3;
}

uint64_t canfren_phon_rules(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v191 = *MEMORY[0x277D85DE8];
  v179 = 0;
  v180 = 0;
  OUTLINED_FUNCTION_10_39(a1, a2, a3, a4, a5, a6, a7, a8, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178[0], v178[1], v178[2], v178[3]);
  OUTLINED_FUNCTION_21_30();
  bzero(v190, v9);
  v10 = setjmp(v190);
  if (v10 || OUTLINED_FUNCTION_15_36(v10, v11, v12, v13, v14, v15, v16, v17, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v178[0], v178[1], v178[2], v178[3], v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_16_36();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_14_37();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_19_31();
  push_ptr_init(v23, v24);
  v25 = 0;
  v26 = OUTLINED_FUNCTION_24_28();
  fence_44(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_9_39();
  startloop(v29, v30);
  lpta_loadpn(a1, a1 + 1320);
  OUTLINED_FUNCTION_8_40();
  lpta_mover();
  v31 = OUTLINED_FUNCTION_16_36();
  lpta_storep(v31, v32, v33);
  lpta_loadpn(a1, a1 + 1336);
  OUTLINED_FUNCTION_8_40();
  lpta_mover();
  v34 = OUTLINED_FUNCTION_19_31();
  lpta_storep(v34, v35, v36);
  v37 = OUTLINED_FUNCTION_16_36();
  v39 = forall_to_test(v37, v38, v178);
  v40 = 0;
  if (v39)
  {
    goto LABEL_23;
  }

LABEL_7:
  v41 = OUTLINED_FUNCTION_9_39();
  bspush_ca(v41);
  v42 = OUTLINED_FUNCTION_1_45();
  if (lpta_loadp_setscan_r(v42, v43, v44) || (v45 = OUTLINED_FUNCTION_0_47(), testFldeq(v45, v46, v47, 1)))
  {
    v40 = v25;
    goto LABEL_23;
  }

  v51 = advance_tok(a1, v48, v49, v50);
  LODWORD(v52) = v25;
  v40 = v25;
  if (v51)
  {
LABEL_23:
    while (2)
    {
      v68 = *(a1 + 104);
      if (v68)
      {
        v69 = OUTLINED_FUNCTION_22_29(v68);
        v52 = v70;
      }

      else
      {
        v69 = vback(a1, v40);
        v52 = 0;
      }

      v71 = v52;
      v72 = v52;
      switch(v69)
      {
        case 2:
          goto LABEL_12;
        case 3:
          v53 = v52;
          goto LABEL_38;
        case 4:
          break;
        case 5:
          goto LABEL_13;
        case 6:
          v53 = v52;
          goto LABEL_14;
        case 7:
          goto LABEL_36;
        case 8:
          bspop_boa(a1);
          v76 = advance_tok(a1, v73, v74, v75);
          v40 = v52;
          if (v76)
          {
            continue;
          }

          OUTLINED_FUNCTION_6_40();
          insert_lax_vowel();
          goto LABEL_35;
        case 9:
LABEL_35:
          OUTLINED_FUNCTION_6_40();
          mark_high_vowel_deletion();
LABEL_36:
          v53 = v52;
          goto LABEL_37;
        case 10:
          OUTLINED_FUNCTION_0_47();
          v77 = test_string_s();
          v71 = v52;
          v40 = v52;
          if (!v77)
          {
            goto LABEL_43;
          }

          continue;
        case 11:
          goto LABEL_43;
        case 12:
          v78 = OUTLINED_FUNCTION_7_40();
          v40 = v52;
          if (!v78)
          {
            v81 = advance_tok(a1, v52, v79, v80);
            v72 = v52;
            v40 = v52;
            if (!v81)
            {
              goto LABEL_44;
            }
          }

          continue;
        case 13:
          goto LABEL_44;
        case 14:
          v25 = v52;
          goto LABEL_7;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_26_28(4, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v178[0], v178[1], v178[2]);
LABEL_12:
  OUTLINED_FUNCTION_6_40();
  insert_long_vowel();
LABEL_13:
  v53 = v52;
  if (*(a1 + 4050) != 1)
  {
LABEL_14:
    v54 = OUTLINED_FUNCTION_9_39();
    starttest(v54, v55);
    v56 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v56, v57, v58))
    {
      v59 = OUTLINED_FUNCTION_2_43();
      if (!testFldeq(v59, v60, 6, v61))
      {
        v62 = OUTLINED_FUNCTION_2_43();
        if (!testFldeq(v62, v63, 8, v64))
        {
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v65 = OUTLINED_FUNCTION_2_43();
          if (testFldeq(v65, v66, 9, v67))
          {
            v40 = v53;
          }

          else
          {
            v40 = 1;
          }

          goto LABEL_23;
        }
      }

LABEL_22:
      v40 = v53;
      goto LABEL_23;
    }

LABEL_37:
    v82 = OUTLINED_FUNCTION_9_39();
    starttest(v82, v83);
    v84 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v84, v85, v86))
    {
      v91 = OUTLINED_FUNCTION_2_43();
      if (testFldeq(v91, v92, 9, v93) || advance_tok(a1, v94, v95, v96))
      {
        goto LABEL_22;
      }

      v97 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v97, v98);
      v71 = v53;
LABEL_43:
      v99 = v71;
      v100 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v100, v101);
      v72 = v99;
LABEL_44:
      v53 = v72;
      v102 = OUTLINED_FUNCTION_9_39();
      if (test_synch(v102, v103, 1, v104))
      {
        goto LABEL_22;
      }

      v105 = OUTLINED_FUNCTION_6_40();
      lpta_rpta_loadp(v105, v106, v107);
      OUTLINED_FUNCTION_4_41();
      v108 = mark_s();
      v40 = v53;
      if (v108)
      {
        goto LABEL_23;
      }
    }

LABEL_38:
    OUTLINED_FUNCTION_30_24();
    v90 = forto_adv_upto_r(a1, v87, v88, 14, v89, &v179);
    v40 = v53;
    if (!v90)
    {
      goto LABEL_3;
    }

    goto LABEL_23;
  }

LABEL_3:
  vretproc(a1);
  return OUTLINED_FUNCTION_31_23();
}

uint64_t insert_long_vowel()
{
  OUTLINED_FUNCTION_25_28();
  v452 = *MEMORY[0x277D85DE8];
  v440 = 0;
  v441 = 0;
  OUTLINED_FUNCTION_10_39(v3, v4, v5, v6, v7, v8, v9, v10, v362, v365, v368, v371, v374, v377, v380, v383, v386, v389, v392, v395, v398, v401, v404, v407, v410, v413, v416, v419, v422, v425, v428, v431, v434, v436, v438);
  OUTLINED_FUNCTION_21_30();
  bzero(v451, v11);
  v12 = setjmp(v451);
  if (v12 || OUTLINED_FUNCTION_15_36(v12, v13, v14, v15, v16, v17, v18, v19, v363, v366, v369, v372, v375, v378, v381, v384, v387, v390, v393, v396, v399, v402, v405, v408, v411, v414, v417, v420, v423, v426, v429, v432, v435, v437, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450))
  {
    goto LABEL_3;
  }

  get_parm(v0, &v440, v2, -6);
  v21 = OUTLINED_FUNCTION_14_37();
  get_parm(v21, v22, v1, -6);
  v23 = OUTLINED_FUNCTION_18_35();
  push_ptr_init(v23, v24);
  v25 = 0;
  v26 = OUTLINED_FUNCTION_24_28();
  fence_44(v26, v27, v28);
  fence_44(v0, 1, &_MergedGlobals_39);
  starttest(v0, 1);
  if (!lpta_loadp_setscan_r(v0, &v440, 2))
  {
    v91 = OUTLINED_FUNCTION_8_40();
    v93 = testFldeq(v91, v92, 9, 0);
    LODWORD(v70) = 0;
    if (!v93)
    {
      v96 = advance_tok(v0, 0, v94, v95);
      LODWORD(v70) = 0;
      if (!v96)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_45;
  }

LABEL_5:
  if (*(v0 + 4050) == 1)
  {
    v29 = OUTLINED_FUNCTION_29_25();
    starttest_e(v29, v30);
    v31 = OUTLINED_FUNCTION_13_38();
    if (!lpta_loadp_setscan_r(v31, v32, 2))
    {
      v73 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v73, v74);
      v75 = OUTLINED_FUNCTION_5_40();
      v78 = testFldeq(v75, v76, v77, 28);
      v71 = v25;
      v70 = v25;
      if (v78)
      {
        goto LABEL_45;
      }

LABEL_21:
      LODWORD(v25) = v71;
      goto LABEL_22;
    }
  }

LABEL_7:
  v33 = OUTLINED_FUNCTION_9_39();
  starttest(v33, v34);
  if (!lpta_loadp_setscan_r(v0, v0 + 1320, 4))
  {
    if (npush_fld(v0, 4u, 6u))
    {
      goto LABEL_176;
    }

    npush_i(v0);
    if (if_testgt(v0, v63, v64, v65, v66, v67, v68, v69))
    {
      goto LABEL_176;
    }

    goto LABEL_22;
  }

LABEL_8:
  v35 = OUTLINED_FUNCTION_9_39();
  starttest(v35, v36);
  v37 = OUTLINED_FUNCTION_3_43();
  v40 = v25;
  if (lpta_loadp_setscan_r(v37, v38, v39))
  {
LABEL_9:
    v41 = OUTLINED_FUNCTION_9_39();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v43, v44, v45))
    {
      v80 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v80, v81);
      v82 = OUTLINED_FUNCTION_8_40();
      v84 = testFldeq(v82, v83, 11, 1);
      v85 = v25;
      v70 = v25;
      if (!v84)
      {
LABEL_25:
        v86 = v85;
        if (advance_tok(v0, v70, v71, v72))
        {
          goto LABEL_183;
        }

        goto LABEL_26;
      }

      goto LABEL_45;
    }

LABEL_10:
    v46 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v46, v47, v48))
    {
      OUTLINED_FUNCTION_0_47();
      if (!test_string_s())
      {
        v49 = OUTLINED_FUNCTION_1_45();
        if (!lpta_loadp_setscan_l(v49, v50, v51))
        {
          OUTLINED_FUNCTION_0_47();
          if (!test_string_s())
          {
            v52 = OUTLINED_FUNCTION_9_39();
            starttest(v52, v53);
            v54 = OUTLINED_FUNCTION_3_43();
            if (lpta_loadp_setscan_r(v54, v55, v56))
            {
LABEL_152:
              v308 = OUTLINED_FUNCTION_9_39();
              starttest(v308, v309);
              v310 = OUTLINED_FUNCTION_3_43();
              if (lpta_loadp_setscan_r(v310, v311, v312))
              {
                goto LABEL_3;
              }

              v313 = OUTLINED_FUNCTION_9_39();
              bspush_ca_scan(v313, v314);
              OUTLINED_FUNCTION_0_47();
              v315 = test_string_s();
              v128 = v25;
              LODWORD(v70) = v25;
              if (!v315)
              {
LABEL_154:
                v316 = v128;
                v317 = OUTLINED_FUNCTION_9_39();
                bspush_ca_scan(v317, v318);
                v129 = v316;
LABEL_155:
                v86 = v129;
                goto LABEL_182;
              }

              goto LABEL_45;
            }

            v57 = OUTLINED_FUNCTION_9_39();
            bspush_ca_scan(v57, v58);
            v59 = OUTLINED_FUNCTION_5_40();
            if (!testFldeq(v59, v60, v61, 11))
            {
              OUTLINED_FUNCTION_9_39();
              bspush_ca_scan_boa();
              v62 = OUTLINED_FUNCTION_7_40();
              goto LABEL_163;
            }

            goto LABEL_176;
          }
        }

LABEL_157:
        v319 = OUTLINED_FUNCTION_9_39();
        starttest(v319, v320);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_boa();
        OUTLINED_FUNCTION_28_25();
        v321 = OUTLINED_FUNCTION_12_39();
        v323 = 190;
LABEL_162:
        v62 = setd_lookup(v321, v322, v323);
LABEL_163:
        if (v62)
        {
          LODWORD(v70) = v25;
        }

        else
        {
          LODWORD(v70) = 1;
        }

        goto LABEL_45;
      }
    }

LABEL_159:
    v324 = OUTLINED_FUNCTION_1_45();
    if (!lpta_loadp_setscan_r(v324, v325, v326))
    {
      OUTLINED_FUNCTION_0_47();
      if (!test_string_s())
      {
        v327 = OUTLINED_FUNCTION_9_39();
        starttest(v327, v328);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_boa();
        OUTLINED_FUNCTION_28_25();
        v321 = OUTLINED_FUNCTION_12_39();
        v323 = 192;
        goto LABEL_162;
      }
    }

LABEL_167:
    v329 = OUTLINED_FUNCTION_9_39();
    starttest(v329, v330);
    v331 = OUTLINED_FUNCTION_3_43();
    if (lpta_loadp_setscan_r(v331, v332, v333))
    {
LABEL_168:
      v334 = OUTLINED_FUNCTION_9_39();
      starttest(v334, v335);
      v336 = OUTLINED_FUNCTION_1_45();
      if (lpta_loadp_setscan_r(v336, v337, v338))
      {
        goto LABEL_3;
      }

      v339 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v339, v340);
      OUTLINED_FUNCTION_0_47();
      v341 = test_string_s();
      LODWORD(v70) = v25;
      v131 = v25;
      if (v341)
      {
        goto LABEL_45;
      }

LABEL_170:
      LODWORD(v25) = v131;
      v342 = OUTLINED_FUNCTION_0_47();
      if (!testFldeq(v342, v343, v344, 2))
      {
        v348 = advance_tok(v0, v345, v346, v347);
        v132 = 79;
        LODWORD(v70) = v25;
        v133 = v25;
        if (!v348)
        {
          goto LABEL_172;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v353 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v353, v354);
      OUTLINED_FUNCTION_0_47();
      if (!test_string_s())
      {
        v355 = 68;
LABEL_179:
        bspush_ca_scan(v0, v355);
        LODWORD(v72) = v25;
LABEL_180:
        v356 = v72;
        v357 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v357, v358);
        v130 = v356;
LABEL_181:
        v86 = v130;
        goto LABEL_182;
      }
    }

LABEL_176:
    LODWORD(v70) = v25;
    goto LABEL_45;
  }

LABEL_35:
  v97 = OUTLINED_FUNCTION_9_39();
  bspush_ca_scan(v97, v98);
  v99 = OUTLINED_FUNCTION_0_47();
  v102 = testFldeq(v99, v100, v101, 2);
  v103 = v40;
  v70 = v40;
  if (v102)
  {
    goto LABEL_45;
  }

LABEL_36:
  v25 = v103;
  if (advance_tok(v0, v70, v71, v72))
  {
    goto LABEL_176;
  }

  v104 = OUTLINED_FUNCTION_9_39();
  bspush_ca_scan(v104, v105);
  v106 = OUTLINED_FUNCTION_0_47();
  if (testFldeq(v106, v107, v108, 1))
  {
    goto LABEL_176;
  }

  v112 = advance_tok(v0, v109, v110, v111);
  v40 = v25;
  LODWORD(v70) = v25;
  if (v112)
  {
    goto LABEL_45;
  }

LABEL_39:
  v113 = OUTLINED_FUNCTION_9_39();
  bspush_ca_scan(v113, v114);
  v115 = OUTLINED_FUNCTION_0_47();
  v118 = testFldeq(v115, v116, v117, 2);
  v119 = v40;
  v70 = v40;
  if (!v118)
  {
LABEL_40:
    LODWORD(v25) = v119;
    if (advance_tok(v0, v70, v71, v72))
    {
      goto LABEL_176;
    }

    v120 = OUTLINED_FUNCTION_9_39();
    bspush_ca_scan(v120, v121);
    v122 = OUTLINED_FUNCTION_0_47();
    if (testFldeq(v122, v123, v124, 1))
    {
      goto LABEL_176;
    }

LABEL_22:
    v79 = advance_tok(v0, v70, v71, v72);
    LODWORD(v70) = v25;
    if (!v79)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

  do
  {
LABEL_45:
    while (1)
    {
      v125 = *(v0 + 104);
      if (v125)
      {
        v126 = OUTLINED_FUNCTION_22_29(v125);
        v40 = v127;
      }

      else
      {
        v126 = vback(v0, v70);
        v40 = 0;
      }

      v70 = 83;
      v71 = v40;
      v103 = v40;
      v119 = v40;
      v85 = v40;
      v128 = v40;
      v129 = v40;
      v72 = v40;
      v130 = v40;
      v131 = v40;
      v132 = 83;
      v133 = v40;
      v134 = v40;
      v135 = v40;
      switch(v126)
      {
        case 1:
          v25 = v40;
          goto LABEL_5;
        case 2:
          v25 = v40;
          goto LABEL_7;
        case 3:
          v136 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v136, v137);
          v138 = OUTLINED_FUNCTION_5_40();
          v141 = 29;
          goto LABEL_101;
        case 4:
          goto LABEL_21;
        case 5:
          v138 = OUTLINED_FUNCTION_5_40();
          v141 = 31;
LABEL_101:
          v234 = testFldeq(v138, v139, v140, v141);
          v71 = v40;
          v70 = v40;
          if (!v234)
          {
            goto LABEL_21;
          }

          continue;
        case 6:
          v25 = v40;
          goto LABEL_8;
        case 8:
          v25 = v40;
          goto LABEL_9;
        case 9:
          v230 = OUTLINED_FUNCTION_0_47();
          v233 = testFldeq(v230, v231, v232, 3);
          v103 = v40;
          v70 = v40;
          if (!v233)
          {
            goto LABEL_36;
          }

          continue;
        case 10:
          goto LABEL_36;
        case 11:
          goto LABEL_35;
        case 12:
          v217 = OUTLINED_FUNCTION_0_47();
          v220 = testFldeq(v217, v218, v219, 3);
          v119 = v40;
          v70 = v40;
          if (!v220)
          {
            goto LABEL_40;
          }

          continue;
        case 13:
          goto LABEL_40;
        case 14:
          goto LABEL_39;
        case 15:
          LODWORD(v25) = v40;
          goto LABEL_10;
        case 16:
          v224 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v224, v225);
          v226 = OUTLINED_FUNCTION_5_40();
          v229 = 36;
          goto LABEL_111;
        case 17:
          goto LABEL_25;
        case 18:
          v226 = OUTLINED_FUNCTION_5_40();
          v229 = 40;
LABEL_111:
          v253 = testFldeq(v226, v227, v228, v229);
          v85 = v40;
          v70 = v40;
          if (!v253)
          {
            goto LABEL_25;
          }

          continue;
        case 19:
          LODWORD(v25) = v40;
          goto LABEL_159;
        case 20:
          LODWORD(v25) = v40;
          goto LABEL_157;
        case 21:
          LODWORD(v25) = v40;
          goto LABEL_152;
        case 22:
          OUTLINED_FUNCTION_0_47();
          v212 = test_string_s();
          goto LABEL_104;
        case 23:
          bspop_boa(v0);
          v212 = advance_tok(v0, v235, v236, v237);
LABEL_104:
          LODWORD(v70) = v40;
          if (!v212)
          {
            goto LABEL_107;
          }

          continue;
        case 24:
        case 36:
          goto LABEL_107;
        case 25:
          v213 = OUTLINED_FUNCTION_7_40();
          LODWORD(v70) = v40;
          if (v213)
          {
            continue;
          }

          v216 = advance_tok(v0, v40, v214, v215);
          LODWORD(v70) = v40;
          if (v216)
          {
            continue;
          }

          goto LABEL_108;
        case 26:
        case 38:
        case 41:
          goto LABEL_108;
        case 28:
          OUTLINED_FUNCTION_0_47();
          v211 = test_string_s();
          v128 = v40;
          LODWORD(v70) = v40;
          if (!v211)
          {
            goto LABEL_154;
          }

          continue;
        case 29:
          goto LABEL_154;
        case 30:
          v278 = OUTLINED_FUNCTION_7_40();
          LODWORD(v70) = v40;
          if (!v278)
          {
            v281 = advance_tok(v0, v40, v279, v280);
            v129 = v40;
            LODWORD(v70) = v40;
            if (!v281)
            {
              goto LABEL_155;
            }
          }

          continue;
        case 31:
          goto LABEL_155;
        case 33:
          v282 = OUTLINED_FUNCTION_9_39();
          starttest(v282, v283);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_boa();
          OUTLINED_FUNCTION_28_25();
          v284 = OUTLINED_FUNCTION_12_39();
          v286 = setd_lookup(v284, v285, 191);
          goto LABEL_148;
        case 34:
          bspop_boa(v0);
          v179 = OUTLINED_FUNCTION_3_43();
          v182 = lpta_loadp_setscan_r(v179, v180, v181);
          LODWORD(v70) = v40;
          if (v182)
          {
            continue;
          }

          v183 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v183, v184);
          goto LABEL_106;
        case 35:
LABEL_106:
          OUTLINED_FUNCTION_0_47();
          v238 = test_string_s();
          LODWORD(v70) = v40;
          if (v238)
          {
            continue;
          }

LABEL_107:
          v239 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v239, v240);
LABEL_108:
          v241 = OUTLINED_FUNCTION_9_39();
          v244 = test_synch(v241, v242, 1, v243);
          LODWORD(v70) = v40;
          if (v244)
          {
            continue;
          }

          v245 = OUTLINED_FUNCTION_6_40();
          lpta_rpta_loadp(v245, v246, v247);
          v248 = OUTLINED_FUNCTION_0_47();
          inserted = insert_2pt_s(v248, v249, v250, v251, 0);
          goto LABEL_142;
        case 37:
          v200 = OUTLINED_FUNCTION_7_40();
          LODWORD(v70) = v40;
          if (v200)
          {
            continue;
          }

          v203 = advance_tok(v0, v40, v201, v202);
          LODWORD(v70) = v40;
          if (v203)
          {
            continue;
          }

          goto LABEL_108;
        case 39:
          v185 = OUTLINED_FUNCTION_9_39();
          starttest(v185, v186);
          v187 = OUTLINED_FUNCTION_3_43();
          if (lpta_loadp_setscan_r(v187, v188, v189))
          {
            goto LABEL_3;
          }

          v190 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v190, v191);
LABEL_72:
          OUTLINED_FUNCTION_0_47();
          v192 = test_string_s();
          LODWORD(v70) = v40;
          if (!v192)
          {
            goto LABEL_139;
          }

          continue;
        case 40:
          bspop_boa(v0);
          v168 = OUTLINED_FUNCTION_3_43();
          v171 = lpta_loadp_setscan_r(v168, v169, v170);
          LODWORD(v70) = v40;
          if (v171)
          {
            continue;
          }

          goto LABEL_108;
        case 42:
          goto LABEL_72;
        case 43:
        case 54:
        case 62:
          goto LABEL_139;
        case 44:
          v254 = OUTLINED_FUNCTION_7_40();
          LODWORD(v70) = v40;
          if (v254)
          {
            continue;
          }

          v257 = advance_tok(v0, v40, v255, v256);
          LODWORD(v70) = v40;
          if (v257)
          {
            continue;
          }

          goto LABEL_140;
        case 45:
        case 58:
        case 65:
          goto LABEL_140;
        case 46:
          LODWORD(v25) = v40;
          goto LABEL_167;
        case 47:
          v147 = OUTLINED_FUNCTION_9_39();
          starttest(v147, v148);
          v149 = OUTLINED_FUNCTION_3_43();
          if (!lpta_loadp_setscan_l(v149, v150, v151))
          {
            goto LABEL_54;
          }

          goto LABEL_3;
        case 48:
          bspop_boa(v0);
          v258 = OUTLINED_FUNCTION_3_43();
          v261 = lpta_loadp_setscan_r(v258, v259, v260);
          LODWORD(v70) = v40;
          if (v261)
          {
            continue;
          }

          v262 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v262, v263);
          v264 = OUTLINED_FUNCTION_5_40();
          v267 = testFldeq(v264, v265, v266, 11);
          LODWORD(v70) = v40;
          if (v267)
          {
            continue;
          }

          goto LABEL_147;
        case 49:
          v221 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v221, v222);
          goto LABEL_96;
        case 50:
          bspop_boa(v0);
          v223 = advance_tok(v0, v275, v276, v277);
          goto LABEL_126;
        case 51:
          goto LABEL_67;
        case 52:
LABEL_96:
          OUTLINED_FUNCTION_0_47();
          v223 = test_string_s();
LABEL_126:
          LODWORD(v70) = v40;
          if (!v223)
          {
            goto LABEL_67;
          }

          continue;
        case 53:
          v205 = OUTLINED_FUNCTION_0_47();
          v208 = testFldeq(v205, v206, v207, 1);
          v70 = v40;
          if (v208)
          {
            continue;
          }

          goto LABEL_145;
        case 55:
          bspop_boa(v0);
LABEL_145:
          v301 = advance_tok(v0, v70, v209, v210);
          LODWORD(v70) = v40;
          if (!v301)
          {
            goto LABEL_146;
          }

          continue;
        case 56:
LABEL_146:
          v302 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v302, v303);
          v304 = OUTLINED_FUNCTION_0_47();
          v307 = testFldeq(v304, v305, v306, 2);
          LODWORD(v70) = v40;
          if (!v307)
          {
            goto LABEL_147;
          }

          continue;
        case 57:
          v268 = OUTLINED_FUNCTION_7_40();
          LODWORD(v70) = v40;
          if (v268)
          {
            continue;
          }

          v271 = advance_tok(v0, v40, v269, v270);
          LODWORD(v70) = v40;
          if (v271)
          {
            continue;
          }

          goto LABEL_140;
        case 60:
LABEL_54:
          OUTLINED_FUNCTION_17_36(60, v364, v367, v370, v373, v376, v379, v382, v385, v388, v391, v394, v397, v400, v403, v406, v409, v412, v415, v418, v421, v424, v427, v430, v433);
          v155 = advance_tok(v0, v152, v153, v154);
          LODWORD(v70) = v40;
          if (!v155)
          {
            OUTLINED_FUNCTION_0_47();
            v156 = test_string_s();
            LODWORD(v70) = v40;
            if (!v156)
            {
              v157 = OUTLINED_FUNCTION_11_39();
              v160 = lpta_loadp_setscan_r(v157, v158, v159);
              LODWORD(v70) = v40;
              if (!v160)
              {
                OUTLINED_FUNCTION_0_47();
                v161 = test_string_s();
                LODWORD(v70) = v40;
                if (!v161)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          continue;
        case 61:
          OUTLINED_FUNCTION_0_47();
          v176 = test_string_s();
          LODWORD(v70) = v40;
          if (v176)
          {
            continue;
          }

LABEL_67:
          v177 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v177, v178);
          goto LABEL_139;
        case 63:
          OUTLINED_FUNCTION_0_47();
          v291 = test_string_s();
          LODWORD(v70) = v40;
          if (v291)
          {
            continue;
          }

LABEL_139:
          v292 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v292, v293);
          goto LABEL_140;
        case 64:
          v287 = OUTLINED_FUNCTION_7_40();
          LODWORD(v70) = v40;
          if (v287)
          {
            continue;
          }

          v290 = advance_tok(v0, v40, v288, v289);
          LODWORD(v70) = v40;
          if (v290)
          {
            continue;
          }

LABEL_140:
          v294 = OUTLINED_FUNCTION_9_39();
          v297 = test_synch(v294, v295, 1, v296);
          LODWORD(v70) = v40;
          if (!v297)
          {
            v298 = OUTLINED_FUNCTION_6_40();
            lpta_rpta_loadp(v298, v299, v300);
            OUTLINED_FUNCTION_8_40();
            inserted = mark_s();
LABEL_142:
            LODWORD(v70) = v40;
            if (!inserted)
            {
              goto LABEL_3;
            }
          }

          continue;
        case 66:
          LODWORD(v25) = v40;
          goto LABEL_168;
        case 67:
          v194 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v194, v195);
          goto LABEL_132;
        case 68:
          OUTLINED_FUNCTION_0_47();
          v193 = test_string_s();
          LODWORD(v70) = v40;
          if (v193)
          {
            continue;
          }

          v355 = 70;
          LODWORD(v25) = v40;
          goto LABEL_179;
        case 69:
        case 71:
          goto LABEL_180;
        case 70:
        case 73:
LABEL_132:
          OUTLINED_FUNCTION_0_47();
          v146 = test_string_s();
          goto LABEL_133;
        case 72:
          v162 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v162, v163);
          v164 = OUTLINED_FUNCTION_5_40();
          v167 = testFldeq(v164, v165, v166, 11);
          LODWORD(v70) = v40;
          if (v167)
          {
            continue;
          }

LABEL_147:
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v286 = OUTLINED_FUNCTION_7_40();
LABEL_148:
          if (v286)
          {
            LODWORD(v70) = v40;
          }

          else
          {
            LODWORD(v70) = 1;
          }

          continue;
        case 74:
          bspop_boa(v0);
          v146 = advance_tok(v0, v143, v144, v145);
LABEL_133:
          LODWORD(v72) = v40;
          LODWORD(v70) = v40;
          if (!v146)
          {
            goto LABEL_180;
          }

          continue;
        case 75:
          v172 = OUTLINED_FUNCTION_7_40();
          LODWORD(v70) = v40;
          if (!v172)
          {
            v175 = advance_tok(v0, v40, v173, v174);
            v130 = v40;
            LODWORD(v70) = v40;
            if (!v175)
            {
              goto LABEL_181;
            }
          }

          continue;
        case 76:
          goto LABEL_181;
        case 77:
          OUTLINED_FUNCTION_0_47();
          v204 = test_string_s();
          v131 = v40;
          LODWORD(v70) = v40;
          if (!v204)
          {
            goto LABEL_170;
          }

          continue;
        case 78:
          goto LABEL_170;
        case 79:
          v272 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v272, v273);
          goto LABEL_123;
        case 80:
          goto LABEL_173;
        case 81:
LABEL_123:
          OUTLINED_FUNCTION_0_47();
          v274 = test_string_s();
          LODWORD(v70) = v40;
          if (v274)
          {
            continue;
          }

          v132 = 83;
          v133 = v40;
          break;
        case 82:
          break;
        case 83:
          OUTLINED_FUNCTION_0_47();
          v142 = test_string_s();
          v134 = v40;
          LODWORD(v70) = v40;
          if (!v142)
          {
            goto LABEL_173;
          }

          continue;
        case 84:
          v196 = OUTLINED_FUNCTION_7_40();
          LODWORD(v70) = v40;
          if (!v196)
          {
            v199 = advance_tok(v0, v40, v197, v198);
            v135 = v40;
            LODWORD(v70) = v40;
            if (!v199)
            {
              goto LABEL_174;
            }
          }

          continue;
        case 85:
          goto LABEL_174;
        default:
          goto LABEL_3;
      }

LABEL_172:
      v349 = v133;
      bspush_ca_scan(v0, v132);
      v134 = v349;
LABEL_173:
      v350 = v134;
      v351 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v351, v352);
      v135 = v350;
LABEL_174:
      v86 = v135;
LABEL_182:
      v359 = OUTLINED_FUNCTION_9_39();
      if (!test_synch(v359, v360, 1, v361))
      {
        break;
      }

LABEL_183:
      LODWORD(v70) = v86;
    }

LABEL_26:
    v87 = OUTLINED_FUNCTION_6_40();
    lpta_rpta_loadp(v87, v88, v89);
    OUTLINED_FUNCTION_8_40();
    v90 = mark_s();
    LODWORD(v70) = v86;
  }

  while (v90);
LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_31_23();
}

uint64_t insert_lax_vowel()
{
  OUTLINED_FUNCTION_25_28();
  v126 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_39(v3, v4, v5, v6, v7, v8, v9, v10, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0], v121[1], v121[2], v121[3]);
  OUTLINED_FUNCTION_21_30();
  bzero(v125, v11);
  if (setjmp(v125) || ventproc(v0, &v98, v124, v123, v122, v125))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_14_37();
  get_parm(v13, v14, v2, -6);
  v15 = OUTLINED_FUNCTION_19_31();
  get_parm(v15, v16, v1, -6);
  fence_44(v0, 0, &null_str_18);
  fence_44(v0, 1, &_MergedGlobals_39);
  v17 = OUTLINED_FUNCTION_29_25();
  starttest(v17, v18);
  v19 = OUTLINED_FUNCTION_19_31();
  if (lpta_loadp_setscan_r(v19, v20, 2))
  {
LABEL_5:
    v21 = OUTLINED_FUNCTION_9_39();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_11_39();
    if (lpta_loadp_setscan_r(v23, v24, v25))
    {
      goto LABEL_3;
    }

LABEL_28:
    while (1)
    {
      v94 = OUTLINED_FUNCTION_29_25();
      bspush_ca_scan(v94, v95);
      v90 = OUTLINED_FUNCTION_8_40();
      v92 = 4;
      v93 = 5;
LABEL_29:
      if (testFldeq(v90, v91, v92, v93))
      {
        break;
      }

LABEL_30:
      if (advance_tok(v0, v34, v35, v36))
      {
        break;
      }

      v96 = OUTLINED_FUNCTION_9_39();
      bspush_ca_scan(v96, v97);
    }
  }

  else if (!OUTLINED_FUNCTION_7_40() && !advance_tok(v0, v26, v27, v28))
  {
LABEL_9:
    v29 = OUTLINED_FUNCTION_9_39();
    if (!test_synch(v29, v30, 1, v31))
    {
LABEL_3:
      vretproc(v0);
      return 94;
    }
  }

  while (2)
  {
    v32 = v0[13];
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_22_29(v32);
    }

    else
    {
      v33 = vback(v0, 0);
    }

    switch(v33)
    {
      case 1:
        goto LABEL_5;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_17;
      case 5:
        v90 = OUTLINED_FUNCTION_0_47();
        v93 = 2;
        goto LABEL_29;
      case 6:
        goto LABEL_30;
      case 7:
        v37 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v37, v38);
        goto LABEL_16;
      case 8:
        goto LABEL_28;
      case 9:
        OUTLINED_FUNCTION_0_47();
        if (test_string_s())
        {
          continue;
        }

        goto LABEL_16;
      case 10:
LABEL_16:
        v39 = OUTLINED_FUNCTION_9_39();
        if (test_synch(v39, v40, 1, v41))
        {
          continue;
        }

LABEL_17:
        v42 = OUTLINED_FUNCTION_3_43();
        if (lpta_loadp_setscan_r(v42, v43, v44) || (OUTLINED_FUNCTION_0_47(), v45 = test_string_s(), v45) || (OUTLINED_FUNCTION_27_26(v45, v46, v47, v48, v49, v50, v51, v52, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0], v121[1]), v53 = OUTLINED_FUNCTION_0_47(), insert_2pt_s(v53, v54, v55, v56, v57)))
        {
LABEL_20:
          v58 = OUTLINED_FUNCTION_3_43();
          if (lpta_loadp_setscan_r(v58, v59, v60) || (OUTLINED_FUNCTION_0_47(), v61 = test_string_s(), v61) || (OUTLINED_FUNCTION_27_26(v61, v62, v63, v64, v65, v66, v67, v68, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0], v121[1]), v69 = OUTLINED_FUNCTION_0_47(), insert_2pt_s(v69, v70, v71, v72, v73)))
          {
LABEL_23:
            v74 = OUTLINED_FUNCTION_3_43();
            if (!lpta_loadp_setscan_r(v74, v75, v76))
            {
              OUTLINED_FUNCTION_0_47();
              v77 = test_string_s();
              if (!v77)
              {
                OUTLINED_FUNCTION_27_26(v77, v78, v79, v80, v81, v82, v83, v84, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0], v121[1]);
                v85 = OUTLINED_FUNCTION_0_47();
                insert_2pt_s(v85, v86, v87, v88, v89);
              }
            }
          }
        }

LABEL_26:
        vretproc(v0);
        result = 0;
        break;
      case 11:
        goto LABEL_20;
      case 12:
        goto LABEL_26;
      case 13:
        goto LABEL_23;
      default:
        goto LABEL_3;
    }

    return result;
  }
}

uint64_t mark_high_vowel_deletion()
{
  OUTLINED_FUNCTION_25_28();
  v263 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_39(v3, v4, v5, v6, v7, v8, v9, v10, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v255, v257);
  OUTLINED_FUNCTION_21_30();
  bzero(v262, v11);
  v12 = setjmp(v262);
  if (!v12 && !OUTLINED_FUNCTION_15_36(v12, v13, v14, v15, v16, v17, v18, v19, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v256, v258, 0, 0, v259, SHIDWORD(v259), v260, SWORD2(v260), SHIWORD(v260), v261, SWORD2(v261), SBYTE6(v261), SHIBYTE(v261)))
  {
    v21 = OUTLINED_FUNCTION_13_38();
    get_parm(v21, v22, v2, -6);
    v23 = OUTLINED_FUNCTION_19_31();
    get_parm(v23, v24, v1, -6);
    v25 = OUTLINED_FUNCTION_18_35();
    push_ptr_init(v25, v26);
    v27 = OUTLINED_FUNCTION_24_28();
    fence_44(v27, v28, v29);
    fence_44(v0, 1, &_MergedGlobals_39);
    starttest(v0, 1);
    v30 = OUTLINED_FUNCTION_19_31();
    v32 = 0;
    LODWORD(v1) = 0;
    if (!lpta_loadp_setscan_r(v30, v31, 2))
    {
LABEL_25:
      while (!testFldeq(v0, 2u, 1, 2) && !advance_tok(v0, v84, v85, v86))
      {
        v82 = OUTLINED_FUNCTION_29_25();
        bspush_ca_scan(v82, v83);
      }

      goto LABEL_80;
    }

    while (2)
    {
      v33 = OUTLINED_FUNCTION_9_39();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_1_45();
      if (!lpta_loadp_setscan_r(v35, v36, v37))
      {
        OUTLINED_FUNCTION_9_39();
        bspush_ca_scan_boa();
        v78 = OUTLINED_FUNCTION_2_43();
        v81 = 6;
LABEL_17:
        if (testFldeq(v78, v79, v81, v80))
        {
          v32 = v1;
        }

        else
        {
          v32 = 1;
        }

        goto LABEL_80;
      }

LABEL_6:
      v38 = OUTLINED_FUNCTION_9_39();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_1_45();
      v32 = v1;
      if (!lpta_loadp_setscan_l(v40, v41, v42))
      {
LABEL_76:
        OUTLINED_FUNCTION_17_36(9, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252);
        v178 = OUTLINED_FUNCTION_0_47();
        if (testFldeq(v178, v179, v180, 2))
        {
          goto LABEL_80;
        }

        OUTLINED_FUNCTION_9_39();
        bspush_ca_scan_boa();
        v174 = OUTLINED_FUNCTION_2_43();
        v176 = 2;
        goto LABEL_78;
      }

LABEL_7:
      v43 = OUTLINED_FUNCTION_9_39();
      starttest(v43, v44);
      v45 = OUTLINED_FUNCTION_1_45();
      v48 = lpta_loadp_setscan_l(v45, v46, v47);
      v49 = v1;
      if (v48)
      {
LABEL_8:
        v50 = v49;
        v51 = OUTLINED_FUNCTION_9_39();
        starttest(v51, v52);
        v53 = OUTLINED_FUNCTION_1_45();
        v56 = lpta_loadp_setscan_l(v53, v54, v55);
        LODWORD(v1) = v50;
        v57 = v50;
        if (v56)
        {
LABEL_9:
          v58 = v57;
          v59 = OUTLINED_FUNCTION_9_39();
          starttest(v59, v60);
          v61 = OUTLINED_FUNCTION_1_45();
          v64 = lpta_loadp_setscan_l(v61, v62, v63);
          LODWORD(v1) = v58;
          v65 = v58;
          if (!v64)
          {
LABEL_10:
            OUTLINED_FUNCTION_17_36(26, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252);
            OUTLINED_FUNCTION_0_47();
            if (test_string_s() || (v66 = OUTLINED_FUNCTION_11_39(), lpta_loadp_setscan_r(v66, v67, v68)) || (v69 = OUTLINED_FUNCTION_2_43(), testFldeq(v69, v70, 7, v71)) || advance_tok(v0, v72, v73, v74) || (v75 = OUTLINED_FUNCTION_0_47(), testFldeq(v75, v76, v77, 2)))
            {
              v32 = v1;
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_9_39();
            bspush_ca_scan_boa();
            v78 = OUTLINED_FUNCTION_2_43();
            v81 = 2;
            goto LABEL_17;
          }

LABEL_70:
          v32 = v65;
          v167 = OUTLINED_FUNCTION_9_39();
          starttest(v167, v168);
          v169 = OUTLINED_FUNCTION_1_45();
          if (lpta_loadp_setscan_l(v169, v170, v171))
          {
            goto LABEL_3;
          }

LABEL_71:
          OUTLINED_FUNCTION_17_36(28, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252);
          v172 = OUTLINED_FUNCTION_8_40();
          if (!testFldeq(v172, v173, 4, 1))
          {
            OUTLINED_FUNCTION_9_39();
            bspush_ca_scan_boa();
            v174 = OUTLINED_FUNCTION_5_40();
            v177 = 23;
LABEL_78:
            if (!testFldeq(v174, v175, v176, v177))
            {
              v32 = 1;
            }
          }

LABEL_80:
          v96 = v32;
LABEL_27:
          v87 = v0[13];
          if (v87)
          {
            v88 = OUTLINED_FUNCTION_22_29(v87);
            v1 = v89;
          }

          else
          {
            v88 = vback(v0, v96);
            v1 = 0;
          }

          v90 = v1;
          v91 = v1;
          switch(v88)
          {
            case 1:
              continue;
            case 2:
              v128 = OUTLINED_FUNCTION_9_39();
              bspush_ca_scan(v128, v129);
              goto LABEL_48;
            case 3:
              v32 = v1;
              goto LABEL_25;
            case 4:
              OUTLINED_FUNCTION_0_47();
              v109 = test_string_s();
              v96 = v1;
              if (v109)
              {
                goto LABEL_27;
              }

              goto LABEL_48;
            case 5:
LABEL_48:
              v130 = OUTLINED_FUNCTION_9_39();
              v133 = test_synch(v130, v131, 1, v132);
              goto LABEL_50;
            case 6:
              goto LABEL_6;
            case 7:
              bspop_boa(v0);
              v133 = advance_tok(v0, v134, v135, v136);
LABEL_50:
              v96 = v1;
              if (!v133)
              {
                goto LABEL_3;
              }

              goto LABEL_27;
            case 8:
              goto LABEL_7;
            case 9:
              v32 = v1;
              goto LABEL_76;
            case 10:
              bspop_boa(v0);
              v113 = advance_tok(v0, v110, v111, v112);
              v96 = v1;
              if (!v113)
              {
                v114 = OUTLINED_FUNCTION_11_39();
                v117 = lpta_loadp_setscan_r(v114, v115, v116);
                v96 = v1;
                if (!v117)
                {
                  v120 = advance_tok(v0, v1, v118, v119);
                  v96 = v1;
                  if (!v120)
                  {
                    v121 = OUTLINED_FUNCTION_0_47();
                    v124 = testFldeq(v121, v122, v123, 2);
                    v96 = v1;
                    if (!v124)
                    {
                      OUTLINED_FUNCTION_9_39();
                      bspush_ca_scan_boa();
                      v125 = OUTLINED_FUNCTION_2_43();
                      if (testFldeq(v125, v126, 2, v127))
                      {
                        v96 = v1;
                      }

                      else
                      {
                        v96 = 1;
                      }
                    }
                  }
                }
              }

              goto LABEL_27;
            case 11:
            case 27:
              bspop_boa(v0);
              v95 = advance_tok(v0, v92, v93, v94);
              goto LABEL_32;
            case 13:
              v49 = v1;
              goto LABEL_8;
            case 14:
              goto LABEL_58;
            case 15:
            case 17:
              v140 = OUTLINED_FUNCTION_9_39();
              bspush_ca_scan(v140, v141);
              goto LABEL_56;
            case 16:
              goto LABEL_59;
            case 18:
LABEL_56:
              OUTLINED_FUNCTION_0_47();
              v142 = test_string_s();
              v90 = v1;
              v96 = v1;
              if (!v142)
              {
                goto LABEL_59;
              }

              goto LABEL_27;
            case 19:
              v57 = v1;
              goto LABEL_9;
            case 20:
              break;
            case 21:
            case 23:
              v137 = OUTLINED_FUNCTION_9_39();
              bspush_ca_scan(v137, v138);
              goto LABEL_53;
            case 22:
              goto LABEL_61;
            case 24:
LABEL_53:
              OUTLINED_FUNCTION_0_47();
              v139 = test_string_s();
              v91 = v1;
              v96 = v1;
              if (!v139)
              {
                goto LABEL_61;
              }

              goto LABEL_27;
            case 25:
              v65 = v1;
              goto LABEL_70;
            case 26:
              goto LABEL_10;
            case 28:
              v32 = v1;
              goto LABEL_71;
            case 29:
              bspop_boa(v0);
              v104 = advance_tok(v0, v101, v102, v103);
              v96 = v1;
              if (v104)
              {
                goto LABEL_27;
              }

              v105 = OUTLINED_FUNCTION_11_39();
              v108 = lpta_loadp_setscan_r(v105, v106, v107);
              v96 = v1;
              if (v108)
              {
                goto LABEL_27;
              }

              OUTLINED_FUNCTION_8_40();
              v95 = test_string_s();
LABEL_32:
              v96 = v1;
              if (!v95)
              {
                v97 = OUTLINED_FUNCTION_6_40();
                lpta_rpta_loadp(v97, v98, v99);
                OUTLINED_FUNCTION_4_41();
                v100 = mark_s();
                v96 = v1;
                if (!v100)
                {
                  goto LABEL_3;
                }
              }

              goto LABEL_27;
            default:
              goto LABEL_3;
          }
        }

        OUTLINED_FUNCTION_17_36(20, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252);
        v146 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v146, v147);
        OUTLINED_FUNCTION_0_47();
        v148 = test_string_s();
        v91 = v1;
        v32 = v1;
        if (v148)
        {
          goto LABEL_80;
        }

LABEL_61:
        v32 = v91;
      }

      else
      {
LABEL_58:
        OUTLINED_FUNCTION_17_36(14, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252);
        v143 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v143, v144);
        OUTLINED_FUNCTION_0_47();
        v145 = test_string_s();
        v90 = v1;
        v32 = v1;
        if (v145)
        {
          goto LABEL_80;
        }

LABEL_59:
        v32 = v90;
      }

      break;
    }

    v149 = OUTLINED_FUNCTION_11_39();
    if (!lpta_loadp_setscan_r(v149, v150, v151))
    {
      v152 = OUTLINED_FUNCTION_2_43();
      if (!testFldeq(v152, v153, 7, v154) && !advance_tok(v0, v155, v156, v157))
      {
        v158 = OUTLINED_FUNCTION_2_43();
        if (!testFldeq(v158, v159, 4, v160) && !advance_tok(v0, v161, v162, v163))
        {
          v164 = OUTLINED_FUNCTION_6_40();
          lpta_rpta_loadp(v164, v165, v166);
          OUTLINED_FUNCTION_8_40();
          if (!mark_s())
          {
            goto LABEL_3;
          }
        }
      }
    }

    goto LABEL_80;
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_31_23();
}

uint64_t break_into_canfren_phones(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  memset(v37, 0, sizeof(v37));
  bzero(&v36, 0xB8uLL);
  OUTLINED_FUNCTION_21_30();
  bzero(v41, v2);
  if (!setjmp(v41) && !ventproc(a1, &v36, v40, v39, v38, v41))
  {
    *&v37[16] = 0;
    *&v37[24] = 0;
    *&v37[30] = 0;
    *v37 = -65534;
    fence_44(a1, 0, &null_str_18);
    v4 = OUTLINED_FUNCTION_11_39();
    if (lpta_loadp_setscan_r(v4, v5, v6) || (OUTLINED_FUNCTION_0_47(), test_string_s()) || (OUTLINED_FUNCTION_20_31(), v7 = OUTLINED_FUNCTION_4_41(), insert_2pt_s(v7, v8, 2, v9, v10)) || (OUTLINED_FUNCTION_20_31(), OUTLINED_FUNCTION_8_40(), mark_s()))
    {
      while (2)
      {
        v11 = OUTLINED_FUNCTION_11_39();
        if (lpta_loadp_setscan_r(v11, v12, v13) || (OUTLINED_FUNCTION_0_47(), test_string_s()) || (OUTLINED_FUNCTION_20_31(), v14 = OUTLINED_FUNCTION_4_41(), insert_2pt_s(v14, v15, 2, &unk_28064BB4D, v16)) || (OUTLINED_FUNCTION_20_31(), OUTLINED_FUNCTION_8_40(), mark_s()))
        {
LABEL_12:
          v17 = OUTLINED_FUNCTION_11_39();
          if (!lpta_loadp_setscan_r(v17, v18, v19))
          {
            OUTLINED_FUNCTION_0_47();
            if (!test_string_s())
            {
              starttest(a1, 4);
              v20 = OUTLINED_FUNCTION_11_39();
              if (lpta_loadp_setscan_r(v20, v21, v22))
              {
LABEL_22:
                OUTLINED_FUNCTION_20_31();
                v33 = OUTLINED_FUNCTION_0_47();
                if (!insert_2pt_s(v33, v34, v35, &unk_28064BB36, 0))
                {
                  break;
                }
              }

              else
              {
                v23 = OUTLINED_FUNCTION_2_43();
                if (!testFldeq(v23, v24, 9, v25) && !advance_tok(a1, v26, v27, v28))
                {
                  OUTLINED_FUNCTION_20_31();
                  settvar_s();
                  v29 = OUTLINED_FUNCTION_24_28();
                  npush_s(v29);
                  strcpy(&v37[2], "\t");
                  npop(a1, v37);
                  OUTLINED_FUNCTION_8_40();
                  insert_2ptv();
                  if (!v30)
                  {
                    break;
                  }
                }
              }

              v31 = a1[13];
              if (v31)
              {
                v32 = OUTLINED_FUNCTION_22_29(v31);
              }

              else
              {
                v32 = vback(a1, 0);
              }

              switch(v32)
              {
                case 1:
                  continue;
                case 3:
                  goto LABEL_12;
                case 4:
                  goto LABEL_22;
                default:
                  goto LABEL_3;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(a1);
  return OUTLINED_FUNCTION_31_23();
}

uint64_t a_to_A_in_stems(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v215 = *MEMORY[0x277D85DE8];
  v209 = 0;
  v210 = 0;
  v208[0] = 0;
  v208[1] = 0;
  v207[0] = 0;
  v207[1] = 0;
  OUTLINED_FUNCTION_10_39(a1, a2, a3, a4, a5, a6, a7, a8, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
  OUTLINED_FUNCTION_21_30();
  bzero(v214, v9);
  if (setjmp(v214) || ventproc(a1, &v180, v213, v212, v211, v214))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_16_36();
  push_ptr_init(v11, v12);
  push_ptr_init(a1, v208);
  v13 = OUTLINED_FUNCTION_13_38();
  push_ptr_init(v13, v14);
  v15 = OUTLINED_FUNCTION_14_37();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_18_35();
  push_ptr_init(v17, v18);
  LODWORD(v19) = 0;
  v20 = OUTLINED_FUNCTION_24_28();
  fence_44(v20, v21, v22);
  fence_44(a1, 1, &_MergedGlobals_39);
  v210 = *(a1 + 1664);
  starttest(a1, 1);
  v23 = OUTLINED_FUNCTION_16_36();
  if (!lpta_loadp_setscan_l(v23, v24, 1))
  {
    v49 = OUTLINED_FUNCTION_9_39();
    bspush_ca_scan(v49, v50);
    OUTLINED_FUNCTION_12_39();
    v51 = test_string_s();
    LODWORD(v19) = 0;
    LODWORD(v52) = 0;
    if (!v51)
    {
LABEL_15:
      LODWORD(v19) = v52;
      do
      {
        v53 = OUTLINED_FUNCTION_16_36();
        bspush_ca_scan(v53, v54);
        v55 = OUTLINED_FUNCTION_12_39();
      }

      while (!testFldeq(v55, v56, 4, 1) && !advance_tok(a1, v57, v58, v59));
    }

LABEL_24:
    LODWORD(v66) = v19;
    while (2)
    {
      v67 = *(a1 + 104);
      if (v67)
      {
        v68 = OUTLINED_FUNCTION_22_29(v67);
        v19 = v66;
      }

      else
      {
        v68 = vback(a1, v66);
        v19 = 0;
      }

      v52 = v19;
      v31 = v19;
      v42 = v19;
      switch(v68)
      {
        case 1:
          break;
        case 2:
        case 4:
          v85 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v85, v86);
          OUTLINED_FUNCTION_12_39();
          goto LABEL_38;
        case 3:
          goto LABEL_15;
        case 5:
          OUTLINED_FUNCTION_12_39();
LABEL_38:
          v87 = test_string_s();
          LODWORD(v52) = v19;
          LODWORD(v66) = v19;
          if (!v87)
          {
            goto LABEL_15;
          }

          continue;
        case 6:
          savescptr(a1, 6, &v209);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_boa();
          v72 = OUTLINED_FUNCTION_16_36();
          root_vow = first_root_vow(v72, v73, v74, v75, v76, v77, v78, v79);
          goto LABEL_61;
        case 7:
          bspop_boa(a1);
          goto LABEL_5;
        case 9:
          goto LABEL_6;
        case 10:
          v71 = advance_tok(a1, v66, v19, v19);
          LODWORD(v31) = v19;
          LODWORD(v66) = v19;
          if (!v71)
          {
            goto LABEL_6;
          }

          continue;
        case 11:
          goto LABEL_7;
        case 12:
          v35 = v19;
          goto LABEL_8;
        case 13:
          goto LABEL_9;
        case 14:
          goto LABEL_10;
        case 15:
          OUTLINED_FUNCTION_26_28(15, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205);
          goto LABEL_10;
        case 16:
          bspop_boa(a1);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v88 = OUTLINED_FUNCTION_5_40();
          v91 = 48;
          goto LABEL_60;
        case 17:
          bspop_boa(a1);
          v84 = advance_tok(a1, v81, v82, v83);
          v42 = v19;
          LODWORD(v66) = v19;
          if (!v84)
          {
            goto LABEL_21;
          }

          continue;
        case 18:
          goto LABEL_21;
        case 19:
          v92 = OUTLINED_FUNCTION_9_39();
          starttest(v92, v93);
          v94 = OUTLINED_FUNCTION_13_38();
          if (lpta_loadp_setscan_r(v94, v95, 1))
          {
            goto LABEL_44;
          }

          v177 = OUTLINED_FUNCTION_12_39();
          v179 = testFldeq(v177, v178, 4, 2);
          LODWORD(v66) = v19;
          if (v179)
          {
            continue;
          }

          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v88 = OUTLINED_FUNCTION_12_39();
          v91 = 19;
LABEL_60:
          root_vow = testFldeq(v88, v89, v90, v91);
          goto LABEL_61;
        case 20:
          bspop_boa(a1);
          goto LABEL_3;
        case 21:
LABEL_44:
          v96 = OUTLINED_FUNCTION_9_39();
          starttest(v96, v97);
          OUTLINED_FUNCTION_23_28(v98, v99, v100, v101, v102, v103, v104, v105, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
          v106 = OUTLINED_FUNCTION_12_39();
          if (setd_lookup(v106, v107, 194))
          {
            goto LABEL_45;
          }

          goto LABEL_69;
        case 22:
          bspop_boa(a1);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v88 = OUTLINED_FUNCTION_12_39();
          v91 = 24;
          goto LABEL_60;
        case 23:
          bspop_boa(a1);
          OUTLINED_FUNCTION_9_39();
          bspush_ca_scan_boa();
          v88 = OUTLINED_FUNCTION_12_39();
          v91 = 26;
          goto LABEL_60;
        case 24:
          bspop_boa(a1);
          v154 = advance_tok(a1, v151, v152, v153);
          LODWORD(v66) = v19;
          if (v154)
          {
            continue;
          }

          v155 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v155, v156);
          goto LABEL_66;
        case 25:
LABEL_66:
          OUTLINED_FUNCTION_12_39();
          v157 = test_string_s();
          v66 = v19;
          if (!v157)
          {
            goto LABEL_67;
          }

          continue;
        case 26:
LABEL_67:
          *(a1 + 136) = 1;
          *(a1 + 112) = v206;
          *(a1 + 128) = 0;
          v158 = test_ptr(a1, v66, v52);
          LODWORD(v66) = v19;
          if (v158)
          {
            continue;
          }

          v159 = OUTLINED_FUNCTION_9_39();
          starttest(v159, v160);
          OUTLINED_FUNCTION_23_28(v161, v162, v163, v164, v165, v166, v167, v168, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
          v169 = OUTLINED_FUNCTION_12_39();
          if (setd_lookup(v169, v170, 193))
          {
            goto LABEL_69;
          }

          goto LABEL_3;
        case 27:
        case 28:
          goto LABEL_69;
        case 29:
LABEL_45:
          v108 = OUTLINED_FUNCTION_9_39();
          starttest(v108, v109);
          v110 = OUTLINED_FUNCTION_14_37();
          if (!lpta_loadp_setscan_r(v110, v111, 1))
          {
            goto LABEL_46;
          }

          goto LABEL_3;
        case 31:
LABEL_46:
          OUTLINED_FUNCTION_17_36(31, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
          v112 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v112, v113);
          OUTLINED_FUNCTION_12_39();
          goto LABEL_48;
        case 32:
        case 34:
          v114 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v114, v115);
          OUTLINED_FUNCTION_12_39();
          goto LABEL_48;
        case 33:
          goto LABEL_49;
        case 35:
          v69 = OUTLINED_FUNCTION_9_39();
          bspush_ca_scan(v69, v70);
          goto LABEL_30;
        case 36:
LABEL_30:
          OUTLINED_FUNCTION_12_39();
LABEL_48:
          v116 = test_string_s();
          v66 = v19;
          if (v116)
          {
            continue;
          }

LABEL_49:
          *(a1 + 136) = 1;
          *(a1 + 112) = *(a1 + 1344);
          *(a1 + 128) = 0;
          v117 = test_ptr(a1, v66, v52);
          LODWORD(v66) = v19;
          if (!v117)
          {
            v118 = OUTLINED_FUNCTION_18_35();
            v120 = lpta_loadp_setscan_l(v118, v119, 1);
            LODWORD(v66) = v19;
            if (!v120)
            {
              OUTLINED_FUNCTION_12_39();
              v121 = test_string_s();
              LODWORD(v66) = v19;
              if (!v121)
              {
LABEL_52:
                OUTLINED_FUNCTION_26_28(37, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205);
LABEL_53:
                v122 = OUTLINED_FUNCTION_9_39();
                v124 = chstream(v122, v123, 2u);
                v66 = v19;
                if (!v124)
                {
LABEL_54:
                  v125 = advance_tok(a1, v66, v52, v31);
                  LODWORD(v66) = v19;
                  if (!v125)
                  {
LABEL_55:
                    v126 = OUTLINED_FUNCTION_9_39();
                    bspush_ca_scan(v126, v127);
LABEL_56:
                    savescptr(a1, 41, v207);
                    OUTLINED_FUNCTION_0_47();
                    v128 = test_string_s();
                    LODWORD(v66) = v19;
                    if (!v128)
                    {
LABEL_57:
                      *&v129 = savescptr(a1, 42, v208).n128_u64[0];
                      OUTLINED_FUNCTION_23_28(v130, v131, v132, v133, v134, v135, v136, v137, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v129);
                      v138 = OUTLINED_FUNCTION_12_39();
                      v140 = setd_lookup(v138, v139, 194);
                      LODWORD(v66) = v19;
                      if (!v140)
                      {
                        OUTLINED_FUNCTION_9_39();
                        bspush_ca_boa();
                        OUTLINED_FUNCTION_23_28(v141, v142, v143, v144, v145, v146, v147, v148, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
                        v149 = OUTLINED_FUNCTION_12_39();
                        root_vow = setd_lookup(v149, v150, 195);
LABEL_61:
                        if (root_vow)
                        {
                          LODWORD(v66) = v19;
                        }

                        else
                        {
                          LODWORD(v66) = 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        case 37:
          goto LABEL_52;
        case 38:
          goto LABEL_53;
        case 39:
          goto LABEL_55;
        case 40:
          goto LABEL_54;
        case 41:
          goto LABEL_56;
        case 42:
          goto LABEL_57;
        case 43:
          bspop_boa(a1);
LABEL_69:
          lpta_rpta_loadp(a1, v208, v207);
          v171 = OUTLINED_FUNCTION_0_47();
          inserted = insert_2pt_s(v171, v172, v173, v174, v175);
          LODWORD(v66) = v19;
          if (inserted)
          {
            continue;
          }

          vretproc(a1);
          return 0;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_5:
  v25 = OUTLINED_FUNCTION_9_39();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_11_39();
  v30 = lpta_loadp_setscan_l(v27, v28, v29);
  LODWORD(v31) = v19;
  if (!v30)
  {
LABEL_6:
    LODWORD(v19) = v31;
    v32 = OUTLINED_FUNCTION_9_39();
    bspush_ca_scan(v32, v33);
LABEL_7:
    savescptr(a1, 11, v207);
    OUTLINED_FUNCTION_0_47();
    v34 = test_string_s();
    v35 = v19;
    if (!v34)
    {
LABEL_8:
      LODWORD(v19) = v35;
      savescptr(a1, 12, v208);
LABEL_9:
      v36 = OUTLINED_FUNCTION_9_39();
      starttest(v36, v37);
      v38 = OUTLINED_FUNCTION_1_45();
      v41 = lpta_loadp_setscan_r(v38, v39, v40);
      v42 = v19;
      if (v41)
      {
LABEL_10:
        v43 = OUTLINED_FUNCTION_9_39();
        starttest(v43, v44);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_boa();
        v45 = OUTLINED_FUNCTION_14_37();
        lpta_loadpn(v45, v46);
        rpta_loadpn(a1, a1 + 1336);
        if (!compare_ptas(a1) && !testneq(a1))
        {
          lpta_rpta_loadp(a1, &v205, a1 + 1336);
          v47 = OUTLINED_FUNCTION_12_39();
          if (!setd_lookup(v47, v48, 178))
          {
            LODWORD(v19) = 1;
          }
        }
      }

      else
      {
LABEL_21:
        v60 = v42;
        v61 = OUTLINED_FUNCTION_9_39();
        bspush_ca_scan(v61, v62);
        OUTLINED_FUNCTION_9_39();
        bspush_ca_scan_boa();
        v63 = OUTLINED_FUNCTION_0_47();
        if (testFldeq(v63, v64, v65, 1))
        {
          LODWORD(v19) = v60;
        }

        else
        {
          LODWORD(v19) = 1;
        }
      }
    }

    goto LABEL_24;
  }

LABEL_3:
  vretproc(a1);
  return 94;
}

BOOL OUTLINED_FUNCTION_7_40()
{

  return testFldeq(v0, 2u, 17, 1);
}

void OUTLINED_FUNCTION_10_39(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_15_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, __int16 a41, __int16 a42, int a43, __int16 a44, char a45, char a46)
{

  return ventproc(v46, &a9, &a46, &a42, &a39, v47 - 248);
}

double OUTLINED_FUNCTION_17_36@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_20_31()
{

  return lpta_rpta_loadp(v0, v0 + 1576, v0 + 1592);
}

uint64_t OUTLINED_FUNCTION_23_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return lpta_rpta_loadp(v33, v33 + 1640, va);
}

double OUTLINED_FUNCTION_26_28@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  *&result = savescptr(v27, a1, &a27).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_27_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return lpta_rpta_loadp(v33, va, &a32);
}

uint64_t OUTLINED_FUNCTION_28_25()
{

  return lpta_rpta_loadp(v0, v0 + 1320, v0 + 1656);
}

uint64_t canfren_roots(__int16 *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  memset(v52, 0, sizeof(v52));
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  bzero(v49, 0xB8uLL);
  bzero(v56, 0xC0uLL);
  if (setjmp(v56) || ventproc(a1, v49, v55, v54, v53, v56) || (v2 = OUTLINED_FUNCTION_2_44(), get_parm(v2, v3, v4, -6), OUTLINED_FUNCTION_3_44(), v51[0] = 0, v51[1] = 0, *(&v51[1] + 6) = 0, LODWORD(v50) = -65534, fence_45(a1), starttest(a1, 17), v5 = OUTLINED_FUNCTION_2_44(), lpta_rpta_loadp(v5, v6, v7), actd_lookup(a1, 10, 0, 0)))
  {
LABEL_4:
    v8 = 94;
  }

  else
  {
LABEL_6:
    actd_goto(a1);
    while (2)
    {
      v11 = *(a1 + 13);
      if (v11)
      {
        *(a1 + 13) = 0;
        v12 = v11;
      }

      else
      {
        v12 = vback(a1, 0);
      }

      v13 = v12 - 1;
      v8 = 0;
      v14 = &unk_28064BB96;
      v15 = 5;
      switch(v13)
      {
        case 0:
          v16 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v16, v17, v52);
          v18 = OUTLINED_FUNCTION_1_46();
          v20 = 4;
          v21 = &unk_28064BB86;
          goto LABEL_34;
        case 1:
          goto LABEL_33;
        case 2:
          v14 = &unk_28064BBB1;
          goto LABEL_32;
        case 3:
          v14 = &unk_28064BB77;
          goto LABEL_18;
        case 4:
          v14 = &unk_28064BB8A;
          v15 = 4;
          goto LABEL_33;
        case 5:
          v14 = &unk_28064BBA5;
          goto LABEL_20;
        case 6:
          v14 = &_MergedGlobals_40;
          v15 = 2;
          goto LABEL_33;
        case 7:
          v14 = &unk_28064BB7A;
          goto LABEL_18;
        case 8:
          v27 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v27, v28, v52);
          v29 = OUTLINED_FUNCTION_1_46();
          if (insert_2pt_s(v29, v30, 2, &unk_28064BB6B, v31))
          {
            continue;
          }

          goto LABEL_26;
        case 9:
          v14 = &unk_28064BBAB;
LABEL_20:
          v15 = 6;
          goto LABEL_33;
        case 10:
          v14 = &unk_28064BB80;
LABEL_18:
          v15 = 3;
          goto LABEL_33;
        case 11:
          v37 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v37, v38, v52);
          v39 = OUTLINED_FUNCTION_1_46();
          if (insert_2pt_s(v39, v40, 2, &unk_28064BB6D, v41))
          {
            continue;
          }

          goto LABEL_26;
        case 12:
          v14 = &unk_28064BBB8;
LABEL_32:
          v15 = 7;
          goto LABEL_33;
        case 13:
          v14 = &unk_28064BB9B;
LABEL_33:
          v42 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v42, v43, v52);
          v18 = OUTLINED_FUNCTION_1_46();
          v20 = v15;
          v21 = v14;
LABEL_34:
          if (insert_2pt_s(v18, v19, v20, v21, 0))
          {
            continue;
          }

          v8 = 0;
          break;
        case 14:
          v32 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v32, v33, v52);
          v34 = OUTLINED_FUNCTION_1_46();
          if (insert_2pt_s(v34, v35, 2, &unk_28064BB71, v36))
          {
            continue;
          }

          goto LABEL_26;
        case 15:
          v22 = OUTLINED_FUNCTION_0_48();
          lpta_rpta_loadp(v22, v23, v52);
          v24 = OUTLINED_FUNCTION_1_46();
          if (insert_2pt_s(v24, v25, 4, &unk_28064BB8E, v26))
          {
            continue;
          }

LABEL_26:
          OUTLINED_FUNCTION_0_48();
          settvar_s();
          OUTLINED_FUNCTION_4_42();
          WORD1(v50) = 9;
          v44 = OUTLINED_FUNCTION_0_48();
          npop(v44, v45);
          v46 = OUTLINED_FUNCTION_1_46();
          OUTLINED_FUNCTION_5_41(v46);
          v47 = OUTLINED_FUNCTION_1_46();
          insert_l(v47, v48);
          v8 = 0;
          break;
        case 17:
          goto LABEL_6;
        case 18:
        case 19:
          goto LABEL_5;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

LABEL_5:
  v9 = v8;
  vretproc(a1);
  return v9;
}

uint64_t canfren_words(__int16 *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(v22, 0, sizeof(v22));
  bzero(v21, 0xB8uLL);
  bzero(v26, 0xC0uLL);
  if (!setjmp(v26) && !ventproc(a1, v21, v25, v24, v23, v26))
  {
    v2 = OUTLINED_FUNCTION_2_44();
    get_parm(v2, v3, v4, -6);
    OUTLINED_FUNCTION_3_44();
    fence_45(a1);
    starttest(a1, 4);
    v5 = OUTLINED_FUNCTION_2_44();
    lpta_rpta_loadp(v5, v6, v7);
    if (!actd_lookup(a1, 11, 0, 0))
    {
LABEL_6:
      actd_goto(a1);
      while (2)
      {
        v10 = *(a1 + 13);
        if (v10)
        {
          *(a1 + 13) = 0;
          v11 = v10;
        }

        else
        {
          v11 = vback(a1, 0);
        }

        v8 = 0;
        v12 = &unk_28064BB75;
        switch(v11)
        {
          case 1:
            v13 = OUTLINED_FUNCTION_0_48();
            lpta_rpta_loadp(v13, v14, v22);
            v8 = 0;
            v15 = OUTLINED_FUNCTION_1_46();
            v17 = 5;
            v18 = &unk_28064BBA0;
            goto LABEL_14;
          case 2:
            goto LABEL_13;
          case 3:
            v12 = &unk_28064BB83;
LABEL_13:
            v19 = OUTLINED_FUNCTION_0_48();
            lpta_rpta_loadp(v19, v20, v22);
            v8 = 0;
            v15 = OUTLINED_FUNCTION_1_46();
            v18 = v12;
LABEL_14:
            if (!insert_2pt_s(v15, v16, v17, v18, 0))
            {
              goto LABEL_5;
            }

            continue;
          case 5:
            goto LABEL_6;
          case 6:
          case 7:
            goto LABEL_5;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  v8 = 94;
LABEL_5:
  vretproc(a1);
  return v8;
}

void OUTLINED_FUNCTION_3_44()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_4_42()
{

  return npush_s(v0);
}

void OUTLINED_FUNCTION_5_41(uint64_t a1)
{

  insert_lv();
}

void *delta_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v8 = malloc_type_malloc(0x1908uLL, 0x10F004044736916uLL);
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
    *(v8 + 45) = xmmword_26E1F47F0;
    *(v8 + 46) = xmmword_26E1F47F0;
    *(v8 + 47) = xmmword_26E1F47F0;
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
    *(v8 + 58) = xmmword_26E1F47F0;
    *(v8 + 59) = xmmword_26E1F47F0;
    *(v8 + 60) = xmmword_26E1F47F0;
    *(v8 + 61) = xmmword_26E1F47F0;
    *(v8 + 62) = xmmword_26E1F47F0;
    *(v8 + 63) = xmmword_26E1F47F0;
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
    *(v8 + 2120) = xmmword_26E1F47F0;
    *(v8 + 2136) = xmmword_26E1F47F0;
    *(v8 + 2152) = xmmword_26E1F47F0;
    *(v8 + 2168) = xmmword_26E1F47F0;
    *(v8 + 2184) = xmmword_26E1F47F0;
    *(v8 + 2200) = xmmword_26E1F47F0;
    *(v8 + 2216) = xmmword_26E1F47F0;
    *(v8 + 2232) = xmmword_26E1F47F0;
    *(v8 + 2248) = xmmword_26E1F47F0;
    *(v8 + 2264) = xmmword_26E1F47F0;
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
    *(v8 + 154) = xmmword_26E1F47F0;
    *(v8 + 620) = 65532;
    *(v8 + 1244) = -6;
    *(v8 + 312) = 0;
    *(v8 + 1252) = -6;
    *(v8 + 314) = 0;
    *(v8 + 1260) = -6;
    *(v8 + 316) = 0;
    *(v8 + 317) = 0xFFFC0000FFFCLL;
    *(v8 + 636) = 65532;
    *(v8 + 161) = xmmword_26E1F47F0;
    *(v8 + 162) = xmmword_26E1F47F0;
    *(v8 + 163) = xmmword_26E1F47F0;
    *(v8 + 164) = xmmword_26E1F47F0;
    *(v8 + 1320) = -6;
    *(v8 + 331) = 0;
    *(v8 + 1328) = -6;
    *(v8 + 333) = 0;
    *(v8 + 2952) = xmmword_26E1F47F0;
    *(v8 + 2968) = xmmword_26E1F47F0;
    *(v8 + 2984) = xmmword_26E1F47F0;
    *(v8 + 3000) = xmmword_26E1F47F0;
    *(v8 + 2856) = xmmword_26E1F47F0;
    *(v8 + 2872) = xmmword_26E1F47F0;
    *(v8 + 2888) = xmmword_26E1F47F0;
    *(v8 + 2904) = xmmword_26E1F47F0;
    *(v8 + 2920) = xmmword_26E1F47F0;
    *(v8 + 2936) = xmmword_26E1F47F0;
    *(v8 + 2760) = xmmword_26E1F47F0;
    *(v8 + 2776) = xmmword_26E1F47F0;
    *(v8 + 2792) = xmmword_26E1F47F0;
    *(v8 + 2808) = xmmword_26E1F47F0;
    *(v8 + 2824) = xmmword_26E1F47F0;
    *(v8 + 2840) = xmmword_26E1F47F0;
    *(v8 + 337) = 0;
    *(v8 + 676) = 65532;
    *(v8 + 1356) = -6;
    *(v8 + 340) = 0;
    *(v8 + 2728) = xmmword_26E1F47F0;
    *(v8 + 2744) = xmmword_26E1F47F0;
    *(v8 + 1336) = -6;
    *(v8 + 335) = 0;
    *(v8 + 1344) = -6;
    *(v8 + 3016) = xmmword_26E1F47F0;
    *(v8 + 3032) = xmmword_26E1F47F0;
    *(v8 + 3048) = xmmword_26E1F47F0;
    *(v8 + 3064) = xmmword_26E1F47F0;
    *(v8 + 3080) = xmmword_26E1F47F0;
    *(v8 + 3096) = xmmword_26E1F47F0;
    *(v8 + 3112) = xmmword_26E1F47F0;
    *(v8 + 3128) = xmmword_26E1F47F0;
    *(v8 + 3144) = xmmword_26E1F47F0;
    *(v8 + 3160) = xmmword_26E1F47F0;
    *(v8 + 3176) = xmmword_26E1F47F0;
    *(v8 + 3192) = xmmword_26E1F47F0;
    *(v8 + 3208) = xmmword_26E1F47F0;
    *(v8 + 3224) = xmmword_26E1F47F0;
    *(v8 + 3240) = xmmword_26E1F47F0;
    *(v8 + 3256) = xmmword_26E1F47F0;
    *(v8 + 409) = 0xFFFC0000FFFCLL;
    *(v8 + 211) = xmmword_26E1F47F0;
    *(v8 + 212) = xmmword_26E1F47F0;
    *(v8 + 213) = xmmword_26E1F47F0;
    *(v8 + 214) = xmmword_26E1F47F0;
    *(v8 + 215) = xmmword_26E1F47F0;
    *(v8 + 216) = xmmword_26E1F47F0;
    *(v8 + 217) = xmmword_26E1F47F0;
    *(v8 + 218) = xmmword_26E1F47F0;
    *(v8 + 219) = xmmword_26E1F47F0;
    *(v8 + 220) = xmmword_26E1F47F0;
    *(v8 + 1768) = -6;
    *(v8 + 443) = 0;
    *(v8 + 444) = 0xFFFC0000FFFCLL;
    *(v8 + 890) = 65532;
    *(v8 + 1784) = -5;
    *(v8 + 447) = 0;
    *(v8 + 1792) = -5;
    *(v8 + 449) = 0;
    *(v8 + 225) = xmmword_26E1F47F0;
    *(v8 + 226) = xmmword_26E1F47F0;
    *(v8 + 227) = xmmword_26E1F47F0;
    *(v8 + 228) = xmmword_26E1F47F0;
    *(v8 + 229) = xmmword_26E1F47F0;
    *(v8 + 230) = xmmword_26E1F47F0;
    *(v8 + 231) = xmmword_26E1F47F0;
    *(v8 + 232) = xmmword_26E1F47F0;
    *(v8 + 233) = xmmword_26E1F47F0;
    *(v8 + 234) = xmmword_26E1F47F0;
    *(v8 + 470) = 0xFFFC0000FFFCLL;
    *(v8 + 942) = 65532;
    *(v8 + 1888) = -3;
    *(v8 + 473) = 0;
    *(v8 + 1968) = -5;
    *(v8 + 493) = 0;
    *(v8 + 988) = 65532;
    *(v8 + 996) = 65532;
    *(v8 + 1996) = -3;
    *(v8 + 500) = 0;
    *(v8 + 501) = 0xFFFC0000FFFCLL;
    *(v8 + 1004) = 65532;
    *(v8 + 2012) = -6;
    *(v8 + 504) = 0;
    *(v8 + 4040) = xmmword_26E1F47F0;
    *(v8 + 1014) = 65532;
    *(v8 + 2032) = -3;
    *(v8 + 509) = 0;
    *(v8 + 255) = xmmword_26E1F47F0;
    *(v8 + 256) = xmmword_26E1F47F0;
    *(v8 + 514) = 0xFFFC0000FFFCLL;
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
    *(v8 + 2100) = -6;
    *(v8 + 526) = 0;
    *(v8 + 527) = 0xFFFC0000FFFCLL;
    *(v8 + 2112) = -5;
    *(v8 + 529) = 0;
    *(v8 + 265) = xmmword_26E1F47F0;
    *(v8 + 532) = 0xFFFC0000FFFCLL;
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
    *(v8 + 2204) = -5;
    *(v8 + 552) = 0;
    *(v8 + 4424) = xmmword_26E1F47F0;
    *(v8 + 4440) = xmmword_26E1F47F0;
    *(v8 + 557) = 0xFFFC0000FFFCLL;
    *(v8 + 1116) = 65532;
    *(v8 + 2236) = -5;
    *(v8 + 560) = 0;
    *(v8 + 4488) = xmmword_26E1F47F0;
    *(v8 + 4504) = xmmword_26E1F47F0;
    *(v8 + 4520) = xmmword_26E1F47F0;
    *(v8 + 4536) = xmmword_26E1F47F0;
    *(v8 + 4552) = xmmword_26E1F47F0;
    *(v8 + 4568) = xmmword_26E1F47F0;
    *(v8 + 4584) = xmmword_26E1F47F0;
    *(v8 + 4600) = xmmword_26E1F47F0;
    *(v8 + 4616) = xmmword_26E1F47F0;
    *(v8 + 4632) = xmmword_26E1F47F0;
    *(v8 + 4648) = xmmword_26E1F47F0;
    *(v8 + 4664) = xmmword_26E1F47F0;
    *(v8 + 4680) = xmmword_26E1F47F0;
    *(v8 + 4696) = xmmword_26E1F47F0;
    *(v8 + 4712) = xmmword_26E1F47F0;
    *(v8 + 4728) = xmmword_26E1F47F0;
    *(v8 + 4744) = xmmword_26E1F47F0;
    *(v8 + 4760) = xmmword_26E1F47F0;
    *(v8 + 4776) = xmmword_26E1F47F0;
    *(v8 + 4792) = xmmword_26E1F47F0;
    *(v8 + 4808) = xmmword_26E1F47F0;
    *(v8 + 2412) = -6;
    *(v8 + 604) = 0;
    *(v8 + 2420) = -5;
    *(v8 + 606) = 0;
    *(v8 + 2428) = -5;
    *(v8 + 608) = 0;
    *(v8 + 2436) = -6;
    *(v8 + 610) = 0;
    *(v8 + 4888) = xmmword_26E1F47F0;
    *(v8 + 4904) = xmmword_26E1F47F0;
    *(v8 + 1230) = 65532;
    *(v8 + 640) = 0xFFFC0000FFFCLL;
    *(v8 + 2564) = -6;
    *(v8 + 642) = 0;
    *(v8 + 2572) = -5;
    *(v8 + 644) = 0;
    *(v8 + 2580) = -5;
    *(v8 + 646) = 0;
    *(v8 + 647) = 0xFFFC0000FFFCLL;
    *(v8 + 2592) = -6;
    *(v8 + 649) = 0;
    *(v8 + 2600) = -6;
    *(v8 + 651) = 0;
    *(v8 + 2608) = -6;
    *(v8 + 653) = 0;
    *(v8 + 2616) = -6;
    *(v8 + 655) = 0;
    *(v8 + 1312) = 65532;
    *(v8 + 2628) = -5;
    *(v8 + 658) = 0;
    *(v8 + 1318) = 65532;
    *(v8 + 2640) = -6;
    *(v8 + 661) = 0;
    *(v8 + 331) = xmmword_26E1F47F0;
    *(v8 + 332) = xmmword_26E1F47F0;
    *(v8 + 333) = xmmword_26E1F47F0;
    *(v8 + 668) = 0xFFFC0000FFFCLL;
    *(v8 + 1338) = 65532;
    *(v8 + 2680) = -5;
    *(v8 + 671) = 0;
    *(v8 + 2688) = -5;
    *(v8 + 673) = 0;
    *(v8 + 2696) = -5;
    *(v8 + 675) = 0;
    *(v8 + 2704) = -6;
    *(v8 + 677) = 0;
    *(v8 + 678) = 0xFFFC0000FFFCLL;
    *(v8 + 1386) = 65532;
    *(v8 + 2776) = -5;
    *(v8 + 695) = 0;
    *(v8 + 2784) = -5;
    *(v8 + 697) = 0;
    *(v8 + 2792) = -5;
    *(v8 + 699) = 0;
    *(v8 + 350) = xmmword_26E1F47F0;
    *(v8 + 702) = 0xFFFC0000FFFCLL;
    *(v8 + 2812) = -5;
    *(v8 + 704) = 0;
    *(v8 + 5640) = xmmword_26E1F47F0;
    *(v8 + 5656) = xmmword_26E1F47F0;
    *(v8 + 5672) = xmmword_26E1F47F0;
    *(v8 + 5688) = xmmword_26E1F47F0;
    *(v8 + 5704) = xmmword_26E1F47F0;
    *(v8 + 5720) = xmmword_26E1F47F0;
    *(v8 + 5736) = xmmword_26E1F47F0;
    *(v8 + 5752) = xmmword_26E1F47F0;
    *(v8 + 5768) = xmmword_26E1F47F0;
    *(v8 + 5784) = xmmword_26E1F47F0;
    *(v8 + 5800) = xmmword_26E1F47F0;
    *(v8 + 5816) = xmmword_26E1F47F0;
    *(v8 + 5832) = xmmword_26E1F47F0;
    *(v8 + 5848) = xmmword_26E1F47F0;
    *(v8 + 5864) = xmmword_26E1F47F0;
    *(v8 + 5880) = xmmword_26E1F47F0;
    *(v8 + 5896) = xmmword_26E1F47F0;
    *(v8 + 5912) = xmmword_26E1F47F0;
    *(v8 + 5928) = xmmword_26E1F47F0;
    *(v8 + 5944) = xmmword_26E1F47F0;
    *(v8 + 1490) = 65532;
    *(v8 + 2984) = -5;
    *(v8 + 747) = 0;
    *(v8 + 2992) = -5;
    *(v8 + 749) = 0;
    *(v8 + 3000) = -5;
    *(v8 + 751) = 0;
    *(v8 + 3008) = -5;
    *(v8 + 753) = 0;
    *(v8 + 3016) = -5;
    *(v8 + 755) = 0;
    *(v8 + 3024) = -5;
    *(v8 + 757) = 0;
    *(v8 + 3032) = -5;
    *(v8 + 759) = 0;
    *(v8 + 3040) = -5;
    *(v8 + 761) = 0;
    *(v8 + 3048) = -5;
    *(v8 + 763) = 0;
    *(v8 + 3056) = -5;
    *(v8 + 765) = 0;
    *(v8 + 3064) = -5;
    *(v8 + 767) = 0;
    *(v8 + 773) = 0xFFFC0000FFFCLL;
    *(v8 + 3096) = -6;
    *(v8 + 775) = 0;
    *(v8 + 3104) = -6;
    *(v8 + 777) = 0;
    *(v8 + 3112) = -6;
    *(v8 + 779) = 0;
    *(v8 + 3120) = -6;
    *(v8 + 781) = 0;
    *(v8 + 3128) = -6;
    *(v8 + 783) = 0;
    *(v8 + 392) = xmmword_26E1F47F0;
    *(v8 + 393) = xmmword_26E1F47F0;
    *(v8 + 394) = xmmword_26E1F47F0;
    *(v8 + 395) = xmmword_26E1F47F0;
    *(v8 + 396) = xmmword_26E1F47F0;
    *(v8 + 397) = xmmword_26E1F47F0;
    *(v8 + 796) = 0xFFFC0000FFFCLL;
    *(v8 + 1594) = 65532;
    *(v8 + 3192) = -6;
    *(v8 + 799) = 0;
    *(v8 + 800) = 0xFFFC0000FFFCLL;
    *(v8 + 4) = 228;
    *v8 = xmmword_26E1F4800;
    *(v8 + 11) = v8 + 344;
    *(v8 + 12) = v8 + 360;
    v10 = malloc_type_malloc(0x720uLL, 0x2004093837F09uLL);
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
          *(v9[3] + 736) = v9 + 504,
          *(v9[3] + 744) = v9 + 516,
          *(v9[3] + 752) = v9 + 518,
          *(v9[3] + 760) = v9 + 520,
          *(v9[3] + 768) = v9 + 522,
          *(v9[3] + 776) = v9 + 524,
          *(v9[3] + 784) = v9 + 526,
          *(v9[3] + 792) = v9 + 604,
          *(v9[3] + 800) = v9 + 610,
          *(v9[3] + 808) = v9 + 642,
          *(v9[3] + 816) = v9 + 649,
          *(v9[3] + 824) = v9 + 651,
          *(v9[3] + 832) = v9 + 653,
          *(v9[3] + 840) = v9 + 655,
          *(v9[3] + 848) = v9 + 661,
          *(v9[3] + 856) = v9 + 677,
          *(v9[3] + 864) = v9 + 775,
          *(v9[3] + 872) = v9 + 777,
          *(v9[3] + 880) = v9 + 779,
          *(v9[3] + 888) = v9 + 781,
          *(v9[3] + 896) = v9 + 783,
          *(v9[3] + 904) = v9 + 799,
          *(v9[3] + 912) = v9 + 42,
          *(v9[3] + 920) = v9 + 44,
          *(v9[3] + 928) = v9 + 46,
          *(v9[3] + 936) = v9 + 48,
          *(v9[3] + 944) = v9 + 50,
          *(v9[3] + 952) = v9 + 52,
          *(v9[3] + 960) = v9 + 54,
          *(v9[3] + 968) = v9 + 56,
          *(v9[3] + 976) = v9 + 58,
          *(v9[3] + 984) = v9 + 60,
          *(v9[3] + 992) = v9 + 62,
          *(v9[3] + 1000) = v9 + 64,
          *(v9[3] + 1008) = v9 + 66,
          *(v9[3] + 1016) = v9 + 68,
          *(v9[3] + 1024) = v9 + 70,
          *(v9[3] + 1032) = v9 + 72,
          *(v9[3] + 1040) = v9 + 74,
          *(v9[3] + 1048) = v9 + 76,
          *(v9[3] + 1056) = v9 + 78,
          *(v9[3] + 1064) = v9 + 81,
          *(v9[3] + 1072) = v9 + 83,
          *(v9[3] + 1080) = v9 + 85,
          *(v9[3] + 1088) = v9 + 87,
          *(v9[3] + 1096) = v9 + 89,
          *(v9[3] + 1104) = v9 + 97,
          *(v9[3] + 1112) = v9 + 99,
          *(v9[3] + 1120) = v9 + 101,
          *(v9[3] + 1128) = v9 + 103,
          *(v9[3] + 1136) = v9 + 105,
          *(v9[3] + 1144) = v9 + 107,
          *(v9[3] + 1152) = v9 + 109,
          *(v9[3] + 1160) = v9 + 111,
          *(v9[3] + 1168) = v9 + 113,
          *(v9[3] + 1176) = v9 + 115,
          *(v9[3] + 1184) = v9 + 143,
          *(v9[3] + 1192) = v9 + 145,
          *(v9[3] + 1200) = v9 + 147,
          *(v9[3] + 1208) = v9 + 150,
          *(v9[3] + 1216) = v9 + 154,
          *(v9[3] + 1224) = v9 + 156,
          *(v9[3] + 1232) = v9 + 158,
          *(v9[3] + 1240) = v9 + 160,
          *(v9[3] + 1248) = v9 + 162,
          *(v9[3] + 1256) = v9 + 164,
          *(v9[3] + 1264) = v9 + 166,
          *(v9[3] + 1272) = v9 + 168,
          *(v9[3] + 1280) = v9 + 170,
          *(v9[3] + 1288) = v9 + 172,
          *(v9[3] + 1296) = v9 + 174,
          *(v9[3] + 1304) = v9 + 176,
          *(v9[3] + 1312) = v9 + 178,
          *(v9[3] + 1320) = v9 + 180,
          *(v9[3] + 1328) = v9 + 182,
          *(v9[3] + 1336) = v9 + 184,
          *(v9[3] + 1344) = v9 + 186,
          *(v9[3] + 1352) = v9 + 188,
          *(v9[3] + 1360) = v9 + 190,
          *(v9[3] + 1368) = v9 + 192,
          *(v9[3] + 1376) = v9 + 194,
          *(v9[3] + 1384) = v9 + 196,
          *(v9[3] + 1392) = v9 + 198,
          *(v9[3] + 1400) = v9 + 200,
          *(v9[3] + 1408) = v9 + 202,
          *(v9[3] + 1416) = v9 + 204,
          *(v9[3] + 1424) = v9 + 206,
          *(v9[3] + 1432) = v9 + 208,
          *(v9[3] + 1440) = v9 + 210,
          *(v9[3] + 1448) = v9 + 212,
          *(v9[3] + 1456) = v9 + 214,
          *(v9[3] + 1464) = v9 + 216,
          *(v9[3] + 1472) = v9 + 218,
          *(v9[3] + 1480) = v9 + 220,
          *(v9[3] + 1488) = v9 + 222,
          *(v9[3] + 1496) = v9 + 224,
          *(v9[3] + 1504) = v9 + 226,
          *(v9[3] + 1512) = v9 + 228,
          *(v9[3] + 1520) = v9 + 230,
          *(v9[3] + 1528) = v9 + 232,
          *(v9[3] + 1536) = v9 + 234,
          *(v9[3] + 1544) = v9 + 236,
          *(v9[3] + 1552) = v9 + 238,
          *(v9[3] + 1560) = v9 + 240,
          *(v9[3] + 1568) = v9 + 242,
          *(v9[3] + 1576) = v9 + 312,
          *(v9[3] + 1584) = v9 + 314,
          *(v9[3] + 1592) = v9 + 316,
          *(v9[3] + 1600) = v9 + 331,
          *(v9[3] + 1608) = v9 + 333,
          *(v9[3] + 1616) = v9 + 335,
          *(v9[3] + 1624) = v9 + 337,
          *(v9[3] + 1632) = v9 + 340,
          *(v9[3] + 1640) = v9 + 443,
          *(v9[3] + 1648) = v9 + 504,
          *(v9[3] + 1656) = v9 + 516,
          *(v9[3] + 1664) = v9 + 518,
          *(v9[3] + 1672) = v9 + 520,
          *(v9[3] + 1680) = v9 + 522,
          *(v9[3] + 1688) = v9 + 524,
          *(v9[3] + 1696) = v9 + 526,
          *(v9[3] + 1704) = v9 + 604,
          *(v9[3] + 1712) = v9 + 610,
          *(v9[3] + 1720) = v9 + 642,
          *(v9[3] + 1728) = v9 + 649,
          *(v9[3] + 1736) = v9 + 651,
          *(v9[3] + 1744) = v9 + 653,
          *(v9[3] + 1752) = v9 + 655,
          *(v9[3] + 1760) = v9 + 661,
          *(v9[3] + 1768) = v9 + 677,
          *(v9[3] + 1776) = v9 + 775,
          *(v9[3] + 1784) = v9 + 777,
          *(v9[3] + 1792) = v9 + 779,
          *(v9[3] + 1800) = v9 + 781,
          *(v9[3] + 1808) = v9 + 783,
          *(v9[3] + 1816) = v9 + 799,
          v11 = malloc_type_malloc(0x2A0uLL, 0x1020040EDED9539uLL),
          (v9[4] = v11) != 0)
      && (*v11 = v9 + 247, v11[1] = 0x600000001, v11[2] = v9 + 250, v11[3] = 0x600000001, v11[4] = v9 + 253, v11[5] = 0x600000001, v11[6] = v9 + 256, v11[7] = 0x200000007, v11[8] = v9 + 259, v11[9] = 0x200000008, v11[10] = v9 + 262, v11[11] = 0x200000000, v11[12] = v9 + 319, v11[13] = 0x600000001, v11[14] = v9 + 410, v11[15] = 0xA00000005, v11[16] = v9 + 414, v11[17] = 0xA00000005, v11[18] = v9 + 418, v11[19] = 0xA00000005, v11[20] = v9 + 474, v11[21] = 0x1200000004, v11[22] = v9 + 479, v11[23] = 0x3000000006, v11[24] = v9 + 487, v11[25] = 0x1200000004, v11[26] = v9 + 495, v11[27] = 0x600000001, v11[28] = v9 + 616, v11[29] = 0x3000000006, v11[30] = v9 + 624, v11[31] = 0x3000000006, v11[32] = v9 + 632, v11[33] = 0x3000000006, v11[34] = v9 + 679, v11[35] = 0xA00000005, v11[36] = v9 + 683, v11[37] = 0x1200000004, v11[38] = v9 + 688, v11[39] = 0x1200000004, v11[40] = v9 + 768, v11[41] = 0x1200000004, v11[42] = v9 + 247, v11[43] = 0x600000001, v11[44] = v9 + 250, v11[45] = 0x600000001, v11[46] = v9 + 253, v11[47] = 0x600000001, v11[48] = v9 + 256, v11[49] = 0x200000007, v11[50] = v9 + 259, v11[51] = 0x200000008, v11[52] = v9 + 262, v11[53] = 0x200000000, v11[54] = v9 + 319, v11[55] = 0x600000001, v11[56] = v9 + 410, v11[57] = 0xA00000005, v11[58] = v9 + 414, v11[59] = 0xA00000005, v11[60] = v9 + 418, v11[61] = 0xA00000005, v11[62] = v9 + 474, v11[63] = 0x1200000004, v11[64] = v9 + 479, v11[65] = 0x3000000006, v11[66] = v9 + 487, v12 = v9[4], v12[67] = 0x1200000004, v12[68] = v9 + 495, v12[69] = 0x600000001, v12[70] = v9 + 616, v12[71] = 0x3000000006, v12[72] = v9 + 624, v12[73] = 0x3000000006, v12[74] = v9 + 632, v12[75] = 0x3000000006, v12[76] = v9 + 679, v12[77] = 0xA00000005, v12[78] = v9 + 683, v12[79] = 0x1200000004, v12[80] = v9 + 688, v12[81] = 0x1200000004, v12[82] = v9 + 768, v12[83] = 0x1200000004, v13 = malloc_type_malloc(0x30uLL, 0x10040436913F5uLL), (v9[5] = v13) != 0)
      && (*v13 = v9 + 473, *(v9[5] + 8) = v9 + 500, *(v9[5] + 16) = v9 + 509, *(v9[5] + 24) = v9 + 473, *(v9[5] + 32) = v9 + 500, *(v9[5] + 40) = v9 + 509, v14 = malloc_type_malloc(0x2620uLL, 0x10040436913F5uLL), (v9[6] = v14) != 0)
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
          *(v9[6] + 1992) = v9 + 3278,
          *(v9[6] + 2000) = v9 + 3378,
          *(v9[6] + 2008) = v9 + 3382,
          *(v9[6] + 2016) = v9 + 3386,
          *(v9[6] + 2024) = v9 + 3390,
          *(v9[6] + 2032) = v9 + 3394,
          *(v9[6] + 2040) = v9 + 3398,
          *(v9[6] + 2048) = v9 + 3402,
          *(v9[6] + 2056) = v9 + 3406,
          *(v9[6] + 2064) = v9 + 3410,
          *(v9[6] + 2072) = v9 + 3414,
          *(v9[6] + 2080) = v9 + 3418,
          *(v9[6] + 2088) = v9 + 3422,
          *(v9[6] + 2096) = v9 + 3426,
          *(v9[6] + 2104) = v9 + 3430,
          *(v9[6] + 2112) = v9 + 3434,
          *(v9[6] + 2120) = v9 + 3438,
          *(v9[6] + 2128) = v9 + 3442,
          *(v9[6] + 2136) = v9 + 3446,
          *(v9[6] + 2144) = v9 + 3450,
          *(v9[6] + 2152) = v9 + 3454,
          *(v9[6] + 2160) = v9 + 3458,
          *(v9[6] + 2168) = v9 + 3462,
          *(v9[6] + 2176) = v9 + 3466,
          *(v9[6] + 2184) = v9 + 3470,
          *(v9[6] + 2192) = v9 + 3474,
          *(v9[6] + 2200) = v9 + 3478,
          *(v9[6] + 2208) = v9 + 3482,
          *(v9[6] + 2216) = v9 + 3486,
          *(v9[6] + 2224) = v9 + 3490,
          *(v9[6] + 2232) = v9 + 3494,
          *(v9[6] + 2240) = v9 + 3498,
          *(v9[6] + 2248) = v9 + 3502,
          *(v9[6] + 2256) = v9 + 3506,
          *(v9[6] + 2264) = v9 + 3510,
          *(v9[6] + 2272) = v9 + 3514,
          *(v9[6] + 2280) = v9 + 3518,
          *(v9[6] + 2288) = v9 + 3522,
          *(v9[6] + 2296) = v9 + 3526,
          *(v9[6] + 2304) = v9 + 3530,
          *(v9[6] + 2312) = v9 + 3534,
          *(v9[6] + 2320) = v9 + 3554,
          *(v9[6] + 2328) = v9 + 3558,
          *(v9[6] + 2336) = v9 + 3562,
          *(v9[6] + 2344) = v9 + 3602,
          *(v9[6] + 2352) = v9 + 3606,
          *(v9[6] + 2360) = v9 + 3610,
          *(v9[6] + 2368) = v9 + 3614,
          *(v9[6] + 2376) = v9 + 3618,
          *(v9[6] + 2384) = v9 + 3622,
          *(v9[6] + 2392) = v9 + 3626,
          *(v9[6] + 2400) = v9 + 3630,
          *(v9[6] + 2408) = v9 + 3634,
          *(v9[6] + 2416) = v9 + 3638,
          *(v9[6] + 2424) = v9 + 3642,
          *(v9[6] + 2432) = v9 + 3646,
          *(v9[6] + 2440) = v9 + 3650,
          *(v9[6] + 2448) = v9 + 3654,
          *(v9[6] + 2456) = v9 + 3658,
          *(v9[6] + 2464) = v9 + 3662,
          *(v9[6] + 2472) = v9 + 3666,
          *(v9[6] + 2480) = v9 + 3670,
          *(v9[6] + 2488) = v9 + 3674,
          *(v9[6] + 2496) = v9 + 3678,
          *(v9[6] + 2504) = v9 + 3682,
          *(v9[6] + 2512) = v9 + 3686,
          *(v9[6] + 2520) = v9 + 3690,
          *(v9[6] + 2528) = v9 + 3694,
          *(v9[6] + 2536) = v9 + 3698,
          *(v9[6] + 2544) = v9 + 3702,
          *(v9[6] + 2552) = v9 + 3706,
          *(v9[6] + 2560) = v9 + 3710,
          *(v9[6] + 2568) = v9 + 3714,
          *(v9[6] + 2576) = v9 + 3718,
          *(v9[6] + 2584) = v9 + 3722,
          *(v9[6] + 2592) = v9 + 3726,
          *(v9[6] + 2600) = v9 + 3730,
          *(v9[6] + 2608) = v9 + 3734,
          *(v9[6] + 2616) = v9 + 3738,
          *(v9[6] + 2624) = v9 + 3742,
          *(v9[6] + 2632) = v9 + 3746,
          *(v9[6] + 2640) = v9 + 3750,
          *(v9[6] + 2648) = v9 + 3754,
          *(v9[6] + 2656) = v9 + 3758,
          *(v9[6] + 2664) = v9 + 3762,
          *(v9[6] + 2672) = v9 + 3766,
          *(v9[6] + 2680) = v9 + 3770,
          *(v9[6] + 2688) = v9 + 3954,
          *(v9[6] + 2696) = v9 + 3986,
          *(v9[6] + 2704) = v9 + 4010,
          *(v9[6] + 2712) = v9 + 4014,
          *(v9[6] + 2720) = v9 + 4018,
          *(v9[6] + 2728) = v9 + 4042,
          *(v9[6] + 2736) = v9 + 4046,
          *(v9[6] + 2744) = v9 + 4050,
          *(v9[6] + 2752) = v9 + 4054,
          *(v9[6] + 2760) = v9 + 4058,
          *(v9[6] + 2768) = v9 + 4082,
          *(v9[6] + 2776) = v9 + 4086,
          *(v9[6] + 2784) = v9 + 4090,
          *(v9[6] + 2792) = v9 + 4094,
          *(v9[6] + 2800) = v9 + 4098,
          *(v9[6] + 2808) = v9 + 4102,
          *(v9[6] + 2816) = v9 + 4106,
          *(v9[6] + 2824) = v9 + 4110,
          *(v9[6] + 2832) = v9 + 4114,
          *(v9[6] + 2840) = v9 + 4118,
          *(v9[6] + 2848) = v9 + 4218,
          *(v9[6] + 2856) = v9 + 4222,
          *(v9[6] + 2864) = v9 + 4242,
          *(v9[6] + 2872) = v9 + 4246,
          *(v9[6] + 2880) = v9 + 4250,
          *(v9[6] + 2888) = v9 + 4254,
          *(v9[6] + 2896) = v9 + 4258,
          *(v9[6] + 2904) = v9 + 4262,
          *(v9[6] + 2912) = v9 + 4426,
          *(v9[6] + 2920) = v9 + 4430,
          *(v9[6] + 2928) = v9 + 4434,
          *(v9[6] + 2936) = v9 + 4438,
          *(v9[6] + 2944) = v9 + 4442,
          *(v9[6] + 2952) = v9 + 4446,
          *(v9[6] + 2960) = v9 + 4450,
          *(v9[6] + 2968) = v9 + 4454,
          *(v9[6] + 2976) = v9 + 4458,
          *(v9[6] + 2984) = v9 + 4462,
          *(v9[6] + 2992) = v9 + 4466,
          *(v9[6] + 3000) = v9 + 4490,
          *(v9[6] + 3008) = v9 + 4494,
          *(v9[6] + 3016) = v9 + 4498,
          *(v9[6] + 3024) = v9 + 4502,
          *(v9[6] + 3032) = v9 + 4506,
          *(v9[6] + 3040) = v9 + 4510,
          *(v9[6] + 3048) = v9 + 4514,
          *(v9[6] + 3056) = v9 + 4518,
          *(v9[6] + 3064) = v9 + 4522,
          *(v9[6] + 3072) = v9 + 4526,
          *(v9[6] + 3080) = v9 + 4530,
          *(v9[6] + 3088) = v9 + 4534,
          *(v9[6] + 3096) = v9 + 4538,
          *(v9[6] + 3104) = v9 + 4542,
          *(v9[6] + 3112) = v9 + 4546,
          *(v9[6] + 3120) = v9 + 4550,
          *(v9[6] + 3128) = v9 + 4554,
          *(v9[6] + 3136) = v9 + 4558,
          *(v9[6] + 3144) = v9 + 4562,
          *(v9[6] + 3152) = v9 + 4566,
          *(v9[6] + 3160) = v9 + 4570,
          *(v9[6] + 3168) = v9 + 4574,
          *(v9[6] + 3176) = v9 + 4578,
          *(v9[6] + 3184) = v9 + 4582,
          *(v9[6] + 3192) = v9 + 4586,
          *(v9[6] + 3200) = v9 + 4590,
          *(v9[6] + 3208) = v9 + 4594,
          *(v9[6] + 3216) = v9 + 4598,
          *(v9[6] + 3224) = v9 + 4602,
          *(v9[6] + 3232) = v9 + 4606,
          *(v9[6] + 3240) = v9 + 4610,
          *(v9[6] + 3248) = v9 + 4614,
          *(v9[6] + 3256) = v9 + 4618,
          *(v9[6] + 3264) = v9 + 4622,
          *(v9[6] + 3272) = v9 + 4626,
          *(v9[6] + 3280) = v9 + 4630,
          *(v9[6] + 3288) = v9 + 4634,
          *(v9[6] + 3296) = v9 + 4638,
          *(v9[6] + 3304) = v9 + 4642,
          *(v9[6] + 3312) = v9 + 4646,
          *(v9[6] + 3320) = v9 + 4650,
          *(v9[6] + 3328) = v9 + 4654,
          *(v9[6] + 3336) = v9 + 4658,
          *(v9[6] + 3344) = v9 + 4662,
          *(v9[6] + 3352) = v9 + 4666,
          *(v9[6] + 3360) = v9 + 4670,
          *(v9[6] + 3368) = v9 + 4674,
          *(v9[6] + 3376) = v9 + 4678,
          *(v9[6] + 3384) = v9 + 4682,
          *(v9[6] + 3392) = v9 + 4686,
          *(v9[6] + 3400) = v9 + 4690,
          *(v9[6] + 3408) = v9 + 4694,
          *(v9[6] + 3416) = v9 + 4698,
          *(v9[6] + 3424) = v9 + 4702,
          *(v9[6] + 3432) = v9 + 4706,
          *(v9[6] + 3440) = v9 + 4710,
          *(v9[6] + 3448) = v9 + 4714,
          *(v9[6] + 3456) = v9 + 4718,
          *(v9[6] + 3464) = v9 + 4722,
          *(v9[6] + 3472) = v9 + 4726,
          *(v9[6] + 3480) = v9 + 4730,
          *(v9[6] + 3488) = v9 + 4734,
          *(v9[6] + 3496) = v9 + 4738,
          *(v9[6] + 3504) = v9 + 4742,
          *(v9[6] + 3512) = v9 + 4746,
          *(v9[6] + 3520) = v9 + 4750,
          *(v9[6] + 3528) = v9 + 4754,
          *(v9[6] + 3536) = v9 + 4758,
          *(v9[6] + 3544) = v9 + 4762,
          *(v9[6] + 3552) = v9 + 4766,
          *(v9[6] + 3560) = v9 + 4770,
          *(v9[6] + 3568) = v9 + 4774,
          *(v9[6] + 3576) = v9 + 4778,
          *(v9[6] + 3584) = v9 + 4782,
          *(v9[6] + 3592) = v9 + 4786,
          *(v9[6] + 3600) = v9 + 4790,
          *(v9[6] + 3608) = v9 + 4794,
          *(v9[6] + 3616) = v9 + 4798,
          *(v9[6] + 3624) = v9 + 4802,
          *(v9[6] + 3632) = v9 + 4806,
          *(v9[6] + 3640) = v9 + 4810,
          *(v9[6] + 3648) = v9 + 4814,
          *(v9[6] + 3656) = v9 + 4818,
          *(v9[6] + 3664) = v9 + 4822,
          *(v9[6] + 3672) = v9 + 4890,
          *(v9[6] + 3680) = v9 + 4894,
          *(v9[6] + 3688) = v9 + 4898,
          *(v9[6] + 3696) = v9 + 4902,
          *(v9[6] + 3704) = v9 + 4906,
          *(v9[6] + 3712) = v9 + 4910,
          *(v9[6] + 3720) = v9 + 4914,
          *(v9[6] + 3728) = v9 + 4918,
          *(v9[6] + 3736) = v9 + 4922,
          *(v9[6] + 3744) = v9 + 5122,
          *(v9[6] + 3752) = v9 + 5126,
          *(v9[6] + 3760) = v9 + 5178,
          *(v9[6] + 3768) = v9 + 5182,
          *(v9[6] + 3776) = v9 + 5250,
          *(v9[6] + 3784) = v9 + 5274,
          *(v9[6] + 3792) = v9 + 5298,
          *(v9[6] + 3800) = v9 + 5302,
          *(v9[6] + 3808) = v9 + 5306,
          *(v9[6] + 3816) = v9 + 5310,
          *(v9[6] + 3824) = v9 + 5314,
          *(v9[6] + 3832) = v9 + 5318,
          *(v9[6] + 3840) = v9 + 5322,
          *(v9[6] + 3848) = v9 + 5326,
          *(v9[6] + 3856) = v9 + 5330,
          *(v9[6] + 3864) = v9 + 5334,
          *(v9[6] + 3872) = v9 + 5338,
          *(v9[6] + 3880) = v9 + 5342,
          *(v9[6] + 3888) = v9 + 5346,
          *(v9[6] + 3896) = v9 + 5350,
          *(v9[6] + 3904) = v9 + 5354,
          *(v9[6] + 3912) = v9 + 5426,
          *(v9[6] + 3920) = v9 + 5430,
          *(v9[6] + 3928) = v9 + 5546,
          *(v9[6] + 3936) = v9 + 5602,
          *(v9[6] + 3944) = v9 + 5606,
          *(v9[6] + 3952) = v9 + 5610,
          *(v9[6] + 3960) = v9 + 5614,
          *(v9[6] + 3968) = v9 + 5618,
          *(v9[6] + 3976) = v9 + 5622,
          *(v9[6] + 3984) = v9 + 5642,
          *(v9[6] + 3992) = v9 + 5646,
          *(v9[6] + 4000) = v9 + 5650,
          *(v9[6] + 4008) = v9 + 5654,
          *(v9[6] + 4016) = v9 + 5658,
          *(v9[6] + 4024) = v9 + 5662,
          *(v9[6] + 4032) = v9 + 5666,
          *(v9[6] + 4040) = v9 + 5670,
          *(v9[6] + 4048) = v9 + 5674,
          *(v9[6] + 4056) = v9 + 5678,
          *(v9[6] + 4064) = v9 + 5682,
          *(v9[6] + 4072) = v9 + 5686,
          *(v9[6] + 4080) = v9 + 5690,
          *(v9[6] + 4088) = v9 + 5694,
          *(v9[6] + 4096) = v9 + 5698,
          *(v9[6] + 4104) = v9 + 5702,
          *(v9[6] + 4112) = v9 + 5706,
          *(v9[6] + 4120) = v9 + 5710,
          *(v9[6] + 4128) = v9 + 5714,
          *(v9[6] + 4136) = v9 + 5718,
          *(v9[6] + 4144) = v9 + 5722,
          *(v9[6] + 4152) = v9 + 5726,
          *(v9[6] + 4160) = v9 + 5730,
          *(v9[6] + 4168) = v9 + 5734,
          *(v9[6] + 4176) = v9 + 5738,
          *(v9[6] + 4184) = v9 + 5742,
          *(v9[6] + 4192) = v9 + 5746,
          *(v9[6] + 4200) = v9 + 5750,
          *(v9[6] + 4208) = v9 + 5754,
          *(v9[6] + 4216) = v9 + 5758,
          *(v9[6] + 4224) = v9 + 5762,
          *(v9[6] + 4232) = v9 + 5766,
          *(v9[6] + 4240) = v9 + 5770,
          *(v9[6] + 4248) = v9 + 5774,
          *(v9[6] + 4256) = v9 + 5778,
          *(v9[6] + 4264) = v9 + 5782,
          *(v9[6] + 4272) = v9 + 5786,
          *(v9[6] + 4280) = v9 + 5790,
          *(v9[6] + 4288) = v9 + 5794,
          *(v9[6] + 4296) = v9 + 5798,
          *(v9[6] + 4304) = v9 + 5802,
          *(v9[6] + 4312) = v9 + 5806,
          *(v9[6] + 4320) = v9 + 5810,
          *(v9[6] + 4328) = v9 + 5814,
          *(v9[6] + 4336) = v9 + 5818,
          *(v9[6] + 4344) = v9 + 5822,
          *(v9[6] + 4352) = v9 + 5826,
          *(v9[6] + 4360) = v9 + 5830,
          *(v9[6] + 4368) = v9 + 5834,
          *(v9[6] + 4376) = v9 + 5838,
          *(v9[6] + 4384) = v9 + 5842,
          *(v9[6] + 4392) = v9 + 5846,
          *(v9[6] + 4400) = v9 + 5850,
          *(v9[6] + 4408) = v9 + 5854,
          *(v9[6] + 4416) = v9 + 5858,
          *(v9[6] + 4424) = v9 + 5862,
          *(v9[6] + 4432) = v9 + 5866,
          *(v9[6] + 4440) = v9 + 5870,
          *(v9[6] + 4448) = v9 + 5874,
          *(v9[6] + 4456) = v9 + 5878,
          *(v9[6] + 4464) = v9 + 5882,
          *(v9[6] + 4472) = v9 + 5886,
          *(v9[6] + 4480) = v9 + 5890,
          *(v9[6] + 4488) = v9 + 5894,
          *(v9[6] + 4496) = v9 + 5898,
          *(v9[6] + 4504) = v9 + 5902,
          *(v9[6] + 4512) = v9 + 5906,
          *(v9[6] + 4520) = v9 + 5910,
          *(v9[6] + 4528) = v9 + 5914,
          *(v9[6] + 4536) = v9 + 5918,
          *(v9[6] + 4544) = v9 + 5922,
          *(v9[6] + 4552) = v9 + 5926,
          *(v9[6] + 4560) = v9 + 5930,
          *(v9[6] + 4568) = v9 + 5934,
          *(v9[6] + 4576) = v9 + 5938,
          *(v9[6] + 4584) = v9 + 5942,
          *(v9[6] + 4592) = v9 + 5946,
          *(v9[6] + 4600) = v9 + 5950,
          *(v9[6] + 4608) = v9 + 5954,
          *(v9[6] + 4616) = v9 + 5958,
          *(v9[6] + 4624) = v9 + 5962,
          *(v9[6] + 4632) = v9 + 6186,
          *(v9[6] + 4640) = v9 + 6190,
          *(v9[6] + 4648) = v9 + 6274,
          *(v9[6] + 4656) = v9 + 6278,
          *(v9[6] + 4664) = v9 + 6282,
          *(v9[6] + 4672) = v9 + 6286,
          *(v9[6] + 4680) = v9 + 6290,
          *(v9[6] + 4688) = v9 + 6294,
          *(v9[6] + 4696) = v9 + 6298,
          *(v9[6] + 4704) = v9 + 6302,
          *(v9[6] + 4712) = v9 + 6306,
          *(v9[6] + 4720) = v9 + 6310,
          *(v9[6] + 4728) = v9 + 6314,
          *(v9[6] + 4736) = v9 + 6318,
          *(v9[6] + 4744) = v9 + 6322,
          *(v9[6] + 4752) = v9 + 6326,
          *(v9[6] + 4760) = v9 + 6330,
          *(v9[6] + 4768) = v9 + 6334,
          *(v9[6] + 4776) = v9 + 6338,
          *(v9[6] + 4784) = v9 + 6342,
          *(v9[6] + 4792) = v9 + 6346,
          *(v9[6] + 4800) = v9 + 6350,
          *(v9[6] + 4808) = v9 + 6354,
          *(v9[6] + 4816) = v9 + 6358,
          *(v9[6] + 4824) = v9 + 6362,
          *(v9[6] + 4832) = v9 + 6366,
          *(v9[6] + 4840) = v9 + 6370,
          *(v9[6] + 4848) = v9 + 6374,
          *(v9[6] + 4856) = v9 + 6378,
          *(v9[6] + 4864) = v9 + 6402,
          *(v9[6] + 4872) = v9 + 6406,
          *(v9[6] + 4880) = v9 + 634,
          *(v9[6] + 4888) = v9 + 722,
          *(v9[6] + 4896) = v9 + 726,
          *(v9[6] + 4904) = v9 + 730,
          *(v9[6] + 4912) = v9 + 734,
          *(v9[6] + 4920) = v9 + 738,
          *(v9[6] + 4928) = v9 + 742,
          *(v9[6] + 4936) = v9 + 746,
          *(v9[6] + 4944) = v9 + 750,
          *(v9[6] + 4952) = v9 + 754,
          *(v9[6] + 4960) = v9 + 758,
          *(v9[6] + 4968) = v9 + 762,
          *(v9[6] + 4976) = v9 + 766,
          *(v9[6] + 4984) = v9 + 930,
          *(v9[6] + 4992) = v9 + 934,
          *(v9[6] + 5000) = v9 + 938,
          *(v9[6] + 5008) = v9 + 942,
          *(v9[6] + 5016) = v9 + 946,
          *(v9[6] + 5024) = v9 + 950,
          *(v9[6] + 5032) = v9 + 954,
          *(v9[6] + 5040) = v9 + 958,
          *(v9[6] + 5048) = v9 + 962,
          *(v9[6] + 5056) = v9 + 966,
          *(v9[6] + 5064) = v9 + 970,
          *(v9[6] + 5072) = v9 + 974,
          *(v9[6] + 5080) = v9 + 978,
          *(v9[6] + 5088) = v9 + 982,
          *(v9[6] + 5096) = v9 + 986,
          *(v9[6] + 5104) = v9 + 990,
          *(v9[6] + 5112) = v9 + 994,
          *(v9[6] + 5120) = v9 + 998,
          *(v9[6] + 5128) = v9 + 1002,
          *(v9[6] + 5136) = v9 + 1006,
          *(v9[6] + 5144) = v9 + 1010,
          *(v9[6] + 5152) = v9 + 1014,
          *(v9[6] + 5160) = v9 + 1018,
          *(v9[6] + 5168) = v9 + 1022,
          *(v9[6] + 5176) = v9 + 1026,
          *(v9[6] + 5184) = v9 + 1030,
          *(v9[6] + 5192) = v9 + 1130,
          *(v9[6] + 5200) = v9 + 1186,
          *(v9[6] + 5208) = v9 + 1190,
          *(v9[6] + 5216) = v9 + 1210,
          *(v9[6] + 5224) = v9 + 1214,
          *(v9[6] + 5232) = v9 + 1218,
          *(v9[6] + 5240) = v9 + 2122,
          *(v9[6] + 5248) = v9 + 2126,
          *(v9[6] + 5256) = v9 + 2130,
          *(v9[6] + 5264) = v9 + 2134,
          *(v9[6] + 5272) = v9 + 2138,
          *(v9[6] + 5280) = v9 + 2142,
          *(v9[6] + 5288) = v9 + 2146,
          *(v9[6] + 5296) = v9 + 2150,
          *(v9[6] + 5304) = v9 + 2154,
          *(v9[6] + 5312) = v9 + 2158,
          *(v9[6] + 5320) = v9 + 2162,
          *(v9[6] + 5328) = v9 + 2166,
          *(v9[6] + 5336) = v9 + 2170,
          *(v9[6] + 5344) = v9 + 2174,
          *(v9[6] + 5352) = v9 + 2178,
          *(v9[6] + 5360) = v9 + 2182,
          *(v9[6] + 5368) = v9 + 2186,
          *(v9[6] + 5376) = v9 + 2190,
          *(v9[6] + 5384) = v9 + 2194,
          *(v9[6] + 5392) = v9 + 2198,
          *(v9[6] + 5400) = v9 + 2202,
          *(v9[6] + 5408) = v9 + 2206,
          *(v9[6] + 5416) = v9 + 2210,
          *(v9[6] + 5424) = v9 + 2214,
          *(v9[6] + 5432) = v9 + 2218,
          *(v9[6] + 5440) = v9 + 2222,
          *(v9[6] + 5448) = v9 + 2226,
          *(v9[6] + 5456) = v9 + 2230,
          *(v9[6] + 5464) = v9 + 2234,
          *(v9[6] + 5472) = v9 + 2238,
          *(v9[6] + 5480) = v9 + 2242,
          *(v9[6] + 5488) = v9 + 2246,
          *(v9[6] + 5496) = v9 + 2250,
          *(v9[6] + 5504) = v9 + 2254,
          *(v9[6] + 5512) = v9 + 2258,
          *(v9[6] + 5520) = v9 + 2262,
          *(v9[6] + 5528) = v9 + 2266,
          *(v9[6] + 5536) = v9 + 2270,
          *(v9[6] + 5544) = v9 + 2274,
          *(v9[6] + 5552) = v9 + 2278,
          *(v9[6] + 5560) = v9 + 2282,
          *(v9[6] + 5568) = v9 + 2286,
          *(v9[6] + 5576) = v9 + 2466,
          *(v9[6] + 5584) = v9 + 2470,
          *(v9[6] + 5592) = v9 + 2474,
          *(v9[6] + 5600) = v9 + 2478,
          *(v9[6] + 5608) = v9 + 2482,
          *(v9[6] + 5616) = v9 + 2538,
          *(v9[6] + 5624) = v9 + 2542,
          *(v9[6] + 5632) = v9 + 2546,
          *(v9[6] + 5640) = v9 + 2578,
          *(v9[6] + 5648) = v9 + 2582,
          *(v9[6] + 5656) = v9 + 2586,
          *(v9[6] + 5664) = v9 + 2590,
          *(v9[6] + 5672) = v9 + 2594,
          *(v9[6] + 5680) = v9 + 2598,
          *(v9[6] + 5688) = v9 + 2602,
          *(v9[6] + 5696) = v9 + 2606,
          *(v9[6] + 5704) = v9 + 2610,
          *(v9[6] + 5712) = v9 + 2614,
          *(v9[6] + 5720) = v9 + 2618,
          *(v9[6] + 5728) = v9 + 2622,
          *(v9[6] + 5736) = v9 + 2626,
          *(v9[6] + 5744) = v9 + 2630,
          *(v9[6] + 5752) = v9 + 2634,
          *(v9[6] + 5760) = v9 + 2638,
          *(v9[6] + 5768) = v9 + 2706,
          *(v9[6] + 5776) = v9 + 2730,
          *(v9[6] + 5784) = v9 + 2734,
          *(v9[6] + 5792) = v9 + 2738,
          *(v9[6] + 5800) = v9 + 2742,
          *(v9[6] + 5808) = v9 + 2746,
          *(v9[6] + 5816) = v9 + 2750,
          *(v9[6] + 5824) = v9 + 2754,
          *(v9[6] + 5832) = v9 + 2758,
          *(v9[6] + 5840) = v9 + 2762,
          *(v9[6] + 5848) = v9 + 2766,
          *(v9[6] + 5856) = v9 + 2770,
          *(v9[6] + 5864) = v9 + 2774,
          *(v9[6] + 5872) = v9 + 2778,
          *(v9[6] + 5880) = v9 + 2782,
          *(v9[6] + 5888) = v9 + 2786,
          *(v9[6] + 5896) = v9 + 2790,
          *(v9[6] + 5904) = v9 + 2794,
          *(v9[6] + 5912) = v9 + 2798,
          *(v9[6] + 5920) = v9 + 2802,
          *(v9[6] + 5928) = v9 + 2806,
          *(v9[6] + 5936) = v9 + 2810,
          *(v9[6] + 5944) = v9 + 2814,
          *(v9[6] + 5952) = v9 + 2818,
          *(v9[6] + 5960) = v9 + 2822,
          *(v9[6] + 5968) = v9 + 2826,
          *(v9[6] + 5976) = v9 + 2830,
          *(v9[6] + 5984) = v9 + 2834,
          *(v9[6] + 5992) = v9 + 2838,
          *(v9[6] + 6000) = v9 + 2842,
          *(v9[6] + 6008) = v9 + 2846,
          *(v9[6] + 6016) = v9 + 2850,
          *(v9[6] + 6024) = v9 + 2854,
          *(v9[6] + 6032) = v9 + 2858,
          *(v9[6] + 6040) = v9 + 2862,
          *(v9[6] + 6048) = v9 + 2866,
          *(v9[6] + 6056) = v9 + 2870,
          *(v9[6] + 6064) = v9 + 2874,
          *(v9[6] + 6072) = v9 + 2878,
          *(v9[6] + 6080) = v9 + 2882,
          *(v9[6] + 6088) = v9 + 2886,
          *(v9[6] + 6096) = v9 + 2890,
          *(v9[6] + 6104) = v9 + 2894,
          *(v9[6] + 6112) = v9 + 2898,
          *(v9[6] + 6120) = v9 + 2902,
          *(v9[6] + 6128) = v9 + 2906,
          *(v9[6] + 6136) = v9 + 2910,
          *(v9[6] + 6144) = v9 + 2914,
          *(v9[6] + 6152) = v9 + 2918,
          *(v9[6] + 6160) = v9 + 2922,
          *(v9[6] + 6168) = v9 + 2926,
          *(v9[6] + 6176) = v9 + 2930,
          *(v9[6] + 6184) = v9 + 2934,
          *(v9[6] + 6192) = v9 + 2938,
          *(v9[6] + 6200) = v9 + 2942,
          *(v9[6] + 6208) = v9 + 2946,
          *(v9[6] + 6216) = v9 + 2950,
          *(v9[6] + 6224) = v9 + 2954,
          *(v9[6] + 6232) = v9 + 2958,
          *(v9[6] + 6240) = v9 + 2962,
          *(v9[6] + 6248) = v9 + 2966,
          *(v9[6] + 6256) = v9 + 2970,
          *(v9[6] + 6264) = v9 + 2974,
          *(v9[6] + 6272) = v9 + 2978,
          *(v9[6] + 6280) = v9 + 2982,
          *(v9[6] + 6288) = v9 + 2986,
          *(v9[6] + 6296) = v9 + 2990,
          *(v9[6] + 6304) = v9 + 2994,
          *(v9[6] + 6312) = v9 + 2998,
          *(v9[6] + 6320) = v9 + 3002,
          *(v9[6] + 6328) = v9 + 3006,
          *(v9[6] + 6336) = v9 + 3010,
          *(v9[6] + 6344) = v9 + 3014,
          *(v9[6] + 6352) = v9 + 3018,
          *(v9[6] + 6360) = v9 + 3022,
          *(v9[6] + 6368) = v9 + 3026,
          *(v9[6] + 6376) = v9 + 3030,
          *(v9[6] + 6384) = v9 + 3034,
          *(v9[6] + 6392) = v9 + 3038,
          *(v9[6] + 6400) = v9 + 3042,
          *(v9[6] + 6408) = v9 + 3046,
          *(v9[6] + 6416) = v9 + 3050,
          *(v9[6] + 6424) = v9 + 3054,
          *(v9[6] + 6432) = v9 + 3058,
          *(v9[6] + 6440) = v9 + 3062,
          *(v9[6] + 6448) = v9 + 3066,
          *(v9[6] + 6456) = v9 + 3070,
          *(v9[6] + 6464) = v9 + 3074,
          *(v9[6] + 6472) = v9 + 3078,
          *(v9[6] + 6480) = v9 + 3082,
          *(v9[6] + 6488) = v9 + 3086,
          *(v9[6] + 6496) = v9 + 3090,
          *(v9[6] + 6504) = v9 + 3094,
          *(v9[6] + 6512) = v9 + 3098,
          *(v9[6] + 6520) = v9 + 3102,
          *(v9[6] + 6528) = v9 + 3106,
          *(v9[6] + 6536) = v9 + 3110,
          *(v9[6] + 6544) = v9 + 3114,
          *(v9[6] + 6552) = v9 + 3118,
          *(v9[6] + 6560) = v9 + 3122,
          *(v9[6] + 6568) = v9 + 3126,
          *(v9[6] + 6576) = v9 + 3130,
          *(v9[6] + 6584) = v9 + 3134,
          *(v9[6] + 6592) = v9 + 3138,
          *(v9[6] + 6600) = v9 + 3142,
          *(v9[6] + 6608) = v9 + 3146,
          *(v9[6] + 6616) = v9 + 3150,
          *(v9[6] + 6624) = v9 + 3154,
          *(v9[6] + 6632) = v9 + 3158,
          *(v9[6] + 6640) = v9 + 3162,
          *(v9[6] + 6648) = v9 + 3166,
          *(v9[6] + 6656) = v9 + 3170,
          *(v9[6] + 6664) = v9 + 3174,
          *(v9[6] + 6672) = v9 + 3178,
          *(v9[6] + 6680) = v9 + 3182,
          *(v9[6] + 6688) = v9 + 3186,
          *(v9[6] + 6696) = v9 + 3190,
          *(v9[6] + 6704) = v9 + 3194,
          *(v9[6] + 6712) = v9 + 3198,
          *(v9[6] + 6720) = v9 + 3202,
          *(v9[6] + 6728) = v9 + 3206,
          *(v9[6] + 6736) = v9 + 3210,
          *(v9[6] + 6744) = v9 + 3214,
          *(v9[6] + 6752) = v9 + 3218,
          *(v9[6] + 6760) = v9 + 3222,
          *(v9[6] + 6768) = v9 + 3226,
          *(v9[6] + 6776) = v9 + 3230,
          *(v9[6] + 6784) = v9 + 3234,
          *(v9[6] + 6792) = v9 + 3238,
          *(v9[6] + 6800) = v9 + 3242,
          *(v9[6] + 6808) = v9 + 3246,
          *(v9[6] + 6816) = v9 + 3250,
          *(v9[6] + 6824) = v9 + 3254,
          *(v9[6] + 6832) = v9 + 3258,
          *(v9[6] + 6840) = v9 + 3262,
          *(v9[6] + 6848) = v9 + 3266,
          *(v9[6] + 6856) = v9 + 3270,
          *(v9[6] + 6864) = v9 + 3274,
          *(v9[6] + 6872) = v9 + 3278,
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
          *(v9[6] + 7568) = v9 + 3954,
          *(v9[6] + 7576) = v9 + 3986,
          *(v9[6] + 7584) = v9 + 4010,
          *(v9[6] + 7592) = v9 + 4014,
          *(v9[6] + 7600) = v9 + 4018,
          *(v9[6] + 7608) = v9 + 4042,
          *(v9[6] + 7616) = v9 + 4046,
          *(v9[6] + 7624) = v9 + 4050,
          *(v9[6] + 7632) = v9 + 4054,
          *(v9[6] + 7640) = v9 + 4058,
          *(v9[6] + 7648) = v9 + 4082,
          *(v9[6] + 7656) = v9 + 4086,
          *(v9[6] + 7664) = v9 + 4090,
          *(v9[6] + 7672) = v9 + 4094,
          *(v9[6] + 7680) = v9 + 4098,
          *(v9[6] + 7688) = v9 + 4102,
          *(v9[6] + 7696) = v9 + 4106,
          *(v9[6] + 7704) = v9 + 4110,
          *(v9[6] + 7712) = v9 + 4114,
          *(v9[6] + 7720) = v9 + 4118,
          *(v9[6] + 7728) = v9 + 4218,
          *(v9[6] + 7736) = v9 + 4222,
          *(v9[6] + 7744) = v9 + 4242,
          *(v9[6] + 7752) = v9 + 4246,
          *(v9[6] + 7760) = v9 + 4250,
          *(v9[6] + 7768) = v9 + 4254,
          *(v9[6] + 7776) = v9 + 4258,
          *(v9[6] + 7784) = v9 + 4262,
          *(v9[6] + 7792) = v9 + 4426,
          *(v9[6] + 7800) = v9 + 4430,
          *(v9[6] + 7808) = v9 + 4434,
          *(v9[6] + 7816) = v9 + 4438,
          *(v9[6] + 7824) = v9 + 4442,
          *(v9[6] + 7832) = v9 + 4446,
          *(v9[6] + 7840) = v9 + 4450,
          *(v9[6] + 7848) = v9 + 4454,
          *(v9[6] + 7856) = v9 + 4458,
          *(v9[6] + 7864) = v9 + 4462,
          *(v9[6] + 7872) = v9 + 4466,
          *(v9[6] + 7880) = v9 + 4490,
          *(v9[6] + 7888) = v9 + 4494,
          *(v9[6] + 7896) = v9 + 4498,
          *(v9[6] + 7904) = v9 + 4502,
          *(v9[6] + 7912) = v9 + 4506,
          *(v9[6] + 7920) = v9 + 4510,
          *(v9[6] + 7928) = v9 + 4514,
          *(v9[6] + 7936) = v9 + 4518,
          *(v9[6] + 7944) = v9 + 4522,
          *(v9[6] + 7952) = v9 + 4526,
          *(v9[6] + 7960) = v9 + 4530,
          *(v9[6] + 7968) = v9 + 4534,
          *(v9[6] + 7976) = v9 + 4538,
          *(v9[6] + 7984) = v9 + 4542,
          *(v9[6] + 7992) = v9 + 4546,
          *(v9[6] + 8000) = v9 + 4550,
          *(v9[6] + 8008) = v9 + 4554,
          *(v9[6] + 8016) = v9 + 4558,
          *(v9[6] + 8024) = v9 + 4562,
          *(v9[6] + 8032) = v9 + 4566,
          *(v9[6] + 8040) = v9 + 4570,
          *(v9[6] + 8048) = v9 + 4574,
          *(v9[6] + 8056) = v9 + 4578,
          *(v9[6] + 8064) = v9 + 4582,
          *(v9[6] + 8072) = v9 + 4586,
          *(v9[6] + 8080) = v9 + 4590,
          *(v9[6] + 8088) = v9 + 4594,
          *(v9[6] + 8096) = v9 + 4598,
          *(v9[6] + 8104) = v9 + 4602,
          *(v9[6] + 8112) = v9 + 4606,
          *(v9[6] + 8120) = v9 + 4610,
          *(v9[6] + 8128) = v9 + 4614,
          *(v9[6] + 8136) = v9 + 4618,
          *(v9[6] + 8144) = v9 + 4622,
          *(v9[6] + 8152) = v9 + 4626,
          *(v9[6] + 8160) = v9 + 4630,
          *(v9[6] + 8168) = v9 + 4634,
          *(v9[6] + 8176) = v9 + 4638,
          *(v9[6] + 8184) = v9 + 4642,
          *(v9[6] + 0x2000) = v9 + 4646,
          *(v9[6] + 8200) = v9 + 4650,
          *(v9[6] + 8208) = v9 + 4654,
          *(v9[6] + 8216) = v9 + 4658,
          *(v9[6] + 8224) = v9 + 4662,
          *(v9[6] + 8232) = v9 + 4666,
          *(v9[6] + 8240) = v9 + 4670,
          *(v9[6] + 8248) = v9 + 4674,
          *(v9[6] + 8256) = v9 + 4678,
          *(v9[6] + 8264) = v9 + 4682,
          *(v9[6] + 8272) = v9 + 4686,
          *(v9[6] + 8280) = v9 + 4690,
          *(v9[6] + 8288) = v9 + 4694,
          *(v9[6] + 8296) = v9 + 4698,
          *(v9[6] + 8304) = v9 + 4702,
          *(v9[6] + 8312) = v9 + 4706,
          *(v9[6] + 8320) = v9 + 4710,
          *(v9[6] + 8328) = v9 + 4714,
          *(v9[6] + 8336) = v9 + 4718,
          *(v9[6] + 8344) = v9 + 4722,
          *(v9[6] + 8352) = v9 + 4726,
          *(v9[6] + 8360) = v9 + 4730,
          *(v9[6] + 8368) = v9 + 4734,
          *(v9[6] + 8376) = v9 + 4738,
          *(v9[6] + 8384) = v9 + 4742,
          *(v9[6] + 8392) = v9 + 4746,
          *(v9[6] + 8400) = v9 + 4750,
          *(v9[6] + 8408) = v9 + 4754,
          *(v9[6] + 8416) = v9 + 4758,
          *(v9[6] + 8424) = v9 + 4762,
          *(v9[6] + 8432) = v9 + 4766,
          *(v9[6] + 8440) = v9 + 4770,
          *(v9[6] + 8448) = v9 + 4774,
          *(v9[6] + 8456) = v9 + 4778,
          *(v9[6] + 8464) = v9 + 4782,
          *(v9[6] + 8472) = v9 + 4786,
          *(v9[6] + 8480) = v9 + 4790,
          *(v9[6] + 8488) = v9 + 4794,
          *(v9[6] + 8496) = v9 + 4798,
          *(v9[6] + 8504) = v9 + 4802,
          *(v9[6] + 8512) = v9 + 4806,
          *(v9[6] + 8520) = v9 + 4810,
          *(v9[6] + 8528) = v9 + 4814,
          *(v9[6] + 8536) = v9 + 4818,
          *(v9[6] + 8544) = v9 + 4822,
          *(v9[6] + 8552) = v9 + 4890,
          *(v9[6] + 8560) = v9 + 4894,
          *(v9[6] + 8568) = v9 + 4898,
          *(v9[6] + 8576) = v9 + 4902,
          *(v9[6] + 8584) = v9 + 4906,
          *(v9[6] + 8592) = v9 + 4910,
          *(v9[6] + 8600) = v9 + 4914,
          *(v9[6] + 8608) = v9 + 4918,
          *(v9[6] + 8616) = v9 + 4922,
          *(v9[6] + 8624) = v9 + 5122,
          *(v9[6] + 8632) = v9 + 5126,
          *(v9[6] + 8640) = v9 + 5178,
          *(v9[6] + 8648) = v9 + 5182,
          *(v9[6] + 8656) = v9 + 5250,
          *(v9[6] + 8664) = v9 + 5274,
          *(v9[6] + 8672) = v9 + 5298,
          *(v9[6] + 8680) = v9 + 5302,
          *(v9[6] + 8688) = v9 + 5306,
          *(v9[6] + 8696) = v9 + 5310,
          *(v9[6] + 8704) = v9 + 5314,
          *(v9[6] + 8712) = v9 + 5318,
          *(v9[6] + 8720) = v9 + 5322,
          *(v9[6] + 8728) = v9 + 5326,
          *(v9[6] + 8736) = v9 + 5330,
          *(v9[6] + 8744) = v9 + 5334,
          *(v9[6] + 8752) = v9 + 5338,
          *(v9[6] + 8760) = v9 + 5342,
          *(v9[6] + 8768) = v9 + 5346,
          *(v9[6] + 8776) = v9 + 5350,
          *(v9[6] + 8784) = v9 + 5354,
          *(v9[6] + 8792) = v9 + 5426,
          *(v9[6] + 8800) = v9 + 5430,
          *(v9[6] + 8808) = v9 + 5546,
          *(v9[6] + 8816) = v9 + 5602,
          *(v9[6] + 8824) = v9 + 5606,
          *(v9[6] + 8832) = v9 + 5610,
          *(v9[6] + 8840) = v9 + 5614,
          *(v9[6] + 8848) = v9 + 5618,
          *(v9[6] + 8856) = v9 + 5622,
          *(v9[6] + 8864) = v9 + 5642,
          *(v9[6] + 8872) = v9 + 5646,
          *(v9[6] + 8880) = v9 + 5650,
          *(v9[6] + 8888) = v9 + 5654,
          *(v9[6] + 8896) = v9 + 5658,
          *(v9[6] + 8904) = v9 + 5662,
          *(v9[6] + 8912) = v9 + 5666,
          *(v9[6] + 8920) = v9 + 5670,
          *(v9[6] + 8928) = v9 + 5674,
          *(v9[6] + 8936) = v9 + 5678,
          *(v9[6] + 8944) = v9 + 5682,
          *(v9[6] + 8952) = v9 + 5686,
          *(v9[6] + 8960) = v9 + 5690,
          *(v9[6] + 8968) = v9 + 5694,
          *(v9[6] + 8976) = v9 + 5698,
          *(v9[6] + 8984) = v9 + 5702,
          *(v9[6] + 8992) = v9 + 5706,
          *(v9[6] + 9000) = v9 + 5710,
          *(v9[6] + 9008) = v9 + 5714,
          *(v9[6] + 9016) = v9 + 5718,
          *(v9[6] + 9024) = v9 + 5722,
          *(v9[6] + 9032) = v9 + 5726,
          *(v9[6] + 9040) = v9 + 5730,
          *(v9[6] + 9048) = v9 + 5734,
          *(v9[6] + 9056) = v9 + 5738,
          *(v9[6] + 9064) = v9 + 5742,
          *(v9[6] + 9072) = v9 + 5746,
          *(v9[6] + 9080) = v9 + 5750,
          *(v9[6] + 9088) = v9 + 5754,
          *(v9[6] + 9096) = v9 + 5758,
          *(v9[6] + 9104) = v9 + 5762,
          *(v9[6] + 9112) = v9 + 5766,
          *(v9[6] + 9120) = v9 + 5770,
          *(v9[6] + 9128) = v9 + 5774,
          *(v9[6] + 9136) = v9 + 5778,
          *(v9[6] + 9144) = v9 + 5782,
          *(v9[6] + 9152) = v9 + 5786,
          *(v9[6] + 9160) = v9 + 5790,
          *(v9[6] + 9168) = v9 + 5794,
          *(v9[6] + 9176) = v9 + 5798,
          *(v9[6] + 9184) = v9 + 5802,
          *(v9[6] + 9192) = v9 + 5806,
          *(v9[6] + 9200) = v9 + 5810,
          *(v9[6] + 9208) = v9 + 5814,
          *(v9[6] + 9216) = v9 + 5818,
          *(v9[6] + 9224) = v9 + 5822,
          *(v9[6] + 9232) = v9 + 5826,
          *(v9[6] + 9240) = v9 + 5830,
          *(v9[6] + 9248) = v9 + 5834,
          *(v9[6] + 9256) = v9 + 5838,
          *(v9[6] + 9264) = v9 + 5842,
          *(v9[6] + 9272) = v9 + 5846,
          *(v9[6] + 9280) = v9 + 5850,
          *(v9[6] + 9288) = v9 + 5854,
          *(v9[6] + 9296) = v9 + 5858,
          *(v9[6] + 9304) = v9 + 5862,
          *(v9[6] + 9312) = v9 + 5866,
          *(v9[6] + 9320) = v9 + 5870,
          *(v9[6] + 9328) = v9 + 5874,
          *(v9[6] + 9336) = v9 + 5878,
          *(v9[6] + 9344) = v9 + 5882,
          *(v9[6] + 9352) = v9 + 5886,
          *(v9[6] + 9360) = v9 + 5890,
          *(v9[6] + 9368) = v9 + 5894,
          *(v9[6] + 9376) = v9 + 5898,
          *(v9[6] + 9384) = v9 + 5902,
          *(v9[6] + 9392) = v9 + 5906,
          *(v9[6] + 9400) = v9 + 5910,
          *(v9[6] + 9408) = v9 + 5914,
          *(v9[6] + 9416) = v9 + 5918,
          *(v9[6] + 9424) = v9 + 5922,
          *(v9[6] + 9432) = v9 + 5926,
          *(v9[6] + 9440) = v9 + 5930,
          *(v9[6] + 9448) = v9 + 5934,
          *(v9[6] + 9456) = v9 + 5938,
          *(v9[6] + 9464) = v9 + 5942,
          *(v9[6] + 9472) = v9 + 5946,
          *(v9[6] + 9480) = v9 + 5950,
          *(v9[6] + 9488) = v9 + 5954,
          *(v9[6] + 9496) = v9 + 5958,
          *(v9[6] + 9504) = v9 + 5962,
          *(v9[6] + 9512) = v9 + 6186,
          *(v9[6] + 9520) = v9 + 6190,
          *(v9[6] + 9528) = v9 + 6274,
          *(v9[6] + 9536) = v9 + 6278,
          *(v9[6] + 9544) = v9 + 6282,
          *(v9[6] + 9552) = v9 + 6286,
          *(v9[6] + 9560) = v9 + 6290,
          *(v9[6] + 9568) = v9 + 6294,
          *(v9[6] + 9576) = v9 + 6298,
          *(v9[6] + 9584) = v9 + 6302,
          *(v9[6] + 9592) = v9 + 6306,
          *(v9[6] + 9600) = v9 + 6310,
          *(v9[6] + 9608) = v9 + 6314,
          *(v9[6] + 9616) = v9 + 6318,
          *(v9[6] + 9624) = v9 + 6322,
          *(v9[6] + 9632) = v9 + 6326,
          *(v9[6] + 9640) = v9 + 6330,
          *(v9[6] + 9648) = v9 + 6334,
          *(v9[6] + 9656) = v9 + 6338,
          *(v9[6] + 9664) = v9 + 6342,
          *(v9[6] + 9672) = v9 + 6346,
          *(v9[6] + 9680) = v9 + 6350,
          *(v9[6] + 9688) = v9 + 6354,
          *(v9[6] + 9696) = v9 + 6358,
          *(v9[6] + 9704) = v9 + 6362,
          *(v9[6] + 9712) = v9 + 6366,
          *(v9[6] + 9720) = v9 + 6370,
          *(v9[6] + 9728) = v9 + 6374,
          *(v9[6] + 9736) = v9 + 6378,
          *(v9[6] + 9744) = v9 + 6402,
          *(v9[6] + 9752) = v9 + 6406,
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
      *(v9[7] + 168) = v9 + 493;
      *(v9[7] + 176) = v9 + 529;
      *(v9[7] + 184) = v9 + 534;
      *(v9[7] + 192) = v9 + 536;
      *(v9[7] + 200) = v9 + 538;
      *(v9[7] + 208) = v9 + 540;
      *(v9[7] + 216) = v9 + 542;
      *(v9[7] + 224) = v9 + 544;
      *(v9[7] + 232) = v9 + 546;
      *(v9[7] + 240) = v9 + 548;
      *(v9[7] + 248) = v9 + 550;
      *(v9[7] + 256) = v9 + 552;
      *(v9[7] + 264) = v9 + 560;
      *(v9[7] + 272) = v9 + 606;
      *(v9[7] + 280) = v9 + 608;
      *(v9[7] + 288) = v9 + 644;
      *(v9[7] + 296) = v9 + 646;
      *(v9[7] + 304) = v9 + 658;
      *(v9[7] + 312) = v9 + 671;
      *(v9[7] + 320) = v9 + 673;
      *(v9[7] + 328) = v9 + 675;
      *(v9[7] + 336) = v9 + 695;
      *(v9[7] + 344) = v9 + 697;
      *(v9[7] + 352) = v9 + 699;
      *(v9[7] + 360) = v9 + 704;
      *(v9[7] + 368) = v9 + 747;
      *(v9[7] + 376) = v9 + 749;
      *(v9[7] + 384) = v9 + 751;
      *(v9[7] + 392) = v9 + 753;
      *(v9[7] + 400) = v9 + 755;
      *(v9[7] + 408) = v9 + 757;
      *(v9[7] + 416) = v9 + 759;
      *(v9[7] + 424) = v9 + 761;
      *(v9[7] + 432) = v9 + 763;
      *(v9[7] + 440) = v9 + 765;
      *(v9[7] + 448) = v9 + 767;
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
      *(v9[7] + 624) = v9 + 493;
      *(v9[7] + 632) = v9 + 529;
      *(v9[7] + 640) = v9 + 534;
      *(v9[7] + 648) = v9 + 536;
      *(v9[7] + 656) = v9 + 538;
      *(v9[7] + 664) = v9 + 540;
      *(v9[7] + 672) = v9 + 542;
      *(v9[7] + 680) = v9 + 544;
      *(v9[7] + 688) = v9 + 546;
      *(v9[7] + 696) = v9 + 548;
      *(v9[7] + 704) = v9 + 550;
      *(v9[7] + 712) = v9 + 552;
      *(v9[7] + 720) = v9 + 560;
      *(v9[7] + 728) = v9 + 606;
      *(v9[7] + 736) = v9 + 608;
      *(v9[7] + 744) = v9 + 644;
      *(v9[7] + 752) = v9 + 646;
      *(v9[7] + 760) = v9 + 658;
      *(v9[7] + 768) = v9 + 671;
      *(v9[7] + 776) = v9 + 673;
      *(v9[7] + 784) = v9 + 675;
      *(v9[7] + 792) = v9 + 695;
      *(v9[7] + 800) = v9 + 697;
      *(v9[7] + 808) = v9 + 699;
      *(v9[7] + 816) = v9 + 704;
      *(v9[7] + 824) = v9 + 747;
      *(v9[7] + 832) = v9 + 749;
      *(v9[7] + 840) = v9 + 751;
      *(v9[7] + 848) = v9 + 753;
      *(v9[7] + 856) = v9 + 755;
      *(v9[7] + 864) = v9 + 757;
      *(v9[7] + 872) = v9 + 759;
      *(v9[7] + 880) = v9 + 761;
      *(v9[7] + 888) = v9 + 763;
      *(v9[7] + 896) = v9 + 765;
      *(v9[7] + 904) = v9 + 767;
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
  qword_28064CCC0 = 0x400000004;
  *&result = 0xE0000000ELL;
  qword_28064CD20 = 0xE0000000ELL;
  return result;
}

void link_new(uint64_t a1)
{
  *(a1 + 232) = 49;
  v2 = malloc_type_malloc(9uLL, 0x100004077774924uLL);
  *(a1 + 240) = v2;
  if (v2 && (*(a1 + 248) = v2, v3 = malloc_type_malloc(9uLL, 0x100004077774924uLL), (*(a1 + 256) = v3) != 0) && (*(a1 + 264) = v3, v4 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL), (*(a1 + 272) = v4) != 0) && (*(a1 + 280) = v4, *(a1 + 288) = 9, *(a1 + 290) = 131073, *(a1 + 296) = vlfnames_glob, *(a1 + 304) = 12, *(a1 + 306) = 196, *(a1 + 312) = "frc.ddl", *(a1 + 320) = 12, v5 = malloc_type_malloc(0x4240uLL, 0x101004026C630D6uLL), (*(a1 + 64) = v5) != 0) && (memcpy(v5, &vsetdtbl_glob, 0x4240uLL), v6 = malloc_type_malloc(0x340uLL, 0x1010040E30AAE52uLL), (*(a1 + 72) = v6) != 0))
  {

    memcpy(v6, &vactdtbl_glob, 0x340uLL);
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

double vfp0055(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 16) = *a2;
  return result;
}

double vfp0057(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 32) = *a2;
  return result;
}

void act_dict_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x10040436913F5uLL);
  *(a1 + 176) = v2;
  if (v2)
  {
    *v2 = &fren_gramm_cat_dict_actentries;
    *(*(a1 + 176) + 8) = &unk_28064F9CF;
    *(*(a1 + 176) + 16) = &unk_28064FC95;
    *(*(a1 + 176) + 24) = &_MergedGlobals_1;
    *(*(a1 + 176) + 32) = &unk_2806500AC;
    *(*(a1 + 176) + 40) = &fren_words_actentries;
    *(*(a1 + 176) + 48) = &unk_280650CDE;
    *(*(a1 + 176) + 56) = &unk_28064FB3B;
    *(*(a1 + 176) + 64) = &unk_28064F95B;
    *(*(a1 + 176) + 72) = &unk_28064F933;
    *(*(a1 + 176) + 80) = &unk_28064FA64;
    *(*(a1 + 176) + 88) = &_MergedGlobals_41;
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
  v2 = malloc_type_malloc(0x620uLL, 0x10040436913F5uLL);
  *(a1 + 80) = v2;
  v3 = a1 + 80;
  if (v2)
  {
    *v2 = &unk_280660788;
    *(*v3 + 8) = &unk_28065F09A;
    *(*v3 + 16) = &unk_28065F3C8;
    *(*v3 + 24) = &unk_280660D5B;
    *(*v3 + 32) = &unk_28066181F;
    *(*v3 + 40) = &unk_280664127;
    *(*v3 + 48) = &unk_28065F475;
    *(*v3 + 56) = &unk_28065F32B;
    *(*v3 + 64) = &unk_28065F76E;
    *(*v3 + 72) = &unk_28066061E;
    *(*v3 + 80) = &unk_28065FAAF;
    *(*v3 + 88) = &unk_280661F52;
    *(*v3 + 96) = &unk_2806611B8;
    *(*v3 + 104) = &unk_28065F911;
    *(*v3 + 112) = &unk_28065F563;
    *(*v3 + 120) = &unk_28065EF43;
    *(*v3 + 128) = &unk_2806622D6;
    *(*v3 + 136) = &unk_28065F3A0;
    *(*v3 + 144) = &unk_28065F11D;
    *(*v3 + 152) = &unk_28065EFFB;
    *(*v3 + 160) = &unk_280660BA1;
    *(*v3 + 168) = &unk_2806614B2;
    *(*v3 + 176) = &unk_28065FDDD;
    *(*v3 + 184) = &unk_28065F449;
    *(*v3 + 192) = &unk_280660696;
    *(*v3 + 200) = &unk_28065F06A;
    *(*v3 + 208) = &unk_2806603D8;
    *(*v3 + 216) = &unk_28065F595;
    *(*v3 + 224) = &unk_28066044A;
    *(*v3 + 232) = &unk_28065F011;
    *(*v3 + 240) = &unk_280662C62;
    *(*v3 + 248) = &unk_28065F1AE;
    *(*v3 + 256) = &unk_28066021C;
    *(*v3 + 264) = &unk_280660CC6;
    *(*v3 + 272) = &unk_28066126B;
    *(*v3 + 280) = &unk_28065F952;
    *(*v3 + 288) = &_MergedGlobals_42;
    *(*v3 + 296) = &unk_28065F139;
    *(*v3 + 304) = &unk_280663140;
    *(*v3 + 312) = &unk_280661903;
    *(*v3 + 320) = &unk_28065F082;
    *(*v3 + 328) = &unk_28066014C;
    *(*v3 + 336) = &unk_2806671D1;
    *(*v3 + 344) = &unk_28065EEED;
    *(*v3 + 352) = &unk_28065F9D8;
    *(*v3 + 360) = &unk_28066070F;
    *(*v3 + 368) = &pronounced_final_s_setentries;
    *(*v3 + 376) = &unk_280663926;
    *(*v3 + 384) = &unk_280661AF3;
    *(*v3 + 392) = &unk_28065F1CD;
    *(*v3 + 400) = &unk_28065FE3A;
    *(*v3 + 408) = &unk_280663E28;
    *(*v3 + 416) = &unk_28065F0CC;
    *(*v3 + 424) = &unk_28065EF96;
    *(*v3 + 432) = &unk_28065F4D2;
    *(*v3 + 440) = &_MergedGlobals_9;
    *(*v3 + 448) = &unk_280662410;
    *(*v3 + 456) = &unk_280660FC0;
    *(*v3 + 464) = &unk_28065F5F9;
    *(*v3 + 472) = &unk_28065FC7E;
    *(*v3 + 480) = &unk_280661D0F;
    *(*v3 + 488) = &unk_28065F274;
    *(*v3 + 496) = &unk_2806619F7;
    *(*v3 + 504) = &unk_28065F7DE;
    *(*v3 + 512) = &unk_28065EF34;
    *(*v3 + 520) = &unk_28065F2BC;
    *(*v3 + 528) = &unk_28065F0E7;
    *(*v3 + 536) = &unk_28065FF5C;
    *(*v3 + 544) = &unk_28065EF84;
    *(*v3 + 552) = &unk_28065EFAA;
    *(*v3 + 560) = &unk_28065F3F3;
    *(*v3 + 568) = &unk_28065F661;
    *(*v3 + 576) = &unk_28065F172;
    *(*v3 + 584) = &unk_28065F027;
    *(*v3 + 592) = &unk_28065EEE3;
    *(*v3 + 600) = &unk_28065F532;
    *(*v3 + 608) = &unk_28065FFBE;
    *(*v3 + 616) = &unk_28065EEF8;
    *(*v3 + 624) = &unk_28065EFE6;
    *(*v3 + 632) = &unk_280660C33;
    *(*v3 + 640) = &unk_28065FA1E;
    *(*v3 + 648) = &unk_280661BFD;
    *(*v3 + 656) = &unk_280660802;
    *(*v3 + 664) = &unk_28065FCD3;
    *(*v3 + 672) = &unk_28066370D;
    *(*v3 + 680) = &unk_28066087D;
    *(*v3 + 688) = &unk_28065F994;
    *(*v3 + 696) = &unk_28065EF53;
    *(*v3 + 704) = &unk_28065F053;
    *(*v3 + 712) = &_MergedGlobals_3;
    *(*v3 + 720) = &unk_280664FE7;
    *(*v3 + 728) = &unk_280661585;
    *(*v3 + 736) = &unk_28066110A;
    *(*v3 + 744) = &_MergedGlobals_7;
    *(*v3 + 752) = &unk_280662AED;
    *(*v3 + 760) = &_MergedGlobals_1_0;
    *(*v3 + 768) = &unk_28065FD83;
    *(*v3 + 776) = &_MergedGlobals_10;
    *(*v3 + 784) = &pl_modal_verbs_setentries;
    *(*v3 + 792) = &unk_28066443D;
    *(*v3 + 800) = &unk_28065F7A6;
    *(*v3 + 808) = &unk_28065EFBE;
    *(*v3 + 816) = &unk_280660082;
    *(*v3 + 824) = &unk_28065F0B3;
    *(*v3 + 832) = &unk_28065FAFA;
    *(*v3 + 840) = &unk_28065EEB4;
    *(*v3 + 848) = &unk_280660532;
    *(*v3 + 856) = &unk_28065EEDA;
    *(*v3 + 864) = &unk_28065F6CB;
    *(*v3 + 872) = &unk_28065F03D;
    *(*v3 + 880) = &unk_28065F22E;
    *(*v3 + 888) = &unk_28065EF63;
    *(*v3 + 896) = &unk_28065EED2;
    *(*v3 + 904) = &unk_28065FA66;
    *(*v3 + 912) = &unk_28066028A;
    *(*v3 + 920) = &unk_280663509;
    *(*v3 + 928) = &unk_2806680D1;
    *(*v3 + 936) = &unk_280665886;
    *(*v3 + 944) = &unk_28065FBDE;
    *(*v3 + 952) = &unk_28065F298;
    *(*v3 + 960) = &unk_28066207B;
    *(*v3 + 968) = &unk_280660B15;
    *(*v3 + 976) = &unk_28065EEC4;
    *(*v3 + 984) = &unk_2806604BD;
    *(*v3 + 992) = &unk_28065FC2C;
    *(*v3 + 1000) = &unk_280660DF2;
    *(*v3 + 1008) = &unambiguous_verb_stems1_setentries;
    *(*v3 + 1016) = &unambiguous_verb_stems2_setentries;
    *(*v3 + 1024) = &unk_280660F24;
    *(*v3 + 1032) = &unk_28066173D;
    *(*v3 + 1040) = &_MergedGlobals_5;
    *(*v3 + 1048) = &_MergedGlobals_6;
    *(*v3 + 1056) = &unk_2806605A8;
    *(*v3 + 1064) = &fren_infinitives_setentries;
    *(*v3 + 1072) = &_MergedGlobals_2;
    *(*v3 + 1080) = &unk_28065FB46;
    *(*v3 + 1088) = &unk_280660A03;
    *(*v3 + 1096) = &unk_28065EFD2;
    *(*v3 + 1104) = &unk_28065F737;
    *(*v3 + 1112) = &unk_28065EEB9;
    *(*v3 + 1120) = &adj_stems_setentries;
    *(*v3 + 1128) = &unk_2806621A7;
    *(*v3 + 1136) = &unk_28065F2E1;
    *(*v3 + 1144) = &unk_28065F1EC;
    *(*v3 + 1152) = &unk_28066331F;
    *(*v3 + 1160) = &unk_280662F65;
    *(*v3 + 1168) = &_MergedGlobals_8;
    *(*v3 + 1176) = &unk_28066132A;
    *(*v3 + 1184) = &are_nouns_setentries;
    *(*v3 + 1192) = &unk_28065F701;
    *(*v3 + 1200) = &unk_2806664C2;
    *(*v3 + 1208) = &unk_2806626A2;
    *(*v3 + 1216) = &unk_28065EF0E;
    *(*v3 + 1224) = &unk_280660020;
    *(*v3 + 1232) = &unk_28066280E;
    *(*v3 + 1240) = &unk_28065F62D;
    *(*v3 + 1248) = &unk_28065EEBE;
    *(*v3 + 1256) = &unk_28065F306;
    *(*v3 + 1264) = &unk_28065FD2A;
    *(*v3 + 1272) = &unk_280661064;
    *(*v3 + 1280) = &unk_28065F696;
    *(*v3 + 1288) = &unk_280662556;
    *(*v3 + 1296) = &unk_28065F352;
    *(*v3 + 1304) = &unk_28065EF03;
    *(*v3 + 1312) = &unk_28065EF73;
    *(*v3 + 1320) = &unk_28065F8D1;
    *(*v3 + 1328) = &unk_28065F155;
    *(*v3 + 1336) = &unk_280660A8A;
    *(*v3 + 1344) = &unk_28065F893;
    *(*v3 + 1352) = &unk_28065F190;
    *(*v3 + 1360) = &unk_28065F20D;
    *(*v3 + 1368) = &unk_28065F41E;
    *(*v3 + 1376) = &unk_2806602F8;
    *(*v3 + 1384) = &unk_28065F379;
    *(*v3 + 1392) = &unk_28065F5C7;
    *(*v3 + 1400) = &unk_28065FEFB;
    *(*v3 + 1408) = &_MergedGlobals_4;
    *(*v3 + 1416) = &unk_280660368;
    *(*v3 + 1424) = &unk_28066165E;
    *(*v3 + 1432) = &unk_28065EF1A;
    *(*v3 + 1440) = &unk_2806613EC;
    *(*v3 + 1448) = &unk_28065F102;
    *(*v3 + 1456) = &unk_28065F502;
    *(*v3 + 1464) = &unk_2806600E7;
    *(*v3 + 1472) = &unk_28065F819;
    *(*v3 + 1480) = &unk_28065F856;
    *(*v3 + 1488) = &unk_28065FB92;
    *(*v3 + 1496) = &unk_28065F251;
    *(*v3 + 1504) = &unk_28065EECB;
    *(*v3 + 1512) = &unk_2806601B4;
    *(*v3 + 1520) = &unk_28066297D;
    *(*v3 + 1528) = &unk_28065F4A3;
    *(*v3 + 1536) = &unk_28066097E;
    *(*v3 + 1544) = &unk_2806608FD;
    *(*v3 + 1552) = &unk_280664BC8;
    *(*v3 + 1560) = &unk_28065EF26;
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
    OUTLINED_FUNCTION_1_48();
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
  OUTLINED_FUNCTION_1_48();
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
      if (OUTLINED_FUNCTION_0_50("Eloquence output", *(v0 + v6)) && vffind_lf(v0, "pgmout") != -1)
      {
        v7 = showDialogs();
        v8 = 224;
        if (!v7)
        {
          v8 = 216;
        }

        if (OUTLINED_FUNCTION_0_50("Eloquence program output", *(v0 + v8)))
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
  OUTLINED_FUNCTION_1_48();
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
  OUTLINED_FUNCTION_1_48();
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

uint64_t OUTLINED_FUNCTION_0_50@<X0>(char *a1@<X2>, uint64_t a2@<X8>)
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
  if ((atomic_load_explicit(&_MergedGlobals_44, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_44))
  {
    RequestLicense::RequestLicense(&qword_280669980);
    __cxa_guard_release(&_MergedGlobals_44);
  }

  *a2 = 0;
  if ((a1 - 1) > 1)
  {
    if (a1 == 3)
    {
      *a2 = &qword_280669980;
      (*(qword_280669980 + 8))(&qword_280669980);
    }
  }

  else if (RequestLicense::licenseGranted(&qword_280669980))
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
  OUTLINED_FUNCTION_2_46();
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
  OUTLINED_FUNCTION_2_46();
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
  OUTLINED_FUNCTION_2_46();
  if (v2)
  {
    v3 = -8;
LABEL_3:
    setEngsynError(v0, v3);
    goto LABEL_4;
  }

  if (!eciLinkDataFromECI(*(v1 + 232), &unk_26E1F942A))
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
  OUTLINED_FUNCTION_3_46();
  if (v3)
  {
    DictionarySet::~DictionarySet(a1);
  }

  MEMORY[0x27437BDA0](a1, v1);
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
    return OUTLINED_FUNCTION_0_51();
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
    return OUTLINED_FUNCTION_0_51();
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
    return OUTLINED_FUNCTION_0_51();
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
    return OUTLINED_FUNCTION_0_51();
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
    return OUTLINED_FUNCTION_0_51();
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
      v2 = unk_28203C0D0;
      *(v1 + 72) = eciLinkFileClass_glob;
      *(v1 + 88) = v2;
      v3 = *&off_28203C0F0;
      *(v1 + 104) = xmmword_28203C0E0;
      *(v1 + 120) = v3;
      v4 = *(a1 + 224);
      v5 = unk_28203C110;
      *(v4 + 136) = dialogFileClass_glob;
      *(v4 + 152) = v5;
      result = *&xmmword_28203C120;
      v7 = *&off_28203C130;
      *(v4 + 168) = xmmword_28203C120;
      *(v4 + 184) = v7;
    }
  }

  return result;
}

uint64_t eciLinkDelete(void ***a1)
{
  dynaBufDelete(*a1);
  dynaBufDelete(a1[1]);
  MEMORY[0x27437BDA0](a1, 0x20C40A4A59CD2);
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
  OUTLINED_FUNCTION_2_47();
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
  OUTLINED_FUNCTION_2_47();
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
    MEMORY[0x27437BDA0](this, 0x1081C40F6F63E5DLL);
  }

  return v2;
}

uint64_t EngineWrapper::start(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::end(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::processSentences(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v4);
}

uint64_t EngineWrapper::processRemaining(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v4);
}

uint64_t EngineWrapper::getLastError(EngineWrapper *this, int *a2, int *a3)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(LastError);
}

uint64_t EngineWrapper::restart(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::readPhonemes(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(Phonemes);
}

uint64_t EngineWrapper::readErrorMessage(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(ErrorMessage);
}

BOOL EngineWrapper::flush(EngineWrapper *this, int a2)
{
  *(this + 24) = 0;
  *(this + 25) = a2 != 0;
  return engsynFlush(*(this + 2), a2);
}

uint64_t EngineWrapper::clearInput(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::setAbort(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v3);
}

uint64_t EngineWrapper::outputPlaying(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v4);
}

uint64_t EngineWrapper::pause(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v4);
}

uint64_t EngineWrapper::setSynthToNamedFile(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v5);
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
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(v7);
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
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(inserted);
}

uint64_t EngineWrapper::insertDelayedSynthesisIndex(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_50();
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

  return OUTLINED_FUNCTION_0_52(inserted);
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

uint64_t OUTLINED_FUNCTION_0_52(uint64_t result)
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

_BYTE *OUTLINED_FUNCTION_0_53(_BYTE *result, int a2)
{
  *result = BYTE2(a2);
  result[1] = BYTE1(a2);
  result[2] = a2;
  return result;
}

_BYTE *OUTLINED_FUNCTION_1_51(_BYTE *result, char a2, char a3)
{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

_BYTE *OUTLINED_FUNCTION_2_48(_BYTE *result, char a2, char a3, char a4)
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
    qword_280669998 = a1;
    DeltaProc_registerLanguages(v9);
    delta_delete(v9);
    return (_MergedGlobals_45 & 1) == 0;
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

void sub_26E1D1250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerPhoneme(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v33 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_45 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_52();
    v32 = 0;
    v22[4] = 0u;
    v22[5] = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    *v22 = 0u;
    v22[1] = 0u;
    if (sprintf(v31, "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d", *(v23 + 2), *(v24 + 2), *(v25 + 2), *(v26 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2), *(a15 + 2), *(a16 + 2), *(a17 + 2), *(a18 + 2), *(a19 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    else
    {
      LanguageID::LanguageID(v30, *(v21 + 2), *(v20 + 2));
      IniFileWriter::IniFileWriter(v28, qword_280669998);
      if (sprintf(v29, "Phoneme%d", *(v19 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v30);
        IniFileWriter::writeString(v28, LanguageDialectString, v29, v31);
      }

      OUTLINED_FUNCTION_0_54();
      IniFileWriter::~IniFileWriter(v28);
    }
  }
}

void sub_26E1D1458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
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
    v17 = dword_26E1F7C6C[(v23[0] - 6)];
  }

  sprintf(byte_2806699A0, "%#x", v17);
  if (globalJustGetLanguage || (_MergedGlobals_45 & 1) != 0)
  {
    return 0;
  }

  IniFileWriter::IniFileWriter(v21, qword_280669998);
  if (sprintf(v22, "%d.%d", *(v12 + 2), *(v10 + 2)) != -1)
  {
    LanguageDialectString = LanguageID::getLanguageDialectString(v23);
    FullPathName = getFullPathName();
    IniFileWriter::writeString(v21, LanguageDialectString, "Path", FullPathName);
  }

  _MergedGlobals_45 = 1;
  IniFileWriter::~IniFileWriter(v21);
  return 0xFFFFFFFFLL;
}

void sub_26E1D1650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerVoice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v26 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_45 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_52();
    v25 = 0;
    v17[4] = 0u;
    v17[5] = 0u;
    v17[2] = 0u;
    v17[3] = 0u;
    *v17 = 0u;
    v17[1] = 0u;
    if (sprintf(v24, "%d %d %d %d %d %d %d %d", *(v18 + 2), *(v19 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    else
    {
      LanguageID::LanguageID(v23, *(v16 + 2), *(v15 + 2));
      IniFileWriter::IniFileWriter(v21, qword_280669998);
      if (sprintf(v22, "Voice%d", *(v14 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v23);
        IniFileWriter::writeString(v21, LanguageDialectString, v22, v24);
      }

      OUTLINED_FUNCTION_0_54();
      IniFileWriter::~IniFileWriter(v21);
    }
  }
}

void sub_26E1D180C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
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
            v38 = OUTLINED_FUNCTION_0_55();
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
            v34 = OUTLINED_FUNCTION_0_55();
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
      v9 = &unk_26E1F7C82;
      break;
    case 0xFFFF:
      v8 = 1;
      v9 = &unk_26E1F7C80;
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
        v15 = OUTLINED_FUNCTION_0_56();
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

      v19 = OUTLINED_FUNCTION_0_56();
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

  v8 = OUTLINED_FUNCTION_0_56();
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
  memcpy(__dst, &unk_287EDF308, 0x58uLL);
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
    OUTLINED_FUNCTION_0_57();
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

    OUTLINED_FUNCTION_0_57();
    if (*(v8 + 80))
    {
      IndexQueue::reduceLeadTime((v8 + 72), v7);
      OUTLINED_FUNCTION_0_57();
      v7 = v9;
    }

    if (*v8)
    {
      (*v8)(v7, *(a2 + 8) + 8 * i, *(v8 + 8));
    }

    OUTLINED_FUNCTION_0_57();
    if (IndexQueue::indexDue((v10 + 72)))
    {
      OUTLINED_FUNCTION_0_57();
      IndexQueue::remove((v11 + 72));
    }
  }

  return 1;
}

void finishSynthesis(uint64_t a1)
{
  KlattClose(*(*(a1 + 208) + 64));
  OUTLINED_FUNCTION_1_53();
  *(v1 + 109) = 0;
  clock();
  OUTLINED_FUNCTION_1_53();
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
      OUTLINED_FUNCTION_1_53();
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
  OUTLINED_FUNCTION_1_53();
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
        MEMORY[0x27437BDA0](*(v3 + 32), 0);
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
  *(this + 9) = &unk_287EDF4C8;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
}

void IndexQueue::~IndexQueue(IndexQueue *this)
{
  EListQueue::~EListQueue(this);

  JUMPOUT(0x27437BDA0);
}

void EListQueue::~EListQueue(EListQueue *this)
{
  EListQueue::~EListQueue(this);

  JUMPOUT(0x27437BDA0);
}

{
  *this = &unk_287EDF588;
  EList::reset(this);

  ESList::~ESList(this);
}

void ESList::~ESList(ESList *this)
{
  *this = &unk_287EDF5F8;
  EList::reset(this);
}

{
  ESList::~ESList(this);

  JUMPOUT(0x27437BDA0);
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

void sub_26E1D3F70(_Unwind_Exception *a1)
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

  MEMORY[0x27437BD90](v2, v1);
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

      result = MEMORY[0x27437BDA0](v3, 0x1020C4034E03FFCLL);
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
    MEMORY[0x27437BD90](v3, 0x1000C8077774924);
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
    MEMORY[0x27437BD90](v2, 0x1000C8077774924);
    *(this + 2) = 0;
  }

  TimeValueQueue::~TimeValueQueue(this);
}