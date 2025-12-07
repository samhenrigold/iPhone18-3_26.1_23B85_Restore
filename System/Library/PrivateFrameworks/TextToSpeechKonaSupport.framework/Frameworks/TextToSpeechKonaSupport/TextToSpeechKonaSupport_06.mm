uint64_t por_ph_y_dur(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v90);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, SHIDWORD(v138), v140, SWORD2(v140), SHIWORD(v140), v142, SWORD2(v142), SBYTE6(v142), SHIBYTE(v142), v144, v145))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_0_27();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_4_23();
  if (lpta_loadp_setscan_r(v29, v30, v31))
  {
    goto LABEL_5;
  }

  v33 = OUTLINED_FUNCTION_2_25();
  if (testFldeq(v33, v34, v35, 2) || advance_tok(a1, v36, v37, v38))
  {
    goto LABEL_10;
  }

  v40 = OUTLINED_FUNCTION_9_23();
  starttest(v40, v41);
  v42 = OUTLINED_FUNCTION_3_24();
  if (lpta_loadp_setscan_l(v42, v43, v44))
  {
    LODWORD(v45) = 0;
    while (2)
    {
      v46 = OUTLINED_FUNCTION_19_16();
      v48 = v45;
      if (lpta_loadp_setscan_l(v46, v47, 5))
      {
LABEL_19:
        v55 = OUTLINED_FUNCTION_12_22();
        starttest(v55, v56);
        v57 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_l(v57, v58, v59))
        {
LABEL_5:
          v32 = 20.0;
          goto LABEL_6;
        }

        OUTLINED_FUNCTION_18_17();
        bspush_ca_scan_boa();
LABEL_21:
        v60 = OUTLINED_FUNCTION_18_17();
        if (test_synch(v60, v61, 1, v62))
        {
          v39 = v48;
        }

        else
        {
          v39 = 1;
        }

LABEL_24:
        v63 = v39;
LABEL_25:
        v64 = *(a1 + 13);
        if (v64)
        {
          v65 = OUTLINED_FUNCTION_24_15(v64);
          v45 = v66;
        }

        else
        {
          v65 = vback(a1, v63);
          v45 = 0;
        }

        v32 = 10.0;
        switch(v65)
        {
          case 1:
          case 5:
            goto LABEL_5;
          case 2:
            continue;
          case 3:
          case 12:
          case 13:
            goto LABEL_7;
          case 4:
            v48 = v45;
            goto LABEL_19;
          case 6:
            bspop_boa(a1);
            v67 = OUTLINED_FUNCTION_2_25();
            v70 = testFldeq(v67, v68, v69, 1);
            v63 = v45;
            if (v70)
            {
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_31_10();
            bspush_ca_scan_boa();
            v71 = OUTLINED_FUNCTION_6_23();
            goto LABEL_33;
          case 7:
            v48 = v45;
            goto LABEL_21;
          case 8:
            bspop_boa(a1);
            OUTLINED_FUNCTION_28_11();
            bspush_ca_scan_boa();
            v71 = OUTLINED_FUNCTION_11_22();
            v74 = 18;
            goto LABEL_33;
          case 9:
            bspop_boa(a1);
            OUTLINED_FUNCTION_34_8();
            bspush_ca_scan_boa();
            v71 = OUTLINED_FUNCTION_11_22();
            v74 = 19;
LABEL_33:
            if (testFldeq(v71, v72, v73, v74))
            {
              v63 = v45;
            }

            else
            {
              v63 = 1;
            }

            goto LABEL_25;
          case 10:
            bspop_boa(a1);
            v78 = advance_tok(a1, v75, v76, v77);
            v63 = v45;
            if (v78)
            {
              goto LABEL_25;
            }

            starttest(a1, 11);
            v79 = OUTLINED_FUNCTION_3_24();
            v82 = lpta_loadp_setscan_l(v79, v80, v81);
            v32 = 10.0;
            if (v82)
            {
              goto LABEL_6;
            }

            v83 = OUTLINED_FUNCTION_7_23();
            v86 = testFldeq(v83, v84, 2, v85);
            v63 = v45;
            if (v86)
            {
              goto LABEL_25;
            }

            v89 = advance_tok(a1, v45, v87, v88);
            v63 = v45;
            if (v89)
            {
              goto LABEL_25;
            }

            v32 = 5.0;
            break;
          case 11:
            goto LABEL_6;
          default:
            goto LABEL_3;
        }

        goto LABEL_6;
      }

      break;
    }
  }

  else
  {
    v49 = OUTLINED_FUNCTION_2_25();
    if (testFldeq(v49, v50, v51, 2) || advance_tok(a1, v52, v53, v54))
    {
LABEL_10:
      v39 = 0;
      goto LABEL_24;
    }
  }

  v32 = 40.0;
LABEL_6:
  a1[425] = v32;
LABEL_7:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_l_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v48);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, SHIDWORD(v96), v98, SWORD2(v98), SHIWORD(v98), v100, SWORD2(v100), SBYTE6(v100), SHIBYTE(v100), v102, v103))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v20 = OUTLINED_FUNCTION_0_27();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    while (2)
    {
      v25 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v25, v26, 1, v27))
      {
        v28 = 15.0;
        goto LABEL_17;
      }

LABEL_11:
      v43 = *(a1 + 104);
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_24_15(v43);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_25_14();
        v44 = vback(v45, v46);
      }

      if ((v44 - 1) <= 3)
      {
        v28 = OUTLINED_FUNCTION_35_7();
        switch(v47)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_18;
          case 3:
            goto LABEL_17;
          default:
            goto LABEL_7;
        }
      }

      goto LABEL_3;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_27_12();
  v29 = OUTLINED_FUNCTION_19_16();
  if (lpta_loadp_setscan_r(v29, v30, v1))
  {
    v28 = 50.0;
  }

  else
  {
    v31 = OUTLINED_FUNCTION_16_19();
    if (npush_fld(v31, v32, 8u))
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_33_9();
    if (if_testneq(a1, v33, v34, v35, v36, v37, v38, v39) || advance_tok(a1, v40, v41, v42))
    {
      goto LABEL_11;
    }

    v28 = 30.0;
  }

LABEL_17:
  *(a1 + 3400) = v28;
LABEL_18:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_ly_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v39);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, SHIDWORD(v87), v89, SWORD2(v89), SHIWORD(v89), v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v93, v94))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_0_27();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_4_23();
  v32 = 75.0;
  if (lpta_loadp_setscan_r(v29, v30, v31))
  {
LABEL_5:
    *(a1 + 3400) = v32;
  }

  else
  {
    do
    {
      v33 = OUTLINED_FUNCTION_28_11();
      if (!test_synch(v33, v34, 1, &unk_2806BBEBF))
      {
        v32 = 15.0;
        goto LABEL_5;
      }

      v35 = *(a1 + 104);
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_24_15(v35);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_25_14();
        v36 = vback(v37, v38);
      }
    }

    while (v36 == 2);
    if (v36 == 1)
    {
      goto LABEL_5;
    }

    if (v36 != 3)
    {
      goto LABEL_3;
    }
  }

  vretproc(a1);
  return 0;
}

uint64_t por_ph_r_dur(uint64_t a1)
{
  v91 = *MEMORY[0x277D85DE8];
  v86[0] = 0;
  v86[1] = 0;
  bzero(v85, 0xB8uLL);
  OUTLINED_FUNCTION_23_15();
  bzero(v90, v2);
  if (setjmp(v90) || ventproc(a1, v85, v89, v88, v87, v90))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  push_ptr_init(a1, v86);
  fence_23(a1);
  v4 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v4, v5, v6))
  {
    OUTLINED_FUNCTION_2_25();
    if (!test_string_s())
    {
      *&v84 = 80.0;
LABEL_53:
      v26 = *&v84;
      goto LABEL_55;
    }
  }

  LODWORD(v7) = 0;
LABEL_7:
  v8 = OUTLINED_FUNCTION_34_8();
  starttest(v8, v9);
  v10 = OUTLINED_FUNCTION_19_16();
  if (!lpta_loadp_setscan_l(v10, v11, 4))
  {
    v17 = OUTLINED_FUNCTION_29_11();
    if (testFldeq(v17, v18, 4, 1))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  while (2)
  {
    v12 = v7;
    starttest(a1, 6);
    v13 = OUTLINED_FUNCTION_19_16();
    if (!lpta_loadp_setscan_l(v13, v14, 4))
    {
LABEL_9:
      v12 = v7;
      savescptr(a1, 7, v86);
      v15 = OUTLINED_FUNCTION_29_11();
      if (testFldeq(v15, v16, 4, 1))
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_42:
    v72 = OUTLINED_FUNCTION_28_11();
    starttest(v72, v73);
    v74 = OUTLINED_FUNCTION_19_16();
    if (!lpta_loadp_setscan_l(v74, v75, 4))
    {
      v82 = OUTLINED_FUNCTION_29_11();
      if (OUTLINED_FUNCTION_32_9(v82, v83))
      {
        LODWORD(v7) = v12;
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    LODWORD(v7) = v12;
LABEL_44:
    v76 = OUTLINED_FUNCTION_20_15();
    if (!lpta_loadp_setscan_r(v76, v77, 4))
    {
      OUTLINED_FUNCTION_29_11();
      if (!test_string_s())
      {
        v26 = 30.0;
        break;
      }
    }

LABEL_46:
    starttest(a1, 13);
    bspush_ca_scan(a1, 14);
    v78 = OUTLINED_FUNCTION_19_16();
    if (!lpta_loadp_setscan_l(v78, v79, 4))
    {
      v80 = OUTLINED_FUNCTION_29_11();
      if (!OUTLINED_FUNCTION_32_9(v80, v81))
      {
LABEL_12:
        v12 = v7;
LABEL_13:
        bspush_ca_scan_boa();
        v19 = OUTLINED_FUNCTION_29_11();
        if (testFldeq(v19, v20, v21, 0))
        {
          LODWORD(v7) = v12;
        }

        else
        {
          LODWORD(v7) = 1;
        }
      }
    }

LABEL_16:
    v22 = v7;
LABEL_17:
    v23 = *(a1 + 104);
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_24_15(v23);
      v7 = v25;
    }

    else
    {
      v24 = vback(a1, v22);
      v7 = 0;
    }

    if ((v24 - 1) > 0x10)
    {
      goto LABEL_3;
    }

    v26 = OUTLINED_FUNCTION_35_7();
    switch(v28)
    {
      case 1:
        goto LABEL_56;
      case 2:
        continue;
      case 3:
        bspop_boa(a1);
        v62 = advance_tok(a1, v59, v60, v61);
        v22 = v7;
        if (v62)
        {
          goto LABEL_17;
        }

        goto LABEL_34;
      case 4:
LABEL_34:
        v63 = test_synch(a1, 5, 1, &unk_2806BBEBF);
        v22 = v7;
        if (v63)
        {
          goto LABEL_17;
        }

        v27 = 40.0;
        goto LABEL_54;
      case 5:
        v12 = v7;
        goto LABEL_42;
      case 6:
        goto LABEL_9;
      case 7:
        bspop_boa(a1);
        v40 = advance_tok(a1, v37, v38, v39);
        v22 = v7;
        if (v40)
        {
          goto LABEL_17;
        }

        goto LABEL_27;
      case 8:
LABEL_27:
        v41 = OUTLINED_FUNCTION_39_5();
        v43 = test_synch(v41, v42, 1, &unk_2806BBEBF);
        v22 = v7;
        if (v43)
        {
          goto LABEL_17;
        }

        v44 = lpta_loadp_setscan_r(a1, v86, 4);
        v22 = v7;
        if (v44)
        {
          goto LABEL_17;
        }

        v45 = OUTLINED_FUNCTION_29_11();
        v47 = npush_fld(v45, v46, 8u);
        v22 = v7;
        if (v47)
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_33_9();
        v55 = if_testeq(a1, v48, v49, v50, v51, v52, v53, v54);
        v22 = v7;
        if (v55)
        {
          goto LABEL_17;
        }

        v58 = advance_tok(a1, v7, v56, v57);
        v22 = v7;
        if (v58)
        {
          goto LABEL_17;
        }

        v27 = 35.0;
LABEL_54:
        v26 = v27;
        break;
      case 9:
        goto LABEL_44;
      case 10:
        bspop_boa(a1);
        v36 = advance_tok(a1, v33, v34, v35);
        v22 = v7;
        if (v36)
        {
          goto LABEL_17;
        }

        v27 = 30.0;
        goto LABEL_54;
      case 11:
        goto LABEL_46;
      case 12:
        goto LABEL_54;
      case 13:
        v64 = OUTLINED_FUNCTION_20_15();
        v66 = lpta_loadp_setscan_r(v64, v65, 4);
        v22 = v7;
        if (!v66)
        {
          v67 = OUTLINED_FUNCTION_29_11();
          v69 = OUTLINED_FUNCTION_32_9(v67, v68);
          v22 = v7;
          if (!v69)
          {
            bspush_ca_scan_boa();
            v70 = OUTLINED_FUNCTION_29_11();
            if (testFldeq(v70, v71, 3, 0))
            {
              v22 = v7;
            }

            else
            {
              v22 = 1;
            }
          }
        }

        goto LABEL_17;
      case 14:
      case 16:
        bspop_boa(a1);
        v32 = advance_tok(a1, v29, v30, v31);
        v22 = v7;
        if (v32)
        {
          goto LABEL_17;
        }

        *&v84 = 40.0;
        goto LABEL_53;
      case 15:
        goto LABEL_55;
      default:
        goto LABEL_7;
    }

    break;
  }

LABEL_55:
  *(a1 + 3400) = v26;
LABEL_56:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_R_dur(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v70);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, SHIDWORD(v118), v120, SWORD2(v120), SHIWORD(v120), v122, SWORD2(v122), SBYTE6(v122), SHIBYTE(v122), v124, v125))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_23(a1);
  a1[425] = 80.0;
  v27 = OUTLINED_FUNCTION_5_23();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_4_23();
  v32 = 0;
  v33 = 0;
  if (lpta_loadp_setscan_r(v29, v30, v31))
  {
    while (2)
    {
      OUTLINED_FUNCTION_27_12();
      v38 = OUTLINED_FUNCTION_19_16();
      if (lpta_loadp_setscan_r(v38, v39, v33))
      {
        LODWORD(v33) = v32;
LABEL_10:
        v40 = OUTLINED_FUNCTION_14_20();
        starttest(v40, v41);
        v42 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_l(v42, v43, v44))
        {
          goto LABEL_24;
        }

        v45 = OUTLINED_FUNCTION_2_25();
        if (!testFldeq(v45, v46, v47, 1))
        {
          OUTLINED_FUNCTION_12_22();
          bspush_ca_scan_boa();
          v48 = OUTLINED_FUNCTION_6_23();
          if (!testFldeq(v48, v49, v50, v51))
          {
            LODWORD(v33) = 1;
          }
        }
      }

      else
      {
        v52 = OUTLINED_FUNCTION_16_19();
        if (npush_fld(v52, v53, 8u) || (OUTLINED_FUNCTION_33_9(), if_testneq(a1, v54, v55, v56, v57, v58, v59, v60)))
        {
          LODWORD(v33) = v32;
        }

        else
        {
          LODWORD(v33) = v32;
          if (!advance_tok(a1, v61, v62, v63))
          {
            v37 = 50.0;
            goto LABEL_23;
          }
        }
      }

LABEL_17:
      v37 = 70.0;
LABEL_18:
      v64 = *(a1 + 13);
      if (v64)
      {
        v65 = OUTLINED_FUNCTION_24_15(v64);
        v33 = v66;
      }

      else
      {
        v65 = vback(a1, v33);
        v33 = 0;
      }

      switch(v65)
      {
        case 1:
          v32 = v33;
          continue;
        case 2:
          goto LABEL_5;
        case 3:
          goto LABEL_24;
        case 4:
          goto LABEL_10;
        case 5:
          bspop_boa(a1);
          if (!advance_tok(a1, v67, v68, v69))
          {
            goto LABEL_23;
          }

          goto LABEL_18;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_5:
  v34 = OUTLINED_FUNCTION_9_23();
  if (test_synch(v34, v35, 1, v36))
  {
    goto LABEL_17;
  }

  v37 = 15.0;
LABEL_23:
  a1[425] = v37;
LABEL_24:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_f_dur(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v100);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, SHIDWORD(v148), v150, SWORD2(v150), SHIWORD(v150), v152, SWORD2(v152), SBYTE6(v152), SHIBYTE(v152), v154, v155))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_0_27();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_4_23();
    v32 = 0;
    v33 = 0;
    if (lpta_loadp_setscan_r(v29, v30, v31))
    {
LABEL_5:
      OUTLINED_FUNCTION_27_12();
      v34 = OUTLINED_FUNCTION_20_15();
      v36 = lpta_loadp_setscan_r(v34, v35, v33);
      v37 = v32;
      if (v36)
      {
LABEL_11:
        LODWORD(v33) = v37;
        v42 = OUTLINED_FUNCTION_18_17();
        starttest(v42, v43);
        v44 = OUTLINED_FUNCTION_3_24();
        v32 = v33;
        if (lpta_loadp_setscan_l(v44, v45, v46))
        {
LABEL_12:
          v47 = OUTLINED_FUNCTION_18_17();
          starttest(v47, v48);
          v49 = OUTLINED_FUNCTION_3_24();
          if (lpta_loadp_setscan_r(v49, v50, v51))
          {
LABEL_13:
            v52 = OUTLINED_FUNCTION_18_17();
            starttest(v52, v53);
            v54 = OUTLINED_FUNCTION_4_23();
            if (lpta_loadp_setscan_r(v54, v55, v56))
            {
              v41 = 0x405B800000000000;
              goto LABEL_38;
            }
          }

          v57 = OUTLINED_FUNCTION_16_19();
          if (!npush_fld(v57, v58, 8u))
          {
            OUTLINED_FUNCTION_33_9();
            if (!if_testneq(a1, v59, v60, v61, v62, v63, v64, v65) && !advance_tok(a1, v66, v67, v68))
            {
              v41 = 0x4054000000000000;
              goto LABEL_38;
            }
          }

          goto LABEL_23;
        }
      }

LABEL_19:
      v69 = OUTLINED_FUNCTION_2_25();
      LODWORD(v33) = v32;
      if (!testFldeq(v69, v70, v71, 1))
      {
        bspush_ca_scan_boa();
        v72 = OUTLINED_FUNCTION_6_23();
        if (testFldeq(v72, v73, v74, v75))
        {
          LODWORD(v33) = v32;
        }

        else
        {
          LODWORD(v33) = 1;
        }
      }
    }

    else
    {
LABEL_8:
      v38 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v38, v39, 1, v40))
      {
        v41 = 0x4041800000000000;
        goto LABEL_38;
      }
    }

LABEL_23:
    while (1)
    {
      v76 = v33;
      v33 = 6;
      while (2)
      {
        v77 = a1[13];
        if (v77)
        {
          v78 = OUTLINED_FUNCTION_24_15(v77);
          v32 = v79;
        }

        else
        {
          v78 = vback(a1, v76);
          v32 = 0;
        }

        switch(v78)
        {
          case 1:
            goto LABEL_5;
          case 2:
            LODWORD(v33) = v32;
            goto LABEL_8;
          case 3:
            LODWORD(v33) = v32;
            goto LABEL_39;
          case 4:
            v37 = v32;
            goto LABEL_11;
          case 5:
            bspop_boa(a1);
            v83 = advance_tok(a1, v80, v81, v82);
            v76 = v32;
            if (v83)
            {
              continue;
            }

            v88 = 6;
            goto LABEL_36;
          case 6:
          case 9:
            goto LABEL_19;
          case 7:
            LODWORD(v33) = v32;
            goto LABEL_12;
          case 8:
            bspop_boa(a1);
            v87 = advance_tok(a1, v84, v85, v86);
            v76 = v32;
            if (v87)
            {
              continue;
            }

            v88 = 9;
LABEL_36:
            bspush_ca_scan(a1, v88);
            v41 = 0x4051800000000000;
            break;
          case 10:
            LODWORD(v33) = v32;
            goto LABEL_13;
          case 11:
            v41 = 0x405B800000000000;
            break;
          case 12:
            goto LABEL_43;
          default:
            goto LABEL_3;
        }

        break;
      }

      LODWORD(v33) = v32;
LABEL_38:
      a1[425] = v41;
LABEL_39:
      v89 = OUTLINED_FUNCTION_18_17();
      starttest(v89, v90);
      v91 = OUTLINED_FUNCTION_4_23();
      if (lpta_loadp_setscan_r(v91, v92, v93))
      {
        break;
      }

      v94 = OUTLINED_FUNCTION_11_22();
      if (!testFldeq(v94, v95, v96, 40) && !advance_tok(a1, v97, v98, v99))
      {
        OUTLINED_FUNCTION_40_4();
        break;
      }
    }

LABEL_43:
    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_sS_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v190);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, 0, 0, v262, v264, v266, v268);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v260, v261, v263, SHIDWORD(v263), v265, SWORD2(v265), SHIWORD(v265), v267, SWORD2(v267), SBYTE6(v267), SHIBYTE(v267), v269, v270))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_26_14();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_0_27();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_3_24();
  if (!lpta_loadp_setscan_l(v31, v32, v33))
  {
    v111 = OUTLINED_FUNCTION_16_19();
    if (testFldeq(v111, v112, 10, 1))
    {
      v34 = 0;
      goto LABEL_37;
    }

    v34 = 0;
    if (advance_tok(a1, v113, v114, v115))
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v34 = 0;
LABEL_6:
  v35 = OUTLINED_FUNCTION_14_20();
  starttest(v35, v36);
  OUTLINED_FUNCTION_36_7();
  if (v37 == v38 || (v39 = OUTLINED_FUNCTION_4_23(), v42 = lpta_loadp_setscan_r(v39, v40, v41), v43 = v34, v42))
  {
LABEL_9:
    v44 = OUTLINED_FUNCTION_12_22();
    starttest(v44, v45);
    v46 = OUTLINED_FUNCTION_4_23();
    v49 = lpta_loadp_setscan_r(v46, v47, v48);
    v50 = v34;
    if (v49)
    {
LABEL_10:
      v34 = v50;
      v51 = OUTLINED_FUNCTION_18_17();
      starttest(v51, v52);
      v53 = OUTLINED_FUNCTION_4_23();
      if (lpta_loadp_setscan_r(v53, v54, v55))
      {
LABEL_11:
        v56 = OUTLINED_FUNCTION_18_17();
        starttest(v56, v57);
        v58 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_l(v58, v59, v60))
        {
LABEL_12:
          v61 = OUTLINED_FUNCTION_18_17();
          starttest(v61, v62);
          v63 = OUTLINED_FUNCTION_4_23();
          v66 = lpta_loadp_setscan_l(v63, v64, v65);
          v67 = v34;
          if (v66)
          {
LABEL_46:
            v34 = v67;
            v132 = OUTLINED_FUNCTION_18_17();
            starttest(v132, v133);
            v134 = OUTLINED_FUNCTION_4_23();
            if (lpta_loadp_setscan_r(v134, v135, v136))
            {
LABEL_47:
              v137 = OUTLINED_FUNCTION_18_17();
              starttest(v137, v138);
              v139 = OUTLINED_FUNCTION_3_24();
              if (lpta_loadp_setscan_l(v139, v140, v141))
              {
                v142 = 0x4064000000000000;
              }

              else
              {
LABEL_57:
                OUTLINED_FUNCTION_30_10(15, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259);
                v154 = OUTLINED_FUNCTION_16_19();
                if (npush_fld(v154, v155, 8u))
                {
                  goto LABEL_37;
                }

                OUTLINED_FUNCTION_33_9();
                if (if_testneq(a1, v156, v157, v158, v159, v160, v161, v162))
                {
                  goto LABEL_37;
                }

                if (advance_tok(a1, v163, v164, v165))
                {
                  goto LABEL_37;
                }

                v166 = OUTLINED_FUNCTION_17_18();
                if (lpta_loadp_setscan_r(v166, v167, v168))
                {
                  goto LABEL_37;
                }

                if (advance_tok(a1, v169, v170, v171))
                {
                  goto LABEL_37;
                }

                v172 = OUTLINED_FUNCTION_11_22();
                if (testFldeq(v172, v173, v174, 40) || advance_tok(a1, v175, v176, v177))
                {
                  goto LABEL_37;
                }

                v142 = 0x4059000000000000;
              }
            }

            else
            {
              v178 = OUTLINED_FUNCTION_16_19();
              if (npush_fld(v178, v179, 8u))
              {
                goto LABEL_37;
              }

              OUTLINED_FUNCTION_33_9();
              if (if_testneq(a1, v180, v181, v182, v183, v184, v185, v186) || advance_tok(a1, v187, v188, v189))
              {
                goto LABEL_37;
              }

              v142 = 0x405E000000000000;
            }

            v98 = *&v142;
          }

          else
          {
LABEL_13:
            OUTLINED_FUNCTION_30_10(12, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259);
            if (advance_tok(a1, v68, v69, v70))
            {
              goto LABEL_37;
            }

            v71 = OUTLINED_FUNCTION_16_19();
            if (npush_fld(v71, v72, 8u))
            {
              goto LABEL_37;
            }

            OUTLINED_FUNCTION_33_9();
            if (if_testneq(a1, v73, v74, v75, v76, v77, v78, v79))
            {
              goto LABEL_37;
            }

            if (advance_tok(a1, v80, v81, v82))
            {
              goto LABEL_37;
            }

            v83 = OUTLINED_FUNCTION_17_18();
            if (lpta_loadp_setscan_r(v83, v84, v85))
            {
              goto LABEL_37;
            }

            v86 = OUTLINED_FUNCTION_16_19();
            if (npush_fld(v86, v87, 8u))
            {
              goto LABEL_37;
            }

            OUTLINED_FUNCTION_33_9();
            if (if_testneq(a1, v88, v89, v90, v91, v92, v93, v94) || advance_tok(a1, v95, v96, v97))
            {
              goto LABEL_37;
            }

            v98 = 90.0;
          }

          goto LABEL_50;
        }

        v103 = OUTLINED_FUNCTION_2_25();
        v106 = testFldeq(v103, v104, v105, 1);
        v102 = v34;
        if (v106)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v99 = OUTLINED_FUNCTION_2_25();
        if (testFldeq(v99, v100, v101, 1))
        {
          goto LABEL_37;
        }

        v102 = v34;
      }

      v34 = v102;
      bspush_ca_scan_boa();
      v107 = OUTLINED_FUNCTION_6_23();
      if (!testFldeq(v107, v108, v109, v110))
      {
        v34 = 1;
      }

      goto LABEL_37;
    }

LABEL_31:
    v116 = OUTLINED_FUNCTION_18_17();
    if (test_synch(v116, v117, 1, v118))
    {
      goto LABEL_37;
    }

LABEL_32:
    v98 = 75.0;
    goto LABEL_50;
  }

LABEL_34:
  v34 = v43;
  v119 = OUTLINED_FUNCTION_18_17();
  if (test_synch(v119, v120, 1, v121))
  {
    goto LABEL_37;
  }

  v98 = 65.0;
LABEL_50:
  while (1)
  {
    v126 = v34;
LABEL_51:
    *(a1 + 3400) = v98;
    v34 = v126;
LABEL_52:
    v143 = OUTLINED_FUNCTION_18_17();
    starttest(v143, v144);
    v145 = OUTLINED_FUNCTION_4_23();
    if (lpta_loadp_setscan_r(v145, v146, v147))
    {
      break;
    }

    v148 = OUTLINED_FUNCTION_11_22();
    if (!testFldeq(v148, v149, v150, 40) && !advance_tok(a1, v151, v152, v153))
    {
      OUTLINED_FUNCTION_40_4();
      break;
    }

LABEL_37:
    v122 = v34;
    while (2)
    {
      v123 = *(a1 + 104);
      if (v123)
      {
        v124 = OUTLINED_FUNCTION_24_15(v123);
        v34 = v125;
      }

      else
      {
        v124 = vback(a1, v122);
        v34 = 0;
      }

      if ((v124 - 1) > 0xF)
      {
        goto LABEL_3;
      }

      v98 = OUTLINED_FUNCTION_35_7();
      v126 = v34;
      switch(v127)
      {
        case 1:
          goto LABEL_52;
        case 2:
          goto LABEL_9;
        case 3:
          v43 = v34;
          goto LABEL_34;
        case 4:
          v50 = v34;
          goto LABEL_10;
        case 5:
          goto LABEL_31;
        case 6:
          goto LABEL_11;
        case 7:
        case 9:
          bspop_boa(a1);
          v131 = advance_tok(a1, v128, v129, v130);
          v122 = v34;
          if (v131)
          {
            continue;
          }

          v98 = 90.0;
          break;
        case 8:
          goto LABEL_12;
        case 10:
          v67 = v34;
          goto LABEL_46;
        case 11:
          goto LABEL_13;
        case 12:
          goto LABEL_47;
        case 13:
          goto LABEL_51;
        case 14:
          goto LABEL_57;
        case 15:
          goto LABEL_56;
        default:
          goto LABEL_6;
      }

      break;
    }
  }

LABEL_56:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_v_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v92);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, 0, 0, v164, v166, v168, v170);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v162, v163, v165, SHIDWORD(v165), v167, SWORD2(v167), SHIWORD(v167), v169, SWORD2(v169), SBYTE6(v169), SHIBYTE(v169), v171, v172))
  {
    v27 = OUTLINED_FUNCTION_26_14();
    push_ptr_init(v27, v28);
    fence_23(a1);
    *(a1 + 3400) = 0x4056800000000000;
    v29 = OUTLINED_FUNCTION_5_23();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_4_23();
    if (!lpta_loadp_setscan_r(v31, v32, v33))
    {
      while (2)
      {
        v34 = OUTLINED_FUNCTION_9_23();
        if (!test_synch(v34, v35, 1, v36))
        {
          v37 = 15.0;
LABEL_11:
          *(a1 + 3400) = v37;
LABEL_29:
          vretproc(a1);
          return 0;
        }

LABEL_25:
        v88 = *(a1 + 104);
        if (v88)
        {
          v89 = OUTLINED_FUNCTION_24_15(v88);
        }

        else
        {
          v90 = OUTLINED_FUNCTION_25_14();
          v89 = vback(v90, v91);
        }

        switch(v89)
        {
          case 1:
            break;
          case 2:
            continue;
          case 3:
            goto LABEL_29;
          case 4:
            goto LABEL_12;
          case 5:
            goto LABEL_13;
          case 6:
            goto LABEL_22;
          case 7:
            goto LABEL_14;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    OUTLINED_FUNCTION_36_7();
    if (v38 != v39)
    {
      v37 = 70.0;
      goto LABEL_11;
    }

LABEL_12:
    v40 = OUTLINED_FUNCTION_12_22();
    starttest(v40, v41);
    v42 = OUTLINED_FUNCTION_3_24();
    if (lpta_loadp_setscan_l(v42, v43, v44))
    {
LABEL_13:
      v45 = OUTLINED_FUNCTION_14_20();
      starttest(v45, v46);
      v47 = OUTLINED_FUNCTION_3_24();
      if (lpta_loadp_setscan_l(v47, v48, v49))
      {
        goto LABEL_29;
      }

LABEL_14:
      OUTLINED_FUNCTION_30_10(7, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161);
      v50 = OUTLINED_FUNCTION_16_19();
      if (npush_fld(v50, v51, 8u))
      {
        goto LABEL_25;
      }

      v52 = OUTLINED_FUNCTION_25_14();
      npush_i(v52);
      if (if_testneq(a1, v53, v54, v55, v56, v57, v58, v59))
      {
        goto LABEL_25;
      }

      if (advance_tok(a1, v60, v61, v62))
      {
        goto LABEL_25;
      }

      v63 = OUTLINED_FUNCTION_17_18();
      if (lpta_loadp_setscan_r(v63, v64, v65))
      {
        goto LABEL_25;
      }

      v66 = OUTLINED_FUNCTION_16_19();
      if (npush_fld(v66, v67, 8u))
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_33_9();
      if (if_testneq(a1, v68, v69, v70, v71, v72, v73, v74) || advance_tok(a1, v75, v76, v77))
      {
        goto LABEL_25;
      }

      v78 = 0x4054000000000000;
    }

    else
    {
LABEL_22:
      v79 = OUTLINED_FUNCTION_18_17();
      if (test_synch(v79, v80, 1, v81))
      {
        goto LABEL_25;
      }

      v82 = OUTLINED_FUNCTION_2_25();
      if (testFldeq(v82, v83, v84, 2) || advance_tok(a1, v85, v86, v87))
      {
        goto LABEL_25;
      }

      v78 = 0x4059000000000000;
    }

    v37 = *&v78;
    goto LABEL_11;
  }

LABEL_3:
  vretproc(a1);
  return 94;
}

uint64_t por_ph_z_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_23(a1);
    v19 = 0;
    *(a1 + 3400) = 0x4052C00000000000;
  }

  vretproc(a1);
  return v19;
}

uint64_t por_ph_Z_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v54);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, SHIDWORD(v102), v104, SWORD2(v104), SHIWORD(v104), v106, SWORD2(v106), SBYTE6(v106), SHIBYTE(v106), v108, v109))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v20 = OUTLINED_FUNCTION_0_27();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    while (2)
    {
      v25 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v25, v26, 1, v27))
      {
        v28 = 25.0;
        goto LABEL_22;
      }

LABEL_14:
      v47 = *(a1 + 104);
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_24_15(v47);
      }

      else
      {
        v49 = OUTLINED_FUNCTION_25_14();
        v48 = vback(v49, v50);
      }

      switch(v48)
      {
        case 1:
          break;
        case 2:
          continue;
        case 3:
          goto LABEL_23;
        case 4:
          goto LABEL_12;
        case 5:
          goto LABEL_10;
        case 6:
          goto LABEL_18;
        case 7:
          goto LABEL_13;
        case 8:
          goto LABEL_20;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v29 = OUTLINED_FUNCTION_18_17();
  starttest(v29, v30);
  OUTLINED_FUNCTION_36_7();
  if (v31 == v32 || (v33 = OUTLINED_FUNCTION_4_23(), lpta_loadp_setscan_r(v33, v34, v35)))
  {
LABEL_12:
    v39 = OUTLINED_FUNCTION_18_17();
    starttest(v39, v40);
    v41 = OUTLINED_FUNCTION_4_23();
    if (lpta_loadp_setscan_r(v41, v42, v43))
    {
LABEL_18:
      v51 = OUTLINED_FUNCTION_3_24();
      if (lpta_loadp_setscan_l(v51, v52, v53) || (OUTLINED_FUNCTION_2_25(), test_string_s()))
      {
LABEL_20:
        v28 = 85.0;
        goto LABEL_22;
      }
    }

    else
    {
LABEL_13:
      v44 = OUTLINED_FUNCTION_18_17();
      if (test_synch(v44, v45, 1, v46))
      {
        goto LABEL_14;
      }
    }

    v28 = 75.0;
  }

  else
  {
LABEL_10:
    v36 = OUTLINED_FUNCTION_12_22();
    if (test_synch(v36, v37, 1, v38))
    {
      goto LABEL_14;
    }

    v28 = 55.0;
  }

LABEL_22:
  *(a1 + 3400) = v28;
LABEL_23:
  vretproc(a1);
  return 0;
}

uint64_t por_nasal_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v150);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, 0, 0, v222, v224, v226, v228);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v220, v221, v223, SHIDWORD(v223), v225, SWORD2(v225), SHIWORD(v225), v227, SWORD2(v227), SBYTE6(v227), SHIBYTE(v227), v229, v230))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_26_14();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_0_27();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_4_23();
  v34 = lpta_loadp_setscan_r(v31, v32, v33);
  v35 = 0;
  v36 = 0;
  if (!v34)
  {
LABEL_8:
    LODWORD(v39) = v35;
    v41 = OUTLINED_FUNCTION_9_23();
    if (!test_synch(v41, v42, 1, v43))
    {
      v44 = 25.0;
      goto LABEL_53;
    }

    goto LABEL_25;
  }

LABEL_5:
  v37 = OUTLINED_FUNCTION_19_16();
  v39 = v36;
  if (!lpta_loadp_setscan_l(v37, v38, 5))
  {
LABEL_6:
    v40 = 0x4049000000000000;
LABEL_52:
    v44 = *&v40;
    goto LABEL_53;
  }

  while (2)
  {
    v45 = OUTLINED_FUNCTION_12_22();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_4_23();
    if (!lpta_loadp_setscan_r(v47, v48, v49))
    {
      OUTLINED_FUNCTION_18_17();
      bspush_ca_scan_boa();
      v87 = 7;
      goto LABEL_22;
    }

LABEL_12:
    v50 = OUTLINED_FUNCTION_18_17();
    starttest(v50, v51);
    v52 = OUTLINED_FUNCTION_3_24();
    if (!lpta_loadp_setscan_l(v52, v53, v54))
    {
      OUTLINED_FUNCTION_18_17();
      bspush_ca_scan_boa();
      v87 = 12;
LABEL_22:
      v88 = v87;
LABEL_23:
      if (!test_synch(a1, v88, 1, &unk_2806BBEBF))
      {
        LODWORD(v39) = 1;
      }

      goto LABEL_25;
    }

LABEL_13:
    v55 = OUTLINED_FUNCTION_18_17();
    starttest(v55, v56);
    v57 = OUTLINED_FUNCTION_3_24();
    if (lpta_loadp_setscan_r(v57, v58, v59))
    {
LABEL_51:
      v40 = 0x404E000000000000;
      goto LABEL_52;
    }

    v60 = OUTLINED_FUNCTION_16_19();
    if (!npush_fld(v60, v61, 8u))
    {
      OUTLINED_FUNCTION_33_9();
      if (!if_testneq(a1, v62, v63, v64, v65, v66, v67, v68) && !advance_tok(a1, v69, v70, v71))
      {
        v72 = OUTLINED_FUNCTION_18_17();
        starttest(v72, v73);
        v74 = OUTLINED_FUNCTION_3_24();
        v36 = v39;
        if (lpta_loadp_setscan_l(v74, v75, v76))
        {
LABEL_50:
          v44 = 45.0;
          break;
        }

LABEL_18:
        OUTLINED_FUNCTION_30_10(17, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219);
        v77 = OUTLINED_FUNCTION_18_17();
        bspush_ca_scan(v77, v78);
        v79 = OUTLINED_FUNCTION_6_23();
        v83 = testFldeq(v79, v80, v81, v82);
        LODWORD(v39) = v36;
        v86 = v36;
        if (!v83)
        {
LABEL_46:
          LODWORD(v39) = v86;
          if (!advance_tok(a1, v84, v86, v85))
          {
            v146 = OUTLINED_FUNCTION_17_18();
            if (!lpta_loadp_setscan_r(v146, v147, v148))
            {
              OUTLINED_FUNCTION_2_25();
              if (!test_string_s())
              {
LABEL_49:
                v40 = 0x4044000000000000;
                goto LABEL_52;
              }
            }
          }
        }
      }
    }

LABEL_25:
    LODWORD(v84) = v39;
LABEL_26:
    v89 = *(a1 + 104);
    if (v89)
    {
      v90 = OUTLINED_FUNCTION_24_15(v89);
      v36 = v91;
    }

    else
    {
      v90 = vback(a1, v84);
      v36 = 0;
    }

    if ((v90 - 1) > 0x13)
    {
      goto LABEL_3;
    }

    v44 = OUTLINED_FUNCTION_35_7();
    v86 = v36;
    switch(v92)
    {
      case 1:
        v35 = v36;
        goto LABEL_8;
      case 2:
      case 8:
      case 13:
      case 19:
        goto LABEL_54;
      case 3:
        v39 = v36;
        continue;
      case 4:
        v39 = v36;
        goto LABEL_12;
      case 5:
        bspop_boa(a1);
        v93 = OUTLINED_FUNCTION_2_25();
        v96 = testFldeq(v93, v94, v95, 1);
        LODWORD(v84) = v36;
        if (v96)
        {
          goto LABEL_26;
        }

        v99 = advance_tok(a1, v36, v97, v98);
        LODWORD(v84) = v36;
        if (v99)
        {
          goto LABEL_26;
        }

        v100 = OUTLINED_FUNCTION_28_11();
        starttest(v100, v101);
        v102 = OUTLINED_FUNCTION_4_23();
        if (lpta_loadp_setscan_r(v102, v103, v104))
        {
          goto LABEL_6;
        }

        v105 = OUTLINED_FUNCTION_8_23();
        v108 = testFldeq(v105, v106, v107, 1);
        LODWORD(v84) = v36;
        if (v108)
        {
          goto LABEL_26;
        }

        v109 = OUTLINED_FUNCTION_7_23();
        v112 = testFldeq(v109, v110, 2, v111);
        LODWORD(v84) = v36;
        if (v112)
        {
          goto LABEL_26;
        }

        v115 = advance_tok(a1, v36, v113, v114);
        LODWORD(v84) = v36;
        if (v115)
        {
          goto LABEL_26;
        }

        v44 = 70.0;
        break;
      case 6:
        v149 = 7;
        goto LABEL_58;
      case 7:
        goto LABEL_53;
      case 9:
        v39 = v36;
        goto LABEL_13;
      case 10:
        bspop_boa(a1);
        v116 = OUTLINED_FUNCTION_8_23();
        v119 = testFldeq(v116, v117, v118, 4);
        LODWORD(v84) = v36;
        if (v119)
        {
          goto LABEL_26;
        }

        v122 = advance_tok(a1, v36, v120, v121);
        LODWORD(v84) = v36;
        if (v122)
        {
          goto LABEL_26;
        }

        v123 = OUTLINED_FUNCTION_34_8();
        starttest(v123, v124);
        v125 = OUTLINED_FUNCTION_4_23();
        if (lpta_loadp_setscan_r(v125, v126, v127))
        {
          goto LABEL_50;
        }

        v128 = OUTLINED_FUNCTION_16_19();
        v130 = npush_fld(v128, v129, 8u);
        LODWORD(v84) = v36;
        if (!v130)
        {
          OUTLINED_FUNCTION_33_9();
          v138 = if_testneq(a1, v131, v132, v133, v134, v135, v136, v137);
          LODWORD(v84) = v36;
          if (!v138)
          {
            v141 = advance_tok(a1, v36, v139, v140);
            LODWORD(v84) = v36;
            if (!v141)
            {
              goto LABEL_49;
            }
          }
        }

        goto LABEL_26;
      case 11:
        v149 = 12;
LABEL_58:
        v88 = v149;
        LODWORD(v39) = v36;
        goto LABEL_23;
      case 12:
      case 15:
        goto LABEL_50;
      case 14:
        goto LABEL_51;
      case 16:
        goto LABEL_18;
      case 17:
        v142 = OUTLINED_FUNCTION_11_22();
        v145 = testFldeq(v142, v143, v144, 18);
        v86 = v36;
        v84 = v36;
        if (!v145)
        {
          goto LABEL_46;
        }

        goto LABEL_26;
      case 18:
        goto LABEL_46;
      default:
        goto LABEL_5;
    }

    break;
  }

LABEL_53:
  *(a1 + 3400) = v44;
LABEL_54:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_N_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v39);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, SHIDWORD(v87), v89, SWORD2(v89), SHIWORD(v89), v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v93, v94))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_0_27();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_4_23();
  v32 = 90.0;
  if (lpta_loadp_setscan_r(v29, v30, v31))
  {
LABEL_5:
    *(a1 + 3400) = v32;
  }

  else
  {
    do
    {
      v33 = OUTLINED_FUNCTION_28_11();
      if (!test_synch(v33, v34, 1, &unk_2806BBEBF))
      {
        v32 = 25.0;
        goto LABEL_5;
      }

      v35 = *(a1 + 104);
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_24_15(v35);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_25_14();
        v36 = vback(v37, v38);
      }
    }

    while (v36 == 2);
    if (v36 == 1)
    {
      goto LABEL_5;
    }

    if (v36 != 3)
    {
      goto LABEL_3;
    }
  }

  vretproc(a1);
  return 0;
}

uint64_t cons_syll_phone_adjust(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v126 = *MEMORY[0x277D85DE8];
  v121[0] = 0;
  v121[1] = 0;
  v119 = 0;
  v120 = 0;
  v118 = 0;
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v117[0]);
  OUTLINED_FUNCTION_23_15();
  bzero(v125, v9);
  if (setjmp(v125) || ventproc(a1, v117, v124, v123, v122, v125))
  {
LABEL_3:
    v10 = 94;
    goto LABEL_4;
  }

  push_ptr_init(a1, v121);
  v120 = 0;
  LOWORD(v119) = -5;
  v118 = 65532;
  v13 = OUTLINED_FUNCTION_0_27();
  starttest(v13, v14);
  v15 = OUTLINED_FUNCTION_3_24();
  LODWORD(v18) = 0;
  v19 = 0;
  if (!lpta_loadp_setscan_l(v15, v16, v17))
  {
LABEL_6:
    savescptr(a1, 2, v121);
    OUTLINED_FUNCTION_14_20();
    bspush_ca_scan_boa();
LABEL_7:
    v20 = OUTLINED_FUNCTION_18_17();
    if (!test_synch(v20, v21, 1, v22))
    {
      LODWORD(v18) = 1;
    }

    goto LABEL_9;
  }

  while (2)
  {
    v56 = OUTLINED_FUNCTION_17_18();
    if (lpta_loadp_setscan_r(v56, v57, v58) || (v62 = advance_tok(a1, v59, v60, v61)) || (v10 = OUTLINED_FUNCTION_21_15(v62, v63, v64), v10))
    {
LABEL_36:
      v65 = OUTLINED_FUNCTION_17_18();
      if (lpta_loadp_setscan_r(v65, v66, v67) || advance_tok(a1, v68, v69, v70) || (v74 = advance_tok(a1, v71, v72, v73)))
      {
        LODWORD(v18) = v19;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_21_15(v74, v75, v76);
        LODWORD(v18) = v19;
        if (!v10)
        {
          break;
        }
      }

LABEL_40:
      v77 = OUTLINED_FUNCTION_17_18();
      if (lpta_loadp_setscan_r(v77, v78, v79) || advance_tok(a1, v80, v81, v82) || advance_tok(a1, v83, v84, v85) || (v89 = advance_tok(a1, v86, v87, v88)) || OUTLINED_FUNCTION_21_15(v89, v90, v91))
      {
LABEL_45:
        v92 = OUTLINED_FUNCTION_17_18();
        if (lpta_loadp_setscan_r(v92, v93, v94) || advance_tok(a1, v95, v96, v97) || advance_tok(a1, v98, v99, v100) || advance_tok(a1, v101, v102, v103) || (v107 = advance_tok(a1, v104, v105, v106)) || OUTLINED_FUNCTION_21_15(v107, v108, v109))
        {
LABEL_51:
          v110 = OUTLINED_FUNCTION_18_17();
          starttest(v110, v111);
          goto LABEL_52;
        }
      }

      v115 = OUTLINED_FUNCTION_18_17();
      starttest_e(v115, v116);
LABEL_52:
      OUTLINED_FUNCTION_31_10();
      move_f(v112);
      v113 = OUTLINED_FUNCTION_28_11();
      move_i(v113, v114, 20);
      OUTLINED_FUNCTION_31_10();
      v10 = setdur();
      if (!v10)
      {
        break;
      }

LABEL_9:
      v23 = v18;
LABEL_10:
      v24 = a1[13];
      if (v24)
      {
        v25 = OUTLINED_FUNCTION_24_15(v24);
        v18 = v26;
      }

      else
      {
        v25 = vback(a1, v23);
        v18 = 0;
      }

      v27 = v25 - 1;
      v10 = 0;
      switch(v27)
      {
        case 0:
          v19 = v18;
          continue;
        case 1:
          goto LABEL_6;
        case 2:
          bspop_boa(a1);
          v28 = OUTLINED_FUNCTION_2_25();
          v31 = testFldeq(v28, v29, v30, 1);
          v23 = v18;
          if (v31)
          {
            goto LABEL_10;
          }

          OUTLINED_FUNCTION_31_10();
          goto LABEL_20;
        case 3:
          goto LABEL_7;
        case 4:
          bspop_boa(a1);
          v47 = advance_tok(a1, v44, v45, v46);
          v23 = v18;
          if (v47)
          {
            goto LABEL_10;
          }

          v48 = lpta_loadp_setscan_r(a1, v121, 4);
          v23 = v18;
          if (v48)
          {
            goto LABEL_10;
          }

          v49 = OUTLINED_FUNCTION_2_25();
          v52 = testFldeq(v49, v50, v51, 1);
          v23 = v18;
          if (v52)
          {
            goto LABEL_10;
          }

          v55 = advance_tok(a1, v18, v53, v54);
          v23 = v18;
          if (v55)
          {
            goto LABEL_10;
          }

          bspush_ca_scan_boa();
          goto LABEL_26;
        case 5:
          bspop_boa(a1);
          v36 = OUTLINED_FUNCTION_2_25();
          v39 = testFldeq(v36, v37, v38, 1);
          v23 = v18;
          if (v39)
          {
            goto LABEL_10;
          }

LABEL_20:
          bspush_ca_scan_boa();
          v40 = OUTLINED_FUNCTION_8_23();
          v43 = testFldeq(v40, v41, v42, 6);
          goto LABEL_27;
        case 6:
LABEL_26:
          v43 = test_synch(a1, 7, 1, &unk_2806BBEC8);
LABEL_27:
          if (v43)
          {
            v23 = v18;
          }

          else
          {
            v23 = 1;
          }

          goto LABEL_10;
        case 7:
          bspop_boa(a1);
          v35 = advance_tok(a1, v32, v33, v34);
          v23 = v18;
          if (v35)
          {
            goto LABEL_10;
          }

          starttest_l(a1, 9);
          OUTLINED_FUNCTION_39_5();
          move_f(0.2);
          move_i(a1, &v118, 10);
          OUTLINED_FUNCTION_39_5();
          v10 = setdur();
          v23 = v18;
          if (v10)
          {
            goto LABEL_10;
          }

          goto LABEL_4;
        case 8:
        case 9:
        case 13:
        case 15:
          goto LABEL_4;
        case 10:
          v19 = v18;
          goto LABEL_36;
        case 11:
          goto LABEL_40;
        case 12:
          goto LABEL_45;
        case 14:
          goto LABEL_51;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_4:
  v11 = v10;
  vretproc(a1);
  return v11;
}

uint64_t voiceless_stop_dur(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v187);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, 0, 0, v259, v261, v263, v265);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v257, v258, v260, SHIDWORD(v260), v262, SWORD2(v262), SHIWORD(v262), v264, SWORD2(v264), SBYTE6(v264), SHIBYTE(v264), v266, v267))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_26_14();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_0_27();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_3_24();
  v34 = lpta_loadp_setscan_l(v31, v32, v33);
  v35 = 0;
  v36 = 0;
  if (!v34)
  {
LABEL_9:
    LODWORD(v36) = v35;
    v45 = OUTLINED_FUNCTION_9_23();
    if (test_synch(v45, v46, 1, v47))
    {
      goto LABEL_51;
    }

    v44 = 5.0;
    goto LABEL_11;
  }

  while (2)
  {
    OUTLINED_FUNCTION_27_12();
    v37 = OUTLINED_FUNCTION_20_15();
    v39 = lpta_loadp_setscan_r(v37, v38, v36);
    v40 = v36;
    if (!v39)
    {
LABEL_6:
      v41 = OUTLINED_FUNCTION_12_22();
      if (!test_synch(v41, v42, 1, v43))
      {
        v44 = 15.0;
        goto LABEL_11;
      }

LABEL_51:
      v157 = *(a1 + 13);
      if (v157)
      {
        v158 = OUTLINED_FUNCTION_24_15(v157);
        v36 = v159;
      }

      else
      {
        v158 = vback(a1, v36);
        v36 = 0;
      }

      v44 = 95.0;
      switch(v158)
      {
        case 1:
          continue;
        case 2:
          v35 = v36;
          goto LABEL_9;
        case 3:
          goto LABEL_12;
        case 4:
          v40 = v36;
          goto LABEL_17;
        case 5:
          goto LABEL_6;
        case 6:
          goto LABEL_18;
        case 7:
          bspop_boa(a1);
          if (advance_tok(a1, v160, v161, v162))
          {
            goto LABEL_51;
          }

          v44 = 35.0;
          goto LABEL_11;
        case 8:
          goto LABEL_19;
        case 9:
          bspop_boa(a1);
          if (advance_tok(a1, v163, v164, v165))
          {
            goto LABEL_51;
          }

          v121 = 0x4049000000000000;
          goto LABEL_69;
        case 10:
          v66 = v36;
          goto LABEL_20;
        case 11:
          goto LABEL_30;
        case 12:
          v74 = v36;
          goto LABEL_40;
        case 13:
          goto LABEL_21;
        case 14:
          goto LABEL_41;
        case 15:
          bspop_boa(a1);
          if (!advance_tok(a1, v166, v167, v168))
          {
            goto LABEL_60;
          }

          goto LABEL_51;
        case 16:
          goto LABEL_42;
        case 17:
          goto LABEL_43;
        case 18:
          goto LABEL_11;
        case 19:
          goto LABEL_15;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_17:
  LODWORD(v36) = v40;
  v50 = OUTLINED_FUNCTION_18_17();
  starttest(v50, v51);
  v52 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v52, v53, v54))
  {
    v84 = OUTLINED_FUNCTION_8_23();
    if (testFldeq(v84, v85, v86, 1))
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_18_17();
    bspush_ca_scan_boa();
    v87 = OUTLINED_FUNCTION_8_23();
    v90 = 4;
LABEL_49:
    if (!testFldeq(v87, v88, v89, v90))
    {
      LODWORD(v36) = 1;
    }

    goto LABEL_51;
  }

LABEL_18:
  v55 = OUTLINED_FUNCTION_18_17();
  starttest(v55, v56);
  v57 = OUTLINED_FUNCTION_3_24();
  if (!lpta_loadp_setscan_l(v57, v58, v59))
  {
    v91 = OUTLINED_FUNCTION_8_23();
    if (testFldeq(v91, v92, v93, 4))
    {
      goto LABEL_51;
    }

LABEL_48:
    OUTLINED_FUNCTION_18_17();
    bspush_ca_scan_boa();
    v87 = OUTLINED_FUNCTION_6_23();
    goto LABEL_49;
  }

LABEL_19:
  v60 = OUTLINED_FUNCTION_18_17();
  starttest(v60, v61);
  v62 = OUTLINED_FUNCTION_3_24();
  v65 = lpta_loadp_setscan_l(v62, v63, v64);
  v66 = v36;
  if (!v65)
  {
LABEL_30:
    OUTLINED_FUNCTION_30_10(11, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256);
    v94 = OUTLINED_FUNCTION_16_19();
    if (npush_fld(v94, v95, 8u))
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_33_9();
    if (if_testneq(a1, v96, v97, v98, v99, v100, v101, v102))
    {
      goto LABEL_51;
    }

    if (advance_tok(a1, v103, v104, v105))
    {
      goto LABEL_51;
    }

    v106 = OUTLINED_FUNCTION_17_18();
    if (lpta_loadp_setscan_r(v106, v107, v108))
    {
      goto LABEL_51;
    }

    v109 = OUTLINED_FUNCTION_16_19();
    if (npush_fld(v109, v110, 8u))
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_33_9();
    if (if_testneq(a1, v111, v112, v113, v114, v115, v116, v117) || advance_tok(a1, v118, v119, v120))
    {
      goto LABEL_51;
    }

    v121 = 0x404E000000000000;
    goto LABEL_69;
  }

LABEL_20:
  v67 = v66;
  v68 = OUTLINED_FUNCTION_18_17();
  starttest(v68, v69);
  v70 = OUTLINED_FUNCTION_3_24();
  v73 = lpta_loadp_setscan_l(v70, v71, v72);
  LODWORD(v36) = v67;
  v74 = v67;
  if (v73)
  {
LABEL_40:
    LODWORD(v36) = v74;
    v122 = OUTLINED_FUNCTION_18_17();
    starttest(v122, v123);
    v124 = OUTLINED_FUNCTION_3_24();
    if (lpta_loadp_setscan_l(v124, v125, v126))
    {
LABEL_41:
      v127 = OUTLINED_FUNCTION_18_17();
      starttest(v127, v128);
      v129 = OUTLINED_FUNCTION_4_23();
      if (lpta_loadp_setscan_r(v129, v130, v131))
      {
LABEL_42:
        v132 = OUTLINED_FUNCTION_18_17();
        starttest(v132, v133);
        v134 = OUTLINED_FUNCTION_4_23();
        if (!lpta_loadp_setscan_r(v134, v135, v136))
        {
          v172 = OUTLINED_FUNCTION_2_25();
          if (testFldeq(v172, v173, v174, 2))
          {
            goto LABEL_51;
          }

          v175 = OUTLINED_FUNCTION_16_19();
          if (npush_fld(v175, v176, 8u))
          {
            goto LABEL_51;
          }

          OUTLINED_FUNCTION_33_9();
          if (if_testeq(a1, v177, v178, v179, v180, v181, v182, v183) || advance_tok(a1, v184, v185, v186))
          {
            goto LABEL_51;
          }

          v121 = 0x4059000000000000;
          goto LABEL_69;
        }

LABEL_43:
        v137 = OUTLINED_FUNCTION_18_17();
        starttest(v137, v138);
        v139 = OUTLINED_FUNCTION_4_23();
        if (lpta_loadp_setscan_r(v139, v140, v141))
        {
          v44 = 95.0;
          goto LABEL_11;
        }

        v142 = OUTLINED_FUNCTION_16_19();
        if (npush_fld(v142, v143, 8u))
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_33_9();
        if (if_testneq(a1, v144, v145, v146, v147, v148, v149, v150))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v169 = OUTLINED_FUNCTION_2_25();
        if (testFldeq(v169, v170, v171, 1))
        {
          goto LABEL_51;
        }
      }

      if (advance_tok(a1, v151, v152, v153))
      {
        goto LABEL_51;
      }

LABEL_60:
      v121 = 0x4054000000000000;
LABEL_69:
      v44 = *&v121;
      goto LABEL_11;
    }

    v154 = OUTLINED_FUNCTION_2_25();
    if (testFldeq(v154, v155, v156, 1))
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

LABEL_21:
  OUTLINED_FUNCTION_30_10(13, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256);
  v75 = OUTLINED_FUNCTION_8_23();
  if (testFldeq(v75, v76, v77, 2))
  {
    goto LABEL_51;
  }

  if (advance_tok(a1, v78, v79, v80))
  {
    goto LABEL_51;
  }

  v81 = OUTLINED_FUNCTION_17_18();
  if (lpta_loadp_setscan_r(v81, v82, v83))
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_2_25();
  if (test_string_s())
  {
    goto LABEL_51;
  }

  v44 = 70.0;
LABEL_11:
  a1[425] = v44;
LABEL_12:
  v48 = OUTLINED_FUNCTION_20_15();
  lpta_loadpn(v48, v49);
  lpta_ctxtr();
  rpta_loadpn(a1, (a1 + 183));
  if (!compare_ptas(a1) && !testeq(a1))
  {
    a1[425] = a1[425] * 12.0 / 10.0;
  }

LABEL_15:
  vretproc(a1);
  return 0;
}

uint64_t voiced_stop_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v76);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, SHIDWORD(v124), v126, SWORD2(v126), SHIWORD(v126), v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v131))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v20 = OUTLINED_FUNCTION_0_27();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_4_23();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    while (2)
    {
      v25 = OUTLINED_FUNCTION_9_23();
      if (!test_synch(v25, v26, 1, v27))
      {
LABEL_6:
        v28 = 10.0;
        goto LABEL_28;
      }

LABEL_10:
      v37 = *(a1 + 104);
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_24_15(v37);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_25_14();
        v38 = vback(v39, v40);
      }

      if ((v38 - 1) <= 7)
      {
        v28 = OUTLINED_FUNCTION_35_7();
        switch(v41)
        {
          case 1:
            continue;
          case 2:
          case 7:
            goto LABEL_29;
          case 3:
            goto LABEL_15;
          case 4:
            goto LABEL_16;
          case 5:
          case 6:
            goto LABEL_28;
          default:
            goto LABEL_7;
        }
      }

      goto LABEL_3;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_27_12();
  v29 = OUTLINED_FUNCTION_19_16();
  if (!lpta_loadp_setscan_l(v29, v30, v1))
  {
    v31 = OUTLINED_FUNCTION_8_23();
    if (!testFldeq(v31, v32, v33, 4) && !advance_tok(a1, v34, v35, v36))
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

LABEL_15:
  v42 = OUTLINED_FUNCTION_12_22();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_3_24();
  if (lpta_loadp_setscan_l(v44, v45, v46))
  {
LABEL_16:
    v47 = OUTLINED_FUNCTION_4_23();
    if (lpta_loadp_setscan_r(v47, v48, v49) || (OUTLINED_FUNCTION_2_25(), test_string_s()) || (v50 = OUTLINED_FUNCTION_18_17(), starttest(v50, v51), v52 = OUTLINED_FUNCTION_3_24(), lpta_loadp_setscan_r(v52, v53, v54)))
    {
      v28 = 40.0;
    }

    else
    {
      v55 = OUTLINED_FUNCTION_16_19();
      if (npush_fld(v55, v56, 8u))
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_33_9();
      if (if_testneq(a1, v57, v58, v59, v60, v61, v62, v63) || advance_tok(a1, v64, v65, v66))
      {
        goto LABEL_10;
      }

      v28 = 30.0;
    }
  }

  else
  {
    v67 = OUTLINED_FUNCTION_7_23();
    if (testFldeq(v67, v68, 2, v69))
    {
      goto LABEL_10;
    }

    v70 = OUTLINED_FUNCTION_8_23();
    if (testFldeq(v70, v71, v72, 1) || advance_tok(a1, v73, v74, v75))
    {
      goto LABEL_10;
    }

    v28 = 20.0;
  }

LABEL_28:
  *(a1 + 3400) = v28;
LABEL_29:
  vretproc(a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_10_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_15_20(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_21_15(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = 1;
  *(v3 + 112) = *(v3 + 792);
  *(v3 + 128) = 0;

  return test_ptr(v3, a2, a3);
}

void OUTLINED_FUNCTION_22_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_27_12()
{

  starttest(v0, 4);
}

double OUTLINED_FUNCTION_30_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  *&result = savescptr(v24, a1, va).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_32_9(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 1, 1);
}

uint64_t OUTLINED_FUNCTION_33_9()
{

  return npush_i(v0);
}

void OUTLINED_FUNCTION_38_6(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  bzero(va, a2);
}

double OUTLINED_FUNCTION_40_4()
{
  result = *(v0 + 3400) + 20.0;
  *(v0 + 3400) = result;
  return result;
}

uint64_t por_con_vals(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v127);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, SHIDWORD(v175), v177, SWORD2(v177), SHIWORD(v177), v179, SWORD2(v179), SBYTE6(v179), SHIBYTE(v179), v181, v182))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_24(a1);
    v20 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_r(v20, v21, v22) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
    {
LABEL_6:
      v30 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_r(v30, v31, v32) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
      {
LABEL_8:
        v40 = OUTLINED_FUNCTION_15_21();
        if (lpta_loadp_setscan_r(v40, v41, v42) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
        {
LABEL_10:
          v43 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_r(v43, v44, v45) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
          {
LABEL_12:
            v46 = OUTLINED_FUNCTION_15_21();
            if (lpta_loadp_setscan_r(v46, v47, v48) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
            {
LABEL_14:
              v49 = OUTLINED_FUNCTION_15_21();
              if (lpta_loadp_setscan_r(v49, v50, v51) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
              {
LABEL_16:
                v52 = OUTLINED_FUNCTION_15_21();
                if (lpta_loadp_setscan_r(v52, v53, v54) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                {
LABEL_18:
                  v55 = OUTLINED_FUNCTION_15_21();
                  if (lpta_loadp_setscan_r(v55, v56, v57) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                  {
LABEL_20:
                    v65 = OUTLINED_FUNCTION_15_21();
                    if (lpta_loadp_setscan_r(v65, v66, v67) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                    {
LABEL_22:
                      v75 = OUTLINED_FUNCTION_15_21();
                      if (lpta_loadp_setscan_r(v75, v76, v77) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                      {
LABEL_24:
                        v78 = OUTLINED_FUNCTION_15_21();
                        if (lpta_loadp_setscan_r(v78, v79, v80) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                        {
LABEL_26:
                          v81 = OUTLINED_FUNCTION_15_21();
                          if (lpta_loadp_setscan_r(v81, v82, v83) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                          {
LABEL_28:
                            v84 = OUTLINED_FUNCTION_15_21();
                            if (lpta_loadp_setscan_r(v84, v85, v86) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                            {
LABEL_30:
                              v87 = OUTLINED_FUNCTION_15_21();
                              if (lpta_loadp_setscan_r(v87, v88, v89) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                              {
LABEL_32:
                                v90 = OUTLINED_FUNCTION_15_21();
                                if (lpta_loadp_setscan_r(v90, v91, v92) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                {
LABEL_34:
                                  v93 = OUTLINED_FUNCTION_15_21();
                                  if (lpta_loadp_setscan_r(v93, v94, v95) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                  {
LABEL_36:
                                    v96 = OUTLINED_FUNCTION_15_21();
                                    if (lpta_loadp_setscan_r(v96, v97, v98) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                    {
LABEL_38:
                                      v99 = OUTLINED_FUNCTION_15_21();
                                      if (lpta_loadp_setscan_r(v99, v100, v101) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                      {
LABEL_40:
                                        v102 = OUTLINED_FUNCTION_15_21();
                                        if (lpta_loadp_setscan_r(v102, v103, v104) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                        {
LABEL_42:
                                          v105 = OUTLINED_FUNCTION_15_21();
                                          if (lpta_loadp_setscan_r(v105, v106, v107) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
                                          {
LABEL_44:
                                            v108 = OUTLINED_FUNCTION_15_21();
                                            if (!lpta_loadp_setscan_r(v108, v109, v110))
                                            {
                                              OUTLINED_FUNCTION_17_19();
                                              if (!test_string_s())
                                              {
                                                por_ph_N(a1, v111, v112, v113, v114, v115, v116, v117);
                                              }
                                            }
                                          }

                                          else
                                          {
                                            por_ph_m(a1);
                                          }
                                        }

                                        else
                                        {
                                          por_ph_n(a1);
                                        }
                                      }

                                      else
                                      {
                                        por_ph_Z(a1);
                                      }
                                    }

                                    else
                                    {
                                      por_ph_S(a1);
                                    }
                                  }

                                  else
                                  {
                                    por_ph_z(a1);
                                  }
                                }

                                else
                                {
                                  por_ph_s(a1);
                                }
                              }

                              else
                              {
                                por_ph_v(a1);
                              }
                            }

                            else
                            {
                              por_ph_f(a1);
                            }
                          }

                          else
                          {
                            por_ph_R(a1);
                          }
                        }

                        else
                        {
                          por_ph_r(a1);
                        }
                      }

                      else
                      {
                        por_ph_l(a1);
                      }
                    }

                    else
                    {
                      por_ph_pal_l(a1, v68, v69, v70, v71, v72, v73, v74);
                    }
                  }

                  else
                  {
                    por_ph_y(a1, v58, v59, v60, v61, v62, v63, v64);
                  }
                }

                else
                {
                  por_ph_w(a1);
                }
              }

              else
              {
                por_ph_g(a1);
              }
            }

            else
            {
              por_ph_d(a1);
            }
          }

          else
          {
            por_ph_b(a1);
          }
        }

        else
        {
          por_ph_k(a1);
        }
      }

      else
      {
        por_ph_t(a1, v33, v34, v35, v36, v37, v38, v39);
      }
    }

    else
    {
      por_ph_p(a1, v23, v24, v25, v26, v27, v28, v29);
    }

    while (2)
    {
      v118 = OUTLINED_FUNCTION_65_3();
      starttest(v118, v119);
      OUTLINED_FUNCTION_118_0();
      if (v120 == v121)
      {
        v122 = OUTLINED_FUNCTION_107_0();
        bspush_ca(v122);
        if (*(a1 + 4402) <= 0)
        {
LABEL_69:
          v123 = *(a1 + 104);
          if (v123)
          {
            v124 = OUTLINED_FUNCTION_74_3(v123);
          }

          else
          {
            v125 = OUTLINED_FUNCTION_84_2();
            v124 = vback(v125, v126);
          }

          switch(v124)
          {
            case 1:
              goto LABEL_6;
            case 2:
            case 3:
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
            case 27:
            case 29:
            case 31:
            case 33:
            case 35:
            case 37:
            case 39:
            case 41:
            case 42:
              continue;
            case 4:
              goto LABEL_8;
            case 6:
              goto LABEL_10;
            case 8:
              goto LABEL_12;
            case 10:
              goto LABEL_14;
            case 12:
              goto LABEL_16;
            case 14:
              goto LABEL_18;
            case 16:
              goto LABEL_20;
            case 18:
              goto LABEL_22;
            case 20:
              goto LABEL_24;
            case 22:
              goto LABEL_26;
            case 24:
              goto LABEL_28;
            case 26:
              goto LABEL_30;
            case 28:
              goto LABEL_32;
            case 30:
              goto LABEL_34;
            case 32:
              goto LABEL_36;
            case 34:
              goto LABEL_38;
            case 36:
              goto LABEL_40;
            case 38:
              goto LABEL_42;
            case 40:
              goto LABEL_44;
            case 43:
              goto LABEL_75;
            case 44:
              if (*(a1 + 4466) >= 1)
              {
                break;
              }

              goto LABEL_69;
            case 45:
              break;
            case 46:
              goto LABEL_76;
            default:
              goto LABEL_3;
          }
        }

        adjust_AH_AF_for_TLv_w(a1);
      }

      break;
    }

LABEL_75:
    insert_acoustic_vals(a1);
LABEL_76:
    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_p(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130[0], v130[1]);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v10, v11, v12, v13, v14, v15, v16, v17, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v130[0], v130[1], v130[2], v130[3], v130[4], v130[5]);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_30_11(v18, v19, v20, v21, v22, v23, v24, v25, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v130[0], v130[1], v130[2], SHIDWORD(v130[2]), v130[3], SWORD2(v130[3]), SHIWORD(v130[3]), v130[4], SWORD2(v130[4]), SBYTE6(v130[4]), SHIBYTE(v130[4]), v130[5], v130[6]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_76_3();
    push_ptr_init(v27, v28);
    fence_24(a1);
    *(a1 + 4578) = 225;
    *(a1 + 4582) = 275;
    v29 = OUTLINED_FUNCTION_22_16();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v31, v32, v33))
    {
      v34 = 57;
    }

    else
    {
      while (2)
      {
        savescptr(a1, 2, v130);
        v38 = OUTLINED_FUNCTION_17_19();
        if (testFldeq(v38, v39, v40, 2) || advance_tok(a1, v41, v42, v43) || (v44 = OUTLINED_FUNCTION_107_0(), lpta_loadp_setscan_r(v44, v45, 4)) || advance_tok(a1, v46, v47, v48) || (v49 = OUTLINED_FUNCTION_17_19(), testFldeq(v49, v50, v51, 2)) || advance_tok(a1, v52, v53, v54))
        {
          v55 = *(a1 + 104);
          if (v55)
          {
            v56 = OUTLINED_FUNCTION_74_3(v55);
          }

          else
          {
            v57 = OUTLINED_FUNCTION_84_2();
            v56 = vback(v57, v58);
          }

          v34 = 57;
          switch(v56)
          {
            case 1:
              goto LABEL_6;
            case 2:
              continue;
            case 3:
              goto LABEL_7;
            case 4:
              goto LABEL_8;
            case 5:
              goto LABEL_21;
            case 6:
              goto LABEL_24;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

      v34 = 62;
    }

LABEL_6:
    *(a1 + 4506) = v34;
LABEL_7:
    *(a1 + 4554) = 60;
    por_labial_Fv(a1);
LABEL_8:
    v35 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v35, v36, v37))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        *(a1 + 4466) = 45;
      }
    }

LABEL_21:
    OUTLINED_FUNCTION_81_3();
    if (v59 != v60)
    {
      *(a1 + 4554) -= 10;
      OUTLINED_FUNCTION_80_3();
    }

LABEL_24:
    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_t(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v176);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v10, v11, v12, v13, v14, v15, v16, v17, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v177, v179, v181, v183, v185);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_30_11(v18, v19, v20, v21, v22, v23, v24, v25, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v178, v180, SHIDWORD(v180), v182, SWORD2(v182), SHIWORD(v182), v184, SWORD2(v184), SBYTE6(v184), SHIBYTE(v184), v186, v187))
  {
LABEL_3:
    v26 = 94;
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_76_3();
  push_ptr_init(v28, v29);
  OUTLINED_FUNCTION_24_16();
  *(a1 + 4582) = v30;
  v31 = OUTLINED_FUNCTION_22_16();
  starttest(v31, v32);
  v33 = OUTLINED_FUNCTION_15_21();
  v36 = lpta_loadp_setscan_l(v33, v34, v35);
  if (v36)
  {
    v44 = 54;
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_109_0(v36, v37, v38, v39, v40, v41, v42, v43, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172);
    v45 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v45, v46, v47, 2))
    {
      goto LABEL_21;
    }

    if (advance_tok(a1, v48, v49, v50))
    {
      goto LABEL_21;
    }

    v51 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v51, v52, v53))
    {
      goto LABEL_21;
    }

    if (advance_tok(a1, v54, v55, v56))
    {
      goto LABEL_21;
    }

    v57 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v57, v58, v59, 2) || advance_tok(a1, v60, v61, v62))
    {
      goto LABEL_21;
    }

    v44 = 57;
  }

  while (2)
  {
    *(a1 + 4506) = v44;
LABEL_15:
    OUTLINED_FUNCTION_81_3();
    if (v63 != v64)
    {
      OUTLINED_FUNCTION_80_3();
    }

LABEL_18:
    v65 = OUTLINED_FUNCTION_29_12();
    starttest(v65, v66);
    v67 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_r(v67, v68, v69))
    {
LABEL_25:
      por_dental_Fv(a1, v37, v38, v39, v40, v41, v42, v43);
LABEL_26:
      v78 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v78, v79, v80) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
      {
        v26 = 0;
      }

      else
      {
        v26 = 0;
        *(a1 + 4466) = 45;
      }

      break;
    }

    v70 = OUTLINED_FUNCTION_59_3();
    if (!testFldeq(v70, v71, 10, 1) && !advance_tok(a1, v72, v73, v74))
    {
      por_pal_Fv(a1);
      goto LABEL_26;
    }

LABEL_21:
    v75 = *(a1 + 104);
    if (v75)
    {
      v36 = OUTLINED_FUNCTION_74_3(v75);
    }

    else
    {
      v76 = OUTLINED_FUNCTION_84_2();
      v36 = vback(v76, v77);
    }

    v26 = 0;
    v44 = 54;
    switch(v36)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_7;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_18;
      case 5:
        goto LABEL_25;
      case 6:
      case 7:
        goto LABEL_26;
      case 8:
        goto LABEL_4;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  return v26;
}

uint64_t por_ph_k(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v76);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, SHIDWORD(v124), v126, SWORD2(v126), SHIWORD(v126), v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v131))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  OUTLINED_FUNCTION_24_16();
  *(a1 + 4582) = v20;
  *(a1 + 4506) = 60;
  v21 = OUTLINED_FUNCTION_22_16();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v23, v24, v25))
  {
    v43 = OUTLINED_FUNCTION_28_12();
    bspush_ca_scan(v43, v44);
LABEL_11:
    OUTLINED_FUNCTION_59_3();
LABEL_12:
    if (!test_string_s())
    {
LABEL_13:
      *(a1 + 4542) = 65;
      *(a1 + 4546) = 15;
      v42 = 20;
      v45 = 4550;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (2)
  {
    v26 = OUTLINED_FUNCTION_41_4();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v28, v29, v30))
    {
LABEL_14:
      v46 = OUTLINED_FUNCTION_39_6();
      starttest(v46, v47);
      v48 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v48, v49, v50))
      {
LABEL_22:
        v42 = 68;
        goto LABEL_23;
      }

      v51 = OUTLINED_FUNCTION_0_28();
      if (!testFldeq(v51, v52, v53, v54) && !advance_tok(a1, v55, v56, v57))
      {
        v42 = 73;
        goto LABEL_23;
      }

LABEL_17:
      v58 = *(a1 + 104);
      if (v58)
      {
        v59 = OUTLINED_FUNCTION_74_3(v58);
      }

      else
      {
        v67 = OUTLINED_FUNCTION_84_2();
        v59 = vback(v67, v68);
      }

      switch(v59)
      {
        case 1:
          continue;
        case 2:
          v69 = OUTLINED_FUNCTION_26_15();
          bspush_ca_scan(v69, v70);
          OUTLINED_FUNCTION_93_1();
          goto LABEL_12;
        case 3:
          goto LABEL_13;
        case 4:
          goto LABEL_11;
        case 5:
          goto LABEL_25;
        case 6:
          goto LABEL_14;
        case 7:
          goto LABEL_22;
        case 8:
          goto LABEL_28;
        case 9:
          goto LABEL_31;
        case 10:
          goto LABEL_32;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  v31 = OUTLINED_FUNCTION_0_28();
  if (testFldeq(v31, v32, v33, v34))
  {
    goto LABEL_17;
  }

  v35 = OUTLINED_FUNCTION_1_26();
  if (testFldeq(v35, v36, v37, v38) || advance_tok(a1, v39, v40, v41))
  {
    goto LABEL_17;
  }

  v42 = 75;
LABEL_23:
  v45 = 4538;
LABEL_24:
  *(a1 + v45) = v42;
LABEL_25:
  OUTLINED_FUNCTION_81_3();
  if (v71 != v72)
  {
    OUTLINED_FUNCTION_80_3();
  }

LABEL_28:
  v73 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v73, v74, v75))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      *(a1 + 4466) = 45;
    }
  }

LABEL_31:
  por_velar_Fv(a1, v60, v61, v62, v63, v64, v65, v66);
LABEL_32:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_b(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v55);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, SHIDWORD(v103), v105, SWORD2(v105), SHIWORD(v105), v107, SWORD2(v107), SBYTE6(v107), SHIBYTE(v107), v109, v110))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_24(a1);
  OUTLINED_FUNCTION_87_2(200);
  *(a1 + 4554) = 60;
  *(a1 + 4394) = 35;
  v20 = OUTLINED_FUNCTION_22_16();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_15_21();
  v25 = lpta_loadp_setscan_l(v22, v23, v24);
  v26 = 35;
  if (!v25)
  {
    v27 = OUTLINED_FUNCTION_59_3();
    if (testFldeq(v27, v28, 7, 1) || advance_tok(a1, v29, v30, v31))
    {
      goto LABEL_14;
    }

    v26 = 70;
  }

  while (2)
  {
    *(a1 + 4406) = v26;
LABEL_10:
    v32 = OUTLINED_FUNCTION_37_8();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v34, v35, v36))
    {
      v37 = OUTLINED_FUNCTION_26_15();
      bspush_ca_scan(v37, v38);
      v39 = OUTLINED_FUNCTION_93_1();
      if (testFldeq(v39, v40, 6, 3))
      {
        goto LABEL_14;
      }

      v41 = OUTLINED_FUNCTION_1_26();
LABEL_13:
      if (testFldeq(v41, v42, v43, v44))
      {
        goto LABEL_14;
      }

LABEL_19:
      if (!advance_tok(a1, v45, v46, v47))
      {
        v52 = 45;
        goto LABEL_22;
      }

LABEL_14:
      v48 = *(a1 + 104);
      if (v48)
      {
        v49 = OUTLINED_FUNCTION_74_3(v48);
      }

      else
      {
        v50 = OUTLINED_FUNCTION_84_2();
        v49 = vback(v50, v51);
      }

      switch(v49)
      {
        case 1:
          v26 = 35;
          continue;
        case 2:
          goto LABEL_10;
        case 3:
          goto LABEL_21;
        case 4:
          v41 = OUTLINED_FUNCTION_2_26();
          goto LABEL_13;
        case 5:
          goto LABEL_19;
        case 6:
          goto LABEL_23;
        case 7:
          goto LABEL_26;
        case 8:
          goto LABEL_27;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_21:
  v52 = 40;
LABEL_22:
  *(a1 + 4506) = v52;
LABEL_23:
  OUTLINED_FUNCTION_81_3();
  if (v53 != v54)
  {
    *(a1 + 4554) -= 10;
    OUTLINED_FUNCTION_80_3();
  }

LABEL_26:
  por_labial_Fv(a1);
LABEL_27:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_d(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v89);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, SHIDWORD(v137), v139, SWORD2(v139), SHIWORD(v139), v141, SWORD2(v141), SBYTE6(v141), SHIBYTE(v141), v143, v144))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_24(a1);
    OUTLINED_FUNCTION_87_2(200);
    *(a1 + 4506) = 35;
    *(a1 + 4394) = 35;
    *(a1 + 4406) = 35;
    v20 = OUTLINED_FUNCTION_22_16();
    starttest(v20, v21);
    v22 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v22, v23, v24))
    {
      v25 = 0;
LABEL_12:
      v41 = OUTLINED_FUNCTION_26_15();
      starttest(v41, v42);
      v43 = OUTLINED_FUNCTION_64_3();
      if (lpta_loadp_setscan_r(v43, v44, v1))
      {
        goto LABEL_32;
      }

      v45 = OUTLINED_FUNCTION_29_12();
      bspush_ca_scan(v45, v46);
      v47 = OUTLINED_FUNCTION_17_19();
      if (testFldeq(v47, v48, v49, 1))
      {
        v1 = v25;
      }

      else
      {
        OUTLINED_FUNCTION_41_4();
        bspush_ca_scan_boa();
        v50 = OUTLINED_FUNCTION_5_24();
        if (testFldeq(v50, v51, v52, v53))
        {
          v1 = v25;
        }

        else
        {
          v1 = 1;
        }
      }
    }

    else
    {
      v26 = OUTLINED_FUNCTION_28_12();
      bspush_ca_scan(v26, v27);
      v28 = OUTLINED_FUNCTION_0_28();
      if (testFldeq(v28, v29, v30, v31))
      {
        v1 = 0;
      }

      else
      {
        v32 = OUTLINED_FUNCTION_1_26();
        v36 = testFldeq(v32, v33, v34, v35);
        v1 = 0;
        v39 = 0;
        if (!v36)
        {
LABEL_9:
          if (!OUTLINED_FUNCTION_108_0(v36, v37, v39, v38))
          {
            v40 = 45;
            goto LABEL_31;
          }
        }
      }
    }

    while (1)
    {
      LODWORD(v37) = v1;
      do
      {
        while (2)
        {
          v54 = *(a1 + 104);
          if (v54)
          {
            v36 = OUTLINED_FUNCTION_49_3(v54);
          }

          else
          {
            v36 = vback(a1, v37);
            v1 = 0;
          }

          v39 = v1;
          switch(v36)
          {
            case 1:
              v25 = v1;
              goto LABEL_12;
            case 2:
              v59 = OUTLINED_FUNCTION_2_26();
              testFldeq(v59, v60, v61, v62);
              OUTLINED_FUNCTION_90_2();
              if (!v36)
              {
                goto LABEL_9;
              }

              continue;
            case 3:
              goto LABEL_9;
            case 4:
              goto LABEL_32;
            case 5:
              v64 = OUTLINED_FUNCTION_59_3();
              v66 = npush_fld(v64, v65, 8u);
              LODWORD(v37) = v1;
              if (v66)
              {
                continue;
              }

              v67 = OUTLINED_FUNCTION_84_2();
              npush_i(v67);
              v75 = if_testeq(a1, v68, v69, v70, v71, v72, v73, v74);
              v37 = v1;
              if (v75)
              {
                continue;
              }

              break;
            case 6:
              bspop_boa(a1);
              break;
            case 7:
              goto LABEL_26;
            case 8:
              goto LABEL_36;
            case 9:
              goto LABEL_40;
            case 10:
            case 11:
              goto LABEL_41;
            default:
              goto LABEL_3;
          }

          break;
        }

LABEL_26:
        v63 = advance_tok(a1, v37, v39, v38);
        LODWORD(v37) = v1;
      }

      while (v63);
      v40 = 30;
LABEL_31:
      *(a1 + 4506) = v40;
LABEL_32:
      OUTLINED_FUNCTION_81_3();
      if (v77 != v78)
      {
        OUTLINED_FUNCTION_80_3();
      }

      v1 = v76;
LABEL_36:
      v79 = OUTLINED_FUNCTION_32_10();
      starttest(v79, v80);
      v81 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v81, v82, v83))
      {
        break;
      }

      v84 = OUTLINED_FUNCTION_59_3();
      if (!testFldeq(v84, v85, 10, 2) && !advance_tok(a1, v86, v87, v88))
      {
        por_pal_Fv(a1);
        goto LABEL_41;
      }
    }

LABEL_40:
    por_dental_Fv(a1, v37, v39, v38, v55, v56, v57, v58);
LABEL_41:
    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_g(uint64_t a1)
{
  v160 = *MEMORY[0x277D85DE8];
  v147 = 0;
  v148 = 0;
  v146 = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(v145, v2);
  OUTLINED_FUNCTION_69_3();
  bzero(v159, v3);
  v4 = setjmp(v159);
  if (v4 || OUTLINED_FUNCTION_104_0(v4, v5, v6, v7, v8, v9, v10, v11, v143, *v145, *&v145[8], *&v145[16], *&v145[24], *&v145[32], *&v145[40], *&v145[48], *&v145[56], *&v145[64], *&v145[72], *&v145[80], *&v145[88], *&v145[96], *&v145[104], *&v145[112], *&v145[120], *&v145[128], *&v145[136], *&v145[144], *&v145[152], *&v145[160], *&v145[168], *&v145[176], v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    push_ptr_init(a1, &v147);
    v146 = 0xFFFC0000FFFCLL;
    fence_24(a1);
    OUTLINED_FUNCTION_87_2(200);
    if (*(a1 + 982) <= *(a1 + 958))
    {
      v14 = 35;
    }

    else
    {
LABEL_5:
      v14 = 55;
    }

    *(a1 + 4506) = v14;
    v15 = v13;
    while (2)
    {
      v16 = OUTLINED_FUNCTION_107_0();
      starttest(v16, v17);
      bspush_ca_scan(a1, 4);
      v18 = OUTLINED_FUNCTION_63_3();
      if (!lpta_loadp_setscan_l(v18, v19, 4))
      {
        v20 = OUTLINED_FUNCTION_83_2();
        if (!testFldeq(v20, v21, 1, 1))
        {
          bspush_ca_scan_boa();
          v22 = OUTLINED_FUNCTION_68_3();
          if (!testFldeq(v22, 4u, 3, v23))
          {
            v15 = 1;
          }
        }
      }

      LODWORD(v24) = v15;
LABEL_13:
      v25 = *(a1 + 104);
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_74_3(v25);
        v33 = v24;
      }

      else
      {
        v26 = vback(a1, v24);
        v33 = 0;
      }

      switch(v26)
      {
        case 1:
          v13 = v33;
          goto LABEL_5;
        case 2:
          v15 = v33;
          continue;
        case 3:
          v73 = OUTLINED_FUNCTION_43_4();
          starttest(v73, v74);
          v75 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_l(v75, v76, v77))
          {
            goto LABEL_30;
          }

          goto LABEL_31;
        case 4:
          v65 = OUTLINED_FUNCTION_16_20();
          v68 = lpta_loadp_setscan_r(v65, v66, v67);
          LODWORD(v24) = v33;
          if (v68)
          {
            goto LABEL_13;
          }

          v69 = OUTLINED_FUNCTION_17_19();
          v72 = testFldeq(v69, v70, v71, 1);
          LODWORD(v24) = v33;
          if (v72)
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_39_6();
          bspush_ca_scan_boa();
          v54 = OUTLINED_FUNCTION_5_24();
          goto LABEL_24;
        case 5:
        case 8:
          bspop_boa(a1);
          v37 = advance_tok(a1, v34, v35, v36);
          LODWORD(v24) = v33;
          if (v37)
          {
            goto LABEL_13;
          }

          goto LABEL_18;
        case 6:
LABEL_18:
          *(a1 + 4394) = 20;
          *(a1 + 4398) = 12;
          goto LABEL_46;
        case 7:
          bspop_boa(a1);
          OUTLINED_FUNCTION_25_15();
          bspush_ca_scan_boa();
          v54 = OUTLINED_FUNCTION_13_23();
          v57 = 18;
LABEL_24:
          v58 = testFldeq(v54, v55, v56, v57);
          goto LABEL_49;
        case 9:
          goto LABEL_46;
        case 10:
LABEL_30:
          *(a1 + 4406) = 35;
          v78 = 40;
          goto LABEL_45;
        case 11:
LABEL_31:
          OUTLINED_FUNCTION_86_2(11, v144, *v145, *&v145[8], *&v145[16], *&v145[24], *&v145[32], *&v145[40], *&v145[48], *&v145[56], *&v145[64], *&v145[72], *&v145[80], *&v145[88], *&v145[96], *&v145[104], *&v145[112], *&v145[120], *&v145[128], *&v145[136], *&v145[144], *&v145[152], *&v145[160], *&v145[168], *&v145[176], v146);
          v82 = advance_tok(a1, v79, v80, v81);
          LODWORD(v24) = v33;
          if (v82)
          {
            goto LABEL_13;
          }

          v83 = OUTLINED_FUNCTION_58_3();
          bspush_ca_scan(v83, v84);
          v85 = OUTLINED_FUNCTION_0_28();
          v89 = testFldeq(v85, v86, v87, v88);
          LODWORD(v24) = v33;
          if (v89)
          {
            goto LABEL_13;
          }

          v61 = OUTLINED_FUNCTION_1_26();
LABEL_36:
          v94 = testFldeq(v61, v62, v63, v64);
          v24 = v33;
          if (v94)
          {
            goto LABEL_13;
          }

LABEL_37:
          v95 = advance_tok(a1, v24, v27, v28);
          LODWORD(v24) = v33;
          if (v95)
          {
            goto LABEL_13;
          }

          v96 = OUTLINED_FUNCTION_61_3();
          v99 = lpta_loadp_setscan_r(v96, v97, v98);
          LODWORD(v24) = v33;
          if (v99)
          {
            goto LABEL_13;
          }

          v100 = OUTLINED_FUNCTION_40_5();
          bspush_ca_scan(v100, v101);
          v102 = OUTLINED_FUNCTION_0_28();
          v106 = testFldeq(v102, v103, v104, v105);
          LODWORD(v24) = v33;
          if (v106)
          {
            goto LABEL_13;
          }

          v90 = OUTLINED_FUNCTION_1_26();
LABEL_42:
          v109 = testFldeq(v90, v91, v92, v93);
          v24 = v33;
          if (v109)
          {
            goto LABEL_13;
          }

LABEL_43:
          v110 = advance_tok(a1, v24, v27, v28);
          LODWORD(v24) = v33;
          if (v110)
          {
            goto LABEL_13;
          }

          *(a1 + 4406) = 35;
          v78 = 30;
LABEL_45:
          *(a1 + 4394) = v78;
LABEL_46:
          v111 = OUTLINED_FUNCTION_54_3();
          starttest(v111, v112);
          v113 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v113, v114, v115))
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_53_3();
          bspush_ca_scan_boa();
LABEL_48:
          v116 = OUTLINED_FUNCTION_60_3();
          v58 = test_synch(v116, v117, 1, v118);
LABEL_49:
          if (v58)
          {
            LODWORD(v24) = v33;
          }

          else
          {
            LODWORD(v24) = 1;
          }

          goto LABEL_13;
        case 12:
          v59 = OUTLINED_FUNCTION_34_9();
          bspush_ca_scan(v59, v60);
          v61 = OUTLINED_FUNCTION_2_26();
          goto LABEL_36;
        case 13:
          goto LABEL_37;
        case 14:
          v61 = OUTLINED_FUNCTION_6_24();
          goto LABEL_36;
        case 15:
          v107 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v107, v108);
          v90 = OUTLINED_FUNCTION_2_26();
          goto LABEL_42;
        case 16:
          goto LABEL_43;
        case 17:
          v90 = OUTLINED_FUNCTION_6_24();
          goto LABEL_42;
        case 18:
          goto LABEL_63;
        case 19:
          bspop_boa(a1);
          v38 = OUTLINED_FUNCTION_57_3();
          starttest(v38, v39);
          v40 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v40, v41, v42))
          {
            goto LABEL_20;
          }

          v132 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v132, v133);
          goto LABEL_61;
        case 20:
          goto LABEL_48;
        case 21:
LABEL_20:
          v43 = OUTLINED_FUNCTION_56_3();
          starttest(v43, v44);
          v45 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v45, v46, v47))
          {
            goto LABEL_21;
          }

          v129 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v129, v130);
          goto LABEL_57;
        case 22:
          v119 = OUTLINED_FUNCTION_52_3();
          bspush_ca_scan(v119, v120);
          goto LABEL_61;
        case 23:
          goto LABEL_62;
        case 24:
LABEL_61:
          OUTLINED_FUNCTION_17_19();
          v134 = test_string_s();
          LODWORD(v24) = v33;
          if (v134)
          {
            goto LABEL_13;
          }

LABEL_62:
          *(a1 + 4542) = 65;
          goto LABEL_63;
        case 25:
LABEL_21:
          v48 = OUTLINED_FUNCTION_60_3();
          starttest(v48, v49);
          v50 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v50, v51, v52))
          {
            goto LABEL_22;
          }

          v121 = OUTLINED_FUNCTION_0_28();
          v125 = testFldeq(v121, v122, v123, v124);
          LODWORD(v24) = v33;
          if (v125)
          {
            goto LABEL_13;
          }

          v128 = advance_tok(a1, v33, v126, v127);
          LODWORD(v24) = v33;
          if (v128)
          {
            goto LABEL_13;
          }

          v53 = 72;
          goto LABEL_59;
        case 26:
LABEL_57:
          OUTLINED_FUNCTION_17_19();
          v131 = test_string_s();
          LODWORD(v24) = v33;
          if (!v131)
          {
            goto LABEL_58;
          }

          goto LABEL_13;
        case 27:
LABEL_58:
          v53 = 74;
          goto LABEL_59;
        case 28:
LABEL_22:
          v53 = 70;
LABEL_59:
          *(a1 + 4538) = v53;
LABEL_63:
          v135 = OUTLINED_FUNCTION_61_3();
          if (lpta_loadp_setscan_r(v135, v136, v137))
          {
            goto LABEL_65;
          }

          OUTLINED_FUNCTION_17_19();
          if (test_string_s())
          {
            goto LABEL_65;
          }

          v140 = OUTLINED_FUNCTION_60_3();
          starttest_e(v140, v141);
          move_i(a1, &v146 + 4, 40);
          move_i(a1, &v146, 45);
          v142 = final_voiced_release(a1, &v146 + 2);
          v24 = v33;
          if (!v142)
          {
            goto LABEL_65;
          }

          goto LABEL_13;
        case 29:
LABEL_65:
          por_velar_Fv(a1, v24, v27, v28, v29, v30, v31, v32);
          goto LABEL_66;
        case 30:
LABEL_66:
          v138 = OUTLINED_FUNCTION_51_3();
          starttest(v138, v139);
          c_assvar(a1, &v146);
          WORD1(v146) = *(a1 + 4586) - *(a1 + 4590);
          LODWORD(v24) = v33;
          if (SWORD1(v146) < 601)
          {
            goto LABEL_13;
          }

          *(a1 + 4394) = 20;
LABEL_71:
          vretproc(a1);
          result = 0;
          break;
        case 31:
          goto LABEL_71;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  return result;
}

uint64_t por_ph_w(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v81);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, SHIDWORD(v129), v131, SWORD2(v131), SHIWORD(v131), v133, SWORD2(v133), SBYTE6(v133), SHIBYTE(v133), v135, v136))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_24(a1);
  v20 = OUTLINED_FUNCTION_22_16();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v22, v23, v24))
  {
    while (2)
    {
      v38 = OUTLINED_FUNCTION_26_15();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_64_3();
      if (lpta_loadp_setscan_r(v40, v41, v1))
      {
        v42 = 300;
      }

      else
      {
        v43 = OUTLINED_FUNCTION_1_26();
        if (testFldeq(v43, v44, v45, v46) || advance_tok(a1, v47, v48, v49))
        {
          goto LABEL_22;
        }

        v42 = 250;
      }

LABEL_13:
      *(a1 + 4578) = v42;
LABEL_14:
      por_labial_Fv(a1);
LABEL_15:
      v50 = OUTLINED_FUNCTION_39_6();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_16_20();
      if (!lpta_loadp_setscan_r(v52, v53, v54))
      {
        v67 = OUTLINED_FUNCTION_1_26();
        if (testFldeq(v67, v68, v69, v70) || advance_tok(a1, v71, v72, v73))
        {
          goto LABEL_22;
        }

        *(a1 + 4590) -= 300;
      }

LABEL_16:
      v55 = OUTLINED_FUNCTION_25_15();
      starttest(v55, v56);
      v57 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v57, v58, v59))
      {
LABEL_26:
        OUTLINED_FUNCTION_89_2(2200);
        goto LABEL_27;
      }

      v60 = OUTLINED_FUNCTION_1_26();
      if (!testFldeq(v60, v61, v62, v63) && !advance_tok(a1, v64, v65, v66))
      {
        *(a1 + 4586) -= 300;
        goto LABEL_26;
      }

LABEL_22:
      v74 = *(a1 + 104);
      if (v74)
      {
        v75 = OUTLINED_FUNCTION_74_3(v74);
      }

      else
      {
        v76 = OUTLINED_FUNCTION_84_2();
        v75 = vback(v76, v77);
      }

      v42 = 300;
      switch(v75)
      {
        case 1:
          continue;
        case 2:
        case 3:
          goto LABEL_27;
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_14;
        case 6:
          goto LABEL_15;
        case 7:
          goto LABEL_16;
        case 8:
          goto LABEL_26;
        default:
          goto LABEL_3;
      }
    }
  }

  v25 = OUTLINED_FUNCTION_17_19();
  if (testFldeq(v25, v26, v27, 2) || advance_tok(a1, v28, v29, v30))
  {
    goto LABEL_22;
  }

  *(a1 + 4578) = 350;
  por_ph_u(a1, v31, v32, v33, v34, v35, v36, v37);
LABEL_27:
  OUTLINED_FUNCTION_48_4((8 * *(a1 + 4286)), 10.0);
  OUTLINED_FUNCTION_33_10(6 * v78, v79);
  *(a1 + 4382) = v80;
  *(a1 + 4394) = 50;
  vretproc(a1);
  return 0;
}

uint64_t por_ph_y(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v174);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v10, v11, v12, v13, v14, v15, v16, v17, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v175, v177, v179, v181, v183);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_30_11(v18, v19, v20, v21, v22, v23, v24, v25, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v176, v178, SHIDWORD(v178), v180, SWORD2(v180), SHIWORD(v180), v182, SWORD2(v182), SBYTE6(v182), SHIBYTE(v182), v184, v185))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_76_3();
  push_ptr_init(v27, v28);
  OUTLINED_FUNCTION_24_16();
  v29 = OUTLINED_FUNCTION_22_16();
  starttest_l(v29, v30);
  v31 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v31, v32, v33))
  {
    v34 = OUTLINED_FUNCTION_28_12();
    bspush_ca_scan(v34, v35);
    v36 = OUTLINED_FUNCTION_1_26();
LABEL_6:
    if (testFldeq(v36, v37, v38, v39))
    {
      goto LABEL_7;
    }

LABEL_16:
    if (advance_tok(a1, v40, v41, v42))
    {
      goto LABEL_7;
    }

    *(a1 + 4578) = 250;
  }

  while (2)
  {
    *(a1 + 4394) = 52;
    *(a1 + 4378) = OUTLINED_FUNCTION_73_3(25 * *(a1 + 4286));
    *(a1 + 4382) = 3 * *(a1 + 4290);
    por_high_pal_Fv(a1);
LABEL_19:
    v51 = OUTLINED_FUNCTION_39_6();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_l(v53, v54, v55))
    {
      goto LABEL_35;
    }

LABEL_20:
    OUTLINED_FUNCTION_85_2(8, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170);
    if (advance_tok(a1, v56, v57, v58))
    {
      goto LABEL_7;
    }

    v59 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v59, v60, v61, 2))
    {
      goto LABEL_7;
    }

    if (advance_tok(a1, v62, v63, v64))
    {
      goto LABEL_7;
    }

    v65 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v65, v66, v67))
    {
      goto LABEL_7;
    }

    v68 = OUTLINED_FUNCTION_32_10();
    bspush_ca_scan(v68, v69);
LABEL_25:
    v70 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v70, v71, v72, 2) || advance_tok(a1, v73, v74, v75))
    {
LABEL_7:
      v43 = *(a1 + 104);
      if (v43)
      {
        v44 = OUTLINED_FUNCTION_74_3(v43);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_84_2();
        v44 = vback(v45, v46);
      }

      switch(v44)
      {
        case 1:
          continue;
        case 2:
          v49 = OUTLINED_FUNCTION_26_15();
          bspush_ca_scan(v49, v50);
          v36 = OUTLINED_FUNCTION_62_3();
          v37 = v8;
          v39 = 29;
          goto LABEL_6;
        case 3:
          goto LABEL_16;
        case 4:
          v47 = OUTLINED_FUNCTION_29_12();
          bspush_ca_scan(v47, v48);
          v36 = OUTLINED_FUNCTION_13_23();
          v39 = 33;
          goto LABEL_6;
        case 5:
          v36 = OUTLINED_FUNCTION_13_23();
          v39 = 36;
          goto LABEL_6;
        case 6:
          goto LABEL_19;
        case 7:
          goto LABEL_35;
        case 8:
          goto LABEL_20;
        case 9:
          OUTLINED_FUNCTION_17_19();
          if (!test_string_s())
          {
            goto LABEL_25;
          }

          goto LABEL_7;
        case 10:
          goto LABEL_25;
        case 11:
          goto LABEL_29;
        case 12:
          goto LABEL_31;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

  if (*(a1 + 4586) >= 2101)
  {
    *(a1 + 4586) = 2100;
  }

LABEL_29:
  if (*(a1 + 4590) >= 2101)
  {
    *(a1 + 4590) = 2100;
  }

LABEL_31:
  if (*(a1 + 4598) >= 1)
  {
    v76 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v76, v77, v78))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        *(a1 + 4598) -= 200;
      }
    }
  }

LABEL_35:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_pal_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v134 = *MEMORY[0x277D85DE8];
  v128 = 0;
  v129 = 0.0;
  v126 = 0;
  v127 = 0.0;
  v124 = 0;
  v125 = 0.0;
  v122 = 0;
  v123 = 0.0;
  v121 = 0;
  v120 = 0;
  v119[0] = 0;
  v119[1] = 0;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v116[23] = 0;
  v116[24] = 0;
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4, a5, a6, a7, a8, v116[0]);
  OUTLINED_FUNCTION_69_3();
  bzero(v133, v9);
  if (setjmp(v133) || ventproc(a1, v116, v132, v131, v130, v133))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v129 = 0.0;
  LOWORD(v128) = -5;
  v127 = 0.0;
  LOWORD(v126) = -5;
  v125 = 0.0;
  LOWORD(v124) = -5;
  v123 = 0.0;
  LOWORD(v122) = -5;
  WORD2(v121) = -4;
  LOWORD(v121) = -4;
  LOWORD(v120) = -4;
  push_ptr_init(a1, v119);
  push_ptr_init(a1, v118);
  push_ptr_init(a1, v117);
  v11 = OUTLINED_FUNCTION_76_3();
  push_ptr_init(v11, v12);
  OUTLINED_FUNCTION_24_16();
  *(a1 + 4582) = 200;
  *(a1 + 4586) = 1700;
  *(a1 + 4590) = 1900;
  *(a1 + 4594) = 2500;
  *(a1 + 4598) = 2700;
  OUTLINED_FUNCTION_97_1(4000);
  HIWORD(v121) = 44;
  WORD1(v121) = 47;
  HIWORD(v120) = 40;
  v13 = OUTLINED_FUNCTION_22_16();
  starttest(v13, v14);
  if (*(a1 + 982) <= *(a1 + 958))
  {
    v15 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v15, v16, v17))
    {
      OUTLINED_FUNCTION_28_12();
      bspush_ca_scan_boa();
      v84 = OUTLINED_FUNCTION_37_8();
      bspush_ca_scan(v84, v85);
      v86 = OUTLINED_FUNCTION_3_25();
      if (testFldeq(v86, v87, v88, v89))
      {
        v18 = 0;
      }

      else
      {
LABEL_56:
        v18 = 1;
      }

      goto LABEL_57;
    }
  }

  v18 = 0;
  while (1)
  {
    v19 = OUTLINED_FUNCTION_29_12();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v21, v22, v23))
    {
      v52 = OUTLINED_FUNCTION_13_23();
      if (!testFldeq(v52, v53, v54, 28) && !advance_tok(a1, v55, v56, v57))
      {
        v51 = 100;
        v49 = 200;
        v50 = 400;
        goto LABEL_23;
      }

      goto LABEL_57;
    }

LABEL_8:
    v24 = OUTLINED_FUNCTION_39_6();
    starttest(v24, v25);
    v26 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v26, v27, v28))
    {
      v58 = OUTLINED_FUNCTION_13_23();
      if (!testFldeq(v58, v59, v60, 30) && !advance_tok(a1, v61, v62, v63))
      {
        v64 = -100;
        v65 = -200;
        goto LABEL_24;
      }

      goto LABEL_57;
    }

LABEL_9:
    v29 = OUTLINED_FUNCTION_25_15();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v31, v32, v33))
    {
LABEL_10:
      v34 = OUTLINED_FUNCTION_41_4();
      starttest(v34, v35);
      v36 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v36, v37, v38))
      {
        goto LABEL_25;
      }

      v39 = OUTLINED_FUNCTION_42_4();
      bspush_ca_scan(v39, v40);
      v41 = OUTLINED_FUNCTION_0_28();
      v45 = testFldeq(v41, v42, v43, v44);
      v48 = v18;
      if (!v45)
      {
LABEL_12:
        if (!OUTLINED_FUNCTION_112_0(v45, v46, v47, v48))
        {
          v49 = -100;
          v50 = -300;
          v51 = -100;
          goto LABEL_23;
        }
      }

      goto LABEL_57;
    }

    v66 = OUTLINED_FUNCTION_32_10();
    bspush_ca_scan(v66, v67);
    v68 = OUTLINED_FUNCTION_3_25();
    v45 = testFldeq(v68, v69, v70, v71);
    v47 = v18;
    if (v45)
    {
      goto LABEL_57;
    }

LABEL_21:
    if (!OUTLINED_FUNCTION_108_0(v45, v46, v47, v48))
    {
      break;
    }

LABEL_57:
    LODWORD(v46) = v18;
LABEL_45:
    v100 = *(a1 + 104);
    if (v100)
    {
      v45 = OUTLINED_FUNCTION_49_3(v100);
    }

    else
    {
      v45 = vback(a1, v46);
      v18 = 0;
    }

    v47 = v18;
    v48 = v18;
    switch(v45)
    {
      case 1:
        continue;
      case 2:
        bspop_boa(a1);
        v104 = advance_tok(a1, v101, v102, v103);
        LODWORD(v46) = v18;
        if (v104)
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_95_1();
        break;
      case 3:
        v112 = OUTLINED_FUNCTION_18_18();
        v115 = testFldeq(v112, v113, v114, 3);
        LODWORD(v46) = v18;
        if (!v115)
        {
          goto LABEL_56;
        }

        goto LABEL_45;
      case 4:
        goto LABEL_56;
      case 5:
        goto LABEL_8;
      case 6:
        goto LABEL_25;
      case 7:
        goto LABEL_9;
      case 8:
        goto LABEL_10;
      case 9:
        v105 = OUTLINED_FUNCTION_18_18();
        testFldeq(v105, v106, v107, 3);
        OUTLINED_FUNCTION_90_2();
        if (!v45)
        {
          goto LABEL_21;
        }

        goto LABEL_45;
      case 10:
        goto LABEL_21;
      case 11:
        v108 = OUTLINED_FUNCTION_14_21();
        testFldeq(v108, v109, v110, v111);
        OUTLINED_FUNCTION_94_1();
        if (!v45)
        {
          goto LABEL_12;
        }

        goto LABEL_45;
      case 12:
        goto LABEL_12;
      case 13:
        goto LABEL_28;
      case 14:
        goto LABEL_31;
      case 15:
        v77 = *(a1 + 3400);
        goto LABEL_36;
      case 16:
        v82 = 0.0;
        goto LABEL_38;
      case 17:
        goto LABEL_41;
      case 18:
        goto LABEL_42;
      case 19:
        goto LABEL_43;
      case 20:
        goto LABEL_44;
      default:
        goto LABEL_3;
    }
  }

  v50 = 100;
  v49 = 100;
  v51 = 100;
LABEL_23:
  *(a1 + 4590) += v50;
  v65 = v49;
  v64 = v51;
LABEL_24:
  *(a1 + 4598) += v65;
  *(a1 + 4606) += v64;
LABEL_25:
  OUTLINED_FUNCTION_96_1();
  if (v72 == v73)
  {
    OUTLINED_FUNCTION_105_0();
    if (v72 == v73)
    {
      OUTLINED_FUNCTION_21_16(v74);
    }
  }

LABEL_28:
  v75 = *(a1 + 4602);
  if (v75 >= 1 && *(a1 + 4606) >= 1)
  {
    OUTLINED_FUNCTION_38_7(v75);
    *(a1 + 4602) = v76;
    *(a1 + 4606) = -1;
  }

LABEL_31:
  v77 = *(a1 + 3400);
  if (v77 <= 9.0)
  {
LABEL_36:
    v82 = v77 * 333.0 / 1000.0;
LABEL_38:
    v83 = v82;
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v80 = v78 * 15.0 / v79;
    v82 = v81;
    v83 = v80;
  }

  v129 = v82 + *(a1 + 2136);
  v127 = v129 + 1.0;
  v125 = v83 + v129 + 1.0;
  v123 = v125 + 1.0;
  if (*(a1 + 962) == 1)
  {
    HIWORD(v121) -= 2;
    WORD1(v121) -= 2;
    HIWORD(v120) -= 2;
  }

LABEL_41:
  v90 = (67 * *(a1 + 4282));
  *(a1 + 4394) = 48;
  OUTLINED_FUNCTION_72_3(v90);
  OUTLINED_FUNCTION_23_16(v91, v92);
  OUTLINED_FUNCTION_98_1(v93);
  OUTLINED_FUNCTION_33_10(v94 * v95, v96);
  *(a1 + 4382) = v97;
  OUTLINED_FUNCTION_23_16(*(a1 + 4294), v98);
  *(a1 + 4386) = v99;
  *(a1 + 4390) = 2 * *(a1 + 4298);
  doAV();
LABEL_42:
  doAV();
LABEL_43:
  doAV();
LABEL_44:
  *(a1 + 4514) = 1;
  vretproc(a1);
  return 0;
}

uint64_t por_ph_l(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v205);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, SHIDWORD(v253), v255, SWORD2(v255), SHIWORD(v255), v257, SWORD2(v257), SBYTE6(v257), SHIBYTE(v257), v259, v260))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  OUTLINED_FUNCTION_24_16();
  *(a1 + 4582) = v20;
  OUTLINED_FUNCTION_91_1(1200);
  OUTLINED_FUNCTION_89_2(3000);
  OUTLINED_FUNCTION_97_1(3500);
  v21 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v21, v22, v23))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_95_1();
      *(a1 + 4594) = v170;
      goto LABEL_24;
    }
  }

  while (2)
  {
    v24 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v24, v25, v26))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 200);
        v70 = v69 - 400;
LABEL_22:
        *(a1 + 4594) = v70;
        v61 = *(a1 + 4602) - 300;
LABEL_23:
        *(a1 + 4602) = v61;
        goto LABEL_24;
      }
    }

LABEL_8:
    v27 = OUTLINED_FUNCTION_26_15();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_63_3();
    if (!lpta_loadp_setscan_l(v29, v30, v1))
    {
      v52 = OUTLINED_FUNCTION_29_12();
      bspush_ca_scan(v52, v53);
      v54 = OUTLINED_FUNCTION_13_23();
      v57 = 28;
LABEL_14:
      if (testFldeq(v54, v55, v56, v57))
      {
        goto LABEL_76;
      }

LABEL_15:
      if (advance_tok(a1, v58, v59, v60))
      {
        goto LABEL_76;
      }

      *(a1 + 4586) += 200;
      v61 = *(a1 + 4602) + 200;
      goto LABEL_23;
    }

LABEL_9:
    v31 = OUTLINED_FUNCTION_42_4();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v33, v34, v35))
    {
      v62 = OUTLINED_FUNCTION_58_3();
      bspush_ca_scan(v62, v63);
      v64 = OUTLINED_FUNCTION_3_25();
LABEL_18:
      if (testFldeq(v64, v65, v66, v67))
      {
        goto LABEL_76;
      }

LABEL_19:
      if (advance_tok(a1, v58, v59, v60))
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 130);
      *(a1 + 4594) = v68 + 100;
      v61 = *(a1 + 4602) + 100;
      goto LABEL_23;
    }

LABEL_10:
    v36 = OUTLINED_FUNCTION_34_9();
    starttest(v36, v37);
    v38 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v38, v39, v40))
    {
      v118 = OUTLINED_FUNCTION_40_5();
      bspush_ca_scan(v118, v119);
      v120 = OUTLINED_FUNCTION_0_28();
      if (testFldeq(v120, v121, v122, v123))
      {
        goto LABEL_76;
      }

      v124 = OUTLINED_FUNCTION_1_26();
LABEL_63:
      if (testFldeq(v124, v125, v126, v127))
      {
        goto LABEL_76;
      }

LABEL_64:
      if (advance_tok(a1, v58, v59, v60))
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 200);
      v70 = v171 - 350;
      goto LABEL_22;
    }

LABEL_11:
    v41 = OUTLINED_FUNCTION_28_12();
    starttest(v41, v42);
    v43 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v43, v44, v45))
    {
      v46 = OUTLINED_FUNCTION_53_3();
      bspush_ca_scan(v46, v47);
      v48 = OUTLINED_FUNCTION_0_28();
LABEL_66:
      if (testFldeq(v48, v49, v50, v51))
      {
        goto LABEL_76;
      }

LABEL_67:
      if (advance_tok(a1, v58, v59, v60))
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 200);
      v70 = v172 - 420;
      goto LABEL_22;
    }

LABEL_24:
    v71 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v71, v72, v73) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
    {
LABEL_26:
      v74 = OUTLINED_FUNCTION_16_20();
      if (!lpta_loadp_setscan_r(v74, v75, v76))
      {
        OUTLINED_FUNCTION_17_19();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_75_3();
          v129 = v128 - 400;
LABEL_42:
          *(a1 + 4598) = v129;
          v110 = *(a1 + 4606) - 300;
LABEL_43:
          *(a1 + 4606) = v110;
          goto LABEL_44;
        }
      }

LABEL_28:
      v77 = OUTLINED_FUNCTION_52_3();
      starttest(v77, v78);
      v79 = OUTLINED_FUNCTION_16_20();
      if (!lpta_loadp_setscan_r(v79, v80, v81))
      {
        v103 = OUTLINED_FUNCTION_56_3();
        bspush_ca_scan(v103, v104);
        v105 = OUTLINED_FUNCTION_13_23();
        v108 = 28;
LABEL_34:
        if (testFldeq(v105, v106, v107, v108))
        {
          goto LABEL_76;
        }

LABEL_35:
        if (advance_tok(a1, v58, v59, v60))
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_117_0();
        *(a1 + 4590) = v109;
        v110 = *(a1 + 4606) + 100;
        goto LABEL_43;
      }

LABEL_29:
      v82 = OUTLINED_FUNCTION_51_3();
      starttest(v82, v83);
      v84 = OUTLINED_FUNCTION_16_20();
      if (!lpta_loadp_setscan_r(v84, v85, v86))
      {
        v111 = OUTLINED_FUNCTION_55_3();
        bspush_ca_scan(v111, v112);
        v113 = OUTLINED_FUNCTION_3_25();
LABEL_69:
        if (testFldeq(v113, v114, v115, v116))
        {
          goto LABEL_76;
        }

LABEL_70:
        if (advance_tok(a1, v58, v59, v60))
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 250);
        *(a1 + 4598) = v173 + 100;
        v110 = *(a1 + 4606) + 200;
        goto LABEL_43;
      }

LABEL_30:
      v87 = OUTLINED_FUNCTION_60_3();
      starttest(v87, v88);
      v89 = OUTLINED_FUNCTION_16_20();
      if (!lpta_loadp_setscan_r(v89, v90, v91))
      {
        v160 = OUTLINED_FUNCTION_60_3();
        bspush_ca_scan(v160, v161);
        v162 = OUTLINED_FUNCTION_0_28();
        if (testFldeq(v162, v163, v164, v165))
        {
          goto LABEL_76;
        }

        v166 = OUTLINED_FUNCTION_1_26();
LABEL_72:
        if (testFldeq(v166, v167, v168, v169))
        {
          goto LABEL_76;
        }

LABEL_73:
        if (advance_tok(a1, v58, v59, v60))
        {
          goto LABEL_76;
        }

        *(a1 + 4582) = 230;
        *(a1 + 4590) = 1350;
        *(a1 + 4598) = 2250;
        v110 = 3700;
        goto LABEL_43;
      }

LABEL_31:
      v92 = OUTLINED_FUNCTION_60_3();
      starttest(v92, v93);
      v94 = OUTLINED_FUNCTION_16_20();
      if (!lpta_loadp_setscan_r(v94, v95, v96))
      {
        v97 = OUTLINED_FUNCTION_60_3();
        bspush_ca_scan(v97, v98);
        v99 = OUTLINED_FUNCTION_0_28();
LABEL_75:
        if (testFldeq(v99, v100, v101, v102))
        {
          goto LABEL_76;
        }

LABEL_102:
        if (advance_tok(a1, v58, v59, v60))
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_75_3();
        v129 = v204 - 420;
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_99_1();
      *(a1 + 4598) = v117;
    }

LABEL_44:
    OUTLINED_FUNCTION_106_0();
    if (v131 == v132 && *(a1 + 4590) >= 1)
    {
      OUTLINED_FUNCTION_38_7(v130);
      OUTLINED_FUNCTION_102_0(v133);
    }

LABEL_47:
    OUTLINED_FUNCTION_96_1();
    if (v131 == v132)
    {
      OUTLINED_FUNCTION_105_0();
      if (v131 == v132)
      {
        OUTLINED_FUNCTION_21_16(v134);
      }
    }

LABEL_50:
    v135 = *(a1 + 4602);
    if (v135 >= 1 && *(a1 + 4606) >= 1)
    {
      OUTLINED_FUNCTION_38_7(v135);
      *(a1 + 4602) = v136;
      *(a1 + 4606) = -1;
    }

LABEL_53:
    *(a1 + 4394) = 50;
    OUTLINED_FUNCTION_72_3((67 * *(a1 + 4282)));
    OUTLINED_FUNCTION_33_10(150 * v137, v138);
    OUTLINED_FUNCTION_98_1(v139);
    OUTLINED_FUNCTION_23_16(v140, v141);
    *(a1 + 4382) = v142;
    OUTLINED_FUNCTION_23_16(*(a1 + 4294), v143);
    *(a1 + 4386) = v144;
    v145 = OUTLINED_FUNCTION_60_3();
    starttest(v145, v146);
    v147 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v147, v148, v149))
    {
      goto LABEL_59;
    }

    v150 = OUTLINED_FUNCTION_60_3();
    bspush_ca_scan(v150, v151);
    v152 = OUTLINED_FUNCTION_0_28();
    if (testFldeq(v152, v153, v154, v155))
    {
      goto LABEL_76;
    }

    v156 = OUTLINED_FUNCTION_1_26();
LABEL_56:
    if (testFldeq(v156, v157, v158, v159))
    {
LABEL_76:
      v174 = *(a1 + 104);
      if (v174)
      {
        v175 = OUTLINED_FUNCTION_74_3(v174);
      }

      else
      {
        v176 = OUTLINED_FUNCTION_84_2();
        v175 = vback(v176, v177);
      }

      switch(v175)
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
          v178 = OUTLINED_FUNCTION_39_6();
          bspush_ca_scan(v178, v179);
          v54 = OUTLINED_FUNCTION_7_24();
          goto LABEL_14;
        case 6:
          goto LABEL_15;
        case 7:
          v198 = OUTLINED_FUNCTION_25_15();
          bspush_ca_scan(v198, v199);
          v54 = OUTLINED_FUNCTION_13_23();
          v57 = 35;
          goto LABEL_14;
        case 8:
          v196 = OUTLINED_FUNCTION_32_10();
          bspush_ca_scan(v196, v197);
          v54 = OUTLINED_FUNCTION_12_23();
          goto LABEL_14;
        case 9:
          v194 = OUTLINED_FUNCTION_43_4();
          bspush_ca_scan(v194, v195);
          v54 = OUTLINED_FUNCTION_11_23();
          goto LABEL_14;
        case 10:
          v54 = OUTLINED_FUNCTION_13_23();
          v57 = 24;
          goto LABEL_14;
        case 11:
          goto LABEL_10;
        case 12:
          v64 = OUTLINED_FUNCTION_18_18();
          v67 = 3;
          goto LABEL_18;
        case 13:
          goto LABEL_19;
        case 14:
          goto LABEL_11;
        case 15:
          v192 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v192, v193);
          v124 = OUTLINED_FUNCTION_8_24();
          goto LABEL_63;
        case 16:
          goto LABEL_64;
        case 17:
          v190 = OUTLINED_FUNCTION_54_3();
          bspush_ca_scan(v190, v191);
          v124 = OUTLINED_FUNCTION_2_26();
          goto LABEL_63;
        case 18:
          v124 = OUTLINED_FUNCTION_6_24();
          goto LABEL_63;
        case 19:
          v48 = OUTLINED_FUNCTION_14_21();
          goto LABEL_66;
        case 20:
          goto LABEL_67;
        case 21:
          goto LABEL_26;
        case 22:
          goto LABEL_44;
        case 23:
          goto LABEL_28;
        case 24:
          goto LABEL_29;
        case 25:
          v186 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v186, v187);
          v105 = OUTLINED_FUNCTION_7_24();
          goto LABEL_34;
        case 26:
          goto LABEL_35;
        case 27:
          v200 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v200, v201);
          v105 = OUTLINED_FUNCTION_13_23();
          v108 = 35;
          goto LABEL_34;
        case 28:
          v184 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v184, v185);
          v105 = OUTLINED_FUNCTION_12_23();
          goto LABEL_34;
        case 29:
          v182 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v182, v183);
          v105 = OUTLINED_FUNCTION_11_23();
          goto LABEL_34;
        case 30:
          v105 = OUTLINED_FUNCTION_13_23();
          v108 = 24;
          goto LABEL_34;
        case 31:
          goto LABEL_30;
        case 32:
          v113 = OUTLINED_FUNCTION_18_18();
          v116 = 3;
          goto LABEL_69;
        case 33:
          goto LABEL_70;
        case 34:
          goto LABEL_31;
        case 35:
          v180 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v180, v181);
          v166 = OUTLINED_FUNCTION_8_24();
          goto LABEL_72;
        case 36:
          goto LABEL_73;
        case 37:
          v202 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v202, v203);
          v166 = OUTLINED_FUNCTION_2_26();
          goto LABEL_72;
        case 38:
          v166 = OUTLINED_FUNCTION_6_24();
          goto LABEL_72;
        case 39:
          v99 = OUTLINED_FUNCTION_14_21();
          goto LABEL_75;
        case 40:
          goto LABEL_102;
        case 41:
          goto LABEL_47;
        case 42:
          goto LABEL_50;
        case 43:
          goto LABEL_53;
        case 44:
          goto LABEL_59;
        case 45:
          v188 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v188, v189);
          v156 = OUTLINED_FUNCTION_2_26();
          goto LABEL_56;
        case 46:
          goto LABEL_57;
        case 47:
          v156 = OUTLINED_FUNCTION_6_24();
          goto LABEL_56;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_57:
  if (advance_tok(a1, v58, v59, v60))
  {
    goto LABEL_76;
  }

  *(a1 + 4378) = 3 * *(a1 + 4286);
  *(a1 + 4406) = (OUTLINED_FUNCTION_73_3(9 * *(a1 + 4562)) + 20.0);
  *(a1 + 4530) = 1;
LABEL_59:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_r(uint64_t a1)
{
  v543 = *MEMORY[0x277D85DE8];
  v537 = 0;
  v538 = 0.0;
  v535 = 0;
  v536 = 0.0;
  v533 = 0;
  v534 = 0.0;
  v531 = 0;
  v532 = 0.0;
  v530 = 0;
  v529[0] = 0;
  v529[1] = 0;
  v527 = 0;
  v528 = 0;
  HIDWORD(v526) = 0;
  v524 = 0;
  v525 = 0;
  v522 = 0;
  v523 = 0;
  v520 = 0;
  v521 = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(&v497, v2);
  OUTLINED_FUNCTION_69_3();
  bzero(v542, v3);
  if (setjmp(v542) || ventproc(a1, &v497, v541, v540, v539, v542))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v538 = 0.0;
  LOWORD(v537) = -5;
  v536 = 0.0;
  LOWORD(v535) = -5;
  v534 = 0.0;
  LOWORD(v533) = -5;
  v532 = 0.0;
  LOWORD(v531) = -5;
  v530 = 65532;
  push_ptr_init(a1, v529);
  push_ptr_init(a1, &v527);
  HIDWORD(v526) = 65532;
  push_ptr_init(a1, &v524);
  push_ptr_init(a1, &v522);
  push_ptr_init(a1, &v520);
  fence_24(a1);
  v5 = OUTLINED_FUNCTION_73_3(5 * *(a1 + 4562));
  v6 = OUTLINED_FUNCTION_22_16();
  starttest(v6, v7);
  v8 = OUTLINED_FUNCTION_15_21();
  v11 = lpta_loadp_setscan_l(v8, v9, v10);
  v12 = 0;
  if (!v11)
  {
LABEL_22:
    LODWORD(v21) = v12;
    OUTLINED_FUNCTION_111_0(2, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505, v506, v507, v508, v509, v510, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528);
    v50 = OUTLINED_FUNCTION_5_24();
    if (testFldeq(v50, v51, v52, v53))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_37_8();
    bspush_ca_scan_boa();
    v54 = OUTLINED_FUNCTION_59_3();
    v56 = 4;
    v57 = 4;
LABEL_24:
    testFldeq(v54, v55, v56, v57);
    OUTLINED_FUNCTION_113_0();
    goto LABEL_26;
  }

  v13 = 4386;
  v14 = 0;
LABEL_6:
  *(a1 + v13) = 100;
  v15 = v14;
LABEL_7:
  v16 = OUTLINED_FUNCTION_41_4();
  starttest(v16, v17);
  v18 = OUTLINED_FUNCTION_15_21();
  v21 = v15;
  if (lpta_loadp_setscan_l(v18, v19, v20))
  {
LABEL_8:
    v21 = v15;
    v22 = OUTLINED_FUNCTION_32_10();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v24, v25, v26))
    {
      v27 = 3600;
      v28 = 2900;
    }

    else
    {
LABEL_133:
      OUTLINED_FUNCTION_111_0(10, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505, v506, v507, v508, v509, v510, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528);
      v422 = OUTLINED_FUNCTION_18_18();
      if (testFldeq(v422, v423, v424, 2))
      {
        goto LABEL_25;
      }

      if (advance_tok(a1, v425, v426, v427))
      {
        goto LABEL_25;
      }

      v428 = OUTLINED_FUNCTION_61_3();
      if (lpta_loadp_setscan_r(v428, v429, v430))
      {
        goto LABEL_25;
      }

      if (advance_tok(a1, v431, v432, v433))
      {
        goto LABEL_25;
      }

      v434 = OUTLINED_FUNCTION_18_18();
      if (testFldeq(v434, v435, v436, 6))
      {
        goto LABEL_25;
      }

      v437 = OUTLINED_FUNCTION_3_25();
      if (testFldeq(v437, v438, v439, v440) || advance_tok(a1, v441, v442, v443))
      {
        goto LABEL_25;
      }

      v27 = 3700;
      v28 = 3000;
    }
  }

  else
  {
LABEL_100:
    OUTLINED_FUNCTION_111_0(7, v494, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504, v505, v506, v507, v508, v509, v510, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528);
    v323 = OUTLINED_FUNCTION_18_18();
    if (testFldeq(v323, v324, v325, 2))
    {
      goto LABEL_25;
    }

    if (advance_tok(a1, v326, v327, v328))
    {
      goto LABEL_25;
    }

    v329 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v329, v330, v331))
    {
      goto LABEL_25;
    }

    if (advance_tok(a1, v332, v333, v334))
    {
      goto LABEL_25;
    }

    v335 = OUTLINED_FUNCTION_1_26();
    if (testFldeq(v335, v336, v337, v338))
    {
      goto LABEL_25;
    }

    v339 = OUTLINED_FUNCTION_3_25();
    if (testFldeq(v339, v340, v341, v342) || advance_tok(a1, v343, v344, v345))
    {
      goto LABEL_25;
    }

    v27 = 3800;
    v28 = 3100;
  }

LABEL_10:
  *(a1 + 4602) = v28;
  *(a1 + 4610) = v27;
LABEL_11:
  v29 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v29, v30, v31) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
  {
LABEL_13:
    v15 = v21;
    v32 = OUTLINED_FUNCTION_58_3();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v34, v35, v36))
    {
      goto LABEL_18;
    }

LABEL_14:
    v37 = OUTLINED_FUNCTION_60_3();
    if (test_synch(v37, v38, 1, v39))
    {
      goto LABEL_25;
    }

    *(a1 + 4578) = 450;
    v40 = 2100;
    v41 = 1250;
  }

  else
  {
    v40 = 2450;
    v41 = 1700;
  }

  *(a1 + 4586) = v41;
  *(a1 + 4594) = v40;
  v15 = v21;
LABEL_18:
  v21 = v15;
  v42 = OUTLINED_FUNCTION_34_9();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v44, v45, v46))
  {
LABEL_19:
    v21 = v15;
    v47 = OUTLINED_FUNCTION_40_5();
    if (test_synch(v47, v48, 1, v49))
    {
      goto LABEL_25;
    }

    *(a1 + 4582) = 450;
    *(a1 + 4590) = 1500;
    *(a1 + 4598) = 2200;
  }

LABEL_113:
  v346 = OUTLINED_FUNCTION_46_4();
  starttest(v346, v347);
  v348 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v348, v349, v350))
  {
    v414 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v414, v415, v416, 1))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_60_3();
    bspush_ca_scan_boa();
    v54 = OUTLINED_FUNCTION_5_24();
    goto LABEL_24;
  }

LABEL_114:
  v351 = OUTLINED_FUNCTION_51_3();
  starttest(v351, v352);
  v353 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v353, v354, v355))
  {
    v417 = OUTLINED_FUNCTION_55_3();
    bspush_ca_scan(v417, v418);
    v419 = OUTLINED_FUNCTION_17_19();
    if (testFldeq(v419, v420, v421, 1))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_60_3();
    bspush_ca_scan_boa();
    v54 = OUTLINED_FUNCTION_59_3();
    v56 = 4;
    v57 = 6;
    goto LABEL_24;
  }

LABEL_115:
  v356 = OUTLINED_FUNCTION_60_3();
  starttest(v356, v357);
  v358 = OUTLINED_FUNCTION_16_20();
  if (lpta_loadp_setscan_r(v358, v359, v360) || (OUTLINED_FUNCTION_17_19(), test_string_s()) || (v361 = OUTLINED_FUNCTION_16_20(), LODWORD(v15) = v21, lpta_loadp_setscan_r(v361, v362, v363)))
  {
LABEL_143:
    v444 = OUTLINED_FUNCTION_60_3();
    starttest(v444, v445);
    v446 = OUTLINED_FUNCTION_16_20();
    if (lpta_loadp_setscan_r(v446, v447, v448))
    {
LABEL_144:
      v449 = OUTLINED_FUNCTION_60_3();
      starttest(v449, v450);
      v451 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v451, v452, v453))
      {
        v74 = 20;
        v70 = 30;
      }

      else
      {
LABEL_147:
        v454 = OUTLINED_FUNCTION_60_3();
        if (test_synch(v454, v455, 1, v456) || advance_tok(a1, v457, v458, v459))
        {
          goto LABEL_25;
        }

        v74 = 30;
        v70 = 25;
      }

      v71 = 4398;
      v73 = 4394;
      goto LABEL_163;
    }

    v460 = OUTLINED_FUNCTION_60_3();
    bspush_ca_scan(v460, v461);
    v462 = OUTLINED_FUNCTION_3_25();
    v466 = testFldeq(v462, v463, v464, v465);
    v58 = v21;
    v72 = v21;
    if (v466)
    {
      goto LABEL_26;
    }

LABEL_151:
    LODWORD(v15) = v72;
    if (!advance_tok(a1, v58, v72, v62))
    {
      OUTLINED_FUNCTION_71_3(*(a1 + 3400), 5.0);
      v467 = OUTLINED_FUNCTION_60_3();
      starttest(v467, v468);
      v469 = OUTLINED_FUNCTION_19_17();
      move_i(v469, v470, 30);
      OUTLINED_FUNCTION_65_3();
      if (!doAV())
      {
        v59 = 20 - v5;
LABEL_154:
        v471 = OUTLINED_FUNCTION_60_3();
        starttest(v471, v472);
        v473 = OUTLINED_FUNCTION_19_17();
        c_assvar(v473, v474);
        HIWORD(v526) = v59;
        v412 = &v537;
        v410 = a1 + 2008;
        v409 = a1;
        v411 = v21;
        v413 = &v537;
LABEL_155:
        if (!addStreamArraySsVal(v409, v410, v411, v412, v413))
        {
          goto LABEL_160;
        }
      }
    }

LABEL_156:
    LODWORD(v58) = v15;
    goto LABEL_26;
  }

LABEL_118:
  v364 = OUTLINED_FUNCTION_60_3();
  if (test_synch(v364, v365, 1, v366))
  {
    goto LABEL_156;
  }

  v367 = OUTLINED_FUNCTION_17_19();
  if (testFldeq(v367, v368, v369, 2) || advance_tok(a1, v370, v371, v372))
  {
    goto LABEL_156;
  }

  OUTLINED_FUNCTION_114_0();
  v538 = *(a1 + 2136) + v375;
  v536 = v538 + 1.0;
  v534 = v373 * 13.0 / v374 + v538 + 1.0;
  v532 = v373 * 625.0 / 1000.0 + v534;
  v376 = OUTLINED_FUNCTION_60_3();
  starttest(v376, v377);
  v378 = OUTLINED_FUNCTION_19_17();
  move_i(v378, v379, 20);
  OUTLINED_FUNCTION_4_24();
  v380 = doAV();
  LODWORD(v58) = v15;
  if (v380)
  {
    goto LABEL_26;
  }

LABEL_122:
  v381 = OUTLINED_FUNCTION_60_3();
  starttest(v381, v382);
  v383 = OUTLINED_FUNCTION_19_17();
  c_assvar(v383, v384);
  HIWORD(v526) = 25 - v5;
  v385 = OUTLINED_FUNCTION_35_8();
  v389 = addStreamArraySsVal(v385, v386, v21, v387, v388);
  LODWORD(v58) = v15;
  if (v389)
  {
    goto LABEL_26;
  }

LABEL_123:
  v390 = OUTLINED_FUNCTION_60_3();
  starttest(v390, v391);
  v392 = OUTLINED_FUNCTION_19_17();
  move_i(v392, v393, 35);
  OUTLINED_FUNCTION_65_3();
  v394 = doAV();
  LODWORD(v58) = v15;
  if (v394)
  {
    goto LABEL_26;
  }

LABEL_124:
  v395 = OUTLINED_FUNCTION_60_3();
  starttest(v395, v396);
  v397 = OUTLINED_FUNCTION_19_17();
  c_assvar(v397, v398);
  HIWORD(v526) = 45 - v5;
  v399 = addStreamArraySsVal(a1, a1 + 2008, v21, &v535, &v533);
  LODWORD(v58) = v15;
  if (!v399)
  {
LABEL_125:
    v400 = OUTLINED_FUNCTION_60_3();
    starttest(v400, v401);
    v402 = OUTLINED_FUNCTION_19_17();
    move_i(v402, v403, 5);
    OUTLINED_FUNCTION_65_3();
    v404 = doAV();
    LODWORD(v58) = v15;
    if (v404)
    {
      goto LABEL_26;
    }

LABEL_126:
    v405 = OUTLINED_FUNCTION_60_3();
    starttest(v405, v406);
    v407 = OUTLINED_FUNCTION_19_17();
    c_assvar(v407, v408);
    HIWORD(v526) = 35 - v5;
    v409 = OUTLINED_FUNCTION_66_3();
    goto LABEL_155;
  }

LABEL_26:
  while (1)
  {
    HIDWORD(v495) = 50 - v5;
    LODWORD(v495) = 40 - v5;
    v496 = 4720;
    v59 = 20 - v5;
    while (2)
    {
      v60 = *(a1 + 104);
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_74_3(v60);
        v15 = v67;
      }

      else
      {
        v61 = vback(a1, v58);
        v15 = 0;
      }

      v68 = v61 - 1;
      v69 = 0;
      v70 = 1;
      v71 = 4518;
      v58 = 4514;
      v13 = 4386;
      v14 = v15;
      v72 = v15;
      v73 = 4514;
      v74 = 1;
      v21 = v15;
      switch(v68)
      {
        case 0:
          goto LABEL_6;
        case 1:
          v12 = v15;
          goto LABEL_22;
        case 2:
          bspop_boa(a1);
          v78 = advance_tok(a1, v75, v76, v77);
          LODWORD(v58) = v15;
          if (v78)
          {
            continue;
          }

          v79 = OUTLINED_FUNCTION_61_3();
          v82 = lpta_loadp_setscan_r(v79, v80, v81);
          LODWORD(v58) = v15;
          if (v82)
          {
            continue;
          }

          v85 = advance_tok(a1, v15, v83, v84);
          LODWORD(v58) = v15;
          if (v85)
          {
            continue;
          }

          v86 = OUTLINED_FUNCTION_5_24();
          v90 = testFldeq(v86, v87, v88, v89);
          LODWORD(v58) = v15;
          if (v90)
          {
            continue;
          }

          OUTLINED_FUNCTION_26_15();
          bspush_ca_scan_boa();
          v91 = OUTLINED_FUNCTION_93_1();
          v93 = v15;
          v94 = v15;
          goto LABEL_81;
        case 3:
          bspop_boa(a1);
          v134 = advance_tok(a1, v131, v132, v133);
          LODWORD(v58) = v15;
          if (v134)
          {
            continue;
          }

          v13 = 4382;
          v14 = v15;
          goto LABEL_6;
        case 4:
          goto LABEL_7;
        case 5:
          goto LABEL_8;
        case 6:
          v21 = v15;
          goto LABEL_100;
        case 7:
          v21 = v15;
          goto LABEL_11;
        case 8:
          v27 = 3600;
          v28 = 2900;
          v21 = v15;
          goto LABEL_10;
        case 9:
          v21 = v15;
          goto LABEL_133;
        case 10:
          v21 = v15;
          goto LABEL_13;
        case 11:
          goto LABEL_18;
        case 12:
          v21 = v15;
          goto LABEL_14;
        case 13:
          v21 = v15;
          goto LABEL_113;
        case 14:
          goto LABEL_19;
        case 15:
          v21 = v15;
          goto LABEL_114;
        case 16:
          bspop_boa(a1);
          v138 = advance_tok(a1, v135, v136, v137);
          LODWORD(v58) = v15;
          if (v138)
          {
            continue;
          }

          v536 = OUTLINED_FUNCTION_71_3(*(a1 + 3400), 6.0) + 1.0;
          v139 = OUTLINED_FUNCTION_54_3();
          starttest(v139, v140);
          v141 = OUTLINED_FUNCTION_15_21();
          if (lpta_loadp_setscan_l(v141, v142, v143))
          {
            goto LABEL_48;
          }

          goto LABEL_80;
        case 17:
LABEL_48:
          v144 = OUTLINED_FUNCTION_56_3();
          starttest(v144, v145);
          v146 = OUTLINED_FUNCTION_19_17();
          move_i(v146, v147, 50);
          OUTLINED_FUNCTION_4_24();
          v14 = doAV();
          v58 = v15;
          if (!v14)
          {
            goto LABEL_49;
          }

          continue;
        case 18:
          bspop_boa(a1);
          v103 = advance_tok(a1, v100, v101, v102);
          LODWORD(v58) = v15;
          if (v103)
          {
            continue;
          }

          v104 = OUTLINED_FUNCTION_60_3();
          starttest(v104, v105);
          v106 = OUTLINED_FUNCTION_19_17();
          move_i(v106, v107, 45);
          OUTLINED_FUNCTION_4_24();
          v108 = doAV();
          LODWORD(v58) = v15;
          if (v108)
          {
            continue;
          }

          goto LABEL_40;
        case 19:
LABEL_40:
          v109 = OUTLINED_FUNCTION_57_3();
          starttest(v109, v110);
          v111 = OUTLINED_FUNCTION_19_17();
          c_assvar(v111, v112);
          HIWORD(v526) = WORD2(v495);
          v113 = OUTLINED_FUNCTION_35_8();
          v117 = addStreamArraySsVal(v113, v114, v15, v115, v116);
          LODWORD(v58) = v15;
          if (!v117)
          {
            goto LABEL_41;
          }

          continue;
        case 20:
LABEL_41:
          v118 = OUTLINED_FUNCTION_60_3();
          starttest(v118, v119);
          v120 = OUTLINED_FUNCTION_19_17();
          move_i(v120, v121, 30);
          OUTLINED_FUNCTION_9_24();
          v122 = doAV();
          LODWORD(v58) = v15;
          if (!v122)
          {
            goto LABEL_42;
          }

          continue;
        case 21:
LABEL_42:
          v123 = OUTLINED_FUNCTION_60_3();
          starttest(v123, v124);
          v125 = OUTLINED_FUNCTION_19_17();
          c_assvar(v125, v126);
          HIWORD(v526) = v495;
          goto LABEL_89;
        case 22:
        case 23:
        case 44:
        case 68:
        case 73:
          goto LABEL_163;
        case 24:
LABEL_49:
          if (OUTLINED_FUNCTION_103_0(v14, v58, v72, v62, v63, v64, v65, v66, v494, v495, v496))
          {
            v69 = 0;
          }

          else
          {
            v69 = *(a1 + 4558);
          }

          goto LABEL_85;
        case 25:
LABEL_85:
          HIWORD(v530) = v69;
          goto LABEL_86;
        case 26:
LABEL_86:
          v301 = OUTLINED_FUNCTION_35_8();
          addStreamArraySsVal(v301, v302, v303, v304, v305);
          goto LABEL_87;
        case 27:
LABEL_87:
          v306 = OUTLINED_FUNCTION_60_3();
          starttest(v306, v307);
          v308 = OUTLINED_FUNCTION_19_17();
          move_i(v308, v309, 30);
          OUTLINED_FUNCTION_9_24();
          v310 = doAV();
          LODWORD(v58) = v15;
          if (!v310)
          {
            goto LABEL_88;
          }

          continue;
        case 28:
LABEL_88:
          v311 = OUTLINED_FUNCTION_52_3();
          starttest(v311, v312);
          v313 = OUTLINED_FUNCTION_19_17();
          c_assvar(v313, v314);
          HIWORD(v526) = 20 - v5;
LABEL_89:
          v315 = OUTLINED_FUNCTION_66_3();
          v320 = addStreamArraySsVal(v315, v316, v317, v318, v319);
          LODWORD(v58) = v15;
          if (!v320)
          {
            goto LABEL_160;
          }

          continue;
        case 29:
          LODWORD(v21) = v15;
          goto LABEL_164;
        case 30:
          v21 = v15;
          goto LABEL_115;
        case 31:
          v208 = OUTLINED_FUNCTION_55_3();
          v130 = test_synch(v208, v209, 1, v210);
          goto LABEL_62;
        case 32:
          bspop_boa(a1);
          v130 = advance_tok(a1, v127, v128, v129);
LABEL_62:
          LODWORD(v58) = v15;
          if (!v130)
          {
            goto LABEL_63;
          }

          continue;
        case 33:
LABEL_63:
          v536 = OUTLINED_FUNCTION_71_3(*(a1 + 3400), 4.0) + 1.0;
          v211 = OUTLINED_FUNCTION_60_3();
          starttest(v211, v212);
          v213 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v213, v214, v215))
          {
            goto LABEL_64;
          }

          goto LABEL_69;
        case 34:
LABEL_64:
          v216 = OUTLINED_FUNCTION_60_3();
          starttest(v216, v217);
          v218 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v218, v219, v220))
          {
            goto LABEL_65;
          }

LABEL_80:
          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v91 = OUTLINED_FUNCTION_20_16();
          v93 = 2;
          goto LABEL_81;
        case 35:
LABEL_69:
          v239 = OUTLINED_FUNCTION_60_3();
          v242 = test_synch(v239, v240, 1, v241);
          LODWORD(v58) = v15;
          if (!v242)
          {
            v243 = OUTLINED_FUNCTION_60_3();
            starttest(v243, v244);
            v245 = OUTLINED_FUNCTION_19_17();
            move_i(v245, v246, 15);
            OUTLINED_FUNCTION_4_24();
            v247 = doAV();
            LODWORD(v58) = v15;
            if (!v247)
            {
              goto LABEL_71;
            }
          }

          continue;
        case 36:
LABEL_71:
          v248 = OUTLINED_FUNCTION_60_3();
          starttest(v248, v249);
          v250 = OUTLINED_FUNCTION_19_17();
          move_i(v250, v251, 15);
          v252 = OUTLINED_FUNCTION_35_8();
          v256 = addStreamArraySsVal(v252, v253, v15, v254, v255);
          LODWORD(v58) = v15;
          if (!v256)
          {
            goto LABEL_72;
          }

          continue;
        case 37:
LABEL_72:
          v257 = OUTLINED_FUNCTION_60_3();
          starttest(v257, v258);
          v259 = OUTLINED_FUNCTION_19_17();
          move_i(v259, v260, v261);
          OUTLINED_FUNCTION_4_24();
          v262 = doAF();
          LODWORD(v58) = v15;
          if (!v262)
          {
            goto LABEL_73;
          }

          continue;
        case 38:
LABEL_73:
          v263 = OUTLINED_FUNCTION_60_3();
          starttest(v263, v264);
          v265 = OUTLINED_FUNCTION_19_17();
          move_i(v265, v266, 25);
          OUTLINED_FUNCTION_9_24();
          v267 = doAV();
          LODWORD(v58) = v15;
          if (!v267)
          {
            goto LABEL_74;
          }

          continue;
        case 39:
LABEL_74:
          v268 = OUTLINED_FUNCTION_60_3();
          starttest(v268, v269);
          v270 = OUTLINED_FUNCTION_19_17();
          c_assvar(v270, v271);
          HIWORD(v526) = 55 - v5;
          OUTLINED_FUNCTION_9_24();
          v272 = doAF();
          LODWORD(v58) = v15;
          if (!v272)
          {
            goto LABEL_75;
          }

          continue;
        case 40:
LABEL_75:
          v273 = OUTLINED_FUNCTION_60_3();
          starttest(v273, v274);
          v275 = OUTLINED_FUNCTION_19_17();
          move_i(v275, v276, 65);
          v277 = OUTLINED_FUNCTION_66_3();
          v282 = addStreamArraySsVal(v277, v278, v279, v280, v281);
          LODWORD(v58) = v15;
          if (!v282)
          {
            goto LABEL_76;
          }

          continue;
        case 41:
LABEL_76:
          v283 = OUTLINED_FUNCTION_60_3();
          starttest(v283, v284);
          v285 = OUTLINED_FUNCTION_19_17();
          move_i(v285, v286, 45);
          v287 = OUTLINED_FUNCTION_66_3();
          v292 = addStreamArraySsVal(v287, v288, v289, v290, v291);
          LODWORD(v58) = v15;
          if (!v292)
          {
            goto LABEL_77;
          }

          continue;
        case 42:
LABEL_77:
          v293 = OUTLINED_FUNCTION_60_3();
          starttest(v293, v294);
          v205 = OUTLINED_FUNCTION_19_17();
          v207 = 20;
          goto LABEL_78;
        case 43:
        case 55:
          goto LABEL_92;
        case 45:
LABEL_65:
          v221 = OUTLINED_FUNCTION_60_3();
          starttest(v221, v222);
          v223 = OUTLINED_FUNCTION_19_17();
          move_i(v223, v224, 40);
          OUTLINED_FUNCTION_4_24();
          v225 = doAV();
          LODWORD(v58) = v15;
          if (!v225)
          {
            goto LABEL_66;
          }

          continue;
        case 46:
          bspop_boa(a1);
          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v91 = OUTLINED_FUNCTION_7_24();
LABEL_81:
          if (testFldeq(v91, v92, v93, v94))
          {
            LODWORD(v58) = v15;
          }

          else
          {
            LODWORD(v58) = 1;
          }

          continue;
        case 47:
          bspop_boa(a1);
          v151 = advance_tok(a1, v148, v149, v150);
          LODWORD(v58) = v15;
          if (v151)
          {
            continue;
          }

          v152 = OUTLINED_FUNCTION_60_3();
          starttest(v152, v153);
          v154 = OUTLINED_FUNCTION_19_17();
          move_i(v154, v155, 20);
          OUTLINED_FUNCTION_4_24();
          v156 = doAV();
          LODWORD(v58) = v15;
          if (v156)
          {
            continue;
          }

          goto LABEL_53;
        case 48:
LABEL_53:
          v157 = OUTLINED_FUNCTION_60_3();
          starttest(v157, v158);
          v159 = OUTLINED_FUNCTION_19_17();
          move_i(v159, v160, v161);
          v162 = OUTLINED_FUNCTION_35_8();
          v166 = addStreamArraySsVal(v162, v163, v15, v164, v165);
          LODWORD(v58) = v15;
          if (!v166)
          {
            goto LABEL_54;
          }

          continue;
        case 49:
LABEL_54:
          v167 = OUTLINED_FUNCTION_60_3();
          starttest(v167, v168);
          v169 = OUTLINED_FUNCTION_19_17();
          move_i(v169, v170, v171);
          OUTLINED_FUNCTION_4_24();
          v172 = doAF();
          LODWORD(v58) = v15;
          if (!v172)
          {
            goto LABEL_55;
          }

          continue;
        case 50:
LABEL_55:
          v173 = OUTLINED_FUNCTION_60_3();
          starttest(v173, v174);
          v175 = OUTLINED_FUNCTION_19_17();
          move_i(v175, v176, 40);
          OUTLINED_FUNCTION_9_24();
          v177 = doAV();
          LODWORD(v58) = v15;
          if (!v177)
          {
            goto LABEL_56;
          }

          continue;
        case 51:
LABEL_56:
          v178 = OUTLINED_FUNCTION_60_3();
          starttest(v178, v179);
          v180 = OUTLINED_FUNCTION_19_17();
          c_assvar(v180, v181);
          HIWORD(v526) = 55 - v5;
          OUTLINED_FUNCTION_9_24();
          v182 = doAF();
          LODWORD(v58) = v15;
          if (!v182)
          {
            goto LABEL_57;
          }

          continue;
        case 52:
LABEL_57:
          v183 = OUTLINED_FUNCTION_60_3();
          starttest(v183, v184);
          v185 = OUTLINED_FUNCTION_19_17();
          move_i(v185, v186, 65);
          v187 = OUTLINED_FUNCTION_66_3();
          v192 = addStreamArraySsVal(v187, v188, v189, v190, v191);
          LODWORD(v58) = v15;
          if (!v192)
          {
            goto LABEL_58;
          }

          continue;
        case 53:
LABEL_58:
          v193 = OUTLINED_FUNCTION_60_3();
          starttest(v193, v194);
          v195 = OUTLINED_FUNCTION_19_17();
          move_i(v195, v196, 45);
          v197 = OUTLINED_FUNCTION_66_3();
          v202 = addStreamArraySsVal(v197, v198, v199, v200, v201);
          LODWORD(v58) = v15;
          if (!v202)
          {
            goto LABEL_59;
          }

          continue;
        case 54:
LABEL_59:
          v203 = OUTLINED_FUNCTION_60_3();
          starttest(v203, v204);
          v205 = OUTLINED_FUNCTION_19_17();
LABEL_78:
          move_i(v205, v206, v207);
          v295 = OUTLINED_FUNCTION_66_3();
          v300 = addStreamArraySsVal(v295, v296, v297, v298, v299);
          LODWORD(v58) = v15;
          if (v300)
          {
            continue;
          }

LABEL_92:
          *(a1 + 4522) = 1;
          v70 = 1;
          goto LABEL_161;
        case 56:
LABEL_66:
          v226 = OUTLINED_FUNCTION_60_3();
          starttest(v226, v227);
          v228 = OUTLINED_FUNCTION_19_17();
          c_assvar(v228, v229);
          HIWORD(v526) = 30 - v5;
          v230 = OUTLINED_FUNCTION_35_8();
          v234 = addStreamArraySsVal(v230, v231, v15, v232, v233);
          LODWORD(v58) = v15;
          if (!v234)
          {
            goto LABEL_67;
          }

          continue;
        case 57:
LABEL_67:
          v235 = OUTLINED_FUNCTION_60_3();
          starttest(v235, v236);
          v237 = OUTLINED_FUNCTION_19_17();
          move_i(v237, v238, 50);
          OUTLINED_FUNCTION_9_24();
          v14 = doAV();
          v58 = v15;
          if (!v14)
          {
            goto LABEL_93;
          }

          continue;
        case 58:
LABEL_93:
          v321 = OUTLINED_FUNCTION_103_0(v14, v58, v72, v62, v63, v64, v65, v66, v494, v495, v496);
          v322 = 0;
          if (!v321)
          {
            v322 = *(a1 + 4558);
          }

          goto LABEL_158;
        case 59:
          v322 = 0;
LABEL_158:
          HIWORD(v530) = v322;
          break;
        case 60:
          goto LABEL_159;
        case 61:
          v21 = v15;
          goto LABEL_143;
        case 62:
          goto LABEL_118;
        case 63:
          goto LABEL_122;
        case 64:
          goto LABEL_123;
        case 65:
          goto LABEL_124;
        case 66:
          goto LABEL_125;
        case 67:
          goto LABEL_126;
        case 69:
          LODWORD(v21) = v15;
          goto LABEL_144;
        case 70:
          v95 = OUTLINED_FUNCTION_7_24();
          v99 = testFldeq(v95, v96, v97, v98);
          v72 = v15;
          v58 = v15;
          if (!v99)
          {
            goto LABEL_151;
          }

          continue;
        case 71:
          goto LABEL_151;
        case 72:
          goto LABEL_154;
        case 74:
          v74 = 20;
          v70 = 30;
          v71 = 4398;
          v73 = 4394;
          goto LABEL_162;
        case 75:
          LODWORD(v21) = v15;
          goto LABEL_147;
        case 76:
          goto LABEL_168;
        case 77:
          goto LABEL_169;
        default:
          goto LABEL_3;
      }

      break;
    }

LABEL_159:
    addStreamArraySsVal(a1, a1 + 2008, &v530, &v535, (a1 + 2144));
LABEL_160:
    v70 = 1;
LABEL_161:
    v71 = 4518;
    v73 = 4514;
    v74 = 1;
LABEL_162:
    LODWORD(v21) = v15;
LABEL_163:
    *(a1 + v73) = v70;
    *(a1 + v71) = v74;
LABEL_164:
    v475 = OUTLINED_FUNCTION_60_3();
    starttest(v475, v476);
    v477 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v477, v478, v479))
    {
      break;
    }

    v480 = OUTLINED_FUNCTION_59_3();
    if (testFldeq(v480, v481, 7, 1))
    {
LABEL_25:
      LODWORD(v58) = v21;
    }

    else
    {
      v485 = advance_tok(a1, v482, v483, v484);
      LODWORD(v58) = v21;
      if (!v485)
      {
        OUTLINED_FUNCTION_72_3((167 * *(a1 + 4282)));
        OUTLINED_FUNCTION_23_16(v486, v487);
        OUTLINED_FUNCTION_98_1(v488);
        OUTLINED_FUNCTION_23_16(v489, v490);
        *(a1 + 4382) = v491;
        OUTLINED_FUNCTION_23_16(*(a1 + 4294), v492);
        *(a1 + 4386) = v493;
        break;
      }
    }
  }

LABEL_168:
  add_TL_to_trill(a1, v58, v72, v62, v63, v64, v65, v66);
LABEL_169:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_R(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v184);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, SHIDWORD(v232), v234, SWORD2(v234), SHIWORD(v234), v236, SWORD2(v236), SBYTE6(v236), SHIBYTE(v236), v238, v239))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_24(a1);
  v20 = OUTLINED_FUNCTION_22_16();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_15_21();
  v25 = lpta_loadp_setscan_l(v22, v23, v24);
  v26 = 0;
  v27 = 0;
  if (v25)
  {
LABEL_5:
    v28 = OUTLINED_FUNCTION_34_9();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v30, v31, v32))
    {
      v85 = OUTLINED_FUNCTION_17_19();
      if (!testFldeq(v85, v86, v87, 1))
      {
        OUTLINED_FUNCTION_40_5();
        bspush_ca_scan_boa();
        v88 = OUTLINED_FUNCTION_5_24();
        if (testFldeq(v88, v89, v90, v91))
        {
          v27 = v27;
        }

        else
        {
          v27 = 1;
        }
      }

      goto LABEL_31;
    }

LABEL_6:
    *(a1 + 4578) = 300;
    v33 = 2700;
    v34 = 300;
    v35 = 4582;
  }

  else
  {
    while (2)
    {
      v27 = v26;
      v106 = OUTLINED_FUNCTION_28_12();
      if (test_synch(v106, v107, 1, v108))
      {
        goto LABEL_31;
      }

      *(a1 + 4582) = -2;
      *(a1 + 4590) = -2;
      *(a1 + 4598) = -2;
      *(a1 + 4606) = -2;
      *(a1 + 4578) = 500;
      *(a1 + 4602) = 3500;
      v109 = OUTLINED_FUNCTION_37_8();
      starttest(v109, v110);
      v111 = OUTLINED_FUNCTION_16_20();
      if (lpta_loadp_setscan_r(v111, v112, v113))
      {
LABEL_46:
        v114 = OUTLINED_FUNCTION_29_12();
        starttest(v114, v115);
        v116 = OUTLINED_FUNCTION_16_20();
        if (lpta_loadp_setscan_r(v116, v117, v118))
        {
LABEL_47:
          v119 = OUTLINED_FUNCTION_41_4();
          starttest(v119, v120);
          v121 = OUTLINED_FUNCTION_16_20();
          if (lpta_loadp_setscan_r(v121, v122, v123))
          {
LABEL_48:
            v124 = OUTLINED_FUNCTION_39_6();
            starttest(v124, v125);
            v126 = OUTLINED_FUNCTION_16_20();
            if (lpta_loadp_setscan_r(v126, v127, v128))
            {
LABEL_49:
              v129 = OUTLINED_FUNCTION_25_15();
              starttest(v129, v130);
              v131 = OUTLINED_FUNCTION_16_20();
              if (lpta_loadp_setscan_r(v131, v132, v133))
              {
LABEL_50:
                v134 = OUTLINED_FUNCTION_32_10();
                starttest(v134, v135);
                v136 = OUTLINED_FUNCTION_16_20();
                if (lpta_loadp_setscan_r(v136, v137, v138))
                {
LABEL_51:
                  v139 = OUTLINED_FUNCTION_43_4();
                  starttest(v139, v140);
                  v141 = OUTLINED_FUNCTION_16_20();
                  if (lpta_loadp_setscan_r(v141, v142, v143))
                  {
LABEL_52:
                    v33 = 2500;
                    v34 = 1500;
                  }

                  else
                  {
                    v182 = OUTLINED_FUNCTION_42_4();
                    bspush_ca_scan(v182, v183);
                    v98 = OUTLINED_FUNCTION_13_23();
                    v101 = 30;
LABEL_38:
                    v102 = testFldeq(v98, v99, v100, v101);
                    v59 = v27;
                    if (v102)
                    {
                      goto LABEL_31;
                    }

LABEL_39:
                    v27 = v59;
                    if (advance_tok(a1, v59, v36, v60))
                    {
LABEL_31:
                      v92 = *(a1 + 104);
                      if (v92)
                      {
                        v93 = OUTLINED_FUNCTION_49_3(v92);
                      }

                      else
                      {
                        v93 = vback(a1, v27);
                        v27 = 0;
                      }

                      v59 = v27;
                      v36 = v27;
                      switch(v93)
                      {
                        case 1:
                          goto LABEL_5;
                        case 2:
                          v26 = v27;
                          continue;
                        case 3:
                          goto LABEL_46;
                        case 4:
                        case 13:
                          goto LABEL_8;
                        case 5:
                          goto LABEL_47;
                        case 6:
                          goto LABEL_48;
                        case 7:
                          goto LABEL_49;
                        case 8:
                          goto LABEL_50;
                        case 9:
                          goto LABEL_51;
                        case 10:
                          goto LABEL_52;
                        case 11:
                          v98 = OUTLINED_FUNCTION_13_23();
                          v101 = 37;
                          goto LABEL_38;
                        case 12:
                          goto LABEL_39;
                        case 14:
                          goto LABEL_6;
                        case 15:
                          bspop_boa(a1);
                          v97 = advance_tok(a1, v94, v95, v96);
                          v36 = v27;
                          if (!v97)
                          {
                            goto LABEL_8;
                          }

                          goto LABEL_31;
                        case 16:
                          goto LABEL_9;
                        case 17:
                          goto LABEL_13;
                        case 18:
                          goto LABEL_10;
                        case 19:
                          goto LABEL_41;
                        case 20:
                          goto LABEL_14;
                        case 21:
                          goto LABEL_25;
                        case 22:
                          goto LABEL_26;
                        default:
                          goto LABEL_3;
                      }
                    }

                    v33 = 2300;
                    v34 = 1100;
                  }
                }

                else
                {
                  v176 = OUTLINED_FUNCTION_13_23();
                  if (testFldeq(v176, v177, v178, 38) || advance_tok(a1, v179, v180, v181))
                  {
                    goto LABEL_31;
                  }

                  v33 = 2800;
                  v34 = 850;
                }
              }

              else
              {
                v169 = OUTLINED_FUNCTION_8_24();
                if (testFldeq(v169, v170, v171, v172) || advance_tok(a1, v173, v174, v175))
                {
                  goto LABEL_31;
                }

                v33 = 2500;
                v34 = 900;
              }
            }

            else
            {
              v163 = OUTLINED_FUNCTION_13_23();
              if (testFldeq(v163, v164, v165, 34) || advance_tok(a1, v166, v167, v168))
              {
                goto LABEL_31;
              }

              v33 = 2400;
              v34 = 1000;
            }
          }

          else
          {
            v157 = OUTLINED_FUNCTION_13_23();
            if (testFldeq(v157, v158, v159, 39) || advance_tok(a1, v160, v161, v162))
            {
              goto LABEL_31;
            }

            v33 = 2400;
            v34 = 1400;
          }
        }

        else
        {
          v151 = OUTLINED_FUNCTION_13_23();
          if (testFldeq(v151, v152, v153, 32) || advance_tok(a1, v154, v155, v156))
          {
            goto LABEL_31;
          }

          v33 = 2350;
          v34 = 1250;
        }
      }

      else
      {
        v144 = OUTLINED_FUNCTION_3_25();
        if (testFldeq(v144, v145, v146, v147) || advance_tok(a1, v148, v149, v150))
        {
          goto LABEL_31;
        }

        v33 = 2450;
        v34 = 1750;
      }

      break;
    }

    v35 = 4586;
  }

  *(a1 + v35) = v34;
  *(a1 + 4594) = v33;
  v36 = v27;
LABEL_8:
  v27 = v36;
  *(a1 + 4386) = 100;
  *(a1 + 4430) = 40;
  *(a1 + 4422) = 60;
  v37 = OUTLINED_FUNCTION_46_4();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v39, v40, v41))
  {
LABEL_9:
    v42 = OUTLINED_FUNCTION_54_3();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v44, v45, v46))
    {
LABEL_10:
      v47 = 5;
    }

    else
    {
LABEL_41:
      v103 = OUTLINED_FUNCTION_53_3();
      if (test_synch(v103, v104, 1, v105))
      {
        goto LABEL_31;
      }

      v47 = 10;
    }

    v48 = 50;
  }

  else
  {
    v73 = OUTLINED_FUNCTION_20_16();
    if (testFldeq(v73, v74, 2, v75) || advance_tok(a1, v76, v77, v78))
    {
      goto LABEL_31;
    }

    v47 = 30;
    v48 = 60;
  }

  *(a1 + 4402) = v48;
  *(a1 + 4394) = v47;
LABEL_13:
  v49 = OUTLINED_FUNCTION_60_3();
  starttest(v49, v50);
  v51 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v51, v52, v53))
  {
    v79 = OUTLINED_FUNCTION_13_23();
    if (!testFldeq(v79, v80, v81, 33) && !advance_tok(a1, v82, v83, v84))
    {
      v72 = 40;
      goto LABEL_24;
    }

    goto LABEL_31;
  }

LABEL_14:
  v54 = OUTLINED_FUNCTION_57_3();
  starttest(v54, v55);
  v56 = OUTLINED_FUNCTION_16_20();
  if (lpta_loadp_setscan_r(v56, v57, v58))
  {
    goto LABEL_25;
  }

  v65 = OUTLINED_FUNCTION_3_25();
  if (testFldeq(v65, v66, v67, v68) || advance_tok(a1, v69, v70, v71))
  {
    goto LABEL_31;
  }

  v72 = 60;
LABEL_24:
  *(a1 + 4426) = v72;
LABEL_25:
  add_TL_to_trill(a1, v59, v36, v60, v61, v62, v63, v64);
LABEL_26:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_f(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, SHIDWORD(v70), v72, SWORD2(v72), SHIWORD(v72), v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v77))
  {
    v19 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_24_16();
    a1[2291] = v21;
    a1[2201] = 60;
    a1[2219] = 60;
    por_labial_Fv(a1);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t por_ph_v(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v20);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, SHIDWORD(v68), v70, SWORD2(v70), SHIWORD(v70), v72, SWORD2(v72), SBYTE6(v72), SHIBYTE(v72), v74, v75))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_24(a1);
    OUTLINED_FUNCTION_87_2(250);
    a1[2201] = 55;
    a1[2219] = 60;
    a1[2197] = 35;
    if (!OUTLINED_FUNCTION_50_3())
    {
      OUTLINED_FUNCTION_59_3();
      if (!test_string_s())
      {
        a1[2185] = 1;
      }
    }

    por_labial_Fv(a1);
    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_s(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v49);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, SHIDWORD(v97), v99, SWORD2(v99), SHIWORD(v99), v101, SWORD2(v101), SBYTE6(v101), SHIBYTE(v101), v103, v104))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_24_16();
    a1[2291] = v20;
    a1[2201] = 60;
    a1[2217] = 50;
    a1[2213] = 20;
    a1[2211] = 10;
    por_dental_Fv(a1, v21, v22, v23, v24, v25, v26, v27);
    v28 = OUTLINED_FUNCTION_27_13(3);
    if (!if_testeq_v_i(v28, v29, 11025, v30, v31, v32, v33, v34))
    {
      v35 = OUTLINED_FUNCTION_27_13(4);
      if (!if_testeq_v_i(v35, v36, 1, v37, v38, v39, v40, v41))
      {
        v42 = OUTLINED_FUNCTION_27_13(5);
        if (!if_testgt_v_i(v42, v43, 30, v44, v45, v46, v47, v48))
        {
          a1[2213] = a1[2215];
          a1[2215] = 65;
        }
      }
    }

    modulate_noise(a1);
    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_z(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v48);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, SHIDWORD(v96), v98, SWORD2(v98), SHIWORD(v98), v100, SWORD2(v100), SBYTE6(v100), SHIBYTE(v100), v102, v103))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_24(a1);
    OUTLINED_FUNCTION_87_2(250);
    a1[2201] = 55;
    a1[2197] = 35;
    a1[2217] = 40;
    a1[2213] = 15;
    a1[2211] = 10;
    if (!OUTLINED_FUNCTION_50_3())
    {
      OUTLINED_FUNCTION_59_3();
      if (!test_string_s())
      {
        a1[2185] = 1;
      }
    }

    por_dental_Fv(a1, v20, v21, v22, v23, v24, v25, v26);
    v27 = OUTLINED_FUNCTION_27_13(3);
    if (!if_testeq_v_i(v27, v28, 11025, v29, v30, v31, v32, v33))
    {
      v34 = OUTLINED_FUNCTION_27_13(4);
      if (!if_testeq_v_i(v34, v35, 1, v36, v37, v38, v39, v40))
      {
        v41 = OUTLINED_FUNCTION_27_13(5);
        if (!if_testgt_v_i(v41, v42, 30, v43, v44, v45, v46, v47))
        {
          a1[2213] = a1[2215];
          a1[2215] = 55;
        }
      }
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_S(_WORD *a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v41);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, SHIDWORD(v89), v91, SWORD2(v91), SHIWORD(v91), v93, SWORD2(v93), SBYTE6(v93), SHIBYTE(v93), v95, v96))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_24_16();
    a1[2201] = 60;
    a1[2213] = 62;
    a1[2215] = 59;
    por_pal_Fv(a1);
    v20 = OUTLINED_FUNCTION_27_13(3);
    if (!if_testeq_v_i(v20, v21, 11025, v22, v23, v24, v25, v26))
    {
      v27 = OUTLINED_FUNCTION_27_13(4);
      if (!if_testeq_v_i(v27, v28, 1, v29, v30, v31, v32, v33))
      {
        v34 = OUTLINED_FUNCTION_27_13(5);
        if (!if_testgt_v_i(v34, v35, 30, v36, v37, v38, v39, v40))
        {
          a1[2211] = a1[2213];
        }
      }
    }

    modulate_noise(a1);
    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_Z(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v73);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, SHIDWORD(v121), v123, SWORD2(v123), SHIWORD(v123), v125, SWORD2(v125), SBYTE6(v125), SHIBYTE(v125), v127, v128))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  OUTLINED_FUNCTION_24_16();
  v20 = OUTLINED_FUNCTION_22_16();
  starttest_l(v20, v21);
  v22 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v22, v23, v24))
  {
    v40 = OUTLINED_FUNCTION_1_26();
    if (testFldeq(v40, v41, v42, v43) || advance_tok(a1, v44, v45, v46))
    {
LABEL_8:
      while (2)
      {
        v35 = *(a1 + 104);
        if (v35)
        {
          v36 = OUTLINED_FUNCTION_74_3(v35);
        }

        else
        {
          v37 = OUTLINED_FUNCTION_84_2();
          v36 = vback(v37, v38);
        }

        v39 = 50;
        switch(v36)
        {
          case 1:
            goto LABEL_5;
          case 2:
            goto LABEL_17;
          case 3:
            OUTLINED_FUNCTION_17_19();
            if (!test_string_s())
            {
              goto LABEL_13;
            }

            continue;
          case 4:
            goto LABEL_7;
          case 5:
            goto LABEL_18;
          case 6:
            goto LABEL_19;
          case 7:
            goto LABEL_21;
          case 8:
            goto LABEL_23;
          case 9:
            goto LABEL_26;
          case 10:
            goto LABEL_27;
          case 11:
            goto LABEL_31;
          case 12:
            goto LABEL_32;
          default:
            goto LABEL_3;
        }
      }
    }

    *(a1 + 4578) = 250;
  }

LABEL_5:
  OUTLINED_FUNCTION_91_1(1750);
  OUTLINED_FUNCTION_89_2(2900);
  OUTLINED_FUNCTION_97_1(3500);
  *(a1 + 4610) = 4300;
  v25 = OUTLINED_FUNCTION_28_12();
  starttest(v25, v26);
  v27 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v27, v28, v29))
  {
LABEL_17:
    v39 = 60;
  }

  else
  {
    v30 = OUTLINED_FUNCTION_37_8();
    bspush_ca_scan(v30, v31);
LABEL_7:
    v32 = OUTLINED_FUNCTION_60_3();
    if (test_synch(v32, v33, 1, v34))
    {
      goto LABEL_8;
    }

LABEL_13:
    v39 = 50;
  }

LABEL_18:
  *(a1 + 4402) = v39;
LABEL_19:
  *(a1 + 4426) = 65;
  *(a1 + 4430) = 60;
  v47 = OUTLINED_FUNCTION_15_21();
  if (lpta_loadp_setscan_l(v47, v48, v49) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
  {
LABEL_21:
    v50 = 30;
    v51 = 4394;
  }

  else
  {
    *(a1 + 4394) = 40;
    v50 = 50;
    v51 = 4402;
  }

  *(a1 + v51) = v50;
LABEL_23:
  if (!OUTLINED_FUNCTION_50_3())
  {
    OUTLINED_FUNCTION_59_3();
    if (!test_string_s())
    {
      *(a1 + 4370) = 1;
    }
  }

LABEL_26:
  por_pal_Fv(a1);
LABEL_27:
  v52 = OUTLINED_FUNCTION_27_13(3);
  if (!if_testeq_v_i(v52, v53, 11025, v54, v55, v56, v57, v58))
  {
    v59 = OUTLINED_FUNCTION_27_13(4);
    if (!if_testeq_v_i(v59, v60, 1, v61, v62, v63, v64, v65))
    {
      v66 = OUTLINED_FUNCTION_27_13(5);
      if (!if_testgt_v_i(v66, v67, 30, v68, v69, v70, v71, v72))
      {
        *(a1 + 4422) = *(a1 + 4426);
      }
    }
  }

LABEL_31:
  modulate_noise(a1);
LABEL_32:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_n(uint64_t a1)
{
  v243 = *MEMORY[0x277D85DE8];
  v238[0] = 0;
  v238[1] = 0;
  v237 = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(v236, v2);
  OUTLINED_FUNCTION_69_3();
  bzero(v242, v3);
  if (setjmp(v242) || ventproc(a1, v236, v241, v240, v239, v242))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v5 = OUTLINED_FUNCTION_65_3();
  push_ptr_init(v5, v6);
  v237 = 0xFFFC0000FFFCLL;
  OUTLINED_FUNCTION_24_16();
  por_dental_Fv(a1, v7, v8, v9, v10, v11, v12, v13);
  v14 = 0;
LABEL_5:
  *(a1 + 4602) = 3800;
  *(a1 + 4606) = 3800;
  starttest(a1, 2);
  v15 = OUTLINED_FUNCTION_63_3();
  v17 = lpta_loadp_setscan_l(v15, v16, 4);
  v18 = v14;
  if (!v17)
  {
LABEL_14:
    v14 = v18;
    savescptr(a1, 3, v238);
    v39 = OUTLINED_FUNCTION_44_4();
    if (!testFldeq(v39, v40, v41, 0) && !advance_tok(a1, v42, v43, v44))
    {
      v45 = OUTLINED_FUNCTION_65_3();
      if (!lpta_loadp_setscan_r(v45, v46, 4) && !advance_tok(a1, v47, v48, v49))
      {
        v50 = OUTLINED_FUNCTION_77_3();
        if (!testFldeq(v50, v51, 0, 40) && !advance_tok(a1, v52, v53, v54))
        {
          v55 = 42;
          goto LABEL_113;
        }
      }
    }

    goto LABEL_111;
  }

LABEL_6:
  v19 = v14;
  v20 = OUTLINED_FUNCTION_29_12();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_63_3();
  if (lpta_loadp_setscan_l(v22, v23, 4))
  {
LABEL_81:
    v174 = OUTLINED_FUNCTION_25_15();
    starttest(v174, v175);
    OUTLINED_FUNCTION_100_0();
    if (!v176)
    {
      v177 = OUTLINED_FUNCTION_63_3();
      v179 = lpta_loadp_setscan_l(v177, v178, 4);
      v180 = v19;
      if (!v179)
      {
LABEL_105:
        v14 = v180;
        savescptr(a1, 9, v238);
        v216 = OUTLINED_FUNCTION_44_4();
        if (!testFldeq(v216, v217, v218, v219) && !advance_tok(a1, v220, v221, v222))
        {
          v223 = OUTLINED_FUNCTION_65_3();
          if (!lpta_loadp_setscan_r(v223, v224, 4) && !advance_tok(a1, v225, v226, v227))
          {
            v228 = OUTLINED_FUNCTION_44_4();
            if (!testFldeq(v228, v229, v230, v231) && !advance_tok(a1, v232, v233, v234))
            {
              v55 = 47;
              goto LABEL_113;
            }
          }
        }

        goto LABEL_111;
      }
    }

LABEL_83:
    starttest(a1, 10);
    v181 = OUTLINED_FUNCTION_64_3();
    v14 = v19;
    if (lpta_loadp_setscan_l(v181, v182, 4))
    {
LABEL_84:
      starttest(a1, 14);
      v183 = OUTLINED_FUNCTION_64_3();
      v14 = v19;
      if (lpta_loadp_setscan_l(v183, v184, 4))
      {
LABEL_85:
        *(a1 + 4394) = 48;
        v14 = v19;
        goto LABEL_21;
      }

LABEL_92:
      savescptr(a1, 15, v238);
      if (advance_tok(a1, v197, v198, v199))
      {
        goto LABEL_111;
      }

      bspush_ca_scan(a1, 16);
      v74 = v14;
LABEL_94:
      v14 = v74;
      v200 = OUTLINED_FUNCTION_44_4();
      if (testFldeq(v200, v201, v202, v203))
      {
        goto LABEL_111;
      }

      if (advance_tok(a1, v204, v205, v206))
      {
        goto LABEL_111;
      }

      v207 = OUTLINED_FUNCTION_65_3();
      if (lpta_loadp_setscan_r(v207, v208, 4))
      {
        goto LABEL_111;
      }

      bspush_ca_scan(a1, 18);
      v139 = v14;
LABEL_98:
      v14 = v139;
    }

    else
    {
LABEL_86:
      savescptr(a1, 11, v238);
      if (advance_tok(a1, v185, v186, v187))
      {
        goto LABEL_111;
      }

      v188 = OUTLINED_FUNCTION_44_4();
      if (testFldeq(v188, v189, v190, v191))
      {
        goto LABEL_111;
      }

      if (advance_tok(a1, v192, v193, v194))
      {
        goto LABEL_111;
      }

      v195 = OUTLINED_FUNCTION_65_3();
      if (lpta_loadp_setscan_r(v195, v196, 4))
      {
        goto LABEL_111;
      }

      bspush_ca_scan(a1, 12);
      v73 = v14;
LABEL_91:
      v14 = v73;
    }

    v209 = OUTLINED_FUNCTION_44_4();
    if (testFldeq(v209, v210, v211, v212) || advance_tok(a1, v213, v214, v215))
    {
      goto LABEL_111;
    }

    *(a1 + 4514) = 1;
    goto LABEL_21;
  }

LABEL_7:
  savescptr(a1, 6, v238);
  v24 = OUTLINED_FUNCTION_44_4();
  if (testFldeq(v24, v25, v26, v27))
  {
    goto LABEL_111;
  }

  if (advance_tok(a1, v28, v29, v30))
  {
    goto LABEL_111;
  }

  v31 = OUTLINED_FUNCTION_65_3();
  if (lpta_loadp_setscan_r(v31, v32, 4) || advance_tok(a1, v33, v34, v35))
  {
    goto LABEL_111;
  }

  bspush_ca_scan_boa();
  v36 = OUTLINED_FUNCTION_68_3();
  if (testFldeq(v36, 4u, 2, v37))
  {
    LODWORD(v38) = v14;
  }

  else
  {
    LODWORD(v38) = 1;
  }

  do
  {
    while (1)
    {
      do
      {
        while (2)
        {
          v137 = *(a1 + 104);
          if (v137)
          {
            v138 = OUTLINED_FUNCTION_74_3(v137);
            v14 = v38;
          }

          else
          {
            v138 = vback(a1, v38);
            v14 = 0;
          }

          v73 = v14;
          v74 = v14;
          v139 = v14;
          v75 = v14;
          switch(v138)
          {
            case 1:
              goto LABEL_5;
            case 2:
              goto LABEL_6;
            case 3:
              v18 = v14;
              goto LABEL_14;
            case 4:
              goto LABEL_21;
            case 5:
              v19 = v14;
              goto LABEL_81;
            case 6:
              goto LABEL_7;
            case 7:
              bspop_boa(a1);
              v143 = advance_tok(a1, v140, v141, v142);
              LODWORD(v38) = v14;
              if (v143)
              {
                continue;
              }

              v55 = 45;
              break;
            case 8:
              v19 = v14;
              goto LABEL_83;
            case 9:
              v180 = v14;
              goto LABEL_105;
            case 10:
              v19 = v14;
              goto LABEL_84;
            case 11:
              goto LABEL_86;
            case 12:
              v144 = OUTLINED_FUNCTION_20_16();
              v147 = testFldeq(v144, v145, 2, v146);
              LODWORD(v38) = v14;
              if (!v147)
              {
                OUTLINED_FUNCTION_59_3();
                OUTLINED_FUNCTION_119_0();
                v152 = testFldeq(v148, v149, v150, v151);
                LODWORD(v38) = v14;
                if (!v152)
                {
                  v155 = advance_tok(a1, v14, v153, v154);
                  v73 = v14;
                  LODWORD(v38) = v14;
                  if (!v155)
                  {
                    goto LABEL_91;
                  }
                }
              }

              continue;
            case 13:
              goto LABEL_91;
            case 14:
              v19 = v14;
              goto LABEL_85;
            case 15:
              goto LABEL_92;
            case 16:
              v156 = OUTLINED_FUNCTION_13_23();
              v159 = testFldeq(v156, v157, v158, 16);
              LODWORD(v38) = v14;
              if (!v159)
              {
                v162 = advance_tok(a1, v14, v160, v161);
                v74 = v14;
                LODWORD(v38) = v14;
                if (!v162)
                {
                  goto LABEL_94;
                }
              }

              continue;
            case 17:
              goto LABEL_94;
            case 18:
              v163 = OUTLINED_FUNCTION_13_23();
              v166 = testFldeq(v163, v164, v165, 16);
              LODWORD(v38) = v14;
              if (!v166)
              {
                v169 = advance_tok(a1, v14, v167, v168);
                v139 = v14;
                LODWORD(v38) = v14;
                if (!v169)
                {
                  goto LABEL_98;
                }
              }

              continue;
            case 19:
              goto LABEL_98;
            case 20:
              goto LABEL_28;
            case 21:
              v170 = OUTLINED_FUNCTION_13_23();
              v173 = testFldeq(v170, v171, v172, 40);
              v75 = v14;
              v38 = v14;
              if (!v173)
              {
                goto LABEL_26;
              }

              continue;
            case 22:
              goto LABEL_26;
            case 23:
              goto LABEL_40;
            case 24:
              goto LABEL_30;
            case 25:
              goto LABEL_37;
            case 26:
              goto LABEL_41;
            case 27:
              v105 = v14;
              goto LABEL_47;
            case 28:
              v109 = v14;
              goto LABEL_42;
            case 29:
              goto LABEL_53;
            case 30:
            case 31:
            case 32:
              goto LABEL_115;
            case 33:
              goto LABEL_118;
            default:
              goto LABEL_3;
          }

          break;
        }

LABEL_113:
        *(a1 + 4394) = v55;
LABEL_21:
        starttest(a1, 20);
        v56 = OUTLINED_FUNCTION_63_3();
        if (lpta_loadp_setscan_r(v56, v57, 4))
        {
          goto LABEL_28;
        }

        v58 = OUTLINED_FUNCTION_77_3();
        if (npush_fld(v58, v59, 8u))
        {
          goto LABEL_111;
        }

        npush_i(a1);
        if (if_testeq(a1, v60, v61, v62, v63, v64, v65, v66) || advance_tok(a1, v67, v68, v69))
        {
          goto LABEL_111;
        }

        bspush_ca_scan(a1, 21);
        v70 = OUTLINED_FUNCTION_77_3();
        v72 = testFldeq(v70, v71, 1, 1);
        v38 = v14;
        v75 = v14;
      }

      while (v72);
LABEL_26:
      LODWORD(v14) = v75;
      if (advance_tok(a1, v38, v73, v74))
      {
        goto LABEL_111;
      }

      *(a1 + 4394) -= 2;
LABEL_28:
      *(a1 + 4414) = *(a1 + 4410) + 150;
      OUTLINED_FUNCTION_98_1(3 * *(a1 + 4286));
      OUTLINED_FUNCTION_101_0(6 * v76);
      *(a1 + 4382) = v77;
      *(a1 + 4722) = 4;
      if (if_testeq_v_i(a1, (a1 + 4720), 1, v78, v79, v80, v81, v82))
      {
        goto LABEL_40;
      }

      *(a1 + 4722) = 5;
      if (!if_testgt_v_i(a1, (a1 + 4720), 30, v83, v84, v85, v86, v87))
      {
        v97 = *(a1 + 4410);
LABEL_36:
        *(a1 + 4414) = v97;
        goto LABEL_37;
      }

LABEL_30:
      starttest(a1, 25);
      v88 = OUTLINED_FUNCTION_63_3();
      if (!lpta_loadp_setscan_l(v88, v89, 4))
      {
        v90 = OUTLINED_FUNCTION_77_3();
        if (testFldeq(v90, v91, 6, 1))
        {
          goto LABEL_111;
        }

        v92 = OUTLINED_FUNCTION_77_3();
        if (testFldeq(v92, v93, 5, 5) || advance_tok(a1, v94, v95, v96))
        {
          goto LABEL_111;
        }

        OUTLINED_FUNCTION_115_0();
        goto LABEL_36;
      }

LABEL_37:
      OUTLINED_FUNCTION_118_0();
      if (v100 == v101)
      {
        *(a1 + 4406) = v99;
      }

      LODWORD(v14) = v98;
LABEL_40:
      starttest(a1, 26);
      v102 = OUTLINED_FUNCTION_63_3();
      v104 = lpta_loadp_setscan_l(v102, v103, 4);
      v105 = v14;
      if (!v104)
      {
LABEL_47:
        LODWORD(v14) = v105;
        savescptr(a1, 27, v238);
        v113 = OUTLINED_FUNCTION_44_4();
        if (testFldeq(v113, v114, v115, 0))
        {
          goto LABEL_111;
        }

        if (advance_tok(a1, v116, v117, v118))
        {
          goto LABEL_111;
        }

        v119 = OUTLINED_FUNCTION_65_3();
        if (lpta_loadp_setscan_r(v119, v120, 4))
        {
          goto LABEL_111;
        }

        if (advance_tok(a1, v121, v122, v123))
        {
          goto LABEL_111;
        }

        OUTLINED_FUNCTION_77_3();
        if (test_string_s())
        {
          goto LABEL_111;
        }

        modulate_nas_AV(a1);
      }

LABEL_41:
      starttest(a1, 28);
      v106 = OUTLINED_FUNCTION_63_3();
      v108 = lpta_loadp_setscan_l(v106, v107, 4);
      v109 = v14;
      if (v108)
      {
        break;
      }

LABEL_53:
      savescptr(a1, 29, v238);
      v124 = OUTLINED_FUNCTION_44_4();
      if (!testFldeq(v124, v125, v126, 0) && !advance_tok(a1, v127, v128, v129))
      {
        v130 = OUTLINED_FUNCTION_65_3();
        if (!lpta_loadp_setscan_r(v130, v131, 4) && !advance_tok(a1, v132, v133, v134))
        {
          OUTLINED_FUNCTION_77_3();
          if (!test_string_s())
          {
            v135 = OUTLINED_FUNCTION_60_3();
            starttest_e(v135, v136);
            c_assvar(a1, &v237 + 2);
            HIWORD(v237) = *(a1 + 4394) - 2;
            c_assvar(a1, &v237);
            WORD1(v237) = *(a1 + 4394) - 4;
            v110 = a1;
            v111 = &v237 + 2;
            goto LABEL_45;
          }
        }
      }

LABEL_111:
      LODWORD(v38) = v14;
    }

LABEL_42:
    LODWORD(v14) = v109;
    if (lpta_loadp_setscan_r(a1, a1 + 1624, 4))
    {
      break;
    }

    OUTLINED_FUNCTION_77_3();
    if (test_string_s())
    {
      break;
    }

    starttest_e(a1, 32);
    move_i(a1, &v237, 45);
    move_i(a1, &v237 + 4, 45);
    v110 = a1;
    v111 = &v237;
LABEL_45:
    v112 = final_voiced_release(v110, v111);
    LODWORD(v38) = v14;
  }

  while (v112);
LABEL_115:
  OUTLINED_FUNCTION_96_1();
  if (v100 == v101)
  {
    OUTLINED_FUNCTION_105_0();
    if (v100 == v101)
    {
      OUTLINED_FUNCTION_21_16(v235);
    }
  }

LABEL_118:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_m(uint64_t a1)
{
  v355 = *MEMORY[0x277D85DE8];
  v342 = 0;
  v343 = 0;
  v341 = 0;
  OUTLINED_FUNCTION_70_3();
  bzero(v340, v2);
  OUTLINED_FUNCTION_69_3();
  v3 = v354;
  bzero(v354, v4);
  v5 = setjmp(v354);
  if (v5 || OUTLINED_FUNCTION_104_0(v5, v6, v7, v8, v9, v10, v11, v12, v338, v340[0], v340[1], v340[2], v340[3], v340[4], v340[5], v340[6], v340[7], v340[8], v340[9], v340[10], v340[11], v340[12], v340[13], v340[14], v340[15], v340[16], v340[17], v340[18], v340[19], v340[20], v340[21], v340[22], v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  push_ptr_init(a1, &v342);
  v341 = 0xFFFC0000FFFCLL;
  fence_24(a1);
  v14 = OUTLINED_FUNCTION_22_16();
  starttest(v14, v15);
  v16 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v16, v17, v18))
  {
    v20 = OUTLINED_FUNCTION_1_26();
    if (testFldeq(v20, v21, v22, v23))
    {
      v27 = 0;
    }

    else
    {
      v28 = advance_tok(a1, v24, v25, v26);
      v27 = 0;
      if (!v28)
      {
        v19 = 200;
        v3 = 0;
        goto LABEL_30;
      }
    }

LABEL_10:
    while (2)
    {
      v29 = *(a1 + 104);
      if (v29)
      {
        v30 = OUTLINED_FUNCTION_49_3(v29);
      }

      else
      {
        v30 = vback(a1, v27);
        v3 = 0;
      }

      v31 = v30 - 1;
      v32 = 49;
      v33 = v3;
      v34 = v3;
      v35 = 4394;
      v36 = v3;
      switch(v31)
      {
        case 0:
          v19 = 250;
          goto LABEL_30;
        case 1:
          goto LABEL_31;
        case 2:
          goto LABEL_32;
        case 3:
          goto LABEL_34;
        case 4:
          goto LABEL_43;
        case 5:
          goto LABEL_36;
        case 6:
          v90 = v3;
          goto LABEL_44;
        case 7:
          goto LABEL_57;
        case 8:
          goto LABEL_66;
        case 9:
          v65 = v3;
          goto LABEL_45;
        case 10:
          goto LABEL_60;
        case 11:
          goto LABEL_47;
        case 12:
          v105 = v3;
          goto LABEL_117;
        case 13:
          v112 = v3;
          goto LABEL_48;
        case 14:
          goto LABEL_80;
        case 15:
          v37 = OUTLINED_FUNCTION_13_23();
          v40 = testFldeq(v37, v38, v39, 15);
          v27 = v3;
          if (!v40)
          {
            advance_tok(a1, v3, v41, v42);
            OUTLINED_FUNCTION_90_2();
            if (!v43)
            {
              goto LABEL_82;
            }
          }

          continue;
        case 16:
          goto LABEL_82;
        case 17:
          v48 = OUTLINED_FUNCTION_13_23();
          v51 = testFldeq(v48, v49, v50, 15);
          v27 = v3;
          if (!v51)
          {
            advance_tok(a1, v3, v52, v53);
            OUTLINED_FUNCTION_94_1();
            if (!v54)
            {
              goto LABEL_86;
            }
          }

          continue;
        case 18:
          goto LABEL_86;
        case 19:
          v64 = v3;
          goto LABEL_49;
        case 20:
          goto LABEL_107;
        case 21:
          bspop_boa(a1);
          OUTLINED_FUNCTION_60_3();
          bspush_ca_scan_boa();
          v59 = OUTLINED_FUNCTION_13_23();
          testFldeq(v59, v60, v61, 40);
          OUTLINED_FUNCTION_113_0();
          continue;
        case 22:
          bspop_boa(a1);
          v47 = advance_tok(a1, v44, v45, v46);
          v27 = v3;
          if (!v47)
          {
            goto LABEL_59;
          }

          continue;
        case 23:
          goto LABEL_65;
        case 24:
          goto LABEL_50;
        case 25:
          goto LABEL_67;
        case 26:
          v62 = v3;
          goto LABEL_74;
        case 27:
          goto LABEL_93;
        case 28:
          goto LABEL_69;
        case 29:
          goto LABEL_91;
        case 30:
          goto LABEL_94;
        case 31:
          v63 = v3;
          goto LABEL_101;
        case 32:
          goto LABEL_95;
        case 33:
          v241 = v3;
          goto LABEL_126;
        case 34:
        case 35:
        case 36:
          goto LABEL_97;
        case 37:
          goto LABEL_135;
        case 38:
          bspop_boa(a1);
          v58 = advance_tok(a1, v55, v56, v57);
          v27 = v3;
          if (v58)
          {
            continue;
          }

          OUTLINED_FUNCTION_106_0();
          if (v327 == v328 && *(a1 + 4590) >= 1)
          {
            OUTLINED_FUNCTION_38_7(v329);
            OUTLINED_FUNCTION_102_0(v330);
          }

          break;
        case 39:
          goto LABEL_138;
        default:
          goto LABEL_3;
      }

      goto LABEL_135;
    }
  }

  v19 = 250;
  v3 = 0;
LABEL_30:
  *(a1 + 4578) = v19;
LABEL_31:
  por_labial_Fv(a1);
LABEL_32:
  v66 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v66, v67, v68))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      v79 = 3300;
      *(a1 + 4578) = 175;
      v76 = 2600;
      *(a1 + 4582) = 175;
      v80 = 4606;
      v77 = 4602;
      v78 = 4598;
      v75 = 4594;
      v81 = 2600;
LABEL_41:
      v82 = v3;
LABEL_42:
      *(a1 + v75) = v76;
      *(a1 + v78) = v81;
      *(a1 + v77) = v79;
      *(a1 + v80) = v79;
      v3 = v82;
      goto LABEL_43;
    }
  }

LABEL_34:
  v69 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v69, v70, v71))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_92_1();
      goto LABEL_41;
    }
  }

LABEL_36:
  v72 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v72, v73, v74))
  {
    OUTLINED_FUNCTION_17_19();
    test_string_s();
    OUTLINED_FUNCTION_92_1();
    v81 = v76;
    v82 = v3;
    if (!v83)
    {
      goto LABEL_42;
    }
  }

LABEL_43:
  v84 = OUTLINED_FUNCTION_39_6();
  starttest(v84, v85);
  v86 = OUTLINED_FUNCTION_15_21();
  v89 = lpta_loadp_setscan_r(v86, v87, v88);
  v90 = v3;
  if (!v89)
  {
LABEL_57:
    v145 = OUTLINED_FUNCTION_25_15();
    if (test_synch(v145, v146, 1, v147))
    {
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_59_3();
    if (test_string_s())
    {
      goto LABEL_123;
    }

    goto LABEL_59;
  }

LABEL_44:
  v91 = v90;
  v92 = OUTLINED_FUNCTION_43_4();
  starttest(v92, v93);
  v94 = OUTLINED_FUNCTION_15_21();
  v97 = lpta_loadp_setscan_r(v94, v95, v96);
  v3 = v91;
  v65 = v91;
  if (!v97)
  {
LABEL_60:
    v148 = OUTLINED_FUNCTION_42_4();
    if (test_synch(v148, v149, 1, v150))
    {
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_17_19();
    if (test_string_s())
    {
      goto LABEL_123;
    }

    goto LABEL_62;
  }

LABEL_45:
  v3 = v65;
  v98 = OUTLINED_FUNCTION_58_3();
  starttest(v98, v99);
  OUTLINED_FUNCTION_100_0();
  if (!v100)
  {
    v101 = OUTLINED_FUNCTION_15_21();
    v104 = lpta_loadp_setscan_l(v101, v102, v103);
    v105 = v3;
    if (!v104)
    {
LABEL_117:
      v3 = v105;
      OUTLINED_FUNCTION_86_2(13, v339, v340[0], v340[1], v340[2], v340[3], v340[4], v340[5], v340[6], v340[7], v340[8], v340[9], v340[10], v340[11], v340[12], v340[13], v340[14], v340[15], v340[16], v340[17], v340[18], v340[19], v340[20], v340[21], v340[22], v341);
      v294 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v294, v295, v296, v297))
      {
        goto LABEL_123;
      }

      if (advance_tok(a1, v298, v299, v300))
      {
        goto LABEL_123;
      }

      v301 = OUTLINED_FUNCTION_61_3();
      if (lpta_loadp_setscan_r(v301, v302, v303))
      {
        goto LABEL_123;
      }

      if (advance_tok(a1, v304, v305, v306))
      {
        goto LABEL_123;
      }

      v307 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v307, v308, v309, v310) || advance_tok(a1, v311, v312, v313))
      {
        goto LABEL_123;
      }

      goto LABEL_62;
    }
  }

LABEL_47:
  v106 = OUTLINED_FUNCTION_34_9();
  starttest(v106, v107);
  v108 = OUTLINED_FUNCTION_16_20();
  v111 = lpta_loadp_setscan_l(v108, v109, v110);
  v112 = v3;
  if (v111)
  {
LABEL_48:
    v113 = v112;
    v114 = OUTLINED_FUNCTION_60_3();
    starttest(v114, v115);
    v116 = OUTLINED_FUNCTION_15_21();
    v119 = lpta_loadp_setscan_l(v116, v117, v118);
    v3 = v113;
    v64 = v113;
    if (!v119)
    {
LABEL_107:
      OUTLINED_FUNCTION_86_2(21, v339, v340[0], v340[1], v340[2], v340[3], v340[4], v340[5], v340[6], v340[7], v340[8], v340[9], v340[10], v340[11], v340[12], v340[13], v340[14], v340[15], v340[16], v340[17], v340[18], v340[19], v340[20], v340[21], v340[22], v341);
      v271 = OUTLINED_FUNCTION_5_24();
      if (!testFldeq(v271, v272, v273, v274) && !advance_tok(a1, v275, v276, v277))
      {
        v278 = OUTLINED_FUNCTION_61_3();
        if (!lpta_loadp_setscan_r(v278, v279, v280))
        {
          v284 = advance_tok(a1, v281, v282, v283);
          v253 = v3;
          v27 = v3;
          if (v284)
          {
            goto LABEL_10;
          }

          goto LABEL_100;
        }
      }

LABEL_123:
      v27 = v3;
      goto LABEL_10;
    }

LABEL_49:
    v3 = v64;
    v120 = OUTLINED_FUNCTION_52_3();
    starttest(v120, v121);
    v122 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v122, v123, v124))
    {
LABEL_50:
      OUTLINED_FUNCTION_86_2(25, v339, v340[0], v340[1], v340[2], v340[3], v340[4], v340[5], v340[6], v340[7], v340[8], v340[9], v340[10], v340[11], v340[12], v340[13], v340[14], v340[15], v340[16], v340[17], v340[18], v340[19], v340[20], v340[21], v340[22], v341);
      v125 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v125, v126, v127, v128))
      {
        goto LABEL_123;
      }

      if (advance_tok(a1, v129, v130, v131))
      {
        goto LABEL_123;
      }

      v132 = OUTLINED_FUNCTION_61_3();
      if (lpta_loadp_setscan_r(v132, v133, v134))
      {
        goto LABEL_123;
      }

      if (advance_tok(a1, v135, v136, v137))
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_59_3();
      OUTLINED_FUNCTION_119_0();
      if (testFldeq(v138, v139, v140, v141) || advance_tok(a1, v142, v143, v144))
      {
        goto LABEL_123;
      }

LABEL_59:
      v32 = 47;
LABEL_63:
      v35 = 4394;
      goto LABEL_64;
    }

LABEL_62:
    v32 = 49;
    goto LABEL_63;
  }

LABEL_80:
  OUTLINED_FUNCTION_86_2(15, v339, v340[0], v340[1], v340[2], v340[3], v340[4], v340[5], v340[6], v340[7], v340[8], v340[9], v340[10], v340[11], v340[12], v340[13], v340[14], v340[15], v340[16], v340[17], v340[18], v340[19], v340[20], v340[21], v340[22], v341);
  if (advance_tok(a1, v204, v205, v206))
  {
    goto LABEL_123;
  }

  v207 = OUTLINED_FUNCTION_46_4();
  bspush_ca_scan(v207, v208);
  v33 = v3;
LABEL_82:
  v3 = v33;
  v209 = OUTLINED_FUNCTION_5_24();
  if (testFldeq(v209, v210, v211, v212))
  {
    goto LABEL_123;
  }

  if (advance_tok(a1, v213, v214, v215))
  {
    goto LABEL_123;
  }

  v216 = OUTLINED_FUNCTION_61_3();
  if (lpta_loadp_setscan_r(v216, v217, v218))
  {
    goto LABEL_123;
  }

  v219 = OUTLINED_FUNCTION_54_3();
  bspush_ca_scan(v219, v220);
  v34 = v3;
LABEL_86:
  v3 = v34;
  v221 = OUTLINED_FUNCTION_5_24();
  if (testFldeq(v221, v222, v223, v224) || advance_tok(a1, v225, v226, v227))
  {
    goto LABEL_123;
  }

  v32 = 1;
  v35 = 4514;
LABEL_64:
  v36 = v3;
LABEL_65:
  *(a1 + v35) = v32;
  v3 = v36;
LABEL_66:
  v151 = OUTLINED_FUNCTION_60_3();
  starttest(v151, v152);
  v153 = OUTLINED_FUNCTION_15_21();
  v156 = lpta_loadp_setscan_l(v153, v154, v155);
  v62 = v3;
  if (!v156)
  {
LABEL_74:
    v3 = v62;
    OUTLINED_FUNCTION_86_2(27, v339, v340[0], v340[1], v340[2], v340[3], v340[4], v340[5], v340[6], v340[7], v340[8], v340[9], v340[10], v340[11], v340[12], v340[13], v340[14], v340[15], v340[16], v340[17], v340[18], v340[19], v340[20], v340[21], v340[22], v341);
    v192 = OUTLINED_FUNCTION_18_18();
    if (testFldeq(v192, v193, v194, 7))
    {
      goto LABEL_123;
    }

    if (advance_tok(a1, v195, v196, v197))
    {
      goto LABEL_123;
    }

    v198 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v198, v199, v200))
    {
      goto LABEL_123;
    }

    if (advance_tok(a1, v201, v202, v203))
    {
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_17_19();
    if (test_string_s())
    {
      goto LABEL_123;
    }

    *(a1 + 4394) -= 3;
  }

LABEL_67:
  v157 = (15 * *(a1 + 4286));
  *(a1 + 4414) = *(a1 + 4410) + 150;
  OUTLINED_FUNCTION_48_4(v157, 10.0);
  OUTLINED_FUNCTION_33_10(7 * v158, v159);
  *(a1 + 4382) = v160;
  v161 = OUTLINED_FUNCTION_88_2(4);
  if (!if_testeq_v_i(v161, v162, 1, v163, v164, v165, v166, v167))
  {
    v168 = OUTLINED_FUNCTION_88_2(5);
    if (if_testgt_v_i(v168, v169, 30, v170, v171, v172, v173, v174))
    {
LABEL_69:
      v175 = OUTLINED_FUNCTION_60_3();
      starttest(v175, v176);
      v177 = OUTLINED_FUNCTION_15_21();
      if (lpta_loadp_setscan_l(v177, v178, v179))
      {
        goto LABEL_91;
      }

      v180 = OUTLINED_FUNCTION_3_25();
      if (testFldeq(v180, v181, v182, v183))
      {
        goto LABEL_123;
      }

      v184 = OUTLINED_FUNCTION_1_26();
      if (testFldeq(v184, v185, v186, v187) || advance_tok(a1, v188, v189, v190))
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_115_0();
    }

    else
    {
      v191 = *(a1 + 4410);
    }

    *(a1 + 4414) = v191;
LABEL_91:
    v228 = *(a1 + 4562);
    v328 = __OFSUB__(v228, 5);
    v229 = v228 - 5;
    if (v229 < 0 == v328)
    {
      *(a1 + 4406) = v229;
    }
  }

LABEL_93:
  v230 = OUTLINED_FUNCTION_51_3();
  starttest(v230, v231);
  v232 = OUTLINED_FUNCTION_15_21();
  v235 = lpta_loadp_setscan_l(v232, v233, v234);
  v63 = v3;
  if (!v235)
  {
LABEL_101:
    v3 = v63;
    OUTLINED_FUNCTION_86_2(32, v339, v340[0], v340[1], v340[2], v340[3], v340[4], v340[5], v340[6], v340[7], v340[8], v340[9], v340[10], v340[11], v340[12], v340[13], v340[14], v340[15], v340[16], v340[17], v340[18], v340[19], v340[20], v340[21], v340[22], v341);
    v258 = OUTLINED_FUNCTION_5_24();
    if (testFldeq(v258, v259, v260, v261))
    {
      goto LABEL_123;
    }

    if (advance_tok(a1, v262, v263, v264))
    {
      goto LABEL_123;
    }

    v265 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v265, v266, v267))
    {
      goto LABEL_123;
    }

    if (advance_tok(a1, v268, v269, v270))
    {
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_17_19();
    if (test_string_s())
    {
      goto LABEL_123;
    }

    modulate_nas_AV(a1);
  }

LABEL_94:
  v236 = OUTLINED_FUNCTION_60_3();
  starttest(v236, v237);
  v238 = OUTLINED_FUNCTION_15_21();
  v241 = v3;
  if (lpta_loadp_setscan_l(v238, v239, v240))
  {
LABEL_95:
    v241 = v3;
    v242 = OUTLINED_FUNCTION_61_3();
    if (lpta_loadp_setscan_r(v242, v243, v244))
    {
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_17_19();
    if (test_string_s())
    {
      goto LABEL_97;
    }

    v285 = OUTLINED_FUNCTION_60_3();
    starttest_e(v285, v286);
    v287 = OUTLINED_FUNCTION_65_3();
    move_i(v287, v288, 45);
    v289 = OUTLINED_FUNCTION_107_0();
    move_i(v289, v290, 45);
  }

  else
  {
LABEL_126:
    OUTLINED_FUNCTION_86_2(34, v339, v340[0], v340[1], v340[2], v340[3], v340[4], v340[5], v340[6], v340[7], v340[8], v340[9], v340[10], v340[11], v340[12], v340[13], v340[14], v340[15], v340[16], v340[17], v340[18], v340[19], v340[20], v340[21], v340[22], v341);
    v314 = OUTLINED_FUNCTION_5_24();
    if (testFldeq(v314, v315, v316, v317) || advance_tok(a1, v318, v319, v320) || (v321 = OUTLINED_FUNCTION_61_3(), lpta_loadp_setscan_r(v321, v322, v323)) || advance_tok(a1, v324, v325, v326) || (OUTLINED_FUNCTION_17_19(), test_string_s()))
    {
      v27 = v241;
      goto LABEL_10;
    }

    v332 = OUTLINED_FUNCTION_60_3();
    starttest_e(v332, v333);
    v334 = OUTLINED_FUNCTION_65_3();
    c_assvar(v334, v335);
    HIWORD(v341) = *(a1 + 4394) - 2;
    v336 = OUTLINED_FUNCTION_107_0();
    c_assvar(v336, v337);
    WORD1(v341) = *(a1 + 4394) + 2;
  }

  v291 = OUTLINED_FUNCTION_65_3();
  v293 = final_voiced_release(v291, v292);
  v3 = v241;
  v27 = v241;
  if (v293)
  {
    goto LABEL_10;
  }

LABEL_97:
  v245 = OUTLINED_FUNCTION_60_3();
  starttest(v245, v246);
  v247 = OUTLINED_FUNCTION_16_20();
  if (!lpta_loadp_setscan_r(v247, v248, v249))
  {
    v250 = OUTLINED_FUNCTION_17_19();
    if (!testFldeq(v250, v251, v252, 1))
    {
      v253 = v3;
LABEL_100:
      v3 = v253;
      bspush_ca_scan_boa();
      v254 = OUTLINED_FUNCTION_59_3();
      testFldeq(v254, v255, v256, v257);
      OUTLINED_FUNCTION_113_0();
      goto LABEL_10;
    }

    goto LABEL_123;
  }

LABEL_135:
  OUTLINED_FUNCTION_96_1();
  if (v327 == v328)
  {
    OUTLINED_FUNCTION_105_0();
    if (v327 == v328)
    {
      OUTLINED_FUNCTION_21_16(v331);
    }
  }

LABEL_138:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_N(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_47_4(a1, a2, a3, a4, a5, a6, a7, a8, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227, v231, v235, v239, v243, v247, v251, v255, v259, v262);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_110_0(v10, v11, v12, v13, v14, v15, v16, v17, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228, v232, v236, v240, v244, v248, v252, v256, v260, v263, v265, v267, v269, v271);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_30_11(v18, v19, v20, v21, v22, v23, v24, v25, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v225, v229, v233, v237, v241, v245, v249, v253, v257, v261, v264, v266, SHIDWORD(v266), v268, SWORD2(v268), SHIWORD(v268), v270, SWORD2(v270), SBYTE6(v270), SHIBYTE(v270), v272, v273))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_76_3();
  push_ptr_init(v27, v28);
  fence_24(a1);
  v29 = OUTLINED_FUNCTION_22_16();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_16_20();
  if (lpta_loadp_setscan_r(v31, v32, v33))
  {
    v34 = 300;
    v35 = 0;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_1_26();
    if (testFldeq(v36, v37, v38, v39))
    {
      v35 = 0;
      goto LABEL_41;
    }

    v35 = 0;
    if (advance_tok(a1, v40, v41, v42))
    {
      goto LABEL_41;
    }

    v34 = 250;
  }

LABEL_12:
  OUTLINED_FUNCTION_87_2(v34);
LABEL_13:
  v43 = v35;
  OUTLINED_FUNCTION_97_1(4100);
  OUTLINED_FUNCTION_89_2(2850);
  *(a1 + 4586) = 1950;
  *(a1 + 4590) = 2150;
  v44 = OUTLINED_FUNCTION_37_8();
  starttest(v44, v45);
  v46 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v46, v47, v48))
  {
    v104 = OUTLINED_FUNCTION_3_25();
    if (!testFldeq(v104, v105, v106, v107))
    {
      OUTLINED_FUNCTION_26_15();
      bspush_ca_scan_boa();
      v108 = OUTLINED_FUNCTION_62_3();
      if (testFldeq(v108, v35, v109, 33))
      {
        v35 = v35;
      }

      else
      {
        v35 = 1;
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  while (1)
  {
    v35 = v43;
    v49 = OUTLINED_FUNCTION_29_12();
    starttest(v49, v50);
    v51 = OUTLINED_FUNCTION_15_21();
    v54 = lpta_loadp_setscan_l(v51, v52, v53);
    if (v54)
    {
LABEL_15:
      v62 = OUTLINED_FUNCTION_73_3(6 * *(a1 + 4282));
      v63 = 133;
      v64 = 4374;
      v65 = v62;
      v43 = v35;
    }

    else
    {
LABEL_57:
      OUTLINED_FUNCTION_109_0(v54, v55, v56, v57, v58, v59, v60, v61, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258);
      v140 = OUTLINED_FUNCTION_59_3();
      if (testFldeq(v140, v141, 6, 3) || advance_tok(a1, v142, v143, v144) || (v145 = OUTLINED_FUNCTION_61_3(), lpta_loadp_setscan_r(v145, v146, v147)) || (v151 = advance_tok(a1, v148, v149, v150)) || OUTLINED_FUNCTION_45_4(v151, v152, v153) || (v154 = OUTLINED_FUNCTION_18_18(), testFldeq(v154, v155, v156, 4)) || advance_tok(a1, v157, v158, v159) || (v160 = OUTLINED_FUNCTION_0_28(), testFldeq(v160, v161, v162, v163)) || advance_tok(a1, v164, v165, v166))
      {
LABEL_40:
        v35 = v43;
        goto LABEL_41;
      }

      *(a1 + 4374) = OUTLINED_FUNCTION_73_3(6 * *(a1 + 4282));
      v63 = 66;
      v64 = 4378;
      LOWORD(v65) = 2 * *(a1 + 4286);
    }

    *(a1 + v64) = v65;
    *(a1 + 4382) = ((v63 * *(a1 + 4290)) / 100.0);
    v35 = v43;
LABEL_17:
    v66 = OUTLINED_FUNCTION_25_15();
    starttest(v66, v67);
    OUTLINED_FUNCTION_100_0();
    if (v68 || (v69 = OUTLINED_FUNCTION_15_21(), lpta_loadp_setscan_l(v69, v70, v71)))
    {
LABEL_19:
      v72 = 53;
    }

    else
    {
LABEL_49:
      OUTLINED_FUNCTION_85_2(9, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258);
      v120 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v120, v121, v122, v123))
      {
        goto LABEL_41;
      }

      if (advance_tok(a1, v124, v125, v126))
      {
        goto LABEL_41;
      }

      v127 = OUTLINED_FUNCTION_61_3();
      if (lpta_loadp_setscan_r(v127, v128, v129))
      {
        goto LABEL_41;
      }

      if (advance_tok(a1, v130, v131, v132))
      {
        goto LABEL_41;
      }

      v133 = OUTLINED_FUNCTION_5_24();
      if (testFldeq(v133, v134, v135, v136) || advance_tok(a1, v137, v138, v139))
      {
        goto LABEL_41;
      }

      v72 = 48;
    }

    *(a1 + 4394) = v72;
LABEL_21:
    *(a1 + 4414) = *(a1 + 4410) + 150;
    *(a1 + 4406) = 15;
    v73 = OUTLINED_FUNCTION_88_2(4);
    if (if_testeq_v_i(v73, v74, 1, v75, v76, v77, v78, v79))
    {
      goto LABEL_36;
    }

    v80 = OUTLINED_FUNCTION_88_2(5);
    if (!if_testgt_v_i(v80, v81, 30, v82, v83, v84, v85, v86))
    {
      break;
    }

LABEL_23:
    v87 = OUTLINED_FUNCTION_60_3();
    starttest(v87, v88);
    v89 = OUTLINED_FUNCTION_15_21();
    if (lpta_loadp_setscan_l(v89, v90, v91))
    {
      goto LABEL_34;
    }

    v92 = OUTLINED_FUNCTION_3_25();
    if (!testFldeq(v92, v93, v94, v95))
    {
      v96 = OUTLINED_FUNCTION_1_26();
      if (!testFldeq(v96, v97, v98, v99) && !advance_tok(a1, v100, v101, v102))
      {
        OUTLINED_FUNCTION_115_0();
        goto LABEL_33;
      }
    }

LABEL_41:
    v114 = v35;
    while (2)
    {
      v115 = *(a1 + 104);
      if (v115)
      {
        v54 = OUTLINED_FUNCTION_49_3(v115);
      }

      else
      {
        v54 = vback(a1, v114);
        v35 = 0;
      }

      switch(v54)
      {
        case 1:
          v34 = 300;
          goto LABEL_12;
        case 2:
          goto LABEL_13;
        case 3:
          break;
        case 4:
          bspop_boa(a1);
          v119 = advance_tok(a1, v116, v117, v118);
          v114 = v35;
          if (v119)
          {
            continue;
          }

          OUTLINED_FUNCTION_91_1(2300);
          break;
        case 5:
          goto LABEL_15;
        case 6:
          v43 = v35;
          goto LABEL_57;
        case 7:
          goto LABEL_17;
        case 8:
          goto LABEL_19;
        case 9:
          goto LABEL_49;
        case 10:
          goto LABEL_21;
        case 11:
          goto LABEL_36;
        case 12:
          goto LABEL_23;
        case 13:
          goto LABEL_34;
        case 14:
          goto LABEL_39;
        default:
          goto LABEL_3;
      }

      break;
    }

    v43 = v35;
  }

  v103 = *(a1 + 4410);
LABEL_33:
  *(a1 + 4414) = v103;
LABEL_34:
  OUTLINED_FUNCTION_118_0();
  if (v111 == v112)
  {
    *(a1 + 4406) = v110 + 5;
  }

LABEL_36:
  OUTLINED_FUNCTION_96_1();
  if (v111 == v112)
  {
    OUTLINED_FUNCTION_105_0();
    if (v111 == v112)
    {
      OUTLINED_FUNCTION_21_16(v113);
    }
  }

LABEL_39:
  vretproc(a1);
  return 0;
}

uint64_t por_pal_Fv(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v165);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216, v218);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, SHIDWORD(v213), v215, SWORD2(v215), SHIWORD(v215), v217, SWORD2(v217), SBYTE6(v217), SHIBYTE(v217), v219, v220))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_24(a1);
  OUTLINED_FUNCTION_91_1(1400);
  OUTLINED_FUNCTION_89_2(2500);
  *(a1 + 4602) = 3600;
  *(a1 + 4610) = 4000;
  v20 = OUTLINED_FUNCTION_22_16();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v22, v23, v24))
  {
    v36 = OUTLINED_FUNCTION_28_12();
    bspush_ca_scan(v36, v37);
    v38 = OUTLINED_FUNCTION_59_3();
    v40 = 1;
LABEL_9:
    if (testFldeq(v38, v39, 10, v40))
    {
      goto LABEL_57;
    }

LABEL_10:
    if (advance_tok(a1, v41, v42, v43))
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_95_1();
    goto LABEL_12;
  }

  while (2)
  {
    v25 = OUTLINED_FUNCTION_29_12();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v27, v28, v29))
    {
      v1 = 6;
      bspush_ca_scan(a1, 6);
      v30 = OUTLINED_FUNCTION_59_3();
      if (testFldeq(v30, v31, 6, 3))
      {
        goto LABEL_57;
      }

      v32 = OUTLINED_FUNCTION_1_26();
LABEL_13:
      if (testFldeq(v32, v33, v34, v35))
      {
        goto LABEL_57;
      }

LABEL_14:
      if (advance_tok(a1, v41, v42, v43))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 250);
      v44 = v45 - 300;
      goto LABEL_12;
    }

LABEL_16:
    v46 = OUTLINED_FUNCTION_43_4();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v48, v49, v50))
    {
      v107 = OUTLINED_FUNCTION_42_4();
      bspush_ca_scan(v107, v108);
      v109 = OUTLINED_FUNCTION_0_28();
LABEL_34:
      if (testFldeq(v109, v110, v111, v112))
      {
        goto LABEL_57;
      }

LABEL_35:
      if (advance_tok(a1, v41, v42, v43))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 150);
      v44 = v113 - 200;
      goto LABEL_12;
    }

LABEL_17:
    v51 = OUTLINED_FUNCTION_60_3();
    starttest(v51, v52);
    v53 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v53, v54, v55))
    {
      v120 = OUTLINED_FUNCTION_34_9();
      bspush_ca_scan(v120, v121);
      v122 = OUTLINED_FUNCTION_7_24();
LABEL_41:
      if (testFldeq(v122, v123, v124, v125))
      {
        goto LABEL_57;
      }

LABEL_42:
      if (advance_tok(a1, v41, v42, v43))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 400);
      v44 = v138 + 300;
      goto LABEL_12;
    }

LABEL_18:
    v56 = OUTLINED_FUNCTION_26_15();
    starttest(v56, v57);
    v58 = OUTLINED_FUNCTION_63_3();
    if (!lpta_loadp_setscan_l(v58, v59, v1))
    {
      v132 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v132, v133);
      v134 = OUTLINED_FUNCTION_3_25();
LABEL_44:
      if (testFldeq(v134, v135, v136, v137))
      {
        goto LABEL_57;
      }

LABEL_45:
      if (advance_tok(a1, v41, v42, v43))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 300);
      v44 = v139 + 200;
LABEL_12:
      *(a1 + 4594) = v44;
    }

LABEL_19:
    v60 = OUTLINED_FUNCTION_60_3();
    starttest(v60, v61);
    v62 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v62, v63, v64))
    {
      v91 = OUTLINED_FUNCTION_57_3();
      bspush_ca_scan(v91, v92);
      v93 = OUTLINED_FUNCTION_59_3();
      v95 = 1;
LABEL_26:
      if (testFldeq(v93, v94, 10, v95))
      {
        goto LABEL_57;
      }

LABEL_27:
      if (advance_tok(a1, v41, v42, v43))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_99_1();
      goto LABEL_29;
    }

LABEL_20:
    v65 = OUTLINED_FUNCTION_52_3();
    starttest(v65, v66);
    v67 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v67, v68, v69))
    {
      v97 = OUTLINED_FUNCTION_56_3();
      bspush_ca_scan(v97, v98);
      v99 = OUTLINED_FUNCTION_0_28();
      if (testFldeq(v99, v100, v101, v102))
      {
        goto LABEL_57;
      }

      v103 = OUTLINED_FUNCTION_1_26();
LABEL_47:
      if (testFldeq(v103, v104, v105, v106))
      {
        goto LABEL_57;
      }

LABEL_48:
      if (advance_tok(a1, v41, v42, v43))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_75_3();
      v96 = v140 - 300;
      goto LABEL_29;
    }

LABEL_21:
    v70 = OUTLINED_FUNCTION_60_3();
    starttest(v70, v71);
    v72 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v72, v73, v74))
    {
      v114 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v114, v115);
      v116 = OUTLINED_FUNCTION_0_28();
LABEL_50:
      if (testFldeq(v116, v117, v118, v119))
      {
        goto LABEL_57;
      }

LABEL_51:
      if (advance_tok(a1, v41, v42, v43))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_78_3(*(a1 + 4590) - 100);
      v96 = v141 - 200;
      goto LABEL_29;
    }

LABEL_22:
    v75 = OUTLINED_FUNCTION_55_3();
    starttest(v75, v76);
    v77 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v77, v78, v79))
    {
      v126 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v126, v127);
      v128 = OUTLINED_FUNCTION_7_24();
LABEL_53:
      if (testFldeq(v128, v129, v130, v131))
      {
        goto LABEL_57;
      }

LABEL_54:
      if (advance_tok(a1, v41, v42, v43))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_78_3(v142);
      v96 = v143 + 300;
LABEL_29:
      *(a1 + 4598) = v96;
      break;
    }

LABEL_23:
    v80 = OUTLINED_FUNCTION_60_3();
    starttest(v80, v81);
    v82 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v82, v83, v84))
    {
      v85 = OUTLINED_FUNCTION_60_3();
      bspush_ca_scan(v85, v86);
      v87 = OUTLINED_FUNCTION_3_25();
LABEL_56:
      if (testFldeq(v87, v88, v89, v90))
      {
        goto LABEL_57;
      }

LABEL_79:
      if (!advance_tok(a1, v41, v42, v43))
      {
        OUTLINED_FUNCTION_78_3(*(a1 + 4590) + 300);
        v96 = v164 + 200;
        goto LABEL_29;
      }

LABEL_57:
      v144 = *(a1 + 104);
      if (v144)
      {
        v145 = OUTLINED_FUNCTION_74_3(v144);
      }

      else
      {
        v146 = OUTLINED_FUNCTION_84_2();
        v145 = vback(v146, v147);
      }

      switch(v145)
      {
        case 1:
          continue;
        case 2:
          v38 = OUTLINED_FUNCTION_59_3();
          v40 = 2;
          goto LABEL_9;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_19;
        case 5:
          goto LABEL_16;
        case 6:
          v160 = OUTLINED_FUNCTION_25_15();
          bspush_ca_scan(v160, v161);
          v32 = OUTLINED_FUNCTION_8_24();
          goto LABEL_13;
        case 7:
          goto LABEL_14;
        case 8:
          v158 = OUTLINED_FUNCTION_32_10();
          bspush_ca_scan(v158, v159);
          v32 = OUTLINED_FUNCTION_2_26();
          goto LABEL_13;
        case 9:
          v32 = OUTLINED_FUNCTION_6_24();
          goto LABEL_13;
        case 10:
          goto LABEL_17;
        case 11:
          v109 = OUTLINED_FUNCTION_14_21();
          goto LABEL_34;
        case 12:
          goto LABEL_35;
        case 13:
          goto LABEL_18;
        case 14:
          v154 = OUTLINED_FUNCTION_46_4();
          bspush_ca_scan(v154, v155);
          v122 = OUTLINED_FUNCTION_13_23();
          v125 = 24;
          goto LABEL_41;
        case 15:
          goto LABEL_42;
        case 16:
          v122 = OUTLINED_FUNCTION_13_23();
          v125 = 28;
          goto LABEL_41;
        case 17:
          v150 = OUTLINED_FUNCTION_53_3();
          bspush_ca_scan(v150, v151);
          v134 = OUTLINED_FUNCTION_12_23();
          goto LABEL_44;
        case 18:
          goto LABEL_45;
        case 19:
          v134 = OUTLINED_FUNCTION_11_23();
          goto LABEL_44;
        case 20:
          goto LABEL_20;
        case 21:
          v93 = OUTLINED_FUNCTION_59_3();
          v95 = 2;
          goto LABEL_26;
        case 22:
          goto LABEL_27;
        case 23:
          goto LABEL_30;
        case 24:
          goto LABEL_21;
        case 25:
          v156 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v156, v157);
          v103 = OUTLINED_FUNCTION_8_24();
          goto LABEL_47;
        case 26:
          goto LABEL_48;
        case 27:
          v162 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v162, v163);
          v103 = OUTLINED_FUNCTION_2_26();
          goto LABEL_47;
        case 28:
          v103 = OUTLINED_FUNCTION_6_24();
          goto LABEL_47;
        case 29:
          goto LABEL_22;
        case 30:
          v116 = OUTLINED_FUNCTION_14_21();
          goto LABEL_50;
        case 31:
          goto LABEL_51;
        case 32:
          goto LABEL_23;
        case 33:
          v148 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v148, v149);
          v128 = OUTLINED_FUNCTION_13_23();
          v131 = 24;
          goto LABEL_53;
        case 34:
          goto LABEL_54;
        case 35:
          v128 = OUTLINED_FUNCTION_13_23();
          v131 = 28;
          goto LABEL_53;
        case 36:
          v152 = OUTLINED_FUNCTION_60_3();
          bspush_ca_scan(v152, v153);
          v87 = OUTLINED_FUNCTION_12_23();
          goto LABEL_56;
        case 37:
          goto LABEL_79;
        case 38:
          v87 = OUTLINED_FUNCTION_11_23();
          goto LABEL_56;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_30:
  vretproc(a1);
  return 0;
}

uint64_t por_high_pal_Fv(uint64_t a1)
{
  OUTLINED_FUNCTION_36_8(*MEMORY[0x277D85DE8], v117);
  OUTLINED_FUNCTION_31_11(v3, v4, v5, v6, v7, v8, v9, v10, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_10_24(v11, v12, v13, v14, v15, v16, v17, v18, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, SHIDWORD(v165), v167, SWORD2(v167), SHIWORD(v167), v169, SWORD2(v169), SBYTE6(v169), SHIBYTE(v169), v171, v172))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_24(a1);
  OUTLINED_FUNCTION_91_1(2000);
  OUTLINED_FUNCTION_89_2(2650);
  v20 = OUTLINED_FUNCTION_15_21();
  if (!lpta_loadp_setscan_l(v20, v21, v22))
  {
    OUTLINED_FUNCTION_17_19();
    if (!test_string_s())
    {
      OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 300);
      *(a1 + 4594) = v50 + 50;
      v23 = 0;
      goto LABEL_22;
    }
  }

  v23 = 0;
  while (2)
  {
    v24 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v24, v25, v26))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_79_3(*(a1 + 4586) + 200);
        v37 = v49 + 250;
        goto LABEL_19;
      }
    }

LABEL_9:
    v27 = OUTLINED_FUNCTION_26_15();
    starttest(v27, v28);
    v29 = OUTLINED_FUNCTION_63_3();
    if (!lpta_loadp_setscan_l(v29, v30, v23))
    {
      v38 = OUTLINED_FUNCTION_29_12();
      bspush_ca_scan(v38, v39);
      v40 = OUTLINED_FUNCTION_0_28();
      v44 = testFldeq(v40, v41, v42, v43);
      v47 = v23;
      if (v44)
      {
        goto LABEL_42;
      }

LABEL_16:
      if (OUTLINED_FUNCTION_108_0(v44, v45, v47, v46))
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_79_3(*(a1 + 4586) - 100);
      v37 = v48 - 200;
      goto LABEL_19;
    }

LABEL_10:
    v31 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v31, v32, v33))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        *(a1 + 4586) -= 50;
        goto LABEL_22;
      }
    }

LABEL_12:
    v34 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v34, v35, v36))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_95_1();
LABEL_19:
        *(a1 + 4594) = v37;
      }
    }

LABEL_22:
    v51 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v51, v52, v53))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_117_0();
        OUTLINED_FUNCTION_78_3(v80);
        v82 = v81 + 350;
LABEL_34:
        *(a1 + 4598) = v82;
        goto LABEL_35;
      }
    }

LABEL_24:
    v54 = OUTLINED_FUNCTION_43_4();
    starttest(v54, v55);
    v56 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v56, v57, v58))
    {
      v74 = OUTLINED_FUNCTION_42_4();
      bspush_ca_scan(v74, v75);
      v76 = OUTLINED_FUNCTION_0_28();
      v44 = testFldeq(v76, v77, v78, v79);
      v46 = v23;
      if (v44)
      {
        goto LABEL_42;
      }

LABEL_41:
      if (OUTLINED_FUNCTION_112_0(v44, v45, v47, v46))
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_75_3();
      v82 = v108 - 250;
      goto LABEL_34;
    }

LABEL_25:
    v59 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v59, v60, v61))
    {
      OUTLINED_FUNCTION_17_19();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_99_1();
        goto LABEL_34;
      }
    }

LABEL_27:
    v62 = OUTLINED_FUNCTION_32_10();
    starttest(v62, v63);
    v64 = OUTLINED_FUNCTION_16_20();
    if (!lpta_loadp_setscan_r(v64, v65, v66))
    {
      v67 = OUTLINED_FUNCTION_17_19();
      if (!testFldeq(v67, v68, v69, 2))
      {
        OUTLINED_FUNCTION_34_9();
        bspush_ca_scan_boa();
        v70 = OUTLINED_FUNCTION_3_25();
        goto LABEL_38;
      }

      goto LABEL_42;
    }

LABEL_35:
    v83 = OUTLINED_FUNCTION_40_5();
    starttest(v83, v84);
    v85 = OUTLINED_FUNCTION_15_21();
    if (!lpta_loadp_setscan_l(v85, v86, v87))
    {
      v88 = OUTLINED_FUNCTION_17_19();
      if (!testFldeq(v88, v89, v90, 1))
      {
        OUTLINED_FUNCTION_46_4();
        bspush_ca_scan_boa();
        v70 = OUTLINED_FUNCTION_5_24();
LABEL_38:
        if (testFldeq(v70, v71, v72, v73))
        {
          v23 = v23;
        }

        else
        {
          v23 = 1;
        }
      }

LABEL_42:
      LODWORD(v45) = v23;
LABEL_43:
      v91 = *(a1 + 104);
      if (v91)
      {
        v44 = OUTLINED_FUNCTION_49_3(v91);
      }

      else
      {
        v44 = vback(a1, v45);
        v23 = 0;
      }

      v47 = v23;
      v46 = v23;
      switch(v44)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_22;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_10;
        case 5:
          v92 = OUTLINED_FUNCTION_14_21();
          testFldeq(v92, v93, v94, v95);
          OUTLINED_FUNCTION_90_2();
          if (!v44)
          {
            goto LABEL_16;
          }

          goto LABEL_43;
        case 6:
          goto LABEL_16;
        case 7:
          goto LABEL_12;
        case 8:
          goto LABEL_24;
        case 9:
          goto LABEL_35;
        case 10:
          goto LABEL_25;
        case 11:
          v104 = OUTLINED_FUNCTION_14_21();
          testFldeq(v104, v105, v106, v107);
          OUTLINED_FUNCTION_94_1();
          if (!v44)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        case 12:
          goto LABEL_41;
        case 13:
          goto LABEL_27;
        case 14:
          bspop_boa(a1);
          v103 = advance_tok(a1, v100, v101, v102);
          LODWORD(v45) = v23;
          if (v103)
          {
            goto LABEL_43;
          }

          *(a1 + 4590) -= 100;
          goto LABEL_35;
        case 15:
          goto LABEL_56;
        case 16:
          bspop_boa(a1);
          v99 = advance_tok(a1, v96, v97, v98);
          LODWORD(v45) = v23;
          if (v99)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_106_0();
          if (v113 == v114)
          {
            *(a1 + 4590) = v115;
          }

          goto LABEL_63;
        case 17:
LABEL_63:
          OUTLINED_FUNCTION_96_1();
          if (v113 == v114)
          {
            *(a1 + 4598) = v116;
          }

          break;
        case 18:
        case 19:
        case 21:
          goto LABEL_65;
        case 20:
          goto LABEL_59;
        default:
          goto LABEL_3;
      }

      goto LABEL_65;
    }

    break;
  }

LABEL_56:
  v109 = OUTLINED_FUNCTION_63_3();
  if (!lpta_loadp_setscan_l(v109, v110, 5))
  {
    v111 = *(a1 + 4590);
    if (v111 >= 1)
    {
      *(a1 + 4586) = v111;
    }

LABEL_59:
    v112 = *(a1 + 4598);
    if (v112 >= 1)
    {
      *(a1 + 4594) = v112;
    }
  }

LABEL_65:
  vretproc(a1);
  return 0;
}