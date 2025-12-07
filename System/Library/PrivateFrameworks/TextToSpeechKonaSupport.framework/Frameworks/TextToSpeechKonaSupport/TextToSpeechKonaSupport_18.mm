uint64_t fren_hyphen_between_nums(uint64_t a1, __int16 *a2, __int16 *a3, int a4, int a5, int a6, int a7, int a8)
{
  v71 = *MEMORY[0x277D85DE8];
  v66[0] = 0;
  v66[1] = 0;
  v65[0] = 0;
  v65[1] = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  memset(v62, 0, sizeof(v62));
  v61[0] = 0;
  v61[1] = 0;
  OUTLINED_FUNCTION_15_30(a1, a2, a3, a4, a5, a6, a7, a8, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15], v59[16], v59[17], v59[18], v59[19], v59[20], v59[21], v59[22], v60[0], v60[1]);
  OUTLINED_FUNCTION_18_29();
  bzero(v70, v11);
  if (setjmp(v70) || ventproc(a1, v59, v69, v68, v67, v70))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v13 = OUTLINED_FUNCTION_21_24();
  get_parm(v13, v14, a2, -6);
  get_parm(a1, v65, a3, -6);
  OUTLINED_FUNCTION_28_20(a1, v64);
  OUTLINED_FUNCTION_25_23(a1, v63);
  v15 = OUTLINED_FUNCTION_22_23();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_11_32();
  push_ptr_init(v17, v18);
  push_ptr_init(a1, v61);
  v19 = OUTLINED_FUNCTION_12_32();
  push_ptr_init(v19, v20);
  fence_34(a1);
  v21 = OUTLINED_FUNCTION_22_23();
  find_previous_word(v21, v22, v62, v66);
  if (!v23)
  {
    v24 = OUTLINED_FUNCTION_5_33();
    starttest(v24, v25);
    if (*(a1 + 3094) != 4 || (v26 = OUTLINED_FUNCTION_10_32(), lpta_loadp_setscan_r(v26, v27, v28)) || advance_tok(a1, v29, v30, v31) || (v35 = advance_tok(a1, v32, v33, v34)) || (*(a1 + 136) = 1, OUTLINED_FUNCTION_14_31(v35, v36, v37)) || (v38 = OUTLINED_FUNCTION_10_32(), lpta_loadp_setscan_r(v38, v39, v40)))
    {
LABEL_11:
      v41 = OUTLINED_FUNCTION_10_32();
      if (lpta_loadp_setscan_r(v41, v42, v43))
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_13_31();
      v44 = test_string_s();
      if (v44)
      {
        goto LABEL_15;
      }

      *(a1 + 136) = 1;
      if (OUTLINED_FUNCTION_14_31(v44, v45, v46))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v53 = OUTLINED_FUNCTION_5_33();
      bspush_ca_scan(v53, v54);
      OUTLINED_FUNCTION_3_35();
      if (test_string_s())
      {
        while (2)
        {
          v55 = *(a1 + 104);
          if (v55)
          {
            v56 = OUTLINED_FUNCTION_20_25(v55);
          }

          else
          {
            v57 = OUTLINED_FUNCTION_26_23();
            v56 = vback(v57, v58);
          }

          switch(v56)
          {
            case 1:
              goto LABEL_15;
            case 2:
              goto LABEL_11;
            case 3:
              OUTLINED_FUNCTION_6_33();
              if (!test_string_s())
              {
                break;
              }

              continue;
            case 4:
              goto LABEL_14;
            case 5:
              goto LABEL_16;
            case 6:
              goto LABEL_19;
            default:
              goto LABEL_3;
          }

          break;
        }
      }
    }

LABEL_14:
    *(a1 + 2982) = *(a1 + 2986);
  }

LABEL_15:
  if (!*(a1 + 2982))
  {
LABEL_16:
    find_next_word(a1, v63, v61, v60);
    if (!v47)
    {
      v48 = OUTLINED_FUNCTION_29_20();
      lpta_rpta_loadp(v48, v49, v50);
      v51 = OUTLINED_FUNCTION_6_33();
      if (!setd_lookup(v51, v52, 59))
      {
        *(a1 + 2982) = *(a1 + 2990);
      }
    }
  }

LABEL_19:
  vretproc(a1);
  return 0;
}

void t_intercole(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_30_19();
  OUTLINED_FUNCTION_17_30();
  v55 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  OUTLINED_FUNCTION_19_25();
  bzero(v35, v5);
  OUTLINED_FUNCTION_18_29();
  bzero(v54, v6);
  v7 = setjmp(v54);
  if (v7)
  {
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_27_21(v7, v35, v8, v9, v10, v11, v12, v13, v28, v29, v30, v31, v32, v33, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17], v35[18], v35[19], v35[20], v35[21], v35[22], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54[0]))
  {
    goto LABEL_5;
  }

  v14 = OUTLINED_FUNCTION_16_30();
  OUTLINED_FUNCTION_28_20(v14, v15);
  OUTLINED_FUNCTION_25_23(v3, &v40);
  push_ptr_init(v3, &v38);
  push_ptr_init(v3, &v36);
  fence_34(v3);
  starttest(v3, 1);
  v16 = OUTLINED_FUNCTION_16_30();
  if (lpta_loadp_setscan_r(v16, v17, 1))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_37();
  if (test_string_s())
  {
    goto LABEL_5;
  }

LABEL_6:
  savescptr(v3, 2, &v38);
  OUTLINED_FUNCTION_0_37();
  if (test_string_s())
  {
    goto LABEL_11;
  }

LABEL_7:
  savescptr(v3, 3, &v36);
  bspush_ca_scan(v3, 4);
  bspush_ca_scan(v3, 5);
  OUTLINED_FUNCTION_3_35();
LABEL_8:
  if (test_string_s())
  {
    goto LABEL_11;
  }

LABEL_9:
  bspush_ca_scan(v3, 9);
  bspush_ca_scan(v3, 10);
  OUTLINED_FUNCTION_0_37();
  while (1)
  {
    if (test_string_s())
    {
      goto LABEL_11;
    }

LABEL_26:
    savescptr(v3, 11, &v40);
    if (!end_of_word(v3))
    {
      break;
    }

LABEL_11:
    while (2)
    {
      v18 = *(v3 + 104);
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_20_25(v18);
      }

      else
      {
        v20 = OUTLINED_FUNCTION_26_23();
        v19 = vback(v20, v21);
      }

      switch(v19)
      {
        case 2:
          goto LABEL_6;
        case 3:
          goto LABEL_7;
        case 4:
          v22 = OUTLINED_FUNCTION_16_30();
          bspush_ca_scan(v22, v23);
          v24 = OUTLINED_FUNCTION_23_23();
          bspush_ca_scan(v24, v25);
          OUTLINED_FUNCTION_0_37();
          goto LABEL_21;
        case 5:
          bspush_ca_scan(v3, 7);
          OUTLINED_FUNCTION_3_35();
          goto LABEL_8;
        case 6:
          goto LABEL_9;
        case 7:
          bspush_ca_scan(v3, 8);
          OUTLINED_FUNCTION_6_33();
          goto LABEL_8;
        case 8:
          OUTLINED_FUNCTION_6_33();
          goto LABEL_8;
        case 9:
        case 11:
          goto LABEL_26;
        case 10:
        case 14:
        case 16:
          goto LABEL_22;
        case 12:
          v26 = OUTLINED_FUNCTION_7_33();
          bspush_ca_scan(v26, v27);
          OUTLINED_FUNCTION_0_37();
          goto LABEL_18;
        case 13:
          OUTLINED_FUNCTION_0_37();
LABEL_21:
          if (!test_string_s())
          {
            goto LABEL_22;
          }

          continue;
        case 15:
          OUTLINED_FUNCTION_0_37();
LABEL_18:
          if (test_string_s())
          {
            continue;
          }

LABEL_22:
          OUTLINED_FUNCTION_0_37();
          break;
        case 17:
          goto LABEL_27;
        case 18:
          goto LABEL_29;
        default:
          goto LABEL_5;
      }

      break;
    }
  }

LABEL_27:
  lpta_rpta_loadp(v3, &v38, &v36);
  OUTLINED_FUNCTION_6_33();
  if (mark_s())
  {
    goto LABEL_11;
  }

  convert_to_lowercase(v3);
LABEL_29:
  *(v4 + 8) = v41;
LABEL_5:
  vretproc(v3);
  OUTLINED_FUNCTION_31_18();
}

uint64_t OUTLINED_FUNCTION_14_31(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = v3;
  *(v4 + 128) = 0;

  return test_ptr(v4, a2, a3);
}

void OUTLINED_FUNCTION_15_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_24_23()
{
  fence_34(v0);

  starttest(v0, 1);
}

void OUTLINED_FUNCTION_25_23(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_27_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, int a49, __int16 a50, __int16 a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, char a57)
{

  return ventproc(v57, a2, &a55, &a51, &a48, &a57);
}

void OUTLINED_FUNCTION_28_20(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t convert_fren_digits_to_words()
{
  OUTLINED_FUNCTION_5_34();
  v69 = *MEMORY[0x277D85DE8];
  v66 = 0;
  v67 = 0;
  v64[1] = 0;
  v65 = 0;
  v64[0] = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(&v63, v1);
  OUTLINED_FUNCTION_37_15();
  bzero(v68, v2);
  if (!setjmp(v68))
  {
    OUTLINED_FUNCTION_33_18();
    if (!ventproc(v0, v3, v4, v5, v6, v68))
    {
      v8 = OUTLINED_FUNCTION_7_34();
      get_parm(v8, v9, v10, -6);
      v11 = OUTLINED_FUNCTION_27_22();
      OUTLINED_FUNCTION_72_11(v11, v12);
      v64[0] = 0xFFFC0000FFFCLL;
      fence_35(v0);
      v13 = OUTLINED_FUNCTION_21_25();
      starttest(v13, v14);
      v15 = OUTLINED_FUNCTION_61_11();
      move_i(v15, v16, 0);
      v17 = OUTLINED_FUNCTION_52_12();
      move_i(v17, v18, 0);
      v19 = OUTLINED_FUNCTION_7_34();
      convert_fren_monetary_exp(v19, v20, v21, v64 + 4, v64);
      if (v22)
      {
        while (2)
        {
          v23 = *(v0 + 104);
          if (v23)
          {
            v24 = OUTLINED_FUNCTION_40_14(v23);
          }

          else
          {
            v24 = OUTLINED_FUNCTION_85_9();
          }

          switch(v24)
          {
            case 1:
              OUTLINED_FUNCTION_27_22();
              if (!convert_fren_date())
              {
                break;
              }

              goto LABEL_10;
            case 2:
            case 9:
              goto LABEL_18;
            case 3:
LABEL_10:
              v25 = OUTLINED_FUNCTION_27_22();
              if (convert_fren_time(v25, v26))
              {
                goto LABEL_11;
              }

              break;
            case 4:
LABEL_11:
              OUTLINED_FUNCTION_27_22();
              if (convert_fren_phone_number())
              {
                goto LABEL_12;
              }

              break;
            case 5:
LABEL_12:
              v27 = OUTLINED_FUNCTION_87_8();
              starttest(v27, v28);
              v29 = OUTLINED_FUNCTION_6_34();
              if (!lpta_loadp_setscan_r(v29, v30, v31))
              {
                OUTLINED_FUNCTION_0_38();
                if (!test_string_s())
                {
                  goto LABEL_14;
                }
              }

              goto LABEL_17;
            case 6:
LABEL_17:
              OUTLINED_FUNCTION_12_33();
              convert_digits();
              goto LABEL_18;
            case 7:
              OUTLINED_FUNCTION_58_11();
              v57 = OUTLINED_FUNCTION_30_20();
              savescptr(v57, v58, v59);
              v60 = OUTLINED_FUNCTION_9_33();
              single_chars(v60, v61, v62);
LABEL_18:
              if (*(v0 + 3042) != *(v0 + 3018))
              {
                goto LABEL_19;
              }

              break;
            case 8:
              do
              {
LABEL_14:
                v32 = OUTLINED_FUNCTION_52_12();
                bspush_ca_scan(v32, v33);
                v34 = OUTLINED_FUNCTION_3_36();
              }

              while (!testFldeq(v34, v35, v36, 2) && !advance_tok(v0, v37, v38, v39));
              continue;
            case 10:
LABEL_19:
              OUTLINED_FUNCTION_49_13();
              if (convert_fren_ordinal())
              {
                goto LABEL_20;
              }

              goto LABEL_23;
            case 11:
              goto LABEL_22;
            case 12:
LABEL_20:
              v40 = OUTLINED_FUNCTION_49_13();
              add_fren_point_digits(v40, v41, v41, v42, v43, v44);
              if (v45)
              {
                goto LABEL_21;
              }

              goto LABEL_22;
            case 13:
LABEL_21:
              v46 = OUTLINED_FUNCTION_49_13();
              convert_fren_fraction(v46, v47, v47, v48, v49, v50);
LABEL_22:
              v51 = OUTLINED_FUNCTION_49_13();
              separate_number_sequences(v51, v52, v53, v54, v55, v56);
              goto LABEL_23;
            case 14:
              goto LABEL_23;
            default:
              goto LABEL_3;
          }

          break;
        }
      }

LABEL_23:
      OUTLINED_FUNCTION_81_10(v65);
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_95_7();
}

void convert_fren_monetary_exp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_74_11();
  v6 = v5;
  v374 = v7;
  v9 = v8;
  v11 = v10;
  v415 = *MEMORY[0x277D85DE8];
  v410[0] = 0;
  v410[1] = 0;
  v408 = 0;
  v409 = 0;
  v406[1] = 0;
  v407 = 0;
  v405[1] = 0;
  v406[0] = 0;
  v404[1] = 0;
  v405[0] = 0;
  v403 = 0;
  v404[0] = 0;
  v401 = 0;
  v402 = 0;
  v399 = 0;
  v400 = 0;
  v398 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(&v375, v12);
  OUTLINED_FUNCTION_37_15();
  bzero(v414, v13);
  if (setjmp(v414) || ventproc(v11, &v375, v413, v412, v411, v414))
  {
    goto LABEL_3;
  }

  get_parm(v11, v410, v9, -6);
  get_parm(v11, &v408, v374, -6);
  v14 = OUTLINED_FUNCTION_87_8();
  get_parm(v14, v15, v6, -4);
  v16 = OUTLINED_FUNCTION_30_20();
  get_parm(v16, v17, v18, -4);
  push_ptr_init(v11, v406);
  v19 = OUTLINED_FUNCTION_79_10();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_94_7();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_86_8();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_51_12();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_29_21();
  push_ptr_init(v27, v28);
  fence_35(v11);
  v29 = OUTLINED_FUNCTION_21_25();
  starttest(v29, v30);
  v372 = &v407 + 6;
  v373 = v11 + 3118;
  if (*(v11 + 3118) != HIWORD(v407) || (v31 = OUTLINED_FUNCTION_22_24(), lpta_loadp_setscan_r(v31, v32, v33)))
  {
    LODWORD(v34) = 0;
LABEL_8:
    v35 = OUTLINED_FUNCTION_21_25();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v37, v38, v39))
    {
      goto LABEL_3;
    }

    v40 = OUTLINED_FUNCTION_21_25();
    bspush_ca_scan(v40, v41);
    OUTLINED_FUNCTION_0_38();
    v42 = test_string_s();
    v43 = v34;
    if (!v42)
    {
LABEL_10:
      LODWORD(v34) = v43;
      OUTLINED_FUNCTION_58_11();
      savescptr(v11, v44, v410);
      v45 = OUTLINED_FUNCTION_21_25();
      bspush_ca_scan(v45, v46);
      OUTLINED_FUNCTION_0_38();
      v47 = test_string_s();
      v48 = v34;
      if (!v47)
      {
LABEL_11:
        LODWORD(v34) = v48;
        v49 = OUTLINED_FUNCTION_78_10();
        savescptr(v49, v50, v51);
        v52 = OUTLINED_FUNCTION_3_36();
        if (!testFldeq(v52, v53, v54, 2) && !advance_tok(v11, v55, v56, v57))
        {
          v58 = OUTLINED_FUNCTION_16_31();
          bspush_ca_scan(v58, v59);
          v60 = v34;
LABEL_14:
          v61 = v60;
          v62 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v62, v63);
          v64 = v61;
LABEL_15:
          LODWORD(v34) = v64;
          v65 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v65, v66);
          v67 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v67, v68);
LABEL_16:
          while (1)
          {
            OUTLINED_FUNCTION_0_38();
            if (test_string_s())
            {
              break;
            }

            v69 = OUTLINED_FUNCTION_3_36();
            if (testFldeq(v69, v70, v71, 2))
            {
              break;
            }

            if (advance_tok(v11, v72, v73, v74))
            {
              break;
            }

            v75 = OUTLINED_FUNCTION_3_36();
            if (testFldeq(v75, v76, v77, 2))
            {
              break;
            }

            if (advance_tok(v11, v78, v79, v80))
            {
              break;
            }

            v81 = OUTLINED_FUNCTION_3_36();
            if (testFldeq(v81, v82, v83, 2) || advance_tok(v11, v84, v85, v86))
            {
              break;
            }

            v87 = OUTLINED_FUNCTION_31_19();
            bspush_ca_scan(v87, v88);
          }
        }
      }
    }

    goto LABEL_181;
  }

  v89 = OUTLINED_FUNCTION_13_32();
  bspush_ca_scan(v89, v90);
  OUTLINED_FUNCTION_0_38();
  v91 = test_string_s();
  v92 = 0;
  LODWORD(v34) = 0;
  if (v91)
  {
    goto LABEL_181;
  }

  while (2)
  {
    LODWORD(v34) = v92;
    OUTLINED_FUNCTION_45_13();
    v93 = OUTLINED_FUNCTION_78_10();
    savescptr(v93, v94, v95);
    OUTLINED_FUNCTION_0_38();
    v96 = test_string_s();
    v97 = v34;
    if (!v96)
    {
LABEL_30:
      LODWORD(v34) = v97;
      savescptr(v11, 3, v405);
      v98 = OUTLINED_FUNCTION_20_26();
      if (testFldeq(v98, v99, 3, 2))
      {
        goto LABEL_181;
      }

      if (advance_tok(v11, v100, v101, v102))
      {
        goto LABEL_181;
      }

      v103 = OUTLINED_FUNCTION_3_36();
      if (testFldeq(v103, v104, v105, 2))
      {
        goto LABEL_181;
      }

      v109 = advance_tok(v11, v106, v107, v108);
      v110 = v34;
      if (v109)
      {
        goto LABEL_181;
      }

LABEL_36:
      LODWORD(v34) = v110;
      OUTLINED_FUNCTION_50_13();
      v111 = OUTLINED_FUNCTION_92_8();
      savescptr(v111, v112, v113);
LABEL_37:
      if (HIWORD(v407))
      {
        v114 = OUTLINED_FUNCTION_86_8();
        lpta_loadpn(v114, v115);
        OUTLINED_FUNCTION_90_8();
        compare_ptas(v11);
        OUTLINED_FUNCTION_57_11();
        if (!v117)
        {
          testneq(v11);
          OUTLINED_FUNCTION_57_11();
          if (!v118)
          {
            goto LABEL_3;
          }
        }

LABEL_179:
        starttest(v11, v116);
        OUTLINED_FUNCTION_27_22();
        bspush_ca_boa();
        if (!end_of_word(v11))
        {
          LODWORD(v34) = 1;
        }

        goto LABEL_181;
      }

LABEL_133:
      v310 = OUTLINED_FUNCTION_86_8();
      lpta_loadpn(v310, v311);
      OUTLINED_FUNCTION_90_8();
      if (compare_ptas(v11))
      {
LABEL_134:
        v312 = v34;
      }

      else
      {
        v313 = testneq(v11);
        v116 = 32;
        v312 = v34;
        if (!v313)
        {
          goto LABEL_179;
        }
      }

      LODWORD(v34) = v312;
      v314 = OUTLINED_FUNCTION_21_25();
      starttest(v314, v315);
      v316 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v316, v317, v318))
      {
        bspush_boa(v11);
        do
        {
LABEL_145:
          v341 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v341, v342);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_137:
      v319 = OUTLINED_FUNCTION_21_25();
      starttest(v319, v320);
      v321 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v321, v322, v323))
      {
        bspush_boa(v11);
        do
        {
LABEL_149:
          v343 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v343, v344);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_138:
      v324 = OUTLINED_FUNCTION_21_25();
      starttest(v324, v325);
      v326 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v326, v327, v328))
      {
        bspush_boa(v11);
        do
        {
LABEL_152:
          v345 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v345, v346);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_139:
      v329 = OUTLINED_FUNCTION_21_25();
      starttest(v329, v330);
      v331 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v331, v332, v333))
      {
        bspush_boa(v11);
        do
        {
LABEL_165:
          v360 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v360, v361);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_140:
      v334 = OUTLINED_FUNCTION_21_25();
      starttest(v334, v335);
      v336 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v336, v337, v338))
      {
        bspush_boa(v11);
        do
        {
LABEL_142:
          v339 = OUTLINED_FUNCTION_27_22();
          bspush_ca_scan(v339, v340);
          OUTLINED_FUNCTION_0_38();
        }

        while (!test_string_s());
        goto LABEL_181;
      }

LABEL_3:
      vretproc(v11);
      goto LABEL_4;
    }

LABEL_181:
    v128 = v34;
LABEL_43:
    v119 = *(v11 + 104);
    if (v119)
    {
      v120 = OUTLINED_FUNCTION_40_14(v119);
      v34 = v121;
    }

    else
    {
      v120 = vback(v11, v128);
      v34 = 0;
    }

    v60 = v34;
    v64 = v34;
    v122 = 1;
    v123 = 0;
    switch(v120)
    {
      case 1:
        goto LABEL_8;
      case 2:
        v92 = v34;
        continue;
      case 3:
        v97 = v34;
        goto LABEL_30;
      case 4:
        v110 = v34;
        goto LABEL_36;
      case 5:
        goto LABEL_37;
      case 7:
        v43 = v34;
        goto LABEL_10;
      case 8:
        v48 = v34;
        goto LABEL_11;
      case 9:
        v212 = OUTLINED_FUNCTION_3_36();
        v215 = testFldeq(v212, v213, v214, 2);
        v128 = v34;
        if (!v215)
        {
          v218 = advance_tok(v11, v34, v216, v217);
          v60 = v34;
          v128 = v34;
          if (!v218)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_43;
      case 10:
        goto LABEL_14;
      case 11:
        v205 = OUTLINED_FUNCTION_3_36();
        v208 = testFldeq(v205, v206, v207, 2);
        v128 = v34;
        if (!v208)
        {
          v211 = advance_tok(v11, v34, v209, v210);
          v64 = v34;
          v128 = v34;
          if (!v211)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_43;
      case 12:
        goto LABEL_15;
      case 13:
      case 15:
        OUTLINED_FUNCTION_59_11();
        savescptr(v11, v124, v404);
        OUTLINED_FUNCTION_21_25();
        bspush_ca_scan_boa();
        v125 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v125, v126);
        goto LABEL_62;
      case 14:
        goto LABEL_125;
      case 16:
        goto LABEL_16;
      case 17:
        do
        {
          v287 = OUTLINED_FUNCTION_3_36();
          v290 = testFldeq(v287, v288, v289, 2);
          v128 = v34;
          if (v290)
          {
            break;
          }

          v293 = advance_tok(v11, v34, v291, v292);
          v128 = v34;
          if (v293)
          {
            break;
          }

          v294 = OUTLINED_FUNCTION_3_36();
          v297 = testFldeq(v294, v295, v296, 2);
          v128 = v34;
          if (v297)
          {
            break;
          }

          v300 = advance_tok(v11, v34, v298, v299);
          v128 = v34;
          if (v300)
          {
            break;
          }

          v301 = OUTLINED_FUNCTION_3_36();
          v304 = testFldeq(v301, v302, v303, 2);
          v128 = v34;
          if (v304)
          {
            break;
          }

          v307 = advance_tok(v11, v34, v305, v306);
          v128 = v34;
          if (v307)
          {
            break;
          }

          v308 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v308, v309);
LABEL_125:
          v284 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v284, v285);
          OUTLINED_FUNCTION_0_38();
          v286 = test_string_s();
          v128 = v34;
        }

        while (!v286);
        goto LABEL_43;
      case 18:
        goto LABEL_108;
      case 19:
        v146 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v146, v147);
LABEL_62:
        OUTLINED_FUNCTION_0_38();
        v148 = test_string_s();
        v128 = v34;
        if (!v148)
        {
          goto LABEL_104;
        }

        goto LABEL_43;
      case 20:
        goto LABEL_104;
      case 21:
        OUTLINED_FUNCTION_62_11(21, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
        v234 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v234, v235);
        goto LABEL_102;
      case 22:
LABEL_102:
        OUTLINED_FUNCTION_0_38();
        v240 = test_string_s();
        v128 = v34;
        if (!v240)
        {
          goto LABEL_103;
        }

        goto LABEL_43;
      case 23:
LABEL_103:
        v241 = OUTLINED_FUNCTION_54_12();
        savescptr(v241, v242, v243);
LABEL_104:
        savescptr(v11, 20, v405);
        v244 = OUTLINED_FUNCTION_3_36();
        v247 = testFldeq(v244, v245, v246, 2);
        v128 = v34;
        if (v247)
        {
          goto LABEL_43;
        }

        v250 = advance_tok(v11, v34, v248, v249);
        v128 = v34;
        if (v250)
        {
          goto LABEL_43;
        }

        v251 = OUTLINED_FUNCTION_3_36();
        v254 = testFldeq(v251, v252, v253, 2);
        v128 = v34;
        if (v254)
        {
          goto LABEL_43;
        }

        v257 = advance_tok(v11, v34, v255, v256);
        v128 = v34;
        if (v257)
        {
          goto LABEL_43;
        }

LABEL_108:
        bspush_nboa(v11);
LABEL_109:
        v258 = OUTLINED_FUNCTION_92_8();
        savescptr(v258, v259, v260);
        OUTLINED_FUNCTION_21_25();
        bspush_ca_scan_boa();
        v261 = OUTLINED_FUNCTION_3_36();
        v264 = testFldeq(v261, v262, v263, 2);
        v128 = v34;
        if (v264)
        {
          goto LABEL_43;
        }

        v267 = advance_tok(v11, v34, v265, v266);
        goto LABEL_122;
      case 24:
        goto LABEL_109;
      case 25:
        bspop_boa(v11);
        goto LABEL_37;
      case 26:
        goto LABEL_133;
      case 27:
        OUTLINED_FUNCTION_57_11();
        goto LABEL_179;
      case 28:
      case 30:
        goto LABEL_69;
      case 29:
      case 33:
      case 71:
        bspop_boa(v11);
        goto LABEL_3;
      case 31:
        goto LABEL_134;
      case 32:
        v149 = OUTLINED_FUNCTION_22_24();
        v152 = lpta_loadp_setscan_r(v149, v150, v151);
        v153 = (v11 + 3142);
        if (!v152)
        {
          OUTLINED_FUNCTION_0_38();
          v154 = test_string_s();
          v153 = (v11 + 3126);
          if (v154)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_67;
      case 34:
LABEL_66:
        v153 = (v11 + 3142);
LABEL_67:
        HIWORD(v407) = *v153;
        goto LABEL_68;
      case 35:
      case 36:
LABEL_68:
        v155 = OUTLINED_FUNCTION_54_12();
        mark_non_letter(v155);
LABEL_69:
        *(v11 + 2806) = *(v11 + 2834);
        *(v11 + 3018) = *(v11 + 3046);
        lpta_loadpn(v11, v410);
        rpta_loadpn(v11, v406);
        if (!compare_ptas(v11) && !testneq(v11))
        {
          v156 = OUTLINED_FUNCTION_78_10();
          lpta_rpta_loadp(v156, v157, v158);
          v159 = OUTLINED_FUNCTION_2_36();
          insert_2pt_s(v159, v160, 6, v161, v162);
        }

        goto LABEL_72;
      case 37:
        goto LABEL_137;
      case 38:
        bspush_nboa(v11);
        goto LABEL_93;
      case 39:
        goto LABEL_145;
      case 40:
LABEL_93:
        OUTLINED_FUNCTION_62_11(40, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
        OUTLINED_FUNCTION_0_38();
        v219 = test_string_s();
        v128 = v34;
        if (!v219)
        {
          goto LABEL_94;
        }

        goto LABEL_43;
      case 41:
LABEL_94:
        v220 = OUTLINED_FUNCTION_30_20();
        savescptr(v220, v221, v222);
        HIWORD(v407) = *(v11 + 3126);
        v223 = OUTLINED_FUNCTION_21_25();
        starttest(v223, v224);
        v225 = OUTLINED_FUNCTION_6_34();
        if (lpta_loadp_setscan_r(v225, v226, v227))
        {
          goto LABEL_95;
        }

        v275 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v275, v276);
        goto LABEL_117;
      case 42:
LABEL_95:
        v228 = OUTLINED_FUNCTION_22_24();
        if (!lpta_loadp_setscan_r(v228, v229, v230))
        {
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            goto LABEL_97;
          }
        }

        goto LABEL_121;
      case 43:
        OUTLINED_FUNCTION_0_38();
        v127 = test_string_s();
        v128 = v34;
        if (v127)
        {
          goto LABEL_43;
        }

        goto LABEL_117;
      case 44:
LABEL_117:
        OUTLINED_FUNCTION_0_38();
        v277 = test_string_s();
        v128 = v34;
        if (!v277)
        {
          goto LABEL_118;
        }

        goto LABEL_43;
      case 45:
LABEL_118:
        v278 = OUTLINED_FUNCTION_54_12();
        savescptr(v278, v279, v280);
        v136 = (v11 + 3178);
        goto LABEL_119;
      case 46:
      case 48:
        goto LABEL_121;
      case 47:
LABEL_97:
        v231 = OUTLINED_FUNCTION_54_12();
        savescptr(v231, v232, v233);
        v136 = (v11 + 3174);
        goto LABEL_119;
      case 49:
        goto LABEL_138;
      case 50:
        bspush_nboa(v11);
        goto LABEL_112;
      case 51:
        goto LABEL_149;
      case 52:
LABEL_112:
        OUTLINED_FUNCTION_62_11(52, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
        v268 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v268, v269);
        OUTLINED_FUNCTION_3_36();
        goto LABEL_113;
      case 53:
        OUTLINED_FUNCTION_0_38();
LABEL_113:
        v270 = test_string_s();
        v128 = v34;
        if (!v270)
        {
          goto LABEL_114;
        }

        goto LABEL_43;
      case 54:
LABEL_114:
        v271 = OUTLINED_FUNCTION_54_12();
        savescptr(v271, v272, v273);
        v136 = (v11 + 3142);
        goto LABEL_115;
      case 55:
        goto LABEL_139;
      case 56:
        bspush_nboa(v11);
        goto LABEL_51;
      case 57:
        goto LABEL_152;
      case 58:
LABEL_51:
        OUTLINED_FUNCTION_62_11(58, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
        OUTLINED_FUNCTION_10_33();
        v129 = test_string_s();
        v128 = v34;
        if (v129)
        {
          goto LABEL_43;
        }

        v130 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v130, v131);
LABEL_53:
        OUTLINED_FUNCTION_0_38();
        v132 = test_string_s();
        v128 = v34;
        if (v132)
        {
          goto LABEL_43;
        }

LABEL_54:
        v133 = OUTLINED_FUNCTION_54_12();
        savescptr(v133, v134, v135);
        HIWORD(v407) = *(v11 + 3118);
        v136 = (v11 + 3182);
LABEL_119:
        v274 = &v407 + 1;
        goto LABEL_120;
      case 59:
        goto LABEL_53;
      case 60:
        goto LABEL_54;
      case 61:
        goto LABEL_140;
      case 62:
        bspush_nboa(v11);
        goto LABEL_56;
      case 63:
        goto LABEL_165;
      case 64:
LABEL_56:
        OUTLINED_FUNCTION_62_11(64, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
        OUTLINED_FUNCTION_0_38();
        v137 = test_string_s();
        v128 = v34;
        if (!v137)
        {
          goto LABEL_57;
        }

        goto LABEL_43;
      case 65:
LABEL_57:
        v138 = OUTLINED_FUNCTION_54_12();
        savescptr(v138, v139, v140);
        v136 = v373;
        goto LABEL_115;
      case 67:
        bspush_nboa(v11);
        goto LABEL_100;
      case 68:
        goto LABEL_142;
      case 69:
LABEL_100:
        OUTLINED_FUNCTION_62_11(69, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
        OUTLINED_FUNCTION_0_38();
        v236 = test_string_s();
        v128 = v34;
        if (!v236)
        {
          goto LABEL_101;
        }

        goto LABEL_43;
      case 70:
LABEL_101:
        v237 = OUTLINED_FUNCTION_54_12();
        savescptr(v237, v238, v239);
        v136 = (v11 + 3130);
LABEL_115:
        v274 = v372;
LABEL_120:
        *v274 = *v136;
LABEL_121:
        v281 = OUTLINED_FUNCTION_21_25();
        starttest(v281, v282);
        OUTLINED_FUNCTION_21_25();
        bspush_ca_boa();
        v283 = OUTLINED_FUNCTION_51_12();
        v267 = end_of_word(v283);
LABEL_122:
        if (v267)
        {
          v128 = v34;
        }

        else
        {
          v128 = 1;
        }

        goto LABEL_43;
      case 72:
LABEL_72:
        v163 = OUTLINED_FUNCTION_94_7();
        lpta_loadpn(v163, v164);
        OUTLINED_FUNCTION_90_8();
        if (compare_ptas(v11) || testneq(v11))
        {
          v122 = 1;
          v123 = 0;
          goto LABEL_157;
        }

        v165 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_r(v165, v166, v167) || (OUTLINED_FUNCTION_4_35(), test_string_s()) || (*(v11 + 136) = 1, v168 = OUTLINED_FUNCTION_8_34(), test_ptr(v168, v169, v170)) || (v171 = OUTLINED_FUNCTION_83_9(), lpta_rpta_loadp(v171, v172, v173), v174 = OUTLINED_FUNCTION_15_31(), insert_2pt_s(v174, v175, v176, v177, v178)))
        {
LABEL_78:
          v179 = OUTLINED_FUNCTION_21_25();
          starttest(v179, v180);
          v181 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v181, v182, v183))
          {
LABEL_154:
            OUTLINED_FUNCTION_83_9();
            convert_digits();
            goto LABEL_155;
          }

LABEL_79:
          OUTLINED_FUNCTION_4_35();
          v184 = test_string_s();
          v128 = v34;
          if (!v184)
          {
            v185 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v185, v186);
            *(v11 + 136) = 1;
            v187 = OUTLINED_FUNCTION_8_34();
            v190 = test_ptr(v187, v188, v189);
            v128 = v34;
            if (!v190)
            {
              v191 = OUTLINED_FUNCTION_21_25();
              starttest(v191, v192);
              v193 = OUTLINED_FUNCTION_21_25();
              bspush_ca(v193);
              v194 = OUTLINED_FUNCTION_94_7();
              lpta_loadpn(v194, v195);
              rpta_loadpn(v11, &v408);
              v196 = compare_ptas(v11);
              v128 = v34;
              if (!v196)
              {
                v145 = testeq(v11);
LABEL_83:
                v128 = v34;
                if (!v145)
                {
LABEL_84:
                  v197 = OUTLINED_FUNCTION_83_9();
                  lpta_rpta_loadp(v197, v198, v199);
                  v200 = OUTLINED_FUNCTION_2_36();
                  inserted = insert_2pt_s(v200, v201, 4, v202, v203);
                  v128 = v34;
                  if (!inserted)
                  {
                    goto LABEL_155;
                  }
                }
              }
            }
          }

          goto LABEL_43;
        }

        *(v11 + 3102) = 1;
LABEL_155:
        add_fren_currency_units(v11, v404, &v407 + 4, &v407);
LABEL_156:
        v122 = 0;
        *(v11 + 3102) = 0;
        v123 = 1;
LABEL_157:
        v347 = v122;
        v348 = OUTLINED_FUNCTION_79_10();
        lpta_loadpn(v348, v349);
        OUTLINED_FUNCTION_90_8();
        if (!compare_ptas(v11) && !testneq(v11))
        {
          v350 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v350, v351, v352) || (OUTLINED_FUNCTION_10_33(), test_string_s()))
          {
LABEL_169:
            v362 = OUTLINED_FUNCTION_92_8();
            convert_fren_double(v362);
            if (!v123)
            {
              goto LABEL_170;
            }
          }

          else if (v347)
          {
            v353 = OUTLINED_FUNCTION_92_8();
            lpta_rpta_loadp(v353, v354, v355);
            v356 = OUTLINED_FUNCTION_2_36();
            if (!insert_2pt_s(v356, v357, 4, v358, v359))
            {
LABEL_170:
              add_fren_subunits(v11);
            }
          }
        }

LABEL_171:
        HIWORD(v407) = 0;
        WORD1(v407) = 0;
        v363 = OUTLINED_FUNCTION_51_12();
        lpta_loadpn(v363, v364);
        v365 = OUTLINED_FUNCTION_29_21();
        rpta_loadpn(v365, v366);
        if (!compare_ptas(v11) && !testneq(v11))
        {
          v367 = OUTLINED_FUNCTION_51_12();
          lpta_loadpn(v367, v368);
          v369 = OUTLINED_FUNCTION_79_10();
          rpta_loadpn(v369, v370);
          if (!compare_ptas(v11) && !testneq(v11))
          {
            v409 = v401;
          }
        }

LABEL_176:
        *(v374 + 8) = v409;
        vretproc(v11);
LABEL_4:
        OUTLINED_FUNCTION_73_11();
        return;
      case 73:
      case 78:
        goto LABEL_157;
      case 74:
        goto LABEL_78;
      case 75:
      case 81:
        goto LABEL_155;
      case 76:
        goto LABEL_154;
      case 77:
        goto LABEL_79;
      case 79:
        v141 = OUTLINED_FUNCTION_22_24();
        v144 = lpta_loadp_setscan_r(v141, v142, v143);
        v128 = v34;
        if (v144)
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_10_33();
        v145 = test_string_s();
        goto LABEL_83;
      case 80:
        goto LABEL_84;
      case 82:
        goto LABEL_156;
      case 83:
      case 85:
        goto LABEL_171;
      case 84:
        v123 = 0;
        goto LABEL_169;
      case 86:
      case 87:
        goto LABEL_170;
      case 88:
        goto LABEL_176;
      default:
        goto LABEL_3;
    }
  }
}

uint64_t convert_fren_date()
{
  OUTLINED_FUNCTION_5_34();
  v346 = *MEMORY[0x277D85DE8];
  v341 = 0;
  v342 = 0;
  v339 = 0;
  v340 = 0;
  v336 = 0;
  v337 = 0;
  v338 = 0;
  v335[0] = 0;
  v335[1] = 0;
  v333 = 0;
  v334 = 0;
  v331 = 0;
  v332 = 0;
  v328 = 0;
  v329 = 0;
  v330 = 0;
  OUTLINED_FUNCTION_26_24(v3, v4, v5, v6, v7, v8, v9, v10, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327);
  OUTLINED_FUNCTION_35_15();
  v11 = setjmp(v2);
  if (v11 || OUTLINED_FUNCTION_88_8(v11, &v303, v345, v344, v343) || (v12 = OUTLINED_FUNCTION_7_34(), get_parm(v12, v13, v14, -6), OUTLINED_FUNCTION_43_13(v15, &v339), WORD2(v338) = 0, LODWORD(v338) = 0, LODWORD(v336) = -65535, push_ptr_init(v0, v335), v16 = OUTLINED_FUNCTION_70_11(), push_ptr_init(v16, v17), v18 = OUTLINED_FUNCTION_46_13(), push_ptr_init(v18, v19), WORD2(v330) = 0, LODWORD(v330) = 0, LODWORD(v328) = -65535, v20 = OUTLINED_FUNCTION_48_13(), push_ptr_init(v20, v21), OUTLINED_FUNCTION_32_18(), v22 = OUTLINED_FUNCTION_31_19(), lpta_loadp_setscan_r(v22, v23, v1)))
  {
LABEL_4:
    vretproc(v0);
    return 94;
  }

  else
  {
    bspush_ca_scan(v0, 2);
    v25 = OUTLINED_FUNCTION_3_36();
    if (testFldeq(v25, v26, v27, 2))
    {
      LODWORD(v31) = 0;
    }

    else
    {
      LODWORD(v31) = 0;
      v32 = 0;
      if (!advance_tok(v0, v28, v29, v30))
      {
LABEL_8:
        LODWORD(v31) = v32;
        v33 = OUTLINED_FUNCTION_3_36();
        if (!testFldeq(v33, v34, v35, 2) && !advance_tok(v0, v36, v37, v38))
        {
LABEL_10:
          OUTLINED_FUNCTION_69_11();
          v39 = OUTLINED_FUNCTION_68_11();
          savescptr(v39, v40, v41);
          v42 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v42, v43);
          OUTLINED_FUNCTION_0_38();
          v44 = test_string_s();
          v45 = v32;
          LODWORD(v31) = v32;
          if (!v44)
          {
LABEL_11:
            v31 = v45;
            v46 = OUTLINED_FUNCTION_67_11();
            if (!savetok(v46, v47))
            {
              v48 = OUTLINED_FUNCTION_21_25();
              bspush_ca_scan(v48, v49);
              OUTLINED_FUNCTION_0_38();
              if (!test_string_s())
              {
                v50 = OUTLINED_FUNCTION_21_25();
                bspush_ca_scan(v50, v51);
                OUTLINED_FUNCTION_0_38();
                v52 = test_string_s();
                v54 = v31;
                if (!v52)
                {
LABEL_14:
                  LODWORD(v31) = v54;
                  if (!advance_tok(v0, v53, v54, v45))
                  {
                    v55 = OUTLINED_FUNCTION_49_13();
                    if (!savetok(v55, v56))
                    {
                      v57 = OUTLINED_FUNCTION_39_14();
                      LODWORD(v32) = v31;
                      if (!testeq_tvars(v57, v58, v59))
                      {
LABEL_17:
                        LODWORD(v31) = v32;
                        v60 = OUTLINED_FUNCTION_42_13();
                        savescptr(v60, v61, v62);
                        v63 = OUTLINED_FUNCTION_21_25();
                        bspush_ca_scan(v63, v64);
                        v65 = OUTLINED_FUNCTION_3_36();
                        if (!testFldeq(v65, v66, v67, 2) && !advance_tok(v0, v68, v69, v70))
                        {
                          v71 = OUTLINED_FUNCTION_3_36();
                          if (!testFldeq(v71, v72, v73, 2) && !advance_tok(v0, v74, v75, v76))
                          {
LABEL_21:
                            LODWORD(v31) = v32;
                            OUTLINED_FUNCTION_59_11();
                            v77 = OUTLINED_FUNCTION_36_15();
                            savescptr(v77, v78, v79);
                            v80 = OUTLINED_FUNCTION_3_36();
                            if (!testFldeq(v80, v81, v82, 2) && !advance_tok(v0, v83, v84, v85))
                            {
                              v86 = OUTLINED_FUNCTION_3_36();
                              if (!testFldeq(v86, v87, v88, 2) && !advance_tok(v0, v89, v90, v91))
                              {
LABEL_25:
                                LODWORD(v31) = v32;
                                v92 = OUTLINED_FUNCTION_78_10();
                                savescptr(v92, v93, v94);
                                OUTLINED_FUNCTION_21_25();
                                bspush_ca_scan_boa();
                                v95 = OUTLINED_FUNCTION_3_36();
                                if (!testFldeq(v95, v96, v97, 2))
                                {
                                  if (advance_tok(v0, v98, v99, v100))
                                  {
                                    LODWORD(v31) = v32;
                                  }

                                  else
                                  {
                                    LODWORD(v31) = 1;
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

    LODWORD(v53) = v31;
    while (2)
    {
      v101 = *(v0 + 104);
      if (v101)
      {
        v102 = OUTLINED_FUNCTION_40_14(v101);
        v32 = v53;
      }

      else
      {
        v102 = vback(v0, v53);
        v32 = 0;
      }

      v45 = v32;
      v54 = v32;
      switch(v102)
      {
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_10;
        case 4:
          OUTLINED_FUNCTION_0_38();
          v103 = test_string_s();
          v45 = v32;
          LODWORD(v53) = v32;
          if (!v103)
          {
            goto LABEL_11;
          }

          continue;
        case 5:
          goto LABEL_11;
        case 6:
          v104 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v104, v105);
          OUTLINED_FUNCTION_0_38();
          v106 = test_string_s();
          LODWORD(v53) = v32;
          if (v106)
          {
            continue;
          }

          goto LABEL_37;
        case 7:
          v114 = OUTLINED_FUNCTION_16_31();
          bspush_ca_scan(v114, v115);
          goto LABEL_40;
        case 8:
        case 10:
          goto LABEL_14;
        case 9:
LABEL_40:
          OUTLINED_FUNCTION_0_38();
          v113 = test_string_s();
          goto LABEL_41;
        case 11:
LABEL_37:
          v107 = OUTLINED_FUNCTION_3_36();
          v110 = testFldeq(v107, v108, v109, 2);
          LODWORD(v53) = v32;
          if (v110)
          {
            continue;
          }

          v113 = advance_tok(v0, v32, v111, v112);
LABEL_41:
          v54 = v32;
          v53 = v32;
          if (!v113)
          {
            goto LABEL_14;
          }

          continue;
        case 12:
          goto LABEL_17;
        case 13:
          goto LABEL_21;
        case 14:
          goto LABEL_25;
        case 15:
          bspop_boa(v0);
          v116 = end_of_word(v0);
          LODWORD(v53) = v32;
          if (v116)
          {
            continue;
          }

          *(v0 + 3018) = *(v0 + 3030);
          v117 = OUTLINED_FUNCTION_21_25();
          starttest(v117, v118);
          v119 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v119, v120, v121))
          {
            goto LABEL_50;
          }

          v122 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v122, v123);
          OUTLINED_FUNCTION_0_38();
          v124 = test_string_s();
          LODWORD(v53) = v32;
          if (!v124)
          {
            goto LABEL_46;
          }

          continue;
        case 16:
LABEL_50:
          v138 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v138, v139, v140))
          {
            goto LABEL_53;
          }

          if (advance_tok(v0, v141, v142, v143))
          {
            goto LABEL_53;
          }

          *(v0 + 136) = 1;
          v144 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v144, v145, v146))
          {
            goto LABEL_53;
          }

          OUTLINED_FUNCTION_68_11();
          fren_char_name();
          goto LABEL_54;
        case 17:
LABEL_46:
          OUTLINED_FUNCTION_4_35();
          v125 = test_string_s();
          LODWORD(v53) = v32;
          if (!v125)
          {
            *(v0 + 136) = 1;
            v126 = OUTLINED_FUNCTION_8_34();
            v129 = test_ptr(v126, v127, v128);
            LODWORD(v53) = v32;
            if (!v129)
            {
              v130 = OUTLINED_FUNCTION_68_11();
              lpta_rpta_loadp(v130, v131, v132);
              v133 = OUTLINED_FUNCTION_2_36();
              inserted = insert_2pt_s(v133, v134, 10, v135, v136);
              LODWORD(v53) = v32;
              if (!inserted)
              {
                goto LABEL_54;
              }
            }
          }

          continue;
        case 18:
        case 20:
          goto LABEL_54;
        case 19:
LABEL_53:
          v147 = OUTLINED_FUNCTION_68_11();
          convert_fren_double(v147);
LABEL_54:
          v148 = OUTLINED_FUNCTION_22_24();
          if (!lpta_loadp_setscan_r(v148, v149, v150) && !advance_tok(v0, v151, v152, v153))
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        case 21:
          goto LABEL_57;
        case 22:
LABEL_56:
          v154 = OUTLINED_FUNCTION_68_11();
          savescptr(v154, v155, v156);
LABEL_57:
          v157 = OUTLINED_FUNCTION_22_24();
          if (!lpta_loadp_setscan_r(v157, v158, v159))
          {
            OUTLINED_FUNCTION_0_38();
            if (!test_string_s())
            {
              goto LABEL_59;
            }
          }

          goto LABEL_60;
        case 23:
          goto LABEL_60;
        case 24:
LABEL_59:
          v160 = OUTLINED_FUNCTION_68_11();
          savescptr(v160, v161, v162);
LABEL_60:
          v163 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v163, v164, v165))
          {
            goto LABEL_62;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_62;
          }

          goto LABEL_86;
        case 25:
LABEL_62:
          v166 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v166, v167, v168))
          {
            goto LABEL_65;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_65;
          }

          v169 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v169, v170, v171);
          v172 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v172, v173, 9, v174, v175))
          {
            goto LABEL_65;
          }

          goto LABEL_101;
        case 26:
LABEL_86:
          OUTLINED_FUNCTION_18_30(26, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326);
          v248 = OUTLINED_FUNCTION_6_34();
          if (lpta_loadp_setscan_r(v248, v249, v250))
          {
            goto LABEL_91;
          }

          if (advance_tok(v0, v251, v252, v253))
          {
            goto LABEL_91;
          }

          v254 = OUTLINED_FUNCTION_49_13();
          if (savetok(v254, v255))
          {
            goto LABEL_91;
          }

          v256 = OUTLINED_FUNCTION_39_14();
          if (testeq_tvars(v256, v257, v258))
          {
            goto LABEL_91;
          }

          v259 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v259, v260, v261);
          v262 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v262, v263, 9, v264, v265))
          {
            goto LABEL_91;
          }

          goto LABEL_101;
        case 27:
LABEL_91:
          v266 = OUTLINED_FUNCTION_17_31();
          if (lpta_loadp_setscan_r(v266, v267, v268))
          {
            goto LABEL_94;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_94;
          }

          v269 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v269, v270, v271);
          v272 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v272, v273, 9, v274, v275))
          {
            goto LABEL_94;
          }

          goto LABEL_101;
        case 28:
        case 31:
          goto LABEL_101;
        case 29:
LABEL_94:
          v276 = OUTLINED_FUNCTION_17_31();
          if (lpta_loadp_setscan_r(v276, v277, v278))
          {
            goto LABEL_97;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_97;
          }

          v279 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v279, v280, v281);
          v282 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v282, v283, 10, v284, v285))
          {
            goto LABEL_97;
          }

          goto LABEL_101;
        case 30:
LABEL_97:
          v286 = OUTLINED_FUNCTION_17_31();
          if (lpta_loadp_setscan_r(v286, v287, v288))
          {
            goto LABEL_101;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_101;
          }

          v289 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v289, v290, v291);
          v243 = OUTLINED_FUNCTION_2_36();
          v247 = 10;
          goto LABEL_100;
        case 32:
LABEL_65:
          v176 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v176, v177, v178))
          {
            goto LABEL_68;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_68;
          }

          v179 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v179, v180, v181);
          v182 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v182, v183, 6, v184, v185))
          {
            goto LABEL_68;
          }

          goto LABEL_101;
        case 33:
LABEL_68:
          v186 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v186, v187, v188))
          {
            goto LABEL_71;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_71;
          }

          v189 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v189, v190, v191);
          v192 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v192, v193, 7, v194, v195))
          {
            goto LABEL_71;
          }

          goto LABEL_101;
        case 34:
LABEL_71:
          v196 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v196, v197, v198))
          {
            goto LABEL_74;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_74;
          }

          v199 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v199, v200, v201);
          v202 = OUTLINED_FUNCTION_1_37();
          if (insert_2pt_s(v202, v203, v204, v205, v206))
          {
            goto LABEL_74;
          }

          goto LABEL_101;
        case 35:
LABEL_74:
          v207 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v207, v208, v209))
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_77;
          }

          v210 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v210, v211, v212);
          v213 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v213, v214, 6, v215, v216))
          {
            goto LABEL_77;
          }

          goto LABEL_101;
        case 36:
LABEL_77:
          v217 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v217, v218, v219))
          {
            goto LABEL_80;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_80;
          }

          v220 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v220, v221, v222);
          v223 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v223, v224, 9, v225, v226))
          {
            goto LABEL_80;
          }

          goto LABEL_101;
        case 37:
LABEL_80:
          v227 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v227, v228, v229))
          {
            goto LABEL_83;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_83;
          }

          v230 = OUTLINED_FUNCTION_42_13();
          lpta_rpta_loadp(v230, v231, v232);
          v233 = OUTLINED_FUNCTION_2_36();
          if (insert_2pt_s(v233, v234, 6, v235, v236))
          {
            goto LABEL_83;
          }

          goto LABEL_101;
        case 38:
LABEL_83:
          v237 = OUTLINED_FUNCTION_22_24();
          if (!lpta_loadp_setscan_r(v237, v238, v239))
          {
            OUTLINED_FUNCTION_0_38();
            if (!test_string_s())
            {
              v240 = OUTLINED_FUNCTION_42_13();
              lpta_rpta_loadp(v240, v241, v242);
              v243 = OUTLINED_FUNCTION_2_36();
              v247 = 11;
LABEL_100:
              insert_2pt_s(v243, v244, v247, v245, v246);
            }
          }

LABEL_101:
          v292 = OUTLINED_FUNCTION_70_11();
          lpta_loadpn(v292, v293);
          v294 = OUTLINED_FUNCTION_46_13();
          rpta_loadpn(v294, v295);
          if (compare_ptas(v0) || testeq(v0))
          {
            goto LABEL_103;
          }

          v302 = OUTLINED_FUNCTION_78_10();
          convert_fren_double(v302);
          break;
        case 39:
LABEL_103:
          *(v0 + 3094) = 4;
          v296 = OUTLINED_FUNCTION_78_10();
          convert_fren_thousands(v296, v297, v298, v299, v300, v301);
          break;
        case 40:
        case 41:
        case 42:
          goto LABEL_104;
        default:
          goto LABEL_4;
      }

      break;
    }

LABEL_104:
    OUTLINED_FUNCTION_82_9(v340);
    return 0;
  }
}

uint64_t convert_fren_time(uint64_t a1, __int16 *a2)
{
  v298 = *MEMORY[0x277D85DE8];
  v293[0] = 0;
  v293[1] = 0;
  v291 = 0;
  v292 = 0;
  v289[1] = 0;
  v290 = 0;
  v288 = 0;
  v289[0] = 0;
  v286[1] = 0;
  v287 = 0;
  v285 = 0;
  v286[0] = 0;
  v283 = 0;
  memset(v284, 0, sizeof(v284));
  v282 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v281, v4);
  OUTLINED_FUNCTION_37_15();
  bzero(v297, v5);
  v6 = setjmp(v297);
  if (v6 || OUTLINED_FUNCTION_88_8(v6, v281, v296, v295, v294) || (v7 = OUTLINED_FUNCTION_27_22(), get_parm(v7, v8, a2, -6), OUTLINED_FUNCTION_43_13(v9, &v291), WORD2(v290) = -4, LOWORD(v290) = -4, push_ptr_init(a1, v289), v10 = OUTLINED_FUNCTION_67_11(), push_ptr_init(v10, v11), push_ptr_init(a1, v286), v12 = OUTLINED_FUNCTION_70_11(), push_ptr_init(v12, v13), v14 = OUTLINED_FUNCTION_46_13(), push_ptr_init(v14, v15), v16 = OUTLINED_FUNCTION_55_12(), push_ptr_init(v16, v17), v18 = OUTLINED_FUNCTION_76_11(), push_ptr_init(v18, v19), fence_35(a1), WORD1(v290) = 0, HIWORD(v290) = 0, OUTLINED_FUNCTION_89_8(), v20 = OUTLINED_FUNCTION_27_22(), lpta_loadp_setscan_r(v20, v21, a2)))
  {
LABEL_4:
    vretproc(a1);
    return 94;
  }

  bspush_ca_scan(a1, 2);
  v23 = OUTLINED_FUNCTION_3_36();
  if (testFldeq(v23, v24, v25, 2))
  {
    v29 = 0;
  }

  else
  {
    v29 = 0;
    LODWORD(v30) = 0;
    if (!advance_tok(a1, v26, v27, v28))
    {
LABEL_8:
      v29 = v30;
      v31 = OUTLINED_FUNCTION_3_36();
      if (!testFldeq(v31, v32, v33, 2) && !advance_tok(a1, v34, v35, v36))
      {
LABEL_10:
        OUTLINED_FUNCTION_69_11();
        savescptr(a1, v37, v289);
        v38 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v38, v39);
        OUTLINED_FUNCTION_0_38();
        v40 = test_string_s();
        v41 = v30;
        v29 = v30;
        if (!v40)
        {
LABEL_11:
          v29 = v41;
          savescptr(a1, 5, &v287);
          v42 = OUTLINED_FUNCTION_21_25();
          bspush_ca_scan(v42, v43);
          v44 = OUTLINED_FUNCTION_3_36();
          if (!testFldeq(v44, v45, v46, 2) && !advance_tok(a1, v47, v48, v49))
          {
            v50 = OUTLINED_FUNCTION_3_36();
            if (!testFldeq(v50, v51, v52, 2))
            {
              LODWORD(v30) = v29;
              if (!advance_tok(a1, v53, v54, v55))
              {
LABEL_15:
                v29 = v30;
                OUTLINED_FUNCTION_58_11();
                v56 = OUTLINED_FUNCTION_75_11();
                savescptr(v56, v57, v58);
                OUTLINED_FUNCTION_21_25();
                bspush_ca_scan_boa();
                v59 = OUTLINED_FUNCTION_3_36();
                if (!testFldeq(v59, v60, v61, 2))
                {
                  if (advance_tok(a1, v62, v63, v64))
                  {
                    v29 = v30;
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
      }
    }
  }

  v65 = v29;
  while (2)
  {
    v66 = *(a1 + 104);
    if (v66)
    {
      v67 = OUTLINED_FUNCTION_40_14(v66);
      v30 = v73;
    }

    else
    {
      v67 = vback(a1, v65);
      v30 = 0;
    }

    v41 = v30;
    switch(v67)
    {
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_10;
      case 4:
        v74 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v74, v75);
        goto LABEL_25;
      case 5:
        goto LABEL_11;
      case 6:
LABEL_25:
        OUTLINED_FUNCTION_0_38();
        v76 = test_string_s();
        v41 = v30;
        v65 = v30;
        if (!v76)
        {
          goto LABEL_11;
        }

        continue;
      case 7:
        goto LABEL_15;
      case 8:
        bspop_boa(a1);
        v125 = OUTLINED_FUNCTION_16_31();
        starttest(v125, v126);
        v127 = OUTLINED_FUNCTION_67_11();
        lpta_loadpn(v127, v128);
        rpta_loadpn(a1, &v291);
        if (compare_ptas(a1) || testeq(a1))
        {
          goto LABEL_46;
        }

        v264 = OUTLINED_FUNCTION_21_25();
        bspush_ca(v264);
        v265 = OUTLINED_FUNCTION_22_24();
        v268 = lpta_loadp_setscan_r(v265, v266, v267);
        v65 = v30;
        if (v268)
        {
          continue;
        }

        OUTLINED_FUNCTION_0_38();
        v89 = test_string_s();
LABEL_98:
        v65 = v30;
        if (!v89)
        {
          goto LABEL_4;
        }

        continue;
      case 9:
LABEL_46:
        v129 = OUTLINED_FUNCTION_21_25();
        starttest(v129, v130);
        v131 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_l(v131, v132, v133) || advance_tok(a1, v134, v135, v136))
        {
          goto LABEL_48;
        }

        goto LABEL_53;
      case 10:
        v79 = OUTLINED_FUNCTION_22_24();
        v82 = lpta_loadp_setscan_r(v79, v80, v81);
        v65 = v30;
        if (v82)
        {
          continue;
        }

        v83 = OUTLINED_FUNCTION_3_36();
        v86 = testFldeq(v83, v84, v85, 1);
        v65 = v30;
        if (v86)
        {
          continue;
        }

        v89 = advance_tok(a1, v30, v87, v88);
        goto LABEL_98;
      case 12:
        goto LABEL_48;
      case 13:
LABEL_53:
        OUTLINED_FUNCTION_59_11();
        v147 = OUTLINED_FUNCTION_68_11();
        savescptr(v147, v148, v149);
        OUTLINED_FUNCTION_4_35();
        v150 = test_string_s();
        v65 = v30;
        if (v150)
        {
          continue;
        }

        *(a1 + 136) = 1;
        v151 = OUTLINED_FUNCTION_8_34();
        v154 = test_ptr(v151, v152, v153);
        v65 = v30;
        if (v154)
        {
          continue;
        }

        v155 = OUTLINED_FUNCTION_68_11();
        lpta_rpta_loadp(v155, v156, v157);
        v158 = OUTLINED_FUNCTION_28_21();
        v162 = delete_2pt(v158, v159, v160, v161);
        v65 = v30;
        if (v162)
        {
          continue;
        }

        *(a1 + 136) = 1;
        OUTLINED_FUNCTION_8_34();
        delete_1pt();
LABEL_48:
        *(a1 + 3018) = *(a1 + 3026);
        string_to_short(a1, v293, v289, &v290);
LABEL_49:
        v137 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_r(v137, v138, v139) || advance_tok(a1, v140, v141, v142) || (*(a1 + 136) = 1, v143 = OUTLINED_FUNCTION_8_34(), test_ptr(v143, v144, v145)))
        {
LABEL_52:
          v146 = OUTLINED_FUNCTION_56_11();
          convert_fren_double(v146);
          goto LABEL_63;
        }

        v163 = OUTLINED_FUNCTION_21_25();
        starttest(v163, v164);
        v165 = OUTLINED_FUNCTION_22_24();
        if (!lpta_loadp_setscan_r(v165, v166, v167))
        {
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            v269 = OUTLINED_FUNCTION_22_24();
            move_i(v269, v270, v271);
            v272 = OUTLINED_FUNCTION_56_11();
            lpta_rpta_loadp(v272, v273, v274);
            v275 = OUTLINED_FUNCTION_1_37();
            inserted = insert_2pt_s(v275, v276, v277, v278, v279);
            v65 = v30;
            if (!inserted)
            {
              goto LABEL_63;
            }

            continue;
          }
        }

LABEL_59:
        v168 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_r(v168, v169, v170) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v171 = OUTLINED_FUNCTION_56_11(), lpta_rpta_loadp(v171, v172, v173), v174 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v174, v175, 7, v176, v177)))
        {
LABEL_62:
          v178 = OUTLINED_FUNCTION_56_11();
          convert_fren_single_digit(v178);
        }

LABEL_63:
        *(a1 + 3018) = *(a1 + 3022);
        v179 = OUTLINED_FUNCTION_21_25();
        starttest_l(v179, v180);
        v181 = OUTLINED_FUNCTION_22_24();
        if (!lpta_loadp_setscan_r(v181, v182, v183))
        {
          OUTLINED_FUNCTION_10_33();
          if (!test_string_s())
          {
            v184 = OUTLINED_FUNCTION_75_11();
            copyvar(v184, v185, v186);
          }
        }

LABEL_66:
        lpta_rpta_loadp(a1, v289, &v287);
        v187 = OUTLINED_FUNCTION_1_37();
        v192 = insert_2pt_s(v187, v188, v189, v190, v191);
        v65 = v30;
        if (v192)
        {
          continue;
        }

        if (HIWORD(v290) != 1)
        {
          OUTLINED_FUNCTION_65_11();
          *(a1 + 144) = v288;
          *(a1 + 128) = 0;
          v193 = OUTLINED_FUNCTION_23_24();
          insert_l(v193, v194);
        }

LABEL_69:
        insert_space(a1, v289, v41, v68, v69, v70, v71, v72);
LABEL_70:
        v195 = OUTLINED_FUNCTION_67_11();
        lpta_loadpn(v195, v196);
        rpta_loadpn(a1, &v291);
        if (!compare_ptas(a1) && !testneq(a1))
        {
          v285 = v292;
          v197 = OUTLINED_FUNCTION_22_24();
          if (!lpta_loadp_setscan_r(v197, v198, v199))
          {
            OUTLINED_FUNCTION_10_33();
            if (!test_string_s())
            {
              v200 = OUTLINED_FUNCTION_42_13();
              lpta_rpta_loadp(v200, v201, v202);
              v203 = OUTLINED_FUNCTION_2_36();
              if (!insert_2pt_s(v203, v204, 9, v205, v206))
              {
                goto LABEL_81;
              }
            }
          }

LABEL_75:
          v207 = OUTLINED_FUNCTION_22_24();
          if (!lpta_loadp_setscan_r(v207, v208, v209))
          {
            OUTLINED_FUNCTION_10_33();
            if (!test_string_s())
            {
              v210 = OUTLINED_FUNCTION_42_13();
              lpta_rpta_loadp(v210, v211, v212);
              v213 = OUTLINED_FUNCTION_2_36();
              if (!insert_2pt_s(v213, v214, 9, v215, v216))
              {
                goto LABEL_81;
              }
            }
          }

LABEL_78:
          v217 = OUTLINED_FUNCTION_21_25();
          starttest(v217, v218);
          v219 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v219, v220, v221) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
          {
LABEL_80:
            v222 = OUTLINED_FUNCTION_42_13();
            convert_fren_double(v222);
LABEL_81:
            v223 = OUTLINED_FUNCTION_70_11();
            lpta_loadpn(v223, v224);
            rpta_loadpn(a1, &v291);
            if (!compare_ptas(a1) && !testneq(a1))
            {
              v225 = OUTLINED_FUNCTION_75_11();
              lpta_rpta_loadp(v225, v226, v227);
              v228 = OUTLINED_FUNCTION_0_38();
              insert_2pt_s(v228, v229, v230, v231, v232);
            }

            goto LABEL_84;
          }

LABEL_93:
          v247 = OUTLINED_FUNCTION_36_15();
          savescptr(v247, v248, v249);
          v253 = advance_tok(a1, v250, v251, v252);
          v65 = v30;
          if (!v253)
          {
            v254 = OUTLINED_FUNCTION_36_15();
            lpta_rpta_loadp(v254, v255, v256);
            v257 = OUTLINED_FUNCTION_0_38();
            v262 = insert_2pt_s(v257, v258, v259, v260, v261);
            v65 = v30;
            if (!v262)
            {
              v263 = OUTLINED_FUNCTION_42_13();
              convert_fren_single_digit(v263);
              goto LABEL_81;
            }
          }

          continue;
        }

LABEL_84:
        v233 = OUTLINED_FUNCTION_21_25();
        starttest(v233, v234);
        v235 = OUTLINED_FUNCTION_22_24();
        if (!lpta_loadp_setscan_r(v235, v236, v237))
        {
LABEL_91:
          while (1)
          {
            OUTLINED_FUNCTION_0_38();
            if (test_string_s())
            {
              break;
            }

            v245 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v245, v246);
          }

LABEL_92:
          v65 = v30;
          continue;
        }

LABEL_85:
        v238 = OUTLINED_FUNCTION_21_25();
        starttest(v238, v239);
        v240 = OUTLINED_FUNCTION_22_24();
        if (!lpta_loadp_setscan_r(v240, v241, v242))
        {
LABEL_88:
          while (1)
          {
            OUTLINED_FUNCTION_0_38();
            if (test_string_s())
            {
              break;
            }

            v243 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v243, v244);
          }

          goto LABEL_92;
        }

LABEL_102:
        OUTLINED_FUNCTION_82_9(v292);
        return 0;
      case 14:
        goto LABEL_49;
      case 15:
        goto LABEL_52;
      case 16:
        goto LABEL_59;
      case 17:
      case 19:
        goto LABEL_63;
      case 18:
        goto LABEL_62;
      case 20:
        goto LABEL_66;
      case 21:
        goto LABEL_69;
      case 22:
        goto LABEL_70;
      case 23:
        goto LABEL_84;
      case 24:
        goto LABEL_75;
      case 25:
      case 29:
        goto LABEL_81;
      case 26:
        goto LABEL_78;
      case 27:
        goto LABEL_80;
      case 28:
        goto LABEL_93;
      case 30:
        goto LABEL_85;
      case 31:
        savescptr(a1, 31, v284);
        v77 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v77, v78);
        goto LABEL_31;
      case 32:
        goto LABEL_91;
      case 33:
LABEL_31:
        OUTLINED_FUNCTION_10_33();
        v90 = test_string_s();
        v65 = v30;
        if (!v90)
        {
          goto LABEL_32;
        }

        continue;
      case 34:
LABEL_32:
        v91 = OUTLINED_FUNCTION_30_20();
        savescptr(v91, v92, v93);
        v94 = OUTLINED_FUNCTION_27_22();
        v95 = end_of_word(v94);
        v65 = v30;
        if (v95)
        {
          continue;
        }

        v96 = OUTLINED_FUNCTION_75_11();
        lpta_rpta_loadp(v96, v97, v98);
        v99 = OUTLINED_FUNCTION_2_36();
        v103 = 8;
        goto LABEL_42;
      case 35:
      case 43:
      case 44:
        goto LABEL_102;
      case 36:
        v104 = OUTLINED_FUNCTION_91_8();
        savescptr(v104, v105, v106);
        v107 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v107, v108);
        goto LABEL_35;
      case 37:
        goto LABEL_88;
      case 38:
LABEL_35:
        OUTLINED_FUNCTION_10_33();
        v109 = test_string_s();
        v65 = v30;
        if (!v109)
        {
          goto LABEL_36;
        }

        continue;
      case 39:
LABEL_36:
        v110 = OUTLINED_FUNCTION_30_20();
        savescptr(v110, v111, v112);
        v113 = OUTLINED_FUNCTION_27_22();
        v114 = end_of_word(v113);
        v65 = v30;
        if (!v114)
        {
          v115 = OUTLINED_FUNCTION_21_25();
          starttest(v115, v116);
          v117 = OUTLINED_FUNCTION_21_25();
          bspush_ca(v117);
          v65 = v30;
          if (WORD1(v290) - 12 >= 0xFFFFFFFA)
          {
            goto LABEL_41;
          }
        }

        continue;
      case 40:
        v118 = OUTLINED_FUNCTION_75_11();
        lpta_rpta_loadp(v118, v119, v120);
        v99 = OUTLINED_FUNCTION_2_36();
        v103 = 14;
        goto LABEL_42;
      case 41:
        v65 = v30;
        if (SWORD1(v290) < 19)
        {
          continue;
        }

        goto LABEL_41;
      case 42:
LABEL_41:
        v121 = OUTLINED_FUNCTION_75_11();
        lpta_rpta_loadp(v121, v122, v123);
        v99 = OUTLINED_FUNCTION_2_36();
        v103 = 7;
LABEL_42:
        v124 = insert_2pt_s(v99, v100, v103, v101, v102);
        v65 = v30;
        if (!v124)
        {
          goto LABEL_102;
        }

        continue;
      default:
        goto LABEL_4;
    }
  }
}

uint64_t convert_fren_phone_number()
{
  OUTLINED_FUNCTION_5_34();
  v66 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  OUTLINED_FUNCTION_26_24(v1, v2, v3, v4, v5, v6, v7, v8, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  OUTLINED_FUNCTION_37_15();
  bzero(v65, v9);
  v10 = setjmp(v65);
  if (!v10 && !OUTLINED_FUNCTION_63_11(v10, &v28, v11, v12, v13, v14, v15, v16, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]))
  {
    v18 = OUTLINED_FUNCTION_7_34();
    get_parm(v18, v19, v20, -6);
    v21 = OUTLINED_FUNCTION_27_22();
    OUTLINED_FUNCTION_72_11(v21, v22);
    fence_35(v0);
    v23 = OUTLINED_FUNCTION_21_25();
    starttest(v23, v24);
    OUTLINED_FUNCTION_13_32();
    bspush_ca_boa();
    OUTLINED_FUNCTION_7_34();
    v25 = convert_NA_phone_number();
    v26 = v0[13];
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_40_14(v26);
    }

    else
    {
      v27 = vback(v0, v25 == 0);
    }

    if (v27 == 2)
    {
      bspop_boa(v0);
    }

    else if (v27 == 1)
    {
      OUTLINED_FUNCTION_82_9(v52);
      return 0;
    }
  }

  vretproc(v0);
  return 94;
}

uint64_t convert_fren_ordinal()
{
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_11_33(v3, v4, v5, v6, v7, v8, v9, v10, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v168, v170, v172, v174);
  OUTLINED_FUNCTION_35_15();
  v11 = setjmp(v2);
  if (!v11 && !OUTLINED_FUNCTION_84_9(v11, v12, v13, v14, v15, v16, v17, v18, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v169, v171, v173, v175, 0, 0, v177, SHIDWORD(v177), v178, SWORD2(v178), SHIWORD(v178), v179, SWORD2(v179), SBYTE6(v179), SHIBYTE(v179)))
  {
    v19 = OUTLINED_FUNCTION_7_34();
    get_parm(v19, v20, v21, -6);
    v22 = OUTLINED_FUNCTION_27_22();
    OUTLINED_FUNCTION_72_11(v22, v23);
    v24 = OUTLINED_FUNCTION_49_13();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_48_13();
    push_ptr_init(v26, v27);
    fence_35(v0);
    v28 = OUTLINED_FUNCTION_7_34();
    test_for_fren_ordinal(v28, v29, v30, v31, v32, v33);
    if (!v34)
    {
      v36 = OUTLINED_FUNCTION_13_32();
      starttest(v36, v37);
      v38 = OUTLINED_FUNCTION_22_24();
      v41 = 0;
      v42 = 0;
      if (lpta_loadp_setscan_l(v38, v39, v40))
      {
        goto LABEL_20;
      }

LABEL_7:
      bspush_ca_scan_boa();
      v43 = OUTLINED_FUNCTION_20_26();
      if (testFldeq(v43, v44, 3, 1))
      {
        v45 = v42;
      }

      else
      {
        v45 = 1;
      }

      while (1)
      {
        v46 = *(v0 + 104);
        if (v46)
        {
          v47 = OUTLINED_FUNCTION_40_14(v46);
          v42 = v48;
        }

        else
        {
          v47 = vback(v0, v45);
          v42 = 0;
        }

        switch(v47)
        {
          case 2:
            goto LABEL_19;
          case 3:
            bspop_boa(v0);
            v52 = advance_tok(v0, v49, v50, v51);
            v45 = v42;
            if (v52)
            {
              continue;
            }

            v53 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v53, v54);
            goto LABEL_7;
          case 4:
            OUTLINED_FUNCTION_50_13();
            v55 = OUTLINED_FUNCTION_30_20();
            savescptr(v55, v56, v57);
            v58 = OUTLINED_FUNCTION_27_22();
            delete_inp_from_left(v58);
LABEL_19:
            v41 = v42;
            break;
          case 5:
            goto LABEL_7;
          case 6:
            v41 = v42;
            goto LABEL_25;
          case 7:
            goto LABEL_22;
          case 8:
            v41 = v42;
            goto LABEL_26;
          case 9:
          case 11:
            goto LABEL_29;
          case 10:
            v41 = v42;
            goto LABEL_28;
          default:
            goto LABEL_4;
        }

LABEL_20:
        v59 = OUTLINED_FUNCTION_21_25();
        starttest(v59, v60);
        v61 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_l(v61, v62, v63) || (OUTLINED_FUNCTION_0_38(), v42 = v41, test_string_s()))
        {
LABEL_25:
          *(v0 + 136) = 1;
          OUTLINED_FUNCTION_44_13();
          v76 = OUTLINED_FUNCTION_23_24();
          insert_r(v76, v77, 2, v78, v79);
LABEL_26:
          v80 = OUTLINED_FUNCTION_16_31();
          starttest(v80, v81);
          v82 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_l(v82, v83, v84) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
          {
LABEL_29:
            OUTLINED_FUNCTION_81_10(v176);
            goto LABEL_5;
          }

LABEL_28:
          OUTLINED_FUNCTION_18_30(10, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165);
          v85 = OUTLINED_FUNCTION_27_22();
          lpta_rpta_loadp(v85, v86, v87);
          v88 = OUTLINED_FUNCTION_0_38();
          inserted = insert_2pt_s(v88, v89, v90, v91, v92);
          v45 = v41;
          if (!inserted)
          {
            goto LABEL_29;
          }
        }

        else
        {
LABEL_22:
          OUTLINED_FUNCTION_58_11();
          v64 = OUTLINED_FUNCTION_30_20();
          savescptr(v64, v65, v66);
          v67 = OUTLINED_FUNCTION_27_22();
          lpta_rpta_loadp(v67, v68, v69);
          v70 = OUTLINED_FUNCTION_0_38();
          v75 = insert_2pt_s(v70, v71, v72, v73, v74);
          v45 = v42;
          v41 = v42;
          if (!v75)
          {
            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_4:
  v1 = 94;
LABEL_5:
  vretproc(v0);
  return v1;
}

void add_fren_point_digits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v146 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_38_15();
  bzero(v129, v8);
  OUTLINED_FUNCTION_37_15();
  bzero(v145, v9);
  v10 = setjmp(v145);
  if (v10 || OUTLINED_FUNCTION_60_11(v10, v129, v11, v12, v13, v14, v15, v16, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11], v129[12], v129[13], v129[14], v129[15], v129[16], v129[17], v129[18], v129[19], v129[20], v129[21], v129[22], v130[0], v130[1], *v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145[0]) || (v17 = OUTLINED_FUNCTION_7_34(), get_parm(v17, v18, v19, -6), OUTLINED_FUNCTION_43_13(v20, v131), v21 = OUTLINED_FUNCTION_55_12(), push_ptr_init(v21, v22), OUTLINED_FUNCTION_32_18(), v23 = OUTLINED_FUNCTION_31_19(), lpta_loadp_setscan_r(v23, v24, v7)))
  {
LABEL_4:
    vretproc(v6);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v25, v26);
    OUTLINED_FUNCTION_4_35();
    v27 = test_string_s();
    LODWORD(v28) = 0;
    v29 = 0;
    if (!v27)
    {
LABEL_47:
      LODWORD(v28) = v29;
      OUTLINED_FUNCTION_69_11();
      savescptr(v6, v115, v130);
LABEL_48:
      while (1)
      {
        v116 = OUTLINED_FUNCTION_3_36();
        if (testFldeq(v116, v117, v118, 2) || advance_tok(v6, v119, v120, v121))
        {
          break;
        }

        v122 = OUTLINED_FUNCTION_31_19();
        bspush_ca_scan(v122, v123);
      }
    }

LABEL_7:
    v30 = v28;
    while (2)
    {
      v31 = *(v6 + 104);
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_40_14(v31);
        v28 = v33;
      }

      else
      {
        v32 = vback(v6, v30);
        v28 = 0;
      }

      v29 = v28;
      switch(v32)
      {
        case 2:
          OUTLINED_FUNCTION_4_35();
          v34 = test_string_s();
          v29 = v28;
          v30 = v28;
          if (!v34)
          {
            goto LABEL_47;
          }

          continue;
        case 3:
          goto LABEL_47;
        case 4:
          v57 = OUTLINED_FUNCTION_31_19();
          savescptr(v57, v58, v131);
          fren_char_name();
          goto LABEL_22;
        case 5:
          goto LABEL_48;
        case 6:
LABEL_22:
          v59 = OUTLINED_FUNCTION_80_10();
          starttest(v59, v60);
          v61 = OUTLINED_FUNCTION_52_12();
          if (lpta_loadp_setscan_r(v61, v62, v7))
          {
            goto LABEL_23;
          }

          goto LABEL_40;
        case 7:
LABEL_23:
          v63 = OUTLINED_FUNCTION_41_13();
          starttest(v63, v64);
          v65 = OUTLINED_FUNCTION_52_12();
          if (lpta_loadp_setscan_r(v65, v66, v7))
          {
            goto LABEL_24;
          }

          v94 = OUTLINED_FUNCTION_15_31();
          v97 = testFldeq(v94, v95, v96, 2);
          v30 = v28;
          if (v97)
          {
            continue;
          }

          OUTLINED_FUNCTION_96_6();
          goto LABEL_36;
        case 8:
          *(v6 + 136) = v7;
          v90 = OUTLINED_FUNCTION_8_34();
          v93 = test_ptr(v90, v91, v92);
          v30 = v28;
          if (v93)
          {
            continue;
          }

          goto LABEL_44;
        case 9:
LABEL_40:
          while (1)
          {
            v103 = OUTLINED_FUNCTION_15_31();
            if (testFldeq(v103, v104, v105, 2))
            {
              break;
            }

            v106 = OUTLINED_FUNCTION_28_21();
            if (testFldeq(v106, v107, v108, 53) || advance_tok(v6, v109, v110, v111))
            {
              break;
            }

            v101 = OUTLINED_FUNCTION_97_6();
            bspush_ca_scan(v101, v102);
          }

          goto LABEL_7;
        case 10:
        case 11:
        case 14:
        case 17:
          goto LABEL_45;
        case 12:
LABEL_24:
          v67 = OUTLINED_FUNCTION_61_11();
          starttest(v67, v68);
          v69 = OUTLINED_FUNCTION_52_12();
          if (lpta_loadp_setscan_r(v69, v70, v7))
          {
            goto LABEL_44;
          }

          v71 = OUTLINED_FUNCTION_15_31();
          v74 = testFldeq(v71, v72, v73, 2);
          v30 = v28;
          if (v74)
          {
            continue;
          }

          OUTLINED_FUNCTION_99_6();
LABEL_36:
          bspush_ca_scan_boa();
          v98 = OUTLINED_FUNCTION_28_21();
          if (testFldeq(v98, v99, v100, 53))
          {
            v30 = v28;
          }

          else
          {
            v30 = 1;
          }

          continue;
        case 13:
          bspop_boa(v6);
          v78 = advance_tok(v6, v75, v76, v77);
          v30 = v28;
          if (v78)
          {
            continue;
          }

          v79 = OUTLINED_FUNCTION_15_31();
          v82 = testFldeq(v79, v80, v81, 2);
          v30 = v28;
          if (v82)
          {
            continue;
          }

          v85 = advance_tok(v6, v28, v83, v84);
          v30 = v28;
          if (v85)
          {
            continue;
          }

          *(v6 + 136) = v7;
          v86 = OUTLINED_FUNCTION_8_34();
          v89 = test_ptr(v86, v87, v88);
          v30 = v28;
          if (v89)
          {
            continue;
          }

          v124 = OUTLINED_FUNCTION_36_15();
          convert_fren_double(v124);
          goto LABEL_45;
        case 15:
LABEL_44:
          v112 = OUTLINED_FUNCTION_36_15();
          single_chars(v112, v113, v114);
          goto LABEL_45;
        case 16:
          bspop_boa(v6);
          v38 = advance_tok(v6, v35, v36, v37);
          v30 = v28;
          if (v38)
          {
            continue;
          }

          v39 = OUTLINED_FUNCTION_15_31();
          v42 = testFldeq(v39, v40, v41, 2);
          v30 = v28;
          if (v42)
          {
            continue;
          }

          v45 = advance_tok(v6, v28, v43, v44);
          v30 = v28;
          if (v45)
          {
            continue;
          }

          v46 = OUTLINED_FUNCTION_15_31();
          v49 = testFldeq(v46, v47, v48, 2);
          v30 = v28;
          if (v49)
          {
            continue;
          }

          v52 = advance_tok(v6, v28, v50, v51);
          v30 = v28;
          if (v52)
          {
            continue;
          }

          *(v6 + 136) = v7;
          v53 = OUTLINED_FUNCTION_8_34();
          v56 = test_ptr(v53, v54, v55);
          v30 = v28;
          if (v56)
          {
            continue;
          }

          v125 = OUTLINED_FUNCTION_36_15();
          convert_fren_hundreds(v125);
LABEL_45:
          *(v6 + 2806) = *(v6 + 2834);
          goto LABEL_46;
        case 18:
LABEL_46:
          OUTLINED_FUNCTION_82_9(v132);
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_73_11();
}

void convert_fren_fraction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v204 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_34_16();
  v186 = 0;
  v187 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v185, v8);
  OUTLINED_FUNCTION_37_15();
  bzero(v203, v9);
  v10 = setjmp(v203);
  if (v10 || OUTLINED_FUNCTION_60_11(v10, v185, v11, v12, v13, v14, v15, v16, v184, v185[0], v185[1], v185[2], v185[3], v185[4], v185[5], v185[6], v185[7], v185[8], v185[9], v185[10], v185[11], v185[12], v185[13], v185[14], v185[15], v185[16], v185[17], v185[18], v185[19], v185[20], v185[21], v185[22], v186, v187, v188[0], v188[1], *v189, v190, *v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203[0]))
  {
LABEL_3:
    vretproc(v6);
    goto LABEL_4;
  }

  v17 = OUTLINED_FUNCTION_7_34();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_43_13(v20, v189);
  v21 = OUTLINED_FUNCTION_55_12();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_76_11();
  push_ptr_init(v23, v24);
  OUTLINED_FUNCTION_32_18();
  v25 = OUTLINED_FUNCTION_31_19();
  if (lpta_loadp_setscan_r(v25, v26, v7))
  {
    v27 = 0;
LABEL_7:
    v28 = OUTLINED_FUNCTION_21_25();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v30, v31, v32))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_0_38();
    if (test_string_s())
    {
      goto LABEL_3;
    }

LABEL_9:
    OUTLINED_FUNCTION_58_11();
    savescptr(v6, v33, v188);
    v34 = OUTLINED_FUNCTION_3_36();
    if (!testFldeq(v34, v35, v36, 2))
    {
      v40 = v27;
      if (!advance_tok(v6, v37, v38, v39))
      {
LABEL_11:
        v41 = OUTLINED_FUNCTION_91_8();
        savescptr(v41, v42, v43);
        OUTLINED_FUNCTION_0_38();
        if (test_string_s() || (v44 = OUTLINED_FUNCTION_3_36(), testFldeq(v44, v45, v46, 2)))
        {
          v27 = v40;
        }

        else
        {
          OUTLINED_FUNCTION_16_31();
          bspush_ca_scan_boa();
          v71 = OUTLINED_FUNCTION_20_26();
          if (testFldeq(v71, v72, v73, 53))
          {
            v27 = v40;
          }

          else
          {
            v27 = 1;
          }
        }
      }
    }
  }

  else
  {
    v47 = OUTLINED_FUNCTION_3_36();
    if (testFldeq(v47, v48, v49, 3))
    {
      v27 = 0;
    }

    else
    {
      v40 = 0;
      v27 = 0;
      if (!advance_tok(v6, v50, v51, v52))
      {
LABEL_17:
        OUTLINED_FUNCTION_45_13();
        v53 = OUTLINED_FUNCTION_30_20();
        savescptr(v53, v54, v55);
        v56 = OUTLINED_FUNCTION_27_22();
        v27 = v40;
        if (!end_of_word(v56))
        {
          v57 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v57, v58, v59) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v60 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v60, v61, v62), v63 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v63, v64, 4, v65, v66)))
          {
LABEL_21:
            OUTLINED_FUNCTION_36_15();
            fren_char_name();
          }

LABEL_22:
          *(v6 + 136) = 1;
          OUTLINED_FUNCTION_44_13();
          v67 = OUTLINED_FUNCTION_23_24();
          insert_r(v67, v68, 5, v69, v70);
          goto LABEL_66;
        }
      }
    }
  }

  v74 = v27;
  while (2)
  {
    v75 = *(v6 + 104);
    if (v75)
    {
      v76 = OUTLINED_FUNCTION_40_14(v75);
      v40 = v77;
    }

    else
    {
      v76 = vback(v6, v74);
      v40 = 0;
    }

    switch(v76)
    {
      case 1:
        v27 = v40;
        goto LABEL_7;
      case 2:
        goto LABEL_17;
      case 3:
        goto LABEL_21;
      case 4:
        goto LABEL_22;
      case 5:
      case 23:
        goto LABEL_66;
      case 7:
        v27 = v40;
        goto LABEL_9;
      case 8:
        goto LABEL_11;
      case 9:
        bspop_boa(v6);
        OUTLINED_FUNCTION_27_22();
        bspush_ca_scan_boa();
        v78 = OUTLINED_FUNCTION_66_11();
        if (testFldeq(v78, v79, v80, 54))
        {
          v74 = v40;
        }

        else
        {
          v74 = 1;
        }

        continue;
      case 10:
        bspop_boa(v6);
        v84 = advance_tok(v6, v81, v82, v83);
        v74 = v40;
        if (v84)
        {
          continue;
        }

        goto LABEL_35;
      case 11:
LABEL_35:
        v85 = OUTLINED_FUNCTION_87_8();
        savescptr(v85, v86, v189);
        v87 = OUTLINED_FUNCTION_61_11();
        v88 = end_of_word(v87);
        v74 = v40;
        if (v88)
        {
          continue;
        }

        *(v6 + 3018) = *(v6 + 3038);
        *(v6 + 136) = 1;
        OUTLINED_FUNCTION_44_13();
        v89 = OUTLINED_FUNCTION_23_24();
        insert_r(v89, 1, 4, &unk_28064B55A, v90);
        v91 = OUTLINED_FUNCTION_61_11();
        if (!lpta_loadp_setscan_l(v91, v92, 1))
        {
          OUTLINED_FUNCTION_66_11();
          if (!test_string_s())
          {
            v93 = OUTLINED_FUNCTION_97_6();
            starttest(v93, v94);
            v95 = OUTLINED_FUNCTION_41_13();
            if (!lpta_loadp_setscan_l(v95, v96, 1))
            {
              OUTLINED_FUNCTION_66_11();
              if (!test_string_s())
              {
                lpta_rpta_loadp(v6, v188, v189);
                v97 = OUTLINED_FUNCTION_23_24();
                if (!insert_2pt_s(v97, 1u, 4, &unk_28064B562, v98))
                {
                  goto LABEL_66;
                }
              }
            }

LABEL_41:
            v99 = OUTLINED_FUNCTION_41_13();
            lpta_rpta_loadp(v99, v100, v189);
            v101 = OUTLINED_FUNCTION_23_24();
            inserted = insert_2pt_s(v101, 1u, 4, &unk_28064B562, v102);
            v74 = v40;
            if (!inserted)
            {
              goto LABEL_64;
            }

            continue;
          }
        }

LABEL_43:
        v104 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_l(v104, v105, v106) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v107 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v107, v108, v109), v110 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v110, v111, v112, v113, v114)))
        {
LABEL_46:
          v115 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_l(v115, v116, v117) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v118 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v118, v119, v120), v121 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v121, v122, v123, v124, v125)))
          {
LABEL_49:
            v126 = OUTLINED_FUNCTION_22_24();
            if (lpta_loadp_setscan_l(v126, v127, v128) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v129 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v129, v130, v131), v132 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v132, v133, 9, v134, v135)))
            {
LABEL_52:
              v136 = OUTLINED_FUNCTION_22_24();
              if (lpta_loadp_setscan_l(v136, v137, v138) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v139 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v139, v140, v141), v142 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v142, v143, 7, v144, v145)))
              {
LABEL_55:
                v146 = OUTLINED_FUNCTION_22_24();
                if (lpta_loadp_setscan_l(v146, v147, v148) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v149 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v149, v150, v151), v152 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v152, v153, 8, v154, v155)))
                {
LABEL_58:
                  v156 = OUTLINED_FUNCTION_22_24();
                  if (lpta_loadp_setscan_l(v156, v157, v158) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v159 = OUTLINED_FUNCTION_36_15(), lpta_rpta_loadp(v159, v160, v161), v162 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v162, v163, 8, v164, v165)))
                  {
LABEL_61:
                    v166 = OUTLINED_FUNCTION_22_24();
                    if (!lpta_loadp_setscan_l(v166, v167, v168))
                    {
                      OUTLINED_FUNCTION_0_38();
                      if (!test_string_s())
                      {
                        v169 = OUTLINED_FUNCTION_36_15();
                        lpta_rpta_loadp(v169, v170, v171);
                        v172 = OUTLINED_FUNCTION_2_36();
                        insert_2pt_s(v172, v173, 8, v174, v175);
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_64:
        OUTLINED_FUNCTION_91_8();
        fren_char_name();
LABEL_65:
        v176 = OUTLINED_FUNCTION_76_11();
        insert_space(v176, v177, v178, v179, v180, v181, v182, v183);
LABEL_66:
        OUTLINED_FUNCTION_82_9(v190);
LABEL_4:
        OUTLINED_FUNCTION_73_11();
        return;
      case 12:
        goto LABEL_43;
      case 13:
        goto LABEL_41;
      case 14:
      case 15:
        goto LABEL_64;
      case 16:
        goto LABEL_46;
      case 17:
        goto LABEL_49;
      case 18:
        goto LABEL_52;
      case 19:
        goto LABEL_55;
      case 20:
        goto LABEL_58;
      case 21:
        goto LABEL_61;
      case 22:
        goto LABEL_65;
      default:
        goto LABEL_3;
    }
  }
}

void separate_number_sequences(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74_11();
  v7 = v6;
  v87 = *MEMORY[0x277D85DE8];
  v82[0] = 0;
  v82[1] = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v77 = 0;
  v78 = 0;
  v76[0] = 0;
  v76[1] = 0;
  v74 = 0;
  v75 = 0;
  v72[0] = 0;
  v72[1] = 0;
  v73 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v71, v8);
  OUTLINED_FUNCTION_37_15();
  bzero(v86, v9);
  if (!setjmp(v86))
  {
    v10 = ventproc(v7, v71, v85, v84, v83, v86);
    if (!v10)
    {
      OUTLINED_FUNCTION_43_13(v10, v82);
      WORD2(v81) = 0;
      LODWORD(v81) = 0;
      LODWORD(v79) = -65535;
      v11 = OUTLINED_FUNCTION_79_10();
      push_ptr_init(v11, v12);
      v13 = OUTLINED_FUNCTION_94_7();
      push_ptr_init(v13, v14);
      v15 = OUTLINED_FUNCTION_86_8();
      push_ptr_init(v15, v16);
      WORD2(v73) = 0;
      LODWORD(v73) = 0;
      LODWORD(v72[0]) = -65535;
      fence_35(v7);
      if (*(v7 + 2614) != 1)
      {
LABEL_6:
        starttest(v7, 2);
        if (!lpta_loadp_setscan_r(v7, v82, 1))
        {
LABEL_7:
          savescptr(v7, 3, &v77);
          v17 = OUTLINED_FUNCTION_96_6();
          bspush_ca_scan(v17, v18);
          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_16;
          }

          v19 = OUTLINED_FUNCTION_98_6();
          if (savetok(v19, v20))
          {
            goto LABEL_16;
          }

LABEL_9:
          v21 = OUTLINED_FUNCTION_20_26();
          if (testFldeq(v21, v22, 3, 2) || advance_tok(v7, v23, v24, v25))
          {
            goto LABEL_16;
          }

LABEL_11:
          v26 = OUTLINED_FUNCTION_93_8();
          startloop(v26, v27);
          while (1)
          {
LABEL_12:
            v28 = OUTLINED_FUNCTION_93_8();
            bspush_ca(v28);
            v29 = OUTLINED_FUNCTION_52_12();
            if (!lpta_loadp_setscan_r(v29, v30, 1) && !advance_tok(v7, v31, v32, v33) && !savetok(v7, v72))
            {
              v34 = OUTLINED_FUNCTION_98_6();
              if (!testeq_tvars(v34, v35, v72))
              {
LABEL_31:
                v62 = OUTLINED_FUNCTION_99_6();
                savescptr(v62, v63, v76);
LABEL_32:
                while (1)
                {
                  v64 = OUTLINED_FUNCTION_20_26();
                  if (testFldeq(v64, v65, 3, 2) || advance_tok(v7, v66, v67, v68))
                  {
                    break;
                  }

                  v69 = OUTLINED_FUNCTION_27_22();
                  bspush_ca_scan(v69, v70);
                }
              }
            }

LABEL_16:
            while (2)
            {
              v36 = *(v7 + 104);
              if (v36)
              {
                v37 = OUTLINED_FUNCTION_40_14(v36);
              }

              else
              {
                v37 = OUTLINED_FUNCTION_85_9();
              }

              switch(v37)
              {
                case 1:
                  goto LABEL_6;
                case 3:
                  goto LABEL_7;
                case 4:
                  OUTLINED_FUNCTION_0_38();
                  if (test_string_s())
                  {
                    continue;
                  }

                  v38 = OUTLINED_FUNCTION_98_6();
                  if (savetok(v38, v39))
                  {
                    continue;
                  }

                  goto LABEL_22;
                case 5:
                  goto LABEL_11;
                case 6:
                  OUTLINED_FUNCTION_0_38();
                  if (!test_string_s())
                  {
                    goto LABEL_9;
                  }

                  continue;
                case 7:
LABEL_22:
                  while (1)
                  {
                    v40 = OUTLINED_FUNCTION_20_26();
                    if (testFldeq(v40, v41, 3, 2) || advance_tok(v7, v42, v43, v44))
                    {
                      break;
                    }

                    v45 = OUTLINED_FUNCTION_61_11();
                    bspush_ca_scan(v45, v46);
                  }

                  continue;
                case 8:
                  goto LABEL_28;
                case 9:
                  goto LABEL_31;
                case 10:
                  savescptr(v7, 10, &v74);
LABEL_28:
                  v47 = OUTLINED_FUNCTION_52_12();
                  lpta_rpta_loadp(v47, v48, v76);
                  v49 = OUTLINED_FUNCTION_2_36();
                  if (insert_2pt_s(v49, v50, 2, &unk_28064B538, v51))
                  {
                    continue;
                  }

                  v78 = v75;
                  WORD1(v79) = 0;
                  v52 = OUTLINED_FUNCTION_98_6();
                  npush_v(v52, v53, v54, v55, v56, v57, v58, v59);
                  ncompare_s(v7, 0x48u);
                  if (!testeq(v7))
                  {
                    goto LABEL_3;
                  }

LABEL_30:
                  v60 = OUTLINED_FUNCTION_93_8();
                  while_iterate(v60, v61, 8);
                  break;
                case 11:
                  goto LABEL_32;
                case 12:
                  goto LABEL_30;
                case 13:
                  goto LABEL_12;
                default:
                  goto LABEL_3;
              }

              break;
            }
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v7);
  OUTLINED_FUNCTION_73_11();
}

uint64_t fren_monetary_exp(uint64_t a1)
{
  OUTLINED_FUNCTION_5_34();
  v84 = *MEMORY[0x277D85DE8];
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v77, v3);
  OUTLINED_FUNCTION_37_15();
  bzero(v83, v4);
  if (setjmp(v83))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_33_18();
  if (ventproc(v1, v5, v6, v7, v8, v83))
  {
    goto LABEL_3;
  }

  v10 = OUTLINED_FUNCTION_7_34();
  get_parm(v10, v11, v12, -6);
  OUTLINED_FUNCTION_43_13(v13, &v79);
  WORD2(v78) = -4;
  LOWORD(v78) = -4;
  fence_35(v1);
  HIWORD(v78) = 0;
  WORD1(v78) = 0;
  v14 = OUTLINED_FUNCTION_31_19();
  v16 = 0;
  if (lpta_loadp_setscan_r(v14, v15, 1) || (OUTLINED_FUNCTION_0_38(), v16 = 0, v17 = 0, test_string_s()))
  {
LABEL_15:
    v35 = OUTLINED_FUNCTION_21_25();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v37, v38, v39) || (OUTLINED_FUNCTION_10_33(), test_string_s()))
    {
LABEL_20:
      v47 = OUTLINED_FUNCTION_22_24();
      if (lpta_loadp_setscan_r(v47, v48, v49))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_3_36();
      if (test_string_s())
      {
        goto LABEL_3;
      }

LABEL_22:
      v50 = OUTLINED_FUNCTION_71_11();
      savescptr(v50, v51, v52);
      v29 = 3142;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_16_31();
      bspush_ca_scan(v40, v41);
      OUTLINED_FUNCTION_0_38();
      v42 = test_string_s();
      v43 = v16;
      if (v42)
      {
        goto LABEL_34;
      }

LABEL_18:
      v16 = v43;
      v44 = OUTLINED_FUNCTION_71_11();
      savescptr(v44, v45, v46);
      WORD1(v78) = *(v1 + 3182);
      v29 = 3118;
    }

    v30 = &v78 + 6;
    goto LABEL_24;
  }

  while (2)
  {
    OUTLINED_FUNCTION_45_13();
    savescptr(v1, v18, &v81);
    HIWORD(v78) = *(v1 + 3126);
    v19 = OUTLINED_FUNCTION_31_19();
    if (!lpta_loadp_setscan_r(v19, v20, 1))
    {
      OUTLINED_FUNCTION_0_38();
      v21 = test_string_s();
      v22 = v17;
      if (!v21)
      {
LABEL_13:
        v16 = v22;
        OUTLINED_FUNCTION_50_13();
        v32 = OUTLINED_FUNCTION_71_11();
        savescptr(v32, v33, v34);
        v29 = 3178;
        v30 = &v78 + 2;
LABEL_24:
        v31 = v16;
        goto LABEL_25;
      }
    }

LABEL_9:
    v16 = v17;
    v23 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v23, v24, v25))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_11:
        v26 = OUTLINED_FUNCTION_71_11();
        savescptr(v26, v27, v28);
        v29 = 3174;
        v30 = &v78 + 2;
        v31 = v17;
LABEL_25:
        *v30 = *(v1 + v29);
        v16 = v31;
      }
    }

LABEL_26:
    v53 = OUTLINED_FUNCTION_21_25();
    starttest(v53, v54);
    v55 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v55, v56, v57))
    {
LABEL_27:
      v58 = OUTLINED_FUNCTION_21_25();
      starttest(v58, v59);
      OUTLINED_FUNCTION_21_25();
      bspush_ca_boa();
      convert_fren_monetary_exp(v1, &v81, &v79, &v78 + 4, &v78);
      if (!v60)
      {
        LODWORD(v16) = 1;
      }

      goto LABEL_34;
    }

    v61 = OUTLINED_FUNCTION_21_25();
    bspush_ca_scan(v61, v62);
    v63 = OUTLINED_FUNCTION_3_36();
    v66 = testFldeq(v63, v64, v65, 1);
    v68 = v16;
    if (!v66)
    {
LABEL_33:
      LODWORD(v16) = v68;
      if (advance_tok(v1, v43, v68, v67))
      {
        goto LABEL_34;
      }

LABEL_3:
      vretproc(v1);
      return 94;
    }

LABEL_34:
    LODWORD(v17) = v16;
LABEL_35:
    v69 = *(v1 + 104);
    if (v69)
    {
      v70 = OUTLINED_FUNCTION_40_14(v69);
      v17 = v71;
    }

    else
    {
      v70 = vback(v1, v17);
      v17 = 0;
    }

    v43 = v17;
    v68 = v17;
    switch(v70)
    {
      case 1:
        v16 = v17;
        goto LABEL_15;
      case 2:
        continue;
      case 3:
        goto LABEL_9;
      case 4:
        v22 = v17;
        goto LABEL_13;
      case 5:
      case 7:
        v16 = v17;
        goto LABEL_26;
      case 6:
        goto LABEL_11;
      case 8:
        v16 = v17;
        goto LABEL_20;
      case 9:
        OUTLINED_FUNCTION_0_38();
        v72 = test_string_s();
        v43 = v17;
        if (!v72)
        {
          goto LABEL_18;
        }

        goto LABEL_35;
      case 10:
        goto LABEL_18;
      case 12:
        v16 = v17;
        goto LABEL_22;
      case 13:
        LODWORD(v16) = v17;
        goto LABEL_27;
      case 14:
        v73 = OUTLINED_FUNCTION_20_26();
        v76 = testFldeq(v73, v74, v75, 63);
        v68 = v17;
        if (!v76)
        {
          goto LABEL_33;
        }

        goto LABEL_35;
      case 15:
        goto LABEL_33;
      case 16:
        *(v2 + 8) = v82;
        OUTLINED_FUNCTION_82_9(v80);
        result = 0;
        break;
      case 17:
        bspop_boa(v1);
        goto LABEL_3;
      default:
        goto LABEL_3;
    }

    return result;
  }
}

uint64_t add_fren_currency_units(uint64_t a1, __int16 *a2, uint64_t a3, __int16 *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v60 = 0;
  v61 = 0;
  v59 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(&v36, v7);
  OUTLINED_FUNCTION_37_15();
  bzero(v72, v8);
  v9 = setjmp(v72);
  if (v9 || OUTLINED_FUNCTION_63_11(v9, &v36, v10, v11, v12, v13, v14, v15, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72[0]))
  {
    vretproc(a1);
    return 94;
  }

  v17 = OUTLINED_FUNCTION_49_13();
  get_parm(v17, v18, a2, -6);
  v19 = OUTLINED_FUNCTION_30_20();
  get_parm(v19, v20, v21, -4);
  v22 = OUTLINED_FUNCTION_76_11();
  get_parm(v22, v23, a4, -4);
  v24 = fence_35(a1);
  if (*(a1 + 3126) == HIWORD(v59))
  {
    if (*(a1 + 3178) == WORD1(v59))
    {
LABEL_6:
      OUTLINED_FUNCTION_19_26(v24, v25, v26, v27, v28, v29, v30, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
      v32 = OUTLINED_FUNCTION_23_24();
LABEL_17:
      insert_l(v32, v33);
      goto LABEL_18;
    }

    *(a1 + 168) = 1;
    *(a1 + 144) = v61;
    *(a1 + 128) = 0;
LABEL_16:
    v32 = OUTLINED_FUNCTION_2_36();
    goto LABEL_17;
  }

  if (*(a1 + 3118) == HIWORD(v59))
  {
    if (*(a1 + 3182) != WORD1(v59))
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (*(a1 + 3142) == HIWORD(v59))
  {
LABEL_12:
    OUTLINED_FUNCTION_77_10(v24, v25, v26, v27, v28, v29, v30, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
    goto LABEL_16;
  }

  if (*(a1 + 3130) == HIWORD(v59))
  {
    goto LABEL_6;
  }

LABEL_18:
  vretproc(a1);
  return 0;
}

uint64_t convert_fren_double(uint64_t a1)
{
  OUTLINED_FUNCTION_5_34();
  v193[30] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_33(v4, v5, v6, v7, v8, v9, v10, v11, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v192, v193[0], v193[1]);
  OUTLINED_FUNCTION_35_15();
  if (setjmp(v3))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_33_18();
  if (OUTLINED_FUNCTION_88_8(v12, v13, v14, v15, v16))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_7_34();
  get_parm(v18, v19, v20, -6);
  OUTLINED_FUNCTION_43_13(v21, &v191);
  v22 = OUTLINED_FUNCTION_48_13();
  push_ptr_init(v22, v23);
  fence_35(v1);
  v24 = OUTLINED_FUNCTION_31_19();
  if (!lpta_loadp_setscan_r(v24, v25, 1))
  {
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
LABEL_48:
      OUTLINED_FUNCTION_18_30(2, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188);
      v131 = OUTLINED_FUNCTION_27_22();
      convert_fren_single_digit(v131);
LABEL_50:
      v133 = OUTLINED_FUNCTION_29_21();
      insert_space(v133, v134, v135, v136, v137, v138, v139, v140);
      goto LABEL_51;
    }
  }

  while (2)
  {
    v26 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v26, v27, v28))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_47:
        v125 = OUTLINED_FUNCTION_39_14();
        convert_fren_teens(v125, v126, v127, v128, v129, v130);
LABEL_51:
        OUTLINED_FUNCTION_81_10(v192);
        break;
      }
    }

LABEL_8:
    v29 = OUTLINED_FUNCTION_21_25();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v31, v32, v33))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_10:
        OUTLINED_FUNCTION_18_30(9, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188);
        v34 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v34, v35, v36);
        v37 = OUTLINED_FUNCTION_14_32();
        v41 = 5;
        goto LABEL_11;
      }
    }

LABEL_16:
    v44 = OUTLINED_FUNCTION_21_25();
    starttest(v44, v45);
    v46 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v46, v47, v48))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_33:
        OUTLINED_FUNCTION_18_30(11, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188);
        v84 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v84, v85, v86);
        v37 = OUTLINED_FUNCTION_14_32();
        v41 = 6;
        goto LABEL_11;
      }
    }

LABEL_18:
    v49 = OUTLINED_FUNCTION_21_25();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v51, v52, v53))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_34:
        OUTLINED_FUNCTION_18_30(13, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188);
        v87 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v87, v88, v89);
LABEL_37:
        v37 = OUTLINED_FUNCTION_14_32();
        v41 = 8;
        goto LABEL_11;
      }
    }

LABEL_20:
    v54 = OUTLINED_FUNCTION_21_25();
    starttest(v54, v55);
    v56 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v56, v57, v58))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_35:
        OUTLINED_FUNCTION_18_30(15, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188);
        v90 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v90, v91, v92);
        v37 = OUTLINED_FUNCTION_14_32();
        v41 = 9;
        goto LABEL_11;
      }
    }

LABEL_22:
    v59 = OUTLINED_FUNCTION_21_25();
    starttest(v59, v60);
    v61 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v61, v62, v63))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_36:
        OUTLINED_FUNCTION_18_30(17, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188);
        v93 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v93, v94, v95);
        goto LABEL_37;
      }
    }

LABEL_24:
    v64 = OUTLINED_FUNCTION_21_25();
    starttest(v64, v65);
    v66 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v66, v67, v68))
    {
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_38:
        OUTLINED_FUNCTION_18_30(19, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188);
        v96 = OUTLINED_FUNCTION_9_33();
        lpta_rpta_loadp(v96, v97, v98);
        v79 = OUTLINED_FUNCTION_2_36();
        v83 = 9;
LABEL_31:
        if (insert_2pt_s(v79, v80, v83, v81, v82))
        {
          goto LABEL_12;
        }

        v117 = OUTLINED_FUNCTION_29_21();
        insert_space(v117, v118, v119, v120, v121, v122, v123, v124);
        goto LABEL_47;
      }
    }

LABEL_26:
    v69 = OUTLINED_FUNCTION_21_25();
    starttest(v69, v70);
    v71 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v71, v72, v73) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
    {
LABEL_28:
      v74 = OUTLINED_FUNCTION_21_25();
      starttest(v74, v75);
      v2 = 1;
      if (lpta_loadp_setscan_r(v1, v193, 1) || (OUTLINED_FUNCTION_4_35(), test_string_s()))
      {
LABEL_40:
        v102 = OUTLINED_FUNCTION_17_31();
        if (lpta_loadp_setscan_r(v102, v103, v104) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
        {
          if (v2)
          {
LABEL_43:
            v105 = OUTLINED_FUNCTION_17_31();
            if (!lpta_loadp_setscan_r(v105, v106, v107))
            {
              OUTLINED_FUNCTION_4_35();
              v108 = test_string_s();
              if (!v108)
              {
                *(v1 + 168) = 1;
                OUTLINED_FUNCTION_47_13(v108, v109, v110, v111, v112, v113, v114, v115, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190);
                v116 = OUTLINED_FUNCTION_23_24();
                insert_l(v116, 1);
              }
            }
          }

LABEL_46:
          OUTLINED_FUNCTION_39_14();
          fren_char_name();
        }

        else
        {
          v132 = OUTLINED_FUNCTION_39_14();
          delete_inp_from_left(v132);
        }

        goto LABEL_50;
      }

LABEL_30:
      OUTLINED_FUNCTION_18_30(24, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188);
      v76 = OUTLINED_FUNCTION_9_33();
      lpta_rpta_loadp(v76, v77, v78);
      v79 = OUTLINED_FUNCTION_2_36();
      v83 = 13;
      goto LABEL_31;
    }

LABEL_39:
    OUTLINED_FUNCTION_18_30(23, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188);
    v99 = OUTLINED_FUNCTION_9_33();
    lpta_rpta_loadp(v99, v100, v101);
    v2 = 0;
    v37 = OUTLINED_FUNCTION_20_26();
    v41 = 13;
    v40 = 0;
LABEL_11:
    if (!insert_2pt_s(v37, v38, v41, v39, v40))
    {
      goto LABEL_40;
    }

LABEL_12:
    v42 = *(v1 + 104);
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_40_14(v42);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_85_9();
    }

    v2 = 1;
    switch(v43)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_48;
      case 3:
      case 28:
      case 29:
        goto LABEL_50;
      case 4:
      case 7:
      case 21:
      case 26:
      case 31:
        goto LABEL_51;
      case 5:
        goto LABEL_40;
      case 6:
        goto LABEL_8;
      case 8:
        goto LABEL_16;
      case 9:
        goto LABEL_10;
      case 10:
        goto LABEL_18;
      case 11:
        goto LABEL_33;
      case 12:
        goto LABEL_20;
      case 13:
        goto LABEL_34;
      case 14:
        goto LABEL_22;
      case 15:
        goto LABEL_35;
      case 16:
        goto LABEL_24;
      case 17:
        goto LABEL_36;
      case 18:
        goto LABEL_26;
      case 19:
        goto LABEL_38;
      case 20:
      case 25:
        goto LABEL_47;
      case 22:
        goto LABEL_28;
      case 23:
        goto LABEL_39;
      case 24:
        goto LABEL_30;
      case 27:
        goto LABEL_43;
      case 30:
        goto LABEL_46;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_95_7();
}

uint64_t add_fren_subunits(uint64_t a1)
{
  OUTLINED_FUNCTION_5_34();
  v70 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  HIDWORD(v56) = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(&v33, v3);
  OUTLINED_FUNCTION_37_15();
  bzero(v69, v4);
  v5 = setjmp(v69);
  if (v5 || OUTLINED_FUNCTION_63_11(v5, &v33, v6, v7, v8, v9, v10, v11, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0]))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_30_20();
    get_parm(v13, v14, v15, -6);
    get_parm(v1, &v56 + 4, v2, -4);
    fence_35(v1);
    v16 = OUTLINED_FUNCTION_93_8();
    starttest(v16, v17);
    v18 = OUTLINED_FUNCTION_13_32();
    bspush_ca(v18);
    v27 = *(v1 + 3126);
    while (2)
    {
      if (v27 == HIWORD(v56))
      {
LABEL_12:
        *(v1 + 168) = 1;
        OUTLINED_FUNCTION_25_24(v19, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
        v29 = OUTLINED_FUNCTION_23_24();
        v30 = 1;
      }

      else
      {
        v28 = *(v1 + 104);
        if (v28)
        {
          v19 = OUTLINED_FUNCTION_40_14(v28);
        }

        else
        {
          v19 = OUTLINED_FUNCTION_85_9();
        }

        switch(v19)
        {
          case 1:
            if (*(v1 + 3118) != HIWORD(v56))
            {
              goto LABEL_14;
            }

            OUTLINED_FUNCTION_19_26(v19, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
            v29 = OUTLINED_FUNCTION_23_24();
            break;
          case 2:
            v27 = *(v1 + 3142);
            continue;
          case 3:
            goto LABEL_12;
          case 4:
            goto LABEL_14;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    insert_l(v29, v30);
LABEL_14:
    vretproc(v1);
    return 0;
  }
}

void test_for_fren_ordinal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v112 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_34_16();
  v94 = 0;
  v95 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v93, v8);
  OUTLINED_FUNCTION_37_15();
  bzero(v111, v9);
  v10 = setjmp(v111);
  if (v10 || OUTLINED_FUNCTION_60_11(v10, v93, v11, v12, v13, v14, v15, v16, v92, v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], v93[9], v93[10], v93[11], v93[12], v93[13], v93[14], v93[15], v93[16], v93[17], v93[18], v93[19], v93[20], v93[21], v93[22], v94, v95, v96[0], v96[1], *v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111[0]) || (v17 = OUTLINED_FUNCTION_7_34(), get_parm(v17, v18, v19, -6), OUTLINED_FUNCTION_43_13(v20, v97), v21 = OUTLINED_FUNCTION_55_12(), push_ptr_init(v21, v22), v23 = OUTLINED_FUNCTION_76_11(), push_ptr_init(v23, v24), OUTLINED_FUNCTION_32_18(), v25 = OUTLINED_FUNCTION_31_19(), lpta_loadp_setscan_r(v25, v26, v7)))
  {
LABEL_4:
    vretproc(v6);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v27, v28);
    OUTLINED_FUNCTION_4_35();
    if (test_string_s())
    {
      v29 = 0;
    }

    else
    {
      v30 = OUTLINED_FUNCTION_21_25();
      bspush_ca_scan(v30, v31);
      v32 = OUTLINED_FUNCTION_21_25();
      bspush_ca_scan(v32, v33);
      OUTLINED_FUNCTION_0_38();
      v34 = test_string_s();
      v35 = 0;
      v29 = 0;
      if (!v34)
      {
LABEL_9:
        v36 = v35;
        OUTLINED_FUNCTION_0_38();
        v37 = test_string_s();
        v38 = v36;
        v29 = v36;
        if (!v37)
        {
LABEL_10:
          v39 = v38;
          v40 = OUTLINED_FUNCTION_36_15();
          savescptr(v40, v41, v42);
          v43 = OUTLINED_FUNCTION_16_31();
          bspush_ca_scan(v43, v44);
          OUTLINED_FUNCTION_0_38();
          v45 = test_string_s();
          v46 = v39;
          v29 = v39;
          if (!v45)
          {
LABEL_11:
            savescptr(v6, 9, &v94);
            v47 = OUTLINED_FUNCTION_21_25();
            starttest(v47, v48);
            OUTLINED_FUNCTION_21_25();
            bspush_ca_boa();
            v49 = OUTLINED_FUNCTION_31_19();
            if (end_of_word(v49))
            {
              v29 = v46;
            }

            else
            {
              v29 = 1;
            }
          }
        }
      }
    }

    while (2)
    {
      v50 = *(v6 + 104);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_40_14(v50);
        v46 = v52;
      }

      else
      {
        v51 = vback(v6, v29);
        v46 = 0;
      }

      v35 = v46;
      v38 = v46;
      switch(v51)
      {
        case 2:
          v53 = OUTLINED_FUNCTION_31_19();
          bspush_ca_scan(v53, v54);
          OUTLINED_FUNCTION_4_35();
          v55 = test_string_s();
          v29 = v46;
          if (v55)
          {
            continue;
          }

          v56 = OUTLINED_FUNCTION_61_11();
          bspush_ca_scan(v56, v57);
          OUTLINED_FUNCTION_4_35();
          goto LABEL_21;
        case 3:
        case 6:
        case 8:
          goto LABEL_10;
        case 4:
          OUTLINED_FUNCTION_4_35();
          v84 = test_string_s();
          v35 = v46;
          v29 = v46;
          if (!v84)
          {
            goto LABEL_9;
          }

          continue;
        case 5:
          goto LABEL_9;
        case 7:
          savescptr(v6, 7, v96);
          OUTLINED_FUNCTION_28_21();
LABEL_21:
          v58 = test_string_s();
          v38 = v46;
          v29 = v46;
          if (!v58)
          {
            goto LABEL_10;
          }

          continue;
        case 9:
          goto LABEL_11;
        case 10:
          v59 = OUTLINED_FUNCTION_41_13();
          if (lpta_loadp_setscan_r(v59, v60, v7))
          {
            goto LABEL_34;
          }

          if (advance_tok(v6, v61, v62, v63))
          {
            goto LABEL_34;
          }

          *(v6 + 136) = v7;
          v64 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v64, v65, v66))
          {
            goto LABEL_34;
          }

          v67 = OUTLINED_FUNCTION_87_8();
          starttest(v67, v68);
          v69 = OUTLINED_FUNCTION_41_13();
          if (lpta_loadp_setscan_l(v69, v70, v7))
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_4_35();
          if (test_string_s())
          {
            goto LABEL_30;
          }

          if (*(v6 + 3094) != 1)
          {
            goto LABEL_30;
          }

          v71 = OUTLINED_FUNCTION_41_13();
          lpta_rpta_loadp(v71, v72, v97);
          v73 = OUTLINED_FUNCTION_15_31();
          if (insert_2pt_s(v73, v74, v75, &unk_28064B540, v76))
          {
            goto LABEL_30;
          }

          goto LABEL_37;
        case 11:
          bspop_boa(v6);
          goto LABEL_4;
        case 12:
        case 15:
        case 16:
          goto LABEL_37;
        case 13:
LABEL_34:
          v85 = OUTLINED_FUNCTION_55_12();
          lpta_loadpn(v85, v86);
          OUTLINED_FUNCTION_90_8();
          if (!compare_ptas(v6) && !testneq(v6))
          {
            *(v6 + 136) = 1;
            OUTLINED_FUNCTION_44_13();
            v87 = OUTLINED_FUNCTION_23_24();
            insert_r(v87, v88, 2, v89, v90);
          }

          goto LABEL_37;
        case 14:
LABEL_30:
          v77 = OUTLINED_FUNCTION_41_13();
          lpta_rpta_loadp(v77, v78, v97);
          v79 = OUTLINED_FUNCTION_15_31();
          inserted = insert_2pt_s(v79, v80, v81, &unk_28064B543, v82);
          v29 = v46;
          if (inserted)
          {
            continue;
          }

LABEL_37:
          v91 = v95;
          v98 = v95;
          *(v6 + 3018) = *(v6 + 3042);
          OUTLINED_FUNCTION_82_9(v91);
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_73_11();
}

uint64_t convert_fren_single_digit(uint64_t a1)
{
  OUTLINED_FUNCTION_5_34();
  v165 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_33(v2, v3, v4, v5, v6, v7, v8, v9, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163[0], v163[1]);
  OUTLINED_FUNCTION_37_15();
  bzero(v164, v10);
  if (setjmp(v164))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_33_18();
  if (ventproc(v1, v11, v12, v13, v14, v164))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_9_33();
  get_parm(v16, v17, v18, -6);
  v19 = OUTLINED_FUNCTION_27_22();
  OUTLINED_FUNCTION_72_11(v19, v20);
  v21 = OUTLINED_FUNCTION_31_19();
  push_ptr_init(v21, v22);
  fence_35(v1);
  v23 = OUTLINED_FUNCTION_27_22();
  test_for_fren_ordinal(v23, v24, &v159, v25, v26, v27);
  if (v28)
  {
LABEL_5:
    OUTLINED_FUNCTION_12_33();
    fren_char_name();
LABEL_40:
    OUTLINED_FUNCTION_81_10(v162);
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_22_24();
  if (lpta_loadp_setscan_r(v29, v30, v31) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
  {
LABEL_8:
    v32 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v32, v33, v34) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v35 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v35, v36, v37), v38 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v38, v39, v40, v41, v42)))
    {
LABEL_11:
      v43 = OUTLINED_FUNCTION_22_24();
      if (lpta_loadp_setscan_r(v43, v44, v45) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v46 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v46, v47, v48), v49 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v49, v50, 6, v51, v52)))
      {
LABEL_14:
        v53 = OUTLINED_FUNCTION_22_24();
        if (lpta_loadp_setscan_r(v53, v54, v55) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v56 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v56, v57, v58), v59 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v59, v60, 6, v61, v62)))
        {
LABEL_17:
          v63 = OUTLINED_FUNCTION_22_24();
          if (lpta_loadp_setscan_r(v63, v64, v65) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v66 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v66, v67, v68), v69 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v69, v70, v71, v72, v73)))
          {
LABEL_20:
            v74 = OUTLINED_FUNCTION_22_24();
            if (lpta_loadp_setscan_r(v74, v75, v76) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v77 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v77, v78, v79), v80 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v80, v81, 4, v82, v83)))
            {
LABEL_23:
              v84 = OUTLINED_FUNCTION_22_24();
              if (lpta_loadp_setscan_r(v84, v85, v86) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v87 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v87, v88, v89), v90 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v90, v91, v92, v93, v94)))
              {
LABEL_26:
                v95 = OUTLINED_FUNCTION_22_24();
                if (lpta_loadp_setscan_r(v95, v96, v97) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v98 = OUTLINED_FUNCTION_12_33(), lpta_rpta_loadp(v98, v99, v100), v101 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v101, v102, v103, v104, v105)))
                {
LABEL_29:
                  v106 = OUTLINED_FUNCTION_22_24();
                  if (!lpta_loadp_setscan_r(v106, v107, v108))
                  {
                    OUTLINED_FUNCTION_0_38();
                    if (!test_string_s())
                    {
                      v109 = OUTLINED_FUNCTION_12_33();
                      lpta_rpta_loadp(v109, v110, v111);
                      v112 = OUTLINED_FUNCTION_1_37();
                      insert_2pt_s(v112, v113, v114, v115, v116);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_39;
  }

  v117 = OUTLINED_FUNCTION_21_25();
  starttest(v117, v118);
  if (*(v1 + 3094) == 1)
  {
    v119 = OUTLINED_FUNCTION_12_33();
    lpta_rpta_loadp(v119, v120, v121);
    v122 = OUTLINED_FUNCTION_1_37();
    if (!insert_2pt_s(v122, v123, v124, v125, v126))
    {
LABEL_39:
      v162 = v160;
      goto LABEL_40;
    }
  }

  while (2)
  {
    v127 = OUTLINED_FUNCTION_31_19();
    lpta_rpta_loadp(v127, v128, &v161);
    v129 = OUTLINED_FUNCTION_3_36();
    if (!insert_2pt_s(v129, v130, v131, &unk_28064B54C, 0))
    {
      goto LABEL_39;
    }

    v132 = *(v1 + 104);
    if (v132)
    {
      v133 = OUTLINED_FUNCTION_40_14(v132);
    }

    else
    {
      v134 = OUTLINED_FUNCTION_28_21();
      v133 = vback(v134, v135);
    }

    switch(v133)
    {
      case 1:
        goto LABEL_5;
      case 2:
        goto LABEL_8;
      case 3:
        continue;
      case 4:
      case 5:
        goto LABEL_39;
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_14;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_20;
      case 10:
        goto LABEL_23;
      case 11:
        goto LABEL_26;
      case 12:
        goto LABEL_29;
      case 13:
        goto LABEL_40;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_95_7();
}

void convert_fren_thousands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74_11();
  v77 = v6;
  v8 = v7;
  v99 = *MEMORY[0x277D85DE8];
  v86 = 0;
  v87 = 0;
  OUTLINED_FUNCTION_34_16();
  v80 = 0;
  v81 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v79, v9);
  OUTLINED_FUNCTION_37_15();
  bzero(v98, v10);
  v11 = setjmp(v98);
  if (v11 || (v18 = OUTLINED_FUNCTION_64_11(v11, v79, v12, v13, v14, v15, v16, v17, v77, v79[0], v79[1], v79[2], v79[3], v79[4], v79[5], v79[6], v79[7], v79[8], v79[9], v79[10], v79[11], v79[12], v79[13], v79[14], v79[15], v79[16], v79[17], v79[18], v79[19], v79[20], v79[21], v79[22], v80, v81, v82[0], v82[1], v82[2], v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98[0]), v18))
  {
LABEL_3:
    vretproc(v8);
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_43_13(v18, &v86);
  get_parm(v8, &v84, v78, -6);
  v19 = OUTLINED_FUNCTION_46_13();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_55_12();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_76_11();
  push_ptr_init(v23, v24);
  OUTLINED_FUNCTION_32_18();
  if (lpta_loadp_setscan_l(v8, &v84, v98) || advance_tok(v8, v25, v26, v27) || advance_tok(v8, v28, v29, v30) || advance_tok(v8, v31, v32, v33))
  {
    v34 = 0;
  }

  else
  {
    v38 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v38, v39);
    OUTLINED_FUNCTION_0_38();
    v40 = test_string_s();
    v41 = 0;
    v34 = 0;
    if (v40)
    {
      goto LABEL_23;
    }

LABEL_18:
    v34 = v41;
    OUTLINED_FUNCTION_45_13();
    v42 = OUTLINED_FUNCTION_36_15();
    savescptr(v42, v43, v44);
  }

  while (2)
  {
    if (*(v8 + 3094) == 6)
    {
      v35 = OUTLINED_FUNCTION_36_15();
      convert_fren_hundreds(v35);
      goto LABEL_19;
    }

    v36 = *(v8 + 3094);
LABEL_13:
    if (v36 == 5)
    {
      v37 = OUTLINED_FUNCTION_36_15();
      convert_fren_double(v37);
      goto LABEL_19;
    }

LABEL_38:
    if (v36 != 4)
    {
LABEL_19:
      v45 = OUTLINED_FUNCTION_21_25();
      starttest(v45, v46);
      OUTLINED_FUNCTION_21_25();
      bspush_ca_boa();
      v47 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v47, v48, v49))
      {
        OUTLINED_FUNCTION_3_36();
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    v71 = OUTLINED_FUNCTION_21_25();
    starttest_l(v71, v72);
    OUTLINED_FUNCTION_16_31();
    bspush_ca_boa();
    v73 = OUTLINED_FUNCTION_22_24();
    if (!lpta_loadp_setscan_r(v73, v74, v75))
    {
      OUTLINED_FUNCTION_0_38();
LABEL_21:
      if (!test_string_s())
      {
        v34 = 1;
      }
    }

LABEL_23:
    v50 = v34;
LABEL_24:
    v51 = *(v8 + 104);
    if (v51)
    {
      v52 = OUTLINED_FUNCTION_40_14(v51);
      v34 = v53;
    }

    else
    {
      v52 = vback(v8, v50);
      v34 = 0;
    }

    switch(v52)
    {
      case 1:
        continue;
      case 2:
        v41 = v34;
        goto LABEL_18;
      case 3:
        v36 = *(v8 + 3094);
        goto LABEL_13;
      case 4:
      case 5:
      case 7:
      case 8:
        goto LABEL_19;
      case 6:
        v36 = *(v8 + 3094);
        goto LABEL_38;
      case 9:
        bspop_boa(v8);
        v76 = OUTLINED_FUNCTION_36_15();
        convert_fren_single_digit(v76);
        goto LABEL_19;
      case 10:
        goto LABEL_29;
      case 11:
        bspop_boa(v8);
        *(v8 + 168) = 1;
        *(v8 + 144) = v83;
        *(v8 + 128) = 0;
        v54 = OUTLINED_FUNCTION_23_24();
        insert_l(v54, 1);
LABEL_29:
        v55 = OUTLINED_FUNCTION_27_22();
        starttest(v55, v56);
        v57 = OUTLINED_FUNCTION_31_19();
        if (!lpta_loadp_setscan_l(v57, v58, 1))
        {
          goto LABEL_30;
        }

        goto LABEL_34;
      case 12:
        goto LABEL_34;
      case 13:
LABEL_30:
        v59 = OUTLINED_FUNCTION_61_11();
        savescptr(v59, v60, &v80);
        goto LABEL_31;
      case 14:
LABEL_31:
        v61 = OUTLINED_FUNCTION_80_10();
        savescptr(v61, v62, v82);
        v63 = OUTLINED_FUNCTION_52_12();
        v65 = lpta_loadp_setscan_r(v63, v64, 1);
        v50 = v34;
        if (!v65)
        {
          v66 = test_string_s();
          v50 = v34;
          if (!v66)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_24;
      case 15:
LABEL_33:
        v67 = OUTLINED_FUNCTION_36_15();
        savescptr(v67, v68, v69);
LABEL_34:
        v70 = OUTLINED_FUNCTION_42_13();
        convert_fren_hundreds(v70);
        break;
      case 16:
        goto LABEL_35;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_35:
  *(v78 + 8) = v85;
  vretproc(v8);
LABEL_4:
  OUTLINED_FUNCTION_73_11();
}

uint64_t convert_fren_hundreds(uint64_t a1)
{
  OUTLINED_FUNCTION_5_34();
  v168 = *MEMORY[0x277D85DE8];
  v157 = 0;
  v158 = 0;
  OUTLINED_FUNCTION_11_33(v4, v5, v6, v7, v8, v9, v10, v11, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v154, v155, v156);
  OUTLINED_FUNCTION_35_15();
  v12 = setjmp(v3);
  if (!v12 && !OUTLINED_FUNCTION_84_9(v12, v13, v14, v15, v16, v17, v18, v19, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167))
  {
    v21 = OUTLINED_FUNCTION_7_34();
    get_parm(v21, v22, v23, -6);
    v24 = OUTLINED_FUNCTION_29_21();
    OUTLINED_FUNCTION_72_11(v24, v25);
    v26 = OUTLINED_FUNCTION_49_13();
    push_ptr_init(v26, v27);
    v28 = OUTLINED_FUNCTION_48_13();
    push_ptr_init(v28, v29);
    fence_35(v1);
    v30 = OUTLINED_FUNCTION_31_19();
    if (!lpta_loadp_setscan_r(v30, v31, 1))
    {
      OUTLINED_FUNCTION_3_36();
      if (!test_string_s())
      {
        goto LABEL_26;
      }
    }

    v32 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v32, v33, v34) || (OUTLINED_FUNCTION_10_33(), test_string_s()))
    {
      v35 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v35, v36, v37))
      {
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_58_11();
          v71 = OUTLINED_FUNCTION_30_20();
          savescptr(v71, v72, v73);
          v70 = OUTLINED_FUNCTION_27_22();
          goto LABEL_22;
        }
      }

      v38 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v38, v39, v40) && !advance_tok(v1, v41, v42, v43))
      {
        savescptr(v1, 10, &v153);
        v44 = OUTLINED_FUNCTION_31_19();
        if (lpta_loadp_setscan_l(v44, v45, 1) || (OUTLINED_FUNCTION_66_11(), v46 = test_string_s(), v46))
        {
          v54 = OUTLINED_FUNCTION_39_14();
          v55 = convert_fren_single_digit(v54);
          *(v1 + 168) = 1;
          OUTLINED_FUNCTION_25_24(v55, v56, v57, v58, v59, v60, v61, v62, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v153, v154);
          v63 = OUTLINED_FUNCTION_23_24();
        }

        else
        {
          *(v1 + 168) = 1;
          OUTLINED_FUNCTION_25_24(v46, v47, v48, v49, v50, v51, v52, v53, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v153, v154);
          v63 = OUTLINED_FUNCTION_23_24();
        }

        insert_l(v63, 1);
      }

      v64 = OUTLINED_FUNCTION_22_24();
      if (!lpta_loadp_setscan_r(v64, v65, v66))
      {
        OUTLINED_FUNCTION_10_33();
        if (!test_string_s())
        {
          goto LABEL_26;
        }
      }

      v67 = OUTLINED_FUNCTION_22_24();
      if (lpta_loadp_setscan_r(v67, v68, v69) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
      {
        v70 = OUTLINED_FUNCTION_71_11();
LABEL_22:
        convert_fren_double(v70);
LABEL_26:
        OUTLINED_FUNCTION_81_10(v156);
        goto LABEL_4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_13();
    }

    v74 = OUTLINED_FUNCTION_30_20();
    savescptr(v74, v75, v76);
    v77 = OUTLINED_FUNCTION_27_22();
    convert_fren_single_digit(v77);
    goto LABEL_26;
  }

  v2 = 94;
LABEL_4:
  vretproc(v1);
  return v2;
}

uint64_t convert_fren_millions(uint64_t a1)
{
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_11_33(v3, v4, v5, v6, v7, v8, v9, v10, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v153, v155, v156);
  OUTLINED_FUNCTION_35_15();
  if (setjmp(v2) || (OUTLINED_FUNCTION_33_18(), OUTLINED_FUNCTION_88_8(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v17 = OUTLINED_FUNCTION_9_33();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_27_22();
  OUTLINED_FUNCTION_72_11(v20, v21);
  v22 = OUTLINED_FUNCTION_48_13();
  push_ptr_init(v22, v23);
  fence_35(v1);
  OUTLINED_FUNCTION_89_8();
  v24 = OUTLINED_FUNCTION_27_22();
  if (lpta_loadp_setscan_l(v24, v25, v2) || advance_tok(v1, v26, v27, v28) || advance_tok(v1, v29, v30, v31) || advance_tok(v1, v32, v33, v34))
  {
    v35 = 0;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v36, v37);
    OUTLINED_FUNCTION_0_38();
    v38 = test_string_s();
    v40 = 0;
    v41 = 0;
    if (v38)
    {
      goto LABEL_16;
    }

LABEL_10:
    v42 = v40;
    if (advance_tok(v1, v41, v40, v39) || advance_tok(v1, v43, v44, v45) || advance_tok(v1, v46, v47, v48))
    {
LABEL_15:
      v41 = v42;
      goto LABEL_16;
    }

    v49 = OUTLINED_FUNCTION_21_25();
    bspush_ca_scan(v49, v50);
    OUTLINED_FUNCTION_0_38();
    v51 = test_string_s();
    v39 = v42;
    v41 = v42;
    if (v51)
    {
      goto LABEL_16;
    }

LABEL_20:
    v35 = v39;
    OUTLINED_FUNCTION_69_11();
    v57 = OUTLINED_FUNCTION_53_12();
    savescptr(v57, v58, v59);
  }

  while (2)
  {
    if (*(v1 + 3094) == 9)
    {
      v60 = OUTLINED_FUNCTION_24_24();
      convert_fren_hundreds(v60);
    }

    else
    {
      v61 = *(v1 + 3094);
LABEL_24:
      if (v61 == 8)
      {
        v62 = OUTLINED_FUNCTION_24_24();
        convert_fren_double(v62);
      }

      else
      {
        v41 = v35;
LABEL_27:
        v35 = v41;
        v63 = OUTLINED_FUNCTION_24_24();
        convert_fren_single_digit(v63);
      }
    }

    v56 = v35;
LABEL_29:
    v42 = v56;
    v64 = OUTLINED_FUNCTION_16_31();
    starttest(v64, v65);
    OUTLINED_FUNCTION_21_25();
    bspush_ca_boa();
    v66 = OUTLINED_FUNCTION_22_24();
    if (lpta_loadp_setscan_r(v66, v67, v68))
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_3_36();
    if (test_string_s())
    {
      v41 = v42;
    }

    else
    {
      v41 = 1;
    }

LABEL_16:
    v52 = *(v1 + 104);
    if (v52)
    {
      *(v1 + 104) = 0;
      v53 = v52;
      v54 = v41;
    }

    else
    {
      v53 = vback(v1, v41);
      v54 = 0;
    }

    v55 = v53 - 1;
    v40 = v54;
    v39 = v54;
    v35 = v54;
    v41 = v54;
    v56 = v54;
    switch(v55)
    {
      case 0:
        continue;
      case 1:
        goto LABEL_10;
      case 2:
        goto LABEL_20;
      case 3:
        v61 = *(v1 + 3094);
        v35 = v54;
        goto LABEL_24;
      case 4:
      case 5:
      case 7:
        goto LABEL_29;
      case 6:
        goto LABEL_27;
      case 8:
        goto LABEL_38;
      case 9:
        bspop_boa(v1);
        v69 = OUTLINED_FUNCTION_17_31();
        if (lpta_loadp_setscan_l(v69, v70, v71))
        {
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_14_32();
        v72 = test_string_s();
        if (v72)
        {
          goto LABEL_36;
        }

        *(v1 + 168) = v35;
        OUTLINED_FUNCTION_47_13(v72, v73, v74, v75, v76, v77, v78, v79, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151);
        v88 = OUTLINED_FUNCTION_23_24();
        v89 = v35;
        goto LABEL_37;
      case 10:
LABEL_36:
        OUTLINED_FUNCTION_65_11();
        OUTLINED_FUNCTION_47_13(v80, v81, v82, v83, v84, v85, v86, v87, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151);
        v88 = OUTLINED_FUNCTION_23_24();
LABEL_37:
        insert_l(v88, v89);
LABEL_38:
        v90 = OUTLINED_FUNCTION_17_31();
        if (!lpta_loadp_setscan_r(v90, v91, v92))
        {
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            goto LABEL_40;
          }
        }

        goto LABEL_41;
      case 11:
        goto LABEL_41;
      case 12:
LABEL_40:
        OUTLINED_FUNCTION_59_11();
        v93 = OUTLINED_FUNCTION_53_12();
        savescptr(v93, v94, v95);
LABEL_41:
        *(v1 + 3094) = 6;
        v96 = OUTLINED_FUNCTION_39_14();
        convert_fren_thousands(v96, v97, v98, v99, v100, v101);
        break;
      case 13:
        goto LABEL_42;
      default:
        goto LABEL_3;
    }

    break;
  }

LABEL_42:
  OUTLINED_FUNCTION_82_9(v154);
  return 0;
}

uint64_t convert_fren_billions(uint64_t a1)
{
  OUTLINED_FUNCTION_5_34();
  v157 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_33(v3, v4, v5, v6, v7, v8, v9, v10, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v154, v155, v156);
  OUTLINED_FUNCTION_35_15();
  if (setjmp(v2) || (OUTLINED_FUNCTION_33_18(), OUTLINED_FUNCTION_88_8(v11, v12, v13, v14, v15)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v17 = OUTLINED_FUNCTION_9_33();
  get_parm(v17, v18, v19, -6);
  v20 = OUTLINED_FUNCTION_27_22();
  OUTLINED_FUNCTION_72_11(v20, v21);
  v22 = OUTLINED_FUNCTION_48_13();
  push_ptr_init(v22, v23);
  fence_35(v1);
  OUTLINED_FUNCTION_89_8();
  v24 = OUTLINED_FUNCTION_27_22();
  if (!lpta_loadp_setscan_l(v24, v25, v2) && !advance_tok(v1, v26, v27, v28) && !advance_tok(v1, v29, v30, v31) && !advance_tok(v1, v32, v33, v34))
  {
    v37 = OUTLINED_FUNCTION_13_32();
    bspush_ca_scan(v37, v38);
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
LABEL_12:
      if (!advance_tok(v1, v39, v40, v41) && !advance_tok(v1, v42, v43, v44) && !advance_tok(v1, v45, v46, v47))
      {
        v48 = OUTLINED_FUNCTION_21_25();
        bspush_ca_scan(v48, v49);
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
LABEL_16:
          if (!advance_tok(v1, v39, v40, v41) && !advance_tok(v1, v50, v51, v52) && !advance_tok(v1, v53, v54, v55))
          {
            v56 = OUTLINED_FUNCTION_21_25();
            bspush_ca_scan(v56, v57);
            OUTLINED_FUNCTION_0_38();
            if (!test_string_s())
            {
LABEL_24:
              OUTLINED_FUNCTION_50_13();
              v60 = OUTLINED_FUNCTION_53_12();
              savescptr(v60, v61, v62);
              goto LABEL_9;
            }
          }
        }
      }
    }

    v58 = *(v1 + 104);
    if (v58)
    {
      v59 = OUTLINED_FUNCTION_40_14(v58);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_85_9();
    }

    switch(v59)
    {
      case 1:
        break;
      case 2:
        goto LABEL_12;
      case 3:
        goto LABEL_16;
      case 4:
        goto LABEL_24;
      case 5:
        v35 = *(v1 + 3094);
        goto LABEL_26;
      case 6:
      case 7:
      case 9:
        goto LABEL_32;
      case 8:
        goto LABEL_28;
      case 10:
        goto LABEL_31;
      case 11:
        goto LABEL_34;
      case 12:
        goto LABEL_36;
      case 13:
        goto LABEL_39;
      case 14:
        goto LABEL_38;
      case 15:
        goto LABEL_40;
      default:
        goto LABEL_3;
    }
  }

LABEL_9:
  v35 = *(v1 + 3094);
  if (v35 == 12)
  {
    v36 = OUTLINED_FUNCTION_24_24();
    convert_fren_hundreds(v36);
  }

  else
  {
LABEL_26:
    if (v35 == 11)
    {
      v63 = OUTLINED_FUNCTION_24_24();
      convert_fren_double(v63);
    }

    else
    {
LABEL_28:
      v64 = OUTLINED_FUNCTION_22_24();
      if (lpta_loadp_setscan_r(v64, v65, v66) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v67 = OUTLINED_FUNCTION_24_24(), lpta_rpta_loadp(v67, v68, v69), v70 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v70, v71, 2, v72, v73)))
      {
LABEL_31:
        v74 = OUTLINED_FUNCTION_24_24();
        convert_fren_single_digit(v74);
      }
    }
  }

LABEL_32:
  v75 = OUTLINED_FUNCTION_17_31();
  if (lpta_loadp_setscan_l(v75, v76, v77) || (OUTLINED_FUNCTION_14_32(), v78 = test_string_s(), v78))
  {
LABEL_34:
    OUTLINED_FUNCTION_65_11();
    OUTLINED_FUNCTION_47_13(v86, v87, v88, v89, v90, v91, v92, v93, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152);
    v94 = OUTLINED_FUNCTION_23_24();
  }

  else
  {
    *(v1 + 168) = &v153;
    OUTLINED_FUNCTION_47_13(v78, v79, v80, v81, v82, v83, v84, v85, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152);
    v94 = OUTLINED_FUNCTION_23_24();
    v95 = &v153;
  }

  insert_l(v94, v95);
LABEL_36:
  v96 = OUTLINED_FUNCTION_17_31();
  if (!lpta_loadp_setscan_r(v96, v97, v98))
  {
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
LABEL_38:
      v99 = OUTLINED_FUNCTION_53_12();
      savescptr(v99, v100, v101);
    }
  }

LABEL_39:
  *(v1 + 3094) = 9;
  v102 = OUTLINED_FUNCTION_39_14();
  convert_fren_millions(v102);
LABEL_40:
  OUTLINED_FUNCTION_82_9(v154);
  return 0;
}

void convert_fren_teens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v129 = *MEMORY[0x277D85DE8];
  v123 = 0;
  v124 = 0;
  v121 = 0;
  v122 = 0;
  OUTLINED_FUNCTION_38_15();
  bzero(v120, v7);
  OUTLINED_FUNCTION_37_15();
  bzero(v128, v8);
  if (setjmp(v128) || ventproc(v6, v120, v127, v126, v125, v128))
  {
    goto LABEL_3;
  }

  v9 = OUTLINED_FUNCTION_30_20();
  get_parm(v9, v10, v11, -6);
  v12 = OUTLINED_FUNCTION_27_22();
  OUTLINED_FUNCTION_72_11(v12, v13);
  fence_35(v6);
  v14 = OUTLINED_FUNCTION_6_34();
  if (lpta_loadp_setscan_l(v14, v15, v16) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v17 = OUTLINED_FUNCTION_91_8(), lpta_rpta_loadp(v17, v18, v19), v20 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v20, v21, 3, v22, v23)))
  {
    while (2)
    {
      v24 = OUTLINED_FUNCTION_6_34();
      if (lpta_loadp_setscan_l(v24, v25, v26) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v27 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v27, v28, &v121), v29 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v29, v30, 4, &unk_28064B55E, v31)))
      {
LABEL_10:
        v32 = OUTLINED_FUNCTION_6_34();
        if (lpta_loadp_setscan_l(v32, v33, v34) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v35 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v35, v36, &v121), v37 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v37, v38, v39, &unk_28064B598, v40)))
        {
LABEL_13:
          v41 = OUTLINED_FUNCTION_6_34();
          if (lpta_loadp_setscan_l(v41, v42, v43) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v44 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v44, v45, &v121), v46 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v46, v47, 6, &unk_28064B5E7, v48)))
          {
LABEL_16:
            v49 = OUTLINED_FUNCTION_6_34();
            if (lpta_loadp_setscan_l(v49, v50, v51) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v52 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v52, v53, &v121), v54 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v54, v55, 8, &unk_28064B65A, v56)))
            {
LABEL_19:
              v57 = OUTLINED_FUNCTION_6_34();
              if (lpta_loadp_setscan_l(v57, v58, v59) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v60 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v60, v61, &v121), v62 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v62, v63, 6, &unk_28064B5ED, v64)))
              {
LABEL_22:
                v65 = OUTLINED_FUNCTION_6_34();
                if (lpta_loadp_setscan_l(v65, v66, v67) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v68 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v68, v69, &v121), v70 = OUTLINED_FUNCTION_1_37(), insert_2pt_s(v70, v71, v72, &unk_28064B59D, v73)))
                {
LABEL_25:
                  v74 = OUTLINED_FUNCTION_6_34();
                  if (lpta_loadp_setscan_l(v74, v75, v76) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v77 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v77, v78, &v121), v79 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v79, v80, 8, &unk_28064B662, v81)))
                  {
LABEL_28:
                    v82 = OUTLINED_FUNCTION_6_34();
                    if (lpta_loadp_setscan_l(v82, v83, v84) || (OUTLINED_FUNCTION_0_38(), test_string_s()) || (v85 = OUTLINED_FUNCTION_41_13(), lpta_rpta_loadp(v85, v86, &v121), v87 = OUTLINED_FUNCTION_2_36(), insert_2pt_s(v87, v88, 8, &unk_28064B66A, v89)))
                    {
LABEL_31:
                      v90 = OUTLINED_FUNCTION_6_34();
                      if (!lpta_loadp_setscan_l(v90, v91, v92))
                      {
                        OUTLINED_FUNCTION_0_38();
                        if (!test_string_s())
                        {
                          v93 = OUTLINED_FUNCTION_41_13();
                          lpta_rpta_loadp(v93, v94, &v121);
                          v95 = OUTLINED_FUNCTION_2_36();
                          if (!insert_2pt_s(v95, v96, 7, &unk_28064B624, v97))
                          {
                            v98 = OUTLINED_FUNCTION_52_12();
                            starttest(v98, v99);
                            v100 = OUTLINED_FUNCTION_6_34();
                            if (!lpta_loadp_setscan_r(v100, v101, v102))
                            {
                              v103 = OUTLINED_FUNCTION_20_26();
                              if (testFldeq(v103, v104, 4, 1) || advance_tok(v6, v105, v106, v107))
                              {
                                v108 = v6[13];
                                if (v108)
                                {
                                  v109 = OUTLINED_FUNCTION_40_14(v108);
                                }

                                else
                                {
                                  v109 = OUTLINED_FUNCTION_85_9();
                                }

                                switch(v109)
                                {
                                  case 1:
                                    continue;
                                  case 2:
                                  case 12:
                                    goto LABEL_42;
                                  case 3:
                                    goto LABEL_10;
                                  case 4:
                                    goto LABEL_13;
                                  case 5:
                                    goto LABEL_16;
                                  case 6:
                                    goto LABEL_19;
                                  case 7:
                                    goto LABEL_22;
                                  case 8:
                                    goto LABEL_25;
                                  case 9:
                                    goto LABEL_28;
                                  case 10:
                                    goto LABEL_31;
                                  case 11:
                                    goto LABEL_41;
                                  case 13:
                                    goto LABEL_43;
                                  default:
                                    goto LABEL_3;
                                }

                                goto LABEL_3;
                              }
                            }

LABEL_41:
                            OUTLINED_FUNCTION_65_11();
                            v6[18] = v122;
                            v6[16] = 0;
                            v110 = OUTLINED_FUNCTION_23_24();
                            insert_l(v110, v111);
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

      break;
    }
  }

LABEL_42:
  v112 = OUTLINED_FUNCTION_55_12();
  insert_space(v112, v113, v114, v115, v116, v117, v118, v119);
LABEL_43:
  OUTLINED_FUNCTION_81_10(v122);
LABEL_3:
  vretproc(v6);
  OUTLINED_FUNCTION_95_7();
  OUTLINED_FUNCTION_73_11();
}

void convert_fren_roman_num(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74_11();
  OUTLINED_FUNCTION_5_34();
  v103 = *MEMORY[0x277D85DE8];
  v90 = 0;
  v91 = 0;
  OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_38_15();
  bzero(v85, v8);
  OUTLINED_FUNCTION_37_15();
  bzero(v102, v9);
  v10 = setjmp(v102);
  if (v10 || OUTLINED_FUNCTION_64_11(v10, v85, v11, v12, v13, v14, v15, v16, v82, v83, v84, v85[0], v85[1], v85[2], v85[3], v85[4], v85[5], v85[6], v85[7], v85[8], v85[9], v85[10], v85[11], v85[12], v85[13], v85[14], v85[15], v85[16], v85[17], v85[18], v85[19], v85[20], v85[21], v85[22], v86[0], v86[1], v87[0], v87[1], v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102[0]) || (v17 = OUTLINED_FUNCTION_7_34(), get_parm(v17, v18, v19, -6), OUTLINED_FUNCTION_43_13(v20, &v88), v21 = OUTLINED_FUNCTION_46_13(), push_ptr_init(v21, v22), v23 = OUTLINED_FUNCTION_55_12(), push_ptr_init(v23, v24), OUTLINED_FUNCTION_32_18(), v25 = OUTLINED_FUNCTION_31_19(), lpta_loadp_setscan_r(v25, v26, v7)))
  {
LABEL_4:
    vretproc(v6);
  }

  else
  {
    while (2)
    {
      while (1)
      {
        v27 = OUTLINED_FUNCTION_4_35();
        if (testFldeq(v27, v28, v29, 2) || advance_tok(v6, v30, v31, v32))
        {
          break;
        }

        v80 = OUTLINED_FUNCTION_13_32();
        bspush_ca_scan(v80, v81);
      }

LABEL_8:
      v33 = *(v6 + 104);
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_40_14(v33);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_85_9();
      }

      switch(v34)
      {
        case 2:
          v38 = OUTLINED_FUNCTION_13_32();
          savescptr(v38, v39, v87);
          goto LABEL_13;
        case 3:
          continue;
        case 4:
          v48 = OUTLINED_FUNCTION_21_25();
          savescptr(v48, v49, v86);
          *(v6 + 136) = v7;
          v50 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v50, v51, v52))
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        case 5:
LABEL_13:
          while (1)
          {
            v40 = OUTLINED_FUNCTION_4_35();
            if (testFldeq(v40, v41, v42, v7) || advance_tok(v6, v43, v44, v45))
            {
              break;
            }

            v46 = OUTLINED_FUNCTION_61_11();
            bspush_ca_scan(v46, v47);
          }

          goto LABEL_8;
        case 6:
LABEL_18:
          v53 = OUTLINED_FUNCTION_52_12();
          if (!lpta_loadp_setscan_l(v53, v54, v7))
          {
            OUTLINED_FUNCTION_4_35();
            if (!test_string_s())
            {
              goto LABEL_20;
            }
          }

          goto LABEL_21;
        case 7:
          goto LABEL_21;
        case 8:
LABEL_20:
          v55 = OUTLINED_FUNCTION_97_6();
          savescptr(v55, v56, v86);
LABEL_21:
          v57 = OUTLINED_FUNCTION_41_13();
          starttest(v57, v58);
          v59 = OUTLINED_FUNCTION_80_10();
          if (lpta_loadp_setscan_r(v59, v60, v7))
          {
            goto LABEL_4;
          }

          v61 = OUTLINED_FUNCTION_87_8();
          bspush_ca_scan(v61, v62);
          if (!advance_tok(v6, v63, v64, v65))
          {
LABEL_25:
            while (!advance_tok(v6, v35, v36, v37))
            {
              v66 = OUTLINED_FUNCTION_31_19();
              bspush_ca_scan(v66, v67);
            }
          }

          goto LABEL_8;
        case 10:
          v68 = OUTLINED_FUNCTION_96_6();
          bspush_ca_scan(v68, v69);
          OUTLINED_FUNCTION_4_35();
          goto LABEL_28;
        case 11:
        case 13:
          goto LABEL_29;
        case 12:
          goto LABEL_25;
        case 14:
          OUTLINED_FUNCTION_4_35();
LABEL_28:
          if (test_string_s())
          {
            goto LABEL_8;
          }

LABEL_29:
          *(v6 + 136) = v7;
          v70 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v70, v71, v72))
          {
            goto LABEL_8;
          }

          v73 = OUTLINED_FUNCTION_99_6();
          bspush_ca_scan(v73, v74);
          OUTLINED_FUNCTION_28_21();
          if (test_string_s())
          {
            goto LABEL_8;
          }

LABEL_31:
          OUTLINED_FUNCTION_4_35();
          if (test_string_s())
          {
            goto LABEL_8;
          }

          *(v6 + 136) = v7;
          v75 = OUTLINED_FUNCTION_8_34();
          if (test_ptr(v75, v76, v77))
          {
            goto LABEL_8;
          }

          v78 = OUTLINED_FUNCTION_80_10();
          if (convert_roman_nums(v78, v79))
          {
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_36_15();
          convert_digits();
LABEL_36:
          if (*(v6 + 3042) != *(v6 + 3018))
          {
            OUTLINED_FUNCTION_42_13();
            convert_fren_ordinal();
          }

LABEL_38:
          OUTLINED_FUNCTION_82_9(v89);
          break;
        case 15:
          goto LABEL_31;
        case 16:
          goto LABEL_36;
        case 17:
        case 18:
          goto LABEL_38;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_73_11();
}

void assign_fren_gender_to_number(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74_11();
  v7 = v6;
  v76 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = 0;
  OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_38_15();
  bzero(v59, v8);
  OUTLINED_FUNCTION_37_15();
  bzero(v75, v9);
  v10 = setjmp(v75);
  if (!v10)
  {
    v17 = OUTLINED_FUNCTION_64_11(v10, v59, v11, v12, v13, v14, v15, v16, v56, v57, v58, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15], v59[16], v59[17], v59[18], v59[19], v59[20], v59[21], v59[22], v60[0], v60[1], v61[0], v61[1], v62[0], v62[1], v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0]);
    if (!v17)
    {
      OUTLINED_FUNCTION_43_13(v17, &v63);
      v18 = OUTLINED_FUNCTION_70_11();
      push_ptr_init(v18, v19);
      v20 = OUTLINED_FUNCTION_46_13();
      push_ptr_init(v20, v21);
      v22 = OUTLINED_FUNCTION_55_12();
      push_ptr_init(v22, v23);
      fence_35(v7);
      *(v7 + 3206) = 0;
      if (*(v7 + 3026) == *(v7 + 3018))
      {
LABEL_22:
        *(v7 + 3206) = *(v7 + 3214);
      }

      else
      {
        while (2)
        {
          v24 = OUTLINED_FUNCTION_96_6();
          starttest(v24, v25);
          if (!lpta_loadp_setscan_r(v7, &v63, 1))
          {
            bspush_boa(v7);
            do
            {
LABEL_7:
              v26 = OUTLINED_FUNCTION_99_6();
              bspush_ca_scan(v26, v27);
              OUTLINED_FUNCTION_0_38();
            }

            while (!test_string_s());
LABEL_8:
            v28 = *(v7 + 104);
            if (v28)
            {
              v29 = OUTLINED_FUNCTION_40_14(v28);
            }

            else
            {
              v29 = OUTLINED_FUNCTION_85_9();
            }

            switch(v29)
            {
              case 1:
                continue;
              case 3:
                bspush_nboa(v7);
                goto LABEL_13;
              case 4:
                goto LABEL_7;
              case 5:
LABEL_13:
                v30 = OUTLINED_FUNCTION_52_12();
                savescptr(v30, v31, v62);
                goto LABEL_14;
              case 6:
                v39 = OUTLINED_FUNCTION_21_25();
                savescptr(v39, v40, v61);
                v41 = OUTLINED_FUNCTION_41_13();
                if (end_of_word(v41))
                {
                  goto LABEL_8;
                }

                v42 = OUTLINED_FUNCTION_80_10();
                lpta_rpta_loadp(v42, v43, v61);
                v44 = OUTLINED_FUNCTION_20_26();
                if (setd_lookup(v44, v45, 60))
                {
                  goto LABEL_19;
                }

                goto LABEL_22;
              case 7:
LABEL_14:
                while (1)
                {
                  v32 = OUTLINED_FUNCTION_20_26();
                  if (testFldeq(v32, v33, 3, 1) || advance_tok(v7, v34, v35, v36))
                  {
                    break;
                  }

                  v37 = OUTLINED_FUNCTION_97_6();
                  bspush_ca_scan(v37, v38);
                }

                goto LABEL_8;
              case 8:
LABEL_19:
                v46 = OUTLINED_FUNCTION_27_22();
                starttest(v46, v47);
                v48 = OUTLINED_FUNCTION_41_13();
                if (!lpta_loadp_setscan_l(v48, v49, 1))
                {
                  OUTLINED_FUNCTION_0_38();
                  if (!test_string_s())
                  {
                    goto LABEL_21;
                  }
                }

                goto LABEL_3;
              case 10:
LABEL_21:
                v50 = OUTLINED_FUNCTION_61_11();
                savescptr(v50, v51, v60);
                v52 = OUTLINED_FUNCTION_80_10();
                lpta_rpta_loadp(v52, v53, v60);
                v54 = OUTLINED_FUNCTION_20_26();
                if (!setd_lookup(v54, v55, 60))
                {
                  goto LABEL_22;
                }

                goto LABEL_8;
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
  vretproc(v7);
  OUTLINED_FUNCTION_73_11();
}

uint64_t OUTLINED_FUNCTION_8_34()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_11_33(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

double OUTLINED_FUNCTION_18_30@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_19_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = 1;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

void OUTLINED_FUNCTION_26_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_32_18()
{
  fence_35(v0);

  starttest(v0, 1);
}

void OUTLINED_FUNCTION_35_15()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_43_13(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_60_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, __int16 a44, __int16 a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

double OUTLINED_FUNCTION_62_11@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  *&result = savescptr(v33, a1, &a33).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_63_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, a2, &a44, &a40, &a37, &a46);
}

uint64_t OUTLINED_FUNCTION_64_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, int a44, int a45, __int16 a46, __int16 a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53)
{

  return ventproc(v53, a2, &a51, &a47, &a44, &a53);
}

void OUTLINED_FUNCTION_72_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_77_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = 1;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

BOOL OUTLINED_FUNCTION_82_9@<W0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;

  return vretproc(v1);
}

uint64_t OUTLINED_FUNCTION_84_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, int a42, __int16 a43, __int16 a44, int a45, __int16 a46, char a47, char a48)
{

  return ventproc(v48, &a9, &a48, &a44, &a41, v49 - 248);
}

uint64_t OUTLINED_FUNCTION_85_9()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_88_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

void OUTLINED_FUNCTION_89_8()
{

  starttest(v0, 1);
}

uint64_t OUTLINED_FUNCTION_90_8()
{

  return rpta_loadpn(v0, v0 + 3536);
}

void *fence_36(uint64_t a1, int a2, uint64_t a3)
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

uint64_t pre_syll_phonology(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v28);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, SHIDWORD(v76), v78, SWORD2(v78), SHIWORD(v78), v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v82, v83))
  {
    vretproc(a1);
    return 94;
  }

  fence_36(a1, 0, &null_str_13);
  if (liaison_rules(a1))
  {
    if (*(a1 + 4050) == 1)
    {
      goto LABEL_10;
    }

    particle_vow_elision(a1);
  }

  schwa_deletion(a1);
  delete_h_aspire(a1);
  OUTLINED_FUNCTION_35_16();
  if (!v27)
  {
    goto LABEL_11;
  }

  assign_canfren_affricates(a1);
LABEL_10:
  canfren_phon_rules(a1, v20, v21, v22, v23, v24, v25, v26);
LABEL_11:
  vretproc(a1);
  return 0;
}

uint64_t liaison_rules(void *a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v35);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88);
  v11 = setjmp(v1);
  if (v11 || (v19 = OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, SHIDWORD(v83), v85, SWORD2(v85), SHIWORD(v85), v87, SWORD2(v87), SBYTE6(v87), SHIBYTE(v87), v89, v90), v19))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_46_14(v19, v20, &null_str_13);
    v22 = OUTLINED_FUNCTION_9_34();
    starttest(v22, v23);
    OUTLINED_FUNCTION_40_15();
    bspush_ca_boa();
    v24 = OUTLINED_FUNCTION_32_19();
    if (lpta_loadp_setscan_l(v24, v25, 2))
    {
      v26 = 0;
    }

    else
    {
      v27 = OUTLINED_FUNCTION_22_25();
      v26 = !testFldeq(v27, v28, 17, 1) && !advance_tok(a1, v29, v30, v31);
    }

    v32 = a1[13];
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_28_22(v32);
    }

    else
    {
      v33 = vback(a1, v26);
    }

    switch(v33)
    {
      case 1:
        if (liaison_phone_context(a1))
        {
          goto LABEL_15;
        }

        liaison_gcat_context(a1);
        if (v34)
        {
          goto LABEL_15;
        }

        denasalization(a1);
        break;
      case 2:
        bspop_boa(a1);
        goto LABEL_3;
      case 3:
LABEL_15:
        delete_liaison_con(a1);
        break;
      case 4:
      case 5:
        break;
      default:
        goto LABEL_3;
    }

    vretproc(a1);
    return 0;
  }
}

void particle_vow_elision(uint64_t a1)
{
  OUTLINED_FUNCTION_42_14();
  v2 = v1;
  v183 = *MEMORY[0x277D85DE8];
  memset(v178, 0, sizeof(v178));
  memset(v177, 0, 40);
  v176[0] = 0;
  v176[1] = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v175, v3);
  OUTLINED_FUNCTION_23_25();
  bzero(v182, v4);
  if (setjmp(v182) || ventproc(v2, v175, v181, v180, v179, v182))
  {
    goto LABEL_3;
  }

  *&v178[16] = 0;
  *&v178[24] = 0;
  *&v178[30] = 0;
  *v178 = -65534;
  memset(&v177[1], 0, 22);
  LODWORD(v177[0]) = -65534;
  v5 = OUTLINED_FUNCTION_54_13();
  v7 = push_ptr_init(v5, v6);
  v8 = 0;
  OUTLINED_FUNCTION_46_14(v7, v9, &null_str_13);
  v10 = OUTLINED_FUNCTION_9_34();
  starttest(v10, v11);
  v12 = OUTLINED_FUNCTION_2_37();
  if (lpta_loadp_setscan_r(v12, v13, v14))
  {
LABEL_5:
    lpta_loadpn(v2, v2 + 1736);
    OUTLINED_FUNCTION_56_12();
    if (compare_ptas(v2))
    {
      v15 = v8;
    }

    else
    {
      v15 = v8;
      if (!testeq(v2))
      {
        goto LABEL_3;
      }
    }

LABEL_8:
    v16 = OUTLINED_FUNCTION_31_20();
    starttest(v16, v17);
    v18 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v18, v19, 4))
    {
      v49 = OUTLINED_FUNCTION_10_34();
      if (!npush_fld(v49, v50, 6u))
      {
        v51 = OUTLINED_FUNCTION_44_14();
        npush_i(v51);
        if (!if_testle(v2, v52, v53, v54, v55, v56, v57, v58) && !advance_tok(v2, v59, v60, v61))
        {
          goto LABEL_3;
        }
      }

      goto LABEL_29;
    }

    v20 = v15;
LABEL_10:
    v21 = OUTLINED_FUNCTION_9_34();
    starttest(v21, v22);
    v23 = OUTLINED_FUNCTION_6_35();
    if (lpta_loadp_setscan_r(v23, v24, v25))
    {
LABEL_11:
      v26 = OUTLINED_FUNCTION_9_34();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_2_37();
      if (lpta_loadp_setscan_r(v28, v29, v30))
      {
LABEL_12:
        v31 = OUTLINED_FUNCTION_9_34();
        starttest(v31, v32);
        v33 = OUTLINED_FUNCTION_15_32();
        if (!lpta_loadp_setscan_r(v33, v34, 1))
        {
          v164 = OUTLINED_FUNCTION_9_34();
          bspush_ca_scan(v164, v165);
          OUTLINED_FUNCTION_7_35();
          v166 = test_string_s();
          v83 = v20;
          v15 = v20;
          if (!v166)
          {
LABEL_56:
            v15 = v83;
            OUTLINED_FUNCTION_11_34();
            v167 = test_string_s();
            if (!v167)
            {
              *(v2 + 136) = v20;
              if (!OUTLINED_FUNCTION_30_21(v167, v168, v169))
              {
                v170 = OUTLINED_FUNCTION_9_34();
                starttest_l(v170, v171);
                OUTLINED_FUNCTION_9_34();
                bspush_ca_boa();
                le_de_vow_elision(v2);
                if (!v172)
                {
                  v15 = 1;
                }
              }
            }
          }

          goto LABEL_29;
        }

LABEL_13:
        v35 = OUTLINED_FUNCTION_9_34();
        starttest(v35, v36);
        v37 = OUTLINED_FUNCTION_2_37();
        if (lpta_loadp_setscan_r(v37, v38, v39))
        {
          goto LABEL_3;
        }

        v40 = OUTLINED_FUNCTION_3_37();
        if (!testFldeq(v40, v41, v42, 25) && !advance_tok(v2, v43, v44, v45))
        {
          v46 = OUTLINED_FUNCTION_9_34();
          starttest_l(v46, v47);
          OUTLINED_FUNCTION_9_34();
          bspush_ca_boa();
          v48 = ne_vow_elision(v2);
          goto LABEL_69;
        }
      }

      else
      {
        v72 = OUTLINED_FUNCTION_3_37();
        if (!testFldeq(v72, v73, v74, 13) && !advance_tok(v2, v75, v76, v77))
        {
          v173 = OUTLINED_FUNCTION_9_34();
          starttest_l(v173, v174);
          OUTLINED_FUNCTION_9_34();
          bspush_ca_boa();
          v48 = ce_vow_elision(v2);
LABEL_69:
          if (v48)
          {
            v15 = v20;
          }

          else
          {
            v15 = 1;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      v62 = OUTLINED_FUNCTION_10_34();
      if (!testFldeq(v62, v63, 4, 1))
      {
        v15 = v20;
        if (!advance_tok(v2, v64, v65, v66))
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }

    v15 = v20;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_9_34();
  bspush_ca_scan_boa();
  v67 = OUTLINED_FUNCTION_10_34();
  v15 = !testFldeq(v67, v68, 4, 3) && !advance_tok(v2, v69, v70, v71);
LABEL_29:
  v78 = v15;
  LOBYTE(v20) = 18;
  do
  {
LABEL_30:
    v79 = *(v2 + 104);
    if (v79)
    {
      v80 = OUTLINED_FUNCTION_28_22(v79);
      v82 = v81;
    }

    else
    {
      v80 = vback(v2, v78);
      v82 = 0;
    }

    if ((v80 - 1) > 0x15)
    {
      break;
    }

    OUTLINED_FUNCTION_59_12();
    v83 = v82;
    switch(v84)
    {
      case 1:
        bspop_boa(v2);
        goto LABEL_3;
      case 2:
        v15 = v82;
        goto LABEL_8;
      case 3:
        v20 = v82;
        goto LABEL_10;
      case 4:
        v20 = v82;
        goto LABEL_11;
      case 5:
        v20 = v82;
        goto LABEL_12;
      case 6:
      case 8:
      case 12:
      case 15:
        v85 = OUTLINED_FUNCTION_47_14();
        starttest(v85, v86);
        v87 = OUTLINED_FUNCTION_27_23();
        if (lpta_loadp_setscan_l(v87, v88, v89))
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      case 7:
      case 13:
      case 16:
        bspop_boa(v2);
        goto LABEL_3;
      case 9:
        v20 = v82;
        goto LABEL_13;
      case 10:
        OUTLINED_FUNCTION_7_35();
        v163 = test_string_s();
        v83 = v82;
        v78 = v82;
        if (!v163)
        {
          goto LABEL_56;
        }

        goto LABEL_30;
      case 11:
        goto LABEL_56;
      case 14:
        goto LABEL_3;
      case 17:
LABEL_36:
        v90 = OUTLINED_FUNCTION_27_23();
        if (!lpta_loadp_setscan_l(v90, v91, v92) && !advance_tok(v2, v93, v94, v95))
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      case 18:
LABEL_42:
        v106 = OUTLINED_FUNCTION_45_14();
        savescptr(v106, v107, v176);
        v111 = advance_tok(v2, v108, v109, v110);
        v78 = v82;
        if (!v111)
        {
          v112 = savetok(v2, v178);
          v78 = v82;
          if (!v112)
          {
            v115 = advance_tok(v2, v82, v113, v114);
            v78 = v82;
            if (!v115)
            {
              v116 = OUTLINED_FUNCTION_37_16();
              v118 = lpta_loadp_setscan_r(v116, v117, 2);
              v78 = v82;
              if (!v118)
              {
                v121 = advance_tok(v2, v82, v119, v120);
                v78 = v82;
                if (!v121)
                {
                  v122 = savetok(v2, v177);
                  v78 = v82;
                  if (!v122)
                  {
                    *&v178[2] = 4;
                    npush_v(v2, v178, v123, v124, v125, v126, v127, v128);
                    WORD1(v177[0]) = 4;
                    npush_v(v2, v177, v129, v130, v131, v132, v133, v134);
                    v142 = if_testeq(v2, v135, v136, v137, v138, v139, v140, v141);
                    v78 = v82;
                    if (!v142)
                    {
                      *&v178[2] = 5;
                      npush_v(v2, v178, v143, v144, v145, v146, v147, v148);
                      WORD1(v177[0]) = 5;
                      npush_v(v2, v177, v149, v150, v151, v152, v153, v154);
                      v162 = if_testeq(v2, v155, v156, v157, v158, v159, v160, v161);
                      v78 = v82;
                      if (!v162)
                      {
                        goto LABEL_3;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_30;
      case 19:
        goto LABEL_39;
      case 20:
LABEL_38:
        v96 = OUTLINED_FUNCTION_41_14();
        savescptr(v96, v97, v98);
LABEL_39:
        v99 = OUTLINED_FUNCTION_51_13();
        starttest(v99, v100);
        v101 = OUTLINED_FUNCTION_58_12();
        delete_phone_from_left(v101);
        break;
      case 21:
        break;
      default:
        v8 = v82;
        goto LABEL_5;
    }

    v102 = OUTLINED_FUNCTION_58_12();
    lpta_rpta_loadp(v102, v103, v104);
    OUTLINED_FUNCTION_33_19();
    v105 = mark_s();
    v78 = v82;
  }

  while (v105);
LABEL_3:
  OUTLINED_FUNCTION_57_12();
  OUTLINED_FUNCTION_48_14();
}

void schwa_deletion(uint64_t a1)
{
  OUTLINED_FUNCTION_42_14();
  v2 = v1;
  v199 = *MEMORY[0x277D85DE8];
  v194[0] = 0;
  v194[1] = 0;
  v193[0] = 0;
  v193[1] = 0;
  v191 = 0;
  v192 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v168, v3);
  OUTLINED_FUNCTION_23_25();
  bzero(v198, v4);
  if (!setjmp(v198) && !ventproc(v2, &v168, v197, v196, v195, v198))
  {
    push_ptr_init(v2, v194);
    push_ptr_init(v2, v193);
    v5 = OUTLINED_FUNCTION_38_16();
    push_ptr_init(v5, v6);
    fence_36(v2, 0, &null_str_13);
    v7 = OUTLINED_FUNCTION_11_34();
    fence_36(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_31_20();
    starttest(v10, v11);
    v12 = OUTLINED_FUNCTION_27_23();
    if (!lpta_loadp_setscan_l(v12, v13, v14))
    {
      v15 = OUTLINED_FUNCTION_29_22();
      bspush_ca_scan(v15, v16);
      v17 = 0;
      while (2)
      {
        v18 = v17;
        savescptr(v2, 3, v193);
        v19 = OUTLINED_FUNCTION_17_32();
        if (!testFldeq(v19, v20, v21, 47))
        {
          OUTLINED_FUNCTION_52_13();
          bspush_ca_scan_boa();
          v22 = OUTLINED_FUNCTION_26_25();
          if (!testFldeq(v22, v23, 17, 3))
          {
            v18 = 1;
          }
        }

        LODWORD(v24) = v18;
LABEL_10:
        v25 = *(v2 + 104);
        if (v25)
        {
          v26 = OUTLINED_FUNCTION_28_22(v25);
          v29 = v24;
        }

        else
        {
          v26 = vback(v2, v24);
          v29 = 0;
        }

        v17 = v29;
        switch(v26)
        {
          case 2:
            v30 = OUTLINED_FUNCTION_22_25();
            v32 = testFldeq(v30, v31, 17, 1);
            LODWORD(v24) = v29;
            if (!v32)
            {
              v35 = advance_tok(v2, v29, v33, v34);
              v17 = v29;
              LODWORD(v24) = v29;
              if (!v35)
              {
                continue;
              }
            }

            goto LABEL_10;
          case 3:
            continue;
          case 4:
            bspop_boa(v2);
            v73 = advance_tok(v2, v70, v71, v72);
            LODWORD(v24) = v29;
            if (v73)
            {
              goto LABEL_10;
            }

            goto LABEL_28;
          case 5:
LABEL_28:
            savescptr(v2, 5, v194);
            goto LABEL_29;
          case 6:
LABEL_29:
            v74 = OUTLINED_FUNCTION_9_34();
            starttest(v74, v75);
            v76 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_r(v76, v77, v78))
            {
              goto LABEL_30;
            }

            goto LABEL_51;
          case 7:
LABEL_30:
            v79 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_r(v79, v80, v81))
            {
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_4_36();
            if (test_string_s())
            {
              goto LABEL_32;
            }

            goto LABEL_4;
          case 8:
          case 34:
            goto LABEL_77;
          case 9:
LABEL_32:
            v82 = OUTLINED_FUNCTION_9_34();
            starttest(v82, v83);
            v84 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_l(v84, v85, v86))
            {
              goto LABEL_33;
            }

            v122 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v122, v123);
            OUTLINED_FUNCTION_9_34();
            bspush_ca_scan_boa();
            v124 = OUTLINED_FUNCTION_4_36();
            v107 = testFldeq(v124, v125, v126, 1);
            goto LABEL_46;
          case 10:
LABEL_33:
            lpta_loadpn(v2, v193);
            rpta_loadpn(v2, v2 + 1656);
            if (compare_ptas(v2) || testneq(v2))
            {
              goto LABEL_35;
            }

            goto LABEL_4;
          case 11:
            goto LABEL_51;
          case 12:
            bspop_boa(v2);
            v133 = advance_tok(v2, v130, v131, v132);
            LODWORD(v24) = v29;
            if (v133)
            {
              goto LABEL_10;
            }

LABEL_51:
            OUTLINED_FUNCTION_22_25();
            goto LABEL_52;
          case 13:
LABEL_35:
            v87 = OUTLINED_FUNCTION_9_34();
            starttest(v87, v88);
            OUTLINED_FUNCTION_35_16();
            if (!v46)
            {
              goto LABEL_38;
            }

            v89 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_l(v89, v90, v91))
            {
              goto LABEL_38;
            }

            goto LABEL_44;
          case 14:
LABEL_38:
            v92 = OUTLINED_FUNCTION_27_23();
            if (lpta_loadp_setscan_r(v92, v93, v94))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_4_36();
            if (test_string_s())
            {
              goto LABEL_40;
            }

            goto LABEL_77;
          case 15:
LABEL_44:
            OUTLINED_FUNCTION_39_15(15, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
            v120 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v120, v121);
            goto LABEL_58;
          case 16:
LABEL_58:
            OUTLINED_FUNCTION_4_36();
            v138 = test_string_s();
            LODWORD(v24) = v29;
            if (!v138)
            {
              goto LABEL_59;
            }

            goto LABEL_10;
          case 17:
LABEL_59:
            v139 = OUTLINED_FUNCTION_4_36();
            v142 = testFldeq(v139, v140, v141, 2);
            LODWORD(v24) = v29;
            if (v142)
            {
              goto LABEL_10;
            }

            v145 = advance_tok(v2, v29, v143, v144);
            LODWORD(v24) = v29;
            if (v145)
            {
              goto LABEL_10;
            }

            v146 = OUTLINED_FUNCTION_27_23();
            v149 = lpta_loadp_setscan_r(v146, v147, v148);
            LODWORD(v24) = v29;
            if (v149)
            {
              goto LABEL_10;
            }

            v152 = advance_tok(v2, v29, v150, v151);
            LODWORD(v24) = v29;
            if (v152)
            {
              goto LABEL_10;
            }

            v153 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v153, v154);
LABEL_55:
            OUTLINED_FUNCTION_4_36();
            v69 = test_string_s();
            goto LABEL_56;
          case 18:
            goto LABEL_55;
          case 20:
LABEL_40:
            v95 = OUTLINED_FUNCTION_9_34();
            starttest(v95, v96);
            v97 = OUTLINED_FUNCTION_6_35();
            if (lpta_loadp_setscan_r(v97, v98, v99))
            {
              goto LABEL_41;
            }

            v108 = OUTLINED_FUNCTION_10_34();
            v110 = npush_fld(v108, v109, 6u);
            LODWORD(v24) = v29;
            if (v110)
            {
              goto LABEL_10;
            }

            v111 = OUTLINED_FUNCTION_44_14();
            npush_i(v111);
            v119 = if_testgt(v2, v112, v113, v114, v115, v116, v117, v118);
            goto LABEL_67;
          case 21:
LABEL_41:
            v100 = OUTLINED_FUNCTION_9_34();
            starttest(v100, v101);
            OUTLINED_FUNCTION_9_34();
            bspush_ca_boa();
            v107 = is_one_syll(v2, (v2 + 1768), (v2 + 1784), v102, v103, v104, v105, v106);
LABEL_46:
            if (v107)
            {
              LODWORD(v24) = v29;
            }

            else
            {
              LODWORD(v24) = 1;
            }

            goto LABEL_10;
          case 22:
            v41 = OUTLINED_FUNCTION_9_34();
            starttest(v41, v42);
            v43 = OUTLINED_FUNCTION_2_37();
            if (lpta_loadp_setscan_r(v43, v44, v45))
            {
              goto LABEL_19;
            }

            v156 = OUTLINED_FUNCTION_0_39();
            v159 = testFldeq(v156, v157, v158, 2);
            LODWORD(v24) = v29;
            if (v159)
            {
              goto LABEL_10;
            }

            v162 = advance_tok(v2, v29, v160, v161);
            LODWORD(v24) = v29;
            if (v162)
            {
              goto LABEL_10;
            }

            v163 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v163, v164);
            OUTLINED_FUNCTION_10_34();
LABEL_52:
            OUTLINED_FUNCTION_34_17();
            goto LABEL_66;
          case 23:
            bspop_boa(v2);
            goto LABEL_77;
          case 24:
LABEL_19:
            OUTLINED_FUNCTION_35_16();
            if (!v46)
            {
              goto LABEL_4;
            }

            v47 = OUTLINED_FUNCTION_9_34();
            starttest(v47, v48);
            v49 = OUTLINED_FUNCTION_6_35();
            if (!lpta_loadp_setscan_l(v49, v50, v51))
            {
              goto LABEL_22;
            }

            goto LABEL_73;
          case 25:
            v136 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v136, v137);
            v38 = OUTLINED_FUNCTION_0_39();
            v129 = 8;
            goto LABEL_66;
          case 26:
            goto LABEL_68;
          case 27:
            v36 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v36, v37);
            v38 = OUTLINED_FUNCTION_0_39();
            goto LABEL_65;
          case 28:
            v127 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v127, v128);
            v38 = OUTLINED_FUNCTION_3_37();
            v129 = 28;
            goto LABEL_66;
          case 29:
            v134 = OUTLINED_FUNCTION_9_34();
            bspush_ca_scan(v134, v135);
            v38 = OUTLINED_FUNCTION_5_35();
            v129 = 2;
            goto LABEL_66;
          case 30:
            v38 = OUTLINED_FUNCTION_5_35();
LABEL_65:
            v129 = 3;
LABEL_66:
            v119 = testFldeq(v38, v39, v40, v129);
LABEL_67:
            v24 = v29;
            if (v119)
            {
              goto LABEL_10;
            }

LABEL_68:
            v155 = advance_tok(v2, v24, v27, v28);
            LODWORD(v24) = v29;
            if (v155)
            {
              goto LABEL_10;
            }

LABEL_77:
            delete_phone_from_left(v2);
            break;
          case 32:
LABEL_73:
            v165 = OUTLINED_FUNCTION_16_32();
            if (!lpta_loadp_setscan_l(v165, v166, v167))
            {
              OUTLINED_FUNCTION_7_35();
              if (!test_string_s())
              {
                goto LABEL_4;
              }
            }

            goto LABEL_77;
          case 33:
LABEL_22:
            OUTLINED_FUNCTION_39_15(33, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
            v52 = OUTLINED_FUNCTION_3_37();
            v55 = testFldeq(v52, v53, v54, 29);
            LODWORD(v24) = v29;
            if (!v55)
            {
              v58 = advance_tok(v2, v29, v56, v57);
              LODWORD(v24) = v29;
              if (!v58)
              {
                v59 = OUTLINED_FUNCTION_13_33();
                v62 = lpta_loadp_setscan_r(v59, v60, v61);
                LODWORD(v24) = v29;
                if (!v62)
                {
                  v63 = OUTLINED_FUNCTION_3_37();
                  v66 = testFldeq(v63, v64, v65, 29);
                  LODWORD(v24) = v29;
                  if (!v66)
                  {
                    v69 = advance_tok(v2, v29, v67, v68);
LABEL_56:
                    LODWORD(v24) = v29;
                    if (!v69)
                    {
                      goto LABEL_4;
                    }
                  }
                }
              }
            }

            goto LABEL_10;
          default:
            goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_4:
  vretproc(v2);
  OUTLINED_FUNCTION_48_14();
}

void delete_h_aspire(uint64_t a1)
{
  OUTLINED_FUNCTION_42_14();
  v2 = v1;
  v68 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v52, v3);
  OUTLINED_FUNCTION_23_25();
  bzero(v67, v4);
  v5 = setjmp(v67);
  if (!v5 && !OUTLINED_FUNCTION_49_14(v5, v6, v7, v8, v9, v10, v11, v12, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67[0]))
  {
    push_ptr_init(v2, &v55);
    v13 = OUTLINED_FUNCTION_54_13();
    v15 = push_ptr_init(v13, v14);
    OUTLINED_FUNCTION_46_14(v15, v16, &null_str_13);
    v17 = OUTLINED_FUNCTION_9_34();
    starttest(v17, v18);
    v19 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v19, v20, 2))
    {
      OUTLINED_FUNCTION_4_36();
      if (!test_string_s())
      {
        v21 = 0;
        while (2)
        {
          v22 = OUTLINED_FUNCTION_37_16();
          savescptr(v22, v23, &v55);
          v27 = advance_tok(v2, v24, v25, v26);
          v28 = v21;
          if (!v27)
          {
LABEL_8:
            v21 = v28;
            v29 = OUTLINED_FUNCTION_53_13();
            savescptr(v29, v30, &v53);
            v31 = OUTLINED_FUNCTION_41_14();
            starttest(v31, v32);
            v33 = OUTLINED_FUNCTION_15_32();
            if (lpta_loadp_setscan_l(v33, v34, 2))
            {
LABEL_21:
              v50 = OUTLINED_FUNCTION_15_32();
              delete_phone_from_right(v50);
              break;
            }

            OUTLINED_FUNCTION_21_26();
            OUTLINED_FUNCTION_34_17();
            if (!testFldeq(v35, v36, v37, v38))
            {
              OUTLINED_FUNCTION_51_13();
              bspush_ca_scan_boa();
              v39 = OUTLINED_FUNCTION_21_26();
              if (!OUTLINED_FUNCTION_60_12(v39, v40))
              {
                v21 = 1;
              }
            }
          }

          v41 = v21;
LABEL_13:
          v42 = v2[13];
          if (v42)
          {
            v43 = OUTLINED_FUNCTION_28_22(v42);
            v21 = v44;
          }

          else
          {
            v43 = vback(v2, v41);
            v21 = 0;
          }

          switch(v43)
          {
            case 2:
              continue;
            case 3:
              v28 = v21;
              goto LABEL_8;
            case 4:
              goto LABEL_21;
            case 5:
              bspop_boa(v2);
              v48 = advance_tok(v2, v45, v46, v47);
              v41 = v21;
              if (!v48)
              {
                lpta_rpta_loadp(v2, &v55, &v53);
                OUTLINED_FUNCTION_21_26();
                v49 = mark_s();
                v41 = v21;
                if (!v49)
                {
                  goto LABEL_21;
                }
              }

              goto LABEL_13;
            default:
              goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_48_14();
}

uint64_t liaison_phone_context(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v55);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, SHIDWORD(v103), v105, SWORD2(v105), SHIWORD(v105), v107, SWORD2(v107), SBYTE6(v107), SHIBYTE(v107), v109, v110))
  {
    goto LABEL_3;
  }

  fence_36(a1, 0, &null_str_13);
  v21 = OUTLINED_FUNCTION_9_34();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_25_25();
  if (lpta_loadp_setscan_r(v23, v24, 2))
  {
LABEL_10:
    v31 = OUTLINED_FUNCTION_9_34();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_25_25();
    if (lpta_loadp_setscan_r(v33, v34, 2))
    {
      goto LABEL_3;
    }

    v35 = OUTLINED_FUNCTION_4_36();
    if (testFldeq(v35, v36, v37, 3) || advance_tok(a1, v38, v39, v40))
    {
      goto LABEL_13;
    }

    v50 = OUTLINED_FUNCTION_16_32();
    if (!lpta_loadp_setscan_r(v50, v51, v52))
    {
      OUTLINED_FUNCTION_7_35();
      if (!test_string_s())
      {
        lpta_rpta_loadp(a1, a1 + 1768, a1 + 6224);
        v53 = OUTLINED_FUNCTION_20_27();
        if (!setd_lookup(v53, v54, 53))
        {
LABEL_9:
          v19 = 0;
          goto LABEL_4;
        }
      }
    }

LABEL_17:
    v45 = OUTLINED_FUNCTION_9_34();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_16_32();
    if (lpta_loadp_setscan_r(v47, v48, v49))
    {
LABEL_3:
      v19 = 94;
      goto LABEL_4;
    }

    v25 = OUTLINED_FUNCTION_18_31();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_4_36();
  }

  if (!testFldeq(v25, v26, v27, 1) && !advance_tok(a1, v28, v29, v30))
  {
    goto LABEL_9;
  }

LABEL_13:
  v41 = *(a1 + 104);
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_28_22(v41);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_44_14();
    v42 = vback(v43, v44);
  }

  v19 = 0;
  switch(v42)
  {
    case 1:
      goto LABEL_10;
    case 2:
    case 5:
      break;
    case 4:
      goto LABEL_17;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(a1);
  return v19;
}

void liaison_gcat_context(uint64_t a1)
{
  OUTLINED_FUNCTION_42_14();
  v2 = v1;
  v86 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_25();
  bzero(v74, v3);
  OUTLINED_FUNCTION_23_25();
  bzero(v85, v4);
  v5 = setjmp(v85);
  if (v5)
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_55_13(v5, v74, v6, v7, v8, v9, v10, v11, v71, v72, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]);
  if (v12)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_46_14(v12, v13, &null_str_13);
  if (*(v2 + 4050) == 1)
  {
    goto LABEL_3;
  }

  v14 = 0;
  while (2)
  {
    v15 = OUTLINED_FUNCTION_45_14();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v17, v18, 4))
    {
      v49 = OUTLINED_FUNCTION_36_16();
      v52 = 8;
      goto LABEL_31;
    }

LABEL_7:
    starttest(v2, 4);
    v19 = OUTLINED_FUNCTION_32_19();
    if (!lpta_loadp_setscan_r(v19, v20, 1))
    {
      v21 = test_string_s();
      if (!v21)
      {
        *(v2 + 136) = 1;
        if (!OUTLINED_FUNCTION_30_21(v21, v22, v23))
        {
          bspush_ca_boa();
          if (lpta_loadp_setscan_r(v2, v2 + 1784, 1))
          {
            goto LABEL_33;
          }

          v53 = test_string_s();
          if (v53)
          {
            goto LABEL_33;
          }

          *(v2 + 136) = 1;
          v48 = OUTLINED_FUNCTION_30_21(v53, v54, v55);
LABEL_24:
          if (v48)
          {
            v14 = v14;
          }

          else
          {
            v14 = 1;
          }

          goto LABEL_33;
        }
      }
    }

LABEL_10:
    if (!liaison_expressions(v2))
    {
      break;
    }

LABEL_11:
    v24 = OUTLINED_FUNCTION_41_14();
    starttest(v24, v25);
    v26 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v26, v27, 4))
    {
      v40 = OUTLINED_FUNCTION_36_16();
      if (testFldeq(v40, v41, v42, 1) || advance_tok(v2, v43, v44, v45))
      {
        goto LABEL_33;
      }

      v46 = OUTLINED_FUNCTION_9_34();
      starttest_l(v46, v47);
      bspush_ca_boa();
      v48 = verb_liaison(v2);
      goto LABEL_24;
    }

LABEL_12:
    if (!noun_phrase_liaison(v2))
    {
      break;
    }

LABEL_13:
    adv_liaison(v2);
    if (!v28)
    {
      break;
    }

LABEL_14:
    if (!other_liaison(v2))
    {
      break;
    }

LABEL_15:
    if (!tout_liaison(v2))
    {
      break;
    }

LABEL_16:
    v29 = OUTLINED_FUNCTION_53_13();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_15_32();
    if (!lpta_loadp_setscan_r(v31, v32, 4))
    {
      v33 = OUTLINED_FUNCTION_36_16();
      if (!testFldeq(v33, v34, v35, 9) && !testFldeq(v2, 4u, 2, 8) && !advance_tok(v2, v36, v37, v38))
      {
        bspush_ca_scan(v2, 15);
        v39 = v14;
LABEL_40:
        v14 = v39;
        v49 = v2;
        v50 = 4;
        v51 = 3;
        v52 = 2;
LABEL_31:
        if (!testFldeq(v49, v50, v51, v52) && !advance_tok(v2, v56, v57, v58))
        {
          break;
        }
      }

LABEL_33:
      v59 = v14;
LABEL_34:
      v14 = v59;
      v60 = *(v2 + 104);
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_28_22(v60);
      }

      else
      {
        v62 = OUTLINED_FUNCTION_33_19();
        v61 = vback(v62, v63);
        v14 = 0;
      }

      v39 = v14;
      switch(v61)
      {
        case 1:
          continue;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_10;
        case 5:
          bspop_boa(v2);
          break;
        case 6:
          goto LABEL_11;
        case 7:
          goto LABEL_12;
        case 9:
          bspop_boa(v2);
          break;
        case 10:
          goto LABEL_13;
        case 11:
          goto LABEL_14;
        case 12:
          goto LABEL_15;
        case 13:
          goto LABEL_16;
        case 15:
          v64 = OUTLINED_FUNCTION_36_16();
          v67 = testFldeq(v64, v65, v66, 3);
          v59 = v14;
          if (!v67)
          {
            v70 = advance_tok(v2, v68, v14, v69);
            v39 = v14;
            v59 = v14;
            if (!v70)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_34;
        case 16:
          goto LABEL_40;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_48_14();
}

uint64_t denasalization(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v81 = 0;
  v82 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v58, v3);
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_12_34(v12, v13, v14, v15, v16, v17, v18, v19, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, SHIDWORD(v83), v84, SWORD2(v84), SHIWORD(v84), v85, SWORD2(v85), SBYTE6(v85), SHIBYTE(v85), v86, v87) || (v20 = OUTLINED_FUNCTION_38_16(), push_ptr_init(v20, v21), fence_36(a1, 0, &null_str_13), v22 = OUTLINED_FUNCTION_9_34(), starttest(v22, v23), v24 = OUTLINED_FUNCTION_27_23(), lpta_loadp_setscan_l(v24, v25, v26)) || (OUTLINED_FUNCTION_4_36(), test_string_s()))
  {
LABEL_5:
    v27 = 94;
  }

  else
  {
    while (2)
    {
      v29 = OUTLINED_FUNCTION_31_20();
      savescptr(v29, v30, &v81);
      OUTLINED_FUNCTION_26_25();
      OUTLINED_FUNCTION_34_17();
      if (testFldeq(v31, v32, v33, v34) || (v35 = OUTLINED_FUNCTION_26_25(), testFldeq(v35, v36, 17, 2)) || advance_tok(a1, v37, v38, v39))
      {
        v40 = *(a1 + 104);
        if (v40)
        {
          v41 = OUTLINED_FUNCTION_28_22(v40);
        }

        else
        {
          v42 = OUTLINED_FUNCTION_44_14();
          v41 = vback(v42, v43);
        }

        switch(v41)
        {
          case 2:
            continue;
          case 3:
            goto LABEL_14;
          case 4:
            goto LABEL_15;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_20;
          default:
            goto LABEL_5;
        }
      }

      break;
    }

LABEL_14:
    savescptr(a1, 3, a1 + 1272);
LABEL_15:
    v44 = OUTLINED_FUNCTION_27_23();
    if (lpta_loadp_setscan_r(v44, v45, v46) || (OUTLINED_FUNCTION_4_36(), test_string_s()) || (lpta_rpta_loadp(a1, a1 + 1272, &v81), v27 = 0, v47 = OUTLINED_FUNCTION_4_36(), insert_2pt_s(v47, v48, v49, v50, 0)))
    {
LABEL_18:
      v51 = OUTLINED_FUNCTION_27_23();
      if (lpta_loadp_setscan_r(v51, v52, v53) || (OUTLINED_FUNCTION_4_36(), test_string_s()))
      {
LABEL_20:
        v27 = 0;
      }

      else
      {
        lpta_rpta_loadp(a1, a1 + 1272, &v81);
        v27 = 0;
        v54 = OUTLINED_FUNCTION_4_36();
        insert_2pt_s(v54, v55, v56, v57, 0);
      }
    }
  }

  vretproc(a1);
  return v27;
}

uint64_t delete_liaison_con(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v34, v3);
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_12_34(v12, v13, v14, v15, v16, v17, v18, v19, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, SHIDWORD(v59), v60, SWORD2(v60), SHIWORD(v60), v61, SWORD2(v61), SBYTE6(v61), SHIBYTE(v61), v62, v63))
  {
    v20 = 94;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_38_16();
    push_ptr_init(v22, v23);
    fence_36(a1, 0, &null_str_13);
    v24 = OUTLINED_FUNCTION_27_23();
    if (!lpta_loadp_setscan_l(v24, v25, v26) && !advance_tok(a1, v27, v28, v29))
    {
      OUTLINED_FUNCTION_39_15(2, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
    }

    v30 = OUTLINED_FUNCTION_38_16();
    if (!lpta_loadp_setscan_l(v30, v31, 3))
    {
      v32 = OUTLINED_FUNCTION_58_12();
      delete_morph_from_left(v32);
      *(a1 + 1664) = *(a1 + 1344);
    }

    v33 = OUTLINED_FUNCTION_58_12();
    delete_phone_from_left(v33);
    v20 = 0;
  }

  vretproc(a1);
  return v20;
}

uint64_t liaison_expressions(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v31);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
  v11 = setjmp(v1);
  if (!v11)
  {
    v19 = OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, SHIDWORD(v79), v81, SWORD2(v81), SHIWORD(v81), v83, SWORD2(v83), SBYTE6(v83), SHIBYTE(v83), v85, v86);
    if (!v19)
    {
      v21 = 0;
      OUTLINED_FUNCTION_46_14(v19, v20, &null_str_13);
      v23 = OUTLINED_FUNCTION_20_27();
      fence_36(v23, v24, v25);
      lpta_rpta_loadp(a1, a1 + 1320, a1 + 1784);
      v26 = OUTLINED_FUNCTION_18_31();
      if (!setd_lookup(v26, v27, v28))
      {
        goto LABEL_4;
      }

      lpta_loadpn(a1, a1 + 1848);
      OUTLINED_FUNCTION_56_12();
      if (!compare_ptas(a1) && !testneq(a1))
      {
        lpta_rpta_loadp(a1, a1 + 1320, a1 + 1848);
        v29 = OUTLINED_FUNCTION_20_27();
        if (!setd_lookup(v29, v30, 5))
        {
          v21 = 0;
          goto LABEL_4;
        }
      }
    }
  }

  v21 = 94;
LABEL_4:
  vretproc(a1);
  return v21;
}

uint64_t verb_liaison(uint64_t a1)
{
  v103 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_25();
  bzero(&v75, v3);
  OUTLINED_FUNCTION_8_35(v4, v5, v6, v7, v8, v9, v10, v11, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_1_38(v12, v13, v14, v15, v16, v17, v18, v19, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, SHIDWORD(v98), v99, SWORD2(v99), SHIWORD(v99), v100, SWORD2(v100), SBYTE6(v100), SHIBYTE(v100), v101, v102))
  {
    goto LABEL_3;
  }

  fence_36(a1, 0, &null_str_13);
  v22 = OUTLINED_FUNCTION_9_34();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_2_37();
  if (lpta_loadp_setscan_r(v24, v25, v26))
  {
LABEL_6:
    v27 = OUTLINED_FUNCTION_9_34();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_2_37();
    if (lpta_loadp_setscan_r(v29, v30, v31))
    {
LABEL_3:
      v20 = 94;
      goto LABEL_4;
    }

    v32 = OUTLINED_FUNCTION_3_37();
    if (testFldeq(v32, v33, v34, 3))
    {
      goto LABEL_17;
    }

    if (advance_tok(a1, v35, v36, v37))
    {
      goto LABEL_17;
    }

    v38 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v38, v39, v40, 3) || advance_tok(a1, v41, v42, v43))
    {
      goto LABEL_17;
    }

    v44 = OUTLINED_FUNCTION_5_35();
  }

  else
  {
    v47 = OUTLINED_FUNCTION_29_22();
    bspush_ca_scan(v47, v48);
    v49 = OUTLINED_FUNCTION_10_34();
    if (testFldeq(v49, v50, v1, 1))
    {
      goto LABEL_17;
    }

LABEL_13:
    if (advance_tok(a1, v51, v52, v53))
    {
      goto LABEL_17;
    }

    v54 = OUTLINED_FUNCTION_31_20();
    bspush_ca_scan(v54, v55);
    v44 = OUTLINED_FUNCTION_26_25();
    v46 = 1;
  }

  if (testFldeq(v44, v45, v46, 1))
  {
    goto LABEL_17;
  }

LABEL_16:
  while (advance_tok(a1, v51, v52, v53))
  {
    do
    {
LABEL_17:
      while (2)
      {
        v56 = *(a1 + 104);
        if (v56)
        {
          v57 = OUTLINED_FUNCTION_28_22(v56);
        }

        else
        {
          v58 = OUTLINED_FUNCTION_44_14();
          v57 = vback(v58, v59);
        }

        switch(v57)
        {
          case 1:
            goto LABEL_6;
          case 2:
            v60 = OUTLINED_FUNCTION_3_37();
            if (!testFldeq(v60, v61, v62, 2))
            {
              goto LABEL_13;
            }

            continue;
          case 3:
            goto LABEL_13;
          case 4:
            v63 = OUTLINED_FUNCTION_47_14();
            bspush_ca_scan(v63, v64);
            v65 = OUTLINED_FUNCTION_0_39();
            v68 = 8;
            break;
          case 5:
            goto LABEL_16;
          case 6:
            v71 = OUTLINED_FUNCTION_37_16();
            bspush_ca_scan(v71, v72);
            v65 = OUTLINED_FUNCTION_0_39();
            v68 = 2;
            break;
          case 7:
            v69 = OUTLINED_FUNCTION_40_15();
            bspush_ca_scan(v69, v70);
            v65 = OUTLINED_FUNCTION_0_39();
            v68 = 3;
            break;
          case 8:
            v73 = OUTLINED_FUNCTION_53_13();
            bspush_ca_scan(v73, v74);
            v65 = OUTLINED_FUNCTION_5_35();
            v68 = 10;
            break;
          case 9:
            v65 = OUTLINED_FUNCTION_5_35();
            v68 = 9;
            break;
          case 10:
            goto LABEL_30;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    while (testFldeq(v65, v66, v67, v68));
  }

LABEL_30:
  v20 = 0;
LABEL_4:
  vretproc(a1);
  return v20;
}

uint64_t noun_phrase_liaison(uint64_t a1)
{
  v215 = *MEMORY[0x277D85DE8];
  v208 = 0;
  v209 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v185, v3);
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_12_34(v12, v13, v14, v15, v16, v17, v18, v19, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, SHIDWORD(v210), v211, SWORD2(v211), SHIWORD(v211), v212, SWORD2(v212), SBYTE6(v212), SHIBYTE(v212), v213, v214))
  {
    goto LABEL_3;
  }

  v21 = OUTLINED_FUNCTION_38_16();
  v23 = push_ptr_init(v21, v22);
  v1 = 0;
  OUTLINED_FUNCTION_46_14(v23, v24, &null_str_13);
  v25 = OUTLINED_FUNCTION_21_26();
  fence_36(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_40_15();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_2_37();
  if (!lpta_loadp_setscan_r(v30, v31, v32))
  {
    OUTLINED_FUNCTION_9_34();
    bspush_ca_scan_boa();
    v92 = OUTLINED_FUNCTION_31_20();
    bspush_ca_scan(v92, v93);
    v94 = OUTLINED_FUNCTION_10_34();
    v96 = testFldeq(v94, v95, 3, 10);
    LODWORD(v1) = 0;
    v97 = 0;
    if (v96)
    {
      goto LABEL_53;
    }

LABEL_25:
    LODWORD(v1) = v97;
    goto LABEL_50;
  }

LABEL_5:
  v33 = OUTLINED_FUNCTION_9_34();
  starttest(v33, v34);
  v35 = OUTLINED_FUNCTION_6_35();
  if (!lpta_loadp_setscan_r(v35, v36, v37))
  {
    v75 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v75, v76, v77, 2) || advance_tok(a1, v78, v79, v80))
    {
      goto LABEL_53;
    }

    v81 = OUTLINED_FUNCTION_9_34();
    starttest(v81, v82);
    v83 = OUTLINED_FUNCTION_2_37();
    if (!lpta_loadp_setscan_r(v83, v84, v85))
    {
      v86 = OUTLINED_FUNCTION_5_35();
      if (!testFldeq(v86, v87, v88, 10) && !advance_tok(a1, v89, v90, v91))
      {
        goto LABEL_3;
      }

      goto LABEL_53;
    }

LABEL_32:
    v109 = OUTLINED_FUNCTION_9_34();
    starttest(v109, v110);
    v111 = OUTLINED_FUNCTION_2_37();
    if (!lpta_loadp_setscan_r(v111, v112, v113))
    {
      v114 = OUTLINED_FUNCTION_5_35();
      if (!testFldeq(v114, v115, v116, 13) && !advance_tok(a1, v117, v118, v119))
      {
        v120 = OUTLINED_FUNCTION_5_35();
        if (!testFldeq(v120, v121, v122, 13) && !advance_tok(a1, v123, v124, v125))
        {
          goto LABEL_3;
        }
      }

      goto LABEL_53;
    }

LABEL_39:
    v126 = OUTLINED_FUNCTION_9_34();
    starttest(v126, v127);
    v128 = OUTLINED_FUNCTION_2_37();
    if (!lpta_loadp_setscan_r(v128, v129, v130))
    {
      v131 = OUTLINED_FUNCTION_0_39();
      if (testFldeq(v131, v132, v133, 2))
      {
        goto LABEL_53;
      }

      v134 = OUTLINED_FUNCTION_10_34();
      if (testFldeq(v134, v135, 5, 2) || advance_tok(a1, v136, v137, v138))
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_9_34();
      bspush_ca_scan_boa();
      v139 = OUTLINED_FUNCTION_10_34();
      v141 = testFldeq(v139, v140, 5, 1);
LABEL_51:
      if (!v141)
      {
        LODWORD(v1) = 1;
      }

      goto LABEL_53;
    }

LABEL_45:
    v142 = OUTLINED_FUNCTION_9_34();
    starttest(v142, v143);
    v144 = OUTLINED_FUNCTION_2_37();
    if (lpta_loadp_setscan_l(v144, v145, v146))
    {
      goto LABEL_3;
    }

LABEL_48:
    OUTLINED_FUNCTION_39_15(13, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
    OUTLINED_FUNCTION_9_34();
    bspush_ca_scan_boa();
    v105 = OUTLINED_FUNCTION_0_39();
    v108 = 2;
    goto LABEL_49;
  }

  v38 = v1;
LABEL_7:
  v39 = OUTLINED_FUNCTION_9_34();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_2_37();
  if (lpta_loadp_setscan_r(v41, v42, v43))
  {
    goto LABEL_3;
  }

  v44 = OUTLINED_FUNCTION_9_34();
  bspush_ca_scan(v44, v45);
  v46 = OUTLINED_FUNCTION_0_39();
  v49 = testFldeq(v46, v47, v48, 4);
  v1 = v38;
  v52 = v38;
  if (!v49)
  {
LABEL_9:
    v53 = v52;
    if (advance_tok(a1, v50, v52, v51))
    {
      goto LABEL_17;
    }

    v54 = OUTLINED_FUNCTION_9_34();
    starttest(v54, v55);
    v56 = OUTLINED_FUNCTION_6_35();
    if (lpta_loadp_setscan_r(v56, v57, v58))
    {
      goto LABEL_3;
    }

    v59 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v59, v60);
    v61 = OUTLINED_FUNCTION_0_39();
    v64 = testFldeq(v61, v62, v63, 4);
    v1 = v53;
    v51 = v53;
    if (v64)
    {
      goto LABEL_53;
    }

LABEL_12:
    LODWORD(v53) = v51;
    if (advance_tok(a1, v50, v52, v51))
    {
      goto LABEL_17;
    }

    v65 = OUTLINED_FUNCTION_15_32();
    if (lpta_loadp_setscan_l(v65, v66, 1))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_11_34();
    v67 = test_string_s();
    if (v67)
    {
      goto LABEL_3;
    }

    *(a1 + 136) = v1;
    if (OUTLINED_FUNCTION_30_21(v67, v68, v69))
    {
      goto LABEL_3;
    }

    v70 = OUTLINED_FUNCTION_9_34();
    starttest(v70, v71);
    OUTLINED_FUNCTION_9_34();
    bspush_ca_boa();
    v72 = OUTLINED_FUNCTION_2_37();
    if (lpta_loadp_setscan_r(v72, v73, v74))
    {
LABEL_17:
      LODWORD(v1) = v53;
      goto LABEL_53;
    }

    v98 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v98, v99);
    v100 = OUTLINED_FUNCTION_3_37();
    v103 = testFldeq(v100, v101, v102, 11);
    LODWORD(v1) = v53;
    v104 = v53;
    if (v103)
    {
      goto LABEL_53;
    }

LABEL_27:
    LODWORD(v1) = v104;
    if (advance_tok(a1, v50, v52, v51))
    {
      goto LABEL_53;
    }

    v105 = OUTLINED_FUNCTION_0_39();
    v108 = 4;
LABEL_49:
    if (testFldeq(v105, v106, v107, v108))
    {
      goto LABEL_53;
    }

LABEL_50:
    v141 = advance_tok(a1, v50, v52, v51);
    goto LABEL_51;
  }

LABEL_53:
  LODWORD(v50) = v1;
  v1 = 5;
  while (2)
  {
    v147 = *(a1 + 104);
    if (v147)
    {
      v148 = OUTLINED_FUNCTION_28_22(v147);
      v150 = v149;
    }

    else
    {
      v148 = vback(a1, v50);
      v150 = 0;
    }

    if ((v148 - 1) <= 0x19)
    {
      OUTLINED_FUNCTION_59_12();
      v97 = v150;
      v52 = v150;
      v51 = v150;
      v104 = v150;
      switch(v151)
      {
        case 1:
        case 22:
          bspop_boa(a1);
          break;
        case 2:
          v152 = OUTLINED_FUNCTION_47_14();
          bspush_ca_scan(v152, v153);
          v154 = OUTLINED_FUNCTION_0_39();
          v157 = 4;
          goto LABEL_68;
        case 3:
          goto LABEL_25;
        case 4:
          v154 = OUTLINED_FUNCTION_0_39();
          v157 = 2;
LABEL_68:
          v174 = testFldeq(v154, v155, v156, v157);
          v97 = v150;
          v50 = v150;
          if (!v174)
          {
            goto LABEL_25;
          }

          continue;
        case 5:
          v38 = v150;
          goto LABEL_7;
        case 6:
          v1 = v150;
          goto LABEL_32;
        case 7:
        case 11:
        case 14:
        case 15:
        case 18:
        case 21:
        case 25:
          goto LABEL_3;
        case 8:
          v1 = v150;
          goto LABEL_39;
        case 9:
          v1 = v150;
          goto LABEL_45;
        case 10:
          bspop_boa(a1);
          goto LABEL_71;
        case 12:
          LODWORD(v1) = v150;
          goto LABEL_48;
        case 13:
          bspop_boa(a1);
          v178 = OUTLINED_FUNCTION_45_14();
          v180 = lpta_loadp_setscan_r(v178, v179, 4);
          LODWORD(v50) = v150;
          if (v180)
          {
            continue;
          }

          v181 = OUTLINED_FUNCTION_3_37();
          v184 = testFldeq(v181, v182, v183, 32);
          v50 = v150;
          if (v184)
          {
            continue;
          }

LABEL_71:
          v177 = advance_tok(a1, v50, v175, v176);
          LODWORD(v50) = v150;
          if (!v177)
          {
            goto LABEL_3;
          }

          continue;
        case 16:
          v162 = OUTLINED_FUNCTION_3_37();
          v165 = testFldeq(v162, v163, v164, 6);
          LODWORD(v50) = v150;
          if (!v165)
          {
            v166 = OUTLINED_FUNCTION_5_35();
            v169 = testFldeq(v166, v167, v168, 10);
            v52 = v150;
            v50 = v150;
            if (!v169)
            {
              goto LABEL_9;
            }
          }

          continue;
        case 17:
          goto LABEL_9;
        case 19:
          v170 = OUTLINED_FUNCTION_0_39();
          v173 = testFldeq(v170, v171, v172, 1);
          v51 = v150;
          v50 = v150;
          if (!v173)
          {
            goto LABEL_12;
          }

          continue;
        case 20:
          goto LABEL_12;
        case 23:
          v158 = OUTLINED_FUNCTION_3_37();
          v161 = testFldeq(v158, v159, v160, 36);
          v104 = v150;
          v50 = v150;
          if (!v161)
          {
            goto LABEL_27;
          }

          continue;
        case 24:
          goto LABEL_27;
        default:
          v1 = v150;
          goto LABEL_5;
      }
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_57_12();
  return v1;
}

void adv_liaison(uint64_t a1)
{
  OUTLINED_FUNCTION_42_14();
  v2 = v1;
  v107 = *MEMORY[0x277D85DE8];
  v102[0] = 0;
  v102[1] = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v101, v3);
  OUTLINED_FUNCTION_23_25();
  bzero(v106, v4);
  if (!setjmp(v106) && !ventproc(v2, v101, v105, v104, v103, v106))
  {
    v5 = push_ptr_init(v2, v102);
    OUTLINED_FUNCTION_46_14(v5, v6, &null_str_13);
    v7 = OUTLINED_FUNCTION_31_20();
    starttest(v7, v8);
    OUTLINED_FUNCTION_9_34();
    bspush_ca_boa();
    v9 = OUTLINED_FUNCTION_2_37();
    if (lpta_loadp_setscan_r(v9, v10, v11))
    {
      v12 = 0;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_0_39();
      if (testFldeq(v13, v14, v15, 3))
      {
        v12 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_9_34();
        bspush_ca_scan_boa();
        v16 = OUTLINED_FUNCTION_3_37();
        v12 = !testFldeq(v16, v17, v18, 6);
      }
    }

    LODWORD(v19) = v12;
    while (2)
    {
      v20 = *(v2 + 104);
      if (v20)
      {
        v21 = OUTLINED_FUNCTION_28_22(v20);
        v24 = v19;
      }

      else
      {
        v21 = vback(v2, v19);
        v24 = 0;
      }

      v25 = v21;
      v26 = 94;
      switch(v25)
      {
        case 1:
          v27 = OUTLINED_FUNCTION_40_15();
          starttest(v27, v28);
          v29 = OUTLINED_FUNCTION_25_25();
          if (lpta_loadp_setscan_r(v29, v30, 4))
          {
            goto LABEL_15;
          }

          v91 = OUTLINED_FUNCTION_19_27();
          v94 = testFldeq(v91, v92, v93, 8);
          LODWORD(v19) = v24;
          if (v94)
          {
            continue;
          }

          v97 = advance_tok(v2, v24, v95, v96);
          LODWORD(v19) = v24;
          if (v97)
          {
            continue;
          }

          starttest_l(v2, 5);
          bspush_ca_boa();
          v98 = OUTLINED_FUNCTION_15_32();
          v100 = lpta_loadp_setscan_r(v98, v99, 1);
          LODWORD(v19) = v24;
          if (v100)
          {
            continue;
          }

          bspush_ca_scan(v2, 7);
          OUTLINED_FUNCTION_26_25();
          goto LABEL_39;
        case 2:
        case 6:
          bspop_boa(v2);
          goto LABEL_3;
        case 3:
          bspop_boa(v2);
          v67 = advance_tok(v2, v64, v65, v66);
          goto LABEL_41;
        case 4:
LABEL_15:
          starttest(v2, 11);
          v31 = OUTLINED_FUNCTION_25_25();
          if (lpta_loadp_setscan_r(v31, v32, 4))
          {
            goto LABEL_16;
          }

          bspush_ca_scan(v2, 12);
          v68 = OUTLINED_FUNCTION_19_27();
          v71 = 2;
          goto LABEL_46;
        case 7:
          v78 = OUTLINED_FUNCTION_9_34();
          bspush_ca_scan(v78, v79);
          OUTLINED_FUNCTION_17_32();
          goto LABEL_39;
        case 8:
          goto LABEL_40;
        case 9:
          OUTLINED_FUNCTION_17_32();
LABEL_39:
          v26 = test_string_s();
          v19 = v24;
          if (!v26)
          {
LABEL_40:
            *(v2 + 136) = 1;
            v67 = OUTLINED_FUNCTION_30_21(v26, v19, v22);
LABEL_41:
            if (v67)
            {
              LODWORD(v19) = v24;
            }

            else
            {
              LODWORD(v19) = 1;
            }
          }

          continue;
        case 11:
LABEL_16:
          v33 = OUTLINED_FUNCTION_53_13();
          starttest(v33, v34);
          v35 = OUTLINED_FUNCTION_32_19();
          if (lpta_loadp_setscan_r(v35, v36, 4))
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        case 12:
          bspush_ca_scan(v2, 14);
          v68 = OUTLINED_FUNCTION_19_27();
          v71 = 3;
          goto LABEL_46;
        case 13:
          goto LABEL_47;
        case 14:
          bspush_ca_scan(v2, 15);
          v68 = OUTLINED_FUNCTION_19_27();
          v71 = 1;
          goto LABEL_46;
        case 15:
          v68 = OUTLINED_FUNCTION_21_26();
          v70 = 3;
          v71 = 10;
LABEL_46:
          v80 = testFldeq(v68, v69, v70, v71);
          v19 = v24;
          if (v80)
          {
            continue;
          }

LABEL_47:
          v81 = advance_tok(v2, v19, v22, v23);
          LODWORD(v19) = v24;
          if (v81)
          {
            continue;
          }

          starttest(v2, 16);
          v82 = OUTLINED_FUNCTION_15_32();
          if (lpta_loadp_setscan_r(v82, v83, 1))
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_17_32();
          if (test_string_s())
          {
            goto LABEL_3;
          }

LABEL_50:
          v84 = chstream(v2, 17, 4u);
          LODWORD(v19) = v24;
          if (!v84)
          {
            v85 = OUTLINED_FUNCTION_21_26();
            v87 = testFldeq(v85, v86, 3, 10);
            LODWORD(v19) = v24;
            if (!v87)
            {
              v90 = advance_tok(v2, v24, v88, v89);
              LODWORD(v19) = v24;
              if (!v90)
              {
                goto LABEL_3;
              }
            }
          }

          continue;
        case 17:
          goto LABEL_50;
        case 18:
LABEL_17:
          v37 = OUTLINED_FUNCTION_37_16();
          starttest(v37, v38);
          v39 = OUTLINED_FUNCTION_15_32();
          if (!lpta_loadp_setscan_l(v39, v40, 1))
          {
            goto LABEL_18;
          }

          goto LABEL_3;
        case 19:
LABEL_22:
          savescptr(v2, 19, v102);
          v49 = OUTLINED_FUNCTION_21_26();
          v51 = testFldeq(v49, v50, 3, 9);
          LODWORD(v19) = v24;
          if (v51)
          {
            continue;
          }

          v54 = advance_tok(v2, v24, v52, v53);
          LODWORD(v19) = v24;
          if (v54)
          {
            continue;
          }

          v55 = OUTLINED_FUNCTION_51_13();
          v57 = lpta_loadp_setscan_l(v55, v56, 4);
          LODWORD(v19) = v24;
          if (v57)
          {
            continue;
          }

          v60 = advance_tok(v2, v24, v58, v59);
          LODWORD(v19) = v24;
          if (v60)
          {
            continue;
          }

          v61 = OUTLINED_FUNCTION_21_26();
          v63 = 1;
          goto LABEL_34;
        case 21:
LABEL_18:
          v41 = OUTLINED_FUNCTION_41_14();
          savescptr(v41, v42, v102);
          goto LABEL_19;
        case 22:
LABEL_19:
          v43 = OUTLINED_FUNCTION_52_13();
          v45 = test_synch(v43, v44, 1, &unk_28064B7B4);
          LODWORD(v19) = v24;
          if (v45)
          {
            continue;
          }

          v46 = OUTLINED_FUNCTION_51_13();
          v48 = lpta_loadp_setscan_r(v46, v47, 1);
          LODWORD(v19) = v24;
          if (v48)
          {
            continue;
          }

          bspush_ca_scan(v2, 23);
          OUTLINED_FUNCTION_17_32();
LABEL_31:
          v72 = test_string_s();
          LODWORD(v19) = v24;
          if (v72)
          {
            continue;
          }

LABEL_32:
          v73 = chstream(v2, 24, 4u);
          LODWORD(v19) = v24;
          if (!v73)
          {
            v61 = OUTLINED_FUNCTION_21_26();
            v63 = 11;
LABEL_34:
            v74 = testFldeq(v61, v62, 2, v63);
            LODWORD(v19) = v24;
            if (!v74)
            {
              v77 = advance_tok(v2, v24, v75, v76);
              LODWORD(v19) = v24;
              if (!v77)
              {
                goto LABEL_3;
              }
            }
          }

          continue;
        case 23:
          OUTLINED_FUNCTION_17_32();
          goto LABEL_31;
        case 24:
          goto LABEL_32;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_57_12();
  OUTLINED_FUNCTION_48_14();
}

uint64_t other_liaison(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v63);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116);
  v11 = setjmp(v1);
  if (v11)
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, SHIDWORD(v111), v113, SWORD2(v113), SHIWORD(v113), v115, SWORD2(v115), SBYTE6(v115), SHIBYTE(v115), v117, v118);
  if (v19)
  {
    goto LABEL_3;
  }

  v22 = 0;
  OUTLINED_FUNCTION_46_14(v19, v20, &null_str_13);
  v23 = OUTLINED_FUNCTION_9_34();
  starttest(v23, v24);
  v25 = OUTLINED_FUNCTION_2_37();
  if (!lpta_loadp_setscan_r(v25, v26, v27))
  {
    v28 = OUTLINED_FUNCTION_3_37();
    if (testFldeq(v28, v29, v30, 27))
    {
      LODWORD(v22) = 0;
      goto LABEL_18;
    }

    LODWORD(v22) = 0;
    LODWORD(v34) = 0;
    if (advance_tok(a1, v31, v32, v33))
    {
      goto LABEL_18;
    }

LABEL_14:
    LODWORD(v22) = v34;
    v44 = OUTLINED_FUNCTION_9_34();
    starttest(v44, v45);
    OUTLINED_FUNCTION_9_34();
    bspush_ca_boa();
    v46 = OUTLINED_FUNCTION_6_35();
    if (!lpta_loadp_setscan_r(v46, v47, v48))
    {
      v49 = OUTLINED_FUNCTION_9_34();
      bspush_ca_scan(v49, v50);
      v51 = OUTLINED_FUNCTION_5_35();
      v54 = testFldeq(v51, v52, v53, 10);
      v56 = v34;
      if (!v54)
      {
LABEL_16:
        LODWORD(v22) = v56;
        if (!advance_tok(a1, v43, v42, v55))
        {
          LODWORD(v22) = 1;
        }
      }
    }

    goto LABEL_18;
  }

  while (2)
  {
    v35 = OUTLINED_FUNCTION_9_34();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_15_32();
    if (lpta_loadp_setscan_r(v37, v38, 1))
    {
LABEL_3:
      vretproc(a1);
      return 94;
    }

    v39 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v39, v40);
    OUTLINED_FUNCTION_20_27();
    v41 = test_string_s();
    v43 = v22;
    if (!v41)
    {
LABEL_13:
      LODWORD(v22) = v43;
      *(a1 + 136) = 1;
      LODWORD(v34) = v43;
      if (OUTLINED_FUNCTION_30_21(v41, v43, v42))
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

LABEL_18:
    LODWORD(v34) = v22;
LABEL_19:
    v57 = *(a1 + 104);
    if (v57)
    {
      v41 = OUTLINED_FUNCTION_28_22(v57);
      v34 = v58;
    }

    else
    {
      v41 = vback(a1, v34);
      v34 = 0;
    }

    v43 = v34;
    v56 = v34;
    switch(v41)
    {
      case 1:
        v22 = v34;
        continue;
      case 2:
        goto LABEL_14;
      case 4:
        OUTLINED_FUNCTION_18_31();
        v41 = test_string_s();
        v43 = v34;
        if (!v41)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      case 5:
        goto LABEL_13;
      case 6:
        vretproc(a1);
        result = 0;
        break;
      case 7:
        bspop_boa(a1);
        goto LABEL_3;
      case 8:
        v59 = OUTLINED_FUNCTION_0_39();
        v62 = testFldeq(v59, v60, v61, 4);
        v56 = v34;
        if (!v62)
        {
          goto LABEL_16;
        }

        goto LABEL_19;
      case 9:
        goto LABEL_16;
      default:
        goto LABEL_3;
    }

    return result;
  }
}

uint64_t tout_liaison(uint64_t a1)
{
  v193 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_25();
  bzero(&v165, v3);
  OUTLINED_FUNCTION_8_35(v4, v5, v6, v7, v8, v9, v10, v11, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
  v12 = setjmp(v1);
  if (v12)
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_1_38(v12, v13, v14, v15, v16, v17, v18, v19, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, SHIDWORD(v188), v189, SWORD2(v189), SHIWORD(v189), v190, SWORD2(v190), SBYTE6(v190), SHIBYTE(v190), v191, v192);
  if (v20)
  {
    goto LABEL_3;
  }

  v24 = 0;
  OUTLINED_FUNCTION_46_14(v20, v21, &null_str_13);
  v25 = OUTLINED_FUNCTION_21_26();
  fence_36(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_40_15();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_2_37();
  if (!lpta_loadp_setscan_r(v30, v31, v32))
  {
    OUTLINED_FUNCTION_29_22();
    bspush_ca_scan_boa();
    v111 = OUTLINED_FUNCTION_10_34();
    LODWORD(v24) = !testFldeq(v111, v112, 0, 28) && !advance_tok(a1, v113, v114, v115);
    goto LABEL_74;
  }

LABEL_6:
  v33 = OUTLINED_FUNCTION_13_33();
  if (!lpta_loadp_setscan_r(v33, v34, v35))
  {
    v39 = v24;
    if (!advance_tok(a1, v36, v37, v38))
    {
LABEL_8:
      v24 = v39;
      savescptr(a1, 4, a1 + 1912);
    }
  }

LABEL_9:
  v40 = OUTLINED_FUNCTION_9_34();
  starttest(v40, v41);
  if (!lpta_loadp_setscan_l(a1, a1 + 1752, 1))
  {
    v70 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v70, v71);
    OUTLINED_FUNCTION_7_35();
    v72 = test_string_s();
    LODWORD(v68) = v24;
    if (v72)
    {
      goto LABEL_74;
    }

LABEL_20:
    LODWORD(v24) = v68;
    OUTLINED_FUNCTION_20_27();
    LODWORD(v39) = v24;
    if (test_string_s())
    {
      goto LABEL_74;
    }

LABEL_21:
    LODWORD(v24) = v39;
    v73 = OUTLINED_FUNCTION_9_34();
    if (test_synch(v73, v74, 1, v75))
    {
      goto LABEL_74;
    }

    goto LABEL_3;
  }

LABEL_10:
  v42 = OUTLINED_FUNCTION_9_34();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_6_35();
  if (lpta_loadp_setscan_r(v44, v45, v46))
  {
LABEL_11:
    v47 = OUTLINED_FUNCTION_9_34();
    starttest(v47, v48);
    v49 = OUTLINED_FUNCTION_13_33();
    if (lpta_loadp_setscan_l(v49, v50, v51))
    {
      v52 = v24;
LABEL_13:
      v53 = OUTLINED_FUNCTION_9_34();
      starttest(v53, v54);
      v55 = OUTLINED_FUNCTION_6_35();
      if (!lpta_loadp_setscan_r(v55, v56, v57))
      {
        v105 = OUTLINED_FUNCTION_9_34();
        bspush_ca_scan(v105, v106);
        v107 = OUTLINED_FUNCTION_0_39();
        v110 = testFldeq(v107, v108, v109, 2);
        LODWORD(v24) = v52;
        v67 = v52;
        if (v110)
        {
          goto LABEL_74;
        }

        goto LABEL_85;
      }

      LODWORD(v24) = v52;
LABEL_15:
      v58 = OUTLINED_FUNCTION_9_34();
      starttest(v58, v59);
      v60 = OUTLINED_FUNCTION_6_35();
      if (lpta_loadp_setscan_r(v60, v61, v62))
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    v98 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v98, v99, v100, 6))
    {
      goto LABEL_74;
    }

    v101 = OUTLINED_FUNCTION_3_37();
    v104 = 19;
LABEL_61:
    if (testFldeq(v101, v102, v103, v104) || advance_tok(a1, v134, v135, v136))
    {
      goto LABEL_74;
    }

    goto LABEL_3;
  }

  v76 = OUTLINED_FUNCTION_0_39();
  if (testFldeq(v76, v77, v78, 8) || advance_tok(a1, v79, v80, v81))
  {
    goto LABEL_74;
  }

  v82 = OUTLINED_FUNCTION_9_34();
  starttest(v82, v83);
  v84 = OUTLINED_FUNCTION_6_35();
  if (lpta_loadp_setscan_r(v84, v85, v86))
  {
LABEL_46:
    v121 = OUTLINED_FUNCTION_16_32();
    if (lpta_loadp_setscan_r(v121, v122, v123) || (OUTLINED_FUNCTION_7_35(), test_string_s()))
    {
      v124 = v24;
LABEL_68:
      v142 = OUTLINED_FUNCTION_16_32();
      if (!lpta_loadp_setscan_r(v142, v143, v144))
      {
        OUTLINED_FUNCTION_11_34();
        v145 = test_string_s();
        if (!v145)
        {
          *(a1 + 136) = v24;
          if (!OUTLINED_FUNCTION_30_21(v145, v146, v147))
          {
            v148 = OUTLINED_FUNCTION_9_34();
            starttest_l(v148, v149);
            OUTLINED_FUNCTION_9_34();
            bspush_ca_boa();
            lpta_loadpn(a1, a1 + 1848);
            OUTLINED_FUNCTION_56_12();
            if (compare_ptas(a1) || testneq(a1))
            {
              LODWORD(v24) = v124;
            }

            else
            {
              lpta_rpta_loadp(a1, a1 + 1832, a1 + 1848);
              v163 = OUTLINED_FUNCTION_20_27();
              if (setd_lookup(v163, v164, 7))
              {
                LODWORD(v24) = v124;
              }

              else
              {
                LODWORD(v24) = 1;
              }
            }

            goto LABEL_74;
          }
        }
      }

      goto LABEL_3;
    }

    lpta_loadpn(a1, a1 + 1848);
    OUTLINED_FUNCTION_56_12();
    if (compare_ptas(a1) || testneq(a1) || (lpta_rpta_loadp(a1, a1 + 1832, a1 + 1848), v125 = OUTLINED_FUNCTION_20_27(), setd_lookup(v125, v126, 6)))
    {
LABEL_54:
      lpta_loadpn(a1, a1 + 1912);
      OUTLINED_FUNCTION_56_12();
      if (compare_ptas(a1) || testneq(a1) || (lpta_rpta_loadp(a1, a1 + 1832, a1 + 1912), v127 = OUTLINED_FUNCTION_20_27(), setd_lookup(v127, v128, 6)))
      {
LABEL_59:
        v129 = OUTLINED_FUNCTION_9_34();
        starttest(v129, v130);
        v131 = OUTLINED_FUNCTION_13_33();
        if (!lpta_loadp_setscan_l(v131, v132, v133))
        {
          v101 = OUTLINED_FUNCTION_0_39();
          v104 = 1;
          goto LABEL_61;
        }

LABEL_65:
        v137 = OUTLINED_FUNCTION_9_34();
        starttest(v137, v138);
        v139 = OUTLINED_FUNCTION_13_33();
        if (!lpta_loadp_setscan_l(v139, v140, v141))
        {
          v101 = OUTLINED_FUNCTION_5_35();
          v104 = 10;
          goto LABEL_61;
        }
      }
    }

LABEL_41:
    v22 = 0;
    goto LABEL_4;
  }

  v87 = OUTLINED_FUNCTION_3_37();
  if (testFldeq(v87, v88, v89, 18) || advance_tok(a1, v90, v91, v92))
  {
    goto LABEL_74;
  }

  v93 = OUTLINED_FUNCTION_9_34();
  starttest(v93, v94);
  v95 = OUTLINED_FUNCTION_2_37();
  if (!lpta_loadp_setscan_r(v95, v96, v97))
  {
LABEL_16:
    v63 = OUTLINED_FUNCTION_0_39();
    v66 = 3;
LABEL_17:
    if (testFldeq(v63, v64, v65, v66))
    {
      goto LABEL_74;
    }

    while (advance_tok(a1, v67, v68, v69))
    {
LABEL_74:
      LODWORD(v39) = v24;
      v24 = &unk_28064B7B4;
      do
      {
        while (2)
        {
          v150 = *(a1 + 104);
          if (v150)
          {
            v151 = OUTLINED_FUNCTION_28_22(v150);
            v39 = v152;
          }

          else
          {
            v151 = vback(a1, v39);
            v39 = 0;
          }

          v68 = v39;
          v67 = v39;
          switch(v151)
          {
            case 1:
              v24 = v39;
              goto LABEL_6;
            case 2:
            case 23:
              bspop_boa(a1);
              goto LABEL_3;
            case 3:
              v24 = v39;
              goto LABEL_9;
            case 4:
              goto LABEL_8;
            case 5:
              v24 = v39;
              goto LABEL_10;
            case 6:
              OUTLINED_FUNCTION_7_35();
              v153 = test_string_s();
              LODWORD(v68) = v39;
              if (!v153)
              {
                goto LABEL_20;
              }

              continue;
            case 7:
              goto LABEL_20;
            case 8:
              goto LABEL_21;
            case 9:
            case 13:
            case 15:
            case 18:
            case 22:
              goto LABEL_41;
            case 10:
              v24 = v39;
              goto LABEL_11;
            case 11:
              LODWORD(v24) = v39;
              goto LABEL_46;
            case 12:
              LODWORD(v24) = v39;
              goto LABEL_43;
            case 16:
              v124 = v39;
              goto LABEL_68;
            case 17:
              LODWORD(v24) = v39;
              goto LABEL_54;
            case 19:
              LODWORD(v24) = v39;
              goto LABEL_59;
            case 20:
              LODWORD(v24) = v39;
              goto LABEL_65;
            case 24:
              v52 = v39;
              goto LABEL_13;
            case 25:
              LODWORD(v24) = v39;
              goto LABEL_15;
            case 26:
              v158 = OUTLINED_FUNCTION_45_14();
              bspush_ca_scan(v158, v159);
              v154 = OUTLINED_FUNCTION_3_37();
              v157 = 2;
              break;
            case 27:
              goto LABEL_85;
            case 28:
              v160 = OUTLINED_FUNCTION_37_16();
              bspush_ca_scan(v160, v161);
              v154 = OUTLINED_FUNCTION_3_37();
              v157 = 1;
              break;
            case 29:
              v154 = OUTLINED_FUNCTION_0_39();
              v157 = 6;
              break;
            default:
              goto LABEL_3;
          }

          break;
        }

        v162 = testFldeq(v154, v155, v156, v157);
        v67 = v39;
      }

      while (v162);
LABEL_85:
      LODWORD(v24) = v67;
    }

    goto LABEL_41;
  }

LABEL_43:
  v116 = OUTLINED_FUNCTION_9_34();
  starttest(v116, v117);
  v118 = OUTLINED_FUNCTION_13_33();
  if (!lpta_loadp_setscan_l(v118, v119, v120))
  {
    v63 = OUTLINED_FUNCTION_0_39();
    v66 = 2;
    goto LABEL_17;
  }

LABEL_3:
  v22 = 94;
LABEL_4:
  vretproc(a1);
  return v22;
}

uint64_t insert_clitic_vowel(uint64_t a1)
{
  OUTLINED_FUNCTION_14_33(*MEMORY[0x277D85DE8], v50);
  OUTLINED_FUNCTION_8_35(v3, v4, v5, v6, v7, v8, v9, v10, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
  v11 = setjmp(v1);
  if (!v11 && !OUTLINED_FUNCTION_1_38(v11, v12, v13, v14, v15, v16, v17, v18, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, SHIDWORD(v98), v100, SWORD2(v100), SHIWORD(v100), v102, SWORD2(v102), SBYTE6(v102), SHIBYTE(v102), v104, v105))
  {
    fence_36(a1, 0, &null_str_13);
    v19 = OUTLINED_FUNCTION_11_34();
    fence_36(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_31_20();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_13_33();
    if (!lpta_loadp_setscan_l(v24, v25, v26))
    {
      v29 = OUTLINED_FUNCTION_10_34();
      if (testFldeq(v29, v30, 4, 1) || advance_tok(a1, v31, v32, v33))
      {
        goto LABEL_8;
      }

      v40 = OUTLINED_FUNCTION_29_22();
      starttest(v40, v41);
      v42 = OUTLINED_FUNCTION_32_19();
      if (lpta_loadp_setscan_r(v42, v43, v1))
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_9_34();
      bspush_ca_scan_boa();
      v44 = OUTLINED_FUNCTION_4_36();
      if (testFldeq(v44, v45, v46, 1))
      {
LABEL_8:
        v34 = 0;
      }

      else
      {
        v34 = !advance_tok(a1, v47, v48, v49);
      }

      v35 = *(a1 + 104);
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_28_22(v35);
      }

      else
      {
        v36 = vback(a1, v34);
      }

      if (v36 != 2 && v36 != 4)
      {
        if (v36 == 3)
        {
          bspop_boa(a1);
          *(a1 + 168) = 1;
          *(a1 + 144) = *(a1 + 1344);
          *(a1 + 128) = 0;
          v27 = 0;
          v38 = OUTLINED_FUNCTION_22_25();
          insert_l(v38, v39);
          goto LABEL_5;
        }

        goto LABEL_4;
      }

LABEL_17:
      v27 = 0;
      goto LABEL_5;
    }
  }

LABEL_4:
  v27 = 94;
LABEL_5:
  vretproc(a1);
  return v27;
}

uint64_t ce_vow_elision(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v83 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(&v59, v3);
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_61_12(v4, v5, v6, v7, v8, v9, v10, v11, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  v12 = setjmp(v1);
  if (v12 || OUTLINED_FUNCTION_12_34(v12, v13, v14, v15, v16, v17, v18, v19, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, SHIDWORD(v84), v85, SWORD2(v85), SHIWORD(v85), v86, SWORD2(v86), SBYTE6(v86), SHIBYTE(v86), v87, v88))
  {
    goto LABEL_3;
  }

  v22 = OUTLINED_FUNCTION_38_16();
  push_ptr_init(v22, v23);
  fence_36(a1, 0, &null_str_13);
  v24 = OUTLINED_FUNCTION_11_34();
  fence_36(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_31_20();
  starttest(v27, v28);
  if (!lpta_loadp_setscan_l(a1, a1 + 1752, v1))
  {
    v51 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v51, v52);
    OUTLINED_FUNCTION_18_31();
    v53 = test_string_s();
    if (!v53)
    {
LABEL_16:
      *(a1 + 136) = 1;
      if (!OUTLINED_FUNCTION_30_21(v53, v54, v55))
      {
LABEL_23:
        v20 = 0;
        goto LABEL_4;
      }
    }

LABEL_17:
    while (2)
    {
      v56 = *(a1 + 104);
      if (v56)
      {
        v53 = OUTLINED_FUNCTION_28_22(v56);
      }

      else
      {
        v57 = OUTLINED_FUNCTION_44_14();
        v53 = vback(v57, v58);
      }

      switch(v53)
      {
        case 1:
          break;
        case 2:
          OUTLINED_FUNCTION_20_27();
          v53 = test_string_s();
          if (!v53)
          {
            goto LABEL_16;
          }

          continue;
        case 3:
          goto LABEL_16;
        case 4:
          goto LABEL_23;
        case 6:
          goto LABEL_7;
        case 7:
          goto LABEL_11;
        case 8:
          goto LABEL_13;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v29 = OUTLINED_FUNCTION_9_34();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_13_33();
  if (!lpta_loadp_setscan_r(v31, v32, v33))
  {
LABEL_7:
    OUTLINED_FUNCTION_39_15(6, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    v34 = OUTLINED_FUNCTION_5_35();
    if (!testFldeq(v34, v35, v36, 7) && !advance_tok(a1, v37, v38, v39))
    {
      v40 = OUTLINED_FUNCTION_13_33();
      if (!lpta_loadp_setscan_l(v40, v41, v42) && !advance_tok(a1, v43, v44, v45))
      {
LABEL_11:
        v46 = OUTLINED_FUNCTION_9_34();
        if (!chstream(v46, v47, 1u))
        {
          OUTLINED_FUNCTION_20_27();
          if (!test_string_s())
          {
LABEL_13:
            v48 = OUTLINED_FUNCTION_9_34();
            if (!test_synch(v48, v49, 1, v50))
            {
              goto LABEL_23;
            }
          }
        }
      }
    }

    goto LABEL_17;
  }

LABEL_3:
  v20 = 94;
LABEL_4:
  vretproc(a1);
  return v20;
}

void le_de_vow_elision(uint64_t a1)
{
  OUTLINED_FUNCTION_42_14();
  v2 = v1;
  v114 = *MEMORY[0x277D85DE8];
  v101 = 0;
  v102 = 0;
  OUTLINED_FUNCTION_24_25();
  bzero(v100, v3);
  OUTLINED_FUNCTION_23_25();
  bzero(v113, v4);
  v5 = setjmp(v113);
  if (v5 || OUTLINED_FUNCTION_55_13(v5, v100, v6, v7, v8, v9, v10, v11, v99, v100[0], v100[1], v100[2], v100[3], v100[4], v100[5], v100[6], v100[7], v100[8], v100[9], v100[10], v100[11], v100[12], v100[13], v100[14], v100[15], v100[16], v100[17], v100[18], v100[19], v100[20], v100[21], v100[22], v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113[0]))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_54_13();
  v14 = push_ptr_init(v12, v13);
  LODWORD(v15) = 0;
  OUTLINED_FUNCTION_46_14(v14, v16, &null_str_13);
  v17 = OUTLINED_FUNCTION_21_26();
  fence_36(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_40_15();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_13_33();
  v25 = 0;
  if (!lpta_loadp_setscan_l(v22, v23, v24))
  {
LABEL_9:
    savescptr(v2, 2, &v101);
    v35 = advance_tok(v2, v32, v33, v34);
    LODWORD(v31) = v15;
    if (v35)
    {
      goto LABEL_19;
    }

LABEL_12:
    v36 = OUTLINED_FUNCTION_9_34();
    if (chstream(v36, v37, 1u))
    {
      goto LABEL_18;
    }

    v38 = OUTLINED_FUNCTION_9_34();
    bspush_ca_scan(v38, v39);
    OUTLINED_FUNCTION_20_27();
    v40 = test_string_s();
    v41 = v15;
    LODWORD(v31) = v15;
    if (v40)
    {
      goto LABEL_19;
    }

LABEL_14:
    LODWORD(v15) = v41;
    v42 = OUTLINED_FUNCTION_9_34();
    if (test_synch(v42, v43, 1, v44))
    {
      goto LABEL_18;
    }

    v45 = OUTLINED_FUNCTION_13_33();
    if (lpta_loadp_setscan_r(v45, v46, v47))
    {
      goto LABEL_18;
    }

    v48 = OUTLINED_FUNCTION_0_39();
    if (testFldeq(v48, v49, v50, 2))
    {
      goto LABEL_18;
    }

    v54 = advance_tok(v2, v51, v52, v53);
LABEL_38:
    LODWORD(v31) = v15;
    if (!v54)
    {
      goto LABEL_3;
    }

    goto LABEL_19;
  }

LABEL_5:
  v15 = v25;
  v26 = OUTLINED_FUNCTION_9_34();
  starttest(v26, v27);
  v28 = OUTLINED_FUNCTION_15_32();
  if (!lpta_loadp_setscan_l(v28, v29, 1))
  {
LABEL_6:
    savescptr(v2, 8, &v101);
    OUTLINED_FUNCTION_7_35();
    v30 = test_string_s();
    LODWORD(v15) = v25;
    LODWORD(v31) = v25;
    if (v30)
    {
      goto LABEL_19;
    }

LABEL_41:
    v82 = OUTLINED_FUNCTION_9_34();
    if (!chstream(v82, v83, 2u))
    {
      v84 = OUTLINED_FUNCTION_4_36();
      if (!testFldeq(v84, v85, v86, 1))
      {
        OUTLINED_FUNCTION_9_34();
        bspush_ca_scan_boa();
        v87 = OUTLINED_FUNCTION_22_25();
        if (OUTLINED_FUNCTION_60_12(v87, v88))
        {
          LODWORD(v31) = v15;
        }

        else
        {
          LODWORD(v31) = 1;
        }

        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

LABEL_47:
  v89 = OUTLINED_FUNCTION_9_34();
  starttest(v89, v90);
  if (lpta_loadp_setscan_l(v2, v2 + 1752, 1))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_18_31();
  if (test_string_s())
  {
    goto LABEL_3;
  }

LABEL_49:
  v91 = OUTLINED_FUNCTION_9_34();
  if (test_synch(v91, v92, 1, v93) || (v94 = OUTLINED_FUNCTION_16_32(), lpta_loadp_setscan_r(v94, v95, v96)))
  {
LABEL_18:
    LODWORD(v31) = v15;
    goto LABEL_19;
  }

  v97 = OUTLINED_FUNCTION_9_34();
  bspush_ca_scan(v97, v98);
  OUTLINED_FUNCTION_18_31();
  v58 = test_string_s();
  v31 = v15;
  v59 = v15;
  if (!v58)
  {
LABEL_37:
    LODWORD(v15) = v59;
    *(v2 + 136) = 1;
    v54 = OUTLINED_FUNCTION_30_21(v58, v31, v59);
    goto LABEL_38;
  }

LABEL_19:
  while (2)
  {
    v55 = *(v2 + 104);
    if (v55)
    {
      v56 = OUTLINED_FUNCTION_28_22(v55);
      v25 = v57;
    }

    else
    {
      v56 = vback(v2, v31);
      v25 = 0;
    }

    if ((v56 - 1) <= 0xF)
    {
      v58 = OUTLINED_FUNCTION_59_12();
      v41 = v25;
      v59 = v25;
      switch(v60)
      {
        case 1:
          LODWORD(v15) = v25;
          goto LABEL_9;
        case 2:
          LODWORD(v15) = v25;
          goto LABEL_12;
        case 3:
          OUTLINED_FUNCTION_21_26();
          v61 = test_string_s();
          v41 = v25;
          LODWORD(v31) = v25;
          if (!v61)
          {
            goto LABEL_14;
          }

          continue;
        case 4:
          goto LABEL_14;
        case 5:
        case 10:
          goto LABEL_3;
        case 6:
          v15 = v25;
          goto LABEL_47;
        case 7:
          goto LABEL_6;
        case 8:
          LODWORD(v15) = v25;
          goto LABEL_41;
        case 9:
          bspop_boa(v2);
          v69 = advance_tok(v2, v66, v67, v68);
          LODWORD(v31) = v25;
          if (v69)
          {
            continue;
          }

          v70 = OUTLINED_FUNCTION_37_16();
          v72 = lpta_loadp_setscan_r(v70, v71, 1);
          LODWORD(v31) = v25;
          if (v72)
          {
            continue;
          }

          v75 = advance_tok(v2, v25, v73, v74);
          LODWORD(v31) = v25;
          if (v75)
          {
            continue;
          }

          v78 = advance_tok(v2, v25, v76, v77);
          LODWORD(v31) = v25;
          if (v78)
          {
            continue;
          }

          OUTLINED_FUNCTION_21_26();
          v79 = test_string_s();
          LODWORD(v31) = v25;
          if (v79)
          {
            continue;
          }

          *(v2 + 136) = 1;
          v81 = OUTLINED_FUNCTION_30_21(v79, v25, v80);
          LODWORD(v31) = v25;
          if (v81)
          {
            continue;
          }

          goto LABEL_3;
        case 11:
          v15 = v25;
          goto LABEL_49;
        case 12:
          v62 = OUTLINED_FUNCTION_53_13();
          bspush_ca_scan(v62, v63);
          OUTLINED_FUNCTION_21_26();
          goto LABEL_36;
        case 13:
          goto LABEL_37;
        case 14:
          v64 = OUTLINED_FUNCTION_41_14();
          bspush_ca_scan(v64, v65);
          OUTLINED_FUNCTION_21_26();
          goto LABEL_36;
        case 15:
          OUTLINED_FUNCTION_21_26();
LABEL_36:
          v58 = test_string_s();
          v59 = v25;
          v31 = v25;
          if (!v58)
          {
            goto LABEL_37;
          }

          continue;
        default:
          goto LABEL_5;
      }
    }

    break;
  }

LABEL_3:
  OUTLINED_FUNCTION_57_12();
  OUTLINED_FUNCTION_48_14();
}