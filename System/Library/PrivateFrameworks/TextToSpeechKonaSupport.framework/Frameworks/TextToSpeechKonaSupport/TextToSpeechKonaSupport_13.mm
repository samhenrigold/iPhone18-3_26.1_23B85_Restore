uint64_t i_acute_rules(uint64_t a1)
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

uint64_t o_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_2_37(v4, v5, v6, v7, v8, v9, v10, v11, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v211);
  OUTLINED_FUNCTION_15_31(v12, v13, v14, v15, v16, v17, v18, v19, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v212, v214, v216, v218, v220);
  v20 = setjmp(v3);
  if (v20 || OUTLINED_FUNCTION_1_37(v20, v21, v22, v23, v24, v25, v26, v27, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v213, v215, SHIDWORD(v215), v217, SWORD2(v217), SHIWORD(v217), v219, SWORD2(v219), SBYTE6(v219), SHIBYTE(v219), v221, v222))
  {
    goto LABEL_3;
  }

  v29 = OUTLINED_FUNCTION_8_34();
  get_parm(v29, v30, v31, -6);
  v32 = OUTLINED_FUNCTION_37_16();
  OUTLINED_FUNCTION_52_11(v32, v33);
  fence_35(v1, 0, &null_str_12);
  v34 = OUTLINED_FUNCTION_40_13();
  fence_35(v34, v35, v36);
  v37 = OUTLINED_FUNCTION_58_10();
  starttest(v37, v38);
  v39 = OUTLINED_FUNCTION_25_24();
  if (lpta_loadp_setscan_r(v39, v40, v2))
  {
LABEL_8:
    v46 = OUTLINED_FUNCTION_22_25();
    starttest(v46, v47);
    v48 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v48, v49, v50))
    {
LABEL_15:
      v65 = OUTLINED_FUNCTION_24_25();
      if (!lpta_loadp_setscan_l(v65, v66, v67))
      {
        OUTLINED_FUNCTION_3_36();
        if (!test_string_s())
        {
          v68 = OUTLINED_FUNCTION_10_34();
          lpta_rpta_loadp(v68, v69, v70);
          v71 = OUTLINED_FUNCTION_0_39();
          inserted = insert_2pt_s(v71, v72, v73, v74, v75);
          if (!inserted)
          {
            goto LABEL_24;
          }
        }
      }

LABEL_18:
      v76 = OUTLINED_FUNCTION_37_16();
      lpta_loadpn(v76, v77);
      v78 = OUTLINED_FUNCTION_59_10();
      rpta_loadpn(v78, v79);
      if (!compare_ptas(v1) && !testeq(v1))
      {
        v80 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v80, v81, v82);
        v83 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v83, v84, v85, v86, v87);
        if (!inserted)
        {
LABEL_24:
          OUTLINED_FUNCTION_16_30(inserted, v58, v59, v60, v61, v62, v63, v64, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207);
          goto LABEL_3;
        }
      }

LABEL_21:
      v88 = OUTLINED_FUNCTION_22_25();
      starttest(v88, v89);
      v90 = OUTLINED_FUNCTION_37_16();
      if (!is_nasalized_vowel(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_10_34();
        lpta_rpta_loadp(v92, v93, v94);
        v95 = OUTLINED_FUNCTION_0_39();
        inserted = insert_2pt_s(v95, v96, v97, v98, v99);
        if (!inserted)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_21_26();
      if (testFldeq(v51, v52, 5, 2) || advance_tok(v1, v53, v54, v55))
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v41 = OUTLINED_FUNCTION_21_26();
    if (testFldeq(v41, v42, 5, 1) || advance_tok(v1, v43, v44, v45))
    {
      goto LABEL_11;
    }
  }

  while (2)
  {
    v100 = OUTLINED_FUNCTION_10_34();
    lpta_rpta_loadp(v100, v101, v102);
    v103 = OUTLINED_FUNCTION_0_39();
    inserted = insert_2pt_s(v103, v104, v105, v106, v107);
    if (!inserted)
    {
      goto LABEL_24;
    }

LABEL_11:
    v56 = *(v1 + 104);
    if (v56)
    {
      inserted = OUTLINED_FUNCTION_36_16(v56);
    }

    else
    {
      inserted = OUTLINED_FUNCTION_53_11();
    }

    switch(inserted)
    {
      case 1:
        goto LABEL_8;
      case 2:
        goto LABEL_24;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_18;
      case 5:
        goto LABEL_21;
      case 6:
        continue;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_33_19();
}

uint64_t o_acute_rules(uint64_t a1)
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

uint64_t o_circon_rules(uint64_t a1)
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

uint64_t o_tilda_rules(uint64_t a1)
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

void u_rules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_7_34();
  v67 = *MEMORY[0x277D85DE8];
  v62[0] = 0;
  v62[1] = 0;
  v60 = 0;
  v61 = 0;
  OUTLINED_FUNCTION_29_21();
  bzero(v59, v7);
  OUTLINED_FUNCTION_28_21();
  bzero(v66, v8);
  if (setjmp(v66) || ventproc(v5, v59, v65, v64, v63, v66))
  {
    goto LABEL_3;
  }

  v9 = OUTLINED_FUNCTION_32_19();
  get_parm(v9, v10, v11, -6);
  v12 = OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_52_11(v12, v13);
  fence_35(v5, 0, &null_str_12);
  v14 = OUTLINED_FUNCTION_40_13();
  fence_35(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_25_24();
  if (!is_nasalized_vowel(v17, v18))
  {
    lpta_rpta_loadp(v5, v62, &v60);
    v19 = OUTLINED_FUNCTION_0_39();
    if (!insert_2pt_s(v19, v20, v21, v22, v23))
    {
      goto LABEL_26;
    }
  }

  v24 = 0;
  while (2)
  {
    v25 = OUTLINED_FUNCTION_51_11();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_56_10();
    if (!lpta_loadp_setscan_l(v27, v28, 4))
    {
      v50 = OUTLINED_FUNCTION_47_12();
      if (!testFldeq(v50, v51, v6, 2))
      {
        bspush_ca_scan_boa();
        v52 = OUTLINED_FUNCTION_47_12();
        if (!testFldeq(v52, v53, 0, 30))
        {
          v24 = 1;
        }
      }

      goto LABEL_12;
    }

LABEL_8:
    starttest(v5, 5);
    if (lpta_loadp_setscan_r(v5, &v60, v6) || (OUTLINED_FUNCTION_46_12(), v29 = test_string_s(), v30 = v24, v29))
    {
LABEL_10:
      v31 = OUTLINED_FUNCTION_56_10();
      lpta_rpta_loadp(v31, v32, &v60);
      v33 = OUTLINED_FUNCTION_47_12();
      v35 = v6;
      v36 = &unk_2806BC36A;
    }

    else
    {
LABEL_24:
      v24 = v30;
      savescptr(v5, 6, &v60);
      *(v5 + 136) = v6;
      v54 = OUTLINED_FUNCTION_35_17();
      if (test_ptr(v54, v55, v56))
      {
        goto LABEL_12;
      }

      v57 = OUTLINED_FUNCTION_56_10();
      lpta_rpta_loadp(v57, v58, &v60);
      v33 = OUTLINED_FUNCTION_47_12();
      v35 = 2;
      v36 = &unk_2806BC399;
    }

    if (!insert_2pt_s(v33, v34, v35, v36, 0))
    {
LABEL_26:
      OUTLINED_FUNCTION_39_14(v61);
      break;
    }

LABEL_12:
    v37 = v24;
LABEL_13:
    v38 = *(v5 + 104);
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_36_16(v38);
      v24 = v40;
    }

    else
    {
      v39 = vback(v5, v37);
      v24 = 0;
    }

    switch(v39)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_26;
      case 3:
        goto LABEL_8;
      case 4:
        bspop_boa(v5);
        v44 = advance_tok(v5, v41, v42, v43);
        v37 = v24;
        if (!v44)
        {
          v45 = OUTLINED_FUNCTION_56_10();
          lpta_rpta_loadp(v45, v46, &v60);
          v47 = OUTLINED_FUNCTION_47_12();
          inserted = insert_2pt_s(v47, v48, v6, &unk_2806BC363, 0);
          v37 = v24;
          if (!inserted)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_13;
      case 5:
        goto LABEL_10;
      case 6:
        v30 = v24;
        goto LABEL_24;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v5);
  OUTLINED_FUNCTION_60_10();
}

uint64_t u_acute_rules(uint64_t a1)
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

uint64_t is_nasalized_vowel(void *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = 0;
  OUTLINED_FUNCTION_29_21();
  bzero(v51, v4);
  OUTLINED_FUNCTION_28_21();
  bzero(v57, v5);
  if (setjmp(v57))
  {
    goto LABEL_3;
  }

  v6 = ventproc(a1, v51, v56, v55, v54, v57);
  if (v6)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_6_34(v6, v7, v8, v9, v10, v11, v12, v13, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v51[21], v51[22], v52);
  v15 = 0;
  OUTLINED_FUNCTION_54_11(v16, v17, &null_str_12);
  fence_35(a1, 1, &unk_2806BC372);
  starttest(a1, 1);
  v18 = OUTLINED_FUNCTION_26_24();
  if (lpta_loadp_setscan_r(v18, v19, 1) || (OUTLINED_FUNCTION_3_36(), v20 = test_string_s(), v21 = 0, v15 = 0, v20))
  {
LABEL_10:
    v22 = v15;
    v26 = OUTLINED_FUNCTION_20_26();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_24_25();
    if (lpta_loadp_setscan_r(v28, v29, v30) || (OUTLINED_FUNCTION_3_36(), test_string_s()))
    {
LABEL_3:
      vretproc(a1);
      return 94;
    }

LABEL_12:
    v31 = OUTLINED_FUNCTION_30_20();
    savescptr(v31, v32, v33);
    OUTLINED_FUNCTION_22_25();
    bspush_ca_scan_boa();
    v34 = OUTLINED_FUNCTION_22_25();
    bspush_ca_scan(v34, v35);
  }

  else
  {
LABEL_8:
    v22 = v21;
    OUTLINED_FUNCTION_45_12();
    v23 = OUTLINED_FUNCTION_30_20();
    savescptr(v23, v24, v25);
    OUTLINED_FUNCTION_22_25();
    bspush_ca_scan_boa();
  }

  v36 = OUTLINED_FUNCTION_17_29();
  v39 = testFldeq(v36, v37, v38, 1);
  v42 = v22;
  v43 = v22;
  if (!v39)
  {
LABEL_14:
    v44 = v42;
    if (advance_tok(a1, v43, v40, v41))
    {
      LODWORD(v43) = v44;
    }

    else
    {
      LODWORD(v43) = 1;
    }
  }

  LODWORD(v22) = v43;
  while (2)
  {
    v45 = a1[13];
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_36_16(v45);
      v22 = v43;
    }

    else
    {
      v46 = vback(a1, v22);
      v22 = 0;
    }

    v42 = v22;
    switch(v46)
    {
      case 1:
        v15 = v22;
        goto LABEL_10;
      case 2:
        v21 = v22;
        goto LABEL_8;
      case 3:
      case 7:
        bspop_boa(a1);
        break;
      case 4:
        break;
      case 6:
        goto LABEL_12;
      case 8:
        v47 = OUTLINED_FUNCTION_21_26();
        v50 = testFldeq(v47, v48, v49, 16);
        v42 = v22;
        if (!v50)
        {
          goto LABEL_14;
        }

        continue;
      case 9:
        goto LABEL_14;
      default:
        goto LABEL_3;
    }

    break;
  }

  *(a2 + 8) = v53;
  vretproc(a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_2_37(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_5_35(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_6_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

void OUTLINED_FUNCTION_14_31()
{

  get_parm(v0, v2, v1, -6);
}

void OUTLINED_FUNCTION_15_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, 0xC0uLL);
}

double OUTLINED_FUNCTION_27_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  *&result = savescptr(v32, 2, &a32).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_17()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void *OUTLINED_FUNCTION_38_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_35(v3, 1, a3);
}

uint64_t OUTLINED_FUNCTION_43_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  return lpta_rpta_loadp(v37, va, &a36);
}

uint64_t OUTLINED_FUNCTION_44_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  return lpta_rpta_loadp(v35, va, &a34);
}

void OUTLINED_FUNCTION_52_11(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return vback(v0, 0);
}

void *OUTLINED_FUNCTION_54_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_35(v3, 0, a3);
}

void OUTLINED_FUNCTION_55_11()
{

  starttest(v0, v1);
}

uint64_t OUTLINED_FUNCTION_62_9(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{

  return insert_2pt_s(a1, a2, a3, v4, v3);
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

void por_non_phrasal_comma(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_44_13();
  v3 = v2;
  v52 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v45, v4);
  OUTLINED_FUNCTION_19_28();
  bzero(v51, v5);
  if (!setjmp(v51) && !ventproc(v3, v45, v50, v49, v48, v51))
  {
    v6 = OUTLINED_FUNCTION_29_22();
    OUTLINED_FUNCTION_46_13(v6, v7);
    fence_36(v3, 0, &null_str_13);
    v8 = OUTLINED_FUNCTION_13_34();
    starttest(v8, v9);
    v10 = OUTLINED_FUNCTION_29_22();
    if (!lpta_loadp_setscan_r(v10, v11, 2))
    {
      v12 = OUTLINED_FUNCTION_65_9();
      bspush_ca_scan(v12, v13);
      v14 = OUTLINED_FUNCTION_58_11();
      if (testFldeq(v14, v15, 1, 1))
      {
        v16 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_65_9();
        bspush_ca_scan_boa();
        v17 = OUTLINED_FUNCTION_12_34();
        v16 = !testFldeq(v17, v18, 3, 23);
      }

      LODWORD(v19) = v16;
      while (2)
      {
        v20 = v3[13];
        if (v20)
        {
          v21 = OUTLINED_FUNCTION_21_27(v20);
          v24 = v19;
        }

        else
        {
          v21 = vback(v3, v19);
          v24 = 0;
        }

        switch(v21)
        {
          case 2:
            v25 = OUTLINED_FUNCTION_29_22();
            bspush_ca_scan(v25, v26);
            v27 = OUTLINED_FUNCTION_4_36();
            v30 = 4;
            goto LABEL_17;
          case 3:
            bspop_boa(v3);
            bspush_ca_scan_boa();
            v42 = OUTLINED_FUNCTION_4_36();
            if (testFldeq(v42, v43, v44, 28))
            {
              LODWORD(v19) = v24;
            }

            else
            {
              LODWORD(v19) = 1;
            }

            continue;
          case 4:
            bspop_boa(v3);
            goto LABEL_18;
          case 5:
            goto LABEL_18;
          case 6:
            v31 = OUTLINED_FUNCTION_25_25();
            bspush_ca_scan(v31, v32);
            v27 = OUTLINED_FUNCTION_4_36();
            v30 = 5;
            goto LABEL_17;
          case 7:
            v27 = OUTLINED_FUNCTION_4_36();
            v30 = 6;
LABEL_17:
            v33 = testFldeq(v27, v28, v29, v30);
            v19 = v24;
            if (v33)
            {
              continue;
            }

LABEL_18:
            v34 = advance_tok(v3, v19, v22, v23);
            LODWORD(v19) = v24;
            if (v34)
            {
              continue;
            }

LABEL_19:
            v35 = OUTLINED_FUNCTION_24_26();
            v37 = test_synch(v35, v36, 1, &_MergedGlobals_33);
            LODWORD(v19) = v24;
            if (v37)
            {
              continue;
            }

LABEL_20:
            v38 = OUTLINED_FUNCTION_28_22();
            v40 = chstream(v38, v39, 1u);
            LODWORD(v19) = v24;
            if (v40)
            {
              continue;
            }

            OUTLINED_FUNCTION_36_17();
            v41 = test_string_s();
            LODWORD(v19) = v24;
            if (v41)
            {
              continue;
            }

LABEL_26:
            OUTLINED_FUNCTION_34_19();
            OUTLINED_FUNCTION_6_35();
            delete_1pt();
            break;
          case 8:
            goto LABEL_19;
          case 9:
            goto LABEL_20;
          case 10:
            goto LABEL_26;
          default:
            goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_4:
  vretproc(v3);
  OUTLINED_FUNCTION_43_13();
}

uint64_t por_post_comma_phrase()
{
  OUTLINED_FUNCTION_15_32();
  v87 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_34(v1, v2, v3, v4, v5, v6, v7, v8, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v84, v85[0], v85[1]);
  OUTLINED_FUNCTION_19_28();
  bzero(v86, v9);
  v10 = setjmp(v86);
  if (!v10 && !OUTLINED_FUNCTION_54_12(v10, v11, v12, v13, v14, v15, v16, v17, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83, v84, v85[0], v85[1], v85[2], SHIDWORD(v85[2]), v85[3], SWORD2(v85[3]), SHIWORD(v85[3]), v85[4], SWORD2(v85[4]), SBYTE6(v85[4]), SHIBYTE(v85[4]), v85[5], v86[0]))
  {
    v20 = OUTLINED_FUNCTION_10_35();
    get_parm(v20, v21, v22, -6);
    v23 = OUTLINED_FUNCTION_29_22();
    OUTLINED_FUNCTION_46_13(v23, v24);
    v18 = 0;
    v25 = OUTLINED_FUNCTION_26_25();
    fence_36(v25, v26, v27);
    v28 = OUTLINED_FUNCTION_10_35();
    tag_phrase(v28, v29, v30);
    if (!v31)
    {
      goto LABEL_4;
    }

    v32 = OUTLINED_FUNCTION_49_12();
    vocative_phrase(v32, v33, v34);
    if (!v35 || (said_phrase(v0, v85, &v83, v0 + 2544), !v36))
    {
      v18 = 0;
      goto LABEL_4;
    }
  }

  v18 = 94;
LABEL_4:
  vretproc(v0);
  return v18;
}

void tag_phrase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_15_32();
  v116 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_56_11();
  OUTLINED_FUNCTION_11_34(v4, v5, v6, v7, v8, v9, v10, v11, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113[0], v113[1], v114[0], v114[1]);
  OUTLINED_FUNCTION_19_28();
  bzero(v115, v12);
  if (!setjmp(v115))
  {
    OUTLINED_FUNCTION_52_12();
    if (!ventproc(v3, v13, v14, v15, v16, v115))
    {
      v17 = OUTLINED_FUNCTION_10_35();
      get_parm(v17, v18, v19, -6);
      v20 = OUTLINED_FUNCTION_23_26();
      get_parm(v20, v21, v22, -6);
      v23 = OUTLINED_FUNCTION_30_21();
      push_ptr_init(v23, v24);
      push_ptr_init(v3, v113);
      v25 = 0;
      v26 = OUTLINED_FUNCTION_26_25();
      fence_36(v26, v27, v28);
      v29 = OUTLINED_FUNCTION_5_36();
      if (!lpta_loadp_setscan_r(v29, v30, v31))
      {
        if (!advance_tok(v3, v32, v33, v34))
        {
          OUTLINED_FUNCTION_34_19();
          v35 = OUTLINED_FUNCTION_6_35();
          if (!test_ptr(v35, v36, v37))
          {
            v83 = OUTLINED_FUNCTION_13_34();
            starttest_l(v83, v84);
            OUTLINED_FUNCTION_8_35();
            bspush_ca_boa();
            v85 = OUTLINED_FUNCTION_45_13();
            lpta_rpta_loadp(v85, v86, v87);
            v88 = OUTLINED_FUNCTION_36_17();
            v57 = !setd_lookup(v88, v89, 45);
            goto LABEL_15;
          }
        }

        v25 = 0;
      }

      while (2)
      {
        v38 = OUTLINED_FUNCTION_16_31();
        if (lpta_loadp_setscan_r(v38, v39, v40))
        {
          break;
        }

        if (advance_tok(v3, v41, v42, v43))
        {
          break;
        }

        if (advance_tok(v3, v44, v45, v46))
        {
          break;
        }

        OUTLINED_FUNCTION_34_19();
        v47 = OUTLINED_FUNCTION_6_35();
        if (test_ptr(v47, v48, v49))
        {
          break;
        }

        v50 = OUTLINED_FUNCTION_13_34();
        starttest_l(v50, v51);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_boa();
        v52 = OUTLINED_FUNCTION_45_13();
        lpta_rpta_loadp(v52, v53, v54);
        v55 = OUTLINED_FUNCTION_36_17();
        v57 = !setd_lookup(v55, v56, 46) || v25;
LABEL_15:
        v58 = v57;
LABEL_16:
        v59 = *(v3 + 104);
        if (v59)
        {
          v60 = OUTLINED_FUNCTION_21_27(v59);
          v62 = v61;
        }

        else
        {
          v60 = vback(v3, v58);
          v62 = 0;
        }

        switch(v60)
        {
          case 1:
            v25 = v62;
            continue;
          case 2:
          case 4:
          case 6:
            *(v3 + 3190) = *(v3 + 3198);
            v63 = OUTLINED_FUNCTION_37_17();
            adjust_prev_phr_pause(v63, v64, v65);
            goto LABEL_21;
          case 3:
          case 7:
            bspop_boa(v3);
            goto LABEL_3;
          case 8:
LABEL_21:
            v66 = OUTLINED_FUNCTION_29_22();
            starttest(v66, v67);
            v68 = OUTLINED_FUNCTION_37_17();
            if (!lpta_loadp_setscan_l(v68, v69, 5) && !advanc(v3))
            {
              goto LABEL_23;
            }

            goto LABEL_3;
          case 10:
LABEL_23:
            v70 = OUTLINED_FUNCTION_18_29();
            savescptr(v70, v71, v113);
            v75 = advance_tok(v3, v72, v73, v74);
            v58 = v62;
            if (!v75)
            {
              goto LABEL_24;
            }

            goto LABEL_16;
          case 11:
LABEL_24:
            v76 = OUTLINED_FUNCTION_24_26();
            savescptr(v76, v77, v114);
            v78 = OUTLINED_FUNCTION_28_22();
            lpta_rpta_loadp(v78, v79, v113);
            OUTLINED_FUNCTION_47_13();
            v80 = mark_s();
            v58 = v62;
            if (!v80)
            {
              OUTLINED_FUNCTION_47_13();
              v81 = mark_s();
              v58 = v62;
              if (!v81)
              {
                OUTLINED_FUNCTION_47_13();
                v82 = mark_s();
                v58 = v62;
                if (!v82)
                {
                  goto LABEL_3;
                }
              }
            }

            goto LABEL_16;
          default:
            goto LABEL_3;
        }
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_43_13();
}

void vocative_phrase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_15_32();
  v117 = *MEMORY[0x277D85DE8];
  v111 = 0;
  v112 = 0;
  OUTLINED_FUNCTION_35_18();
  OUTLINED_FUNCTION_20_27();
  bzero(v107, v4);
  OUTLINED_FUNCTION_19_28();
  bzero(v116, v5);
  if (!setjmp(v116) && !ventproc(v3, v107, v115, v114, v113, v116))
  {
    v6 = OUTLINED_FUNCTION_10_35();
    get_parm(v6, v7, v8, -6);
    v9 = OUTLINED_FUNCTION_23_26();
    get_parm(v9, v10, v11, -6);
    v12 = OUTLINED_FUNCTION_42_13();
    push_ptr_init(v12, v13);
    push_ptr_init(v3, v109);
    push_ptr_init(v3, v108);
    LODWORD(v14) = 0;
    v15 = OUTLINED_FUNCTION_26_25();
    fence_36(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_13_34();
    starttest(v18, v19);
    v20 = OUTLINED_FUNCTION_5_36();
    v23 = 0;
    if (lpta_loadp_setscan_l(v20, v21, v22))
    {
LABEL_5:
      v24 = OUTLINED_FUNCTION_16_31();
      if (lpta_loadp_setscan_r(v24, v25, v26) || advance_tok(v3, v27, v28, v29) || (OUTLINED_FUNCTION_34_19(), v30 = OUTLINED_FUNCTION_6_35(), test_ptr(v30, v31, v32)))
      {
LABEL_38:
        v90 = OUTLINED_FUNCTION_16_31();
        if (lpta_loadp_setscan_r(v90, v91, v92))
        {
          goto LABEL_3;
        }

        if (advance_tok(v3, v93, v94, v95))
        {
          goto LABEL_3;
        }

        if (advance_tok(v3, v96, v97, v98))
        {
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_34_19();
        v99 = OUTLINED_FUNCTION_6_35();
        if (test_ptr(v99, v100, v101))
        {
          goto LABEL_3;
        }

        v102 = OUTLINED_FUNCTION_13_34();
        starttest_l(v102, v103);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_boa();
        v104 = OUTLINED_FUNCTION_70_9();
        lpta_rpta_loadp(v104, v105, v106);
        v38 = OUTLINED_FUNCTION_36_17();
        v40 = 48;
      }

      else
      {
        v33 = OUTLINED_FUNCTION_13_34();
        starttest_l(v33, v34);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_boa();
        v35 = OUTLINED_FUNCTION_70_9();
        lpta_rpta_loadp(v35, v36, v37);
        v38 = OUTLINED_FUNCTION_36_17();
        v40 = 47;
      }

      v43 = setd_lookup(v38, v39, v40);
    }

    else
    {
LABEL_9:
      savescptr(v3, 2, v110);
      OUTLINED_FUNCTION_50_12();
      bspush_ca_scan_boa();
      v41 = OUTLINED_FUNCTION_58_11();
      v43 = testFldeq(v41, v42, 3, 37);
      v23 = v14;
    }

    if (v43)
    {
      v60 = v23;
    }

    else
    {
      v60 = 1;
    }

    while (2)
    {
      v44 = *(v3 + 104);
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_21_27(v44);
        v14 = v46;
      }

      else
      {
        v45 = vback(v3, v60);
        v14 = 0;
      }

      switch(v45)
      {
        case 1:
          v23 = v14;
          goto LABEL_5;
        case 2:
          goto LABEL_9;
        case 3:
          bspop_boa(v3);
          OUTLINED_FUNCTION_57_11();
          bspush_ca_scan_boa();
          v68 = OUTLINED_FUNCTION_4_36();
          v71 = testFldeq(v68, v69, v70, 12);
          goto LABEL_26;
        case 4:
          bspop_boa(v3);
          v75 = advance_tok(v3, v72, v73, v74);
          v60 = v14;
          if (v75)
          {
            continue;
          }

          OUTLINED_FUNCTION_41_13();
          bspush_ca_scan_boa();
          goto LABEL_25;
        case 5:
          bspop_boa(v3);
          v78 = lpta_loadp_setscan_r(v3, v110, 2);
          v60 = v14;
          if (v78)
          {
            continue;
          }

          v79 = OUTLINED_FUNCTION_4_36();
          v82 = testFldeq(v79, v80, v81, 12);
          v60 = v14;
          if (v82)
          {
            continue;
          }

          v85 = advance_tok(v3, v14, v83, v84);
          v60 = v14;
          if (v85)
          {
            continue;
          }

          OUTLINED_FUNCTION_34_19();
          v86 = OUTLINED_FUNCTION_6_35();
          v89 = test_ptr(v86, v87, v88);
          v60 = v14;
          if (v89)
          {
            continue;
          }

          goto LABEL_14;
        case 6:
LABEL_25:
          v76 = OUTLINED_FUNCTION_28_22();
          v71 = test_synch(v76, v77, 1, &_MergedGlobals_33);
LABEL_26:
          if (v71)
          {
            v60 = v14;
          }

          else
          {
            v60 = 1;
          }

          continue;
        case 7:
        case 9:
        case 12:
LABEL_14:
          *(v3 + 3190) = *(v3 + 3202);
          v47 = OUTLINED_FUNCTION_68_9();
          adjust_prev_phr_pause(v47, v48, v49);
          goto LABEL_15;
        case 8:
          v23 = v14;
          goto LABEL_38;
        case 10:
        case 13:
          bspop_boa(v3);
          goto LABEL_3;
        case 14:
LABEL_15:
          v50 = OUTLINED_FUNCTION_40_14();
          starttest(v50, v51);
          v52 = OUTLINED_FUNCTION_68_9();
          if (!lpta_loadp_setscan_l(v52, v53, 5) && !advanc(v3))
          {
            goto LABEL_17;
          }

          goto LABEL_3;
        case 16:
LABEL_17:
          v54 = OUTLINED_FUNCTION_24_26();
          savescptr(v54, v55, v108);
          v59 = advance_tok(v3, v56, v57, v58);
          v60 = v14;
          if (!v59)
          {
            goto LABEL_18;
          }

          continue;
        case 17:
LABEL_18:
          v61 = OUTLINED_FUNCTION_37_17();
          savescptr(v61, v62, v109);
          v63 = OUTLINED_FUNCTION_27_23();
          lpta_rpta_loadp(v63, v64, v108);
          OUTLINED_FUNCTION_67_9();
          v65 = mark_s();
          v60 = v14;
          if (!v65)
          {
            OUTLINED_FUNCTION_67_9();
            v66 = mark_s();
            v60 = v14;
            if (!v66)
            {
              OUTLINED_FUNCTION_67_9();
              v67 = mark_s();
              v60 = v14;
              if (!v67)
              {
                goto LABEL_3;
              }
            }
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_43_13();
}

void por_said_phrase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_9_35();
  v93 = *MEMORY[0x277D85DE8];
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  HIDWORD(v77) = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  OUTLINED_FUNCTION_56_11();
  OUTLINED_FUNCTION_20_27();
  bzero(v70, v4);
  OUTLINED_FUNCTION_19_28();
  bzero(v92, v5);
  v6 = setjmp(v92);
  if (!v6)
  {
    v13 = OUTLINED_FUNCTION_61_11(v6, v70, v7, v8, v9, v10, v11, v12, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12], v70[13], v70[14], v70[15], v70[16], v70[17], v70[18], v70[19], v70[20], v70[21], v70[22], v71[0], v71[1], v72[0], v72[1], v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92[0]);
    if (!v13)
    {
      OUTLINED_FUNCTION_39_15(v13, &v80);
      OUTLINED_FUNCTION_22_26(v14, &v78);
      v15 = OUTLINED_FUNCTION_23_26();
      get_parm(v15, v16, v17, -4);
      push_ptr_init(v3, &v75);
      push_ptr_init(v3, &v73);
      push_ptr_init(v3, v72);
      push_ptr_init(v3, v71);
      fence_36(v3, 0, &null_str_13);
      v18 = OUTLINED_FUNCTION_58_11();
      fence_36(v18, v19, v20);
      if (*(v3 + 2546) != HIWORD(v77) || (lpta_loadpn(v3, &v78), rpta_loadpn(v3, v3 + 1432), compare_ptas(v3)) || testneq(v3))
      {
        while (2)
        {
          v21 = OUTLINED_FUNCTION_18_29();
          starttest(v21, v22);
          if (lpta_loadp_setscan_r(v3, &v80, 2))
          {
            break;
          }

          v23 = OUTLINED_FUNCTION_3_37();
          if (!testFldeq(v23, v24, v25, 2))
          {
            bspush_ca_scan(v3, 4);
            v26 = OUTLINED_FUNCTION_12_34();
            v28 = 11;
LABEL_10:
            if (!testFldeq(v26, v27, 3, v28))
            {
LABEL_11:
              if (!advance_tok(v3, v29, v30, v31) && !advanc(v3))
              {
LABEL_13:
                v32 = OUTLINED_FUNCTION_57_11();
                savescptr(v32, v33, &v75);
                v34 = OUTLINED_FUNCTION_40_14();
                bspush_ca_scan(v34, v35);
                v36 = OUTLINED_FUNCTION_3_37();
                v39 = 5;
LABEL_14:
                if (!testFldeq(v36, v37, v38, v39))
                {
LABEL_15:
                  if (!advance_tok(v3, v29, v30, v31))
                  {
LABEL_16:
                    v40 = OUTLINED_FUNCTION_41_13();
                    savescptr(v40, v41, &v73);
                    *(v3 + 136) = 1;
                    v42 = OUTLINED_FUNCTION_6_35();
                    if (!test_ptr(v42, v43, v44))
                    {
LABEL_17:
                      if (is_quotative_verb(v3))
                      {
LABEL_18:
                        if (*(v3 + 2590) != HIWORD(v77) || is_exclam_verb(v3))
                        {
                          break;
                        }
                      }

LABEL_20:
                      v45 = OUTLINED_FUNCTION_31_21();
                      fence_36(v45, v46, &null_str_13);
                      v47 = OUTLINED_FUNCTION_25_25();
                      starttest(v47, v48);
                      if (lpta_loadp_setscan_l(v3, &v80, 5))
                      {
                        break;
                      }

LABEL_21:
                      v49 = OUTLINED_FUNCTION_24_26();
                      savescptr(v49, v50, v71);
                      if (!advanc(v3))
                      {
                        v51 = OUTLINED_FUNCTION_47_13();
                        if (!testFldeq(v51, v52, 1, 1) && !advance_tok(v3, v53, v54, v55))
                        {
LABEL_24:
                          v56 = OUTLINED_FUNCTION_69_9();
                          savescptr(v56, v57, v72);
                          v58 = OUTLINED_FUNCTION_27_23();
                          lpta_rpta_loadp(v58, v59, v71);
                          OUTLINED_FUNCTION_47_13();
                          if (!mark_s())
                          {
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

          v60 = *(v3 + 104);
          if (v60)
          {
            v61 = OUTLINED_FUNCTION_21_27(v60);
          }

          else
          {
            v62 = OUTLINED_FUNCTION_31_21();
            v61 = vback(v62, v63);
          }

          switch(v61)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_17;
            case 4:
              v64 = OUTLINED_FUNCTION_28_22();
              bspush_ca_scan(v64, v65);
              v26 = OUTLINED_FUNCTION_12_34();
              v28 = 10;
              goto LABEL_10;
            case 5:
              goto LABEL_11;
            case 6:
              v26 = OUTLINED_FUNCTION_12_34();
              v28 = 12;
              goto LABEL_10;
            case 7:
              goto LABEL_13;
            case 8:
              v36 = OUTLINED_FUNCTION_12_34();
              v38 = 1;
              v39 = 11;
              goto LABEL_14;
            case 9:
              goto LABEL_15;
            case 10:
              goto LABEL_16;
            case 11:
              goto LABEL_18;
            case 12:
              goto LABEL_20;
            case 15:
              goto LABEL_21;
            case 16:
              goto LABEL_24;
            default:
              goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_43_13();
}

uint64_t is_quotative_verb(uint64_t a1)
{
  OUTLINED_FUNCTION_15_32();
  v93 = *MEMORY[0x277D85DE8];
  v91[4] = 0;
  v91[5] = 0;
  OUTLINED_FUNCTION_11_34(v2, v3, v4, v5, v6, v7, v8, v9, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0], v91[1], v91[2], v91[3]);
  OUTLINED_FUNCTION_19_28();
  bzero(v92, v10);
  if (setjmp(v92))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_53_12();
  if (OUTLINED_FUNCTION_73_9(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_10_35();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_23_26();
  get_parm(v21, v22, v23, -6);
  push_ptr_init(v1, v91);
  fence_36(v1, 0, &null_str_13);
  v24 = OUTLINED_FUNCTION_58_11();
  fence_36(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_65_9();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_5_36();
  if (lpta_loadp_setscan_r(v29, v30, v31))
  {
LABEL_9:
    v38 = OUTLINED_FUNCTION_8_35();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_30_21();
    if (lpta_loadp_setscan_l(v40, v41, 1))
    {
LABEL_3:
      v16 = 94;
      goto LABEL_4;
    }

LABEL_10:
    if (!advance_tok(v1, v42, v43, v44))
    {
      v45 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v45, v46);
LABEL_12:
      v47 = OUTLINED_FUNCTION_49_12();
      savescptr(v47, v48, v49);
      if (!advance_tok(v1, v50, v51, v52) && !advance_tok(v1, v53, v54, v55) && !advance_tok(v1, v56, v57, v58))
      {
        v59 = OUTLINED_FUNCTION_49_12();
        lpta_rpta_loadp(v59, v60, v61);
        v62 = OUTLINED_FUNCTION_36_17();
        if (!setd_lookup(v62, v63, 43))
        {
LABEL_8:
          v16 = 0;
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v32 = OUTLINED_FUNCTION_4_36();
    if (!testFldeq(v32, v33, v34, 21) && !advance_tok(v1, v35, v36, v37))
    {
      goto LABEL_8;
    }
  }

  v64 = *(v1 + 104);
  if (v64)
  {
    v65 = OUTLINED_FUNCTION_21_27(v64);
  }

  else
  {
    v66 = OUTLINED_FUNCTION_31_21();
    v65 = vback(v66, v67);
  }

  v16 = 0;
  switch(v65)
  {
    case 1:
      goto LABEL_9;
    case 2:
      break;
    case 4:
      goto LABEL_10;
    case 5:
      goto LABEL_12;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(v1);
  return v16;
}

uint64_t is_exclam_verb(uint64_t a1)
{
  OUTLINED_FUNCTION_15_32();
  v93 = *MEMORY[0x277D85DE8];
  v91[4] = 0;
  v91[5] = 0;
  OUTLINED_FUNCTION_11_34(v2, v3, v4, v5, v6, v7, v8, v9, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0], v91[1], v91[2], v91[3]);
  OUTLINED_FUNCTION_19_28();
  bzero(v92, v10);
  if (setjmp(v92))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_53_12();
  if (OUTLINED_FUNCTION_73_9(v11, v12, v13, v14, v15))
  {
    goto LABEL_3;
  }

  v18 = OUTLINED_FUNCTION_10_35();
  get_parm(v18, v19, v20, -6);
  v21 = OUTLINED_FUNCTION_23_26();
  get_parm(v21, v22, v23, -6);
  push_ptr_init(v1, v91);
  fence_36(v1, 0, &null_str_13);
  v24 = OUTLINED_FUNCTION_58_11();
  fence_36(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_65_9();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_5_36();
  if (lpta_loadp_setscan_r(v29, v30, v31))
  {
LABEL_9:
    v38 = OUTLINED_FUNCTION_8_35();
    starttest(v38, v39);
    v40 = OUTLINED_FUNCTION_30_21();
    if (lpta_loadp_setscan_l(v40, v41, 1))
    {
LABEL_3:
      v16 = 94;
      goto LABEL_4;
    }

LABEL_10:
    if (!advance_tok(v1, v42, v43, v44))
    {
      v45 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v45, v46);
LABEL_12:
      v47 = OUTLINED_FUNCTION_49_12();
      savescptr(v47, v48, v49);
      if (!advance_tok(v1, v50, v51, v52) && !advance_tok(v1, v53, v54, v55) && !advance_tok(v1, v56, v57, v58))
      {
        v59 = OUTLINED_FUNCTION_49_12();
        lpta_rpta_loadp(v59, v60, v61);
        v62 = OUTLINED_FUNCTION_36_17();
        if (!setd_lookup(v62, v63, 44))
        {
LABEL_8:
          v16 = 0;
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v32 = OUTLINED_FUNCTION_4_36();
    if (!testFldeq(v32, v33, v34, 22) && !advance_tok(v1, v35, v36, v37))
    {
      goto LABEL_8;
    }
  }

  v64 = *(v1 + 104);
  if (v64)
  {
    v65 = OUTLINED_FUNCTION_21_27(v64);
  }

  else
  {
    v66 = OUTLINED_FUNCTION_31_21();
    v65 = vback(v66, v67);
  }

  v16 = 0;
  switch(v65)
  {
    case 1:
      goto LABEL_9;
    case 2:
      break;
    case 4:
      goto LABEL_10;
    case 5:
      goto LABEL_12;
    default:
      goto LABEL_3;
  }

LABEL_4:
  vretproc(v1);
  return v16;
}

uint64_t find_por_obligatory_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_9_35();
  v223 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_56_11();
  v220 = 0;
  v219[0] = 0;
  v219[1] = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(&v196, v3);
  OUTLINED_FUNCTION_19_28();
  bzero(v222, v4);
  if (setjmp(v222))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_52_12();
  if (OUTLINED_FUNCTION_73_9(v5, v6, v7, v8, v9))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_51_12(v11, v12);
  OUTLINED_FUNCTION_22_26(v13, v221);
  v14 = OUTLINED_FUNCTION_23_26();
  get_parm(v14, v15, v16, -4);
  push_ptr_init(v1, v219);
  v17 = 0;
  v18 = OUTLINED_FUNCTION_26_25();
  fence_36(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_13_34();
  starttest(v21, v22);
  v23 = OUTLINED_FUNCTION_27_23();
  if (!lpta_loadp_setscan_r(v23, v24, 2))
  {
    v25 = OUTLINED_FUNCTION_2_38();
    if (testFldeq(v25, v26, v27, 5) || advance_tok(v1, v28, v29, v30))
    {
      v17 = 0;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v31, v32);
      LODWORD(v33) = 0;
LABEL_10:
      v17 = v33;
      v34 = OUTLINED_FUNCTION_8_35();
      if (!test_synch(v34, v35, 1, v36))
      {
LABEL_82:
        HIWORD(v220) = 1;
        OUTLINED_FUNCTION_66_9(1);
        goto LABEL_4;
      }
    }

LABEL_80:
    LODWORD(v39) = v17;
    while (2)
    {
      v37 = v1[13];
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_21_27(v37);
        v41 = v39;
      }

      else
      {
        v38 = vback(v1, v39);
        v41 = 0;
      }

      v33 = v41;
      v17 = v41;
      v42 = v41;
      switch(v38)
      {
        case 1:
          v17 = v41;
          break;
        case 2:
          v43 = OUTLINED_FUNCTION_2_38();
          v46 = testFldeq(v43, v44, v45, 10);
          LODWORD(v39) = v41;
          if (!v46)
          {
            v49 = advance_tok(v1, v41, v47, v48);
            LODWORD(v33) = v41;
            LODWORD(v39) = v41;
            if (!v49)
            {
              goto LABEL_10;
            }
          }

          continue;
        case 3:
          goto LABEL_10;
        case 4:
          goto LABEL_82;
        case 5:
          goto LABEL_57;
        case 6:
          v17 = v41;
          goto LABEL_66;
        case 7:
          v119 = OUTLINED_FUNCTION_50_12();
          bspush_ca_scan(v119, v120);
          OUTLINED_FUNCTION_13_34();
          bspush_ca_scan_boa();
          v50 = OUTLINED_FUNCTION_2_38();
          v53 = 9;
          goto LABEL_45;
        case 8:
          goto LABEL_69;
        case 9:
          v107 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v107, v108);
          v109 = OUTLINED_FUNCTION_4_36();
          v112 = 3;
          goto LABEL_50;
        case 10:
          bspop_boa(v1);
          v109 = OUTLINED_FUNCTION_1_38();
          goto LABEL_50;
        case 11:
          goto LABEL_51;
        case 12:
          v113 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v113, v114);
          v109 = OUTLINED_FUNCTION_3_37();
          v112 = 2;
          goto LABEL_50;
        case 13:
          v109 = OUTLINED_FUNCTION_4_36();
          v112 = 37;
LABEL_50:
          v121 = testFldeq(v109, v110, v111, v112);
          v39 = v41;
          if (v121)
          {
            continue;
          }

LABEL_51:
          v122 = advance_tok(v1, v39, v33, v40);
          v17 = v41;
          LODWORD(v39) = v41;
          if (!v122)
          {
            goto LABEL_69;
          }

          continue;
        case 14:
          bspop_boa(v1);
          goto LABEL_82;
        case 15:
          v115 = OUTLINED_FUNCTION_2_38();
          v118 = testFldeq(v115, v116, v117, 9);
          v42 = v41;
          v39 = v41;
          if (!v118)
          {
            goto LABEL_74;
          }

          continue;
        case 16:
          goto LABEL_74;
        case 17:
          goto LABEL_58;
        case 18:
          v17 = v41;
          goto LABEL_75;
        case 19:
          v70 = OUTLINED_FUNCTION_2_38();
          v73 = testFldeq(v70, v71, v72, 3);
          LODWORD(v39) = v41;
          if (v73)
          {
            continue;
          }

          v74 = OUTLINED_FUNCTION_3_37();
          v77 = testFldeq(v74, v75, v76, 5);
          v39 = v41;
          if (v77)
          {
            continue;
          }

          goto LABEL_29;
        case 20:
          bspop_boa(v1);
LABEL_29:
          v80 = advance_tok(v1, v39, v78, v79);
          LODWORD(v39) = v41;
          if (!v80)
          {
            goto LABEL_30;
          }

          continue;
        case 21:
LABEL_30:
          v81 = OUTLINED_FUNCTION_16_31();
          v84 = lpta_loadp_setscan_l(v81, v82, v83);
          LODWORD(v39) = v41;
          if (v84)
          {
            continue;
          }

          v85 = OUTLINED_FUNCTION_0_40();
          v89 = testFldeq(v85, v86, v87, v88);
          LODWORD(v39) = v41;
          if (v89)
          {
            continue;
          }

          OUTLINED_FUNCTION_13_34();
          bspush_ca_scan_boa();
          v50 = OUTLINED_FUNCTION_4_36();
          v53 = 5;
          goto LABEL_45;
        case 22:
          bspop_boa(v1);
          v96 = advance_tok(v1, v93, v94, v95);
          LODWORD(v39) = v41;
          if (v96)
          {
            continue;
          }

          v97 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v97, v98);
          v99 = OUTLINED_FUNCTION_1_38();
          v103 = testFldeq(v99, v100, v101, v102);
          LODWORD(v39) = v41;
          if (v103)
          {
            continue;
          }

          v106 = advance_tok(v1, v41, v104, v105);
          LODWORD(v39) = v41;
          if (v106)
          {
            continue;
          }

          v58 = OUTLINED_FUNCTION_2_38();
          v61 = 9;
          goto LABEL_22;
        case 23:
          v54 = OUTLINED_FUNCTION_2_38();
          v57 = testFldeq(v54, v55, v56, 9);
          LODWORD(v39) = v41;
          if (v57)
          {
            continue;
          }

          v58 = OUTLINED_FUNCTION_1_38();
LABEL_22:
          v62 = testFldeq(v58, v59, v60, v61);
          LODWORD(v39) = v41;
          if (!v62)
          {
            v65 = advance_tok(v1, v41, v63, v64);
            LODWORD(v39) = v41;
            if (!v65)
            {
              goto LABEL_24;
            }
          }

          continue;
        case 24:
LABEL_24:
          OUTLINED_FUNCTION_34_19();
          v66 = OUTLINED_FUNCTION_6_35();
          v69 = test_ptr(v66, v67, v68);
          goto LABEL_34;
        case 26:
          v17 = v41;
          goto LABEL_59;
        case 27:
          bspop_boa(v1);
          OUTLINED_FUNCTION_13_34();
          bspush_ca_scan_boa();
          v50 = OUTLINED_FUNCTION_4_36();
          v53 = 16;
LABEL_45:
          if (testFldeq(v50, v51, v52, v53))
          {
            LODWORD(v39) = v41;
          }

          else
          {
            LODWORD(v39) = 1;
          }

          continue;
        case 28:
          bspop_boa(v1);
          v69 = advance_tok(v1, v90, v91, v92);
LABEL_34:
          LODWORD(v39) = v41;
          if (!v69)
          {
            goto LABEL_82;
          }

          continue;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  LODWORD(v41) = v17;
  v123 = OUTLINED_FUNCTION_13_34();
  starttest(v123, v124);
  v125 = OUTLINED_FUNCTION_16_31();
  if (!lpta_loadp_setscan_l(v125, v126, v127))
  {
LABEL_66:
    OUTLINED_FUNCTION_62_10(6, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219[0]);
    v160 = OUTLINED_FUNCTION_0_40();
    if (testFldeq(v160, v161, v162, v163) || advance_tok(v1, v164, v165, v166))
    {
      goto LABEL_80;
    }

    v167 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v167, v168);
LABEL_69:
    v169 = OUTLINED_FUNCTION_4_36();
    if (testFldeq(v169, v170, v171, 28))
    {
      goto LABEL_80;
    }

    if (advance_tok(v1, v172, v173, v174))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_34_19();
    v175 = OUTLINED_FUNCTION_6_35();
    if (test_ptr(v175, v176, v177))
    {
      goto LABEL_80;
    }

    v178 = OUTLINED_FUNCTION_16_31();
    if (lpta_loadp_setscan_r(v178, v179, v180))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_13_34();
    bspush_ca_scan_boa();
    v181 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v181, v182);
    v183 = OUTLINED_FUNCTION_0_40();
    v187 = testFldeq(v183, v184, v185, v186);
    v42 = v17;
    if (v187)
    {
      goto LABEL_80;
    }

LABEL_74:
    v17 = v42;
    v188 = advance_tok(v1, v39, v33, v40);
LABEL_78:
    if (!v188)
    {
      v17 = 1;
    }

    goto LABEL_80;
  }

LABEL_57:
  v128 = OUTLINED_FUNCTION_13_34();
  starttest(v128, v129);
  v130 = OUTLINED_FUNCTION_16_31();
  v17 = v41;
  if (!lpta_loadp_setscan_r(v130, v131, v132))
  {
LABEL_75:
    OUTLINED_FUNCTION_62_10(18, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219[0]);
    v189 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v189, v190);
    v191 = OUTLINED_FUNCTION_1_38();
    if (testFldeq(v191, v192, v193, v194))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_13_34();
    bspush_ca_scan_boa();
    v156 = OUTLINED_FUNCTION_2_38();
    v159 = 9;
LABEL_77:
    v188 = testFldeq(v156, v157, v158, v159);
    goto LABEL_78;
  }

LABEL_58:
  v133 = OUTLINED_FUNCTION_13_34();
  starttest(v133, v134);
  v135 = OUTLINED_FUNCTION_16_31();
  v17 = v41;
  if (!lpta_loadp_setscan_l(v135, v136, v137))
  {
LABEL_59:
    OUTLINED_FUNCTION_62_10(26, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219[0]);
    v138 = OUTLINED_FUNCTION_2_38();
    if (testFldeq(v138, v139, v140, 3))
    {
      goto LABEL_80;
    }

    v141 = OUTLINED_FUNCTION_3_37();
    if (testFldeq(v141, v142, v143, 5))
    {
      goto LABEL_80;
    }

    if (advance_tok(v1, v144, v145, v146))
    {
      goto LABEL_80;
    }

    v147 = OUTLINED_FUNCTION_16_31();
    if (lpta_loadp_setscan_r(v147, v148, v149))
    {
      goto LABEL_80;
    }

    v150 = OUTLINED_FUNCTION_2_38();
    if (testFldeq(v150, v151, v152, 3))
    {
      goto LABEL_80;
    }

    v153 = OUTLINED_FUNCTION_3_37();
    if (testFldeq(v153, v154, v155, 5))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_13_34();
    bspush_ca_scan_boa();
    v156 = OUTLINED_FUNCTION_4_36();
    v159 = 19;
    goto LABEL_77;
  }

LABEL_3:
  v2 = 94;
LABEL_4:
  vretproc(v1);
  return v2;
}

uint64_t find_por_potential_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_9_35();
  v97 = *MEMORY[0x277D85DE8];
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v87[0] = 0;
  v87[1] = 0;
  OUTLINED_FUNCTION_17_30();
  v82[0] = 0;
  v82[1] = 0;
  v81[0] = 0;
  v81[1] = 0;
  v80[0] = 0;
  v80[1] = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v79, v5);
  OUTLINED_FUNCTION_19_28();
  bzero(v96, v6);
  if (setjmp(v96) || ventproc(v1, v79, v95, v94, v93, v96))
  {
    goto LABEL_3;
  }

  v8 = OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_51_12(v8, v9);
  OUTLINED_FUNCTION_22_26(v10, &v89);
  v11 = OUTLINED_FUNCTION_23_26();
  get_parm(v11, v12, v13, -4);
  push_ptr_init(v1, v87);
  push_ptr_init(v1, v86);
  push_ptr_init(v1, v85);
  v14 = OUTLINED_FUNCTION_33_20();
  push_ptr_init(v14, v15);
  v16 = OUTLINED_FUNCTION_59_11();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_42_13();
  push_ptr_init(v18, v19);
  push_ptr_init(v1, v81);
  push_ptr_init(v1, v80);
  v20 = fence_36(v1, 0, &null_str_13);
  OUTLINED_FUNCTION_60_11(v20, v21, &_MergedGlobals_33);
  v22 = OUTLINED_FUNCTION_55_12();
  starttest(v22, v23);
  v24 = OUTLINED_FUNCTION_27_23();
  if (lpta_loadp_setscan_r(v24, v25, 2))
  {
    while (2)
    {
      starttest(v1, 2);
      if (!lpta_loadp_setscan_l(v1, &v91, 2) && !advanc(v1))
      {
LABEL_14:
        savescptr(v1, 3, v84);
        if (advance_tok(v1, v37, v38, v39))
        {
          goto LABEL_8;
        }

LABEL_15:
        savescptr(v1, 4, v85);
        v40 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v40, v41);
        if (advanc(v1))
        {
LABEL_8:
          v33 = v1[13];
          if (v33)
          {
            v34 = OUTLINED_FUNCTION_21_27(v33);
          }

          else
          {
            v35 = OUTLINED_FUNCTION_31_21();
            v34 = vback(v35, v36);
          }

          switch(v34)
          {
            case 1:
              continue;
            case 2:
              goto LABEL_18;
            case 3:
              goto LABEL_14;
            case 4:
              goto LABEL_15;
            case 5:
              break;
            case 6:
              goto LABEL_17;
            case 7:
              goto LABEL_24;
            case 8:
              goto LABEL_20;
            case 9:
              goto LABEL_21;
            case 10:
              goto LABEL_22;
            case 11:
              goto LABEL_23;
            case 12:
              goto LABEL_25;
            case 13:
              goto LABEL_30;
            case 14:
              goto LABEL_26;
            case 15:
              goto LABEL_27;
            case 16:
              goto LABEL_28;
            case 17:
              goto LABEL_29;
            default:
              goto LABEL_3;
          }
        }

        savescptr(v1, 5, v86);
        if (advance_tok(v1, v42, v43, v44))
        {
          goto LABEL_8;
        }

LABEL_17:
        savescptr(v1, 6, v87);
      }

      break;
    }

LABEL_18:
    v45 = OUTLINED_FUNCTION_13_34();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_16_31();
    if (lpta_loadp_setscan_r(v47, v48, v49) || advanc(v1))
    {
LABEL_24:
      OUTLINED_FUNCTION_32_20();
      v61 = OUTLINED_FUNCTION_71_9();
      coord_conj(v61, v62, v63);
      if (v64)
      {
LABEL_25:
        subord_conj(v1, &v91, &v89, v87, v86, v85, v84, v83, v82, &v88, v78, v79[0], v79[1], v79[2], v79[3], v79[4], v79[5], v79[6], v79[7], v79[8], v79[9], v79[10]);
        if (v65)
        {
LABEL_26:
          OUTLINED_FUNCTION_32_20();
          v66 = OUTLINED_FUNCTION_71_9();
          prep_phrase(v66, v67, v68);
          if (v69)
          {
LABEL_27:
            OUTLINED_FUNCTION_32_20();
            relpro(v1, v70, v71);
            if (v72)
            {
LABEL_28:
              v73 = OUTLINED_FUNCTION_63_9();
              if (verb_phrase(v73))
              {
LABEL_29:
                v74 = OUTLINED_FUNCTION_63_9();
                noun_phrase(v74, v75, v76);
                if (v77)
                {
                  goto LABEL_3;
                }
              }
            }
          }
        }
      }

LABEL_30:
      *(v4 + 8) = v92;
      *(v3 + 8) = v90;
      OUTLINED_FUNCTION_66_9(SHIWORD(v88));
      goto LABEL_4;
    }

LABEL_20:
    v50 = OUTLINED_FUNCTION_70_9();
    savescptr(v50, v51, v52);
    if (!advance_tok(v1, v53, v54, v55))
    {
LABEL_21:
      savescptr(v1, 9, v82);
      v56 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v56, v57);
      if (!advanc(v1))
      {
LABEL_22:
        savescptr(v1, 10, v81);
        if (!advance_tok(v1, v58, v59, v60))
        {
LABEL_23:
          savescptr(v1, 11, v80);
          goto LABEL_24;
        }
      }
    }

    goto LABEL_8;
  }

  v26 = OUTLINED_FUNCTION_0_40();
  if (testFldeq(v26, v27, v28, v29) || advance_tok(v1, v30, v31, v32))
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = 94;
LABEL_4:
  vretproc(v1);
  return v2;
}

void coord_conj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44_13();
  v184 = v3;
  v185 = v4;
  v6 = v5;
  v206 = *MEMORY[0x277D85DE8];
  v200 = 0;
  v201 = 0;
  v198 = 0;
  v199 = 0;
  v197[0] = 0;
  v197[1] = 0;
  v196[0] = 0;
  v196[1] = 0;
  v195[0] = 0;
  v195[1] = 0;
  v193 = 0;
  v194 = 0;
  v192 = 0;
  v191[0] = 0;
  v191[1] = 0;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  OUTLINED_FUNCTION_20_27();
  bzero(v186, v7);
  OUTLINED_FUNCTION_19_28();
  bzero(v205, v8);
  if (!setjmp(v205) && !ventproc(v6, v186, v204, v203, v202, v205))
  {
    v9 = OUTLINED_FUNCTION_24_26();
    OUTLINED_FUNCTION_72_9(v9, v10);
    get_parm(v6, &v198, v184, -6);
    OUTLINED_FUNCTION_48_13(v11, v197);
    OUTLINED_FUNCTION_39_15(v12, v196);
    OUTLINED_FUNCTION_22_26(v13, v195);
    v14 = OUTLINED_FUNCTION_23_26();
    get_parm(v14, v15, v16, -6);
    get_parm(v6, &v192, v185, -4);
    push_ptr_init(v6, v191);
    v190 = 0uLL;
    LODWORD(v189) = -65534;
    v188 = 0uLL;
    LODWORD(v187) = -65534;
    v17 = OUTLINED_FUNCTION_26_25();
    fence_36(v17, v18, v19);
    fence_36(v6, 1, &_MergedGlobals_33);
    v20 = OUTLINED_FUNCTION_50_12();
    starttest(v20, v21);
    OUTLINED_FUNCTION_50_12();
    bspush_ca_boa();
    v22 = OUTLINED_FUNCTION_24_26();
    if (lpta_loadp_setscan_r(v22, v23, 2))
    {
      v24 = 0;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_2_38();
      v24 = !testFldeq(v25, v26, v27, 5) && !advance_tok(v6, v28, v29, v30);
    }

    LODWORD(v31) = v24;
    while (2)
    {
      v32 = v6[13];
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_21_27(v32);
        v36 = v31;
      }

      else
      {
        v33 = vback(v6, v31);
        v36 = 0;
      }

      switch(v33)
      {
        case 1:
          lpta_loadpn(v6, v197);
          rpta_loadpn(v6, (v6 + 418));
          if (compare_ptas(v6) || testeq(v6))
          {
            goto LABEL_17;
          }

          goto LABEL_58;
        case 2:
          bspop_boa(v6);
          break;
        case 3:
LABEL_17:
          lpta_loadpn(v6, v195);
          rpta_loadpn(v6, (v6 + 418));
          if (compare_ptas(v6) || testeq(v6))
          {
            goto LABEL_19;
          }

          goto LABEL_58;
        case 4:
        case 22:
          v160 = HIWORD(v192);
          goto LABEL_64;
        case 5:
LABEL_19:
          v37 = OUTLINED_FUNCTION_28_22();
          starttest(v37, v38);
          v39 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v39, v40, v41))
          {
            goto LABEL_20;
          }

          goto LABEL_30;
        case 6:
LABEL_20:
          starttest(v6, 12);
          v42 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v42, v43, v44))
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        case 7:
LABEL_30:
          savescptr(v6, 7, v191);
          v69 = OUTLINED_FUNCTION_24_26();
          bspush_ca_scan(v69, v70);
          v71 = OUTLINED_FUNCTION_2_38();
          v74 = 3;
          goto LABEL_48;
        case 8:
          v103 = OUTLINED_FUNCTION_41_13();
          bspush_ca_scan(v103, v104);
          v71 = OUTLINED_FUNCTION_3_37();
          v74 = 6;
          goto LABEL_48;
        case 9:
          goto LABEL_49;
        case 10:
          v109 = OUTLINED_FUNCTION_69_9();
          bspush_ca_scan(v109, v110);
          v71 = OUTLINED_FUNCTION_3_37();
          v74 = 7;
          goto LABEL_48;
        case 11:
          v71 = OUTLINED_FUNCTION_2_38();
          v74 = 9;
LABEL_48:
          v111 = testFldeq(v71, v72, v73, v74);
          v31 = v36;
          if (v111)
          {
            continue;
          }

LABEL_49:
          v112 = advance_tok(v6, v31, v34, v35);
          LODWORD(v31) = v36;
          if (v112)
          {
            continue;
          }

          v113 = OUTLINED_FUNCTION_5_36();
          v116 = lpta_loadp_setscan_r(v113, v114, v115);
          LODWORD(v31) = v36;
          if (v116)
          {
            continue;
          }

          v86 = OUTLINED_FUNCTION_3_37();
          v89 = 12;
LABEL_52:
          v117 = testFldeq(v86, v87, v88, v89);
          LODWORD(v31) = v36;
          if (v117)
          {
            continue;
          }

          v108 = advance_tok(v6, v36, v118, v119);
          goto LABEL_44;
        case 12:
LABEL_21:
          v45 = OUTLINED_FUNCTION_37_17();
          starttest(v45, v46);
          v47 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_r(v47, v48, v49))
          {
            goto LABEL_22;
          }

          v90 = OUTLINED_FUNCTION_3_37();
          v93 = testFldeq(v90, v91, v92, 12);
          LODWORD(v31) = v36;
          if (!v93)
          {
            v96 = advance_tok(v6, v36, v94, v95);
            LODWORD(v31) = v36;
            if (!v96)
            {
              v99 = advance_tok(v6, v36, v97, v98);
              LODWORD(v31) = v36;
              if (!v99)
              {
                goto LABEL_40;
              }
            }
          }

          continue;
        case 13:
LABEL_31:
          savescptr(v6, 13, v191);
          v75 = OUTLINED_FUNCTION_3_37();
          v78 = testFldeq(v75, v76, v77, 12);
          LODWORD(v31) = v36;
          if (v78)
          {
            continue;
          }

          v81 = advance_tok(v6, v36, v79, v80);
          LODWORD(v31) = v36;
          if (v81)
          {
            continue;
          }

          v82 = OUTLINED_FUNCTION_5_36();
          v85 = lpta_loadp_setscan_r(v82, v83, v84);
          LODWORD(v31) = v36;
          if (v85)
          {
            continue;
          }

          v86 = OUTLINED_FUNCTION_4_36();
          v89 = 36;
          goto LABEL_52;
        case 14:
LABEL_22:
          v50 = OUTLINED_FUNCTION_29_22();
          starttest(v50, v51);
          if (!lpta_loadp_setscan_l(v6, v196, 2))
          {
            goto LABEL_23;
          }

          goto LABEL_54;
        case 15:
          v100 = advance_tok(v6, v31, v34, v35);
          LODWORD(v31) = v36;
          if (v100)
          {
            continue;
          }

LABEL_40:
          v101 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v101, v102);
          goto LABEL_43;
        case 16:
          goto LABEL_43;
        case 17:
          v105 = advance_tok(v6, v31, v34, v35);
          LODWORD(v31) = v36;
          if (v105)
          {
            continue;
          }

LABEL_43:
          v106 = OUTLINED_FUNCTION_57_11();
          v108 = test_synch(v106, v107, 1, &_MergedGlobals_33);
LABEL_44:
          LODWORD(v31) = v36;
          if (!v108)
          {
            goto LABEL_59;
          }

          continue;
        case 18:
          goto LABEL_54;
        case 19:
LABEL_23:
          v52 = OUTLINED_FUNCTION_27_23();
          savescptr(v52, v53, v191);
          v54 = savetok(v6, &v189);
          LODWORD(v31) = v36;
          if (v54)
          {
            continue;
          }

          v57 = advance_tok(v6, v36, v55, v56);
          LODWORD(v31) = v36;
          if (v57)
          {
            continue;
          }

          v58 = OUTLINED_FUNCTION_5_36();
          v61 = lpta_loadp_setscan_r(v58, v59, v60);
          LODWORD(v31) = v36;
          if (v61)
          {
            continue;
          }

          v64 = advance_tok(v6, v36, v62, v63);
          LODWORD(v31) = v36;
          if (v64)
          {
            continue;
          }

          v67 = advance_tok(v6, v36, v65, v66);
          LODWORD(v31) = v36;
          if (v67)
          {
            continue;
          }

          v68 = savetok(v6, &v187);
          LODWORD(v31) = v36;
          if (v68)
          {
            continue;
          }

LABEL_54:
          WORD1(v189) = 1;
          v120 = OUTLINED_FUNCTION_33_20();
          npush_v(v120, v121, v122, v123, v124, v125, v126, v127);
          ncompare_s(v6, 0xCu);
          if (testeq(v6) || (WORD1(v187) = 1, v128 = OUTLINED_FUNCTION_42_13(), npush_v(v128, v129, v130, v131, v132, v133, v134, v135), ncompare_s(v6, 0xCu), testeq(v6)))
          {
LABEL_56:
            WORD1(v189) = 1;
            v136 = OUTLINED_FUNCTION_33_20();
            npush_v(v136, v137, v138, v139, v140, v141, v142, v143);
            WORD1(v187) = 1;
            v144 = OUTLINED_FUNCTION_42_13();
            npush_v(v144, v145, v146, v147, v148, v149, v150, v151);
            if (if_testeq(v6, v152, v153, v154, v155, v156, v157, v158))
            {
LABEL_57:
              conjoined_NPs(v6, v197, v196);
              if (v159)
              {
LABEL_58:
                v160 = 2;
                HIWORD(v192) = 2;
                goto LABEL_64;
              }

LABEL_59:
              v160 = 0;
              HIWORD(v192) = 0;
LABEL_64:
              *(v184 + 8) = v199;
              v185[1] = v160;
              vretproc(v6);
              goto LABEL_4;
            }
          }

          else
          {
            WORD1(v189) = 2;
            v161 = OUTLINED_FUNCTION_33_20();
            npush_v(v161, v162, v163, v164, v165, v166, v167, v168);
            WORD1(v187) = 2;
            v169 = OUTLINED_FUNCTION_42_13();
            npush_v(v169, v170, v171, v172, v173, v174, v175, v176);
            if (if_testeq(v6, v177, v178, v179, v180, v181, v182, v183))
            {
              goto LABEL_58;
            }
          }

          v160 = 0;
          HIWORD(v192) = 0;
          v199 = v194;
          goto LABEL_64;
        case 20:
          goto LABEL_56;
        case 21:
        case 24:
          goto LABEL_58;
        case 23:
          goto LABEL_57;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v6);
LABEL_4:
  OUTLINED_FUNCTION_43_13();
}

void subord_conj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 *a21, __int16 *a22)
{
  OUTLINED_FUNCTION_44_13();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v154 = *MEMORY[0x277D85DE8];
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v145[0] = 0;
  v145[1] = 0;
  v144[0] = 0;
  v144[1] = 0;
  OUTLINED_FUNCTION_17_30();
  v141 = 0;
  v140[0] = 0;
  v140[1] = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v139, v28);
  OUTLINED_FUNCTION_19_28();
  bzero(v153, v29);
  if (!setjmp(v153) && !ventproc(v27, v139, v152, v151, v150, v153))
  {
    get_parm(v27, &v148, v25, -6);
    get_parm(v27, &v146, v23, -6);
    OUTLINED_FUNCTION_72_9(v27, v145);
    OUTLINED_FUNCTION_38_16(v30, v144);
    OUTLINED_FUNCTION_39_15(v31, v143);
    OUTLINED_FUNCTION_22_26(v32, v142);
    v33 = OUTLINED_FUNCTION_23_26();
    get_parm(v33, v34, v35, -6);
    v36 = OUTLINED_FUNCTION_59_11();
    get_parm(v36, v37, a21, -6);
    get_parm(v27, &v141, a22, -4);
    push_ptr_init(v27, v140);
    v38 = OUTLINED_FUNCTION_26_25();
    fence_36(v38, v39, v40);
    fence_36(v27, 1, &_MergedGlobals_33);
    v41 = OUTLINED_FUNCTION_50_12();
    starttest(v41, v42);
    OUTLINED_FUNCTION_50_12();
    bspush_ca_boa();
    if (lpta_loadp_setscan_r(v27, &v148, 2))
    {
      v43 = 0;
    }

    else
    {
      v44 = OUTLINED_FUNCTION_2_38();
      v43 = !testFldeq(v44, v45, v46, 6) && !advance_tok(v27, v47, v48, v49);
    }

    LODWORD(v50) = v43;
    while (2)
    {
      v51 = v27[13];
      if (v51)
      {
        v52 = OUTLINED_FUNCTION_21_27(v51);
        v55 = v50;
      }

      else
      {
        v52 = vback(v27, v50);
        v55 = 0;
      }

      switch(v52)
      {
        case 1:
          v56 = OUTLINED_FUNCTION_57_11();
          starttest(v56, v57);
          v58 = OUTLINED_FUNCTION_28_22();
          if (!lpta_loadp_setscan_l(v58, v59, 2))
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        case 2:
          bspop_boa(v27);
          break;
        case 3:
LABEL_15:
          v60 = OUTLINED_FUNCTION_18_29();
          starttest(v60, v61);
          v62 = OUTLINED_FUNCTION_28_22();
          if (!lpta_loadp_setscan_l(v62, v63, 2))
          {
            goto LABEL_16;
          }

          goto LABEL_43;
        case 4:
LABEL_20:
          v84 = OUTLINED_FUNCTION_25_25();
          savescptr(v84, v85, v140);
          v86 = OUTLINED_FUNCTION_68_9();
          bspush_ca_scan(v86, v87);
          v88 = OUTLINED_FUNCTION_2_38();
          v91 = 3;
          goto LABEL_24;
        case 5:
          v94 = OUTLINED_FUNCTION_69_9();
          bspush_ca_scan(v94, v95);
          v88 = OUTLINED_FUNCTION_3_37();
          v91 = 6;
          goto LABEL_24;
        case 6:
          goto LABEL_25;
        case 7:
          v92 = OUTLINED_FUNCTION_24_26();
          bspush_ca_scan(v92, v93);
          v88 = OUTLINED_FUNCTION_3_37();
          v91 = 7;
          goto LABEL_24;
        case 8:
          v88 = OUTLINED_FUNCTION_2_38();
          v91 = 9;
LABEL_24:
          v96 = testFldeq(v88, v89, v90, v91);
          v50 = v55;
          if (v96)
          {
            continue;
          }

LABEL_25:
          v97 = advance_tok(v27, v50, v53, v54);
          LODWORD(v50) = v55;
          if (v97)
          {
            continue;
          }

          v98 = OUTLINED_FUNCTION_40_14();
          v100 = lpta_loadp_setscan_r(v98, v99, 2);
          LODWORD(v50) = v55;
          if (v100)
          {
            continue;
          }

          v101 = OUTLINED_FUNCTION_3_37();
          v104 = testFldeq(v101, v102, v103, 12);
          LODWORD(v50) = v55;
          if (v104)
          {
            continue;
          }

          v107 = advance_tok(v27, v55, v105, v106);
          LODWORD(v50) = v55;
          if (v107)
          {
            continue;
          }

LABEL_46:
          v138 = 0;
          HIWORD(v141) = 0;
LABEL_48:
          *(v25 + 8) = v149;
          *(v23 + 8) = v147;
          a22[1] = v138;
          break;
        case 9:
          v138 = HIWORD(v141);
          goto LABEL_48;
        case 10:
LABEL_43:
          v138 = 2;
          HIWORD(v141) = 2;
          goto LABEL_48;
        case 11:
LABEL_16:
          v64 = OUTLINED_FUNCTION_37_17();
          savescptr(v64, v65, v140);
          v66 = OUTLINED_FUNCTION_0_40();
          v70 = testFldeq(v66, v67, v68, v69);
          LODWORD(v50) = v55;
          if (v70)
          {
            continue;
          }

          v73 = advance_tok(v27, v55, v71, v72);
          LODWORD(v50) = v55;
          if (v73)
          {
            continue;
          }

          v74 = OUTLINED_FUNCTION_1_38();
          v78 = testFldeq(v74, v75, v76, v77);
          LODWORD(v50) = v55;
          if (v78)
          {
            continue;
          }

          v79 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v79, v80);
          v81 = OUTLINED_FUNCTION_12_34();
          v83 = 2;
LABEL_31:
          v108 = testFldeq(v81, v82, 3, v83);
          v50 = v55;
          if (!v108)
          {
LABEL_32:
            v109 = advance_tok(v27, v50, v53, v54);
            LODWORD(v50) = v55;
            if (!v109)
            {
              v110 = OUTLINED_FUNCTION_40_14();
              v112 = lpta_loadp_setscan_r(v110, v111, 2);
              LODWORD(v50) = v55;
              if (!v112)
              {
                v113 = OUTLINED_FUNCTION_3_37();
                v116 = testFldeq(v113, v114, v115, 12);
                LODWORD(v50) = v55;
                if (!v116)
                {
                  v119 = advance_tok(v27, v55, v117, v118);
                  LODWORD(v50) = v55;
                  if (!v119)
                  {
                    v120 = OUTLINED_FUNCTION_2_38();
                    v123 = testFldeq(v120, v121, v122, 3);
                    LODWORD(v50) = v55;
                    if (!v123)
                    {
                      v124 = OUTLINED_FUNCTION_3_37();
                      v127 = testFldeq(v124, v125, v126, 5);
                      LODWORD(v50) = v55;
                      if (!v127)
                      {
                        v130 = advance_tok(v27, v55, v128, v129);
                        LODWORD(v50) = v55;
                        if (!v130)
                        {
                          OUTLINED_FUNCTION_41_13();
                          bspush_ca_scan_boa();
                          v131 = OUTLINED_FUNCTION_0_40();
                          v135 = testFldeq(v131, v132, v133, v134);
                          LODWORD(v50) = v55;
                          if (!v135)
                          {
                            if (advance_tok(v27, v55, v136, v137))
                            {
                              LODWORD(v50) = v55;
                            }

                            else
                            {
                              LODWORD(v50) = 1;
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

          continue;
        case 12:
          v81 = OUTLINED_FUNCTION_12_34();
          v83 = 29;
          goto LABEL_31;
        case 13:
          goto LABEL_32;
        case 14:
          bspop_boa(v27);
          goto LABEL_46;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v27);
  OUTLINED_FUNCTION_43_13();
}

void prep_phrase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44_13();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v118 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_30();
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v91, v13);
  OUTLINED_FUNCTION_19_28();
  bzero(v117, v14);
  v15 = setjmp(v117);
  if (v15 || OUTLINED_FUNCTION_61_11(v15, v91, v16, v17, v18, v19, v20, v21, v89, v90, v91[0], v91[1], v91[2], v91[3], v91[4], v91[5], v91[6], v91[7], v91[8], v91[9], v91[10], v91[11], v91[12], v91[13], v91[14], v91[15], v91[16], v91[17], v91[18], v91[19], v91[20], v91[21], v91[22], v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0]))
  {
LABEL_3:
    vretproc(v12);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_51_12(v22, v23);
    OUTLINED_FUNCTION_22_26(v24, v103);
    v25 = OUTLINED_FUNCTION_33_20();
    get_parm(v25, v26, v6, -6);
    v27 = OUTLINED_FUNCTION_59_11();
    OUTLINED_FUNCTION_72_9(v27, v28);
    OUTLINED_FUNCTION_38_16(v29, &v97);
    OUTLINED_FUNCTION_48_13(v30, &v95);
    v31 = OUTLINED_FUNCTION_23_26();
    get_parm(v31, v32, v33, -4);
    v34 = OUTLINED_FUNCTION_30_21();
    push_ptr_init(v34, v35);
    v36 = OUTLINED_FUNCTION_26_25();
    v39 = fence_36(v36, v37, v38);
    OUTLINED_FUNCTION_60_11(v39, v40, &_MergedGlobals_33);
    v41 = OUTLINED_FUNCTION_55_12();
    starttest(v41, v42);
    OUTLINED_FUNCTION_55_12();
    bspush_ca_boa();
    v43 = OUTLINED_FUNCTION_25_25();
    if (lpta_loadp_setscan_r(v43, v44, 2))
    {
      v45 = 0;
    }

    else
    {
      v46 = OUTLINED_FUNCTION_2_38();
      v45 = !testFldeq(v46, v47, v48, 9) && !advance_tok(v12, v49, v50, v51);
    }

    v52 = v45;
    while (2)
    {
      v53 = v12[13];
      if (v53)
      {
        v54 = OUTLINED_FUNCTION_21_27(v53);
        v56 = v55;
      }

      else
      {
        v54 = vback(v12, v52);
        v56 = 0;
      }

      switch(v54)
      {
        case 1:
          v57 = OUTLINED_FUNCTION_24_26();
          starttest(v57, v58);
          v59 = OUTLINED_FUNCTION_28_22();
          if (!lpta_loadp_setscan_l(v59, v60, 2))
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        case 2:
          bspop_boa(v12);
          goto LABEL_3;
        case 3:
LABEL_25:
          v88 = 0;
          HIWORD(v94) = 0;
          goto LABEL_27;
        case 4:
LABEL_16:
          v61 = OUTLINED_FUNCTION_25_25();
          savescptr(v61, v62, &v92);
          v63 = OUTLINED_FUNCTION_12_34();
          v65 = testFldeq(v63, v64, 3, 30);
          v52 = v56;
          if (v65)
          {
            continue;
          }

          v68 = advance_tok(v12, v56, v66, v67);
          v52 = v56;
          if (v68)
          {
            continue;
          }

          v69 = OUTLINED_FUNCTION_40_14();
          v71 = lpta_loadp_setscan_r(v69, v70, 2);
          v52 = v56;
          if (v71)
          {
            continue;
          }

          v72 = OUTLINED_FUNCTION_41_13();
          bspush_ca_scan(v72, v73);
LABEL_22:
          v81 = OUTLINED_FUNCTION_3_37();
          v84 = testFldeq(v81, v82, v83, 6);
          v52 = v56;
          if (v84)
          {
            continue;
          }

          v87 = advance_tok(v12, v56, v85, v86);
          v52 = v56;
          if (v87)
          {
            continue;
          }

LABEL_24:
          savescptr(v12, 7, v103);
          v88 = 3;
          HIWORD(v94) = 3;
LABEL_27:
          *(v10 + 8) = v106;
          *(v8 + 8) = v104;
          *(v4 + 2) = v88;
          vretproc(v12);
          break;
        case 5:
          v74 = OUTLINED_FUNCTION_3_37();
          v77 = testFldeq(v74, v75, v76, 2);
          v52 = v56;
          if (v77)
          {
            continue;
          }

          v80 = advance_tok(v12, v56, v78, v79);
          v52 = v56;
          if (v80)
          {
            continue;
          }

          goto LABEL_22;
        case 6:
          goto LABEL_22;
        case 7:
          goto LABEL_24;
        case 8:
          v88 = HIWORD(v94);
          goto LABEL_27;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_43_13();
}

void relpro(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44_13();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v148 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_35_18();
  v138 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v137, v9);
  OUTLINED_FUNCTION_19_28();
  bzero(v147, v10);
  if (!setjmp(v147) && !ventproc(v8, v137, v146, v145, v144, v147))
  {
    v11 = OUTLINED_FUNCTION_28_22();
    OUTLINED_FUNCTION_51_12(v11, v12);
    OUTLINED_FUNCTION_22_26(v13, v141);
    OUTLINED_FUNCTION_38_16(v14, v140);
    OUTLINED_FUNCTION_48_13(v15, v139);
    v16 = OUTLINED_FUNCTION_23_26();
    get_parm(v16, v17, v18, -4);
    v19 = OUTLINED_FUNCTION_26_25();
    v22 = fence_36(v19, v20, v21);
    OUTLINED_FUNCTION_60_11(v22, v23, &_MergedGlobals_33);
    v24 = OUTLINED_FUNCTION_55_12();
    starttest(v24, v25);
    OUTLINED_FUNCTION_55_12();
    bspush_ca_boa();
    v26 = OUTLINED_FUNCTION_28_22();
    if (lpta_loadp_setscan_r(v26, v27, 2))
    {
      v28 = 0;
    }

    else
    {
      v29 = OUTLINED_FUNCTION_2_38();
      v28 = !testFldeq(v29, v30, v31, 10) && !advance_tok(v8, v32, v33, v34);
    }

    v35 = v28;
    while (2)
    {
      v36 = *(v8 + 104);
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_21_27(v36);
        v39 = v38;
      }

      else
      {
        v37 = vback(v8, v35);
        v39 = 0;
      }

      switch(v37)
      {
        case 1:
          v40 = OUTLINED_FUNCTION_69_9();
          starttest(v40, v41);
          v42 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v42, v43, v44))
          {
            goto LABEL_15;
          }

          v122 = OUTLINED_FUNCTION_0_40();
          v126 = testFldeq(v122, v123, v124, v125);
          v35 = v39;
          if (!v126)
          {
            v129 = advance_tok(v8, v39, v127, v128);
            v35 = v39;
            if (!v129)
            {
              OUTLINED_FUNCTION_41_13();
              bspush_ca_scan_boa();
              v130 = OUTLINED_FUNCTION_2_38();
              if (testFldeq(v130, v131, v132, 9))
              {
                v35 = v39;
              }

              else
              {
                v35 = 1;
              }
            }
          }

          continue;
        case 2:
          bspop_boa(v8);
          goto LABEL_3;
        case 3:
LABEL_15:
          v45 = OUTLINED_FUNCTION_40_14();
          starttest(v45, v46);
          v47 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v47, v48, v49))
          {
            goto LABEL_16;
          }

          v108 = OUTLINED_FUNCTION_4_36();
          v111 = testFldeq(v108, v109, v110, 6);
          v35 = v39;
          if (!v111)
          {
            v114 = advance_tok(v8, v39, v112, v113);
            v35 = v39;
            if (!v114)
            {
              bspush_ca_scan(v8, 6);
              v115 = OUTLINED_FUNCTION_2_38();
              v118 = testFldeq(v115, v116, v117, 8);
              v35 = v39;
              if (!v118)
              {
                v121 = advance_tok(v8, v39, v119, v120);
                v35 = v39;
                if (!v121)
                {
                  goto LABEL_41;
                }
              }
            }
          }

          continue;
        case 4:
          bspop_boa(v8);
          v67 = OUTLINED_FUNCTION_1_38();
          v71 = testFldeq(v67, v68, v69, v70);
          v35 = v39;
          if (v71)
          {
            continue;
          }

          v74 = advance_tok(v8, v39, v72, v73);
          v35 = v39;
          if (v74)
          {
            continue;
          }

          v136 = HIWORD(v138);
          goto LABEL_43;
        case 5:
LABEL_16:
          v50 = OUTLINED_FUNCTION_13_34();
          starttest(v50, v51);
          v52 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v52, v53, v54))
          {
            goto LABEL_17;
          }

          v75 = OUTLINED_FUNCTION_3_37();
          v78 = testFldeq(v75, v76, v77, 2);
          v35 = v39;
          if (!v78)
          {
            v79 = OUTLINED_FUNCTION_12_34();
            v81 = npush_fld(v79, v80, 5u);
            v35 = v39;
            if (!v81)
            {
              npush_v(v8, (v8 + 3052), v82, v83, v84, v85, v86, v87);
              v95 = if_testeq(v8, v88, v89, v90, v91, v92, v93, v94);
              v35 = v39;
              if (!v95)
              {
                v98 = advance_tok(v8, v39, v96, v97);
                v35 = v39;
                if (!v98)
                {
                  v99 = OUTLINED_FUNCTION_13_34();
                  bspush_ca_scan(v99, v100);
                  v101 = OUTLINED_FUNCTION_2_38();
                  v104 = testFldeq(v101, v102, v103, 9);
                  v35 = v39;
                  if (!v104)
                  {
                    v107 = advance_tok(v8, v39, v105, v106);
                    v35 = v39;
                    if (!v107)
                    {
                      goto LABEL_41;
                    }
                  }
                }
              }
            }
          }

          continue;
        case 6:
        case 9:
        case 10:
          goto LABEL_41;
        case 7:
          goto LABEL_42;
        case 8:
LABEL_17:
          v55 = OUTLINED_FUNCTION_24_26();
          starttest(v55, v56);
          v57 = OUTLINED_FUNCTION_14_32();
          if (lpta_loadp_setscan_l(v57, v58, v59))
          {
            goto LABEL_42;
          }

          v60 = OUTLINED_FUNCTION_2_38();
          v63 = testFldeq(v60, v61, v62, 9);
          v35 = v39;
          if (v63)
          {
            continue;
          }

          v66 = advance_tok(v8, v39, v64, v65);
          v35 = v39;
          if (v66)
          {
            continue;
          }

LABEL_41:
          v133 = OUTLINED_FUNCTION_70_9();
          savescptr(v133, v134, v135);
LABEL_42:
          v136 = 3;
          HIWORD(v138) = 3;
LABEL_43:
          *(v6 + 8) = v143;
          *(v4 + 8) = v142;
          OUTLINED_FUNCTION_66_9(v136);
          break;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v8);
  OUTLINED_FUNCTION_43_13();
}

uint64_t verb_phrase(uint64_t a1)
{
  OUTLINED_FUNCTION_9_35();
  v270 = *MEMORY[0x277D85DE8];
  v267 = 0;
  v268 = 0;
  v265 = 0;
  v266 = 0;
  v264 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v263, v5);
  OUTLINED_FUNCTION_19_28();
  bzero(v269, v6);
  if (setjmp(v269) || (OUTLINED_FUNCTION_53_12(), ventproc(v1, v7, v8, v9, v10, v269)))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v12 = OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_51_12(v12, v13);
  OUTLINED_FUNCTION_22_26(v14, &v265);
  v15 = OUTLINED_FUNCTION_23_26();
  get_parm(v15, v16, v17, -4);
  v18 = OUTLINED_FUNCTION_26_25();
  fence_36(v18, v19, v20);
  fence_36(v1, 1, &_MergedGlobals_33);
  v21 = OUTLINED_FUNCTION_64_9();
  starttest(v21, v22);
  OUTLINED_FUNCTION_64_9();
  bspush_ca_boa();
  v23 = OUTLINED_FUNCTION_27_23();
  v25 = 0;
  if (!lpta_loadp_setscan_r(v23, v24, 2))
  {
    v26 = OUTLINED_FUNCTION_8_35();
    bspush_ca_scan(v26, v27);
    v28 = OUTLINED_FUNCTION_2_38();
    v31 = testFldeq(v28, v29, v30, 4);
    v25 = 0;
    v32 = 0;
    if (!v31)
    {
LABEL_6:
      v25 = v32;
      v33 = OUTLINED_FUNCTION_3_37();
      if (!testFldeq(v33, v34, v35, 5) && !advance_tok(v1, v36, v37, v38))
      {
        v25 = 1;
      }
    }
  }

  LODWORD(v39) = v25;
  while (2)
  {
    v40 = v1[13];
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_21_27(v40);
      v44 = v39;
    }

    else
    {
      v41 = vback(v1, v39);
      v44 = 0;
    }

    v32 = v44;
    switch(v41)
    {
      case 1:
        v45 = OUTLINED_FUNCTION_13_34();
        starttest(v45, v46);
        v47 = OUTLINED_FUNCTION_16_31();
        if (lpta_loadp_setscan_r(v47, v48, v49))
        {
          goto LABEL_26;
        }

        v50 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v50, v51);
        goto LABEL_88;
      case 2:
        bspop_boa(v1);
        goto LABEL_3;
      case 3:
        v223 = OUTLINED_FUNCTION_2_38();
        v226 = testFldeq(v223, v224, v225, 3);
        v32 = v44;
        LODWORD(v39) = v44;
        if (!v226)
        {
          goto LABEL_6;
        }

        continue;
      case 4:
        goto LABEL_6;
      case 5:
        goto LABEL_26;
      case 6:
        v235 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v235, v236);
        goto LABEL_84;
      case 7:
        goto LABEL_88;
      case 8:
        v196 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v196, v197);
        goto LABEL_60;
      case 9:
        goto LABEL_84;
      case 10:
        v185 = OUTLINED_FUNCTION_2_38();
        v188 = testFldeq(v185, v186, v187, 3);
        LODWORD(v39) = v44;
        if (v188)
        {
          continue;
        }

        v191 = advance_tok(v1, v44, v189, v190);
        LODWORD(v39) = v44;
        if (v191)
        {
          continue;
        }

        goto LABEL_60;
      case 11:
LABEL_60:
        v198 = OUTLINED_FUNCTION_2_38();
        v201 = testFldeq(v198, v199, v200, 3);
        LODWORD(v39) = v44;
        if (v201)
        {
          continue;
        }

        v202 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v202, v203);
        v204 = OUTLINED_FUNCTION_3_37();
        v207 = 6;
LABEL_68:
        v210 = testFldeq(v204, v205, v206, v207);
        v39 = v44;
        if (v210)
        {
          continue;
        }

LABEL_69:
        v211 = advance_tok(v1, v39, v42, v43);
        LODWORD(v39) = v44;
        if (v211)
        {
          continue;
        }

LABEL_84:
        v237 = OUTLINED_FUNCTION_2_38();
        v240 = testFldeq(v237, v238, v239, 3);
        LODWORD(v39) = v44;
        if (v240)
        {
          continue;
        }

        v241 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v241, v242);
        v212 = OUTLINED_FUNCTION_3_37();
        v215 = 6;
LABEL_86:
        v243 = testFldeq(v212, v213, v214, v215);
        v39 = v44;
        if (v243)
        {
          continue;
        }

LABEL_87:
        v244 = advance_tok(v1, v39, v42, v43);
        LODWORD(v39) = v44;
        if (v244)
        {
          continue;
        }

LABEL_88:
        v245 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v245, v246);
        v247 = OUTLINED_FUNCTION_4_36();
        v250 = testFldeq(v247, v248, v249, 10);
        LODWORD(v39) = v44;
        if (v250)
        {
          continue;
        }

        v253 = advance_tok(v1, v44, v251, v252);
        LODWORD(v39) = v44;
        if (v253)
        {
          continue;
        }

LABEL_90:
        v254 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v254, v255);
        v256 = OUTLINED_FUNCTION_2_38();
        v259 = testFldeq(v256, v257, v258, 1);
        LODWORD(v39) = v44;
        if (!v259)
        {
          goto LABEL_91;
        }

        continue;
      case 12:
        v204 = OUTLINED_FUNCTION_3_37();
        v207 = 7;
        goto LABEL_68;
      case 13:
        goto LABEL_69;
      case 14:
        v212 = OUTLINED_FUNCTION_3_37();
        v215 = 7;
        goto LABEL_86;
      case 15:
        goto LABEL_87;
      case 16:
        goto LABEL_90;
      case 17:
        goto LABEL_25;
      case 18:
        bspop_boa(v1);
        v80 = advance_tok(v1, v77, v78, v79);
        LODWORD(v39) = v44;
        if (v80)
        {
          continue;
        }

LABEL_25:
        savescptr(v1, 17, &v265);
LABEL_26:
        v81 = OUTLINED_FUNCTION_13_34();
        starttest(v81, v82);
        v83 = OUTLINED_FUNCTION_7_35();
        if (lpta_loadp_setscan_l(v83, v84, v85))
        {
          goto LABEL_30;
        }

        v86 = OUTLINED_FUNCTION_4_36();
        v89 = testFldeq(v86, v87, v88, 10);
        LODWORD(v39) = v44;
        if (v89)
        {
          continue;
        }

        v92 = advance_tok(v1, v44, v90, v91);
        LODWORD(v39) = v44;
        if (v92)
        {
          continue;
        }

LABEL_29:
        v93 = OUTLINED_FUNCTION_45_13();
        savescptr(v93, v94, v95);
LABEL_30:
        v96 = OUTLINED_FUNCTION_13_34();
        starttest(v96, v97);
        v98 = OUTLINED_FUNCTION_7_35();
        if (lpta_loadp_setscan_l(v98, v99, v100))
        {
          goto LABEL_34;
        }

        v101 = OUTLINED_FUNCTION_2_38();
        v104 = testFldeq(v101, v102, v103, 8);
        LODWORD(v39) = v44;
        if (v104)
        {
          continue;
        }

        v107 = advance_tok(v1, v44, v105, v106);
        LODWORD(v39) = v44;
        if (v107)
        {
          continue;
        }

LABEL_33:
        v108 = OUTLINED_FUNCTION_45_13();
        savescptr(v108, v109, v110);
LABEL_34:
        v111 = OUTLINED_FUNCTION_13_34();
        starttest(v111, v112);
        v113 = OUTLINED_FUNCTION_7_35();
        if (!lpta_loadp_setscan_l(v113, v114, v115))
        {
          v158 = OUTLINED_FUNCTION_2_38();
          v161 = testFldeq(v158, v159, v160, 1);
          LODWORD(v39) = v44;
          if (!v161)
          {
LABEL_91:
            OUTLINED_FUNCTION_13_34();
            bspush_ca_scan_boa();
            v166 = OUTLINED_FUNCTION_4_36();
            v169 = 23;
            goto LABEL_92;
          }

          continue;
        }

LABEL_35:
        v116 = OUTLINED_FUNCTION_13_34();
        starttest(v116, v117);
        v118 = OUTLINED_FUNCTION_7_35();
        if (!lpta_loadp_setscan_l(v118, v119, v120))
        {
          v162 = OUTLINED_FUNCTION_2_38();
          v165 = testFldeq(v162, v163, v164, 5);
          LODWORD(v39) = v44;
          if (!v165)
          {
            OUTLINED_FUNCTION_13_34();
            bspush_ca_scan_boa();
            v166 = OUTLINED_FUNCTION_3_37();
            v169 = 12;
LABEL_92:
            if (testFldeq(v166, v167, v168, v169))
            {
              LODWORD(v39) = v44;
            }

            else
            {
              LODWORD(v39) = 1;
            }
          }

          continue;
        }

LABEL_36:
        v121 = OUTLINED_FUNCTION_13_34();
        starttest(v121, v122);
        v123 = OUTLINED_FUNCTION_7_35();
        if (lpta_loadp_setscan_l(v123, v124, v125))
        {
LABEL_37:
          v126 = OUTLINED_FUNCTION_13_34();
          starttest(v126, v127);
          v128 = OUTLINED_FUNCTION_7_35();
          if (lpta_loadp_setscan_l(v128, v129, v130))
          {
LABEL_38:
            v131 = OUTLINED_FUNCTION_13_34();
            starttest(v131, v132);
            v133 = OUTLINED_FUNCTION_7_35();
            if (!lpta_loadp_setscan_r(v133, v134, v135))
            {
              v170 = OUTLINED_FUNCTION_4_36();
              v173 = 10;
              goto LABEL_49;
            }

LABEL_39:
            v136 = OUTLINED_FUNCTION_13_34();
            starttest(v136, v137);
            v138 = OUTLINED_FUNCTION_7_35();
            if (lpta_loadp_setscan_l(v138, v139, v140))
            {
LABEL_40:
              v141 = OUTLINED_FUNCTION_13_34();
              starttest(v141, v142);
              v143 = OUTLINED_FUNCTION_7_35();
              if (lpta_loadp_setscan_r(v143, v144, v145))
              {
LABEL_99:
                v262 = 3;
                HIWORD(v264) = 3;
                goto LABEL_101;
              }

              v146 = OUTLINED_FUNCTION_13_34();
              bspush_ca_scan(v146, v147);
              v148 = OUTLINED_FUNCTION_4_36();
              v151 = 19;
LABEL_96:
              v260 = testFldeq(v148, v149, v150, v151);
              v39 = v44;
              if (!v260)
              {
LABEL_97:
                v261 = advance_tok(v1, v39, v42, v43);
                LODWORD(v39) = v44;
                if (!v261)
                {
                  v262 = 0;
                  HIWORD(v264) = 0;
                  goto LABEL_101;
                }
              }
            }

            else
            {
              v175 = OUTLINED_FUNCTION_0_40();
              v179 = testFldeq(v175, v176, v177, v178);
              LODWORD(v39) = v44;
              if (!v179)
              {
                v182 = advance_tok(v1, v44, v180, v181);
                LODWORD(v39) = v44;
                if (!v182)
                {
                  v183 = OUTLINED_FUNCTION_13_34();
                  bspush_ca_scan(v183, v184);
LABEL_79:
                  v229 = OUTLINED_FUNCTION_13_34();
                  bspush_ca_scan(v229, v230);
LABEL_80:
                  v231 = OUTLINED_FUNCTION_2_38();
                  v234 = testFldeq(v231, v232, v233, 10);
                  LODWORD(v39) = v44;
                  if (!v234)
                  {
                    v148 = OUTLINED_FUNCTION_4_36();
                    v151 = 33;
                    goto LABEL_96;
                  }
                }
              }
            }
          }

          else
          {
            v170 = OUTLINED_FUNCTION_4_36();
            v173 = 11;
LABEL_49:
            v174 = testFldeq(v170, v171, v172, v173);
            LODWORD(v39) = v44;
            if (!v174)
            {
              v148 = OUTLINED_FUNCTION_3_37();
              v151 = 2;
              goto LABEL_96;
            }
          }

          continue;
        }

        v152 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v152, v153);
        v154 = OUTLINED_FUNCTION_2_38();
        v157 = 10;
LABEL_64:
        v208 = testFldeq(v154, v155, v156, v157);
        v39 = v44;
        if (v208)
        {
          continue;
        }

LABEL_65:
        v209 = advance_tok(v1, v39, v42, v43);
        LODWORD(v39) = v44;
        if (v209)
        {
          continue;
        }

LABEL_100:
        v262 = HIWORD(v264);
LABEL_101:
        *(v4 + 8) = v268;
        *(v3 + 8) = v266;
        *(v2 + 2) = v262;
        vretproc(v1);
        return 0;
      case 19:
        goto LABEL_30;
      case 20:
        goto LABEL_29;
      case 21:
        goto LABEL_34;
      case 22:
        goto LABEL_33;
      case 23:
        goto LABEL_35;
      case 24:
        bspop_boa(v1);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_scan_boa();
        v166 = OUTLINED_FUNCTION_4_36();
        v169 = 24;
        goto LABEL_92;
      case 25:
        bspop_boa(v1);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_scan_boa();
        v166 = OUTLINED_FUNCTION_4_36();
        v169 = 25;
        goto LABEL_92;
      case 26:
        bspop_boa(v1);
        v219 = advance_tok(v1, v216, v217, v218);
        LODWORD(v39) = v44;
        if (v219)
        {
          continue;
        }

        goto LABEL_73;
      case 27:
LABEL_73:
        v220 = OUTLINED_FUNCTION_45_13();
        savescptr(v220, v221, v222);
        OUTLINED_FUNCTION_13_34();
        bspush_ca_scan_boa();
        v166 = OUTLINED_FUNCTION_2_38();
        v169 = 9;
        goto LABEL_92;
      case 28:
        bspop_boa(v1);
        v195 = advance_tok(v1, v192, v193, v194);
        LODWORD(v39) = v44;
        if (v195)
        {
          continue;
        }

        goto LABEL_35;
      case 29:
        goto LABEL_36;
      case 30:
        bspop_boa(v1);
        v73 = advance_tok(v1, v70, v71, v72);
        LODWORD(v39) = v44;
        if (v73)
        {
          continue;
        }

        goto LABEL_23;
      case 31:
LABEL_23:
        v74 = OUTLINED_FUNCTION_45_13();
        savescptr(v74, v75, v76);
        goto LABEL_36;
      case 32:
        goto LABEL_37;
      case 33:
        v154 = OUTLINED_FUNCTION_3_37();
        v157 = 12;
        goto LABEL_64;
      case 34:
        goto LABEL_65;
      case 35:
        goto LABEL_38;
      case 36:
        goto LABEL_100;
      case 37:
        goto LABEL_39;
      case 38:
        goto LABEL_40;
      case 39:
        v66 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v66, v67);
        v54 = OUTLINED_FUNCTION_4_36();
        v57 = 3;
        goto LABEL_77;
      case 40:
        goto LABEL_79;
      case 41:
        v68 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v68, v69);
        v54 = OUTLINED_FUNCTION_4_36();
        v57 = 37;
        goto LABEL_77;
      case 42:
        goto LABEL_78;
      case 43:
        v52 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v52, v53);
        v54 = OUTLINED_FUNCTION_4_36();
        v57 = 4;
        goto LABEL_77;
      case 44:
        v54 = OUTLINED_FUNCTION_0_40();
LABEL_77:
        v227 = testFldeq(v54, v55, v56, v57);
        v39 = v44;
        if (v227)
        {
          continue;
        }

LABEL_78:
        v228 = advance_tok(v1, v39, v42, v43);
        LODWORD(v39) = v44;
        if (!v228)
        {
          goto LABEL_79;
        }

        continue;
      case 45:
        v58 = OUTLINED_FUNCTION_1_38();
        v62 = testFldeq(v58, v59, v60, v61);
        LODWORD(v39) = v44;
        if (v62)
        {
          continue;
        }

        v65 = advance_tok(v1, v44, v63, v64);
        LODWORD(v39) = v44;
        if (v65)
        {
          continue;
        }

        goto LABEL_80;
      case 46:
        goto LABEL_80;
      case 47:
        goto LABEL_99;
      case 48:
        v148 = OUTLINED_FUNCTION_4_36();
        v151 = 16;
        goto LABEL_96;
      case 49:
        goto LABEL_97;
      default:
        goto LABEL_3;
    }
  }
}

void noun_phrase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_9_35();
  v62 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v52, v6);
  OUTLINED_FUNCTION_19_28();
  bzero(v61, v7);
  if (!setjmp(v61) && !ventproc(v3, v52, v60, v59, v58, v61))
  {
    v8 = OUTLINED_FUNCTION_24_26();
    OUTLINED_FUNCTION_51_12(v8, v9);
    OUTLINED_FUNCTION_22_26(v10, &v54);
    v11 = OUTLINED_FUNCTION_23_26();
    get_parm(v11, v12, v13, -4);
    v14 = OUTLINED_FUNCTION_26_25();
    fence_36(v14, v15, v16);
    fence_36(v3, 1, &_MergedGlobals_33);
    v17 = OUTLINED_FUNCTION_64_9();
    starttest(v17, v18);
    OUTLINED_FUNCTION_64_9();
    bspush_ca_boa();
    v19 = OUTLINED_FUNCTION_24_26();
    if (lpta_loadp_setscan_r(v19, v20, 2))
    {
      v21 = 0;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_1_38();
      v21 = !testFldeq(v22, v23, v24, v25) && !advance_tok(v3, v26, v27, v28);
    }

    v29 = v21;
    while (2)
    {
      v30 = v3[13];
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_21_27(v30);
        v33 = v32;
      }

      else
      {
        v31 = vback(v3, v29);
        v33 = 0;
      }

      switch(v31)
      {
        case 1:
          v34 = OUTLINED_FUNCTION_24_26();
          starttest(v34, v35);
          v36 = OUTLINED_FUNCTION_28_22();
          if (lpta_loadp_setscan_l(v36, v37, 2))
          {
            goto LABEL_23;
          }

          v38 = OUTLINED_FUNCTION_0_40();
          v42 = testFldeq(v38, v39, v40, v41);
          v29 = v33;
          if (v42)
          {
            continue;
          }

          OUTLINED_FUNCTION_25_25();
          bspush_ca_scan_boa();
          v43 = OUTLINED_FUNCTION_12_34();
          v45 = 3;
          v46 = 5;
          goto LABEL_20;
        case 2:
          bspop_boa(v3);
          goto LABEL_3;
        case 3:
LABEL_23:
          v51 = 0;
          HIWORD(v53) = 0;
          goto LABEL_26;
        case 4:
          bspop_boa(v3);
          bspush_ca_scan_boa();
          v43 = OUTLINED_FUNCTION_3_37();
          v46 = 6;
LABEL_20:
          if (testFldeq(v43, v44, v45, v46))
          {
            v29 = v33;
          }

          else
          {
            v29 = 1;
          }

          continue;
        case 5:
          bspop_boa(v3);
          v50 = advance_tok(v3, v47, v48, v49);
          v29 = v33;
          if (v50)
          {
            continue;
          }

          v51 = 3;
          HIWORD(v53) = 3;
          goto LABEL_26;
        case 6:
          v51 = HIWORD(v53);
LABEL_26:
          *(v5 + 8) = v57;
          *(v4 + 8) = v55;
          OUTLINED_FUNCTION_66_9(v51);
          break;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_43_13();
}

void conjoined_NPs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44_13();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v167 = *MEMORY[0x277D85DE8];
  v162[0] = 0;
  v162[1] = 0;
  v161[0] = 0;
  v161[1] = 0;
  v159 = 0;
  v160 = 0;
  OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_20_27();
  bzero(v153, v9);
  OUTLINED_FUNCTION_19_28();
  bzero(v166, v10);
  if (!setjmp(v166) && !ventproc(v8, v153, v165, v164, v163, v166))
  {
    OUTLINED_FUNCTION_72_9(v8, v162);
    OUTLINED_FUNCTION_38_16(v11, v161);
    v12 = OUTLINED_FUNCTION_24_26();
    get_parm(v12, v13, v6, -6);
    v14 = OUTLINED_FUNCTION_23_26();
    get_parm(v14, v15, v16, -6);
    OUTLINED_FUNCTION_39_15(v17, v156);
    OUTLINED_FUNCTION_22_26(v18, v155);
    v19 = OUTLINED_FUNCTION_59_11();
    push_ptr_init(v19, v20);
    v21 = 0;
    v22 = OUTLINED_FUNCTION_26_25();
    fence_36(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_67_9();
    fence_36(v25, v26, v27);
    starttest(v8, 1);
    v28 = OUTLINED_FUNCTION_24_26();
    if (lpta_loadp_setscan_l(v28, v29, 2))
    {
LABEL_5:
      v30 = OUTLINED_FUNCTION_8_35();
      starttest(v30, v31);
      OUTLINED_FUNCTION_13_34();
      bspush_ca_boa();
      v32 = OUTLINED_FUNCTION_16_31();
      if (!lpta_loadp_setscan_l(v32, v33, v34))
      {
        v35 = OUTLINED_FUNCTION_0_40();
        if (!testFldeq(v35, v36, v37, v38) && !advance_tok(v8, v39, v40, v41))
        {
          v21 = 1;
        }
      }
    }

    else
    {
      v42 = OUTLINED_FUNCTION_2_38();
      if (!testFldeq(v42, v43, v44, 11) && !advance_tok(v8, v45, v46, v47))
      {
LABEL_47:
        *(v4 + 8) = v158;
        goto LABEL_3;
      }

      v21 = 0;
    }

    v48 = v21;
    while (2)
    {
      v49 = v8[13];
      if (v49)
      {
        v50 = OUTLINED_FUNCTION_21_27(v49);
        v52 = v51;
      }

      else
      {
        v50 = vback(v8, v48);
        v52 = 0;
      }

      switch(v50)
      {
        case 1:
          v21 = v52;
          goto LABEL_5;
        case 2:
        case 9:
        case 16:
          goto LABEL_47;
        case 3:
          starttest(v8, 5);
          v91 = OUTLINED_FUNCTION_5_36();
          if (lpta_loadp_setscan_r(v91, v92, v93))
          {
            goto LABEL_28;
          }

          v146 = OUTLINED_FUNCTION_2_38();
          v149 = testFldeq(v146, v147, v148, 11);
          v48 = v52;
          if (!v149)
          {
            v152 = advance_tok(v8, v52, v150, v151);
            v48 = v52;
            if (!v152)
            {
              goto LABEL_47;
            }
          }

          continue;
        case 4:
        case 10:
        case 17:
          bspop_boa(v8);
          goto LABEL_3;
        case 5:
LABEL_28:
          v94 = OUTLINED_FUNCTION_24_26();
          starttest(v94, v95);
          v96 = OUTLINED_FUNCTION_5_36();
          if (lpta_loadp_setscan_r(v96, v97, v98))
          {
            goto LABEL_29;
          }

          v134 = OUTLINED_FUNCTION_1_38();
          v138 = testFldeq(v134, v135, v136, v137);
          v48 = v52;
          if (!v138)
          {
            v139 = OUTLINED_FUNCTION_4_36();
            v142 = testFldeq(v139, v140, v141, 2);
            v48 = v52;
            if (!v142)
            {
              goto LABEL_41;
            }
          }

          continue;
        case 6:
LABEL_29:
          v99 = OUTLINED_FUNCTION_40_14();
          starttest(v99, v100);
          v101 = OUTLINED_FUNCTION_5_36();
          if (lpta_loadp_setscan_r(v101, v102, v103))
          {
            goto LABEL_3;
          }

          v104 = OUTLINED_FUNCTION_1_38();
          v108 = testFldeq(v104, v105, v106, v107);
          v48 = v52;
          if (!v108)
          {
            v109 = OUTLINED_FUNCTION_4_36();
            v112 = testFldeq(v109, v110, v111, 1);
            v48 = v52;
            if (!v112)
            {
              goto LABEL_41;
            }
          }

          continue;
        case 7:
          bspop_boa(v8);
          v116 = advance_tok(v8, v113, v114, v115);
          v48 = v52;
          if (v116)
          {
            continue;
          }

          v119 = advance_tok(v8, v52, v117, v118);
          v48 = v52;
          if (v119)
          {
            continue;
          }

          goto LABEL_35;
        case 8:
LABEL_35:
          savescptr(v8, 8, v157);
          v120 = OUTLINED_FUNCTION_13_34();
          starttest_l(v120, v121);
          bspush_ca_boa();
          v122 = lpta_loadp_setscan_l(v8, v162, 2);
          v48 = v52;
          if (!v122)
          {
            goto LABEL_36;
          }

          continue;
        case 11:
LABEL_36:
          v123 = OUTLINED_FUNCTION_13_34();
          savescptr(v123, v124, v154);
          v125 = OUTLINED_FUNCTION_1_38();
          v129 = testFldeq(v125, v126, v127, v128);
          v48 = v52;
          if (!v129)
          {
            v130 = OUTLINED_FUNCTION_4_36();
            v133 = testFldeq(v130, v131, v132, 2);
            v48 = v52;
            if (!v133)
            {
              goto LABEL_41;
            }
          }

          continue;
        case 12:
        case 19:
          bspop_boa(v8);
          v56 = advance_tok(v8, v53, v54, v55);
          v48 = v52;
          if (v56)
          {
            continue;
          }

          v57 = OUTLINED_FUNCTION_68_9();
          v59 = lpta_loadp_setscan_r(v57, v58, 2);
          v48 = v52;
          if (v59)
          {
            continue;
          }

          v60 = OUTLINED_FUNCTION_0_40();
          v64 = testFldeq(v60, v61, v62, v63);
          v48 = v52;
          if (v64)
          {
            continue;
          }

          v67 = advance_tok(v8, v52, v65, v66);
          goto LABEL_42;
        case 14:
          bspop_boa(v8);
          v71 = advance_tok(v8, v68, v69, v70);
          v48 = v52;
          if (v71)
          {
            continue;
          }

          v74 = advance_tok(v8, v52, v72, v73);
          v48 = v52;
          if (v74)
          {
            continue;
          }

          goto LABEL_23;
        case 15:
LABEL_23:
          v75 = OUTLINED_FUNCTION_57_11();
          savescptr(v75, v76, v157);
          v77 = OUTLINED_FUNCTION_29_22();
          starttest_l(v77, v78);
          OUTLINED_FUNCTION_28_22();
          bspush_ca_boa();
          v79 = lpta_loadp_setscan_l(v8, v162, 2);
          v48 = v52;
          if (!v79)
          {
            goto LABEL_24;
          }

          continue;
        case 18:
LABEL_24:
          v80 = OUTLINED_FUNCTION_27_23();
          savescptr(v80, v81, v154);
          v82 = OUTLINED_FUNCTION_1_38();
          v86 = testFldeq(v82, v83, v84, v85);
          v48 = v52;
          if (!v86)
          {
            v87 = OUTLINED_FUNCTION_4_36();
            v90 = testFldeq(v87, v88, v89, 1);
            v48 = v52;
            if (!v90)
            {
              OUTLINED_FUNCTION_41_13();
LABEL_41:
              bspush_ca_scan_boa();
              v143 = OUTLINED_FUNCTION_2_38();
              v67 = testFldeq(v143, v144, v145, 9);
LABEL_42:
              if (v67)
              {
                v48 = v52;
              }

              else
              {
                v48 = 1;
              }
            }
          }

          continue;
        default:
          goto LABEL_3;
      }
    }
  }

LABEL_3:
  vretproc(v8);
  OUTLINED_FUNCTION_43_13();
}

uint64_t misc_phrase(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v17[1] = 0;
  OUTLINED_FUNCTION_56_11();
  v14[0] = 0;
  v14[1] = 0;
  v13 = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v12, v2);
  OUTLINED_FUNCTION_19_28();
  bzero(v21, v3);
  if (!setjmp(v21))
  {
    v4 = ventproc(a1, v12, v20, v19, v18, v21);
    if (!v4)
    {
      OUTLINED_FUNCTION_38_16(v4, v17);
      OUTLINED_FUNCTION_48_13(v5, v16);
      OUTLINED_FUNCTION_39_15(v6, v15);
      OUTLINED_FUNCTION_22_26(v7, v14);
      v8 = OUTLINED_FUNCTION_23_26();
      get_parm(v8, v9, v10, -4);
      fence_36(a1, 0, &null_str_13);
    }
  }

  vretproc(a1);
  return 94;
}

uint64_t apply_por_comma_rules(uint64_t a1)
{
  OUTLINED_FUNCTION_15_32();
  v132 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_34(v3, v4, v5, v6, v7, v8, v9, v10, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v123, v125);
  OUTLINED_FUNCTION_19_28();
  bzero(v131, v11);
  v12 = setjmp(v131);
  if (v12 || OUTLINED_FUNCTION_54_12(v12, v13, v14, v15, v16, v17, v18, v19, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v124, v126, v127, SHIDWORD(v127), v128, SWORD2(v128), SHIWORD(v128), v129, SWORD2(v129), SBYTE6(v129), SHIBYTE(v129), v130, v131[0]))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  v21 = OUTLINED_FUNCTION_10_35();
  get_parm(v21, v22, v23, -6);
  v24 = OUTLINED_FUNCTION_23_26();
  get_parm(v24, v25, v26, -6);
  fence_36(v1, 0, &null_str_13);
  v27 = OUTLINED_FUNCTION_13_34();
  starttest(v27, v28);
  v29 = OUTLINED_FUNCTION_5_36();
  if (!lpta_loadp_setscan_r(v29, v30, v31) && !advance_tok(v1, v32, v33, v34))
  {
    v43 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v43, v44);
LABEL_9:
    OUTLINED_FUNCTION_34_19();
    v45 = OUTLINED_FUNCTION_6_35();
    if (!test_ptr(v45, v46, v47))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  while (2)
  {
    v35 = OUTLINED_FUNCTION_13_34();
    starttest(v35, v36);
    v37 = OUTLINED_FUNCTION_13_34();
    bspush_ca(v37);
    v38 = OUTLINED_FUNCTION_16_31();
    if (lpta_loadp_setscan_r(v38, v39, v40))
    {
      goto LABEL_10;
    }

    v41 = OUTLINED_FUNCTION_13_34();
    bspush_ca_scan(v41, v42);
LABEL_18:
    v61 = OUTLINED_FUNCTION_2_38();
    v64 = 10;
LABEL_21:
    if (testFldeq(v61, v62, v63, v64))
    {
      goto LABEL_10;
    }

LABEL_22:
    if (advance_tok(v1, v50, v51, v52))
    {
LABEL_10:
      v48 = *(v1 + 104);
      if (v48)
      {
        v49 = OUTLINED_FUNCTION_21_27(v48);
      }

      else
      {
        v53 = OUTLINED_FUNCTION_31_21();
        v49 = vback(v53, v54);
      }

      switch(v49)
      {
        case 1:
          continue;
        case 2:
          if (!advance_tok(v1, v50, v51, v52))
          {
            goto LABEL_9;
          }

          goto LABEL_10;
        case 3:
          goto LABEL_9;
        case 4:
          goto LABEL_24;
        case 6:
          v55 = OUTLINED_FUNCTION_16_31();
          if (!lpta_loadp_setscan_r(v55, v56, v57) && !advance_tok(v1, v58, v59, v60))
          {
            goto LABEL_18;
          }

          goto LABEL_10;
        case 7:
          v65 = OUTLINED_FUNCTION_13_34();
          bspush_ca_scan(v65, v66);
          v61 = OUTLINED_FUNCTION_2_38();
          v64 = 6;
          goto LABEL_21;
        case 8:
          goto LABEL_22;
        case 9:
          v61 = OUTLINED_FUNCTION_2_38();
          v64 = 1;
          goto LABEL_21;
        case 10:
          goto LABEL_23;
        case 11:
          goto LABEL_25;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_23:
  npush_s(v1);
  *(v1 + 3090) = 2;
  npop(v1, (v1 + 3088));
  v67 = OUTLINED_FUNCTION_26_25();
  npush_s(v67);
  *(v1 + 3090) = 3;
  npop(v1, (v1 + 3088));
  v68 = OUTLINED_FUNCTION_26_25();
  npush_s(v68);
  *(v1 + 3090) = 4;
  npop(v1, (v1 + 3088));
LABEL_24:
  v69 = OUTLINED_FUNCTION_49_12();
  insert_comma_phrase(v69, v70, v71);
LABEL_25:
  *(v2 + 8) = v122;
  vretproc(v1);
  return 0;
}

uint64_t isit_por_WH(void *a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v81[23] = 0;
  v81[24] = 0;
  OUTLINED_FUNCTION_20_27();
  bzero(v81, v2);
  OUTLINED_FUNCTION_19_28();
  bzero(v85, v3);
  if (!setjmp(v85) && !ventproc(a1, v81, v84, v83, v82, v85))
  {
    v6 = OUTLINED_FUNCTION_29_22();
    OUTLINED_FUNCTION_46_13(v6, v7);
    fence_36(a1, 0, &null_str_13);
    v8 = OUTLINED_FUNCTION_13_34();
    starttest(v8, v9);
    v10 = OUTLINED_FUNCTION_29_22();
    if (!lpta_loadp_setscan_r(v10, v11, 2))
    {
      goto LABEL_9;
    }

LABEL_6:
    v12 = OUTLINED_FUNCTION_8_35();
    starttest(v12, v13);
    v14 = OUTLINED_FUNCTION_16_31();
    if (!lpta_loadp_setscan_r(v14, v15, v16))
    {
      v17 = OUTLINED_FUNCTION_13_34();
      bspush_ca_scan(v17, v18);
      while (1)
      {
LABEL_8:
        v19 = OUTLINED_FUNCTION_13_34();
        bspush_ca_scan(v19, v20);
        v21 = OUTLINED_FUNCTION_2_38();
        v24 = 1;
LABEL_32:
        if (!testFldeq(v21, v22, v23, v24))
        {
LABEL_33:
          if (!advance_tok(a1, v33, v34, v35) && !advanc(a1))
          {
LABEL_9:
            v25 = OUTLINED_FUNCTION_4_36();
            if (!testFldeq(v25, v26, v27, 33) && !advance_tok(a1, v28, v29, v30))
            {
LABEL_11:
              v4 = 0;
              goto LABEL_4;
            }
          }
        }

        do
        {
          while (2)
          {
            v31 = a1[13];
            if (v31)
            {
              v32 = OUTLINED_FUNCTION_21_27(v31);
            }

            else
            {
              v36 = OUTLINED_FUNCTION_31_21();
              v32 = vback(v36, v37);
            }

            switch(v32)
            {
              case 1:
                goto LABEL_6;
              case 2:
                goto LABEL_11;
              case 4:
                v38 = OUTLINED_FUNCTION_13_34();
                bspush_ca_scan(v38, v39);
                v40 = OUTLINED_FUNCTION_2_38();
                if (testFldeq(v40, v41, v42, 5))
                {
                  continue;
                }

                break;
              case 5:
                goto LABEL_8;
              case 6:
                v43 = OUTLINED_FUNCTION_2_38();
                if (testFldeq(v43, v44, v45, 9))
                {
                  continue;
                }

                v46 = OUTLINED_FUNCTION_3_37();
                if (testFldeq(v46, v47, v48, v49))
                {
                  continue;
                }

                v50 = OUTLINED_FUNCTION_12_34();
                if (npush_fld(v50, v51, 5u))
                {
                  continue;
                }

                v52 = OUTLINED_FUNCTION_31_21();
                npush_i(v52);
                if (if_testgt(a1, v53, v54, v55, v56, v57, v58, v59))
                {
                  continue;
                }

                break;
              case 7:
                goto LABEL_17;
              case 8:
                v79 = OUTLINED_FUNCTION_13_34();
                bspush_ca_scan(v79, v80);
                v21 = OUTLINED_FUNCTION_4_36();
                v24 = 2;
                goto LABEL_32;
              case 9:
                goto LABEL_33;
              case 10:
                v77 = OUTLINED_FUNCTION_13_34();
                bspush_ca_scan(v77, v78);
                v21 = OUTLINED_FUNCTION_2_38();
                v24 = 5;
                goto LABEL_32;
              case 11:
                v60 = OUTLINED_FUNCTION_2_38();
                if (!testFldeq(v60, v61, v62, 9))
                {
                  v63 = OUTLINED_FUNCTION_3_37();
                  if (!testFldeq(v63, v64, v65, v66))
                  {
                    v67 = OUTLINED_FUNCTION_12_34();
                    if (!npush_fld(v67, v68, 5u))
                    {
                      v69 = OUTLINED_FUNCTION_31_21();
                      npush_i(v69);
                      if (!if_testgt(a1, v70, v71, v72, v73, v74, v75, v76))
                      {
                        goto LABEL_33;
                      }
                    }
                  }
                }

                continue;
              default:
                goto LABEL_3;
            }

            break;
          }

LABEL_17:
          ;
        }

        while (advance_tok(a1, v33, v34, v35) || advanc(a1));
      }
    }
  }

LABEL_3:
  v4 = 94;
LABEL_4:
  vretproc(a1);
  return v4;
}

uint64_t isit_por_Alt(uint64_t a1)
{
  OUTLINED_FUNCTION_15_32();
  v88 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_56_11();
  OUTLINED_FUNCTION_11_34(v2, v3, v4, v5, v6, v7, v8, v9, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0], v85[1], v86[0], v86[1]);
  OUTLINED_FUNCTION_19_28();
  bzero(v87, v10);
  if (!setjmp(v87))
  {
    OUTLINED_FUNCTION_52_12();
    if (!OUTLINED_FUNCTION_73_9(v11, v12, v13, v14, v15))
    {
      v16 = OUTLINED_FUNCTION_10_35();
      get_parm(v16, v17, v18, -6);
      v19 = OUTLINED_FUNCTION_29_22();
      OUTLINED_FUNCTION_46_13(v19, v20);
      v21 = OUTLINED_FUNCTION_37_17();
      push_ptr_init(v21, v22);
      v23 = OUTLINED_FUNCTION_27_23();
      push_ptr_init(v23, v24);
      fence_36(v1, 0, &null_str_13);
      v25 = OUTLINED_FUNCTION_13_34();
      startloop(v25, v26);
      v27 = OUTLINED_FUNCTION_18_29();
      lpta_loadpn(v27, v28);
      OUTLINED_FUNCTION_12_34();
      lpta_mover();
      v29 = OUTLINED_FUNCTION_37_17();
      lpta_storep(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_29_22();
      lpta_loadpn(v32, v33);
      OUTLINED_FUNCTION_12_34();
      lpta_mover();
      v34 = OUTLINED_FUNCTION_27_23();
      lpta_storep(v34, v35, v36);
      v37 = OUTLINED_FUNCTION_37_17();
      if (forall_to_test(v37, v38, v85))
      {
        goto LABEL_15;
      }

LABEL_7:
      v41 = OUTLINED_FUNCTION_8_35();
      bspush_ca(v41);
      v42 = OUTLINED_FUNCTION_16_31();
      if (lpta_loadp_setscan_r(v42, v43, v44))
      {
        goto LABEL_15;
      }

      v45 = OUTLINED_FUNCTION_2_38();
      if (testFldeq(v45, v46, v47, 5) || advance_tok(v1, v48, v49, v50))
      {
        goto LABEL_15;
      }

      while (2)
      {
        v51 = OUTLINED_FUNCTION_8_35();
        starttest(v51, v52);
        v53 = OUTLINED_FUNCTION_30_21();
        if (!lpta_loadp_setscan_r(v53, v54, 1))
        {
          OUTLINED_FUNCTION_36_17();
          if (!test_string_s())
          {
LABEL_12:
            v55 = OUTLINED_FUNCTION_13_34();
            if (!test_synch(v55, v56, 1, v57))
            {
              v39 = 0;
              goto LABEL_6;
            }

LABEL_15:
            v58 = *(v1 + 104);
            if (v58)
            {
              v59 = OUTLINED_FUNCTION_21_27(v58);
            }

            else
            {
              v60 = OUTLINED_FUNCTION_31_21();
              v59 = vback(v60, v61);
            }

            switch(v59)
            {
              case 2:
                continue;
              case 3:
                goto LABEL_14;
              case 4:
                goto LABEL_12;
              case 5:
                goto LABEL_7;
              default:
                goto LABEL_5;
            }
          }
        }

        break;
      }

LABEL_14:
      if (forto_adv_upto_r(v1, 1, 2, 5, 2, v86))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_5:
  v39 = 94;
LABEL_6:
  vretproc(v1);
  return v39;
}

uint64_t OUTLINED_FUNCTION_6_35()
{
  *(v1 + 112) = v0;
  *(v1 + 128) = 0;
  return v1;
}

void OUTLINED_FUNCTION_11_34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_22_26(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_38_16(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_39_15(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_46_13(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

void OUTLINED_FUNCTION_48_13(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

void OUTLINED_FUNCTION_51_12(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_54_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void *OUTLINED_FUNCTION_60_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return fence_36(v3, 1, a3);
}

uint64_t OUTLINED_FUNCTION_61_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, int a51, __int16 a52, __int16 a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, char a59)
{

  return ventproc(v59, a2, &a57, &a53, &a50, &a59);
}

double OUTLINED_FUNCTION_62_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  *&result = savescptr(v26, a1, &a26).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_72_9(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

uint64_t OUTLINED_FUNCTION_73_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ventproc(v5, a2, a3, a4, a5, v6 - 248);
}

void *fence_37(uint64_t a1)
{
  *(*(a1 + 192) + 8121) = 1;
  result = memset(*(a1 + 264), *(a1 + 288), *(a1 + 288));
  **(a1 + 248) = 2;
  *(*(a1 + 264) + 2) = 0;
  return result;
}

uint64_t strip_nonlex_prefix()
{
  OUTLINED_FUNCTION_1_39();
  OUTLINED_FUNCTION_0_41(v2, v3, v4, v5, v6, v7, v8, v9, v59, v66, v73, v80, v87, v94, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227, v233, v239, v244, v249, v253, v257);
  OUTLINED_FUNCTION_5_37(v10, v11, v12, v13, v14, v15, v16, v17, v60, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228, v234, v240, v245, v250, v254, v258, v260, v262, v264, v266);
  v18 = setjmp(v1);
  if (!v18)
  {
    v26 = OUTLINED_FUNCTION_2_39(v18, v19, v20, v21, v22, v23, v24, v25, v61, v68, v75, v82, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229, v235, v241, v246, v251, v255, v259, v261, SHIDWORD(v261), v263, SWORD2(v263), SHIWORD(v263), v265, SWORD2(v265), SBYTE6(v265), SHIBYTE(v265), v267, v268);
    if (!v26)
    {
      OUTLINED_FUNCTION_6_36(v26, v27, v28, v29, v30, v31, v32, v33, v62, v69, v76, v83, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230, v236, v242, v247, v252, v256);
      OUTLINED_FUNCTION_4_37(v34, v35, v36, v37, v38, v39, v40, v41, v63, v70, v77, v84, v91, v98, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231, v237, v243, v248);
      OUTLINED_FUNCTION_7_36(v42, v43, v44, v45, v46, v47, v48, v49, v64, v71, v78, v85, v92, v99, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225, v232, v238);
      OUTLINED_FUNCTION_3_38(v50, v51, v52, v53, v54, v55, v56, v57, v65, v72, v79, v86, v93, v100, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226);
      fence_37(v0);
    }
  }

  vretproc(v0);
  return 94;
}

uint64_t strip_prod_prefix()
{
  OUTLINED_FUNCTION_1_39();
  OUTLINED_FUNCTION_0_41(v2, v3, v4, v5, v6, v7, v8, v9, v59, v66, v73, v80, v87, v94, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227, v233, v239, v244, v249, v253, v257);
  OUTLINED_FUNCTION_5_37(v10, v11, v12, v13, v14, v15, v16, v17, v60, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228, v234, v240, v245, v250, v254, v258, v260, v262, v264, v266);
  v18 = setjmp(v1);
  if (!v18)
  {
    v26 = OUTLINED_FUNCTION_2_39(v18, v19, v20, v21, v22, v23, v24, v25, v61, v68, v75, v82, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229, v235, v241, v246, v251, v255, v259, v261, SHIDWORD(v261), v263, SWORD2(v263), SHIWORD(v263), v265, SWORD2(v265), SBYTE6(v265), SHIBYTE(v265), v267, v268);
    if (!v26)
    {
      OUTLINED_FUNCTION_6_36(v26, v27, v28, v29, v30, v31, v32, v33, v62, v69, v76, v83, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230, v236, v242, v247, v252, v256);
      OUTLINED_FUNCTION_4_37(v34, v35, v36, v37, v38, v39, v40, v41, v63, v70, v77, v84, v91, v98, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231, v237, v243, v248);
      OUTLINED_FUNCTION_7_36(v42, v43, v44, v45, v46, v47, v48, v49, v64, v71, v78, v85, v92, v99, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225, v232, v238);
      OUTLINED_FUNCTION_3_38(v50, v51, v52, v53, v54, v55, v56, v57, v65, v72, v79, v86, v93, v100, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226);
      fence_37(v0);
    }
  }

  vretproc(v0);
  return 94;
}

uint64_t legal_initial_consonants(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 0;
  bzero(v12, 0xB8uLL);
  bzero(v18, 0xC0uLL);
  if (setjmp(v18) || (v2 = ventproc(a1, v12, v17, v16, v15, v18), v2))
  {
    v10 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_3_38(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v12[16], v12[17], v12[18], v12[19], v12[20], v12[21], v12[22], v13);
    fence_37(a1);
    v10 = 0;
  }

  vretproc(a1);
  return v10;
}

uint64_t strip_other_prefix()
{
  OUTLINED_FUNCTION_1_39();
  OUTLINED_FUNCTION_0_41(v2, v3, v4, v5, v6, v7, v8, v9, v59, v66, v73, v80, v87, v94, v101, v108, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227, v233, v239, v244, v249, v253, v257);
  OUTLINED_FUNCTION_5_37(v10, v11, v12, v13, v14, v15, v16, v17, v60, v67, v74, v81, v88, v95, v102, v109, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228, v234, v240, v245, v250, v254, v258, v260, v262, v264, v266);
  v18 = setjmp(v1);
  if (!v18)
  {
    v26 = OUTLINED_FUNCTION_2_39(v18, v19, v20, v21, v22, v23, v24, v25, v61, v68, v75, v82, v89, v96, v103, v110, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229, v235, v241, v246, v251, v255, v259, v261, SHIDWORD(v261), v263, SWORD2(v263), SHIWORD(v263), v265, SWORD2(v265), SBYTE6(v265), SHIBYTE(v265), v267, v268);
    if (!v26)
    {
      OUTLINED_FUNCTION_6_36(v26, v27, v28, v29, v30, v31, v32, v33, v62, v69, v76, v83, v90, v97, v104, v111, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230, v236, v242, v247, v252, v256);
      OUTLINED_FUNCTION_4_37(v34, v35, v36, v37, v38, v39, v40, v41, v63, v70, v77, v84, v91, v98, v105, v112, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231, v237, v243, v248);
      OUTLINED_FUNCTION_7_36(v42, v43, v44, v45, v46, v47, v48, v49, v64, v71, v78, v85, v92, v99, v106, v113, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225, v232, v238);
      OUTLINED_FUNCTION_3_38(v50, v51, v52, v53, v54, v55, v56, v57, v65, v72, v79, v86, v93, v100, v107, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226);
      fence_37(v0);
    }
  }

  vretproc(v0);
  return 94;
}

void OUTLINED_FUNCTION_0_41(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v40 - 72) = v39;
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

uint64_t OUTLINED_FUNCTION_2_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, int a42, __int16 a43, __int16 a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{

  return ventproc(v50, &a9, &a48, &a44, &a41, &a50);
}

void OUTLINED_FUNCTION_3_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

void OUTLINED_FUNCTION_4_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  get_parm(v36, &a36, v37, -6);
}

void OUTLINED_FUNCTION_5_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_6_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  get_parm(v38, &a38, v39, -6);
}

void OUTLINED_FUNCTION_7_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  get_parm(v34, &a34, v35, -6);
}

void *fence_38(uint64_t a1, int a2, uint64_t a3)
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

uint64_t strip_suffix()
{
  OUTLINED_FUNCTION_17_31();
  v85 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_40(v5, v6, v7, v8, v9, v10, v11, v12, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v80, v81, v82, v83[0], v83[1]);
  OUTLINED_FUNCTION_19_29(v13, v14, v15, v16, v17, v18, v19, v20, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v79, v80, v81, v82, v83[0], v83[1], v83[2], v83[3], v83[4], v83[5]);
  if (setjmp(v4) || (OUTLINED_FUNCTION_3_39(), ventproc(v0, v21, v22, v23, v24, v84)))
  {
    v25 = 94;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_7_37();
    get_parm(v27, v28, v3, -6);
    v29 = OUTLINED_FUNCTION_8_36();
    OUTLINED_FUNCTION_15_33(v29, v30);
    get_parm(v0, &v79, v2, -6);
    fence_38(v0, 0, &null_str_14);
    OUTLINED_FUNCTION_7_37();
    if (strip_mente())
    {
      v31 = OUTLINED_FUNCTION_6_37();
      strip_plural_suffix(v31, v32);
      OUTLINED_FUNCTION_10_36();
      strip_diminutive();
    }

    *(v1 + 8) = v82;
    v25 = 0;
  }

  vretproc(v0);
  return v25;
}

uint64_t strip_mente()
{
  OUTLINED_FUNCTION_17_31();
  v113 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_40(v5, v6, v7, v8, v9, v10, v11, v12, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v103, v104, v105, v106, v107);
  OUTLINED_FUNCTION_19_29(v13, v14, v15, v16, v17, v18, v19, v20, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
  if (setjmp(v4) || (OUTLINED_FUNCTION_3_39(), ventproc(v0, v21, v22, v23, v24, v112)) || (get_parm(v0, &v106, v3, -6), OUTLINED_FUNCTION_15_33(v0, &v104), v25 = OUTLINED_FUNCTION_8_36(), get_parm(v25, v26, v2, -6), fence_38(v0, 0, &null_str_14), fence_38(v0, 1, &_MergedGlobals_34), starttest(v0, 1), v27 = OUTLINED_FUNCTION_8_36(), lpta_loadp_setscan_l(v27, v28, 1)) || (OUTLINED_FUNCTION_2_40(), test_string_s()))
  {
LABEL_5:
    vretproc(v0);
    return 94;
  }

  else
  {
    v30 = 0;
    while (2)
    {
      v31 = OUTLINED_FUNCTION_6_37();
      savescptr(v31, v32, &v104);
      if (!advance_tok(v0, v33, v34, v35) && !advance_tok(v0, v36, v37, v38))
      {
        v39 = OUTLINED_FUNCTION_7_37();
        starttest(v39, v40);
        bspush_ca_boa();
        v41 = OUTLINED_FUNCTION_8_36();
        v43 = lpta_loadp_setscan_l(v41, v42, 1);
LABEL_10:
        v44 = v30;
        if (!v43)
        {
LABEL_11:
          v30 = v44;
          bspush_ca_scan(v0, 6);
          v45 = OUTLINED_FUNCTION_2_40();
          if (!testFldeq(v45, v46, 4, 1) && !advance_tok(v0, v47, v48, v49))
          {
            v30 = 1;
          }
        }
      }

      v50 = v0[13];
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_12_35(v50);
        v30 = v52;
      }

      else
      {
        v51 = vback(v0, v30);
        v30 = 0;
      }

      v44 = v30;
      switch(v51)
      {
        case 2:
          continue;
        case 3:
          v55 = OUTLINED_FUNCTION_5_38();
          if (!one_syllable(v55))
          {
            goto LABEL_5;
          }

          goto LABEL_20;
        case 4:
          bspop_boa(v0);
          goto LABEL_5;
        case 5:
          goto LABEL_11;
        case 6:
          v43 = advance_tok(v0, v52, v53, v54);
          goto LABEL_10;
        case 7:
LABEL_20:
          suffixes(v0, &v104, &v102, &v106);
          goto LABEL_21;
        case 8:
LABEL_21:
          OUTLINED_FUNCTION_5_38();
          restore_antepenult_accent();
          break;
        case 9:
        case 10:
          goto LABEL_22;
        default:
          goto LABEL_5;
      }

      break;
    }

LABEL_22:
    *(v1 + 8) = v105;
    vretproc(v0);
    return 0;
  }
}

uint64_t strip_plural_suffix(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  bzero(v37, 0xB8uLL);
  bzero(v47, 0xC0uLL);
  if (!setjmp(v47) && !ventproc(a1, v37, v46, v45, v44, v47))
  {
    v4 = OUTLINED_FUNCTION_8_36();
    OUTLINED_FUNCTION_15_33(v4, v5);
    v6 = OUTLINED_FUNCTION_10_36();
    get_parm(v6, v7, v8, -6);
    LOBYTE(v40) = 0;
    LODWORD(v38) = -65533;
    fence_38(a1, 0, &null_str_14);
    v9 = OUTLINED_FUNCTION_2_40();
    fence_38(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_8_36();
    if (!lpta_loadp_setscan_l(v12, v13, 1))
    {
      OUTLINED_FUNCTION_0_42();
      if (!test_string_s())
      {
        while (2)
        {
          v16 = OUTLINED_FUNCTION_8_36();
          savescptr(v16, v17, &v42);
          starttest(a1, 3);
          v18 = OUTLINED_FUNCTION_7_37();
          if (lpta_loadp_setscan_l(v18, v19, 1) || (OUTLINED_FUNCTION_0_42(), test_string_s()))
          {
LABEL_19:
            v32 = OUTLINED_FUNCTION_7_37();
            lpta_rpta_loadp(v32, v33, v41);
            v29 = a1;
            v30 = 1;
            v31 = &unk_2806BC3AD;
          }

          else
          {
LABEL_9:
            savescptr(a1, 4, &v42);
            bspush_ca_scan(a1, 5);
            OUTLINED_FUNCTION_0_42();
LABEL_10:
            if (test_string_s())
            {
              goto LABEL_11;
            }

LABEL_16:
            v22 = OUTLINED_FUNCTION_2_40();
            if (testFldeq(v22, v23, 4, 1) || advance_tok(a1, v24, v25, v26))
            {
LABEL_11:
              v20 = *(a1 + 104);
              if (v20)
              {
                v21 = OUTLINED_FUNCTION_12_35(v20);
              }

              else
              {
                v21 = vback(a1, 0);
              }

              switch(v21)
              {
                case 2:
                  continue;
                case 3:
                  goto LABEL_19;
                case 4:
                  goto LABEL_9;
                case 5:
                  OUTLINED_FUNCTION_0_42();
                  goto LABEL_10;
                case 6:
                  goto LABEL_16;
                case 7:
                  goto LABEL_21;
                default:
                  goto LABEL_5;
              }
            }

            v27 = OUTLINED_FUNCTION_7_37();
            lpta_rpta_loadp(v27, v28, v41);
            v29 = a1;
            v30 = 2;
            v31 = &unk_2806BC3AF;
          }

          break;
        }

        if (!insert_2pt_s(v29, 4u, v30, v31, 0))
        {
LABEL_21:
          v34 = OUTLINED_FUNCTION_7_37();
          lpta_rpta_loadp(v34, v35, v41);
          settvar_s();
          insert_2ptv();
          if (!v36)
          {
            ++*(a1 + 5946);
            *(a2 + 8) = v43;
            v14 = 0;
            goto LABEL_6;
          }
        }

        goto LABEL_11;
      }
    }
  }

LABEL_5:
  v14 = 94;
LABEL_6:
  vretproc(a1);
  return v14;
}

uint64_t strip_diminutive()
{
  OUTLINED_FUNCTION_11_35();
  v88 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_40(v3, v4, v5, v6, v7, v8, v9, v10, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86[0], v86[1]);
  OUTLINED_FUNCTION_9_36();
  if (setjmp(v2) || (OUTLINED_FUNCTION_3_39(), ventproc(v0, v11, v12, v13, v14, v87)) || (v15 = OUTLINED_FUNCTION_10_36(), get_parm(v15, v16, v17, -6), v18 = OUTLINED_FUNCTION_6_37(), OUTLINED_FUNCTION_15_33(v18, v19), push_ptr_init(v0, &v82), fence_38(v0, 0, &null_str_14), fence_38(v0, 1, &_MergedGlobals_34), starttest(v0, 1), v20 = OUTLINED_FUNCTION_6_37(), lpta_loadp_setscan_l(v20, v21, 1)))
  {
LABEL_4:
    vretproc(v0);
    return 94;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v23, v24);
    OUTLINED_FUNCTION_0_42();
    v25 = test_string_s();
    v26 = 0;
    v27 = 0;
    if (!v25)
    {
LABEL_6:
      v27 = v26;
      OUTLINED_FUNCTION_2_40();
      LODWORD(v28) = v27;
      if (!test_string_s())
      {
LABEL_7:
        v27 = v28;
        v29 = OUTLINED_FUNCTION_14_33();
        savescptr(v29, v30, v31);
        if (!advance_tok(v0, v32, v33, v34) && !advance_tok(v0, v35, v36, v37))
        {
          v38 = OUTLINED_FUNCTION_4_38();
          starttest(v38, v39);
          OUTLINED_FUNCTION_4_38();
          bspush_ca_boa();
          v40 = OUTLINED_FUNCTION_13_35();
          v43 = lpta_loadp_setscan_l(v40, v41, v42);
          v44 = v28;
          if (!v43)
          {
LABEL_10:
            v27 = v44;
            v45 = OUTLINED_FUNCTION_4_38();
            bspush_ca_scan(v45, v46);
            v47 = OUTLINED_FUNCTION_2_40();
            if (!OUTLINED_FUNCTION_16_32(v47, v48) && !advance_tok(v0, v49, v50, v51))
            {
              v27 = 1;
            }
          }
        }
      }
    }

    LODWORD(v28) = v27;
    while (2)
    {
      v52 = v0[13];
      if (v52)
      {
        v53 = OUTLINED_FUNCTION_12_35(v52);
        v28 = v56;
      }

      else
      {
        v53 = vback(v0, v28);
        v28 = 0;
      }

      v26 = v28;
      v44 = v28;
      switch(v53)
      {
        case 2:
          OUTLINED_FUNCTION_0_42();
          v57 = test_string_s();
          v26 = v28;
          if (!v57)
          {
            goto LABEL_6;
          }

          continue;
        case 3:
          goto LABEL_6;
        case 4:
          goto LABEL_7;
        case 5:
          suffixes(v0, &v82, &v84, v86);
          goto LABEL_24;
        case 6:
          bspop_boa(v0);
          goto LABEL_4;
        case 7:
          goto LABEL_10;
        case 8:
          v58 = advance_tok(v0, v28, v54, v55);
          v44 = v28;
          if (!v58)
          {
            goto LABEL_10;
          }

          continue;
        case 9:
LABEL_24:
          v85 = v83;
          OUTLINED_FUNCTION_5_38();
          if (restore_final_accent())
          {
            goto LABEL_25;
          }

          goto LABEL_26;
        case 10:
LABEL_25:
          OUTLINED_FUNCTION_5_38();
          restore_antepenult_accent();
          break;
        case 11:
        case 12:
          goto LABEL_26;
        default:
          goto LABEL_4;
      }

      break;
    }

LABEL_26:
    *(v1 + 8) = v85;
    vretproc(v0);
    return 0;
  }
}

uint64_t restore_antepenult_accent()
{
  OUTLINED_FUNCTION_11_35();
  v121 = *MEMORY[0x277D85DE8];
  v116[0] = 0;
  v116[1] = 0;
  v115[2] = 0;
  v115[3] = 0;
  OUTLINED_FUNCTION_1_40(v2, v3, v4, v5, v6, v7, v8, v9, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7], v112[8], v112[9], v112[10], v112[11], v112[12], v112[13], v112[14], v112[15], v112[16], v112[17], v112[18], v112[19], v112[20], v112[21], v112[22], v113[0], v113[1], v114[0], v114[1], v115[0], v115[1]);
  OUTLINED_FUNCTION_9_36();
  if (setjmp(v1) || ventproc(v0, v112, v119, v118, v117, v120))
  {
    goto LABEL_3;
  }

  v11 = OUTLINED_FUNCTION_10_36();
  get_parm(v11, v12, v13, -6);
  v14 = OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_15_33(v14, v15);
  push_ptr_init(v0, v115);
  push_ptr_init(v0, v114);
  push_ptr_init(v0, v113);
  fence_38(v0, 0, &null_str_14);
  v16 = OUTLINED_FUNCTION_18_30();
  fence_38(v16, v17, v18);
  v19 = *(v0 + 5958);
  starttest(v0, 1);
  v20 = OUTLINED_FUNCTION_6_37();
  if (!lpta_loadp_setscan_l(v20, v21, 1))
  {
    v22 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v22, v23);
    v24 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v24, v25);
    OUTLINED_FUNCTION_0_42();
    v26 = test_string_s();
    v27 = v19;
    v28 = v19;
    if (v26)
    {
      goto LABEL_16;
    }

LABEL_6:
    v19 = v27;
    savescptr(v0, 2, v115);
  }

  while (2)
  {
    v29 = OUTLINED_FUNCTION_4_38();
    starttest(v29, v30);
    v31 = OUTLINED_FUNCTION_13_35();
    v34 = lpta_loadp_setscan_l(v31, v32, v33);
    v35 = v19;
    if (v34)
    {
LABEL_3:
      vretproc(v0);
      return 94;
    }

LABEL_9:
    v28 = v35;
    v36 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v36, v37);
    v38 = OUTLINED_FUNCTION_2_40();
    if (OUTLINED_FUNCTION_16_32(v38, v39))
    {
      goto LABEL_16;
    }

    v43 = advance_tok(v0, v40, v41, v42);
    v44 = v28;
    if (v43)
    {
      goto LABEL_16;
    }

LABEL_11:
    v28 = v44;
    v45 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v45, v46);
    v47 = OUTLINED_FUNCTION_2_40();
    if (OUTLINED_FUNCTION_16_32(v47, v48))
    {
      goto LABEL_16;
    }

    v52 = advance_tok(v0, v49, v50, v51);
    v53 = v28;
    if (v52)
    {
      goto LABEL_16;
    }

LABEL_13:
    v28 = v53;
    v54 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v54, v55);
LABEL_14:
    v56 = OUTLINED_FUNCTION_14_33();
    savescptr(v56, v57, v58);
    v59 = OUTLINED_FUNCTION_2_40();
    if (OUTLINED_FUNCTION_16_32(v59, v60))
    {
      goto LABEL_16;
    }

    v64 = advance_tok(v0, v61, v62, v63);
    v65 = v28;
    if (v64)
    {
      goto LABEL_16;
    }

LABEL_37:
    v28 = v65;
    savescptr(v0, 12, v114);
    v72 = OUTLINED_FUNCTION_4_38();
    starttest(v72, v73);
    v74 = OUTLINED_FUNCTION_13_35();
    if (!lpta_loadp_setscan_l(v74, v75, v76))
    {
      v90 = OUTLINED_FUNCTION_4_38();
      bspush_ca_scan(v90, v91);
      OUTLINED_FUNCTION_0_42();
      v92 = test_string_s();
      v68 = v28;
      if (v92)
      {
        goto LABEL_16;
      }

LABEL_43:
      v28 = v68;
      v93 = OUTLINED_FUNCTION_4_38();
      bspush_ca_scan(v93, v94);
      OUTLINED_FUNCTION_0_42();
      goto LABEL_48;
    }

LABEL_38:
    v77 = OUTLINED_FUNCTION_4_38();
    starttest(v77, v78);
    v79 = OUTLINED_FUNCTION_13_35();
    if (!lpta_loadp_setscan_r(v79, v80, v81))
    {
      v95 = OUTLINED_FUNCTION_4_38();
      bspush_ca_scan(v95, v96);
      OUTLINED_FUNCTION_0_42();
      v97 = test_string_s();
      v69 = v28;
      if (v97)
      {
        goto LABEL_16;
      }

LABEL_53:
      v28 = v69;
      lpta_rpta_loadp(v0, v116, v115);
      v110 = OUTLINED_FUNCTION_2_40();
      if (!setd_lookup(v110, v111, 59))
      {
        v71 = *(v0 + 5962);
        goto LABEL_49;
      }

LABEL_16:
      v66 = *(v0 + 104);
      if (v66)
      {
        v67 = OUTLINED_FUNCTION_12_35(v66);
      }

      else
      {
        v67 = vback(v0, 0);
      }

      v27 = v28;
      v35 = v28;
      v44 = v28;
      v53 = v28;
      v68 = v28;
      v69 = v28;
      v70 = v28;
      v71 = v28;
      switch(v67)
      {
        case 1:
          v19 = v28;
          continue;
        case 2:
          goto LABEL_6;
        case 3:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_16;
          }

          v27 = v28;
          goto LABEL_6;
        case 5:
          goto LABEL_9;
        case 6:
          if (advance_tok(v0, v28, v28, v28))
          {
            goto LABEL_16;
          }

          v35 = v28;
          goto LABEL_9;
        case 7:
          goto LABEL_11;
        case 8:
          if (advance_tok(v0, v28, v28, v28))
          {
            goto LABEL_16;
          }

          v44 = v28;
          goto LABEL_11;
        case 9:
          goto LABEL_13;
        case 10:
          if (advance_tok(v0, v28, v28, v28))
          {
            goto LABEL_16;
          }

          v53 = v28;
          goto LABEL_13;
        case 11:
          goto LABEL_14;
        case 12:
          v65 = v28;
          goto LABEL_37;
        case 13:
          goto LABEL_38;
        case 14:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_16;
          }

          v68 = v28;
          goto LABEL_43;
        case 15:
          goto LABEL_43;
        case 16:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_16;
          }

          v71 = v28;
          goto LABEL_49;
        case 17:
        case 18:
        case 26:
          goto LABEL_49;
        case 19:
          goto LABEL_39;
        case 20:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_16;
          }

          v69 = v28;
          goto LABEL_53;
        case 21:
          goto LABEL_53;
        case 22:
          goto LABEL_40;
        case 23:
          OUTLINED_FUNCTION_0_42();
          if (test_string_s())
          {
            goto LABEL_16;
          }

          v70 = v28;
          goto LABEL_47;
        case 24:
          goto LABEL_47;
        case 27:
          goto LABEL_51;
        case 28:
          goto LABEL_52;
        default:
          goto LABEL_3;
      }
    }

    break;
  }

LABEL_39:
  v82 = OUTLINED_FUNCTION_4_38();
  starttest(v82, v83);
  v84 = OUTLINED_FUNCTION_13_35();
  if (lpta_loadp_setscan_l(v84, v85, v86))
  {
LABEL_40:
    lpta_rpta_loadp(v0, v116, v115);
    v87 = OUTLINED_FUNCTION_2_40();
    v89 = setd_lookup(v87, v88, 58);
    v71 = v28;
    if (v89)
    {
      goto LABEL_3;
    }

    goto LABEL_49;
  }

  v98 = OUTLINED_FUNCTION_4_38();
  bspush_ca_scan(v98, v99);
  OUTLINED_FUNCTION_0_42();
  v100 = test_string_s();
  v70 = v28;
  if (v100)
  {
    goto LABEL_16;
  }

LABEL_47:
  v28 = v70;
  OUTLINED_FUNCTION_2_40();
LABEL_48:
  v101 = test_string_s();
  v71 = v28;
  if (v101)
  {
    goto LABEL_16;
  }

LABEL_49:
  v28 = v71;
  v102 = OUTLINED_FUNCTION_4_38();
  starttest(v102, v103);
  if (*(v0 + 5958) == v28)
  {
    v104 = OUTLINED_FUNCTION_14_33();
    lpta_rpta_loadp(v104, v105, v106);
    OUTLINED_FUNCTION_2_40();
    if (!mark_s())
    {
      goto LABEL_52;
    }
  }

LABEL_51:
  v107 = OUTLINED_FUNCTION_14_33();
  lpta_rpta_loadp(v107, v108, v109);
  OUTLINED_FUNCTION_2_40();
  if (mark_s())
  {
    goto LABEL_16;
  }

LABEL_52:
  *(v0 + 5954) = *(v0 + 1010);
  vretproc(v0);
  return 0;
}

uint64_t restore_final_accent()
{
  OUTLINED_FUNCTION_11_35();
  v94 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_40(v2, v3, v4, v5, v6, v7, v8, v9, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90[0], v90[1], v91[0], v91[1], v91[2], v92);
  OUTLINED_FUNCTION_9_36();
  if (setjmp(v1))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_39();
  if (ventproc(v0, v10, v11, v12, v13, v93))
  {
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_10_36();
  get_parm(v14, v15, v16, -6);
  v17 = OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_15_33(v17, v18);
  push_ptr_init(v0, v90);
  fence_38(v0, 0, &null_str_14);
  v19 = OUTLINED_FUNCTION_18_30();
  fence_38(v19, v20, v21);
  starttest(v0, 1);
  v22 = OUTLINED_FUNCTION_6_37();
  if (lpta_loadp_setscan_l(v22, v23, 1))
  {
    goto LABEL_4;
  }

  v26 = OUTLINED_FUNCTION_4_38();
  bspush_ca_scan(v26, v27);
  OUTLINED_FUNCTION_18_30();
  v28 = test_string_s();
  v29 = 0;
  v30 = 0;
  if (v28)
  {
LABEL_15:
    v31 = v30;
    while (2)
    {
      v56 = *(v0 + 104);
      if (v56)
      {
        v57 = OUTLINED_FUNCTION_12_35(v56);
        v31 = v58;
      }

      else
      {
        v57 = vback(v0, v31);
        v31 = 0;
      }

      v29 = v31;
      v50 = v31;
      v47 = v31;
      switch(v57)
      {
        case 2:
          OUTLINED_FUNCTION_18_30();
          v59 = test_string_s();
          v29 = v31;
          if (!v59)
          {
            break;
          }

          continue;
        case 3:
          goto LABEL_7;
        case 4:
          goto LABEL_8;
        case 5:
          bspush_nboa(v0);
          *(v0 + 136) = 1;
          *(v0 + 112) = v92;
          *(v0 + 128) = 0;
          v66 = test_ptr(v0, v64, v65);
          v47 = v31;
          if (!v66)
          {
            goto LABEL_9;
          }

          continue;
        case 6:
          bspop_boa(v0);
          v63 = advance_tok(v0, v60, v61, v62);
          v50 = v31;
          if (!v63)
          {
            goto LABEL_12;
          }

          continue;
        case 7:
          goto LABEL_12;
        case 8:
        case 10:
          goto LABEL_9;
        default:
          goto LABEL_4;
      }

      break;
    }
  }

LABEL_7:
  v31 = v29;
  v32 = OUTLINED_FUNCTION_10_36();
  savescptr(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_4_38();
  starttest(v35, v36);
  v37 = OUTLINED_FUNCTION_6_37();
  if (!lpta_loadp_setscan_l(v37, v38, 1))
  {
    bspush_boa(v0);
    v50 = v31;
LABEL_12:
    v51 = v50;
    v52 = OUTLINED_FUNCTION_4_38();
    bspush_ca_scan(v52, v53);
    OUTLINED_FUNCTION_4_38();
    bspush_ca_scan_boa();
    v54 = OUTLINED_FUNCTION_2_40();
    if (OUTLINED_FUNCTION_16_32(v54, v55))
    {
      v30 = v51;
    }

    else
    {
      v30 = 1;
    }

    goto LABEL_15;
  }

LABEL_8:
  v39 = OUTLINED_FUNCTION_4_38();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_5_38();
  lpta_rpta_loadp(v41, v42, v43);
  v44 = OUTLINED_FUNCTION_2_40();
  v46 = setd_lookup(v44, v45, 60);
  v47 = v31;
  if (!v46)
  {
LABEL_9:
    v48 = v47;
    lpta_rpta_loadp(v0, v90, v91);
    OUTLINED_FUNCTION_2_40();
    v49 = mark_s();
    v30 = v48;
    if (!v49)
    {
      v24 = 0;
      *(v0 + 5954) = *(v0 + 1018);
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_4:
  v24 = 94;
LABEL_5:
  vretproc(v0);
  return v24;
}

void OUTLINED_FUNCTION_1_40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = 0;
  a37 = 0;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

void OUTLINED_FUNCTION_9_36()
{

  bzero((v0 - 248), 0xC0uLL);
}

void OUTLINED_FUNCTION_15_33(uint64_t a1, uint64_t a2)
{

  get_parm(a1, a2, v2, -6);
}

BOOL OUTLINED_FUNCTION_16_32(uint64_t a1, unsigned int a2)
{

  return testFldeq(a1, a2, 4, 1);
}

void OUTLINED_FUNCTION_19_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);

  bzero(va, 0xC0uLL);
}

uint64_t print_por_SPR(void *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_38(a1, a2, a3, a4, a5, a6, a7, a8, v71, v77, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v209, v210, v211, v212);
  OUTLINED_FUNCTION_9_37(v11, v12, v13, v14, v15, v16, v17, v18, v72, v78, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v209, v210, v211, v212, v213, v214, v215, v216);
  v19 = setjmp(v8);
  if (!v19)
  {
    v27 = OUTLINED_FUNCTION_7_38(v19, v20, v21, v22, v23, v24, v25, v26, v73, v79, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v209, v210, v211, v212, v213, SHIDWORD(v213), v214, SWORD2(v214), SHIWORD(v214), v215, SWORD2(v215), SBYTE6(v215), SHIBYTE(v215), v216, v217);
    if (!v27)
    {
      OUTLINED_FUNCTION_8_37(v27, v28, v29, v30, v31, v32, v33, v34, v74, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200, v206, v209, v210, v211);
      OUTLINED_FUNCTION_10_37(v37, v38, v39, v40, v41, v42, v43, v44, v75, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v207, v209);
      fence_39(a1);
      if (lpta_loadp_setscan_r(a1, v8, 4) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
      {
        while (2)
        {
          v45 = OUTLINED_FUNCTION_5_39();
          if (lpta_loadp_setscan_r(v45, v46, 4) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
          {
LABEL_9:
            v47 = OUTLINED_FUNCTION_5_39();
            if (lpta_loadp_setscan_r(v47, v48, 4) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
            {
LABEL_11:
              v49 = OUTLINED_FUNCTION_5_39();
              if (lpta_loadp_setscan_r(v49, v50, 4) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
              {
LABEL_13:
                v51 = OUTLINED_FUNCTION_5_39();
                if (lpta_loadp_setscan_r(v51, v52, 4) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
                {
LABEL_15:
                  v53 = OUTLINED_FUNCTION_5_39();
                  if (lpta_loadp_setscan_r(v53, v54, 4) || (OUTLINED_FUNCTION_1_41(), test_string_s()))
                  {
LABEL_17:
                    starttest(a1, 8);
                    v55 = OUTLINED_FUNCTION_5_39();
                    if (lpta_loadp_setscan_r(v55, v56, 4))
                    {
LABEL_25:
                      starttest(a1, 10);
                      v66 = OUTLINED_FUNCTION_5_39();
                      if (lpta_loadp_setscan_r(v66, v67, 4))
                      {
LABEL_30:
                        v69 = OUTLINED_FUNCTION_5_39();
                        v65 = lpta_loadp_setscan_r(v69, v70, 4);
                        if (v65 || (OUTLINED_FUNCTION_1_41(), v65 = test_string_s(), v65))
                        {
LABEL_32:
                          OUTLINED_FUNCTION_3_40(v65, v57, v58, v59, v60, v61, v62, v63, v76, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v208, v209, v210);
                          print_stream(a1, 8, 4, 0, &unk_26E7817DA);
                        }

                        goto LABEL_36;
                      }

                      if (testFldeq(a1, 4u, 10, 2) || advance_tok(a1, v57, v58, v59) || advance_tok(a1, v57, v58, v59))
                      {
LABEL_21:
                        v64 = a1[13];
                        if (v64)
                        {
                          a1[13] = 0;
                          v65 = v64;
                        }

                        else
                        {
                          v65 = vback(a1, 0);
                        }

                        switch(v65)
                        {
                          case 1:
                            continue;
                          case 2:
                            goto LABEL_36;
                          case 3:
                            goto LABEL_9;
                          case 4:
                            goto LABEL_11;
                          case 5:
                            goto LABEL_13;
                          case 6:
                            goto LABEL_15;
                          case 7:
                            goto LABEL_17;
                          case 8:
                            goto LABEL_25;
                          case 9:
                            goto LABEL_34;
                          case 10:
                            goto LABEL_30;
                          case 11:
                            break;
                          case 12:
                            goto LABEL_32;
                          default:
                            goto LABEL_3;
                        }
                      }

                      savescptr(a1, 11, &v209);
                      v68 = "J";
                    }

                    else
                    {
                      if (testFldeq(a1, 4u, 10, 1) || advance_tok(a1, v57, v58, v59) || advance_tok(a1, v57, v58, v59))
                      {
                        goto LABEL_21;
                      }

LABEL_34:
                      savescptr(a1, 9, &v209);
                      v68 = "C";
                    }
                  }

                  else
                  {
                    v68 = "'ly'";
                  }
                }

                else
                {
                  v68 = "'u~'";
                }
              }

              else
              {
                v68 = "'o~'";
              }
            }

            else
            {
              v68 = "'i~'";
            }
          }

          else
          {
            v68 = "'e~'";
          }

          break;
        }
      }

      else
      {
        v68 = "'a~'";
      }

      print_lit(a1, 8, v68);
LABEL_36:
      *(a3 + 8) = v210;
      v35 = 0;
      goto LABEL_4;
    }
  }

LABEL_3:
  v35 = 94;
LABEL_4:
  vretproc(a1);
  return v35;
}

uint64_t insert_por_spr_phone(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_38(a1, a2, a3, a4, a5, a6, a7, a8, v545, v589, v633, v677, v721, v765, v809, v853, v897, v941, v985, v1029, v1073, v1117, v1161, v1205, v1249, v1293, v1337, v1381, v1425, v1469, v1513, v1557, v1601, v1644, v1685);
  OUTLINED_FUNCTION_9_37(v10, v11, v12, v13, v14, v15, v16, v17, v546, v590, v634, v678, v722, v766, v810, v854, v898, v942, v986, v1030, v1074, v1118, v1162, v1206, v1250, v1294, v1338, v1382, v1426, v1470, v1514, v1558, v1602, v1645, v1686, v1688, v1690, v1692, v1694);
  v18 = setjmp(v8);
  if (v18
    || (v26 = OUTLINED_FUNCTION_7_38(v18, v19, v20, v21, v22, v23, v24, v25, v547, v591, v635, v679, v723, v767, v811, v855, v899, v943, v987, v1031, v1075, v1119, v1163, v1207, v1251, v1295, v1339, v1383, v1427, v1471, v1515, v1559, v1603, v1646, v1687, v1689, SHIDWORD(v1689), v1691, SWORD2(v1691), SHIWORD(v1691), v1693, SWORD2(v1693), SBYTE6(v1693), SHIBYTE(v1693), v1695, v1696), v26)
    || ((OUTLINED_FUNCTION_8_37(v26, v27, v28, v29, v30, v31, v32, v33, v548, v592, v636, v680, v724, v768, v812, v856, v900, v944, v988, v1032, v1076, v1120, v1164, v1208, v1252, v1296, v1340, v1384, v1428, v1472, v1516, v1560, v1604, v1647), OUTLINED_FUNCTION_10_37(v35, v36, v37, v38, v39, v40, v41, v42, v549, v593, v637, v681, v725, v769, v813, v857, v901, v945, v989, v1033, v1077, v1121, v1165, v1209, v1253, v1297, v1341, v1385, v1429, v1473, v1517, v1561), fence_39(a1), inserted = lpta_loadp_setscan_r(a1, v8, 1), inserted) || (OUTLINED_FUNCTION_2_41(), inserted = test_string_s(), inserted) || (inserted = OUTLINED_FUNCTION_0_43(inserted, v44, v45, v46, v47, v48, v49, v50, v550, v594, v638, v682, v726, v770, v814, v858, v902, v946, v990, v1034, v1078, v1122, v1166, v1210, v1254, v1298, v1342, v1386, v1430, v1474, v1518, v1562, v1605), inserted) || (OUTLINED_FUNCTION_3_40(inserted, v44, v45, v46, v47, v48, v49, v50, v550, v594, v638, v682, v726, v770, v814, v858, v902, v946, v990, v1034, v1078, v1122, v1166, v1210, v1254, v1298, v1342, v1386, v1430, v1474, v1518, v1562, v1605), v51 = OUTLINED_FUNCTION_1_41(), inserted = insert_2pt_s(v51, v52, v53, v54, v55), inserted))
    && ((v56 = OUTLINED_FUNCTION_4_39(inserted, v44, v45, v46, v47, v48, v49, v50, v550, v594, v638, v682, v726, v770, v814, v858, v902, v946, v990, v1034, v1078, v1122, v1166, v1210, v1254, v1298, v1342, v1386, v1430, v1474, v1518, v1562, v1605, v1648), v56) || (OUTLINED_FUNCTION_2_41(), v56 = test_string_s(), v56) || (v56 = OUTLINED_FUNCTION_0_43(v56, v57, v58, v59, v60, v61, v62, v63, v551, v595, v639, v683, v727, v771, v815, v859, v903, v947, v991, v1035, v1079, v1123, v1167, v1211, v1255, v1299, v1343, v1387, v1431, v1475, v1519, v1563, v1606), v56) || (OUTLINED_FUNCTION_3_40(v56, v57, v58, v59, v60, v61, v62, v63, v551, v595, v639, v683, v727, v771, v815, v859, v903, v947, v991, v1035, v1079, v1123, v1167, v1211, v1255, v1299, v1343, v1387, v1431, v1475, v1519, v1563, v1606), v64 = OUTLINED_FUNCTION_1_41(), v56 = insert_2pt_s(v64, v65, v66, v67, v68), v56))
    && ((v69 = OUTLINED_FUNCTION_4_39(v56, v57, v58, v59, v60, v61, v62, v63, v551, v595, v639, v683, v727, v771, v815, v859, v903, v947, v991, v1035, v1079, v1123, v1167, v1211, v1255, v1299, v1343, v1387, v1431, v1475, v1519, v1563, v1606, v1649), v69) || (OUTLINED_FUNCTION_2_41(), v69 = test_string_s(), v69) || (v69 = OUTLINED_FUNCTION_0_43(v69, v70, v71, v72, v73, v74, v75, v76, v552, v596, v640, v684, v728, v772, v816, v860, v904, v948, v992, v1036, v1080, v1124, v1168, v1212, v1256, v1300, v1344, v1388, v1432, v1476, v1520, v1564, v1607), v69) || (OUTLINED_FUNCTION_3_40(v69, v70, v71, v72, v73, v74, v75, v76, v552, v596, v640, v684, v728, v772, v816, v860, v904, v948, v992, v1036, v1080, v1124, v1168, v1212, v1256, v1300, v1344, v1388, v1432, v1476, v1520, v1564, v1607), v77 = OUTLINED_FUNCTION_1_41(), v69 = insert_2pt_s(v77, v78, v79, v80, v81), v69))
    && ((v82 = OUTLINED_FUNCTION_4_39(v69, v70, v71, v72, v73, v74, v75, v76, v552, v596, v640, v684, v728, v772, v816, v860, v904, v948, v992, v1036, v1080, v1124, v1168, v1212, v1256, v1300, v1344, v1388, v1432, v1476, v1520, v1564, v1607, v1650), v82) || (OUTLINED_FUNCTION_2_41(), v82 = test_string_s(), v82) || (v82 = OUTLINED_FUNCTION_0_43(v82, v83, v84, v85, v86, v87, v88, v89, v553, v597, v641, v685, v729, v773, v817, v861, v905, v949, v993, v1037, v1081, v1125, v1169, v1213, v1257, v1301, v1345, v1389, v1433, v1477, v1521, v1565, v1608), v82) || (OUTLINED_FUNCTION_3_40(v82, v83, v84, v85, v86, v87, v88, v89, v553, v597, v641, v685, v729, v773, v817, v861, v905, v949, v993, v1037, v1081, v1125, v1169, v1213, v1257, v1301, v1345, v1389, v1433, v1477, v1521, v1565, v1608), v90 = OUTLINED_FUNCTION_1_41(), v82 = insert_2pt_s(v90, v91, v92, v93, v94), v82))
    && ((v95 = OUTLINED_FUNCTION_4_39(v82, v83, v84, v85, v86, v87, v88, v89, v553, v597, v641, v685, v729, v773, v817, v861, v905, v949, v993, v1037, v1081, v1125, v1169, v1213, v1257, v1301, v1345, v1389, v1433, v1477, v1521, v1565, v1608, v1651), v95) || (OUTLINED_FUNCTION_2_41(), v95 = test_string_s(), v95) || (v95 = OUTLINED_FUNCTION_0_43(v95, v96, v97, v98, v99, v100, v101, v102, v554, v598, v642, v686, v730, v774, v818, v862, v906, v950, v994, v1038, v1082, v1126, v1170, v1214, v1258, v1302, v1346, v1390, v1434, v1478, v1522, v1566, v1609), v95) || (OUTLINED_FUNCTION_3_40(v95, v96, v97, v98, v99, v100, v101, v102, v554, v598, v642, v686, v730, v774, v818, v862, v906, v950, v994, v1038, v1082, v1126, v1170, v1214, v1258, v1302, v1346, v1390, v1434, v1478, v1522, v1566, v1609), v103 = OUTLINED_FUNCTION_1_41(), v95 = insert_2pt_s(v103, v104, v105, v106, v107), v95))
    && ((v108 = OUTLINED_FUNCTION_4_39(v95, v96, v97, v98, v99, v100, v101, v102, v554, v598, v642, v686, v730, v774, v818, v862, v906, v950, v994, v1038, v1082, v1126, v1170, v1214, v1258, v1302, v1346, v1390, v1434, v1478, v1522, v1566, v1609, v1652), v108) || (OUTLINED_FUNCTION_2_41(), v108 = test_string_s(), v108) || (v108 = OUTLINED_FUNCTION_0_43(v108, v109, v110, v111, v112, v113, v114, v115, v555, v599, v643, v687, v731, v775, v819, v863, v907, v951, v995, v1039, v1083, v1127, v1171, v1215, v1259, v1303, v1347, v1391, v1435, v1479, v1523, v1567, v1610), v108) || (OUTLINED_FUNCTION_3_40(v108, v109, v110, v111, v112, v113, v114, v115, v555, v599, v643, v687, v731, v775, v819, v863, v907, v951, v995, v1039, v1083, v1127, v1171, v1215, v1259, v1303, v1347, v1391, v1435, v1479, v1523, v1567, v1610), v116 = OUTLINED_FUNCTION_1_41(), v108 = insert_2pt_s(v116, v117, v118, v119, v120), v108))
    && ((v121 = OUTLINED_FUNCTION_4_39(v108, v109, v110, v111, v112, v113, v114, v115, v555, v599, v643, v687, v731, v775, v819, v863, v907, v951, v995, v1039, v1083, v1127, v1171, v1215, v1259, v1303, v1347, v1391, v1435, v1479, v1523, v1567, v1610, v1653), v121) || (OUTLINED_FUNCTION_2_41(), v121 = test_string_s(), v121) || (v121 = OUTLINED_FUNCTION_0_43(v121, v122, v123, v124, v125, v126, v127, v128, v556, v600, v644, v688, v732, v776, v820, v864, v908, v952, v996, v1040, v1084, v1128, v1172, v1216, v1260, v1304, v1348, v1392, v1436, v1480, v1524, v1568, v1611), v121) || (OUTLINED_FUNCTION_3_40(v121, v122, v123, v124, v125, v126, v127, v128, v556, v600, v644, v688, v732, v776, v820, v864, v908, v952, v996, v1040, v1084, v1128, v1172, v1216, v1260, v1304, v1348, v1392, v1436, v1480, v1524, v1568, v1611), v129 = OUTLINED_FUNCTION_1_41(), v121 = insert_2pt_s(v129, v130, v131, v132, v133), v121))
    && ((v134 = OUTLINED_FUNCTION_4_39(v121, v122, v123, v124, v125, v126, v127, v128, v556, v600, v644, v688, v732, v776, v820, v864, v908, v952, v996, v1040, v1084, v1128, v1172, v1216, v1260, v1304, v1348, v1392, v1436, v1480, v1524, v1568, v1611, v1654), v134) || (OUTLINED_FUNCTION_2_41(), v134 = test_string_s(), v134) || (v134 = OUTLINED_FUNCTION_0_43(v134, v135, v136, v137, v138, v139, v140, v141, v557, v601, v645, v689, v733, v777, v821, v865, v909, v953, v997, v1041, v1085, v1129, v1173, v1217, v1261, v1305, v1349, v1393, v1437, v1481, v1525, v1569, v1612), v134) || (OUTLINED_FUNCTION_3_40(v134, v135, v136, v137, v138, v139, v140, v141, v557, v601, v645, v689, v733, v777, v821, v865, v909, v953, v997, v1041, v1085, v1129, v1173, v1217, v1261, v1305, v1349, v1393, v1437, v1481, v1525, v1569, v1612), v142 = OUTLINED_FUNCTION_1_41(), v134 = insert_2pt_s(v142, v143, v144, v145, v146), v134))
    && ((v147 = OUTLINED_FUNCTION_4_39(v134, v135, v136, v137, v138, v139, v140, v141, v557, v601, v645, v689, v733, v777, v821, v865, v909, v953, v997, v1041, v1085, v1129, v1173, v1217, v1261, v1305, v1349, v1393, v1437, v1481, v1525, v1569, v1612, v1655), v147) || (OUTLINED_FUNCTION_2_41(), v147 = test_string_s(), v147) || (v147 = OUTLINED_FUNCTION_0_43(v147, v148, v149, v150, v151, v152, v153, v154, v558, v602, v646, v690, v734, v778, v822, v866, v910, v954, v998, v1042, v1086, v1130, v1174, v1218, v1262, v1306, v1350, v1394, v1438, v1482, v1526, v1570, v1613), v147) || (OUTLINED_FUNCTION_3_40(v147, v148, v149, v150, v151, v152, v153, v154, v558, v602, v646, v690, v734, v778, v822, v866, v910, v954, v998, v1042, v1086, v1130, v1174, v1218, v1262, v1306, v1350, v1394, v1438, v1482, v1526, v1570, v1613), v155 = OUTLINED_FUNCTION_1_41(), v147 = insert_2pt_s(v155, v156, v157, v158, v159), v147))
    && ((v160 = OUTLINED_FUNCTION_4_39(v147, v148, v149, v150, v151, v152, v153, v154, v558, v602, v646, v690, v734, v778, v822, v866, v910, v954, v998, v1042, v1086, v1130, v1174, v1218, v1262, v1306, v1350, v1394, v1438, v1482, v1526, v1570, v1613, v1656), v160) || (OUTLINED_FUNCTION_2_41(), v160 = test_string_s(), v160) || (v160 = OUTLINED_FUNCTION_0_43(v160, v161, v162, v163, v164, v165, v166, v167, v559, v603, v647, v691, v735, v779, v823, v867, v911, v955, v999, v1043, v1087, v1131, v1175, v1219, v1263, v1307, v1351, v1395, v1439, v1483, v1527, v1571, v1614), v160) || (OUTLINED_FUNCTION_3_40(v160, v161, v162, v163, v164, v165, v166, v167, v559, v603, v647, v691, v735, v779, v823, v867, v911, v955, v999, v1043, v1087, v1131, v1175, v1219, v1263, v1307, v1351, v1395, v1439, v1483, v1527, v1571, v1614), v168 = OUTLINED_FUNCTION_1_41(), v160 = insert_2pt_s(v168, v169, v170, v171, v172), v160))
    && ((v173 = OUTLINED_FUNCTION_4_39(v160, v161, v162, v163, v164, v165, v166, v167, v559, v603, v647, v691, v735, v779, v823, v867, v911, v955, v999, v1043, v1087, v1131, v1175, v1219, v1263, v1307, v1351, v1395, v1439, v1483, v1527, v1571, v1614, v1657), v173) || (OUTLINED_FUNCTION_2_41(), v173 = test_string_s(), v173) || (v173 = OUTLINED_FUNCTION_0_43(v173, v174, v175, v176, v177, v178, v179, v180, v560, v604, v648, v692, v736, v780, v824, v868, v912, v956, v1000, v1044, v1088, v1132, v1176, v1220, v1264, v1308, v1352, v1396, v1440, v1484, v1528, v1572, v1615), v173) || (OUTLINED_FUNCTION_3_40(v173, v174, v175, v176, v177, v178, v179, v180, v560, v604, v648, v692, v736, v780, v824, v868, v912, v956, v1000, v1044, v1088, v1132, v1176, v1220, v1264, v1308, v1352, v1396, v1440, v1484, v1528, v1572, v1615), v181 = OUTLINED_FUNCTION_1_41(), v173 = insert_2pt_s(v181, v182, v183, v184, v185), v173))
    && ((v186 = OUTLINED_FUNCTION_4_39(v173, v174, v175, v176, v177, v178, v179, v180, v560, v604, v648, v692, v736, v780, v824, v868, v912, v956, v1000, v1044, v1088, v1132, v1176, v1220, v1264, v1308, v1352, v1396, v1440, v1484, v1528, v1572, v1615, v1658), v186) || (OUTLINED_FUNCTION_2_41(), v186 = test_string_s(), v186) || (v186 = OUTLINED_FUNCTION_0_43(v186, v187, v188, v189, v190, v191, v192, v193, v561, v605, v649, v693, v737, v781, v825, v869, v913, v957, v1001, v1045, v1089, v1133, v1177, v1221, v1265, v1309, v1353, v1397, v1441, v1485, v1529, v1573, v1616), v186) || (OUTLINED_FUNCTION_3_40(v186, v187, v188, v189, v190, v191, v192, v193, v561, v605, v649, v693, v737, v781, v825, v869, v913, v957, v1001, v1045, v1089, v1133, v1177, v1221, v1265, v1309, v1353, v1397, v1441, v1485, v1529, v1573, v1616), v194 = OUTLINED_FUNCTION_1_41(), v186 = insert_2pt_s(v194, v195, v196, v197, v198), v186))
    && ((v199 = OUTLINED_FUNCTION_4_39(v186, v187, v188, v189, v190, v191, v192, v193, v561, v605, v649, v693, v737, v781, v825, v869, v913, v957, v1001, v1045, v1089, v1133, v1177, v1221, v1265, v1309, v1353, v1397, v1441, v1485, v1529, v1573, v1616, v1659), v199) || (OUTLINED_FUNCTION_2_41(), v199 = test_string_s(), v199) || (v199 = OUTLINED_FUNCTION_0_43(v199, v200, v201, v202, v203, v204, v205, v206, v562, v606, v650, v694, v738, v782, v826, v870, v914, v958, v1002, v1046, v1090, v1134, v1178, v1222, v1266, v1310, v1354, v1398, v1442, v1486, v1530, v1574, v1617), v199) || (OUTLINED_FUNCTION_3_40(v199, v200, v201, v202, v203, v204, v205, v206, v562, v606, v650, v694, v738, v782, v826, v870, v914, v958, v1002, v1046, v1090, v1134, v1178, v1222, v1266, v1310, v1354, v1398, v1442, v1486, v1530, v1574, v1617), v207 = OUTLINED_FUNCTION_1_41(), v199 = insert_2pt_s(v207, v208, v209, v210, v211), v199))
    && ((v212 = OUTLINED_FUNCTION_4_39(v199, v200, v201, v202, v203, v204, v205, v206, v562, v606, v650, v694, v738, v782, v826, v870, v914, v958, v1002, v1046, v1090, v1134, v1178, v1222, v1266, v1310, v1354, v1398, v1442, v1486, v1530, v1574, v1617, v1660), v212) || (OUTLINED_FUNCTION_2_41(), v212 = test_string_s(), v212) || (v212 = OUTLINED_FUNCTION_0_43(v212, v213, v214, v215, v216, v217, v218, v219, v563, v607, v651, v695, v739, v783, v827, v871, v915, v959, v1003, v1047, v1091, v1135, v1179, v1223, v1267, v1311, v1355, v1399, v1443, v1487, v1531, v1575, v1618), v212) || (OUTLINED_FUNCTION_3_40(v212, v213, v214, v215, v216, v217, v218, v219, v563, v607, v651, v695, v739, v783, v827, v871, v915, v959, v1003, v1047, v1091, v1135, v1179, v1223, v1267, v1311, v1355, v1399, v1443, v1487, v1531, v1575, v1618), v220 = OUTLINED_FUNCTION_1_41(), v212 = insert_2pt_s(v220, v221, v222, v223, v224), v212))
    && ((v225 = OUTLINED_FUNCTION_4_39(v212, v213, v214, v215, v216, v217, v218, v219, v563, v607, v651, v695, v739, v783, v827, v871, v915, v959, v1003, v1047, v1091, v1135, v1179, v1223, v1267, v1311, v1355, v1399, v1443, v1487, v1531, v1575, v1618, v1661), v225) || (OUTLINED_FUNCTION_2_41(), v225 = test_string_s(), v225) || (v225 = OUTLINED_FUNCTION_0_43(v225, v226, v227, v228, v229, v230, v231, v232, v564, v608, v652, v696, v740, v784, v828, v872, v916, v960, v1004, v1048, v1092, v1136, v1180, v1224, v1268, v1312, v1356, v1400, v1444, v1488, v1532, v1576, v1619), v225) || (OUTLINED_FUNCTION_3_40(v225, v226, v227, v228, v229, v230, v231, v232, v564, v608, v652, v696, v740, v784, v828, v872, v916, v960, v1004, v1048, v1092, v1136, v1180, v1224, v1268, v1312, v1356, v1400, v1444, v1488, v1532, v1576, v1619), v233 = OUTLINED_FUNCTION_1_41(), v225 = insert_2pt_s(v233, v234, v235, v236, v237), v225))
    && ((v238 = OUTLINED_FUNCTION_4_39(v225, v226, v227, v228, v229, v230, v231, v232, v564, v608, v652, v696, v740, v784, v828, v872, v916, v960, v1004, v1048, v1092, v1136, v1180, v1224, v1268, v1312, v1356, v1400, v1444, v1488, v1532, v1576, v1619, v1662), v238) || (OUTLINED_FUNCTION_2_41(), v238 = test_string_s(), v238) || (v238 = OUTLINED_FUNCTION_0_43(v238, v239, v240, v241, v242, v243, v244, v245, v565, v609, v653, v697, v741, v785, v829, v873, v917, v961, v1005, v1049, v1093, v1137, v1181, v1225, v1269, v1313, v1357, v1401, v1445, v1489, v1533, v1577, v1620), v238) || (OUTLINED_FUNCTION_3_40(v238, v239, v240, v241, v242, v243, v244, v245, v565, v609, v653, v697, v741, v785, v829, v873, v917, v961, v1005, v1049, v1093, v1137, v1181, v1225, v1269, v1313, v1357, v1401, v1445, v1489, v1533, v1577, v1620), v246 = OUTLINED_FUNCTION_1_41(), v238 = insert_2pt_s(v246, v247, v248, v249, v250), v238))
    && ((v251 = OUTLINED_FUNCTION_4_39(v238, v239, v240, v241, v242, v243, v244, v245, v565, v609, v653, v697, v741, v785, v829, v873, v917, v961, v1005, v1049, v1093, v1137, v1181, v1225, v1269, v1313, v1357, v1401, v1445, v1489, v1533, v1577, v1620, v1663), v251) || (OUTLINED_FUNCTION_2_41(), v251 = test_string_s(), v251) || (v251 = OUTLINED_FUNCTION_0_43(v251, v252, v253, v254, v255, v256, v257, v258, v566, v610, v654, v698, v742, v786, v830, v874, v918, v962, v1006, v1050, v1094, v1138, v1182, v1226, v1270, v1314, v1358, v1402, v1446, v1490, v1534, v1578, v1621), v251) || (OUTLINED_FUNCTION_3_40(v251, v252, v253, v254, v255, v256, v257, v258, v566, v610, v654, v698, v742, v786, v830, v874, v918, v962, v1006, v1050, v1094, v1138, v1182, v1226, v1270, v1314, v1358, v1402, v1446, v1490, v1534, v1578, v1621), v259 = OUTLINED_FUNCTION_1_41(), v251 = insert_2pt_s(v259, v260, v261, v262, v263), v251))
    && ((v264 = OUTLINED_FUNCTION_4_39(v251, v252, v253, v254, v255, v256, v257, v258, v566, v610, v654, v698, v742, v786, v830, v874, v918, v962, v1006, v1050, v1094, v1138, v1182, v1226, v1270, v1314, v1358, v1402, v1446, v1490, v1534, v1578, v1621, v1664), v264) || (OUTLINED_FUNCTION_2_41(), v264 = test_string_s(), v264) || (v264 = OUTLINED_FUNCTION_0_43(v264, v265, v266, v267, v268, v269, v270, v271, v567, v611, v655, v699, v743, v787, v831, v875, v919, v963, v1007, v1051, v1095, v1139, v1183, v1227, v1271, v1315, v1359, v1403, v1447, v1491, v1535, v1579, v1622), v264) || (OUTLINED_FUNCTION_3_40(v264, v265, v266, v267, v268, v269, v270, v271, v567, v611, v655, v699, v743, v787, v831, v875, v919, v963, v1007, v1051, v1095, v1139, v1183, v1227, v1271, v1315, v1359, v1403, v1447, v1491, v1535, v1579, v1622), v272 = OUTLINED_FUNCTION_1_41(), v264 = insert_2pt_s(v272, v273, v274, v275, v276), v264))
    && ((v277 = OUTLINED_FUNCTION_4_39(v264, v265, v266, v267, v268, v269, v270, v271, v567, v611, v655, v699, v743, v787, v831, v875, v919, v963, v1007, v1051, v1095, v1139, v1183, v1227, v1271, v1315, v1359, v1403, v1447, v1491, v1535, v1579, v1622, v1665), v277) || (OUTLINED_FUNCTION_2_41(), v277 = test_string_s(), v277) || (v277 = OUTLINED_FUNCTION_0_43(v277, v278, v279, v280, v281, v282, v283, v284, v568, v612, v656, v700, v744, v788, v832, v876, v920, v964, v1008, v1052, v1096, v1140, v1184, v1228, v1272, v1316, v1360, v1404, v1448, v1492, v1536, v1580, v1623), v277) || (OUTLINED_FUNCTION_3_40(v277, v278, v279, v280, v281, v282, v283, v284, v568, v612, v656, v700, v744, v788, v832, v876, v920, v964, v1008, v1052, v1096, v1140, v1184, v1228, v1272, v1316, v1360, v1404, v1448, v1492, v1536, v1580, v1623), v285 = OUTLINED_FUNCTION_1_41(), v277 = insert_2pt_s(v285, v286, v287, v288, v289), v277))
    && ((v290 = OUTLINED_FUNCTION_4_39(v277, v278, v279, v280, v281, v282, v283, v284, v568, v612, v656, v700, v744, v788, v832, v876, v920, v964, v1008, v1052, v1096, v1140, v1184, v1228, v1272, v1316, v1360, v1404, v1448, v1492, v1536, v1580, v1623, v1666), v290) || (OUTLINED_FUNCTION_2_41(), v290 = test_string_s(), v290) || (v290 = OUTLINED_FUNCTION_0_43(v290, v291, v292, v293, v294, v295, v296, v297, v569, v613, v657, v701, v745, v789, v833, v877, v921, v965, v1009, v1053, v1097, v1141, v1185, v1229, v1273, v1317, v1361, v1405, v1449, v1493, v1537, v1581, v1624), v290) || (OUTLINED_FUNCTION_3_40(v290, v291, v292, v293, v294, v295, v296, v297, v569, v613, v657, v701, v745, v789, v833, v877, v921, v965, v1009, v1053, v1097, v1141, v1185, v1229, v1273, v1317, v1361, v1405, v1449, v1493, v1537, v1581, v1624), v298 = OUTLINED_FUNCTION_1_41(), v290 = insert_2pt_s(v298, v299, v300, v301, v302), v290))
    && ((v303 = OUTLINED_FUNCTION_4_39(v290, v291, v292, v293, v294, v295, v296, v297, v569, v613, v657, v701, v745, v789, v833, v877, v921, v965, v1009, v1053, v1097, v1141, v1185, v1229, v1273, v1317, v1361, v1405, v1449, v1493, v1537, v1581, v1624, v1667), v303) || (OUTLINED_FUNCTION_2_41(), v303 = test_string_s(), v303) || (v303 = OUTLINED_FUNCTION_0_43(v303, v304, v305, v306, v307, v308, v309, v310, v570, v614, v658, v702, v746, v790, v834, v878, v922, v966, v1010, v1054, v1098, v1142, v1186, v1230, v1274, v1318, v1362, v1406, v1450, v1494, v1538, v1582, v1625), v303) || (OUTLINED_FUNCTION_3_40(v303, v304, v305, v306, v307, v308, v309, v310, v570, v614, v658, v702, v746, v790, v834, v878, v922, v966, v1010, v1054, v1098, v1142, v1186, v1230, v1274, v1318, v1362, v1406, v1450, v1494, v1538, v1582, v1625), v311 = OUTLINED_FUNCTION_1_41(), v303 = insert_2pt_s(v311, v312, v313, v314, v315), v303))
    && ((v316 = OUTLINED_FUNCTION_4_39(v303, v304, v305, v306, v307, v308, v309, v310, v570, v614, v658, v702, v746, v790, v834, v878, v922, v966, v1010, v1054, v1098, v1142, v1186, v1230, v1274, v1318, v1362, v1406, v1450, v1494, v1538, v1582, v1625, v1668), v316) || (OUTLINED_FUNCTION_2_41(), v316 = test_string_s(), v316) || (v316 = OUTLINED_FUNCTION_0_43(v316, v317, v318, v319, v320, v321, v322, v323, v571, v615, v659, v703, v747, v791, v835, v879, v923, v967, v1011, v1055, v1099, v1143, v1187, v1231, v1275, v1319, v1363, v1407, v1451, v1495, v1539, v1583, v1626), v316) || (OUTLINED_FUNCTION_3_40(v316, v317, v318, v319, v320, v321, v322, v323, v571, v615, v659, v703, v747, v791, v835, v879, v923, v967, v1011, v1055, v1099, v1143, v1187, v1231, v1275, v1319, v1363, v1407, v1451, v1495, v1539, v1583, v1626), v324 = OUTLINED_FUNCTION_1_41(), v316 = insert_2pt_s(v324, v325, v326, v327, v328), v316))
    && ((v329 = OUTLINED_FUNCTION_4_39(v316, v317, v318, v319, v320, v321, v322, v323, v571, v615, v659, v703, v747, v791, v835, v879, v923, v967, v1011, v1055, v1099, v1143, v1187, v1231, v1275, v1319, v1363, v1407, v1451, v1495, v1539, v1583, v1626, v1669), v329) || (OUTLINED_FUNCTION_2_41(), v329 = test_string_s(), v329) || (v329 = OUTLINED_FUNCTION_0_43(v329, v330, v331, v332, v333, v334, v335, v336, v572, v616, v660, v704, v748, v792, v836, v880, v924, v968, v1012, v1056, v1100, v1144, v1188, v1232, v1276, v1320, v1364, v1408, v1452, v1496, v1540, v1584, v1627), v329) || (OUTLINED_FUNCTION_3_40(v329, v330, v331, v332, v333, v334, v335, v336, v572, v616, v660, v704, v748, v792, v836, v880, v924, v968, v1012, v1056, v1100, v1144, v1188, v1232, v1276, v1320, v1364, v1408, v1452, v1496, v1540, v1584, v1627), v337 = OUTLINED_FUNCTION_1_41(), v329 = insert_2pt_s(v337, v338, v339, v340, v341), v329))
    && ((v342 = OUTLINED_FUNCTION_4_39(v329, v330, v331, v332, v333, v334, v335, v336, v572, v616, v660, v704, v748, v792, v836, v880, v924, v968, v1012, v1056, v1100, v1144, v1188, v1232, v1276, v1320, v1364, v1408, v1452, v1496, v1540, v1584, v1627, v1670), v342) || (OUTLINED_FUNCTION_2_41(), v342 = test_string_s(), v342) || (v342 = OUTLINED_FUNCTION_0_43(v342, v343, v344, v345, v346, v347, v348, v349, v573, v617, v661, v705, v749, v793, v837, v881, v925, v969, v1013, v1057, v1101, v1145, v1189, v1233, v1277, v1321, v1365, v1409, v1453, v1497, v1541, v1585, v1628), v342) || (OUTLINED_FUNCTION_3_40(v342, v343, v344, v345, v346, v347, v348, v349, v573, v617, v661, v705, v749, v793, v837, v881, v925, v969, v1013, v1057, v1101, v1145, v1189, v1233, v1277, v1321, v1365, v1409, v1453, v1497, v1541, v1585, v1628), v350 = OUTLINED_FUNCTION_1_41(), v342 = insert_2pt_s(v350, v351, v352, v353, v354), v342))
    && ((v355 = OUTLINED_FUNCTION_4_39(v342, v343, v344, v345, v346, v347, v348, v349, v573, v617, v661, v705, v749, v793, v837, v881, v925, v969, v1013, v1057, v1101, v1145, v1189, v1233, v1277, v1321, v1365, v1409, v1453, v1497, v1541, v1585, v1628, v1671), v355) || (OUTLINED_FUNCTION_2_41(), v355 = test_string_s(), v355) || (v355 = OUTLINED_FUNCTION_0_43(v355, v356, v357, v358, v359, v360, v361, v362, v574, v618, v662, v706, v750, v794, v838, v882, v926, v970, v1014, v1058, v1102, v1146, v1190, v1234, v1278, v1322, v1366, v1410, v1454, v1498, v1542, v1586, v1629), v355) || (OUTLINED_FUNCTION_3_40(v355, v356, v357, v358, v359, v360, v361, v362, v574, v618, v662, v706, v750, v794, v838, v882, v926, v970, v1014, v1058, v1102, v1146, v1190, v1234, v1278, v1322, v1366, v1410, v1454, v1498, v1542, v1586, v1629), v363 = OUTLINED_FUNCTION_1_41(), v355 = insert_2pt_s(v363, v364, v365, v366, v367), v355))
    && ((v368 = OUTLINED_FUNCTION_4_39(v355, v356, v357, v358, v359, v360, v361, v362, v574, v618, v662, v706, v750, v794, v838, v882, v926, v970, v1014, v1058, v1102, v1146, v1190, v1234, v1278, v1322, v1366, v1410, v1454, v1498, v1542, v1586, v1629, v1672), v368) || (OUTLINED_FUNCTION_2_41(), v368 = test_string_s(), v368) || (v368 = OUTLINED_FUNCTION_0_43(v368, v369, v370, v371, v372, v373, v374, v375, v575, v619, v663, v707, v751, v795, v839, v883, v927, v971, v1015, v1059, v1103, v1147, v1191, v1235, v1279, v1323, v1367, v1411, v1455, v1499, v1543, v1587, v1630), v368) || (OUTLINED_FUNCTION_3_40(v368, v369, v370, v371, v372, v373, v374, v375, v575, v619, v663, v707, v751, v795, v839, v883, v927, v971, v1015, v1059, v1103, v1147, v1191, v1235, v1279, v1323, v1367, v1411, v1455, v1499, v1543, v1587, v1630), v376 = OUTLINED_FUNCTION_1_41(), v368 = insert_2pt_s(v376, v377, v378, v379, v380), v368))
    && ((v381 = OUTLINED_FUNCTION_4_39(v368, v369, v370, v371, v372, v373, v374, v375, v575, v619, v663, v707, v751, v795, v839, v883, v927, v971, v1015, v1059, v1103, v1147, v1191, v1235, v1279, v1323, v1367, v1411, v1455, v1499, v1543, v1587, v1630, v1673), v381) || (OUTLINED_FUNCTION_2_41(), v381 = test_string_s(), v381) || (v381 = OUTLINED_FUNCTION_0_43(v381, v382, v383, v384, v385, v386, v387, v388, v576, v620, v664, v708, v752, v796, v840, v884, v928, v972, v1016, v1060, v1104, v1148, v1192, v1236, v1280, v1324, v1368, v1412, v1456, v1500, v1544, v1588, v1631), v381) || (OUTLINED_FUNCTION_3_40(v381, v382, v383, v384, v385, v386, v387, v388, v576, v620, v664, v708, v752, v796, v840, v884, v928, v972, v1016, v1060, v1104, v1148, v1192, v1236, v1280, v1324, v1368, v1412, v1456, v1500, v1544, v1588, v1631), v389 = OUTLINED_FUNCTION_1_41(), v381 = insert_2pt_s(v389, v390, v391, v392, v393), v381))
    && ((v394 = OUTLINED_FUNCTION_4_39(v381, v382, v383, v384, v385, v386, v387, v388, v576, v620, v664, v708, v752, v796, v840, v884, v928, v972, v1016, v1060, v1104, v1148, v1192, v1236, v1280, v1324, v1368, v1412, v1456, v1500, v1544, v1588, v1631, v1674), v394) || (OUTLINED_FUNCTION_2_41(), v394 = test_string_s(), v394) || (v394 = OUTLINED_FUNCTION_0_43(v394, v395, v396, v397, v398, v399, v400, v401, v577, v621, v665, v709, v753, v797, v841, v885, v929, v973, v1017, v1061, v1105, v1149, v1193, v1237, v1281, v1325, v1369, v1413, v1457, v1501, v1545, v1589, v1632), v394) || (OUTLINED_FUNCTION_3_40(v394, v395, v396, v397, v398, v399, v400, v401, v577, v621, v665, v709, v753, v797, v841, v885, v929, v973, v1017, v1061, v1105, v1149, v1193, v1237, v1281, v1325, v1369, v1413, v1457, v1501, v1545, v1589, v1632), v402 = OUTLINED_FUNCTION_1_41(), v394 = insert_2pt_s(v402, v403, v404, v405, v406), v394))
    && ((v407 = OUTLINED_FUNCTION_4_39(v394, v395, v396, v397, v398, v399, v400, v401, v577, v621, v665, v709, v753, v797, v841, v885, v929, v973, v1017, v1061, v1105, v1149, v1193, v1237, v1281, v1325, v1369, v1413, v1457, v1501, v1545, v1589, v1632, v1675), v407) || (OUTLINED_FUNCTION_2_41(), v407 = test_string_s(), v407) || (v407 = OUTLINED_FUNCTION_0_43(v407, v408, v409, v410, v411, v412, v413, v414, v578, v622, v666, v710, v754, v798, v842, v886, v930, v974, v1018, v1062, v1106, v1150, v1194, v1238, v1282, v1326, v1370, v1414, v1458, v1502, v1546, v1590, v1633), v407) || (OUTLINED_FUNCTION_3_40(v407, v408, v409, v410, v411, v412, v413, v414, v578, v622, v666, v710, v754, v798, v842, v886, v930, v974, v1018, v1062, v1106, v1150, v1194, v1238, v1282, v1326, v1370, v1414, v1458, v1502, v1546, v1590, v1633), v415 = OUTLINED_FUNCTION_1_41(), v407 = insert_2pt_s(v415, v416, v417, v418, v419), v407))
    && ((v420 = OUTLINED_FUNCTION_4_39(v407, v408, v409, v410, v411, v412, v413, v414, v578, v622, v666, v710, v754, v798, v842, v886, v930, v974, v1018, v1062, v1106, v1150, v1194, v1238, v1282, v1326, v1370, v1414, v1458, v1502, v1546, v1590, v1633, v1676), v420) || (OUTLINED_FUNCTION_2_41(), v420 = test_string_s(), v420) || (v420 = OUTLINED_FUNCTION_0_43(v420, v421, v422, v423, v424, v425, v426, v427, v579, v623, v667, v711, v755, v799, v843, v887, v931, v975, v1019, v1063, v1107, v1151, v1195, v1239, v1283, v1327, v1371, v1415, v1459, v1503, v1547, v1591, v1634), v420) || (OUTLINED_FUNCTION_3_40(v420, v421, v422, v423, v424, v425, v426, v427, v579, v623, v667, v711, v755, v799, v843, v887, v931, v975, v1019, v1063, v1107, v1151, v1195, v1239, v1283, v1327, v1371, v1415, v1459, v1503, v1547, v1591, v1634), v428 = OUTLINED_FUNCTION_1_41(), v420 = insert_2pt_s(v428, v429, v430, v431, v432), v420))
    && ((v433 = OUTLINED_FUNCTION_4_39(v420, v421, v422, v423, v424, v425, v426, v427, v579, v623, v667, v711, v755, v799, v843, v887, v931, v975, v1019, v1063, v1107, v1151, v1195, v1239, v1283, v1327, v1371, v1415, v1459, v1503, v1547, v1591, v1634, v1677), v433) || (OUTLINED_FUNCTION_2_41(), v433 = test_string_s(), v433) || (v433 = OUTLINED_FUNCTION_0_43(v433, v434, v435, v436, v437, v438, v439, v440, v580, v624, v668, v712, v756, v800, v844, v888, v932, v976, v1020, v1064, v1108, v1152, v1196, v1240, v1284, v1328, v1372, v1416, v1460, v1504, v1548, v1592, v1635), v433) || (OUTLINED_FUNCTION_3_40(v433, v434, v435, v436, v437, v438, v439, v440, v580, v624, v668, v712, v756, v800, v844, v888, v932, v976, v1020, v1064, v1108, v1152, v1196, v1240, v1284, v1328, v1372, v1416, v1460, v1504, v1548, v1592, v1635), v441 = OUTLINED_FUNCTION_1_41(), v433 = insert_2pt_s(v441, v442, v443, v444, v445), v433))
    && ((v446 = OUTLINED_FUNCTION_4_39(v433, v434, v435, v436, v437, v438, v439, v440, v580, v624, v668, v712, v756, v800, v844, v888, v932, v976, v1020, v1064, v1108, v1152, v1196, v1240, v1284, v1328, v1372, v1416, v1460, v1504, v1548, v1592, v1635, v1678), v446) || (OUTLINED_FUNCTION_2_41(), v446 = test_string_s(), v446) || (v446 = OUTLINED_FUNCTION_0_43(v446, v447, v448, v449, v450, v451, v452, v453, v581, v625, v669, v713, v757, v801, v845, v889, v933, v977, v1021, v1065, v1109, v1153, v1197, v1241, v1285, v1329, v1373, v1417, v1461, v1505, v1549, v1593, v1636), v446) || (OUTLINED_FUNCTION_3_40(v446, v447, v448, v449, v450, v451, v452, v453, v581, v625, v669, v713, v757, v801, v845, v889, v933, v977, v1021, v1065, v1109, v1153, v1197, v1241, v1285, v1329, v1373, v1417, v1461, v1505, v1549, v1593, v1636), v454 = OUTLINED_FUNCTION_1_41(), v446 = insert_2pt_s(v454, v455, v456, v457, v458), v446))
    && ((v459 = OUTLINED_FUNCTION_4_39(v446, v447, v448, v449, v450, v451, v452, v453, v581, v625, v669, v713, v757, v801, v845, v889, v933, v977, v1021, v1065, v1109, v1153, v1197, v1241, v1285, v1329, v1373, v1417, v1461, v1505, v1549, v1593, v1636, v1679), v459) || (OUTLINED_FUNCTION_2_41(), v459 = test_string_s(), v459) || (v459 = OUTLINED_FUNCTION_0_43(v459, v460, v461, v462, v463, v464, v465, v466, v582, v626, v670, v714, v758, v802, v846, v890, v934, v978, v1022, v1066, v1110, v1154, v1198, v1242, v1286, v1330, v1374, v1418, v1462, v1506, v1550, v1594, v1637), v459) || (OUTLINED_FUNCTION_3_40(v459, v460, v461, v462, v463, v464, v465, v466, v582, v626, v670, v714, v758, v802, v846, v890, v934, v978, v1022, v1066, v1110, v1154, v1198, v1242, v1286, v1330, v1374, v1418, v1462, v1506, v1550, v1594, v1637), v467 = OUTLINED_FUNCTION_1_41(), v459 = insert_2pt_s(v467, v468, v469, v470, v471), v459))
    && ((v472 = OUTLINED_FUNCTION_4_39(v459, v460, v461, v462, v463, v464, v465, v466, v582, v626, v670, v714, v758, v802, v846, v890, v934, v978, v1022, v1066, v1110, v1154, v1198, v1242, v1286, v1330, v1374, v1418, v1462, v1506, v1550, v1594, v1637, v1680), v472) || (OUTLINED_FUNCTION_2_41(), v472 = test_string_s(), v472) || (v472 = OUTLINED_FUNCTION_0_43(v472, v473, v474, v475, v476, v477, v478, v479, v583, v627, v671, v715, v759, v803, v847, v891, v935, v979, v1023, v1067, v1111, v1155, v1199, v1243, v1287, v1331, v1375, v1419, v1463, v1507, v1551, v1595, v1638), v472) || (OUTLINED_FUNCTION_3_40(v472, v473, v474, v475, v476, v477, v478, v479, v583, v627, v671, v715, v759, v803, v847, v891, v935, v979, v1023, v1067, v1111, v1155, v1199, v1243, v1287, v1331, v1375, v1419, v1463, v1507, v1551, v1595, v1638), v480 = OUTLINED_FUNCTION_1_41(), v472 = insert_2pt_s(v480, v481, v482, v483, v484), v472))
    && ((v485 = OUTLINED_FUNCTION_4_39(v472, v473, v474, v475, v476, v477, v478, v479, v583, v627, v671, v715, v759, v803, v847, v891, v935, v979, v1023, v1067, v1111, v1155, v1199, v1243, v1287, v1331, v1375, v1419, v1463, v1507, v1551, v1595, v1638, v1681), v485) || (OUTLINED_FUNCTION_2_41(), v485 = test_string_s(), v485) || (v485 = OUTLINED_FUNCTION_0_43(v485, v486, v487, v488, v489, v490, v491, v492, v584, v628, v672, v716, v760, v804, v848, v892, v936, v980, v1024, v1068, v1112, v1156, v1200, v1244, v1288, v1332, v1376, v1420, v1464, v1508, v1552, v1596, v1639), v485) || (OUTLINED_FUNCTION_3_40(v485, v486, v487, v488, v489, v490, v491, v492, v584, v628, v672, v716, v760, v804, v848, v892, v936, v980, v1024, v1068, v1112, v1156, v1200, v1244, v1288, v1332, v1376, v1420, v1464, v1508, v1552, v1596, v1639), v493 = OUTLINED_FUNCTION_1_41(), v485 = insert_2pt_s(v493, v494, v495, v496, v497), v485))
    && ((v498 = OUTLINED_FUNCTION_4_39(v485, v486, v487, v488, v489, v490, v491, v492, v584, v628, v672, v716, v760, v804, v848, v892, v936, v980, v1024, v1068, v1112, v1156, v1200, v1244, v1288, v1332, v1376, v1420, v1464, v1508, v1552, v1596, v1639, v1682), v498) || (OUTLINED_FUNCTION_2_41(), v498 = test_string_s(), v498) || (v498 = OUTLINED_FUNCTION_0_43(v498, v499, v500, v501, v502, v503, v504, v505, v585, v629, v673, v717, v761, v805, v849, v893, v937, v981, v1025, v1069, v1113, v1157, v1201, v1245, v1289, v1333, v1377, v1421, v1465, v1509, v1553, v1597, v1640), v498) || (OUTLINED_FUNCTION_3_40(v498, v499, v500, v501, v502, v503, v504, v505, v585, v629, v673, v717, v761, v805, v849, v893, v937, v981, v1025, v1069, v1113, v1157, v1201, v1245, v1289, v1333, v1377, v1421, v1465, v1509, v1553, v1597, v1640), v506 = OUTLINED_FUNCTION_1_41(), v498 = insert_2pt_s(v506, v507, v508, v509, v510), v498))
    && ((v511 = OUTLINED_FUNCTION_4_39(v498, v499, v500, v501, v502, v503, v504, v505, v585, v629, v673, v717, v761, v805, v849, v893, v937, v981, v1025, v1069, v1113, v1157, v1201, v1245, v1289, v1333, v1377, v1421, v1465, v1509, v1553, v1597, v1640, v1683), v511) || (OUTLINED_FUNCTION_2_41(), v511 = test_string_s(), v511) || (v511 = OUTLINED_FUNCTION_0_43(v511, v512, v513, v514, v515, v516, v517, v518, v586, v630, v674, v718, v762, v806, v850, v894, v938, v982, v1026, v1070, v1114, v1158, v1202, v1246, v1290, v1334, v1378, v1422, v1466, v1510, v1554, v1598, v1641), v511) || (OUTLINED_FUNCTION_3_40(v511, v512, v513, v514, v515, v516, v517, v518, v586, v630, v674, v718, v762, v806, v850, v894, v938, v982, v1026, v1070, v1114, v1158, v1202, v1246, v1290, v1334, v1378, v1422, v1466, v1510, v1554, v1598, v1641), v519 = OUTLINED_FUNCTION_1_41(), v511 = insert_2pt_s(v519, v520, v521, v522, v523), v511))
    && (OUTLINED_FUNCTION_4_39(v511, v512, v513, v514, v515, v516, v517, v518, v586, v630, v674, v718, v762, v806, v850, v894, v938, v982, v1026, v1070, v1114, v1158, v1202, v1246, v1290, v1334, v1378, v1422, v1466, v1510, v1554, v1598, v1641, v1684) || (OUTLINED_FUNCTION_2_41(), v524 = test_string_s(), v524) || (v532 = OUTLINED_FUNCTION_0_43(v524, v525, v526, v527, v528, v529, v530, v531, v587, v631, v675, v719, v763, v807, v851, v895, v939, v983, v1027, v1071, v1115, v1159, v1203, v1247, v1291, v1335, v1379, v1423, v1467, v1511, v1555, v1599, v1642), v532) || (OUTLINED_FUNCTION_3_40(v532, v533, v534, v535, v536, v537, v538, v539, v588, v632, v676, v720, v764, v808, v852, v896, v940, v984, v1028, v1072, v1116, v1160, v1204, v1248, v1292, v1336, v1380, v1424, v1468, v1512, v1556, v1600, v1643), v540 = OUTLINED_FUNCTION_1_41(), insert_2pt_s(v540, v541, v542, v543, v544))))
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

uint64_t OUTLINED_FUNCTION_0_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v33 + 136) = v34;
  *(v33 + 112) = a33;
  *(v33 + 128) = 0;

  return test_ptr(v33, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return lpta_rpta_loadp(v33, va, &a32);
}

uint64_t OUTLINED_FUNCTION_4_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return lpta_loadp_setscan_r(v34, &a34, 1);
}

void OUTLINED_FUNCTION_6_38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 56) = v35;
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_7_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a9, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_8_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  get_parm(v34, &a34, v35, -6);
}

void OUTLINED_FUNCTION_9_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  bzero(va, 0xC0uLL);
}

void OUTLINED_FUNCTION_10_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  get_parm(v32, &a32, v33, -6);
}

void *fence_40(uint64_t a1, int a2, uint64_t a3)
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

void assign_stress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_27();
  OUTLINED_FUNCTION_1_42();
  v47 = *MEMORY[0x277D85DE8];
  v42[0] = 0;
  v42[1] = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  OUTLINED_FUNCTION_7_39();
  bzero(v36, v4);
  OUTLINED_FUNCTION_6_39();
  bzero(v46, v5);
  if (setjmp(v46))
  {
    goto LABEL_3;
  }

  v6 = ventproc(v3, v36, v45, v44, v43, v46);
  if (v6)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_10_38(v6, v42);
  v7 = OUTLINED_FUNCTION_8_38();
  get_parm(v7, v8, v9, -6);
  LOWORD(v39) = -4;
  push_ptr_init(v3, &v37);
  fence_40(v3, 0, &_MergedGlobals_1_4);
  HIWORD(v39) = 1;
  v38 = v41;
  if (*(v3 + 3842) == 1)
  {
    assign_user_stress(v3);
    goto LABEL_3;
  }

  while (2)
  {
    if (*(v3 + 3806) == 1)
    {
      v10 = OUTLINED_FUNCTION_9_38();
      starttest(v10, v11);
      v12 = OUTLINED_FUNCTION_5_40();
      if (lpta_loadp_setscan_r(v12, v13, 2))
      {
LABEL_17:
        v34 = OUTLINED_FUNCTION_5_40();
        lpta_rpta_loadp(v34, v35, &v40);
        v27 = OUTLINED_FUNCTION_14_34();
        v29 = &string_3;
      }

      else
      {
        if (npush_fld(v3, 2u, 5u) || (v14 = OUTLINED_FUNCTION_15_34(), npush_i(v14), if_testgt(v3, v15, v16, v17, v18, v19, v20, v21)) || advance_tok(v3, v22, v23, v24))
        {
LABEL_13:
          v30 = *(v3 + 104);
          if (v30)
          {
            v31 = OUTLINED_FUNCTION_11_36(v30);
          }

          else
          {
            v32 = OUTLINED_FUNCTION_15_34();
            v31 = vback(v32, v33);
          }

          switch(v31)
          {
            case 1:
              continue;
            case 4:
              goto LABEL_18;
            case 5:
              goto LABEL_17;
            case 7:
              goto LABEL_19;
            case 8:
              goto LABEL_20;
            case 9:
              goto LABEL_22;
            default:
              goto LABEL_3;
          }

          goto LABEL_3;
        }

        v25 = OUTLINED_FUNCTION_5_40();
        lpta_rpta_loadp(v25, v26, &v40);
        v27 = OUTLINED_FUNCTION_14_34();
        v29 = &unk_2806C4696;
      }

      if (!insert_2pt_i(v27, v28, 2, v29, 0))
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    break;
  }

LABEL_18:
  assign_suffix_stress(v3);
LABEL_19:
  assign_root_stress(v3, v42, &v37, &v39);
LABEL_20:
  if (HIWORD(v39) == 1)
  {
    assign_secondary_stress(v3, v42, &v37);
  }

LABEL_22:
  insert_zero_sylls(v3);
LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_21_28();
}

uint64_t assign_suffix_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_1_42();
  v52 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v38 = 0;
  OUTLINED_FUNCTION_7_39();
  bzero(v37, v4);
  OUTLINED_FUNCTION_6_39();
  bzero(v51, v5);
  v6 = setjmp(v51);
  if (!v6)
  {
    v14 = OUTLINED_FUNCTION_3_41(v6, v7, v8, v9, v10, v11, v12, v13, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9], v37[10], v37[11], v37[12], v37[13], v37[14], v37[15], v37[16], v37[17], v37[18], v37[19], v37[20], v37[21], v37[22], v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51[0]);
    if (!v14)
    {
      OUTLINED_FUNCTION_10_38(v14, &v39);
      v16 = OUTLINED_FUNCTION_8_38();
      get_parm(v16, v17, v18, -4);
      LODWORD(v38) = 65532;
      fence_40(v1, 0, &_MergedGlobals_1_4);
      if (*(v1 + 2286) != *(v1 + 3874))
      {
LABEL_21:
        *(v3 + 8) = v40;
        *(v2 + 2) = HIWORD(v38);
        vretproc(v1);
        return 0;
      }

      v19 = OUTLINED_FUNCTION_18_31();
      starttest(v19, v20);
      v21 = OUTLINED_FUNCTION_5_40();
      move_i(v21, v22, 1);
      v23 = OUTLINED_FUNCTION_13_36();
      if (insert_penult_stress(v23))
      {
LABEL_7:
        v24 = *(v1 + 104);
        if (v24)
        {
          v25 = OUTLINED_FUNCTION_11_36(v24);
        }

        else
        {
          v26 = OUTLINED_FUNCTION_15_34();
          v25 = vback(v26, v27);
        }

        switch(v25)
        {
          case 1:
            goto LABEL_21;
          case 2:
            break;
          case 3:
            goto LABEL_16;
          case 4:
            savescptr(v1, 4, &v39);
            goto LABEL_16;
          case 5:
            goto LABEL_12;
          case 6:
            goto LABEL_17;
          case 7:
            goto LABEL_19;
          default:
            goto LABEL_3;
        }
      }

      starttest(v1, 3);
      v28 = OUTLINED_FUNCTION_13_36();
      if (!lpta_loadp_setscan_l(v28, v29, 3))
      {
LABEL_12:
        while (!testFldeq(v1, 3u, 0, 3) && !advance_tok(v1, v30, v31, v32))
        {
          v33 = OUTLINED_FUNCTION_12_36();
          bspush_ca_scan(v33, v34);
        }

        goto LABEL_7;
      }

LABEL_16:
      if (*(v1 + 3806) >= 4)
      {
LABEL_17:
        if (*(v1 + 1018) != *(v1 + 5954))
        {
LABEL_19:
          v35 = 2;
          goto LABEL_20;
        }
      }

      v35 = 0;
LABEL_20:
      HIWORD(v38) = v35;
      goto LABEL_21;
    }
  }

LABEL_3:
  vretproc(v1);
  return 94;
}

void assign_root_stress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_22_27();
  OUTLINED_FUNCTION_20_28();
  v54 = *MEMORY[0x277D85DE8];
  v49[0] = 0;
  v49[1] = 0;
  v48[0] = 0;
  v48[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v46[1] = 0;
  OUTLINED_FUNCTION_7_39();
  bzero(v45, v6);
  OUTLINED_FUNCTION_6_39();
  bzero(v53, v7);
  if (!setjmp(v53) && !ventproc(v4, v45, v52, v51, v50, v53))
  {
    get_parm(v4, v49, v5, -6);
    OUTLINED_FUNCTION_10_38(v8, v48);
    v9 = OUTLINED_FUNCTION_8_38();
    get_parm(v9, v10, v11, -4);
    push_ptr_init(v4, v46);
    fence_40(v4, 0, &_MergedGlobals_1_4);
    if (HIWORD(v47))
    {
      while (2)
      {
        if (dict_assigned_stress(v4))
        {
LABEL_6:
          accented_vowel(v4, v49, v48, &v47);
          if (v12)
          {
LABEL_7:
            starttest(v4, 5);
            if (lpta_loadp_setscan_l(v4, v48, 4))
            {
LABEL_8:
              starttest(v4, 8);
              if (!lpta_loadp_setscan_l(v4, v48, 1))
              {
                v13 = OUTLINED_FUNCTION_9_38();
                bspush_ca_scan(v13, v14);
                v15 = OUTLINED_FUNCTION_12_36();
                bspush_ca_scan(v15, v16);
                OUTLINED_FUNCTION_0_44();
                if (!test_string_s())
                {
LABEL_10:
                  bspush_ca_scan(v4, 11);
                  OUTLINED_FUNCTION_0_44();
LABEL_31:
                  if (!test_string_s())
                  {
                    goto LABEL_35;
                  }
                }

                goto LABEL_21;
              }

LABEL_33:
              lpta_rpta_loadp(v4, v49, v48);
              v43 = OUTLINED_FUNCTION_4_40();
              if (!setd_lookup(v43, v44, 67))
              {
LABEL_35:
                insert_por_penult_stress(v4);
                break;
              }
            }

            else
            {
              bspush_ca_scan(v4, 6);
              if (test_string_s())
              {
                goto LABEL_21;
              }

LABEL_12:
              v17 = OUTLINED_FUNCTION_18_31();
              savescptr(v17, v18, v46);
              if (testFldeq(v4, 4u, 4, 6) || advance_tok(v4, v19, v20, v21) || testFldeq(v4, 4u, 1, 2) || advance_tok(v4, v22, v23, v24) || lpta_loadp_setscan_l(v4, v46, 1) || (v25 = OUTLINED_FUNCTION_4_40(), testFldeq(v25, v26, 4, 1)) || advance_tok(v4, v27, v28, v29) || (v30 = OUTLINED_FUNCTION_4_40(), testFldeq(v30, v31, 4, 1)) || advance_tok(v4, v32, v33, v34))
              {
LABEL_21:
                v35 = v4[13];
                if (v35)
                {
                  v36 = OUTLINED_FUNCTION_11_36(v35);
                }

                else
                {
                  v37 = OUTLINED_FUNCTION_15_34();
                  v36 = vback(v37, v38);
                }

                switch(v36)
                {
                  case 1:
                    continue;
                  case 3:
                    goto LABEL_6;
                  case 4:
                    goto LABEL_7;
                  case 5:
                    goto LABEL_8;
                  case 6:
                    goto LABEL_12;
                  case 8:
                    goto LABEL_33;
                  case 9:
                    OUTLINED_FUNCTION_0_44();
                    if (test_string_s())
                    {
                      goto LABEL_21;
                    }

                    v41 = v4;
                    v42 = 16;
                    goto LABEL_30;
                  case 10:
                    goto LABEL_10;
                  case 11:
                    v41 = OUTLINED_FUNCTION_5_40();
LABEL_30:
                    bspush_ca_scan(v41, v42);
                    OUTLINED_FUNCTION_0_44();
                    goto LABEL_31;
                  case 12:
                  case 15:
                    goto LABEL_35;
                  case 13:
                    v39 = OUTLINED_FUNCTION_19_30();
                    bspush_ca_scan(v39, v40);
                    OUTLINED_FUNCTION_0_44();
                    if (test_string_s())
                    {
                      goto LABEL_21;
                    }

                    goto LABEL_28;
                  case 14:
                  case 16:
LABEL_28:
                    OUTLINED_FUNCTION_0_44();
                    goto LABEL_31;
                  case 18:
                    break;
                  default:
                    goto LABEL_3;
                }
              }
            }

            insert_por_final_stress(v4);
          }
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_21_28();
}

void assign_secondary_stress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_27();
  OUTLINED_FUNCTION_1_42();
  v47 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  OUTLINED_FUNCTION_7_39();
  bzero(v29, v4);
  OUTLINED_FUNCTION_6_39();
  bzero(v46, v5);
  v6 = setjmp(v46);
  if (!v6)
  {
    v13 = OUTLINED_FUNCTION_17_32(v6, v29, v7, v8, v9, v10, v11, v12, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v29[22], v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46[0]);
    if (!v13)
    {
      OUTLINED_FUNCTION_10_38(v13, &v34);
      v14 = OUTLINED_FUNCTION_8_38();
      get_parm(v14, v15, v16, -6);
      push_ptr_init(v3, &v30);
      fence_40(v3, 0, &_MergedGlobals_1_4);
      if (*(v3 + 5974) >= 3)
      {
        do
        {
          v17 = OUTLINED_FUNCTION_5_40();
          starttest(v17, v18);
          v19 = OUTLINED_FUNCTION_12_36();
          if (!lpta_loadp_setscan_r(v19, v20, 7) && !advanc(v3))
          {
            goto LABEL_6;
          }

          do
          {
LABEL_7:
            v23 = OUTLINED_FUNCTION_12_36();
            lpta_rpta_loadp(v23, v24, &v30);
            v25 = OUTLINED_FUNCTION_14_34();
            if (!insert_2pt_i(v25, v26, 2, &string_20, 0))
            {
              goto LABEL_14;
            }

            v27 = *(v3 + 104);
            if (v27)
            {
              v28 = OUTLINED_FUNCTION_11_36(v27);
            }

            else
            {
              v28 = vback(v3, 0);
            }
          }

          while (v28 == 2);
        }

        while (v28 == 1);
        if (v28 == 3)
        {
LABEL_6:
          v21 = OUTLINED_FUNCTION_19_30();
          savescptr(v21, v22, &v30);
          goto LABEL_7;
        }
      }
    }
  }

LABEL_14:
  vretproc(v3);
  OUTLINED_FUNCTION_21_28();
}

uint64_t dict_assigned_stress(void *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  HIDWORD(v34) = 0;
  OUTLINED_FUNCTION_7_39();
  bzero(v33, v2);
  OUTLINED_FUNCTION_6_39();
  bzero(v49, v3);
  v4 = setjmp(v49);
  if (v4 || OUTLINED_FUNCTION_17_32(v4, v33, v5, v6, v7, v8, v9, v10, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v33[14], v33[15], v33[16], v33[17], v33[18], v33[19], v33[20], v33[21], v33[22], v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49[0]) || (v13 = OUTLINED_FUNCTION_8_38(), get_parm(v13, v14, v15, -6), v16 = OUTLINED_FUNCTION_13_36(), push_ptr_init(v16, v17), HIDWORD(v34) = 65532, fence_40(a1, 0, &_MergedGlobals_1_4), lpta_loadpn(a1, (a1 + 747)), rpta_loadpn(a1, (a1 + 418)), !compare_ptas(a1)) && !testeq(a1))
  {
LABEL_3:
    v11 = 94;
  }

  else
  {
    while (2)
    {
      if (!lpta_loadp_setscan_r(a1, (a1 + 747), 4) && !advance_tok(a1, v18, v19, v20))
      {
LABEL_9:
        v21 = OUTLINED_FUNCTION_9_38();
        savescptr(v21, v22, &v35);
      }

LABEL_10:
      starttest(a1, 4);
      v23 = OUTLINED_FUNCTION_12_36();
      move_i(v23, v24, 1);
      v25 = OUTLINED_FUNCTION_19_30();
      if (stress_vowel(v25, v26, v27, &v35, &v34 + 2))
      {
        v28 = a1[13];
        if (v28)
        {
          v29 = OUTLINED_FUNCTION_11_36(v28);
        }

        else
        {
          v30 = OUTLINED_FUNCTION_15_34();
          v29 = vback(v30, v31);
        }

        switch(v29)
        {
          case 1:
            continue;
          case 2:
            goto LABEL_10;
          case 3:
            goto LABEL_9;
          case 4:
            goto LABEL_15;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

LABEL_15:
    v11 = 0;
    a1[748] = a1[419];
  }

  vretproc(a1);
  return v11;
}

void accented_vowel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_22_27();
  OUTLINED_FUNCTION_20_28();
  v52 = *MEMORY[0x277D85DE8];
  v47[0] = 0;
  v47[1] = 0;
  v46[0] = 0;
  v46[1] = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  OUTLINED_FUNCTION_7_39();
  bzero(v43, v6);
  OUTLINED_FUNCTION_6_39();
  bzero(v51, v7);
  if (!setjmp(v51) && !ventproc(v4, v43, v50, v49, v48, v51))
  {
    get_parm(v4, v47, v5, -6);
    OUTLINED_FUNCTION_10_38(v8, v46);
    v9 = OUTLINED_FUNCTION_8_38();
    get_parm(v9, v10, v11, -4);
    v12 = OUTLINED_FUNCTION_13_36();
    push_ptr_init(v12, v13);
    push_ptr_init(v4, v44);
    fence_40(v4, 0, &_MergedGlobals_1_4);
    v14 = OUTLINED_FUNCTION_4_40();
    fence_40(v14, v15, v16);
    if (*(v4 + 2286) != *(v4 + 3886))
    {
      v17 = 0;
      while (2)
      {
        v18 = OUTLINED_FUNCTION_9_38();
        starttest(v18, v19);
        if (!lpta_loadp_setscan_l(v4, v46, 1))
        {
          v20 = v17;
LABEL_8:
          v17 = v20;
          v21 = OUTLINED_FUNCTION_19_30();
          bspush_ca_scan(v21, v22);
LABEL_9:
          savescptr(v4, 5, v44);
          v23 = OUTLINED_FUNCTION_4_40();
          if (!testFldeq(v23, v24, 4, 1))
          {
            bspush_ca_scan_boa();
            v25 = OUTLINED_FUNCTION_4_40();
            if (testFldeq(v25, v26, 5, 0))
            {
              v17 = v17;
            }

            else
            {
              v17 = 1;
            }
          }

LABEL_13:
          v27 = *(v4 + 104);
          if (v27)
          {
            v28 = OUTLINED_FUNCTION_11_36(v27);
          }

          else
          {
            v28 = vback(v4, v17);
            v17 = 0;
          }

          v20 = v17;
          switch(v28)
          {
            case 1:
              continue;
            case 3:
              goto LABEL_8;
            case 4:
              v31 = advance_tok(v4, v17, v29, v30);
              v20 = v17;
              if (!v31)
              {
                goto LABEL_8;
              }

              goto LABEL_13;
            case 5:
              goto LABEL_9;
            case 6:
              bspop_boa(v4);
              if (advance_tok(v4, v32, v33, v34))
              {
                goto LABEL_13;
              }

              goto LABEL_20;
            case 7:
LABEL_20:
              v35 = OUTLINED_FUNCTION_8_38();
              savescptr(v35, v36, v37);
              v38 = OUTLINED_FUNCTION_8_38();
              stress_vowel(v38, v39, v40, v41, v42);
              break;
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
  OUTLINED_FUNCTION_21_28();
}

uint64_t insert_por_final_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_1_42();
  v37 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  HIDWORD(v23) = 0;
  OUTLINED_FUNCTION_7_39();
  bzero(v22, v3);
  OUTLINED_FUNCTION_6_39();
  bzero(v36, v4);
  v5 = setjmp(v36);
  if (v5 || OUTLINED_FUNCTION_3_41(v5, v6, v7, v8, v9, v10, v11, v12, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17], v22[18], v22[19], v22[20], v22[21], v22[22], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]))
  {
    v13 = 94;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_2_42();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_9_38();
    get_parm(v18, v19, v2, -4);
    v13 = 0;
    fence_40(v1, 0, &_MergedGlobals_1_4);
    v20 = OUTLINED_FUNCTION_2_42();
    insert_final_stress(v20);
    *(v1 + 5974) = *(v1 + 3806) - 1;
  }

  vretproc(v1);
  return v13;
}

uint64_t insert_por_penult_stress(uint64_t a1)
{
  OUTLINED_FUNCTION_1_42();
  v37 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  HIDWORD(v23) = 0;
  OUTLINED_FUNCTION_7_39();
  bzero(v22, v3);
  OUTLINED_FUNCTION_6_39();
  bzero(v36, v4);
  v5 = setjmp(v36);
  if (v5 || OUTLINED_FUNCTION_3_41(v5, v6, v7, v8, v9, v10, v11, v12, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17], v22[18], v22[19], v22[20], v22[21], v22[22], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]))
  {
    v13 = 94;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_2_42();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_9_38();
    get_parm(v18, v19, v2, -4);
    v13 = 0;
    fence_40(v1, 0, &_MergedGlobals_1_4);
    v20 = OUTLINED_FUNCTION_2_42();
    insert_penult_stress(v20);
    *(v1 + 5974) = *(v1 + 3806) - 2;
  }

  vretproc(v1);
  return v13;
}

uint64_t stress_vowel(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4, __int16 *a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v51[0] = 0;
  v51[1] = 0;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v47[0] = 0;
  v47[1] = 0;
  v46[0] = 0;
  v46[1] = 0;
  OUTLINED_FUNCTION_7_39();
  bzero(v45, v9);
  OUTLINED_FUNCTION_6_39();
  bzero(v55, v10);
  if (setjmp(v55) || ventproc(a1, v45, v54, v53, v52, v55))
  {
LABEL_3:
    v11 = 94;
  }

  else
  {
    get_parm(a1, v51, a2, -6);
    v13 = OUTLINED_FUNCTION_12_36();
    get_parm(v13, v14, a3, -6);
    v15 = OUTLINED_FUNCTION_2_42();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_9_38();
    get_parm(v18, v19, a5, -4);
    v20 = OUTLINED_FUNCTION_16_33();
    push_ptr_init(v20, v21);
    push_ptr_init(a1, v48);
    push_ptr_init(a1, v47);
    push_ptr_init(a1, v46);
    fence_40(a1, 0, &_MergedGlobals_1_4);
    v22 = OUTLINED_FUNCTION_12_36();
    lpta_loadpn(v22, v23);
    OUTLINED_FUNCTION_14_34();
    lpta_ctxtl();
    v24 = OUTLINED_FUNCTION_16_33();
    lpta_storep(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_16_33();
    lpta_rpta_loadp(v27, v28, v50);
    OUTLINED_FUNCTION_14_34();
    rpta_ctxtr();
    OUTLINED_FUNCTION_14_34();
    insert_2ptv();
    if (!v29)
    {
      v30 = OUTLINED_FUNCTION_18_31();
      startloop(v30, v31);
      v32 = OUTLINED_FUNCTION_16_33();
      copyvar(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_9_38();
      copyvar(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_16_33();
      if (!forall_to_test(v38, v39, v46))
      {
LABEL_7:
        v40 = OUTLINED_FUNCTION_18_31();
        bspush_ca(v40);
        if (!lpta_loadp_setscan_r(a1, v48, 7) && !advanc(a1))
        {
LABEL_9:
          savescptr(a1, 4, v47);
LABEL_10:
          c_assvar(a1, (a1 + 5972));
          ++*(a1 + 5974);
LABEL_11:
          if (!forto_adv_r(a1, 1, 2, 5, 7, v48))
          {
            v11 = 0;
            goto LABEL_4;
          }
        }
      }
    }

    v41 = *(a1 + 104);
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_11_36(v41);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_15_34();
      v42 = vback(v43, v44);
    }

    v11 = 0;
    switch(v42)
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
        goto LABEL_7;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(a1);
  return v11;
}

uint64_t OUTLINED_FUNCTION_3_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, __int16 a39, __int16 a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{

  return ventproc(v46, &a10, &a44, &a40, &a37, &a46);
}

void OUTLINED_FUNCTION_10_38(uint64_t a1, uint64_t a2)
{

  get_parm(v2, a2, v3, -6);
}

uint64_t OUTLINED_FUNCTION_17_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, __int16 a41, __int16 a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{

  return ventproc(v48, a2, &a46, &a42, &a39, &a48);
}

void *fence_41(uint64_t a1, int a2, uint64_t a3)
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

uint64_t create_syllables(uint64_t a1, __int16 *a2, __int16 *a3, int a4, int a5, int a6, int a7, int a8)
{
  v59 = *MEMORY[0x277D85DE8];
  v54[0] = 0;
  v54[1] = 0;
  v53[2] = 0;
  v53[3] = 0;
  OUTLINED_FUNCTION_13_37(a1, a2, a3, a4, a5, a6, a7, a8, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v51[21], v51[22], v52[0], v52[1], v53[0], v53[1]);
  bzero(v58, 0xC0uLL);
  if (setjmp(v58) || ventproc(a1, v51, v57, v56, v55, v58))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  get_parm(a1, v54, a2, -6);
  v12 = OUTLINED_FUNCTION_7_40();
  get_parm(v12, v13, a3, -6);
  v14 = OUTLINED_FUNCTION_14_35();
  push_ptr_init(v14, v15);
  v16 = OUTLINED_FUNCTION_15_35();
  push_ptr_init(v16, v17);
  fence_41(a1, 0, &null_str_15);
  v18 = OUTLINED_FUNCTION_5_41();
  startloop(v18, v19);
  lpta_loadpn(a1, v54);
  OUTLINED_FUNCTION_9_39();
  lpta_mover();
  v20 = OUTLINED_FUNCTION_14_35();
  lpta_storep(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_7_40();
  lpta_loadpn(v23, v24);
  OUTLINED_FUNCTION_9_39();
  lpta_mover();
  v25 = OUTLINED_FUNCTION_15_35();
  lpta_storep(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_14_35();
  if (forall_to_test(v28, v29, v52))
  {
LABEL_12:
    v48 = *(a1 + 104);
    if (v48)
    {
      *(a1 + 104) = 0;
      v49 = v48;
    }

    else
    {
      v49 = vback(a1, 0);
    }

    switch(v49)
    {
      case 1:
        goto LABEL_16;
      case 2:
        goto LABEL_9;
      case 3:
        goto LABEL_11;
      case 4:
        goto LABEL_10;
      case 5:
        break;
      case 6:
        goto LABEL_18;
      default:
        goto LABEL_3;
    }
  }

  v30 = OUTLINED_FUNCTION_5_41();
  bspush_ca(v30);
  v31 = OUTLINED_FUNCTION_8_39();
  if (lpta_loadp_setscan_r(v31, v32, v33))
  {
    goto LABEL_12;
  }

  v34 = OUTLINED_FUNCTION_0_45();
  if (testFldeq(v34, v35, v36, 2) || advance_tok(a1, v37, v38, v39))
  {
    goto LABEL_12;
  }

LABEL_9:
  v40 = OUTLINED_FUNCTION_5_41();
  starttest(v40, v41);
  assign_syll_onset(a1, v53, v42, v43, v44, v45, v46, v47);
LABEL_10:
  c_assvar(a1, (a1 + 3804));
  ++*(a1 + 3806);
LABEL_11:
  if (forto_adv_upto_r(a1, 1, 2, 5, 4, v53))
  {
    goto LABEL_12;
  }

LABEL_16:
  v50 = *(a1 + 3806);
  *(a1 + 5950) = v50;
  if (*(a1 + 2286) == *(a1 + 3874))
  {
    *(a1 + 5950) = v50 - 2;
  }

LABEL_18:
  vretproc(a1);
  return 0;
}

uint64_t assign_syll_onset(uint64_t a1, __int16 *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v119 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_37(a1, a2, a3, a4, a5, a6, a7, a8, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114[0], v114[1]);
  bzero(v118, 0xC0uLL);
  if (setjmp(v118) || ventproc(a1, &v89, v117, v116, v115, v118))
  {
LABEL_3:
    vretproc(a1);
    return 94;
  }

  v11 = OUTLINED_FUNCTION_7_40();
  get_parm(v11, v12, a2, -6);
  push_ptr_init(a1, &v112);
  fence_41(a1, 0, &null_str_15);
  fence_41(a1, 1, &_MergedGlobals_37);
  starttest(a1, 1);
  v13 = OUTLINED_FUNCTION_7_40();
  v15 = lpta_loadp_setscan_l(v13, v14, 4);
  v16 = 0;
  v17 = 0;
  if (!v15)
  {
LABEL_17:
    v17 = v16;
    OUTLINED_FUNCTION_11_37(2, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
    OUTLINED_FUNCTION_5_41();
    bspush_ca_scan_boa();
    v47 = OUTLINED_FUNCTION_0_45();
    if (!testFldeq(v47, v48, v49, 1))
    {
      if (advance_tok(a1, v50, v51, v52))
      {
        v17 = v17;
      }

      else
      {
        v17 = 1;
      }
    }

    goto LABEL_39;
  }

LABEL_5:
  v18 = OUTLINED_FUNCTION_5_41();
  starttest(v18, v19);
  v20 = OUTLINED_FUNCTION_8_39();
  v23 = v17;
  if (!lpta_loadp_setscan_l(v20, v21, v22))
  {
LABEL_22:
    while (1)
    {
      v53 = OUTLINED_FUNCTION_0_45();
      if (testFldeq(v53, v54, v55, 1) || advance_tok(a1, v56, v57, v58))
      {
        break;
      }

      v59 = OUTLINED_FUNCTION_14_35();
      bspush_ca_scan(v59, v60);
    }

    goto LABEL_10;
  }

LABEL_6:
  v24 = OUTLINED_FUNCTION_5_41();
  starttest(v24, v25);
  v26 = OUTLINED_FUNCTION_8_39();
  if (!lpta_loadp_setscan_l(v26, v27, v28))
  {
LABEL_51:
    v87 = OUTLINED_FUNCTION_5_41();
    bspush_ca_scan(v87, v88);
LABEL_14:
    OUTLINED_FUNCTION_0_45();
    v40 = test_string_s();
    v41 = v17;
    if (!v40)
    {
LABEL_15:
      v17 = v41;
      v42 = OUTLINED_FUNCTION_5_41();
      bspush_ca_scan(v42, v43);
      v44 = OUTLINED_FUNCTION_9_39();
      v46 = 1;
LABEL_48:
      v85 = testFldeq(v44, v45, 4, v46);
      v79 = v17;
      if (!v85)
      {
LABEL_49:
        v17 = v79;
        v86 = advance_tok(a1, v41, v70, v79);
        v61 = v17;
        if (!v86)
        {
LABEL_26:
          v17 = v61;
          OUTLINED_FUNCTION_11_37(16, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
          OUTLINED_FUNCTION_5_41();
          bspush_ca_boa();
          v62 = OUTLINED_FUNCTION_8_39();
          if (!lpta_loadp_setscan_l(v62, v63, v64))
          {
            OUTLINED_FUNCTION_0_45();
            if (!test_string_s())
            {
              v65 = OUTLINED_FUNCTION_5_41();
              bspush_ca_scan(v65, v66);
LABEL_29:
              OUTLINED_FUNCTION_0_45();
              if (!test_string_s())
              {
LABEL_30:
                v17 = 1;
              }
            }
          }
        }
      }
    }

    goto LABEL_39;
  }

LABEL_7:
  v23 = v17;
  v29 = OUTLINED_FUNCTION_5_41();
  starttest(v29, v30);
  v31 = OUTLINED_FUNCTION_8_39();
  if (!lpta_loadp_setscan_l(v31, v32, v33))
  {
LABEL_31:
    OUTLINED_FUNCTION_11_37(21, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
    v67 = OUTLINED_FUNCTION_5_41();
    bspush_ca_scan(v67, v68);
LABEL_32:
    OUTLINED_FUNCTION_0_45();
    v69 = test_string_s();
    v70 = v17;
    if (!v69)
    {
LABEL_33:
      v17 = v70;
      v71 = OUTLINED_FUNCTION_0_45();
      if (!testFldeq(v71, v72, v73, 2) && !advance_tok(a1, v74, v75, v76))
      {
        goto LABEL_37;
      }
    }

    goto LABEL_39;
  }

LABEL_8:
  starttest(a1, 4);
  if (!lpta_loadp_setscan_l(a1, v114, 4))
  {
    v34 = OUTLINED_FUNCTION_0_45();
    if (testFldeq(v34, v35, v36, 1))
    {
LABEL_10:
      v17 = v23;
      goto LABEL_39;
    }

    v17 = v23;
    if (!advance_tok(a1, v37, v38, v39))
    {
LABEL_13:
      OUTLINED_FUNCTION_11_37(26, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
      goto LABEL_37;
    }

    do
    {
LABEL_39:
      v77 = *(a1 + 104);
      if (v77)
      {
        *(a1 + 104) = 0;
        v78 = v77;
      }

      else
      {
        v78 = vback(a1, v17);
        v17 = 0;
      }

      v41 = v17;
      v79 = v17;
      v70 = v17;
      switch(v78)
      {
        case 1:
          goto LABEL_5;
        case 2:
          v16 = v17;
          goto LABEL_17;
        case 3:
        case 17:
          bspop_boa(a1);
          goto LABEL_37;
        case 4:
          goto LABEL_37;
        case 5:
          goto LABEL_6;
        case 6:
          OUTLINED_FUNCTION_11_37(6, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
          break;
        case 7:
          v23 = v17;
          goto LABEL_22;
        case 8:
          break;
        case 9:
          goto LABEL_7;
        case 10:
        case 12:
          goto LABEL_51;
        case 11:
          goto LABEL_15;
        case 13:
          goto LABEL_14;
        case 14:
          v44 = OUTLINED_FUNCTION_9_39();
          v46 = 2;
          goto LABEL_48;
        case 15:
          goto LABEL_49;
        case 16:
          v61 = v17;
          goto LABEL_26;
        case 18:
          goto LABEL_29;
        case 19:
          goto LABEL_30;
        case 20:
          v23 = v17;
          goto LABEL_8;
        case 21:
          goto LABEL_31;
        case 22:
        case 24:
          v83 = OUTLINED_FUNCTION_5_41();
          bspush_ca_scan(v83, v84);
          goto LABEL_32;
        case 23:
          goto LABEL_33;
        case 25:
          goto LABEL_32;
        case 26:
          goto LABEL_13;
        default:
          goto LABEL_3;
      }

      v80 = OUTLINED_FUNCTION_5_41();
    }

    while (test_synch(v80, v81, 1, v82));
    goto LABEL_38;
  }

LABEL_37:
  *(a1 + 136) = 1;
  *(a1 + 112) = v113;
  *(a1 + 128) = 0;
  proj_def();
LABEL_38:
  vretproc(a1);
  return 0;
}

uint64_t estimate_por_nsylls(void *a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v195 = *MEMORY[0x277D85DE8];
  v190 = 0;
  v189[1] = 0;
  v189[0] = 0;
  v188[1] = 0;
  v188[0] = 0;
  v187[1] = 0;
  v186[1] = 0;
  v187[0] = 0;
  v185[1] = 0;
  v186[0] = 0;
  v184[1] = 0;
  v185[0] = 0;
  v184[0] = 0;
  bzero(v183, 0xB8uLL);
  bzero(v194, 0xC0uLL);
  if (setjmp(v194) || ventproc(a1, v183, v193, v192, v191, v194))
  {
LABEL_3:
    v8 = 94;
    goto LABEL_4;
  }

  v182 = a2;
  get_parm(a1, &v190, a2, -4);
  get_parm(a1, v189, a3, -6);
  get_parm(a1, v188, a4, -6);
  v10 = OUTLINED_FUNCTION_7_40();
  push_ptr_init(v10, v11);
  push_ptr_init(a1, v186);
  v12 = OUTLINED_FUNCTION_15_35();
  push_ptr_init(v12, v13);
  push_ptr_init(a1, v184);
  fence_41(a1, 0, &null_str_15);
  v14 = OUTLINED_FUNCTION_6_40();
  fence_41(v14, v15, v16);
  startloop(a1, 1);
  lpta_loadpn(a1, v189);
  OUTLINED_FUNCTION_6_40();
  lpta_mover();
  v17 = OUTLINED_FUNCTION_7_40();
  lpta_storep(v17, v18, v19);
  lpta_loadpn(a1, v188);
  OUTLINED_FUNCTION_6_40();
  lpta_mover();
  v20 = OUTLINED_FUNCTION_15_35();
  lpta_storep(v20, v21, v22);
  v23 = 0;
  while (1)
  {
LABEL_6:
    v24 = OUTLINED_FUNCTION_7_40();
    if (forall_to_test(v24, v25, v185))
    {
      goto LABEL_39;
    }

LABEL_7:
    v26 = OUTLINED_FUNCTION_12_37();
    bspush_ca(v26);
    v27 = OUTLINED_FUNCTION_2_43();
    if (lpta_loadp_setscan_r(v27, v28, v29) || advance_tok(a1, v30, v31, v32))
    {
      goto LABEL_39;
    }

LABEL_9:
    v33 = OUTLINED_FUNCTION_12_37();
    savescptr(v33, 4, v186);
LABEL_10:
    starttest(a1, 5);
    v34 = OUTLINED_FUNCTION_2_43();
    if (!lpta_loadp_setscan_r(v34, v35, v36))
    {
      break;
    }

    while (2)
    {
      starttest(a1, 18);
      v37 = OUTLINED_FUNCTION_2_43();
      if (lpta_loadp_setscan_r(v37, v38, v39))
      {
LABEL_12:
        v40 = OUTLINED_FUNCTION_2_43();
        if (!lpta_loadp_setscan_r(v40, v41, v42))
        {
          OUTLINED_FUNCTION_1_43();
          if (!test_string_s())
          {
            starttest(a1, 54);
            v43 = OUTLINED_FUNCTION_3_42();
            if (!lpta_loadp_setscan_l(v43, v44, v45))
            {
LABEL_78:
              v139 = OUTLINED_FUNCTION_12_37();
              savescptr(v139, 55, v184);
              OUTLINED_FUNCTION_1_43();
              if (test_string_s())
              {
                goto LABEL_39;
              }

LABEL_114:
              bspush_ca_scan_boa();
              goto LABEL_35;
            }

            goto LABEL_19;
          }
        }

        goto LABEL_103;
      }

      v55 = OUTLINED_FUNCTION_4_41();
      if (testFldeq(v55, v56, v57, 1) || advance_tok(a1, v58, v59, v60))
      {
        goto LABEL_39;
      }

      starttest(a1, 19);
      v61 = OUTLINED_FUNCTION_3_42();
      if (!lpta_loadp_setscan_r(v61, v62, v63))
      {
        v75 = OUTLINED_FUNCTION_4_41();
        if (testFldeq(v75, v76, v77, 1))
        {
          goto LABEL_39;
        }

        if (advance_tok(a1, v78, v79, v80))
        {
          goto LABEL_39;
        }

        v81 = OUTLINED_FUNCTION_4_41();
        if (testFldeq(v81, v82, v83, 1) || advance_tok(a1, v84, v85, v86))
        {
          goto LABEL_39;
        }

LABEL_95:
        v167 = OUTLINED_FUNCTION_12_37();
        savescptr(v167, 20, v186);
        goto LABEL_102;
      }

LABEL_24:
      starttest(a1, 21);
      v64 = OUTLINED_FUNCTION_3_42();
      if (lpta_loadp_setscan_r(v64, v65, v66))
      {
        goto LABEL_103;
      }

      v67 = OUTLINED_FUNCTION_4_41();
      if (testFldeq(v67, v68, v69, 1) || advance_tok(a1, v70, v71, v72))
      {
        goto LABEL_39;
      }

LABEL_82:
      v142 = OUTLINED_FUNCTION_12_37();
      savescptr(v142, 22, v186);
      starttest(a1, 23);
      v143 = OUTLINED_FUNCTION_3_42();
      if (!lpta_loadp_setscan_r(v143, v144, v145))
      {
        bspush_ca_scan(a1, 24);
        OUTLINED_FUNCTION_1_43();
        v177 = test_string_s();
        v96 = v23;
        if (!v177)
        {
LABEL_113:
          v23 = v96;
          goto LABEL_114;
        }

LABEL_39:
        v91 = v23;
LABEL_40:
        v94 = a1[13];
        if (v94)
        {
          a1[13] = 0;
          v95 = v94;
          v23 = v91;
        }

        else
        {
          v95 = vback(a1, v91);
          v23 = 0;
        }

        v74 = v23;
        v96 = v23;
        v97 = v23;
        v98 = v23;
        v99 = v23;
        v100 = v23;
        v101 = v23;
        v92 = v23;
        v93 = v23;
        switch(v95)
        {
          case 1:
            goto LABEL_118;
          case 2:
            goto LABEL_10;
          case 3:
          case 6:
          case 54:
            goto LABEL_19;
          case 4:
            goto LABEL_9;
          case 5:
            continue;
          case 7:
          case 9:
          case 10:
            v102 = OUTLINED_FUNCTION_5_41();
            bspush_ca_scan(v102, v103);
            goto LABEL_60;
          case 8:
            goto LABEL_29;
          case 11:
LABEL_60:
            OUTLINED_FUNCTION_10_39();
            v120 = test_string_s();
            v74 = v23;
            v91 = v23;
            if (!v120)
            {
              goto LABEL_29;
            }

            goto LABEL_40;
          case 12:
          case 57:
            bspop_boa(a1);
            goto LABEL_103;
          case 13:
            v116 = OUTLINED_FUNCTION_5_41();
            bspush_ca_scan(v116, v117);
            v110 = OUTLINED_FUNCTION_10_39();
            v113 = 24;
            goto LABEL_56;
          case 14:
            goto LABEL_36;
          case 15:
            v110 = OUTLINED_FUNCTION_10_39();
            v113 = 19;
LABEL_56:
            v118 = testFldeq(v110, v111, v112, v113);
            v93 = v23;
            v91 = v23;
            if (!v118)
            {
              goto LABEL_36;
            }

            goto LABEL_40;
          case 16:
          case 17:
          case 21:
          case 27:
          case 30:
          case 32:
          case 41:
          case 58:
            goto LABEL_104;
          case 18:
            goto LABEL_12;
          case 19:
            goto LABEL_24;
          case 20:
            goto LABEL_95;
          case 22:
            goto LABEL_82;
          case 23:
            goto LABEL_83;
          case 24:
            OUTLINED_FUNCTION_10_39();
            v121 = test_string_s();
            v96 = v23;
            v91 = v23;
            if (!v121)
            {
              goto LABEL_113;
            }

            goto LABEL_40;
          case 25:
            goto LABEL_113;
          case 26:
            bspop_boa(a1);
            goto LABEL_102;
          case 28:
            goto LABEL_84;
          case 29:
            OUTLINED_FUNCTION_10_39();
            v107 = test_string_s();
            goto LABEL_52;
          case 31:
            goto LABEL_86;
          case 33:
            goto LABEL_80;
          case 34:
            goto LABEL_87;
          case 35:
            OUTLINED_FUNCTION_10_39();
            v109 = test_string_s();
            v97 = v23;
            v91 = v23;
            if (!v109)
            {
              goto LABEL_92;
            }

            goto LABEL_40;
          case 36:
            goto LABEL_92;
          case 37:
            goto LABEL_93;
          case 38:
            bspush_nboa(a1);
            v123 = OUTLINED_FUNCTION_10_39();
            v125 = testFldeq(v123, v124, 4, 1);
            v91 = v23;
            if (v125)
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_5_41();
            bspush_ca_scan_boa();
            v126 = OUTLINED_FUNCTION_10_39();
            v129 = testFldeq(v126, v127, 5, v128);
            goto LABEL_71;
          case 39:
            goto LABEL_106;
          case 40:
            bspop_boa(a1);
            v107 = advance_tok(a1, v104, v105, v106);
LABEL_52:
            v92 = v23;
            v91 = v23;
            if (!v107)
            {
              goto LABEL_104;
            }

            goto LABEL_40;
          case 42:
            goto LABEL_96;
          case 43:
            v114 = OUTLINED_FUNCTION_5_41();
            bspush_ca_scan(v114, v115);
            goto LABEL_64;
          case 44:
            goto LABEL_97;
          case 45:
LABEL_64:
            OUTLINED_FUNCTION_10_39();
            v122 = test_string_s();
            v98 = v23;
            v91 = v23;
            if (!v122)
            {
              goto LABEL_97;
            }

            goto LABEL_40;
          case 46:
            v136 = OUTLINED_FUNCTION_5_41();
            bspush_ca_scan(v136, v137);
            goto LABEL_75;
          case 47:
            goto LABEL_99;
          case 48:
LABEL_75:
            OUTLINED_FUNCTION_10_39();
            v138 = test_string_s();
            v99 = v23;
            v91 = v23;
            if (!v138)
            {
              goto LABEL_99;
            }

            goto LABEL_40;
          case 49:
            OUTLINED_FUNCTION_10_39();
            v119 = test_string_s();
            v100 = v23;
            v91 = v23;
            if (!v119)
            {
              goto LABEL_100;
            }

            goto LABEL_40;
          case 50:
            goto LABEL_100;
          case 51:
            goto LABEL_102;
          case 52:
            OUTLINED_FUNCTION_10_39();
            v108 = test_string_s();
            v101 = v23;
            v91 = v23;
            if (!v108)
            {
              goto LABEL_90;
            }

            goto LABEL_40;
          case 53:
            goto LABEL_90;
          case 55:
            goto LABEL_78;
          case 56:
            bspop_boa(a1);
            v130 = lpta_loadp_setscan_r(a1, v184, 1);
            v91 = v23;
            if (v130)
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_5_41();
            bspush_ca_scan_boa();
            v131 = OUTLINED_FUNCTION_10_39();
            v133 = testFldeq(v131, v132, 4, 1);
            v91 = v23;
            if (v133)
            {
              goto LABEL_40;
            }

            v129 = advance_tok(a1, v23, v134, v135);
LABEL_71:
            if (v129)
            {
              v91 = v23;
            }

            else
            {
              v91 = 1;
            }

            goto LABEL_40;
          case 59:
            goto LABEL_6;
          case 60:
            goto LABEL_7;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

LABEL_83:
    starttest(a1, 28);
    v146 = OUTLINED_FUNCTION_2_43();
    if (!lpta_loadp_setscan_r(v146, v147, v148))
    {
      bspush_ca_scan(a1, 29);
      OUTLINED_FUNCTION_1_43();
      v158 = test_string_s();
LABEL_110:
      v92 = v23;
      if (v158)
      {
        goto LABEL_39;
      }

      goto LABEL_104;
    }

LABEL_84:
    v149 = OUTLINED_FUNCTION_3_42();
    if (lpta_loadp_setscan_l(v149, v150, v151) || (OUTLINED_FUNCTION_1_43(), test_string_s()))
    {
LABEL_86:
      starttest(a1, 34);
      v152 = OUTLINED_FUNCTION_2_43();
      if (lpta_loadp_setscan_r(v152, v153, v154))
      {
LABEL_87:
        starttest(a1, 51);
        v155 = OUTLINED_FUNCTION_2_43();
        if (lpta_loadp_setscan_r(v155, v156, v157))
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_6_40();
        if (test_string_s())
        {
          goto LABEL_102;
        }

        bspush_ca_scan(a1, 52);
        v101 = v23;
LABEL_90:
        v23 = v101;
        v158 = test_synch(a1, 53, 1, &unk_2806BC402);
        goto LABEL_110;
      }

      bspush_ca_scan(a1, 35);
      OUTLINED_FUNCTION_1_43();
      v159 = test_string_s();
      v97 = v23;
      if (v159)
      {
        goto LABEL_39;
      }

LABEL_92:
      v23 = v97;
      starttest(a1, 37);
      v160 = OUTLINED_FUNCTION_2_43();
      if (!lpta_loadp_setscan_l(v160, v161, v162))
      {
        bspush_boa(a1);
        do
        {
LABEL_106:
          bspush_ca_scan(a1, 38);
          v171 = OUTLINED_FUNCTION_4_41();
        }

        while (!testFldeq(v171, v172, v173, 2) && !advance_tok(a1, v174, v175, v176));
        goto LABEL_39;
      }

LABEL_93:
      starttest(a1, 41);
      v163 = OUTLINED_FUNCTION_3_42();
      v166 = lpta_loadp_setscan_l(v163, v164, v165);
      v92 = v23;
      if (!v166)
      {
LABEL_96:
        v168 = OUTLINED_FUNCTION_12_37();
        savescptr(v168, 42, v184);
        bspush_ca_scan(a1, 43);
        OUTLINED_FUNCTION_1_43();
        v169 = test_string_s();
        v98 = v23;
        if (v169)
        {
          goto LABEL_39;
        }

LABEL_97:
        v23 = v98;
        if (lpta_loadp_setscan_r(a1, v184, 1))
        {
          goto LABEL_39;
        }

        bspush_ca_scan(a1, 46);
        v99 = v23;
LABEL_99:
        v170 = v99;
        bspush_ca_scan(a1, 49);
        v100 = v170;
LABEL_100:
        v23 = v100;
        v140 = a1;
        v141 = 50;
LABEL_101:
        if (test_synch(v140, v141, 1, &unk_2806BC402))
        {
          goto LABEL_39;
        }

LABEL_102:
        ++HIWORD(v190);
LABEL_103:
        v92 = v23;
      }
    }

    else
    {
      starttest_l(a1, 32);
      v178 = OUTLINED_FUNCTION_3_42();
      if (lpta_loadp_setscan_r(v178, v179, v180))
      {
        goto LABEL_103;
      }

      OUTLINED_FUNCTION_1_43();
      v181 = test_string_s();
      v92 = v23;
      if (!v181)
      {
LABEL_80:
        v140 = OUTLINED_FUNCTION_12_37();
        v141 = 33;
        goto LABEL_101;
      }
    }

LABEL_104:
    v23 = v92;
    ++HIWORD(v190);
    forall_cont_from();
  }

  v46 = OUTLINED_FUNCTION_4_41();
  if (testFldeq(v46, v47, v48, 2) || advance_tok(a1, v49, v50, v51))
  {
    goto LABEL_39;
  }

  starttest(a1, 6);
  v52 = OUTLINED_FUNCTION_2_43();
  if (!lpta_loadp_setscan_r(v52, v53, v54))
  {
    bspush_ca_scan(a1, 7);
    OUTLINED_FUNCTION_1_43();
    v73 = test_string_s();
    v74 = v23;
    if (v73)
    {
      goto LABEL_39;
    }

LABEL_29:
    v23 = v74;
    bspush_ca_scan_boa();
    bspush_ca_scan(a1, 13);
LABEL_35:
    v87 = OUTLINED_FUNCTION_4_41();
    v90 = testFldeq(v87, v88, v89, 1);
    v93 = v23;
    if (!v90)
    {
LABEL_36:
      LODWORD(v23) = v93;
      if (advance_tok(a1, v91, v92, v74))
      {
        v23 = v23;
      }

      else
      {
        v23 = 1;
      }
    }

    goto LABEL_39;
  }

LABEL_19:
  if (forto_adv_upto_r(a1, 1, 2, 60, 1, v187))
  {
    goto LABEL_39;
  }

LABEL_118:
  v8 = 0;
  v182[1] = HIWORD(v190);
LABEL_4:
  vretproc(a1);
  return v8;
}

double OUTLINED_FUNCTION_11_37@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  *&result = savescptr(v25, a1, &a25).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_13_37(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  a34 = 0;
  a35 = 0;
  a32 = 0;
  a33 = 0;

  bzero(&a9, 0xB8uLL);
}

uint64_t por_symbolic_rules(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22[0] = 0;
  v22[1] = 0;
  bzero(v21, 0xB8uLL);
  bzero(v34, 0xC0uLL);
  if (setjmp(v34) || ventproc(a1, v21, v33, v32, v31, v34))
  {
    v5 = 94;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_46();
    get_parm(v7, v8, v9, -6);
    get_parm(a1, &v27, a3, -6);
    push_ptr_init(a1, &v25);
    push_ptr_init(a1, &v23);
    push_ptr_init(a1, v22);
    fence_42(a1);
    v26 = v30;
    v24 = v28;
    init_por_word_vars(a1);
    break_into_morphs(a1, &v29, &v25, &v23, &v27);
    generate_diaphones(a1, &v25, v22, &v23);
    v10 = OUTLINED_FUNCTION_0_46();
    create_syllables(v10, v11, v12, v13, v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_0_46();
    assign_stress(v18, v19, v20);
    adjust_phones(a1, &v29, v22, &v23, &v27);
    v5 = 0;
  }

  vretproc(a1);
  return v5;
}

uint64_t init_por_word_vars(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(v5, 0xB8uLL);
  bzero(v9, 0xC0uLL);
  if (setjmp(v9) || ventproc(a1, v5, v8, v7, v6, v9))
  {
    v2 = 94;
  }

  else
  {
    fence_42(a1);
    v2 = 0;
    v4 = *(a1 + 2290);
    *(a1 + 3886) = v4;
    *(a1 + 3890) = v4;
    *(a1 + 3806) = 0;
    *(a1 + 5950) = 0;
    *(a1 + 5974) = 0;
    *(a1 + 3874) = v4;
    *(a1 + 5946) = 0;
    *(a1 + 5954) = *(a1 + 2542);
    *(a1 + 5984) = *(a1 + 3352);
  }

  vretproc(a1);
  return v2;
}

void *delta_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v8 = malloc_type_malloc(0x1780uLL, 0x10F004043DB8C3EuLL);
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
    *(v8 + 45) = xmmword_26E77E720;
    *(v8 + 46) = xmmword_26E77E720;
    *(v8 + 47) = xmmword_26E77E720;
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
    *(v8 + 58) = xmmword_26E77E720;
    *(v8 + 59) = xmmword_26E77E720;
    *(v8 + 60) = xmmword_26E77E720;
    *(v8 + 61) = xmmword_26E77E720;
    *(v8 + 62) = xmmword_26E77E720;
    *(v8 + 63) = xmmword_26E77E720;
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
    *(v8 + 876) = -5;
    *(v8 + 220) = 0;
    *(v8 + 884) = -5;
    *(v8 + 222) = 0;
    *(v8 + 1928) = xmmword_26E77E720;
    *(v8 + 1944) = xmmword_26E77E720;
    *(v8 + 1960) = xmmword_26E77E720;
    *(v8 + 1976) = xmmword_26E77E720;
    *(v8 + 1992) = xmmword_26E77E720;
    *(v8 + 2008) = xmmword_26E77E720;
    *(v8 + 2024) = xmmword_26E77E720;
    *(v8 + 2040) = xmmword_26E77E720;
    *(v8 + 2056) = xmmword_26E77E720;
    *(v8 + 2072) = xmmword_26E77E720;
    *(v8 + 261) = 0xFFFC0000FFFCLL;
    *(v8 + 1048) = -5;
    *(v8 + 263) = 0;
    *(v8 + 1056) = -5;
    *(v8 + 265) = 0;
    *(v8 + 1064) = -5;
    *(v8 + 267) = 0;
    *(v8 + 1072) = -5;
    *(v8 + 269) = 0;
    *(v8 + 1080) = -5;
    *(v8 + 271) = 0;
    *(v8 + 1088) = -5;
    *(v8 + 273) = 0;
    *(v8 + 1096) = -5;
    *(v8 + 275) = 0;
    *(v8 + 1104) = -5;
    *(v8 + 277) = 0;
    *(v8 + 1112) = -5;
    *(v8 + 279) = 0;
    *(v8 + 1120) = -5;
    *(v8 + 281) = 0;
    *(v8 + 1128) = -5;
    *(v8 + 283) = 0;
    *(v8 + 142) = xmmword_26E77E720;
    *(v8 + 572) = 65532;
    *(v8 + 1148) = -6;
    *(v8 + 288) = 0;
    *(v8 + 1156) = -6;
    *(v8 + 290) = 0;
    *(v8 + 1164) = -6;
    *(v8 + 292) = 0;
    *(v8 + 293) = 0xFFFC0000FFFCLL;
    *(v8 + 588) = 65532;
    *(v8 + 149) = xmmword_26E77E720;
    *(v8 + 150) = xmmword_26E77E720;
    *(v8 + 151) = xmmword_26E77E720;
    *(v8 + 152) = xmmword_26E77E720;
    *(v8 + 1224) = -6;
    *(v8 + 307) = 0;
    *(v8 + 1232) = -6;
    *(v8 + 309) = 0;
    *(v8 + 1240) = -6;
    *(v8 + 311) = 0;
    *(v8 + 1248) = -6;
    *(v8 + 313) = 0;
    *(v8 + 628) = 65532;
    *(v8 + 1260) = -6;
    *(v8 + 316) = 0;
    *(v8 + 2536) = xmmword_26E77E720;
    *(v8 + 2552) = xmmword_26E77E720;
    *(v8 + 2568) = xmmword_26E77E720;
    *(v8 + 2584) = xmmword_26E77E720;
    *(v8 + 2600) = xmmword_26E77E720;
    *(v8 + 2616) = xmmword_26E77E720;
    *(v8 + 2632) = xmmword_26E77E720;
    *(v8 + 2648) = xmmword_26E77E720;
    *(v8 + 2664) = xmmword_26E77E720;
    *(v8 + 2680) = xmmword_26E77E720;
    *(v8 + 2696) = xmmword_26E77E720;
    *(v8 + 2712) = xmmword_26E77E720;
    *(v8 + 2728) = xmmword_26E77E720;
    *(v8 + 2744) = xmmword_26E77E720;
    *(v8 + 2760) = xmmword_26E77E720;
    *(v8 + 2776) = xmmword_26E77E720;
    *(v8 + 2792) = xmmword_26E77E720;
    *(v8 + 2808) = xmmword_26E77E720;
    *(v8 + 2824) = xmmword_26E77E720;
    *(v8 + 2840) = xmmword_26E77E720;
    *(v8 + 2856) = xmmword_26E77E720;
    *(v8 + 2872) = xmmword_26E77E720;
    *(v8 + 2888) = xmmword_26E77E720;
    *(v8 + 2904) = xmmword_26E77E720;
    *(v8 + 2920) = xmmword_26E77E720;
    *(v8 + 2936) = xmmword_26E77E720;
    *(v8 + 2952) = xmmword_26E77E720;
    *(v8 + 2968) = xmmword_26E77E720;
    *(v8 + 2984) = xmmword_26E77E720;
    *(v8 + 3000) = xmmword_26E77E720;
    *(v8 + 3016) = xmmword_26E77E720;
    *(v8 + 3032) = xmmword_26E77E720;
    *(v8 + 3048) = xmmword_26E77E720;
    *(v8 + 3064) = xmmword_26E77E720;
    *(v8 + 770) = 65532;
    *(v8 + 199) = xmmword_26E77E720;
    *(v8 + 200) = xmmword_26E77E720;
    *(v8 + 201) = xmmword_26E77E720;
    *(v8 + 202) = xmmword_26E77E720;
    *(v8 + 203) = xmmword_26E77E720;
    *(v8 + 204) = xmmword_26E77E720;
    *(v8 + 205) = xmmword_26E77E720;
    *(v8 + 206) = xmmword_26E77E720;
    *(v8 + 207) = xmmword_26E77E720;
    *(v8 + 208) = xmmword_26E77E720;
    *(v8 + 1672) = -6;
    *(v8 + 419) = 0;
    *(v8 + 420) = 0xFFFC0000FFFCLL;
    *(v8 + 842) = 65532;
    *(v8 + 1688) = -5;
    *(v8 + 423) = 0;
    *(v8 + 1696) = -5;
    *(v8 + 425) = 0;
    *(v8 + 213) = xmmword_26E77E720;
    *(v8 + 214) = xmmword_26E77E720;
    *(v8 + 215) = xmmword_26E77E720;
    *(v8 + 216) = xmmword_26E77E720;
    *(v8 + 217) = xmmword_26E77E720;
    *(v8 + 218) = xmmword_26E77E720;
    *(v8 + 219) = xmmword_26E77E720;
    *(v8 + 220) = xmmword_26E77E720;
    *(v8 + 221) = xmmword_26E77E720;
    *(v8 + 222) = xmmword_26E77E720;
    *(v8 + 446) = 0xFFFC0000FFFCLL;
    *(v8 + 894) = 65532;
    *(v8 + 1792) = -3;
    *(v8 + 449) = 0;
    *(v8 + 1864) = -5;
    *(v8 + 467) = 0;
    *(v8 + 936) = 65532;
    *(v8 + 944) = 65532;
    *(v8 + 1892) = -3;
    *(v8 + 474) = 0;
    *(v8 + 475) = 0xFFFC0000FFFCLL;
    *(v8 + 952) = 65532;
    *(v8 + 1908) = -6;
    *(v8 + 478) = 0;
    *(v8 + 3832) = xmmword_26E77E720;
    *(v8 + 962) = 65532;
    *(v8 + 1928) = -3;
    *(v8 + 483) = 0;
    *(v8 + 242) = xmmword_26E77E720;
    *(v8 + 243) = xmmword_26E77E720;
    *(v8 + 488) = 0xFFFC0000FFFCLL;
    *(v8 + 1956) = -6;
    *(v8 + 490) = 0;
    *(v8 + 1964) = -6;
    *(v8 + 492) = 0;
    *(v8 + 1972) = -6;
    *(v8 + 494) = 0;
    *(v8 + 1980) = -6;
    *(v8 + 496) = 0;
    *(v8 + 1988) = -6;
    *(v8 + 498) = 0;
    *(v8 + 1996) = -6;
    *(v8 + 500) = 0;
    *(v8 + 501) = 0xFFFC0000FFFCLL;
    *(v8 + 2008) = -5;
    *(v8 + 503) = 0;
    *(v8 + 252) = xmmword_26E77E720;
    *(v8 + 506) = 0xFFFC0000FFFCLL;
    *(v8 + 2028) = -5;
    *(v8 + 508) = 0;
    *(v8 + 2036) = -5;
    *(v8 + 510) = 0;
    *(v8 + 2044) = -5;
    *(v8 + 512) = 0;
    *(v8 + 2052) = -5;
    *(v8 + 514) = 0;
    *(v8 + 2060) = -5;
    *(v8 + 516) = 0;
    *(v8 + 2068) = -5;
    *(v8 + 518) = 0;
    *(v8 + 2076) = -5;
    *(v8 + 520) = 0;
    *(v8 + 2084) = -5;
    *(v8 + 522) = 0;
    *(v8 + 2092) = -5;
    *(v8 + 524) = 0;
    *(v8 + 2100) = -5;
    *(v8 + 526) = 0;
    *(v8 + 4216) = xmmword_26E77E720;
    *(v8 + 4232) = xmmword_26E77E720;
    *(v8 + 531) = 0xFFFC0000FFFCLL;
    *(v8 + 1064) = 65532;
    *(v8 + 2132) = -5;
    *(v8 + 534) = 0;
    *(v8 + 4280) = xmmword_26E77E720;
    *(v8 + 4296) = xmmword_26E77E720;
    *(v8 + 4312) = xmmword_26E77E720;
    *(v8 + 4328) = xmmword_26E77E720;
    *(v8 + 4344) = xmmword_26E77E720;
    *(v8 + 4360) = xmmword_26E77E720;
    *(v8 + 4376) = xmmword_26E77E720;
    *(v8 + 4392) = xmmword_26E77E720;
    *(v8 + 4408) = xmmword_26E77E720;
    *(v8 + 4424) = xmmword_26E77E720;
    *(v8 + 4440) = xmmword_26E77E720;
    *(v8 + 4456) = xmmword_26E77E720;
    *(v8 + 4472) = xmmword_26E77E720;
    *(v8 + 4488) = xmmword_26E77E720;
    *(v8 + 4504) = xmmword_26E77E720;
    *(v8 + 4520) = xmmword_26E77E720;
    *(v8 + 4536) = xmmword_26E77E720;
    *(v8 + 4552) = xmmword_26E77E720;
    *(v8 + 4568) = xmmword_26E77E720;
    *(v8 + 4584) = xmmword_26E77E720;
    *(v8 + 4600) = xmmword_26E77E720;
    *(v8 + 2308) = -6;
    *(v8 + 578) = 0;
    *(v8 + 2316) = -5;
    *(v8 + 580) = 0;
    *(v8 + 2324) = -5;
    *(v8 + 582) = 0;
    *(v8 + 2332) = -6;
    *(v8 + 584) = 0;
    *(v8 + 4680) = xmmword_26E77E720;
    *(v8 + 4696) = xmmword_26E77E720;
    *(v8 + 1178) = 65532;
    *(v8 + 614) = 0xFFFC0000FFFCLL;
    *(v8 + 2460) = -6;
    *(v8 + 616) = 0;
    *(v8 + 2468) = -5;
    *(v8 + 618) = 0;
    *(v8 + 2476) = -5;
    *(v8 + 620) = 0;
    *(v8 + 621) = 0xFFFC0000FFFCLL;
    *(v8 + 2488) = -6;
    *(v8 + 623) = 0;
    *(v8 + 2496) = -6;
    *(v8 + 625) = 0;
    *(v8 + 2504) = -6;
    *(v8 + 627) = 0;
    *(v8 + 2512) = -6;
    *(v8 + 629) = 0;
    *(v8 + 1260) = 65532;
    *(v8 + 2524) = -5;
    *(v8 + 632) = 0;
    *(v8 + 1266) = 65532;
    *(v8 + 2536) = -6;
    *(v8 + 635) = 0;
    *(v8 + 318) = xmmword_26E77E720;
    *(v8 + 319) = xmmword_26E77E720;
    *(v8 + 320) = xmmword_26E77E720;
    *(v8 + 642) = 0xFFFC0000FFFCLL;
    *(v8 + 1286) = 65532;
    *(v8 + 2576) = -5;
    *(v8 + 645) = 0;
    *(v8 + 2584) = -5;
    *(v8 + 647) = 0;
    *(v8 + 2592) = -5;
    *(v8 + 649) = 0;
    *(v8 + 2600) = -6;
    *(v8 + 651) = 0;
    *(v8 + 652) = 0xFFFC0000FFFCLL;
    *(v8 + 1330) = 65532;
    *(v8 + 2664) = -5;
    *(v8 + 667) = 0;
    *(v8 + 2672) = -5;
    *(v8 + 669) = 0;
    *(v8 + 2680) = -5;
    *(v8 + 671) = 0;
    *(v8 + 336) = xmmword_26E77E720;
    *(v8 + 674) = 0xFFFC0000FFFCLL;
    *(v8 + 2700) = -5;
    *(v8 + 676) = 0;
    *(v8 + 5416) = xmmword_26E77E720;
    *(v8 + 5432) = xmmword_26E77E720;
    *(v8 + 5448) = xmmword_26E77E720;
    *(v8 + 5464) = xmmword_26E77E720;
    *(v8 + 5480) = xmmword_26E77E720;
    *(v8 + 5496) = xmmword_26E77E720;
    *(v8 + 5512) = xmmword_26E77E720;
    *(v8 + 5528) = xmmword_26E77E720;
    *(v8 + 5544) = xmmword_26E77E720;
    *(v8 + 5560) = xmmword_26E77E720;
    *(v8 + 5576) = xmmword_26E77E720;
    *(v8 + 5592) = xmmword_26E77E720;
    *(v8 + 5608) = xmmword_26E77E720;
    *(v8 + 5624) = xmmword_26E77E720;
    *(v8 + 5640) = xmmword_26E77E720;
    *(v8 + 5656) = xmmword_26E77E720;
    *(v8 + 5672) = xmmword_26E77E720;
    *(v8 + 5688) = xmmword_26E77E720;
    *(v8 + 5704) = xmmword_26E77E720;
    *(v8 + 5720) = xmmword_26E77E720;
    *(v8 + 1434) = 65532;
    *(v8 + 2872) = -5;
    *(v8 + 719) = 0;
    *(v8 + 2880) = -5;
    *(v8 + 721) = 0;
    *(v8 + 2888) = -5;
    *(v8 + 723) = 0;
    *(v8 + 2896) = -5;
    *(v8 + 725) = 0;
    *(v8 + 2904) = -5;
    *(v8 + 727) = 0;
    *(v8 + 2912) = -5;
    *(v8 + 729) = 0;
    *(v8 + 2920) = -5;
    *(v8 + 731) = 0;
    *(v8 + 2928) = -5;
    *(v8 + 733) = 0;
    *(v8 + 2936) = -5;
    *(v8 + 735) = 0;
    *(v8 + 2944) = -5;
    *(v8 + 737) = 0;
    *(v8 + 2952) = -5;
    *(v8 + 739) = 0;
    *(v8 + 370) = xmmword_26E77E720;
    *(v8 + 371) = xmmword_26E77E720;
    *(v8 + 372) = xmmword_26E77E720;
    *(v8 + 746) = 0xFFFC0000FFFCLL;
    *(v8 + 2988) = -6;
    *(v8 + 748) = 0;
    *(v8 + 2996) = -6;
    *(v8 + 750) = 0;
    *(v8 + 1502) = 65532;
    *(v8 + 4) = 196;
    *v8 = xmmword_26E77E730;
    *(v8 + 11) = v8 + 344;
    *(v8 + 12) = v8 + 360;
    v10 = malloc_type_malloc(0x620uLL, 0x2004093837F09uLL);
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
          *(v9[3] + 568) = v9 + 288,
          *(v9[3] + 576) = v9 + 290,
          *(v9[3] + 584) = v9 + 292,
          *(v9[3] + 592) = v9 + 307,
          *(v9[3] + 600) = v9 + 309,
          *(v9[3] + 608) = v9 + 311,
          *(v9[3] + 616) = v9 + 313,
          *(v9[3] + 624) = v9 + 316,
          *(v9[3] + 632) = v9 + 419,
          *(v9[3] + 640) = v9 + 478,
          *(v9[3] + 648) = v9 + 490,
          *(v9[3] + 656) = v9 + 492,
          *(v9[3] + 664) = v9 + 494,
          *(v9[3] + 672) = v9 + 496,
          *(v9[3] + 680) = v9 + 498,
          *(v9[3] + 688) = v9 + 500,
          *(v9[3] + 696) = v9 + 578,
          *(v9[3] + 704) = v9 + 584,
          *(v9[3] + 712) = v9 + 616,
          *(v9[3] + 720) = v9 + 623,
          *(v9[3] + 728) = v9 + 625,
          *(v9[3] + 736) = v9 + 627,
          *(v9[3] + 744) = v9 + 629,
          *(v9[3] + 752) = v9 + 635,
          *(v9[3] + 760) = v9 + 651,
          *(v9[3] + 768) = v9 + 748,
          *(v9[3] + 776) = v9 + 750,
          *(v9[3] + 784) = v9 + 42,
          *(v9[3] + 792) = v9 + 44,
          *(v9[3] + 800) = v9 + 46,
          *(v9[3] + 808) = v9 + 48,
          *(v9[3] + 816) = v9 + 50,
          *(v9[3] + 824) = v9 + 52,
          *(v9[3] + 832) = v9 + 54,
          *(v9[3] + 840) = v9 + 56,
          *(v9[3] + 848) = v9 + 58,
          *(v9[3] + 856) = v9 + 60,
          *(v9[3] + 864) = v9 + 62,
          *(v9[3] + 872) = v9 + 64,
          *(v9[3] + 880) = v9 + 66,
          *(v9[3] + 888) = v9 + 68,
          *(v9[3] + 896) = v9 + 70,
          *(v9[3] + 904) = v9 + 72,
          *(v9[3] + 912) = v9 + 74,
          *(v9[3] + 920) = v9 + 76,
          *(v9[3] + 928) = v9 + 78,
          *(v9[3] + 936) = v9 + 81,
          *(v9[3] + 944) = v9 + 83,
          *(v9[3] + 952) = v9 + 85,
          *(v9[3] + 960) = v9 + 87,
          *(v9[3] + 968) = v9 + 89,
          *(v9[3] + 976) = v9 + 97,
          *(v9[3] + 984) = v9 + 99,
          *(v9[3] + 992) = v9 + 101,
          *(v9[3] + 1000) = v9 + 103,
          *(v9[3] + 1008) = v9 + 105,
          *(v9[3] + 1016) = v9 + 107,
          *(v9[3] + 1024) = v9 + 109,
          *(v9[3] + 1032) = v9 + 111,
          *(v9[3] + 1040) = v9 + 113,
          *(v9[3] + 1048) = v9 + 115,
          *(v9[3] + 1056) = v9 + 143,
          *(v9[3] + 1064) = v9 + 145,
          *(v9[3] + 1072) = v9 + 147,
          *(v9[3] + 1080) = v9 + 150,
          *(v9[3] + 1088) = v9 + 154,
          *(v9[3] + 1096) = v9 + 156,
          *(v9[3] + 1104) = v9 + 158,
          *(v9[3] + 1112) = v9 + 160,
          *(v9[3] + 1120) = v9 + 162,
          *(v9[3] + 1128) = v9 + 164,
          *(v9[3] + 1136) = v9 + 166,
          *(v9[3] + 1144) = v9 + 168,
          *(v9[3] + 1152) = v9 + 170,
          *(v9[3] + 1160) = v9 + 172,
          *(v9[3] + 1168) = v9 + 174,
          *(v9[3] + 1176) = v9 + 176,
          *(v9[3] + 1184) = v9 + 178,
          *(v9[3] + 1192) = v9 + 180,
          *(v9[3] + 1200) = v9 + 182,
          *(v9[3] + 1208) = v9 + 184,
          *(v9[3] + 1216) = v9 + 186,
          *(v9[3] + 1224) = v9 + 188,
          *(v9[3] + 1232) = v9 + 190,
          *(v9[3] + 1240) = v9 + 192,
          *(v9[3] + 1248) = v9 + 194,
          *(v9[3] + 1256) = v9 + 196,
          *(v9[3] + 1264) = v9 + 198,
          *(v9[3] + 1272) = v9 + 200,
          *(v9[3] + 1280) = v9 + 202,
          *(v9[3] + 1288) = v9 + 204,
          *(v9[3] + 1296) = v9 + 206,
          *(v9[3] + 1304) = v9 + 208,
          *(v9[3] + 1312) = v9 + 210,
          *(v9[3] + 1320) = v9 + 212,
          *(v9[3] + 1328) = v9 + 214,
          *(v9[3] + 1336) = v9 + 216,
          *(v9[3] + 1344) = v9 + 218,
          *(v9[3] + 1352) = v9 + 288,
          *(v9[3] + 1360) = v9 + 290,
          *(v9[3] + 1368) = v9 + 292,
          *(v9[3] + 1376) = v9 + 307,
          *(v9[3] + 1384) = v9 + 309,
          *(v9[3] + 1392) = v9 + 311,
          *(v9[3] + 1400) = v9 + 313,
          *(v9[3] + 1408) = v9 + 316,
          *(v9[3] + 1416) = v9 + 419,
          *(v9[3] + 1424) = v9 + 478,
          *(v9[3] + 1432) = v9 + 490,
          *(v9[3] + 1440) = v9 + 492,
          *(v9[3] + 1448) = v9 + 494,
          *(v9[3] + 1456) = v9 + 496,
          *(v9[3] + 1464) = v9 + 498,
          *(v9[3] + 1472) = v9 + 500,
          *(v9[3] + 1480) = v9 + 578,
          *(v9[3] + 1488) = v9 + 584,
          *(v9[3] + 1496) = v9 + 616,
          *(v9[3] + 1504) = v9 + 623,
          *(v9[3] + 1512) = v9 + 625,
          *(v9[3] + 1520) = v9 + 627,
          *(v9[3] + 1528) = v9 + 629,
          *(v9[3] + 1536) = v9 + 635,
          *(v9[3] + 1544) = v9 + 651,
          *(v9[3] + 1552) = v9 + 748,
          *(v9[3] + 1560) = v9 + 750,
          v11 = malloc_type_malloc(0x280uLL, 0x1020040EDED9539uLL),
          (v9[4] = v11) != 0)
      && (*v11 = v9 + 223, v11[1] = 0x600000001, v11[2] = v9 + 226, v11[3] = 0x600000001, v11[4] = v9 + 229, v11[5] = 0x600000001, v11[6] = v9 + 232, v11[7] = 0x200000007, v11[8] = v9 + 235, v11[9] = 0x200000008, v11[10] = v9 + 238, v11[11] = 0x200000000, v11[12] = v9 + 295, v11[13] = 0x600000001, v11[14] = v9 + 386, v11[15] = 0xA00000005, v11[16] = v9 + 390, v11[17] = 0xA00000005, v11[18] = v9 + 394, v11[19] = 0xA00000005, v11[20] = v9 + 450, v11[21] = 0x1000000002, v11[22] = v9 + 454, v11[23] = 0x3000000006, v11[24] = v9 + 462, v11[25] = 0x1000000002, v11[26] = v9 + 469, v11[27] = 0x600000001, v11[28] = v9 + 590, v11[29] = 0x3000000006, v11[30] = v9 + 598, v11[31] = 0x3000000006, v11[32] = v9 + 606, v11[33] = 0x3000000006, v11[34] = v9 + 653, v11[35] = 0xA00000005, v11[36] = v9 + 657, v11[37] = 0x1000000002, v11[38] = v9 + 661, v11[39] = 0x1000000002, v11[40] = v9 + 223, v11[41] = 0x600000001, v11[42] = v9 + 226, v11[43] = 0x600000001, v11[44] = v9 + 229, v11[45] = 0x600000001, v11[46] = v9 + 232, v11[47] = 0x200000007, v11[48] = v9 + 235, v11[49] = 0x200000008, v11[50] = v9 + 238, v11[51] = 0x200000000, v11[52] = v9 + 295, v11[53] = 0x600000001, v11[54] = v9 + 386, v11[55] = 0xA00000005, v11[56] = v9 + 390, v11[57] = 0xA00000005, v11[58] = v9 + 394, v11[59] = 0xA00000005, v11[60] = v9 + 450, v11[61] = 0x1000000002, v11[62] = v9 + 454, v11[63] = 0x3000000006, v11[64] = v9 + 462, v11[65] = 0x1000000002, v11[66] = v9 + 469, v12 = v9[4], v12[67] = 0x600000001, v12[68] = v9 + 590, v12[69] = 0x3000000006, v12[70] = v9 + 598, v12[71] = 0x3000000006, v12[72] = v9 + 606, v12[73] = 0x3000000006, v12[74] = v9 + 653, v12[75] = 0xA00000005, v12[76] = v9 + 657, v12[77] = 0x1000000002, v12[78] = v9 + 661, v12[79] = 0x1000000002, v13 = malloc_type_malloc(0x30uLL, 0x10040436913F5uLL), (v9[5] = v13) != 0)
      && (*v13 = v9 + 449, *(v9[5] + 8) = v9 + 474, *(v9[5] + 16) = v9 + 483, *(v9[5] + 24) = v9 + 449, *(v9[5] + 32) = v9 + 474, *(v9[5] + 40) = v9 + 483, v14 = malloc_type_malloc(0x2510uLL, 0x10040436913F5uLL), (v9[6] = v14) != 0)
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
          *(v9[6] + 360) = v9 + 1930,
          *(v9[6] + 368) = v9 + 1934,
          *(v9[6] + 376) = v9 + 1938,
          *(v9[6] + 384) = v9 + 1942,
          *(v9[6] + 392) = v9 + 1946,
          *(v9[6] + 400) = v9 + 1950,
          *(v9[6] + 408) = v9 + 1954,
          *(v9[6] + 416) = v9 + 1958,
          *(v9[6] + 424) = v9 + 1962,
          *(v9[6] + 432) = v9 + 1966,
          *(v9[6] + 440) = v9 + 1970,
          *(v9[6] + 448) = v9 + 1974,
          *(v9[6] + 456) = v9 + 1978,
          *(v9[6] + 464) = v9 + 1982,
          *(v9[6] + 472) = v9 + 1986,
          *(v9[6] + 480) = v9 + 1990,
          *(v9[6] + 488) = v9 + 1994,
          *(v9[6] + 496) = v9 + 1998,
          *(v9[6] + 504) = v9 + 2002,
          *(v9[6] + 512) = v9 + 2006,
          *(v9[6] + 520) = v9 + 2010,
          *(v9[6] + 528) = v9 + 2014,
          *(v9[6] + 536) = v9 + 2018,
          *(v9[6] + 544) = v9 + 2022,
          *(v9[6] + 552) = v9 + 2026,
          *(v9[6] + 560) = v9 + 2030,
          *(v9[6] + 568) = v9 + 2034,
          *(v9[6] + 576) = v9 + 2038,
          *(v9[6] + 584) = v9 + 2042,
          *(v9[6] + 592) = v9 + 2046,
          *(v9[6] + 600) = v9 + 2050,
          *(v9[6] + 608) = v9 + 2054,
          *(v9[6] + 616) = v9 + 2058,
          *(v9[6] + 624) = v9 + 2062,
          *(v9[6] + 632) = v9 + 2066,
          *(v9[6] + 640) = v9 + 2070,
          *(v9[6] + 648) = v9 + 2074,
          *(v9[6] + 656) = v9 + 2078,
          *(v9[6] + 664) = v9 + 2082,
          *(v9[6] + 672) = v9 + 2086,
          *(v9[6] + 680) = v9 + 2090,
          *(v9[6] + 688) = v9 + 2094,
          *(v9[6] + 696) = v9 + 2274,
          *(v9[6] + 704) = v9 + 2278,
          *(v9[6] + 712) = v9 + 2282,
          *(v9[6] + 720) = v9 + 2286,
          *(v9[6] + 728) = v9 + 2290,
          *(v9[6] + 736) = v9 + 2346,
          *(v9[6] + 744) = v9 + 2350,
          *(v9[6] + 752) = v9 + 2354,
          *(v9[6] + 760) = v9 + 2386,
          *(v9[6] + 768) = v9 + 2390,
          *(v9[6] + 776) = v9 + 2394,
          *(v9[6] + 784) = v9 + 2398,
          *(v9[6] + 792) = v9 + 2402,
          *(v9[6] + 800) = v9 + 2406,
          *(v9[6] + 808) = v9 + 2410,
          *(v9[6] + 816) = v9 + 2414,
          *(v9[6] + 824) = v9 + 2418,
          *(v9[6] + 832) = v9 + 2422,
          *(v9[6] + 840) = v9 + 2426,
          *(v9[6] + 848) = v9 + 2430,
          *(v9[6] + 856) = v9 + 2434,
          *(v9[6] + 864) = v9 + 2438,
          *(v9[6] + 872) = v9 + 2442,
          *(v9[6] + 880) = v9 + 2446,
          *(v9[6] + 888) = v9 + 2514,
          *(v9[6] + 896) = v9 + 2538,
          *(v9[6] + 904) = v9 + 2542,
          *(v9[6] + 912) = v9 + 2546,
          *(v9[6] + 920) = v9 + 2550,
          *(v9[6] + 928) = v9 + 2554,
          *(v9[6] + 936) = v9 + 2558,
          *(v9[6] + 944) = v9 + 2562,
          *(v9[6] + 952) = v9 + 2566,
          *(v9[6] + 960) = v9 + 2570,
          *(v9[6] + 968) = v9 + 2574,
          *(v9[6] + 976) = v9 + 2578,
          *(v9[6] + 984) = v9 + 2582,
          *(v9[6] + 992) = v9 + 2586,
          *(v9[6] + 1000) = v9 + 2590,
          *(v9[6] + 1008) = v9 + 2594,
          *(v9[6] + 1016) = v9 + 2598,
          *(v9[6] + 1024) = v9 + 2602,
          *(v9[6] + 1032) = v9 + 2606,
          *(v9[6] + 1040) = v9 + 2610,
          *(v9[6] + 1048) = v9 + 2614,
          *(v9[6] + 1056) = v9 + 2618,
          *(v9[6] + 1064) = v9 + 2622,
          *(v9[6] + 1072) = v9 + 2626,
          *(v9[6] + 1080) = v9 + 2630,
          *(v9[6] + 1088) = v9 + 2634,
          *(v9[6] + 1096) = v9 + 2638,
          *(v9[6] + 1104) = v9 + 2642,
          *(v9[6] + 1112) = v9 + 2646,
          *(v9[6] + 1120) = v9 + 2650,
          *(v9[6] + 1128) = v9 + 2654,
          *(v9[6] + 1136) = v9 + 2658,
          *(v9[6] + 1144) = v9 + 2662,
          *(v9[6] + 1152) = v9 + 2666,
          *(v9[6] + 1160) = v9 + 2670,
          *(v9[6] + 1168) = v9 + 2674,
          *(v9[6] + 1176) = v9 + 2678,
          *(v9[6] + 1184) = v9 + 2682,
          *(v9[6] + 1192) = v9 + 2686,
          *(v9[6] + 1200) = v9 + 2690,
          *(v9[6] + 1208) = v9 + 2694,
          *(v9[6] + 1216) = v9 + 2698,
          *(v9[6] + 1224) = v9 + 2702,
          *(v9[6] + 1232) = v9 + 2706,
          *(v9[6] + 1240) = v9 + 2710,
          *(v9[6] + 1248) = v9 + 2714,
          *(v9[6] + 1256) = v9 + 2718,
          *(v9[6] + 1264) = v9 + 2722,
          *(v9[6] + 1272) = v9 + 2726,
          *(v9[6] + 1280) = v9 + 2730,
          *(v9[6] + 1288) = v9 + 2734,
          *(v9[6] + 1296) = v9 + 2738,
          *(v9[6] + 1304) = v9 + 2742,
          *(v9[6] + 1312) = v9 + 2746,
          *(v9[6] + 1320) = v9 + 2750,
          *(v9[6] + 1328) = v9 + 2754,
          *(v9[6] + 1336) = v9 + 2758,
          *(v9[6] + 1344) = v9 + 2762,
          *(v9[6] + 1352) = v9 + 2766,
          *(v9[6] + 1360) = v9 + 2770,
          *(v9[6] + 1368) = v9 + 2774,
          *(v9[6] + 1376) = v9 + 2778,
          *(v9[6] + 1384) = v9 + 2782,
          *(v9[6] + 1392) = v9 + 2786,
          *(v9[6] + 1400) = v9 + 2790,
          *(v9[6] + 1408) = v9 + 2794,
          *(v9[6] + 1416) = v9 + 2798,
          *(v9[6] + 1424) = v9 + 2802,
          *(v9[6] + 1432) = v9 + 2806,
          *(v9[6] + 1440) = v9 + 2810,
          *(v9[6] + 1448) = v9 + 2814,
          *(v9[6] + 1456) = v9 + 2818,
          *(v9[6] + 1464) = v9 + 2822,
          *(v9[6] + 1472) = v9 + 2826,
          *(v9[6] + 1480) = v9 + 2830,
          *(v9[6] + 1488) = v9 + 2834,
          *(v9[6] + 1496) = v9 + 2838,
          *(v9[6] + 1504) = v9 + 2842,
          *(v9[6] + 1512) = v9 + 2846,
          *(v9[6] + 1520) = v9 + 2850,
          *(v9[6] + 1528) = v9 + 2854,
          *(v9[6] + 1536) = v9 + 2858,
          *(v9[6] + 1544) = v9 + 2862,
          *(v9[6] + 1552) = v9 + 2866,
          *(v9[6] + 1560) = v9 + 2870,
          *(v9[6] + 1568) = v9 + 2874,
          *(v9[6] + 1576) = v9 + 2878,
          *(v9[6] + 1584) = v9 + 2882,
          *(v9[6] + 1592) = v9 + 2886,
          *(v9[6] + 1600) = v9 + 2890,
          *(v9[6] + 1608) = v9 + 2894,
          *(v9[6] + 1616) = v9 + 2898,
          *(v9[6] + 1624) = v9 + 2902,
          *(v9[6] + 1632) = v9 + 2906,
          *(v9[6] + 1640) = v9 + 2910,
          *(v9[6] + 1648) = v9 + 2914,
          *(v9[6] + 1656) = v9 + 2918,
          *(v9[6] + 1664) = v9 + 2922,
          *(v9[6] + 1672) = v9 + 2926,
          *(v9[6] + 1680) = v9 + 2930,
          *(v9[6] + 1688) = v9 + 2934,
          *(v9[6] + 1696) = v9 + 2938,
          *(v9[6] + 1704) = v9 + 2942,
          *(v9[6] + 1712) = v9 + 2946,
          *(v9[6] + 1720) = v9 + 2950,
          *(v9[6] + 1728) = v9 + 2954,
          *(v9[6] + 1736) = v9 + 2958,
          *(v9[6] + 1744) = v9 + 2962,
          *(v9[6] + 1752) = v9 + 2966,
          *(v9[6] + 1760) = v9 + 2970,
          *(v9[6] + 1768) = v9 + 2974,
          *(v9[6] + 1776) = v9 + 2978,
          *(v9[6] + 1784) = v9 + 2982,
          *(v9[6] + 1792) = v9 + 2986,
          *(v9[6] + 1800) = v9 + 2990,
          *(v9[6] + 1808) = v9 + 2994,
          *(v9[6] + 1816) = v9 + 2998,
          *(v9[6] + 1824) = v9 + 3002,
          *(v9[6] + 1832) = v9 + 3006,
          *(v9[6] + 1840) = v9 + 3010,
          *(v9[6] + 1848) = v9 + 3014,
          *(v9[6] + 1856) = v9 + 3018,
          *(v9[6] + 1864) = v9 + 3022,
          *(v9[6] + 1872) = v9 + 3026,
          *(v9[6] + 1880) = v9 + 3030,
          *(v9[6] + 1888) = v9 + 3034,
          *(v9[6] + 1896) = v9 + 3038,
          *(v9[6] + 1904) = v9 + 3042,
          *(v9[6] + 1912) = v9 + 3046,
          *(v9[6] + 1920) = v9 + 3050,
          *(v9[6] + 1928) = v9 + 3054,
          *(v9[6] + 1936) = v9 + 3058,
          *(v9[6] + 1944) = v9 + 3062,
          *(v9[6] + 1952) = v9 + 3066,
          *(v9[6] + 1960) = v9 + 3070,
          *(v9[6] + 1968) = v9 + 3074,
          *(v9[6] + 1976) = v9 + 3078,
          *(v9[6] + 1984) = v9 + 3082,
          *(v9[6] + 1992) = v9 + 3186,
          *(v9[6] + 2000) = v9 + 3190,
          *(v9[6] + 2008) = v9 + 3194,
          *(v9[6] + 2016) = v9 + 3198,
          *(v9[6] + 2024) = v9 + 3202,
          *(v9[6] + 2032) = v9 + 3206,
          *(v9[6] + 2040) = v9 + 3210,
          *(v9[6] + 2048) = v9 + 3214,
          *(v9[6] + 2056) = v9 + 3218,
          *(v9[6] + 2064) = v9 + 3222,
          *(v9[6] + 2072) = v9 + 3226,
          *(v9[6] + 2080) = v9 + 3230,
          *(v9[6] + 2088) = v9 + 3234,
          *(v9[6] + 2096) = v9 + 3238,
          *(v9[6] + 2104) = v9 + 3242,
          *(v9[6] + 2112) = v9 + 3246,
          *(v9[6] + 2120) = v9 + 3250,
          *(v9[6] + 2128) = v9 + 3254,
          *(v9[6] + 2136) = v9 + 3258,
          *(v9[6] + 2144) = v9 + 3262,
          *(v9[6] + 2152) = v9 + 3266,
          *(v9[6] + 2160) = v9 + 3270,
          *(v9[6] + 2168) = v9 + 3274,
          *(v9[6] + 2176) = v9 + 3278,
          *(v9[6] + 2184) = v9 + 3282,
          *(v9[6] + 2192) = v9 + 3286,
          *(v9[6] + 2200) = v9 + 3290,
          *(v9[6] + 2208) = v9 + 3294,
          *(v9[6] + 2216) = v9 + 3298,
          *(v9[6] + 2224) = v9 + 3302,
          *(v9[6] + 2232) = v9 + 3306,
          *(v9[6] + 2240) = v9 + 3310,
          *(v9[6] + 2248) = v9 + 3314,
          *(v9[6] + 2256) = v9 + 3318,
          *(v9[6] + 2264) = v9 + 3322,
          *(v9[6] + 2272) = v9 + 3326,
          *(v9[6] + 2280) = v9 + 3330,
          *(v9[6] + 2288) = v9 + 3334,
          *(v9[6] + 2296) = v9 + 3338,
          *(v9[6] + 2304) = v9 + 3342,
          *(v9[6] + 2312) = v9 + 3362,
          *(v9[6] + 2320) = v9 + 3366,
          *(v9[6] + 2328) = v9 + 3370,
          *(v9[6] + 2336) = v9 + 3410,
          *(v9[6] + 2344) = v9 + 3414,
          *(v9[6] + 2352) = v9 + 3418,
          *(v9[6] + 2360) = v9 + 3422,
          *(v9[6] + 2368) = v9 + 3426,
          *(v9[6] + 2376) = v9 + 3430,
          *(v9[6] + 2384) = v9 + 3434,
          *(v9[6] + 2392) = v9 + 3438,
          *(v9[6] + 2400) = v9 + 3442,
          *(v9[6] + 2408) = v9 + 3446,
          *(v9[6] + 2416) = v9 + 3450,
          *(v9[6] + 2424) = v9 + 3454,
          *(v9[6] + 2432) = v9 + 3458,
          *(v9[6] + 2440) = v9 + 3462,
          *(v9[6] + 2448) = v9 + 3466,
          *(v9[6] + 2456) = v9 + 3470,
          *(v9[6] + 2464) = v9 + 3474,
          *(v9[6] + 2472) = v9 + 3478,
          *(v9[6] + 2480) = v9 + 3482,
          *(v9[6] + 2488) = v9 + 3486,
          *(v9[6] + 2496) = v9 + 3490,
          *(v9[6] + 2504) = v9 + 3494,
          *(v9[6] + 2512) = v9 + 3498,
          *(v9[6] + 2520) = v9 + 3502,
          *(v9[6] + 2528) = v9 + 3506,
          *(v9[6] + 2536) = v9 + 3510,
          *(v9[6] + 2544) = v9 + 3514,
          *(v9[6] + 2552) = v9 + 3518,
          *(v9[6] + 2560) = v9 + 3522,
          *(v9[6] + 2568) = v9 + 3526,
          *(v9[6] + 2576) = v9 + 3530,
          *(v9[6] + 2584) = v9 + 3534,
          *(v9[6] + 2592) = v9 + 3538,
          *(v9[6] + 2600) = v9 + 3542,
          *(v9[6] + 2608) = v9 + 3546,
          *(v9[6] + 2616) = v9 + 3550,
          *(v9[6] + 2624) = v9 + 3554,
          *(v9[6] + 2632) = v9 + 3558,
          *(v9[6] + 2640) = v9 + 3562,
          *(v9[6] + 2648) = v9 + 3566,
          *(v9[6] + 2656) = v9 + 3570,
          *(v9[6] + 2664) = v9 + 3574,
          *(v9[6] + 2672) = v9 + 3578,
          *(v9[6] + 2680) = v9 + 3746,
          *(v9[6] + 2688) = v9 + 3778,
          *(v9[6] + 2696) = v9 + 3802,
          *(v9[6] + 2704) = v9 + 3806,
          *(v9[6] + 2712) = v9 + 3810,
          *(v9[6] + 2720) = v9 + 3834,
          *(v9[6] + 2728) = v9 + 3838,
          *(v9[6] + 2736) = v9 + 3842,
          *(v9[6] + 2744) = v9 + 3846,
          *(v9[6] + 2752) = v9 + 3850,
          *(v9[6] + 2760) = v9 + 3874,
          *(v9[6] + 2768) = v9 + 3878,
          *(v9[6] + 2776) = v9 + 3882,
          *(v9[6] + 2784) = v9 + 3886,
          *(v9[6] + 2792) = v9 + 3890,
          *(v9[6] + 2800) = v9 + 3894,
          *(v9[6] + 2808) = v9 + 3898,
          *(v9[6] + 2816) = v9 + 3902,
          *(v9[6] + 2824) = v9 + 3906,
          *(v9[6] + 2832) = v9 + 3910,
          *(v9[6] + 2840) = v9 + 4010,
          *(v9[6] + 2848) = v9 + 4014,
          *(v9[6] + 2856) = v9 + 4034,
          *(v9[6] + 2864) = v9 + 4038,
          *(v9[6] + 2872) = v9 + 4042,
          *(v9[6] + 2880) = v9 + 4046,
          *(v9[6] + 2888) = v9 + 4050,
          *(v9[6] + 2896) = v9 + 4054,
          *(v9[6] + 2904) = v9 + 4218,
          *(v9[6] + 2912) = v9 + 4222,
          *(v9[6] + 2920) = v9 + 4226,
          *(v9[6] + 2928) = v9 + 4230,
          *(v9[6] + 2936) = v9 + 4234,
          *(v9[6] + 2944) = v9 + 4238,
          *(v9[6] + 2952) = v9 + 4242,
          *(v9[6] + 2960) = v9 + 4246,
          *(v9[6] + 2968) = v9 + 4250,
          *(v9[6] + 2976) = v9 + 4254,
          *(v9[6] + 2984) = v9 + 4258,
          *(v9[6] + 2992) = v9 + 4282,
          *(v9[6] + 3000) = v9 + 4286,
          *(v9[6] + 3008) = v9 + 4290,
          *(v9[6] + 3016) = v9 + 4294,
          *(v9[6] + 3024) = v9 + 4298,
          *(v9[6] + 3032) = v9 + 4302,
          *(v9[6] + 3040) = v9 + 4306,
          *(v9[6] + 3048) = v9 + 4310,
          *(v9[6] + 3056) = v9 + 4314,
          *(v9[6] + 3064) = v9 + 4318,
          *(v9[6] + 3072) = v9 + 4322,
          *(v9[6] + 3080) = v9 + 4326,
          *(v9[6] + 3088) = v9 + 4330,
          *(v9[6] + 3096) = v9 + 4334,
          *(v9[6] + 3104) = v9 + 4338,
          *(v9[6] + 3112) = v9 + 4342,
          *(v9[6] + 3120) = v9 + 4346,
          *(v9[6] + 3128) = v9 + 4350,
          *(v9[6] + 3136) = v9 + 4354,
          *(v9[6] + 3144) = v9 + 4358,
          *(v9[6] + 3152) = v9 + 4362,
          *(v9[6] + 3160) = v9 + 4366,
          *(v9[6] + 3168) = v9 + 4370,
          *(v9[6] + 3176) = v9 + 4374,
          *(v9[6] + 3184) = v9 + 4378,
          *(v9[6] + 3192) = v9 + 4382,
          *(v9[6] + 3200) = v9 + 4386,
          *(v9[6] + 3208) = v9 + 4390,
          *(v9[6] + 3216) = v9 + 4394,
          *(v9[6] + 3224) = v9 + 4398,
          *(v9[6] + 3232) = v9 + 4402,
          *(v9[6] + 3240) = v9 + 4406,
          *(v9[6] + 3248) = v9 + 4410,
          *(v9[6] + 3256) = v9 + 4414,
          *(v9[6] + 3264) = v9 + 4418,
          *(v9[6] + 3272) = v9 + 4422,
          *(v9[6] + 3280) = v9 + 4426,
          *(v9[6] + 3288) = v9 + 4430,
          *(v9[6] + 3296) = v9 + 4434,
          *(v9[6] + 3304) = v9 + 4438,
          *(v9[6] + 3312) = v9 + 4442,
          *(v9[6] + 3320) = v9 + 4446,
          *(v9[6] + 3328) = v9 + 4450,
          *(v9[6] + 3336) = v9 + 4454,
          *(v9[6] + 3344) = v9 + 4458,
          *(v9[6] + 3352) = v9 + 4462,
          *(v9[6] + 3360) = v9 + 4466,
          *(v9[6] + 3368) = v9 + 4470,
          *(v9[6] + 3376) = v9 + 4474,
          *(v9[6] + 3384) = v9 + 4478,
          *(v9[6] + 3392) = v9 + 4482,
          *(v9[6] + 3400) = v9 + 4486,
          *(v9[6] + 3408) = v9 + 4490,
          *(v9[6] + 3416) = v9 + 4494,
          *(v9[6] + 3424) = v9 + 4498,
          *(v9[6] + 3432) = v9 + 4502,
          *(v9[6] + 3440) = v9 + 4506,
          *(v9[6] + 3448) = v9 + 4510,
          *(v9[6] + 3456) = v9 + 4514,
          *(v9[6] + 3464) = v9 + 4518,
          *(v9[6] + 3472) = v9 + 4522,
          *(v9[6] + 3480) = v9 + 4526,
          *(v9[6] + 3488) = v9 + 4530,
          *(v9[6] + 3496) = v9 + 4534,
          *(v9[6] + 3504) = v9 + 4538,
          *(v9[6] + 3512) = v9 + 4542,
          *(v9[6] + 3520) = v9 + 4546,
          *(v9[6] + 3528) = v9 + 4550,
          *(v9[6] + 3536) = v9 + 4554,
          *(v9[6] + 3544) = v9 + 4558,
          *(v9[6] + 3552) = v9 + 4562,
          *(v9[6] + 3560) = v9 + 4566,
          *(v9[6] + 3568) = v9 + 4570,
          *(v9[6] + 3576) = v9 + 4574,
          *(v9[6] + 3584) = v9 + 4578,
          *(v9[6] + 3592) = v9 + 4582,
          *(v9[6] + 3600) = v9 + 4586,
          *(v9[6] + 3608) = v9 + 4590,
          *(v9[6] + 3616) = v9 + 4594,
          *(v9[6] + 3624) = v9 + 4598,
          *(v9[6] + 3632) = v9 + 4602,
          *(v9[6] + 3640) = v9 + 4606,
          *(v9[6] + 3648) = v9 + 4610,
          *(v9[6] + 3656) = v9 + 4614,
          *(v9[6] + 3664) = v9 + 4682,
          *(v9[6] + 3672) = v9 + 4686,
          *(v9[6] + 3680) = v9 + 4690,
          *(v9[6] + 3688) = v9 + 4694,
          *(v9[6] + 3696) = v9 + 4698,
          *(v9[6] + 3704) = v9 + 4702,
          *(v9[6] + 3712) = v9 + 4706,
          *(v9[6] + 3720) = v9 + 4710,
          *(v9[6] + 3728) = v9 + 4714,
          *(v9[6] + 3736) = v9 + 4914,
          *(v9[6] + 3744) = v9 + 4918,
          *(v9[6] + 3752) = v9 + 4970,
          *(v9[6] + 3760) = v9 + 4974,
          *(v9[6] + 3768) = v9 + 5042,
          *(v9[6] + 3776) = v9 + 5066,
          *(v9[6] + 3784) = v9 + 5090,
          *(v9[6] + 3792) = v9 + 5094,
          *(v9[6] + 3800) = v9 + 5098,
          *(v9[6] + 3808) = v9 + 5102,
          *(v9[6] + 3816) = v9 + 5106,
          *(v9[6] + 3824) = v9 + 5110,
          *(v9[6] + 3832) = v9 + 5114,
          *(v9[6] + 3840) = v9 + 5118,
          *(v9[6] + 3848) = v9 + 5122,
          *(v9[6] + 3856) = v9 + 5126,
          *(v9[6] + 3864) = v9 + 5130,
          *(v9[6] + 3872) = v9 + 5134,
          *(v9[6] + 3880) = v9 + 5138,
          *(v9[6] + 3888) = v9 + 5142,
          *(v9[6] + 3896) = v9 + 5146,
          *(v9[6] + 3904) = v9 + 5218,
          *(v9[6] + 3912) = v9 + 5222,
          *(v9[6] + 3920) = v9 + 5322,
          *(v9[6] + 3928) = v9 + 5378,
          *(v9[6] + 3936) = v9 + 5382,
          *(v9[6] + 3944) = v9 + 5386,
          *(v9[6] + 3952) = v9 + 5390,
          *(v9[6] + 3960) = v9 + 5394,
          *(v9[6] + 3968) = v9 + 5398,
          *(v9[6] + 3976) = v9 + 5418,
          *(v9[6] + 3984) = v9 + 5422,
          *(v9[6] + 3992) = v9 + 5426,
          *(v9[6] + 4000) = v9 + 5430,
          *(v9[6] + 4008) = v9 + 5434,
          *(v9[6] + 4016) = v9 + 5438,
          *(v9[6] + 4024) = v9 + 5442,
          *(v9[6] + 4032) = v9 + 5446,
          *(v9[6] + 4040) = v9 + 5450,
          *(v9[6] + 4048) = v9 + 5454,
          *(v9[6] + 4056) = v9 + 5458,
          *(v9[6] + 4064) = v9 + 5462,
          *(v9[6] + 4072) = v9 + 5466,
          *(v9[6] + 4080) = v9 + 5470,
          *(v9[6] + 4088) = v9 + 5474,
          *(v9[6] + 4096) = v9 + 5478,
          *(v9[6] + 4104) = v9 + 5482,
          *(v9[6] + 4112) = v9 + 5486,
          *(v9[6] + 4120) = v9 + 5490,
          *(v9[6] + 4128) = v9 + 5494,
          *(v9[6] + 4136) = v9 + 5498,
          *(v9[6] + 4144) = v9 + 5502,
          *(v9[6] + 4152) = v9 + 5506,
          *(v9[6] + 4160) = v9 + 5510,
          *(v9[6] + 4168) = v9 + 5514,
          *(v9[6] + 4176) = v9 + 5518,
          *(v9[6] + 4184) = v9 + 5522,
          *(v9[6] + 4192) = v9 + 5526,
          *(v9[6] + 4200) = v9 + 5530,
          *(v9[6] + 4208) = v9 + 5534,
          *(v9[6] + 4216) = v9 + 5538,
          *(v9[6] + 4224) = v9 + 5542,
          *(v9[6] + 4232) = v9 + 5546,
          *(v9[6] + 4240) = v9 + 5550,
          *(v9[6] + 4248) = v9 + 5554,
          *(v9[6] + 4256) = v9 + 5558,
          *(v9[6] + 4264) = v9 + 5562,
          *(v9[6] + 4272) = v9 + 5566,
          *(v9[6] + 4280) = v9 + 5570,
          *(v9[6] + 4288) = v9 + 5574,
          *(v9[6] + 4296) = v9 + 5578,
          *(v9[6] + 4304) = v9 + 5582,
          *(v9[6] + 4312) = v9 + 5586,
          *(v9[6] + 4320) = v9 + 5590,
          *(v9[6] + 4328) = v9 + 5594,
          *(v9[6] + 4336) = v9 + 5598,
          *(v9[6] + 4344) = v9 + 5602,
          *(v9[6] + 4352) = v9 + 5606,
          *(v9[6] + 4360) = v9 + 5610,
          *(v9[6] + 4368) = v9 + 5614,
          *(v9[6] + 4376) = v9 + 5618,
          *(v9[6] + 4384) = v9 + 5622,
          *(v9[6] + 4392) = v9 + 5626,
          *(v9[6] + 4400) = v9 + 5630,
          *(v9[6] + 4408) = v9 + 5634,
          *(v9[6] + 4416) = v9 + 5638,
          *(v9[6] + 4424) = v9 + 5642,
          *(v9[6] + 4432) = v9 + 5646,
          *(v9[6] + 4440) = v9 + 5650,
          *(v9[6] + 4448) = v9 + 5654,
          *(v9[6] + 4456) = v9 + 5658,
          *(v9[6] + 4464) = v9 + 5662,
          *(v9[6] + 4472) = v9 + 5666,
          *(v9[6] + 4480) = v9 + 5670,
          *(v9[6] + 4488) = v9 + 5674,
          *(v9[6] + 4496) = v9 + 5678,
          *(v9[6] + 4504) = v9 + 5682,
          *(v9[6] + 4512) = v9 + 5686,
          *(v9[6] + 4520) = v9 + 5690,
          *(v9[6] + 4528) = v9 + 5694,
          *(v9[6] + 4536) = v9 + 5698,
          *(v9[6] + 4544) = v9 + 5702,
          *(v9[6] + 4552) = v9 + 5706,
          *(v9[6] + 4560) = v9 + 5710,
          *(v9[6] + 4568) = v9 + 5714,
          *(v9[6] + 4576) = v9 + 5718,
          *(v9[6] + 4584) = v9 + 5722,
          *(v9[6] + 4592) = v9 + 5726,
          *(v9[6] + 4600) = v9 + 5730,
          *(v9[6] + 4608) = v9 + 5734,
          *(v9[6] + 4616) = v9 + 5738,
          *(v9[6] + 4624) = v9 + 5922,
          *(v9[6] + 4632) = v9 + 5926,
          *(v9[6] + 4640) = v9 + 5930,
          *(v9[6] + 4648) = v9 + 5934,
          *(v9[6] + 4656) = v9 + 5938,
          *(v9[6] + 4664) = v9 + 5942,
          *(v9[6] + 4672) = v9 + 5946,
          *(v9[6] + 4680) = v9 + 5950,
          *(v9[6] + 4688) = v9 + 5954,
          *(v9[6] + 4696) = v9 + 5958,
          *(v9[6] + 4704) = v9 + 5962,
          *(v9[6] + 4712) = v9 + 5966,
          *(v9[6] + 4720) = v9 + 5970,
          *(v9[6] + 4728) = v9 + 5974,
          *(v9[6] + 4736) = v9 + 6010,
          *(v9[6] + 4744) = v9 + 634,
          *(v9[6] + 4752) = v9 + 722,
          *(v9[6] + 4760) = v9 + 726,
          *(v9[6] + 4768) = v9 + 730,
          *(v9[6] + 4776) = v9 + 734,
          *(v9[6] + 4784) = v9 + 738,
          *(v9[6] + 4792) = v9 + 742,
          *(v9[6] + 4800) = v9 + 746,
          *(v9[6] + 4808) = v9 + 750,
          *(v9[6] + 4816) = v9 + 754,
          *(v9[6] + 4824) = v9 + 758,
          *(v9[6] + 4832) = v9 + 762,
          *(v9[6] + 4840) = v9 + 766,
          *(v9[6] + 4848) = v9 + 930,
          *(v9[6] + 4856) = v9 + 934,
          *(v9[6] + 4864) = v9 + 938,
          *(v9[6] + 4872) = v9 + 942,
          *(v9[6] + 4880) = v9 + 946,
          *(v9[6] + 4888) = v9 + 950,
          *(v9[6] + 4896) = v9 + 954,
          *(v9[6] + 4904) = v9 + 958,
          *(v9[6] + 4912) = v9 + 962,
          *(v9[6] + 4920) = v9 + 966,
          *(v9[6] + 4928) = v9 + 970,
          *(v9[6] + 4936) = v9 + 974,
          *(v9[6] + 4944) = v9 + 978,
          *(v9[6] + 4952) = v9 + 982,
          *(v9[6] + 4960) = v9 + 986,
          *(v9[6] + 4968) = v9 + 990,
          *(v9[6] + 4976) = v9 + 994,
          *(v9[6] + 4984) = v9 + 998,
          *(v9[6] + 4992) = v9 + 1002,
          *(v9[6] + 5000) = v9 + 1006,
          *(v9[6] + 5008) = v9 + 1010,
          *(v9[6] + 5016) = v9 + 1014,
          *(v9[6] + 5024) = v9 + 1018,
          *(v9[6] + 5032) = v9 + 1022,
          *(v9[6] + 5040) = v9 + 1026,
          *(v9[6] + 5048) = v9 + 1030,
          *(v9[6] + 5056) = v9 + 1130,
          *(v9[6] + 5064) = v9 + 1186,
          *(v9[6] + 5072) = v9 + 1190,
          *(v9[6] + 5080) = v9 + 1210,
          *(v9[6] + 5088) = v9 + 1214,
          *(v9[6] + 5096) = v9 + 1218,
          *(v9[6] + 5104) = v9 + 1930,
          *(v9[6] + 5112) = v9 + 1934,
          *(v9[6] + 5120) = v9 + 1938,
          *(v9[6] + 5128) = v9 + 1942,
          *(v9[6] + 5136) = v9 + 1946,
          *(v9[6] + 5144) = v9 + 1950,
          *(v9[6] + 5152) = v9 + 1954,
          *(v9[6] + 5160) = v9 + 1958,
          *(v9[6] + 5168) = v9 + 1962,
          *(v9[6] + 5176) = v9 + 1966,
          *(v9[6] + 5184) = v9 + 1970,
          *(v9[6] + 5192) = v9 + 1974,
          *(v9[6] + 5200) = v9 + 1978,
          *(v9[6] + 5208) = v9 + 1982,
          *(v9[6] + 5216) = v9 + 1986,
          *(v9[6] + 5224) = v9 + 1990,
          *(v9[6] + 5232) = v9 + 1994,
          *(v9[6] + 5240) = v9 + 1998,
          *(v9[6] + 5248) = v9 + 2002,
          *(v9[6] + 5256) = v9 + 2006,
          *(v9[6] + 5264) = v9 + 2010,
          *(v9[6] + 5272) = v9 + 2014,
          *(v9[6] + 5280) = v9 + 2018,
          *(v9[6] + 5288) = v9 + 2022,
          *(v9[6] + 5296) = v9 + 2026,
          *(v9[6] + 5304) = v9 + 2030,
          *(v9[6] + 5312) = v9 + 2034,
          *(v9[6] + 5320) = v9 + 2038,
          *(v9[6] + 5328) = v9 + 2042,
          *(v9[6] + 5336) = v9 + 2046,
          *(v9[6] + 5344) = v9 + 2050,
          *(v9[6] + 5352) = v9 + 2054,
          *(v9[6] + 5360) = v9 + 2058,
          *(v9[6] + 5368) = v9 + 2062,
          *(v9[6] + 5376) = v9 + 2066,
          *(v9[6] + 5384) = v9 + 2070,
          *(v9[6] + 5392) = v9 + 2074,
          *(v9[6] + 5400) = v9 + 2078,
          *(v9[6] + 5408) = v9 + 2082,
          *(v9[6] + 5416) = v9 + 2086,
          *(v9[6] + 5424) = v9 + 2090,
          *(v9[6] + 5432) = v9 + 2094,
          *(v9[6] + 5440) = v9 + 2274,
          *(v9[6] + 5448) = v9 + 2278,
          *(v9[6] + 5456) = v9 + 2282,
          *(v9[6] + 5464) = v9 + 2286,
          *(v9[6] + 5472) = v9 + 2290,
          *(v9[6] + 5480) = v9 + 2346,
          *(v9[6] + 5488) = v9 + 2350,
          *(v9[6] + 5496) = v9 + 2354,
          *(v9[6] + 5504) = v9 + 2386,
          *(v9[6] + 5512) = v9 + 2390,
          *(v9[6] + 5520) = v9 + 2394,
          *(v9[6] + 5528) = v9 + 2398,
          *(v9[6] + 5536) = v9 + 2402,
          *(v9[6] + 5544) = v9 + 2406,
          *(v9[6] + 5552) = v9 + 2410,
          *(v9[6] + 5560) = v9 + 2414,
          *(v9[6] + 5568) = v9 + 2418,
          *(v9[6] + 5576) = v9 + 2422,
          *(v9[6] + 5584) = v9 + 2426,
          *(v9[6] + 5592) = v9 + 2430,
          *(v9[6] + 5600) = v9 + 2434,
          *(v9[6] + 5608) = v9 + 2438,
          *(v9[6] + 5616) = v9 + 2442,
          *(v9[6] + 5624) = v9 + 2446,
          *(v9[6] + 5632) = v9 + 2514,
          *(v9[6] + 5640) = v9 + 2538,
          *(v9[6] + 5648) = v9 + 2542,
          *(v9[6] + 5656) = v9 + 2546,
          *(v9[6] + 5664) = v9 + 2550,
          *(v9[6] + 5672) = v9 + 2554,
          *(v9[6] + 5680) = v9 + 2558,
          *(v9[6] + 5688) = v9 + 2562,
          *(v9[6] + 5696) = v9 + 2566,
          *(v9[6] + 5704) = v9 + 2570,
          *(v9[6] + 5712) = v9 + 2574,
          *(v9[6] + 5720) = v9 + 2578,
          *(v9[6] + 5728) = v9 + 2582,
          *(v9[6] + 5736) = v9 + 2586,
          *(v9[6] + 5744) = v9 + 2590,
          *(v9[6] + 5752) = v9 + 2594,
          *(v9[6] + 5760) = v9 + 2598,
          *(v9[6] + 5768) = v9 + 2602,
          *(v9[6] + 5776) = v9 + 2606,
          *(v9[6] + 5784) = v9 + 2610,
          *(v9[6] + 5792) = v9 + 2614,
          *(v9[6] + 5800) = v9 + 2618,
          *(v9[6] + 5808) = v9 + 2622,
          *(v9[6] + 5816) = v9 + 2626,
          *(v9[6] + 5824) = v9 + 2630,
          *(v9[6] + 5832) = v9 + 2634,
          *(v9[6] + 5840) = v9 + 2638,
          *(v9[6] + 5848) = v9 + 2642,
          *(v9[6] + 5856) = v9 + 2646,
          *(v9[6] + 5864) = v9 + 2650,
          *(v9[6] + 5872) = v9 + 2654,
          *(v9[6] + 5880) = v9 + 2658,
          *(v9[6] + 5888) = v9 + 2662,
          *(v9[6] + 5896) = v9 + 2666,
          *(v9[6] + 5904) = v9 + 2670,
          *(v9[6] + 5912) = v9 + 2674,
          *(v9[6] + 5920) = v9 + 2678,
          *(v9[6] + 5928) = v9 + 2682,
          *(v9[6] + 5936) = v9 + 2686,
          *(v9[6] + 5944) = v9 + 2690,
          *(v9[6] + 5952) = v9 + 2694,
          *(v9[6] + 5960) = v9 + 2698,
          *(v9[6] + 5968) = v9 + 2702,
          *(v9[6] + 5976) = v9 + 2706,
          *(v9[6] + 5984) = v9 + 2710,
          *(v9[6] + 5992) = v9 + 2714,
          *(v9[6] + 6000) = v9 + 2718,
          *(v9[6] + 6008) = v9 + 2722,
          *(v9[6] + 6016) = v9 + 2726,
          *(v9[6] + 6024) = v9 + 2730,
          *(v9[6] + 6032) = v9 + 2734,
          *(v9[6] + 6040) = v9 + 2738,
          *(v9[6] + 6048) = v9 + 2742,
          *(v9[6] + 6056) = v9 + 2746,
          *(v9[6] + 6064) = v9 + 2750,
          *(v9[6] + 6072) = v9 + 2754,
          *(v9[6] + 6080) = v9 + 2758,
          *(v9[6] + 6088) = v9 + 2762,
          *(v9[6] + 6096) = v9 + 2766,
          *(v9[6] + 6104) = v9 + 2770,
          *(v9[6] + 6112) = v9 + 2774,
          *(v9[6] + 6120) = v9 + 2778,
          *(v9[6] + 6128) = v9 + 2782,
          *(v9[6] + 6136) = v9 + 2786,
          *(v9[6] + 6144) = v9 + 2790,
          *(v9[6] + 6152) = v9 + 2794,
          *(v9[6] + 6160) = v9 + 2798,
          *(v9[6] + 6168) = v9 + 2802,
          *(v9[6] + 6176) = v9 + 2806,
          *(v9[6] + 6184) = v9 + 2810,
          *(v9[6] + 6192) = v9 + 2814,
          *(v9[6] + 6200) = v9 + 2818,
          *(v9[6] + 6208) = v9 + 2822,
          *(v9[6] + 6216) = v9 + 2826,
          *(v9[6] + 6224) = v9 + 2830,
          *(v9[6] + 6232) = v9 + 2834,
          *(v9[6] + 6240) = v9 + 2838,
          *(v9[6] + 6248) = v9 + 2842,
          *(v9[6] + 6256) = v9 + 2846,
          *(v9[6] + 6264) = v9 + 2850,
          *(v9[6] + 6272) = v9 + 2854,
          *(v9[6] + 6280) = v9 + 2858,
          *(v9[6] + 6288) = v9 + 2862,
          *(v9[6] + 6296) = v9 + 2866,
          *(v9[6] + 6304) = v9 + 2870,
          *(v9[6] + 6312) = v9 + 2874,
          *(v9[6] + 6320) = v9 + 2878,
          *(v9[6] + 6328) = v9 + 2882,
          *(v9[6] + 6336) = v9 + 2886,
          *(v9[6] + 6344) = v9 + 2890,
          *(v9[6] + 6352) = v9 + 2894,
          *(v9[6] + 6360) = v9 + 2898,
          *(v9[6] + 6368) = v9 + 2902,
          *(v9[6] + 6376) = v9 + 2906,
          *(v9[6] + 6384) = v9 + 2910,
          *(v9[6] + 6392) = v9 + 2914,
          *(v9[6] + 6400) = v9 + 2918,
          *(v9[6] + 6408) = v9 + 2922,
          *(v9[6] + 6416) = v9 + 2926,
          *(v9[6] + 6424) = v9 + 2930,
          *(v9[6] + 6432) = v9 + 2934,
          *(v9[6] + 6440) = v9 + 2938,
          *(v9[6] + 6448) = v9 + 2942,
          *(v9[6] + 6456) = v9 + 2946,
          *(v9[6] + 6464) = v9 + 2950,
          *(v9[6] + 6472) = v9 + 2954,
          *(v9[6] + 6480) = v9 + 2958,
          *(v9[6] + 6488) = v9 + 2962,
          *(v9[6] + 6496) = v9 + 2966,
          *(v9[6] + 6504) = v9 + 2970,
          *(v9[6] + 6512) = v9 + 2974,
          *(v9[6] + 6520) = v9 + 2978,
          *(v9[6] + 6528) = v9 + 2982,
          *(v9[6] + 6536) = v9 + 2986,
          *(v9[6] + 6544) = v9 + 2990,
          *(v9[6] + 6552) = v9 + 2994,
          *(v9[6] + 6560) = v9 + 2998,
          *(v9[6] + 6568) = v9 + 3002,
          *(v9[6] + 6576) = v9 + 3006,
          *(v9[6] + 6584) = v9 + 3010,
          *(v9[6] + 6592) = v9 + 3014,
          *(v9[6] + 6600) = v9 + 3018,
          *(v9[6] + 6608) = v9 + 3022,
          *(v9[6] + 6616) = v9 + 3026,
          *(v9[6] + 6624) = v9 + 3030,
          *(v9[6] + 6632) = v9 + 3034,
          *(v9[6] + 6640) = v9 + 3038,
          *(v9[6] + 6648) = v9 + 3042,
          *(v9[6] + 6656) = v9 + 3046,
          *(v9[6] + 6664) = v9 + 3050,
          *(v9[6] + 6672) = v9 + 3054,
          *(v9[6] + 6680) = v9 + 3058,
          *(v9[6] + 6688) = v9 + 3062,
          *(v9[6] + 6696) = v9 + 3066,
          *(v9[6] + 6704) = v9 + 3070,
          *(v9[6] + 6712) = v9 + 3074,
          *(v9[6] + 6720) = v9 + 3078,
          *(v9[6] + 6728) = v9 + 3082,
          *(v9[6] + 6736) = v9 + 3186,
          *(v9[6] + 6744) = v9 + 3190,
          *(v9[6] + 6752) = v9 + 3194,
          *(v9[6] + 6760) = v9 + 3198,
          *(v9[6] + 6768) = v9 + 3202,
          *(v9[6] + 6776) = v9 + 3206,
          *(v9[6] + 6784) = v9 + 3210,
          *(v9[6] + 6792) = v9 + 3214,
          *(v9[6] + 6800) = v9 + 3218,
          *(v9[6] + 6808) = v9 + 3222,
          *(v9[6] + 6816) = v9 + 3226,
          *(v9[6] + 6824) = v9 + 3230,
          *(v9[6] + 6832) = v9 + 3234,
          *(v9[6] + 6840) = v9 + 3238,
          *(v9[6] + 6848) = v9 + 3242,
          *(v9[6] + 6856) = v9 + 3246,
          *(v9[6] + 6864) = v9 + 3250,
          *(v9[6] + 6872) = v9 + 3254,
          *(v9[6] + 6880) = v9 + 3258,
          *(v9[6] + 6888) = v9 + 3262,
          *(v9[6] + 6896) = v9 + 3266,
          *(v9[6] + 6904) = v9 + 3270,
          *(v9[6] + 6912) = v9 + 3274,
          *(v9[6] + 6920) = v9 + 3278,
          *(v9[6] + 6928) = v9 + 3282,
          *(v9[6] + 6936) = v9 + 3286,
          *(v9[6] + 6944) = v9 + 3290,
          *(v9[6] + 6952) = v9 + 3294,
          *(v9[6] + 6960) = v9 + 3298,
          *(v9[6] + 6968) = v9 + 3302,
          *(v9[6] + 6976) = v9 + 3306,
          *(v9[6] + 6984) = v9 + 3310,
          *(v9[6] + 6992) = v9 + 3314,
          *(v9[6] + 7000) = v9 + 3318,
          *(v9[6] + 7008) = v9 + 3322,
          *(v9[6] + 7016) = v9 + 3326,
          *(v9[6] + 7024) = v9 + 3330,
          *(v9[6] + 7032) = v9 + 3334,
          *(v9[6] + 7040) = v9 + 3338,
          *(v9[6] + 7048) = v9 + 3342,
          *(v9[6] + 7056) = v9 + 3362,
          *(v9[6] + 7064) = v9 + 3366,
          *(v9[6] + 7072) = v9 + 3370,
          *(v9[6] + 7080) = v9 + 3410,
          *(v9[6] + 7088) = v9 + 3414,
          *(v9[6] + 7096) = v9 + 3418,
          *(v9[6] + 7104) = v9 + 3422,
          *(v9[6] + 7112) = v9 + 3426,
          *(v9[6] + 7120) = v9 + 3430,
          *(v9[6] + 7128) = v9 + 3434,
          *(v9[6] + 7136) = v9 + 3438,
          *(v9[6] + 7144) = v9 + 3442,
          *(v9[6] + 7152) = v9 + 3446,
          *(v9[6] + 7160) = v9 + 3450,
          *(v9[6] + 7168) = v9 + 3454,
          *(v9[6] + 7176) = v9 + 3458,
          *(v9[6] + 7184) = v9 + 3462,
          *(v9[6] + 7192) = v9 + 3466,
          *(v9[6] + 7200) = v9 + 3470,
          *(v9[6] + 7208) = v9 + 3474,
          *(v9[6] + 7216) = v9 + 3478,
          *(v9[6] + 7224) = v9 + 3482,
          *(v9[6] + 7232) = v9 + 3486,
          *(v9[6] + 7240) = v9 + 3490,
          *(v9[6] + 7248) = v9 + 3494,
          *(v9[6] + 7256) = v9 + 3498,
          *(v9[6] + 7264) = v9 + 3502,
          *(v9[6] + 7272) = v9 + 3506,
          *(v9[6] + 7280) = v9 + 3510,
          *(v9[6] + 7288) = v9 + 3514,
          *(v9[6] + 7296) = v9 + 3518,
          *(v9[6] + 7304) = v9 + 3522,
          *(v9[6] + 7312) = v9 + 3526,
          *(v9[6] + 7320) = v9 + 3530,
          *(v9[6] + 7328) = v9 + 3534,
          *(v9[6] + 7336) = v9 + 3538,
          *(v9[6] + 7344) = v9 + 3542,
          *(v9[6] + 7352) = v9 + 3546,
          *(v9[6] + 7360) = v9 + 3550,
          *(v9[6] + 7368) = v9 + 3554,
          *(v9[6] + 7376) = v9 + 3558,
          *(v9[6] + 7384) = v9 + 3562,
          *(v9[6] + 7392) = v9 + 3566,
          *(v9[6] + 7400) = v9 + 3570,
          *(v9[6] + 7408) = v9 + 3574,
          *(v9[6] + 7416) = v9 + 3578,
          *(v9[6] + 7424) = v9 + 3746,
          *(v9[6] + 7432) = v9 + 3778,
          *(v9[6] + 7440) = v9 + 3802,
          *(v9[6] + 7448) = v9 + 3806,
          *(v9[6] + 7456) = v9 + 3810,
          *(v9[6] + 7464) = v9 + 3834,
          *(v9[6] + 7472) = v9 + 3838,
          *(v9[6] + 7480) = v9 + 3842,
          *(v9[6] + 7488) = v9 + 3846,
          *(v9[6] + 7496) = v9 + 3850,
          *(v9[6] + 7504) = v9 + 3874,
          *(v9[6] + 7512) = v9 + 3878,
          *(v9[6] + 7520) = v9 + 3882,
          *(v9[6] + 7528) = v9 + 3886,
          *(v9[6] + 7536) = v9 + 3890,
          *(v9[6] + 7544) = v9 + 3894,
          *(v9[6] + 7552) = v9 + 3898,
          *(v9[6] + 7560) = v9 + 3902,
          *(v9[6] + 7568) = v9 + 3906,
          *(v9[6] + 7576) = v9 + 3910,
          *(v9[6] + 7584) = v9 + 4010,
          *(v9[6] + 7592) = v9 + 4014,
          *(v9[6] + 7600) = v9 + 4034,
          *(v9[6] + 7608) = v9 + 4038,
          *(v9[6] + 7616) = v9 + 4042,
          *(v9[6] + 7624) = v9 + 4046,
          *(v9[6] + 7632) = v9 + 4050,
          *(v9[6] + 7640) = v9 + 4054,
          *(v9[6] + 7648) = v9 + 4218,
          *(v9[6] + 7656) = v9 + 4222,
          *(v9[6] + 7664) = v9 + 4226,
          *(v9[6] + 7672) = v9 + 4230,
          *(v9[6] + 7680) = v9 + 4234,
          *(v9[6] + 7688) = v9 + 4238,
          *(v9[6] + 7696) = v9 + 4242,
          *(v9[6] + 7704) = v9 + 4246,
          *(v9[6] + 7712) = v9 + 4250,
          *(v9[6] + 7720) = v9 + 4254,
          *(v9[6] + 7728) = v9 + 4258,
          *(v9[6] + 7736) = v9 + 4282,
          *(v9[6] + 7744) = v9 + 4286,
          *(v9[6] + 7752) = v9 + 4290,
          *(v9[6] + 7760) = v9 + 4294,
          *(v9[6] + 7768) = v9 + 4298,
          *(v9[6] + 7776) = v9 + 4302,
          *(v9[6] + 7784) = v9 + 4306,
          *(v9[6] + 7792) = v9 + 4310,
          *(v9[6] + 7800) = v9 + 4314,
          *(v9[6] + 7808) = v9 + 4318,
          *(v9[6] + 7816) = v9 + 4322,
          *(v9[6] + 7824) = v9 + 4326,
          *(v9[6] + 7832) = v9 + 4330,
          *(v9[6] + 7840) = v9 + 4334,
          *(v9[6] + 7848) = v9 + 4338,
          *(v9[6] + 7856) = v9 + 4342,
          *(v9[6] + 7864) = v9 + 4346,
          *(v9[6] + 7872) = v9 + 4350,
          *(v9[6] + 7880) = v9 + 4354,
          *(v9[6] + 7888) = v9 + 4358,
          *(v9[6] + 7896) = v9 + 4362,
          *(v9[6] + 7904) = v9 + 4366,
          *(v9[6] + 7912) = v9 + 4370,
          *(v9[6] + 7920) = v9 + 4374,
          *(v9[6] + 7928) = v9 + 4378,
          *(v9[6] + 7936) = v9 + 4382,
          *(v9[6] + 7944) = v9 + 4386,
          *(v9[6] + 7952) = v9 + 4390,
          *(v9[6] + 7960) = v9 + 4394,
          *(v9[6] + 7968) = v9 + 4398,
          *(v9[6] + 7976) = v9 + 4402,
          *(v9[6] + 7984) = v9 + 4406,
          *(v9[6] + 7992) = v9 + 4410,
          *(v9[6] + 8000) = v9 + 4414,
          *(v9[6] + 8008) = v9 + 4418,
          *(v9[6] + 8016) = v9 + 4422,
          *(v9[6] + 8024) = v9 + 4426,
          *(v9[6] + 8032) = v9 + 4430,
          *(v9[6] + 8040) = v9 + 4434,
          *(v9[6] + 8048) = v9 + 4438,
          *(v9[6] + 8056) = v9 + 4442,
          *(v9[6] + 8064) = v9 + 4446,
          *(v9[6] + 8072) = v9 + 4450,
          *(v9[6] + 8080) = v9 + 4454,
          *(v9[6] + 8088) = v9 + 4458,
          *(v9[6] + 8096) = v9 + 4462,
          *(v9[6] + 8104) = v9 + 4466,
          *(v9[6] + 8112) = v9 + 4470,
          *(v9[6] + 8120) = v9 + 4474,
          *(v9[6] + 8128) = v9 + 4478,
          *(v9[6] + 8136) = v9 + 4482,
          *(v9[6] + 8144) = v9 + 4486,
          *(v9[6] + 8152) = v9 + 4490,
          *(v9[6] + 8160) = v9 + 4494,
          *(v9[6] + 8168) = v9 + 4498,
          *(v9[6] + 8176) = v9 + 4502,
          *(v9[6] + 8184) = v9 + 4506,
          *(v9[6] + 0x2000) = v9 + 4510,
          *(v9[6] + 8200) = v9 + 4514,
          *(v9[6] + 8208) = v9 + 4518,
          *(v9[6] + 8216) = v9 + 4522,
          *(v9[6] + 8224) = v9 + 4526,
          *(v9[6] + 8232) = v9 + 4530,
          *(v9[6] + 8240) = v9 + 4534,
          *(v9[6] + 8248) = v9 + 4538,
          *(v9[6] + 8256) = v9 + 4542,
          *(v9[6] + 8264) = v9 + 4546,
          *(v9[6] + 8272) = v9 + 4550,
          *(v9[6] + 8280) = v9 + 4554,
          *(v9[6] + 8288) = v9 + 4558,
          *(v9[6] + 8296) = v9 + 4562,
          *(v9[6] + 8304) = v9 + 4566,
          *(v9[6] + 8312) = v9 + 4570,
          *(v9[6] + 8320) = v9 + 4574,
          *(v9[6] + 8328) = v9 + 4578,
          *(v9[6] + 8336) = v9 + 4582,
          *(v9[6] + 8344) = v9 + 4586,
          *(v9[6] + 8352) = v9 + 4590,
          *(v9[6] + 8360) = v9 + 4594,
          *(v9[6] + 8368) = v9 + 4598,
          *(v9[6] + 8376) = v9 + 4602,
          *(v9[6] + 8384) = v9 + 4606,
          *(v9[6] + 8392) = v9 + 4610,
          *(v9[6] + 8400) = v9 + 4614,
          *(v9[6] + 8408) = v9 + 4682,
          *(v9[6] + 8416) = v9 + 4686,
          *(v9[6] + 8424) = v9 + 4690,
          *(v9[6] + 8432) = v9 + 4694,
          *(v9[6] + 8440) = v9 + 4698,
          *(v9[6] + 8448) = v9 + 4702,
          *(v9[6] + 8456) = v9 + 4706,
          *(v9[6] + 8464) = v9 + 4710,
          *(v9[6] + 8472) = v9 + 4714,
          *(v9[6] + 8480) = v9 + 4914,
          *(v9[6] + 8488) = v9 + 4918,
          *(v9[6] + 8496) = v9 + 4970,
          *(v9[6] + 8504) = v9 + 4974,
          *(v9[6] + 8512) = v9 + 5042,
          *(v9[6] + 8520) = v9 + 5066,
          *(v9[6] + 8528) = v9 + 5090,
          *(v9[6] + 8536) = v9 + 5094,
          *(v9[6] + 8544) = v9 + 5098,
          *(v9[6] + 8552) = v9 + 5102,
          *(v9[6] + 8560) = v9 + 5106,
          *(v9[6] + 8568) = v9 + 5110,
          *(v9[6] + 8576) = v9 + 5114,
          *(v9[6] + 8584) = v9 + 5118,
          *(v9[6] + 8592) = v9 + 5122,
          *(v9[6] + 8600) = v9 + 5126,
          *(v9[6] + 8608) = v9 + 5130,
          *(v9[6] + 8616) = v9 + 5134,
          *(v9[6] + 8624) = v9 + 5138,
          *(v9[6] + 8632) = v9 + 5142,
          *(v9[6] + 8640) = v9 + 5146,
          *(v9[6] + 8648) = v9 + 5218,
          *(v9[6] + 8656) = v9 + 5222,
          *(v9[6] + 8664) = v9 + 5322,
          *(v9[6] + 8672) = v9 + 5378,
          *(v9[6] + 8680) = v9 + 5382,
          *(v9[6] + 8688) = v9 + 5386,
          *(v9[6] + 8696) = v9 + 5390,
          *(v9[6] + 8704) = v9 + 5394,
          *(v9[6] + 8712) = v9 + 5398,
          *(v9[6] + 8720) = v9 + 5418,
          *(v9[6] + 8728) = v9 + 5422,
          *(v9[6] + 8736) = v9 + 5426,
          *(v9[6] + 8744) = v9 + 5430,
          *(v9[6] + 8752) = v9 + 5434,
          *(v9[6] + 8760) = v9 + 5438,
          *(v9[6] + 8768) = v9 + 5442,
          *(v9[6] + 8776) = v9 + 5446,
          *(v9[6] + 8784) = v9 + 5450,
          *(v9[6] + 8792) = v9 + 5454,
          *(v9[6] + 8800) = v9 + 5458,
          *(v9[6] + 8808) = v9 + 5462,
          *(v9[6] + 8816) = v9 + 5466,
          *(v9[6] + 8824) = v9 + 5470,
          *(v9[6] + 8832) = v9 + 5474,
          *(v9[6] + 8840) = v9 + 5478,
          *(v9[6] + 8848) = v9 + 5482,
          *(v9[6] + 8856) = v9 + 5486,
          *(v9[6] + 8864) = v9 + 5490,
          *(v9[6] + 8872) = v9 + 5494,
          *(v9[6] + 8880) = v9 + 5498,
          *(v9[6] + 8888) = v9 + 5502,
          *(v9[6] + 8896) = v9 + 5506,
          *(v9[6] + 8904) = v9 + 5510,
          *(v9[6] + 8912) = v9 + 5514,
          *(v9[6] + 8920) = v9 + 5518,
          *(v9[6] + 8928) = v9 + 5522,
          *(v9[6] + 8936) = v9 + 5526,
          *(v9[6] + 8944) = v9 + 5530,
          *(v9[6] + 8952) = v9 + 5534,
          *(v9[6] + 8960) = v9 + 5538,
          *(v9[6] + 8968) = v9 + 5542,
          *(v9[6] + 8976) = v9 + 5546,
          *(v9[6] + 8984) = v9 + 5550,
          *(v9[6] + 8992) = v9 + 5554,
          *(v9[6] + 9000) = v9 + 5558,
          *(v9[6] + 9008) = v9 + 5562,
          *(v9[6] + 9016) = v9 + 5566,
          *(v9[6] + 9024) = v9 + 5570,
          *(v9[6] + 9032) = v9 + 5574,
          *(v9[6] + 9040) = v9 + 5578,
          *(v9[6] + 9048) = v9 + 5582,
          *(v9[6] + 9056) = v9 + 5586,
          *(v9[6] + 9064) = v9 + 5590,
          *(v9[6] + 9072) = v9 + 5594,
          *(v9[6] + 9080) = v9 + 5598,
          *(v9[6] + 9088) = v9 + 5602,
          *(v9[6] + 9096) = v9 + 5606,
          *(v9[6] + 9104) = v9 + 5610,
          *(v9[6] + 9112) = v9 + 5614,
          *(v9[6] + 9120) = v9 + 5618,
          *(v9[6] + 9128) = v9 + 5622,
          *(v9[6] + 9136) = v9 + 5626,
          *(v9[6] + 9144) = v9 + 5630,
          *(v9[6] + 9152) = v9 + 5634,
          *(v9[6] + 9160) = v9 + 5638,
          *(v9[6] + 9168) = v9 + 5642,
          *(v9[6] + 9176) = v9 + 5646,
          *(v9[6] + 9184) = v9 + 5650,
          *(v9[6] + 9192) = v9 + 5654,
          *(v9[6] + 9200) = v9 + 5658,
          *(v9[6] + 9208) = v9 + 5662,
          *(v9[6] + 9216) = v9 + 5666,
          *(v9[6] + 9224) = v9 + 5670,
          *(v9[6] + 9232) = v9 + 5674,
          *(v9[6] + 9240) = v9 + 5678,
          *(v9[6] + 9248) = v9 + 5682,
          *(v9[6] + 9256) = v9 + 5686,
          *(v9[6] + 9264) = v9 + 5690,
          *(v9[6] + 9272) = v9 + 5694,
          *(v9[6] + 9280) = v9 + 5698,
          *(v9[6] + 9288) = v9 + 5702,
          *(v9[6] + 9296) = v9 + 5706,
          *(v9[6] + 9304) = v9 + 5710,
          *(v9[6] + 9312) = v9 + 5714,
          *(v9[6] + 9320) = v9 + 5718,
          *(v9[6] + 9328) = v9 + 5722,
          *(v9[6] + 9336) = v9 + 5726,
          *(v9[6] + 9344) = v9 + 5730,
          *(v9[6] + 9352) = v9 + 5734,
          *(v9[6] + 9360) = v9 + 5738,
          *(v9[6] + 9368) = v9 + 5922,
          *(v9[6] + 9376) = v9 + 5926,
          *(v9[6] + 9384) = v9 + 5930,
          *(v9[6] + 9392) = v9 + 5934,
          *(v9[6] + 9400) = v9 + 5938,
          *(v9[6] + 9408) = v9 + 5942,
          *(v9[6] + 9416) = v9 + 5946,
          *(v9[6] + 9424) = v9 + 5950,
          *(v9[6] + 9432) = v9 + 5954,
          *(v9[6] + 9440) = v9 + 5958,
          *(v9[6] + 9448) = v9 + 5962,
          *(v9[6] + 9456) = v9 + 5966,
          *(v9[6] + 9464) = v9 + 5970,
          *(v9[6] + 9472) = v9 + 5974,
          *(v9[6] + 9480) = v9 + 6010,
          v15 = malloc_type_malloc(0x390uLL, 0x80040B8603338uLL),
          (v9[7] = v15) != 0))
    {
      *v15 = v9 + 130;
      *(v9[7] + 8) = v9 + 132;
      *(v9[7] + 16) = v9 + 134;
      *(v9[7] + 24) = v9 + 136;
      *(v9[7] + 32) = v9 + 138;
      *(v9[7] + 40) = v9 + 140;
      *(v9[7] + 48) = v9 + 220;
      *(v9[7] + 56) = v9 + 222;
      *(v9[7] + 64) = v9 + 263;
      *(v9[7] + 72) = v9 + 265;
      *(v9[7] + 80) = v9 + 267;
      *(v9[7] + 88) = v9 + 269;
      *(v9[7] + 96) = v9 + 271;
      *(v9[7] + 104) = v9 + 273;
      *(v9[7] + 112) = v9 + 275;
      *(v9[7] + 120) = v9 + 277;
      *(v9[7] + 128) = v9 + 279;
      *(v9[7] + 136) = v9 + 281;
      *(v9[7] + 144) = v9 + 283;
      *(v9[7] + 152) = v9 + 423;
      *(v9[7] + 160) = v9 + 425;
      *(v9[7] + 168) = v9 + 467;
      *(v9[7] + 176) = v9 + 503;
      *(v9[7] + 184) = v9 + 508;
      *(v9[7] + 192) = v9 + 510;
      *(v9[7] + 200) = v9 + 512;
      *(v9[7] + 208) = v9 + 514;
      *(v9[7] + 216) = v9 + 516;
      *(v9[7] + 224) = v9 + 518;
      *(v9[7] + 232) = v9 + 520;
      *(v9[7] + 240) = v9 + 522;
      *(v9[7] + 248) = v9 + 524;
      *(v9[7] + 256) = v9 + 526;
      *(v9[7] + 264) = v9 + 534;
      *(v9[7] + 272) = v9 + 580;
      *(v9[7] + 280) = v9 + 582;
      *(v9[7] + 288) = v9 + 618;
      *(v9[7] + 296) = v9 + 620;
      *(v9[7] + 304) = v9 + 632;
      *(v9[7] + 312) = v9 + 645;
      *(v9[7] + 320) = v9 + 647;
      *(v9[7] + 328) = v9 + 649;
      *(v9[7] + 336) = v9 + 667;
      *(v9[7] + 344) = v9 + 669;
      *(v9[7] + 352) = v9 + 671;
      *(v9[7] + 360) = v9 + 676;
      *(v9[7] + 368) = v9 + 719;
      *(v9[7] + 376) = v9 + 721;
      *(v9[7] + 384) = v9 + 723;
      *(v9[7] + 392) = v9 + 725;
      *(v9[7] + 400) = v9 + 727;
      *(v9[7] + 408) = v9 + 729;
      *(v9[7] + 416) = v9 + 731;
      *(v9[7] + 424) = v9 + 733;
      *(v9[7] + 432) = v9 + 735;
      *(v9[7] + 440) = v9 + 737;
      *(v9[7] + 448) = v9 + 739;
      *(v9[7] + 456) = v9 + 130;
      *(v9[7] + 464) = v9 + 132;
      *(v9[7] + 472) = v9 + 134;
      *(v9[7] + 480) = v9 + 136;
      *(v9[7] + 488) = v9 + 138;
      *(v9[7] + 496) = v9 + 140;
      *(v9[7] + 504) = v9 + 220;
      *(v9[7] + 512) = v9 + 222;
      *(v9[7] + 520) = v9 + 263;
      *(v9[7] + 528) = v9 + 265;
      *(v9[7] + 536) = v9 + 267;
      *(v9[7] + 544) = v9 + 269;
      *(v9[7] + 552) = v9 + 271;
      *(v9[7] + 560) = v9 + 273;
      *(v9[7] + 568) = v9 + 275;
      *(v9[7] + 576) = v9 + 277;
      *(v9[7] + 584) = v9 + 279;
      *(v9[7] + 592) = v9 + 281;
      *(v9[7] + 600) = v9 + 283;
      *(v9[7] + 608) = v9 + 423;
      *(v9[7] + 616) = v9 + 425;
      *(v9[7] + 624) = v9 + 467;
      *(v9[7] + 632) = v9 + 503;
      *(v9[7] + 640) = v9 + 508;
      *(v9[7] + 648) = v9 + 510;
      *(v9[7] + 656) = v9 + 512;
      *(v9[7] + 664) = v9 + 514;
      *(v9[7] + 672) = v9 + 516;
      *(v9[7] + 680) = v9 + 518;
      *(v9[7] + 688) = v9 + 520;
      *(v9[7] + 696) = v9 + 522;
      *(v9[7] + 704) = v9 + 524;
      *(v9[7] + 712) = v9 + 526;
      *(v9[7] + 720) = v9 + 534;
      *(v9[7] + 728) = v9 + 580;
      *(v9[7] + 736) = v9 + 582;
      *(v9[7] + 744) = v9 + 618;
      *(v9[7] + 752) = v9 + 620;
      *(v9[7] + 760) = v9 + 632;
      *(v9[7] + 768) = v9 + 645;
      *(v9[7] + 776) = v9 + 647;
      *(v9[7] + 784) = v9 + 649;
      *(v9[7] + 792) = v9 + 667;
      *(v9[7] + 800) = v9 + 669;
      *(v9[7] + 808) = v9 + 671;
      *(v9[7] + 816) = v9 + 676;
      *(v9[7] + 824) = v9 + 719;
      *(v9[7] + 832) = v9 + 721;
      *(v9[7] + 840) = v9 + 723;
      *(v9[7] + 848) = v9 + 725;
      *(v9[7] + 856) = v9 + 727;
      *(v9[7] + 864) = v9 + 729;
      *(v9[7] + 872) = v9 + 731;
      *(v9[7] + 880) = v9 + 733;
      *(v9[7] + 888) = v9 + 735;
      *(v9[7] + 896) = v9 + 737;
      *(v9[7] + 904) = v9 + 739;
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