uint64_t ne_vow_elision(void *a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v50);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, SHIDWORD(v98), v100, SWORD2(v100), SHIWORD(v100), v102, SWORD2(v102), SBYTE6(v102), SHIBYTE(v102), v104, v105) || (fence_36(a1, 0, &null_str_13), v19 = OUTLINED_FUNCTION_11_34(), fence_36(v19, v20, v21), v22 = OUTLINED_FUNCTION_31_20(), starttest(v22, v23), v24 = OUTLINED_FUNCTION_2_37(), lpta_loadp_setscan_l(v24, v25, v26)))
  {
LABEL_4:
    vretproc(a1);
    return 94;
  }

  else
  {
    v28 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v28, v29, v30, 4) || advance_tok(a1, v31, v32, v33) || (v34 = OUTLINED_FUNCTION_27_23(), lpta_loadp_setscan_l(v34, v35, v36)) || (v37 = OUTLINED_FUNCTION_4_36(), testFldeq(v37, v38, v39, 1)))
    {
      v40 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_29_22();
      bspush_ca_scan_boa();
      v48 = OUTLINED_FUNCTION_26_25();
      v40 = !OUTLINED_FUNCTION_60_12(v48, v49);
    }

    v41 = v40;
    while (1)
    {
      v42 = a1[13];
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_28_22(v42);
        v41 = v44;
      }

      else
      {
        v43 = vback(a1, v41);
        v41 = 0;
      }

      if (v43 != 2)
      {
        break;
      }

      bspop_boa(a1);
      if (!advance_tok(a1, v45, v46, v47))
      {
        goto LABEL_18;
      }
    }

    if (v43 != 3)
    {
      goto LABEL_4;
    }

LABEL_18:
    vretproc(a1);
    return 0;
  }
}

void break_into_phones(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_14();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v63 = *MEMORY[0x277D85DE8];
  memset(v58, 0, sizeof(v58));
  v56 = 0;
  v57 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v55, v8);
  OUTLINED_FUNCTION_23_25();
  bzero(v62, v9);
  if (!setjmp(v62) && !ventproc(v7, v55, v61, v60, v59, v62))
  {
    v10 = OUTLINED_FUNCTION_52_13();
    get_parm(v10, v11, v5, -6);
    v12 = OUTLINED_FUNCTION_47_14();
    get_parm(v12, v13, v3, -6);
    v14 = OUTLINED_FUNCTION_45_14();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_37_16();
    v18 = push_ptr_init(v16, v17);
    OUTLINED_FUNCTION_46_14(v18, v19, &null_str_13);
    startloop(v7, 1);
    v20 = OUTLINED_FUNCTION_52_13();
    lpta_loadpn(v20, v21);
    OUTLINED_FUNCTION_33_19();
    lpta_mover();
    v22 = OUTLINED_FUNCTION_50_14();
    lpta_storep(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_47_14();
    lpta_loadpn(v25, v26);
    OUTLINED_FUNCTION_33_19();
    lpta_mover();
    v27 = OUTLINED_FUNCTION_45_14();
    lpta_storep(v27, v28, v29);
LABEL_5:
    while (1)
    {
      v30 = OUTLINED_FUNCTION_50_14();
      if (forall_to_test(v30, v31, v58))
      {
        break;
      }

LABEL_6:
      v32 = OUTLINED_FUNCTION_41_14();
      bspush_ca(v32);
      v33 = OUTLINED_FUNCTION_50_14();
      if (lpta_loadp_setscan_r(v33, v34, 2) || advance_tok(v7, v35, v36, v37))
      {
        break;
      }

LABEL_15:
      savescptr(v7, 4, (v7 + 199));
LABEL_16:
      v41 = OUTLINED_FUNCTION_50_14();
      if (lpta_loadp_setscan_r(v41, v42, 2) || (OUTLINED_FUNCTION_33_19(), test_string_s()) || (OUTLINED_FUNCTION_43_14(), v43 = OUTLINED_FUNCTION_33_19(), insert_2pt_s(v43, v44, 2, &unk_28064B7C8, 0)) || (OUTLINED_FUNCTION_43_14(), OUTLINED_FUNCTION_33_19(), mark_s()))
      {
LABEL_20:
        v45 = OUTLINED_FUNCTION_50_14();
        if (lpta_loadp_setscan_r(v45, v46, 2) || (OUTLINED_FUNCTION_33_19(), test_string_s()) || (OUTLINED_FUNCTION_43_14(), v47 = OUTLINED_FUNCTION_33_19(), insert_2pt_s(v47, v48, 2, &unk_28064B7CA, 0)) || (OUTLINED_FUNCTION_43_14(), OUTLINED_FUNCTION_33_19(), mark_s()))
        {
LABEL_24:
          OUTLINED_FUNCTION_35_16();
          if (v49)
          {
            break_into_canfren_phones(v7);
          }
        }
      }

LABEL_27:
      insert_nasal_glide(v7, (v7 + 199));
LABEL_28:
      lpta_loadpn(v7, (v7 + 199));
      v50 = OUTLINED_FUNCTION_47_14();
      rpta_loadpn(v50, v51);
      if (!compare_ptas(v7) && !testeq(v7))
      {
        goto LABEL_3;
      }

LABEL_30:
      lpta_loadpn(v7, (v7 + 199));
      OUTLINED_FUNCTION_33_19();
      lpta_mover();
      v52 = OUTLINED_FUNCTION_37_16();
      lpta_storep(v52, v53, v54);
      forall_cont_from();
    }

    while (2)
    {
      v38 = v7[13];
      if (v38)
      {
        v39 = OUTLINED_FUNCTION_28_22(v38);
      }

      else
      {
        v39 = vback(v7, 0);
      }

      if ((v39 - 1) <= 0xB)
      {
        OUTLINED_FUNCTION_59_12();
        switch(v40)
        {
          case 1:
            goto LABEL_16;
          case 2:
            if (forto_adv_upto_r(v7, 1, 2, 12, 2, (v7 + 197)))
            {
              continue;
            }

            break;
          case 3:
            goto LABEL_15;
          case 4:
            goto LABEL_20;
          case 5:
          case 7:
            goto LABEL_27;
          case 6:
            goto LABEL_24;
          case 8:
            goto LABEL_28;
          case 9:
            goto LABEL_30;
          case 10:
            goto LABEL_5;
          case 11:
            goto LABEL_6;
          default:
            goto LABEL_3;
        }
      }

      break;
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_57_12();
  OUTLINED_FUNCTION_48_14();
}

void insert_nasal_glide(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_14();
  v3 = v2;
  v5 = v4;
  v71 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v55, v6);
  OUTLINED_FUNCTION_23_25();
  bzero(v70, v7);
  v8 = setjmp(v70);
  if (!v8 && !OUTLINED_FUNCTION_49_14(v8, v9, v10, v11, v12, v13, v14, v15, v54, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v55[16], v55[17], v55[18], v55[19], v55[20], v55[21], v55[22], v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70[0]))
  {
    get_parm(v5, &v58, v3, -6);
    v16 = OUTLINED_FUNCTION_54_13();
    v18 = push_ptr_init(v16, v17);
    OUTLINED_FUNCTION_46_14(v18, v19, &null_str_13);
    v20 = OUTLINED_FUNCTION_9_34();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_27_23();
    if (!lpta_loadp_setscan_l(v22, v23, v24))
    {
      v25 = 0;
      while (2)
      {
        v26 = OUTLINED_FUNCTION_40_15();
        savescptr(v26, v27, &v56);
        v28 = OUTLINED_FUNCTION_21_26();
        if (!OUTLINED_FUNCTION_60_12(v28, v29) && !advance_tok(v5, v30, v31, v32))
        {
          v33 = OUTLINED_FUNCTION_37_16();
          if (!lpta_loadp_setscan_r(v33, v34, 2))
          {
            bspush_ca_scan_boa();
            v35 = OUTLINED_FUNCTION_52_13();
            bspush_ca_scan(v35, v36);
            OUTLINED_FUNCTION_21_26();
            OUTLINED_FUNCTION_34_17();
LABEL_10:
            v41 = testFldeq(v37, v38, v39, v40);
            v45 = v25;
            if (!v41)
            {
LABEL_18:
              v25 = v45;
              if (!advance_tok(v5, v42, v43, v44))
              {
                v25 = 1;
              }
            }
          }
        }

        v46 = *(v5 + 104);
        if (v46)
        {
          v47 = OUTLINED_FUNCTION_28_22(v46);
          v25 = v42;
        }

        else
        {
          v47 = vback(v5, v25);
          v25 = 0;
        }

        v45 = v25;
        switch(v47)
        {
          case 2:
            continue;
          case 3:
            bspop_boa(v5);
            *(v5 + 168) = 1;
            *(v5 + 144) = v59;
            *(v5 + 128) = 0;
            v52 = OUTLINED_FUNCTION_22_25();
            insert_l(v52, v53);
            break;
          case 4:
            v48 = OUTLINED_FUNCTION_41_14();
            bspush_ca_scan(v48, v49);
            v37 = OUTLINED_FUNCTION_21_26();
            v39 = 4;
            v40 = 4;
            goto LABEL_10;
          case 5:
            goto LABEL_18;
          case 6:
            v50 = OUTLINED_FUNCTION_51_13();
            bspush_ca_scan(v50, v51);
            v37 = OUTLINED_FUNCTION_19_27();
            v40 = 24;
            goto LABEL_10;
          case 7:
            v37 = OUTLINED_FUNCTION_19_27();
            v40 = 23;
            goto LABEL_10;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_48_14();
}

uint64_t OUTLINED_FUNCTION_1_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_8_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_12_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_14_33(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_30_21(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = v3;
  *(v4 + 128) = 0;

  return test_ptr(v4, a2, a3);
}

double OUTLINED_FUNCTION_39_15@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_43_14()
{

  return lpta_rpta_loadp(v0, v0 + 1576, v0 + 1592);
}

void *OUTLINED_FUNCTION_46_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_36(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_49_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, __int16 a40, __int16 a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{

  return ventproc(v47, &a10, &a45, &a41, &a38, &a47);
}

uint64_t OUTLINED_FUNCTION_55_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, __int16 a38, __int16 a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{

  return ventproc(v45, a2, &a43, &a39, &a36, &a45);
}

uint64_t OUTLINED_FUNCTION_56_12()
{

  return rpta_loadpn(v0, v0 + 3536);
}

BOOL OUTLINED_FUNCTION_57_12()
{

  return vretproc(v0);
}

BOOL OUTLINED_FUNCTION_60_12(uint64_t a1, uint64_t a2)
{

  return testFldeq(a1, a2, 11, 1);
}

void OUTLINED_FUNCTION_61_12(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  bzero(va, a2);
}

void *fence_37(uint64_t a1, int a2, uint64_t a3)
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

void generate_diaphones(uint64_t a1)
{
  OUTLINED_FUNCTION_132_4();
  v2 = v1;
  OUTLINED_FUNCTION_158_3();
  v249 = 0;
  v250 = 0;
  OUTLINED_FUNCTION_90_9();
  bzero(v248, v3);
  OUTLINED_FUNCTION_89_9();
  bzero(v264, v4);
  v5 = setjmp(v264);
  if (!v5 && !OUTLINED_FUNCTION_150_4(v5, v248, v6, v7, v8, v9, v10, v11, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248[0], v248[1], v248[2], v248[3], v248[4], v248[5], v248[6], v248[7], v248[8], v248[9], v248[10], v248[11], v248[12], v248[13], v248[14], v248[15], v248[16], v248[17], v248[18], v248[19], v248[20], v248[21], v248[22], v249, v250, v251[0], v251[1], v252[0], v252[1], v253[0], v253[1], v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264[0]))
  {
    v12 = OUTLINED_FUNCTION_97_7();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_74_12();
    push_ptr_init(v14, v15);
    v16 = OUTLINED_FUNCTION_80_11();
    push_ptr_init(v16, v17);
    push_ptr_init(v2, &v249);
    v18 = OUTLINED_FUNCTION_98_7();
    fence_37(v18, v19, v20);
    v21 = OUTLINED_FUNCTION_113_4();
    fence_37(v21, v22, v23);
    startloop(v2, 1);
    v24 = OUTLINED_FUNCTION_99_7();
    lpta_loadpn(v24, v25);
    OUTLINED_FUNCTION_113_4();
    lpta_mover();
    v26 = OUTLINED_FUNCTION_97_7();
    lpta_storep(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_105_5();
    lpta_loadpn(v29, v30);
    OUTLINED_FUNCTION_113_4();
    lpta_mover();
    v31 = OUTLINED_FUNCTION_80_11();
    lpta_storep(v31, v32, v33);
    v34 = 0;
    while (1)
    {
LABEL_5:
      v35 = OUTLINED_FUNCTION_97_7();
      v37 = forall_to_test(v35, v36, v251);
      v38 = v34;
      if (v37)
      {
        goto LABEL_37;
      }

LABEL_6:
      v34 = v38;
      bspush_ca(v2);
      v39 = OUTLINED_FUNCTION_97_7();
      if (lpta_loadp_setscan_r(v39, v40, 1))
      {
        goto LABEL_37;
      }

      v44 = advance_tok(v2, v41, v42, v43);
      v45 = v34;
      if (v44)
      {
        goto LABEL_37;
      }

LABEL_8:
      v34 = v45;
      savescptr(v2, 4, v252);
      while (2)
      {
        v46 = OUTLINED_FUNCTION_110_4();
        starttest(v46, v47);
        v48 = OUTLINED_FUNCTION_97_7();
        if (!lpta_loadp_setscan_r(v48, v49, 1))
        {
          bspush_ca_scan_boa();
          v74 = OUTLINED_FUNCTION_113_4();
          v76 = testFldeq(v74, v75, 4, 1);
LABEL_25:
          if (!v76)
          {
            LODWORD(v34) = 1;
          }

LABEL_37:
          v93 = v34;
LABEL_38:
          v94 = v2[13];
          if (v94)
          {
            v95 = OUTLINED_FUNCTION_92_9(v94);
            v34 = v96;
          }

          else
          {
            v95 = vback(v2, v93);
            v34 = 0;
          }

          v78 = v34;
          v82 = v34;
          v87 = v34;
          v73 = v34;
          switch(v95)
          {
            case 1:
              goto LABEL_137;
            case 2:
              continue;
            case 3:
              v97 = forto_adv_upto_r(v2, 1, 2, 87, 1, v253);
              v93 = v34;
              if (!v97)
              {
                goto LABEL_137;
              }

              goto LABEL_38;
            case 4:
              v45 = v34;
              goto LABEL_8;
            case 5:
              goto LABEL_10;
            case 6:
              bspop_boa(v2);
              v101 = advance_tok(v2, v98, v99, v100);
              v93 = v34;
              if (v101)
              {
                goto LABEL_38;
              }

              v117 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v117, v118, v119))
              {
                goto LABEL_64;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_64;
              }

              OUTLINED_FUNCTION_25_26();
              b_rules();
              goto LABEL_128;
            case 7:
LABEL_64:
              v121 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v121, v122, v123))
              {
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_25_26();
              c_rules();
              goto LABEL_128;
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 17:
            case 19:
            case 21:
            case 23:
            case 25:
            case 27:
            case 29:
            case 31:
            case 33:
            case 35:
            case 37:
            case 39:
            case 41:
            case 43:
            case 45:
            case 47:
            case 49:
            case 50:
            case 51:
            case 56:
            case 58:
            case 60:
            case 65:
            case 70:
            case 72:
            case 74:
            case 79:
              goto LABEL_128;
            case 10:
LABEL_66:
              v124 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v124, v125, v126))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_25_26();
              cedille_rules();
              goto LABEL_128;
            case 12:
LABEL_68:
              v127 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v127, v128, v129))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_25_26();
              d_rules();
              goto LABEL_128;
            case 14:
LABEL_70:
              v130 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v130, v131, v132))
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_25_26();
              f_rules();
              goto LABEL_128;
            case 16:
LABEL_72:
              v133 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v133, v134, v135))
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_25_26();
              g_rules();
              goto LABEL_128;
            case 18:
LABEL_74:
              v136 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v136, v137, v138))
              {
                goto LABEL_76;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_76;
              }

              OUTLINED_FUNCTION_25_26();
              h_rules();
              goto LABEL_128;
            case 20:
LABEL_76:
              v139 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v139, v140, v141))
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_78;
              }

              v208 = OUTLINED_FUNCTION_25_26();
              j_rules(v208, v209, v210);
              goto LABEL_128;
            case 22:
LABEL_78:
              v142 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v142, v143, v144))
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_80;
              }

              v207 = OUTLINED_FUNCTION_25_26();
              k_rules(v207);
              goto LABEL_128;
            case 24:
LABEL_80:
              v145 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v145, v146, v147))
              {
                goto LABEL_82;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_82;
              }

              v205 = OUTLINED_FUNCTION_25_26();
              l_rules(v205, v206);
              goto LABEL_128;
            case 26:
LABEL_82:
              v148 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v148, v149, v150))
              {
                goto LABEL_84;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_84;
              }

              v203 = OUTLINED_FUNCTION_25_26();
              m_rules(v203, v204);
              goto LABEL_128;
            case 28:
LABEL_84:
              v151 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v151, v152, v153))
              {
                goto LABEL_86;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_86;
              }

              v202 = OUTLINED_FUNCTION_25_26();
              n_rules(v202);
              goto LABEL_128;
            case 30:
LABEL_86:
              v154 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v154, v155, v156))
              {
                goto LABEL_88;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_88;
              }

              v199 = OUTLINED_FUNCTION_25_26();
              p_rules(v199, v200, v201);
              goto LABEL_128;
            case 32:
LABEL_88:
              v157 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v157, v158, v159))
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_90;
              }

              v196 = OUTLINED_FUNCTION_25_26();
              q_rules(v196, v197, v198);
              goto LABEL_128;
            case 34:
LABEL_90:
              v160 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v160, v161, v162))
              {
                goto LABEL_92;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_92;
              }

              v195 = OUTLINED_FUNCTION_25_26();
              r_rules(v195);
              goto LABEL_128;
            case 36:
LABEL_92:
              v163 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v163, v164, v165))
              {
                goto LABEL_94;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_94;
              }

              v194 = OUTLINED_FUNCTION_25_26();
              s_rules(v194);
              goto LABEL_128;
            case 38:
LABEL_94:
              v166 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v166, v167, v168))
              {
                goto LABEL_96;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_96;
              }

              v192 = OUTLINED_FUNCTION_25_26();
              t_rules(v192, v193);
              goto LABEL_128;
            case 40:
LABEL_96:
              v169 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v169, v170, v171))
              {
                goto LABEL_98;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_98;
              }

              v191 = OUTLINED_FUNCTION_25_26();
              v_rules(v191);
              goto LABEL_128;
            case 42:
LABEL_98:
              v172 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v172, v173, v174))
              {
                goto LABEL_100;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_100;
              }

              v189 = OUTLINED_FUNCTION_25_26();
              w_rules(v189, v190);
              goto LABEL_128;
            case 44:
LABEL_100:
              v175 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v175, v176, v177))
              {
                goto LABEL_102;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_102;
              }

              v188 = OUTLINED_FUNCTION_25_26();
              x_rules(v188);
              goto LABEL_128;
            case 46:
LABEL_102:
              v178 = OUTLINED_FUNCTION_71_12();
              if (lpta_loadp_setscan_r(v178, v179, v180))
              {
                goto LABEL_104;
              }

              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_104;
              }

              v186 = OUTLINED_FUNCTION_25_26();
              y_rules(v186, v187);
              goto LABEL_128;
            case 48:
LABEL_104:
              v181 = OUTLINED_FUNCTION_71_12();
              if (!lpta_loadp_setscan_r(v181, v182, v183))
              {
                OUTLINED_FUNCTION_5_36();
                if (!test_string_s())
                {
                  v184 = OUTLINED_FUNCTION_25_26();
                  z_rules(v184, v185);
                }
              }

              goto LABEL_128;
            case 52:
              goto LABEL_11;
            case 53:
              v102 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v102, v103);
              goto LABEL_47;
            case 54:
              goto LABEL_28;
            case 55:
LABEL_47:
              OUTLINED_FUNCTION_5_36();
              test_string_s();
              OUTLINED_FUNCTION_144_4();
              if (!v104)
              {
                goto LABEL_28;
              }

              goto LABEL_38;
            case 57:
              goto LABEL_13;
            case 59:
              goto LABEL_15;
            case 61:
              goto LABEL_16;
            case 62:
              v105 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v105, v106);
              goto LABEL_50;
            case 63:
              goto LABEL_30;
            case 64:
LABEL_50:
              OUTLINED_FUNCTION_5_36();
              v107 = test_string_s();
              v82 = v34;
              v93 = v34;
              if (!v107)
              {
                goto LABEL_30;
              }

              goto LABEL_38;
            case 66:
              goto LABEL_17;
            case 67:
              v108 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v108, v109);
              goto LABEL_53;
            case 68:
              goto LABEL_32;
            case 69:
LABEL_53:
              OUTLINED_FUNCTION_5_36();
              v110 = test_string_s();
              v87 = v34;
              v93 = v34;
              if (!v110)
              {
                goto LABEL_32;
              }

              goto LABEL_38;
            case 71:
              goto LABEL_19;
            case 73:
              goto LABEL_21;
            case 75:
            case 77:
              v111 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v111, v112);
              goto LABEL_56;
            case 76:
              goto LABEL_57;
            case 78:
LABEL_56:
              OUTLINED_FUNCTION_5_36();
              test_string_s();
              OUTLINED_FUNCTION_145_4();
              if (!v113)
              {
                goto LABEL_57;
              }

              goto LABEL_38;
            case 80:
              goto LABEL_129;
            case 81:
              v116 = v34;
              goto LABEL_133;
            case 82:
              bspop_boa(v2);
              OUTLINED_FUNCTION_96_7();
              OUTLINED_FUNCTION_9_35();
              delete_1pt();
              goto LABEL_130;
            case 83:
              goto LABEL_136;
            case 84:
              goto LABEL_130;
            case 85:
              goto LABEL_132;
            case 86:
              goto LABEL_5;
            case 87:
              v38 = v34;
              goto LABEL_6;
            case 88:
              goto LABEL_140;
            case 89:
              goto LABEL_139;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

LABEL_10:
      v50 = OUTLINED_FUNCTION_95_8();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_97_7();
      if (lpta_loadp_setscan_r(v52, v53, 1))
      {
LABEL_11:
        v54 = OUTLINED_FUNCTION_97_7();
        if (lpta_loadp_setscan_r(v54, v55, 1) || (OUTLINED_FUNCTION_68_12(), test_string_s()))
        {
LABEL_13:
          v56 = OUTLINED_FUNCTION_97_7();
          if (lpta_loadp_setscan_r(v56, v57, 1) || (OUTLINED_FUNCTION_68_12(), test_string_s()))
          {
LABEL_15:
            starttest(v2, 61);
            v58 = OUTLINED_FUNCTION_97_7();
            if (lpta_loadp_setscan_r(v58, v59, 1))
            {
LABEL_16:
              starttest(v2, 66);
              v60 = OUTLINED_FUNCTION_97_7();
              if (lpta_loadp_setscan_r(v60, v61, 1))
              {
LABEL_17:
                v62 = OUTLINED_FUNCTION_97_7();
                if (lpta_loadp_setscan_r(v62, v63, 1) || (OUTLINED_FUNCTION_68_12(), test_string_s()))
                {
LABEL_19:
                  v64 = OUTLINED_FUNCTION_97_7();
                  if (lpta_loadp_setscan_r(v64, v65, 1) || (OUTLINED_FUNCTION_68_12(), test_string_s()))
                  {
LABEL_21:
                    v66 = OUTLINED_FUNCTION_147_4();
                    starttest(v66, v67);
                    v68 = OUTLINED_FUNCTION_97_7();
                    if (!lpta_loadp_setscan_r(v68, v69, 1))
                    {
                      v70 = OUTLINED_FUNCTION_154_3();
                      bspush_ca_scan(v70, v71);
                      OUTLINED_FUNCTION_68_12();
                      v72 = test_string_s();
                      v73 = v34;
                      if (v72)
                      {
                        goto LABEL_37;
                      }

LABEL_57:
                      v34 = v73;
                      v114 = OUTLINED_FUNCTION_36_17();
                      u_rules(v114, v115);
                    }
                  }

                  else
                  {
                    v92 = OUTLINED_FUNCTION_36_17();
                    o_circ_rules(v92);
                  }
                }

                else
                {
                  v91 = OUTLINED_FUNCTION_36_17();
                  o_rules(v91);
                }
              }

              else
              {
                v84 = OUTLINED_FUNCTION_156_3();
                bspush_ca_scan(v84, v85);
                OUTLINED_FUNCTION_68_12();
                v86 = test_string_s();
                v87 = v34;
                if (v86)
                {
                  goto LABEL_37;
                }

LABEL_32:
                v34 = v87;
                v88 = OUTLINED_FUNCTION_36_17();
                i_rules(v88);
              }
            }

            else
            {
              bspush_ca_scan(v2, 62);
              OUTLINED_FUNCTION_68_12();
              v81 = test_string_s();
              v82 = v34;
              if (v81)
              {
                goto LABEL_37;
              }

LABEL_30:
              v34 = v82;
              v83 = OUTLINED_FUNCTION_36_17();
              accented_e_rules(v83);
            }
          }

          else
          {
            v90 = OUTLINED_FUNCTION_36_17();
            e_acute_rules(v90);
          }
        }

        else
        {
          v89 = OUTLINED_FUNCTION_36_17();
          e_rules(v89);
        }
      }

      else
      {
        bspush_ca_scan(v2, 53);
        OUTLINED_FUNCTION_68_12();
        v77 = test_string_s();
        v78 = v34;
        if (v77)
        {
          goto LABEL_37;
        }

LABEL_28:
        v34 = v78;
        v79 = OUTLINED_FUNCTION_36_17();
        a_rules(v79, v80);
      }

LABEL_128:
      v211 = OUTLINED_FUNCTION_119_4();
      starttest(v211, v212);
      v213 = OUTLINED_FUNCTION_97_7();
      v215 = lpta_loadp_setscan_l(v213, v214, 2);
      v116 = v34;
      if (!v215)
      {
LABEL_133:
        LODWORD(v34) = v116;
        savescptr(v2, 81, &v249);
        if (!advanc(v2))
        {
          v223 = OUTLINED_FUNCTION_125_4();
          if (!lpta_loadp_setscan_r(v223, v224, 2))
          {
            bspush_ca_scan_boa();
LABEL_136:
            v76 = test_synch(v2, 83, 1, &_MergedGlobals_33);
            goto LABEL_25;
          }
        }

        goto LABEL_37;
      }

LABEL_129:
      v216 = OUTLINED_FUNCTION_36_17();
      reduce_duplicate_cons(v216, v217, v218);
LABEL_130:
      v219 = OUTLINED_FUNCTION_74_12();
      lpta_loadpn(v219, v220);
      v221 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v221, v222);
      if (!compare_ptas(v2) && !testeq(v2))
      {
        break;
      }

LABEL_132:
      forall_cont_from();
    }

LABEL_137:
    v225 = OUTLINED_FUNCTION_105_5();
    if (!lpta_loadp_setscan_l(v225, v226, 2) && !advanc(v2))
    {
LABEL_139:
      savescptr(v2, 89, v253);
      OUTLINED_FUNCTION_96_7();
      OUTLINED_FUNCTION_9_35();
      delete_1pt();
    }

LABEL_140:
    OUTLINED_FUNCTION_22_26();
    if (v234)
    {
      a_to_A_in_stems(v2, v227, v228, v229, v230, v231, v232, v233);
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_131_4();
}

uint64_t b_rules()
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v109);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
    {
      v16 = OUTLINED_FUNCTION_23_26();
      get_parm(v16, v17, v18, -6);
      v19 = OUTLINED_FUNCTION_75_12();
      OUTLINED_FUNCTION_129_4(v19, v20);
      v21 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v21, v22);
      fence_37(v0, 0, &null_str_14);
      v23 = OUTLINED_FUNCTION_21_27();
      fence_37(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_128_4();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_63_12();
      v31 = lpta_loadp_setscan_l(v28, v29, v30);
      if (v31)
      {
        goto LABEL_16;
      }

      while (1)
      {
        OUTLINED_FUNCTION_81_11(2, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101);
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v39 = OUTLINED_FUNCTION_16_33();
          if (!lpta_loadp_setscan_r(v39, v40, v41))
          {
            v45 = advance_tok(v0, v42, v43, v44);
            if (!v45 && !OUTLINED_FUNCTION_4_37(v45, v46, v47))
            {
              break;
            }
          }
        }

        while (1)
        {
          v48 = *(v0 + 104);
          v31 = v48 ? OUTLINED_FUNCTION_92_9(v48) : OUTLINED_FUNCTION_136_4();
          if (v31 != 1)
          {
            break;
          }

LABEL_16:
          OUTLINED_FUNCTION_83_10(v31, v32, v33, v34, v35, v36, v37, v38, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107);
          v49 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v49, v50, v51, v52, v53))
          {
            goto LABEL_17;
          }
        }

        if (v31 != 2)
        {
          if (v31 != 3)
          {
            goto LABEL_3;
          }

          break;
        }
      }

LABEL_17:
      OUTLINED_FUNCTION_100_6(v107);
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_126_4();
}

uint64_t c_rules()
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_8_36(v3, v4, v5, v6, v7, v8, v9, v10, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v325);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15))
    {
      v17 = OUTLINED_FUNCTION_67_12();
      get_parm(v17, v18, v19, -6);
      OUTLINED_FUNCTION_41_15();
      v20 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v20, v21);
      v22 = 0;
      v23 = OUTLINED_FUNCTION_98_7();
      v26 = fence_37(v23, v24, v25);
      OUTLINED_FUNCTION_111_4(v26, v27, &unk_28064B83D);
      v28 = OUTLINED_FUNCTION_116_4();
      starttest(v28, v29);
      v30 = OUTLINED_FUNCTION_74_12();
      if (!lpta_loadp_setscan_r(v30, v31, v2))
      {
        v64 = OUTLINED_FUNCTION_38_17();
        bspush_ca_scan(v64, v65);
        OUTLINED_FUNCTION_5_36();
        v66 = test_string_s();
        v67 = 0;
        LODWORD(v22) = 0;
        if (v66)
        {
          goto LABEL_35;
        }

LABEL_19:
        LODWORD(v22) = v67;
        OUTLINED_FUNCTION_104_6();
        v68 = OUTLINED_FUNCTION_85_10();
        savescptr(v68, v69, v70);
        if (!OUTLINED_FUNCTION_4_37(v71, v72, v73))
        {
          OUTLINED_FUNCTION_87_9();
          v74 = OUTLINED_FUNCTION_69_12();
          if (!setd_lookup(v74, v75, 12))
          {
            goto LABEL_21;
          }
        }

        goto LABEL_35;
      }

      while (2)
      {
        v32 = v22;
        v33 = OUTLINED_FUNCTION_10_35();
        if (lpta_loadp_setscan_r(v33, v34, v35) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
        {
LABEL_7:
          v36 = OUTLINED_FUNCTION_70_12();
          starttest(v36, v37);
          v38 = OUTLINED_FUNCTION_10_35();
          if (lpta_loadp_setscan_r(v38, v39, v40))
          {
LABEL_8:
            v41 = OUTLINED_FUNCTION_70_12();
            starttest(v41, v42);
            v43 = OUTLINED_FUNCTION_11_35();
            LODWORD(v22) = v32;
            if (lpta_loadp_setscan_l(v43, v44, v45))
            {
LABEL_9:
              v46 = OUTLINED_FUNCTION_70_12();
              starttest(v46, v47);
              v48 = OUTLINED_FUNCTION_10_35();
              v51 = lpta_loadp_setscan_r(v48, v49, v50);
              if (!v51)
              {
                OUTLINED_FUNCTION_13_34();
                v51 = test_string_s();
                LODWORD(v22) = v32;
                if (!v51)
                {
LABEL_11:
                  v59 = OUTLINED_FUNCTION_85_10();
                  savescptr(v59, v60, v61);
LABEL_12:
                  v32 = v22;
                }
              }

              LODWORD(v22) = v32;
              goto LABEL_33;
            }

LABEL_90:
            OUTLINED_FUNCTION_81_11(57, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317);
            OUTLINED_FUNCTION_21_27();
            if (!test_string_s())
            {
              *(v0 + 136) = v32;
              v191 = OUTLINED_FUNCTION_9_35();
              if (!test_ptr(v191, v192, v193))
              {
                v194 = OUTLINED_FUNCTION_16_33();
                if (!lpta_loadp_setscan_r(v194, v195, v196) && !advance_tok(v0, v197, v198, v199))
                {
                  OUTLINED_FUNCTION_29_23();
                  v51 = test_string_s();
                  if (!v51)
                  {
LABEL_33:
                    OUTLINED_FUNCTION_83_10(v51, v52, v53, v54, v55, v56, v57, v58, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323);
                    break;
                  }
                }
              }
            }

            goto LABEL_35;
          }

          v62 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v62, v63);
          OUTLINED_FUNCTION_5_36();
          v51 = test_string_s();
          LODWORD(v22) = v32;
          if (v51)
          {
            goto LABEL_35;
          }

LABEL_15:
          LODWORD(v22) = v32;
          OUTLINED_FUNCTION_83_10(v51, v52, v53, v54, v55, v56, v57, v58, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323);
        }

        else
        {
LABEL_22:
          v76 = OUTLINED_FUNCTION_85_10();
          savescptr(v76, v77, v78);
          v79 = OUTLINED_FUNCTION_51_14();
          starttest(v79, v80);
          OUTLINED_FUNCTION_153_3();
          v81 = OUTLINED_FUNCTION_9_35();
          if (setscan_nof_r(v81, v82, v83))
          {
LABEL_23:
            v84 = v22;
            v85 = OUTLINED_FUNCTION_60_13();
            starttest(v85, v86);
            v87 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_l(v87, v88, v89))
            {
LABEL_98:
              v22 = v84;
              OUTLINED_FUNCTION_87_9();
              v200 = OUTLINED_FUNCTION_69_12();
              v202 = setd_lookup(v200, v201, 15);
              if (!v202)
              {
                OUTLINED_FUNCTION_83_10(v202, v203, v204, v205, v206, v207, v208, v209, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323);
                v210 = OUTLINED_FUNCTION_0_40();
                if (!insert_2pt_s(v210, v211, v212, v213, v214))
                {
                  goto LABEL_21;
                }
              }

LABEL_100:
              v215 = OUTLINED_FUNCTION_70_12();
              starttest(v215, v216);
              v217 = OUTLINED_FUNCTION_11_35();
              if (lpta_loadp_setscan_l(v217, v218, v219) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
              {
LABEL_102:
                v220 = OUTLINED_FUNCTION_70_12();
                starttest(v220, v221);
                v222 = OUTLINED_FUNCTION_70_12();
                bspush_ca(v222);
                v223 = OUTLINED_FUNCTION_10_35();
                if (!lpta_loadp_setscan_r(v223, v224, v225))
                {
                  OUTLINED_FUNCTION_5_36();
                  if (!test_string_s())
                  {
                    v246 = OUTLINED_FUNCTION_70_12();
                    bspush_ca_scan(v246, v247);
                    OUTLINED_FUNCTION_5_36();
                    v51 = test_string_s();
                    v53 = v22;
                    if (!v51)
                    {
LABEL_117:
                      LODWORD(v22) = v53;
                      goto LABEL_33;
                    }
                  }
                }
              }

              else
              {
                v248 = OUTLINED_FUNCTION_57_13();
                bspush_ca(v248);
                v249 = OUTLINED_FUNCTION_10_35();
                v252 = lpta_loadp_setscan_l(v249, v250, v251);
                v226 = v22;
                if (!v252)
                {
LABEL_119:
                  LODWORD(v22) = v226;
                  OUTLINED_FUNCTION_81_11(27, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317);
                  if (!advance_tok(v0, v253, v254, v255) && !advance_tok(v0, v256, v257, v258) && !advance_tok(v0, v259, v260, v261))
                  {
                    OUTLINED_FUNCTION_17_33();
                    if (!test_string_s())
                    {
                      *(v0 + 136) = 1;
                      v262 = OUTLINED_FUNCTION_9_35();
                      if (!test_ptr(v262, v263, v264))
                      {
                        v265 = OUTLINED_FUNCTION_16_33();
                        if (!lpta_loadp_setscan_r(v265, v266, v267))
                        {
                          v268 = OUTLINED_FUNCTION_70_12();
                          bspush_ca_scan(v268, v269);
                          OUTLINED_FUNCTION_5_36();
                          if (!test_string_s())
                          {
                            OUTLINED_FUNCTION_70_12();
                            bspush_ca_scan_boa();
                            OUTLINED_FUNCTION_5_36();
                            if (!test_string_s())
                            {
                              LODWORD(v22) = 1;
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
LABEL_24:
              OUTLINED_FUNCTION_81_11(19, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317);
              OUTLINED_FUNCTION_29_23();
              if (!test_string_s())
              {
                v90 = OUTLINED_FUNCTION_16_33();
                if (!lpta_loadp_setscan_r(v90, v91, v92) && !advance_tok(v0, v93, v94, v95) && !advance_tok(v0, v96, v97, v98))
                {
                  v99 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v99, v100);
                  OUTLINED_FUNCTION_5_36();
                  v51 = test_string_s();
                  v55 = v22;
                  if (!v51)
                  {
LABEL_29:
                    LODWORD(v22) = v55;
                    goto LABEL_33;
                  }
                }
              }
            }

LABEL_35:
            LODWORD(v52) = v22;
LABEL_36:
            v117 = *(v0 + 104);
            if (v117)
            {
              v51 = OUTLINED_FUNCTION_92_9(v117);
              v22 = v52;
            }

            else
            {
              v51 = vback(v0, v52);
              v22 = 0;
            }

            v56 = v22;
            v54 = v22;
            v55 = v22;
            v53 = v22;
            v32 = v22;
            switch(v51)
            {
              case 1:
                continue;
              case 2:
                v67 = v22;
                goto LABEL_19;
              case 3:
              case 16:
              case 17:
                goto LABEL_21;
              case 4:
                v32 = v22;
                goto LABEL_7;
              case 5:
                goto LABEL_22;
              case 6:
                goto LABEL_23;
              case 7:
                goto LABEL_33;
              case 8:
                v52 = v22;
                goto LABEL_109;
              case 9:
                v119 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v119, v120);
                goto LABEL_61;
              case 10:
                OUTLINED_FUNCTION_5_36();
                v166 = test_string_s();
                v56 = v22;
                LODWORD(v52) = v22;
                if (!v166)
                {
                  goto LABEL_114;
                }

                goto LABEL_36;
              case 11:
                goto LABEL_114;
              case 12:
              case 15:
LABEL_61:
                OUTLINED_FUNCTION_5_36();
                test_string_s();
                OUTLINED_FUNCTION_144_4();
                if (!v51)
                {
                  goto LABEL_115;
                }

                goto LABEL_36;
              case 13:
              case 14:
                goto LABEL_115;
              case 18:
                v84 = v22;
                goto LABEL_98;
              case 19:
                goto LABEL_24;
              case 20:
                v164 = OUTLINED_FUNCTION_58_13();
                bspush_ca_scan(v164, v165);
                OUTLINED_FUNCTION_5_36();
                goto LABEL_73;
              case 21:
                goto LABEL_29;
              case 22:
                v183 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v183, v184);
                OUTLINED_FUNCTION_12_35();
                goto LABEL_73;
              case 23:
                OUTLINED_FUNCTION_13_34();
LABEL_73:
                v51 = test_string_s();
                v55 = v22;
                v52 = v22;
                if (!v51)
                {
                  goto LABEL_29;
                }

                goto LABEL_36;
              case 24:
                goto LABEL_100;
              case 25:
                goto LABEL_102;
              case 26:
                v167 = OUTLINED_FUNCTION_70_12();
                bspush_ca(v167);
                v168 = OUTLINED_FUNCTION_10_35();
                v171 = lpta_loadp_setscan_l(v168, v169, v170);
                LODWORD(v52) = v22;
                if (v171)
                {
                  goto LABEL_36;
                }

                goto LABEL_65;
              case 27:
                v226 = v22;
                goto LABEL_119;
              case 28:
                v162 = OUTLINED_FUNCTION_43_15();
                bspush_ca_scan(v162, v163);
                goto LABEL_79;
              case 29:
                v118 = bspop_boa(v0);
                goto LABEL_84;
              case 30:
              case 32:
              case 37:
                goto LABEL_84;
              case 31:
              case 36:
LABEL_79:
                OUTLINED_FUNCTION_5_36();
                goto LABEL_80;
              case 33:
                v152 = OUTLINED_FUNCTION_10_35();
                v155 = lpta_loadp_setscan_r(v152, v153, v154);
                LODWORD(v52) = v22;
                if (v155)
                {
                  goto LABEL_36;
                }

                OUTLINED_FUNCTION_21_27();
                v156 = test_string_s();
                LODWORD(v52) = v22;
                if (v156)
                {
                  goto LABEL_36;
                }

                *(v0 + 136) = v22;
                v157 = OUTLINED_FUNCTION_9_35();
                v51 = test_ptr(v157, v158, v159);
                goto LABEL_81;
              case 34:
LABEL_65:
                OUTLINED_FUNCTION_81_11(34, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317);
                v175 = advance_tok(v0, v172, v173, v174);
                LODWORD(v52) = v22;
                if (!v175)
                {
                  v178 = advance_tok(v0, v22, v176, v177);
                  LODWORD(v52) = v22;
                  if (!v178)
                  {
                    v181 = advance_tok(v0, v22, v179, v180);
                    LODWORD(v52) = v22;
                    if (!v181)
                    {
                      OUTLINED_FUNCTION_5_36();
                      v182 = test_string_s();
                      LODWORD(v52) = v22;
                      if (!v182)
                      {
                        OUTLINED_FUNCTION_70_12();
                        bspush_ca_scan_boa();
                        OUTLINED_FUNCTION_5_36();
                        if (test_string_s())
                        {
                          LODWORD(v52) = v22;
                        }

                        else
                        {
                          LODWORD(v52) = 1;
                        }
                      }
                    }
                  }
                }

                goto LABEL_36;
              case 35:
                bspop_boa(v0);
                v144 = OUTLINED_FUNCTION_16_33();
                v147 = lpta_loadp_setscan_r(v144, v145, v146);
                LODWORD(v52) = v22;
                if (v147)
                {
                  goto LABEL_36;
                }

                v148 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v148, v149);
                OUTLINED_FUNCTION_13_34();
LABEL_80:
                v51 = test_string_s();
LABEL_81:
                v52 = v22;
                if (v51)
                {
                  goto LABEL_36;
                }

LABEL_84:
                OUTLINED_FUNCTION_83_10(v51, v52, v53, v54, v55, v56, v57, v58, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v118);
LABEL_85:
                v185 = OUTLINED_FUNCTION_0_40();
                inserted = insert_2pt_s(v185, v186, v187, v188, v189);
                LODWORD(v52) = v22;
                if (!inserted)
                {
                  goto LABEL_21;
                }

                goto LABEL_36;
              case 38:
                OUTLINED_FUNCTION_83_10(v51, v52, v22, v22, v22, v22, v57, v58, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323);
                goto LABEL_85;
              case 39:
                v121 = OUTLINED_FUNCTION_70_12();
                bspush_ca(v121);
                v122 = OUTLINED_FUNCTION_10_35();
                v125 = lpta_loadp_setscan_l(v122, v123, v124);
                LODWORD(v52) = v22;
                if (v125)
                {
                  goto LABEL_36;
                }

                goto LABEL_42;
              case 40:
                goto LABEL_56;
              case 41:
              case 43:
              case 47:
                goto LABEL_117;
              case 42:
                OUTLINED_FUNCTION_4_37(v51, v52, v22);
                goto LABEL_77;
              case 44:
                OUTLINED_FUNCTION_87_9();
                v142 = OUTLINED_FUNCTION_69_12();
                setd_lookup(v142, v143, 16);
                goto LABEL_77;
              case 45:
LABEL_42:
                OUTLINED_FUNCTION_81_11(45, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317);
                v129 = advance_tok(v0, v126, v127, v128);
                LODWORD(v52) = v22;
                if (v129)
                {
                  goto LABEL_36;
                }

                v132 = advance_tok(v0, v22, v130, v131);
                LODWORD(v52) = v22;
                if (v132)
                {
                  goto LABEL_36;
                }

                OUTLINED_FUNCTION_21_27();
                v133 = test_string_s();
                LODWORD(v52) = v22;
                if (v133)
                {
                  goto LABEL_36;
                }

                *(v0 + 136) = v22;
                v134 = OUTLINED_FUNCTION_9_35();
                v137 = test_ptr(v134, v135, v136);
                LODWORD(v52) = v22;
                if (v137)
                {
                  goto LABEL_36;
                }

                v138 = OUTLINED_FUNCTION_16_33();
                v141 = lpta_loadp_setscan_r(v138, v139, v140);
                LODWORD(v52) = v22;
                if (v141)
                {
                  goto LABEL_36;
                }

LABEL_56:
                v160 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v160, v161);
                OUTLINED_FUNCTION_5_36();
LABEL_76:
                test_string_s();
LABEL_77:
                OUTLINED_FUNCTION_145_4();
                if (!v51)
                {
                  goto LABEL_117;
                }

                goto LABEL_36;
              case 46:
                OUTLINED_FUNCTION_13_34();
                goto LABEL_76;
              case 48:
                v32 = v22;
                goto LABEL_8;
              case 49:
              case 51:
              case 52:
              case 53:
              case 54:
                v150 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v150, v151);
                goto LABEL_87;
              case 50:
                goto LABEL_15;
              case 55:
LABEL_87:
                OUTLINED_FUNCTION_5_36();
                test_string_s();
                OUTLINED_FUNCTION_133_4();
                if (!v51)
                {
                  goto LABEL_15;
                }

                goto LABEL_36;
              case 56:
                v32 = v22;
                goto LABEL_9;
              case 57:
                goto LABEL_90;
              case 58:
                goto LABEL_12;
              case 59:
                goto LABEL_11;
              default:
                goto LABEL_3;
            }
          }

          v101 = OUTLINED_FUNCTION_12_35();
          if (testFldeq(v101, v102, v103, 2) || advance_tok(v0, v104, v105, v106))
          {
            goto LABEL_35;
          }

          v107 = OUTLINED_FUNCTION_50_15();
          starttest(v107, v108);
          v109 = OUTLINED_FUNCTION_10_35();
          v51 = lpta_loadp_setscan_l(v109, v110, v111);
          v52 = v22;
          if (v51)
          {
            goto LABEL_33;
          }

LABEL_109:
          v22 = v52;
          OUTLINED_FUNCTION_81_11(8, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317);
          if (advance_tok(v0, v227, v228, v229))
          {
            goto LABEL_35;
          }

          if (advance_tok(v0, v230, v231, v232))
          {
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_96_7();
          v233 = OUTLINED_FUNCTION_9_35();
          if (test_ptr(v233, v234, v235))
          {
            goto LABEL_35;
          }

          v236 = OUTLINED_FUNCTION_16_33();
          if (lpta_loadp_setscan_r(v236, v237, v238))
          {
            goto LABEL_35;
          }

          v239 = OUTLINED_FUNCTION_39_16();
          bspush_ca_scan(v239, v240);
          v241 = OUTLINED_FUNCTION_49_15();
          bspush_ca_scan(v241, v242);
          OUTLINED_FUNCTION_5_36();
          v243 = test_string_s();
          v56 = v22;
          if (v243)
          {
            goto LABEL_35;
          }

LABEL_114:
          v22 = v56;
          v244 = OUTLINED_FUNCTION_66_12();
          bspush_ca_scan(v244, v245);
          OUTLINED_FUNCTION_5_36();
          v51 = test_string_s();
          v54 = v22;
          if (v51)
          {
            goto LABEL_35;
          }

LABEL_115:
          LODWORD(v22) = v54;
          OUTLINED_FUNCTION_83_10(v51, v52, v53, v54, v55, v56, v57, v58, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323);
        }

        break;
      }

      v112 = OUTLINED_FUNCTION_0_40();
      if (insert_2pt_s(v112, v113, v114, v115, v116))
      {
        goto LABEL_35;
      }

LABEL_21:
      OUTLINED_FUNCTION_100_6(v323);
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_126_4();
}

uint64_t cedille_rules()
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154, v156, v158, v160, v162);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v155, v157, SHIDWORD(v157), v159, SWORD2(v159), SHIWORD(v159), v161, SWORD2(v161), SBYTE6(v161), SHIBYTE(v161), v163, v164))
  {
    v27 = OUTLINED_FUNCTION_23_26();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_41_15();
    v30 = OUTLINED_FUNCTION_98_7();
    fence_37(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_69_12();
    fence_37(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v39, v40, v41, &unk_28064B820, 0);
    if (inserted)
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v43, v44, v45, v46, v47, v48, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149);
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_118_4();
}

uint64_t d_rules()
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_40_16(v3, v4, v5, v6, v7, v8, v9, v10, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v87, v88);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v2) || (OUTLINED_FUNCTION_121_4(), OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    v1 = 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_86_9();
    get_parm(v17, v18, v19, -6);
    OUTLINED_FUNCTION_41_15();
    OUTLINED_FUNCTION_102_6();
    fence_37(v0, 0, &null_str_14);
    v20 = OUTLINED_FUNCTION_56_13();
    fence_37(v20, v21, v22);
    OUTLINED_FUNCTION_143_4();
    v23 = OUTLINED_FUNCTION_74_12();
    lpta_loadpn(v23, v24);
    v25 = OUTLINED_FUNCTION_105_5();
    rpta_loadpn(v25, v26);
    if (compare_ptas(v0) || testeq(v0))
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_87_9();
    v27 = OUTLINED_FUNCTION_69_12();
    if (setd_lookup(v27, v28, 21) || (v29 = OUTLINED_FUNCTION_106_4(), lpta_rpta_loadp(v29, v30, v31), v32 = OUTLINED_FUNCTION_0_40(), insert_2pt_s(v32, v33, v34, v35, v36)))
    {
      while (1)
      {
        v37 = OUTLINED_FUNCTION_61_13();
        starttest(v37, v38);
        is_liaison_con(v0);
        if (v39)
        {
          break;
        }

        v40 = OUTLINED_FUNCTION_106_4();
        lpta_rpta_loadp(v40, v41, v42);
        OUTLINED_FUNCTION_74_12();
        settvar_s();
        v43 = OUTLINED_FUNCTION_69_12();
        npush_s(v43);
        v44 = OUTLINED_FUNCTION_74_12();
        npop(v44, v45);
        OUTLINED_FUNCTION_37_17();
        insert_2ptv();
        if (!v46)
        {
          break;
        }

        while (1)
        {
          v47 = *(v0 + 104);
          v48 = v47 ? OUTLINED_FUNCTION_92_9(v47) : OUTLINED_FUNCTION_136_4();
          if (v48 != 1)
          {
            break;
          }

LABEL_18:
          v49 = OUTLINED_FUNCTION_106_4();
          lpta_rpta_loadp(v49, v50, v51);
          v52 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v52, v53, v54, v55, v56))
          {
            goto LABEL_19;
          }
        }

        if (v48 != 2)
        {
          if ((v48 - 3) < 2)
          {
            break;
          }

          goto LABEL_3;
        }
      }
    }

LABEL_19:
    OUTLINED_FUNCTION_100_6(v86);
  }

  vretproc(v0);
  return v1;
}

uint64_t f_rules()
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v2, v3, v4, v5, v6, v7, v8, v9, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v151);
  OUTLINED_FUNCTION_64_12(v10, v11, v12, v13, v14, v15, v16, v17, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152, v154, v156, v158, v160);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_14_34(v18, v19, v20, v21, v22, v23, v24, v25, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v155, SHIDWORD(v155), v157, SWORD2(v157), SHIWORD(v157), v159, SWORD2(v159), SBYTE6(v159), SHIBYTE(v159), v161, v162))
  {
    v27 = OUTLINED_FUNCTION_23_26();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_41_15();
    v30 = OUTLINED_FUNCTION_98_7();
    fence_37(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v36, v37, v38, v39, 0);
    if (inserted)
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v41, v42, v43, v44, v45, v46, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147);
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_118_4();
}

uint64_t g_rules()
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_140_4();
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v258[0], v258[1], v259, v260);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_46_15();
    if (!OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
    {
      v16 = OUTLINED_FUNCTION_78_11();
      get_parm(v16, v17, v18, -6);
      v19 = OUTLINED_FUNCTION_80_11();
      OUTLINED_FUNCTION_129_4(v19, v20);
      v21 = OUTLINED_FUNCTION_75_12();
      push_ptr_init(v21, v22);
      v23 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v23, v24);
      v25 = 0;
      v26 = OUTLINED_FUNCTION_98_7();
      fence_37(v26, v27, v28);
      v29 = OUTLINED_FUNCTION_69_12();
      fence_37(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_80_11();
      lpta_loadpn(v32, v33);
      v34 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v34, v35);
      if (!compare_ptas(v0))
      {
        if (!testeq(v0))
        {
          OUTLINED_FUNCTION_87_9();
          v76 = OUTLINED_FUNCTION_69_12();
          if (!setd_lookup(v76, v77, 36))
          {
            goto LABEL_68;
          }

          LODWORD(v25) = 0;
LABEL_20:
          v78 = OUTLINED_FUNCTION_52_14();
          starttest(v78, v79);
          v80 = OUTLINED_FUNCTION_33_20();
          if (!lpta_loadp_setscan_l(v80, v81, v82))
          {
            v83 = OUTLINED_FUNCTION_35_17();
            bspush_ca_scan(v83, v84);
LABEL_26:
            OUTLINED_FUNCTION_5_36();
            v93 = test_string_s();
            v94 = v25;
            LODWORD(v74) = v25;
            if (v93)
            {
              goto LABEL_39;
            }

LABEL_27:
            LODWORD(v25) = v94;
            OUTLINED_FUNCTION_50_15();
            bspush_ca_boa();
            OUTLINED_FUNCTION_87_9();
            v68 = OUTLINED_FUNCTION_69_12();
            v70 = 35;
            goto LABEL_28;
          }

          goto LABEL_35;
        }

        v25 = 0;
      }

      while (2)
      {
        v36 = OUTLINED_FUNCTION_11_35();
        if (lpta_loadp_setscan_r(v36, v37, v38) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
        {
LABEL_9:
          v39 = OUTLINED_FUNCTION_70_12();
          starttest(v39, v40);
          v41 = OUTLINED_FUNCTION_33_20();
          v44 = lpta_loadp_setscan_l(v41, v42, v43);
          v45 = v25;
          if (v44)
          {
LABEL_10:
            LODWORD(v25) = v45;
            v46 = OUTLINED_FUNCTION_43_15();
            starttest(v46, v47);
            v48 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_r(v48, v49, v50) || (OUTLINED_FUNCTION_5_36(), v51 = test_string_s(), v52 = v25, v51))
            {
LABEL_12:
              v53 = OUTLINED_FUNCTION_70_12();
              starttest(v53, v54);
              v55 = OUTLINED_FUNCTION_11_35();
              if (lpta_loadp_setscan_r(v55, v56, v57))
              {
LABEL_13:
                v58 = OUTLINED_FUNCTION_70_12();
                starttest(v58, v59);
                v60 = OUTLINED_FUNCTION_11_35();
                if (!lpta_loadp_setscan_r(v60, v61, v62))
                {
                  OUTLINED_FUNCTION_5_36();
                  v63 = test_string_s();
                  v64 = v25;
                  if (!v63)
                  {
LABEL_15:
                    LODWORD(v25) = v64;
                    v65 = OUTLINED_FUNCTION_91_9();
                    savescptr(v65, v66, v67);
                    OUTLINED_FUNCTION_70_12();
                    bspush_ca_boa();
                    OUTLINED_FUNCTION_87_9();
                    v68 = OUTLINED_FUNCTION_69_12();
                    v70 = 34;
LABEL_28:
                    v95 = setd_lookup(v68, v69, v70);
                    goto LABEL_29;
                  }
                }
              }

              else
              {
                v71 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v71, v72);
                OUTLINED_FUNCTION_5_36();
                v73 = test_string_s();
                LODWORD(v74) = v25;
                LODWORD(v75) = v25;
                if (v73)
                {
                  goto LABEL_39;
                }

LABEL_59:
                LODWORD(v25) = v75;
              }

              break;
            }

LABEL_85:
            LODWORD(v25) = v52;
            v195 = OUTLINED_FUNCTION_91_9();
            savescptr(v195, v196, v197);
            v198 = OUTLINED_FUNCTION_3_38();
            if (!testFldeq(v198, v199, v200, v201))
            {
              OUTLINED_FUNCTION_70_12();
              bspush_ca_scan_boa();
              v202 = OUTLINED_FUNCTION_31_21();
              v95 = testFldeq(v202, v203, v204, 5);
LABEL_29:
              if (v95)
              {
                LODWORD(v74) = v25;
              }

              else
              {
                LODWORD(v74) = 1;
              }

              goto LABEL_39;
            }
          }

          else
          {
LABEL_22:
            OUTLINED_FUNCTION_81_11(28, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256);
            OUTLINED_FUNCTION_5_36();
            if (!test_string_s())
            {
              v85 = OUTLINED_FUNCTION_16_33();
              if (!lpta_loadp_setscan_r(v85, v86, v87) && !advance_tok(v0, v88, v89, v90))
              {
                v91 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v91, v92);
                OUTLINED_FUNCTION_13_34();
LABEL_64:
                v111 = test_string_s();
                v114 = v25;
                v74 = v25;
                if (v111)
                {
                  goto LABEL_39;
                }

LABEL_65:
                LODWORD(v25) = v114;
                inserted = OUTLINED_FUNCTION_4_37(v111, v74, v75);
LABEL_38:
                LODWORD(v74) = v25;
                if (inserted)
                {
                  goto LABEL_39;
                }

LABEL_68:
                OUTLINED_FUNCTION_100_6(v260);
                goto LABEL_3;
              }
            }
          }

          goto LABEL_86;
        }

LABEL_71:
        v25 = v258;
        v153 = OUTLINED_FUNCTION_86_9();
        savescptr(v153, v154, v155);
        v156 = OUTLINED_FUNCTION_42_15();
        starttest(v156, v157);
        v158 = OUTLINED_FUNCTION_74_12();
        if (lpta_loadp_setscan_r(v158, v159, 1))
        {
LABEL_72:
          v160 = OUTLINED_FUNCTION_48_15();
          starttest(v160, v161);
          v162 = OUTLINED_FUNCTION_10_35();
          lpta_loadp_setscan_r(v162, v163, v164);
          OUTLINED_FUNCTION_133_4();
          if (!v165)
          {
LABEL_76:
            v169 = OUTLINED_FUNCTION_91_9();
            savescptr(v169, v170, v171);
            v172 = OUTLINED_FUNCTION_3_38();
            if (!testFldeq(v172, v173, v174, v175) && !advance_tok(v0, v176, v177, v178))
            {
              v179 = OUTLINED_FUNCTION_44_15();
              starttest(v179, v180);
              v181 = OUTLINED_FUNCTION_70_12();
              bspush_ca(v181);
              v182 = OUTLINED_FUNCTION_33_20();
              lpta_loadp_setscan_l(v182, v183, v184);
              OUTLINED_FUNCTION_146_4();
              if (v185)
              {
                goto LABEL_39;
              }

LABEL_79:
              LODWORD(v25) = v151;
              OUTLINED_FUNCTION_81_11(21, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256);
              OUTLINED_FUNCTION_29_23();
              if (!test_string_s())
              {
                v186 = OUTLINED_FUNCTION_16_33();
                if (!lpta_loadp_setscan_r(v186, v187, v188) && !advance_tok(v0, v189, v190, v191) && !advance_tok(v0, v192, v193, v194))
                {
                  OUTLINED_FUNCTION_5_36();
LABEL_89:
                  v205 = test_string_s();
                  v113 = v25;
                  LODWORD(v74) = v25;
                  if (v205)
                  {
                    goto LABEL_39;
                  }

LABEL_90:
                  LODWORD(v25) = v113;
                  v206 = OUTLINED_FUNCTION_20_28();
                  lpta_rpta_loadp(v206, v207, v208);
LABEL_62:
                  v104 = OUTLINED_FUNCTION_1_39();
                  goto LABEL_37;
                }
              }
            }

LABEL_86:
            LODWORD(v74) = v25;
LABEL_39:
            v110 = v0[13];
            if (v110)
            {
              v111 = OUTLINED_FUNCTION_92_9(v110);
              v25 = v74;
            }

            else
            {
              v111 = vback(v0, v74);
              v25 = 0;
            }

            v94 = v25;
            v112 = v25;
            v113 = v25;
            v114 = v25;
            v75 = v25;
            switch(v111)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_20;
              case 3:
              case 8:
              case 16:
              case 24:
                goto LABEL_68;
              case 4:
              case 25:
              case 43:
                goto LABEL_35;
              case 5:
                goto LABEL_26;
              case 6:
                goto LABEL_27;
              case 7:
                bspop_boa(v0);
                goto LABEL_68;
              case 9:
                goto LABEL_9;
              case 10:
                goto LABEL_71;
              case 11:
                goto LABEL_72;
              case 12:
                v115 = OUTLINED_FUNCTION_47_15();
                bspush_ca_scan(v115, v116);
                OUTLINED_FUNCTION_5_36();
                goto LABEL_45;
              case 13:
                goto LABEL_75;
              case 14:
                v122 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v122, v123);
                v117 = OUTLINED_FUNCTION_4_37(v124, v125, v126);
                goto LABEL_49;
              case 15:
                OUTLINED_FUNCTION_29_23();
LABEL_45:
                v117 = test_string_s();
LABEL_49:
                v112 = v25;
                LODWORD(v74) = v25;
                if (!v117)
                {
                  goto LABEL_75;
                }

                goto LABEL_39;
              case 17:
                v152 = v25;
                break;
              case 18:
                goto LABEL_76;
              case 19:
                v96 = OUTLINED_FUNCTION_70_12();
                starttest(v96, v97);
                v98 = OUTLINED_FUNCTION_11_35();
                if (lpta_loadp_setscan_r(v98, v99, v100))
                {
                  goto LABEL_35;
                }

                OUTLINED_FUNCTION_5_36();
                if (test_string_s())
                {
                  goto LABEL_35;
                }

                OUTLINED_FUNCTION_57_13();
                bspush_ca_boa();
                lpta_rpta_loadp(v0, &v259, (v0 + 207));
                v68 = OUTLINED_FUNCTION_69_12();
                v70 = 8;
                goto LABEL_28;
              case 20:
                v127 = OUTLINED_FUNCTION_33_20();
                v130 = lpta_loadp_setscan_l(v127, v128, v129);
                LODWORD(v74) = v25;
                if (v130)
                {
                  goto LABEL_39;
                }

                goto LABEL_52;
              case 21:
                v151 = v25;
                goto LABEL_79;
              case 22:
                goto LABEL_90;
              case 23:
LABEL_52:
                OUTLINED_FUNCTION_81_11(23, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256);
                OUTLINED_FUNCTION_13_34();
                v131 = test_string_s();
                LODWORD(v74) = v25;
                if (v131)
                {
                  goto LABEL_39;
                }

                v132 = OUTLINED_FUNCTION_16_33();
                v135 = lpta_loadp_setscan_r(v132, v133, v134);
                LODWORD(v74) = v25;
                if (v135)
                {
                  goto LABEL_39;
                }

                v138 = advance_tok(v0, v25, v136, v137);
                LODWORD(v74) = v25;
                if (v138)
                {
                  goto LABEL_39;
                }

                v141 = advance_tok(v0, v25, v139, v140);
                LODWORD(v74) = v25;
                if (v141)
                {
                  goto LABEL_39;
                }

                OUTLINED_FUNCTION_29_23();
                goto LABEL_89;
              case 26:
                bspop_boa(v0);
                v148 = OUTLINED_FUNCTION_20_28();
                lpta_rpta_loadp(v148, v149, v150);
                goto LABEL_62;
              case 27:
                v45 = v25;
                goto LABEL_10;
              case 28:
                goto LABEL_22;
              case 29:
                OUTLINED_FUNCTION_29_23();
                goto LABEL_64;
              case 30:
                goto LABEL_65;
              case 31:
                goto LABEL_12;
              case 32:
                v52 = v25;
                goto LABEL_85;
              case 33:
                bspop_boa(v0);
                v121 = advance_tok(v0, v118, v119, v120);
                LODWORD(v74) = v25;
                if (!v121)
                {
                  goto LABEL_35;
                }

                goto LABEL_39;
              case 34:
                goto LABEL_13;
              case 35:
              case 37:
              case 38:
              case 39:
              case 40:
              case 41:
                v142 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v142, v143);
                goto LABEL_58;
              case 36:
                goto LABEL_59;
              case 42:
LABEL_58:
                OUTLINED_FUNCTION_5_36();
                test_string_s();
                OUTLINED_FUNCTION_146_4();
                if (!v144)
                {
                  goto LABEL_59;
                }

                goto LABEL_39;
              case 44:
                v64 = v25;
                goto LABEL_15;
              case 45:
                bspop_boa(v0);
                v145 = OUTLINED_FUNCTION_20_28();
                lpta_rpta_loadp(v145, v146, v147);
                goto LABEL_36;
              default:
                goto LABEL_3;
            }
          }

          LODWORD(v25) = v152;
        }

        else
        {
          v166 = OUTLINED_FUNCTION_66_12();
          bspush_ca_scan(v166, v167);
          OUTLINED_FUNCTION_5_36();
          test_string_s();
          OUTLINED_FUNCTION_144_4();
          if (v168)
          {
            goto LABEL_39;
          }

LABEL_75:
          LODWORD(v25) = v112;
        }

        break;
      }

LABEL_35:
      v101 = OUTLINED_FUNCTION_20_28();
      lpta_rpta_loadp(v101, v102, v103);
LABEL_36:
      v104 = OUTLINED_FUNCTION_0_40();
LABEL_37:
      inserted = insert_2pt_s(v104, v105, v106, v107, v108);
      goto LABEL_38;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_135_4();
}

uint64_t h_rules()
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_8_36(v2, v3, v4, v5, v6, v7, v8, v9, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v118);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_28();
  if (OUTLINED_FUNCTION_137_4(v10, v11, v12, v13, v14))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_23_26();
  get_parm(v16, v17, v18, -6);
  v19 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_129_4(v19, v20);
  v21 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v21, v22);
  fence_37(v0, 0, &null_str_14);
  v23 = OUTLINED_FUNCTION_69_12();
  fence_37(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_80_11();
  lpta_loadpn(v26, v27);
  v28 = OUTLINED_FUNCTION_99_7();
  rpta_loadpn(v28, v29);
  if (compare_ptas(v0) || testeq(v0))
  {
LABEL_6:
    OUTLINED_FUNCTION_100_6(v116);
    goto LABEL_3;
  }

  v30 = OUTLINED_FUNCTION_38_17();
  starttest(v30, v31);
  OUTLINED_FUNCTION_87_9();
  v32 = OUTLINED_FUNCTION_69_12();
  v34 = setd_lookup(v32, v33, 50);
  if (!v34)
  {
    goto LABEL_12;
  }

  while (2)
  {
    v42 = OUTLINED_FUNCTION_52_14();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_10_35();
    if (lpta_loadp_setscan_r(v44, v45, v46))
    {
      goto LABEL_6;
    }

LABEL_9:
    if (!advance_tok(v0, v35, v36, v37))
    {
      v47 = OUTLINED_FUNCTION_35_17();
      bspush_ca_scan(v47, v48);
LABEL_11:
      v49 = OUTLINED_FUNCTION_86_9();
      savescptr(v49, v50, v51);
      v52 = OUTLINED_FUNCTION_86_9();
      lpta_rpta_loadp(v52, v53, v54);
      v55 = OUTLINED_FUNCTION_69_12();
      v34 = setd_lookup(v55, v56, 51);
      if (!v34)
      {
LABEL_12:
        OUTLINED_FUNCTION_83_10(v34, v35, v36, v37, v38, v39, v40, v41, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116);
        v57 = OUTLINED_FUNCTION_0_40();
        if (!insert_2pt_s(v57, v58, v59, v60, v61))
        {
          goto LABEL_6;
        }
      }
    }

    v62 = *(v0 + 104);
    if (v62)
    {
      v34 = OUTLINED_FUNCTION_92_9(v62);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_136_4();
    }

    switch(v34)
    {
      case 1:
      case 4:
        goto LABEL_6;
      case 2:
        continue;
      case 3:
        goto LABEL_12;
      case 5:
        goto LABEL_9;
      case 6:
        goto LABEL_11;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_126_4();
}

void j_rules(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  v155[30] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_33(v5, v6, v7, v8, v9, v10, v11, v12, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v154, v155[0], v155[1]);
  OUTLINED_FUNCTION_64_12(v13, v14, v15, v16, v17, v18, v19, v20, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v154, v155[0], v155[1], v155[2], v155[3], v155[4], v155[5]);
  v21 = setjmp(v4);
  if (!v21 && !OUTLINED_FUNCTION_14_34(v21, v22, v23, v24, v25, v26, v27, v28, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v153, v154, v155[0], v155[1], v155[2], SHIDWORD(v155[2]), v155[3], SWORD2(v155[3]), SHIWORD(v155[3]), v155[4], SWORD2(v155[4]), SBYTE6(v155[4]), SHIBYTE(v155[4]), v155[5], v155[6]))
  {
    v29 = OUTLINED_FUNCTION_75_12();
    OUTLINED_FUNCTION_130_4(v29, v30);
    v31 = OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_129_4(v31, v32);
    fence_37(v3, 0, &null_str_14);
    v33 = OUTLINED_FUNCTION_128_4();
    starttest(v33, v34);
    OUTLINED_FUNCTION_87_9();
    v35 = OUTLINED_FUNCTION_73_12();
    if (setd_lookup(v35, v36, 17) || (v37 = OUTLINED_FUNCTION_88_9(), lpta_rpta_loadp(v37, v38, v39), v40 = OUTLINED_FUNCTION_0_40(), inserted = insert_2pt_s(v40, v41, v42, v43, v44), inserted))
    {
      while (1)
      {
        v53 = OUTLINED_FUNCTION_80_11();
        lpta_rpta_loadp(v53, v54, &v153);
        v55 = OUTLINED_FUNCTION_6_36();
        inserted = insert_2pt_s(v55, v56, v57, &unk_28064B822, 0);
        if (!inserted)
        {
          break;
        }

        v58 = *(v3 + 104);
        if (v58)
        {
          inserted = OUTLINED_FUNCTION_92_9(v58);
        }

        else
        {
          v59 = OUTLINED_FUNCTION_73_12();
          inserted = vback(v59, v60);
        }

        if (inserted != 1)
        {
          if (inserted != 2)
          {
            goto LABEL_3;
          }

          break;
        }
      }
    }

    OUTLINED_FUNCTION_79_11(inserted, v46, v47, v48, v49, v50, v51, v52, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v153, v154);
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_118_4();
  OUTLINED_FUNCTION_161_3();
}

uint64_t k_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v3, v4, v5, v6, v7, v8, v9, v10, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154);
  OUTLINED_FUNCTION_64_12(v11, v12, v13, v14, v15, v16, v17, v18, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v155, v157, v159, v161, v163);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_14_34(v19, v20, v21, v22, v23, v24, v25, v26, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v156, v158, SHIDWORD(v158), v160, SWORD2(v160), SHIWORD(v160), v162, SWORD2(v162), SBYTE6(v162), SHIBYTE(v162), v164, v165))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_69_12();
    fence_37(v34, v35, &unk_28064B83D);
    v36 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v39, v40, v41, v42, 0);
    if (inserted)
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v44, v45, v46, v47, v48, v49, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_118_4();
}

void l_rules(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4();
  v5 = v4;
  OUTLINED_FUNCTION_148_4();
  v113 = *MEMORY[0x277D85DE8];
  v108[0] = 0;
  v108[1] = 0;
  v106 = 0;
  v107 = 0;
  v105[0] = 0;
  v105[1] = 0;
  OUTLINED_FUNCTION_159_3();
  OUTLINED_FUNCTION_90_9();
  bzero(v102, v6);
  OUTLINED_FUNCTION_89_9();
  bzero(v112, v7);
  if (!setjmp(v112) && !ventproc(v2, v102, v111, v110, v109, v112))
  {
    OUTLINED_FUNCTION_41_15();
    get_parm(v2, &v106, v5, -6);
    push_ptr_init(v2, v105);
    push_ptr_init(v2, v104);
    push_ptr_init(v2, v103);
    v8 = OUTLINED_FUNCTION_98_7();
    fence_37(v8, v9, v10);
    v11 = OUTLINED_FUNCTION_56_13();
    fence_37(v11, v12, v13);
    OUTLINED_FUNCTION_143_4();
    v14 = OUTLINED_FUNCTION_74_12();
    v16 = 0;
    v17 = 0;
    if (lpta_loadp_setscan_l(v14, v15, v3))
    {
LABEL_5:
      v101 = v5;
      v18 = OUTLINED_FUNCTION_47_15();
      starttest(v18, v19);
      lpta_loadpn(v2, &v106);
      v20 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v20, v21);
      if (compare_ptas(v2) || testeq(v2))
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_87_9();
      v22 = OUTLINED_FUNCTION_69_12();
      if (!setd_lookup(v22, v23, 13))
      {
LABEL_40:
        *(v101 + 1) = v107;
        goto LABEL_3;
      }

LABEL_43:
      v88 = OUTLINED_FUNCTION_48_15();
      starttest(v88, v89);
      v90 = OUTLINED_FUNCTION_71_12();
      if (lpta_loadp_setscan_l(v90, v91, v92) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
      {
LABEL_45:
        v16 = v17;
        lpta_rpta_loadp(v2, v108, &v106);
      }

      else
      {
        v98 = OUTLINED_FUNCTION_60_13();
        bspush_ca_scan(v98, v99);
        OUTLINED_FUNCTION_5_36();
        v100 = test_string_s();
        v16 = v17;
        v33 = v17;
        if (v100)
        {
          goto LABEL_13;
        }

LABEL_50:
        v16 = v33;
        lpta_rpta_loadp(v2, v108, &v106);
      }

      v93 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v93, v94, v95, v96, v97))
      {
        goto LABEL_40;
      }
    }

    else
    {
LABEL_10:
      v101 = v5;
      OUTLINED_FUNCTION_104_6();
      savescptr(v2, v24, v105);
      OUTLINED_FUNCTION_82_10();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_61_13();
        bspush_ca_scan_boa();
        *(v2 + 136) = v17;
        v25 = OUTLINED_FUNCTION_9_35();
        if (!test_ptr(v25, v26, v27))
        {
          v16 = 1;
        }
      }
    }

LABEL_13:
    v28 = v16;
    LOBYTE(v17) = 8;
    while (2)
    {
      v29 = *(v2 + 104);
      if (v29)
      {
        v30 = OUTLINED_FUNCTION_92_9(v29);
        v32 = v31;
      }

      else
      {
        v30 = vback(v2, v28);
        v32 = 0;
      }

      v33 = v32;
      switch(v30)
      {
        case 1:
          v17 = v32;
          v5 = v101;
          goto LABEL_5;
        case 2:
          v16 = v32;
          v5 = v101;
          goto LABEL_10;
        case 3:
          bspop_boa(v2);
          v34 = lpta_loadp_setscan_r(v2, v105, 1);
          v28 = v32;
          if (v34)
          {
            continue;
          }

          v37 = advance_tok(v2, v32, v35, v36);
          v28 = v32;
          if (v37)
          {
            continue;
          }

          OUTLINED_FUNCTION_5_36();
          v38 = test_string_s();
          v28 = v32;
          if (v38)
          {
            continue;
          }

          goto LABEL_21;
        case 4:
LABEL_21:
          v39 = OUTLINED_FUNCTION_147_4();
          savescptr(v39, v40, &v106);
          v41 = OUTLINED_FUNCTION_154_3();
          starttest(v41, v42);
          v43 = OUTLINED_FUNCTION_125_4();
          if (lpta_loadp_setscan_l(v43, v44, 1))
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        case 5:
LABEL_22:
          v45 = OUTLINED_FUNCTION_80_11();
          starttest(v45, v46);
          OUTLINED_FUNCTION_87_9();
          v47 = OUTLINED_FUNCTION_69_12();
          if (setd_lookup(v47, v48, 42))
          {
            goto LABEL_24;
          }

          v49 = OUTLINED_FUNCTION_74_12();
          lpta_rpta_loadp(v49, v50, &v106);
          v51 = OUTLINED_FUNCTION_0_40();
          if (insert_2pt_s(v51, v52, v53, &unk_28064B82D, v54))
          {
            goto LABEL_24;
          }

          goto LABEL_40;
        case 6:
LABEL_25:
          v62 = OUTLINED_FUNCTION_95_8();
          savescptr(v62, v63, v105);
          v67 = advance_tok(v2, v64, v65, v66);
          v28 = v32;
          if (!v67)
          {
            v70 = advance_tok(v2, v32, v68, v69);
            v28 = v32;
            if (!v70)
            {
              OUTLINED_FUNCTION_13_34();
              v71 = test_string_s();
              v28 = v32;
              if (!v71)
              {
                goto LABEL_28;
              }
            }
          }

          continue;
        case 7:
LABEL_28:
          v72 = OUTLINED_FUNCTION_119_4();
          savescptr(v72, v73, v104);
          v74 = lpta_loadp_setscan_r(v2, v105, 1);
          v28 = v32;
          if (!v74)
          {
            OUTLINED_FUNCTION_5_36();
            v75 = test_string_s();
            v28 = v32;
            if (!v75)
            {
              goto LABEL_30;
            }
          }

          continue;
        case 8:
LABEL_30:
          v76 = OUTLINED_FUNCTION_97_7();
          savescptr(v76, v77, v103);
          v78 = OUTLINED_FUNCTION_110_4();
          bspush_ca(v78);
          lpta_loadpn(v2, v104);
          v79 = v2 + 1640;
          goto LABEL_36;
        case 9:
          lpta_loadpn(v2, v103);
          v79 = v2 + 1656;
LABEL_36:
          rpta_loadpn(v2, v79);
          v83 = compare_ptas(v2);
          v28 = v32;
          if (!v83)
          {
            v84 = testeq(v2);
            v28 = v32;
            if (!v84)
            {
              goto LABEL_38;
            }
          }

          continue;
        case 10:
LABEL_38:
          v85 = OUTLINED_FUNCTION_74_12();
          lpta_rpta_loadp(v85, v86, &v106);
          v57 = OUTLINED_FUNCTION_0_40();
          v61 = &unk_28064B82D;
          goto LABEL_39;
        case 11:
        case 13:
        case 16:
          goto LABEL_40;
        case 12:
LABEL_24:
          v55 = OUTLINED_FUNCTION_74_12();
          lpta_rpta_loadp(v55, v56, &v106);
          v57 = OUTLINED_FUNCTION_0_40();
          v61 = &unk_28064B82E;
LABEL_39:
          inserted = insert_2pt_s(v57, v58, v59, v61, v60);
          v28 = v32;
          if (!inserted)
          {
            goto LABEL_40;
          }

          continue;
        case 14:
        case 17:
          v17 = v32;
          goto LABEL_45;
        case 15:
          v17 = v32;
          goto LABEL_43;
        case 18:
          v80 = OUTLINED_FUNCTION_112_4();
          bspush_ca_scan(v80, v81);
          OUTLINED_FUNCTION_5_36();
          goto LABEL_33;
        case 19:
          goto LABEL_50;
        case 20:
          OUTLINED_FUNCTION_5_36();
LABEL_33:
          v82 = test_string_s();
          v33 = v32;
          v28 = v32;
          if (!v82)
          {
            goto LABEL_50;
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_131_4();
}

void m_rules(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v118 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_159_3();
  OUTLINED_FUNCTION_84_10(v4, v5, v6, v7, v8, v9, v10, v11, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v113);
  OUTLINED_FUNCTION_89_9();
  bzero(v117, v12);
  v13 = setjmp(v117);
  if (v13 || OUTLINED_FUNCTION_141_4(v13, v14, v15, v16, v17, v18, v19, v20, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v112, v113, v114, v115, v116[0], v116[1], v116[2], SHIDWORD(v116[2]), v116[3], SWORD2(v116[3]), SHIWORD(v116[3]), v116[4], SWORD2(v116[4]), SBYTE6(v116[4]), SHIBYTE(v116[4]), v116[5], v117[0]))
  {
    goto LABEL_3;
  }

  v21 = OUTLINED_FUNCTION_86_9();
  get_parm(v21, v22, v23, -6);
  v24 = OUTLINED_FUNCTION_80_11();
  OUTLINED_FUNCTION_129_4(v24, v25);
  v26 = OUTLINED_FUNCTION_117_4();
  push_ptr_init(v26, v27);
  fence_37(v2, 0, &null_str_14);
  v28 = OUTLINED_FUNCTION_21_27();
  fence_37(v28, v29, v30);
  v31 = OUTLINED_FUNCTION_63_12();
  if (!lpta_loadp_setscan_r(v31, v32, v33))
  {
    *(v2 + 136) = v3;
    v34 = OUTLINED_FUNCTION_9_35();
    if (!test_ptr(v34, v35, v36))
    {
      OUTLINED_FUNCTION_5_36();
      if (!test_string_s())
      {
        goto LABEL_21;
      }
    }
  }

  while (2)
  {
    v37 = OUTLINED_FUNCTION_74_12();
    starttest(v37, v38);
    v39 = OUTLINED_FUNCTION_80_11();
    if (lpta_loadp_setscan_r(v39, v40, 1))
    {
LABEL_20:
      v62 = OUTLINED_FUNCTION_119_4();
      lpta_rpta_loadp(v62, v63, &v114);
      v55 = OUTLINED_FUNCTION_0_40();
      v59 = &unk_28064B827;
LABEL_14:
      if (insert_2pt_s(v55, v56, v57, v59, v58))
      {
        goto LABEL_15;
      }

LABEL_21:
      OUTLINED_FUNCTION_100_6(v115);
      break;
    }

LABEL_8:
    v41 = OUTLINED_FUNCTION_112_4();
    savescptr(v41, v42, &v112);
    OUTLINED_FUNCTION_5_36();
    if (!test_string_s())
    {
LABEL_9:
      v43 = OUTLINED_FUNCTION_107_4();
      savescptr(v43, v44, v45);
      v46 = OUTLINED_FUNCTION_93_9();
      if (!lpta_loadp_setscan_l(v46, v47, 1) && !advance_tok(v2, v48, v49, v50))
      {
        v51 = OUTLINED_FUNCTION_154_3();
        bspush_ca_scan(v51, v52);
        OUTLINED_FUNCTION_13_34();
LABEL_12:
        if (!test_string_s())
        {
LABEL_13:
          v53 = OUTLINED_FUNCTION_119_4();
          lpta_rpta_loadp(v53, v54, &v114);
          v55 = OUTLINED_FUNCTION_0_40();
          v59 = &unk_28064B828;
          goto LABEL_14;
        }
      }
    }

LABEL_15:
    v60 = *(v2 + 104);
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_92_9(v60);
    }

    else
    {
      v61 = OUTLINED_FUNCTION_136_4();
    }

    switch(v61)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_21;
      case 3:
        goto LABEL_20;
      case 4:
        goto LABEL_8;
      case 5:
        goto LABEL_9;
      case 6:
        OUTLINED_FUNCTION_13_34();
        goto LABEL_12;
      case 7:
        goto LABEL_13;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_135_4();
  OUTLINED_FUNCTION_131_4();
}

uint64_t n_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  v62 = *MEMORY[0x277D85DE8];
  v58[0] = 0;
  v58[1] = 0;
  OUTLINED_FUNCTION_40_16(v3, v4, v5, v6, v7, v8, v9, v10, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v53, v54, v55, v56[0], v56[1], v56[2], v57);
  OUTLINED_FUNCTION_55_14();
  v11 = setjmp(v2);
  if (v11 || OUTLINED_FUNCTION_137_4(v11, v52, v61, v60, v59))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_86_9();
  get_parm(v13, v14, v15, -6);
  OUTLINED_FUNCTION_41_15();
  v16 = OUTLINED_FUNCTION_94_8();
  push_ptr_init(v16, v17);
  OUTLINED_FUNCTION_102_6();
  fence_37(v1, 0, &null_str_14);
  v18 = OUTLINED_FUNCTION_56_13();
  fence_37(v18, v19, v20);
  OUTLINED_FUNCTION_143_4();
  v21 = OUTLINED_FUNCTION_74_12();
  lpta_loadpn(v21, v22);
  v23 = OUTLINED_FUNCTION_105_5();
  rpta_loadpn(v23, v24);
  if (compare_ptas(v1) || testeq(v1) || lpta_loadp_setscan_l(v1, v58, 2))
  {
LABEL_16:
    v43 = OUTLINED_FUNCTION_115_4();
    lpta_rpta_loadp(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_0_40();
    if (insert_2pt_s(v46, v47, v48, v49, v50))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  while (2)
  {
    savescptr(v1, 2, v56);
    v25 = OUTLINED_FUNCTION_73_12();
    if (!testFldeq(v25, v26, 11, 1) && !advance_tok(v1, v27, v28, v29))
    {
LABEL_9:
      OUTLINED_FUNCTION_109_4();
      savescptr(v1, v30, v1 + 1272);
      v31 = OUTLINED_FUNCTION_52_14();
      starttest(v31, v32);
      is_liaison_con(v1);
      if (!v33)
      {
        v34 = OUTLINED_FUNCTION_115_4();
        lpta_rpta_loadp(v34, v35, v36);
        OUTLINED_FUNCTION_74_12();
        settvar_s();
        v37 = OUTLINED_FUNCTION_69_12();
        npush_s(v37);
        WORD1(v53) = 17;
        v38 = OUTLINED_FUNCTION_74_12();
        npop(v38, v39);
        OUTLINED_FUNCTION_37_17();
        insert_2ptv();
        if (v40)
        {
          goto LABEL_12;
        }

        lpta_rpta_loadp(v1, v1 + 1272, v56);
        OUTLINED_FUNCTION_7_36();
        if (mark_s())
        {
          goto LABEL_12;
        }
      }

LABEL_17:
      OUTLINED_FUNCTION_100_6(v57);
      break;
    }

LABEL_12:
    v41 = *(v1 + 104);
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_92_9(v41);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_136_4();
    }

    switch(v42)
    {
      case 1:
        goto LABEL_16;
      case 2:
        continue;
      case 3:
        goto LABEL_9;
      case 4:
      case 5:
        goto LABEL_17;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_157_3();
}

void p_rules(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  v159 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_36(v5, v6, v7, v8, v9, v10, v11, v12, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v155, v156, v157);
  OUTLINED_FUNCTION_89_9();
  bzero(v158, v13);
  if (!setjmp(v158))
  {
    OUTLINED_FUNCTION_19_28();
    if (!ventproc(v3, v14, v15, v16, v17, v158))
    {
      v18 = OUTLINED_FUNCTION_67_12();
      get_parm(v18, v19, v20, -6);
      OUTLINED_FUNCTION_41_15();
      v21 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v21, v22);
      v23 = 0;
      v24 = OUTLINED_FUNCTION_98_7();
      v27 = fence_37(v24, v25, v26);
      OUTLINED_FUNCTION_111_4(v27, v28, &unk_28064B83D);
      v29 = OUTLINED_FUNCTION_116_4();
      starttest(v29, v30);
      v31 = OUTLINED_FUNCTION_74_12();
      if (!lpta_loadp_setscan_r(v31, v32, v4))
      {
        OUTLINED_FUNCTION_5_36();
        v23 = 0;
        v33 = 0;
        if (!test_string_s())
        {
          while (2)
          {
            savescptr(v3, 2, &v154);
            v34 = OUTLINED_FUNCTION_76_12();
            lpta_rpta_loadp(v34, v35, &v154);
            v36 = OUTLINED_FUNCTION_73_12();
LABEL_36:
            inserted = insert_2pt_s(v36, v37, 1, v38, v39);
LABEL_37:
            v62 = v33;
            if (!inserted)
            {
LABEL_38:
              OUTLINED_FUNCTION_100_6(v155);
              goto LABEL_3;
            }

LABEL_18:
            v33 = v62;
LABEL_19:
            v63 = v3[13];
            if (v63)
            {
              v52 = OUTLINED_FUNCTION_92_9(v63);
              v33 = v53;
            }

            else
            {
              v52 = vback(v3, v33);
              v33 = 0;
            }

            switch(v52)
            {
              case 1:
                v23 = v33;
                break;
              case 2:
                continue;
              case 3:
              case 6:
              case 12:
                goto LABEL_38;
              case 4:
                v40 = v33;
                goto LABEL_33;
              case 5:
                v40 = v33;
                goto LABEL_13;
              case 7:
                v40 = v33;
                goto LABEL_29;
              case 8:
                bspop_boa(v3);
                goto LABEL_38;
              case 9:
                goto LABEL_34;
              case 10:
                v40 = v33;
                goto LABEL_40;
              case 11:
                v64 = OUTLINED_FUNCTION_74_12();
                bspush_ca_scan(v64, v65);
                OUTLINED_FUNCTION_29_23();
                goto LABEL_25;
              case 13:
                OUTLINED_FUNCTION_12_35();
LABEL_25:
                if (!test_string_s())
                {
                  goto LABEL_38;
                }

                goto LABEL_19;
              case 14:
                goto LABEL_35;
              case 15:
                v40 = v33;
                goto LABEL_45;
              case 16:
                goto LABEL_50;
              default:
                goto LABEL_3;
            }

            break;
          }
        }
      }

      v40 = v23;
      v41 = OUTLINED_FUNCTION_75_12();
      lpta_loadpn(v41, v42);
      v43 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v43, v44);
      if (!compare_ptas(v3) && !testeq(v3))
      {
        OUTLINED_FUNCTION_87_9();
        v45 = OUTLINED_FUNCTION_69_12();
        if (!setd_lookup(v45, v46, 44))
        {
          goto LABEL_38;
        }

LABEL_13:
        v47 = OUTLINED_FUNCTION_50_15();
        starttest(v47, v48);
        v49 = OUTLINED_FUNCTION_11_35();
        v52 = lpta_loadp_setscan_l(v49, v50, v51);
        if (!v52)
        {
          OUTLINED_FUNCTION_5_36();
          v52 = test_string_s();
          if (!v52)
          {
            OUTLINED_FUNCTION_32_20();
            bspush_ca_boa();
            OUTLINED_FUNCTION_87_9();
            v60 = OUTLINED_FUNCTION_69_12();
            if (setd_lookup(v60, v61, 43))
            {
              v62 = v40;
            }

            else
            {
              v62 = 1;
            }

            goto LABEL_18;
          }
        }

LABEL_29:
        OUTLINED_FUNCTION_83_10(v52, v53, v54, v55, v56, v57, v58, v59, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v154, v155);
        v66 = OUTLINED_FUNCTION_0_40();
        v71 = insert_2pt_s(v66, v67, v68, v69, v70);
        goto LABEL_30;
      }

LABEL_33:
      v33 = v40;
      v72 = OUTLINED_FUNCTION_39_16();
      starttest(v72, v73);
      v74 = OUTLINED_FUNCTION_10_35();
      if (lpta_loadp_setscan_r(v74, v75, v76))
      {
LABEL_34:
        v77 = OUTLINED_FUNCTION_47_15();
        starttest(v77, v78);
        v79 = OUTLINED_FUNCTION_10_35();
        v52 = lpta_loadp_setscan_l(v79, v80, v81);
        v40 = v33;
        if (v52)
        {
LABEL_35:
          OUTLINED_FUNCTION_83_10(v52, v53, v54, v55, v56, v57, v58, v59, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v154, v155);
          v36 = OUTLINED_FUNCTION_7_36();
          goto LABEL_36;
        }

LABEL_45:
        OUTLINED_FUNCTION_81_11(15, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151);
        if (!advance_tok(v3, v91, v92, v93))
        {
          OUTLINED_FUNCTION_5_36();
          if (!test_string_s())
          {
            v94 = OUTLINED_FUNCTION_16_33();
            if (!lpta_loadp_setscan_r(v94, v95, v96))
            {
              OUTLINED_FUNCTION_5_36();
              v97 = test_string_s();
              v62 = v40;
              v33 = v40;
              if (v97)
              {
                goto LABEL_18;
              }

LABEL_50:
              v98 = OUTLINED_FUNCTION_85_10();
              savescptr(v98, v99, v100);
              inserted = OUTLINED_FUNCTION_4_37(v101, v102, v103);
              goto LABEL_37;
            }
          }
        }
      }

      else
      {
LABEL_40:
        OUTLINED_FUNCTION_81_11(10, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151);
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v83 = OUTLINED_FUNCTION_16_33();
          if (!lpta_loadp_setscan_l(v83, v84, v85) && !advance_tok(v3, v86, v87, v88))
          {
            v89 = OUTLINED_FUNCTION_42_15();
            bspush_ca_scan(v89, v90);
            OUTLINED_FUNCTION_13_34();
            v71 = test_string_s();
LABEL_30:
            v62 = v40;
            if (!v71)
            {
              goto LABEL_38;
            }

            goto LABEL_18;
          }
        }
      }

      v62 = v40;
      goto LABEL_18;
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_126_4();
  OUTLINED_FUNCTION_161_3();
}

void q_rules(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_18_32();
  v232 = *MEMORY[0x277D85DE8];
  v229 = 0;
  v230 = 0;
  OUTLINED_FUNCTION_8_36(v5, v6, v7, v8, v9, v10, v11, v12, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227[0], v227[1], v227[2], v227[3], v227[4], v228);
  OUTLINED_FUNCTION_89_9();
  bzero(v231, v13);
  if (setjmp(v231))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_46_15();
  if (ventproc(v3, v14, v15, v16, v17, v231))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_78_11();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_41_15();
  v21 = OUTLINED_FUNCTION_75_12();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v23, v24);
  v25 = 0;
  v26 = OUTLINED_FUNCTION_98_7();
  v29 = fence_37(v26, v27, v28);
  OUTLINED_FUNCTION_111_4(v29, v30, &unk_28064B83D);
  v31 = OUTLINED_FUNCTION_116_4();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_74_12();
  if (lpta_loadp_setscan_r(v33, v34, v4) || (OUTLINED_FUNCTION_5_36(), v25 = 0, LODWORD(v35) = 0, test_string_s()))
  {
LABEL_60:
    v147 = OUTLINED_FUNCTION_20_28();
    lpta_rpta_loadp(v147, v148, v149);
    v150 = OUTLINED_FUNCTION_0_40();
    if (!insert_2pt_s(v150, v151, v152, v153, v154))
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_8:
    v25 = v35;
    OUTLINED_FUNCTION_104_6();
    v36 = OUTLINED_FUNCTION_91_9();
    savescptr(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_3_38();
    if (!testFldeq(v39, v40, v41, v42) && !advance_tok(v3, v43, v44, v45))
    {
      v46 = OUTLINED_FUNCTION_20_28();
      lpta_rpta_loadp(v46, v47, v48);
      v49 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v49, v50, v51, v52, v53))
      {
        v54 = OUTLINED_FUNCTION_61_13();
        starttest(v54, v55);
        v56 = OUTLINED_FUNCTION_11_35();
        if (lpta_loadp_setscan_r(v56, v57, v58))
        {
          v59 = v35;
LABEL_13:
          v60 = OUTLINED_FUNCTION_44_15();
          starttest(v60, v61);
          v62 = OUTLINED_FUNCTION_33_20();
          v25 = v59;
          if (lpta_loadp_setscan_l(v62, v63, v64))
          {
LABEL_14:
            v25 = v59;
            v65 = OUTLINED_FUNCTION_60_13();
            starttest(v65, v66);
            v67 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_r(v67, v68, v69))
            {
              goto LABEL_24;
            }

            v70 = OUTLINED_FUNCTION_70_12();
            bspush_ca_scan(v70, v71);
            OUTLINED_FUNCTION_5_36();
            if (!test_string_s())
            {
LABEL_16:
              OUTLINED_FUNCTION_87_9();
              v72 = OUTLINED_FUNCTION_21_27();
              if (!setd_lookup(v72, v73, 38))
              {
LABEL_74:
                *(v3 + 168) = v35;
                *(v3 + 144) = v228;
                *(v3 + 128) = 0;
                goto LABEL_23;
              }

LABEL_17:
              OUTLINED_FUNCTION_87_9();
              v74 = OUTLINED_FUNCTION_21_27();
              if (!setd_lookup(v74, v75, 40))
              {
                *(v3 + 168) = v35;
LABEL_22:
                *(v3 + 144) = v228;
                *(v3 + 128) = 0;
LABEL_23:
                v86 = OUTLINED_FUNCTION_1_39();
                insert_l(v86, v87);
              }

LABEL_24:
              OUTLINED_FUNCTION_100_6(v228);
              goto LABEL_3;
            }
          }

          else
          {
LABEL_64:
            v155 = OUTLINED_FUNCTION_85_10();
            savescptr(v155, v156, v157);
            OUTLINED_FUNCTION_17_33();
            if (!test_string_s())
            {
              *(v3 + 136) = 1;
              v158 = OUTLINED_FUNCTION_9_35();
              if (!test_ptr(v158, v159, v160))
              {
                v161 = OUTLINED_FUNCTION_10_35();
                if (!lpta_loadp_setscan_r(v161, v162, v163) && !advance_tok(v3, v164, v165, v166) && !advance_tok(v3, v167, v168, v169))
                {
                  OUTLINED_FUNCTION_5_36();
                  v59 = v25;
                  if (!test_string_s())
                  {
LABEL_70:
                    OUTLINED_FUNCTION_81_11(21, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v227[0]);
                    OUTLINED_FUNCTION_58_13();
                    bspush_ca_scan_boa();
                    if (OUTLINED_FUNCTION_4_37(v170, v171, v172))
                    {
                      v25 = v59;
                    }

                    else
                    {
                      v25 = 1;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v76 = OUTLINED_FUNCTION_52_14();
          bspush_ca_scan(v76, v77);
          OUTLINED_FUNCTION_5_36();
          v78 = test_string_s();
          v79 = v35;
          if (!v78)
          {
LABEL_20:
            v25 = v79;
            v80 = OUTLINED_FUNCTION_51_14();
            starttest(v80, v81);
            v82 = OUTLINED_FUNCTION_11_35();
            v85 = v25;
            if (lpta_loadp_setscan_l(v82, v83, v84))
            {
LABEL_38:
              v118 = OUTLINED_FUNCTION_66_12();
              starttest(v118, v119);
              v120 = OUTLINED_FUNCTION_59_13();
              bspush_ca(v120);
              v121 = OUTLINED_FUNCTION_11_35();
              v124 = v25;
              if (!lpta_loadp_setscan_r(v121, v122, v123))
              {
LABEL_39:
                v125 = OUTLINED_FUNCTION_85_10();
                savescptr(v125, v126, v127);
                OUTLINED_FUNCTION_5_36();
                if (test_string_s() || (v128 = OUTLINED_FUNCTION_10_35(), lpta_loadp_setscan_l(v128, v129, v130)) || advance_tok(v3, v131, v132, v133) || advance_tok(v3, v134, v135, v136))
                {
                  v25 = v124;
                }

                else
                {
                  v175 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v175, v176);
                  OUTLINED_FUNCTION_5_36();
                  v177 = test_string_s();
                  v140 = v124;
                  v25 = v124;
                  if (!v177)
                  {
LABEL_76:
                    v25 = v140;
                    OUTLINED_FUNCTION_96_7();
                    v178 = OUTLINED_FUNCTION_9_35();
                    if (!test_ptr(v178, v179, v180))
                    {
LABEL_58:
                      *(v3 + 168) = 1;
                      goto LABEL_22;
                    }
                  }
                }
              }
            }

            else
            {
LABEL_26:
              v25 = v85;
              v88 = OUTLINED_FUNCTION_85_10();
              savescptr(v88, v89, v90);
              if (!advance_tok(v3, v91, v92, v93) && !advance_tok(v3, v94, v95, v96))
              {
                OUTLINED_FUNCTION_96_7();
                v97 = OUTLINED_FUNCTION_9_35();
                if (!test_ptr(v97, v98, v99))
                {
                  v100 = OUTLINED_FUNCTION_10_35();
                  if (!lpta_loadp_setscan_r(v100, v101, v102))
                  {
                    OUTLINED_FUNCTION_29_23();
                    if (!test_string_s())
                    {
                      v103 = OUTLINED_FUNCTION_32_20();
                      starttest(v103, v104);
                      v105 = OUTLINED_FUNCTION_39_16();
                      bspush_ca(v105);
                      v106 = OUTLINED_FUNCTION_11_35();
                      if (!lpta_loadp_setscan_r(v106, v107, v108) && !advance_tok(v3, v109, v110, v111) && !advance_tok(v3, v112, v113, v114) && !advance_tok(v3, v115, v116, v117))
                      {
                        OUTLINED_FUNCTION_29_23();
                        if (!test_string_s())
                        {
                          goto LABEL_24;
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

  v35 = &_MergedGlobals_33;
  v59 = v25;
  while (2)
  {
    v137 = *(v3 + 104);
    if (v137)
    {
      v138 = OUTLINED_FUNCTION_92_9(v137);
      v59 = v139;
    }

    else
    {
      v138 = vback(v3, v59);
      v59 = 0;
    }

    v79 = v59;
    v140 = v59;
    switch(v138)
    {
      case 1:
        v25 = v59;
        goto LABEL_60;
      case 2:
        LODWORD(v35) = v59;
        goto LABEL_8;
      case 3:
        goto LABEL_13;
      case 4:
        OUTLINED_FUNCTION_5_36();
        v141 = test_string_s();
        v79 = v59;
        if (!v141)
        {
          goto LABEL_20;
        }

        continue;
      case 5:
        goto LABEL_20;
      case 6:
        v25 = v59;
        goto LABEL_38;
      case 7:
        v85 = v59;
        goto LABEL_26;
      case 8:
      case 17:
        goto LABEL_58;
      case 9:
        OUTLINED_FUNCTION_87_9();
        v143 = OUTLINED_FUNCTION_69_12();
        if (!setd_lookup(v143, v144, 37))
        {
          goto LABEL_24;
        }

        continue;
      case 10:
      case 11:
      case 12:
      case 18:
      case 23:
      case 27:
      case 28:
        goto LABEL_24;
      case 13:
        OUTLINED_FUNCTION_87_9();
        v145 = OUTLINED_FUNCTION_69_12();
        if (!setd_lookup(v145, v146, 38))
        {
          goto LABEL_58;
        }

        continue;
      case 14:
        v124 = v59;
        goto LABEL_39;
      case 15:
        OUTLINED_FUNCTION_5_36();
        v142 = test_string_s();
        v140 = v59;
        if (!v142)
        {
          goto LABEL_76;
        }

        continue;
      case 16:
        goto LABEL_76;
      case 19:
        goto LABEL_14;
      case 20:
        v25 = v59;
        goto LABEL_64;
      case 21:
        goto LABEL_70;
      case 22:
        bspop_boa(v3);
        lpta_rpta_loadp(v3, v227, v3 + 1656);
        v173 = OUTLINED_FUNCTION_21_27();
        if (!setd_lookup(v173, v174, 39))
        {
          goto LABEL_74;
        }

        goto LABEL_24;
      case 24:
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          goto LABEL_16;
        }

        continue;
      case 25:
        goto LABEL_16;
      case 26:
        goto LABEL_17;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_135_4();
  OUTLINED_FUNCTION_161_3();
}

uint64_t r_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v3, v4, v5, v6, v7, v8, v9, v10, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v152);
  OUTLINED_FUNCTION_64_12(v11, v12, v13, v14, v15, v16, v17, v18, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v153, v155, v157, v159, v161);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_14_34(v19, v20, v21, v22, v23, v24, v25, v26, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154, v156, SHIDWORD(v156), v158, SWORD2(v158), SHIWORD(v158), v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v162, v163))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v37, v38, v39, v40, 0);
    if (inserted)
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v42, v43, v44, v45, v46, v47, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_118_4();
}

uint64_t s_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_8_36(v4, v5, v6, v7, v8, v9, v10, v11, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v362, v364, v366, v368, v370, v372, v374, v376, v378, v380, v382, v384, v386, v388, v390, v392, v393);
  OUTLINED_FUNCTION_55_14();
  if (setjmp(v3) || (OUTLINED_FUNCTION_19_28(), OUTLINED_FUNCTION_137_4(v12, v13, v14, v15, v16)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v18 = OUTLINED_FUNCTION_67_12();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_129_4(v21, v22);
  v23 = OUTLINED_FUNCTION_77_11();
  push_ptr_init(v23, v24);
  v25 = 0;
  v26 = OUTLINED_FUNCTION_98_7();
  fence_37(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_56_13();
  fence_37(v29, v30, v31);
  OUTLINED_FUNCTION_143_4();
  *(v1 + 136) = v3;
  v32 = OUTLINED_FUNCTION_9_35();
  setscan_nof_l(v32, v3, v33);
  v34 = 0;
  if (!v35)
  {
LABEL_12:
    OUTLINED_FUNCTION_81_11(2, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385);
LABEL_13:
    bspush_ca_scan_boa();
    v52 = OUTLINED_FUNCTION_69_12();
    if (testFldeq(v52, v53, v54, 2))
    {
      LODWORD(v34) = v25;
    }

    else
    {
      LODWORD(v34) = 1;
    }

    goto LABEL_16;
  }

LABEL_5:
  v36 = v34;
  v37 = OUTLINED_FUNCTION_70_12();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_11_35();
  if (!lpta_loadp_setscan_l(v39, v40, v41))
  {
LABEL_6:
    OUTLINED_FUNCTION_81_11(43, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385);
    OUTLINED_FUNCTION_12_35();
    if (test_string_s())
    {
      goto LABEL_16;
    }

    v42 = OUTLINED_FUNCTION_16_33();
    if (lpta_loadp_setscan_r(v42, v43, v44))
    {
      goto LABEL_16;
    }

    if (advance_tok(v1, v45, v46, v47))
    {
      goto LABEL_16;
    }

    v48 = OUTLINED_FUNCTION_3_38();
    v25 = v34;
    if (testFldeq(v48, v49, v50, v51))
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_102:
  v235 = OUTLINED_FUNCTION_10_35();
  if (!lpta_loadp_setscan_r(v235, v236, v237))
  {
    OUTLINED_FUNCTION_5_36();
    v34 = v36;
    if (!test_string_s())
    {
LABEL_122:
      v226 = v34;
      v280 = OUTLINED_FUNCTION_85_10();
      savescptr(v280, v281, v282);
      v283 = OUTLINED_FUNCTION_70_12();
      starttest(v283, v284);
      v285 = OUTLINED_FUNCTION_70_12();
      bspush_ca(v285);
      v286 = OUTLINED_FUNCTION_99_7();
      lpta_loadpn(v286, v287);
      v288 = OUTLINED_FUNCTION_76_12();
      rpta_loadpn(v288, v289);
      if (!compare_ptas(v1))
      {
        v57 = testeq(v1);
        v63 = v34;
        if (!v57)
        {
LABEL_124:
          LODWORD(v34) = v63;
          OUTLINED_FUNCTION_83_10(v57, v55, v63, v58, v59, v60, v61, v62, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391);
          goto LABEL_125;
        }

        goto LABEL_16;
      }

LABEL_137:
      LODWORD(v34) = v226;
      goto LABEL_16;
    }
  }

LABEL_104:
  v238 = OUTLINED_FUNCTION_70_12();
  starttest(v238, v239);
  v240 = OUTLINED_FUNCTION_10_35();
  if (lpta_loadp_setscan_r(v240, v241, v242) || (OUTLINED_FUNCTION_5_36(), LODWORD(v34) = v36, test_string_s()))
  {
LABEL_106:
    v243 = OUTLINED_FUNCTION_70_12();
    starttest(v243, v244);
    v245 = OUTLINED_FUNCTION_11_35();
    lpta_loadp_setscan_l(v245, v246, v247);
    OUTLINED_FUNCTION_138_4();
    if (!v249)
    {
LABEL_109:
      OUTLINED_FUNCTION_81_11(72, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385);
      OUTLINED_FUNCTION_21_27();
      if (test_string_s())
      {
        goto LABEL_16;
      }

      *(v1 + 136) = v36;
      v255 = OUTLINED_FUNCTION_9_35();
      if (test_ptr(v255, v256, v257))
      {
        goto LABEL_16;
      }

      v258 = OUTLINED_FUNCTION_16_33();
      if (lpta_loadp_setscan_r(v258, v259, v260))
      {
        goto LABEL_16;
      }

      if (advance_tok(v1, v261, v262, v263))
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_5_36();
      v57 = test_string_s();
      if (v57)
      {
        goto LABEL_16;
      }

      goto LABEL_114;
    }

LABEL_107:
    LOBYTE(v36) = v248;
    v250 = OUTLINED_FUNCTION_70_12();
    starttest(v250, v251);
    v252 = OUTLINED_FUNCTION_10_35();
    lpta_loadp_setscan_l(v252, v253, v254);
    OUTLINED_FUNCTION_138_4();
    if (v57)
    {
LABEL_108:
      LODWORD(v34) = v55;
LABEL_114:
      OUTLINED_FUNCTION_83_10(v57, v55, v63, v58, v59, v60, v61, v62, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391);
LABEL_125:
      v290 = OUTLINED_FUNCTION_0_40();
      goto LABEL_144;
    }

LABEL_115:
    OUTLINED_FUNCTION_81_11(74, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385);
    if (!advance_tok(v1, v264, v265, v266))
    {
      v267 = OUTLINED_FUNCTION_3_38();
      if (!testFldeq(v267, v268, v269, v270) && !advance_tok(v1, v271, v272, v273))
      {
        v274 = OUTLINED_FUNCTION_16_33();
        if (!lpta_loadp_setscan_r(v274, v275, v276))
        {
          OUTLINED_FUNCTION_21_27();
          if (!test_string_s())
          {
            *(v1 + 136) = v36;
            v277 = OUTLINED_FUNCTION_9_35();
            if (!test_ptr(v277, v278, v279))
            {
              goto LABEL_145;
            }
          }
        }
      }
    }

    goto LABEL_16;
  }

LABEL_126:
  v295 = OUTLINED_FUNCTION_85_10();
  savescptr(v295, v296, v297);
  if (advance_tok(v1, v298, v299, v300))
  {
    goto LABEL_16;
  }

  v301 = OUTLINED_FUNCTION_10_35();
  if (!lpta_loadp_setscan_r(v301, v302, v303))
  {
    OUTLINED_FUNCTION_5_36();
    v64 = v34;
    if (!test_string_s())
    {
LABEL_99:
      v227 = OUTLINED_FUNCTION_86_9();
      savescptr(v227, v228, v229);
      v230 = OUTLINED_FUNCTION_70_12();
      starttest(v230, v231);
      v232 = OUTLINED_FUNCTION_70_12();
      bspush_ca(v232);
      v233 = OUTLINED_FUNCTION_74_12();
      if (lpta_loadp_setscan_r(v233, v234, 1))
      {
        LODWORD(v34) = v64;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_29_23();
      v57 = test_string_s();
      LODWORD(v34) = v64;
      if (v57)
      {
        goto LABEL_16;
      }

LABEL_142:
      LODWORD(v34) = v64;
      goto LABEL_143;
    }
  }

LABEL_129:
  v304 = OUTLINED_FUNCTION_70_12();
  starttest(v304, v305);
  v306 = OUTLINED_FUNCTION_11_35();
  v226 = v34;
  if (!lpta_loadp_setscan_l(v306, v307, v308))
  {
LABEL_132:
    OUTLINED_FUNCTION_81_11(64, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385);
    OUTLINED_FUNCTION_13_34();
    if (!test_string_s())
    {
      v314 = OUTLINED_FUNCTION_16_33();
      if (!lpta_loadp_setscan_r(v314, v315, v316) && !advance_tok(v1, v317, v318, v319) && !advance_tok(v1, v320, v321, v322))
      {
        OUTLINED_FUNCTION_13_34();
        v323 = test_string_s();
        if (!v323)
        {
          OUTLINED_FUNCTION_83_10(v323, v324, v325, v326, v327, v328, v329, v330, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391);
          v333 = OUTLINED_FUNCTION_0_40();
          LODWORD(v34) = v226;
          if (!insert_2pt_s(v333, v334, v335, v336, v337))
          {
            goto LABEL_145;
          }

          goto LABEL_16;
        }
      }
    }

    goto LABEL_137;
  }

LABEL_130:
  LODWORD(v36) = v34;
  v309 = OUTLINED_FUNCTION_70_12();
  starttest(v309, v310);
  v311 = OUTLINED_FUNCTION_10_35();
  v57 = lpta_loadp_setscan_r(v311, v312, v313);
  if (v57)
  {
LABEL_131:
    LODWORD(v34) = v36;
    goto LABEL_114;
  }

  v331 = OUTLINED_FUNCTION_70_12();
  bspush_ca_scan(v331, v332);
  OUTLINED_FUNCTION_5_36();
  v57 = test_string_s();
  if (v57)
  {
LABEL_16:
    LODWORD(v55) = v34;
    while (1)
    {
      v56 = *(v1 + 104);
      if (v56)
      {
        v57 = OUTLINED_FUNCTION_92_9(v56);
        v34 = v55;
      }

      else
      {
        v57 = vback(v1, v55);
        v34 = 0;
      }

      v63 = v34;
      v64 = v34;
      LODWORD(v36) = v34;
      switch(v57)
      {
        case 1:
          goto LABEL_5;
        case 2:
          v25 = v34;
          goto LABEL_12;
        case 3:
          bspop_boa(v1);
          v172 = advance_tok(v1, v169, v170, v171);
          LODWORD(v55) = v34;
          if (v172)
          {
            continue;
          }

          OUTLINED_FUNCTION_153_3();
          v173 = OUTLINED_FUNCTION_9_35();
          v176 = setscan_nof_r(v173, v174, v175);
          LODWORD(v55) = v34;
          if (v176)
          {
            continue;
          }

          v179 = advance_tok(v1, v34, v177, v178);
          LODWORD(v55) = v34;
          if (v179)
          {
            continue;
          }

          OUTLINED_FUNCTION_128_4();
          bspush_ca_scan_boa();
          v180 = OUTLINED_FUNCTION_69_12();
          v73 = testFldeq(v180, v181, 4, 2);
          goto LABEL_29;
        case 4:
          bspop_boa(v1);
          v77 = advance_tok(v1, v74, v75, v76);
          LODWORD(v55) = v34;
          if (v77)
          {
            continue;
          }

          OUTLINED_FUNCTION_87_9();
          v78 = OUTLINED_FUNCTION_69_12();
          v80 = setd_lookup(v78, v79, 45);
          if (v80)
          {
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_83_10(v80, v81, v82, v83, v84, v85, v86, v87, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391);
          v88 = OUTLINED_FUNCTION_0_40();
          if (insert_2pt_s(v88, v89, v90, v91, v92))
          {
            goto LABEL_35;
          }

          goto LABEL_145;
        case 5:
LABEL_35:
          v93 = OUTLINED_FUNCTION_50_15();
          starttest(v93, v94);
          OUTLINED_FUNCTION_153_3();
          v95 = OUTLINED_FUNCTION_9_35();
          v57 = setscan_nof_r(v95, v96, v97);
          if (v57)
          {
            goto LABEL_70;
          }

          v57 = advance_tok(v1, v55, v63, v58);
          if (v57)
          {
            goto LABEL_70;
          }

          v57 = advance_tok(v1, v55, v63, v58);
          if (v57)
          {
            goto LABEL_70;
          }

          v98 = OUTLINED_FUNCTION_99_7();
          lpta_rpta_loadp(v98, v99, v100);
          v101 = OUTLINED_FUNCTION_69_12();
          v57 = setd_lookup(v101, v102, 9);
          if (v57)
          {
            goto LABEL_70;
          }

          v103 = OUTLINED_FUNCTION_32_20();
          starttest(v103, v104);
          v105 = OUTLINED_FUNCTION_11_35();
          if (lpta_loadp_setscan_l(v105, v106, v107))
          {
LABEL_40:
            v108 = OUTLINED_FUNCTION_42_15();
            starttest(v108, v109);
            v110 = OUTLINED_FUNCTION_11_35();
            if (lpta_loadp_setscan_l(v110, v111, v112))
            {
LABEL_41:
              v113 = OUTLINED_FUNCTION_44_15();
              starttest(v113, v114);
              v115 = OUTLINED_FUNCTION_11_35();
              if (lpta_loadp_setscan_l(v115, v116, v117))
              {
LABEL_42:
                v118 = OUTLINED_FUNCTION_70_12();
                starttest(v118, v119);
                v120 = OUTLINED_FUNCTION_11_35();
                if (lpta_loadp_setscan_l(v120, v121, v122))
                {
LABEL_43:
                  v123 = OUTLINED_FUNCTION_70_12();
                  starttest(v123, v124);
                  v125 = OUTLINED_FUNCTION_11_35();
                  v57 = lpta_loadp_setscan_l(v125, v126, v127);
                  if (v57)
                  {
LABEL_70:
                    OUTLINED_FUNCTION_83_10(v57, v55, v63, v58, v59, v60, v61, v62, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391);
                    v187 = OUTLINED_FUNCTION_0_40();
                    inserted = insert_2pt_s(v187, v188, v189, v190, v191);
                    LODWORD(v55) = v34;
                    if (!inserted)
                    {
                      goto LABEL_145;
                    }
                  }

                  else
                  {
LABEL_44:
                    OUTLINED_FUNCTION_81_11(37, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385);
                    OUTLINED_FUNCTION_13_34();
                    v128 = test_string_s();
                    LODWORD(v55) = v34;
                    if (!v128)
                    {
                      v129 = OUTLINED_FUNCTION_16_33();
                      v132 = lpta_loadp_setscan_r(v129, v130, v131);
                      LODWORD(v55) = v34;
                      if (!v132)
                      {
                        v135 = advance_tok(v1, v34, v133, v134);
                        LODWORD(v55) = v34;
                        if (!v135)
                        {
                          OUTLINED_FUNCTION_70_12();
                          bspush_ca_scan_boa();
                          v136 = OUTLINED_FUNCTION_70_12();
                          bspush_ca_scan(v136, v137);
LABEL_77:
                          OUTLINED_FUNCTION_13_34();
                          goto LABEL_78;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v215 = OUTLINED_FUNCTION_31_21();
                  v218 = testFldeq(v215, v216, v217, 2);
                  LODWORD(v55) = v34;
                  if (!v218)
                  {
                    v219 = OUTLINED_FUNCTION_5_36();
                    v222 = testFldeq(v219, v220, v221, 2);
                    LODWORD(v55) = v34;
                    if (!v222)
                    {
                      v225 = advance_tok(v1, v34, v223, v224);
                      LODWORD(v55) = v34;
                      if (!v225)
                      {
                        goto LABEL_92;
                      }
                    }
                  }
                }
              }

              else
              {
LABEL_48:
                OUTLINED_FUNCTION_81_11(20, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385);
                OUTLINED_FUNCTION_13_34();
                v138 = test_string_s();
                LODWORD(v55) = v34;
                if (!v138)
                {
                  v139 = OUTLINED_FUNCTION_16_33();
                  v142 = lpta_loadp_setscan_r(v139, v140, v141);
                  LODWORD(v55) = v34;
                  if (!v142)
                  {
                    v145 = advance_tok(v1, v34, v143, v144);
                    LODWORD(v55) = v34;
                    if (!v145)
                    {
                      OUTLINED_FUNCTION_70_12();
                      bspush_ca_scan_boa();
                      v146 = OUTLINED_FUNCTION_58_13();
                      bspush_ca_scan(v146, v147);
                      OUTLINED_FUNCTION_5_36();
                      v148 = test_string_s();
                      LODWORD(v55) = v34;
                      if (!v148)
                      {
LABEL_76:
                        v200 = OUTLINED_FUNCTION_70_12();
                        bspush_ca_scan(v200, v201);
                        goto LABEL_77;
                      }
                    }
                  }
                }
              }
            }

            else
            {
LABEL_53:
              OUTLINED_FUNCTION_81_11(12, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385);
              OUTLINED_FUNCTION_29_23();
              v149 = test_string_s();
              LODWORD(v55) = v34;
              if (!v149)
              {
                v150 = OUTLINED_FUNCTION_16_33();
                v153 = lpta_loadp_setscan_r(v150, v151, v152);
                LODWORD(v55) = v34;
                if (!v153)
                {
                  v156 = advance_tok(v1, v34, v154, v155);
                  LODWORD(v55) = v34;
                  if (!v156)
                  {
                    OUTLINED_FUNCTION_59_13();
                    bspush_ca_scan_boa();
                    v157 = OUTLINED_FUNCTION_47_15();
                    bspush_ca_scan(v157, v158);
LABEL_23:
                    OUTLINED_FUNCTION_5_36();
LABEL_78:
                    v202 = test_string_s();
                    LODWORD(v55) = v34;
                    if (!v202)
                    {
LABEL_79:
                      LODWORD(v55) = 1;
                    }
                  }
                }
              }
            }
          }

          else
          {
LABEL_57:
            OUTLINED_FUNCTION_81_11(9, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385);
            OUTLINED_FUNCTION_5_36();
            v159 = test_string_s();
            LODWORD(v55) = v34;
            if (!v159)
            {
              v160 = OUTLINED_FUNCTION_16_33();
              v163 = lpta_loadp_setscan_r(v160, v161, v162);
              LODWORD(v55) = v34;
              if (!v163)
              {
                v166 = advance_tok(v1, v34, v164, v165);
                LODWORD(v55) = v34;
                if (!v166)
                {
LABEL_92:
                  OUTLINED_FUNCTION_5_36();
                  v57 = test_string_s();
LABEL_69:
                  v55 = v34;
                  if (!v57)
                  {
                    goto LABEL_70;
                  }
                }
              }
            }
          }

          break;
        case 6:
        case 10:
        case 41:
        case 53:
        case 61:
        case 62:
          goto LABEL_145;
        case 7:
        case 36:
        case 47:
        case 58:
          goto LABEL_70;
        case 8:
          goto LABEL_40;
        case 9:
          goto LABEL_57;
        case 11:
          goto LABEL_41;
        case 12:
          goto LABEL_53;
        case 13:
        case 21:
        case 38:
          bspop_boa(v1);
          goto LABEL_70;
        case 14:
        case 26:
          goto LABEL_76;
        case 15:
        case 24:
        case 25:
        case 28:
        case 33:
        case 40:
          goto LABEL_79;
        case 16:
          v167 = OUTLINED_FUNCTION_48_15();
          bspush_ca_scan(v167, v168);
          goto LABEL_77;
        case 17:
          v70 = OUTLINED_FUNCTION_60_13();
          bspush_ca_scan(v70, v71);
          goto LABEL_77;
        case 18:
        case 23:
        case 27:
        case 32:
          goto LABEL_77;
        case 19:
          goto LABEL_42;
        case 20:
          goto LABEL_48;
        case 22:
          v67 = OUTLINED_FUNCTION_57_13();
          bspush_ca_scan(v67, v68);
          OUTLINED_FUNCTION_5_36();
          v69 = test_string_s();
          LODWORD(v55) = v34;
          if (v69)
          {
            continue;
          }

          goto LABEL_81;
        case 29:
          goto LABEL_81;
        case 30:
          v203 = OUTLINED_FUNCTION_43_15();
          bspush_ca_scan(v203, v204);
          OUTLINED_FUNCTION_5_36();
          v205 = test_string_s();
          LODWORD(v55) = v34;
          if (v205)
          {
            continue;
          }

LABEL_81:
          v206 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v206, v207);
          OUTLINED_FUNCTION_29_23();
          goto LABEL_78;
        case 31:
          OUTLINED_FUNCTION_5_36();
          v72 = test_string_s();
          LODWORD(v55) = v34;
          if (v72)
          {
            continue;
          }

          OUTLINED_FUNCTION_70_12();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_5_36();
          v73 = test_string_s();
LABEL_29:
          if (v73)
          {
            LODWORD(v55) = v34;
          }

          else
          {
            LODWORD(v55) = 1;
          }

          continue;
        case 34:
          bspop_boa(v1);
          goto LABEL_79;
        case 35:
          goto LABEL_43;
        case 37:
          goto LABEL_44;
        case 39:
          goto LABEL_23;
        case 42:
          v36 = v34;
          goto LABEL_102;
        case 43:
          goto LABEL_6;
        case 44:
          bspop_boa(v1);
          v57 = advance_tok(v1, v184, v185, v186);
          goto LABEL_69;
        case 45:
          LODWORD(v36) = v34;
          goto LABEL_104;
        case 46:
          goto LABEL_122;
        case 48:
          v193 = OUTLINED_FUNCTION_70_12();
          bspush_ca(v193);
          v194 = OUTLINED_FUNCTION_10_35();
          v197 = lpta_loadp_setscan_r(v194, v195, v196);
          LODWORD(v55) = v34;
          if (v197)
          {
            continue;
          }

          v198 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v198, v199);
          OUTLINED_FUNCTION_5_36();
          v57 = test_string_s();
          v55 = v34;
          if (v57)
          {
            continue;
          }

          goto LABEL_74;
        case 49:
          goto LABEL_124;
        case 50:
          v208 = OUTLINED_FUNCTION_70_12();
          bspush_ca(v208);
          v209 = OUTLINED_FUNCTION_11_35();
          v212 = lpta_loadp_setscan_l(v209, v210, v211);
          LODWORD(v55) = v34;
          if (v212)
          {
            continue;
          }

          OUTLINED_FUNCTION_5_36();
          test_string_s();
          goto LABEL_84;
        case 51:
LABEL_74:
          OUTLINED_FUNCTION_4_37(v57, v55, v63);
          goto LABEL_84;
        case 52:
          OUTLINED_FUNCTION_87_9();
          v65 = OUTLINED_FUNCTION_69_12();
          setd_lookup(v65, v66, 19);
LABEL_84:
          OUTLINED_FUNCTION_145_4();
          if (!v57)
          {
            goto LABEL_124;
          }

          continue;
        case 54:
          LOBYTE(v36) = v34;
          goto LABEL_106;
        case 55:
          goto LABEL_126;
        case 56:
          goto LABEL_129;
        case 57:
          v64 = v34;
          goto LABEL_99;
        case 59:
          OUTLINED_FUNCTION_87_9();
          v182 = OUTLINED_FUNCTION_69_12();
          v57 = setd_lookup(v182, v183, 20);
          v64 = v34;
          v55 = v34;
          if (!v57)
          {
            goto LABEL_142;
          }

          continue;
        case 60:
          goto LABEL_142;
        case 63:
          goto LABEL_130;
        case 64:
          v226 = v34;
          goto LABEL_132;
        case 65:
          LODWORD(v36) = v34;
          goto LABEL_131;
        case 66:
        case 68:
        case 69:
          v213 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v213, v214);
          goto LABEL_87;
        case 67:
          goto LABEL_140;
        case 70:
LABEL_87:
          OUTLINED_FUNCTION_5_36();
          test_string_s();
          OUTLINED_FUNCTION_133_4();
          if (!v57)
          {
            goto LABEL_140;
          }

          continue;
        case 71:
          v248 = v34;
          goto LABEL_107;
        case 72:
          goto LABEL_109;
        case 73:
          v55 = v34;
          goto LABEL_108;
        case 74:
          goto LABEL_115;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_140:
  LODWORD(v34) = v36;
LABEL_143:
  OUTLINED_FUNCTION_83_10(v57, v55, v63, v58, v59, v60, v61, v62, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v379, v381, v383, v385, v387, v389, v391);
  v290 = OUTLINED_FUNCTION_1_39();
LABEL_144:
  if (insert_2pt_s(v290, v291, v292, v293, v294))
  {
    goto LABEL_16;
  }

LABEL_145:
  *(v2 + 8) = v391;
  vretproc(v1);
  return 0;
}

void t_rules(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4();
  v4 = v3;
  v6 = v5;
  v276 = *MEMORY[0x277D85DE8];
  v263 = 0;
  v264 = 0;
  v261 = 0;
  v262 = 0;
  *&v7 = OUTLINED_FUNCTION_122_4();
  v257 = v7;
  v258 = v7;
  OUTLINED_FUNCTION_84_10(v8, v9, v10, v11, v12, v13, v14, v15, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255);
  OUTLINED_FUNCTION_89_9();
  bzero(v275, v16);
  v17 = setjmp(v275);
  if (!v17 && !OUTLINED_FUNCTION_142_4(v17, v18, v19, v20, v21, v22, v23, v24, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v257, *(&v257 + 1), v258, *(&v258 + 1), v259, v260[0], v260[1], v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275[0]))
  {
    v25 = OUTLINED_FUNCTION_86_9();
    get_parm(v25, v26, v27, -6);
    v28 = &v261;
    v29 = OUTLINED_FUNCTION_74_12();
    get_parm(v29, v30, v4, -6);
    push_ptr_init(v6, v260);
    v31 = OUTLINED_FUNCTION_117_4();
    push_ptr_init(v31, v32);
    v33 = 0;
    v34 = OUTLINED_FUNCTION_98_7();
    v37 = fence_37(v34, v35, v36);
    OUTLINED_FUNCTION_111_4(v37, v38, &unk_28064B83D);
    v39 = OUTLINED_FUNCTION_116_4();
    starttest(v39, v40);
    v41 = OUTLINED_FUNCTION_74_12();
    if (lpta_loadp_setscan_r(v41, v42, v2) || (OUTLINED_FUNCTION_5_36(), v43 = test_string_s(), v44 = 0, v33 = 0, v43))
    {
LABEL_45:
      v182 = v4;
      v45 = v33;
      lpta_loadpn(v6, &v261);
      v117 = OUTLINED_FUNCTION_105_5();
      rpta_loadpn(v117, v118);
      if (compare_ptas(v6) || testeq(v6))
      {
LABEL_47:
        v119 = OUTLINED_FUNCTION_48_15();
        starttest(v119, v120);
        v121 = OUTLINED_FUNCTION_65_12();
        v124 = lpta_loadp_setscan_l(v121, v122, v123);
        v115 = v45;
        if (v124)
        {
LABEL_48:
          v45 = v115;
          v125 = OUTLINED_FUNCTION_58_13();
          starttest(v125, v126);
          v127 = OUTLINED_FUNCTION_53_14();
          if (!lpta_loadp_setscan_r(v127, v128, v129))
          {
            OUTLINED_FUNCTION_13_34();
            v130 = test_string_s();
            v116 = v45;
            if (!v130)
            {
LABEL_50:
              v45 = v116;
              v131 = OUTLINED_FUNCTION_86_9();
              savescptr(v131, v132, v133);
              v134 = OUTLINED_FUNCTION_86_9();
              lpta_rpta_loadp(v134, v135, v136);
LABEL_23:
              v94 = OUTLINED_FUNCTION_0_40();
              if (insert_2pt_s(v94, v95, v96, v97, v98))
              {
                goto LABEL_24;
              }

              goto LABEL_42;
            }
          }

          goto LABEL_22;
        }

LABEL_51:
        OUTLINED_FUNCTION_151_3(18, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254);
        OUTLINED_FUNCTION_21_27();
        if (!test_string_s())
        {
          *(v6 + 136) = v28;
          v137 = OUTLINED_FUNCTION_9_35();
          if (!test_ptr(v137, v138, v139))
          {
            v140 = OUTLINED_FUNCTION_71_12();
            if (!lpta_loadp_setscan_r(v140, v141, v142) && !advance_tok(v6, v143, v144, v145))
            {
              v146 = OUTLINED_FUNCTION_12_35();
              if (!testFldeq(v146, v147, v148, 2))
              {
                OUTLINED_FUNCTION_44_15();
                bspush_ca_scan_boa();
                v149 = OUTLINED_FUNCTION_31_21();
                if (!testFldeq(v149, v150, v151, 16))
                {
                  v45 = 1;
                }
              }
            }
          }
        }
      }

      else
      {
        v152 = OUTLINED_FUNCTION_42_15();
        starttest(v152, v153);
        v154 = OUTLINED_FUNCTION_65_12();
        if (lpta_loadp_setscan_l(v154, v155, v156))
        {
LABEL_59:
          OUTLINED_FUNCTION_87_9();
          v157 = OUTLINED_FUNCTION_69_12();
          if (!setd_lookup(v157, v158, 47))
          {
            v159 = OUTLINED_FUNCTION_34_18();
            lpta_rpta_loadp(v159, v160, v161);
            v162 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v162, v163, v164, v165, v166))
            {
              goto LABEL_42;
            }
          }

LABEL_61:
          v167 = OUTLINED_FUNCTION_70_12();
          starttest(v167, v168);
          is_liaison_con(v6);
          if (v169 || (v170 = OUTLINED_FUNCTION_34_18(), lpta_rpta_loadp(v170, v171, v172), OUTLINED_FUNCTION_74_12(), settvar_s(), v173 = OUTLINED_FUNCTION_69_12(), npush_s(v173), v174 = OUTLINED_FUNCTION_74_12(), npop(v174, v175), OUTLINED_FUNCTION_37_17(), insert_2ptv(), !v176))
          {
LABEL_42:
            *(v182 + 8) = v262;
            goto LABEL_3;
          }
        }

        else
        {
          v177 = OUTLINED_FUNCTION_66_12();
          bspush_ca_scan(v177, v178);
          OUTLINED_FUNCTION_5_36();
          v179 = test_string_s();
          v103 = v33;
          if (!v179)
          {
LABEL_65:
            v45 = v103;
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
LABEL_8:
      v182 = v4;
      v45 = v44;
      OUTLINED_FUNCTION_104_6();
      v46 = OUTLINED_FUNCTION_115_4();
      savescptr(v46, v47, v48);
      v49 = OUTLINED_FUNCTION_3_38();
      if (!testFldeq(v49, v50, v51, v52) && !advance_tok(v6, v53, v54, v55))
      {
        v56 = OUTLINED_FUNCTION_65_12();
        if (!lpta_loadp_setscan_l(v56, v57, v58))
        {
          OUTLINED_FUNCTION_5_36();
          if (!test_string_s())
          {
            v59 = OUTLINED_FUNCTION_34_18();
            lpta_rpta_loadp(v59, v60, v61);
            v62 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v62, v63, v64, v65, v66))
            {
              goto LABEL_42;
            }
          }
        }

LABEL_13:
        v67 = OUTLINED_FUNCTION_71_12();
        if (lpta_loadp_setscan_r(v67, v68, v69) || (OUTLINED_FUNCTION_21_27(), test_string_s()) || (*(v6 + 136) = v28, v70 = OUTLINED_FUNCTION_9_35(), test_ptr(v70, v71, v72)))
        {
LABEL_16:
          v73 = OUTLINED_FUNCTION_32_20();
          starttest(v73, v74);
          if (!is_t_pron_s_in_ti(v6, &v263, &v261, v260))
          {
            v75 = OUTLINED_FUNCTION_34_18();
            lpta_rpta_loadp(v75, v76, v77);
            v78 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v78, v79, v80, v81, v82))
            {
              goto LABEL_42;
            }
          }

          goto LABEL_22;
        }

        v83 = OUTLINED_FUNCTION_51_14();
        starttest(v83, v84);
        if (OUTLINED_FUNCTION_120_4() || (v85 = OUTLINED_FUNCTION_101_6(), !testFldeq(v85, v86, v87, 1)) && !advance_tok(v6, v88, v89, v90))
        {
LABEL_22:
          v91 = OUTLINED_FUNCTION_34_18();
          lpta_rpta_loadp(v91, v92, v93);
          goto LABEL_23;
        }
      }
    }

LABEL_24:
    LOBYTE(v28) = 14;
    v99 = v45;
    while (2)
    {
      v100 = *(v6 + 104);
      if (v100)
      {
        v101 = OUTLINED_FUNCTION_92_9(v100);
        v45 = v102;
      }

      else
      {
        v101 = vback(v6, v99);
        v45 = 0;
      }

      v103 = v45;
      switch(v101)
      {
        case 1:
          v33 = v45;
          v4 = v182;
          goto LABEL_45;
        case 2:
          v44 = v45;
          v4 = v182;
          goto LABEL_8;
        case 3:
          goto LABEL_13;
        case 4:
        case 7:
        case 9:
        case 15:
          goto LABEL_42;
        case 5:
          goto LABEL_16;
        case 6:
        case 8:
        case 22:
          goto LABEL_22;
        case 10:
          goto LABEL_47;
        case 11:
          goto LABEL_59;
        case 12:
          v104 = OUTLINED_FUNCTION_74_12();
          bspush_ca_scan(v104, v105);
          OUTLINED_FUNCTION_5_36();
          goto LABEL_37;
        case 13:
          goto LABEL_65;
        case 14:
          OUTLINED_FUNCTION_5_36();
LABEL_37:
          v114 = test_string_s();
          v103 = v45;
          v99 = v45;
          if (!v114)
          {
            goto LABEL_65;
          }

          continue;
        case 16:
          goto LABEL_61;
        case 17:
          v115 = v45;
          goto LABEL_48;
        case 18:
          goto LABEL_51;
        case 19:
          bspop_boa(v6);
          v109 = advance_tok(v6, v106, v107, v108);
          v99 = v45;
          if (!v109)
          {
            OUTLINED_FUNCTION_125_4();
            bspush_ca_boa();
            v110 = OUTLINED_FUNCTION_93_9();
            v112 = lpta_loadp_setscan_r(v110, v111, 1);
            v99 = v45;
            if (!v112)
            {
              OUTLINED_FUNCTION_5_36();
              v113 = test_string_s();
              v99 = v45;
              if (!v113)
              {
                OUTLINED_FUNCTION_95_8();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_29_23();
                if (test_string_s())
                {
                  v99 = v45;
                }

                else
                {
                  v99 = 1;
                }
              }
            }
          }

          continue;
        case 20:
          bspop_boa(v6);
          goto LABEL_42;
        case 21:
          bspop_boa(v6);
          v99 = 1;
          continue;
        case 23:
          v116 = v45;
          goto LABEL_50;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v6);
  OUTLINED_FUNCTION_131_4();
}

uint64_t v_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v3, v4, v5, v6, v7, v8, v9, v10, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v154);
  OUTLINED_FUNCTION_64_12(v11, v12, v13, v14, v15, v16, v17, v18, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v155, v157, v159, v161, v163);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_14_34(v19, v20, v21, v22, v23, v24, v25, v26, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v156, v158, SHIDWORD(v158), v160, SWORD2(v160), SHIWORD(v160), v162, SWORD2(v162), SBYTE6(v162), SHIBYTE(v162), v164, v165))
  {
    v28 = OUTLINED_FUNCTION_23_26();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_41_15();
    v31 = OUTLINED_FUNCTION_98_7();
    fence_37(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_69_12();
    fence_37(v34, v35, &unk_28064B83D);
    v36 = OUTLINED_FUNCTION_23_26();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_6_36();
    inserted = insert_2pt_s(v39, v40, v41, v42, 0);
    if (inserted)
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_136_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_11(inserted, v44, v45, v46, v47, v48, v49, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_118_4();
}

void w_rules(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v50 = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  v45[1] = 0;
  OUTLINED_FUNCTION_84_10(v3, v4, v5, v6, v7, v8, v9, v10, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], v42[12], v42[13], v42[14], v42[15], v42[16], v42[17], v42[18], v42[19], v42[20], v42[21], v42[22], v43, v44);
  OUTLINED_FUNCTION_89_9();
  bzero(v49, v11);
  if (!setjmp(v49) && !ventproc(v2, v42, v48, v47, v46, v49))
  {
    v12 = OUTLINED_FUNCTION_86_9();
    get_parm(v12, v13, v14, -6);
    OUTLINED_FUNCTION_103_6(v15, &v43);
    fence_37(v2, 0, &null_str_14);
    OUTLINED_FUNCTION_87_9();
    v16 = OUTLINED_FUNCTION_69_12();
    if (setd_lookup(v16, v17, 49) || (lpta_rpta_loadp(v2, v45, &v43), v18 = OUTLINED_FUNCTION_0_40(), insert_2pt_s(v18, v19, v20, v21, v22)))
    {
      v23 = 0;
      while (2)
      {
        v24 = OUTLINED_FUNCTION_80_11();
        starttest(v24, v25);
        OUTLINED_FUNCTION_125_4();
        bspush_ca_boa();
        v26 = OUTLINED_FUNCTION_93_9();
        if (!lpta_loadp_setscan_r(v26, v27, 1))
        {
          v28 = OUTLINED_FUNCTION_69_12();
          if (!testFldeq(v28, v29, 4, 1) && !advance_tok(v2, v30, v31, v32))
          {
            v23 = 1;
          }
        }

LABEL_11:
        v33 = v2[13];
        if (v33)
        {
          v34 = OUTLINED_FUNCTION_92_9(v33);
          v23 = v35;
        }

        else
        {
          v34 = vback(v2, v23);
          v23 = 0;
        }

        switch(v34)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_18;
          case 3:
            v36 = OUTLINED_FUNCTION_110_4();
            lpta_rpta_loadp(v36, v37, &v43);
            v38 = OUTLINED_FUNCTION_6_36();
            if (!insert_2pt_s(v38, v39, v40, &unk_28064B82F, 0))
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          case 4:
            bspop_boa(v2);
            goto LABEL_18;
          default:
            goto LABEL_3;
        }
      }
    }

    else
    {
LABEL_18:
      OUTLINED_FUNCTION_100_6(v44);
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_126_4();
  OUTLINED_FUNCTION_131_4();
}

uint64_t x_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  v212 = *MEMORY[0x277D85DE8];
  v207 = 0;
  v208 = 0;
  *&v3 = OUTLINED_FUNCTION_122_4();
  v203 = v3;
  *v204 = v3;
  OUTLINED_FUNCTION_84_10(v4, v5, v6, v7, v8, v9, v10, v11, v177, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202[0], v202[1]);
  OUTLINED_FUNCTION_55_14();
  v12 = setjmp(v2);
  if (!v12 && !OUTLINED_FUNCTION_137_4(v12, &v179, v211, v210, v209))
  {
    v14 = OUTLINED_FUNCTION_23_26();
    get_parm(v14, v15, v16, -6);
    OUTLINED_FUNCTION_103_6(v17, v205);
    *v204 = 0;
    *&v204[8] = 0;
    *&v204[14] = 0;
    LODWORD(v203) = -65534;
    v18 = OUTLINED_FUNCTION_117_4();
    push_ptr_init(v18, v19);
    v20 = 0;
    v21 = OUTLINED_FUNCTION_98_7();
    fence_37(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_69_12();
    fence_37(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_80_11();
    lpta_loadpn(v27, v28);
    v29 = OUTLINED_FUNCTION_99_7();
    rpta_loadpn(v29, v30);
    if (!compare_ptas(v1))
    {
      if (!testeq(v1))
      {
        v96 = OUTLINED_FUNCTION_38_17();
        starttest(v96, v97);
        v98 = OUTLINED_FUNCTION_71_12();
        if (lpta_loadp_setscan_r(v98, v99, v100))
        {
          v20 = 0;
        }

        else
        {
          v107 = OUTLINED_FUNCTION_61_13();
          bspush_ca_scan(v107, v108);
          OUTLINED_FUNCTION_5_36();
          v109 = test_string_s();
          v20 = 0;
          v110 = 0;
          if (v109)
          {
            goto LABEL_35;
          }

LABEL_33:
          v20 = v110;
        }

        goto LABEL_34;
      }

      v20 = 0;
    }

    while (2)
    {
      v31 = OUTLINED_FUNCTION_50_15();
      starttest(v31, v32);
      v33 = OUTLINED_FUNCTION_71_12();
      if (lpta_loadp_setscan_r(v33, v34, v35))
      {
LABEL_8:
        v36 = OUTLINED_FUNCTION_70_12();
        starttest(v36, v37);
        v38 = OUTLINED_FUNCTION_71_12();
        if (lpta_loadp_setscan_r(v38, v39, v40) || (OUTLINED_FUNCTION_5_36(), v41 = test_string_s(), v42 = v20, v41))
        {
LABEL_10:
          lpta_loadpn(v1, v205);
          OUTLINED_FUNCTION_149_4();
          if (!compare_ptas(v1) && !testeq(v1))
          {
            v71 = OUTLINED_FUNCTION_70_12();
            starttest(v71, v72);
            v73 = OUTLINED_FUNCTION_53_14();
            if (lpta_loadp_setscan_l(v73, v74, v75))
            {
LABEL_22:
              v76 = v20;
              v77 = OUTLINED_FUNCTION_70_12();
              starttest(v77, v78);
              v79 = OUTLINED_FUNCTION_53_14();
              if (lpta_loadp_setscan_l(v79, v80, v81))
              {
LABEL_74:
                v170 = OUTLINED_FUNCTION_115_4();
                lpta_rpta_loadp(v170, v171, v172);
                OUTLINED_FUNCTION_74_12();
                settvar_s();
                v173 = OUTLINED_FUNCTION_69_12();
                npush_s(v173);
                WORD1(v203) = 17;
                v174 = OUTLINED_FUNCTION_74_12();
                npop(v174, v175);
                OUTLINED_FUNCTION_37_17();
                insert_2ptv();
                v20 = v76;
                if (!v176)
                {
                  goto LABEL_60;
                }

                goto LABEL_35;
              }

              v82 = OUTLINED_FUNCTION_70_12();
              bspush_ca_scan(v82, v83);
              OUTLINED_FUNCTION_5_36();
              if (test_string_s())
              {
                goto LABEL_35;
              }

LABEL_24:
              v20 = v76;
              v84 = OUTLINED_FUNCTION_12_35();
              if (testFldeq(v84, v85, v86, 2) || advance_tok(v1, v87, v88, v89))
              {
                goto LABEL_35;
              }

              OUTLINED_FUNCTION_43_15();
              bspush_ca_boa();
              v90 = OUTLINED_FUNCTION_114_4();
              lpta_rpta_loadp(v90, v91, v92);
              v93 = OUTLINED_FUNCTION_69_12();
              v95 = setd_lookup(v93, v94, 14);
            }

            else
            {
              v101 = OUTLINED_FUNCTION_58_13();
              bspush_ca_scan(v101, v102);
              OUTLINED_FUNCTION_70_12();
              bspush_ca_scan_boa();
              v103 = OUTLINED_FUNCTION_3_38();
              v95 = testFldeq(v103, v104, v105, v106);
            }

            if (!v95)
            {
              v20 = 1;
            }

            goto LABEL_35;
          }

LABEL_12:
          v43 = OUTLINED_FUNCTION_70_12();
          starttest(v43, v44);
          v45 = OUTLINED_FUNCTION_53_14();
          v48 = lpta_loadp_setscan_l(v45, v46, v47);
          v49 = v20;
          if (v48)
          {
LABEL_13:
            v20 = v49;
            goto LABEL_34;
          }

LABEL_61:
          OUTLINED_FUNCTION_151_3(33, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202[0]);
          OUTLINED_FUNCTION_5_36();
          v153 = test_string_s();
          v154 = v20;
          if (!v153)
          {
LABEL_65:
            v20 = v154;
            v155 = OUTLINED_FUNCTION_70_12();
            if (!test_synch(v155, v156, 1, v157))
            {
              v158 = OUTLINED_FUNCTION_71_12();
              if (!lpta_loadp_setscan_r(v158, v159, v160) && !advance_tok(v1, v161, v162, v163))
              {
                OUTLINED_FUNCTION_5_36();
                if (!test_string_s())
                {
                  goto LABEL_34;
                }
              }
            }
          }
        }

        else
        {
LABEL_71:
          v20 = v42;
          v164 = OUTLINED_FUNCTION_115_4();
          savescptr(v164, v165, v166);
          v167 = OUTLINED_FUNCTION_48_15();
          bspush_ca_scan(v167, v168);
          OUTLINED_FUNCTION_5_36();
          v169 = test_string_s();
          v123 = v20;
          if (!v169)
          {
LABEL_72:
            v20 = v123;
            goto LABEL_34;
          }
        }

LABEL_35:
        v119 = v20;
LABEL_36:
        v120 = v1[13];
        if (v120)
        {
          v121 = OUTLINED_FUNCTION_92_9(v120);
          v20 = v122;
        }

        else
        {
          v121 = vback(v1, v119);
          v20 = 0;
        }

        v110 = v20;
        v67 = v20;
        v123 = v20;
        v76 = v20;
        switch(v121)
        {
          case 1:
            continue;
          case 2:
          case 8:
            goto LABEL_34;
          case 3:
            OUTLINED_FUNCTION_5_36();
            v124 = test_string_s();
            v110 = v20;
            v119 = v20;
            if (!v124)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          case 4:
            goto LABEL_33;
          case 5:
          case 6:
          case 14:
          case 27:
            goto LABEL_60;
          case 7:
            goto LABEL_8;
          case 9:
            goto LABEL_19;
          case 10:
            v128 = OUTLINED_FUNCTION_42_15();
            bspush_ca_scan(v128, v129);
            OUTLINED_FUNCTION_5_36();
            goto LABEL_49;
          case 11:
            v130 = OUTLINED_FUNCTION_66_12();
            bspush_ca_scan(v130, v131);
            goto LABEL_47;
          case 12:
            v132 = OUTLINED_FUNCTION_59_13();
            bspush_ca_scan(v132, v133);
            OUTLINED_FUNCTION_29_23();
            goto LABEL_49;
          case 13:
LABEL_47:
            OUTLINED_FUNCTION_13_34();
LABEL_49:
            test_string_s();
            OUTLINED_FUNCTION_146_4();
            if (!v134)
            {
              goto LABEL_19;
            }

            goto LABEL_36;
          case 15:
            goto LABEL_10;
          case 16:
            v42 = v20;
            goto LABEL_71;
          case 17:
            v135 = OUTLINED_FUNCTION_44_15();
            bspush_ca_scan(v135, v136);
            goto LABEL_54;
          case 18:
            goto LABEL_72;
          case 19:
LABEL_54:
            OUTLINED_FUNCTION_5_36();
            v141 = test_string_s();
            v123 = v20;
            v119 = v20;
            if (!v141)
            {
              goto LABEL_72;
            }

            goto LABEL_36;
          case 20:
            goto LABEL_12;
          case 21:
            goto LABEL_22;
          case 22:
            v126 = OUTLINED_FUNCTION_70_12();
            bspush_ca_scan(v126, v127);
            goto LABEL_57;
          case 23:
            bspop_boa(v1);
            v140 = advance_tok(v1, v137, v138, v139);
            goto LABEL_58;
          case 24:
            goto LABEL_59;
          case 25:
            v142 = OUTLINED_FUNCTION_57_13();
            bspush_ca_scan(v142, v143);
            goto LABEL_57;
          case 26:
LABEL_57:
            OUTLINED_FUNCTION_5_36();
            v140 = test_string_s();
LABEL_58:
            v119 = v20;
            if (!v140)
            {
              goto LABEL_59;
            }

            goto LABEL_36;
          case 28:
            v76 = v20;
            goto LABEL_74;
          case 29:
            OUTLINED_FUNCTION_5_36();
            test_string_s();
            OUTLINED_FUNCTION_138_4();
            if (!v125)
            {
              goto LABEL_24;
            }

            goto LABEL_36;
          case 30:
            goto LABEL_24;
          case 31:
            bspop_boa(v1);
LABEL_59:
            v144 = OUTLINED_FUNCTION_115_4();
            lpta_rpta_loadp(v144, v145, v146);
            v147 = OUTLINED_FUNCTION_1_39();
            inserted = insert_2pt_s(v147, v148, v149, v150, v151);
            v119 = v20;
            if (!inserted)
            {
              goto LABEL_60;
            }

            goto LABEL_36;
          case 32:
            v49 = v20;
            goto LABEL_13;
          case 33:
            goto LABEL_61;
          case 34:
            v154 = v20;
            goto LABEL_65;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    v50 = OUTLINED_FUNCTION_3_38();
    if (testFldeq(v50, v51, v52, v53) || advance_tok(v1, v54, v55, v56))
    {
      goto LABEL_35;
    }

    v57 = OUTLINED_FUNCTION_32_20();
    starttest(v57, v58);
    v59 = OUTLINED_FUNCTION_53_14();
    if (!lpta_loadp_setscan_l(v59, v60, v61))
    {
      OUTLINED_FUNCTION_5_36();
      if (!test_string_s())
      {
        v62 = OUTLINED_FUNCTION_39_16();
        bspush_ca_scan(v62, v63);
        v64 = OUTLINED_FUNCTION_49_15();
        bspush_ca_scan(v64, v65);
        OUTLINED_FUNCTION_13_34();
        v66 = test_string_s();
        v67 = v20;
        if (v66)
        {
          goto LABEL_35;
        }

LABEL_19:
        v20 = v67;
        OUTLINED_FUNCTION_96_7();
        v68 = OUTLINED_FUNCTION_9_35();
        if (test_ptr(v68, v69, v70))
        {
          goto LABEL_35;
        }
      }
    }

LABEL_34:
    v111 = OUTLINED_FUNCTION_115_4();
    lpta_rpta_loadp(v111, v112, v113);
    v114 = OUTLINED_FUNCTION_1_39();
    if (insert_2pt_s(v114, v115, v116, v117, v118))
    {
      goto LABEL_35;
    }

LABEL_60:
    OUTLINED_FUNCTION_100_6(v206);
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_157_3();
}

void y_rules(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_158_3();
  OUTLINED_FUNCTION_90_9();
  bzero(v177, v4);
  OUTLINED_FUNCTION_89_9();
  bzero(v182, v5);
  v6 = setjmp(v182);
  if (!v6 && !OUTLINED_FUNCTION_150_4(v6, v177, v7, v8, v9, v10, v11, v12, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v177[0], v177[1], v177[2], v177[3], v177[4], v177[5], v177[6], v177[7], v177[8], v177[9], v177[10], v177[11], v177[12], v177[13], v177[14], v177[15], v177[16], v177[17], v177[18], v177[19], v177[20], v177[21], v177[22], v178[0], v178[1], v179, v180, v181[0], v181[1], v181[2], SHIDWORD(v181[2]), v181[3], SWORD2(v181[3]), SHIWORD(v181[3]), v181[4], SWORD2(v181[4]), SBYTE6(v181[4]), SHIBYTE(v181[4]), v181[5], v182[0]))
  {
    v13 = OUTLINED_FUNCTION_86_9();
    get_parm(v13, v14, v15, -6);
    v16 = OUTLINED_FUNCTION_80_11();
    OUTLINED_FUNCTION_129_4(v16, v17);
    push_ptr_init(v2, v178);
    fence_37(v2, 0, &null_str_14);
    v18 = OUTLINED_FUNCTION_21_27();
    fence_37(v18, v19, v20);
    v21 = OUTLINED_FUNCTION_80_11();
    is_nasal_vow(v21, v22);
    if (!v23)
    {
      v24 = OUTLINED_FUNCTION_25_26();
      lpta_rpta_loadp(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v27, v28, v29, v30, v31))
      {
        goto LABEL_72;
      }
    }

    LODWORD(v32) = 0;
    v33 = 3;
    while (2)
    {
      v34 = OUTLINED_FUNCTION_112_4();
      starttest(v34, v35);
      v36 = OUTLINED_FUNCTION_24_26();
      v39 = lpta_loadp_setscan_l(v36, v37, v38);
      v40 = v32;
      if (!v39)
      {
LABEL_15:
        v176 = v33;
        LODWORD(v32) = v40;
        v62 = OUTLINED_FUNCTION_116_4();
        savescptr(v62, v63, v178);
        bspush_ca_scan_boa();
        v64 = OUTLINED_FUNCTION_73_12();
        if (testFldeq(v64, v65, 4, v3))
        {
          goto LABEL_19;
        }

LABEL_16:
        v66 = advance_tok(v2, v59, v60, v61);
        goto LABEL_17;
      }

LABEL_8:
      v176 = v33;
      v41 = v32;
      starttest(v2, 7);
      v42 = OUTLINED_FUNCTION_24_26();
      if (!lpta_loadp_setscan_l(v42, v43, v44))
      {
LABEL_9:
        savescptr(v2, 8, v178);
        v45 = OUTLINED_FUNCTION_45_15();
        if (testFldeq(v45, v46, v47, v3))
        {
          goto LABEL_19;
        }

        if (advance_tok(v2, v48, v49, v50))
        {
          goto LABEL_19;
        }

        v51 = OUTLINED_FUNCTION_95_8();
        if (lpta_loadp_setscan_r(v51, v52, v3))
        {
          goto LABEL_19;
        }

        if (advance_tok(v2, v53, v54, v55))
        {
          goto LABEL_19;
        }

        bspush_ca_scan_boa();
        v56 = OUTLINED_FUNCTION_45_15();
        if (testFldeq(v56, v57, v58, v3))
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

LABEL_47:
      starttest(v2, 10);
      v109 = OUTLINED_FUNCTION_24_26();
      LODWORD(v32) = v41;
      if (!lpta_loadp_setscan_l(v109, v110, v111))
      {
LABEL_50:
        savescptr(v2, 11, v178);
        bspush_ca_scan_boa();
        v114 = OUTLINED_FUNCTION_45_15();
        if (!testFldeq(v114, v115, v116, v3) && !advance_tok(v2, v117, v118, v119))
        {
          LODWORD(v32) = 1;
        }

        goto LABEL_19;
      }

LABEL_48:
      LODWORD(v32) = v41;
      starttest(v2, 13);
      v112 = OUTLINED_FUNCTION_119_4();
      if (lpta_loadp_setscan_r(v112, v113, v3))
      {
        goto LABEL_64;
      }

      v120 = OUTLINED_FUNCTION_45_15();
      if (testFldeq(v120, v121, v122, v3) || advance_tok(v2, v123, v124, v125))
      {
        goto LABEL_19;
      }

      starttest(v2, 14);
      v126 = OUTLINED_FUNCTION_24_26();
      if (!lpta_loadp_setscan_l(v126, v127, v128))
      {
        OUTLINED_FUNCTION_17_33();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_156_3();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_17_33();
          v66 = test_string_s();
LABEL_17:
          if (!v66)
          {
            LODWORD(v32) = 1;
          }

LABEL_19:
          v67 = v32;
LABEL_20:
          v68 = *(v2 + 104);
          if (v68)
          {
            v69 = OUTLINED_FUNCTION_92_9(v68);
            v32 = v70;
          }

          else
          {
            v69 = vback(v2, v67);
            v32 = 0;
          }

          switch(v69)
          {
            case 1:
              v33 = v176;
              continue;
            case 2:
            case 18:
            case 19:
              goto LABEL_72;
            case 3:
              v33 = v176;
              goto LABEL_8;
            case 4:
              v40 = v32;
              v33 = v176;
              goto LABEL_15;
            case 5:
              bspop_boa(v2);
              v71 = OUTLINED_FUNCTION_95_8();
              v73 = lpta_loadp_setscan_r(v71, v72, v3);
              v67 = v32;
              if (v73)
              {
                goto LABEL_20;
              }

              v76 = advance_tok(v2, v32, v74, v75);
              v67 = v32;
              if (v76)
              {
                goto LABEL_20;
              }

              bspush_ca_scan(v2, 6);
              OUTLINED_FUNCTION_17_33();
              v77 = test_string_s();
              v67 = v32;
              if (v77)
              {
                goto LABEL_20;
              }

              goto LABEL_27;
            case 6:
LABEL_27:
              v78 = OUTLINED_FUNCTION_116_4();
              savescptr(v78, v79, &v179);
              *(v2 + 136) = v3;
              v80 = OUTLINED_FUNCTION_9_35();
              v83 = test_ptr(v80, v81, v82);
              goto LABEL_28;
            case 7:
              v41 = v32;
              goto LABEL_47;
            case 8:
              goto LABEL_9;
            case 9:
              bspop_boa(v2);
              goto LABEL_72;
            case 10:
              v41 = v32;
              goto LABEL_48;
            case 11:
              goto LABEL_50;
            case 12:
              bspop_boa(v2);
              v94 = OUTLINED_FUNCTION_95_8();
              v96 = lpta_loadp_setscan_r(v94, v95, v3);
              v67 = v32;
              if (v96)
              {
                goto LABEL_20;
              }

              v99 = advance_tok(v2, v32, v97, v98);
              v67 = v32;
              if (v99)
              {
                goto LABEL_20;
              }

              v100 = OUTLINED_FUNCTION_45_15();
              v103 = testFldeq(v100, v101, v102, 2);
              v67 = v32;
              if (v103)
              {
                goto LABEL_20;
              }

              v83 = advance_tok(v2, v32, v104, v105);
LABEL_28:
              v67 = v32;
              if (!v83)
              {
                goto LABEL_31;
              }

              goto LABEL_20;
            case 13:
            case 21:
              goto LABEL_64;
            case 14:
              goto LABEL_58;
            case 15:
              bspop_boa(v2);
              v84 = OUTLINED_FUNCTION_110_4();
              starttest(v84, v85);
              v86 = OUTLINED_FUNCTION_119_4();
              if (lpta_loadp_setscan_r(v86, v87, v3))
              {
                goto LABEL_31;
              }

              bspush_ca_scan_boa();
              OUTLINED_FUNCTION_17_33();
              if (test_string_s())
              {
                v67 = v32;
              }

              else
              {
                v67 = 1;
              }

              goto LABEL_20;
            case 16:
LABEL_31:
              v88 = OUTLINED_FUNCTION_93_9();
              lpta_rpta_loadp(v88, v89, &v179);
              v90 = OUTLINED_FUNCTION_28_23();
              v93 = &unk_28064B849;
              goto LABEL_37;
            case 17:
              bspop_boa(v2);
              v106 = OUTLINED_FUNCTION_93_9();
              lpta_rpta_loadp(v106, v107, &v179);
              v90 = OUTLINED_FUNCTION_26_26();
              v93 = &unk_28064B8AA;
LABEL_37:
              inserted = insert_2pt_s(v90, v91, v92, v93, 0);
              v67 = v32;
              if (!inserted)
              {
                goto LABEL_72;
              }

              goto LABEL_20;
            case 20:
              goto LABEL_62;
            default:
              goto LABEL_3;
          }
        }
      }

      break;
    }

LABEL_58:
    v129 = OUTLINED_FUNCTION_24_26();
    if (!lpta_loadp_setscan_l(v129, v130, v131))
    {
      OUTLINED_FUNCTION_73_12();
      if (!test_string_s())
      {
        *(v2 + 136) = v3;
        v132 = OUTLINED_FUNCTION_9_35();
        if (!test_ptr(v132, v133, v134))
        {
          v135 = OUTLINED_FUNCTION_93_9();
          lpta_rpta_loadp(v135, v136, &v179);
          v137 = OUTLINED_FUNCTION_2_38();
          if (!insert_2pt_s(v137, v138, v139, &unk_28064B849, v140))
          {
LABEL_72:
            OUTLINED_FUNCTION_100_6(v180);
            goto LABEL_3;
          }
        }
      }
    }

LABEL_62:
    v141 = OUTLINED_FUNCTION_147_4();
    starttest(v141, v142);
    v143 = OUTLINED_FUNCTION_24_26();
    if (lpta_loadp_setscan_l(v143, v144, v145) || (OUTLINED_FUNCTION_17_33(), test_string_s()))
    {
LABEL_64:
      v146 = OUTLINED_FUNCTION_93_9();
      lpta_rpta_loadp(v146, v147, &v179);
      v148 = OUTLINED_FUNCTION_2_38();
      v152 = &unk_28064B82E;
    }

    else
    {
      v153 = OUTLINED_FUNCTION_45_15();
      if (testFldeq(v153, v154, v155, 2) || advance_tok(v2, v156, v157, v158))
      {
        goto LABEL_19;
      }

      v159 = OUTLINED_FUNCTION_93_9();
      lpta_rpta_loadp(v159, v160, &v179);
      v148 = OUTLINED_FUNCTION_1_39();
      v152 = &unk_28064B8AA;
    }

    if (insert_2pt_s(v148, v149, v150, v152, v151))
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_131_4();
}

void z_rules(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v100 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_40_16(v3, v4, v5, v6, v7, v8, v9, v10, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  OUTLINED_FUNCTION_89_9();
  bzero(v99, v11);
  if (setjmp(v99))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_121_4();
  if (ventproc(v2, v12, v13, v14, v15, v99))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_23_26();
  get_parm(v16, v17, v18, -6);
  v19 = OUTLINED_FUNCTION_94_8();
  OUTLINED_FUNCTION_129_4(v19, v20);
  OUTLINED_FUNCTION_102_6();
  fence_37(v2, 0, &null_str_14);
  v21 = OUTLINED_FUNCTION_69_12();
  fence_37(v21, v22, v23);
  v24 = OUTLINED_FUNCTION_80_11();
  if (!lpta_loadp_setscan_l(v24, v25, 1))
  {
    OUTLINED_FUNCTION_5_36();
    if (!test_string_s())
    {
      v26 = OUTLINED_FUNCTION_106_4();
      lpta_rpta_loadp(v26, v27, v28);
      v29 = OUTLINED_FUNCTION_0_40();
      if (!insert_2pt_s(v29, v30, v31, v32, v33))
      {
        goto LABEL_21;
      }
    }
  }

  while (2)
  {
    v34 = OUTLINED_FUNCTION_74_12();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_80_11();
    lpta_loadpn(v36, v37);
    OUTLINED_FUNCTION_149_4();
    if (compare_ptas(v2) || testeq(v2))
    {
LABEL_14:
      v47 = OUTLINED_FUNCTION_93_9();
      starttest(v47, v48);
      OUTLINED_FUNCTION_87_9();
      v49 = OUTLINED_FUNCTION_69_12();
      if (setd_lookup(v49, v50, 41))
      {
LABEL_15:
        v51 = OUTLINED_FUNCTION_108_4();
        lpta_rpta_loadp(v51, v52, v53);
        v54 = OUTLINED_FUNCTION_0_40();
        v58 = &unk_28064B81F;
      }

      else
      {
        v59 = OUTLINED_FUNCTION_95_8();
        starttest(v59, v60);
        v61 = OUTLINED_FUNCTION_80_11();
        if (!lpta_loadp_setscan_r(v61, v62, 1))
        {
          OUTLINED_FUNCTION_5_36();
          if (!test_string_s())
          {
LABEL_18:
            v63 = OUTLINED_FUNCTION_154_3();
            savescptr(v63, v64, &v95);
          }
        }

LABEL_19:
        v65 = OUTLINED_FUNCTION_108_4();
        lpta_rpta_loadp(v65, v66, v67);
        v54 = OUTLINED_FUNCTION_1_39();
        v58 = &unk_28064B888;
      }

      if (insert_2pt_s(v54, v55, v56, v58, v57))
      {
        goto LABEL_10;
      }

LABEL_21:
      OUTLINED_FUNCTION_100_6(v96);
      break;
    }

    v38 = OUTLINED_FUNCTION_108_4();
    lpta_rpta_loadp(v38, v39, v40);
    settvar_s();
    v41 = OUTLINED_FUNCTION_69_12();
    npush_s(v41);
    v42 = OUTLINED_FUNCTION_93_9();
    npop(v42, v43);
    OUTLINED_FUNCTION_37_17();
    insert_2ptv();
    if (!v44)
    {
      goto LABEL_21;
    }

LABEL_10:
    v45 = *(v2 + 104);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_92_9(v45);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_136_4();
    }

    switch(v46)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_21;
      case 3:
        goto LABEL_14;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_19;
      case 6:
        goto LABEL_18;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_157_3();
  OUTLINED_FUNCTION_131_4();
}

void a_rules(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4();
  OUTLINED_FUNCTION_18_32();
  v397 = *MEMORY[0x277D85DE8];
  v392 = 0;
  v391 = 0;
  v390 = 0;
  v389 = 0;
  v387 = 0u;
  memset(v388, 0, sizeof(v388));
  v386[1] = 0;
  v385[1] = 0;
  v386[0] = 0;
  v385[0] = 0;
  OUTLINED_FUNCTION_90_9();
  bzero(v384, v4);
  OUTLINED_FUNCTION_89_9();
  bzero(v396, v5);
  if (!setjmp(v396) && !ventproc(v2, v384, v395, v394, v393, v396))
  {
    v6 = OUTLINED_FUNCTION_86_9();
    get_parm(v6, v7, v8, -6);
    v9 = OUTLINED_FUNCTION_80_11();
    OUTLINED_FUNCTION_129_4(v9, v10);
    memset(v388, 0, 22);
    LODWORD(v387) = -65534;
    push_ptr_init(v2, v386);
    push_ptr_init(v2, v385);
    fence_37(v2, 0, &null_str_14);
    v11 = OUTLINED_FUNCTION_21_27();
    fence_37(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_63_12();
    if (!lpta_loadp_setscan_r(v14, v15, v16))
    {
      OUTLINED_FUNCTION_56_13();
      if (!test_string_s())
      {
        *(v2 + 136) = &v389;
        v17 = OUTLINED_FUNCTION_9_35();
        if (!test_ptr(v17, v18, v19))
        {
          OUTLINED_FUNCTION_127_4();
          v20 = OUTLINED_FUNCTION_0_40();
          if (!insert_2pt_s(v20, v21, v22, v23, v24))
          {
            goto LABEL_244;
          }
        }
      }
    }

    v25 = 0;
    v26 = &unk_28064B84A;
    while (2)
    {
      v27 = OUTLINED_FUNCTION_93_9();
      is_nasal_vow(v27, v28);
      if (!v29)
      {
        v30 = OUTLINED_FUNCTION_95_8();
        lpta_rpta_loadp(v30, v31, &v389);
        v32 = OUTLINED_FUNCTION_28_23();
        if (!insert_2pt_s(v32, v33, v34, &unk_28064B84A, v25))
        {
          goto LABEL_244;
        }
      }

LABEL_11:
      v35 = OUTLINED_FUNCTION_134_4();
      starttest(v35, 4);
      OUTLINED_FUNCTION_22_26();
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_24_26();
        if (!lpta_loadp_setscan_r(v37, v38, v39))
        {
          v137 = OUTLINED_FUNCTION_73_12();
          if (testFldeq(v137, v138, v25, 3))
          {
            goto LABEL_236;
          }

          v139 = OUTLINED_FUNCTION_73_12();
          if (OUTLINED_FUNCTION_152_3(v139, v140))
          {
            goto LABEL_236;
          }

          v144 = advance_tok(v2, v141, v142, v143);
          LODWORD(v87) = v26;
          LODWORD(v128) = v26;
          if (v144)
          {
            goto LABEL_70;
          }

LABEL_67:
          v145 = OUTLINED_FUNCTION_35_17();
          savescptr(v145, v146, &v389);
          v147 = OUTLINED_FUNCTION_95_8();
          lpta_rpta_loadp(v147, v148, &v389);
          v26 = &v387;
          settvar_s();
          npush_s(v2);
          WORD1(v387) = 9;
          v149 = OUTLINED_FUNCTION_110_4();
          npop(v149, v150);
          OUTLINED_FUNCTION_72_12();
          insert_2ptv();
          goto LABEL_69;
        }
      }

LABEL_14:
      OUTLINED_FUNCTION_22_26();
      if (!v36 || *(v2 + 6190) || (v40 = OUTLINED_FUNCTION_114_4(), lpta_rpta_loadp(v40, v41, v42), v43 = OUTLINED_FUNCTION_73_12(), setd_lookup(v43, v44, 175)) || (v45 = OUTLINED_FUNCTION_95_8(), lpta_rpta_loadp(v45, v46, &v389), v47 = OUTLINED_FUNCTION_28_23(), insert_2pt_s(v47, v48, v49, &unk_28064B832, v25)))
      {
LABEL_19:
        OUTLINED_FUNCTION_22_26();
        if (!v36 || *(v2 + 6190) || (OUTLINED_FUNCTION_87_9(), v50 = OUTLINED_FUNCTION_73_12(), setd_lookup(v50, v51, 176)) || (v52 = OUTLINED_FUNCTION_95_8(), lpta_rpta_loadp(v52, v53, &v389), v54 = OUTLINED_FUNCTION_28_23(), insert_2pt_s(v54, v55, v56, &unk_28064B832, v25)))
        {
LABEL_24:
          v57 = OUTLINED_FUNCTION_24_26();
          if (lpta_loadp_setscan_r(v57, v58, v59) || (OUTLINED_FUNCTION_17_33(), test_string_s()))
          {
LABEL_26:
            v60 = OUTLINED_FUNCTION_24_26();
            if (!lpta_loadp_setscan_r(v60, v61, v62))
            {
              OUTLINED_FUNCTION_17_33();
              if (!test_string_s())
              {
LABEL_117:
                v230 = OUTLINED_FUNCTION_134_4();
                savescptr(v230, 40, &v389);
                starttest(v2, 41);
                v231 = OUTLINED_FUNCTION_24_26();
                if (lpta_loadp_setscan_r(v231, v232, v233))
                {
LABEL_118:
                  starttest(v2, 50);
                  v234 = OUTLINED_FUNCTION_24_26();
                  if (!lpta_loadp_setscan_r(v234, v235, v236))
                  {
                    OUTLINED_FUNCTION_54_14();
                    v87 = v26;
                    if (!test_string_s())
                    {
LABEL_120:
                      savescptr(v2, 51, &v389);
LABEL_121:
                      v26 = v87;
                    }
                  }

                  v237 = OUTLINED_FUNCTION_95_8();
                  lpta_rpta_loadp(v237, v238, &v389);
                  v113 = OUTLINED_FUNCTION_2_38();
                  v117 = &unk_28064B84D;
                }

                else
                {
                  bspush_ca_scan(v2, 42);
                  OUTLINED_FUNCTION_17_33();
                  v260 = test_string_s();
                  v157 = v26;
                  LODWORD(v128) = v26;
                  if (v260)
                  {
                    goto LABEL_70;
                  }

LABEL_139:
                  v26 = v157;
                  v261 = OUTLINED_FUNCTION_95_8();
                  lpta_rpta_loadp(v261, v262, &v389);
                  v113 = OUTLINED_FUNCTION_2_38();
                  v117 = &unk_28064B84C;
                }

                goto LABEL_140;
              }
            }

LABEL_28:
            v63 = OUTLINED_FUNCTION_24_26();
            if (!lpta_loadp_setscan_r(v63, v64, v65))
            {
              OUTLINED_FUNCTION_17_33();
              if (!test_string_s())
              {
                starttest(v2, 53);
                bspush_ca(v2);
                v131 = OUTLINED_FUNCTION_95_8();
                if (lpta_loadp_setscan_l(v131, v132, v3))
                {
                  goto LABEL_236;
                }

                bspush_ca_scan(v2, 55);
                OUTLINED_FUNCTION_17_33();
                v133 = test_string_s();
                v134 = v26;
                LODWORD(v128) = v26;
                if (v133)
                {
                  goto LABEL_70;
                }

LABEL_62:
                v26 = v134;
                goto LABEL_63;
              }
            }

LABEL_30:
            v66 = OUTLINED_FUNCTION_112_4();
            starttest(v66, v67);
            v68 = OUTLINED_FUNCTION_95_8();
            if (!lpta_loadp_setscan_r(v68, v69, v3))
            {
              v106 = OUTLINED_FUNCTION_73_12();
              if (!OUTLINED_FUNCTION_152_3(v106, v107) && !advance_tok(v2, v108, v109, v110))
              {
                goto LABEL_54;
              }

              goto LABEL_236;
            }

LABEL_31:
            starttest(v2, 67);
            OUTLINED_FUNCTION_22_26();
            if (!v36 || (v70 = OUTLINED_FUNCTION_24_26(), lpta_loadp_setscan_r(v70, v71, v72)) || (OUTLINED_FUNCTION_45_15(), test_string_s()) || (*(v2 + 136) = v3, v73 = OUTLINED_FUNCTION_9_35(), test_ptr(v73, v74, v75)))
            {
LABEL_36:
              v76 = OUTLINED_FUNCTION_125_4();
              starttest(v76, v77);
              v78 = OUTLINED_FUNCTION_24_26();
              if (lpta_loadp_setscan_r(v78, v79, v80) || (OUTLINED_FUNCTION_17_33(), test_string_s()))
              {
LABEL_38:
                starttest(v2, 73);
                v81 = OUTLINED_FUNCTION_24_26();
                if (lpta_loadp_setscan_r(v81, v82, v83) || (OUTLINED_FUNCTION_54_14(), test_string_s()) || (*(v2 + 136) = v3, v84 = OUTLINED_FUNCTION_9_35(), LODWORD(v87) = v26, test_ptr(v84, v85, v86)))
                {
LABEL_41:
                  OUTLINED_FUNCTION_87_9();
                  v88 = OUTLINED_FUNCTION_73_12();
                  if (!setd_lookup(v88, v89, 27))
                  {
                    v90 = OUTLINED_FUNCTION_95_8();
                    lpta_rpta_loadp(v90, v91, &v389);
                    v92 = OUTLINED_FUNCTION_2_38();
                    if (!insert_2pt_s(v92, v93, v94, &unk_28064B84D, v95))
                    {
                      goto LABEL_244;
                    }
                  }

LABEL_43:
                  starttest(v2, 76);
                  OUTLINED_FUNCTION_22_26();
                  if (v36)
                  {
                    v96 = OUTLINED_FUNCTION_24_26();
                    if (!lpta_loadp_setscan_l(v96, v97, v98))
                    {
LABEL_46:
                      v99 = OUTLINED_FUNCTION_134_4();
                      savescptr(v99, 77, v386);
                      if (!advance_tok(v2, v100, v101, v102))
                      {
                        OUTLINED_FUNCTION_17_33();
                        if (!test_string_s())
                        {
                          *(v2 + 136) = v3;
                          v103 = OUTLINED_FUNCTION_9_35();
                          if (!test_ptr(v103, v104, v105) && !lpta_loadp_setscan_r(v2, v386, v3))
                          {
                            OUTLINED_FUNCTION_73_12();
                            if (!test_string_s())
                            {
LABEL_54:
                              v111 = OUTLINED_FUNCTION_95_8();
                              lpta_rpta_loadp(v111, v112, &v389);
                              v113 = OUTLINED_FUNCTION_2_38();
                              v117 = &unk_28064B832;
LABEL_140:
                              inserted = insert_2pt_s(v113, v114, v115, v117, v116);
                              goto LABEL_141;
                            }
                          }
                        }
                      }

LABEL_236:
                      LODWORD(v128) = v26;
                      goto LABEL_70;
                    }
                  }

LABEL_63:
                  v135 = OUTLINED_FUNCTION_95_8();
                  lpta_rpta_loadp(v135, v136, &v389);
                  v113 = OUTLINED_FUNCTION_2_38();
                  v117 = &unk_28064B831;
                  goto LABEL_140;
                }

LABEL_143:
                savescptr(v2, 74, &v389);
                v269 = OUTLINED_FUNCTION_95_8();
                lpta_rpta_loadp(v269, v270, &v389);
                v264 = OUTLINED_FUNCTION_2_38();
                v267 = &unk_28064B84A;
                goto LABEL_129;
              }

LABEL_133:
              v252 = OUTLINED_FUNCTION_134_4();
              savescptr(v252, 69, &v389);
              bspush_ca_scan_boa();
              v253 = OUTLINED_FUNCTION_45_15();
              if (testFldeq(v253, v254, v255, v3))
              {
                goto LABEL_236;
              }

              v259 = advance_tok(v2, v256, v257, v258);
LABEL_135:
              if (v259)
              {
                LODWORD(v128) = v26;
              }

              else
              {
                LODWORD(v128) = 1;
              }

              goto LABEL_70;
            }

LABEL_214:
            v342 = OUTLINED_FUNCTION_95_8();
            lpta_rpta_loadp(v342, v343, &v389);
            OUTLINED_FUNCTION_123_4();
            settvar_s();
            v344 = OUTLINED_FUNCTION_98_7();
            npush_s(v344);
            WORD1(v387) = 9;
            v345 = OUTLINED_FUNCTION_125_4();
            npop(v345, v346);
            OUTLINED_FUNCTION_72_12();
            v25 = 66;
            insert_2ptv();
LABEL_141:
            LODWORD(v128) = v26;
            if (!inserted)
            {
              goto LABEL_244;
            }

LABEL_70:
            v152 = *(v2 + 104);
            if (v152)
            {
              v153 = OUTLINED_FUNCTION_92_9(v152);
              v87 = v154;
            }

            else
            {
              v153 = vback(v2, v128);
              v87 = 0;
            }

            v127 = v87;
            v155 = v87;
            v156 = v87;
            v157 = v87;
            v134 = v87;
            switch(v153)
            {
              case 1:
                v26 = &unk_28064B84A;
                continue;
              case 2:
              case 12:
              case 49:
              case 59:
              case 72:
                goto LABEL_244;
              case 3:
                goto LABEL_11;
              case 4:
                v26 = v87;
                goto LABEL_14;
              case 5:
                goto LABEL_67;
              case 6:
                v26 = v87;
                goto LABEL_19;
              case 7:
                v26 = v87;
                goto LABEL_24;
              case 8:
                v26 = v87;
                goto LABEL_26;
              case 9:
                v26 = v87;
                goto LABEL_162;
              case 10:
                v158 = OUTLINED_FUNCTION_4_37(v153, v154, v87);
                v127 = v87;
                LODWORD(v128) = v87;
                if (!v158)
                {
                  goto LABEL_59;
                }

                goto LABEL_70;
              case 11:
                goto LABEL_59;
              case 13:
                v26 = v87;
                goto LABEL_165;
              case 14:
                goto LABEL_164;
              case 15:
                v26 = v87;
                goto LABEL_167;
              case 16:
                v26 = v87;
                goto LABEL_168;
              case 17:
                goto LABEL_175;
              case 18:
                v26 = v87;
                goto LABEL_170;
              case 19:
                goto LABEL_184;
              case 20:
                goto LABEL_132;
              case 21:
                OUTLINED_FUNCTION_5_36();
                goto LABEL_131;
              case 22:
                v26 = v87;
                goto LABEL_186;
              case 23:
                v26 = v87;
                goto LABEL_189;
              case 24:
                v221 = OUTLINED_FUNCTION_57_13();
                bspush_ca_scan(v221, v222);
                goto LABEL_112;
              case 25:
                goto LABEL_208;
              case 26:
                v223 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v223, v224);
LABEL_112:
                OUTLINED_FUNCTION_5_36();
                goto LABEL_113;
              case 27:
                OUTLINED_FUNCTION_29_23();
LABEL_113:
                v225 = test_string_s();
                v156 = v87;
                LODWORD(v128) = v87;
                if (!v225)
                {
                  goto LABEL_208;
                }

                goto LABEL_70;
              case 28:
                v26 = v87;
                goto LABEL_193;
              case 29:
                goto LABEL_211;
              case 30:
                v26 = v87;
                goto LABEL_197;
              case 31:
                goto LABEL_215;
              case 32:
                v26 = v87;
                goto LABEL_200;
              case 33:
                v26 = v87;
                goto LABEL_219;
              case 34:
                bspop_boa(v2);
                v229 = advance_tok(v2, v226, v227, v228);
                LODWORD(v128) = v87;
                if (v229)
                {
                  goto LABEL_70;
                }

                goto LABEL_128;
              case 35:
                v26 = v87;
                goto LABEL_228;
              case 36:
                goto LABEL_229;
              case 37:
                v26 = v87;
                goto LABEL_230;
              case 38:
                goto LABEL_233;
              case 39:
                v26 = v87;
                goto LABEL_28;
              case 40:
                goto LABEL_117;
              case 41:
                v26 = v87;
                goto LABEL_118;
              case 42:
                v204 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v204, v205);
                OUTLINED_FUNCTION_5_36();
                v206 = test_string_s();
                LODWORD(v128) = v87;
                if (v206)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_5_36();
                v207 = test_string_s();
                LODWORD(v128) = v87;
                if (v207)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_70_12();
                bspush_ca_scan_boa();
                OUTLINED_FUNCTION_5_36();
                v184 = test_string_s();
                goto LABEL_91;
              case 43:
                goto LABEL_139;
              case 44:
                v208 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v208, v209);
                OUTLINED_FUNCTION_5_36();
                v210 = test_string_s();
                LODWORD(v128) = v87;
                if (v210)
                {
                  goto LABEL_70;
                }

                v211 = OUTLINED_FUNCTION_12_35();
                v214 = testFldeq(v211, v212, v213, 2);
                LODWORD(v128) = v87;
                if (v214)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_70_12();
                bspush_ca_scan_boa();
                v197 = OUTLINED_FUNCTION_31_21();
                v200 = 25;
                goto LABEL_90;
              case 45:
                bspop_boa(v2);
                v157 = v87;
                goto LABEL_139;
              case 46:
                OUTLINED_FUNCTION_5_36();
                v215 = test_string_s();
                LODWORD(v128) = v87;
                if (v215)
                {
                  goto LABEL_70;
                }

                v216 = OUTLINED_FUNCTION_3_38();
                v220 = testFldeq(v216, v217, v218, v219);
                v128 = v87;
                if (v220)
                {
                  goto LABEL_70;
                }

                goto LABEL_95;
              case 47:
                bspop_boa(v2);
                OUTLINED_FUNCTION_70_12();
                bspush_ca_scan_boa();
                v197 = OUTLINED_FUNCTION_31_21();
                v200 = 26;
LABEL_90:
                v184 = testFldeq(v197, v198, v199, v200);
                goto LABEL_91;
              case 48:
                bspop_boa(v2);
LABEL_95:
                v203 = advance_tok(v2, v128, v201, v202);
                v157 = v87;
                LODWORD(v128) = v87;
                if (!v203)
                {
                  goto LABEL_139;
                }

                goto LABEL_70;
              case 50:
                goto LABEL_121;
              case 51:
                goto LABEL_120;
              case 52:
                v26 = v87;
                goto LABEL_30;
              case 53:
                v164 = OUTLINED_FUNCTION_70_12();
                starttest(v164, v165);
                v166 = OUTLINED_FUNCTION_71_12();
                if (lpta_loadp_setscan_l(v166, v167, v168))
                {
                  goto LABEL_79;
                }

                goto LABEL_83;
              case 54:
                OUTLINED_FUNCTION_87_9();
                v161 = OUTLINED_FUNCTION_69_12();
                v163 = setd_lookup(v161, v162, 26);
                goto LABEL_104;
              case 55:
                v159 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v159, v160);
                goto LABEL_103;
              case 56:
              case 58:
                goto LABEL_62;
              case 57:
LABEL_103:
                OUTLINED_FUNCTION_5_36();
                v163 = test_string_s();
LABEL_104:
                v134 = v87;
                LODWORD(v128) = v87;
                if (!v163)
                {
                  goto LABEL_62;
                }

                goto LABEL_70;
              case 60:
LABEL_79:
                v169 = OUTLINED_FUNCTION_70_12();
                starttest(v169, v170);
                v171 = OUTLINED_FUNCTION_71_12();
                if (!lpta_loadp_setscan_r(v171, v172, v173) && !advance_tok(v2, v174, v175, v176))
                {
                  goto LABEL_81;
                }

                goto LABEL_128;
              case 61:
LABEL_83:
                savescptr(v2, 61, v386);
                OUTLINED_FUNCTION_5_36();
                v185 = test_string_s();
                LODWORD(v128) = v87;
                if (!v185)
                {
                  v186 = OUTLINED_FUNCTION_71_12();
                  v189 = lpta_loadp_setscan_r(v186, v187, v188);
                  LODWORD(v128) = v87;
                  if (!v189)
                  {
                    v192 = advance_tok(v2, v87, v190, v191);
                    LODWORD(v128) = v87;
                    if (!v192)
                    {
                      v195 = advance_tok(v2, v87, v193, v194);
                      LODWORD(v128) = v87;
                      if (!v195)
                      {
                        goto LABEL_87;
                      }
                    }
                  }
                }

                goto LABEL_70;
              case 62:
LABEL_87:
                savescptr(v2, 62, &v389);
                OUTLINED_FUNCTION_5_36();
                v196 = test_string_s();
                LODWORD(v128) = v87;
                if (v196)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_127_4();
                v264 = OUTLINED_FUNCTION_1_39();
                goto LABEL_129;
              case 63:
              case 71:
                goto LABEL_128;
              case 64:
LABEL_81:
                savescptr(v2, 64, &v389);
                OUTLINED_FUNCTION_70_12();
                bspush_ca_scan_boa();
                v177 = OUTLINED_FUNCTION_3_38();
                v181 = testFldeq(v177, v178, v179, v180);
                LODWORD(v128) = v87;
                if (!v181)
                {
                  v184 = advance_tok(v2, v87, v182, v183);
LABEL_91:
                  if (v184)
                  {
                    LODWORD(v128) = v87;
                  }

                  else
                  {
                    LODWORD(v128) = 1;
                  }
                }

                goto LABEL_70;
              case 65:
                bspop_boa(v2);
                goto LABEL_128;
              case 66:
                v26 = v87;
                goto LABEL_31;
              case 67:
                v26 = v87;
                goto LABEL_36;
              case 68:
                v26 = v87;
                goto LABEL_38;
              case 69:
                goto LABEL_133;
              case 70:
                bspop_boa(v2);
                v239 = OUTLINED_FUNCTION_70_12();
                starttest(v239, v240);
                v241 = OUTLINED_FUNCTION_71_12();
                if (!lpta_loadp_setscan_r(v241, v242, v243))
                {
                  OUTLINED_FUNCTION_5_36();
                  if (!test_string_s())
                  {
                    OUTLINED_FUNCTION_127_4();
                    v244 = OUTLINED_FUNCTION_0_40();
                    if (!insert_2pt_s(v244, v245, v246, v247, v248))
                    {
                      goto LABEL_244;
                    }
                  }
                }

LABEL_128:
                OUTLINED_FUNCTION_127_4();
                v264 = OUTLINED_FUNCTION_0_40();
                goto LABEL_129;
              case 73:
                v26 = v87;
                goto LABEL_41;
              case 74:
                goto LABEL_143;
              case 75:
                v26 = v87;
                goto LABEL_43;
              case 76:
                v26 = v87;
                goto LABEL_63;
              case 77:
                goto LABEL_46;
              default:
                goto LABEL_3;
            }
          }

          v118 = OUTLINED_FUNCTION_39_16();
          starttest(v118, v119);
          v120 = OUTLINED_FUNCTION_24_26();
          if (!lpta_loadp_setscan_r(v120, v121, v122) && !advance_tok(v2, v123, v124, v125))
          {
            OUTLINED_FUNCTION_17_33();
            if (!test_string_s())
            {
              bspush_ca_scan(v2, 10);
              OUTLINED_FUNCTION_17_33();
              v126 = test_string_s();
              v127 = v26;
              LODWORD(v128) = v26;
              if (v126)
              {
                goto LABEL_70;
              }

LABEL_59:
              v26 = v127;
              v129 = OUTLINED_FUNCTION_95_8();
              lpta_rpta_loadp(v129, v130, &v389);
              v113 = OUTLINED_FUNCTION_28_23();
              v117 = &unk_28064B831;
              v116 = v25;
              goto LABEL_140;
            }
          }

LABEL_162:
          v271 = OUTLINED_FUNCTION_24_26();
          if (!lpta_loadp_setscan_r(v271, v272, v273))
          {
            OUTLINED_FUNCTION_17_33();
            if (!test_string_s())
            {
LABEL_164:
              v274 = OUTLINED_FUNCTION_134_4();
              savescptr(v274, 14, &v389);
            }
          }

LABEL_165:
          v275 = OUTLINED_FUNCTION_93_9();
          is_nasal_vow(v275, v276);
          if (!v277)
          {
            v278 = OUTLINED_FUNCTION_95_8();
            lpta_rpta_loadp(v278, v279, &v389);
            v280 = OUTLINED_FUNCTION_28_23();
            if (!insert_2pt_s(v280, v281, v282, &unk_28064B848, v25))
            {
              goto LABEL_244;
            }
          }

LABEL_167:
          starttest(v2, 16);
          v283 = OUTLINED_FUNCTION_95_8();
          LODWORD(v87) = v26;
          if (lpta_loadp_setscan_l(v283, v284, v3))
          {
LABEL_168:
            starttest(v2, 18);
            v285 = OUTLINED_FUNCTION_24_26();
            if (!lpta_loadp_setscan_r(v285, v286, v287))
            {
              OUTLINED_FUNCTION_17_33();
              if (!test_string_s())
              {
                v305 = OUTLINED_FUNCTION_156_3();
                bspush_ca_scan(v305, v306);
                OUTLINED_FUNCTION_17_33();
                v307 = test_string_s();
                v87 = v26;
                LODWORD(v128) = v26;
                if (v307)
                {
                  goto LABEL_70;
                }

LABEL_184:
                v308 = OUTLINED_FUNCTION_44_15();
                savescptr(v308, v309, &v389);
                bspush_ca_scan(v2, 20);
                bspush_ca_scan(v2, 21);
                OUTLINED_FUNCTION_17_33();
LABEL_131:
                v249 = test_string_s();
                v155 = v87;
                LODWORD(v128) = v87;
                if (v249)
                {
                  goto LABEL_70;
                }

LABEL_132:
                v26 = v155;
                v250 = OUTLINED_FUNCTION_95_8();
                lpta_rpta_loadp(v250, v251, &v389);
                v113 = OUTLINED_FUNCTION_2_38();
                v117 = &unk_28064B834;
                goto LABEL_140;
              }
            }

LABEL_170:
            starttest(v2, 22);
            OUTLINED_FUNCTION_22_26();
            if (v36)
            {
              v288 = OUTLINED_FUNCTION_24_26();
              if (!lpta_loadp_setscan_r(v288, v289, v290))
              {
                OUTLINED_FUNCTION_17_33();
                if (!test_string_s())
                {
                  goto LABEL_214;
                }
              }
            }

LABEL_186:
            starttest(v2, 23);
            OUTLINED_FUNCTION_22_26();
            if (v36 && (v310 = OUTLINED_FUNCTION_24_26(), !lpta_loadp_setscan_r(v310, v311, v312)))
            {
              bspush_ca_scan(v2, 24);
              OUTLINED_FUNCTION_54_14();
              v325 = test_string_s();
              v156 = v26;
              LODWORD(v128) = v26;
              if (v325)
              {
                goto LABEL_70;
              }

LABEL_208:
              v26 = v156;
              savescptr(v2, 25, v385);
              v326 = OUTLINED_FUNCTION_99_7();
              lpta_rpta_loadp(v326, v327, v385);
              v328 = OUTLINED_FUNCTION_73_12();
              if (setd_lookup(v328, v329, 177))
              {
                goto LABEL_236;
              }

              v330 = OUTLINED_FUNCTION_114_4();
              lpta_rpta_loadp(v330, v385, v331);
              v332 = OUTLINED_FUNCTION_73_12();
              v334 = 178;
            }

            else
            {
LABEL_189:
              v313 = OUTLINED_FUNCTION_147_4();
              starttest(v313, v314);
              OUTLINED_FUNCTION_22_26();
              if (!v36 || (v315 = OUTLINED_FUNCTION_24_26(), lpta_loadp_setscan_r(v315, v316, v317)) || (OUTLINED_FUNCTION_17_33(), test_string_s()))
              {
LABEL_193:
                starttest(v2, 30);
                OUTLINED_FUNCTION_22_26();
                if (v36)
                {
                  v318 = OUTLINED_FUNCTION_24_26();
                  if (!lpta_loadp_setscan_r(v318, v319, v320))
                  {
                    OUTLINED_FUNCTION_45_15();
                    v87 = v26;
                    if (!test_string_s())
                    {
LABEL_215:
                      v26 = v87;
                      v347 = OUTLINED_FUNCTION_43_15();
                      savescptr(v347, v348, v385);
                      v349 = OUTLINED_FUNCTION_99_7();
                      lpta_rpta_loadp(v349, v350, v385);
                      v351 = OUTLINED_FUNCTION_73_12();
                      if (!setd_lookup(v351, v352, 181))
                      {
                        v353 = OUTLINED_FUNCTION_114_4();
                        lpta_rpta_loadp(v353, v385, v354);
                        v355 = OUTLINED_FUNCTION_73_12();
                        if (!setd_lookup(v355, v356, 178))
                        {
                          v357 = OUTLINED_FUNCTION_95_8();
                          lpta_rpta_loadp(v357, v358, &v389);
                          v113 = OUTLINED_FUNCTION_2_38();
                          v117 = &unk_28064B833;
                          goto LABEL_140;
                        }
                      }

                      goto LABEL_236;
                    }
                  }
                }

LABEL_197:
                starttest(v2, 32);
                OUTLINED_FUNCTION_22_26();
                if (v36)
                {
                  OUTLINED_FUNCTION_87_9();
                  v321 = OUTLINED_FUNCTION_73_12();
                  if (!setd_lookup(v321, v322, 182))
                  {
                    goto LABEL_214;
                  }
                }

LABEL_200:
                starttest(v2, 33);
                OUTLINED_FUNCTION_22_26();
                if (v36)
                {
                  v323 = OUTLINED_FUNCTION_93_9();
                  lpta_loadpn(v323, v324);
                  OUTLINED_FUNCTION_149_4();
                  if (!compare_ptas(v2) && !testeq(v2) && !lpta_loadp_setscan_r(v2, v2 + 1320, 4))
                  {
                    if (testFldeq(v2, 4u, v3, v3))
                    {
                      goto LABEL_236;
                    }

                    bspush_ca_scan_boa();
                    v259 = testFldeq(v2, 4u, 2, 2);
                    goto LABEL_135;
                  }
                }

LABEL_219:
                OUTLINED_FUNCTION_22_26();
                if (v36)
                {
                  OUTLINED_FUNCTION_87_9();
                  v359 = OUTLINED_FUNCTION_73_12();
                  if (!setd_lookup(v359, v360, 183))
                  {
                    v361 = OUTLINED_FUNCTION_95_8();
                    lpta_rpta_loadp(v361, v362, &v389);
                    v363 = OUTLINED_FUNCTION_2_38();
                    if (!insert_2pt_s(v363, v364, v365, &unk_28064B833, v366))
                    {
                      goto LABEL_244;
                    }
                  }
                }

LABEL_228:
                LODWORD(v87) = v26;
                starttest(v2, 36);
                v367 = OUTLINED_FUNCTION_24_26();
                if (!lpta_loadp_setscan_l(v367, v368, v369))
                {
LABEL_230:
                  savescptr(v2, 37, v386);
                  if (!advance_tok(v2, v372, v373, v374) && !advance_tok(v2, v375, v376, v377))
                  {
                    OUTLINED_FUNCTION_17_33();
                    v378 = test_string_s();
                    LODWORD(v128) = v26;
                    if (v378)
                    {
                      goto LABEL_70;
                    }

LABEL_233:
                    v379 = OUTLINED_FUNCTION_134_4();
                    if (!test_synch(v379, 38, v3, &_MergedGlobals_33) && !lpta_loadp_setscan_r(v2, v386, v3))
                    {
                      OUTLINED_FUNCTION_54_14();
                      if (!test_string_s())
                      {
                        v380 = OUTLINED_FUNCTION_95_8();
                        lpta_rpta_loadp(v380, v381, &v389);
                        v113 = OUTLINED_FUNCTION_1_39();
                        v117 = &unk_28064B8AE;
                        goto LABEL_140;
                      }
                    }
                  }

                  goto LABEL_236;
                }

LABEL_229:
                v370 = OUTLINED_FUNCTION_95_8();
                lpta_rpta_loadp(v370, v371, &v389);
                v264 = OUTLINED_FUNCTION_2_38();
                v267 = &unk_28064B834;
LABEL_129:
                v151 = insert_2pt_s(v264, v265, v266, v267, v268);
LABEL_69:
                LODWORD(v128) = v87;
                if (v151)
                {
                  goto LABEL_70;
                }

LABEL_244:
                OUTLINED_FUNCTION_100_6(v390);
                goto LABEL_3;
              }

LABEL_211:
              v335 = OUTLINED_FUNCTION_134_4();
              savescptr(v335, 29, v385);
              v336 = OUTLINED_FUNCTION_99_7();
              lpta_rpta_loadp(v336, v337, v385);
              v338 = OUTLINED_FUNCTION_73_12();
              if (setd_lookup(v338, v339, 179))
              {
                goto LABEL_236;
              }

              v340 = OUTLINED_FUNCTION_114_4();
              lpta_rpta_loadp(v340, v385, v341);
              v332 = OUTLINED_FUNCTION_73_12();
              v334 = 180;
            }

            if (setd_lookup(v332, v333, v334))
            {
              goto LABEL_236;
            }

            goto LABEL_214;
          }

LABEL_175:
          v26 = v386;
          savescptr(v2, 17, v386);
          OUTLINED_FUNCTION_17_33();
          if (test_string_s() || (v291 = OUTLINED_FUNCTION_110_4(), lpta_loadp_setscan_r(v291, v292, v3)) || advance_tok(v2, v293, v294, v295) || advance_tok(v2, v296, v297, v298) || (OUTLINED_FUNCTION_17_33(), test_string_s()) || (v299 = OUTLINED_FUNCTION_45_15(), testFldeq(v299, v300, v301, v3)) || advance_tok(v2, v302, v303, v304))
          {
            LODWORD(v128) = v87;
            goto LABEL_70;
          }

          v382 = OUTLINED_FUNCTION_95_8();
          lpta_rpta_loadp(v382, v383, &v389);
          v264 = OUTLINED_FUNCTION_2_38();
          v267 = &unk_28064B84B;
          goto LABEL_129;
        }
      }

      break;
    }

    *(v2 + 6190) = 1;
    goto LABEL_244;
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_131_4();
}

uint64_t e_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  v648 = *MEMORY[0x277D85DE8];
  v644[0] = 0;
  v644[1] = 0;
  v642 = 0;
  v643 = 0;
  v641[0] = 0;
  v641[1] = 0;
  v639 = 0;
  v640 = 0;
  *&v4 = OUTLINED_FUNCTION_122_4();
  v635 = v4;
  *v636 = v4;
  OUTLINED_FUNCTION_84_10(v5, v6, v7, v8, v9, v10, v11, v12, v608, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634);
  OUTLINED_FUNCTION_55_14();
  v13 = setjmp(v3);
  if (!v13 && !OUTLINED_FUNCTION_137_4(v13, &v610, v647, v646, v645))
  {
    v15 = OUTLINED_FUNCTION_86_9();
    get_parm(v15, v16, v17, -6);
    OUTLINED_FUNCTION_41_15();
    push_ptr_init(v1, v641);
    push_ptr_init(v1, &v639);
    push_ptr_init(v1, &v637);
    *v636 = 0;
    *&v636[8] = 0;
    *&v636[14] = 0;
    LODWORD(v635) = -65534;
    v18 = OUTLINED_FUNCTION_117_4();
    push_ptr_init(v18, v19);
    v20 = 0;
    v21 = OUTLINED_FUNCTION_98_7();
    v24 = fence_37(v21, v22, v23);
    OUTLINED_FUNCTION_111_4(v24, v25, &unk_28064B83D);
    v26 = OUTLINED_FUNCTION_116_4();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_74_12();
    if (lpta_loadp_setscan_r(v28, v29, &v635))
    {
      while (2)
      {
        v30 = OUTLINED_FUNCTION_32_20();
        starttest(v30, v31);
        v32 = OUTLINED_FUNCTION_27_24();
        LODWORD(v35) = v20;
        v36 = v20;
        if (lpta_loadp_setscan_l(v32, v33, v34))
        {
LABEL_7:
          v37 = OUTLINED_FUNCTION_47_15();
          starttest(v37, v38);
          v39 = OUTLINED_FUNCTION_27_24();
          LODWORD(v42) = v36;
          v35 = v36;
          if (lpta_loadp_setscan_l(v39, v40, v41))
          {
LABEL_8:
            v43 = OUTLINED_FUNCTION_27_24();
            if (lpta_loadp_setscan_r(v43, v44, v45) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
            {
LABEL_10:
              v46 = OUTLINED_FUNCTION_27_24();
              if (lpta_loadp_setscan_r(v46, v47, v48) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
              {
LABEL_12:
                v49 = OUTLINED_FUNCTION_27_24();
                if (lpta_loadp_setscan_r(v49, v50, v51) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
                {
LABEL_14:
                  v52 = OUTLINED_FUNCTION_70_12();
                  starttest(v52, v53);
                  v54 = OUTLINED_FUNCTION_27_24();
                  if (lpta_loadp_setscan_r(v54, v55, v56))
                  {
LABEL_15:
                    v57 = OUTLINED_FUNCTION_27_24();
                    if (lpta_loadp_setscan_r(v57, v58, v59) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
                    {
LABEL_17:
                      v60 = OUTLINED_FUNCTION_70_12();
                      starttest(v60, v61);
                      v62 = OUTLINED_FUNCTION_27_24();
                      if (!lpta_loadp_setscan_r(v62, v63, v64))
                      {
                        OUTLINED_FUNCTION_13_34();
                        LODWORD(v36) = v35;
                        if (!test_string_s())
                        {
LABEL_188:
                          v435 = OUTLINED_FUNCTION_86_9();
                          savescptr(v435, v436, v437);
                          v438 = OUTLINED_FUNCTION_86_9();
                          lpta_rpta_loadp(v438, v439, v440);
LABEL_182:
                          v422 = OUTLINED_FUNCTION_0_40();
                          inserted = insert_2pt_s(v422, v423, v424, v425, v426);
LABEL_183:
                          LODWORD(v107) = v36;
                          if (!inserted)
                          {
                            goto LABEL_280;
                          }

                          goto LABEL_91;
                        }
                      }

LABEL_19:
                      v42 = v35;
                      v65 = OUTLINED_FUNCTION_71_12();
                      if (!lpta_loadp_setscan_l(v65, v66, v67))
                      {
                        OUTLINED_FUNCTION_17_33();
                        if (!test_string_s())
                        {
                          *(v1 + 136) = 1;
                          v68 = OUTLINED_FUNCTION_9_35();
                          if (!test_ptr(v68, v69, v70))
                          {
                            v206 = OUTLINED_FUNCTION_70_12();
                            starttest(v206, v207);
                            v208 = OUTLINED_FUNCTION_27_24();
                            if (lpta_loadp_setscan_r(v208, v209, v210) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
                            {
LABEL_71:
                              v211 = OUTLINED_FUNCTION_70_12();
                              starttest(v211, v212);
                              v213 = OUTLINED_FUNCTION_27_24();
                              if (!lpta_loadp_setscan_r(v213, v214, v215))
                              {
                                v216 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v216, v217);
                                v218 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v218, v219);
                                OUTLINED_FUNCTION_5_36();
                                v220 = test_string_s();
                                LODWORD(v107) = v35;
                                v221 = v35;
                                if (v220)
                                {
                                  goto LABEL_91;
                                }

LABEL_73:
                                v222 = v221;
                                OUTLINED_FUNCTION_5_36();
                                v223 = test_string_s();
                                LODWORD(v107) = v222;
                                LODWORD(v106) = v222;
                                if (v223)
                                {
                                  goto LABEL_91;
                                }

LABEL_246:
                                LODWORD(v35) = v106;
                              }
                            }

                            else
                            {
                              v232 = OUTLINED_FUNCTION_70_12();
                              bspush_ca_scan(v232, v233);
                              OUTLINED_FUNCTION_13_34();
                              v234 = test_string_s();
                              LODWORD(v107) = v35;
                              LODWORD(v105) = v35;
                              if (v234)
                              {
                                goto LABEL_91;
                              }

LABEL_78:
                              LODWORD(v35) = v105;
                            }

LABEL_279:
                            v599 = OUTLINED_FUNCTION_30_22();
                            lpta_rpta_loadp(v599, v600, v601);
                            v602 = OUTLINED_FUNCTION_0_40();
                            v607 = insert_2pt_s(v602, v603, v604, v605, v606);
                            LODWORD(v107) = v35;
                            if (!v607)
                            {
                              goto LABEL_280;
                            }

                            goto LABEL_91;
                          }
                        }
                      }

LABEL_22:
                      v35 = v42;
                      v71 = OUTLINED_FUNCTION_70_12();
                      starttest(v71, v72);
                      v73 = OUTLINED_FUNCTION_71_12();
                      if (!lpta_loadp_setscan_l(v73, v74, v75))
                      {
LABEL_204:
                        OUTLINED_FUNCTION_139_4(65, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, *(&v635 + 1), *v636, *&v636[8], *&v636[16], v637, v638, v639, v640, v641[0]);
                        OUTLINED_FUNCTION_17_33();
                        if (test_string_s())
                        {
                          goto LABEL_266;
                        }

                        *(v1 + 136) = 1;
                        v476 = OUTLINED_FUNCTION_9_35();
                        if (test_ptr(v476, v477, v478))
                        {
                          goto LABEL_266;
                        }

                        v479 = OUTLINED_FUNCTION_65_12();
                        if (lpta_loadp_setscan_r(v479, v480, v481))
                        {
                          goto LABEL_266;
                        }

                        if (advance_tok(v1, v482, v483, v484))
                        {
                          goto LABEL_266;
                        }

                        OUTLINED_FUNCTION_5_36();
                        if (test_string_s())
                        {
                          goto LABEL_266;
                        }

                        v485 = OUTLINED_FUNCTION_12_35();
                        if (testFldeq(v485, v486, v487, 2))
                        {
                          goto LABEL_266;
                        }

                        if (advance_tok(v1, v488, v489, v490))
                        {
                          goto LABEL_266;
                        }

                        v491 = OUTLINED_FUNCTION_12_35();
                        if (testFldeq(v491, v492, v493, 2) || advance_tok(v1, v494, v495, v496))
                        {
                          goto LABEL_266;
                        }

                        goto LABEL_268;
                      }

LABEL_23:
                      v76 = OUTLINED_FUNCTION_70_12();
                      starttest(v76, v77);
                      v78 = OUTLINED_FUNCTION_27_24();
                      if (lpta_loadp_setscan_r(v78, v79, v80))
                      {
LABEL_24:
                        v81 = OUTLINED_FUNCTION_27_24();
                        if (!lpta_loadp_setscan_r(v81, v82, v83))
                        {
                          OUTLINED_FUNCTION_5_36();
                          LODWORD(v42) = v35;
                          if (!test_string_s())
                          {
LABEL_225:
                            v507 = OUTLINED_FUNCTION_86_9();
                            savescptr(v507, v508, v509);
                            v510 = OUTLINED_FUNCTION_70_12();
                            starttest(v510, v511);
                            v512 = OUTLINED_FUNCTION_74_12();
                            lpta_loadpn(v512, v513);
                            OUTLINED_FUNCTION_149_4();
                            if (!compare_ptas(v1) && !testeq(v1))
                            {
                              v514 = OUTLINED_FUNCTION_30_22();
                              lpta_rpta_loadp(v514, v515, v516);
                              v517 = OUTLINED_FUNCTION_0_40();
                              if (!insert_2pt_s(v517, v518, v519, v520, v521))
                              {
                                goto LABEL_280;
                              }
                            }

                            goto LABEL_268;
                          }
                        }

LABEL_26:
                        v84 = OUTLINED_FUNCTION_70_12();
                        starttest(v84, v85);
                        v86 = OUTLINED_FUNCTION_27_24();
                        if (lpta_loadp_setscan_r(v86, v87, v88))
                        {
LABEL_27:
                          v89 = OUTLINED_FUNCTION_70_12();
                          starttest(v89, v90);
                          v91 = OUTLINED_FUNCTION_27_24();
                          if (lpta_loadp_setscan_r(v91, v92, v93))
                          {
LABEL_28:
                            v94 = OUTLINED_FUNCTION_70_12();
                            starttest(v94, v95);
                            v96 = OUTLINED_FUNCTION_27_24();
                            if (!lpta_loadp_setscan_r(v96, v97, v98))
                            {
                              v99 = OUTLINED_FUNCTION_70_12();
                              bspush_ca_scan(v99, v100);
                              v101 = OUTLINED_FUNCTION_12_35();
                              v104 = testFldeq(v101, v102, v103, 2);
                              v107 = v35;
                              v108 = v35;
                              if (v104)
                              {
                                goto LABEL_91;
                              }

LABEL_30:
                              LODWORD(v42) = v108;
                              v109 = advance_tok(v1, v107, v105, v106);
                              LODWORD(v107) = v42;
                              if (!v109)
                              {
LABEL_251:
                                v540 = OUTLINED_FUNCTION_86_9();
                                savescptr(v540, v541, v542);
                                v543 = OUTLINED_FUNCTION_70_12();
                                starttest(v543, v544);
                                v545 = OUTLINED_FUNCTION_70_12();
                                bspush_ca(v545);
                                v546 = OUTLINED_FUNCTION_74_12();
                                lpta_loadpn(v546, v547);
                                v548 = OUTLINED_FUNCTION_105_5();
                                rpta_loadpn(v548, v549);
                                if (!compare_ptas(v1))
                                {
                                  v550 = testeq(v1);
                                  LODWORD(v107) = v42;
                                  v259 = v42;
                                  if (v550)
                                  {
                                    goto LABEL_91;
                                  }

LABEL_253:
                                  LODWORD(v35) = v259;
                                  goto LABEL_279;
                                }

LABEL_266:
                                LODWORD(v107) = v42;
                              }

LABEL_91:
                              v256 = *(v1 + 104);
                              if (v256)
                              {
                                v257 = OUTLINED_FUNCTION_92_9(v256);
                                v36 = v107;
                              }

                              else
                              {
                                v257 = vback(v1, v107);
                                v36 = 0;
                              }

                              v149 = v36;
                              v105 = v36;
                              v221 = v36;
                              v106 = v36;
                              v180 = v36;
                              LODWORD(v42) = v36;
                              v258 = v36;
                              v198 = v36;
                              v108 = v36;
                              v259 = v36;
                              switch(v257)
                              {
                                case 1:
                                  v20 = v36;
                                  continue;
                                case 2:
                                  OUTLINED_FUNCTION_5_36();
                                  v260 = test_string_s();
                                  v149 = v36;
                                  v107 = v36;
                                  if (!v260)
                                  {
                                    goto LABEL_46;
                                  }

                                  goto LABEL_91;
                                case 3:
                                  goto LABEL_46;
                                case 4:
                                case 44:
                                case 93:
                                case 99:
                                case 104:
                                case 121:
                                case 123:
                                  goto LABEL_181;
                                case 5:
                                  bspop_boa(v1);
                                  v411 = OUTLINED_FUNCTION_30_22();
                                  lpta_rpta_loadp(v411, v412, v413);
                                  goto LABEL_182;
                                case 6:
                                case 7:
                                case 25:
                                case 28:
                                case 31:
                                case 35:
                                case 41:
                                case 45:
                                case 54:
                                case 70:
                                case 74:
                                case 92:
                                case 96:
                                case 110:
                                case 120:
                                  goto LABEL_280;
                                case 8:
                                  goto LABEL_7;
                                case 9:
                                  LODWORD(v35) = v36;
                                  goto LABEL_84;
                                case 10:
                                  bspop_boa(v1);
                                  v326 = advance_tok(v1, v323, v324, v325);
                                  LODWORD(v107) = v36;
                                  if (v326)
                                  {
                                    goto LABEL_91;
                                  }

                                  v327 = OUTLINED_FUNCTION_3_38();
                                  v331 = testFldeq(v327, v328, v329, v330);
                                  v107 = v36;
                                  if (v331)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_133;
                                case 11:
                                  v344 = OUTLINED_FUNCTION_59_13();
                                  bspush_ca_scan(v344, v345);
                                  v313 = OUTLINED_FUNCTION_31_21();
                                  v316 = 21;
                                  goto LABEL_141;
                                case 12:
                                case 19:
                                  goto LABEL_90;
                                case 13:
                                  v313 = OUTLINED_FUNCTION_31_21();
                                  v316 = 29;
                                  goto LABEL_141;
                                case 14:
                                  v35 = v36;
                                  goto LABEL_8;
                                case 15:
                                  LODWORD(v42) = v36;
                                  goto LABEL_217;
                                case 16:
                                  LODWORD(v35) = v36;
                                  goto LABEL_238;
                                case 17:
                                  bspop_boa(v1);
LABEL_133:
                                  v338 = advance_tok(v1, v107, v332, v333);
                                  LODWORD(v107) = v36;
                                  if (!v338)
                                  {
                                    goto LABEL_181;
                                  }

                                  goto LABEL_91;
                                case 18:
                                  v311 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v311, v312);
                                  v313 = OUTLINED_FUNCTION_31_21();
                                  v316 = 23;
                                  goto LABEL_141;
                                case 20:
                                  v317 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v317, v318);
                                  v313 = OUTLINED_FUNCTION_31_21();
                                  v316 = 22;
                                  goto LABEL_141;
                                case 21:
                                  v334 = OUTLINED_FUNCTION_58_13();
                                  bspush_ca_scan(v334, v335);
                                  v313 = OUTLINED_FUNCTION_31_21();
                                  v316 = 25;
                                  goto LABEL_141;
                                case 22:
                                  v313 = OUTLINED_FUNCTION_31_21();
                                  v316 = 26;
LABEL_141:
                                  v346 = testFldeq(v313, v314, v315, v316);
                                  LODWORD(v107) = v36;
                                  if (!v346)
                                  {
                                    goto LABEL_90;
                                  }

                                  goto LABEL_91;
                                case 23:
                                  v35 = v36;
                                  goto LABEL_10;
                                case 24:
                                  goto LABEL_189;
                                case 26:
                                  v35 = v36;
                                  goto LABEL_12;
                                case 27:
                                  goto LABEL_190;
                                case 29:
                                  v35 = v36;
                                  goto LABEL_14;
                                case 30:
                                  goto LABEL_191;
                                case 32:
                                  v35 = v36;
                                  goto LABEL_15;
                                case 33:
                                  OUTLINED_FUNCTION_5_36();
                                  v336 = test_string_s();
                                  LODWORD(v107) = v36;
                                  if (!v336)
                                  {
                                    goto LABEL_33;
                                  }

                                  goto LABEL_91;
                                case 34:
                                  goto LABEL_33;
                                case 36:
                                  v35 = v36;
                                  goto LABEL_17;
                                case 37:
                                  LODWORD(v35) = v36;
                                  goto LABEL_279;
                                case 38:
                                  goto LABEL_43;
                                case 39:
                                  bspop_boa(v1);
                                  v281 = advance_tok(v1, v278, v279, v280);
                                  LODWORD(v107) = v36;
                                  if (v281)
                                  {
                                    goto LABEL_91;
                                  }

                                  is_nasal_vow(v1, &v642);
                                  if (v282)
                                  {
                                    goto LABEL_110;
                                  }

                                  v283 = OUTLINED_FUNCTION_30_22();
                                  lpta_rpta_loadp(v283, v284, v285);
                                  v286 = OUTLINED_FUNCTION_0_40();
                                  if (insert_2pt_s(v286, v287, v288, v289, v290))
                                  {
                                    goto LABEL_110;
                                  }

                                  goto LABEL_280;
                                case 40:
LABEL_110:
                                  v291 = OUTLINED_FUNCTION_70_12();
                                  starttest(v291, v292);
                                  OUTLINED_FUNCTION_22_26();
                                  if (v172)
                                  {
                                    v293 = OUTLINED_FUNCTION_27_24();
                                    if (!lpta_loadp_setscan_r(v293, v294, v295))
                                    {
                                      OUTLINED_FUNCTION_5_36();
                                      if (!test_string_s())
                                      {
                                        goto LABEL_114;
                                      }
                                    }
                                  }

                                  goto LABEL_175;
                                case 42:
LABEL_175:
                                  v400 = OUTLINED_FUNCTION_70_12();
                                  starttest(v400, v401);
                                  OUTLINED_FUNCTION_22_26();
                                  if (v172)
                                  {
                                    OUTLINED_FUNCTION_87_9();
                                    v402 = OUTLINED_FUNCTION_69_12();
                                    if (!setd_lookup(v402, v403, 185))
                                    {
                                      goto LABEL_178;
                                    }
                                  }

                                  goto LABEL_181;
                                case 43:
LABEL_114:
                                  v296 = OUTLINED_FUNCTION_86_9();
                                  savescptr(v296, v297, v298);
                                  v299 = OUTLINED_FUNCTION_86_9();
                                  lpta_rpta_loadp(v299, v300, v301);
                                  v302 = OUTLINED_FUNCTION_69_12();
                                  v304 = setd_lookup(v302, v303, 177);
                                  LODWORD(v107) = v36;
                                  if (!v304)
                                  {
                                    v305 = OUTLINED_FUNCTION_114_4();
                                    lpta_rpta_loadp(v305, v306, v307);
                                    v308 = OUTLINED_FUNCTION_69_12();
                                    v310 = setd_lookup(v308, v309, 178);
                                    LODWORD(v107) = v36;
                                    if (!v310)
                                    {
                                      goto LABEL_178;
                                    }
                                  }

                                  goto LABEL_91;
                                case 46:
                                  v35 = v36;
                                  goto LABEL_19;
                                case 47:
                                  goto LABEL_188;
                                case 48:
                                  v42 = v36;
                                  goto LABEL_22;
                                case 49:
                                  LODWORD(v35) = v36;
                                  goto LABEL_71;
                                case 50:
                                  OUTLINED_FUNCTION_13_34();
                                  v351 = test_string_s();
                                  LODWORD(v107) = v36;
                                  if (v351)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_147;
                                case 51:
                                  goto LABEL_78;
                                case 52:
LABEL_147:
                                  v352 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v352, v353);
                                  OUTLINED_FUNCTION_5_36();
                                  goto LABEL_148;
                                case 53:
                                  OUTLINED_FUNCTION_13_34();
LABEL_148:
                                  v354 = test_string_s();
                                  LODWORD(v105) = v36;
                                  LODWORD(v107) = v36;
                                  if (!v354)
                                  {
                                    goto LABEL_78;
                                  }

                                  goto LABEL_91;
                                case 55:
                                case 112:
                                  LODWORD(v35) = v36;
                                  goto LABEL_279;
                                case 56:
                                  OUTLINED_FUNCTION_5_36();
                                  v347 = test_string_s();
                                  LODWORD(v107) = v36;
                                  if (v347)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_144;
                                case 57:
                                  OUTLINED_FUNCTION_5_36();
                                  v357 = test_string_s();
                                  v221 = v36;
                                  LODWORD(v107) = v36;
                                  if (!v357)
                                  {
                                    goto LABEL_73;
                                  }

                                  goto LABEL_91;
                                case 58:
                                  goto LABEL_73;
                                case 59:
                                  goto LABEL_246;
                                case 60:
                                case 61:
LABEL_144:
                                  v348 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v348, v349);
                                  OUTLINED_FUNCTION_5_36();
                                  v350 = test_string_s();
                                  LODWORD(v106) = v36;
                                  LODWORD(v107) = v36;
                                  if (!v350)
                                  {
                                    goto LABEL_246;
                                  }

                                  goto LABEL_91;
                                case 62:
                                  OUTLINED_FUNCTION_5_36();
                                  v356 = test_string_s();
                                  LODWORD(v107) = v36;
                                  if (!v356)
                                  {
                                    OUTLINED_FUNCTION_70_12();
                                    bspush_ca_scan_boa();
                                    OUTLINED_FUNCTION_29_23();
                                    if (test_string_s())
                                    {
                                      LODWORD(v107) = v36;
                                    }

                                    else
                                    {
                                      LODWORD(v107) = 1;
                                    }
                                  }

                                  goto LABEL_91;
                                case 63:
                                  bspop_boa(v1);
                                  LODWORD(v106) = v36;
                                  goto LABEL_246;
                                case 64:
                                  v35 = v36;
                                  goto LABEL_23;
                                case 65:
                                  LODWORD(v42) = v36;
                                  goto LABEL_204;
                                case 66:
                                  v35 = v36;
                                  goto LABEL_24;
                                case 67:
                                  v35 = v36;
                                  goto LABEL_26;
                                case 68:
                                  LODWORD(v42) = v36;
                                  goto LABEL_225;
                                case 69:
                                  LODWORD(v42) = v36;
                                  goto LABEL_268;
                                case 71:
                                  v35 = v36;
                                  goto LABEL_27;
                                case 72:
                                  goto LABEL_59;
                                case 73:
                                  v236 = v36;
                                  goto LABEL_232;
                                case 75:
                                  goto LABEL_62;
                                case 76:
                                  v180 = v36;
                                  goto LABEL_195;
                                case 77:
                                case 79:
                                case 80:
                                case 81:
                                  v272 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v272, v273);
                                  goto LABEL_102;
                                case 78:
                                  goto LABEL_64;
                                case 82:
LABEL_102:
                                  OUTLINED_FUNCTION_13_34();
                                  v274 = test_string_s();
                                  v180 = v36;
                                  LODWORD(v107) = v36;
                                  if (!v274)
                                  {
                                    goto LABEL_64;
                                  }

                                  goto LABEL_91;
                                case 83:
                                  LODWORD(v42) = v36;
                                  goto LABEL_265;
                                case 84:
                                  v414 = OUTLINED_FUNCTION_70_12();
                                  starttest(v414, v415);
                                  v416 = OUTLINED_FUNCTION_71_12();
                                  if (lpta_loadp_setscan_l(v416, v417, v418))
                                  {
                                    goto LABEL_181;
                                  }

                                  goto LABEL_186;
                                case 85:
                                  v319 = OUTLINED_FUNCTION_53_14();
                                  v322 = lpta_loadp_setscan_r(v319, v320, v321);
                                  LODWORD(v107) = v36;
                                  if (v322)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_135;
                                case 86:
                                  goto LABEL_268;
                                case 87:
                                  v275 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v275, v276);
                                  OUTLINED_FUNCTION_13_34();
                                  goto LABEL_138;
                                case 88:
                                  v341 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v341, v342);
                                  OUTLINED_FUNCTION_12_35();
                                  goto LABEL_138;
                                case 89:
                                case 90:
LABEL_135:
                                  v339 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v339, v340);
                                  goto LABEL_136;
                                case 91:
LABEL_136:
                                  OUTLINED_FUNCTION_29_23();
LABEL_138:
                                  v343 = test_string_s();
                                  LODWORD(v42) = v36;
                                  LODWORD(v107) = v36;
                                  if (!v343)
                                  {
                                    goto LABEL_268;
                                  }

                                  goto LABEL_91;
                                case 94:
                                  OUTLINED_FUNCTION_96_7();
                                  v366 = OUTLINED_FUNCTION_9_35();
                                  v369 = test_ptr(v366, v367, v368);
                                  LODWORD(v107) = v36;
                                  if (v369)
                                  {
                                    goto LABEL_91;
                                  }

                                  OUTLINED_FUNCTION_22_26();
                                  if (!v172)
                                  {
                                    goto LABEL_280;
                                  }

                                  v370 = OUTLINED_FUNCTION_70_12();
                                  starttest(v370, v371);
                                  v372 = OUTLINED_FUNCTION_53_14();
                                  if (lpta_loadp_setscan_l(v372, v373, v374))
                                  {
                                    goto LABEL_171;
                                  }

                                  v375 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v375, v376);
                                  v377 = OUTLINED_FUNCTION_3_38();
                                  v381 = testFldeq(v377, v378, v379, v380);
                                  LODWORD(v107) = v36;
                                  if (v381)
                                  {
                                    goto LABEL_91;
                                  }

                                  v384 = advance_tok(v1, v36, v382, v383);
                                  LODWORD(v107) = v36;
                                  if (v384)
                                  {
                                    goto LABEL_91;
                                  }

LABEL_170:
                                  OUTLINED_FUNCTION_151_3(98, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633);
LABEL_171:
                                  v385 = OUTLINED_FUNCTION_70_12();
                                  starttest(v385, v386);
                                  v387 = OUTLINED_FUNCTION_99_7();
                                  lpta_rpta_loadp(v387, v388, v389);
                                  v390 = OUTLINED_FUNCTION_69_12();
                                  if (setd_lookup(v390, v391, 187))
                                  {
                                    goto LABEL_181;
                                  }

                                  v392 = OUTLINED_FUNCTION_30_22();
                                  lpta_rpta_loadp(v392, v393, v394);
                                  v395 = OUTLINED_FUNCTION_0_40();
                                  if (insert_2pt_s(v395, v396, v397, v398, v399))
                                  {
                                    goto LABEL_181;
                                  }

                                  goto LABEL_280;
                                case 95:
                                  do
                                  {
LABEL_186:
                                    v427 = OUTLINED_FUNCTION_70_12();
                                    bspush_ca_scan(v427, v428);
                                    v429 = OUTLINED_FUNCTION_12_35();
                                  }

                                  while (!testFldeq(v429, v430, v431, 2) && !advance_tok(v1, v432, v433, v434));
                                  goto LABEL_187;
                                case 97:
                                  goto LABEL_171;
                                case 98:
                                  goto LABEL_170;
                                case 100:
                                  v462 = v36;
                                  goto LABEL_257;
                                case 101:
                                  OUTLINED_FUNCTION_5_36();
                                  v337 = test_string_s();
                                  v258 = v36;
                                  LODWORD(v107) = v36;
                                  if (!v337)
                                  {
                                    goto LABEL_278;
                                  }

                                  goto LABEL_91;
                                case 102:
                                  goto LABEL_278;
                                case 103:
                                  v462 = v36;
                                  goto LABEL_271;
                                case 105:
                                  LODWORD(v35) = v36;
                                  goto LABEL_272;
                                case 106:
                                  v35 = v36;
                                  goto LABEL_28;
                                case 107:
                                  OUTLINED_FUNCTION_5_36();
                                  v358 = test_string_s();
                                  v198 = v36;
                                  LODWORD(v107) = v36;
                                  if (!v358)
                                  {
                                    goto LABEL_67;
                                  }

                                  goto LABEL_91;
                                case 108:
                                  goto LABEL_67;
                                case 109:
                                  LODWORD(v35) = v36;
                                  goto LABEL_199;
                                case 111:
                                  LODWORD(v35) = v36;
                                  goto LABEL_279;
                                case 113:
                                  v261 = OUTLINED_FUNCTION_12_35();
                                  v264 = testFldeq(v261, v262, v263, 3);
                                  v108 = v36;
                                  v107 = v36;
                                  if (!v264)
                                  {
                                    goto LABEL_30;
                                  }

                                  goto LABEL_91;
                                case 114:
                                  goto LABEL_30;
                                case 115:
                                  LODWORD(v42) = v36;
                                  goto LABEL_251;
                                case 116:
                                  v265 = OUTLINED_FUNCTION_70_12();
                                  starttest(v265, v266);
                                  v267 = OUTLINED_FUNCTION_27_24();
                                  if (lpta_loadp_setscan_r(v267, v268, v269))
                                  {
                                    goto LABEL_181;
                                  }

                                  v270 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v270, v271);
                                  goto LABEL_105;
                                case 117:
                                  v359 = OUTLINED_FUNCTION_53_14();
                                  v362 = lpta_loadp_setscan_r(v359, v360, v361);
                                  LODWORD(v107) = v36;
                                  if (v362)
                                  {
                                    goto LABEL_91;
                                  }

                                  OUTLINED_FUNCTION_5_36();
                                  v363 = test_string_s();
                                  LODWORD(v107) = v36;
                                  if (v363)
                                  {
                                    goto LABEL_91;
                                  }

                                  v364 = OUTLINED_FUNCTION_70_12();
                                  bspush_ca_scan(v364, v365);
                                  OUTLINED_FUNCTION_29_23();
                                  goto LABEL_151;
                                case 118:
                                  goto LABEL_253;
                                case 119:
                                  OUTLINED_FUNCTION_69_12();
LABEL_151:
                                  v355 = test_string_s();
                                  v259 = v36;
                                  LODWORD(v107) = v36;
                                  if (!v355)
                                  {
                                    goto LABEL_253;
                                  }

                                  goto LABEL_91;
                                case 122:
LABEL_105:
                                  OUTLINED_FUNCTION_5_36();
                                  v277 = test_string_s();
                                  LODWORD(v107) = v36;
                                  if (!v277)
                                  {
                                    goto LABEL_181;
                                  }

                                  goto LABEL_91;
                                default:
                                  goto LABEL_3;
                              }
                            }
                          }

                          else
                          {
                            v195 = OUTLINED_FUNCTION_70_12();
                            bspush_ca_scan(v195, v196);
                            OUTLINED_FUNCTION_5_36();
                            v197 = test_string_s();
                            LODWORD(v107) = v35;
                            v198 = v35;
                            if (v197)
                            {
                              goto LABEL_91;
                            }

LABEL_67:
                            v199 = v198;
                            v200 = OUTLINED_FUNCTION_86_9();
                            savescptr(v200, v201, v202);
                            v203 = OUTLINED_FUNCTION_74_12();
                            is_nasal_vow(v203, v204);
                            if (v205)
                            {
                              LODWORD(v35) = v199;
                            }

                            else
                            {
                              v224 = OUTLINED_FUNCTION_30_22();
                              lpta_rpta_loadp(v224, v225, v226);
                              v227 = OUTLINED_FUNCTION_0_40();
                              LODWORD(v35) = v199;
                              if (!insert_2pt_s(v227, v228, v229, v230, v231))
                              {
                                goto LABEL_280;
                              }
                            }

LABEL_199:
                            v463 = OUTLINED_FUNCTION_70_12();
                            starttest(v463, v464);
                            v465 = OUTLINED_FUNCTION_27_24();
                            if (!lpta_loadp_setscan_r(v465, v466, v467))
                            {
                              OUTLINED_FUNCTION_13_34();
                              if (!test_string_s())
                              {
                                v468 = OUTLINED_FUNCTION_30_22();
                                lpta_rpta_loadp(v468, v469, v470);
                                v471 = OUTLINED_FUNCTION_0_40();
                                if (!insert_2pt_s(v471, v472, v473, v474, v475))
                                {
                                  goto LABEL_280;
                                }
                              }
                            }
                          }

                          goto LABEL_279;
                        }

                        v158 = OUTLINED_FUNCTION_12_35();
                        if (!testFldeq(v158, v159, v160, 2) && !advance_tok(v1, v161, v162, v163))
                        {
                          v164 = OUTLINED_FUNCTION_12_35();
                          if (!testFldeq(v164, v165, v166, 2) && !advance_tok(v1, v167, v168, v169))
                          {
                            v170 = OUTLINED_FUNCTION_70_12();
                            starttest(v170, v171);
                            OUTLINED_FUNCTION_22_26();
                            if (v172 && (v173 = OUTLINED_FUNCTION_27_24(), !lpta_loadp_setscan_r(v173, v174, v175)))
                            {
                              OUTLINED_FUNCTION_13_34();
                              v235 = test_string_s();
                              v236 = v35;
                              LODWORD(v36) = v35;
                              if (!v235)
                              {
LABEL_232:
                                LODWORD(v36) = v236;
                                v522 = OUTLINED_FUNCTION_86_9();
                                savescptr(v522, v523, v524);
                                v525 = OUTLINED_FUNCTION_86_9();
                                lpta_rpta_loadp(v525, v526, v527);
                                v528 = OUTLINED_FUNCTION_69_12();
                                if (setd_lookup(v528, v529, 177) || (v530 = OUTLINED_FUNCTION_114_4(), lpta_rpta_loadp(v530, v531, v532), v533 = OUTLINED_FUNCTION_69_12(), setd_lookup(v533, v534, 178)))
                                {
LABEL_187:
                                  LODWORD(v107) = v36;
                                  goto LABEL_91;
                                }

                                goto LABEL_178;
                              }
                            }

                            else
                            {
                              LODWORD(v36) = v35;
                            }

LABEL_59:
                            v176 = OUTLINED_FUNCTION_70_12();
                            starttest(v176, v177);
                            OUTLINED_FUNCTION_22_26();
                            if (!v172 || (OUTLINED_FUNCTION_87_9(), v178 = OUTLINED_FUNCTION_69_12(), setd_lookup(v178, v179, 186)))
                            {
LABEL_62:
                              v180 = v36;
                              v181 = OUTLINED_FUNCTION_70_12();
                              starttest(v181, v182);
                              v183 = OUTLINED_FUNCTION_27_24();
                              if (!lpta_loadp_setscan_r(v183, v184, v185))
                              {
                                v186 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v186, v187);
                                OUTLINED_FUNCTION_13_34();
                                v188 = test_string_s();
                                LODWORD(v107) = v36;
                                if (v188)
                                {
                                  goto LABEL_91;
                                }

LABEL_64:
                                v189 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v189, v190);
                                v194 = advance_tok(v1, v191, v192, v193);
                                LODWORD(v107) = v180;
                                LODWORD(v42) = v180;
                                if (v194)
                                {
                                  goto LABEL_91;
                                }

LABEL_265:
                                v565 = OUTLINED_FUNCTION_86_9();
                                savescptr(v565, v566, v567);
                                v568 = OUTLINED_FUNCTION_70_12();
                                starttest(v568, v569);
                                v570 = OUTLINED_FUNCTION_70_12();
                                bspush_ca(v570);
                                v571 = OUTLINED_FUNCTION_74_12();
                                lpta_loadpn(v571, v572);
                                v573 = OUTLINED_FUNCTION_105_5();
                                rpta_loadpn(v573, v574);
                                if (compare_ptas(v1))
                                {
                                  goto LABEL_266;
                                }

                                v575 = testeq(v1);
                                LODWORD(v107) = v42;
                                if (v575)
                                {
                                  goto LABEL_91;
                                }

LABEL_268:
                                v576 = OUTLINED_FUNCTION_30_22();
                                lpta_rpta_loadp(v576, v577, v578);
                                v579 = OUTLINED_FUNCTION_0_40();
                                v584 = insert_2pt_s(v579, v580, v581, v582, v583);
                                LODWORD(v107) = v42;
                                if (!v584)
                                {
                                  goto LABEL_280;
                                }

                                goto LABEL_91;
                              }

LABEL_195:
                              v454 = OUTLINED_FUNCTION_70_12();
                              starttest(v454, v455);
                              v456 = OUTLINED_FUNCTION_27_24();
                              if (!lpta_loadp_setscan_r(v456, v457, v458) && !advance_tok(v1, v459, v460, v461))
                              {
                                v596 = OUTLINED_FUNCTION_70_12();
                                bspush_ca_scan(v596, v597);
                                OUTLINED_FUNCTION_5_36();
                                v598 = test_string_s();
                                LODWORD(v107) = v180;
                                v258 = v180;
                                if (v598)
                                {
                                  goto LABEL_91;
                                }

LABEL_278:
                                LODWORD(v35) = v258;
                                goto LABEL_279;
                              }

                              v462 = v180;
LABEL_257:
                              v551 = OUTLINED_FUNCTION_71_12();
                              if (!lpta_loadp_setscan_l(v551, v552, v553))
                              {
                                OUTLINED_FUNCTION_21_27();
                                if (!test_string_s())
                                {
                                  *(v1 + 136) = v180;
                                  v554 = OUTLINED_FUNCTION_9_35();
                                  if (!test_ptr(v554, v555, v556))
                                  {
                                    v557 = OUTLINED_FUNCTION_30_22();
                                    lpta_rpta_loadp(v557, v558, v559);
                                    v560 = OUTLINED_FUNCTION_0_40();
                                    if (!insert_2pt_s(v560, v561, v562, v563, v564))
                                    {
                                      goto LABEL_280;
                                    }
                                  }
                                }
                              }

LABEL_271:
                              v585 = OUTLINED_FUNCTION_70_12();
                              starttest(v585, v586);
                              v587 = OUTLINED_FUNCTION_71_12();
                              LODWORD(v35) = v462;
                              LODWORD(v36) = v462;
                              if (!lpta_loadp_setscan_l(v587, v588, v589))
                              {
LABEL_272:
                                OUTLINED_FUNCTION_139_4(105, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, *(&v635 + 1), *v636, *&v636[8], *&v636[16], v637, v638, v639, v640, v641[0]);
                                OUTLINED_FUNCTION_5_36();
                                if (!test_string_s())
                                {
                                  v590 = OUTLINED_FUNCTION_65_12();
                                  if (!lpta_loadp_setscan_r(v590, v591, v592) && !advance_tok(v1, v593, v594, v595))
                                  {
                                    OUTLINED_FUNCTION_13_34();
                                    if (!test_string_s())
                                    {
                                      goto LABEL_279;
                                    }
                                  }
                                }

                                goto LABEL_81;
                              }

LABEL_181:
                              v419 = OUTLINED_FUNCTION_30_22();
                              lpta_rpta_loadp(v419, v420, v421);
                              goto LABEL_182;
                            }

LABEL_178:
                            v404 = OUTLINED_FUNCTION_30_22();
                            lpta_rpta_loadp(v404, v405, v406);
                            OUTLINED_FUNCTION_74_12();
                            settvar_s();
                            v407 = OUTLINED_FUNCTION_98_7();
                            npush_s(v407);
                            WORD1(v635) = 9;
                            v408 = OUTLINED_FUNCTION_74_12();
                            npop(v408, v409);
                            OUTLINED_FUNCTION_72_12();
                            insert_2ptv();
                            goto LABEL_183;
                          }
                        }
                      }

                      else
                      {
                        v117 = OUTLINED_FUNCTION_12_35();
                        if (!testFldeq(v117, v118, v119, 2) && !advance_tok(v1, v120, v121, v122))
                        {
                          v123 = OUTLINED_FUNCTION_12_35();
                          if (!testFldeq(v123, v124, v125, 2) && !advance_tok(v1, v126, v127, v128))
                          {
                            v129 = OUTLINED_FUNCTION_12_35();
                            if (!testFldeq(v129, v130, v131, 2) && !advance_tok(v1, v132, v133, v134))
                            {
                              goto LABEL_279;
                            }
                          }
                        }
                      }

LABEL_81:
                      LODWORD(v107) = v35;
                      goto LABEL_91;
                    }

                    v135 = OUTLINED_FUNCTION_70_12();
                    starttest(v135, v136);
                    v137 = OUTLINED_FUNCTION_27_24();
                    if (lpta_loadp_setscan_r(v137, v138, v139))
                    {
                      goto LABEL_279;
                    }

                    OUTLINED_FUNCTION_5_36();
                    LODWORD(v36) = v35;
                    if (test_string_s())
                    {
                      goto LABEL_279;
                    }

LABEL_43:
                    LODWORD(v35) = v36;
                    savescptr(v1, 38, &v642);
                    v140 = OUTLINED_FUNCTION_12_35();
                    if (testFldeq(v140, v141, v142, 2))
                    {
                      goto LABEL_81;
                    }

                    OUTLINED_FUNCTION_70_12();
                    bspush_ca_scan_boa();
                    v143 = OUTLINED_FUNCTION_31_21();
                    root_vow = testFldeq(v143, v144, v145, 19);
LABEL_48:
                    if (root_vow)
                    {
                      LODWORD(v107) = v35;
                    }

                    else
                    {
                      LODWORD(v107) = 1;
                    }

                    goto LABEL_91;
                  }

                  v110 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v110, v111);
                  OUTLINED_FUNCTION_5_36();
                  v112 = test_string_s();
                  LODWORD(v107) = v35;
                  if (v112)
                  {
                    goto LABEL_91;
                  }

LABEL_33:
                  v113 = OUTLINED_FUNCTION_86_9();
                  savescptr(v113, v114, v115);
                  v116 = OUTLINED_FUNCTION_86_9();
                  eu_rules(v116);
                }

                else
                {
LABEL_191:
                  v450 = OUTLINED_FUNCTION_86_9();
                  savescptr(v450, v451, v452);
                  v453 = OUTLINED_FUNCTION_30_22();
                  em_rules(v453);
                }
              }

              else
              {
LABEL_190:
                v444 = OUTLINED_FUNCTION_86_9();
                savescptr(v444, v445, v446);
                v447 = OUTLINED_FUNCTION_30_22();
                er_rules(v447, v448, v449, &v639);
              }
            }

            else
            {
LABEL_189:
              v441 = OUTLINED_FUNCTION_86_9();
              savescptr(v441, v442, v443);
              OUTLINED_FUNCTION_30_22();
              en_rules();
            }

LABEL_280:
            OUTLINED_FUNCTION_100_6(v643);
            goto LABEL_4;
          }

LABEL_217:
          OUTLINED_FUNCTION_139_4(15, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, *(&v635 + 1), *v636, *&v636[8], *&v636[16], v637, v638, v639, v640, v641[0]);
          if (advance_tok(v1, v497, v498, v499))
          {
            goto LABEL_266;
          }

          LODWORD(v35) = 1;
          OUTLINED_FUNCTION_17_33();
          if (test_string_s())
          {
            goto LABEL_266;
          }

          *(v1 + 136) = 1;
          v500 = OUTLINED_FUNCTION_9_35();
          if (test_ptr(v500, v501, v502))
          {
            goto LABEL_266;
          }

          v503 = OUTLINED_FUNCTION_65_12();
          if (lpta_loadp_setscan_r(v503, v504, v505))
          {
            goto LABEL_266;
          }

          OUTLINED_FUNCTION_5_36();
          test_string_s();
          OUTLINED_FUNCTION_133_4();
          if (v506)
          {
            goto LABEL_91;
          }

LABEL_238:
          savescptr(v1, 16, &v642);
          v535 = OUTLINED_FUNCTION_12_35();
          if (testFldeq(v535, v536, v537, 2))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_48_15();
          bspush_ca_scan_boa();
          v538 = OUTLINED_FUNCTION_60_13();
          bspush_ca_scan(v538, v539);
          v251 = OUTLINED_FUNCTION_31_21();
          v254 = 12;
        }

        else
        {
LABEL_84:
          OUTLINED_FUNCTION_139_4(9, v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, *(&v635 + 1), *v636, *&v636[8], *&v636[16], v637, v638, v639, v640, v641[0]);
          if (advance_tok(v1, v237, v238, v239))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_96_7();
          v240 = OUTLINED_FUNCTION_9_35();
          if (test_ptr(v240, v241, v242))
          {
            goto LABEL_81;
          }

          v243 = OUTLINED_FUNCTION_65_12();
          if (lpta_loadp_setscan_r(v243, v244, v245))
          {
            goto LABEL_81;
          }

          v246 = OUTLINED_FUNCTION_12_35();
          if (testFldeq(v246, v247, v248, 2))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_49_15();
          bspush_ca_scan_boa();
          v249 = OUTLINED_FUNCTION_42_15();
          bspush_ca_scan(v249, v250);
          v251 = OUTLINED_FUNCTION_31_21();
          v254 = 20;
        }

        break;
      }

      v255 = testFldeq(v251, v252, v253, v254);
      LODWORD(v107) = v35;
      if (!v255)
      {
LABEL_90:
        LODWORD(v107) = 1;
      }

      goto LABEL_91;
    }

    v147 = OUTLINED_FUNCTION_38_17();
    bspush_ca_scan(v147, v148);
    v149 = 0;
LABEL_46:
    LODWORD(v35) = v149;
    *(v1 + 136) = 1;
    *(v1 + 112) = *(v1 + 1344);
    *(v1 + 128) = 0;
    if (test_ptr(v1, v107, v105))
    {
      goto LABEL_81;
    }

    v150 = OUTLINED_FUNCTION_52_14();
    starttest(v150, v151);
    OUTLINED_FUNCTION_35_17();
    bspush_ca_boa();
    root_vow = first_root_vow(v1, v644, v152, v153, v154, v155, v156, v157);
    goto LABEL_48;
  }

LABEL_3:
  v2 = 94;
LABEL_4:
  vretproc(v1);
  return v2;
}

uint64_t e_acute_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v3, v4, v5, v6, v7, v8, v9, v10, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v168);
  OUTLINED_FUNCTION_64_12(v11, v12, v13, v14, v15, v16, v17, v18, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v169, v171, v173, v175, v177);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_14_34(v19, v20, v21, v22, v23, v24, v25, v26, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v170, v172, SHIDWORD(v172), v174, SWORD2(v174), SHIWORD(v174), v176, SWORD2(v176), SBYTE6(v176), SHIBYTE(v176), v178, v179))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_130_4(v28, v29);
  OUTLINED_FUNCTION_41_15();
  fence_37(v1, 0, &null_str_14);
  OUTLINED_FUNCTION_143_4();
  v30 = OUTLINED_FUNCTION_74_12();
  if (lpta_loadp_setscan_r(v30, v31, 1))
  {
LABEL_5:
    v32 = OUTLINED_FUNCTION_35_17();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_16_33();
    if (lpta_loadp_setscan_r(v34, v35, v36) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
    {
LABEL_20:
      v62 = OUTLINED_FUNCTION_88_9();
      lpta_rpta_loadp(v62, v63, v64);
      v48 = OUTLINED_FUNCTION_0_40();
      inserted = insert_2pt_s(v48, v49, v50, v51, v52);
      if (!inserted)
      {
LABEL_21:
        OUTLINED_FUNCTION_79_11(inserted, v54, v55, v56, v57, v58, v59, v60, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164);
        goto LABEL_3;
      }

      goto LABEL_15;
    }

LABEL_7:
    OUTLINED_FUNCTION_81_11(6, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160);
    if (!OUTLINED_FUNCTION_4_37(v37, v38, v39))
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_11:
    while (1)
    {
      v42 = OUTLINED_FUNCTION_12_35();
      if (testFldeq(v42, v43, v44, 2) || advance_tok(v1, v45, v46, v47))
      {
        break;
      }

      v40 = OUTLINED_FUNCTION_128_4();
      bspush_ca_scan(v40, v41);
    }
  }

LABEL_15:
  while (2)
  {
    v61 = *(v1 + 104);
    if (v61)
    {
      inserted = OUTLINED_FUNCTION_92_9(v61);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_136_4();
    }

    switch(inserted)
    {
      case 1:
        goto LABEL_5;
      case 2:
        OUTLINED_FUNCTION_69_12();
        if (!test_string_s())
        {
          goto LABEL_20;
        }

        continue;
      case 3:
        goto LABEL_11;
      case 4:
        goto LABEL_21;
      case 5:
        goto LABEL_20;
      case 6:
        goto LABEL_7;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_118_4();
}

uint64_t accented_e_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_15_33(v4, v5, v6, v7, v8, v9, v10, v11, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153);
  OUTLINED_FUNCTION_64_12(v12, v13, v14, v15, v16, v17, v18, v19, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v156, v158, v160, v162);
  v20 = setjmp(v3);
  if (v20 || OUTLINED_FUNCTION_14_34(v20, v21, v22, v23, v24, v25, v26, v27, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v157, SHIDWORD(v157), v159, SWORD2(v159), SHIWORD(v159), v161, SWORD2(v161), SBYTE6(v161), SHIBYTE(v161), v163, v164))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_23_26();
  get_parm(v29, v30, v31, -6);
  OUTLINED_FUNCTION_41_15();
  v32 = OUTLINED_FUNCTION_98_7();
  fence_37(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_23_26();
  lpta_rpta_loadp(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_6_36();
  if (insert_2pt_s(v38, v39, v40, v41, 0))
  {
LABEL_5:
    v42 = *(v1 + 104);
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_92_9(v42);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_136_4();
    }

    if (v43 == 1)
    {
      goto LABEL_27;
    }

    if (v43 != 2)
    {
      if (v43 != 3)
      {
LABEL_3:
        vretproc(v1);
        return 94;
      }

      goto LABEL_23;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_26();
  if (!v44)
  {
    goto LABEL_27;
  }

  v45 = OUTLINED_FUNCTION_38_17();
  starttest(v45, v46);
  v47 = OUTLINED_FUNCTION_10_35();
  if (!lpta_loadp_setscan_r(v47, v48, v49))
  {
    v50 = OUTLINED_FUNCTION_69_12();
    if (!OUTLINED_FUNCTION_152_3(v50, v51) && !advance_tok(v1, v52, v53, v54))
    {
      v55 = OUTLINED_FUNCTION_88_9();
      lpta_rpta_loadp(v55, v56, v57);
      OUTLINED_FUNCTION_37_17();
      if (!mark_s())
      {
        goto LABEL_27;
      }
    }

    goto LABEL_5;
  }

LABEL_19:
  v58 = OUTLINED_FUNCTION_10_35();
  if (lpta_loadp_setscan_r(v58, v59, v60) || (OUTLINED_FUNCTION_82_10(), test_string_s()) || (*(v1 + 136) = v2, v61 = OUTLINED_FUNCTION_9_35(), test_ptr(v61, v62, v63)) || (v64 = OUTLINED_FUNCTION_88_9(), lpta_rpta_loadp(v64, v65, v66), OUTLINED_FUNCTION_37_17(), mark_s()))
  {
LABEL_23:
    v67 = OUTLINED_FUNCTION_10_35();
    if (!lpta_loadp_setscan_r(v67, v68, v69))
    {
      OUTLINED_FUNCTION_5_36();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_87_9();
        v70 = OUTLINED_FUNCTION_69_12();
        if (!setd_lookup(v70, v71, 184))
        {
          v72 = OUTLINED_FUNCTION_88_9();
          lpta_rpta_loadp(v72, v73, v74);
          OUTLINED_FUNCTION_37_17();
          mark_s();
        }
      }
    }
  }

LABEL_27:
  vretproc(v1);
  return 0;
}

uint64_t i_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_8_36(v3, v4, v5, v6, v7, v8, v9, v10, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, v272, v274, v276, v278, v279);
  OUTLINED_FUNCTION_55_14();
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_19_28();
    if (!OUTLINED_FUNCTION_137_4(v11, v12, v13, v14, v15))
    {
      v17 = OUTLINED_FUNCTION_67_12();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_80_11();
      OUTLINED_FUNCTION_129_4(v20, v21);
      v22 = OUTLINED_FUNCTION_77_11();
      push_ptr_init(v22, v23);
      v24 = 0;
      v25 = OUTLINED_FUNCTION_98_7();
      fence_37(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_69_12();
      fence_37(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_80_11();
      if (!lpta_loadp_setscan_r(v31, v32, 1))
      {
        OUTLINED_FUNCTION_5_36();
        if (!test_string_s())
        {
          v103 = OUTLINED_FUNCTION_38_17();
          starttest(v103, v104);
          v105 = OUTLINED_FUNCTION_10_35();
          if (lpta_loadp_setscan_r(v105, v106, v107) || advance_tok(v1, v108, v109, v110))
          {
            v24 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_5_36();
            v144 = test_string_s();
            v24 = 0;
            v145 = 0;
            if (!v144)
            {
LABEL_74:
              LODWORD(v24) = v145;
              OUTLINED_FUNCTION_109_4();
              v195 = OUTLINED_FUNCTION_85_10();
              savescptr(v195, v196, v197);
              v198 = OUTLINED_FUNCTION_12_35();
              if (testFldeq(v198, v199, v200, 2))
              {
                goto LABEL_88;
              }

              OUTLINED_FUNCTION_52_14();
              bspush_ca_scan_boa();
              v146 = OUTLINED_FUNCTION_31_21();
              v149 = 21;
              goto LABEL_45;
            }
          }

LABEL_29:
          v111 = OUTLINED_FUNCTION_32_20();
          starttest(v111, v112);
          v113 = OUTLINED_FUNCTION_10_35();
          v116 = lpta_loadp_setscan_l(v113, v114, v115);
          v117 = v24;
          if (v116)
          {
LABEL_78:
            v24 = v117;
            v201 = OUTLINED_FUNCTION_42_15();
            starttest(v201, v202);
            v203 = OUTLINED_FUNCTION_10_35();
            v71 = lpta_loadp_setscan_r(v203, v204, v205);
            if (!v71)
            {
              v71 = advance_tok(v1, v72, v73, v74);
              v72 = v24;
              if (!v71)
              {
LABEL_84:
                v206 = OUTLINED_FUNCTION_85_10();
                savescptr(v206, v207, v208);
                OUTLINED_FUNCTION_4_37(v209, v210, v211);
                OUTLINED_FUNCTION_133_4();
                if (v71)
                {
                  goto LABEL_49;
                }
              }
            }

            goto LABEL_80;
          }

LABEL_30:
          OUTLINED_FUNCTION_81_11(9, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271);
          if (!advance_tok(v1, v118, v119, v120))
          {
            OUTLINED_FUNCTION_5_36();
            if (!test_string_s())
            {
              v121 = OUTLINED_FUNCTION_16_33();
              if (!lpta_loadp_setscan_r(v121, v122, v123) && !advance_tok(v1, v124, v125, v126))
              {
                OUTLINED_FUNCTION_5_36();
                test_string_s();
                OUTLINED_FUNCTION_146_4();
                if (v128)
                {
                  goto LABEL_49;
                }

LABEL_91:
                v65 = v127;
                v218 = OUTLINED_FUNCTION_86_9();
                savescptr(v218, v219, v220);
                v221 = OUTLINED_FUNCTION_67_12();
                lpta_rpta_loadp(v221, v222, v223);
                v82 = OUTLINED_FUNCTION_7_36();
                v84 = 3;
                goto LABEL_18;
              }
            }
          }

          goto LABEL_88;
        }

        v24 = 0;
      }

      while (2)
      {
        v33 = OUTLINED_FUNCTION_47_15();
        starttest(v33, v34);
        v35 = OUTLINED_FUNCTION_10_35();
        if (!lpta_loadp_setscan_r(v35, v36, v37))
        {
          OUTLINED_FUNCTION_13_34();
          v38 = test_string_s();
          v39 = v24;
          if (!v38)
          {
LABEL_87:
            LODWORD(v24) = v39;
            v212 = OUTLINED_FUNCTION_85_10();
            savescptr(v212, v213, v214);
            v71 = OUTLINED_FUNCTION_4_37(v215, v216, v217);
            if (!v71)
            {
LABEL_69:
              OUTLINED_FUNCTION_83_10(v71, v72, v73, v74, v75, v76, v77, v78, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277);
              v187 = OUTLINED_FUNCTION_1_39();
LABEL_81:
              inserted = insert_2pt_s(v187, v188, v189, v190, v191);
              goto LABEL_82;
            }

            goto LABEL_88;
          }
        }

LABEL_9:
        v40 = OUTLINED_FUNCTION_70_12();
        starttest(v40, v41);
        v42 = OUTLINED_FUNCTION_11_35();
        v45 = lpta_loadp_setscan_l(v42, v43, v44);
        v46 = v24;
        if (v45)
        {
LABEL_10:
          v24 = v46;
          v47 = OUTLINED_FUNCTION_75_12();
          is_nasal_vow(v47, v48);
          if (!v49)
          {
            OUTLINED_FUNCTION_83_10(v49, v50, v51, v52, v53, v54, v55, v56, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277);
            v57 = OUTLINED_FUNCTION_0_40();
            if (!insert_2pt_s(v57, v58, v59, v60, v61))
            {
              goto LABEL_83;
            }
          }

LABEL_12:
          v62 = OUTLINED_FUNCTION_10_35();
          if (!lpta_loadp_setscan_r(v62, v63, v64))
          {
            OUTLINED_FUNCTION_13_34();
            if (!test_string_s())
            {
              v88 = OUTLINED_FUNCTION_58_13();
              starttest(v88, v89);
              v90 = OUTLINED_FUNCTION_11_35();
              if (lpta_loadp_setscan_l(v90, v91, v92) || (OUTLINED_FUNCTION_5_36(), test_string_s()))
              {
LABEL_22:
                v93 = OUTLINED_FUNCTION_57_13();
                starttest(v93, v94);
                v95 = OUTLINED_FUNCTION_11_35();
                v71 = lpta_loadp_setscan_l(v95, v96, v97);
                if (!v71)
                {
LABEL_70:
                  v192 = OUTLINED_FUNCTION_70_12();
                  bspush_ca_scan(v192, v193);
LABEL_71:
                  OUTLINED_FUNCTION_5_36();
                  inserted = test_string_s();
LABEL_82:
                  LODWORD(v72) = v24;
                  if (!inserted)
                  {
LABEL_83:
                    OUTLINED_FUNCTION_100_6(v277);
                    goto LABEL_3;
                  }

LABEL_49:
                  v150 = *(v1 + 104);
                  if (v150)
                  {
                    v71 = OUTLINED_FUNCTION_92_9(v150);
                    v24 = v72;
                  }

                  else
                  {
                    v71 = vback(v1, v72);
                    v24 = 0;
                  }

                  v73 = v24;
                  v65 = v24;
                  switch(v71)
                  {
                    case 1:
                      continue;
                    case 2:
                      goto LABEL_29;
                    case 3:
                      v145 = v24;
                      goto LABEL_74;
                    case 4:
                      bspop_boa(v1);
                      v154 = advance_tok(v1, v151, v152, v153);
                      LODWORD(v72) = v24;
                      if (v154)
                      {
                        goto LABEL_49;
                      }

                      v155 = OUTLINED_FUNCTION_35_17();
                      bspush_ca(v155);
                      v156 = OUTLINED_FUNCTION_76_12();
                      lpta_loadpn(v156, v157);
                      v158 = OUTLINED_FUNCTION_99_7();
                      rpta_loadpn(v158, v159);
                      v160 = compare_ptas(v1);
                      LODWORD(v72) = v24;
                      if (v160)
                      {
                        goto LABEL_49;
                      }

                      v71 = testeq(v1);
                      goto LABEL_59;
                    case 5:
                      v161 = OUTLINED_FUNCTION_99_7();
                      lpta_rpta_loadp(v161, v162, v163);
                      v164 = OUTLINED_FUNCTION_69_12();
                      v71 = setd_lookup(v164, v165, 33);
LABEL_59:
                      v72 = v24;
                      if (!v71)
                      {
                        goto LABEL_69;
                      }

                      goto LABEL_49;
                    case 6:
                      goto LABEL_69;
                    case 7:
                    case 13:
                    case 25:
                    case 28:
                    case 36:
                      goto LABEL_83;
                    case 8:
                      v117 = v24;
                      goto LABEL_78;
                    case 9:
                      goto LABEL_30;
                    case 10:
                      v127 = v24;
                      goto LABEL_91;
                    case 11:
                    case 26:
                    case 31:
                      goto LABEL_80;
                    case 12:
                      goto LABEL_84;
                    case 14:
                      goto LABEL_9;
                    case 15:
                      v39 = v24;
                      goto LABEL_87;
                    case 16:
                      v46 = v24;
                      goto LABEL_10;
                    case 17:
                      goto LABEL_44;
                    case 18:
                      bspop_boa(v1);
                      v172 = advance_tok(v1, v169, v170, v171);
                      LODWORD(v72) = v24;
                      if (v172)
                      {
                        goto LABEL_49;
                      }

                      v173 = OUTLINED_FUNCTION_16_33();
                      v176 = lpta_loadp_setscan_r(v173, v174, v175);
                      LODWORD(v72) = v24;
                      if (v176)
                      {
                        goto LABEL_49;
                      }

                      v179 = advance_tok(v1, v24, v177, v178);
                      LODWORD(v72) = v24;
                      if (v179)
                      {
                        goto LABEL_49;
                      }

                      OUTLINED_FUNCTION_5_36();
                      v180 = test_string_s();
                      LODWORD(v72) = v24;
                      if (v180)
                      {
                        goto LABEL_49;
                      }

                      goto LABEL_68;
                    case 19:
LABEL_68:
                      v181 = OUTLINED_FUNCTION_85_10();
                      savescptr(v181, v182, v183);
                      v71 = OUTLINED_FUNCTION_4_37(v184, v185, v186);
                      v72 = v24;
                      if (!v71)
                      {
                        goto LABEL_69;
                      }

                      goto LABEL_49;
                    case 20:
                      goto LABEL_12;
                    case 21:
                      goto LABEL_14;
                    case 22:
                      goto LABEL_22;
                    case 23:
                      OUTLINED_FUNCTION_5_36();
                      test_string_s();
                      OUTLINED_FUNCTION_146_4();
                      if (!v71)
                      {
                        goto LABEL_37;
                      }

                      goto LABEL_49;
                    case 24:
                      goto LABEL_37;
                    case 27:
                      goto LABEL_70;
                    case 29:
                      goto LABEL_71;
                    case 30:
                      v65 = v24;
                      goto LABEL_17;
                    case 32:
                      v166 = OUTLINED_FUNCTION_70_12();
                      bspush_ca_scan(v166, v167);
                      goto LABEL_62;
                    case 33:
                      goto LABEL_39;
                    case 34:
LABEL_62:
                      OUTLINED_FUNCTION_5_36();
                      test_string_s();
                      OUTLINED_FUNCTION_138_4();
                      if (!v168)
                      {
                        goto LABEL_39;
                      }

                      goto LABEL_49;
                    case 35:
                      bspop_boa(v1);
                      goto LABEL_83;
                    default:
                      goto LABEL_3;
                  }
                }
              }

              else
              {
                v129 = OUTLINED_FUNCTION_70_12();
                bspush_ca_scan(v129, v130);
                OUTLINED_FUNCTION_5_36();
                v71 = test_string_s();
                v72 = v24;
                v73 = v24;
                if (v71)
                {
                  goto LABEL_49;
                }

LABEL_37:
                LODWORD(v24) = v73;
              }

              goto LABEL_80;
            }
          }

LABEL_14:
          v65 = v24;
          v66 = OUTLINED_FUNCTION_70_12();
          starttest(v66, v67);
          v68 = OUTLINED_FUNCTION_10_35();
          v71 = lpta_loadp_setscan_r(v68, v69, v70);
          if (v71 || (OUTLINED_FUNCTION_17_33(), v71 = test_string_s(), v71) || (*(v1 + 136) = 1, v79 = OUTLINED_FUNCTION_9_35(), v71 = test_ptr(v79, v80, v81), v71))
          {
LABEL_17:
            OUTLINED_FUNCTION_83_10(v71, v72, v73, v74, v75, v76, v77, v78, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277);
            v82 = OUTLINED_FUNCTION_0_40();
LABEL_18:
            v87 = insert_2pt_s(v82, v83, v84, v85, v86);
            LODWORD(v72) = v65;
            if (!v87)
            {
              goto LABEL_83;
            }

            goto LABEL_49;
          }

          v98 = OUTLINED_FUNCTION_43_15();
          starttest(v98, v99);
          v100 = OUTLINED_FUNCTION_11_35();
          v71 = lpta_loadp_setscan_l(v100, v101, v102);
          if (v71)
          {
LABEL_80:
            OUTLINED_FUNCTION_83_10(v71, v72, v73, v74, v75, v76, v77, v78, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, v273, v275, v277);
            v187 = OUTLINED_FUNCTION_0_40();
            goto LABEL_81;
          }

          v131 = OUTLINED_FUNCTION_70_12();
          bspush_ca_scan(v131, v132);
          OUTLINED_FUNCTION_5_36();
          v133 = test_string_s();
          LODWORD(v72) = v24;
          if (v133)
          {
            goto LABEL_49;
          }

LABEL_39:
          LODWORD(v24) = v65;
          OUTLINED_FUNCTION_70_12();
          bspush_ca_scan_boa();
          v134 = OUTLINED_FUNCTION_12_35();
          if (!testFldeq(v134, v135, v136, 2))
          {
            v137 = OUTLINED_FUNCTION_31_21();
            if (!testFldeq(v137, v138, v139, 15))
            {
              v143 = advance_tok(v1, v140, v141, v142);
              goto LABEL_46;
            }
          }

LABEL_88:
          LODWORD(v72) = v24;
          goto LABEL_49;
        }

        break;
      }

LABEL_44:
      OUTLINED_FUNCTION_81_11(17, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271);
      OUTLINED_FUNCTION_60_13();
      bspush_ca_scan_boa();
      v146 = OUTLINED_FUNCTION_3_38();
LABEL_45:
      v143 = testFldeq(v146, v147, v148, v149);
LABEL_46:
      if (v143)
      {
        LODWORD(v72) = v24;
      }

      else
      {
        LODWORD(v72) = 1;
      }

      goto LABEL_49;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_126_4();
}