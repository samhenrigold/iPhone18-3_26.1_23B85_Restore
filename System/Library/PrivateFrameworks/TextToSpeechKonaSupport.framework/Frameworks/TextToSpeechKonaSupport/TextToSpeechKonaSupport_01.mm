uint64_t add_f0_for_new_voice(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v81 = 0;
  v82 = 0;
  v80 = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v79, v2);
  OUTLINED_FUNCTION_7_5();
  bzero(v93, v3);
  v4 = setjmp(v93);
  if (!v4 && !OUTLINED_FUNCTION_21_3(v4, v5, v6, v7, v8, v9, v10, v11, v78, v79[0], v79[1], v79[2], v79[3], v79[4], v79[5], v79[6], v79[7], v79[8], v79[9], v79[10], v79[11], v79[12], v79[13], v79[14], v79[15], v79[16], v79[17], v79[18], v79[19], v79[20], v79[21], v79[22], v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0]))
  {
    v14 = push_ptr_init(a1, &v81);
    v80 = 0xFFFC0000FFFCLL;
    v12 = 0;
    OUTLINED_FUNCTION_23_3(v14, v15, &null_str_0);
    v16 = OUTLINED_FUNCTION_9_5();
    if (lpta_loadp_setscan_l(v16, v17, v18))
    {
      goto LABEL_4;
    }

    if (advance_tok(a1, v19, v20, v21))
    {
      goto LABEL_7;
    }

    v22 = OUTLINED_FUNCTION_4_5();
    starttest_l(v22, v23);
    v24 = OUTLINED_FUNCTION_5_5();
    bspush_ca(v24);
    *(a1 + 4722) = 9;
    npush_v(a1, (a1 + 4720), v25, v26, v27, v28, v29, v30);
    *(a1 + 4786) = 9;
    npush_v(a1, (a1 + 4784), v31, v32, v33, v34, v35, v36);
    if (!if_testneq(a1, v37, v38, v39, v40, v41, v42, v43))
    {
LABEL_9:
      init_voice_vars(a1);
LABEL_10:
      v44 = OUTLINED_FUNCTION_17_4();
      if (lpta_loadp_setscan_l(v44, v45, 4) || test_string_s())
      {
        goto LABEL_7;
      }

LABEL_12:
      v46 = OUTLINED_FUNCTION_14_4();
      savescptr(v46, v47, v48);
      v49 = OUTLINED_FUNCTION_4_5();
      starttest_l(v49, v50);
      v51 = OUTLINED_FUNCTION_11_5();
      move_i(v51, v52, 95);
      v53 = OUTLINED_FUNCTION_16_4();
      move_i(v53, v54, 50);
      v55 = OUTLINED_FUNCTION_13_5();
      if (!insert_f0(v55, v56, &v80 + 2))
      {
LABEL_7:
        v12 = 0;
        goto LABEL_4;
      }
    }

    while (2)
    {
      v57 = *(a1 + 104);
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_12_5(v57);
      }

      else
      {
        v58 = OUTLINED_FUNCTION_19_3();
      }

      switch(v58)
      {
        case 1:
          goto LABEL_7;
        case 2:
          *(a1 + 4722) = 10;
          npush_v(a1, (a1 + 4720), v59, v60, v61, v62, v63, v64);
          *(a1 + 4786) = 10;
          npush_v(a1, (a1 + 4784), v65, v66, v67, v68, v69, v70);
          if (!if_testneq(a1, v71, v72, v73, v74, v75, v76, v77))
          {
            goto LABEL_9;
          }

          continue;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_10;
        case 5:
          goto LABEL_12;
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

uint64_t init_phrase_inton_vars(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x277D85DE8];
  v20[23] = 0;
  v21 = 0;
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v20[0]);
  OUTLINED_FUNCTION_7_5();
  bzero(v25, v9);
  if (setjmp(v25) || ventproc(a1, v20, v24, v23, v22, v25))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_5();
    v13 = push_ptr_init(v11, v12);
    OUTLINED_FUNCTION_23_3(v13, v14, &null_str_0);
    *(a1 + 1218) = *(a1 + 2290);
    v15 = *(a1 + 970);
    *(a1 + 738) = v15;
    *(a1 + 954) = v15;
    *(a1 + 5066) = 0;
    *(a1 + 4914) = -1;
    *(a1 + 5042) = 1;
    *(a1 + 4918) = 25;
    v21 = *(a1 + 1472);
    v16 = OUTLINED_FUNCTION_14_4();
    estimate_nsylls(v16, v17, v18, v19);
    init_voice_vars(a1);
    init_nuclwrd_vars(a1);
    if (*(a1 + 2542) == *(a1 + 3274))
    {
      num_words_in_range();
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t init_word_inton_vars(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, SHIDWORD(v70), v72, SWORD2(v72), SHIWORD(v72), v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v77))
  {
    vretproc(a1);
    return 94;
  }

  fence_6(a1, 0, &null_str_0);
  v20 = a1[369];
  v21 = a1[493];
  if (a1[489] != v20)
  {
    if (a1[493] == v20)
    {
      goto LABEL_9;
    }

    lpta_loadpn(a1, (a1 + 320));
    rpta_loadpn(a1, (a1 + 868));
    if (compare_ptas(a1) || testeq(a1))
    {
      goto LABEL_9;
    }

    v21 = a1[489];
  }

  a1[369] = v21;
LABEL_9:
  vretproc(a1);
  return 0;
}

uint64_t init_syll_inton_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v24);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, SHIDWORD(v72), v74, SWORD2(v74), SHIWORD(v74), v76, SWORD2(v76), SBYTE6(v76), SHIBYTE(v76), v78, v79))
  {
    vretproc(a1);
    return 94;
  }

  fence_6(a1, 0, &null_str_0);
  v20 = *(a1 + 3352);
  *(a1 + 1144) = v20;
  *(a1 + 1160) = v20;
  v21 = *(a1 + 978);
  v22 = *(a1 + 954);
  v23 = *(a1 + 982);
  if (v21 != v22)
  {
    if (*(a1 + 982) == v22)
    {
      v23 = *(a1 + 986);
    }

    else
    {
      if (v21 != *(a1 + 738))
      {
        goto LABEL_8;
      }

      v23 = *(a1 + 978);
      if (v21 != *(a1 + 958))
      {
        goto LABEL_8;
      }
    }
  }

  *(a1 + 954) = v23;
LABEL_8:
  vretproc(a1);
  return 0;
}

uint64_t is_target_syll(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v20);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, SHIDWORD(v68), v70, SWORD2(v70), SHIWORD(v70), v72, SWORD2(v72), SBYTE6(v72), SHIBYTE(v72), v74, v75) || (fence_6(a1, 0, &null_str_0), *(a1 + 950) != 1))
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

uint64_t nucl_f0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v99) = 0;
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v52);
  OUTLINED_FUNCTION_2_6(v10, v11, v12, v13, v14, v15, v16, v17, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_6(v18, v19, v20, v21, v22, v23, v24, v25, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, SHIDWORD(v100), v102, SWORD2(v102), SHIWORD(v102), v104, SWORD2(v104), SBYTE6(v104), SHIBYTE(v104), v106, v107) || (fence_6(a1, 0, &null_str_0), OUTLINED_FUNCTION_15_4(), !v26))
  {
LABEL_31:
    v50 = 94;
  }

  else
  {
    while (2)
    {
      position_t_ptrs(a1);
LABEL_6:
      v27 = *(a1 + 3274);
      if (*(a1 + 3310) == v27)
      {
        nucl_high_tone(a1);
      }

      else
      {
LABEL_17:
        if (*(a1 + 3314) == v27)
        {
          nucl_low_tone(a1);
        }

        else
        {
LABEL_20:
          if (*(a1 + 3322) == v27)
          {
            nucl_low_high_star_tone(a1);
          }

          else
          {
LABEL_23:
            if (*(a1 + 3318) == v27)
            {
              nucl_low_star_high_tone(a1);
            }

            else
            {
LABEL_26:
              if (*(a1 + 3330) == v27)
              {
                nucl_high_low_star_tone(a1);
              }

              else
              {
LABEL_29:
                if (*(a1 + 3326) == v27)
                {
                  nucl_high_star_low_tone(a1);
                }
              }
            }
          }
        }
      }

LABEL_8:
      v28 = OUTLINED_FUNCTION_13_5();
      starttest(v28, v29);
      v30 = OUTLINED_FUNCTION_9_5();
      if (!lpta_loadp_setscan_r(v30, v31, v32))
      {
        v33 = OUTLINED_FUNCTION_10_5();
        if (testFldeq(v33, v34, 7, 1) || advance_tok(a1, v35, v36, v37) || (starttest_l(a1, 15), v38 = OUTLINED_FUNCTION_11_5(), move_i(v38, v39, 3), v40 = OUTLINED_FUNCTION_11_5(), modulate_pwind(v40, v41, v42, v43, v44, v45, v46, v47)))
        {
          v48 = *(a1 + 104);
          if (v48)
          {
            v49 = OUTLINED_FUNCTION_12_5(v48);
          }

          else
          {
            v49 = OUTLINED_FUNCTION_19_3();
          }

          switch(v49)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_6;
            case 3:
              v27 = *(a1 + 3274);
              goto LABEL_17;
            case 4:
            case 5:
            case 7:
            case 9:
            case 11:
            case 13:
            case 14:
              goto LABEL_8;
            case 6:
              v27 = *(a1 + 3274);
              goto LABEL_20;
            case 8:
              v27 = *(a1 + 3274);
              goto LABEL_23;
            case 10:
              v27 = *(a1 + 3274);
              goto LABEL_26;
            case 12:
              v27 = *(a1 + 3274);
              goto LABEL_29;
            case 15:
              goto LABEL_33;
            default:
              goto LABEL_31;
          }
        }
      }

      break;
    }

LABEL_33:
    v50 = 0;
    *(a1 + 920) = *(a1 + 792);
  }

  vretproc(a1);
  return v50;
}

uint64_t first_postnucl_accent(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76) || (fence_6(a1, 0, &null_str_0), OUTLINED_FUNCTION_15_4(), !v19) || (OUTLINED_FUNCTION_20_3(), v19))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    if (*(a1 + 5122) == *(a1 + 5090))
    {
      por_first_postnucl_accent(a1);
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t insert_target_t3(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v39[0] = 0;
  v39[1] = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v38, v2);
  OUTLINED_FUNCTION_7_5();
  bzero(v43, v3);
  if (setjmp(v43) || ventproc(a1, v38, v42, v41, v40, v43))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    push_ptr_init(a1, v39);
    fence_6(a1, 0, &null_str_0);
    lpta_loadpn(a1, a1 + 1168);
    rpta_loadpn(a1, a1 + 3344);
    if (compare_ptas(a1) || testeq(a1))
    {
      v5 = 0;
      while (2)
      {
        starttest(a1, 3);
        OUTLINED_FUNCTION_16_4();
        bspush_ca_boa();
        if (in_syllable())
        {
          v6 = v5;
        }

        else
        {
          v6 = 1;
        }

LABEL_10:
        v7 = *(a1 + 104);
        if (v7)
        {
          v8 = OUTLINED_FUNCTION_12_5(v7);
          v5 = v9;
        }

        else
        {
          v8 = vback(a1, v6);
          v5 = 0;
        }

        switch(v8)
        {
          case 1:
            continue;
          case 2:
          case 10:
            goto LABEL_39;
          case 3:
            OUTLINED_FUNCTION_20_3();
            if (v12)
            {
              goto LABEL_39;
            }

            goto LABEL_15;
          case 4:
            bspop_boa(a1);
            v16 = OUTLINED_FUNCTION_17_4();
            if (!lpta_loadp_setscan_l(v16, v17, 7) && !advance_tok(a1, v18, v19, v20))
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          case 5:
            goto LABEL_26;
          case 6:
LABEL_25:
            v21 = OUTLINED_FUNCTION_16_4();
            savescptr(v21, v22, v39);
LABEL_26:
            starttest(a1, 7);
            v23 = OUTLINED_FUNCTION_17_4();
            if (!lpta_loadp_setscan_l(v23, v24, 4))
            {
              v28 = advance_tok(a1, v25, v26, v27);
              if (!v28)
              {
                *(a1 + 136) = 1;
                if (!OUTLINED_FUNCTION_18_3(v28, v29, v30))
                {
                  goto LABEL_29;
                }
              }
            }

            goto LABEL_40;
          case 7:
            goto LABEL_40;
          case 8:
            goto LABEL_29;
          case 9:
            v37 = advance_tok(a1, v9, v10, v11);
            v6 = v5;
            if (v37)
            {
              goto LABEL_10;
            }

LABEL_29:
            v31 = OUTLINED_FUNCTION_13_5();
            bspush_ca_scan(v31, v32);
            *(a1 + 136) = 1;
            v36 = OUTLINED_FUNCTION_18_3(v33, v34, v35);
            v6 = v5;
            if (!v36)
            {
              goto LABEL_39;
            }

            goto LABEL_10;
          case 11:
LABEL_15:
            OUTLINED_FUNCTION_15_4();
            if (!v12)
            {
              goto LABEL_16;
            }

            goto LABEL_39;
          case 12:
LABEL_16:
            v13 = OUTLINED_FUNCTION_25_3();
            starttest(v13, v14);
            if (lpta_loadp_setscan_r(a1, a1 + 1168, 4))
            {
              goto LABEL_34;
            }

            bspush_ca_scan_boa();
LABEL_18:
            if (test_synch(a1, 15, 1, &string_17))
            {
              v6 = v5;
            }

            else
            {
              v6 = 1;
            }

            goto LABEL_10;
          case 13:
            goto LABEL_34;
          case 14:
            bspop_boa(a1);
            v15 = advanc(a1);
            v6 = v5;
            if (v15)
            {
              goto LABEL_10;
            }

            goto LABEL_33;
          case 15:
            goto LABEL_18;
          case 16:
LABEL_33:
            savescptr(a1, 16, a1 + 1168);
LABEL_34:
            OUTLINED_FUNCTION_15_4();
            if (v12)
            {
              *(a1 + 1190) = *(a1 + 4914);
            }

            goto LABEL_37;
          case 17:
LABEL_37:
            insert_f0(a1, (a1 + 1168), (a1 + 1184));
            break;
          case 18:
            goto LABEL_38;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_38:
      *(a1 + 1218) = *(a1 + 2286);
    }

LABEL_39:
    *(a1 + 1176) = *(a1 + 3352);
    *(a1 + 1186) = 0;
    *(a1 + 1190) = 0;
LABEL_40:
    vretproc(a1);
    return 0;
  }
}

uint64_t insert_phrase_final_tones(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v28);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, SHIDWORD(v76), v78, SWORD2(v78), SHIWORD(v78), v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v82, v83))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_6(a1, 0, &null_str_0);
    if (*(a1 + 2286) == *(a1 + 734))
    {
      phrase_tone(a1);
      insert_preset_phrase_tone(a1, v20, v21, v22, v23, v24, v25, v26);
      OUTLINED_FUNCTION_20_3();
      if (v27)
      {
        boundary_tone(a1);
      }
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t add_f0_for_next_voice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v125) = 0;
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v78);
  OUTLINED_FUNCTION_2_6(v10, v11, v12, v13, v14, v15, v16, v17, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_6(v18, v19, v20, v21, v22, v23, v24, v25, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, SHIDWORD(v126), v128, SWORD2(v128), SHIWORD(v128), v130, SWORD2(v130), SBYTE6(v130), SHIBYTE(v130), v132, v133))
  {
LABEL_5:
    v48 = 94;
  }

  else
  {
    fence_6(a1, 0, &null_str_0);
    v26 = OUTLINED_FUNCTION_4_5();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_5_5();
    bspush_ca(v28);
    *(a1 + 4722) = 9;
    npush_v(a1, (a1 + 4720), v29, v30, v31, v32, v33, v34);
    *(a1 + 4850) = 9;
    npush_v(a1, (a1 + 4848), v35, v36, v37, v38, v39, v40);
    if (if_testneq(a1, v41, v42, v43, v44, v45, v46, v47))
    {
      goto LABEL_8;
    }

LABEL_7:
    while (1)
    {
      v50 = OUTLINED_FUNCTION_4_5();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_13_5();
      move_i(v52, v53, 5);
      v54 = OUTLINED_FUNCTION_14_4();
      if (!insert_f0(v54, v55, v56))
      {
        break;
      }

LABEL_8:
      while (1)
      {
        v57 = *(a1 + 104);
        v58 = v57 ? OUTLINED_FUNCTION_12_5(v57) : OUTLINED_FUNCTION_19_3();
        if (v58 != 2)
        {
          break;
        }

        *(a1 + 4722) = 10;
        npush_v(a1, (a1 + 4720), v59, v60, v61, v62, v63, v64);
        *(a1 + 4850) = 10;
        npush_v(a1, (a1 + 4848), v65, v66, v67, v68, v69, v70);
        if (!if_testneq(a1, v71, v72, v73, v74, v75, v76, v77))
        {
          goto LABEL_7;
        }
      }

      if (v58 == 1)
      {
        break;
      }

      if (v58 != 3)
      {
        goto LABEL_5;
      }
    }

    v48 = 0;
  }

  vretproc(a1);
  return v48;
}

uint64_t insert_preset_phrase_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v39);
  OUTLINED_FUNCTION_2_6(v10, v11, v12, v13, v14, v15, v16, v17, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_0_6(v18, v19, v20, v21, v22, v23, v24, v25, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, SHIDWORD(v87), v89, SWORD2(v89), SHIWORD(v89), v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v93, v94) || (fence_6(a1, 0, &null_str_0), lpta_loadpn(a1, a1 + 1192), rpta_loadpn(a1, a1 + 3344), !compare_ptas(a1)) && !testeq(a1))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    v27 = 0;
    while (2)
    {
      v28 = v27;
      v29 = OUTLINED_FUNCTION_13_5();
      starttest(v29, v30);
      OUTLINED_FUNCTION_11_5();
      bspush_ca_boa();
      v31 = OUTLINED_FUNCTION_17_4();
      v33 = lpta_loadp_setscan_l(v31, v32, 7);
      if (v33)
      {
        v36 = v28;
      }

      else
      {
        *(a1 + 136) = 1;
        if (OUTLINED_FUNCTION_18_3(v33, v34, v35))
        {
          v36 = v28;
        }

        else
        {
          v36 = 1;
        }
      }

      v37 = *(a1 + 104);
      if (v37)
      {
        *(a1 + 104) = 0;
        v38 = v37;
        v27 = v36;
      }

      else
      {
        v38 = vback(a1, v36);
        v27 = 0;
      }

      switch(v38)
      {
        case 1:
          continue;
        case 2:
          *(a1 + 1200) = *(a1 + 808);
          insert_f0(a1, (a1 + 1192), (a1 + 1208));
          break;
        case 3:
          bspop_boa(a1);
          goto LABEL_3;
        case 4:
          goto LABEL_17;
        default:
          goto LABEL_3;
      }

      break;
    }

LABEL_17:
    *(a1 + 1200) = *(a1 + 3352);
    *(a1 + 1210) = 0;
    *(a1 + 1214) = 0;
    vretproc(a1);
    return 0;
  }
}

uint64_t init_voice_vars(uint64_t a1)
{
  v120 = *MEMORY[0x277D85DE8];
  v115 = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v114, v2);
  OUTLINED_FUNCTION_7_5();
  bzero(v119, v3);
  if (setjmp(v119) || (v4 = ventproc(a1, v114, v118, v117, v116, v119), v4))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    v115 = 65532;
    OUTLINED_FUNCTION_23_3(v4, v5, &null_str_0);
    set_f0_wind_and_base(a1);
    while (2)
    {
      *(a1 + 4970) = (*(a1 + 4760) * 5.0 / 10.0);
      starttest(a1, 2);
      *(a1 + 4722) = 11;
      OUTLINED_FUNCTION_27_2(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_11_5();
      c_assvar(v15, v16);
      HIWORD(v115) = -9999;
      v17 = OUTLINED_FUNCTION_11_5();
      npush_v(v17, v18, v19, v20, v21, v22, v23, v24);
      v32 = if_testneq(a1, v25, v26, v27, v28, v29, v30, v31);
      if (v32)
      {
        goto LABEL_14;
      }

      *(a1 + 4722) = 11;
      OUTLINED_FUNCTION_26_3(v32, (a1 + 3292));
LABEL_7:
      starttest(a1, 4);
      *(a1 + 4722) = 12;
      OUTLINED_FUNCTION_27_2(v33, v34, v35, v36, v37, v38, v39, v40);
      v41 = OUTLINED_FUNCTION_11_5();
      c_assvar(v41, v42);
      HIWORD(v115) = -9999;
      v43 = OUTLINED_FUNCTION_11_5();
      npush_v(v43, v44, v45, v46, v47, v48, v49, v50);
      v58 = if_testneq(a1, v51, v52, v53, v54, v55, v56, v57);
      if (v58)
      {
        goto LABEL_14;
      }

      *(a1 + 4722) = 12;
      OUTLINED_FUNCTION_26_3(v58, (a1 + 3296));
LABEL_9:
      v59 = *(a1 + 4970);
      if (v59 < *(a1 + 3298))
      {
        *(a1 + 3298) = v59;
      }

LABEL_11:
      starttest(a1, 7);
      *(a1 + 4722) = 13;
      OUTLINED_FUNCTION_27_2(v60, v61, v62, v63, v64, v65, v66, v67);
      v68 = OUTLINED_FUNCTION_11_5();
      c_assvar(v68, v69);
      HIWORD(v115) = -9999;
      v70 = OUTLINED_FUNCTION_11_5();
      npush_v(v70, v71, v72, v73, v74, v75, v76, v77);
      v85 = if_testneq(a1, v78, v79, v80, v81, v82, v83, v84);
      if (v85)
      {
        goto LABEL_14;
      }

      *(a1 + 4722) = 13;
      OUTLINED_FUNCTION_26_3(v85, (a1 + 3300));
LABEL_13:
      starttest(a1, 9);
      *(a1 + 4722) = 14;
      OUTLINED_FUNCTION_27_2(v86, v87, v88, v89, v90, v91, v92, v93);
      v94 = OUTLINED_FUNCTION_11_5();
      c_assvar(v94, v95);
      HIWORD(v115) = -9999;
      v96 = OUTLINED_FUNCTION_11_5();
      npush_v(v96, v97, v98, v99, v100, v101, v102, v103);
      v111 = if_testneq(a1, v104, v105, v106, v107, v108, v109, v110);
      if (v111)
      {
LABEL_14:
        v112 = *(a1 + 104);
        if (v112)
        {
          v113 = OUTLINED_FUNCTION_12_5(v112);
        }

        else
        {
          v113 = vback(a1, 0);
        }

        switch(v113)
        {
          case 1:
            continue;
          case 2:
            *(a1 + 3294) = -1;
            goto LABEL_7;
          case 3:
            goto LABEL_7;
          case 4:
            *(a1 + 3298) = 3 * *(a1 + 5378);
            goto LABEL_9;
          case 5:
            goto LABEL_9;
          case 6:
            goto LABEL_11;
          case 7:
            *(a1 + 3302) = 0;
            goto LABEL_13;
          case 8:
            goto LABEL_13;
          case 9:
            *(a1 + 3306) = 10;
            goto LABEL_22;
          case 10:
            goto LABEL_22;
          case 11:
            goto LABEL_25;
          case 12:
            goto LABEL_24;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    *(a1 + 4722) = 14;
    OUTLINED_FUNCTION_26_3(v111, (a1 + 3304));
LABEL_22:
    if (*(a1 + 5352) != 0.0)
    {
      f0_step(a1, (a1 + 5376), (a1 + 5328), (a1 + 3292), (a1 + 3296), a1 + 1752);
LABEL_24:
      f0_step(a1, (a1 + 5376), (a1 + 5344), (a1 + 3300), (a1 + 3304), a1 + 1768);
    }

LABEL_25:
    vretproc(a1);
    return 0;
  }
}

uint64_t init_nuclwrd_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v146);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, SHIDWORD(v194), v196, SWORD2(v196), SHIWORD(v196), v198, SWORD2(v198), SBYTE6(v198), SHIBYTE(v198), v200, v201))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_6(a1, 0, &null_str_0);
  fence_6(a1, 1, &string_7_0);
  *(a1 + 1744) = *(a1 + 3352);
  starttest(a1, 1);
  if (lpta_loadp_setscan_r(a1, a1 + 1448, 5))
  {
LABEL_5:
    v20 = OUTLINED_FUNCTION_5_5();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_9_5();
    if (!lpta_loadp_setscan_l(v22, v23, v24))
    {
LABEL_11:
      v32 = OUTLINED_FUNCTION_5_5();
      bspush_ca_scan(v32, v33);
      v34 = OUTLINED_FUNCTION_10_5();
      if (npush_fld(v34, v35, 5u))
      {
        goto LABEL_44;
      }

      npush_v(a1, (a1 + 3032), v36, v37, v38, v39, v40, v41);
      if (if_testle(a1, v42, v43, v44, v45, v46, v47, v48) || advance_tok(a1, v49, v50, v51))
      {
        goto LABEL_44;
      }

LABEL_14:
      savescptr(a1, 7, a1 + 1736);
    }

LABEL_15:
    v52 = OUTLINED_FUNCTION_5_5();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_9_5();
    if (lpta_loadp_setscan_r(v54, v55, v56))
    {
LABEL_16:
      v57 = OUTLINED_FUNCTION_5_5();
      starttest(v57, v58);
      v59 = OUTLINED_FUNCTION_9_5();
      if (!lpta_loadp_setscan_r(v59, v60, v61))
      {
        v120 = OUTLINED_FUNCTION_1_6();
        if (testFldeq(v120, v121, v122, 1) || advance_tok(a1, v123, v124, v125))
        {
          goto LABEL_44;
        }

        v88 = 3314;
        goto LABEL_27;
      }

LABEL_17:
      v62 = OUTLINED_FUNCTION_5_5();
      starttest(v62, v63);
      v64 = OUTLINED_FUNCTION_9_5();
      if (!lpta_loadp_setscan_r(v64, v65, v66))
      {
        v126 = OUTLINED_FUNCTION_1_6();
        if (testFldeq(v126, v127, v128, 2) || advance_tok(a1, v129, v130, v131))
        {
          goto LABEL_44;
        }

        v88 = 3318;
        goto LABEL_27;
      }

LABEL_18:
      v67 = OUTLINED_FUNCTION_5_5();
      starttest(v67, v68);
      v69 = OUTLINED_FUNCTION_9_5();
      if (!lpta_loadp_setscan_r(v69, v70, v71))
      {
        v132 = OUTLINED_FUNCTION_1_6();
        if (testFldeq(v132, v133, v134, 3) || advance_tok(a1, v135, v136, v137))
        {
          goto LABEL_44;
        }

        v88 = 3322;
        goto LABEL_27;
      }

LABEL_19:
      v72 = OUTLINED_FUNCTION_5_5();
      starttest(v72, v73);
      v74 = OUTLINED_FUNCTION_9_5();
      if (!lpta_loadp_setscan_r(v74, v75, v76))
      {
        v138 = OUTLINED_FUNCTION_1_6();
        if (testFldeq(v138, v139, v140, 4) || advance_tok(a1, v141, v142, v143))
        {
          goto LABEL_44;
        }

        v88 = 3326;
        goto LABEL_27;
      }

LABEL_20:
      v77 = OUTLINED_FUNCTION_5_5();
      starttest(v77, v78);
      v79 = OUTLINED_FUNCTION_9_5();
      if (!lpta_loadp_setscan_r(v79, v80, v81))
      {
        v82 = OUTLINED_FUNCTION_1_6();
        if (testFldeq(v82, v83, v84, 5) || advance_tok(a1, v85, v86, v87))
        {
          goto LABEL_44;
        }

        v88 = 3330;
        goto LABEL_27;
      }
    }

    else
    {
      v89 = OUTLINED_FUNCTION_1_6();
      if (testFldeq(v89, v90, v91, v92) || advance_tok(a1, v93, v94, v95))
      {
        goto LABEL_44;
      }
    }

LABEL_26:
    v88 = 3310;
LABEL_27:
    *(a1 + 3274) = *(a1 + v88);
LABEL_28:
    v96 = OUTLINED_FUNCTION_5_5();
    starttest(v96, v97);
    v98 = OUTLINED_FUNCTION_9_5();
    if (lpta_loadp_setscan_r(v98, v99, v100))
    {
LABEL_51:
      v119 = *(a1 + 2542);
      goto LABEL_52;
    }

    v101 = OUTLINED_FUNCTION_10_5();
    if (!npush_fld(v101, v102, 5u))
    {
      npush_v(a1, (a1 + 3032), v103, v104, v105, v106, v107, v108);
      if (!if_testlt(a1, v109, v110, v111, v112, v113, v114, v115) && !advance_tok(a1, v116, v117, v118))
      {
        v119 = *(a1 + 3334);
LABEL_52:
        *(a1 + 3290) = v119;
        goto LABEL_53;
      }
    }

    goto LABEL_44;
  }

  bspush_ca_scan(a1, 2);
  v25 = a1;
  v26 = 6;
  while (2)
  {
    if (testFldeq(v25, 5u, 2, v26))
    {
      goto LABEL_44;
    }

LABEL_9:
    if (advance_tok(a1, v27, v28, v29))
    {
LABEL_44:
      v144 = *(a1 + 104);
      if (v144)
      {
        v145 = OUTLINED_FUNCTION_12_5(v144);
      }

      else
      {
        v145 = OUTLINED_FUNCTION_19_3();
      }

      switch(v145)
      {
        case 1:
          goto LABEL_5;
        case 2:
          v25 = a1;
          v26 = 7;
          continue;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_15;
        case 5:
          goto LABEL_11;
        case 6:
          if (!advance_tok(a1, v27, v28, v29))
          {
            goto LABEL_11;
          }

          goto LABEL_44;
        case 7:
          goto LABEL_14;
        case 8:
          goto LABEL_16;
        case 9:
          goto LABEL_28;
        case 10:
          goto LABEL_17;
        case 11:
          goto LABEL_18;
        case 12:
          goto LABEL_19;
        case 13:
          goto LABEL_20;
        case 14:
          goto LABEL_26;
        case 15:
          goto LABEL_51;
        case 16:
          goto LABEL_53;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v30 = *(a1 + 2542);
  *(a1 + 3274) = v30;
  *(a1 + 3290) = v30;
  v31 = *(a1 + 986);
  *(a1 + 954) = v31;
  *(a1 + 738) = v31;
  *(a1 + 1744) = *(a1 + 1456);
LABEL_53:
  vretproc(a1);
  return 0;
}

uint64_t set_f0_wind_and_base(double *a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v25);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
  v11 = setjmp(v1);
  if (v11 || (v19 = OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, SHIDWORD(v73), v75, SWORD2(v75), SHIWORD(v75), v77, SWORD2(v77), SBYTE6(v77), SHIBYTE(v77), v79, v80), v19))
  {
    v21 = 94;
  }

  else
  {
    v21 = 0;
    OUTLINED_FUNCTION_23_3(v19, v20, &null_str_0);
    OUTLINED_FUNCTION_22_3();
    a1[669] = v23;
    a1[667] = v24 + v23 * -9.0 / 10.0;
  }

  vretproc(a1);
  return v21;
}

uint64_t f0_step(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0.0;
  v30 = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v29, v12);
  OUTLINED_FUNCTION_7_5();
  bzero(v39, v13);
  if (setjmp(v39) || ventproc(a1, v29, v38, v37, v36, v39) || (get_parm(a1, &v35, a2, -4), get_parm(a1, &v34 + 4, a3, -4), get_parm(a1, &v34, a4, -4), get_parm(a1, &v33, a5, -4), v16 = OUTLINED_FUNCTION_14_4(), get_parm(v16, v17, v18, -5), v30 = 65532, fence_6(a1, 0, &null_str_0), !HIWORD(v34)))
  {
LABEL_3:
    v14 = 94;
  }

  else
  {
    while (2)
    {
      v19 = OUTLINED_FUNCTION_11_5();
      starttest(v19, v20);
      v21 = OUTLINED_FUNCTION_16_4();
      c_assvar(v21, v22);
      HIWORD(v30) = HIWORD(v34) + HIWORD(v33) * WORD1(v34);
      if (SHIWORD(v30) > 10)
      {
        v23 = *(a1 + 104);
        if (v23)
        {
          v24 = OUTLINED_FUNCTION_12_5(v23);
        }

        else
        {
          v24 = OUTLINED_FUNCTION_19_3();
        }

        switch(v24)
        {
          case 1:
            continue;
          case 2:
            v25 = v32;
            goto LABEL_17;
          case 3:
            v26 = SHIWORD(v33) * SWORD1(v34);
            goto LABEL_15;
          case 4:
            v27 = 0.0;
            goto LABEL_16;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

    v26 = 10 - SHIWORD(v34);
LABEL_15:
    v27 = v26;
LABEL_16:
    v28 = log(SHIWORD(v34) / (v27 + SHIWORD(v34)));
    v25 = v28 / SHIWORD(v35);
    v32 = v25;
LABEL_17:
    *(a6 + 8) = v25;
    v14 = 0;
  }

  vretproc(a1);
  return v14;
}

uint64_t realize_prenucl_tone(uint64_t a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v90);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, SHIDWORD(v138), v140, SWORD2(v140), SHIWORD(v140), v142, SWORD2(v142), SBYTE6(v142), SHIBYTE(v142), v144, v145))
  {
LABEL_3:
    v19 = 94;
    goto LABEL_4;
  }

  fence_6(a1, 0, &null_str_0);
  v21 = OUTLINED_FUNCTION_4_5();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_9_5();
  if (lpta_loadp_setscan_r(v23, v24, v25))
  {
LABEL_9:
    v33 = OUTLINED_FUNCTION_5_5();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_9_5();
    if (lpta_loadp_setscan_r(v35, v36, v37))
    {
LABEL_13:
      v44 = OUTLINED_FUNCTION_5_5();
      starttest(v44, v45);
      v46 = OUTLINED_FUNCTION_9_5();
      if (lpta_loadp_setscan_r(v46, v47, v48))
      {
LABEL_17:
        v55 = OUTLINED_FUNCTION_5_5();
        starttest(v55, v56);
        v57 = OUTLINED_FUNCTION_9_5();
        if (lpta_loadp_setscan_r(v57, v58, v59))
        {
LABEL_21:
          v66 = OUTLINED_FUNCTION_5_5();
          starttest(v66, v67);
          v68 = OUTLINED_FUNCTION_9_5();
          if (lpta_loadp_setscan_r(v68, v69, v70))
          {
LABEL_25:
            v77 = OUTLINED_FUNCTION_5_5();
            starttest(v77, v78);
            v79 = OUTLINED_FUNCTION_9_5();
            if (lpta_loadp_setscan_r(v79, v80, v81))
            {
              goto LABEL_33;
            }

            v82 = OUTLINED_FUNCTION_1_6();
            if (!testFldeq(v82, v83, v84, 4) && !advance_tok(a1, v85, v86, v87))
            {
              high_star_low_tone(a1);
              goto LABEL_33;
            }
          }

          else
          {
            v71 = OUTLINED_FUNCTION_1_6();
            if (!testFldeq(v71, v72, v73, 5) && !advance_tok(a1, v74, v75, v76))
            {
              high_low_star_tone(a1);
              goto LABEL_33;
            }
          }
        }

        else
        {
          v60 = OUTLINED_FUNCTION_1_6();
          if (!testFldeq(v60, v61, v62, 2) && !advance_tok(a1, v63, v64, v65))
          {
            low_star_high_tone(a1);
            goto LABEL_33;
          }
        }
      }

      else
      {
        v49 = OUTLINED_FUNCTION_1_6();
        if (!testFldeq(v49, v50, v51, 3) && !advance_tok(a1, v52, v53, v54))
        {
          low_high_star_tone(a1);
          goto LABEL_33;
        }
      }
    }

    else
    {
      v38 = OUTLINED_FUNCTION_1_6();
      if (!testFldeq(v38, v39, v40, 1) && !advance_tok(a1, v41, v42, v43))
      {
        low_tone(a1);
        goto LABEL_33;
      }
    }
  }

  else
  {
    v26 = OUTLINED_FUNCTION_1_6();
    if (!testFldeq(v26, v27, v28, v29) && !advance_tok(a1, v30, v31, v32))
    {
      high_tone(a1);
LABEL_33:
      v19 = 0;
      goto LABEL_4;
    }
  }

  v88 = *(a1 + 104);
  if (v88)
  {
    v89 = OUTLINED_FUNCTION_12_5(v88);
  }

  else
  {
    v89 = OUTLINED_FUNCTION_19_3();
  }

  v19 = 0;
  switch(v89)
  {
    case 1:
      goto LABEL_9;
    case 2:
    case 3:
    case 5:
    case 7:
    case 9:
    case 11:
    case 12:
      break;
    case 4:
      goto LABEL_13;
    case 6:
      goto LABEL_17;
    case 8:
      goto LABEL_21;
    case 10:
      goto LABEL_25;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(a1);
  return v19;
}

uint64_t modulate_pwind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v23);
  OUTLINED_FUNCTION_7_5();
  bzero(v52, v9);
  v10 = setjmp(v52);
  if (v10 || OUTLINED_FUNCTION_0_6(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, 0, v48, v49, SWORD2(v49), SHIWORD(v49), v50, SWORD2(v50), SBYTE6(v50), SHIBYTE(v50), v51, v52[0]))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_14_4();
    get_parm(v19, v20, v21, -4);
    fence_6(a1, 0, &null_str_0);
    if (*(a1 + 5352) != 0.0)
    {
      *(a1 + 4960) = *(a1 + 4960) * (1.0 / pow(0.86, v47) * 0.5);
      v22 = v47 * -0.01 + 1.05;
      if (v47 < 5)
      {
        v22 = v47 * 0.01 + 0.95;
      }

      *(a1 + 4944) = v22 * *(a1 + 4944);
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t insert_f0(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v48[0] = 0;
  v48[1] = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v41 = 65532;
  v42 = 0;
  v39 = 65532;
  v40 = 0;
  v38[0] = 0;
  v38[1] = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v37, v6);
  OUTLINED_FUNCTION_7_5();
  bzero(v52, v7);
  if (setjmp(v52) || ventproc(a1, v37, v51, v50, v49, v52))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    get_parm(a1, v48, a2, -6);
    get_parm(a1, &v47 + 4, a3, -4);
    v9 = OUTLINED_FUNCTION_14_4();
    get_parm(v9, v10, v11, -4);
    push_ptr_init(a1, &v45);
    push_ptr_init(a1, &v43);
    LOWORD(v42) = -4;
    LOWORD(v40) = -4;
    v12 = push_ptr_init(a1, v38);
    OUTLINED_FUNCTION_23_3(v12, v13, &null_str_0);
    v46 = *(a1 + 3352);
    v44 = v46;
    HIWORD(v42) = 0;
    HIWORD(v41) = 0;
    *(a1 + 4974) = WORD1(v47);
    HIWORD(v40) = *(a1 + 946) - 1;
    v14 = HIWORD(v47);
    if (SHIWORD(v47) <= 0)
    {
      HIWORD(v47) = 3;
      v14 = 3;
    }

    v15 = v14;
    v16 = 0;
    while (2)
    {
      if (v15 >= 100)
      {
        HIWORD(v47) = 97;
      }

      v17 = v16;
LABEL_10:
      v18 = v17;
      v19 = OUTLINED_FUNCTION_13_5();
      starttest(v19, v20);
      OUTLINED_FUNCTION_11_5();
      bspush_ca_boa();
      v21 = OUTLINED_FUNCTION_16_4();
      if (set_f0_range_ptrs(v21, v22, &v45, &v43, &v40))
      {
        v23 = v18;
      }

      else
      {
        v23 = 1;
      }

      v24 = *(a1 + 104);
      if (v24)
      {
        *(a1 + 104) = 0;
        v25 = v24;
        v16 = v23;
      }

      else
      {
        v25 = vback(a1, v23);
        v16 = 0;
      }

      v17 = v16;
      switch(v25)
      {
        case 1:
          v15 = HIWORD(v47);
          continue;
        case 2:
          goto LABEL_10;
        case 3:
          if (*(a1 + 5352) != 0.0)
          {
            goto LABEL_20;
          }

          v30 = *(a1 + 5336);
          goto LABEL_22;
        case 4:
          bspop_boa(a1);
          goto LABEL_3;
        case 5:
LABEL_20:
          v26 = *(a1 + 5336);
          v27 = SHIWORD(v40);
          v28 = v26 / exp(*(a1 + 1760) * v27);
          *(a1 + 4944) = v28;
          exp(*(a1 + 1776) * v27);
          OUTLINED_FUNCTION_22_3();
          v30 = (v28 + v29);
          *(a1 + 4960) = v31;
          if (*(a1 + 4970) > v30)
          {
            LOWORD(v30) = *(a1 + 4970);
          }

LABEL_22:
          HIWORD(v41) = v30;
          goto LABEL_23;
        case 6:
LABEL_23:
          v32 = OUTLINED_FUNCTION_13_5();
          lpta_rpta_loadp(v32, v33, v34);
          dur_expr(a1, 8, &v39);
          HIWORD(v42) = ((SHIWORD(v39) * SHIWORD(v47)) / 100.0);
          v35 = OUTLINED_FUNCTION_13_5();
          if (valid_f0_posn(v35, v36))
          {
            goto LABEL_26;
          }

          addStreamArrayPtVal();
LABEL_25:
          *(a1 + 4640) = *(a1 + 5056);
          *(a1 + 4656) = SHIWORD(v41);
LABEL_26:
          vretproc(a1);
          result = 0;
          break;
        case 7:
          goto LABEL_26;
        case 8:
          goto LABEL_25;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

uint64_t set_f0_range_ptrs(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, __int16 *a5)
{
  v84 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v72[0] = 0;
  v72[1] = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v71, v7);
  OUTLINED_FUNCTION_7_5();
  bzero(v83, v8);
  if (setjmp(v83) || ventproc(a1, v71, v82, v81, v80, v83))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v10 = OUTLINED_FUNCTION_25_3();
  get_parm(v10, v11, a2, -6);
  get_parm(a1, &v76, a3, -6);
  get_parm(a1, &v74, a4, -6);
  get_parm(a1, &v73, a5, -4);
  v12 = push_ptr_init(a1, v72);
  OUTLINED_FUNCTION_23_3(v12, v13, &null_str_0);
  v14 = *(a1 + 978);
  v15 = OUTLINED_FUNCTION_25_3();
  lpta_loadpn(v15, v16);
  rpta_loadpn(a1, a1 + 1136);
  if (compare_ptas(a1))
  {
    v17 = v14;
    v18 = 0;
  }

  else
  {
    if (!testeq(a1))
    {
      v19 = OUTLINED_FUNCTION_4_5();
      starttest(v19, v20);
      OUTLINED_FUNCTION_5_5();
      bspush_ca_boa();
      v21 = in_syllable() == 0;
      v17 = v14;
      goto LABEL_23;
    }

    v17 = v14;
    v18 = 0;
  }

LABEL_10:
  v22 = OUTLINED_FUNCTION_5_5();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_24_3();
  if (!lpta_loadp_setscan_r(v24, v25, 4))
  {
    OUTLINED_FUNCTION_5_5();
    bspush_ca_scan_boa();
    if (advanc(a1))
    {
      v21 = v18;
    }

    else
    {
      v21 = 1;
    }

    goto LABEL_23;
  }

  v26 = v17;
  v27 = v18;
LABEL_12:
  v28 = v26;
  v29 = OUTLINED_FUNCTION_24_3();
  lpta_loadpn(v29, v30);
  rpta_loadpn(a1, a1 + 784);
  if (compare_ptas(a1) || testeq(a1))
  {
    LODWORD(v31) = v27;
LABEL_15:
    v32 = OUTLINED_FUNCTION_5_5();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_24_3();
    v36 = lpta_loadp_setscan_r(v34, v35, 4);
    v37 = v28;
    if (!v36)
    {
LABEL_16:
      v17 = v37;
      savescptr(a1, 17, &v76);
      v41 = advance_tok(a1, v38, v39, v40);
      v21 = v31;
      if (!v41)
      {
LABEL_17:
        v42 = 18;
        goto LABEL_47;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v43 = OUTLINED_FUNCTION_5_5();
    starttest_l(v43, v44);
    v45 = OUTLINED_FUNCTION_24_3();
    if (!lpta_loadp_setscan_r(v45, v46, 8))
    {
LABEL_45:
      v63 = v27;
      v17 = v28;
      savescptr(a1, 15, &v76);
      v67 = advance_tok(a1, v64, v65, v66);
      v21 = v63;
      if (!v67)
      {
LABEL_46:
        v42 = 16;
LABEL_47:
        v50 = v42;
LABEL_48:
        savescptr(a1, v50, &v74);
        goto LABEL_49;
      }

      while (1)
      {
LABEL_23:
        v47 = *(a1 + 104);
        if (v47)
        {
          v48 = OUTLINED_FUNCTION_12_5(v47);
          v31 = v49;
        }

        else
        {
          v48 = vback(a1, v21);
          v31 = 0;
        }

        v50 = 11;
        switch(v48)
        {
          case 1:
            goto LABEL_9;
          case 2:
            bspop_boa(a1);
            --HIWORD(v73);
            v17 = *(a1 + 1006);
LABEL_9:
            v18 = v31;
            goto LABEL_10;
          case 3:
            v26 = v17;
            v27 = v31;
            goto LABEL_12;
          case 4:
            bspop_boa(a1);
            v51 = testFldeq(a1, 4u, 1, 2);
            v21 = v31;
            if (v51)
            {
              continue;
            }

            v54 = advance_tok(a1, v31, v52, v53);
            v21 = v31;
            if (v54)
            {
              continue;
            }

            goto LABEL_29;
          case 5:
LABEL_29:
            v55 = OUTLINED_FUNCTION_25_3();
            savescptr(v55, v56, v72);
            v58 = (a1 + 856);
            v57 = (a1 + 840);
            if (*(a1 + 978) != v17)
            {
              goto LABEL_30;
            }

            goto LABEL_31;
          case 6:
LABEL_30:
            v57 = (a1 + 872);
            v58 = (a1 + 888);
LABEL_31:
            v77 = *v57;
            v75 = *v58;
            goto LABEL_32;
          case 7:
LABEL_32:
            starttest(a1, 8);
            if (lpta_loadp_setscan_r(a1, &v74, 4))
            {
              goto LABEL_49;
            }

            bspush_ca_scan_boa();
LABEL_34:
            if (test_synch(a1, 10, 1, &string_17))
            {
              v21 = v31;
            }

            else
            {
              v21 = 1;
            }

            break;
          case 8:
          case 12:
          case 14:
            goto LABEL_49;
          case 9:
            bspop_boa(a1);
            v59 = testFldeq(a1, 4u, 4, 4);
            v21 = v31;
            if (v59)
            {
              continue;
            }

            v62 = advance_tok(a1, v31, v60, v61);
            v21 = v31;
            if (v62)
            {
              continue;
            }

            v50 = 11;
            goto LABEL_48;
          case 10:
            goto LABEL_34;
          case 11:
            goto LABEL_48;
          case 13:
            v28 = v17;
            goto LABEL_15;
          case 15:
            v28 = v17;
            v27 = v31;
            goto LABEL_45;
          case 16:
            goto LABEL_46;
          case 17:
            v37 = v17;
            goto LABEL_16;
          case 18:
            goto LABEL_17;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_49:
  *(a3 + 8) = v77;
  *(a4 + 8) = v75;
  a5[1] = HIWORD(v73);
  vretproc(a1);
  return 0;
}

uint64_t valid_f0_posn(double *a1, __int16 *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v26 = 0;
  OUTLINED_FUNCTION_8_5();
  bzero(v25, v4);
  OUTLINED_FUNCTION_7_5();
  bzero(v39, v5);
  v6 = setjmp(v39);
  if (v6 || OUTLINED_FUNCTION_21_3(v6, v7, v8, v9, v10, v11, v12, v13, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21], v25[22], v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]) || (v15 = OUTLINED_FUNCTION_16_4(), get_parm(v15, v16, a2, -6), v17 = OUTLINED_FUNCTION_14_4(), get_parm(v17, v18, v19, -4), LODWORD(v26) = 65532, fence_6(a1, 0, &null_str_0), v20 = OUTLINED_FUNCTION_17_4(), lpta_rpta_loadp(v20, v21, &v27), dur_expr(a1, 8, &v26), v22 = a1[273] + SWORD1(v26) + SHIWORD(v26), a1[632] = v22, v23 = a1[580], v23 >= v22) && (v23 != 0.0 || v22 != 0.0))
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

uint64_t shift_tone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_5(a1, a2, a3, a4, a5, a6, a7, a8, v60);
  OUTLINED_FUNCTION_7_5();
  bzero(v89, v10);
  v11 = setjmp(v89);
  if (!v11 && !OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, 0, v85, v86, SWORD2(v86), SHIWORD(v86), v87, SWORD2(v87), SBYTE6(v87), SHIBYTE(v87), v88, v89[0]))
  {
    v21 = OUTLINED_FUNCTION_14_4();
    get_parm(v21, v22, v23, -4);
    fence_6(a1, 0, &null_str_0);
    v24 = OUTLINED_FUNCTION_4_5();
    starttest(v24, v25);
    v26 = OUTLINED_FUNCTION_9_5();
    if (lpta_loadp_setscan_r(v26, v27, v28))
    {
      goto LABEL_19;
    }

    v29 = OUTLINED_FUNCTION_10_5();
    if (npush_fld(v29, v30, 5u))
    {
      goto LABEL_13;
    }

    npush_v(a1, (a1 + 3032), v31, v32, v33, v34, v35, v36);
    if (if_testlt(a1, v37, v38, v39, v40, v41, v42, v43))
    {
      goto LABEL_13;
    }

    while (2)
    {
      if (!advance_tok(a1, v44, v45, v46))
      {
LABEL_9:
        v47 = OUTLINED_FUNCTION_5_5();
        bspush_ca_scan(v47, v48);
        *(a1 + 136) = 1;
        if (!OUTLINED_FUNCTION_18_3(v49, v50, v51))
        {
          v52 = OUTLINED_FUNCTION_5_5();
          starttest(v52, v53);
          if (lpta_loadp_setscan_r(a1, a1 + 1448, 5))
          {
LABEL_17:
            v59 = 20;
          }

          else
          {
            if (testFldeq(a1, 5u, 1, 3) || advance_tok(a1, v54, v55, v56))
            {
              goto LABEL_13;
            }

            v59 = -20;
          }

          v84 += v59;
LABEL_19:
          *(a2 + 2) = v84;
          v19 = 0;
          goto LABEL_4;
        }
      }

LABEL_13:
      v57 = *(a1 + 104);
      if (v57)
      {
        v58 = OUTLINED_FUNCTION_12_5(v57);
      }

      else
      {
        v58 = OUTLINED_FUNCTION_19_3();
      }

      switch(v58)
      {
        case 1:
          goto LABEL_19;
        case 2:
          goto LABEL_9;
        case 3:
          continue;
        case 4:
          goto LABEL_17;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v19 = 94;
LABEL_4:
  vretproc(a1);
  return v19;
}

uint64_t find_most_stressed_syll(void *a1)
{
  OUTLINED_FUNCTION_3_6(*MEMORY[0x277D85DE8], v28);
  OUTLINED_FUNCTION_2_6(v3, v4, v5, v6, v7, v8, v9, v10, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_6(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, SHIDWORD(v76), v78, SWORD2(v78), SHIWORD(v78), v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v82, v83))
  {
LABEL_3:
    v19 = 94;
  }

  else
  {
    fence_6(a1, 0, &null_str_0);
    fence_6(a1, 1, &_MergedGlobals_2);
    starttest(a1, 1);
    if (lpta_loadp_setscan_l(a1, (a1 + 86), 7))
    {
LABEL_6:
      v19 = 0;
      a1[89] = a1[85];
    }

    else
    {
      while (2)
      {
        v21 = OUTLINED_FUNCTION_13_5();
        bspush_ca_scan(v21, v22);
        if (test_string_i())
        {
LABEL_8:
          v23 = a1[13];
          if (v23)
          {
            v24 = OUTLINED_FUNCTION_12_5(v23);
          }

          else
          {
            v24 = OUTLINED_FUNCTION_19_3();
          }

          switch(v24)
          {
            case 1:
              goto LABEL_6;
            case 2:
              continue;
            case 3:
              if (!advance_tok(a1, v25, v26, v27))
              {
                continue;
              }

              goto LABEL_8;
            case 4:
              goto LABEL_14;
            case 5:
              goto LABEL_15;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

LABEL_14:
      savescptr(a1, 4, (a1 + 88));
LABEL_15:
      v19 = 0;
    }
  }

  vretproc(a1);
  return v19;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_3_6(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = v3;
  *(v4 + 128) = 0;

  return test_ptr(v4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a10, &a44, &a40, &a37, &a46);
}

void *OUTLINED_FUNCTION_23_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_6(v3, 0, a3);
}

double OUTLINED_FUNCTION_26_3(uint64_t a1, __int16 *a2)
{

  copyvar(v2, a2, (v2 + v3));
  return result;
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(v8, (v8 + v9), a3, a4, a5, a6, a7, a8);
}

uint64_t doF(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v33[0] = 0;
  v32 = 0;
  HIDWORD(v31) = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v30, v6);
  OUTLINED_FUNCTION_10_6();
  bzero(v41, v7);
  v8 = setjmp(v41);
  if (v8 || OUTLINED_FUNCTION_26_4(v8, v30, v9, v10, v11, v12, v13, v14, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v30[17], v30[18], v30[19], v30[20], v30[21], v30[22], v31, v32, v33[0], v33[1], v33[2], v34, v35, v36, v37, v38, v39, v40, v41[0]))
  {
LABEL_3:
    v15 = 94;
    goto LABEL_4;
  }

  get_parm(a1, v33, a2, -4);
  get_parm(a1, &v32 + 4, a3, -4);
  v17 = OUTLINED_FUNCTION_20_4();
  get_parm(v17, v18, v19, -4);
  HIDWORD(v31) = 65532;
  fence_7(a1);
  if (SHIWORD(v32) >= 1)
  {
    if (*(a1 + 3400) < 16.0 && SWORD1(v32) >= 1)
    {
      HIWORD(v32) = vcvtd_n_f64_u32(SWORD1(v32) + SHIWORD(v32), 1uLL);
      WORD1(v32) = -1;
    }

LABEL_11:
    add_filtered_val(a1, v33, &v32 + 4, a1 + 2128, (a1 + 2128), a1 + 1576, (a1 + 1560));
LABEL_12:
    v21 = OUTLINED_FUNCTION_4_6();
    starttest(v21, v22);
    c_assvar(a1, &v31 + 2);
    HIWORD(v31) = -1;
    if (SWORD1(v32) != -1)
    {
      goto LABEL_16;
    }

    add_filtered_val(a1, v33, &v32 + 4, a1 + 2144, (a1 + 2144), a1 + 1544, (a1 + 1592));
  }

  while (2)
  {
    if (SWORD1(v32) < 1)
    {
LABEL_23:
      v15 = 0;
      break;
    }

    v23 = OUTLINED_FUNCTION_4_6();
    starttest(v23, v24);
    c_assvar(a1, &v31 + 2);
    HIWORD(v31) = -1;
    if (SHIWORD(v32) == -1)
    {
      v27 = a1 + 2128;
      v28 = (a1 + 2144);
      v29 = a1 + 1576;
LABEL_22:
      add_filtered_val(a1, v33, &v32, v27, v28, v29, (a1 + 1592));
      goto LABEL_23;
    }

LABEL_16:
    v25 = *(a1 + 104);
    if (v25)
    {
      v26 = OUTLINED_FUNCTION_21_4(v25);
    }

    else
    {
      v26 = vback(a1, 0);
    }

    v15 = 0;
    switch(v26)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_11;
      case 3:
        goto LABEL_12;
      case 4:
      case 6:
        goto LABEL_4;
      case 5:
        v27 = a1 + 2144;
        v28 = (a1 + 2144);
        v29 = a1 + 1544;
        goto LABEL_22;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  return v15;
}

void do_son_amps(uint64_t a1)
{
  OUTLINED_FUNCTION_32_0();
  v2 = v1;
  v257 = *MEMORY[0x277D85DE8];
  v251 = 0;
  v252 = 0.0;
  v249 = 0;
  v250 = 0.0;
  v247 = 0;
  v248 = 0.0;
  v246 = 0;
  v244 = 0;
  v245 = 0;
  v242 = 0;
  v243 = 0;
  v240 = 0;
  v241 = 0;
  v239[0] = 0;
  v239[1] = 0;
  v238[0] = 0;
  v238[1] = 0;
  v236 = 0;
  v237 = 0;
  v235 = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v234, v3);
  OUTLINED_FUNCTION_10_6();
  bzero(v256, v4);
  if (setjmp(v256) || ventproc(v2, v234, v255, v254, v253, v256))
  {
    goto LABEL_3;
  }

  v252 = 0.0;
  LOWORD(v251) = -5;
  v250 = 0.0;
  LOWORD(v249) = -5;
  v248 = 0.0;
  LOWORD(v247) = -5;
  v246 = 65532;
  push_ptr_init(v2, &v244);
  push_ptr_init(v2, &v242);
  push_ptr_init(v2, &v240);
  push_ptr_init(v2, v239);
  push_ptr_init(v2, v238);
  v237 = 0xFFFC0000FFFCLL;
  v236 = 0xFFFC0000FFFCLL;
  v235 = 0xFFFC0000FFFCLL;
  fence_7(v2);
  v252 = 0.0;
  v250 = 0.0;
  v248 = 0.0;
  if (*(v2 + 994) != *(v2 + 966))
  {
    v6 = OUTLINED_FUNCTION_4_6();
    starttest(v6, v7);
    v8 = OUTLINED_FUNCTION_4_6();
    bspush_ca(v8);
    v9 = 0;
    v10 = 0;
    if (*(v2 + 5110) != *(v2 + 5090))
    {
      goto LABEL_102;
    }

LABEL_7:
    v9 = v10;
    v11 = OUTLINED_FUNCTION_0_7();
    if (lpta_loadp_setscan_l(v11, v12, v13))
    {
      goto LABEL_102;
    }

    v14 = OUTLINED_FUNCTION_1_7();
    if (testFldeq(v14, v15, v16, 1))
    {
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_4_6();
    bspush_ca_scan_boa();
    v17 = OUTLINED_FUNCTION_6_6();
    v19 = 9;
    v20 = 1;
    goto LABEL_85;
  }

  v5 = 0;
LABEL_69:
  lpta_loadpn(v2, v2 + 1576);
  rpta_loadpn(v2, v2 + 800);
  if (compare_ptas(v2) || testeq(v2))
  {
    v9 = v5;
    goto LABEL_101;
  }

  if (*(v2 + 4362))
  {
    get_nuc_AV(v2);
  }

LABEL_79:
  lpta_loadpn(v2, v2 + 880);
  rpta_loadpn(v2, v2 + 832);
  if (compare_ptas(v2) || testeq(v2))
  {
LABEL_81:
    v137 = OUTLINED_FUNCTION_4_6();
    starttest(v137, v138);
    v139 = OUTLINED_FUNCTION_4_6();
    bspush_ca(v139);
    v25 = v5;
    v9 = v5;
    if (*(v2 + 5110) != *(v2 + 5090))
    {
      goto LABEL_102;
    }

LABEL_82:
    v9 = v25;
    v140 = OUTLINED_FUNCTION_0_7();
    if (lpta_loadp_setscan_l(v140, v141, v142))
    {
      goto LABEL_102;
    }

    v143 = OUTLINED_FUNCTION_1_7();
    if (testFldeq(v143, v144, v145, 1))
    {
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_4_6();
    bspush_ca_scan_boa();
    v17 = OUTLINED_FUNCTION_6_6();
    v19 = 2;
LABEL_85:
    if (!testFldeq(v17, v18, v19, v20))
    {
      v9 = 1;
    }

    goto LABEL_102;
  }

  v243 = *(v2 + 808);
  lpta_rpta_loadp(v2, v2 + 800, v2 + 1576);
  v146 = OUTLINED_FUNCTION_8_6();
  dur_expr(v146, v147, v148);
  v149 = (v2 + 2136);
  v232 = 1.0;
LABEL_88:
  v252 = *v149 - SHIWORD(v246) + v232;
  LODWORD(v24) = v5;
LABEL_89:
  v150 = OUTLINED_FUNCTION_4_6();
  starttest(v150, v151);
  v152 = OUTLINED_FUNCTION_7_6();
  if (lpta_loadp_setscan_r(v152, v153, 4))
  {
LABEL_90:
    v154 = v2 + 848;
    v155 = 856;
  }

  else
  {
    v208 = OUTLINED_FUNCTION_3_7();
    if (testFldeq(v208, v209, v210, 2))
    {
      v9 = v24;
      goto LABEL_102;
    }

    v214 = advance_tok(v2, v211, v212, v213);
    v155 = 824;
    v9 = v24;
    v154 = v2 + 816;
    if (v214)
    {
      goto LABEL_102;
    }
  }

  v241 = *(v2 + v155);
  lpta_rpta_loadp(v2, &v242, v154);
  v156 = OUTLINED_FUNCTION_8_6();
  dur_expr(v156, v157, v158);
  v250 = v252 + SHIWORD(v246) + -1.0;
LABEL_92:
  v136 = v24;
  *(v2 + 4722) = 6;
  v159 = OUTLINED_FUNCTION_13_6();
  if (!if_testneq_v_i(v159, v160, 100, v161, v162, v163, v164, v165))
  {
    OUTLINED_FUNCTION_12_6();
    doAV();
LABEL_94:
    OUTLINED_FUNCTION_12_6();
    doAV();
  }

LABEL_95:
  v166 = OUTLINED_FUNCTION_4_6();
  starttest(v166, v167);
  v168 = OUTLINED_FUNCTION_4_6();
  bspush_ca(v168);
  *(v2 + 4722) = 4;
  v169 = OUTLINED_FUNCTION_13_6();
  v177 = if_testeq_v_i(v169, v170, v171, v172, v173, v174, v175, v176);
  v9 = v136;
  v26 = v136;
  if (v177)
  {
    goto LABEL_102;
  }

LABEL_96:
  v9 = v26;
  if (*(v2 + 4530) != 1)
  {
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_28_2();
  addStreamArraySsVal(v2, v2 + 1988, (v2 + v178), v179, v180);
LABEL_98:
  v181 = OUTLINED_FUNCTION_4_6();
  starttest(v181, v182);
  v183 = OUTLINED_FUNCTION_4_6();
  bspush_ca(v183);
  *(v2 + 4722) = 4;
  v184 = OUTLINED_FUNCTION_13_6();
  v192 = if_testeq_v_i(v184, v185, v186, v187, v188, v189, v190, v191);
  v27 = v9;
  if (v192)
  {
    goto LABEL_102;
  }

LABEL_99:
  v9 = v27;
  if (*(v2 + 4518) != 1)
  {
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_15_5();
  addStreamArraySsVal(v2, v193, v194, v195, v196);
LABEL_101:
  while (1)
  {
    v197 = OUTLINED_FUNCTION_4_6();
    starttest(v197, v198);
    v199 = OUTLINED_FUNCTION_7_6();
    move_i(v199, v200, 0);
    v201 = OUTLINED_FUNCTION_9_6();
    move_i(v201, v202, 0);
    v203 = OUTLINED_FUNCTION_30_1();
    move_i(v203, v204, 0);
    move_i(v2, &v236 + 4, 0);
    move_i(v2, &v236, 0);
    move_i(v2, &v235 + 4, 0);
    move_i(v2, &v235, 0);
    v205 = OUTLINED_FUNCTION_7_6();
    do_fric_amps(v205, v206, &v237 + 4, &v237, &v236 + 4, &v236, &v235 + 4, &v235, v2 + 2128, v2 + 2144, v2 + 1576, v2 + 1592, v233, v234[0], v234[1], v234[2], v234[3], v234[4], v234[5], v234[6], v234[7], v234[8], v234[9], v234[10]);
    if (!v207)
    {
      break;
    }

LABEL_102:
    v149 = (v2 + 2136);
    v49 = v9;
    while (2)
    {
      v21 = *(v2 + 104);
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_21_4(v21);
        v24 = v23;
      }

      else
      {
        v22 = vback(v2, v49);
        v24 = 0;
      }

      v10 = v24;
      v25 = v24;
      v26 = v24;
      v27 = v24;
      switch(v22)
      {
        case 1:
          v5 = v24;
          goto LABEL_69;
        case 2:
          v28 = OUTLINED_FUNCTION_4_6();
          starttest(v28, v29);
          v30 = OUTLINED_FUNCTION_0_7();
          if (lpta_loadp_setscan_l(v30, v31, v32))
          {
            goto LABEL_15;
          }

          v118 = OUTLINED_FUNCTION_3_7();
          v121 = testFldeq(v118, v119, v120, 1);
          v49 = v24;
          if (v121)
          {
            continue;
          }

          v122 = OUTLINED_FUNCTION_6_6();
          v124 = testFldeq(v122, v123, 9, 2);
          v49 = v24;
          if (v124)
          {
            continue;
          }

          v127 = advance_tok(v2, v24, v125, v126);
          v49 = v24;
          if (v127)
          {
            continue;
          }

          lpta_loadpn(v2, v2 + 4664);
          rpta_loadpn(v2, v2 + 816);
          v128 = compare_ptas(v2);
          v49 = v24;
          if (v128)
          {
            continue;
          }

          v129 = testneq(v2);
          v49 = v24;
          if (v129)
          {
            continue;
          }

          lpta_loadpn(v2, v2 + 4664);
          rpta_loadpn(v2, v2 + 896);
          v130 = compare_ptas(v2);
          v49 = v24;
          if (v130)
          {
            continue;
          }

          v131 = testneq(v2);
          v49 = v24;
          if (v131)
          {
            continue;
          }

          v248 = *(v2 + 2120);
          v33 = *(v2 + 4672);
LABEL_16:
          v245 = v33;
LABEL_17:
          if (!*(v2 + 4514))
          {
            doAV();
          }

LABEL_19:
          v34 = OUTLINED_FUNCTION_4_6();
          starttest(v34, v35);
          v36 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v36);
          v37 = OUTLINED_FUNCTION_22_4();
LABEL_44:
          v112 = if_testeq_v_i(v37, v38, v39, v40, v41, v42, v43, v44);
          v49 = v24;
          if (v112)
          {
            continue;
          }

LABEL_45:
          v94 = (v2 + 4404);
          v49 = v24;
          if (*(v2 + 4530) != 1)
          {
            continue;
          }

LABEL_46:
          addStreamArraySsVal(v2, v2 + 1988, v94, &v247, (v2 + 2144));
LABEL_47:
          v113 = OUTLINED_FUNCTION_4_6();
          starttest(v113, v114);
          v115 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v115);
          v95 = OUTLINED_FUNCTION_22_4();
LABEL_48:
          v116 = if_testeq_v_i(v95, v96, v97, v98, v99, v100, v101, v102);
          v49 = v24;
          if (v116)
          {
            continue;
          }

LABEL_49:
          v49 = v24;
          if (*(v2 + 4518) != 1)
          {
            continue;
          }

LABEL_66:
          OUTLINED_FUNCTION_15_5();
          v135 = (v2 + 2144);
LABEL_76:
          addStreamArraySsVal(v2, v132, v133, v134, v135);
LABEL_77:
          v9 = v24;
          break;
        case 3:
          v88 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v88);
          v87 = *(v2 + 5098);
          goto LABEL_36;
        case 4:
          goto LABEL_7;
        case 5:
          v93 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v93);
          v87 = *(v2 + 5102);
          goto LABEL_36;
        case 6:
          v87 = *(v2 + 5122);
LABEL_36:
          v10 = v24;
          v49 = v24;
          if (v87 == *(v2 + 5090))
          {
            goto LABEL_7;
          }

          continue;
        case 7:
          bspop_boa(v2);
          OUTLINED_FUNCTION_4_6();
          bspush_ca_scan_boa();
          v89 = OUTLINED_FUNCTION_6_6();
          v92 = 2;
          goto LABEL_52;
        case 8:
          bspop_boa(v2);
          v65 = advance_tok(v2, v62, v63, v64);
          v49 = v24;
          if (v65)
          {
            continue;
          }

          lpta_rpta_loadp(v2, v2 + 4664, v2 + 1576);
          v66 = OUTLINED_FUNCTION_8_6();
          dur_expr(v66, v67, v68);
          v49 = v24;
          if (SHIWORD(v246) < 6)
          {
            continue;
          }

          c_assvar(v2, &v247);
          v248 = *(v2 + 2120) + 5.0;
          OUTLINED_FUNCTION_29_2();
          OUTLINED_FUNCTION_18_4();
          v69 = OUTLINED_FUNCTION_8_6();
          lpta_loadi(v69, v70, 5);
          v71 = OUTLINED_FUNCTION_8_6();
          inserted = insert_2pt_i(v71, v72, v73, v74, 205);
          v49 = v24;
          if (inserted)
          {
            continue;
          }

          rpta_storep(v2, &v244, v76);
          goto LABEL_17;
        case 9:
          goto LABEL_17;
        case 10:
LABEL_15:
          v248 = *(v2 + 2136);
          v33 = *(v2 + 1584);
          goto LABEL_16;
        case 11:
          goto LABEL_19;
        case 12:
          v94 = (v2 + 4560);
          if (!*(v2 + 4530))
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        case 13:
          v37 = OUTLINED_FUNCTION_2_7();
          goto LABEL_44;
        case 14:
          goto LABEL_45;
        case 15:
        case 16:
          goto LABEL_47;
        case 17:
          if (!*(v2 + 4518))
          {
            goto LABEL_66;
          }

          goto LABEL_77;
        case 18:
          v95 = OUTLINED_FUNCTION_2_7();
          goto LABEL_48;
        case 19:
          goto LABEL_49;
        case 20:
        case 21:
        case 22:
        case 45:
        case 46:
          goto LABEL_77;
        case 23:
          v5 = v24;
          goto LABEL_79;
        case 24:
          v5 = v24;
          goto LABEL_81;
        case 25:
          goto LABEL_89;
        case 26:
          v243 = *(v2 + 840);
          OUTLINED_FUNCTION_27_3();
          v221 = OUTLINED_FUNCTION_8_6();
          dur_expr(v221, v222, v223);
          v232 = 1.0;
          goto LABEL_110;
        case 27:
          v117 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v117);
          v61 = *(v2 + 5098);
          goto LABEL_56;
        case 28:
          goto LABEL_82;
        case 29:
          v77 = OUTLINED_FUNCTION_4_6();
          bspush_ca(v77);
          v61 = *(v2 + 5102);
          goto LABEL_56;
        case 30:
          v61 = *(v2 + 5122);
LABEL_56:
          v25 = v24;
          v49 = v24;
          if (v61 == *(v2 + 5090))
          {
            goto LABEL_82;
          }

          continue;
        case 31:
          bspop_boa(v2);
          OUTLINED_FUNCTION_4_6();
          bspush_ca_scan_boa();
          v89 = OUTLINED_FUNCTION_6_6();
          v92 = 9;
          v91 = 1;
LABEL_52:
          if (testFldeq(v89, v90, v92, v91))
          {
            v49 = v24;
          }

          else
          {
            v49 = 1;
          }

          continue;
        case 32:
          bspop_boa(v2);
          v48 = advance_tok(v2, v45, v46, v47);
          v49 = v24;
          if (v48)
          {
            continue;
          }

          OUTLINED_FUNCTION_27_3();
          v50 = OUTLINED_FUNCTION_8_6();
          dur_expr(v50, v51, v52);
          v49 = v24;
          if (SHIWORD(v246) < 6)
          {
            continue;
          }

          OUTLINED_FUNCTION_29_2();
          OUTLINED_FUNCTION_18_4();
          v53 = OUTLINED_FUNCTION_8_6();
          lpta_loadi(v53, v54, 5);
          v55 = OUTLINED_FUNCTION_8_6();
          v59 = insert_2pt_i(v55, v56, v57, v58, 205);
          v49 = v24;
          if (v59)
          {
            continue;
          }

          rpta_storep(v2, &v242, v60);
          OUTLINED_FUNCTION_27_3();
          v229 = OUTLINED_FUNCTION_8_6();
          dur_expr(v229, v230, v231);
          v232 = 6.0;
LABEL_110:
          v5 = v24;
          goto LABEL_88;
        case 33:
          goto LABEL_90;
        case 34:
          goto LABEL_92;
        case 35:
          v136 = v24;
          goto LABEL_95;
        case 36:
          v136 = v24;
          goto LABEL_94;
        case 37:
          OUTLINED_FUNCTION_28_2();
          v224 = OUTLINED_FUNCTION_20_4();
          addStreamArraySsVal(v224, v225, v226, v227, v228);
          goto LABEL_115;
        case 38:
          v78 = OUTLINED_FUNCTION_2_7();
          v86 = if_testeq_v_i(v78, v79, v80, v81, v82, v83, v84, v85);
          v26 = v24;
          v49 = v24;
          if (!v86)
          {
            goto LABEL_96;
          }

          continue;
        case 39:
          goto LABEL_96;
        case 40:
        case 41:
LABEL_115:
          v9 = v24;
          goto LABEL_98;
        case 42:
          OUTLINED_FUNCTION_28_2();
          OUTLINED_FUNCTION_15_5();
          goto LABEL_76;
        case 43:
          v103 = OUTLINED_FUNCTION_2_7();
          v111 = if_testeq_v_i(v103, v104, v105, v106, v107, v108, v109, v110);
          v27 = v24;
          v49 = v24;
          if (!v111)
          {
            goto LABEL_99;
          }

          continue;
        case 44:
          goto LABEL_99;
        case 47:
          goto LABEL_107;
        case 48:
          goto LABEL_108;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_107:
  *(v2 + 4722) = 7;
  OUTLINED_FUNCTION_14_5();
  addStreamArraySsVal(v2, v215, v216, v217, (v2 + 2144));
LABEL_108:
  OUTLINED_FUNCTION_14_5();
  addStreamArraySsVal(v2, v218, v219, v220, (v2 + 2144));
LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_33_0();
}

void do_fric_amps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 *a21, __int16 *a22, __int16 *a23, __int16 *a24)
{
  OUTLINED_FUNCTION_32_0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v61 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  OUTLINED_FUNCTION_11_6();
  bzero(v51, v38);
  OUTLINED_FUNCTION_10_6();
  bzero(v60, v39);
  if (!setjmp(v60) && !ventproc(v37, v51, v59, v58, v57, v60))
  {
    get_parm(v37, &v56, v35, -4);
    get_parm(v37, &v55 + 4, v33, -4);
    get_parm(v37, &v55, v31, -4);
    get_parm(v37, &v54 + 4, v29, -4);
    v40 = OUTLINED_FUNCTION_30_1();
    get_parm(v40, v41, v27, -4);
    get_parm(v37, &v53 + 4, v25, -4);
    v42 = OUTLINED_FUNCTION_20_4();
    get_parm(v42, v43, v44, -4);
    v45 = OUTLINED_FUNCTION_7_6();
    get_parm(v45, v46, a21, -5);
    v47 = OUTLINED_FUNCTION_9_6();
    get_parm(v47, v48, a22, -5);
    v49 = OUTLINED_FUNCTION_19_4();
    get_parm(v49, v50, a23, -6);
    get_parm(v37, v52, a24, -6);
    fence_7(v37);
    OUTLINED_FUNCTION_25_4(v37, (v37 + 252), &v56);
    OUTLINED_FUNCTION_25_4(v37, v37 + 2020, &v55 + 2);
    OUTLINED_FUNCTION_25_4(v37, (v37 + 253), &v55);
    OUTLINED_FUNCTION_25_4(v37, v37 + 2028, &v54 + 2);
    OUTLINED_FUNCTION_25_4(v37, (v37 + 254), &v54);
    OUTLINED_FUNCTION_25_4(v37, v37 + 2036, &v53 + 2);
    doAF();
  }

  vretproc(v37);
  OUTLINED_FUNCTION_33_0();
}

uint64_t set_seg_default_acoustic_vals(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_6();
  bzero(v6, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v10, v3);
  if (setjmp(v10) || ventproc(a1, v6, v9, v8, v7, v10))
  {
    v4 = 94;
  }

  else
  {
    fence_7(a1);
    v4 = 0;
    *(a1 + 1360) = *(a1 + 3352);
    *(a1 + 4370) = 0;
    *(a1 + 2216) = 0;
    *(a1 + 3400) = *(a1 + 2152) - *(a1 + 2136);
    *(a1 + 1568) = *(a1 + 1584);
    *(a1 + 1552) = *(a1 + 1600);
    *(a1 + 4514) = 0;
    *(a1 + 4518) = 0;
    *(a1 + 4522) = 0;
    *(a1 + 4530) = 0;
    *(a1 + 4578) = -1;
    *(a1 + 4582) = -1;
    *(a1 + 4586) = -1;
    *(a1 + 4590) = -1;
    *(a1 + 4594) = -1;
    *(a1 + 4598) = -1;
    *(a1 + 4602) = *(a1 + 4350);
    *(a1 + 4606) = -1;
    *(a1 + 4610) = *(a1 + 4354);
    *(a1 + 4614) = -1;
    *(a1 + 4374) = *(a1 + 4282);
    *(a1 + 4378) = *(a1 + 4286);
    *(a1 + 4382) = *(a1 + 4290);
    *(a1 + 4386) = *(a1 + 4294);
    *(a1 + 4390) = *(a1 + 4298);
    *(a1 + 4394) = 0;
    *(a1 + 4362) = -1;
    *(a1 + 4402) = 0;
    *(a1 + 4398) = 0;
    *(a1 + 4406) = 0;
    *(a1 + 4410) = 200;
    *(a1 + 4414) = 200;
    *(a1 + 4418) = 0;
    *(a1 + 4422) = 0;
    *(a1 + 4426) = 0;
    *(a1 + 4430) = 0;
    *(a1 + 4434) = 0;
    *(a1 + 4438) = 0;
    *(a1 + 4534) = 0;
    *(a1 + 4538) = 0;
    *(a1 + 4542) = 0;
    *(a1 + 4546) = 0;
    *(a1 + 4550) = 0;
    *(a1 + 4554) = 0;
    *(a1 + 4466) = 0;
    *(a1 + 4470) = 0;
    *(a1 + 4506) = 0;
    *(a1 + 4502) = 0;
    *(a1 + 4482) = 0;
    *(a1 + 4486) = 0;
    *(a1 + 4490) = 0;
    *(a1 + 4494) = 0;
    *(a1 + 4498) = 0;
    *(a1 + 4474) = -1;
    *(a1 + 4478) = -1;
    *(a1 + 4462) = -1;
    *(a1 + 4450) = -1;
  }

  vretproc(a1);
  return v4;
}

uint64_t final_voiced_release(uint64_t a1, __int16 *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  HIDWORD(v22) = 0;
  v23[0] = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v21, v4);
  OUTLINED_FUNCTION_10_6();
  bzero(v31, v5);
  v6 = setjmp(v31);
  if (v6 || OUTLINED_FUNCTION_26_4(v6, v21, v7, v8, v9, v10, v11, v12, v20, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], v21[12], v21[13], v21[14], v21[15], v21[16], v21[17], v21[18], v21[19], v21[20], v21[21], v21[22], v22, v23[0], v23[1], v23[2], v24, v25, v26, v27, v28, v29, v30, v31[0]))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    get_parm(a1, v23, a2, -4);
    v14 = OUTLINED_FUNCTION_20_4();
    get_parm(v14, v15, v16, -4);
    fence_7(a1);
    v17 = *(a1 + 2152);
    v18 = (*(a1 + 2168) - v17);
    v19 = 30.0;
    if (v18 <= 30)
    {
      v19 = (5 * v18) / 10.0;
    }

    *(a1 + 2216) = v17 + v19;
    *(a1 + 4470) = HIWORD(v23[0]);
    *(a1 + 4466) = HIWORD(v22);
    vretproc(a1);
    return 0;
  }
}

void do_FTZ_FTP(uint64_t a1)
{
  OUTLINED_FUNCTION_32_0();
  v2 = v1;
  v72 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v54, v3);
  OUTLINED_FUNCTION_10_6();
  bzero(v71, v4);
  v5 = setjmp(v71);
  if (v5 || OUTLINED_FUNCTION_23_4(v5, v54, v6, v7, v8, v9, v10, v11, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11], v54[12], v54[13], v54[14], v54[15], v54[16], v54[17], v54[18], v54[19], v54[20], v54[21], v54[22], v55, v56, v57, v58, v59, *&v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]))
  {
    goto LABEL_3;
  }

  LOWORD(v59) = -5;
  v12 = OUTLINED_FUNCTION_7_6();
  push_ptr_init(v12, v13);
  push_ptr_init(v2, &v55);
  fence_7(v2);
  v60 = 0.0;
  OUTLINED_FUNCTION_16_5();
  doFNP();
  v14 = 0;
  while (2)
  {
    v15 = OUTLINED_FUNCTION_9_6();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_30_1();
    bspush_ca(v17);
    v18 = OUTLINED_FUNCTION_0_7();
    if (lpta_loadp_setscan_r(v18, v19, v20) || (v21 = OUTLINED_FUNCTION_1_7(), testFldeq(v21, v22, v23, 4)) || (v24 = OUTLINED_FUNCTION_3_7(), testFldeq(v24, v25, v26, 1)))
    {
      v30 = v14;
      goto LABEL_10;
    }

LABEL_9:
    v31 = advance_tok(v2, v27, v28, v29);
    v30 = v14;
    if (v31)
    {
LABEL_10:
      v32 = *(v2 + 104);
      if (v32)
      {
        *(v2 + 104) = 0;
        v33 = v32;
        v14 = v30;
      }

      else
      {
        v33 = vback(v2, v30);
        v14 = 0;
      }

      switch(v33)
      {
        case 1:
          continue;
        case 2:
          OUTLINED_FUNCTION_16_5();
          goto LABEL_26;
        case 3:
          v30 = v14;
          if (*(v2 + 5122) != *(v2 + 5090))
          {
            goto LABEL_10;
          }

          v34 = OUTLINED_FUNCTION_0_7();
          v37 = lpta_loadp_setscan_l(v34, v35, v36);
          v30 = v14;
          if (v37)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        case 4:
          goto LABEL_24;
        case 5:
LABEL_16:
          savescptr(v2, 5, &v57);
          v38 = OUTLINED_FUNCTION_6_6();
          v40 = testFldeq(v38, v39, 7, 1);
          v30 = v14;
          if (!v40)
          {
            v41 = OUTLINED_FUNCTION_1_7();
            v44 = testFldeq(v41, v42, v43, 6);
            v30 = v14;
            if (!v44)
            {
              v47 = advance_tok(v2, v14, v45, v46);
              v30 = v14;
              if (!v47)
              {
                v48 = OUTLINED_FUNCTION_7_6();
                v50 = lpta_loadp_setscan_r(v48, v49, 4);
                v30 = v14;
                if (!v50)
                {
                  bspush_ca_scan_boa();
                  v51 = OUTLINED_FUNCTION_3_7();
                  if (testFldeq(v51, v52, v53, 2))
                  {
                    v30 = v14;
                  }

                  else
                  {
                    v30 = 1;
                  }
                }
              }
            }
          }

          goto LABEL_10;
        case 6:
          bspop_boa(v2);
          goto LABEL_9;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_24:
  v60 = *(v2 + 2136) + *(v2 + 3400) * 5.0 / 10.0;
  OUTLINED_FUNCTION_12_6();
LABEL_26:
  doFNZ();
LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_33_0();
}

uint64_t do_non_son_amps(uint64_t a1)
{
  v177 = *MEMORY[0x277D85DE8];
  v171 = 0;
  v172 = 0.0;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v166 = 0;
  v167 = 0;
  v165 = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(&v141, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v176, v3);
  if (setjmp(v176) || ventproc(a1, &v141, v175, v174, v173, v176))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    v172 = 0.0;
    LOWORD(v171) = -5;
    v170 = 65532;
    *&v169 = 0;
    *(&v169 + 6) = 0;
    LODWORD(v168) = -65532;
    push_ptr_init(a1, &v166);
    v165 = 65532;
    fence_7(a1);
    HIWORD(v170) = 0;
    v172 = *(a1 + 2152);
    v167 = *(a1 + 1600);
    if (*(a1 + 4506))
    {
      v5 = OUTLINED_FUNCTION_4_6();
      starttest(v5, v6);
      v7 = OUTLINED_FUNCTION_0_7();
      if (lpta_loadp_setscan_r(v7, v8, v9))
      {
        v10 = 0;
LABEL_7:
        *(a1 + 4506) = 0;
      }

      else
      {
        v92 = OUTLINED_FUNCTION_6_6();
        if (npush_fld(v92, v93, 0xBu))
        {
          goto LABEL_36;
        }

        v10 = 0;
        npush_i(a1);
        if (if_testneq(a1, v94, v95, v96, v97, v98, v99, v100))
        {
          goto LABEL_41;
        }

        if (advance_tok(a1, v101, v102, v103) || savetok(a1, &v168))
        {
LABEL_36:
          v10 = 0;
          goto LABEL_41;
        }

        WORD1(v168) = 11;
        copyvar(a1, &v170, &v168);
        v10 = 0;
        v172 = *(a1 + 2136) + *(a1 + 3400) - SHIWORD(v170);
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_9:
    v11 = OUTLINED_FUNCTION_4_6();
    starttest(v11, v12);
    OUTLINED_FUNCTION_34_0(v13, v14, v15, v16, v17, v18, v19, v20, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
    OUTLINED_FUNCTION_31_1();
    if (*(a1 + 4478) == -1)
    {
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_5_6();
    do_fric_amps(a1, v22, v23, v24, v25, v26, v27, a1 + v21, a1 + 2112, a1 + 2128, a1 + 4664, a1 + 1576, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
LABEL_11:
    if (*(a1 + 4522) != 1)
    {
      OUTLINED_FUNCTION_5_6();
      do_fric_amps(a1, v29, v30, v31, v32, v33, v34, a1 + v28, a1 + 2128, &v171, a1 + 1576, &v166, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
    }

LABEL_13:
    if (!*(a1 + 4514))
    {
      if (*(a1 + 2232) == 0.0)
      {
LABEL_15:
        doAV();
      }

      else
      {
        do_pt_voicing(a1);
      }
    }

LABEL_17:
    if (!*(a1 + 4518))
    {
      OUTLINED_FUNCTION_14_5();
      addStreamArraySsVal(a1, v35, v36, v37, v38);
    }

LABEL_19:
    if (!*(a1 + 4530))
    {
      OUTLINED_FUNCTION_14_5();
      addStreamArraySsVal(a1, v39, v40, v41, v42);
    }

LABEL_21:
    v43 = OUTLINED_FUNCTION_4_6();
    starttest(v43, v44);
    OUTLINED_FUNCTION_34_0(v45, v46, v47, v48, v49, v50, v51, v52, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
    OUTLINED_FUNCTION_31_1();
    if (*(a1 + 4450) != -1)
    {
      goto LABEL_41;
    }

LABEL_22:
    OUTLINED_FUNCTION_14_5();
    addStreamArraySsVal(a1, v53, v54, v55, v56);
LABEL_23:
    v57 = OUTLINED_FUNCTION_4_6();
    starttest(v57, v58);
    OUTLINED_FUNCTION_34_0(v59, v60, v61, v62, v63, v64, v65, v66, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
    OUTLINED_FUNCTION_31_1();
    if (*(a1 + 4462) != -1)
    {
      goto LABEL_41;
    }

    *(a1 + 4722) = 7;
LABEL_25:
    OUTLINED_FUNCTION_14_5();
    addStreamArraySsVal(a1, v67, v68, v69, v70);
LABEL_26:
    if (!*(a1 + 4506))
    {
      goto LABEL_48;
    }

    v71 = OUTLINED_FUNCTION_4_6();
    starttest(v71, v72);
    if (SHIWORD(v170) >= 16)
    {
      v73 = OUTLINED_FUNCTION_0_7();
      if (!lpta_loadp_setscan_r(v73, v74, v75))
      {
        OUTLINED_FUNCTION_4_6();
        bspush_ca_scan_boa();
        v90 = OUTLINED_FUNCTION_6_6();
        if (!testFldeq(v90, v91, 9, 1))
        {
          v10 = 1;
        }

        goto LABEL_41;
      }
    }

LABEL_29:
    v76 = v10;
    if (*(a1 + 4522) != 1)
    {
LABEL_30:
      OUTLINED_FUNCTION_5_6();
      do_fric_amps(a1, v77, v78, v79, v80, v81, v82, a1 + 4504, &v171, a1 + 2144, a1 + 1352, a1 + 1592, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
LABEL_31:
      v83 = OUTLINED_FUNCTION_4_6();
      starttest(v83, v84);
      v85 = OUTLINED_FUNCTION_9_6();
      move_i(v85, v86, v87);
      OUTLINED_FUNCTION_9_6();
      v88 = doAV();
      v89 = v10;
      if (v88)
      {
        goto LABEL_41;
      }

LABEL_54:
      v123 = v89;
      v124 = OUTLINED_FUNCTION_4_6();
      starttest(v124, v125);
      v126 = OUTLINED_FUNCTION_9_6();
      move_i(v126, v127, v128);
      v129 = addStreamArraySsVal(a1, a1 + 2008, &v165, &v171, (a1 + 2144));
      v10 = v123;
      v122 = v123;
      if (v129)
      {
        goto LABEL_41;
      }

LABEL_55:
      v130 = v122;
      v131 = OUTLINED_FUNCTION_4_6();
      starttest(v131, v132);
      v133 = OUTLINED_FUNCTION_9_6();
      move_i(v133, v134, v135);
      v136 = addStreamArraySsVal(a1, a1 + 1988, &v165, &v171, (a1 + 2144));
      v10 = v130;
      v76 = v130;
      if (v136)
      {
        goto LABEL_41;
      }
    }

    while (1)
    {
      v10 = v76;
      v112 = OUTLINED_FUNCTION_4_6();
      starttest(v112, v113);
      OUTLINED_FUNCTION_34_0(v114, v115, v116, v117, v118, v119, v120, v121, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
      OUTLINED_FUNCTION_31_1();
      if (*(a1 + 4474) != -1)
      {
        break;
      }

LABEL_41:
      v104 = v10;
      while (2)
      {
        v105 = *(a1 + 104);
        if (v105)
        {
          v106 = OUTLINED_FUNCTION_21_4(v105);
          v10 = v107;
        }

        else
        {
          v106 = vback(a1, v104);
          v10 = 0;
        }

        switch(v106)
        {
          case 1:
            goto LABEL_9;
          case 2:
            goto LABEL_7;
          case 3:
            goto LABEL_11;
          case 4:
            goto LABEL_13;
          case 5:
          case 7:
            goto LABEL_17;
          case 6:
            goto LABEL_15;
          case 8:
            goto LABEL_19;
          case 9:
            goto LABEL_21;
          case 10:
            goto LABEL_22;
          case 11:
          case 12:
            goto LABEL_23;
          case 13:
            goto LABEL_25;
          case 14:
          case 15:
            goto LABEL_26;
          case 16:
          case 19:
            break;
          case 17:
            goto LABEL_29;
          case 18:
            bspop_boa(a1);
            v111 = advance_tok(a1, v108, v109, v110);
            v104 = v10;
            if (v111)
            {
              continue;
            }

            modulate_burst(a1, &v171);
            break;
          case 20:
            goto LABEL_30;
          case 21:
            goto LABEL_31;
          case 22:
            v89 = v10;
            goto LABEL_54;
          case 23:
            v122 = v10;
            goto LABEL_55;
          case 24:
            goto LABEL_51;
          default:
            goto LABEL_3;
        }

        break;
      }

LABEL_48:
      v76 = v10;
    }

    do_fric_amps(a1, a1 + 4480, a1 + 4484, a1 + 4488, a1 + 4492, a1 + 4496, a1 + 4500, a1 + 4472, a1 + 2144, a1 + 2144, a1 + 1592, a1 + 1624, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
LABEL_51:
    vretproc(a1);
    return 0;
  }
}

uint64_t do_pt_voicing(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  HIDWORD(v23) = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v22, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v38, v3);
  v4 = setjmp(v38);
  if (v4 || OUTLINED_FUNCTION_23_4(v4, v22, v5, v6, v7, v8, v9, v10, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17], v22[18], v22[19], v22[20], v22[21], v22[22], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    LOWORD(v26) = -5;
    v12 = OUTLINED_FUNCTION_7_6();
    push_ptr_init(v12, v13);
    HIDWORD(v23) = 65532;
    fence_7(a1);
    doAV();
    while (1)
    {
      v27 = *(a1 + 2232);
      *(a1 + 2232) = 0;
      if (*(a1 + 4370) != 1)
      {
        break;
      }

      v14 = OUTLINED_FUNCTION_19_4();
      starttest_e(v14, v15);
      v16 = OUTLINED_FUNCTION_9_6();
      move_i(v16, v17, v18);
      OUTLINED_FUNCTION_9_6();
      if (!doAV())
      {
        break;
      }

      v19 = *(a1 + 104);
      if (v19)
      {
        *(a1 + 104) = 0;
        v20 = v19;
      }

      else
      {
        v20 = vback(a1, 0);
      }

      if (v20 != 1)
      {
        if (v20 != 2)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t do_release(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  v82[0] = 0;
  v82[1] = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v81, v2);
  OUTLINED_FUNCTION_10_6();
  bzero(v88, v3);
  if (setjmp(v88) || ventproc(a1, v81, v87, v86, v85, v88))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v83 = 65532;
  v84 = 65532;
  push_ptr_init(a1, v82);
  fence_7(a1);
  starttest(a1, 1);
  if (OUTLINED_FUNCTION_24_4() || (*(a1 + 136) = 1, OUTLINED_FUNCTION_18_4(), test_ptr(a1, v5, v6)) || (OUTLINED_FUNCTION_29_2(), OUTLINED_FUNCTION_18_4(), test_ptr(a1, v7, v8)) || advanc(a1))
  {
LABEL_8:
    if (*(a1 + 4466))
    {
      if (!OUTLINED_FUNCTION_24_4() && !advanc(a1))
      {
LABEL_11:
        savescptr(a1, 17, a1 + 1624);
      }

LABEL_12:
      if (*(a1 + 2216) == 0.0)
      {
        doAV();
      }

LABEL_14:
      OUTLINED_FUNCTION_15_5();
      v9 = OUTLINED_FUNCTION_17_5();
      addStreamArraySsVal(v9, v10, v11, v12, v13);
    }

LABEL_15:
    v14 = *(a1 + 2216);
    if (v14 == 0.0)
    {
      goto LABEL_42;
    }

    v15 = (v14 - *(a1 + 2152));
    HIWORD(v83) = v15;
    if (v15 < 1)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_18_4();
    v16 = OUTLINED_FUNCTION_8_6();
    lpta_loadv(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_8_6();
    if (insert_2pt_i(v19, v20, v21, v22, 205))
    {
      goto LABEL_42;
    }

    v23 = OUTLINED_FUNCTION_7_6();
    rpta_storep(v23, v24, v25);
    doAV();
LABEL_19:
    addStreamArraySsVal(a1, a1 + 1988, (a1 + 4560), a1 + 2144, (a1 + 2208));
LABEL_20:
    v26 = OUTLINED_FUNCTION_4_6();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_7_6();
    move_i(v28, v29, v30);
    OUTLINED_FUNCTION_7_6();
    if (doAV())
    {
      goto LABEL_27;
    }

LABEL_21:
    v31 = OUTLINED_FUNCTION_4_6();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_7_6();
    move_i(v33, v34, v35);
  }

  else
  {
LABEL_22:
    savescptr(a1, 2, a1 + 1624);
    OUTLINED_FUNCTION_3_7();
    if (test_string_s() || (v36 = OUTLINED_FUNCTION_4_6(), starttest(v36, v37), v38 = OUTLINED_FUNCTION_4_6(), bspush_ca(v38), *(a1 + 4722) = 6, v39 = OUTLINED_FUNCTION_13_6(), if_testeq_v_i(v39, v40, v41, v42, v43, v44, v45, v46)))
    {
      do
      {
LABEL_27:
        while (2)
        {
          v56 = *(a1 + 104);
          if (v56)
          {
            v57 = OUTLINED_FUNCTION_21_4(v56);
          }

          else
          {
            v57 = vback(a1, 0);
          }

          switch(v57)
          {
            case 1:
              goto LABEL_8;
            case 2:
              goto LABEL_22;
            case 3:
              *(a1 + 4722) = 4;
              if (if_testeq_v_i(a1, (a1 + 4720), 1, v58, v59, v60, v61, v62) || *(a1 + 4518) != 1)
              {
                goto LABEL_35;
              }

              if (*(a1 + 4466))
              {
                goto LABEL_42;
              }

              v63 = OUTLINED_FUNCTION_7_6();
              starttest(v63, v64);
              v65 = OUTLINED_FUNCTION_19_4();
              c_assvar(v65, v66);
              v67 = *(a1 + 4398);
              break;
            case 4:
              if (*(a1 + 4702) == 1)
              {
                goto LABEL_24;
              }

              continue;
            case 5:
              goto LABEL_24;
            case 6:
            case 12:
              goto LABEL_41;
            case 7:
            case 8:
            case 9:
            case 11:
            case 13:
            case 14:
              goto LABEL_42;
            case 10:
LABEL_35:
              if (*(a1 + 4466))
              {
                goto LABEL_41;
              }

              v68 = OUTLINED_FUNCTION_9_6();
              starttest(v68, v69);
              v70 = OUTLINED_FUNCTION_19_4();
              c_assvar(v70, v71);
              v67 = *(a1 + 4558);
              break;
            case 15:
              goto LABEL_15;
            case 16:
              goto LABEL_12;
            case 17:
              goto LABEL_11;
            case 18:
              goto LABEL_14;
            case 19:
              goto LABEL_19;
            case 20:
              goto LABEL_20;
            case 21:
              goto LABEL_21;
            default:
              goto LABEL_3;
          }

          break;
        }

        HIWORD(v84) = (v67 / 10.0 + 30.0);
        v72 = OUTLINED_FUNCTION_17_5();
      }

      while (addStreamArraySsVal(v72, v73, &v84, v74, v75));
      goto LABEL_42;
    }

LABEL_24:
    if (*(a1 + 4466))
    {
LABEL_41:
      OUTLINED_FUNCTION_15_5();
      v76 = OUTLINED_FUNCTION_17_5();
      addStreamArraySsVal(v76, v77, v78, v79, v80);
      goto LABEL_42;
    }

    v47 = OUTLINED_FUNCTION_4_6();
    starttest(v47, v48);
    v49 = OUTLINED_FUNCTION_7_6();
    move_i(v49, v50, 35);
  }

  v51 = OUTLINED_FUNCTION_20_4();
  if (addStreamArraySsVal(v51, v52, v53, v54, v55))
  {
    goto LABEL_27;
  }

LABEL_42:
  vretproc(a1);
  return 0;
}

void do_voice_bar(uint64_t a1)
{
  OUTLINED_FUNCTION_32_0();
  v2 = v1;
  v68 = *MEMORY[0x277D85DE8];
  v63[0] = 0;
  v63[1] = 0;
  OUTLINED_FUNCTION_11_6();
  bzero(v62, v3);
  OUTLINED_FUNCTION_10_6();
  bzero(v67, v4);
  if (!setjmp(v67) && !ventproc(v2, v62, v66, v65, v64, v67))
  {
    push_ptr_init(v2, v63);
    fence_7(v2);
    v5 = OUTLINED_FUNCTION_4_6();
    starttest(v5, v6);
    v7 = OUTLINED_FUNCTION_0_7();
    if (!lpta_loadp_setscan_l(v7, v8, v9))
    {
      bspush_ca_scan_boa();
      v10 = OUTLINED_FUNCTION_4_6();
      bspush_ca_scan(v10, v11);
      v12 = OUTLINED_FUNCTION_1_7();
      if (testFldeq(v12, v13, v14, 2) || advance_tok(v2, v15, v16, v17))
      {
        v18 = 0;
      }

      else
      {
LABEL_33:
        v18 = 1;
      }

      v19 = v18;
      while (2)
      {
        v20 = *(v2 + 104);
        if (v20)
        {
          v21 = OUTLINED_FUNCTION_21_4(v20);
          v23 = v22;
        }

        else
        {
          v21 = vback(v2, v19);
          v23 = 0;
        }

        v24 = 35;
        switch(v21)
        {
          case 2:
            bspop_boa(v2);
            OUTLINED_FUNCTION_7_6();
            bspush_ca_boa();
            v25 = OUTLINED_FUNCTION_24_4();
            v19 = v23;
            if (v25)
            {
              continue;
            }

            v26 = OUTLINED_FUNCTION_1_7();
            v29 = testFldeq(v26, v27, v28, 2);
            v19 = v23;
            if (v29)
            {
              continue;
            }

            v32 = advance_tok(v2, v23, v30, v31);
            goto LABEL_20;
          case 3:
            OUTLINED_FUNCTION_19_4();
            bspush_ca_scan_boa();
            v40 = OUTLINED_FUNCTION_6_6();
            v32 = testFldeq(v40, v41, 2, v42);
            goto LABEL_20;
          case 4:
            goto LABEL_33;
          case 5:
            bspop_boa(v2);
            v33 = OUTLINED_FUNCTION_1_7();
            v36 = testFldeq(v33, v34, v35, 1);
            v19 = v23;
            if (!v36)
            {
              v39 = advance_tok(v2, v23, v37, v38);
              v19 = v23;
              if (!v39)
              {
                goto LABEL_33;
              }
            }

            continue;
          case 6:
            bspop_boa(v2);
            OUTLINED_FUNCTION_9_6();
            bspush_ca_boa();
            v43 = OUTLINED_FUNCTION_0_7();
            v46 = lpta_loadp_setscan_l(v43, v44, v45);
            v19 = v23;
            if (v46)
            {
              continue;
            }

            goto LABEL_26;
          case 7:
            bspop_boa(v2);
            *(v2 + 4406) = 35;
            starttest(v2, 9);
            bspush_ca(v2);
            v19 = v23;
            if (*(v2 + 4050) != 3)
            {
              continue;
            }

            v24 = 35;
            goto LABEL_35;
          case 8:
LABEL_26:
            v47 = OUTLINED_FUNCTION_30_1();
            savescptr(v47, v48, v63);
            OUTLINED_FUNCTION_3_7();
            v49 = test_string_s();
            v19 = v23;
            if (!v49)
            {
              v50 = lpta_loadp_setscan_r(v2, v63, 4);
              v19 = v23;
              if (!v50)
              {
                OUTLINED_FUNCTION_3_7();
                v32 = test_string_s();
LABEL_20:
                if (v32)
                {
                  v19 = v23;
                }

                else
                {
                  v19 = 1;
                }
              }
            }

            continue;
          case 9:
            v24 = 20;
            goto LABEL_35;
          case 10:
            v51 = OUTLINED_FUNCTION_0_7();
            v54 = lpta_loadp_setscan_l(v51, v52, v53);
            v19 = v23;
            if (v54)
            {
              continue;
            }

            v55 = OUTLINED_FUNCTION_1_7();
            v58 = testFldeq(v55, v56, v57, 4);
            v19 = v23;
            if (v58)
            {
              continue;
            }

            v61 = advance_tok(v2, v23, v59, v60);
            v19 = v23;
            if (v61)
            {
              continue;
            }

            v24 = 35;
            goto LABEL_35;
          case 11:
LABEL_35:
            *(v2 + 4394) = v24;
            break;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v2);
  OUTLINED_FUNCTION_33_0();
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, __int16 a41, __int16 a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{

  return ventproc(v48, a2, &a46, &a42, &a39, &a48);
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return lpta_loadp_setscan_r(v0, v0 + 1592, 4);
}

uint64_t OUTLINED_FUNCTION_25_4(void *a1, uint64_t a2, __int16 *a3)
{

  return addStreamArraySsVal(a1, a2, a3, v3, v4);
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return lpta_rpta_loadp(v0, v0 + 832, v0 + 1576);
}

void OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37)
{

  c_assvar(v37, &a37);
}

void *fence_8(uint64_t a1, int a2, uint64_t a3)
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

uint64_t generate_acoustic_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = *MEMORY[0x277D85DE8];
  v63[0] = 0;
  v63[1] = 0;
  v62[0] = 0;
  v62[1] = 0;
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v61[0]);
  bzero(v67, 0xC0uLL);
  if (setjmp(v67) || ventproc(a1, v61, v66, v65, v64, v67))
  {
LABEL_3:
    v9 = 94;
    goto LABEL_4;
  }

  push_ptr_init(a1, v63);
  push_ptr_init(a1, v62);
  fence_8(a1, 0, &_MergedGlobals_40);
  if (*(a1 + 942) != 1)
  {
    goto LABEL_12;
  }

  set_klattparms(a1);
  while (2)
  {
    set_word_default_acoustic_vals(a1);
LABEL_8:
    lpta_loadpn(a1, a1 + 768);
    rpta_loadpn(a1, a1 + 1224);
    if (compare_ptas(a1) || testeq(a1))
    {
      goto LABEL_12;
    }

    starttest(a1, 4);
    lpta_loadpn(a1, a1 + 1400);
    lpta_mover();
    OUTLINED_FUNCTION_15_6();
    lpta_ctxtl();
    v18 = OUTLINED_FUNCTION_3_8();
    lpta_storep(v18, v19, v20);
    v21 = OUTLINED_FUNCTION_3_8();
    if (!text_index(v21, v22))
    {
LABEL_11:
      handle_pause(a1, (a1 + 1400), v12, v13, v14, v15, v16, v17);
LABEL_12:
      init_syll_acoustic_vars(a1, v11, v12, v13, v14, v15, v16, v17);
LABEL_13:
      insert_syll_level_vals(a1, v11, v12, v13, v14, v15, v16, v17);
LABEL_14:
      v23 = OUTLINED_FUNCTION_2_8();
      startloop(v23, v24);
      lpta_loadpn(a1, a1 + 768);
      OUTLINED_FUNCTION_7_7();
      lpta_mover();
      v25 = OUTLINED_FUNCTION_8_7();
      lpta_storep(v25, v26, v27);
      lpta_loadpn(a1, a1 + 784);
      OUTLINED_FUNCTION_7_7();
      lpta_mover();
      v28 = OUTLINED_FUNCTION_3_8();
      lpta_storep(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_4_7();
      if (!forall_to_test(v31, v32, v33))
      {
LABEL_15:
        v34 = OUTLINED_FUNCTION_2_8();
        bspush_ca(v34);
        v35 = OUTLINED_FUNCTION_8_7();
        if (!lpta_loadp_setscan_r(v35, v36, 4) && !advance_tok(a1, v37, v38, v39))
        {
LABEL_17:
          v40 = OUTLINED_FUNCTION_16_6();
          savescptr(v40, v41, v42);
LABEL_18:
          set_phone_offset_vals(a1, v11, v12, v13, v14, v15, v16, v17);
LABEL_19:
          assign_acoustic_vals(a1, v11, v12, v13, v14, v15, v16, v17);
LABEL_20:
          v43 = OUTLINED_FUNCTION_2_8();
          starttest(v43, v44);
          v45 = OUTLINED_FUNCTION_8_7();
          lpta_loadpn(v45, v46);
          OUTLINED_FUNCTION_7_7();
          lpta_movel();
          v47 = OUTLINED_FUNCTION_3_8();
          lpta_storep(v47, v48, v49);
          v50 = OUTLINED_FUNCTION_4_7();
          if (!synthesizeRange(v50, v51, v52, v53, v54, v55, v56))
          {
LABEL_21:
            if (!forto_adv_upto_r(a1, 7, 8, 13, 4, a1 + 1576))
            {
              v9 = 0;
              break;
            }
          }
        }
      }
    }

    v57 = *(a1 + 104);
    if (v57)
    {
      v58 = OUTLINED_FUNCTION_17_6(v57);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_15_6();
      v58 = vback(v59, v60);
    }

    v9 = 0;
    switch(v58)
    {
      case 1:
        goto LABEL_12;
      case 2:
        continue;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_11;
      case 5:
        goto LABEL_13;
      case 6:
        goto LABEL_14;
      case 7:
        goto LABEL_4;
      case 8:
        goto LABEL_18;
      case 9:
        goto LABEL_21;
      case 10:
        goto LABEL_17;
      case 11:
        goto LABEL_19;
      case 12:
        goto LABEL_20;
      case 13:
        goto LABEL_15;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  return v9;
}

uint64_t handle_pause(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85 = *MEMORY[0x277D85DE8];
  v80[0] = 0;
  v80[1] = 0;
  OUTLINED_FUNCTION_11_7(a1, a2, a3, a4, a5, a6, a7, a8, v71, *v72, *&v72[8], *&v72[16], *&v72[24], *&v72[32], *&v72[40], *&v72[48], *&v72[56], *&v72[64], *&v72[72], *&v72[80], *&v72[88], *&v72[96], *&v72[104], *&v72[112], *&v72[120], *&v72[128], *&v72[136], *&v72[144], *&v72[152], *&v72[160], *&v72[168], *&v72[176], *&v72[184], v73, v74[0], v74[1], v75[0], v75[1], v76, v77, v78, *&v79);
  bzero(v84, 0xC0uLL);
  if (!setjmp(v84) && !ventproc(a1, v72, v83, v82, v81, v84))
  {
    v10 = OUTLINED_FUNCTION_10_7();
    get_parm(v10, v11, a2, -6);
    v79 = 0.0;
    LOWORD(v78) = -5;
    v77 = 0;
    LOWORD(v76) = -5;
    push_ptr_init(a1, v75);
    push_ptr_init(a1, v74);
    v73 = 65532;
    fence_8(a1, 0, &_MergedGlobals_40);
    v79 = 0.0;
    v77 = 0;
    v12 = OUTLINED_FUNCTION_2_8();
    starttest(v12, v13);
    v14 = OUTLINED_FUNCTION_10_7();
    if (!lpta_loadp_setscan_r(v14, v15, 4))
    {
      v17 = OUTLINED_FUNCTION_2_8();
      bspush_ca_scan(v17, v18);
      if (!advanc(a1))
      {
LABEL_6:
        savescptr(a1, 3, v80);
LABEL_7:
        OUTLINED_FUNCTION_7_7();
        if (!test_string_s())
        {
LABEL_8:
          fence_8(a1, 1, &unk_2806C467C);
          v19 = OUTLINED_FUNCTION_10_7();
          lpta_loadpn(v19, v20);
          lpta_ctxtr();
          lpta_storep(a1, v75, v21);
          *(a1 + 3338) = 1;
          v22 = OUTLINED_FUNCTION_2_8();
          startloop(v22, v23);
          v24 = OUTLINED_FUNCTION_10_7();
          lpta_loadpn(v24, v25);
          OUTLINED_FUNCTION_7_7();
          lpta_mover();
          v26 = OUTLINED_FUNCTION_8_7();
          lpta_storep(v26, v27, v28);
          lpta_loadpn(a1, v75);
          OUTLINED_FUNCTION_7_7();
          lpta_mover();
          lpta_storep(a1, v74, v29);
LABEL_9:
          v30 = OUTLINED_FUNCTION_8_7();
          if (!forall_to_test(v30, v31, v32))
          {
LABEL_10:
            v33 = OUTLINED_FUNCTION_2_8();
            bspush_ca(v33);
            v34 = OUTLINED_FUNCTION_8_7();
            if (!lpta_loadp_setscan_r(v34, v35, 4))
            {
LABEL_13:
              while (1)
              {
                OUTLINED_FUNCTION_7_7();
                if (test_string_s())
                {
                  break;
                }

                v36 = OUTLINED_FUNCTION_10_7();
                bspush_ca_scan(v36, v37);
              }
            }
          }
        }
      }

      while (2)
      {
        v38 = *(a1 + 104);
        if (v38)
        {
          v39 = OUTLINED_FUNCTION_17_6(v38);
        }

        else
        {
          v40 = OUTLINED_FUNCTION_15_6();
          v39 = vback(v40, v41);
        }

        switch(v39)
        {
          case 2:
            goto LABEL_7;
          case 3:
            goto LABEL_6;
          case 4:
            goto LABEL_8;
          case 5:
            goto LABEL_19;
          case 6:
            goto LABEL_21;
          case 7:
            v42 = OUTLINED_FUNCTION_3_8();
            if (forto_adv_upto_r(v42, v43, 6, 22, 4, v44))
            {
              continue;
            }

            goto LABEL_19;
          case 8:
            v45 = OUTLINED_FUNCTION_16_6();
            savescptr(v45, v46, v47);
LABEL_21:
            OUTLINED_FUNCTION_12_7();
            set_end_of_pause_trans();
            goto LABEL_22;
          case 9:
            goto LABEL_13;
          case 10:
LABEL_22:
            v48 = OUTLINED_FUNCTION_16_6();
            lpta_rpta_loadp(v48, v49, v50);
            v51 = OUTLINED_FUNCTION_14_6();
            dur_expr(v51, v52, v53);
            *(a1 + 2120) = *(a1 + 2152);
            v54 = *(a1 + 2168);
            *(a1 + 2136) = v54;
            *(a1 + 2152) = v54 + v79;
            v55 = OUTLINED_FUNCTION_12_7();
            lpta_rpta_loadp(v55, v56, v57);
            v58 = OUTLINED_FUNCTION_14_6();
            dur_expr(v58, v59, v60);
            *(a1 + 2168) = *(a1 + 2152) + SHIWORD(v73);
            if (*(a1 + 2446) != 1)
            {
              goto LABEL_25;
            }

            define_all_params_for_silence(a1, (a1 + 1576), (a1 + 1592), (a1 + 2128), (a1 + 2144), v61, v62, v63);
            goto LABEL_24;
          case 11:
LABEL_25:
            set_seg_default_acoustic_vals(a1);
            goto LABEL_26;
          case 12:
LABEL_24:
            set_klattparms(a1);
            goto LABEL_27;
          case 13:
          case 14:
            goto LABEL_27;
          case 15:
LABEL_26:
            insert_acoustic_vals(a1);
LABEL_27:
            v64 = OUTLINED_FUNCTION_18_5();
            lpta_loadpn(v64, v65);
            rpta_loadpn(a1, a1 + 1256);
            v66 = 0;
            if (!compare_ptas(a1) && !testneq(a1))
            {
              v66 = *(a1 + 4024);
            }

            goto LABEL_31;
          case 16:
            v66 = 0;
LABEL_31:
            v77 = v66;
            goto LABEL_32;
          case 17:
LABEL_32:
            synthesizeRange(a1, (a1 + 4008), (a1 + 1576), (a1 + 1624), (a1 + 2112), (a1 + 2144), &v76);
            goto LABEL_33;
          case 18:
LABEL_33:
            *(a1 + 4672) = *(a1 + 1600);
            v67 = OUTLINED_FUNCTION_18_5();
            text_index(v67, v68);
            goto LABEL_34;
          case 19:
LABEL_34:
            v69 = OUTLINED_FUNCTION_18_5();
            lpta_loadpn(v69, v70);
            rpta_loadpn(a1, v75);
            if (compare_ptas(a1) || testeq(a1))
            {
              goto LABEL_36;
            }

LABEL_19:
            *(a1 + 3338) = 0;
            vretproc(a1);
            return 0;
          case 20:
LABEL_36:
            forall_cont_from();
            goto LABEL_9;
          case 21:
            goto LABEL_9;
          case 22:
            goto LABEL_10;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  vretproc(a1);
  return 94;
}

uint64_t init_syll_acoustic_vars(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  OUTLINED_FUNCTION_6_7(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_8(v18, v19, v20, v21, v22, v23, v24, v25, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, SHIDWORD(v76), v78, SWORD2(v78), SHIWORD(v78), v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v82, v83))
  {
    v26 = 94;
  }

  else
  {
    v26 = 0;
    fence_8(a1, 0, &_MergedGlobals_40);
    *(a1 + 966) = *(a1 + 990);
  }

  vretproc(a1);
  return v26;
}

uint64_t insert_syll_level_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v112) = 0;
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v65);
  OUTLINED_FUNCTION_6_7(v10, v11, v12, v13, v14, v15, v16, v17, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_8(v18, v19, v20, v21, v22, v23, v24, v25, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, SHIDWORD(v113), v115, SWORD2(v115), SHIWORD(v115), v117, SWORD2(v117), SBYTE6(v117), SHIBYTE(v117), v119, v120))
  {
LABEL_3:
    v26 = 94;
  }

  else
  {
    fence_8(a1, 0, &_MergedGlobals_40);
    *(a1 + 4722) = 6;
    if (if_testeq_v_i(a1, (a1 + 4720), 100, v28, v29, v30, v31, v32) || (v33 = OUTLINED_FUNCTION_2_8(), starttest(v33, v34), v35 = OUTLINED_FUNCTION_3_8(), move_i(v35, v36, v37), v38 = OUTLINED_FUNCTION_4_7(), !addStreamArraySsVal(v38, v39, v40, v41, v42)))
    {
LABEL_7:
      addStreamArraySsVal(a1, a1 + 1996, (a1 + 3408), a1 + 2176, (a1 + 2192));
LABEL_8:
      v43 = OUTLINED_FUNCTION_2_8();
      starttest(v43, v44);
      v45 = OUTLINED_FUNCTION_3_8();
      move_i(v45, v46, 250);
      v47 = OUTLINED_FUNCTION_4_7();
      if (!addStreamArraySsVal(v47, v48, v49, v50, v51))
      {
LABEL_9:
        v52 = OUTLINED_FUNCTION_2_8();
        starttest(v52, v53);
        v54 = OUTLINED_FUNCTION_3_8();
        move_i(v54, v55, 250);
        v56 = OUTLINED_FUNCTION_4_7();
        if (!addStreamArraySsVal(v56, v57, v58, v59, v60))
        {
          v26 = 0;
          goto LABEL_4;
        }
      }
    }

    v61 = *(a1 + 104);
    if (v61)
    {
      v62 = OUTLINED_FUNCTION_17_6(v61);
    }

    else
    {
      v63 = OUTLINED_FUNCTION_15_6();
      v62 = vback(v63, v64);
    }

    v26 = 0;
    switch(v62)
    {
      case 1:
        goto LABEL_7;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_9;
      case 4:
        break;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  return v26;
}

uint64_t set_phone_offset_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v188 = *MEMORY[0x277D85DE8];
  LODWORD(v183) = 65532;
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v67);
  OUTLINED_FUNCTION_6_7(v10, v11, v12, v13, v14, v15, v16, v17, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v184, v185, v186);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_8(v18, v19, v20, v21, v22, v23, v24, v25, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v183, SHIDWORD(v183), v184, SWORD2(v184), SHIWORD(v184), v185, SWORD2(v185), SBYTE6(v185), SHIBYTE(v185), v186, v187))
  {
    v26 = 94;
  }

  else
  {
    v26 = 0;
    fence_8(a1, 0, &_MergedGlobals_40);
    *(a1 + 2120) = *(a1 + 2152);
    lpta_rpta_loadp(a1, a1 + 4664, a1 + 1576);
    v28 = OUTLINED_FUNCTION_14_6();
    dur_expr(v28, v29, &v183);
    *(a1 + 2136) = OUTLINED_FUNCTION_13_7(*(a1 + 2152), v30, v31, v32, v33, v34, v35, v36, v37, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v183, SWORD1(v183));
    v38 = OUTLINED_FUNCTION_16_6();
    lpta_rpta_loadp(v38, v39, v40);
    v41 = OUTLINED_FUNCTION_14_6();
    dur_expr(v41, v42, &v183);
    *(a1 + 2152) = OUTLINED_FUNCTION_13_7(*(a1 + 2136), v43, v44, v45, v46, v47, v48, v49, v50, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v183, SWORD1(v183));
    lpta_loadpn(a1, a1 + 1592);
    OUTLINED_FUNCTION_7_7();
    lpta_mover();
    v51 = OUTLINED_FUNCTION_18_5();
    lpta_storep(v51, v52, v53);
    v54 = OUTLINED_FUNCTION_12_7();
    lpta_rpta_loadp(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_14_6();
    dur_expr(v57, v58, &v183);
    *(a1 + 2168) = OUTLINED_FUNCTION_13_7(*(a1 + 2152), v59, v60, v61, v62, v63, v64, v65, v66, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v183, SWORD1(v183));
  }

  vretproc(a1);
  return v26;
}

uint64_t assign_acoustic_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_9_7(a1, a2, a3, a4, a5, a6, a7, a8, v29);
  OUTLINED_FUNCTION_6_7(v10, v11, v12, v13, v14, v15, v16, v17, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_8(v18, v19, v20, v21, v22, v23, v24, v25, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, SHIDWORD(v77), v79, SWORD2(v79), SHIWORD(v79), v81, SWORD2(v81), SBYTE6(v81), SHIBYTE(v81), v83, v84))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_8(a1, 0, &_MergedGlobals_40);
    if (*(a1 + 990) == *(a1 + 966))
    {
      v27 = OUTLINED_FUNCTION_8_7();
      lpta_loadpn(v27, v28);
      rpta_loadpn(a1, a1 + 800);
      if (!compare_ptas(a1) && !testeq(a1))
      {
        *(a1 + 966) = *(a1 + 994);
      }
    }

    set_seg_default_acoustic_vals(a1);
    if (*(a1 + 994) == *(a1 + 966))
    {
      nucleus_vals(a1);
    }

    else
    {
      con_vals(a1);
    }

    if (*(a1 + 994) == *(a1 + 966))
    {
      lpta_loadpn(a1, a1 + 1592);
      rpta_loadpn(a1, a1 + 816);
      if (!compare_ptas(a1) && !testeq(a1))
      {
        *(a1 + 966) = *(a1 + 998);
      }
    }

    *(a1 + 4672) = *(a1 + 1600);
    vretproc(a1);
    return 0;
  }
}

uint64_t define_all_params_for_silence(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v290 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_7(a1, a2, a3, a4, a5, a6, a7, a8, v279, *v280, *&v280[8], *&v280[16], *&v280[24], *&v280[32], *&v280[40], *&v280[48], *&v280[56], *&v280[64], *&v280[72], *&v280[80], *&v280[88], *&v280[96], *&v280[104], *&v280[112], *&v280[120], *&v280[128], *&v280[136], *&v280[144], *&v280[152], *&v280[160], *&v280[168], *&v280[176], *&v280[184], v281, v282[0], v282[1], v283[0], v283[1], v284[0], v284[1], v285[0], v285[1]);
  bzero(v289, 0xC0uLL);
  if (setjmp(v289) || ventproc(a1, v280, v288, v287, v286, v289))
  {
LABEL_3:
    v13 = 94;
  }

  else
  {
    get_parm(a1, v285, a2, -6);
    get_parm(a1, v284, a3, -6);
    get_parm(a1, v283, a4, -5);
    v15 = OUTLINED_FUNCTION_10_7();
    get_parm(v15, v16, a5, -5);
    v281 = 65532;
    fence_8(a1, 0, &_MergedGlobals_40);
    *(a1 + 4722) = 3;
    *(a1 + 3634) = 3;
    copyvar(a1, (a1 + 4720), (a1 + 3632));
    v17 = OUTLINED_FUNCTION_2_8();
    starttest(v17, v18);
    v19 = OUTLINED_FUNCTION_0_8();
    move_i(v19, v20, 1000);
    v21 = OUTLINED_FUNCTION_4_7();
    if (!addStreamArraySsVal(v21, v22, v23, v283, v282))
    {
LABEL_6:
      v24 = OUTLINED_FUNCTION_2_8();
      starttest(v24, v25);
      v26 = OUTLINED_FUNCTION_0_8();
      move_i(v26, v27, 500);
      OUTLINED_FUNCTION_5_7();
      v28 = OUTLINED_FUNCTION_4_7();
      if (!addStreamArraySsVal(v28, v29, v30, v31, v32))
      {
LABEL_7:
        v33 = OUTLINED_FUNCTION_2_8();
        starttest(v33, v34);
        v35 = OUTLINED_FUNCTION_0_8();
        move_i(v35, v36, 1000);
        OUTLINED_FUNCTION_5_7();
        v37 = OUTLINED_FUNCTION_4_7();
        if (!addStreamArraySsVal(v37, v38, v39, v40, v41))
        {
LABEL_8:
          v42 = OUTLINED_FUNCTION_2_8();
          starttest(v42, v43);
          v44 = OUTLINED_FUNCTION_0_8();
          move_i(v44, v45, 1500);
          OUTLINED_FUNCTION_5_7();
          v46 = OUTLINED_FUNCTION_4_7();
          if (!addStreamArraySsVal(v46, v47, v48, v49, v50))
          {
LABEL_9:
            v51 = OUTLINED_FUNCTION_2_8();
            starttest(v51, v52);
            v53 = OUTLINED_FUNCTION_0_8();
            move_i(v53, v54, 4000);
            OUTLINED_FUNCTION_5_7();
            v55 = OUTLINED_FUNCTION_4_7();
            if (!addStreamArraySsVal(v55, v56, v57, v58, v59))
            {
LABEL_10:
              v60 = OUTLINED_FUNCTION_2_8();
              starttest(v60, v61);
              v62 = OUTLINED_FUNCTION_0_8();
              move_i(v62, v63, 4500);
              OUTLINED_FUNCTION_5_7();
              v64 = OUTLINED_FUNCTION_4_7();
              if (!addStreamArraySsVal(v64, v65, v66, v67, v68))
              {
LABEL_11:
                v69 = OUTLINED_FUNCTION_2_8();
                starttest(v69, v70);
                v71 = OUTLINED_FUNCTION_0_8();
                move_i(v71, v72, 100);
                OUTLINED_FUNCTION_5_7();
                v73 = OUTLINED_FUNCTION_4_7();
                if (!addStreamArraySsVal(v73, v74, v75, v76, v77))
                {
LABEL_12:
                  v78 = OUTLINED_FUNCTION_2_8();
                  starttest(v78, v79);
                  v80 = OUTLINED_FUNCTION_0_8();
                  move_i(v80, v81, 100);
                  OUTLINED_FUNCTION_5_7();
                  v82 = OUTLINED_FUNCTION_4_7();
                  if (!addStreamArraySsVal(v82, v83, v84, v85, v86))
                  {
LABEL_13:
                    v87 = OUTLINED_FUNCTION_2_8();
                    starttest(v87, v88);
                    v89 = OUTLINED_FUNCTION_0_8();
                    move_i(v89, v90, 100);
                    OUTLINED_FUNCTION_5_7();
                    v91 = OUTLINED_FUNCTION_4_7();
                    if (!addStreamArraySsVal(v91, v92, v93, v94, v95))
                    {
LABEL_14:
                      v96 = OUTLINED_FUNCTION_2_8();
                      starttest(v96, v97);
                      v98 = OUTLINED_FUNCTION_0_8();
                      move_i(v98, v99, 100);
                      OUTLINED_FUNCTION_5_7();
                      v100 = OUTLINED_FUNCTION_4_7();
                      if (!addStreamArraySsVal(v100, v101, v102, v103, v104))
                      {
LABEL_15:
                        v105 = OUTLINED_FUNCTION_2_8();
                        starttest(v105, v106);
                        v107 = OUTLINED_FUNCTION_0_8();
                        move_i(v107, v108, 100);
                        OUTLINED_FUNCTION_5_7();
                        v109 = OUTLINED_FUNCTION_4_7();
                        if (!addStreamArraySsVal(v109, v110, v111, v112, v113))
                        {
LABEL_16:
                          v114 = OUTLINED_FUNCTION_2_8();
                          starttest(v114, v115);
                          v116 = OUTLINED_FUNCTION_0_8();
                          move_i(v116, v117, 270);
                          OUTLINED_FUNCTION_5_7();
                          v118 = OUTLINED_FUNCTION_4_7();
                          if (!addStreamArraySsVal(v118, v119, v120, v121, v122))
                          {
LABEL_17:
                            v123 = OUTLINED_FUNCTION_2_8();
                            starttest(v123, v124);
                            v125 = OUTLINED_FUNCTION_0_8();
                            move_i(v125, v126, 270);
                            OUTLINED_FUNCTION_5_7();
                            v127 = OUTLINED_FUNCTION_4_7();
                            if (!addStreamArraySsVal(v127, v128, v129, v130, v131))
                            {
LABEL_18:
                              v132 = OUTLINED_FUNCTION_2_8();
                              starttest(v132, v133);
                              v134 = OUTLINED_FUNCTION_0_8();
                              move_i(v134, v135, 500);
                              OUTLINED_FUNCTION_5_7();
                              v136 = OUTLINED_FUNCTION_4_7();
                              if (!addStreamArraySsVal(v136, v137, v138, v139, v140))
                              {
LABEL_19:
                                v141 = OUTLINED_FUNCTION_2_8();
                                starttest(v141, v142);
                                v143 = OUTLINED_FUNCTION_0_8();
                                move_i(v143, v144, 500);
                                OUTLINED_FUNCTION_5_7();
                                v145 = OUTLINED_FUNCTION_4_7();
                                if (!addStreamArraySsVal(v145, v146, v147, v148, v149))
                                {
LABEL_20:
                                  v150 = OUTLINED_FUNCTION_2_8();
                                  starttest(v150, v151);
                                  v152 = OUTLINED_FUNCTION_0_8();
                                  move_i(v152, v153, v154);
                                  OUTLINED_FUNCTION_5_7();
                                  v155 = OUTLINED_FUNCTION_4_7();
                                  if (!addStreamArraySsVal(v155, v156, v157, v158, v159))
                                  {
LABEL_21:
                                    v160 = OUTLINED_FUNCTION_2_8();
                                    starttest(v160, v161);
                                    v162 = OUTLINED_FUNCTION_0_8();
                                    move_i(v162, v163, 50);
                                    OUTLINED_FUNCTION_5_7();
                                    v164 = OUTLINED_FUNCTION_4_7();
                                    if (!addStreamArraySsVal(v164, v165, v166, v167, v168))
                                    {
LABEL_22:
                                      v169 = OUTLINED_FUNCTION_2_8();
                                      starttest(v169, v170);
                                      v171 = OUTLINED_FUNCTION_0_8();
                                      move_i(v171, v172, v173);
                                      OUTLINED_FUNCTION_5_7();
                                      v174 = OUTLINED_FUNCTION_4_7();
                                      if (!addStreamArraySsVal(v174, v175, v176, v177, v178))
                                      {
LABEL_23:
                                        v179 = OUTLINED_FUNCTION_2_8();
                                        starttest(v179, v180);
                                        v181 = OUTLINED_FUNCTION_0_8();
                                        move_i(v181, v182, v183);
                                        OUTLINED_FUNCTION_5_7();
                                        v184 = OUTLINED_FUNCTION_4_7();
                                        if (!addStreamArraySsVal(v184, v185, v186, v187, v188))
                                        {
LABEL_24:
                                          v189 = OUTLINED_FUNCTION_2_8();
                                          starttest(v189, v190);
                                          v191 = OUTLINED_FUNCTION_0_8();
                                          move_i(v191, v192, v193);
                                          OUTLINED_FUNCTION_5_7();
                                          v194 = OUTLINED_FUNCTION_4_7();
                                          if (!addStreamArraySsVal(v194, v195, v196, v197, v198))
                                          {
LABEL_25:
                                            v199 = OUTLINED_FUNCTION_2_8();
                                            starttest(v199, v200);
                                            v201 = OUTLINED_FUNCTION_0_8();
                                            move_i(v201, v202, v203);
                                            OUTLINED_FUNCTION_5_7();
                                            v204 = OUTLINED_FUNCTION_4_7();
                                            if (!addStreamArraySsVal(v204, v205, v206, v207, v208))
                                            {
LABEL_26:
                                              v209 = OUTLINED_FUNCTION_2_8();
                                              starttest(v209, v210);
                                              v211 = OUTLINED_FUNCTION_0_8();
                                              move_i(v211, v212, v213);
                                              OUTLINED_FUNCTION_5_7();
                                              v214 = OUTLINED_FUNCTION_4_7();
                                              if (!addStreamArraySsVal(v214, v215, v216, v217, v218))
                                              {
LABEL_27:
                                                v219 = OUTLINED_FUNCTION_2_8();
                                                starttest(v219, v220);
                                                v221 = OUTLINED_FUNCTION_0_8();
                                                move_i(v221, v222, v223);
                                                OUTLINED_FUNCTION_5_7();
                                                v224 = OUTLINED_FUNCTION_4_7();
                                                if (!addStreamArraySsVal(v224, v225, v226, v227, v228))
                                                {
LABEL_28:
                                                  v229 = OUTLINED_FUNCTION_2_8();
                                                  starttest(v229, v230);
                                                  v231 = OUTLINED_FUNCTION_0_8();
                                                  move_i(v231, v232, v233);
                                                  OUTLINED_FUNCTION_5_7();
                                                  v234 = OUTLINED_FUNCTION_4_7();
                                                  if (!addStreamArraySsVal(v234, v235, v236, v237, v238))
                                                  {
LABEL_29:
                                                    v239 = OUTLINED_FUNCTION_2_8();
                                                    starttest(v239, v240);
                                                    v241 = OUTLINED_FUNCTION_0_8();
                                                    move_i(v241, v242, v243);
                                                    OUTLINED_FUNCTION_5_7();
                                                    v244 = OUTLINED_FUNCTION_4_7();
                                                    if (!addStreamArraySsVal(v244, v245, v246, v247, v248))
                                                    {
LABEL_30:
                                                      v249 = OUTLINED_FUNCTION_2_8();
                                                      starttest(v249, v250);
                                                      v251 = OUTLINED_FUNCTION_0_8();
                                                      move_i(v251, v252, v253);
                                                      OUTLINED_FUNCTION_5_7();
                                                      v254 = OUTLINED_FUNCTION_4_7();
                                                      if (!addStreamArraySsVal(v254, v255, v256, v257, v258))
                                                      {
LABEL_31:
                                                        v259 = OUTLINED_FUNCTION_2_8();
                                                        starttest(v259, v260);
                                                        v261 = OUTLINED_FUNCTION_0_8();
                                                        move_i(v261, v262, v263);
                                                        OUTLINED_FUNCTION_5_7();
                                                        v264 = OUTLINED_FUNCTION_4_7();
                                                        if (!addStreamArraySsVal(v264, v265, v266, v267, v268))
                                                        {
LABEL_32:
                                                          v269 = OUTLINED_FUNCTION_2_8();
                                                          starttest(v269, v270);
                                                          v13 = 0;
                                                          v271 = OUTLINED_FUNCTION_10_7();
                                                          move_i(v271, v272, 0);
                                                          OUTLINED_FUNCTION_5_7();
                                                          if (!addStreamArraySsVal(a1, a1 + 2036, &v281, v273, v274))
                                                          {
                                                            goto LABEL_4;
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
              }
            }
          }
        }
      }
    }

    v275 = *(a1 + 104);
    if (v275)
    {
      v276 = OUTLINED_FUNCTION_17_6(v275);
    }

    else
    {
      v277 = OUTLINED_FUNCTION_15_6();
      v276 = vback(v277, v278);
    }

    v13 = 0;
    switch(v276)
    {
      case 1:
        goto LABEL_6;
      case 2:
        goto LABEL_7;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_9;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_12;
      case 8:
        goto LABEL_13;
      case 9:
        goto LABEL_14;
      case 10:
        goto LABEL_15;
      case 11:
        goto LABEL_16;
      case 12:
        goto LABEL_17;
      case 13:
        goto LABEL_18;
      case 14:
        goto LABEL_19;
      case 15:
        goto LABEL_20;
      case 16:
        goto LABEL_21;
      case 17:
        goto LABEL_22;
      case 18:
        goto LABEL_23;
      case 19:
        goto LABEL_24;
      case 20:
        goto LABEL_25;
      case 21:
        goto LABEL_26;
      case 22:
        goto LABEL_27;
      case 23:
        goto LABEL_28;
      case 24:
        goto LABEL_29;
      case 25:
        goto LABEL_30;
      case 26:
        goto LABEL_31;
      case 27:
        goto LABEL_32;
      case 28:
        break;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  return v13;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_6_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_9_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_11_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  a41 = 0;
  a42 = 0;
  a39 = 0;
  a40 = 0;
  a37 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t print_F_trans(uint64_t a1, __int16 *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  bzero(v14, 0xB8uLL);
  bzero(v23, 0xC0uLL);
  v4 = setjmp(v23);
  if (v4 || OUTLINED_FUNCTION_0_9(v4, v5, v6, v7, v8, v9, v10, v11, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v14[18], v14[19], v14[20], v14[21], v14[22], v15[0], v15[1], v15[2], v16, v17, v18, v19, v20, v21, v22, v23[0]))
  {
    v12 = 94;
  }

  else
  {
    get_parm(a1, v15, a2, -4);
    fence_9(a1);
    v12 = 0;
  }

  vretproc(a1);
  return v12;
}

uint64_t callInternalSynthesizer(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6, __int16 *a7)
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v26[1] = 0;
  v25[1] = 0;
  v26[0] = 0;
  v24 = 0.0;
  v25[0] = 0;
  v22 = 0.0;
  v23 = 0;
  v20[1] = 0;
  v21 = 0;
  v19 = 0;
  v20[0] = 0;
  v17 = 0;
  v18 = 0;
  bzero(v16, 0xB8uLL);
  bzero(v31, 0xC0uLL);
  if (setjmp(v31) || ventproc(a1, v16, v30, v29, v28, v31))
  {
    v14 = 94;
  }

  else
  {
    get_parm(a1, &v27, a2, -4);
    get_parm(a1, v26, a3, -6);
    get_parm(a1, v25, a4, -6);
    get_parm(a1, &v23, a5, -5);
    get_parm(a1, &v21, a6, -5);
    get_parm(a1, v20, a7, -5);
    v19 = 0xFFFC0000FFFCLL;
    v18 = 0xFFFC0000FFFCLL;
    v17 = 0xFFFC0000FFFCLL;
    fence_9(a1);
    if (v22 != v24)
    {
      starttest(a1, 2);
      bspush_ca_boa();
      move_i(a1, &v19 + 4, 12);
      move_i(a1, &v19, 35);
      move_i(a1, &v18 + 4, 47);
      move_i(a1, &v18, 48);
      move_i(a1, &v17 + 4, 49);
      move_i(a1, &v17, 0);
      callSynthesizeArray(a1, &v27, &v23, &v21, v20, a1 + 4016, a1 + 4044, a1 + 3800, a1 + 4048, a1 + 4136, a1 + 4168, a1 + 4152, a1 + 4184, a1 + 4200, &v19 + 4);
    }

    v14 = 0;
  }

  vretproc(a1);
  return v14;
}

uint64_t print_streamarrays_from_delta(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  bzero(v12, 0xB8uLL);
  bzero(v23, 0xC0uLL);
  v2 = setjmp(v23);
  if (v2 || OUTLINED_FUNCTION_0_9(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v12[16], v12[17], v12[18], v12[19], v12[20], v12[21], v12[22], v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23[0]))
  {
    v10 = 94;
  }

  else
  {
    fence_9(a1);
    v10 = 0;
  }

  vretproc(a1);
  return v10;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void process_annotation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70();
  v4 = v3;
  v6 = v5;
  v115 = *MEMORY[0x277D85DE8];
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v97, v7);
  OUTLINED_FUNCTION_26_5();
  bzero(v114, v8);
  v9 = setjmp(v114);
  if (v9 || OUTLINED_FUNCTION_38_0(v9, v97, v10, v11, v12, v13, v14, v15, v93, v94, v95, v97[0], v97[1], v97[2], v97[3], v97[4], v97[5], v97[6], v97[7], v97[8], v97[9], v97[10], v97[11], v97[12], v97[13], v97[14], v97[15], v97[16], v97[17], v97[18], v97[19], v97[20], v97[21], v97[22], v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114[0]))
  {
    goto LABEL_3;
  }

  v16 = OUTLINED_FUNCTION_2_9();
  get_parm(v16, v17, v18, -6);
  v19 = OUTLINED_FUNCTION_79();
  get_parm(v19, v20, v4, -6);
  v21 = OUTLINED_FUNCTION_67();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_4_8();
  if (lpta_loadp_setscan_r(v23, v24, 1))
  {
    v25 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
    if (!test_string_s())
    {
      v96 = v4;
      OUTLINED_FUNCTION_40();
      v25 = v26;
      goto LABEL_12;
    }

    v25 = 0;
  }

  while (2)
  {
    v96 = v4;
    v27 = OUTLINED_FUNCTION_50();
    if (lpta_loadp_setscan_r(v27, v28, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_22_5();
    if (test_string_s())
    {
      break;
    }

LABEL_12:
    v29 = OUTLINED_FUNCTION_42();
    savescptr(v29, v30, v31);
LABEL_13:
    OUTLINED_FUNCTION_21_5();
    if (!is_afterslash_char())
    {
      goto LABEL_53;
    }

LABEL_14:
    OUTLINED_FUNCTION_2_9();
    if (!SPR_anno())
    {
LABEL_53:
      *(v96 + 1) = v101;
      break;
    }

LABEL_15:
    OUTLINED_FUNCTION_29_3();
    if (!emphasis_anno())
    {
      goto LABEL_53;
    }

LABEL_16:
    OUTLINED_FUNCTION_2_9();
    if (!phr_final_anno())
    {
      goto LABEL_53;
    }

LABEL_17:
    v32 = OUTLINED_FUNCTION_87();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_29_3();
    v36 = lpta_loadp_setscan_r(v34, v35, 1);
    v37 = v25;
    if (v36)
    {
LABEL_18:
      v38 = OUTLINED_FUNCTION_46();
      lpta_loadpn(v38, v39);
      v40 = OUTLINED_FUNCTION_29_3();
      rpta_loadpn(v40, v41);
      if (compare_ptas(v6) || testeq(v6))
      {
LABEL_20:
        v42 = OUTLINED_FUNCTION_2_9();
        phr_prediction_anno(v42, v43, v44, &v100);
        v45 = v25;
        if (v46)
        {
LABEL_21:
          LODWORD(v25) = v45;
          v47 = OUTLINED_FUNCTION_2_9();
          pause_anno(v47, v48, v49, &v100);
          v50 = v25;
          if (v51)
          {
LABEL_22:
            LODWORD(v25) = v50;
            v52 = OUTLINED_FUNCTION_2_9();
            v53 = textnorm_anno(v52);
            v54 = v25;
            if (v53)
            {
LABEL_23:
              LODWORD(v25) = v54;
              v55 = OUTLINED_FUNCTION_2_9();
              environment_anno(v55, v56, v57, &v100);
              v58 = v25;
              if (v59)
              {
LABEL_24:
                LODWORD(v25) = v58;
                v60 = OUTLINED_FUNCTION_2_9();
                v61 = voice_anno(v60);
                v62 = v25;
                if (v61)
                {
LABEL_46:
                  LODWORD(v25) = v62;
                  v87 = OUTLINED_FUNCTION_2_9();
                  v88 = word_accent_anno(v87);
                  v84 = v25;
                  if (v88)
                  {
LABEL_47:
                    LODWORD(v25) = v84;
                    v89 = OUTLINED_FUNCTION_2_9();
                    v90 = dict_anno(v89);
                    v83 = v25;
                    if (v90)
                    {
LABEL_48:
                      LODWORD(v25) = v83;
                      OUTLINED_FUNCTION_21_5();
                      handle_invalid_anno();
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
        v63 = OUTLINED_FUNCTION_21_5();
        single_chars(v63, v64, &v100);
      }

LABEL_49:
      v91 = OUTLINED_FUNCTION_72();
      starttest(v91, v92);
      OUTLINED_FUNCTION_63();
      bspush_ca_boa();
      OUTLINED_FUNCTION_46();
      if (legal_end_of_anno())
      {
        v25 = v25;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
LABEL_27:
      v25 = v37;
      do
      {
        v65 = OUTLINED_FUNCTION_71();
        bspush_ca_scan(v65, v66);
        v67 = OUTLINED_FUNCTION_10_8();
      }

      while (!testFldeq(v67, v68, v69, 1) && !advance_tok(v6, v70, v71, v72));
    }

LABEL_30:
    v73 = *(v6 + 104);
    if (v73)
    {
      v74 = OUTLINED_FUNCTION_33_1(v73);
    }

    else
    {
      v74 = vback(v6, v25);
      v25 = 0;
    }

    switch(v74)
    {
      case 1:
        v4 = v96;
        continue;
      case 2:
      case 5:
        goto LABEL_12;
      case 3:
        goto LABEL_13;
      case 6:
        goto LABEL_14;
      case 7:
        goto LABEL_53;
      case 8:
        goto LABEL_15;
      case 9:
        goto LABEL_16;
      case 10:
        goto LABEL_17;
      case 11:
        goto LABEL_18;
      case 12:
        do
        {
          v75 = OUTLINED_FUNCTION_53();
          bspush_ca_scan(v75, v76);
          v77 = OUTLINED_FUNCTION_10_8();
        }

        while (!testFldeq(v77, v78, v79, 2) && !advance_tok(v6, v80, v81, v82));
        goto LABEL_30;
      case 13:
        v37 = v25;
        goto LABEL_27;
      case 14:
        v85 = OUTLINED_FUNCTION_24_5();
        savescptr(v85, v86, &v100);
        goto LABEL_18;
      case 15:
        goto LABEL_20;
      case 16:
      case 17:
        goto LABEL_49;
      case 18:
        v45 = v25;
        goto LABEL_21;
      case 19:
        v50 = v25;
        goto LABEL_22;
      case 20:
        v54 = v25;
        goto LABEL_23;
      case 21:
        v58 = v25;
        goto LABEL_24;
      case 22:
        v62 = v25;
        goto LABEL_46;
      case 23:
        v84 = v25;
        goto LABEL_47;
      case 24:
        v83 = v25;
        goto LABEL_48;
      case 25:
        bspop_boa(v6);
        *(v6 + 136) = 1;
        *(v6 + 112) = v101;
        *(v6 + 128) = 0;
        insert_r(v6, 1, 2, &unk_2806BB088, 0);
        goto LABEL_53;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v6);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_69();
}

uint64_t is_afterslash_char()
{
  OUTLINED_FUNCTION_54();
  v59 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_8(v3, v4, v5, v6, v7, v8, v9, v10, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1]);
  OUTLINED_FUNCTION_26_5();
  bzero(v58, v11);
  if (!setjmp(v58))
  {
    OUTLINED_FUNCTION_76();
    if (!ventproc(v0, v12, v13, v14, v15, v58))
    {
      v16 = OUTLINED_FUNCTION_2_9();
      get_parm(v16, v17, v18, -6);
      OUTLINED_FUNCTION_28_3(v19, &v55);
      OUTLINED_FUNCTION_41();
      v20 = OUTLINED_FUNCTION_21_5();
      if (!lpta_loadp_setscan_r(v20, v21, v2))
      {
        v22 = OUTLINED_FUNCTION_22_5();
        if (testFldeq(v22, v23, 2, v24) || advance_tok(v0, v25, v26, v27))
        {
          v28 = *(v0 + 104);
          if (v28)
          {
            *(v0 + 104) = 0;
          }

          else
          {
            v29 = OUTLINED_FUNCTION_34_1();
            LODWORD(v28) = vback(v29, v30);
          }

          if ((v28 & 0xFFFFFFFE) != 2)
          {
            goto LABEL_10;
          }
        }

        else
        {
          single_chars_to_punct(v0, v57, &v55);
        }

        OUTLINED_FUNCTION_44(v56);
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  v1 = 94;
LABEL_11:
  vretproc(v0);
  return v1;
}

uint64_t SPR_anno()
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_9(v2, v3, v4, v5, v6, v7, v8, v9, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v139, v142, v145, v148, v150, v152, v154);
  OUTLINED_FUNCTION_16_7();
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_7_8();
    v15 = OUTLINED_FUNCTION_73(v10, v11, v12, v13, v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_19_5(v15, v16, v17, v18, v19, v20, v21, v22, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v140, v143, v146, v149, v151, v153);
      v23 = OUTLINED_FUNCTION_2_9();
      get_parm(v23, v24, v25, -6);
      v26 = OUTLINED_FUNCTION_9_8();
      get_parm(v26, v27, v28, -6);
      v29 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v29, v30);
      v31 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v31, v32, 1))
      {
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_35_0(2, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134);
          v34 = OUTLINED_FUNCTION_42();
          handle_SPR(v34, v35);
          if (v36)
          {
            OUTLINED_FUNCTION_14_7();
            v36 = handle_invalid_anno();
          }

          else
          {
            *(v0 + 2614) = *(v0 + 2634);
          }

          OUTLINED_FUNCTION_17_7(v36, v37, v38, v39, v40, v41, v42, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v138, v141, v144, v147);
        }
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_68();
}

uint64_t emphasis_anno()
{
  OUTLINED_FUNCTION_54();
  v92 = *MEMORY[0x277D85DE8];
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v82, v2);
  OUTLINED_FUNCTION_26_5();
  bzero(v91, v3);
  v4 = setjmp(v91);
  if (v4 || OUTLINED_FUNCTION_73(v4, v82, v90, v89, v88))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_2_9();
  get_parm(v6, v7, v8, -6);
  v9 = OUTLINED_FUNCTION_9_8();
  get_parm(v9, v10, v11, -6);
  v83 = 65532;
  fence_10(v0);
  OUTLINED_FUNCTION_89();
  v12 = OUTLINED_FUNCTION_21_5();
  if (lpta_loadp_setscan_r(v12, v13, v1))
  {
LABEL_5:
    v14 = OUTLINED_FUNCTION_24_5();
    starttest(v14, v15);
    v16 = OUTLINED_FUNCTION_65();
    if (lpta_loadp_setscan_r(v16, v17, 1) || (OUTLINED_FUNCTION_22_5(), test_string_s()))
    {
LABEL_3:
      vretproc(v0);
      return 94;
    }

LABEL_7:
    v18 = OUTLINED_FUNCTION_45();
    savescptr(v18, v19, v20);
    OUTLINED_FUNCTION_22_5();
    if (!test_string_s())
    {
      *(v0 + 3602) = 5;
      copyvar(v0, (v0 + 3600), (v0 + 3052));
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v21 = OUTLINED_FUNCTION_10_8();
  if (testFldeq(v21, v22, v23, 2) || advance_tok(v0, v24, v25, v26) || savetok(v0, (v0 + 1784)))
  {
    goto LABEL_27;
  }

  while (2)
  {
    OUTLINED_FUNCTION_40();
    v27 = OUTLINED_FUNCTION_45();
    savescptr(v27, v28, v29);
    OUTLINED_FUNCTION_22_5();
    if (test_string_s())
    {
LABEL_27:
      v56 = *(v0 + 104);
      if (v56)
      {
        v57 = OUTLINED_FUNCTION_33_1(v56);
      }

      else
      {
        v58 = OUTLINED_FUNCTION_34_1();
        v57 = vback(v58, v59);
      }

      switch(v57)
      {
        case 1:
          goto LABEL_5;
        case 2:
          continue;
        case 3:
          goto LABEL_14;
        case 4:
          v36 = HIWORD(v83);
          goto LABEL_15;
        case 5:
          goto LABEL_20;
        case 6:
          v36 = HIWORD(v83);
          goto LABEL_16;
        case 7:
          v36 = HIWORD(v83);
          goto LABEL_17;
        case 8:
          v36 = HIWORD(v83);
          goto LABEL_18;
        case 9:
        case 12:
          goto LABEL_32;
        case 10:
          v55 = *(v0 + 5122);
          goto LABEL_26;
        case 11:
          goto LABEL_35;
        case 14:
          goto LABEL_7;
        case 15:
          goto LABEL_33;
        case 16:
          goto LABEL_37;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  token_to_number(v0, v0 + 1784, &v83);
LABEL_14:
  v36 = HIWORD(v83);
  v37 = 3044;
  if (HIWORD(v83))
  {
LABEL_15:
    v37 = 3036;
    if (v36 != 1)
    {
LABEL_16:
      v37 = 3032;
      if (v36 != 2)
      {
LABEL_17:
        v37 = 3056;
        if (v36 != 3)
        {
LABEL_18:
          v37 = 3060;
          if (v36 != 4)
          {
            goto LABEL_20;
          }
        }
      }
    }
  }

  *(v0 + 3602) = 5;
  copyvar(v0, (v0 + 3600), (v0 + v37));
LABEL_20:
  *(v0 + 3602) = 5;
  npush_v(v0, (v0 + 3600), v30, v31, v32, v33, v34, v35);
  npush_v(v0, (v0 + 3032), v38, v39, v40, v41, v42, v43);
  if (!if_testlt(v0, v44, v45, v46, v47, v48, v49, v50))
  {
    v51 = OUTLINED_FUNCTION_22_5();
    npush_s(v51);
    *(v0 + 3602) = 7;
    npop(v0, (v0 + 3600));
    v52 = OUTLINED_FUNCTION_24_5();
    starttest(v52, v53);
    v54 = OUTLINED_FUNCTION_24_5();
    bspush_ca(v54);
    v55 = *(v0 + 5102);
LABEL_26:
    if (v55 == *(v0 + 5090))
    {
LABEL_35:
      npush_s(v0);
      OUTLINED_FUNCTION_83();
      goto LABEL_36;
    }

    goto LABEL_27;
  }

LABEL_32:
  *(v0 + 3602) = 8;
  v60 = OUTLINED_FUNCTION_29_3();
  npush_v(v60, v61, v62, v63, v64, v65, v66, v67);
  v68 = OUTLINED_FUNCTION_34_1();
  ncompare_s(v68, v69);
  if (!testeq(v0))
  {
LABEL_36:
    npush_s(v0);
    *(v0 + 3602) = 8;
    v80 = OUTLINED_FUNCTION_29_3();
    npop(v80, v81);
    goto LABEL_37;
  }

LABEL_33:
  *(v0 + 3602) = 8;
  v70 = OUTLINED_FUNCTION_29_3();
  npush_v(v70, v71, v72, v73, v74, v75, v76, v77);
  v78 = OUTLINED_FUNCTION_86();
  ncompare_s(v78, v79);
  if (!testeq(v0))
  {
    goto LABEL_36;
  }

LABEL_37:
  OUTLINED_FUNCTION_90(v85);
  return 0;
}

uint64_t phr_final_anno()
{
  OUTLINED_FUNCTION_0_10();
  v59 = *MEMORY[0x277D85DE8];
  v55[0] = 0;
  v55[1] = 0;
  OUTLINED_FUNCTION_1_9(v4, v5, v6, v7, v8, v9, v10, v11, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v51[0], v51[1], v51[2], v51[3], v52, v53, v54[0], v54[1]);
  OUTLINED_FUNCTION_16_7();
  v12 = setjmp(v3);
  if (v12)
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_73(v12, v50, v58, v57, v56);
  if (v13)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_31_2(v13, v55);
  v15 = OUTLINED_FUNCTION_2_9();
  get_parm(v15, v16, v17, -6);
  OUTLINED_FUNCTION_28_3(v18, &v52);
  v19 = OUTLINED_FUNCTION_36_0();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_37_0();
  push_ptr_init(v21, v22);
  OUTLINED_FUNCTION_41();
  v23 = OUTLINED_FUNCTION_21_5();
  if (lpta_loadp_setscan_r(v23, v24, v2) || (OUTLINED_FUNCTION_22_5(), test_string_s()))
  {
LABEL_10:
    if (lpta_loadp_setscan_r(v0, v54, 1))
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_22_5();
    if (test_string_s())
    {
      goto LABEL_3;
    }

LABEL_12:
    v33 = OUTLINED_FUNCTION_42();
    savescptr(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_24_5();
    starttest_l(v36, v37);
    v38 = OUTLINED_FUNCTION_29_3();
    if (!lpta_loadp_setscan_r(v38, v39, 1))
    {
      v40 = OUTLINED_FUNCTION_10_8();
      if (testFldeq(v40, v41, v42, 4) || advance_tok(v0, v43, v44, v45))
      {
        goto LABEL_15;
      }

      *(v0 + 2766) = *(v0 + 2782);
    }

LABEL_20:
    *(v1 + 8) = v53;
    goto LABEL_3;
  }

  v25 = OUTLINED_FUNCTION_18_6();
  bspush_ca_scan(v25, v26);
  OUTLINED_FUNCTION_22_5();
  if (!test_string_s())
  {
LABEL_7:
    v27 = OUTLINED_FUNCTION_45();
    savescptr(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_18_6();
    bspush_ca_scan(v30, v31);
    OUTLINED_FUNCTION_22_5();
    if (!test_string_s())
    {
LABEL_8:
      savescptr(v0, 4, v51);
LABEL_9:
      OUTLINED_FUNCTION_40();
      savescptr(v0, v32, &v52);
      goto LABEL_20;
    }
  }

LABEL_15:
  v46 = *(v0 + 104);
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_33_1(v46);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_34_1();
    v47 = vback(v48, v49);
  }

  switch(v47)
  {
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_9;
    case 3:
      goto LABEL_7;
    case 4:
      goto LABEL_8;
    case 5:
    case 6:
    case 9:
      goto LABEL_20;
    case 8:
      goto LABEL_12;
    default:
      break;
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_80();
}

void phr_prediction_anno(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_23_5(v5, v6, v7, v8, v9, v10, v11, v12, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SHIDWORD(v78), v79, v80, v81, v82, v83, v84, v85[0], v85[1]);
  OUTLINED_FUNCTION_26_5();
  bzero(v86, v13);
  v14 = setjmp(v86);
  if (v14)
  {
    goto LABEL_5;
  }

  v21 = OUTLINED_FUNCTION_38_0(v14, &v55, v15, v16, v17, v18, v19, v20, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0], v85[1], v85[2], SHIDWORD(v85[2]), v85[3], SWORD2(v85[3]), SHIWORD(v85[3]), v85[4], SWORD2(v85[4]), SBYTE6(v85[4]), SHIBYTE(v85[4]), v85[5], v86[0]);
  if (v21)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31_2(v21, v85);
  v22 = OUTLINED_FUNCTION_2_9();
  get_parm(v22, v23, v24, -6);
  OUTLINED_FUNCTION_28_3(v25, &v81);
  v26 = OUTLINED_FUNCTION_85();
  push_ptr_init(v26, v27);
  HIDWORD(v78) = 65532;
  v28 = OUTLINED_FUNCTION_4_8();
  if (lpta_loadp_setscan_r(v28, v29, 1))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_30_2();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  while (2)
  {
    v30 = OUTLINED_FUNCTION_21_5();
    savescptr(v30, v31, &v79);
    v32 = OUTLINED_FUNCTION_46();
    if (lpta_loadp_setscan_r(v32, v33, 1) || (OUTLINED_FUNCTION_3_9(), v34 = test_string_s(), v34) || (*(v4 + 136) = 1, OUTLINED_FUNCTION_25_5(v34, v35, v36)))
    {
LABEL_16:
      v49 = OUTLINED_FUNCTION_46();
      if (lpta_loadp_setscan_r(v49, v50, 1) || (OUTLINED_FUNCTION_3_9(), v51 = test_string_s(), v51) || (*(v4 + 136) = 1, v54 = OUTLINED_FUNCTION_25_5(v51, v52, v53), v37 = 1, v54))
      {
LABEL_19:
        OUTLINED_FUNCTION_82();
LABEL_20:
        OUTLINED_FUNCTION_44(v82);
        break;
      }
    }

    else
    {
      v37 = 0;
    }

    *(v4 + 3238) = v37;
LABEL_11:
    v38 = OUTLINED_FUNCTION_71();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_62();
    move_i(v40, v41, 13);
    v42 = OUTLINED_FUNCTION_62();
    if (!annoCallback(v42, v43, v44))
    {
      goto LABEL_20;
    }

    v45 = *(v4 + 104);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_33_1(v45);
    }

    else
    {
      v47 = OUTLINED_FUNCTION_34_1();
      v46 = vback(v47, v48);
    }

    switch(v46)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_16;
      case 4:
      case 7:
        goto LABEL_11;
      case 5:
        goto LABEL_19;
      case 6:
      case 8:
        goto LABEL_20;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v4);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_69();
}

void pause_anno(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v125 = *MEMORY[0x277D85DE8];
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  v111[0] = 0;
  v111[1] = 0;
  v109 = 0;
  v110 = 0;
  v107 = 0u;
  v108 = 0u;
  v105 = 0;
  v106 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v104, v6);
  OUTLINED_FUNCTION_26_5();
  bzero(v124, v7);
  if (!setjmp(v124))
  {
    v8 = ventproc(v4, v104, v123, v122, v121, v124);
    if (!v8)
    {
      OUTLINED_FUNCTION_31_2(v8, &v119);
      v9 = OUTLINED_FUNCTION_2_9();
      get_parm(v9, v10, v11, -6);
      OUTLINED_FUNCTION_28_3(v12, &v115);
      LOWORD(v113) = -3;
      LOWORD(v112) = -4;
      push_ptr_init(v4, v111);
      push_ptr_init(v4, &v109);
      *&v108 = 0;
      *(&v108 + 6) = 0;
      LODWORD(v107) = -65532;
      push_ptr_init(v4, &v105);
      fence_10(v4);
      v114 = 0;
      HIWORD(v112) = 0;
      v13 = OUTLINED_FUNCTION_21_5();
      if (!lpta_loadp_setscan_r(v13, v14, 1))
      {
        OUTLINED_FUNCTION_3_9();
        if (!test_string_s())
        {
          v15 = 0;
          while (2)
          {
            savescptr(v4, 2, v111);
LABEL_8:
            starttest(v4, 4);
            bspush_ca_boa();
            v16 = OUTLINED_FUNCTION_46();
            v18 = lpta_loadp_setscan_r(v16, v17, 1);
            v19 = v15;
            if (!v18)
            {
LABEL_9:
              v15 = v19;
              while (1)
              {
                v22 = OUTLINED_FUNCTION_30_2();
                if (testFldeq(v22, v23, 3, 2) || advance_tok(v4, v24, v25, v26))
                {
                  break;
                }

                v20 = OUTLINED_FUNCTION_46();
                bspush_ca_scan(v20, v21);
              }
            }

            v27 = v15;
LABEL_14:
            v28 = *(v4 + 104);
            if (v28)
            {
              v29 = OUTLINED_FUNCTION_33_1(v28);
              v15 = v30;
            }

            else
            {
              v29 = vback(v4, v27);
              v15 = 0;
            }

            switch(v29)
            {
              case 2:
                continue;
              case 3:
                goto LABEL_8;
              case 4:
                string_to_number(v4, v111, &v115, &v113);
                goto LABEL_19;
              case 5:
                bspop_boa(v4);
                handle_invalid_anno();
                goto LABEL_40;
              case 6:
                *(v4 + 136) = 1;
                if (OUTLINED_FUNCTION_25_5(v29, v30, v31))
                {
                  v27 = v15;
                }

                else
                {
                  v27 = 1;
                }

                goto LABEL_14;
              case 7:
                v19 = v15;
                goto LABEL_9;
              case 8:
              case 13:
              case 18:
                goto LABEL_40;
              case 9:
LABEL_19:
                if (v114 >= 1)
                {
                  goto LABEL_20;
                }

                goto LABEL_40;
              case 10:
LABEL_20:
                v32 = OUTLINED_FUNCTION_29_3();
                npush_v(v32, v33, v34, v35, v36, v37, v38, v39);
                npush_lng(v4);
                if (!if_testlt(v4, v40, v41, v42, v43, v44, v45, v46))
                {
                  v114 = 327670;
                }

                goto LABEL_22;
              case 11:
LABEL_22:
                v47 = *(v4 + 3736);
                if (v47 != 100.0)
                {
                  v114 = (v47 * v114 / 100.0);
                }

                goto LABEL_24;
              case 12:
LABEL_24:
                v110 = v120;
                startloop(v4, 13);
                goto LABEL_28;
              case 14:
                goto LABEL_28;
              case 15:
                goto LABEL_29;
              case 16:
                goto LABEL_33;
              case 17:
                goto LABEL_31;
              default:
                goto LABEL_5;
            }
          }

LABEL_31:
          v66 = v4;
          v65 = &v113;
LABEL_32:
          copyvar(v66, &v112, v65);
          while (1)
          {
LABEL_33:
            v67 = OUTLINED_FUNCTION_63();
            lpta_rpta_loadp(v67, v68, &v115);
            OUTLINED_FUNCTION_72();
            settvar_s();
            npush_s(v4);
            WORD1(v107) = 4;
            v69 = OUTLINED_FUNCTION_72();
            npop(v69, v70);
            insert_2ptv();
            v27 = v15;
            if (v71)
            {
              goto LABEL_14;
            }

            v72 = OUTLINED_FUNCTION_63();
            lpta_rpta_loadp(v72, v73, &v115);
            OUTLINED_FUNCTION_88();
            insert_2ptv();
            v27 = v15;
            if (v74)
            {
              goto LABEL_14;
            }

            v114 -= SHIWORD(v112);
            v75 = OUTLINED_FUNCTION_29_3();
            npush_v(v75, v76, v77, v78, v79, v80, v81, v82);
            npush_lng(v4);
            if (if_testlt(v4, v83, v84, v85, v86, v87, v88, v89))
            {
              break;
            }

            *(v4 + 168) = 1;
            v90 = OUTLINED_FUNCTION_77(v116);
            insert_l(v90, v91);
            v92 = OUTLINED_FUNCTION_63();
            lpta_storep(v92, v93, v94);
            *(v4 + 168) = 1;
            v95 = OUTLINED_FUNCTION_77(v110);
            insert_l(v95, v96);
            lpta_storep(v4, &v105, v97);
            *(v4 + 168) = 1;
            *(v4 + 144) = v110;
            *(v4 + 136) = 1;
            *(v4 + 112) = v116;
            *(v4 + 128) = 0;
            v98 = OUTLINED_FUNCTION_88();
            proj_l(v98, v99, v100);
            *(v4 + 168) = 1;
            *(v4 + 144) = v106;
            *(v4 + 136) = 1;
            *(v4 + 112) = v110;
            *(v4 + 128) = 0;
            v101 = OUTLINED_FUNCTION_88();
            proj_l(v101, v102, v103);
LABEL_28:
            starttest(v4, 15);
            v48 = OUTLINED_FUNCTION_29_3();
            npush_v(v48, v49, v50, v51, v52, v53, v54, v55);
            npush_lng(v4);
            if (if_testlt(v4, v56, v57, v58, v59, v60, v61, v62))
            {
LABEL_29:
              v63 = OUTLINED_FUNCTION_87();
              starttest(v63, v64);
              if (*(v4 + 3592) <= v114)
              {
                goto LABEL_31;
              }

              v65 = (v4 + 3572);
              v66 = v4;
              goto LABEL_32;
            }

            move_i(v4, &v112, 0x7FFF);
          }

LABEL_40:
          *(v5 + 8) = v116;
        }
      }
    }
  }

LABEL_5:
  vretproc(v4);
  OUTLINED_FUNCTION_69();
}

uint64_t textnorm_anno(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_9(v3, v4, v5, v6, v7, v8, v9, v10, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149, v152, v155, v157, v159, v161);
  OUTLINED_FUNCTION_16_7();
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_7_8();
    v16 = OUTLINED_FUNCTION_73(v11, v12, v13, v14, v15);
    if (!v16)
    {
      OUTLINED_FUNCTION_19_5(v16, v17, v18, v19, v20, v21, v22, v23, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v153, v156, v158, v160);
      v24 = OUTLINED_FUNCTION_2_9();
      get_parm(v24, v25, v26, -6);
      v27 = OUTLINED_FUNCTION_9_8();
      get_parm(v27, v28, v29, -6);
      v30 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v30, v31);
      v32 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v32, v33, 1))
      {
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_35_0(2, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141);
          v35 = OUTLINED_FUNCTION_42();
          spellout_mode_anno(v35, v36, v37, v38);
          if (v39)
          {
            v47 = OUTLINED_FUNCTION_32_1();
            year_mode_anno(v47, v48, v49, v50);
            if (v39)
            {
              OUTLINED_FUNCTION_14_7();
              v39 = handle_invalid_anno();
            }
          }

          OUTLINED_FUNCTION_17_7(v39, v40, v41, v42, v43, v44, v45, v46, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v145, v148, v151, v154);
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_68();
}

void environment_anno(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v155 = *MEMORY[0x277D85DE8];
  v150[0] = 0;
  v150[1] = 0;
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  v138 = 0;
  v139 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(&v115, v5);
  OUTLINED_FUNCTION_26_5();
  bzero(v154, v6);
  if (!setjmp(v154))
  {
    v7 = ventproc(v4, &v115, v153, v152, v151, v154);
    if (!v7)
    {
      OUTLINED_FUNCTION_31_2(v7, v150);
      v8 = OUTLINED_FUNCTION_2_9();
      get_parm(v8, v9, v10, -6);
      OUTLINED_FUNCTION_28_3(v11, &v146);
      push_ptr_init(v4, &v144);
      v12 = OUTLINED_FUNCTION_50();
      push_ptr_init(v12, v13);
      v14 = OUTLINED_FUNCTION_79();
      push_ptr_init(v14, v15);
      v16 = OUTLINED_FUNCTION_67();
      push_ptr_init(v16, v17);
      v18 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v18, v19, 1))
      {
        OUTLINED_FUNCTION_3_9();
        if (!test_string_s())
        {
          v114 = 9;
          v113 = 12;
          while (2)
          {
            v20 = OUTLINED_FUNCTION_46();
            savescptr(v20, v21, &v144);
            if (!spr_output_anno(v4))
            {
              goto LABEL_45;
            }

LABEL_8:
            v22 = OUTLINED_FUNCTION_63();
            if (lpta_loadp_setscan_r(v22, v23, 1) || (OUTLINED_FUNCTION_30_2(), test_string_s()))
            {
LABEL_24:
              if (!lpta_loadp_setscan_r(v4, &v144, 1))
              {
                OUTLINED_FUNCTION_22_5();
                if (!test_string_s())
                {
LABEL_35:
                  v71 = OUTLINED_FUNCTION_42();
                  savescptr(v71, v72, v73);
                  v74 = OUTLINED_FUNCTION_29_3();
                  if (lpta_loadp_setscan_r(v74, v75, 1) || (OUTLINED_FUNCTION_3_9(), v76 = test_string_s(), v76) || OUTLINED_FUNCTION_15_7(v76, v77, v78, v79, v80, v81, v82, v83, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147))
                  {
LABEL_38:
                    v84 = OUTLINED_FUNCTION_50();
                    if (lpta_loadp_setscan_r(v84, v85, 1) || (OUTLINED_FUNCTION_3_9(), v86 = test_string_s(), v86) || OUTLINED_FUNCTION_15_7(v86, v87, v88, v89, v90, v91, v92, v93, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147))
                    {
LABEL_41:
                      v94 = OUTLINED_FUNCTION_50();
                      if (lpta_loadp_setscan_r(v94, v95, 1))
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_3_9();
                      v96 = test_string_s();
                      if (v96 || OUTLINED_FUNCTION_15_7(v96, v97, v98, v99, v100, v101, v102, v103, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147))
                      {
                        break;
                      }

                      *(v4 + 3634) = 3;
                      v109 = OUTLINED_FUNCTION_47();
                      v111 = 8000;
                    }

                    else
                    {
                      *(v4 + 3634) = 3;
                      v109 = OUTLINED_FUNCTION_47();
                      v111 = 11025;
                    }
                  }

                  else
                  {
                    *(v4 + 3634) = 3;
                    v109 = OUTLINED_FUNCTION_47();
                    v111 = 16000;
                  }

                  move_i(v109, v110, v111);
                  goto LABEL_45;
                }
              }

LABEL_26:
              if (!lpta_loadp_setscan_r(v4, &v144, 1))
              {
                OUTLINED_FUNCTION_10_8();
                if (!test_string_s())
                {
LABEL_28:
                  v48 = OUTLINED_FUNCTION_42();
                  savescptr(v48, v49, v50);
                  v51 = OUTLINED_FUNCTION_29_3();
                  if (!lpta_loadp_setscan_r(v51, v52, 1))
                  {
                    OUTLINED_FUNCTION_3_9();
                    v53 = test_string_s();
                    if (!v53 && !OUTLINED_FUNCTION_15_7(v53, v54, v55, v56, v57, v58, v59, v60, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147))
                    {
                      goto LABEL_45;
                    }
                  }

LABEL_31:
                  v61 = OUTLINED_FUNCTION_50();
                  if (!lpta_loadp_setscan_r(v61, v62, 1))
                  {
                    OUTLINED_FUNCTION_3_9();
                    v63 = test_string_s();
                    if (!v63 && !OUTLINED_FUNCTION_15_7(v63, v64, v65, v66, v67, v68, v69, v70, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147))
                    {
LABEL_45:
                      OUTLINED_FUNCTION_44(v147);
                      goto LABEL_5;
                    }
                  }
                }
              }
            }

            else
            {
LABEL_10:
              v24 = OUTLINED_FUNCTION_72();
              savescptr(v24, v25, &v142);
              v26 = OUTLINED_FUNCTION_71();
              starttest(v26, v27);
              v28 = OUTLINED_FUNCTION_53();
              if (!lpta_loadp_setscan_r(v28, v29, 1))
              {
                v30 = OUTLINED_FUNCTION_62();
                bspush_ca_scan(v30, v31);
                OUTLINED_FUNCTION_3_9();
                if (test_string_s())
                {
LABEL_15:
                  v43 = *(v4 + 104);
                  if (v43)
                  {
                    v35 = OUTLINED_FUNCTION_33_1(v43);
                  }

                  else
                  {
                    v44 = OUTLINED_FUNCTION_34_1();
                    v35 = vback(v44, v45);
                  }

                  switch(v35)
                  {
                    case 2:
                      continue;
                    case 3:
                      goto LABEL_8;
                    case 4:
                    case 14:
                    case 16:
                    case 20:
                    case 26:
                    case 28:
                      goto LABEL_45;
                    case 5:
                      goto LABEL_24;
                    case 6:
                      goto LABEL_10;
                    case 7:
                    case 22:
                    case 23:
                    case 27:
                      goto LABEL_44;
                    case 8:
                      v46 = OUTLINED_FUNCTION_21_5();
                      bspush_ca_scan(v46, v47);
                      OUTLINED_FUNCTION_3_9();
                      if (test_string_s())
                      {
                        goto LABEL_15;
                      }

                      goto LABEL_23;
                    case 9:
                      break;
                    case 10:
                      goto LABEL_14;
                    case 11:
                      OUTLINED_FUNCTION_3_9();
                      v35 = test_string_s();
                      if (!v35)
                      {
                        goto LABEL_14;
                      }

                      goto LABEL_15;
                    case 12:
LABEL_23:
                      v32 = OUTLINED_FUNCTION_87();
                      v34 = &v138;
                      goto LABEL_13;
                    case 13:
                      goto LABEL_47;
                    case 15:
                      goto LABEL_49;
                    case 17:
                      goto LABEL_26;
                    case 18:
                      goto LABEL_35;
                    case 19:
                      goto LABEL_38;
                    case 21:
                      goto LABEL_41;
                    case 24:
                      goto LABEL_28;
                    case 25:
                      goto LABEL_31;
                    default:
                      goto LABEL_5;
                  }
                }

                v32 = v4;
                v33 = v114;
                v34 = &v140;
LABEL_13:
                savescptr(v32, v33, v34);
LABEL_14:
                if (OUTLINED_FUNCTION_15_7(v35, v36, v37, v38, v39, v40, v41, v42, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147))
                {
                  goto LABEL_15;
                }

                if (*(v4 + 3616) == 1)
                {
LABEL_47:
                  v104 = OUTLINED_FUNCTION_67();
                  lpta_loadpn(v104, v105);
                  OUTLINED_FUNCTION_84();
                  if (compare_ptas(v4) || testneq(v4))
                  {
LABEL_49:
                    v106 = OUTLINED_FUNCTION_79();
                    lpta_loadpn(v106, v107);
                    OUTLINED_FUNCTION_84();
                    if (compare_ptas(v4) || testneq(v4))
                    {
                      goto LABEL_45;
                    }

                    v108 = *(v4 + 2282);
                  }

                  else
                  {
                    v108 = *(v4 + 3438);
                  }

                  *(v4 + 3434) = v108;
                }

                goto LABEL_45;
              }
            }

            break;
          }

LABEL_44:
          handle_invalid_anno();
          goto LABEL_45;
        }
      }
    }
  }

LABEL_5:
  vretproc(v4);
  OUTLINED_FUNCTION_69();
}

uint64_t voice_anno(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_9(v3, v4, v5, v6, v7, v8, v9, v10, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v154, v157, v159, v161, v163);
  OUTLINED_FUNCTION_16_7();
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_7_8();
    v16 = OUTLINED_FUNCTION_73(v11, v12, v13, v14, v15);
    if (!v16)
    {
      OUTLINED_FUNCTION_19_5(v16, v17, v18, v19, v20, v21, v22, v23, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v155, v158, v160, v162);
      v24 = OUTLINED_FUNCTION_2_9();
      get_parm(v24, v25, v26, -6);
      v27 = OUTLINED_FUNCTION_9_8();
      get_parm(v27, v28, v29, -6);
      v30 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v30, v31);
      v32 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v32, v33, 1))
      {
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_35_0(2, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143);
          v35 = OUTLINED_FUNCTION_42();
          v36 = prestored_voice_anno(v35);
          if (v36)
          {
            v44 = OUTLINED_FUNCTION_32_1();
            vocal_tract_anno(v44, v45, v46, v47);
            if (v36)
            {
              v48 = OUTLINED_FUNCTION_32_1();
              v36 = voice_feature_anno(v48);
              if (v36)
              {
                v49 = OUTLINED_FUNCTION_32_1();
                wpm_anno(v49, v50, v51, v52);
                if (v36)
                {
                  OUTLINED_FUNCTION_14_7();
                  v36 = handle_invalid_anno();
                }
              }
            }
          }

          OUTLINED_FUNCTION_17_7(v36, v37, v38, v39, v40, v41, v42, v43, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v153, v156);
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_68();
}

uint64_t word_accent_anno(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_9(v4, v5, v6, v7, v8, v9, v10, v11, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v210, v212, v214);
  OUTLINED_FUNCTION_16_7();
  if (setjmp(v3))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_7_8();
  v17 = OUTLINED_FUNCTION_73(v12, v13, v14, v15, v16);
  if (v17)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_19_5(v17, v18, v19, v20, v21, v22, v23, v24, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v211, v213);
  v25 = OUTLINED_FUNCTION_2_9();
  get_parm(v25, v26, v27, -6);
  v28 = OUTLINED_FUNCTION_9_8();
  get_parm(v28, v29, v30, -6);
  v31 = OUTLINED_FUNCTION_37_0();
  push_ptr_init(v31, v32);
  OUTLINED_FUNCTION_41();
  v33 = OUTLINED_FUNCTION_21_5();
  if (lpta_loadp_setscan_r(v33, v34, v2))
  {
    goto LABEL_4;
  }

  v36 = OUTLINED_FUNCTION_18_6();
  bspush_ca_scan(v36, v37);
  while (2)
  {
    OUTLINED_FUNCTION_22_5();
    if (test_string_s())
    {
      goto LABEL_24;
    }

LABEL_7:
    OUTLINED_FUNCTION_35_0(3, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195);
    v38 = OUTLINED_FUNCTION_24_5();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_29_3();
    if (lpta_loadp_setscan_r(v40, v41, 1))
    {
LABEL_38:
      OUTLINED_FUNCTION_14_7();
      v88 = handle_invalid_anno();
      goto LABEL_53;
    }

    v42 = OUTLINED_FUNCTION_10_8();
    if (testFldeq(v42, v43, v44, 1) || advance_tok(v1, v45, v46, v47))
    {
      goto LABEL_24;
    }

LABEL_10:
    v48 = OUTLINED_FUNCTION_45();
    savescptr(v48, v49, v50);
    OUTLINED_FUNCTION_22_5();
    if (test_string_s())
    {
      goto LABEL_24;
    }

    v51 = OUTLINED_FUNCTION_24_5();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v53, v54, 1))
    {
      v77 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v77, v78);
LABEL_23:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_39:
      v99 = OUTLINED_FUNCTION_22_5();
LABEL_41:
      npush_s(v99);
      v100 = (v1 + 3600);
      v101 = 6;
LABEL_42:
      *(v1 + 3602) = v101;
      goto LABEL_47;
    }

LABEL_12:
    v55 = OUTLINED_FUNCTION_24_5();
    starttest(v55, v56);
    v57 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v57, v58, 1))
    {
      v79 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v79, v80);
LABEL_34:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_40:
      v99 = OUTLINED_FUNCTION_34_1();
      goto LABEL_41;
    }

LABEL_13:
    v59 = OUTLINED_FUNCTION_24_5();
    starttest(v59, v60);
    v61 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v61, v62, 1))
    {
      v81 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v81, v82);
LABEL_32:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_43:
      v98 = OUTLINED_FUNCTION_86();
LABEL_46:
      npush_s(v98);
      OUTLINED_FUNCTION_83();
      v103 = OUTLINED_FUNCTION_22_5();
      npush_s(v103);
      *(v1 + 3602) = 7;
      v100 = v2;
LABEL_47:
      npop(v1, v100);
LABEL_48:
      v104 = OUTLINED_FUNCTION_75();
      npush_v(v104, v105, v106, v107, v108, v109, v110, v111);
      v112 = OUTLINED_FUNCTION_34_1();
      ncompare_s(v112, v113);
      if (!testeq(v1))
      {
        v124 = OUTLINED_FUNCTION_86();
        goto LABEL_52;
      }

LABEL_49:
      v114 = OUTLINED_FUNCTION_75();
      npush_v(v114, v115, v116, v117, v118, v119, v120, v121);
      v122 = OUTLINED_FUNCTION_22_5();
      ncompare_s(v122, v123);
      v88 = testeq(v1);
      if (!v88)
      {
        v124 = v1;
LABEL_52:
        npush_s(v124);
        v125 = OUTLINED_FUNCTION_75();
        npop(v125, v126);
      }

LABEL_53:
      OUTLINED_FUNCTION_17_7(v88, v89, v90, v91, v92, v93, v94, v95, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207);
      break;
    }

LABEL_14:
    v63 = OUTLINED_FUNCTION_24_5();
    starttest(v63, v64);
    v65 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v65, v66, 1))
    {
      v83 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v83, v84);
LABEL_30:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_45:
      v98 = v1;
      goto LABEL_46;
    }

LABEL_15:
    v67 = OUTLINED_FUNCTION_24_5();
    starttest(v67, v68);
    v69 = OUTLINED_FUNCTION_37_0();
    if (!lpta_loadp_setscan_r(v69, v70, 1))
    {
      v85 = OUTLINED_FUNCTION_24_5();
      bspush_ca_scan(v85, v86);
LABEL_36:
      OUTLINED_FUNCTION_22_5();
      if (test_string_s())
      {
        goto LABEL_24;
      }

LABEL_37:
      v98 = v1;
      goto LABEL_46;
    }

LABEL_16:
    v71 = OUTLINED_FUNCTION_24_5();
    starttest(v71, v72);
    v73 = OUTLINED_FUNCTION_37_0();
    if (lpta_loadp_setscan_r(v73, v74, 1))
    {
      goto LABEL_38;
    }

    v75 = OUTLINED_FUNCTION_24_5();
    bspush_ca_scan(v75, v76);
LABEL_28:
    OUTLINED_FUNCTION_22_5();
    if (!test_string_s())
    {
LABEL_44:
      v102 = OUTLINED_FUNCTION_22_5();
      npush_s(v102);
      v100 = (v1 + 3600);
      v101 = 7;
      goto LABEL_42;
    }

LABEL_24:
    v87 = *(v1 + 104);
    if (v87)
    {
      v88 = OUTLINED_FUNCTION_33_1(v87);
    }

    else
    {
      v96 = OUTLINED_FUNCTION_34_1();
      v88 = vback(v96, v97);
    }

    switch(v88)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_7;
      case 4:
      case 22:
        goto LABEL_38;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_12;
      case 7:
        goto LABEL_23;
      case 8:
        goto LABEL_39;
      case 9:
        goto LABEL_48;
      case 10:
        goto LABEL_13;
      case 11:
        goto LABEL_34;
      case 12:
        goto LABEL_40;
      case 13:
        goto LABEL_14;
      case 14:
        goto LABEL_32;
      case 15:
        goto LABEL_43;
      case 16:
        goto LABEL_15;
      case 17:
        goto LABEL_30;
      case 18:
        goto LABEL_45;
      case 19:
        goto LABEL_16;
      case 20:
        goto LABEL_36;
      case 21:
        goto LABEL_37;
      case 23:
        goto LABEL_28;
      case 24:
        goto LABEL_44;
      case 25:
      case 27:
      case 28:
      case 29:
        goto LABEL_53;
      case 26:
        goto LABEL_49;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  vretproc(v1);
  return OUTLINED_FUNCTION_68();
}

uint64_t dict_anno(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  v83[30] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_52();
  v76 = 0;
  v77 = 0;
  HIDWORD(v75) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v74, v5);
  OUTLINED_FUNCTION_16_7();
  v6 = setjmp(v4);
  if (!v6)
  {
    v13 = OUTLINED_FUNCTION_51(v6, v74, v7, v8, v9, v10, v11, v12, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17], v74[18], v74[19], v74[20], v74[21], v74[22], v75, v76, v77, v78[0], v78[1], v79, v80, v81, v82, v83[0], v83[1], v83[2], SHIDWORD(v83[2]), v83[3], SWORD2(v83[3]), SHIWORD(v83[3]), v83[4], SWORD2(v83[4]), SBYTE6(v83[4]), SHIBYTE(v83[4]));
    if (!v13)
    {
      OUTLINED_FUNCTION_31_2(v13, v83);
      v14 = OUTLINED_FUNCTION_2_9();
      get_parm(v14, v15, v16, -6);
      OUTLINED_FUNCTION_28_3(v17, &v79);
      v18 = OUTLINED_FUNCTION_65();
      push_ptr_init(v18, v19);
      v20 = OUTLINED_FUNCTION_36_0();
      push_ptr_init(v20, v21);
      HIDWORD(v75) = 65532;
      OUTLINED_FUNCTION_41();
      v22 = OUTLINED_FUNCTION_21_5();
      if (!lpta_loadp_setscan_r(v22, v23, v3))
      {
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
          v25 = OUTLINED_FUNCTION_18_6();
          bspush_ca_scan(v25, v26);
          OUTLINED_FUNCTION_22_5();
          if (test_string_s())
          {
            goto LABEL_29;
          }

LABEL_8:
          savescptr(v1, 3, v78);
          while (2)
          {
            v27 = OUTLINED_FUNCTION_45();
            savescptr(v27, v28, v29);
LABEL_10:
            v30 = OUTLINED_FUNCTION_65();
            lpta_loadpn(v30, v31);
            OUTLINED_FUNCTION_84();
            if (compare_ptas(v1) || testneq(v1))
            {
LABEL_12:
              v32 = OUTLINED_FUNCTION_36_0();
              if (!lpta_loadp_setscan_r(v32, v33, 1))
              {
                OUTLINED_FUNCTION_3_9();
                v34 = test_string_s();
                if (!v34)
                {
                  *(v1 + 136) = 1;
                  v37 = OUTLINED_FUNCTION_25_5(v34, v35, v36);
                  v38 = 2282;
                  if (!v37)
                  {
LABEL_18:
                    *(v1 + 5398) = *(v1 + v38);
LABEL_19:
                    v45 = OUTLINED_FUNCTION_24_5();
                    starttest(v45, v46);
                    v47 = OUTLINED_FUNCTION_29_3();
                    move_i(v47, v48, 19);
                    goto LABEL_28;
                  }
                }
              }

LABEL_15:
              v39 = OUTLINED_FUNCTION_36_0();
              if (!lpta_loadp_setscan_r(v39, v40, 1))
              {
                OUTLINED_FUNCTION_3_9();
                v41 = test_string_s();
                if (!v41)
                {
                  *(v1 + 136) = 1;
                  v44 = OUTLINED_FUNCTION_25_5(v41, v42, v43);
                  v38 = 2278;
                  if (!v44)
                  {
                    goto LABEL_18;
                  }
                }
              }

LABEL_35:
              OUTLINED_FUNCTION_74();
              handle_invalid_anno();
              break;
            }

            v49 = OUTLINED_FUNCTION_36_0();
            if (lpta_loadp_setscan_r(v49, v50, 1) || (OUTLINED_FUNCTION_3_9(), v51 = test_string_s(), v51) || (*(v1 + 136) = 1, v54 = OUTLINED_FUNCTION_25_5(v51, v52, v53), v55 = 2282, v54))
            {
LABEL_23:
              v56 = OUTLINED_FUNCTION_36_0();
              if (lpta_loadp_setscan_r(v56, v57, 1))
              {
                goto LABEL_35;
              }

              OUTLINED_FUNCTION_3_9();
              v58 = test_string_s();
              if (v58)
              {
                goto LABEL_35;
              }

              *(v1 + 136) = 1;
              v61 = OUTLINED_FUNCTION_25_5(v58, v59, v60);
              v55 = 2278;
              if (v61)
              {
                goto LABEL_35;
              }
            }

            *(v1 + 5390) = *(v1 + v55);
LABEL_27:
            v62 = OUTLINED_FUNCTION_24_5();
            starttest(v62, v63);
            v64 = OUTLINED_FUNCTION_29_3();
            move_i(v64, v65, 3);
LABEL_28:
            v66 = OUTLINED_FUNCTION_29_3();
            if (annoCallback(v66, v67, v68))
            {
LABEL_29:
              v69 = *(v1 + 104);
              if (v69)
              {
                v70 = OUTLINED_FUNCTION_33_1(v69);
              }

              else
              {
                v71 = OUTLINED_FUNCTION_34_1();
                v70 = vback(v71, v72);
              }

              switch(v70)
              {
                case 2:
                  OUTLINED_FUNCTION_22_5();
                  if (!test_string_s())
                  {
                    continue;
                  }

                  goto LABEL_29;
                case 3:
                  goto LABEL_8;
                case 4:
                  continue;
                case 5:
                  goto LABEL_10;
                case 6:
                  goto LABEL_12;
                case 7:
                  goto LABEL_23;
                case 8:
                  goto LABEL_27;
                case 9:
                case 15:
                  goto LABEL_35;
                case 10:
                case 11:
                case 12:
                case 16:
                  goto LABEL_36;
                case 13:
                  goto LABEL_15;
                case 14:
                  goto LABEL_19;
                default:
                  goto LABEL_5;
              }
            }

            break;
          }

LABEL_36:
          OUTLINED_FUNCTION_44(v80);
          goto LABEL_6;
        }
      }
    }
  }

LABEL_5:
  v2 = 94;
LABEL_6:
  vretproc(v1);
  return v2;
}

uint64_t handle_invalid_anno()
{
  OUTLINED_FUNCTION_54();
  v47 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_8(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0], v45[1]);
  OUTLINED_FUNCTION_26_5();
  bzero(v46, v10);
  if (setjmp(v46) || (OUTLINED_FUNCTION_76(), ventproc(v0, v11, v12, v13, v14, v46)))
  {
    vretproc(v0);
    return 94;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_36_0();
    get_parm(v16, v17, v1, -6);
    OUTLINED_FUNCTION_28_3(v18, &v43);
    fence_10(v0);
    v19 = *(v0 + 2742);
    if (!v19)
    {
      *(v0 + 2742) = *(v0 + 2754);
    }

    single_chars_token(v0);
    *(v0 + 2742) = v19;
    OUTLINED_FUNCTION_90(v44);
    return 0;
  }
}

uint64_t legal_end_of_anno()
{
  OUTLINED_FUNCTION_49();
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v32, v3);
  OUTLINED_FUNCTION_20_5(v4, v5, v6, v7, v8, v9, v10, v11, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8], v32[9], v32[10], v32[11], v32[12], v32[13], v32[14], v32[15], v32[16], v32[17], v32[18], v32[19], v32[20], v32[21], v32[22], v33, v34, v35, v36, v37[0], v37[1]);
  if (!setjmp(v2) && !ventproc(v0, v32, v37 + 7, &v36 + 6, &v35 + 4, v38))
  {
    v13 = OUTLINED_FUNCTION_29_3();
    get_parm(v13, v14, v1, -6);
    fence_10(v0);
    starttest(v0, 1);
    OUTLINED_FUNCTION_18_6();
    bspush_ca_boa();
    v15 = OUTLINED_FUNCTION_29_3();
    if (lpta_loadp_setscan_r(v15, v16, 1) || (v17 = OUTLINED_FUNCTION_24_5(), bspush_ca_scan(v17, v18), OUTLINED_FUNCTION_22_5(), test_string_s()))
    {
      v19 = 0;
    }

    else
    {
LABEL_16:
      v19 = 1;
    }

    v30 = v19;
    while (2)
    {
      v20 = *(v0 + 104);
      if (v20)
      {
        v21 = OUTLINED_FUNCTION_33_1(v20);
        v24 = v22;
      }

      else
      {
        v21 = vback(v0, v30);
        v24 = 0;
      }

      switch(v21)
      {
        case 1:
          vretproc(v0);
          return 0;
        case 2:
          bspop_boa(v0);
          break;
        case 3:
          v25 = OUTLINED_FUNCTION_29_3();
          bspush_ca_scan(v25, v26);
          v27 = testFldeq(v0, 1u, 3, 4);
          v30 = v24;
          if (v27)
          {
            continue;
          }

          v31 = advance_tok(v0, v24, v28, v29);
          goto LABEL_15;
        case 4:
          goto LABEL_16;
        case 5:
          *(v0 + 136) = 1;
          v31 = OUTLINED_FUNCTION_25_5(v21, v22, v23);
LABEL_15:
          v30 = v24;
          if (!v31)
          {
            goto LABEL_16;
          }

          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v0);
  return 94;
}

uint64_t prestored_voice_anno(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  v50 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  HIDWORD(v40) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v39, v4);
  OUTLINED_FUNCTION_16_7();
  v5 = setjmp(v3);
  if (v5 || (v6 = OUTLINED_FUNCTION_73(v5, v39, v49, v48, v47), v6) || (OUTLINED_FUNCTION_19_5(v6, v7, v8, v9, v10, v11, v12, v13, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13], v39[14], v39[15], v39[16], v39[17], v39[18], v39[19], v39[20], v39[21], v39[22], v40, v41, v42, v43, v44, v45), v14 = OUTLINED_FUNCTION_2_9(), get_parm(v14, v15, v16, -6), v17 = OUTLINED_FUNCTION_9_8(), get_parm(v17, v18, v19, -6), WORD2(v40) = -4, fence_10(v1), OUTLINED_FUNCTION_89(), v20 = OUTLINED_FUNCTION_21_5(), lpta_loadp_setscan_r(v20, v21, v2)))
  {
LABEL_4:
    vretproc(v1);
    return 94;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_10_8();
    v35 = !testFldeq(v23, v24, v25, 2) && !advance_tok(v1, v26, v27, v28) && !savetok(v1, (v1 + 1832)) && (bspush_ca_scan_boa(), v29 = OUTLINED_FUNCTION_10_8(), !testFldeq(v29, v30, v31, 2)) && !advance_tok(v1, v32, v33, v34);
    v36 = *(v1 + 104);
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_33_1(v36);
    }

    else
    {
      v37 = vback(v1, v35);
    }

    switch(v37)
    {
      case 2:
        bspop_boa(v1);
        goto LABEL_16;
      case 3:
LABEL_16:
        token_to_number(v1, v1 + 1832, &v40 + 4);
        goto LABEL_17;
      case 4:
LABEL_17:
        assign_prestored_voice_vals(v1);
        break;
      case 5:
        break;
      default:
        goto LABEL_4;
    }

    OUTLINED_FUNCTION_90(v42);
    return 0;
  }
}

void vocal_tract_anno(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v152 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(v7, v8, v9, v10, v11, v12, v13, v14, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v148, v149, v150);
  OUTLINED_FUNCTION_26_5();
  bzero(v151, v15);
  if (setjmp(v151))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_7_8();
  v20 = ventproc(v4, v16, v17, v18, v19, v151);
  if (v20)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_19_5(v20, v21, v22, v23, v24, v25, v26, v27, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v147, v148, v149);
  v28 = OUTLINED_FUNCTION_2_9();
  get_parm(v28, v29, v30, -6);
  v31 = OUTLINED_FUNCTION_9_8();
  get_parm(v31, v32, v33, -6);
  v34 = OUTLINED_FUNCTION_37_0();
  push_ptr_init(v34, v35);
  v36 = OUTLINED_FUNCTION_4_8();
  if (lpta_loadp_setscan_r(v36, v37, 1))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3_9();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_81();
  while (2)
  {
    v38 = OUTLINED_FUNCTION_46();
    savescptr(v38, v39, v5);
    v40 = OUTLINED_FUNCTION_62();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_63();
    if (lpta_loadp_setscan_r(v42, v43, 1))
    {
      goto LABEL_18;
    }

    v44 = OUTLINED_FUNCTION_30_2();
    if (!testFldeq(v44, v45, v6, &v147))
    {
      v49 = advance_tok(v4, v46, v47, v48);
      if (!v49)
      {
        *(v4 + 136) = 1;
        if (!OUTLINED_FUNCTION_25_5(v49, v50, v51))
        {
          token_to_digit(v4);
LABEL_15:
          if (*(v4 + 3778) < 2)
          {
LABEL_16:
            v53 = apply_vocal_tract_val();
            if (v53)
            {
LABEL_17:
              v63 = OUTLINED_FUNCTION_14_7();
              insert_voice_change_pause(v63, v64, v65);
            }

            goto LABEL_19;
          }

LABEL_18:
          OUTLINED_FUNCTION_14_7();
          v53 = handle_invalid_anno();
LABEL_19:
          OUTLINED_FUNCTION_17_7(v53, v54, v55, v56, v57, v58, v59, v60, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146);
          break;
        }
      }
    }

    v52 = *(v4 + 104);
    if (v52)
    {
      v53 = OUTLINED_FUNCTION_33_1(v52);
    }

    else
    {
      v61 = OUTLINED_FUNCTION_34_1();
      v53 = vback(v61, v62);
    }

    switch(v53)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_18;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_16;
      case 6:
      case 7:
      case 9:
      case 10:
        goto LABEL_19;
      case 8:
        goto LABEL_17;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v4);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_69();
}

uint64_t voice_feature_anno(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  v144 = *MEMORY[0x277D85DE8];
  v133 = 0;
  v134 = 0;
  v131 = 0;
  v132 = 0;
  OUTLINED_FUNCTION_1_9(v5, v6, v7, v8, v9, v10, v11, v12, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  OUTLINED_FUNCTION_16_7();
  v13 = setjmp(v4);
  if (!v13)
  {
    v20 = OUTLINED_FUNCTION_51(v13, &v100, v14, v15, v16, v17, v18, v19, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
    if (!v20)
    {
      OUTLINED_FUNCTION_31_2(v20, &v133);
      v21 = OUTLINED_FUNCTION_2_9();
      get_parm(v21, v22, v23, -6);
      OUTLINED_FUNCTION_28_3(v24, &v129);
      v25 = OUTLINED_FUNCTION_65();
      push_ptr_init(v25, v26);
      v27 = OUTLINED_FUNCTION_36_0();
      push_ptr_init(v27, v28);
      v29 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v29, v30);
      OUTLINED_FUNCTION_41();
      v31 = OUTLINED_FUNCTION_21_5();
      if (!lpta_loadp_setscan_r(v31, v32, v3))
      {
        v34 = OUTLINED_FUNCTION_18_6();
        bspush_ca_scan(v34, v35);
        v36 = OUTLINED_FUNCTION_24_5();
        bspush_ca_scan(v36, v37);
LABEL_7:
        OUTLINED_FUNCTION_22_5();
        if (!test_string_s())
        {
LABEL_19:
          v51 = 4;
          v52 = &v127;
LABEL_20:
          savescptr(v1, v51, v52);
LABEL_21:
          OUTLINED_FUNCTION_35_0(6, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
          v55 = OUTLINED_FUNCTION_24_5();
          starttest(v55, v56);
          v57 = OUTLINED_FUNCTION_29_3();
          if (lpta_loadp_setscan_r(v57, v58, 1))
          {
LABEL_25:
            OUTLINED_FUNCTION_74();
            handle_invalid_anno();
LABEL_56:
            OUTLINED_FUNCTION_44(v130);
            goto LABEL_5;
          }

LABEL_22:
          while (1)
          {
            v59 = OUTLINED_FUNCTION_10_8();
            if (testFldeq(v59, v60, v61, 2) || advance_tok(v1, v62, v63, v64))
            {
              break;
            }

            v65 = OUTLINED_FUNCTION_29_3();
            bspush_ca_scan(v65, v66);
          }
        }

        while (2)
        {
          v38 = *(v1 + 104);
          if (v38)
          {
            v39 = OUTLINED_FUNCTION_33_1(v38);
          }

          else
          {
            v47 = OUTLINED_FUNCTION_34_1();
            v39 = vback(v47, v48);
          }

          switch(v39)
          {
            case 2:
            case 7:
            case 8:
              v49 = OUTLINED_FUNCTION_24_5();
              bspush_ca_scan(v49, v50);
              OUTLINED_FUNCTION_22_5();
              if (!test_string_s())
              {
                goto LABEL_21;
              }

              continue;
            case 3:
              v53 = OUTLINED_FUNCTION_24_5();
              bspush_ca_scan(v53, v54);
              goto LABEL_7;
            case 4:
              goto LABEL_19;
            case 5:
              goto LABEL_7;
            case 6:
              goto LABEL_21;
            case 9:
              OUTLINED_FUNCTION_22_5();
              if (test_string_s())
              {
                continue;
              }

              goto LABEL_17;
            case 10:
LABEL_17:
              v51 = 10;
              v52 = &v125;
              goto LABEL_20;
            case 11:
              goto LABEL_25;
            case 12:
              *(v1 + 136) = 1;
              if (OUTLINED_FUNCTION_25_5(v39, v40, v41))
              {
                continue;
              }

              string_to_number(v1, &v123, &v129, v1 + 3784);
              goto LABEL_26;
            case 13:
              goto LABEL_22;
            case 14:
LABEL_26:
              if ((*(v1 + 3792) & 0x8000000000000000) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_56;
            case 15:
LABEL_27:
              v67 = OUTLINED_FUNCTION_36_0();
              lpta_loadpn(v67, v68);
              OUTLINED_FUNCTION_84();
              if (compare_ptas(v1) || testneq(v1))
              {
                goto LABEL_29;
              }

              v92 = OUTLINED_FUNCTION_55();
              npush_v(v92, v93, v94, v95, v96, v97, v98, v99);
              v77 = 250;
              goto LABEL_30;
            case 16:
            case 18:
              goto LABEL_32;
            case 17:
LABEL_29:
              v69 = OUTLINED_FUNCTION_55();
              npush_v(v69, v70, v71, v72, v73, v74, v75, v76);
              v77 = 100;
LABEL_30:
              v78 = v77;
              v79 = OUTLINED_FUNCTION_29_3();
              npush_lng(v79);
              v39 = if_testlt(v1, v80, v81, v82, v83, v84, v85, v86);
              if (!v39)
              {
                *(v1 + 3792) = v78;
              }

LABEL_32:
              v39 = OUTLINED_FUNCTION_48(v39, v40, v41, v42, v43, v44, v45, v46, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
              if (v39)
              {
                goto LABEL_34;
              }

              OUTLINED_FUNCTION_22_5();
              v39 = test_string_s();
              if (v39)
              {
                goto LABEL_34;
              }

              OUTLINED_FUNCTION_55();
              apply_head_size_val();
              goto LABEL_53;
            case 19:
LABEL_34:
              v39 = OUTLINED_FUNCTION_48(v39, v40, v41, v42, v43, v44, v45, v46, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
              if (v39)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_22_5();
              v39 = test_string_s();
              if (v39)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_55();
              apply_pitch_baseline_val();
              goto LABEL_53;
            case 20:
            case 21:
            case 23:
            case 25:
            case 27:
            case 29:
            case 31:
            case 32:
              goto LABEL_53;
            case 22:
LABEL_36:
              v39 = OUTLINED_FUNCTION_48(v39, v40, v41, v42, v43, v44, v45, v46, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
              if (v39)
              {
                goto LABEL_38;
              }

              OUTLINED_FUNCTION_22_5();
              v39 = test_string_s();
              if (v39)
              {
                goto LABEL_38;
              }

              OUTLINED_FUNCTION_55();
              apply_pitch_fluct_val();
              goto LABEL_53;
            case 24:
LABEL_38:
              v39 = OUTLINED_FUNCTION_48(v39, v40, v41, v42, v43, v44, v45, v46, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
              if (v39)
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_22_5();
              v39 = test_string_s();
              if (v39)
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_55();
              apply_roughness_val();
              goto LABEL_53;
            case 26:
LABEL_40:
              v39 = OUTLINED_FUNCTION_48(v39, v40, v41, v42, v43, v44, v45, v46, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
              if (v39)
              {
                goto LABEL_42;
              }

              OUTLINED_FUNCTION_22_5();
              v39 = test_string_s();
              if (v39)
              {
                goto LABEL_42;
              }

              OUTLINED_FUNCTION_55();
              apply_breathiness_val();
              goto LABEL_53;
            case 28:
LABEL_42:
              v39 = OUTLINED_FUNCTION_48(v39, v40, v41, v42, v43, v44, v45, v46, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
              if (v39)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_22_5();
              v39 = test_string_s();
              if (v39)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_55();
              apply_volume_val();
              break;
            case 30:
LABEL_44:
              if (!OUTLINED_FUNCTION_48(v39, v40, v41, v42, v43, v44, v45, v46, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131))
              {
                OUTLINED_FUNCTION_22_5();
                if (!test_string_s())
                {
                  OUTLINED_FUNCTION_55();
                  apply_speed_val();
                }
              }

              break;
            case 33:
            case 34:
            case 35:
              goto LABEL_56;
            default:
              goto LABEL_4;
          }

          break;
        }

LABEL_53:
        v87 = OUTLINED_FUNCTION_65();
        lpta_loadpn(v87, v88);
        OUTLINED_FUNCTION_84();
        if (!compare_ptas(v1) && !testneq(v1))
        {
          v89 = OUTLINED_FUNCTION_74();
          insert_voice_change_pause(v89, v90, v91);
        }

        goto LABEL_56;
      }
    }
  }

LABEL_4:
  v2 = 94;
LABEL_5:
  vretproc(v1);
  return v2;
}

void wpm_anno(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  v141 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_9(v7, v8, v9, v10, v11, v12, v13, v14, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v133, v134, v135, v136, v137, v138, v139);
  OUTLINED_FUNCTION_26_5();
  bzero(v140, v15);
  if (!setjmp(v140))
  {
    OUTLINED_FUNCTION_7_8();
    v20 = ventproc(v4, v16, v17, v18, v19, v140);
    if (!v20)
    {
      OUTLINED_FUNCTION_19_5(v20, v21, v22, v23, v24, v25, v26, v27, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v132, v133, v134, v135, v136, v137, v138);
      v28 = OUTLINED_FUNCTION_2_9();
      get_parm(v28, v29, v30, -6);
      v31 = OUTLINED_FUNCTION_9_8();
      get_parm(v31, v32, v33, -6);
      v34 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v34, v35);
      v36 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v36, v37, 1))
      {
        OUTLINED_FUNCTION_30_2();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_81();
          while (2)
          {
            v38 = OUTLINED_FUNCTION_46();
            savescptr(v38, v39, v5);
            v40 = OUTLINED_FUNCTION_62();
            starttest(v40, v41);
            v42 = OUTLINED_FUNCTION_63();
            if (!lpta_loadp_setscan_r(v42, v43, 1))
            {
LABEL_8:
              while (1)
              {
                v44 = OUTLINED_FUNCTION_30_2();
                if (testFldeq(v44, v45, v6, &v136) || advance_tok(v4, v46, v47, v48))
                {
                  break;
                }

                v60 = OUTLINED_FUNCTION_53();
                bspush_ca_scan(v60, v61);
              }

LABEL_10:
              v49 = *(v4 + 104);
              if (v49)
              {
                v50 = OUTLINED_FUNCTION_33_1(v49);
              }

              else
              {
                v58 = OUTLINED_FUNCTION_34_1();
                v50 = vback(v58, v59);
              }

              switch(v50)
              {
                case 2:
                  continue;
                case 3:
                  goto LABEL_17;
                case 4:
                  *(v4 + 136) = 1;
                  if (OUTLINED_FUNCTION_25_5(v50, v51, v52))
                  {
                    goto LABEL_10;
                  }

                  string_to_number(v4, &v132, &v134, v4 + 3784);
                  goto LABEL_18;
                case 5:
                  goto LABEL_8;
                case 6:
LABEL_18:
                  *(v4 + 3736) = (100 * *(v4 + 5382)) / *(v4 + 3792);
                  OUTLINED_FUNCTION_64(2);
                  copyvar(v4, v62, (v4 + 3728));
                  goto LABEL_19;
                case 7:
                case 8:
                  goto LABEL_19;
                default:
                  goto LABEL_5;
              }
            }

            break;
          }

LABEL_17:
          OUTLINED_FUNCTION_14_7();
          v50 = handle_invalid_anno();
LABEL_19:
          OUTLINED_FUNCTION_17_7(v50, v51, v52, v53, v54, v55, v56, v57, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v132, v133, v134, v135);
        }
      }
    }
  }

LABEL_5:
  vretproc(v4);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_69();
}

uint64_t assign_prestored_voice_vals(void *a1)
{
  v64[30] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_52();
  HIDWORD(v57) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(&v34, v3);
  OUTLINED_FUNCTION_16_7();
  v4 = setjmp(v1);
  if (v4 || (v11 = OUTLINED_FUNCTION_51(v4, &v34, v5, v6, v7, v8, v9, v10, v30, v31, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v64[2], SHIDWORD(v64[2]), v64[3], SWORD2(v64[3]), SHIWORD(v64[3]), v64[4], SWORD2(v64[4]), SBYTE6(v64[4]), SHIBYTE(v64[4])), v11))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_31_2(v11, v64);
    OUTLINED_FUNCTION_28_3(v13, &v62);
    v14 = OUTLINED_FUNCTION_2_9();
    get_parm(v14, v15, v16, -4);
    LODWORD(v61) = 65532;
    v60 = 0xFFFC0000FFFCLL;
    v59 = 0xFFFC0000FFFCLL;
    HIDWORD(v57) = 65532;
    v58 = 0xFFFC0000FFFCLL;
    fence_10(a1);
    v17 = OUTLINED_FUNCTION_24_5();
    starttest(v17, v18);
    OUTLINED_FUNCTION_18_6();
    bspush_ca_boa();
    v19 = OUTLINED_FUNCTION_21_5();
    get_formant_voice_vals(v19, v20, v21, v22, v23, v24, v25, v26, &v58, &v57 + 4, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    v28 = a1[13];
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_33_1(v28);
    }

    else
    {
      v29 = vback(a1, v27 == 0);
    }

    switch(v29)
    {
      case 1:
        OUTLINED_FUNCTION_50();
        apply_vocal_tract_val();
        goto LABEL_10;
      case 2:
        bspop_boa(a1);
        handle_invalid_anno();
        goto LABEL_18;
      case 3:
      case 12:
        goto LABEL_18;
      case 4:
LABEL_10:
        apply_head_size_val();
        goto LABEL_11;
      case 5:
LABEL_11:
        apply_pitch_baseline_val();
        goto LABEL_12;
      case 6:
LABEL_12:
        apply_pitch_fluct_val();
        goto LABEL_13;
      case 7:
LABEL_13:
        apply_roughness_val();
        goto LABEL_14;
      case 8:
LABEL_14:
        OUTLINED_FUNCTION_79();
        apply_breathiness_val();
        goto LABEL_15;
      case 9:
LABEL_15:
        OUTLINED_FUNCTION_65();
        apply_volume_val();
        goto LABEL_16;
      case 10:
LABEL_16:
        apply_speed_val();
        break;
      case 11:
        break;
      default:
        goto LABEL_3;
    }

    insert_voice_change_pause(a1, v64, &v62);
LABEL_18:
    OUTLINED_FUNCTION_90(v63);
    return 0;
  }
}

void get_formant_voice_vals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 *a21, __int16 *a22)
{
  OUTLINED_FUNCTION_70();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v72 = *MEMORY[0x277D85DE8];
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v62, v38);
  OUTLINED_FUNCTION_26_5();
  bzero(v71, v39);
  if (!setjmp(v71) && !ventproc(v37, v62, v70, v69, v68, v71))
  {
    v40 = OUTLINED_FUNCTION_79();
    get_parm(v40, v41, v35, -4);
    get_parm(v37, &v66 + 4, v33, -4);
    v42 = OUTLINED_FUNCTION_65();
    get_parm(v42, v43, v31, -4);
    get_parm(v37, &v65 + 4, v29, -4);
    v44 = OUTLINED_FUNCTION_67();
    get_parm(v44, v45, v27, -4);
    v46 = OUTLINED_FUNCTION_42();
    get_parm(v46, v47, v48, -4);
    v49 = OUTLINED_FUNCTION_9_8();
    get_parm(v49, v50, v51, -4);
    get_parm(v37, &v63 + 4, a21, -4);
    v52 = OUTLINED_FUNCTION_85();
    get_parm(v52, v53, a22, -4);
    fence_10(v37);
    switch(HIWORD(v67))
    {
      case 1:
        OUTLINED_FUNCTION_61();
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_66();
        v61 = v37[2715];
        goto LABEL_14;
      case 2:
        OUTLINED_FUNCTION_61();
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_66();
        v61 = v37[2747];
        goto LABEL_14;
      case 3:
        OUTLINED_FUNCTION_61();
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_66();
        v61 = v37[2763];
        goto LABEL_14;
      case 4:
        OUTLINED_FUNCTION_61();
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_66();
        v61 = v37[2811];
        goto LABEL_14;
      case 5:
        OUTLINED_FUNCTION_61();
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_66();
        v61 = v37[2827];
        goto LABEL_14;
      case 6:
        OUTLINED_FUNCTION_61();
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_66();
        v61 = v37[2843];
        goto LABEL_14;
      case 7:
        OUTLINED_FUNCTION_61();
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_66();
        v61 = v37[2795];
        goto LABEL_14;
      case 8:
        OUTLINED_FUNCTION_61();
        OUTLINED_FUNCTION_60();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_66();
        v61 = v37[2779];
        goto LABEL_14;
      case 9:
        HIWORD(v66) = 0;
        HIWORD(v65) = 69;
        v58 = 69;
        WORD1(v65) = 34;
        HIWORD(v64) = 0;
        WORD1(v64) = 0;
        v55 = 0;
        HIWORD(v63) = 92;
        WORD1(v66) = 50;
        v59 = 50;
        v61 = 50;
        v54 = 92;
        v56 = 0;
        v60 = 0;
        v57 = 34;
LABEL_14:
        v33[1] = v60;
        WORD1(v63) = v61;
        v31[1] = v59;
        v29[1] = v58;
        v27[1] = v57;
        *(v25 + 2) = v56;
        *(v23 + 2) = v55;
        a21[1] = v54;
        a22[1] = v61;
        break;
      default:
        break;
    }
  }

  vretproc(v37);
  OUTLINED_FUNCTION_69();
}

uint64_t apply_vocal_tract_val()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_13_8(v2, v3, v4, v5, v6, v7, v8, v9, v44, v49, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, SHIDWORD(v164), v169);
  OUTLINED_FUNCTION_20_5(v10, v11, v12, v13, v14, v15, v16, v17, v45, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v173, v175, v177);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_6_8(v18, v19, v20, v21, v22, v23, v24, v25, v46, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, SHIDWORD(v171), v174, SWORD2(v174), SHIWORD(v174), v176, SWORD2(v176), SBYTE6(v176), SHIBYTE(v176), v178, v179), v26) || (OUTLINED_FUNCTION_11_8(v26, v27, v28, v29, v30, v31, v32, v33, v47, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172), OUTLINED_FUNCTION_8_8(), v36 = OUTLINED_FUNCTION_12_8(), move_i(v36, v37, 5), v38 = OUTLINED_FUNCTION_39(), annoCallback(v38, v39, v1)) && ((v40 = *(v0 + 104)) == 0 ? (v42 = OUTLINED_FUNCTION_34_1(), v41 = vback(v42, v43)) : (v41 = OUTLINED_FUNCTION_33_1(v40)), v41 != 1))
  {
    v34 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_43(4, v48, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168);
    v34 = 0;
  }

  vretproc(v0);
  return v34;
}

uint64_t apply_head_size_val()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_13_8(v2, v3, v4, v5, v6, v7, v8, v9, v44, v49, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, SHIDWORD(v164), v169);
  OUTLINED_FUNCTION_20_5(v10, v11, v12, v13, v14, v15, v16, v17, v45, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v173, v175, v177);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_6_8(v18, v19, v20, v21, v22, v23, v24, v25, v46, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, SHIDWORD(v171), v174, SWORD2(v174), SHIWORD(v174), v176, SWORD2(v176), SBYTE6(v176), SHIBYTE(v176), v178, v179), v26) || (OUTLINED_FUNCTION_11_8(v26, v27, v28, v29, v30, v31, v32, v33, v47, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172), OUTLINED_FUNCTION_8_8(), v36 = OUTLINED_FUNCTION_12_8(), move_i(v36, v37, 6), v38 = OUTLINED_FUNCTION_39(), annoCallback(v38, v39, v1)) && ((v40 = *(v0 + 104)) == 0 ? (v42 = OUTLINED_FUNCTION_34_1(), v41 = vback(v42, v43)) : (v41 = OUTLINED_FUNCTION_33_1(v40)), v41 != 1))
  {
    v34 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_43(5, v48, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168);
    v34 = 0;
  }

  vretproc(v0);
  return v34;
}

uint64_t apply_pitch_baseline_val()
{
  OUTLINED_FUNCTION_49();
  v72 = *MEMORY[0x277D85DE8];
  HIDWORD(v66) = 0;
  LODWORD(v67) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(&v43, v2);
  OUTLINED_FUNCTION_20_5(v3, v4, v5, v6, v7, v8, v9, v10, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v11 = setjmp(v1);
  if (v11 || (v19 = OUTLINED_FUNCTION_6_8(v11, v12, v13, v14, v15, v16, v17, v18, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, SHIDWORD(v67), v68, SWORD2(v68), SHIWORD(v68), v69, SWORD2(v69), SBYTE6(v69), SHIBYTE(v69), v70, v71), v19) || (OUTLINED_FUNCTION_11_8(v19, v20, v21, v22, v23, v24, v25, v26, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67), OUTLINED_FUNCTION_8_8(), v29 = OUTLINED_FUNCTION_12_8(), move_i(v29, v30, 7), v31 = OUTLINED_FUNCTION_39(), annoCallback(v31, v32, v1)) && ((v33 = *(v0 + 104)) == 0 ? (v35 = OUTLINED_FUNCTION_34_1(), v34 = vback(v35, v36)) : (v34 = OUTLINED_FUNCTION_33_1(v33)), v34 != 1))
  {
    v27 = 94;
  }

  else
  {
    v37 = *(v0 + 1056);
    v38 = *(v0 + 1088);
    *(v0 + 1040) = v37 + v38 * exp2(*(v0 + 1072) * SWORD1(v67));
    OUTLINED_FUNCTION_64(9);
    copyvar(v0, v39, (v0 + 1032));
    v27 = 0;
  }

  vretproc(v0);
  return v27;
}

uint64_t apply_pitch_fluct_val()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_13_8(v2, v3, v4, v5, v6, v7, v8, v9, v44, v49, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, SHIDWORD(v164), v169);
  OUTLINED_FUNCTION_20_5(v10, v11, v12, v13, v14, v15, v16, v17, v45, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v173, v175, v177);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_6_8(v18, v19, v20, v21, v22, v23, v24, v25, v46, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, SHIDWORD(v171), v174, SWORD2(v174), SHIWORD(v174), v176, SWORD2(v176), SBYTE6(v176), SHIBYTE(v176), v178, v179), v26) || (OUTLINED_FUNCTION_11_8(v26, v27, v28, v29, v30, v31, v32, v33, v47, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172), OUTLINED_FUNCTION_8_8(), v36 = OUTLINED_FUNCTION_12_8(), move_i(v36, v37, 8), v38 = OUTLINED_FUNCTION_39(), annoCallback(v38, v39, v1)) && ((v40 = *(v0 + 104)) == 0 ? (v42 = OUTLINED_FUNCTION_34_1(), v41 = vback(v42, v43)) : (v41 = OUTLINED_FUNCTION_33_1(v40)), v41 != 1))
  {
    v34 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_43(10, v48, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168);
    v34 = 0;
  }

  vretproc(v0);
  return v34;
}

uint64_t apply_roughness_val()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_13_8(v2, v3, v4, v5, v6, v7, v8, v9, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, SHIDWORD(v140), v144);
  OUTLINED_FUNCTION_20_5(v10, v11, v12, v13, v14, v15, v16, v17, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v151, v153);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_6_8(v18, v19, v20, v21, v22, v23, v24, v25, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, SHIDWORD(v146), v150, SWORD2(v150), SHIWORD(v150), v152, SWORD2(v152), SBYTE6(v152), SHIBYTE(v152), v154, v155), v26) || (OUTLINED_FUNCTION_11_8(v26, v27, v28, v29, v30, v31, v32, v33, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147), OUTLINED_FUNCTION_8_8(), v36 = OUTLINED_FUNCTION_12_8(), move_i(v36, v37, 9), v38 = OUTLINED_FUNCTION_39(), annoCallback(v38, v39, v1)) && ((v40 = *(v0 + 104)) == 0 ? (v42 = OUTLINED_FUNCTION_34_1(), v41 = vback(v42, v43)) : (v41 = OUTLINED_FUNCTION_33_1(v40)), v41 != 1))
  {
    v34 = 94;
  }

  else
  {
    v34 = 0;
    *(v0 + 3662) = ((4 * v148) / 10.0);
  }

  vretproc(v0);
  return v34;
}

uint64_t apply_breathiness_val()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_13_8(v2, v3, v4, v5, v6, v7, v8, v9, v44, v49, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, SHIDWORD(v164), v169);
  OUTLINED_FUNCTION_20_5(v10, v11, v12, v13, v14, v15, v16, v17, v45, v50, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v173, v175, v177);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_6_8(v18, v19, v20, v21, v22, v23, v24, v25, v46, v51, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, SHIDWORD(v171), v174, SWORD2(v174), SHIWORD(v174), v176, SWORD2(v176), SBYTE6(v176), SHIBYTE(v176), v178, v179), v26) || (OUTLINED_FUNCTION_11_8(v26, v27, v28, v29, v30, v31, v32, v33, v47, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172), OUTLINED_FUNCTION_8_8(), v36 = OUTLINED_FUNCTION_12_8(), move_i(v36, v37, 10), v38 = OUTLINED_FUNCTION_39(), annoCallback(v38, v39, v1)) && ((v40 = *(v0 + 104)) == 0 ? (v42 = OUTLINED_FUNCTION_34_1(), v41 = vback(v42, v43)) : (v41 = OUTLINED_FUNCTION_33_1(v40)), v41 != 1))
  {
    v34 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_43(6, v48, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168);
    v34 = 0;
  }

  vretproc(v0);
  return v34;
}

uint64_t apply_volume_val()
{
  OUTLINED_FUNCTION_49();
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v27 = 0;
  HIDWORD(v26) = 0;
  OUTLINED_FUNCTION_27_4();
  bzero(v25, v2);
  OUTLINED_FUNCTION_26_5();
  bzero(v30, v3);
  if (setjmp(v30))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_76();
  if (ventproc(v0, v4, v5, v6, v7, v30))
  {
    goto LABEL_3;
  }

  v9 = OUTLINED_FUNCTION_29_3();
  get_parm(v9, v10, v1, -4);
  LOWORD(v27) = -5;
  HIDWORD(v26) = 65532;
  fence_10(v0);
  v28 = 0.0;
  v11 = OUTLINED_FUNCTION_24_5();
  starttest(v11, v12);
  v13 = OUTLINED_FUNCTION_12_8();
  move_i(v13, v14, 12);
  v15 = OUTLINED_FUNCTION_39();
  if (!annoCallback(v15, v16, &v29) || ((v17 = *(v0 + 104)) == 0 ? (v19 = OUTLINED_FUNCTION_34_1(), v18 = vback(v19, v20)) : (v18 = OUTLINED_FUNCTION_33_1(v17)), v18 == 1))
  {
    v21 = HIWORD(v29);
    if (SHIWORD(v29) >= 81)
    {
      v28 = (*(v0 + 5408) + -1.0) * (SHIWORD(v29) - 80) / 20.0 + 1.0;
      LOWORD(v22) = 100;
      goto LABEL_16;
    }

LABEL_14:
    v28 = 1.0;
    v22 = vcvtd_n_f64_s32(10 * v21, 3uLL);
LABEL_16:
    *(v0 + 3746) = v22;
    goto LABEL_17;
  }

  if (v18 == 3)
  {
LABEL_17:
    OUTLINED_FUNCTION_64(1);
    copyvar(v0, v23, (v0 + 3744));
    OUTLINED_FUNCTION_43(8, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21], v25[22], v26);
    vretproc(v0);
    return 0;
  }

  if (v18 == 2)
  {
    v21 = HIWORD(v29);
    goto LABEL_14;
  }

LABEL_3:
  vretproc(v0);
  return 94;
}

uint64_t apply_speed_val()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_13_8(v2, v3, v4, v5, v6, v7, v8, v9, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, SHIDWORD(v141), v145);
  OUTLINED_FUNCTION_20_5(v10, v11, v12, v13, v14, v15, v16, v17, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v152, v154);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_6_8(v18, v19, v20, v21, v22, v23, v24, v25, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, SHIDWORD(v147), v151, SWORD2(v151), SHIWORD(v151), v153, SWORD2(v153), SBYTE6(v153), SHIBYTE(v153), v155, v156), v26) || (OUTLINED_FUNCTION_11_8(v26, v27, v28, v29, v30, v31, v32, v33, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148), OUTLINED_FUNCTION_8_8(), v36 = OUTLINED_FUNCTION_12_8(), move_i(v36, v37, 11), v38 = OUTLINED_FUNCTION_39(), annoCallback(v38, v39, v1)) && ((v40 = *(v0 + 104)) == 0 ? (v42 = OUTLINED_FUNCTION_34_1(), v41 = vback(v42, v43)) : (v41 = OUTLINED_FUNCTION_33_1(v40)), v41 != 1))
  {
    v34 = 94;
  }

  else
  {
    *(v0 + 3736) = exp((vcvtd_n_f64_s32(v149 - 50, 1uLL) + 50.0) * -2.0 / 50.0) / 0.135335283 * 100.0 + 0.5;
    OUTLINED_FUNCTION_64(2);
    copyvar(v0, v44, (v0 + 3728));
    v34 = 0;
  }

  vretproc(v0);
  return v34;
}

void insert_voice_change_pause(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_54();
  v177 = *MEMORY[0x277D85DE8];
  v171 = 0;
  v172 = 0;
  v169 = 0;
  v170 = 0;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  OUTLINED_FUNCTION_27_4();
  bzero(&v139, v4);
  OUTLINED_FUNCTION_26_5();
  bzero(v176, v5);
  if (setjmp(v176))
  {
    goto LABEL_3;
  }

  if (ventproc(v3, &v139, v175, v174, v173, v176))
  {
    goto LABEL_3;
  }

  v6 = OUTLINED_FUNCTION_2_9();
  get_parm(v6, v7, v8, -6);
  OUTLINED_FUNCTION_28_3(v9, &v169);
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  LODWORD(v164) = -65530;
  *&v163 = 0;
  *(&v163 + 6) = 0;
  LODWORD(v162) = -65532;
  v10 = OUTLINED_FUNCTION_4_8();
  lpta_loadpn(v10, v11);
  OUTLINED_FUNCTION_86();
  lpta_ctxtl();
  rpta_loadpn(v3, v3 + 1400);
  if (!compare_ptas(v3) && !testeq(v3))
  {
    goto LABEL_3;
  }

  v12 = 0;
  OUTLINED_FUNCTION_40();
  v137 = 3;
  v138 = v13;
  while (2)
  {
    starttest(v3, v13);
    OUTLINED_FUNCTION_78(v14, v15, v16, v17, v18, v19, v20, v21, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), v164, *(&v164 + 1), v165, *(&v165 + 1), v166, *(&v166 + 1), v167, *(&v167 + 1), v168, v169, v170, v171, v172);
    v22 = lpta_tstctxtl();
    if (!v22)
    {
      setscan_l(v3, 4, v24);
      if (!v22)
      {
        OUTLINED_FUNCTION_87();
        bspush_ca_scan_boa();
LABEL_27:
        if (test_synch(v3, 4, 1, &unk_2806BB077))
        {
          v23 = v12;
        }

        else
        {
          v23 = 1;
        }

LABEL_18:
        v12 = v23;
LABEL_19:
        v135 = *(v3 + 104);
        if (v135)
        {
          *(v3 + 104) = 0;
          v22 = v135;
        }

        else
        {
          v22 = vback(v3, v12);
          v12 = 0;
        }

        switch(v22)
        {
          case 1:
            v13 = v138;
            continue;
          case 2:
            goto LABEL_9;
          case 3:
            bspop_boa(v3);
            if (test_string_s())
            {
              goto LABEL_19;
            }

            break;
          case 4:
            goto LABEL_27;
          case 5:
            goto LABEL_13;
          case 6:
            goto LABEL_17;
          default:
            goto LABEL_3;
        }

        goto LABEL_3;
      }
    }

    break;
  }

LABEL_9:
  OUTLINED_FUNCTION_78(v22, v23, v24, v25, v26, v27, v28, v29, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), v164, *(&v164 + 1), v165, *(&v165 + 1), v166, *(&v166 + 1), v167, *(&v167 + 1), v168, v169, v170, v171, v172);
  if (!lpta_tstctxtl())
  {
    setscan_l(v3, 6, v30);
    if (!v31)
    {
      v32 = OUTLINED_FUNCTION_53();
      if (!savetok(v32, v33))
      {
        advance_tok(v3, v34, v35, v36);
      }
    }
  }

LABEL_13:
  v37 = OUTLINED_FUNCTION_24_5();
  starttest(v37, v38);
  *(v3 + 3634) = 5;
  v39 = OUTLINED_FUNCTION_47();
  npush_v(v39, v40, v41, v42, v43, v44, v45, v46);
  WORD1(v164) = 5;
  v47 = OUTLINED_FUNCTION_53();
  npush_v(v47, v48, v49, v50, v51, v52, v53, v54);
  if (if_testeq(v3, v55, v56, v57, v58, v59, v60, v61) || (*(v3 + 3634) = 4, v62 = OUTLINED_FUNCTION_47(), npush_v(v62, v63, v64, v65, v66, v67, v68, v69), WORD1(v164) = 4, v70 = OUTLINED_FUNCTION_53(), npush_v(v70, v71, v72, v73, v74, v75, v76, v77), if_testeq(v3, v78, v79, v80, v81, v82, v83, v84)) || (*(v3 + 3634) = 9, v85 = OUTLINED_FUNCTION_47(), npush_v(v85, v86, v87, v88, v89, v90, v91, v92), WORD1(v164) = 9, v93 = OUTLINED_FUNCTION_53(), npush_v(v93, v94, v95, v96, v97, v98, v99, v100), if_testeq(v3, v101, v102, v103, v104, v105, v106, v107)) || (*(v3 + 3634) = 10, v108 = OUTLINED_FUNCTION_47(), npush_v(v108, v109, v110, v111, v112, v113, v114, v115), WORD1(v164) = 10, v116 = OUTLINED_FUNCTION_53(), npush_v(v116, v117, v118, v119, v120, v121, v122, v123), if_testeq(v3, v124, v125, v126, v127, v128, v129, v130)))
  {
LABEL_17:
    lpta_rpta_loadp(v3, &v171, &v169);
    OUTLINED_FUNCTION_71();
    settvar_s();
    v131 = OUTLINED_FUNCTION_88();
    npush_s(v131);
    WORD1(v162) = 4;
    v132 = OUTLINED_FUNCTION_71();
    npop(v132, v133);
    insert_2ptv();
    v23 = v12;
    if (!v134)
    {
      goto LABEL_3;
    }

    goto LABEL_18;
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_69();
}

uint64_t spr_output_anno(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_9(v3, v4, v5, v6, v7, v8, v9, v10, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v154, v157, v159, v161, v163);
  OUTLINED_FUNCTION_16_7();
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_7_8();
    v16 = OUTLINED_FUNCTION_73(v11, v12, v13, v14, v15);
    if (!v16)
    {
      OUTLINED_FUNCTION_19_5(v16, v17, v18, v19, v20, v21, v22, v23, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v155, v158, v160, v162);
      v24 = OUTLINED_FUNCTION_2_9();
      get_parm(v24, v25, v26, -6);
      v27 = OUTLINED_FUNCTION_9_8();
      get_parm(v27, v28, v29, -6);
      v30 = OUTLINED_FUNCTION_37_0();
      push_ptr_init(v30, v31);
      v32 = OUTLINED_FUNCTION_4_8();
      if (!lpta_loadp_setscan_r(v32, v33, 1))
      {
        OUTLINED_FUNCTION_10_8();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_35_0(2, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143);
          v35 = OUTLINED_FUNCTION_29_3();
          if (lpta_loadp_setscan_r(v35, v36, 1) || (OUTLINED_FUNCTION_3_9(), v37 = test_string_s(), v37) || (*(v1 + 136) = 1, v40 = OUTLINED_FUNCTION_25_5(v37, v38, v39), v40))
          {
            v48 = OUTLINED_FUNCTION_37_0();
            if (lpta_loadp_setscan_r(v48, v49, 1) || (OUTLINED_FUNCTION_3_9(), v50 = test_string_s(), v50) || (*(v1 + 136) = 1, v40 = OUTLINED_FUNCTION_25_5(v50, v51, v52), v40))
            {
              OUTLINED_FUNCTION_14_7();
              v40 = handle_invalid_anno();
            }

            else
            {
              *(v1 + 3450) = 1;
            }
          }

          else
          {
            *(v1 + 3450) = 0;
          }

          OUTLINED_FUNCTION_17_7(v40, v41, v42, v43, v44, v45, v46, v47, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v153, v156);
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_68();
}

void spellout_mode_anno(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_23_5(v5, v6, v7, v8, v9, v10, v11, v12, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, SHIDWORD(v81), v82, v83, v84, v85, v86, v87, v88[0], v88[1]);
  OUTLINED_FUNCTION_26_5();
  bzero(v89, v13);
  v14 = setjmp(v89);
  if (v14)
  {
    goto LABEL_5;
  }

  v21 = OUTLINED_FUNCTION_38_0(v14, &v58, v15, v16, v17, v18, v19, v20, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88[0], v88[1], v88[2], SHIDWORD(v88[2]), v88[3], SWORD2(v88[3]), SHIWORD(v88[3]), v88[4], SWORD2(v88[4]), SBYTE6(v88[4]), SHIBYTE(v88[4]), v88[5], v89[0]);
  if (v21)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31_2(v21, v88);
  v22 = OUTLINED_FUNCTION_2_9();
  get_parm(v22, v23, v24, -6);
  OUTLINED_FUNCTION_28_3(v25, &v84);
  v26 = OUTLINED_FUNCTION_85();
  push_ptr_init(v26, v27);
  HIDWORD(v81) = 65532;
  v28 = OUTLINED_FUNCTION_4_8();
  if (lpta_loadp_setscan_r(v28, v29, 1))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3_9();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  while (2)
  {
    v30 = OUTLINED_FUNCTION_46();
    savescptr(v30, v31, &v82);
    v32 = OUTLINED_FUNCTION_62();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_63();
    if (lpta_loadp_setscan_r(v34, v35, 1))
    {
      goto LABEL_24;
    }

    v36 = OUTLINED_FUNCTION_30_2();
    if (!testFldeq(v36, v37, 3, 2) && !advance_tok(v4, v38, v39, v40))
    {
      v41 = savetok(v4, (v4 + 1784));
      if (!v41)
      {
        *(v4 + 136) = 1;
        if (!OUTLINED_FUNCTION_25_5(v41, v42, v43))
        {
          token_to_number(v4, v4 + 1784, v4 + 3776);
LABEL_12:
          v44 = *(v4 + 3778);
          if (*(v4 + 3778) < 4)
          {
LABEL_13:
            if (*(v4 + 5094) == *(v4 + 5090) || v44 != 3)
            {
LABEL_17:
              *(v4 + 2742) = v44;
              v46 = OUTLINED_FUNCTION_53();
              starttest(v46, v47);
              v48 = OUTLINED_FUNCTION_72();
              move_i(v48, v49, v50);
              v51 = OUTLINED_FUNCTION_72();
              if (annoCallback(v51, v52, v53))
              {
                goto LABEL_18;
              }
            }

LABEL_25:
            OUTLINED_FUNCTION_44(v85);
            break;
          }

LABEL_24:
          OUTLINED_FUNCTION_82();
          goto LABEL_25;
        }
      }
    }

LABEL_18:
    v54 = *(v4 + 104);
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_33_1(v54);
    }

    else
    {
      v56 = OUTLINED_FUNCTION_34_1();
      v55 = vback(v56, v57);
    }

    switch(v55)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_24;
      case 4:
        goto LABEL_12;
      case 5:
        v44 = *(v4 + 3778);
        goto LABEL_13;
      case 6:
      case 7:
      case 9:
      case 10:
        goto LABEL_25;
      case 8:
        LOWORD(v44) = *(v4 + 3778);
        goto LABEL_17;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v4);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_69();
}

void year_mode_anno(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_23_5(v5, v6, v7, v8, v9, v10, v11, v12, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SHIDWORD(v78), v79, v80, v81, v82, v83, v84, v85[0], v85[1]);
  OUTLINED_FUNCTION_26_5();
  bzero(v86, v13);
  v14 = setjmp(v86);
  if (v14)
  {
    goto LABEL_5;
  }

  v21 = OUTLINED_FUNCTION_38_0(v14, &v55, v15, v16, v17, v18, v19, v20, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0], v85[1], v85[2], SHIDWORD(v85[2]), v85[3], SWORD2(v85[3]), SHIWORD(v85[3]), v85[4], SWORD2(v85[4]), SBYTE6(v85[4]), SHIBYTE(v85[4]), v85[5], v86[0]);
  if (v21)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31_2(v21, v85);
  v22 = OUTLINED_FUNCTION_2_9();
  get_parm(v22, v23, v24, -6);
  OUTLINED_FUNCTION_28_3(v25, &v81);
  v26 = OUTLINED_FUNCTION_85();
  push_ptr_init(v26, v27);
  HIDWORD(v78) = 65532;
  v28 = OUTLINED_FUNCTION_4_8();
  if (lpta_loadp_setscan_r(v28, v29, 1))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3_9();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  while (2)
  {
    v30 = OUTLINED_FUNCTION_21_5();
    savescptr(v30, v31, &v79);
    v32 = OUTLINED_FUNCTION_46();
    if (lpta_loadp_setscan_r(v32, v33, 1) || (OUTLINED_FUNCTION_3_9(), v34 = test_string_s(), v34) || (*(v4 + 136) = 1, OUTLINED_FUNCTION_25_5(v34, v35, v36)))
    {
LABEL_16:
      v49 = OUTLINED_FUNCTION_46();
      if (lpta_loadp_setscan_r(v49, v50, 1) || (OUTLINED_FUNCTION_3_9(), v51 = test_string_s(), v51) || (*(v4 + 136) = 1, v54 = OUTLINED_FUNCTION_25_5(v51, v52, v53), v37 = 1, v54))
      {
LABEL_19:
        OUTLINED_FUNCTION_82();
LABEL_20:
        OUTLINED_FUNCTION_44(v82);
        break;
      }
    }

    else
    {
      v37 = 0;
    }

    *(v4 + 2818) = v37;
LABEL_11:
    v38 = OUTLINED_FUNCTION_71();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_62();
    move_i(v40, v41, 1);
    v42 = OUTLINED_FUNCTION_62();
    if (!annoCallback(v42, v43, v44))
    {
      goto LABEL_20;
    }

    v45 = *(v4 + 104);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_33_1(v45);
    }

    else
    {
      v47 = OUTLINED_FUNCTION_34_1();
      v46 = vback(v47, v48);
    }

    switch(v46)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_16;
      case 4:
        goto LABEL_11;
      case 5:
        goto LABEL_19;
      case 6:
      case 7:
      case 8:
        goto LABEL_20;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v4);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_69();
}

void OUTLINED_FUNCTION_1_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a38 = 0;
  a39 = 0;
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_5_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a10, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_8_8()
{
  fence_10(v0);

  starttest(v0, 1);
}

void OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  get_parm(v34, &a34, v35, -4);
}

void OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, int a35)
{
  *(v36 - 40) = v35;
  a34 = 0;
  a35 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v44 + 136) = v45;
  *(v44 + 112) = a44;
  *(v44 + 128) = 0;

  return test_ptr(v44, a2, a3);
}

void OUTLINED_FUNCTION_16_7()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_19_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  get_parm(v38, &a38, v39, -6);
}

void OUTLINED_FUNCTION_20_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_23_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *(v42 - 96) = v41;
  a40 = 0;
  a41 = 0;
  a38 = 0;
  a39 = 0;
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = v3;
  *(v4 + 128) = 0;

  return test_ptr(v4, a2, a3);
}

void OUTLINED_FUNCTION_28_3(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

double OUTLINED_FUNCTION_35_0@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  *&result = savescptr(v24, a1, va).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, __int16 a44, __int16 a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{

  return ventproc(v51, a2, &a49, &a45, &a42, &a51);
}

void OUTLINED_FUNCTION_41()
{
  fence_10(v0);

  starttest(v0, 1);
}

double OUTLINED_FUNCTION_43@<D0>(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  *(v26 + 3634) = a1;

  copyvar(v26, (v26 + 3632), va);
  return result;
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return lpta_loadp_setscan_r(v40, &a40, 1);
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45, int a46, __int16 a47, __int16 a48, int a49, __int16 a50, char a51, char a52)
{

  return ventproc(v52, a2, &a52, &a48, &a45, v53 - 248);
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

uint64_t OUTLINED_FUNCTION_77@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 144) = a1;
  *(v1 + 128) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  *(v51 + 136) = v52;
  *(v51 + 112) = a51;
  *(v51 + 128) = v53;
  return v51;
}

uint64_t OUTLINED_FUNCTION_82()
{

  return handle_invalid_anno();
}

void OUTLINED_FUNCTION_83()
{
  *(v0 + 3602) = 6;

  npop(v0, (v0 + 3600));
}

uint64_t OUTLINED_FUNCTION_84()
{

  return rpta_loadpn(v0, v0 + 3344);
}

void OUTLINED_FUNCTION_89()
{

  starttest(v0, 1);
}

BOOL OUTLINED_FUNCTION_90@<W0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;

  return vretproc(v1);
}

void *fence_11(uint64_t a1, int a2, uint64_t a3)
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

uint64_t user_rootdict()
{
  OUTLINED_FUNCTION_1_10();
  v56 = *MEMORY[0x277D85DE8];
  v54[0] = 0;
  v54[1] = 0;
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52[0], v52[1], v53[0], v53[1]);
  OUTLINED_FUNCTION_9_9();
  bzero(v55, v9);
  if (!setjmp(v55))
  {
    OUTLINED_FUNCTION_12_9();
    v14 = ventproc(v0, v10, v11, v12, v13, v55);
    if (!v14)
    {
      OUTLINED_FUNCTION_4_9(v14, v54);
      OUTLINED_FUNCTION_5_9(v17, v53);
      push_ptr_init(v0, v52);
      fence_11(v0, 0, &null_str_2);
      if (*(v0 + 5398))
      {
        v18 = 0;
        while (2)
        {
          if (*(v0 + 3890) != 1)
          {
LABEL_8:
            v19 = OUTLINED_FUNCTION_16_8();
            starttest(v19, v20);
            OUTLINED_FUNCTION_3_10();
            bspush_ca_boa();
            v21 = callUserDictLookup(v0, v0 + 4036, v54, v53);
LABEL_9:
            if (v21)
            {
              v22 = v18;
            }

            else
            {
              v22 = 1;
            }

            v23 = *(v0 + 104);
            if (v23)
            {
              v24 = OUTLINED_FUNCTION_13_9(v23);
              v18 = v25;
            }

            else
            {
              v24 = vback(v0, v22);
              v18 = 0;
            }

            switch(v24)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_8;
              case 3:
                v26 = OUTLINED_FUNCTION_14_8();
                if (is_spr(v26))
                {
                  goto LABEL_18;
                }

                starttest_l(v0, 6);
                OUTLINED_FUNCTION_7_9();
                bspush_ca_boa();
                v27 = OUTLINED_FUNCTION_14_8();
                handle_SPR(v27, v28);
                goto LABEL_9;
              case 4:
                bspop_boa(v0);
                goto LABEL_3;
              case 5:
LABEL_18:
                OUTLINED_FUNCTION_11_9();
                if (isLegalWord())
                {
                  goto LABEL_23;
                }

                OUTLINED_FUNCTION_11_9();
                insert_userdict_root();
LABEL_20:
                v15 = 0;
                *(v0 + 3890) = 1;
                goto LABEL_4;
              case 6:
              case 9:
              case 11:
                goto LABEL_20;
              case 7:
                bspop_boa(v0);
                goto LABEL_23;
              case 10:
LABEL_23:
                user_dict_error(v0, v54, v53, (v0 + 4036));
                goto LABEL_3;
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
  v15 = 94;
LABEL_4:
  vretproc(v0);
  return v15;
}

uint64_t user_dict_error(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v23[1] = 0;
  v22[0] = 0;
  v22[1] = 0;
  v21 = 0;
  bzero(v20, 0xB8uLL);
  OUTLINED_FUNCTION_9_9();
  bzero(v24, v8);
  if (setjmp(v24) || (OUTLINED_FUNCTION_12_9(), ventproc(a1, v9, v10, v11, v12, v24)))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    get_parm(a1, v23, a2, -6);
    v14 = OUTLINED_FUNCTION_14_8();
    get_parm(v14, v15, a3, -6);
    v16 = OUTLINED_FUNCTION_3_10();
    get_parm(v16, v17, a4, -4);
    fence_11(a1, 0, &null_str_2);
    v18 = OUTLINED_FUNCTION_3_10();
    callInsertLastDictString(v18, v19, v23, v22);
    if (*(a1 + 4042) == HIWORD(v21))
    {
      *(a1 + 2618) = 1;
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t isLegalWord()
{
  OUTLINED_FUNCTION_1_10();
  v90 = *MEMORY[0x277D85DE8];
  v85[0] = 0;
  v85[1] = 0;
  v83 = 0;
  v84 = 0;
  bzero(&v60, 0xB8uLL);
  OUTLINED_FUNCTION_9_9();
  bzero(v89, v1);
  if (!setjmp(v89))
  {
    v2 = ventproc(v0, &v60, v88, v87, v86, v89);
    if (!v2)
    {
      OUTLINED_FUNCTION_4_9(v2, v85);
      OUTLINED_FUNCTION_5_9(v3, &v83);
      fence_11(v0, 0, &null_str_2);
      if (*(v0 + 5110) != *(v0 + 5090))
      {
        v4 = OUTLINED_FUNCTION_6_9();
        starttest_l(v4, v5);
        if (!lpta_loadp_setscan_r(v0, v85, 1))
        {
          v7 = 0;
          v59 = 5;
          v58 = 10;
          while (2)
          {
            v8 = v7;
            v9 = OUTLINED_FUNCTION_6_9();
            bspush_ca_scan(v9, v10);
            bspush_ca_scan(v0, v59);
            v11 = OUTLINED_FUNCTION_8_9();
            v13 = testFldeq(v11, v12, 4, 1);
            v15 = v8;
            if (!v13)
            {
LABEL_9:
              LODWORD(v8) = v15;
              v16 = advance_tok(v0, v14, v15, v7);
              v17 = v8;
              if (!v16)
              {
LABEL_10:
                LODWORD(v8) = v17;
                bspush_ca_scan(v0, 9);
                if (!OUTLINED_FUNCTION_15_8(v18, v19, v20, v21, v22, v23, v24, v25, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84))
                {
                  bspush_ca_boa();
                  if (!lpta_loadp_setscan_r(v0, v85, 1))
                  {
                    bspush_boa(v0);
                    v26 = v8;
LABEL_13:
                    LODWORD(v8) = v26;
                    do
                    {
                      bspush_ca_scan(v0, 11);
                      bspush_ca_scan(v0, 12);
                      OUTLINED_FUNCTION_8_9();
                    }

                    while (!test_string_s());
                  }
                }
              }
            }

            LODWORD(v14) = v8;
LABEL_16:
            v27 = *(v0 + 104);
            if (v27)
            {
              v28 = OUTLINED_FUNCTION_13_9(v27);
              v29 = v14;
            }

            else
            {
              v28 = vback(v0, v14);
              v29 = 0;
            }

            v7 = v29;
            v15 = v29;
            v17 = v29;
            v26 = v29;
            switch(v28)
            {
              case 3:
                continue;
              case 4:
                v30 = OUTLINED_FUNCTION_8_9();
                v32 = testFldeq(v30, v31, 3, 1);
                LODWORD(v14) = v29;
                if (!v32)
                {
                  v35 = advance_tok(v0, v29, v33, v34);
                  v7 = v29;
                  LODWORD(v14) = v29;
                  if (!v35)
                  {
                    continue;
                  }
                }

                goto LABEL_16;
              case 5:
                v53 = OUTLINED_FUNCTION_14_8();
                bspush_ca_scan(v53, v54);
                v44 = OUTLINED_FUNCTION_8_9();
                v46 = 30;
                goto LABEL_31;
              case 6:
                goto LABEL_9;
              case 7:
                v44 = OUTLINED_FUNCTION_8_9();
                v46 = 51;
LABEL_31:
                v55 = testFldeq(v44, v45, 0, v46);
                v15 = v29;
                v14 = v29;
                if (!v55)
                {
                  goto LABEL_9;
                }

                goto LABEL_16;
              case 8:
                goto LABEL_10;
              case 9:
                v47 = OUTLINED_FUNCTION_8_9();
                v49 = testFldeq(v47, v48, 3, 1);
                LODWORD(v14) = v29;
                if (!v49)
                {
                  v52 = advance_tok(v0, v29, v50, v51);
                  v17 = v29;
                  LODWORD(v14) = v29;
                  if (!v52)
                  {
                    goto LABEL_10;
                  }
                }

                goto LABEL_16;
              case 10:
                bspop_boa(v0);
                vretproc(v0);
                return 0;
              case 11:
                bspush_nboa(v0);
                if (OUTLINED_FUNCTION_15_8(v36, v37, v38, v39, v40, v41, v42, v43, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84))
                {
                  LODWORD(v14) = v29;
                }

                else
                {
                  LODWORD(v14) = 1;
                }

                goto LABEL_16;
              case 12:
                OUTLINED_FUNCTION_8_9();
                v56 = test_string_s();
                v26 = v29;
                LODWORD(v14) = v29;
                if (!v56)
                {
                  goto LABEL_13;
                }

                goto LABEL_16;
              case 13:
              case 14:
                goto LABEL_13;
              default:
                goto LABEL_5;
            }
          }
        }
      }
    }
  }

LABEL_5:
  vretproc(v0);
  return 94;
}

uint64_t insert_userdict_root()
{
  OUTLINED_FUNCTION_1_10();
  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_10(v1, v2, v3, v4, v5, v6, v7, v8, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11], v20[12], v20[13], v20[14], v20[15], v20[16], v20[17], v20[18], v20[19], v20[20], v20[21], v20[22], v21[0], v21[1], v22[0], v22[1]);
  OUTLINED_FUNCTION_9_9();
  bzero(v26, v9);
  if (setjmp(v26) || (v10 = ventproc(v0, v20, v25, v24, v23, v26), v10))
  {
    v11 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_4_9(v10, v22);
    OUTLINED_FUNCTION_5_9(v13, v21);
    fence_11(v0, 0, &null_str_2);
    *(v0 + 3890) = 1;
    if (*(v0 + 5118) != *(v0 + 5090))
    {
      convert_to_lowercase(v0);
    }

    while (2)
    {
      v14 = OUTLINED_FUNCTION_16_8();
      starttest(v14, v15);
      OUTLINED_FUNCTION_3_10();
      if (internal_dict_lookup())
      {
        do
        {
          v16 = OUTLINED_FUNCTION_3_10();
          lpta_rpta_loadp(v16, v17, v21);
          if (!insert_2pt_s(v0, 3u, 1, &_MergedGlobals_5, 0))
          {
            v11 = 0;
            goto LABEL_4;
          }

          v18 = *(v0 + 104);
          if (v18)
          {
            v19 = OUTLINED_FUNCTION_13_9(v18);
          }

          else
          {
            v19 = vback(v0, 0);
          }
        }

        while (v19 == 2);
        if (v19 == 1)
        {
          continue;
        }

        if (v19 == 3)
        {
          v11 = 0;
        }

        else
        {
          v11 = 94;
        }
      }

      else
      {
        v11 = 0;
      }

      break;
    }
  }

LABEL_4:
  vretproc(v0);
  return v11;
}