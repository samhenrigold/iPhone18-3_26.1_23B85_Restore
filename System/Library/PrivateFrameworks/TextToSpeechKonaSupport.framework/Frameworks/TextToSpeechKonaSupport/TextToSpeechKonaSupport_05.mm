uint64_t test_stress_annot(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v125, v127, v129, v131);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v126, SHIDWORD(v126), v128, SWORD2(v128), SHIWORD(v128), v130, SWORD2(v130), SBYTE6(v130), SHIBYTE(v130), v132, v133))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -6);
    fence_20(v1, 0, &_MergedGlobals_1_1);
    starttest(v1, 1);
    v33 = OUTLINED_FUNCTION_24_12();
    if (!lpta_loadp_setscan_r(v33, v34, 2))
    {
      do
      {
LABEL_5:
        bspush_ca_scan(v1, 2);
      }

      while (!testFldeq(v1, 2u, 8, 0) && !advance_tok(v1, v36, v37, v38));
      while (1)
      {
        v39 = *(v1 + 104);
        v40 = v39 ? OUTLINED_FUNCTION_33_6(v39) : vback(v1, 0);
        if (v40 != 2)
        {
          break;
        }

        *(v1 + 136) = 1;
        v41 = OUTLINED_FUNCTION_13_18();
        if (!test_ptr(v41, v42, v43))
        {
          goto LABEL_15;
        }
      }

      if (v40 == 3)
      {
        goto LABEL_5;
      }

      if (v40 == 4)
      {
LABEL_15:
        vretproc(v1);
        return 0;
      }
    }
  }

  vretproc(v1);
  return 94;
}

uint64_t mark_word_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  v85 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v83 = 0;
  v81 = 0;
  OUTLINED_FUNCTION_23_12(v2, v3, v4, v5, v6, v7, v8, v9, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  OUTLINED_FUNCTION_25_11();
  bzero(v84, v10);
  if (!setjmp(v84))
  {
    OUTLINED_FUNCTION_12_18();
    if (!ventproc(v1, v11, v12, v13, v14, v84))
    {
      v16 = OUTLINED_FUNCTION_4_18();
      get_parm(v16, v17, v18, -6);
      v19 = OUTLINED_FUNCTION_30_7();
      get_parm(v19, v20, v21, -4);
      v22 = OUTLINED_FUNCTION_59_2();
      v24 = push_ptr_init(v22, v23);
      OUTLINED_FUNCTION_52_2(v24, v25, &_MergedGlobals_1_1);
      v26 = OUTLINED_FUNCTION_14_16();
      starttest(v26, v27);
      v28 = OUTLINED_FUNCTION_24_12();
      if (!lpta_loadp_setscan_r(v28, v29, 2))
      {
        OUTLINED_FUNCTION_54_2();
        bspush_ca_scan_boa();
        v30 = OUTLINED_FUNCTION_16_16();
        bspush_ca_scan(v30, v31);
        if (testFldeq(v1, 2u, 8, 1))
        {
          v32 = 0;
        }

        else
        {
LABEL_16:
          v32 = 1;
        }

        v43 = v32;
        while (2)
        {
          v33 = v1[13];
          if (v33)
          {
            OUTLINED_FUNCTION_33_6(v33);
            v35 = v34;
          }

          else
          {
            vback(v1, v43);
            v35 = 0;
          }

          OUTLINED_FUNCTION_56_2();
          if (!(!v38 & v37))
          {
            switch(v36)
            {
              case 1:
                bspop_boa(v1);
                v42 = advance_tok(v1, v39, v40, v41);
                v43 = v35;
                if (v42)
                {
                  continue;
                }

                goto LABEL_13;
              case 2:
                v51 = OUTLINED_FUNCTION_45_2();
                v54 = testFldeq(v51, v52, v53, 4);
                v43 = v35;
                if (!v54)
                {
                  goto LABEL_16;
                }

                continue;
              case 3:
                goto LABEL_16;
              case 4:
LABEL_13:
                v44 = OUTLINED_FUNCTION_43_2();
                savescptr(v44, v45, v46);
                v47 = OUTLINED_FUNCTION_4_18();
                lpta_rpta_loadp(v47, v48, v49);
                v50 = mark_v(v1, 2, 5, &v81, 0);
                v43 = v35;
                if (!v50)
                {
                  goto LABEL_3;
                }

                continue;
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
  vretproc(v1);
  return OUTLINED_FUNCTION_47_2();
}

uint64_t demote_word(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  v89 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v55, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, SHIDWORD(v81), v82, v83);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_8_18(v19, &v58, v20, v21, v22, v23, v24, v25, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, SHIDWORD(v84), v85, SWORD2(v85), SHIWORD(v85), v86, SWORD2(v86), SBYTE6(v86), SHIBYTE(v86), v87, v88))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -4);
    fence_20(v1, 0, &_MergedGlobals_1_1);
    v33 = OUTLINED_FUNCTION_14_16();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_24_12();
    if (lpta_loadp_setscan_r(v35, v36, 2) || (npush_fld(v1, 2u, 5u) || (npush_v(v1, &v81 + 2, v37, v38, v39, v40, v41, v42), if_testge(v1, v43, v44, v45, v46, v47, v48, v49)) || advance_tok(v1, v50, v51, v52)) && ((v53 = *(v1 + 104)) == 0 ? (v54 = OUTLINED_FUNCTION_51_2()) : (v54 = OUTLINED_FUNCTION_33_6(v53)), v54 == 1))
    {
      mark_word_stress(v1);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t promote_word(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  v89 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_12(v3, v4, v5, v6, v7, v8, v9, v10, v55, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, SHIDWORD(v81), v82, v83);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_8_18(v19, &v58, v20, v21, v22, v23, v24, v25, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, SHIDWORD(v84), v85, SWORD2(v85), SHIWORD(v85), v86, SWORD2(v86), SBYTE6(v86), SHIBYTE(v86), v87, v88))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -4);
    fence_20(v1, 0, &_MergedGlobals_1_1);
    v33 = OUTLINED_FUNCTION_14_16();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_24_12();
    if (lpta_loadp_setscan_r(v35, v36, 2) || (npush_fld(v1, 2u, 5u) || (npush_v(v1, &v81 + 2, v37, v38, v39, v40, v41, v42), if_testle(v1, v43, v44, v45, v46, v47, v48, v49)) || advance_tok(v1, v50, v51, v52)) && ((v53 = *(v1 + 104)) == 0 ? (v54 = OUTLINED_FUNCTION_51_2()) : (v54 = OUTLINED_FUNCTION_33_6(v53)), v54 == 1))
    {
      mark_word_stress(v1);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t insert_space(uint64_t a1, __int16 *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v80 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_16(a1, a2, a3, a4, a5, a6, a7, a8, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  OUTLINED_FUNCTION_25_11();
  bzero(v79, v10);
  v11 = setjmp(v79);
  if (v11 || OUTLINED_FUNCTION_35_4(v11, &v44, v12, v13, v14, v15, v16, v17, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_24_12();
  get_parm(v19, v20, a2, -6);
  OUTLINED_FUNCTION_52_2(v21, v22, &_MergedGlobals_1_1);
  v23 = OUTLINED_FUNCTION_54_2();
  starttest(v23, v24);
  OUTLINED_FUNCTION_28_8();
  bspush_ca_boa();
  v25 = OUTLINED_FUNCTION_24_12();
  if (lpta_loadp_setscan_l(v25, v26, 1))
  {
    v27 = 0;
  }

  else
  {
    v28 = OUTLINED_FUNCTION_16_16();
    bspush_ca_scan(v28, v29);
    OUTLINED_FUNCTION_9_18();
    if (test_string_s())
    {
      v27 = 0;
    }

    else
    {
LABEL_19:
      v27 = 1;
    }
  }

  v39 = v27;
  while (2)
  {
    v30 = *(a1 + 104);
    if (v30)
    {
      OUTLINED_FUNCTION_33_6(v30);
      v32 = v31;
    }

    else
    {
      vback(a1, v39);
      v32 = 0;
    }

    OUTLINED_FUNCTION_56_2();
    if (!v35 & v34)
    {
LABEL_3:
      vretproc(a1);
      return 94;
    }

    else
    {
      switch(v33)
      {
        case 1:
          bspop_boa(a1);
          OUTLINED_FUNCTION_27_9();
          bspush_ca_boa();
          v36 = OUTLINED_FUNCTION_24_12();
          v38 = lpta_loadp_setscan_r(v36, v37, 1);
          v39 = v32;
          if (!v38)
          {
            if (test_string_s())
            {
              v39 = v32;
            }

            else
            {
              v39 = 1;
            }
          }

          continue;
        case 2:
          *(a1 + 136) = 1;
          v40 = OUTLINED_FUNCTION_13_18();
          v43 = test_ptr(v40, v41, v42);
          v39 = v32;
          if (!v43)
          {
            goto LABEL_19;
          }

          continue;
        case 3:
          goto LABEL_19;
        case 4:
          bspop_boa(a1);
          *(a1 + 136) = 1;
          *(a1 + 112) = v68;
          *(a1 + 128) = 0;
          insert_r(a1, 1, 2, &unk_2806BB1D9, 0);
          break;
        default:
          break;
      }

      vretproc(a1);
      return 0;
    }
  }
}

uint64_t delete_inp_from_left(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v4, v5, v6, v7, v8, v9, v10, v11, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121);
  OUTLINED_FUNCTION_20_12(v12, v13, v14, v15, v16, v17, v18, v19, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v124, v126, v128, v130);
  v20 = setjmp(v3);
  if (!v20 && !OUTLINED_FUNCTION_3_19(v20, v21, v22, v23, v24, v25, v26, v27, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v125, SHIDWORD(v125), v127, SWORD2(v127), SHIWORD(v127), v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v131, v132))
  {
    v29 = OUTLINED_FUNCTION_0_20();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_1_19();
    get_parm(v32, v33, v34, -6);
    OUTLINED_FUNCTION_52_2(v35, v36, &_MergedGlobals_1_1);
    v37 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_44_2();
    if (delete_2pt(v40, v41, 0, v42))
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      *(v1 + 136) = v2;
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_inp_from_right(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v4, v5, v6, v7, v8, v9, v10, v11, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121);
  OUTLINED_FUNCTION_20_12(v12, v13, v14, v15, v16, v17, v18, v19, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v124, v126, v128, v130);
  v20 = setjmp(v3);
  if (!v20 && !OUTLINED_FUNCTION_3_19(v20, v21, v22, v23, v24, v25, v26, v27, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v125, SHIDWORD(v125), v127, SWORD2(v127), SHIWORD(v127), v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v131, v132))
  {
    v29 = OUTLINED_FUNCTION_0_20();
    get_parm(v29, v30, v31, -6);
    v32 = OUTLINED_FUNCTION_1_19();
    get_parm(v32, v33, v34, -6);
    OUTLINED_FUNCTION_52_2(v35, v36, &_MergedGlobals_1_1);
    v37 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_44_2();
    if (delete_2pt(v40, v41, 0, v42))
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      *(v1 + 136) = v2;
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_phone_from_left(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v124, SHIDWORD(v124), v126, SWORD2(v126), SHIWORD(v126), v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v131))
  {
    v28 = OUTLINED_FUNCTION_0_20();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_1_19();
    get_parm(v31, v32, v33, -6);
    OUTLINED_FUNCTION_52_2(v34, v35, &_MergedGlobals_1_1);
    v36 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_42_2();
    if (delete_2pt(v39, v40, 0, v41))
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_phone_from_right(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v124, SHIDWORD(v124), v126, SWORD2(v126), SHIWORD(v126), v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v131))
  {
    v28 = OUTLINED_FUNCTION_0_20();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_1_19();
    get_parm(v31, v32, v33, -6);
    OUTLINED_FUNCTION_52_2(v34, v35, &_MergedGlobals_1_1);
    v36 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_42_2();
    if (delete_2pt(v39, v40, 0, v41))
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_morph_from_left(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, v123, v125, v127);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v122, SHIDWORD(v122), v124, SWORD2(v124), SHIWORD(v124), v126, SWORD2(v126), SBYTE6(v126), SHIBYTE(v126), v128, v129))
  {
    v28 = OUTLINED_FUNCTION_0_20();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_1_19();
    get_parm(v31, v32, v33, -6);
    OUTLINED_FUNCTION_52_2(v34, v35, &_MergedGlobals_1_1);
    v36 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v36, v37, v38);
    if (delete_2pt(v1, 3, 0, v39))
    {
      if (v1[13])
      {
        v1[13] = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_morph_from_right(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, v123, v125, v127);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v122, SHIDWORD(v122), v124, SWORD2(v124), SHIWORD(v124), v126, SWORD2(v126), SBYTE6(v126), SHIBYTE(v126), v128, v129))
  {
    v28 = OUTLINED_FUNCTION_0_20();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_1_19();
    get_parm(v31, v32, v33, -6);
    OUTLINED_FUNCTION_52_2(v34, v35, &_MergedGlobals_1_1);
    v36 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v36, v37, v38);
    if (delete_2pt(v1, 3, 0, v39))
    {
      if (v1[13])
      {
        v1[13] = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_syll_from_left(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v124, SHIDWORD(v124), v126, SWORD2(v126), SHIWORD(v126), v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v131))
  {
    v28 = OUTLINED_FUNCTION_0_20();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_1_19();
    get_parm(v31, v32, v33, -6);
    OUTLINED_FUNCTION_52_2(v34, v35, &_MergedGlobals_1_1);
    v36 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_36_4();
    if (delete_2pt(v39, v40, 0, v41))
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t delete_syll_from_right(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123, v125, v127, v129);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v124, SHIDWORD(v124), v126, SWORD2(v126), SHIWORD(v126), v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v130, v131))
  {
    v28 = OUTLINED_FUNCTION_0_20();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_1_19();
    get_parm(v31, v32, v33, -6);
    OUTLINED_FUNCTION_52_2(v34, v35, &_MergedGlobals_1_1);
    v36 = OUTLINED_FUNCTION_4_18();
    lpta_rpta_loadp(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_36_4();
    if (delete_2pt(v39, v40, 0, v41))
    {
      if (*(v1 + 104))
      {
        *(v1 + 104) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_51_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_13_18();
      delete_1pt();
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t strip_last_digit(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  v58 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_12(v4, v5, v6, v7, v8, v9, v10, v11, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, SHIDWORD(v53), v54, v55);
  OUTLINED_FUNCTION_25_11();
  bzero(v57, v12);
  if (!setjmp(v57))
  {
    OUTLINED_FUNCTION_12_18();
    if (!ventproc(v1, v13, v14, v15, v16, v57))
    {
      v18 = OUTLINED_FUNCTION_4_18();
      get_parm(v18, v19, v20, -3);
      v21 = OUTLINED_FUNCTION_29_8();
      get_parm(v21, v22, v2, -3);
      fence_20(v1, 0, &_MergedGlobals_1_1);
      v23 = OUTLINED_FUNCTION_14_16();
      starttest(v23, v24);
      v25 = OUTLINED_FUNCTION_41_2();
      move_i(v25, v26, 10);
      OUTLINED_FUNCTION_19_13();
      if (!modulus() || ((v27 = *(v1 + 104)) == 0 ? (v28 = OUTLINED_FUNCTION_51_2()) : (v28 = OUTLINED_FUNCTION_33_6(v27)), v28 == 1))
      {
        *(v3 + 8) = (0 / 10.0);
        OUTLINED_FUNCTION_55_2(v56);
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_47_2();
}

uint64_t modulus()
{
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_5_18(v3, v4, v5, v6, v7, v8, v9, v10, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v59, v60);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_18_14();
    if (!OUTLINED_FUNCTION_64_2(v13, v14, v15, v16, v17))
    {
      v19 = OUTLINED_FUNCTION_10_18();
      get_parm(v19, v20, v21, -3);
      v22 = OUTLINED_FUNCTION_0_20();
      get_parm(v22, v23, v24, -3);
      v25 = OUTLINED_FUNCTION_1_19();
      get_parm(v25, v26, v27, -3);
      OUTLINED_FUNCTION_52_2(v28, v29, &_MergedGlobals_1_1);
      v30 = OUTLINED_FUNCTION_10_18();
      modulo(v30, v31, v32, v1);
      OUTLINED_FUNCTION_55_2(v58);
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_47_2();
}

void copy_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_31_7();
  v95 = *MEMORY[0x277D85DE8];
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v81[0] = 0;
  v81[1] = 0;
  v82 = 0;
  v80[2] = 0;
  v80[3] = 0;
  OUTLINED_FUNCTION_23_12(v5, v6, v7, v8, v9, v10, v11, v12, v78, v79[0], v79[1], v79[2], v79[3], v79[4], v79[5], v79[6], v79[7], v79[8], v79[9], v79[10], v79[11], v79[12], v79[13], v79[14], v79[15], v79[16], v79[17], v79[18], v79[19], v79[20], v79[21], v79[22], v80[0], v80[1]);
  OUTLINED_FUNCTION_25_11();
  bzero(v94, v13);
  if (!setjmp(v94) && !ventproc(v4, v79, v93, v92, v91, v94))
  {
    v14 = OUTLINED_FUNCTION_39_3();
    get_parm(v14, v15, v16, -6);
    v17 = OUTLINED_FUNCTION_10_18();
    get_parm(v17, v18, v19, -6);
    v20 = OUTLINED_FUNCTION_30_7();
    get_parm(v20, v21, v22, -6);
    v23 = OUTLINED_FUNCTION_43_2();
    get_parm(v23, v24, v25, -6);
    WORD2(v82) = 0;
    LODWORD(v82) = 0;
    LODWORD(v81[0]) = -65535;
    v26 = OUTLINED_FUNCTION_24_12();
    push_ptr_init(v26, v27);
    v28 = OUTLINED_FUNCTION_49_2();
    v30 = push_ptr_init(v28, v29);
    OUTLINED_FUNCTION_52_2(v30, v31, &_MergedGlobals_1_1);
    startloop(v4, 1);
    v32 = OUTLINED_FUNCTION_41_2();
    lpta_loadpn(v32, v33);
    lpta_mover();
    v34 = OUTLINED_FUNCTION_24_12();
    lpta_storep(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_29_8();
    lpta_loadpn(v37, v38);
    lpta_mover();
    v39 = OUTLINED_FUNCTION_49_2();
    lpta_storep(v39, v40, v41);
    v42 = OUTLINED_FUNCTION_24_12();
    v44 = forall_to_test(v42, v43, v80);
    v45 = 0;
    v46 = 0;
    if (!v44)
    {
LABEL_5:
      v46 = v45;
      v47 = OUTLINED_FUNCTION_16_16();
      bspush_ca(v47);
      v48 = OUTLINED_FUNCTION_37_4();
      if (!lpta_loadp_setscan_r(v48, v49, v50) && !advance_tok(v4, v51, v52, v53))
      {
        v54 = savetok(v4, v81);
        v55 = v46;
        if (!v54)
        {
LABEL_8:
          *(v4 + 168) = 1;
          v46 = (v55 + 1);
          v56 = v55;
          *(v4 + 144) = v84;
          *(v4 + 128) = 0;
          insert_lv();
          v57 = OUTLINED_FUNCTION_16_16();
          starttest_l(v57, v58);
          if (!v56)
          {
            v59 = OUTLINED_FUNCTION_16_16();
            starttest_e(v59, v60);
            v46 = 1;
            if (!lpta_loadp_setscan_l(v4, &v83, 1))
            {
              v64 = advance_tok(v4, v61, v62, v63);
              v46 = 1;
              v65 = 1;
              if (!v64)
              {
LABEL_11:
                v46 = v65;
                OUTLINED_FUNCTION_78_2();
                savescptr(v4, v66, &v85);
              }
            }
          }

LABEL_12:
          OUTLINED_FUNCTION_34_5();
          v67 = OUTLINED_FUNCTION_32_6();
          if (!forto_adv_upto_r(v67, v68, v69, v70, v71, v72))
          {
LABEL_18:
            OUTLINED_FUNCTION_55_2(v86);
            goto LABEL_3;
          }
        }
      }
    }

    v73 = *(v4 + 104);
    if (v73)
    {
      OUTLINED_FUNCTION_33_6(v73);
    }

    else
    {
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_56_2();
    if (!(!v76 & v75))
    {
      v77 = v74;
      v45 = v46;
      v55 = v46;
      v65 = v46;
      switch(v77)
      {
        case 1:
          goto LABEL_8;
        case 2:
          goto LABEL_12;
        case 3:
          goto LABEL_11;
        case 4:
          goto LABEL_5;
        default:
          goto LABEL_18;
      }
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_70_2();
}

uint64_t copy_token(uint64_t a1)
{
  OUTLINED_FUNCTION_31_7();
  v64 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  OUTLINED_FUNCTION_5_18(v3, v4, v5, v6, v7, v8, v9, v10, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
  OUTLINED_FUNCTION_25_11();
  bzero(v63, v11);
  if (!setjmp(v63))
  {
    OUTLINED_FUNCTION_65_2();
    if (!ventproc(v1, v12, v13, v14, v15, v63))
    {
      v17 = OUTLINED_FUNCTION_39_3();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_10_18();
      get_parm(v20, v21, v22, -6);
      v23 = OUTLINED_FUNCTION_24_12();
      get_parm(v23, v24, v2, -6);
      v25 = OUTLINED_FUNCTION_49_2();
      OUTLINED_FUNCTION_50_2(v25, v26);
      OUTLINED_FUNCTION_52_2(v27, v28, &_MergedGlobals_1_1);
      v29 = OUTLINED_FUNCTION_39_3();
      copy_string(v29, v30, v31, &v57);
      *(v1 + 168) = 1;
      *(v1 + 144) = v58;
      *(v1 + 128) = 0;
      insert_l(v1, 1);
      OUTLINED_FUNCTION_55_2(v58);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_81_2();
}

uint64_t same_inp(uint64_t a1, int a2, __int16 *a3, int a4, int a5, int a6, int a7, int a8)
{
  v106 = *MEMORY[0x277D85DE8];
  v101[0] = 0;
  v101[1] = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  memset(v97, 0, sizeof(v97));
  v95[0] = 0;
  v95[1] = 0;
  v96 = 0;
  v93[0] = 0;
  v93[1] = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v90[0] = 0;
  v90[1] = 0;
  v89[0] = 0;
  v89[1] = 0;
  OUTLINED_FUNCTION_5_18(a1, a2, a3, a4, a5, a6, a7, a8, v86[0], v86[1], v86[2], v86[3], v86[4], v86[5], v86[6], v86[7], v86[8], v86[9], v86[10], v86[11], v86[12], v86[13], v86[14], v86[15], v86[16], v86[17], v86[18], v86[19], v86[20], v86[21], v86[22], v87[0], v87[1], v88[0], v88[1]);
  OUTLINED_FUNCTION_25_11();
  bzero(v105, v10);
  if (setjmp(v105) || ventproc(a1, v86, v104, v103, v102, v105))
  {
    goto LABEL_24;
  }

  v11 = OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_73_2(v11, v12);
  v13 = OUTLINED_FUNCTION_29_8();
  get_parm(v13, v14, a3, -6);
  v15 = OUTLINED_FUNCTION_43_2();
  get_parm(v15, v16, v17, -6);
  v18 = OUTLINED_FUNCTION_30_7();
  get_parm(v18, v19, v20, -6);
  WORD2(v96) = 0;
  LODWORD(v96) = 0;
  LODWORD(v95[0]) = -65535;
  WORD2(v94) = 0;
  LODWORD(v94) = 0;
  LODWORD(v93[0]) = -65535;
  push_ptr_init(a1, &v91);
  v21 = OUTLINED_FUNCTION_27_9();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_80_2();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_41_2();
  push_ptr_init(v25, v26);
  v27 = push_ptr_init(a1, v87);
  OUTLINED_FUNCTION_52_2(v27, v28, &_MergedGlobals_1_1);
  v92 = v98;
  v29 = OUTLINED_FUNCTION_14_16();
  startloop(v29, v30);
  v31 = OUTLINED_FUNCTION_27_9();
  copyvar(v31, v32, v101);
  v33 = OUTLINED_FUNCTION_39_3();
  copyvar(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_27_9();
  if (forall_to_test(v36, v37, v88))
  {
    goto LABEL_17;
  }

  while (2)
  {
    v38 = OUTLINED_FUNCTION_16_16();
    bspush_ca(v38);
    v39 = OUTLINED_FUNCTION_37_4();
    if (!lpta_loadp_setscan_r(v39, v40, v41) && !advance_tok(a1, v42, v43, v44) && !savetok(a1, v95))
    {
LABEL_7:
      OUTLINED_FUNCTION_78_2();
      savescptr(a1, v45, v89);
LABEL_8:
      lpta_loadpn(a1, &v91);
      rpta_loadpn(a1, v97);
      if (compare_ptas(a1) || testeq(a1))
      {
LABEL_10:
        v46 = OUTLINED_FUNCTION_37_4();
        if (!lpta_loadp_setscan_r(v46, v47, v48) && !advance_tok(a1, v49, v50, v51) && !savetok(a1, v93))
        {
LABEL_13:
          v52 = OUTLINED_FUNCTION_63_2();
          savescptr(v52, v53, v54);
        }

LABEL_14:
        v55 = OUTLINED_FUNCTION_28_8();
        starttest(v55, v56);
        WORD1(v95[0]) = 0;
        npush_v(a1, v95, v57, v58, v59, v60, v61, v62);
        WORD1(v93[0]) = 0;
        npush_v(a1, v93, v63, v64, v65, v66, v67, v68);
        if (if_testneq(a1, v69, v70, v71, v72, v73, v74, v75))
        {
LABEL_15:
          v76 = OUTLINED_FUNCTION_63_2();
          copyvar(v76, v77, v78);
LABEL_16:
          OUTLINED_FUNCTION_34_5();
          if (forto_adv_r(a1, v79, v80, 9, v81, v90))
          {
            goto LABEL_17;
          }

LABEL_21:
          lpta_loadpn(a1, v87);
          rpta_loadpn(a1, v97);
          if (compare_ptas(a1) || testneq(a1))
          {
            v84 = 0;
            break;
          }
        }
      }

LABEL_24:
      v84 = 94;
      break;
    }

LABEL_17:
    v82 = *(a1 + 104);
    if (v82)
    {
      v83 = OUTLINED_FUNCTION_33_6(v82);
    }

    else
    {
      v83 = OUTLINED_FUNCTION_51_2();
    }

    v84 = 0;
    switch(v83)
    {
      case 1:
        goto LABEL_21;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_16;
      case 4:
        goto LABEL_7;
      case 5:
        goto LABEL_10;
      case 6:
        goto LABEL_14;
      case 7:
        goto LABEL_13;
      case 8:
        goto LABEL_15;
      case 9:
        continue;
      case 10:
        goto LABEL_25;
      default:
        goto LABEL_24;
    }
  }

LABEL_25:
  vretproc(a1);
  return v84;
}

uint64_t num_words_in_range()
{
  OUTLINED_FUNCTION_7_18();
  v50 = *MEMORY[0x277D85DE8];
  memset(v46, 0, sizeof(v46));
  v45 = 0;
  v42[0] = 0;
  v42[1] = 0;
  OUTLINED_FUNCTION_23_12(v3, v4, v5, v6, v7, v8, v9, v10, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9], v37[10], v37[11], v37[12], v37[13], v37[14], v37[15], v37[16], v37[17], v37[18], v37[19], v37[20], v37[21], v37[22], v38, v39);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v11, v12);
  v13 = setjmp(v2);
  if (v13 || OUTLINED_FUNCTION_64_2(v13, v37, v49, v48, v47))
  {
    v1 = 94;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_10_18();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_43_2();
    get_parm(v18, v19, v20, -6);
    v21 = OUTLINED_FUNCTION_30_7();
    get_parm(v21, v22, v23, -4);
    v43 = 0;
    v44 = 0;
    LODWORD(v42[0]) = -65534;
    v40 = 0;
    v41 = 0;
    LODWORD(v38) = -65534;
    OUTLINED_FUNCTION_52_2(v24, v25, &_MergedGlobals_1_1);
    HIWORD(v45) = 0;
    v26 = OUTLINED_FUNCTION_29_8();
    if (!lpta_loadp_setscan_r(v26, v27, 2) && !advance_tok(v0, v28, v29, v30))
    {
      savetok(v0, v42);
    }

    if (!lpta_loadp_setscan_l(v0, v46, 2))
    {
      v31 = OUTLINED_FUNCTION_59_2();
      if (!savetok(v31, v32))
      {
        advance_tok(v0, v33, v34, v35);
      }
    }

    HIWORD(v45) = (v40 - v43 + 1) & ~((v40 - v43 + 1) >> 15);
    OUTLINED_FUNCTION_62_2(SHIWORD(v45));
  }

  vretproc(v0);
  return v1;
}

uint64_t mark_word_str_annot(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v130, v132, v134, v136);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v131, SHIDWORD(v131), v133, SWORD2(v133), SHIWORD(v133), v135, SWORD2(v135), SBYTE6(v135), SHIBYTE(v135), v137, v138))
  {
    v28 = OUTLINED_FUNCTION_0_20();
    get_parm(v28, v29, v30, -6);
    v31 = OUTLINED_FUNCTION_30_7();
    get_parm(v31, v32, v33, -6);
    fence_20(v1, 0, &_MergedGlobals_1_1);
    v34 = OUTLINED_FUNCTION_14_16();
    starttest(v34, v35);
    v36 = OUTLINED_FUNCTION_24_12();
    if (!lpta_loadp_setscan_r(v36, v37, 2))
    {
      v38 = OUTLINED_FUNCTION_45_2();
      if (testFldeq(v38, v39, v40, 2) || advance_tok(v1, v41, v42, v43))
      {
        goto LABEL_8;
      }
    }

    do
    {
      v44 = OUTLINED_FUNCTION_63_2();
      lpta_rpta_loadp(v44, v45, v46);
      OUTLINED_FUNCTION_45_2();
      if (!mark_s())
      {
        break;
      }

LABEL_8:
      v47 = *(v1 + 104);
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_33_6(v47);
      }

      else
      {
        v48 = OUTLINED_FUNCTION_51_2();
      }
    }

    while (v48 == 1);
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t is_proper_name(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v85 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_16(a1, a2, a3, a4, a5, a6, a7, a8, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1]);
  OUTLINED_FUNCTION_25_11();
  bzero(v84, v9);
  v10 = setjmp(v84);
  if (v10)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_35_4(v10, &v60, v11, v12, v13, v14, v15, v16, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1], v83[2], SHIDWORD(v83[2]), v83[3], SWORD2(v83[3]), SHIWORD(v83[3]), v83[4], SWORD2(v83[4]), SBYTE6(v83[4]), SHIBYTE(v83[4]), v83[5], v84[0]))
  {
    goto LABEL_4;
  }

  v17 = OUTLINED_FUNCTION_1_19();
  get_parm(v17, v18, v19, -6);
  fence_20(a1, 0, &_MergedGlobals_1_1);
  v20 = OUTLINED_FUNCTION_54_2();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_27_9();
  if (lpta_loadp_setscan_r(v22, v23, 1))
  {
    goto LABEL_4;
  }

  v27 = OUTLINED_FUNCTION_9_18();
  if (testFldeq(v27, v28, v29, 2))
  {
    goto LABEL_10;
  }

  if (advance_tok(a1, v30, v31, v32))
  {
    goto LABEL_10;
  }

  v33 = OUTLINED_FUNCTION_9_18();
  if (testFldeq(v33, v34, v35, 1) || advance_tok(a1, v36, v37, v38))
  {
    goto LABEL_10;
  }

  v40 = OUTLINED_FUNCTION_28_8();
  starttest(v40, v41);
  if (lpta_loadp_setscan_l(a1, v83, 1))
  {
    v39 = 0;
    while (2)
    {
      v47 = OUTLINED_FUNCTION_37_4();
      if (lpta_loadp_setscan_l(v47, v48, v49) || (OUTLINED_FUNCTION_9_18(), test_string_s()))
      {
LABEL_31:
        v24 = 0;
        goto LABEL_5;
      }

      v50 = OUTLINED_FUNCTION_28_8();
      starttest(v50, v51);
      OUTLINED_FUNCTION_28_8();
      bspush_ca_boa();
      v52 = OUTLINED_FUNCTION_28_8();
      bspush_ca(v52);
      if (*(a1 + 5102) == *(a1 + 5090))
      {
LABEL_19:
        v39 = 1;
      }

LABEL_20:
      v53 = v39;
LABEL_21:
      v54 = *(a1 + 104);
      if (v54)
      {
        v55 = OUTLINED_FUNCTION_33_6(v54);
        v53 = v56;
      }

      else
      {
        v55 = vback(a1, v53);
        v53 = 0;
      }

      v24 = 94;
      switch(v55)
      {
        case 2:
          v39 = v53;
          continue;
        case 3:
          v57 = OUTLINED_FUNCTION_48_2();
          bspush_ca_scan(v57, v58);
          OUTLINED_FUNCTION_9_18();
          goto LABEL_29;
        case 5:
          OUTLINED_FUNCTION_9_18();
LABEL_29:
          v59 = test_string_s();
          v24 = 94;
          if (!v59)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        case 6:
        case 7:
        case 11:
          goto LABEL_31;
        case 8:
          bspop_boa(a1);
          goto LABEL_4;
        case 9:
          if (*(a1 + 5110) == *(a1 + 5090))
          {
            goto LABEL_19;
          }

          goto LABEL_21;
        case 10:
          goto LABEL_19;
        default:
          goto LABEL_5;
      }
    }
  }

  v42 = OUTLINED_FUNCTION_16_16();
  bspush_ca_scan(v42, v43);
  *(a1 + 136) = 1;
  v44 = OUTLINED_FUNCTION_13_18();
  if (test_ptr(v44, v45, v46))
  {
LABEL_10:
    v39 = 0;
    goto LABEL_20;
  }

LABEL_4:
  v24 = 94;
LABEL_5:
  v25 = v24;
  vretproc(a1);
  return v25;
}

uint64_t is_in_parentheses(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v120, v122, v124, v126);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v121, SHIDWORD(v121), v123, SWORD2(v123), SHIWORD(v123), v125, SWORD2(v125), SBYTE6(v125), SHIBYTE(v125), v127, v128))
  {
    v27 = OUTLINED_FUNCTION_0_20();
    get_parm(v27, v28, v29, -6);
    v30 = OUTLINED_FUNCTION_30_7();
    get_parm(v30, v31, v32, -6);
    fence_20(v1, 0, &_MergedGlobals_1_1);
    v33 = OUTLINED_FUNCTION_24_12();
    if (!lpta_loadp_setscan_l(v33, v34, 1))
    {
      OUTLINED_FUNCTION_9_18();
      if (!test_string_s())
      {
        v35 = OUTLINED_FUNCTION_37_4();
        if (!lpta_loadp_setscan_r(v35, v36, v37))
        {
          OUTLINED_FUNCTION_9_18();
          test_string_s();
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t count_sylls()
{
  OUTLINED_FUNCTION_7_18();
  v90 = *MEMORY[0x277D85DE8];
  v87 = 0;
  v88 = 0;
  OUTLINED_FUNCTION_17_15(v2, v3, v4, v5, v6, v7, v8, v9, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82[0], v82[1], v82[2], v82[3], v83, v84, v85, v86);
  OUTLINED_FUNCTION_25_11();
  bzero(v89, v10);
  if (!setjmp(v89))
  {
    OUTLINED_FUNCTION_66_2();
    if (!ventproc(v0, v11, v12, v13, v14, v89))
    {
      v16 = OUTLINED_FUNCTION_10_18();
      get_parm(v16, v17, v18, -6);
      v19 = OUTLINED_FUNCTION_4_18();
      get_parm(v19, v20, v21, -6);
      v22 = OUTLINED_FUNCTION_30_7();
      get_parm(v22, v23, v24, -4);
      v25 = OUTLINED_FUNCTION_27_9();
      push_ptr_init(v25, v26);
      v27 = OUTLINED_FUNCTION_41_2();
      v29 = push_ptr_init(v27, v28);
      OUTLINED_FUNCTION_52_2(v29, v30, &_MergedGlobals_1_1);
      HIWORD(v84) = 0;
      v31 = OUTLINED_FUNCTION_14_16();
      startloop(v31, v32);
      v33 = OUTLINED_FUNCTION_29_8();
      lpta_loadpn(v33, v34);
      OUTLINED_FUNCTION_36_4();
      lpta_mover();
      v35 = OUTLINED_FUNCTION_27_9();
      lpta_storep(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_24_12();
      lpta_loadpn(v38, v39);
      OUTLINED_FUNCTION_36_4();
      lpta_mover();
      v40 = OUTLINED_FUNCTION_41_2();
      lpta_storep(v40, v41, v42);
      v43 = OUTLINED_FUNCTION_27_9();
      if (!forall_to_test(v43, v44, v82))
      {
LABEL_6:
        v45 = OUTLINED_FUNCTION_16_16();
        bspush_ca(v45);
        v46 = OUTLINED_FUNCTION_46_2();
        if (!lpta_loadp_setscan_r(v46, v47, 7) && !advance_tok(v0, v48, v49, v50))
        {
LABEL_8:
          c_assvar(v0, &v84);
          ++HIWORD(v84);
LABEL_9:
          OUTLINED_FUNCTION_79_2();
          v51 = OUTLINED_FUNCTION_32_6();
          if (!forto_adv_upto_r(v51, v52, v53, v54, 7, v55))
          {
LABEL_14:
            OUTLINED_FUNCTION_62_2(SHIWORD(v84));
            goto LABEL_4;
          }
        }
      }

      v56 = *(v0 + 104);
      if (v56)
      {
        v57 = OUTLINED_FUNCTION_33_6(v56);
      }

      else
      {
        v57 = OUTLINED_FUNCTION_51_2();
      }

      switch(v57)
      {
        case 1:
          goto LABEL_14;
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_6;
        default:
          break;
      }
    }
  }

  v1 = 94;
LABEL_4:
  vretproc(v0);
  return v1;
}

uint64_t count_chars()
{
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, SHIDWORD(v53), v54, v55);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v10, v11);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_12_18();
    if (!OUTLINED_FUNCTION_64_2(v12, v13, v14, v15, v16))
    {
      v18 = OUTLINED_FUNCTION_10_18();
      get_parm(v18, v19, v20, -6);
      v21 = OUTLINED_FUNCTION_0_20();
      get_parm(v21, v22, v23, -6);
      v24 = OUTLINED_FUNCTION_11_18();
      get_parm(v24, v25, v26, -4);
      OUTLINED_FUNCTION_52_2(v27, v28, &_MergedGlobals_1_1);
      OUTLINED_FUNCTION_10_18();
      count_cumulative_chars();
      OUTLINED_FUNCTION_62_2(0);
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_47_2();
}

uint64_t count_cumulative_chars()
{
  OUTLINED_FUNCTION_7_18();
  v90 = *MEMORY[0x277D85DE8];
  v87 = 0;
  v88 = 0;
  OUTLINED_FUNCTION_17_15(v2, v3, v4, v5, v6, v7, v8, v9, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82[0], v82[1], v82[2], v82[3], v83, v84, v85, v86);
  OUTLINED_FUNCTION_25_11();
  bzero(v89, v10);
  if (!setjmp(v89))
  {
    OUTLINED_FUNCTION_66_2();
    if (!ventproc(v0, v11, v12, v13, v14, v89))
    {
      v16 = OUTLINED_FUNCTION_10_18();
      get_parm(v16, v17, v18, -6);
      v19 = OUTLINED_FUNCTION_4_18();
      get_parm(v19, v20, v21, -6);
      v22 = OUTLINED_FUNCTION_30_7();
      get_parm(v22, v23, v24, -4);
      v25 = OUTLINED_FUNCTION_27_9();
      push_ptr_init(v25, v26);
      v27 = OUTLINED_FUNCTION_41_2();
      push_ptr_init(v27, v28);
      fence_20(v0, 0, &_MergedGlobals_1_1);
      v29 = OUTLINED_FUNCTION_72_2();
      startloop(v29, v30);
      v31 = OUTLINED_FUNCTION_29_8();
      lpta_loadpn(v31, v32);
      OUTLINED_FUNCTION_76_2();
      v33 = OUTLINED_FUNCTION_27_9();
      lpta_storep(v33, v34, v35);
      v36 = OUTLINED_FUNCTION_24_12();
      lpta_loadpn(v36, v37);
      OUTLINED_FUNCTION_76_2();
      v38 = OUTLINED_FUNCTION_41_2();
      lpta_storep(v38, v39, v40);
      v41 = OUTLINED_FUNCTION_27_9();
      if (!forall_to_test(v41, v42, v82))
      {
LABEL_6:
        v43 = OUTLINED_FUNCTION_16_16();
        bspush_ca(v43);
        v44 = OUTLINED_FUNCTION_37_4();
        if (!lpta_loadp_setscan_r(v44, v45, v46) && !advance_tok(v0, v47, v48, v49))
        {
LABEL_8:
          c_assvar(v0, &v84);
          ++HIWORD(v84);
LABEL_9:
          OUTLINED_FUNCTION_34_5();
          v50 = OUTLINED_FUNCTION_32_6();
          if (!forto_adv_upto_r(v50, v51, v52, v53, v54, v55))
          {
LABEL_14:
            OUTLINED_FUNCTION_62_2(SHIWORD(v84));
            goto LABEL_4;
          }
        }
      }

      v56 = *(v0 + 104);
      if (v56)
      {
        v57 = OUTLINED_FUNCTION_33_6(v56);
      }

      else
      {
        v57 = OUTLINED_FUNCTION_51_2();
      }

      switch(v57)
      {
        case 1:
          goto LABEL_14;
        case 2:
          goto LABEL_8;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_6;
        default:
          break;
      }
    }
  }

  v1 = 94;
LABEL_4:
  vretproc(v0);
  return v1;
}

void reset_endptr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71_2();
  v5 = v4;
  v122 = *MEMORY[0x277D85DE8];
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  HIDWORD(v106) = 0;
  OUTLINED_FUNCTION_15_16(v4, v6, v7, v8, v9, v10, v11, v12, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v105);
  OUTLINED_FUNCTION_25_11();
  bzero(v121, v13);
  v14 = setjmp(v121);
  if (!v14 && !OUTLINED_FUNCTION_67_2(v14, v15, v16, v17, v18, v19, v20, v21, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0]))
  {
    v22 = OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_57_2(v22, v23);
    v24 = OUTLINED_FUNCTION_30_7();
    get_parm(v24, v25, v26, -6);
    v27 = OUTLINED_FUNCTION_4_18();
    get_parm(v27, v28, v29, -4);
    v30 = OUTLINED_FUNCTION_29_8();
    v32 = push_ptr_init(v30, v31);
    OUTLINED_FUNCTION_52_2(v32, v33, &_MergedGlobals_1_1);
    v34 = OUTLINED_FUNCTION_72_2();
    startloop(v34, v35);
    v36 = OUTLINED_FUNCTION_53_2();
    lpta_loadpn(v36, v37);
    OUTLINED_FUNCTION_76_2();
    v38 = OUTLINED_FUNCTION_29_8();
    lpta_storep(v38, v39, v40);
    while (2)
    {
      v41 = OUTLINED_FUNCTION_72_2();
      bspush_ca(v41);
      if (SHIWORD(v106) >= 1)
      {
        bsclear(v5);
        v42 = OUTLINED_FUNCTION_27_9();
        bspush_ca(v42);
        v43 = OUTLINED_FUNCTION_29_8();
        if (!lpta_loadp_setscan_r(v43, v44, 1) && !advance_tok(v5, v45, v46, v47))
        {
LABEL_13:
          v52 = OUTLINED_FUNCTION_82_2();
          savescptr(v52, v53, &v107);
LABEL_14:
          v54 = OUTLINED_FUNCTION_24_12();
          c_assvar(v54, v55);
          --HIWORD(v106);
LABEL_15:
          v56 = OUTLINED_FUNCTION_72_2();
          if (!forall_adv_upto_r(v56, v57, 2, 5, 1, &v104))
          {
LABEL_16:
            OUTLINED_FUNCTION_55_2(v108);
            break;
          }
        }
      }

      v48 = v5[13];
      if (v48)
      {
        OUTLINED_FUNCTION_33_6(v48);
      }

      else
      {
        vback(v5, 0);
      }

      OUTLINED_FUNCTION_56_2();
      if (!(!v51 & v50))
      {
        switch(v49)
        {
          case 1:
            goto LABEL_14;
          case 2:
            goto LABEL_15;
          case 3:
            goto LABEL_13;
          case 4:
            continue;
          default:
            goto LABEL_16;
        }
      }

      break;
    }
  }

  vretproc(v5);
  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_70_2();
}

uint64_t reset_endptr_bounded(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v76 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  OUTLINED_FUNCTION_17_15(a1, a2, a3, a4, a5, a6, a7, a8, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v62[17], v62[18], v62[19], v62[20], v62[21], v62[22], v63[0], v63[1], v63[2], v63[3], v64, v65, v66, v67);
  OUTLINED_FUNCTION_25_11();
  bzero(v75, v10);
  if (!setjmp(v75) && !ventproc(a1, v62, v74, v73, v72, v75))
  {
    v12 = OUTLINED_FUNCTION_39_3();
    get_parm(v12, v13, v14, -6);
    v15 = OUTLINED_FUNCTION_30_7();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_10_18();
    get_parm(v18, v19, v20, -6);
    v21 = OUTLINED_FUNCTION_43_2();
    get_parm(v21, v22, v23, -4);
    v24 = OUTLINED_FUNCTION_27_9();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_24_12();
    push_ptr_init(v26, v27);
    fence_20(a1, 0, &_MergedGlobals_1_1);
    v28 = OUTLINED_FUNCTION_72_2();
    startloop(v28, v29);
    v30 = OUTLINED_FUNCTION_41_2();
    lpta_loadpn(v30, v31);
    OUTLINED_FUNCTION_76_2();
    v32 = OUTLINED_FUNCTION_27_9();
    lpta_storep(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_29_8();
    lpta_loadpn(v35, v36);
    OUTLINED_FUNCTION_76_2();
    v37 = OUTLINED_FUNCTION_24_12();
    lpta_storep(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_27_9();
    if (!forall_to_test(v40, v41, v63))
    {
LABEL_6:
      v42 = OUTLINED_FUNCTION_14_16();
      bspush_ca(v42);
      if (SHIWORD(v65) >= 1)
      {
        bsclear(a1);
        v43 = OUTLINED_FUNCTION_16_16();
        bspush_ca(v43);
        v44 = OUTLINED_FUNCTION_37_4();
        if (!lpta_loadp_setscan_r(v44, v45, v46) && !advance_tok(a1, v47, v48, v49))
        {
LABEL_9:
          OUTLINED_FUNCTION_78_2();
          savescptr(a1, v50, &v68);
LABEL_10:
          c_assvar(a1, &v65);
          --HIWORD(v65);
LABEL_11:
          OUTLINED_FUNCTION_34_5();
          v51 = OUTLINED_FUNCTION_32_6();
          if (!forto_adv_upto_r(v51, v52, v53, v54, v55, v56))
          {
LABEL_17:
            OUTLINED_FUNCTION_55_2(v69);
            goto LABEL_4;
          }
        }
      }
    }

    v57 = *(a1 + 104);
    if (v57)
    {
      OUTLINED_FUNCTION_33_6(v57);
    }

    else
    {
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_56_2();
    if (!(!v60 & v59))
    {
      switch(v58)
      {
        case 1:
          goto LABEL_10;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_6;
        default:
          goto LABEL_17;
      }
    }
  }

  v8 = 94;
LABEL_4:
  vretproc(a1);
  return v8;
}

uint64_t in_syllable()
{
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_5_18(v2, v3, v4, v5, v6, v7, v8, v9, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_74_2(v10, v11);
  if (!setjmp(v1))
  {
    OUTLINED_FUNCTION_18_14();
    if (!OUTLINED_FUNCTION_64_2(v12, v13, v14, v15, v16))
    {
      v17 = OUTLINED_FUNCTION_10_18();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_50_2(v20, v21);
      v22 = OUTLINED_FUNCTION_1_19();
      get_parm(v22, v23, v24, -6);
      fence_20(v0, 0, &_MergedGlobals_1_1);
      v25 = OUTLINED_FUNCTION_29_8();
      lpta_loadpn(v25, v26);
      v27 = OUTLINED_FUNCTION_27_9();
      rpta_loadpn(v27, v28);
      if (compare_ptas(v0) || testeq(v0))
      {
        v29 = OUTLINED_FUNCTION_80_2();
        lpta_loadpn(v29, v30);
        OUTLINED_FUNCTION_36_4();
        lpta_ctxtl();
        v31 = OUTLINED_FUNCTION_38_4();
        rpta_loadpn(v31, v32);
        if (!compare_ptas(v0))
        {
          testeq(v0);
        }
      }
    }
  }

  vretproc(v0);
  return OUTLINED_FUNCTION_47_2();
}

uint64_t is_spr(uint64_t a1)
{
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_2_19(v3, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v118, v121);
  OUTLINED_FUNCTION_20_12(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v119, v122, v124, v126, v128, v130);
  v19 = setjmp(v2);
  if (!v19 && !OUTLINED_FUNCTION_3_19(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v120, v123, v125, SHIDWORD(v125), v127, SWORD2(v127), SHIWORD(v127), v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v131, v132))
  {
    if ((v27 = OUTLINED_FUNCTION_0_20(), get_parm(v27, v28, v29, -6), v30 = OUTLINED_FUNCTION_30_7(), get_parm(v30, v31, v32, -6), fence_20(v1, 0, &_MergedGlobals_1_1), v33 = OUTLINED_FUNCTION_24_12(), !lpta_loadp_setscan_r(v33, v34, 1)) && !test_string_s() || (v35 = OUTLINED_FUNCTION_21_12(), !lpta_loadp_setscan_r(v35, v36, v37)) && !test_string_s())
    {
      v39 = OUTLINED_FUNCTION_63_2();
      savescptr(v39, v40, v41);
      OUTLINED_FUNCTION_55_2(v117);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_40_2();
}

uint64_t first_root_vow(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = a2;
  v79 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15_16(a1, a2, a3, a4, a5, a6, a7, a8, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  OUTLINED_FUNCTION_25_11();
  bzero(v78, v10);
  v11 = setjmp(v78);
  if (v11 || OUTLINED_FUNCTION_35_4(v11, &v43, v12, v13, v14, v15, v16, v17, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v19 = OUTLINED_FUNCTION_30_7();
  get_parm(v19, v20, v21, -6);
  fence_20(a1, 0, &_MergedGlobals_1_1);
  v22 = OUTLINED_FUNCTION_44_2();
  fence_20(v22, v23, v24);
  v25 = OUTLINED_FUNCTION_54_2();
  starttest(v25, v26);
  *(a1 + 136) = v8;
  OUTLINED_FUNCTION_13_18();
  if (!lpta_tstctxtl())
  {
    v27 = OUTLINED_FUNCTION_42_2();
    setscan_l(v27, v28, v29);
    if (!v30)
    {
LABEL_7:
      while (1)
      {
        v31 = OUTLINED_FUNCTION_48_2();
        bspush_ca_scan(v31, v32);
        v33 = OUTLINED_FUNCTION_42_2();
        if (!testFldeq(v33, v34, 1, 2) && !advance_tok(a1, v35, v36, v37))
        {
          goto LABEL_3;
        }

        while (1)
        {
          v38 = *(a1 + 104);
          v39 = v38 ? OUTLINED_FUNCTION_33_6(v38) : OUTLINED_FUNCTION_51_2();
          if (v39 != 3)
          {
            break;
          }

          if (!advance_tok(a1, v40, v41, v42))
          {
            goto LABEL_7;
          }
        }

        if (v39 == 1)
        {
          break;
        }

        if (v39 != 2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  vretproc(a1);
  return 0;
}

void OUTLINED_FUNCTION_2_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_5_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, a2, &a44, &a40, &a37, &a46);
}

uint64_t OUTLINED_FUNCTION_13_18()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_15_16(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_17_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40)
{
  a39 = 0;
  a40 = 0;
  a38 = 0;
  a35 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_20_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_22_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36)
{
  a35 = 0;
  a36 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_23_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, __int16 a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{

  return ventproc(v44, a2, &a42, &a38, &a35, &a44);
}

void OUTLINED_FUNCTION_50_2(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return vback(v0, 0);
}

void *OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_20(v3, 0, a3);
}

void OUTLINED_FUNCTION_57_2(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

double OUTLINED_FUNCTION_58_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  *&result = savescptr(v32, 2, va).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, __int16 a42, __int16 a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{

  return ventproc(v49, &a9, &a47, &a43, &a40, &a49);
}

void OUTLINED_FUNCTION_73_2(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_74_2(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

void OUTLINED_FUNCTION_75_2(uint64_t a1, size_t a2)
{

  bzero((v2 - 248), a2);
}

_BYTE *OUTLINED_FUNCTION_76_2()
{

  return lpta_mover();
}

uint64_t register_por_phones(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v2654 = *MEMORY[0x277D85DE8];
  v2649 = 0;
  v2647 = 0;
  v2648 = 0;
  v2645 = 0;
  v2646 = 0;
  v2643 = 0;
  v2644 = 0;
  v2641 = 0;
  v2642 = 0;
  bzero(&v2618, 0xB8uLL);
  v7 = v2653;
  bzero(v2653, 0xC0uLL);
  if (!setjmp(v2653) && !ventproc(a1, &v2618, v2652, v2651, v2650, v2653))
  {
    get_parm(a1, &v2649, a2, -4);
    get_parm(a1, &v2648 + 4, a3, -4);
    LODWORD(v2648) = 65532;
    v2647 = 0xFFFC0000FFFCLL;
    v2646 = 0xFFFC0000FFFCLL;
    v2645 = 0xFFFC0000FFFCLL;
    v2644 = 0xFFFC0000FFFCLL;
    v2643 = 0xFFFC0000FFFCLL;
    v2642 = 0xFFFC0000FFFCLL;
    v2641 = 0xFFFC0000FFFCLL;
    *(*(a1 + 192) + 8121) = 0;
    memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
    OUTLINED_FUNCTION_41_3(1);
    v9 = OUTLINED_FUNCTION_37_5();
    move_i(v9, v10, 69);
    OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
    OUTLINED_FUNCTION_30_8(v19, v20, v21, v22, v23, v24, v25, v26, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
    OUTLINED_FUNCTION_29_9(v27, v28, v29, v30, v31, v32, v33, v34, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
    OUTLINED_FUNCTION_28_9(v35, v36, v37, v38, v39, v40, v41, v42, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
    OUTLINED_FUNCTION_27_10(v43, v44, v45, v46, v47, v48, v49, v50, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
    v51 = &v2645;
    move_i(a1, &v2645, 0);
    v52 = OUTLINED_FUNCTION_26_12();
    move_i(v52, v53, 50);
    v54 = OUTLINED_FUNCTION_9_19();
    move_i(v54, v55, 100);
    v56 = OUTLINED_FUNCTION_8_19();
    move_i(v56, v57, 128);
    move_i(a1, &v2643, 75);
    v58 = &v2642 + 4;
    move_i(a1, &v2642 + 4, 130);
    v59 = &v2642;
    move_i(a1, &v2642, 175);
    v60 = &v2641 + 4;
    move_i(a1, &v2641 + 4, 0);
    v61 = &v2641;
    move_i(a1, &v2641, 125);
    registerPhoneme(a1, &v2649, &v2648 + 4, a1 + 3552, &v2648, &v2647 + 4, &v2647, &v2646 + 4, &v2646, &v2645 + 4, &v2645, &v2644 + 4, v2653, v3, &v2643, &v2642 + 4, &v2642, &v2641 + 4, &v2641);
    if (!v62)
    {
LABEL_6:
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_41_3(2);
      v63 = OUTLINED_FUNCTION_38_5();
      move_i(v63, v64, 78);
      OUTLINED_FUNCTION_36_5(v65, v66, v67, v68, v69, v70, v71, v72, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
      OUTLINED_FUNCTION_32_7(v73, v74, v75, v76, v77, v78, v79, v80, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
      OUTLINED_FUNCTION_31_8(v81, v82, v83, v84, v85, v86, v87, v88, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
      move_i(a1, &v2643, 0);
      move_i(a1, &v2643 + 4, 0);
      move_i(a1, &v2644, 0);
      v60 = &v2644 + 4;
      move_i(a1, &v2644 + 4, 50);
      v61 = &v2645;
      move_i(a1, &v2645, 100);
      v3 = &v2645 + 4;
      move_i(a1, &v2645 + 4, 128);
      v7 = &v2646;
      move_i(a1, &v2646, 75);
      move_i(a1, &v2646 + 4, 130);
      v51 = &v2647;
      move_i(a1, &v2647, 130);
      v59 = (&v2647 + 4);
      move_i(a1, &v2647 + 4, 0);
      v58 = &v2648;
      move_i(a1, &v2648, 0);
      OUTLINED_FUNCTION_4_19(&v2649, &v2648 + 4, a1 + 3552, &v2607, v2607, &v2643 + 4, &v2644, &v2644 + 4, &v2645, &v2645 + 4, &v2646, &v2646 + 4, &v2647, &v2647 + 4, &v2648, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643);
      if (!v89)
      {
LABEL_7:
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_41_3(3);
        v90 = OUTLINED_FUNCTION_37_5();
        move_i(v90, v91, 82);
        OUTLINED_FUNCTION_35_5(v92, v93, v94, v95, v96, v97, v98, v99, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
        OUTLINED_FUNCTION_30_8(v100, v101, v102, v103, v104, v105, v106, v107, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
        OUTLINED_FUNCTION_29_9(v108, v109, v110, v111, v112, v113, v114, v115, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
        OUTLINED_FUNCTION_28_9(v116, v117, v118, v119, v120, v121, v122, v123, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
        OUTLINED_FUNCTION_27_10(v124, v125, v126, v127, v128, v129, v130, v131, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
        OUTLINED_FUNCTION_39_4(v132, v133, v134, v135, v136, v137, v138, v139, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
        v140 = OUTLINED_FUNCTION_7_19();
        move_i(v140, v141, 50);
        v142 = OUTLINED_FUNCTION_9_19();
        move_i(v142, v143, 100);
        v144 = OUTLINED_FUNCTION_8_19();
        move_i(v144, v145, 128);
        v146 = OUTLINED_FUNCTION_12_19();
        move_i(v146, v147, 75);
        v148 = OUTLINED_FUNCTION_11_19();
        move_i(v148, v149, 130);
        v150 = OUTLINED_FUNCTION_10_19();
        move_i(v150, v151, 130);
        v152 = OUTLINED_FUNCTION_26_12();
        move_i(v152, v153, 0);
        v154 = OUTLINED_FUNCTION_18_15();
        move_i(v154, v155, 0);
        v2616 = (&v2641 + 4);
        v2617 = v58;
        OUTLINED_FUNCTION_1_20(&v2607);
        v156[2] = &v2645;
        v156[1] = &v2645 + 4;
        OUTLINED_FUNCTION_5_19(v157, v158, v159, v156, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
        if (!v160)
        {
LABEL_8:
          OUTLINED_FUNCTION_6_19();
          OUTLINED_FUNCTION_41_3(4);
          v161 = OUTLINED_FUNCTION_38_5();
          move_i(v161, v162, 83);
          OUTLINED_FUNCTION_36_5(v163, v164, v165, v166, v167, v168, v169, v170, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
          OUTLINED_FUNCTION_32_7(v171, v172, v173, v174, v175, v176, v177, v178, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
          OUTLINED_FUNCTION_31_8(v179, v180, v181, v182, v183, v184, v185, v186, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
          OUTLINED_FUNCTION_34_6(v187, v188, v189, v190, v191, v192, v193, v194, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
          OUTLINED_FUNCTION_33_7(v195, v196, v197, v198, v199, v200, v201, v202, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
          OUTLINED_FUNCTION_23_13(v203, v204, v205, v206, v207, v208, v209, v210, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
          v211 = OUTLINED_FUNCTION_7_19();
          move_i(v211, v212, 75);
          v213 = OUTLINED_FUNCTION_17_16();
          move_i(v213, v214, 125);
          v215 = OUTLINED_FUNCTION_13_19();
          move_i(v215, v216, 128);
          v217 = OUTLINED_FUNCTION_16_17();
          move_i(v217, v218, 100);
          v219 = OUTLINED_FUNCTION_15_17();
          move_i(v219, v220, 130);
          v221 = OUTLINED_FUNCTION_14_17();
          move_i(v221, v222, 130);
          OUTLINED_FUNCTION_22_13(v223, v224, v225, v226, v227, v228, v229, v230, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
          v231 = OUTLINED_FUNCTION_21_13();
          move_i(v231, v232, 200);
          OUTLINED_FUNCTION_0_21();
          OUTLINED_FUNCTION_3_20(v233, v234, v235, v236, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643));
          if (!v237)
          {
LABEL_9:
            OUTLINED_FUNCTION_6_19();
            OUTLINED_FUNCTION_41_3(5);
            v238 = OUTLINED_FUNCTION_37_5();
            move_i(v238, v239, 87);
            OUTLINED_FUNCTION_35_5(v240, v241, v242, v243, v244, v245, v246, v247, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
            OUTLINED_FUNCTION_30_8(v248, v249, v250, v251, v252, v253, v254, v255, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
            OUTLINED_FUNCTION_29_9(v256, v257, v258, v259, v260, v261, v262, v263, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
            OUTLINED_FUNCTION_28_9(v264, v265, v266, v267, v268, v269, v270, v271, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
            OUTLINED_FUNCTION_27_10(v272, v273, v274, v275, v276, v277, v278, v279, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
            OUTLINED_FUNCTION_25_12(v280, v281, v282, v283, v284, v285, v286, v287, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
            v288 = OUTLINED_FUNCTION_7_19();
            move_i(v288, v289, 25);
            v290 = OUTLINED_FUNCTION_9_19();
            move_i(v290, v291, 0);
            v292 = OUTLINED_FUNCTION_8_19();
            move_i(v292, v293, 130);
            v294 = OUTLINED_FUNCTION_12_19();
            move_i(v294, v295, 90);
            v296 = OUTLINED_FUNCTION_11_19();
            move_i(v296, v297, 60);
            v298 = OUTLINED_FUNCTION_10_19();
            move_i(v298, v299, 60);
            OUTLINED_FUNCTION_19_14(v300, v301, v302, v303, v304, v305, v306, v307, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
            v308 = OUTLINED_FUNCTION_20_13();
            move_i(v308, v309, 255);
            OUTLINED_FUNCTION_0_21();
            v310[1] = &v2645 + 4;
            v310[2] = v58;
            OUTLINED_FUNCTION_5_19(v311, v312, v313, v310, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
            if (!v314)
            {
LABEL_10:
              OUTLINED_FUNCTION_6_19();
              OUTLINED_FUNCTION_41_3(6);
              v315 = OUTLINED_FUNCTION_38_5();
              move_i(v315, v316, 89);
              OUTLINED_FUNCTION_36_5(v317, v318, v319, v320, v321, v322, v323, v324, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
              OUTLINED_FUNCTION_32_7(v325, v326, v327, v328, v329, v330, v331, v332, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
              OUTLINED_FUNCTION_31_8(v333, v334, v335, v336, v337, v338, v339, v340, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
              OUTLINED_FUNCTION_34_6(v341, v342, v343, v344, v345, v346, v347, v348, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
              OUTLINED_FUNCTION_33_7(v349, v350, v351, v352, v353, v354, v355, v356, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
              OUTLINED_FUNCTION_23_13(v357, v358, v359, v360, v361, v362, v363, v364, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
              v365 = OUTLINED_FUNCTION_7_19();
              move_i(v365, v366, 25);
              v367 = OUTLINED_FUNCTION_17_16();
              move_i(v367, v368, 150);
              v369 = OUTLINED_FUNCTION_13_19();
              move_i(v369, v370, 128);
              v371 = OUTLINED_FUNCTION_16_17();
              move_i(v371, v372, 50);
              v373 = OUTLINED_FUNCTION_15_17();
              move_i(v373, v374, 130);
              v375 = OUTLINED_FUNCTION_14_17();
              move_i(v375, v376, 130);
              OUTLINED_FUNCTION_22_13(v377, v378, v379, v380, v381, v382, v383, v384, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
              v385 = OUTLINED_FUNCTION_21_13();
              move_i(v385, v386, 255);
              OUTLINED_FUNCTION_0_21();
              OUTLINED_FUNCTION_3_20(v387, v388, v389, v390, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643));
              if (!v391)
              {
LABEL_11:
                OUTLINED_FUNCTION_6_19();
                OUTLINED_FUNCTION_41_3(7);
                v392 = OUTLINED_FUNCTION_37_5();
                move_i(v392, v393, 90);
                OUTLINED_FUNCTION_35_5(v394, v395, v396, v397, v398, v399, v400, v401, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                OUTLINED_FUNCTION_30_8(v402, v403, v404, v405, v406, v407, v408, v409, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                OUTLINED_FUNCTION_29_9(v410, v411, v412, v413, v414, v415, v416, v417, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                OUTLINED_FUNCTION_28_9(v418, v419, v420, v421, v422, v423, v424, v425, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                OUTLINED_FUNCTION_27_10(v426, v427, v428, v429, v430, v431, v432, v433, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                OUTLINED_FUNCTION_25_12(v434, v435, v436, v437, v438, v439, v440, v441, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                v442 = OUTLINED_FUNCTION_7_19();
                move_i(v442, v443, 75);
                v444 = OUTLINED_FUNCTION_9_19();
                move_i(v444, v445, 125);
                v446 = OUTLINED_FUNCTION_8_19();
                move_i(v446, v447, 128);
                v448 = OUTLINED_FUNCTION_12_19();
                move_i(v448, v449, 100);
                v450 = OUTLINED_FUNCTION_11_19();
                move_i(v450, v451, 130);
                v452 = OUTLINED_FUNCTION_10_19();
                move_i(v452, v453, 130);
                OUTLINED_FUNCTION_19_14(v454, v455, v456, v457, v458, v459, v460, v461, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                v462 = OUTLINED_FUNCTION_20_13();
                move_i(v462, v463, 200);
                OUTLINED_FUNCTION_0_21();
                v464[1] = &v2645 + 4;
                v464[2] = v58;
                OUTLINED_FUNCTION_5_19(v465, v466, v467, v464, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                if (!v468)
                {
LABEL_12:
                  OUTLINED_FUNCTION_6_19();
                  OUTLINED_FUNCTION_41_3(8);
                  v469 = OUTLINED_FUNCTION_38_5();
                  move_i(v469, v470, 97);
                  OUTLINED_FUNCTION_36_5(v471, v472, v473, v474, v475, v476, v477, v478, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                  OUTLINED_FUNCTION_32_7(v479, v480, v481, v482, v483, v484, v485, v486, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                  OUTLINED_FUNCTION_31_8(v487, v488, v489, v490, v491, v492, v493, v494, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                  OUTLINED_FUNCTION_34_6(v495, v496, v497, v498, v499, v500, v501, v502, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                  OUTLINED_FUNCTION_33_7(v503, v504, v505, v506, v507, v508, v509, v510, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                  OUTLINED_FUNCTION_23_13(v511, v512, v513, v514, v515, v516, v517, v518, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                  v519 = OUTLINED_FUNCTION_7_19();
                  move_i(v519, v520, 100);
                  v521 = OUTLINED_FUNCTION_26_12();
                  move_i(v521, v522, 125);
                  OUTLINED_FUNCTION_48_3(v523, v524, v525, v526, v527, v528, v529, v530, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                  OUTLINED_FUNCTION_47_3(v531, v532, v533, v534, v535, v536, v537, v538, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                  OUTLINED_FUNCTION_46_3(v539, v540, v541, v542, v543, v544, v545, v546, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                  OUTLINED_FUNCTION_45_3(v547, v548, v549, v550, v551, v552, v553, v554, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                  OUTLINED_FUNCTION_44_3(v555, v556, v557, v558, v559, v560, v561, v562, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                  OUTLINED_FUNCTION_43_3(v563, v564, v565, v566, v567, v568, v569, v570, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                  OUTLINED_FUNCTION_2_20(&v2607, v2607, v2608, v2609, v59, &v2645, v7, v3, v61, v60, &v2643, v51, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), v2644, v2645, v2646, v2647, v2648, SWORD2(v2648), SHIWORD(v2648), v2649);
                  if (!v571)
                  {
LABEL_13:
                    OUTLINED_FUNCTION_6_19();
                    OUTLINED_FUNCTION_41_3(9);
                    v572 = OUTLINED_FUNCTION_37_5();
                    move_i(v572, v573, 98);
                    OUTLINED_FUNCTION_35_5(v574, v575, v576, v577, v578, v579, v580, v581, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                    OUTLINED_FUNCTION_30_8(v582, v583, v584, v585, v586, v587, v588, v589, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                    OUTLINED_FUNCTION_29_9(v590, v591, v592, v593, v594, v595, v596, v597, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                    OUTLINED_FUNCTION_28_9(v598, v599, v600, v601, v602, v603, v604, v605, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                    OUTLINED_FUNCTION_27_10(v606, v607, v608, v609, v610, v611, v612, v613, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                    OUTLINED_FUNCTION_25_12(v614, v615, v616, v617, v618, v619, v620, v621, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                    v622 = OUTLINED_FUNCTION_7_19();
                    move_i(v622, v623, 0);
                    v624 = OUTLINED_FUNCTION_9_19();
                    move_i(v624, v625, 100);
                    v626 = OUTLINED_FUNCTION_8_19();
                    move_i(v626, v627, 128);
                    v628 = OUTLINED_FUNCTION_12_19();
                    move_i(v628, v629, 0);
                    v630 = OUTLINED_FUNCTION_11_19();
                    move_i(v630, v631, 0);
                    v632 = OUTLINED_FUNCTION_10_19();
                    move_i(v632, v633, 0);
                    OUTLINED_FUNCTION_19_14(v634, v635, v636, v637, v638, v639, v640, v641, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                    v642 = OUTLINED_FUNCTION_20_13();
                    move_i(v642, v643, 200);
                    OUTLINED_FUNCTION_0_21();
                    v644[1] = &v2645 + 4;
                    v644[2] = v58;
                    OUTLINED_FUNCTION_5_19(v645, v646, v647, v644, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                    if (!v648)
                    {
LABEL_14:
                      OUTLINED_FUNCTION_6_19();
                      OUTLINED_FUNCTION_41_3(10);
                      v649 = OUTLINED_FUNCTION_38_5();
                      move_i(v649, v650, 99);
                      OUTLINED_FUNCTION_36_5(v651, v652, v653, v654, v655, v656, v657, v658, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                      OUTLINED_FUNCTION_32_7(v659, v660, v661, v662, v663, v664, v665, v666, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                      OUTLINED_FUNCTION_31_8(v667, v668, v669, v670, v671, v672, v673, v674, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                      OUTLINED_FUNCTION_34_6(v675, v676, v677, v678, v679, v680, v681, v682, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                      OUTLINED_FUNCTION_33_7(v683, v684, v685, v686, v687, v688, v689, v690, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                      OUTLINED_FUNCTION_23_13(v691, v692, v693, v694, v695, v696, v697, v698, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                      v699 = OUTLINED_FUNCTION_7_19();
                      move_i(v699, v700, 25);
                      v701 = OUTLINED_FUNCTION_17_16();
                      move_i(v701, v702, 0);
                      v703 = OUTLINED_FUNCTION_13_19();
                      move_i(v703, v704, 130);
                      v705 = OUTLINED_FUNCTION_16_17();
                      move_i(v705, v706, 150);
                      v707 = OUTLINED_FUNCTION_15_17();
                      move_i(v707, v708, 60);
                      v709 = OUTLINED_FUNCTION_14_17();
                      move_i(v709, v710, 60);
                      OUTLINED_FUNCTION_22_13(v711, v712, v713, v714, v715, v716, v717, v718, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                      v719 = OUTLINED_FUNCTION_21_13();
                      move_i(v719, v720, 255);
                      OUTLINED_FUNCTION_0_21();
                      OUTLINED_FUNCTION_3_20(v721, v722, v723, v724, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643));
                      if (!v725)
                      {
LABEL_15:
                        OUTLINED_FUNCTION_6_19();
                        OUTLINED_FUNCTION_41_3(11);
                        v726 = OUTLINED_FUNCTION_37_5();
                        move_i(v726, v727, 100);
                        OUTLINED_FUNCTION_35_5(v728, v729, v730, v731, v732, v733, v734, v735, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                        OUTLINED_FUNCTION_30_8(v736, v737, v738, v739, v740, v741, v742, v743, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                        OUTLINED_FUNCTION_29_9(v744, v745, v746, v747, v748, v749, v750, v751, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                        OUTLINED_FUNCTION_28_9(v752, v753, v754, v755, v756, v757, v758, v759, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                        OUTLINED_FUNCTION_27_10(v760, v761, v762, v763, v764, v765, v766, v767, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                        OUTLINED_FUNCTION_39_4(v768, v769, v770, v771, v772, v773, v774, v775, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                        v776 = OUTLINED_FUNCTION_7_19();
                        move_i(v776, v777, 75);
                        v778 = OUTLINED_FUNCTION_9_19();
                        move_i(v778, v779, 150);
                        v780 = OUTLINED_FUNCTION_8_19();
                        move_i(v780, v781, 128);
                        v782 = OUTLINED_FUNCTION_12_19();
                        move_i(v782, v783, 50);
                        v784 = OUTLINED_FUNCTION_11_19();
                        move_i(v784, v785, 130);
                        v786 = OUTLINED_FUNCTION_10_19();
                        move_i(v786, v787, 130);
                        v788 = OUTLINED_FUNCTION_26_12();
                        move_i(v788, v789, 255);
                        v790 = OUTLINED_FUNCTION_18_15();
                        move_i(v790, v791, 0);
                        v2616 = (&v2641 + 4);
                        v2617 = v58;
                        OUTLINED_FUNCTION_1_20(&v2607);
                        v792[2] = &v2645;
                        v792[1] = &v2645 + 4;
                        OUTLINED_FUNCTION_5_19(v793, v794, v795, v792, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                        if (!v796)
                        {
LABEL_16:
                          OUTLINED_FUNCTION_6_19();
                          OUTLINED_FUNCTION_41_3(12);
                          v797 = OUTLINED_FUNCTION_38_5();
                          move_i(v797, v798, 101);
                          OUTLINED_FUNCTION_36_5(v799, v800, v801, v802, v803, v804, v805, v806, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                          OUTLINED_FUNCTION_32_7(v807, v808, v809, v810, v811, v812, v813, v814, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                          OUTLINED_FUNCTION_31_8(v815, v816, v817, v818, v819, v820, v821, v822, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                          OUTLINED_FUNCTION_34_6(v823, v824, v825, v826, v827, v828, v829, v830, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                          OUTLINED_FUNCTION_33_7(v831, v832, v833, v834, v835, v836, v837, v838, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                          OUTLINED_FUNCTION_23_13(v839, v840, v841, v842, v843, v844, v845, v846, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                          v847 = OUTLINED_FUNCTION_7_19();
                          move_i(v847, v848, 50);
                          v849 = OUTLINED_FUNCTION_17_16();
                          move_i(v849, v850, 100);
                          v851 = OUTLINED_FUNCTION_13_19();
                          move_i(v851, v852, 128);
                          v853 = OUTLINED_FUNCTION_16_17();
                          move_i(v853, v854, 75);
                          v855 = OUTLINED_FUNCTION_15_17();
                          move_i(v855, v856, 130);
                          v857 = OUTLINED_FUNCTION_14_17();
                          move_i(v857, v858, 175);
                          OUTLINED_FUNCTION_22_13(v859, v860, v861, v862, v863, v864, v865, v866, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                          v867 = OUTLINED_FUNCTION_21_13();
                          move_i(v867, v868, 255);
                          OUTLINED_FUNCTION_0_21();
                          OUTLINED_FUNCTION_3_20(v869, v870, v871, v872, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643));
                          if (!v873)
                          {
LABEL_17:
                            OUTLINED_FUNCTION_6_19();
                            OUTLINED_FUNCTION_41_3(13);
                            v874 = OUTLINED_FUNCTION_37_5();
                            move_i(v874, v875, 102);
                            OUTLINED_FUNCTION_35_5(v876, v877, v878, v879, v880, v881, v882, v883, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                            OUTLINED_FUNCTION_30_8(v884, v885, v886, v887, v888, v889, v890, v891, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                            OUTLINED_FUNCTION_29_9(v892, v893, v894, v895, v896, v897, v898, v899, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                            OUTLINED_FUNCTION_28_9(v900, v901, v902, v903, v904, v905, v906, v907, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                            OUTLINED_FUNCTION_27_10(v908, v909, v910, v911, v912, v913, v914, v915, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                            OUTLINED_FUNCTION_25_12(v916, v917, v918, v919, v920, v921, v922, v923, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                            v924 = OUTLINED_FUNCTION_7_19();
                            move_i(v924, v925, 10);
                            v926 = OUTLINED_FUNCTION_9_19();
                            move_i(v926, v927, 100);
                            v928 = OUTLINED_FUNCTION_8_19();
                            move_i(v928, v929, 128);
                            v930 = OUTLINED_FUNCTION_12_19();
                            move_i(v930, v931, 25);
                            v932 = OUTLINED_FUNCTION_11_19();
                            move_i(v932, v933, 130);
                            v934 = OUTLINED_FUNCTION_10_19();
                            move_i(v934, v935, 0);
                            OUTLINED_FUNCTION_19_14(v936, v937, v938, v939, v940, v941, v942, v943, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                            v944 = OUTLINED_FUNCTION_20_13();
                            move_i(v944, v945, 200);
                            OUTLINED_FUNCTION_0_21();
                            v946[1] = &v2645 + 4;
                            v946[2] = v58;
                            OUTLINED_FUNCTION_5_19(v947, v948, v949, v946, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                            if (!v950)
                            {
LABEL_18:
                              OUTLINED_FUNCTION_6_19();
                              OUTLINED_FUNCTION_41_3(14);
                              v951 = OUTLINED_FUNCTION_38_5();
                              move_i(v951, v952, 103);
                              OUTLINED_FUNCTION_36_5(v953, v954, v955, v956, v957, v958, v959, v960, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                              OUTLINED_FUNCTION_32_7(v961, v962, v963, v964, v965, v966, v967, v968, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                              OUTLINED_FUNCTION_31_8(v969, v970, v971, v972, v973, v974, v975, v976, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                              OUTLINED_FUNCTION_34_6(v977, v978, v979, v980, v981, v982, v983, v984, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                              OUTLINED_FUNCTION_33_7(v985, v986, v987, v988, v989, v990, v991, v992, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                              OUTLINED_FUNCTION_40_3(v993, &v2644);
                              v994 = OUTLINED_FUNCTION_7_19();
                              move_i(v994, v995, 50);
                              v996 = OUTLINED_FUNCTION_17_16();
                              move_i(v996, v997, 100);
                              v998 = OUTLINED_FUNCTION_13_19();
                              move_i(v998, v999, 128);
                              v1000 = OUTLINED_FUNCTION_16_17();
                              move_i(v1000, v1001, 75);
                              v1002 = OUTLINED_FUNCTION_15_17();
                              move_i(v1002, v1003, 130);
                              v1004 = OUTLINED_FUNCTION_14_17();
                              move_i(v1004, v1005, 130);
                              v1006 = OUTLINED_FUNCTION_26_12();
                              move_i(v1006, v1007, 0);
                              v1008 = OUTLINED_FUNCTION_24_13();
                              move_i(v1008, v1009, 0);
                              v2616 = (&v2647 + 4);
                              v2617 = v58;
                              OUTLINED_FUNCTION_1_20(&v2607);
                              v1010[2] = &v2644;
                              v1010[1] = &v2643 + 4;
                              OUTLINED_FUNCTION_4_19(v1011, v1012, v1013, v1010, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643);
                              if (!v1014)
                              {
LABEL_19:
                                OUTLINED_FUNCTION_6_19();
                                OUTLINED_FUNCTION_41_3(15);
                                v1015 = OUTLINED_FUNCTION_37_5();
                                move_i(v1015, v1016, 105);
                                OUTLINED_FUNCTION_35_5(v1017, v1018, v1019, v1020, v1021, v1022, v1023, v1024, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                OUTLINED_FUNCTION_30_8(v1025, v1026, v1027, v1028, v1029, v1030, v1031, v1032, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                OUTLINED_FUNCTION_29_9(v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                OUTLINED_FUNCTION_28_9(v1041, v1042, v1043, v1044, v1045, v1046, v1047, v1048, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                OUTLINED_FUNCTION_27_10(v1049, v1050, v1051, v1052, v1053, v1054, v1055, v1056, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                OUTLINED_FUNCTION_25_12(v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                v1065 = OUTLINED_FUNCTION_7_19();
                                move_i(v1065, v1066, 25);
                                v1067 = OUTLINED_FUNCTION_9_19();
                                move_i(v1067, v1068, 150);
                                v1069 = OUTLINED_FUNCTION_8_19();
                                move_i(v1069, v1070, 128);
                                v1071 = OUTLINED_FUNCTION_12_19();
                                move_i(v1071, v1072, 50);
                                v1073 = OUTLINED_FUNCTION_11_19();
                                move_i(v1073, v1074, 130);
                                v1075 = OUTLINED_FUNCTION_10_19();
                                move_i(v1075, v1076, 130);
                                OUTLINED_FUNCTION_19_14(v1077, v1078, v1079, v1080, v1081, v1082, v1083, v1084, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                v1085 = OUTLINED_FUNCTION_20_13();
                                move_i(v1085, v1086, 255);
                                OUTLINED_FUNCTION_0_21();
                                v1087[1] = &v2645 + 4;
                                v1087[2] = v58;
                                OUTLINED_FUNCTION_5_19(v1088, v1089, v1090, v1087, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                if (!v1091)
                                {
LABEL_20:
                                  OUTLINED_FUNCTION_6_19();
                                  OUTLINED_FUNCTION_41_3(16);
                                  v1092 = OUTLINED_FUNCTION_38_5();
                                  move_i(v1092, v1093, 107);
                                  OUTLINED_FUNCTION_36_5(v1094, v1095, v1096, v1097, v1098, v1099, v1100, v1101, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                  OUTLINED_FUNCTION_32_7(v1102, v1103, v1104, v1105, v1106, v1107, v1108, v1109, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                  OUTLINED_FUNCTION_31_8(v1110, v1111, v1112, v1113, v1114, v1115, v1116, v1117, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                  OUTLINED_FUNCTION_34_6(v1118, v1119, v1120, v1121, v1122, v1123, v1124, v1125, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                  OUTLINED_FUNCTION_33_7(v1126, v1127, v1128, v1129, v1130, v1131, v1132, v1133, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                  OUTLINED_FUNCTION_40_3(v1134, &v2644);
                                  v1135 = OUTLINED_FUNCTION_7_19();
                                  move_i(v1135, v1136, 50);
                                  v1137 = OUTLINED_FUNCTION_17_16();
                                  move_i(v1137, v1138, 100);
                                  v1139 = OUTLINED_FUNCTION_13_19();
                                  move_i(v1139, v1140, 128);
                                  v1141 = OUTLINED_FUNCTION_16_17();
                                  move_i(v1141, v1142, 75);
                                  v1143 = OUTLINED_FUNCTION_15_17();
                                  move_i(v1143, v1144, 130);
                                  v1145 = OUTLINED_FUNCTION_14_17();
                                  move_i(v1145, v1146, 130);
                                  v1147 = OUTLINED_FUNCTION_26_12();
                                  move_i(v1147, v1148, 0);
                                  v1149 = OUTLINED_FUNCTION_24_13();
                                  move_i(v1149, v1150, 0);
                                  v2616 = (&v2647 + 4);
                                  v2617 = v58;
                                  OUTLINED_FUNCTION_1_20(&v2607);
                                  v1151[2] = &v2644;
                                  v1151[1] = &v2643 + 4;
                                  OUTLINED_FUNCTION_4_19(v1152, v1153, v1154, v1151, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643);
                                  if (!v1155)
                                  {
LABEL_21:
                                    OUTLINED_FUNCTION_6_19();
                                    OUTLINED_FUNCTION_41_3(17);
                                    v1156 = OUTLINED_FUNCTION_37_5();
                                    move_i(v1156, v1157, 108);
                                    OUTLINED_FUNCTION_35_5(v1158, v1159, v1160, v1161, v1162, v1163, v1164, v1165, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                    OUTLINED_FUNCTION_30_8(v1166, v1167, v1168, v1169, v1170, v1171, v1172, v1173, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                    OUTLINED_FUNCTION_29_9(v1174, v1175, v1176, v1177, v1178, v1179, v1180, v1181, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                    OUTLINED_FUNCTION_28_9(v1182, v1183, v1184, v1185, v1186, v1187, v1188, v1189, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                    OUTLINED_FUNCTION_27_10(v1190, v1191, v1192, v1193, v1194, v1195, v1196, v1197, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                    OUTLINED_FUNCTION_39_4(v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                    v1206 = OUTLINED_FUNCTION_7_19();
                                    move_i(v1206, v1207, 75);
                                    v1208 = OUTLINED_FUNCTION_9_19();
                                    move_i(v1208, v1209, 150);
                                    v1210 = OUTLINED_FUNCTION_8_19();
                                    move_i(v1210, v1211, 128);
                                    v1212 = OUTLINED_FUNCTION_12_19();
                                    move_i(v1212, v1213, 50);
                                    v1214 = OUTLINED_FUNCTION_11_19();
                                    move_i(v1214, v1215, 130);
                                    v1216 = OUTLINED_FUNCTION_10_19();
                                    move_i(v1216, v1217, 130);
                                    v1218 = OUTLINED_FUNCTION_26_12();
                                    move_i(v1218, v1219, 255);
                                    v1220 = OUTLINED_FUNCTION_18_15();
                                    move_i(v1220, v1221, 0);
                                    v2616 = (&v2641 + 4);
                                    v2617 = v58;
                                    OUTLINED_FUNCTION_1_20(&v2607);
                                    v1222[2] = &v2645;
                                    v1222[1] = &v2645 + 4;
                                    OUTLINED_FUNCTION_5_19(v1223, v1224, v1225, v1222, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                    if (!v1226)
                                    {
LABEL_22:
                                      OUTLINED_FUNCTION_6_19();
                                      OUTLINED_FUNCTION_41_3(18);
                                      v1227 = OUTLINED_FUNCTION_38_5();
                                      move_i(v1227, v1228, 109);
                                      OUTLINED_FUNCTION_36_5(v1229, v1230, v1231, v1232, v1233, v1234, v1235, v1236, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                      OUTLINED_FUNCTION_32_7(v1237, v1238, v1239, v1240, v1241, v1242, v1243, v1244, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                      OUTLINED_FUNCTION_31_8(v1245, v1246, v1247, v1248, v1249, v1250, v1251, v1252, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                      OUTLINED_FUNCTION_34_6(v1253, v1254, v1255, v1256, v1257, v1258, v1259, v1260, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                      OUTLINED_FUNCTION_33_7(v1261, v1262, v1263, v1264, v1265, v1266, v1267, v1268, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                      OUTLINED_FUNCTION_23_13(v1269, v1270, v1271, v1272, v1273, v1274, v1275, v1276, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                      v1277 = OUTLINED_FUNCTION_7_19();
                                      move_i(v1277, v1278, 0);
                                      v1279 = OUTLINED_FUNCTION_17_16();
                                      move_i(v1279, v1280, 100);
                                      v1281 = OUTLINED_FUNCTION_13_19();
                                      move_i(v1281, v1282, 128);
                                      v1283 = OUTLINED_FUNCTION_16_17();
                                      move_i(v1283, v1284, 0);
                                      v1285 = OUTLINED_FUNCTION_15_17();
                                      move_i(v1285, v1286, 0);
                                      v1287 = OUTLINED_FUNCTION_14_17();
                                      move_i(v1287, v1288, 0);
                                      OUTLINED_FUNCTION_22_13(v1289, v1290, v1291, v1292, v1293, v1294, v1295, v1296, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                      v1297 = OUTLINED_FUNCTION_21_13();
                                      move_i(v1297, v1298, 200);
                                      OUTLINED_FUNCTION_0_21();
                                      OUTLINED_FUNCTION_3_20(v1299, v1300, v1301, v1302, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643));
                                      if (!v1303)
                                      {
LABEL_23:
                                        OUTLINED_FUNCTION_6_19();
                                        OUTLINED_FUNCTION_41_3(19);
                                        v1304 = OUTLINED_FUNCTION_37_5();
                                        move_i(v1304, v1305, 110);
                                        OUTLINED_FUNCTION_35_5(v1306, v1307, v1308, v1309, v1310, v1311, v1312, v1313, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                        OUTLINED_FUNCTION_30_8(v1314, v1315, v1316, v1317, v1318, v1319, v1320, v1321, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                        OUTLINED_FUNCTION_29_9(v1322, v1323, v1324, v1325, v1326, v1327, v1328, v1329, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                        OUTLINED_FUNCTION_28_9(v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                        OUTLINED_FUNCTION_27_10(v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                        OUTLINED_FUNCTION_39_4(v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                        v1354 = OUTLINED_FUNCTION_7_19();
                                        move_i(v1354, v1355, 75);
                                        v1356 = OUTLINED_FUNCTION_9_19();
                                        move_i(v1356, v1357, 150);
                                        v1358 = OUTLINED_FUNCTION_8_19();
                                        move_i(v1358, v1359, 128);
                                        v1360 = OUTLINED_FUNCTION_12_19();
                                        move_i(v1360, v1361, 50);
                                        v1362 = OUTLINED_FUNCTION_11_19();
                                        move_i(v1362, v1363, 130);
                                        v1364 = OUTLINED_FUNCTION_10_19();
                                        move_i(v1364, v1365, 130);
                                        v1366 = OUTLINED_FUNCTION_26_12();
                                        move_i(v1366, v1367, 255);
                                        v1368 = OUTLINED_FUNCTION_18_15();
                                        move_i(v1368, v1369, 0);
                                        v2616 = (&v2641 + 4);
                                        v2617 = v58;
                                        OUTLINED_FUNCTION_1_20(&v2607);
                                        v1370[2] = &v2645;
                                        v1370[1] = &v2645 + 4;
                                        OUTLINED_FUNCTION_5_19(v1371, v1372, v1373, v1370, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                        if (!v1374)
                                        {
LABEL_24:
                                          OUTLINED_FUNCTION_6_19();
                                          OUTLINED_FUNCTION_41_3(20);
                                          v1375 = OUTLINED_FUNCTION_38_5();
                                          move_i(v1375, v1376, 111);
                                          OUTLINED_FUNCTION_36_5(v1377, v1378, v1379, v1380, v1381, v1382, v1383, v1384, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                          OUTLINED_FUNCTION_32_7(v1385, v1386, v1387, v1388, v1389, v1390, v1391, v1392, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                          OUTLINED_FUNCTION_31_8(v1393, v1394, v1395, v1396, v1397, v1398, v1399, v1400, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                          OUTLINED_FUNCTION_34_6(v1401, v1402, v1403, v1404, v1405, v1406, v1407, v1408, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                          OUTLINED_FUNCTION_33_7(v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                          OUTLINED_FUNCTION_23_13(v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                          v1425 = OUTLINED_FUNCTION_7_19();
                                          move_i(v1425, v1426, 25);
                                          v1427 = OUTLINED_FUNCTION_17_16();
                                          move_i(v1427, v1428, 0);
                                          v1429 = OUTLINED_FUNCTION_13_19();
                                          move_i(v1429, v1430, 130);
                                          v1431 = OUTLINED_FUNCTION_16_17();
                                          move_i(v1431, v1432, 130);
                                          v1433 = OUTLINED_FUNCTION_15_17();
                                          move_i(v1433, v1434, 60);
                                          v1435 = OUTLINED_FUNCTION_14_17();
                                          move_i(v1435, v1436, 60);
                                          OUTLINED_FUNCTION_22_13(v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                          v1445 = OUTLINED_FUNCTION_21_13();
                                          move_i(v1445, v1446, 255);
                                          OUTLINED_FUNCTION_0_21();
                                          OUTLINED_FUNCTION_3_20(v1447, v1448, v1449, v1450, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643));
                                          if (!v1451)
                                          {
LABEL_25:
                                            OUTLINED_FUNCTION_6_19();
                                            OUTLINED_FUNCTION_41_3(21);
                                            v1452 = OUTLINED_FUNCTION_37_5();
                                            move_i(v1452, v1453, 112);
                                            OUTLINED_FUNCTION_35_5(v1454, v1455, v1456, v1457, v1458, v1459, v1460, v1461, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                            OUTLINED_FUNCTION_30_8(v1462, v1463, v1464, v1465, v1466, v1467, v1468, v1469, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                            OUTLINED_FUNCTION_29_9(v1470, v1471, v1472, v1473, v1474, v1475, v1476, v1477, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                            OUTLINED_FUNCTION_28_9(v1478, v1479, v1480, v1481, v1482, v1483, v1484, v1485, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                            OUTLINED_FUNCTION_27_10(v1486, v1487, v1488, v1489, v1490, v1491, v1492, v1493, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                            OUTLINED_FUNCTION_25_12(v1494, v1495, v1496, v1497, v1498, v1499, v1500, v1501, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                            v1502 = OUTLINED_FUNCTION_7_19();
                                            move_i(v1502, v1503, 0);
                                            v1504 = OUTLINED_FUNCTION_9_19();
                                            move_i(v1504, v1505, 100);
                                            v1506 = OUTLINED_FUNCTION_8_19();
                                            move_i(v1506, v1507, 128);
                                            v1508 = OUTLINED_FUNCTION_12_19();
                                            move_i(v1508, v1509, 0);
                                            v1510 = OUTLINED_FUNCTION_11_19();
                                            move_i(v1510, v1511, 0);
                                            v1512 = OUTLINED_FUNCTION_10_19();
                                            move_i(v1512, v1513, 0);
                                            OUTLINED_FUNCTION_19_14(v1514, v1515, v1516, v1517, v1518, v1519, v1520, v1521, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                            v1522 = OUTLINED_FUNCTION_20_13();
                                            move_i(v1522, v1523, 200);
                                            OUTLINED_FUNCTION_0_21();
                                            v1524[1] = &v2645 + 4;
                                            v1524[2] = v58;
                                            OUTLINED_FUNCTION_5_19(v1525, v1526, v1527, v1524, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                            if (!v1528)
                                            {
LABEL_26:
                                              OUTLINED_FUNCTION_6_19();
                                              OUTLINED_FUNCTION_41_3(22);
                                              v1529 = OUTLINED_FUNCTION_38_5();
                                              move_i(v1529, v1530, 114);
                                              OUTLINED_FUNCTION_36_5(v1531, v1532, v1533, v1534, v1535, v1536, v1537, v1538, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                              OUTLINED_FUNCTION_32_7(v1539, v1540, v1541, v1542, v1543, v1544, v1545, v1546, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                              OUTLINED_FUNCTION_31_8(v1547, v1548, v1549, v1550, v1551, v1552, v1553, v1554, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                              OUTLINED_FUNCTION_34_6(v1555, v1556, v1557, v1558, v1559, v1560, v1561, v1562, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                              OUTLINED_FUNCTION_33_7(v1563, v1564, v1565, v1566, v1567, v1568, v1569, v1570, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                              OUTLINED_FUNCTION_40_3(v1571, &v2644);
                                              v1572 = OUTLINED_FUNCTION_7_19();
                                              move_i(v1572, v1573, 75);
                                              v1574 = OUTLINED_FUNCTION_17_16();
                                              move_i(v1574, v1575, 150);
                                              v1576 = OUTLINED_FUNCTION_13_19();
                                              move_i(v1576, v1577, 128);
                                              v1578 = OUTLINED_FUNCTION_16_17();
                                              move_i(v1578, v1579, 50);
                                              v1580 = OUTLINED_FUNCTION_15_17();
                                              move_i(v1580, v1581, 130);
                                              v1582 = OUTLINED_FUNCTION_14_17();
                                              move_i(v1582, v1583, 130);
                                              v1584 = OUTLINED_FUNCTION_26_12();
                                              move_i(v1584, v1585, 255);
                                              v1586 = OUTLINED_FUNCTION_24_13();
                                              move_i(v1586, v1587, 0);
                                              v2616 = (&v2647 + 4);
                                              v2617 = v58;
                                              OUTLINED_FUNCTION_1_20(&v2607);
                                              v1588[2] = &v2644;
                                              v1588[1] = &v2643 + 4;
                                              OUTLINED_FUNCTION_4_19(v1589, v1590, v1591, v1588, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643);
                                              if (!v1592)
                                              {
LABEL_27:
                                                OUTLINED_FUNCTION_6_19();
                                                OUTLINED_FUNCTION_41_3(23);
                                                v1593 = OUTLINED_FUNCTION_37_5();
                                                move_i(v1593, v1594, 115);
                                                OUTLINED_FUNCTION_35_5(v1595, v1596, v1597, v1598, v1599, v1600, v1601, v1602, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                OUTLINED_FUNCTION_30_8(v1603, v1604, v1605, v1606, v1607, v1608, v1609, v1610, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                OUTLINED_FUNCTION_29_9(v1611, v1612, v1613, v1614, v1615, v1616, v1617, v1618, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                OUTLINED_FUNCTION_28_9(v1619, v1620, v1621, v1622, v1623, v1624, v1625, v1626, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                OUTLINED_FUNCTION_27_10(v1627, v1628, v1629, v1630, v1631, v1632, v1633, v1634, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                                OUTLINED_FUNCTION_39_4(v1635, v1636, v1637, v1638, v1639, v1640, v1641, v1642, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                                v1643 = OUTLINED_FUNCTION_7_19();
                                                move_i(v1643, v1644, 50);
                                                v1645 = OUTLINED_FUNCTION_9_19();
                                                move_i(v1645, v1646, 100);
                                                v1647 = OUTLINED_FUNCTION_8_19();
                                                move_i(v1647, v1648, 128);
                                                v1649 = OUTLINED_FUNCTION_12_19();
                                                move_i(v1649, v1650, 75);
                                                v1651 = OUTLINED_FUNCTION_11_19();
                                                move_i(v1651, v1652, 130);
                                                v1653 = OUTLINED_FUNCTION_10_19();
                                                move_i(v1653, v1654, 130);
                                                v1655 = OUTLINED_FUNCTION_26_12();
                                                move_i(v1655, v1656, 150);
                                                v1657 = OUTLINED_FUNCTION_18_15();
                                                move_i(v1657, v1658, 0);
                                                v2616 = (&v2641 + 4);
                                                v2617 = v58;
                                                OUTLINED_FUNCTION_1_20(&v2607);
                                                v1659[2] = &v2645;
                                                v1659[1] = &v2645 + 4;
                                                OUTLINED_FUNCTION_5_19(v1660, v1661, v1662, v1659, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                                if (!v1663)
                                                {
LABEL_28:
                                                  OUTLINED_FUNCTION_6_19();
                                                  OUTLINED_FUNCTION_41_3(24);
                                                  v1664 = OUTLINED_FUNCTION_38_5();
                                                  move_i(v1664, v1665, 116);
                                                  OUTLINED_FUNCTION_36_5(v1666, v1667, v1668, v1669, v1670, v1671, v1672, v1673, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                  OUTLINED_FUNCTION_32_7(v1674, v1675, v1676, v1677, v1678, v1679, v1680, v1681, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                                  OUTLINED_FUNCTION_31_8(v1682, v1683, v1684, v1685, v1686, v1687, v1688, v1689, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                  OUTLINED_FUNCTION_34_6(v1690, v1691, v1692, v1693, v1694, v1695, v1696, v1697, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                  OUTLINED_FUNCTION_33_7(v1698, v1699, v1700, v1701, v1702, v1703, v1704, v1705, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                  OUTLINED_FUNCTION_40_3(v1706, &v2644);
                                                  v1707 = OUTLINED_FUNCTION_7_19();
                                                  move_i(v1707, v1708, 75);
                                                  v1709 = OUTLINED_FUNCTION_17_16();
                                                  move_i(v1709, v1710, 150);
                                                  v1711 = OUTLINED_FUNCTION_13_19();
                                                  move_i(v1711, v1712, 128);
                                                  v1713 = OUTLINED_FUNCTION_16_17();
                                                  move_i(v1713, v1714, 50);
                                                  v1715 = OUTLINED_FUNCTION_15_17();
                                                  move_i(v1715, v1716, 130);
                                                  v1717 = OUTLINED_FUNCTION_14_17();
                                                  move_i(v1717, v1718, 130);
                                                  v1719 = OUTLINED_FUNCTION_26_12();
                                                  move_i(v1719, v1720, 255);
                                                  v1721 = OUTLINED_FUNCTION_24_13();
                                                  move_i(v1721, v1722, 0);
                                                  v2616 = (&v2647 + 4);
                                                  v2617 = v58;
                                                  OUTLINED_FUNCTION_1_20(&v2607);
                                                  v1723[2] = &v2644;
                                                  v1723[1] = &v2643 + 4;
                                                  OUTLINED_FUNCTION_4_19(v1724, v1725, v1726, v1723, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643);
                                                  if (!v1727)
                                                  {
LABEL_29:
                                                    OUTLINED_FUNCTION_6_19();
                                                    v7 = 25;
                                                    starttest(a1, 25);
                                                    v1728 = OUTLINED_FUNCTION_37_5();
                                                    move_i(v1728, v1729, 117);
                                                    OUTLINED_FUNCTION_35_5(v1730, v1731, v1732, v1733, v1734, v1735, v1736, v1737, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                    OUTLINED_FUNCTION_30_8(v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                    OUTLINED_FUNCTION_29_9(v1746, v1747, v1748, v1749, v1750, v1751, v1752, v1753, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                    OUTLINED_FUNCTION_28_9(v1754, v1755, v1756, v1757, v1758, v1759, v1760, v1761, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                    OUTLINED_FUNCTION_27_10(v1762, v1763, v1764, v1765, v1766, v1767, v1768, v1769, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                                    OUTLINED_FUNCTION_25_12(v1770, v1771, v1772, v1773, v1774, v1775, v1776, v1777, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                                    v1778 = OUTLINED_FUNCTION_7_19();
                                                    move_i(v1778, v1779, 25);
                                                    v1780 = OUTLINED_FUNCTION_9_19();
                                                    move_i(v1780, v1781, 0);
                                                    v1782 = OUTLINED_FUNCTION_8_19();
                                                    move_i(v1782, v1783, 130);
                                                    v1784 = OUTLINED_FUNCTION_12_19();
                                                    move_i(v1784, v1785, 90);
                                                    v1786 = OUTLINED_FUNCTION_11_19();
                                                    move_i(v1786, v1787, 60);
                                                    v1788 = OUTLINED_FUNCTION_10_19();
                                                    move_i(v1788, v1789, 60);
                                                    OUTLINED_FUNCTION_19_14(v1790, v1791, v1792, v1793, v1794, v1795, v1796, v1797, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                    v1798 = OUTLINED_FUNCTION_20_13();
                                                    move_i(v1798, v1799, 255);
                                                    OUTLINED_FUNCTION_0_21();
                                                    v1800[1] = &v2645 + 4;
                                                    v1800[2] = v58;
                                                    OUTLINED_FUNCTION_5_19(v1801, v1802, v1803, v1800, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                                    if (!v1804)
                                                    {
LABEL_30:
                                                      OUTLINED_FUNCTION_6_19();
                                                      OUTLINED_FUNCTION_41_3(26);
                                                      v1805 = OUTLINED_FUNCTION_38_5();
                                                      move_i(v1805, v1806, 118);
                                                      OUTLINED_FUNCTION_36_5(v1807, v1808, v1809, v1810, v1811, v1812, v1813, v1814, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                      OUTLINED_FUNCTION_32_7(v1815, v1816, v1817, v1818, v1819, v1820, v1821, v1822, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                                      OUTLINED_FUNCTION_31_8(v1823, v1824, v1825, v1826, v1827, v1828, v1829, v1830, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                      OUTLINED_FUNCTION_34_6(v1831, v1832, v1833, v1834, v1835, v1836, v1837, v1838, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                      OUTLINED_FUNCTION_33_7(v1839, v1840, v1841, v1842, v1843, v1844, v1845, v1846, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                      OUTLINED_FUNCTION_23_13(v1847, v1848, v1849, v1850, v1851, v1852, v1853, v1854, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                      v1855 = OUTLINED_FUNCTION_7_19();
                                                      move_i(v1855, v1856, 10);
                                                      v1857 = OUTLINED_FUNCTION_17_16();
                                                      move_i(v1857, v1858, 100);
                                                      v1859 = OUTLINED_FUNCTION_13_19();
                                                      move_i(v1859, v1860, 128);
                                                      v1861 = OUTLINED_FUNCTION_16_17();
                                                      move_i(v1861, v1862, 25);
                                                      v1863 = OUTLINED_FUNCTION_15_17();
                                                      move_i(v1863, v1864, 130);
                                                      v1865 = OUTLINED_FUNCTION_14_17();
                                                      move_i(v1865, v1866, 0);
                                                      OUTLINED_FUNCTION_22_13(v1867, v1868, v1869, v1870, v1871, v1872, v1873, v1874, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                      v1875 = OUTLINED_FUNCTION_21_13();
                                                      move_i(v1875, v1876, 200);
                                                      OUTLINED_FUNCTION_0_21();
                                                      OUTLINED_FUNCTION_3_20(v1877, v1878, v1879, v1880, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643));
                                                      if (!v1881)
                                                      {
LABEL_31:
                                                        OUTLINED_FUNCTION_6_19();
                                                        OUTLINED_FUNCTION_41_3(27);
                                                        v1882 = OUTLINED_FUNCTION_37_5();
                                                        move_i(v1882, v1883, 119);
                                                        OUTLINED_FUNCTION_35_5(v1884, v1885, v1886, v1887, v1888, v1889, v1890, v1891, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                        OUTLINED_FUNCTION_30_8(v1892, v1893, v1894, v1895, v1896, v1897, v1898, v1899, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                        OUTLINED_FUNCTION_29_9(v1900, v1901, v1902, v1903, v1904, v1905, v1906, v1907, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                        OUTLINED_FUNCTION_28_9(v1908, v1909, v1910, v1911, v1912, v1913, v1914, v1915, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                        OUTLINED_FUNCTION_27_10(v1916, v1917, v1918, v1919, v1920, v1921, v1922, v1923, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                                        OUTLINED_FUNCTION_25_12(v1924, v1925, v1926, v1927, v1928, v1929, v1930, v1931, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                                        v1932 = OUTLINED_FUNCTION_7_19();
                                                        move_i(v1932, v1933, 25);
                                                        v1934 = OUTLINED_FUNCTION_9_19();
                                                        move_i(v1934, v1935, 0);
                                                        v1936 = OUTLINED_FUNCTION_8_19();
                                                        move_i(v1936, v1937, 130);
                                                        v1938 = OUTLINED_FUNCTION_12_19();
                                                        move_i(v1938, v1939, 90);
                                                        v1940 = OUTLINED_FUNCTION_11_19();
                                                        move_i(v1940, v1941, 60);
                                                        v1942 = OUTLINED_FUNCTION_10_19();
                                                        move_i(v1942, v1943, 60);
                                                        OUTLINED_FUNCTION_19_14(v1944, v1945, v1946, v1947, v1948, v1949, v1950, v1951, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                        v1952 = OUTLINED_FUNCTION_20_13();
                                                        move_i(v1952, v1953, 255);
                                                        OUTLINED_FUNCTION_0_21();
                                                        v1954[1] = &v2645 + 4;
                                                        v1954[2] = v58;
                                                        OUTLINED_FUNCTION_5_19(v1955, v1956, v1957, v1954, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                                        if (!v1958)
                                                        {
LABEL_32:
                                                          OUTLINED_FUNCTION_6_19();
                                                          OUTLINED_FUNCTION_41_3(28);
                                                          v1959 = OUTLINED_FUNCTION_38_5();
                                                          move_i(v1959, v1960, 121);
                                                          OUTLINED_FUNCTION_36_5(v1961, v1962, v1963, v1964, v1965, v1966, v1967, v1968, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                          OUTLINED_FUNCTION_32_7(v1969, v1970, v1971, v1972, v1973, v1974, v1975, v1976, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                                          OUTLINED_FUNCTION_31_8(v1977, v1978, v1979, v1980, v1981, v1982, v1983, v1984, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                          OUTLINED_FUNCTION_34_6(v1985, v1986, v1987, v1988, v1989, v1990, v1991, v1992, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                          OUTLINED_FUNCTION_33_7(v1993, v1994, v1995, v1996, v1997, v1998, v1999, v2000, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                          OUTLINED_FUNCTION_23_13(v2001, v2002, v2003, v2004, v2005, v2006, v2007, v2008, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                          v2009 = OUTLINED_FUNCTION_7_19();
                                                          move_i(v2009, v2010, 25);
                                                          v2011 = OUTLINED_FUNCTION_17_16();
                                                          move_i(v2011, v2012, 150);
                                                          v2013 = OUTLINED_FUNCTION_13_19();
                                                          move_i(v2013, v2014, 128);
                                                          v2015 = OUTLINED_FUNCTION_16_17();
                                                          move_i(v2015, v2016, 50);
                                                          v2017 = OUTLINED_FUNCTION_15_17();
                                                          move_i(v2017, v2018, 130);
                                                          v2019 = OUTLINED_FUNCTION_14_17();
                                                          move_i(v2019, v2020, 130);
                                                          OUTLINED_FUNCTION_22_13(v2021, v2022, v2023, v2024, v2025, v2026, v2027, v2028, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                          v2029 = OUTLINED_FUNCTION_21_13();
                                                          move_i(v2029, v2030, 255);
                                                          OUTLINED_FUNCTION_0_21();
                                                          OUTLINED_FUNCTION_3_20(v2031, v2032, v2033, v2034, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643));
                                                          if (!v2035)
                                                          {
LABEL_33:
                                                            OUTLINED_FUNCTION_6_19();
                                                            OUTLINED_FUNCTION_41_3(29);
                                                            v2036 = OUTLINED_FUNCTION_37_5();
                                                            move_i(v2036, v2037, 122);
                                                            OUTLINED_FUNCTION_35_5(v2038, v2039, v2040, v2041, v2042, v2043, v2044, v2045, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                            OUTLINED_FUNCTION_30_8(v2046, v2047, v2048, v2049, v2050, v2051, v2052, v2053, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                            OUTLINED_FUNCTION_29_9(v2054, v2055, v2056, v2057, v2058, v2059, v2060, v2061, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                            OUTLINED_FUNCTION_28_9(v2062, v2063, v2064, v2065, v2066, v2067, v2068, v2069, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                            OUTLINED_FUNCTION_27_10(v2070, v2071, v2072, v2073, v2074, v2075, v2076, v2077, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                                            OUTLINED_FUNCTION_39_4(v2078, v2079, v2080, v2081, v2082, v2083, v2084, v2085, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645);
                                                            v2086 = OUTLINED_FUNCTION_7_19();
                                                            move_i(v2086, v2087, 50);
                                                            v2088 = OUTLINED_FUNCTION_9_19();
                                                            move_i(v2088, v2089, 100);
                                                            v2090 = OUTLINED_FUNCTION_8_19();
                                                            move_i(v2090, v2091, 128);
                                                            v2092 = OUTLINED_FUNCTION_12_19();
                                                            move_i(v2092, v2093, 75);
                                                            v2094 = OUTLINED_FUNCTION_11_19();
                                                            move_i(v2094, v2095, 130);
                                                            v2096 = OUTLINED_FUNCTION_10_19();
                                                            move_i(v2096, v2097, 130);
                                                            v2098 = OUTLINED_FUNCTION_26_12();
                                                            move_i(v2098, v2099, 150);
                                                            v2100 = OUTLINED_FUNCTION_18_15();
                                                            move_i(v2100, v2101, 0);
                                                            v2616 = (&v2641 + 4);
                                                            v2617 = v58;
                                                            OUTLINED_FUNCTION_1_20(&v2607);
                                                            v2102[2] = &v2645;
                                                            v2102[1] = &v2645 + 4;
                                                            OUTLINED_FUNCTION_5_19(v2103, v2104, v2105, v2102, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                                            if (!v2106)
                                                            {
LABEL_34:
                                                              OUTLINED_FUNCTION_6_19();
                                                              OUTLINED_FUNCTION_41_3(30);
                                                              v2107 = OUTLINED_FUNCTION_38_5();
                                                              move_i(v2107, v2108, 164);
                                                              OUTLINED_FUNCTION_36_5(v2109, v2110, v2111, v2112, v2113, v2114, v2115, v2116, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                              OUTLINED_FUNCTION_32_7(v2117, v2118, v2119, v2120, v2121, v2122, v2123, v2124, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                                              OUTLINED_FUNCTION_31_8(v2125, v2126, v2127, v2128, v2129, v2130, v2131, v2132, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                              OUTLINED_FUNCTION_34_6(v2133, v2134, v2135, v2136, v2137, v2138, v2139, v2140, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                              OUTLINED_FUNCTION_33_7(v2141, v2142, v2143, v2144, v2145, v2146, v2147, v2148, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                              OUTLINED_FUNCTION_40_3(v2149, &v2644);
                                                              v2150 = OUTLINED_FUNCTION_7_19();
                                                              move_i(v2150, v2151, 0);
                                                              v2152 = OUTLINED_FUNCTION_17_16();
                                                              move_i(v2152, v2153, 170);
                                                              v2154 = OUTLINED_FUNCTION_13_19();
                                                              move_i(v2154, v2155, 128);
                                                              v2156 = OUTLINED_FUNCTION_16_17();
                                                              move_i(v2156, v2157, 0);
                                                              v2158 = OUTLINED_FUNCTION_15_17();
                                                              move_i(v2158, v2159, 0);
                                                              v2160 = OUTLINED_FUNCTION_14_17();
                                                              move_i(v2160, v2161, 0);
                                                              v2162 = OUTLINED_FUNCTION_26_12();
                                                              move_i(v2162, v2163, 0);
                                                              v2164 = OUTLINED_FUNCTION_24_13();
                                                              move_i(v2164, v2165, 0);
                                                              v2616 = (&v2647 + 4);
                                                              v2617 = v58;
                                                              OUTLINED_FUNCTION_1_20(&v2607);
                                                              v2166[2] = &v2644;
                                                              v2166[1] = &v2643 + 4;
                                                              OUTLINED_FUNCTION_4_19(v2167, v2168, v2169, v2166, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643);
                                                              if (!v2170)
                                                              {
LABEL_35:
                                                                OUTLINED_FUNCTION_6_19();
                                                                OUTLINED_FUNCTION_41_3(31);
                                                                v2171 = OUTLINED_FUNCTION_37_5();
                                                                move_i(v2171, v2172, 108);
                                                                move_i(a1, &v2647 + 4, 121);
                                                                OUTLINED_FUNCTION_30_8(v2173, v2174, v2175, v2176, v2177, v2178, v2179, v2180, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                                OUTLINED_FUNCTION_29_9(v2181, v2182, v2183, v2184, v2185, v2186, v2187, v2188, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                                OUTLINED_FUNCTION_28_9(v2189, v2190, v2191, v2192, v2193, v2194, v2195, v2196, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                                OUTLINED_FUNCTION_27_10(v2197, v2198, v2199, v2200, v2201, v2202, v2203, v2204, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                                                v2205 = OUTLINED_FUNCTION_26_12();
                                                                move_i(v2205, v2206, 0);
                                                                v2207 = OUTLINED_FUNCTION_7_19();
                                                                move_i(v2207, v2208, 25);
                                                                v2209 = OUTLINED_FUNCTION_9_19();
                                                                move_i(v2209, v2210, 150);
                                                                v2211 = OUTLINED_FUNCTION_8_19();
                                                                move_i(v2211, v2212, 128);
                                                                v2213 = OUTLINED_FUNCTION_12_19();
                                                                move_i(v2213, v2214, 50);
                                                                v2215 = OUTLINED_FUNCTION_11_19();
                                                                move_i(v2215, v2216, 130);
                                                                v2217 = OUTLINED_FUNCTION_10_19();
                                                                move_i(v2217, v2218, 130);
                                                                OUTLINED_FUNCTION_19_14(v2219, v2220, v2221, v2222, v2223, v2224, v2225, v2226, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                                v2227 = OUTLINED_FUNCTION_18_15();
                                                                move_i(v2227, v2228, 255);
                                                                v2616 = v51;
                                                                v2617 = v58;
                                                                OUTLINED_FUNCTION_1_20(&v2607);
                                                                v2229[1] = &v2645 + 4;
                                                                v2229[2] = &v2645;
                                                                OUTLINED_FUNCTION_5_19(v2230, v2231, v2232, v2229, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                                                if (!v2233)
                                                                {
LABEL_36:
                                                                  OUTLINED_FUNCTION_6_19();
                                                                  OUTLINED_FUNCTION_41_3(32);
                                                                  v2234 = OUTLINED_FUNCTION_38_5();
                                                                  move_i(v2234, v2235, 97);
                                                                  OUTLINED_FUNCTION_42_3(v2236, v2237, v2238, v2239, v2240, v2241, v2242, v2243, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                                  OUTLINED_FUNCTION_32_7(v2244, v2245, v2246, v2247, v2248, v2249, v2250, v2251, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                                                  OUTLINED_FUNCTION_31_8(v2252, v2253, v2254, v2255, v2256, v2257, v2258, v2259, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                                  OUTLINED_FUNCTION_34_6(v2260, v2261, v2262, v2263, v2264, v2265, v2266, v2267, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                                  OUTLINED_FUNCTION_33_7(v2268, v2269, v2270, v2271, v2272, v2273, v2274, v2275, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                                  OUTLINED_FUNCTION_23_13(v2276, v2277, v2278, v2279, v2280, v2281, v2282, v2283, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644);
                                                                  v2284 = OUTLINED_FUNCTION_7_19();
                                                                  move_i(v2284, v2285, 100);
                                                                  v2286 = OUTLINED_FUNCTION_26_12();
                                                                  move_i(v2286, v2287, 125);
                                                                  OUTLINED_FUNCTION_48_3(v2288, v2289, v2290, v2291, v2292, v2293, v2294, v2295, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                                                  OUTLINED_FUNCTION_47_3(v2296, v2297, v2298, v2299, v2300, v2301, v2302, v2303, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                                  OUTLINED_FUNCTION_46_3(v2304, v2305, v2306, v2307, v2308, v2309, v2310, v2311, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                                  OUTLINED_FUNCTION_45_3(v2312, v2313, v2314, v2315, v2316, v2317, v2318, v2319, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                                  OUTLINED_FUNCTION_44_3(v2320, v2321, v2322, v2323, v2324, v2325, v2326, v2327, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                                  OUTLINED_FUNCTION_43_3(v2328, v2329, v2330, v2331, v2332, v2333, v2334, v2335, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2648);
                                                                  OUTLINED_FUNCTION_2_20(&v2607, v2607, v2608, v2609, v59, &v2645, v7, v3, v61, v60, &v2643, v51, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643, SWORD1(v2643), SBYTE4(v2643), v2644, v2645, v2646, v2647, v2648, SWORD2(v2648), SHIWORD(v2648), v2649);
                                                                  if (!v2336)
                                                                  {
LABEL_37:
                                                                    OUTLINED_FUNCTION_6_19();
                                                                    OUTLINED_FUNCTION_41_3(33);
                                                                    v2337 = OUTLINED_FUNCTION_37_5();
                                                                    move_i(v2337, v2338, 101);
                                                                    move_i(a1, &v2647 + 4, 126);
                                                                    OUTLINED_FUNCTION_30_8(v2339, v2340, v2341, v2342, v2343, v2344, v2345, v2346, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                                    OUTLINED_FUNCTION_29_9(v2347, v2348, v2349, v2350, v2351, v2352, v2353, v2354, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                                    OUTLINED_FUNCTION_28_9(v2355, v2356, v2357, v2358, v2359, v2360, v2361, v2362, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                                    OUTLINED_FUNCTION_27_10(v2363, v2364, v2365, v2366, v2367, v2368, v2369, v2370, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                                                    v2371 = OUTLINED_FUNCTION_26_12();
                                                                    move_i(v2371, v2372, 0);
                                                                    v2373 = OUTLINED_FUNCTION_7_19();
                                                                    move_i(v2373, v2374, 50);
                                                                    v2375 = OUTLINED_FUNCTION_9_19();
                                                                    move_i(v2375, v2376, 100);
                                                                    v2377 = OUTLINED_FUNCTION_8_19();
                                                                    move_i(v2377, v2378, 128);
                                                                    v2379 = OUTLINED_FUNCTION_12_19();
                                                                    move_i(v2379, v2380, 75);
                                                                    v2381 = OUTLINED_FUNCTION_11_19();
                                                                    move_i(v2381, v2382, 130);
                                                                    v2383 = OUTLINED_FUNCTION_10_19();
                                                                    move_i(v2383, v2384, 175);
                                                                    OUTLINED_FUNCTION_19_14(v2385, v2386, v2387, v2388, v2389, v2390, v2391, v2392, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                                    v2393 = OUTLINED_FUNCTION_18_15();
                                                                    move_i(v2393, v2394, 255);
                                                                    v2616 = v51;
                                                                    v2617 = v58;
                                                                    OUTLINED_FUNCTION_1_20(&v2607);
                                                                    v2395[1] = &v2645 + 4;
                                                                    v2395[2] = &v2645;
                                                                    OUTLINED_FUNCTION_5_19(v2396, v2397, v2398, v2395, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                                                    if (!v2399)
                                                                    {
LABEL_38:
                                                                      OUTLINED_FUNCTION_6_19();
                                                                      OUTLINED_FUNCTION_41_3(34);
                                                                      v2400 = OUTLINED_FUNCTION_38_5();
                                                                      move_i(v2400, v2401, 105);
                                                                      OUTLINED_FUNCTION_42_3(v2402, v2403, v2404, v2405, v2406, v2407, v2408, v2409, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                                      OUTLINED_FUNCTION_32_7(v2410, v2411, v2412, v2413, v2414, v2415, v2416, v2417, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                                                      OUTLINED_FUNCTION_31_8(v2418, v2419, v2420, v2421, v2422, v2423, v2424, v2425, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                                      OUTLINED_FUNCTION_34_6(v2426, v2427, v2428, v2429, v2430, v2431, v2432, v2433, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                                      OUTLINED_FUNCTION_33_7(v2434, v2435, v2436, v2437, v2438, v2439, v2440, v2441, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                                      v2442 = OUTLINED_FUNCTION_26_12();
                                                                      move_i(v2442, v2443, 0);
                                                                      v2444 = OUTLINED_FUNCTION_7_19();
                                                                      move_i(v2444, v2445, 25);
                                                                      v2446 = OUTLINED_FUNCTION_17_16();
                                                                      move_i(v2446, v2447, 150);
                                                                      v2448 = OUTLINED_FUNCTION_13_19();
                                                                      move_i(v2448, v2449, 128);
                                                                      v2450 = OUTLINED_FUNCTION_16_17();
                                                                      move_i(v2450, v2451, 50);
                                                                      v2452 = OUTLINED_FUNCTION_15_17();
                                                                      move_i(v2452, v2453, 130);
                                                                      v2454 = OUTLINED_FUNCTION_14_17();
                                                                      move_i(v2454, v2455, 130);
                                                                      OUTLINED_FUNCTION_22_13(v2456, v2457, v2458, v2459, v2460, v2461, v2462, v2463, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                                      v2464 = OUTLINED_FUNCTION_24_13();
                                                                      move_i(v2464, v2465, 255);
                                                                      v2616 = v51;
                                                                      v2617 = v58;
                                                                      OUTLINED_FUNCTION_1_20(&v2607);
                                                                      v2466[1] = &v2643 + 4;
                                                                      v2466[2] = &v2644;
                                                                      OUTLINED_FUNCTION_4_19(v2467, v2468, v2469, v2466, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643);
                                                                      if (!v2470)
                                                                      {
LABEL_39:
                                                                        OUTLINED_FUNCTION_6_19();
                                                                        OUTLINED_FUNCTION_41_3(35);
                                                                        v2471 = OUTLINED_FUNCTION_37_5();
                                                                        move_i(v2471, v2472, 111);
                                                                        move_i(a1, &v2647 + 4, 126);
                                                                        OUTLINED_FUNCTION_30_8(v2473, v2474, v2475, v2476, v2477, v2478, v2479, v2480, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647);
                                                                        OUTLINED_FUNCTION_29_9(v2481, v2482, v2483, v2484, v2485, v2486, v2487, v2488, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SBYTE4(v2646));
                                                                        OUTLINED_FUNCTION_28_9(v2489, v2490, v2491, v2492, v2493, v2494, v2495, v2496, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646);
                                                                        OUTLINED_FUNCTION_27_10(v2497, v2498, v2499, v2500, v2501, v2502, v2503, v2504, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, SBYTE4(v2645));
                                                                        v2505 = OUTLINED_FUNCTION_26_12();
                                                                        move_i(v2505, v2506, 0);
                                                                        v2507 = OUTLINED_FUNCTION_7_19();
                                                                        move_i(v2507, v2508, 25);
                                                                        v2509 = OUTLINED_FUNCTION_9_19();
                                                                        move_i(v2509, v2510, 0);
                                                                        v2511 = OUTLINED_FUNCTION_8_19();
                                                                        move_i(v2511, v2512, 130);
                                                                        v2513 = OUTLINED_FUNCTION_12_19();
                                                                        move_i(v2513, v2514, 130);
                                                                        v2515 = OUTLINED_FUNCTION_11_19();
                                                                        move_i(v2515, v2516, 60);
                                                                        v2517 = OUTLINED_FUNCTION_10_19();
                                                                        move_i(v2517, v2518, 60);
                                                                        OUTLINED_FUNCTION_19_14(v2519, v2520, v2521, v2522, v2523, v2524, v2525, v2526, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                                        v2527 = OUTLINED_FUNCTION_18_15();
                                                                        move_i(v2527, v2528, 255);
                                                                        v2616 = v51;
                                                                        v2617 = v58;
                                                                        OUTLINED_FUNCTION_1_20(&v2607);
                                                                        v2529[1] = &v2645 + 4;
                                                                        v2529[2] = &v2645;
                                                                        OUTLINED_FUNCTION_5_19(v2530, v2531, v2532, v2529, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, SWORD1(v2646), SWORD2(v2646), SHIWORD(v2646), v2647, SWORD1(v2647), SWORD2(v2647), SHIWORD(v2647), v2648);
                                                                        if (!v2533)
                                                                        {
LABEL_40:
                                                                          OUTLINED_FUNCTION_6_19();
                                                                          OUTLINED_FUNCTION_41_3(36);
                                                                          v2534 = OUTLINED_FUNCTION_38_5();
                                                                          move_i(v2534, v2535, 117);
                                                                          OUTLINED_FUNCTION_42_3(v2536, v2537, v2538, v2539, v2540, v2541, v2542, v2543, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SBYTE4(v2641));
                                                                          OUTLINED_FUNCTION_32_7(v2544, v2545, v2546, v2547, v2548, v2549, v2550, v2551, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642);
                                                                          OUTLINED_FUNCTION_31_8(v2552, v2553, v2554, v2555, v2556, v2557, v2558, v2559, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, SBYTE4(v2642));
                                                                          OUTLINED_FUNCTION_34_6(v2560, v2561, v2562, v2563, v2564, v2565, v2566, v2567, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643);
                                                                          OUTLINED_FUNCTION_33_7(v2568, v2569, v2570, v2571, v2572, v2573, v2574, v2575, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, SBYTE4(v2643));
                                                                          v2576 = OUTLINED_FUNCTION_26_12();
                                                                          move_i(v2576, v2577, 0);
                                                                          v2578 = OUTLINED_FUNCTION_7_19();
                                                                          move_i(v2578, v2579, 25);
                                                                          v2580 = OUTLINED_FUNCTION_17_16();
                                                                          move_i(v2580, v2581, 0);
                                                                          v2582 = OUTLINED_FUNCTION_13_19();
                                                                          move_i(v2582, v2583, 130);
                                                                          v2584 = OUTLINED_FUNCTION_16_17();
                                                                          move_i(v2584, v2585, 90);
                                                                          v2586 = OUTLINED_FUNCTION_15_17();
                                                                          move_i(v2586, v2587, 60);
                                                                          v2588 = OUTLINED_FUNCTION_14_17();
                                                                          move_i(v2588, v2589, 60);
                                                                          OUTLINED_FUNCTION_22_13(v2590, v2591, v2592, v2593, v2594, v2595, v2596, v2597, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, SBYTE4(v2647));
                                                                          v2598 = OUTLINED_FUNCTION_24_13();
                                                                          move_i(v2598, v2599, 255);
                                                                          v2616 = v51;
                                                                          v2617 = v58;
                                                                          OUTLINED_FUNCTION_1_20(&v2607);
                                                                          v2600[1] = &v2643 + 4;
                                                                          v2600[2] = &v2644;
                                                                          OUTLINED_FUNCTION_4_19(v2601, v2602, v2603, v2600, v2607, v2608, v2609, v2610, v2611, v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2620, v2621, v2622, v2623, v2624, v2625, v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2636, v2637, v2638, v2639, v2640, v2641, SWORD1(v2641), SWORD2(v2641), SHIWORD(v2641), v2642, SWORD1(v2642), SWORD2(v2642), SHIWORD(v2642), v2643);
                                                                          if (!v2604)
                                                                          {
LABEL_45:
                                                                            OUTLINED_FUNCTION_6_19();
                                                                            vretproc(a1);
                                                                            return 0;
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
                  }
                }
              }
            }
          }
        }
      }
    }

    v2605 = *(a1 + 104);
    if (v2605)
    {
      *(a1 + 104) = 0;
      v2606 = v2605;
    }

    else
    {
      v2606 = vback(a1, 0);
    }

    switch(v2606)
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
        goto LABEL_33;
      case 29:
        goto LABEL_34;
      case 30:
        goto LABEL_35;
      case 31:
        goto LABEL_36;
      case 32:
        goto LABEL_37;
      case 33:
        goto LABEL_38;
      case 34:
        goto LABEL_39;
      case 35:
        goto LABEL_40;
      case 36:
        goto LABEL_45;
      default:
        break;
    }
  }

  vretproc(a1);
  return 94;
}

void OUTLINED_FUNCTION_1_20(void *a1@<X8>)
{
  a1[7] = v5;
  a1[8] = v6;
  a1[5] = v3;
  a1[6] = v4;
  a1[3] = v1;
  a1[4] = v2;
}

void OUTLINED_FUNCTION_2_20(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int16 a36, __int16 a37, __int16 a38, __int16 a39, __int16 a40, __int16 a41, __int16 a42, __int16 a43, char a44, __int16 a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, __int16 a53, char a54)
{
  a1[1] = &a46;
  a1[2] = v55;
  *a1 = &a44;

  registerPhoneme(v54, &a54, &a52, v54 + 3552, &a36, &a38, &a40, &a42, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void OUTLINED_FUNCTION_3_20(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int16 a39, __int16 a40, __int16 a41, __int16 a42, __int16 a43, __int16 a44, __int16 a45, __int16 a46, char a47, __int16 a48, char a49)
{
  a4[1] = &a49;
  a4[2] = v50;
  *a4 = &a47;

  registerPhoneme(v49, a1, a2, a3, &a39, &a41, &a43, &a45, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void OUTLINED_FUNCTION_4_19(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int16 a39, __int16 a40, __int16 a41, __int16 a42, __int16 a43, __int16 a44, __int16 a45, __int16 a46, char a47)
{
  *a4 = &a47;

  registerPhoneme(v47, a1, a2, a3, &a39, &a41, &a43, &a45, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void OUTLINED_FUNCTION_5_19(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, __int16 a45, __int16 a46, __int16 a47, __int16 a48, __int16 a49, __int16 a50, __int16 a51, char a52)
{
  *a4 = &a44;

  registerPhoneme(v52, a1, a2, a3, &a52, &a50, &a48, &a46, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void OUTLINED_FUNCTION_19_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, char a44)
{

  move_i(v44, &a44, 0);
}

void OUTLINED_FUNCTION_22_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50)
{

  move_i(v50, &a50, 0);
}

void OUTLINED_FUNCTION_23_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{

  move_i(v46, &a46, 0);
}

void OUTLINED_FUNCTION_25_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  move_i(v47, &a47, 0);
}

void OUTLINED_FUNCTION_27_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48)
{

  move_i(v48, &a48, 0);
}

void OUTLINED_FUNCTION_28_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{

  move_i(v48, &a48, 0);
}

void OUTLINED_FUNCTION_29_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, char a49)
{

  move_i(v49, &a49, 0);
}

void OUTLINED_FUNCTION_30_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  move_i(v49, &a49, 0);
}

void OUTLINED_FUNCTION_31_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, char a45)
{

  move_i(v45, &a45, 0);
}

void OUTLINED_FUNCTION_32_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{

  move_i(v44, &a44, 0);
}

void OUTLINED_FUNCTION_33_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, char a46)
{

  move_i(v46, &a46, 0);
}

void OUTLINED_FUNCTION_34_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  move_i(v45, &a45, 0);
}

void OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50)
{

  move_i(v50, &a50, 0);
}

void OUTLINED_FUNCTION_36_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, char a44)
{

  move_i(v44, &a44, 0);
}

void OUTLINED_FUNCTION_39_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  move_i(v47, &a47, 0);
}

void OUTLINED_FUNCTION_40_3(uint64_t a1, uint64_t a2)
{

  move_i(v2, a2, 0);
}

void OUTLINED_FUNCTION_41_3(uint64_t a1@<X8>)
{

  starttest(v1, a1);
}

void OUTLINED_FUNCTION_42_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, char a44)
{

  move_i(v44, &a44, 126);
}

void OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{

  move_i(v50, &a50, 150);
}

void OUTLINED_FUNCTION_44_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50)
{

  move_i(v50, &a50, 150);
}

void OUTLINED_FUNCTION_45_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  move_i(v49, &a49, 130);
}

void OUTLINED_FUNCTION_46_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, char a49)
{

  move_i(v49, &a49, 150);
}

void OUTLINED_FUNCTION_47_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{

  move_i(v48, &a48, 200);
}

void OUTLINED_FUNCTION_48_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48)
{

  move_i(v48, &a48, 128);
}

uint64_t set_por_global_constants(_WORD *a1)
{
  OUTLINED_FUNCTION_1_21(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_2_21(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_22(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_21(a1);
    v19 = 0;
    a1[2969] = 3;
    a1[2971] = 9;
    a1[1613] = 3;
    a1[1609] = 5;
    a1[1615] = 2;
    a1[2981] = 2;
    a1[2979] = 1;
    a1[2983] = 0;
    a1[2985] = 1;
    a1[2965] = 9;
    a1[2967] = 10;
  }

  vretproc(a1);
  return v19;
}

uint64_t init_por_vars(_WORD *a1)
{
  OUTLINED_FUNCTION_1_21(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_2_21(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_22(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_21(a1);
    a1[2545] = a1[2561];
    npush_s(a1);
    a1[1577] = 2;
    npop(a1, a1 + 1576);
    npush_s(a1);
    a1[1577] = 3;
    npop(a1, a1 + 1576);
    npush_s(a1);
    a1[1577] = 4;
    npop(a1, a1 + 1576);
    npush_s(a1);
    a1[1561] = 2;
    npop(a1, a1 + 1560);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t reset_por_sent_vars(uint64_t a1)
{
  OUTLINED_FUNCTION_1_21(*MEMORY[0x277D85DE8], v21);
  OUTLINED_FUNCTION_2_21(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_0_22(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, SHIDWORD(v69), v71, SWORD2(v71), SHIWORD(v71), v73, SWORD2(v73), SBYTE6(v73), SHIBYTE(v73), v75, v76))
  {
    v19 = 94;
  }

  else
  {
    fence_21(a1);
    v19 = 0;
  }

  vretproc(a1);
  return v19;
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, __int16 a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{

  return ventproc(v42, &a9, &a40, &a36, &a33, &a42);
}

void OUTLINED_FUNCTION_1_21(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 40) = a1;

  bzero(&a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_2_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  bzero(va, 0xC0uLL);
}

uint64_t por_gramm_cat_dict(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v1606 = *MEMORY[0x277D85DE8];
  v1601[0] = 0;
  v1601[1] = 0;
  v1600[0] = 0;
  v1600[1] = 0;
  v1599 = 0;
  v1597 = 0u;
  v1598 = 0u;
  v1594 = 0;
  v1595 = 0;
  v1596 = 0;
  bzero(&v1571, 0xB8uLL);
  bzero(v1605, 0xC0uLL);
  if (setjmp(v1605) || ventproc(a1, &v1571, v1604, v1603, v1602, v1605) || (get_parm(a1, v1601, a2, -6), get_parm(a1, v1600, a3, -6), v1599 = 65532, v1598 = 0uLL, LODWORD(v1597) = -65534, LOBYTE(v1596) = 0, LODWORD(v1594) = -65533, *(*(a1 + 192) + 8121) = 0, memset(*(a1 + 264), *(a1 + 288), *(a1 + 288)), v8 = OUTLINED_FUNCTION_33_8(), starttest(v8, v9), lpta_rpta_loadp(a1, v1601, v1600), actd_lookup(a1, 0, 0, 0)))
  {
LABEL_4:
    vretproc(a1);
    return 94;
  }

LABEL_5:
  move_i(a1, &v1599, 0);
  OUTLINED_FUNCTION_28_10();
  copyvar(a1, &v1597, (a1 + 3052));
  copyvar(a1, &v1599, (a1 + 2284));
  actd_goto(a1);
  while (1)
  {
    do
    {
      while (1)
      {
        v14 = *(a1 + 104);
        if (v14)
        {
          *(a1 + 104) = 0;
          v15 = v14;
        }

        else
        {
          v15 = vback(a1, 0);
        }

        v16 = &unk_2806BB32F;
        v17 = 5;
        switch(v15)
        {
          case 1:
            v44 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v44, v45, v46);
            LOWORD(v16) = 4;
            v47 = OUTLINED_FUNCTION_14_18();
            if (insert_2pt_s(v47, v48, 1, v49, v50))
            {
              continue;
            }

            v51 = OUTLINED_FUNCTION_23_14();
            v52 = npush_s(v51);
            OUTLINED_FUNCTION_13_20(v52, v53, v54, v55, v56, v57, v58, v59, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v60 = OUTLINED_FUNCTION_17_17();
            npush_s(v60);
            v4 = 2;
            WORD1(v1597) = 2;
            v61 = OUTLINED_FUNCTION_15_18();
            npop(v61, v62);
            v63 = OUTLINED_FUNCTION_30_9();
            goto LABEL_208;
          case 2:
            v1183 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1183, v1184, v1185);
            v1186 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v1186, v1187, 1, v1188, v1189))
            {
              continue;
            }

            v1026 = a1;
            goto LABEL_192;
          case 3:
            v1115 = OUTLINED_FUNCTION_1_22();
            v1118 = lpta_rpta_loadp(v1115, v1116, v1117);
            if (OUTLINED_FUNCTION_11_20(v1118, v1119, v1120, &unk_2806BB1E6, 0))
            {
              continue;
            }

            goto LABEL_319;
          case 4:
          case 5:
            v1489 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1489, v1490, v1491);
            v1492 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v1492, v1493, v1494, v1495, v1496))
            {
              continue;
            }

            LOWORD(v17) = 2;
LABEL_319:
            v1497 = OUTLINED_FUNCTION_17_17();
            npush_s(v1497);
            WORD1(v1597) = v17;
            v1498 = OUTLINED_FUNCTION_18_16();
            npop(v1498, v1499);
            v1485 = OUTLINED_FUNCTION_24_14();
            goto LABEL_320;
          case 6:
          case 118:
            v1297 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1297, v1298, v1299);
            v195 = OUTLINED_FUNCTION_0_23();
            goto LABEL_268;
          case 7:
          case 119:
            v192 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v192, v193, v194);
            v195 = OUTLINED_FUNCTION_2_22();
            v199 = 6;
LABEL_268:
            if (insert_2pt_s(v195, v196, v199, v197, v198))
            {
              continue;
            }

            v1300 = OUTLINED_FUNCTION_24_14();
            v1301 = npush_s(v1300);
            OUTLINED_FUNCTION_8_20(v1301, v1302, v1303, v1304, v1305, v1306, v1307, v1308, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1309 = OUTLINED_FUNCTION_14_18();
            npush_s(v1309);
            v1310 = OUTLINED_FUNCTION_12_20();
            npop(v1310, v3);
            v1311 = OUTLINED_FUNCTION_17_17();
            npush_s(v1311);
            WORD1(v1597) = &unk_2806BB32F;
            v1312 = OUTLINED_FUNCTION_15_18();
            npop(v1312, v1313);
            v1314 = OUTLINED_FUNCTION_14_18();
            npush_s(v1314);
            OUTLINED_FUNCTION_21_14();
            goto LABEL_270;
          case 8:
            v106 = OUTLINED_FUNCTION_1_22();
            v109 = lpta_rpta_loadp(v106, v107, v108);
            v112 = &unk_2806BB30C;
            goto LABEL_55;
          case 9:
          case 121:
            v1200 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1200, v1201, v1202);
            v1203 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v1203, v1204, 7, v1205, v1206))
            {
              continue;
            }

            v1207 = OUTLINED_FUNCTION_24_14();
            v1208 = npush_s(v1207);
            OUTLINED_FUNCTION_5_20(v1208, v1209, v1210, v1211, v1212, v1213, v1214, v1215, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1216 = OUTLINED_FUNCTION_14_18();
            npush_s(v1216);
            OUTLINED_FUNCTION_32_8();
            v1217 = OUTLINED_FUNCTION_18_16();
            npop(v1217, v1218);
            v1219 = OUTLINED_FUNCTION_20_14();
            npush_s(v1219);
            WORD1(v1597) = &unk_2806BB32F;
            v1220 = OUTLINED_FUNCTION_18_16();
            npop(v1220, v1221);
            v1222 = OUTLINED_FUNCTION_14_18();
            goto LABEL_326;
          case 10:
            v64 = OUTLINED_FUNCTION_1_22();
            v33 = lpta_rpta_loadp(v64, v65, v66);
            v36 = &unk_2806BB311;
            goto LABEL_18;
          case 11:
            v30 = OUTLINED_FUNCTION_1_22();
            v33 = lpta_rpta_loadp(v30, v31, v32);
            v36 = &unk_2806BB316;
LABEL_18:
            if (OUTLINED_FUNCTION_4_20(v33, v34, v35, v36, 0))
            {
              continue;
            }

            v67 = OUTLINED_FUNCTION_24_14();
            npush_s(v67);
            OUTLINED_FUNCTION_22_14();
            v3 = &v1597;
            v68 = OUTLINED_FUNCTION_15_18();
            npop(v68, v69);
            v70 = OUTLINED_FUNCTION_17_17();
            npush_s(v70);
            v4 = 2;
            WORD1(v1597) = 2;
            v71 = OUTLINED_FUNCTION_15_18();
            npop(v71, v72);
            v73 = OUTLINED_FUNCTION_30_9();
            npush_s(v73);
            WORD1(v1597) = 5;
            goto LABEL_283;
          case 12:
            v305 = OUTLINED_FUNCTION_1_22();
            v40 = lpta_rpta_loadp(v305, v306, v307);
            v43 = &unk_2806BB1E6;
            goto LABEL_273;
          case 13:
            v113 = OUTLINED_FUNCTION_1_22();
            v85 = lpta_rpta_loadp(v113, v114, v115);
            v88 = &unk_2806BB21C;
            goto LABEL_231;
          case 14:
            v1456 = OUTLINED_FUNCTION_1_22();
            v1283 = lpta_rpta_loadp(v1456, v1457, v1458);
            v1286 = &unk_2806BB31B;
            goto LABEL_303;
          case 15:
          case 17:
            v123 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v123, v124, v125);
            v126 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v126, v127, 6, v128, v129))
            {
              continue;
            }

            v130 = OUTLINED_FUNCTION_23_14();
            goto LABEL_325;
          case 16:
            v1280 = OUTLINED_FUNCTION_1_22();
            v1283 = lpta_rpta_loadp(v1280, v1281, v1282);
            v1286 = &unk_2806BB320;
LABEL_303:
            if (OUTLINED_FUNCTION_4_20(v1283, v1284, v1285, v1286, 0))
            {
              continue;
            }

            v184 = OUTLINED_FUNCTION_23_14();
            goto LABEL_305;
          case 18:
            v23 = OUTLINED_FUNCTION_1_22();
            v26 = lpta_rpta_loadp(v23, v24, v25);
            v29 = &unk_2806BB31B;
            goto LABEL_42;
          case 19:
            v1502 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1502, v1503, v1504);
            v1505 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v1505, v1506, 6, v1507, v1508))
            {
              continue;
            }

            v130 = OUTLINED_FUNCTION_24_14();
LABEL_325:
            v1509 = npush_s(v130);
            OUTLINED_FUNCTION_5_20(v1509, v1510, v1511, v1512, v1513, v1514, v1515, v1516, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1517 = OUTLINED_FUNCTION_14_18();
            npush_s(v1517);
            OUTLINED_FUNCTION_32_8();
            v1518 = OUTLINED_FUNCTION_18_16();
            npop(v1518, v1519);
            v1520 = OUTLINED_FUNCTION_20_14();
            npush_s(v1520);
            WORD1(v1597) = &unk_2806BB32F;
            v1521 = OUTLINED_FUNCTION_18_16();
            npop(v1521, v1522);
            v1222 = OUTLINED_FUNCTION_27_11();
LABEL_326:
            npush_s(v1222);
            OUTLINED_FUNCTION_21_14();
            goto LABEL_327;
          case 20:
            v181 = OUTLINED_FUNCTION_1_22();
            v26 = lpta_rpta_loadp(v181, v182, v183);
            v29 = &unk_2806BB320;
LABEL_42:
            if (OUTLINED_FUNCTION_4_20(v26, v27, v28, v29, 0))
            {
              continue;
            }

            v184 = OUTLINED_FUNCTION_24_14();
LABEL_305:
            v1459 = npush_s(v184);
            OUTLINED_FUNCTION_7_20(v1459, v1460, v1461, v1462, v1463, v1464, v1465, v1466, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1467 = OUTLINED_FUNCTION_17_17();
            npush_s(v1467);
            v1468 = OUTLINED_FUNCTION_12_20();
            npop(v1468, v4);
            v1469 = OUTLINED_FUNCTION_20_14();
            npush_s(v1469);
            WORD1(v1597) = 5;
            v1470 = OUTLINED_FUNCTION_16_18();
            npop(v1470, v1471);
            v1472 = OUTLINED_FUNCTION_27_11();
            npush_s(v1472);
            OUTLINED_FUNCTION_21_14();
            goto LABEL_306;
          case 21:
            v889 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v889, v890, v891);
            v892 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v892, v893, 6, v894, v895))
            {
              continue;
            }

            v896 = OUTLINED_FUNCTION_24_14();
            v897 = npush_s(v896);
            OUTLINED_FUNCTION_5_20(v897, v898, v899, v900, v901, v902, v903, v904, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v905 = OUTLINED_FUNCTION_14_18();
            npush_s(v905);
            OUTLINED_FUNCTION_32_8();
            v906 = OUTLINED_FUNCTION_18_16();
            npop(v906, v907);
            v908 = OUTLINED_FUNCTION_20_14();
            npush_s(v908);
            WORD1(v1597) = &unk_2806BB32F;
            v909 = OUTLINED_FUNCTION_18_16();
            npop(v909, v910);
            v911 = OUTLINED_FUNCTION_27_11();
            npush_s(v911);
            OUTLINED_FUNCTION_21_14();
            goto LABEL_327;
          case 22:
            v961 = OUTLINED_FUNCTION_1_22();
            v964 = lpta_rpta_loadp(v961, v962, v963);
            if (OUTLINED_FUNCTION_4_20(v964, v965, v966, &unk_2806BB325, 0))
            {
              continue;
            }

            v967 = OUTLINED_FUNCTION_20_14();
            npush_s(v967);
            WORD1(v1597) = 2;
            v3 = &v1597;
            v968 = OUTLINED_FUNCTION_15_18();
            npop(v968, v969);
            v970 = OUTLINED_FUNCTION_24_14();
            goto LABEL_184;
          case 23:
            v977 = OUTLINED_FUNCTION_1_22();
            v980 = lpta_rpta_loadp(v977, v978, v979);
            if (OUTLINED_FUNCTION_4_20(v980, v981, v982, &unk_2806BB325, 0))
            {
              continue;
            }

            v983 = OUTLINED_FUNCTION_20_14();
            npush_s(v983);
            WORD1(v1597) = 2;
            v3 = &v1597;
            v984 = OUTLINED_FUNCTION_15_18();
            npop(v984, v985);
            v970 = OUTLINED_FUNCTION_23_14();
LABEL_184:
            npush_s(v970);
            v4 = 1;
            WORD1(v1597) = 1;
            v986 = OUTLINED_FUNCTION_15_18();
            npop(v986, v987);
            v988 = OUTLINED_FUNCTION_30_9();
            npush_s(v988);
            WORD1(v1597) = 5;
            v989 = OUTLINED_FUNCTION_15_18();
            npop(v989, v990);
            v991 = OUTLINED_FUNCTION_27_11();
            npush_s(v991);
            OUTLINED_FUNCTION_21_14();
            goto LABEL_283;
          case 24:
            v89 = OUTLINED_FUNCTION_1_22();
            v85 = lpta_rpta_loadp(v89, v90, v91);
            v88 = &unk_2806BB21F;
            goto LABEL_231;
          case 25:
            v162 = OUTLINED_FUNCTION_1_22();
            v165 = lpta_rpta_loadp(v162, v163, v164);
            v168 = &unk_2806BB1E8;
            goto LABEL_179;
          case 26:
            v131 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v131, v132, v133);
            v134 = OUTLINED_FUNCTION_3_21();
            v138 = 6;
            goto LABEL_253;
          case 27:
            v1287 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1287, v1288, v1289);
            v1290 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v1290, v1291, 3, v1292, v1293))
            {
              continue;
            }

            goto LABEL_265;
          case 28:
            v74 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v74, v75, v76);
            v77 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v77, v78, 3, v79, v80))
            {
              continue;
            }

            v81 = OUTLINED_FUNCTION_23_14();
            npush_s(v81);
            OUTLINED_FUNCTION_22_14();
            goto LABEL_266;
          case 29:
          case 34:
            v1252 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1252, v1253, v1254);
            v134 = OUTLINED_FUNCTION_3_21();
            v138 = 4;
LABEL_253:
            if (!insert_2pt_s(v134, v135, v138, v136, v137))
            {
              goto LABEL_254;
            }

            continue;
          case 30:
          case 167:
            v1121 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1121, v1122, v1123);
            v1124 = OUTLINED_FUNCTION_19_15();
            if (insert_2pt_s(v1124, v1125, 5, v1126, v1127))
            {
              continue;
            }

            WORD1(v1597) = 5;
            goto LABEL_255;
          case 31:
            goto LABEL_224;
          case 32:
            v16 = &unk_2806BB44D;
            v17 = 7;
            goto LABEL_224;
          case 33:
          case 46:
          case 162:
            v773 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v773, v774, v775);
            v776 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v776, v777, 2, v778, v779))
            {
              continue;
            }

            v161 = OUTLINED_FUNCTION_23_14();
            goto LABEL_313;
          case 35:
          case 37:
            v1486 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1486, v1487, v1488);
            v1345 = OUTLINED_FUNCTION_3_21();
            v1349 = 4;
            goto LABEL_311;
          case 36:
          case 38:
            v1453 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1453, v1454, v1455);
            v1345 = OUTLINED_FUNCTION_3_21();
            v1349 = 5;
            goto LABEL_311;
          case 39:
            v37 = OUTLINED_FUNCTION_1_22();
            v40 = lpta_rpta_loadp(v37, v38, v39);
            v43 = &unk_2806BB1EC;
            goto LABEL_273;
          case 40:
          case 42:
          case 107:
          case 109:
            v870 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v870, v871, v872);
            v873 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v873, v874, 6, v875, v876))
            {
              continue;
            }

            v877 = OUTLINED_FUNCTION_23_14();
            v878 = npush_s(v877);
            OUTLINED_FUNCTION_8_20(v878, v879, v880, v881, v882, v883, v884, v885, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v886 = OUTLINED_FUNCTION_14_18();
            npush_s(v886);
            v887 = OUTLINED_FUNCTION_12_20();
            npop(v887, v3);
            v888 = OUTLINED_FUNCTION_17_17();
            npush_s(v888);
            WORD1(v1597) = &unk_2806BB32F;
LABEL_270:
            v1315 = OUTLINED_FUNCTION_15_18();
            npop(v1315, v1316);
            OUTLINED_FUNCTION_28_10();
            goto LABEL_288;
          case 41:
          case 43:
          case 108:
          case 110:
            v1433 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1433, v1434, v1435);
            v1436 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v1436, v1437, 7, v1438, v1439))
            {
              continue;
            }

            v1440 = OUTLINED_FUNCTION_23_14();
            v1441 = npush_s(v1440);
            OUTLINED_FUNCTION_5_20(v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1449 = OUTLINED_FUNCTION_14_18();
            npush_s(v1449);
            OUTLINED_FUNCTION_32_8();
            goto LABEL_300;
          case 44:
          case 111:
            v1475 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1475, v1476, v1477);
            v1478 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v1478, v1479, 6, v1480, v1481))
            {
              continue;
            }

            v1482 = OUTLINED_FUNCTION_17_17();
            npush_s(v1482);
            WORD1(v1597) = 2;
            v1483 = OUTLINED_FUNCTION_18_16();
            npop(v1483, v1484);
            v1485 = OUTLINED_FUNCTION_23_14();
LABEL_320:
            npush_s(v1485);
            OUTLINED_FUNCTION_26_13();
            goto LABEL_321;
          case 45:
            v1156 = OUTLINED_FUNCTION_1_22();
            v85 = lpta_rpta_loadp(v1156, v1157, v1158);
            v88 = &unk_2806BB228;
            goto LABEL_231;
          case 47:
          case 113:
          case 115:
            v992 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v992, v993, v994);
            v995 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v995, v996, v997, v998, v999))
            {
              continue;
            }

            v1000 = OUTLINED_FUNCTION_17_17();
            npush_s(v1000);
            WORD1(v1597) = 2;
            v1001 = OUTLINED_FUNCTION_18_16();
            npop(v1001, v1002);
            v1003 = OUTLINED_FUNCTION_23_14();
            npush_s(v1003);
            OUTLINED_FUNCTION_26_13();
            v1004 = OUTLINED_FUNCTION_18_16();
            npop(v1004, v1005);
            v1006 = OUTLINED_FUNCTION_31_9();
            npush_s(v1006);
            OUTLINED_FUNCTION_21_14();
LABEL_300:
            v1450 = OUTLINED_FUNCTION_18_16();
            npop(v1450, v1451);
            v1452 = OUTLINED_FUNCTION_20_14();
            npush_s(v1452);
            WORD1(v1597) = &unk_2806BB32F;
            goto LABEL_327;
          case 48:
            v147 = OUTLINED_FUNCTION_1_22();
            v150 = lpta_rpta_loadp(v147, v148, v149);
            v153 = &unk_2806BB33E;
            goto LABEL_174;
          case 49:
            v277 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v277, v278, v279);
            v280 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v280, v281, v282, v283, v284))
            {
              continue;
            }

            v285 = OUTLINED_FUNCTION_17_17();
            npush_s(v285);
            WORD1(v1597) = 2;
            v286 = OUTLINED_FUNCTION_18_16();
            npop(v286, v287);
            v288 = OUTLINED_FUNCTION_23_14();
            npush_s(v288);
            OUTLINED_FUNCTION_26_13();
            v289 = OUTLINED_FUNCTION_18_16();
            npop(v289, v290);
            v291 = OUTLINED_FUNCTION_31_9();
            goto LABEL_248;
          case 50:
            v1377 = OUTLINED_FUNCTION_1_22();
            v1380 = lpta_rpta_loadp(v1377, v1378, v1379);
            if (OUTLINED_FUNCTION_4_20(v1380, v1381, v1382, &unk_2806BB343, 0))
            {
              continue;
            }

            v3 = 2;
            v1383 = OUTLINED_FUNCTION_20_14();
            v1384 = npush_s(v1383);
            OUTLINED_FUNCTION_10_20(v1384, v1385, v1386, v1387, v1388, v1389, v1390, v1391, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1392 = OUTLINED_FUNCTION_23_14();
            npush_s(v1392);
            OUTLINED_FUNCTION_22_14();
            v1393 = OUTLINED_FUNCTION_16_18();
            npop(v1393, v1394);
            v1395 = OUTLINED_FUNCTION_31_9();
            npush_s(v1395);
            v1396 = OUTLINED_FUNCTION_6_20();
            npop(v1396, v4);
            v1397 = OUTLINED_FUNCTION_20_14();
            npush_s(v1397);
            WORD1(v1597) = 5;
            v1398 = OUTLINED_FUNCTION_16_18();
            npop(v1398, v1399);
            WORD1(v1597) = &unk_2806BB32F;
            goto LABEL_307;
          case 51:
            v1400 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1400, v1401, v1402);
            v1403 = OUTLINED_FUNCTION_19_15();
            if (insert_2pt_s(v1403, v1404, 5, v1405, v1406))
            {
              continue;
            }

            v1407 = OUTLINED_FUNCTION_23_14();
            v1408 = npush_s(v1407);
            OUTLINED_FUNCTION_5_20(v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            WORD1(v1597) = 5;
            goto LABEL_328;
          case 52:
          case 55:
            v1054 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1054, v1055, v1056);
            v1057 = OUTLINED_FUNCTION_0_23();
            goto LABEL_206;
          case 53:
          case 56:
            v1317 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1317, v1318, v1319);
            v1320 = OUTLINED_FUNCTION_2_22();
            v1324 = 5;
            goto LABEL_294;
          case 54:
          case 61:
            HIWORD(v1599) = *(a1 + 2290);
            OUTLINED_FUNCTION_28_10();
            v18 = OUTLINED_FUNCTION_29_10();
            copyvar(v18, v19, v20);
            v21 = OUTLINED_FUNCTION_36_6();
            npush_s(v21);
            v22 = 4;
            goto LABEL_196;
          case 57:
          case 63:
            HIWORD(v1599) = *(a1 + 2290);
LABEL_254:
            OUTLINED_FUNCTION_28_10();
LABEL_255:
            v1255 = &v1597;
            v1256 = (a1 + 3064);
            v1257 = a1;
            goto LABEL_329;
          case 58:
          case 60:
            v1062 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1062, v1063, v1064);
            v1057 = OUTLINED_FUNCTION_2_22();
            v1059 = 5;
LABEL_206:
            if (insert_2pt_s(v1057, v1058, v1059, v1060, v1061))
            {
              continue;
            }

            v1065 = OUTLINED_FUNCTION_23_14();
            v1066 = npush_s(v1065);
            OUTLINED_FUNCTION_8_20(v1066, v1067, v1068, v1069, v1070, v1071, v1072, v1073, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1074 = OUTLINED_FUNCTION_14_18();
            npush_s(v1074);
            v1075 = OUTLINED_FUNCTION_12_20();
            npop(v1075, v3);
            v63 = OUTLINED_FUNCTION_27_11();
            goto LABEL_208;
          case 59:
          case 62:
            v1416 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1416, v1417, v1418);
            v1320 = OUTLINED_FUNCTION_2_22();
            v1324 = 6;
LABEL_294:
            if (insert_2pt_s(v1320, v1321, v1324, v1322, v1323))
            {
              continue;
            }

            v1419 = OUTLINED_FUNCTION_23_14();
            v1420 = npush_s(v1419);
            OUTLINED_FUNCTION_5_20(v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1428 = OUTLINED_FUNCTION_14_18();
            npush_s(v1428);
            OUTLINED_FUNCTION_32_8();
            v1429 = OUTLINED_FUNCTION_18_16();
            npop(v1429, v1430);
            v1431 = OUTLINED_FUNCTION_27_11();
            npush_s(v1431);
            v1432 = OUTLINED_FUNCTION_6_20();
            npop(v1432, 5);
            v373 = OUTLINED_FUNCTION_20_14();
            goto LABEL_296;
          case 64:
          case 130:
            v1223 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1223, v1224, v1225);
            v1226 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v1226, v1227, v1228, v1229, v1230))
            {
              continue;
            }

            v1231 = OUTLINED_FUNCTION_17_17();
            npush_s(v1231);
            WORD1(v1597) = 2;
            v1232 = OUTLINED_FUNCTION_18_16();
            npop(v1232, v1233);
            v1114 = OUTLINED_FUNCTION_23_14();
            goto LABEL_247;
          case 65:
            v1350 = OUTLINED_FUNCTION_1_22();
            v675 = lpta_rpta_loadp(v1350, v1351, v1352);
            v678 = &unk_2806BB361;
            goto LABEL_280;
          case 66:
            v1325 = OUTLINED_FUNCTION_1_22();
            v40 = lpta_rpta_loadp(v1325, v1326, v1327);
            v43 = &unk_2806BB1F0;
            goto LABEL_273;
          case 67:
            v82 = OUTLINED_FUNCTION_1_22();
            v85 = lpta_rpta_loadp(v82, v83, v84);
            v88 = &unk_2806BB22B;
            goto LABEL_231;
          case 68:
            v92 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v92, v93, v94);
            LOWORD(v16) = 4;
            v95 = OUTLINED_FUNCTION_14_18();
            if (insert_2pt_s(v95, v96, 1, v97, v98))
            {
              continue;
            }

            v3 = 3;
            v99 = OUTLINED_FUNCTION_20_14();
            npush_s(v99);
            WORD1(v1597) = 1;
            v4 = &v1597;
            v100 = OUTLINED_FUNCTION_16_18();
            npop(v100, v101);
            npush_s(a1);
            v102 = OUTLINED_FUNCTION_12_20();
            npop(v102, &v1597);
            npush_s(a1);
            WORD1(v1597) = 3;
            v103 = OUTLINED_FUNCTION_16_18();
            npop(v103, v104);
            v105 = OUTLINED_FUNCTION_17_17();
            goto LABEL_96;
          case 69:
            v565 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v565, v566, v567);
            v568 = OUTLINED_FUNCTION_19_15();
            if (insert_2pt_s(v568, v569, 1, v570, v571))
            {
              continue;
            }

            npush_s(a1);
            WORD1(v1597) = 1;
            v572 = OUTLINED_FUNCTION_29_10();
            npop(v572, v573);
            v304 = a1;
            goto LABEL_195;
          case 70:
            v856 = OUTLINED_FUNCTION_1_22();
            v859 = lpta_rpta_loadp(v856, v857, v858);
            v862 = &unk_2806BB22E;
            goto LABEL_285;
          case 71:
          case 73:
            v336 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v336, v337, v338);
            v339 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v339, v340, v341, v342, v343))
            {
              continue;
            }

            v344 = OUTLINED_FUNCTION_17_17();
            v345 = npush_s(v344);
            OUTLINED_FUNCTION_13_20(v345, v346, v347, v348, v349, v350, v351, v352, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v353 = OUTLINED_FUNCTION_24_14();
            npush_s(v353);
            OUTLINED_FUNCTION_22_14();
            v354 = OUTLINED_FUNCTION_15_18();
            npop(v354, v355);
            v356 = OUTLINED_FUNCTION_31_9();
            goto LABEL_137;
          case 72:
            v1363 = OUTLINED_FUNCTION_1_22();
            v859 = lpta_rpta_loadp(v1363, v1364, v1365);
            v862 = &unk_2806BB231;
LABEL_285:
            if (OUTLINED_FUNCTION_9_20(v859, v860, v861, v862, 0))
            {
              continue;
            }

            v1366 = OUTLINED_FUNCTION_20_14();
            npush_s(v1366);
            WORD1(v1597) = 2;
            v3 = &v1597;
            v1367 = OUTLINED_FUNCTION_15_18();
            npop(v1367, v1368);
            v1369 = OUTLINED_FUNCTION_24_14();
            npush_s(v1369);
            v4 = 1;
            WORD1(v1597) = 1;
            v1370 = OUTLINED_FUNCTION_15_18();
            npop(v1370, v1371);
            v1372 = OUTLINED_FUNCTION_31_9();
            npush_s(v1372);
            WORD1(v1597) = 5;
            v1373 = OUTLINED_FUNCTION_15_18();
            npop(v1373, v1374);
            v747 = OUTLINED_FUNCTION_30_9();
            goto LABEL_287;
          case 74:
            v139 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v139, v140, v141);
            LOWORD(v16) = 1;
            v142 = OUTLINED_FUNCTION_19_15();
            if (insert_2pt_s(v142, v143, 1, v144, v145))
            {
              continue;
            }

            v146 = OUTLINED_FUNCTION_23_14();
            goto LABEL_74;
          case 75:
            v1342 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1342, v1343, v1344);
            v1345 = OUTLINED_FUNCTION_3_21();
            v1349 = 6;
LABEL_311:
            if (insert_2pt_s(v1345, v1346, v1349, v1347, v1348))
            {
              continue;
            }

            v161 = OUTLINED_FUNCTION_35_6();
            goto LABEL_313;
          case 76:
            v116 = OUTLINED_FUNCTION_1_22();
            v119 = lpta_rpta_loadp(v116, v117, v118);
            v122 = &unk_2806BB234;
            goto LABEL_227;
          case 77:
          case 80:
            v415 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v415, v416, v417);
            v418 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v418, v419, v420, v421, v422))
            {
              continue;
            }

            v423 = OUTLINED_FUNCTION_24_14();
            goto LABEL_211;
          case 78:
            v1137 = OUTLINED_FUNCTION_1_22();
            v119 = lpta_rpta_loadp(v1137, v1138, v1139);
            v122 = &unk_2806BB237;
LABEL_227:
            if (OUTLINED_FUNCTION_9_20(v119, v120, v121, v122, 0))
            {
              continue;
            }

            v1140 = OUTLINED_FUNCTION_24_14();
            v1141 = npush_s(v1140);
            OUTLINED_FUNCTION_7_20(v1141, v1142, v1143, v1144, v1145, v1146, v1147, v1148, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1149 = OUTLINED_FUNCTION_14_18();
            npush_s(v1149);
            v1150 = OUTLINED_FUNCTION_12_20();
            npop(v1150, v4);
            v483 = OUTLINED_FUNCTION_27_11();
            goto LABEL_229;
          case 79:
            v328 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v328, v329, v330);
            v331 = OUTLINED_FUNCTION_2_22();
            v335 = 3;
            goto LABEL_198;
          case 81:
          case 83:
            v728 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v728, v729, v730);
            v731 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v731, v732, v733, v734, v735))
            {
              continue;
            }

            v492 = OUTLINED_FUNCTION_24_14();
            goto LABEL_136;
          case 82:
            v1190 = OUTLINED_FUNCTION_1_22();
            v1193 = lpta_rpta_loadp(v1190, v1191, v1192);
            if (OUTLINED_FUNCTION_4_20(v1193, v1194, v1195, &unk_2806BB366, 0))
            {
              continue;
            }

            v1196 = OUTLINED_FUNCTION_27_11();
            npush_s(v1196);
            OUTLINED_FUNCTION_21_14();
            v3 = &v1597;
            v1197 = OUTLINED_FUNCTION_15_18();
            npop(v1197, v1198);
            v1199 = OUTLINED_FUNCTION_25_13();
            goto LABEL_259;
          case 84:
            v1040 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1040, v1041, v1042);
            v331 = OUTLINED_FUNCTION_0_23();
LABEL_198:
            if (insert_2pt_s(v331, v332, v335, v333, v334))
            {
              continue;
            }

            v1043 = OUTLINED_FUNCTION_36_6();
LABEL_262:
            npush_s(v1043);
            WORD1(v1597) = v16;
            goto LABEL_266;
          case 85:
            v1258 = OUTLINED_FUNCTION_1_22();
            v1261 = lpta_rpta_loadp(v1258, v1259, v1260);
            if (OUTLINED_FUNCTION_4_20(v1261, v1262, v1263, &unk_2806BB36B, 0))
            {
              continue;
            }

            v1102 = OUTLINED_FUNCTION_24_14();
            goto LABEL_258;
          case 86:
            v799 = OUTLINED_FUNCTION_1_22();
            v666 = lpta_rpta_loadp(v799, v800, v801);
            v669 = &unk_2806BB1F2;
            goto LABEL_149;
          case 87:
            v493 = OUTLINED_FUNCTION_1_22();
            v496 = lpta_rpta_loadp(v493, v494, v495);
            if (OUTLINED_FUNCTION_9_20(v496, v497, v498, &unk_2806BB23A, 0))
            {
              continue;
            }

            v499 = OUTLINED_FUNCTION_17_17();
            v500 = npush_s(v499);
            OUTLINED_FUNCTION_7_20(v500, v501, v502, v503, v504, v505, v506, v507, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            npush_s(a1);
            v508 = OUTLINED_FUNCTION_12_20();
            npop(v508, v4);
            npush_s(a1);
            WORD1(v1597) = 5;
            v509 = OUTLINED_FUNCTION_16_18();
            npop(v509, v510);
            v105 = OUTLINED_FUNCTION_20_14();
LABEL_96:
            npush_s(v105);
            WORD1(v1597) = v16;
            v511 = OUTLINED_FUNCTION_16_18();
            npop(v511, v512);
            WORD1(v1597) = 5;
            goto LABEL_307;
          case 88:
            v225 = OUTLINED_FUNCTION_1_22();
            v228 = lpta_rpta_loadp(v225, v226, v227);
            if (OUTLINED_FUNCTION_9_20(v228, v229, v230, &unk_2806BB23D, 0))
            {
              continue;
            }

            v231 = OUTLINED_FUNCTION_20_14();
            npush_s(v231);
            WORD1(v1597) = 2;
            v3 = &v1597;
            v232 = OUTLINED_FUNCTION_15_18();
            npop(v232, v233);
            v234 = OUTLINED_FUNCTION_24_14();
            npush_s(v234);
            v4 = 1;
            WORD1(v1597) = 1;
            v235 = OUTLINED_FUNCTION_15_18();
            npop(v235, v236);
            v237 = OUTLINED_FUNCTION_27_11();
            npush_s(v237);
            WORD1(v1597) = 5;
            v238 = OUTLINED_FUNCTION_15_18();
            npop(v238, v239);
            v240 = OUTLINED_FUNCTION_30_9();
            npush_s(v240);
            WORD1(v1597) = &unk_2806BB32F;
            v241 = OUTLINED_FUNCTION_15_18();
            npop(v241, v242);
            OUTLINED_FUNCTION_28_10();
            goto LABEL_288;
          case 89:
            v1103 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1103, v1104, v1105);
            v1106 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v1106, v1107, v1108, v1109, v1110))
            {
              continue;
            }

            v1111 = OUTLINED_FUNCTION_17_17();
            npush_s(v1111);
            WORD1(v1597) = 2;
            v1112 = OUTLINED_FUNCTION_18_16();
            npop(v1112, v1113);
            v1114 = OUTLINED_FUNCTION_24_14();
LABEL_247:
            npush_s(v1114);
            OUTLINED_FUNCTION_26_13();
            v1234 = OUTLINED_FUNCTION_18_16();
            npop(v1234, v1235);
            v291 = OUTLINED_FUNCTION_27_11();
LABEL_248:
            npush_s(v291);
            OUTLINED_FUNCTION_21_14();
LABEL_321:
            v1500 = OUTLINED_FUNCTION_18_16();
            npop(v1500, v1501);
            v414 = OUTLINED_FUNCTION_20_14();
            goto LABEL_322;
          case 90:
            v1273 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1273, v1274, v1275);
            v1276 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v1276, v1277, 2, v1278, v1279))
            {
              continue;
            }

            LOWORD(v16) = 1;
            v1043 = OUTLINED_FUNCTION_14_18();
            goto LABEL_262;
          case 91:
          case 92:
            v653 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v653, v654, v655);
            v656 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v656, v657, 2, v658, v659))
            {
              continue;
            }

LABEL_265:
            v1294 = OUTLINED_FUNCTION_14_18();
            npush_s(v1294);
            WORD1(v1597) = 1;
            goto LABEL_266;
          case 93:
            v1128 = OUTLINED_FUNCTION_1_22();
            v210 = lpta_rpta_loadp(v1128, v1129, v1130);
            v213 = &unk_2806BB1F6;
            goto LABEL_250;
          case 94:
            v214 = OUTLINED_FUNCTION_1_22();
            v188 = lpta_rpta_loadp(v214, v215, v216);
            v191 = &unk_2806BB240;
            goto LABEL_235;
          case 95:
            v207 = OUTLINED_FUNCTION_1_22();
            v210 = lpta_rpta_loadp(v207, v208, v209);
            v213 = &unk_2806BB1FA;
            goto LABEL_250;
          case 96:
            v1171 = OUTLINED_FUNCTION_1_22();
            v188 = lpta_rpta_loadp(v1171, v1172, v1173);
            v191 = &unk_2806BB243;
            goto LABEL_235;
          case 97:
            v388 = OUTLINED_FUNCTION_1_22();
            v210 = lpta_rpta_loadp(v388, v389, v390);
            v213 = &unk_2806BB1FC;
            goto LABEL_250;
          case 98:
            v185 = OUTLINED_FUNCTION_1_22();
            v188 = lpta_rpta_loadp(v185, v186, v187);
            v191 = &unk_2806BB246;
            goto LABEL_235;
          case 99:
            v217 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v217, v218, v219);
            v220 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v220, v221, 4, v222, v223))
            {
              continue;
            }

            npush_s(a1);
            v224 = 3;
            goto LABEL_162;
          case 100:
            v1044 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1044, v1045, v1046);
            v723 = OUTLINED_FUNCTION_3_21();
            v727 = 3;
            goto LABEL_201;
          case 101:
            v1236 = OUTLINED_FUNCTION_1_22();
            v210 = lpta_rpta_loadp(v1236, v1237, v1238);
            v213 = &unk_2806BB1FE;
            goto LABEL_250;
          case 102:
            v256 = OUTLINED_FUNCTION_1_22();
            v259 = lpta_rpta_loadp(v256, v257, v258);
            if (OUTLINED_FUNCTION_11_20(v259, v260, v261, &unk_2806BB200, 0))
            {
              continue;
            }

            v262 = OUTLINED_FUNCTION_24_14();
            v263 = npush_s(v262);
            OUTLINED_FUNCTION_7_20(v263, v264, v265, v266, v267, v268, v269, v270, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v271 = OUTLINED_FUNCTION_17_17();
            npush_s(v271);
            WORD1(v1597) = 5;
            v272 = OUTLINED_FUNCTION_16_18();
            npop(v272, v273);
            v274 = OUTLINED_FUNCTION_35_6();
            npush_s(v274);
            v275 = OUTLINED_FUNCTION_6_20();
            npop(v275, v4);
            v276 = OUTLINED_FUNCTION_20_14();
            npush_s(v276);
            WORD1(v1597) = &unk_2806BB32F;
            goto LABEL_117;
          case 103:
            v172 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v172, v173, v174);
            v175 = OUTLINED_FUNCTION_19_15();
            if (insert_2pt_s(v175, v176, 5, v177, v178))
            {
              continue;
            }

            npush_s(a1);
            OUTLINED_FUNCTION_21_14();
            v179 = OUTLINED_FUNCTION_18_16();
            npop(v179, v180);
            WORD1(v1597) = 5;
            goto LABEL_328;
          case 104:
            v765 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v765, v766, v767);
            v768 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v768, v769, 4, v770, v771))
            {
              continue;
            }

            v772 = a1;
            goto LABEL_171;
          case 105:
            v154 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v154, v155, v156);
            v157 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v157, v158, 3, v159, v160))
            {
              continue;
            }

            v161 = a1;
            goto LABEL_313;
          case 106:
            v831 = OUTLINED_FUNCTION_1_22();
            v40 = lpta_rpta_loadp(v831, v832, v833);
            v43 = &unk_2806BB202;
            goto LABEL_273;
          case 112:
            v292 = OUTLINED_FUNCTION_1_22();
            v85 = lpta_rpta_loadp(v292, v293, v294);
            v88 = &unk_2806BB24F;
LABEL_231:
            if (OUTLINED_FUNCTION_9_20(v85, v86, v87, v88, 0))
            {
              continue;
            }

            v1159 = OUTLINED_FUNCTION_23_14();
            v1160 = npush_s(v1159);
            OUTLINED_FUNCTION_7_20(v1160, v1161, v1162, v1163, v1164, v1165, v1166, v1167, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1168 = OUTLINED_FUNCTION_20_14();
            npush_s(v1168);
            OUTLINED_FUNCTION_32_8();
            v1169 = OUTLINED_FUNCTION_16_18();
            npop(v1169, v1170);
            v564 = OUTLINED_FUNCTION_20_14();
            goto LABEL_233;
          case 114:
            v169 = OUTLINED_FUNCTION_1_22();
            v150 = lpta_rpta_loadp(v169, v170, v171);
            v153 = &unk_2806BB375;
            goto LABEL_174;
          case 116:
            v943 = OUTLINED_FUNCTION_1_22();
            v150 = lpta_rpta_loadp(v943, v944, v945);
            v153 = &unk_2806BB37A;
LABEL_174:
            if (OUTLINED_FUNCTION_4_20(v150, v151, v152, v153, 0))
            {
              continue;
            }

            v3 = 2;
            v946 = OUTLINED_FUNCTION_20_14();
            v947 = npush_s(v946);
            OUTLINED_FUNCTION_10_20(v947, v948, v949, v950, v951, v952, v953, v954, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v955 = OUTLINED_FUNCTION_23_14();
            npush_s(v955);
            OUTLINED_FUNCTION_22_14();
            v956 = OUTLINED_FUNCTION_16_18();
            npop(v956, v957);
            v958 = OUTLINED_FUNCTION_31_9();
            npush_s(v958);
            v959 = OUTLINED_FUNCTION_6_20();
            npop(v959, v4);
            v960 = OUTLINED_FUNCTION_20_14();
            npush_s(v960);
            WORD1(v1597) = 5;
LABEL_306:
            v1473 = OUTLINED_FUNCTION_16_18();
            npop(v1473, v1474);
            WORD1(v1597) = &unk_2806BB32F;
            goto LABEL_307;
          case 117:
            v720 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v720, v721, v722);
            v723 = OUTLINED_FUNCTION_3_21();
            v727 = 2;
LABEL_201:
            if (insert_2pt_s(v723, v724, v727, v725, v726))
            {
              continue;
            }

            v161 = a1;
            goto LABEL_313;
          case 120:
            v243 = OUTLINED_FUNCTION_1_22();
            v109 = lpta_rpta_loadp(v243, v244, v245);
            v112 = &unk_2806BB37F;
LABEL_55:
            if (OUTLINED_FUNCTION_4_20(v109, v110, v111, v112, 0))
            {
              continue;
            }

            v246 = OUTLINED_FUNCTION_24_14();
            npush_s(v246);
            OUTLINED_FUNCTION_22_14();
            v3 = &v1597;
            v247 = OUTLINED_FUNCTION_15_18();
            npop(v247, v248);
            v249 = OUTLINED_FUNCTION_17_17();
            npush_s(v249);
            v4 = 2;
            WORD1(v1597) = 2;
            v250 = OUTLINED_FUNCTION_15_18();
            npop(v250, v251);
            v252 = OUTLINED_FUNCTION_30_9();
            npush_s(v252);
            WORD1(v1597) = 5;
            v253 = OUTLINED_FUNCTION_15_18();
            npop(v253, v254);
            v255 = OUTLINED_FUNCTION_17_17();
            npush_s(v255);
            OUTLINED_FUNCTION_21_14();
            goto LABEL_283;
          case 122:
          case 124:
            v484 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v484, v485, v486);
            v487 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v487, v488, v489, v490, v491))
            {
              continue;
            }

            v492 = OUTLINED_FUNCTION_23_14();
LABEL_136:
            v736 = npush_s(v492);
            OUTLINED_FUNCTION_8_20(v736, v737, v738, v739, v740, v741, v742, v743, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v744 = OUTLINED_FUNCTION_14_18();
            npush_s(v744);
            v745 = OUTLINED_FUNCTION_12_20();
            npop(v745, v3);
            v356 = OUTLINED_FUNCTION_27_11();
LABEL_137:
            npush_s(v356);
            v746 = OUTLINED_FUNCTION_6_20();
            npop(v746, v3);
            v747 = OUTLINED_FUNCTION_17_17();
LABEL_287:
            npush_s(v747);
            WORD1(v1597) = &unk_2806BB32F;
            v1375 = OUTLINED_FUNCTION_15_18();
            npop(v1375, v1376);
            OUTLINED_FUNCTION_28_10();
            goto LABEL_288;
          case 123:
            v1047 = OUTLINED_FUNCTION_1_22();
            v1050 = lpta_rpta_loadp(v1047, v1048, v1049);
            v1053 = &unk_2806BB384;
            goto LABEL_214;
          case 125:
            v1099 = OUTLINED_FUNCTION_1_22();
            v1050 = lpta_rpta_loadp(v1099, v1100, v1101);
            v1053 = &unk_2806BB389;
LABEL_214:
            if (OUTLINED_FUNCTION_4_20(v1050, v1051, v1052, v1053, 0))
            {
              continue;
            }

            v1102 = OUTLINED_FUNCTION_23_14();
LABEL_258:
            npush_s(v1102);
            OUTLINED_FUNCTION_22_14();
            v3 = &v1597;
            v1264 = OUTLINED_FUNCTION_15_18();
            npop(v1264, v1265);
            v1266 = OUTLINED_FUNCTION_17_17();
            npush_s(v1266);
            v4 = 2;
            WORD1(v1597) = 2;
            v1267 = OUTLINED_FUNCTION_15_18();
            npop(v1267, v1268);
            v1269 = OUTLINED_FUNCTION_27_11();
            npush_s(v1269);
            v1270 = OUTLINED_FUNCTION_6_20();
            npop(v1270, &v1597);
            v1199 = OUTLINED_FUNCTION_30_9();
LABEL_259:
            npush_s(v1199);
            WORD1(v1597) = 5;
            v1271 = OUTLINED_FUNCTION_15_18();
            npop(v1271, v1272);
            WORD1(v1597) = &unk_2806BB32F;
            goto LABEL_288;
          case 126:
            v513 = OUTLINED_FUNCTION_1_22();
            v427 = lpta_rpta_loadp(v513, v514, v515);
            v430 = &unk_2806BB38E;
            goto LABEL_98;
          case 127:
          case 129:
            v1077 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1077, v1078, v1079);
            v1080 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v1080, v1081, 6, v1082, v1083))
            {
              continue;
            }

            v423 = OUTLINED_FUNCTION_23_14();
LABEL_211:
            v1084 = npush_s(v423);
            OUTLINED_FUNCTION_5_20(v1084, v1085, v1086, v1087, v1088, v1089, v1090, v1091, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1092 = OUTLINED_FUNCTION_14_18();
            npush_s(v1092);
            OUTLINED_FUNCTION_32_8();
            v1093 = OUTLINED_FUNCTION_18_16();
            npop(v1093, v1094);
            v808 = OUTLINED_FUNCTION_27_11();
            goto LABEL_212;
          case 128:
            v424 = OUTLINED_FUNCTION_1_22();
            v427 = lpta_rpta_loadp(v424, v425, v426);
            v430 = &unk_2806BB393;
LABEL_98:
            if (OUTLINED_FUNCTION_4_20(v427, v428, v429, v430, 0))
            {
              continue;
            }

            v516 = OUTLINED_FUNCTION_23_14();
            v517 = npush_s(v516);
            OUTLINED_FUNCTION_7_20(v517, v518, v519, v520, v521, v522, v523, v524, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v525 = OUTLINED_FUNCTION_17_17();
            npush_s(v525);
            v526 = OUTLINED_FUNCTION_12_20();
            npop(v526, v4);
            v527 = OUTLINED_FUNCTION_27_11();
            goto LABEL_130;
          case 131:
            v672 = OUTLINED_FUNCTION_1_22();
            v675 = lpta_rpta_loadp(v672, v673, v674);
            v678 = &unk_2806BB398;
LABEL_280:
            if (OUTLINED_FUNCTION_4_20(v675, v676, v677, v678, 0))
            {
              continue;
            }

            v1353 = OUTLINED_FUNCTION_20_14();
            npush_s(v1353);
            WORD1(v1597) = 2;
            v3 = &v1597;
            v1354 = OUTLINED_FUNCTION_15_18();
            npop(v1354, v1355);
            v1356 = OUTLINED_FUNCTION_23_14();
            npush_s(v1356);
            v4 = 1;
            WORD1(v1597) = 1;
            v1357 = OUTLINED_FUNCTION_15_18();
            npop(v1357, v1358);
            v1359 = OUTLINED_FUNCTION_27_11();
            npush_s(v1359);
            v1360 = OUTLINED_FUNCTION_6_20();
            npop(v1360, &v1597);
            v764 = OUTLINED_FUNCTION_30_9();
            goto LABEL_282;
          case 132:
            v595 = OUTLINED_FUNCTION_1_22();
            v40 = lpta_rpta_loadp(v595, v596, v597);
            v43 = &unk_2806BB206;
LABEL_273:
            if (OUTLINED_FUNCTION_11_20(v40, v41, v42, v43, 0))
            {
              continue;
            }

            v1328 = OUTLINED_FUNCTION_23_14();
            v1329 = npush_s(v1328);
            OUTLINED_FUNCTION_7_20(v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1337 = OUTLINED_FUNCTION_20_14();
            npush_s(v1337);
            WORD1(v1597) = 5;
            v1338 = OUTLINED_FUNCTION_16_18();
            npop(v1338, v1339);
            v1251 = OUTLINED_FUNCTION_17_17();
            goto LABEL_275;
          case 133:
            v200 = OUTLINED_FUNCTION_1_22();
            v203 = lpta_rpta_loadp(v200, v201, v202);
            v206 = &unk_2806BB252;
            goto LABEL_90;
          case 134:
            v16 = &unk_2806BB255;
            goto LABEL_111;
          case 135:
            v863 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v863, v864, v865);
            v866 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v866, v867, 4, v868, v869))
            {
              continue;
            }

            npush_s(a1);
            v224 = 1;
LABEL_162:
            WORD1(v1597) = v224;
            goto LABEL_266;
          case 136:
            v780 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v780, v781, v782);
            v783 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v783, v784, 1, v785, v786))
            {
              continue;
            }

            v787 = OUTLINED_FUNCTION_14_18();
            v788 = npush_s(v787);
            OUTLINED_FUNCTION_13_20(v788, v789, v790, v791, v792, v793, v794, v795, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v796 = OUTLINED_FUNCTION_17_17();
            npush_s(v796);
            v797 = OUTLINED_FUNCTION_6_20();
            npop(v797, v3);
            v798 = OUTLINED_FUNCTION_36_6();
            goto LABEL_237;
          case 137:
            v679 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v679, v680, v681);
            LOWORD(v16) = 3;
            v682 = OUTLINED_FUNCTION_19_15();
            if (insert_2pt_s(v682, v683, 3, v684, v685))
            {
              continue;
            }

            v686 = OUTLINED_FUNCTION_35_6();
            v687 = npush_s(v686);
            OUTLINED_FUNCTION_5_20(v687, v688, v689, v690, v691, v692, v693, v694, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v373 = OUTLINED_FUNCTION_34_7();
            goto LABEL_296;
          case 138:
            v971 = OUTLINED_FUNCTION_1_22();
            v165 = lpta_rpta_loadp(v971, v972, v973);
            v168 = &unk_2806BB208;
LABEL_179:
            if (OUTLINED_FUNCTION_11_20(v165, v166, v167, v168, 0))
            {
              continue;
            }

            v974 = OUTLINED_FUNCTION_14_18();
            npush_s(v974);
            WORD1(v1597) = 5;
            v3 = &v1597;
            goto LABEL_181;
          case 139:
            v295 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v295, v296, v297);
            v298 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v298, v299, 2, v300, v301))
            {
              continue;
            }

            npush_s(a1);
            OUTLINED_FUNCTION_22_14();
            v302 = OUTLINED_FUNCTION_29_10();
            npop(v302, v303);
            v304 = a1;
            goto LABEL_195;
          case 140:
          case 141:
            v912 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v912, v913, v914);
            v915 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v915, v916, 4, v917, v918))
            {
              continue;
            }

            v919 = OUTLINED_FUNCTION_14_18();
            v920 = npush_s(v919);
            OUTLINED_FUNCTION_5_20(v920, v921, v922, v923, v924, v925, v926, v927, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            WORD1(v1597) = 5;
            goto LABEL_328;
          case 142:
            v357 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v357, v358, v359);
            LOWORD(v16) = 3;
            v360 = OUTLINED_FUNCTION_19_15();
            if (insert_2pt_s(v360, v361, 3, v362, v363))
            {
              continue;
            }

            v364 = OUTLINED_FUNCTION_23_14();
            v365 = npush_s(v364);
            OUTLINED_FUNCTION_5_20(v365, v366, v367, v368, v369, v370, v371, v372, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v373 = a1;
            goto LABEL_296;
          case 143:
            v1028 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1028, v1029, v1030);
            v1031 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v1031, v1032, 4, v1033, v1034))
            {
              continue;
            }

            v1035 = OUTLINED_FUNCTION_23_14();
            npush_s(v1035);
            OUTLINED_FUNCTION_22_14();
            v1036 = OUTLINED_FUNCTION_29_10();
            npop(v1036, v1037);
            v304 = a1;
            goto LABEL_195;
          case 144:
          case 146:
            v935 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v935, v936, v937);
            v938 = OUTLINED_FUNCTION_3_21();
            v942 = 4;
            goto LABEL_190;
          case 145:
          case 147:
            v1023 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1023, v1024, v1025);
            v938 = OUTLINED_FUNCTION_3_21();
            v942 = 5;
LABEL_190:
            if (insert_2pt_s(v938, v939, v942, v940, v941))
            {
              continue;
            }

            v1026 = a1;
LABEL_192:
            npush_s(v1026);
            v1027 = 3;
LABEL_314:
            WORD1(v1597) = v1027;
            goto LABEL_315;
          case 148:
            v16 = &unk_2806BB25E;
            goto LABEL_111;
          case 149:
            v381 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v381, v382, v383);
            v384 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v384, v385, 5, v386, v387))
            {
              continue;
            }

            v161 = a1;
LABEL_313:
            npush_s(v161);
            v1027 = 1;
            goto LABEL_314;
          case 150:
            v809 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v809, v810, v811);
            v812 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v812, v813, 8, v814, v815))
            {
              continue;
            }

            v816 = OUTLINED_FUNCTION_25_13();
            v817 = npush_s(v816);
            OUTLINED_FUNCTION_5_20(v817, v818, v819, v820, v821, v822, v823, v824, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v414 = OUTLINED_FUNCTION_25_13();
            goto LABEL_322;
          case 151:
            v308 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v308, v309, v310);
            v311 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v311, v312, 5, v313, v314))
            {
              continue;
            }

            v315 = OUTLINED_FUNCTION_25_13();
            v316 = npush_s(v315);
            OUTLINED_FUNCTION_5_20(v316, v317, v318, v319, v320, v321, v322, v323, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v324 = OUTLINED_FUNCTION_25_13();
            npush_s(v324);
            WORD1(v1597) = &unk_2806BB32F;
            v325 = OUTLINED_FUNCTION_18_16();
            npop(v325, v326);
            v327 = OUTLINED_FUNCTION_34_7();
            npush_s(v327);
            OUTLINED_FUNCTION_21_14();
            goto LABEL_297;
          case 152:
            v431 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v431, v432, v433);
            v434 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v434, v435, v436, v437, v438))
            {
              continue;
            }

            v439 = OUTLINED_FUNCTION_25_13();
            v440 = npush_s(v439);
            OUTLINED_FUNCTION_8_20(v440, v441, v442, v443, v444, v445, v446, v447, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v448 = OUTLINED_FUNCTION_17_17();
            npush_s(v448);
            WORD1(v1597) = &unk_2806BB32F;
            v449 = OUTLINED_FUNCTION_15_18();
            npop(v449, v450);
            v451 = OUTLINED_FUNCTION_34_7();
            npush_s(v451);
            OUTLINED_FUNCTION_21_14();
            goto LABEL_238;
          case 153:
            v748 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v748, v749, v750);
            v751 = OUTLINED_FUNCTION_3_21();
            v755 = 5;
            goto LABEL_154;
          case 154:
          case 155:
            v528 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v528, v529, v530);
            v531 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v531, v532, 6, v533, v534))
            {
              continue;
            }

            v535 = OUTLINED_FUNCTION_25_13();
            v536 = npush_s(v535);
            OUTLINED_FUNCTION_5_20(v536, v537, v538, v539, v540, v541, v542, v543, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v544 = OUTLINED_FUNCTION_34_7();
            npush_s(v544);
            v545 = OUTLINED_FUNCTION_6_20();
            npop(v545, 5);
            v373 = OUTLINED_FUNCTION_25_13();
LABEL_296:
            npush_s(v373);
            WORD1(v1597) = v16;
LABEL_297:
            v1038 = OUTLINED_FUNCTION_18_16();
            goto LABEL_316;
          case 156:
          case 157:
            v1007 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1007, v1008, v1009);
            v1010 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v1010, v1011, 5, v1012, v1013))
            {
              continue;
            }

            v1014 = OUTLINED_FUNCTION_25_13();
            v1015 = npush_s(v1014);
            OUTLINED_FUNCTION_8_20(v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v63 = OUTLINED_FUNCTION_34_7();
            goto LABEL_208;
          case 158:
          case 159:
            v825 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v825, v826, v827);
            v751 = OUTLINED_FUNCTION_3_21();
            v755 = 2;
LABEL_154:
            if (insert_2pt_s(v751, v752, v755, v753, v754))
            {
              continue;
            }

            v828 = OUTLINED_FUNCTION_35_6();
            npush_s(v828);
            OUTLINED_FUNCTION_22_14();
            v829 = OUTLINED_FUNCTION_29_10();
            npop(v829, v830);
            v304 = OUTLINED_FUNCTION_34_7();
            goto LABEL_195;
          case 160:
            v16 = &unk_2806BB261;
LABEL_111:
            v17 = 3;
            goto LABEL_224;
          case 161:
            v16 = &unk_2806BB210;
            v17 = 2;
LABEL_224:
            v1131 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1131, v1132, v1133);
            v1134 = OUTLINED_FUNCTION_3_21();
            if (!insert_2pt_s(v1134, v1135, v17, v16, v1136))
            {
              break;
            }

            continue;
          case 163:
            v452 = OUTLINED_FUNCTION_1_22();
            v210 = lpta_rpta_loadp(v452, v453, v454);
            v213 = &unk_2806BB210;
            goto LABEL_250;
          case 164:
            v398 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v398, v399, v400);
            v401 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v401, v402, 6, v403, v404))
            {
              continue;
            }

            v405 = OUTLINED_FUNCTION_25_13();
            v406 = npush_s(v405);
            OUTLINED_FUNCTION_5_20(v406, v407, v408, v409, v410, v411, v412, v413, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v414 = a1;
LABEL_322:
            npush_s(v414);
            WORD1(v1597) = &unk_2806BB32F;
LABEL_327:
            v1523 = OUTLINED_FUNCTION_18_16();
            npop(v1523, v1524);
            OUTLINED_FUNCTION_28_10();
            goto LABEL_328;
          case 165:
            v455 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v455, v456, v457);
            v458 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v458, v459, 2, v460, v461))
            {
              continue;
            }

            v462 = OUTLINED_FUNCTION_14_18();
            npush_s(v462);
            WORD1(v1597) = 1;
            v463 = OUTLINED_FUNCTION_29_10();
            npop(v463, v464);
            OUTLINED_FUNCTION_28_10();
            v465 = OUTLINED_FUNCTION_29_10();
            copyvar(v465, v466, v467);
            v304 = a1;
LABEL_195:
            npush_s(v304);
            v22 = 3;
LABEL_196:
            WORD1(v1597) = v22;
            v1038 = OUTLINED_FUNCTION_29_10();
            goto LABEL_316;
          case 166:
            v928 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v928, v929, v930);
            v931 = OUTLINED_FUNCTION_3_21();
            if (insert_2pt_s(v931, v932, 3, v933, v934))
            {
              continue;
            }

            v772 = OUTLINED_FUNCTION_23_14();
LABEL_171:
            npush_s(v772);
            OUTLINED_FUNCTION_22_14();
LABEL_266:
            v1295 = OUTLINED_FUNCTION_29_10();
            npop(v1295, v1296);
            OUTLINED_FUNCTION_28_10();
            v1257 = OUTLINED_FUNCTION_29_10();
            goto LABEL_329;
          case 168:
            v717 = OUTLINED_FUNCTION_1_22();
            v210 = lpta_rpta_loadp(v717, v718, v719);
            v213 = &unk_2806BB216;
LABEL_250:
            if (OUTLINED_FUNCTION_11_20(v210, v211, v212, v213, 0))
            {
              continue;
            }

            v1239 = OUTLINED_FUNCTION_24_14();
            v1240 = npush_s(v1239);
            OUTLINED_FUNCTION_7_20(v1240, v1241, v1242, v1243, v1244, v1245, v1246, v1247, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v1248 = OUTLINED_FUNCTION_17_17();
            npush_s(v1248);
            WORD1(v1597) = 5;
            v1249 = OUTLINED_FUNCTION_16_18();
            npop(v1249, v1250);
            v1251 = OUTLINED_FUNCTION_35_6();
LABEL_275:
            npush_s(v1251);
            OUTLINED_FUNCTION_21_14();
            goto LABEL_276;
          case 169:
          case 171:
            v834 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v834, v835, v836);
            v837 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v837, v838, v839, v840, v841))
            {
              continue;
            }

            v842 = OUTLINED_FUNCTION_25_13();
            v843 = npush_s(v842);
            OUTLINED_FUNCTION_8_20(v843, v844, v845, v846, v847, v848, v849, v850, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v4 = 5;
            v851 = OUTLINED_FUNCTION_30_9();
            npush_s(v851);
            v852 = OUTLINED_FUNCTION_6_20();
            npop(v852, v3);
            v853 = OUTLINED_FUNCTION_17_17();
            npush_s(v853);
            WORD1(v1597) = &unk_2806BB32F;
            v854 = OUTLINED_FUNCTION_15_18();
            npop(v854, v855);
            WORD1(v1597) = 5;
            goto LABEL_288;
          case 170:
            v756 = OUTLINED_FUNCTION_1_22();
            v394 = lpta_rpta_loadp(v756, v757, v758);
            v397 = &unk_2806BB3C5;
            goto LABEL_140;
          case 172:
            v391 = OUTLINED_FUNCTION_1_22();
            v394 = lpta_rpta_loadp(v391, v392, v393);
            v397 = &unk_2806BB3CA;
LABEL_140:
            if (OUTLINED_FUNCTION_4_20(v394, v395, v396, v397, 0))
            {
              continue;
            }

            v759 = OUTLINED_FUNCTION_25_13();
            npush_s(v759);
            OUTLINED_FUNCTION_22_14();
            v3 = &v1597;
            v760 = OUTLINED_FUNCTION_15_18();
            npop(v760, v761);
            v762 = OUTLINED_FUNCTION_14_18();
            npush_s(v762);
            v763 = OUTLINED_FUNCTION_6_20();
            npop(v763, &v1597);
            v764 = OUTLINED_FUNCTION_25_13();
LABEL_282:
            npush_s(v764);
            WORD1(v1597) = 5;
LABEL_283:
            v1361 = OUTLINED_FUNCTION_15_18();
            npop(v1361, v1362);
            WORD1(v1597) = &unk_2806BB32F;
LABEL_288:
            v1257 = OUTLINED_FUNCTION_15_18();
            goto LABEL_329;
          case 173:
            v663 = OUTLINED_FUNCTION_1_22();
            v666 = lpta_rpta_loadp(v663, v664, v665);
            v669 = &unk_2806BB218;
LABEL_149:
            if (!OUTLINED_FUNCTION_11_20(v666, v667, v668, v669, 0))
            {
              goto LABEL_150;
            }

            continue;
          case 174:
            v619 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v619, v620, v621);
            v622 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v622, v623, v624, v625, v626))
            {
              continue;
            }

            v627 = OUTLINED_FUNCTION_17_17();
            v628 = npush_s(v627);
            OUTLINED_FUNCTION_7_20(v628, v629, v630, v631, v632, v633, v634, v635, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v636 = OUTLINED_FUNCTION_17_17();
            npush_s(v636);
            WORD1(v1597) = 2;
            v637 = OUTLINED_FUNCTION_16_18();
            npop(v637, v638);
            v639 = OUTLINED_FUNCTION_20_14();
            npush_s(v639);
            WORD1(v1597) = &unk_2806BB32F;
            v640 = OUTLINED_FUNCTION_16_18();
            npop(v640, v641);
            v642 = OUTLINED_FUNCTION_14_18();
            npush_s(v642);
            OUTLINED_FUNCTION_21_14();
LABEL_117:
            v643 = OUTLINED_FUNCTION_16_18();
            npop(v643, v644);
            OUTLINED_FUNCTION_28_10();
            goto LABEL_307;
          case 175:
            v374 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v374, v375, v376);
            v377 = OUTLINED_FUNCTION_2_22();
            if (insert_2pt_s(v377, v378, 1, v379, v380))
            {
              continue;
            }

            v146 = OUTLINED_FUNCTION_36_6();
LABEL_74:
            npush_s(v146);
            WORD1(v1597) = v16;
LABEL_315:
            v1039 = &v1597;
            v1038 = a1;
            goto LABEL_316;
          case 176:
            v546 = OUTLINED_FUNCTION_1_22();
            v549 = lpta_rpta_loadp(v546, v547, v548);
            if (OUTLINED_FUNCTION_9_20(v549, v550, v551, &unk_2806BB267, 0))
            {
              continue;
            }

            v552 = OUTLINED_FUNCTION_24_14();
            v553 = npush_s(v552);
            OUTLINED_FUNCTION_7_20(v553, v554, v555, v556, v557, v558, v559, v560, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v561 = OUTLINED_FUNCTION_20_14();
            npush_s(v561);
            WORD1(v1597) = 2;
            v562 = OUTLINED_FUNCTION_16_18();
            npop(v562, v563);
            v564 = a1;
LABEL_233:
            npush_s(v564);
            WORD1(v1597) = 5;
LABEL_276:
            v1340 = OUTLINED_FUNCTION_16_18();
            npop(v1340, v1341);
            v594 = OUTLINED_FUNCTION_20_14();
            goto LABEL_277;
          case 177:
            v598 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v598, v599, v600);
            v601 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v601, v602, v603, v604, v605))
            {
              continue;
            }

            v606 = OUTLINED_FUNCTION_24_14();
            v607 = npush_s(v606);
            OUTLINED_FUNCTION_8_20(v607, v608, v609, v610, v611, v612, v613, v614, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v615 = OUTLINED_FUNCTION_17_17();
            npush_s(v615);
            WORD1(v1597) = 2;
LABEL_181:
            v975 = OUTLINED_FUNCTION_15_18();
            npop(v975, v976);
            v63 = OUTLINED_FUNCTION_17_17();
LABEL_208:
            npush_s(v63);
            v1076 = OUTLINED_FUNCTION_6_20();
            npop(v1076, v3);
            v798 = OUTLINED_FUNCTION_17_17();
            goto LABEL_237;
          case 178:
            v574 = OUTLINED_FUNCTION_1_22();
            v577 = lpta_rpta_loadp(v574, v575, v576);
            if (OUTLINED_FUNCTION_11_20(v577, v578, v579, &unk_2806BB21A, 0))
            {
              continue;
            }

            v580 = OUTLINED_FUNCTION_24_14();
            v581 = npush_s(v580);
            OUTLINED_FUNCTION_7_20(v581, v582, v583, v584, v585, v586, v587, v588, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v589 = OUTLINED_FUNCTION_20_14();
            npush_s(v589);
            WORD1(v1597) = 5;
            v590 = OUTLINED_FUNCTION_16_18();
            npop(v590, v591);
            v592 = OUTLINED_FUNCTION_17_17();
            npush_s(v592);
            v593 = OUTLINED_FUNCTION_6_20();
            npop(v593, v4);
            v594 = OUTLINED_FUNCTION_17_17();
LABEL_277:
            npush_s(v594);
            WORD1(v1597) = &unk_2806BB32F;
            v1038 = OUTLINED_FUNCTION_16_18();
            goto LABEL_316;
          case 179:
            v645 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v645, v646, v647);
            v648 = OUTLINED_FUNCTION_0_23();
            if (insert_2pt_s(v648, v649, v650, v651, v652))
            {
              continue;
            }

            LOWORD(v17) = 2;
LABEL_150:
            v802 = OUTLINED_FUNCTION_17_17();
            npush_s(v802);
            WORD1(v1597) = v17;
            v17 = &v1597;
            v803 = OUTLINED_FUNCTION_18_16();
            npop(v803, v804);
            v805 = OUTLINED_FUNCTION_24_14();
            npush_s(v805);
            OUTLINED_FUNCTION_26_13();
            v806 = OUTLINED_FUNCTION_18_16();
            npop(v806, v807);
            v808 = OUTLINED_FUNCTION_31_9();
LABEL_212:
            npush_s(v808);
            v1095 = OUTLINED_FUNCTION_6_20();
            npop(v1095, v17);
            v1096 = OUTLINED_FUNCTION_20_14();
            npush_s(v1096);
            WORD1(v1597) = &unk_2806BB32F;
            v1097 = OUTLINED_FUNCTION_18_16();
            npop(v1097, v1098);
            OUTLINED_FUNCTION_28_10();
LABEL_328:
            v1257 = OUTLINED_FUNCTION_18_16();
            goto LABEL_329;
          case 180:
            v616 = OUTLINED_FUNCTION_1_22();
            v188 = lpta_rpta_loadp(v616, v617, v618);
            v191 = &unk_2806BB26A;
LABEL_235:
            if (OUTLINED_FUNCTION_9_20(v188, v189, v190, v191, 0))
            {
              continue;
            }

            v1174 = OUTLINED_FUNCTION_24_14();
            npush_s(v1174);
            OUTLINED_FUNCTION_22_14();
            v3 = &v1597;
            v1175 = OUTLINED_FUNCTION_15_18();
            npop(v1175, v1176);
            v4 = 2;
            v1177 = OUTLINED_FUNCTION_30_9();
            npush_s(v1177);
            WORD1(v1597) = 2;
            v1178 = OUTLINED_FUNCTION_15_18();
            npop(v1178, v1179);
            v1180 = OUTLINED_FUNCTION_35_6();
            npush_s(v1180);
            WORD1(v1597) = 5;
            v1181 = OUTLINED_FUNCTION_15_18();
            npop(v1181, v1182);
            v798 = OUTLINED_FUNCTION_30_9();
LABEL_237:
            npush_s(v798);
            WORD1(v1597) = v16;
LABEL_238:
            v1038 = OUTLINED_FUNCTION_15_18();
LABEL_316:
            npop(v1038, v1039);
            break;
          case 181:
            v468 = OUTLINED_FUNCTION_1_22();
            v203 = lpta_rpta_loadp(v468, v469, v470);
            v206 = &unk_2806BB26D;
LABEL_90:
            if (OUTLINED_FUNCTION_9_20(v203, v204, v205, v206, 0))
            {
              continue;
            }

            v3 = 2;
            v471 = OUTLINED_FUNCTION_20_14();
            v472 = npush_s(v471);
            OUTLINED_FUNCTION_10_20(v472, v473, v474, v475, v476, v477, v478, v479, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v480 = OUTLINED_FUNCTION_24_14();
            npush_s(v480);
            OUTLINED_FUNCTION_22_14();
            v481 = OUTLINED_FUNCTION_16_18();
            npop(v481, v482);
            v483 = OUTLINED_FUNCTION_31_9();
LABEL_229:
            npush_s(v483);
            WORD1(v1597) = 5;
            v1151 = OUTLINED_FUNCTION_16_18();
            npop(v1151, v1152);
            v1153 = OUTLINED_FUNCTION_20_14();
            npush_s(v1153);
            WORD1(v1597) = &unk_2806BB32F;
            v1154 = OUTLINED_FUNCTION_16_18();
            npop(v1154, v1155);
            OUTLINED_FUNCTION_28_10();
LABEL_307:
            v1257 = OUTLINED_FUNCTION_16_18();
LABEL_329:
            copyvar(v1257, v1255, v1256);
            break;
          case 182:
            v695 = OUTLINED_FUNCTION_1_22();
            v698 = lpta_rpta_loadp(v695, v696, v697);
            if (OUTLINED_FUNCTION_4_20(v698, v699, v700, &unk_2806BB3CF, 0))
            {
              continue;
            }

            v3 = 2;
            v701 = OUTLINED_FUNCTION_20_14();
            v702 = npush_s(v701);
            OUTLINED_FUNCTION_10_20(v702, v703, v704, v705, v706, v707, v708, v709, v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v1594, v1595, v1596, v1597, SWORD1(v1597));
            v710 = OUTLINED_FUNCTION_24_14();
            npush_s(v710);
            OUTLINED_FUNCTION_22_14();
            v711 = OUTLINED_FUNCTION_16_18();
            npop(v711, v712);
            v527 = OUTLINED_FUNCTION_31_9();
LABEL_130:
            npush_s(v527);
            v713 = OUTLINED_FUNCTION_6_20();
            npop(v713, v4);
            v714 = OUTLINED_FUNCTION_20_14();
            npush_s(v714);
            WORD1(v1597) = 5;
            v715 = OUTLINED_FUNCTION_16_18();
            npop(v715, v716);
            WORD1(v1597) = &unk_2806BB32F;
            goto LABEL_307;
          case 184:
            goto LABEL_5;
          case 185:
          case 194:
            break;
          case 186:
            goto LABEL_331;
          case 187:
            v670 = OUTLINED_FUNCTION_33_8();
            bspush_ca_scan(v670, v671);
            v660 = OUTLINED_FUNCTION_25_13();
            v662 = 2;
            goto LABEL_336;
          case 188:
            goto LABEL_337;
          case 189:
            v660 = OUTLINED_FUNCTION_25_13();
            v662 = 4;
            goto LABEL_336;
          case 190:
            goto LABEL_340;
          case 191:
            goto LABEL_332;
          case 192:
            goto LABEL_333;
          case 193:
            goto LABEL_346;
          default:
            goto LABEL_4;
        }

        v1525 = OUTLINED_FUNCTION_33_8();
        starttest(v1525, v1526);
        if (lpta_loadp_setscan_r(a1, v1601, 2))
        {
          break;
        }

        v1541 = OUTLINED_FUNCTION_33_8();
        bspush_ca_scan(v1541, v1542);
        v660 = OUTLINED_FUNCTION_25_13();
        v662 = 1;
LABEL_336:
        if (!testFldeq(v660, v661, 8, v662))
        {
LABEL_337:
          if (!advance_tok(a1, v11, v12, v13))
          {
            goto LABEL_340;
          }
        }
      }

LABEL_331:
      v1527 = OUTLINED_FUNCTION_33_8();
      starttest(v1527, v1528);
      v1529 = OUTLINED_FUNCTION_1_22();
      if (!followed_by_hyphen(v1529))
      {
        break;
      }

LABEL_332:
      v1530 = OUTLINED_FUNCTION_33_8();
      starttest(v1530, v1531);
      v1532 = OUTLINED_FUNCTION_1_22();
      if (!in_quotes(v1532))
      {
        copyvar(a1, &v1597, (a1 + 3696));
        break;
      }

LABEL_333:
      v1533 = OUTLINED_FUNCTION_1_22();
      lpta_rpta_loadp(v1533, v1534, v1535);
      OUTLINED_FUNCTION_37_6();
      v1536 = OUTLINED_FUNCTION_25_13();
    }

    while (mark_v(v1536, v1537, v1538, v1539, v1540));
LABEL_340:
    v1543 = OUTLINED_FUNCTION_1_22();
    lpta_rpta_loadp(v1543, v1544, v1545);
    OUTLINED_FUNCTION_37_6();
    v1546 = OUTLINED_FUNCTION_14_18();
    if (!mark_v(v1546, v1547, v1548, v1549, v1550))
    {
      WORD1(v1597) = 2;
      v1551 = OUTLINED_FUNCTION_14_18();
      if (!mark_v(v1551, v1552, 2, v1553, v1554))
      {
        OUTLINED_FUNCTION_37_6();
        v1555 = OUTLINED_FUNCTION_25_13();
        if (!mark_v(v1555, v1556, v1557, v1558, v1559))
        {
          OUTLINED_FUNCTION_37_6();
          v1560 = OUTLINED_FUNCTION_25_13();
          if (!mark_v(v1560, v1561, v1562, v1563, v1564))
          {
            v1565 = OUTLINED_FUNCTION_33_8();
            starttest(v1565, v1566);
            if (*(a1 + 2286) != HIWORD(v1599))
            {
              break;
            }

            v1567 = OUTLINED_FUNCTION_1_22();
            lpta_rpta_loadp(v1567, v1568, v1569);
            OUTLINED_FUNCTION_29_10();
            settvar_s();
            insert_2ptv();
            if (!v1570)
            {
              break;
            }
          }
        }
      }
    }
  }

LABEL_346:
  vretproc(a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return insert_2pt_s(v5, 4u, 5, a4, a5);
}

void OUTLINED_FUNCTION_5_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = 1;

  npop(v36, &a35);
}

void OUTLINED_FUNCTION_7_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = 1;

  npop(v36, &a35);
}

void OUTLINED_FUNCTION_8_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = 1;

  npop(v36, &a35);
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return insert_2pt_s(v5, 4u, 3, a4, a5);
}

void OUTLINED_FUNCTION_10_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = v37;

  npop(v36, &a35);
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return insert_2pt_s(v5, 4u, 2, a4, a5);
}

void OUTLINED_FUNCTION_13_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, __int16 a36)
{
  a36 = v37;

  npop(v36, &a35);
}

uint64_t por_roots(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v253 = *MEMORY[0x277D85DE8];
  v247 = 0;
  v248 = 0;
  v245 = 0;
  v246 = 0;
  v243 = 0;
  v244 = 0;
  HIDWORD(v242) = 0;
  v239 = 0;
  v240 = 0;
  v241 = 0;
  bzero(&v216, 0xB8uLL);
  bzero(v252, 0xC0uLL);
  if (setjmp(v252) || ventproc(a1, &v216, v251, v250, v249, v252) || (get_parm(a1, &v247, a2, -6), get_parm(a1, &v245, a3, -6), get_parm(a1, &v243, a4, -6), HIDWORD(v242) = 65532, LOBYTE(v241) = 0, LODWORD(v239) = -65533, *(*(a1 + 192) + 8121) = 1, memset(*(a1 + 264), *(a1 + 288), *(a1 + 288)), v8 = _MergedGlobals_16, **(a1 + 248) = _MergedGlobals_16, *(*(a1 + 264) + v8) = 0, v9 = OUTLINED_FUNCTION_3_22(), starttest(v9, v10), lpta_rpta_loadp(a1, &v247, &v245), actd_lookup(a1, 1, 0, 0)))
  {
LABEL_4:
    v11 = 94;
  }

  else
  {
LABEL_6:
    move_i(a1, &v242 + 4, 0);
    actd_goto(a1);
    while (2)
    {
      v20 = *(a1 + 104);
      if (v20)
      {
        *(a1 + 104) = 0;
        v21 = v20;
      }

      else
      {
        v21 = vback(a1, 0);
      }

      v22 = v21 - 1;
      inserted = &unk_2806BB484;
      v24 = 3;
      switch(v22)
      {
        case 0:
          goto LABEL_65;
        case 1:
          OUTLINED_FUNCTION_4_21(&unk_2806BB484, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v25 = OUTLINED_FUNCTION_0_24();
          if (insert_2pt_s(v25, v26, 1, v27, v28))
          {
            continue;
          }

          OUTLINED_FUNCTION_8_21();
          lpta_storep(a1, a1 + 5976, v29);
          v30 = &unk_2806BB487;
          goto LABEL_52;
        case 2:
          OUTLINED_FUNCTION_4_21(&unk_2806BB484, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v120 = OUTLINED_FUNCTION_0_24();
          if (insert_2pt_s(v120, v121, 1, v122, v123))
          {
            continue;
          }

          OUTLINED_FUNCTION_8_21();
          lpta_storep(a1, a1 + 5976, v124);
          v30 = &unk_2806BB48A;
LABEL_52:
          v84 = a1;
          v85 = 4;
          v87 = 3;
          v86 = 0;
          goto LABEL_103;
        case 3:
          inserted = &unk_2806BB49D;
          goto LABEL_64;
        case 4:
          inserted = &unk_2806BB4A2;
LABEL_64:
          v24 = 5;
          goto LABEL_65;
        case 5:
          inserted = &unk_2806BB4BB;
          goto LABEL_47;
        case 6:
          inserted = &unk_2806BB4C1;
LABEL_47:
          v24 = 6;
LABEL_65:
          v154 = inserted;
          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v84 = OUTLINED_FUNCTION_0_24();
          v87 = v24;
          v30 = v154;
          goto LABEL_103;
        case 7:
          v76 = OUTLINED_FUNCTION_3_22();
          starttest(v76, v77);
          disambiguate_noun_from_adj(a1, &v247, v78, v79);
          if (inserted)
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v80 = OUTLINED_FUNCTION_0_24();
          inserted = insert_2pt_s(v80, v81, 6, v82, v83);
          if (inserted)
          {
            goto LABEL_32;
          }

          goto LABEL_104;
        case 8:
          v45 = OUTLINED_FUNCTION_3_22();
          starttest(v45, v46);
          v47 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_r(v47, v48, v49))
          {
            goto LABEL_22;
          }

          v210 = OUTLINED_FUNCTION_1_23();
          if (!testFldeq(v210, v211, v212, 3) && !advance_tok(a1, v13, v14, v15))
          {
            goto LABEL_94;
          }

          continue;
        case 9:
          v97 = OUTLINED_FUNCTION_3_22();
          starttest(v97, v98);
          v99 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_r(v99, v100, v101))
          {
            goto LABEL_37;
          }

          v213 = OUTLINED_FUNCTION_1_23();
          if (!testFldeq(v213, v214, v215, 3) && !advance_tok(a1, v13, v14, v15))
          {
            goto LABEL_82;
          }

          continue;
        case 10:
          v125 = OUTLINED_FUNCTION_3_22();
          starttest(v125, v126);
          if (lpta_loadp_setscan_r(a1, &v245, 3))
          {
            goto LABEL_54;
          }

          v208 = 0;
          v206 = a1;
          v207 = 3;
          v209 = 3;
          goto LABEL_116;
        case 11:
          v155 = OUTLINED_FUNCTION_3_22();
          starttest(v155, v156);
          disambiguate_noun_from_adj(a1, &v247, v157, v158);
          if (inserted)
          {
            goto LABEL_96;
          }

          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v159 = OUTLINED_FUNCTION_0_24();
          inserted = insert_2pt_s(v159, v160, 5, v161, v162);
          if (inserted)
          {
            goto LABEL_96;
          }

          goto LABEL_104;
        case 12:
          disambiguate_noun_from_adj(a1, &v247, v14, v15);
          if (inserted)
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        case 13:
          OUTLINED_FUNCTION_10_21(&unk_2806BB484, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, SWORD2(v242), SHIWORD(v242), v243, v244, v245, v246, v247);
          goto LABEL_16;
        case 15:
          goto LABEL_6;
        case 16:
        case 17:
        case 19:
        case 32:
        case 43:
        case 54:
        case 56:
        case 60:
        case 63:
          goto LABEL_104;
        case 18:
LABEL_32:
          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v84 = OUTLINED_FUNCTION_0_24();
          v87 = 6;
          goto LABEL_103;
        case 20:
LABEL_22:
          v50 = OUTLINED_FUNCTION_3_22();
          starttest(v50, v51);
          v52 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_r(v52, v53, v54))
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        case 21:
          goto LABEL_94;
        case 22:
LABEL_23:
          v55 = OUTLINED_FUNCTION_3_22();
          starttest(v55, v56);
          v57 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_l(v57, v58, v59))
          {
            goto LABEL_24;
          }

          v177 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v177, v178);
          v90 = OUTLINED_FUNCTION_6_21();
          v92 = 2;
          v119 = 1;
          goto LABEL_87;
        case 23:
LABEL_24:
          v60 = OUTLINED_FUNCTION_3_22();
          starttest(v60, v61);
          if (OUTLINED_FUNCTION_9_21(v62, v63, v64, v65, v66, v67, v68, v69, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243))
          {
            goto LABEL_94;
          }

          v70 = OUTLINED_FUNCTION_1_23();
          if (testFldeq(v70, v71, v72, 9) || advance_tok(a1, v13, v14, v15))
          {
            continue;
          }

LABEL_27:
          v73 = OUTLINED_FUNCTION_2_23();
          if (!testFldeq(v73, v74, v75, 12) && !advance_tok(a1, v13, v14, v15))
          {
            goto LABEL_93;
          }

          continue;
        case 24:
          v117 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v117, v118);
          v90 = OUTLINED_FUNCTION_2_23();
          v119 = 3;
          goto LABEL_87;
        case 25:
          goto LABEL_88;
        case 26:
          v88 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v88, v89);
          v90 = OUTLINED_FUNCTION_6_21();
          v92 = 2;
          goto LABEL_49;
        case 27:
          v175 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v175, v176);
          v90 = OUTLINED_FUNCTION_2_23();
          v119 = 37;
          goto LABEL_87;
        case 28:
          v90 = OUTLINED_FUNCTION_1_23();
LABEL_49:
          v119 = 2;
LABEL_87:
          if (testFldeq(v90, v91, v92, v119))
          {
            continue;
          }

LABEL_88:
          if (advance_tok(a1, v13, v14, v15))
          {
            continue;
          }

          *(a1 + 136) = 1;
          *(a1 + 112) = v248;
          *(a1 + 128) = 0;
          OUTLINED_FUNCTION_6_21();
          if (lpta_tstmovel())
          {
            continue;
          }

          v179 = OUTLINED_FUNCTION_7_21();
          setscan_l(v179, v180, v181);
          if (v182)
          {
            continue;
          }

          v183 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v183, v184);
LABEL_92:
          OUTLINED_FUNCTION_7_21();
          if (test_string_s())
          {
            continue;
          }

LABEL_93:
          HIWORD(v242) = 1;
LABEL_94:
          v185 = OUTLINED_FUNCTION_3_22();
          starttest(v185, v186);
          if (!HIWORD(v242))
          {
            OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
            v187 = OUTLINED_FUNCTION_0_24();
            inserted = insert_2pt_s(v187, v188, 5, v189, v190);
            if (!inserted)
            {
              goto LABEL_104;
            }
          }

LABEL_96:
          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v84 = OUTLINED_FUNCTION_0_24();
          v87 = 5;
          goto LABEL_103;
        case 29:
          OUTLINED_FUNCTION_7_21();
          if (test_string_s())
          {
            continue;
          }

          goto LABEL_92;
        case 30:
          goto LABEL_92;
        case 31:
        case 55:
          goto LABEL_96;
        case 33:
LABEL_37:
          v102 = OUTLINED_FUNCTION_3_22();
          starttest(v102, v103);
          v104 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_l(v104, v105, v106))
          {
            goto LABEL_82;
          }

          v107 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v107, v108);
          v33 = OUTLINED_FUNCTION_6_21();
          v35 = 2;
          v36 = 1;
          goto LABEL_75;
        case 34:
          goto LABEL_82;
        case 35:
          v31 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v31, v32);
          v33 = OUTLINED_FUNCTION_2_23();
          v36 = 3;
          goto LABEL_75;
        case 36:
          goto LABEL_76;
        case 37:
          v115 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v115, v116);
          v33 = OUTLINED_FUNCTION_6_21();
          v35 = 2;
          goto LABEL_74;
        case 38:
          v37 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v37, v38);
          v33 = OUTLINED_FUNCTION_2_23();
          v36 = 37;
          goto LABEL_75;
        case 39:
          v33 = OUTLINED_FUNCTION_1_23();
LABEL_74:
          v36 = 2;
LABEL_75:
          if (testFldeq(v33, v34, v35, v36))
          {
            continue;
          }

LABEL_76:
          if (advance_tok(a1, v13, v14, v15))
          {
            continue;
          }

          *(a1 + 136) = 1;
          *(a1 + 112) = v248;
          *(a1 + 128) = 0;
          OUTLINED_FUNCTION_6_21();
          if (lpta_tstmovel())
          {
            continue;
          }

          v163 = OUTLINED_FUNCTION_7_21();
          setscan_l(v163, v164, v165);
          if (v166)
          {
            continue;
          }

          v167 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v167, v168);
LABEL_80:
          if (test_string_s())
          {
            continue;
          }

          HIWORD(v242) = 1;
LABEL_82:
          v169 = OUTLINED_FUNCTION_3_22();
          starttest(v169, v170);
          if (HIWORD(v242))
          {
            goto LABEL_102;
          }

          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v171 = OUTLINED_FUNCTION_0_24();
          inserted = insert_2pt_s(v171, v172, 4, v173, v174);
          if (inserted)
          {
            goto LABEL_102;
          }

          goto LABEL_104;
        case 40:
          OUTLINED_FUNCTION_7_21();
          if (test_string_s())
          {
            continue;
          }

          goto LABEL_80;
        case 41:
          goto LABEL_80;
        case 42:
        case 53:
          goto LABEL_102;
        case 44:
LABEL_54:
          v127 = OUTLINED_FUNCTION_3_22();
          starttest(v127, v128);
          if (OUTLINED_FUNCTION_9_21(v129, v130, v131, v132, v133, v134, v135, v136, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243))
          {
            goto LABEL_55;
          }

          v203 = OUTLINED_FUNCTION_1_23();
          if (!testFldeq(v203, v204, v205, 9) && !advance_tok(a1, v13, v14, v15))
          {
            v206 = OUTLINED_FUNCTION_2_23();
            v209 = 12;
LABEL_116:
            if (!testFldeq(v206, v207, v208, v209) && !advance_tok(a1, v13, v14, v15))
            {
              goto LABEL_100;
            }
          }

          continue;
        case 45:
          goto LABEL_100;
        case 46:
LABEL_55:
          v137 = OUTLINED_FUNCTION_3_22();
          starttest(v137, v138);
          if (OUTLINED_FUNCTION_9_21(v139, v140, v141, v142, v143, v144, v145, v146, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243))
          {
            goto LABEL_56;
          }

          v191 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v191, v192);
          goto LABEL_98;
        case 47:
LABEL_56:
          v147 = OUTLINED_FUNCTION_3_22();
          starttest(v147, v148);
          v149 = OUTLINED_FUNCTION_5_21();
          if (lpta_loadp_setscan_l(v149, v150, v151))
          {
            goto LABEL_100;
          }

          v152 = OUTLINED_FUNCTION_3_22();
          bspush_ca_scan(v152, v153);
          goto LABEL_58;
        case 48:
          v93 = OUTLINED_FUNCTION_1_23();
          v96 = 5;
          goto LABEL_59;
        case 49:
LABEL_98:
          v193 = OUTLINED_FUNCTION_3_22();
          if (!test_synch(v193, v194, 1, v195))
          {
            goto LABEL_99;
          }

          continue;
        case 50:
          goto LABEL_99;
        case 51:
          if (advance_tok(a1, v13, v14, v15))
          {
            continue;
          }

          goto LABEL_58;
        case 52:
LABEL_58:
          v93 = OUTLINED_FUNCTION_2_23();
          v96 = 19;
LABEL_59:
          if (testFldeq(v93, v94, v95, v96) || advance_tok(a1, v13, v14, v15))
          {
            continue;
          }

LABEL_99:
          HIWORD(v242) = 1;
LABEL_100:
          v196 = OUTLINED_FUNCTION_3_22();
          starttest(v196, v197);
          if (!HIWORD(v242))
          {
            OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
            v198 = OUTLINED_FUNCTION_0_24();
            inserted = insert_2pt_s(v198, v199, 4, v200, v201);
            if (!inserted)
            {
              goto LABEL_104;
            }
          }

LABEL_102:
          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v84 = OUTLINED_FUNCTION_0_24();
          v87 = 4;
          goto LABEL_103;
        case 57:
LABEL_40:
          OUTLINED_FUNCTION_10_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, SWORD2(v242), SHIWORD(v242), v243, v244, v245, v246, v247);
          goto LABEL_41;
        case 58:
LABEL_41:
          v109 = OUTLINED_FUNCTION_3_22();
          starttest(v109, v110);
          if (HIWORD(v242) != 1)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v111 = OUTLINED_FUNCTION_0_24();
          inserted = insert_2pt_s(v111, v112, 7, v113, v114);
          if (inserted)
          {
            goto LABEL_43;
          }

          goto LABEL_104;
        case 59:
        case 62:
          goto LABEL_43;
        case 61:
LABEL_16:
          v39 = OUTLINED_FUNCTION_3_22();
          starttest(v39, v40);
          if (HIWORD(v242) == 1)
          {
            OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
            v41 = OUTLINED_FUNCTION_0_24();
            inserted = insert_2pt_s(v41, v42, 7, v43, v44);
            if (!inserted)
            {
              goto LABEL_104;
            }
          }

LABEL_43:
          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          v84 = OUTLINED_FUNCTION_0_24();
          v87 = 7;
LABEL_103:
          inserted = insert_2pt_s(v84, v85, v87, v30, v86);
          if (inserted)
          {
            continue;
          }

LABEL_104:
          OUTLINED_FUNCTION_4_21(inserted, v13, v14, v15, v16, v17, v18, v19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          settvar_s();
          insert_2ptv();
          if (v202)
          {
            continue;
          }

          v11 = 0;
          *(a1 + 3886) = 1;
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  vretproc(a1);
  return v11;
}

uint64_t OUTLINED_FUNCTION_4_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return lpta_rpta_loadp(v39, va, &a38);
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return insert_l(v0, 4);
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  return lpta_loadp_setscan_r(v36, &a36, 2);
}

void OUTLINED_FUNCTION_10_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, __int16 a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{

  disambiguate_travesso(v42, &a42, &a38, &a36);
}

uint64_t suffixes(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v20[1] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18[0] = 0;
  v18[1] = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  bzero(v14, 0xB8uLL);
  bzero(v24, 0xC0uLL);
  if (setjmp(v24) || ventproc(a1, v14, v23, v22, v21, v24) || (get_parm(a1, v20, a2, -6), get_parm(a1, v19, a3, -6), get_parm(a1, v18, a4, -6), LOBYTE(v17) = 0, LODWORD(v15) = -65533, *(*(a1 + 192) + 8121) = 0, memset(*(a1 + 264), *(a1 + 288), *(a1 + 288)), starttest(a1, 4), lpta_rpta_loadp(a1, v20, v19), actd_lookup(a1, 2, 0, 0)))
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
      v10 = *(a1 + 104);
      if (v10)
      {
        *(a1 + 104) = 0;
        v11 = v10;
      }

      else
      {
        v11 = vback(a1, 0);
      }

      v12 = &_MergedGlobals_17;
      switch(v11)
      {
        case 1:
          goto LABEL_13;
        case 2:
          v12 = &unk_2806BB4F3;
          goto LABEL_13;
        case 3:
          v12 = &unk_2806BB4F7;
LABEL_13:
          lpta_rpta_loadp(a1, v20, v19);
          if (!insert_2pt_s(a1, 4u, 4, v12, 0))
          {
            goto LABEL_14;
          }

          continue;
        case 5:
          goto LABEL_6;
        case 6:
        case 7:
LABEL_14:
          lpta_rpta_loadp(a1, v20, v19);
          settvar_s();
          insert_2ptv();
          if (v13)
          {
            continue;
          }

          v8 = 0;
          ++*(a1 + 5946);
          *(a1 + 3874) = 1;
          break;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

  vretproc(a1);
  return v8;
}

uint64_t por_char_name()
{
  OUTLINED_FUNCTION_12_21();
  OUTLINED_FUNCTION_10_22(v2, v3, v4, v5, v6, v7, v8, v9, v246, v250, v254, v258, v262, v266, v270, v274, v278, v282, v286, v290, v294, v298, v302, v306, v310, v314, v318, v322, v326, v330, v334, v338, v342, v343, v344, SHIDWORD(v344), v345, v346, v347, v348);
  OUTLINED_FUNCTION_14_19(v10, v11, v12, v13, v14, v15, v16, v17, v247, v251, v255, v259, v263, v267, v271, v275, v279, v283, v287, v291, v295, v299, v303, v307, v311, v315, v319, v323, v327, v331, v335, v339, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_13_21(v18, v19, v20, v21, v22, v23, v24, v25, v248, v252, v256, v260, v264, v268, v272, v276, v280, v284, v288, v292, v296, v300, v304, v308, v312, v316, v320, v324, v328, v332, v336, v340, v342, v343, v344, v345, v346, v347, v348, v349, SHIDWORD(v349), v350, SWORD2(v350), SHIWORD(v350), v351, SWORD2(v351), SBYTE6(v351), SHIBYTE(v351), v352, v353) || (v26 = OUTLINED_FUNCTION_5_22(), get_parm(v26, v27, v28, -6), OUTLINED_FUNCTION_11_21(), OUTLINED_FUNCTION_15_19(v29, v30, v31, v32, v33, v34, v35, v36, v249, v253, v257, v261, v265, v269, v273, v277, v281, v285, v289, v293, v297, v301, v305, v309, v313, v317, v321, v325, v329, v333, v337, v341, v342, v343, v344, SHIDWORD(v344)), fence_22(v0), v37 = OUTLINED_FUNCTION_5_22(), lpta_rpta_loadp(v37, v38, v39), actd_lookup(v0, 3, 0, 0)))
  {
LABEL_4:
    vretproc(v0);
    return 94;
  }

  v41 = 0;
LABEL_6:
  starttest(v0, 148);
  if (*(v0 + 2750) == *(v0 + 2742) && (starttest_e(v0, 148), !lpta_loadp_setscan_r(v0, &v347, 1)))
  {
    bspush_ca_scan_boa();
    v49 = OUTLINED_FUNCTION_2_24();
    if (testFldeq(v49, v50, v51, 1))
    {
      v48 = v41;
    }

    else
    {
      v48 = 1;
    }
  }

  else
  {
LABEL_8:
    actd_goto(v0);
    v48 = v41;
  }

  while (2)
  {
    v52 = *(v0 + 104);
    if (v52)
    {
      *(v0 + 104) = 0;
      v53 = v52;
      v54 = v48;
    }

    else
    {
      v53 = vback(v0, v48);
      v54 = 0;
    }

    v55 = &unk_2806BBB06;
    v56 = 15;
    switch(v53)
    {
      case 1:
        v55 = &unk_2806BB549;
        goto LABEL_203;
      case 2:
        v120 = OUTLINED_FUNCTION_6_22();
        starttest(v120, v121);
        v122 = v0;
        v123 = 1;
        goto LABEL_209;
      case 3:
        v219 = OUTLINED_FUNCTION_6_22();
        starttest(v219, v220);
        v122 = v0;
        v123 = 2;
LABEL_209:
        move_i(v122, &v344 + 4, v123);
        v221 = OUTLINED_FUNCTION_0_25();
        por_1_and_2(v221, v222, v223, &v344 + 4);
        goto LABEL_206;
      case 4:
        v117 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v117, v118, v119);
        v112 = OUTLINED_FUNCTION_1_24();
        v116 = 4;
        goto LABEL_205;
      case 5:
        v55 = &unk_2806BB63F;
        goto LABEL_199;
      case 6:
        v55 = &unk_2806BB5A9;
        goto LABEL_159;
      case 7:
        v55 = &unk_2806BB551;
        goto LABEL_203;
      case 8:
        v55 = &unk_2806BB555;
        goto LABEL_203;
      case 9:
        v55 = &unk_2806BB559;
        goto LABEL_203;
      case 10:
        v55 = &unk_2806BB55D;
        goto LABEL_203;
      case 11:
        OUTLINED_FUNCTION_4_22();
        if (v61)
        {
          goto LABEL_4;
        }

        goto LABEL_226;
      case 12:
        OUTLINED_FUNCTION_4_22();
        if (v61)
        {
          goto LABEL_4;
        }

        v62 = OUTLINED_FUNCTION_6_22();
        starttest(v62, v63);
        v64 = OUTLINED_FUNCTION_6_22();
        bspush_ca(v64);
        v65 = OUTLINED_FUNCTION_9_22();
        v68 = lpta_loadp_setscan_l(v65, v66, v67);
        v48 = v54;
        if (!v68)
        {
          v69 = OUTLINED_FUNCTION_2_24();
          v72 = testFldeq(v69, v70, v71, 1);
          v48 = v54;
          if (!v72)
          {
            goto LABEL_124;
          }
        }

        continue;
      case 13:
        v124 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v124, v125, v126);
        v112 = OUTLINED_FUNCTION_1_24();
        v116 = 15;
        goto LABEL_205;
      case 14:
        v55 = &unk_2806BBD39;
        goto LABEL_129;
      case 15:
        v55 = &unk_2806BB645;
        goto LABEL_199;
      case 16:
        v55 = &unk_2806BB503;
        goto LABEL_190;
      case 17:
        v55 = &unk_2806BB505;
        goto LABEL_190;
      case 18:
        v55 = &unk_2806BB8F7;
        goto LABEL_211;
      case 19:
        v55 = &unk_2806BB51F;
        goto LABEL_197;
      case 20:
        OUTLINED_FUNCTION_4_22();
        if (v61)
        {
          goto LABEL_44;
        }

        v88 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v88, v89, v90);
        v91 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v91, v92, 2, v93, v94))
        {
          goto LABEL_44;
        }

        goto LABEL_228;
      case 21:
        OUTLINED_FUNCTION_4_22();
        if (v61)
        {
          goto LABEL_4;
        }

        goto LABEL_222;
      case 22:
        v159 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v159, v160, v161);
        v112 = OUTLINED_FUNCTION_1_24();
        v116 = 21;
        goto LABEL_205;
      case 23:
        v55 = &unk_2806BB522;
        goto LABEL_197;
      case 24:
        v55 = &unk_2806BB509;
        goto LABEL_190;
      case 25:
        v55 = &unk_2806BB525;
        goto LABEL_197;
      case 26:
        v55 = &unk_2806BB50B;
        goto LABEL_190;
      case 27:
        v55 = &unk_2806BBB33;
        goto LABEL_204;
      case 28:
        v55 = &unk_2806BB561;
        goto LABEL_203;
      case 29:
        v55 = &unk_2806BB50D;
        goto LABEL_190;
      case 30:
        v55 = &unk_2806BB565;
        goto LABEL_203;
      case 31:
        v55 = &unk_2806BB528;
        goto LABEL_197;
      case 32:
        v55 = &unk_2806BB52B;
        goto LABEL_197;
      case 33:
        OUTLINED_FUNCTION_4_22();
        if (v61)
        {
          goto LABEL_4;
        }

LABEL_226:
        v242 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v242, v243, v244);
        v234 = OUTLINED_FUNCTION_1_24();
        v238 = 2;
        goto LABEL_227;
      case 34:
        OUTLINED_FUNCTION_4_22();
        if (v61)
        {
          goto LABEL_4;
        }

LABEL_222:
        v231 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v231, v232, v233);
        v234 = OUTLINED_FUNCTION_1_24();
        v238 = 15;
        goto LABEL_227;
      case 35:
        OUTLINED_FUNCTION_4_22();
        if (v61)
        {
          goto LABEL_4;
        }

        v239 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v239, v240, v241);
        v234 = OUTLINED_FUNCTION_1_24();
        v238 = 21;
LABEL_227:
        if (!insert_2pt_s(v234, v235, v238, v236, v237))
        {
          goto LABEL_228;
        }

        goto LABEL_4;
      case 36:
      case 186:
      case 189:
        goto LABEL_186;
      case 37:
        v55 = &unk_2806BB511;
        goto LABEL_190;
      case 38:
        v55 = &unk_2806BB569;
        goto LABEL_203;
      case 39:
        v55 = &unk_2806BB56D;
        goto LABEL_203;
      case 40:
        v55 = &unk_2806BB571;
        goto LABEL_203;
      case 41:
        v55 = &unk_2806BB513;
        goto LABEL_190;
      case 42:
        v55 = &unk_2806BB515;
        goto LABEL_190;
      case 43:
        v55 = &unk_2806BBB51;
        goto LABEL_204;
      case 44:
        v55 = &unk_2806BBB60;
        goto LABEL_204;
      case 45:
        v55 = &unk_2806BB75D;
        goto LABEL_114;
      case 46:
        v55 = &unk_2806BB52E;
        goto LABEL_197;
      case 47:
        v55 = &unk_2806BB64B;
        goto LABEL_199;
      case 48:
        v55 = &unk_2806BB531;
        goto LABEL_197;
      case 49:
        v55 = &unk_2806BB6C3;
        goto LABEL_188;
      case 50:
        v55 = &unk_2806BB517;
        goto LABEL_190;
      case 51:
        v55 = &unk_2806BBCEC;
        goto LABEL_151;
      case 52:
        v55 = &unk_2806BB651;
        goto LABEL_199;
      case 53:
        v55 = &unk_2806BBCDA;
        v56 = 18;
        goto LABEL_204;
      case 54:
        v55 = &unk_2806BB657;
        goto LABEL_199;
      case 55:
        v73 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v73, v74, v75);
        v76 = OUTLINED_FUNCTION_1_24();
        inserted = insert_2pt_s(v76, v77, 5, v78, v79);
        v48 = v54;
        if (inserted)
        {
          continue;
        }

        OUTLINED_FUNCTION_0_25();
        add_por_plural();
        goto LABEL_35;
      case 56:
      case 182:
      case 187:
        goto LABEL_171;
      case 57:
        v55 = &unk_2806BB816;
        goto LABEL_182;
      case 58:
        v200 = OUTLINED_FUNCTION_6_22();
        starttest(v200, v201);
        if (*(v0 + 2838) != *(v0 + 2822))
        {
          goto LABEL_171;
        }

        v202 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v202, v203, v204);
        v205 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v205, v206, 5, v207, v208))
        {
          goto LABEL_171;
        }

        goto LABEL_228;
      case 59:
      case 91:
        v55 = &unk_2806BB537;
        goto LABEL_197;
      case 60:
        v55 = &unk_2806BBC14;
        goto LABEL_111;
      case 61:
        v55 = &unk_2806BBC74;
        goto LABEL_177;
      case 62:
        if (*(v0 + 2794) != *(v0 + 2790))
        {
          goto LABEL_78;
        }

        v127 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v127, v128, v129);
        v130 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v130, v131, 1, v132, v133))
        {
          goto LABEL_78;
        }

        goto LABEL_228;
      case 63:
        v55 = &unk_2806BB765;
        goto LABEL_114;
      case 64:
        v55 = &unk_2806BB57D;
        goto LABEL_203;
      case 65:
        v55 = &unk_2806BB5C7;
        goto LABEL_159;
      case 66:
        v55 = &unk_2806BBA6C;
        goto LABEL_147;
      case 67:
        v55 = &unk_2806BBB6F;
        goto LABEL_204;
      case 68:
        v55 = &unk_2806BBC24;
        goto LABEL_111;
      case 69:
        v55 = &unk_2806BB9B4;
        goto LABEL_194;
      case 70:
        v55 = &unk_2806BBA38;
        goto LABEL_185;
      case 71:
        v55 = &unk_2806BB95C;
        goto LABEL_174;
      case 72:
        v55 = &unk_2806BBB7E;
        goto LABEL_204;
      case 73:
        v55 = &unk_2806BB5CC;
        goto LABEL_159;
      case 74:
        v195 = OUTLINED_FUNCTION_6_22();
        starttest(v195, v196);
        v197 = OUTLINED_FUNCTION_9_22();
        if (!lpta_loadp_setscan_r(v197, v198, v199))
        {
          v224 = OUTLINED_FUNCTION_3_23();
          v226 = testFldeq(v224, v225, 4, 4);
          v48 = v54;
          if (!v226)
          {
            v227 = advance_tok(v0, v54, v42, v43);
            v48 = v54;
            if (!v227)
            {
              v228 = OUTLINED_FUNCTION_0_25();
              lpta_rpta_loadp(v228, v229, v230);
              v112 = OUTLINED_FUNCTION_1_24();
              v116 = 12;
              goto LABEL_205;
            }
          }

          continue;
        }

LABEL_171:
        v209 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v209, v210, v211);
        v112 = OUTLINED_FUNCTION_1_24();
        v116 = 9;
LABEL_205:
        v218 = insert_2pt_s(v112, v113, v116, v114, v115);
LABEL_206:
        v48 = v54;
        if (v218)
        {
          continue;
        }

LABEL_228:
        insert_space(v0, &v347, v42, v43, v44, v45, v46, v47);
LABEL_229:
        vretproc(v0);
        return 0;
      case 75:
        v55 = &unk_2806BB828;
        goto LABEL_182;
      case 76:
        v55 = &unk_2806BB831;
        goto LABEL_182;
      case 77:
        v55 = &unk_2806BB83A;
        goto LABEL_182;
      case 78:
        v55 = &unk_2806BB6CA;
        goto LABEL_188;
      case 79:
      case 88:
        v55 = &unk_2806BB5D1;
        goto LABEL_159;
      case 80:
        v55 = &unk_2806BBD78;
        goto LABEL_129;
      case 81:
        v150 = OUTLINED_FUNCTION_6_22();
        starttest(v150, v151);
        if (*(v0 + 2810) != *(v0 + 2806))
        {
          goto LABEL_186;
        }

        v152 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v152, v153, v154);
        v155 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v155, v156, 3, v157, v158))
        {
          goto LABEL_186;
        }

        goto LABEL_228;
      case 82:
        v55 = &unk_2806BBB8D;
        goto LABEL_204;
      case 83:
        v55 = &unk_2806BBCFF;
LABEL_151:
        v56 = 19;
        goto LABEL_204;
      case 84:
        v55 = &unk_2806BB581;
        goto LABEL_203;
      case 85:
        v55 = &unk_2806BB967;
LABEL_174:
        v56 = 11;
        goto LABEL_204;
      case 86:
        v55 = &unk_2806BBA45;
LABEL_185:
        v56 = 13;
        goto LABEL_204;
      case 87:
        v55 = &unk_2806BBA7A;
        goto LABEL_147;
      case 89:
      case 106:
        v55 = &unk_2806BB5C2;
        goto LABEL_159;
      case 90:
        v55 = &unk_2806BBC34;
        goto LABEL_111;
      case 92:
      case 107:
        v55 = &unk_2806BBC44;
        goto LABEL_111;
      case 93:
      case 152:
        goto LABEL_229;
      case 94:
        v55 = &unk_2806BBE19;
        v56 = 29;
        goto LABEL_204;
      case 95:
        v55 = &unk_2806BB6D1;
        goto LABEL_188;
      case 96:
        v55 = &unk_2806BB5DB;
        goto LABEL_159;
      case 97:
      case 105:
        v55 = &unk_2806BB6D8;
        goto LABEL_188;
      case 98:
        v55 = &unk_2806BB53D;
LABEL_197:
        v56 = 3;
        goto LABEL_204;
      case 99:
        v55 = &unk_2806BBDB7;
        v56 = 22;
        goto LABEL_204;
      case 100:
        v55 = &unk_2806BB6DF;
        goto LABEL_188;
      case 101:
        v55 = &unk_2806BB5E0;
        goto LABEL_159;
      case 102:
        v55 = &unk_2806BB843;
        goto LABEL_182;
      case 103:
        v55 = &unk_2806BBC54;
LABEL_111:
        v56 = 16;
        goto LABEL_204;
      case 104:
        v55 = &unk_2806BBDE5;
        v56 = 25;
        goto LABEL_204;
      case 108:
        v55 = &unk_2806BB65D;
LABEL_199:
        v56 = 6;
        goto LABEL_204;
      case 109:
        v162 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v162, v163, v164);
        v165 = OUTLINED_FUNCTION_1_24();
        v169 = insert_2pt_s(v165, v166, 4, v167, v168);
        v48 = v54;
        if (v169)
        {
          continue;
        }

        OUTLINED_FUNCTION_0_25();
        add_por_plural();
        goto LABEL_228;
      case 110:
        v184 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v184, v185, v186);
        v112 = OUTLINED_FUNCTION_1_24();
        v116 = 13;
        goto LABEL_205;
      case 111:
        v55 = &unk_2806BBC85;
        goto LABEL_177;
      case 112:
        v55 = &unk_2806BBC96;
        goto LABEL_177;
      case 113:
        v55 = &unk_2806BB51B;
        goto LABEL_190;
      case 114:
        v55 = &unk_2806BB84C;
        goto LABEL_182;
      case 115:
        v55 = &unk_2806BBA88;
LABEL_147:
        v56 = 14;
        goto LABEL_204;
      case 116:
        v55 = &unk_2806BB6E6;
LABEL_188:
        v56 = 7;
        goto LABEL_204;
      case 117:
        v55 = &unk_2806BBB9C;
        goto LABEL_204;
      case 118:
        v55 = &unk_2806BBCA7;
LABEL_177:
        v56 = 17;
        goto LABEL_204;
      case 119:
        v55 = &unk_2806BBDCD;
        v56 = 24;
        goto LABEL_204;
      case 120:
        v55 = &unk_2806BB855;
        goto LABEL_182;
      case 121:
        v187 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v187, v188, v189);
        v190 = OUTLINED_FUNCTION_1_24();
        v194 = insert_2pt_s(v190, v191, 3, v192, v193);
        v48 = v54;
        if (v194)
        {
          continue;
        }

        v245 = OUTLINED_FUNCTION_3_23();
        npush_s(v245);
        *(v0 + 3602) = 10;
        npop(v0, (v0 + 3600));
        goto LABEL_228;
      case 122:
        v55 = &unk_2806BB9CC;
        goto LABEL_194;
      case 123:
        v55 = &unk_2806BBE36;
        v56 = 31;
        goto LABEL_204;
      case 124:
        v55 = &unk_2806BB5B8;
        goto LABEL_159;
      case 125:
        v55 = &unk_2806BB589;
        goto LABEL_203;
      case 126:
        v55 = &unk_2806BB9D8;
LABEL_194:
        v56 = 12;
        goto LABEL_204;
      case 127:
        v55 = &unk_2806BB76D;
        goto LABEL_114;
      case 128:
        v55 = &unk_2806BB5E5;
        goto LABEL_159;
      case 129:
        v55 = &unk_2806BB58D;
LABEL_203:
        v56 = 4;
        goto LABEL_204;
      case 130:
        v55 = &unk_2806BB775;
        goto LABEL_114;
      case 131:
        v55 = &unk_2806BBDFE;
        v56 = 27;
        goto LABEL_204;
      case 132:
        v55 = &unk_2806BB5EA;
LABEL_159:
        v56 = 5;
        goto LABEL_204;
      case 133:
        v55 = &unk_2806BBBAB;
        goto LABEL_204;
      case 134:
        v55 = &unk_2806BB77D;
        goto LABEL_114;
      case 135:
        v55 = &unk_2806BBBBA;
        goto LABEL_204;
      case 136:
        v55 = &unk_2806BBD8D;
        goto LABEL_129;
      case 137:
        v55 = &unk_2806BB785;
        goto LABEL_114;
      case 138:
        v55 = &unk_2806BB51D;
LABEL_190:
        v56 = 2;
        goto LABEL_204;
      case 139:
        v55 = &unk_2806BBBC9;
        goto LABEL_204;
      case 140:
        v55 = &unk_2806BB78D;
LABEL_114:
        v56 = 8;
        goto LABEL_204;
      case 141:
        v55 = &unk_2806BB901;
LABEL_211:
        v56 = 10;
        goto LABEL_204;
      case 142:
        v55 = &unk_2806BBDA2;
LABEL_129:
        v56 = 21;
        goto LABEL_204;
      case 143:
        v55 = &unk_2806BBD25;
        v56 = 20;
        goto LABEL_204;
      case 144:
        v55 = &unk_2806BB85E;
LABEL_182:
        v56 = 9;
        goto LABEL_204;
      case 146:
        v41 = v54;
        goto LABEL_6;
      case 147:
      case 153:
      case 154:
      case 155:
      case 157:
      case 164:
      case 165:
      case 167:
      case 171:
      case 173:
      case 175:
      case 177:
      case 179:
      case 183:
      case 185:
      case 188:
      case 190:
      case 191:
        goto LABEL_228;
      case 148:
        v41 = v54;
        goto LABEL_8;
      case 149:
        bspop_boa(v0);
        OUTLINED_FUNCTION_6_22();
        bspush_ca_scan_boa();
        v143 = OUTLINED_FUNCTION_2_24();
        v146 = 2;
        goto LABEL_125;
      case 150:
        bspop_boa(v0);
        OUTLINED_FUNCTION_6_22();
        bspush_ca_scan_boa();
        v143 = OUTLINED_FUNCTION_2_24();
        v146 = 3;
        goto LABEL_125;
      case 151:
        bspop_boa(v0);
        v173 = advance_tok(v0, v170, v171, v172);
        v48 = v54;
        if (!v173)
        {
          goto LABEL_4;
        }

        continue;
      case 159:
        v147 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v147, v148, v149);
        v112 = OUTLINED_FUNCTION_1_24();
        v116 = 11;
        goto LABEL_205;
      case 160:
        v176 = OUTLINED_FUNCTION_9_22();
        v179 = lpta_loadp_setscan_r(v176, v177, v178);
        v48 = v54;
        if (v179)
        {
          continue;
        }

        v180 = OUTLINED_FUNCTION_2_24();
        v183 = testFldeq(v180, v181, v182, 1);
        v48 = v54;
        if (v183)
        {
          continue;
        }

LABEL_124:
        OUTLINED_FUNCTION_6_22();
        bspush_ca_scan_boa();
        v143 = OUTLINED_FUNCTION_3_23();
        v146 = 73;
LABEL_125:
        if (testFldeq(v143, v144, v145, v146))
        {
          v48 = v54;
        }

        else
        {
          v48 = 1;
        }

        continue;
      case 161:
      case 163:
        bspop_boa(v0);
        v60 = advance_tok(v0, v57, v58, v59);
        v48 = v54;
        if (v60)
        {
          continue;
        }

        v55 = &unk_2806BBB06;
        goto LABEL_204;
      case 162:
LABEL_204:
        v215 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v215, v216, v217);
        v112 = OUTLINED_FUNCTION_1_24();
        v116 = v56;
        v114 = v55;
        goto LABEL_205;
      case 166:
LABEL_44:
        v95 = OUTLINED_FUNCTION_6_22();
        starttest(v95, v96);
        v97 = OUTLINED_FUNCTION_9_22();
        if (!lpta_loadp_setscan_l(v97, v98, v99))
        {
          goto LABEL_45;
        }

        goto LABEL_4;
      case 169:
LABEL_45:
        savescptr(v0, 169, &v342);
        v100 = OUTLINED_FUNCTION_3_23();
        v102 = testFldeq(v100, v101, 1, 2);
        v48 = v54;
        if (v102)
        {
          continue;
        }

        v103 = advance_tok(v0, v54, v42, v43);
        v48 = v54;
        if (v103)
        {
          continue;
        }

        v104 = OUTLINED_FUNCTION_9_22();
        v107 = lpta_loadp_setscan_r(v104, v105, v106);
        v48 = v54;
        if (v107)
        {
          continue;
        }

        OUTLINED_FUNCTION_3_23();
        v108 = test_string_s();
        v48 = v54;
        if (v108)
        {
          continue;
        }

        v109 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v109, v110, v111);
        v112 = OUTLINED_FUNCTION_1_24();
        v116 = 2;
        goto LABEL_205;
      case 178:
LABEL_35:
        v81 = OUTLINED_FUNCTION_6_22();
        starttest(v81, v82);
        v83 = OUTLINED_FUNCTION_9_22();
        if (lpta_loadp_setscan_l(v83, v84, v85))
        {
          goto LABEL_228;
        }

        OUTLINED_FUNCTION_3_23();
        if (test_string_s())
        {
          goto LABEL_228;
        }

        v86 = OUTLINED_FUNCTION_6_22();
        bspush_ca_scan(v86, v87);
        OUTLINED_FUNCTION_3_23();
LABEL_119:
        v174 = test_string_s();
        v48 = v54;
        if (v174)
        {
          continue;
        }

LABEL_120:
        v175 = test_string_s();
        v48 = v54;
        if (v175)
        {
          continue;
        }

        *(v0 + 168) = 1;
        *(v0 + 144) = v348;
        *(v0 + 128) = 0;
        insert_l(v0, 1);
        goto LABEL_228;
      case 180:
        OUTLINED_FUNCTION_2_24();
        goto LABEL_119;
      case 181:
        goto LABEL_120;
      case 184:
LABEL_78:
        v134 = OUTLINED_FUNCTION_6_22();
        starttest(v134, v135);
        if (*(v0 + 2838) == *(v0 + 2822))
        {
          v136 = OUTLINED_FUNCTION_0_25();
          lpta_rpta_loadp(v136, v137, v138);
          v139 = OUTLINED_FUNCTION_1_24();
          if (!insert_2pt_s(v139, v140, 5, v141, v142))
          {
            goto LABEL_228;
          }
        }

LABEL_186:
        v212 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v212, v213, v214);
        v112 = OUTLINED_FUNCTION_1_24();
        v116 = 5;
        goto LABEL_205;
      default:
        goto LABEL_4;
    }
  }
}

uint64_t por_abbr()
{
  OUTLINED_FUNCTION_12_21();
  OUTLINED_FUNCTION_10_22(v2, v3, v4, v5, v6, v7, v8, v9, v199, v203, v207, v211, v215, v219, v223, v227, v231, v235, v239, v243, v247, v251, v255, v259, v263, v267, v271, v275, v279, v283, v287, v291, v295, v296, v297, SHIDWORD(v297), v298, v299, v300, v301);
  OUTLINED_FUNCTION_14_19(v10, v11, v12, v13, v14, v15, v16, v17, v200, v204, v208, v212, v216, v220, v224, v228, v232, v236, v240, v244, v248, v252, v256, v260, v264, v268, v272, v276, v280, v284, v288, v292, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305);
  v18 = setjmp(v1);
  if (v18 || OUTLINED_FUNCTION_13_21(v18, v19, v20, v21, v22, v23, v24, v25, v201, v205, v209, v213, v217, v221, v225, v229, v233, v237, v241, v245, v249, v253, v257, v261, v265, v269, v273, v277, v281, v285, v289, v293, v295, v296, v297, v298, v299, v300, v301, v302, SHIDWORD(v302), v303, SWORD2(v303), SHIWORD(v303), v304, SWORD2(v304), SBYTE6(v304), SHIBYTE(v304), v305, v306) || (v26 = OUTLINED_FUNCTION_5_22(), get_parm(v26, v27, v28, -6), OUTLINED_FUNCTION_11_21(), OUTLINED_FUNCTION_15_19(v29, v30, v31, v32, v33, v34, v35, v36, v202, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, v250, v254, v258, v262, v266, v270, v274, v278, v282, v286, v290, v294, v295, v296, v297, SHIDWORD(v297)), fence_22(v0), v37 = OUTLINED_FUNCTION_5_22(), lpta_rpta_loadp(v37, v38, v39), actd_lookup(v0, 4, 0, 0)))
  {
LABEL_4:
    vretproc(v0);
    return 94;
  }

LABEL_5:
  HIWORD(v297) = 0;
  starttest_l(v0, 95);
  if (lpta_loadp_setscan_r(v0, &v300, 1))
  {
    goto LABEL_6;
  }

  v41 = OUTLINED_FUNCTION_3_23();
  if (!testFldeq(v41, v42, 1, 2) && !advance_tok(v0, v43, v44, v45))
  {
    move_i(v0, &v297 + 4, 1);
LABEL_6:
    actd_goto(v0);
  }

  while (2)
  {
    v46 = *(v0 + 104);
    if (v46)
    {
      *(v0 + 104) = 0;
      v47 = v46;
    }

    else
    {
      v47 = vback(v0, 0);
    }

    v48 = &unk_2806BB5EF;
    v49 = 5;
    switch(v47)
    {
      case 1:
        goto LABEL_102;
      case 2:
        v48 = &unk_2806BB663;
        goto LABEL_91;
      case 3:
        v48 = &unk_2806BB6ED;
        goto LABEL_93;
      case 4:
      case 73:
      case 77:
        v146 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v146, v147, v148);
        v113 = OUTLINED_FUNCTION_1_24();
        v117 = 9;
        goto LABEL_98;
      case 5:
        v48 = &unk_2806BB870;
        goto LABEL_67;
      case 6:
        v48 = &unk_2806BB972;
        goto LABEL_74;
      case 7:
        v48 = &unk_2806BB669;
        goto LABEL_91;
      case 8:
        v48 = &unk_2806BB795;
        goto LABEL_86;
      case 9:
        v48 = &unk_2806BB6F4;
        goto LABEL_93;
      case 10:
        v48 = &unk_2806BB9E4;
        goto LABEL_101;
      case 11:
        v96 = OUTLINED_FUNCTION_6_22();
        starttest(v96, v97);
        *(v0 + 136) = 1;
        *(v0 + 112) = v301;
        *(v0 + 128) = 0;
        if (lpta_tstctxtl())
        {
          goto LABEL_4;
        }

        v98 = OUTLINED_FUNCTION_3_23();
        setscan_l(v98, v99, v100);
        if (v101)
        {
          goto LABEL_4;
        }

        v102 = OUTLINED_FUNCTION_6_22();
        bspush_ca_scan(v102, v103);
        OUTLINED_FUNCTION_3_23();
        if (!test_string_s())
        {
          goto LABEL_44;
        }

        continue;
      case 12:
      case 17:
      case 49:
        v125 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v125, v126, v127);
        v84 = OUTLINED_FUNCTION_1_24();
        v88 = 9;
        goto LABEL_103;
      case 13:
      case 14:
      case 21:
      case 36:
      case 84:
        v155 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v155, v156, v157);
        v113 = OUTLINED_FUNCTION_1_24();
        v117 = 7;
        goto LABEL_98;
      case 15:
      case 37:
      case 60:
        v122 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v122, v123, v124);
        v76 = OUTLINED_FUNCTION_1_24();
        v80 = 7;
        goto LABEL_82;
      case 16:
      case 45:
      case 47:
      case 48:
        v134 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v134, v135, v136);
        v76 = OUTLINED_FUNCTION_1_24();
        v80 = 10;
        goto LABEL_82;
      case 18:
        v89 = OUTLINED_FUNCTION_6_22();
        starttest(v89, v90);
        goto LABEL_35;
      case 19:
        v118 = OUTLINED_FUNCTION_6_22();
        starttest(v118, v119);
        if (lpta_loadp_setscan_l(v0, &v300, 1))
        {
          goto LABEL_89;
        }

        *(v0 + 136) = 1;
        *(v0 + 112) = *(v0 + 1232);
        *(v0 + 128) = 0;
        if (test_ptr(v0, v120, v121))
        {
          goto LABEL_89;
        }

LABEL_35:
        if (!ambig_abbr(v0))
        {
          goto LABEL_4;
        }

        goto LABEL_89;
      case 20:
      case 83:
      case 91:
        v158 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v158, v159, v160);
        v113 = OUTLINED_FUNCTION_1_24();
        v117 = 6;
        goto LABEL_98;
      case 22:
        v48 = &unk_2806BB5F4;
        goto LABEL_102;
      case 23:
        v48 = &unk_2806BB7A5;
        goto LABEL_86;
      case 24:
        v48 = &unk_2806BB675;
        goto LABEL_91;
      case 25:
        v48 = &unk_2806BB97D;
LABEL_74:
        v49 = 11;
        goto LABEL_102;
      case 26:
        v48 = &unk_2806BB67B;
        goto LABEL_91;
      case 27:
        v48 = &unk_2806BB7AD;
        goto LABEL_86;
      case 28:
      case 30:
        v110 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v110, v111, v112);
        v113 = OUTLINED_FUNCTION_1_24();
        v117 = 14;
        goto LABEL_98;
      case 29:
      case 31:
        v131 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v131, v132, v133);
        v113 = OUTLINED_FUNCTION_1_24();
        v117 = 15;
        goto LABEL_98;
      case 32:
        v48 = &unk_2806BB88B;
        goto LABEL_67;
      case 33:
        v48 = &unk_2806BB894;
        goto LABEL_67;
      case 34:
        v48 = &unk_2806BB681;
        goto LABEL_91;
      case 35:
        OUTLINED_FUNCTION_7_22();
        if (!v52)
        {
          goto LABEL_4;
        }

        goto LABEL_116;
      case 38:
        v50 = OUTLINED_FUNCTION_6_22();
        starttest(v50, v51);
        OUTLINED_FUNCTION_7_22();
        if (!v52)
        {
          goto LABEL_75;
        }

        v53 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v53, v54, v55);
        v56 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v56, v57, 4, v58, v59))
        {
          goto LABEL_75;
        }

        goto LABEL_125;
      case 39:
        OUTLINED_FUNCTION_7_22();
        if (!v52)
        {
          goto LABEL_121;
        }

        v189 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v189, v190, v191);
        v192 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v192, v193, 4, v194, v195))
        {
          goto LABEL_121;
        }

        goto LABEL_125;
      case 40:
        v137 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v137, v138, v139);
        v84 = OUTLINED_FUNCTION_1_24();
        v88 = 5;
        goto LABEL_103;
      case 41:
        v48 = &unk_2806BB603;
        goto LABEL_102;
      case 42:
        v48 = &unk_2806BB71E;
        goto LABEL_93;
      case 43:
        v48 = &unk_2806BB608;
        goto LABEL_102;
      case 44:
        v48 = &unk_2806BB60D;
        goto LABEL_102;
      case 46:
        goto LABEL_46;
      case 50:
        v73 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v73, v74, v75);
        v76 = OUTLINED_FUNCTION_1_24();
        v80 = 14;
        goto LABEL_82;
      case 51:
        OUTLINED_FUNCTION_7_22();
        if (!v52)
        {
          goto LABEL_112;
        }

        v167 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v167, v168, v169);
        v170 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v170, v171, 5, v172, v173))
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      case 52:
      case 66:
      case 104:
      case 106:
LABEL_89:
        v149 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v149, v150, v151);
        v84 = OUTLINED_FUNCTION_1_24();
        v88 = 8;
        goto LABEL_103;
      case 53:
        v48 = &unk_2806BB599;
        v49 = 4;
        goto LABEL_102;
      case 54:
        v48 = &unk_2806BBCB8;
        v49 = 17;
        goto LABEL_102;
      case 55:
        v48 = &unk_2806BB7BD;
        goto LABEL_86;
      case 56:
        v48 = &unk_2806BB68D;
        goto LABEL_91;
      case 57:
        OUTLINED_FUNCTION_7_22();
        if (!v52)
        {
          goto LABEL_4;
        }

LABEL_116:
        v182 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v182, v183, v184);
        v185 = OUTLINED_FUNCTION_1_24();
        if (!insert_2pt_s(v185, v186, 5, v187, v188))
        {
          goto LABEL_125;
        }

        goto LABEL_4;
      case 58:
        v81 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v81, v82, v83);
        v84 = OUTLINED_FUNCTION_1_24();
        v88 = 4;
        goto LABEL_103;
      case 59:
        v48 = &unk_2806BB693;
        goto LABEL_91;
      case 61:
        v60 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v60, v61, v62);
        v63 = OUTLINED_FUNCTION_1_24();
        if (insert_2pt_s(v63, v64, 7, v65, v66))
        {
          continue;
        }

        v67 = OUTLINED_FUNCTION_3_23();
        insert_l(v67, v68);
        lpta_storep(v0, &v295, v69);
        v70 = OUTLINED_FUNCTION_3_23();
        if (insert_2pt_s(v70, v71, 12, v72, 0))
        {
          continue;
        }

        goto LABEL_125;
      case 62:
      case 63:
      case 65:
        v140 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v140, v141, v142);
        v76 = OUTLINED_FUNCTION_1_24();
        v80 = 9;
LABEL_82:
        if (insert_2pt_s(v76, v77, v80, v78, v79))
        {
          continue;
        }

LABEL_125:
        add_por_plural();
        goto LABEL_126;
      case 64:
      case 112:
LABEL_75:
        v128 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v128, v129, v130);
        v84 = OUTLINED_FUNCTION_1_24();
        v88 = 6;
        goto LABEL_103;
      case 67:
        v48 = &unk_2806BB7CD;
        goto LABEL_86;
      case 68:
        v48 = &unk_2806BB72C;
        goto LABEL_93;
      case 69:
        v48 = &unk_2806BB733;
LABEL_93:
        v49 = 7;
        goto LABEL_102;
      case 70:
        v48 = &unk_2806BB69F;
        goto LABEL_91;
      case 71:
        v48 = &unk_2806BB8C1;
LABEL_67:
        v49 = 9;
        goto LABEL_102;
      case 72:
        v48 = &unk_2806BB61C;
        goto LABEL_102;
      case 74:
        v161 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v161, v162, v163);
        v113 = OUTLINED_FUNCTION_1_24();
        v117 = 11;
        goto LABEL_98;
      case 75:
        v48 = &unk_2806BB9FC;
        goto LABEL_101;
      case 76:
        v48 = &unk_2806BBA08;
        goto LABEL_101;
      case 78:
        v48 = &unk_2806BB6A5;
        goto LABEL_91;
      case 79:
        v48 = &unk_2806BB6AB;
LABEL_91:
        v49 = 6;
        goto LABEL_102;
      case 80:
        v48 = &unk_2806BBA5F;
        v49 = 13;
        goto LABEL_102;
      case 81:
        v48 = &unk_2806BB7D5;
        goto LABEL_86;
      case 82:
        v48 = &unk_2806BBA14;
LABEL_101:
        v49 = 12;
        goto LABEL_102;
      case 85:
      case 86:
        v152 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v152, v153, v154);
        v113 = OUTLINED_FUNCTION_1_24();
        v117 = 8;
        goto LABEL_98;
      case 87:
        v91 = OUTLINED_FUNCTION_6_22();
        starttest(v91, v92);
        if (!ambig_abbr(v0))
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      case 88:
        v48 = &unk_2806BB7ED;
LABEL_86:
        v49 = 8;
        goto LABEL_102;
      case 89:
        v143 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v143, v144, v145);
        v113 = OUTLINED_FUNCTION_1_24();
        v117 = 12;
LABEL_98:
        if (insert_2pt_s(v113, v114, v117, v115, v116))
        {
          continue;
        }

        *(v0 + 2698) = *(v0 + 2710);
        goto LABEL_126;
      case 90:
        v48 = &unk_2806BB621;
LABEL_102:
        v164 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v164, v165, v166);
        v84 = OUTLINED_FUNCTION_1_24();
        v88 = v49;
        v86 = v48;
        goto LABEL_103;
      case 93:
        goto LABEL_5;
      case 94:
      case 97:
      case 101:
      case 102:
      case 103:
      case 105:
      case 107:
      case 109:
      case 110:
      case 111:
      case 113:
      case 114:
      case 116:
      case 117:
      case 119:
      case 120:
      case 121:
      case 122:
      case 124:
      case 125:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 136:
        goto LABEL_126;
      case 95:
        goto LABEL_6;
      case 96:
        goto LABEL_127;
      case 99:
LABEL_44:
        OUTLINED_FUNCTION_3_23();
        if (!test_string_s())
        {
          goto LABEL_45;
        }

        continue;
      case 100:
LABEL_45:
        v104 = OUTLINED_FUNCTION_6_22();
        if (test_synch(v104, v105, 1, v106))
        {
          continue;
        }

LABEL_46:
        v107 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v107, v108, v109);
        v84 = OUTLINED_FUNCTION_1_24();
        v88 = 10;
LABEL_103:
        if (!insert_2pt_s(v84, v85, v88, v86, v87))
        {
          goto LABEL_126;
        }

        continue;
      case 115:
LABEL_121:
        if (*(v0 + 2646) != *(v0 + 2610))
        {
          goto LABEL_4;
        }

        v196 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v196, v197, v198);
        v177 = OUTLINED_FUNCTION_1_24();
        v181 = 4;
        goto LABEL_123;
      case 123:
LABEL_112:
        if (*(v0 + 2646) != *(v0 + 2610))
        {
          goto LABEL_4;
        }

        v174 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v174, v175, v176);
        v177 = OUTLINED_FUNCTION_1_24();
        v181 = 5;
LABEL_123:
        if (insert_2pt_s(v177, v178, v181, v179, v180))
        {
          goto LABEL_4;
        }

LABEL_126:
        mark_uppercase(v0);
LABEL_127:
        vretproc(v0);
        result = 0;
        break;
      case 135:
LABEL_39:
        v93 = OUTLINED_FUNCTION_0_25();
        lpta_rpta_loadp(v93, v94, v95);
        v84 = OUTLINED_FUNCTION_1_24();
        v88 = 11;
        goto LABEL_103;
      default:
        goto LABEL_4;
    }

    return result;
  }
}

uint64_t por_tok_dict()
{
  OUTLINED_FUNCTION_12_21();
  v67 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  bzero(&v36, 0xB8uLL);
  bzero(v66, 0xC0uLL);
  if (!setjmp(v66) && !ventproc(v0, &v36, v65, v64, v63, v66))
  {
    v1 = OUTLINED_FUNCTION_5_22();
    get_parm(v1, v2, v3, -6);
    OUTLINED_FUNCTION_11_21();
    fence_22(v0);
    v4 = OUTLINED_FUNCTION_6_22();
    starttest(v4, v5);
    v6 = OUTLINED_FUNCTION_5_22();
    lpta_rpta_loadp(v6, v7, v8);
    if (!actd_lookup(v0, 5, 0, 0))
    {
      while (2)
      {
        actd_goto(v0);
LABEL_7:
        v18 = *(v0 + 104);
        if (v18)
        {
          *(v0 + 104) = 0;
          inserted = v18;
        }

        else
        {
          inserted = vback(v0, 0);
        }

        v9 = 0;
        v20 = &unk_2806BB7F5;
        v21 = 8;
        switch(inserted)
        {
          case 1:
            OUTLINED_FUNCTION_8_22(inserted, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
            v9 = 0;
            v22 = OUTLINED_FUNCTION_3_23();
            v25 = 7;
            goto LABEL_61;
          case 2:
            goto LABEL_60;
          case 3:
            v20 = &unk_2806BB626;
            goto LABEL_53;
          case 4:
            v20 = &unk_2806BB8DC;
            goto LABEL_43;
          case 5:
            v20 = &unk_2806BB62B;
            goto LABEL_53;
          case 6:
            v20 = &unk_2806BB7FD;
            goto LABEL_60;
          case 7:
            v20 = &unk_2806BB543;
            goto LABEL_46;
          case 8:
            v20 = &unk_2806BBAC0;
            goto LABEL_50;
          case 9:
            v20 = &unk_2806BB630;
            goto LABEL_53;
          case 10:
            v20 = &unk_2806BB546;
LABEL_46:
            v21 = 3;
            goto LABEL_60;
          case 11:
            v20 = &unk_2806BBBF6;
            goto LABEL_55;
          case 12:
            v20 = &unk_2806BBA96;
            goto LABEL_50;
          case 13:
            v20 = &unk_2806BBBD8;
            goto LABEL_55;
          case 14:
            v20 = &unk_2806BBAA4;
            goto LABEL_50;
          case 15:
            v20 = &unk_2806BBBE7;
            goto LABEL_55;
          case 16:
            v20 = &unk_2806BB635;
            goto LABEL_53;
          case 17:
            v20 = &unk_2806BBC05;
LABEL_55:
            v21 = 15;
            goto LABEL_60;
          case 18:
            v20 = &unk_2806BB6BD;
            goto LABEL_41;
          case 19:
            v20 = &unk_2806BB805;
            goto LABEL_60;
          case 20:
            v31 = OUTLINED_FUNCTION_6_22();
            starttest(v31, v32);
            if (*(v0 + 2290) != *(v0 + 2914))
            {
              goto LABEL_24;
            }

            OUTLINED_FUNCTION_8_22(inserted, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
            v9 = 0;
            v33 = OUTLINED_FUNCTION_3_23();
            inserted = insert_2pt_s(v33, v34, 16, v35, 0);
            if (inserted)
            {
              goto LABEL_24;
            }

            goto LABEL_5;
          case 21:
            v26 = OUTLINED_FUNCTION_6_22();
            starttest(v26, v27);
            if (*(v0 + 2290) != *(v0 + 2914))
            {
              goto LABEL_19;
            }

            OUTLINED_FUNCTION_8_22(inserted, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
            v9 = 0;
            v28 = OUTLINED_FUNCTION_3_23();
            inserted = insert_2pt_s(v28, v29, 14, v30, 0);
            if (inserted)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 22:
            v20 = &unk_2806BB657;
LABEL_41:
            v21 = 6;
            goto LABEL_60;
          case 23:
            v20 = &unk_2806BB5A1;
            goto LABEL_30;
          case 24:
            v20 = &unk_2806BB748;
            goto LABEL_58;
          case 25:
            v20 = &unk_2806BB63A;
LABEL_53:
            v21 = 5;
            goto LABEL_60;
          case 26:
            v20 = &unk_2806BB5A5;
LABEL_30:
            v21 = 4;
            goto LABEL_60;
          case 27:
            v20 = &unk_2806BB99E;
            goto LABEL_26;
          case 28:
            v20 = &unk_2806BB9A9;
LABEL_26:
            v21 = 11;
            goto LABEL_60;
          case 29:
            v20 = &unk_2806BBAEA;
            goto LABEL_50;
          case 30:
            v20 = &unk_2806BBD12;
            v21 = 19;
            goto LABEL_60;
          case 31:
            v20 = &unk_2806BB74F;
            goto LABEL_58;
          case 32:
            v20 = &unk_2806BB756;
LABEL_58:
            v21 = 7;
            goto LABEL_60;
          case 33:
            v20 = &unk_2806BBCC9;
            v21 = 17;
            goto LABEL_60;
          case 34:
            v20 = &unk_2806BB947;
            v21 = 10;
            goto LABEL_60;
          case 35:
            v20 = &unk_2806BBAF8;
LABEL_50:
            v21 = 14;
            goto LABEL_60;
          case 36:
            v20 = &unk_2806BB8E5;
            goto LABEL_43;
          case 37:
            v20 = &unk_2806BB8EE;
LABEL_43:
            v21 = 9;
LABEL_60:
            OUTLINED_FUNCTION_8_22(inserted, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
            v9 = 0;
            v22 = OUTLINED_FUNCTION_3_23();
            v25 = v21;
            v24 = v20;
            goto LABEL_61;
          case 39:
            continue;
          case 40:
          case 41:
          case 43:
          case 45:
            goto LABEL_5;
          case 42:
LABEL_24:
            OUTLINED_FUNCTION_8_22(inserted, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
            v9 = 0;
            v22 = OUTLINED_FUNCTION_3_23();
            v25 = 14;
            goto LABEL_61;
          case 44:
LABEL_19:
            OUTLINED_FUNCTION_8_22(inserted, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
            v9 = 0;
            v22 = OUTLINED_FUNCTION_3_23();
            v25 = 12;
LABEL_61:
            if (!insert_2pt_s(v22, v23, v25, v24, 0))
            {
              goto LABEL_5;
            }

            goto LABEL_7;
          default:
            goto LABEL_4;
        }
      }
    }
  }

LABEL_4:
  v9 = 94;
LABEL_5:
  vretproc(v0);
  return v9;
}

uint64_t OUTLINED_FUNCTION_8_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return lpta_rpta_loadp(v33, va, &a32);
}

void OUTLINED_FUNCTION_10_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *(v41 - 88) = v40;
  a39 = 0;
  a40 = 0;
  a37 = 0;
  a38 = 0;
  a36 = 0;
  a33 = 0;
  a34 = 0;

  bzero(&a10, 0xB8uLL);
}

void OUTLINED_FUNCTION_11_21()
{

  get_parm(v0, v2, v1, -6);
}

uint64_t OUTLINED_FUNCTION_13_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, int a42, __int16 a43, __int16 a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{

  return ventproc(v50, &a10, &a48, &a44, &a41, &a50);
}

void OUTLINED_FUNCTION_14_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);

  bzero(va, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_15_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36)
{
  a36 = 65532;

  return push_ptr_init(v36, &a33);
}

uint64_t por_words(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v26[1] = 0;
  v25[0] = 0;
  v25[1] = 0;
  bzero(v24, 0xB8uLL);
  bzero(v30, 0xC0uLL);
  if (setjmp(v30) || ventproc(a1, v24, v29, v28, v27, v30) || (get_parm(a1, v26, a2, -6), get_parm(a1, v25, a3, -6), *(*(a1 + 192) + 8121) = 0, memset(*(a1 + 264), *(a1 + 288), *(a1 + 288)), lpta_rpta_loadp(a1, v26, v25), actd_lookup(a1, 6, 0, 0)))
  {
LABEL_4:
    vretproc(a1);
    return 94;
  }

  else
  {
LABEL_5:
    starttest(a1, 22);
    OUTLINED_FUNCTION_0_26();
    if (user_rootdict())
    {
LABEL_6:
      actd_goto(a1);
      while (2)
      {
        v7 = *(a1 + 104);
        if (v7)
        {
          *(a1 + 104) = 0;
          v8 = v7;
        }

        else
        {
          v8 = vback(a1, 0);
        }

        v9 = &unk_2806BBEB2;
        v10 = 10;
        switch(v8)
        {
          case 1:
            v11 = OUTLINED_FUNCTION_0_26();
            lpta_rpta_loadp(v11, v12, v13);
            if (insert_2pt_s(a1, 4u, 0, &null_str_6, 0))
            {
              continue;
            }

            lpta_storep(a1, a1 + 5976, v14);
            v15 = a1;
            v16 = 3;
            v17 = &unk_2806BBE58;
            goto LABEL_35;
          case 2:
            goto LABEL_34;
          case 3:
            v9 = &unk_2806BBE56;
            v10 = 2;
            goto LABEL_34;
          case 4:
            v9 = &unk_2806BBE80;
            goto LABEL_23;
          case 5:
            v9 = &unk_2806BBE5B;
            goto LABEL_27;
          case 6:
            v9 = &unk_2806BBE67;
            goto LABEL_31;
          case 7:
            v9 = &unk_2806BBE5F;
            goto LABEL_27;
          case 8:
            v9 = &unk_2806BBE6C;
            goto LABEL_31;
          case 9:
            v9 = &unk_2806BBE71;
            goto LABEL_31;
          case 10:
            v9 = &unk_2806BBE86;
            goto LABEL_23;
          case 11:
            v9 = &unk_2806BBE92;
            goto LABEL_33;
          case 12:
            v9 = &unk_2806BBE63;
LABEL_27:
            v10 = 4;
            goto LABEL_34;
          case 13:
            v9 = &unk_2806BBE99;
LABEL_33:
            v10 = 7;
            goto LABEL_34;
          case 14:
            v9 = &unk_2806BBEA0;
            goto LABEL_29;
          case 15:
            v9 = &unk_2806BBEA9;
LABEL_29:
            v10 = 9;
            goto LABEL_34;
          case 16:
            v9 = &unk_2806BBE8C;
LABEL_23:
            v10 = 6;
            goto LABEL_34;
          case 17:
            v9 = &unk_2806BBE76;
            goto LABEL_31;
          case 18:
            v9 = &unk_2806BBE7B;
LABEL_31:
            v10 = 5;
LABEL_34:
            v18 = OUTLINED_FUNCTION_0_26();
            lpta_rpta_loadp(v18, v19, v20);
            v15 = a1;
            v16 = v10;
            v17 = v9;
LABEL_35:
            if (!insert_2pt_s(v15, 4u, v16, v17, 0))
            {
              goto LABEL_36;
            }

            continue;
          case 20:
            goto LABEL_5;
          case 21:
          case 23:
LABEL_36:
            v21 = OUTLINED_FUNCTION_0_26();
            lpta_rpta_loadp(v21, v22, v23);
            if (insert_2pt_s(a1, 3u, 1, &_MergedGlobals_19, 0))
            {
              continue;
            }

            *(a1 + 3886) = 1;
            break;
          case 22:
            goto LABEL_6;
          default:
            goto LABEL_4;
        }

        break;
      }
    }

    vretproc(a1);
    return 0;
  }
}

uint64_t por_cons_durs(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v200 = *MEMORY[0x277D85DE8];
  memset(v195, 0, sizeof(v195));
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v194[0]);
  OUTLINED_FUNCTION_23_15();
  bzero(v199, v11);
  if (setjmp(v199) || ventproc(a1, v194, v198, v197, v196, v199))
  {
LABEL_3:
    v12 = 94;
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_34_8();
  get_parm(v14, v15, a2, -6);
  v16 = OUTLINED_FUNCTION_28_11();
  get_parm(v16, v17, a3, -6);
  v18 = OUTLINED_FUNCTION_31_10();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_0_27();
  startloop(v20, v21);
  v22 = OUTLINED_FUNCTION_34_8();
  lpta_loadpn(v22, v23);
  OUTLINED_FUNCTION_16_19();
  lpta_mover();
  v24 = OUTLINED_FUNCTION_19_16();
  lpta_storep(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_28_11();
  lpta_loadpn(v27, v28);
  OUTLINED_FUNCTION_16_19();
  lpta_mover();
  v29 = OUTLINED_FUNCTION_31_10();
  lpta_storep(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_19_16();
  if (!forall_to_test(v32, v33, v195))
  {
LABEL_6:
    v34 = OUTLINED_FUNCTION_14_20();
    bspush_ca(v34);
    v35 = OUTLINED_FUNCTION_3_24();
    if (!lpta_loadp_setscan_r(v35, v36, v37) && !advance_tok(a1, v38, v39, v40))
    {
LABEL_8:
      savescptr(a1, 4, a1 + 1592);
LABEL_9:
      *(a1 + 4682) = 0;
      v41 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v41, v42, v43))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_p_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_11:
      v44 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v44, v45, v46))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_t_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_13:
      v47 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v47, v48, v49))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_k_dur(a1, v50, v51, v52, v53, v54, v55, v56);
          goto LABEL_72;
        }
      }

LABEL_15:
      v57 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v57, v58, v59))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_b_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_17:
      v60 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v60, v61, v62))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_d_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_19:
      v63 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v63, v64, v65))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_g_dur(a1, v66, v67, v68, v69, v70, v71, v72);
          goto LABEL_72;
        }
      }

LABEL_21:
      v73 = OUTLINED_FUNCTION_3_24();
      if (!lpta_loadp_setscan_r(v73, v74, v75))
      {
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          por_ph_w_dur(a1);
          goto LABEL_72;
        }
      }

LABEL_23:
      v76 = OUTLINED_FUNCTION_3_24();
      if (lpta_loadp_setscan_r(v76, v77, v78) || (OUTLINED_FUNCTION_2_25(), test_string_s()))
      {
LABEL_25:
        v86 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v86, v87, v88))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_l_dur(a1);
            goto LABEL_72;
          }
        }

LABEL_27:
        v89 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v89, v90, v91))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_ly_dur(a1, v92, v93, v94, v95, v96, v97, v98);
            goto LABEL_72;
          }
        }

LABEL_29:
        v99 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v99, v100, v101))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_r_dur(a1);
LABEL_72:
            cons_syll_phone_adjust(a1, v102, v103, v104, v105, v106, v107, v108);
LABEL_73:
            insert_dur(a1, (a1 + 3392), (a1 + 1576), (a1 + 1592), (a1 + 1024));
LABEL_74:
            v186 = OUTLINED_FUNCTION_14_20();
            starttest(v186, v187);
            if (*(a1 + 4682))
            {
              v188 = OUTLINED_FUNCTION_14_20();
              starttest_e(v188, v189);
              insert_burst_dur(a1);
            }

LABEL_76:
            if (!forto_adv_upto_r(a1, 1, 2, 52, 4, a1 + 1576))
            {
              v12 = 0;
              goto LABEL_4;
            }

            goto LABEL_77;
          }
        }

LABEL_41:
        v109 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v109, v110, v111))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_R_dur(a1, v112, v113, v114, v115, v116, v117, v118);
            goto LABEL_72;
          }
        }

LABEL_44:
        v119 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v119, v120, v121))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_f_dur(a1, v122, v123, v124, v125, v126, v127, v128);
            goto LABEL_72;
          }
        }

LABEL_47:
        v129 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v129, v130, v131))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
LABEL_49:
            por_ph_sS_dur(a1, v132, v133, v134, v135, v136, v137, v138);
            goto LABEL_72;
          }
        }

LABEL_50:
        v139 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v139, v140, v141))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            goto LABEL_49;
          }
        }

LABEL_52:
        v142 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v142, v143, v144))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_v_dur(a1, v145, v146, v147, v148, v149, v150, v151);
            goto LABEL_72;
          }
        }

LABEL_55:
        v152 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v152, v153, v154))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_z_dur(a1);
            goto LABEL_72;
          }
        }

LABEL_58:
        v155 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v155, v156, v157))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_Z_dur(a1);
            goto LABEL_72;
          }
        }

LABEL_61:
        v158 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v158, v159, v160))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
LABEL_63:
            por_nasal_dur(a1, v161, v162, v163, v164, v165, v166, v167);
            goto LABEL_72;
          }
        }

LABEL_64:
        v168 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v168, v169, v170))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            goto LABEL_63;
          }
        }

LABEL_66:
        v171 = OUTLINED_FUNCTION_3_24();
        if (!lpta_loadp_setscan_r(v171, v172, v173))
        {
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            por_ph_N_dur(a1, v174, v175, v176, v177, v178, v179, v180);
            goto LABEL_72;
          }
        }

LABEL_69:
        v181 = OUTLINED_FUNCTION_18_17();
        starttest(v181, v182);
        v183 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_r(v183, v184, v185))
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_2_25();
        if (test_string_s())
        {
          goto LABEL_76;
        }
      }

      por_ph_y_dur(a1, v79, v80, v81, v82, v83, v84, v85);
      goto LABEL_72;
    }
  }

LABEL_77:
  v190 = *(a1 + 104);
  if (v190)
  {
    v191 = OUTLINED_FUNCTION_24_15(v190);
  }

  else
  {
    v192 = OUTLINED_FUNCTION_25_14();
    v191 = vback(v192, v193);
  }

  v12 = 0;
  switch(v191)
  {
    case 1:
      break;
    case 2:
      goto LABEL_9;
    case 3:
    case 48:
      goto LABEL_76;
    case 4:
      goto LABEL_8;
    case 5:
      goto LABEL_11;
    case 6:
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
    case 43:
    case 45:
    case 47:
    case 49:
      goto LABEL_72;
    case 8:
      goto LABEL_13;
    case 10:
      goto LABEL_15;
    case 12:
      goto LABEL_17;
    case 14:
      goto LABEL_19;
    case 16:
      goto LABEL_21;
    case 18:
      goto LABEL_23;
    case 20:
      goto LABEL_25;
    case 22:
      goto LABEL_27;
    case 24:
      goto LABEL_29;
    case 26:
      goto LABEL_41;
    case 28:
      goto LABEL_44;
    case 30:
      goto LABEL_47;
    case 32:
      goto LABEL_50;
    case 34:
      goto LABEL_52;
    case 36:
      goto LABEL_55;
    case 38:
      goto LABEL_58;
    case 40:
      goto LABEL_61;
    case 42:
      goto LABEL_64;
    case 44:
      goto LABEL_66;
    case 46:
      goto LABEL_69;
    case 50:
      goto LABEL_73;
    case 51:
      goto LABEL_74;
    case 52:
      goto LABEL_6;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(a1);
  return v12;
}

uint64_t por_ph_p_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v29);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, SHIDWORD(v77), v79, SWORD2(v79), SHIWORD(v79), v81, SWORD2(v81), SBYTE6(v81), SHIBYTE(v81), v83, v84))
  {
    v19 = 94;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_37_7();
    voiceless_stop_dur(v21, v22, v23, v24, v25, v26, v27, v28);
    v19 = 0;
    *(a1 + 4682) = 10;
  }

  vretproc(a1);
  return v19;
}

uint64_t por_ph_t_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v49);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, SHIDWORD(v97), v99, SWORD2(v99), SHIWORD(v99), v101, SWORD2(v101), SBYTE6(v101), SHIBYTE(v101), v103, v104))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_23(a1);
    *(a1 + 4682) = 10;
    v20 = OUTLINED_FUNCTION_4_23();
    if (lpta_loadp_setscan_r(v20, v21, v22) || (OUTLINED_FUNCTION_2_25(), test_string_s()))
    {
LABEL_6:
      voiceless_stop_dur(a1, v23, v24, v25, v26, v27, v28, v29);
    }

    else
    {
      *(a1 + 4682) = 5;
      v30 = OUTLINED_FUNCTION_9_23();
      starttest(v30, v31);
      v32 = OUTLINED_FUNCTION_3_24();
      if (lpta_loadp_setscan_l(v32, v33, v34))
      {
LABEL_9:
        v35 = 0x4041800000000000;
      }

      else
      {
        v36 = OUTLINED_FUNCTION_2_25();
        if (testFldeq(v36, v37, v38, 1))
        {
          v39 = 0;
        }

        else
        {
          bspush_ca_scan_boa();
          v40 = OUTLINED_FUNCTION_7_23();
          v39 = !testFldeq(v40, v41, 3, v42);
        }

        v43 = v39;
        while (2)
        {
          v44 = *(a1 + 104);
          if (v44)
          {
            v45 = OUTLINED_FUNCTION_24_15(v44);
            v43 = v23;
          }

          else
          {
            v45 = vback(a1, v43);
            v43 = 0;
          }

          switch(v45)
          {
            case 1:
              goto LABEL_6;
            case 2:
              goto LABEL_9;
            case 3:
              bspop_boa(a1);
              if (advance_tok(a1, v46, v47, v48))
              {
                continue;
              }

              v35 = 0x4034000000000000;
              break;
            case 4:
            case 5:
              goto LABEL_7;
            default:
              goto LABEL_3;
          }

          break;
        }
      }

      *(a1 + 3400) = v35;
    }

LABEL_7:
    vretproc(a1);
    return 0;
  }
}

uint64_t por_ph_k_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v131 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v78);
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_38_6(v10, v11, v12, v13, v14, v15, v16, v17, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, 0, 0, v126, v127, v128, v129);
  v18 = setjmp(v8);
  if (!v18 && !OUTLINED_FUNCTION_13_22(v18, v19, v20, v21, v22, v23, v24, v25, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v125[0], v125[1], v126, SHIDWORD(v126), v127, SWORD2(v127), SHIWORD(v127), v128, SWORD2(v128), SBYTE6(v128), SHIBYTE(v128), v129, v130))
  {
    v28 = OUTLINED_FUNCTION_31_10();
    push_ptr_init(v28, v29);
    v30 = OUTLINED_FUNCTION_37_7();
    voiceless_stop_dur(v30, v31, v32, v33, v34, v35, v36, v37);
    while (2)
    {
      v38 = OUTLINED_FUNCTION_34_8();
      starttest(v38, v39);
      v40 = OUTLINED_FUNCTION_4_23();
      if (lpta_loadp_setscan_r(v40, v41, v42))
      {
LABEL_7:
        starttest(a1, 6);
        v43 = OUTLINED_FUNCTION_4_23();
        if (lpta_loadp_setscan_l(v43, v44, v45))
        {
LABEL_27:
          v77 = 20;
          goto LABEL_28;
        }

LABEL_17:
        v57 = OUTLINED_FUNCTION_39_5();
        savescptr(v57, v58, v125);
        v59 = OUTLINED_FUNCTION_16_19();
        if (!npush_fld(v59, v60, 8u))
        {
          OUTLINED_FUNCTION_33_9();
          if (!if_testeq(a1, v61, v62, v63, v64, v65, v66, v67) && !advance_tok(a1, v68, v69, v70))
          {
            v71 = OUTLINED_FUNCTION_31_10();
            if (!lpta_loadp_setscan_r(v71, v72, 4))
            {
              bspush_ca_scan(a1, 8);
              v73 = OUTLINED_FUNCTION_11_22();
              v76 = 28;
LABEL_24:
              if (!testFldeq(v73, v74, v75, v76))
              {
LABEL_25:
                if (!advance_tok(a1, v50, v51, v52))
                {
                  v77 = 25;
LABEL_28:
                  v26 = 0;
                  *(a1 + 4682) = v77;
                  goto LABEL_4;
                }
              }
            }
          }
        }
      }

      else
      {
        bspush_ca_scan(a1, 3);
        v46 = OUTLINED_FUNCTION_8_23();
        v49 = 1;
LABEL_10:
        if (!testFldeq(v46, v47, v48, v49))
        {
LABEL_11:
          if (!advance_tok(a1, v50, v51, v52))
          {
LABEL_29:
            v26 = 0;
            goto LABEL_4;
          }
        }
      }

      v53 = *(a1 + 104);
      if (v53)
      {
        v54 = OUTLINED_FUNCTION_24_15(v53);
      }

      else
      {
        v55 = OUTLINED_FUNCTION_25_14();
        v54 = vback(v55, v56);
      }

      switch(v54)
      {
        case 1:
          continue;
        case 2:
          goto LABEL_7;
        case 3:
          v46 = OUTLINED_FUNCTION_8_23();
          v49 = 2;
          goto LABEL_10;
        case 4:
          goto LABEL_11;
        case 5:
          goto LABEL_29;
        case 6:
          goto LABEL_27;
        case 7:
          goto LABEL_17;
        case 8:
          bspush_ca_scan(a1, 10);
          v73 = OUTLINED_FUNCTION_11_22();
          v76 = 23;
          goto LABEL_24;
        case 9:
          goto LABEL_25;
        case 10:
          v73 = OUTLINED_FUNCTION_11_22();
          v76 = 25;
          goto LABEL_24;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  v26 = 94;
LABEL_4:
  vretproc(a1);
  return v26;
}

uint64_t por_ph_b_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v22);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, SHIDWORD(v70), v72, SWORD2(v72), SHIWORD(v72), v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v76, v77))
  {
    v19 = 94;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_37_7();
    voiced_stop_dur(v21);
    v19 = 0;
    *(a1 + 4682) = 5;
  }

  vretproc(a1);
  return v19;
}

uint64_t por_ph_d_dur(uint64_t a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v36);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, SHIDWORD(v84), v86, SWORD2(v86), SHIWORD(v86), v88, SWORD2(v88), SBYTE6(v88), SHIBYTE(v88), v90, v91))
  {
LABEL_3:
    v19 = 94;
    goto LABEL_4;
  }

  v22 = OUTLINED_FUNCTION_37_7();
  voiced_stop_dur(v22);
  while (2)
  {
    v23 = OUTLINED_FUNCTION_20_15();
    if (!lpta_loadp_setscan_r(v23, v24, 4) && !test_string_s())
    {
      v35 = 13;
      goto LABEL_16;
    }

LABEL_8:
    starttest(a1, 4);
    v25 = OUTLINED_FUNCTION_20_15();
    if (lpta_loadp_setscan_r(v25, v26, 4))
    {
      v35 = 10;
LABEL_16:
      v19 = 0;
      *(a1 + 4682) = v35;
      break;
    }

    if (testFldeq(a1, 4u, 0, 4) || (v19 = advance_tok(a1, v27, v28, v29), v19))
    {
      v30 = *(a1 + 104);
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_24_15(v30);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_25_14();
        v31 = vback(v32, v33);
      }

      v34 = v31 - 1;
      v19 = 0;
      v35 = 10;
      switch(v34)
      {
        case 0:
          continue;
        case 1:
          goto LABEL_8;
        case 2:
          goto LABEL_4;
        case 3:
          goto LABEL_16;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_4:
  v20 = v19;
  vretproc(a1);
  return v20;
}

uint64_t por_ph_g_dur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_15(a1, a2, a3, a4, a5, a6, a7, a8, v45);
  OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
  v18 = setjmp(v8);
  if (v18 || OUTLINED_FUNCTION_1_25(v18, v19, v20, v21, v22, v23, v24, v25, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, SHIDWORD(v93), v95, SWORD2(v95), SHIWORD(v95), v97, SWORD2(v97), SBYTE6(v97), SHIBYTE(v97), v99, v100))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v27 = OUTLINED_FUNCTION_37_7();
  voiced_stop_dur(v27);
  while (2)
  {
    v28 = OUTLINED_FUNCTION_28_11();
    starttest(v28, v29);
    v30 = OUTLINED_FUNCTION_20_15();
    if (lpta_loadp_setscan_r(v30, v31, 4))
    {
LABEL_13:
      starttest(a1, 4);
      v40 = OUTLINED_FUNCTION_20_15();
      if (lpta_loadp_setscan_r(v40, v41, 4))
      {
        v39 = 15;
      }

      else
      {
        if (OUTLINED_FUNCTION_32_9(a1, 4u) || advance_tok(a1, v42, v43, v44))
        {
LABEL_9:
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

          v39 = 15;
          switch(v36)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_13;
            case 3:
              goto LABEL_19;
            case 4:
              goto LABEL_18;
            default:
              goto LABEL_3;
          }
        }

        v39 = 10;
      }
    }

    else
    {
      if (testFldeq(a1, 4u, 1, 2) || testFldeq(a1, 4u, 5, 5) || advance_tok(a1, v32, v33, v34))
      {
        goto LABEL_9;
      }

      v39 = 20;
    }

    break;
  }

LABEL_18:
  *(a1 + 4682) = v39;
LABEL_19:
  vretproc(a1);
  return 0;
}

uint64_t por_ph_w_dur(double *a1)
{
  OUTLINED_FUNCTION_15_20(*MEMORY[0x277D85DE8], v79);
  OUTLINED_FUNCTION_10_23(v3, v4, v5, v6, v7, v8, v9, v10, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132);
  v11 = setjmp(v1);
  if (v11 || OUTLINED_FUNCTION_1_25(v11, v12, v13, v14, v15, v16, v17, v18, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, SHIDWORD(v127), v129, SWORD2(v129), SHIWORD(v129), v131, SWORD2(v131), SBYTE6(v131), SHIBYTE(v131), v133, v134))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  fence_23(a1);
  a1[425] = 30.0;
  v20 = OUTLINED_FUNCTION_5_23();
  starttest(v20, v21);
  v22 = OUTLINED_FUNCTION_4_23();
  v25 = lpta_loadp_setscan_r(v22, v23, v24);
  v26 = 0;
  v27 = 0;
  if (!v25)
  {
LABEL_9:
    v31 = v26;
    v36 = OUTLINED_FUNCTION_9_23();
    if (!test_synch(v36, v37, 1, v38))
    {
      v35 = 0x404E000000000000;
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_5:
  OUTLINED_FUNCTION_27_12();
  v28 = OUTLINED_FUNCTION_19_16();
  v30 = lpta_loadp_setscan_l(v28, v29, v1);
  v31 = v27;
  if (v30)
  {
    while (2)
    {
      v40 = OUTLINED_FUNCTION_18_17();
      starttest(v40, v41);
      v42 = OUTLINED_FUNCTION_3_24();
      if (lpta_loadp_setscan_l(v42, v43, v44))
      {
LABEL_16:
        v45 = OUTLINED_FUNCTION_18_17();
        starttest(v45, v46);
        v47 = OUTLINED_FUNCTION_3_24();
        if (lpta_loadp_setscan_l(v47, v48, v49))
        {
LABEL_23:
          v56 = OUTLINED_FUNCTION_14_20();
          starttest(v56, v57);
          v58 = OUTLINED_FUNCTION_4_23();
          if (lpta_loadp_setscan_r(v58, v59, v60))
          {
            goto LABEL_13;
          }

          v61 = OUTLINED_FUNCTION_2_25();
          v64 = testFldeq(v61, v62, v63, 1);
          v53 = v31;
          if (v64)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v50 = OUTLINED_FUNCTION_2_25();
          if (testFldeq(v50, v51, v52, 1))
          {
            goto LABEL_27;
          }

          v53 = v31;
        }

        v31 = v53;
        bspush_ca_scan_boa();
        v65 = OUTLINED_FUNCTION_6_23();
        if (!testFldeq(v65, v66, v67, v68))
        {
          v31 = 1;
        }
      }

      else
      {
        v54 = OUTLINED_FUNCTION_18_17();
        bspush_ca_scan(v54, v55);
        OUTLINED_FUNCTION_2_25();
        if (!test_string_s())
        {
          goto LABEL_7;
        }
      }

LABEL_27:
      v27 = v31;
      v1 = &unk_2806BBEC6;
LABEL_28:
      v69 = *(a1 + 13);
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_24_15(v69);
        v27 = v71;
      }

      else
      {
        v70 = vback(a1, v27);
        v27 = 0;
      }

      if ((v70 - 1) > 0xA)
      {
        goto LABEL_3;
      }

      v39 = OUTLINED_FUNCTION_35_7();
      switch(v72)
      {
        case 1:
          v26 = v27;
          goto LABEL_9;
        case 2:
          goto LABEL_13;
        case 3:
          v31 = v27;
          continue;
        case 4:
          goto LABEL_6;
        case 5:
          v31 = v27;
          goto LABEL_16;
        case 6:
          OUTLINED_FUNCTION_2_25();
          if (!test_string_s())
          {
            goto LABEL_7;
          }

          goto LABEL_28;
        case 7:
          goto LABEL_12;
        case 8:
          v31 = v27;
          goto LABEL_23;
        case 9:
          bspop_boa(a1);
          if (advance_tok(a1, v73, v74, v75))
          {
            goto LABEL_28;
          }

          v39 = 15.0;
          break;
        case 10:
          bspop_boa(a1);
          if (advance_tok(a1, v76, v77, v78))
          {
            goto LABEL_28;
          }

          v39 = 5.0;
          break;
        default:
          goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

LABEL_6:
  v32 = OUTLINED_FUNCTION_12_22();
  v31 = v27;
  if (test_synch(v32, v33, 1, v34))
  {
    goto LABEL_27;
  }

LABEL_7:
  v35 = 0x4049000000000000;
LABEL_11:
  v39 = *&v35;
LABEL_12:
  a1[425] = v39;
LABEL_13:
  vretproc(a1);
  return 0;
}