uint64_t convert_por_single_digit(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v107 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v3, v4, v5, v6, v7, v8, v9, v10, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  OUTLINED_FUNCTION_23_23(v11, v12, v13, v14, v15, v16, v17, v18, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_12_31(v19, &v75, v20, v21, v22, v23, v24, v25, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, SHIDWORD(v102), v103, SWORD2(v103), SHIWORD(v103), v104, SWORD2(v104), SBYTE6(v104), SHIBYTE(v104), v105, v106))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -6);
    fence_33(v1, 0, &null_str_11);
    if (*(v1 + 2846) == *(v1 + 2822))
    {
      v33 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v33, v34, v35) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v36 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v36, v37, v38), v39 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v39, v40, 7, v41, v42)))
      {
        v43 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v43, v44, v45) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v46 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v46, v47, v48), v49 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v49, v50, 6, v51, v52)))
        {
          v53 = OUTLINED_FUNCTION_30_18();
          if (lpta_loadp_setscan_r(v53, v54, v55) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v56 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v56, v57, v58), v59 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v59, v60, 7, v61, v62)))
          {
            v63 = OUTLINED_FUNCTION_5_33();
            insert_ordinal_stem(v63);
          }
        }
      }

      v64 = OUTLINED_FUNCTION_85_6();
      inserted = insert_gender(v64);
      OUTLINED_FUNCTION_15_29(inserted, v66, v67, v68, v69, v70, v71, v72, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
      v73 = OUTLINED_FUNCTION_20_24();
      insert_l(v73, v74);
    }

    else
    {
      OUTLINED_FUNCTION_33_17();
      por_char_name();
    }

    OUTLINED_FUNCTION_97_5(v99);
    return 0;
  }
}

void add_por_currency_units(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v111 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v5, v6, v7, v8, v9, v10, v11, v12, v75, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, SHIDWORD(v103), v104, v105);
  OUTLINED_FUNCTION_23_23(v13, v14, v15, v16, v17, v18, v19, v20, v76, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  v21 = setjmp(v4);
  if (!v21 && !OUTLINED_FUNCTION_12_31(v21, &v80, v22, v23, v24, v25, v26, v27, v77, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, SHIDWORD(v106), v107, SWORD2(v107), SHIWORD(v107), v108, SWORD2(v108), SBYTE6(v108), SHIBYTE(v108), v109, v110))
  {
    v28 = OUTLINED_FUNCTION_21_24();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_42_10();
    get_parm(v31, v32, v33, -4);
    inserted = fence_33(v3, 0, &null_str_11);
    if (*(v3 + 2902) >= 7)
    {
      v42 = OUTLINED_FUNCTION_63_8();
      starttest_l(v42, v43);
      v44 = OUTLINED_FUNCTION_36_14();
      inserted = lpta_loadp_setscan_l(v44, v45, 1);
      if (!inserted)
      {
        bspush_boa(v3);
        v49 = 0;
        while (2)
        {
          v50 = v49;
          v51 = OUTLINED_FUNCTION_40_11();
          bspush_ca_scan(v51, v52);
          bspush_ca_scan_boa();
          v53 = OUTLINED_FUNCTION_27_20();
          if (!testFldeq(v53, v54, 3, 1))
          {
            v50 = 1;
          }

LABEL_11:
          v55 = *(v3 + 104);
          if (v55)
          {
            inserted = OUTLINED_FUNCTION_47_10(v55);
            v50 = v35;
          }

          else
          {
            inserted = vback(v3, v50);
            v50 = 0;
          }

          v49 = v50;
          switch(inserted)
          {
            case 1:
              break;
            case 2:
              bspush_nboa(v3);
              v56 = OUTLINED_FUNCTION_50_9();
              bspush_ca_scan(v56, v57);
              OUTLINED_FUNCTION_27_20();
              goto LABEL_17;
            case 3:
              bspop_boa(v3);
              v61 = advance_tok(v3, v58, v59, v60);
              v49 = v50;
              if (!v61)
              {
                continue;
              }

              goto LABEL_11;
            case 4:
              continue;
            case 5:
              OUTLINED_FUNCTION_27_20();
LABEL_17:
              inserted = test_string_s();
              if (!inserted)
              {
                goto LABEL_21;
              }

              goto LABEL_11;
            case 6:
LABEL_21:
              OUTLINED_FUNCTION_1_35(inserted, v35, v36, v37, v38, v39, v40, v41, v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
              v62 = OUTLINED_FUNCTION_29_19();
              inserted = insert_l(v62, v63);
              goto LABEL_6;
            case 7:
              v46 = HIWORD(v103);
              goto LABEL_26;
            case 8:
              goto LABEL_7;
            case 11:
              v46 = HIWORD(v103);
              goto LABEL_29;
            case 13:
              v46 = HIWORD(v103);
              goto LABEL_32;
            case 14:
              goto LABEL_36;
            case 15:
              v46 = HIWORD(v103);
              goto LABEL_33;
            case 16:
              v46 = HIWORD(v103);
              goto LABEL_34;
            default:
              goto LABEL_3;
          }

          break;
        }
      }
    }

LABEL_6:
    v46 = HIWORD(v103);
    if (*(v3 + 2950) == HIWORD(v103))
    {
LABEL_7:
      OUTLINED_FUNCTION_1_35(inserted, v35, v36, v37, v38, v39, v40, v41, v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      v47 = OUTLINED_FUNCTION_29_19();
      goto LABEL_38;
    }

LABEL_26:
    if (*(v3 + 2922) == v46)
    {
      *(v3 + 168) = 1;
      OUTLINED_FUNCTION_13_31(inserted, v35, v36, v37, v38, v39, v40, v41, v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      v64 = OUTLINED_FUNCTION_29_19();
      v65 = insert_l(v64, 1);
      if (*(v3 + 2906))
      {
        goto LABEL_3;
      }

      *(v3 + 168) = 1;
      OUTLINED_FUNCTION_13_31(v65, v66, v67, v68, v69, v70, v71, v72, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      v47 = OUTLINED_FUNCTION_29_19();
      v48 = 1;
LABEL_38:
      insert_l(v47, v48);
      goto LABEL_3;
    }

LABEL_29:
    if (*(v3 + 2934) != v46)
    {
LABEL_32:
      if (*(v3 + 2946) != v46)
      {
LABEL_33:
        if (*(v3 + 5930) != v46)
        {
LABEL_34:
          if (*(v3 + 5934) != v46)
          {
LABEL_36:
            if (*(v3 + 2906))
            {
              goto LABEL_3;
            }

            OUTLINED_FUNCTION_1_35(inserted, v35, v36, v37, v38, v39, v40, v41, v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
            v47 = OUTLINED_FUNCTION_20_24();
            goto LABEL_38;
          }
        }
      }
    }

    OUTLINED_FUNCTION_1_35(inserted, v35, v36, v37, v38, v39, v40, v41, v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    v73 = OUTLINED_FUNCTION_29_19();
    inserted = insert_l(v73, v74);
    goto LABEL_36;
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_69_8();
}

uint64_t add_por_subunits(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v89 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v3, v4, v5, v6, v7, v8, v9, v10, v54, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, SHIDWORD(v81), v82, v83);
  OUTLINED_FUNCTION_23_23(v11, v12, v13, v14, v15, v16, v17, v18, v55, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_12_31(v19, &v58, v20, v21, v22, v23, v24, v25, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, SHIDWORD(v84), v85, SWORD2(v85), SHIWORD(v85), v86, SWORD2(v86), SBYTE6(v86), SHIBYTE(v86), v87, v88))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -4);
    fence_33(v1, 0, &null_str_11);
    v33 = OUTLINED_FUNCTION_63_8();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_28_19();
    bspush_ca(v35);
    OUTLINED_FUNCTION_90_6();
    if (v44)
    {
LABEL_7:
      *(v1 + 168) = 1;
      OUTLINED_FUNCTION_13_31(inserted, v37, v38, v39, v40, v41, v42, v43, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
      v45 = OUTLINED_FUNCTION_29_19();
      v46 = 1;
    }

    else
    {
      while (2)
      {
        v49 = *(v1 + 104);
        if (v49)
        {
          inserted = OUTLINED_FUNCTION_47_10(v49);
        }

        else
        {
          inserted = OUTLINED_FUNCTION_74_8();
        }

        switch(inserted)
        {
          case 1:
            v50 = OUTLINED_FUNCTION_40_11();
            starttest(v50, v51);
            v52 = OUTLINED_FUNCTION_34_16();
            bspush_ca(v52);
            goto LABEL_21;
          case 2:
            v53 = OUTLINED_FUNCTION_50_9();
            bspush_ca(v53);
            goto LABEL_18;
          case 3:
            goto LABEL_7;
          case 4:
LABEL_18:
            OUTLINED_FUNCTION_90_6();
            if (!v44)
            {
              continue;
            }

            goto LABEL_7;
          case 5:
            goto LABEL_9;
          case 7:
LABEL_21:
            OUTLINED_FUNCTION_90_6();
            if (!v44)
            {
              continue;
            }

            goto LABEL_23;
          case 8:
LABEL_23:
            OUTLINED_FUNCTION_1_35(inserted, v37, v38, v39, v40, v41, v42, v43, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
            v45 = OUTLINED_FUNCTION_29_19();
            break;
          case 9:
            goto LABEL_11;
          default:
            goto LABEL_3;
        }

        break;
      }
    }

    inserted = insert_l(v45, v46);
LABEL_9:
    if (!*(v1 + 2906))
    {
      OUTLINED_FUNCTION_1_35(inserted, v37, v38, v39, v40, v41, v42, v43, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
      v47 = OUTLINED_FUNCTION_20_24();
      insert_l(v47, v48);
    }

LABEL_11:
    vretproc(v1);
    return 0;
  }
}

void insert_por_large_number(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70_8();
  v5 = v4;
  OUTLINED_FUNCTION_100_3();
  v96 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v58, v6);
  OUTLINED_FUNCTION_37_14();
  bzero(v95, v7);
  v8 = setjmp(v95);
  if (v8 || OUTLINED_FUNCTION_95_5(v8, &v58, v9, v10, v11, v12, v13, v14, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0]))
  {
LABEL_3:
    vretproc(v3);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_42_10();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_50_9();
    get_parm(v18, v19, v5, -6);
    v20 = 0;
    OUTLINED_FUNCTION_82_7(v21, v22, &null_str_11);
    v23 = OUTLINED_FUNCTION_58_9();
    starttest(v23, v24);
    OUTLINED_FUNCTION_28_19();
    bspush_ca_boa();
    v25 = OUTLINED_FUNCTION_50_9();
    if (!lpta_loadp_setscan_l(v25, v26, 1))
    {
      OUTLINED_FUNCTION_79_8();
      v27 = test_string_s();
      if (v27)
      {
        v20 = 0;
      }

      else
      {
        *(v3 + 136) = v95;
        v20 = OUTLINED_FUNCTION_39_12(v27, v28, v29) == 0;
      }
    }

    while (2)
    {
      v30 = *(v3 + 104);
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_47_10(v30);
      }

      else
      {
        v31 = vback(v3, v20);
        v20 = 0;
      }

      switch(v31)
      {
        case 1:
        case 8:
          goto LABEL_23;
        case 2:
          bspop_boa(v3);
          OUTLINED_FUNCTION_26_22();
          if (!v39)
          {
            goto LABEL_16;
          }

          goto LABEL_21;
        case 3:
LABEL_16:
          if (*(v3 + 2898) > 6)
          {
            goto LABEL_17;
          }

          goto LABEL_20;
        case 4:
        case 6:
        case 7:
LABEL_21:
          v46 = OUTLINED_FUNCTION_0_37(v31, v32, v33, v34, v35, v36, v37, v38, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
          insert_l(v46, v47);
          goto LABEL_22;
        case 5:
LABEL_22:
          v48 = OUTLINED_FUNCTION_50_9();
          insert_ordinal_ending(v48);
          goto LABEL_23;
        case 9:
        case 10:
        case 12:
LABEL_17:
          v40 = OUTLINED_FUNCTION_0_37(v31, v32, v33, v34, v35, v36, v37, v38, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
          insert_l(v40, v41);
          goto LABEL_18;
        case 11:
LABEL_18:
          v42 = OUTLINED_FUNCTION_92_5();
          v31 = lpta_loadp_setscan_r(v42, v43, 1);
          if (!v31)
          {
            OUTLINED_FUNCTION_49_9();
            v31 = test_string_s();
          }

          goto LABEL_20;
        case 13:
LABEL_20:
          v44 = OUTLINED_FUNCTION_0_37(v31, v32, v33, v34, v35, v36, v37, v38, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
          insert_l(v44, v45);
LABEL_23:
          v49 = OUTLINED_FUNCTION_34_16();
          starttest(v49, v50);
          v51 = OUTLINED_FUNCTION_50_9();
          if (lpta_loadp_setscan_r(v51, v52, 1))
          {
            goto LABEL_26;
          }

          bspush_ca_scan(v3, 15);
          OUTLINED_FUNCTION_49_9();
          if (test_string_s())
          {
            continue;
          }

LABEL_25:
          v53 = OUTLINED_FUNCTION_62_8();
          savescptr(v53, v54, v55);
LABEL_26:
          OUTLINED_FUNCTION_97_5(v84);
          break;
        case 14:
          goto LABEL_26;
        case 15:
          goto LABEL_25;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_69_8();
}

uint64_t insert_ordinal_ending(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v88 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v4, v5, v6, v7, v8, v9, v10, v11, v52, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, SHIDWORD(v80), v81, v82);
  OUTLINED_FUNCTION_23_23(v12, v13, v14, v15, v16, v17, v18, v19, v53, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v20 = setjmp(v3);
  if (!v20 && !OUTLINED_FUNCTION_12_31(v20, &v57, v21, v22, v23, v24, v25, v26, v54, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, SHIDWORD(v83), v84, SWORD2(v84), SHIWORD(v84), v85, SWORD2(v85), SBYTE6(v85), SHIBYTE(v85), v86, v87))
  {
    v28 = OUTLINED_FUNCTION_10_32();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_40_11();
    get_parm(v31, v32, v2, -4);
    v35 = OUTLINED_FUNCTION_82_7(v33, v34, &null_str_11);
    OUTLINED_FUNCTION_106_2(v35, v36, v37, v38, v39, v40, v41, v42, v55, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    insert_l(v1, 1);
    v43 = OUTLINED_FUNCTION_10_32();
    inserted = insert_gender(v43);
    OUTLINED_FUNCTION_106_2(inserted, v45, v46, v47, v48, v49, v50, v51, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    insert_l(v1, 1);
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_103_2();
}

uint64_t insert_e_before_hundreds(uint64_t a1)
{
  OUTLINED_FUNCTION_100_3();
  v114 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_23(v2, v3, v4, v5, v6, v7, v8, v9, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106);
  OUTLINED_FUNCTION_37_14();
  bzero(v113, v10);
  v11 = setjmp(v113);
  if (v11 || OUTLINED_FUNCTION_88_6(v11, v12, v13, v14, v15, v16, v17, v18, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v109, SHIDWORD(v109), v110, SWORD2(v110), SHIWORD(v110), v111, SWORD2(v111), SBYTE6(v111), SHIBYTE(v111), v112, v113[0]))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_42_10();
    get_parm(v20, v21, v22, -6);
    fence_33(v1, 0, &null_str_11);
    OUTLINED_FUNCTION_26_22();
    if (!v31 && *(v1 + 2898) == 3 && *(v1 + 2902) >= 4)
    {
      OUTLINED_FUNCTION_15_29(v23, v24, v25, v26, v27, v28, v29, v30, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108);
      v32 = OUTLINED_FUNCTION_29_19();
      insert_l(v32, v33);
    }

    vretproc(v1);
    return 0;
  }
}

void add_gender_to_hundreds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_80_7();
  v69 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v5, v6, v7, v8, v9, v10, v11, v12, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, SHIDWORD(v65), v66, v67);
  OUTLINED_FUNCTION_37_14();
  bzero(v68, v13);
  if (!setjmp(v68))
  {
    OUTLINED_FUNCTION_84_6();
    if (!ventproc(v4, v14, v15, v16, v17, v68))
    {
      v18 = OUTLINED_FUNCTION_32_17();
      OUTLINED_FUNCTION_98_4(v18, v19);
      v20 = OUTLINED_FUNCTION_21_24();
      get_parm(v20, v21, v22, -6);
      v23 = OUTLINED_FUNCTION_42_10();
      get_parm(v23, v24, v25, -4);
      fence_33(v4, 0, &null_str_11);
      if (*(v4 + 2850) != *(v4 + 2822))
      {
        while (2)
        {
          v26 = OUTLINED_FUNCTION_51_9();
          starttest(v26, v27);
          v28 = OUTLINED_FUNCTION_40_11();
          bspush_ca(v28);
          if (*(v4 + 2898) <= 3)
          {
LABEL_6:
            v29 = *(v4 + 104);
            if (v29)
            {
              v30 = OUTLINED_FUNCTION_47_10(v29);
            }

            else
            {
              v30 = OUTLINED_FUNCTION_74_8();
            }

            switch(v30)
            {
              case 1:
                continue;
              case 2:
              case 5:
              case 9:
                goto LABEL_18;
              case 3:
                v40 = OUTLINED_FUNCTION_27_20();
                npush_s(v40);
                OUTLINED_FUNCTION_72_8();
                goto LABEL_3;
              case 4:
                v31 = OUTLINED_FUNCTION_34_16();
                bspush_ca(v31);
                v32 = *(v4 + 2834);
                v33 = *(v4 + 2822);
                goto LABEL_13;
              case 6:
                v34 = OUTLINED_FUNCTION_50_9();
                bspush_ca(v34);
                v35 = OUTLINED_FUNCTION_81_7();
                if (lpta_loadp_setscan_r(v35, v36, v37))
                {
                  goto LABEL_6;
                }

                v38 = OUTLINED_FUNCTION_66_8();
                bspush_ca_scan(v38, v39);
                OUTLINED_FUNCTION_2_35();
                goto LABEL_17;
              case 7:
                v32 = *(v4 + 2646);
                v33 = *(v4 + 2610);
LABEL_13:
                if (v32 == v33)
                {
                  goto LABEL_18;
                }

                goto LABEL_6;
              case 8:
                OUTLINED_FUNCTION_2_35();
LABEL_17:
                if (!test_string_s())
                {
                  goto LABEL_18;
                }

                goto LABEL_6;
              default:
                goto LABEL_3;
            }
          }

          break;
        }
      }

LABEL_18:
      insert_hundreds_ending(v4);
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_69_8();
}

uint64_t insert_hundreds_ending(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v70 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v3, v4, v5, v6, v7, v8, v9, v10, v36, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, SHIDWORD(v62), v63, v64);
  OUTLINED_FUNCTION_23_23(v11, v12, v13, v14, v15, v16, v17, v18, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_12_31(v19, &v39, v20, v21, v22, v23, v24, v25, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, SHIDWORD(v65), v66, SWORD2(v66), SHIWORD(v66), v67, SWORD2(v67), SBYTE6(v67), SHIBYTE(v67), v68, v69))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -4);
    OUTLINED_FUNCTION_82_7(v33, v34, &null_str_11);
    OUTLINED_FUNCTION_46_10();
    *(v1 + 144) = v64;
    *(v1 + 128) = 0;
    insert_l(v1, v35);
    vretproc(v1);
    return 0;
  }
}

uint64_t insert_gender(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v70 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_25_22(v3, v4, v5, v6, v7, v8, v9, v10, v36, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, SHIDWORD(v62), v63, v64);
  OUTLINED_FUNCTION_23_23(v11, v12, v13, v14, v15, v16, v17, v18, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_12_31(v19, &v39, v20, v21, v22, v23, v24, v25, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, SHIDWORD(v65), v66, SWORD2(v66), SHIWORD(v66), v67, SWORD2(v67), SBYTE6(v67), SHIBYTE(v67), v68, v69))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -4);
    OUTLINED_FUNCTION_82_7(v33, v34, &null_str_11);
    OUTLINED_FUNCTION_46_10();
    *(v1 + 144) = v64;
    *(v1 + 128) = 0;
    insert_l(v1, v35);
    vretproc(v1);
    return 0;
  }
}

uint64_t convert_por_teens(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v171 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v3, v4, v5, v6, v7, v8, v9, v10, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
  OUTLINED_FUNCTION_23_23(v11, v12, v13, v14, v15, v16, v17, v18, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_12_31(v19, &v139, v20, v21, v22, v23, v24, v25, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, SHIDWORD(v166), v167, SWORD2(v167), SHIWORD(v167), v168, SWORD2(v168), SBYTE6(v168), SHIBYTE(v168), v169, v170))
  {
    v27 = OUTLINED_FUNCTION_21_24();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_40_11();
    OUTLINED_FUNCTION_71_8(v30, v31);
    fence_33(v1, 0, &null_str_11);
    v32 = OUTLINED_FUNCTION_40_11();
    if (lpta_loadp_setscan_l(v32, v33, 1) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v34 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v34, v35, v36), v37 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v37, v38, 3, v39, v40)))
    {
      v41 = OUTLINED_FUNCTION_14_29();
      if (lpta_loadp_setscan_l(v41, v42, v43) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v44 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v47, v48, 4, v49, v50)))
      {
        v51 = OUTLINED_FUNCTION_14_29();
        if (lpta_loadp_setscan_l(v51, v52, v53) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v54 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v54, v55, v56), v57 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v57, v58, 4, v59, v60)))
        {
          v61 = OUTLINED_FUNCTION_14_29();
          if (lpta_loadp_setscan_l(v61, v62, v63) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v64 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v64, v65, v66), v67 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v67, v68, 5, v69, v70)))
          {
            v71 = OUTLINED_FUNCTION_14_29();
            if (lpta_loadp_setscan_l(v71, v72, v73) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v74 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v74, v75, v76), v77 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v77, v78, 8, v79, v80)))
            {
              v81 = OUTLINED_FUNCTION_14_29();
              if (lpta_loadp_setscan_l(v81, v82, v83) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v84 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v84, v85, v86), v87 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v87, v88, 6, v89, v90)))
              {
                v91 = OUTLINED_FUNCTION_14_29();
                if (lpta_loadp_setscan_l(v91, v92, v93) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v94 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v94, v95, v96), v97 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v97, v98, 9, v99, v100)))
                {
                  v101 = OUTLINED_FUNCTION_14_29();
                  if (lpta_loadp_setscan_l(v101, v102, v103) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v104 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v104, v105, v106), v107 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v107, v108, 9, v109, v110)))
                  {
                    v111 = OUTLINED_FUNCTION_14_29();
                    if (lpta_loadp_setscan_l(v111, v112, v113) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v114 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v114, v115, v116), v117 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v117, v118, 7, v119, v120)))
                    {
                      v121 = OUTLINED_FUNCTION_14_29();
                      if (!lpta_loadp_setscan_l(v121, v122, v123))
                      {
                        OUTLINED_FUNCTION_2_35();
                        if (!test_string_s())
                        {
                          v124 = OUTLINED_FUNCTION_5_33();
                          lpta_rpta_loadp(v124, v125, v126);
                          v127 = OUTLINED_FUNCTION_3_34();
                          insert_2pt_s(v127, v128, 8, v129, v130);
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

    v131 = OUTLINED_FUNCTION_36_14();
    insert_space(v131, v132, v133, v134, v135, v136, v137, v138);
    OUTLINED_FUNCTION_105_2(v163);
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_103_2();
}

uint64_t insert_ordinal_stem(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v124 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v3, v4, v5, v6, v7, v8, v9, v10, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
  OUTLINED_FUNCTION_23_23(v11, v12, v13, v14, v15, v16, v17, v18, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_12_31(v19, &v92, v20, v21, v22, v23, v24, v25, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, SHIDWORD(v119), v120, SWORD2(v120), SHIWORD(v120), v121, SWORD2(v121), SBYTE6(v121), SHIBYTE(v121), v122, v123))
  {
    v27 = OUTLINED_FUNCTION_10_32();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_42_10();
    get_parm(v30, v31, v32, -6);
    fence_33(v1, 0, &null_str_11);
    v33 = OUTLINED_FUNCTION_34_16();
    if (lpta_loadp_setscan_r(v33, v34, 1) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v35 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v35, v36, v37), v38 = OUTLINED_FUNCTION_8_32(), insert_2pt_s(v38, v39, v40, v41, 0)))
    {
      v42 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v42, v43, v44) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v45 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v45, v46, v47), v48 = OUTLINED_FUNCTION_8_32(), insert_2pt_s(v48, v49, v50, v51, 0)))
      {
        v52 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v52, v53, v54) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v55 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v55, v56, v57), v58 = OUTLINED_FUNCTION_9_32(), insert_2pt_s(v58, v59, v60, v61, 0)))
        {
          v62 = OUTLINED_FUNCTION_30_18();
          if (lpta_loadp_setscan_r(v62, v63, v64) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v65 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v65, v66, v67), v68 = OUTLINED_FUNCTION_8_32(), insert_2pt_s(v68, v69, v70, v71, 0)))
          {
            v72 = OUTLINED_FUNCTION_30_18();
            if (lpta_loadp_setscan_r(v72, v73, v74) || (OUTLINED_FUNCTION_2_35(), test_string_s()) || (v75 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v75, v76, v77), v78 = OUTLINED_FUNCTION_8_32(), insert_2pt_s(v78, v79, v80, v81, 0)))
            {
              v82 = OUTLINED_FUNCTION_30_18();
              if (!lpta_loadp_setscan_r(v82, v83, v84))
              {
                OUTLINED_FUNCTION_2_35();
                if (!test_string_s())
                {
                  v85 = OUTLINED_FUNCTION_5_33();
                  lpta_rpta_loadp(v85, v86, v87);
                  v88 = OUTLINED_FUNCTION_4_33();
                  insert_2pt_s(v88, v89, v90, v91, 0);
                }
              }
            }
          }
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_103_2();
}

uint64_t convert_por_fraction(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v123 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75_8();
  OUTLINED_FUNCTION_19_25(v3, v4, v5, v6, v7, v8, v9, v10, v118[0], v118[1], v118[2], v118[3], v118[4], v118[5], v118[6], v118[7], v118[8], v118[9], v118[10], v118[11], v118[12], v118[13], v118[14], v118[15], v118[16], v118[17], v118[18], v118[19], v118[20], v118[21], v118[22], v118[23], v118[24], v118[25], v118[26]);
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_108_2(v11, v12);
  if (!setjmp(v2) && !ventproc(v1, v118, v121, v120, v119, v122))
  {
    v15 = OUTLINED_FUNCTION_10_32();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_32_17();
    OUTLINED_FUNCTION_71_8(v18, v19);
    v20 = OUTLINED_FUNCTION_36_14();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_45_10();
    v24 = push_ptr_init(v22, v23);
    OUTLINED_FUNCTION_82_7(v24, v25, &null_str_11);
    v26 = OUTLINED_FUNCTION_58_9();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_34_16();
    v30 = lpta_loadp_setscan_r(v28, v29, 1);
    v31 = 0;
    if (!v30)
    {
      v32 = OUTLINED_FUNCTION_4_33();
      if (testFldeq(v32, v33, v34, 3) || advance_tok(v1, v35, v36, v37))
      {
        v38 = 0;
        goto LABEL_10;
      }

      por_char_name();
LABEL_33:
      *(v1 + 136) = 1;
      *(v1 + 112) = v118[30];
      *(v1 + 128) = 0;
      v13 = 0;
      insert_r(v1, 1, 3, &unk_2806BC101, 0);
      goto LABEL_4;
    }

    while (2)
    {
      v38 = v31;
      v49 = OUTLINED_FUNCTION_28_19();
      starttest(v49, v50);
      v51 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v51, v52, v53))
      {
        goto LABEL_33;
      }

      v54 = OUTLINED_FUNCTION_4_33();
      if (!testFldeq(v54, v55, v56, 2))
      {
        v60 = advance_tok(v1, v57, v58, v59);
        v42 = v38;
        if (!v60)
        {
LABEL_17:
          v38 = v42;
          v61 = OUTLINED_FUNCTION_59_9();
          savescptr(v61, v62, v63);
          OUTLINED_FUNCTION_2_35();
          v64 = test_string_s();
          v43 = v38;
          if (v64)
          {
            goto LABEL_10;
          }

LABEL_18:
          v38 = v43;
          v65 = OUTLINED_FUNCTION_33_17();
          savescptr(v65, v66, v67);
          v68 = OUTLINED_FUNCTION_4_33();
          if (!testFldeq(v68, v69, v70, 2) && !advance_tok(v1, v71, v72, v73))
          {
            v74 = OUTLINED_FUNCTION_14_29();
            if (lpta_loadp_setscan_r(v74, v75, v76) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
              v44 = v38;
            }

            else
            {
              v110 = OUTLINED_FUNCTION_86_6();
              lpta_rpta_loadp(v110, v111, v112);
              v113 = OUTLINED_FUNCTION_3_34();
              inserted = insert_2pt_s(v113, v114, 3, v115, v116);
              v46 = 2;
              v44 = v38;
              if (!inserted)
              {
                goto LABEL_27;
              }
            }

LABEL_23:
            v77 = v44;
            v78 = OUTLINED_FUNCTION_14_29();
            if (lpta_loadp_setscan_r(v78, v79, v80) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
              v45 = v77;
            }

            else
            {
              v102 = OUTLINED_FUNCTION_86_6();
              lpta_rpta_loadp(v102, v103, v104);
              v105 = OUTLINED_FUNCTION_3_34();
              v109 = insert_2pt_s(v105, v106, 4, v107, v108);
              v45 = v77;
              v46 = v77;
              if (!v109)
              {
                goto LABEL_27;
              }
            }

LABEL_26:
            v46 = v45;
            v81 = OUTLINED_FUNCTION_86_6();
            insert_ordinal_stem(v81);
LABEL_27:
            *(v1 + 168) = 1;
            OUTLINED_FUNCTION_35_15();
            v82 = OUTLINED_FUNCTION_29_19();
            insert_l(v82, 1);
            v83 = OUTLINED_FUNCTION_73_8();
            if (lpta_loadp_setscan_r(v83, v84, 1) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
            {
              v47 = v46;
LABEL_30:
              v85 = v47;
              v86 = OUTLINED_FUNCTION_28_19();
              starttest(v86, v87);
              OUTLINED_FUNCTION_59_9();
              por_char_name();
              v48 = v85;
LABEL_31:
              v38 = v48;
              OUTLINED_FUNCTION_46_10();
              OUTLINED_FUNCTION_35_15();
              v88 = OUTLINED_FUNCTION_20_24();
              insert_l(v88, v89);
            }

            else
            {
              v98 = OUTLINED_FUNCTION_28_19();
              starttest(v98, v99);
              v38 = 2;
              if (v46 != 2)
              {
                v100 = OUTLINED_FUNCTION_28_19();
                starttest_e(v100, v101);
                OUTLINED_FUNCTION_59_9();
                por_char_name();
                v38 = v46;
              }
            }

LABEL_32:
            v90 = OUTLINED_FUNCTION_5_33();
            lpta_rpta_loadp(v90, v91, v92);
            v93 = OUTLINED_FUNCTION_2_35();
            if (!insert_2pt_s(v93, v94, v95, v96, v97))
            {
              goto LABEL_33;
            }
          }
        }
      }

LABEL_10:
      v39 = *(v1 + 104);
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_47_10(v39);
      }

      else
      {
        v40 = OUTLINED_FUNCTION_74_8();
      }

      v41 = v40 - 1;
      v31 = v38;
      v42 = v38;
      v43 = v38;
      v44 = v38;
      v45 = v38;
      v46 = v38;
      v47 = v38;
      v48 = v38;
      switch(v41)
      {
        case 0:
          continue;
        case 1:
        case 2:
          goto LABEL_33;
        case 3:
          goto LABEL_17;
        case 4:
          goto LABEL_18;
        case 5:
          goto LABEL_23;
        case 6:
          goto LABEL_27;
        case 7:
          goto LABEL_26;
        case 8:
          goto LABEL_30;
        case 9:
        case 10:
          goto LABEL_32;
        case 11:
          goto LABEL_31;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v13 = 94;
LABEL_4:
  vretproc(v1);
  return v13;
}

void por_1_and_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_80_7();
  v67 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 65532;
  OUTLINED_FUNCTION_38_13();
  bzero(v50, v5);
  OUTLINED_FUNCTION_37_14();
  bzero(v66, v6);
  v7 = setjmp(v66);
  if (v7 || OUTLINED_FUNCTION_95_5(v7, v50, v8, v9, v10, v11, v12, v13, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]))
  {
    goto LABEL_3;
  }

  v14 = OUTLINED_FUNCTION_54_9();
  OUTLINED_FUNCTION_98_4(v14, v15);
  v16 = OUTLINED_FUNCTION_31_18();
  get_parm(v16, v17, v18, -6);
  v19 = OUTLINED_FUNCTION_42_10();
  get_parm(v19, v20, v21, -4);
  fence_33(v4, 0, &null_str_11);
  WORD1(v51) = *(v4 + 3014);
  v22 = *(v4 + 2822);
  if (*(v4 + 2850) == v22)
  {
    v23 = *(v4 + 3010);
LABEL_6:
    WORD1(v51) = v23;
LABEL_7:
    insert_1_2(v4, &v54);
    goto LABEL_3;
  }

  LODWORD(v24) = 0;
  while (2)
  {
    if (*(v4 + 2830) == v22)
    {
      v23 = *(v4 + 3018);
      goto LABEL_6;
    }

LABEL_11:
    if (*(v4 + 2826) == v22)
    {
      goto LABEL_7;
    }

LABEL_12:
    if (*(v4 + 2870) == v22)
    {
      goto LABEL_7;
    }

LABEL_13:
    if (*(v4 + 2862) == v22)
    {
      v25 = OUTLINED_FUNCTION_40_11();
      lpta_rpta_loadp(v25, v26, &v52);
      OUTLINED_FUNCTION_4_33();
      if (!mark_s())
      {
        v49 = v4;
        goto LABEL_43;
      }
    }

LABEL_15:
    if (*(v4 + 2898) == 4 && HIWORD(v51) == 1)
    {
      break;
    }

LABEL_19:
    if (*(v4 + 2834) == *(v4 + 2822))
    {
      goto LABEL_7;
    }

LABEL_20:
    if (*(v4 + 2898) > 3)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (*(v4 + 2842) == *(v4 + 2822))
    {
      goto LABEL_7;
    }

LABEL_22:
    v28 = OUTLINED_FUNCTION_50_9();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_34_16();
    if (lpta_loadp_setscan_r(v30, v31, 1))
    {
LABEL_23:
      v32 = OUTLINED_FUNCTION_92_5();
      starttest(v32, v33);
      if (*(v4 + 2646) == *(v4 + 2610))
      {
        goto LABEL_7;
      }

LABEL_24:
      v34 = OUTLINED_FUNCTION_40_11();
      lpta_rpta_loadp(v34, v35, &v52);
      OUTLINED_FUNCTION_3_34();
      if (mark_s())
      {
        goto LABEL_25;
      }

      v49 = OUTLINED_FUNCTION_27_20();
LABEL_43:
      npush_s(v49);
      OUTLINED_FUNCTION_72_8();
      break;
    }

    bspush_ca_scan_boa();
    v47 = OUTLINED_FUNCTION_66_8();
    bspush_ca_scan(v47, v48);
    OUTLINED_FUNCTION_2_35();
    if (!test_string_s())
    {
LABEL_34:
      LODWORD(v24) = 1;
    }

LABEL_25:
    v36 = v24;
LABEL_26:
    v37 = *(v4 + 104);
    if (v37)
    {
      v38 = OUTLINED_FUNCTION_47_10(v37);
      v24 = v39;
    }

    else
    {
      v38 = vback(v4, v36);
      v24 = 0;
    }

    switch(v38)
    {
      case 1:
        v22 = *(v4 + 2822);
        continue;
      case 2:
        goto LABEL_7;
      case 3:
        v22 = *(v4 + 2822);
        goto LABEL_11;
      case 4:
        v22 = *(v4 + 2822);
        goto LABEL_12;
      case 5:
        v22 = *(v4 + 2822);
        goto LABEL_13;
      case 6:
        goto LABEL_15;
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
        bspop_boa(v4);
        goto LABEL_7;
      case 13:
        v40 = OUTLINED_FUNCTION_4_33();
        v43 = testFldeq(v40, v41, v42, 3);
        v36 = v24;
        if (!v43)
        {
          v46 = advance_tok(v4, v24, v44, v45);
          v36 = v24;
          if (!v46)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_26;
      case 14:
        goto LABEL_34;
      case 15:
        goto LABEL_24;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_69_8();
}

uint64_t insert_1_2(uint64_t a1, __int16 *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v50, v4);
  OUTLINED_FUNCTION_37_14();
  bzero(v56, v5);
  if (setjmp(v56) || (OUTLINED_FUNCTION_84_6(), ventproc(a1, v6, v7, v8, v9, v56)))
  {
LABEL_3:
    v10 = 94;
    goto LABEL_4;
  }

  v12 = OUTLINED_FUNCTION_32_17();
  get_parm(v12, v13, a2, -6);
  v14 = OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_98_4(v14, v15);
  v16 = OUTLINED_FUNCTION_31_18();
  get_parm(v16, v17, v18, -4);
  v19 = OUTLINED_FUNCTION_42_10();
  get_parm(v19, v20, v21, -4);
  fence_33(a1, 0, &null_str_11);
  if (WORD1(v51) == 1)
  {
    v22 = OUTLINED_FUNCTION_28_19();
    starttest(v22, v23);
    OUTLINED_FUNCTION_90_6();
    if (v24)
    {
      v25 = OUTLINED_FUNCTION_53_9();
      lpta_rpta_loadp(v25, v26, v27);
      v10 = 0;
      v28 = OUTLINED_FUNCTION_4_33();
      if (!insert_2pt_s(v28, v29, v30, v31, 0))
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_10:
    v32 = OUTLINED_FUNCTION_28_19();
    starttest(v32, v33);
    OUTLINED_FUNCTION_90_6();
    if (v24)
    {
      v34 = OUTLINED_FUNCTION_53_9();
      lpta_rpta_loadp(v34, v35, v36);
      v10 = 0;
      v37 = OUTLINED_FUNCTION_9_32();
      if (!insert_2pt_s(v37, v38, v39, v40, 0))
      {
        goto LABEL_4;
      }
    }
  }

  while (2)
  {
    v41 = OUTLINED_FUNCTION_53_9();
    lpta_rpta_loadp(v41, v42, v43);
    v10 = 0;
    v44 = OUTLINED_FUNCTION_9_32();
    if (insert_2pt_s(v44, v45, v46, v47, 0))
    {
      v48 = *(a1 + 104);
      if (v48)
      {
        v49 = OUTLINED_FUNCTION_47_10(v48);
      }

      else
      {
        v49 = OUTLINED_FUNCTION_74_8();
      }

      v10 = 0;
      switch(v49)
      {
        case 1:
          goto LABEL_10;
        case 2:
        case 5:
          continue;
        case 3:
        case 4:
          goto LABEL_4;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_4:
  vretproc(a1);
  return v10;
}

uint64_t assign_gender_to_por_number(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v141 = *MEMORY[0x277D85DE8];
  v136[0] = 0;
  v136[1] = 0;
  v135[0] = 0;
  v135[1] = 0;
  v134 = 0;
  v133[4] = 0;
  v133[5] = 0;
  OUTLINED_FUNCTION_83_6();
  v130 = 0;
  v131 = 0;
  HIDWORD(v129) = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v106, v3);
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_108_2(v4, v5);
  if (!setjmp(v2) && !ventproc(v1, &v106, v139, v138, v137, v140))
  {
    v8 = OUTLINED_FUNCTION_31_18();
    get_parm(v8, v9, v10, -6);
    v11 = OUTLINED_FUNCTION_40_11();
    OUTLINED_FUNCTION_71_8(v11, v12);
    v134 = 65532;
    v13 = OUTLINED_FUNCTION_76_8();
    v15 = push_ptr_init(v13, v14);
    OUTLINED_FUNCTION_99_4(v15, v16, v17, v18, v19, v20, v21, v22, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132[0], v132[1], v133[0], v133[1]);
    v23 = OUTLINED_FUNCTION_52_9();
    push_ptr_init(v23, v24);
    v25 = OUTLINED_FUNCTION_54_9();
    push_ptr_init(v25, v26);
    v27 = OUTLINED_FUNCTION_44_10();
    push_ptr_init(v27, v28);
    HIDWORD(v129) = 65532;
    fence_33(v1, 0, &null_str_11);
    v29 = OUTLINED_FUNCTION_18_26();
    fence_33(v29, v30, v31);
    HIWORD(v134) = *(v1 + 3014);
    v32 = OUTLINED_FUNCTION_63_8();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_40_11();
    if (lpta_loadp_setscan_r(v34, v35, 2) || advanc(v1))
    {
      goto LABEL_10;
    }

LABEL_7:
    v36 = OUTLINED_FUNCTION_91_5();
    savescptr(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v39, v40);
    v41 = OUTLINED_FUNCTION_48_10();
    if (testFldeq(v41, v42, 1, 2))
    {
      goto LABEL_28;
    }

    while (1)
    {
LABEL_8:
      if (advance_tok(v1, v43, v44, v45))
      {
        goto LABEL_28;
      }

LABEL_9:
      OUTLINED_FUNCTION_65_8();
      v46 = OUTLINED_FUNCTION_42_10();
      savescptr(v46, v47, v48);
      v49 = OUTLINED_FUNCTION_42_10();
      get_gender_number(v49, v50, v51, v52, v53);
LABEL_10:
      v54 = OUTLINED_FUNCTION_28_19();
      startloop(v54, v55);
      lpta_loadpn(v1, v136);
      OUTLINED_FUNCTION_60_9();
      lpta_mover();
      v56 = OUTLINED_FUNCTION_51_9();
      lpta_storep(v56, v57, v58);
      lpta_loadpn(v1, v135);
      OUTLINED_FUNCTION_60_9();
      lpta_mover();
      v59 = OUTLINED_FUNCTION_40_11();
      lpta_storep(v59, v60, v61);
      v62 = OUTLINED_FUNCTION_51_9();
      if (!forall_to_test(v62, v63, &v130))
      {
        break;
      }

      do
      {
LABEL_28:
        v99 = *(v1 + 104);
        if (v99)
        {
          v100 = OUTLINED_FUNCTION_47_10(v99);
        }

        else
        {
          v100 = OUTLINED_FUNCTION_74_8();
        }

        switch(v100)
        {
          case 1:
            goto LABEL_10;
          case 2:
            goto LABEL_7;
          case 3:
            v101 = OUTLINED_FUNCTION_51_9();
            bspush_ca_scan(v101, v102);
            v103 = OUTLINED_FUNCTION_60_9();
            v105 = 11;
            break;
          case 4:
            goto LABEL_8;
          case 5:
            v103 = OUTLINED_FUNCTION_60_9();
            break;
          case 6:
            goto LABEL_9;
          case 7:
            goto LABEL_36;
          case 8:
            goto LABEL_14;
          case 9:
          case 12:
          case 14:
          case 16:
          case 17:
            goto LABEL_27;
          case 10:
            goto LABEL_13;
          case 11:
            goto LABEL_16;
          case 13:
            goto LABEL_18;
          case 15:
            goto LABEL_20;
          case 18:
            goto LABEL_11;
          default:
            goto LABEL_3;
        }
      }

      while (testFldeq(v103, v104, 1, v105));
    }

LABEL_11:
    v64 = OUTLINED_FUNCTION_22_23();
    bspush_ca(v64);
    v65 = OUTLINED_FUNCTION_52_9();
    if (lpta_loadp_setscan_r(v65, v66, 2) || advance_tok(v1, v67, v68, v69))
    {
      goto LABEL_28;
    }

LABEL_13:
    v70 = OUTLINED_FUNCTION_62_8();
    savescptr(v70, v71, v72);
LABEL_14:
    v73 = OUTLINED_FUNCTION_30_18();
    if (lpta_loadp_setscan_r(v73, v74, v75) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
    {
LABEL_16:
      v76 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_r(v76, v77, v78) || (OUTLINED_FUNCTION_2_35(), test_string_s()))
      {
LABEL_18:
        v79 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_l(v79, v80, v81) || (OUTLINED_FUNCTION_4_33(), test_string_s()))
        {
LABEL_20:
          v82 = OUTLINED_FUNCTION_22_23();
          starttest(v82, v83);
          v84 = OUTLINED_FUNCTION_30_18();
          if (!lpta_loadp_setscan_r(v84, v85, v86))
          {
            OUTLINED_FUNCTION_4_33();
            if (!test_string_s())
            {
              v87 = OUTLINED_FUNCTION_28_19();
              starttest_e(v87, v88);
              insert_gender(v1);
            }
          }
        }

        else
        {
          v89 = OUTLINED_FUNCTION_28_19();
          starttest_l(v89, v90);
          insert_hundreds_ending(v1);
        }

LABEL_27:
        OUTLINED_FUNCTION_64_8();
        if (!OUTLINED_FUNCTION_96_5(v98, 8, 18, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132[0], v132[1]))
        {
LABEL_36:
          v6 = 0;
          goto LABEL_4;
        }

        goto LABEL_28;
      }

      v91 = OUTLINED_FUNCTION_28_19();
      starttest_e(v91, v92);
      v93 = OUTLINED_FUNCTION_51_9();
      v95 = 2;
    }

    else
    {
      v96 = OUTLINED_FUNCTION_28_19();
      starttest_e(v96, v97);
      v93 = OUTLINED_FUNCTION_51_9();
      v95 = 1;
    }

    move_i(v93, v94, v95);
    if (insert_1_2(v1, v133))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_3:
  v6 = 94;
LABEL_4:
  vretproc(v1);
  return v6;
}

uint64_t get_gender_number(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75_8();
  v73 = 0;
  v74 = 0;
  v72 = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(v71, v10);
  OUTLINED_FUNCTION_37_14();
  bzero(v81, v11);
  if (setjmp(v81) || ventproc(a1, v71, v80, v79, v78, v81))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v13 = OUTLINED_FUNCTION_50_9();
  get_parm(v13, v14, a2, -6);
  v15 = OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_98_4(v15, v16);
  v17 = OUTLINED_FUNCTION_31_18();
  get_parm(v17, v18, v19, -4);
  v20 = OUTLINED_FUNCTION_42_10();
  get_parm(v20, v21, v22, -4);
  v23 = OUTLINED_FUNCTION_44_10();
  push_ptr_init(v23, v24);
  fence_33(a1, 0, &null_str_11);
  v25 = OUTLINED_FUNCTION_79_8();
  fence_33(v25, v26, v27);
  HIWORD(v74) = *(a1 + 3014);
  WORD1(v74) = *(a1 + 3022);
  starttest(a1, a3);
  v28 = OUTLINED_FUNCTION_50_9();
  if (!lpta_loadp_setscan_r(v28, v29, 2))
  {
    v58 = OUTLINED_FUNCTION_60_9();
    if (testFldeq(v58, v59, 2, 6) || advance_tok(a1, v60, v61, v62))
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_5:
  v73 = v76;
  strip_plural(a1, v77, &v72, v75);
  if (!v30)
  {
    WORD1(v74) = *(a1 + 3026);
  }

LABEL_7:
  v31 = OUTLINED_FUNCTION_7_32();
  if (!lpta_loadp_setscan_l(v31, v32, v33))
  {
    OUTLINED_FUNCTION_4_33();
    if (!test_string_s())
    {
      goto LABEL_32;
    }
  }

LABEL_9:
  v34 = OUTLINED_FUNCTION_7_32();
  if (!lpta_loadp_setscan_l(v34, v35, v36))
  {
    OUTLINED_FUNCTION_4_33();
    if (!test_string_s())
    {
LABEL_32:
      HIWORD(v74) = *(a1 + 3018);
      goto LABEL_33;
    }
  }

LABEL_11:
  v37 = OUTLINED_FUNCTION_57_9();
  lpta_rpta_loadp(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_27_20();
  if (setd_lookup(v40, v41, 57))
  {
LABEL_12:
    v42 = OUTLINED_FUNCTION_28_19();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_7_32();
    if (!lpta_loadp_setscan_l(v44, v45, v46))
    {
      v54 = OUTLINED_FUNCTION_28_19();
      bspush_ca_scan(v54, v55);
      OUTLINED_FUNCTION_2_35();
      if (test_string_s())
      {
        goto LABEL_19;
      }

      v56 = OUTLINED_FUNCTION_22_23();
      bspush_ca_scan(v56, v57);
      goto LABEL_30;
    }

LABEL_13:
    v47 = OUTLINED_FUNCTION_28_19();
    starttest(v47, v48);
    v49 = OUTLINED_FUNCTION_7_32();
    if (lpta_loadp_setscan_l(v49, v50, v51))
    {
      goto LABEL_33;
    }

    v52 = OUTLINED_FUNCTION_28_19();
    bspush_ca_scan(v52, v53);
LABEL_27:
    OUTLINED_FUNCTION_2_35();
    if (test_string_s())
    {
      goto LABEL_19;
    }

LABEL_28:
    OUTLINED_FUNCTION_16_28();
LABEL_31:
    while (test_string_s())
    {
      do
      {
LABEL_19:
        while (2)
        {
          v63 = *(a1 + 104);
          if (v63)
          {
            v64 = OUTLINED_FUNCTION_47_10(v63);
          }

          else
          {
            v64 = OUTLINED_FUNCTION_74_8();
          }

          switch(v64)
          {
            case 1:
              goto LABEL_5;
            case 2:
              goto LABEL_7;
            case 3:
              goto LABEL_9;
            case 4:
              goto LABEL_33;
            case 5:
              goto LABEL_11;
            case 6:
              goto LABEL_12;
            case 7:
              goto LABEL_13;
            case 8:
              v65 = OUTLINED_FUNCTION_28_19();
              bspush_ca_scan(v65, v66);
              OUTLINED_FUNCTION_2_35();
              if (test_string_s())
              {
                continue;
              }

              v67 = OUTLINED_FUNCTION_28_19();
              bspush_ca_scan(v67, v68);
              v69 = OUTLINED_FUNCTION_28_19();
              bspush_ca_scan(v69, v70);
              break;
            case 9:
            case 12:
            case 15:
              goto LABEL_30;
            case 10:
            case 11:
            case 16:
              goto LABEL_32;
            case 13:
              OUTLINED_FUNCTION_4_33();
              goto LABEL_31;
            case 14:
              goto LABEL_25;
            case 17:
              goto LABEL_27;
            case 18:
              goto LABEL_28;
            default:
              goto LABEL_3;
          }

          break;
        }

LABEL_25:
        OUTLINED_FUNCTION_2_35();
      }

      while (test_string_s());
LABEL_30:
      OUTLINED_FUNCTION_2_35();
    }

    goto LABEL_32;
  }

LABEL_33:
  *(a4 + 2) = HIWORD(v74);
  *(a5 + 2) = WORD1(v74);
  vretproc(a1);
  return 0;
}

uint64_t adjust_num_in_por_ordinal(uint64_t a1)
{
  OUTLINED_FUNCTION_100_3();
  v132 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24_23(v3, v4, v5, v6, v7, v8, v9, v10, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124);
  OUTLINED_FUNCTION_37_14();
  bzero(v131, v11);
  v12 = setjmp(v131);
  if (!v12 && !OUTLINED_FUNCTION_88_6(v12, v13, v14, v15, v16, v17, v18, v19, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v127, SHIDWORD(v127), v128, SWORD2(v128), SHIWORD(v128), v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v130, v131[0]))
  {
    v22 = OUTLINED_FUNCTION_40_11();
    OUTLINED_FUNCTION_71_8(v22, v23);
    v20 = 0;
    OUTLINED_FUNCTION_82_7(v24, v25, &null_str_11);
    v26 = OUTLINED_FUNCTION_79_8();
    fence_33(v26, v27, v28);
    starttest(v1, v2);
    v29 = OUTLINED_FUNCTION_40_11();
    if (lpta_loadp_setscan_r(v29, v30, 2))
    {
      goto LABEL_4;
    }

    v31 = OUTLINED_FUNCTION_63_8();
    bspush_ca_scan(v31, v32);
    v33 = OUTLINED_FUNCTION_48_10();
    for (i = 2; ; i = 11)
    {
      if (testFldeq(v33, v34, 1, i))
      {
        goto LABEL_10;
      }

      while (1)
      {
        v36 = OUTLINED_FUNCTION_60_9();
        if (!testFldeq(v36, v37, 4, 2))
        {
          v41 = advance_tok(v1, v38, v39, v40);
          if (!v41)
          {
            OUTLINED_FUNCTION_15_29(v41, v42, v43, v44, v45, v46, v47, v48, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126);
            v20 = 0;
            insert_l(v1, v51);
            goto LABEL_4;
          }
        }

LABEL_10:
        v49 = *(v1 + 104);
        v50 = v49 ? OUTLINED_FUNCTION_47_10(v49) : OUTLINED_FUNCTION_74_8();
        if (v50 == 2)
        {
          break;
        }

        if (v50 == 1)
        {
          v20 = 0;
          goto LABEL_4;
        }

        if (v50 != 3)
        {
          goto LABEL_3;
        }
      }

      v33 = OUTLINED_FUNCTION_60_9();
    }
  }

LABEL_3:
  v20 = 94;
LABEL_4:
  vretproc(v1);
  return v20;
}

void convert_por_roman_num(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_6_32();
  v152 = *MEMORY[0x277D85DE8];
  v147[0] = 0;
  v147[1] = 0;
  v146[0] = 0;
  v146[1] = 0;
  v145[0] = 0;
  v145[1] = 0;
  OUTLINED_FUNCTION_75_8();
  OUTLINED_FUNCTION_19_25(v4, v5, v6, v7, v8, v9, v10, v11, v140[0], v140[1], v140[2], v140[3], v140[4], v140[5], v140[6], v140[7], v140[8], v140[9], v140[10], v140[11], v140[12], v140[13], v140[14], v140[15], v140[16], v140[17], v140[18], v140[19], v140[20], v140[21], v140[22], v141[0], v141[1], v142[0], v142[1]);
  OUTLINED_FUNCTION_37_14();
  bzero(v151, v12);
  if (setjmp(v151))
  {
    goto LABEL_4;
  }

  if (ventproc(v3, v140, v150, v149, v148, v151))
  {
    goto LABEL_4;
  }

  v13 = OUTLINED_FUNCTION_10_32();
  get_parm(v13, v14, v15, -6);
  v16 = OUTLINED_FUNCTION_42_10();
  get_parm(v16, v17, v18, -6);
  push_ptr_init(v3, v145);
  v19 = OUTLINED_FUNCTION_73_8();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_32_17();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_36_14();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_45_10();
  push_ptr_init(v25, v26);
  fence_33(v3, 0, &null_str_11);
  v27 = OUTLINED_FUNCTION_63_8();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_34_16();
  if (lpta_loadp_setscan_r(v29, v30, 1))
  {
    goto LABEL_4;
  }

  v31 = 0;
  while (2)
  {
    v32 = OUTLINED_FUNCTION_48_10();
    if (!testFldeq(v32, v33, 1, 2) && !advance_tok(v3, v34, v35, v36))
    {
      v37 = OUTLINED_FUNCTION_58_9();
      bspush_ca_scan(v37, v38);
      *(v3 + 136) = 1;
      if (!OUTLINED_FUNCTION_39_12(v39, v40, v41))
      {
        v42 = OUTLINED_FUNCTION_34_16();
        v44 = v31;
        if (!lpta_loadp_setscan_r(v42, v43, 1))
        {
LABEL_10:
          while (1)
          {
            v45 = OUTLINED_FUNCTION_50_9();
            bspush_ca_scan(v45, v46);
            OUTLINED_FUNCTION_48_10();
            v47 = test_string_s();
            LODWORD(v31) = v44;
            v48 = v44;
            if (v47)
            {
              break;
            }

LABEL_50:
            v44 = v48;
            v125 = OUTLINED_FUNCTION_66_8();
            bspush_ca_scan(v125, v126);
          }
        }
      }
    }

    v49 = v31;
LABEL_12:
    v50 = *(v3 + 104);
    if (v50)
    {
      v51 = OUTLINED_FUNCTION_47_10(v50);
      v44 = v52;
    }

    else
    {
      v51 = vback(v3, v49);
      v44 = 0;
    }

    v48 = v44;
    switch(v51)
    {
      case 2:
        v31 = v44;
        continue;
      case 3:
        v53 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v53, v54);
        goto LABEL_23;
      case 4:
        goto LABEL_50;
      case 5:
LABEL_23:
        OUTLINED_FUNCTION_2_35();
        v73 = test_string_s();
        v48 = v44;
        v49 = v44;
        if (!v73)
        {
          goto LABEL_50;
        }

        goto LABEL_12;
      case 6:
        OUTLINED_FUNCTION_102_2();
        v78 = OUTLINED_FUNCTION_39_12(v75, v76, v77);
        v49 = v44;
        if (v78)
        {
          goto LABEL_12;
        }

        goto LABEL_27;
      case 7:
        goto LABEL_10;
      case 8:
LABEL_27:
        v79 = OUTLINED_FUNCTION_22_23();
        starttest(v79, v80);
        v81 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v81, v82, v83))
        {
          goto LABEL_28;
        }

        v96 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v96, v97);
        v74 = advance_tok(v3, v98, v99, v100);
        goto LABEL_33;
      case 9:
LABEL_28:
        v84 = OUTLINED_FUNCTION_28_19();
        starttest(v84, v85);
        v86 = OUTLINED_FUNCTION_30_18();
        if (lpta_loadp_setscan_r(v86, v87, v88))
        {
          goto LABEL_52;
        }

        v89 = OUTLINED_FUNCTION_28_19();
        bspush_ca_scan(v89, v90);
        goto LABEL_30;
      case 10:
        OUTLINED_FUNCTION_16_28();
        v74 = test_string_s();
LABEL_33:
        v49 = v44;
        if (!v74)
        {
          goto LABEL_34;
        }

        goto LABEL_12;
      case 11:
LABEL_34:
        OUTLINED_FUNCTION_102_2();
        v104 = OUTLINED_FUNCTION_39_12(v101, v102, v103);
        v49 = v44;
        if (v104)
        {
          goto LABEL_12;
        }

        find_previous_word(v3, v145, v144, v147);
        if (v105)
        {
          goto LABEL_41;
        }

        v106 = OUTLINED_FUNCTION_28_19();
        starttest(v106, v107);
        v108 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_l(v108, v109, v110))
        {
LABEL_45:
          savescptr(v3, 14, v143);
          OUTLINED_FUNCTION_28_19();
          bspush_ca_scan_boa();
          OUTLINED_FUNCTION_102_2();
          goto LABEL_46;
        }

LABEL_37:
        v111 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_l(v111, v112, v113))
        {
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
LABEL_39:
            savescptr(v3, 18, v144);
          }
        }

LABEL_40:
        lpta_rpta_loadp(v3, v145, v144);
        v114 = OUTLINED_FUNCTION_27_20();
        if (!setd_lookup(v114, v115, 55))
        {
          goto LABEL_57;
        }

LABEL_41:
        find_next_word(v3, v146, v142, v141);
        if (v116)
        {
          goto LABEL_4;
        }

        v117 = OUTLINED_FUNCTION_28_19();
        starttest(v117, v118);
        v119 = OUTLINED_FUNCTION_14_29();
        if (!lpta_loadp_setscan_l(v119, v120, v121) && !test_string_s())
        {
          OUTLINED_FUNCTION_28_19();
          bspush_ca_scan_boa();
          *(v3 + 136) = 1;
LABEL_46:
          v95 = OUTLINED_FUNCTION_39_12(v122, v123, v124);
LABEL_47:
          if (v95)
          {
            v49 = v44;
          }

          else
          {
            v49 = 1;
          }

          goto LABEL_12;
        }

LABEL_56:
        v134 = OUTLINED_FUNCTION_5_33();
        lpta_rpta_loadp(v134, v135, v136);
        v137 = OUTLINED_FUNCTION_27_20();
        if (!setd_lookup(v137, v138, 56))
        {
LABEL_57:
          v139 = OUTLINED_FUNCTION_61_9();
          convert_roman_num_to_ordinal(v139);
        }

LABEL_4:
        vretproc(v3);
        OUTLINED_FUNCTION_69_8();
        return;
      case 12:
        goto LABEL_41;
      case 13:
        goto LABEL_37;
      case 14:
        goto LABEL_45;
      case 15:
        bspop_boa(v3);
        v55 = OUTLINED_FUNCTION_30_18();
        v58 = lpta_loadp_setscan_r(v55, v56, v57);
        v49 = v44;
        if (v58)
        {
          goto LABEL_12;
        }

        v59 = OUTLINED_FUNCTION_2_35();
        v62 = testFldeq(v59, v60, v61, 2);
        v49 = v44;
        if (v62)
        {
          goto LABEL_12;
        }

        v65 = advance_tok(v3, v44, v63, v64);
        v49 = v44;
        if (v65)
        {
          goto LABEL_12;
        }

        v66 = OUTLINED_FUNCTION_2_35();
        v69 = testFldeq(v66, v67, v68, 1);
        v49 = v44;
        if (v69)
        {
          goto LABEL_12;
        }

        v72 = advance_tok(v3, v44, v70, v71);
        v49 = v44;
        if (v72)
        {
          goto LABEL_12;
        }

        goto LABEL_57;
      case 16:
        goto LABEL_57;
      case 17:
        goto LABEL_40;
      case 18:
        goto LABEL_39;
      case 20:
        goto LABEL_56;
      case 21:
        bspop_boa(v3);
        goto LABEL_55;
      case 22:
LABEL_55:
        v131 = OUTLINED_FUNCTION_33_17();
        savescptr(v131, v132, v133);
        goto LABEL_56;
      case 25:
LABEL_52:
        v127 = OUTLINED_FUNCTION_61_9();
        convert_roman_nums(v127, v128, v129);
        if (!v130)
        {
          *(v3 + 2822) = *(v3 + 2862);
          OUTLINED_FUNCTION_61_9();
          convert_digits();
        }

        goto LABEL_4;
      case 26:
LABEL_30:
        OUTLINED_FUNCTION_2_35();
        v91 = test_string_s();
        v49 = v44;
        if (!v91)
        {
          goto LABEL_31;
        }

        goto LABEL_12;
      case 27:
LABEL_31:
        v92 = OUTLINED_FUNCTION_28_19();
        starttest(v92, v93);
        OUTLINED_FUNCTION_28_19();
        bspush_ca_boa();
        v94 = OUTLINED_FUNCTION_61_9();
        v95 = convert_roman_num_to_ordinal(v94);
        goto LABEL_47;
      case 29:
        bspop_boa(v3);
        goto LABEL_4;
      default:
        goto LABEL_4;
    }
  }
}

uint64_t convert_roman_num_to_ordinal(uint64_t a1)
{
  OUTLINED_FUNCTION_6_32();
  v244 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_25(v3, v4, v5, v6, v7, v8, v9, v10, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238);
  OUTLINED_FUNCTION_23_23(v11, v12, v13, v14, v15, v16, v17, v18, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
  v19 = setjmp(v2);
  if (v19
    || OUTLINED_FUNCTION_12_31(v19, &v212, v20, v21, v22, v23, v24, v25, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, SHIDWORD(v239), v240, SWORD2(v240), SHIWORD(v240), v241, SWORD2(v241), SBYTE6(v241), SHIBYTE(v241), v242, v243)
    || ((v26 = OUTLINED_FUNCTION_10_32(), get_parm(v26, v27, v28, -6), v29 = OUTLINED_FUNCTION_42_10(), get_parm(v29, v30, v31, -6), fence_33(v1, 0, &null_str_11), v32 = OUTLINED_FUNCTION_34_16(), lpta_loadp_setscan_r(v32, v33, 1)) || (OUTLINED_FUNCTION_18_26(), v34 = test_string_s(), v34) || OUTLINED_FUNCTION_11_31(v34, v35, v36, v37, v38, v39, v40, v41, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v42 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v42, v43, v44), v45 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v45, v46, 7, v47, v48)))
    && ((v49 = OUTLINED_FUNCTION_30_18(), lpta_loadp_setscan_r(v49, v50, v51)) || (OUTLINED_FUNCTION_18_26(), v52 = test_string_s(), v52) || OUTLINED_FUNCTION_11_31(v52, v53, v54, v55, v56, v57, v58, v59, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v60 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v60, v61, v62), v63 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v63, v64, 6, v65, v66)))
    && ((v67 = OUTLINED_FUNCTION_30_18(), lpta_loadp_setscan_r(v67, v68, v69)) || (OUTLINED_FUNCTION_18_26(), v70 = test_string_s(), v70) || OUTLINED_FUNCTION_11_31(v70, v71, v72, v73, v74, v75, v76, v77, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v78 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v78, v79, v80), v81 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v81, v82, 7, v83, v84)))
    && ((v85 = OUTLINED_FUNCTION_30_18(), lpta_loadp_setscan_r(v85, v86, v87)) || (OUTLINED_FUNCTION_18_26(), v88 = test_string_s(), v88) || OUTLINED_FUNCTION_11_31(v88, v89, v90, v91, v92, v93, v94, v95, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v96 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v96, v97, v98), v99 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v99, v100, 5, v101, v102)))
    && ((v103 = OUTLINED_FUNCTION_30_18(), lpta_loadp_setscan_r(v103, v104, v105)) || (OUTLINED_FUNCTION_18_26(), v106 = test_string_s(), v106) || OUTLINED_FUNCTION_11_31(v106, v107, v108, v109, v110, v111, v112, v113, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v114 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v114, v115, v116), v117 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v117, v118, 5, v119, v120)))
    && ((v121 = OUTLINED_FUNCTION_30_18(), lpta_loadp_setscan_r(v121, v122, v123)) || (OUTLINED_FUNCTION_18_26(), v124 = test_string_s(), v124) || OUTLINED_FUNCTION_11_31(v124, v125, v126, v127, v128, v129, v130, v131, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v132 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v132, v133, v134), v135 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v135, v136, 4, v137, v138)))
    && ((v139 = OUTLINED_FUNCTION_30_18(), lpta_loadp_setscan_r(v139, v140, v141)) || (OUTLINED_FUNCTION_18_26(), v142 = test_string_s(), v142) || OUTLINED_FUNCTION_11_31(v142, v143, v144, v145, v146, v147, v148, v149, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v150 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v150, v151, v152), v153 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v153, v154, 5, v155, v156)))
    && ((v157 = OUTLINED_FUNCTION_30_18(), lpta_loadp_setscan_r(v157, v158, v159)) || (OUTLINED_FUNCTION_18_26(), v160 = test_string_s(), v160) || OUTLINED_FUNCTION_11_31(v160, v161, v162, v163, v164, v165, v166, v167, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v168 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v168, v169, v170), v171 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v171, v172, 5, v173, v174)))
    && ((v175 = OUTLINED_FUNCTION_30_18(), lpta_loadp_setscan_r(v175, v176, v177)) || (OUTLINED_FUNCTION_18_26(), v178 = test_string_s(), v178) || OUTLINED_FUNCTION_11_31(v178, v179, v180, v181, v182, v183, v184, v185, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v186 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v186, v187, v188), v189 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v189, v190, 3, v191, v192)))
    && ((v193 = OUTLINED_FUNCTION_30_18(), lpta_loadp_setscan_r(v193, v194, v195)) || (OUTLINED_FUNCTION_18_26(), v196 = test_string_s(), v196) || OUTLINED_FUNCTION_11_31(v196, v197, v198, v199, v200, v201, v202, v203, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236) || (v204 = OUTLINED_FUNCTION_5_33(), lpta_rpta_loadp(v204, v205, v206), v207 = OUTLINED_FUNCTION_3_34(), insert_2pt_s(v207, v208, 5, v209, v210))))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    npush_s(v1);
    OUTLINED_FUNCTION_72_8();
    vretproc(v1);
    return 0;
  }
}

uint64_t assign_gend_to_por_roman_num(uint64_t a1)
{
  OUTLINED_FUNCTION_80_7();
  v175 = *MEMORY[0x277D85DE8];
  v163 = 0;
  v164 = 0;
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  OUTLINED_FUNCTION_43_10();
  v150 = 0;
  HIDWORD(v149) = 0;
  OUTLINED_FUNCTION_38_13();
  bzero(&v126, v2);
  OUTLINED_FUNCTION_37_14();
  bzero(v174, v3);
  v4 = setjmp(v174);
  if (v4 || OUTLINED_FUNCTION_87_6(v4, v5, v6, v7, v8, v9, v10, v11, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158[0], v158[1], v158[2], v158[3], v158[4], v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173))
  {
LABEL_3:
    v12 = 94;
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_51_9();
  OUTLINED_FUNCTION_98_4(v14, v15);
  v16 = OUTLINED_FUNCTION_31_18();
  get_parm(v16, v17, v18, -6);
  v160 = 0xFFFC0000FFFCLL;
  v19 = OUTLINED_FUNCTION_77_8();
  push_ptr_init(v19, v20);
  v21 = OUTLINED_FUNCTION_68_8();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_76_8();
  v25 = push_ptr_init(v23, v24);
  OUTLINED_FUNCTION_99_4(v25, v26, v27, v28, v29, v30, v31, v32, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155);
  v33 = OUTLINED_FUNCTION_52_9();
  push_ptr_init(v33, v34);
  v35 = OUTLINED_FUNCTION_54_9();
  push_ptr_init(v35, v36);
  v37 = OUTLINED_FUNCTION_44_10();
  push_ptr_init(v37, v38);
  HIDWORD(v149) = 65532;
  fence_33(v1, 0, &null_str_11);
  v39 = OUTLINED_FUNCTION_49_9();
  fence_33(v39, v40, v41);
  HIWORD(v160) = *(v1 + 3014);
  WORD1(v160) = *(v1 + 3022);
  v42 = OUTLINED_FUNCTION_58_9();
  starttest(v42, v43);
  v44 = OUTLINED_FUNCTION_51_9();
  if (!lpta_loadp_setscan_l(v44, v45, 2) && !advanc(v1))
  {
LABEL_7:
    v46 = OUTLINED_FUNCTION_56_9();
    savescptr(v46, v47, v48);
    v49 = OUTLINED_FUNCTION_48_10();
    if (testFldeq(v49, v50, 1, 2) || advance_tok(v1, v51, v52, v53))
    {
      goto LABEL_34;
    }

LABEL_9:
    OUTLINED_FUNCTION_67_8();
    v54 = OUTLINED_FUNCTION_42_10();
    savescptr(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_51_9();
    goto LABEL_15;
  }

  while (2)
  {
    v62 = OUTLINED_FUNCTION_28_19();
    starttest(v62, v63);
    if (!lpta_loadp_setscan_r(v1, &v161, 2) && !advanc(v1))
    {
LABEL_12:
      OUTLINED_FUNCTION_65_8();
      v64 = OUTLINED_FUNCTION_91_5();
      savescptr(v64, v65, v66);
      v67 = OUTLINED_FUNCTION_60_9();
      if (testFldeq(v67, v68, 1, 2) || advance_tok(v1, v69, v70, v71))
      {
        goto LABEL_34;
      }

LABEL_14:
      OUTLINED_FUNCTION_64_8();
      v72 = OUTLINED_FUNCTION_42_10();
      savescptr(v72, v73, v74);
      v57 = OUTLINED_FUNCTION_42_10();
LABEL_15:
      get_gender_number(v57, v58, v59, v60, v61);
    }

LABEL_16:
    v75 = OUTLINED_FUNCTION_22_23();
    startloop(v75, v76);
    lpta_loadpn(v1, &v163);
    OUTLINED_FUNCTION_60_9();
    lpta_mover();
    v77 = OUTLINED_FUNCTION_51_9();
    lpta_storep(v77, v78, v79);
    lpta_loadpn(v1, &v161);
    OUTLINED_FUNCTION_60_9();
    lpta_mover();
    v80 = OUTLINED_FUNCTION_40_11();
    lpta_storep(v80, v81, v82);
    v83 = OUTLINED_FUNCTION_51_9();
    if (forall_to_test(v83, v84, &v150))
    {
      goto LABEL_34;
    }

LABEL_17:
    v85 = OUTLINED_FUNCTION_28_19();
    bspush_ca(v85);
    v86 = OUTLINED_FUNCTION_52_9();
    if (!lpta_loadp_setscan_r(v86, v87, 2) && !advance_tok(v1, v88, v89, v90))
    {
LABEL_19:
      v91 = OUTLINED_FUNCTION_62_8();
      savescptr(v91, v92, v93);
LABEL_20:
      v94 = OUTLINED_FUNCTION_28_19();
      starttest(v94, v95);
      v96 = OUTLINED_FUNCTION_30_18();
      if (lpta_loadp_setscan_l(v96, v97, v98))
      {
LABEL_21:
        v99 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_r(v99, v100, v101))
        {
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
            v102 = OUTLINED_FUNCTION_28_19();
            starttest_e(v102, v103);
            v104 = OUTLINED_FUNCTION_51_9();
            v106 = 1;
            goto LABEL_32;
          }
        }

LABEL_29:
        v117 = OUTLINED_FUNCTION_28_19();
        starttest(v117, v118);
        v119 = OUTLINED_FUNCTION_30_18();
        if (!lpta_loadp_setscan_r(v119, v120, v121))
        {
          OUTLINED_FUNCTION_2_35();
          if (!test_string_s())
          {
            v122 = OUTLINED_FUNCTION_28_19();
            starttest_e(v122, v123);
            v104 = OUTLINED_FUNCTION_51_9();
            v106 = 2;
LABEL_32:
            move_i(v104, v105, v106);
            if (!insert_1_2(v1, &v154))
            {
              goto LABEL_33;
            }

            goto LABEL_34;
          }
        }
      }

      else
      {
        v107 = OUTLINED_FUNCTION_9_32();
        if (testFldeq(v107, v108, v109, 2) || advance_tok(v1, v110, v111, v112))
        {
          goto LABEL_34;
        }

        insert_gender(v1);
LABEL_27:
        v113 = OUTLINED_FUNCTION_28_19();
        starttest(v113, v114);
        if (*(v1 + 3026) == WORD1(v160))
        {
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_35_15();
          v115 = OUTLINED_FUNCTION_20_24();
          insert_l(v115, v116);
        }
      }

LABEL_33:
      if (!OUTLINED_FUNCTION_96_5(9, 10, 19, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153))
      {
        v12 = 0;
        break;
      }
    }

LABEL_34:
    v124 = *(v1 + 104);
    if (v124)
    {
      v125 = OUTLINED_FUNCTION_47_10(v124);
    }

    else
    {
      v125 = OUTLINED_FUNCTION_74_8();
    }

    v12 = 0;
    switch(v125)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_7;
      case 3:
        goto LABEL_9;
      case 4:
      case 5:
      case 8:
        goto LABEL_16;
      case 6:
        goto LABEL_12;
      case 7:
        goto LABEL_14;
      case 9:
        goto LABEL_4;
      case 10:
        goto LABEL_20;
      case 11:
      case 15:
      case 17:
      case 18:
        goto LABEL_33;
      case 12:
        goto LABEL_19;
      case 13:
        goto LABEL_21;
      case 14:
        goto LABEL_27;
      case 16:
        goto LABEL_29;
      case 19:
        goto LABEL_17;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v1);
  return v12;
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *(v34 + 168) = v35;
  *(v34 + 144) = a34;
  *(v34 + 128) = 0;
  return v34;
}

void OUTLINED_FUNCTION_1_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = 1;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

uint64_t OUTLINED_FUNCTION_11_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v33 + 136) = v34;
  *(v33 + 112) = a33;
  *(v33 + 128) = 0;

  return test_ptr(v33, a2, a3);
}

uint64_t OUTLINED_FUNCTION_12_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, a2, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_15_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v33 + 168) = 1;
  *(v33 + 144) = a33;
  *(v33 + 128) = 0;
}

double OUTLINED_FUNCTION_17_27@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_19_25(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_23_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_24_23(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_25_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36)
{
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_39_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = v3;
  *(v4 + 128) = 0;

  return test_ptr(v4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_55_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);

  return lpta_rpta_loadp(v36, va, &a33);
}

void OUTLINED_FUNCTION_71_8(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_72_8()
{
  *(v0 + 3602) = 10;

  npop(v0, (v0 + 3600));
}

uint64_t OUTLINED_FUNCTION_74_8()
{

  return vback(v0, 0);
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return rpta_loadpn(v0, v0 + 3344);
}

void *OUTLINED_FUNCTION_82_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_33(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_87_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, int a54, __int16 a55, __int16 a56, int a57, __int16 a58, char a59, char a60)
{

  return ventproc(v60, &a9, &a60, &a56, &a53, v61 - 248);
}

uint64_t OUTLINED_FUNCTION_88_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, &a9, &a42, &a38, &a35, &a44);
}

uint64_t OUTLINED_FUNCTION_95_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, __int16 a40, __int16 a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{

  return ventproc(v47, a2, &a45, &a41, &a38, &a47);
}

uint64_t OUTLINED_FUNCTION_96_5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);

  return forto_adv_upto_r(v31, a1, a2, a3, 2, va);
}

BOOL OUTLINED_FUNCTION_97_5@<W0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1;

  return vretproc(v1);
}

void OUTLINED_FUNCTION_98_4(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_99_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);

  return push_ptr_init(v38, va);
}

void OUTLINED_FUNCTION_106_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 + 168) = v36;
  *(v35 + 144) = a35;
  *(v35 + 128) = 0;
}

uint64_t OUTLINED_FUNCTION_107_2()
{
  *(v0 + 2822) = *(v0 + 2850);

  return assign_gender_to_currency();
}

void OUTLINED_FUNCTION_108_2(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

void *fence_34(uint64_t a1, int a2, uint64_t a3)
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

void adjust_phones(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_46_11();
  OUTLINED_FUNCTION_17_28();
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v57, v6);
  OUTLINED_FUNCTION_21_25();
  bzero(v78, v7);
  v8 = setjmp(v78);
  if (v8)
  {
    goto LABEL_4;
  }

  v15 = OUTLINED_FUNCTION_25_23(v8, v57, v9, v10, v11, v12, v13, v14, v54, v55, v56, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11], v57[12], v57[13], v57[14], v57[15], v57[16], v57[17], v57[18], v57[19], v57[20], v57[21], v57[22], v58, v59, v60, v61, v62, v63, v64[0], v64[1], v65[0], v65[1], v66[0], v66[1], v67[0], v67[1], v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
  if (v15)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_48_11(v15, v67);
  OUTLINED_FUNCTION_29_20(v16, v66);
  OUTLINED_FUNCTION_30_19(v17, v65);
  v18 = OUTLINED_FUNCTION_19_26();
  get_parm(v18, v19, v20, -6);
  push_ptr_init(v5, &v62);
  push_ptr_init(v5, &v60);
  push_ptr_init(v5, &v58);
  fence_34(v5, 0, &_MergedGlobals_1_3);
  if (*(v5 + 2286) == *(v5 + 3842))
  {
    goto LABEL_4;
  }

  while (2)
  {
    mid_vowel_lowering(v5, v67, v66, v65, v64);
LABEL_6:
    v21 = OUTLINED_FUNCTION_44_11();
    startloop(v21, v22);
    lpta_loadpn(v5, v65);
    OUTLINED_FUNCTION_37_15();
    lpta_movel();
    v23 = OUTLINED_FUNCTION_16_29();
    lpta_storep(v23, v24, v25);
    lpta_loadpn(v5, v67);
    OUTLINED_FUNCTION_37_15();
    lpta_movel();
    lpta_storep(v5, &v58, v26);
    v27 = OUTLINED_FUNCTION_16_29();
    if (forall_to_test(v27, v28, &v58))
    {
      goto LABEL_14;
    }

LABEL_7:
    v29 = OUTLINED_FUNCTION_36_15();
    bspush_ca(v29);
    v30 = OUTLINED_FUNCTION_16_29();
    if (lpta_loadp_setscan_l(v30, v31, 4) || advance_tok(v5, v32, v33, v34))
    {
LABEL_14:
      v52 = *(v5 + 104);
      if (v52)
      {
        v53 = OUTLINED_FUNCTION_26_23(v52);
      }

      else
      {
        v53 = OUTLINED_FUNCTION_50_10();
      }

      switch(v53)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_6;
        case 4:
          goto LABEL_10;
        case 5:
        case 8:
          goto LABEL_13;
        case 6:
          goto LABEL_9;
        case 7:
          goto LABEL_11;
        case 9:
          goto LABEL_7;
        default:
          goto LABEL_4;
      }

      goto LABEL_4;
    }

    break;
  }

LABEL_9:
  savescptr(v5, 6, &v62);
LABEL_10:
  v35 = OUTLINED_FUNCTION_31_19();
  starttest(v35, v36);
  v37 = OUTLINED_FUNCTION_28_20();
  gliding(v37, v38, &v60, v39, v40, v41);
  if (v42)
  {
LABEL_11:
    starttest(v5, 5);
    v43 = OUTLINED_FUNCTION_28_20();
    vowel_epenthesis(v43, v44, &v60, v45, v46, v47);
    if (!v48)
    {
      v49 = OUTLINED_FUNCTION_18_27();
      starttest_l(v49, v50);
      v51 = OUTLINED_FUNCTION_28_20();
      affrication(v51);
    }
  }

LABEL_13:
  if (forto_adv_upto_l(v5, 3, 4, 9, 4, &v60))
  {
    goto LABEL_14;
  }

LABEL_4:
  vretproc(v5);
  OUTLINED_FUNCTION_40_12();
}

void mid_vowel_lowering(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_46_11();
  v128 = *MEMORY[0x277D85DE8];
  v123[0] = 0;
  v123[1] = 0;
  v122[0] = 0;
  v122[1] = 0;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v114[0] = 0;
  v114[1] = 0;
  v113[0] = 0;
  v113[1] = 0;
  v112[0] = 0;
  v112[1] = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v111, v7);
  OUTLINED_FUNCTION_21_25();
  bzero(v127, v8);
  if (!setjmp(v127))
  {
    v9 = ventproc(v5, v111, v126, v125, v124, v127);
    if (!v9)
    {
      OUTLINED_FUNCTION_48_11(v9, v123);
      OUTLINED_FUNCTION_29_20(v10, v122);
      OUTLINED_FUNCTION_30_19(v11, &v120);
      v12 = OUTLINED_FUNCTION_19_26();
      get_parm(v12, v13, v14, -6);
      LOWORD(v117) = -4;
      push_ptr_init(v5, &v115);
      push_ptr_init(v5, v114);
      push_ptr_init(v5, v113);
      v15 = push_ptr_init(v5, v112);
      OUTLINED_FUNCTION_51_10(v15, v16, &_MergedGlobals_1_3);
      HIWORD(v117) = 0;
      v17 = OUTLINED_FUNCTION_6_33();
      fence_34(v17, v18, v19);
      if (*(v5 + 2286) != *(v5 + 3886))
      {
        v20 = 0;
        while (2)
        {
          v116 = v119;
          starttest_l(v5, 2);
          *(v5 + 136) = v6;
          *(v5 + 112) = v121;
          *(v5 + 128) = 0;
          OUTLINED_FUNCTION_12_32();
          if (lpta_tstctxtr())
          {
            v21 = v20;
          }

          else
          {
            v22 = OUTLINED_FUNCTION_12_32();
            setscan_l(v22, v23, v24);
            v21 = v20;
            if (!v25)
            {
LABEL_34:
              v73 = OUTLINED_FUNCTION_45_11();
              bspush_ca_scan(v73, 4);
LABEL_35:
              savescptr(v5, 5, &v115);
              OUTLINED_FUNCTION_18_27();
              bspush_ca_scan_boa();
              v74 = OUTLINED_FUNCTION_12_32();
              if (npush_fld(v74, v75, 0))
              {
                goto LABEL_40;
              }

              v76 = OUTLINED_FUNCTION_54_10();
              npush_i(v76);
              v58 = if_testeq(v5, v77, v78, v79, v80, v81, v82, v83);
              goto LABEL_37;
            }
          }

LABEL_10:
          v20 = v21;
          starttest(v5, 7);
          v26 = OUTLINED_FUNCTION_28_20();
          v28 = lpta_loadp_setscan_l(v26, v27, 4);
          v29 = v20;
          if (!v28)
          {
LABEL_11:
            v20 = v29;
            bspush_ca_scan(v5, 9);
LABEL_12:
            savescptr(v5, 10, v113);
            v30 = OUTLINED_FUNCTION_37_15();
            if (testFldeq(v30, v31, v6, 2) || advance_tok(v5, v32, v33, v34))
            {
              goto LABEL_40;
            }

LABEL_14:
            v35 = OUTLINED_FUNCTION_45_11();
            savescptr(v35, 11, v114);
          }

LABEL_15:
          if (lpta_loadp_setscan_r(v5, v114, 4) || (OUTLINED_FUNCTION_37_15(), v36 = test_string_s(), v37 = (v5 + 5966), v36))
          {
LABEL_17:
            v38 = OUTLINED_FUNCTION_45_11();
            if (lpta_loadp_setscan_r(v38, v114, 4))
            {
              break;
            }

            OUTLINED_FUNCTION_37_15();
            v39 = test_string_s();
            v37 = (v5 + 5970);
            if (v39)
            {
              break;
            }
          }

          HIWORD(v117) = *v37;
LABEL_20:
          starttest(v5, 15);
          v40 = OUTLINED_FUNCTION_16_29();
          if (lpta_loadp_setscan_l(v40, v41, v6))
          {
LABEL_21:
            starttest(v5, 17);
            v42 = OUTLINED_FUNCTION_16_29();
            if (lpta_loadp_setscan_r(v42, v43, 4))
            {
LABEL_22:
              v44 = OUTLINED_FUNCTION_16_29();
              if (!lpta_loadp_setscan_r(v44, v45, v6))
              {
                OUTLINED_FUNCTION_9_33();
                if (!test_string_s())
                {
                  break;
                }
              }

LABEL_24:
              starttest(v5, 21);
              v46 = OUTLINED_FUNCTION_16_29();
              v48 = lpta_loadp_setscan_l(v46, v47, v6);
              v49 = v20;
              if (v48)
              {
LABEL_25:
                starttest(v5, 25);
                if (lpta_loadp_setscan_r(v5, v123, 2))
                {
LABEL_26:
                  if (*(v5 + 5966) == HIWORD(v117))
                  {
                    v50 = OUTLINED_FUNCTION_53_10();
                    starttest_l(v50, v51);
                    OUTLINED_FUNCTION_52_10();
                    bspush_ca_boa();
                    v52 = OUTLINED_FUNCTION_35_16();
                    nonverb_e_lowering(v52, v53, v54, v55, v56, v57);
                  }

                  else
                  {
LABEL_62:
                    v106 = OUTLINED_FUNCTION_44_11();
                    starttest(v106, v107);
                    OUTLINED_FUNCTION_36_15();
                    bspush_ca_boa();
                    v108 = OUTLINED_FUNCTION_35_16();
                    v58 = nonverb_o_lowering(v108);
                  }

                  goto LABEL_37;
                }

                bspush_ca_scan(v5, 26);
                v68 = OUTLINED_FUNCTION_12_32();
                v70 = testFldeq(v68, v69, v6, 3);
                v72 = v20;
                if (!v70)
                {
LABEL_32:
                  v20 = v72;
                  if (!advance_tok(v5, v71, v21, v29))
                  {
                    starttest_l(v5, 28);
                    bspush_ca_boa();
                    v58 = verb_stem_vowel_lowering();
LABEL_37:
                    if (v58)
                    {
                      v20 = v20;
                    }

                    else
                    {
                      v20 = 1;
                    }
                  }
                }
              }

              else
              {
LABEL_64:
                v20 = v49;
                savescptr(v5, 22, v112);
                OUTLINED_FUNCTION_3_35();
                if (!test_string_s())
                {
                  v109 = OUTLINED_FUNCTION_16_29();
                  if (!lpta_loadp_setscan_r(v109, v110, v6))
                  {
                    bspush_ca_scan(v5, 23);
                    OUTLINED_FUNCTION_3_35();
                    if (!test_string_s())
                    {
                      break;
                    }
                  }
                }
              }
            }

            else
            {
              bspush_ca_scan(v5, 18);
              v64 = OUTLINED_FUNCTION_37_15();
              v66 = 4;
              v67 = 6;
LABEL_59:
              v105 = testFldeq(v64, v65, v66, v67);
              v86 = v20;
              if (!v105)
              {
LABEL_60:
                v20 = v86;
                if (!advance_tok(v5, v71, v21, v29))
                {
                  break;
                }
              }
            }
          }

          else
          {
            bspush_ca_scan_boa();
            v59 = OUTLINED_FUNCTION_9_33();
            if (!testFldeq(v59, v60, 5, 0))
            {
              v58 = advance_tok(v5, v61, v62, v63);
              goto LABEL_37;
            }
          }

LABEL_40:
          v84 = *(v5 + 104);
          if (v84)
          {
            *(v5 + 104) = 0;
            v85 = v84;
          }

          else
          {
            v85 = vback(v5, v20);
            v20 = 0;
          }

          v71 = v20;
          v21 = v20;
          v29 = v20;
          v86 = v20;
          v72 = v20;
          switch(v85)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_10;
            case 3:
              goto LABEL_34;
            case 4:
              if (!advance_tok(v5, v20, v20, v20))
              {
                goto LABEL_34;
              }

              goto LABEL_40;
            case 5:
              goto LABEL_35;
            case 6:
              bspop_boa(v5);
              v104 = advance_tok(v5, v101, v102, v103);
              v21 = v20;
              if (!v104)
              {
                goto LABEL_10;
              }

              goto LABEL_40;
            case 7:
              goto LABEL_15;
            case 8:
              goto LABEL_11;
            case 9:
              v100 = advance_tok(v5, v20, v20, v20);
              v29 = v20;
              if (!v100)
              {
                goto LABEL_11;
              }

              goto LABEL_40;
            case 10:
              goto LABEL_12;
            case 11:
              goto LABEL_14;
            case 12:
              goto LABEL_17;
            case 13:
              goto LABEL_20;
            case 15:
              goto LABEL_21;
            case 16:
            case 29:
            case 33:
            case 34:
              bspop_boa(v5);
              goto LABEL_3;
            case 17:
              goto LABEL_22;
            case 18:
              v64 = OUTLINED_FUNCTION_5_34();
              v67 = 2;
              goto LABEL_59;
            case 19:
              goto LABEL_60;
            case 20:
              goto LABEL_24;
            case 21:
              goto LABEL_25;
            case 22:
              v49 = v20;
              goto LABEL_64;
            case 23:
              OUTLINED_FUNCTION_0_38();
              if (test_string_s())
              {
                goto LABEL_40;
              }

              goto LABEL_3;
            case 25:
              goto LABEL_26;
            case 26:
              v99 = testFldeq(v5, 2u, 2, 6);
              v72 = v20;
              if (!v99)
              {
                goto LABEL_32;
              }

              goto LABEL_40;
            case 27:
              goto LABEL_32;
            case 28:
            case 30:
            case 32:
              v87 = OUTLINED_FUNCTION_8_33();
              starttest(v87, v88);
              if (*(v5 + 5966) != HIWORD(v117))
              {
                goto LABEL_46;
              }

              lpta_rpta_loadp(v5, v114, v113);
              v89 = OUTLINED_FUNCTION_5_34();
              if (insert_2pt_s(v89, v90, v91, v92, v93))
              {
                goto LABEL_46;
              }

              goto LABEL_3;
            case 31:
              goto LABEL_62;
            case 35:
LABEL_46:
              lpta_rpta_loadp(v5, v114, v113);
              v94 = OUTLINED_FUNCTION_5_34();
              if (!insert_2pt_s(v94, v95, v96, v97, v98))
              {
                goto LABEL_3;
              }

              goto LABEL_40;
            default:
              goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_40_12();
}

void gliding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_22_24();
  bzero(v93, v7);
  OUTLINED_FUNCTION_21_25();
  bzero(v106, v8);
  v9 = setjmp(v106);
  if (v9 || OUTLINED_FUNCTION_25_23(v9, v93, v10, v11, v12, v13, v14, v15, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], v93[9], v93[10], v93[11], v93[12], v93[13], v93[14], v93[15], v93[16], v93[17], v93[18], v93[19], v93[20], v93[21], v93[22], v94[0], v94[1], v94[2], v94[3], v95[0], v95[1], v95[2], v95[3], v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106[0]) || (v16 = OUTLINED_FUNCTION_18_27(), OUTLINED_FUNCTION_42_11(v16, v17), v18 = OUTLINED_FUNCTION_19_26(), get_parm(v18, v19, v20, -6), v21 = OUTLINED_FUNCTION_33_18(), push_ptr_init(v21, v22), push_ptr_init(v6, v94), fence_34(v6, 0, &_MergedGlobals_1_3), v23 = OUTLINED_FUNCTION_7_33(), fence_34(v23, v24, v25), v26 = OUTLINED_FUNCTION_18_27(), lpta_loadpn(v26, v27), lpta_ctxtl(), v28 = OUTLINED_FUNCTION_33_18(), lpta_storep(v28, v29, v30), *(v6 + 2286) == *(v6 + 3886)))
  {
LABEL_4:
    vretproc(v6);
  }

  else
  {
    LODWORD(v31) = 0;
    while (2)
    {
      starttest(v6, 3);
      OUTLINED_FUNCTION_31_19();
      bspush_ca_boa();
      v32 = OUTLINED_FUNCTION_28_20();
      if (!lpta_loadp_setscan_r(v32, v33, 7) && !test_string_i())
      {
        LODWORD(v31) = 1;
      }

      v34 = v31;
LABEL_11:
      v35 = *(v6 + 104);
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_26_23(v35);
        v31 = v37;
      }

      else
      {
        v36 = vback(v6, v34);
        v31 = 0;
      }

      switch(v36)
      {
        case 1:
          continue;
        case 2:
        case 10:
        case 15:
          goto LABEL_33;
        case 3:
          v38 = OUTLINED_FUNCTION_16_29();
          if (lpta_loadp_setscan_r(v38, v39, 4))
          {
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_10_33();
          if (test_string_s())
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        case 4:
        case 8:
          bspop_boa(v6);
          goto LABEL_4;
        case 5:
LABEL_17:
          v40 = OUTLINED_FUNCTION_16_29();
          if (!lpta_loadp_setscan_r(v40, v41, 4))
          {
            OUTLINED_FUNCTION_10_33();
            if (!test_string_s())
            {
              v42 = OUTLINED_FUNCTION_52_10();
              starttest(v42, v43);
              v44 = OUTLINED_FUNCTION_14_30();
              if (!lpta_loadp_setscan_r(v44, v45, 4))
              {
                OUTLINED_FUNCTION_10_33();
                if (!test_string_s())
                {
                  goto LABEL_21;
                }
              }
            }
          }

          goto LABEL_4;
        case 6:
LABEL_23:
          savescptr(v6, 6, v94);
          starttest(v6, 7);
          bspush_ca_boa();
          v49 = OUTLINED_FUNCTION_14_30();
          v51 = lpta_loadp_setscan_r(v49, v50, 4);
          v34 = v31;
          if (!v51)
          {
            v52 = OUTLINED_FUNCTION_10_33();
            v55 = testFldeq(v52, v53, v54, 2);
            v34 = v31;
            if (!v55)
            {
              v58 = advance_tok(v6, v31, v56, v57);
              v34 = v31;
              if (!v58)
              {
                OUTLINED_FUNCTION_53_10();
                bspush_ca_scan_boa();
                v59 = testFldeq(v6, 4u, 4, 6);
                v34 = v31;
                if (!v59)
                {
                  if (advance_tok(v6, v31, v60, v61))
                  {
                    v34 = v31;
                  }

                  else
                  {
                    v34 = 1;
                  }
                }
              }
            }
          }

          goto LABEL_11;
        case 7:
          v62 = OUTLINED_FUNCTION_36_15();
          starttest(v62, v63);
          v64 = OUTLINED_FUNCTION_14_30();
          if (lpta_loadp_setscan_r(v64, v65, 1))
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_7_33();
          if (test_string_s())
          {
            goto LABEL_33;
          }

          goto LABEL_39;
        case 9:
          bspop_boa(v6);
          v34 = 1;
          goto LABEL_11;
        case 11:
LABEL_39:
          v83 = test_synch(v6, 11, 1, &_MergedGlobals_31);
          v34 = v31;
          if (!v83)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        case 14:
LABEL_21:
          v46 = OUTLINED_FUNCTION_44_11();
          v48 = test_synch(v46, v47, 1, &_MergedGlobals_31);
          v34 = v31;
          if (v48)
          {
            goto LABEL_11;
          }

LABEL_33:
          starttest(v6, 16);
          v66 = OUTLINED_FUNCTION_15_30();
          lpta_loadpn(v66, v67);
          rpta_loadpn(v6, v6 + 3344);
          if (!compare_ptas(v6) && !testneq(v6))
          {
            v68 = OUTLINED_FUNCTION_16_29();
            lpta_rpta_loadp(v68, v69, v95);
            v70 = OUTLINED_FUNCTION_10_33();
            if (!insert_2pt_s(v70, v71, v72, &unk_2806BC31B, 0))
            {
              goto LABEL_37;
            }
          }

LABEL_36:
          v73 = OUTLINED_FUNCTION_16_29();
          lpta_rpta_loadp(v73, v74, v95);
          v75 = OUTLINED_FUNCTION_10_33();
          inserted = insert_2pt_s(v75, v76, v77, &unk_2806BC315, 0);
          v34 = v31;
          if (inserted)
          {
            goto LABEL_11;
          }

LABEL_37:
          v79 = OUTLINED_FUNCTION_31_19();
          lpta_rpta_loadp(v79, v80, v95);
          v82 = delete_2pt(v6, 7, 0, v81);
          v34 = v31;
          if (v82)
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_38_14();
          OUTLINED_FUNCTION_1_36();
          delete_1pt();
          vretproc(v6);
          break;
        case 16:
          goto LABEL_36;
        case 17:
          goto LABEL_37;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_40_12();
}

void vowel_epenthesis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_41_11();
  v50 = v6;
  v8 = v7;
  v65 = *MEMORY[0x277D85DE8];
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v54[0] = 0;
  v54[1] = 0;
  v52 = 0u;
  v53 = 0u;
  OUTLINED_FUNCTION_22_24();
  bzero(v51, v9);
  OUTLINED_FUNCTION_21_25();
  bzero(v64, v10);
  if (setjmp(v64) || ventproc(v8, v51, v63, v62, v61, v64))
  {
LABEL_3:
    vretproc(v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_39_13(v11, v12);
    get_parm(v8, &v57, v50, -6);
    push_ptr_init(v8, &v55);
    v13 = push_ptr_init(v8, v54);
    *&v53 = 0;
    *(&v53 + 6) = 0;
    LODWORD(v52) = -65532;
    OUTLINED_FUNCTION_51_10(v13, v14, &_MergedGlobals_1_3);
    v15 = OUTLINED_FUNCTION_54_10();
    fence_34(v15, v16, v17);
    starttest(v8, 1);
    OUTLINED_FUNCTION_8_33();
    bspush_ca_boa();
    v18 = OUTLINED_FUNCTION_18_27();
    if (lpta_loadp_setscan_r(v18, v19, 4))
    {
      v20 = 0;
    }

    else
    {
      v20 = !testFldeq(v8, 4u, 4, 1) && !advance_tok(v8, v21, v22, v23);
    }

    v24 = v20;
    while (1)
    {
      v25 = *(v8 + 104);
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_26_23(v25);
        v28 = v27;
      }

      else
      {
        v26 = vback(v8, v24);
        v28 = 0;
      }

      switch(v26)
      {
        case 1:
          v29 = OUTLINED_FUNCTION_36_15();
          starttest(v29, v30);
          if (!lpta_loadp_setscan_r(v8, &v57, 4))
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        case 2:
          bspop_boa(v8);
          goto LABEL_3;
        case 3:
          goto LABEL_25;
        case 4:
LABEL_16:
          savescptr(v8, 4, &v55);
          v31 = OUTLINED_FUNCTION_16_29();
          bspush_ca_scan(v31, v32);
          goto LABEL_17;
        case 5:
          v46 = testFldeq(v8, 4u, 1, 1);
          v24 = v28;
          if (v46)
          {
            continue;
          }

          v49 = advance_tok(v8, v28, v47, v48);
          v24 = v28;
          if (v49)
          {
            continue;
          }

          goto LABEL_17;
        case 6:
LABEL_17:
          savescptr(v8, 6, v54);
          break;
        case 7:
          break;
        default:
          goto LABEL_3;
      }

      v33 = OUTLINED_FUNCTION_34_17();
      v35 = test_synch(v33, v34, 1, &unk_2806BC310);
      v24 = v28;
      if (!v35)
      {
        *(v8 + 168) = 1;
        *(v8 + 144) = v56;
        *(v8 + 128) = 0;
        insert_l(v8, 4);
        lpta_storep(v8, &v57, v36);
        settvar_s();
        npush_s(v8);
        WORD1(v52) = 10;
        v37 = OUTLINED_FUNCTION_15_30();
        npop(v37, v38);
        insert_2ptv();
        v24 = v28;
        if (!v39)
        {
          *(v8 + 168) = 1;
          *(v8 + 144) = v60;
          *(v8 + 136) = 1;
          v40 = OUTLINED_FUNCTION_1_36();
          proj_l(v40, 7, v41);
          lpta_rpta_loadp(v8, &v59, v54);
          v42 = OUTLINED_FUNCTION_54_10();
          inserted = insert_2pt_i(v42, v43, 2, &unk_2806C4690, v44);
          v24 = v28;
          if (!inserted)
          {
            break;
          }
        }
      }
    }

LABEL_25:
    *(v50 + 8) = v58;
    vretproc(v8);
  }

  OUTLINED_FUNCTION_40_12();
}

uint64_t affrication(uint64_t a1)
{
  OUTLINED_FUNCTION_27_21();
  v56 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20_25(v3, v4, v5, v6, v7, v8, v9, v10, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v51[0], v51[1], v51[2], v51[3], v51[4], v51[5]);
  OUTLINED_FUNCTION_21_25();
  bzero(v55, v11);
  if (setjmp(v55) || ventproc(v1, v50, v54, v53, v52, v55) || (v12 = OUTLINED_FUNCTION_18_27(), OUTLINED_FUNCTION_42_11(v12, v13), v14 = OUTLINED_FUNCTION_19_26(), get_parm(v14, v15, v16, -6), push_ptr_init(v1, v51), fence_34(v1, 0, &_MergedGlobals_1_3), v17 = OUTLINED_FUNCTION_6_33(), fence_34(v17, v18, v19), starttest(v1, v2), v20 = OUTLINED_FUNCTION_18_27(), lpta_loadp_setscan_r(v20, v21, 4)))
  {
LABEL_4:
    vretproc(v1);
    return 94;
  }

  v23 = OUTLINED_FUNCTION_8_33();
  bspush_ca_scan(v23, v24);
  OUTLINED_FUNCTION_5_34();
  if (test_string_s())
  {
    goto LABEL_10;
  }

LABEL_6:
  savescptr(v1, 3, v51);
  while (2)
  {
    OUTLINED_FUNCTION_38_14();
    v25 = OUTLINED_FUNCTION_1_36();
    if (test_ptr(v25, v26, v27))
    {
      goto LABEL_10;
    }

LABEL_8:
    v28 = OUTLINED_FUNCTION_8_33();
    bspush_ca_scan(v28, v29);
LABEL_9:
    OUTLINED_FUNCTION_5_34();
    if (test_string_s())
    {
LABEL_10:
      v30 = *(v1 + 104);
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_26_23(v30);
      }

      else
      {
        v31 = OUTLINED_FUNCTION_50_10();
      }

      switch(v31)
      {
        case 2:
          OUTLINED_FUNCTION_5_34();
          if (!test_string_s())
          {
            continue;
          }

          goto LABEL_10;
        case 3:
          goto LABEL_6;
        case 4:
          continue;
        case 5:
          goto LABEL_8;
        case 6:
          goto LABEL_16;
        case 7:
          goto LABEL_9;
        case 8:
          goto LABEL_19;
        case 9:
        case 10:
          goto LABEL_20;
        default:
          goto LABEL_4;
      }
    }

    break;
  }

LABEL_16:
  v32 = OUTLINED_FUNCTION_8_33();
  starttest(v32, v33);
  lpta_loadpn(v1, v51);
  rpta_loadpn(v1, v1 + 3344);
  if (compare_ptas(v1) || testneq(v1) || (v34 = OUTLINED_FUNCTION_23_24(), lpta_rpta_loadp(v34, v35, v36), v37 = OUTLINED_FUNCTION_5_34(), insert_2pt_s(v37, v38, v39, v40, v41)))
  {
LABEL_19:
    v42 = OUTLINED_FUNCTION_23_24();
    lpta_rpta_loadp(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_5_34();
    if (insert_2pt_s(v45, v46, v47, v48, v49))
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  vretproc(v1);
  return 0;
}

uint64_t verb_stem_vowel_lowering()
{
  OUTLINED_FUNCTION_11_32();
  v130 = *MEMORY[0x277D85DE8];
  v125[0] = 0;
  v125[1] = 0;
  v124[0] = 0;
  v124[1] = 0;
  v123[0] = 0;
  v123[1] = 0;
  v122[0] = 0;
  v122[1] = 0;
  v121 = 0;
  v120[0] = 0;
  v120[1] = 0;
  v119[0] = 0;
  v119[1] = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v118, v1);
  OUTLINED_FUNCTION_21_25();
  bzero(v129, v2);
  if (setjmp(v129))
  {
    goto LABEL_3;
  }

  v3 = ventproc(v0, v118, v128, v127, v126, v129);
  if (v3)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_49_10(v3, v125);
  OUTLINED_FUNCTION_48_11(v5, v124);
  OUTLINED_FUNCTION_29_20(v6, v123);
  OUTLINED_FUNCTION_30_19(v7, v122);
  v8 = OUTLINED_FUNCTION_19_26();
  get_parm(v8, v9, v10, -4);
  push_ptr_init(v0, v120);
  push_ptr_init(v0, v119);
  fence_34(v0, 0, &_MergedGlobals_1_3);
  v11 = OUTLINED_FUNCTION_7_33();
  fence_34(v11, v12, v13);
  if (*(v0 + 5966) == HIWORD(v121))
  {
    v14 = OUTLINED_FUNCTION_8_33();
    starttest(v14, v15);
    v16 = OUTLINED_FUNCTION_13_32();
    if (lpta_loadp_setscan_l(v16, v17, v18))
    {
LABEL_6:
      v19 = OUTLINED_FUNCTION_2_36();
      if (!lpta_loadp_setscan_l(v19, v20, v21))
      {
        OUTLINED_FUNCTION_7_33();
        if (!test_string_s())
        {
          goto LABEL_3;
        }
      }

LABEL_8:
      v22 = OUTLINED_FUNCTION_13_32();
      if (!lpta_loadp_setscan_r(v22, v23, v24))
      {
        OUTLINED_FUNCTION_7_33();
        if (!test_string_s())
        {
LABEL_3:
          vretproc(v0);
          return 94;
        }
      }

LABEL_10:
      v25 = OUTLINED_FUNCTION_8_33();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_2_36();
      if (lpta_loadp_setscan_l(v27, v28, v29))
      {
LABEL_11:
        v30 = OUTLINED_FUNCTION_8_33();
        starttest(v30, v31);
        v32 = OUTLINED_FUNCTION_2_36();
        if (lpta_loadp_setscan_l(v32, v33, v34))
        {
LABEL_31:
          v77 = OUTLINED_FUNCTION_2_36();
          if (lpta_loadp_setscan_l(v77, v78, v79))
          {
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_0_38();
          if (test_string_s())
          {
            goto LABEL_59;
          }

          goto LABEL_3;
        }

        v35 = OUTLINED_FUNCTION_8_33();
        bspush_ca_scan(v35, v36);
LABEL_29:
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
LABEL_30:
          v71 = OUTLINED_FUNCTION_19_26();
          savescptr(v71, v72, v73);
          v74 = OUTLINED_FUNCTION_19_26();
          lpta_rpta_loadp(v74, v75, v76);
          v68 = OUTLINED_FUNCTION_7_33();
          v70 = 69;
          goto LABEL_58;
        }
      }

      else
      {
        v37 = OUTLINED_FUNCTION_8_33();
        bspush_ca_scan(v37, v38);
        v39 = OUTLINED_FUNCTION_8_33();
        bspush_ca_scan(v39, v40);
LABEL_26:
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
LABEL_27:
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
LABEL_28:
            v62 = OUTLINED_FUNCTION_19_26();
            savescptr(v62, v63, v64);
            v65 = OUTLINED_FUNCTION_19_26();
            lpta_rpta_loadp(v65, v66, v67);
            v68 = OUTLINED_FUNCTION_7_33();
            v70 = 70;
            goto LABEL_58;
          }
        }
      }
    }

    else
    {
LABEL_14:
      savescptr(v0, 3, v120);
      if (!advance_tok(v0, v41, v42, v43) && !advance_tok(v0, v44, v45, v46))
      {
        v47 = OUTLINED_FUNCTION_13_32();
        if (!lpta_loadp_setscan_r(v47, v48, v49))
        {
          v50 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v50, v51);
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            v52 = OUTLINED_FUNCTION_8_33();
            bspush_ca_scan(v52, v53);
LABEL_19:
            OUTLINED_FUNCTION_0_38();
            if (!test_string_s())
            {
LABEL_20:
              OUTLINED_FUNCTION_0_38();
              v54 = test_string_s();
              v55 = 7;
LABEL_21:
              v56 = v55;
              if (!v54)
              {
LABEL_22:
                bspush_ca_scan(v0, v56);
LABEL_23:
                OUTLINED_FUNCTION_38_14();
                v57 = OUTLINED_FUNCTION_1_36();
                if (!test_ptr(v57, v58, v59))
                {
                  lpta_rpta_loadp(v0, v125, v124);
                  v60 = OUTLINED_FUNCTION_7_33();
                  if (!setd_lookup(v60, v61, 68))
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_3;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_40;
  }

  while (2)
  {
    v80 = OUTLINED_FUNCTION_8_33();
    starttest(v80, v81);
    v82 = OUTLINED_FUNCTION_2_36();
    if (!lpta_loadp_setscan_l(v82, v83, v84))
    {
      v92 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v92, v93);
LABEL_38:
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_39:
        OUTLINED_FUNCTION_0_38();
        if (!test_string_s())
        {
          goto LABEL_3;
        }
      }

      goto LABEL_40;
    }

LABEL_35:
    v85 = OUTLINED_FUNCTION_8_33();
    starttest(v85, v86);
    v87 = OUTLINED_FUNCTION_2_36();
    if (!lpta_loadp_setscan_l(v87, v88, v89))
    {
      v90 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v90, v91);
LABEL_56:
      OUTLINED_FUNCTION_0_38();
      if (!test_string_s())
      {
LABEL_57:
        v108 = OUTLINED_FUNCTION_19_26();
        savescptr(v108, v109, v110);
        v111 = OUTLINED_FUNCTION_19_26();
        lpta_rpta_loadp(v111, v112, v113);
        v68 = OUTLINED_FUNCTION_7_33();
        v70 = 71;
LABEL_58:
        if (setd_lookup(v68, v69, v70))
        {
          break;
        }

        goto LABEL_3;
      }

LABEL_40:
      v94 = *(v0 + 104);
      if (v94)
      {
        v95 = OUTLINED_FUNCTION_26_23(v94);
      }

      else
      {
        v95 = OUTLINED_FUNCTION_50_10();
      }

      v56 = 14;
      switch(v95)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_6;
        case 3:
          goto LABEL_14;
        case 4:
          OUTLINED_FUNCTION_0_38();
          v54 = test_string_s();
          v55 = 10;
          goto LABEL_21;
        case 5:
          goto LABEL_19;
        case 6:
          goto LABEL_20;
        case 7:
        case 16:
          goto LABEL_53;
        case 8:
        case 9:
        case 15:
          goto LABEL_23;
        case 10:
          v114 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v114, v115);
          v116 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v116, v117);
          goto LABEL_62;
        case 11:
          v96 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v96, v97);
          goto LABEL_51;
        case 12:
LABEL_62:
          OUTLINED_FUNCTION_0_38();
          v54 = test_string_s();
          v55 = 14;
          goto LABEL_21;
        case 13:
          goto LABEL_22;
        case 14:
          v106 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v106, v107);
LABEL_53:
          OUTLINED_FUNCTION_0_38();
          goto LABEL_54;
        case 17:
LABEL_51:
          OUTLINED_FUNCTION_7_33();
LABEL_54:
          if (!test_string_s())
          {
            goto LABEL_23;
          }

          goto LABEL_40;
        case 19:
        case 20:
        case 27:
        case 33:
        case 34:
        case 42:
          goto LABEL_59;
        case 21:
          goto LABEL_8;
        case 22:
          goto LABEL_10;
        case 23:
          goto LABEL_11;
        case 24:
          goto LABEL_27;
        case 25:
          goto LABEL_26;
        case 26:
          goto LABEL_28;
        case 28:
          goto LABEL_31;
        case 29:
          v98 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v98, v99);
          v100 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v100, v101);
          goto LABEL_46;
        case 30:
          goto LABEL_30;
        case 31:
          goto LABEL_29;
        case 32:
LABEL_46:
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        case 35:
          goto LABEL_35;
        case 36:
          goto LABEL_38;
        case 37:
          goto LABEL_39;
        case 38:
          v102 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v102, v103);
          v104 = OUTLINED_FUNCTION_8_33();
          bspush_ca_scan(v104, v105);
          goto LABEL_49;
        case 39:
          goto LABEL_57;
        case 40:
          goto LABEL_56;
        case 41:
LABEL_49:
          OUTLINED_FUNCTION_0_38();
          if (!test_string_s())
          {
            goto LABEL_56;
          }

          goto LABEL_40;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_59:
  vretproc(v0);
  return 0;
}

void nonverb_e_lowering(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_17_28();
  v191 = 0;
  v192 = 0;
  v189 = 0;
  v190 = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(&v166, v8);
  OUTLINED_FUNCTION_21_25();
  bzero(v198, v9);
  v10 = setjmp(v198);
  if (v10)
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_25_23(v10, &v166, v11, v12, v13, v14, v15, v16, v156, v158, v160, v162, v164, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *v193, v194, *v195, *&v195[8], *v196, *&v196[8], *v197, *&v197[8], *&v197[16], *&v197[20], *&v197[24], *&v197[28], *&v197[30], *&v197[32], *&v197[36], v197[38], v197[39], *&v197[40], v198[0]);
  if (v17)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_49_10(v17, v197);
  v18 = OUTLINED_FUNCTION_15_30();
  get_parm(v18, v19, v7, -6);
  OUTLINED_FUNCTION_29_20(v20, v195);
  OUTLINED_FUNCTION_30_19(v21, v193);
  v22 = OUTLINED_FUNCTION_19_26();
  get_parm(v22, v23, v24, -6);
  push_ptr_init(v6, &v189);
  fence_34(v6, 0, &_MergedGlobals_1_3);
  v25 = OUTLINED_FUNCTION_4_34();
  if (!lpta_loadp_setscan_r(v25, v26, v27))
  {
    OUTLINED_FUNCTION_54_10();
    if (!test_string_s())
    {
      *(v6 + 136) = 1;
      v28 = OUTLINED_FUNCTION_1_36();
      if (!test_ptr(v28, v29, v30))
      {
        goto LABEL_3;
      }
    }
  }

  v31 = 0;
  v165 = 10;
  v163 = 11;
  v161 = 17;
  v159 = 22;
  v157 = 25;
  while (2)
  {
    v32 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v32, v33, v34))
    {
      OUTLINED_FUNCTION_3_35();
      if (!test_string_s())
      {
        *(v6 + 136) = 1;
        v35 = OUTLINED_FUNCTION_1_36();
        if (!test_ptr(v35, v36, v37))
        {
          goto LABEL_3;
        }
      }
    }

LABEL_11:
    v38 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v38, v39, v40))
    {
      OUTLINED_FUNCTION_3_35();
      if (!test_string_s())
      {
        *(v6 + 136) = 1;
        v41 = OUTLINED_FUNCTION_1_36();
        if (!test_ptr(v41, v42, v43))
        {
          goto LABEL_3;
        }
      }
    }

LABEL_14:
    v44 = OUTLINED_FUNCTION_4_34();
    v47 = lpta_loadp_setscan_r(v44, v45, v46);
    if (!v47)
    {
      OUTLINED_FUNCTION_9_33();
      v47 = test_string_s();
      if (!v47)
      {
        *(v6 + 136) = 1;
        v55 = OUTLINED_FUNCTION_1_36();
        v47 = test_ptr(v55, v56, v57);
        if (!v47)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_17:
    if (*(v6 + 5950) == 2)
    {
      OUTLINED_FUNCTION_47_11(v47, v48, v49, v50, v51, v52, v53, v54, 25, 22, 17, 11, 10, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *v193, v194, *v195, *&v195[8], *v196, *&v196[8]);
      v151 = OUTLINED_FUNCTION_7_33();
      v47 = setd_lookup(v151, v152, 72);
      if (!v47)
      {
        goto LABEL_3;
      }

LABEL_73:
      OUTLINED_FUNCTION_32_18(v47, v48, v49, v50, v51, v52, v53, v54, v157, v159, v161, v163, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *v193, v194, *v195, *&v195[8], *v196, *&v196[8]);
      v153 = OUTLINED_FUNCTION_7_33();
      v155 = 73;
      goto LABEL_74;
    }

LABEL_18:
    v58 = OUTLINED_FUNCTION_16_29();
    starttest(v58, v59);
    v60 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v60, v61, v62))
    {
      v94 = OUTLINED_FUNCTION_53_10();
      bspush_ca_scan(v94, v95);
      v96 = OUTLINED_FUNCTION_9_33();
      if (!testFldeq(v96, v97, 4, 2) && !advance_tok(v6, v98, v99, v100))
      {
        v101 = OUTLINED_FUNCTION_9_33();
        if (!testFldeq(v101, v102, 4, 2))
        {
          OUTLINED_FUNCTION_52_10();
          bspush_ca_scan_boa();
          v140 = OUTLINED_FUNCTION_9_33();
          if (testFldeq(v140, v141, 0, 16))
          {
            v103 = v31;
          }

          else
          {
            v103 = 1;
          }

          goto LABEL_38;
        }
      }

      goto LABEL_37;
    }

LABEL_19:
    v63 = OUTLINED_FUNCTION_8_33();
    starttest(v63, v64);
    v65 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v65, v66, v67))
    {
      OUTLINED_FUNCTION_3_35();
      if (!test_string_s())
      {
        v113 = OUTLINED_FUNCTION_44_11();
        bspush_ca_scan(v113, v114);
        OUTLINED_FUNCTION_3_35();
        v115 = test_string_s();
        v103 = v31;
        v49 = v31;
        if (v115)
        {
          goto LABEL_38;
        }

LABEL_54:
        v116 = v49;
        *(v6 + 136) = 1;
        v117 = OUTLINED_FUNCTION_1_36();
        v120 = test_ptr(v117, v118, v119);
        v103 = v116;
        if (v120)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_32_18(v120, v116, v121, v122, v123, v124, v125, v126, 25, 22, 17, 11, 10, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *v193, v194, *v195, *&v195[8], *v196, *&v196[8]);
        v153 = OUTLINED_FUNCTION_7_33();
        v155 = 76;
LABEL_74:
        setd_lookup(v153, v154, v155);
        goto LABEL_3;
      }
    }

LABEL_21:
    v68 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v68, v69, v70))
    {
      OUTLINED_FUNCTION_9_33();
      if (!test_string_s())
      {
        *(v6 + 136) = 1;
        v71 = OUTLINED_FUNCTION_1_36();
        if (!test_ptr(v71, v72, v73))
        {
          goto LABEL_3;
        }
      }
    }

LABEL_24:
    v74 = OUTLINED_FUNCTION_18_27();
    starttest(v74, v75);
    v76 = OUTLINED_FUNCTION_4_34();
    if (!lpta_loadp_setscan_r(v76, v77, v78))
    {
      OUTLINED_FUNCTION_3_35();
      if (!test_string_s())
      {
        v127 = OUTLINED_FUNCTION_36_15();
        bspush_ca_scan(v127, v128);
        OUTLINED_FUNCTION_3_35();
        v129 = test_string_s();
        v103 = v31;
        v50 = v31;
        if (v129)
        {
          goto LABEL_38;
        }

LABEL_57:
        v130 = v50;
        *(v6 + 136) = 1;
        v131 = OUTLINED_FUNCTION_1_36();
        v134 = test_ptr(v131, v132, v133);
        v103 = v130;
        if (!v134)
        {
          goto LABEL_3;
        }

LABEL_38:
        v31 = v103;
LABEL_39:
        v104 = *(v6 + 104);
        if (v104)
        {
          v47 = OUTLINED_FUNCTION_26_23(v104);
        }

        else
        {
          v105 = OUTLINED_FUNCTION_12_32();
          v47 = vback(v105, v106);
          v31 = 0;
        }

        v49 = v31;
        v50 = v31;
        v51 = v31;
        switch(v47)
        {
          case 1:
            continue;
          case 3:
            goto LABEL_11;
          case 4:
            goto LABEL_14;
          case 5:
            goto LABEL_17;
          case 6:
            goto LABEL_18;
          case 7:
            goto LABEL_73;
          case 9:
            goto LABEL_19;
          case 10:
            OUTLINED_FUNCTION_0_38();
            if (test_string_s())
            {
              goto LABEL_39;
            }

            goto LABEL_66;
          case 11:
            bspop_boa(v6);
            if (advance_tok(v6, v108, v109, v110))
            {
              goto LABEL_39;
            }

            goto LABEL_66;
          case 12:
LABEL_66:
            v142 = OUTLINED_FUNCTION_13_32();
            v47 = lpta_loadp_setscan_r(v142, v143, v144);
            if (v47)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_7_33();
            v47 = test_string_s();
            if (v47)
            {
              goto LABEL_68;
            }

            goto LABEL_3;
          case 13:
LABEL_68:
            OUTLINED_FUNCTION_47_11(v47, v48, v49, v50, v51, v52, v53, v54, 25, 22, 17, 11, 10, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *v193, v194, *v195, *&v195[8], *v196, *&v196[8]);
            v145 = OUTLINED_FUNCTION_7_33();
            v47 = setd_lookup(v145, v146, 74);
            if (v47)
            {
              goto LABEL_69;
            }

            goto LABEL_3;
          case 15:
LABEL_69:
            OUTLINED_FUNCTION_32_18(v47, v48, v49, v50, v51, v52, v53, v54, v157, v159, v161, v163, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *v193, v194, *v195, *&v195[8], *v196, *&v196[8]);
            v153 = OUTLINED_FUNCTION_7_33();
            v155 = 75;
            goto LABEL_74;
          case 16:
            goto LABEL_21;
          case 17:
            OUTLINED_FUNCTION_0_38();
            v107 = test_string_s();
            v49 = v31;
            if (!v107)
            {
              goto LABEL_54;
            }

            goto LABEL_39;
          case 18:
            goto LABEL_54;
          case 20:
            goto LABEL_24;
          case 21:
            goto LABEL_26;
          case 22:
            OUTLINED_FUNCTION_0_38();
            v111 = test_string_s();
            v50 = v31;
            if (!v111)
            {
              goto LABEL_57;
            }

            goto LABEL_39;
          case 23:
            goto LABEL_57;
          case 24:
            goto LABEL_28;
          case 25:
            OUTLINED_FUNCTION_0_38();
            v112 = test_string_s();
            v51 = v31;
            if (!v112)
            {
              goto LABEL_60;
            }

            goto LABEL_39;
          case 26:
            goto LABEL_60;
          case 27:
            goto LABEL_70;
          case 28:
            goto LABEL_29;
          case 29:
            goto LABEL_71;
          default:
            goto LABEL_3;
        }
      }
    }

    break;
  }

LABEL_26:
  v79 = OUTLINED_FUNCTION_28_20();
  starttest(v79, v80);
  v81 = OUTLINED_FUNCTION_4_34();
  if (!lpta_loadp_setscan_r(v81, v82, v83))
  {
    OUTLINED_FUNCTION_3_35();
    if (!test_string_s())
    {
      bspush_ca_scan(v6, 25);
      OUTLINED_FUNCTION_3_35();
      v135 = test_string_s();
      v103 = v31;
      v51 = v31;
      if (v135)
      {
        goto LABEL_38;
      }

LABEL_60:
      v31 = v51;
      goto LABEL_61;
    }
  }

LABEL_28:
  v84 = OUTLINED_FUNCTION_34_17();
  starttest(v84, v85);
  v86 = OUTLINED_FUNCTION_4_34();
  v47 = lpta_loadp_setscan_l(v86, v87, v88);
  if (!v47)
  {
LABEL_29:
    v89 = OUTLINED_FUNCTION_31_19();
    savescptr(v89, v90, &v189);
    if (!advance_tok(v6, v91, v92, v93))
    {
      OUTLINED_FUNCTION_9_33();
      if (!test_string_s() && !lpta_loadp_setscan_r(v6, &v189, 1))
      {
        OUTLINED_FUNCTION_9_33();
        if (!test_string_s())
        {
LABEL_61:
          *(v6 + 136) = 1;
          v136 = OUTLINED_FUNCTION_1_36();
          v139 = test_ptr(v136, v137, v138);
          v103 = v31;
          if (!v139)
          {
            goto LABEL_3;
          }

          goto LABEL_38;
        }
      }
    }

LABEL_37:
    v103 = v31;
    goto LABEL_38;
  }

LABEL_70:
  OUTLINED_FUNCTION_47_11(v47, v48, v49, v50, v51, v52, v53, v54, 25, 22, 17, 11, 10, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *v193, v194, *v195, *&v195[8], *v196, *&v196[8]);
  v147 = OUTLINED_FUNCTION_7_33();
  v47 = setd_lookup(v147, v148, 77);
  if (v47)
  {
LABEL_71:
    OUTLINED_FUNCTION_32_18(v47, v48, v49, v50, v51, v52, v53, v54, v157, v159, v161, v163, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, *v193, v194, *v195, *&v195[8], *v196, *&v196[8]);
    v149 = OUTLINED_FUNCTION_7_33();
    setd_lookup(v149, v150, 78);
  }

LABEL_3:
  vretproc(v6);
  OUTLINED_FUNCTION_40_12();
}

uint64_t nonverb_o_lowering(uint64_t a1)
{
  OUTLINED_FUNCTION_11_32();
  v264 = *MEMORY[0x277D85DE8];
  v262[0] = 0;
  v262[1] = 0;
  v260 = 0;
  v261 = 0;
  OUTLINED_FUNCTION_20_25(v3, v4, v5, v6, v7, v8, v9, v10, v208, v210, v212, v214, v216, v218, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, v246, v248, v250, v252, v254, v255, v256, v257, v258, v259);
  OUTLINED_FUNCTION_21_25();
  bzero(v263, v11);
  if (setjmp(v263))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_55_10();
  v16 = ventproc(v1, v12, v13, v14, v15, v263);
  if (v16)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_49_10(v16, v262);
  v19 = OUTLINED_FUNCTION_15_30();
  get_parm(v19, v20, v2, -6);
  OUTLINED_FUNCTION_29_20(v21, &v258);
  OUTLINED_FUNCTION_30_19(v22, &v256);
  v23 = OUTLINED_FUNCTION_19_26();
  get_parm(v23, v24, v25, -6);
  v26 = 0;
  OUTLINED_FUNCTION_51_10(v27, v28, &_MergedGlobals_1_3);
  v29 = OUTLINED_FUNCTION_15_30();
  if (!lpta_loadp_setscan_r(v29, v30, 1))
  {
    OUTLINED_FUNCTION_3_35();
    if (!test_string_s())
    {
      *(v1 + 136) = 1;
      v31 = OUTLINED_FUNCTION_1_36();
      if (!test_ptr(v31, v32, v33))
      {
        v112 = OUTLINED_FUNCTION_8_33();
        starttest_l(v112, v113);
        OUTLINED_FUNCTION_8_33();
        bspush_ca_boa();
        OUTLINED_FUNCTION_24_24(v114, v115, v116, v117, v118, v119, v120, v121, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v254, v255, v256, v257, v258, v259, v260, v261);
        v122 = OUTLINED_FUNCTION_7_33();
        v93 = !setd_lookup(v122, v123, 79);
        goto LABEL_38;
      }
    }

    v26 = 0;
  }

LABEL_9:
  v34 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v34, v35, v36))
  {
    OUTLINED_FUNCTION_6_33();
    if (!test_string_s())
    {
      *(v1 + 136) = v26;
      v37 = OUTLINED_FUNCTION_1_36();
      v40 = test_ptr(v37, v38, v39);
      if (!v40)
      {
        OUTLINED_FUNCTION_24_24(v40, v41, v42, v43, v44, v45, v46, v47, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v254, v255, v256, v257, v258, v259, v260, v261);
        v105 = OUTLINED_FUNCTION_7_33();
        if (!setd_lookup(v105, v106, 79))
        {
          goto LABEL_87;
        }
      }
    }
  }

LABEL_12:
  v48 = OUTLINED_FUNCTION_8_33();
  starttest(v48, v49);
  v50 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v50, v51, v52))
  {
    v84 = OUTLINED_FUNCTION_7_33();
    if (!testFldeq(v84, v85, 4, 2) && !advance_tok(v1, v86, v87, v88))
    {
      OUTLINED_FUNCTION_38_14();
      v89 = OUTLINED_FUNCTION_1_36();
      v92 = test_ptr(v89, v90, v91);
      v93 = v26;
      if (v92)
      {
        goto LABEL_38;
      }

      v94 = OUTLINED_FUNCTION_23_24();
      lpta_rpta_loadp(v94, v95, v96);
      v81 = OUTLINED_FUNCTION_7_33();
      v83 = 80;
      goto LABEL_86;
    }

    goto LABEL_28;
  }

LABEL_13:
  v53 = OUTLINED_FUNCTION_8_33();
  starttest(v53, v54);
  v55 = OUTLINED_FUNCTION_13_32();
  if (!lpta_loadp_setscan_r(v55, v56, v57))
  {
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
      v101 = OUTLINED_FUNCTION_8_33();
      bspush_ca(v101);
      v102 = OUTLINED_FUNCTION_13_32();
      if (!lpta_loadp_setscan_l(v102, v103, v104))
      {
        OUTLINED_FUNCTION_7_33();
        v111 = test_string_s();
        v93 = v26;
        if (v111)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

LABEL_28:
      v93 = v26;
      goto LABEL_38;
    }
  }

LABEL_15:
  v58 = OUTLINED_FUNCTION_8_33();
  starttest(v58, v59);
  v60 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v60, v61, v62))
  {
    v97 = OUTLINED_FUNCTION_8_33();
    bspush_ca_scan(v97, v98);
    OUTLINED_FUNCTION_0_38();
    v99 = test_string_s();
    v93 = v26;
    v100 = v26;
    if (v99)
    {
      goto LABEL_38;
    }

LABEL_25:
    OUTLINED_FUNCTION_3_35();
    if (test_string_s())
    {
      v93 = v100;
      goto LABEL_38;
    }

    *(v1 + 136) = 1;
    v107 = OUTLINED_FUNCTION_1_36();
    v110 = test_ptr(v107, v108, v109);
    v93 = v100;
    if (v110)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_16:
  v63 = v26;
  v64 = OUTLINED_FUNCTION_2_36();
  v67 = lpta_loadp_setscan_r(v64, v65, v66);
  if (!v67)
  {
    OUTLINED_FUNCTION_6_33();
    v67 = test_string_s();
    if (!v67)
    {
      *(v1 + 136) = v26;
      v75 = OUTLINED_FUNCTION_1_36();
      v67 = test_ptr(v75, v76, v77);
      if (!v67)
      {
        v78 = OUTLINED_FUNCTION_23_24();
        lpta_rpta_loadp(v78, v79, v80);
        v81 = OUTLINED_FUNCTION_7_33();
        v83 = 82;
        goto LABEL_86;
      }
    }
  }

LABEL_57:
  if (*(v1 + 5950) == 2)
  {
    OUTLINED_FUNCTION_24_24(v67, v68, v69, v70, v71, v72, v73, v74, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v254, v255, v256, v257, v258, v259, v260, v261);
    v197 = OUTLINED_FUNCTION_7_33();
    if (!setd_lookup(v197, v198, 83))
    {
      goto LABEL_3;
    }

LABEL_82:
    v199 = OUTLINED_FUNCTION_23_24();
    lpta_rpta_loadp(v199, v200, v201);
    v81 = OUTLINED_FUNCTION_7_33();
    v83 = 84;
    goto LABEL_86;
  }

LABEL_58:
  v134 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v134, v135, v136))
  {
    LOBYTE(v26) = 1;
    OUTLINED_FUNCTION_3_35();
    if (!test_string_s())
    {
      *(v1 + 136) = 1;
      v137 = OUTLINED_FUNCTION_1_36();
      if (!test_ptr(v137, v138, v139))
      {
        v202 = OUTLINED_FUNCTION_13_32();
        if (lpta_loadp_setscan_r(v202, v203, v204) || (OUTLINED_FUNCTION_0_38(), test_string_s()))
        {
LABEL_85:
          v205 = OUTLINED_FUNCTION_23_24();
          lpta_rpta_loadp(v205, v206, v207);
          v81 = OUTLINED_FUNCTION_7_33();
          v83 = 85;
          goto LABEL_86;
        }

LABEL_34:
        lpta_loadpn(v1, &v256);
        rpta_loadpn(v1, &v254);
        if (compare_ptas(v1) || testeq(v1))
        {
          goto LABEL_87;
        }

        goto LABEL_3;
      }
    }
  }

LABEL_61:
  v140 = OUTLINED_FUNCTION_2_36();
  if (lpta_loadp_setscan_r(v140, v141, v142) || (OUTLINED_FUNCTION_6_33(), test_string_s()))
  {
    v26 = v63;
  }

  else
  {
    *(v1 + 136) = v26;
    v187 = OUTLINED_FUNCTION_1_36();
    v26 = v63;
    if (!test_ptr(v187, v188, v189))
    {
      goto LABEL_87;
    }
  }

LABEL_64:
  v143 = OUTLINED_FUNCTION_8_33();
  starttest(v143, v144);
  v145 = OUTLINED_FUNCTION_2_36();
  if (!lpta_loadp_setscan_r(v145, v146, v147))
  {
    OUTLINED_FUNCTION_0_38();
    if (!test_string_s())
    {
      v168 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v168, v169);
      OUTLINED_FUNCTION_0_38();
      v170 = test_string_s();
      v93 = v26;
      v70 = v26;
      if (v170)
      {
        goto LABEL_38;
      }

LABEL_72:
      v171 = v70;
      OUTLINED_FUNCTION_38_14();
      v172 = OUTLINED_FUNCTION_1_36();
      v175 = test_ptr(v172, v173, v174);
      v93 = v171;
      if (v175)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_24_24(v175, v171, v176, v177, v178, v179, v180, v181, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v254, v255, v256, v257, v258, v259, v260, v261);
      v182 = OUTLINED_FUNCTION_7_33();
      if (!setd_lookup(v182, v183, 86))
      {
        goto LABEL_3;
      }

LABEL_74:
      v184 = OUTLINED_FUNCTION_23_24();
      lpta_rpta_loadp(v184, v185, v186);
      v81 = OUTLINED_FUNCTION_7_33();
      v83 = 87;
LABEL_86:
      if (setd_lookup(v81, v82, v83))
      {
        goto LABEL_87;
      }

      goto LABEL_3;
    }
  }

LABEL_66:
  v148 = OUTLINED_FUNCTION_8_33();
  starttest(v148, v149);
  v150 = OUTLINED_FUNCTION_2_36();
  v67 = lpta_loadp_setscan_r(v150, v151, v152);
  if (!v67)
  {
    v153 = OUTLINED_FUNCTION_8_33();
    bspush_ca_scan(v153, v154);
    OUTLINED_FUNCTION_0_38();
    v155 = test_string_s();
    v93 = v26;
    v69 = v26;
    if (v155)
    {
      goto LABEL_38;
    }

    while (1)
    {
LABEL_68:
      v156 = v69;
      v157 = OUTLINED_FUNCTION_8_33();
      bspush_ca_scan(v157, v158);
      OUTLINED_FUNCTION_0_38();
      v159 = test_string_s();
      v93 = v156;
      v71 = v156;
      if (!v159)
      {
LABEL_69:
        v160 = v71;
        OUTLINED_FUNCTION_38_14();
        v161 = OUTLINED_FUNCTION_1_36();
        v164 = test_ptr(v161, v162, v163);
        v93 = v160;
        if (!v164)
        {
          v165 = OUTLINED_FUNCTION_23_24();
          lpta_rpta_loadp(v165, v166, v167);
          v81 = OUTLINED_FUNCTION_7_33();
          v83 = 88;
          goto LABEL_86;
        }
      }

LABEL_38:
      v26 = v93;
      do
      {
        while (2)
        {
          v124 = *(v1 + 104);
          if (v124)
          {
            v67 = OUTLINED_FUNCTION_26_23(v124);
          }

          else
          {
            v125 = OUTLINED_FUNCTION_9_33();
            v67 = vback(v125, v126);
            v26 = 0;
          }

          v100 = v26;
          v70 = v26;
          v69 = v26;
          v71 = v26;
          switch(v67)
          {
            case 1:
              goto LABEL_9;
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
            case 19:
            case 22:
            case 23:
            case 29:
            case 37:
              goto LABEL_87;
            case 3:
              bspop_boa(v1);
              goto LABEL_3;
            case 5:
              goto LABEL_12;
            case 6:
              goto LABEL_13;
            case 8:
              goto LABEL_15;
            case 9:
              OUTLINED_FUNCTION_24_24(v67, v68, v26, v26, v26, v72, v73, v74, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v254, v255, v256, v257, v258, v259, v260, v261);
              v127 = OUTLINED_FUNCTION_7_33();
              if (!setd_lookup(v127, v128, 81))
              {
                goto LABEL_34;
              }

              continue;
            case 10:
              goto LABEL_34;
            case 12:
              goto LABEL_16;
            case 13:
              OUTLINED_FUNCTION_0_38();
              v100 = v26;
              if (!test_string_s())
              {
                goto LABEL_25;
              }

              continue;
            case 14:
              goto LABEL_25;
            case 15:
              v63 = v26;
              goto LABEL_57;
            case 17:
              v63 = v26;
              goto LABEL_58;
            case 18:
              goto LABEL_82;
            case 20:
              v63 = v26;
              goto LABEL_61;
            case 21:
              goto LABEL_85;
            case 24:
              goto LABEL_64;
            case 25:
              goto LABEL_66;
            case 26:
              OUTLINED_FUNCTION_0_38();
              v129 = test_string_s();
              v70 = v26;
              if (!v129)
              {
                goto LABEL_72;
              }

              continue;
            case 27:
              goto LABEL_72;
            case 28:
              goto LABEL_74;
            case 30:
              goto LABEL_77;
            case 31:
            case 33:
              v131 = OUTLINED_FUNCTION_8_33();
              bspush_ca_scan(v131, v132);
              break;
            case 32:
              goto LABEL_68;
            case 34:
              goto LABEL_52;
            case 35:
              OUTLINED_FUNCTION_0_38();
              v130 = test_string_s();
              v71 = v26;
              if (!v130)
              {
                goto LABEL_69;
              }

              continue;
            case 36:
              goto LABEL_69;
            case 38:
              goto LABEL_78;
            default:
              goto LABEL_3;
          }

          break;
        }

LABEL_52:
        OUTLINED_FUNCTION_0_38();
        v133 = test_string_s();
        v69 = v26;
      }

      while (v133);
    }
  }

LABEL_77:
  OUTLINED_FUNCTION_24_24(v67, v68, v69, v70, v71, v72, v73, v74, v209, v211, v213, v215, v217, v219, v221, v223, v225, v227, v229, v231, v233, v235, v237, v239, v241, v243, v245, v247, v249, v251, v253, v254, v255, v256, v257, v258, v259, v260, v261);
  v190 = OUTLINED_FUNCTION_7_33();
  if (!setd_lookup(v190, v191, 89))
  {
    goto LABEL_87;
  }

LABEL_78:
  v192 = OUTLINED_FUNCTION_23_24();
  lpta_rpta_loadp(v192, v193, v194);
  v195 = OUTLINED_FUNCTION_7_33();
  if (!setd_lookup(v195, v196, 90))
  {
LABEL_87:
    v17 = 0;
    goto LABEL_4;
  }

LABEL_3:
  v17 = 94;
LABEL_4:
  vretproc(v1);
  return v17;
}

uint64_t por_phrase_level_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_27_21();
  v87 = *MEMORY[0x277D85DE8];
  memset(&v85[2], 0, 32);
  OUTLINED_FUNCTION_20_25(v2, v3, v4, v5, v6, v7, v8, v9, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1], v84[0], v84[1], v85[0], v85[1]);
  OUTLINED_FUNCTION_21_25();
  bzero(v86, v10);
  if (setjmp(v86) || (OUTLINED_FUNCTION_55_10(), ventproc(v1, v11, v12, v13, v14, v86)))
  {
LABEL_3:
    v15 = 94;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_42_11(v17, v18);
    v19 = OUTLINED_FUNCTION_14_30();
    OUTLINED_FUNCTION_39_13(v19, v20);
    v21 = OUTLINED_FUNCTION_33_18();
    push_ptr_init(v21, v22);
    push_ptr_init(v1, v84);
    v23 = OUTLINED_FUNCTION_31_19();
    push_ptr_init(v23, v24);
    fence_34(v1, 0, &_MergedGlobals_1_3);
    v25 = OUTLINED_FUNCTION_8_33();
    startloop(v25, v26);
    v27 = OUTLINED_FUNCTION_18_27();
    lpta_loadpn(v27, v28);
    lpta_mover();
    v29 = OUTLINED_FUNCTION_33_18();
    lpta_storep(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_14_30();
    lpta_loadpn(v32, v33);
    lpta_mover();
    v34 = OUTLINED_FUNCTION_31_19();
    lpta_storep(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_33_18();
    if (!forall_to_test(v37, v38, v83))
    {
LABEL_6:
      v39 = OUTLINED_FUNCTION_8_33();
      bspush_ca(v39);
      if (!lpta_loadp_setscan_r(v1, v85, 2) && !advance_tok(v1, v40, v41, v42))
      {
LABEL_8:
        v43 = OUTLINED_FUNCTION_23_24();
        savescptr(v43, v44, v45);
LABEL_9:
        voicing_assimilation(v1, v84, v46, v47, v48, v49);
LABEL_10:
        v50 = OUTLINED_FUNCTION_8_33();
        starttest(v50, v51);
        v52 = OUTLINED_FUNCTION_23_24();
        break_into_phones(v52, v53, v54, v55, v56, v57);
LABEL_11:
        if (!forto_adv_upto_r(v1, 1, 2, 6, 2, v85))
        {
          v15 = 0;
          goto LABEL_4;
        }
      }
    }

    v58 = *(v1 + 104);
    if (v58)
    {
      v59 = OUTLINED_FUNCTION_26_23(v58);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_50_10();
    }

    v15 = 0;
    switch(v59)
    {
      case 1:
        break;
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
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v1);
  return v15;
}

void voicing_assimilation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_41_11();
  v7 = v6;
  v42 = *MEMORY[0x277D85DE8];
  v37[0] = 0;
  v37[1] = 0;
  v36[0] = 0;
  v36[1] = 0;
  v35[0] = 0;
  v35[1] = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v34, v8);
  OUTLINED_FUNCTION_21_25();
  bzero(v41, v9);
  if (!setjmp(v41) && !ventproc(v7, v34, v40, v39, v38, v41))
  {
    v10 = OUTLINED_FUNCTION_14_30();
    OUTLINED_FUNCTION_39_13(v10, v11);
    push_ptr_init(v7, v36);
    v12 = push_ptr_init(v7, v35);
    OUTLINED_FUNCTION_51_10(v12, v13, &_MergedGlobals_1_3);
    v14 = OUTLINED_FUNCTION_8_33();
    starttest(v14, v15);
    v16 = OUTLINED_FUNCTION_14_30();
    if (!lpta_loadp_setscan_l(v16, v17, 4))
    {
      while (1)
      {
        v18 = OUTLINED_FUNCTION_14_30();
        savescptr(v18, v19, v35);
        OUTLINED_FUNCTION_5_34();
        if (test_string_s())
        {
          goto LABEL_10;
        }

        while (1)
        {
          v20 = OUTLINED_FUNCTION_15_30();
          savescptr(v20, v21, v36);
          v22 = OUTLINED_FUNCTION_31_19();
          if (!lpta_loadp_setscan_r(v22, v23, 4) && !testFldeq(v7, 4u, 2, 0) && !advance_tok(v7, v24, v25, v26))
          {
            v27 = OUTLINED_FUNCTION_34_17();
            lpta_rpta_loadp(v27, v28, v37);
            v29 = OUTLINED_FUNCTION_5_34();
            if (!insert_2pt_s(v29, v30, v31, &unk_2806BC328, 0))
            {
              goto LABEL_3;
            }
          }

LABEL_10:
          v32 = *(v7 + 104);
          v33 = v32 ? OUTLINED_FUNCTION_26_23(v32) : OUTLINED_FUNCTION_50_10();
          if (v33 == 2)
          {
            break;
          }

          if (v33 != 3)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v7);
  OUTLINED_FUNCTION_40_12();
}

void break_into_phones(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_27_21();
  v131 = *MEMORY[0x277D85DE8];
  v126[0] = 0;
  v126[1] = 0;
  v124 = 0;
  v125 = 0;
  v122 = 0u;
  v123 = 0u;
  v121[0] = 0;
  v121[1] = 0;
  v119 = 0;
  v120 = 0;
  v118[0] = 0;
  v118[1] = 0;
  v116 = 0u;
  v117 = 0u;
  v115[0] = 0;
  v115[1] = 0;
  OUTLINED_FUNCTION_22_24();
  bzero(v114, v7);
  OUTLINED_FUNCTION_21_25();
  bzero(v130, v8);
  if (!setjmp(v130) && !ventproc(v6, v114, v129, v128, v127, v130))
  {
    v9 = OUTLINED_FUNCTION_16_29();
    OUTLINED_FUNCTION_42_11(v9, v10);
    v11 = OUTLINED_FUNCTION_15_30();
    OUTLINED_FUNCTION_39_13(v11, v12);
    *&v123 = 0;
    *(&v123 + 6) = 0;
    LODWORD(v122) = -65532;
    v13 = OUTLINED_FUNCTION_14_30();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_18_27();
    push_ptr_init(v15, v16);
    v17 = OUTLINED_FUNCTION_28_20();
    push_ptr_init(v17, v18);
    *&v117 = 0;
    *(&v117 + 6) = 0;
    LODWORD(v116) = -65532;
    v19 = push_ptr_init(v6, v115);
    OUTLINED_FUNCTION_51_10(v19, v20, &_MergedGlobals_1_3);
    v21 = OUTLINED_FUNCTION_8_33();
    startloop(v21, v22);
    v23 = OUTLINED_FUNCTION_15_30();
    lpta_loadpn(v23, v24);
    OUTLINED_FUNCTION_12_32();
    lpta_movel();
    v25 = OUTLINED_FUNCTION_18_27();
    lpta_storep(v25, v26, v27);
    v28 = OUTLINED_FUNCTION_16_29();
    lpta_loadpn(v28, v29);
    OUTLINED_FUNCTION_12_32();
    lpta_movel();
    v30 = OUTLINED_FUNCTION_28_20();
    lpta_storep(v30, v31, v32);
    v33 = 0;
    v34 = 2;
    while (1)
    {
LABEL_5:
      v35 = forall_to_test(v6, &v119, v118);
      v37 = v33;
      v38 = v33;
      v39 = 1;
      if (v35)
      {
        goto LABEL_36;
      }

LABEL_6:
      v33 = v37;
      bspush_ca(v6);
      v40 = OUTLINED_FUNCTION_16_29();
      if (lpta_loadp_setscan_l(v40, v41, 4))
      {
        goto LABEL_23;
      }

      v43 = advance_tok(v6, v42, v37, v36);
      v37 = v33;
      v38 = v33;
      if (v43)
      {
        goto LABEL_36;
      }

LABEL_8:
      v33 = v37;
      savescptr(v6, 4, v121);
      while (2)
      {
        v44 = OUTLINED_FUNCTION_14_30();
        if (lpta_loadp_setscan_r(v44, v45, 4) || (OUTLINED_FUNCTION_12_32(), test_string_s()))
        {
LABEL_11:
          v46 = v33;
        }

        else
        {
          v63 = OUTLINED_FUNCTION_14_30();
          v39 = &v119;
          lpta_rpta_loadp(v63, v64, &v119);
          v65 = OUTLINED_FUNCTION_12_32();
          v66 = v34;
          v34 = 0;
          if (insert_2pt_s(v65, v67, v66, &unk_2806BC33C, 0))
          {
            OUTLINED_FUNCTION_43_11();
          }

          else
          {
            v78 = OUTLINED_FUNCTION_14_30();
            lpta_rpta_loadp(v78, v79, &v119);
            OUTLINED_FUNCTION_12_32();
            v39 = 1;
            v80 = mark_s();
            v46 = v33;
            v34 = 2;
            if (!v80)
            {
              break;
            }
          }
        }

        v33 = v46;
        v47 = OUTLINED_FUNCTION_14_30();
        if (!lpta_loadp_setscan_r(v47, v48, 4))
        {
          OUTLINED_FUNCTION_12_32();
          if (!test_string_s())
          {
            v68 = OUTLINED_FUNCTION_14_30();
            v39 = &v119;
            lpta_rpta_loadp(v68, v69, &v119);
            v70 = OUTLINED_FUNCTION_12_32();
            v71 = v34;
            v34 = 0;
            if (insert_2pt_s(v70, v72, v71, &unk_2806BC33E, 0))
            {
              OUTLINED_FUNCTION_43_11();
            }

            else
            {
              v81 = OUTLINED_FUNCTION_14_30();
              lpta_rpta_loadp(v81, v82, &v119);
              OUTLINED_FUNCTION_12_32();
              mark_s();
              OUTLINED_FUNCTION_43_11();
              if (!v83)
              {
                break;
              }
            }
          }
        }

LABEL_14:
        v49 = OUTLINED_FUNCTION_45_11();
        starttest(v49, 8);
        v50 = OUTLINED_FUNCTION_14_30();
        if (lpta_loadp_setscan_r(v50, v51, 4) || (OUTLINED_FUNCTION_12_32(), test_string_s()))
        {
LABEL_16:
          v52 = OUTLINED_FUNCTION_8_33();
          starttest(v52, v53);
          v54 = OUTLINED_FUNCTION_14_30();
          if (!lpta_loadp_setscan_r(v54, v55, 4))
          {
            v58 = OUTLINED_FUNCTION_12_32();
            if (testFldeq(v58, v59, v39, v34) || (v60 = OUTLINED_FUNCTION_12_32(), testFldeq(v60, v61, 7, v39)) || advance_tok(v6, v62, v37, v36))
            {
LABEL_23:
              v38 = v33;
              goto LABEL_36;
            }

            v84 = OUTLINED_FUNCTION_52_10();
            starttest_l(v84, v85);
            v86 = OUTLINED_FUNCTION_16_29();
            v88 = lpta_loadp_setscan_r(v86, v87, 4);
            v89 = v33;
            if (!v88)
            {
LABEL_53:
              v33 = v89;
              v110 = OUTLINED_FUNCTION_8_33();
              savescptr(v110, v111, v115);
              OUTLINED_FUNCTION_44_11();
              bspush_ca_scan_boa();
              v112 = OUTLINED_FUNCTION_36_15();
              bspush_ca_scan(v112, v113);
              v102 = OUTLINED_FUNCTION_12_32();
              v104 = v39;
              v105 = v34;
LABEL_47:
              v108 = testFldeq(v102, v103, v104, v105);
              v92 = v33;
              v38 = v33;
              if (!v108)
              {
LABEL_48:
                v109 = v92;
                if (advance_tok(v6, v38, v37, v36))
                {
                  v38 = v109;
                }

                else
                {
                  v38 = 1;
                }
              }

LABEL_36:
              v90 = *(v6 + 104);
              if (v90)
              {
                *(v6 + 104) = 0;
                v91 = v90;
                v33 = v38;
              }

              else
              {
                v91 = vback(v6, v38);
                v33 = 0;
              }

              v92 = v33;
              switch(v91)
              {
                case 2:
                  continue;
                case 3:
                  v93 = forto_adv_upto_l(v6, v39, v34, 17, 4, &v119);
                  v38 = v33;
                  if (v93)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_3;
                case 4:
                  v37 = v33;
                  goto LABEL_8;
                case 5:
                  goto LABEL_11;
                case 6:
                case 9:
                  goto LABEL_17;
                case 7:
                  goto LABEL_14;
                case 8:
                  goto LABEL_16;
                case 10:
                  v89 = v33;
                  goto LABEL_53;
                case 11:
                  bspop_boa(v6);
                  v94 = lpta_loadp_setscan_l(v6, v115, 4);
                  v38 = v33;
                  if (v94)
                  {
                    goto LABEL_36;
                  }

                  v95 = OUTLINED_FUNCTION_33_18();
                  v97 = savetok(v95, v96);
                  v38 = v33;
                  if (v97)
                  {
                    goto LABEL_36;
                  }

                  *(v6 + 168) = v39;
                  *(v6 + 144) = v120;
                  *(v6 + 128) = 0;
                  settvar_s();
                  WORD1(v116) = 5;
                  WORD1(v122) = 5;
                  v98 = OUTLINED_FUNCTION_34_17();
                  copyvar(v98, v99, &v122);
                  WORD1(v116) = 6;
                  WORD1(v122) = 6;
                  v100 = OUTLINED_FUNCTION_34_17();
                  copyvar(v100, v101, &v122);
                  OUTLINED_FUNCTION_12_32();
                  insert_lv();
                  goto LABEL_17;
                case 12:
                  v106 = OUTLINED_FUNCTION_53_10();
                  bspush_ca_scan(v106, v107);
                  v102 = OUTLINED_FUNCTION_12_32();
                  v104 = 4;
                  v105 = 6;
                  goto LABEL_47;
                case 13:
                  goto LABEL_48;
                case 14:
                  v102 = OUTLINED_FUNCTION_12_32();
                  v104 = 4;
                  v105 = 4;
                  goto LABEL_47;
                case 15:
                  goto LABEL_19;
                case 16:
                  goto LABEL_5;
                case 17:
                  v37 = v33;
                  goto LABEL_6;
                default:
                  goto LABEL_3;
              }
            }
          }
        }

        else
        {
          v73 = OUTLINED_FUNCTION_14_30();
          lpta_rpta_loadp(v73, v74, &v119);
          settvar_s();
          npush_s(v6);
          WORD1(v116) = 10;
          v75 = OUTLINED_FUNCTION_34_17();
          npop(v75, v76);
          OUTLINED_FUNCTION_12_32();
          insert_2ptv();
          v38 = v33;
          if (v77)
          {
            goto LABEL_36;
          }
        }

        break;
      }

LABEL_17:
      v56 = OUTLINED_FUNCTION_14_30();
      lpta_loadpn(v56, v57);
      rpta_loadpn(v6, v126);
      if (!compare_ptas(v6) && !testeq(v6))
      {
        break;
      }

LABEL_19:
      forall_cont_from();
    }
  }

LABEL_3:
  vretproc(v6);
  OUTLINED_FUNCTION_40_12();
}

uint64_t OUTLINED_FUNCTION_1_36()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_20_25(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_24_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return lpta_rpta_loadp(v39, va, &a36);
}

uint64_t OUTLINED_FUNCTION_25_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, int a51, __int16 a52, __int16 a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, char a59)
{

  return ventproc(v59, a2, &a57, &a53, &a50, &a59);
}

void OUTLINED_FUNCTION_29_20(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_30_19(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_32_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);

  return lpta_rpta_loadp(v46, va, &a41);
}

void OUTLINED_FUNCTION_39_13(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_42_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_47_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);

  return lpta_rpta_loadp(v46, va, &a43);
}

void OUTLINED_FUNCTION_48_11(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_49_10(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_50_10()
{

  return vback(v0, 0);
}

void *OUTLINED_FUNCTION_51_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_34(v3, 0, a3);
}

void *fence_35(uint64_t a1, int a2, uint64_t a3)
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

void generate_diaphones(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_61_10();
  v5 = v4;
  v7 = v6;
  v226 = *MEMORY[0x277D85DE8];
  v220 = 0;
  v221 = 0;
  v218 = 0;
  v219 = 0;
  v216 = 0;
  v217 = 0;
  v214 = 0u;
  v215 = 0u;
  v212 = 0;
  v213 = 0;
  v211[0] = 0;
  v211[1] = 0;
  v210[0] = 0;
  v210[1] = 0;
  v209[0] = 0;
  v209[1] = 0;
  v207 = 0u;
  v208 = 0u;
  OUTLINED_FUNCTION_29_21();
  bzero(v206, v8);
  OUTLINED_FUNCTION_28_21();
  bzero(v225, v9);
  if (!setjmp(v225) && !ventproc(v7, v206, v224, v223, v222, v225))
  {
    v10 = OUTLINED_FUNCTION_32_19();
    get_parm(v10, v11, v12, -6);
    v205 = v5;
    get_parm(v7, &v218, v5, -6);
    v13 = OUTLINED_FUNCTION_42_12();
    get_parm(v13, v14, v15, -6);
    *&v215 = 0;
    *(&v215 + 6) = 0;
    LODWORD(v214) = -65532;
    push_ptr_init(v7, &v212);
    push_ptr_init(v7, v211);
    push_ptr_init(v7, v210);
    push_ptr_init(v7, v209);
    *&v208 = 0;
    *(&v208 + 6) = 0;
    LODWORD(v207) = -65532;
    fence_35(v7, 0, &null_str_12);
    v16 = OUTLINED_FUNCTION_21_26();
    fence_35(v16, v17, v18);
    if (*(v7 + 3886) == 1)
    {
      goto LABEL_5;
    }

    v19 = 0;
LABEL_7:
    if (*(v7 + 3842) == 1)
    {
LABEL_5:
      *(v205 + 1) = v219;
      goto LABEL_3;
    }

LABEL_8:
    starttest(v7, 3);
    if (!lpta_loadp_setscan_l(v7, &v216, 1))
    {
      bspush_ca_scan(v7, 4);
      bspush_ca_scan(v7, 5);
      OUTLINED_FUNCTION_3_36();
      v20 = test_string_s();
      v21 = v19;
      if (v20)
      {
        goto LABEL_62;
      }

LABEL_10:
      v19 = v21;
      savescptr(v7, 4, &v218);
    }

LABEL_11:
    *(v7 + 1648) = v221;
    *(v7 + 1664) = v217;
    startloop(v7, 6);
    lpta_loadpn(v7, v7 + 1640);
    OUTLINED_FUNCTION_21_26();
    lpta_mover();
    v22 = OUTLINED_FUNCTION_31_20();
    lpta_storep(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_59_10();
    lpta_loadpn(v25, v26);
    OUTLINED_FUNCTION_21_26();
    lpta_mover();
    v27 = OUTLINED_FUNCTION_25_24();
    lpta_storep(v27, v28, v29);
    while (1)
    {
LABEL_12:
      v30 = OUTLINED_FUNCTION_31_20();
      v32 = forall_to_test(v30, v31, v210);
      v33 = v19;
      if (v32)
      {
        goto LABEL_62;
      }

LABEL_13:
      v19 = v33;
      bspush_ca(v7);
      v34 = OUTLINED_FUNCTION_31_20();
      if (lpta_loadp_setscan_r(v34, v35, 1))
      {
        goto LABEL_62;
      }

      v39 = advance_tok(v7, v36, v37, v38);
      v40 = v19;
      if (v39)
      {
        goto LABEL_62;
      }

LABEL_15:
      v19 = v40;
      savescptr(v7, 9, v211);
LABEL_16:
      v41 = OUTLINED_FUNCTION_26_24();
      starttest(v41, v42);
      v43 = OUTLINED_FUNCTION_31_20();
      if (!lpta_loadp_setscan_r(v43, v44, 1))
      {
        bspush_ca_scan_boa();
        v75 = OUTLINED_FUNCTION_21_26();
        v77 = testFldeq(v75, v76, 4, 1);
        goto LABEL_46;
      }

LABEL_17:
      v45 = OUTLINED_FUNCTION_31_20();
      if (!lpta_loadp_setscan_r(v45, v46, 1))
      {
        OUTLINED_FUNCTION_3_36();
        if (!test_string_s())
        {
          break;
        }
      }

LABEL_19:
      v47 = v19;
      starttest(v7, 63);
      v48 = OUTLINED_FUNCTION_31_20();
      if (lpta_loadp_setscan_r(v48, v49, 1))
      {
LABEL_20:
        v50 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v50, v51, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v80 = OUTLINED_FUNCTION_13_33();
            a_tilda_rules(v80);
            goto LABEL_151;
          }
        }

LABEL_22:
        v52 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v52, v53, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v81 = OUTLINED_FUNCTION_13_33();
            e_rules(v81);
            goto LABEL_151;
          }
        }

LABEL_24:
        v54 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v54, v55, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v82 = OUTLINED_FUNCTION_13_33();
            e_acute_rules(v82);
            goto LABEL_151;
          }
        }

LABEL_26:
        v56 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v56, v57, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v83 = OUTLINED_FUNCTION_13_33();
            e_circon_rules(v83);
            goto LABEL_151;
          }
        }

LABEL_28:
        v58 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v58, v59, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v84 = OUTLINED_FUNCTION_13_33();
            i_rules(v84, v85, v86, v87, v88);
            goto LABEL_151;
          }
        }

LABEL_30:
        v60 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v60, v61, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v89 = OUTLINED_FUNCTION_13_33();
            i_acute_rules(v89);
            goto LABEL_151;
          }
        }

LABEL_32:
        v62 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v62, v63, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v90 = OUTLINED_FUNCTION_13_33();
            o_rules(v90);
            goto LABEL_151;
          }
        }

LABEL_34:
        v64 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v64, v65, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v91 = OUTLINED_FUNCTION_13_33();
            o_acute_rules(v91);
            goto LABEL_151;
          }
        }

LABEL_36:
        v66 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v66, v67, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v92 = OUTLINED_FUNCTION_13_33();
            o_circon_rules(v92);
            goto LABEL_151;
          }
        }

LABEL_38:
        v68 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v68, v69, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v93 = OUTLINED_FUNCTION_13_33();
            o_tilda_rules(v93);
            goto LABEL_151;
          }
        }

LABEL_40:
        v70 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v70, v71, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v94 = OUTLINED_FUNCTION_13_33();
            u_rules(v94, v95, v96, v97, v98);
            goto LABEL_151;
          }
        }

LABEL_42:
        v47 = v19;
        v72 = OUTLINED_FUNCTION_31_20();
        if (!lpta_loadp_setscan_r(v72, v73, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v74 = OUTLINED_FUNCTION_13_33();
            u_acute_rules(v74);
          }
        }
      }

      else
      {
        bspush_ca_scan(v7, 64);
        OUTLINED_FUNCTION_3_36();
        if (test_string_s())
        {
          goto LABEL_62;
        }

LABEL_49:
        v78 = OUTLINED_FUNCTION_13_33();
        accented_a_rules(v78);
      }

LABEL_152:
      starttest(v7, 91);
      v192 = OUTLINED_FUNCTION_31_20();
      LODWORD(v19) = v47;
      if (!lpta_loadp_setscan_l(v192, v193, 4))
      {
LABEL_157:
        savescptr(v7, 92, v209);
        if (!advanc(v7))
        {
          v196 = OUTLINED_FUNCTION_57_10();
          if (!lpta_loadp_setscan_r(v196, v197, 4))
          {
            bspush_ca_scan_boa();
LABEL_160:
            v77 = test_synch(v7, 94, 1, &_MergedGlobals_32);
LABEL_46:
            if (!v77)
            {
              LODWORD(v19) = 1;
            }
          }
        }

LABEL_62:
        v99 = v19;
        while (2)
        {
          v100 = *(v7 + 104);
          if (v100)
          {
            v101 = OUTLINED_FUNCTION_36_16(v100);
            v19 = v102;
          }

          else
          {
            v101 = vback(v7, v99);
            v19 = 0;
          }

          v21 = v19;
          v47 = v19;
          switch(v101)
          {
            case 1:
              goto LABEL_7;
            case 2:
              goto LABEL_8;
            case 3:
              goto LABEL_11;
            case 4:
              goto LABEL_10;
            case 5:
              OUTLINED_FUNCTION_3_36();
              v103 = test_string_s();
              v21 = v19;
              v99 = v19;
              if (!v103)
              {
                goto LABEL_10;
              }

              continue;
            case 6:
              goto LABEL_5;
            case 7:
              goto LABEL_16;
            case 8:
              v169 = forto_adv_upto_r(v7, 6, 7, 99, 1, &v212);
              v99 = v19;
              if (!v169)
              {
                goto LABEL_5;
              }

              continue;
            case 9:
              v40 = v19;
              goto LABEL_15;
            case 10:
              goto LABEL_17;
            case 11:
              bspop_boa(v7);
              v109 = advance_tok(v7, v106, v107, v108);
              v99 = v19;
              if (v109)
              {
                continue;
              }

              v110 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v110, v111, v112))
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_11_33();
              b_rules();
              goto LABEL_151;
            case 12:
LABEL_73:
              v113 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v113, v114, v115))
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_11_33();
              c_rules();
              goto LABEL_151;
            case 13:
            case 14:
            case 16:
            case 18:
            case 20:
            case 22:
            case 24:
            case 26:
            case 28:
            case 30:
            case 32:
            case 34:
            case 36:
            case 38:
            case 40:
            case 42:
            case 44:
            case 46:
            case 50:
            case 52:
            case 54:
            case 56:
            case 58:
            case 59:
            case 60:
            case 62:
            case 67:
            case 69:
            case 71:
            case 73:
            case 75:
            case 77:
            case 79:
            case 81:
            case 83:
            case 85:
            case 87:
            case 89:
            case 90:
              goto LABEL_151;
            case 15:
LABEL_75:
              v116 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v116, v117, v118))
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_77;
              }

              OUTLINED_FUNCTION_11_33();
              c_cedille_rules();
              goto LABEL_151;
            case 17:
LABEL_77:
              v119 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v119, v120, v121))
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_11_33();
              d_rules();
              goto LABEL_151;
            case 19:
LABEL_79:
              v122 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v122, v123, v124))
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_11_33();
              f_rules();
              goto LABEL_151;
            case 21:
LABEL_81:
              v125 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v125, v126, v127))
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_11_33();
              g_rules();
              goto LABEL_151;
            case 23:
LABEL_83:
              v128 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v128, v129, v130))
              {
                goto LABEL_85;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_85;
              }

              OUTLINED_FUNCTION_11_33();
              h_rules();
              goto LABEL_151;
            case 25:
LABEL_85:
              v131 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v131, v132, v133))
              {
                goto LABEL_87;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_87;
              }

              OUTLINED_FUNCTION_11_33();
              j_rules();
              goto LABEL_151;
            case 27:
LABEL_87:
              v134 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v134, v135, v136))
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_11_33();
              k_rules();
              goto LABEL_151;
            case 29:
LABEL_89:
              v137 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v137, v138, v139))
              {
                goto LABEL_91;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_91;
              }

              OUTLINED_FUNCTION_11_33();
              l_rules();
              goto LABEL_151;
            case 31:
LABEL_91:
              v140 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v140, v141, v142))
              {
                goto LABEL_93;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_93;
              }

              OUTLINED_FUNCTION_11_33();
              m_rules();
              goto LABEL_151;
            case 33:
LABEL_93:
              v143 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v143, v144, v145))
              {
                goto LABEL_95;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_95;
              }

              OUTLINED_FUNCTION_11_33();
              n_rules();
              goto LABEL_151;
            case 35:
LABEL_95:
              v146 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v146, v147, v148))
              {
                goto LABEL_97;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_97;
              }

              OUTLINED_FUNCTION_11_33();
              p_rules();
              goto LABEL_151;
            case 37:
LABEL_97:
              v149 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v149, v150, v151))
              {
                goto LABEL_99;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_99;
              }

              OUTLINED_FUNCTION_11_33();
              q_rules();
              goto LABEL_151;
            case 39:
LABEL_99:
              v152 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v152, v153, v154))
              {
                goto LABEL_101;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_101;
              }

              OUTLINED_FUNCTION_11_33();
              r_rules();
              goto LABEL_151;
            case 41:
LABEL_101:
              v155 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v155, v156, v157))
              {
                goto LABEL_103;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_103;
              }

              OUTLINED_FUNCTION_11_33();
              s_rules();
              goto LABEL_151;
            case 43:
LABEL_103:
              v158 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v158, v159, v160))
              {
                goto LABEL_105;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_105;
              }

              OUTLINED_FUNCTION_11_33();
              t_rules();
              goto LABEL_151;
            case 45:
LABEL_105:
              v161 = OUTLINED_FUNCTION_22_25();
              starttest(v161, v162);
              v163 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v163, v164, v165))
              {
                goto LABEL_114;
              }

              v166 = OUTLINED_FUNCTION_22_25();
              bspush_ca_scan(v166, v167);
              goto LABEL_107;
            case 47:
LABEL_114:
              v171 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v171, v172, v173))
              {
                goto LABEL_116;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_116;
              }

              OUTLINED_FUNCTION_11_33();
              v_rules();
              goto LABEL_151;
            case 48:
LABEL_107:
              OUTLINED_FUNCTION_3_36();
              v168 = test_string_s();
              v99 = v19;
              if (!v168)
              {
                goto LABEL_113;
              }

              continue;
            case 49:
LABEL_113:
              OUTLINED_FUNCTION_11_33();
              accented_u_rules();
              goto LABEL_151;
            case 51:
LABEL_116:
              v174 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v174, v175, v176))
              {
                goto LABEL_118;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_118;
              }

              OUTLINED_FUNCTION_11_33();
              w_rules();
              goto LABEL_151;
            case 53:
LABEL_118:
              v177 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v177, v178, v179))
              {
                goto LABEL_120;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_120;
              }

              OUTLINED_FUNCTION_11_33();
              x_rules();
              goto LABEL_151;
            case 55:
LABEL_120:
              v180 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v180, v181, v182))
              {
                goto LABEL_122;
              }

              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_122;
              }

              v187 = OUTLINED_FUNCTION_11_33();
              y_rules(v187, v188, v189, v190, v191);
              goto LABEL_151;
            case 57:
LABEL_122:
              v183 = OUTLINED_FUNCTION_24_25();
              if (!lpta_loadp_setscan_r(v183, v184, v185))
              {
                OUTLINED_FUNCTION_3_36();
                if (!test_string_s())
                {
                  v186 = OUTLINED_FUNCTION_11_33();
                  z_rules(v186);
                }
              }

              goto LABEL_151;
            case 61:
              goto LABEL_19;
            case 63:
              goto LABEL_20;
            case 64:
              v104 = OUTLINED_FUNCTION_22_25();
              bspush_ca_scan(v104, v105);
              goto LABEL_111;
            case 65:
              goto LABEL_49;
            case 66:
LABEL_111:
              OUTLINED_FUNCTION_3_36();
              v170 = test_string_s();
              v47 = v19;
              v99 = v19;
              if (!v170)
              {
                goto LABEL_49;
              }

              continue;
            case 68:
              goto LABEL_22;
            case 70:
              goto LABEL_24;
            case 72:
              goto LABEL_26;
            case 74:
              goto LABEL_28;
            case 76:
              goto LABEL_30;
            case 78:
              goto LABEL_32;
            case 80:
              goto LABEL_34;
            case 82:
              goto LABEL_36;
            case 84:
              goto LABEL_38;
            case 86:
              goto LABEL_40;
            case 88:
              goto LABEL_42;
            case 91:
              v47 = v19;
              goto LABEL_153;
            case 92:
              goto LABEL_157;
            case 93:
              bspop_boa(v7);
              *(v7 + 136) = 1;
              *(v7 + 112) = v213;
              *(v7 + 128) = 0;
              OUTLINED_FUNCTION_23_25();
              delete_1pt();
              goto LABEL_145;
            case 94:
              goto LABEL_160;
            case 95:
            case 96:
LABEL_145:
              v47 = v19;
              goto LABEL_155;
            case 97:
              goto LABEL_162;
            case 98:
              goto LABEL_12;
            case 99:
              v33 = v19;
              goto LABEL_13;
            default:
              goto LABEL_3;
          }
        }
      }

LABEL_153:
      starttest(v7, 95);
      if (!lpta_loadp_setscan_l(v7, v211, 4) && !savetok(v7, &v214))
      {
        if (testFldeq(v7, 4u, 1, 1) || advance_tok(v7, v198, v199, v200) || savetok(v7, &v207) || advance_tok(v7, v201, v202, v203) || testeq_tvars(v7, &v214, &v207))
        {
          LODWORD(v19) = v47;
          goto LABEL_62;
        }

        v204 = OUTLINED_FUNCTION_13_33();
        delete_phone_from_left(v204);
      }

LABEL_155:
      lpta_loadpn(v7, v211);
      v194 = OUTLINED_FUNCTION_59_10();
      rpta_loadpn(v194, v195);
      if (compare_ptas(v7))
      {
        v19 = v47;
      }

      else
      {
        v19 = v47;
        if (!testeq(v7))
        {
          goto LABEL_5;
        }
      }

LABEL_162:
      OUTLINED_FUNCTION_22_25();
      forall_cont_from();
    }

    v79 = OUTLINED_FUNCTION_13_33();
    a_rules(v79);
LABEL_151:
    v47 = v19;
    goto LABEL_152;
  }

LABEL_3:
  vretproc(v7);
  OUTLINED_FUNCTION_60_10();
}

uint64_t b_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t c_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v195, v198);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v196, v199, v201, v203, v205, v207);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v197, v200, v202, SHIDWORD(v202), v204, SWORD2(v204), SHIWORD(v204), v206, SWORD2(v206), SBYTE6(v206), SHIBYTE(v206), v208, v209))
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_12_33();
  get_parm(v27, v28, v29, -6);
  OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189);
  v38 = fence_35(v0, 0, &null_str_12);
  OUTLINED_FUNCTION_38_15(v38, v39, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v40 = OUTLINED_FUNCTION_26_24();
  if (!lpta_loadp_setscan_r(v40, v41, v1))
  {
    OUTLINED_FUNCTION_3_36();
    inserted = test_string_s();
    if (!inserted)
    {
LABEL_6:
      OUTLINED_FUNCTION_27_22(inserted, v43, v44, v45, v46, v47, v48, v49, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190);
      v50 = OUTLINED_FUNCTION_12_33();
      lpta_rpta_loadp(v50, v51, v52);
      goto LABEL_11;
    }
  }

  while (2)
  {
    v53 = OUTLINED_FUNCTION_19_27();
    starttest(v53, v54);
    v55 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v55, v56, v57))
    {
      goto LABEL_10;
    }

    v58 = OUTLINED_FUNCTION_20_26();
    bspush_ca_scan(v58, v59);
LABEL_9:
    OUTLINED_FUNCTION_3_36();
    if (!test_string_s())
    {
LABEL_10:
      v60 = OUTLINED_FUNCTION_10_34();
      lpta_rpta_loadp(v60, v61, v62);
LABEL_11:
      v63 = OUTLINED_FUNCTION_0_39();
      inserted = insert_2pt_s(v63, v64, v65, v66, v67);
      if (!inserted)
      {
LABEL_17:
        OUTLINED_FUNCTION_16_30(inserted, v43, v44, v45, v46, v47, v48, v49, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194);
        break;
      }
    }

    v68 = *(v0 + 104);
    if (v68)
    {
      inserted = OUTLINED_FUNCTION_36_16(v68);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_53_11();
    }

    switch(inserted)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_17;
      case 4:
      case 6:
        goto LABEL_10;
      case 5:
      case 7:
      case 8:
        v69 = OUTLINED_FUNCTION_22_25();
        bspush_ca_scan(v69, v70);
        goto LABEL_9;
      case 9:
        goto LABEL_9;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t c_cedille_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t d_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v186, v189);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v187, v190, v192, v194, v196, v198);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v188, v191, v193, SHIDWORD(v193), v195, SWORD2(v195), SHIWORD(v195), v197, SWORD2(v197), SBYTE6(v197), SHIBYTE(v197), v199, v200))
  {
    v27 = OUTLINED_FUNCTION_12_33();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180);
    v38 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v38, v39, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v40 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_r(v40, v41, v1))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_3_36();
    inserted = test_string_s();
    if (inserted)
    {
      goto LABEL_7;
    }

    while (2)
    {
      OUTLINED_FUNCTION_27_22(inserted, v43, v44, v45, v46, v47, v48, v49, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181);
      v50 = OUTLINED_FUNCTION_12_33();
      lpta_rpta_loadp(v50, v51, v52);
      while (1)
      {
        v56 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v56, v57, v58, v59, v60);
        if (!inserted)
        {
          goto LABEL_15;
        }

        v61 = *(v0 + 104);
        inserted = v61 ? OUTLINED_FUNCTION_36_16(v61) : OUTLINED_FUNCTION_53_11();
        if (inserted != 1)
        {
          break;
        }

LABEL_7:
        v53 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v53, v54, v55);
      }

      if (inserted == 2)
      {
        continue;
      }

      break;
    }

    if (inserted == 3)
    {
LABEL_15:
      OUTLINED_FUNCTION_16_30(inserted, v43, v44, v45, v46, v47, v48, v49, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v185);
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t f_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t g_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v209, v213, v216);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v210, v214, v217, v219, v221, v223, v225);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v206, v211, v215, v218, v220, SHIDWORD(v220), v222, SWORD2(v222), SHIWORD(v222), v224, SWORD2(v224), SBYTE6(v224), SHIBYTE(v224), v226, v227))
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_12_33();
  get_parm(v27, v28, v29, -6);
  OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207);
  v38 = fence_35(v0, 0, &null_str_12);
  OUTLINED_FUNCTION_38_15(v38, v39, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v40 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v40, v41, v1))
  {
LABEL_5:
    v42 = OUTLINED_FUNCTION_22_25();
    starttest(v42, v43);
    v44 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v44, v45, v46))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_3_36();
    if (test_string_s())
    {
      goto LABEL_7;
    }

LABEL_13:
    v65 = OUTLINED_FUNCTION_30_20();
    savescptr(v65, v66, v67);
    v68 = OUTLINED_FUNCTION_17_29();
    if (!testFldeq(v68, v69, v70, 1) && !advance_tok(v0, v71, v72, v73))
    {
      v74 = OUTLINED_FUNCTION_22_25();
      starttest(v74, v75);
      v76 = OUTLINED_FUNCTION_24_25();
      if (lpta_loadp_setscan_r(v76, v77, v78))
      {
LABEL_24:
        v86 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v86, v87, v88);
        v50 = OUTLINED_FUNCTION_9_34();
        v52 = 2;
LABEL_8:
        inserted = insert_2pt_s(v50, v51, v52, v53, v54);
        if (!inserted)
        {
LABEL_9:
          OUTLINED_FUNCTION_16_30(inserted, v56, v57, v58, v59, v60, v61, v62, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v212);
          goto LABEL_3;
        }

        goto LABEL_18;
      }

LABEL_16:
      v79 = OUTLINED_FUNCTION_22_25();
      bspush_ca_scan(v79, v80);
LABEL_17:
      OUTLINED_FUNCTION_3_36();
      if (!test_string_s())
      {
LABEL_7:
        v47 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v47, v48, v49);
        v50 = OUTLINED_FUNCTION_0_39();
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_10:
    v63 = OUTLINED_FUNCTION_22_25();
    bspush_ca_scan(v63, v64);
LABEL_11:
    OUTLINED_FUNCTION_3_36();
    if (!test_string_s())
    {
      goto LABEL_7;
    }
  }

LABEL_18:
  v81 = *(v0 + 104);
  if (v81)
  {
    inserted = OUTLINED_FUNCTION_36_16(v81);
  }

  else
  {
    inserted = OUTLINED_FUNCTION_53_11();
  }

  switch(inserted)
  {
    case 1:
      goto LABEL_5;
    case 2:
      v82 = OUTLINED_FUNCTION_19_27();
      bspush_ca_scan(v82, v83);
      goto LABEL_11;
    case 3:
    case 8:
    case 12:
      goto LABEL_7;
    case 4:
      v84 = OUTLINED_FUNCTION_20_26();
      bspush_ca_scan(v84, v85);
      goto LABEL_11;
    case 5:
      goto LABEL_10;
    case 6:
      goto LABEL_11;
    case 7:
    case 16:
      goto LABEL_9;
    case 9:
      goto LABEL_13;
    case 10:
      goto LABEL_24;
    case 11:
    case 13:
    case 14:
      goto LABEL_16;
    case 15:
      goto LABEL_17;
    default:
      break;
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t h_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v115, v118);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v116, v119, v122, v124, v126, v128);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v117, v120, v123, SHIDWORD(v123), v125, SWORD2(v125), SHIWORD(v125), v127, SWORD2(v127), SBYTE6(v127), SHIBYTE(v127), v129, v130))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_52_11(v30, v31);
    OUTLINED_FUNCTION_54_11(v32, v33, &null_str_12);
    v34 = OUTLINED_FUNCTION_21_26();
    fence_35(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_25_24();
    lpta_loadpn(v37, v38);
    rpta_loadpn(v0, v0 + 1640);
    if (!compare_ptas(v0) && !testneq(v0))
    {
      *(v0 + 136) = 1;
      *(v0 + 112) = v114;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_23_25();
      proj_def();
      *(v0 + 136) = 1;
      *(v0 + 112) = v121;
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_23_25();
      delete_1pt();
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t j_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t k_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t l_rules()
{
  OUTLINED_FUNCTION_7_34();
  v222 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_35(v2, v3, v4, v5, v6, v7, v8, v9, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v214, v215, v216);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v209, v213, v214, v215, v216, v217, v218, v219, v220);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v210, v213, v214, v215, v216, v217, SHIDWORD(v217), v218, SWORD2(v218), SHIWORD(v218), v219, SWORD2(v219), SBYTE6(v219), SHIBYTE(v219), v220, v221))
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_12_33();
  get_parm(v27, v28, v29, -6);
  OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v206, v211, v213);
  v38 = 0;
  OUTLINED_FUNCTION_54_11(v39, v40, &null_str_12);
  fence_35(v0, 1, &unk_2806BC372);
  starttest(v0, 1);
  v41 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v41, v42, 1) || (OUTLINED_FUNCTION_3_36(), inserted = test_string_s(), v38 = 0, v51 = 0, inserted))
  {
LABEL_10:
    v60 = v38;
    v61 = OUTLINED_FUNCTION_19_27();
    starttest(v61, v62);
    v63 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v63, v64, v65) || (OUTLINED_FUNCTION_3_36(), v51 = v38, test_string_s()))
    {
LABEL_14:
      v72 = OUTLINED_FUNCTION_22_25();
      starttest(v72, v73);
      v74 = OUTLINED_FUNCTION_24_25();
      if (lpta_loadp_setscan_r(v74, v75, v76))
      {
LABEL_15:
        v77 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v77, v78, v79);
        v80 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v80, v81, v82, v83, v84);
        if (!inserted)
        {
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_22_25();
        bspush_ca_scan_boa();
        v85 = OUTLINED_FUNCTION_17_29();
        if (!testFldeq(v85, v86, v87, 1) && !advance_tok(v0, v88, v89, v90))
        {
          v60 = 1;
        }
      }

      goto LABEL_20;
    }

LABEL_12:
    v66 = OUTLINED_FUNCTION_32_19();
    savescptr(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_12_33();
    lpta_rpta_loadp(v69, v70, v71);
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_27_22(inserted, v44, v45, v46, v47, v48, v49, v50, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207, v212, v213);
    v52 = OUTLINED_FUNCTION_12_33();
    lpta_rpta_loadp(v52, v53, v54);
  }

  v55 = OUTLINED_FUNCTION_0_39();
  inserted = insert_2pt_s(v55, v56, v57, v58, v59);
  v60 = v51;
  if (!inserted)
  {
LABEL_26:
    OUTLINED_FUNCTION_16_30(inserted, v44, v45, v46, v47, v48, v49, v50, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207, v212, v213, v214);
    goto LABEL_3;
  }

LABEL_20:
  v51 = v60;
  while (2)
  {
    v91 = v0[13];
    if (v91)
    {
      inserted = OUTLINED_FUNCTION_36_16(v91);
      v51 = v44;
    }

    else
    {
      inserted = vback(v0, v51);
      v51 = 0;
    }

    switch(inserted)
    {
      case 1:
        v38 = v51;
        goto LABEL_10;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_26;
      case 4:
        v60 = v51;
        goto LABEL_14;
      case 5:
        goto LABEL_12;
      case 6:
        v60 = v51;
        goto LABEL_15;
      case 7:
        bspop_boa(v0);
        v92 = OUTLINED_FUNCTION_26_24();
        lpta_rpta_loadp(v92, v93, &v213);
        v94 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v94, v95, v96, &unk_2806BC360, v97);
        if (!inserted)
        {
          goto LABEL_26;
        }

        continue;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t m_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t n_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v186, v189);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v187, v190, v192, v194, v196, v198);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v188, v191, v193, SHIDWORD(v193), v195, SWORD2(v195), SHIWORD(v195), v197, SWORD2(v197), SBYTE6(v197), SHIBYTE(v197), v199, v200))
  {
    v27 = OUTLINED_FUNCTION_12_33();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180);
    v38 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v38, v39, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v40 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_r(v40, v41, v1))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_3_36();
    inserted = test_string_s();
    if (inserted)
    {
      goto LABEL_7;
    }

    while (2)
    {
      OUTLINED_FUNCTION_27_22(inserted, v43, v44, v45, v46, v47, v48, v49, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181);
      v50 = OUTLINED_FUNCTION_12_33();
      lpta_rpta_loadp(v50, v51, v52);
      while (1)
      {
        v56 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v56, v57, v58, v59, v60);
        if (!inserted)
        {
          goto LABEL_15;
        }

        v61 = *(v0 + 104);
        inserted = v61 ? OUTLINED_FUNCTION_36_16(v61) : OUTLINED_FUNCTION_53_11();
        if (inserted != 1)
        {
          break;
        }

LABEL_7:
        v53 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v53, v54, v55);
      }

      if (inserted == 2)
      {
        continue;
      }

      break;
    }

    if (inserted == 3)
    {
LABEL_15:
      OUTLINED_FUNCTION_16_30(inserted, v43, v44, v45, v46, v47, v48, v49, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v185);
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t p_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t q_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v204, v207);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v205, v208, v210, v212, v214, v216);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v206, v209, v211, SHIDWORD(v211), v213, SWORD2(v213), SHIWORD(v213), v215, SWORD2(v215), SBYTE6(v215), SHIBYTE(v215), v217, v218))
  {
    goto LABEL_3;
  }

  v27 = OUTLINED_FUNCTION_12_33();
  get_parm(v27, v28, v29, -6);
  OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198);
  v38 = fence_35(v0, 0, &null_str_12);
  OUTLINED_FUNCTION_38_15(v38, v39, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v40 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v40, v41, v1))
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_36();
  if (test_string_s())
  {
    goto LABEL_12;
  }

  while (2)
  {
    OUTLINED_FUNCTION_45_12();
    v42 = OUTLINED_FUNCTION_30_20();
    savescptr(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_17_29();
    if (!testFldeq(v45, v46, v47, 1) && !advance_tok(v0, v48, v49, v50))
    {
      v51 = OUTLINED_FUNCTION_22_25();
      starttest(v51, v52);
      v53 = OUTLINED_FUNCTION_24_25();
      if (lpta_loadp_setscan_r(v53, v54, v55))
      {
LABEL_9:
        v56 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v56, v57, v58);
        v59 = OUTLINED_FUNCTION_9_34();
        v63 = 2;
        goto LABEL_13;
      }

      v64 = OUTLINED_FUNCTION_19_27();
      bspush_ca_scan(v64, v65);
LABEL_11:
      OUTLINED_FUNCTION_3_36();
      if (!test_string_s())
      {
LABEL_12:
        v66 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v66, v67, v68);
        v59 = OUTLINED_FUNCTION_0_39();
LABEL_13:
        inserted = insert_2pt_s(v59, v60, v63, v61, v62);
        if (!inserted)
        {
LABEL_19:
          OUTLINED_FUNCTION_16_30(inserted, v70, v71, v72, v73, v74, v75, v76, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v203);
          break;
        }
      }
    }

    v77 = *(v0 + 104);
    if (v77)
    {
      inserted = OUTLINED_FUNCTION_36_16(v77);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_53_11();
    }

    switch(inserted)
    {
      case 1:
      case 5:
        goto LABEL_12;
      case 2:
        continue;
      case 3:
        goto LABEL_9;
      case 4:
      case 6:
      case 7:
        v78 = OUTLINED_FUNCTION_22_25();
        bspush_ca_scan(v78, v79);
        goto LABEL_11;
      case 8:
        goto LABEL_11;
      case 9:
      case 10:
        goto LABEL_19;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t r_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v198, v201);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v199, v202, v204, v206, v208, v210);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v200, v203, v205, SHIDWORD(v205), v207, SWORD2(v207), SHIWORD(v207), v209, SWORD2(v209), SBYTE6(v209), SHIBYTE(v209), v211, v212))
  {
    v27 = OUTLINED_FUNCTION_12_33();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192);
    v38 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v38, v39, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v40 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_r(v40, v41, v1) || (OUTLINED_FUNCTION_3_36(), inserted = test_string_s(), inserted))
    {
LABEL_6:
      v50 = OUTLINED_FUNCTION_19_27();
      starttest(v50, v51);
      v52 = OUTLINED_FUNCTION_24_25();
      if (lpta_loadp_setscan_l(v52, v53, v54))
      {
LABEL_7:
        v55 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v55, v56, v57);
        goto LABEL_14;
      }

      v58 = OUTLINED_FUNCTION_20_26();
      bspush_ca_scan(v58, v59);
LABEL_9:
      v60 = OUTLINED_FUNCTION_22_25();
      if (test_synch(v60, v61, 1, v62))
      {
        goto LABEL_15;
      }

LABEL_12:
      v63 = OUTLINED_FUNCTION_10_34();
    }

    else
    {
LABEL_11:
      OUTLINED_FUNCTION_27_22(inserted, v43, v44, v45, v46, v47, v48, v49, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193);
      v63 = OUTLINED_FUNCTION_12_33();
    }

    lpta_rpta_loadp(v63, v64, v65);
LABEL_14:
    v66 = OUTLINED_FUNCTION_0_39();
    inserted = insert_2pt_s(v66, v67, v68, v69, v70);
    if (!inserted)
    {
LABEL_22:
      OUTLINED_FUNCTION_16_30(inserted, v43, v44, v45, v46, v47, v48, v49, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v197);
      goto LABEL_3;
    }

LABEL_15:
    while (2)
    {
      v71 = *(v0 + 104);
      if (v71)
      {
        inserted = OUTLINED_FUNCTION_36_16(v71);
      }

      else
      {
        inserted = OUTLINED_FUNCTION_53_11();
      }

      switch(inserted)
      {
        case 1:
          goto LABEL_6;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_22;
        case 4:
          goto LABEL_7;
        case 5:
        case 8:
          v72 = OUTLINED_FUNCTION_22_25();
          bspush_ca_scan(v72, v73);
          goto LABEL_20;
        case 6:
          goto LABEL_9;
        case 7:
          goto LABEL_12;
        case 9:
LABEL_20:
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            goto LABEL_12;
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t s_rules()
{
  OUTLINED_FUNCTION_7_34();
  v155 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_35(v2, v3, v4, v5, v6, v7, v8, v9, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152);
  OUTLINED_FUNCTION_28_21();
  bzero(v154, v10);
  if (setjmp(v154) || (OUTLINED_FUNCTION_49_11(), ventproc(v0, v11, v12, v13, v14, v154)))
  {
LABEL_3:
    v1 = 94;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_32_19();
    get_parm(v16, v17, v18, -6);
    OUTLINED_FUNCTION_14_31();
    v19 = OUTLINED_FUNCTION_37_16();
    push_ptr_init(v19, v20);
    v21 = fence_35(v0, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v21, v22, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v23 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_r(v23, v24, v154))
    {
LABEL_6:
      v25 = OUTLINED_FUNCTION_22_25();
      starttest(v25, v26);
      v27 = OUTLINED_FUNCTION_24_25();
      if (!lpta_loadp_setscan_r(v27, v28, v29))
      {
LABEL_35:
        v92 = OUTLINED_FUNCTION_22_25();
        bspush_ca_scan(v92, v93);
LABEL_36:
        OUTLINED_FUNCTION_3_36();
        goto LABEL_37;
      }

LABEL_7:
      v30 = OUTLINED_FUNCTION_22_25();
      starttest(v30, v31);
      v32 = OUTLINED_FUNCTION_24_25();
      v35 = lpta_loadp_setscan_r(v32, v33, v34);
      if (!v35)
      {
        OUTLINED_FUNCTION_21_26();
        v35 = test_string_s();
        if (!v35)
        {
LABEL_39:
          v94 = OUTLINED_FUNCTION_32_19();
          savescptr(v94, v95, v96);
          v97 = OUTLINED_FUNCTION_32_19();
          lpta_rpta_loadp(v97, v98, v99);
          goto LABEL_22;
        }
      }
    }

    else
    {
      v43 = OUTLINED_FUNCTION_17_29();
      if (testFldeq(v43, v44, v45, 1) || advance_tok(v0, v46, v47, v48))
      {
        goto LABEL_24;
      }

      v49 = OUTLINED_FUNCTION_22_25();
      starttest(v49, v50);
      v51 = OUTLINED_FUNCTION_18_28();
      if (lpta_loadp_setscan_l(v51, v52, v53))
      {
LABEL_14:
        v54 = OUTLINED_FUNCTION_19_27();
        starttest(v54, v55);
        v56 = OUTLINED_FUNCTION_20_26();
        bspush_ca(v56);
        v57 = OUTLINED_FUNCTION_18_28();
        if (lpta_loadp_setscan_l(v57, v58, v59))
        {
          goto LABEL_24;
        }

LABEL_15:
        v60 = OUTLINED_FUNCTION_30_20();
        savescptr(v60, v61, v62);
        OUTLINED_FUNCTION_17_29();
        if (test_string_s())
        {
          goto LABEL_24;
        }

        v63 = OUTLINED_FUNCTION_24_25();
        if (lpta_loadp_setscan_r(v63, v64, v65))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v69 = OUTLINED_FUNCTION_17_29();
        if (testFldeq(v69, v70, v71, 1))
        {
          goto LABEL_24;
        }
      }

      v35 = advance_tok(v0, v66, v67, v68);
      if (v35)
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    while (1)
    {
      OUTLINED_FUNCTION_44_12(v35, v36, v37, v38, v39, v40, v41, v42, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153);
LABEL_22:
      v72 = OUTLINED_FUNCTION_0_39();
      if (!insert_2pt_s(v72, v73, v74, v75, v76))
      {
        break;
      }

      do
      {
LABEL_24:
        while (2)
        {
          v77 = *(v0 + 104);
          if (v77)
          {
            v35 = OUTLINED_FUNCTION_36_16(v77);
          }

          else
          {
            v35 = OUTLINED_FUNCTION_53_11();
          }

          switch(v35)
          {
            case 1:
              goto LABEL_6;
            case 2:
              goto LABEL_14;
            case 3:
            case 11:
              goto LABEL_23;
            case 4:
            case 7:
            case 14:
            case 21:
              goto LABEL_21;
            case 5:
              v78 = OUTLINED_FUNCTION_18_28();
              if (lpta_loadp_setscan_l(v78, v79, v80))
              {
                continue;
              }

              goto LABEL_29;
            case 6:
              goto LABEL_15;
            case 8:
LABEL_29:
              v81 = OUTLINED_FUNCTION_30_20();
              savescptr(v81, v82, v83);
              OUTLINED_FUNCTION_21_26();
              if (test_string_s())
              {
                continue;
              }

              v84 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v84, v85, v86) || advance_tok(v0, v87, v88, v89))
              {
                continue;
              }

              v90 = OUTLINED_FUNCTION_22_25();
              bspush_ca_scan(v90, v91);
LABEL_33:
              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                continue;
              }

LABEL_34:
              OUTLINED_FUNCTION_21_26();
              break;
            case 9:
              goto LABEL_33;
            case 10:
              goto LABEL_34;
            case 12:
              goto LABEL_7;
            case 13:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
              goto LABEL_35;
            case 20:
              goto LABEL_36;
            case 22:
              goto LABEL_39;
            default:
              goto LABEL_3;
          }

          break;
        }

LABEL_37:
        v35 = test_string_s();
      }

      while (v35);
    }

LABEL_23:
    OUTLINED_FUNCTION_39_14(v153);
  }

  vretproc(v0);
  return v1;
}

uint64_t t_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t accented_u_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t v_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v2, v3, v4, v5, v6, v7, v8, v9, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v146, v149);
  OUTLINED_FUNCTION_15_31(v10, v11, v12, v13, v14, v15, v16, v17, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150, v152, v154, v156, v158);
  v18 = setjmp(v1);
  if (!v18 && !OUTLINED_FUNCTION_1_37(v18, v19, v20, v21, v22, v23, v24, v25, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, SHIDWORD(v153), v155, SWORD2(v155), SHIWORD(v155), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v159, v160))
  {
    v27 = OUTLINED_FUNCTION_8_34();
    get_parm(v27, v28, v29, -6);
    OUTLINED_FUNCTION_6_34(v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142);
    OUTLINED_FUNCTION_54_11(v38, v39, &null_str_12);
    v40 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v43, v44, v45, v46, 0))
    {
      if (*(v0 + 104))
      {
        *(v0 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t w_rules()
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v120, v121, v122);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v119, v120, v121, v122, v123, v124, v125, v126);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v119, v120, v121, v122, v123, SHIDWORD(v123), v124, SWORD2(v124), SHIWORD(v124), v125, SWORD2(v125), SBYTE6(v125), SHIBYTE(v125), v126, v127))
  {
    v28 = OUTLINED_FUNCTION_12_33();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_52_11(v31, v32);
    fence_35(v0, 0, &null_str_12);
    v33 = OUTLINED_FUNCTION_50_11();
    fence_35(v33, v34, v35);
    starttest(v0, v1);
    lpta_rpta_loadp(v0, v0 + 1640, v0 + 1656);
    if (setd_lookup(v0, v1, 61) || (v36 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v36, v37, v38), v39 = OUTLINED_FUNCTION_4_35(), insert_2pt_s(v39, v40, v41, v42, 0)))
    {
      do
      {
        v43 = OUTLINED_FUNCTION_57_10();
        lpta_rpta_loadp(v43, v44, &v119);
        v45 = OUTLINED_FUNCTION_4_35();
        if (!insert_2pt_s(v45, v46, v47, &unk_2806BC363, 0))
        {
          break;
        }

        v48 = *(v0 + 104);
        v49 = v48 ? OUTLINED_FUNCTION_36_16(v48) : OUTLINED_FUNCTION_53_11();
      }

      while (v49 == 1);
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t x_rules()
{
  OUTLINED_FUNCTION_7_34();
  v246 = *MEMORY[0x277D85DE8];
  v240 = 0;
  v241 = 0;
  v238 = 0;
  v239 = 0;
  OUTLINED_FUNCTION_5_35(v1, v2, v3, v4, v5, v6, v7, v8, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237);
  OUTLINED_FUNCTION_28_21();
  bzero(v245, v9);
  if (setjmp(v245) || ventproc(v0, &v211, v244, v243, v242, v245))
  {
LABEL_3:
    v10 = 94;
    goto LABEL_4;
  }

  v12 = OUTLINED_FUNCTION_32_19();
  get_parm(v12, v13, v14, -6);
  OUTLINED_FUNCTION_14_31();
  v15 = OUTLINED_FUNCTION_34_18();
  push_ptr_init(v15, v16);
  v17 = OUTLINED_FUNCTION_37_16();
  v19 = push_ptr_init(v17, v18);
  v10 = 0;
  v21 = OUTLINED_FUNCTION_54_11(v19, v20, &null_str_12);
  OUTLINED_FUNCTION_38_15(v21, v22, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v23 = OUTLINED_FUNCTION_26_24();
  if (!lpta_loadp_setscan_r(v23, v24, v245))
  {
    v99 = OUTLINED_FUNCTION_17_29();
    if (testFldeq(v99, v100, v101, 2) || (v105 = advance_tok(v0, v102, v103, v104)))
    {
      LODWORD(v30) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_43_12(v105, v106, v107, v108, v109, v110, v111, v112, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
      v119 = OUTLINED_FUNCTION_4_35();
      LODWORD(v30) = 0;
      v10 = 0;
      if (!insert_2pt_s(v119, v120, v121, v122, 0))
      {
        goto LABEL_4;
      }
    }

    goto LABEL_42;
  }

  while (2)
  {
    v25 = OUTLINED_FUNCTION_22_25();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_18_28();
    if (!lpta_loadp_setscan_r(v27, v28, v29))
    {
      v51 = OUTLINED_FUNCTION_17_29();
      if (!testFldeq(v51, v52, v53, 1) && !advance_tok(v0, v54, v55, v56))
      {
        v57 = OUTLINED_FUNCTION_19_27();
        starttest(v57, v58);
        v59 = OUTLINED_FUNCTION_24_25();
        if (lpta_loadp_setscan_l(v59, v60, v61))
        {
          v30 = v10;
LABEL_16:
          v62 = OUTLINED_FUNCTION_18_28();
          if (!lpta_loadp_setscan_r(v62, v63, v64))
          {
            OUTLINED_FUNCTION_50_11();
            if (!test_string_s())
            {
              *(v0 + 136) = v10;
              v65 = OUTLINED_FUNCTION_35_17();
              v68 = test_ptr(v65, v66, v67);
              if (!v68)
              {
                OUTLINED_FUNCTION_43_12(v68, v69, v70, v71, v72, v73, v74, v75, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
                v10 = 0;
                v76 = OUTLINED_FUNCTION_4_35();
                if (!insert_2pt_s(v76, v77, v78, v79, 0))
                {
                  goto LABEL_4;
                }
              }
            }
          }

LABEL_20:
          v10 = v30;
          v80 = OUTLINED_FUNCTION_22_25();
          starttest(v80, v81);
          v82 = OUTLINED_FUNCTION_24_25();
          if (lpta_loadp_setscan_l(v82, v83, v84) || advance_tok(v0, v85, v86, v87))
          {
LABEL_57:
            v141 = OUTLINED_FUNCTION_22_25();
            starttest(v141, v142);
            v143 = OUTLINED_FUNCTION_18_28();
            v146 = lpta_loadp_setscan_r(v143, v144, v145);
            LODWORD(v37) = v10;
            if (v146)
            {
LABEL_58:
              v147 = OUTLINED_FUNCTION_22_25();
              starttest(v147, v148);
              v149 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_l(v149, v150, v151) || (OUTLINED_FUNCTION_3_36(), test_string_s()))
              {
                v30 = v10;
LABEL_61:
                v152 = OUTLINED_FUNCTION_24_25();
                if (!lpta_loadp_setscan_l(v152, v153, v154))
                {
                  OUTLINED_FUNCTION_50_11();
                  if (!test_string_s())
                  {
                    *(v0 + 136) = v10;
                    v155 = OUTLINED_FUNCTION_35_17();
                    v158 = test_ptr(v155, v156, v157);
                    if (!v158)
                    {
                      OUTLINED_FUNCTION_43_12(v158, v159, v160, v161, v162, v163, v164, v165, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
                      v10 = 0;
                      v166 = OUTLINED_FUNCTION_4_35();
                      if (!insert_2pt_s(v166, v167, v168, v169, 0))
                      {
                        goto LABEL_4;
                      }
                    }
                  }
                }

LABEL_65:
                v170 = OUTLINED_FUNCTION_22_25();
                starttest(v170, v171);
                v172 = OUTLINED_FUNCTION_18_28();
                v175 = lpta_loadp_setscan_r(v172, v173, v174);
                v36 = v30;
                if (v175)
                {
LABEL_66:
                  v30 = v36;
                  v176 = OUTLINED_FUNCTION_22_25();
                  starttest(v176, v177);
                  v178 = OUTLINED_FUNCTION_18_28();
                  inserted = lpta_loadp_setscan_r(v178, v179, v180);
                  v38 = v30;
                  if (!inserted)
                  {
LABEL_67:
                    LODWORD(v30) = v38;
                    v181 = OUTLINED_FUNCTION_22_25();
                    bspush_ca_scan(v181, v182);
LABEL_68:
                    v183 = OUTLINED_FUNCTION_42_12();
                    savescptr(v183, v184, v185);
                    v186 = OUTLINED_FUNCTION_42_12();
                    lpta_rpta_loadp(v186, v187, v188);
                    v189 = OUTLINED_FUNCTION_21_26();
                    inserted = setd_lookup(v189, v190, 65);
                    if (inserted)
                    {
                      goto LABEL_42;
                    }
                  }
                }

                else
                {
LABEL_72:
                  if (advance_tok(v0, v36, v37, v38))
                  {
                    goto LABEL_42;
                  }

                  v199 = OUTLINED_FUNCTION_22_25();
                  bspush_ca_scan(v199, v200);
LABEL_74:
                  v201 = OUTLINED_FUNCTION_42_12();
                  savescptr(v201, v202, v203);
                  v204 = OUTLINED_FUNCTION_42_12();
                  lpta_rpta_loadp(v204, v205, v206);
                  v207 = OUTLINED_FUNCTION_21_26();
                  inserted = setd_lookup(v207, v208, 64);
                  if (inserted)
                  {
                    goto LABEL_42;
                  }
                }
              }

              else
              {
                v209 = OUTLINED_FUNCTION_22_25();
                bspush_ca_scan(v209, v210);
                LODWORD(v36) = v10;
LABEL_52:
                LODWORD(v30) = v36;
                *(v0 + 136) = 1;
                v138 = OUTLINED_FUNCTION_35_17();
                inserted = test_ptr(v138, v139, v140);
                if (inserted)
                {
                  goto LABEL_42;
                }
              }

LABEL_40:
              OUTLINED_FUNCTION_43_12(inserted, v36, v37, v38, v39, v40, v41, v42, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
              v10 = 0;
              v47 = OUTLINED_FUNCTION_4_35();
LABEL_41:
              if (!insert_2pt_s(v47, v48, v50, v49, 0))
              {
                goto LABEL_4;
              }

LABEL_42:
              v131 = *(v0 + 104);
              if (v131)
              {
                inserted = OUTLINED_FUNCTION_36_16(v131);
                v30 = v132;
              }

              else
              {
                inserted = vback(v0, v30);
                v30 = 0;
              }

              v10 = 0;
              v37 = v30;
              v36 = v30;
              v38 = v30;
              switch(inserted)
              {
                case 1:
                  v10 = v30;
                  continue;
                case 2:
                case 7:
                case 8:
                  goto LABEL_4;
                case 3:
                  goto LABEL_8;
                case 4:
                  goto LABEL_16;
                case 5:
                  bspop_boa(v0);
                  v123 = OUTLINED_FUNCTION_22_25();
                  starttest(v123, v124);
                  v125 = OUTLINED_FUNCTION_24_25();
                  inserted = lpta_loadp_setscan_l(v125, v126, v127);
                  if (inserted)
                  {
                    goto LABEL_40;
                  }

                  OUTLINED_FUNCTION_3_36();
                  inserted = test_string_s();
                  if (inserted)
                  {
                    goto LABEL_40;
                  }

                  OUTLINED_FUNCTION_43_12(inserted, v36, v37, v38, v39, v40, v41, v42, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
                  v10 = 0;
                  v128 = OUTLINED_FUNCTION_23_25();
                  inserted = insert_2pt_s(v128, v129, 2, v130, 0);
                  if (inserted)
                  {
                    goto LABEL_40;
                  }

                  goto LABEL_4;
                case 6:
                case 25:
                  goto LABEL_40;
                case 9:
                  goto LABEL_20;
                case 10:
                  v10 = v30;
                  goto LABEL_57;
                case 11:
                  goto LABEL_22;
                case 12:
                  goto LABEL_24;
                case 13:
                  v10 = v30;
                  goto LABEL_58;
                case 14:
                  break;
                case 15:
                  v133 = advance_tok(v0, v30, v30, v30);
                  LODWORD(v37) = v30;
                  if (!v133)
                  {
                    break;
                  }

                  goto LABEL_42;
                case 16:
                  goto LABEL_71;
                case 17:
                  goto LABEL_61;
                case 18:
                  v135 = OUTLINED_FUNCTION_22_25();
                  bspush_ca_scan(v135, v136);
                  goto LABEL_51;
                case 19:
                  goto LABEL_52;
                case 20:
LABEL_51:
                  OUTLINED_FUNCTION_21_26();
                  v137 = test_string_s();
                  LODWORD(v36) = v30;
                  if (!v137)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_42;
                case 21:
                  goto LABEL_65;
                case 22:
                  v36 = v30;
                  goto LABEL_66;
                case 23:
                  goto LABEL_72;
                case 24:
                  goto LABEL_74;
                case 26:
                  goto LABEL_67;
                case 27:
                  v134 = advance_tok(v0, v30, v30, v30);
                  LODWORD(v38) = v30;
                  if (!v134)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_42;
                case 28:
                  goto LABEL_68;
                case 29:
                  goto LABEL_10;
                default:
                  goto LABEL_3;
              }
            }

            LODWORD(v30) = v37;
            v191 = OUTLINED_FUNCTION_22_25();
            bspush_ca_scan(v191, v192);
LABEL_71:
            v193 = OUTLINED_FUNCTION_42_12();
            savescptr(v193, v194, v195);
            v196 = OUTLINED_FUNCTION_42_12();
            lpta_rpta_loadp(v196, v197, v198);
            v96 = OUTLINED_FUNCTION_21_26();
            v98 = 63;
          }

          else
          {
LABEL_22:
            if (advance_tok(v0, v36, v37, v38))
            {
              goto LABEL_42;
            }

            v88 = OUTLINED_FUNCTION_22_25();
            bspush_ca_scan(v88, v89);
LABEL_24:
            v90 = OUTLINED_FUNCTION_42_12();
            savescptr(v90, v91, v92);
            v93 = OUTLINED_FUNCTION_57_10();
            lpta_rpta_loadp(v93, v94, v95);
            v96 = OUTLINED_FUNCTION_21_26();
            v98 = 62;
          }

          inserted = setd_lookup(v96, v97, v98);
          if (inserted)
          {
            goto LABEL_42;
          }

          goto LABEL_10;
        }

        OUTLINED_FUNCTION_20_26();
        bspush_ca_scan_boa();
        v113 = OUTLINED_FUNCTION_17_29();
        if (!testFldeq(v113, v114, v115, 1))
        {
          if (advance_tok(v0, v116, v117, v118))
          {
            LODWORD(v30) = v10;
          }

          else
          {
            LODWORD(v30) = 1;
          }

          goto LABEL_42;
        }
      }

      LODWORD(v30) = v10;
      goto LABEL_42;
    }

    break;
  }

  LODWORD(v30) = v10;
LABEL_8:
  v31 = OUTLINED_FUNCTION_22_25();
  starttest(v31, v32);
  lpta_rpta_loadp(v0, v0 + 1640, v0 + 1656);
  v33 = OUTLINED_FUNCTION_21_26();
  inserted = setd_lookup(v33, v34, 66);
  if (inserted || (OUTLINED_FUNCTION_43_12(inserted, v36, v37, v38, v39, v40, v41, v42, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239), v10 = 0, v43 = OUTLINED_FUNCTION_4_35(), inserted = insert_2pt_s(v43, v44, v45, v46, 0), inserted))
  {
LABEL_10:
    OUTLINED_FUNCTION_43_12(inserted, v36, v37, v38, v39, v40, v41, v42, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
    v10 = 0;
    v47 = OUTLINED_FUNCTION_23_25();
    v50 = 2;
    goto LABEL_41;
  }

LABEL_4:
  vretproc(v0);
  return v10;
}

void y_rules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_7_34();
  v135 = *MEMORY[0x277D85DE8];
  v132 = 0;
  v133 = 0;
  OUTLINED_FUNCTION_5_35(v7, v8, v9, v10, v11, v12, v13, v14, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v131);
  OUTLINED_FUNCTION_28_21();
  bzero(v134, v15);
  if (!setjmp(v134))
  {
    OUTLINED_FUNCTION_49_11();
    if (!ventproc(v5, v16, v17, v18, v19, v134))
    {
      v20 = OUTLINED_FUNCTION_8_34();
      get_parm(v20, v21, v22, -6);
      v23 = OUTLINED_FUNCTION_34_18();
      OUTLINED_FUNCTION_52_11(v23, v24);
      v25 = OUTLINED_FUNCTION_37_16();
      v27 = push_ptr_init(v25, v26);
      v28 = 0;
      OUTLINED_FUNCTION_54_11(v27, v29, &null_str_12);
      v30 = OUTLINED_FUNCTION_40_13();
      fence_35(v30, v31, v32);
      v33 = OUTLINED_FUNCTION_58_10();
      starttest(v33, v34);
      v35 = OUTLINED_FUNCTION_25_24();
      v37 = lpta_loadp_setscan_l(v35, v36, v6);
      LODWORD(v45) = 0;
      if (v37)
      {
LABEL_5:
        OUTLINED_FUNCTION_44_12(v37, v38, v39, v40, v41, v42, v43, v44, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v130, v131);
        v46 = OUTLINED_FUNCTION_4_35();
        inserted = insert_2pt_s(v46, v47, v48, v49, 0);
        v51 = v45;
        if (!inserted)
        {
          goto LABEL_3;
        }
      }

      else
      {
LABEL_8:
        OUTLINED_FUNCTION_45_12();
        v52 = OUTLINED_FUNCTION_30_20();
        savescptr(v52, v53, v54);
        OUTLINED_FUNCTION_22_25();
        bspush_ca_scan_boa();
        v55 = OUTLINED_FUNCTION_17_29();
        if (testFldeq(v55, v56, v57, 1))
        {
          v51 = v28;
        }

        else if (advance_tok(v5, v58, v59, v60))
        {
          v51 = v28;
        }

        else
        {
          v51 = 1;
        }
      }

      while (2)
      {
        v61 = v5[13];
        if (v61)
        {
          v62 = OUTLINED_FUNCTION_36_16(v61);
          v45 = v38;
        }

        else
        {
          v62 = vback(v5, v51);
          v45 = 0;
        }

        v63 = v62 - 1;
        v37 = 0;
        switch(v63)
        {
          case 0:
            goto LABEL_5;
          case 1:
            v28 = v45;
            goto LABEL_8;
          case 2:
            bspop_boa(v5);
            v64 = OUTLINED_FUNCTION_57_10();
            v66 = lpta_loadp_setscan_r(v64, v65, 1);
            v51 = v45;
            if (!v66)
            {
              v69 = advance_tok(v5, v45, v67, v68);
              v51 = v45;
              if (!v69)
              {
                OUTLINED_FUNCTION_58_10();
                bspush_ca_scan_boa();
                v70 = OUTLINED_FUNCTION_21_26();
                v72 = testFldeq(v70, v71, 4, 1);
                v51 = v45;
                if (!v72)
                {
                  if (advance_tok(v5, v45, v73, v74))
                  {
                    v51 = v45;
                  }

                  else
                  {
                    v51 = 1;
                  }
                }
              }
            }

            continue;
          case 3:
            bspop_boa(v5);
            v75 = OUTLINED_FUNCTION_25_24();
            lpta_rpta_loadp(v75, v76, &v130);
            v77 = OUTLINED_FUNCTION_46_12();
            v79 = insert_2pt_s(v77, v78, 1, &unk_2806BC368, 0);
            v51 = v45;
            if (v79)
            {
              continue;
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
  vretproc(v5);
  OUTLINED_FUNCTION_60_10();
}

uint64_t z_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v4, v5, v6, v7, v8, v9, v10, v11, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v152, v153, v154);
  OUTLINED_FUNCTION_15_31(v12, v13, v14, v15, v16, v17, v18, v19, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v151, v152, v153, v154, v155, v156, v157, v158);
  v20 = setjmp(v3);
  if (!v20 && !OUTLINED_FUNCTION_1_37(v20, v21, v22, v23, v24, v25, v26, v27, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v151, v152, v153, v154, v155, SHIDWORD(v155), v156, SWORD2(v156), SHIWORD(v156), v157, SWORD2(v157), SBYTE6(v157), SHIBYTE(v157), v158, v159))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v151);
    fence_35(v1, 0, &null_str_12);
    v40 = OUTLINED_FUNCTION_50_11();
    fence_35(v40, v41, v42);
    starttest(v1, v2);
    v43 = OUTLINED_FUNCTION_26_24();
    if (lpta_loadp_setscan_l(v43, v44, 2) || (v45 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v45, v46, v47), v48 = OUTLINED_FUNCTION_4_35(), insert_2pt_s(v48, v49, v50, v51, 0)))
    {
      do
      {
        v52 = OUTLINED_FUNCTION_57_10();
        lpta_rpta_loadp(v52, v53, &v151);
        v54 = OUTLINED_FUNCTION_4_35();
        if (!insert_2pt_s(v54, v55, v56, &unk_2806BC37B, 0))
        {
          break;
        }

        v57 = *(v1 + 104);
        v58 = v57 ? OUTLINED_FUNCTION_36_16(v57) : OUTLINED_FUNCTION_53_11();
      }

      while (v58 == 1);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t a_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v205, v208);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v206, v209, v211, v213, v215, v217);
  v19 = setjmp(v2);
  if (v19 || OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v207, v210, v212, SHIDWORD(v212), v214, SWORD2(v214), SHIWORD(v214), v216, SWORD2(v216), SBYTE6(v216), SHIBYTE(v216), v218, v219))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_12_33();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_6_34(v31, v32, v33, v34, v35, v36, v37, v38, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199);
  v39 = fence_35(v1, 0, &null_str_12);
  OUTLINED_FUNCTION_38_15(v39, v40, &unk_2806BC372);
  OUTLINED_FUNCTION_55_11();
  v41 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v41, v42, v2) || (OUTLINED_FUNCTION_3_36(), test_string_s()))
  {
LABEL_9:
    v57 = OUTLINED_FUNCTION_20_26();
    starttest(v57, v58);
    v59 = OUTLINED_FUNCTION_37_16();
    if (!is_nasalized_vowel(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_10_34();
      lpta_rpta_loadp(v61, v62, v63);
      v64 = OUTLINED_FUNCTION_0_39();
      inserted = insert_2pt_s(v64, v65, v66, v67, v68);
      if (!inserted)
      {
        goto LABEL_17;
      }
    }

LABEL_11:
    v77 = OUTLINED_FUNCTION_10_34();
    lpta_rpta_loadp(v77, v78, v79);
    v52 = OUTLINED_FUNCTION_0_39();
LABEL_12:
    inserted = insert_2pt_s(v52, v53, v56, v54, v55);
    if (inserted)
    {
      goto LABEL_13;
    }

LABEL_17:
    OUTLINED_FUNCTION_16_30(inserted, v70, v71, v72, v73, v74, v75, v76, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v204);
    goto LABEL_3;
  }

  while (2)
  {
    OUTLINED_FUNCTION_45_12();
    v43 = OUTLINED_FUNCTION_30_20();
    savescptr(v43, v44, v45);
LABEL_7:
    v46 = OUTLINED_FUNCTION_22_25();
    if (!test_synch(v46, v47, 1, v48))
    {
      v49 = OUTLINED_FUNCTION_10_34();
      lpta_rpta_loadp(v49, v50, v51);
      v52 = OUTLINED_FUNCTION_9_34();
      v56 = 2;
      goto LABEL_12;
    }

LABEL_13:
    v80 = *(v1 + 104);
    if (v80)
    {
      inserted = OUTLINED_FUNCTION_36_16(v80);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_53_11();
    }

    switch(inserted)
    {
      case 1:
        goto LABEL_9;
      case 2:
        continue;
      case 3:
        goto LABEL_7;
      case 4:
        goto LABEL_17;
      case 5:
        goto LABEL_11;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t accented_a_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_5_35(v4, v5, v6, v7, v8, v9, v10, v11, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v192, v195);
  OUTLINED_FUNCTION_15_31(v12, v13, v14, v15, v16, v17, v18, v19, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v193, v196, v198, v200, v202, v204);
  v20 = setjmp(v2);
  if (!v20 && !OUTLINED_FUNCTION_1_37(v20, v21, v22, v23, v24, v25, v26, v27, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194, v197, v199, SHIDWORD(v199), v201, SWORD2(v201), SHIWORD(v201), v203, SWORD2(v203), SBYTE6(v203), SHIBYTE(v203), v205, v206))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186);
    v40 = fence_35(v1, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (is_nasalized_vowel(v42, v43) || (v44 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_0_39(), inserted = insert_2pt_s(v47, v48, v49, v50, v51), inserted))
    {
      OUTLINED_FUNCTION_48_12();
      while (1)
      {
        v60 = OUTLINED_FUNCTION_25_24();
        lpta_rpta_loadp(v60, v61, v3);
        v62 = OUTLINED_FUNCTION_4_35();
        inserted = OUTLINED_FUNCTION_62_9(v62, v63, v64);
        if (!inserted)
        {
          break;
        }

        v65 = *(v1 + 104);
        if (v65)
        {
          inserted = OUTLINED_FUNCTION_36_16(v65);
        }

        else
        {
          v66 = OUTLINED_FUNCTION_46_12();
          inserted = vback(v66, v67);
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

    OUTLINED_FUNCTION_16_30(inserted, v53, v54, v55, v56, v57, v58, v59, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v191);
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t a_tilda_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v3, v4, v5, v6, v7, v8, v9, v10, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v147, v150);
  OUTLINED_FUNCTION_15_31(v11, v12, v13, v14, v15, v16, v17, v18, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v148, v151, v153, v155, v157, v159);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_1_37(v19, v20, v21, v22, v23, v24, v25, v26, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v149, v152, v154, SHIDWORD(v154), v156, SWORD2(v156), SHIWORD(v156), v158, SWORD2(v158), SBYTE6(v158), SHIBYTE(v158), v160, v161))
  {
    v28 = OUTLINED_FUNCTION_8_34();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_6_34(v31, v32, v33, v34, v35, v36, v37, v38, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143);
    OUTLINED_FUNCTION_54_11(v39, v40, &null_str_12);
    v41 = OUTLINED_FUNCTION_8_34();
    lpta_rpta_loadp(v41, v42, v43);
    v44 = OUTLINED_FUNCTION_4_35();
    if (insert_2pt_s(v44, v45, v46, v47, 0))
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_53_11();
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t e_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  v172 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_35(v4, v5, v6, v7, v8, v9, v10, v11, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169);
  OUTLINED_FUNCTION_28_21();
  bzero(v171, v12);
  if (!setjmp(v171))
  {
    OUTLINED_FUNCTION_49_11();
    if (!ventproc(v1, v13, v14, v15, v16, v171))
    {
      v18 = OUTLINED_FUNCTION_8_34();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_34_18();
      OUTLINED_FUNCTION_52_11(v21, v22);
      v23 = OUTLINED_FUNCTION_37_16();
      push_ptr_init(v23, v24);
      fence_35(v1, 0, &null_str_12);
      v25 = OUTLINED_FUNCTION_40_13();
      fence_35(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_58_10();
      starttest(v28, v29);
      v30 = OUTLINED_FUNCTION_25_24();
      if (lpta_loadp_setscan_r(v30, v31, v3))
      {
LABEL_9:
        v45 = OUTLINED_FUNCTION_22_25();
        starttest(v45, v46);
        v47 = OUTLINED_FUNCTION_18_28();
        if (lpta_loadp_setscan_r(v47, v48, v49))
        {
LABEL_14:
          v60 = OUTLINED_FUNCTION_19_27();
          starttest(v60, v61);
          v62 = OUTLINED_FUNCTION_18_28();
          if (lpta_loadp_setscan_l(v62, v63, v64))
          {
LABEL_15:
            v65 = OUTLINED_FUNCTION_34_18();
            lpta_loadpn(v65, v66);
            v67 = OUTLINED_FUNCTION_59_10();
            rpta_loadpn(v67, v68);
            if (!compare_ptas(v1))
            {
              v69 = testeq(v1);
              if (!v69)
              {
                OUTLINED_FUNCTION_44_12(v69, v70, v71, v72, v73, v74, v75, v76, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
                v77 = OUTLINED_FUNCTION_0_39();
                if (!insert_2pt_s(v77, v78, v79, v80, v81))
                {
                  goto LABEL_13;
                }
              }
            }

LABEL_25:
            v85 = OUTLINED_FUNCTION_34_18();
            v87 = is_nasalized_vowel(v85, v86);
            if (!v87)
            {
              OUTLINED_FUNCTION_44_12(v87, v88, v89, v90, v91, v92, v93, v94, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
              v95 = OUTLINED_FUNCTION_0_39();
              if (!insert_2pt_s(v95, v96, v97, v98, v99))
              {
LABEL_13:
                OUTLINED_FUNCTION_39_14(v170);
                goto LABEL_4;
              }
            }

LABEL_27:
            v100 = OUTLINED_FUNCTION_22_25();
            starttest(v100, v101);
            v102 = OUTLINED_FUNCTION_18_28();
            v37 = lpta_loadp_setscan_l(v102, v103, v104);
            if (!v37)
            {
LABEL_28:
              v105 = OUTLINED_FUNCTION_30_20();
              savescptr(v105, v106, v107);
              OUTLINED_FUNCTION_3_36();
              if (test_string_s())
              {
                goto LABEL_21;
              }

              v108 = OUTLINED_FUNCTION_24_25();
              if (lpta_loadp_setscan_r(v108, v109, v110))
              {
                goto LABEL_21;
              }

              if (advance_tok(v1, v111, v112, v113))
              {
                goto LABEL_21;
              }

              OUTLINED_FUNCTION_40_13();
              if (test_string_s())
              {
                goto LABEL_21;
              }

              *(v1 + 136) = v3;
              v114 = OUTLINED_FUNCTION_35_17();
              v37 = test_ptr(v114, v115, v116);
              if (v37)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
            v82 = OUTLINED_FUNCTION_20_26();
            bspush_ca_scan(v82, v83);
LABEL_20:
            OUTLINED_FUNCTION_3_36();
            v37 = test_string_s();
            if (v37)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          v50 = OUTLINED_FUNCTION_21_26();
          if (testFldeq(v50, v51, 5, 2))
          {
            goto LABEL_21;
          }

          v37 = advance_tok(v1, v52, v53, v54);
          if (v37)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v32 = OUTLINED_FUNCTION_21_26();
        if (testFldeq(v32, v33, 5, 1))
        {
          goto LABEL_21;
        }

        v37 = advance_tok(v1, v34, v35, v36);
        if (v37)
        {
          goto LABEL_21;
        }
      }

      while (2)
      {
        OUTLINED_FUNCTION_44_12(v37, v38, v39, v40, v41, v42, v43, v44, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170);
        v55 = OUTLINED_FUNCTION_0_39();
        if (!insert_2pt_s(v55, v56, v57, v58, v59))
        {
          goto LABEL_13;
        }

LABEL_21:
        v84 = *(v1 + 104);
        if (v84)
        {
          v37 = OUTLINED_FUNCTION_36_16(v84);
        }

        else
        {
          v37 = OUTLINED_FUNCTION_53_11();
        }

        switch(v37)
        {
          case 1:
            goto LABEL_9;
          case 2:
            goto LABEL_13;
          case 3:
            goto LABEL_14;
          case 4:
            goto LABEL_15;
          case 5:
            goto LABEL_20;
          case 6:
          case 9:
            continue;
          case 7:
            goto LABEL_25;
          case 8:
            goto LABEL_27;
          case 10:
            goto LABEL_28;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  v2 = 94;
LABEL_4:
  vretproc(v1);
  return v2;
}

uint64_t e_acute_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_5_35(v4, v5, v6, v7, v8, v9, v10, v11, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v192, v195);
  OUTLINED_FUNCTION_15_31(v12, v13, v14, v15, v16, v17, v18, v19, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v193, v196, v198, v200, v202, v204);
  v20 = setjmp(v2);
  if (!v20 && !OUTLINED_FUNCTION_1_37(v20, v21, v22, v23, v24, v25, v26, v27, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194, v197, v199, SHIDWORD(v199), v201, SWORD2(v201), SHIWORD(v201), v203, SWORD2(v203), SBYTE6(v203), SHIBYTE(v203), v205, v206))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186);
    v40 = fence_35(v1, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (is_nasalized_vowel(v42, v43) || (v44 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_0_39(), inserted = insert_2pt_s(v47, v48, v49, v50, v51), inserted))
    {
      OUTLINED_FUNCTION_48_12();
      while (1)
      {
        v60 = OUTLINED_FUNCTION_25_24();
        lpta_rpta_loadp(v60, v61, v3);
        v62 = OUTLINED_FUNCTION_4_35();
        inserted = OUTLINED_FUNCTION_62_9(v62, v63, v64);
        if (!inserted)
        {
          break;
        }

        v65 = *(v1 + 104);
        if (v65)
        {
          inserted = OUTLINED_FUNCTION_36_16(v65);
        }

        else
        {
          v66 = OUTLINED_FUNCTION_46_12();
          inserted = vback(v66, v67);
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

    OUTLINED_FUNCTION_16_30(inserted, v53, v54, v55, v56, v57, v58, v59, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v191);
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t e_circon_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_5_35(v4, v5, v6, v7, v8, v9, v10, v11, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v192, v195);
  OUTLINED_FUNCTION_15_31(v12, v13, v14, v15, v16, v17, v18, v19, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v193, v196, v198, v200, v202, v204);
  v20 = setjmp(v2);
  if (!v20 && !OUTLINED_FUNCTION_1_37(v20, v21, v22, v23, v24, v25, v26, v27, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194, v197, v199, SHIDWORD(v199), v201, SWORD2(v201), SHIWORD(v201), v203, SWORD2(v203), SBYTE6(v203), SHIBYTE(v203), v205, v206))
  {
    v29 = OUTLINED_FUNCTION_12_33();
    get_parm(v29, v30, v31, -6);
    OUTLINED_FUNCTION_6_34(v32, v33, v34, v35, v36, v37, v38, v39, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186);
    v40 = fence_35(v1, 0, &null_str_12);
    OUTLINED_FUNCTION_38_15(v40, v41, &unk_2806BC372);
    OUTLINED_FUNCTION_55_11();
    v42 = OUTLINED_FUNCTION_26_24();
    if (is_nasalized_vowel(v42, v43) || (v44 = OUTLINED_FUNCTION_10_34(), lpta_rpta_loadp(v44, v45, v46), v47 = OUTLINED_FUNCTION_0_39(), inserted = insert_2pt_s(v47, v48, v49, v50, v51), inserted))
    {
      OUTLINED_FUNCTION_48_12();
      while (1)
      {
        v60 = OUTLINED_FUNCTION_25_24();
        lpta_rpta_loadp(v60, v61, v3);
        v62 = OUTLINED_FUNCTION_4_35();
        inserted = OUTLINED_FUNCTION_62_9(v62, v63, v64);
        if (!inserted)
        {
          break;
        }

        v65 = *(v1 + 104);
        if (v65)
        {
          inserted = OUTLINED_FUNCTION_36_16(v65);
        }

        else
        {
          v66 = OUTLINED_FUNCTION_46_12();
          inserted = vback(v66, v67);
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

    OUTLINED_FUNCTION_16_30(inserted, v53, v54, v55, v56, v57, v58, v59, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v191);
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_33_19();
}

void i_rules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_7_34();
  v86 = *MEMORY[0x277D85DE8];
  v81[0] = 0;
  v81[1] = 0;
  v79 = 0;
  v80 = 0;
  OUTLINED_FUNCTION_29_21();
  bzero(v78, v6);
  OUTLINED_FUNCTION_28_21();
  bzero(v85, v7);
  if (setjmp(v85) || ventproc(v5, v78, v84, v83, v82, v85))
  {
    goto LABEL_3;
  }

  v8 = OUTLINED_FUNCTION_8_34();
  get_parm(v8, v9, v10, -6);
  v11 = OUTLINED_FUNCTION_42_12();
  get_parm(v11, v12, v13, -6);
  fence_35(v5, 0, &null_str_12);
  v14 = OUTLINED_FUNCTION_21_26();
  fence_35(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_25_24();
  if (!lpta_loadp_setscan_l(v17, v18, 1))
  {
    OUTLINED_FUNCTION_3_36();
    if (!test_string_s())
    {
      lpta_rpta_loadp(v5, v81, &v79);
      v19 = OUTLINED_FUNCTION_0_39();
      if (!insert_2pt_s(v19, v20, v21, v22, v23))
      {
        goto LABEL_40;
      }
    }
  }

  v24 = 0;
  while (2)
  {
    v25 = OUTLINED_FUNCTION_25_24();
    if (!is_nasalized_vowel(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_51_11();
      lpta_rpta_loadp(v27, v28, &v79);
      v29 = OUTLINED_FUNCTION_41_12();
      if (!insert_2pt_s(v29, v30, v31, &unk_2806BC381, 0))
      {
        goto LABEL_40;
      }
    }

LABEL_10:
    starttest(v5, 4);
    v32 = OUTLINED_FUNCTION_51_11();
    if (lpta_loadp_setscan_l(v32, v33, 1))
    {
      goto LABEL_16;
    }

    v34 = OUTLINED_FUNCTION_21_26();
    if (!testFldeq(v34, v35, 4, 1) && !advance_tok(v5, v36, v37, v38))
    {
      starttest(v5, 5);
      v39 = OUTLINED_FUNCTION_25_24();
      if (lpta_loadp_setscan_r(v39, v40, 1) || (OUTLINED_FUNCTION_3_36(), v41 = test_string_s(), v42 = v24, v41))
      {
LABEL_25:
        v53 = OUTLINED_FUNCTION_25_24();
        if (!lpta_loadp_setscan_r(v53, v54, 1))
        {
          OUTLINED_FUNCTION_3_36();
          if (!test_string_s())
          {
            v55 = OUTLINED_FUNCTION_51_11();
            lpta_rpta_loadp(v55, v56, &v79);
            v57 = OUTLINED_FUNCTION_41_12();
            if (!insert_2pt_s(v57, v58, v59, &unk_2806BC368, 0))
            {
              goto LABEL_40;
            }
          }
        }

LABEL_28:
        v60 = OUTLINED_FUNCTION_56_10();
        starttest(v60, v61);
        v62 = OUTLINED_FUNCTION_25_24();
        if (!lpta_loadp_setscan_r(v62, v63, 1))
        {
          v73 = OUTLINED_FUNCTION_21_26();
          if (testFldeq(v73, v74, 4, 1) || advance_tok(v5, v75, v76, v77))
          {
            goto LABEL_18;
          }

LABEL_23:
          v51 = OUTLINED_FUNCTION_51_11();
          lpta_rpta_loadp(v51, v52, &v79);
          v45 = OUTLINED_FUNCTION_41_12();
          v48 = &unk_2806BC361;
LABEL_17:
          if (insert_2pt_s(v45, v46, v47, v48, 0))
          {
            goto LABEL_18;
          }

LABEL_40:
          OUTLINED_FUNCTION_39_14(v80);
          break;
        }

LABEL_29:
        v64 = OUTLINED_FUNCTION_25_24();
        if (!lpta_loadp_setscan_r(v64, v65, 1))
        {
          OUTLINED_FUNCTION_21_26();
          if (!test_string_s())
          {
            v66 = OUTLINED_FUNCTION_51_11();
            lpta_rpta_loadp(v66, v67, &v79);
            v68 = OUTLINED_FUNCTION_41_12();
            if (!insert_2pt_s(v68, v69, v70, &unk_2806BC368, 0))
            {
              goto LABEL_40;
            }
          }
        }

LABEL_32:
        starttest(v5, 11);
        v71 = OUTLINED_FUNCTION_51_11();
        if (!lpta_loadp_setscan_l(v71, v72, 1))
        {
          bspush_ca_scan_boa();
          bspush_ca_scan(v5, 13);
          OUTLINED_FUNCTION_3_36();
LABEL_34:
          if (!test_string_s())
          {
LABEL_35:
            v24 = 1;
          }

          goto LABEL_18;
        }

LABEL_16:
        v43 = OUTLINED_FUNCTION_51_11();
        lpta_rpta_loadp(v43, v44, &v79);
        v45 = OUTLINED_FUNCTION_41_12();
        v48 = &unk_2806BC368;
        goto LABEL_17;
      }

LABEL_15:
      v24 = v42;
      if (!test_synch(v5, 6, 1, &_MergedGlobals_32))
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    v49 = v5[13];
    if (v49)
    {
      v50 = OUTLINED_FUNCTION_36_16(v49);
    }

    else
    {
      v50 = vback(v5, v24);
      v24 = 0;
    }

    switch(v50)
    {
      case 1:
        continue;
      case 2:
      case 7:
        goto LABEL_40;
      case 3:
        goto LABEL_10;
      case 4:
      case 11:
        goto LABEL_16;
      case 5:
        goto LABEL_25;
      case 6:
        v42 = v24;
        goto LABEL_15;
      case 8:
        goto LABEL_28;
      case 9:
        goto LABEL_29;
      case 10:
        goto LABEL_32;
      case 12:
        bspop_boa(v5);
        goto LABEL_23;
      case 13:
        OUTLINED_FUNCTION_3_36();
        goto LABEL_34;
      case 14:
        goto LABEL_35;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_60_10();
}