uint64_t posparser_Process(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, signed int a5, int a6, unsigned int a7, const char **a8, uint64_t *a9, _WORD *a10)
{
  v10 = a8;
  v12 = a1;
  v13 = a10;
  v565 = *MEMORY[0x1E69E9840];
  v14 = *a9;
  v15 = *a10;
  v16 = *a8;
  __dst = heap_Calloc(*(*a1 + 8), 1, a1[49] + 1);
  if (!__dst)
  {
    POSAndDiacritics = -1607458806;
    log_OutPublic(*(*v12 + 32), "POSPARSER", 68000, 0);
    *a10 = v15;
    *v10 = v16;
    *a9 = v14;
    return POSAndDiacritics;
  }

  v550 = v12[49];
  v542 = v12;
  v526 = v14;
  v528 = v15;
  v537 = v16;
  if (a6 == 1)
  {
    *__s = 0;
    LOWORD(v553) = -1;
    LOBYTE(__c[0]) = 0;
    *__s2 = 0;
    *__src = 0;
    v17 = a5;
    v18 = a4;
  }

  else
  {
    v17 = a5;
    v18 = a4;
    if (*(v12 + 16) > 1u)
    {
      goto LABEL_270;
    }

    *__s = 0;
    LOWORD(v553) = -1;
    LOBYTE(__c[0]) = 0;
    if (!a6)
    {
      strcpy(__s1, "tn");
      v19 = *(v12 + 72);
      goto LABEL_8;
    }
  }

  strcpy(__s1, "isolatedword");
  v19 = 1;
LABEL_8:
  v522 = v19;
  v20 = __dst;
  if (!v17)
  {
    goto LABEL_86;
  }

  v509 = v10;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  POSAndDiacritics = 0;
  v24.i64[0] = 0x100000001;
  v24.i64[1] = 0x100000001;
  do
  {
    LODWORD(v557) = 0;
    v25 = *(v12 + 97);
    v26 = v23;
    v27 = v18 + 104 * v23;
    v538 = v23;
    v533 = v23;
    while (1)
    {
      v28 = v21 + v25;
      if (v28 >= v17)
      {
LABEL_29:
        v29 = 0;
LABEL_30:
        v44 = -1;
        goto LABEL_31;
      }

      if (v28 >= v26)
      {
        v30 = 0;
        v31 = 0uLL;
        v32 = v23;
        do
        {
          v33 = (v18 + 104 * v32);
          if (v33[4].i16[5])
          {
            v30 = 1;
          }

          v34 = vceqq_s32(v33[5], v24);
          v31 = vsubq_s32(vbicq_s8(v31, v34), v34);
          ++v32;
        }

        while (v28 >= v32);
        v35 = vmovn_s32(vtstq_s32(v31, v31));
        v35.i16[0] = vmaxv_u16(v35);
        v29 = (v30 == 0) & (v35.i32[0] ^ 1);
      }

      else
      {
        v29 = 1;
      }

      if (!*(v12 + 62))
      {
        if (v12[104])
        {
          v22 = 0;
          v47 = 0;
          do
          {
            if (v22)
            {
              break;
            }

            v48 = *(*(v12 + 25) + 6 * v47);
            if (v48 > *(v18 + 104 * v28 + 10))
            {
              break;
            }

            v49 = *(v27 + 8);
            v22 = v48 >= v49;
            if (v48 < v49)
            {
              ++v47;
            }
          }

          while (v12[104] > v47);
        }

        else
        {
          v22 = 0;
        }
      }

      if (!v29)
      {
        goto LABEL_30;
      }

      v36 = v18 + 104 * v28;
      v38 = *(v36 + 10);
      v37 = (v36 + 10);
      v39 = *(v27 + 8);
      v40 = v38 - v39;
      if (v40 >= v12[49])
      {
        goto LABEL_29;
      }

      strncpy(v20, &v16[v39], v40);
      v20[*v37 - *(v27 + 8)] = 0;
      if (v12[92])
      {
        posparser_undoEmbeddedRules(v12, v20);
      }

      if (*(v12 + 58) == 1)
      {
        v41 = v12[35];
        if (v41 == 1)
        {
          LOWORD(v553) = -1;
          if (*(v12 + 62) == 1 && (v42 = *(v27 + 96)) != 0)
          {
            v43 = (*(*(v12 + 3) + 96))(*(v12 + 1), *(v12 + 2), v12 + 120, v42, __s, &v553, __c);
          }

          else
          {
            v43 = (*(*(v12 + 3) + 96))(*(v12 + 1), *(v12 + 2), v12 + 120, v20, __s, &v553, __c);
          }
        }

        else
        {
          LOWORD(v553) = 0;
          if (*(v12 + 62) == 1 && (v54 = *(v27 + 96)) != 0)
          {
            v43 = (*(*(v12 + 3) + 152))(*(v12 + 1), *(v12 + 2), v12 + 120, v54, __s, &v553, __c, v41);
          }

          else
          {
            v43 = (*(*(v12 + 3) + 152))(*(v12 + 1), *(v12 + 2), v12 + 120, v20, __s, &v553, __c, v41);
          }
        }

        v24.i64[0] = 0x100000001;
        v24.i64[1] = 0x100000001;
        if ((v43 & 0x80000000) != 0)
        {
          POSAndDiacritics = v43;
LABEL_84:
          *a10 = v15;
          *v509 = v16;
          *a9 = v526;
          goto LABEL_850;
        }

        v29 = v553;
        if (!v553)
        {
          POSAndDiacritics = v43;
          v44 = -1;
          v17 = a5;
          v18 = a4;
          v23 = v538;
          goto LABEL_65;
        }

        POSAndDiacritics = posparser_GetPOSAndDiacritics(v12, v22, v16, a4, v20, v538, v25, *__s, v553, __c[0], &v557);
        if ((POSAndDiacritics & 0x80000000) != 0)
        {
          goto LABEL_84;
        }

        v29 = v557;
        if (v557)
        {
          v44 = 0;
        }

        else
        {
          v44 = -1;
        }

        goto LABEL_63;
      }

      LOWORD(v553) = 0;
      POSAndDiacritics = (*(*(v12 + 3) + 152))(*(v12 + 1), *(v12 + 2), __s1, v20, __s, &v553, __c, v522);
      if ((POSAndDiacritics & 0x80000000) != 0)
      {
        goto LABEL_84;
      }

      v29 = v553;
      if (!v553)
      {
        v44 = -1;
LABEL_63:
        v17 = a5;
        v18 = a4;
        goto LABEL_64;
      }

      posparser_GetHighestPriority(*__s, &v553, LOBYTE(__c[0]));
      v50 = *__s;
      v51 = v553;
      v52 = strchr(*(*__s + 8 * v553), LOBYTE(__c[0]));
      if (v52)
      {
        *v52 = 0;
        v50 = *__s;
        v51 = v553;
      }

      *__s2 = 0;
      *__src = 0;
      if (!v22)
      {
        goto LABEL_78;
      }

      v53 = *(v50 + 8 * v51);
      v12 = v542;
      log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "FOUND %s in dict as %s - try reconcile", __dst, v53);
      v16 = v537;
      POSAndDiacritics = posparser_isReconcilable(v542, v537, *(*__s + 8 * v553), *(v27 + 8), *v37, __s2, __src);
      if ((POSAndDiacritics & 0x80000000) != 0)
      {
        v20 = __dst;
        goto LABEL_84;
      }

      if (*__s2)
      {
        break;
      }

      log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "FOUND in %s in dict, but couldnt reconcile with partial diacritics - FAIL", *(*__s + 8 * v553));
      v29 = 0;
      v22 = 1;
      v44 = -1;
      v17 = a5;
      v18 = a4;
      v20 = __dst;
LABEL_64:
      v23 = v538;
      v24.i64[0] = 0x100000001;
      v24.i64[1] = 0x100000001;
LABEL_65:
      v26 = v533;
LABEL_31:
      v45 = v44 + v25;
      v25 = (v44 + v25);
      v46 = v25 >= 0;
      if (v45 < 0 || v29)
      {
        v55 = v29 == 1;
        goto LABEL_68;
      }
    }

    if (*__s2 == 1 && *__src)
    {
      posparser_PostProcess(v542, __src);
      v58 = *__src;
      v59 = strlen(*__src);
      v60 = heap_Calloc(*(*v542 + 8), 1, (v59 + 1));
      *(v27 + 16) = v60;
      v20 = __dst;
      if (v60)
      {
        strcpy(v60, v58);
        heap_Free(*(*v542 + 8), v58);
        *__src = 0;
        v22 = 1;
        goto LABEL_80;
      }

LABEL_181:
      POSAndDiacritics = -1607458806;
      log_OutPublic(*(*v12 + 32), "POSPARSER", 68000, 0);
      goto LABEL_84;
    }

    v50 = *__s;
    v51 = v553;
LABEL_78:
    v61 = *(v50 + 8 * v51);
    v12 = v542;
    v62 = strlen(v61);
    v63 = heap_Calloc(*(*v542 + 8), 1, (v62 + 1));
    *(v27 + 16) = v63;
    v16 = v537;
    v20 = __dst;
    if (!v63)
    {
      goto LABEL_181;
    }

    strcpy(v63, *(*__s + 8 * v553));
LABEL_80:
    *(v27 + 72) = v28;
    log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "FOUND in dict pWordDefs[%d]=%s", v21, *(v27 + 16));
    v55 = 1;
    LODWORD(v557) = 1;
    v46 = (v25 & 0x8000u) == 0;
    v17 = a5;
    v18 = a4;
    v23 = v538;
    v24.i64[0] = 0x100000001;
    v24.i64[1] = 0x100000001;
LABEL_68:
    if (v46 && v55)
    {
      v56 = v25;
    }

    else
    {
      v56 = 0;
    }

    v57 = v23 + v56;
    v23 = v57 + 1;
    v21 = (v57 + 1);
  }

  while (v21 < v17);
  v10 = v509;
  v13 = a10;
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    v83 = a9;
    v14 = v526;
    goto LABEL_849;
  }

LABEL_86:
  v14 = v526;
  if (*(v12 + 58) != 1)
  {
    goto LABEL_270;
  }

  v64 = v17;
  v20 = __dst;
  v65 = posparser_doPatternMatching(v16, __dst, v12, v18, v17);
  if ((v65 & 0x80000000) != 0)
  {
    POSAndDiacritics = v65;
    goto LABEL_848;
  }

  __s1[0] = 0;
  *__s = 0;
  *__src = 0;
  log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "posparser_doPOSDisambiguation()", 0);
  v66 = a4;
  if (v64)
  {
    v67 = 0;
    v68 = 0;
    LOWORD(v69) = 0;
    do
    {
      v70 = v66 + 104 * v67;
      v71 = *(v70 + 32);
      if (v71 <= v69)
      {
        v69 = v69;
      }

      else
      {
        v69 = *(v70 + 32);
      }

      if (*(v70 + 32))
      {
        v72 = *(v70 + 24);
        do
        {
          v73 = *v72;
          v72 += 2;
          v74 = strlen(v73);
          if (v74 > v68)
          {
            v68 = v74;
          }

          --v71;
        }

        while (v71);
      }

      ++v67;
      v66 = a4;
    }

    while (v67 != v64);
    v75 = (v68 + 1);
    if (v69)
    {
      v76 = heap_Calloc(*(*v12 + 8), 1, (v68 + 1) * v69);
      v66 = a4;
      v77 = v76;
      if (!v76)
      {
        v78 = 0;
        v79 = 0;
        v80 = 17;
        v81 = 17;
        v13 = a10;
        v14 = v526;
        goto LABEL_102;
      }
    }

    else
    {
      v77 = 0;
    }

    v84 = 0;
    while (1)
    {
      v85 = v66 + 104 * v84;
      v86 = heap_Calloc(*(*v12 + 8), 1, *(v85 + 10) - *(v85 + 8) + 1);
      *(v85 + 56) = v86;
      if (!v86)
      {
        break;
      }

      strncpy(v86, (v537 + *(v85 + 8)), *(v85 + 10) - *(v85 + 8));
      *(*(v85 + 56) - *(v85 + 8) + *(v85 + 10)) = 0;
      v87 = *(v85 + 32);
      if (*(v85 + 32))
      {
        v88 = 0;
        v89 = *(v85 + 24);
        v90 = *(v85 + 32);
        do
        {
          v91 = *v89;
          v89 += 2;
          v88 += strlen(v91) + 2;
          --v90;
        }

        while (v90);
        *(v85 + 48) = 0;
        if (v88)
        {
          v12 = v542;
          v92 = heap_Calloc(*(*v542 + 8), 1, (v87 + v88 + 1));
          *(v85 + 48) = v92;
          v15 = v528;
          if (!v92)
          {
            break;
          }

          if (v77)
          {
            if (*(v85 + 32))
            {
              v93 = 0;
              v94 = 0;
              v95 = v77;
              do
              {
                v96 = strcpy(v95, *(*(v85 + 24) + v93));
                ++v94;
                v97 = *(v85 + 32);
                v93 += 16;
                v95 = &v96[v75];
              }

              while (v94 < v97);
            }

            else
            {
              v97 = 0;
            }

            ssft_qsort(v77, v97, v75, string_cmp_1);
            strcpy(*(v85 + 48), v77);
            if (*(v85 + 32) >= 2u)
            {
              v98 = &v77[v75];
              v99 = 1;
              do
              {
                *(*(v85 + 48) + strlen(*(v85 + 48))) = 47;
                strcat(*(v85 + 48), v98);
                ++v99;
                v98 += v75;
              }

              while (v99 < *(v85 + 32));
            }
          }
        }
      }

      else
      {
        *(v85 + 48) = 0;
      }

      ++v84;
      v12 = v542;
      v15 = v528;
      v66 = a4;
      if (v84 == v64)
      {
        POSAndDiacritics = 0;
        v100 = 1;
        goto LABEL_126;
      }
    }

    POSAndDiacritics = -1607458806;
    log_OutPublic(*(*v12 + 32), "POSPARSER", 68000, 0);
    v100 = 0;
LABEL_126:
    v13 = a10;
    v14 = v526;
    if (v77)
    {
      heap_Free(*(*v12 + 8), v77);
    }

    if (!v100)
    {
      v539 = 0;
      v79 = 0;
      v523 = 17;
      v81 = 17;
      goto LABEL_230;
    }
  }

  if (*(v12 + 59))
  {
    v80 = 17;
    v81 = 17;
  }

  else
  {
    v80 = *(*(v12 + 28) + 1296) - 1;
    v81 = *(*(v12 + 27) + 1296) - 1;
  }

  log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "FEATUREVECTOR:NEWSENT");
  v79 = heap_Calloc(*(*v12 + 8), 1, 8 * v80);
  v82 = *v12;
  v523 = v80;
  if (!v79)
  {
    v78 = 0;
    goto LABEL_178;
  }

  inited = posparser_initFeatureVector(v82, v79, v80);
  if ((inited & 0x80000000) != 0)
  {
    POSAndDiacritics = inited;
    v539 = 0;
    goto LABEL_230;
  }

  v78 = heap_Calloc(*(*v12 + 8), 1, 8 * v81);
  v82 = *v12;
  if (!v78)
  {
LABEL_178:
    v539 = v78;
    POSAndDiacritics = -1607458806;
    log_OutPublic(*(v82 + 32), "POSPARSER", 68000, 0);
    goto LABEL_230;
  }

  POSAndDiacritics = posparser_initFeatureVector(v82, v78, v81);
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    v539 = v78;
    goto LABEL_230;
  }

  *__src = 128;
  v102 = heap_Calloc(*(*v12 + 8), 1, 129);
  *__s = v102;
  if (!v102)
  {
LABEL_102:
    v523 = v80;
    v82 = *v12;
    goto LABEL_178;
  }

  v103 = v102;
  *v102 = 0;
  v534 = v81;
  v539 = v78;
  if (!a5)
  {
    v140 = v79;
    goto LABEL_231;
  }

  v104 = 0;
  v105 = a4;
  do
  {
    v106 = *(a4 + 104 * v104 + 72);
    if (v106 != 9999 && v106 != v104)
    {
      if (v106 > v104)
      {
        v107 = v104 + 1;
        do
        {
          *(a4 + 104 * v107++ + 40) = "MULTIWORD";
        }

        while (v106 >= v107);
      }

      v104 = v106;
    }

    ++v104;
  }

  while (a5 > v104);
  v520 = v79;
  v510 = v10;
  v108 = 0;
  while (2)
  {
    v109 = v105 + 104 * v108;
    v110 = *(v109 + 8);
    v111 = *(v109 + 10) - v110;
    if (v111 > v12[49])
    {
      LOWORD(v111) = v12[49];
    }

    strncpy(__dst, (v537 + v110), v111)[v111] = 0;
    if (!*(v109 + 32))
    {
      if (*(v109 + 80) == 1)
      {
        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "DIGITCLASS  :             : word[%2d] %10s", v108, __dst);
        v112 = &szPOSDIGITCLASS;
      }

      else if (*(v109 + 84) == 1)
      {
        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "PUNCTCLASS  :             : word[%2d] %10s", v108, __dst);
        v112 = "PUNCT";
      }

      else if (*(v109 + 12) == 1)
      {
        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "DIACRITIZED :             : word[%2d] %10s", v108, __dst);
        v112 = "DIACRITIZED";
      }

      else if (*(v109 + 88) == 1)
      {
        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "LATIN       :             : word[%2d] %10s", v108, __dst);
        v112 = "LATIN";
      }

      else if (*(v109 + 92) == 1)
      {
        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "SPELLMODE   :             : word[%2d] %10s", v108, __dst);
        v112 = "SPELLMODE";
      }

      else if (*(v109 + 74))
      {
        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "PHONETIC    :             : word[%2d] %10s", v108, __dst);
        v112 = "PHONETIC";
      }

      else
      {
        v116 = *(v109 + 40);
        if (v116 && !strcmp(v116, "MULTIWORD"))
        {
          log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "MULTIWORD   :             : word[%2d] %10s");
          goto LABEL_173;
        }

        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "OOV         :             : word[%2d] %10s", v108, __dst);
        v112 = "OOV";
      }

      *(v109 + 40) = v112;
LABEL_173:
      v113 = v12;
      goto LABEL_174;
    }

    if (*(v109 + 32) == 1)
    {
      log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "KNOWN       : UNAMBIGUOUS : word[%2d] %10s : POS=%s DIA=%s", v108);
      goto LABEL_173;
    }

    log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "KNOWN       : AMBIGUOUS   : word[%2d] %10s : ", v108, __dst);
    v113 = v12;
    if (*(v109 + 32))
    {
      v114 = 0;
      v115 = 0;
      do
      {
        log_OutText(*(*v113 + 32), "POSPARSER", 5, 0, "                                                  POS=%s DIA=%s", *(*(v109 + 24) + v114), *(*(v109 + 24) + v114 + 8));
        ++v115;
        v114 += 16;
      }

      while (v115 < *(v109 + 32));
    }

LABEL_174:
    ++v108;
    v12 = v113;
    v105 = a4;
    if (v108 != a5)
    {
      continue;
    }

    break;
  }

  v117 = 0;
  v118 = 0;
  v15 = v528;
  while (2)
  {
    v119 = v105 + 104 * v118;
    if (*(v119 + 72) == 9999)
    {
      v120 = v118;
    }

    else
    {
      v120 = *(v119 + 72);
    }

    v121 = *(v119 + 8);
    v122 = *(v105 + 104 * v120 + 10) - v121;
    if (v122 > v12[49])
    {
      LOWORD(v122) = v12[49];
    }

    v123 = v122;
    v124 = strncpy(__dst, (v537 + v121), v122);
    v124[v123] = 0;
    log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "Doing word[%2d] %10s", v117, v124);
    if (*(v119 + 32))
    {
      if (*(v119 + 32) == 1)
      {
        if (*(v12 + 59) == 1)
        {
          log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "%d FEATUREVECTOR:UNAMBIGUOUS:0:%s %s", v117, __dst, **(v119 + 24));
        }

        v125 = 0;
        goto LABEL_212;
      }

      v126 = setPosparserFeatureVector(v12, __dst, *(v12 + 28), v118, v520, a4, a5, v80);
      if ((v126 & 0x80000000) != 0)
      {
        goto LABEL_227;
      }

      v127 = *(v12 + 59);
      if (v127)
      {
        v128 = "DUMMY";
        __s1[0] = "DUMMY";
      }

      else
      {
        v126 = igtree_Process(*(v12 + 28), v520, __s1);
        if ((v126 & 0x80000000) != 0)
        {
LABEL_227:
          POSAndDiacritics = v126;
LABEL_228:
          v10 = v510;
          v13 = a10;
          goto LABEL_229;
        }

        v128 = __s1[0];
        v127 = *(v12 + 59);
      }

      POSAndDiacritics = posparser_DumpFeatureVectorAndResult(*v12, "KNOWN", v520, v128, __s, __src, v80, v127, v118, __dst);
      if ((POSAndDiacritics & 0x80000000) != 0)
      {
        goto LABEL_228;
      }

      v125 = *(v119 + 32);
      if (*(v119 + 32))
      {
        v129 = 0;
        v130 = 0;
        v131 = __s1[0];
        v132 = *(v119 + 24);
        do
        {
          v133 = *v132;
          v132 += 2;
          if (!strcmp(v131, v133))
          {
            v130 = v129;
          }

          ++v129;
        }

        while (v125 != v129);
        v125 = v130;
        v10 = v510;
        v12 = v542;
        v15 = v528;
      }

      else
      {
LABEL_212:
        v10 = v510;
      }

      v134 = strlen(*(*(v119 + 24) + 16 * v125 + 8));
      v135 = heap_Calloc(*(*v12 + 8), 1, (v134 + 1));
      *(v119 + 16) = v135;
      if (!v135)
      {
        goto LABEL_226;
      }

      strcpy(v135, *(*(v119 + 24) + 16 * v125 + 8));
      *(v119 + 40) = *(*(v119 + 24) + 16 * v125);
LABEL_215:
      v105 = a4;
      v118 = v120 + 1;
      v117 = (v120 + 1);
      if (v117 >= a5)
      {
        goto LABEL_228;
      }

      continue;
    }

    break;
  }

  if (*(v119 + 80) || *(v119 + 84) || *(v119 + 12) || *(v119 + 88) || *(v119 + 92) || *(v119 + 74))
  {
    if (*(v12 + 59) == 1)
    {
      log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "%d FEATUREVECTOR:DUMMY:0:%s %s", v117, __dst, *(v119 + 40));
    }

    goto LABEL_215;
  }

  POSAndDiacritics = setPosparserFeatureVector(v12, __dst, *(v12 + 27), v118, v78, a4, a5, v534);
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    goto LABEL_864;
  }

  v136 = *(v542 + 236);
  if (v136)
  {
    v137 = "DUMMY";
    __s1[0] = "DUMMY";
  }

  else
  {
    POSAndDiacritics = igtree_Process(*(v542 + 216), v78, __s1);
    if ((POSAndDiacritics & 0x80000000) != 0)
    {
      goto LABEL_864;
    }

    v137 = __s1[0];
    v136 = *(v542 + 236);
  }

  POSAndDiacritics = posparser_DumpFeatureVectorAndResult(*v542, "OOV", v78, v137, __s, __src, v534, v136, v118, __dst);
  if ((POSAndDiacritics & 0x80000000) == 0)
  {
    v12 = v542;
    v138 = strlen(__s1[0]);
    v139 = heap_Calloc(*(*v542 + 8), 1, (v138 + 1));
    *(v119 + 40) = v139;
    v10 = v510;
    v15 = v528;
    v80 = v523;
    if (!v139)
    {
LABEL_226:
      POSAndDiacritics = -1607458806;
      log_OutPublic(*(*v12 + 32), "POSPARSER", 68000, 0);
      v83 = a9;
      v13 = a10;
      v16 = v537;
      v14 = v526;
      goto LABEL_773;
    }

    strcpy(v139, __s1[0]);
    goto LABEL_215;
  }

LABEL_864:
  v10 = v510;
  v12 = v542;
  v13 = a10;
  v15 = v528;
LABEL_229:
  v14 = v526;
  v79 = v520;
  v81 = v534;
LABEL_230:
  v534 = v81;
  v140 = v79;
  v103 = *__s;
  if (*__s)
  {
LABEL_231:
    heap_Free(*(*v12 + 8), v103);
    *__s = 0;
    *__src = 0;
  }

  log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "POS Disambiguation results:", 0);
  if (a5)
  {
    v141 = 0;
    v142 = a5;
    v143 = a4 + 56;
    do
    {
      if (*(v143 - 24))
      {
        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : %s", v141, *v143, *(v143 - 16), *(v143 - 40));
      }

      else
      {
        if (*(v143 - 16) && !strcmp(*(v143 - 16), "MULTIWORD"))
        {
          log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : ");
        }

        else if (*(v143 + 24) || *(v143 + 28) || *(v143 - 44) || *(v143 + 32) || *(v143 + 36) || *(v143 + 18))
        {
          log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : NON DICT WORD");
        }

        else
        {
          log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "Word[%2d] : %15s : %25s : OOV NON DICT WORD");
        }

        v14 = v526;
      }

      ++v141;
      v143 += 104;
    }

    while (a5 != v141);
    v144 = a4 + 48;
    v15 = v528;
    do
    {
      if (!*(v144 + 32) && !*(v144 + 36) && !*(v144 - 36) && !*(v144 + 40) && !*(v144 + 44) && !*(v144 + 26) && !*(v144 - 16))
      {
        v145 = *(v144 - 8);
        if (!v145 || strcmp(*(v144 - 8), "MULTIWORD"))
        {
          heap_Free(*(*v12 + 8), v145);
          *(v144 - 8) = 0;
        }
      }

      v146 = *(v144 + 8);
      if (v146)
      {
        heap_Free(*(*v12 + 8), v146);
        *(v144 + 8) = 0;
      }

      if (*v144)
      {
        heap_Free(*(*v12 + 8), *v144);
        *v144 = 0;
      }

      v144 += 104;
      --v142;
    }

    while (v142);
  }

  if (v539)
  {
    statcomp_freeFeatureVector(*v12, v539, v534);
    heap_Free(*(*v12 + 8), v539);
  }

  v16 = v537;
  if (v140)
  {
    statcomp_freeFeatureVector(*v12, v140, v523);
    heap_Free(*(*v12 + 8), v140);
  }

  LODWORD(v17) = a5;
  v18 = a4;
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    goto LABEL_772;
  }

LABEL_270:
  if ((*(v12 + 16) | 2) != 2)
  {
LABEL_670:
    v20 = __dst;
    goto LABEL_671;
  }

  v552 = 0;
  v554 = -65536;
  *__c = __dst;
  v147 = strlen(v16);
  v148 = *(v12 + 10);
  if (!v148 || (v553 = 0, !*v148))
  {
    LODWORD(v17) = a5;
    v18 = a4;
    goto LABEL_670;
  }

  v149 = v147;
  bzero(__s1, 0x5A0uLL);
  v563 = 0u;
  memset(v564, 0, sizeof(v564));
  *__s = 0u;
  v507 = heap_Calloc(*(*v12 + 8), 1, 252);
  if (!v507)
  {
    POSAndDiacritics = -1607458806;
    log_OutPublic(*(*v12 + 32), "POSPARSER", 68000, 0);
    v507 = 0;
    v497 = 0;
    goto LABEL_834;
  }

  LOWORD(v554) = 0;
  *__dst = 0;
  if (!v149)
  {
    v497 = 0;
    POSAndDiacritics = 0;
    goto LABEL_834;
  }

  v150 = 0;
  POSAndDiacritics = 0;
  v151 = 0;
  v152 = 0;
  v497 = 0;
  v498 = 0;
  v153 = 0;
  v499 = 20;
  v524 = v149;
  while (2)
  {
    v558 = 0;
    v557 = 0;
    __dsta = v153;
    v535 = v151;
    v515 = v150;
    if (*(v12 + 48) != 1)
    {
      v540 = v152;
LABEL_309:
      LOWORD(v155) = 0;
      v156 = 0;
LABEL_310:
      log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c", v150, v16[v151]);
      v171 = 0;
      v517 = 0;
      v172 = v156 == 1;
      goto LABEL_311;
    }

    if (!v12[104])
    {
      v540 = 0;
      goto LABEL_309;
    }

    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = v150 + 1;
    while (!v157)
    {
      v159 = (*(v12 + 25) + 6 * v154);
      v160 = *v159;
      if (v160 > v151)
      {
        break;
      }

      if (v160 == v151 && *(v12 + 38) == 1 && (v161 = v154, v162 = isCharInStr(v159 + 2, "XBI"), LOWORD(v151) = v535, v154 = v161, v162))
      {
        v163 = v161 + 1;
        v157 = 1;
        if (v161 + 1 < v12[104] && v158 < v524 && (v164 = (*(v12 + 25) + 6 * v163), v158 == *v164))
        {
          if (*(v12 + 15))
          {
            v165 = *(v12 + 15);
          }

          else
          {
            v165 = "^FNKauioR";
          }

          if (isCharInStr(v164 + 2, v165))
          {
            v166 = 6 * v163 + 6;
            while (1)
            {
              __strcat_chk();
              v167 = *(v12 + 25);
              v155 += strlen((v167 + v166 - 4));
              if (++v163 >= v12[104] || v158 != *(v167 + v166))
              {
                break;
              }

              v168 = v167 + v166;
              if (*(v12 + 15))
              {
                v169 = *(v12 + 15);
              }

              else
              {
                v169 = "^FNKauioR";
              }

              v157 = 1;
              v166 += 6;
              v14 = v526;
              if (!isCharInStr((v168 + 2), v169))
              {
                goto LABEL_304;
              }
            }

            v157 = 1;
LABEL_304:
            v156 = 1;
          }

          else
          {
            v157 = 1;
          }

          LOWORD(v151) = v535;
          v16 = v537;
          v154 = v161;
        }

        else
        {
          v16 = v537;
        }
      }

      else
      {
        v157 = 0;
        ++v154;
      }

      v170 = v12[104];
      if (v154 >= v170)
      {
        goto LABEL_336;
      }
    }

    v170 = 1;
LABEL_336:
    v517 = v157 != 0;
    if (v157)
    {
      v185 = *(v12 + 25);
      if (v156 == 1)
      {
        goto LABEL_338;
      }

      v540 = v154;
      log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c rewrite diacritic=%s", v515, v16[v151], (v185 + 6 * v154 + 2));
      v171 = 0;
      v172 = 0;
      v517 = 1;
LABEL_311:
      v153 = __dsta;
      goto LABEL_312;
    }

    if (!v170 || v158 >= v524)
    {
      v540 = 0;
      LODWORD(v150) = v515;
      goto LABEL_310;
    }

    v154 = 0;
    v186 = 0;
    do
    {
      if (v186)
      {
        break;
      }

      v187 = (*(v12 + 25) + 6 * v154);
      v188 = *v187;
      if (v158 < v188)
      {
        break;
      }

      if (v158 == v188 && (*(v12 + 15) ? (v189 = *(v12 + 15)) : (v189 = "^FNKauioR"), v190 = v154, v191 = isCharInStr(v187 + 2, v189), LOWORD(v151) = v535, v154 = v190, v191))
      {
        if (v190 < v12[104] && (v192 = (*(v12 + 25) + 6 * v190), v158 == *v192))
        {
          v193 = *(v12 + 15) ? *(v12 + 15) : "^FNKauioR";
          if (isCharInStr(v192 + 2, v193))
          {
            v194 = v190;
            v195 = 6 * v190 + 6;
            while (1)
            {
              __strcat_chk();
              v196 = *(v12 + 25);
              v155 += strlen((v196 + v195 - 4));
              if (++v194 >= v12[104] || v158 != *(v196 + v195))
              {
                break;
              }

              if (*(v542 + 120))
              {
                v197 = *(v542 + 120);
              }

              else
              {
                v197 = "^FNKauioR";
              }

              v198 = isCharInStr((v196 + v195 + 2), v197);
              v186 = 1;
              v195 += 6;
              v12 = v542;
              if (!v198)
              {
                goto LABEL_367;
              }
            }

            v186 = 1;
LABEL_367:
            v16 = v537;
            v14 = v526;
          }

          else
          {
            v186 = 0;
          }

          v154 = v190;
          LOWORD(v151) = v535;
        }

        else
        {
          v186 = 0;
        }
      }

      else
      {
        v186 = 0;
        ++v154;
      }
    }

    while (v154 < v12[104]);
    LODWORD(v150) = v515;
    if (!v186)
    {
      v540 = v154;
      goto LABEL_310;
    }

    if (v156 != 1)
    {
      v540 = v154;
      log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c vowel diacritic=%s", v515, v16[v151], &v557);
      v172 = 0;
      v517 = 0;
      v171 = 1;
      goto LABEL_311;
    }

    v185 = *(v12 + 25);
LABEL_338:
    v153 = __dsta;
    v171 = v157 == 0;
    v540 = v154;
    log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "NGRAM DOING [%d] %c rewrite+vowel diacritic=%s%s", v515, v16[v151], (v185 + 6 * v154 + 2), &v557);
    v172 = 1;
LABEL_312:
    if (a5 <= v153)
    {
LABEL_317:
      v175 = 0;
    }

    else
    {
      v173 = v153;
      while (1)
      {
        v174 = a4 + 104 * v173;
        if (*(v174 + 8) <= v535 && *(v174 + 10) > v535)
        {
          break;
        }

        v173 = (v173 + 1);
        if (a5 <= v173)
        {
          goto LABEL_317;
        }
      }

      v176 = v173;
      v180 = a4 + 104 * v173;
      if (*(v180 + 72) != 9999 && *(v180 + 8) == v535)
      {
        LODWORD(v153) = v173;
        goto LABEL_329;
      }

      v175 = 1;
      v153 = v173;
    }

    v176 = v153;
    v177 = a4 + 104 * v153;
    if (*(v177 + 12) == 1 || *(v177 + 74) || *(v177 + 16))
    {
LABEL_329:
      v181 = (a4 + 104 * v176);
      v182 = v181 + 5;
      if (v181[36] != 9999)
      {
        v182 = (a4 + 104 * v181[36] + 10);
      }

      v183 = *v182;
      log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "NGRAM SKIPPING %d-%d as dict word exists, is vowelled, is phonetic or pre-diacritized", v181[4], v183);
      v153 = (v153 + 1);
      **__c = 0;
      goto LABEL_332;
    }

    __dstb = v153;
    if ((v175 & 1) == 0)
    {
      v199 = v535;
      v200 = v16[v535];
LABEL_377:
      v500 = &v16[v199];
      if (v200 != 32)
      {
        v494 = a4 + 104 * v153;
        goto LABEL_384;
      }

      log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "NGRAM SKIPPING space");
      v15 = v528;
      v184 = v524;
LABEL_664:
      v151 = v535 + Utf8_LengthInBytes(v500, 1);
      goto LABEL_333;
    }

    if ((*(v177 + 80) == 1 || *(v177 + 84) == 1) && *(v177 + 8) == v535)
    {
      v178 = *(*v12 + 32);
      *v492 = v515;
      v493 = *(v177 + 10);
      v179 = "NGRAM SKIPPING %d-%d as digit/punctuation class";
      goto LABEL_407;
    }

    if (*(v177 + 88) == 1 && *(v177 + 8) == v535)
    {
      v178 = *(*v12 + 32);
      *v492 = v515;
      v493 = *(v177 + 10);
      v179 = "NGRAM SKIPPING %d-%d as latin";
      goto LABEL_407;
    }

    if (*(v177 + 92) == 1 && *(v177 + 8) == v535)
    {
      v178 = *(*v12 + 32);
      *v492 = v515;
      v493 = *(v177 + 10);
      v179 = "NGRAM SKIPPING %d-%d as in spell mode";
      goto LABEL_407;
    }

    v215 = &v16[v535];
    v200 = *v215;
    if (v200 != 194)
    {
      v199 = v535;
      goto LABEL_377;
    }

    v500 = &v16[v535];
    if (*(v215 + 1) == 167 && *(v177 + 8) == v535)
    {
      v178 = *(*v12 + 32);
      *v492 = v515;
      v493 = *(v177 + 10);
      v179 = "NGRAM SKIPPING %d-%d as phonetic";
LABEL_407:
      log_OutText(v178, "POSPARSER", 5, 0, v179, *v492, v493);
      v183 = *(a4 + 104 * v153 + 10);
LABEL_332:
      v15 = v528;
      v184 = v524;
      v151 = v183 + 1;
LABEL_333:
      v152 = v540;
      v150 = v151;
      if (v184 <= v151)
      {
        goto LABEL_834;
      }

      continue;
    }

    break;
  }

  v494 = a4 + 104 * v153;
  LOBYTE(v200) = -62;
LABEL_384:
  log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "NGRAM PROCESSING [%d] %c", v515, v200);
  bzero(v507, 12 * v499 + 12);
  LOWORD(v554) = 0;
  v511 = v10;
  if (!v517 || !v172)
  {
    v206 = Utf8_LengthInBytes(v500, 1);
    v207 = v206;
    if (v171)
    {
      if ((v206 & 0xFFFE) != 0)
      {
        v208 = v206;
      }

      else
      {
        v208 = 1;
      }

      __strncpy_chk();
      if (v155)
      {
        v209 = v155;
        v210 = v207;
        if ((v207 & 0xFFFE) == 0)
        {
          v210 = 1;
        }

        v211 = &v507[v210];
        v212 = &v557;
        do
        {
          v213 = *v212++;
          v211[12 * v554] = v213;
          ++v211;
          --v209;
        }

        while (v209);
      }

      v507[12 * v554 + v208 + v155] = 0;
      *&v507[12 * v554 + 10] = 20000;
      v214 = *(*v542 + 32);
    }

    else
    {
      if (v206)
      {
        LOWORD(v208) = v206;
      }

      else
      {
        LOWORD(v208) = 1;
      }

      __strncpy_chk();
      v507[12 * v554 + v208] = 0;
      v216 = &v507[12 * v554];
      if (!v517)
      {
        *(v216 + 5) = 0;
        log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "(dia) ADD SOLUTION %s(%u)");
        goto LABEL_419;
      }

      *(v216 + 5) = 20000;
      v214 = *(*v542 + 32);
    }

    log_OutText(v214, "POSPARSER", 5, 0, "(partial dia) ADD SOLUTION %s(%u)");
LABEL_419:
    v15 = v528;
    v218 = __dstb;
    v219 = 0;
    LOWORD(v496) = v208 - 1;
    LOWORD(v554) = v554 + 1;
LABEL_420:
    if (v219 >= *(v542 + 96))
    {
      goto LABEL_571;
    }

    v220 = v542;
    while (1)
    {
      v221 = *(*v220 + 32);
      if (v219)
      {
        log_OutText(v221, "POSPARSER", 5, 0, "!!BACKING OFF TO DICT %d=%s");
      }

      else
      {
        log_OutText(v221, "POSPARSER", 5, 0, "!!USING DICT %d=%s");
      }

      v220 = v542;
      v222 = *(*(v542 + 80) + v219);
      if (*(*(v542 + 80) + v219))
      {
        break;
      }

      if (++v219 >= *(v542 + 96))
      {
LABEL_571:
        v496 = v496;
        v217 = v554;
        v10 = v511;
        v12 = v542;
        goto LABEL_572;
      }
    }

    v495 = 0;
LABEL_429:
    v544 = v222;
    v563 = 0u;
    memset(v564, 0, sizeof(v564));
    *__s = 0u;
    __memset_chk();
    if ((v535 & 0x8000) != 0)
    {
      v238 = 0;
      LOWORD(v223) = 0;
    }

    else
    {
      v223 = 0;
      v224 = 0;
      v225 = v544;
      v226 = v218;
      LOWORD(v218) = v535;
      v227 = a4;
      do
      {
        v228 = v225--;
        v229 = v228 - 1;
        while ((v226 & 0x8000) == 0)
        {
          v230 = v226;
          v231 = (a4 + 10 + 104 * v226);
          while (*(v231 - 1) > v218 || *v231 <= v218)
          {
            v231 -= 52;
            v246 = v230-- <= 0;
            if (v246)
            {
              goto LABEL_446;
            }
          }

          v226 = v230;
          v232 = v227 + 104 * v230;
          if (*(v232 + 80) == 1)
          {
            if (*(v232 + 8) == v218)
            {
              PunctClassChar = "α";
LABEL_454:
              __strcpy_chk();
              insertString(__src, __s, PunctClassChar, v225);
              ++v223;
              goto LABEL_450;
            }
          }

          else
          {
            if (*(v232 + 84) != 1)
            {
              break;
            }

            if (*(v232 + 8) == v218)
            {
              PunctClassChar = getPunctClassChar(v542, v16[v218]);
              goto LABEL_454;
            }
          }

          LOWORD(v218) = v218 - 1;
          if ((v218 & 0x8000) != 0)
          {
            goto LABEL_455;
          }
        }

LABEL_446:
        CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v16, v218);
        v234 = &v16[CurrentUtf8Offset];
        v235 = Utf8_LengthInBytes(v234, 1);
        if ((v235 & 0xFFFE) != 0)
        {
          v236 = v235;
          __strcpy_chk();
          insertStringPart(__src, __s, v234, v225, v236);
          v223 = v223 + v236 - 1;
        }

        else
        {
          __s[v229] = *v234;
        }

        LOWORD(v218) = CurrentUtf8Offset;
        v16 = v537;
LABEL_450:
        ++v224;
        if (!v225)
        {
          break;
        }

        LODWORD(v218) = (v218 - 1);
        v227 = a4;
      }

      while ((v218 & 0x80000000) == 0);
LABEL_455:
      v238 = v224;
      v14 = v526;
      v15 = v528;
      v218 = __dstb;
    }

    for (i = 0; i != 14; ++i)
    {
      if (__s[i] != 64)
      {
        break;
      }
    }

    v240 = i + v238;
    if (v240 != v544 || ((v241 = *(*(v542 + 80) + v219), v242 = i + 1, v240 != v241) ? (v243 = v242 >= v241) : (v243 = 1), v243))
    {
      log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "NGRAM IGNORING szUnVoweledNgramStr = %s", __s);
      goto LABEL_569;
    }

    v244 = Utf8_LengthInBytes(v500, 1);
    v245 = v535 + v244;
    v246 = v241 == v544 || v524 <= (v535 + v244);
    v247 = a5;
    v248 = a4;
    if (v246)
    {
      goto LABEL_470;
    }

    v254 = 0;
    v255 = 0;
    v501 = (v241 - v544);
    v256 = v218;
LABEL_483:
    if (v524 <= v245)
    {
      goto LABEL_470;
    }

    v257 = v245;
    v258 = v223 + v544 + v254;
    while (1)
    {
      if (v247 <= v256)
      {
        goto LABEL_499;
      }

      v259 = v256;
      while (1)
      {
        v260 = v248 + 104 * v259;
        if (*(v260 + 8) <= v245 && *(v260 + 10) > v245)
        {
          break;
        }

        v259 = (v259 + 1);
        if (v247 <= v259)
        {
          goto LABEL_499;
        }
      }

      v261 = v248 + 104 * v259;
      if (*(v261 + 80) == 1)
      {
        v262 = v524;
        if (v257 == *(v261 + 8))
        {
          __strcpy_chk();
          v263 = (v258 + v255);
          v264 = "α";
LABEL_507:
          insertString(__src, __s, v264, v263);
          v247 = a5;
          ++v255;
          v256 = v259;
          goto LABEL_503;
        }
      }

      else
      {
        v262 = v524;
        if (*(v261 + 84) != 1)
        {
          v256 = v259;
LABEL_499:
          v265 = (v537 + v245);
          v266 = Utf8_LengthInBytes(v265, 1);
          if ((v266 & 0xFFFE) != 0)
          {
            v267 = v266;
            __strcpy_chk();
            insertStringPart(__src, __s, v265, (v258 + v255), v267);
            v255 += v267 - 1;
            v245 += v267 - 1;
          }

          else
          {
            __s[v544 + v223 + v254 + v255] = *v265;
          }

          v247 = a5;
LABEL_503:
          v218 = __dstb;
          ++v254;
          v248 = a4;
          if (v254 >= v501 || (++v245, v524 <= v245))
          {
LABEL_470:
            v16 = v537;
            if (__s[0] == 32)
            {
              __strcpy_chk();
              insertString(__src, __s, "Φ", 0);
            }

            v14 = v526;
            v15 = v528;
            if (__s[strlen(__s) - 1] == 32)
            {
              __strcpy_chk();
              v249 = strlen(__s);
              insertString(__src, __s, "Φ", (v249 - 1));
            }

            log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "NGRAM useLetterNum = %d szUnVoweledNgramStr = %s", v544, __s);
            if (v498)
            {
              v250 = v498;
              while (1)
              {
                v251 = &__s1[9 * (v250 - 1)];
                if (!strcmp(v251, __s))
                {
                  break;
                }

                if (!--v250)
                {
                  goto LABEL_478;
                }
              }

              log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "NGRAM FOUND %s in cache, cachedDictStr = %s", __s, v251[8]);
              v269 = v251[8];
              if (!strcmp(v269, "FAIL_DICT_LOOKUP"))
              {
                HIWORD(v554) = 0;
                log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s FAILS (CACHED)", __s);
                v218 = __dstb;
              }

              else
              {
                if (v497)
                {
                  v270 = strlen(v269);
                  if (v270 > strlen(v497))
                  {
                    v271 = heap_Realloc(*(*v542 + 8), v497, (v270 + 1));
                    if (v271)
                    {
                      v269 = v251[8];
                      goto LABEL_518;
                    }

                    POSAndDiacritics = -1607458806;
                    v12 = v542;
                    log_OutPublic(*(*v542 + 32), "POSPARSER", 68000, 0);
LABEL_863:
                    v10 = v511;
LABEL_858:
                    v16 = v537;
                    goto LABEL_834;
                  }

                  v271 = v497;
LABEL_518:
                  v273 = v269;
                }

                else
                {
                  v272 = strlen(v269);
                  v271 = heap_Calloc(*(*v542 + 8), 1, (v272 + 1));
                  if (!v271)
                  {
                    POSAndDiacritics = -1607458806;
                    v12 = v542;
                    log_OutPublic(*(*v542 + 32), "POSPARSER", 68000, 0);
                    v497 = 0;
                    goto LABEL_863;
                  }

                  v273 = v251[8];
                }

                v497 = strcpy(v271, v273);
                v253 = v497;
                v218 = __dstb;
LABEL_520:
                v274 = v495;
                if (strcmp(v253, "FAIL_DICT_LOOKUP"))
                {
                  v274 = 1;
                }

                if (HIWORD(v554))
                {
                  v275 = v498;
                  v276 = v554;
                  if (v498 >= 0x14u && v554 <= 4u)
                  {
                    heap_Free(*(*v542 + 8), v560);
                    v560 = 0;
                    v218 = __dstb;
                    __memmove_chk();
                    v275 = (v498 - 1);
                  }

                  if (v275 <= 0x13u && v276 <= 4)
                  {
                    __strcpy_chk();
                    v277 = strlen(v253);
                    v278 = heap_Calloc(*(*v542 + 8), 1, (v277 + 1));
                    __s1[9 * v275 + 8] = v278;
                    if (!v278)
                    {
                      v299 = v507;
LABEL_857:
                      v507 = v299;
                      POSAndDiacritics = -1607458806;
                      v12 = v542;
                      log_OutPublic(*(*v542 + 32), "POSPARSER", 68000, 0);
                      v10 = v511;
                      v15 = v528;
                      goto LABEL_858;
                    }

                    strcpy(v278, v253);
                    v275 = (v275 + 1);
                    v218 = __dstb;
                  }
                }

                else
                {
                  v275 = v498;
                }

                v498 = v275;
                v495 = v274;
                if (v253 != "FAIL_DICT_LOOKUP")
                {
                  v279 = strchr(v253, v552);
                  if (v279)
                  {
                    v280 = v279;
                    *v279 = 0;
                    v281 = atoi(v253);
                    while (1)
                    {
                      v282 = v280 + 1;
                      if (v280[1] == v552)
                      {
                        break;
                      }

                      v283 = strchr(v280 + 1, v552);
                      v284 = v283;
                      if (v283)
                      {
                        *v283 = 0;
                      }

                      v285 = strlen(v280 + 1);
                      v286 = 0;
                      if (v544 != 1 && v285)
                      {
                        v287 = 1;
                        v288 = v544 - 1;
                        do
                        {
                          v288 -= v280[v287] == 59;
                          v289 = v287 + 1;
                          if (v288)
                          {
                            v290 = v287 >= v285;
                          }

                          else
                          {
                            v290 = 1;
                          }

                          ++v287;
                        }

                        while (!v290);
                        v286 = v289 - 1;
                      }

                      v291 = &v282[v286];
                      v292 = strchr(&v282[v286], 59);
                      if (v292)
                      {
                        *v292 = 0;
                      }

                      v556 = 0;
                      *__s2 = 0;
                      v293 = Utf8_LengthInBytes(v500, 1);
                      if (*v291 == 226 && v291[1] == 136 && v291[2] == 154)
                      {
                        __strcpy_chk();
                      }

                      else
                      {
                        if ((v293 & 0xFFFE) != 0)
                        {
                          v294 = v293;
                        }

                        else
                        {
                          v294 = 1;
                        }

                        __strncpy_chk();
                        LOWORD(v496) = v294 - 1;
                        __strcat_chk();
                      }

                      log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "ADD SOLUTION %s(%u)", __s2, v281);
                      v295 = v554;
                      v296 = v507;
                      v297 = v554;
                      if (v554)
                      {
                        while (strcmp(v296, __s2))
                        {
                          v296 += 12;
                          if (!--v297)
                          {
                            goto LABEL_559;
                          }
                        }

                        v303 = (v296 + 10);
                        v302 = v281;
                        v14 = v526;
                      }

                      else
                      {
LABEL_559:
                        v298 = v499;
                        if (v295 <= v499)
                        {
                          v14 = v526;
                          v301 = v507;
                        }

                        else
                        {
                          v499 += 10;
                          v299 = v507;
                          v300 = heap_Realloc(*(*v542 + 8), v507, 12 * (v298 + 10) + 12);
                          v14 = v526;
                          if (!v300)
                          {
                            goto LABEL_857;
                          }

                          v301 = v300;
                        }

                        __strcpy_chk();
                        v507 = v301;
                        *&v301[12 * v554 + 10] = v281;
                        v302 = 1;
                        v303 = &v554;
                      }

                      *v303 += v302;
                      v280 = v284;
                      v218 = __dstb;
                      if (!v284)
                      {
                        goto LABEL_568;
                      }
                    }

                    v14 = v526;
                  }
                }

LABEL_568:
                v15 = v528;
                v16 = v537;
              }
            }

            else
            {
LABEL_478:
              HIWORD(v554) = -1;
              v252 = (*(*(v542 + 24) + 152))(*(v542 + 8), *(v542 + 16), *(*(v542 + 88) + 8 * v219), __s, &v553, &v554 + 2, &v552, *(v542 + 68));
              if ((v252 & 0x80000000) != 0)
              {
                POSAndDiacritics = v252;
                v10 = v511;
                v12 = v542;
                goto LABEL_834;
              }

              if (!HIWORD(v554))
              {
                HIWORD(v554) = 1;
                log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s FAILS", __s);
                v253 = "FAIL_DICT_LOOKUP";
                goto LABEL_520;
              }

              v253 = *v553;
              log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "NGRAM DICT LOOKUP %s SUCCEEDS %s", __s, *v553);
              if (v253)
              {
                goto LABEL_520;
              }
            }

LABEL_569:
            v222 = v544 - 1;
            if (v544 == 1)
            {
              ++v219;
              if (v495)
              {
                goto LABEL_571;
              }

              goto LABEL_420;
            }

            goto LABEL_429;
          }

          goto LABEL_483;
        }

        if (v257 == *(v261 + 8))
        {
          v268 = getPunctClassChar(v542, *(v537 + v245));
          __strcpy_chk();
          v263 = (v258 + v255);
          v264 = v268;
          goto LABEL_507;
        }
      }

      v257 = ++v245;
      v256 = v259;
      v218 = __dstb;
      if (v262 <= v245)
      {
        goto LABEL_470;
      }
    }
  }

  __strcpy_chk();
  if (v155)
  {
    v201 = v507 + 1;
    v202 = &v557;
    v203 = v155;
    do
    {
      v204 = *v202++;
      v201[12 * v554] = v204;
      ++v201;
      --v203;
    }

    while (v203);
    v205 = v155 + 1;
  }

  else
  {
    v205 = 1;
  }

  v15 = v528;
  v507[12 * v554 + v205] = 0;
  *&v507[12 * v554 + 10] = 20000;
  log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "(partial dia) ADD SOLUTION %s(%u)", &v507[12 * v554], *&v507[12 * v554 + 10]);
  v496 = 0;
  v217 = v554 + 1;
  LOWORD(v554) = v554 + 1;
LABEL_572:
  if (v517)
  {
    if (v217)
    {
      v304 = 0;
      v502 = 0;
      v516 = 0;
      v518 = 0;
      v305 = v507;
      do
      {
        v306 = &v305[12 * v304];
        v545 = strlen(v306);
        if (v545)
        {
          v504 = v304;
          v307 = 0;
          v308 = 0;
          v309 = strlen((*(v12 + 25) + 6 * v540 + 2));
          do
          {
            v310 = Utf8_LengthInBytes(&v306[v308], 1);
            v311 = Utf8_LengthInBytes((*(v542 + 200) + 6 * v540 + v307 + 2), 1);
            if (v311 == v310 && v309 > v307)
            {
              v313 = v311;
              if (!strncmp(&v306[v308], (*(v542 + 200) + 6 * v540 + v307 + 2), v310))
              {
                v314 = *(v306 + 5);
                if (v314 >= v516)
                {
                  v315 = v504;
                }

                else
                {
                  v315 = v518;
                }

                v518 = v315;
                if (v314 <= v516)
                {
                  LOWORD(v314) = v516;
                }

                v516 = v314;
                v307 += v313;
                v502 = 1;
              }
            }

            v308 += v310;
          }

          while (v308 < v545);
          v217 = v554;
          v10 = v511;
          v12 = v542;
          v14 = v526;
          v15 = v528;
          v304 = v504;
        }

        ++v304;
        v305 = v507;
      }

      while (v304 < v217);
      v316 = v217 == 0;
      if (v502)
      {
        v16 = v537;
        goto LABEL_651;
      }

      v16 = v537;
    }

    else
    {
      v217 = 0;
      v516 = 0;
      v518 = 0;
      v316 = 1;
    }

    log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "NO SOLUTION CONTAINING DIACRITIC %s - see if solution with vowel", (*(v12 + 25) + 6 * v540 + 2));
    if (v316)
    {
      v330 = 0;
LABEL_621:
      if (*(v12 + 38) == 1 && ((v331 = *(v12 + 25) + 6 * v540, v334 = *(v331 + 2), v332 = v331 + 2, v333 = v334, v334 == 88) || v333 == 66) && !*(v332 + 1))
      {
        v335 = v507;
        v507[12 * v330] = 65;
        v507[12 * v554 + 1] = 0;
      }

      else
      {
        v335 = v507;
        __strcpy_chk();
      }

      *&v335[12 * v554 + 10] = 0;
      v321 = v554;
      LOWORD(v554) = v554 + 1;
      log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "BACKUP NGRAM SOLUTION[%d] %s %d");
    }

    else
    {
      v336 = 0;
      v337 = 0;
      while (2)
      {
        v503 = v337;
        while (1)
        {
          v338 = *(v12 + 15) ? *(v12 + 15) : "^FNKauioR";
          v505 = strlen(v338);
          if (v505)
          {
            break;
          }

LABEL_641:
          if (++v336 >= v217)
          {
            if (v503)
            {
              goto LABEL_651;
            }

            v330 = v217;
            goto LABEL_621;
          }
        }

        v339 = &v507[12 * v336];
        v340 = strlen(v339);
        v341 = 0;
        while (1)
        {
          v342 = Utf8_LengthInBytes(&v338[v341], 1);
          if (v340)
          {
            break;
          }

LABEL_639:
          v341 += v342;
          if (v341 >= v505)
          {
            v217 = v554;
            v10 = v511;
            v12 = v542;
            v14 = v526;
            v15 = v528;
            v16 = v537;
            goto LABEL_641;
          }
        }

        v343 = 0;
        while (1)
        {
          v344 = Utf8_LengthInBytes(&v339[v343], 1);
          v345 = v344;
          if (v344 == v342 && !strncmp(&v338[v341], &v339[v343], v344))
          {
            break;
          }

          v343 += v345;
          if (v343 >= v340)
          {
            goto LABEL_639;
          }
        }

        v346 = *&v507[12 * v336 + 10];
        if (v346 >= v516)
        {
          v347 = v336;
        }

        else
        {
          v347 = v518;
        }

        v518 = v347;
        if (v346 <= v516)
        {
          LOWORD(v346) = v516;
        }

        v516 = v346;
        ++v336;
        v337 = 1;
        v217 = v554;
        v10 = v511;
        v12 = v542;
        v14 = v526;
        v15 = v528;
        v16 = v537;
        if (v336 < v554)
        {
          continue;
        }

        break;
      }

LABEL_651:
      v321 = v518;
      log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "FORCE NGRAM SOLUTION[%d] %s %d");
    }
  }

  else if (v217)
  {
    v317 = 0;
    v318 = 0;
    v319 = 0;
    v320 = 0;
    v321 = 0;
LABEL_596:
    v322 = &v507[12 * v317];
    v323 = v317;
    do
    {
      log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "NGRAM SOLUTION[%d] %s %d", v323, v322, *(v322 + 5));
      v324 = *(v322 + 5);
      if (v324 == 20000)
      {
        v317 = v323 + 1;
        v325 = v554;
        v319 = 1;
        v318 = v323;
        if (v323 + 1 < v554)
        {
          goto LABEL_596;
        }

        v318 = v323;
        v15 = v528;
        v16 = v537;
        goto LABEL_607;
      }

      v322 += 12;
      if (v324 >= v320)
      {
        v321 = v323;
      }

      if (v324 > v320)
      {
        v320 = v324;
      }

      ++v323;
      v325 = v554;
    }

    while (v323 < v554);
    v15 = v528;
    v16 = v537;
    if ((v319 & 1) == 0)
    {
      goto LABEL_652;
    }

LABEL_607:
    if (v325)
    {
      v326 = v507;
      v327 = strlen(&v507[12 * v318]);
      v328 = 0;
      v329 = 0;
      do
      {
        if (!memcmp(v326, &v507[12 * v318], v327) && strlen(v326) > v327)
        {
          v321 = v328;
          v329 = 1;
        }

        ++v328;
        v326 += 12;
      }

      while (v325 != v328);
      if (!v329)
      {
        v321 = v318;
      }

      v10 = v511;
      v14 = v526;
      v15 = v528;
      v16 = v537;
    }

    else
    {
      v321 = v318;
    }
  }

  else
  {
    v321 = 0;
  }

LABEL_652:
  v12 = v542;
  v348 = &v507[12 * v321];
  log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "NGRAM SELECTED SOLUTION[%d] %s %d", v321, v348, *(v348 + 5));
  v349 = strlen(*__c);
  v350 = strlen(v348);
  v351 = posparserGrowStr(v542, __c, (v350 + v349 + 1), &v550, 0);
  if ((v351 & 0x80000000) != 0)
  {
    POSAndDiacritics = v351;
    goto LABEL_834;
  }

  strcat(*__c, v348);
  v352 = *(v494 + 10);
  if (v515 + v496 + 1 != v352)
  {
    POSAndDiacritics = 0;
    v359 = a4;
    v153 = __dstb;
    v360 = v535;
    v184 = v524;
LABEL_661:
    if (*v500 == 32 && *(v359 + 104 * v153 + 8) > v360)
    {
      **__c = 0;
    }

    goto LABEL_664;
  }

  v353 = *__c;
  v354 = strlen(*__c);
  v355 = v354;
  v356 = *(v494 + 8);
  if (v352 - v356 == v354 && !memcmp(*__c, &v16[v356], v354))
  {
    log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "--> NGRAM WORD SOLUTION %s (unchanged)", v353);
    POSAndDiacritics = 0;
    v358 = __dstb;
    v184 = v524;
LABEL_659:
    v153 = (v358 + 1);
    *v353 = 0;
    v359 = a4;
    v360 = v535;
    goto LABEL_661;
  }

  v357 = heap_Calloc(*(*v542 + 8), 1, (v355 + 1));
  *(v494 + 64) = v357;
  v184 = v524;
  if (!v357)
  {
    POSAndDiacritics = -1607458806;
    log_OutPublic(*(*v542 + 32), "POSPARSER", 68000, 0);
    goto LABEL_834;
  }

  v358 = __dstb;
  POSAndDiacritics = posparser_PostProcess(v542, __c);
  if ((POSAndDiacritics & 0x80000000) == 0)
  {
    v353 = *__c;
    strcpy(*(v494 + 64), *__c);
    log_OutText(*(*v542 + 32), "POSPARSER", 5, 0, "--> NGRAM WORD SOLUTION %s", *(v494 + 64));
    goto LABEL_659;
  }

LABEL_834:
  for (j = 8; j != 188; j += 9)
  {
    v490 = __s1[j];
    if (v490)
    {
      heap_Free(*(*v12 + 8), v490);
      __s1[j] = 0;
    }
  }

  if (v497)
  {
    heap_Free(*(*v12 + 8), v497);
  }

  v13 = a10;
  if (v507)
  {
    heap_Free(*(*v12 + 8), v507);
  }

  v20 = *__c;
  LODWORD(v17) = a5;
  v18 = a4;
  if ((POSAndDiacritics & 0x80000000) != 0)
  {
    goto LABEL_848;
  }

LABEL_671:
  if (v17)
  {
    v361 = 0;
    v362 = v17;
    do
    {
      v363 = v18 + 104 * v361;
      if (*(v363 + 74))
      {
        v364 = 0;
        v365 = v14;
        v366 = *(v363 + 74);
        do
        {
          v367 = *v365;
          v365 += 8;
          if (v367 == 1)
          {
            ++v364;
          }

          --v366;
        }

        while (v366);
        *(v363 + 74) -= v364;
      }

      if (*(v363 + 76))
      {
        v368 = 0;
        v369 = v14;
        v370 = *(v363 + 76);
        do
        {
          v371 = *v369;
          v369 += 8;
          if (v371 == 1)
          {
            ++v368;
          }

          --v370;
        }

        while (v370);
        *(v363 + 76) -= v368;
      }

      ++v361;
    }

    while (v361 != v362);
  }

  __dst = v20;
  if (v15)
  {
    v372 = 0;
    v373 = 0;
    do
    {
      v374 = (v14 + 32 * v373);
      if (*v374 == 1)
      {
        v375 = (v372 + 1);
        if (v15 > v375)
        {
          memmove(v374, (v14 + 32 * v375), 32 * (v15 - v375));
        }

        v15 = (v15 - 1);
      }

      else
      {
        ++v373;
      }

      v372 = v373;
    }

    while (v373 < v15);
  }

  if (*(v12 + 62) == 1)
  {
    v376 = 32 * v15 + (a5 << 6) + 32;
  }

  else
  {
    v376 = 32 * (v15 + a5) + 32;
  }

  v521 = heap_Realloc(*(*v12 + 8), v14, v376);
  if (!v521)
  {
    POSAndDiacritics = -1607458806;
    log_OutPublic(*(*v12 + 32), "POSPARSER", 68000, 0);
    goto LABEL_772;
  }

  __s1[0] = v16;
  v377 = __dst;
  *__s = __dst;
  LOWORD(v557) = strlen(v16);
  if (!a5)
  {
    v457 = v16;
    v14 = v521;
    goto LABEL_775;
  }

  v512 = v10;
  v379 = 0;
  v380 = 0;
  v525 = 0;
  v519 = 0;
  v381 = a4;
  v14 = v521;
  v506 = 0;
  while (2)
  {
    v382 = v381 + 104 * v380;
    LODWORD(v378) = *v382;
    v546 = v378;
    v383 = *(v382 + 8);
    v541 = *(v382 + 4);
    v536 = *(v14 + 12);
    v527 = v383;
    if (*(v382 + 12) != 1)
    {
      if (*(v382 + 72) == 9999)
      {
        v389 = *(v382 + 64);
        if (!v389)
        {
          v391 = posparserGrowStr(v12, __s, (*(v382 + 10) - v383), &v550, 0);
          v377 = *__s;
          if ((v391 & 0x80000000) == 0)
          {
            v385 = __s1[0];
            strncpy(*__s, &__s1[0][*(v382 + 8)], *(v382 + 10) - *(v382 + 8));
            v377[*(v382 + 10) - *(v382 + 8)] = 0;
            log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "PROCESSING word [%d] %d,%d %s", v379);
            goto LABEL_703;
          }

LABEL_845:
          LODWORD(v459) = v391;
          v10 = v512;
          goto LABEL_846;
        }

        v390 = strlen(v389);
        v391 = posparserGrowStr(v12, __s, v390, &v550, 0);
        v377 = *__s;
        if (v391 < 0)
        {
          goto LABEL_845;
        }

        strcpy(*__s, *(v382 + 64));
        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "PROCESSING ngram word [%d] %d,%d %s", v379, *(v382 + 8), *(v382 + 10), v377);
        v386 = strlen(v377) - *(v382 + 10) + *(v382 + 8);
        posparser_undoEmbeddedRules(v12, v377);
        v387 = 1;
        v385 = __s1[0];
        v388 = v380;
        v392 = v380;
      }

      else
      {
        v393 = strlen(*(v382 + 16));
        v384 = posparserGrowStr(v12, __s, v393, &v550, 0);
        v377 = *__s;
        if (v384 < 0)
        {
LABEL_831:
          LODWORD(v459) = v384;
          v10 = v512;
          goto LABEL_847;
        }

        strcpy(*__s, *(v382 + 16));
        v394 = v15;
        v395 = *(a4 + 104 * *(v382 + 72) + 10);
        v385 = __s1[0];
        v396 = strlen(__s1[0]);
        if (v396 < v395)
        {
          LOWORD(v395) = v396;
        }

        log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "PROCESSING dict word [%d-%d] %d,%d %s", v379, *(v382 + 72), *(v382 + 8), v395, v377);
        v397 = strlen(v377) - v395;
        v15 = v394;
        v386 = v397 + *(v382 + 8);
        v388 = *(v382 + 72);
        v387 = 1;
        v392 = v388;
      }

      v525 = v392;
      v519 = v380;
      goto LABEL_713;
    }

    v384 = posparserGrowStr(v12, __s, (*(v382 + 10) - v383), &v550, 0);
    v377 = *__s;
    if (v384 < 0)
    {
      goto LABEL_831;
    }

    v385 = __s1[0];
    strncpy(*__s, &__s1[0][*(v382 + 8)], *(v382 + 10) - *(v382 + 8));
    v377[*(v382 + 10) - *(v382 + 8)] = 0;
    log_OutText(*(*v12 + 32), "POSPARSER", 5, 0, "PROCESSING VOWELLED word [%d] %d,%d %s", v379);
LABEL_703:
    v386 = 0;
    v387 = 0;
    v388 = v380;
LABEL_713:
    v398 = v386 + strlen(v385);
    v399 = posparserGrowStr(v12, __s1, v398, &v557, 64);
    if (v399 < 0)
    {
      LODWORD(v459) = v399;
      v10 = v512;
      v14 = v521;
      v13 = a10;
      goto LABEL_847;
    }

    v400 = v377;
    if (v386 << 16)
    {
      v529 = v15;
      v401 = v386;
      v402 = a4 + 104 * v525;
      v405 = *(v402 + 10);
      v404 = (v402 + 10);
      v403 = v405;
      v406 = __s1[0];
      v407 = strlen(__s1[0]);
      if (v407 > v405)
      {
        memmove(&__s1[0][v403 + v386], &__s1[0][v403], v407 - v403);
      }

      v408 = a4 + 104 * v519;
      v410 = *(v408 + 8);
      v409 = (v408 + 8);
      v411 = strlen(v400);
      memcpy(&v406[v410], v400, v411);
      v406[v398] = 0;
      *v404 += v386;
      v412 = a5;
      if (a5 > (v525 + 1))
      {
        v413 = (v525 + 1) + 1;
        v414 = (a4 + 10 + 104 * (v525 + 1));
        do
        {
          *(v414 - 1) += v386;
          *v414 += v386;
          v414 += 52;
        }

        while (a5 != v413++);
      }

      v15 = v529;
      v12 = v542;
      v416 = v521;
      v13 = a10;
      v16 = v537;
      v381 = a4;
      if (v529 >= 2u)
      {
        v417 = *(v521 + 12);
        v418 = *v409;
        v419 = v529 - 1;
        v420 = (v521 + 44);
        do
        {
          v421 = (*v420 - v417);
          if (v421 >= v418)
          {
            v422 = *v420 + v401;
            if (v421 < v403)
            {
              v422 = v417 + v418;
            }

            *v420 = v422;
          }

          v420 += 8;
          --v419;
        }

        while (v419);
      }
    }

    else
    {
      v416 = v521;
      v13 = a10;
      v16 = v537;
      v412 = a5;
      v381 = a4;
      if (v387)
      {
        v423 = strlen(v377);
        v416 = v521;
        memcpy(&__s1[0][*(a4 + 104 * v519 + 8)], v377, v423);
        v381 = a4;
        v412 = a5;
      }
    }

    v424 = v536 + v527;
    v425 = v381 + 104 * v388;
    v426 = *(v425 + 74);
    if (*(v425 + 74))
    {
      v427 = v416 + 32 * v426;
      LODWORD(v426) = *(v427 + 12) - v424;
      *(v427 + 12) = v424;
    }

    if (*(v425 + 76))
    {
      v428 = v416 + 32 * *(v425 + 76);
      *(v428 + 12) += v426;
    }

    v377 = v400;
    if (v541)
    {
      if (v15 < 2u)
      {
        LOWORD(v430) = 1;
      }

      else
      {
        v429 = (v521 + 44);
        v430 = 1;
        while (1)
        {
          v431 = *v429;
          v429 += 8;
          if (v424 < v431)
          {
            break;
          }

          if (v15 == ++v430)
          {
            LOWORD(v430) = v15;
            break;
          }
        }
      }

      v432 = v546;
      DWORD1(v432) = v541;
      v547 = v432;
      v433 = (a4 + 76);
      v434 = a5;
      do
      {
        v435 = *(v433 - 1);
        if (v435 >= v430)
        {
          *(v433 - 1) = v435 + 1;
        }

        v436 = *v433;
        if (v436 >= v430)
        {
          *v433 = v436 + 1;
        }

        v433 += 52;
        --v434;
      }

      while (v434);
      v14 = v416;
      v437 = (v416 + 32 * v430);
      memmove(v437 + 8, v437, 32 * (v15 - v430));
      *v437 = 1;
      v378 = v547;
      *(v437 + 1) = v547;
      v437[3] = v424;
      v15 = (v15 + 1);
      *(v437 + 2) = 0;
      *(v437 + 3) = v506;
      v412 = a5;
      v381 = a4;
    }

    else
    {
      v14 = v416;
    }

    if (*(v12 + 62) == 1)
    {
      v438 = *(v425 + 40);
      if (!v438)
      {
        v412 = a5;
        goto LABEL_769;
      }

      v439 = v388;
      v440 = *v425;
      v441 = v14;
      v442 = *(v14 + 12);
      v443 = *(v425 + 8);
      v444 = strlen(v438);
      v445 = heap_Calloc(*(*v12 + 8), 1, (v444 + 1));
      if (v445)
      {
        v446 = v445;
        v447 = v442 + v443;
        strcpy(v445, *(v425 + 40));
        if (v15 < 2u)
        {
          LOWORD(v449) = 1;
          v16 = v537;
          v450 = v441;
        }

        else
        {
          v448 = (v521 + 44);
          v449 = 1;
          v16 = v537;
          v450 = v441;
          while (1)
          {
            v451 = *v448;
            v448 += 8;
            if (v447 < v451)
            {
              break;
            }

            if (v15 == ++v449)
            {
              LOWORD(v449) = v15;
              break;
            }
          }
        }

        v452 = (v450 + 32 * v449);
        memmove(v452 + 8, v452, 32 * (v15 - v449));
        *v452 = 58;
        *(v452 + 1) = v440;
        v452[3] = v447;
        v453 = (a4 + 76);
        v454 = a5;
        *(v452 + 2) = 0;
        *(v452 + 3) = v446;
        v412 = a5;
        v381 = a4;
        do
        {
          v455 = *(v453 - 1);
          if (v455 >= v449)
          {
            *(v453 - 1) = v455 + 1;
          }

          v456 = *v453;
          if (v456 >= v449)
          {
            *v453 = v456 + 1;
          }

          v453 += 52;
          --v454;
        }

        while (v454);
        v506 = v446;
        v15 = (v15 + 1);
        v14 = v441;
        v388 = v439;
        v13 = a10;
        goto LABEL_769;
      }

      log_OutPublic(*(*v12 + 32), "POSPARSER", 68000, 0);
      LODWORD(v459) = -1607458806;
      v10 = v512;
LABEL_846:
      v13 = a10;
LABEL_847:
      POSAndDiacritics = v459;
      v16 = __s1[0];
      v20 = v377;
LABEL_848:
      v83 = a9;
      goto LABEL_849;
    }

LABEL_769:
    v380 = v388 + 1;
    v379 = (v388 + 1);
    if (v379 < v412)
    {
      continue;
    }

    break;
  }

  v457 = __s1[0];
  v10 = v512;
LABEL_775:
  v458 = strlen(v457);
  LODWORD(v459) = 0;
  *(v14 + 16) = v458;
  if (*(v12 + 62) != 1 || v15 < 2u)
  {
    goto LABEL_847;
  }

  v460 = 0;
  v461 = (v14 + 88);
  v462 = 2;
  v463 = 1;
  while (2)
  {
    v464 = (v14 + 32 * v463);
    if (*v464 == 59 && v464[6] == 5)
    {
      if (v463 + 1 >= v15)
      {
        goto LABEL_790;
      }

      v465 = v461;
      v466 = v462;
      while (*(v465 - 6) != 59 || *v465 != 5)
      {
        ++v466;
        v465 += 8;
        if (v15 == v466)
        {
          goto LABEL_790;
        }
      }

      v467 = (v14 + 32 * v466);
      if (*v467 != 59 || v467[6] != 5)
      {
LABEL_790:
        v469 = *(v14 + 12) + v458;
        v468 = v464[3];
        goto LABEL_791;
      }

      v468 = v464[3];
      v469 = v467[3];
      if (v464[4] + v468 < v469)
      {
LABEL_791:
        v464[4] = v469 - v468;
      }

      v460 = 1;
    }

    ++v463;
    ++v462;
    v461 += 8;
    if (v463 != v15)
    {
      continue;
    }

    break;
  }

  v470 = v15 - 1;
  v471 = (v14 + 44);
  do
  {
    if (*(v471 - 3) == 59)
    {
      *v471 -= *(v14 + 12);
    }

    v471 += 8;
    --v470;
  }

  while (v470);
  if (v460 != 1)
  {
    LODWORD(v459) = 0;
    goto LABEL_847;
  }

  *__s2 = 0;
  LOWORD(v553) = 0;
  LOWORD(__c[0]) = 0;
  v554 = 0;
  *__src = 0;
  v459 = (*(*(v12 + 4) + 104))(a2, a3, 3, a7, __s2);
  if ((v459 & 0x80000000) != 0)
  {
    goto LABEL_853;
  }

  v472 = *__s2;
  if (!*__s2)
  {
LABEL_821:
    v484 = 1;
    v485 = 1;
    do
    {
      v486 = v459;
      v487 = (v14 + 32 * v485);
      if (*v487 == 59)
      {
        v488 = (v484 + 1);
        if (v15 > v488)
        {
          memmove(v487, (v14 + 32 * v488), 32 * (v15 - v488));
        }

        LOWORD(v15) = v15 - 1;
      }

      else
      {
        ++v485;
      }

      v459 = v486;
      v484 = v485;
    }

    while (v485 < v15);
    goto LABEL_847;
  }

  LOWORD(v473) = 1;
  while (1)
  {
    v474 = (*(*(v12 + 4) + 168))(a2, a3, v472, 1, 1, &v553, &v554 + 2);
    if (v474 < 0 || (v474 = (*(*(v12 + 4) + 168))(a2, a3, *__s2, 2, 1, __c, &v554 + 2), v474 < 0) || (v474 = (*(*(v12 + 4) + 168))(a2, a3, *__s2, 0, 1, __src, &v554 + 2), v474 < 0))
    {
      LODWORD(v459) = v474;
      v14 = v521;
      goto LABEL_853;
    }

    if (v473 >= v15)
    {
      v477 = a2;
      v476 = a3;
    }

    else
    {
      v473 = v473;
      v475 = (v521 + 32 * v473);
      v477 = a2;
      v476 = a3;
      while (1)
      {
        v478 = *v475;
        v475 += 8;
        if (v478 == 59)
        {
          break;
        }

        if (v15 == ++v473)
        {
          LOWORD(v473) = v15;
          break;
        }
      }
    }

    v14 = v521;
    v479 = (v521 + 32 * v473);
    if (*v479 == 59)
    {
      v480 = v553;
      if (v479[1] == v553)
      {
        v481 = LOWORD(__c[0]);
        if (v479[2] == LOWORD(__c[0]))
        {
          if (v479[3] != v553)
          {
            LOWORD(v553) = v479[3];
            v482 = (*(*(v12 + 4) + 160))(v477, v476, *__s2, 1, 1, &v553, &v554);
            if (v482 < 0)
            {
              break;
            }

            v481 = LOWORD(__c[0]);
            v480 = v479[3];
            v477 = a2;
            v476 = a3;
          }

          v483 = v479[4] + v480;
          if (v483 != v481)
          {
            LOWORD(__c[0]) = v483;
            v482 = (*(*(v12 + 4) + 160))(v477, v476, *__s2, 2, 1, __c, &v554);
            v477 = a2;
            v476 = a3;
            if (v482 < 0)
            {
              break;
            }
          }
        }
      }
    }

    v459 = (*(*(v12 + 4) + 120))(v477, v476, *__s2, __s2);
    if ((v459 & 0x80000000) != 0)
    {
      goto LABEL_853;
    }

    LOWORD(v473) = v473 + 1;
    v472 = *__s2;
    if (!*__s2)
    {
      goto LABEL_821;
    }
  }

  LODWORD(v459) = v482;
LABEL_853:
  POSAndDiacritics = v459;
LABEL_772:
  v83 = a9;
LABEL_773:
  v20 = __dst;
LABEL_849:
  *v13 = v15;
  *v10 = v16;
  *v83 = v14;
  if (v20)
  {
LABEL_850:
    heap_Free(*(*v12 + 8), v20);
  }

  return POSAndDiacritics;
}

void *posparser_ProcessEnd(void *result)
{
  v1 = result;
  v2 = *(result + 96);
  if (*(result + 96))
  {
    v3 = 0;
    do
    {
      v4 = *(v1[11] + 8 * v3);
      if (v4)
      {
        result = heap_Free(*(*v1 + 8), v4);
        *(v1[11] + 8 * v3) = 0;
        v2 = *(v1 + 96);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v5 = v1[11];
  if (v5)
  {
    result = heap_Free(*(*v1 + 8), v5);
    v1[11] = 0;
  }

  v6 = v1[10];
  if (v6)
  {
    result = heap_Free(*(*v1 + 8), v6);
    v1[10] = 0;
  }

  v7 = v1[14];
  if (v7)
  {
    result = heap_Free(*(*v1 + 8), v7);
    v1[14] = 0;
  }

  v8 = v1[13];
  if (v8)
  {
    result = heap_Free(*(*v1 + 8), v8);
    v1[13] = 0;
  }

  v9 = v1[15];
  if (v9)
  {
    result = heap_Free(*(*v1 + 8), v9);
    v1[15] = 0;
  }

  v10 = v1[16];
  if (v10)
  {
    result = heap_Free(*(*v1 + 8), v10);
    v1[16] = 0;
  }

  v11 = v1[17];
  if (v11)
  {
    result = heap_Free(*(*v1 + 8), v11);
    v1[17] = 0;
  }

  v12 = v1[18];
  if (v12)
  {
    result = heap_Free(*(*v1 + 8), v12);
    v1[18] = 0;
  }

  v13 = v1[20];
  if (*(v1 + 84))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      heap_Free(*(*v1 + 8), *(v13 + v14 + 8));
      v16 = v1[20] + v14;
      *(v16 + 8) = 0;
      heap_Free(*(*v1 + 8), *(v16 + 24));
      v13 = v1[20];
      *(v13 + v14 + 24) = 0;
      if (*(v13 + v14 + 40))
      {
        heap_Free(*(*v1 + 8), *(v13 + v14 + 40));
        v13 = v1[20];
        *(v13 + v14 + 40) = 0;
      }

      ++v15;
      v14 += 56;
    }

    while (v15 < *(v1 + 84));
    *(v1 + 84) = 0;
  }

  else if (!v13)
  {
    goto LABEL_30;
  }

  result = heap_Free(*(*v1 + 8), v13);
  v1[20] = 0;
LABEL_30:
  v17 = v1[22];
  if (v17)
  {
    result = heap_Free(*(*v1 + 8), v17);
    v1[22] = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t posparser_GrowAndInsert(void *a1, uint64_t *a2, __int16 a3, __int16 a4, unsigned int a5, int a6, unsigned int a7, unsigned __int16 *a8, _WORD *a9)
{
  LODWORD(v11) = a6;
  v15 = *a2;
  v16 = a3 - a4;
  v17 = *a8;
  v18 = *a9;
  if (v17 + (a3 - a4) <= v18)
  {
    v26 = a2;
    v27 = a8;
  }

  else
  {
    *a9 = v18 + 10;
    v19 = heap_Realloc(*(*a1 + 8), v15, (v18 + 10) + 1);
    if (!v19)
    {
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0);
      return 2687508490;
    }

    v15 = v19;
    v26 = a2;
    v27 = a8;
    v17 = *a8;
  }

  v25 = v16;
  memmove((v15 + a5 + v16), (v15 + a5), (v17 - a5));
  if (v11 < a7)
  {
    v11 = v11;
    v20 = a1[25];
    do
    {
      if (*(v20 + 6 * v11 + 2))
      {
        v21 = 0;
        v22 = 0;
        do
        {
          *(v15 + a5++) = *(v20 + 6 * v11 + v21 + 2);
          v21 = ++v22;
          v20 = a1[25];
        }

        while (strlen((v20 + 6 * v11 + 2)) > v22);
      }

      ++v11;
    }

    while (v11 != a7);
  }

  result = 0;
  v24 = *v27 + v25;
  *v27 = v24;
  *(v15 + v24) = 0;
  *v26 = v15;
  return result;
}

BOOL isPuncClass(void *a1, unsigned __int8 *a2)
{
  v4 = a1[16];
  if (!v4)
  {
    v4 = ".!?";
  }

  if (isCharInStr(a2, v4))
  {
    return 1;
  }

  v5 = a1[17];
  if (!v5)
  {
    v5 = ",:;";
  }

  if (isCharInStr(a2, v5))
  {
    return 1;
  }

  v6 = a1[18];
  if (!v6)
  {
    v6 = &puncClass3;
  }

  return isCharInStr(a2, v6) != 0;
}

size_t posparser_undoEmbeddedRules(uint64_t a1, char *__s)
{
  result = strlen(__s);
  if (result >= 3u)
  {
    v5 = *(a1 + 184);
    v6 = 1;
    v7 = v5;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = __s[v6];
        do
        {
          v11 = *(a1 + 176);
          if (v10 == *(v11 + v8 + 1))
          {
            v10 = *(v11 + v8);
            __s[v6] = v10;
            v5 = *(a1 + 184);
          }

          ++v9;
          v8 += 2;
          v7 = v5;
        }

        while (v9 < v5);
      }

      ++v6;
    }

    while (v6 != result - 1);
  }

  return result;
}

char *insertString(char *__src, char *__dst, const char *a3, int a4)
{
  strcpy(__dst, __src);
  v8 = &__dst[a4];
  v9 = strlen(a3);
  strncpy(v8, a3, v9);
  v10 = &v8[strlen(a3)];

  return strcpy(v10, &__src[a4 + 1]);
}

void *getPunctClassChar(uint64_t a1, int __c)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    if (strchr(v4, __c))
    {
      return &PUNCCLASS1CHAR;
    }
  }

  else if (memchr(".!?", __c, 4uLL))
  {
    return &PUNCCLASS1CHAR;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    if (strchr(v6, __c))
    {
      return &PUNCCLASS2CHAR;
    }
  }

  else if (memchr(",:;", __c, 4uLL))
  {
    return &PUNCCLASS2CHAR;
  }

  return &PUNCCLASS3CHAR;
}

char *insertStringPart(char *__src, char *__dst, const char *a3, int a4, unsigned int a5)
{
  strcpy(__dst, __src);
  v10 = &strncpy(&__dst[a4], a3, a5)[a5];

  return strcpy(v10, &__src[a4 + 1]);
}

uint64_t sparray_get(uint64_t a1, int a2)
{
  _32 = kh_get_32(a1, a2);
  if (_32 == *(a1 + 8))
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 40) + 4 * _32);
  }
}

uint64_t sparray_set(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 0;
    result = kh_put_32(result, a2, &v5);
    if (v5 == 1)
    {
      *(*(v4 + 40) + 4 * result) = a3;
    }
  }

  return result;
}

uint64_t qrk_new(uint64_t a1, uint64_t *a2)
{
  v4 = heap_Alloc(*(a1 + 8), 32);
  if (v4)
  {
    v5 = v4;
    *v4 = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 128;
    v6 = heap_Calloc(*(a1 + 8), 8, 128);
    result = 0;
    *(v5 + 8) = v6;
    *a2 = v5;
    if (v6)
    {
      return result;
    }

    v8 = *(v5 + 8);
    if (v8)
    {
      heap_Free(*(a1 + 8), v8);
    }

    heap_Free(*(a1 + 8), v5);
  }

  *a2 = 0;
  return 2585796618;
}

void *qrk_free(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v48 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = result;
    v7 = *v2;
    if (*v2 && *(v2 + 20))
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v47 = 0;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = 1;
      v15 = v7;
      do
      {
        v9 = v8 - 1;
        v10 = *(&v15 + v8 - 1);
        if (v10)
        {
          if (!v4)
          {
            v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
            heap_Free(v6[1], *((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
            v12 = v6[1];
            v10 = v13;
            goto LABEL_10;
          }
        }

        else
        {
          v11 = *(v10 + 8);
          *(&v15 + v9) = *v10;
          v9 = v8 + 1;
          *(&v15 + v8) = v11;
          if (!v4)
          {
            v12 = v6[1];
LABEL_10:
            heap_Free(v12, v10);
          }
        }

        v8 = v9;
      }

      while (v9);
    }

    if (v4)
    {
      heap_Free(v6[1], *v5);
      heap_Free(v6[1], **(v5 + 8));
    }

    heap_Free(v6[1], *(v5 + 8));
    v14 = v6[1];

    return heap_Free(v14, v5);
  }

  return result;
}

uint64_t qrk_str2id(uint64_t a1, uint64_t *a2, char *__s, unsigned int *a4, unsigned int a5)
{
  if (!a5)
  {
    a5 = strlen(__s);
  }

  v9 = a5;
  if (*(a2 + 5))
  {
    for (i = *a2; (i & 1) == 0; i = *(i + ((((v12 | *(i + 20)) + 1) >> 5) & 8)))
    {
      v11 = *(i + 16);
      if (v11 >= a5)
      {
        v12 = 0;
      }

      else
      {
        v12 = __s[v11];
      }
    }

    v13 = (i & 0xFFFFFFFFFFFFFFFELL);
    v14 = *((i & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (a5)
    {
      v15 = 0;
      while (__s[v15] == *(v14 + v15))
      {
        if (a5 == ++v15)
        {
          LODWORD(v15) = a5;
          goto LABEL_20;
        }
      }
    }

    else
    {
      LODWORD(v15) = 0;
    }

    if (v15 == a5)
    {
LABEL_20:
      v21 = *(v14 + a5);
      if (!*(v14 + a5))
      {
        v20 = *v13;
        goto LABEL_25;
      }
    }

    else
    {
      v21 = *(v14 + v15) ^ __s[v15];
    }

    if (*(a2 + 4) == 1)
    {
LABEL_24:
      v20 = -1;
      goto LABEL_25;
    }

    do
    {
      v23 = v21;
      v21 &= v21 - 1;
    }

    while (v21);
    v16 = 2585796618;
    v24 = *(v14 + v15);
    v25 = heap_Alloc(*(a1 + 8), 24);
    if (v25)
    {
      v39 = v25;
      v26 = heap_Alloc(*(a1 + 8), 16);
      if (v26)
      {
        v27 = v26;
        v28 = heap_Alloc(*(a1 + 8), (v9 + 1));
        *(v27 + 8) = v28;
        if (v28)
        {
          v29 = v24 | ~v23;
          v30 = ~v23;
          v31 = (v29 + 1) >> 8;
          memcpy(v28, __s, (v9 + 1));
          *(*(v27 + 8) + v9) = 0;
          v20 = *(a2 + 5);
          v32 = *(a2 + 6);
          *(a2 + 5) = v20 + 1;
          *v27 = v20;
          v33 = v39;
          *(v39 + 16) = v15;
          *(v39 + 20) = v30;
          *(v39 + 8 * (v31 ^ 1)) = v27 | 1;
          if (v20 == v32)
          {
            v34 = v20 + (v20 >> 1);
            *(a2 + 6) = v34;
            v35 = heap_Realloc(*(a1 + 8), a2[1], 8 * v34);
            if (!v35)
            {
              return v16;
            }

            a2[1] = v35;
            v20 = *v27;
            v33 = v39;
          }

          else
          {
            v35 = a2[1];
          }

          *(v35 + 8 * v20) = v27;
          while (1)
          {
            v36 = *a2;
            if (*a2)
            {
              break;
            }

            v37 = *(v36 + 16);
            if (v37 > v15 || v37 == v15 && *(v36 + 20) > v30)
            {
              break;
            }

            if (v37 >= v9)
            {
              v38 = 0;
            }

            else
            {
              v38 = __s[v37];
            }

            a2 = (v36 + ((((v38 | *(v36 + 20)) + 1) >> 5) & 8));
          }

          *(v33 + 8 * v31) = v36;
          *a2 = v33;
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    if (*(a2 + 4) == 1)
    {
      goto LABEL_24;
    }

    v16 = 2585796618;
    v17 = heap_Alloc(*(a1 + 8), 16);
    if (v17)
    {
      v18 = v17;
      v19 = heap_Alloc(*(a1 + 8), (v9 + 1));
      *(v18 + 8) = v19;
      if (v19)
      {
        memcpy(v19, __s, (v9 + 1));
        v20 = 0;
        *(*(v18 + 8) + v9) = 0;
        *v18 = 0;
        *a2 = v18 | 1;
        *a2[1] = v18;
        *(a2 + 5) = 1;
LABEL_25:
        v16 = 0;
        *a4 = v20;
      }
    }
  }

  return v16;
}

uint64_t qrk_id2str(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 20) <= a3)
  {
    wapiti_fatal(*(a1 + 32), "invalid identifier");
  }

  return *(*(*(a2 + 8) + 8 * a3) + 8);
}

uint64_t qrk_lock(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return v2;
}

uint64_t qp_new(uint64_t a1, uint64_t *a2)
{
  v4 = heap_Alloc(*(a1 + 8), 32);
  if (v4)
  {
    v5 = v4;
    *v4 = 0;
    *(v4 + 16) = xmmword_1C37BE740;
    v6 = heap_Calloc(*(a1 + 8), 8, 128);
    *(v5 + 8) = v6;
    *a2 = v5;
    if (v6)
    {
      return 0;
    }

    v8 = *(v5 + 8);
    if (v8)
    {
      heap_Free(*(a1 + 8), v8);
    }

    heap_Free(*(a1 + 8), v5);
  }

  *a2 = 0;
  return 2585796618;
}

_DWORD *twigoffmax(_DWORD *result, _DWORD *a2, uint64_t a3, int a4)
{
  v4 = (((*(a3 + 8) & (a4 - 1)) >> 1) & 0x5555) + (*(a3 + 8) & (a4 - 1) & 0x5555);
  v5 = (((((v4 >> 2) & 0x33333333) + (v4 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v4 >> 2) & 0x33333333) + (v4 & 0x33333333)) & 0xF0F0F0F);
  *result = (v5 & 0xF) + (v5 >> 8);
  v6 = (((((*(a3 + 8) >> 1) & 0x5555) + (*(a3 + 8) & 0x5555u)) >> 2) & 0x33333333) + ((((*(a3 + 8) >> 1) & 0x5555) + (*(a3 + 8) & 0x5555)) & 0x33333333);
  *a2 = ((((v6 >> 4) & 0xFFFFFF0F) + (v6 & 0xF0F0F0F)) & 0xF) + ((((v6 >> 4) & 0xFFFFFF0F) + (v6 & 0xF0F0F0F)) >> 8);
  return result;
}

void *qp_free(void *result, uint64_t **a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      if (!*v4 || (heap_Free(result[1], *v4), (v4 = *a2) != 0))
      {
        heap_Free(v3[1], v4);
      }
    }

    v5 = a2[1];
    if (v5)
    {
      heap_Free(v3[1], *v5);
      heap_Free(v3[1], a2[1]);
    }

    v6 = v3[1];

    return heap_Free(v6, a2);
  }

  return result;
}

uint64_t qp_str2id(uint64_t a1, uint64_t a2, char *__s, int *a4, unsigned int a5)
{
  v5 = a5;
  if (!a5)
  {
    v5 = strlen(__s);
  }

  v10 = *a2;
  if (!*a2)
  {
    if (*(a2 + 16) != 1)
    {
      v26 = 2585796618;
      v27 = heap_Calloc(*(a1 + 8), *(a2 + 24), 8);
      *(a2 + 8) = v27;
      if (v27)
      {
        v28 = heap_Alloc(*(a1 + 8), 16);
        if (v28)
        {
          v29 = v28;
          v30 = heap_Alloc(*(a1 + 8), v5 + 1);
          *(v29 + 8) = v30;
          if (v30)
          {
            memcpy(v30, __s, v5 + 1);
            v26 = 0;
            *(*(v29 + 8) + v5) = 0;
            *v29 = 0;
            *a2 = v29 | 1;
            **(a2 + 8) = v29;
            *(a2 + 20) = 1;
            *a4 = 0;
          }
        }
      }

      return v26;
    }

    goto LABEL_31;
  }

  for (; (v10 & 1) == 0; v10 = *(*v10 + 8 * v18))
  {
    v11 = *(v10 + 12);
    if (v11 >= v5)
    {
      v13 = *(v10 + 8);
      v15 = 1;
    }

    else
    {
      v12 = __s[v11];
      v13 = *(v10 + 8);
      if ((v13 & 0x10000) != 0)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v15 = 1 << ((((v14 + 254) ^ 0xF) & v12) >> (8 - 4 * v14));
    }

    if ((v15 & v13) != 0)
    {
      v16 = (((v13 & (v15 - 1)) >> 1) & 0x5555) + (v13 & (v15 - 1) & 0x5555);
      v17 = (((((v16 >> 2) & 0x33333333) + (v16 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v16 >> 2) & 0x33333333) + (v16 & 0x33333333)) & 0xF0F0F0F);
      v18 = (v17 & 0xF) + (v17 >> 8);
    }

    else
    {
      v18 = 0;
    }
  }

  v19 = v10 & 0xFFFFFFFFFFFFFFFELL;
  if (v5)
  {
    v20 = *(v19 + 8);
    if (*__s == *v20)
    {
      v21 = 0;
      v22 = v20 + 1;
      do
      {
        if (v5 - 1 == v21)
        {
          goto LABEL_26;
        }

        v23 = __s[v21 + 1];
        v24 = v22[v21++];
      }

      while (v23 == v24);
      v25 = v21 < v5;
    }

    else
    {
      LODWORD(v21) = 0;
      v25 = 1;
    }

    if (*(a2 + 16) == 1)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (!*(*(v19 + 8) + v5))
  {
    v26 = 0;
    v31 = *v19;
    goto LABEL_39;
  }

  if (*(a2 + 16) == 1)
  {
LABEL_31:
    v26 = 0;
    v31 = -1;
LABEL_39:
    *a4 = v31;
    return v26;
  }

  v25 = 0;
  LODWORD(v21) = v5;
LABEL_32:
  v26 = 2585796618;
  v32 = heap_Alloc(*(a1 + 8), 16);
  if (!v32)
  {
    return v26;
  }

  v33 = v32;
  v34 = heap_Calloc(*(a1 + 8), 3, 8);
  if (!v34)
  {
    return v26;
  }

  v91 = v34;
  v35 = heap_Alloc(*(a1 + 8), v5 + 1);
  *(v33 + 8) = v35;
  if (!v35)
  {
    goto LABEL_41;
  }

  memcpy(v35, __s, v5 + 1);
  *(*(v33 + 8) + v5) = 0;
  v36 = *(a2 + 20);
  *(a2 + 20) = v36 + 1;
  *v33 = v36;
  *a4 = v36;
  v37 = *v33;
  if (*v33 != *(a2 + 24))
  {
    v39 = *(a2 + 8);
    v41 = v91;
    v40 = v25;
    goto LABEL_44;
  }

  v38 = v37 + (v37 >> 1);
  *(a2 + 24) = v38;
  v39 = heap_Realloc(*(a1 + 8), *(a2 + 8), 8 * v38);
  v40 = v25;
  if (!v39)
  {
LABEL_41:
    v26 = 0;
    goto LABEL_42;
  }

  *(a2 + 8) = v39;
  v37 = *v33;
  v41 = v91;
LABEL_44:
  *(v39 + 8 * v37) = v33;
  if (v40)
  {
    v44 = *(v19 + 8);
    v45 = strlen(v44);
    v46 = __s[v21];
    if (v45 <= v21)
    {
      v48 = 1;
      v49 = 1 << (__s[v21] >> 4);
      v47 = v44[v21];
    }

    else
    {
      v47 = v44[v21];
      if ((v47 ^ v46) >= 0x10)
      {
        v48 = 1;
      }

      else
      {
        v48 = 2;
      }

      v49 = 1 << ((((v48 + 254) ^ 0xF) & v46) >> (8 - 4 * v48));
    }

    v41 = v91;
  }

  else
  {
    v47 = *(*(v19 + 8) + v21);
    v49 = 1;
    v48 = 1;
  }

  v50 = v33 | 1;
  *v41 = v33 | 1;
  v51 = *a2;
  v41[2] = 0;
  if (v51)
  {
    v90 = 0;
    v61 = v49;
LABEL_76:
    v62 = 0;
    v41[1] = v51;
    v63 = 1;
    do
    {
      v64 = *(a1 + 8);
      if (v63)
      {
        v62 = heap_Calloc(v64, 1, 16);
        if (!v62)
        {
          return v26;
        }
      }

      else
      {
        heap_Free(v64, v62);
        v62 = 0;
      }

      v63 = v62 == 0;
    }

    while (!v62 || (v62 & 1) != 0);
    v65 = v91[2];
    v66 = 1 << ((((v48 + 254) ^ 0xF) & v47) >> (8 - 4 * v48));
    if (!v47)
    {
      v66 = 1;
    }

    v67 = ((v48 << 16) - 0x10000) | v61;
    *(v62 + 8) = v66 | v67;
    *(v62 + 12) = v21;
    v68 = v61 - 1;
    v69 = ((((v66 | v67) & v68) >> 1) & 0x5555) + ((v66 | v67) & v68 & 0x5555);
    v70 = (((((v69 >> 2) & 0x33333333) + (v69 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v69 >> 2) & 0x33333333) + (v69 & 0x33333333)) & 0xF0F0F0F);
    v71 = (v70 & 0xF) + (v70 >> 8) + 1;
    v72 = v66 - 1;
    v73 = (((v72 & v67) >> 1) & 0x5555) + (v72 & v67 & 0x5555);
    v74 = (((((v73 >> 2) & 0x33333333) + (v73 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v73 >> 2) & 0x33333333) + (v73 & 0x33333333)) & 0xF0F0F0F);
    v75 = (v74 & 0xF) + (v74 >> 8);
    if (v71 <= v75 + 1)
    {
      v76 = v75 + 1;
    }

    else
    {
      v76 = v71;
    }

    if (v76 <= 2)
    {
      v77 = 2;
    }

    else
    {
      v77 = v76;
    }

    v78 = heap_Calloc(*(a1 + 8), v77, 8);
    v43 = v91;
    *v62 = v78;
    if (v78)
    {
      v26 = 0;
      v79 = *(v62 + 8);
      v80 = (((v79 & v68) >> 1) & 0x5555) + (v79 & v68 & 0x5555);
      v81 = (((((v80 >> 2) & 0x33333333) + (v80 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v80 >> 2) & 0x33333333) + (v80 & 0x33333333)) & 0xF0F0F0F);
      *(v78 + 8 * ((v81 & 0xF) + (v81 >> 8))) = *v91;
      v82 = (((v79 & v72) >> 1) & 0x5555) + (v79 & v72 & 0x5555);
      v83 = (((((v82 >> 2) & 0x33333333) + (v82 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v82 >> 2) & 0x33333333) + (v82 & 0x33333333)) & 0xF0F0F0F);
      *(*v62 + 8 * ((v83 & 0xF) + (v83 >> 8))) = v91[1];
      v84 = (v65 + 8 * v90);
      if (!v65)
      {
        v84 = a2;
      }

      *v84 = v62;
    }

    goto LABEL_95;
  }

  v52 = 0;
  while (1)
  {
    v53 = *(v51 + 12);
    if (v53 >= v5)
    {
      v55 = 1;
    }

    else
    {
      v54 = (*(v51 + 10) & 1) != 0 ? 2 : 1;
      v55 = 1 << ((((v54 + 254) ^ 0xF) & __s[v53]) >> (8 - 4 * v54));
    }

    if (v53 == v21)
    {
      break;
    }

    if (v53 > v21)
    {
      goto LABEL_74;
    }

    v56 = *(v51 + 8);
LABEL_70:
    v58 = *v51;
    v41[2] = *v51;
    if ((v55 & v56) != 0)
    {
      v59 = (((v56 & (v55 - 1)) >> 1) & 0x5555) + (v56 & (v55 - 1) & 0x5555);
      v60 = (((((v59 >> 2) & 0x33333333) + (v59 & 0x33333333)) >> 4) & 0xFFFFFF0F) + ((((v59 >> 2) & 0x33333333) + (v59 & 0x33333333)) & 0xF0F0F0F);
      v52 = (v60 & 0xF) + (v60 >> 8);
    }

    else
    {
      v52 = 0;
    }

    v51 = *(v58 + 8 * v52);
    if (v51)
    {
LABEL_74:
      v61 = v49;
      v90 = v52;
      goto LABEL_76;
    }
  }

  v56 = *(v51 + 8);
  if ((v56 & 0x10000) != 0)
  {
    v57 = 2;
  }

  else
  {
    v57 = 1;
  }

  if (v48 != v57)
  {
    if (v48 < v57)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  v92 = 0;
  v85 = v49;
  twigoffmax(&v92 + 1, &v92, v51, v49);
  v86 = v92;
  v87 = heap_Realloc(*(a1 + 8), *v51, 8 * (v92 + 1));
  if (v87)
  {
    v88 = v87;
    v89 = (v87 + 8 * HIDWORD(v92));
    memmove(v89 + 1, v89, 8 * (v86 - HIDWORD(v92)));
    v26 = 0;
    *v89 = v50;
    *v51 = v88;
    *(v51 + 8) |= v85;
  }

LABEL_42:
  v43 = v91;
LABEL_95:
  heap_Free(*(a1 + 8), v43);
  return v26;
}

uint64_t rdr_new(uint64_t a1, int a2, void *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 64);
  if (v6)
  {
    v7 = v6;
    *v6 = a1;
    *(v6 + 8) = a2;
    *(v6 + 32) = 0;
    *(v6 + 20) = 0;
    *(v6 + 12) = 0;
    v8 = qrk_new(a1, (v6 + 40));
    if ((v8 & 0x80000000) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = qrk_new(a1, v7 + 6);
      if ((v9 & 0x80000000) == 0)
      {
        v7[7] = 0;
LABEL_16:
        *a3 = v7;
        return v9;
      }
    }

    v10 = v7[5];
    if (v10)
    {
      if (*(v10 + 8))
      {
        heap_Free(*(a1 + 8), *(v10 + 8));
        v10 = v7[5];
      }

      heap_Free(*(a1 + 8), v10);
    }

    v11 = v7[6];
    if (v11)
    {
      if (*(v11 + 8))
      {
        heap_Free(*(a1 + 8), *(v11 + 8));
        v11 = v7[6];
      }

      heap_Free(*(a1 + 8), v11);
    }

    heap_Free(*(a1 + 8), v7);
    v7 = 0;
    goto LABEL_16;
  }

  return 2585796618;
}

uint64_t rdr_new_qp(uint64_t a1, int a2, void *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 64);
  if (v6)
  {
    v7 = v6;
    *v6 = a1;
    *(v6 + 8) = a2;
    *(v6 + 32) = 0;
    *(v6 + 20) = 0;
    *(v6 + 12) = 0;
    v8 = qp_new(a1, (v6 + 40));
    if ((v8 & 0x80000000) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = qp_new(a1, v7 + 6);
      if ((v9 & 0x80000000) == 0)
      {
        v7[7] = 0;
LABEL_16:
        *a3 = v7;
        return v9;
      }
    }

    v10 = v7[5];
    if (v10)
    {
      if (*(v10 + 8))
      {
        heap_Free(*(a1 + 8), *(v10 + 8));
        v10 = v7[5];
      }

      heap_Free(*(a1 + 8), v10);
    }

    v11 = v7[6];
    if (v11)
    {
      if (*(v11 + 8))
      {
        heap_Free(*(a1 + 8), *(v11 + 8));
        v11 = v7[6];
      }

      heap_Free(*(a1 + 8), v11);
    }

    heap_Free(*(a1 + 8), v7);
    v7 = 0;
    goto LABEL_16;
  }

  return 2585796618;
}

void *rdr_free(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v4 = 0;
      do
      {
        pat_free(v2, *(*(a1 + 32) + 8 * v4++));
      }

      while (v4 < *(a1 + 24));
      v3 = *(a1 + 32);
    }

    heap_Free(*(v2 + 8), v3);
  }

  qrk_free(v2);
  qrk_free(v2);
  wapiti_rules_unload(v2, *(a1 + 56));
  v5 = *(v2 + 8);

  return heap_Free(v5, a1);
}

void *rdr_free_qp(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v4 = 0;
      do
      {
        pat_free(v2, *(*(a1 + 32) + 8 * v4++));
      }

      while (v4 < *(a1 + 24));
      v3 = *(a1 + 32);
    }

    heap_Free(*(v2 + 8), v3);
  }

  qp_free(v2, *(a1 + 40));
  qp_free(v2, *(a1 + 48));
  wapiti_rules_unload(v2, *(a1 + 56));
  v5 = *(v2 + 8);

  return heap_Free(v5, a1);
}

void *rdr_freeraw(uint64_t a1, unsigned int *a2)
{
  if (*a2)
  {
    v4 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a2 + 1) + 8 * v4++));
    }

    while (v4 < *a2);
  }

  heap_Free(*(a1 + 8), *(a2 + 1));
  v5 = *(a1 + 8);

  return heap_Free(v5, a2);
}

void *rdr_freeseq(uint64_t a1, uint64_t a2)
{
  heap_Free(*(a1 + 8), *(a2 + 8));
  v4 = *(a2 + 16);
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
  }

  v5 = *(a1 + 8);

  return heap_Free(v5, a2);
}

void *rdr_freedat(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = 0;
    do
    {
      rdr_freeseq(a1, *(*(a2 + 16) + 8 * v4++));
    }

    while (v4 < *(a2 + 8));
  }

  heap_Free(*(a1 + 8), *(a2 + 16));
  v5 = *(a1 + 8);

  return heap_Free(v5, a2);
}

uint64_t rdr_readraw(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v7 = *a1;
  *a4 = 0;
  if (!*a2 || !**a2)
  {
    return 0;
  }

  v9 = heap_Alloc(*(v7 + 8), 16);
  if (v9)
  {
    v10 = heap_Calloc(*(v7 + 8), a3, 8);
    *(v9 + 8) = v10;
    if (v10)
    {
      if (!a3)
      {
        v18 = v10;
        v4 = 0;
        goto LABEL_24;
      }

      v11 = 0;
      v12 = MEMORY[0x1E69E9830];
LABEL_8:
      v13 = a2[v11];
      if (v13)
      {
        v14 = strlen(a2[v11]);
        if (!v14)
        {
          goto LABEL_19;
        }

        v15 = v14;
        while (1)
        {
          v16 = v13[v15 - 1];
          if (v16 < 0)
          {
            if (!__maskrune(v13[v15 - 1], 0x4000uLL))
            {
LABEL_17:
              *(*(v9 + 8) + 8 * v11) = heap_Calloc(*(v7 + 8), 1, (v15 + 1));
              v17 = *(*(v9 + 8) + 8 * v11);
              if (!v17)
              {
                if (v11)
                {
                  goto LABEL_37;
                }

                goto LABEL_30;
              }

              strncpy(v17, v13, v15);
LABEL_19:
              if (++v11 == a3)
              {
                v11 = a3;
                goto LABEL_26;
              }

              goto LABEL_8;
            }
          }

          else if ((*(v12 + 4 * v16 + 60) & 0x4000) == 0)
          {
            goto LABEL_17;
          }

          if (!--v15)
          {
            goto LABEL_19;
          }
        }
      }

      if (v11)
      {
LABEL_26:
        v19 = heap_Realloc(*(v7 + 8), *(v9 + 8), 8 * v11);
        *(v9 + 8) = v19;
        if (!v19)
        {
          goto LABEL_36;
        }

        v4 = 0;
        *v9 = v11;
        goto LABEL_37;
      }

      v4 = 0;
LABEL_30:
      if (!*(v9 + 8))
      {
        goto LABEL_36;
      }

      v20 = 0;
      do
      {
        v21 = *(*(v9 + 8) + 8 * v20);
        if (v21)
        {
          heap_Free(*(v7 + 8), v21);
        }

        ++v20;
      }

      while (a3 != v20);
      v18 = *(v9 + 8);
LABEL_24:
      heap_Free(*(v7 + 8), v18);
    }

LABEL_36:
    heap_Free(*(v7 + 8), v9);
    v9 = 0;
  }

LABEL_37:
  *a4 = v9;
  return v4;
}

uint64_t rdr_raw2seq(uint64_t *a1, unsigned int *a2, int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v5 = a4;
  v9 = *a2;
  v10 = *a1;
  *a4 = 0;
  v11 = heap_Alloc(*(v10 + 8), 8 * v9 + 32);
  if (!v11)
  {
    v38 = 0;
    goto LABEL_138;
  }

  v12 = v11;
  v90 = a1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v13 = (v11 + 8);
  v14 = heap_Calloc(*(v10 + 8), v9, 4);
  v13[1] = v14;
  if (!v14)
  {
    v38 = 0;
    goto LABEL_135;
  }

  *v13 = 0;
  if (a3 == 1)
  {
    v15 = heap_Calloc(*(v10 + 8), v9, 8);
    *v13 = v15;
    if (!v15)
    {
LABEL_76:
      v38 = 0;
      goto LABEL_126;
    }
  }

  v87 = v5;
  v88 = v13;
  if (v9)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E9830];
    while (1)
    {
      v18 = *(*(a2 + 1) + 8 * v16);
      if (!v18)
      {
        break;
      }

      v19 = v18 - 1;
      do
      {
        v20 = *(v19 + 1);
        if (v20 < 0)
        {
          v21 = __maskrune(*(v19 + 1), 0x4000uLL);
        }

        else
        {
          v21 = *(v17 + 4 * v20 + 60) & 0x4000;
        }

        ++v19;
      }

      while (v21);
      v22 = strlen(v19) + 1;
      v23 = heap_Alloc(*(v10 + 8), v22);
      if (!v23)
      {
        break;
      }

      v24 = v23;
      memcpy(v23, v19, v22);
      v25 = strlen(v24);
      v26 = heap_Alloc(*(v10 + 8), 8 * ((v25 >> 1) + 1));
      if (!v26)
      {
        break;
      }

      v27 = v26;
      if (!*v24)
      {
        v28 = 0;
        goto LABEL_35;
      }

      v28 = 0;
LABEL_18:
      v27[v28++] = v24;
      v29 = *v24;
      if (*v24)
      {
        do
        {
          if ((v29 & 0x80) != 0)
          {
            if (__maskrune(v29, 0x4000uLL))
            {
LABEL_25:
              if (*v24)
              {
                *v24 = 0;
                while (1)
                {
                  v32 = *++v24;
                  v31 = v32;
                  if (!v32)
                  {
                    break;
                  }

                  if ((v31 & 0x80) != 0)
                  {
                    if (!__maskrune(v31, 0x4000uLL))
                    {
LABEL_32:
                      if (*v24)
                      {
                        goto LABEL_18;
                      }

                      goto LABEL_35;
                    }
                  }

                  else if ((*(v17 + 4 * v31 + 60) & 0x4000) == 0)
                  {
                    goto LABEL_32;
                  }
                }
              }

              break;
            }
          }

          else if ((*(v17 + 4 * v29 + 60) & 0x4000) != 0)
          {
            goto LABEL_25;
          }

          v30 = *++v24;
          v29 = v30;
        }

        while (v30);
      }

LABEL_35:
      v33 = heap_Alloc(*(v10 + 8), 8 * v28);
      *&v12[2 * v16 + 6] = v33;
      if (!v33)
      {
        break;
      }

      *(*(v12 + 2) + 4 * v16) = v28;
      memcpy(v33, v27, 8 * v28);
      heap_Free(*(v10 + 8), v27);
      if (++v16 == v9)
      {
        goto LABEL_37;
      }
    }

LABEL_124:
    v38 = 0;
    goto LABEL_125;
  }

LABEL_37:
  *v12 = v9;
  v34 = v90[7];
  if (v34)
  {
    v35 = wapiti_rules_apply(v10, v34, v12);
    if ((v35 & 0x80000000) != 0)
    {
      v38 = 0;
LABEL_74:
      v4 = v35;
      goto LABEL_125;
    }
  }

  v36 = *v90;
  v37 = *v12;
  if (!*(v90 + 6))
  {
    if (*(v90 + 2))
    {
      v60 = **(v12 + 2);
    }

    else if (v37)
    {
      v61 = 0;
      v60 = 0;
      v62 = *(v12 + 2);
      v85 = *v12;
      do
      {
        if (*(v62 + 4 * v61))
        {
          v63 = 0;
          do
          {
            v64 = **(*&v12[2 * v61 + 6] + 8 * v63);
            if (v64 == 42)
            {
              v60 += 2;
            }

            else if (v64 == 98 || v64 == 117)
            {
              ++v60;
            }

            else
            {
              wapiti_fatal(*(v36 + 32), "invalid feature: %s", *(*&v12[2 * v61 + 6] + 8 * v63));
              v62 = *(v12 + 2);
            }

            ++v63;
          }

          while (v63 < *(v62 + 4 * v61));
        }

        ++v61;
        v37 = v85;
      }

      while (v61 != v85);
    }

    else
    {
      v60 = 0;
    }

    v38 = heap_Alloc(*(v36 + 8), 32 * v37 + 56);
    if (v38)
    {
      v65 = heap_Alloc(*(v36 + 8), 4 * v60);
      *(v38 + 8) = v65;
      v13 = v88;
      if (!v65)
      {
        v38 = 0;
        goto LABEL_118;
      }

      *v38 = v37;
      *(v38 + 16) = 0;
      if (!v37)
      {
        v4 = 0;
        goto LABEL_118;
      }

      v66 = v65;
      v67 = 0;
      v4 = 0;
      v68 = v38 + 24;
      v89 = v12 + 6;
      v69 = *(v12 + 2);
      v86 = v37;
      do
      {
        v70 = v68 + 32 * v67;
        *v70 = 0xFFFFFFFFLL;
        *(v70 + 16) = v66;
        if (*(v69 + 4 * v67))
        {
          v71 = 0;
          do
          {
            LODWORD(__s) = 0;
            v72 = *(*&v89[2 * v67] + 8 * v71);
            if (*(v90 + 2) || *v72 != 98)
            {
              v4 = rdr_mapobs(v90, v72, &__s);
              if ((v4 & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

              if (__s != -1)
              {
                *v66++ = __s;
                ++*(v70 + 4);
              }
            }

            ++v71;
            v69 = *(v12 + 2);
          }

          while (v71 < *(v69 + 4 * v67));
          v13 = v88;
        }

        *(v70 + 8) = 0;
        if (!*(v90 + 2))
        {
          *(v70 + 24) = v66;
          if (*(v69 + 4 * v67))
          {
            v73 = 0;
            do
            {
              LODWORD(__s) = 0;
              v74 = *(*&v89[2 * v67] + 8 * v73);
              if (*v74 != 117)
              {
                v4 = rdr_mapobs(v90, v74, &__s);
                if ((v4 & 0x80000000) != 0)
                {
                  goto LABEL_124;
                }

                if (__s != -1)
                {
                  *v66++ = __s;
                  ++*(v70 + 8);
                }
              }

              ++v73;
              v69 = *(v12 + 2);
            }

            while (v73 < *(v69 + 4 * v67));
            v13 = v88;
          }
        }

        v68 = v38 + 24;
        ++v67;
      }

      while (v67 != v86);
      if (!*v13)
      {
        goto LABEL_118;
      }

      v75 = 0;
      do
      {
        v76 = *(*v88 + v75);
        LODWORD(__s) = 0;
        v4 = qrk_str2id(v36, v90[5], v76, &__s, 0);
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        *(v38 + 4 * v75 + 24) = __s;
        v75 += 8;
      }

      while (8 * v86 != v75);
    }

LABEL_125:
    v5 = v87;
    v13 = v88;
    goto LABEL_126;
  }

  v38 = heap_Alloc(*(v36 + 8), 32 * v37 + 56);
  if (!v38)
  {
    goto LABEL_125;
  }

  v39 = heap_Alloc(*(v36 + 8), 4 * v37 * (*(v90 + 4) + *(v90 + 3)));
  *(v38 + 8) = v39;
  v5 = v87;
  v13 = v88;
  if (!v39)
  {
    heap_Free(*(v36 + 8), v38);
    goto LABEL_76;
  }

  *v38 = v37;
  *(v38 + 16) = 0;
  if (!v37)
  {
    v4 = 0;
    goto LABEL_126;
  }

  v40 = v38 + 24;
  v41 = (v38 + 48);
  v42 = 4 * *(v90 + 3);
  v43 = v42 + 4 * *(v90 + 4);
  v44 = v37;
  do
  {
    *(v41 - 6) = -1;
    *(v41 - 1) = v39;
    *v41 = v39 + v42;
    v41 += 4;
    v39 += v43;
    --v44;
  }

  while (v44);
  v45 = 0;
  v4 = 0;
  LODWORD(v46) = *(v90 + 6);
  v84 = v37;
  do
  {
    v47 = v40 + 32 * v45;
    *(v47 + 4) = 0;
    *(v47 + 8) = 0;
    if (v46)
    {
      v48 = 0;
      v49 = v90;
      while (1)
      {
        __s = 0;
        v91 = 0;
        v35 = pat_exec(v36, *(*(v49 + 32) + 8 * v48), v12, v45, &__s);
        if ((v35 & 0x80000000) != 0)
        {
          goto LABEL_74;
        }

        v4 = rdr_mapobs(v49, __s, &v91);
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v50 = v91;
        if (v91 != -1)
        {
          break;
        }

        v55 = *(v36 + 8);
        v51 = __s;
LABEL_60:
        heap_Free(v55, v51);
        ++v48;
        v49 = v90;
        v46 = *(v90 + 6);
        if (v48 >= v46)
        {
          v37 = v84;
          v40 = v38 + 24;
          goto LABEL_62;
        }
      }

      v51 = __s;
      v52 = *__s;
      switch(v52)
      {
        case '*':
          v56 = *(v47 + 16);
          v57 = *(v47 + 4);
          *(v47 + 4) = v57 + 1;
          *(v56 + 4 * v57) = v50;
          v50 = v91;
          break;
        case 'b':
          break;
        case 'u':
          v53 = *(v47 + 16);
          v54 = *(v47 + 4);
          *(v47 + 4) = v54 + 1;
LABEL_58:
          *(v53 + 4 * v54) = v50;
          goto LABEL_59;
        default:
LABEL_59:
          v55 = *(v36 + 8);
          goto LABEL_60;
      }

      v53 = *(v47 + 24);
      v54 = *(v47 + 8);
      *(v47 + 8) = v54 + 1;
      goto LABEL_58;
    }

LABEL_62:
    ++v45;
  }

  while (v45 != v37);
  v13 = v88;
  if (*v88)
  {
    v58 = 0;
    do
    {
      v59 = *(*v88 + v58);
      LODWORD(__s) = 0;
      v4 = qrk_str2id(v36, v90[5], v59, &__s, 0);
      if ((v4 & 0x80000000) != 0)
      {
        break;
      }

      *(v38 + 4 * v58 + 24) = __s;
      v58 += 8;
    }

    while (8 * v37 != v58);
    goto LABEL_125;
  }

LABEL_118:
  v5 = v87;
LABEL_126:
  v77 = *(v12 + 2);
  if (v77)
  {
    if (v9)
    {
      v78 = v13;
      v79 = v5;
      v80 = 0;
      v81 = v12 + 6;
      do
      {
        if (*(*(v12 + 2) + 4 * v80))
        {
          v82 = *&v81[2 * v80];
          if (v82)
          {
            heap_Free(*(v10 + 8), *v82);
            heap_Free(*(v10 + 8), *&v81[2 * v80]);
          }
        }

        ++v80;
      }

      while (v9 != v80);
      v77 = *(v12 + 2);
      v5 = v79;
      v13 = v78;
    }

    heap_Free(*(v10 + 8), v77);
  }

LABEL_135:
  if (*v13)
  {
    heap_Free(*(v10 + 8), *v13);
  }

  heap_Free(*(v10 + 8), v12);
LABEL_138:
  *v5 = v38;
  return v4;
}

uint64_t rdr_raw2seq_qp(uint64_t a1, unsigned int *a2, int a3, uint64_t *a4)
{
  v4 = 2585796618;
  if (!a4)
  {
    return 2585796615;
  }

  v5 = a4;
  v9 = *a2;
  v10 = *a1;
  *a4 = 0;
  v11 = heap_Alloc(*(v10 + 8), 8 * v9 + 32);
  if (!v11)
  {
    v41 = 0;
LABEL_105:
    *v5 = v41;
    return v4;
  }

  v12 = v11;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v13 = (v11 + 8);
  v93 = v9;
  v14 = heap_Calloc(*(v10 + 8), v9, 4);
  v13[1] = v14;
  if (!v14)
  {
    v41 = 0;
LABEL_102:
    if (*v13)
    {
      heap_Free(*(v10 + 8), *v13);
    }

    heap_Free(*(v10 + 8), v12);
    goto LABEL_105;
  }

  v91 = v5;
  *v13 = 0;
  v15 = a3 == 1;
  v16 = v9;
  if (v15)
  {
    v17 = heap_Calloc(*(v10 + 8), v9, 8);
    *v13 = v17;
    if (!v17)
    {
      v41 = 0;
      goto LABEL_92;
    }
  }

  v90 = v13;
  if (v9)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E9830];
    do
    {
      v20 = *(*(a2 + 1) + 8 * v18);
      if (!v20)
      {
        break;
      }

      v21 = v20 - 1;
      do
      {
        v22 = *(v21 + 1);
        if (v22 < 0)
        {
          v23 = __maskrune(*(v21 + 1), 0x4000uLL);
        }

        else
        {
          v23 = *(v19 + 4 * v22 + 60) & 0x4000;
        }

        ++v21;
      }

      while (v23);
      v24 = strlen(v21) + 1;
      v25 = heap_Alloc(*(v10 + 8), v24);
      if (!v25)
      {
        break;
      }

      v26 = v25;
      memcpy(v25, v21, v24);
      v27 = strlen(v26);
      v28 = heap_Alloc(*(v10 + 8), 8 * ((v27 >> 1) + 1));
      if (!v28)
      {
        break;
      }

      v29 = v28;
      if (!*v26)
      {
        v30 = 0;
        goto LABEL_36;
      }

      v30 = 0;
LABEL_19:
      v29[v30++] = v26;
      v31 = *v26;
      if (*v26)
      {
        do
        {
          if ((v31 & 0x80) != 0)
          {
            if (__maskrune(v31, 0x4000uLL))
            {
LABEL_26:
              if (*v26)
              {
                *v26 = 0;
                while (1)
                {
                  v34 = *++v26;
                  v33 = v34;
                  if (!v34)
                  {
                    break;
                  }

                  if ((v33 & 0x80) != 0)
                  {
                    if (!__maskrune(v33, 0x4000uLL))
                    {
LABEL_33:
                      if (*v26)
                      {
                        goto LABEL_19;
                      }

                      goto LABEL_36;
                    }
                  }

                  else if ((*(v19 + 4 * v33 + 60) & 0x4000) == 0)
                  {
                    goto LABEL_33;
                  }
                }
              }

              break;
            }
          }

          else if ((*(v19 + 4 * v31 + 60) & 0x4000) != 0)
          {
            goto LABEL_26;
          }

          v32 = *++v26;
          v31 = v32;
        }

        while (v32);
      }

LABEL_36:
      v35 = heap_Alloc(*(v10 + 8), 8 * v30);
      *&v12[2 * v18 + 6] = v35;
      if (!v35)
      {
        break;
      }

      *(*(v12 + 2) + 4 * v18) = v30;
      memcpy(v35, v29, 8 * v30);
      heap_Free(*(v10 + 8), v29);
      ++v18;
    }

    while (v18 != v93);
  }

  v16 = v93;
  *v12 = v93;
  v36 = *(a1 + 56);
  if (v36)
  {
    v37 = wapiti_rules_apply(v10, v36, v12);
    if ((v37 & 0x80000000) != 0)
    {
      v41 = 0;
      v4 = v37;
LABEL_91:
      v13 = v90;
LABEL_92:
      v68 = *(v12 + 2);
      if (v68)
      {
        v5 = v91;
        if (v16)
        {
          v69 = v41;
          v70 = 0;
          v71 = v12 + 6;
          do
          {
            if (*(*(v12 + 2) + 4 * v70))
            {
              v72 = *&v71[2 * v70];
              if (v72)
              {
                heap_Free(*(v10 + 8), *v72);
                heap_Free(*(v10 + 8), *&v71[2 * v70]);
              }
            }

            ++v70;
          }

          while (v16 != v70);
          v68 = *(v12 + 2);
          v41 = v69;
        }

        heap_Free(*(v10 + 8), v68);
      }

      else
      {
        v5 = v91;
      }

      goto LABEL_102;
    }
  }

  v38 = *a1;
  v39 = *v12;
  v92 = v39;
  if (!*(a1 + 24))
  {
    if (*(a1 + 8))
    {
      v63 = **(v12 + 2);
    }

    else if (v39)
    {
      v64 = 0;
      v63 = 0;
      v65 = *(v12 + 2);
      do
      {
        if (*(v65 + 4 * v64))
        {
          v66 = 0;
          do
          {
            v67 = **(*&v12[2 * v64 + 6] + 8 * v66);
            if (v67 == 42)
            {
              v63 += 2;
            }

            else if (v67 == 98 || v67 == 117)
            {
              ++v63;
            }

            else
            {
              wapiti_fatal(*(v38 + 32), "invalid feature: %s", *(*&v12[2 * v64 + 6] + 8 * v66));
              v65 = *(v12 + 2);
            }

            ++v66;
          }

          while (v66 < *(v65 + 4 * v64));
        }

        ++v64;
        v39 = v92;
      }

      while (v64 != v92);
    }

    else
    {
      v63 = 0;
    }

    v74 = heap_Alloc(*(v38 + 8), 32 * v39 + 56);
    if (!v74)
    {
      return v4;
    }

    v41 = v74;
    v75 = heap_Alloc(*(v38 + 8), 4 * v63);
    *(v41 + 8) = v75;
    v13 = v90;
    v16 = v93;
    if (!v75)
    {
      return v4;
    }

    *v41 = v92;
    *(v41 + 16) = 0;
    if (v92)
    {
      v76 = v75;
      v77 = 0;
      v89 = v41;
      v78 = v41 + 24;
      v79 = v12 + 6;
      v80 = *(v12 + 2);
      v88 = v78;
      do
      {
        v81 = v78 + 32 * v77;
        *v81 = 0xFFFFFFFFLL;
        *(v81 + 16) = v76;
        if (*(v80 + 4 * v77))
        {
          v82 = 0;
          do
          {
            LODWORD(__s) = 0;
            v83 = *(*&v79[2 * v77] + 8 * v82);
            if (*(a1 + 8) || *v83 != 98)
            {
              v52 = rdr_mapobs_qp(a1, v83, &__s);
              if ((v52 & 0x80000000) != 0)
              {
                return v52;
              }

              if (__s != -1)
              {
                *v76++ = __s;
                ++*(v81 + 4);
              }
            }

            ++v82;
            v80 = *(v12 + 2);
          }

          while (v82 < *(v80 + 4 * v77));
          v16 = v93;
        }

        *(v81 + 8) = 0;
        if (!*(a1 + 8))
        {
          *(v81 + 24) = v76;
          if (*(v80 + 4 * v77))
          {
            v84 = 0;
            do
            {
              LODWORD(__s) = 0;
              v85 = *(*&v79[2 * v77] + 8 * v84);
              if (*v85 != 117)
              {
                v52 = rdr_mapobs_qp(a1, v85, &__s);
                if ((v52 & 0x80000000) != 0)
                {
                  return v52;
                }

                if (__s != -1)
                {
                  *v76++ = __s;
                  ++*(v81 + 8);
                }
              }

              ++v84;
              v80 = *(v12 + 2);
            }

            while (v84 < *(v80 + 4 * v77));
            v16 = v93;
          }
        }

        ++v77;
        v78 = v88;
      }

      while (v77 != v92);
      v13 = v90;
      if (*v90)
      {
        v86 = 0;
        do
        {
          v87 = *(*v90 + v86);
          LODWORD(__s) = 0;
          v4 = qp_str2id(v38, *(a1 + 40), v87, &__s, 0);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          *(v89 + 4 * v86 + 24) = __s;
          v86 += 8;
        }

        while (8 * v92 != v86);
      }

      else
      {
        v4 = 0;
      }

LABEL_142:
      v41 = v89;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_92;
  }

  v40 = heap_Alloc(*(v38 + 8), 32 * v39 + 56);
  if (!v40)
  {
    return v4;
  }

  v41 = v40;
  v42 = heap_Alloc(*(v38 + 8), 4 * v39 * (*(a1 + 16) + *(a1 + 12)));
  *(v41 + 8) = v42;
  if (!v42)
  {
    heap_Free(*(v38 + 8), v41);
    return v4;
  }

  *v41 = v39;
  *(v41 + 16) = 0;
  if (!v39)
  {
    v4 = 0;
    goto LABEL_91;
  }

  v43 = v41 + 24;
  v89 = v41;
  v44 = (v41 + 48);
  v45 = 4 * *(a1 + 12);
  v46 = v45 + 4 * *(a1 + 16);
  v47 = v39;
  v13 = v90;
  do
  {
    *(v44 - 6) = -1;
    *(v44 - 1) = v42;
    *v44 = v42 + v45;
    v44 += 4;
    v42 += v46;
    --v47;
  }

  while (v47);
  v48 = 0;
  v4 = 0;
  LODWORD(v49) = *(a1 + 24);
  do
  {
    v50 = v43 + 32 * v48;
    *(v50 + 4) = 0;
    *(v50 + 8) = 0;
    if (v49)
    {
      v51 = 0;
      while (1)
      {
        __s = 0;
        v94 = 0;
        v52 = pat_exec(v38, *(*(a1 + 32) + 8 * v51), v12, v48, &__s);
        if ((v52 & 0x80000000) != 0)
        {
          return v52;
        }

        v4 = rdr_mapobs_qp(a1, __s, &v94);
        if ((v4 & 0x80000000) != 0)
        {
          return v4;
        }

        v53 = v94;
        if (v94 != -1)
        {
          break;
        }

        v58 = *(v38 + 8);
        v54 = __s;
LABEL_61:
        heap_Free(v58, v54);
        ++v51;
        v49 = *(a1 + 24);
        if (v51 >= v49)
        {
          v13 = v90;
          goto LABEL_63;
        }
      }

      v54 = __s;
      v55 = *__s;
      switch(v55)
      {
        case '*':
          v59 = *(v50 + 16);
          v60 = *(v50 + 4);
          *(v50 + 4) = v60 + 1;
          *(v59 + 4 * v60) = v53;
          v53 = v94;
          break;
        case 'b':
          break;
        case 'u':
          v56 = *(v50 + 16);
          v57 = *(v50 + 4);
          *(v50 + 4) = v57 + 1;
LABEL_59:
          *(v56 + 4 * v57) = v53;
          goto LABEL_60;
        default:
LABEL_60:
          v58 = *(v38 + 8);
          goto LABEL_61;
      }

      v56 = *(v50 + 24);
      v57 = *(v50 + 8);
      *(v50 + 8) = v57 + 1;
      goto LABEL_59;
    }

LABEL_63:
    ++v48;
  }

  while (v48 != v92);
  if (!*v13)
  {
    v41 = v89;
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    goto LABEL_92;
  }

  v61 = 0;
  while (1)
  {
    v62 = *(*v13 + v61);
    LODWORD(__s) = 0;
    v4 = qp_str2id(v38, *(a1 + 40), v62, &__s, 0);
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    *(v89 + 4 * v61 + 24) = __s;
    v61 += 8;
    if (8 * v92 == v61)
    {
      goto LABEL_142;
    }
  }
}

uint64_t rdr_mapobs(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    v7 = strlen(__s);
    v8 = heap_Alloc(*(v6 + 8), (v7 + 2));
    if (!v8)
    {
      return 2585796618;
    }

    v9 = v8;
    v14 = 0;
    *v8 = 117;
    strcpy(v8 + 1, __s);
    v10 = qrk_str2id(v6, *(a1 + 48), v9, &v14, 0);
    if ((v10 & 0x80000000) == 0)
    {
      heap_Free(*(v6 + 8), v9);
      *a3 = v14;
    }

    return v10;
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *a1;

    return qrk_str2id(v12, v11, __s, a3, 0);
  }
}

uint64_t rdr_mapobs_qp(uint64_t a1, char *__s, int *a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    v7 = strlen(__s);
    v8 = heap_Alloc(*(v6 + 8), (v7 + 2));
    if (!v8)
    {
      return 2585796618;
    }

    v9 = v8;
    v14 = 0;
    *v8 = 117;
    strcpy(v8 + 1, __s);
    v10 = qp_str2id(v6, *(a1 + 48), v9, &v14, 0);
    if ((v10 & 0x80000000) == 0)
    {
      heap_Free(*(v6 + 8), v9);
      *a3 = v14;
    }

    return v10;
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *a1;

    return qp_str2id(v12, v11, __s, a3, 0);
  }
}

uint64_t mdl_new(uint64_t a1, void *a2)
{
  v4 = heap_Calloc(*(*a1 + 8), 1, 32904);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *v5 = *a1;
    v5[14] = a1;
  }

  else
  {
    result = 2585796618;
    if (!a2)
    {
      return result;
    }

    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void *mdl_free(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  heap_Free(*(*a1 + 8), a1[7]);
  heap_Free(*(v5 + 8), a1[8]);
  heap_Free(*(v5 + 8), a1[9]);
  v6 = a1[10];
  if (v6)
  {
    xvm_free(v5, v6);
  }

  v7 = a1[11];
  if (a3 == 1)
  {
    if (v7)
    {
      heap_Free(*(v5 + 8), v7);
    }
  }

  else if (v7)
  {
    xvm_free_sparse(v5, v7);
  }

  v8 = a1[12];
  if (v8)
  {
    rdr_freedat(v5, v8);
  }

  v9 = a1[13];
  if (v9)
  {
    rdr_freedat(v5, v9);
  }

  v10 = a1[14];
  if (v10)
  {
    rdr_free(v10);
  }

  v11 = a1[15];
  if (v11)
  {
    heap_Free(*(v5 + 8), v11);
  }

  v12 = *(v5 + 8);

  return heap_Free(v12, a1);
}

void *mdl_free_qp(uint64_t *a1, int a2)
{
  v4 = *a1;
  heap_Free(*(*a1 + 8), a1[7]);
  heap_Free(*(v4 + 8), a1[8]);
  heap_Free(*(v4 + 8), a1[9]);
  v5 = a1[10];
  if (v5)
  {
    xvm_free(v4, v5);
  }

  v6 = a1[11];
  if (a2 == 1)
  {
    if (v6)
    {
      heap_Free(*(v4 + 8), v6);
    }
  }

  else if (v6)
  {
    xvm_free_sparse(v4, v6);
  }

  v7 = a1[12];
  if (v7)
  {
    rdr_freedat(v4, v7);
  }

  v8 = a1[13];
  if (v8)
  {
    rdr_freedat(v4, v8);
  }

  v9 = a1[14];
  if (v9)
  {
    rdr_free_qp(v9);
  }

  v10 = a1[15];
  if (v10)
  {
    heap_Free(*(v4 + 8), v10);
  }

  v11 = *(v4 + 8);

  return heap_Free(v11, a1);
}

uint64_t mdl_sync(uint64_t a1)
{
  v2 = *a1;
  started = kbsymtab_PhonStartId(*(*(a1 + 112) + 40));
  v4 = kbsymtab_PhonStartId(*(*(a1 + 112) + 48));
  v5 = v4;
  v6 = *(a1 + 44);
  if (*(a1 + 44) == __PAIR64__(v4, started))
  {
    return 0;
  }

  if (started)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    wapiti_fatal(*(v2 + 32), "cannot synchronize an empty model");
    v6 = *(a1 + 44);
  }

  if (v6 == started || v6 == 0)
  {
    v10 = *(a1 + 48);
    v9 = *(a1 + 52);
  }

  else
  {
    wapiti_warning(*(v2 + 32), "labels count changed, discarding the model");
    heap_Free(*(v2 + 8), *(a1 + 56));
    *(a1 + 56) = 0;
    heap_Free(*(v2 + 8), *(a1 + 64));
    *(a1 + 64) = 0;
    heap_Free(*(v2 + 8), *(a1 + 72));
    *(a1 + 72) = 0;
    v11 = *(a1 + 80);
    if (v11)
    {
      xvm_free(v2, v11);
      v9 = 0;
      v10 = 0;
      *(a1 + 80) = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  *(a1 + 44) = started;
  *(a1 + 48) = v5;
  v12 = heap_Realloc(*(v2 + 8), *(a1 + 56), v5);
  *(a1 + 56) = v12;
  v13 = heap_Realloc(*(v2 + 8), *(a1 + 64), 4 * v5);
  *(a1 + 64) = v13;
  v14 = heap_Realloc(*(v2 + 8), *(a1 + 72), 4 * v5);
  v15 = v14;
  *(a1 + 72) = v14;
  if (v12)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && v14 != 0)
  {
    v30 = v9;
    v20 = v5 - v10;
    if (v5 > v10)
    {
      v21 = v10;
      while (1)
      {
        v22 = *qrk_id2str(v2, *(*(a1 + 112) + 48), v21);
        if (v22 == 42)
        {
          break;
        }

        if (v22 == 117)
        {
          v23 = 1;
LABEL_40:
          *(v12 + v21) = v23;
LABEL_41:
          *(v13 + 4 * v21) = v9;
          v9 += started;
          v24 = *(v12 + v21);
          goto LABEL_42;
        }

        if (v22 == 98)
        {
          *(v12 + v21) = 2;
LABEL_43:
          *(v15 + 4 * v21) = v9;
          v9 += started * started;
          goto LABEL_44;
        }

        v24 = *(v12 + v21);
        if (v24)
        {
          goto LABEL_41;
        }

LABEL_42:
        if ((v24 & 2) != 0)
        {
          goto LABEL_43;
        }

LABEL_44:
        ++v21;
        if (!--v20)
        {
          goto LABEL_48;
        }
      }

      v23 = 3;
      goto LABEL_40;
    }

LABEL_48:
    *(a1 + 52) = v9;
    v25 = xvm_new(v2, v9);
    v26 = v25;
    if (v30)
    {
      if (v25)
      {
        v27 = 0;
        v28 = *(a1 + 80);
        do
        {
          *(v25 + v27) = *(v28 + v27);
          v27 += 4;
        }

        while (4 * v30 != v27);
        xvm_free(v2, v28);
        *(a1 + 80) = v26;
        goto LABEL_54;
      }
    }

    else
    {
      *(a1 + 80) = v25;
      if (v25)
      {
LABEL_54:
        if (v30 < v9)
        {
          bzero((v26 + 4 * v30), 4 * (v9 + ~v30) + 4);
        }

        qrk_lock(*(*(a1 + 112) + 40), 1);
        qrk_lock(*(*(a1 + 112) + 48), 1);
        return 0;
      }
    }

LABEL_57:
    heap_Free(*(v2 + 8), v12);
    *(a1 + 56) = 0;
    if (!v13)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v12)
  {
    goto LABEL_57;
  }

  if (v13)
  {
LABEL_27:
    heap_Free(*(v2 + 8), v13);
    *(a1 + 64) = 0;
  }

LABEL_28:
  if (v15)
  {
    heap_Free(*(v2 + 8), v15);
    *(a1 + 72) = 0;
  }

  v18 = 2585796618;
  v19 = *(a1 + 80);
  if (v19)
  {
    xvm_free(v2, v19);
    *(a1 + 80) = 0;
  }

  return v18;
}

uint64_t mdl_sync_sparse(uint64_t a1)
{
  v2 = *a1;
  started = kbsymtab_PhonStartId(*(*(a1 + 112) + 40));
  v4 = kbsymtab_PhonStartId(*(*(a1 + 112) + 48));
  v5 = v4;
  v6 = *(a1 + 44);
  if (*(a1 + 44) == __PAIR64__(v4, started))
  {
    return 0;
  }

  if (started)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    wapiti_fatal(*(v2 + 32), "cannot synchronize an empty model");
    v6 = *(a1 + 44);
  }

  if (v6 == started || v6 == 0)
  {
    v10 = *(a1 + 48);
    v9 = *(a1 + 52);
  }

  else
  {
    wapiti_warning(*(v2 + 32), "labels count changed, discarding the model");
    heap_Free(*(v2 + 8), *(a1 + 56));
    *(a1 + 56) = 0;
    heap_Free(*(v2 + 8), *(a1 + 64));
    *(a1 + 64) = 0;
    heap_Free(*(v2 + 8), *(a1 + 72));
    *(a1 + 72) = 0;
    v11 = *(a1 + 88);
    if (v11)
    {
      xvm_free_sparse(v2, v11);
      v9 = 0;
      v10 = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  *(a1 + 44) = started;
  *(a1 + 48) = v5;
  v12 = heap_Realloc(*(v2 + 8), *(a1 + 56), v5);
  *(a1 + 56) = v12;
  v13 = heap_Realloc(*(v2 + 8), *(a1 + 64), 4 * v5);
  *(a1 + 64) = v13;
  v14 = heap_Realloc(*(v2 + 8), *(a1 + 72), 4 * v5);
  v15 = v14;
  *(a1 + 72) = v14;
  if (v12)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && v14 != 0)
  {
    v30 = v9;
    v20 = v5 - v10;
    if (v5 > v10)
    {
      v21 = v10;
      while (1)
      {
        v22 = *qrk_id2str(v2, *(*(a1 + 112) + 48), v21);
        if (v22 == 42)
        {
          break;
        }

        if (v22 == 117)
        {
          v23 = 1;
LABEL_40:
          *(v12 + v21) = v23;
LABEL_41:
          *(v13 + 4 * v21) = v9;
          v9 += started;
          v24 = *(v12 + v21);
          goto LABEL_42;
        }

        if (v22 == 98)
        {
          *(v12 + v21) = 2;
LABEL_43:
          *(v15 + 4 * v21) = v9;
          v9 += started * started;
          goto LABEL_44;
        }

        v24 = *(v12 + v21);
        if (v24)
        {
          goto LABEL_41;
        }

LABEL_42:
        if ((v24 & 2) != 0)
        {
          goto LABEL_43;
        }

LABEL_44:
        ++v21;
        if (!--v20)
        {
          goto LABEL_48;
        }
      }

      v23 = 3;
      goto LABEL_40;
    }

LABEL_48:
    *(a1 + 52) = v9;
    v25 = sparray_init();
    v26 = v25;
    if (v30)
    {
      if (v25)
      {
        v27 = 0;
        do
        {
          v28 = sparray_get(*(a1 + 88), v27);
          sparray_set(v26, v27, v28);
          v27 = (v27 + 1);
        }

        while (v30 != v27);
        sparray_free(v2, *(a1 + 88));
        *(a1 + 88) = v26;
        goto LABEL_54;
      }
    }

    else
    {
      *(a1 + 88) = v25;
      if (v25)
      {
LABEL_54:
        qrk_lock(*(*(a1 + 112) + 40), 1);
        qrk_lock(*(*(a1 + 112) + 48), 1);
        return 0;
      }
    }

LABEL_55:
    heap_Free(*(v2 + 8), v12);
    *(a1 + 56) = 0;
    if (!v13)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v12)
  {
    goto LABEL_55;
  }

  if (v13)
  {
LABEL_27:
    heap_Free(*(v2 + 8), v13);
    *(a1 + 64) = 0;
  }

LABEL_28:
  if (v15)
  {
    heap_Free(*(v2 + 8), v15);
    *(a1 + 72) = 0;
  }

  v18 = 2585796618;
  v19 = *(a1 + 88);
  if (v19)
  {
    sparray_free(v2, v19);
    *(a1 + 88) = 0;
  }

  return v18;
}

uint64_t pat_comp(uint64_t a1, const char *a2, void *a3)
{
  v6 = 0;
  for (i = 0; a2[i] == 37; ++i)
  {
    ++v6;
LABEL_6:
    ;
  }

  if (a2[i])
  {
    goto LABEL_6;
  }

  v8 = 2585796618;
  v9 = heap_Calloc(*(a1 + 8), 1, 32 * ((2 * v6) | 1u) + 48);
  if (!v9)
  {
    goto LABEL_54;
  }

  v37 = v9;
  v38 = a3;
  *v9 = a2;
  v10 = v9 + 2;
  if (!*a2)
  {
    v12 = 0;
    v11 = 0;
LABEL_52:
    v8 = 0;
    v9 = v37;
    a3 = v38;
    *(v37 + 2) = v12;
    *(v37 + 3) = v11;
    goto LABEL_54;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a2;
  while (2)
  {
    v15 = &v10[4 * v11];
    v15[1] = 0;
    v16 = *v14;
    if (v16 != 37)
    {
      v25 = 1;
      v26 = v13;
      if (v16)
      {
        do
        {
          if (v16 == 37)
          {
            break;
          }

          v26 = (v26 + 1);
          v16 = a2[v26];
          ++v25;
        }

        while (a2[v26]);
      }

      *v15 = 115;
      *(v15 + 1) = 0;
      v27 = heap_Alloc(*(a1 + 8), v25);
      v15[1] = v27;
      if (!v27)
      {
        goto LABEL_53;
      }

      v28 = v25 - 1;
      memcpy(v27, &a2[v13], v28);
      *(v15[1] + v28) = 0;
LABEL_49:
      ++v11;
      v14 = &a2[v26];
      v13 = v26;
      if (!*v14)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  v39 = v12;
  v17 = v10;
  v40 = 0;
  v41 = 0;
  v18 = __tolower(a2[(v13 + 1)]);
  v19 = v18;
  v20 = v18 << 24;
  v21 = v18;
  if (v18 << 24 != 1828716544 && v20 != 1946157056 && v20 != 2013265920)
  {
    wapiti_fatal(*(a1 + 32), "unknown command type: '%c'", v21);
  }

  *v15 = v19;
  *(v15 + 1) = v21 != a2[(v13 + 1)];
  v24 = (v13 + 2);
  *(v15 + 4) = 0;
  if (wapiti_scanf_pat_len(&a2[v24], "[@", &v41, &v41 + 1, &v40) == 2)
  {
    *(v15 + 4) = 1;
    v10 = v17;
  }

  else
  {
    v10 = v17;
    if (wapiti_scanf_pat_len(&a2[v24], "[", &v41, &v41 + 1, &v40) != 2)
    {
      wapiti_fatal(*(a1 + 32), "invalid pattern: %s", a2);
    }
  }

  *(v15 + 5) = v41;
  v29 = HIDWORD(v41);
  *(v15 + 6) = HIDWORD(v41);
  v12 = v39;
  if (v39 <= v29)
  {
    v12 = v29;
  }

  v30 = v24 + v40;
  if (v20 != 1946157056 && v20 != 1828716544)
  {
LABEL_46:
    if (a2[v30] != 93)
    {
      wapiti_fatal(*(a1 + 32), "missing end of pattern: %s", a2);
    }

    v26 = (v30 + 1);
    goto LABEL_49;
  }

  if (a2[v30] != 44 && a2[v30 + 1] != 34)
  {
    wapiti_fatal(*(a1 + 32), "missing arg in pattern: %s", a2);
  }

  v31 = v30 + 2;
  v32 = v30 + 2;
  while (2)
  {
    v33 = a2[v32];
    if (v33 == 92)
    {
      if (a2[v32 + 1])
      {
        ++v32;
      }

LABEL_42:
      ++v32;
      continue;
    }

    break;
  }

  if (a2[v32])
  {
    if (v33 == 34)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  wapiti_fatal(*(a1 + 32), "unended argument: %s", a2);
LABEL_44:
  v34 = v32 - v31;
  v35 = heap_Alloc(*(a1 + 8), (v34 + 1));
  v15[1] = v35;
  if (v35)
  {
    memcpy(v35, &a2[v31], v34);
    *(v15[1] + v34) = 0;
    v30 = v32 + 1;
    goto LABEL_46;
  }

LABEL_53:
  v9 = v37;
  a3 = v38;
  v8 = 2585796618;
LABEL_54:
  *a3 = v9;
  return v8;
}

uint64_t pat_exec(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t *a5)
{
  v5 = 2585796615;
  if (a5)
  {
    v10 = *a3;
    *a5 = 0;
    v11 = heap_Alloc(*(a1 + 8), 16);
    if (v11)
    {
      v12 = v11;
      LODWORD(v13) = *(a2 + 12);
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        v35 = a3 + 6;
        v36 = a3;
        LODWORD(v16) = 16;
        do
        {
          v17 = (a2 + 16 + 32 * v14);
          v38 = 0;
          v18 = *v17;
          if (v18 == 115)
          {
            v19 = *(v17 + 1);
            v20 = strlen(v19);
          }

          else
          {
            v24 = *(v17 + 5);
            if (v24 >= 0)
            {
              v25 = -1;
            }

            else
            {
              v25 = v10;
            }

            v26 = a4;
            if (*(v17 + 4))
            {
              v26 = v25;
            }

            v27 = v26 + v24;
            if (v27 < 0)
            {
              if (v27 <= 0xFFFFFFFB)
              {
                v27 = -5;
              }

              v29 = &bval[~v27];
            }

            else if (v27 >= v10)
            {
              if (v27 - v10 >= 4)
              {
                v30 = 4;
              }

              else
              {
                v30 = v27 - v10;
              }

              v29 = &eval[v30];
            }

            else
            {
              v28 = *(v17 + 6);
              if (v28 >= *(*(v36 + 2) + 4 * v27))
              {
                wapiti_fatal(*(a1 + 32), "missing tokens, cannot apply pattern");
                heap_Free(*(a1 + 8), v12);
                return 2585796615;
              }

              v29 = (*&v35[2 * v27] + 8 * v28);
            }

            v19 = *v29;
            if (v18 == 109)
            {
              v32 = rex_match(a1, *(v17 + 1), *v29, &v38);
              if (v32 == -1)
              {
                v20 = 0;
                v38 = 0;
              }

              else
              {
                v20 = v38;
              }

              v19 += v32;
              goto LABEL_8;
            }

            if (v18 != 116)
            {
              if (v18 == 120)
              {
                v20 = strlen(*v29);
                v38 = v20;
              }

              else
              {
                v20 = 0;
              }

              goto LABEL_8;
            }

            v31 = rex_match(a1, *(v17 + 1), *v29, &v38);
            if (v31 == -1)
            {
              v19 = "false";
            }

            else
            {
              v19 = "true";
            }

            if (v31 == -1)
            {
              v20 = 5;
            }

            else
            {
              v20 = 4;
            }
          }

          v38 = v20;
LABEL_8:
          if (v20 + v15 >= v16 - 1)
          {
            do
            {
              v16 = v16 + (v16 >> 1);
            }

            while (v20 + v15 >= v16 - 1);
            v21 = heap_Realloc(*(a1 + 8), v12, v16);
            if (!v21)
            {
              goto LABEL_52;
            }

            v22 = v21;
            v20 = v38;
            v12 = v22;
          }

          memcpy((v12 + v15), v19, v20);
          LODWORD(v13) = v38 + v15;
          if (*(v17 + 1) && v15 < v13)
          {
            v23 = v15;
            do
            {
              *(v12 + v23) = __tolower(*(v12 + v23));
              ++v23;
              v13 = v38 + v15;
            }

            while (v23 < v13);
          }

          ++v14;
          v15 = v13;
        }

        while (v14 < *(a2 + 12));
      }

      *(v12 + v13) = 0;
      v33 = heap_Realloc(*(a1 + 8), v12, (v13 + 1));
      if (v33)
      {
        v5 = 0;
      }

      else
      {
LABEL_52:
        heap_Free(*(a1 + 8), v12);
        v33 = 0;
        v5 = 2585796618;
      }

      *a5 = v33;
    }

    else
    {
      return 2585796618;
    }
  }

  return v5;
}

uint64_t rex_match(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  v5 = a3;
  if (*a2 == 94)
  {
    *a4 = 0;
    if (rex_matchme(a1, a2 + 1, a3, a4))
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0;
    while (1)
    {
      *a4 = 0;
      if (rex_matchme(a1, a2, v5, a4))
      {
        break;
      }

      v9 = *v5++;
      v8 = (v8 + 1);
      if (!v9)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v8;
}

void *pat_free(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 12))
    {
      v4 = 0;
      v5 = (a2 + 24);
      do
      {
        v6 = *v5;
        v5 += 4;
        heap_Free(v3[1], v6);
        ++v4;
      }

      while (v4 < *(a2 + 12));
    }

    heap_Free(v3[1], *a2);
    v7 = v3[1];

    return heap_Free(v7, a2);
  }

  return result;
}

uint64_t rex_matchme(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, int *a4)
{
LABEL_1:
  while (2)
  {
    v8 = a2;
    while (1)
    {
      v9 = *v8;
      if (v9 == 36)
      {
        a2 = v8 + 1;
        v11 = v8[1];
        if (!v8[1])
        {
          return *a3 == 0;
        }
      }

      else
      {
        if (!*v8)
        {
          return 1;
        }

        v10 = v9 == 92 ? 2 : 1;
        if (v9 == 63 || v9 == 42)
        {
          wapiti_fatal(*(a1 + 32), "unescaped * or ? in regexp: %s", v8);
        }

        a2 = &v8[v10];
        v11 = *a2;
      }

      if (v11 != 63)
      {
        break;
      }

      ++a2;
      v12 = rex_matchit(v8, a3);
      v8 = a2;
      if (v12)
      {
        ++*a4;
        if (!rex_matchme(a1, a2, a3 + 1, a4))
        {
          --*a4;
          goto LABEL_1;
        }

        return 1;
      }
    }

    if (v11 == 42)
    {
      while (1)
      {
        v14 = *a4;
        if (rex_matchme(a1, a2 + 1, a3, a4))
        {
          break;
        }

        *a4 = v14 + 1;
        result = rex_matchit(v8, a3++);
        if (!result)
        {
          return result;
        }
      }

      return 1;
    }

    ++*a4;
    result = rex_matchit(v8, a3++);
    if (result)
    {
      continue;
    }

    return result;
  }
}

uint64_t rex_matchit(unsigned __int8 *a1, _BYTE *a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (v4 == 46)
    {
      return 1;
    }

    if (v4 != 92)
    {
      return v4 == *a2;
    }

    v5 = a1[1];
    if (v5 <= 96)
    {
      if (v5 > 79)
      {
        if (v5 > 84)
        {
          if (v5 == 85)
          {
            if ((*a2 & 0x80) == 0)
            {
              v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x8000;
              return v6 == 0;
            }

            v10 = 0x8000;
            goto LABEL_66;
          }

          if (v5 == 87)
          {
            if ((result & 0x80000000) == 0)
            {
              v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x500;
              return v6 == 0;
            }

            v10 = 1280;
            goto LABEL_66;
          }
        }

        else
        {
          if (v5 == 80)
          {
            if ((result & 0x80000000) == 0)
            {
              v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x2000;
              return v6 == 0;
            }

            v10 = 0x2000;
            goto LABEL_66;
          }

          if (v5 == 83)
          {
            if ((result & 0x80000000) == 0)
            {
              v6 = *(MEMORY[0x1E69E9830] + 4 * *a2 + 60) & 0x4000;
              return v6 == 0;
            }

            LODWORD(result) = *a2;
            v10 = 0x4000;
            goto LABEL_66;
          }
        }

        return v5 == *a2;
      }

      if (v5 == 65)
      {
        if ((result & 0x80000000) == 0)
        {
          v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x100;
          return v6 == 0;
        }

        v10 = 256;
        goto LABEL_66;
      }

      if (v5 != 68)
      {
        if (v5 == 76)
        {
          if ((*a2 & 0x80) == 0)
          {
            v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x1000;
            return v6 == 0;
          }

          v10 = 4096;
LABEL_66:
          v6 = __maskrune(result, v10);
          return v6 == 0;
        }

        return v5 == *a2;
      }

      v9 = __CFADD__(result - 58, 10);
      return !v9;
    }

    if (v5 <= 111)
    {
      switch(v5)
      {
        case 'a':
          if ((result & 0x80000000) == 0)
          {
            v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x100;
            return v8 != 0;
          }

          v11 = 256;
          break;
        case 'd':
          v9 = (result - 48) >= 0xA;
          return !v9;
        case 'l':
          if ((result & 0x80000000) == 0)
          {
            v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x1000;
            return v8 != 0;
          }

          v11 = 4096;
          break;
        default:
          return v5 == *a2;
      }
    }

    else if (v5 > 116)
    {
      if (v5 == 117)
      {
        if ((*a2 & 0x80) == 0)
        {
          v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x8000;
          return v8 != 0;
        }

        v11 = 0x8000;
      }

      else
      {
        if (v5 != 119)
        {
          return v5 == *a2;
        }

        if ((*a2 & 0x80) == 0)
        {
          v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x500;
          return v8 != 0;
        }

        v11 = 1280;
      }
    }

    else if (v5 == 112)
    {
      if ((*a2 & 0x80) == 0)
      {
        v8 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x2000;
        return v8 != 0;
      }

      v11 = 0x2000;
    }

    else
    {
      if (v5 != 115)
      {
        return v5 == *a2;
      }

      if ((result & 0x80000000) == 0)
      {
        v8 = *(MEMORY[0x1E69E9830] + 4 * *a2 + 60) & 0x4000;
        return v8 != 0;
      }

      LODWORD(result) = *a2;
      v11 = 0x4000;
    }

    v8 = __maskrune(result, v11);
    return v8 != 0;
  }

  return result;
}

uint64_t wapiti_ns_readline(uint64_t a1, const char *a2, _DWORD *a3)
{
  v7 = 0;
  v6 = 0;
  if (!wapiti_scanf_fmt_prefix_len(a2, ":", &v6, &v7))
  {
    wapiti_fatal(*(a1 + 32), "cannot read from chars");
  }

  result = v7;
  *a3 = v6;
  return result;
}

uint64_t wapiti_scanf_fmt_prefix_len(const char *a1, char *__s, int *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strlen(a1);
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = 0;
  v17 = 0;
  v11 = 1;
  memset(v16, 0, sizeof(v16));
  while (1)
  {
    v12 = a1[v10];
    if ((v12 - 48) >= 0xA && v12 != 45)
    {
      break;
    }

    *(v16 + v10++) = v12;
    v11 = v10 < v9;
    if (v9 == v10)
    {
      v10 = v9;
      goto LABEL_9;
    }
  }

  if (!v10)
  {
    return 0;
  }

LABEL_9:
  v14 = atoi(v16);
  v15 = 0;
  *a3 = v14;
  if (v11 && v8)
  {
    v15 = 0;
    while (a1[v10 + v15] == __s[v15])
    {
      if (++v15 >= v8)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  *a4 = v15 + v10;
  return 1;
}

uint64_t wapiti_scanf_fmt_1(const char *a1, char *__s, int *a3)
{
  v4 = __s;
  v19 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  v7 = strlen(a1);
  v8 = v7 - v6;
  if (v7 <= v6)
  {
    return 0;
  }

  if (!v6)
  {
LABEL_6:
    v14 = 0;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    while (1)
    {
      v15 = a1[v6 + v14];
      if ((v15 - 48) >= 0xA && v15 != 45)
      {
        break;
      }

      *(v17 + v14++) = v15;
      if (v8 == v14)
      {
        if (!v8)
        {
          return 0;
        }

LABEL_12:
        *a3 = atoi(v17);
        return 1;
      }
    }

    if (!v14)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v9 = a1;
  v10 = v6;
  while (1)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v4++;
    if (v11 != v13)
    {
      return 0;
    }

    if (!--v10)
    {
      goto LABEL_6;
    }
  }
}

uint64_t wapiti_scanf_fmt_2(const char *a1, char *__s, int *a3, int *a4)
{
  v6 = __s;
  v30 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strlen(a1);
  v10 = v9 - v8;
  if (v9 <= v8)
  {
    return 0;
  }

  v11 = v9;
  if (v8)
  {
    v12 = a1;
    v13 = v8;
    do
    {
      v15 = *v12++;
      v14 = v15;
      v16 = *v6++;
      if (v14 != v16)
      {
        return 0;
      }
    }

    while (--v13);
  }

  v17 = 0;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  do
  {
    v18 = a1[v8 + v17];
    if ((v18 - 48) >= 0xA && v18 != 45)
    {
      v19 = v8 + v17 + 1;
      if (!v17)
      {
        return 0;
      }

      goto LABEL_14;
    }

    *(&v23 + v17++) = v18;
  }

  while (v10 != v17);
  v19 = v9;
  if (!v10)
  {
    return 0;
  }

LABEL_14:
  *a3 = atoi(&v23);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  if (v11 <= v19)
  {
    return 1;
  }

  v21 = 0;
  while (1)
  {
    v22 = a1[v19 + v21];
    if ((v22 - 48) >= 0xA && v22 != 45)
    {
      break;
    }

    *(&v23 + v21++) = v22;
    if (v11 - v19 == v21)
    {
      v21 = v11 - v19;
      break;
    }
  }

  if (!v21)
  {
    return 1;
  }

  *a4 = atoi(&v23);
  return 2;
}

uint64_t wapiti_scanf_fmt_3(const char *a1, char *__s, int *a3, int *a4, int *a5)
{
  v8 = __s;
  v35 = *MEMORY[0x1E69E9840];
  v10 = strlen(__s);
  v11 = strlen(a1);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    return 0;
  }

  v13 = v11;
  if (v10)
  {
    v14 = a1;
    v15 = v10;
    do
    {
      v17 = *v14++;
      v16 = v17;
      v18 = *v8++;
      if (v16 != v18)
      {
        return 0;
      }
    }

    while (--v15);
  }

  v19 = 0;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  do
  {
    v20 = a1[v10 + v19];
    if ((v20 - 48) >= 0xA && v20 != 45)
    {
      v21 = v10 + v19 + 1;
      if (!v19)
      {
        return 0;
      }

      goto LABEL_14;
    }

    *(&v28 + v19++) = v20;
  }

  while (v12 != v19);
  v21 = v11;
  if (!v12)
  {
    return 0;
  }

LABEL_14:
  *a3 = atoi(&v28);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  if (v13 <= v21)
  {
    return 1;
  }

  v23 = 0;
  while (1)
  {
    v24 = a1[v21 + v23];
    if ((v24 - 48) >= 0xA && v24 != 45)
    {
      break;
    }

    *(&v28 + v23++) = v24;
    if (v13 - v21 == v23)
    {
      v23 = v13 - v21;
      v25 = v13;
      goto LABEL_21;
    }
  }

  v25 = v21 + v23 + 1;
LABEL_21:
  if (!v23)
  {
    return 1;
  }

  *a4 = atoi(&v28);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  if (v13 <= v25)
  {
    return 2;
  }

  v26 = 0;
  while (1)
  {
    v27 = a1[v25 + v26];
    if ((v27 - 48) >= 0xA && v27 != 45)
    {
      break;
    }

    *(&v28 + v26++) = v27;
    if (v13 - v25 == v26)
    {
      v26 = v13 - v25;
      break;
    }
  }

  if (!v26)
  {
    return 2;
  }

  *a5 = atoi(&v28);
  return 3;
}

uint64_t wapiti_scanf_fmt_pair(const char *a1, char *__s, int *a3, int *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strlen(a1);
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = 1;
  v20 = 0u;
  v21 = 0u;
  while (1)
  {
    v13 = a1[v11];
    if ((v13 - 48) >= 0xA && v13 != 45)
    {
      break;
    }

    *(&v20 + v11++) = v13;
    v12 = v11 < v9;
    if (v9 == v11)
    {
      v11 = v9;
      goto LABEL_9;
    }
  }

  if (!v11)
  {
    return 0;
  }

LABEL_9:
  v15 = atoi(&v20);
  v16 = 0;
  *a3 = v15;
  if (v12 && v8)
  {
    v16 = 0;
    while (a1[v11 + v16] == __s[v16])
    {
      if (++v16 >= v8)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  v17 = v16 + v11;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (v17 >= v10)
  {
    return 1;
  }

  v18 = 0;
  do
  {
    v19 = a1[v17 + v18];
    if ((v19 - 48) >= 0xA && v19 != 45)
    {
      break;
    }

    *(&v20 + v18++) = v19;
  }

  while (v17 + v18 < v10);
  if (!v18)
  {
    return 1;
  }

  *a4 = atoi(&v20);
  return 2;
}

uint64_t wapiti_scanf_pat_len(const char *a1, char *__s, int *a3, int *a4, size_t *a5)
{
  v8 = __s;
  v32 = *MEMORY[0x1E69E9840];
  v10 = strlen(__s);
  v11 = strlen(a1);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    return 0;
  }

  v13 = v11;
  if (v10)
  {
    v14 = a1;
    v15 = v10;
    do
    {
      v17 = *v14++;
      v16 = v17;
      v18 = *v8++;
      if (v16 != v18)
      {
        return 0;
      }
    }

    while (--v15);
  }

  v19 = 0;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  do
  {
    v20 = a1[v10 + v19];
    if ((v20 - 48) >= 0xA && v20 != 45)
    {
      v21 = v10 + v19 + 1;
      if (!v19)
      {
        return 0;
      }

      goto LABEL_14;
    }

    *(&v25 + v19++) = v20;
  }

  while (v12 != v19);
  v21 = v11;
  if (!v12)
  {
    return 0;
  }

LABEL_14:
  *a3 = atoi(&v25);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  if (v13 <= v21)
  {
    return 1;
  }

  v23 = 0;
  while (1)
  {
    v24 = a1[v21 + v23];
    if ((v24 - 48) >= 0xA && v24 != 45)
    {
      break;
    }

    *(&v25 + v23++) = v24;
    if (v13 - v21 == v23)
    {
      v23 = v13 - v21;
      goto LABEL_21;
    }
  }

  v13 = v21 + v23;
LABEL_21:
  if (!v23)
  {
    return 1;
  }

  *a4 = atoi(&v25);
  *a5 = v13;
  return 2;
}

uint64_t tag_label(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(a1 + 6);
  v190 = 0;
  v191[0] = 0;
  v10 = 2585796618;
  v189 = 0;
  if (!a4)
  {
    v10 = 2585796615;
    if (a5)
    {
      *a5 = 0;
    }

    return v10;
  }

  v11 = a4;
  v181 = v9;
  *a4 = 0;
  if (!a5)
  {
    return 2585796615;
  }

  v15 = a1;
  *a5 = 0;
  v16 = a1[14];
  if (*(a1 + 9))
  {
    v17 = rdr_readraw(v16, a2, a3, v191);
    if ((v17 & 0x80000000) == 0)
    {
      if (v191[0])
      {
        v18 = rdr_raw2seq_qp(v16, v191[0], *(v15 + 3) | (*(v15[14] + 56) != 0), &v190);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_21:
        LODWORD(v26) = 0;
        v10 = v18;
        goto LABEL_246;
      }

      return 2585796615;
    }

    return v17;
  }

  v17 = rdr_readraw(v16, a2, a3, v191);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (!v191[0])
  {
    return 2585796615;
  }

  v18 = rdr_raw2seq(v16, v191[0], *(v15 + 3) | (*(v15[14] + 56) != 0), &v190);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  v171 = v11;
  v168 = *v190;
  v19 = v181;
  v188 = v8;
  v20 = heap_Alloc(*(v8 + 8), 4 * v181 * v168);
  v21 = heap_Alloc(*(v8 + 8), 4 * v181 * v168);
  v22 = heap_Alloc(*(v8 + 8), 4 * v181);
  v23 = v22;
  v180 = v20;
  if (v20)
  {
    v24 = v21 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24 || v22 == 0)
  {
    v11 = v171;
    LODWORD(v26) = v168;
    goto LABEL_240;
  }

  v170 = v22;
  v172 = v21;
  v161 = a5;
  v187 = v15;
  if (a6 && a7)
  {
    v27 = *(v15 + 11);
    v28 = heap_Calloc(*(v8 + 8), 1, 4 * v27 * a3);
    *(v190 + 2) = v28;
    v11 = v171;
    if (!v28)
    {
      LODWORD(v26) = v168;
      v23 = v170;
      goto LABEL_241;
    }

    if (*(v15 + 9))
    {
      if (a3)
      {
        v29 = 0;
        v30 = 0;
        v31 = a3;
        do
        {
          v32 = *(a7 + 4 * v30);
          if (v32)
          {
            v33 = 0;
            v34 = 0;
            do
            {
              qp_str2id(v188, *(*(v187 + 112) + 40), *(*(a6 + 8 * v30) + 8 * v33), &v189, 0);
              if (v189 != -1)
              {
                *(*(v190 + 2) + 4 * (v189 + v27 * v30)) = 1;
                ++v34;
              }

              ++v33;
            }

            while (v33 < *(a7 + 4 * v30));
            LOBYTE(v32) = v34 != 0;
            v15 = v187;
            v19 = v181;
          }

          if ((v32 & 1) == 0 && v27)
          {
            v35 = *(v190 + 2);
            v36 = v27;
            v37 = v29;
            do
            {
              *(v35 + 4 * v37++) = 1;
              --v36;
            }

            while (v36);
          }

          ++v30;
          v29 += v27;
        }

        while (v30 != v31);
      }
    }

    else if (a3)
    {
      v38 = 0;
      v39 = 0;
      v40 = a3;
      do
      {
        v41 = *(a7 + 4 * v39);
        if (v41)
        {
          v42 = 0;
          v43 = 0;
          do
          {
            qrk_str2id(v188, *(*(v187 + 112) + 40), *(*(a6 + 8 * v39) + 8 * v42), &v189, 0);
            if (v189 != -1)
            {
              *(*(v190 + 2) + 4 * (v189 + v27 * v39)) = 1;
              ++v43;
            }

            ++v42;
          }

          while (v42 < *(a7 + 4 * v39));
          LOBYTE(v41) = v43 != 0;
          v15 = v187;
          v19 = v181;
        }

        if ((v41 & 1) == 0 && v27)
        {
          v44 = *(v190 + 2);
          v45 = v27;
          v46 = v38;
          do
          {
            *(v44 + 4 * v46++) = 1;
            --v45;
          }

          while (v45);
        }

        ++v39;
        v38 += v27;
      }

      while (v39 != v40);
    }
  }

  v47 = v190;
  v48 = *v15;
  v49 = *(v15 + 11);
  v50 = *v190;
  v51 = xvm_new(*v15, v49 * v49 * v50);
  v52 = *(v48 + 8);
  v173 = v48;
  v169 = v50;
  if (v19 != 1)
  {
    v64 = heap_Alloc(v52, 4 * v181 * v49 * v50);
    v65 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v66 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    if (v51)
    {
      v67 = v64 == 0;
    }

    else
    {
      v67 = 1;
    }

    if (v67 || v65 == 0 || v66 == 0)
    {
      v70 = 0;
      v10 = 2585796618;
      v21 = v172;
      goto LABEL_199;
    }

    v186 = v66;
    v184 = *(v15 + 10);
    v177 = v47;
    if (v184 == 1)
    {
      tag_memmsc(v15, v47, v51);
      v71 = 1;
    }

    else
    {
      tag_expsc(v15, v47, v51);
      v71 = 0;
    }

    v93 = v180;
    v21 = v172;
    if (*(v15[14] + 56))
    {
      tag_forced(v15, v177, v51, v71);
    }

    v94 = v169;
    if (v49)
    {
      v95 = 0;
      v96 = 0;
      do
      {
        *(v65 + 4 * v96) = v51[v95];
        v97 = v96 + 1;
        if (v19)
        {
          v98 = v96 + v19;
          v99 = v19 - 1;
          do
          {
            *(v65 + 4 * v97++) = 0x80000000;
            --v99;
          }

          while (v99);
          v97 = v98;
        }

        ++v95;
        v96 = v97;
      }

      while (v95 != v49);
    }

    if (v169 >= 2)
    {
      v100 = (v49 * v19);
      v165 = 4 * v100;
      v176 = vdupq_n_s64(v19 - 1);
      v163 = (v19 + 3) & 0x1FFFFFFFCLL;
      v160 = 1;
      v162 = vdupq_n_s64(4uLL);
      v159 = v49 * v19;
      v164 = v100;
      while (1)
      {
        v101 = v65;
        v102 = v186;
        v103 = v100;
        if (v100)
        {
          do
          {
            v104 = *v101++;
            *v102++ = v104;
            --v103;
          }

          while (v103);
        }

        if (v49)
        {
          break;
        }

LABEL_161:
        v159 += v100;
        v94 = v169;
        ++v160;
        v15 = v187;
        v93 = v180;
        if (v160 == v169)
        {
          goto LABEL_162;
        }
      }

      v183 = 0;
      v167 = v160 * v49;
      v179 = v159;
      while (1)
      {
        v105 = heap_Alloc(*(v48 + 8), v165);
        if (!v105)
        {
          break;
        }

        v106 = v105;
        v107 = 0;
        v108 = 0;
        v109 = v49;
        do
        {
          v110 = v109;
          while (!v19)
          {
            if (!--v110)
            {
              v120 = 0;
              v121 = v64;
              v48 = v173;
              v100 = v164;
              goto LABEL_149;
            }
          }

          v174 = v108 + v19;
          v111 = v19;
          do
          {
            v112 = v186[v108];
            *(v106 + 4 * v108) = v112;
            v113 = v51[(v183 + (v167 + v107) * v49)];
            if (v184 == 1)
            {
              v114 = fix16_mul(v112, v113);
            }

            else
            {
              v114 = fix16_add(v112, v113);
            }

            *(v106 + 4 * v108++) = v114;
            --v111;
          }

          while (v111);
          ++v107;
          --v109;
          v108 = v174;
          v19 = v181;
          v21 = v172;
        }

        while (v107 != v49);
        v115 = 0;
        v121 = (v64 + 4 * ((v167 + v183) * v181));
        v116 = xmmword_1C378AF00;
        v117 = xmmword_1C378AEF0;
        v48 = v173;
        v100 = v164;
        v118 = (v64 + 8 + 4 * v179);
        do
        {
          v119 = vmovn_s64(vcgeq_u64(v176, v116));
          if (vuzp1_s16(v119, *v116.i8).u8[0])
          {
            *(v118 - 2) = v115;
          }

          if (vuzp1_s16(v119, *&v116).i8[2])
          {
            *(v118 - 1) = v115 + 1;
          }

          if (vuzp1_s16(*&v116, vmovn_s64(vcgeq_u64(v176, *&v117))).i32[1])
          {
            *v118 = v115 + 2;
            v118[1] = v115 + 3;
          }

          v115 += 4;
          v117 = vaddq_s64(v117, v162);
          v116 = vaddq_s64(v116, v162);
          v118 += 4;
        }

        while (v163 != v115);
        v120 = v181 * v183;
LABEL_149:
        v122 = v19;
        if (v100 > v19)
        {
          do
          {
            v123 = 0;
            if (v19)
            {
              v124 = 1;
              do
              {
                if (*(v106 + 4 * v121[v124]) < *(v106 + 4 * v121[v123]))
                {
                  v123 = v124;
                }

                ++v124;
              }

              while (v19 != v124);
            }

            if (*(v106 + 4 * v122) > *(v106 + 4 * v121[v123]))
            {
              v121[v123] = v122;
            }

            ++v122;
          }

          while (v122 != v100);
        }

        v125 = v19;
        if (v19)
        {
          do
          {
            v126 = *v121++;
            *(v65 + 4 * v120++) = *(v106 + 4 * v126);
            --v125;
          }

          while (v125);
        }

        heap_Free(*(v48 + 8), v106);
        v179 += v19;
        if (++v183 == v49)
        {
          goto LABEL_161;
        }
      }

      v70 = 0;
      v10 = 2585796618;
      v15 = v187;
LABEL_198:
      v66 = v186;
LABEL_199:
      v11 = v171;
      v8 = v188;
      if (v66)
      {
        heap_Free(*(v173 + 8), v66);
      }

      if (v65)
      {
        heap_Free(*(v173 + 8), v65);
      }

      if (v64)
      {
        heap_Free(*(v173 + 8), v64);
      }

      if (v51)
      {
        xvm_free(v173, v51);
      }

      v26 = v168;
      v23 = v170;
      if (!v70)
      {
        goto LABEL_240;
      }

      goto LABEL_208;
    }

LABEL_162:
    if (!v19)
    {
      goto LABEL_178;
    }

    v127 = 0;
    v128 = (v49 * v19);
LABEL_164:
    if (v128 < 2)
    {
      v129 = 0;
    }

    else
    {
      v129 = 0;
      for (i = 1; i != v128; ++i)
      {
        if (*(v65 + 4 * i) > *(v65 + 4 * v129))
        {
          v129 = i;
        }
      }
    }

    v170[v127] = *(v65 + 4 * v129);
    *(v65 + 4 * v129) = 0x80000000;
    for (j = v94; ; v129 = *(v64 + 4 * (v129 + j * v49 * v19)))
    {
      if (j == 1)
      {
        j = 0;
        v132 = 0;
      }

      else
      {
        if (!j)
        {
          if (++v127 == v19)
          {
LABEL_178:
            v10 = 0;
            v70 = 1;
            goto LABEL_198;
          }

          goto LABEL_164;
        }

        v132 = *(v64 + 4 * (v129 + --j * v128)) / v19;
      }

      v133 = v127 + j * v19;
      *(v93 + 4 * v133) = v129 / v19;
      *(v21 + 4 * v133) = v51[v129 / v19 + (v132 + j * v49) * v49];
    }
  }

  v53 = v47;
  v54 = heap_Alloc(v52, 4 * v49 * v50);
  v55 = heap_Alloc(*(v48 + 8), 4 * v49);
  v56 = heap_Alloc(*(v48 + 8), 4 * v49);
  v57 = v56;
  if (v51)
  {
    v58 = v54 == 0;
  }

  else
  {
    v58 = 1;
  }

  v60 = v58 || v55 == 0 || v56 == 0;
  v61 = v60;
  v166 = v61;
  v10 = 2585796618;
  v21 = v172;
  if (v60)
  {
    goto LABEL_187;
  }

  v62 = *(v187 + 40);
  if (v62 == 1)
  {
    tag_memmsc(v187, v53, v51);
    v63 = 1;
  }

  else
  {
    tag_expsc(v187, v53, v51);
    v63 = 0;
  }

  if (*(*(v187 + 112) + 56))
  {
    tag_forced(v187, v53, v51, v63);
  }

  if (v49)
  {
    v72 = v51;
    v73 = v55;
    v74 = v49;
    do
    {
      v75 = *v72++;
      *v73++ = v75;
      --v74;
    }

    while (v74);
  }

  v76 = v169;
  if (v169 >= 2)
  {
    v178 = 1;
    v175 = v49 * v49;
    v182 = v55;
    v185 = v54;
    do
    {
      v77 = v55;
      v78 = v57;
      v79 = v49;
      if (v49)
      {
        do
        {
          v80 = *v77++;
          *v78++ = v80;
          --v79;
        }

        while (v79);
        v81 = 0;
        v82 = v175;
        do
        {
          v83 = 0;
          v84 = 0;
          v85 = 0x80000000;
          v86 = v82;
          do
          {
            v87 = *(v57 + 4 * v83);
            v88 = v51[v86];
            if (v62 == 1)
            {
              v89 = fix16_mul(v87, v88);
            }

            else
            {
              v89 = fix16_add(v87, v88);
            }

            if (v89 > v85)
            {
              v85 = v89;
              v84 = v83;
            }

            ++v83;
            v86 += v49;
          }

          while (v49 != v83);
          v55 = v182;
          *(v185 + 4 * (v178 * v49 + v81)) = v84;
          v54 = v185;
          *(v182 + 4 * v81++) = v85;
          ++v82;
        }

        while (v81 != v49);
      }

      v175 += v49 * v49;
      v76 = v169;
      ++v178;
    }

    while (v178 != v169);
  }

  if (v49 < 2)
  {
    v90 = 0;
    v92 = v180;
    v19 = v181;
    v21 = v172;
    v48 = v173;
  }

  else
  {
    v90 = 0;
    v91 = 1;
    v92 = v180;
    v19 = v181;
    v21 = v172;
    v48 = v173;
    do
    {
      if (*(v55 + 4 * v91) > *(v55 + 4 * v90))
      {
        v90 = v91;
      }

      ++v91;
    }

    while (v49 != v91);
  }

  *v170 = *(v55 + 4 * v90);
  while (1)
  {
    v134 = v76 - 1;
    if (v76 != 1)
    {
      break;
    }

    v135 = 0;
    v76 = 0;
    v136 = 0;
LABEL_185:
    *(v92 + 4 * v76) = v90;
    *(v21 + 4 * v76) = v51[v90 + (v136 + v135) * v49];
    v90 = v136;
  }

  if (v76)
  {
    v135 = v134 * v49;
    v136 = *(v54 + 4 * (v134 * v49 + v90));
    v76 = (v76 - 1);
    goto LABEL_185;
  }

  v10 = v76;
LABEL_187:
  if (v57)
  {
    heap_Free(*(v48 + 8), v57);
  }

  v11 = v171;
  v8 = v188;
  if (v55)
  {
    heap_Free(*(v173 + 8), v55);
  }

  v15 = v187;
  if (v54)
  {
    heap_Free(*(v173 + 8), v54);
  }

  if (v51)
  {
    xvm_free(v173, v51);
  }

  v26 = v168;
  v23 = v170;
  if (v166)
  {
    goto LABEL_240;
  }

LABEL_208:
  v137 = heap_Calloc(*(v8 + 8), 8, v26);
  *v11 = v137;
  if (!v137)
  {
    v10 = 2585796618;
    goto LABEL_239;
  }

  if (!v26)
  {
LABEL_235:
    v10 = 0;
    *v161 = v26;
    goto LABEL_238;
  }

  v138 = 0;
  v139 = (3 * v19 + 1);
  while (2)
  {
    v140 = heap_Alloc(*(v8 + 8), v139);
    if (v140)
    {
      v141 = v140;
      *v140 = 0;
      if (*(v15 + 9))
      {
        if (v19)
        {
          for (k = 0; k != v19; ++k)
          {
            v143 = qrk_id2str(v188, *(v15[14] + 40), *(v180 + 4 * (v19 * v138 + k)));
            v144 = strlen(v141);
            v145 = strlen(v143);
            v146 = 3 * v19 + 1;
            do
            {
              v147 = v146;
              v146 *= 2;
            }

            while (v147 < v144 + v145 + 2);
            if (v147 <= v139)
            {
              v26 = v141;
            }

            else
            {
              v26 = heap_Realloc(*(v188 + 8), v141, v147);
              if (!v26)
              {
                goto LABEL_237;
              }
            }

            v148 = strncat(v26, v143, v145);
            *&v26[strlen(v148)] = 32;
            v141 = v26;
            v15 = v187;
          }

LABEL_234:
          v11 = v171;
          *(*v171 + 8 * v138++) = v26;
          LODWORD(v26) = v168;
          v8 = v188;
          if (v138 == v168)
          {
            goto LABEL_235;
          }

          continue;
        }
      }

      else if (v19)
      {
        v149 = 0;
        while (1)
        {
          v150 = qrk_id2str(v188, *(v15[14] + 40), *(v180 + 4 * (v19 * v138 + v149)));
          v151 = strlen(v141);
          v152 = strlen(v150);
          v153 = 3 * v19 + 1;
          do
          {
            v154 = v153;
            v153 *= 2;
          }

          while (v154 < v151 + v152 + 2);
          if (v154 <= v139)
          {
            v26 = v141;
          }

          else
          {
            v26 = heap_Realloc(*(v188 + 8), v141, v154);
            if (!v26)
            {
LABEL_237:
              v8 = v188;
              heap_Free(*(v188 + 8), v141);
              v10 = 2585796618;
              v11 = v171;
              LODWORD(v26) = v168;
              goto LABEL_238;
            }
          }

          v155 = strncat(v26, v150, v152);
          *&v26[strlen(v155)] = 32;
          ++v149;
          v141 = v26;
          v15 = v187;
          if (v149 == v19)
          {
            goto LABEL_234;
          }
        }
      }

      v26 = v140;
      goto LABEL_234;
    }

    break;
  }

  v10 = 2585796618;
LABEL_238:
  v21 = v172;
LABEL_239:
  v23 = v170;
LABEL_240:
  if (v23)
  {
LABEL_241:
    heap_Free(*(v8 + 8), v23);
  }

  if (v21)
  {
    heap_Free(*(v8 + 8), v21);
  }

  if (v180)
  {
    heap_Free(*(v8 + 8), v180);
  }

LABEL_246:
  if (v190)
  {
    rdr_freeseq(v8, v190);
  }

  if (v191[0])
  {
    rdr_freeraw(v8, v191[0]);
  }

  if ((v10 & 0x80000000) == 0)
  {
    return 0;
  }

  v156 = *v11;
  if (*v11)
  {
    if (v26)
    {
      v157 = 0;
      do
      {
        heap_Free(*(v8 + 8), *(*v11 + v157));
        v157 += 8;
      }

      while (8 * v26 != v157);
      v156 = *v11;
    }

    heap_Free(*(v8 + 8), v156);
    *v11 = 0;
  }

  return v10;
}

uint64_t tag_label_sparse(uint64_t *a1, void *a2, unsigned int a3, uint64_t *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(a1 + 6);
  v190 = 0;
  v191[0] = 0;
  v10 = 2585796618;
  v189 = 0;
  if (!a4)
  {
    v10 = 2585796615;
    if (a5)
    {
      *a5 = 0;
    }

    return v10;
  }

  v11 = a4;
  v181 = v9;
  *a4 = 0;
  if (!a5)
  {
    return 2585796615;
  }

  v15 = a1;
  *a5 = 0;
  v16 = a1[14];
  if (*(a1 + 9))
  {
    v17 = rdr_readraw(v16, a2, a3, v191);
    if ((v17 & 0x80000000) == 0)
    {
      if (v191[0])
      {
        v18 = rdr_raw2seq_qp(v16, v191[0], *(v15 + 3) | (*(v15[14] + 56) != 0), &v190);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_21:
        LODWORD(v26) = 0;
        v10 = v18;
        goto LABEL_246;
      }

      return 2585796615;
    }

    return v17;
  }

  v17 = rdr_readraw(v16, a2, a3, v191);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (!v191[0])
  {
    return 2585796615;
  }

  v18 = rdr_raw2seq(v16, v191[0], *(v15 + 3) | (*(v15[14] + 56) != 0), &v190);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  v171 = v11;
  v168 = *v190;
  v19 = v181;
  v188 = v8;
  v20 = heap_Alloc(*(v8 + 8), 4 * v181 * v168);
  v21 = heap_Alloc(*(v8 + 8), 4 * v181 * v168);
  v22 = heap_Alloc(*(v8 + 8), 4 * v181);
  v23 = v22;
  v180 = v20;
  if (v20)
  {
    v24 = v21 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24 || v22 == 0)
  {
    v11 = v171;
    LODWORD(v26) = v168;
    goto LABEL_240;
  }

  v170 = v22;
  v172 = v21;
  v161 = a5;
  v187 = v15;
  if (a6 && a7)
  {
    v27 = *(v15 + 11);
    v28 = heap_Calloc(*(v8 + 8), 1, 4 * v27 * a3);
    *(v190 + 2) = v28;
    v11 = v171;
    if (!v28)
    {
      LODWORD(v26) = v168;
      v23 = v170;
      goto LABEL_241;
    }

    if (*(v15 + 9))
    {
      if (a3)
      {
        v29 = 0;
        v30 = 0;
        v31 = a3;
        do
        {
          v32 = *(a7 + 4 * v30);
          if (v32)
          {
            v33 = 0;
            v34 = 0;
            do
            {
              qp_str2id(v188, *(*(v187 + 112) + 40), *(*(a6 + 8 * v30) + 8 * v33), &v189, 0);
              if (v189 != -1)
              {
                *(*(v190 + 2) + 4 * (v189 + v27 * v30)) = 1;
                ++v34;
              }

              ++v33;
            }

            while (v33 < *(a7 + 4 * v30));
            LOBYTE(v32) = v34 != 0;
            v15 = v187;
            v19 = v181;
          }

          if ((v32 & 1) == 0 && v27)
          {
            v35 = *(v190 + 2);
            v36 = v27;
            v37 = v29;
            do
            {
              *(v35 + 4 * v37++) = 1;
              --v36;
            }

            while (v36);
          }

          ++v30;
          v29 += v27;
        }

        while (v30 != v31);
      }
    }

    else if (a3)
    {
      v38 = 0;
      v39 = 0;
      v40 = a3;
      do
      {
        v41 = *(a7 + 4 * v39);
        if (v41)
        {
          v42 = 0;
          v43 = 0;
          do
          {
            qrk_str2id(v188, *(*(v187 + 112) + 40), *(*(a6 + 8 * v39) + 8 * v42), &v189, 0);
            if (v189 != -1)
            {
              *(*(v190 + 2) + 4 * (v189 + v27 * v39)) = 1;
              ++v43;
            }

            ++v42;
          }

          while (v42 < *(a7 + 4 * v39));
          LOBYTE(v41) = v43 != 0;
          v15 = v187;
          v19 = v181;
        }

        if ((v41 & 1) == 0 && v27)
        {
          v44 = *(v190 + 2);
          v45 = v27;
          v46 = v38;
          do
          {
            *(v44 + 4 * v46++) = 1;
            --v45;
          }

          while (v45);
        }

        ++v39;
        v38 += v27;
      }

      while (v39 != v40);
    }
  }

  v47 = v190;
  v48 = *v15;
  v49 = *(v15 + 11);
  v50 = *v190;
  v51 = xvm_new(*v15, v49 * v49 * v50);
  v52 = *(v48 + 8);
  v173 = v48;
  v169 = v50;
  if (v19 != 1)
  {
    v64 = heap_Alloc(v52, 4 * v181 * v49 * v50);
    v65 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    v66 = heap_Alloc(*(v48 + 8), 4 * v49 * v19);
    if (v51)
    {
      v67 = v64 == 0;
    }

    else
    {
      v67 = 1;
    }

    if (v67 || v65 == 0 || v66 == 0)
    {
      v70 = 0;
      v10 = 2585796618;
      v21 = v172;
      goto LABEL_199;
    }

    v186 = v66;
    v184 = *(v15 + 10);
    v177 = v47;
    if (v184 == 1)
    {
      tag_memmsc_sparse(v15, v47, v51);
      v71 = 1;
    }

    else
    {
      tag_expsc_sparse(v15, v47, v51);
      v71 = 0;
    }

    v93 = v180;
    v21 = v172;
    if (*(v15[14] + 56))
    {
      tag_forced(v15, v177, v51, v71);
    }

    v94 = v169;
    if (v49)
    {
      v95 = 0;
      v96 = 0;
      do
      {
        *(v65 + 4 * v96) = v51[v95];
        v97 = v96 + 1;
        if (v19)
        {
          v98 = v96 + v19;
          v99 = v19 - 1;
          do
          {
            *(v65 + 4 * v97++) = 0x80000000;
            --v99;
          }

          while (v99);
          v97 = v98;
        }

        ++v95;
        v96 = v97;
      }

      while (v95 != v49);
    }

    if (v169 >= 2)
    {
      v100 = (v49 * v19);
      v165 = 4 * v100;
      v176 = vdupq_n_s64(v19 - 1);
      v163 = (v19 + 3) & 0x1FFFFFFFCLL;
      v160 = 1;
      v162 = vdupq_n_s64(4uLL);
      v159 = v49 * v19;
      v164 = v100;
      while (1)
      {
        v101 = v65;
        v102 = v186;
        v103 = v100;
        if (v100)
        {
          do
          {
            v104 = *v101++;
            *v102++ = v104;
            --v103;
          }

          while (v103);
        }

        if (v49)
        {
          break;
        }

LABEL_161:
        v159 += v100;
        v94 = v169;
        ++v160;
        v15 = v187;
        v93 = v180;
        if (v160 == v169)
        {
          goto LABEL_162;
        }
      }

      v183 = 0;
      v167 = v160 * v49;
      v179 = v159;
      while (1)
      {
        v105 = heap_Alloc(*(v48 + 8), v165);
        if (!v105)
        {
          break;
        }

        v106 = v105;
        v107 = 0;
        v108 = 0;
        v109 = v49;
        do
        {
          v110 = v109;
          while (!v19)
          {
            if (!--v110)
            {
              v120 = 0;
              v121 = v64;
              v48 = v173;
              v100 = v164;
              goto LABEL_149;
            }
          }

          v174 = v108 + v19;
          v111 = v19;
          do
          {
            v112 = v186[v108];
            *(v106 + 4 * v108) = v112;
            v113 = v51[(v183 + (v167 + v107) * v49)];
            if (v184 == 1)
            {
              v114 = fix16_mul(v112, v113);
            }

            else
            {
              v114 = fix16_add(v112, v113);
            }

            *(v106 + 4 * v108++) = v114;
            --v111;
          }

          while (v111);
          ++v107;
          --v109;
          v108 = v174;
          v19 = v181;
          v21 = v172;
        }

        while (v107 != v49);
        v115 = 0;
        v121 = (v64 + 4 * ((v167 + v183) * v181));
        v116 = xmmword_1C378AF00;
        v117 = xmmword_1C378AEF0;
        v48 = v173;
        v100 = v164;
        v118 = (v64 + 8 + 4 * v179);
        do
        {
          v119 = vmovn_s64(vcgeq_u64(v176, v116));
          if (vuzp1_s16(v119, *v116.i8).u8[0])
          {
            *(v118 - 2) = v115;
          }

          if (vuzp1_s16(v119, *&v116).i8[2])
          {
            *(v118 - 1) = v115 + 1;
          }

          if (vuzp1_s16(*&v116, vmovn_s64(vcgeq_u64(v176, *&v117))).i32[1])
          {
            *v118 = v115 + 2;
            v118[1] = v115 + 3;
          }

          v115 += 4;
          v117 = vaddq_s64(v117, v162);
          v116 = vaddq_s64(v116, v162);
          v118 += 4;
        }

        while (v163 != v115);
        v120 = v181 * v183;
LABEL_149:
        v122 = v19;
        if (v100 > v19)
        {
          do
          {
            v123 = 0;
            if (v19)
            {
              v124 = 1;
              do
              {
                if (*(v106 + 4 * v121[v124]) < *(v106 + 4 * v121[v123]))
                {
                  v123 = v124;
                }

                ++v124;
              }

              while (v19 != v124);
            }

            if (*(v106 + 4 * v122) > *(v106 + 4 * v121[v123]))
            {
              v121[v123] = v122;
            }

            ++v122;
          }

          while (v122 != v100);
        }

        v125 = v19;
        if (v19)
        {
          do
          {
            v126 = *v121++;
            *(v65 + 4 * v120++) = *(v106 + 4 * v126);
            --v125;
          }

          while (v125);
        }

        heap_Free(*(v48 + 8), v106);
        v179 += v19;
        if (++v183 == v49)
        {
          goto LABEL_161;
        }
      }

      v70 = 0;
      v10 = 2585796618;
      v15 = v187;
LABEL_198:
      v66 = v186;
LABEL_199:
      v11 = v171;
      v8 = v188;
      if (v66)
      {
        heap_Free(*(v173 + 8), v66);
      }

      if (v65)
      {
        heap_Free(*(v173 + 8), v65);
      }

      if (v64)
      {
        heap_Free(*(v173 + 8), v64);
      }

      if (v51)
      {
        xvm_free(v173, v51);
      }

      v26 = v168;
      v23 = v170;
      if (!v70)
      {
        goto LABEL_240;
      }

      goto LABEL_208;
    }

LABEL_162:
    if (!v19)
    {
      goto LABEL_178;
    }

    v127 = 0;
    v128 = (v49 * v19);
LABEL_164:
    if (v128 < 2)
    {
      v129 = 0;
    }

    else
    {
      v129 = 0;
      for (i = 1; i != v128; ++i)
      {
        if (*(v65 + 4 * i) > *(v65 + 4 * v129))
        {
          v129 = i;
        }
      }
    }

    v170[v127] = *(v65 + 4 * v129);
    *(v65 + 4 * v129) = 0x80000000;
    for (j = v94; ; v129 = *(v64 + 4 * (v129 + j * v49 * v19)))
    {
      if (j == 1)
      {
        j = 0;
        v132 = 0;
      }

      else
      {
        if (!j)
        {
          if (++v127 == v19)
          {
LABEL_178:
            v10 = 0;
            v70 = 1;
            goto LABEL_198;
          }

          goto LABEL_164;
        }

        v132 = *(v64 + 4 * (v129 + --j * v128)) / v19;
      }

      v133 = v127 + j * v19;
      *(v93 + 4 * v133) = v129 / v19;
      *(v21 + 4 * v133) = v51[v129 / v19 + (v132 + j * v49) * v49];
    }
  }

  v53 = v47;
  v54 = heap_Alloc(v52, 4 * v49 * v50);
  v55 = heap_Alloc(*(v48 + 8), 4 * v49);
  v56 = heap_Alloc(*(v48 + 8), 4 * v49);
  v57 = v56;
  if (v51)
  {
    v58 = v54 == 0;
  }

  else
  {
    v58 = 1;
  }

  v60 = v58 || v55 == 0 || v56 == 0;
  v61 = v60;
  v166 = v61;
  v10 = 2585796618;
  v21 = v172;
  if (v60)
  {
    goto LABEL_187;
  }

  v62 = *(v187 + 40);
  if (v62 == 1)
  {
    tag_memmsc_sparse(v187, v53, v51);
    v63 = 1;
  }

  else
  {
    tag_expsc_sparse(v187, v53, v51);
    v63 = 0;
  }

  if (*(*(v187 + 112) + 56))
  {
    tag_forced(v187, v53, v51, v63);
  }

  if (v49)
  {
    v72 = v51;
    v73 = v55;
    v74 = v49;
    do
    {
      v75 = *v72++;
      *v73++ = v75;
      --v74;
    }

    while (v74);
  }

  v76 = v169;
  if (v169 >= 2)
  {
    v178 = 1;
    v175 = v49 * v49;
    v182 = v55;
    v185 = v54;
    do
    {
      v77 = v55;
      v78 = v57;
      v79 = v49;
      if (v49)
      {
        do
        {
          v80 = *v77++;
          *v78++ = v80;
          --v79;
        }

        while (v79);
        v81 = 0;
        v82 = v175;
        do
        {
          v83 = 0;
          v84 = 0;
          v85 = 0x80000000;
          v86 = v82;
          do
          {
            v87 = *(v57 + 4 * v83);
            v88 = v51[v86];
            if (v62 == 1)
            {
              v89 = fix16_mul(v87, v88);
            }

            else
            {
              v89 = fix16_add(v87, v88);
            }

            if (v89 > v85)
            {
              v85 = v89;
              v84 = v83;
            }

            ++v83;
            v86 += v49;
          }

          while (v49 != v83);
          v55 = v182;
          *(v185 + 4 * (v178 * v49 + v81)) = v84;
          v54 = v185;
          *(v182 + 4 * v81++) = v85;
          ++v82;
        }

        while (v81 != v49);
      }

      v175 += v49 * v49;
      v76 = v169;
      ++v178;
    }

    while (v178 != v169);
  }

  if (v49 < 2)
  {
    v90 = 0;
    v92 = v180;
    v19 = v181;
    v21 = v172;
    v48 = v173;
  }

  else
  {
    v90 = 0;
    v91 = 1;
    v92 = v180;
    v19 = v181;
    v21 = v172;
    v48 = v173;
    do
    {
      if (*(v55 + 4 * v91) > *(v55 + 4 * v90))
      {
        v90 = v91;
      }

      ++v91;
    }

    while (v49 != v91);
  }

  *v170 = *(v55 + 4 * v90);
  while (1)
  {
    v134 = v76 - 1;
    if (v76 != 1)
    {
      break;
    }

    v135 = 0;
    v76 = 0;
    v136 = 0;
LABEL_185:
    *(v92 + 4 * v76) = v90;
    *(v21 + 4 * v76) = v51[v90 + (v136 + v135) * v49];
    v90 = v136;
  }

  if (v76)
  {
    v135 = v134 * v49;
    v136 = *(v54 + 4 * (v134 * v49 + v90));
    v76 = (v76 - 1);
    goto LABEL_185;
  }

  v10 = v76;
LABEL_187:
  if (v57)
  {
    heap_Free(*(v48 + 8), v57);
  }

  v11 = v171;
  v8 = v188;
  if (v55)
  {
    heap_Free(*(v173 + 8), v55);
  }

  v15 = v187;
  if (v54)
  {
    heap_Free(*(v173 + 8), v54);
  }

  if (v51)
  {
    xvm_free(v173, v51);
  }

  v26 = v168;
  v23 = v170;
  if (v166)
  {
    goto LABEL_240;
  }

LABEL_208:
  v137 = heap_Calloc(*(v8 + 8), 8, v26);
  *v11 = v137;
  if (!v137)
  {
    v10 = 2585796618;
    goto LABEL_239;
  }

  if (!v26)
  {
LABEL_235:
    v10 = 0;
    *v161 = v26;
    goto LABEL_238;
  }

  v138 = 0;
  v139 = (3 * v19 + 1);
  while (2)
  {
    v140 = heap_Alloc(*(v8 + 8), v139);
    if (v140)
    {
      v141 = v140;
      *v140 = 0;
      if (*(v15 + 9))
      {
        if (v19)
        {
          for (k = 0; k != v19; ++k)
          {
            v143 = qrk_id2str(v188, *(v15[14] + 40), *(v180 + 4 * (v19 * v138 + k)));
            v144 = strlen(v141);
            v145 = strlen(v143);
            v146 = 3 * v19 + 1;
            do
            {
              v147 = v146;
              v146 *= 2;
            }

            while (v147 < v144 + v145 + 2);
            if (v147 <= v139)
            {
              v26 = v141;
            }

            else
            {
              v26 = heap_Realloc(*(v188 + 8), v141, v147);
              if (!v26)
              {
                goto LABEL_237;
              }
            }

            v148 = strncat(v26, v143, v145);
            *&v26[strlen(v148)] = 32;
            v141 = v26;
            v15 = v187;
          }

LABEL_234:
          v11 = v171;
          *(*v171 + 8 * v138++) = v26;
          LODWORD(v26) = v168;
          v8 = v188;
          if (v138 == v168)
          {
            goto LABEL_235;
          }

          continue;
        }
      }

      else if (v19)
      {
        v149 = 0;
        while (1)
        {
          v150 = qrk_id2str(v188, *(v15[14] + 40), *(v180 + 4 * (v19 * v138 + v149)));
          v151 = strlen(v141);
          v152 = strlen(v150);
          v153 = 3 * v19 + 1;
          do
          {
            v154 = v153;
            v153 *= 2;
          }

          while (v154 < v151 + v152 + 2);
          if (v154 <= v139)
          {
            v26 = v141;
          }

          else
          {
            v26 = heap_Realloc(*(v188 + 8), v141, v154);
            if (!v26)
            {
LABEL_237:
              v8 = v188;
              heap_Free(*(v188 + 8), v141);
              v10 = 2585796618;
              v11 = v171;
              LODWORD(v26) = v168;
              goto LABEL_238;
            }
          }

          v155 = strncat(v26, v150, v152);
          *&v26[strlen(v155)] = 32;
          ++v149;
          v141 = v26;
          v15 = v187;
          if (v149 == v19)
          {
            goto LABEL_234;
          }
        }
      }

      v26 = v140;
      goto LABEL_234;
    }

    break;
  }

  v10 = 2585796618;
LABEL_238:
  v21 = v172;
LABEL_239:
  v23 = v170;
LABEL_240:
  if (v23)
  {
LABEL_241:
    heap_Free(*(v8 + 8), v23);
  }

  if (v21)
  {
    heap_Free(*(v8 + 8), v21);
  }

  if (v180)
  {
    heap_Free(*(v8 + 8), v180);
  }

LABEL_246:
  if (v190)
  {
    rdr_freeseq(v8, v190);
  }

  if (v191[0])
  {
    rdr_freeraw(v8, v191[0]);
  }

  if ((v10 & 0x80000000) == 0)
  {
    return 0;
  }

  v156 = *v11;
  if (*v11)
  {
    if (v26)
    {
      v157 = 0;
      do
      {
        heap_Free(*(v8 + 8), *(*v11 + v157));
        v157 += 8;
      }

      while (8 * v26 != v157);
      v156 = *v11;
    }

    heap_Free(*(v8 + 8), v156);
    *v11 = 0;
  }

  return v10;
}