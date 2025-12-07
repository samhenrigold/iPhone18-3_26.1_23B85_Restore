uint64_t OUTLINED_FUNCTION_18_9()
{

  return lpta_rpta_loadp(v0, v0 + 344, v0 + 1256);
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return savetok(v0, (v0 + 1904));
}

void *fence_16(uint64_t a1, int a2, uint64_t a3)
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

void normalize_text(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v154 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_16_12(v4, v5, v6, v7, v8, v9, v10, v11, v131, v133[0], v133[1], v133[2], v133[3], v133[4], v133[5], v133[6], v133[7], v133[8], v133[9], v133[10], v133[11], v133[12], v133[13], v133[14], v133[15], v133[16], v133[17], v133[18], v133[19], v133[20], v133[21], v133[22], v134[0], v134[1], v135, v136, v137, v138);
  OUTLINED_FUNCTION_57_1();
  bzero(v153, v12);
  v13 = setjmp(v153);
  if (v13 || OUTLINED_FUNCTION_92_0(v13, v133, v14, v15, v16, v17, v18, v19, v132, v133[0], v133[1], v133[2], v133[3], v133[4], v133[5], v133[6], v133[7], v133[8], v133[9], v133[10], v133[11], v133[12], v133[13], v133[14], v133[15], v133[16], v133[17], v133[18], v133[19], v133[20], v133[21], v133[22], v134[0], v134[1], v135, v136, v137, v138, v139, v140, v141[0], v141[1], v142[0], v142[1], v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153[0]))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_72_1();
  get_parm(v20, v21, v22, -6);
  OUTLINED_FUNCTION_62_1(v23, v141);
  v24 = OUTLINED_FUNCTION_107();
  push_ptr_init(v24, v25);
  v26 = OUTLINED_FUNCTION_87_1();
  push_ptr_init(v26, v27);
  v28 = OUTLINED_FUNCTION_86_1();
  push_ptr_init(v28, v29);
  v30 = OUTLINED_FUNCTION_104();
  push_ptr_init(v30, v31);
  fence_16(v3, 0, &_MergedGlobals_1_0);
  v140 = *(v3 + 3352);
  v138 = v140;
  if (*(v3 + 2386) == 1 && !lpta_loadp_setscan_r(v3, v142, 1))
  {
    *(v3 + 136) = 1;
    v32 = OUTLINED_FUNCTION_12_14();
    if (!test_ptr(v32, v33, v34))
    {
      goto LABEL_56;
    }
  }

  OUTLINED_FUNCTION_153();
LABEL_8:
  *(v3 + 2430) = 0;
  count_input(v3, v3 + 2424);
LABEL_9:
  v35 = OUTLINED_FUNCTION_55_1();
  startloop(v35, v36);
  lpta_loadpn(v3, v142);
  OUTLINED_FUNCTION_96_0();
  lpta_mover();
  v37 = OUTLINED_FUNCTION_64_1();
  lpta_storep(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_140();
  lpta_loadpn(v40, v41);
  OUTLINED_FUNCTION_96_0();
  lpta_mover();
  v42 = OUTLINED_FUNCTION_74_1();
  lpta_storep(v42, v43, v44);
  while (1)
  {
    while (1)
    {
LABEL_10:
      v45 = OUTLINED_FUNCTION_64_1();
      if (forall_to_test(v45, v46, &v135))
      {
LABEL_13:
        while (2)
        {
          v53 = *(v3 + 104);
          if (v53)
          {
            v54 = OUTLINED_FUNCTION_65_1(v53);
          }

          else
          {
            v55 = OUTLINED_FUNCTION_130();
            v54 = vback(v55, v56);
          }

          switch(v54)
          {
            case 1:
              goto LABEL_8;
            case 3:
              goto LABEL_9;
            case 5:
              goto LABEL_19;
            case 6:
              OUTLINED_FUNCTION_115();
              if (forto_adv_upto_r(v3, v57, 5, 41, 1, &v139))
              {
                continue;
              }

              break;
            case 7:
              goto LABEL_20;
            case 8:
              goto LABEL_21;
            case 9:
              goto LABEL_22;
            case 10:
              goto LABEL_41;
            case 11:
              goto LABEL_23;
            case 12:
              goto LABEL_24;
            case 13:
              goto LABEL_25;
            case 14:
              goto LABEL_10;
            case 15:
              goto LABEL_26;
            case 16:
              goto LABEL_27;
            case 17:
              goto LABEL_28;
            case 18:
              goto LABEL_29;
            case 19:
              goto LABEL_30;
            case 20:
              goto LABEL_31;
            case 21:
              goto LABEL_32;
            case 22:
              goto LABEL_33;
            case 23:
              goto LABEL_34;
            case 24:
              goto LABEL_35;
            case 25:
              goto LABEL_36;
            case 26:
              goto LABEL_37;
            case 27:
              goto LABEL_38;
            case 28:
              goto LABEL_39;
            case 29:
              goto LABEL_40;
            case 30:
              goto LABEL_42;
            case 31:
              goto LABEL_44;
            case 32:
              goto LABEL_47;
            case 33:
              goto LABEL_48;
            case 34:
              goto LABEL_50;
            case 35:
              goto LABEL_51;
            case 36:
              goto LABEL_55;
            case 40:
              goto LABEL_52;
            case 41:
              goto LABEL_11;
            default:
              goto LABEL_3;
          }

          goto LABEL_3;
        }
      }

LABEL_11:
      v47 = OUTLINED_FUNCTION_112();
      bspush_ca(v47);
      v48 = OUTLINED_FUNCTION_64_1();
      if (lpta_loadp_setscan_r(v48, v49, 1) || advance_tok(v3, v50, v51, v52))
      {
        goto LABEL_13;
      }

LABEL_19:
      OUTLINED_FUNCTION_64_1();
      reset_token_vars();
LABEL_20:
      v58 = OUTLINED_FUNCTION_64_1();
      merge_adjacent_spaces(v58, v59, v60, v61);
LABEL_21:
      v62 = OUTLINED_FUNCTION_17_11();
      if (!space(v64, v62, v63))
      {
        break;
      }

LABEL_22:
      v65 = OUTLINED_FUNCTION_17_11();
      process_annotation(v65, v66, v67);
      if (!v68)
      {
        break;
      }

LABEL_23:
      v69 = OUTLINED_FUNCTION_17_11();
      ellipsis(v69, v70, v71);
      if (!v72)
      {
        break;
      }

LABEL_24:
      v73 = OUTLINED_FUNCTION_64_1();
      three_letter_extension(v73, v74, v75, v76);
      if (v77)
      {
LABEL_25:
        v78 = OUTLINED_FUNCTION_17_11();
        interpret_single_char_modes(v78, v79, v80);
        if (!v81)
        {
          break;
        }

LABEL_26:
        v82 = OUTLINED_FUNCTION_64_1();
        tok_lookup(v82, v83, v84, v85);
        if (v86)
        {
LABEL_27:
          v87 = OUTLINED_FUNCTION_17_11();
          if (!punctuation(v87))
          {
            break;
          }

LABEL_28:
          v88 = OUTLINED_FUNCTION_17_11();
          if (!parenthesis(v88))
          {
            break;
          }

LABEL_29:
          v89 = OUTLINED_FUNCTION_17_11();
          apostrophe(v89, v90, v91);
          if (!v92)
          {
            break;
          }

LABEL_30:
          v93 = OUTLINED_FUNCTION_64_1();
          if (email_address(v93))
          {
LABEL_31:
            v94 = OUTLINED_FUNCTION_64_1();
            URL(v94, v95, v96, v97);
            if (v98)
            {
LABEL_32:
              v99 = OUTLINED_FUNCTION_64_1();
              if (is_pathname(v99))
              {
LABEL_33:
                v100 = OUTLINED_FUNCTION_17_11();
                if (letter_sequence(v100))
                {
LABEL_34:
                  OUTLINED_FUNCTION_17_11();
                  if (convert_digits_to_words())
                  {
LABEL_35:
                    v101 = OUTLINED_FUNCTION_17_11();
                    hyphen(v101, v102, v103);
                    if (v104)
                    {
LABEL_36:
                      v105 = OUTLINED_FUNCTION_17_11();
                      slash(v105, v106, v107);
                      if (v108)
                      {
LABEL_37:
                        v109 = OUTLINED_FUNCTION_17_11();
                        quote_mark(v109, v110, v111);
                        if (v112)
                        {
LABEL_38:
                          v113 = OUTLINED_FUNCTION_17_11();
                          if (span_inverted_punct(v113))
                          {
LABEL_39:
                            v114 = OUTLINED_FUNCTION_17_11();
                            if (bracket(v114))
                            {
LABEL_40:
                              v115 = OUTLINED_FUNCTION_17_11();
                              misc_chars(v115, v116, v117);
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
          }
        }
      }

      forall_cont_from();
    }

LABEL_41:
    v118 = OUTLINED_FUNCTION_17_11();
    init_ptr_End_reproc_string(v118);
LABEL_42:
    if (*(v3 + 2614) - 10 >= 0xFFFFFFF7)
    {
      OUTLINED_FUNCTION_17_11();
      build_words();
    }

LABEL_44:
    *(v3 + 2456) = v138;
    v119 = OUTLINED_FUNCTION_91_0();
    lpta_loadpn(v119, v120);
    rpta_loadpn(v3, v3 + 1384);
    if (!compare_ptas(v3) && !testeq(v3))
    {
      *(v3 + 2430) = 1;
    }

LABEL_47:
    v121 = OUTLINED_FUNCTION_91_0();
    if (!forced_synthesis(v121, v122))
    {
      goto LABEL_3;
    }

LABEL_48:
    if (*(v3 + 2538))
    {
      v123 = OUTLINED_FUNCTION_17_11();
      build_phrases(v123, v124, v125);
    }

LABEL_50:
    if (*(v3 + 2430) == 1)
    {
      break;
    }

LABEL_51:
    if (*(v3 + 2390) == 1)
    {
      goto LABEL_3;
    }

LABEL_52:
    v126 = OUTLINED_FUNCTION_91_0();
    lpta_loadpn(v126, v127);
    OUTLINED_FUNCTION_96_0();
    lpta_mover();
    v128 = OUTLINED_FUNCTION_81_1();
    lpta_storep(v128, v129, v130);
    forall_cont_from();
  }

  if (!*(v3 + 2386))
  {
    create_final_sync(v3);
    goto LABEL_3;
  }

LABEL_55:
  if (*(v3 + 2390))
  {
    goto LABEL_3;
  }

LABEL_56:
  handle_end_of_delta();
LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_113();
}

uint64_t handle_end_of_delta()
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_20_8(v2, v3, v4, v5, v6, v7, v8, v9, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v10, v11, v12, v13, v14, v15, v16, v17, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v149, v151, v153, v155);
  v18 = setjmp(v1);
  if (v18)
  {
    goto LABEL_3;
  }

  v26 = OUTLINED_FUNCTION_25_8(v18, v19, v20, v21, v22, v23, v24, v25, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v150, SHIDWORD(v150), v152, SWORD2(v152), SHIWORD(v152), v154, SWORD2(v154), SBYTE6(v154), SHIBYTE(v154), v156, v157);
  if (v26)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_19_9(v26, v27, v28, v29, v30, v31, v32, v33, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145);
  v35 = OUTLINED_FUNCTION_73_1();
  fence_16(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_42_1();
  starttest(v38, v39);
  bspush_ca_boa();
  v40 = OUTLINED_FUNCTION_55_1();
  if (!lpta_loadp_setscan_l(v40, v41, 2))
  {
    advance_tok(v0, v42, v43, v44);
  }

  v45 = *(v0 + 104);
  if (v45)
  {
    v46 = OUTLINED_FUNCTION_65_1(v45);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_130();
    v46 = vback(v47, v48);
  }

  if (v46 != 3)
  {
    if (v46 == 2)
    {
      bspop_boa(v0);
      *(v0 + 2446) = 1;
    }

    else
    {
      if (v46 != 1)
      {
LABEL_3:
        vretproc(v0);
        return 94;
      }

      v49 = OUTLINED_FUNCTION_66_1();
      create_sentence(v49);
    }
  }

  vretproc(v0);
  return 0;
}

uint64_t reset_token_vars()
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_20_8(v2, v3, v4, v5, v6, v7, v8, v9, v39, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v10, v11, v12, v13, v14, v15, v16, v17, v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v138, v140, v142, v144);
  v18 = setjmp(v1);
  if (v18 || (v26 = OUTLINED_FUNCTION_25_8(v18, v19, v20, v21, v22, v23, v24, v25, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v139, SHIDWORD(v139), v141, SWORD2(v141), SHIWORD(v141), v143, SWORD2(v143), SBYTE6(v143), SHIBYTE(v143), v145, v146), v26))
  {
    vretproc(v0);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_43_1(v26, v27, v28, v29, v30, v31, v32, v33, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134);
    v35 = OUTLINED_FUNCTION_73_1();
    fence_16(v35, v36, v37);
    v0[1453] = 0;
    v38 = v0[1455];
    if (v38 != 1)
    {
      LOWORD(v38) = v0[1457] == 1 && !v0[1307];
    }

    v0[1457] = v38;
    v0[1455] = 0;
    if (v0[1307])
    {
      v0[1305] = v0[1307];
    }

    v0[1307] = 0;
    v0[1335] = 0;
    v0[1349] = 0;
    v0[1449] = 0;
    v0[1411] = 0;
    v0[1269] = 0;
    v0[1395] = 0;
    v0[1309] = 0;
    v0[1257] = 0;
    v0[1403] = 0;
    vretproc(v0);
    return 0;
  }
}

void merge_adjacent_spaces(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v58 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v6, v7, v8, v9, v10, v11, v12, v13, v50, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v53, v54, v55[0], v55[1], v56[0], v56[1]);
  OUTLINED_FUNCTION_57_1();
  bzero(v57, v14);
  v15 = setjmp(v57);
  if (!v15 && !OUTLINED_FUNCTION_34_3(v15, v52, v16, v17, v18, v19, v20, v21, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v53, v54, v55[0], v55[1], v56[0], v56[1], v56[2], SHIDWORD(v56[2]), v56[3], SWORD2(v56[3]), SHIWORD(v56[3]), v56[4], SWORD2(v56[4]), SBYTE6(v56[4]), SHIBYTE(v56[4]), v56[5], v57[0]))
  {
    OUTLINED_FUNCTION_21_8();
    v22 = OUTLINED_FUNCTION_86_1();
    push_ptr_init(v22, v23);
    v24 = OUTLINED_FUNCTION_104();
    push_ptr_init(v24, v25);
    v26 = OUTLINED_FUNCTION_73_1();
    fence_16(v26, v27, v28);
    OUTLINED_FUNCTION_103();
    v29 = OUTLINED_FUNCTION_55_1();
    if (!lpta_loadp_setscan_l(v29, v30, v5))
    {
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
        v31 = 0;
        OUTLINED_FUNCTION_143();
        while (2)
        {
          v32 = OUTLINED_FUNCTION_55_1();
          savescptr(v32, v33, v34);
          OUTLINED_FUNCTION_47_1();
          v35 = test_string_s();
          v36 = v31;
          if (!v35)
          {
LABEL_8:
            v37 = OUTLINED_FUNCTION_112();
            savescptr(v37, v38, v55);
            v39 = OUTLINED_FUNCTION_142();
            starttest_l(v39, v40);
            OUTLINED_FUNCTION_84_1();
            bspush_ca_boa();
            if (lpta_loadp_setscan_l(v4, &v53, 0))
            {
              v36 = v31;
            }

            else
            {
              v36 = 1;
            }
          }

          v31 = v36;
LABEL_12:
          v41 = v4[13];
          if (v41)
          {
            OUTLINED_FUNCTION_65_1(v41);
          }

          else
          {
            vback(v4, v31);
            v31 = 0;
          }

          OUTLINED_FUNCTION_152();
          if (!(!v44 & v43))
          {
            switch(v42)
            {
              case 1:
                continue;
              case 2:
                goto LABEL_8;
              case 3:
                bspop_boa(v4);
                v45 = OUTLINED_FUNCTION_74_1();
                lpta_rpta_loadp(v45, v46, v56);
                v47 = OUTLINED_FUNCTION_47_1();
                if (insert_2pt_s(v47, v48, v49, &_MergedGlobals_10, 0))
                {
                  goto LABEL_12;
                }

                break;
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
  vretproc(v4);
  OUTLINED_FUNCTION_113();
}

std::__fs::filesystem::space_info *__cdecl space(std::__fs::filesystem::space_info *__return_ptr retstr, const std::__fs::filesystem::path *__p, std::error_code *__ec)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v5, v6, v7, v8, v9, v10, v11, v12, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v179, v182);
  OUTLINED_FUNCTION_26_8(v13, v14, v15, v16, v17, v18, v19, v20, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v180, v183, v185, v187, v189, v191);
  if (!setjmp(v4))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v21, v22, v23, v24, v25, v26, v27, v28, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v181, v184, v186, v188, v190, v192))
    {
      v29 = OUTLINED_FUNCTION_13_14();
      get_parm(v29, v30, v31, -6);
      OUTLINED_FUNCTION_43_1(v32, v33, v34, v35, v36, v37, v38, v39, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173);
      fence_16(v3, 0, &_MergedGlobals_1_0);
      v40 = OUTLINED_FUNCTION_29_5();
      if (!lpta_loadp_setscan_r(v40, v41, v42))
      {
        OUTLINED_FUNCTION_4_14();
        if (!test_string_s())
        {
          OUTLINED_FUNCTION_75_1();
          v44 = OUTLINED_FUNCTION_83_1();
          savescptr(v44, v45, v46);
          OUTLINED_FUNCTION_61_1(v47, v48, v49, v50, v51, v52, v53, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v178);
        }
      }
    }
  }

  vretproc(v3);
  return OUTLINED_FUNCTION_105();
}

void ellipsis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  v60 = v4;
  OUTLINED_FUNCTION_76_1();
  v78 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v62, v5);
  OUTLINED_FUNCTION_57_1();
  bzero(v77, v6);
  v7 = setjmp(v77);
  if (v7)
  {
    goto LABEL_4;
  }

  v14 = OUTLINED_FUNCTION_69_1(v7, v62, v8, v9, v10, v11, v12, v13, v56, v57, v58, v59, v60, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v62[17], v62[18], v62[19], v62[20], v62[21], v62[22], v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77[0]);
  if (v14)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_62_1(v14, &v65);
  v15 = OUTLINED_FUNCTION_87_1();
  get_parm(v15, v16, v61, -6);
  fence_16(v3, 0, &_MergedGlobals_1_0);
  if (*(v3 + 2754) == *(v3 + 2742))
  {
    goto LABEL_4;
  }

  while (2)
  {
    v17 = OUTLINED_FUNCTION_134();
    starttest(v17, v18);
    v19 = OUTLINED_FUNCTION_141();
    if (lpta_loadp_setscan_r(v19, v20, 1))
    {
LABEL_4:
      vretproc(v3);
      goto LABEL_5;
    }

    v21 = OUTLINED_FUNCTION_111();
    bspush_ca_scan(v21, v22);
    OUTLINED_FUNCTION_108();
    if (!test_string_s())
    {
LABEL_28:
      while (1)
      {
        OUTLINED_FUNCTION_47_1();
        if (test_string_s())
        {
          break;
        }

        v47 = OUTLINED_FUNCTION_70_1();
        bspush_ca_scan(v47, v48);
      }
    }

LABEL_8:
    v23 = *(v3 + 104);
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_65_1(v23);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_133();
    }

    switch(v24)
    {
      case 1:
        continue;
      case 2:
      case 12:
      case 13:
      case 16:
        goto LABEL_32;
      case 4:
        v43 = OUTLINED_FUNCTION_106();
        bspush_ca_scan(v43, v44);
        OUTLINED_FUNCTION_108();
        if (test_string_s())
        {
          goto LABEL_8;
        }

        goto LABEL_25;
      case 5:
      case 7:
      case 9:
        v25 = OUTLINED_FUNCTION_112();
        savescptr(v25, v26, &v63);
        *(v3 + 2614) = *(v3 + 2658);
        *(v3 + 136) = 1;
        OUTLINED_FUNCTION_12_14();
        if (lpta_tstctxtl())
        {
          goto LABEL_14;
        }

        v27 = OUTLINED_FUNCTION_135();
        setscan_l(v27, v28, v29);
        if (v30)
        {
          goto LABEL_14;
        }

        v55 = OUTLINED_FUNCTION_87_1();
        skip_punct_and_delimiters(v55);
        goto LABEL_32;
      case 6:
        goto LABEL_28;
      case 8:
        while (1)
        {
          OUTLINED_FUNCTION_47_1();
          if (test_string_s())
          {
            break;
          }

          bspush_ca_scan(v3, 7);
        }

        goto LABEL_8;
      case 10:
LABEL_25:
        while (1)
        {
          OUTLINED_FUNCTION_108();
          if (test_string_s())
          {
            break;
          }

          v45 = OUTLINED_FUNCTION_84_1();
          bspush_ca_scan(v45, v46);
        }

        goto LABEL_8;
      case 11:
LABEL_14:
        v31 = OUTLINED_FUNCTION_81_1();
        skip_delimiters(v31);
        goto LABEL_15;
      case 14:
LABEL_15:
        v32 = OUTLINED_FUNCTION_71_1();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_81_1();
        if (lpta_loadp_setscan_r(v34, v35, 1))
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_116();
        if (testFldeq(v36, v37, v38, v39) || advance_tok(v3, v40, v41, v42))
        {
          goto LABEL_8;
        }

        v50 = OUTLINED_FUNCTION_53_1();
        if (!lpta_loadp_setscan_r(v50, v51, v52))
        {
          OUTLINED_FUNCTION_4_14();
          if (!test_string_s())
          {
            *(v3 + 2766) = *(v3 + 2770);
            v54 = OUTLINED_FUNCTION_87_1();
            punctuation(v54);
          }
        }

        break;
      case 15:
LABEL_30:
        v49 = OUTLINED_FUNCTION_87_1();
        build_phrase_final_structure(v49);
        goto LABEL_31;
      case 17:
LABEL_31:
        *(v3 + 2766) = *(v3 + 2770);
        break;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_32:
  *(v61 + 8) = v64;
  vretproc(v3);
LABEL_5:
  OUTLINED_FUNCTION_113();
}

void three_letter_extension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v82 = *MEMORY[0x277D85DE8];
  v77[0] = 0;
  v77[1] = 0;
  v76[0] = 0;
  v76[1] = 0;
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v71, v5);
  OUTLINED_FUNCTION_57_1();
  bzero(v81, v6);
  if (!setjmp(v81))
  {
    v7 = ventproc(v4, v71, v80, v79, v78, v81);
    if (!v7)
    {
      OUTLINED_FUNCTION_62_1(v7, v77);
      push_ptr_init(v4, v76);
      v8 = OUTLINED_FUNCTION_128();
      push_ptr_init(v8, v9);
      push_ptr_init(v4, v74);
      v10 = OUTLINED_FUNCTION_107();
      push_ptr_init(v10, v11);
      fence_16(v4, 0, &_MergedGlobals_1_0);
      if (*(v4 + 2746) == *(v4 + 2742))
      {
        v12 = 0;
        OUTLINED_FUNCTION_166();
        v70 = v13;
        while (2)
        {
          starttest(v4, v13);
          v14 = OUTLINED_FUNCTION_74_1();
          bspush_ca(v14);
          v15 = OUTLINED_FUNCTION_70_1();
          v17 = lpta_loadp_setscan_l(v15, v16, 2);
          v18 = v12;
          if (!v17)
          {
LABEL_6:
            v12 = v18;
            v19 = OUTLINED_FUNCTION_74_1();
            if (!lpta_loadp_setscan_r(v19, v20, 1))
            {
              OUTLINED_FUNCTION_4_14();
              v21 = test_string_s();
              v22 = v12;
              if (!v21)
              {
LABEL_8:
                v12 = v22;
                v23 = OUTLINED_FUNCTION_134();
                savescptr(v23, v24, v76);
                v25 = OUTLINED_FUNCTION_111();
                bspush_ca_scan(v25, v26);
                v27 = OUTLINED_FUNCTION_106();
                bspush_ca_scan(v27, v28);
                v29 = OUTLINED_FUNCTION_51_1();
                v31 = testFldeq(v29, v30, 3, 1);
                v32 = v12;
                if (!v31)
                {
LABEL_9:
                  v12 = v32;
                  bspush_ca_scan_boa();
                  v33 = OUTLINED_FUNCTION_51_1();
                  if (!testFldeq(v33, v34, 0, 73))
                  {
                    v12 = 1;
                  }
                }
              }
            }
          }

          v35 = v12;
LABEL_12:
          v36 = *(v4 + 104);
          if (v36)
          {
            v37 = OUTLINED_FUNCTION_65_1(v36);
            v12 = v38;
          }

          else
          {
            v37 = vback(v4, v35);
            v12 = 0;
          }

          v18 = v12;
          switch(v37)
          {
            case 1:
              v13 = v70;
              continue;
            case 2:
              *(v4 + 2504) = v73;
              *(v4 + 2726) = *(v4 + 2730);
              vretproc(v4);
              goto LABEL_34;
            case 4:
              v39 = OUTLINED_FUNCTION_74_1();
              v41 = lpta_loadp_setscan_l(v39, v40, 1);
              v35 = v12;
              if (!v41)
              {
                OUTLINED_FUNCTION_4_14();
                v42 = test_string_s();
                v18 = v12;
                v35 = v12;
                if (!v42)
                {
                  goto LABEL_6;
                }
              }

              goto LABEL_12;
            case 5:
              goto LABEL_6;
            case 6:
              v22 = v12;
              goto LABEL_8;
            case 7:
              OUTLINED_FUNCTION_4_14();
              v50 = test_string_s();
              v35 = v12;
              if (v50)
              {
                goto LABEL_12;
              }

              goto LABEL_23;
            case 8:
              goto LABEL_29;
            case 9:
              bspop_boa(v4);
              v64 = advance_tok(v4, v61, v62, v63);
              v35 = v12;
              if (v64)
              {
                goto LABEL_12;
              }

              goto LABEL_28;
            case 10:
LABEL_28:
              v65 = OUTLINED_FUNCTION_54_1();
              savescptr(v65, v66, v75);
LABEL_29:
              v67 = OUTLINED_FUNCTION_51_1();
              v69 = testFldeq(v67, v68, 3, 1);
              v35 = v12;
              if (!v69)
              {
                goto LABEL_30;
              }

              goto LABEL_12;
            case 11:
              bspop_boa(v4);
              v46 = advance_tok(v4, v43, v44, v45);
              v35 = v12;
              if (v46)
              {
                goto LABEL_12;
              }

              v47 = OUTLINED_FUNCTION_51_1();
              v49 = testFldeq(v47, v48, 3, 1);
              v35 = v12;
              if (v49)
              {
                goto LABEL_12;
              }

LABEL_30:
              v32 = v12;
              goto LABEL_9;
            case 12:
              bspop_boa(v4);
              v56 = advance_tok(v4, v53, v54, v55);
              v35 = v12;
              if (v56)
              {
                goto LABEL_12;
              }

              goto LABEL_25;
            case 13:
              goto LABEL_25;
            case 14:
LABEL_23:
              v51 = OUTLINED_FUNCTION_81_1();
              savescptr(v51, v52, v74);
LABEL_25:
              v57 = OUTLINED_FUNCTION_91_0();
              savescptr(v57, v58, v72);
              v59 = OUTLINED_FUNCTION_84_1();
              v60 = end_of_word(v59);
              v35 = v12;
              if (!v60)
              {
                goto LABEL_33;
              }

              goto LABEL_12;
            default:
              goto LABEL_33;
          }
        }
      }
    }
  }

LABEL_33:
  vretproc(v4);
LABEL_34:
  OUTLINED_FUNCTION_113();
}

void interpret_single_char_modes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v88[30] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_10(v5, v6, v7, v8, v9, v10, v11, v12, v68, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88[0], v88[1]);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_177(v13, v14, v15, v16, v17, v18, v19, v20, v69, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88[0], v88[1], v88[2], v88[3], v88[4], v88[5]);
  v21 = setjmp(v4);
  if (v21)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_44_1(v21, v71, v22, v23, v24, v25, v26, v27, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88[0], v88[1], v88[2], SHIDWORD(v88[2]), v88[3], SWORD2(v88[3]), SHIWORD(v88[3]), v88[4], SWORD2(v88[4]), SBYTE6(v88[4]), SHIBYTE(v88[4]), v88[5], v88[6]))
  {
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_72_1();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_62_1(v31, &v86);
  fence_16(v3, 0, &_MergedGlobals_1_0);
  v32 = *(v3 + 2742);
  if (*(v3 + 2746) == v32)
  {
    goto LABEL_4;
  }

  while (2)
  {
    if (*(v3 + 2754) == v32)
    {
      v67 = OUTLINED_FUNCTION_124();
      single_chars_token(v67);
      goto LABEL_24;
    }

LABEL_6:
    v33 = OUTLINED_FUNCTION_55_1();
    starttest(v33, v34);
    v35 = OUTLINED_FUNCTION_156();
    if (lpta_loadp_setscan_r(v35, v36, 1))
    {
LABEL_21:
      v60 = OUTLINED_FUNCTION_86_1();
      lpta_loadpn(v60, v61);
      v62 = OUTLINED_FUNCTION_104();
      rpta_loadpn(v62, v63);
      if (!compare_ptas(v3) && !testeq(v3))
      {
        break;
      }

LABEL_23:
      v64 = OUTLINED_FUNCTION_124();
      single_chars(v64, v65, v66);
LABEL_24:
      OUTLINED_FUNCTION_95_0(v87);
      break;
    }

LABEL_7:
    v37 = OUTLINED_FUNCTION_64_1();
    bspush_ca_scan(v37, v38);
LABEL_8:
    v39 = OUTLINED_FUNCTION_81_1();
    savescptr(v39, v40, &v86);
    v41 = OUTLINED_FUNCTION_84_1();
    bspush_ca_scan(v41, v42);
    OUTLINED_FUNCTION_39_1();
    if (!test_string_s())
    {
      goto LABEL_21;
    }

LABEL_9:
    v43 = *(v3 + 104);
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_65_1(v43);
    }

    else
    {
      v44 = OUTLINED_FUNCTION_133();
    }

    switch(v44)
    {
      case 1:
        v32 = *(v3 + 2742);
        continue;
      case 2:
      case 4:
        goto LABEL_24;
      case 3:
        goto LABEL_6;
      case 5:
        goto LABEL_21;
      case 6:
        goto LABEL_7;
      case 7:
        if (!advance_tok(v3, v45, v46, v47))
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      case 8:
        goto LABEL_8;
      case 9:
        v48 = OUTLINED_FUNCTION_91_0();
        bspush_ca_scan(v48, v49);
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_116();
        if (!testFldeq(v50, v51, v52, v53) && !advance_tok(v3, v54, v55, v56))
        {
          goto LABEL_21;
        }

        goto LABEL_9;
      case 10:
        *(v3 + 136) = 1;
        v57 = OUTLINED_FUNCTION_12_14();
        if (!test_ptr(v57, v58, v59))
        {
          goto LABEL_21;
        }

        goto LABEL_9;
      case 11:
        goto LABEL_23;
      default:
        goto LABEL_4;
    }
  }

LABEL_4:
  vretproc(v3);
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_113();
}

void tok_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v222 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v6, v7, v8, v9, v10, v11, v12, v13, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v215, v216, v217);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v14, v15, v16, v17, v18, v19, v20, v21, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v214, v215, v216, v217, v218, v219, v220, v221);
  if (!setjmp(v5))
  {
    OUTLINED_FUNCTION_0_16();
    v30 = OUTLINED_FUNCTION_132(v22, v23, v24, v25, v26, v27, v28, v29, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v214, v215, v216, v217, v218, v219, v220, v221);
    if (!v30)
    {
      OUTLINED_FUNCTION_62_1(v30, &v216);
      v31 = OUTLINED_FUNCTION_66_1();
      push_ptr_init(v31, v32);
      fence_16(v4, 0, &_MergedGlobals_1_0);
      OUTLINED_FUNCTION_88_1();
      if (v33 || (OUTLINED_FUNCTION_180(), OUTLINED_FUNCTION_150(), compare_ptas(v4)) || testneq(v4))
      {
        v34 = 0;
        OUTLINED_FUNCTION_143();
        OUTLINED_FUNCTION_145();
        while (2)
        {
          v35 = OUTLINED_FUNCTION_55_1();
          starttest(v35, v36);
          v37 = OUTLINED_FUNCTION_29_5();
          if (!lpta_loadp_setscan_r(v37, v38, v39))
          {
LABEL_9:
            v40 = OUTLINED_FUNCTION_70_1();
            bspush_ca_scan(v40, v41);
            OUTLINED_FUNCTION_64_1();
            bspush_ca_scan_boa();
            v42 = OUTLINED_FUNCTION_51_1();
            if (testFldeq(v42, v43, 0, 72))
            {
              LODWORD(v44) = v34;
            }

            else
            {
              LODWORD(v44) = 1;
            }

LABEL_12:
            v45 = *(v4 + 104);
            if (v45)
            {
              v46 = OUTLINED_FUNCTION_65_1(v45);
              v49 = v44;
            }

            else
            {
              v46 = vback(v4, v44);
              v49 = 0;
            }

            v34 = v49;
            switch(v46)
            {
              case 1:
                v34 = v49;
                continue;
              case 3:
                OUTLINED_FUNCTION_36_2();
                bspush_ca_scan_boa();
                v50 = OUTLINED_FUNCTION_9_14();
                v53 = 4;
                goto LABEL_53;
              case 4:
                bspop_boa(v4);
                v66 = advance_tok(v4, v63, v64, v65);
                v34 = v49;
                LODWORD(v44) = v49;
                if (!v66)
                {
                  goto LABEL_9;
                }

                goto LABEL_12;
              case 5:
                goto LABEL_9;
              case 6:
                bspop_boa(v4);
                OUTLINED_FUNCTION_27_6();
                bspush_ca_scan_boa();
                v50 = OUTLINED_FUNCTION_6_14();
                v53 = 72;
                goto LABEL_53;
              case 7:
                bspop_boa(v4);
                v72 = advance_tok(v4, v69, v70, v71);
                LODWORD(v44) = v49;
                if (v72)
                {
                  goto LABEL_12;
                }

                goto LABEL_27;
              case 8:
LABEL_27:
                v73 = OUTLINED_FUNCTION_83_1();
                savescptr(v73, v74, v75);
                goto LABEL_28;
              case 9:
LABEL_28:
                v76 = OUTLINED_FUNCTION_45_1();
                starttest(v76, v77);
                v78 = OUTLINED_FUNCTION_31_4();
                if (lpta_loadp_setscan_l(v78, v79, v80))
                {
                  goto LABEL_29;
                }

                goto LABEL_30;
              case 10:
LABEL_29:
                v81 = OUTLINED_FUNCTION_52_1();
                startloop(v81, v82);
                goto LABEL_42;
              case 11:
                v61 = OUTLINED_FUNCTION_32_3();
                bspush_ca_scan(v61, v62);
                goto LABEL_36;
              case 12:
                goto LABEL_37;
              case 13:
                v88 = OUTLINED_FUNCTION_33_3();
                bspush_ca_scan(v88, v89);
                goto LABEL_36;
              case 14:
                v91 = OUTLINED_FUNCTION_46_1();
                bspush_ca_scan(v91, v92);
                goto LABEL_36;
              case 15:
                v67 = OUTLINED_FUNCTION_41_1();
                bspush_ca_scan(v67, v68);
                goto LABEL_36;
              case 16:
                goto LABEL_36;
              case 17:
LABEL_30:
                v83 = OUTLINED_FUNCTION_40_1();
                bspush_ca_scan(v83, v84);
LABEL_36:
                OUTLINED_FUNCTION_4_14();
                v93 = test_string_s();
                LODWORD(v44) = v49;
                if (v93)
                {
                  goto LABEL_12;
                }

LABEL_37:
                v94 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v94, v95);
                OUTLINED_FUNCTION_98_0();
                v96 = OUTLINED_FUNCTION_12_14();
                v99 = test_ptr(v96, v97, v98);
                LODWORD(v44) = v49;
                if (!v99)
                {
                  goto LABEL_3;
                }

                goto LABEL_12;
              case 19:
              case 31:
                goto LABEL_42;
              case 20:
                goto LABEL_44;
              case 21:
                goto LABEL_48;
              case 22:
                goto LABEL_45;
              case 23:
                v90 = OUTLINED_FUNCTION_50_1();
                if (!tok_dict_entry(v90))
                {
                  goto LABEL_3;
                }

                goto LABEL_48;
              case 24:
                bspop_boa(v4);
                goto LABEL_48;
              case 25:
                goto LABEL_49;
              case 26:
                v85 = OUTLINED_FUNCTION_83_1();
                savescptr(v85, v86, v87);
                goto LABEL_49;
              case 27:
                v100 = OUTLINED_FUNCTION_3_15();
                v104 = testFldeq(v100, v101, v102, v103);
                v44 = v49;
                if (v104)
                {
                  goto LABEL_12;
                }

                goto LABEL_40;
              case 28:
                bspop_boa(v4);
                goto LABEL_40;
              case 29:
LABEL_40:
                v105 = advance_tok(v4, v44, v47, v48);
                LODWORD(v44) = v49;
                if (!v105)
                {
                  goto LABEL_51;
                }

                goto LABEL_12;
              case 30:
                goto LABEL_51;
              case 32:
                bspop_boa(v4);
                v57 = advance_tok(v4, v54, v55, v56);
                LODWORD(v44) = v49;
                if (v57)
                {
                  goto LABEL_12;
                }

                goto LABEL_18;
              case 33:
LABEL_18:
                v58 = OUTLINED_FUNCTION_83_1();
                savescptr(v58, v59, v60);
                break;
              default:
                goto LABEL_3;
            }

            while (1)
            {
LABEL_42:
              v106 = OUTLINED_FUNCTION_66_1();
              lpta_loadpn(v106, v107);
              v108 = OUTLINED_FUNCTION_67_1();
              rpta_loadpn(v108, v109);
              if (!compare_ptas(v4) && !testeq(v4))
              {
                goto LABEL_3;
              }

LABEL_44:
              v110 = OUTLINED_FUNCTION_52_1();
              starttest(v110, v111);
              v112 = OUTLINED_FUNCTION_31_4();
              if (lpta_loadp_setscan_l(v112, v113, v114))
              {
                break;
              }

              v119 = OUTLINED_FUNCTION_9_14();
              v122 = testFldeq(v119, v120, v121, 4);
              LODWORD(v44) = v49;
              if (v122)
              {
                goto LABEL_12;
              }

              v125 = advance_tok(v4, v49, v123, v124);
              LODWORD(v44) = v49;
              if (v125)
              {
                goto LABEL_12;
              }

LABEL_48:
              v126 = OUTLINED_FUNCTION_52_1();
              starttest(v126, v127);
              v128 = OUTLINED_FUNCTION_31_4();
              if (!lpta_loadp_setscan_l(v128, v129, v130))
              {
LABEL_51:
                v136 = OUTLINED_FUNCTION_49_1();
                bspush_ca_scan(v136, v137);
                v138 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v138, v139);
                v140 = OUTLINED_FUNCTION_1_15();
                v144 = testFldeq(v140, v141, v142, v143);
                LODWORD(v44) = v49;
                if (v144)
                {
                  goto LABEL_12;
                }

                OUTLINED_FUNCTION_52_1();
                bspush_ca_scan_boa();
                v50 = OUTLINED_FUNCTION_6_14();
                v53 = 73;
LABEL_53:
                v118 = testFldeq(v50, v51, v52, v53);
                goto LABEL_54;
              }

LABEL_49:
              v131 = OUTLINED_FUNCTION_52_1();
              starttest(v131, v132);
              if (!lpta_loadp_setscan_l(v4, &v214, 1))
              {
                OUTLINED_FUNCTION_52_1();
                bspush_ca_scan_boa();
                *(v4 + 136) = 1;
                v133 = OUTLINED_FUNCTION_12_14();
                v118 = test_ptr(v133, v134, v135);
LABEL_54:
                if (v118)
                {
                  LODWORD(v44) = v49;
                }

                else
                {
                  LODWORD(v44) = 1;
                }

                goto LABEL_12;
              }
            }

LABEL_45:
            v115 = OUTLINED_FUNCTION_52_1();
            starttest(v115, v116);
            OUTLINED_FUNCTION_52_1();
            bspush_ca_boa();
            v117 = OUTLINED_FUNCTION_66_1();
            v118 = end_of_word(v117);
            goto LABEL_54;
          }

          break;
        }
      }
    }
  }

LABEL_3:
  vretproc(v4);
  OUTLINED_FUNCTION_113();
}

uint64_t punctuation(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  v180 = *MEMORY[0x277D85DE8];
  v177 = 0;
  v178 = 0;
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v176);
  OUTLINED_FUNCTION_57_1();
  bzero(v179, v10);
  if (setjmp(v179) || (OUTLINED_FUNCTION_119(), ventproc(v1, v11, v12, v13, v14, v179)) || (v15 = OUTLINED_FUNCTION_13_14(), get_parm(v15, v16, v17, -6), OUTLINED_FUNCTION_62_1(v18, &v175), v19 = OUTLINED_FUNCTION_66_1(), push_ptr_init(v19, v20), fence_16(v1, 0, &_MergedGlobals_1_0), v21 = OUTLINED_FUNCTION_110(), starttest(v21, v22), v23 = OUTLINED_FUNCTION_54_1(), lpta_loadp_setscan_r(v23, v24, 1)))
  {
LABEL_4:
    vretproc(v1);
    return 94;
  }

  v26 = OUTLINED_FUNCTION_9_14();
  if (testFldeq(v26, v27, v28, 4))
  {
    v32 = 0;
    goto LABEL_59;
  }

  v32 = 0;
  v33 = 0;
  if (advance_tok(v1, v29, v30, v31))
  {
    goto LABEL_59;
  }

  while (2)
  {
    OUTLINED_FUNCTION_75_1();
    v34 = OUTLINED_FUNCTION_72_1();
    savescptr(v34, v35, v36);
    *(v1 + 2614) = *(v1 + 2650);
    v37 = OUTLINED_FUNCTION_56_1();
    read_punct_by_name(v37, v38, &v175);
    if (v39)
    {
LABEL_9:
      v47 = OUTLINED_FUNCTION_7_14();
      if (lpta_loadp_setscan_r(v47, v48, v49) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
      {
LABEL_11:
        v50 = OUTLINED_FUNCTION_7_14();
        if (lpta_loadp_setscan_r(v50, v51, v52) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
        {
LABEL_13:
          v53 = OUTLINED_FUNCTION_7_14();
          if (!lpta_loadp_setscan_r(v53, v54, v55))
          {
            OUTLINED_FUNCTION_4_14();
            if (!test_string_s())
            {
              *(v1 + 2538) = *(v1 + 2574);
              v75 = OUTLINED_FUNCTION_38_2();
              starttest_l(v75, v76);
              v77 = OUTLINED_FUNCTION_14_12();
              v80 = lpta_loadp_setscan_r(v77, v78, v79);
              v70 = 13;
              v81 = v33;
              if (!v80)
              {
                while (1)
                {
                  v32 = v81;
                  v83 = OUTLINED_FUNCTION_37_2();
                  bspush_ca_scan(v83, v84);
                  OUTLINED_FUNCTION_4_14();
                  v85 = test_string_s();
                  v40 = v32;
                  if (v85)
                  {
                    break;
                  }

LABEL_26:
                  v33 = v40;
                  v86 = OUTLINED_FUNCTION_40_1();
                  bspush_ca_scan(v86, v87);
LABEL_24:
                  v81 = v33;
                }

LABEL_59:
                v33 = v32;
LABEL_60:
                v117 = *(v1 + 104);
                if (v117)
                {
                  v39 = OUTLINED_FUNCTION_60_1(v117);
                }

                else
                {
                  v39 = vback(v1, v33);
                  v33 = 0;
                }

                v40 = v33;
                v73 = v33;
                switch(v39)
                {
                  case 2:
                    continue;
                  case 3:
                    goto LABEL_9;
                  case 4:
                    goto LABEL_11;
                  case 5:
                  case 13:
                  case 24:
                    goto LABEL_40;
                  case 6:
                    goto LABEL_13;
                  case 7:
                    goto LABEL_15;
                  case 8:
                    goto LABEL_54;
                  case 9:
                    OUTLINED_FUNCTION_4_14();
                    v118 = test_string_s();
                    v40 = v33;
                    if (!v118)
                    {
                      goto LABEL_26;
                    }

                    goto LABEL_60;
                  case 10:
                    goto LABEL_26;
                  case 11:
                    OUTLINED_FUNCTION_109();
                    v112 = OUTLINED_FUNCTION_59_1();
                    savescptr(v112, v113, v114);
                    *(v1 + 2538) = *(v1 + 2578);
LABEL_54:
                    v115 = 13;
                    goto LABEL_55;
                  case 12:
                    goto LABEL_24;
                  case 14:
                    bspop_boa(v1);
                    goto LABEL_74;
                  case 15:
                    goto LABEL_33;
                  case 16:
                    goto LABEL_18;
                  case 17:
                    OUTLINED_FUNCTION_118();
                    v119 = OUTLINED_FUNCTION_59_1();
                    savescptr(v119, v120, v121);
                    *(v1 + 2538) = *(v1 + 2594);
                    goto LABEL_18;
                  case 18:
                    v32 = v33;
                    goto LABEL_30;
                  case 19:
                    goto LABEL_72;
                  case 20:
                    v122 = OUTLINED_FUNCTION_59_1();
                    savescptr(v122, v123, v124);
                    *(v1 + 2538) = *(v1 + 2578);
LABEL_72:
                    OUTLINED_FUNCTION_148();
LABEL_55:
                    v70 = v115;
                    goto LABEL_56;
                  case 21:
                    OUTLINED_FUNCTION_4_14();
                    v73 = v33;
                    if (!test_string_s())
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_60;
                  case 22:
                  case 23:
                    goto LABEL_27;
                  case 25:
                    bspop_boa(v1);
                    if (*(v1 + 2578) != *(v1 + 2538))
                    {
                      goto LABEL_32;
                    }

LABEL_74:
                    v82 = *(v1 + 2582);
                    break;
                  case 26:
LABEL_32:
                    v82 = *(v1 + 2598);
                    break;
                  case 27:
                    goto LABEL_35;
                  case 28:
                    goto LABEL_41;
                  case 29:
                    goto LABEL_42;
                  case 30:
                    goto LABEL_47;
                  case 31:
                    goto LABEL_45;
                  case 32:
                    goto LABEL_46;
                  case 33:
                  case 34:
                    goto LABEL_52;
                  default:
                    goto LABEL_4;
                }

                goto LABEL_39;
              }

LABEL_56:
              starttest(v1, v70);
              OUTLINED_FUNCTION_55_1();
              bspush_ca_boa();
              v116 = OUTLINED_FUNCTION_56_1();
              if (end_of_sentence(v116))
              {
                v32 = v33;
              }

              else
              {
                v32 = 1;
              }

              goto LABEL_59;
            }
          }

LABEL_15:
          v56 = OUTLINED_FUNCTION_7_14();
          if (!lpta_loadp_setscan_r(v56, v57, v58))
          {
            OUTLINED_FUNCTION_4_14();
            if (!test_string_s())
            {
              *(v1 + 2538) = *(v1 + 2590);
              v59 = OUTLINED_FUNCTION_41_1();
              starttest_l(v59, v60);
              v61 = OUTLINED_FUNCTION_14_12();
              v32 = v33;
              if (!lpta_loadp_setscan_r(v61, v62, v63))
              {
LABEL_30:
                while (1)
                {
                  OUTLINED_FUNCTION_4_14();
                  if (test_string_s())
                  {
                    break;
                  }

                  v92 = OUTLINED_FUNCTION_54_1();
                  bspush_ca_scan(v92, v93);
                }

                goto LABEL_59;
              }

LABEL_18:
              v64 = OUTLINED_FUNCTION_52_1();
              starttest(v64, v65);
              v66 = OUTLINED_FUNCTION_14_12();
              lpta_loadp_setscan_r(v66, v67, v68);
              OUTLINED_FUNCTION_148();
              v70 = v69;
              if (!v71)
              {
                OUTLINED_FUNCTION_4_14();
                test_string_s();
                OUTLINED_FUNCTION_148();
                v70 = v72;
                v73 = v33;
                if (!v74)
                {
                  do
                  {
LABEL_27:
                    v88 = OUTLINED_FUNCTION_55_1();
                    bspush_ca_scan(v88, v89);
                    v90 = OUTLINED_FUNCTION_54_1();
                    bspush_ca_scan(v90, v91);
                    OUTLINED_FUNCTION_4_14();
                  }

                  while (!test_string_s());
                  v32 = v73;
                  goto LABEL_59;
                }
              }

              goto LABEL_56;
            }
          }

LABEL_33:
          v94 = OUTLINED_FUNCTION_7_14();
          if (lpta_loadp_setscan_r(v94, v95, v96) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
          {
LABEL_35:
            v97 = OUTLINED_FUNCTION_7_14();
            if (lpta_loadp_setscan_r(v97, v98, v99) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
            {
LABEL_40:
              v100 = OUTLINED_FUNCTION_67_1();
              skip_punct_and_delimiters(v100);
LABEL_41:
              v101 = OUTLINED_FUNCTION_67_1();
              v39 = build_phrase_final_structure(v101);
LABEL_42:
              if (*(v1 + 2546) == *(v1 + 2538))
              {
                v102 = OUTLINED_FUNCTION_67_1();
                lpta_loadpn(v102, v103);
                rpta_loadpn(v1, v1 + 1384);
                v39 = compare_ptas(v1);
                if (v39 || (v39 = testeq(v1), v39))
                {
LABEL_45:
                  if (!*(v1 + 2766))
                  {
LABEL_46:
                    *(v1 + 2538) = 0;
                    v104 = OUTLINED_FUNCTION_56_1();
                    lpta_loadpn(v104, v105);
                    OUTLINED_FUNCTION_94_0();
                    lpta_ctxtl();
                    v106 = OUTLINED_FUNCTION_66_1();
                    lpta_storep(v106, v107, v108);
                    OUTLINED_FUNCTION_98_0();
                    OUTLINED_FUNCTION_12_14();
                    v39 = proj_def();
                  }
                }
              }

LABEL_47:
              if (*(v1 + 2570) == *(v1 + 2538))
              {
                v109 = OUTLINED_FUNCTION_7_14();
                v39 = lpta_loadp_setscan_r(v109, v110, v111);
                if (!v39)
                {
                  v39 = advance_tok(v1, v40, v41, v42);
                  if (!v39)
                  {
                    OUTLINED_FUNCTION_4_14();
                    v39 = test_string_s();
                    if (!v39)
                    {
                      OUTLINED_FUNCTION_172();
                    }
                  }
                }
              }

              break;
            }

            v82 = *(v1 + 2546);
          }

          else
          {
            v82 = *(v1 + 2586);
          }

LABEL_39:
          *(v1 + 2538) = v82;
          goto LABEL_40;
        }
      }

      v82 = *(v1 + 2570);
      goto LABEL_39;
    }

    break;
  }

LABEL_52:
  OUTLINED_FUNCTION_131(v39, v40, v41, v42, v43, v44, v45, v46, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v175, v176);
  return 0;
}

uint64_t parenthesis(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  v170 = *MEMORY[0x277D85DE8];
  v168 = 0;
  v169 = 0;
  v166 = 0;
  v167 = 0;
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v11, v12);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_82_1();
  if (OUTLINED_FUNCTION_160(v13, v14, v15, v16, v17))
  {
    goto LABEL_3;
  }

  v19 = OUTLINED_FUNCTION_13_14();
  get_parm(v19, v20, v21, -6);
  OUTLINED_FUNCTION_62_1(v22, &v166);
  v23 = OUTLINED_FUNCTION_56_1();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_67_1();
  push_ptr_init(v25, v26);
  v27 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v27, v28);
  v29 = OUTLINED_FUNCTION_73_1();
  fence_16(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_139();
  starttest(v32, v33);
  v34 = OUTLINED_FUNCTION_54_1();
  v36 = 0;
  v37 = 0;
  if (lpta_loadp_setscan_r(v34, v35, 1))
  {
LABEL_5:
    v38 = OUTLINED_FUNCTION_53_1();
    if (lpta_loadp_setscan_r(v38, v39, v40) || (OUTLINED_FUNCTION_4_14(), LODWORD(v41) = v37, test_string_s()))
    {
LABEL_3:
      vretproc(v1);
      return 94;
    }

LABEL_7:
    v42 = OUTLINED_FUNCTION_72_1();
    savescptr(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_52_1();
    starttest(v45, v46);
    v47 = OUTLINED_FUNCTION_72_1();
    if (in_quotes(v47))
    {
LABEL_8:
      v48 = OUTLINED_FUNCTION_49_1();
      starttest(v48, v49);
      OUTLINED_FUNCTION_52_1();
      bspush_ca_boa();
      v50 = OUTLINED_FUNCTION_85_1();
      v51 = end_of_word(v50);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_52_1();
    bspush_ca_boa();
    v52 = OUTLINED_FUNCTION_53_1();
    if (lpta_loadp_setscan_l(v52, v53, v54))
    {
      v36 = v41;
    }

    else
    {
      v55 = OUTLINED_FUNCTION_52_1();
      bspush_ca_scan(v55, v56);
      OUTLINED_FUNCTION_4_14();
      v57 = test_string_s();
      v58 = v41;
      v36 = v41;
      if (!v57)
      {
LABEL_15:
        LODWORD(v41) = v58;
        OUTLINED_FUNCTION_125();
        v59 = OUTLINED_FUNCTION_72_1();
        savescptr(v59, v60, v61);
        OUTLINED_FUNCTION_52_1();
        bspush_ca_boa();
        v62 = OUTLINED_FUNCTION_55_1();
        beg_of_word(v62, v63, v64, v65);
LABEL_9:
        if (v51)
        {
          v36 = v41;
        }

        else
        {
          v36 = 1;
        }
      }
    }
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_175();
    while (1)
    {
      OUTLINED_FUNCTION_4_14();
      if (test_string_s())
      {
        break;
      }

      v66 = OUTLINED_FUNCTION_54_1();
      bspush_ca_scan(v66, v67);
    }
  }

  v68 = v36;
  while (2)
  {
    v69 = *(v1 + 104);
    if (v69)
    {
      v70 = OUTLINED_FUNCTION_65_1(v69);
      v41 = v71;
    }

    else
    {
      v70 = vback(v1, v68);
      v41 = 0;
    }

    v58 = v41;
    switch(v70)
    {
      case 1:
        v37 = v41;
        goto LABEL_5;
      case 2:
        OUTLINED_FUNCTION_75_1();
        v87 = OUTLINED_FUNCTION_123();
        savescptr(v87, v88, v89);
        v90 = OUTLINED_FUNCTION_52_1();
        starttest(v90, v91);
        v92 = OUTLINED_FUNCTION_53_1();
        if (lpta_loadp_setscan_l(v92, v93, v94))
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      case 3:
        v36 = v41;
        goto LABEL_17;
      case 4:
LABEL_31:
        v95 = OUTLINED_FUNCTION_37_2();
        starttest(v95, v96);
        v97 = OUTLINED_FUNCTION_123();
        if (in_quotes(v97))
        {
          goto LABEL_54;
        }

        OUTLINED_FUNCTION_45_1();
        bspush_ca_boa();
        v98 = OUTLINED_FUNCTION_28_5();
        v101 = lpta_loadp_setscan_r(v98, v99, v100);
        v68 = v41;
        if (v101)
        {
          continue;
        }

        v102 = OUTLINED_FUNCTION_40_1();
        bspush_ca_scan(v102, v103);
        goto LABEL_39;
      case 5:
LABEL_34:
        OUTLINED_FUNCTION_93_0();
        v104 = OUTLINED_FUNCTION_90_1();
        savescptr(v104, v105, v106);
        goto LABEL_35;
      case 6:
LABEL_35:
        v107 = OUTLINED_FUNCTION_36_2();
        v110 = test_synch(v107, v108, 1, v109);
        v68 = v41;
        if (!v110)
        {
          v111 = OUTLINED_FUNCTION_7_14();
          v114 = lpta_loadp_setscan_r(v111, v112, v113);
          v68 = v41;
          if (!v114)
          {
            OUTLINED_FUNCTION_51_1();
            v115 = test_string_s();
            v68 = v41;
            if (!v115)
            {
              goto LABEL_57;
            }
          }
        }

        continue;
      case 7:
LABEL_57:
        v136 = OUTLINED_FUNCTION_123();
        savescptr(v136, v137, v138);
        goto LABEL_58;
      case 8:
      case 14:
      case 16:
      case 24:
      case 25:
      case 28:
      case 32:
        goto LABEL_58;
      case 9:
LABEL_54:
        OUTLINED_FUNCTION_98_0();
        OUTLINED_FUNCTION_12_14();
        if (lpta_tstctxtl())
        {
          goto LABEL_56;
        }

        v131 = OUTLINED_FUNCTION_135();
        setscan_l(v131, v132, v133);
        if (v134)
        {
          goto LABEL_56;
        }

        goto LABEL_58;
      case 10:
      case 20:
      case 27:
        bspop_boa(v1);
        v125 = OUTLINED_FUNCTION_123();
        single_chars(v125, v126, v127);
        goto LABEL_58;
      case 11:
LABEL_39:
        OUTLINED_FUNCTION_4_14();
        v116 = test_string_s();
        v68 = v41;
        if (!v116)
        {
          goto LABEL_40;
        }

        continue;
      case 12:
LABEL_40:
        v117 = OUTLINED_FUNCTION_72_1();
        savescptr(v117, v118, v119);
        OUTLINED_FUNCTION_32_3();
        bspush_ca_boa();
        v120 = OUTLINED_FUNCTION_55_1();
        if (end_of_word(v120))
        {
          v68 = v41;
        }

        else
        {
          v68 = 1;
        }

        continue;
      case 13:
      case 23:
        bspop_boa(v1);
        v68 = 1;
        continue;
      case 15:
LABEL_56:
        v135 = OUTLINED_FUNCTION_85_1();
        build_phrase_final_structure(v135);
        goto LABEL_58;
      case 18:
        goto LABEL_7;
      case 19:
        goto LABEL_8;
      case 21:
        OUTLINED_FUNCTION_4_14();
        v121 = test_string_s();
        v58 = v41;
        v68 = v41;
        if (!v121)
        {
          goto LABEL_15;
        }

        continue;
      case 22:
        goto LABEL_15;
      case 26:
        v72 = OUTLINED_FUNCTION_85_1();
        skip_delimiters(v72);
        goto LABEL_27;
      case 29:
LABEL_27:
        v73 = OUTLINED_FUNCTION_52_1();
        starttest(v73, v74);
        v75 = OUTLINED_FUNCTION_28_5();
        if (lpta_loadp_setscan_r(v75, v76, v77))
        {
          goto LABEL_49;
        }

        v78 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v78, v79);
        v80 = OUTLINED_FUNCTION_9_14();
        v83 = testFldeq(v80, v81, v82, 4);
        v68 = v41;
        if (v83)
        {
          continue;
        }

        v86 = advance_tok(v1, v41, v84, v85);
LABEL_46:
        v68 = v41;
        if (!v86)
        {
          goto LABEL_58;
        }

        continue;
      case 30:
LABEL_49:
        v128 = OUTLINED_FUNCTION_85_1();
        if (end_of_sentence(v128))
        {
          goto LABEL_50;
        }

        goto LABEL_58;
      case 31:
        OUTLINED_FUNCTION_98_0();
        v122 = OUTLINED_FUNCTION_12_14();
        v86 = test_ptr(v122, v123, v124);
        goto LABEL_46;
      case 33:
LABEL_50:
        OUTLINED_FUNCTION_170();
        if (!v130 && *(v1 + 5114) != v129 && *(v1 + 5102) != v129)
        {
          OUTLINED_FUNCTION_172();
        }

LABEL_58:
        OUTLINED_FUNCTION_137(v167);
        result = 0;
        break;
      default:
        goto LABEL_3;
    }

    return result;
  }
}

void apostrophe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v92 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v4, v5, v6, v7, v8, v9, v10, v11, v59, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1], v77, v78, v79, v80);
  OUTLINED_FUNCTION_57_1();
  bzero(v91, v12);
  v13 = setjmp(v91);
  if (v13)
  {
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_34_3(v13, v61, v14, v15, v16, v17, v18, v19, v60, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]))
  {
    goto LABEL_5;
  }

  v20 = OUTLINED_FUNCTION_13_14();
  get_parm(v20, v21, v22, -6);
  OUTLINED_FUNCTION_62_1(v23, &v77);
  v24 = OUTLINED_FUNCTION_104();
  push_ptr_init(v24, v25);
  fence_16(v3, 0, &_MergedGlobals_1_0);
  v26 = OUTLINED_FUNCTION_29_5();
  if (lpta_loadp_setscan_r(v26, v27, v28))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_24_8();
  if (test_string_s())
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_175();
  while (2)
  {
    v29 = OUTLINED_FUNCTION_54_1();
    savescptr(v29, v30, &v77);
    v31 = OUTLINED_FUNCTION_81_1();
    starttest(v31, v32);
    v33 = OUTLINED_FUNCTION_74_1();
    if (lpta_loadp_setscan_l(v33, v34, 1))
    {
LABEL_8:
      v35 = OUTLINED_FUNCTION_74_1();
      lpta_rpta_loadp(v35, v36, &v77);
      OUTLINED_FUNCTION_80_1();
      if (!mark_s())
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_10:
      v37 = OUTLINED_FUNCTION_84_1();
      savescptr(v37, v38, v76);
      v39 = OUTLINED_FUNCTION_64_1();
      bspush_ca_scan(v39, v40);
      OUTLINED_FUNCTION_24_8();
      if (!test_string_s())
      {
LABEL_11:
        v41 = OUTLINED_FUNCTION_91_0();
        if (!lpta_loadp_setscan_r(v41, v42, 1) && !advance_tok(v3, v43, v44, v45))
        {
          v54 = OUTLINED_FUNCTION_112();
          bspush_ca_scan(v54, v55);
          OUTLINED_FUNCTION_24_8();
          if (!test_string_s())
          {
LABEL_22:
            v56 = OUTLINED_FUNCTION_138();
            single_chars(v56, v57, v58);
LABEL_23:
            OUTLINED_FUNCTION_95_0(v78);
            break;
          }
        }
      }
    }

LABEL_12:
    v46 = *(v3 + 104);
    if (v46)
    {
      v47 = OUTLINED_FUNCTION_65_1(v46);
    }

    else
    {
      v47 = OUTLINED_FUNCTION_133();
    }

    switch(v47)
    {
      case 2:
        continue;
      case 3:
        goto LABEL_8;
      case 4:
        goto LABEL_10;
      case 5:
        *(v3 + 136) = 1;
        v48 = OUTLINED_FUNCTION_12_14();
        if (!test_ptr(v48, v49, v50))
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      case 6:
        goto LABEL_11;
      case 7:
        *(v3 + 136) = 1;
        v51 = OUTLINED_FUNCTION_12_14();
        if (!test_ptr(v51, v52, v53))
        {
          goto LABEL_22;
        }

        goto LABEL_12;
      case 8:
        goto LABEL_22;
      case 9:
      case 10:
        goto LABEL_23;
      default:
        goto LABEL_5;
    }
  }

LABEL_5:
  vretproc(v3);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_113();
}

uint64_t email_address(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  v277 = *MEMORY[0x277D85DE8];
  v272[0] = 0;
  v272[1] = 0;
  v271[0] = 0;
  v271[1] = 0;
  v270[0] = 0;
  v270[1] = 0;
  memset(v269, 0, sizeof(v269));
  OUTLINED_FUNCTION_10_14(v2, v3, v4, v5, v6, v7, v8, v9, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
  OUTLINED_FUNCTION_57_1();
  bzero(v276, v10);
  if (setjmp(v276))
  {
    goto LABEL_5;
  }

  v11 = ventproc(v1, &v242, v275, v274, v273, v276);
  if (v11)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_62_1(v11, v272);
  v12 = OUTLINED_FUNCTION_151();
  push_ptr_init(v12, v13);
  push_ptr_init(v1, v270);
  v14 = OUTLINED_FUNCTION_85_1();
  push_ptr_init(v14, v15);
  v16 = OUTLINED_FUNCTION_56_1();
  push_ptr_init(v16, v17);
  v18 = OUTLINED_FUNCTION_67_1();
  push_ptr_init(v18, v19);
  v20 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v20, v21);
  fence_16(v1, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_99_0();
  if (v22)
  {
    goto LABEL_5;
  }

  v24 = 0;
  while (2)
  {
    v25 = OUTLINED_FUNCTION_71_1();
    starttest(v25, v26);
    v27 = OUTLINED_FUNCTION_55_1();
    v29 = v24;
    if (lpta_loadp_setscan_r(v27, v28, 1))
    {
LABEL_5:
      vretproc(v1);
      return 94;
    }

LABEL_7:
    while (1)
    {
      bspush_ca_scan(v1, 3);
      v30 = OUTLINED_FUNCTION_51_1();
      v32 = testFldeq(v30, v31, 3, 1);
      v35 = v29;
      if (v32)
      {
        break;
      }

LABEL_8:
      v29 = v35;
      if (advance_tok(v1, v33, v35, v34))
      {
        break;
      }

      v233 = OUTLINED_FUNCTION_70_1();
      bspush_ca_scan(v233, v234);
    }

    LODWORD(v33) = v29;
LABEL_10:
    v36 = v1[13];
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_65_1(v36);
      v24 = v33;
    }

    else
    {
      v37 = vback(v1, v33);
      v24 = 0;
    }

    v35 = v24;
    switch(v37)
    {
      case 1:
        continue;
      case 3:
        v127 = OUTLINED_FUNCTION_22_8();
        bspush_ca_scan(v127, v128);
        v129 = OUTLINED_FUNCTION_3_15();
        goto LABEL_46;
      case 4:
        goto LABEL_8;
      case 5:
        v133 = OUTLINED_FUNCTION_36_2();
        bspush_ca_scan(v133, v134);
        v129 = OUTLINED_FUNCTION_6_14();
        v132 = 75;
        goto LABEL_46;
      case 6:
        v129 = OUTLINED_FUNCTION_6_14();
        v132 = 63;
LABEL_46:
        v135 = testFldeq(v129, v130, v131, v132);
        v35 = v24;
        v33 = v24;
        if (!v135)
        {
          goto LABEL_8;
        }

        goto LABEL_10;
      case 7:
      case 14:
        v42 = OUTLINED_FUNCTION_37_2();
        bspush_ca_scan(v42, v43);
        OUTLINED_FUNCTION_4_14();
        v44 = test_string_s();
        LODWORD(v33) = v24;
        if (v44)
        {
          goto LABEL_10;
        }

        goto LABEL_89;
      case 8:
        v29 = v24;
        goto LABEL_7;
      case 9:
        savescptr(v1, 9, v271);
        OUTLINED_FUNCTION_4_14();
        v138 = test_string_s();
        LODWORD(v33) = v24;
        if (v138)
        {
          goto LABEL_10;
        }

        goto LABEL_50;
      case 10:
        v87 = OUTLINED_FUNCTION_35_2();
        bspush_ca_scan(v87, v88);
        v83 = OUTLINED_FUNCTION_3_15();
        goto LABEL_90;
      case 11:
        goto LABEL_91;
      case 12:
        v81 = OUTLINED_FUNCTION_32_3();
        bspush_ca_scan(v81, v82);
        v83 = OUTLINED_FUNCTION_6_14();
        v86 = 75;
        goto LABEL_90;
      case 13:
        v83 = OUTLINED_FUNCTION_6_14();
        v86 = 63;
        goto LABEL_90;
      case 15:
LABEL_89:
        while (2)
        {
          v227 = OUTLINED_FUNCTION_45_1();
          bspush_ca_scan(v227, v228);
          v83 = OUTLINED_FUNCTION_1_15();
LABEL_90:
          v229 = testFldeq(v83, v84, v85, v86);
          v33 = v24;
          if (!v229)
          {
LABEL_91:
            v230 = advance_tok(v1, v33, v35, v34);
            LODWORD(v33) = v24;
            if (!v230)
            {
              v231 = OUTLINED_FUNCTION_33_3();
              bspush_ca_scan(v231, v232);
              continue;
            }
          }

          break;
        }

        goto LABEL_10;
      case 16:
LABEL_50:
        savescptr(v1, 16, v270);
        goto LABEL_85;
      case 17:
        v89 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v89, v90);
        v91 = OUTLINED_FUNCTION_3_15();
        goto LABEL_86;
      case 18:
        goto LABEL_87;
      case 19:
        v136 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v136, v137);
        v91 = OUTLINED_FUNCTION_6_14();
        v94 = 75;
        goto LABEL_86;
      case 20:
        v91 = OUTLINED_FUNCTION_6_14();
        v94 = 63;
        goto LABEL_86;
      case 21:
        OUTLINED_FUNCTION_4_14();
        v139 = test_string_s();
        LODWORD(v33) = v24;
        if (v139)
        {
          goto LABEL_10;
        }

        goto LABEL_88;
      case 22:
LABEL_85:
        while (2)
        {
          v221 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v221, v222);
          v91 = OUTLINED_FUNCTION_1_15();
LABEL_86:
          v223 = testFldeq(v91, v92, v93, v94);
          v33 = v24;
          if (!v223)
          {
LABEL_87:
            v224 = advance_tok(v1, v33, v35, v34);
            LODWORD(v33) = v24;
            if (!v224)
            {
LABEL_88:
              v225 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v225, v226);
              continue;
            }
          }

          break;
        }

        goto LABEL_10;
      case 23:
        v95 = OUTLINED_FUNCTION_1_15();
        v99 = testFldeq(v95, v96, v97, v98);
        LODWORD(v33) = v24;
        if (v99)
        {
          goto LABEL_10;
        }

        v102 = advance_tok(v1, v24, v100, v101);
        LODWORD(v33) = v24;
        if (v102)
        {
          goto LABEL_10;
        }

        v103 = OUTLINED_FUNCTION_1_15();
        v107 = testFldeq(v103, v104, v105, v106);
        LODWORD(v33) = v24;
        if (v107)
        {
          goto LABEL_10;
        }

        v110 = advance_tok(v1, v24, v108, v109);
        LODWORD(v33) = v24;
        if (v110)
        {
          goto LABEL_10;
        }

        v111 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v111, v112);
        v113 = OUTLINED_FUNCTION_1_15();
        v117 = testFldeq(v113, v114, v115, v116);
        LODWORD(v33) = v24;
        if (v117)
        {
          goto LABEL_10;
        }

        v120 = advance_tok(v1, v24, v118, v119);
        LODWORD(v33) = v24;
        if (v120)
        {
          goto LABEL_10;
        }

        goto LABEL_39;
      case 24:
LABEL_39:
        v121 = OUTLINED_FUNCTION_123();
        savescptr(v121, v122, v123);
        goto LABEL_40;
      case 25:
LABEL_40:
        v124 = OUTLINED_FUNCTION_49_1();
        starttest(v124, v125);
        OUTLINED_FUNCTION_52_1();
        bspush_ca_boa();
        v126 = OUTLINED_FUNCTION_85_1();
        if (end_of_word(v126))
        {
          LODWORD(v33) = v24;
        }

        else
        {
          LODWORD(v33) = 1;
        }

        goto LABEL_10;
      case 26:
        v150 = OUTLINED_FUNCTION_52_1();
        starttest(v150, v151);
        v152 = OUTLINED_FUNCTION_28_5();
        if (!lpta_loadp_setscan_r(v152, v153, v154))
        {
          OUTLINED_FUNCTION_4_14();
          if (!test_string_s())
          {
            goto LABEL_59;
          }
        }

        goto LABEL_60;
      case 27:
        bspop_boa(v1);
        goto LABEL_5;
      case 28:
        goto LABEL_60;
      case 29:
LABEL_59:
        savescptr(v1, 29, v269);
        v155 = OUTLINED_FUNCTION_85_1();
        lpta_rpta_loadp(v155, v156, v269);
        OUTLINED_FUNCTION_9_14();
        v157 = mark_s();
        LODWORD(v33) = v24;
        if (v157)
        {
          goto LABEL_10;
        }

LABEL_60:
        v158 = OUTLINED_FUNCTION_52_1();
        startloop(v158, v159);
        copyvar(v1, v269, v272);
        copyvar(v1, &v265, v271);
        break;
      case 30:
        goto LABEL_95;
      case 31:
        goto LABEL_66;
      case 32:
        OUTLINED_FUNCTION_171();
        v45 = OUTLINED_FUNCTION_122();
        v50 = forto_adv_r(v45, v46, v47, v48, 1, v49);
        LODWORD(v33) = v24;
        if (v50)
        {
          goto LABEL_10;
        }

        goto LABEL_95;
      case 33:
        goto LABEL_65;
      case 34:
        goto LABEL_67;
      case 35:
        goto LABEL_73;
      case 36:
        v140 = OUTLINED_FUNCTION_59_1();
        savescptr(v140, v141, v142);
        v143 = OUTLINED_FUNCTION_4_14();
        v146 = testFldeq(v143, v144, v145, 2);
        LODWORD(v33) = v24;
        if (v146)
        {
          goto LABEL_10;
        }

        v149 = advance_tok(v1, v24, v147, v148);
        LODWORD(v33) = v24;
        if (v149)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      case 37:
        goto LABEL_80;
      case 38:
        goto LABEL_19;
      case 39:
        v51 = OUTLINED_FUNCTION_59_1();
        savescptr(v51, v52, v53);
        goto LABEL_19;
      case 40:
        goto LABEL_76;
      case 41:
        goto LABEL_23;
      case 42:
      case 43:
      case 45:
      case 46:
        goto LABEL_68;
      case 44:
        goto LABEL_27;
      case 47:
        goto LABEL_69;
      case 48:
        goto LABEL_62;
      case 49:
        goto LABEL_63;
      case 50:
        goto LABEL_96;
      case 51:
        goto LABEL_97;
      default:
        goto LABEL_5;
    }

    break;
  }

  while (1)
  {
LABEL_62:
    v160 = OUTLINED_FUNCTION_83_1();
    v163 = forall_to_test(v160, v161, v162);
    LODWORD(v33) = v24;
    if (v163)
    {
      goto LABEL_10;
    }

LABEL_63:
    v164 = OUTLINED_FUNCTION_52_1();
    bspush_ca(v164);
    v165 = OUTLINED_FUNCTION_7_14();
    v168 = lpta_loadp_setscan_r(v165, v166, v167);
    LODWORD(v33) = v24;
    if (v168)
    {
      goto LABEL_10;
    }

    v171 = advance_tok(v1, v24, v169, v170);
    LODWORD(v33) = v24;
    if (v171)
    {
      goto LABEL_10;
    }

LABEL_65:
    v172 = OUTLINED_FUNCTION_59_1();
    savescptr(v172, v173, v174);
LABEL_66:
    v175 = OUTLINED_FUNCTION_52_1();
    starttest(v175, v176);
    v177 = OUTLINED_FUNCTION_7_14();
    if (lpta_loadp_setscan_r(v177, v178, v179))
    {
LABEL_67:
      OUTLINED_FUNCTION_8_14();
      char_name();
      goto LABEL_68;
    }

    v186 = OUTLINED_FUNCTION_1_15();
    v190 = testFldeq(v186, v187, v188, v189);
    LODWORD(v33) = v24;
    if (v190)
    {
      goto LABEL_10;
    }

    v193 = advance_tok(v1, v24, v191, v192);
    LODWORD(v33) = v24;
    if (v193)
    {
      goto LABEL_10;
    }

    v194 = OUTLINED_FUNCTION_52_1();
    starttest(v194, v195);
    v196 = OUTLINED_FUNCTION_14_12();
    if (!lpta_loadp_setscan_r(v196, v197, v198))
    {
LABEL_80:
      while (1)
      {
        v215 = OUTLINED_FUNCTION_4_14();
        if (testFldeq(v215, v216, v217, 1) || advance_tok(v1, v218, v219, v220))
        {
          break;
        }

        v213 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v213, v214);
      }

      goto LABEL_82;
    }

LABEL_73:
    v199 = OUTLINED_FUNCTION_52_1();
    starttest(v199, v200);
    v201 = OUTLINED_FUNCTION_14_12();
    if (!lpta_loadp_setscan_r(v201, v202, v203))
    {
LABEL_76:
      while (1)
      {
        v206 = OUTLINED_FUNCTION_1_15();
        if (testFldeq(v206, v207, v208, v209) || advance_tok(v1, v210, v211, v212))
        {
          break;
        }

        v204 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v204, v205);
      }

LABEL_82:
      LODWORD(v33) = v24;
      goto LABEL_10;
    }

LABEL_19:
    v54 = OUTLINED_FUNCTION_67_1();
    lpta_loadpn(v54, v55);
    v56 = OUTLINED_FUNCTION_151();
    rpta_loadpn(v56, v57);
    if (!compare_ptas(v1) && !testeq(v1))
    {
      v58 = OUTLINED_FUNCTION_56_1();
      lpta_loadpn(v58, v59);
      rpta_loadpn(v1, v272);
      if (!compare_ptas(v1) && !testeq(v1))
      {
        goto LABEL_28;
      }
    }

LABEL_23:
    v60 = OUTLINED_FUNCTION_52_1();
    starttest(v60, v61);
    v62 = OUTLINED_FUNCTION_7_14();
    if (!lpta_loadp_setscan_r(v62, v63, v64) && !advance_tok(v1, v65, v66, v67) && !advance_tok(v1, v68, v69, v70))
    {
      v71 = OUTLINED_FUNCTION_52_1();
      bspush_ca_scan(v71, v72);
      v76 = advance_tok(v1, v73, v74, v75);
      LODWORD(v33) = v24;
      if (v76)
      {
        goto LABEL_10;
      }

LABEL_27:
      OUTLINED_FUNCTION_98_0();
      v77 = OUTLINED_FUNCTION_12_14();
      v80 = test_ptr(v77, v78, v79);
      LODWORD(v33) = v24;
      if (v80)
      {
        goto LABEL_10;
      }

LABEL_28:
      spell_out_sequence(v1);
    }

LABEL_68:
    v180 = OUTLINED_FUNCTION_67_1();
    lpta_loadpn(v180, v181);
    v182 = OUTLINED_FUNCTION_151();
    rpta_loadpn(v182, v183);
    v37 = compare_ptas(v1);
    if (!v37)
    {
      v37 = testeq(v1);
      if (!v37)
      {
        break;
      }
    }

LABEL_69:
    OUTLINED_FUNCTION_102(v37, v33, v35, v34, v38, v39, v40, v41, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
    v184 = OUTLINED_FUNCTION_129();
    insert_l(v184, v185);
    OUTLINED_FUNCTION_171();
    forall_cont_from();
  }

LABEL_95:
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_117();
  v235 = OUTLINED_FUNCTION_129();
  insert_l(v235, v236);
  char_name();
LABEL_96:
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_117();
  v237 = OUTLINED_FUNCTION_129();
  insert_l(v237, v238);
  v239 = OUTLINED_FUNCTION_123();
  process_hostname(v239, v240, v241);
LABEL_97:
  vretproc(v1);
  return 0;
}

void URL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v133 = *MEMORY[0x277D85DE8];
  v120 = 0;
  v121 = 0;
  OUTLINED_FUNCTION_16_12(v5, v6, v7, v8, v9, v10, v11, v12, v112, v114[0], v114[1], v114[2], v114[3], v114[4], v114[5], v114[6], v114[7], v114[8], v114[9], v114[10], v114[11], v114[12], v114[13], v114[14], v114[15], v114[16], v114[17], v114[18], v114[19], v114[20], v114[21], v114[22], v115, v116, v117, v118, v119[0], v119[1]);
  OUTLINED_FUNCTION_57_1();
  bzero(v132, v13);
  v14 = setjmp(v132);
  if (!v14)
  {
    v21 = OUTLINED_FUNCTION_69_1(v14, v114, v15, v16, v17, v18, v19, v20, v113, v114[0], v114[1], v114[2], v114[3], v114[4], v114[5], v114[6], v114[7], v114[8], v114[9], v114[10], v114[11], v114[12], v114[13], v114[14], v114[15], v114[16], v114[17], v114[18], v114[19], v114[20], v114[21], v114[22], v115, v116, v117, v118, v119[0], v119[1], v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132[0]);
    if (!v21)
    {
      OUTLINED_FUNCTION_62_1(v21, &v120);
      v22 = OUTLINED_FUNCTION_87_1();
      push_ptr_init(v22, v23);
      v24 = OUTLINED_FUNCTION_86_1();
      push_ptr_init(v24, v25);
      v26 = OUTLINED_FUNCTION_104();
      push_ptr_init(v26, v27);
      fence_16(v4, 0, &_MergedGlobals_1_0);
      OUTLINED_FUNCTION_99_0();
      if (!v28)
      {
        OUTLINED_FUNCTION_168();
LABEL_6:
        v29 = OUTLINED_FUNCTION_55_1();
        starttest(v29, v30);
        v31 = OUTLINED_FUNCTION_141();
        if (!lpta_loadp_setscan_r(v31, v32, 1))
        {
          v33 = OUTLINED_FUNCTION_64_1();
          bspush_ca_scan(v33, v34);
          v35 = OUTLINED_FUNCTION_81_1();
          bspush_ca_scan(v35, v36);
          OUTLINED_FUNCTION_51_1();
LABEL_8:
          if (!test_string_s())
          {
LABEL_9:
            OUTLINED_FUNCTION_51_1();
            if (!test_string_s())
            {
LABEL_10:
              v37 = OUTLINED_FUNCTION_91_0();
              savescptr(v37, v38, v119);
              OUTLINED_FUNCTION_51_1();
              if (!test_string_s())
              {
LABEL_11:
                v39 = OUTLINED_FUNCTION_112();
                savescptr(v39, v40, &v120);
LABEL_12:
                while (1)
                {
                  v41 = OUTLINED_FUNCTION_74_1();
                  bspush_ca_scan(v41, v42);
                  v43 = OUTLINED_FUNCTION_51_1();
                  v45 = 3;
                  v46 = 1;
LABEL_13:
                  if (testFldeq(v43, v44, v45, v46))
                  {
                    break;
                  }

LABEL_51:
                  if (advance_tok(v4, v47, v48, v49))
                  {
                    goto LABEL_14;
                  }

                  v106 = OUTLINED_FUNCTION_54_1();
LABEL_53:
                  bspush_ca_scan(v106, v107);
                }
              }
            }
          }

          while (1)
          {
LABEL_14:
            v50 = *(v4 + 104);
            if (v50)
            {
              v51 = OUTLINED_FUNCTION_65_1(v50);
            }

            else
            {
              v51 = OUTLINED_FUNCTION_133();
            }

            switch(v51)
            {
              case 1:
                goto LABEL_6;
              case 3:
                OUTLINED_FUNCTION_51_1();
                if (!test_string_s())
                {
                  goto LABEL_12;
                }

                continue;
              case 4:
                OUTLINED_FUNCTION_4_14();
                goto LABEL_8;
              case 5:
                goto LABEL_9;
              case 6:
                goto LABEL_10;
              case 7:
                goto LABEL_11;
              case 8:
                goto LABEL_12;
              case 9:
                v102 = OUTLINED_FUNCTION_40_1();
                bspush_ca_scan(v102, v103);
                v43 = OUTLINED_FUNCTION_3_15();
                goto LABEL_13;
              case 10:
                goto LABEL_51;
              case 11:
                v104 = OUTLINED_FUNCTION_35_2();
                bspush_ca_scan(v104, v105);
                v43 = OUTLINED_FUNCTION_6_14();
                v46 = 75;
                goto LABEL_13;
              case 12:
                v43 = OUTLINED_FUNCTION_6_14();
                v46 = 63;
                goto LABEL_13;
              case 13:
                OUTLINED_FUNCTION_4_14();
                if (test_string_s())
                {
                  continue;
                }

                v106 = OUTLINED_FUNCTION_33_3();
                goto LABEL_53;
              case 14:
                goto LABEL_43;
              case 15:
                v60 = OUTLINED_FUNCTION_3_15();
                goto LABEL_44;
              case 16:
                do
                {
                  if (advance_tok(v4, v47, v48, v49))
                  {
                    break;
                  }

                  v100 = OUTLINED_FUNCTION_52_1();
                  bspush_ca_scan(v100, v101);
LABEL_43:
                  v98 = OUTLINED_FUNCTION_46_1();
                  bspush_ca_scan(v98, v99);
                  v60 = OUTLINED_FUNCTION_1_15();
LABEL_44:
                  ;
                }

                while (!testFldeq(v60, v61, v62, v63));
                continue;
              case 17:
                OUTLINED_FUNCTION_118();
                savescptr(v4, v64, &v117);
                v65 = OUTLINED_FUNCTION_84_1();
                if (end_of_word(v65))
                {
                  continue;
                }

                goto LABEL_28;
              case 18:
LABEL_28:
                v66 = OUTLINED_FUNCTION_87_1();
                lpta_loadpn(v66, v67);
                OUTLINED_FUNCTION_150();
                if (!compare_ptas(v4) && !testneq(v4))
                {
                  v68 = OUTLINED_FUNCTION_147();
                  lpta_rpta_loadp(v68, v69, v70);
                  v71 = OUTLINED_FUNCTION_6_14();
                  if (!delete_2pt(v71, v72, v73, v74))
                  {
                    v75 = OUTLINED_FUNCTION_147();
                    lpta_rpta_loadp(v75, v76, v77);
                    v78 = OUTLINED_FUNCTION_51_1();
                    insert_2pt_s(v78, v79, 5, v80, v81);
                  }
                }

                goto LABEL_32;
              case 19:
LABEL_32:
                v82 = OUTLINED_FUNCTION_138();
                process_hostname(v82, v83, v84);
                goto LABEL_33;
              case 20:
LABEL_33:
                v85 = OUTLINED_FUNCTION_52_1();
                starttest(v85, v86);
                v87 = OUTLINED_FUNCTION_53_1();
                if (!lpta_loadp_setscan_r(v87, v88, v89))
                {
                  OUTLINED_FUNCTION_4_14();
                  if (!test_string_s())
                  {
                    break;
                  }
                }

                goto LABEL_5;
              case 22:
                OUTLINED_FUNCTION_125();
                v108 = OUTLINED_FUNCTION_68_1();
                savescptr(v108, v109, v110);
                v111 = OUTLINED_FUNCTION_68_1();
                process_pathname(v111);
                goto LABEL_5;
              case 23:
                v90 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v90, v91);
                v54 = OUTLINED_FUNCTION_3_15();
                goto LABEL_40;
              case 24:
                goto LABEL_41;
              case 25:
                v92 = OUTLINED_FUNCTION_49_1();
                bspush_ca_scan(v92, v93);
                v54 = OUTLINED_FUNCTION_6_14();
                v57 = 75;
                goto LABEL_40;
              case 26:
                v58 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v58, v59);
                v54 = OUTLINED_FUNCTION_6_14();
                v57 = 63;
                goto LABEL_40;
              case 27:
                v54 = OUTLINED_FUNCTION_6_14();
                v57 = 65;
                goto LABEL_40;
              case 28:
                v52 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v52, v53);
                OUTLINED_FUNCTION_4_14();
                if (test_string_s())
                {
                  continue;
                }

                break;
              case 29:
                goto LABEL_39;
              case 30:
              case 31:
                break;
              default:
                goto LABEL_5;
            }

            while (1)
            {
              v94 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v94, v95);
LABEL_39:
              v96 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v96, v97);
              v54 = OUTLINED_FUNCTION_1_15();
LABEL_40:
              if (testFldeq(v54, v55, v56, v57))
              {
                break;
              }

LABEL_41:
              if (advance_tok(v4, v47, v48, v49))
              {
                goto LABEL_14;
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  vretproc(v4);
  OUTLINED_FUNCTION_113();
}

uint64_t is_pathname(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  v138 = *MEMORY[0x277D85DE8];
  v133[0] = 0;
  v133[1] = 0;
  v131[0] = 0;
  v131[1] = 0;
  v132 = 0;
  v130[0] = 0;
  v130[1] = 0;
  v129[0] = 0;
  v129[1] = 0;
  OUTLINED_FUNCTION_48_1();
  v124 = 0;
  v125 = 0;
  v126 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v123, v2);
  OUTLINED_FUNCTION_57_1();
  bzero(v137, v3);
  if (!setjmp(v137))
  {
    v4 = ventproc(v1, v123, v136, v135, v134, v137);
    if (!v4)
    {
      OUTLINED_FUNCTION_62_1(v4, v133);
      WORD2(v132) = 0;
      LODWORD(v132) = 0;
      LODWORD(v131[0]) = -65535;
      v5 = OUTLINED_FUNCTION_128();
      push_ptr_init(v5, v6);
      push_ptr_init(v1, v129);
      v7 = OUTLINED_FUNCTION_107();
      push_ptr_init(v7, v8);
      v9 = OUTLINED_FUNCTION_87_1();
      push_ptr_init(v9, v10);
      v11 = OUTLINED_FUNCTION_86_1();
      push_ptr_init(v11, v12);
      WORD2(v126) = 0;
      LODWORD(v126) = 0;
      LODWORD(v124) = -65535;
      v13 = OUTLINED_FUNCTION_73_1();
      fence_16(v13, v14, v15);
      OUTLINED_FUNCTION_99_0();
      if (!v16)
      {
        LODWORD(v18) = 0;
LABEL_6:
        v19 = OUTLINED_FUNCTION_71_1();
        starttest(v19, v20);
        v21 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_l(v21, v22, 1))
        {
LABEL_7:
          savescptr(v1, 3, v127);
          OUTLINED_FUNCTION_64_1();
          bspush_ca_scan_boa();
          v23 = OUTLINED_FUNCTION_51_1();
          if (!testFldeq(v23, v24, 3, 1) && !advance_tok(v1, v25, v26, v27))
          {
            LODWORD(v18) = 1;
          }

          LODWORD(v28) = v18;
          while (1)
          {
LABEL_11:
            v29 = *(v1 + 104);
            if (v29)
            {
              v30 = OUTLINED_FUNCTION_65_1(v29);
              v18 = v28;
            }

            else
            {
              v30 = vback(v1, v28);
              v18 = 0;
            }

            switch(v30)
            {
              case 1:
                goto LABEL_6;
              case 3:
                goto LABEL_7;
              case 4:
                bspop_boa(v1);
                v33 = OUTLINED_FUNCTION_53_1();
                v36 = lpta_loadp_setscan_r(v33, v34, v35);
                LODWORD(v28) = v18;
                if (v36)
                {
                  continue;
                }

                v37 = OUTLINED_FUNCTION_22_8();
                bspush_ca_scan(v37, v38);
                v39 = OUTLINED_FUNCTION_36_2();
                bspush_ca_scan(v39, v40);
                goto LABEL_28;
              case 5:
                goto LABEL_29;
              case 6:
LABEL_28:
                OUTLINED_FUNCTION_4_14();
                v72 = test_string_s();
                LODWORD(v28) = v18;
                if (v72)
                {
                  continue;
                }

LABEL_29:
                v73 = OUTLINED_FUNCTION_27_6();
                bspush_ca_scan(v73, v74);
                v75 = OUTLINED_FUNCTION_1_15();
                v79 = testFldeq(v75, v76, v77, v78);
                LODWORD(v28) = v18;
                if (v79)
                {
                  continue;
                }

                v82 = advance_tok(v1, v18, v80, v81);
                LODWORD(v28) = v18;
                if (v82)
                {
                  continue;
                }

LABEL_31:
                savescptr(v1, 8, v130);
                OUTLINED_FUNCTION_4_14();
                v83 = test_string_s();
                LODWORD(v28) = v18;
                if (v83)
                {
                  continue;
                }

LABEL_32:
                savescptr(v1, 7, v129);
                v84 = OUTLINED_FUNCTION_37_2();
                bspush_ca_scan(v84, v85);
LABEL_33:
                OUTLINED_FUNCTION_4_14();
                v86 = test_string_s();
                LODWORD(v28) = v18;
                if (v86)
                {
                  continue;
                }

LABEL_34:
                v87 = savetok(v1, v131);
                LODWORD(v28) = v18;
                if (v87)
                {
                  continue;
                }

LABEL_45:
                while (1)
                {
                  v109 = OUTLINED_FUNCTION_40_1();
                  bspush_ca_scan(v109, v110);
                  v49 = OUTLINED_FUNCTION_1_15();
LABEL_46:
                  v111 = testFldeq(v49, v50, v51, v52);
                  v28 = v18;
                  if (v111)
                  {
                    goto LABEL_11;
                  }

LABEL_47:
                  v112 = advance_tok(v1, v28, v31, v32);
                  LODWORD(v28) = v18;
                  if (v112)
                  {
                    goto LABEL_11;
                  }

                  v113 = OUTLINED_FUNCTION_41_1();
                  bspush_ca_scan(v113, v114);
                }

              case 7:
                goto LABEL_32;
              case 8:
                goto LABEL_31;
              case 9:
                goto LABEL_33;
              case 10:
                goto LABEL_34;
              case 11:
                v55 = OUTLINED_FUNCTION_32_3();
                bspush_ca_scan(v55, v56);
                v49 = OUTLINED_FUNCTION_3_15();
                goto LABEL_46;
              case 12:
                goto LABEL_47;
              case 13:
                v88 = OUTLINED_FUNCTION_33_3();
                bspush_ca_scan(v88, v89);
                v49 = OUTLINED_FUNCTION_6_14();
                v52 = 75;
                goto LABEL_46;
              case 14:
                v47 = OUTLINED_FUNCTION_46_1();
                bspush_ca_scan(v47, v48);
                v49 = OUTLINED_FUNCTION_6_14();
                v52 = 63;
                goto LABEL_46;
              case 15:
                v49 = OUTLINED_FUNCTION_6_14();
                v52 = 65;
                goto LABEL_46;
              case 16:
                v90 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v90, v91);
                v95 = advance_tok(v1, v92, v93, v94);
                LODWORD(v28) = v18;
                if (v95)
                {
                  continue;
                }

                v96 = OUTLINED_FUNCTION_66_1();
                v98 = savetok(v96, v97);
                LODWORD(v28) = v18;
                if (v98)
                {
                  continue;
                }

                v99 = OUTLINED_FUNCTION_83_1();
                v102 = testeq_tvars(v99, v100, v101);
                LODWORD(v28) = v18;
                if (v102)
                {
                  continue;
                }

                goto LABEL_40;
              case 17:
                goto LABEL_45;
              case 18:
                goto LABEL_41;
              case 19:
LABEL_40:
                savescptr(v1, 19, v128);
                goto LABEL_41;
              case 20:
                v53 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v53, v54);
                v43 = OUTLINED_FUNCTION_3_15();
                goto LABEL_42;
              case 21:
                goto LABEL_43;
              case 22:
                v41 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v41, v42);
                v43 = OUTLINED_FUNCTION_6_14();
                v46 = 75;
                goto LABEL_42;
              case 23:
                v70 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v70, v71);
                v43 = OUTLINED_FUNCTION_6_14();
                v46 = 63;
                goto LABEL_42;
              case 24:
                v43 = OUTLINED_FUNCTION_6_14();
                v46 = 65;
                goto LABEL_42;
              case 25:
                v57 = OUTLINED_FUNCTION_49_1();
                bspush_ca_scan(v57, v58);
                v62 = advance_tok(v1, v59, v60, v61);
                LODWORD(v28) = v18;
                if (v62)
                {
                  continue;
                }

                v63 = OUTLINED_FUNCTION_66_1();
                v65 = savetok(v63, v64);
                LODWORD(v28) = v18;
                if (v65)
                {
                  continue;
                }

                v66 = OUTLINED_FUNCTION_83_1();
                v69 = testeq_tvars(v66, v67, v68);
                LODWORD(v28) = v18;
                if (v69)
                {
                  continue;
                }

                break;
              case 26:
                break;
              case 27:
                v115 = OUTLINED_FUNCTION_120();
                savescptr(v115, v116, v117);
                v118 = OUTLINED_FUNCTION_128();
                lpta_loadpn(v118, v119);
                OUTLINED_FUNCTION_150();
                if (compare_ptas(v1) || testneq(v1))
                {
                  goto LABEL_51;
                }

                OUTLINED_FUNCTION_155();
                char_name();
                goto LABEL_55;
              case 28:
LABEL_51:
                v120 = OUTLINED_FUNCTION_107();
                lpta_loadpn(v120, v121);
                OUTLINED_FUNCTION_150();
                if (!compare_ptas(v1) && !testneq(v1))
                {
                  goto LABEL_55;
                }

                goto LABEL_5;
              case 29:
              case 30:
              case 32:
LABEL_55:
                *(v1 + 2726) = *(v1 + 2730);
                v122 = OUTLINED_FUNCTION_120();
                process_pathname(v122);
                goto LABEL_56;
              case 33:
LABEL_56:
                vretproc(v1);
                return 0;
              default:
                goto LABEL_5;
            }

            while (1)
            {
              v107 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v107, v108);
LABEL_41:
              v103 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v103, v104);
              v43 = OUTLINED_FUNCTION_1_15();
LABEL_42:
              v105 = testFldeq(v43, v44, v45, v46);
              v28 = v18;
              if (v105)
              {
                break;
              }

LABEL_43:
              v106 = advance_tok(v1, v28, v31, v32);
              LODWORD(v28) = v18;
              if (v106)
              {
                goto LABEL_11;
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  vretproc(v1);
  return 94;
}

uint64_t letter_sequence(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  v165 = *MEMORY[0x277D85DE8];
  v152 = 0;
  v153 = 0;
  v150 = 0;
  v151 = 0;
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148[0], v148[1], v148[2], v149);
  OUTLINED_FUNCTION_57_1();
  bzero(v164, v11);
  v12 = setjmp(v164);
  if (v12 || OUTLINED_FUNCTION_89_1(v12, &v125, v13, v14, v15, v16, v17, v18, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148[0], v148[1], v148[2], v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164[0]) || (v19 = OUTLINED_FUNCTION_72_1(), get_parm(v19, v20, v21, -6), v22 = OUTLINED_FUNCTION_56_1(), OUTLINED_FUNCTION_126(v22, v23), v24 = OUTLINED_FUNCTION_67_1(), push_ptr_init(v24, v25), v26 = OUTLINED_FUNCTION_66_1(), push_ptr_init(v26, v27), fence_16(v1, 0, &_MergedGlobals_1_0), v149 = *(v1 + 3352), v28 = OUTLINED_FUNCTION_42_1(), starttest(v28, v29), OUTLINED_FUNCTION_170(), v31) || *(v1 + 5118) == v30 || (v32 = OUTLINED_FUNCTION_28_5(), lpta_loadp_setscan_r(v32, v33, v34)))
  {
LABEL_6:
    vretproc(v1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_175();
    v36 = 0;
    while (2)
    {
      while (1)
      {
        v37 = OUTLINED_FUNCTION_1_15();
        if (testFldeq(v37, v38, v39, v40) || advance_tok(v1, v41, v42, v43))
        {
          break;
        }

        v44 = OUTLINED_FUNCTION_54_1();
        bspush_ca_scan(v44, v45);
      }

      v46 = v36;
LABEL_12:
      v47 = *(v1 + 104);
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_65_1(v47);
        v50 = v49;
      }

      else
      {
        v48 = vback(v1, v46);
        v50 = 0;
      }

      v51 = 1;
      switch(v48)
      {
        case 2:
          OUTLINED_FUNCTION_75_1();
          v52 = OUTLINED_FUNCTION_90_1();
          savescptr(v52, v53, v54);
          goto LABEL_17;
        case 3:
          v36 = v50;
          continue;
        case 4:
LABEL_17:
          *(v1 + 2614) = *(v1 + 2634);
          v55 = OUTLINED_FUNCTION_56_1();
          process_final_parenthetical(v55, v56, v56);
          goto LABEL_18;
        case 5:
LABEL_18:
          v57 = OUTLINED_FUNCTION_23_8();
          process_final_apostrophe(v57, v58, v59);
          goto LABEL_19;
        case 6:
LABEL_19:
          v60 = OUTLINED_FUNCTION_27_6();
          starttest(v60, v61);
          v62 = OUTLINED_FUNCTION_38_2();
          bspush_ca(v62);
          v63 = *(v1 + 5094);
          goto LABEL_36;
        case 7:
          v91 = OUTLINED_FUNCTION_41_1();
          starttest(v91, v92);
          v93 = OUTLINED_FUNCTION_28_5();
          if (lpta_loadp_setscan_r(v93, v94, v95))
          {
            goto LABEL_40;
          }

          bspush_boa(v1);
          goto LABEL_61;
        case 8:
          v87 = OUTLINED_FUNCTION_45_1();
          bspush_ca(v87);
          v63 = *(v1 + 5130);
          goto LABEL_36;
        case 9:
          goto LABEL_37;
        case 10:
          v89 = OUTLINED_FUNCTION_40_1();
          bspush_ca(v89);
          v63 = *(v1 + 5102);
          goto LABEL_36;
        case 11:
          v88 = OUTLINED_FUNCTION_35_2();
          bspush_ca(v88);
          v63 = *(v1 + 5106);
          goto LABEL_36;
        case 12:
          v82 = OUTLINED_FUNCTION_32_3();
          bspush_ca(v82);
          v63 = *(v1 + 5110);
          goto LABEL_36;
        case 13:
          v80 = OUTLINED_FUNCTION_33_3();
          bspush_ca(v80);
          v63 = *(v1 + 5122);
          goto LABEL_36;
        case 14:
          v63 = *(v1 + 5098);
LABEL_36:
          v46 = v50;
          if (v63 != *(v1 + 5090))
          {
            goto LABEL_12;
          }

LABEL_37:
          OUTLINED_FUNCTION_23_8();
          v90 = monetary_exp();
          v46 = v50;
          if (!v90)
          {
            goto LABEL_68;
          }

          goto LABEL_12;
        case 15:
        case 19:
          goto LABEL_68;
        case 16:
LABEL_40:
          OUTLINED_FUNCTION_88_1();
          if (v31)
          {
            goto LABEL_42;
          }

          abbreviation(v1, &v152, &v150, v148);
          if (v96)
          {
            goto LABEL_42;
          }

          goto LABEL_68;
        case 17:
          bspush_nboa(v1);
          v64 = OUTLINED_FUNCTION_3_15();
          v68 = testFldeq(v64, v65, v66, v67);
          v46 = v50;
          if (v68)
          {
            goto LABEL_12;
          }

          v71 = advance_tok(v1, v50, v69, v70);
          v46 = v50;
          if (v71)
          {
            goto LABEL_12;
          }

          v124 = OUTLINED_FUNCTION_23_8();
          spell_out_alphanum(v124);
          goto LABEL_68;
        case 18:
LABEL_61:
          while (1)
          {
            v114 = OUTLINED_FUNCTION_4_14();
            if (testFldeq(v114, v115, v116, 2) || advance_tok(v1, v117, v118, v119))
            {
              break;
            }

            v120 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v120, v121);
          }

          v46 = v50;
          goto LABEL_12;
        case 20:
LABEL_42:
          OUTLINED_FUNCTION_88_1();
          if (v31)
          {
            goto LABEL_46;
          }

          if (*(v1 + 2618) == 1)
          {
            reset_endptr(v1, &v152, &v150, v1 + 2512);
          }

LABEL_45:
          v97 = OUTLINED_FUNCTION_23_8();
          convert_to_lowercase(v97);
LABEL_46:
          v98 = OUTLINED_FUNCTION_52_1();
          starttest(v98, v99);
          v100 = OUTLINED_FUNCTION_52_1();
          bspush_ca(v100);
          v79 = *(v1 + 5102);
LABEL_47:
          v46 = v50;
          if (v79 != *(v1 + 5090))
          {
            goto LABEL_12;
          }

LABEL_48:
          OUTLINED_FUNCTION_23_8();
          v101 = convert_roman_num();
          v46 = v50;
          if (!v101)
          {
            goto LABEL_67;
          }

          goto LABEL_12;
        case 21:
          goto LABEL_46;
        case 22:
          goto LABEL_45;
        case 23:
          OUTLINED_FUNCTION_88_1();
          if (v31)
          {
            goto LABEL_53;
          }

          v102 = OUTLINED_FUNCTION_23_8();
          acronym(v102, v103, v104);
          if (v105)
          {
            goto LABEL_53;
          }

          goto LABEL_67;
        case 24:
          v78 = OUTLINED_FUNCTION_49_1();
          bspush_ca(v78);
          v79 = *(v1 + 5110);
          goto LABEL_47;
        case 25:
          goto LABEL_48;
        case 26:
          v81 = OUTLINED_FUNCTION_52_1();
          bspush_ca(v81);
          v79 = *(v1 + 5122);
          goto LABEL_47;
        case 27:
          v79 = *(v1 + 5098);
          goto LABEL_47;
        case 28:
        case 36:
          goto LABEL_67;
        case 29:
LABEL_53:
          v106 = OUTLINED_FUNCTION_23_8();
          if (single_letter(v106))
          {
            goto LABEL_54;
          }

          goto LABEL_67;
        case 30:
LABEL_54:
          v107 = OUTLINED_FUNCTION_52_1();
          starttest(v107, v108);
          OUTLINED_FUNCTION_170();
          if (!v31 && *(v1 + 5118) != v109)
          {
            v110 = OUTLINED_FUNCTION_85_1();
            if (!lpta_loadp_setscan_r(v110, v111, 1))
            {
              goto LABEL_57;
            }
          }

          goto LABEL_66;
        case 31:
LABEL_66:
          *(v1 + 2670) = *(v1 + 2694);
          goto LABEL_67;
        case 32:
          bspop_boa(v1);
          v51 = 3;
          goto LABEL_57;
        case 33:
          bspop_boa(v1);
          v75 = advance_tok(v1, v72, v73, v74);
          v46 = v50;
          if (v75)
          {
            goto LABEL_12;
          }

          v76 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v76, v77);
          goto LABEL_57;
        case 34:
          OUTLINED_FUNCTION_98_0();
          v83 = OUTLINED_FUNCTION_12_14();
          v86 = test_ptr(v83, v84, v85);
          v46 = v50;
          if (v86)
          {
            goto LABEL_12;
          }

          v123 = OUTLINED_FUNCTION_23_8();
          spell_out_sequence(v123);
LABEL_67:
          OUTLINED_FUNCTION_23_8();
          normalize_letters();
LABEL_68:
          v122 = OUTLINED_FUNCTION_56_1();
          separate_tokens(v122);
          goto LABEL_69;
        case 35:
LABEL_57:
          bspush_ca_scan_boa();
          v112 = OUTLINED_FUNCTION_51_1();
          if (testFldeq(v112, v113, 4, v51))
          {
            v46 = v50;
          }

          else
          {
            v46 = 1;
          }

          goto LABEL_12;
        case 37:
LABEL_69:
          *(v2 + 8) = v153;
          OUTLINED_FUNCTION_137(v151);
          result = 0;
          break;
        default:
          goto LABEL_6;
      }

      break;
    }
  }

  return result;
}

void hyphen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v75 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_58_1();
  bzero(v69, v4);
  OUTLINED_FUNCTION_57_1();
  bzero(v74, v5);
  v6 = setjmp(v74);
  if (v6 || OUTLINED_FUNCTION_69_1(v6, v69, v7, v8, v9, v10, v11, v12, v66, v67, v68, v69[0], v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7], v69[8], v69[9], v69[10], v69[11], v69[12], v69[13], v69[14], v69[15], v69[16], v69[17], v69[18], v69[19], v69[20], v69[21], v69[22], *v70, *&v70[8], *v71, v72, *v73, *&v73[8], *&v73[16], *&v73[20], *&v73[24], *&v73[28], *&v73[30], *&v73[32], *&v73[36], v73[38], v73[39], *&v73[40], v74[0]) || (v13 = OUTLINED_FUNCTION_13_14(), get_parm(v13, v14, v15, -6), OUTLINED_FUNCTION_62_1(v16, v71), v17 = OUTLINED_FUNCTION_86_1(), push_ptr_init(v17, v18), fence_16(v3, 0, &_MergedGlobals_1_0), v19 = OUTLINED_FUNCTION_110(), starttest(v19, v20), v21 = OUTLINED_FUNCTION_54_1(), lpta_loadp_setscan_r(v21, v22, 1)))
  {
LABEL_4:
    vretproc(v3);
  }

  else
  {
    v23 = 0;
    OUTLINED_FUNCTION_75_1();
    while (1)
    {
      v25 = v24;
      bspush_ca_scan(v3, v24);
      OUTLINED_FUNCTION_24_8();
      v26 = test_string_s();
      v27 = v23;
      v28 = v23;
      if (v26)
      {
        break;
      }

LABEL_26:
      v23 = v27;
      v55 = OUTLINED_FUNCTION_111();
      bspush_ca_scan(v55, v56);
LABEL_27:
      v24 = v25;
    }

    while (2)
    {
      v29 = *(v3 + 104);
      if (v29)
      {
        v30 = OUTLINED_FUNCTION_65_1(v29);
        v23 = v31;
      }

      else
      {
        v30 = vback(v3, v28);
        v23 = 0;
      }

      v27 = v23;
      switch(v30)
      {
        case 2:
          v32 = OUTLINED_FUNCTION_106();
          bspush_ca_scan(v32, v33);
          OUTLINED_FUNCTION_24_8();
          v34 = test_string_s();
          v28 = v23;
          if (v34)
          {
            continue;
          }

          goto LABEL_25;
        case 3:
          goto LABEL_26;
        case 4:
          v50 = OUTLINED_FUNCTION_84_1();
          bspush_ca_scan(v50, v51);
          OUTLINED_FUNCTION_24_8();
          goto LABEL_23;
        case 5:
LABEL_25:
          v53 = OUTLINED_FUNCTION_112();
          savescptr(v53, v54, v70);
          v27 = v23;
          goto LABEL_26;
        case 6:
          OUTLINED_FUNCTION_24_8();
LABEL_23:
          v52 = test_string_s();
          v27 = v23;
          v28 = v23;
          if (!v52)
          {
            goto LABEL_26;
          }

          continue;
        case 7:
          v35 = OUTLINED_FUNCTION_27_6();
          savescptr(v35, v36, v71);
          v37 = OUTLINED_FUNCTION_156();
          lpta_loadpn(v37, v38);
          OUTLINED_FUNCTION_150();
          if (compare_ptas(v3) || testneq(v3))
          {
            goto LABEL_17;
          }

          goto LABEL_29;
        case 8:
          goto LABEL_27;
        case 9:
LABEL_17:
          v39 = OUTLINED_FUNCTION_70_1();
          starttest(v39, v40);
          OUTLINED_FUNCTION_74_1();
          bspush_ca_boa();
          v41 = OUTLINED_FUNCTION_54_1();
          v43 = lpta_loadp_setscan_r(v41, v42, 1);
          v28 = v23;
          if (!v43)
          {
            v46 = advance_tok(v3, v23, v44, v45);
            v28 = v23;
            if (!v46)
            {
              *(v3 + 136) = 1;
              v47 = OUTLINED_FUNCTION_12_14();
              if (test_ptr(v47, v48, v49))
              {
                v28 = v23;
              }

              else
              {
                v28 = 1;
              }
            }
          }

          continue;
        case 10:
        case 11:
        case 14:
        case 17:
        case 18:
          goto LABEL_37;
        case 12:
          OUTLINED_FUNCTION_79_1();
          if (!v58)
          {
            goto LABEL_34;
          }

          v59 = OUTLINED_FUNCTION_53_1();
          if (lpta_loadp_setscan_r(v59, v60, v61))
          {
            goto LABEL_34;
          }

          OUTLINED_FUNCTION_4_14();
          if (test_string_s())
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        case 13:
          bspop_boa(v3);
LABEL_29:
          v57 = OUTLINED_FUNCTION_101();
          goto LABEL_36;
        case 15:
LABEL_34:
          v62 = OUTLINED_FUNCTION_101();
          shortdash(v62);
          break;
        case 16:
LABEL_35:
          v63 = OUTLINED_FUNCTION_72_1();
          savescptr(v63, v64, v65);
          v57 = OUTLINED_FUNCTION_72_1();
LABEL_36:
          longdash(v57);
          break;
        default:
          goto LABEL_4;
      }

      break;
    }

LABEL_37:
    OUTLINED_FUNCTION_137(v72);
  }

  OUTLINED_FUNCTION_113();
}

void slash(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v111 = *MEMORY[0x277D85DE8];
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  OUTLINED_FUNCTION_10_14(v4, v5, v6, v7, v8, v9, v10, v11, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  OUTLINED_FUNCTION_57_1();
  bzero(v110, v12);
  v13 = setjmp(v110);
  if (v13 || OUTLINED_FUNCTION_89_1(v13, &v69, v14, v15, v16, v17, v18, v19, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110[0]) || (v20 = OUTLINED_FUNCTION_13_14(), get_parm(v20, v21, v22, -6), v23 = OUTLINED_FUNCTION_56_1(), OUTLINED_FUNCTION_126(v23, v24), v25 = OUTLINED_FUNCTION_67_1(), push_ptr_init(v25, v26), v27 = OUTLINED_FUNCTION_66_1(), push_ptr_init(v27, v28), fence_16(v3, 0, &_MergedGlobals_1_0), v29 = OUTLINED_FUNCTION_29_5(), lpta_loadp_setscan_r(v29, v30, v31)) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
  {
LABEL_5:
    vretproc(v3);
  }

  else
  {
    OUTLINED_FUNCTION_143();
    while (2)
    {
      v32 = OUTLINED_FUNCTION_55_1();
      savescptr(v32, v33, &v96);
      OUTLINED_FUNCTION_99_0();
      if (!v34)
      {
LABEL_9:
        v35 = OUTLINED_FUNCTION_70_1();
        starttest(v35, v36);
        v37 = OUTLINED_FUNCTION_29_5();
        if (!lpta_loadp_setscan_r(v37, v38, v39))
        {
LABEL_10:
          while (1)
          {
            v40 = OUTLINED_FUNCTION_1_15();
            if (testFldeq(v40, v41, v42, v43) || advance_tok(v3, v44, v45, v46))
            {
              break;
            }

            v50 = OUTLINED_FUNCTION_64_1();
            bspush_ca_scan(v50, v51);
          }

LABEL_12:
          v47 = *(v3 + 104);
          if (v47)
          {
            v48 = OUTLINED_FUNCTION_65_1(v47);
          }

          else
          {
            v48 = OUTLINED_FUNCTION_133();
          }

          switch(v48)
          {
            case 2:
              continue;
            case 3:
              goto LABEL_9;
            case 4:
            case 8:
              goto LABEL_21;
            case 5:
              savescptr(v3, 5, &v94);
              v49 = OUTLINED_FUNCTION_81_1();
              if (end_of_word(v49))
              {
                goto LABEL_12;
              }

              v52 = OUTLINED_FUNCTION_8_14();
              if (slash_before_measure(v52))
              {
                goto LABEL_20;
              }

              goto LABEL_21;
            case 6:
              goto LABEL_10;
            case 7:
LABEL_20:
              *(v3 + 136) = 1;
              *(v3 + 112) = v97;
              *(v3 + 128) = 0;
              v54 = OUTLINED_FUNCTION_129();
              insert_r(v54, v55, 6, v56, v57);
              break;
            case 9:
              goto LABEL_22;
            case 10:
              goto LABEL_23;
            case 11:
            case 13:
              goto LABEL_27;
            case 12:
              goto LABEL_25;
            default:
              goto LABEL_5;
          }
        }
      }

      break;
    }

LABEL_21:
    OUTLINED_FUNCTION_23_8();
    char_name();
LABEL_22:
    v58 = OUTLINED_FUNCTION_56_1();
    separate_tokens(v58);
LABEL_23:
    *(v3 + 2614) = *(v3 + 2646);
    v59 = OUTLINED_FUNCTION_85_1();
    if (!lpta_loadp_setscan_l(v59, v60, 2) && !advance_tok(v3, v61, v62, v63))
    {
LABEL_25:
      v64 = OUTLINED_FUNCTION_72_1();
      savescptr(v64, v65, v66);
      v67 = OUTLINED_FUNCTION_55_1();
      if (!mark_word_stress(v67))
      {
        v68 = OUTLINED_FUNCTION_123();
        mark_word_str_annot(v68);
      }
    }

LABEL_27:
    OUTLINED_FUNCTION_137(v97);
  }

  OUTLINED_FUNCTION_113();
}

void quote_mark(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v78 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_10(v5, v6, v7, v8, v9, v10, v11, v12, v50, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_177(v13, v14, v15, v16, v17, v18, v19, v20, v51, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
  v21 = setjmp(v4);
  if (!v21 && !OUTLINED_FUNCTION_44_1(v21, v54, v22, v23, v24, v25, v26, v27, v52, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, SHIDWORD(v73), v74, SWORD2(v74), SHIWORD(v74), v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v76, v77))
  {
    v28 = OUTLINED_FUNCTION_13_14();
    get_parm(v28, v29, v30, -6);
    OUTLINED_FUNCTION_62_1(v31, &v69);
    fence_16(v3, 0, &_MergedGlobals_1_0);
    v32 = OUTLINED_FUNCTION_110();
    starttest(v32, v33);
    v34 = OUTLINED_FUNCTION_54_1();
    if (!lpta_loadp_setscan_r(v34, v35, 1))
    {
      v36 = OUTLINED_FUNCTION_15_12();
      bspush_ca_scan(v36, v37);
      OUTLINED_FUNCTION_4_14();
      if (test_string_s())
      {
        while (2)
        {
          v38 = *(v3 + 104);
          if (v38)
          {
            v39 = OUTLINED_FUNCTION_65_1(v38);
          }

          else
          {
            v39 = OUTLINED_FUNCTION_133();
          }

          switch(v39)
          {
            case 2:
              v40 = OUTLINED_FUNCTION_55_1();
              bspush_ca_scan(v40, v41);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 3:
              break;
            case 4:
              v46 = OUTLINED_FUNCTION_64_1();
              bspush_ca_scan(v46, v47);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 5:
              v48 = OUTLINED_FUNCTION_81_1();
              bspush_ca_scan(v48, v49);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 6:
              v42 = OUTLINED_FUNCTION_91_0();
              bspush_ca_scan(v42, v43);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 7:
              v44 = OUTLINED_FUNCTION_54_1();
              bspush_ca_scan(v44, v45);
              OUTLINED_FUNCTION_4_14();
              goto LABEL_16;
            case 8:
              OUTLINED_FUNCTION_4_14();
LABEL_16:
              if (!test_string_s())
              {
                break;
              }

              continue;
            case 9:
              goto LABEL_18;
            default:
              goto LABEL_4;
          }

          break;
        }
      }

      OUTLINED_FUNCTION_162(3, v53, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
LABEL_18:
      OUTLINED_FUNCTION_95_0(v70);
    }
  }

LABEL_4:
  vretproc(v3);
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_113();
}

uint64_t span_inverted_punct(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v157);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v158, v160, v162, v164, v166);
  if (setjmp(v2))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v159, v161, v163, v165, v167))
  {
    goto LABEL_4;
  }

  v27 = OUTLINED_FUNCTION_13_14();
  get_parm(v27, v28, v29, -6);
  OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149);
  fence_16(v1, 0, &_MergedGlobals_1_0);
  v38 = OUTLINED_FUNCTION_110();
  starttest(v38, v39);
  v40 = OUTLINED_FUNCTION_54_1();
  if (lpta_loadp_setscan_r(v40, v41, 1))
  {
    goto LABEL_4;
  }

  v43 = OUTLINED_FUNCTION_15_12();
  bspush_ca_scan(v43, v44);
  OUTLINED_FUNCTION_4_14();
  if (test_string_s())
  {
    while (1)
    {
      v45 = *(v1 + 104);
      v46 = v45 ? OUTLINED_FUNCTION_65_1(v45) : OUTLINED_FUNCTION_133();
      if (v46 != 2)
      {
        break;
      }

      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
        goto LABEL_14;
      }
    }

    if ((v46 - 4) < 3)
    {
      goto LABEL_16;
    }

    if (v46 != 3)
    {
LABEL_4:
      vretproc(v1);
      return 94;
    }
  }

LABEL_14:
  v47 = OUTLINED_FUNCTION_83_1();
  savescptr(v47, v48, v49);
  OUTLINED_FUNCTION_88_1();
  if (!v50)
  {
    v51 = OUTLINED_FUNCTION_50_1();
    single_chars(v51, v52, v53);
  }

LABEL_16:
  OUTLINED_FUNCTION_137(v153);
  return 0;
}

uint64_t bracket(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  v175 = *MEMORY[0x277D85DE8];
  v171[0] = 0;
  v171[1] = 0;
  v169 = 0;
  v170 = 0;
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v168[0], v168[1], v168[2], v168[3], v168[4], v168[5], v168[6], v168[7], v168[8], v168[9], v168[10], v168[11], v168[12], v168[13], v168[14], v168[15], v168[16], v168[17], v168[18], v168[19], v168[20], v168[21], v168[22], v168[23], v168[24], v168[25], v168[26]);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v11, v12);
  v13 = setjmp(v2);
  if (!v13 && !OUTLINED_FUNCTION_160(v13, v168, v174, v173, v172))
  {
    v15 = OUTLINED_FUNCTION_13_14();
    get_parm(v15, v16, v17, -6);
    v18 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_126(v18, v19);
    v20 = OUTLINED_FUNCTION_67_1();
    push_ptr_init(v20, v21);
    v22 = OUTLINED_FUNCTION_66_1();
    push_ptr_init(v22, v23);
    v24 = 0;
    v25 = OUTLINED_FUNCTION_73_1();
    fence_16(v25, v26, v27);
    v28 = OUTLINED_FUNCTION_29_5();
    if (lpta_loadp_setscan_r(v28, v29, v30) || (OUTLINED_FUNCTION_4_14(), v24 = 0, v31 = 0, test_string_s()))
    {
      while (2)
      {
        v32 = OUTLINED_FUNCTION_27_6();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_28_5();
        if (lpta_loadp_setscan_r(v34, v35, v36))
        {
LABEL_7:
          v37 = OUTLINED_FUNCTION_28_5();
          if (lpta_loadp_setscan_r(v37, v38, v39) || (OUTLINED_FUNCTION_4_14(), v40 = test_string_s(), v41 = v24, v40))
          {
LABEL_9:
            v42 = OUTLINED_FUNCTION_28_5();
            if (lpta_loadp_setscan_r(v42, v43, v44))
            {
              goto LABEL_3;
            }

            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              goto LABEL_3;
            }

LABEL_11:
            v45 = v24;
            v46 = OUTLINED_FUNCTION_72_1();
            savescptr(v46, v47, v48);
            v49 = OUTLINED_FUNCTION_52_1();
            starttest(v49, v50);
            v51 = OUTLINED_FUNCTION_55_1();
            if (!lpta_loadp_setscan_r(v51, v52, 1))
            {
LABEL_12:
              v24 = &unk_2806BB0F7;
              while (1)
              {
                OUTLINED_FUNCTION_4_14();
                if (test_string_s())
                {
                  break;
                }

                v53 = OUTLINED_FUNCTION_54_1();
                bspush_ca_scan(v53, v54);
              }

              goto LABEL_42;
            }

            goto LABEL_70;
          }

LABEL_27:
          v24 = v41;
          v88 = OUTLINED_FUNCTION_90_1();
          savescptr(v88, v89, v90);
          v91 = OUTLINED_FUNCTION_32_3();
          starttest(v91, v92);
          if (*(v1 + 2642) == *(v1 + 2610))
          {
            v93 = OUTLINED_FUNCTION_7_14();
            if (!lpta_loadp_setscan_r(v93, v94, v95))
            {
              v121 = OUTLINED_FUNCTION_3_15();
              if (!testFldeq(v121, v122, v123, v124))
              {
                LODWORD(v31) = v24;
                if (advance_tok(v1, v125, v126, v127))
                {
                  goto LABEL_43;
                }

LABEL_70:
                v165 = OUTLINED_FUNCTION_23_8();
                single_chars(v165, v166, v167);
                goto LABEL_71;
              }

LABEL_32:
              LODWORD(v31) = v24;
              goto LABEL_43;
            }
          }

LABEL_29:
          v96 = OUTLINED_FUNCTION_41_1();
          starttest(v96, v97);
          v98 = OUTLINED_FUNCTION_7_14();
          v45 = v24;
          if (!lpta_loadp_setscan_r(v98, v99, v100))
          {
LABEL_39:
            v24 = &unk_2806BB0F6;
            while (1)
            {
              OUTLINED_FUNCTION_4_14();
              if (test_string_s())
              {
                break;
              }

              v128 = OUTLINED_FUNCTION_54_1();
              bspush_ca_scan(v128, v129);
            }

LABEL_42:
            LODWORD(v31) = v45;
            goto LABEL_43;
          }

LABEL_30:
          v101 = OUTLINED_FUNCTION_52_1();
          starttest(v101, v102);
          v103 = OUTLINED_FUNCTION_7_14();
          lpta_loadp_setscan_r(v103, v104, v105);
          OUTLINED_FUNCTION_174();
          if (v108)
          {
LABEL_31:
            v109 = OUTLINED_FUNCTION_46_1();
            starttest(v109, v110);
            OUTLINED_FUNCTION_52_1();
            bspush_ca_boa();
            v111 = OUTLINED_FUNCTION_7_14();
            if (lpta_loadp_setscan_r(v111, v112, v113))
            {
              goto LABEL_32;
            }

            v114 = OUTLINED_FUNCTION_49_1();
            bspush_ca_scan(v114, v115);
            v116 = OUTLINED_FUNCTION_1_15();
            v120 = testFldeq(v116, v117, v118, v119);
            v106 = 73;
            v107 = v24;
            LODWORD(v31) = v24;
            if (v120)
            {
              goto LABEL_43;
            }
          }

LABEL_67:
          LODWORD(v31) = v107;
          v24 = v106;
          bspush_ca_scan_boa();
          v162 = OUTLINED_FUNCTION_6_14();
          if (!testFldeq(v162, v163, v164, v24))
          {
            LODWORD(v31) = 1;
          }

LABEL_43:
          LODWORD(v130) = v31;
LABEL_44:
          v131 = *(v1 + 104);
          if (v131)
          {
            v132 = OUTLINED_FUNCTION_60_1(v131);
          }

          else
          {
            v132 = vback(v1, v130);
            v24 = 0;
          }

          switch(v132)
          {
            case 1:
              continue;
            case 2:
              v31 = v24;
              goto LABEL_18;
            case 3:
            case 6:
            case 14:
            case 15:
            case 24:
            case 29:
            case 35:
            case 36:
              goto LABEL_71;
            case 4:
              goto LABEL_21;
            case 5:
              goto LABEL_22;
            case 7:
              goto LABEL_7;
            case 8:
              v135 = OUTLINED_FUNCTION_45_1();
              bspush_ca_scan(v135, v136);
              goto LABEL_49;
            case 9:
            case 17:
              goto LABEL_16;
            case 10:
LABEL_49:
              OUTLINED_FUNCTION_4_14();
              v137 = test_string_s();
              LODWORD(v130) = v24;
              if (!v137)
              {
                goto LABEL_16;
              }

              goto LABEL_44;
            case 11:
              goto LABEL_9;
            case 12:
              v41 = v24;
              goto LABEL_27;
            case 13:
              goto LABEL_29;
            case 16:
              goto LABEL_30;
            case 18:
              v45 = v24;
              goto LABEL_39;
            case 19:
              goto LABEL_31;
            case 20:
              bspop_boa(v1);
              v141 = advance_tok(v1, v138, v139, v140);
              LODWORD(v130) = v24;
              if (v141)
              {
                goto LABEL_44;
              }

              v142 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v142, v143);
              goto LABEL_53;
            case 21:
              OUTLINED_FUNCTION_174();
              goto LABEL_67;
            case 22:
LABEL_53:
              OUTLINED_FUNCTION_125();
              v144 = OUTLINED_FUNCTION_59_1();
              savescptr(v144, v145, v146);
              OUTLINED_FUNCTION_4_14();
              v147 = test_string_s();
              LODWORD(v130) = v24;
              if (!v147)
              {
                goto LABEL_61;
              }

              goto LABEL_44;
            case 23:
LABEL_61:
              v153 = OUTLINED_FUNCTION_72_1();
              savescptr(v153, v154, v155);
              v87 = OUTLINED_FUNCTION_63_1();
              goto LABEL_25;
            case 25:
              bspop_boa(v1);
              goto LABEL_70;
            case 26:
              v148 = OUTLINED_FUNCTION_3_15();
              v152 = testFldeq(v148, v149, v150, v151);
              v130 = v24;
              if (v152)
              {
                goto LABEL_44;
              }

              goto LABEL_58;
            case 27:
              bspop_boa(v1);
              goto LABEL_58;
            case 28:
LABEL_58:
              if (advance_tok(v1, v130, v133, v134))
              {
                LODWORD(v130) = v24;
              }

              else
              {
                LODWORD(v130) = 1;
              }

              goto LABEL_44;
            case 31:
              goto LABEL_11;
            case 32:
              goto LABEL_70;
            case 33:
              v156 = OUTLINED_FUNCTION_90_1();
              savescptr(v156, v157, v158);
              if (!lpta_loadp_setscan_l(v1, v171, 1))
              {
                *(v1 + 136) = 1;
                v159 = OUTLINED_FUNCTION_12_14();
                if (!test_ptr(v159, v160, v161))
                {
                  goto LABEL_70;
                }
              }

              goto LABEL_71;
            case 34:
              v45 = v24;
              goto LABEL_12;
            default:
              goto LABEL_3;
          }
        }

        break;
      }

      v55 = OUTLINED_FUNCTION_38_2();
      bspush_ca_scan(v55, v56);
      OUTLINED_FUNCTION_4_14();
      LODWORD(v31) = v24;
      if (test_string_s())
      {
        goto LABEL_43;
      }

LABEL_16:
      v57 = OUTLINED_FUNCTION_90_1();
      savescptr(v57, v58, v59);
    }

    else
    {
LABEL_18:
      OUTLINED_FUNCTION_75_1();
      v24 = &v169;
      v60 = OUTLINED_FUNCTION_72_1();
      savescptr(v60, v61, v62);
      v63 = OUTLINED_FUNCTION_52_1();
      starttest_l(v63, v64);
      v65 = OUTLINED_FUNCTION_55_1();
      if (!lpta_loadp_setscan_r(v65, v66, 1))
      {
        v67 = OUTLINED_FUNCTION_1_15();
        if (!testFldeq(v67, v68, v69, v70))
        {
          v24 = v31;
          if (!advance_tok(v1, v71, v72, v73))
          {
LABEL_21:
            LODWORD(v31) = v24;
            OUTLINED_FUNCTION_115();
            v74 = OUTLINED_FUNCTION_59_1();
            savescptr(v74, v75, v76);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              goto LABEL_43;
            }

LABEL_22:
            LODWORD(v31) = v24;
            OUTLINED_FUNCTION_93_0();
            v77 = OUTLINED_FUNCTION_83_1();
            savescptr(v77, v78, v79);
            v80 = OUTLINED_FUNCTION_1_15();
            if (!testFldeq(v80, v81, v82, v83) && !advance_tok(v1, v84, v85, v86))
            {
              v87 = OUTLINED_FUNCTION_50_1();
LABEL_25:
              delete_inp_from_left(v87);
              goto LABEL_71;
            }
          }
        }

        goto LABEL_43;
      }
    }

LABEL_71:
    OUTLINED_FUNCTION_95_0(v170);
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_173();
}

void misc_chars(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v89 = *MEMORY[0x277D85DE8];
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  HIDWORD(v73) = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v72, v4);
  OUTLINED_FUNCTION_57_1();
  bzero(v88, v5);
  v6 = setjmp(v88);
  if (v6 || OUTLINED_FUNCTION_34_3(v6, v72, v7, v8, v9, v10, v11, v12, v70, v71, v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], v72[12], v72[13], v72[14], v72[15], v72[16], v72[17], v72[18], v72[19], v72[20], v72[21], v72[22], v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88[0]))
  {
    goto LABEL_3;
  }

  v13 = OUTLINED_FUNCTION_13_14();
  get_parm(v13, v14, v15, -6);
  OUTLINED_FUNCTION_62_1(v16, &v74);
  HIDWORD(v73) = 65532;
  fence_16(v3, 0, &_MergedGlobals_1_0);
  v17 = OUTLINED_FUNCTION_29_5();
  if (!lpta_loadp_setscan_r(v17, v18, v19))
  {
    OUTLINED_FUNCTION_4_14();
    if (!test_string_s())
    {
LABEL_27:
      OUTLINED_FUNCTION_75_1();
      v67 = OUTLINED_FUNCTION_138();
      savescptr(v67, v68, v69);
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_153();
  while (2)
  {
    v20 = OUTLINED_FUNCTION_55_1();
    if (!lpta_loadp_setscan_r(v20, v21, 1))
    {
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
LABEL_9:
        v22 = OUTLINED_FUNCTION_106();
        savescptr(v22, v23, &v74);
        v24 = OUTLINED_FUNCTION_112();
        starttest(v24, v25);
        v26 = OUTLINED_FUNCTION_74_1();
        move_i(v26, v27, v28);
        goto LABEL_10;
      }
    }

LABEL_15:
    v35 = OUTLINED_FUNCTION_55_1();
    if (lpta_loadp_setscan_r(v35, v36, 1) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
    {
LABEL_17:
      v37 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v37, v38, 1) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
      {
LABEL_23:
        v55 = OUTLINED_FUNCTION_53_1();
        if (!lpta_loadp_setscan_r(v55, v56, v57) && !advance_tok(v3, v58, v59, v60))
        {
LABEL_25:
          OUTLINED_FUNCTION_118();
          v61 = OUTLINED_FUNCTION_138();
          savescptr(v61, v62, v63);
        }
      }

      else
      {
LABEL_19:
        v39 = OUTLINED_FUNCTION_84_1();
        savescptr(v39, v40, &v74);
        v41 = OUTLINED_FUNCTION_70_1();
        starttest(v41, v42);
        OUTLINED_FUNCTION_170();
        if (!v44 && *(v3 + 5110) != v43)
        {
          v45 = OUTLINED_FUNCTION_74_1();
          move_i(v45, v46, v47);
          goto LABEL_10;
        }
      }

LABEL_26:
      v64 = OUTLINED_FUNCTION_138();
      single_chars(v64, v65, v66);
      goto LABEL_28;
    }

LABEL_22:
    v48 = OUTLINED_FUNCTION_91_0();
    savescptr(v48, v49, &v74);
    v50 = OUTLINED_FUNCTION_54_1();
    starttest(v50, v51);
    v52 = OUTLINED_FUNCTION_74_1();
    move_i(v52, v53, v54);
LABEL_10:
    v29 = OUTLINED_FUNCTION_64_1();
    convert_monetary_exp(v29, v30, &v74, v31, &v73 + 4);
    if (!v32)
    {
LABEL_28:
      OUTLINED_FUNCTION_95_0(v75);
      break;
    }

    v33 = *(v3 + 104);
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_65_1(v33);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_133();
    }

    switch(v34)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_27;
      case 3:
      case 7:
      case 11:
      case 15:
        goto LABEL_28;
      case 4:
        goto LABEL_15;
      case 5:
        goto LABEL_9;
      case 6:
      case 10:
      case 14:
      case 16:
        goto LABEL_26;
      case 8:
        goto LABEL_17;
      case 9:
        goto LABEL_22;
      case 12:
        goto LABEL_23;
      case 13:
        goto LABEL_19;
      case 17:
        goto LABEL_25;
      default:
        goto LABEL_3;
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_113();
}

uint64_t init_ptr_End_reproc_string(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v158, v161);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v159, v162, v165, v167, v169, v171);
  if (setjmp(v2) || (OUTLINED_FUNCTION_0_16(), OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v160, v163, v166, v168, v170, v172)) || (v28 = OUTLINED_FUNCTION_63_1(), get_parm(v28, v29, v30, -6), OUTLINED_FUNCTION_43_1(v31, v32, v33, v34, v35, v36, v37, v38, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154), fence_16(v1, 0, &_MergedGlobals_1_0), v39 = OUTLINED_FUNCTION_130(), fence_16(v39, v40, v41), OUTLINED_FUNCTION_180(), OUTLINED_FUNCTION_150(), !compare_ptas(v1)) && !testeq(v1))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  OUTLINED_FUNCTION_143();
LABEL_7:
  *(v1 + 136) = 1;
  *(v1 + 112) = v164;
  *(v1 + 128) = 0;
  v42 = OUTLINED_FUNCTION_135();
  addfence(v42, v43);
  v44 = OUTLINED_FUNCTION_55_1();
  starttest_l(v44, v45);
  v46 = OUTLINED_FUNCTION_54_1();
  if (!lpta_loadp_setscan_l(v46, v47, 1))
  {
    while (2)
    {
      v48 = OUTLINED_FUNCTION_70_1();
      bspush_ca_scan(v48, v49);
      *(v1 + 136) = 1;
      *(v1 + 112) = *(v1 + 2504);
      *(v1 + 128) = 0;
      if (test_ptr(v1, v50, v51))
      {
LABEL_9:
        if (*(v1 + 104))
        {
          *(v1 + 104) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_133();
        }

        OUTLINED_FUNCTION_152();
        if (!(!v57 & v56))
        {
          switch(v55)
          {
            case 1:
              goto LABEL_18;
            case 2:
              continue;
            case 3:
              if (!advance_tok(v1, v52, v53, v54))
              {
                continue;
              }

              goto LABEL_9;
            default:
              goto LABEL_7;
          }
        }

        goto LABEL_3;
      }

      break;
    }

    *(v1 + 2504) = *(v1 + 3352);
    *(v1 + 2726) = 0;
    if (*(v1 + 2670) == 1)
    {
      *(v1 + 2670) = 0;
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_98_0();
  v58 = OUTLINED_FUNCTION_12_14();
  remfence(v58, 5);
  vretproc(v1);
  return 0;
}

uint64_t create_final_sync(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v140, v142, v144);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v141, v143, v145))
    {
      v28 = OUTLINED_FUNCTION_54_1();
      OUTLINED_FUNCTION_126(v28, v29);
      v30 = OUTLINED_FUNCTION_70_1();
      OUTLINED_FUNCTION_127(v30, v31);
      v32 = OUTLINED_FUNCTION_73_1();
      fence_16(v32, v33, v34);
      *(v1 + 168) = 1;
      OUTLINED_FUNCTION_117();
      v35 = OUTLINED_FUNCTION_47_1();
      insert_l(v35, v36);
      v37 = OUTLINED_FUNCTION_54_1();
      lpta_storep(v37, v38, v39);
      v40 = OUTLINED_FUNCTION_142();
      starttest(v40, v41);
      v42 = OUTLINED_FUNCTION_70_1();
      v44 = 0;
      if (lpta_loadp_setscan_l(v42, v43, 2))
      {
LABEL_6:
        v47 = OUTLINED_FUNCTION_110();
        starttest(v47, v48);
        v49 = OUTLINED_FUNCTION_66_1();
        if (lpta_loadp_setscan_l(v49, v50, 4))
        {
LABEL_16:
          OUTLINED_FUNCTION_95_0(v137);
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_22_8();
        bspush_ca_scan_boa();
        v45 = advanc(v1);
        if (v45)
        {
          v46 = v44;
        }

        else
        {
          v46 = 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_15_12();
        bspush_ca_scan_boa();
        v45 = advanc(v1);
        v46 = !v45;
      }

      if (*(v1 + 104))
      {
        v51 = OUTLINED_FUNCTION_144(v45, v46);
      }

      else
      {
        v52 = vback(v1, v46);
        v51 = 0;
      }

      v44 = v51;
      switch(v52)
      {
        case 1:
          goto LABEL_6;
        case 2:
          bspop_boa(v1);
          v53 = OUTLINED_FUNCTION_50_1();
          project_word_boundary_sync(v53);
          goto LABEL_16;
        case 3:
        case 4:
          goto LABEL_16;
        case 5:
          bspop_boa(v1);
          *(v1 + 168) = 1;
          *(v1 + 144) = v137;
          *(v1 + 136) = 1;
          v54 = OUTLINED_FUNCTION_12_14();
          proj_l(v54, 4, v55);
          goto LABEL_16;
        default:
          break;
      }
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

uint64_t single_chars_token(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v192, v195);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189, v193, v196, v198, v200, v202, v204);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194, v197, v199, v201, v203, v205))
    {
      v28 = OUTLINED_FUNCTION_13_14();
      get_parm(v28, v29, v30, -6);
      OUTLINED_FUNCTION_43_1(v31, v32, v33, v34, v35, v36, v37, v38, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186);
      fence_16(v1, 0, &_MergedGlobals_1_0);
      v39 = OUTLINED_FUNCTION_110();
      starttest(v39, v40);
      v41 = OUTLINED_FUNCTION_54_1();
      if (lpta_loadp_setscan_r(v41, v42, 1))
      {
LABEL_5:
        v43 = OUTLINED_FUNCTION_50_1();
        single_chars(v43, v44, v45);
LABEL_6:
        OUTLINED_FUNCTION_61_1(v46, v47, v48, v49, v50, v51, v52, v53, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v191);
      }

      else
      {
        v54 = 0;
        while (2)
        {
          v55 = v54;
          v56 = OUTLINED_FUNCTION_54_1();
          bspush_ca_scan(v56, v57);
          OUTLINED_FUNCTION_70_1();
          bspush_ca_scan_boa();
          v58 = OUTLINED_FUNCTION_51_1();
          if (!testFldeq(v58, v59, 0, 72))
          {
            v55 = 1;
          }

LABEL_10:
          v60 = v1[13];
          if (v60)
          {
            v46 = OUTLINED_FUNCTION_65_1(v60);
            v55 = v47;
          }

          else
          {
            v46 = vback(v1, v55);
            v55 = 0;
          }

          v54 = v55;
          switch(v46)
          {
            case 1:
              goto LABEL_5;
            case 2:
              OUTLINED_FUNCTION_75_1();
              v65 = OUTLINED_FUNCTION_83_1();
              savescptr(v65, v66, v67);
              goto LABEL_5;
            case 3:
              bspop_boa(v1);
              v64 = advance_tok(v1, v61, v62, v63);
              v54 = v55;
              if (!v64)
              {
                continue;
              }

              goto LABEL_10;
            case 4:
              continue;
            case 5:
              goto LABEL_6;
            default:
              goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

void single_chars(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  v89 = v4;
  OUTLINED_FUNCTION_76_1();
  v103 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_169();
  v91[1] = 0;
  *v92 = 0;
  v91[0] = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v90, v5);
  OUTLINED_FUNCTION_57_1();
  bzero(v102, v6);
  if (setjmp(v102) || ventproc(v3, v90, v101, v100, v99, v102))
  {
LABEL_3:
    vretproc(v3);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_126(v7, v8);
    v9 = OUTLINED_FUNCTION_84_1();
    get_parm(v9, v10, v89, -6);
    v96[0] = -4;
    v94 = -4;
    v11 = OUTLINED_FUNCTION_70_1();
    push_ptr_init(v11, v12);
    v13 = OUTLINED_FUNCTION_151();
    push_ptr_init(v13, v14);
    v15 = OUTLINED_FUNCTION_54_1();
    push_ptr_init(v15, v16);
    v17 = 0;
    v18 = OUTLINED_FUNCTION_73_1();
    fence_16(v18, v19, v20);
    v96[1] = 0;
    v95 = 0;
    v21 = OUTLINED_FUNCTION_74_1();
    single_chars_count_inp(v21, v22, v97, v23);
    OUTLINED_FUNCTION_75_1();
    v88 = v24;
    while (2)
    {
      startloop(v3, v24);
      v25 = OUTLINED_FUNCTION_74_1();
      lpta_loadpn(v25, v26);
      OUTLINED_FUNCTION_80_1();
      lpta_mover();
      v27 = OUTLINED_FUNCTION_70_1();
      lpta_storep(v27, v28, v29);
      v30 = OUTLINED_FUNCTION_84_1();
      lpta_loadpn(v30, v31);
      OUTLINED_FUNCTION_80_1();
      lpta_mover();
      v32 = OUTLINED_FUNCTION_54_1();
      lpta_storep(v32, v33, v34);
      while (1)
      {
LABEL_7:
        v35 = OUTLINED_FUNCTION_70_1();
        v37 = forall_to_test(v35, v36, v91);
        v38 = v17;
        if (v37)
        {
          goto LABEL_19;
        }

LABEL_8:
        v17 = v38;
        bspush_ca(v3);
        v39 = OUTLINED_FUNCTION_70_1();
        if (lpta_loadp_setscan_r(v39, v40, 1))
        {
          goto LABEL_19;
        }

        v44 = advance_tok(v3, v41, v42, v43);
        v45 = v17;
        if (v44)
        {
          goto LABEL_19;
        }

LABEL_10:
        v17 = v45;
        v46 = OUTLINED_FUNCTION_157();
        savescptr(v46, v47, v92);
LABEL_11:
        OUTLINED_FUNCTION_70_1();
        char_name();
LABEL_12:
        --v95;
        v48 = OUTLINED_FUNCTION_70_1();
        single_chars_forced_syn(v48, v49, v92, v97, v96, &v94);
LABEL_13:
        v50 = v17;
        v51 = 1;
        if (*(v3 + 2422) == 1)
        {
          break;
        }

LABEL_41:
        v17 = v50;
        OUTLINED_FUNCTION_75_1();
        forall_cont_from();
      }

LABEL_14:
      if (v51 != 1 && *(v3 + 2642) != *(v3 + 2614))
      {
        v52 = OUTLINED_FUNCTION_134();
        starttest(v52, v53);
        OUTLINED_FUNCTION_111();
        bspush_ca_boa();
        v54 = OUTLINED_FUNCTION_54_1();
        if (!lpta_loadp_setscan_r(v54, v55, 1))
        {
          v56 = OUTLINED_FUNCTION_106();
          bspush_ca_scan(v56, v57);
          OUTLINED_FUNCTION_24_8();
          if (!test_string_s())
          {
LABEL_18:
            LODWORD(v17) = 1;
          }
        }

LABEL_19:
        v58 = v17;
LABEL_20:
        v59 = *(v3 + 104);
        if (v59)
        {
          v60 = OUTLINED_FUNCTION_65_1(v59);
          v17 = v61;
        }

        else
        {
          v60 = vback(v3, v58);
          v17 = 0;
        }

        switch(v60)
        {
          case 1:
            v24 = v88;
            continue;
          case 2:
            goto LABEL_37;
          case 3:
            goto LABEL_11;
          case 4:
            v62 = OUTLINED_FUNCTION_15_12();
            v64 = forto_adv_upto_r(v62, v63, 3, 10, 1, v93);
            v58 = v17;
            if (v64)
            {
              goto LABEL_20;
            }

LABEL_37:
            v51 = *(v3 + 2422);
            goto LABEL_14;
          case 5:
            v45 = v17;
            goto LABEL_10;
          case 6:
            goto LABEL_12;
          case 7:
            goto LABEL_13;
          case 8:
            v50 = v17;
            goto LABEL_41;
          case 9:
            goto LABEL_7;
          case 10:
            v38 = v17;
            goto LABEL_8;
          case 11:
            goto LABEL_44;
          case 12:
            bspop_boa(v3);
            v71 = OUTLINED_FUNCTION_40_1();
            starttest_l(v71, v72);
            OUTLINED_FUNCTION_71_1();
            bspush_ca_boa();
            v58 = v17;
            if (*(v3 + 2634) == *(v3 + 2614))
            {
              v73 = OUTLINED_FUNCTION_54_1();
              v75 = lpta_loadp_setscan_r(v73, v74, 1);
              v58 = v17;
              if (!v75)
              {
                v76 = OUTLINED_FUNCTION_80_1();
                v78 = testFldeq(v76, v77, 3, 1);
                v58 = v17;
                if (!v78)
                {
                  if (advance_tok(v3, v17, v79, v80))
                  {
                    v58 = v17;
                  }

                  else
                  {
                    v58 = 1;
                  }
                }
              }
            }

            goto LABEL_20;
          case 13:
            v65 = OUTLINED_FUNCTION_64_1();
            bspush_ca_scan(v65, v66);
            *(v3 + 136) = 1;
            v67 = OUTLINED_FUNCTION_12_14();
            v70 = test_ptr(v67, v68, v69);
            goto LABEL_35;
          case 14:
            goto LABEL_18;
          case 15:
            OUTLINED_FUNCTION_80_1();
            OUTLINED_FUNCTION_116();
            v85 = testFldeq(v81, v82, v83, v84);
            v58 = v17;
            if (v85)
            {
              goto LABEL_20;
            }

            v70 = advance_tok(v3, v17, v86, v87);
LABEL_35:
            v58 = v17;
            if (!v70)
            {
              goto LABEL_18;
            }

            goto LABEL_20;
          case 16:
            bspop_boa(v3);
            separate_tokens(v3);
            goto LABEL_44;
          default:
            goto LABEL_3;
        }
      }

      break;
    }

LABEL_44:
    *(v3 + 2614) = *(v3 + 2638);
    *(v89 + 8) = v98;
    vretproc(v3);
  }

  OUTLINED_FUNCTION_113();
}

uint64_t end_of_word(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_5_14(v4, v5, v6, v7, v8, v9, v10, v11, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v129, v130, v131);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v12, v13, v14, v15, v16, v17, v18, v19, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v128, v129, v130, v131, v132, v133, v134, v135);
  if (!setjmp(v3))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v20, v21, v22, v23, v24, v25, v26, v27, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v128, v129, v130, v131, v132, v133, v134, v135))
    {
      OUTLINED_FUNCTION_21_8();
      v29 = OUTLINED_FUNCTION_66_1();
      push_ptr_init(v29, v30);
      fence_16(v1, 0, &_MergedGlobals_1_0);
      v31 = OUTLINED_FUNCTION_100();
      starttest(v31, v32);
      v33 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v33, v34, v2))
      {
LABEL_5:
        v35 = OUTLINED_FUNCTION_27_6();
        starttest(v35, v36);
        v37 = OUTLINED_FUNCTION_14_12();
        if (lpta_loadp_setscan_r(v37, v38, v39))
        {
          goto LABEL_3;
        }

LABEL_6:
        while (1)
        {
          OUTLINED_FUNCTION_4_14();
          if (test_string_s())
          {
            break;
          }

          v40 = OUTLINED_FUNCTION_55_1();
          bspush_ca_scan(v40, v41);
        }
      }

      else
      {
        v42 = OUTLINED_FUNCTION_15_12();
        bspush_ca_scan(v42, v43);
        bspush_ca_scan(v1, 3);
        v44 = OUTLINED_FUNCTION_51_1();
        if (!testFldeq(v44, v45, 3, 4))
        {
LABEL_9:
          if (!advance_tok(v1, v46, v47, v48))
          {
            goto LABEL_3;
          }
        }
      }

      while (2)
      {
        v49 = *(v1 + 104);
        if (v49)
        {
          v50 = OUTLINED_FUNCTION_65_1(v49);
        }

        else
        {
          v50 = OUTLINED_FUNCTION_133();
        }

        switch(v50)
        {
          case 1:
            goto LABEL_5;
          case 2:
            *(v1 + 136) = 1;
            v51 = OUTLINED_FUNCTION_12_14();
            if (test_ptr(v51, v52, v53))
            {
              continue;
            }

            break;
          case 3:
            v54 = OUTLINED_FUNCTION_130();
            if (!testFldeq(v54, v55, 3, 5))
            {
              goto LABEL_9;
            }

            continue;
          case 4:
            goto LABEL_9;
          case 8:
            v56 = OUTLINED_FUNCTION_55_1();
            savescptr(v56, v57, &v128);
            v58 = OUTLINED_FUNCTION_54_1();
            if (end_of_word(v58))
            {
              continue;
            }

            break;
          case 9:
            goto LABEL_6;
          default:
            goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

uint64_t tok_dict_entry(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v39, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v132, v133[0], v133[1]);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v131, v132, v133[0], v133[1], v133[2], v133[3], v133[4], v133[5]);
  if (setjmp(v2) || (OUTLINED_FUNCTION_0_16(), OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v131, v132, v133[0], v133[1], v133[2], v133[3], v133[4], v133[5])) || ((v27 = OUTLINED_FUNCTION_63_1(), get_parm(v27, v28, v29, -6), OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v131), fence_16(v1, 0, &_MergedGlobals_1_0), *(v1 + 5398) != 1) || callUserDictLookup(v1, v1 + 4032, v133, &v131)) && (OUTLINED_FUNCTION_50_1(), tok_dict()))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    *(v1 + 2504) = v132;
    *(v1 + 2726) = *(v1 + 2734);
    vretproc(v1);
    return 0;
  }
}

uint64_t spell_out_sequence(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v177, v180);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v178, v181, v183, v185, v187, v189);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v179, v182, v184, v186, v188, v190))
    {
      v28 = OUTLINED_FUNCTION_13_14();
      get_parm(v28, v29, v30, -6);
      OUTLINED_FUNCTION_19_9(v31, v32, v33, v34, v35, v36, v37, v38, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171);
      v39 = OUTLINED_FUNCTION_73_1();
      fence_16(v39, v40, v41);
      *(v1 + 2742) = *(v1 + 2754);
      v42 = OUTLINED_FUNCTION_13_14();
      single_chars(v42, v43, v44);
      OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_61_1(v45, v46, v47, v48, v49, v50, v51, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v176);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

void process_hostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v140 = *MEMORY[0x277D85DE8];
  v135[0] = 0;
  v135[1] = 0;
  v133 = 0;
  v134 = 0;
  v132[0] = 0;
  v132[1] = 0;
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_58_1();
  bzero(v126, v4);
  OUTLINED_FUNCTION_57_1();
  bzero(v139, v5);
  if (!setjmp(v139) && !ventproc(v3, v126, v138, v137, v136, v139))
  {
    v6 = OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_127(v6, v7);
    v8 = OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_126(v8, v9);
    v10 = OUTLINED_FUNCTION_55_1();
    push_ptr_init(v10, v11);
    v12 = OUTLINED_FUNCTION_54_1();
    push_ptr_init(v12, v13);
    v14 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v14, v15);
    push_ptr_init(v3, v129);
    v16 = OUTLINED_FUNCTION_128();
    push_ptr_init(v16, v17);
    v18 = OUTLINED_FUNCTION_73_1();
    fence_16(v18, v19, v20);
    *(v3 + 2504) = v134;
    *(v3 + 2726) = *(v3 + 2730);
    startloop(v3, 1);
    v21 = OUTLINED_FUNCTION_55_1();
    copyvar(v21, v22, v135);
    v23 = OUTLINED_FUNCTION_71_1();
    copyvar(v23, v24, &v133);
LABEL_5:
    while (1)
    {
      v25 = OUTLINED_FUNCTION_55_1();
      if (forall_to_test(v25, v26, v130))
      {
        break;
      }

LABEL_6:
      bspush_ca(v3);
      v27 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v27, v28, 1) || advance_tok(v3, v29, v30, v31))
      {
        break;
      }

LABEL_8:
      savescptr(v3, 4, v131);
LABEL_9:
      v32 = OUTLINED_FUNCTION_81_1();
      starttest(v32, v33);
      v34 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_r(v34, v35, 1))
      {
LABEL_10:
        starttest(v3, 21);
        v36 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v36, v37, 1))
        {
LABEL_37:
          while (1)
          {
            v76 = OUTLINED_FUNCTION_77_1();
            if (testFldeq(v76, v77, v78, 2) || advance_tok(v3, v79, v80, v81))
            {
              break;
            }

            v74 = OUTLINED_FUNCTION_71_1();
            bspush_ca_scan(v74, v75);
          }

          break;
        }

LABEL_11:
        v38 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v38, v39, 1))
        {
          OUTLINED_FUNCTION_97_0();
          if (!test_string_s())
          {
            *(v3 + 168) = 1;
            OUTLINED_FUNCTION_117();
            v40 = OUTLINED_FUNCTION_97_0();
            insert_l(v40, v41);
          }
        }

LABEL_14:
        OUTLINED_FUNCTION_55_1();
        char_name();
LABEL_15:
        *(v3 + 168) = 1;
        OUTLINED_FUNCTION_117();
        v42 = OUTLINED_FUNCTION_97_0();
        insert_l(v42, v43);
      }

      else
      {
        v44 = OUTLINED_FUNCTION_77_1();
        if (testFldeq(v44, v45, v46, 1) || advance_tok(v3, v47, v48, v49))
        {
          break;
        }

        starttest(v3, 6);
        v50 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v50, v51, 1))
        {
LABEL_22:
          while (1)
          {
            v56 = OUTLINED_FUNCTION_97_0();
            if (testFldeq(v56, v57, 1, 1) || advance_tok(v3, v58, v59, v60))
            {
              break;
            }

            v54 = OUTLINED_FUNCTION_64_1();
            bspush_ca_scan(v54, v55);
          }

          break;
        }

LABEL_19:
        starttest(v3, 9);
        v52 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v52, v53, 1))
        {
LABEL_46:
          while (1)
          {
            v85 = OUTLINED_FUNCTION_77_1();
            if (testFldeq(v85, v86, v87, 1) || advance_tok(v3, v88, v89, v90))
            {
              break;
            }

            bspush_ca_scan(v3, 10);
          }

          break;
        }

LABEL_50:
        v91 = OUTLINED_FUNCTION_157();
        starttest(v91, v92);
        v93 = OUTLINED_FUNCTION_55_1();
        if (!lpta_loadp_setscan_r(v93, v94, 1))
        {
          v95 = OUTLINED_FUNCTION_77_1();
          if (testFldeq(v95, v96, v97, 1) || advance_tok(v3, v98, v99, v100))
          {
            break;
          }

LABEL_53:
          v101 = OUTLINED_FUNCTION_134();
          savescptr(v101, v102, v129);
          v103 = OUTLINED_FUNCTION_77_1();
          if (testFldeq(v103, v104, v105, 1))
          {
            break;
          }

          if (advance_tok(v3, v106, v107, v108))
          {
            break;
          }

          v109 = OUTLINED_FUNCTION_111();
          bspush_ca_scan(v109, v110);
          v111 = OUTLINED_FUNCTION_77_1();
          if (testFldeq(v111, v112, v113, 1) || advance_tok(v3, v114, v115, v116))
          {
            break;
          }

LABEL_57:
          v117 = OUTLINED_FUNCTION_106();
          savescptr(v117, v118, v127);
LABEL_58:
          *(v3 + 136) = 1;
          v119 = OUTLINED_FUNCTION_12_14();
          if (test_ptr(v119, v120, v121))
          {
            break;
          }

          v122 = OUTLINED_FUNCTION_112();
          bspush_ca(v122);
LABEL_41:
          OUTLINED_FUNCTION_88_1();
          if (!v83)
          {
            break;
          }

LABEL_43:
          v84 = OUTLINED_FUNCTION_55_1();
          spell_out_sequence(v84);
LABEL_44:
          v128 = *(v3 + 3352);
        }
      }

LABEL_61:
      v124 = OUTLINED_FUNCTION_54_1();
      lpta_loadpn(v124, v125);
      rpta_loadpn(v3, &v133);
      if (!compare_ptas(v3) && !testeq(v3))
      {
        goto LABEL_3;
      }

LABEL_63:
      forall_cont_from();
    }

    while (2)
    {
      v61 = *(v3 + 104);
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_65_1(v61);
      }

      else
      {
        v62 = vback(v3, 0);
      }

      switch(v62)
      {
        case 2:
          goto LABEL_9;
        case 3:
          OUTLINED_FUNCTION_121();
          if (forto_adv_r(v3, v63, v64, 28, v65, v132))
          {
            continue;
          }

          break;
        case 4:
          goto LABEL_8;
        case 5:
          goto LABEL_10;
        case 6:
          goto LABEL_19;
        case 7:
          savescptr(v3, 7, v131);
          v68 = OUTLINED_FUNCTION_4_14();
          if (!testFldeq(v68, v69, v70, 2) && !advance_tok(v3, v71, v72, v73))
          {
            goto LABEL_50;
          }

          continue;
        case 8:
          goto LABEL_22;
        case 9:
          goto LABEL_50;
        case 10:
          savescptr(v3, 10, v131);
          goto LABEL_50;
        case 11:
          goto LABEL_46;
        case 12:
        case 20:
          goto LABEL_61;
        case 13:
          goto LABEL_53;
        case 14:
          goto LABEL_58;
        case 15:
          goto LABEL_57;
        case 16:
          v82 = OUTLINED_FUNCTION_52_1();
          bspush_ca(v82);
          goto LABEL_41;
        case 17:
          goto LABEL_43;
        case 18:
          v66 = OUTLINED_FUNCTION_128();
          lpta_loadpn(v66, v67);
          OUTLINED_FUNCTION_150();
          if (!compare_ptas(v3) && !testeq(v3))
          {
            goto LABEL_43;
          }

          continue;
        case 19:
          goto LABEL_44;
        case 21:
          goto LABEL_11;
        case 22:
          OUTLINED_FUNCTION_125();
          savescptr(v3, v123, v131);
          goto LABEL_61;
        case 23:
          goto LABEL_37;
        case 24:
          goto LABEL_14;
        case 25:
          goto LABEL_15;
        case 26:
          goto LABEL_63;
        case 27:
          goto LABEL_5;
        case 28:
          goto LABEL_6;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

LABEL_3:
  vretproc(v3);
  OUTLINED_FUNCTION_113();
}

uint64_t process_pathname(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  v127[30] = *MEMORY[0x277D85DE8];
  v127[0] = 0;
  v127[1] = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v120, v121, v122);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_82_1();
    if (!OUTLINED_FUNCTION_160(v13, v14, v15, v16, v17))
    {
      v19 = OUTLINED_FUNCTION_13_14();
      get_parm(v19, v20, v21, -6);
      OUTLINED_FUNCTION_21_8();
      v22 = OUTLINED_FUNCTION_71_1();
      push_ptr_init(v22, v23);
      v24 = OUTLINED_FUNCTION_67_1();
      push_ptr_init(v24, v25);
      v26 = OUTLINED_FUNCTION_70_1();
      push_ptr_init(v26, v27);
      fence_16(v1, 0, &_MergedGlobals_1_0);
      v28 = OUTLINED_FUNCTION_42_1();
      startloop(v28, v29);
      v30 = OUTLINED_FUNCTION_71_1();
      copyvar(v30, v31, v127);
      v32 = OUTLINED_FUNCTION_70_1();
      copyvar(v32, v33, &v125);
      v34 = OUTLINED_FUNCTION_71_1();
      if (!forall_to_test(v34, v35, &v119))
      {
LABEL_6:
        v36 = OUTLINED_FUNCTION_52_1();
        bspush_ca(v36);
        v37 = OUTLINED_FUNCTION_7_14();
        if (lpta_loadp_setscan_r(v37, v38, v39))
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_4_14();
        if (test_string_s())
        {
          goto LABEL_15;
        }

LABEL_8:
        OUTLINED_FUNCTION_115();
        v40 = OUTLINED_FUNCTION_59_1();
        savescptr(v40, v41, v42);
LABEL_9:
        v43 = OUTLINED_FUNCTION_22_8();
        starttest(v43, v44);
        OUTLINED_FUNCTION_8_14();
        v45 = char_name();
LABEL_10:
        OUTLINED_FUNCTION_102(v45, v46, v47, v48, v49, v50, v51, v52, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v119, v120, v121, v122);
        v53 = OUTLINED_FUNCTION_129();
        insert_l(v53, v54);
LABEL_11:
        OUTLINED_FUNCTION_121();
        v55 = OUTLINED_FUNCTION_122();
        if (!forto_adv_r(v55, v56, v57, v58, v59, v60))
        {
LABEL_12:
          v61 = OUTLINED_FUNCTION_27_6();
          starttest(v61, v62);
          v63 = OUTLINED_FUNCTION_28_5();
          if (!lpta_loadp_setscan_l(v63, v64, v65))
          {
            v66 = OUTLINED_FUNCTION_38_2();
            bspush_ca_scan(v66, v67);
LABEL_14:
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              goto LABEL_15;
            }

LABEL_19:
            v69 = OUTLINED_FUNCTION_68_1();
            savescptr(v69, v70, v71);
            v72 = OUTLINED_FUNCTION_71_1();
            delete_inp_from_left(v72);
          }

LABEL_20:
          *(v1 + 2504) = v126;
          vretproc(v1);
          return 0;
        }
      }

LABEL_15:
      v68 = *(v1 + 104);
      if (v68)
      {
        v45 = OUTLINED_FUNCTION_65_1(v68);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_133();
      }

      switch(v45)
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
          goto LABEL_20;
        case 8:
          goto LABEL_14;
        case 9:
          goto LABEL_19;
        default:
          break;
      }
    }
  }

  vretproc(v1);
  return 94;
}

void process_final_parenthetical(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v84 = *MEMORY[0x277D85DE8];
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v78[0] = 0;
  v78[1] = 0;
  OUTLINED_FUNCTION_10_14(v4, v5, v6, v7, v8, v9, v10, v11, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v77[0], v77[1]);
  OUTLINED_FUNCTION_57_1();
  bzero(v83, v12);
  if (setjmp(v83))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_82_1();
  if (ventproc(v3, v13, v14, v15, v16, v83))
  {
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_72_1();
  get_parm(v17, v18, v19, -6);
  OUTLINED_FUNCTION_62_1(v20, &v79);
  v21 = OUTLINED_FUNCTION_56_1();
  push_ptr_init(v21, v22);
  v23 = OUTLINED_FUNCTION_67_1();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v25, v26);
  fence_16(v3, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_79_1();
  if (!v27)
  {
    goto LABEL_7;
  }

  v28 = OUTLINED_FUNCTION_15_12();
  starttest(v28, v29);
  v30 = OUTLINED_FUNCTION_28_5();
  if (lpta_loadp_setscan_r(v30, v31, v32))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_14();
  if (test_string_s())
  {
    goto LABEL_7;
  }

  while (2)
  {
    v33 = OUTLINED_FUNCTION_55_1();
    savescptr(v33, v34, v78);
    OUTLINED_FUNCTION_4_14();
    if (test_string_s())
    {
      goto LABEL_10;
    }

LABEL_9:
    v35 = OUTLINED_FUNCTION_64_1();
    savescptr(v35, v36, v77);
    OUTLINED_FUNCTION_4_14();
    if (test_string_s())
    {
LABEL_10:
      v37 = *(v3 + 104);
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_65_1(v37);
      }

      else
      {
        v38 = OUTLINED_FUNCTION_133();
      }

      switch(v38)
      {
        case 3:
          continue;
        case 4:
          goto LABEL_9;
        case 5:
          goto LABEL_14;
        case 6:
        case 7:
          goto LABEL_15;
        case 8:
          goto LABEL_21;
        case 9:
          goto LABEL_17;
        case 10:
          goto LABEL_18;
        case 11:
          goto LABEL_20;
        default:
          goto LABEL_7;
      }

      goto LABEL_7;
    }

    break;
  }

LABEL_14:
  OUTLINED_FUNCTION_93_0();
  v39 = OUTLINED_FUNCTION_83_1();
  savescptr(v39, v40, v41);
LABEL_15:
  v42 = OUTLINED_FUNCTION_66_1();
  if (!end_of_word(v42))
  {
    v43 = OUTLINED_FUNCTION_23_8();
    delete_inp_from_right(v43);
LABEL_17:
    v44 = OUTLINED_FUNCTION_50_1();
    delete_inp_from_left(v44);
LABEL_18:
    v80 = v76;
    v45 = OUTLINED_FUNCTION_28_5();
    if (!lpta_loadp_setscan_r(v45, v46, v47))
    {
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
LABEL_20:
        OUTLINED_FUNCTION_109();
        v48 = OUTLINED_FUNCTION_123();
        savescptr(v48, v49, v50);
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_95_0(v80);
LABEL_7:
  vretproc(v3);
  OUTLINED_FUNCTION_113();
}

void process_final_apostrophe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v55 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16_12(v4, v5, v6, v7, v8, v9, v10, v11, v46, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16], v48[17], v48[18], v48[19], v48[20], v48[21], v48[22], v49, v50, v51, v52, v53[0], v53[1]);
  OUTLINED_FUNCTION_57_1();
  bzero(v54, v12);
  v13 = setjmp(v54);
  if (v13 || OUTLINED_FUNCTION_34_3(v13, v48, v14, v15, v16, v17, v18, v19, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16], v48[17], v48[18], v48[19], v48[20], v48[21], v48[22], v49, v50, v51, v52, v53[0], v53[1], v53[2], SHIDWORD(v53[2]), v53[3], SWORD2(v53[3]), SHIWORD(v53[3]), v53[4], SWORD2(v53[4]), SBYTE6(v53[4]), SHIBYTE(v53[4]), v53[5], v54[0]))
  {
    goto LABEL_3;
  }

  v20 = OUTLINED_FUNCTION_72_1();
  get_parm(v20, v21, v22, -6);
  OUTLINED_FUNCTION_21_8();
  v23 = OUTLINED_FUNCTION_54_1();
  push_ptr_init(v23, v24);
  v25 = OUTLINED_FUNCTION_73_1();
  fence_16(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_142();
  startloop(v28, v29);
  while (2)
  {
    while (1)
    {
      v30 = OUTLINED_FUNCTION_142();
      bspush_ca(v30);
      v31 = OUTLINED_FUNCTION_55_1();
      if (lpta_loadp_setscan_l(v31, v32, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_47_1();
      if (test_string_s())
      {
        break;
      }

LABEL_8:
      v33 = OUTLINED_FUNCTION_84_1();
      savescptr(v33, v34, &v49);
LABEL_9:
      v35 = OUTLINED_FUNCTION_13_14();
      lpta_rpta_loadp(v35, v36, v37);
      OUTLINED_FUNCTION_108();
      if (mark_s())
      {
        break;
      }

      v52 = v50;
      v44 = OUTLINED_FUNCTION_142();
      while_iterate(v44, v45, 2);
    }

    v38 = *(v3 + 104);
    if (v38)
    {
      OUTLINED_FUNCTION_65_1(v38);
    }

    else
    {
      v39 = OUTLINED_FUNCTION_96_0();
      vback(v39, v40);
    }

    OUTLINED_FUNCTION_152();
    if (!v43 & v42)
    {
LABEL_3:
      vretproc(v3);
    }

    else
    {
      switch(v41)
      {
        case 1:
          goto LABEL_9;
        case 2:
          goto LABEL_8;
        case 3:
          continue;
        default:
          OUTLINED_FUNCTION_137(v52);
          break;
      }
    }

    break;
  }

  OUTLINED_FUNCTION_113();
}

uint64_t spell_out_alphanum(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v53, v58, v63, v68, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v177, v180);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v54, v59, v64, v69, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v178, v181, v183, v185, v187, v189);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v55, v60, v65, v70, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v179, v182, v184, v186, v188, v190))
    {
      v28 = OUTLINED_FUNCTION_13_14();
      get_parm(v28, v29, v30, -6);
      OUTLINED_FUNCTION_19_9(v31, v32, v33, v34, v35, v36, v37, v38, v56, v61, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171);
      v39 = OUTLINED_FUNCTION_73_1();
      fence_16(v39, v40, v41);
      *(v1 + 2742) = *(v1 + 2750);
      v42 = OUTLINED_FUNCTION_13_14();
      single_chars(v42, v43, v44);
      OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_61_1(v45, v46, v47, v48, v49, v50, v51, v52, v57, v62, v67, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v176);
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

void abbreviation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_146();
  v96 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_78_1();
  v88 = 0;
  v89 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v87, v6);
  OUTLINED_FUNCTION_57_1();
  bzero(v95, v7);
  v8 = setjmp(v95);
  if (!v8 && !OUTLINED_FUNCTION_92_0(v8, v87, v9, v10, v11, v12, v13, v14, v82, v83, v84, v85, v86, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v87[13], v87[14], v87[15], v87[16], v87[17], v87[18], v87[19], v87[20], v87[21], v87[22], v88, v89, v90, v91, v92, v93, v94[0], v94[1], v94[2], SHIDWORD(v94[2]), v94[3], SWORD2(v94[3]), SHIWORD(v94[3]), v94[4], SWORD2(v94[4]), SBYTE6(v94[4]), SHIBYTE(v94[4]), v94[5], v95[0]))
  {
    v15 = OUTLINED_FUNCTION_128();
    OUTLINED_FUNCTION_159(v15, v16);
    v17 = OUTLINED_FUNCTION_72_1();
    get_parm(v17, v18, v19, -6);
    OUTLINED_FUNCTION_62_1(v20, &v90);
    v21 = OUTLINED_FUNCTION_87_1();
    push_ptr_init(v21, v22);
    fence_16(v4, 0, &_MergedGlobals_1_0);
    if (*(v4 + 2282) != *(v4 + 5390))
    {
      v23 = 0;
      OUTLINED_FUNCTION_166();
      OUTLINED_FUNCTION_165();
      while (2)
      {
        OUTLINED_FUNCTION_99_0();
        if (!v24)
        {
LABEL_6:
          OUTLINED_FUNCTION_155();
          count_chars();
LABEL_7:
          v25 = OUTLINED_FUNCTION_157();
          starttest(v25, v26);
          v27 = OUTLINED_FUNCTION_134();
          bspush_ca(v27);
          v28 = v23;
          if (*(v4 + 5110) == *(v4 + 5090))
          {
LABEL_8:
            v23 = v28;
            v29 = OUTLINED_FUNCTION_111();
            starttest(v29, v30);
            v31 = lpta_loadp_setscan_r(v4, v94, 1);
            v32 = v23;
            if (v31)
            {
LABEL_30:
              v64 = OUTLINED_FUNCTION_84_1();
              starttest(v64, v65);
              OUTLINED_FUNCTION_64_1();
              bspush_ca_boa();
              if (!end_of_word(v4))
              {
                v23 = 1;
              }
            }

            else
            {
LABEL_9:
              v23 = v32;
              for (i = OUTLINED_FUNCTION_106(); ; i = OUTLINED_FUNCTION_91_0())
              {
                bspush_ca_scan(i, v34);
LABEL_11:
                v35 = OUTLINED_FUNCTION_1_15();
                if (testFldeq(v35, v36, v37, v38) || advance_tok(v4, v39, v40, v41))
                {
                  break;
                }
              }
            }
          }

LABEL_14:
          v42 = v23;
LABEL_15:
          v43 = *(v4 + 104);
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_65_1(v43);
            v23 = v45;
          }

          else
          {
            v44 = vback(v4, v42);
            v23 = 0;
          }

          v46 = v44 - 1;
          v28 = v23;
          v32 = v23;
          switch(v46)
          {
            case 0:
              continue;
            case 1:
              goto LABEL_6;
            case 2:
              goto LABEL_7;
            case 3:
            case 6:
              goto LABEL_30;
            case 4:
              v28 = v23;
              v42 = v23;
              if (*(v4 + 5122) == *(v4 + 5090))
              {
                goto LABEL_8;
              }

              goto LABEL_15;
            case 5:
              goto LABEL_8;
            case 7:
              while (1)
              {
                v55 = OUTLINED_FUNCTION_1_15();
                if (testFldeq(v55, v56, v57, v58) || advance_tok(v4, v59, v60, v61))
                {
                  break;
                }

                v53 = OUTLINED_FUNCTION_54_1();
                bspush_ca_scan(v53, v54);
              }

              goto LABEL_14;
            case 8:
              OUTLINED_FUNCTION_4_14();
              v47 = test_string_s();
              v32 = v23;
              v42 = v23;
              if (!v47)
              {
                goto LABEL_9;
              }

              goto LABEL_15;
            case 9:
              goto LABEL_11;
            case 10:
              goto LABEL_9;
            case 11:
              v48 = OUTLINED_FUNCTION_35_2();
              savescptr(v48, v49, &v92);
              v50 = OUTLINED_FUNCTION_74_1();
              bspush_ca_scan(v50, v51);
              OUTLINED_FUNCTION_4_14();
              v52 = test_string_s();
              v42 = v23;
              if (v52)
              {
                goto LABEL_15;
              }

              goto LABEL_29;
            case 12:
LABEL_29:
              v62 = OUTLINED_FUNCTION_32_3();
              savescptr(v62, v63, &v88);
              goto LABEL_30;
            case 13:
              OUTLINED_FUNCTION_155();
              if (user_abbr_dict())
              {
                goto LABEL_33;
              }

              goto LABEL_41;
            case 14:
              bspop_boa(v4);
              goto LABEL_44;
            case 15:
LABEL_33:
              lpta_loadpn(v4, &v92);
              v66 = OUTLINED_FUNCTION_87_1();
              rpta_loadpn(v66, v67);
              if (compare_ptas(v4) || testneq(v4))
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_120();
              if (!user_abbr_dict())
              {
                v93 = v89;
LABEL_41:
                OUTLINED_FUNCTION_155();
                process_trailing_period(v4, v80, v81, &v90);
LABEL_42:
                *(v4 + 2670) = *(v4 + 2678);
                *(v5 + 8) = v93;
                OUTLINED_FUNCTION_137(v91);
                goto LABEL_45;
              }

LABEL_36:
              if (*(v4 + 2618) == 1)
              {
                v68 = OUTLINED_FUNCTION_53_1();
                if (!lpta_loadp_setscan_l(v68, v69, v70) && !advance_tok(v4, v71, v72, v73))
                {
LABEL_39:
                  savescptr(v4, 21, &v92);
                }
              }

LABEL_40:
              OUTLINED_FUNCTION_155();
              if (!abbr(v4, v74, v75, &v88, v76, v77, v78, v79))
              {
                goto LABEL_41;
              }

              break;
            case 16:
              goto LABEL_41;
            case 17:
            case 19:
              goto LABEL_40;
            case 18:
              goto LABEL_36;
            case 20:
              goto LABEL_39;
            case 22:
              goto LABEL_42;
            default:
              goto LABEL_44;
          }
        }

        break;
      }
    }
  }

LABEL_44:
  vretproc(v4);
LABEL_45:
  OUTLINED_FUNCTION_113();
}

uint64_t convert_to_lowercase(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  v543[30] = *MEMORY[0x277D85DE8];
  v543[0] = 0;
  v543[1] = 0;
  v542[0] = 0;
  v542[1] = 0;
  v541[4] = 0;
  v541[5] = 0;
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538, v539, v540, v541[0], v541[1], v541[2], v541[3]);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v11, v12);
  if (setjmp(v2) || (OUTLINED_FUNCTION_82_1(), OUTLINED_FUNCTION_160(v13, v14, v15, v16, v17)))
  {
LABEL_3:
    v18 = 94;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_13_14();
    get_parm(v20, v21, v22, -6);
    OUTLINED_FUNCTION_21_8();
    v23 = OUTLINED_FUNCTION_71_1();
    push_ptr_init(v23, v24);
    v25 = OUTLINED_FUNCTION_67_1();
    push_ptr_init(v25, v26);
    v27 = OUTLINED_FUNCTION_70_1();
    push_ptr_init(v27, v28);
    fence_16(v1, 0, &_MergedGlobals_1_0);
    v29 = OUTLINED_FUNCTION_42_1();
    startloop(v29, v30);
    v31 = OUTLINED_FUNCTION_71_1();
    copyvar(v31, v32, v543);
    v33 = OUTLINED_FUNCTION_70_1();
    copyvar(v33, v34, v542);
    v35 = OUTLINED_FUNCTION_71_1();
    if (!forall_to_test(v35, v36, v541))
    {
LABEL_6:
      v37 = OUTLINED_FUNCTION_52_1();
      bspush_ca(v37);
      v38 = OUTLINED_FUNCTION_7_14();
      if (!lpta_loadp_setscan_r(v38, v39, v40))
      {
        v41 = OUTLINED_FUNCTION_1_15();
        if (!testFldeq(v41, v42, v43, v44))
        {
          v45 = OUTLINED_FUNCTION_4_14();
          if (!testFldeq(v45, v46, v47, 2) && !advance_tok(v1, v48, v49, v50))
          {
LABEL_10:
            OUTLINED_FUNCTION_115();
            v51 = OUTLINED_FUNCTION_59_1();
            savescptr(v51, v52, v53);
LABEL_11:
            v54 = OUTLINED_FUNCTION_22_8();
            starttest(v54, v55);
            v56 = OUTLINED_FUNCTION_7_14();
            if (lpta_loadp_setscan_r(v56, v57, v58) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v59 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v59, v60, v61), OUTLINED_FUNCTION_6_14(), mark_s()))
            {
LABEL_14:
              v62 = OUTLINED_FUNCTION_36_2();
              starttest(v62, v63);
              v64 = OUTLINED_FUNCTION_7_14();
              if (lpta_loadp_setscan_r(v64, v65, v66) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v67 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v67, v68, v69), OUTLINED_FUNCTION_6_14(), mark_s()))
              {
LABEL_17:
                v70 = OUTLINED_FUNCTION_27_6();
                starttest(v70, v71);
                v72 = OUTLINED_FUNCTION_7_14();
                if (lpta_loadp_setscan_r(v72, v73, v74) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v75 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v75, v76, v77), OUTLINED_FUNCTION_6_14(), mark_s()))
                {
LABEL_20:
                  v78 = OUTLINED_FUNCTION_38_2();
                  starttest(v78, v79);
                  v80 = OUTLINED_FUNCTION_7_14();
                  if (lpta_loadp_setscan_r(v80, v81, v82) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v83 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v83, v84, v85), OUTLINED_FUNCTION_6_14(), mark_s()))
                  {
LABEL_23:
                    v86 = OUTLINED_FUNCTION_37_2();
                    starttest(v86, v87);
                    v88 = OUTLINED_FUNCTION_7_14();
                    if (lpta_loadp_setscan_r(v88, v89, v90) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v91 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v91, v92, v93), OUTLINED_FUNCTION_6_14(), mark_s()))
                    {
LABEL_26:
                      v94 = OUTLINED_FUNCTION_45_1();
                      starttest(v94, v95);
                      v96 = OUTLINED_FUNCTION_7_14();
                      if (lpta_loadp_setscan_r(v96, v97, v98) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v99 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v99, v100, v101), OUTLINED_FUNCTION_6_14(), mark_s()))
                      {
LABEL_29:
                        v102 = OUTLINED_FUNCTION_40_1();
                        starttest(v102, v103);
                        v104 = OUTLINED_FUNCTION_7_14();
                        if (lpta_loadp_setscan_r(v104, v105, v106) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v107 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v107, v108, v109), OUTLINED_FUNCTION_6_14(), mark_s()))
                        {
LABEL_32:
                          v110 = OUTLINED_FUNCTION_35_2();
                          starttest(v110, v111);
                          v112 = OUTLINED_FUNCTION_7_14();
                          if (lpta_loadp_setscan_r(v112, v113, v114) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v115 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v115, v116, v117), OUTLINED_FUNCTION_6_14(), mark_s()))
                          {
LABEL_35:
                            v118 = OUTLINED_FUNCTION_32_3();
                            starttest(v118, v119);
                            v120 = OUTLINED_FUNCTION_7_14();
                            if (lpta_loadp_setscan_r(v120, v121, v122) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v123 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v123, v124, v125), OUTLINED_FUNCTION_6_14(), mark_s()))
                            {
LABEL_38:
                              v126 = OUTLINED_FUNCTION_33_3();
                              starttest(v126, v127);
                              v128 = OUTLINED_FUNCTION_7_14();
                              if (lpta_loadp_setscan_r(v128, v129, v130) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v131 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v131, v132, v133), OUTLINED_FUNCTION_6_14(), mark_s()))
                              {
LABEL_41:
                                v134 = OUTLINED_FUNCTION_46_1();
                                starttest(v134, v135);
                                v136 = OUTLINED_FUNCTION_7_14();
                                if (lpta_loadp_setscan_r(v136, v137, v138) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v139 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v139, v140, v141), OUTLINED_FUNCTION_6_14(), mark_s()))
                                {
LABEL_44:
                                  v142 = OUTLINED_FUNCTION_41_1();
                                  starttest(v142, v143);
                                  v144 = OUTLINED_FUNCTION_7_14();
                                  if (lpta_loadp_setscan_r(v144, v145, v146) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v147 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v147, v148, v149), OUTLINED_FUNCTION_6_14(), mark_s()))
                                  {
LABEL_47:
                                    v150 = OUTLINED_FUNCTION_52_1();
                                    starttest(v150, v151);
                                    v152 = OUTLINED_FUNCTION_7_14();
                                    if (lpta_loadp_setscan_r(v152, v153, v154) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v155 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v155, v156, v157), OUTLINED_FUNCTION_6_14(), mark_s()))
                                    {
LABEL_50:
                                      v158 = OUTLINED_FUNCTION_52_1();
                                      starttest(v158, v159);
                                      v160 = OUTLINED_FUNCTION_7_14();
                                      if (lpta_loadp_setscan_r(v160, v161, v162) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v163 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v163, v164, v165), OUTLINED_FUNCTION_6_14(), mark_s()))
                                      {
LABEL_53:
                                        v166 = OUTLINED_FUNCTION_52_1();
                                        starttest(v166, v167);
                                        v168 = OUTLINED_FUNCTION_7_14();
                                        if (lpta_loadp_setscan_r(v168, v169, v170) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v171 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v171, v172, v173), OUTLINED_FUNCTION_6_14(), mark_s()))
                                        {
LABEL_56:
                                          v174 = OUTLINED_FUNCTION_52_1();
                                          starttest(v174, v175);
                                          v176 = OUTLINED_FUNCTION_7_14();
                                          if (lpta_loadp_setscan_r(v176, v177, v178) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v179 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v179, v180, v181), OUTLINED_FUNCTION_6_14(), mark_s()))
                                          {
LABEL_59:
                                            v182 = OUTLINED_FUNCTION_52_1();
                                            starttest(v182, v183);
                                            v184 = OUTLINED_FUNCTION_7_14();
                                            if (lpta_loadp_setscan_r(v184, v185, v186) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v187 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v187, v188, v189), OUTLINED_FUNCTION_6_14(), mark_s()))
                                            {
LABEL_62:
                                              v190 = OUTLINED_FUNCTION_52_1();
                                              starttest(v190, v191);
                                              v192 = OUTLINED_FUNCTION_7_14();
                                              if (lpta_loadp_setscan_r(v192, v193, v194) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v195 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v195, v196, v197), OUTLINED_FUNCTION_6_14(), mark_s()))
                                              {
LABEL_65:
                                                v198 = OUTLINED_FUNCTION_52_1();
                                                starttest(v198, v199);
                                                v200 = OUTLINED_FUNCTION_7_14();
                                                if (lpta_loadp_setscan_r(v200, v201, v202) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v203 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v203, v204, v205), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                {
LABEL_68:
                                                  v206 = OUTLINED_FUNCTION_52_1();
                                                  starttest(v206, v207);
                                                  v208 = OUTLINED_FUNCTION_7_14();
                                                  if (lpta_loadp_setscan_r(v208, v209, v210) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v211 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v211, v212, v213), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                  {
LABEL_71:
                                                    v214 = OUTLINED_FUNCTION_52_1();
                                                    starttest(v214, v215);
                                                    v216 = OUTLINED_FUNCTION_7_14();
                                                    if (lpta_loadp_setscan_r(v216, v217, v218) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v219 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v219, v220, v221), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                    {
LABEL_74:
                                                      v222 = OUTLINED_FUNCTION_49_1();
                                                      starttest(v222, v223);
                                                      v224 = OUTLINED_FUNCTION_7_14();
                                                      if (lpta_loadp_setscan_r(v224, v225, v226) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v227 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v227, v228, v229), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                      {
LABEL_77:
                                                        v230 = OUTLINED_FUNCTION_52_1();
                                                        starttest(v230, v231);
                                                        v232 = OUTLINED_FUNCTION_7_14();
                                                        if (lpta_loadp_setscan_r(v232, v233, v234) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v235 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v235, v236, v237), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                        {
LABEL_80:
                                                          v238 = OUTLINED_FUNCTION_52_1();
                                                          starttest(v238, v239);
                                                          v240 = OUTLINED_FUNCTION_7_14();
                                                          if (lpta_loadp_setscan_r(v240, v241, v242) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v243 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v243, v244, v245), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                          {
LABEL_83:
                                                            v246 = OUTLINED_FUNCTION_52_1();
                                                            starttest(v246, v247);
                                                            v248 = OUTLINED_FUNCTION_7_14();
                                                            if (lpta_loadp_setscan_r(v248, v249, v250) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v251 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v251, v252, v253), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                            {
LABEL_86:
                                                              v254 = OUTLINED_FUNCTION_52_1();
                                                              starttest(v254, v255);
                                                              v256 = OUTLINED_FUNCTION_7_14();
                                                              if (lpta_loadp_setscan_r(v256, v257, v258) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v259 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v259, v260, v261), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                              {
LABEL_89:
                                                                v262 = OUTLINED_FUNCTION_52_1();
                                                                starttest(v262, v263);
                                                                v264 = OUTLINED_FUNCTION_7_14();
                                                                if (lpta_loadp_setscan_r(v264, v265, v266) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v267 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v267, v268, v269), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                {
LABEL_92:
                                                                  v270 = OUTLINED_FUNCTION_52_1();
                                                                  starttest(v270, v271);
                                                                  v272 = OUTLINED_FUNCTION_7_14();
                                                                  if (lpta_loadp_setscan_r(v272, v273, v274) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v275 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v275, v276, v277), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                  {
LABEL_95:
                                                                    v278 = OUTLINED_FUNCTION_52_1();
                                                                    starttest(v278, v279);
                                                                    v280 = OUTLINED_FUNCTION_7_14();
                                                                    if (lpta_loadp_setscan_r(v280, v281, v282) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v283 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v283, v284, v285), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                    {
LABEL_98:
                                                                      v286 = OUTLINED_FUNCTION_52_1();
                                                                      starttest(v286, v287);
                                                                      v288 = OUTLINED_FUNCTION_7_14();
                                                                      if (lpta_loadp_setscan_r(v288, v289, v290) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v291 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v291, v292, v293), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                      {
LABEL_101:
                                                                        v294 = OUTLINED_FUNCTION_52_1();
                                                                        starttest(v294, v295);
                                                                        v296 = OUTLINED_FUNCTION_7_14();
                                                                        if (lpta_loadp_setscan_r(v296, v297, v298) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v299 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v299, v300, v301), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                        {
LABEL_104:
                                                                          v302 = OUTLINED_FUNCTION_52_1();
                                                                          starttest(v302, v303);
                                                                          v304 = OUTLINED_FUNCTION_7_14();
                                                                          if (lpta_loadp_setscan_r(v304, v305, v306) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v307 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v307, v308, v309), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                          {
LABEL_107:
                                                                            v310 = OUTLINED_FUNCTION_52_1();
                                                                            starttest(v310, v311);
                                                                            v312 = OUTLINED_FUNCTION_7_14();
                                                                            if (lpta_loadp_setscan_r(v312, v313, v314) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v315 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v315, v316, v317), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                            {
LABEL_110:
                                                                              v318 = OUTLINED_FUNCTION_52_1();
                                                                              starttest(v318, v319);
                                                                              v320 = OUTLINED_FUNCTION_7_14();
                                                                              if (lpta_loadp_setscan_r(v320, v321, v322) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v323 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v323, v324, v325), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                              {
LABEL_113:
                                                                                v326 = OUTLINED_FUNCTION_52_1();
                                                                                starttest(v326, v327);
                                                                                v328 = OUTLINED_FUNCTION_7_14();
                                                                                if (lpta_loadp_setscan_r(v328, v329, v330) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v331 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v331, v332, v333), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                {
LABEL_116:
                                                                                  v334 = OUTLINED_FUNCTION_52_1();
                                                                                  starttest(v334, v335);
                                                                                  v336 = OUTLINED_FUNCTION_7_14();
                                                                                  if (lpta_loadp_setscan_r(v336, v337, v338) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v339 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v339, v340, v341), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                  {
LABEL_119:
                                                                                    v342 = OUTLINED_FUNCTION_52_1();
                                                                                    starttest(v342, v343);
                                                                                    v344 = OUTLINED_FUNCTION_7_14();
                                                                                    if (lpta_loadp_setscan_r(v344, v345, v346) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v347 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v347, v348, v349), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                    {
LABEL_122:
                                                                                      v350 = OUTLINED_FUNCTION_52_1();
                                                                                      starttest(v350, v351);
                                                                                      v352 = OUTLINED_FUNCTION_7_14();
                                                                                      if (lpta_loadp_setscan_r(v352, v353, v354) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v355 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v355, v356, v357), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                      {
LABEL_125:
                                                                                        v358 = OUTLINED_FUNCTION_52_1();
                                                                                        starttest(v358, v359);
                                                                                        v360 = OUTLINED_FUNCTION_7_14();
                                                                                        if (lpta_loadp_setscan_r(v360, v361, v362) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v363 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v363, v364, v365), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                        {
LABEL_128:
                                                                                          v366 = OUTLINED_FUNCTION_52_1();
                                                                                          starttest(v366, v367);
                                                                                          v368 = OUTLINED_FUNCTION_7_14();
                                                                                          if (lpta_loadp_setscan_r(v368, v369, v370) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v371 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v371, v372, v373), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                          {
LABEL_131:
                                                                                            v374 = OUTLINED_FUNCTION_52_1();
                                                                                            starttest(v374, v375);
                                                                                            v376 = OUTLINED_FUNCTION_7_14();
                                                                                            if (lpta_loadp_setscan_r(v376, v377, v378) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v379 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v379, v380, v381), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                            {
LABEL_134:
                                                                                              v382 = OUTLINED_FUNCTION_52_1();
                                                                                              starttest(v382, v383);
                                                                                              v384 = OUTLINED_FUNCTION_7_14();
                                                                                              if (lpta_loadp_setscan_r(v384, v385, v386) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v387 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v387, v388, v389), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                              {
LABEL_137:
                                                                                                v390 = OUTLINED_FUNCTION_52_1();
                                                                                                starttest(v390, v391);
                                                                                                v392 = OUTLINED_FUNCTION_7_14();
                                                                                                if (lpta_loadp_setscan_r(v392, v393, v394) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v395 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v395, v396, v397), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                {
LABEL_140:
                                                                                                  v398 = OUTLINED_FUNCTION_52_1();
                                                                                                  starttest(v398, v399);
                                                                                                  v400 = OUTLINED_FUNCTION_7_14();
                                                                                                  if (lpta_loadp_setscan_r(v400, v401, v402) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v403 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v403, v404, v405), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                  {
LABEL_143:
                                                                                                    v406 = OUTLINED_FUNCTION_52_1();
                                                                                                    starttest(v406, v407);
                                                                                                    v408 = OUTLINED_FUNCTION_7_14();
                                                                                                    if (lpta_loadp_setscan_r(v408, v409, v410) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v411 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v411, v412, v413), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                    {
LABEL_146:
                                                                                                      v414 = OUTLINED_FUNCTION_52_1();
                                                                                                      starttest(v414, v415);
                                                                                                      v416 = OUTLINED_FUNCTION_7_14();
                                                                                                      if (lpta_loadp_setscan_r(v416, v417, v418) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v419 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v419, v420, v421), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                      {
LABEL_149:
                                                                                                        v422 = OUTLINED_FUNCTION_52_1();
                                                                                                        starttest(v422, v423);
                                                                                                        v424 = OUTLINED_FUNCTION_7_14();
                                                                                                        if (lpta_loadp_setscan_r(v424, v425, v426) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v427 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v427, v428, v429), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                        {
LABEL_152:
                                                                                                          v430 = OUTLINED_FUNCTION_52_1();
                                                                                                          starttest(v430, v431);
                                                                                                          v432 = OUTLINED_FUNCTION_7_14();
                                                                                                          if (lpta_loadp_setscan_r(v432, v433, v434) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v435 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v435, v436, v437), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                          {
LABEL_155:
                                                                                                            v438 = OUTLINED_FUNCTION_52_1();
                                                                                                            starttest(v438, v439);
                                                                                                            v440 = OUTLINED_FUNCTION_7_14();
                                                                                                            if (lpta_loadp_setscan_r(v440, v441, v442) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v443 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v443, v444, v445), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                            {
LABEL_158:
                                                                                                              v446 = OUTLINED_FUNCTION_52_1();
                                                                                                              starttest(v446, v447);
                                                                                                              v448 = OUTLINED_FUNCTION_7_14();
                                                                                                              if (lpta_loadp_setscan_r(v448, v449, v450) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v451 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v451, v452, v453), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                              {
LABEL_161:
                                                                                                                v454 = OUTLINED_FUNCTION_52_1();
                                                                                                                starttest(v454, v455);
                                                                                                                v456 = OUTLINED_FUNCTION_7_14();
                                                                                                                if (lpta_loadp_setscan_r(v456, v457, v458) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v459 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v459, v460, v461), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                {
LABEL_164:
                                                                                                                  v462 = OUTLINED_FUNCTION_52_1();
                                                                                                                  starttest(v462, v463);
                                                                                                                  v464 = OUTLINED_FUNCTION_7_14();
                                                                                                                  if (lpta_loadp_setscan_r(v464, v465, v466) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v467 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v467, v468, v469), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                  {
LABEL_167:
                                                                                                                    v470 = OUTLINED_FUNCTION_52_1();
                                                                                                                    starttest(v470, v471);
                                                                                                                    v472 = OUTLINED_FUNCTION_7_14();
                                                                                                                    if (lpta_loadp_setscan_r(v472, v473, v474) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v475 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v475, v476, v477), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                    {
LABEL_170:
                                                                                                                      v478 = OUTLINED_FUNCTION_52_1();
                                                                                                                      starttest(v478, v479);
                                                                                                                      v480 = OUTLINED_FUNCTION_7_14();
                                                                                                                      if (lpta_loadp_setscan_r(v480, v481, v482) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v483 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v483, v484, v485), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                      {
LABEL_173:
                                                                                                                        v486 = OUTLINED_FUNCTION_52_1();
                                                                                                                        starttest(v486, v487);
                                                                                                                        v488 = OUTLINED_FUNCTION_7_14();
                                                                                                                        if (lpta_loadp_setscan_r(v488, v489, v490) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v491 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v491, v492, v493), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                        {
LABEL_176:
                                                                                                                          v494 = OUTLINED_FUNCTION_52_1();
                                                                                                                          starttest(v494, v495);
                                                                                                                          v496 = OUTLINED_FUNCTION_7_14();
                                                                                                                          if (lpta_loadp_setscan_r(v496, v497, v498) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v499 = OUTLINED_FUNCTION_8_14(), lpta_rpta_loadp(v499, v500, v501), OUTLINED_FUNCTION_6_14(), mark_s()))
                                                                                                                          {
LABEL_179:
                                                                                                                            v502 = OUTLINED_FUNCTION_52_1();
                                                                                                                            starttest(v502, v503);
                                                                                                                            v504 = OUTLINED_FUNCTION_7_14();
                                                                                                                            if (!lpta_loadp_setscan_r(v504, v505, v506))
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_4_14();
                                                                                                                              if (!test_string_s())
                                                                                                                              {
                                                                                                                                v507 = OUTLINED_FUNCTION_8_14();
                                                                                                                                lpta_rpta_loadp(v507, v508, v509);
                                                                                                                                OUTLINED_FUNCTION_6_14();
                                                                                                                                mark_s();
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

LABEL_182:
            OUTLINED_FUNCTION_121();
            v510 = OUTLINED_FUNCTION_122();
            if (!forto_adv_r(v510, v511, v512, v513, v514, v515))
            {
              v18 = 0;
              goto LABEL_4;
            }
          }
        }
      }
    }

    v516 = *(v1 + 104);
    if (v516)
    {
      v517 = OUTLINED_FUNCTION_65_1(v516);
    }

    else
    {
      v517 = OUTLINED_FUNCTION_133();
    }

    v18 = 0;
    switch(v517)
    {
      case 1:
        break;
      case 2:
        goto LABEL_11;
      case 3:
        goto LABEL_182;
      case 4:
        goto LABEL_10;
      case 5:
        goto LABEL_14;
      case 6:
        goto LABEL_17;
      case 7:
        goto LABEL_20;
      case 8:
        goto LABEL_23;
      case 9:
        goto LABEL_26;
      case 10:
        goto LABEL_29;
      case 11:
        goto LABEL_32;
      case 12:
        goto LABEL_35;
      case 13:
        goto LABEL_38;
      case 14:
        goto LABEL_41;
      case 15:
        goto LABEL_44;
      case 16:
        goto LABEL_47;
      case 17:
        goto LABEL_50;
      case 18:
        goto LABEL_53;
      case 19:
        goto LABEL_56;
      case 20:
        goto LABEL_59;
      case 21:
        goto LABEL_62;
      case 22:
        goto LABEL_65;
      case 23:
        goto LABEL_68;
      case 24:
        goto LABEL_71;
      case 25:
        goto LABEL_74;
      case 26:
        goto LABEL_77;
      case 27:
        goto LABEL_80;
      case 28:
        goto LABEL_83;
      case 29:
        goto LABEL_86;
      case 30:
        goto LABEL_89;
      case 31:
        goto LABEL_92;
      case 32:
        goto LABEL_95;
      case 33:
        goto LABEL_98;
      case 34:
        goto LABEL_101;
      case 35:
        goto LABEL_104;
      case 36:
        goto LABEL_107;
      case 37:
        goto LABEL_110;
      case 38:
        goto LABEL_113;
      case 39:
        goto LABEL_116;
      case 40:
        goto LABEL_119;
      case 41:
        goto LABEL_122;
      case 42:
        goto LABEL_125;
      case 43:
        goto LABEL_128;
      case 44:
        goto LABEL_131;
      case 45:
        goto LABEL_134;
      case 46:
        goto LABEL_137;
      case 47:
        goto LABEL_140;
      case 48:
        goto LABEL_143;
      case 49:
        goto LABEL_146;
      case 50:
        goto LABEL_149;
      case 51:
        goto LABEL_152;
      case 52:
        goto LABEL_155;
      case 53:
        goto LABEL_158;
      case 54:
        goto LABEL_161;
      case 55:
        goto LABEL_164;
      case 56:
        goto LABEL_167;
      case 57:
        goto LABEL_170;
      case 58:
        goto LABEL_173;
      case 59:
        goto LABEL_176;
      case 60:
        goto LABEL_179;
      case 61:
        goto LABEL_6;
      default:
        goto LABEL_3;
    }
  }

LABEL_4:
  vretproc(v1);
  return v18;
}

void acronym(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v77 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18_10(v5, v6, v7, v8, v9, v10, v11, v12, v64, *v67, *&v67[8], *&v67[16], *&v67[24], *&v67[32], *&v67[40], *&v67[48], *&v67[56], *&v67[64], *&v67[72], *&v67[80], *&v67[88], *&v67[96], *&v67[104], *&v67[112], *&v67[120], *&v67[128], *&v67[136], *&v67[144], *&v67[152], *&v67[160], *&v67[168], *&v67[176], *v68, v69, *v70, v71);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_177(v13, v14, v15, v16, v17, v18, v19, v20, v65, *v67, *&v67[8], *&v67[16], *&v67[24], *&v67[32], *&v67[40], *&v67[48], *&v67[56], *&v67[64], *&v67[72], *&v67[80], *&v67[88], *&v67[96], *&v67[104], *&v67[112], *&v67[120], *&v67[128], *&v67[136], *&v67[144], *&v67[152], *&v67[160], *&v67[168], *&v67[176], *v68, v69, *v70, v71, v72, v73, v74, v75);
  v21 = setjmp(v4);
  if (v21)
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_44_1(v21, v67, v22, v23, v24, v25, v26, v27, v66, *v67, *&v67[8], *&v67[16], *&v67[24], *&v67[32], *&v67[40], *&v67[48], *&v67[56], *&v67[64], *&v67[72], *&v67[80], *&v67[88], *&v67[96], *&v67[104], *&v67[112], *&v67[120], *&v67[128], *&v67[136], *&v67[144], *&v67[152], *&v67[160], *&v67[168], *&v67[176], *v68, v69, *v70, v71, v72, SHIDWORD(v72), v73, SWORD2(v73), SHIWORD(v73), v74, SWORD2(v74), SBYTE6(v74), SHIBYTE(v74), v75, v76))
  {
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_72_1();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_62_1(v31, v68);
  fence_16(v3, 0, &_MergedGlobals_1_0);
  if (*(v3 + 2282) == *(v3 + 5394))
  {
    goto LABEL_4;
  }

  v32 = 0;
  while (2)
  {
    OUTLINED_FUNCTION_88_1();
    if (v33)
    {
      goto LABEL_4;
    }

LABEL_8:
    v34 = OUTLINED_FUNCTION_55_1();
    starttest(v34, v35);
    OUTLINED_FUNCTION_88_1();
    if (v33 || (v36 = OUTLINED_FUNCTION_54_1(), lpta_loadp_setscan_l(v36, v37, 1)))
    {
LABEL_4:
      vretproc(v3);
      goto LABEL_5;
    }

    v38 = OUTLINED_FUNCTION_39_1();
    if (!testFldeq(v38, v39, v40, 2))
    {
      v54 = advance_tok(v3, v41, v42, v43);
      v44 = v32;
      if (v54)
      {
        goto LABEL_12;
      }

LABEL_23:
      while (1)
      {
        v57 = OUTLINED_FUNCTION_39_1();
        if (testFldeq(v57, v58, v59, 2) || advance_tok(v3, v60, v61, v62))
        {
          break;
        }

        v55 = OUTLINED_FUNCTION_64_1();
        bspush_ca_scan(v55, v56);
      }
    }

    v44 = v32;
LABEL_12:
    v45 = *(v3 + 104);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_65_1(v45);
      v32 = v47;
    }

    else
    {
      v46 = vback(v3, v44);
      v32 = 0;
    }

    switch(v46)
    {
      case 1:
        continue;
      case 2:
        goto LABEL_17;
      case 3:
        goto LABEL_8;
      case 5:
        *(v3 + 136) = 1;
        v48 = OUTLINED_FUNCTION_12_14();
        v51 = test_ptr(v48, v49, v50);
        v44 = v32;
        if (v51)
        {
          goto LABEL_12;
        }

LABEL_17:
        v52 = OUTLINED_FUNCTION_81_1();
        starttest(v52, v53);
        OUTLINED_FUNCTION_74_1();
        bspush_ca_boa();
        OUTLINED_FUNCTION_84_1();
        if (acrotest())
        {
          v44 = v32;
        }

        else
        {
          v44 = 1;
        }

        goto LABEL_12;
      case 6:
        goto LABEL_23;
      case 7:
        *(v3 + 2670) = *(v3 + 2682);
        v63 = OUTLINED_FUNCTION_124();
        spell_out_sequence(v63);
        goto LABEL_27;
      case 8:
        bspop_boa(v3);
        goto LABEL_4;
      case 9:
LABEL_27:
        set_letter_name_wordcats(v3);
        break;
      case 10:
        goto LABEL_28;
      default:
        goto LABEL_4;
    }

    break;
  }

LABEL_28:
  OUTLINED_FUNCTION_137(v69);
LABEL_5:
  OUTLINED_FUNCTION_113();
}

uint64_t single_letter(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v146, v147, v148);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v145, v146, v147, v148, v149, v150, v151, v152);
  if (setjmp(v2) || (OUTLINED_FUNCTION_0_16(), OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v145, v146, v147, v148, v149, v150, v151, v152)) || (v27 = OUTLINED_FUNCTION_13_14(), get_parm(v27, v28, v29, -6), OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v145), fence_16(v1, 0, &_MergedGlobals_1_0), v38 = OUTLINED_FUNCTION_29_5(), lpta_loadp_setscan_r(v38, v39, v40)) || advance_tok(v1, v41, v42, v43) || (OUTLINED_FUNCTION_98_0(), v44 = OUTLINED_FUNCTION_12_14(), test_ptr(v44, v45, v46)))
  {
    vretproc(v1);
    return 94;
  }

  else
  {
    *(v1 + 2670) = *(v1 + 2690);
    v48 = OUTLINED_FUNCTION_55_1();
    single_chars(v48, v49, &v145);
    v50 = OUTLINED_FUNCTION_55_1();
    process_trailing_period(v50, v51, &v145, v52);
    OUTLINED_FUNCTION_137(v146);
    return 0;
  }
}

uint64_t separate_tokens(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_20_8(v3, v4, v5, v6, v7, v8, v9, v10, v39, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_158(v11, v12, v13, v14, v15, v16, v17, v18, v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v138, v140, v142, v144);
  v19 = setjmp(v2);
  if (v19 || (v27 = OUTLINED_FUNCTION_25_8(v19, v20, v21, v22, v23, v24, v25, v26, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v139, SHIDWORD(v139), v141, SWORD2(v141), SHIWORD(v141), v143, SWORD2(v143), SBYTE6(v143), SHIBYTE(v143), v145, v146), v27) || (OUTLINED_FUNCTION_19_9(v27, v28, v29, v30, v31, v32, v33, v34, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134), fence_16(v1, 0, &_MergedGlobals_1_0), v37 = OUTLINED_FUNCTION_55_1(), !end_of_word(v37)))
  {
    v35 = 94;
  }

  else
  {
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_117();
    v35 = 0;
    insert_l(v1, v38);
  }

  vretproc(v1);
  return v35;
}

void process_trailing_period(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  v5 = v4;
  v66 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  OUTLINED_FUNCTION_16_12(v4, v6, v7, v8, v9, v10, v11, v12, v45, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10], v47[11], v47[12], v47[13], v47[14], v47[15], v47[16], v47[17], v47[18], v47[19], v47[20], v47[21], v47[22], v48, v49, v50[0], v50[1], v51, v52);
  OUTLINED_FUNCTION_57_1();
  bzero(v65, v13);
  v14 = setjmp(v65);
  if (!v14 && !OUTLINED_FUNCTION_69_1(v14, v47, v15, v16, v17, v18, v19, v20, v46, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v47[9], v47[10], v47[11], v47[12], v47[13], v47[14], v47[15], v47[16], v47[17], v47[18], v47[19], v47[20], v47[21], v47[22], v48, v49, v50[0], v50[1], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]))
  {
    v21 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_159(v21, v22);
    v23 = OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_126(v23, v24);
    v25 = OUTLINED_FUNCTION_72_1();
    get_parm(v25, v26, v27, -6);
    v28 = OUTLINED_FUNCTION_104();
    push_ptr_init(v28, v29);
    fence_16(v5, 0, &_MergedGlobals_1_0);
    v30 = OUTLINED_FUNCTION_29_5();
    if (!lpta_loadp_setscan_r(v30, v31, v32))
    {
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
        OUTLINED_FUNCTION_168();
        v33 = 0;
        while (2)
        {
          v34 = OUTLINED_FUNCTION_54_1();
          savescptr(v34, v35, &v48);
          v36 = OUTLINED_FUNCTION_70_1();
          if (lpta_loadp_setscan_r(v36, v37, 1) || (OUTLINED_FUNCTION_51_1(), test_string_s()))
          {
LABEL_9:
            v38 = OUTLINED_FUNCTION_81_1();
            starttest(v38, v39);
            OUTLINED_FUNCTION_74_1();
            bspush_ca_boa();
            v40 = OUTLINED_FUNCTION_84_1();
            v41 = end_of_sentence(v40);
            if (v41)
            {
              v42 = v33;
            }

            else
            {
              v42 = 1;
            }

            if (v5[13])
            {
              v43 = OUTLINED_FUNCTION_144(v41, v42);
            }

            else
            {
              v44 = vback(v5, v42);
              v43 = 0;
            }

            v33 = v43;
            switch(v44)
            {
              case 2:
                v33 = v43;
                continue;
              case 3:
                goto LABEL_9;
              case 4:
              case 6:
                goto LABEL_18;
              case 5:
                bspop_boa(v5);
                v52 = v49;
                goto LABEL_18;
              default:
                goto LABEL_5;
            }
          }

          else
          {
LABEL_18:
            OUTLINED_FUNCTION_95_0(v52);
          }

          break;
        }
      }
    }
  }

LABEL_5:
  vretproc(v5);
  OUTLINED_FUNCTION_113();
}

uint64_t set_letter_name_wordcats(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_58_1();
  bzero(v7, v2);
  OUTLINED_FUNCTION_57_1();
  bzero(v11, v3);
  if (setjmp(v11) || ventproc(a1, v7, v10, v9, v8, v11))
  {
    vretproc(a1);
    return 94;
  }

  else
  {
    fence_16(a1, 0, &_MergedGlobals_1_0);
    OUTLINED_FUNCTION_79_1();
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_94_0();
      npush_s(v6);
      *(a1 + 3602) = 1;
      npop(a1, (a1 + 3600));
      npush_s(a1);
      *(a1 + 3602) = 3;
      npop(a1, (a1 + 3600));
    }

    vretproc(a1);
    return 0;
  }
}

void read_punct_by_name(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_11_14();
  v122 = *MEMORY[0x277D85DE8];
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v106, v4);
  OUTLINED_FUNCTION_57_1();
  bzero(v121, v5);
  v6 = setjmp(v121);
  if (v6 || OUTLINED_FUNCTION_69_1(v6, v106, v7, v8, v9, v10, v11, v12, v101, v102, v103, v104, v105, v106[0], v106[1], v106[2], v106[3], v106[4], v106[5], v106[6], v106[7], v106[8], v106[9], v106[10], v106[11], v106[12], v106[13], v106[14], v106[15], v106[16], v106[17], v106[18], v106[19], v106[20], v106[21], v106[22], v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0]))
  {
LABEL_3:
    vretproc(v3);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_72_1();
    get_parm(v13, v14, v15, -6);
    OUTLINED_FUNCTION_21_8();
    v16 = OUTLINED_FUNCTION_73_1();
    fence_16(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_139();
    starttest(v19, v20);
    v21 = OUTLINED_FUNCTION_55_1();
    if (lpta_loadp_setscan_r(v21, v22, 1))
    {
LABEL_6:
      v23 = OUTLINED_FUNCTION_52_1();
      starttest(v23, v24);
      OUTLINED_FUNCTION_22_8();
      bspush_ca_boa();
      v25 = OUTLINED_FUNCTION_87_1();
      end_of_word(v25);
    }

    else
    {
LABEL_46:
      OUTLINED_FUNCTION_143();
      while (1)
      {
        v93 = OUTLINED_FUNCTION_9_14();
        if (testFldeq(v93, v94, v95, 4) || advance_tok(v3, v96, v97, v98))
        {
          break;
        }

        v99 = OUTLINED_FUNCTION_55_1();
        bspush_ca_scan(v99, v100);
      }
    }

    OUTLINED_FUNCTION_165();
    while (2)
    {
      v27 = *(v3 + 104);
      if (v27)
      {
        v28 = OUTLINED_FUNCTION_60_1(v27);
      }

      else
      {
        v28 = vback(v3, v26);
      }

      switch(v28)
      {
        case 1:
          goto LABEL_6;
        case 2:
          OUTLINED_FUNCTION_75_1();
          v76 = OUTLINED_FUNCTION_120();
          savescptr(v76, v77, v78);
          goto LABEL_6;
        case 3:
          goto LABEL_46;
        case 4:
          v79 = OUTLINED_FUNCTION_53_1();
          if (lpta_loadp_setscan_r(v79, v80, v81))
          {
            goto LABEL_43;
          }

          if (advance_tok(v3, v82, v83, v84))
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_98_0();
          v85 = OUTLINED_FUNCTION_12_14();
          if (test_ptr(v85, v86, v87))
          {
            goto LABEL_43;
          }

          v88 = OUTLINED_FUNCTION_101();
          if (in_quotes(v88))
          {
            goto LABEL_43;
          }

          goto LABEL_44;
        case 5:
          bspop_boa(v3);
          v29 = OUTLINED_FUNCTION_157();
          starttest(v29, v30);
          v31 = OUTLINED_FUNCTION_54_1();
          if (lpta_loadp_setscan_l(v31, v32, 1))
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_134();
          bspush_ca_scan_boa();
          v69 = OUTLINED_FUNCTION_111();
          goto LABEL_33;
        case 6:
LABEL_13:
          v33 = OUTLINED_FUNCTION_84_1();
          starttest(v33, v34);
          v35 = OUTLINED_FUNCTION_54_1();
          if (lpta_loadp_setscan_r(v35, v36, 1))
          {
            goto LABEL_44;
          }

          v37 = OUTLINED_FUNCTION_91_0();
          bspush_ca_scan(v37, v38);
          OUTLINED_FUNCTION_39_1();
          goto LABEL_20;
        case 7:
          bspop_boa(v3);
          v59 = OUTLINED_FUNCTION_81_1();
          starttest(v59, v60);
          OUTLINED_FUNCTION_64_1();
          bspush_ca_boa();
          v61 = OUTLINED_FUNCTION_54_1();
          v63 = lpta_loadp_setscan_r(v61, v62, 1);
          v26 = 0;
          if (v63)
          {
            continue;
          }

          OUTLINED_FUNCTION_39_1();
          v64 = test_string_s();
          v26 = 0;
          if (v64)
          {
            continue;
          }

          v65 = OUTLINED_FUNCTION_106();
          bspush_ca_scan(v65, v66);
          v39 = OUTLINED_FUNCTION_39_1();
          goto LABEL_16;
        case 8:
          v39 = OUTLINED_FUNCTION_96_0();
          v41 = 3;
LABEL_16:
          v42 = 1;
          goto LABEL_17;
        case 9:
          v67 = OUTLINED_FUNCTION_37_2();
          v46 = test_synch(v67, v68, 1, &unk_2806BB0E8);
          goto LABEL_30;
        case 10:
          while (1)
          {
            v71 = OUTLINED_FUNCTION_96_0();
            if (testFldeq(v71, v72, 3, 2) || advance_tok(v3, v73, v74, v75))
            {
              break;
            }

            v69 = OUTLINED_FUNCTION_74_1();
LABEL_33:
            bspush_ca_scan(v69, v70);
          }

          v26 = 0;
          continue;
        case 11:
        case 15:
          goto LABEL_31;
        case 12:
        case 16:
        case 19:
          goto LABEL_44;
        case 13:
          bspop_boa(v3);
          goto LABEL_3;
        case 14:
          v52 = OUTLINED_FUNCTION_39_1();
          v55 = testFldeq(v52, v53, v54, 2);
          v26 = 0;
          if (v55)
          {
            continue;
          }

          v58 = advance_tok(v3, 0, v56, v57);
          v26 = 0;
          if (v58)
          {
            continue;
          }

          v39 = OUTLINED_FUNCTION_39_1();
          v42 = 2;
LABEL_17:
          v43 = testFldeq(v39, v40, v41, v42);
          v26 = 0;
          if (!v43)
          {
            v46 = advance_tok(v3, 0, v44, v45);
LABEL_30:
            v26 = 0;
            if (!v46)
            {
LABEL_31:
              v26 = 1;
            }
          }

          continue;
        case 17:
          OUTLINED_FUNCTION_39_1();
LABEL_20:
          v47 = test_string_s();
          v26 = 0;
          if (!v47)
          {
            goto LABEL_21;
          }

          continue;
        case 18:
LABEL_21:
          *(v3 + 136) = 1;
          v48 = OUTLINED_FUNCTION_12_14();
          v51 = test_ptr(v48, v49, v50);
          v26 = 0;
          if (!v51)
          {
            goto LABEL_3;
          }

          continue;
        case 20:
LABEL_43:
          v89 = OUTLINED_FUNCTION_101();
          if (in_brackets(v89))
          {
            goto LABEL_3;
          }

LABEL_44:
          v90 = OUTLINED_FUNCTION_101();
          single_chars(v90, v91, v92);
LABEL_45:
          OUTLINED_FUNCTION_137(v108);
          break;
        case 22:
          goto LABEL_45;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_113();
}

uint64_t end_of_sentence(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v282, v285, v288[0], v288[1]);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v11, v12, v13, v14, v15, v16, v17, v18, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v277, v280, v283, v286, v288[0], v288[1], v288[2], v288[3], v288[4], v288[5]);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_0_16();
  v27 = OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v281, v284, v287, v288[0], v288[1], v288[2], v288[3], v288[4], v288[5]);
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_62_1(v27, v288);
  v29 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v29, v30);
  v31 = 0;
  v32 = OUTLINED_FUNCTION_73_1();
  fence_16(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_42_1();
  starttest(v35, v36);
  v37 = OUTLINED_FUNCTION_15_12();
  bspush_ca(v37);
  v38 = 0;
  if (*(v1 + 5102) != *(v1 + 5090))
  {
LABEL_106:
    LODWORD(v52) = v38;
    while (2)
    {
      v50 = *(v1 + 104);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_60_1(v50);
      }

      else
      {
        v51 = vback(v1, v52);
        v2 = 0;
      }

      v31 = v2;
      v47 = v2;
      v38 = v2;
      v53 = v2;
      v54 = v2;
      v55 = v2;
      switch(v51)
      {
        case 1:
        case 24:
        case 25:
        case 26:
        case 60:
        case 87:
        case 88:
          goto LABEL_82;
        case 2:
          v71 = OUTLINED_FUNCTION_52_1();
          bspush_ca(v71);
          v72 = *(v1 + 5110);
          goto LABEL_21;
        case 3:
          break;
        case 4:
          v75 = OUTLINED_FUNCTION_22_8();
          bspush_ca(v75);
          v72 = *(v1 + 5122);
          goto LABEL_21;
        case 5:
          v72 = *(v1 + 5098);
LABEL_21:
          v31 = v2;
          LODWORD(v52) = v2;
          if (v72 == *(v1 + 5090))
          {
            break;
          }

          continue;
        case 6:
          LODWORD(v31) = v2;
          goto LABEL_86;
        case 7:
          OUTLINED_FUNCTION_4_14();
          v76 = test_string_s();
          v47 = v2;
          LODWORD(v52) = v2;
          if (!v76)
          {
            goto LABEL_7;
          }

          continue;
        case 8:
          goto LABEL_7;
        case 9:
        case 13:
          goto LABEL_33;
        case 10:
          goto LABEL_6;
        case 11:
        case 22:
          goto LABEL_39;
        case 12:
          v92 = OUTLINED_FUNCTION_33_3();
          bspush_ca_scan(v92, v93);
          goto LABEL_32;
        case 14:
          v69 = OUTLINED_FUNCTION_46_1();
          bspush_ca_scan(v69, v70);
          goto LABEL_32;
        case 15:
          v73 = OUTLINED_FUNCTION_41_1();
          bspush_ca_scan(v73, v74);
          goto LABEL_32;
        case 16:
LABEL_32:
          OUTLINED_FUNCTION_4_14();
          v94 = test_string_s();
          LODWORD(v52) = v2;
          if (v94)
          {
            continue;
          }

          do
          {
LABEL_33:
            v95 = OUTLINED_FUNCTION_40_1();
            bspush_ca_scan(v95, v96);
            v97 = OUTLINED_FUNCTION_35_2();
            bspush_ca_scan(v97, v98);
            OUTLINED_FUNCTION_4_14();
          }

          while (!test_string_s());
          goto LABEL_45;
        case 17:
          OUTLINED_FUNCTION_118();
          v78 = OUTLINED_FUNCTION_68_1();
          savescptr(v78, v79, v80);
          v81 = OUTLINED_FUNCTION_52_1();
          starttest(v81, v82);
          v83 = OUTLINED_FUNCTION_71_1();
          if (lpta_loadp_setscan_r(v83, v84, 1))
          {
            goto LABEL_82;
          }

          v85 = OUTLINED_FUNCTION_4_14();
          v88 = testFldeq(v85, v86, v87, 1);
          LODWORD(v52) = v2;
          if (!v88)
          {
            v91 = advance_tok(v1, v2, v89, v90);
            LODWORD(v52) = v2;
            if (!v91)
            {
              goto LABEL_3;
            }
          }

          continue;
        case 18:
        case 20:
        case 21:
          v102 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v102, v103);
LABEL_39:
          OUTLINED_FUNCTION_4_14();
          v104 = test_string_s();
          LODWORD(v52) = v2;
          if (!v104)
          {
            goto LABEL_40;
          }

          continue;
        case 19:
        case 23:
          do
          {
LABEL_40:
            v105 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v105, v106);
            v107 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v107, v108);
            OUTLINED_FUNCTION_4_14();
          }

          while (!test_string_s());
          goto LABEL_45;
        case 27:
          LODWORD(v31) = v2;
          goto LABEL_87;
        case 28:
          goto LABEL_78;
        case 29:
          OUTLINED_FUNCTION_4_14();
          v77 = test_string_s();
          v38 = v2;
          LODWORD(v52) = v2;
          if (!v77)
          {
            goto LABEL_98;
          }

          continue;
        case 30:
        case 31:
          goto LABEL_98;
        case 32:
          goto LABEL_79;
        case 33:
          do
          {
            v159 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v159, v160);
LABEL_78:
            v156 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v156, v157);
LABEL_79:
            OUTLINED_FUNCTION_4_14();
            v158 = test_string_s();
            LODWORD(v52) = v2;
          }

          while (!v158);
          continue;
        case 34:
        case 35:
        case 37:
        case 38:
          goto LABEL_75;
        case 36:
          goto LABEL_77;
        case 39:
          while (1)
          {
            OUTLINED_FUNCTION_4_14();
            v153 = test_string_s();
            LODWORD(v52) = v2;
            if (v153)
            {
              break;
            }

LABEL_77:
            v154 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v154, v155);
LABEL_75:
            v151 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v151, v152);
          }

          continue;
        case 40:
        case 78:
          goto LABEL_59;
        case 41:
          LODWORD(v31) = v2;
          goto LABEL_88;
        case 42:
        case 48:
          v121 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v121, v122);
          goto LABEL_51;
        case 43:
          OUTLINED_FUNCTION_4_14();
          v120 = test_string_s();
          LODWORD(v53) = v2;
          LODWORD(v52) = v2;
          if (!v120)
          {
            goto LABEL_101;
          }

          continue;
        case 44:
        case 45:
          goto LABEL_101;
        case 46:
        case 50:
          goto LABEL_68;
        case 47:
        case 51:
        case 54:
        case 56:
          goto LABEL_72;
        case 49:
          goto LABEL_70;
        case 52:
          while (1)
          {
            v143 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v143, v144);
LABEL_70:
            OUTLINED_FUNCTION_4_14();
            v145 = test_string_s();
            LODWORD(v52) = v2;
            if (v145)
            {
              break;
            }

LABEL_68:
            v141 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v141, v142);
          }

          continue;
        case 53:
LABEL_51:
          OUTLINED_FUNCTION_4_14();
          v123 = test_string_s();
          LODWORD(v52) = v2;
          if (!v123)
          {
            goto LABEL_72;
          }

          continue;
        case 55:
          goto LABEL_74;
        case 57:
          while (1)
          {
            OUTLINED_FUNCTION_4_14();
            v148 = test_string_s();
            LODWORD(v52) = v2;
            if (v148)
            {
              break;
            }

LABEL_74:
            v149 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v149, v150);
LABEL_72:
            v146 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v146, v147);
          }

          continue;
        case 58:
          v133 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v133, v134);
LABEL_59:
          OUTLINED_FUNCTION_4_14();
          v59 = test_string_s();
          goto LABEL_60;
        case 59:
        case 77:
          OUTLINED_FUNCTION_98_0();
          v56 = OUTLINED_FUNCTION_12_14();
          v59 = test_ptr(v56, v57, v58);
          goto LABEL_60;
        case 61:
          LODWORD(v31) = v2;
          goto LABEL_89;
        case 62:
        case 68:
          v109 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v109, v110);
          goto LABEL_43;
        case 63:
          OUTLINED_FUNCTION_4_14();
          v135 = test_string_s();
          v54 = v2;
          LODWORD(v52) = v2;
          if (!v135)
          {
            goto LABEL_104;
          }

          continue;
        case 64:
        case 65:
          goto LABEL_104;
        case 66:
        case 70:
          goto LABEL_64;
        case 67:
        case 71:
        case 76:
          goto LABEL_44;
        case 69:
          goto LABEL_66;
        case 72:
          while (1)
          {
            v138 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v138, v139);
LABEL_66:
            OUTLINED_FUNCTION_4_14();
            v140 = test_string_s();
            LODWORD(v52) = v2;
            if (v140)
            {
              break;
            }

LABEL_64:
            v136 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v136, v137);
          }

          continue;
        case 73:
        case 75:
LABEL_43:
          OUTLINED_FUNCTION_4_14();
          v111 = test_string_s();
          LODWORD(v52) = v2;
          if (!v111)
          {
            do
            {
LABEL_44:
              v112 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v112, v113);
              v114 = OUTLINED_FUNCTION_52_1();
              bspush_ca_scan(v114, v115);
              OUTLINED_FUNCTION_4_14();
            }

            while (!test_string_s());
LABEL_45:
            LODWORD(v52) = v2;
          }

          continue;
        case 74:
          v60 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v60, v61);
          OUTLINED_FUNCTION_51_1();
          v62 = test_string_s();
          LODWORD(v52) = v2;
          if (v62)
          {
            continue;
          }

          v63 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v63, v64);
          v65 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v65, v66);
          v67 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v67, v68);
          goto LABEL_54;
        case 79:
          goto LABEL_55;
        case 80:
        case 81:
        case 82:
          v124 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v124, v125);
          goto LABEL_54;
        case 83:
LABEL_54:
          OUTLINED_FUNCTION_4_14();
          v126 = test_string_s();
          LODWORD(v52) = v2;
          if (!v126)
          {
LABEL_55:
            v127 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v127, v128);
            OUTLINED_FUNCTION_52_1();
            bspush_ca_scan_boa();
            v129 = OUTLINED_FUNCTION_1_15();
            if (testFldeq(v129, v130, v131, v132))
            {
              LODWORD(v52) = v2;
            }

            else
            {
              LODWORD(v52) = 1;
            }
          }

          continue;
        case 84:
          v116 = OUTLINED_FUNCTION_4_14();
          v119 = testFldeq(v116, v117, v118, 2);
          v52 = v2;
          if (v119)
          {
            continue;
          }

          goto LABEL_47;
        case 85:
          bspop_boa(v1);
          goto LABEL_47;
        case 86:
LABEL_47:
          v59 = advance_tok(v1, v52, v47, v53);
LABEL_60:
          LODWORD(v52) = v2;
          if (!v59)
          {
            goto LABEL_82;
          }

          continue;
        case 90:
          goto LABEL_94;
        case 91:
        case 92:
        case 93:
          v99 = OUTLINED_FUNCTION_52_1();
          bspush_ca_scan(v99, v100);
          goto LABEL_36;
        case 94:
LABEL_36:
          OUTLINED_FUNCTION_4_14();
          v101 = test_string_s();
          v55 = v2;
          LODWORD(v52) = v2;
          if (!v101)
          {
            goto LABEL_94;
          }

          continue;
        case 95:
          bspop_boa(v1);
LABEL_82:
          vretproc(v1);
          return 0;
        default:
          goto LABEL_3;
      }

      break;
    }
  }

  v39 = OUTLINED_FUNCTION_36_2();
  starttest(v39, v40);
  v41 = OUTLINED_FUNCTION_14_12();
  v2 = v31;
  if (!lpta_loadp_setscan_r(v41, v42, v43))
  {
LABEL_6:
    while (1)
    {
      v44 = OUTLINED_FUNCTION_27_6();
      bspush_ca_scan(v44, v45);
      OUTLINED_FUNCTION_4_14();
      v46 = test_string_s();
      v47 = v2;
      v38 = v2;
      if (v46)
      {
        break;
      }

LABEL_7:
      v2 = v47;
      v48 = OUTLINED_FUNCTION_37_2();
      bspush_ca_scan(v48, v49);
    }

    goto LABEL_106;
  }

LABEL_86:
  v161 = OUTLINED_FUNCTION_52_1();
  starttest(v161, v162);
  v163 = OUTLINED_FUNCTION_14_12();
  v38 = v31;
  if (!lpta_loadp_setscan_r(v163, v164, v165))
  {
LABEL_98:
    v2 = 29;
    do
    {
      v201 = OUTLINED_FUNCTION_71_1();
      bspush_ca_scan(v201, v202);
      v203 = OUTLINED_FUNCTION_55_1();
      bspush_ca_scan(v203, v204);
      OUTLINED_FUNCTION_4_14();
    }

    while (!test_string_s());
    goto LABEL_106;
  }

LABEL_87:
  v166 = OUTLINED_FUNCTION_52_1();
  starttest(v166, v167);
  v168 = OUTLINED_FUNCTION_14_12();
  v171 = lpta_loadp_setscan_r(v168, v169, v170);
  LODWORD(v53) = v31;
  if (!v171)
  {
LABEL_101:
    v38 = v53;
    v2 = 43;
    do
    {
      v205 = OUTLINED_FUNCTION_71_1();
      bspush_ca_scan(v205, v206);
      v207 = OUTLINED_FUNCTION_55_1();
      bspush_ca_scan(v207, v208);
      OUTLINED_FUNCTION_4_14();
    }

    while (!test_string_s());
    goto LABEL_106;
  }

LABEL_88:
  v172 = OUTLINED_FUNCTION_52_1();
  starttest(v172, v173);
  v174 = OUTLINED_FUNCTION_14_12();
  v177 = lpta_loadp_setscan_r(v174, v175, v176);
  v54 = v31;
  if (!v177)
  {
LABEL_104:
    v38 = v54;
    v2 = 63;
    do
    {
      v209 = OUTLINED_FUNCTION_71_1();
      bspush_ca_scan(v209, v210);
      v211 = OUTLINED_FUNCTION_55_1();
      bspush_ca_scan(v211, v212);
      OUTLINED_FUNCTION_4_14();
    }

    while (!test_string_s());
    goto LABEL_106;
  }

LABEL_89:
  v178 = OUTLINED_FUNCTION_52_1();
  starttest(v178, v179);
  if (*(v1 + 2638) != *(v1 + 2614) && *(v1 + 2710) != *(v1 + 2698))
  {
    v180 = OUTLINED_FUNCTION_14_12();
    if (!lpta_loadp_setscan_r(v180, v181, v182))
    {
      OUTLINED_FUNCTION_51_1();
      if (!test_string_s())
      {
        v183 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v183, v184);
        v185 = OUTLINED_FUNCTION_52_1();
        bspush_ca_scan(v185, v186);
        OUTLINED_FUNCTION_4_14();
        v187 = test_string_s();
        v55 = v31;
        v38 = v31;
        if (!v187)
        {
LABEL_94:
          v188 = v55;
          v189 = OUTLINED_FUNCTION_4_14();
          if (testFldeq(v189, v190, v191, 2) || advance_tok(v1, v192, v193, v194) || (OUTLINED_FUNCTION_52_1(), bspush_ca_scan_boa(), v195 = OUTLINED_FUNCTION_4_14(), testFldeq(v195, v196, v197, 2)))
          {
            v38 = v188;
          }

          else if (advance_tok(v1, v198, v199, v200))
          {
            v38 = v188;
          }

          else
          {
            v38 = 1;
          }
        }

        goto LABEL_106;
      }
    }
  }

LABEL_3:
  vretproc(v1);
  return 94;
}

uint64_t skip_punct_and_delimiters(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  v121 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v120);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_179(v11, v12);
  if (setjmp(v2) || (OUTLINED_FUNCTION_0_16(), v18 = OUTLINED_FUNCTION_178(v13, v14, v15, v16, v17), v18))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_62_1(v18, &v119);
    v20 = OUTLINED_FUNCTION_66_1();
    push_ptr_init(v20, v21);
    fence_16(v1, 0, &_MergedGlobals_1_0);
    v22 = OUTLINED_FUNCTION_42_1();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_15_12();
    bspush_ca(v24);
LABEL_5:
    OUTLINED_FUNCTION_88_1();
    if (!v25)
    {
      while (1)
      {
        v41 = *(v1 + 104);
        if (v41)
        {
          v31 = OUTLINED_FUNCTION_65_1(v41);
        }

        else
        {
          v31 = OUTLINED_FUNCTION_133();
        }

        switch(v31)
        {
          case 1:
          case 7:
            goto LABEL_29;
          case 2:
            v60 = OUTLINED_FUNCTION_52_1();
            bspush_ca(v60);
            goto LABEL_5;
          case 3:
            goto LABEL_7;
          case 4:
            v52 = OUTLINED_FUNCTION_22_8();
            bspush_ca(v52);
            goto LABEL_5;
          case 5:
            v55 = OUTLINED_FUNCTION_36_2();
            bspush_ca(v55);
            goto LABEL_5;
          case 6:
            goto LABEL_5;
          case 8:
            v42 = OUTLINED_FUNCTION_45_1();
            bspush_ca_scan(v42, v43);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              continue;
            }

            break;
          case 9:
            goto LABEL_27;
          case 10:
            v58 = OUTLINED_FUNCTION_35_2();
            bspush_ca_scan(v58, v59);
            goto LABEL_9;
          case 11:
            break;
          case 12:
            v53 = OUTLINED_FUNCTION_32_3();
            bspush_ca_scan(v53, v54);
            goto LABEL_9;
          case 13:
            v56 = OUTLINED_FUNCTION_33_3();
            bspush_ca_scan(v56, v57);
            goto LABEL_9;
          case 14:
            v50 = OUTLINED_FUNCTION_46_1();
            bspush_ca_scan(v50, v51);
            goto LABEL_9;
          case 15:
            v44 = OUTLINED_FUNCTION_9_14();
            if (!testFldeq(v44, v45, v46, 4) && !advance_tok(v1, v47, v48, v49))
            {
              goto LABEL_27;
            }

            continue;
          case 16:
            v66 = OUTLINED_FUNCTION_59_1();
            savescptr(v66, v67, v68);
            goto LABEL_29;
          case 17:
            goto LABEL_8;
          default:
            goto LABEL_3;
        }

        OUTLINED_FUNCTION_109();
        v61 = OUTLINED_FUNCTION_83_1();
        savescptr(v61, v62, v63);
        do
        {
LABEL_27:
          v64 = OUTLINED_FUNCTION_41_1();
          bspush_ca_scan(v64, v65);
LABEL_8:
          v39 = OUTLINED_FUNCTION_38_2();
          bspush_ca_scan(v39, v40);
LABEL_9:
          OUTLINED_FUNCTION_4_14();
        }

        while (!test_string_s());
      }
    }

LABEL_7:
    v26 = OUTLINED_FUNCTION_27_6();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_14_12();
    v31 = lpta_loadp_setscan_r(v28, v29, v30);
    if (!v31)
    {
      goto LABEL_8;
    }

LABEL_29:
    OUTLINED_FUNCTION_131(v31, v32, v33, v34, v35, v36, v37, v38, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v119, v120);
    return 0;
  }
}

uint64_t build_phrase_final_structure(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_5_14(v4, v5, v6, v7, v8, v9, v10, v11, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_164(v12, v13, v14, v15, v16, v17, v18, v19, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v164, v166, v168, v170);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v20, v21, v22, v23, v24, v25, v26, v27, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v165, v167, v169, v171))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_21_8();
  v29 = OUTLINED_FUNCTION_66_1();
  push_ptr_init(v29, v30);
  fence_16(v1, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_103();
  v31 = OUTLINED_FUNCTION_55_1();
  v33 = lpta_loadp_setscan_r(v31, v32, v3);
  if (v33)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_15_12();
  bspush_ca_scan_boa();
  v41 = OUTLINED_FUNCTION_6_14();
  v44 = !testFldeq(v41, v42, v43, 72);
  while (1)
  {
    v45 = *(v1 + 104);
    if (v45)
    {
      v33 = OUTLINED_FUNCTION_60_1(v45);
    }

    else
    {
      v33 = vback(v1, v44);
      v44 = 0;
    }

    if (v33 != 2)
    {
      break;
    }

    bspop_boa(v1);
    if (!advance_tok(v1, v46, v47, v48))
    {
      *(v1 + 136) = 1;
      *(v1 + 112) = v163;
      *(v1 + 128) = 0;
      v49 = OUTLINED_FUNCTION_129();
      insert_r(v49, v50, v50, v51, v52);
      v53 = OUTLINED_FUNCTION_66_1();
      v33 = rpta_storep(v53, v54, v55);
      goto LABEL_5;
    }
  }

  if (v33 == 1)
  {
LABEL_5:
    if (!*(v1 + 2538))
    {
      OUTLINED_FUNCTION_172();
    }
  }

  else if (v33 != 3)
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  OUTLINED_FUNCTION_131(v33, v34, v35, v36, v37, v38, v39, v40, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163);
  return 0;
}

uint64_t in_quotes(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v156, v159);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v157, v160, v162, v164, v166, v168);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v158, v161, v163, v165, v167, v169))
    {
      v27 = OUTLINED_FUNCTION_13_14();
      get_parm(v27, v28, v29, -6);
      OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152);
      fence_16(v1, 0, &_MergedGlobals_1_0);
      v38 = OUTLINED_FUNCTION_29_5();
      if (lpta_loadp_setscan_l(v38, v39, v40) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v41 = OUTLINED_FUNCTION_31_4(), lpta_loadp_setscan_r(v41, v42, v43)) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
      {
        v44 = OUTLINED_FUNCTION_14_12();
        if (lpta_loadp_setscan_l(v44, v45, v46) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v47 = OUTLINED_FUNCTION_31_4(), lpta_loadp_setscan_r(v47, v48, v49)) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
        {
          v50 = OUTLINED_FUNCTION_14_12();
          if (!lpta_loadp_setscan_l(v50, v51, v52))
          {
            OUTLINED_FUNCTION_4_14();
            if (!test_string_s())
            {
              v53 = OUTLINED_FUNCTION_31_4();
              if (!lpta_loadp_setscan_r(v53, v54, v55))
              {
                OUTLINED_FUNCTION_4_14();
                test_string_s();
              }
            }
          }
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

uint64_t in_brackets(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v156, v159);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v157, v160, v162, v164, v166, v168);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_0_16();
    if (!OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v158, v161, v163, v165, v167, v169))
    {
      v27 = OUTLINED_FUNCTION_13_14();
      get_parm(v27, v28, v29, -6);
      OUTLINED_FUNCTION_43_1(v30, v31, v32, v33, v34, v35, v36, v37, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152);
      fence_16(v1, 0, &_MergedGlobals_1_0);
      v38 = OUTLINED_FUNCTION_29_5();
      if (lpta_loadp_setscan_l(v38, v39, v40) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v41 = OUTLINED_FUNCTION_31_4(), lpta_loadp_setscan_r(v41, v42, v43)) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
      {
        v44 = OUTLINED_FUNCTION_14_12();
        if (lpta_loadp_setscan_l(v44, v45, v46) || (OUTLINED_FUNCTION_4_14(), test_string_s()) || (v47 = OUTLINED_FUNCTION_31_4(), lpta_loadp_setscan_r(v47, v48, v49)) || (OUTLINED_FUNCTION_4_14(), test_string_s()))
        {
          v50 = OUTLINED_FUNCTION_14_12();
          if (!lpta_loadp_setscan_l(v50, v51, v52))
          {
            OUTLINED_FUNCTION_4_14();
            if (!test_string_s())
            {
              v53 = OUTLINED_FUNCTION_31_4();
              if (!lpta_loadp_setscan_r(v53, v54, v55))
              {
                OUTLINED_FUNCTION_4_14();
                test_string_s();
              }
            }
          }
        }
      }
    }
  }

  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

void beg_of_word(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_76_1();
  v74 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = 0;
  OUTLINED_FUNCTION_58_1();
  bzero(v60, v6);
  OUTLINED_FUNCTION_57_1();
  bzero(v73, v7);
  v8 = setjmp(v73);
  if (!v8 && !OUTLINED_FUNCTION_44_1(v8, v60, v9, v10, v11, v12, v13, v14, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12], v60[13], v60[14], v60[15], v60[16], v60[17], v60[18], v60[19], v60[20], v60[21], v60[22], v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73[0]))
  {
    OUTLINED_FUNCTION_21_8();
    fence_16(v4, 0, &_MergedGlobals_1_0);
    v15 = OUTLINED_FUNCTION_100();
    starttest(v15, v16);
    v17 = OUTLINED_FUNCTION_55_1();
    if (lpta_loadp_setscan_l(v17, v18, v5))
    {
LABEL_5:
      v19 = OUTLINED_FUNCTION_38_2();
      starttest(v19, v20);
      v21 = OUTLINED_FUNCTION_37_2();
      bspush_ca(v21);
      OUTLINED_FUNCTION_88_1();
      if (v22)
      {
LABEL_7:
        v23 = OUTLINED_FUNCTION_53_1();
        if (!lpta_loadp_setscan_l(v23, v24, v25))
        {
          do
          {
LABEL_11:
            v28 = OUTLINED_FUNCTION_71_1();
            bspush_ca_scan(v28, v29);
            v30 = OUTLINED_FUNCTION_55_1();
            bspush_ca_scan(v30, v31);
            OUTLINED_FUNCTION_4_14();
          }

          while (!test_string_s());
        }
      }
    }

    else
    {
      v26 = OUTLINED_FUNCTION_15_12();
      bspush_ca_scan(v26, v27);
      OUTLINED_FUNCTION_4_14();
      if (!test_string_s())
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_165();
    while (2)
    {
      v32 = *(v4 + 104);
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_65_1(v32);
      }

      else
      {
        v33 = OUTLINED_FUNCTION_133();
      }

      switch(v33)
      {
        case 1:
          goto LABEL_5;
        case 2:
          v34 = OUTLINED_FUNCTION_111();
          bspush_ca_scan(v34, v35);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_27;
        case 4:
          v41 = OUTLINED_FUNCTION_106();
          bspush_ca_scan(v41, v42);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_27;
        case 5:
          v37 = OUTLINED_FUNCTION_112();
          bspush_ca_scan(v37, v38);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_27;
        case 6:
        case 22:
          OUTLINED_FUNCTION_30_4();
LABEL_27:
          if (!test_string_s())
          {
            break;
          }

          continue;
        case 9:
          v36 = OUTLINED_FUNCTION_91_0();
          bspush_ca(v36);
          goto LABEL_23;
        case 10:
          goto LABEL_7;
        case 11:
          v43 = OUTLINED_FUNCTION_55_1();
          bspush_ca(v43);
          goto LABEL_23;
        case 12:
LABEL_23:
          OUTLINED_FUNCTION_88_1();
          if (!v22)
          {
            continue;
          }

          goto LABEL_7;
        case 13:
          v48 = OUTLINED_FUNCTION_64_1();
          bspush_ca_scan(v48, v49);
          *(v4 + 136) = 1;
          v50 = OUTLINED_FUNCTION_12_14();
          if (test_ptr(v50, v51, v52))
          {
            continue;
          }

          goto LABEL_3;
        case 14:
          v44 = OUTLINED_FUNCTION_74_1();
          bspush_ca_scan(v44, v45);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_36;
        case 15:
        case 21:
          goto LABEL_11;
        case 16:
          v53 = OUTLINED_FUNCTION_84_1();
          bspush_ca_scan(v53, v54);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_36;
        case 17:
          v46 = OUTLINED_FUNCTION_71_1();
          bspush_ca_scan(v46, v47);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_36;
        case 18:
          v55 = OUTLINED_FUNCTION_70_1();
          bspush_ca_scan(v55, v56);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_36;
        case 19:
          v39 = OUTLINED_FUNCTION_81_1();
          bspush_ca_scan(v39, v40);
          OUTLINED_FUNCTION_30_4();
          goto LABEL_36;
        case 20:
          OUTLINED_FUNCTION_30_4();
LABEL_36:
          if (!test_string_s())
          {
            goto LABEL_11;
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
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_113();
}

uint64_t skip_delimiters(uint64_t a1)
{
  OUTLINED_FUNCTION_76_1();
  v113 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v112);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_179(v11, v12);
  if (setjmp(v2) || (OUTLINED_FUNCTION_0_16(), v18 = OUTLINED_FUNCTION_178(v13, v14, v15, v16, v17), v18))
  {
LABEL_3:
    vretproc(v1);
    return 94;
  }

  else
  {
    OUTLINED_FUNCTION_62_1(v18, &v111);
    v20 = OUTLINED_FUNCTION_66_1();
    push_ptr_init(v20, v21);
    fence_16(v1, 0, &_MergedGlobals_1_0);
    v22 = OUTLINED_FUNCTION_42_1();
    starttest(v22, v23);
    v24 = OUTLINED_FUNCTION_15_12();
    bspush_ca(v24);
LABEL_6:
    OUTLINED_FUNCTION_88_1();
    if (!v25)
    {
      while (1)
      {
        v41 = *(v1 + 104);
        if (v41)
        {
          v31 = OUTLINED_FUNCTION_65_1(v41);
        }

        else
        {
          v31 = OUTLINED_FUNCTION_133();
        }

        switch(v31)
        {
          case 1:
          case 7:
            goto LABEL_25;
          case 2:
            v52 = OUTLINED_FUNCTION_52_1();
            bspush_ca(v52);
            goto LABEL_6;
          case 3:
            goto LABEL_8;
          case 4:
            v51 = OUTLINED_FUNCTION_22_8();
            bspush_ca(v51);
            goto LABEL_6;
          case 5:
            v55 = OUTLINED_FUNCTION_36_2();
            bspush_ca(v55);
            goto LABEL_6;
          case 6:
            goto LABEL_6;
          case 8:
            v42 = OUTLINED_FUNCTION_45_1();
            bspush_ca_scan(v42, v43);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              continue;
            }

            break;
          case 9:
            goto LABEL_17;
          case 10:
            v49 = OUTLINED_FUNCTION_35_2();
            bspush_ca_scan(v49, v50);
            goto LABEL_10;
          case 11:
            break;
          case 12:
            v53 = OUTLINED_FUNCTION_32_3();
            bspush_ca_scan(v53, v54);
            goto LABEL_10;
          case 13:
            v56 = OUTLINED_FUNCTION_33_3();
            bspush_ca_scan(v56, v57);
            goto LABEL_10;
          case 14:
            goto LABEL_10;
          case 15:
            v58 = OUTLINED_FUNCTION_59_1();
            savescptr(v58, v59, v60);
            goto LABEL_25;
          case 16:
            goto LABEL_9;
          default:
            goto LABEL_3;
        }

        OUTLINED_FUNCTION_109();
        v44 = OUTLINED_FUNCTION_83_1();
        savescptr(v44, v45, v46);
        do
        {
LABEL_17:
          v47 = OUTLINED_FUNCTION_46_1();
          bspush_ca_scan(v47, v48);
LABEL_9:
          v39 = OUTLINED_FUNCTION_38_2();
          bspush_ca_scan(v39, v40);
LABEL_10:
          OUTLINED_FUNCTION_4_14();
        }

        while (!test_string_s());
      }
    }

LABEL_8:
    v26 = OUTLINED_FUNCTION_27_6();
    starttest(v26, v27);
    v28 = OUTLINED_FUNCTION_14_12();
    v31 = lpta_loadp_setscan_r(v28, v29, v30);
    if (!v31)
    {
      goto LABEL_9;
    }

LABEL_25:
    OUTLINED_FUNCTION_131(v31, v32, v33, v34, v35, v36, v37, v38, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v111, v112);
    return 0;
  }
}

uint64_t longdash(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_5_14(v3, v4, v5, v6, v7, v8, v9, v10, v71, v76, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186, v191, v195, v198);
  OUTLINED_FUNCTION_26_8(v11, v12, v13, v14, v15, v16, v17, v18, v72, v77, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182, v187, v192, v196, v199, v201, v203, v205, v207);
  if (setjmp(v2))
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_0_16();
  if (OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v73, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183, v188, v193, v197, v200, v202, v204, v206, v208))
  {
    goto LABEL_3;
  }

  v28 = OUTLINED_FUNCTION_63_1();
  get_parm(v28, v29, v30, -6);
  OUTLINED_FUNCTION_19_9(v31, v32, v33, v34, v35, v36, v37, v38, v74, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184, v189);
  fence_16(v1, 0, &_MergedGlobals_1_0);
  OUTLINED_FUNCTION_103();
  v39 = OUTLINED_FUNCTION_55_1();
  v41 = lpta_loadp_setscan_r(v39, v40, v2);
  if (v41)
  {
LABEL_20:
    OUTLINED_FUNCTION_61_1(v41, v42, v43, v44, v45, v46, v47, v48, v75, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185, v190, v194);
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_15_12();
  bspush_ca_scan_boa();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_116();
  v56 = !testFldeq(v49, v50, v51, v52) && !advance_tok(v1, v53, v54, v55);
  v57 = v56;
  while (2)
  {
    v58 = *(v1 + 104);
    if (v58)
    {
      OUTLINED_FUNCTION_65_1(v58);
      v60 = v59;
    }

    else
    {
      vback(v1, v57);
      v60 = 0;
    }

    OUTLINED_FUNCTION_152();
    if (!(!v63 & v62))
    {
      switch(v61)
      {
        case 1:
          bspop_boa(v1);
          OUTLINED_FUNCTION_54_1();
          bspush_ca_boa();
          *(v1 + 136) = 1;
          OUTLINED_FUNCTION_12_14();
          v64 = lpta_tstctxtl();
          v57 = v60;
          if (!v64)
          {
            v65 = OUTLINED_FUNCTION_135();
            setscan_l(v65, v66, v67);
            if (v68)
            {
              v57 = v60;
            }

            else
            {
              v57 = 1;
            }
          }

          continue;
        case 2:
          bspop_boa(v1);
          *(v1 + 2614) = *(v1 + 2662);
          v69 = OUTLINED_FUNCTION_66_1();
          skip_delimiters(v69);
          break;
        case 3:
          break;
        default:
          goto LABEL_20;
      }

      v70 = OUTLINED_FUNCTION_66_1();
      v41 = build_phrase_final_structure(v70);
      goto LABEL_20;
    }

    break;
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_105();
}

uint64_t shortdash(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_10_14(v3, v4, v5, v6, v7, v8, v9, v10, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161(v11, v12);
  if (!setjmp(v2))
  {
    OUTLINED_FUNCTION_119();
    if (!OUTLINED_FUNCTION_160(v13, v14, v15, v16, v17))
    {
      v19 = OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_127(v19, v20);
      OUTLINED_FUNCTION_21_8();
      v21 = OUTLINED_FUNCTION_66_1();
      push_ptr_init(v21, v22);
      v23 = 0;
      v24 = OUTLINED_FUNCTION_73_1();
      fence_16(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_139();
      starttest(v27, v28);
      v29 = OUTLINED_FUNCTION_55_1();
      if (!lpta_loadp_setscan_r(v29, v30, 1))
      {
        v75 = OUTLINED_FUNCTION_3_15();
        if (testFldeq(v75, v76, v77, v78) || advance_tok(v1, v79, v80, v81))
        {
          v31 = 0;
        }

        else
        {
          v84 = OUTLINED_FUNCTION_110();
          starttest(v84, v85);
          OUTLINED_FUNCTION_52_1();
          bspush_ca_boa();
          v86 = OUTLINED_FUNCTION_56_1();
          v31 = lpta_loadp_setscan_l(v86, v87, 2) == 0;
        }

        goto LABEL_31;
      }

      while (2)
      {
        v31 = v23;
        v32 = OUTLINED_FUNCTION_22_8();
        starttest(v32, v33);
        v34 = OUTLINED_FUNCTION_14_12();
        if (lpta_loadp_setscan_r(v34, v35, v36))
        {
LABEL_6:
          v37 = OUTLINED_FUNCTION_8_14();
          if (!in_quotes(v37))
          {
LABEL_67:
            v152 = OUTLINED_FUNCTION_8_14();
            single_chars(v152, v153, v154);
            goto LABEL_68;
          }

LABEL_7:
          lpta_loadpn(v1, v1 + 1400);
          v38 = OUTLINED_FUNCTION_56_1();
          rpta_loadpn(v38, v39);
          OUTLINED_FUNCTION_94_0();
          rpta_ctxtl();
          if (!compare_ptas(v1) && !testeq(v1))
          {
            goto LABEL_68;
          }

LABEL_9:
          v40 = OUTLINED_FUNCTION_35_2();
          starttest(v40, v41);
          v42 = OUTLINED_FUNCTION_7_14();
          v45 = lpta_loadp_setscan_l(v42, v43, v44);
          v46 = v31;
          if (!v45)
          {
LABEL_51:
            v120 = OUTLINED_FUNCTION_83_1();
            savescptr(v120, v121, v122);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              goto LABEL_31;
            }

            v123 = OUTLINED_FUNCTION_31_4();
            if (lpta_loadp_setscan_r(v123, v124, v125))
            {
              goto LABEL_31;
            }

            if (advance_tok(v1, v126, v127, v128))
            {
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_98_0();
            v129 = OUTLINED_FUNCTION_12_14();
            if (test_ptr(v129, v130, v131))
            {
              goto LABEL_31;
            }

            v132 = OUTLINED_FUNCTION_33_3();
            bspush_ca_scan(v132, v133);
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              goto LABEL_31;
            }

LABEL_56:
            *(v1 + 2614) = *(v1 + 2662);
            OUTLINED_FUNCTION_172();
LABEL_68:
            OUTLINED_FUNCTION_95_0(v184);
            goto LABEL_3;
          }

LABEL_10:
          v31 = v46;
          v47 = OUTLINED_FUNCTION_41_1();
          starttest(v47, v48);
          v49 = OUTLINED_FUNCTION_14_12();
          if (lpta_loadp_setscan_r(v49, v50, v51))
          {
LABEL_11:
            OUTLINED_FUNCTION_79_1();
            if (v52)
            {
              v53 = OUTLINED_FUNCTION_14_12();
              if (!lpta_loadp_setscan_r(v53, v54, v55))
              {
                OUTLINED_FUNCTION_9_14();
                if (!test_string_s())
                {
                  goto LABEL_68;
                }
              }
            }

LABEL_15:
            v56 = OUTLINED_FUNCTION_52_1();
            starttest(v56, v57);
            v58 = OUTLINED_FUNCTION_14_12();
            v61 = lpta_loadp_setscan_r(v58, v59, v60);
            v62 = v31;
            if (v61)
            {
LABEL_16:
              v31 = v62;
              v63 = OUTLINED_FUNCTION_52_1();
              starttest(v63, v64);
              v65 = OUTLINED_FUNCTION_14_12();
              if (!lpta_loadp_setscan_r(v65, v66, v67))
              {
                v68 = OUTLINED_FUNCTION_52_1();
                bspush_ca_scan(v68, v69);
                OUTLINED_FUNCTION_4_14();
                v70 = test_string_s();
                v71 = v31;
                if (!v70)
                {
LABEL_64:
                  v31 = v71;
                  OUTLINED_FUNCTION_4_14();
                  if (!test_string_s())
                  {
                    goto LABEL_68;
                  }
                }

LABEL_31:
                LODWORD(v88) = v31;
LABEL_32:
                v89 = *(v1 + 104);
                if (v89)
                {
                  v90 = OUTLINED_FUNCTION_60_1(v89);
                }

                else
                {
                  v90 = vback(v1, v88);
                  v31 = 0;
                }

                v92 = v31;
                switch(v90)
                {
                  case 1:
                    v23 = v31;
                    continue;
                  case 2:
                  case 4:
                  case 8:
                  case 10:
                  case 20:
                    goto LABEL_68;
                  case 3:
                    bspop_boa(v1);
                    *(v1 + 2822) = *(v1 + 2838);
                    goto LABEL_67;
                  case 5:
                    goto LABEL_6;
                  case 6:
                    bspush_nboa(v1);
                    v93 = OUTLINED_FUNCTION_3_15();
                    v97 = testFldeq(v93, v94, v95, v96);
                    LODWORD(v88) = v31;
                    if (!v97)
                    {
                      v100 = advance_tok(v1, v31, v98, v99);
                      LODWORD(v88) = v31;
                      if (!v100)
                      {
                        goto LABEL_67;
                      }
                    }

                    goto LABEL_32;
                  case 7:
                    goto LABEL_20;
                  case 9:
                    goto LABEL_7;
                  case 11:
                    goto LABEL_9;
                  case 12:
                    v46 = v31;
                    goto LABEL_10;
                  case 13:
                    goto LABEL_51;
                  case 14:
                    OUTLINED_FUNCTION_98_0();
                    v113 = OUTLINED_FUNCTION_12_14();
                    v116 = test_ptr(v113, v114, v115);
                    LODWORD(v88) = v31;
                    if (!v116)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_32;
                  case 15:
                    goto LABEL_56;
                  case 16:
                    goto LABEL_11;
                  case 17:
                    bspush_nboa(v1);
                    goto LABEL_46;
                  case 18:
                    goto LABEL_27;
                  case 19:
                    OUTLINED_FUNCTION_98_0();
                    v105 = OUTLINED_FUNCTION_12_14();
                    v108 = test_ptr(v105, v106, v107);
                    goto LABEL_49;
                  case 21:
                    goto LABEL_15;
                  case 22:
                    v62 = v31;
                    goto LABEL_16;
                  case 23:
                    goto LABEL_57;
                  case 24:
                    OUTLINED_FUNCTION_98_0();
                    v109 = OUTLINED_FUNCTION_12_14();
                    v112 = test_ptr(v109, v110, v111);
                    v92 = v31;
                    LODWORD(v88) = v31;
                    if (!v112)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_32;
                  case 25:
                    goto LABEL_60;
                  case 26:
LABEL_46:
                    v117 = OUTLINED_FUNCTION_52_1();
                    bspush_ca_scan(v117, v118);
                    v101 = OUTLINED_FUNCTION_1_15();
                    goto LABEL_47;
                  case 27:
                    v72 = v31;
                    goto LABEL_73;
                  case 28:
                    v101 = OUTLINED_FUNCTION_3_15();
LABEL_47:
                    v119 = testFldeq(v101, v102, v103, v104);
                    v88 = v31;
                    if (!v119)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_32;
                  case 29:
LABEL_48:
                    v108 = advance_tok(v1, v88, v92, v91);
LABEL_49:
                    LODWORD(v88) = v31;
                    if (!v108)
                    {
                      goto LABEL_68;
                    }

                    goto LABEL_32;
                  case 30:
                    goto LABEL_67;
                  case 31:
                    v71 = v31;
                    goto LABEL_64;
                  default:
                    goto LABEL_3;
                }
              }

              goto LABEL_67;
            }

LABEL_57:
            v134 = OUTLINED_FUNCTION_83_1();
            savescptr(v134, v135, v136);
            v137 = OUTLINED_FUNCTION_9_14();
            if (testFldeq(v137, v138, v139, 4))
            {
              goto LABEL_31;
            }

            if (advance_tok(v1, v140, v141, v142))
            {
              goto LABEL_31;
            }

            v143 = OUTLINED_FUNCTION_52_1();
            bspush_ca_scan(v143, v144);
            OUTLINED_FUNCTION_4_14();
            v145 = test_string_s();
            v92 = v31;
            if (v145)
            {
              goto LABEL_31;
            }

LABEL_60:
            v31 = v92;
            v146 = OUTLINED_FUNCTION_31_4();
            if (lpta_loadp_setscan_l(v146, v147, v148))
            {
              goto LABEL_31;
            }

            v72 = v31;
            if (advance_tok(v1, v149, v150, v151))
            {
              goto LABEL_31;
            }

            do
            {
LABEL_73:
              v155 = OUTLINED_FUNCTION_55_1();
              bspush_ca_scan(v155, v156);
              OUTLINED_FUNCTION_4_14();
            }

            while (!test_string_s());
          }

          else
          {
            bspush_boa(v1);
LABEL_27:
            v72 = v31;
            do
            {
              v82 = OUTLINED_FUNCTION_55_1();
              bspush_ca_scan(v82, v83);
              OUTLINED_FUNCTION_4_14();
            }

            while (!test_string_s());
          }
        }

        else
        {
          bspush_boa(v1);
LABEL_20:
          v72 = v31;
          while (1)
          {
            OUTLINED_FUNCTION_4_14();
            if (test_string_s())
            {
              break;
            }

            v73 = OUTLINED_FUNCTION_54_1();
            bspush_ca_scan(v73, v74);
          }
        }

        break;
      }

      v31 = v72;
      goto LABEL_31;
    }
  }

LABEL_3:
  vretproc(v1);
  return OUTLINED_FUNCTION_154();
}